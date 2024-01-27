#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#include <gsi/libgdl.h>
#include <gsi/libsys.h>

#include <gsi/gsi_sim_config.h>
GDL_TASK_DECLARE(gd_lab_0);
#include "gsi_device_lab_0.h"

enum { VR_SIZE = 32 * 1024 };
enum { NUM_VRS = 14 };

static int run_lab_0_cmd(gdl_context_handle_t ctx_id)
{

	//
	// Prep the memory handles and cmd structure
	//
	size_t buf_size = sizeof(struct common_dev_host);
	gdl_mem_handle_t cmn_struct_mem_hndl = gdl_mem_alloc_nonull(ctx_id, buf_size, GDL_CONST_MAPPED_POOL);
	struct common_dev_host *cmn_handle = gdl_mem_handle_to_host_ptr(cmn_struct_mem_hndl);
	uint vr_size_in_bytes = VR_SIZE * sizeof(uint16_t);
	cmn_handle->in_mem_hndl1 = gdl_mem_alloc_nonull(ctx_id, vr_size_in_bytes, GDL_CONST_MAPPED_POOL);
	cmn_handle->out_mem_hndl1 = gdl_mem_alloc_nonull(ctx_id, vr_size_in_bytes, GDL_CONST_MAPPED_POOL);
	
	//
	// Prepare input data to APU - initialize all elements to a value
	//
	uint16_t *in = malloc(VR_SIZE * sizeof(uint16_t));
	for(size_t j = 0; j < VR_SIZE; j++){
		in[j] = 2;
	}

	//
	// Send to APUnum_vrs
	//
	gdl_mem_cpy_to_dev(cmn_handle->in_mem_hndl1, in, vr_size_in_bytes);
	int ret = gdl_run_task_timeout(
		ctx_id,					/* @ctx_handler - the id of a hardware context previously allocated */
		GDL_TASK(gd_lab_0),			/* @code_offset - the code offset of the function that the task should execute */
		cmn_struct_mem_hndl,			/* @inp - input memory handle */
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
	printf("Ret from APU task=%d\n", ret);

	//
	// Prep array for copying from APU
	//
	uint16_t *out = malloc(VR_SIZE * sizeof(uint16_t));
	for(size_t j = 0; j < VR_SIZE; j++){
		out[j] = 0;
	}

	//
	// Extract output from APU
	//
	ret = gdl_mem_cpy_from_dev(out, cmn_handle->out_mem_hndl1, vr_size_in_bytes);
	if (ret) {
		printf("read error\n");
		gsi_error("gdl_mem_cpy_from_dev() failed: %s", gsi_status_errorstr(ret));
		goto CLEAN_UP;
	}
	printf("Got data from APU task: %hu %hu\n", out[0], out[1]);

	printf("App Done.");

CLEAN_UP:
	gdl_mem_free(cmn_struct_mem_hndl);

	return ret;
}

// 
// JB: copy function
// 
static int run_lab_0_cmd_copy(gdl_context_handle_t ctx_id) {

	// 
	// write data to all VRs on APU
	// 

	// memory handles and cmd structure
	size_t buf_size = sizeof(struct common_dev_host);
	gdl_mem_handle_t cmn_struct_mem_hndl = gdl_mem_alloc_nonull(ctx_id, buf_size, GDL_CONST_MAPPED_POOL);
	struct common_dev_host *cmn_handle = gdl_mem_handle_to_host_ptr(cmn_struct_mem_hndl);
	uint vr_size_in_bytes = VR_SIZE * sizeof(uint16_t);
	cmn_handle->in_mem_hndl1 = gdl_mem_alloc_nonull(ctx_id, vr_size_in_bytes, GDL_CONST_MAPPED_POOL);
	cmn_handle->out_mem_hndl1 = gdl_mem_alloc_nonull(ctx_id, vr_size_in_bytes, GDL_CONST_MAPPED_POOL);
	cmn_handle->cmd = GVML_WRITE;
	cmn_handle->vr_size = VR_SIZE;
	cmn_handle->num_vrs = NUM_VRS;

	// prepare input data for APU
	uint16_t *in = malloc(VR_SIZE * sizeof(uint16_t));
	for (size_t j = 0; j < VR_SIZE; j++) {
		in[j] = rand() % 105;
	}

	printf("In data for APU task: ");
	for (int i=0; i<10; i++) {
		printf("%hu ", in[i]);
	} printf("\n");

	// send input data to APU
	gdl_mem_cpy_to_dev(cmn_handle->in_mem_hndl1, in, vr_size_in_bytes);
	int ret = gdl_run_task_timeout(
		ctx_id,
		GDL_TASK(gd_lab_0),
		cmn_struct_mem_hndl,
		GDL_MEM_HANDLE_NULL,
		GDL_TEMPORARY_DEFAULT_MEM_BUF,
		GDL_TEMPORARY_DEFAULT_MEM_BUF_SIZE,
		GDL_TEMPORARY_DEFAULT_CORE_INDEX,
		NULL,
		0,
		GDL_USER_MAPPING
	);

	// prepare array for "out" data from APU
	uint16_t *out = malloc(VR_SIZE * sizeof(uint16_t));
	for (size_t j = 0; j < VR_SIZE; j++) {
		out[j] = 0; // fill "out" array with zeros
	}

	// extract output from APU
	ret = gdl_mem_cpy_from_dev(out, cmn_handle->out_mem_hndl1, vr_size_in_bytes);
	if (ret) {
		printf("read error\n");
		gsi_error("gdl_mem_cpy_from_dev() failed: %s", gsi_status_errorstr(ret));
		goto CLEAN_UP;
	}
	printf("Got data from APU task: ");
	for (int i=0; i<10; i++) {
		printf("%hu ", out[i]);
	} printf("\n");

	// 
	// READ data from APU
	// 

	cmn_handle->cmd = GVML_READ;
	gdl_mem_cpy_to_dev(cmn_handle->in_mem_hndl1, in, vr_size_in_bytes);
	int ret_read = gdl_run_task_timeout(
		ctx_id,
		GDL_TASK(gd_lab_0),
		cmn_struct_mem_hndl,
		GDL_MEM_HANDLE_NULL,
		GDL_TEMPORARY_DEFAULT_MEM_BUF,
		GDL_TEMPORARY_DEFAULT_MEM_BUF_SIZE,
		GDL_TEMPORARY_DEFAULT_CORE_INDEX,
		NULL,
		0,
		GDL_USER_MAPPING
	);
	uint16_t *out_read = malloc(VR_SIZE * sizeof(uint16_t));
	for (size_t j = 0; j < VR_SIZE; j++) {
		out_read[j] = 0; // fill "out" array with zeros
	}

	// extract output from APU
	ret_read = gdl_mem_cpy_from_dev(out_read, cmn_handle->out_mem_hndl1, vr_size_in_bytes);
	if (ret_read) {
		printf("read error\n");
		gsi_error("gdl_mem_cpy_from_dev() failed: %s", gsi_status_errorstr(ret));
		goto CLEAN_UP;
	}
	printf("Got data from APU task: ");
	for (int i=0; i<10; i++) {
		printf("%hu ", out_read[i]);
	} printf("\n");

	printf("App Done.");

CLEAN_UP:
	gdl_mem_free(cmn_struct_mem_hndl);

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

	// ret = run_lab_0_cmd(valid_ctx_id);run_lab_0_cmd_copy
	ret = run_lab_0_cmd_copy(valid_ctx_id);

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
