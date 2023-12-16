	.option	%reg
	.file	"dev_src/gsi_device_l1_static_test.c"
	.size	.L.str.15, 3
	.type	.L.str.15,@object
	.size	.L.str.1, 5
	.type	.L.str.1,@object
	.size	.L.str.11, 5
	.type	.L.str.11,@object
	.size	.L.str.14, 6
	.type	.L.str.14,@object
	.size	.L.str.3, 12
	.type	.L.str.3,@object
	.size	.L__func__.read_l1_task, 13
	.type	.L__func__.read_l1_task,@object
	.size	read_l1_task__name, 13
	.type	read_l1_task__name,@object
	.size	.L__func__.populate_task, 14
	.type	.L__func__.populate_task,@object
	.size	populate_task__name, 14
	.type	populate_task__name,@object
	.size	.L.str.6, 20
	.type	.L.str.6,@object
	.size	.L.str.10, 21
	.type	.L.str.10,@object
	.size	.L.str.5, 21
	.type	.L.str.5,@object
	.size	.L.str.7, 21
	.type	.L.str.7,@object
	.size	.L.str.2, 29
	.type	.L.str.2,@object
	.size	.L__func__.gal_fast_l2dma_l2_to_mem_start, 31
	.type	.L__func__.gal_fast_l2dma_l2_to_mem_start,@object
	.size	.L__func__.gal_fast_l2dma_mem_to_l2_start, 31
	.type	.L__func__.gal_fast_l2dma_mem_to_l2_start,@object
	.size	.L__func__.gal_fast_l2dma_l2_ready_rst_all, 32
	.type	.L__func__.gal_fast_l2dma_l2_ready_rst_all,@object
	.size	.L.str.8, 34
	.type	.L.str.8,@object
	.size	.L.str, 36
	.type	.L.str,@object
	.size	.L.str.4, 39
	.type	.L.str.4,@object
	.size	.L.str.9, 46
	.type	.L.str.9,@object
	.size	.L.str.18, 49
	.type	.L.str.18,@object
	.size	.L.str.19, 49
	.type	.L.str.19,@object
	.size	.L.str.12, 61
	.type	.L.str.12,@object
	.size	.L.str.13, 96
	.type	.L.str.13,@object
	.size	.L.str.20, 96
	.type	.L.str.20,@object
	.size	.L.str.16, 98
	.type	.L.str.16,@object
	.size	.L.str.17, 98
	.type	.L.str.17,@object
	.no_dead_strip	gal_include_init_task
	.no_dead_strip	populate_task
	.no_dead_strip	populate_task__name
	.no_dead_strip	read_l1_task
	.no_dead_strip	read_l1_task__name
	.type	gal_include_init_task,@function
	.size	gal_include_init_task, .Lfunc_end0-gal_include_init_task
	.type	populate_task,@function
	.size	populate_task, .Lfunc_end1-populate_task
	.type	read_l1_task,@function
	.size	read_l1_task, .Lfunc_end2-read_l1_task
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
.L.str.15:                              ; @0x0
	.asciz	"%s"
	.align	4
.L.str.1:                               ; @0x4
	.asciz	"INFO"
	.align	4
.L.str.11:                              ; @0xc
	.asciz	"(%s)"
	.align	4
.L.str.14:                              ; @0x14
	.asciz	"FATAL"
	.align	4
.L.str.3:                               ; @0x1c
	.asciz	"vr_size: %d"
	.align	4
.L__func__.read_l1_task:                ; @0x28
	.asciz	"read_l1_task"
	.align	4
.L__func__.populate_task:               ; @0x38
	.asciz	"populate_task"
	.align	4
.L.str.6:                               ; @0x48
	.asciz	"Got vr_to_check: %d"
	.align	4
.L.str.10:                              ; @0x5c
	.asciz	"Error: Assert failed"
	.align	4
.L.str.5:                               ; @0x74
	.asciz	"Running read_l1_task"
	.align	4
.L.str.7:                               ; @0x8c
	.asciz	"starting l1_to_l4..."
	.align	4
.L.str.2:                               ; @0xa4
	.asciz	"Running VM reg populate task"
	.align	4
.L__func__.gal_fast_l2dma_l2_to_mem_start: ; @0xc4
	.asciz	"gal_fast_l2dma_l2_to_mem_start"
	.align	4
.L__func__.gal_fast_l2dma_mem_to_l2_start: ; @0xe4
	.asciz	"gal_fast_l2dma_mem_to_l2_start"
	.align	4
.L__func__.gal_fast_l2dma_l2_ready_rst_all: ; @0x104
	.asciz	"gal_fast_l2dma_l2_ready_rst_all"
	.align	4
.L.str.8:                               ; @0x124
	.asciz	"Finished reading GMVL_VM_%d to L4"
	.align	4
.L.str:                                 ; @0x148
	.asciz	"dev_src/gsi_device_l1_static_test.c"
	.align	4
.L.str.4:                               ; @0x16c
	.asciz	"Populated GVML_VM_0 through GVML_VM_%d"
	.align	4
.L.str.9:                               ; @0x194
	.asciz	"/usr/include/gsi/archs36/gsi/gal-fast-funcs.h"
	.align	4
.L.str.18:                              ; @0x1c4
	.asciz	"COND_L2_READY A timed out (fail to rst l2_ready)"
	.align	4
.L.str.19:                              ; @0x1f8
	.asciz	"COND_L2_READY B timed out (fail to rst l2_ready)"
	.align	4
.L.str.12:                              ; @0x22c
	.asciz	"gal_fast_l2dma_is_txns_valid(num_transactions, transactions)"
	.align	4
.L.str.13:                              ; @0x26c
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.align	4
.L.str.20:                              ; @0x2cc
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_l2_to_mem_start)"
	.align	4
.L.str.16:                              ; @0x32c
	.asciz	"COND_L2_READY A timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.align	4
.L.str.17:                              ; @0x390
	.asciz	"COND_L2_READY B timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.section	GSI_task_ep_names,"a",@progbits
	.align	4
read_l1_task__name:                     ; @0x0
	.asciz	"read_l1_task"
	.align	4
populate_task__name:                    ; @0x10
	.asciz	"populate_task"
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

	.section	.text.populate_task,"ax",@progbits
	.align	4
populate_task:                          ; @populate_task
                                        ; @0x0
	.cfa_bf	populate_task
