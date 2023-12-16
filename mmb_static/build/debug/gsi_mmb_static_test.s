	.option	%reg
	.file	"dev_src/gsi_mmb_static_test.c"
	.size	.L.str.16, 3
	.type	.L.str.16,@object
	.size	.L.str.1, 5
	.type	.L.str.1,@object
	.size	.L.str.12, 5
	.type	.L.str.12,@object
	.size	.L.str.15, 6
	.type	.L.str.15,@object
	.size	.L.str.3, 12
	.type	.L.str.3,@object
	.size	.L__func__.populate_task, 14
	.type	.L__func__.populate_task,@object
	.size	.L__func__.read_mmb_task, 14
	.type	.L__func__.read_mmb_task,@object
	.size	populate_task__name, 14
	.type	populate_task__name,@object
	.size	read_mmb_task__name, 14
	.type	read_mmb_task__name,@object
	.size	.L.str.8, 18
	.type	.L.str.8,@object
	.size	.L.str.6, 20
	.type	.L.str.6,@object
	.size	.L.str.11, 21
	.type	.L.str.11,@object
	.size	.L.str.5, 22
	.type	.L.str.5,@object
	.size	.L.str.9, 22
	.type	.L.str.9,@object
	.size	.L.str.2, 29
	.type	.L.str.2,@object
	.size	.L.str, 30
	.type	.L.str,@object
	.size	.L__func__.gal_fast_l2dma_l2_to_mem_start, 31
	.type	.L__func__.gal_fast_l2dma_l2_to_mem_start,@object
	.size	.L__func__.gal_fast_l2dma_mem_to_l2_start, 31
	.type	.L__func__.gal_fast_l2dma_mem_to_l2_start,@object
	.size	.L__func__.gal_fast_l2dma_l2_ready_rst_all, 32
	.type	.L__func__.gal_fast_l2dma_l2_ready_rst_all,@object
	.size	.L.str.7, 35
	.type	.L.str.7,@object
	.size	.L.str.4, 39
	.type	.L.str.4,@object
	.size	.L.str.10, 46
	.type	.L.str.10,@object
	.size	.L.str.19, 49
	.type	.L.str.19,@object
	.size	.L.str.20, 49
	.type	.L.str.20,@object
	.size	.L.str.13, 61
	.type	.L.str.13,@object
	.size	.L.str.14, 96
	.type	.L.str.14,@object
	.size	.L.str.23, 96
	.type	.L.str.23,@object
	.size	.L.str.17, 98
	.type	.L.str.17,@object
	.size	.L.str.18, 98
	.type	.L.str.18,@object
	.no_dead_strip	gal_include_init_task
	.no_dead_strip	populate_task
	.no_dead_strip	populate_task__name
	.no_dead_strip	read_mmb_task
	.no_dead_strip	read_mmb_task__name
	.type	gal_include_init_task,@function
	.size	gal_include_init_task, .Lfunc_end0-gal_include_init_task
	.type	read_mmb_task,@function
	.size	read_mmb_task, .Lfunc_end1-read_mmb_task
	.type	apl_set_sm_reg,@function
	.size	apl_set_sm_reg, .Lfunc_end2-apl_set_sm_reg
	.type	populate_task,@function
	.size	populate_task, .Lfunc_end3-populate_task
	.type	gvml_set_m,@function
	.size	gvml_set_m, .Lfunc_end4-gvml_set_m
	.equ	.CC_I,0
	.global	.CC_I
	.ident	"LLVM 4.0.1/O-2018.06. (build 002) (LLVM 4.0.1) -O1 -av2hs -core2 -Mm -Xbs -Xcd -Xmpy_option=7 -Xnorm -Xsa -Xswap"
	.section	.ARC.attributes,"",@attributes
	.align	4
	.byte	65
.LabiStart0:                            ; @0x1
	.word	.LabiEnd0-.LabiStart0
	.asciz	"ARC"
.LabiStartList0:                        ; @0x9
	.byte	1
	.word	.LabiEnd0-.LabiStartList0
	.byte	20
	.byte	1                       ; version=1
	.byte	13
	.byte	0                       ; fshort-enums
	.byte	5
	.byte	4                       ; processor
	.byte	6
	.byte	2                       ; core
	.byte	16
	.asciz	"BS"
	.byte	16
	.asciz	"SWAP"
	.byte	16
	.asciz	"NORM"
	.byte	16
	.asciz	"CD"
	.byte	16
	.asciz	"SA"
	.byte	18
	.byte	7                       ; MPY_OPTION
.LabiEnd0:                              ; @0x30
	.section	.rodata,"a",@progbits
	.align	4
.L.str.16:                              ; @0x0
	.asciz	"%s"
	.align	4
.L.str.1:                               ; @0x4
	.asciz	"INFO"
	.align	4
.L.str.12:                              ; @0xc
	.asciz	"(%s)"
	.align	4
.L.str.15:                              ; @0x14
	.asciz	"FATAL"
	.align	4
.L.str.3:                               ; @0x1c
	.asciz	"vr_size: %d"
	.align	4
.L__func__.populate_task:               ; @0x28
	.asciz	"populate_task"
	.align	4
.L__func__.read_mmb_task:               ; @0x38
	.asciz	"read_mmb_task"
	.align	4
.L.str.8:                               ; @0x48
	.asciz	"starting l1_to_l4"
	.align	4
.L.str.6:                               ; @0x5c
	.asciz	"Got vr_to_check: %d"
	.align	4
.L.str.11:                              ; @0x70
	.asciz	"Error: Assert failed"
	.align	4
.L.str.5:                               ; @0x88
	.asciz	"Running read_mmb_task"
	.align	4
.L.str.9:                               ; @0xa0
	.asciz	"Read GMVL_VM_%d to L4"
	.align	4
.L.str.2:                               ; @0xb8
	.asciz	"Running VM reg populate task"
	.align	4
.L.str:                                 ; @0xd8
	.asciz	"dev_src/gsi_mmb_static_test.c"
	.align	4
.L__func__.gal_fast_l2dma_l2_to_mem_start: ; @0xf8
	.asciz	"gal_fast_l2dma_l2_to_mem_start"
	.align	4
.L__func__.gal_fast_l2dma_mem_to_l2_start: ; @0x118
	.asciz	"gal_fast_l2dma_mem_to_l2_start"
	.align	4
.L__func__.gal_fast_l2dma_l2_ready_rst_all: ; @0x138
	.asciz	"gal_fast_l2dma_l2_ready_rst_all"
	.align	4
.L.str.7:                               ; @0x158
	.asciz	"Reading GVML_VR16_%d -> GVML_VM_%d"
	.align	4
.L.str.4:                               ; @0x17c
	.asciz	"Populated GVML_VM_0 through GVML_VM_%d"
	.align	4
.L.str.10:                              ; @0x1a4
	.asciz	"/usr/include/gsi/archs36/gsi/gal-fast-funcs.h"
	.align	4
.L.str.19:                              ; @0x1d4
	.asciz	"COND_L2_READY A timed out (fail to rst l2_ready)"
	.align	4
.L.str.20:                              ; @0x208
	.asciz	"COND_L2_READY B timed out (fail to rst l2_ready)"
	.align	4
.L.str.13:                              ; @0x23c
	.asciz	"gal_fast_l2dma_is_txns_valid(num_transactions, transactions)"
	.align	4
.L.str.14:                              ; @0x27c
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.align	4
.L.str.23:                              ; @0x2dc
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_l2_to_mem_start)"
	.align	4
.L.str.17:                              ; @0x33c
	.asciz	"COND_L2_READY A timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.align	4
.L.str.18:                              ; @0x3a0
	.asciz	"COND_L2_READY B timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.section	GSI_task_ep_names,"a",@progbits
	.align	4
populate_task__name:                    ; @0x0
	.asciz	"populate_task"
	.align	4
read_mmb_task__name:                    ; @0x10
	.asciz	"read_mmb_task"
	.section	.text.gal_include_init_task,"ax",@progbits
	.align	4
gal_include_init_task:                  ; @gal_include_init_task
                                        ; @0x0
	.cfa_bf	gal_include_init_task
;  BB#0:                                ; %entry
	push_s	%blink                  ; @0x0
	.cfa_push	4               ; @0x2
	.cfa_reg_offset	{%blink}, 0     ; @0x2
	bl	gal_call_init_task      ; @0x2
	pop_s	%blink                  ; @0x6
	.cfa_restore	{%blink}        ; @0x8
	.cfa_pop	4               ; @0x8
	j_s	[%blink]                ; @0x8
	.cfa_ef
.Lfunc_end0:                            ; @0xa

	.section	.text.read_mmb_task,"ax",@progbits
	.align	4
read_mmb_task:                          ; @read_mmb_task
                                        ; @0x0
	.cfa_bf	read_mmb_task
