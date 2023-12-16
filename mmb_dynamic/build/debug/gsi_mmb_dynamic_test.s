	.option	%reg
	.off	assume_short
	.file	"gsi_mmb_dynamic_test.c"
	.size	.L.str.13, 3
	.type	.L.str.13,@object
	.size	.L.str.1, 5
	.type	.L.str.1,@object
	.size	.L.str.12, 6
	.type	.L.str.12,@object
	.size	.L.str.3, 12
	.type	.L.str.3,@object
	.size	.L.str.4, 12
	.type	.L.str.4,@object
	.size	.L__func__.add_vrs_task, 13
	.type	.L__func__.add_vrs_task,@object
	.size	add_vrs_task__name, 13
	.type	add_vrs_task__name,@object
	.size	.L.str.2, 21
	.type	.L.str.2,@object
	.size	.L.str.6, 22
	.type	.L.str.6,@object
	.size	.L.str, 31
	.type	.L.str,@object
	.size	.L__func__.gal_fast_l2dma_l2_to_mem_start, 31
	.type	.L__func__.gal_fast_l2dma_l2_to_mem_start,@object
	.size	.L__func__.gal_fast_l2dma_mem_to_l2_start, 31
	.type	.L__func__.gal_fast_l2dma_mem_to_l2_start,@object
	.size	.L__func__.gal_fast_l2dma_l2_ready_rst_all, 32
	.type	.L__func__.gal_fast_l2dma_l2_ready_rst_all,@object
	.size	.L.str.5, 38
	.type	.L.str.5,@object
	.size	.L.str.7, 46
	.type	.L.str.7,@object
	.size	.L.str.16, 49
	.type	.L.str.16,@object
	.size	.L.str.17, 49
	.type	.L.str.17,@object
	.size	.L.str.11, 96
	.type	.L.str.11,@object
	.size	.L.str.18, 96
	.type	.L.str.18,@object
	.size	.L.str.14, 98
	.type	.L.str.14,@object
	.size	.L.str.15, 98
	.type	.L.str.15,@object
	.no_dead_strip	add_vrs_task
	.no_dead_strip	add_vrs_task__name
	.no_dead_strip	gal_include_init_task
	.type	gal_include_init_task,@function
	.size	gal_include_init_task, .Lfunc_end0-gal_include_init_task
	.type	add_vrs_task,@function
	.extInstruction test_barrier,0x07,0x03,SUFFIX_FLAG,SYNTAX_2OP
	.size	add_vrs_task, .Lfunc_end1-add_vrs_task
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
.L.str.13:                              ; @0x0
	.asciz	"%s"
.L.str.1:                               ; @0x3
	.asciz	"INFO"
.L.str.12:                              ; @0x8
	.asciz	"FATAL"
.L.str.3:                               ; @0xe
	.asciz	"vr_size: %d"
.L.str.4:                               ; @0x1a
	.asciz	"num_vrs: %d"
.L__func__.add_vrs_task:                ; @0x26
	.asciz	"add_vrs_task"
.L.str.2:                               ; @0x33
	.asciz	"Running add vrs task"
.L.str.6:                               ; @0x48
	.asciz	"Vector add completed."
.L.str:                                 ; @0x5e
	.asciz	"dev_src/gsi_mmb_dynamic_test.c"
.L__func__.gal_fast_l2dma_l2_to_mem_start: ; @0x7d
	.asciz	"gal_fast_l2dma_l2_to_mem_start"
.L__func__.gal_fast_l2dma_mem_to_l2_start: ; @0x9c
	.asciz	"gal_fast_l2dma_mem_to_l2_start"
.L__func__.gal_fast_l2dma_l2_ready_rst_all: ; @0xbb
	.asciz	"gal_fast_l2dma_l2_ready_rst_all"
.L.str.5:                               ; @0xdb
	.asciz	"vm_regA: %d, vm_regB: %d, vm_regX: %d"
.L.str.7:                               ; @0x101
	.asciz	"/usr/include/gsi/archs36/gsi/gal-fast-funcs.h"
.L.str.16:                              ; @0x12f
	.asciz	"COND_L2_READY A timed out (fail to rst l2_ready)"
.L.str.17:                              ; @0x160
	.asciz	"COND_L2_READY B timed out (fail to rst l2_ready)"
.L.str.11:                              ; @0x191
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
.L.str.18:                              ; @0x1f1
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_l2_to_mem_start)"
.L.str.14:                              ; @0x251
	.asciz	"COND_L2_READY A timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
.L.str.15:                              ; @0x2b3
	.asciz	"COND_L2_READY B timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.assert2	$sectoff==0x315, "Expect offset 0x315 at " + $xtoa($sectoff)
	.section	GSI_task_ep_names,"a",@progbits
	.align	4
add_vrs_task__name:                     ; @0x0
	.asciz	"add_vrs_task"
	.assert2	$sectoff==0xd, "Expect offset 0xd at " + $xtoa($sectoff)
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
	.section	.text.add_vrs_task,"ax",@progbits
	.align	4                       ; -- End function
                                        ; -- Begin function add_vrs_task
add_vrs_task:                           ; @add_vrs_task
                                        ; @0x0
	.cfa_bf	add_vrs_task