;  BB#0:                                ; %entry
	st.aw	%r13,[%sp,-44]          ; @0x0
	.cfa_push	44              ; @0x4
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
	st	%blink,[%sp,40]         ; @0x24
	.cfa_reg_offset	{%blink}, 40    ; @0x28
	mov_s	%r14,%r0                ; @0x28
	mov_s	%r18,.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x2a
	add1	%r20,%r18,(.L.str-.L__func__.gal_fast_l2dma_mem_to_l2_start)/2 ; @0x30
	sub2	%r19,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L__func__.populate_task)/4 ; @0x34
	sub2	%r17,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.1)/4 ; @0x38
	sub1	%r5,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.2)/2 ; @0x3c
	mov_s	%r0,%r20                ; @0x40
	mov_s	%r1,40                  ; @0x42
	mov_s	%r2,%r19                ; @0x44
	mov_s	%r3,3                   ; @0x46
	mov_s	%r4,%r17                ; @0x48
	bl	_gsi_log                ; @0x4a
	bl	gvml_init_once          ; @0x4e
	ldb_s	%r0,[%r14,1]            ; @0x52
	asl_s	%r0,%r0,8               ; @0x54
	ldb_s	%r1,[%r14,0]            ; @0x56
	or_s	%r0,%r0,%r1             ; @0x58
	ldb_s	%r1,[%r14,3]            ; @0x5a
	asl_s	%r1,%r1,8               ; @0x5c
	ldb_s	%r2,[%r14,2]            ; @0x5e
	or_s	%r1,%r1,%r2             ; @0x60
	asl_s	%r1,%r1,16              ; @0x62
	or_s	%r0,%r0,%r1             ; @0x64
	ldb_s	%r1,[%r14,5]            ; @0x66
	asl_s	%r1,%r1,8               ; @0x68
	ldb_s	%r2,[%r14,4]            ; @0x6a
	or_s	%r1,%r1,%r2             ; @0x6c
	ldb_s	%r2,[%r14,7]            ; @0x6e
	asl_s	%r2,%r2,8               ; @0x70
	ldb_s	%r3,[%r14,6]            ; @0x72
	or_s	%r2,%r2,%r3             ; @0x74
	asl_s	%r2,%r2,16              ; @0x76
	or_s	%r1,%r1,%r2             ; @0x78
	bl	gal_mem_handle_to_apu_ptr ; @0x7a
	mov_s	%r16,%r0                ; @0x7e
	ldb_s	%r0,[%r14,17]           ; @0x80
	asl_s	%r0,%r0,8               ; @0x82
	ldb_s	%r1,[%r14,16]           ; @0x84
	or_s	%r0,%r0,%r1             ; @0x86
	ldb_s	%r1,[%r14,19]           ; @0x88
	asl_s	%r1,%r1,8               ; @0x8a
	ldb_s	%r2,[%r14,18]           ; @0x8c
	or_s	%r1,%r1,%r2             ; @0x8e
	asl_s	%r1,%r1,16              ; @0x90
	or	%r6,%r1,%r0             ; @0x92
	ldb	%r21,[%r14,22]          ; @0x96
	ldb_s	%r15,[%r14,23]          ; @0x9a
	ldb_s	%r13,[%r14,20]          ; @0x9c
	ldb_s	%r14,[%r14,21]          ; @0x9e
	sub2	%r5,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.3)/4 ; @0xa0
	mov_s	%r0,%r20                ; @0xa4
	mov_s	%r1,54                  ; @0xa6
	mov_s	%r2,%r19                ; @0xa8
	mov_s	%r3,3                   ; @0xaa
	mov_s	%r4,%r17                ; @0xac
	bl	_gsi_log                ; @0xae
	mov_s	%r19,0xf0000230         ; @0xb2
	st	0,[%r19,0]              ; @0xb8
	asl_s	%r14,%r14,8             ; @0xbc
	or_s	%r13,%r13,%r14          ; @0xbe
	asl_s	%r15,%r15,8             ; @0xc0
	or	%r15,%r15,%r21          ; @0xc2
	asl_s	%r15,%r15,16            ; @0xc6
	or	%r17,%r15,%r13          ; @0xc8
	.extInstruction test_barrier,0x07,0x03,SUFFIX_FLAG,SYNTAX_2OP
	test_barrier	%r0,4           ; @0xcc
	brne_s	%r0,0,.LBB1_18          ; @0xd0
;  BB#1:                                ; %while.body.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0xd2
	brne_s	%r0,0,.LBB1_18          ; @0xd6
;  BB#2:                                ; %while.body.lr.ph14.i.i.i
	test_barrier	%r0,4           ; @0xd8
	brne_s	%r0,0,.LBB1_18          ; @0xdc
;  BB#3:                                ; %while.body.i.preheader.i.i
	test_barrier	%r0,4           ; @0xde
	brne_s	%r0,0,.LBB1_18          ; @0xe2
;  BB#4:                                ; %while.body.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0xe4
	brne_s	%r0,0,.LBB1_18          ; @0xe8
;  BB#5:                                ; %while.cond.i.preheader.i.i
	test_barrier	%r0,4           ; @0xea
	brne_s	%r0,0,.LBB1_18          ; @0xee
;  BB#6:                                ; %while.body.i.lr.ph31.i.i
	test_barrier	%r0,4           ; @0xf0
	brne_s	%r0,0,.LBB1_18          ; @0xf4
;  BB#7:                                ; %while.body.i.lr.ph36.i.i
	test_barrier	%r0,4           ; @0xf6
	brne_s	%r0,0,.LBB1_18          ; @0xfa
;  BB#8:                                ; %while.body.i.i.preheader.i
	test_barrier	%r0,4           ; @0xfc
	brne_s	%r0,0,.LBB1_18          ; @0x100
;  BB#9:                                ; %while.body.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x102
	brne_s	%r0,0,.LBB1_18          ; @0x106
;  BB#10:                               ; %while.cond.i.i.i.preheader
	test_barrier	%r0,4           ; @0x108
	brne_s	%r0,0,.LBB1_18          ; @0x10c
;  BB#11:                               ; %while.body.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x10e
	brne_s	%r0,0,.LBB1_18          ; @0x112
;  BB#12:                               ; %while.body.i.i.i.lr.ph86
	test_barrier	%r0,4           ; @0x114
	brne_s	%r0,0,.LBB1_18          ; @0x118
;  BB#13:                               ; %while.body.i.i.i.preheader
	mov_s	%r2,11                  ; @0x11a
	mov_s	%r0,0x186a1             ; @0x11c
.LBB1_15:                               ; %while.body.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x122
	add_s	%r2,%r2,1               ; @0x122
	cmp_s	%r2,%r0                 ; @0x124
	bcc	.LBB1_16                ; @0x126
;  BB#14:                               ; %while.cond.i.i.i
                                        ;   in Loop: Header=BB1_15 Depth=1
	test_barrier	%r1,4           ; @0x12a
	breq_s	%r1,0,.LBB1_15          ; @0x12e
.LBB1_18:                               ; %while.cond10.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x130
	mov_s	%r20,0xf0000300         ; @0x130
	ld.di	%r0,[%r20,0]            ; @0x136
	brlt	%r0,0,.LBB1_18          ; @0x13a
;  BB#19:                               ; %my_dma_l4_to_l2_16k.exit.i
	mov_s	%r0,0xf0000308          ; @0x13e
	st.di	0,[%r0,0]               ; @0x144
	st.di	%r16,[%r0,8]            ; @0x148
	mov_s	%r1,0xff3f00c0          ; @0x14c
	st.di	%r1,[%r20,0]            ; @0x152
	add	%r16,%r16,32768         ; @0x156
	test_barrier	%r2,5           ; @0x15e
	brne_s	%r2,0,.LBB1_36          ; @0x162
;  BB#20:                               ; %while.body21.lr.ph.i.i.i
	test_barrier	%r2,5           ; @0x164
	brne_s	%r2,0,.LBB1_36          ; @0x168
;  BB#21:                               ; %while.body21.lr.ph27.i.i.i
	test_barrier	%r2,5           ; @0x16a
	brne_s	%r2,0,.LBB1_36          ; @0x16e
;  BB#22:                               ; %while.body21.i.preheader.i.i
	test_barrier	%r2,5           ; @0x170
	brne_s	%r2,0,.LBB1_36          ; @0x174
;  BB#23:                               ; %while.body21.i.lr.ph.i.i
	test_barrier	%r2,5           ; @0x176
	brne_s	%r2,0,.LBB1_36          ; @0x17a
;  BB#24:                               ; %while.cond17.i.preheader.i.i
	test_barrier	%r2,5           ; @0x17c
	brne_s	%r2,0,.LBB1_36          ; @0x180
