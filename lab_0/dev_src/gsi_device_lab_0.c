#include <string.h>
#include <gsi/libsys/assert.h>
#include <gsi/libsys.h>
#include <gsi/libgal.h>
#include <gsi/libsys/log.h>
#include <gsi/libgvml_element_wise.h>
#include "my_dma.h"
#include "gsi_device_lab_0.h"

static int add_1(u16 *in, u16 *out)
{
	uint16_t length = *(&in  + 1) - in;
	for (int i = 0; i < length; i++) {
		out[i] = in[i] + 1;
	}
	return 0;
}

static int copy(u16 *in, u16 *out) {
	uint16_t length = *(&in + 1) - in;
	for (int i=0; i<length; i++) {
		out[i] = in[i];
	}
	return 0;
}

GAL_TASK_ENTRY_POINT(gd_lab_0, in, out)
{
	struct common_dev_host *cmn_handle = (struct common_dev_host *)in;
	int ret;
	switch (cmn_handle->cmd) {
		case GD_LAB_0_ADD_1:
			u16 *in = gal_mem_handle_to_apu_ptr(cmn_handle->in_mem_hndl1);
			u16 *out = gal_mem_handle_to_apu_ptr(cmn_handle->out_mem_hndl1);
			ret = add_1(in, out);
			break;
		case GD_LAB_0_COPY:
			u16 *in_copy = gal_mem_handle_to_apu_ptr(cmn_handle->in_mem_hndl1);
			u16 *out_copy = gal_mem_handle_to_apu_ptr(cmn_handle->out_mem_hndl1);
			ret = copy(in_copy, out_copy);
			break;
		case GVML_WRITE:
			u16 *A_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->in_mem_hndl1);
			int vr_size = cmn_handle->vr_size;
    		int num_vrs = cmn_handle->num_vrs;

			gsi_info("vr_size: %d", vr_size);
			int *gpr6 = (int *) 0xf0000230; // status register
    		*gpr6 = 0;
			// Move the data in A_l4 up to l2.
			my_dma_l4_to_l2_32k(A_l4);

			enum gvml_vm_reg vm_reg;
			for (vm_reg = GVML_VM_0; vm_reg <= GVML_VM_47; vm_reg++){
				my_dma_l2_to_l1_32k(vm_reg);
			}

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
    		// return (*gpr6);
			ret = 0;
			break;

		case GVML_READ:
			{
				gsi_info("Running read_mmb_task");
				gvml_init_once();
				u16 *X_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->out_mem_hndl1);
				enum gvml_vm_reg vm_reg = GVML_VM_0;
				enum gvml_vr16 X_vr;
				X_vr = cmn_handle->vr_to_check;
				vm_reg = cmn_handle->vr_to_check;
		
				gsi_info("Got vr_to_check: %d", X_vr);

				// Now store the data from X_vr into vm_reg. 
				gsi_info("Reading GVML_VR16_%d -> GVML_VM_%d", X_vr, vm_reg);
				gvml_store_16(vm_reg, X_vr);

				
				gsi_info("starting l1_to_l4");
				my_dma_l1_to_l4(X_l4, 1, vm_reg);

				
				gsi_info("Read GMVL_VM_%d to L4", vm_reg);
				ret = 0;
				break;
			}

		default:
			gsi_fatal("%s: unknown command %d\n", __func__, (int )cmn_handle->cmd);
			ret = 1;
			break;
	}
	
	return ret;
}
