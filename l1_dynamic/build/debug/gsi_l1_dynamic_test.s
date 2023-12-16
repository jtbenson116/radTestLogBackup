	.option	%reg
	.off	assume_short
	.file	"gsi_l1_dynamic_test.c"
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
	.size	.L.str.7, 18
	.type	.L.str.7,@object
	.size	.L.str.6, 20
	.type	.L.str.6,@object
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
.L.str.7:                               ; @0x35
	.asciz	"starting l1_to_l4"
.L.str.6:                               ; @0x47
	.asciz	"Got vr_to_check: %d"
.L.str.5:                               ; @0x5b
	.asciz	"Running read_l1_task"
.L.str.8:                               ; @0x70
	.asciz	"Read GMVL_VM_%d to L4"
.L.str.2:                               ; @0x86
	.asciz	"Running VM reg populate task"
.L.str:                                 ; @0xa3
	.asciz	"dev_src/gsi_l1_dynamic_test.c"
.L__func__.gal_fast_l2dma_l2_to_mem_start: ; @0xc1
	.asciz	"gal_fast_l2dma_l2_to_mem_start"
.L__func__.gal_fast_l2dma_mem_to_l2_start: ; @0xe0
	.asciz	"gal_fast_l2dma_mem_to_l2_start"
.L__func__.gal_fast_l2dma_l2_ready_rst_all: ; @0xff
	.asciz	"gal_fast_l2dma_l2_ready_rst_all"
.L.str.4:                               ; @0x11f
	.asciz	"Populated GVML_VM_0 through GVML_VM_%d"
.L.str.9:                               ; @0x146
	.asciz	"/usr/include/gsi/archs36/gsi/gal-fast-funcs.h"
.L.str.18:                              ; @0x174
	.asciz	"COND_L2_READY A timed out (fail to rst l2_ready)"
.L.str.19:                              ; @0x1a5
	.asciz	"COND_L2_READY B timed out (fail to rst l2_ready)"
.L.str.13:                              ; @0x1d6
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
.L.str.20:                              ; @0x236
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_l2_to_mem_start)"
.L.str.16:                              ; @0x296
	.asciz	"COND_L2_READY A timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
.L.str.17:                              ; @0x2f8
	.asciz	"COND_L2_READY B timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.assert2	$sectoff==0x35a, "Expect offset 0x35a at " + $xtoa($sectoff)
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
	sub_s	%sp,%sp,60              ; @0x0
	.cfa_push	60              ; @0x2
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
	st	%fp,[%sp,52]            ; @0x30
	.cfa_reg_offset	{%fp}, 52       ; @0x34
	st	%blink,[%sp,56]         ; @0x34
	.cfa_reg_offset	{%blink}, 56    ; @0x38
	mov_s	%r19,.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x38
	mov_s	%r18,.L.str.15          ; @0x3e
	sub	%r20,%r19,.L__func__.gal_fast_l2dma_mem_to_l2_start-.L.str ; @0x44
	add	%r17,%r18,.L__func__.populate_task-.L.str.15 ; @0x48
	add	%r16,%r18,.L.str.1-.L.str.15 ; @0x4c
	mov_s	%r5,%r19                ; @0x50
	mov_s	%r13,%r0                ; @0x52
	add	%r5,%r5,.L.str.2-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x54
	mov_s	%r0,%r20                ; @0x58
	mov_s	%r1,39                  ; @0x5a
	mov_s	%r2,%r17                ; @0x5c
	mov_s	%r3,3                   ; @0x5e
	mov_s	%r4,%r16                ; @0x60
	bl	_gsi_log                ; @0x62
	bl	gvml_init_once          ; @0x66
	ldb_s	%r0,[%r13,1]            ; @0x6a
	ldb_s	%r1,[%r13,0]            ; @0x6c
	ldb_s	%r2,[%r13,2]            ; @0x6e
	ldb_s	%r3,[%r13,6]            ; @0x70
	asl_s	%r0,%r0,8               ; @0x72
	or_s	%r0,%r0,%r1             ; @0x74
	ldb_s	%r1,[%r13,3]            ; @0x76
	asl_s	%r1,%r1,8               ; @0x78
	or_s	%r1,%r1,%r2             ; @0x7a
	asl_s	%r1,%r1,16              ; @0x7c
	or_s	%r0,%r0,%r1             ; @0x7e
	ldb_s	%r1,[%r13,5]            ; @0x80
	ldb_s	%r2,[%r13,4]            ; @0x82
	asl_s	%r1,%r1,8               ; @0x84
	or_s	%r1,%r1,%r2             ; @0x86
	ldb_s	%r2,[%r13,7]            ; @0x88
	asl_s	%r2,%r2,8               ; @0x8a
	or_s	%r2,%r2,%r3             ; @0x8c
	asl_s	%r2,%r2,16              ; @0x8e
	or_s	%r1,%r1,%r2             ; @0x90
	bl	gal_mem_handle_to_apu_ptr ; @0x92
	mov_s	%r22,%r0                ; @0x96
	ldb_s	%r0,[%r13,17]           ; @0x98
	ldb_s	%r1,[%r13,16]           ; @0x9a
	ldb_s	%r2,[%r13,18]           ; @0x9c
	ldb	%r21,[%r13,22]          ; @0x9e
	asl_s	%r0,%r0,8               ; @0xa2
	or_s	%r0,%r0,%r1             ; @0xa4
	ldb_s	%r1,[%r13,19]           ; @0xa6
	ldb_s	%r15,[%r13,23]          ; @0xa8
	ldb_s	%r14,[%r13,20]          ; @0xaa
	ldb_s	%r13,[%r13,21]          ; @0xac
	asl_s	%r1,%r1,8               ; @0xae
	or_s	%r1,%r1,%r2             ; @0xb0
	asl_s	%r1,%r1,16              ; @0xb2
	or	%r6,%r1,%r0             ; @0xb4
	add	%r5,%r18,.L.str.3-.L.str.15 ; @0xb8
	mov_s	%r0,%r20                ; @0xbc
	mov_s	%r1,53                  ; @0xbe
	mov_s	%r2,%r17                ; @0xc0
	mov_s	%r3,3                   ; @0xc2
	mov_s	%r4,%r16                ; @0xc4
	bl	_gsi_log                ; @0xc6
	mov_s	%r23,0xf0000230@u32     ; @0xca
	st	0,[%r23,0]              ; @0xd0
	test_barrier	%r0,4           ; @0xd4
	asl_s	%r15,%r15,8             ; @0xd8
	asl_s	%r13,%r13,8             ; @0xda
	or	%r15,%r15,%r21          ; @0xdc
	or_s	%r13,%r13,%r14          ; @0xe0
	asl_s	%r15,%r15,16            ; @0xe2
	or	%r21,%r15,%r13          ; @0xe4
	brne_s	%r0,0,.LBB1_4           ; @0xe8