;  BB#25:                               ; %while.body21.i.lr.ph45.i.i
	test_barrier	%r2,5           ; @0x182
	brne_s	%r2,0,.LBB1_36          ; @0x186
;  BB#26:                               ; %while.body21.i.lr.ph50.i.i
	test_barrier	%r2,5           ; @0x188
	brne_s	%r2,0,.LBB1_36          ; @0x18c
;  BB#27:                               ; %while.body21.i.i.preheader.i
	test_barrier	%r2,5           ; @0x18e
	brne_s	%r2,0,.LBB1_36          ; @0x192
;  BB#28:                               ; %while.body21.i.i.lr.ph.i
	test_barrier	%r2,5           ; @0x194
	brne_s	%r2,0,.LBB1_36          ; @0x198
;  BB#29:                               ; %while.cond17.i.i.i.preheader
	test_barrier	%r2,5           ; @0x19a
	brne_s	%r2,0,.LBB1_36          ; @0x19e
;  BB#30:                               ; %while.body21.i.i.i.lr.ph
	test_barrier	%r2,5           ; @0x1a0
	brne_s	%r2,0,.LBB1_36          ; @0x1a4
;  BB#31:                               ; %while.body21.i.i.i.lr.ph73
	test_barrier	%r2,5           ; @0x1a6
	brne_s	%r2,0,.LBB1_36          ; @0x1aa
;  BB#32:                               ; %while.body21.i.i.i.preheader
	mov_s	%r12,11                 ; @0x1ac
	mov_s	%r2,0x186a1             ; @0x1ae
.LBB1_34:                               ; %while.body21.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1b4
	add_s	%r12,%r12,1             ; @0x1b4
	cmp_s	%r12,%r2                ; @0x1b6
	bcc	.LBB1_35                ; @0x1b8
;  BB#33:                               ; %while.cond17.i.i.i
                                        ;   in Loop: Header=BB1_34 Depth=1
	test_barrier	%r3,5           ; @0x1bc
	breq_s	%r3,0,.LBB1_34          ; @0x1c0
.LBB1_36:                               ; %while.cond28.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1c2
	mov_s	%r21,0xf0000380         ; @0x1c2
	ld.di	%r2,[%r21,0]            ; @0x1c8
	brlt	%r2,0,.LBB1_36          ; @0x1cc
;  BB#37:                               ; %my_dma_l4_to_l2_16k.exit2.i
	mov_s	%r2,0xf0000388          ; @0x1d0
	st.di	0,[%r2,0]               ; @0x1d6
	st.di	%r16,[%r2,8]            ; @0x1da
	st.di	%r1,[%r21,0]            ; @0x1de
.LBB1_38:                               ; %while.cond.i.i3.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1e2
	ld.di	%r1,[%r20,0]            ; @0x1e2
	brlt	%r1,0,.LBB1_38          ; @0x1e6
;  BB#39:                               ; %while.end.i.i.i
	st.di	0,[%r0,0]               ; @0x1ea
	ror	%r0,1                   ; @0x1ee
	st.di	%r0,[%r20,0]            ; @0x1f2
.LBB1_40:                               ; %while.cond1.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1f6
	ld.di	%r1,[%r20,0]            ; @0x1f6
	brlt	%r1,0,.LBB1_40          ; @0x1fa
.LBB1_41:                               ; %while.cond.i2.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1fe
	ld.di	%r1,[%r21,0]            ; @0x1fe
	brlt	%r1,0,.LBB1_41          ; @0x202
;  BB#42:                               ; %while.end.i3.i.i
	mov_s	%r13,0                  ; @0x206
	st.di	0,[%r2,0]               ; @0x208
	st.di	%r0,[%r21,0]            ; @0x20c
.LBB1_43:                               ; %while.cond1.i5.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x210
	ld.di	%r0,[%r21,0]            ; @0x210
	brlt	%r0,0,.LBB1_43          ; @0x214
;  BB#44:                               ; %for.body.preheader
	mov_s	%r16,0x186a1            ; @0x218
	mov_s	%r22,0x82000000         ; @0x21e
.LBB1_45:                               ; %for.body
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_54 Depth 2
                                        ;     Child Loop BB1_67 Depth 2
                                        ;     Child Loop BB1_69 Depth 2
                                        ;     Child Loop BB1_71 Depth 2
                                        ;     Child Loop BB1_81 Depth 2
                                        ;     Child Loop BB1_98 Depth 2
                                        ;     Child Loop BB1_89 Depth 2
                                        ; @0x224
	test_barrier	%r0,4           ; @0x224
	brne_s	%r0,0,.LBB1_56          ; @0x228
;  BB#46:                               ; %while.body.lr.ph.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x22a
	brne_s	%r0,0,.LBB1_56          ; @0x22e
;  BB#47:                               ; %while.body.lr.ph90.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x230
	brne_s	%r0,0,.LBB1_56          ; @0x234
;  BB#48:                               ; %while.body.i.preheader.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x236
	brne_s	%r0,0,.LBB1_56          ; @0x23a
;  BB#49:                               ; %while.body.i.lr.ph.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x23c
	brne_s	%r0,0,.LBB1_56          ; @0x240
;  BB#50:                               ; %while.cond.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x242
	brne_s	%r0,0,.LBB1_56          ; @0x246
;  BB#51:                               ; %while.body.i.i.lr.ph
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x248
	brne_s	%r0,0,.LBB1_56          ; @0x24c
;  BB#52:                               ; %while.body.i.i.lr.ph20
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x24e
	brne_s	%r0,0,.LBB1_56          ; @0x252
;  BB#53:                               ; %while.body.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	mov_s	%r1,6                   ; @0x254
.LBB1_54:                               ; %while.body.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x256
	add_s	%r1,%r1,1               ; @0x256
	cmp_s	%r1,%r16                ; @0x258
	bcc	.LBB1_65                ; @0x25a
;  BB#55:                               ; %while.cond.i.i
                                        ;   in Loop: Header=BB1_54 Depth=2
	test_barrier	%r0,4           ; @0x25e
	breq_s	%r0,0,.LBB1_54          ; @0x262
.LBB1_56:                               ; %while.cond1.preheader.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
                                        ; @0x264
	test_barrier	%r0,5           ; @0x264
	brne_s	%r0,0,.LBB1_69          ; @0x268
;  BB#57:                               ; %while.body5.lr.ph.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x26a
	brne_s	%r0,0,.LBB1_69          ; @0x26e
;  BB#58:                               ; %while.body5.lr.ph77.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x270
	brne_s	%r0,0,.LBB1_69          ; @0x274
;  BB#59:                               ; %while.body5.i.preheader.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x276
	brne_s	%r0,0,.LBB1_69          ; @0x27a
;  BB#60:                               ; %while.body5.i.lr.ph.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x27c
	brne_s	%r0,0,.LBB1_69          ; @0x280
;  BB#61:                               ; %while.cond1.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x282
	brne_s	%r0,0,.LBB1_69          ; @0x286
;  BB#62:                               ; %while.body5.i.i.lr.ph
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x288
	brne_s	%r0,0,.LBB1_69          ; @0x28c
;  BB#63:                               ; %while.body5.i.i.lr.ph33
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x28e
	brne_s	%r0,0,.LBB1_69          ; @0x292
;  BB#64:                               ; %while.body5.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	mov_s	%r1,6                   ; @0x294
.LBB1_67:                               ; %while.body5.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x296
	add_s	%r1,%r1,1               ; @0x296
	cmp_s	%r1,%r16                ; @0x298
	bcc	.LBB1_68                ; @0x29a