;  BB#0:                                ; %entry
	st.aw	%r13,[%sp,-40]          ; @0x0
	.cfa_push	40              ; @0x4
	.cfa_reg_offset	{%r13}, 0       ; @0x4
	st_s	%r14,[%sp,4]            ; @0x4
	.cfa_reg_offset	{%r14}, 4       ; @0x6
	st_s	%r15,[%sp,8]            ; @0x6
	.cfa_reg_offset	{%r15}, 8       ; @0x8
	st	%r16,[%sp,12]           ; @0x8
	.cfa_reg_offset	{%r16}, 12      ; @0xc
	st	%r17,[%sp,16]           ; @0xc
	.cfa_reg_offset	{%r17}, 16      ; @0x10
	st	%r18,[%sp,20]           ; @0x10
	.cfa_reg_offset	{%r18}, 20      ; @0x14
	st	%r19,[%sp,24]           ; @0x14
	.cfa_reg_offset	{%r19}, 24      ; @0x18
	st	%r20,[%sp,28]           ; @0x18
	.cfa_reg_offset	{%r20}, 28      ; @0x1c
	st	%r21,[%sp,32]           ; @0x1c
	.cfa_reg_offset	{%r21}, 32      ; @0x20
	st	%blink,[%sp,36]         ; @0x20
	.cfa_reg_offset	{%blink}, 36    ; @0x24
	mov_s	%r14,%r0                ; @0x24
	mov_s	%r18,.L.str.16          ; @0x26
	add2	%r15,%r18,(.L.str-.L.str.16)/4 ; @0x2c
	add	%r19,%r18,.L__func__.read_mmb_task-.L.str.16 ; @0x30
	add	%r17,%r18,.L.str.1-.L.str.16 ; @0x34
	add2	%r5,%r18,(.L.str.5-.L.str.16)/4 ; @0x38
	mov_s	%r0,%r15                ; @0x3c
	mov_s	%r1,100                 ; @0x3e
	mov_s	%r2,%r19                ; @0x40
	mov_s	%r3,3                   ; @0x42
	mov_s	%r4,%r17                ; @0x44
	bl	_gsi_log                ; @0x46
	bl	gvml_init_once          ; @0x4a
	ldb_s	%r0,[%r14,29]           ; @0x4e
	asl_s	%r0,%r0,8               ; @0x50
	ldb_s	%r1,[%r14,28]           ; @0x52
	or_s	%r0,%r0,%r1             ; @0x54
	ldb_s	%r1,[%r14,31]           ; @0x56
	asl_s	%r1,%r1,8               ; @0x58
	ldb_s	%r2,[%r14,30]           ; @0x5a
	or_s	%r1,%r1,%r2             ; @0x5c
	asl_s	%r1,%r1,16              ; @0x5e
	or_s	%r0,%r0,%r1             ; @0x60
	ldb	%r1,[%r14,33]           ; @0x62
	asl_s	%r1,%r1,8               ; @0x66
	ldb	%r2,[%r14,32]           ; @0x68
	or_s	%r1,%r1,%r2             ; @0x6c
	ldb	%r2,[%r14,35]           ; @0x6e
	asl_s	%r2,%r2,8               ; @0x72
	ldb	%r3,[%r14,34]           ; @0x74
	or_s	%r2,%r2,%r3             ; @0x78
	asl_s	%r2,%r2,16              ; @0x7a
	or_s	%r1,%r1,%r2             ; @0x7c
	bl	gal_mem_handle_to_apu_ptr ; @0x7e
	mov_s	%r16,%r0                ; @0x82
	ldb_s	%r0,[%r14,25]           ; @0x84
	asl_s	%r0,%r0,8               ; @0x86
	ldb_s	%r1,[%r14,24]           ; @0x88
	or_s	%r0,%r0,%r1             ; @0x8a
	ldb_s	%r1,[%r14,26]           ; @0x8c
	ldb_s	%r2,[%r14,27]           ; @0x8e
	asl_s	%r2,%r2,8               ; @0x90
	or_s	%r1,%r1,%r2             ; @0x92
	asl_s	%r1,%r1,16              ; @0x94
	or	%r20,%r1,%r0            ; @0x96
	add1	%r5,%r18,(.L.str.6-.L.str.16)/2 ; @0x9a
	mov_s	%r0,%r15                ; @0x9e
	mov_s	%r1,131                 ; @0xa0
	mov_s	%r2,%r19                ; @0xa2
	mov_s	%r3,3                   ; @0xa4
	mov_s	%r4,%r17                ; @0xa6
	mov_s	%r6,%r20                ; @0xa8
	bl	_gsi_log                ; @0xaa
	add3	%r5,%r18,(.L.str.7-.L.str.16)/8 ; @0xae
	mov_s	%r0,%r15                ; @0xb2
	mov_s	%r1,134                 ; @0xb4
	mov_s	%r2,%r19                ; @0xb6
	mov_s	%r3,3                   ; @0xb8
	mov_s	%r4,%r17                ; @0xba
	mov_s	%r6,%r20                ; @0xbc
	mov_s	%r7,%r20                ; @0xbe
	bl	_gsi_log                ; @0xc0
	mov_s	%r0,%r20                ; @0xc4
	mov_s	%r1,%r20                ; @0xc6
	bl	gvml_store_16           ; @0xc8
	add1	%r5,%r18,(.L.str.8-.L.str.16)/2 ; @0xcc
	mov_s	%r0,%r15                ; @0xd0
	mov_s	%r1,138                 ; @0xd2
	mov_s	%r2,%r19                ; @0xd4
	mov_s	%r3,3                   ; @0xd6
	mov_s	%r4,%r17                ; @0xd8
	bl	_gsi_log                ; @0xda
	.extInstruction test_barrier,0x07,0x03,SUFFIX_FLAG,SYNTAX_2OP
	test_barrier	%r0,4           ; @0xde
	brne_s	%r0,0,.LBB1_12          ; @0xe2
;  BB#1:                                ; %while.body.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0xe4
	brne_s	%r0,0,.LBB1_12          ; @0xe8
;  BB#2:                                ; %while.body.lr.ph90.i.i.i
	test_barrier	%r0,4           ; @0xea
	brne_s	%r0,0,.LBB1_12          ; @0xee
;  BB#3:                                ; %while.body.i.preheader.i.i
	test_barrier	%r0,4           ; @0xf0
	brne_s	%r0,0,.LBB1_12          ; @0xf4
;  BB#4:                                ; %while.body.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0xf6
	brne_s	%r0,0,.LBB1_12          ; @0xfa
;  BB#5:                                ; %while.cond.i.i.preheader.i
	test_barrier	%r0,4           ; @0xfc
	brne_s	%r0,0,.LBB1_12          ; @0x100
;  BB#6:                                ; %while.body.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x102
	brne_s	%r0,0,.LBB1_12          ; @0x106
;  BB#7:                                ; %while.body.i.i.lr.ph8.i
	test_barrier	%r0,4           ; @0x108
	brne_s	%r0,0,.LBB1_12          ; @0x10c
;  BB#8:                                ; %while.body.i.i.i.preheader
	test_barrier	%r0,4           ; @0x10e
	brne_s	%r0,0,.LBB1_12          ; @0x112
;  BB#9:                                ; %while.body.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x114
	brne_s	%r0,0,.LBB1_12          ; @0x118
;  BB#10:                               ; %while.cond.i.i.i.preheader
	mov_s	%r2,9                   ; @0x11a
	mov_s	%r1,0x186a1             ; @0x11c
.LBB1_11:                               ; %while.cond.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x122
	test_barrier	%r0,4           ; @0x122
	brne_s	%r0,0,.LBB1_12          ; @0x126
;  BB#26:                               ; %while.body.i.i.i
                                        ;   in Loop: Header=BB1_11 Depth=1
	add_s	%r2,%r2,1               ; @0x128
	brlo	%r2,%r1,.LBB1_11        ; @0x12a
;  BB#27:                               ; %if.then.i.i.i
	mov_s	%r0,.L.str.10           ; @0x12e
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.16)/8 ; @0x134
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x138
	add3	%r4,%r0,(.L.str.17-.L.str.10)/8 ; @0x13c
	mov_s	%r1,67                  ; @0x140
	bl	_gsi_log_fatal          ; @0x142
.LBB1_12:                               ; %while.cond1.preheader.i.i.i
                                        ; @0x146
	test_barrier	%r0,5           ; @0x146
	brne_s	%r0,0,.LBB1_28          ; @0x14a
;  BB#13:                               ; %while.body5.lr.ph.i.i.i
	test_barrier	%r0,5           ; @0x14c
	brne_s	%r0,0,.LBB1_28          ; @0x150