;  %bb.1:                               ; %while.body.i.i.i.preheader
	mov_s	%r2,-1                  ; @0xea
	mov_s	%r0,0x186a1@u32         ; @0xec
.LBB1_2:                                ; %while.body.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xf2
	add_s	%r2,%r2,1               ; @0xf2
	cmp_s	%r2,%r0                 ; @0xf4
	bcc	.LBB1_49                ; @0xf6
;  %bb.3:                               ; %while.cond.i.i.i
                                        ;   in Loop: Header=BB1_2 Depth=1
	test_barrier	%r1,4           ; @0xfa
	breq_s	%r1,0,.LBB1_2           ; @0xfe
.LBB1_4:                                ; %while.cond10.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x100
	mov_s	%r24,0xf0000300@u32     ; @0x100
	ld.di	%r0,[%r24,0]            ; @0x106
	brlt	%r0,0,.LBB1_4           ; @0x10a
;  %bb.5:                               ; %my_dma_l4_to_l2_16k.exit.i
	mov_s	%r1,0xf0000308@u32      ; @0x10e
	mov_s	%r2,0xff3f00c0@u32      ; @0x114
	st.di	0,[%r1,0]               ; @0x11a
	st.di	%r22,[%r1,8]            ; @0x11e
	st.di	%r2,[%r24,0]            ; @0x122
	test_barrier	%r3,5           ; @0x126
	add	%r0,%r22,0x8000@u32     ; @0x12a
	brne_s	%r3,0,.LBB1_9           ; @0x132
;  %bb.6:                               ; %while.body21.i.i.i.preheader
	mov_s	%r15,-1                 ; @0x134
	mov_s	%r3,0x186a1@u32         ; @0x136
.LBB1_7:                                ; %while.body21.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x13c
	add_s	%r15,%r15,1             ; @0x13c
	cmp_s	%r15,%r3                ; @0x13e
	bcc	.LBB1_51                ; @0x140
;  %bb.8:                               ; %while.cond17.i.i.i
                                        ;   in Loop: Header=BB1_7 Depth=1
	test_barrier	%r12,5          ; @0x144
	breq_s	%r12,0,.LBB1_7          ; @0x148
.LBB1_9:                                ; %while.cond28.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x14a
	mov_s	%r22,0xf0000380@u32     ; @0x14a
	ld.di	%r3,[%r22,0]            ; @0x150
	brlt	%r3,0,.LBB1_9           ; @0x154
;  %bb.10:                              ; %my_dma_l4_to_l2_16k.exit2.i
	mov_s	%r3,0xf0000388@u32      ; @0x158
	st.di	0,[%r3,0]               ; @0x15e
	st.di	%r0,[%r3,8]             ; @0x162
	st.di	%r2,[%r22,0]            ; @0x166
.LBB1_11:                               ; %while.cond.i.i3.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x16a
	ld.di	%r0,[%r24,0]            ; @0x16a
	brlt	%r0,0,.LBB1_11          ; @0x16e
;  %bb.12:                              ; %while.end.i.i4.i
	mov_s	%r0,0                   ; @0x172
	bset_s	%r0,%r0,11              ; @0x174
	mov_s	%r2,0x4af6e0@u32        ; @0x176
	mov_s	%r12,0xd0000000@u32     ; @0x17c
	st.di	%r0,[%r1,0]             ; @0x182
	st.di	%r2,[%r1,8]             ; @0x186
	st.di	%r12,[%r24,0]           ; @0x18a
.LBB1_13:                               ; %while.cond1.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x18e
	ld.di	%r15,[%r24,0]           ; @0x18e
	brlt	%r15,0,.LBB1_13         ; @0x192
;  %bb.14:                              ; %while.end6.i.i.i
	st.di	0,[%r1,0]               ; @0x196
	ror	%r1,1                   ; @0x19a
	st.di	%r1,[%r24,0]            ; @0x19e
.LBB1_15:                               ; %while.cond7.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1a2
	ld.di	%r15,[%r24,0]           ; @0x1a2
	brlt	%r15,0,.LBB1_15         ; @0x1a6
