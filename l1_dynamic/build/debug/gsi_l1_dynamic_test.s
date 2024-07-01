	.option	%reg
	.file	"dev_src/gsi_l1_dynamic_test.c"
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
	.size	.L.str.7, 18
	.type	.L.str.7,@object
	.size	.L.str.6, 20
	.type	.L.str.6,@object
	.size	.L.str.10, 21
	.type	.L.str.10,@object
	.size	.L.str.5, 21
	.type	.L.str.5,@object
	.size	.L.str.8, 22
	.type	.L.str.8,@object
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
.L.str.7:                               ; @0x48
	.asciz	"starting l1_to_l4"
	.align	4
.L.str.6:                               ; @0x5c
	.asciz	"Got vr_to_check: %d"
	.align	4
.L.str.10:                              ; @0x70
	.asciz	"Error: Assert failed"
	.align	4
.L.str.5:                               ; @0x88
	.asciz	"Running read_l1_task"
	.align	4
.L.str.8:                               ; @0xa0
	.asciz	"Read GMVL_VM_%d to L4"
	.align	4
.L.str.2:                               ; @0xb8
	.asciz	"Running VM reg populate task"
	.align	4
.L.str:                                 ; @0xd8
	.asciz	"dev_src/gsi_l1_dynamic_test.c"
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
.L.str.4:                               ; @0x158
	.asciz	"Populated GVML_VM_0 through GVML_VM_%d"
	.align	4
.L.str.9:                               ; @0x180
	.asciz	"/usr/include/gsi/archs36/gsi/gal-fast-funcs.h"
	.align	4
.L.str.18:                              ; @0x1b0
	.asciz	"COND_L2_READY A timed out (fail to rst l2_ready)"
	.align	4
.L.str.19:                              ; @0x1e4
	.asciz	"COND_L2_READY B timed out (fail to rst l2_ready)"
	.align	4
.L.str.12:                              ; @0x218
	.asciz	"gal_fast_l2dma_is_txns_valid(num_transactions, transactions)"
	.align	4
.L.str.13:                              ; @0x258
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.align	4
.L.str.20:                              ; @0x2b8
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_l2_to_mem_start)"
	.align	4
.L.str.16:                              ; @0x318
	.asciz	"COND_L2_READY A timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.align	4
.L.str.17:                              ; @0x37c
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
	mov_s	%r18,.L.str.15          ; @0x32
	add2	%r19,%r18,(.L.str-.L.str.15)/4 ; @0x38
	add	%r16,%r18,.L__func__.populate_task-.L.str.15 ; @0x3c
	add	%r17,%r18,.L.str.1-.L.str.15 ; @0x40
	add2	%r5,%r18,(.L.str.2-.L.str.15)/4 ; @0x44
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
	add	%r5,%r18,.L.str.3-.L.str.15 ; @0xa8
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
	.extInstruction test_barrier,0x07,0x03,SUFFIX_FLAG,SYNTAX_2OP
	test_barrier	%r0,4           ; @0xd4
	brne_s	%r0,0,.LBB1_18          ; @0xd8
;  BB#1:                                ; %while.body.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0xda
	brne_s	%r0,0,.LBB1_18          ; @0xde
;  BB#2:                                ; %while.body.lr.ph14.i.i.i
	test_barrier	%r0,4           ; @0xe0
	brne_s	%r0,0,.LBB1_18          ; @0xe4
;  BB#3:                                ; %while.body.i.preheader.i.i
	test_barrier	%r0,4           ; @0xe6
	brne_s	%r0,0,.LBB1_18          ; @0xea
;  BB#4:                                ; %while.body.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0xec
	brne_s	%r0,0,.LBB1_18          ; @0xf0
;  BB#5:                                ; %while.cond.i.preheader.i.i
	test_barrier	%r0,4           ; @0xf2
	brne_s	%r0,0,.LBB1_18          ; @0xf6
;  BB#6:                                ; %while.body.i.lr.ph31.i.i
	test_barrier	%r0,4           ; @0xf8
	brne_s	%r0,0,.LBB1_18          ; @0xfc
;  BB#7:                                ; %while.body.i.lr.ph36.i.i
	test_barrier	%r0,4           ; @0xfe
	brne_s	%r0,0,.LBB1_18          ; @0x102
;  BB#8:                                ; %while.body.i.i.preheader.i
	test_barrier	%r0,4           ; @0x104
	brne_s	%r0,0,.LBB1_18          ; @0x108
;  BB#9:                                ; %while.body.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x10a
	brne_s	%r0,0,.LBB1_18          ; @0x10e
;  BB#10:                               ; %while.cond.i.i.i.preheader
	test_barrier	%r0,4           ; @0x110
	brne_s	%r0,0,.LBB1_18          ; @0x114
;  BB#11:                               ; %while.body.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x116
	brne_s	%r0,0,.LBB1_18          ; @0x11a
;  BB#12:                               ; %while.body.i.i.i.lr.ph87
	test_barrier	%r0,4           ; @0x11c
	brne_s	%r0,0,.LBB1_18          ; @0x120
;  BB#13:                               ; %while.body.i.i.i.preheader
	mov_s	%r2,11                  ; @0x122
	mov_s	%r0,0x186a1             ; @0x124
.LBB1_15:                               ; %while.body.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x12a
	add_s	%r2,%r2,1               ; @0x12a
	cmp_s	%r2,%r0                 ; @0x12c
	bcc	.LBB1_16                ; @0x12e
;  BB#14:                               ; %while.cond.i.i.i
                                        ;   in Loop: Header=BB1_15 Depth=1
	test_barrier	%r1,4           ; @0x132
	breq_s	%r1,0,.LBB1_15          ; @0x136
.LBB1_18:                               ; %while.cond10.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x138
	mov_s	%r21,0xf0000300         ; @0x138
	ld.di	%r0,[%r21,0]            ; @0x13e
	brlt	%r0,0,.LBB1_18          ; @0x142
;  BB#19:                               ; %my_dma_l4_to_l2_16k.exit.i
	mov_s	%r0,0xf0000308          ; @0x146
	st.di	0,[%r0,0]               ; @0x14c
	st.di	%r20,[%r0,8]            ; @0x150
	mov_s	%r1,0xff3f00c0          ; @0x154
	st.di	%r1,[%r21,0]            ; @0x15a
	add	%r13,%r20,32768         ; @0x15e
	test_barrier	%r2,5           ; @0x166
	brne_s	%r2,0,.LBB1_36          ; @0x16a
