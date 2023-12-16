	.option	%reg
	.off	assume_short
	.file	"gsi_device_l1_static_test.c"
	.size	.L.str.15, 3
	.type	.L.str.15,@object
	.size	.L.str.1, 5
	.type	.L.str.1,@object
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
	.extInstruction test_barrier,0x07,0x03,SUFFIX_FLAG,SYNTAX_2OP
	.size	populate_task, .Lfunc_end1-populate_task
	.type	read_l1_task,@function
	.size	read_l1_task, .Lfunc_end2-read_l1_task
	.text
	.global	.CC_I
	.equ	.CC_I, 0
	.ident	"LLVM 15.0.7/U-2023.03. (build 003) (LLVM 15.0.7) -arcv2hs -core2 -Hrgf_banked_regs=32 -Xcode_density -Xswap -Xbitscan -Xshift_assist -Xbarrel_shifter -Xtimer0 -Hnosdata -Hpictable -Hpurge -Xmpy_option=mac -fno-short-enums -fbuiltin -std=gnu11 -O1"
	.assert2	$sectoff==0x0, "Expect offset 0x0 at " + $xtoa($sectoff)
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
	.asciz	"BITSCAN,BS,SWAP,CD,SA,NORM"
	.byte	18
	.byte	7                       ; MPY_OPTION
.LabiEnd0:                              ; @0x34
	.assert2	$sectoff==0x34, "Expect offset 0x34 at " + $xtoa($sectoff)
	.section	.rodata,"a",@progbits
.L.str.15:                              ; @0x0
	.asciz	"%s"
.L.str.1:                               ; @0x3
	.asciz	"INFO"
.L.str.14:                              ; @0x8
	.asciz	"FATAL"
.L.str.3:                               ; @0xe
	.asciz	"vr_size: %d"
.L__func__.read_l1_task:                ; @0x1a
	.asciz	"read_l1_task"
.L__func__.populate_task:               ; @0x27
	.asciz	"populate_task"
.L.str.6:                               ; @0x35
	.asciz	"Got vr_to_check: %d"
.L.str.5:                               ; @0x49
	.asciz	"Running read_l1_task"
.L.str.7:                               ; @0x5e
	.asciz	"starting l1_to_l4..."
.L.str.2:                               ; @0x73
	.asciz	"Running VM reg populate task"
.L__func__.gal_fast_l2dma_l2_to_mem_start: ; @0x90
	.asciz	"gal_fast_l2dma_l2_to_mem_start"
.L__func__.gal_fast_l2dma_mem_to_l2_start: ; @0xaf
	.asciz	"gal_fast_l2dma_mem_to_l2_start"
.L__func__.gal_fast_l2dma_l2_ready_rst_all: ; @0xce
	.asciz	"gal_fast_l2dma_l2_ready_rst_all"
.L.str.8:                               ; @0xee
	.asciz	"Finished reading GMVL_VM_%d to L4"
.L.str:                                 ; @0x110
	.asciz	"dev_src/gsi_device_l1_static_test.c"
.L.str.4:                               ; @0x134
	.asciz	"Populated GVML_VM_0 through GVML_VM_%d"
.L.str.9:                               ; @0x15b
	.asciz	"/usr/include/gsi/archs36/gsi/gal-fast-funcs.h"
.L.str.18:                              ; @0x189
	.asciz	"COND_L2_READY A timed out (fail to rst l2_ready)"
.L.str.19:                              ; @0x1ba
	.asciz	"COND_L2_READY B timed out (fail to rst l2_ready)"
.L.str.13:                              ; @0x1eb
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
.L.str.20:                              ; @0x24b
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_l2_to_mem_start)"
.L.str.16:                              ; @0x2ab
	.asciz	"COND_L2_READY A timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
.L.str.17:                              ; @0x30d
	.asciz	"COND_L2_READY B timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.assert2	$sectoff==0x36f, "Expect offset 0x36f at " + $xtoa($sectoff)
	.section	GSI_task_ep_names,"a",@progbits
	.align	4
read_l1_task__name:                     ; @0x0
	.asciz	"read_l1_task"
	.align	4
populate_task__name:                    ; @0x10
	.asciz	"populate_task"
	.assert2	$sectoff==0x1e, "Expect offset 0x1e at " + $xtoa($sectoff)
	.section	.text.gal_include_init_task,"ax",@progbits
	.align	4                       ; -- Begin function gal_include_init_task
gal_include_init_task:                  ; @gal_include_init_task
                                        ; @0x0
	.cfa_bf	gal_include_init_task
;  %bb.0:                               ; %entry
	push_s	%blink                  ; @0x0
	.cfa_push	{%blink}        ; @0x2
	bl	gal_call_init_task      ; @0x2
	ld	%blink,[%sp,0]          ; @0x6
	.cfa_restore	{%blink}        ; @0xa
	add_s	%sp,%sp,4               ; @0xa
	.cfa_pop	4               ; @0xc
	j_s	[%blink]                ; @0xc
	.cfa_ef
.Lfunc_end0:                            ; @0xe

	.assert2	$sectoff==0xe, "Expect offset 0xe at " + $xtoa($sectoff)
	.section	.text.populate_task,"ax",@progbits
	.align	4                       ; -- End function
                                        ; -- Begin function populate_task
populate_task:                          ; @populate_task
                                        ; @0x0
	.cfa_bf	populate_task
