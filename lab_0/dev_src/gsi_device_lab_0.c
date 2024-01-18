#include <string.h>
#include <gsi/libsys/assert.h>
#include <gsi/libsys.h>
#include <gsi/libgal.h>
#include "gsi_device_lab_0.h"

static int hello_world(struct gd_lab_0_hello_world_data *hello_world_data)
{
	// gsi_info("an_int = %d", (int )hello_world_data->an_int);
	// gsi_info("an_int_two = %d", (int )hello_world_data->an_int_two);
	// gsi_info("a_char_array = %s", hello_world_data->a_char_array);
	// void *ptr = gal_mem_handle_to_apu_ptr(hello_world_data->a_mem_hndl);
	// gsi_info("ptr = %p", ptr);
	// hello_world_data->an_int = 18;
	// hello_world_data->an_int_two = 69420;
	// strcpy(hello_world_data->a_char_array, "Hello Host!");

	return 0;
}

GAL_TASK_ENTRY_POINT(gd_lab_0, in, out)
{
	// struct gd_lab_0_cmd *cmd = (struct gd_lab_0_cmd *)in;
	struct common_dev_host *cmd = (struct common_dev_host *)in;
	int ret;

	switch (cmd->cmd) {
	case GD_LAB_0_CMD_HELLO_WORLD:
		// ret = hello_world(&cmd->hello_world_data);
		ret = hello_world(&cmd->num_vrs)
		break;
	default:
		gsi_fatal("%s: unknown command %d\n", __func__, (int )cmd->cmd);	/* aborts execution */
		break;
	}

	return ret;
}