;  BB#20:                               ; %while.body21.lr.ph.i.i.i
	test_barrier	%r2,5           ; @0x16c
	brne_s	%r2,0,.LBB1_36          ; @0x170
;  BB#21:                               ; %while.body21.lr.ph27.i.i.i
	test_barrier	%r2,5           ; @0x172
	brne_s	%r2,0,.LBB1_36          ; @0x176
;  BB#22:                               ; %while.body21.i.preheader.i.i
	test_barrier	%r2,5           ; @0x178
	brne_s	%r2,0,.LBB1_36          ; @0x17c
;  BB#23:                               ; %while.body21.i.lr.ph.i.i
	test_barrier	%r2,5           ; @0x17e
	brne_s	%r2,0,.LBB1_36          ; @0x182
;  BB#24:                               ; %while.cond17.i.preheader.i.i
	test_barrier	%r2,5           ; @0x184
	brne_s	%r2,0,.LBB1_36          ; @0x188
;  BB#25:                               ; %while.body21.i.lr.ph45.i.i
	test_barrier	%r2,5           ; @0x18a
	brne_s	%r2,0,.LBB1_36          ; @0x18e
;  BB#26:                               ; %while.body21.i.lr.ph50.i.i
	test_barrier	%r2,5           ; @0x190
	brne_s	%r2,0,.LBB1_36          ; @0x194
;  BB#27:                               ; %while.body21.i.i.preheader.i
	test_barrier	%r2,5           ; @0x196
	brne_s	%r2,0,.LBB1_36          ; @0x19a
;  BB#28:                               ; %while.body21.i.i.lr.ph.i
	test_barrier	%r2,5           ; @0x19c
	brne_s	%r2,0,.LBB1_36          ; @0x1a0
;  BB#29:                               ; %while.cond17.i.i.i.preheader
	test_barrier	%r2,5           ; @0x1a2
	brne_s	%r2,0,.LBB1_36          ; @0x1a6
;  BB#30:                               ; %while.body21.i.i.i.lr.ph
	test_barrier	%r2,5           ; @0x1a8
	brne_s	%r2,0,.LBB1_36          ; @0x1ac
;  BB#31:                               ; %while.body21.i.i.i.lr.ph74
	test_barrier	%r2,5           ; @0x1ae
	brne_s	%r2,0,.LBB1_36          ; @0x1b2
;  BB#32:                               ; %while.body21.i.i.i.preheader
	mov_s	%r12,11                 ; @0x1b4
	mov_s	%r2,0x186a1             ; @0x1b6
.LBB1_34:                               ; %while.body21.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1bc
	add_s	%r12,%r12,1             ; @0x1bc
	cmp_s	%r12,%r2                ; @0x1be
	bcc	.LBB1_35                ; @0x1c0
;  BB#33:                               ; %while.cond17.i.i.i
                                        ;   in Loop: Header=BB1_34 Depth=1
	test_barrier	%r3,5           ; @0x1c4
	breq_s	%r3,0,.LBB1_34          ; @0x1c8
.LBB1_36:                               ; %while.cond28.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1ca
	mov_s	%r20,0xf0000380         ; @0x1ca
	ld.di	%r2,[%r20,0]            ; @0x1d0
	brlt	%r2,0,.LBB1_36          ; @0x1d4
;  BB#37:                               ; %my_dma_l4_to_l2_16k.exit2.i
	mov_s	%r2,0xf0000388          ; @0x1d8
	st.di	0,[%r2,0]               ; @0x1de
	st.di	%r13,[%r2,8]            ; @0x1e2
	st.di	%r1,[%r20,0]            ; @0x1e6
.LBB1_38:                               ; %while.cond.i.i3.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1ea
	ld.di	%r1,[%r21,0]            ; @0x1ea
	brlt	%r1,0,.LBB1_38          ; @0x1ee
;  BB#39:                               ; %while.end.i.i.i
	st.di	0,[%r0,0]               ; @0x1f2
	ror	%r0,1                   ; @0x1f6
	st.di	%r0,[%r21,0]            ; @0x1fa
.LBB1_40:                               ; %while.cond1.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1fe
	ld.di	%r1,[%r21,0]            ; @0x1fe
	brlt	%r1,0,.LBB1_40          ; @0x202
.LBB1_41:                               ; %while.cond.i2.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x206
	ld.di	%r1,[%r20,0]            ; @0x206
	brlt	%r1,0,.LBB1_41          ; @0x20a
;  BB#42:                               ; %while.end.i3.i.i
	mov_s	%r13,0                  ; @0x20e
	st.di	0,[%r2,0]               ; @0x210
	st.di	%r0,[%r20,0]            ; @0x214
.LBB1_43:                               ; %while.cond1.i5.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x218
	ld.di	%r0,[%r20,0]            ; @0x218
	brlt	%r0,0,.LBB1_43          ; @0x21c
;  BB#44:                               ; %for.body.preheader
	mov_s	%r23,0x186a1            ; @0x220
	mov_s	%r24,0x82000000         ; @0x226
.LBB1_45:                               ; %for.body
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_54 Depth 2
                                        ;     Child Loop BB1_67 Depth 2
                                        ;     Child Loop BB1_69 Depth 2
                                        ;     Child Loop BB1_71 Depth 2
                                        ;     Child Loop BB1_81 Depth 2
                                        ;     Child Loop BB1_98 Depth 2
                                        ;     Child Loop BB1_89 Depth 2
                                        ; @0x22c
	test_barrier	%r0,4           ; @0x22c
	brne_s	%r0,0,.LBB1_56          ; @0x230
;  BB#46:                               ; %while.body.lr.ph.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x232
	brne_s	%r0,0,.LBB1_56          ; @0x236
;  BB#47:                               ; %while.body.lr.ph90.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x238
	brne_s	%r0,0,.LBB1_56          ; @0x23c
;  BB#48:                               ; %while.body.i.preheader.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x23e
	brne_s	%r0,0,.LBB1_56          ; @0x242
;  BB#49:                               ; %while.body.i.lr.ph.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x244
	brne_s	%r0,0,.LBB1_56          ; @0x248
;  BB#50:                               ; %while.cond.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x24a
	brne_s	%r0,0,.LBB1_56          ; @0x24e