.LBB1_16:                               ; %while.cond.i2.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1aa
	ld.di	%r15,[%r22,0]           ; @0x1aa
	brlt	%r15,0,.LBB1_16         ; @0x1ae
;  %bb.17:                              ; %while.end.i3.i.i
	st.di	%r0,[%r3,0]             ; @0x1b2
	st.di	%r2,[%r3,8]             ; @0x1b6
	st.di	%r12,[%r22,0]           ; @0x1ba
.LBB1_18:                               ; %while.cond1.i5.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1be
	ld.di	%r0,[%r22,0]            ; @0x1be
	brlt	%r0,0,.LBB1_18          ; @0x1c2
;  %bb.19:                              ; %while.end6.i6.i.i
	mov_s	%r13,0                  ; @0x1c6
	st.di	0,[%r3,0]               ; @0x1c8
	st.di	%r1,[%r22,0]            ; @0x1cc
.LBB1_20:                               ; %while.cond7.i8.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1d0
	ld.di	%r0,[%r22,0]            ; @0x1d0
	brlt	%r0,0,.LBB1_20          ; @0x1d4
;  %bb.21:                              ; %for.body.preheader
	mov_s	%r25,0x186a1@u32        ; @0x1d8
	mov_s	%fp,0x82000000@u32      ; @0x1de
.LBB1_22:                               ; %for.body
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_24 Depth 2
                                        ;     Child Loop BB1_28 Depth 2
                                        ;     Child Loop BB1_30 Depth 2
                                        ;     Child Loop BB1_32 Depth 2
                                        ;     Child Loop BB1_35 Depth 2
                                        ;     Child Loop BB1_39 Depth 2
                                        ;     Child Loop BB1_42 Depth 2
                                        ; @0x1e4
	test_barrier	%r0,4           ; @0x1e4
	brne_s	%r0,0,.LBB1_26          ; @0x1e8
;  %bb.23:                              ; %while.body.i.i.preheader
                                        ;   in Loop: Header=BB1_22 Depth=1
	mov_s	%r1,-1                  ; @0x1ea
.LBB1_24:                               ; %while.body.i.i
                                        ;   Parent Loop BB1_22 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x1ec AlignLabel LoopTop Freq=383
	add_s	%r1,%r1,1               ; @0x1ec
	cmp_s	%r1,%r25                ; @0x1ee
	bcc	.LBB1_47                ; @0x1f0
;  %bb.25:                              ; %while.cond.i.i
                                        ;   in Loop: Header=BB1_24 Depth=2
	test_barrier	%r0,4           ; @0x1f4
	breq_s	%r0,0,.LBB1_24          ; @0x1f8
.LBB1_26:                               ; %while.end.i.i
                                        ;   in Loop: Header=BB1_22 Depth=1
                                        ; @0x1fa
	test_barrier	%r0,5           ; @0x1fa
	brne_s	%r0,0,.LBB1_30          ; @0x1fe
;  %bb.27:                              ; %while.body5.i.i.preheader
                                        ;   in Loop: Header=BB1_22 Depth=1
	mov	%r1,-1                  ; @0x200
.LBB1_28:                               ; %while.body5.i.i
                                        ;   Parent Loop BB1_22 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x204 AlignLabel LoopTop Freq=383
	add_s	%r1,%r1,1               ; @0x204
	cmp_s	%r1,%r25                ; @0x206
	bcc	.LBB1_48                ; @0x208
;  %bb.29:                              ; %while.cond1.i.i
                                        ;   in Loop: Header=BB1_28 Depth=2
	test_barrier	%r0,5           ; @0x20c
	breq	%r0,0,.LBB1_28          ; @0x210
.LBB1_30:                               ; %while.cond11.i.i
                                        ;   Parent Loop BB1_22 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x214 AlignLabel LoopTop Freq=1022
	ld.di	%r0,[%r24,0]            ; @0x214
	brlt	%r0,0,.LBB1_30          ; @0x218
;  %bb.31:                              ; %while.end15.i.i
                                        ;   in Loop: Header=BB1_22 Depth=1
	st.di	%fp,[%r24,0]            ; @0x21c
.LBB1_32:                               ; %while.cond16.i.i
                                        ;   Parent Loop BB1_22 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x220 AlignLabel LoopTop Freq=1022
	ld.di	%r0,[%r22,0]            ; @0x220
	brlt	%r0,0,.LBB1_32          ; @0x224
;  %bb.33:                              ; %while.end21.i.i
                                        ;   in Loop: Header=BB1_22 Depth=1
	st.di	%fp,[%r22,0]            ; @0x228
	test_barrier	%r0,4           ; @0x22c
	breq_s	%r0,0,.LBB1_37          ; @0x230
;  %bb.34:                              ; %while.body25.i.i.preheader
                                        ;   in Loop: Header=BB1_22 Depth=1
	mov_s	%r1,-1                  ; @0x232
.LBB1_35:                               ; %while.body25.i.i
                                        ;   Parent Loop BB1_22 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x234 AlignLabel LoopTop Freq=638
	add_s	%r1,%r1,1               ; @0x234
	brhs	%r1,%r25,.LBB1_45       ; @0x236
;  %bb.36:                              ; %while.cond22.i.i
                                        ;   in Loop: Header=BB1_35 Depth=2
	test_barrier	%r0,4           ; @0x23a
	brne_s	%r0,0,.LBB1_35          ; @0x23e