;  %bb.0:                               ; %entry
	sub_s	%sp,%sp,56              ; @0x0
	.cfa_push	56              ; @0x2
	st_s	%r13,[%sp,0]            ; @0x2
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
	st	%r25,[%sp,48]           ; @0x2c
	.cfa_reg_offset	{%r25}, 48      ; @0x30
	st	%blink,[%sp,52]         ; @0x30
	.cfa_reg_offset	{%blink}, 52    ; @0x34
	mov_s	%r18,.L.str.4           ; @0x34
	mov_s	%r19,.L__func__.populate_task ; @0x3a
	sub	%r17,%r18,.L.str.4-.L.str ; @0x40
	sub	%r16,%r19,.L__func__.populate_task-.L.str.1 ; @0x44
	mov_s	%r13,%r0                ; @0x48
	add1	%r5,%r19,(.L.str.2-.L__func__.populate_task)/2 ; @0x4a
	mov_s	%r0,%r17                ; @0x4e
	mov_s	%r1,40                  ; @0x50
	mov_s	%r2,%r19                ; @0x52
	mov_s	%r3,3                   ; @0x54
	mov_s	%r4,%r16                ; @0x56
	bl	_gsi_log                ; @0x58
	bl	gvml_init_once          ; @0x5c
	ldb_s	%r0,[%r13,1]            ; @0x60
	ldb_s	%r1,[%r13,0]            ; @0x62
	ldb_s	%r2,[%r13,2]            ; @0x64
	ldb_s	%r3,[%r13,6]            ; @0x66
	asl_s	%r0,%r0,8               ; @0x68
	or_s	%r0,%r0,%r1             ; @0x6a
	ldb_s	%r1,[%r13,3]            ; @0x6c
	asl_s	%r1,%r1,8               ; @0x6e
	or_s	%r1,%r1,%r2             ; @0x70
	asl_s	%r1,%r1,16              ; @0x72
	or_s	%r0,%r0,%r1             ; @0x74
	ldb_s	%r1,[%r13,5]            ; @0x76
	ldb_s	%r2,[%r13,4]            ; @0x78
	asl_s	%r1,%r1,8               ; @0x7a
	or_s	%r1,%r1,%r2             ; @0x7c
	ldb_s	%r2,[%r13,7]            ; @0x7e
	asl_s	%r2,%r2,8               ; @0x80
	or_s	%r2,%r2,%r3             ; @0x82
	asl_s	%r2,%r2,16              ; @0x84
	or_s	%r1,%r1,%r2             ; @0x86
	bl	gal_mem_handle_to_apu_ptr ; @0x88
	mov_s	%r21,%r0                ; @0x8c
	ldb_s	%r0,[%r13,17]           ; @0x8e
	ldb_s	%r1,[%r13,16]           ; @0x90
	ldb_s	%r2,[%r13,18]           ; @0x92
	ldb	%r20,[%r13,22]          ; @0x94
	asl_s	%r0,%r0,8               ; @0x98
	or_s	%r0,%r0,%r1             ; @0x9a
	ldb_s	%r1,[%r13,19]           ; @0x9c
	ldb_s	%r14,[%r13,23]          ; @0x9e
	ldb_s	%r15,[%r13,20]          ; @0xa0
	ldb_s	%r13,[%r13,21]          ; @0xa2
	asl_s	%r1,%r1,8               ; @0xa4
	or_s	%r1,%r1,%r2             ; @0xa6
	asl_s	%r1,%r1,16              ; @0xa8
	or	%r6,%r1,%r0             ; @0xaa
	sub	%r5,%r19,.L__func__.populate_task-.L.str.3 ; @0xae
	mov_s	%r0,%r17                ; @0xb2
	mov_s	%r1,54                  ; @0xb4
	mov_s	%r2,%r19                ; @0xb6
	mov_s	%r3,3                   ; @0xb8
	mov_s	%r4,%r16                ; @0xba
	bl	_gsi_log                ; @0xbc
	mov_s	%r22,0xf0000230@u32     ; @0xc0
	st	0,[%r22,0]              ; @0xc6
	test_barrier	%r0,4           ; @0xca
	asl_s	%r14,%r14,8             ; @0xce
	asl_s	%r13,%r13,8             ; @0xd0
	or	%r14,%r14,%r20          ; @0xd2
	or_s	%r13,%r13,%r15          ; @0xd6
	asl_s	%r14,%r14,16            ; @0xd8
	or	%r20,%r14,%r13          ; @0xda
	brne_s	%r0,0,.LBB1_5           ; @0xde
;  %bb.1:                               ; %while.body.i.i.i.preheader
	mov_s	%r2,-1                  ; @0xe0
	mov_s	%r0,0x186a1@u32         ; @0xe2
.LBB1_3:                                ; %while.body.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xe8
	add_s	%r2,%r2,1               ; @0xe8
	cmp_s	%r2,%r0                 ; @0xea
	bcc	.LBB1_4                 ; @0xec
;  %bb.2:                               ; %while.cond.i.i.i
                                        ;   in Loop: Header=BB1_3 Depth=1
	test_barrier	%r1,4           ; @0xf0
	breq_s	%r1,0,.LBB1_3           ; @0xf4
.LBB1_5:                                ; %while.cond10.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xf6
	mov_s	%r23,0xf0000300@u32     ; @0xf6
	ld.di	%r0,[%r23,0]            ; @0xfc
	brlt	%r0,0,.LBB1_5           ; @0x100
;  %bb.6:                               ; %my_dma_l4_to_l2_16k.exit.i
	mov_s	%r1,0xf0000308@u32      ; @0x104
	mov_s	%r2,0xff3f00c0@u32      ; @0x10a
	st.di	0,[%r1,0]               ; @0x110
	st.di	%r21,[%r1,8]            ; @0x114
	st.di	%r2,[%r23,0]            ; @0x118
	test_barrier	%r3,5           ; @0x11c
	add	%r0,%r21,0x8000@u32     ; @0x120
	brne_s	%r3,0,.LBB1_11          ; @0x128
;  %bb.7:                               ; %while.body21.i.i.i.preheader
	mov_s	%r15,-1                 ; @0x12a
	mov_s	%r3,0x186a1@u32         ; @0x12c
.LBB1_9:                                ; %while.body21.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x132
	add_s	%r15,%r15,1             ; @0x132
	cmp_s	%r15,%r3                ; @0x134
	bcc	.LBB1_10                ; @0x136
