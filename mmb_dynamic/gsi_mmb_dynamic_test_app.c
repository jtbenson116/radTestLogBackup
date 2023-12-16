/*
 * Copyright (C) 2023, GSI Technology, Inc. All easts reserved.
 *
 * This software source code is the sole property of GSI Technology, Inc.
 * and is proprietary and confidential.
 *
 * @author: Diego Wildenstein
 * This code is a further mod of the L1_serr test for rad testing. This code
 * can be used to test operation of the L1 and MMB dynamically. It works by 
 * psuedorandomly generating two 32k-sized vectors A and B. Once we generate those 
 * vectors, we iterate through every every VR on the device. A and B are loaded 
 * into the ith and (i+1)th VR, and added together. The result is stored in
 * VR i+2. By iterating through every VR, we can test the entire MMB. This testing
 * continues until a desired number of iterations have completed or until any
 * errors are found. 
 *
 * For questions about this code, email me at diego.wildenstein@chrec.org
 *
 */

#include <string.h>
#include <stdio.h>
#include <gsi/libgdl.h>
#include <gsi/libsys.h>
#include <gsi/gsi_sim_config.h>

#include "gsi_mmb_dynamic_test.h"

// Diego's includes
#include <time.h>
#include <dirent.h>
// Declare the APU task for adding two vectors.
GDL_TASK_DECLARE(add_vrs_task);

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
	      bool* err_mask, uint16_t* in1, uint16_t* in2, uint16_t* out1){
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
    sprintf(fname, "log_dynamicMMBtest_run%dlog%d_", masterRunIdx, numLogFiles);
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
	//-------------------LAST IN1
	//Print the values in the last in1 buffer
	fprintf(log, "\n[SECTION][HEX] Expected value of in1 buffer: \n");
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "0x%x ", in1[j] );
	}
	//Print the values in the last in1 buffer
	fprintf(log, "\n[SECTION][INT] Expected value of in1 buffer: \n");
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "%d ", in1[j] );
	}
	// ----------LAST IN2
	//Print the values in the last in2 buffer
	fprintf(log, "\n[SECTION][HEX] Expected value of in1 buffer: \n");
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "0x%x ", in2[j] );
	}
	//Print the values in the last in2 buffer
	fprintf(log, "\n[SECTION][INT] Expected value of in1 buffer: \n");
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "%d ", in2[j] );
	}


	// ------------------- Expected OUT1
	fprintf(log, "\n[SECTION][HEX] Expected value of out1 buffer: \n", vm_idx);
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "0x%x ", in1[j]+in2[j] );
	}
	// Print them in more human readable terms (int)
	fprintf(log, "\n[SECTION][INT] Expected value of out1 buffer: \n", vm_idx);
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "%d ", in1[j]+in2[j] );
	}

	//----------------------- ACTUAL OUT1
	fprintf(log, "\n[SECTION][HEX] Last value of X_l4 -> out1 buffer (GVML_VM_%d): \n", vm_idx);
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "0x%x ", out1[j] );
	}
	// Print them in more human readable terms (int)
	fprintf(log, "\n[SECTION][INT] Last value of X_l4 -> out1 buffer (GVML_VM_%d): \n", vm_idx);
	for(int j = 0; j < VR_SIZE; j++){
	    fprintf(log, "%d ", out1[j] );
	}
	
    }	    
    fclose(log);
    printf("\nLog written.\n");
    // END LOGGING -----------------------------------------------------------------------------
}


/*
void writeLog(int max_iters, int iter_count, int vm_idx, int num_vmrs, int x_not_ok,
	      bool* err_mask, uint16_t* in1, uint16_t* out1){
    // TEST LOGGING ----------------------------------------------------------------------------
    // This could probably be its own function
    // Write test info to an output log
    printf("Writing log file...");
    
    FILE * log;
    time_t t = time(NULL);
    struct tm *tm = localtime(&t);
    // set the log name according to the date and time of the test.
    // For some reason, this will throw a bunch of warnings, but it should work.
    char * fname[50]; // was fname[50]
    strftime(fname, sizeof(fname), "log_staticL1test_%Y%m%d_%H-%M-%S.txt", tm);
    // Open the log file
    log = fopen(fname, "w");
    fprintf(log,"[SECTION] Log generated on ");
    fprintf(log,"%s", asctime(tm));
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
    printf("\nLogging Complete.\n");
    // END LOGGING -----------------------------------------------------------------------------
}
*/


