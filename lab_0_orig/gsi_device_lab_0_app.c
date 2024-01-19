#include <string.h>
#include <stdio.h>
#include <stdint.h>

#include <gsi/libgdl.h>
#include <gsi/libsys.h>

#include <gsi/gsi_sim_config.h>

GDL_TASK_DECLARE(gd_lab_0);
#include "gsi_device_lab_0.h"

static int run_lab_0_cmd(gdl_context_handle_t ctx_id)
{
	struct gd_lab_0_cmd cmd = {
		.cmd = GD_LAB_0_CMD_HELLO_WORLD,
		.hello_world_data = {
				.an_int = 613,
				.an_int_two = 42069,
				.a_char_array = "Hello Device!",
		}
	};
	printf("BEFORE TASK: an_int = %d, jacob's int = %d, a_char_array = %s\n", cmd.hello_world_data.an_int, cmd.hello_world_data.an_int_two, cmd.hello_world_data.a_char_array);

	uint64_t cmd_buf_size = sizeof(cmd);
	gdl_mem_handle_t dev_cmd_buf = gdl_mem_alloc_aligned(
		ctx_id,				/* @ctx_handler - the requested hw context to allocate from. */
		cmd_buf_size,			/* @size - number of bytes to allocate in the memory region. ( size is aligned up to a multiple of 16) */
		GDL_CONST_MAPPED_POOL,		/* @pool - the requested memory pool to allocate the memory on */
		GDL_ALIGN_32);			/* @alignment - specifies the alignment as shown in gdl_alloc_alignment enum. */
	if (gdl_mem_handle_is_null(dev_cmd_buf)) {
		gsi_error("gdl_mem_alloc() failed to allocate %lu bytes", cmd_buf_size);
		return gsi_status(ENOMEM);
	}

	cmd.hello_world_data.a_mem_hndl = dev_cmd_buf;

	int ret = gdl_mem_cpy_to_dev(dev_cmd_buf, &cmd, cmd_buf_size);
	if (ret) {
		gsi_error("gdl_mem_cpy_to_dev() failed: %s", gsi_status_errorstr(ret));
		goto CLEAN_UP;
	}

	ret = gdl_run_task_timeout(
		ctx_id,					/* @ctx_handler - the id of a hardware context previously allocated */
	        GDL_TASK(gd_lab_0),			/* @code_offset - the code offset of the function that the task should execute */
	        dev_cmd_buf,				/* @inp - input memory handle */
	        GDL_MEM_HANDLE_NULL,			/* @outp - output memory handle */
	        GDL_TEMPORARY_DEFAULT_MEM_BUF,		/* @mem_buf - an array of previously allocated memory handles and their sizes */
	        GDL_TEMPORARY_DEFAULT_MEM_BUF_SIZE,	/* @buf_size - the length of the mem_buf array */
	        GDL_TEMPORARY_DEFAULT_CORE_INDEX,	/* @apuc_idx - the apuc that the task should be executed on */
	        NULL,					/* @comp - if task was successfully scheduled, and @comp is provided, the task completion status, or any error is returned in comp. */
	        0,					/* @ms_timeout - the time in mili-seconds a task should wait for completion before aborting (0 indicates waiting indefinitely) */
	        GDL_USER_MAPPING);			/* @map_type - determine the mapping type for the specific task */

	if (ret) {
		gsi_error("gdl_run_task_timeout() failed: %s", gsi_status_errorstr(ret));
		goto CLEAN_UP;
	}

	ret = gdl_mem_cpy_from_dev(&cmd, dev_cmd_buf, cmd_buf_size);
	if (ret) {
		gsi_error("gdl_mem_cpy_from_dev() failed: %s", gsi_status_errorstr(ret));
		goto CLEAN_UP;
	}

	printf("AFTER TASK: an_int = %d, jacob's int = %d, a_char_array = %s\n", cmd.hello_world_data.an_int, cmd.hello_world_data.an_int_two, cmd.hello_world_data.a_char_array);

CLEAN_UP:
	gdl_mem_free(dev_cmd_buf);

	return ret;
}


// For Simulator:
enum { NUM_CTXS = 1 };
static struct gsi_sim_contexts g_ctxs[NUM_CTXS] = {
	{
		.apu_count = 1,
		.apucs_per_apu = 4,
		.mem_size = 0x40000000,
	}
};


int main(int GSI_UNUSED(argc), char *argv[])
{
	uint32_t num_ctxs;
	struct gdl_context_desc contexts_desc[GDL_MAX_NUM_CONTEXTS];

	int ret = gsi_libsys_init(
		argv[0],	/* program name */
		true);		/* log_to_screen */
	if (ret)
		gsi_fatal("gsi_libsys_init(): %s", gsi_status_errorstr(ret));

	gsi_sim_create_simulator(NUM_CTXS, g_ctxs);

	ret = gdl_init();
	if (ret)
		gsi_fatal("gdl_init(): %s", gsi_status_errorstr(ret));

	ret = gdl_context_count_get(&num_ctxs);
	if (ret)
		gsi_fatal("gdl_context_count_get(): %s", gsi_status_errorstr(ret));

	ret = gdl_context_desc_get(contexts_desc, num_ctxs);
	if (ret)
		gsi_fatal("gdl_context_count_get(): %s", gsi_status_errorstr(ret));

	printf("Num Contexts = %u\n", num_ctxs);	

	/* Use first available context */
	gdl_context_handle_t valid_ctx_id;
	uint32_t ctx;
	for (ctx = 0; ctx < num_ctxs; ++ctx) {
		if (contexts_desc[ctx].status == GDL_CONTEXT_READY) {
			valid_ctx_id = contexts_desc[ctx].ctx_id;
			printf("Memory Size = %0.1fG\n", (float)contexts_desc[ctx].mem_size / 1024L / 1024L / 1024L);
			printf("Num Apucs = %d\n", contexts_desc[ctx].num_apucs);
			break;
		}
	}

	if (ctx == num_ctxs) {
		gsi_fatal("Failed to find valid context");
	}

	const long long unsigned int const_mapped_size_req = 3L * 1024L * 1024L * 1024L;
	long long unsigned int const_mapped_size_recv, dynamic_mapped_size_recv;

	ret = gdl_context_alloc(valid_ctx_id, const_mapped_size_req, &const_mapped_size_recv, &dynamic_mapped_size_recv);
	if (ret) {
		gsi_fatal("gdl_context_alloc failed: %s", gsi_status_errorstr(ret));
	}

	ret = run_lab_0_cmd(valid_ctx_id);

	gdl_context_free(valid_ctx_id);

	gdl_exit();

	gsi_libsys_exit();
	if (ret != 0) {
		printf("\nFailure\n");
	} else {
		printf("\nSuccess\n");
	}
	return ret;
}