;  BB#51:                               ; %while.body.i.i.lr.ph
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x250
	brne_s	%r0,0,.LBB1_56          ; @0x254
;  BB#52:                               ; %while.body.i.i.lr.ph21
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x256
	brne_s	%r0,0,.LBB1_56          ; @0x25a
;  BB#53:                               ; %while.body.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	mov_s	%r1,6                   ; @0x25c
.LBB1_54:                               ; %while.body.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x25e
	add_s	%r1,%r1,1               ; @0x25e
	cmp_s	%r1,%r23                ; @0x260
	bcc	.LBB1_65                ; @0x262
;  BB#55:                               ; %while.cond.i.i
                                        ;   in Loop: Header=BB1_54 Depth=2
	test_barrier	%r0,4           ; @0x266
	breq_s	%r0,0,.LBB1_54          ; @0x26a
.LBB1_56:                               ; %while.cond1.preheader.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
                                        ; @0x26c
	test_barrier	%r0,5           ; @0x26c
	brne_s	%r0,0,.LBB1_69          ; @0x270
;  BB#57:                               ; %while.body5.lr.ph.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x272
	brne_s	%r0,0,.LBB1_69          ; @0x276
;  BB#58:                               ; %while.body5.lr.ph77.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x278
	brne_s	%r0,0,.LBB1_69          ; @0x27c
;  BB#59:                               ; %while.body5.i.preheader.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x27e
	brne_s	%r0,0,.LBB1_69          ; @0x282
;  BB#60:                               ; %while.body5.i.lr.ph.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x284
	brne_s	%r0,0,.LBB1_69          ; @0x288
;  BB#61:                               ; %while.cond1.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x28a
	brne_s	%r0,0,.LBB1_69          ; @0x28e
;  BB#62:                               ; %while.body5.i.i.lr.ph
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x290
	brne_s	%r0,0,.LBB1_69          ; @0x294
;  BB#63:                               ; %while.body5.i.i.lr.ph34
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x296
	brne_s	%r0,0,.LBB1_69          ; @0x29a
;  BB#64:                               ; %while.body5.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	mov_s	%r1,6                   ; @0x29c
.LBB1_67:                               ; %while.body5.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x29e
	add_s	%r1,%r1,1               ; @0x29e
	cmp_s	%r1,%r23                ; @0x2a0
	bcc	.LBB1_68                ; @0x2a2
;  BB#66:                               ; %while.cond1.i.i
                                        ;   in Loop: Header=BB1_67 Depth=2
	test_barrier	%r0,5           ; @0x2a6
	breq_s	%r0,0,.LBB1_67          ; @0x2aa
.LBB1_69:                               ; %while.cond11.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x2ac
	ld.di	%r0,[%r21,0]            ; @0x2ac
	brlt	%r0,0,.LBB1_69          ; @0x2b0
;  BB#70:                               ; %while.end15.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	st.di	%r24,[%r21,0]           ; @0x2b4
.LBB1_71:                               ; %while.cond16.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x2b8
	ld.di	%r0,[%r20,0]            ; @0x2b8
	brlt	%r0,0,.LBB1_71          ; @0x2bc
;  BB#72:                               ; %while.end21.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	st.di	%r24,[%r20,0]           ; @0x2c0
	test_barrier	%r0,4           ; @0x2c4
	breq_s	%r0,0,.LBB1_83          ; @0x2c8
;  BB#73:                               ; %while.body25.lr.ph.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2ca
	breq_s	%r0,0,.LBB1_83          ; @0x2ce
;  BB#74:                               ; %while.body25.lr.ph64.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2d0
	breq_s	%r0,0,.LBB1_83          ; @0x2d4
;  BB#75:                               ; %while.body25.i.preheader.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2d6
	breq_s	%r0,0,.LBB1_83          ; @0x2da
;  BB#76:                               ; %while.body25.i.lr.ph.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2dc
	breq_s	%r0,0,.LBB1_83          ; @0x2e0
;  BB#77:                               ; %while.cond22.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2e2
	breq_s	%r0,0,.LBB1_83          ; @0x2e6
;  BB#78:                               ; %while.body25.i.i.lr.ph
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2e8
	breq_s	%r0,0,.LBB1_83          ; @0x2ec
;  BB#79:                               ; %while.body25.i.i.lr.ph47
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,4           ; @0x2ee
	breq_s	%r0,0,.LBB1_83          ; @0x2f2
;  BB#80:                               ; %while.body25.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	mov_s	%r1,6                   ; @0x2f4
.LBB1_81:                               ; %while.body25.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x2f6
	add_s	%r1,%r1,1               ; @0x2f6
	brhs	%r1,%r23,.LBB1_96       ; @0x2f8
;  BB#82:                               ; %while.cond22.i.i
                                        ;   in Loop: Header=BB1_81 Depth=2
	test_barrier	%r0,4           ; @0x2fc
	brne_s	%r0,0,.LBB1_81          ; @0x300
.LBB1_83:                               ; %while.cond31.preheader.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
                                        ; @0x302
	test_barrier	%r0,5           ; @0x302
	breq_s	%r0,0,.LBB1_88          ; @0x306
;  BB#84:                               ; %while.body34.lr.ph.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x308
	breq_s	%r0,0,.LBB1_88          ; @0x30c
;  BB#85:                               ; %while.body34.lr.ph51.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x30e
	breq_s	%r0,0,.LBB1_88          ; @0x312
;  BB#86:                               ; %while.body34.i.preheader.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x314
	breq_s	%r0,0,.LBB1_88          ; @0x318
;  BB#87:                               ; %while.body34.i.lr.ph.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x31a
	breq_s	%r0,0,.LBB1_88          ; @0x31e
;  BB#92:                               ; %while.cond31.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x320
	breq_s	%r0,0,.LBB1_88          ; @0x324
;  BB#93:                               ; %while.body34.i.i.lr.ph
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x326
	breq_s	%r0,0,.LBB1_88          ; @0x32a
;  BB#94:                               ; %while.body34.i.i.lr.ph60
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r0,5           ; @0x32c
	breq_s	%r0,0,.LBB1_88          ; @0x330
;  BB#95:                               ; %while.body34.i.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
	mov_s	%r1,6                   ; @0x332
