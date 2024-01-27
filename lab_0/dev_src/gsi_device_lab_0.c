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

static int gvml_write(struct common_dev_host *cmn_handle) {
	// 
	// code from mmb_static POPULATE task
	// 
	gsi_info("Running VM reg populate task");
	gvml_init_once();
	// set "in" pointer from device data to APU
	u16 *A_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->in_mem_hndl1);
	u16 *B_l4 = gal_mem_handle_to_apu_ptr(cmn_handle->out_mem_hndl1);
	// set variables
	int vr_size = cmn_handle->in_mem_hndl1;
	int num_vrs = cmn_handle->num_vrs;
	gsi_info("vr_size: %d", vr_size);
	// setup "status register"
	int *gpr6 = (int *) 0xf0000230;
	*gpr6 = 0;
	// move data in A_l4 to l2
	my_dma_l2_to_l4_32k(A_l4);
	// initialialize vm_reg to 0
	enum gvml_vm_reg vm_reg;
	// only use VM0 to store data
	my_dma_l2_to_l1_32k(vm_reg);
	// initialize X_vr, to store current vector register; validMarks... who knows
	enum gvml_vr16 X_vr;
	enum gvml_mrks_n_flgs validMarks;
	// only use VR_0 to write data on APU
	gvml_load_16(X_vr, vm_reg);
	gvml_set_m(validMarks);
	// increment data
	gvml_inc_u16_mrk(X_vr, X_vr, validMarks);

	// gsi_info("populated GVML_VM_0 through GVML_VM_%d", num_vrs-1);

	// 
	// read from VR to host
	// 
	// store values from X_vr to vm_reg
	gvml_store_16(vm_reg, X_vr);
	// send vm_reg from l1 to l4
	my_dma_l1_to_l4(B_l4, 1, vm_reg);
	return (*gpr6);	
}

static int gvml_read(struct common_dev_host *cmn_handle) {
	gsi_info("Running read_mmb_task");
	// gvml_init_once();
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
			// run gvml_write function
			ret = gvml_write(cmn_handle);
			break;

		case GVML_READ:
			ret = gvml_read(cmn_handle);
			break;

		default:
			gsi_fatal("%s: unknown command %d\n", __func__, (int )cmn_handle->cmd);
			ret = 1;
			break;
	}
	
	return ret;
}
