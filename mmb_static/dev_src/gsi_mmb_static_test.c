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
 * To do this, we now have two APU tasks: the populate task and the read task.
 * The populate task fills all the gvml_vm_regs with the psuedorandom pattern. 
 * The read task will sequentially copy each vm_reg to l4 and compare to the
 * known pattern.
 */

#include <gsi/libsys.h>
#include <gsi/libsys/log.h>
#include <gsi/libgal.h>
#include <gsi/libgvml_element_wise.h>
#include <stdlib.h>

#include "my_dma.h"
#include "gsi_mmb_static_test.h"

GAL_INCLUDE_INIT_TASK;

/*
 */

// 
GAL_TASK_ENTRY_POINT(populate_task, in, out){
    struct common_dev_host *cmn_handle = (struct common_dev_host *)in;
    // Access the common struct buffer and read the input from host.
    gsi_info("Running VM reg populate task");
    // gvml_init_once() must be invoked once in the beggining
    // of a program, for GVML internal initializations.
    gvml_init_once();
    
    // In order to access pointers we use gal_mem_handle_to_apu_ptr(), same as Lab 1.
    u16 *A_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->in_mem_hndl1);

    // We don't need X_l4 for the populate task
    //u16 *X_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->out_mem_hndl1);

    // Get the vr_size and the number of vrs from the common handle.
    int vr_size = cmn_handle->vr_size;
    int num_vrs = cmn_handle->num_vrs;
    gsi_info("vr_size: %d", vr_size);


    
    int *gpr6 = (int *) 0xf0000230; // status register
    *gpr6 = 0;

    // Move the data in A_l4 up to l2.
    my_dma_l4_to_l2_32k(A_l4);

    // Copy the pattern in A to each vm_reg up to GVML_VM_47. That is, num_vrs
    // must always be <= 48.
    enum gvml_vm_reg vm_reg;
    for (vm_reg = GVML_VM_0; vm_reg <= GVML_VM_47; vm_reg++)
	my_dma_l2_to_l1_32k(vm_reg);

    // On the device, there are 16 GVML VRs (GVML_VR16_0 through GVML_VR16_IDX), but
    // we cannot access the last one as it is reserved for system ops. Thus, we only
    // loop through the first 15 VRs. We populate them using gvml_load_16 to bring data
    // from vm_reg in L1 up to X_vr, which is a VR that exists on the MMB.
    enum gvml_vr16 X_vr;
    enum gvml_mrks_n_flgs validMarks;
    for(X_vr = GVML_VR16_0; X_vr <= GVML_VR16_14; X_vr++){
	gvml_load_16(X_vr, vm_reg);
	// Try doing an arithmetic thing to prevent the compiler from optimizing this out
	gvml_set_m(validMarks);
	// lets increment all the values by 1.
	gvml_inc_u16_mrk(X_vr, X_vr, validMarks);
	//gvml_cpy_16(X_vr, X_vr);
	
    }

    gsi_info("Populated GVML_VM_0 through GVML_VM_%d", num_vrs-1);
    return (*gpr6);
}





// This is the read_l1_task. This task will sequentially copy all the data in the VMRs
// back down to L4. For each VMR, once it is copied to L4, we will check it against
// the known pattern which is held in A_l4. If we find any errors, raise a flag and send
// some info about the errors back to the host. 
GAL_TASK_ENTRY_POINT(read_mmb_task, in, out){
    struct common_dev_host *cmn_handle = (struct common_dev_host *)in;
    // Access the common struct buffer and read the input from host.
    gsi_info("Running read_mmb_task");
    // gvml_init_once() must be invoked once in the beggining
    // of a program, for GVML internal initializations.
    gvml_init_once();
    
    // In order to access pointers we use gal_mem_handle_to_apu_ptr(), same as Lab 1.
    // We don't need to access A_l4 to read from L1.
    //u16 *A_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->in_mem_hndl1);
    
    u16 *X_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->out_mem_hndl1);

    // vm_reg is used as an intermediate step to take values out of the VRs. We
    // will use the first vm_reg, GVML_VM_0, to do this, though we may want to change
    // this in the future.
    enum gvml_vm_reg vm_reg = GVML_VM_0;
    enum gvml_vr16 X_vr;

    // Info on which VR we want to check is stored in the common handle.
    X_vr = cmn_handle->vr_to_check;

    /*
    enum gvml_vr16 Q_vr;
    if(X_vr = 0)
	Q_vr = GVML_VR16_1;
    else
	Q_vr = X_vr - 1;
    gvml_cpy_imm_16(Q_vr, 0);
    gvml_add_u16(X_vr, X_vr, Q_vr);
    */
    vm_reg = cmn_handle->vr_to_check;
    
    gsi_info("Got vr_to_check: %d", X_vr);

    // Now store the data from X_vr into vm_reg. 
    gsi_info("Reading GVML_VR16_%d -> GVML_VM_%d", X_vr, vm_reg);
    gvml_store_16(vm_reg, X_vr);

    
    gsi_info("starting l1_to_l4");
    my_dma_l1_to_l4(X_l4, 1, vm_reg);

    
    gsi_info("Read GMVL_VM_%d to L4", vm_reg);

    
    return 0;
}