.LBB1_98:                               ; %while.body34.i.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x334
	add_s	%r1,%r1,1               ; @0x334
	brhs	%r1,%r23,.LBB1_99       ; @0x336
;  BB#97:                               ; %while.cond31.i.i
                                        ;   in Loop: Header=BB1_98 Depth=2
	test_barrier	%r0,5           ; @0x33a
	brne_s	%r0,0,.LBB1_98          ; @0x33e
.LBB1_88:                               ; %for.body.i.preheader
                                        ;   in Loop: Header=BB1_45 Depth=1
                                        ; @0x340
	mov_s	%r14,0                  ; @0x340
	mov_s	%r15,0                  ; @0x342
.LBB1_89:                               ; %for.body.i
                                        ;   Parent Loop BB1_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; @0x344
	seteq	%r2,%r15,3              ; @0x344
	mov_s	%r0,%r13                ; @0x348
	mov_s	%r1,%r15                ; @0x34a
	mov_s	%r3,%r14                ; @0x34c
	bl	gvml_load_vmr_16        ; @0x34e
	add_s	%r14,%r14,2             ; @0x352
	add_s	%r15,%r15,1             ; @0x354
	brlo	%r15,4,.LBB1_89         ; @0x356
;  BB#90:                               ; %my_dma_l2_to_l1_32k.exit
                                        ;   in Loop: Header=BB1_45 Depth=1
	add_s	%r13,%r13,1             ; @0x35a
	cmp_s	%r13,48                 ; @0x35c
	bcs	.LBB1_45                ; @0x35e
;  BB#91:                               ; %for.end
	sub	%r6,%r19,1              ; @0x362
	add2	%r0,%r18,(.L.str-.L.str.15)/4 ; @0x366
	add3	%r5,%r18,(.L.str.4-.L.str.15)/8 ; @0x36a
	mov_s	%r1,69                  ; @0x36e
	mov_s	%r2,%r16                ; @0x370
	mov_s	%r3,3                   ; @0x372
	mov_s	%r4,%r17                ; @0x374
	bl	_gsi_log                ; @0x376
	ld_s	%r0,[%r22,0]            ; @0x37a
	.cfa_remember_state             ; @0x37c
	ld	%blink,[%sp,48]         ; @0x37c
	.cfa_restore	{%blink}        ; @0x380
	ld	%r24,[%sp,44]           ; @0x380
	.cfa_restore	{%r24}          ; @0x384
	ld	%r23,[%sp,40]           ; @0x384
	.cfa_restore	{%r23}          ; @0x388
	ld	%r22,[%sp,36]           ; @0x388
	.cfa_restore	{%r22}          ; @0x38c
	ld	%r21,[%sp,32]           ; @0x38c
	.cfa_restore	{%r21}          ; @0x390
	ld	%r20,[%sp,28]           ; @0x390
	.cfa_restore	{%r20}          ; @0x394
	ld	%r19,[%sp,24]           ; @0x394
	.cfa_restore	{%r19}          ; @0x398
	ld	%r18,[%sp,20]           ; @0x398
	.cfa_restore	{%r18}          ; @0x39c
	ld	%r17,[%sp,16]           ; @0x39c
	.cfa_restore	{%r17}          ; @0x3a0
	ld	%r16,[%sp,12]           ; @0x3a0
	.cfa_restore	{%r16}          ; @0x3a4
	ld_s	%r15,[%sp,8]            ; @0x3a4
	.cfa_restore	{%r15}          ; @0x3a6
	ld_s	%r14,[%sp,4]            ; @0x3a6
	.cfa_restore	{%r14}          ; @0x3a8
	ld.ab	%r13,[%sp,52]           ; @0x3a8
	.cfa_restore	{%r13}          ; @0x3ac
	.cfa_pop	52              ; @0x3ac
	j_s	[%blink]                ; @0x3ac
	.cfa_restore_state              ; @0x3ae
.LBB1_96:                               ; %if.then28.i.i
                                        ; @0x3ae
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x3ae
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.15)/8 ; @0x3b2
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x3b6
	add3	%r4,%r18,(.L.str.18-.L.str.15)/8 ; @0x3ba
	mov_s	%r1,89                  ; @0x3be
	bl	_gsi_log_fatal          ; @0x3c0
.LBB1_99:                               ; %if.then37.i.i
                                        ; @0x3c4
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x3c4
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.15)/8 ; @0x3c8
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x3cc
	mov_s	%r1,94                  ; @0x3d0
	mov_s	%r4,.L.str.19           ; @0x3d2
	bl	_gsi_log_fatal          ; @0x3d8
.LBB1_65:                               ; %if.then.i.i
                                        ; @0x3dc
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x3dc
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.15)/8 ; @0x3e0
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x3e4
	mov_s	%r1,67                  ; @0x3e8
	mov_s	%r4,.L.str.16           ; @0x3ea
	bl	_gsi_log_fatal          ; @0x3f0
.LBB1_68:                               ; %if.then8.i.i
                                        ; @0x3f4
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x3f4
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.15)/8 ; @0x3f8
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x3fc
	mov_s	%r1,72                  ; @0x400
	mov_s	%r4,.L.str.17           ; @0x402
	bl	_gsi_log_fatal          ; @0x408
.LBB1_16:                               ; %if.then9.i.i.i
                                        ; @0x40c
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x40c
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.15)/8 ; @0x410
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x414
	mov	%r1,328                 ; @0x418
	mov_s	%r4,%r18                ; @0x41c
	mov_s	%r5,.L.str.13           ; @0x41e
	bl	_gsi_log_fatal          ; @0x424
.LBB1_35:                               ; %if.then25.i.i.i
                                        ; @0x428
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x428
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str.15)/8 ; @0x42c
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x430
	mov	%r1,337                 ; @0x434
	mov_s	%r4,%r18                ; @0x438
	mov_s	%r5,.L.str.13           ; @0x43a
	bl	_gsi_log_fatal          ; @0x440
	.cfa_ef
.Lfunc_end1:                            ; @0x444

	.section	.text.read_l1_task,"ax",@progbits
	.align	4