.LBB1_37:                               ; %while.end30.i.i
                                        ;   in Loop: Header=BB1_22 Depth=1
                                        ; @0x240
	test_barrier	%r0,5           ; @0x240
	breq_s	%r0,0,.LBB1_41          ; @0x244
;  %bb.38:                              ; %while.body34.i.i.preheader
                                        ;   in Loop: Header=BB1_22 Depth=1
	mov_s	%r1,-1                  ; @0x246
.LBB1_39:                               ; %while.body34.i.i
                                        ;   Parent Loop BB1_22 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x248 AlignLabel LoopTop Freq=638
	add_s	%r1,%r1,1               ; @0x248
	brhs	%r1,%r25,.LBB1_46       ; @0x24a
;  %bb.40:                              ; %while.cond31.i.i
                                        ;   in Loop: Header=BB1_39 Depth=2
	test_barrier	%r0,5           ; @0x24e
	brne_s	%r0,0,.LBB1_39          ; @0x252
.LBB1_41:                               ; %for.body.i.preheader
                                        ;   in Loop: Header=BB1_22 Depth=1
                                        ; @0x254
	mov_s	%r15,0                  ; @0x254
	mov_s	%r14,0                  ; @0x256
.LBB1_42:                               ; %for.body.i
                                        ;   Parent Loop BB1_22 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ; Label of block must be emitted
                                        ; @0x258 AlignLabel LoopTop Freq=1021
	seteq	%r2,%r14,3              ; @0x258
	mov_s	%r0,%r13                ; @0x25c
	mov_s	%r1,%r14                ; @0x25e
	mov_s	%r3,%r15                ; @0x260
	bl	gvml_load_vmr_16        ; @0x262
	add_s	%r15,%r15,2             ; @0x266
	add_s	%r14,%r14,1             ; @0x268
	brlo	%r14,4,.LBB1_42         ; @0x26a
;  %bb.43:                              ; %my_dma_l2_to_l1_32k.exit
                                        ;   in Loop: Header=BB1_22 Depth=1
	add_s	%r13,%r13,1             ; @0x26e
	brlo	%r13,48,.LBB1_22        ; @0x270
;  %bb.44:                              ; %for.end
	sub	%r6,%r21,1              ; @0x274
	add	%r5,%r19,.L.str.4-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x278
	mov_s	%r0,%r20                ; @0x27c
	mov_s	%r1,69                  ; @0x27e
	mov_s	%r2,%r17                ; @0x280
	mov_s	%r3,3                   ; @0x282
	mov_s	%r4,%r16                ; @0x284
	bl	_gsi_log                ; @0x286
	ld_s	%r0,[%r23,0]            ; @0x28a
	.cfa_remember_state             ; @0x28c
	ld	%blink,[%sp,56]         ; @0x28c
	.cfa_restore	{%blink}        ; @0x290
	ld	%fp,[%sp,52]            ; @0x290
	.cfa_restore	{%fp}           ; @0x294
	ld	%r25,[%sp,48]           ; @0x294
	.cfa_restore	{%r25}          ; @0x298
	ld	%r24,[%sp,44]           ; @0x298
	.cfa_restore	{%r24}          ; @0x29c
	ld	%r23,[%sp,40]           ; @0x29c
	.cfa_restore	{%r23}          ; @0x2a0
	ld	%r22,[%sp,36]           ; @0x2a0
	.cfa_restore	{%r22}          ; @0x2a4
	ld	%r21,[%sp,32]           ; @0x2a4
	.cfa_restore	{%r21}          ; @0x2a8
	ld	%r20,[%sp,28]           ; @0x2a8
	.cfa_restore	{%r20}          ; @0x2ac
	ld	%r19,[%sp,24]           ; @0x2ac
	.cfa_restore	{%r19}          ; @0x2b0
	ld	%r18,[%sp,20]           ; @0x2b0
	.cfa_restore	{%r18}          ; @0x2b4
	ld	%r17,[%sp,16]           ; @0x2b4
	.cfa_restore	{%r17}          ; @0x2b8
	ld	%r16,[%sp,12]           ; @0x2b8
	.cfa_restore	{%r16}          ; @0x2bc
	ld_s	%r15,[%sp,8]            ; @0x2bc
	.cfa_restore	{%r15}          ; @0x2be
	ld_s	%r14,[%sp,4]            ; @0x2be
	.cfa_restore	{%r14}          ; @0x2c0
	ld_s	%r13,[%sp,0]            ; @0x2c0
	.cfa_restore	{%r13}          ; @0x2c2
	add_s	%sp,%sp,60              ; @0x2c2
	.cfa_pop	60              ; @0x2c4
	j_s	[%blink]                ; @0x2c4
	.cfa_restore_state              ; @0x2c6
.LBB1_45:                               ; %if.then28.i.i
                                        ; @0x2c6
	mov_s	%r0,%r19                ; @0x2c6
	add	%r0,%r0,.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x2c8
	add	%r2,%r19,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x2cc
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x2d0
	add2	%r4,%r19,(.L.str.18-.L__func__.gal_fast_l2dma_mem_to_l2_start)/4 ; @0x2d4
	mov_s	%r1,89                  ; @0x2d8
	bl	_gsi_log_fatal          ; @0x2da
