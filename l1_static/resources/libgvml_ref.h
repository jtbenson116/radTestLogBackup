/*
 * Copyright (C) 2022, GSI Technology, Inc. All rights reserved.
 *
 * This software source code is the sole property of GSI Technology, Inc.
 * and is proprietary and confidential.
 */

/*********************
 * LIBGVML DESCRIPTION
 *********************
 * The libgvml library is an abstraction for APUC hardware.
 * Its Jurisdiction includes MMB associative memory, L1 memory and L2 memory.
 * MMB contains set of registers, defined by 'enum gvml_vr16', and a set of markers/flags, defined by 'enum gvml_mrks_n_flgs'.
 * L1 contains set of registers, deifned by 'enum gvml_vm_reg'.
 * A MMB register contains 32k (32768) entries of 16 bits, Therefore called a 'vector register', or in short 'vr'.
 * A L1 register is identical in size to vr and is called 'vector memory register', or in short 'VMR'
 */

#ifndef GSI_LIBGVML_H
#define GSI_LIBGVML_H

typedef void (*interval_func_t)(void *params);

enum gvml_vr16 {
	GVML_VR16_0	= 0,
	GVML_VR16_1	= 1,
	GVML_VR16_2	= 2,
	GVML_VR16_3	= 3,
	GVML_VR16_4	= 4,
	GVML_VR16_5	= 5,
	GVML_VR16_6	= 6,
	GVML_VR16_7	= 7,
	GVML_VR16_8	= 8,
	GVML_VR16_9	= 9,
	GVML_VR16_10	= 10,
	GVML_VR16_11	= 11,
	GVML_VR16_12	= 12,
	GVML_VR16_13	= 13,
	GVML_VR16_14	= 14,
	GVML_VR16_IDX	= 15, /* Read only vr - in case of destruction GVML can't be used */
};

enum gvml_vm_reg {
	GVML_VM_0	= 0,
	GVML_VM_1	= 1,
	GVML_VM_2	= 2,
	GVML_VM_3	= 3,
	GVML_VM_4	= 4,
	GVML_VM_5	= 5,
	GVML_VM_6	= 6,
	GVML_VM_7	= 7,
	GVML_VM_8	= 8,
	GVML_VM_9	= 9,
	GVML_VM_10	= 10,
	GVML_VM_11	= 11,
	GVML_VM_12	= 12,
	GVML_VM_13	= 13,
	GVML_VM_14	= 14,
	GVML_VM_15	= 15,
	GVML_VM_16	= 16,
	GVML_VM_17	= 17,
	GVML_VM_18	= 18,
	GVML_VM_19	= 19,
	GVML_VM_20	= 20,
	GVML_VM_21	= 21,
	GVML_VM_22	= 22,
	GVML_VM_23	= 23,
	GVML_VM_24	= 24,
	GVML_VM_25	= 25,
	GVML_VM_26	= 26,
	GVML_VM_27	= 27,
	GVML_VM_28	= 28,
	GVML_VM_29	= 29,
	GVML_VM_30	= 30,
	GVML_VM_31	= 31,
	GVML_VM_32	= 32,
	GVML_VM_33	= 33,
	GVML_VM_34	= 34,
	GVML_VM_35	= 35,
	GVML_VM_36	= 36,
	GVML_VM_37	= 37,
	GVML_VM_38	= 38,
	GVML_VM_39	= 39,
	GVML_VM_40	= 40,
	GVML_VM_41	= 41,
	GVML_VM_42	= 42,
	GVML_VM_43	= 43,
	GVML_VM_44	= 44,
	GVML_VM_45	= 45,
	GVML_VM_46	= 46,
	GVML_VM_47	= 47,
};

void gvml_init(void);
void gvml_init_once(void);
void gvml_exit(void);

/*
 * Load data.
 *
 * Inputs:
 *      @vmsrc         - A VMR holds the data to load to @vdst.
 *      @l2_ready_set  - Which state to leave vior after loading.
 *      @l2_start_byte - The first byte, in a pair, to load from L2.
 * Outputs:
 *      @vdst   - The loaded vr.
 *      @vmdst  - The loaded VMR.
 *
 */
void gvml_load_16(enum gvml_vr16 vdst, enum gvml_vm_reg vmsrc);
void gvml_load_vmr_16(enum gvml_vm_reg vmdst, unsigned int bank, bool l2_ready_set, unsigned int l2_start_byte);

/*
 * Store data.
 *
 * Store_vmr - Dst register is vior which is only one register so no argument is needed.
 *
 * Inputs:
 *      @vsrc          - A vr holds the data to store in @vmdst.
 *      @bank          - Which bank to store in vior from @vmsrc.
 *      @l2_ready_set  - Which state to leave vior after loading.
 *      @l2_start_byte - The first byte, in a pair, to store in L2.
 * 
 * Outputs:
 *      @vdst  - The loaded vr.
 */
void gvml_store_16(enum gvml_vm_reg vmdst, enum gvml_vr16 vsrc);
void gvml_store_vmr_16(enum gvml_vm_reg vmsrc, unsigned int bank, bool l2_ready_set, unsigned int l2_start_byte);

/*
 * Copy value to vr.
 *
 * Inputs:
 *      @val  - Scalar which copied for each entry in vr/VMR.
 *
 * Outputs:
 *      @vdst   - A vr that stores the copied data.
 */
void gvml_cpy_imm_16(enum gvml_vr16 vdst, uint16_t val)

/*
 * Add/Sub operations on vrs.
 *
 *
 * add     - src1 + src2
 * sub     - src1 - src2
 *
 * Inputs:
 *      @vsrc/1/2   - A vr to process.
 *
 * Outputs:
 *      @vdst   - Operation outcome vr.
 */
void gvml_add_u16(enum gvml_vr16 vdst, enum gvml_vr16 vsrc1, enum gvml_vr16 vsrc2);
void gvml_sub_u16(enum gvml_vr16 vdst, enum gvml_vr16 vsrc1, enum gvml_vr16 vsrc2);

/*
 * Multiply two vrs.
 *
 * gvml_mul_16          - Multiply 16 bit vrs into 16 bit vr.
 *
 * Inputs:
 *      @vsrc1/2    - A vr to multiply.
 * Outputs:
 *      @vdst   - Multipllication outcome vr.
 */
void gvml_mul_u16(enum gvml_vr16 vdst, enum gvml_vr16 vsrc1, enum gvml_vr16 vsrc2);
#endif /* GSI_LIBGVML_H */