;  %bb.8:                               ; %while.cond17.i.i.i
                                        ;   in Loop: Header=BB1_9 Depth=1
	test_barrier	%r12,5          ; @0x13a
	breq_s	%r12,0,.LBB1_9          ; @0x13e
.LBB1_11:                               ; %while.cond28.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x140
	mov_s	%r21,0xf0000380@u32     ; @0x140
	ld.di	%r3,[%r21,0]            ; @0x146
	brlt	%r3,0,.LBB1_11          ; @0x14a
;  %bb.12:                              ; %my_dma_l4_to_l2_16k.exit2.i
	mov_s	%r3,0xf0000388@u32      ; @0x14e
	st.di	0,[%r3,0]               ; @0x154
	st.di	%r0,[%r3,8]             ; @0x158
	st.di	%r2,[%r21,0]            ; @0x15c
.LBB1_13:                               ; %while.cond.i.i3.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x160
	ld.di	%r0,[%r23,0]            ; @0x160
	brlt	%r0,0,.LBB1_13          ; @0x164
;  %bb.14:                              ; %while.end.i.i4.i
	mov_s	%r0,0                   ; @0x168
	bset_s	%r0,%r0,11              ; @0x16a
	mov_s	%r2,0x4af6e0@u32        ; @0x16c
	mov_s	%r12,0xd0000000@u32     ; @0x172
	st.di	%r0,[%r1,0]             ; @0x178
	st.di	%r2,[%r1,8]             ; @0x17c
	st.di	%r12,[%r23,0]           ; @0x180
.LBB1_15:                               ; %while.cond1.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x184
	ld.di	%r15,[%r23,0]           ; @0x184
	brlt	%r15,0,.LBB1_15         ; @0x188
;  %bb.16:                              ; %while.end6.i.i.i
	st.di	0,[%r1,0]               ; @0x18c
	ror	%r1,1                   ; @0x190
	st.di	%r1,[%r23,0]            ; @0x194
.LBB1_17:                               ; %while.cond7.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x198
	ld.di	%r15,[%r23,0]           ; @0x198
	brlt	%r15,0,.LBB1_17         ; @0x19c
.LBB1_18:                               ; %while.cond.i2.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1a0
	ld.di	%r15,[%r21,0]           ; @0x1a0
	brlt	%r15,0,.LBB1_18         ; @0x1a4
;  %bb.19:                              ; %while.end.i3.i.i
	st.di	%r0,[%r3,0]             ; @0x1a8
	st.di	%r2,[%r3,8]             ; @0x1ac
	st.di	%r12,[%r21,0]           ; @0x1b0
.LBB1_20:                               ; %while.cond1.i5.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1b4
	ld.di	%r0,[%r21,0]            ; @0x1b4
	brlt	%r0,0,.LBB1_20          ; @0x1b8
;  %bb.21:                              ; %while.end6.i6.i.i
	mov_s	%r13,0                  ; @0x1bc
	st.di	0,[%r3,0]               ; @0x1be
	st.di	%r1,[%r21,0]            ; @0x1c2
.LBB1_22:                               ; %while.cond7.i8.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1c6
	ld.di	%r0,[%r21,0]            ; @0x1c6
	brlt	%r0,0,.LBB1_22          ; @0x1ca
;  %bb.23:                              ; %for.body.preheader
	mov_s	%r24,0x186a1@u32        ; @0x1ce
	mov_s	%r25,0x82000000@u32     ; @0x1d4
.LBB1_24:                               ; %for.body
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_27 Depth 2
                                        ;     Child Loop BB1_32 Depth 2
                                        ;     Child Loop BB1_34 Depth 2
                                        ;     Child Loop BB1_36 Depth 2
                                        ;     Child Loop BB1_40 Depth 2
                                        ;     Child Loop BB1_45 Depth 2
                                        ;     Child Loop BB1_48 Depth 2
                                        ; @0x1da
	test_barrier	%r0,4           ; @0x1da
	brne_s	%r0,0,.LBB1_29          ; @0x1de
;  %bb.25:                              ; %while.body.i.i.preheader
                                        ;   in Loop: Header=BB1_24 Depth=1
	mov	%r1,-1                  ; @0x1e0
.LBB1_27:                               ; %while.body.i.i
                                        ;   Parent Loop BB1_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x1e4 AlignLabel LoopTop Freq=383
	add_s	%r1,%r1,1               ; @0x1e4
	cmp_s	%r1,%r24                ; @0x1e6
	bcc	.LBB1_28                ; @0x1e8
;  %bb.26:                              ; %while.cond.i.i
                                        ;   in Loop: Header=BB1_27 Depth=2
	test_barrier	%r0,4           ; @0x1ec
	breq_s	%r0,0,.LBB1_27          ; @0x1f0
.LBB1_29:                               ; %while.end.i.i
                                        ;   in Loop: Header=BB1_24 Depth=1
                                        ; @0x1f2
	test_barrier	%r0,5           ; @0x1f2
	brne_s	%r0,0,.LBB1_34          ; @0x1f6
;  %bb.30:                              ; %while.body5.i.i.preheader
                                        ;   in Loop: Header=BB1_24 Depth=1
	mov	%r1,-1                  ; @0x1f8
.LBB1_32:                               ; %while.body5.i.i
                                        ;   Parent Loop BB1_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x1fc AlignLabel LoopTop Freq=383
	add_s	%r1,%r1,1               ; @0x1fc
	cmp_s	%r1,%r24                ; @0x1fe
	bcc	.LBB1_33                ; @0x200
;  %bb.31:                              ; %while.cond1.i.i
                                        ;   in Loop: Header=BB1_32 Depth=2
	test_barrier	%r0,5           ; @0x204
	breq	%r0,0,.LBB1_32          ; @0x208