;  BB#66:                               ; %while.cond1.i.i
                                        ;   in Loop: Header=BB1_67 Depth=2
	test_barrier	%r0,5           ; @0x29e
	breq_s	%r0,0,.LBB1_67          ; @0x2a2
.LBB1_69:                               ; %while.cond11.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x2a4
	ld.di	%r0,[%r20,0]            ; @0x2a4
	brlt	%r0,0,.LBB1_69          ; @0x2a8
;  BB#70:                               ; %while.end15.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	st.di	%r22,[%r20,0]           ; @0x2ac
.LBB1_71:                               ; %while.cond16.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x2b0
	ld.di	%r0,[%r21,0]            ; @0x2b0
	brlt	%r0,0,.LBB1_71          ; @0x2b4
;  BB#72:                               ; %while.end21.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	st.di	%r22,[%r21,0]           ; @0x2b8
	test_barrier	%r0,4           ; @0x2bc
	breq_s	%r0,0,.LBB1_83          ; @0x2c0
;  BB#73:                               ; %while.body25.lr.ph.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2c2
	breq_s	%r0,0,.LBB1_83          ; @0x2c6
;  BB#74:                               ; %while.body25.lr.ph64.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2c8
	breq_s	%r0,0,.LBB1_83          ; @0x2cc
;  BB#75:                               ; %while.body25.i.preheader.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2ce
	breq_s	%r0,0,.LBB1_83          ; @0x2d2
;  BB#76:                               ; %while.body25.i.lr.ph.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2d4
	breq_s	%r0,0,.LBB1_83          ; @0x2d8
;  BB#77:                               ; %while.cond22.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2da
	breq_s	%r0,0,.LBB1_83          ; @0x2de
;  BB#78:                               ; %while.body25.i.i.lr.ph
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2e0
	breq_s	%r0,0,.LBB1_83          ; @0x2e4
;  BB#79:                               ; %while.body25.i.i.lr.ph46
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2e6
	breq_s	%r0,0,.LBB1_83          ; @0x2ea
;  BB#80:                               ; %while.body25.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	mov_s	%r1,6                   ; @0x2ec
.LBB1_81:                               ; %while.body25.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x2ee
	add_s	%r1,%r1,1               ; @0x2ee
	brhs	%r1,%r16,.LBB1_96       ; @0x2f0
;  BB#82:                               ; %while.cond22.i.i
                                        ;   in Loop: Header=BB1_81 Depth=2
	test_barrier	%r0,4           ; @0x2f4
	brne_s	%r0,0,.LBB1_81          ; @0x2f8
.LBB1_83:                               ; %while.cond31.preheader.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
                                        ; @0x2fa
	test_barrier	%r0,5           ; @0x2fa
	breq_s	%r0,0,.LBB1_88          ; @0x2fe
;  BB#84:                               ; %while.body34.lr.ph.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x300
	breq_s	%r0,0,.LBB1_88          ; @0x304
;  BB#85:                               ; %while.body34.lr.ph51.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x306
	breq_s	%r0,0,.LBB1_88          ; @0x30a
;  BB#86:                               ; %while.body34.i.preheader.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x30c
	breq_s	%r0,0,.LBB1_88          ; @0x310
;  BB#87:                               ; %while.body34.i.lr.ph.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x312
	breq_s	%r0,0,.LBB1_88          ; @0x316
;  BB#92:                               ; %while.cond31.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x318
	breq_s	%r0,0,.LBB1_88          ; @0x31c
;  BB#93:                               ; %while.body34.i.i.lr.ph
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x31e
	breq_s	%r0,0,.LBB1_88          ; @0x322
;  BB#94:                               ; %while.body34.i.i.lr.ph59
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x324
	breq_s	%r0,0,.LBB1_88          ; @0x328
;  BB#95:                               ; %while.body34.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	mov_s	%r1,6                   ; @0x32a
.LBB1_98:                               ; %while.body34.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x32c
	add_s	%r1,%r1,1               ; @0x32c
	brhs	%r1,%r16,.LBB1_99       ; @0x32e
;  BB#97:                               ; %while.cond31.i.i
                                        ;   in Loop: Header=BB1_98 Depth=2
	test_barrier	%r0,5           ; @0x332
	brne_s	%r0,0,.LBB1_98          ; @0x336
.LBB1_88:                               ; %for.body.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
                                        ; @0x338
	mov_s	%r14,0                  ; @0x338
	mov_s	%r15,0                  ; @0x33a
.LBB1_89:                               ; %for.body.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x33c
	seteq	%r2,%r15,3              ; @0x33c
	mov_s	%r0,%r13                ; @0x340
	mov_s	%r1,%r15                ; @0x342
	mov_s	%r3,%r14                ; @0x344
	bl	gvml_load_vmr_16        ; @0x346
	add_s	%r14,%r14,2             ; @0x34a
	add_s	%r15,%r15,1             ; @0x34c
	brlo	%r15,4,.LBB1_89         ; @0x34e
;  BB#90:                               ; %my_dma_l2_to_l1_32k.exit
                                        ;   in Loop: Header=BB1_45 Depth=1
	add_s	%r13,%r13,1             ; @0x352
	cmp_s	%r13,48                 ; @0x354
	bcs	.LBB1_45                ; @0x356
;  BB#91:                               ; %for.end
	sub	%r6,%r17,1              ; @0x35a
	add1	%r0,%r18,(.L.str-.L__func__.gal_fast_l2dma_mem_to_l2_start)/2 ; @0x35e
	sub2	%r2,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L__func__.populate_task)/4 ; @0x362
	sub2	%r4,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.1)/4 ; @0x366
	add2	%r5,%r18,(.L.str.4-.L__func__.gal_fast_l2dma_mem_to_l2_start)/4 ; @0x36a
	mov_s	%r1,82                  ; @0x36e
	mov_s	%r3,3                   ; @0x370
	bl	_gsi_log                ; @0x372
	ld_s	%r0,[%r19,0]            ; @0x376
	.cfa_remember_state             ; @0x378
	ld	%blink,[%sp,40]         ; @0x378
	.cfa_restore	{%blink}        ; @0x37c
	ld	%r22,[%sp,36]           ; @0x37c
	.cfa_restore	{%r22}          ; @0x380
	ld	%r21,[%sp,32]           ; @0x380
	.cfa_restore	{%r21}          ; @0x384
	ld	%r20,[%sp,28]           ; @0x384
	.cfa_restore	{%r20}          ; @0x388
	ld	%r19,[%sp,24]           ; @0x388
	.cfa_restore	{%r19}          ; @0x38c
	ld	%r18,[%sp,20]           ; @0x38c
	.cfa_restore	{%r18}          ; @0x390
	ld	%r17,[%sp,16]           ; @0x390
	.cfa_restore	{%r17}          ; @0x394
	ld	%r16,[%sp,12]           ; @0x394
	.cfa_restore	{%r16}          ; @0x398
	ld_s	%r15,[%sp,8]            ; @0x398
	.cfa_restore	{%r15}          ; @0x39a
	ld_s	%r14,[%sp,4]            ; @0x39a
	.cfa_restore	{%r14}          ; @0x39c
	ld.ab	%r13,[%sp,44]           ; @0x39c
	.cfa_restore	{%r13}          ; @0x3a0
	.cfa_pop	44              ; @0x3a0
	j_s	[%blink]                ; @0x3a0
	.cfa_restore_state              ; @0x3a2
.LBB1_96:                               ; %if.then28.i.i
                                        ; @0x3a2
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start)/4 ; @0x3a2
	add	%r2,%r18,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x3a6
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.14)/4 ; @0x3aa
	add2	%r4,%r18,(.L.str.18-.L__func__.gal_fast_l2dma_mem_to_l2_start)/4 ; @0x3ae
	mov_s	%r1,89                  ; @0x3b2
	bl	_gsi_log_fatal          ; @0x3b4