;  %bb.0:                               ; %entry
	sub_s	%sp,%sp,72              ; @0x0
	.cfa_push	72              ; @0x2
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
	sub_s	%sp,%sp,4               ; @0x38
	.cfa_push	4               ; @0x3a
	mov_s	%r17,.L.str.13          ; @0x3a
	mov_s	%r16,%r17               ; @0x40
	add	%r16,%r16,.L.str-.L.str.13 ; @0x42
	add	%r23,%r17,.L__func__.add_vrs_task-.L.str.13 ; @0x46
	add	%r21,%r17,.L.str.1-.L.str.13 ; @0x4a
	mov_s	%r13,%r0                ; @0x4e
	add	%r5,%r17,.L.str.2-.L.str.13 ; @0x50
	mov_s	%r0,%r16                ; @0x54
	mov_s	%r1,43                  ; @0x56
	mov_s	%r2,%r23                ; @0x58
	mov_s	%r3,3                   ; @0x5a
	mov_s	%r4,%r21                ; @0x5c
	bl	_gsi_log                ; @0x5e
	bl	gvml_init_once          ; @0x62
	ldb	%r0,[%r13,65]           ; @0x66
	ldb	%r1,[%r13,64]           ; @0x6a
	ldb	%r2,[%r13,66]           ; @0x6e
	ldb	%r3,[%r13,70]           ; @0x72
	asl_s	%r0,%r0,8               ; @0x76
	or_s	%r0,%r0,%r1             ; @0x78
	ldb	%r1,[%r13,67]           ; @0x7a
	asl_s	%r1,%r1,8               ; @0x7e
	or_s	%r1,%r1,%r2             ; @0x80
	asl_s	%r1,%r1,16              ; @0x82
	or_s	%r0,%r0,%r1             ; @0x84
	ldb	%r1,[%r13,69]           ; @0x86
	ldb	%r2,[%r13,68]           ; @0x8a
	asl_s	%r1,%r1,8               ; @0x8e
	or_s	%r1,%r1,%r2             ; @0x90
	ldb	%r2,[%r13,71]           ; @0x92
	asl_s	%r2,%r2,8               ; @0x96
	or_s	%r2,%r2,%r3             ; @0x98
	asl_s	%r2,%r2,16              ; @0x9a
	or_s	%r1,%r1,%r2             ; @0x9c
	bl	gal_mem_handle_to_apu_ptr ; @0x9e
	mov_s	%r19,%r0                ; @0xa2
	ldb	%r0,[%r13,73]           ; @0xa4
	ldb	%r1,[%r13,72]           ; @0xa8
	ldb	%r2,[%r13,74]           ; @0xac
	ldb	%r3,[%r13,78]           ; @0xb0
	asl_s	%r0,%r0,8               ; @0xb4
	or_s	%r0,%r0,%r1             ; @0xb6
	ldb	%r1,[%r13,75]           ; @0xb8
	asl_s	%r1,%r1,8               ; @0xbc
	or_s	%r1,%r1,%r2             ; @0xbe
	asl_s	%r1,%r1,16              ; @0xc0
	or_s	%r0,%r0,%r1             ; @0xc2
	ldb	%r1,[%r13,77]           ; @0xc4
	ldb	%r2,[%r13,76]           ; @0xc8
	asl_s	%r1,%r1,8               ; @0xcc
	or_s	%r1,%r1,%r2             ; @0xce
	ldb	%r2,[%r13,79]           ; @0xd0
	asl_s	%r2,%r2,8               ; @0xd4
	or_s	%r2,%r2,%r3             ; @0xd6
	asl_s	%r2,%r2,16              ; @0xd8
	or_s	%r1,%r1,%r2             ; @0xda
	bl	gal_mem_handle_to_apu_ptr ; @0xdc
	mov_s	%r20,%r0                ; @0xe0
	ldb	%r0,[%r13,93]           ; @0xe2
	ldb	%r1,[%r13,92]           ; @0xe6
	ldb	%r2,[%r13,94]           ; @0xea
	ldb	%r3,[%r13,98]           ; @0xee
	asl_s	%r0,%r0,8               ; @0xf2
	or_s	%r0,%r0,%r1             ; @0xf4
	ldb	%r1,[%r13,95]           ; @0xf6
	asl_s	%r1,%r1,8               ; @0xfa
	or_s	%r1,%r1,%r2             ; @0xfc
	asl_s	%r1,%r1,16              ; @0xfe
	or_s	%r0,%r0,%r1             ; @0x100
	ldb	%r1,[%r13,97]           ; @0x102
	ldb	%r2,[%r13,96]           ; @0x106
	asl_s	%r1,%r1,8               ; @0x10a
	or_s	%r1,%r1,%r2             ; @0x10c
	ldb	%r2,[%r13,99]           ; @0x10e
	asl_s	%r2,%r2,8               ; @0x112
	or_s	%r2,%r2,%r3             ; @0x114
	asl_s	%r2,%r2,16              ; @0x116
	or_s	%r1,%r1,%r2             ; @0x118
	bl	gal_mem_handle_to_apu_ptr ; @0x11a
	st_s	%r0,[%sp,72]            ; 4-byte Folded Spill
                                        ; @0x11e
	ldb	%r0,[%r13,81]           ; @0x120
	ldb	%r1,[%r13,80]           ; @0x124
	ldb	%r2,[%r13,82]           ; @0x128
	ldb	%r22,[%r13,90]          ; @0x12c
	asl_s	%r0,%r0,8               ; @0x130
	or_s	%r0,%r0,%r1             ; @0x132
	ldb	%r1,[%r13,83]           ; @0x134
	ldb	%r24,[%r13,91]          ; @0x138
	ldb	%fp,[%r13,88]           ; @0x13c
	ldb	%r18,[%r13,89]          ; @0x140
	asl_s	%r1,%r1,8               ; @0x144
	ldb	%r25,[%r13,86]          ; @0x146
	ldb	%r15,[%r13,87]          ; @0x14a
	ldb	%r14,[%r13,84]          ; @0x14e
	ldb	%r13,[%r13,85]          ; @0x152
	or_s	%r1,%r1,%r2             ; @0x156
	asl_s	%r1,%r1,16              ; @0x158
	or	%r6,%r1,%r0             ; @0x15a
	add	%r5,%r17,.L.str.3-.L.str.13 ; @0x15e
	mov_s	%r0,%r16                ; @0x162
	mov_s	%r1,65                  ; @0x164
	mov_s	%r2,%r23                ; @0x166
	mov_s	%r3,3                   ; @0x168
	mov_s	%r4,%r21                ; @0x16a
	bl	_gsi_log                ; @0x16c
	asl_s	%r15,%r15,8             ; @0x170
	asl_s	%r13,%r13,8             ; @0x172
	or	%r15,%r15,%r25          ; @0x174
	or_s	%r13,%r13,%r14          ; @0x178
	asl_s	%r15,%r15,16            ; @0x17a
	or_s	%r13,%r13,%r15          ; @0x17c
	add	%r5,%r17,.L.str.4-.L.str.13 ; @0x17e
	mov_s	%r0,%r16                ; @0x182
	mov_s	%r1,66                  ; @0x184
	mov_s	%r2,%r23                ; @0x186
	mov_s	%r3,3                   ; @0x188
	mov_s	%r4,%r21                ; @0x18a
	mov_s	%r6,%r13                ; @0x18c
	bl	_gsi_log                ; @0x18e
	asl	%r24,%r24,8             ; @0x192
	asl	%r18,%r18,8             ; @0x196
	or	%r22,%r24,%r22          ; @0x19a
	or	%fp,%r18,%fp            ; @0x19e
	asl	%r22,%r22,16            ; @0x1a2
	or	%r14,%r22,%fp           ; @0x1a6
	sub_s	%r0,%r13,3              ; @0x1aa
	st	0,[0xf0000230@u32]      ; @0x1ac
	brge	%r0,%r14,.LBB1_3        ; @0x1b4
;  %bb.1:                               ; %if.then
	sub_s	%r0,%r13,1              ; @0x1b8
	brne	%r14,%r0,.LBB1_4        ; @0x1ba
;  %bb.2:                               ; %if.then11
	mov_s	%r25,0                  ; @0x1be
	mov_s	%r24,1                  ; @0x1c0
	b_s	.LBB1_5                 ; @0x1c2
.LBB1_3:                                ; %if.else
                                        ; @0x1c4
	add	%r24,%r14,2             ; @0x1c4
	add	%r25,%r14,1             ; @0x1c8
	b_s	.LBB1_5                 ; @0x1cc
