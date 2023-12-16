/*
 * Copyright (C) 2022, GSI Technology, Inc. All rights reserved.
 *
 * This software source code is the sole property of GSI Technology, Inc.
 * and is proprietary and confidential.
 *
 * @author: Diego Wildenstein
 * This code is a modification of the asplos lab5 l1_serr code. In the 
 * original L1_serr code, we overwrite the known static pattern on every iteration.
 * This implementation seeks to alter that test by using a psuedorandom 
 * known pattern, as well as checking every element of the pattern on the
 * device. This should hopefully give us more granularity on finding out 
 * when and where SEUs have occured.
 *
 * This test is for dynamic testing of L1 computational memory. It uses a 
 * single GAL task, which loads two vectors into L1 and computes their sum. 
 * it then reads that value back to L4 and back to the host. It is set up so
 * that the VMRs that it uses are determined by the host, so that we can 
 * iterate and check all VMRs on the device.
 */

#include <gsi/libsys.h>
#include <gsi/libsys/log.h>
#include <gsi/libgal.h>
#include <gsi/libgvml_element_wise.h>
#include <stdlib.h>

#include "my_dma.h"
#include "gsi_mmb_dynamic_test.h"

GAL_INCLUDE_INIT_TASK;

/*
 *
 *
 */

// This is the add_vrs_task. It adds A and B using GVML and stores the
// result in X_l4.
GAL_TASK_ENTRY_POINT(add_vrs_task, in, out){
    struct common_dev_host *cmn_handle = (struct common_dev_host *)in;
    // Access the common struct buffer and read the input from host.
    gsi_info("Running add vrs task");
    // gvml_init_once() must be invoked once in the beggining
    // of a program, for GVML internal initializations.
    gvml_init_once();
    
    // In order to access pointers we use gal_mem_handle_to_apu_ptr(), same as Lab 1.
    u16 *A_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->in_mem_hndl1);
    u16 *B_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->in_mem_hndl2);

    
    // X_l4 will hold our result data.
    u16 *X_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->out_mem_hndl1);

    // Get the vr_size and the number of vrs from the common handle.
    int vr_size = cmn_handle->vr_size;
    int num_vrs = cmn_handle->num_vrs;
    
    // Get the index of the VMR we want to check.
    int vr_idx_a = cmn_handle->vr_to_check;
    // initialize indices of the other VMRs we need to use.
    int vr_idx_b, vr_idx_x;

    gsi_info("vr_size: %d", vr_size);
    gsi_info("num_vrs: %d", num_vrs);

    int *gpr6 = (int *) 0xf0000230; // status register
    *gpr6 = 0;

    

    // Since we are looping through each of the vrs, we want to
    // wrap around so that we dont go past the number of
    // available vrs. That is, if vm_regA is GVML_VM_47, then
    // we should set vm_regB to GVML_VM_0 and vm_regX to GVML_VM_1
    enum gvml_vm_reg vm_regA, vm_regB, vm_regX;
    if(vr_idx_a > num_vrs-3){
	// First wraparound, only X needs to be moved.
	if(vr_idx_a == num_vrs-2){
	    vr_idx_b = num_vrs-1;
	    vr_idx_x = 0;
	}
	// Second wraparound, both B and X need to be moved.
	if(vr_idx_a == num_vrs-1){
	    vr_idx_b = 0;
	    vr_idx_x = 1;
	}
    }else{
	// Default case, b and x are just a plus 1 or 2 respectively.
	vr_idx_b = vr_idx_a+1;
	vr_idx_x = vr_idx_a+2;
    }

    // Now we set the VMRs we want to use to the proper ones and verify.
    vm_regA = vr_idx_a;
    vm_regB = vr_idx_b;
    vm_regX = vr_idx_x;
   
    gsi_info("vm_regA: %d, vm_regB: %d, vm_regX: %d", vm_regA, vm_regB, vm_regX);

    
    enum gvml_vr16 A_vr, B_vr, X_vr;


    // We should probably alternate which VRs we use every
    // iteration as well.
    A_vr = GVML_VR16_0;
    B_vr = GVML_VR16_1;
    X_vr = GVML_VR16_2;
    
    // OPTIONAL: Flush cache to make sure we are getting fresh data every time.
    gal_fast_cache_dcache_invalidate_and_flush();

    // Now that we have set the vr indices, we can
    // add the two vectors using GVML, just like in asplos lab 2.
    // Load A_l4 into vm_regA
    my_dma_l4_to_l2_32k(A_l4);
    my_dma_l2_to_l1_32k(vm_regA);
    gvml_load_16(A_vr, vm_regA);

    // Load B_l4 into vm_regB
    my_dma_l4_to_l2_32k(B_l4);
    my_dma_l2_to_l1_32k(vm_regB);
    gvml_load_16(B_vr, vm_regB);

    // Add A and B, store result in X_vr
    gvml_add_u16(X_vr, A_vr, B_vr);

    // we can verify that the error checking is working by setting the
    // output VR to the input VR, which should show up as incorrect
    // on the host side.
    //gvml_cpy_16(X_vr, A_vr);
    
    // Store X_vr to X_l4
    gvml_store_16(vm_regX, X_vr);
    my_dma_l1_to_l4(X_l4, 1, vm_regX);
    
    // task complete
    gsi_info("Vector add completed.");
    return (*gpr6);
}