.LBB1_46:                               ; %if.then37.i.i
                                        ; @0x2de
	add	%r2,%r19,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x2de
	add	%r19,%r19,.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x2e2
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x2e6
	mov_s	%r0,%r19                ; @0x2ea
	mov_s	%r1,94                  ; @0x2ec
	mov_s	%r4,.L.str.19           ; @0x2ee
	bl	_gsi_log_fatal          ; @0x2f4
.LBB1_47:                               ; %if.then.i.i
                                        ; @0x2f8
	add	%r2,%r19,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x2f8
	add	%r19,%r19,.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x2fc
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x300
	mov_s	%r0,%r19                ; @0x304
	mov_s	%r1,67                  ; @0x306
	mov_s	%r4,.L.str.16           ; @0x308
	bl	_gsi_log_fatal          ; @0x30e
.LBB1_48:                               ; %if.then8.i.i
                                        ; @0x312
	add	%r2,%r19,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x312
	add	%r19,%r19,.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x316
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x31a
	mov_s	%r0,%r19                ; @0x31e
	mov_s	%r1,72                  ; @0x320
	mov_s	%r4,.L.str.17           ; @0x322
	bl	_gsi_log_fatal          ; @0x328
.LBB1_49:                               ; %if.then9.i.i.i
                                        ; @0x32c
	mov_s	%r0,%r19                ; @0x32c
	add	%r0,%r0,.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x32e
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x332
	mov	%r1,328                 ; @0x336
	b_s	.LBB1_50                ; @0x33a
.LBB1_51:                               ; %if.then25.i.i.i
                                        ; @0x33c
	mov_s	%r0,%r19                ; @0x33c
	add	%r0,%r0,.L.str.9-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0x33e
	add	%r3,%r18,.L.str.14-.L.str.15 ; @0x342
	mov	%r1,337                 ; @0x346
.LBB1_50:                               ; %if.then9.i.i.i
                                        ; @0x34a
	mov_s	%r2,%r19                ; @0x34a
	mov_s	%r4,%r18                ; @0x34c
	mov_s	%r5,.L.str.13           ; @0x34e
	bl	_gsi_log_fatal          ; @0x354
	.cfa_ef
.Lfunc_end1:                            ; @0x358

	.assert2	$sectoff==0x358, "Expect offset 0x358 at " + $xtoa($sectoff)
	.section	.text.read_l1_task,"ax",@progbits
	.align	4                       ; -- End function
                                        ; -- Begin function read_l1_task
read_l1_task:                           ; @read_l1_task
                                        ; @0x0
	.cfa_bf	read_l1_task
;  %bb.0:                               ; %entry
	sub_s	%sp,%sp,48              ; @0x0
	.cfa_push	48              ; @0x2
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
	st	%blink,[%sp,44]         ; @0x28
	.cfa_reg_offset	{%blink}, 44    ; @0x2c
	mov_s	%r18,.L.str.7           ; @0x2c
	mov_s	%r20,%r18               ; @0x32
	add	%r20,%r20,.L.str-.L.str.7 ; @0x34
	sub	%r17,%r18,.L.str.7-.L__func__.read_l1_task ; @0x38
	sub	%r16,%r18,.L.str.7-.L.str.1 ; @0x3c
	mov_s	%r13,%r0                ; @0x40
	add	%r5,%r18,.L.str.5-.L.str.7 ; @0x42
	mov_s	%r0,%r20                ; @0x46
	mov_s	%r1,84                  ; @0x48
	mov_s	%r2,%r17                ; @0x4a
	mov_s	%r3,3                   ; @0x4c
	mov_s	%r4,%r16                ; @0x4e
	bl	_gsi_log                ; @0x50
	bl	gvml_init_once          ; @0x54
	ldb_s	%r0,[%r13,29]           ; @0x58
	ldb_s	%r1,[%r13,28]           ; @0x5a
	ldb_s	%r2,[%r13,30]           ; @0x5c
	ldb	%r3,[%r13,34]           ; @0x5e
	asl_s	%r0,%r0,8               ; @0x62
	or_s	%r0,%r0,%r1             ; @0x64
	ldb_s	%r1,[%r13,31]           ; @0x66
	asl_s	%r1,%r1,8               ; @0x68
	or_s	%r1,%r1,%r2             ; @0x6a
	asl_s	%r1,%r1,16              ; @0x6c
	or_s	%r0,%r0,%r1             ; @0x6e
	ldb	%r1,[%r13,33]           ; @0x70
	ldb	%r2,[%r13,32]           ; @0x74
	asl_s	%r1,%r1,8               ; @0x78
	or_s	%r1,%r1,%r2             ; @0x7a
	ldb	%r2,[%r13,35]           ; @0x7c
	asl_s	%r2,%r2,8               ; @0x80
	or_s	%r2,%r2,%r3             ; @0x82
	asl_s	%r2,%r2,16              ; @0x84
	or_s	%r1,%r1,%r2             ; @0x86
	bl	gal_mem_handle_to_apu_ptr ; @0x88
	mov_s	%r19,%r0                ; @0x8c
	ldb_s	%r0,[%r13,25]           ; @0x8e
	ldb_s	%r2,[%r13,27]           ; @0x90
	ldb_s	%r1,[%r13,24]           ; @0x92
	add	%r5,%r18,.L.str.6-.L.str.7 ; @0x94
	asl_s	%r0,%r0,8               ; @0x98
	or_s	%r0,%r0,%r1             ; @0x9a
	ldb_s	%r1,[%r13,26]           ; @0x9c
	asl_s	%r2,%r2,8               ; @0x9e
	or_s	%r1,%r1,%r2             ; @0xa0
	asl_s	%r1,%r1,16              ; @0xa2
	or	%r22,%r1,%r0            ; @0xa4
	mov_s	%r0,%r20                ; @0xa8
	mov_s	%r1,99                  ; @0xaa
	mov_s	%r2,%r17                ; @0xac
	mov_s	%r3,3                   ; @0xae
	mov_s	%r4,%r16                ; @0xb0
	mov_s	%r6,%r22                ; @0xb2
	bl	_gsi_log                ; @0xb4
	mov_s	%r0,%r20                ; @0xb8
	mov_s	%r1,102                 ; @0xba
	mov_s	%r2,%r17                ; @0xbc
	mov_s	%r3,3                   ; @0xbe
	mov_s	%r4,%r16                ; @0xc0
	mov_s	%r5,%r18                ; @0xc2
	bl	_gsi_log                ; @0xc4
	test_barrier	%r0,4           ; @0xc8
	brne_s	%r0,0,.LBB2_5           ; @0xcc