;  BB#14:                               ; %while.body5.lr.ph77.i.i.i
	test_barrier	%r0,5           ; @0x152
	brne_s	%r0,0,.LBB1_28          ; @0x156
;  BB#15:                               ; %while.body5.i.preheader.i.i
	test_barrier	%r0,5           ; @0x158
	brne_s	%r0,0,.LBB1_28          ; @0x15c
;  BB#16:                               ; %while.body5.i.lr.ph.i.i
	test_barrier	%r0,5           ; @0x15e
	brne_s	%r0,0,.LBB1_28          ; @0x162
;  BB#17:                               ; %while.cond1.i.i.preheader.i
	test_barrier	%r0,5           ; @0x164
	brne_s	%r0,0,.LBB1_28          ; @0x168
;  BB#18:                               ; %while.body5.i.i.lr.ph.i
	test_barrier	%r0,5           ; @0x16a
	brne_s	%r0,0,.LBB1_28          ; @0x16e
;  BB#19:                               ; %while.body5.i.i.lr.ph21.i
	test_barrier	%r0,5           ; @0x170
	brne_s	%r0,0,.LBB1_28          ; @0x174
;  BB#20:                               ; %while.body5.i.i.i.preheader
	test_barrier	%r0,5           ; @0x176
	brne_s	%r0,0,.LBB1_28          ; @0x17a
;  BB#21:                               ; %while.body5.i.i.i.lr.ph
	test_barrier	%r0,5           ; @0x17c
	brne_s	%r0,0,.LBB1_28          ; @0x180
;  BB#22:                               ; %while.cond1.i.i.i.preheader
	mov_s	%r2,9                   ; @0x182
	mov_s	%r1,0x186a1             ; @0x184
.LBB1_23:                               ; %while.cond1.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x18a
	test_barrier	%r0,5           ; @0x18a
	brne_s	%r0,0,.LBB1_28          ; @0x18e
;  BB#24:                               ; %while.body5.i.i.i
                                        ;   in Loop: Header=BB1_23 Depth=1
	add_s	%r2,%r2,1               ; @0x190
	brlo	%r2,%r1,.LBB1_23        ; @0x192
;  BB#25:                               ; %if.then8.i.i.i
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.16)/8 ; @0x196
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x19a
	mov_s	%r0,.L.str.10           ; @0x19e
	mov_s	%r1,72                  ; @0x1a4
	mov_s	%r4,.L.str.18           ; @0x1a6
	bl	_gsi_log_fatal          ; @0x1ac
.LBB1_28:                               ; %while.cond11.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1b0
	mov_s	%r14,0xf0000300         ; @0x1b0
	ld.di	%r0,[%r14,0]            ; @0x1b6
	brlt	%r0,0,.LBB1_28          ; @0x1ba
;  BB#29:                               ; %while.end15.i.i.i
	mov_s	%r0,0x82000000          ; @0x1be
	st.di	%r0,[%r14,0]            ; @0x1c4
	mov_s	%r21,0xf0000380         ; @0x1c8
.LBB1_30:                               ; %while.cond16.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1ce
	ld.di	%r1,[%r21,0]            ; @0x1ce
	brlt	%r1,0,.LBB1_30          ; @0x1d2
;  BB#31:                               ; %while.end21.i.i.i
	st.di	%r0,[%r21,0]            ; @0x1d6
	test_barrier	%r0,4           ; @0x1da
	breq_s	%r0,0,.LBB1_43          ; @0x1de
;  BB#32:                               ; %while.body25.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0x1e0
	breq_s	%r0,0,.LBB1_43          ; @0x1e4
;  BB#33:                               ; %while.body25.lr.ph64.i.i.i
	test_barrier	%r0,4           ; @0x1e6
	breq_s	%r0,0,.LBB1_43          ; @0x1ea
;  BB#34:                               ; %while.body25.i.preheader.i.i
	test_barrier	%r0,4           ; @0x1ec
	breq_s	%r0,0,.LBB1_43          ; @0x1f0
;  BB#35:                               ; %while.body25.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0x1f2
	breq_s	%r0,0,.LBB1_43          ; @0x1f6
;  BB#36:                               ; %while.cond22.i.i.preheader.i
	test_barrier	%r0,4           ; @0x1f8
	breq_s	%r0,0,.LBB1_43          ; @0x1fc
;  BB#37:                               ; %while.body25.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x1fe
	breq_s	%r0,0,.LBB1_43          ; @0x202
;  BB#38:                               ; %while.body25.i.i.lr.ph34.i
	test_barrier	%r0,4           ; @0x204
	breq_s	%r0,0,.LBB1_43          ; @0x208
;  BB#39:                               ; %while.body25.i.i.i.preheader
	test_barrier	%r0,4           ; @0x20a
	breq_s	%r0,0,.LBB1_43          ; @0x20e
;  BB#40:                               ; %while.body25.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x210
	breq_s	%r0,0,.LBB1_43          ; @0x214
;  BB#41:                               ; %while.cond22.i.i.i.preheader
	mov_s	%r2,9                   ; @0x216
	mov_s	%r1,0x186a1             ; @0x218
.LBB1_42:                               ; %while.cond22.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x21e
	test_barrier	%r0,4           ; @0x21e
	breq_s	%r0,0,.LBB1_43          ; @0x222
;  BB#78:                               ; %while.body25.i.i.i
                                        ;   in Loop: Header=BB1_42 Depth=1
	add_s	%r2,%r2,1               ; @0x224
	brlo	%r2,%r1,.LBB1_42        ; @0x226
;  BB#79:                               ; %if.then28.i.i.i
	mov_s	%r0,.L.str.10           ; @0x22a
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.16)/8 ; @0x230
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x234
	add	%r4,%r0,.L.str.19-.L.str.10 ; @0x238
	mov_s	%r1,89                  ; @0x23c
	bl	_gsi_log_fatal          ; @0x23e
.LBB1_43:                               ; %while.cond31.preheader.i.i.i
                                        ; @0x242
	test_barrier	%r0,5           ; @0x242
	breq_s	%r0,0,.LBB1_51          ; @0x246
;  BB#44:                               ; %while.body34.lr.ph.i.i.i
	test_barrier	%r0,5           ; @0x248
	breq_s	%r0,0,.LBB1_51          ; @0x24c
;  BB#45:                               ; %while.body34.lr.ph51.i.i.i
	test_barrier	%r0,5           ; @0x24e
	breq_s	%r0,0,.LBB1_51          ; @0x252
;  BB#46:                               ; %while.body34.i.preheader.i.i
	test_barrier	%r0,5           ; @0x254
	breq_s	%r0,0,.LBB1_51          ; @0x258
;  BB#47:                               ; %while.body34.i.lr.ph.i.i
	test_barrier	%r0,5           ; @0x25a
	breq_s	%r0,0,.LBB1_51          ; @0x25e
;  BB#48:                               ; %while.cond31.i.i.preheader.i
	test_barrier	%r0,5           ; @0x260
	breq_s	%r0,0,.LBB1_51          ; @0x264
;  BB#49:                               ; %while.body34.i.i.lr.ph.i
	test_barrier	%r0,5           ; @0x266
	breq_s	%r0,0,.LBB1_51          ; @0x26a
;  BB#50:                               ; %while.body34.i.i.lr.ph47.i
	test_barrier	%r0,5           ; @0x26c
	breq_s	%r0,0,.LBB1_51          ; @0x270
;  BB#72:                               ; %while.body34.i.i.i.preheader
	test_barrier	%r0,5           ; @0x272
	breq_s	%r0,0,.LBB1_51          ; @0x276
;  BB#73:                               ; %while.body34.i.i.i.lr.ph
	test_barrier	%r0,5           ; @0x278
	breq_s	%r0,0,.LBB1_51          ; @0x27c
;  BB#74:                               ; %while.cond31.i.i.i.preheader
	mov_s	%r2,9                   ; @0x27e
	mov_s	%r1,0x186a1             ; @0x280
.LBB1_75:                               ; %while.cond31.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x286
	test_barrier	%r0,5           ; @0x286
	breq_s	%r0,0,.LBB1_51          ; @0x28a
;  BB#76:                               ; %while.body34.i.i.i
                                        ;   in Loop: Header=BB1_75 Depth=1
	add_s	%r2,%r2,1               ; @0x28c
	brlo	%r2,%r1,.LBB1_75        ; @0x28e
;  BB#77:                               ; %if.then37.i.i.i
	mov_s	%r0,.L.str.10           ; @0x292
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.16)/8 ; @0x298
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x29c
	add1	%r4,%r0,(.L.str.20-.L.str.10)/2 ; @0x2a0
	mov_s	%r1,94                  ; @0x2a4
	bl	_gsi_log_fatal          ; @0x2a6