read_l1_task:                           ; @read_l1_task
                                        ; @0x0
	.cfa_bf	read_l1_task
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
	mov_s	%r18,.L.str.15          ; @0x26
	add2	%r15,%r18,(.L.str-.L.str.15)/4 ; @0x2c
	add	%r19,%r18,.L__func__.read_l1_task-.L.str.15 ; @0x30
	add	%r17,%r18,.L.str.1-.L.str.15 ; @0x34
	add2	%r5,%r18,(.L.str.5-.L.str.15)/4 ; @0x38
	mov_s	%r0,%r15                ; @0x3c
	mov_s	%r1,84                  ; @0x3e
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
	add1	%r5,%r18,(.L.str.6-.L.str.15)/2 ; @0x9a
	mov_s	%r0,%r15                ; @0x9e
	mov_s	%r1,99                  ; @0xa0
	mov_s	%r2,%r19                ; @0xa2
	mov_s	%r3,3                   ; @0xa4
	mov_s	%r4,%r17                ; @0xa6
	mov_s	%r6,%r20                ; @0xa8
	bl	_gsi_log                ; @0xaa
	add1	%r5,%r18,(.L.str.7-.L.str.15)/2 ; @0xae
	mov_s	%r0,%r15                ; @0xb2
	mov_s	%r1,102                 ; @0xb4
	mov_s	%r2,%r19                ; @0xb6
	mov_s	%r3,3                   ; @0xb8
	mov_s	%r4,%r17                ; @0xba
	bl	_gsi_log                ; @0xbc
	test_barrier	%r0,4           ; @0xc0
	brne_s	%r0,0,.LBB2_12          ; @0xc4
;  BB#1:                                ; %while.body.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0xc6
	brne_s	%r0,0,.LBB2_12          ; @0xca
;  BB#2:                                ; %while.body.lr.ph90.i.i.i
	test_barrier	%r0,4           ; @0xcc
	brne_s	%r0,0,.LBB2_12          ; @0xd0
;  BB#3:                                ; %while.body.i.preheader.i.i
	test_barrier	%r0,4           ; @0xd2
	brne_s	%r0,0,.LBB2_12          ; @0xd6
;  BB#4:                                ; %while.body.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0xd8
	brne_s	%r0,0,.LBB2_12          ; @0xdc
;  BB#5:                                ; %while.cond.i.i.preheader.i
	test_barrier	%r0,4           ; @0xde
	brne_s	%r0,0,.LBB2_12          ; @0xe2
;  BB#6:                                ; %while.body.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0xe4
	brne_s	%r0,0,.LBB2_12          ; @0xe8
;  BB#7:                                ; %while.body.i.i.lr.ph8.i
	test_barrier	%r0,4           ; @0xea
	brne_s	%r0,0,.LBB2_12          ; @0xee
;  BB#8:                                ; %while.body.i.i.i.preheader
	test_barrier	%r0,4           ; @0xf0
	brne_s	%r0,0,.LBB2_12          ; @0xf4
;  BB#9:                                ; %while.body.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0xf6
	brne_s	%r0,0,.LBB2_12          ; @0xfa
;  BB#10:                               ; %while.cond.i.i.i.preheader
	mov_s	%r2,9                   ; @0xfc
	mov_s	%r1,0x186a1             ; @0xfe
.LBB2_11:                               ; %while.cond.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x104
	test_barrier	%r0,4           ; @0x104
	brne_s	%r0,0,.LBB2_12          ; @0x108
;  BB#26:                               ; %while.body.i.i.i
                                        ;   in Loop: Header=BB2_11 Depth=1
	add_s	%r2,%r2,1               ; @0x10a
	brlo	%r2,%r1,.LBB2_11        ; @0x10c
;  BB#27:                               ; %if.then.i.i.i
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x110
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.15)/8 ; @0x114
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x118
	mov_s	%r1,67                  ; @0x11c
	mov_s	%r4,.L.str.16           ; @0x11e
	bl	_gsi_log_fatal          ; @0x124
.LBB2_12:                               ; %while.cond1.preheader.i.i.i
                                        ; @0x128
	test_barrier	%r0,5           ; @0x128
	brne_s	%r0,0,.LBB2_28          ; @0x12c
;  BB#13:                               ; %while.body5.lr.ph.i.i.i
	test_barrier	%r0,5           ; @0x12e
	brne_s	%r0,0,.LBB2_28          ; @0x132
;  BB#14:                               ; %while.body5.lr.ph77.i.i.i
	test_barrier	%r0,5           ; @0x134
	brne_s	%r0,0,.LBB2_28          ; @0x138
;  BB#15:                               ; %while.body5.i.preheader.i.i
	test_barrier	%r0,5           ; @0x13a
	brne_s	%r0,0,.LBB2_28          ; @0x13e
;  BB#16:                               ; %while.body5.i.lr.ph.i.i
	test_barrier	%r0,5           ; @0x140
	brne_s	%r0,0,.LBB2_28          ; @0x144
;  BB#17:                               ; %while.cond1.i.i.preheader.i
	test_barrier	%r0,5           ; @0x146
	brne_s	%r0,0,.LBB2_28          ; @0x14a
;  BB#18:                               ; %while.body5.i.i.lr.ph.i
	test_barrier	%r0,5           ; @0x14c
	brne_s	%r0,0,.LBB2_28          ; @0x150
;  BB#19:                               ; %while.body5.i.i.lr.ph21.i
	test_barrier	%r0,5           ; @0x152
	brne_s	%r0,0,.LBB2_28          ; @0x156
;  BB#20:                               ; %while.body5.i.i.i.preheader
	test_barrier	%r0,5           ; @0x158
	brne_s	%r0,0,.LBB2_28          ; @0x15c
;  BB#21:                               ; %while.body5.i.i.i.lr.ph
	test_barrier	%r0,5           ; @0x15e
	brne_s	%r0,0,.LBB2_28          ; @0x162
;  BB#22:                               ; %while.cond1.i.i.i.preheader
	mov_s	%r2,9                   ; @0x164
	mov_s	%r1,0x186a1             ; @0x166
.LBB2_23:                               ; %while.cond1.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x16c
	test_barrier	%r0,5           ; @0x16c
	brne_s	%r0,0,.LBB2_28          ; @0x170
;  BB#24:                               ; %while.body5.i.i.i
                                        ;   in Loop: Header=BB2_23 Depth=1
	add_s	%r2,%r2,1               ; @0x172
	brlo	%r2,%r1,.LBB2_23        ; @0x174
;  BB#25:                               ; %if.then8.i.i.i
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x178
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.15)/8 ; @0x17c
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x180
	mov_s	%r1,72                  ; @0x184
	mov_s	%r4,.L.str.17           ; @0x186
	bl	_gsi_log_fatal          ; @0x18c