;  %bb.1:                               ; %while.body.i.i.i.preheader
	mov_s	%r2,-1                  ; @0xce
	mov_s	%r0,0x186a1@u32         ; @0xd0
.LBB2_3:                                ; %while.body.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xd6
	add_s	%r2,%r2,1               ; @0xd6
	cmp_s	%r2,%r0                 ; @0xd8
	bcc	.LBB2_4                 ; @0xda
;  %bb.2:                               ; %while.cond.i.i.i
                                        ;   in Loop: Header=BB2_3 Depth=1
	test_barrier	%r1,4           ; @0xde
	breq_s	%r1,0,.LBB2_3           ; @0xe2
.LBB2_5:                                ; %while.end.i.i.i
                                        ; @0xe4
	test_barrier	%r0,5           ; @0xe4
	add	%r21,%r19,0x8000@u32    ; @0xe8
	brne_s	%r0,0,.LBB2_10          ; @0xf0
;  %bb.6:                               ; %while.body5.i.i.i.preheader
	mov_s	%r2,-1                  ; @0xf2
	mov_s	%r0,0x186a1@u32         ; @0xf4
.LBB2_8:                                ; %while.body5.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xfa
	add_s	%r2,%r2,1               ; @0xfa
	cmp_s	%r2,%r0                 ; @0xfc
	bcc	.LBB2_9                 ; @0xfe
;  %bb.7:                               ; %while.cond1.i.i.i
                                        ;   in Loop: Header=BB2_8 Depth=1
	test_barrier	%r1,5           ; @0x102
	breq_s	%r1,0,.LBB2_8           ; @0x106
.LBB2_10:                               ; %while.cond11.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x108
	mov_s	%r13,0xf0000300@u32     ; @0x108
	ld.di	%r0,[%r13,0]            ; @0x10e
	brlt	%r0,0,.LBB2_10          ; @0x112
;  %bb.11:                              ; %while.end15.i.i.i
	mov_s	%r0,0x82000000@u32      ; @0x116
	mov_s	%r23,0xf0000380@u32     ; @0x11c
	st.di	%r0,[%r13,0]            ; @0x122
.LBB2_12:                               ; %while.cond16.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x126
	ld.di	%r1,[%r23,0]            ; @0x126
	brlt	%r1,0,.LBB2_12          ; @0x12a
;  %bb.13:                              ; %while.end21.i.i.i
	st.di	%r0,[%r23,0]            ; @0x12e
	test_barrier	%r0,4           ; @0x132
	breq_s	%r0,0,.LBB2_18          ; @0x136
;  %bb.14:                              ; %while.body25.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x138
	mov_s	%r0,0x186a1@u32         ; @0x13a
.LBB2_16:                               ; %while.body25.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x140
	add_s	%r2,%r2,1               ; @0x140
	cmp_s	%r2,%r0                 ; @0x142
	bcc	.LBB2_17                ; @0x144
;  %bb.15:                              ; %while.cond22.i.i.i
                                        ;   in Loop: Header=BB2_16 Depth=1
	test_barrier	%r1,4           ; @0x148
	brne_s	%r1,0,.LBB2_16          ; @0x14c
.LBB2_18:                               ; %while.end30.i.i.i
                                        ; @0x14e
	test_barrier	%r0,5           ; @0x14e
	breq_s	%r0,0,.LBB2_23          ; @0x152
;  %bb.19:                              ; %while.body34.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x154
	mov_s	%r0,0x186a1@u32         ; @0x156
.LBB2_21:                               ; %while.body34.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x15c
	add_s	%r2,%r2,1               ; @0x15c
	cmp_s	%r2,%r0                 ; @0x15e
	bcc	.LBB2_22                ; @0x160
;  %bb.20:                              ; %while.cond31.i.i.i
                                        ;   in Loop: Header=BB2_21 Depth=1
	test_barrier	%r1,5           ; @0x164
	brne_s	%r1,0,.LBB2_21          ; @0x168
.LBB2_23:                               ; %for.body.i.i.preheader
                                        ; @0x16a
	mov_s	%r15,0                  ; @0x16a
	mov_s	%r14,0                  ; @0x16c
.LBB2_24:                               ; %for.body.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x16e
	seteq	%r2,%r14,3              ; @0x16e
	mov_s	%r0,%r22                ; @0x172
	mov_s	%r1,%r14                ; @0x174
	mov_s	%r3,%r15                ; @0x176
	bl	gvml_store_vmr_16       ; @0x178
	add_s	%r15,%r15,2             ; @0x17c
	add_s	%r14,%r14,1             ; @0x17e
	brlo	%r14,4,.LBB2_24         ; @0x180
