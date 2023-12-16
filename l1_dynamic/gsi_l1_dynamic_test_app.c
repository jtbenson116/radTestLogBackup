/*
 * Copyright (C) 2023, GSI Technology, Inc. All easts reserved.
 *
 * This software source code is the sole property of GSI Technology, Inc.
 * and is proprietary and confidential.
 *
 * @author: Diego Wildenstein
 * This code is a modified version L1_serr test, which should hopefully be
 * useful for rad testing. Rather than read and write every iteration as in the
 * original l1_serr code, this code writes a pseudorandom known pattern to l1
 * on the APU once at the beginning, and then repeatedly reads from l1 until errors
 * are detected or a specified number of iterations are reached. This way, we 
 * should be better able to detect errors when and where they happen. 
 *
 * For questions about this code, email me at diego.wildenstein@chrec.org
 *
 */

#include <string.h>
#include <stdio.h>
#include <gsi/libgdl.h>
#include <gsi/libsys.h>
#include <gsi/gsi_sim_config.h>

#include "gsi_l1_dynamic_test.h"

// Diego's includes
#include <time.h>
#include <unistd.h>
#include <poll.h>
#include <dirent.h>

// Declare two APU tasks, one for filling L1 with stuff and
// one for reading the regs in L1.
GDL_TASK_DECLARE(populate_task);
GDL_TASK_DECLARE(read_l1_task);

enum { NUM_CTXS = 1 };
enum { VR_SIZE = 32768 };

/*
 *
 */
// The printMatrix function can be used for manual checking of vectors.
int printMatrix(uint16_t* A, int m, int n){
    printf("\nMatrix:\n");
    for(int j = 0; j < m;j++){
	for(int i = 0; i < n; i++)
	    printf("%d ", A[j*n+i]);	
	printf("\n");
    }
    return 0;
}

// This global variable is used to let writeLog know if this is the first log
// from a test or part of a set of tests.
int prevRun = 0;
int masterRunIdx = 0;
void writeLog(int max_iters, int iter_count, int vm_idx, int num_vmrs, int x_not_ok,
	      bool* err_mask, uint16_t* in1, uint16_t* out1){
    // TEST LOGGING ----------------------------------------------------------------------------
    // This could probably be its own function
    // Write test info to an output log
    printf("Writing log file...");

    int numLogFiles = 0;
    // Count the number of files in directory. 
    struct dirent * dp;
    DIR * fd = opendir(".");    
    while( (dp=readdir(fd)) != NULL ){
	numLogFiles++;
    }
    closedir(fd);
    // We determine the run number by how many files are already in the directory,
    // so to start at run1 we should subtract out the 9 files that will always be in
    // the directory, including '.' and '..'
    numLogFiles = numLogFiles - 9;
    if(masterRunIdx == 0)
	masterRunIdx = numLogFiles;
    
    FILE * log;
    time_t t = time(NULL);
    struct tm *tm = localtime(&t);
    // set the log name according to the date and time of the test.
    // For some reason, this will throw a bunch of warnings, but it should work.
    char * fname[50]; // was fname[50]
    char * datetime[20];
    sprintf(fname, "log_dynamicL1test_run%dlog%d_", masterRunIdx, numLogFiles);
    strftime(datetime, sizeof(datetime),"%Y%m%d_%H-%M-%S.txt", tm);
    strcat(fname, datetime);
    // Open the log file
    log = fopen(fname, "w");
    fprintf(log,"[SECTION] Log generated on ");
    fprintf(log,"%s", asctime(tm));
    if(prevRun != 0)
	fprintf(log, "Continuation from previous: run %d, log %d\n", masterRunIdx, prevRun);
    prevRun = numLogFiles;
    fprintf(log,"Max iterations: %d\n", max_iters);
    fprintf(log, "Exited on iteration: %d\n", iter_count);
    fprintf(log, "GVML VRS checked this iteration: %d of %d\n", vm_idx, num_vmrs);

    if(x_not_ok){
	fprintf(log, "Test FAILED\n");
	fprintf(log, "Errors detected on iteration %d\n", iter_count);
	// Print the error mask to the output log
	// The error mask just raises flags for each element that is different than
	// the expected output, so it will be easier to find errors this way.
	fprintf(log, "[SECTION] Error mask:\n");
	for(int i = 0; i < num_vmrs; i++){
	    for(int j = 0; j < VR_SIZE; j++){
		fprintf(log, "%d", err_mask[i*VR_SIZE+j] );
	    }
	    fprintf(log, "\n");
	}
   
    }else{
	fprintf(log, "Test PASSED\n");
	fprintf(log, "Completed sucessfully without errors\n");
    }

    
    // We can toggle this section to true if we want more details in the logs.
    bool verbose = true;
    if(verbose){
	// Print the hex dump
	//Print the values in the last in1 buffer we got
	fprintf(log, "\n[SECTION][HEX] Last value of X_l4 -> out1 buffer (GVML_VM_%d): \n", vm_idx);
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "0x%x ", out1[j] );
	}
	//Print the values in the last in2 buffer
	fprintf(log, "\n[SECTION][HEX] Expected value of buffer: \n");
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "0x%x ", in1[j] );
	}
	// Print them in more human readable terms (int)
	//Print the values in the last in1 buffer we got
	fprintf(log, "\n[SECTION][INT] Last value of X_l4 -> out1 buffer (GVML_VM_%d): \n", vm_idx);
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "%d ", out1[j] );
	}
	//Print the values in the last in2 buffer
	fprintf(log, "\n[SECTION][INT] Expected value of buffer: \n");
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "%d ", in1[j] );
	}
    }	    
    fclose(log);
    printf("\nLog written.\n");
    // END LOGGING -----------------------------------------------------------------------------
}