.LBB1_4:                                ; @0x1ce
	mov_s	%r24,0                  ; @0x1ce
	mov_s	%r25,%r0                ; @0x1d0
.LBB1_5:                                ; %if.end14
                                        ; @0x1d2
	mov_s	%r13,.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x1d2
	mov_s	%r5,%r13                ; @0x1d8
	add	%r5,%r5,.L.str.5-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x1da
	mov_s	%r0,%r16                ; @0x1de
	mov_s	%r1,100                 ; @0x1e0
	mov_s	%r2,%r23                ; @0x1e2
	mov_s	%r3,3                   ; @0x1e4
	mov_s	%r4,%r21                ; @0x1e6
	mov_s	%r6,%r14                ; @0x1e8
	mov_s	%r7,%r25                ; @0x1ea
	st	%r24,[%sp,0]            ; @0x1ec
	bl	_gsi_log                ; @0x1f0
	clri	%r0                     ; @0x1f4
	sr	0x40@u32,[0x48]         ; @0x1f8
	sr	1@u32,[0x47]            ; @0x200
.LBB1_6:                                ; %while.cond.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x208
	lr	%r1,[0x48]              ; @0x208
	and	%r1,%r1,256             ; @0x20c
	brne_s	%r1,0,.LBB1_6           ; @0x210
;  %bb.7:                               ; %gal_fast_cache_dcache_invalidate_and_flush.exit
	seti	%r0                     ; @0x212
	test_barrier	%r0,4           ; @0x216
	brne_s	%r0,0,.LBB1_11          ; @0x21a
;  %bb.8:                               ; %while.body.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x21c
	mov_s	%r0,0x186a1@u32         ; @0x21e
.LBB1_9:                                ; %while.body.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x224
	add_s	%r2,%r2,1               ; @0x224
	cmp_s	%r2,%r0                 ; @0x226
	bcc	.LBB1_142               ; @0x228
;  %bb.10:                              ; %while.cond.i.i.i
                                        ;   in Loop: Header=BB1_9 Depth=1
	test_barrier	%r1,4           ; @0x22c
	breq_s	%r1,0,.LBB1_9           ; @0x230
.LBB1_11:                               ; %while.cond10.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x232
	mov_s	%r18,0xf0000300@u32     ; @0x232
	ld.di	%r0,[%r18,0]            ; @0x238
	brlt	%r0,0,.LBB1_11          ; @0x23c
;  %bb.12:                              ; %my_dma_l4_to_l2_16k.exit.i
	mov_s	%fp,0xf0000308@u32      ; @0x240
	mov_s	%r22,0xff3f00c0@u32     ; @0x246
	st	%r23,[%sp,68]           ; 4-byte Folded Spill
                                        ; @0x24c
	st.di	0,[%fp,0]               ; @0x250
	st.di	%r19,[%fp,8]            ; @0x254
	st.di	%r22,[%r18,0]           ; @0x258
	test_barrier	%r0,5           ; @0x25c
	add	%r19,%r19,0x8000@u32    ; @0x260
	brne_s	%r0,0,.LBB1_16          ; @0x268
;  %bb.13:                              ; %while.body21.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x26a
	mov_s	%r0,0x186a1@u32         ; @0x26c
.LBB1_14:                               ; %while.body21.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x272
	add_s	%r2,%r2,1               ; @0x272
	cmp_s	%r2,%r0                 ; @0x274
	bcc	.LBB1_144               ; @0x276
;  %bb.15:                              ; %while.cond17.i.i.i
                                        ;   in Loop: Header=BB1_14 Depth=1
	test_barrier	%r1,5           ; @0x27a
	breq_s	%r1,0,.LBB1_14          ; @0x27e
.LBB1_16:                               ; %while.cond28.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x280
	mov_s	%r23,0xf0000380@u32     ; @0x280
	ld.di	%r0,[%r23,0]            ; @0x286
	brlt	%r0,0,.LBB1_16          ; @0x28a
;  %bb.17:                              ; %my_dma_l4_to_l2_16k.exit2.i
	st	%r21,[%sp,64]           ; 4-byte Folded Spill
                                        ; @0x28e
	mov_s	%r21,0xf0000388@u32     ; @0x292
	st.di	0,[%r21,0]              ; @0x298
	st.di	%r19,[%r21,8]           ; @0x29c
	st.di	%r22,[%r23,0]           ; @0x2a0
.LBB1_18:                               ; %while.cond.i.i3.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x2a4
	ld.di	%r0,[%r18,0]            ; @0x2a4
	brlt	%r0,0,.LBB1_18          ; @0x2a8
;  %bb.19:                              ; %while.end.i.i4.i
	mov_s	%r1,0                   ; @0x2ac
	bset_s	%r1,%r1,11              ; @0x2ae
	mov_s	%r2,0x4af6e0@u32        ; @0x2b0
	mov_s	%r3,0xd0000000@u32      ; @0x2b6
	st.di	%r1,[%fp,0]             ; @0x2bc
	st.di	%r2,[%fp,8]             ; @0x2c0
	st.di	%r3,[%r18,0]            ; @0x2c4
.LBB1_20:                               ; %while.cond1.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x2c8
	ld.di	%r0,[%r18,0]            ; @0x2c8
	brlt	%r0,0,.LBB1_20          ; @0x2cc
;  %bb.21:                              ; %while.end6.i.i.i
	ror	%r17,1                  ; @0x2d0
	st.di	0,[%fp,0]               ; @0x2d4
	st.di	%r17,[%r18,0]           ; @0x2d8
.LBB1_22:                               ; %while.cond7.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x2dc
	ld.di	%r0,[%r18,0]            ; @0x2dc
	brlt	%r0,0,.LBB1_22          ; @0x2e0
.LBB1_23:                               ; %while.cond.i2.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x2e4
	ld.di	%r0,[%r23,0]            ; @0x2e4
	brlt	%r0,0,.LBB1_23          ; @0x2e8
;  %bb.24:                              ; %while.end.i3.i.i
	st.di	%r1,[%r21,0]            ; @0x2ec
	st.di	%r2,[%r21,8]            ; @0x2f0
	st.di	%r3,[%r23,0]            ; @0x2f4
.LBB1_25:                               ; %while.cond1.i5.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x2f8
	ld.di	%r0,[%r23,0]            ; @0x2f8
	brlt	%r0,0,.LBB1_25          ; @0x2fc
;  %bb.26:                              ; %while.end6.i6.i.i
	st.di	0,[%r21,0]              ; @0x300
	st.di	%r17,[%r23,0]           ; @0x304
.LBB1_27:                               ; %while.cond7.i8.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x308
	ld.di	%r0,[%r23,0]            ; @0x308
	brlt	%r0,0,.LBB1_27          ; @0x30c