.LBB1_51:                               ; %for.body.i.i.preheader
                                        ; @0x2aa
	mov_s	%r15,0                  ; @0x2aa
	mov_s	%r13,0                  ; @0x2ac
.LBB1_52:                               ; %for.body.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x2ae
	seteq	%r2,%r13,3              ; @0x2ae
	mov_s	%r0,%r20                ; @0x2b2
	mov_s	%r1,%r13                ; @0x2b4
	mov_s	%r3,%r15                ; @0x2b6
	bl	gvml_store_vmr_16       ; @0x2b8
	add_s	%r15,%r15,2             ; @0x2bc
	add_s	%r13,%r13,1             ; @0x2be
	brlo	%r13,4,.LBB1_52         ; @0x2c0
;  BB#53:                               ; %my_dma_l1_to_l2_32k.exit.i
	test_barrier	%r0,4           ; @0x2c4
	brne	%r0,0,.LBB1_80          ; @0x2c8
;  BB#54:                               ; %while.body.lr.ph.i.i.i.i
	test_barrier	%r0,4           ; @0x2cc
	brne	%r0,0,.LBB1_80          ; @0x2d0
;  BB#55:                               ; %while.body.lr.ph14.i.i.i.i
	test_barrier	%r0,4           ; @0x2d4
	brne_s	%r0,0,.LBB1_80          ; @0x2d8
;  BB#56:                               ; %while.body.i.preheader.i.i.i
	test_barrier	%r0,4           ; @0x2da
	brne_s	%r0,0,.LBB1_80          ; @0x2de
;  BB#57:                               ; %while.body.i.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0x2e0
	brne_s	%r0,0,.LBB1_80          ; @0x2e4
;  BB#58:                               ; %while.cond.i.preheader.i.i.i
	test_barrier	%r0,4           ; @0x2e6
	brne_s	%r0,0,.LBB1_80          ; @0x2ea
;  BB#59:                               ; %while.body.i.lr.ph31.i.i.i
	test_barrier	%r0,4           ; @0x2ec
	brne_s	%r0,0,.LBB1_80          ; @0x2f0
;  BB#60:                               ; %while.body.i.lr.ph36.i.i.i
	test_barrier	%r0,4           ; @0x2f2
	brne_s	%r0,0,.LBB1_80          ; @0x2f6
;  BB#61:                               ; %while.body.i.i.preheader.i.i
	test_barrier	%r0,4           ; @0x2f8
	brne_s	%r0,0,.LBB1_80          ; @0x2fc
;  BB#62:                               ; %while.body.i.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0x2fe
	brne_s	%r0,0,.LBB1_80          ; @0x302
;  BB#63:                               ; %while.cond.i.i.i.preheader.i
	test_barrier	%r0,4           ; @0x304
	brne_s	%r0,0,.LBB1_80          ; @0x308
;  BB#64:                               ; %while.body.i.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x30a
	brne_s	%r0,0,.LBB1_80          ; @0x30e
;  BB#65:                               ; %while.body.i.i.i.lr.ph60.i
	test_barrier	%r0,4           ; @0x310
	brne_s	%r0,0,.LBB1_80          ; @0x314
;  BB#66:                               ; %while.body.i.i.i.i.preheader
	test_barrier	%r0,4           ; @0x316
	brne_s	%r0,0,.LBB1_80          ; @0x31a
;  BB#67:                               ; %while.body.i.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x31c
	brne_s	%r0,0,.LBB1_80          ; @0x320
;  BB#68:                               ; %while.cond.i.i.i.i.preheader
	mov_s	%r2,14                  ; @0x322
	mov_s	%r1,0x186a1             ; @0x324
.LBB1_69:                               ; %while.cond.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x32a
	test_barrier	%r0,4           ; @0x32a
	brne_s	%r0,0,.LBB1_80          ; @0x32e
;  BB#70:                               ; %while.body.i.i.i.i
                                        ;   in Loop: Header=BB1_69 Depth=1
	add_s	%r2,%r2,1               ; @0x330
	brlo	%r2,%r1,.LBB1_69        ; @0x332
;  BB#71:                               ; %if.then9.i.i.i.i
	mov_s	%r0,.L.str.10           ; @0x336
	add2	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.16)/4 ; @0x33c
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x340
	add3	%r5,%r0,(.L.str.23-.L.str.10)/8 ; @0x344
	mov	%r1,608                 ; @0x348
	mov_s	%r4,%r18                ; @0x34c
	bl	_gsi_log_fatal          ; @0x34e
.LBB1_80:                               ; %while.cond10.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x352
	ld.di	%r0,[%r14,0]            ; @0x352
	brlt	%r0,0,.LBB1_80          ; @0x356
;  BB#81:                               ; %my_dma_l2_to_l4_16k.exit.i.i
	mov_s	%r0,0                   ; @0x35a
	mov_s	%r1,0xf0000388          ; @0x35c
	st.di	%r0,[%r1,0]             ; @0x362
	st.di	%r16,[%r1,-120]         ; @0x366
	mov_s	%r2,0xef3f00c0          ; @0x36a
	st.di	%r2,[%r14,0]            ; @0x370
	add	%r16,%r16,32768         ; @0x374
	test_barrier	%r3,5           ; @0x37c
	brne	%r3,0,.LBB1_100         ; @0x380
;  BB#82:                               ; %while.body21.lr.ph.i.i.i.i
	test_barrier	%r3,5           ; @0x384
	brne	%r3,0,.LBB1_100         ; @0x388
;  BB#83:                               ; %while.body21.lr.ph27.i.i.i.i
	test_barrier	%r3,5           ; @0x38c
	brne_s	%r3,0,.LBB1_100         ; @0x390
;  BB#84:                               ; %while.body21.i.preheader.i.i.i
	test_barrier	%r3,5           ; @0x392
	brne_s	%r3,0,.LBB1_100         ; @0x396
;  BB#85:                               ; %while.body21.i.lr.ph.i.i.i
	test_barrier	%r3,5           ; @0x398
	brne_s	%r3,0,.LBB1_100         ; @0x39c
;  BB#86:                               ; %while.cond17.i.preheader.i.i.i
	test_barrier	%r3,5           ; @0x39e
	brne_s	%r3,0,.LBB1_100         ; @0x3a2
;  BB#87:                               ; %while.body21.i.lr.ph45.i.i.i
	test_barrier	%r3,5           ; @0x3a4
	brne_s	%r3,0,.LBB1_100         ; @0x3a8
;  BB#88:                               ; %while.body21.i.lr.ph50.i.i.i
	test_barrier	%r3,5           ; @0x3aa
	brne_s	%r3,0,.LBB1_100         ; @0x3ae
;  BB#89:                               ; %while.body21.i.i.preheader.i.i
	test_barrier	%r3,5           ; @0x3b0
	brne_s	%r3,0,.LBB1_100         ; @0x3b4
;  BB#90:                               ; %while.body21.i.i.lr.ph.i.i
	test_barrier	%r3,5           ; @0x3b6
	brne_s	%r3,0,.LBB1_100         ; @0x3ba
;  BB#91:                               ; %while.cond17.i.i.i.preheader.i
	test_barrier	%r3,5           ; @0x3bc
	brne_s	%r3,0,.LBB1_100         ; @0x3c0
;  BB#92:                               ; %while.body21.i.i.i.lr.ph.i
	test_barrier	%r3,5           ; @0x3c2
	brne_s	%r3,0,.LBB1_100         ; @0x3c6
;  BB#93:                               ; %while.body21.i.i.i.lr.ph73.i
	test_barrier	%r3,5           ; @0x3c8
	brne_s	%r3,0,.LBB1_100         ; @0x3cc
;  BB#94:                               ; %while.body21.i.i.i.i.preheader
	test_barrier	%r3,5           ; @0x3ce
	brne_s	%r3,0,.LBB1_100         ; @0x3d2
;  BB#95:                               ; %while.body21.i.i.i.i.lr.ph
	test_barrier	%r3,5           ; @0x3d4
	brne_s	%r3,0,.LBB1_100         ; @0x3d8
;  BB#96:                               ; %while.cond17.i.i.i.i.preheader
	mov_s	%r15,14                 ; @0x3da
	mov_s	%r12,0x186a1            ; @0x3dc
.LBB1_97:                               ; %while.cond17.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x3e2
	test_barrier	%r3,5           ; @0x3e2
	brne_s	%r3,0,.LBB1_100         ; @0x3e6
;  BB#98:                               ; %while.body21.i.i.i.i
                                        ;   in Loop: Header=BB1_97 Depth=1
	add_s	%r15,%r15,1             ; @0x3e8
	brlo	%r15,%r12,.LBB1_97      ; @0x3ea
