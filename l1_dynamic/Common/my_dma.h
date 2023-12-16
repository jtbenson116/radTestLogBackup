/*
 * Copyright (C) 2022, GSI Technology, Inc. All rights reserved.
 *
 * This software source code is the sole property of GSI Technology, Inc.
 * and is proprietary and confidential.
 */
#ifndef __MY_DEV_DMA_H__
#define __MY_DEV_DMA_H__

#include <gsi/libsys/assert.h>
#include <gsi/libgal.h>
#include <gsi/gal-fast-funcs.h>
#include <gsi/libgvml_memory.h>

#define _32K				32768
#define _16K				16384
#define _8K					8192
#define _4K					4096
#define _2K					2048
#define _1K					1024
#define MAX_NUM_VMRS GVML_VM_47

enum {
	_32k_16b_elem = _32K * sizeof(uint16_t),
	_16k_16b_elem = _16K * sizeof(uint16_t)
};

#ifdef APUC_TYPE_sw_sim
#include "my_gal_dma.h"
#else /* not APUC_TYPE_sw_sim */
/**** input ****/

static inline __attribute__((always_inline)) void my_dma_l2_to_l1_32k(enum gvml_vm_reg vmr)
{
	gal_fast_l2dma_l2_ready_rst_all();
	for (uint8_t bank = 0; bank < 4; bank++)
		gvml_load_vmr_16(vmr, bank, bank == (4 - 1), bank << 1);
}

static inline __attribute__((always_inline)) void my_dma_l4_to_l2_16k(int apc_id, uint16_t *p16)
{
	struct gal_fast_l2dma_l4_l2_transaction txn = {
		.num_steps = 1,
		.step_size_num_512b_chunk = _16k_16b_elem / 512,
		.l4_addr = p16,
		.l2_mode = GAL_L2T_MODE_64,
		.l2_col_group = 0,
	};
	gal_fast_l2dma_mem_to_l2_start(apc_id, 1, &txn, GAL_L2DMA_L2_READY_SET);
}

static inline __attribute__((always_inline)) void my_dma_l4_to_l2_32k(uint16_t *p16)
{
	my_dma_l4_to_l2_16k(0, p16);
	my_dma_l4_to_l2_16k(1, p16 + _16K);
	gal_fast_l2dma_async_memcpy_end(0);
	gal_fast_l2dma_async_memcpy_end(1);
}
static inline __attribute__((always_inline)) void my_dma_l4_to_l2(uint16_t *p16 , int size)
{
	bool do_extra = (bool)(size % 32);
	gal_l2dma_copy_mem_to_l2_ext( 0, (u8*)p16, (u32)(size/32 + do_extra) ,GAL_L2T_MODE_64, GAL_L2DMA_L2_READY_SET);
}

static inline __attribute__((always_inline)) void my_dma_l4_to_l1(uint16_t *p16, enum gvml_vm_reg to_vmr, uint16_t num_vmrs)
{
	GSI_DEBUG_ASSERT(to_vmr + num_vmrs <= MAX_NUM_VMRS);
	for (uint16_t i = 0; i < num_vmrs; i++) {
		my_dma_l4_to_l2_32k(p16 + _32K * i);
		my_dma_l2_to_l1_32k(to_vmr);
		++to_vmr;
	}
}

/**** output ****/

static inline __attribute__((always_inline)) void my_dma_l2_to_l4_16k(int apc_id, uint16_t *p16)
{
	struct gal_fast_l2dma_l4_l2_transaction txn = {
		.num_steps = 1,
		.step_size_num_512b_chunk = _16k_16b_elem / 512,
		.l4_addr = p16,
		.l2_mode = GAL_L2T_MODE_64,
		.l2_col_group = 0,
	};
	gal_fast_l2dma_l2_to_mem_start(apc_id, 1, &txn, GAL_L2DMA_L2_READY_SET);
}

static inline __attribute__((always_inline)) void my_dma_l2_to_l4_32k(uint16_t *p16)
{
	my_dma_l2_to_l4_16k(0, p16);
	my_dma_l2_to_l4_16k(1, p16 + _16K);
	gal_fast_l2dma_async_memcpy_end(0);
	gal_fast_l2dma_async_memcpy_end(1);
}

static inline __attribute__((always_inline)) void my_dma_l1_to_l2_32k(enum gvml_vm_reg vmr)
{
	gal_fast_l2dma_l2_ready_rst_all();
	for (uint8_t bank = 0; bank < 4; bank++)
		gvml_store_vmr_16(vmr, bank, bank == (4 - 1), bank * 2);
}

static inline __attribute__((always_inline)) void my_dma_l1_to_l4(uint16_t *p16, uint16_t num_vmrs, enum gvml_vm_reg vm_start)
{
	for (uint16_t i = 0; i < num_vmrs; i++) {
		my_dma_l1_to_l2_32k(vm_start + i);
		my_dma_l2_to_l4_32k(p16 + _32K * i);
	}
}

#endif /* not APUC_TYPE_sw_sim (i.e. HW mode) */

#endif	/* __MY_DEV_DMA_H__ */