;  %bb.28:                              ; %my_dma_l4_to_l2_32k.exit
	test_barrier	%r0,4           ; @0x310
	brne_s	%r0,0,.LBB1_32          ; @0x314
;  %bb.29:                              ; %while.body.i.i.preheader
	mov_s	%r2,-1                  ; @0x316
	mov_s	%r0,0x186a1@u32         ; @0x318
.LBB1_30:                               ; %while.body.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x31e
	add_s	%r2,%r2,1               ; @0x31e
	cmp_s	%r2,%r0                 ; @0x320
	bcc	.LBB1_145               ; @0x322
;  %bb.31:                              ; %while.cond.i.i
                                        ;   in Loop: Header=BB1_30 Depth=1
	test_barrier	%r1,4           ; @0x326
	breq_s	%r1,0,.LBB1_30          ; @0x32a
.LBB1_32:                               ; %while.end.i.i
                                        ; @0x32c
	test_barrier	%r0,5           ; @0x32c
	brne_s	%r0,0,.LBB1_36          ; @0x330
;  %bb.33:                              ; %while.body5.i.i.preheader
	mov_s	%r2,-1                  ; @0x332
	mov_s	%r0,0x186a1@u32         ; @0x334
.LBB1_34:                               ; %while.body5.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x33a
	add_s	%r2,%r2,1               ; @0x33a
	cmp_s	%r2,%r0                 ; @0x33c
	bcc	.LBB1_147               ; @0x33e
;  %bb.35:                              ; %while.cond1.i.i
                                        ;   in Loop: Header=BB1_34 Depth=1
	test_barrier	%r1,5           ; @0x342
	breq_s	%r1,0,.LBB1_34          ; @0x346
.LBB1_36:                               ; %while.cond11.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x348
	ld.di	%r0,[%r18,0]            ; @0x348
	brlt	%r0,0,.LBB1_36          ; @0x34c
;  %bb.37:                              ; %while.end15.i.i
	mov_s	%r19,0x82000000@u32     ; @0x350
	st.di	%r19,[%r18,0]           ; @0x356
.LBB1_38:                               ; %while.cond16.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x35a
	ld.di	%r0,[%r23,0]            ; @0x35a
	brlt	%r0,0,.LBB1_38          ; @0x35e
;  %bb.39:                              ; %while.end21.i.i
	st.di	%r19,[%r23,0]           ; @0x362
	test_barrier	%r0,4           ; @0x366
	breq_s	%r0,0,.LBB1_43          ; @0x36a
;  %bb.40:                              ; %while.body25.i.i.preheader
	mov_s	%r2,-1                  ; @0x36c
	mov_s	%r0,0x186a1@u32         ; @0x36e
.LBB1_41:                               ; %while.body25.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x374
	add_s	%r2,%r2,1               ; @0x374
	cmp_s	%r2,%r0                 ; @0x376
	bcc	.LBB1_138               ; @0x378
;  %bb.42:                              ; %while.cond22.i.i
                                        ;   in Loop: Header=BB1_41 Depth=1
	test_barrier	%r1,4           ; @0x37c
	brne_s	%r1,0,.LBB1_41          ; @0x380
.LBB1_43:                               ; %while.end30.i.i
                                        ; @0x382
	test_barrier	%r0,5           ; @0x382
	breq_s	%r0,0,.LBB1_47          ; @0x386
;  %bb.44:                              ; %while.body34.i.i.preheader
	mov_s	%r2,-1                  ; @0x388
	mov_s	%r0,0x186a1@u32         ; @0x38a
.LBB1_45:                               ; %while.body34.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x390
	add_s	%r2,%r2,1               ; @0x390
	cmp_s	%r2,%r0                 ; @0x392
	bcc	.LBB1_140               ; @0x394
;  %bb.46:                              ; %while.cond31.i.i
                                        ;   in Loop: Header=BB1_45 Depth=1
	test_barrier	%r1,5           ; @0x398
	brne_s	%r1,0,.LBB1_45          ; @0x39c
.LBB1_47:                               ; %for.body.i.preheader
                                        ; @0x39e
	mov_s	%r13,0                  ; @0x39e
	mov_s	%r15,0                  ; @0x3a0
.LBB1_48:                               ; %for.body.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x3a2
	seteq	%r2,%r15,3              ; @0x3a2
	mov_s	%r0,%r14                ; @0x3a6
	mov_s	%r1,%r15                ; @0x3a8
	mov_s	%r3,%r13                ; @0x3aa
	bl	gvml_load_vmr_16        ; @0x3ac
	add_s	%r13,%r13,2             ; @0x3b0
	add_s	%r15,%r15,1             ; @0x3b2
	brlo	%r15,4,.LBB1_48         ; @0x3b4
;  %bb.49:                              ; %my_dma_l2_to_l1_32k.exit
	mov_s	%r0,0                   ; @0x3b8
	mov_s	%r1,%r14                ; @0x3ba
	bl	gvml_load_16            ; @0x3bc
	test_barrier	%r0,4           ; @0x3c0
	brne_s	%r0,0,.LBB1_53          ; @0x3c4
;  %bb.50:                              ; %while.body.i.i.i64.preheader
	mov_s	%r2,-1                  ; @0x3c6
	mov_s	%r0,0x186a1@u32         ; @0x3c8
.LBB1_51:                               ; %while.body.i.i.i64
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x3ce
	add_s	%r2,%r2,1               ; @0x3ce
	cmp_s	%r2,%r0                 ; @0x3d0
	bcc	.LBB1_149               ; @0x3d2
;  %bb.52:                              ; %while.cond.i.i.i61
                                        ;   in Loop: Header=BB1_51 Depth=1
	test_barrier	%r1,4           ; @0x3d6
	breq_s	%r1,0,.LBB1_51          ; @0x3da
.LBB1_53:                               ; %while.cond10.i.i.i68
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x3dc
	ld.di	%r0,[%r18,0]            ; @0x3dc
	brlt	%r0,0,.LBB1_53          ; @0x3e0
;  %bb.54:                              ; %my_dma_l4_to_l2_16k.exit.i72
	st.di	0,[%fp,0]               ; @0x3e4
	st.di	%r20,[%fp,8]            ; @0x3e8
	st.di	%r22,[%r18,0]           ; @0x3ec
	test_barrier	%r0,5           ; @0x3f0
	add	%r20,%r20,0x8000@u32    ; @0x3f4
	mov_s	%r3,0                   ; @0x3fc
	bset_s	%r3,%r3,11              ; @0x3fe
	mov_s	%r12,0x4af6e0@u32       ; @0x400
	mov_s	%r15,0xd0000000@u32     ; @0x406
	brne_s	%r0,0,.LBB1_58          ; @0x40c
;  %bb.55:                              ; %while.body21.i.i.i80.preheader
	mov_s	%r2,-1                  ; @0x40e
	mov_s	%r0,0x186a1@u32         ; @0x410