;  BB#99:                               ; %if.then25.i.i.i.i
	mov_s	%r0,.L.str.10           ; @0x3ee
	add2	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.16)/4 ; @0x3f4
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x3f8
	add3	%r5,%r0,(.L.str.23-.L.str.10)/8 ; @0x3fc
	mov	%r1,617                 ; @0x400
	mov_s	%r4,%r18                ; @0x404
	bl	_gsi_log_fatal          ; @0x406
.LBB1_100:                              ; %while.cond28.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x40a
	ld.di	%r3,[%r21,0]            ; @0x40a
	brlt	%r3,0,.LBB1_100         ; @0x40e
;  BB#101:                              ; %my_dma_l2_to_l4_16k.exit2.i.i
	st.di	%r0,[%r1,0]             ; @0x412
	st.di	%r16,[0xf0000390]       ; @0x416
	st.di	%r2,[%r21,0]            ; @0x41e
.LBB1_102:                              ; %while.cond.i.i3.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x422
	ld.di	%r2,[%r14,0]            ; @0x422
	brlt	%r2,0,.LBB1_102         ; @0x426
;  BB#103:                              ; %while.end.i.i.i.i
	st.di	%r0,[0xf0000308]        ; @0x42a
	ror	%r0,1                   ; @0x432
	st.di	%r0,[%r14,0]            ; @0x436
.LBB1_104:                              ; %while.cond1.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x43a
	ld.di	%r2,[%r14,0]            ; @0x43a
	brlt	%r2,0,.LBB1_104         ; @0x43e
.LBB1_105:                              ; %while.cond.i2.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x442
	ld.di	%r2,[%r21,0]            ; @0x442
	brlt	%r2,0,.LBB1_105         ; @0x446
;  BB#106:                              ; %while.end.i3.i.i.i
	st.di	0,[%r1,0]               ; @0x44a
	st.di	%r0,[%r21,0]            ; @0x44e
.LBB1_107:                              ; %while.cond1.i5.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x452
	ld.di	%r0,[%r21,0]            ; @0x452
	brlt	%r0,0,.LBB1_107         ; @0x456
;  BB#108:                              ; %my_dma_l1_to_l4.exit
	add2	%r0,%r18,(.L.str-.L.str.16)/4 ; @0x45a
	add2	%r5,%r18,(.L.str.9-.L.str.16)/4 ; @0x45e
	mov_s	%r1,142                 ; @0x462
	mov_s	%r2,%r19                ; @0x464
	mov_s	%r3,3                   ; @0x466
	mov_s	%r4,%r17                ; @0x468
	mov_s	%r6,%r20                ; @0x46a
	bl	_gsi_log                ; @0x46c
	mov_s	%r0,0                   ; @0x470
	ld	%blink,[%sp,36]         ; @0x472
	.cfa_restore	{%blink}        ; @0x476
	ld	%r21,[%sp,32]           ; @0x476
	.cfa_restore	{%r21}          ; @0x47a
	ld	%r20,[%sp,28]           ; @0x47a
	.cfa_restore	{%r20}          ; @0x47e
	ld	%r19,[%sp,24]           ; @0x47e
	.cfa_restore	{%r19}          ; @0x482
	ld	%r18,[%sp,20]           ; @0x482
	.cfa_restore	{%r18}          ; @0x486
	ld	%r17,[%sp,16]           ; @0x486
	.cfa_restore	{%r17}          ; @0x48a
	ld	%r16,[%sp,12]           ; @0x48a
	.cfa_restore	{%r16}          ; @0x48e
	ld_s	%r15,[%sp,8]            ; @0x48e
	.cfa_restore	{%r15}          ; @0x490
	ld_s	%r14,[%sp,4]            ; @0x490
	.cfa_restore	{%r14}          ; @0x492
	ld.ab	%r13,[%sp,40]           ; @0x492
	.cfa_restore	{%r13}          ; @0x496
	.cfa_pop	40              ; @0x496
	j_s	[%blink]                ; @0x496
	.cfa_ef
.Lfunc_end1:                            ; @0x498

	.section	.text.apl_set_sm_reg,"ax",@progbits
	.align	4
apl_set_sm_reg:                         ; @apl_set_sm_reg
                                        ; @0x0
	.cfa_bf	apl_set_sm_reg
;  BB#0:                                ; %entry
	.extInstruction write_reg,0x07,0x02,SUFFIX_COND|SUFFIX_FLAG,SYNTAX_3OP
	write_reg	0,%r0,32        ; @0x0
	j_s	[%blink]                ; @0x4
	.cfa_ef
.Lfunc_end2:                            ; @0x6

	.section	.text.populate_task,"ax",@progbits
	.align	4
populate_task:                          ; @populate_task
                                        ; @0x0
	.cfa_bf	populate_task
;  BB#0:                                ; %entry
	st.aw	%r13,[%sp,-52]          ; @0x0
	.cfa_push	52              ; @0x4
	.cfa_reg_offset	{%r13}, 0       ; @0x4
	st_s	%r14,[%sp,4]            ; @0x4
	.cfa_reg_offset	{%r14}, 4       ; @0x6
	st_s	%r15,[%sp,8]            ; @0x6
	.cfa_reg_offset	{%r15}, 8       ; @0x8
	st	%r16,[%sp,12]           ; @0x8
	.cfa_reg_offset	{%r16}, 12      ; @0xc
	st	%r17,[%sp,16]           ; @0xc
	.cfa_reg_offset	{%r17}, 16      ; @0x10
	st	%r18,[%sp,20]           ; @0x10
	.cfa_reg_offset	{%r18}, 20      ; @0x14
	st	%r19,[%sp,24]           ; @0x14
	.cfa_reg_offset	{%r19}, 24      ; @0x18
	st	%r20,[%sp,28]           ; @0x18
	.cfa_reg_offset	{%r20}, 28      ; @0x1c
	st	%r21,[%sp,32]           ; @0x1c
	.cfa_reg_offset	{%r21}, 32      ; @0x20
	st	%r22,[%sp,36]           ; @0x20
	.cfa_reg_offset	{%r22}, 36      ; @0x24
	st	%r23,[%sp,40]           ; @0x24
	.cfa_reg_offset	{%r23}, 40      ; @0x28
	st	%r24,[%sp,44]           ; @0x28
	.cfa_reg_offset	{%r24}, 44      ; @0x2c
	st	%blink,[%sp,48]         ; @0x2c
	.cfa_reg_offset	{%blink}, 48    ; @0x30
	mov_s	%r14,%r0                ; @0x30
	mov_s	%r18,.L.str.16          ; @0x32
	add2	%r19,%r18,(.L.str-.L.str.16)/4 ; @0x38
	add	%r16,%r18,.L__func__.populate_task-.L.str.16 ; @0x3c
	add	%r17,%r18,.L.str.1-.L.str.16 ; @0x40
	add2	%r5,%r18,(.L.str.2-.L.str.16)/4 ; @0x44
	mov_s	%r0,%r19                ; @0x48
	mov_s	%r1,39                  ; @0x4a
	mov_s	%r2,%r16                ; @0x4c
	mov_s	%r3,3                   ; @0x4e
	mov_s	%r4,%r17                ; @0x50
	bl	_gsi_log                ; @0x52
	bl	gvml_init_once          ; @0x56
	ldb_s	%r0,[%r14,1]            ; @0x5a
	asl_s	%r0,%r0,8               ; @0x5c
	ldb_s	%r1,[%r14,0]            ; @0x5e
	or_s	%r0,%r0,%r1             ; @0x60
	ldb_s	%r1,[%r14,3]            ; @0x62
	asl_s	%r1,%r1,8               ; @0x64
	ldb_s	%r2,[%r14,2]            ; @0x66
	or_s	%r1,%r1,%r2             ; @0x68
	asl_s	%r1,%r1,16              ; @0x6a
	or_s	%r0,%r0,%r1             ; @0x6c
	ldb_s	%r1,[%r14,5]            ; @0x6e
	asl_s	%r1,%r1,8               ; @0x70
	ldb_s	%r2,[%r14,4]            ; @0x72
	or_s	%r1,%r1,%r2             ; @0x74
	ldb_s	%r2,[%r14,7]            ; @0x76
	asl_s	%r2,%r2,8               ; @0x78
	ldb_s	%r3,[%r14,6]            ; @0x7a
	or_s	%r2,%r2,%r3             ; @0x7c
	asl_s	%r2,%r2,16              ; @0x7e
	or_s	%r1,%r1,%r2             ; @0x80
	bl	gal_mem_handle_to_apu_ptr ; @0x82
	mov_s	%r20,%r0                ; @0x86
	ldb_s	%r0,[%r14,17]           ; @0x88
	asl_s	%r0,%r0,8               ; @0x8a
	ldb_s	%r1,[%r14,16]           ; @0x8c
	or_s	%r0,%r0,%r1             ; @0x8e
	ldb_s	%r1,[%r14,19]           ; @0x90
	asl_s	%r1,%r1,8               ; @0x92
	ldb_s	%r2,[%r14,18]           ; @0x94
	or_s	%r1,%r1,%r2             ; @0x96
	asl_s	%r1,%r1,16              ; @0x98
	or	%r6,%r1,%r0             ; @0x9a
	ldb	%r21,[%r14,22]          ; @0x9e
	ldb_s	%r15,[%r14,23]          ; @0xa2
	ldb_s	%r13,[%r14,20]          ; @0xa4
	ldb_s	%r14,[%r14,21]          ; @0xa6
	add	%r5,%r18,.L.str.3-.L.str.16 ; @0xa8
	mov_s	%r0,%r19                ; @0xac
	mov_s	%r1,53                  ; @0xae
	mov_s	%r2,%r16                ; @0xb0
	mov_s	%r3,3                   ; @0xb2
	mov_s	%r4,%r17                ; @0xb4
	bl	_gsi_log                ; @0xb6
	mov_s	%r22,0xf0000230         ; @0xba
	st	0,[%r22,0]              ; @0xc0
	asl_s	%r14,%r14,8             ; @0xc4
	or_s	%r13,%r13,%r14          ; @0xc6
	asl_s	%r15,%r15,8             ; @0xc8
	or	%r15,%r15,%r21          ; @0xca
	asl_s	%r15,%r15,16            ; @0xce
	or	%r19,%r15,%r13          ; @0xd0
	test_barrier	%r0,4           ; @0xd4
	brne_s	%r0,0,.LBB3_17          ; @0xd8