.LBB2_28:                               ; %while.cond11.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x190
	mov_s	%r14,0xf0000300         ; @0x190
	ld.di	%r0,[%r14,0]            ; @0x196
	brlt	%r0,0,.LBB2_28          ; @0x19a
;  BB#29:                               ; %while.end15.i.i.i
	mov_s	%r0,0x82000000          ; @0x19e
	st.di	%r0,[%r14,0]            ; @0x1a4
	mov_s	%r21,0xf0000380         ; @0x1a8
.LBB2_30:                               ; %while.cond16.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1ae
	ld.di	%r1,[%r21,0]            ; @0x1ae
	brlt	%r1,0,.LBB2_30          ; @0x1b2
;  BB#31:                               ; %while.end21.i.i.i
	st.di	%r0,[%r21,0]            ; @0x1b6
	test_barrier	%r0,4           ; @0x1ba
	breq_s	%r0,0,.LBB2_43          ; @0x1be
;  BB#32:                               ; %while.body25.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0x1c0
	breq_s	%r0,0,.LBB2_43          ; @0x1c4
;  BB#33:                               ; %while.body25.lr.ph64.i.i.i
	test_barrier	%r0,4           ; @0x1c6
	breq_s	%r0,0,.LBB2_43          ; @0x1ca
;  BB#34:                               ; %while.body25.i.preheader.i.i
	test_barrier	%r0,4           ; @0x1cc
	breq_s	%r0,0,.LBB2_43          ; @0x1d0
;  BB#35:                               ; %while.body25.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0x1d2
	breq_s	%r0,0,.LBB2_43          ; @0x1d6
;  BB#36:                               ; %while.cond22.i.i.preheader.i
	test_barrier	%r0,4           ; @0x1d8
	breq_s	%r0,0,.LBB2_43          ; @0x1dc
;  BB#37:                               ; %while.body25.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x1de
	breq_s	%r0,0,.LBB2_43          ; @0x1e2
;  BB#38:                               ; %while.body25.i.i.lr.ph34.i
	test_barrier	%r0,4           ; @0x1e4
	breq_s	%r0,0,.LBB2_43          ; @0x1e8
;  BB#39:                               ; %while.body25.i.i.i.preheader
	test_barrier	%r0,4           ; @0x1ea
	breq_s	%r0,0,.LBB2_43          ; @0x1ee
;  BB#40:                               ; %while.body25.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x1f0
	breq_s	%r0,0,.LBB2_43          ; @0x1f4
;  BB#41:                               ; %while.cond22.i.i.i.preheader
	mov_s	%r2,9                   ; @0x1f6
	mov_s	%r1,0x186a1             ; @0x1f8
.LBB2_42:                               ; %while.cond22.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1fe
	test_barrier	%r0,4           ; @0x1fe
	breq_s	%r0,0,.LBB2_43          ; @0x202
;  BB#79:                               ; %while.body25.i.i.i
                                        ;   in Loop: Header=BB2_42 Depth=1
	add_s	%r2,%r2,1               ; @0x204
	brlo	%r2,%r1,.LBB2_42        ; @0x206
;  BB#80:                               ; %if.then28.i.i.i
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x20a
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.15)/8 ; @0x20e
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x212
	add3	%r4,%r18,(.L.str.18-.L.str.15)/8 ; @0x216
	mov_s	%r1,89                  ; @0x21a
	bl	_gsi_log_fatal          ; @0x21c
.LBB2_43:                               ; %while.cond31.preheader.i.i.i
                                        ; @0x220
	test_barrier	%r0,5           ; @0x220
	breq_s	%r0,0,.LBB2_51          ; @0x224
;  BB#44:                               ; %while.body34.lr.ph.i.i.i
	test_barrier	%r0,5           ; @0x226
	breq_s	%r0,0,.LBB2_51          ; @0x22a
;  BB#45:                               ; %while.body34.lr.ph51.i.i.i
	test_barrier	%r0,5           ; @0x22c
	breq_s	%r0,0,.LBB2_51          ; @0x230
;  BB#46:                               ; %while.body34.i.preheader.i.i
	test_barrier	%r0,5           ; @0x232
	breq_s	%r0,0,.LBB2_51          ; @0x236
;  BB#47:                               ; %while.body34.i.lr.ph.i.i
	test_barrier	%r0,5           ; @0x238
	breq_s	%r0,0,.LBB2_51          ; @0x23c
;  BB#48:                               ; %while.cond31.i.i.preheader.i
	test_barrier	%r0,5           ; @0x23e
	breq_s	%r0,0,.LBB2_51          ; @0x242
;  BB#49:                               ; %while.body34.i.i.lr.ph.i
	test_barrier	%r0,5           ; @0x244
	breq_s	%r0,0,.LBB2_51          ; @0x248
;  BB#50:                               ; %while.body34.i.i.lr.ph47.i
	test_barrier	%r0,5           ; @0x24a
	breq_s	%r0,0,.LBB2_51          ; @0x24e
;  BB#73:                               ; %while.body34.i.i.i.preheader
	test_barrier	%r0,5           ; @0x250
	breq_s	%r0,0,.LBB2_51          ; @0x254
;  BB#74:                               ; %while.body34.i.i.i.lr.ph
	test_barrier	%r0,5           ; @0x256
	breq_s	%r0,0,.LBB2_51          ; @0x25a
;  BB#75:                               ; %while.cond31.i.i.i.preheader
	mov_s	%r2,9                   ; @0x25c
	mov_s	%r1,0x186a1             ; @0x25e
.LBB2_76:                               ; %while.cond31.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x264
	test_barrier	%r0,5           ; @0x264
	breq_s	%r0,0,.LBB2_51          ; @0x268
;  BB#77:                               ; %while.body34.i.i.i
                                        ;   in Loop: Header=BB2_76 Depth=1
	add_s	%r2,%r2,1               ; @0x26a
	brlo	%r2,%r1,.LBB2_76        ; @0x26c
;  BB#78:                               ; %if.then37.i.i.i
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x270
	add3	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.15)/8 ; @0x274
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x278
	mov_s	%r1,94                  ; @0x27c
	mov_s	%r4,.L.str.19           ; @0x27e
	bl	_gsi_log_fatal          ; @0x284