.LBB1_99:                               ; %if.then37.i.i
                                        ; @0x3b8
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start)/4 ; @0x3b8
	add	%r2,%r18,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x3bc
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.14)/4 ; @0x3c0
	mov_s	%r1,94                  ; @0x3c4
	mov_s	%r4,.L.str.19           ; @0x3c6
	bl	_gsi_log_fatal          ; @0x3cc
.LBB1_65:                               ; %if.then.i.i
                                        ; @0x3d0
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start)/4 ; @0x3d0
	add	%r2,%r18,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x3d4
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.14)/4 ; @0x3d8
	mov_s	%r1,67                  ; @0x3dc
	mov_s	%r4,.L.str.16           ; @0x3de
	bl	_gsi_log_fatal          ; @0x3e4
.LBB1_68:                               ; %if.then8.i.i
                                        ; @0x3e8
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start)/4 ; @0x3e8
	add	%r2,%r18,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x3ec
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.14)/4 ; @0x3f0
	mov_s	%r1,72                  ; @0x3f4
	mov_s	%r4,.L.str.17           ; @0x3f6
	bl	_gsi_log_fatal          ; @0x3fc
.LBB1_16:                               ; %if.then9.i.i.i
                                        ; @0x400
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start)/4 ; @0x400
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.14)/4 ; @0x404
	sub2	%r4,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.15)/4 ; @0x408
	mov	%r1,328                 ; @0x40c
	mov_s	%r2,%r18                ; @0x410
	mov_s	%r5,.L.str.13           ; @0x412
	bl	_gsi_log_fatal          ; @0x418
.LBB1_35:                               ; %if.then25.i.i.i
                                        ; @0x41c
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start)/4 ; @0x41c
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.14)/4 ; @0x420
	sub2	%r4,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.15)/4 ; @0x424
	mov	%r1,337                 ; @0x428
	mov_s	%r2,%r18                ; @0x42c
	mov_s	%r5,.L.str.13           ; @0x42e
	bl	_gsi_log_fatal          ; @0x434
	.cfa_ef
.Lfunc_end1:                            ; @0x438

	.section	.text.read_l1_task,"ax",@progbits
	.align	4
read_l1_task:                           ; @read_l1_task
                                        ; @0x0
	.cfa_bf	read_l1_task
;  BB#0:                                ; %entry
	st.aw	%r13,[%sp,-32]          ; @0x0
	.cfa_push	32              ; @0x4
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
	st	%blink,[%sp,28]         ; @0x18
	.cfa_reg_offset	{%blink}, 28    ; @0x1c
	mov_s	%r14,%r0                ; @0x1c
	mov_s	%r18,.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x1e
	add2	%r15,%r18,(.L.str-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x24
	sub2	%r13,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L__func__.read_l1_task)/4 ; @0x28
	sub2	%r17,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.1)/4 ; @0x2c
	sub1	%r5,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.5)/2 ; @0x30
	mov_s	%r0,%r15                ; @0x34
	mov_s	%r1,97                  ; @0x36
	mov_s	%r2,%r13                ; @0x38
	mov_s	%r3,3                   ; @0x3a
	mov_s	%r4,%r17                ; @0x3c
	bl	_gsi_log                ; @0x3e
	bl	gvml_init_once          ; @0x42
	ldb_s	%r0,[%r14,29]           ; @0x46
	asl_s	%r0,%r0,8               ; @0x48
	ldb_s	%r1,[%r14,28]           ; @0x4a
	or_s	%r0,%r0,%r1             ; @0x4c
	ldb_s	%r1,[%r14,31]           ; @0x4e
	asl_s	%r1,%r1,8               ; @0x50
	ldb_s	%r2,[%r14,30]           ; @0x52
	or_s	%r1,%r1,%r2             ; @0x54
	asl_s	%r1,%r1,16              ; @0x56
	or_s	%r0,%r0,%r1             ; @0x58
	ldb	%r1,[%r14,33]           ; @0x5a
	asl_s	%r1,%r1,8               ; @0x5e
	ldb	%r2,[%r14,32]           ; @0x60
	or_s	%r1,%r1,%r2             ; @0x64
	ldb	%r2,[%r14,35]           ; @0x66
	asl_s	%r2,%r2,8               ; @0x6a
	ldb	%r3,[%r14,34]           ; @0x6c
	or_s	%r2,%r2,%r3             ; @0x70
	asl_s	%r2,%r2,16              ; @0x72
	or_s	%r1,%r1,%r2             ; @0x74
	bl	gal_mem_handle_to_apu_ptr ; @0x76
	mov_s	%r16,%r0                ; @0x7a
	ldb_s	%r0,[%r14,25]           ; @0x7c
	asl_s	%r0,%r0,8               ; @0x7e
	ldb_s	%r1,[%r14,24]           ; @0x80
	or_s	%r0,%r0,%r1             ; @0x82
	ldb_s	%r1,[%r14,26]           ; @0x84
	ldb_s	%r2,[%r14,27]           ; @0x86
	asl_s	%r2,%r2,8               ; @0x88
	or_s	%r1,%r1,%r2             ; @0x8a
	asl_s	%r1,%r1,16              ; @0x8c
	or	%r19,%r1,%r0            ; @0x8e
	sub1	%r5,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.6)/2 ; @0x92
	mov_s	%r0,%r15                ; @0x96
	mov_s	%r1,112                 ; @0x98
	mov_s	%r2,%r13                ; @0x9a
	mov_s	%r3,3                   ; @0x9c
	mov_s	%r4,%r17                ; @0x9e
	mov_s	%r6,%r19                ; @0xa0
	bl	_gsi_log                ; @0xa2
	sub	%r5,%r18,.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.7 ; @0xa6
	mov_s	%r0,%r15                ; @0xaa
	mov_s	%r1,118                 ; @0xac
	mov_s	%r2,%r13                ; @0xae
	mov_s	%r3,3                   ; @0xb0
	mov_s	%r4,%r17                ; @0xb2
	bl	_gsi_log                ; @0xb4
	test_barrier	%r0,4           ; @0xb8
	brne_s	%r0,0,.LBB2_12          ; @0xbc
;  BB#1:                                ; %while.body.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0xbe
	brne_s	%r0,0,.LBB2_12          ; @0xc2
;  BB#2:                                ; %while.body.lr.ph90.i.i.i
	test_barrier	%r0,4           ; @0xc4
	brne_s	%r0,0,.LBB2_12          ; @0xc8
;  BB#3:                                ; %while.body.i.preheader.i.i
	test_barrier	%r0,4           ; @0xca
	brne_s	%r0,0,.LBB2_12          ; @0xce
;  BB#4:                                ; %while.body.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0xd0
	brne_s	%r0,0,.LBB2_12          ; @0xd4
;  BB#5:                                ; %while.cond.i.i.preheader.i
	test_barrier	%r0,4           ; @0xd6
	brne_s	%r0,0,.LBB2_12          ; @0xda
;  BB#6:                                ; %while.body.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0xdc
	brne_s	%r0,0,.LBB2_12          ; @0xe0
;  BB#7:                                ; %while.body.i.i.lr.ph8.i
	test_barrier	%r0,4           ; @0xe2
	brne_s	%r0,0,.LBB2_12          ; @0xe6
;  BB#8:                                ; %while.body.i.i.i.preheader
	test_barrier	%r0,4           ; @0xe8
	brne_s	%r0,0,.LBB2_12          ; @0xec