;  BB#1:                                ; %while.body.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0xda
	brne_s	%r0,0,.LBB3_17          ; @0xde
;  BB#2:                                ; %while.body.lr.ph14.i.i.i
	test_barrier	%r0,4           ; @0xe0
	brne_s	%r0,0,.LBB3_17          ; @0xe4
;  BB#3:                                ; %while.body.i.preheader.i.i
	test_barrier	%r0,4           ; @0xe6
	brne_s	%r0,0,.LBB3_17          ; @0xea
;  BB#4:                                ; %while.body.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0xec
	brne_s	%r0,0,.LBB3_17          ; @0xf0
;  BB#5:                                ; %while.cond.i.preheader.i.i
	test_barrier	%r0,4           ; @0xf2
	brne_s	%r0,0,.LBB3_17          ; @0xf6
;  BB#6:                                ; %while.body.i.lr.ph31.i.i
	test_barrier	%r0,4           ; @0xf8
	brne_s	%r0,0,.LBB3_17          ; @0xfc
;  BB#7:                                ; %while.body.i.lr.ph36.i.i
	test_barrier	%r0,4           ; @0xfe
	brne_s	%r0,0,.LBB3_17          ; @0x102
;  BB#8:                                ; %while.body.i.i.preheader.i
	test_barrier	%r0,4           ; @0x104
	brne_s	%r0,0,.LBB3_17          ; @0x108
;  BB#9:                                ; %while.body.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x10a
	brne_s	%r0,0,.LBB3_17          ; @0x10e
;  BB#10:                               ; %while.cond.i.i.i.preheader
	test_barrier	%r0,4           ; @0x110
	brne_s	%r0,0,.LBB3_17          ; @0x114
;  BB#11:                               ; %while.body.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x116
	brne_s	%r0,0,.LBB3_17          ; @0x11a
;  BB#12:                               ; %while.body.i.i.i.lr.ph106
	test_barrier	%r0,4           ; @0x11c
	brne_s	%r0,0,.LBB3_17          ; @0x120
;  BB#13:                               ; %while.body.i.i.i.preheader
	mov_s	%r2,11                  ; @0x122
	mov_s	%r0,0x186a1             ; @0x124
.LBB3_15:                               ; %while.body.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x12a
	add_s	%r2,%r2,1               ; @0x12a
	cmp_s	%r2,%r0                 ; @0x12c
	bcc	.LBB3_16                ; @0x12e
;  BB#14:                               ; %while.cond.i.i.i
                                        ;   in Loop: Header=BB3_15 Depth=1
	test_barrier	%r1,4           ; @0x132
	breq_s	%r1,0,.LBB3_15          ; @0x136
.LBB3_17:                               ; %while.cond10.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x138
	mov_s	%r21,0xf0000300         ; @0x138
	ld.di	%r0,[%r21,0]            ; @0x13e
	brlt	%r0,0,.LBB3_17          ; @0x142
;  BB#18:                               ; %my_dma_l4_to_l2_16k.exit.i
	mov_s	%r0,0xf0000308          ; @0x146
	st.di	0,[%r0,0]               ; @0x14c
	st.di	%r20,[%r0,8]            ; @0x150
	mov_s	%r1,0xff3f00c0          ; @0x154
	st.di	%r1,[%r21,0]            ; @0x15a
	add	%r13,%r20,32768         ; @0x15e
	test_barrier	%r2,5           ; @0x166
	brne_s	%r2,0,.LBB3_35          ; @0x16a
;  BB#19:                               ; %while.body21.lr.ph.i.i.i
	test_barrier	%r2,5           ; @0x16c
	brne_s	%r2,0,.LBB3_35          ; @0x170
;  BB#20:                               ; %while.body21.lr.ph27.i.i.i
	test_barrier	%r2,5           ; @0x172
	brne_s	%r2,0,.LBB3_35          ; @0x176
;  BB#21:                               ; %while.body21.i.preheader.i.i
	test_barrier	%r2,5           ; @0x178
	brne_s	%r2,0,.LBB3_35          ; @0x17c
;  BB#22:                               ; %while.body21.i.lr.ph.i.i
	test_barrier	%r2,5           ; @0x17e
	brne_s	%r2,0,.LBB3_35          ; @0x182
;  BB#23:                               ; %while.cond17.i.preheader.i.i
	test_barrier	%r2,5           ; @0x184
	brne_s	%r2,0,.LBB3_35          ; @0x188
;  BB#24:                               ; %while.body21.i.lr.ph45.i.i
	test_barrier	%r2,5           ; @0x18a
	brne_s	%r2,0,.LBB3_35          ; @0x18e
;  BB#25:                               ; %while.body21.i.lr.ph50.i.i
	test_barrier	%r2,5           ; @0x190
	brne_s	%r2,0,.LBB3_35          ; @0x194
;  BB#26:                               ; %while.body21.i.i.preheader.i
	test_barrier	%r2,5           ; @0x196
	brne_s	%r2,0,.LBB3_35          ; @0x19a
;  BB#27:                               ; %while.body21.i.i.lr.ph.i
	test_barrier	%r2,5           ; @0x19c
	brne_s	%r2,0,.LBB3_35          ; @0x1a0
;  BB#28:                               ; %while.cond17.i.i.i.preheader
	test_barrier	%r2,5           ; @0x1a2
	brne_s	%r2,0,.LBB3_35          ; @0x1a6
;  BB#29:                               ; %while.body21.i.i.i.lr.ph
	test_barrier	%r2,5           ; @0x1a8
	brne_s	%r2,0,.LBB3_35          ; @0x1ac
;  BB#30:                               ; %while.body21.i.i.i.lr.ph93
	test_barrier	%r2,5           ; @0x1ae
	brne_s	%r2,0,.LBB3_35          ; @0x1b2
;  BB#31:                               ; %while.body21.i.i.i.preheader
	mov_s	%r12,11                 ; @0x1b4
	mov_s	%r2,0x186a1             ; @0x1b6
.LBB3_33:                               ; %while.body21.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1bc
	add_s	%r12,%r12,1             ; @0x1bc
	cmp_s	%r12,%r2                ; @0x1be
	bcc	.LBB3_34                ; @0x1c0
;  BB#32:                               ; %while.cond17.i.i.i
                                        ;   in Loop: Header=BB3_33 Depth=1
	test_barrier	%r3,5           ; @0x1c4
	breq_s	%r3,0,.LBB3_33          ; @0x1c8
.LBB3_35:                               ; %while.cond28.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1ca
	mov_s	%r20,0xf0000380         ; @0x1ca
	ld.di	%r2,[%r20,0]            ; @0x1d0
	brlt	%r2,0,.LBB3_35          ; @0x1d4
;  BB#36:                               ; %my_dma_l4_to_l2_16k.exit2.i
	mov_s	%r2,0xf0000388          ; @0x1d8
	st.di	0,[%r2,0]               ; @0x1de
	st.di	%r13,[%r2,8]            ; @0x1e2
	st.di	%r1,[%r20,0]            ; @0x1e6
.LBB3_37:                               ; %while.cond.i.i3.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1ea
	ld.di	%r1,[%r21,0]            ; @0x1ea
	brlt	%r1,0,.LBB3_37          ; @0x1ee