.LBB2_51:                               ; %for.body.i.i.preheader
                                        ; @0x288
	mov_s	%r15,0                  ; @0x288
	mov_s	%r13,0                  ; @0x28a
.LBB2_52:                               ; %for.body.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x28c
	seteq	%r2,%r13,3              ; @0x28c
	mov_s	%r0,%r20                ; @0x290
	mov_s	%r1,%r13                ; @0x292
	mov_s	%r3,%r15                ; @0x294
	bl	gvml_store_vmr_16       ; @0x296
	add_s	%r15,%r15,2             ; @0x29a
	add_s	%r13,%r13,1             ; @0x29c
	brlo	%r13,4,.LBB2_52         ; @0x29e
;  BB#53:                               ; %my_dma_l1_to_l2_32k.exit.i
	test_barrier	%r0,4           ; @0x2a2
	brne	%r0,0,.LBB2_81          ; @0x2a6
;  BB#54:                               ; %while.body.lr.ph.i.i.i.i
	test_barrier	%r0,4           ; @0x2aa
	brne	%r0,0,.LBB2_81          ; @0x2ae
;  BB#55:                               ; %while.body.lr.ph14.i.i.i.i
	test_barrier	%r0,4           ; @0x2b2
	brne_s	%r0,0,.LBB2_81          ; @0x2b6
;  BB#56:                               ; %while.body.i.preheader.i.i.i
	test_barrier	%r0,4           ; @0x2b8
	brne_s	%r0,0,.LBB2_81          ; @0x2bc
;  BB#57:                               ; %while.body.i.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0x2be
	brne_s	%r0,0,.LBB2_81          ; @0x2c2
;  BB#58:                               ; %while.cond.i.preheader.i.i.i
	test_barrier	%r0,4           ; @0x2c4
	brne_s	%r0,0,.LBB2_81          ; @0x2c8
;  BB#59:                               ; %while.body.i.lr.ph31.i.i.i
	test_barrier	%r0,4           ; @0x2ca
	brne_s	%r0,0,.LBB2_81          ; @0x2ce
;  BB#60:                               ; %while.body.i.lr.ph36.i.i.i
	test_barrier	%r0,4           ; @0x2d0
	brne_s	%r0,0,.LBB2_81          ; @0x2d4
;  BB#61:                               ; %while.body.i.i.preheader.i.i
	test_barrier	%r0,4           ; @0x2d6
	brne_s	%r0,0,.LBB2_81          ; @0x2da
;  BB#62:                               ; %while.body.i.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0x2dc
	brne_s	%r0,0,.LBB2_81          ; @0x2e0
;  BB#63:                               ; %while.cond.i.i.i.preheader.i
	test_barrier	%r0,4           ; @0x2e2
	brne_s	%r0,0,.LBB2_81          ; @0x2e6
;  BB#64:                               ; %while.body.i.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x2e8
	brne_s	%r0,0,.LBB2_81          ; @0x2ec
;  BB#65:                               ; %while.body.i.i.i.lr.ph60.i
	test_barrier	%r0,4           ; @0x2ee
	brne_s	%r0,0,.LBB2_81          ; @0x2f2
;  BB#66:                               ; %while.body.i.i.i.i.preheader
	test_barrier	%r0,4           ; @0x2f4
	brne_s	%r0,0,.LBB2_81          ; @0x2f8
;  BB#67:                               ; %while.body.i.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x2fa
	brne_s	%r0,0,.LBB2_81          ; @0x2fe
;  BB#68:                               ; %while.cond.i.i.i.i.preheader
	mov_s	%r2,14                  ; @0x300
	mov_s	%r1,0x186a1             ; @0x302
.LBB2_69:                               ; %while.cond.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x308
	test_barrier	%r0,4           ; @0x308
	brne_s	%r0,0,.LBB2_81          ; @0x30c
;  BB#70:                               ; %while.body.i.i.i.i
                                        ;   in Loop: Header=BB2_69 Depth=1
	add_s	%r2,%r2,1               ; @0x30e
	brlo	%r2,%r1,.LBB2_69        ; @0x310
;  BB#71:                               ; %if.then9.i.i.i.i
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x314
	add2	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.15)/4 ; @0x318
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x31c
	mov	%r1,608                 ; @0x320
	mov_s	%r4,%r18                ; @0x324
	mov_s	%r5,.L.str.20           ; @0x326
	bl	_gsi_log_fatal          ; @0x32c
.LBB2_81:                               ; %while.cond10.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x330
	ld.di	%r0,[%r14,0]            ; @0x330
	brlt	%r0,0,.LBB2_81          ; @0x334
;  BB#82:                               ; %my_dma_l2_to_l4_16k.exit.i.i
	mov_s	%r0,0                   ; @0x338
	mov_s	%r1,0xf0000388          ; @0x33a
	st.di	%r0,[%r1,0]             ; @0x340
	st.di	%r16,[%r1,-120]         ; @0x344
	mov_s	%r2,0xef3f00c0          ; @0x348
	st.di	%r2,[%r14,0]            ; @0x34e
	add	%r16,%r16,32768         ; @0x352
	test_barrier	%r3,5           ; @0x35a
	brne	%r3,0,.LBB2_101         ; @0x35e
;  BB#83:                               ; %while.body21.lr.ph.i.i.i.i
	test_barrier	%r3,5           ; @0x362
	brne	%r3,0,.LBB2_101         ; @0x366
;  BB#84:                               ; %while.body21.lr.ph27.i.i.i.i
	test_barrier	%r3,5           ; @0x36a
	brne_s	%r3,0,.LBB2_101         ; @0x36e
;  BB#85:                               ; %while.body21.i.preheader.i.i.i
	test_barrier	%r3,5           ; @0x370
	brne_s	%r3,0,.LBB2_101         ; @0x374
;  BB#86:                               ; %while.body21.i.lr.ph.i.i.i
	test_barrier	%r3,5           ; @0x376
	brne_s	%r3,0,.LBB2_101         ; @0x37a
;  BB#87:                               ; %while.cond17.i.preheader.i.i.i
	test_barrier	%r3,5           ; @0x37c
	brne_s	%r3,0,.LBB2_101         ; @0x380
;  BB#88:                               ; %while.body21.i.lr.ph45.i.i.i
	test_barrier	%r3,5           ; @0x382
	brne_s	%r3,0,.LBB2_101         ; @0x386