.LBB1_56:                               ; %while.body21.i.i.i80
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x416
	add_s	%r2,%r2,1               ; @0x416
	cmp_s	%r2,%r0                 ; @0x418
	bcc	.LBB1_150               ; @0x41a
;  %bb.57:                              ; %while.cond17.i.i.i77
                                        ;   in Loop: Header=BB1_56 Depth=1
	test_barrier	%r1,5           ; @0x41e
	breq_s	%r1,0,.LBB1_56          ; @0x422
.LBB1_58:                               ; %while.cond28.i.i.i84
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x424
	ld.di	%r0,[%r23,0]            ; @0x424
	brlt	%r0,0,.LBB1_58          ; @0x428
;  %bb.59:                              ; %my_dma_l4_to_l2_16k.exit2.i85
	st.di	0,[%r21,0]              ; @0x42c
	st.di	%r20,[%r21,8]           ; @0x430
	st.di	%r22,[%r23,0]           ; @0x434
.LBB1_60:                               ; %while.cond.i.i3.i87
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x438
	ld.di	%r0,[%r18,0]            ; @0x438
	brlt	%r0,0,.LBB1_60          ; @0x43c
;  %bb.61:                              ; %while.end.i.i4.i88
	st.di	%r3,[%fp,0]             ; @0x440
	st.di	%r12,[%fp,8]            ; @0x444
	st.di	%r15,[%r18,0]           ; @0x448
.LBB1_62:                               ; %while.cond1.i.i.i90
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x44c
	ld.di	%r0,[%r18,0]            ; @0x44c
	brlt	%r0,0,.LBB1_62          ; @0x450
;  %bb.63:                              ; %while.end6.i.i.i91
	st.di	0,[%fp,0]               ; @0x454
	st.di	%r17,[%r18,0]           ; @0x458
.LBB1_64:                               ; %while.cond7.i.i.i93
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x45c
	ld.di	%r0,[%r18,0]            ; @0x45c
	brlt	%r0,0,.LBB1_64          ; @0x460
.LBB1_65:                               ; %while.cond.i2.i.i96
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x464
	ld.di	%r0,[%r23,0]            ; @0x464
	brlt	%r0,0,.LBB1_65          ; @0x468
;  %bb.66:                              ; %while.end.i3.i.i97
	st.di	%r3,[%r21,0]            ; @0x46c
	st.di	%r12,[%r21,8]           ; @0x470
	st.di	%r15,[%r23,0]           ; @0x474
.LBB1_67:                               ; %while.cond1.i5.i.i99
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x478
	ld.di	%r0,[%r23,0]            ; @0x478
	brlt	%r0,0,.LBB1_67          ; @0x47c
;  %bb.68:                              ; %while.end6.i6.i.i100
	st.di	0,[%r21,0]              ; @0x480
	st.di	%r17,[%r23,0]           ; @0x484
.LBB1_69:                               ; %while.cond7.i8.i.i102
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x488
	ld.di	%r0,[%r23,0]            ; @0x488
	brlt	%r0,0,.LBB1_69          ; @0x48c
;  %bb.70:                              ; %my_dma_l4_to_l2_32k.exit103
	test_barrier	%r0,4           ; @0x490
	brne_s	%r0,0,.LBB1_74          ; @0x494
;  %bb.71:                              ; %while.body.i.i113.preheader
	mov_s	%r2,-1                  ; @0x496
	mov_s	%r0,0x186a1@u32         ; @0x498
.LBB1_72:                               ; %while.body.i.i113
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x49e
	add_s	%r2,%r2,1               ; @0x49e
	cmp_s	%r2,%r0                 ; @0x4a0
	bcc	.LBB1_136               ; @0x4a2
;  %bb.73:                              ; %while.cond.i.i110
                                        ;   in Loop: Header=BB1_72 Depth=1
	test_barrier	%r1,4           ; @0x4a6
	breq_s	%r1,0,.LBB1_72          ; @0x4aa
.LBB1_74:                               ; %while.end.i.i117
                                        ; @0x4ac
	test_barrier	%r0,5           ; @0x4ac
	brne_s	%r0,0,.LBB1_78          ; @0x4b0
;  %bb.75:                              ; %while.body5.i.i125.preheader
	mov_s	%r2,-1                  ; @0x4b2
	mov_s	%r0,0x186a1@u32         ; @0x4b4
.LBB1_76:                               ; %while.body5.i.i125
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x4ba
	add_s	%r2,%r2,1               ; @0x4ba
	cmp_s	%r2,%r0                 ; @0x4bc
	bcc	.LBB1_137               ; @0x4be
;  %bb.77:                              ; %while.cond1.i.i122
                                        ;   in Loop: Header=BB1_76 Depth=1
	test_barrier	%r1,5           ; @0x4c2
	breq_s	%r1,0,.LBB1_76          ; @0x4c6
.LBB1_78:                               ; %while.cond11.i.i129
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x4c8
	ld.di	%r0,[%r18,0]            ; @0x4c8
	brlt	%r0,0,.LBB1_78          ; @0x4cc
;  %bb.79:                              ; %while.end15.i.i130
	st.di	%r19,[%r18,0]           ; @0x4d0
.LBB1_80:                               ; %while.cond16.i.i132
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x4d4
	ld.di	%r0,[%r23,0]            ; @0x4d4
	brlt	%r0,0,.LBB1_80          ; @0x4d8
;  %bb.81:                              ; %while.end21.i.i135
	st.di	%r19,[%r23,0]           ; @0x4dc
	test_barrier	%r0,4           ; @0x4e0
	breq_s	%r0,0,.LBB1_85          ; @0x4e4
;  %bb.82:                              ; %while.body25.i.i143.preheader
	mov_s	%r2,-1                  ; @0x4e6
	mov_s	%r0,0x186a1@u32         ; @0x4e8
.LBB1_83:                               ; %while.body25.i.i143
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x4ee
	add_s	%r2,%r2,1               ; @0x4ee
	cmp_s	%r2,%r0                 ; @0x4f0
	bcc	.LBB1_134               ; @0x4f2
;  %bb.84:                              ; %while.cond22.i.i140
                                        ;   in Loop: Header=BB1_83 Depth=1
	test_barrier	%r1,4           ; @0x4f6
	brne_s	%r1,0,.LBB1_83          ; @0x4fa
.LBB1_85:                               ; %while.end30.i.i147
                                        ; @0x4fc
	test_barrier	%r0,5           ; @0x4fc
	breq_s	%r0,0,.LBB1_89          ; @0x500
;  %bb.86:                              ; %while.body34.i.i155.preheader
	mov_s	%r2,-1                  ; @0x502
	mov_s	%r0,0x186a1@u32         ; @0x504