;  BB#38:                               ; %while.end.i.i.i
	st.di	0,[%r0,0]               ; @0x1f2
	ror	%r0,1                   ; @0x1f6
	st.di	%r0,[%r21,0]            ; @0x1fa
.LBB3_39:                               ; %while.cond1.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1fe
	ld.di	%r1,[%r21,0]            ; @0x1fe
	brlt	%r1,0,.LBB3_39          ; @0x202
.LBB3_40:                               ; %while.cond.i2.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x206
	ld.di	%r1,[%r20,0]            ; @0x206
	brlt	%r1,0,.LBB3_40          ; @0x20a
;  BB#41:                               ; %while.end.i3.i.i
	mov_s	%r13,0                  ; @0x20e
	st.di	0,[%r2,0]               ; @0x210
	st.di	%r0,[%r20,0]            ; @0x214
.LBB3_42:                               ; %while.cond1.i5.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x218
	ld.di	%r0,[%r20,0]            ; @0x218
	brlt	%r0,0,.LBB3_42          ; @0x21c
;  BB#43:                               ; %for.body.preheader
	mov_s	%r23,0x186a1            ; @0x220
	mov_s	%r24,0x82000000         ; @0x226
.LBB3_44:                               ; %for.body
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_53 Depth 2
                                        ;     Child Loop BB3_66 Depth 2
                                        ;     Child Loop BB3_68 Depth 2
                                        ;     Child Loop BB3_70 Depth 2
                                        ;     Child Loop BB3_80 Depth 2
                                        ;     Child Loop BB3_99 Depth 2
                                        ;     Child Loop BB3_88 Depth 2
                                        ; @0x22c
	test_barrier	%r0,4           ; @0x22c
	brne_s	%r0,0,.LBB3_55          ; @0x230
;  BB#45:                               ; %while.body.lr.ph.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x232
	brne_s	%r0,0,.LBB3_55          ; @0x236
;  BB#46:                               ; %while.body.lr.ph90.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x238
	brne_s	%r0,0,.LBB3_55          ; @0x23c
;  BB#47:                               ; %while.body.i.preheader.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x23e
	brne_s	%r0,0,.LBB3_55          ; @0x242
;  BB#48:                               ; %while.body.i.lr.ph.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x244
	brne_s	%r0,0,.LBB3_55          ; @0x248
;  BB#49:                               ; %while.cond.i.i.preheader
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x24a
	brne_s	%r0,0,.LBB3_55          ; @0x24e
;  BB#50:                               ; %while.body.i.i.lr.ph
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x250
	brne_s	%r0,0,.LBB3_55          ; @0x254
;  BB#51:                               ; %while.body.i.i.lr.ph40
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x256
	brne_s	%r0,0,.LBB3_55          ; @0x25a
;  BB#52:                               ; %while.body.i.i.preheader
                                        ;   in Loop: Header=BB3_44 Depth=1
	mov_s	%r1,6                   ; @0x25c
.LBB3_53:                               ; %while.body.i.i
                                        ;   Parent Loop BB3_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x25e
	add_s	%r1,%r1,1               ; @0x25e
	cmp_s	%r1,%r23                ; @0x260
	bcc	.LBB3_64                ; @0x262
;  BB#54:                               ; %while.cond.i.i
                                        ;   in Loop: Header=BB3_53 Depth=2
	test_barrier	%r0,4           ; @0x266
	breq_s	%r0,0,.LBB3_53          ; @0x26a
.LBB3_55:                               ; %while.cond1.preheader.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
                                        ; @0x26c
	test_barrier	%r0,5           ; @0x26c
	brne_s	%r0,0,.LBB3_68          ; @0x270
;  BB#56:                               ; %while.body5.lr.ph.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x272
	brne_s	%r0,0,.LBB3_68          ; @0x276
;  BB#57:                               ; %while.body5.lr.ph77.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x278
	brne_s	%r0,0,.LBB3_68          ; @0x27c
;  BB#58:                               ; %while.body5.i.preheader.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x27e
	brne_s	%r0,0,.LBB3_68          ; @0x282
;  BB#59:                               ; %while.body5.i.lr.ph.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x284
	brne_s	%r0,0,.LBB3_68          ; @0x288
;  BB#60:                               ; %while.cond1.i.i.preheader
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x28a
	brne_s	%r0,0,.LBB3_68          ; @0x28e
;  BB#61:                               ; %while.body5.i.i.lr.ph
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x290
	brne_s	%r0,0,.LBB3_68          ; @0x294
;  BB#62:                               ; %while.body5.i.i.lr.ph53
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x296
	brne_s	%r0,0,.LBB3_68          ; @0x29a
;  BB#63:                               ; %while.body5.i.i.preheader
                                        ;   in Loop: Header=BB3_44 Depth=1
	mov_s	%r1,6                   ; @0x29c
.LBB3_66:                               ; %while.body5.i.i
                                        ;   Parent Loop BB3_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x29e
	add_s	%r1,%r1,1               ; @0x29e
	cmp_s	%r1,%r23                ; @0x2a0
	bcc	.LBB3_67                ; @0x2a2
;  BB#65:                               ; %while.cond1.i.i
                                        ;   in Loop: Header=BB3_66 Depth=2
	test_barrier	%r0,5           ; @0x2a6
	breq_s	%r0,0,.LBB3_66          ; @0x2aa
.LBB3_68:                               ; %while.cond11.i.i
                                        ;   Parent Loop BB3_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x2ac
	ld.di	%r0,[%r21,0]            ; @0x2ac
	brlt	%r0,0,.LBB3_68          ; @0x2b0
;  BB#69:                               ; %while.end15.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	st.di	%r24,[%r21,0]           ; @0x2b4
.LBB3_70:                               ; %while.cond16.i.i
                                        ;   Parent Loop BB3_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x2b8
	ld.di	%r0,[%r20,0]            ; @0x2b8
	brlt	%r0,0,.LBB3_70          ; @0x2bc
;  BB#71:                               ; %while.end21.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	st.di	%r24,[%r20,0]           ; @0x2c0
	test_barrier	%r0,4           ; @0x2c4
	breq_s	%r0,0,.LBB3_82          ; @0x2c8
;  BB#72:                               ; %while.body25.lr.ph.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x2ca
	breq_s	%r0,0,.LBB3_82          ; @0x2ce
;  BB#73:                               ; %while.body25.lr.ph64.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x2d0
	breq_s	%r0,0,.LBB3_82          ; @0x2d4
;  BB#74:                               ; %while.body25.i.preheader.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x2d6
	breq_s	%r0,0,.LBB3_82          ; @0x2da
;  BB#75:                               ; %while.body25.i.lr.ph.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x2dc
	breq_s	%r0,0,.LBB3_82          ; @0x2e0
;  BB#76:                               ; %while.cond22.i.i.preheader
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x2e2
	breq_s	%r0,0,.LBB3_82          ; @0x2e6
;  BB#77:                               ; %while.body25.i.i.lr.ph
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x2e8
	breq_s	%r0,0,.LBB3_82          ; @0x2ec
;  BB#78:                               ; %while.body25.i.i.lr.ph66
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,4           ; @0x2ee
	breq_s	%r0,0,.LBB3_82          ; @0x2f2
;  BB#79:                               ; %while.body25.i.i.preheader
                                        ;   in Loop: Header=BB3_44 Depth=1
	mov_s	%r1,6                   ; @0x2f4
.LBB3_80:                               ; %while.body25.i.i
                                        ;   Parent Loop BB3_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x2f6
	add_s	%r1,%r1,1               ; @0x2f6
	brhs	%r1,%r23,.LBB3_97       ; @0x2f8
;  BB#81:                               ; %while.cond22.i.i
                                        ;   in Loop: Header=BB3_80 Depth=2
	test_barrier	%r0,4           ; @0x2fc
	brne_s	%r0,0,.LBB3_80          ; @0x300
.LBB3_82:                               ; %while.cond31.preheader.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
                                        ; @0x302
	test_barrier	%r0,5           ; @0x302
	breq_s	%r0,0,.LBB3_87          ; @0x306
;  BB#83:                               ; %while.body34.lr.ph.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x308
	breq_s	%r0,0,.LBB3_87          ; @0x30c
;  BB#84:                               ; %while.body34.lr.ph51.i.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x30e
	breq_s	%r0,0,.LBB3_87          ; @0x312
;  BB#85:                               ; %while.body34.i.preheader.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x314
	breq_s	%r0,0,.LBB3_87          ; @0x318
;  BB#86:                               ; %while.body34.i.lr.ph.i
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x31a
	breq_s	%r0,0,.LBB3_87          ; @0x31e
;  BB#93:                               ; %while.cond31.i.i.preheader
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x320
	breq_s	%r0,0,.LBB3_87          ; @0x324
