#include <string.h>
#include <gsi/libsys/assert.h>
#include <gsi/libsys.h>
#include <gsi/libgal.h>
#include "gsi_device_lab_0.h"

static int add_1(u16 *in, u16 *out)
{
	out[0] = in[0] + 1;
	out[1] = in[1];
	return 0;
}

GAL_TASK_ENTRY_POINT(gd_lab_0, in, out)
{
	struct common_dev_host *cmd_handle = (struct common_dev_host *)in;
	int ret;
	switch (cmd_handle->cmd) {
		case GD_LAB_0_ADD_1:
			u16 *in = gal_mem_handle_to_apu_ptr(cmd_handle->in_mem_hndl1);
			u16 *out = gal_mem_handle_to_apu_ptr(cmd_handle->out_mem_hndl1);
			ret = add_1(in, out);
			break;
		default:
			gsi_fatal("%s: unknown command %d\n", __func__, (int )cmd_handle->cmd);
			ret = 1;
			break;
	}
	
	return ret;
}