;  BB#9:                                ; %while.body.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0xee
	brne_s	%r0,0,.LBB2_12          ; @0xf2
;  BB#10:                               ; %while.cond.i.i.i.preheader
	mov_s	%r2,9                   ; @0xf4
	mov_s	%r1,0x186a1             ; @0xf6
.LBB2_11:                               ; %while.cond.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xfc
	test_barrier	%r0,4           ; @0xfc
	brne_s	%r0,0,.LBB2_12          ; @0x100
;  BB#26:                               ; %while.body.i.i.i
                                        ;   in Loop: Header=BB2_11 Depth=1
	add_s	%r2,%r2,1               ; @0x102
	brlo	%r2,%r1,.LBB2_11        ; @0x104
;  BB#27:                               ; %if.then.i.i.i
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x108
	add1	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start)/2 ; @0x10c
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.14)/4 ; @0x110
	mov_s	%r1,67                  ; @0x114
	mov_s	%r4,.L.str.16           ; @0x116
	bl	_gsi_log_fatal          ; @0x11c
.LBB2_12:                               ; %while.cond1.preheader.i.i.i
                                        ; @0x120
	test_barrier	%r0,5           ; @0x120
	brne_s	%r0,0,.LBB2_28          ; @0x124
;  BB#13:                               ; %while.body5.lr.ph.i.i.i
	test_barrier	%r0,5           ; @0x126
	brne_s	%r0,0,.LBB2_28          ; @0x12a
;  BB#14:                               ; %while.body5.lr.ph77.i.i.i
	test_barrier	%r0,5           ; @0x12c
	brne_s	%r0,0,.LBB2_28          ; @0x130
;  BB#15:                               ; %while.body5.i.preheader.i.i
	test_barrier	%r0,5           ; @0x132
	brne_s	%r0,0,.LBB2_28          ; @0x136
;  BB#16:                               ; %while.body5.i.lr.ph.i.i
	test_barrier	%r0,5           ; @0x138
	brne_s	%r0,0,.LBB2_28          ; @0x13c
;  BB#17:                               ; %while.cond1.i.i.preheader.i
	test_barrier	%r0,5           ; @0x13e
	brne_s	%r0,0,.LBB2_28          ; @0x142
;  BB#18:                               ; %while.body5.i.i.lr.ph.i
	test_barrier	%r0,5           ; @0x144
	brne_s	%r0,0,.LBB2_28          ; @0x148
;  BB#19:                               ; %while.body5.i.i.lr.ph21.i
	test_barrier	%r0,5           ; @0x14a
	brne_s	%r0,0,.LBB2_28          ; @0x14e
;  BB#20:                               ; %while.body5.i.i.i.preheader
	test_barrier	%r0,5           ; @0x150
	brne_s	%r0,0,.LBB2_28          ; @0x154
;  BB#21:                               ; %while.body5.i.i.i.lr.ph
	test_barrier	%r0,5           ; @0x156
	brne_s	%r0,0,.LBB2_28          ; @0x15a
;  BB#22:                               ; %while.cond1.i.i.i.preheader
	mov_s	%r2,9                   ; @0x15c
	mov_s	%r1,0x186a1             ; @0x15e
.LBB2_23:                               ; %while.cond1.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x164
	test_barrier	%r0,5           ; @0x164
	brne_s	%r0,0,.LBB2_28          ; @0x168
;  BB#24:                               ; %while.body5.i.i.i
                                        ;   in Loop: Header=BB2_23 Depth=1
	add_s	%r2,%r2,1               ; @0x16a
	brlo	%r2,%r1,.LBB2_23        ; @0x16c
;  BB#25:                               ; %if.then8.i.i.i
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x170
	add1	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start)/2 ; @0x174
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.14)/4 ; @0x178
	mov_s	%r1,72                  ; @0x17c
	mov_s	%r4,.L.str.17           ; @0x17e
	bl	_gsi_log_fatal          ; @0x184
.LBB2_28:                               ; %while.cond11.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x188
	mov_s	%r14,0xf0000300         ; @0x188
	ld.di	%r0,[%r14,0]            ; @0x18e
	brlt	%r0,0,.LBB2_28          ; @0x192
;  BB#29:                               ; %while.end15.i.i.i
	mov_s	%r0,0x82000000          ; @0x196
	st.di	%r0,[%r14,0]            ; @0x19c
	mov_s	%r17,0xf0000380         ; @0x1a0
.LBB2_30:                               ; %while.cond16.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1a6
	ld.di	%r1,[%r17,0]            ; @0x1a6
	brlt	%r1,0,.LBB2_30          ; @0x1aa
;  BB#31:                               ; %while.end21.i.i.i
	st.di	%r0,[%r17,0]            ; @0x1ae
	test_barrier	%r0,4           ; @0x1b2
	breq_s	%r0,0,.LBB2_43          ; @0x1b6
;  BB#32:                               ; %while.body25.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0x1b8
	breq_s	%r0,0,.LBB2_43          ; @0x1bc
;  BB#33:                               ; %while.body25.lr.ph64.i.i.i
	test_barrier	%r0,4           ; @0x1be
	breq_s	%r0,0,.LBB2_43          ; @0x1c2
;  BB#34:                               ; %while.body25.i.preheader.i.i
	test_barrier	%r0,4           ; @0x1c4
	breq_s	%r0,0,.LBB2_43          ; @0x1c8
;  BB#35:                               ; %while.body25.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0x1ca
	breq_s	%r0,0,.LBB2_43          ; @0x1ce
;  BB#36:                               ; %while.cond22.i.i.preheader.i
	test_barrier	%r0,4           ; @0x1d0
	breq_s	%r0,0,.LBB2_43          ; @0x1d4
;  BB#37:                               ; %while.body25.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x1d6
	breq_s	%r0,0,.LBB2_43          ; @0x1da
;  BB#38:                               ; %while.body25.i.i.lr.ph34.i
	test_barrier	%r0,4           ; @0x1dc
	breq_s	%r0,0,.LBB2_43          ; @0x1e0
;  BB#39:                               ; %while.body25.i.i.i.preheader
	test_barrier	%r0,4           ; @0x1e2
	breq_s	%r0,0,.LBB2_43          ; @0x1e6
;  BB#40:                               ; %while.body25.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x1e8
	breq_s	%r0,0,.LBB2_43          ; @0x1ec
;  BB#41:                               ; %while.cond22.i.i.i.preheader
	mov_s	%r2,9                   ; @0x1ee
	mov_s	%r1,0x186a1             ; @0x1f0
.LBB2_42:                               ; %while.cond22.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1f6
	test_barrier	%r0,4           ; @0x1f6
	breq_s	%r0,0,.LBB2_43          ; @0x1fa
;  BB#79:                               ; %while.body25.i.i.i
                                        ;   in Loop: Header=BB2_42 Depth=1
	add_s	%r2,%r2,1               ; @0x1fc
	brlo	%r2,%r1,.LBB2_42        ; @0x1fe
;  BB#80:                               ; %if.then28.i.i.i
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x202
	add1	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start)/2 ; @0x206
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.14)/4 ; @0x20a
	add3	%r4,%r18,(.L.str.18-.L__func__.gal_fast_l2dma_l2_to_mem_start)/8 ; @0x20e
	mov_s	%r1,89                  ; @0x212
	bl	_gsi_log_fatal          ; @0x214
.LBB2_43:                               ; %while.cond31.preheader.i.i.i
                                        ; @0x218
	test_barrier	%r0,5           ; @0x218
	breq_s	%r0,0,.LBB2_51          ; @0x21c