// This method is for launching the APU tasks 
int run_l1_serr(gdl_context_handle_t ctx_id, uint16_t *out1, uint16_t *in1,
		uint16_t num_vrs, uint16_t max_iters){
    int ret=0;

    // allocate common struct and derefence to host pointer
    size_t buf_size = sizeof(struct common_dev_host);
    gdl_mem_handle_t cmn_struct_mem_hndl = gdl_mem_alloc_nonull(ctx_id, buf_size, GDL_CONST_MAPPED_POOL);
    struct common_dev_host *cmn_handle = gdl_mem_handle_to_host_ptr(cmn_struct_mem_hndl);

    // Allocate data in L4 for all input and outputs
    uint vr_size_in_bytes = VR_SIZE * sizeof(uint16_t);

    cmn_handle->in_mem_hndl1 = gdl_mem_alloc_nonull(ctx_id, vr_size_in_bytes,
						    GDL_CONST_MAPPED_POOL);

    cmn_handle->out_mem_hndl1 = gdl_mem_alloc_nonull(ctx_id, vr_size_in_bytes,
						     GDL_CONST_MAPPED_POOL);
    // The device also needs to know the number of vrs to check and the size of
    // each of the vrs.
    
    cmn_handle->num_vrs = num_vrs;
    cmn_handle->vr_size = VR_SIZE;
    
    // Initialize some things we will need to keep track of when reading from
    // l1. We do this here to avoid excess time between the populate task and
    // the l1 read task.
    int x_not_ok = 0;
    int iter_count = 0;
    int err_count = 0;
    // The error mask is a boolean array that should raise a flag in the
    // corresponding spot whenever a value mismatch is detected. Because it is
    // large, it is best to initialize it outside of the APU tasks.
    bool* err_mask = malloc(num_vrs * VR_SIZE * sizeof(bool));
    // Reset error mask to zeros.
    for(int i=0; i<num_vrs*VR_SIZE; i++)
	err_mask[i] = 0;


    
    
    // Store data in L4
    gdl_mem_cpy_to_dev(cmn_handle->in_mem_hndl1, in1, vr_size_in_bytes);
    

    unsigned int populate_task = GDL_TASK(populate_task);
 POPULATE:
    ret = gdl_run_task_timeout(ctx_id, populate_task,
			       cmn_struct_mem_hndl, GDL_MEM_HANDLE_NULL,
			       GDL_TEMPORARY_DEFAULT_MEM_BUF,
			       GDL_TEMPORARY_DEFAULT_MEM_BUF_SIZE,
			       GDL_TEMPORARY_DEFAULT_CORE_INDEX, NULL,
			       200, GDL_USER_MAPPING
			       );
    // Error checking for populate task
    if(ret){
	printf("Error encountered in populate_task. Code %d", ret);
	if(ret == -110)
	    printf(" (timed out)\n");
	if(ret == 27)
	    printf(" (L2DMA PERR)\n");
	if(ret == 28)
	    printf(" (L2DMA PERR)\n");
    }
    ret = 0;
    
    // initialize polling structure. This will allow us to gracefully exit
    // while in the middle of a test.
    struct pollfd exitPoll = { STDIN_FILENO, POLLIN | POLLPRI };
    // This char will allow us to do single reads only when we get user input.
    char userInput;
    printf("\nListening for input, type 'q' to exit, 's' to stop:\n");

    
    // initialize vm_idx outside of the loop so we can access it for logging purposes.
    int vm_idx = 0;
    // Now constantly read the pattern from the device and check for errors
    while(true){

	// This 'if' block handles early interrupts in case we want to exit
	// the test early but still save our results. The poll function will
	// evaluate to true until the timeout (3rd parameter, in ms) is hit.
	if (poll(&exitPoll, 1, 1000)){
	    scanf("%s", &userInput);
	    if(userInput == 'q'){
		break;
	    }
	    if(userInput == 's'){
		writeLog(max_iters,  iter_count, vm_idx, num_vrs, x_not_ok,
			 err_mask, in1, out1);
		//printf("Log written\n");
		printf("Test paused, press 'q' to quit, 'd' to reload, or 'k' to continue...\n");
		scanf("%s", &userInput);
		if(userInput == 'q'){
		    printf("Exit\n");
		    goto CLEANUP;
		}
		// If we input 'd', we need to generate a new pattern and load it into the memory.
		if(userInput == 'd'){
		    for (size_t i = 0; i < VR_SIZE; i++) {
			in1[i] = (uint16_t)random();
		    }
		    // We also want to reset the error count and err_mask.
		    err_count = 0;
		    for(int i=0; i<num_vrs*VR_SIZE; i++)
			err_mask[i] = 0;
		    printf("Pattern reloaded, continuing...\n");
		    goto POPULATE;
		}
	    }
	} // end exitPoll
	

	printf("Cumulative error count: %d\n", err_count);


	// increment iteration count
	iter_count++;
	printf("Reading from L1 on APU, iteration %d\n", iter_count);
	// Optional: Reset error count every iteration. We could reconfigure this
	// 
	//err_count = 0;
	// Loop through each GVML_VM on the APU device. The read_l1_task will copy the
	// data from whichever vm_idx we are on back down to L4, then back to the host.
	// For each of these vms, we check to see if it matches the known pattern a (in1).
	//#pragma omp parallel for
	for(vm_idx = 0; vm_idx < num_vrs; vm_idx++){
	    //printf("Checking GVML_VR_%d...\n", vm_idx);
	    cmn_handle->vr_to_check = vm_idx;
	    // Initialize and run APU read_l1_task
	    unsigned int read_l1_task = GDL_TASK(read_l1_task);
	    ret = gdl_run_task_timeout(ctx_id, read_l1_task,
				       cmn_struct_mem_hndl, GDL_MEM_HANDLE_NULL,
				       GDL_TEMPORARY_DEFAULT_MEM_BUF,
				       GDL_TEMPORARY_DEFAULT_MEM_BUF_SIZE,
				       GDL_TEMPORARY_DEFAULT_CORE_INDEX, NULL,
				       200, GDL_USER_MAPPING);
	    //printf("\nCompleted read APU task\n");
	    // Error checking for read task
	    if(ret){
		printf("Error encountered in read_l1_task. Code %d", ret);
		if(ret == -110)
		    printf(" (timed out)\n");
		if(ret == 27)
		    printf(" (L2DMA PERR)\n");
		if(ret == 28)
		    printf(" (L2DMA PERR)\n");
		printf("\nRead failed at APU task level. Exiting...\n");
		break;
	    }
	    
	    //printf("\nStarting host writeback...");
	    // Now copy the read data back from X_l4 through out_mem_hndl1.
	    gdl_mem_cpy_from_dev(out1, cmn_handle->out_mem_hndl1, vr_size_in_bytes);
	    //printf("done.\n");
	    
	    //printf("Error Checking...");
	    // check every element of X_l4 (out1) and A_l4(in1) to see if they still match.
	    // If they do not, raise the x_not_ok flag and increment error count.
	    for(int i=0; i < VR_SIZE; i++){
		if(out1[i] != in1[i]){
		    x_not_ok = 1;
		    // Set this to print out every error.
		    //printf("\nError detected in VM_REG_%d, element %d", vm_idx, i);
		    //printf("\nExpected: %d, Got: %d", in1[i], out1[i]);
		    
		    if(err_mask[vm_idx*VR_SIZE+i] == 0){
			err_count++;
			// set corresponding bit in the error mask.
			// This will tell us which location failed.
			err_mask[vm_idx*VR_SIZE+i] = 1;		    
		    }

		}
	    }
	    
	}// end for vm_idx->num_vrs

	// This if statement will be triggered if we found any errors.
	// We can decide here whether we want to jump back to the APU populate task
	// and restart, keep going, or quit altogether. To keep going after finding
	// an error, dont put anything inside this statement. 
	if(x_not_ok){
	    /*
	    printf("Errors detected after %d iterations. Exiting...\n", iter_count);
	    //goto POPULATE;
	    break;
	    //*/
	}

	// exit the loop after we hit max_iters.
	if(iter_count >= max_iters){
	    printf("Reached max iterations (%d).\n", max_iters);
	    printf("Test completed sucessfully. Exiting...\n");
	    break;
	}

	// We can use this to pause after every iteration if we want.
    }// end while
    // END MAIN LOOP -------------------------------------------------------------------------------
    
    writeLog(max_iters,  iter_count,  vm_idx, num_vrs, x_not_ok,
	     err_mask, in1, out1);

 CLEANUP:
    // Free memory handles
    gdl_mem_free(cmn_handle->in_mem_hndl1);
    gdl_mem_free(cmn_handle->out_mem_hndl1);
    gdl_mem_free(cmn_struct_mem_hndl);

    // free the error mask array
    free(err_mask);
    
    return ret;
}