;  BB#94:                               ; %while.body34.i.i.lr.ph
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x326
	breq_s	%r0,0,.LBB3_87          ; @0x32a
;  BB#95:                               ; %while.body34.i.i.lr.ph79
                                        ;   in Loop: Header=BB3_44 Depth=1
	test_barrier	%r0,5           ; @0x32c
	breq_s	%r0,0,.LBB3_87          ; @0x330
;  BB#96:                               ; %while.body34.i.i.preheader
                                        ;   in Loop: Header=BB3_44 Depth=1
	mov_s	%r1,6                   ; @0x332
.LBB3_99:                               ; %while.body34.i.i
                                        ;   Parent Loop BB3_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x334
	add_s	%r1,%r1,1               ; @0x334
	brhs	%r1,%r23,.LBB3_100      ; @0x336
;  BB#98:                               ; %while.cond31.i.i
                                        ;   in Loop: Header=BB3_99 Depth=2
	test_barrier	%r0,5           ; @0x33a
	brne_s	%r0,0,.LBB3_99          ; @0x33e
.LBB3_87:                               ; %for.body.i.preheader
                                        ;   in Loop: Header=BB3_44 Depth=1
                                        ; @0x340
	mov_s	%r14,0                  ; @0x340
	mov_s	%r15,0                  ; @0x342
.LBB3_88:                               ; %for.body.i
                                        ;   Parent Loop BB3_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x344
	seteq	%r2,%r15,3              ; @0x344
	mov_s	%r0,%r13                ; @0x348
	mov_s	%r1,%r15                ; @0x34a
	mov_s	%r3,%r14                ; @0x34c
	bl	gvml_load_vmr_16        ; @0x34e
	add_s	%r14,%r14,2             ; @0x352
	add_s	%r15,%r15,1             ; @0x354
	brlo	%r15,4,.LBB3_88         ; @0x356
;  BB#89:                               ; %my_dma_l2_to_l1_32k.exit
                                        ;   in Loop: Header=BB3_44 Depth=1
	add_s	%r13,%r13,1             ; @0x35a
	cmp_s	%r13,48                 ; @0x35c
	bcs	.LBB3_44                ; @0x35e
;  BB#90:                               ; %for.body5.preheader
	mov_s	%r14,0                  ; @0x362
.LBB3_91:                               ; %for.body5
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x364
	mov_s	%r0,%r14                ; @0x364
	mov_s	%r1,%r13                ; @0x366
	bl	gvml_load_16            ; @0x368
	bl	gvml_set_m              ; @0x36c
	mov_s	%r0,%r14                ; @0x370
	mov_s	%r1,%r14                ; @0x372
	bl	gvml_inc_u16_mrk        ; @0x374
	add_s	%r14,%r14,1             ; @0x378
	brlo	%r14,15,.LBB3_91        ; @0x37a
;  BB#92:                               ; %for.end8
	sub	%r6,%r19,1              ; @0x37e
	add2	%r0,%r18,(.L.str-.L.str.16)/4 ; @0x382
	mov_s	%r1,85                  ; @0x386
	mov_s	%r2,%r16                ; @0x388
	mov_s	%r3,3                   ; @0x38a
	mov_s	%r4,%r17                ; @0x38c
	mov_s	%r5,.L.str.4            ; @0x38e
	bl	_gsi_log                ; @0x394
	ld_s	%r0,[%r22,0]            ; @0x398
	.cfa_remember_state             ; @0x39a
	ld	%blink,[%sp,48]         ; @0x39a
	.cfa_restore	{%blink}        ; @0x39e
	ld	%r24,[%sp,44]           ; @0x39e
	.cfa_restore	{%r24}          ; @0x3a2
	ld	%r23,[%sp,40]           ; @0x3a2
	.cfa_restore	{%r23}          ; @0x3a6
	ld	%r22,[%sp,36]           ; @0x3a6
	.cfa_restore	{%r22}          ; @0x3aa
	ld	%r21,[%sp,32]           ; @0x3aa
	.cfa_restore	{%r21}          ; @0x3ae
	ld	%r20,[%sp,28]           ; @0x3ae
	.cfa_restore	{%r20}          ; @0x3b2
	ld	%r19,[%sp,24]           ; @0x3b2
	.cfa_restore	{%r19}          ; @0x3b6
	ld	%r18,[%sp,20]           ; @0x3b6
	.cfa_restore	{%r18}          ; @0x3ba
	ld	%r17,[%sp,16]           ; @0x3ba
	.cfa_restore	{%r17}          ; @0x3be
	ld	%r16,[%sp,12]           ; @0x3be
	.cfa_restore	{%r16}          ; @0x3c2
	ld_s	%r15,[%sp,8]            ; @0x3c2
	.cfa_restore	{%r15}          ; @0x3c4
	ld_s	%r14,[%sp,4]            ; @0x3c4
	.cfa_restore	{%r14}          ; @0x3c6
	ld.ab	%r13,[%sp,52]           ; @0x3c6
	.cfa_restore	{%r13}          ; @0x3ca
	.cfa_pop	52              ; @0x3ca
	j_s	[%blink]                ; @0x3ca
	.cfa_restore_state              ; @0x3cc
.LBB3_97:                               ; %if.then28.i.i
                                        ; @0x3cc
	mov_s	%r0,.L.str.10           ; @0x3cc
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.16)/8 ; @0x3d2
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x3d6
	add	%r4,%r0,.L.str.19-.L.str.10 ; @0x3da
	mov_s	%r1,89                  ; @0x3de
	bl	_gsi_log_fatal          ; @0x3e0
.LBB3_100:                              ; %if.then37.i.i
                                        ; @0x3e4
	mov_s	%r0,.L.str.10           ; @0x3e4
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.16)/8 ; @0x3ea
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x3ee
	add1	%r4,%r0,(.L.str.20-.L.str.10)/2 ; @0x3f2
	mov_s	%r1,94                  ; @0x3f6
	bl	_gsi_log_fatal          ; @0x3f8
.LBB3_64:                               ; %if.then.i.i
                                        ; @0x3fc
	mov_s	%r0,.L.str.10           ; @0x3fc
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.16)/8 ; @0x402
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x406
	add3	%r4,%r0,(.L.str.17-.L.str.10)/8 ; @0x40a
	mov_s	%r1,67                  ; @0x40e
	bl	_gsi_log_fatal          ; @0x410
.LBB3_67:                               ; %if.then8.i.i
                                        ; @0x414
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.16)/8 ; @0x414
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x418
	mov_s	%r0,.L.str.10           ; @0x41c
	mov_s	%r1,72                  ; @0x422
	mov_s	%r4,.L.str.18           ; @0x424
	bl	_gsi_log_fatal          ; @0x42a
.LBB3_16:                               ; %if.then9.i.i.i
                                        ; @0x42e
	mov_s	%r0,.L.str.10           ; @0x42e
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.16)/8 ; @0x434
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x438
	add2	%r5,%r0,(.L.str.14-.L.str.10)/4 ; @0x43c
	mov	%r1,328                 ; @0x440
	mov_s	%r4,%r18                ; @0x444
	bl	_gsi_log_fatal          ; @0x446
.LBB3_34:                               ; %if.then25.i.i.i
                                        ; @0x44a
	mov_s	%r0,.L.str.10           ; @0x44a
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.16)/8 ; @0x450
	add	%r3,%r18,.L.str.15-.L.str.16 ; @0x454
	add2	%r5,%r0,(.L.str.14-.L.str.10)/4 ; @0x458
	mov	%r1,337                 ; @0x45c
	mov_s	%r4,%r18                ; @0x460
	bl	_gsi_log_fatal          ; @0x462
	.cfa_ef
.Lfunc_end3:                            ; @0x466

	.section	.text.gvml_set_m,"ax",@progbits
	.align	4
gvml_set_m:                             ; @gvml_set_m
                                        ; @0x0
	.cfa_bf	gvml_set_m
;  BB#0:                                ; %entry
	push_s	%blink                  ; @0x0
	.cfa_push	4               ; @0x2
	.cfa_reg_offset	{%blink}, 0     ; @0x2
	ld	%r0,[gvml_set_m_frag_ifr_addr] ; @0x2
	ld_s	%r0,[%r0,0]             ; @0xa
	bl	apl_set_sm_reg          ; @0xc
	.extInstruction md,0x07,0x00,SUFFIX_FLAG,SYNTAX_2OP
	md	0,%r0                   ; @0x10
	pop_s	%blink                  ; @0x14
	.cfa_restore	{%blink}        ; @0x16
	.cfa_pop	4               ; @0x16
	j_s	[%blink]                ; @0x16
	.cfa_ef
.Lfunc_end4:                            ; @0x18