;  BB#89:                               ; %while.body21.i.lr.ph50.i.i.i
	test_barrier	%r3,5           ; @0x388
	brne_s	%r3,0,.LBB2_101         ; @0x38c
;  BB#90:                               ; %while.body21.i.i.preheader.i.i
	test_barrier	%r3,5           ; @0x38e
	brne_s	%r3,0,.LBB2_101         ; @0x392
;  BB#91:                               ; %while.body21.i.i.lr.ph.i.i
	test_barrier	%r3,5           ; @0x394
	brne_s	%r3,0,.LBB2_101         ; @0x398
;  BB#92:                               ; %while.cond17.i.i.i.preheader.i
	test_barrier	%r3,5           ; @0x39a
	brne_s	%r3,0,.LBB2_101         ; @0x39e
;  BB#93:                               ; %while.body21.i.i.i.lr.ph.i
	test_barrier	%r3,5           ; @0x3a0
	brne_s	%r3,0,.LBB2_101         ; @0x3a4
;  BB#94:                               ; %while.body21.i.i.i.lr.ph73.i
	test_barrier	%r3,5           ; @0x3a6
	brne_s	%r3,0,.LBB2_101         ; @0x3aa
;  BB#95:                               ; %while.body21.i.i.i.i.preheader
	test_barrier	%r3,5           ; @0x3ac
	brne_s	%r3,0,.LBB2_101         ; @0x3b0
;  BB#96:                               ; %while.body21.i.i.i.i.lr.ph
	test_barrier	%r3,5           ; @0x3b2
	brne_s	%r3,0,.LBB2_101         ; @0x3b6
;  BB#97:                               ; %while.cond17.i.i.i.i.preheader
	mov_s	%r15,14                 ; @0x3b8
	mov_s	%r12,0x186a1            ; @0x3ba
.LBB2_98:                               ; %while.cond17.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x3c0
	test_barrier	%r3,5           ; @0x3c0
	brne_s	%r3,0,.LBB2_101         ; @0x3c4
;  BB#99:                               ; %while.body21.i.i.i.i
                                        ;   in Loop: Header=BB2_98 Depth=1
	add_s	%r15,%r15,1             ; @0x3c6
	brlo	%r15,%r12,.LBB2_98      ; @0x3c8
;  BB#100:                              ; %if.then25.i.i.i.i
	add3	%r0,%r18,(.L.str.9-.L.str.15)/8 ; @0x3cc
	add2	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.15)/4 ; @0x3d0
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x3d4
	mov	%r1,617                 ; @0x3d8
	mov_s	%r4,%r18                ; @0x3dc
	mov_s	%r5,.L.str.20           ; @0x3de
	bl	_gsi_log_fatal          ; @0x3e4
.LBB2_101:                              ; %while.cond28.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x3e8
	ld.di	%r3,[%r21,0]            ; @0x3e8
	brlt	%r3,0,.LBB2_101         ; @0x3ec
;  BB#102:                              ; %my_dma_l2_to_l4_16k.exit2.i.i
	st.di	%r0,[%r1,0]             ; @0x3f0
	st.di	%r16,[0xf0000390]       ; @0x3f4
	st.di	%r2,[%r21,0]            ; @0x3fc
.LBB2_103:                              ; %while.cond.i.i3.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x400
	ld.di	%r2,[%r14,0]            ; @0x400
	brlt	%r2,0,.LBB2_103         ; @0x404
;  BB#104:                              ; %while.end.i.i.i.i
	st.di	%r0,[0xf0000308]        ; @0x408
	ror	%r0,1                   ; @0x410
	st.di	%r0,[%r14,0]            ; @0x414
.LBB2_105:                              ; %while.cond1.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x418
	ld.di	%r2,[%r14,0]            ; @0x418
	brlt	%r2,0,.LBB2_105         ; @0x41c
.LBB2_106:                              ; %while.cond.i2.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x420
	ld.di	%r2,[%r21,0]            ; @0x420
	brlt	%r2,0,.LBB2_106         ; @0x424
;  BB#107:                              ; %while.end.i3.i.i.i
	st.di	0,[%r1,0]               ; @0x428
	st.di	%r0,[%r21,0]            ; @0x42c
.LBB2_108:                              ; %while.cond1.i5.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x430
	ld.di	%r0,[%r21,0]            ; @0x430
	brlt	%r0,0,.LBB2_108         ; @0x434
;  BB#109:                              ; %my_dma_l1_to_l4.exit
	add2	%r0,%r18,(.L.str-.L.str.15)/4 ; @0x438
	add2	%r5,%r18,(.L.str.8-.L.str.15)/4 ; @0x43c
	mov_s	%r1,106                 ; @0x440
	mov_s	%r2,%r19                ; @0x442
	mov_s	%r3,3                   ; @0x444
	mov_s	%r4,%r17                ; @0x446
	mov_s	%r6,%r20                ; @0x448
	bl	_gsi_log                ; @0x44a
	mov_s	%r0,0                   ; @0x44e
	ld	%blink,[%sp,36]         ; @0x450
	.cfa_restore	{%blink}        ; @0x454
	ld	%r21,[%sp,32]           ; @0x454
	.cfa_restore	{%r21}          ; @0x458
	ld	%r20,[%sp,28]           ; @0x458
	.cfa_restore	{%r20}          ; @0x45c
	ld	%r19,[%sp,24]           ; @0x45c
	.cfa_restore	{%r19}          ; @0x460
	ld	%r18,[%sp,20]           ; @0x460
	.cfa_restore	{%r18}          ; @0x464
	ld	%r17,[%sp,16]           ; @0x464
	.cfa_restore	{%r17}          ; @0x468
	ld	%r16,[%sp,12]           ; @0x468
	.cfa_restore	{%r16}          ; @0x46c
	ld_s	%r15,[%sp,8]            ; @0x46c
	.cfa_restore	{%r15}          ; @0x46e
	ld_s	%r14,[%sp,4]            ; @0x46e
	.cfa_restore	{%r14}          ; @0x470
	ld.ab	%r13,[%sp,40]           ; @0x470
	.cfa_restore	{%r13}          ; @0x474
	.cfa_pop	40              ; @0x474
	j_s	[%blink]                ; @0x474
	.cfa_ef
.Lfunc_end2:                            ; @0x476