;  BB#44:                               ; %while.body34.lr.ph.i.i.i
	test_barrier	%r0,5           ; @0x21e
	breq_s	%r0,0,.LBB2_51          ; @0x222
;  BB#45:                               ; %while.body34.lr.ph51.i.i.i
	test_barrier	%r0,5           ; @0x224
	breq_s	%r0,0,.LBB2_51          ; @0x228
;  BB#46:                               ; %while.body34.i.preheader.i.i
	test_barrier	%r0,5           ; @0x22a
	breq_s	%r0,0,.LBB2_51          ; @0x22e
;  BB#47:                               ; %while.body34.i.lr.ph.i.i
	test_barrier	%r0,5           ; @0x230
	breq_s	%r0,0,.LBB2_51          ; @0x234
;  BB#48:                               ; %while.cond31.i.i.preheader.i
	test_barrier	%r0,5           ; @0x236
	breq_s	%r0,0,.LBB2_51          ; @0x23a
;  BB#49:                               ; %while.body34.i.i.lr.ph.i
	test_barrier	%r0,5           ; @0x23c
	breq_s	%r0,0,.LBB2_51          ; @0x240
;  BB#50:                               ; %while.body34.i.i.lr.ph47.i
	test_barrier	%r0,5           ; @0x242
	breq_s	%r0,0,.LBB2_51          ; @0x246
;  BB#73:                               ; %while.body34.i.i.i.preheader
	test_barrier	%r0,5           ; @0x248
	breq_s	%r0,0,.LBB2_51          ; @0x24c
;  BB#74:                               ; %while.body34.i.i.i.lr.ph
	test_barrier	%r0,5           ; @0x24e
	breq_s	%r0,0,.LBB2_51          ; @0x252
;  BB#75:                               ; %while.cond31.i.i.i.preheader
	mov_s	%r2,9                   ; @0x254
	mov_s	%r1,0x186a1             ; @0x256
.LBB2_76:                               ; %while.cond31.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x25c
	test_barrier	%r0,5           ; @0x25c
	breq_s	%r0,0,.LBB2_51          ; @0x260
;  BB#77:                               ; %while.body34.i.i.i
                                        ;   in Loop: Header=BB2_76 Depth=1
	add_s	%r2,%r2,1               ; @0x262
	brlo	%r2,%r1,.LBB2_76        ; @0x264
;  BB#78:                               ; %if.then37.i.i.i
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x268
	add1	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start)/2 ; @0x26c
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.14)/4 ; @0x270
	mov_s	%r1,94                  ; @0x274
	mov_s	%r4,.L.str.19           ; @0x276
	bl	_gsi_log_fatal          ; @0x27c
.LBB2_51:                               ; %for.body.i.i.preheader
                                        ; @0x280
	mov_s	%r13,0                  ; @0x280
	mov_s	%r15,0                  ; @0x282
.LBB2_52:                               ; %for.body.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x284
	seteq	%r2,%r15,3              ; @0x284
	mov_s	%r0,%r19                ; @0x288
	mov_s	%r1,%r15                ; @0x28a
	mov_s	%r3,%r13                ; @0x28c
	bl	gvml_store_vmr_16       ; @0x28e
	add_s	%r13,%r13,2             ; @0x292
	add_s	%r15,%r15,1             ; @0x294
	brlo	%r15,4,.LBB2_52         ; @0x296
;  BB#53:                               ; %my_dma_l1_to_l2_32k.exit.i
	test_barrier	%r0,4           ; @0x29a
	brne	%r0,0,.LBB2_81          ; @0x29e
;  BB#54:                               ; %while.body.lr.ph.i.i.i.i
	test_barrier	%r0,4           ; @0x2a2
	brne	%r0,0,.LBB2_81          ; @0x2a6
;  BB#55:                               ; %while.body.lr.ph14.i.i.i.i
	test_barrier	%r0,4           ; @0x2aa
	brne_s	%r0,0,.LBB2_81          ; @0x2ae
;  BB#56:                               ; %while.body.i.preheader.i.i.i
	test_barrier	%r0,4           ; @0x2b0
	brne_s	%r0,0,.LBB2_81          ; @0x2b4
;  BB#57:                               ; %while.body.i.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0x2b6
	brne_s	%r0,0,.LBB2_81          ; @0x2ba
;  BB#58:                               ; %while.cond.i.preheader.i.i.i
	test_barrier	%r0,4           ; @0x2bc
	brne_s	%r0,0,.LBB2_81          ; @0x2c0
;  BB#59:                               ; %while.body.i.lr.ph31.i.i.i
	test_barrier	%r0,4           ; @0x2c2
	brne_s	%r0,0,.LBB2_81          ; @0x2c6
;  BB#60:                               ; %while.body.i.lr.ph36.i.i.i
	test_barrier	%r0,4           ; @0x2c8
	brne_s	%r0,0,.LBB2_81          ; @0x2cc
;  BB#61:                               ; %while.body.i.i.preheader.i.i
	test_barrier	%r0,4           ; @0x2ce
	brne_s	%r0,0,.LBB2_81          ; @0x2d2
;  BB#62:                               ; %while.body.i.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0x2d4
	brne_s	%r0,0,.LBB2_81          ; @0x2d8
;  BB#63:                               ; %while.cond.i.i.i.preheader.i
	test_barrier	%r0,4           ; @0x2da
	brne_s	%r0,0,.LBB2_81          ; @0x2de
;  BB#64:                               ; %while.body.i.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x2e0
	brne_s	%r0,0,.LBB2_81          ; @0x2e4
;  BB#65:                               ; %while.body.i.i.i.lr.ph60.i
	test_barrier	%r0,4           ; @0x2e6
	brne_s	%r0,0,.LBB2_81          ; @0x2ea
;  BB#66:                               ; %while.body.i.i.i.i.preheader
	test_barrier	%r0,4           ; @0x2ec
	brne_s	%r0,0,.LBB2_81          ; @0x2f0
;  BB#67:                               ; %while.body.i.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x2f2
	brne_s	%r0,0,.LBB2_81          ; @0x2f6
;  BB#68:                               ; %while.cond.i.i.i.i.preheader
	mov_s	%r2,14                  ; @0x2f8
	mov_s	%r1,0x186a1             ; @0x2fa
.LBB2_69:                               ; %while.cond.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x300
	test_barrier	%r0,4           ; @0x300
	brne_s	%r0,0,.LBB2_81          ; @0x304
;  BB#70:                               ; %while.body.i.i.i.i
                                        ;   in Loop: Header=BB2_69 Depth=1
	add_s	%r2,%r2,1               ; @0x306
	brlo	%r2,%r1,.LBB2_69        ; @0x308
;  BB#71:                               ; %if.then9.i.i.i.i
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x30c
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.14)/4 ; @0x310
	sub2	%r4,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.15)/4 ; @0x314
	mov	%r1,608                 ; @0x318
	mov_s	%r2,%r18                ; @0x31c
	mov_s	%r5,.L.str.20           ; @0x31e
	bl	_gsi_log_fatal          ; @0x324
.LBB2_81:                               ; %while.cond10.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x328
	ld.di	%r0,[%r14,0]            ; @0x328
	brlt	%r0,0,.LBB2_81          ; @0x32c
;  BB#82:                               ; %my_dma_l2_to_l4_16k.exit.i.i
	mov_s	%r0,0                   ; @0x330
	mov_s	%r1,0xf0000388          ; @0x332
	st.di	%r0,[%r1,0]             ; @0x338
	st.di	%r16,[%r1,-120]         ; @0x33c
	mov_s	%r2,0xef3f00c0          ; @0x340
	st.di	%r2,[%r14,0]            ; @0x346
	add	%r16,%r16,32768         ; @0x34a
	test_barrier	%r3,5           ; @0x352
	brne	%r3,0,.LBB2_101         ; @0x356
