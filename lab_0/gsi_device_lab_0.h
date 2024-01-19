#ifndef GSI_DEVICE_LAB_0_H
#define GSI_DEVICE_LAB_0_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#include <stdint.h>

enum gd_lab_0_cmd_type {
	GD_LAB_0_ADD_1
};

struct common_dev_host {
    	// Inputs
	uint32_t 	cmd;
    	uint64_t 	in_mem_hndl1;
    	uint64_t        in_mem_hndl2;
    	int             vr_size;
    	int             num_vrs;
    	int             vr_to_check;
    	// Outputs
    	uint64_t 	out_mem_hndl1;
}__attribute__((packed));;

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* GSI_DEVICE_LAB_0_H */