static struct gsi_sim_contexts g_ctxs[NUM_CTXS] = {
    {
	.apu_count = 1,
	.apucs_per_apu = 4,
	.mem_size = 0x40000000,
    }
};







int main(int GSI_UNUSED(argc), char *argv[]){
    int ret = 0;
    unsigned int num_ctxs;
    struct gdl_context_desc contexts_desc[GDL_MAX_NUM_CONTEXTS];
    gsi_libsys_init(argv[0], true);
    gsi_sim_create_simulator(NUM_CTXS, g_ctxs);
    

    // max_iters is used to set how many read cycles we will perform before
    // we exit normally. We could set this as high as we want depending on the test.
    uint16_t max_iters    = 10;
    if(argc > 1){
	max_iters = atoi(argv[1]);
    }


    // Initialize GDL and get board contexts
    gdl_init();
    gdl_context_count_get(&num_ctxs);
    gdl_context_desc_get(contexts_desc, num_ctxs);

    // initilize data pattern a. We can use srand to to establish a
    // pseudorandom data pattern; with a seed of 0, the pattern is random,
    // but it is the same every time.
    srand(0);
    uint16_t *a;
    a = malloc(VR_SIZE * sizeof(uint16_t));

    // set the values of A. We could choose a static pattern or a seeded
    // pseudorandom one.
    for (size_t i = 0; i < VR_SIZE; i++) {
	a[i] = (uint16_t)random();
	//a[i] = (uint16_t)0x5555;
    }

    // Check that a has stuff in it.
    //printMatrix(a, 1, VR_SIZE);
    
    // initialize x. We will read x back every iteration, with no errors,
    // x should be equal to a.
    uint16_t *x;
    // Determine the number of vrs we want to check. the APU has 48 vrs, so we
    // do not want to exceed that.
    uint16_t num_vrs = 48;
    
    x = malloc(VR_SIZE * sizeof(uint16_t));
    // set x to 0, just in case
    for(size_t j = 0; j < VR_SIZE; j++){
	x[j] = 0;
    }
    

    // Allocate the APU board context
    unsigned ctx_id = 0;
    for (ctx_id = 0; ctx_id < num_ctxs; ctx_id++) {
	ret = gdl_context_alloc(contexts_desc[ctx_id].ctx_id, 0, NULL, NULL);
	if (ret) {
	    printf("Failed to allocate GDL context (err = %d)!!!\n", ret);
	    continue;
	}
	// This is the actual task launcher call
	printf("Running on card number %u\n", ctx_id);
	ret = run_l1_serr(contexts_desc[ctx_id].ctx_id, x, a, num_vrs, max_iters);
	gdl_context_free(contexts_desc[ctx_id].ctx_id);
	break;
    }
    if (ctx_id == num_ctxs) {
	printf("All cards are currently in use. Please try again.\n");
	printf("If this error persists contact a guide. Sorry for the inconvience.\n");
    }


    // GDL cleanup
    gdl_exit();
    gsi_sim_destroy_simulator();
    gsi_libsys_exit();

    
    
    //*/

    // remember to free the data.
    free(a);
    free(x);
    return ret;
}