;  %bb.25:                              ; %my_dma_l1_to_l2_32k.exit.i
	test_barrier	%r0,4           ; @0x184
	brne_s	%r0,0,.LBB2_30          ; @0x188
;  %bb.26:                              ; %while.body.i.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x18a
	mov_s	%r0,0x186a1@u32         ; @0x18c
.LBB2_28:                               ; %while.body.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x192
	add_s	%r2,%r2,1               ; @0x192
	cmp_s	%r2,%r0                 ; @0x194
	bcc	.LBB2_29                ; @0x196
;  %bb.27:                              ; %while.cond.i.i.i.i
                                        ;   in Loop: Header=BB2_28 Depth=1
	test_barrier	%r1,4           ; @0x19a
	breq_s	%r1,0,.LBB2_28          ; @0x19e
.LBB2_30:                               ; %while.cond10.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1a0
	ld.di	%r0,[%r13,0]            ; @0x1a0
	brlt	%r0,0,.LBB2_30          ; @0x1a4
;  %bb.31:                              ; %my_dma_l2_to_l4_16k.exit.i.i
	mov_s	%r0,0xf0000388@u32      ; @0x1a8
	mov_s	%r1,0xef3f00c0@u32      ; @0x1ae
	st.di	0,[%r0,0]               ; @0x1b4
	st.di	%r19,[%r0,-120]         ; @0x1b8
	st.di	%r1,[%r13,0]            ; @0x1bc
	test_barrier	%r2,5           ; @0x1c0
	brne_s	%r2,0,.LBB2_36          ; @0x1c4
;  %bb.32:                              ; %while.body21.i.i.i.i.preheader
	mov_s	%r12,-1                 ; @0x1c6
	mov_s	%r2,0x186a1@u32         ; @0x1c8
.LBB2_34:                               ; %while.body21.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1ce
	add_s	%r12,%r12,1             ; @0x1ce
	cmp_s	%r12,%r2                ; @0x1d0
	bcc	.LBB2_35                ; @0x1d2
;  %bb.33:                              ; %while.cond17.i.i.i.i
                                        ;   in Loop: Header=BB2_34 Depth=1
	test_barrier	%r3,5           ; @0x1d6
	breq_s	%r3,0,.LBB2_34          ; @0x1da
.LBB2_36:                               ; %while.cond28.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1dc
	ld.di	%r2,[%r23,0]            ; @0x1dc
	brlt	%r2,0,.LBB2_36          ; @0x1e0
;  %bb.37:                              ; %my_dma_l2_to_l4_16k.exit2.i.i
	mov_s	%r2,0xf0000390@u32      ; @0x1e4
	st.di	0,[%r0,0]               ; @0x1ea
	st.di	%r21,[%r2,0]            ; @0x1ee
	st.di	%r1,[%r23,0]            ; @0x1f2
.LBB2_38:                               ; %while.cond.i.i3.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x1f6
	ld.di	%r1,[%r13,0]            ; @0x1f6
	brlt	%r1,0,.LBB2_38          ; @0x1fa
;  %bb.39:                              ; %while.end.i.i4.i.i
	mov_s	%r1,0                   ; @0x1fe
	bset_s	%r1,%r1,11              ; @0x200
	mov_s	%r3,0xf0000308@u32      ; @0x202
	mov_s	%r12,0x4af6e0@u32       ; @0x208
	mov_s	%r15,0xd0000000@u32     ; @0x20e
	st.di	%r1,[%r3,0]             ; @0x214
	st.di	%r12,[%r0,-120]         ; @0x218
	st.di	%r15,[%r13,0]           ; @0x21c
.LBB2_40:                               ; %while.cond1.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x220
	ld.di	%r14,[%r13,0]           ; @0x220
	brlt	%r14,0,.LBB2_40         ; @0x224
;  %bb.41:                              ; %while.end6.i.i.i.i
	st.di	0,[%r3,0]               ; @0x228
	ror	%r3,1                   ; @0x22c
	st.di	%r3,[%r13,0]            ; @0x230
.LBB2_42:                               ; %while.cond7.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x234
	ld.di	%r14,[%r13,0]           ; @0x234
	brlt	%r14,0,.LBB2_42         ; @0x238
.LBB2_43:                               ; %while.cond.i2.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x23c
	ld.di	%r14,[%r23,0]           ; @0x23c
	brlt	%r14,0,.LBB2_43         ; @0x240
;  %bb.44:                              ; %while.end.i3.i.i.i
	st.di	%r1,[%r0,0]             ; @0x244
	st.di	%r12,[%r2,0]            ; @0x248
	st.di	%r15,[%r23,0]           ; @0x24c
.LBB2_45:                               ; %while.cond1.i5.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x250
	ld.di	%r1,[%r23,0]            ; @0x250
	brlt	%r1,0,.LBB2_45          ; @0x254
;  %bb.46:                              ; %while.end6.i6.i.i.i
	st.di	0,[%r0,0]               ; @0x258
	st.di	%r3,[%r23,0]            ; @0x25c
.LBB2_47:                               ; %while.cond7.i8.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x260
	ld.di	%r0,[%r23,0]            ; @0x260
	brlt	%r0,0,.LBB2_47          ; @0x264
