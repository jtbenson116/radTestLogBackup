/*
 * Copyright (C) 2019, GSI Technology, Inc. All rights reserved.
 *
 * This software source code is the sole property of GSI Technology, Inc.
 * and is proprietary and confidential.
 */

#ifndef EXE_COMMON_H
#define EXE_COMMON_H

struct common_dev_host {
    char                buffer[64];
    // Inputs
    uint64_t 		in_mem_hndl1;
    uint64_t            in_mem_hndl2;
    int                 vr_size;
    int                 num_vrs;
    int                 vr_to_check;
    
    // Outputs
    uint64_t 		out_mem_hndl1;
}__attribute__((packed));;

#endif /* EXE_COMMON_H */