;  BB#83:                               ; %while.body21.lr.ph.i.i.i.i
	test_barrier	%r3,5           ; @0x35a
	brne	%r3,0,.LBB2_101         ; @0x35e
;  BB#84:                               ; %while.body21.lr.ph27.i.i.i.i
	test_barrier	%r3,5           ; @0x362
	brne_s	%r3,0,.LBB2_101         ; @0x366
;  BB#85:                               ; %while.body21.i.preheader.i.i.i
	test_barrier	%r3,5           ; @0x368
	brne_s	%r3,0,.LBB2_101         ; @0x36c
;  BB#86:                               ; %while.body21.i.lr.ph.i.i.i
	test_barrier	%r3,5           ; @0x36e
	brne_s	%r3,0,.LBB2_101         ; @0x372
;  BB#87:                               ; %while.cond17.i.preheader.i.i.i
	test_barrier	%r3,5           ; @0x374
	brne_s	%r3,0,.LBB2_101         ; @0x378
;  BB#88:                               ; %while.body21.i.lr.ph45.i.i.i
	test_barrier	%r3,5           ; @0x37a
	brne_s	%r3,0,.LBB2_101         ; @0x37e
;  BB#89:                               ; %while.body21.i.lr.ph50.i.i.i
	test_barrier	%r3,5           ; @0x380
	brne_s	%r3,0,.LBB2_101         ; @0x384
;  BB#90:                               ; %while.body21.i.i.preheader.i.i
	test_barrier	%r3,5           ; @0x386
	brne_s	%r3,0,.LBB2_101         ; @0x38a
;  BB#91:                               ; %while.body21.i.i.lr.ph.i.i
	test_barrier	%r3,5           ; @0x38c
	brne_s	%r3,0,.LBB2_101         ; @0x390
;  BB#92:                               ; %while.cond17.i.i.i.preheader.i
	test_barrier	%r3,5           ; @0x392
	brne_s	%r3,0,.LBB2_101         ; @0x396
;  BB#93:                               ; %while.body21.i.i.i.lr.ph.i
	test_barrier	%r3,5           ; @0x398
	brne_s	%r3,0,.LBB2_101         ; @0x39c
;  BB#94:                               ; %while.body21.i.i.i.lr.ph73.i
	test_barrier	%r3,5           ; @0x39e
	brne_s	%r3,0,.LBB2_101         ; @0x3a2
;  BB#95:                               ; %while.body21.i.i.i.i.preheader
	test_barrier	%r3,5           ; @0x3a4
	brne_s	%r3,0,.LBB2_101         ; @0x3a8
;  BB#96:                               ; %while.body21.i.i.i.i.lr.ph
	test_barrier	%r3,5           ; @0x3aa
	brne_s	%r3,0,.LBB2_101         ; @0x3ae
;  BB#97:                               ; %while.cond17.i.i.i.i.preheader
	mov_s	%r15,14                 ; @0x3b0
	mov_s	%r12,0x186a1            ; @0x3b2
.LBB2_98:                               ; %while.cond17.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x3b8
	test_barrier	%r3,5           ; @0x3b8
	brne_s	%r3,0,.LBB2_101         ; @0x3bc
;  BB#99:                               ; %while.body21.i.i.i.i
                                        ;   in Loop: Header=BB2_98 Depth=1
	add_s	%r15,%r15,1             ; @0x3be
	brlo	%r15,%r12,.LBB2_98      ; @0x3c0
;  BB#100:                              ; %if.then25.i.i.i.i
	add2	%r0,%r18,(.L.str.9-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x3c4
	sub2	%r3,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.14)/4 ; @0x3c8
	sub2	%r4,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.15)/4 ; @0x3cc
	mov	%r1,617                 ; @0x3d0
	mov_s	%r2,%r18                ; @0x3d4
	mov_s	%r5,.L.str.20           ; @0x3d6
	bl	_gsi_log_fatal          ; @0x3dc
.LBB2_101:                              ; %while.cond28.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x3e0
	ld.di	%r3,[%r17,0]            ; @0x3e0
	brlt	%r3,0,.LBB2_101         ; @0x3e4
;  BB#102:                              ; %my_dma_l2_to_l4_16k.exit2.i.i
	st.di	%r0,[%r1,0]             ; @0x3e8
	st.di	%r16,[0xf0000390]       ; @0x3ec
	st.di	%r2,[%r17,0]            ; @0x3f4
.LBB2_103:                              ; %while.cond.i.i3.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x3f8
	ld.di	%r2,[%r14,0]            ; @0x3f8
	brlt	%r2,0,.LBB2_103         ; @0x3fc
;  BB#104:                              ; %while.end.i.i.i.i
	st.di	%r0,[0xf0000308]        ; @0x400
	ror	%r0,1                   ; @0x408
	st.di	%r0,[%r14,0]            ; @0x40c
.LBB2_105:                              ; %while.cond1.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x410
	ld.di	%r2,[%r14,0]            ; @0x410
	brlt	%r2,0,.LBB2_105         ; @0x414
.LBB2_106:                              ; %while.cond.i2.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x418
	ld.di	%r2,[%r17,0]            ; @0x418
	brlt	%r2,0,.LBB2_106         ; @0x41c
;  BB#107:                              ; %while.end.i3.i.i.i
	st.di	0,[%r1,0]               ; @0x420
	st.di	%r0,[%r17,0]            ; @0x424
.LBB2_108:                              ; %while.cond1.i5.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x428
	ld.di	%r0,[%r17,0]            ; @0x428
	brlt	%r0,0,.LBB2_108         ; @0x42c
;  BB#109:                              ; %my_dma_l1_to_l4.exit
	add2	%r0,%r18,(.L.str-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x430
	sub2	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L__func__.read_l1_task)/4 ; @0x434
	sub2	%r4,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.1)/4 ; @0x438
	add1	%r5,%r18,(.L.str.8-.L__func__.gal_fast_l2dma_l2_to_mem_start)/2 ; @0x43c
	mov_s	%r1,122                 ; @0x440
	mov_s	%r3,3                   ; @0x442
	mov_s	%r6,%r19                ; @0x444
	bl	_gsi_log                ; @0x446
	mov_s	%r0,0                   ; @0x44a
	ld	%blink,[%sp,28]         ; @0x44c
	.cfa_restore	{%blink}        ; @0x450
	ld	%r19,[%sp,24]           ; @0x450
	.cfa_restore	{%r19}          ; @0x454
	ld	%r18,[%sp,20]           ; @0x454
	.cfa_restore	{%r18}          ; @0x458
	ld	%r17,[%sp,16]           ; @0x458
	.cfa_restore	{%r17}          ; @0x45c
	ld	%r16,[%sp,12]           ; @0x45c
	.cfa_restore	{%r16}          ; @0x460
	ld_s	%r15,[%sp,8]            ; @0x460
	.cfa_restore	{%r15}          ; @0x462
	ld_s	%r14,[%sp,4]            ; @0x462
	.cfa_restore	{%r14}          ; @0x464
	ld.ab	%r13,[%sp,32]           ; @0x464
	.cfa_restore	{%r13}          ; @0x468
	.cfa_pop	32              ; @0x468
	j_s	[%blink]                ; @0x468
	.cfa_ef
.Lfunc_end2:                            ; @0x46a