.LBB1_87:                               ; %while.body34.i.i155
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x50a
	add_s	%r2,%r2,1               ; @0x50a
	cmp_s	%r2,%r0                 ; @0x50c
	bcc	.LBB1_135               ; @0x50e
;  %bb.88:                              ; %while.cond31.i.i152
                                        ;   in Loop: Header=BB1_87 Depth=1
	test_barrier	%r1,5           ; @0x512
	brne_s	%r1,0,.LBB1_87          ; @0x516
.LBB1_89:                               ; %for.body.i163.preheader
                                        ; @0x518
	mov_s	%r13,0                  ; @0x518
	mov_s	%r14,0                  ; @0x51a
.LBB1_90:                               ; %for.body.i163
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x51c
	seteq	%r2,%r14,3              ; @0x51c
	mov_s	%r0,%r25                ; @0x520
	mov_s	%r1,%r14                ; @0x522
	mov_s	%r3,%r13                ; @0x524
	bl	gvml_load_vmr_16        ; @0x526
	add_s	%r13,%r13,2             ; @0x52a
	add_s	%r14,%r14,1             ; @0x52c
	brlo	%r14,4,.LBB1_90         ; @0x52e
;  %bb.91:                              ; %my_dma_l2_to_l1_32k.exit164
	mov_s	%r0,1                   ; @0x532
	mov_s	%r1,%r25                ; @0x534
	bl	gvml_load_16            ; @0x536
	mov_s	%r0,2                   ; @0x53a
	mov_s	%r1,0                   ; @0x53c
	mov_s	%r2,1                   ; @0x53e
	bl	gvml_add_u16            ; @0x540
	mov_s	%r0,%r24                ; @0x544
	mov_s	%r1,2                   ; @0x546
	bl	gvml_store_16           ; @0x548
	test_barrier	%r0,4           ; @0x54c
	ld_s	%r15,[%sp,72]           ; 4-byte Folded Reload
                                        ; @0x550
	brne_s	%r0,0,.LBB1_95          ; @0x552
;  %bb.92:                              ; %while.body.i.i.i169.preheader
	mov_s	%r2,-1                  ; @0x554
	mov_s	%r0,0x186a1@u32         ; @0x556
.LBB1_93:                               ; %while.body.i.i.i169
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x55c
	add_s	%r2,%r2,1               ; @0x55c
	cmp_s	%r2,%r0                 ; @0x55e
	bcc	.LBB1_136               ; @0x560
;  %bb.94:                              ; %while.cond.i.i.i168
                                        ;   in Loop: Header=BB1_93 Depth=1
	test_barrier	%r1,4           ; @0x564
	breq_s	%r1,0,.LBB1_93          ; @0x568
.LBB1_95:                               ; %while.end.i.i.i170
                                        ; @0x56a
	test_barrier	%r0,5           ; @0x56a
	add	%r20,%r15,0x8000@u32    ; @0x56e
	brne_s	%r0,0,.LBB1_99          ; @0x576
;  %bb.96:                              ; %while.body5.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x578
	mov_s	%r0,0x186a1@u32         ; @0x57a
.LBB1_97:                               ; %while.body5.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x580
	add_s	%r2,%r2,1               ; @0x580
	cmp_s	%r2,%r0                 ; @0x582
	bcc	.LBB1_137               ; @0x584
;  %bb.98:                              ; %while.cond1.i.i.i171
                                        ;   in Loop: Header=BB1_97 Depth=1
	test_barrier	%r1,5           ; @0x588
	breq_s	%r1,0,.LBB1_97          ; @0x58c
.LBB1_99:                               ; %while.cond11.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x58e
	ld.di	%r0,[%r18,0]            ; @0x58e
	brlt	%r0,0,.LBB1_99          ; @0x592
;  %bb.100:                             ; %while.end15.i.i.i
	st.di	%r19,[%r18,0]           ; @0x596
.LBB1_101:                              ; %while.cond16.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x59a
	ld.di	%r0,[%r23,0]            ; @0x59a
	brlt	%r0,0,.LBB1_101         ; @0x59e
;  %bb.102:                             ; %while.end21.i.i.i
	st.di	%r19,[%r23,0]           ; @0x5a2
	test_barrier	%r0,4           ; @0x5a6
	breq_s	%r0,0,.LBB1_106         ; @0x5aa
;  %bb.103:                             ; %while.body25.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x5ac
	mov_s	%r0,0x186a1@u32         ; @0x5ae
.LBB1_104:                              ; %while.body25.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x5b4
	add_s	%r2,%r2,1               ; @0x5b4
	cmp_s	%r2,%r0                 ; @0x5b6
	bcc	.LBB1_134               ; @0x5b8
;  %bb.105:                             ; %while.cond22.i.i.i
                                        ;   in Loop: Header=BB1_104 Depth=1
	test_barrier	%r1,4           ; @0x5bc
	brne_s	%r1,0,.LBB1_104         ; @0x5c0
.LBB1_106:                              ; %while.end30.i.i.i
                                        ; @0x5c2
	test_barrier	%r0,5           ; @0x5c2
	breq_s	%r0,0,.LBB1_110         ; @0x5c6
;  %bb.107:                             ; %while.body34.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x5c8
	mov_s	%r0,0x186a1@u32         ; @0x5ca
.LBB1_108:                              ; %while.body34.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x5d0
	add_s	%r2,%r2,1               ; @0x5d0
	cmp_s	%r2,%r0                 ; @0x5d2
	bcc	.LBB1_135               ; @0x5d4
;  %bb.109:                             ; %while.cond31.i.i.i
                                        ;   in Loop: Header=BB1_108 Depth=1
	test_barrier	%r1,5           ; @0x5d8
	brne_s	%r1,0,.LBB1_108         ; @0x5dc
.LBB1_110:                              ; %for.body.i.i.preheader
                                        ; @0x5de
	mov_s	%r13,0                  ; @0x5de
	mov_s	%r14,0                  ; @0x5e0
.LBB1_111:                              ; %for.body.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x5e2
	seteq	%r2,%r14,3              ; @0x5e2
	mov_s	%r0,%r24                ; @0x5e6
	mov_s	%r1,%r14                ; @0x5e8
	mov_s	%r3,%r13                ; @0x5ea
	bl	gvml_store_vmr_16       ; @0x5ec
	add_s	%r13,%r13,2             ; @0x5f0
	add_s	%r14,%r14,1             ; @0x5f2
	brlo	%r14,4,.LBB1_111        ; @0x5f4
;  %bb.112:                             ; %my_dma_l1_to_l2_32k.exit.i
	test_barrier	%r0,4           ; @0x5f8
	mov_s	%r12,0x4af6e0@u32       ; @0x5fc
	mov_s	%r14,0xd0000000@u32     ; @0x602
	brne_s	%r0,0,.LBB1_116         ; @0x608