// This method is responsible for launching the APU task and iterating.
int run_l1_serr(gdl_context_handle_t ctx_id, uint16_t *out1, uint16_t *in1, uint16_t *in2,
		uint16_t num_vrs, uint16_t max_iters){
    //printf("\nStarting APU Task Launcher.\n");
    int ret=0;

    // allocate common struct and derefence to host pointer
    size_t buf_size = sizeof(struct common_dev_host);
    gdl_mem_handle_t cmn_struct_mem_hndl = gdl_mem_alloc_nonull(ctx_id, buf_size, GDL_CONST_MAPPED_POOL);
    struct common_dev_host *cmn_handle = gdl_mem_handle_to_host_ptr(cmn_struct_mem_hndl);

    // Allocate data in L4 for all input and outputs
    uint vr_size_in_bytes = VR_SIZE * sizeof(uint16_t);

    cmn_handle->in_mem_hndl1 = gdl_mem_alloc_nonull(ctx_id, vr_size_in_bytes,
						    GDL_CONST_MAPPED_POOL);
    cmn_handle->in_mem_hndl2 = gdl_mem_alloc_nonull(ctx_id, vr_size_in_bytes,
						    GDL_CONST_MAPPED_POOL);

    cmn_handle->out_mem_hndl1 = gdl_mem_alloc_nonull(ctx_id, vr_size_in_bytes,
						     GDL_CONST_MAPPED_POOL);

    // The device also needs to know the number of vrs to check and the size of
    // each of the vrs. We can pass them via cmn_handle
    cmn_handle->num_vrs = num_vrs;
    cmn_handle->vr_size = VR_SIZE;

    //printf("set cmn handle\n");
    
    // Initialize some things we will need to keep track of for the test.
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


    //printf("Initialized err count and mask.\n");
    
    
    
    // initialize GDL task
    unsigned int add_vrs_task = GDL_TASK(add_vrs_task);
    //printf("Task created, starting loop.\n");

    // initialize polling structure. This will allow us to gracefully exit
    // while in the middle of a test.
    struct pollfd exitPoll = { STDIN_FILENO, POLLIN | POLLPRI };

 POPULATE:
    // Store vectors A and B in L4
    gdl_mem_cpy_to_dev(cmn_handle->in_mem_hndl1, in1, vr_size_in_bytes);
    gdl_mem_cpy_to_dev(cmn_handle->in_mem_hndl2, in2, vr_size_in_bytes);

    // This char will allow us to do single reads only when we get user input.
    char userInput;
    printf("\nListening for input, type 'q' to exit, 's' to stop:\n");
    
    int vm_idx;

    
    // -----------------------------------------------------------------------------------
    // This loop will continuously run the test until num_iters or until we get errors.
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
			 err_mask, in1, in2, out1);
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
			in1[i] = (uint16_t)random() % 32767;
			in2[i] = (uint16_t)random() % 32767;

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

	// Wait for the user to start a read.
	printf("Cumulative error count: %d\n", err_count);
	
	// increment iteration count
	iter_count++;
	// reset return value for the read task
	ret = 0;
	
	printf("Dynamic test on APU ctx %ld, iteration %d\n", ctx_id, iter_count);

      writeLog(max_iters,  iter_count, vm_idx, num_vrs, x_not_ok,
	       err_mask, in1, in2, out1);



	
	// This loop will iterate through every VMR on the device. The APU has 48
	// total VMRs, each of which will be read from and written to during this test.
	// Parallelizing this loop may cause issues since adjacent vrs must be used each iteration.
	//#pragma omp parallel for
	for(vm_idx = 0; vm_idx < num_vrs; vm_idx++){
	    // Send the current VMR we want to check to the device.
	    cmn_handle->vr_to_check = vm_idx;
	    //printf("Checking GVML_VR_%d - GVML_VR_%d\n", vm_idx, (vm_idx+2) % num_vrs);
	    

	    // Initialize and run APU read_l1_task
	    ret = gdl_run_task_timeout(ctx_id, add_vrs_task,
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

	    
	    //We can use this snippet to manually verify that the GVML
	    // addition is working correctly.
	    /*
	    printf("A:");
	    printMatrix(in1, 1, 5);
	    printf("B:");
	    printMatrix(in2, 1, 5);
	    printf("X:");
	    printMatrix(out1, 1, 5);
	    printf("\n");
	    */
	    
	    
	    //printf("Error Checking...");
	    // check every element of X_l4 (out1) to see if it is equal to
	    // A_l4 (in1) + B_l4 (in2). If it is not, raise the x_not_ok flag and
	    // increment error count.
	    for(int i=0; i < VR_SIZE; i++){
		
		if(in1[i] + in2[i] > 65535)
		    printf("WARNING: possible overflow detected: GVML_VM_REG_%d, element %d\n",
			   vm_idx, i);
		    
		if(out1[i] != in1[i] + in2[i]){
		    x_not_ok = 1;
		    //printf("\nError detected in VM_REG_%d, element %d", vm_idx, i);
		    //printf("\nExpected: %d, Got: %d", in1[i], out1[i]);
		    
		    if(err_mask[vm_idx*VR_SIZE+i] == 0){
			err_count++;
			// set corresponding bit in the error mask.
			// This will tell us which location failed.
			err_mask[vm_idx*VR_SIZE+i] = 1;		    
		    }
		    
		    
		}
	    }// end err check loop

	    //if(vm_idx == 47) break;

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
    }// end while
    // -----------------------------------------------------------------------------------------
    
    
    writeLog(max_iters,  iter_count,  vm_idx, num_vrs, x_not_ok,
	     err_mask, in1, in2, out1);
    
    
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
    
    // Initialize GDL and get board contexts
    gdl_init();
    gdl_context_count_get(&num_ctxs);
    gdl_context_desc_get(contexts_desc, num_ctxs);


    // max_iters is used to set how many read cycles we will perform before
    // we exit normally. We could set this as high as we want depending on the test.
    uint16_t max_iters    = 10;
    // We should also take the max iterations from the command line if given.
    if(argc > 1){
	max_iters = atoi(argv[1]);
    }
    
    
    // initilize data pattern a and b. We can use srand to to establish a
    // pseudorandom data pattern; with a seed of 0, the pattern is random,
    // but it is the same every time.
    srand(0);
    uint16_t *a;
    a = malloc(VR_SIZE * sizeof(uint16_t));
    uint16_t *b;
    b = malloc(VR_SIZE * sizeof(uint16_t));
    
    // set the values of A and B. We could choose a static pattern or a seeded
    // pseudorandom one.
    for (size_t i = 0; i < VR_SIZE; i++) {
	a[i] = (uint16_t)random() % 32767;
	b[i] = (uint16_t)random() % 32767;
	//a[i] = (uint16_t)0x5555;
    }

    // Check that a has stuff in it.
    //printMatrix(a, 1, VR_SIZE);
    
    // initialize x. We will read x back every iteration, with no errors,
    // x should be equal to a+b.
    uint16_t *x;
    // Set the number of sequential vrs we want to check. the APU has 48 vrs, so we
    // do not want to exceed that limit. The test will check VMR 0 up to num_vrs.
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
	ret = run_l1_serr(contexts_desc[ctx_id].ctx_id, x, a, b, num_vrs, max_iters);
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

    // remember to free all data.
    free(a);
    free(b);
    free(x);
    return ret;
}