.LBB1_34:                               ; %while.cond11.i.i
                                        ;   Parent Loop BB1_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x20c AlignLabel LoopTop Freq=1022
	ld.di	%r0,[%r23,0]            ; @0x20c
	brlt	%r0,0,.LBB1_34          ; @0x210
;  %bb.35:                              ; %while.end15.i.i
                                        ;   in Loop: Header=BB1_24 Depth=1
	st.di	%r25,[%r23,0]           ; @0x214
.LBB1_36:                               ; %while.cond16.i.i
                                        ;   Parent Loop BB1_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x218 AlignLabel LoopTop Freq=1022
	ld.di	%r0,[%r21,0]            ; @0x218
	brlt	%r0,0,.LBB1_36          ; @0x21c
;  %bb.37:                              ; %while.end21.i.i
                                        ;   in Loop: Header=BB1_24 Depth=1
	st.di	%r25,[%r21,0]           ; @0x220
	test_barrier	%r0,4           ; @0x224
	breq_s	%r0,0,.LBB1_42          ; @0x228
;  %bb.38:                              ; %while.body25.i.i.preheader
                                        ;   in Loop: Header=BB1_24 Depth=1
	mov_s	%r1,-1                  ; @0x22a
.LBB1_40:                               ; %while.body25.i.i
                                        ;   Parent Loop BB1_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x22c AlignLabel LoopTop Freq=638
	add_s	%r1,%r1,1               ; @0x22c
	brhs	%r1,%r24,.LBB1_41       ; @0x22e
;  %bb.39:                              ; %while.cond22.i.i
                                        ;   in Loop: Header=BB1_40 Depth=2
	test_barrier	%r0,4           ; @0x232
	brne_s	%r0,0,.LBB1_40          ; @0x236
.LBB1_42:                               ; %while.end30.i.i
                                        ;   in Loop: Header=BB1_24 Depth=1
                                        ; @0x238
	test_barrier	%r0,5           ; @0x238
	breq_s	%r0,0,.LBB1_47          ; @0x23c
;  %bb.43:                              ; %while.body34.i.i.preheader
                                        ;   in Loop: Header=BB1_24 Depth=1
	mov_s	%r1,-1                  ; @0x23e
.LBB1_45:                               ; %while.body34.i.i
                                        ;   Parent Loop BB1_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x240 AlignLabel LoopTop Freq=638
	add_s	%r1,%r1,1               ; @0x240
	brhs	%r1,%r24,.LBB1_46       ; @0x242
;  %bb.44:                              ; %while.cond31.i.i
                                        ;   in Loop: Header=BB1_45 Depth=2
	test_barrier	%r0,5           ; @0x246
	brne_s	%r0,0,.LBB1_45          ; @0x24a
.LBB1_47:                               ; %for.body.i.preheader
                                        ;   in Loop: Header=BB1_24 Depth=1
                                        ; @0x24c
	mov_s	%r14,0                  ; @0x24c
	mov_s	%r15,0                  ; @0x24e
.LBB1_48:                               ; %for.body.i
                                        ;   Parent Loop BB1_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x250 AlignLabel LoopTop Freq=1021
	seteq	%r2,%r15,3              ; @0x250
	mov_s	%r0,%r13                ; @0x254
	mov_s	%r1,%r15                ; @0x256
	mov_s	%r3,%r14                ; @0x258
	bl	gvml_load_vmr_16        ; @0x25a
	add_s	%r14,%r14,2             ; @0x25e
	add_s	%r15,%r15,1             ; @0x260
	brlo	%r15,4,.LBB1_48         ; @0x262
;  %bb.49:                              ; %my_dma_l2_to_l1_32k.exit
                                        ;   in Loop: Header=BB1_24 Depth=1
	add_s	%r13,%r13,1             ; @0x266
	brlo	%r13,48,.LBB1_24        ; @0x268
;  %bb.50:                              ; %for.end
	sub	%r6,%r20,1              ; @0x26c
	mov_s	%r0,%r17                ; @0x270
	mov_s	%r1,82                  ; @0x272
	mov_s	%r2,%r19                ; @0x274
	mov_s	%r3,3                   ; @0x276
	mov_s	%r4,%r16                ; @0x278
	mov_s	%r5,%r18                ; @0x27a
	bl	_gsi_log                ; @0x27c
	ld_s	%r0,[%r22,0]            ; @0x280
	.cfa_remember_state             ; @0x282
	ld	%blink,[%sp,52]         ; @0x282
	.cfa_restore	{%blink}        ; @0x286
	ld	%r25,[%sp,48]           ; @0x286
	.cfa_restore	{%r25}          ; @0x28a
	ld	%r24,[%sp,44]           ; @0x28a
	.cfa_restore	{%r24}          ; @0x28e
	ld	%r23,[%sp,40]           ; @0x28e
	.cfa_restore	{%r23}          ; @0x292
	ld	%r22,[%sp,36]           ; @0x292
	.cfa_restore	{%r22}          ; @0x296
	ld	%r21,[%sp,32]           ; @0x296
	.cfa_restore	{%r21}          ; @0x29a
	ld	%r20,[%sp,28]           ; @0x29a
	.cfa_restore	{%r20}          ; @0x29e
	ld	%r19,[%sp,24]           ; @0x29e
	.cfa_restore	{%r19}          ; @0x2a2
	ld	%r18,[%sp,20]           ; @0x2a2
	.cfa_restore	{%r18}          ; @0x2a6
	ld	%r17,[%sp,16]           ; @0x2a6
	.cfa_restore	{%r17}          ; @0x2aa
	ld	%r16,[%sp,12]           ; @0x2aa
	.cfa_restore	{%r16}          ; @0x2ae
	ld_s	%r15,[%sp,8]            ; @0x2ae
	.cfa_restore	{%r15}          ; @0x2b0
	ld_s	%r14,[%sp,4]            ; @0x2b0
	.cfa_restore	{%r14}          ; @0x2b2
	ld_s	%r13,[%sp,0]            ; @0x2b2
	.cfa_restore	{%r13}          ; @0x2b4
	add_s	%sp,%sp,56              ; @0x2b4
	.cfa_pop	56              ; @0x2b6
	j_s	[%blink]                ; @0x2b6
	.cfa_restore_state              ; @0x2b8