;  %bb.113:                             ; %while.body.i.i.i.i.preheader
	mov_s	%r2,-1                  ; @0x60a
	mov_s	%r0,0x186a1@u32         ; @0x60c
.LBB1_114:                              ; %while.body.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x612
	add_s	%r2,%r2,1               ; @0x612
	cmp_s	%r2,%r0                 ; @0x614
	bcc	.LBB1_151               ; @0x616
;  %bb.115:                             ; %while.cond.i.i.i.i
                                        ;   in Loop: Header=BB1_114 Depth=1
	test_barrier	%r1,4           ; @0x61a
	breq_s	%r1,0,.LBB1_114         ; @0x61e
.LBB1_116:                              ; %while.cond10.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x620
	ld.di	%r0,[%r18,0]            ; @0x620
	brlt	%r0,0,.LBB1_116         ; @0x624
;  %bb.117:                             ; %my_dma_l2_to_l4_16k.exit.i.i
	mov_s	%r0,0xef3f00c0@u32      ; @0x628
	st.di	0,[%r21,0]              ; @0x62e
	st.di	%r15,[%fp,8]            ; @0x632
	st.di	%r0,[%r18,0]            ; @0x636
	test_barrier	%r1,5           ; @0x63a
	brne_s	%r1,0,.LBB1_121         ; @0x63e
;  %bb.118:                             ; %while.body21.i.i.i.i.preheader
	mov_s	%r3,-1                  ; @0x640
	mov_s	%r1,0x186a1@u32         ; @0x642
.LBB1_119:                              ; %while.body21.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x648
	add_s	%r3,%r3,1               ; @0x648
	cmp_s	%r3,%r1                 ; @0x64a
	bcc	.LBB1_152               ; @0x64c
;  %bb.120:                             ; %while.cond17.i.i.i.i
                                        ;   in Loop: Header=BB1_119 Depth=1
	test_barrier	%r2,5           ; @0x650
	breq_s	%r2,0,.LBB1_119         ; @0x654
.LBB1_121:                              ; %while.cond28.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x656
	ld.di	%r1,[%r23,0]            ; @0x656
	brlt	%r1,0,.LBB1_121         ; @0x65a
;  %bb.122:                             ; %my_dma_l2_to_l4_16k.exit2.i.i
	st.di	0,[%r21,0]              ; @0x65e
	st.di	%r20,[%r21,8]           ; @0x662
	st.di	%r0,[%r23,0]            ; @0x666
.LBB1_123:                              ; %while.cond.i.i3.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x66a
	ld.di	%r0,[%r18,0]            ; @0x66a
	brlt	%r0,0,.LBB1_123         ; @0x66e
;  %bb.124:                             ; %while.end.i.i4.i.i
	mov_s	%r1,0                   ; @0x672
	bset_s	%r1,%r1,11              ; @0x674
	mov_s	%r13,0xf0000230@u32     ; @0x676
	st.di	%r1,[%fp,0]             ; @0x67c
	st.di	%r12,[%fp,8]            ; @0x680
	st.di	%r14,[%r18,0]           ; @0x684
.LBB1_125:                              ; %while.cond1.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x688
	ld.di	%r0,[%r18,0]            ; @0x688
	brlt	%r0,0,.LBB1_125         ; @0x68c
;  %bb.126:                             ; %while.end6.i.i.i.i
	st.di	0,[%fp,0]               ; @0x690
	st.di	%r17,[%r18,0]           ; @0x694
.LBB1_127:                              ; %while.cond7.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x698
	ld.di	%r0,[%r18,0]            ; @0x698
	brlt	%r0,0,.LBB1_127         ; @0x69c
.LBB1_128:                              ; %while.cond.i2.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x6a0
	ld.di	%r0,[%r23,0]            ; @0x6a0
	brlt	%r0,0,.LBB1_128         ; @0x6a4
;  %bb.129:                             ; %while.end.i3.i.i.i
	st.di	%r1,[%r21,0]            ; @0x6a8
	st.di	%r12,[%r21,8]           ; @0x6ac
	st.di	%r14,[%r23,0]           ; @0x6b0
.LBB1_130:                              ; %while.cond1.i5.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x6b4
	ld.di	%r0,[%r23,0]            ; @0x6b4
	brlt	%r0,0,.LBB1_130         ; @0x6b8
;  %bb.131:                             ; %while.end6.i6.i.i.i
	st.di	0,[%r21,0]              ; @0x6bc
	st.di	%r17,[%r23,0]           ; @0x6c0
.LBB1_132:                              ; %while.cond7.i8.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x6c4
	ld.di	%r0,[%r23,0]            ; @0x6c4
	brlt	%r0,0,.LBB1_132         ; @0x6c8
;  %bb.133:                             ; %my_dma_l1_to_l4.exit
	ld_s	%r2,[%sp,68]            ; 4-byte Folded Reload
                                        ; @0x6cc
	ld	%r4,[%sp,64]            ; 4-byte Folded Reload
                                        ; @0x6ce
	mov_s	%r5,.L.str.6            ; @0x6d2
	mov_s	%r0,%r16                ; @0x6d8
	mov_s	%r1,140                 ; @0x6da
	mov_s	%r3,3                   ; @0x6dc
	bl	_gsi_log                ; @0x6de
	ld_s	%r0,[%r13,0]            ; @0x6e2
	.cfa_remember_state             ; @0x6e4
	add_s	%sp,%sp,4               ; @0x6e4
	.cfa_pop	4               ; @0x6e6
	ld	%blink,[%sp,56]         ; @0x6e6
	.cfa_restore	{%blink}        ; @0x6ea
	ld	%fp,[%sp,52]            ; @0x6ea
	.cfa_restore	{%fp}           ; @0x6ee
	ld	%r25,[%sp,48]           ; @0x6ee
	.cfa_restore	{%r25}          ; @0x6f2
	ld	%r24,[%sp,44]           ; @0x6f2
	.cfa_restore	{%r24}          ; @0x6f6
	ld	%r23,[%sp,40]           ; @0x6f6
	.cfa_restore	{%r23}          ; @0x6fa
	ld	%r22,[%sp,36]           ; @0x6fa
	.cfa_restore	{%r22}          ; @0x6fe
	ld	%r21,[%sp,32]           ; @0x6fe
	.cfa_restore	{%r21}          ; @0x702
	ld	%r20,[%sp,28]           ; @0x702
	.cfa_restore	{%r20}          ; @0x706
	ld	%r19,[%sp,24]           ; @0x706
	.cfa_restore	{%r19}          ; @0x70a
	ld	%r18,[%sp,20]           ; @0x70a
	.cfa_restore	{%r18}          ; @0x70e
	ld	%r17,[%sp,16]           ; @0x70e
	.cfa_restore	{%r17}          ; @0x712
	ld	%r16,[%sp,12]           ; @0x712
	.cfa_restore	{%r16}          ; @0x716
	ld_s	%r15,[%sp,8]            ; @0x716
	.cfa_restore	{%r15}          ; @0x718
	ld_s	%r14,[%sp,4]            ; @0x718
	.cfa_restore	{%r14}          ; @0x71a
	ld_s	%r13,[%sp,0]            ; @0x71a
	.cfa_restore	{%r13}          ; @0x71c
	add_s	%sp,%sp,72              ; @0x71c
	.cfa_pop	72              ; @0x71e
	j_s	[%blink]                ; @0x71e
	.cfa_restore_state              ; @0x720