;  %bb.48:                              ; %my_dma_l1_to_l4.exit
	add	%r5,%r18,.L.str.8-.L.str.7 ; @0x268
	mov_s	%r0,%r20                ; @0x26c
	mov_s	%r1,106                 ; @0x26e
	mov_s	%r2,%r17                ; @0x270
	mov_s	%r3,3                   ; @0x272
	mov_s	%r4,%r16                ; @0x274
	mov_s	%r6,%r22                ; @0x276
	bl	_gsi_log                ; @0x278
	mov_s	%r0,0                   ; @0x27c
	.cfa_remember_state             ; @0x27e
	ld	%blink,[%sp,44]         ; @0x27e
	.cfa_restore	{%blink}        ; @0x282
	ld	%r23,[%sp,40]           ; @0x282
	.cfa_restore	{%r23}          ; @0x286
	ld	%r22,[%sp,36]           ; @0x286
	.cfa_restore	{%r22}          ; @0x28a
	ld	%r21,[%sp,32]           ; @0x28a
	.cfa_restore	{%r21}          ; @0x28e
	ld	%r20,[%sp,28]           ; @0x28e
	.cfa_restore	{%r20}          ; @0x292
	ld	%r19,[%sp,24]           ; @0x292
	.cfa_restore	{%r19}          ; @0x296
	ld	%r18,[%sp,20]           ; @0x296
	.cfa_restore	{%r18}          ; @0x29a
	ld	%r17,[%sp,16]           ; @0x29a
	.cfa_restore	{%r17}          ; @0x29e
	ld	%r16,[%sp,12]           ; @0x29e
	.cfa_restore	{%r16}          ; @0x2a2
	ld_s	%r15,[%sp,8]            ; @0x2a2
	.cfa_restore	{%r15}          ; @0x2a4
	ld_s	%r14,[%sp,4]            ; @0x2a4
	.cfa_restore	{%r14}          ; @0x2a6
	ld_s	%r13,[%sp,0]            ; @0x2a6
	.cfa_restore	{%r13}          ; @0x2a8
	add_s	%sp,%sp,48              ; @0x2a8
	.cfa_pop	48              ; @0x2aa
	j_s	[%blink]                ; @0x2aa
	.cfa_restore_state              ; @0x2ac
.LBB2_17:                               ; %if.then28.i.i.i
                                        ; @0x2ac
	mov_s	%r0,.L.str.9            ; @0x2ac
	sub	%r3,%r18,.L.str.7-.L.str.14 ; @0x2b2
	add	%r4,%r0,.L.str.18-.L.str.9 ; @0x2b6
	mov_s	%r1,89                  ; @0x2ba
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_ready_rst_all ; @0x2bc
	bl	_gsi_log_fatal          ; @0x2c2
.LBB2_22:                               ; %if.then37.i.i.i
                                        ; @0x2c6
	sub	%r3,%r18,.L.str.7-.L.str.14 ; @0x2c6
	mov_s	%r0,.L.str.9            ; @0x2ca
	mov_s	%r1,94                  ; @0x2d0
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_ready_rst_all ; @0x2d2
	mov_s	%r4,.L.str.19           ; @0x2d8
	bl	_gsi_log_fatal          ; @0x2de
.LBB2_4:                                ; %if.then.i.i.i
                                        ; @0x2e2
	sub	%r3,%r18,.L.str.7-.L.str.14 ; @0x2e2
	mov_s	%r0,.L.str.9            ; @0x2e6
	mov_s	%r1,67                  ; @0x2ec
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_ready_rst_all ; @0x2ee
	mov_s	%r4,.L.str.16           ; @0x2f4
	bl	_gsi_log_fatal          ; @0x2fa
.LBB2_9:                                ; %if.then8.i.i.i
                                        ; @0x2fe
	sub	%r3,%r18,.L.str.7-.L.str.14 ; @0x2fe
	mov_s	%r0,.L.str.9            ; @0x302
	mov_s	%r1,72                  ; @0x308
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_ready_rst_all ; @0x30a
	mov_s	%r4,.L.str.17           ; @0x310
	bl	_gsi_log_fatal          ; @0x316
.LBB2_29:                               ; %if.then9.i.i.i.i
                                        ; @0x31a
	add2	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.7)/4 ; @0x31a
	sub	%r3,%r18,.L.str.7-.L.str.14 ; @0x31e
	sub	%r4,%r18,.L.str.7-.L.str.15 ; @0x322
	mov_s	%r0,.L.str.9            ; @0x326
	mov	%r1,610                 ; @0x32c
	mov_s	%r5,.L.str.20           ; @0x330
	bl	_gsi_log_fatal          ; @0x336
.LBB2_35:                               ; %if.then25.i.i.i.i
                                        ; @0x33a
	add2	%r2,%r18,(.L__func__.gal_fast_l2dma_l2_to_mem_start-.L.str.7)/4 ; @0x33a
	sub	%r3,%r18,.L.str.7-.L.str.14 ; @0x33e
	sub	%r4,%r18,.L.str.7-.L.str.15 ; @0x342
	mov_s	%r0,.L.str.9            ; @0x346
	mov	%r1,619                 ; @0x34c
	mov_s	%r5,.L.str.20           ; @0x350
	bl	_gsi_log_fatal          ; @0x356
	.cfa_ef
.Lfunc_end2:                            ; @0x35a

	.assert2	$sectoff==0x35a, "Expect offset 0x35a at " + $xtoa($sectoff)
