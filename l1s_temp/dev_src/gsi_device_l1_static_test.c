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
#include <time.h>

#include "my_dma.h"
#include "gsi_l1_static_test.h"

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
    int num_vrs = cmn_handle->num_vmrs;
    gsi_info("vr_size: %d", vr_size);

    // simulate errors here
    /*
    int r;
    for(int i=0; i < vr_size; i++){
      r = rand() % 20;
      if(r == 0){
	A_l4[i]++;
      }
    }
    //*/

    

    
    int *gpr6 = (int *) 0xf0000230; // status register
    *gpr6 = 0;

    // Move the data in A_l4 up to l2.
    my_dma_l4_to_l2_32k(A_l4);

    // Copy the pattern in A to each vm_reg up to GVML_VM_47. That is, num_vrs
    // must always be <= 48.
    enum gvml_vm_reg vm_reg;
    for (vm_reg = GVML_VM_0; vm_reg <= GVML_VM_47; vm_reg++)
	my_dma_l2_to_l1_32k(vm_reg);

    gsi_info("Populated GVML_VM_0 through GVML_VM_%d", num_vrs-1);
    return (*gpr6);
}





// This is the read_l1_task. This task will sequentially copy all the data in the VMRs
// back down to L4. For each VMR, once it is copied to L4, we will check it against
// the known pattern which is held in A_l4. If we find any errors, raise a flag and send
// some info about the errors back to the host. 
GAL_TASK_ENTRY_POINT(read_l1_task, in, out){
    struct common_dev_host *cmn_handle = (struct common_dev_host *)in;
    // Access the common struct buffer and read the input from host.
    gsi_info("Running read_l1_task");
    // gvml_init_once() must be invoked once in the beggining
    // of a program, for GVML internal initializations.
    gvml_init_once();
    
    // In order to access pointers we use gal_mem_handle_to_apu_ptr(), same as Lab 1.
    // We don't need to access A_l4 to read from L1.
    //u16 *A_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->in_mem_hndl1);
    
    u16 *X_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->out_mem_hndl1);

    enum gvml_vm_reg vm_reg;

    vm_reg = cmn_handle->vmr_to_check;

    gsi_info("Got vr_to_check: %d", vm_reg);
    // read vm_reg and send it back to X_l4. X_l4 will be returned to the host.
    
    
    // Now we will copy the data from the requested vm_reg in L1 back down to
    // L4 so that the host can retrieve it. 
    gsi_info("starting l1_to_l4...");
    my_dma_l1_to_l4(X_l4, 1, vm_reg);

    
    gsi_info("Finished reading GMVL_VM_%d to L4", vm_reg);

    
    return 0;
}