.LBB1_41:                               ; %if.then28.i.i
                                        ; @0x2b8
	add	%r0,%r18,.L.str.9-.L.str.4 ; @0x2b8
	sub1	%r2,%r18,(.L.str.4-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0x2bc
	sub	%r3,%r19,.L__func__.populate_task-.L.str.14 ; @0x2c0
	mov_s	%r1,89                  ; @0x2c4
	mov_s	%r4,.L.str.18           ; @0x2c6
	bl	_gsi_log_fatal          ; @0x2cc
.LBB1_46:                               ; %if.then37.i.i
                                        ; @0x2d0
	add	%r0,%r18,.L.str.9-.L.str.4 ; @0x2d0
	sub1	%r2,%r18,(.L.str.4-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0x2d4
	sub	%r3,%r19,.L__func__.populate_task-.L.str.14 ; @0x2d8
	mov_s	%r1,94                  ; @0x2dc
	mov_s	%r4,.L.str.19           ; @0x2de
	bl	_gsi_log_fatal          ; @0x2e4
.LBB1_28:                               ; %if.then.i.i
                                        ; @0x2e8
	add	%r0,%r18,.L.str.9-.L.str.4 ; @0x2e8
	sub1	%r2,%r18,(.L.str.4-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0x2ec
	sub	%r3,%r19,.L__func__.populate_task-.L.str.14 ; @0x2f0
	mov_s	%r1,67                  ; @0x2f4
	mov_s	%r4,.L.str.16           ; @0x2f6
	bl	_gsi_log_fatal          ; @0x2fc
.LBB1_33:                               ; %if.then8.i.i
                                        ; @0x300
	add	%r0,%r18,.L.str.9-.L.str.4 ; @0x300
	sub1	%r2,%r18,(.L.str.4-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0x304
	sub	%r3,%r19,.L__func__.populate_task-.L.str.14 ; @0x308
	mov_s	%r1,72                  ; @0x30c
	mov_s	%r4,.L.str.17           ; @0x30e
	bl	_gsi_log_fatal          ; @0x314
.LBB1_4:                                ; %if.then9.i.i.i
                                        ; @0x318
	add	%r0,%r18,.L.str.9-.L.str.4 ; @0x318
	add2	%r2,%r19,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L__func__.populate_task)/4 ; @0x31c
	sub	%r3,%r19,.L__func__.populate_task-.L.str.14 ; @0x320
	sub	%r4,%r19,.L__func__.populate_task-.L.str.15 ; @0x324
	mov	%r1,328                 ; @0x328
	mov_s	%r5,.L.str.13           ; @0x32c
	bl	_gsi_log_fatal          ; @0x332
.LBB1_10:                               ; %if.then25.i.i.i
                                        ; @0x336
	add	%r0,%r18,.L.str.9-.L.str.4 ; @0x336
	add2	%r2,%r19,(.L__func__.gal_fast_l2dma_mem_to_l2_start-.L__func__.populate_task)/4 ; @0x33a
	sub	%r3,%r19,.L__func__.populate_task-.L.str.14 ; @0x33e
	sub	%r4,%r19,.L__func__.populate_task-.L.str.15 ; @0x342
	mov	%r1,337                 ; @0x346
	mov_s	%r5,.L.str.13           ; @0x34a
	bl	_gsi_log_fatal          ; @0x350
	.cfa_ef
.Lfunc_end1:                            ; @0x354

	.assert2	$sectoff==0x354, "Expect offset 0x354 at " + $xtoa($sectoff)
	.section	.text.read_l1_task,"ax",@progbits
	.align	4                       ; -- End function
                                        ; -- Begin function read_l1_task
read_l1_task:                           ; @read_l1_task
                                        ; @0x0
	.cfa_bf	read_l1_task
;  %bb.0:                               ; %entry
	sub_s	%sp,%sp,52              ; @0x0
	.cfa_push	52              ; @0x2
	st_s	%r13,[%sp,0]            ; @0x2
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
	mov_s	%r19,.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x30
	mov_s	%r18,.L.str.6           ; @0x36
	add2	%r21,%r19,(.L.str-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x3c
	sub	%r17,%r18,.L.str.6-.L__func__.read_l1_task ; @0x40
	sub	%r16,%r18,.L.str.6-.L.str.1 ; @0x44
	mov_s	%r13,%r0                ; @0x48
	add	%r5,%r18,.L.str.5-.L.str.6 ; @0x4a
	mov_s	%r0,%r21                ; @0x4e
	mov_s	%r1,97                  ; @0x50
	mov_s	%r2,%r17                ; @0x52
	mov_s	%r3,3                   ; @0x54
	mov_s	%r4,%r16                ; @0x56
	bl	_gsi_log                ; @0x58
	bl	gvml_init_once          ; @0x5c
	ldb_s	%r0,[%r13,29]           ; @0x60
	ldb_s	%r1,[%r13,28]           ; @0x62
	ldb_s	%r2,[%r13,30]           ; @0x64
	ldb	%r3,[%r13,34]           ; @0x66
	asl_s	%r0,%r0,8               ; @0x6a
	or_s	%r0,%r0,%r1             ; @0x6c
	ldb_s	%r1,[%r13,31]           ; @0x6e
	asl_s	%r1,%r1,8               ; @0x70
	or_s	%r1,%r1,%r2             ; @0x72
	asl_s	%r1,%r1,16              ; @0x74
	or_s	%r0,%r0,%r1             ; @0x76
	ldb	%r1,[%r13,33]           ; @0x78
	ldb	%r2,[%r13,32]           ; @0x7c
	asl_s	%r1,%r1,8               ; @0x80
	or_s	%r1,%r1,%r2             ; @0x82
	ldb	%r2,[%r13,35]           ; @0x84
	asl_s	%r2,%r2,8               ; @0x88
	or_s	%r2,%r2,%r3             ; @0x8a
	asl_s	%r2,%r2,16              ; @0x8c
	or_s	%r1,%r1,%r2             ; @0x8e
	bl	gal_mem_handle_to_apu_ptr ; @0x90
	mov_s	%r20,%r0                ; @0x94
	ldb_s	%r0,[%r13,25]           ; @0x96
	ldb_s	%r2,[%r13,27]           ; @0x98
	ldb_s	%r1,[%r13,24]           ; @0x9a
	mov_s	%r3,3                   ; @0x9c
	asl_s	%r0,%r0,8               ; @0x9e
	or_s	%r0,%r0,%r1             ; @0xa0
	ldb_s	%r1,[%r13,26]           ; @0xa2
	asl_s	%r2,%r2,8               ; @0xa4
	or_s	%r1,%r1,%r2             ; @0xa6
	asl_s	%r1,%r1,16              ; @0xa8
	or	%r23,%r1,%r0            ; @0xaa
	mov_s	%r0,%r21                ; @0xae
	mov_s	%r1,112                 ; @0xb0
	mov_s	%r2,%r17                ; @0xb2
	mov_s	%r4,%r16                ; @0xb4
	mov_s	%r5,%r18                ; @0xb6
	mov_s	%r6,%r23                ; @0xb8
	bl	_gsi_log                ; @0xba
	add	%r5,%r18,.L.str.7-.L.str.6 ; @0xbe
	mov_s	%r0,%r21                ; @0xc2
	mov_s	%r1,118                 ; @0xc4
	mov_s	%r2,%r17                ; @0xc6
	mov_s	%r3,3                   ; @0xc8
	mov_s	%r4,%r16                ; @0xca
	bl	_gsi_log                ; @0xcc
	test_barrier	%r0,4           ; @0xd0
	brne_s	%r0,0,.LBB2_4           ; @0xd4
;  %bb.1:                               ; %while.body.i.i.i.preheader
	mov_s	%r2,-1                  ; @0xd6
	mov_s	%r0,0x186a1@u32         ; @0xd8
.LBB2_2:                                ; %while.body.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xde
	add_s	%r2,%r2,1               ; @0xde
	cmp_s	%r2,%r0                 ; @0xe0
	bcc	.LBB2_45                ; @0xe2
;  %bb.3:                               ; %while.cond.i.i.i
                                        ;   in Loop: Header=BB2_2 Depth=1
	test_barrier	%r1,4           ; @0xe6
	breq_s	%r1,0,.LBB2_2           ; @0xea
.LBB2_4:                                ; %while.end.i.i.i
                                        ; @0xec
	test_barrier	%r0,5           ; @0xec
	add	%r22,%r20,0x8000@u32    ; @0xf0
	brne_s	%r0,0,.LBB2_8           ; @0xf8
;  %bb.5:                               ; %while.body5.i.i.i.preheader
	mov_s	%r2,-1                  ; @0xfa
	mov_s	%r0,0x186a1@u32         ; @0xfc
.LBB2_6:                                ; %while.body5.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x102
	add_s	%r2,%r2,1               ; @0x102
	cmp_s	%r2,%r0                 ; @0x104
	bcc	.LBB2_46                ; @0x106
;  %bb.7:                               ; %while.cond1.i.i.i
                                        ;   in Loop: Header=BB2_6 Depth=1
	test_barrier	%r1,5           ; @0x10a
	breq_s	%r1,0,.LBB2_6           ; @0x10e
.LBB2_8:                                ; %while.cond11.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x110
	mov_s	%r13,0xf0000300@u32     ; @0x110
	ld.di	%r0,[%r13,0]            ; @0x116
	brlt	%r0,0,.LBB2_8           ; @0x11a
;  %bb.9:                               ; %while.end15.i.i.i
	mov_s	%r0,0x82000000@u32      ; @0x11e
	mov_s	%r24,0xf0000380@u32     ; @0x124
	st.di	%r0,[%r13,0]            ; @0x12a
.LBB2_10:                               ; %while.cond16.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x12e
	ld.di	%r1,[%r24,0]            ; @0x12e
	brlt	%r1,0,.LBB2_10          ; @0x132
;  %bb.11:                              ; %while.end21.i.i.i
	st.di	%r0,[%r24,0]            ; @0x136
	test_barrier	%r0,4           ; @0x13a
	breq_s	%r0,0,.LBB2_15          ; @0x13e
;  %bb.12:                              ; %while.body25.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x140
	mov_s	%r0,0x186a1@u32         ; @0x142
.LBB2_13:                               ; %while.body25.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x148
	add_s	%r2,%r2,1               ; @0x148
	cmp_s	%r2,%r0                 ; @0x14a
	bcc	.LBB2_43                ; @0x14c
;  %bb.14:                              ; %while.cond22.i.i.i
                                        ;   in Loop: Header=BB2_13 Depth=1
	test_barrier	%r1,4           ; @0x150
	brne_s	%r1,0,.LBB2_13          ; @0x154
.LBB2_15:                               ; %while.end30.i.i.i
                                        ; @0x156
	test_barrier	%r0,5           ; @0x156
	breq_s	%r0,0,.LBB2_19          ; @0x15a
;  %bb.16:                              ; %while.body34.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x15c
	mov_s	%r0,0x186a1@u32         ; @0x15e
.LBB2_17:                               ; %while.body34.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x164
	add_s	%r2,%r2,1               ; @0x164
	cmp_s	%r2,%r0                 ; @0x166
	bcc	.LBB2_44                ; @0x168
;  %bb.18:                              ; %while.cond31.i.i.i
                                        ;   in Loop: Header=BB2_17 Depth=1
	test_barrier	%r1,5           ; @0x16c
	brne_s	%r1,0,.LBB2_17          ; @0x170
.LBB2_19:                               ; %for.body.i.i.preheader
                                        ; @0x172
	mov_s	%r15,0                  ; @0x172
	mov_s	%r14,0                  ; @0x174
.LBB2_20:                               ; %for.body.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x176
	seteq	%r2,%r14,3              ; @0x176
	mov_s	%r0,%r23                ; @0x17a
	mov_s	%r1,%r14                ; @0x17c
	mov_s	%r3,%r15                ; @0x17e
	bl	gvml_store_vmr_16       ; @0x180
	add_s	%r15,%r15,2             ; @0x184
	add_s	%r14,%r14,1             ; @0x186
	brlo	%r14,4,.LBB2_20         ; @0x188
;  %bb.21:                              ; %my_dma_l1_to_l2_32k.exit.i
	test_barrier	%r0,4           ; @0x18c
	brne_s	%r0,0,.LBB2_25          ; @0x190
;  %bb.22:                              ; %while.body.i.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x192
	mov_s	%r0,0x186a1@u32         ; @0x194
.LBB2_23:                               ; %while.body.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x19a
	add_s	%r2,%r2,1               ; @0x19a
	cmp_s	%r2,%r0                 ; @0x19c
	bcc	.LBB2_47                ; @0x19e
;  %bb.24:                              ; %while.cond.i.i.i.i
                                        ;   in Loop: Header=BB2_23 Depth=1
	test_barrier	%r1,4           ; @0x1a2
	breq_s	%r1,0,.LBB2_23          ; @0x1a6
.LBB2_25:                               ; %while.cond10.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1a8
	ld.di	%r0,[%r13,0]            ; @0x1a8
	brlt	%r0,0,.LBB2_25          ; @0x1ac
;  %bb.26:                              ; %my_dma_l2_to_l4_16k.exit.i.i
	mov_s	%r0,0xf0000388@u32      ; @0x1b0
	mov_s	%r1,0xef3f00c0@u32      ; @0x1b6
	st.di	0,[%r0,0]               ; @0x1bc
	st.di	%r20,[%r0,-120]         ; @0x1c0
	st.di	%r1,[%r13,0]            ; @0x1c4
	test_barrier	%r2,5           ; @0x1c8
	brne_s	%r2,0,.LBB2_30          ; @0x1cc
;  %bb.27:                              ; %while.body21.i.i.i.i.preheader
	mov_s	%r12,-1                 ; @0x1ce
	mov_s	%r2,0x186a1@u32         ; @0x1d0
.LBB2_28:                               ; %while.body21.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1d6
	add_s	%r12,%r12,1             ; @0x1d6
	cmp_s	%r12,%r2                ; @0x1d8
	bcc	.LBB2_49                ; @0x1da
;  %bb.29:                              ; %while.cond17.i.i.i.i
                                        ;   in Loop: Header=BB2_28 Depth=1
	test_barrier	%r3,5           ; @0x1de
	breq_s	%r3,0,.LBB2_28          ; @0x1e2
.LBB2_30:                               ; %while.cond28.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1e4
	ld.di	%r2,[%r24,0]            ; @0x1e4
	brlt	%r2,0,.LBB2_30          ; @0x1e8
;  %bb.31:                              ; %my_dma_l2_to_l4_16k.exit2.i.i
	mov_s	%r2,0xf0000390@u32      ; @0x1ec
	st.di	0,[%r0,0]               ; @0x1f2
	st.di	%r22,[%r2,0]            ; @0x1f6
	st.di	%r1,[%r24,0]            ; @0x1fa
.LBB2_32:                               ; %while.cond.i.i3.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1fe
	ld.di	%r1,[%r13,0]            ; @0x1fe
	brlt	%r1,0,.LBB2_32          ; @0x202
;  %bb.33:                              ; %while.end.i.i4.i.i
	mov_s	%r1,0                   ; @0x206
	bset_s	%r1,%r1,11              ; @0x208
	mov_s	%r3,0xf0000308@u32      ; @0x20a
	mov_s	%r12,0x4af6e0@u32       ; @0x210
	mov_s	%r15,0xd0000000@u32     ; @0x216
	st.di	%r1,[%r3,0]             ; @0x21c
	st.di	%r12,[%r0,-120]         ; @0x220
	st.di	%r15,[%r13,0]           ; @0x224
.LBB2_34:                               ; %while.cond1.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x228
	ld.di	%r14,[%r13,0]           ; @0x228
	brlt	%r14,0,.LBB2_34         ; @0x22c
;  %bb.35:                              ; %while.end6.i.i.i.i
	st.di	0,[%r3,0]               ; @0x230
	ror	%r3,1                   ; @0x234
	st.di	%r3,[%r13,0]            ; @0x238
.LBB2_36:                               ; %while.cond7.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x23c
	ld.di	%r14,[%r13,0]           ; @0x23c
	brlt	%r14,0,.LBB2_36         ; @0x240
.LBB2_37:                               ; %while.cond.i2.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x244
	ld.di	%r14,[%r24,0]           ; @0x244
	brlt	%r14,0,.LBB2_37         ; @0x248
;  %bb.38:                              ; %while.end.i3.i.i.i
	st.di	%r1,[%r0,0]             ; @0x24c
	st.di	%r12,[%r2,0]            ; @0x250
	st.di	%r15,[%r24,0]           ; @0x254
.LBB2_39:                               ; %while.cond1.i5.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x258
	ld.di	%r1,[%r24,0]            ; @0x258
	brlt	%r1,0,.LBB2_39          ; @0x25c
;  %bb.40:                              ; %while.end6.i6.i.i.i
	st.di	0,[%r0,0]               ; @0x260
	st.di	%r3,[%r24,0]            ; @0x264
.LBB2_41:                               ; %while.cond7.i8.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x268
	ld.di	%r0,[%r24,0]            ; @0x268
	brlt	%r0,0,.LBB2_41          ; @0x26c
;  %bb.42:                              ; %my_dma_l1_to_l4.exit
	add	%r19,%r19,.L.str.8-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x270
	mov_s	%r0,%r21                ; @0x274
	mov_s	%r1,122                 ; @0x276
	mov_s	%r2,%r17                ; @0x278
	mov_s	%r3,3                   ; @0x27a
	mov_s	%r4,%r16                ; @0x27c
	mov_s	%r5,%r19                ; @0x27e
	mov_s	%r6,%r23                ; @0x280
	bl	_gsi_log                ; @0x282
	mov_s	%r0,0                   ; @0x286
	.cfa_remember_state             ; @0x288
	ld	%blink,[%sp,48]         ; @0x288
	.cfa_restore	{%blink}        ; @0x28c
	ld	%r24,[%sp,44]           ; @0x28c
	.cfa_restore	{%r24}          ; @0x290
	ld	%r23,[%sp,40]           ; @0x290
	.cfa_restore	{%r23}          ; @0x294
	ld	%r22,[%sp,36]           ; @0x294
	.cfa_restore	{%r22}          ; @0x298
	ld	%r21,[%sp,32]           ; @0x298
	.cfa_restore	{%r21}          ; @0x29c
	ld	%r20,[%sp,28]           ; @0x29c
	.cfa_restore	{%r20}          ; @0x2a0
	ld	%r19,[%sp,24]           ; @0x2a0
	.cfa_restore	{%r19}          ; @0x2a4
	ld	%r18,[%sp,20]           ; @0x2a4
	.cfa_restore	{%r18}          ; @0x2a8
	ld	%r17,[%sp,16]           ; @0x2a8
	.cfa_restore	{%r17}          ; @0x2ac
	ld	%r16,[%sp,12]           ; @0x2ac
	.cfa_restore	{%r16}          ; @0x2b0
	ld_s	%r15,[%sp,8]            ; @0x2b0
	.cfa_restore	{%r15}          ; @0x2b2
	ld_s	%r14,[%sp,4]            ; @0x2b2
	.cfa_restore	{%r14}          ; @0x2b4
	ld_s	%r13,[%sp,0]            ; @0x2b4
	.cfa_restore	{%r13}          ; @0x2b6
	add_s	%sp,%sp,52              ; @0x2b6
	.cfa_pop	52              ; @0x2b8
	j_s	[%blink]                ; @0x2b8
	.cfa_restore_state              ; @0x2ba
.LBB2_43:                               ; %if.then28.i.i.i
                                        ; @0x2ba
	mov_s	%r0,.L.str.9            ; @0x2ba
	add	%r2,%r19,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x2c0
	sub	%r3,%r18,.L.str.6-.L.str.14 ; @0x2c4
	add	%r4,%r0,.L.str.18-.L.str.9 ; @0x2c8
	mov_s	%r1,89                  ; @0x2cc
	bl	_gsi_log_fatal          ; @0x2ce
.LBB2_44:                               ; %if.then37.i.i.i
                                        ; @0x2d2
	add	%r2,%r19,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x2d2
	sub	%r3,%r18,.L.str.6-.L.str.14 ; @0x2d6
	mov_s	%r0,.L.str.9            ; @0x2da
	mov_s	%r1,94                  ; @0x2e0
	mov_s	%r4,.L.str.19           ; @0x2e2
	bl	_gsi_log_fatal          ; @0x2e8
.LBB2_45:                               ; %if.then.i.i.i
                                        ; @0x2ec
	add	%r2,%r19,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x2ec
	sub	%r3,%r18,.L.str.6-.L.str.14 ; @0x2f0
	mov_s	%r0,.L.str.9            ; @0x2f4
	mov_s	%r1,67                  ; @0x2fa
	mov_s	%r4,.L.str.16           ; @0x2fc
	bl	_gsi_log_fatal          ; @0x302
.LBB2_46:                               ; %if.then8.i.i.i
                                        ; @0x306
	add	%r2,%r19,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x306
	sub	%r3,%r18,.L.str.6-.L.str.14 ; @0x30a
	mov_s	%r0,.L.str.9            ; @0x30e
	mov_s	%r1,72                  ; @0x314
	mov_s	%r4,.L.str.17           ; @0x316
	bl	_gsi_log_fatal          ; @0x31c
.LBB2_47:                               ; %if.then9.i.i.i.i
                                        ; @0x320
	sub	%r3,%r18,.L.str.6-.L.str.14 ; @0x320
	sub	%r4,%r18,.L.str.6-.L.str.15 ; @0x324
	mov_s	%r0,.L.str.9            ; @0x328
	mov	%r1,610                 ; @0x32e
	b_s	.LBB2_48                ; @0x332
.LBB2_49:                               ; %if.then25.i.i.i.i
                                        ; @0x334
	sub	%r3,%r18,.L.str.6-.L.str.14 ; @0x334
	sub	%r4,%r18,.L.str.6-.L.str.15 ; @0x338
	mov_s	%r0,.L.str.9            ; @0x33c
	mov	%r1,619                 ; @0x342
.LBB2_48:                               ; %if.then9.i.i.i.i
                                        ; @0x346
	mov_s	%r2,%r19                ; @0x346
	mov_s	%r5,.L.str.20           ; @0x348
	bl	_gsi_log_fatal          ; @0x34e
	.cfa_ef
.Lfunc_end2:                            ; @0x352

	.assert2	$sectoff==0x352, "Expect offset 0x352 at " + $xtoa($sectoff)