.LBB1_134:                              ; %if.then28.i.i144
                                        ; @0x720
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x720
	add2	%r0,%r2,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x726
	add_s	%r2,%r2,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x72a
	b_s	.LBB1_139               ; @0x72c
.LBB1_135:                              ; %if.then37.i.i156
                                        ; @0x72e
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x72e
	add2	%r0,%r2,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x734
	add_s	%r2,%r2,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x738
	b_s	.LBB1_141               ; @0x73a
.LBB1_136:                              ; %if.then.i.i114
                                        ; @0x73c
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x73c
	add2	%r0,%r2,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x742
	add_s	%r2,%r2,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x746
	b_s	.LBB1_146               ; @0x748
.LBB1_137:                              ; %if.then8.i.i126
                                        ; @0x74a
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x74a
	add2	%r0,%r2,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x750
	add_s	%r2,%r2,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x754
	b_s	.LBB1_148               ; @0x756
.LBB1_138:                              ; %if.then28.i.i
                                        ; @0x758
	add2	%r0,%r13,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x758
	add	%r2,%r13,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x75c
.LBB1_139:                              ; %if.then28.i.i
                                        ; @0x760
	mov_s	%r3,.L.str.12           ; @0x760
	mov_s	%r1,89                  ; @0x766
	mov_s	%r4,.L.str.16           ; @0x768
	bl	_gsi_log_fatal          ; @0x76e
.LBB1_140:                              ; %if.then37.i.i
                                        ; @0x772
	add2	%r0,%r13,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x772
	add	%r2,%r13,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x776
.LBB1_141:                              ; %if.then37.i.i
                                        ; @0x77a
	mov_s	%r3,.L.str.12           ; @0x77a
	mov_s	%r1,94                  ; @0x780
	mov_s	%r4,.L.str.17           ; @0x782
	bl	_gsi_log_fatal          ; @0x788
.LBB1_142:                              ; %if.then9.i.i.i
                                        ; @0x78c
	add2	%r0,%r13,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x78c
	add	%r2,%r13,.L__func__.gal_fast_l2dma_mem_to_l2_start-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x790
	add	%r3,%r17,.L.str.12-.L.str.13 ; @0x794
	mov	%r1,328                 ; @0x798
	b_s	.LBB1_143               ; @0x79c
.LBB1_144:                              ; %if.then25.i.i.i
                                        ; @0x79e
	add2	%r0,%r13,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x79e
	add	%r2,%r13,.L__func__.gal_fast_l2dma_mem_to_l2_start-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x7a2
	add	%r3,%r17,.L.str.12-.L.str.13 ; @0x7a6
	mov	%r1,337                 ; @0x7aa
.LBB1_143:                              ; %if.then9.i.i.i
                                        ; @0x7ae
	mov_s	%r4,%r17                ; @0x7ae
	mov_s	%r5,.L.str.11           ; @0x7b0
	bl	_gsi_log_fatal          ; @0x7b6
.LBB1_145:                              ; %if.then.i.i
                                        ; @0x7ba
	add2	%r0,%r13,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x7ba
	add	%r2,%r13,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x7be
.LBB1_146:                              ; %if.then.i.i
                                        ; @0x7c2
	mov_s	%r3,.L.str.12           ; @0x7c2
	mov_s	%r1,67                  ; @0x7c8
	mov_s	%r4,.L.str.14           ; @0x7ca
	bl	_gsi_log_fatal          ; @0x7d0
.LBB1_147:                              ; %if.then8.i.i
                                        ; @0x7d4
	add2	%r0,%r13,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x7d4
	add	%r2,%r13,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x7d8
.LBB1_148:                              ; %if.then8.i.i
                                        ; @0x7dc
	mov_s	%r3,.L.str.12           ; @0x7dc
	mov_s	%r1,72                  ; @0x7e2
	mov_s	%r4,.L.str.15           ; @0x7e4
	bl	_gsi_log_fatal          ; @0x7ea
.LBB1_149:                              ; %if.then9.i.i.i65
                                        ; @0x7ee
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x7ee
	mov_s	%r4,.L.str.13           ; @0x7f4
	add2	%r0,%r2,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x7fa
	add_s	%r2,%r2,.L__func__.gal_fast_l2dma_mem_to_l2_start-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x7fe
	add	%r3,%r4,.L.str.12-.L.str.13 ; @0x800
	mov	%r1,328                 ; @0x804
	mov_s	%r5,.L.str.11           ; @0x808
	bl	_gsi_log_fatal          ; @0x80e
.LBB1_150:                              ; %if.then25.i.i.i81
                                        ; @0x812
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x812
	mov_s	%r4,.L.str.13           ; @0x818
	add2	%r0,%r2,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x81e
	add_s	%r2,%r2,.L__func__.gal_fast_l2dma_mem_to_l2_start-.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x822
	add	%r3,%r4,.L.str.12-.L.str.13 ; @0x824
	mov	%r1,337                 ; @0x828
	mov_s	%r5,.L.str.11           ; @0x82c
	bl	_gsi_log_fatal          ; @0x832
.LBB1_151:                              ; %if.then9.i.i.i.i
                                        ; @0x836
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x836
	mov_s	%r4,.L.str.13           ; @0x83c
	add2	%r0,%r2,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x842
	add	%r3,%r4,.L.str.12-.L.str.13 ; @0x846
	mov	%r1,610                 ; @0x84a
	mov_s	%r5,.L.str.18           ; @0x84e
	bl	_gsi_log_fatal          ; @0x854
.LBB1_152:                              ; %if.then25.i.i.i.i
                                        ; @0x858
	mov_s	%r2,.L__func__.gal_fast_l2dma_l2_to_mem_start ; @0x858
	mov_s	%r4,.L.str.13           ; @0x85e
	add2	%r0,%r2,(.L.str.7-.L__func__.gal_fast_l2dma_l2_to_mem_start)/4 ; @0x864
	add	%r3,%r4,.L.str.12-.L.str.13 ; @0x868
	mov	%r1,619                 ; @0x86c
	mov_s	%r5,.L.str.18           ; @0x870
	bl	_gsi_log_fatal          ; @0x876
	.cfa_ef
.Lfunc_end1:                            ; @0x87a

	.assert2	$sectoff==0x87a, "Expect offset 0x87a at " + $xtoa($sectoff)
