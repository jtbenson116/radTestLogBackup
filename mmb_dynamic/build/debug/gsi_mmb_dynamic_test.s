	.option	%reg
	.file	"dev_src/gsi_mmb_dynamic_test.c"
	.size	.L.str.13, 3
	.type	.L.str.13,@object
	.size	.L.str.1, 5
	.type	.L.str.1,@object
	.size	.L.str.9, 5
	.type	.L.str.9,@object
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
	.size	.L.str.8, 21
	.type	.L.str.8,@object
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
	.size	.L.str.10, 61
	.type	.L.str.10,@object
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
	.size	add_vrs_task, .Lfunc_end1-add_vrs_task
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
.L.str.13:                              ; @0x0
	.asciz	"%s"
	.align	4
.L.str.1:                               ; @0x4
	.asciz	"INFO"
	.align	4
.L.str.9:                               ; @0xc
	.asciz	"(%s)"
	.align	4
.L.str.12:                              ; @0x14
	.asciz	"FATAL"
	.align	4
.L.str.3:                               ; @0x1c
	.asciz	"vr_size: %d"
	.align	4
.L.str.4:                               ; @0x28
	.asciz	"num_vrs: %d"
	.align	4
.L__func__.add_vrs_task:                ; @0x34
	.asciz	"add_vrs_task"
	.align	4
.L.str.2:                               ; @0x44
	.asciz	"Running add vrs task"
	.align	4
.L.str.8:                               ; @0x5c
	.asciz	"Error: Assert failed"
	.align	4
.L.str.6:                               ; @0x74
	.asciz	"Vector add completed."
	.align	4
.L.str:                                 ; @0x8c
	.asciz	"dev_src/gsi_mmb_dynamic_test.c"
	.align	4
.L__func__.gal_fast_l2dma_l2_to_mem_start: ; @0xac
	.asciz	"gal_fast_l2dma_l2_to_mem_start"
	.align	4
.L__func__.gal_fast_l2dma_mem_to_l2_start: ; @0xcc
	.asciz	"gal_fast_l2dma_mem_to_l2_start"
	.align	4
.L__func__.gal_fast_l2dma_l2_ready_rst_all: ; @0xec
	.asciz	"gal_fast_l2dma_l2_ready_rst_all"
	.align	4
.L.str.5:                               ; @0x10c
	.asciz	"vm_regA: %d, vm_regB: %d, vm_regX: %d"
	.align	4
.L.str.7:                               ; @0x134
	.asciz	"/usr/include/gsi/archs36/gsi/gal-fast-funcs.h"
	.align	4
.L.str.16:                              ; @0x164
	.asciz	"COND_L2_READY A timed out (fail to rst l2_ready)"
	.align	4
.L.str.17:                              ; @0x198
	.asciz	"COND_L2_READY B timed out (fail to rst l2_ready)"
	.align	4
.L.str.10:                              ; @0x1cc
	.asciz	"gal_fast_l2dma_is_txns_valid(num_transactions, transactions)"
	.align	4
.L.str.11:                              ; @0x20c
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.align	4
.L.str.18:                              ; @0x26c
	.asciz	"COND_L2_READY timed out (make sure l2_ready is set before using gal_fast_l2dma_l2_to_mem_start)"
	.align	4
.L.str.14:                              ; @0x2cc
	.asciz	"COND_L2_READY A timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.align	4
.L.str.15:                              ; @0x330
	.asciz	"COND_L2_READY B timed out (make sure l2_ready is set before using gal_fast_l2dma_mem_to_l2_start)"
	.section	GSI_task_ep_names,"a",@progbits
	.align	4
add_vrs_task__name:                     ; @0x0
	.asciz	"add_vrs_task"
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

	.section	.text.add_vrs_task,"ax",@progbits
	.align	4
add_vrs_task:                           ; @add_vrs_task
                                        ; @0x0
	.cfa_bf	add_vrs_task
;  BB#0:                                ; %entry
	st.aw	%r13,[%sp,-72]          ; @0x0
	.cfa_push	72              ; @0x4
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
	mov_s	%r13,%r0                ; @0x3a
	mov_s	%r22,.L__func__.gal_fast_l2dma_l2_ready_rst_all ; @0x3c
	sub1	%r21,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str)/2 ; @0x42
	sub2	%r19,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.add_vrs_task)/4 ; @0x46
	sub2	%r20,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.1)/4 ; @0x4a
	sub2	%r5,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.2)/4 ; @0x4e
	mov_s	%r0,%r21                ; @0x52
	mov_s	%r1,43                  ; @0x54
	mov_s	%r2,%r19                ; @0x56
	mov_s	%r3,3                   ; @0x58
	mov_s	%r4,%r20                ; @0x5a
	bl	_gsi_log                ; @0x5c
	bl	gvml_init_once          ; @0x60
	ldb	%r0,[%r13,65]           ; @0x64
	asl_s	%r0,%r0,8               ; @0x68
	ldb	%r1,[%r13,64]           ; @0x6a
	or_s	%r0,%r0,%r1             ; @0x6e
	ldb	%r1,[%r13,67]           ; @0x70
	asl_s	%r1,%r1,8               ; @0x74
	ldb	%r2,[%r13,66]           ; @0x76
	or_s	%r1,%r1,%r2             ; @0x7a
	asl_s	%r1,%r1,16              ; @0x7c
	or_s	%r0,%r0,%r1             ; @0x7e
	ldb	%r1,[%r13,69]           ; @0x80
	asl_s	%r1,%r1,8               ; @0x84
	ldb	%r2,[%r13,68]           ; @0x86
	or_s	%r1,%r1,%r2             ; @0x8a
	ldb	%r2,[%r13,71]           ; @0x8c
	asl_s	%r2,%r2,8               ; @0x90
	ldb	%r3,[%r13,70]           ; @0x92
	or_s	%r2,%r2,%r3             ; @0x96
	asl_s	%r2,%r2,16              ; @0x98
	or_s	%r1,%r1,%r2             ; @0x9a
	bl	gal_mem_handle_to_apu_ptr ; @0x9c
	mov_s	%r18,%r0                ; @0xa0
	ldb	%r0,[%r13,73]           ; @0xa2
	asl_s	%r0,%r0,8               ; @0xa6
	ldb	%r1,[%r13,72]           ; @0xa8
	or_s	%r0,%r0,%r1             ; @0xac
	ldb	%r1,[%r13,75]           ; @0xae
	asl_s	%r1,%r1,8               ; @0xb2
	ldb	%r2,[%r13,74]           ; @0xb4
	or_s	%r1,%r1,%r2             ; @0xb8
	asl_s	%r1,%r1,16              ; @0xba
	or_s	%r0,%r0,%r1             ; @0xbc
	ldb	%r1,[%r13,77]           ; @0xbe
	asl_s	%r1,%r1,8               ; @0xc2
	ldb	%r2,[%r13,76]           ; @0xc4
	or_s	%r1,%r1,%r2             ; @0xc8
	ldb	%r2,[%r13,79]           ; @0xca
	asl_s	%r2,%r2,8               ; @0xce
	ldb	%r3,[%r13,78]           ; @0xd0
	or_s	%r2,%r2,%r3             ; @0xd4
	asl_s	%r2,%r2,16              ; @0xd6
	or_s	%r1,%r1,%r2             ; @0xd8
	bl	gal_mem_handle_to_apu_ptr ; @0xda
	mov_s	%r17,%r0                ; @0xde
	ldb	%r0,[%r13,93]           ; @0xe0
	asl_s	%r0,%r0,8               ; @0xe4
	ldb	%r1,[%r13,92]           ; @0xe6
	or_s	%r0,%r0,%r1             ; @0xea
	ldb	%r1,[%r13,95]           ; @0xec
	asl_s	%r1,%r1,8               ; @0xf0
	ldb	%r2,[%r13,94]           ; @0xf2
	or_s	%r1,%r1,%r2             ; @0xf6
	asl_s	%r1,%r1,16              ; @0xf8
	or_s	%r0,%r0,%r1             ; @0xfa
	ldb	%r1,[%r13,97]           ; @0xfc
	asl_s	%r1,%r1,8               ; @0x100
	ldb	%r2,[%r13,96]           ; @0x102
	or_s	%r1,%r1,%r2             ; @0x106
	ldb	%r2,[%r13,99]           ; @0x108
	asl_s	%r2,%r2,8               ; @0x10c
	ldb	%r3,[%r13,98]           ; @0x10e
	or_s	%r2,%r2,%r3             ; @0x112
	asl_s	%r2,%r2,16              ; @0x114
	or_s	%r1,%r1,%r2             ; @0x116
	bl	gal_mem_handle_to_apu_ptr ; @0x118
	st_s	%r0,[%sp,68]            ; 4-byte Folded Spill
                                        ; @0x11c
	ldb	%r0,[%r13,81]           ; @0x11e
	asl_s	%r0,%r0,8               ; @0x122
	ldb	%r1,[%r13,80]           ; @0x124
	or_s	%r0,%r0,%r1             ; @0x128
	ldb	%r1,[%r13,83]           ; @0x12a
	asl_s	%r1,%r1,8               ; @0x12e
	ldb	%r2,[%r13,82]           ; @0x130
	or_s	%r1,%r1,%r2             ; @0x134
	asl_s	%r1,%r1,16              ; @0x136
	or	%r6,%r1,%r0             ; @0x138
	ldb	%r23,[%r13,90]          ; @0x13c
	ldb	%r25,[%r13,91]          ; @0x140
	ldb	%fp,[%r13,88]           ; @0x144
	ldb	%r16,[%r13,89]          ; @0x148
	ldb	%r24,[%r13,86]          ; @0x14c
	ldb	%r14,[%r13,87]          ; @0x150
	ldb	%r15,[%r13,84]          ; @0x154
	ldb	%r13,[%r13,85]          ; @0x158
	sub2	%r5,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.3)/4 ; @0x15c
	mov_s	%r0,%r21                ; @0x160
	mov_s	%r1,65                  ; @0x162
	mov_s	%r2,%r19                ; @0x164
	mov_s	%r3,3                   ; @0x166
	mov_s	%r4,%r20                ; @0x168
	bl	_gsi_log                ; @0x16a
	asl_s	%r13,%r13,8             ; @0x16e
	or_s	%r13,%r13,%r15          ; @0x170
	asl_s	%r14,%r14,8             ; @0x172
	or	%r14,%r14,%r24          ; @0x174
	asl_s	%r14,%r14,16            ; @0x178
	or	%r15,%r14,%r13          ; @0x17a
	sub2	%r5,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.4)/4 ; @0x17e
	mov_s	%r0,%r21                ; @0x182
	mov_s	%r1,66                  ; @0x184
	mov_s	%r2,%r19                ; @0x186
	mov_s	%r3,3                   ; @0x188
	mov_s	%r4,%r20                ; @0x18a
	mov_s	%r6,%r15                ; @0x18c
	bl	_gsi_log                ; @0x18e
	mov_s	%r24,0                  ; @0x192
	st	0,[0xf0000230]          ; @0x194
	asl	%r16,%r16,8             ; @0x19c
	or	%fp,%r16,%fp            ; @0x1a0
	asl	%r25,%r25,8             ; @0x1a4
	or	%r23,%r25,%r23          ; @0x1a8
	asl	%r23,%r23,16            ; @0x1ac
	or	%r14,%r23,%fp           ; @0x1b0
	sub	%r0,%r15,3              ; @0x1b4
	brge	%r0,%r14,.LBB1_4        ; @0x1b8
;  BB#1:                                ; %if.then
	sub	%r0,%r15,1              ; @0x1bc
	brne	%r14,%r0,.LBB1_2        ; @0x1c0
;  BB#3:                                ; %if.then11
	mov_s	%r23,1                  ; @0x1c4
	b_s	.LBB1_5                 ; @0x1c6
.LBB1_4:                                ; %if.else
                                        ; @0x1c8
	add	%r23,%r14,2             ; @0x1c8
	add	%r24,%r14,1             ; @0x1cc
	b_s	.LBB1_5                 ; @0x1d0
.LBB1_2:                                ; @0x1d2
	mov_s	%r23,0                  ; @0x1d2
	mov_s	%r24,%r0                ; @0x1d4
.LBB1_5:                                ; %if.end14
                                        ; @0x1d6
	st	%r23,[%sp,0]            ; @0x1d6
	sub1	%r0,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str)/2 ; @0x1da
	sub2	%r2,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.add_vrs_task)/4 ; @0x1de
	sub2	%r4,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.1)/4 ; @0x1e2
	add	%r5,%r22,.L.str.5-.L__func__.gal_fast_l2dma_l2_ready_rst_all ; @0x1e6
	mov_s	%r1,100                 ; @0x1ea
	mov_s	%r3,3                   ; @0x1ec
	mov_s	%r6,%r14                ; @0x1ee
	mov_s	%r7,%r24                ; @0x1f0
	bl	_gsi_log                ; @0x1f2
	clri	%r0                     ; @0x1f6
	sr	64,[0x48]               ; @0x1fa
	sr	1,[0x47]                ; @0x202
.LBB1_6:                                ; %while.cond.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x20a
	lr	%r1,[0x48]              ; @0x20a
	and	%r1,%r1,256             ; @0x20e
	brne_s	%r1,0,.LBB1_6           ; @0x212
;  BB#7:                                ; %gal_fast_cache_dcache_invalidate_and_flush.exit
	mov_s	%r1,0x88888889          ; @0x214
	mpyh	%r2,%r23,%r1            ; @0x21a
	add_s	%r2,%r2,%r23            ; @0x21e
	lsr	%r3,%r2,31              ; @0x220
	asr_s	%r2,%r2,3               ; @0x224
	add_s	%r2,%r2,%r3             ; @0x226
	mpy	%r2,%r2,15              ; @0x228
	sub	%r19,%r23,%r2           ; @0x22c
	mpyh	%r2,%r24,%r1            ; @0x230
	add_s	%r2,%r2,%r24            ; @0x234
	lsr	%r3,%r2,31              ; @0x236
	asr_s	%r2,%r2,3               ; @0x23a
	add_s	%r2,%r2,%r3             ; @0x23c
	mpy	%r2,%r2,15              ; @0x23e
	sub	%fp,%r24,%r2            ; @0x242
	mpyh	%r1,%r14,%r1            ; @0x246
	add_s	%r1,%r1,%r14            ; @0x24a
	lsr	%r2,%r1,31              ; @0x24c
	asr_s	%r1,%r1,3               ; @0x250
	add_s	%r1,%r1,%r2             ; @0x252
	mpy	%r1,%r1,15              ; @0x254
	sub_s	%r1,%r14,%r1            ; @0x258
	st_s	%r1,[%sp,72]            ; 4-byte Folded Spill
                                        ; @0x25a
	seti	%r0                     ; @0x25c
	.extInstruction test_barrier,0x07,0x03,SUFFIX_FLAG,SYNTAX_2OP
	test_barrier	%r0,4           ; @0x260
	brne_s	%r0,0,.LBB1_24          ; @0x264
;  BB#8:                                ; %while.body.lr.ph.i.i.i59
	test_barrier	%r0,4           ; @0x266
	brne_s	%r0,0,.LBB1_24          ; @0x26a
;  BB#9:                                ; %while.body.lr.ph14.i.i.i
	test_barrier	%r0,4           ; @0x26c
	brne_s	%r0,0,.LBB1_24          ; @0x270
;  BB#10:                               ; %while.body.i.preheader.i.i60
	test_barrier	%r0,4           ; @0x272
	brne_s	%r0,0,.LBB1_24          ; @0x276
;  BB#11:                               ; %while.body.i.lr.ph.i.i61
	test_barrier	%r0,4           ; @0x278
	brne_s	%r0,0,.LBB1_24          ; @0x27c
;  BB#12:                               ; %while.cond.i.preheader.i.i
	test_barrier	%r0,4           ; @0x27e
	brne_s	%r0,0,.LBB1_24          ; @0x282
;  BB#13:                               ; %while.body.i.lr.ph31.i.i
	test_barrier	%r0,4           ; @0x284
	brne_s	%r0,0,.LBB1_24          ; @0x288
;  BB#14:                               ; %while.body.i.lr.ph36.i.i
	test_barrier	%r0,4           ; @0x28a
	brne_s	%r0,0,.LBB1_24          ; @0x28e
;  BB#15:                               ; %while.body.i.i.preheader.i
	test_barrier	%r0,4           ; @0x290
	brne_s	%r0,0,.LBB1_24          ; @0x294
;  BB#16:                               ; %while.body.i.i.lr.ph.i62
	test_barrier	%r0,4           ; @0x296
	brne_s	%r0,0,.LBB1_24          ; @0x29a
;  BB#17:                               ; %while.cond.i.i.i65.preheader
	test_barrier	%r0,4           ; @0x29c
	brne_s	%r0,0,.LBB1_24          ; @0x2a0
;  BB#18:                               ; %while.body.i.i.i67.lr.ph
	test_barrier	%r0,4           ; @0x2a2
	brne_s	%r0,0,.LBB1_24          ; @0x2a6
;  BB#19:                               ; %while.body.i.i.i67.lr.ph475
	test_barrier	%r0,4           ; @0x2a8
	brne_s	%r0,0,.LBB1_24          ; @0x2ac
;  BB#20:                               ; %while.body.i.i.i67.preheader
	mov_s	%r2,11                  ; @0x2ae
	mov_s	%r0,0x186a1             ; @0x2b0
.LBB1_22:                               ; %while.body.i.i.i67
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x2b6
	add_s	%r2,%r2,1               ; @0x2b6
	cmp_s	%r2,%r0                 ; @0x2b8
	bcc	.LBB1_23                ; @0x2ba
;  BB#21:                               ; %while.cond.i.i.i65
                                        ;   in Loop: Header=BB1_22 Depth=1
	test_barrier	%r1,4           ; @0x2be
	breq_s	%r1,0,.LBB1_22          ; @0x2c2
.LBB1_24:                               ; %while.cond10.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x2c4
	mov_s	%r25,0xf0000300         ; @0x2c4
	ld.di	%r0,[%r25,0]            ; @0x2ca
	brlt	%r0,0,.LBB1_24          ; @0x2ce
;  BB#25:                               ; %my_dma_l4_to_l2_16k.exit.i
	mov_s	%r0,0                   ; @0x2d2
	mov_s	%r12,0xf0000308         ; @0x2d4
	st.di	%r0,[%r12,0]            ; @0x2da
	st.di	%r18,[%r12,8]           ; @0x2de
	mov_s	%r16,0xff3f00c0         ; @0x2e2
	st.di	%r16,[%r25,0]           ; @0x2e8
	add	%r18,%r18,32768         ; @0x2ec
	test_barrier	%r1,5           ; @0x2f4
	brne_s	%r1,0,.LBB1_42          ; @0x2f8
;  BB#26:                               ; %while.body21.lr.ph.i.i.i
	test_barrier	%r1,5           ; @0x2fa
	brne_s	%r1,0,.LBB1_42          ; @0x2fe
;  BB#27:                               ; %while.body21.lr.ph27.i.i.i
	test_barrier	%r1,5           ; @0x300
	brne_s	%r1,0,.LBB1_42          ; @0x304
;  BB#28:                               ; %while.body21.i.preheader.i.i
	test_barrier	%r1,5           ; @0x306
	brne_s	%r1,0,.LBB1_42          ; @0x30a
;  BB#29:                               ; %while.body21.i.lr.ph.i.i
	test_barrier	%r1,5           ; @0x30c
	brne_s	%r1,0,.LBB1_42          ; @0x310
;  BB#30:                               ; %while.cond17.i.preheader.i.i
	test_barrier	%r1,5           ; @0x312
	brne_s	%r1,0,.LBB1_42          ; @0x316
;  BB#31:                               ; %while.body21.i.lr.ph45.i.i
	test_barrier	%r1,5           ; @0x318
	brne_s	%r1,0,.LBB1_42          ; @0x31c
;  BB#32:                               ; %while.body21.i.lr.ph50.i.i
	test_barrier	%r1,5           ; @0x31e
	brne_s	%r1,0,.LBB1_42          ; @0x322
;  BB#33:                               ; %while.body21.i.i.preheader.i
	test_barrier	%r1,5           ; @0x324
	brne_s	%r1,0,.LBB1_42          ; @0x328
;  BB#34:                               ; %while.body21.i.i.lr.ph.i
	test_barrier	%r1,5           ; @0x32a
	brne_s	%r1,0,.LBB1_42          ; @0x32e
;  BB#35:                               ; %while.cond17.i.i.i.preheader
	test_barrier	%r1,5           ; @0x330
	brne_s	%r1,0,.LBB1_42          ; @0x334
;  BB#36:                               ; %while.body21.i.i.i.lr.ph
	test_barrier	%r1,5           ; @0x336
	brne_s	%r1,0,.LBB1_42          ; @0x33a
;  BB#37:                               ; %while.body21.i.i.i.lr.ph462
	test_barrier	%r1,5           ; @0x33c
	brne_s	%r1,0,.LBB1_42          ; @0x340
;  BB#38:                               ; %while.body21.i.i.i.preheader
	mov_s	%r3,11                  ; @0x342
	mov_s	%r1,0x186a1             ; @0x344
.LBB1_40:                               ; %while.body21.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x34a
	add_s	%r3,%r3,1               ; @0x34a
	cmp_s	%r3,%r1                 ; @0x34c
	bcc	.LBB1_41                ; @0x34e
;  BB#39:                               ; %while.cond17.i.i.i
                                        ;   in Loop: Header=BB1_40 Depth=1
	test_barrier	%r2,5           ; @0x352
	breq_s	%r2,0,.LBB1_40          ; @0x356
.LBB1_42:                               ; %while.cond28.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x358
	mov_s	%r21,0xf0000380         ; @0x358
	ld.di	%r1,[%r21,0]            ; @0x35e
	brlt	%r1,0,.LBB1_42          ; @0x362
;  BB#43:                               ; %my_dma_l4_to_l2_16k.exit2.i
	mov_s	%r20,0xf0000388         ; @0x366
	st.di	%r0,[%r20,0]            ; @0x36c
	st.di	%r18,[%r20,8]           ; @0x370
	st.di	%r16,[%r21,0]           ; @0x374
.LBB1_44:                               ; %while.cond.i.i3.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x378
	ld.di	%r1,[%r25,0]            ; @0x378
	brlt	%r1,0,.LBB1_44          ; @0x37c
;  BB#45:                               ; %while.end.i.i.i
	st.di	%r0,[%r12,0]            ; @0x380
	ror	%r1,1                   ; @0x384
	st.di	%r1,[%r25,0]            ; @0x388
.LBB1_46:                               ; %while.cond1.i.i.i68
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x38c
	ld.di	%r0,[%r25,0]            ; @0x38c
	brlt	%r0,0,.LBB1_46          ; @0x390
.LBB1_47:                               ; %while.cond.i2.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x394
	ld.di	%r0,[%r21,0]            ; @0x394
	brlt	%r0,0,.LBB1_47          ; @0x398
;  BB#48:                               ; %while.end.i3.i.i
	st.di	0,[%r20,0]              ; @0x39c
	st.di	%r1,[%r21,0]            ; @0x3a0
.LBB1_49:                               ; %while.cond1.i5.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x3a4
	ld.di	%r0,[%r21,0]            ; @0x3a4
	brlt	%r0,0,.LBB1_49          ; @0x3a8
;  BB#50:                               ; %my_dma_l4_to_l2_32k.exit
	test_barrier	%r0,4           ; @0x3ac
	brne_s	%r0,0,.LBB1_61          ; @0x3b0
;  BB#51:                               ; %while.body.lr.ph.i.i
	test_barrier	%r0,4           ; @0x3b2
	brne_s	%r0,0,.LBB1_61          ; @0x3b6
;  BB#52:                               ; %while.body.lr.ph90.i.i
	test_barrier	%r0,4           ; @0x3b8
	brne_s	%r0,0,.LBB1_61          ; @0x3bc
;  BB#53:                               ; %while.body.i.preheader.i
	test_barrier	%r0,4           ; @0x3be
	brne_s	%r0,0,.LBB1_61          ; @0x3c2
;  BB#54:                               ; %while.body.i.lr.ph.i
	test_barrier	%r0,4           ; @0x3c4
	brne_s	%r0,0,.LBB1_61          ; @0x3c8
;  BB#55:                               ; %while.cond.i.i.preheader
	test_barrier	%r0,4           ; @0x3ca
	brne_s	%r0,0,.LBB1_61          ; @0x3ce
;  BB#56:                               ; %while.body.i.i.lr.ph
	test_barrier	%r0,4           ; @0x3d0
	brne_s	%r0,0,.LBB1_61          ; @0x3d4
;  BB#57:                               ; %while.body.i.i.lr.ph449
	test_barrier	%r0,4           ; @0x3d6
	brne_s	%r0,0,.LBB1_61          ; @0x3da
;  BB#58:                               ; %while.body.i.i.preheader
	mov_s	%r2,6                   ; @0x3dc
	mov_s	%r0,0x186a1             ; @0x3de
.LBB1_59:                               ; %while.body.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x3e4
	add_s	%r2,%r2,1               ; @0x3e4
	cmp_s	%r2,%r0                 ; @0x3e6
	bcc	.LBB1_217               ; @0x3e8
;  BB#60:                               ; %while.cond.i.i
                                        ;   in Loop: Header=BB1_59 Depth=1
	test_barrier	%r1,4           ; @0x3ec
	breq_s	%r1,0,.LBB1_59          ; @0x3f0
.LBB1_61:                               ; %while.cond1.preheader.i.i
                                        ; @0x3f2
	test_barrier	%r0,5           ; @0x3f2
	brne_s	%r0,0,.LBB1_73          ; @0x3f6
;  BB#62:                               ; %while.body5.lr.ph.i.i
	test_barrier	%r0,5           ; @0x3f8
	brne_s	%r0,0,.LBB1_73          ; @0x3fc
;  BB#63:                               ; %while.body5.lr.ph77.i.i
	test_barrier	%r0,5           ; @0x3fe
	brne_s	%r0,0,.LBB1_73          ; @0x402
;  BB#64:                               ; %while.body5.i.preheader.i
	test_barrier	%r0,5           ; @0x404
	brne_s	%r0,0,.LBB1_73          ; @0x408
;  BB#65:                               ; %while.body5.i.lr.ph.i
	test_barrier	%r0,5           ; @0x40a
	brne_s	%r0,0,.LBB1_73          ; @0x40e
;  BB#66:                               ; %while.cond1.i.i.preheader
	test_barrier	%r0,5           ; @0x410
	brne_s	%r0,0,.LBB1_73          ; @0x414
;  BB#67:                               ; %while.body5.i.i.lr.ph
	test_barrier	%r0,5           ; @0x416
	brne_s	%r0,0,.LBB1_73          ; @0x41a
;  BB#68:                               ; %while.body5.i.i.lr.ph436
	test_barrier	%r0,5           ; @0x41c
	brne_s	%r0,0,.LBB1_73          ; @0x420
;  BB#69:                               ; %while.body5.i.i.preheader
	mov_s	%r2,6                   ; @0x422
	mov_s	%r0,0x186a1             ; @0x424
.LBB1_71:                               ; %while.body5.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x42a
	add_s	%r2,%r2,1               ; @0x42a
	cmp_s	%r2,%r0                 ; @0x42c
	bcc	.LBB1_72                ; @0x42e
;  BB#70:                               ; %while.cond1.i.i
                                        ;   in Loop: Header=BB1_71 Depth=1
	test_barrier	%r1,5           ; @0x432
	breq_s	%r1,0,.LBB1_71          ; @0x436
.LBB1_73:                               ; %while.cond11.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x438
	ld.di	%r0,[%r25,0]            ; @0x438
	brlt	%r0,0,.LBB1_73          ; @0x43c
;  BB#74:                               ; %while.end15.i.i
	mov_s	%r18,0x82000000         ; @0x440
	st.di	%r18,[%r25,0]           ; @0x446
.LBB1_75:                               ; %while.cond16.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x44a
	ld.di	%r0,[%r21,0]            ; @0x44a
	brlt	%r0,0,.LBB1_75          ; @0x44e
;  BB#76:                               ; %while.end21.i.i
	st.di	%r18,[%r21,0]           ; @0x452
	test_barrier	%r0,4           ; @0x456
	breq_s	%r0,0,.LBB1_87          ; @0x45a
;  BB#77:                               ; %while.body25.lr.ph.i.i
	test_barrier	%r0,4           ; @0x45c
	breq_s	%r0,0,.LBB1_87          ; @0x460
;  BB#78:                               ; %while.body25.lr.ph64.i.i
	test_barrier	%r0,4           ; @0x462
	breq_s	%r0,0,.LBB1_87          ; @0x466
;  BB#79:                               ; %while.body25.i.preheader.i
	test_barrier	%r0,4           ; @0x468
	breq_s	%r0,0,.LBB1_87          ; @0x46c
;  BB#80:                               ; %while.body25.i.lr.ph.i
	test_barrier	%r0,4           ; @0x46e
	breq_s	%r0,0,.LBB1_87          ; @0x472
;  BB#81:                               ; %while.cond22.i.i.preheader
	test_barrier	%r0,4           ; @0x474
	breq_s	%r0,0,.LBB1_87          ; @0x478
;  BB#82:                               ; %while.body25.i.i.lr.ph
	test_barrier	%r0,4           ; @0x47a
	breq_s	%r0,0,.LBB1_87          ; @0x47e
;  BB#83:                               ; %while.body25.i.i.lr.ph423
	test_barrier	%r0,4           ; @0x480
	breq_s	%r0,0,.LBB1_87          ; @0x484
;  BB#84:                               ; %while.body25.i.i.preheader
	mov_s	%r2,6                   ; @0x486
	mov_s	%r0,0x186a1             ; @0x488
.LBB1_85:                               ; %while.body25.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x48e
	add_s	%r2,%r2,1               ; @0x48e
	cmp_s	%r2,%r0                 ; @0x490
	bcc	.LBB1_268               ; @0x492
;  BB#86:                               ; %while.cond22.i.i
                                        ;   in Loop: Header=BB1_85 Depth=1
	test_barrier	%r1,4           ; @0x496
	brne_s	%r1,0,.LBB1_85          ; @0x49a
.LBB1_87:                               ; %while.cond31.preheader.i.i
                                        ; @0x49c
	test_barrier	%r0,5           ; @0x49c
	breq_s	%r0,0,.LBB1_92          ; @0x4a0
;  BB#88:                               ; %while.body34.lr.ph.i.i
	test_barrier	%r0,5           ; @0x4a2
	breq_s	%r0,0,.LBB1_92          ; @0x4a6
;  BB#89:                               ; %while.body34.lr.ph51.i.i
	test_barrier	%r0,5           ; @0x4a8
	breq_s	%r0,0,.LBB1_92          ; @0x4ac
;  BB#90:                               ; %while.body34.i.preheader.i
	test_barrier	%r0,5           ; @0x4ae
	breq_s	%r0,0,.LBB1_92          ; @0x4b2
;  BB#91:                               ; %while.body34.i.lr.ph.i
	test_barrier	%r0,5           ; @0x4b4
	breq_s	%r0,0,.LBB1_92          ; @0x4b8
;  BB#108:                              ; %while.cond31.i.i.preheader
	test_barrier	%r0,5           ; @0x4ba
	breq_s	%r0,0,.LBB1_92          ; @0x4be
;  BB#109:                              ; %while.body34.i.i.lr.ph
	test_barrier	%r0,5           ; @0x4c0
	breq_s	%r0,0,.LBB1_92          ; @0x4c4
;  BB#110:                              ; %while.body34.i.i.lr.ph410
	test_barrier	%r0,5           ; @0x4c6
	breq_s	%r0,0,.LBB1_92          ; @0x4ca
;  BB#111:                              ; %while.body34.i.i.preheader
	mov_s	%r2,6                   ; @0x4cc
	mov_s	%r0,0x186a1             ; @0x4ce
.LBB1_113:                              ; %while.body34.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x4d4
	add_s	%r2,%r2,1               ; @0x4d4
	cmp_s	%r2,%r0                 ; @0x4d6
	bcc	.LBB1_114               ; @0x4d8
;  BB#112:                              ; %while.cond31.i.i
                                        ;   in Loop: Header=BB1_113 Depth=1
	test_barrier	%r1,5           ; @0x4dc
	brne_s	%r1,0,.LBB1_113         ; @0x4e0
.LBB1_92:                               ; %for.body.i.preheader
                                        ; @0x4e2
	mov_s	%r15,0                  ; @0x4e2
	mov_s	%r13,0                  ; @0x4e4
.LBB1_93:                               ; %for.body.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x4e6
	seteq	%r2,%r13,3              ; @0x4e6
	mov_s	%r0,%r14                ; @0x4ea
	mov_s	%r1,%r13                ; @0x4ec
	mov_s	%r3,%r15                ; @0x4ee
	bl	gvml_load_vmr_16        ; @0x4f0
	add_s	%r15,%r15,2             ; @0x4f4
	add_s	%r13,%r13,1             ; @0x4f6
	brlo	%r13,4,.LBB1_93         ; @0x4f8
;  BB#94:                               ; %my_dma_l2_to_l1_32k.exit
	ld_s	%r0,[%sp,72]            ; 4-byte Folded Reload
                                        ; @0x4fc
	mov_s	%r1,%r14                ; @0x4fe
	bl	gvml_load_16            ; @0x500
	test_barrier	%r0,4           ; @0x504
	ror	%r15,1                  ; @0x508
	mov_s	%r12,0xf0000308         ; @0x50c
	brne_s	%r0,0,.LBB1_117         ; @0x512
;  BB#95:                               ; %while.body.lr.ph.i.i.i74
	test_barrier	%r0,4           ; @0x514
	brne_s	%r0,0,.LBB1_117         ; @0x518
;  BB#96:                               ; %while.body.lr.ph14.i.i.i77
	test_barrier	%r0,4           ; @0x51a
	brne_s	%r0,0,.LBB1_117         ; @0x51e
;  BB#97:                               ; %while.body.i.preheader.i.i80
	test_barrier	%r0,4           ; @0x520
	brne_s	%r0,0,.LBB1_117         ; @0x524
;  BB#98:                               ; %while.body.i.lr.ph.i.i83
	test_barrier	%r0,4           ; @0x526
	brne_s	%r0,0,.LBB1_117         ; @0x52a
;  BB#99:                               ; %while.cond.i.preheader.i.i86
	test_barrier	%r0,4           ; @0x52c
	brne_s	%r0,0,.LBB1_117         ; @0x530
;  BB#100:                              ; %while.body.i.lr.ph31.i.i89
	test_barrier	%r0,4           ; @0x532
	brne_s	%r0,0,.LBB1_117         ; @0x536
;  BB#101:                              ; %while.body.i.lr.ph36.i.i92
	test_barrier	%r0,4           ; @0x538
	brne_s	%r0,0,.LBB1_117         ; @0x53c
;  BB#102:                              ; %while.body.i.i.preheader.i95
	test_barrier	%r0,4           ; @0x53e
	brne_s	%r0,0,.LBB1_117         ; @0x542
;  BB#103:                              ; %while.body.i.i.lr.ph.i98
	test_barrier	%r0,4           ; @0x544
	brne_s	%r0,0,.LBB1_117         ; @0x548
;  BB#104:                              ; %while.cond.i.i.i103.preheader
	test_barrier	%r0,4           ; @0x54a
	brne_s	%r0,0,.LBB1_117         ; @0x54e
;  BB#105:                              ; %while.body.i.i.i105.lr.ph
	test_barrier	%r0,4           ; @0x550
	brne_s	%r0,0,.LBB1_117         ; @0x554
;  BB#106:                              ; %while.body.i.i.i105.lr.ph397
	test_barrier	%r0,4           ; @0x556
	brne_s	%r0,0,.LBB1_117         ; @0x55a
;  BB#107:                              ; %while.body.i.i.i105.preheader
	mov_s	%r2,11                  ; @0x55c
	mov_s	%r0,0x186a1             ; @0x55e
.LBB1_116:                              ; %while.body.i.i.i105
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x564
	add_s	%r2,%r2,1               ; @0x564
	cmp_s	%r2,%r0                 ; @0x566
	bcc	.LBB1_23                ; @0x568
;  BB#115:                              ; %while.cond.i.i.i103
                                        ;   in Loop: Header=BB1_116 Depth=1
	test_barrier	%r1,4           ; @0x56c
	breq_s	%r1,0,.LBB1_116         ; @0x570
.LBB1_117:                              ; %while.cond10.i.i.i108
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x572
	ld.di	%r0,[%r25,0]            ; @0x572
	brlt	%r0,0,.LBB1_117         ; @0x576
;  BB#118:                              ; %my_dma_l4_to_l2_16k.exit.i112
	mov_s	%r0,0                   ; @0x57a
	st.di	%r0,[%r12,0]            ; @0x57c
	st.di	%r17,[%r12,8]           ; @0x580
	st.di	%r16,[%r25,0]           ; @0x584
	add	%r17,%r17,32768         ; @0x588
	test_barrier	%r1,5           ; @0x590
	brne_s	%r1,0,.LBB1_134         ; @0x594
;  BB#119:                              ; %while.body21.lr.ph.i.i.i115
	test_barrier	%r1,5           ; @0x596
	brne_s	%r1,0,.LBB1_134         ; @0x59a
;  BB#120:                              ; %while.body21.lr.ph27.i.i.i118
	test_barrier	%r1,5           ; @0x59c
	brne_s	%r1,0,.LBB1_134         ; @0x5a0
;  BB#121:                              ; %while.body21.i.preheader.i.i121
	test_barrier	%r1,5           ; @0x5a2
	brne_s	%r1,0,.LBB1_134         ; @0x5a6
;  BB#122:                              ; %while.body21.i.lr.ph.i.i124
	test_barrier	%r1,5           ; @0x5a8
	brne_s	%r1,0,.LBB1_134         ; @0x5ac
;  BB#123:                              ; %while.cond17.i.preheader.i.i127
	test_barrier	%r1,5           ; @0x5ae
	brne_s	%r1,0,.LBB1_134         ; @0x5b2
;  BB#124:                              ; %while.body21.i.lr.ph45.i.i130
	test_barrier	%r1,5           ; @0x5b4
	brne_s	%r1,0,.LBB1_134         ; @0x5b8
;  BB#125:                              ; %while.body21.i.lr.ph50.i.i133
	test_barrier	%r1,5           ; @0x5ba
	brne_s	%r1,0,.LBB1_134         ; @0x5be
;  BB#126:                              ; %while.body21.i.i.preheader.i136
	test_barrier	%r1,5           ; @0x5c0
	brne_s	%r1,0,.LBB1_134         ; @0x5c4
;  BB#127:                              ; %while.body21.i.i.lr.ph.i139
	test_barrier	%r1,5           ; @0x5c6
	brne_s	%r1,0,.LBB1_134         ; @0x5ca
;  BB#128:                              ; %while.cond17.i.i.i144.preheader
	test_barrier	%r1,5           ; @0x5cc
	brne_s	%r1,0,.LBB1_134         ; @0x5d0
;  BB#129:                              ; %while.body21.i.i.i146.lr.ph
	test_barrier	%r1,5           ; @0x5d2
	brne_s	%r1,0,.LBB1_134         ; @0x5d6
;  BB#130:                              ; %while.body21.i.i.i146.lr.ph384
	test_barrier	%r1,5           ; @0x5d8
	brne_s	%r1,0,.LBB1_134         ; @0x5dc
;  BB#131:                              ; %while.body21.i.i.i146.preheader
	mov_s	%r3,11                  ; @0x5de
	mov_s	%r1,0x186a1             ; @0x5e0
.LBB1_133:                              ; %while.body21.i.i.i146
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x5e6
	add_s	%r3,%r3,1               ; @0x5e6
	cmp_s	%r3,%r1                 ; @0x5e8
	bcc	.LBB1_41                ; @0x5ea
;  BB#132:                              ; %while.cond17.i.i.i144
                                        ;   in Loop: Header=BB1_133 Depth=1
	test_barrier	%r2,5           ; @0x5ee
	breq_s	%r2,0,.LBB1_133         ; @0x5f2
.LBB1_134:                              ; %while.cond28.i.i.i149
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x5f4
	ld.di	%r1,[%r21,0]            ; @0x5f4
	brlt	%r1,0,.LBB1_134         ; @0x5f8
;  BB#135:                              ; %my_dma_l4_to_l2_16k.exit2.i150
	st.di	%r0,[%r20,0]            ; @0x5fc
	st.di	%r17,[%r20,8]           ; @0x600
	st.di	%r16,[%r21,0]           ; @0x604
.LBB1_136:                              ; %while.cond.i.i3.i152
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x608
	ld.di	%r1,[%r25,0]            ; @0x608
	brlt	%r1,0,.LBB1_136         ; @0x60c
;  BB#137:                              ; %while.end.i.i.i153
	st.di	%r0,[%r12,0]            ; @0x610
	st.di	%r15,[%r25,0]           ; @0x614
.LBB1_138:                              ; %while.cond1.i.i.i155
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x618
	ld.di	%r0,[%r25,0]            ; @0x618
	brlt	%r0,0,.LBB1_138         ; @0x61c
.LBB1_139:                              ; %while.cond.i2.i.i157
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x620
	ld.di	%r0,[%r21,0]            ; @0x620
	brlt	%r0,0,.LBB1_139         ; @0x624
;  BB#140:                              ; %while.end.i3.i.i158
	st.di	0,[%r20,0]              ; @0x628
	st.di	%r15,[%r21,0]           ; @0x62c
.LBB1_141:                              ; %while.cond1.i5.i.i160
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x630
	ld.di	%r0,[%r21,0]            ; @0x630
	brlt	%r0,0,.LBB1_141         ; @0x634
;  BB#142:                              ; %my_dma_l4_to_l2_32k.exit161
	test_barrier	%r0,4           ; @0x638
	brne_s	%r0,0,.LBB1_153         ; @0x63c
;  BB#143:                              ; %while.body.lr.ph.i.i166
	test_barrier	%r0,4           ; @0x63e
	brne_s	%r0,0,.LBB1_153         ; @0x642
;  BB#144:                              ; %while.body.lr.ph90.i.i169
	test_barrier	%r0,4           ; @0x644
	brne_s	%r0,0,.LBB1_153         ; @0x648
;  BB#145:                              ; %while.body.i.preheader.i172
	test_barrier	%r0,4           ; @0x64a
	brne_s	%r0,0,.LBB1_153         ; @0x64e
;  BB#146:                              ; %while.body.i.lr.ph.i175
	test_barrier	%r0,4           ; @0x650
	brne_s	%r0,0,.LBB1_153         ; @0x654
;  BB#147:                              ; %while.cond.i.i180.preheader
	test_barrier	%r0,4           ; @0x656
	brne_s	%r0,0,.LBB1_153         ; @0x65a
;  BB#148:                              ; %while.body.i.i197.lr.ph
	test_barrier	%r0,4           ; @0x65c
	brne_s	%r0,0,.LBB1_153         ; @0x660
;  BB#149:                              ; %while.body.i.i197.lr.ph371
	test_barrier	%r0,4           ; @0x662
	brne_s	%r0,0,.LBB1_153         ; @0x666
;  BB#150:                              ; %while.body.i.i197.preheader
	mov_s	%r2,6                   ; @0x668
	mov_s	%r0,0x186a1             ; @0x66a
.LBB1_151:                              ; %while.body.i.i197
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x670
	add_s	%r2,%r2,1               ; @0x670
	cmp_s	%r2,%r0                 ; @0x672
	bcc	.LBB1_217               ; @0x674
;  BB#152:                              ; %while.cond.i.i180
                                        ;   in Loop: Header=BB1_151 Depth=1
	test_barrier	%r1,4           ; @0x678
	breq_s	%r1,0,.LBB1_151         ; @0x67c
.LBB1_153:                              ; %while.cond1.preheader.i.i183
                                        ; @0x67e
	test_barrier	%r0,5           ; @0x67e
	brne_s	%r0,0,.LBB1_164         ; @0x682
;  BB#154:                              ; %while.body5.lr.ph.i.i186
	test_barrier	%r0,5           ; @0x684
	brne_s	%r0,0,.LBB1_164         ; @0x688
;  BB#155:                              ; %while.body5.lr.ph77.i.i189
	test_barrier	%r0,5           ; @0x68a
	brne_s	%r0,0,.LBB1_164         ; @0x68e
;  BB#156:                              ; %while.body5.i.preheader.i192
	test_barrier	%r0,5           ; @0x690
	brne_s	%r0,0,.LBB1_164         ; @0x694
;  BB#157:                              ; %while.body5.i.lr.ph.i195
	test_barrier	%r0,5           ; @0x696
	brne_s	%r0,0,.LBB1_164         ; @0x69a
;  BB#158:                              ; %while.cond1.i.i203.preheader
	test_barrier	%r0,5           ; @0x69c
	brne_s	%r0,0,.LBB1_164         ; @0x6a0
;  BB#159:                              ; %while.body5.i.i205.lr.ph
	test_barrier	%r0,5           ; @0x6a2
	brne_s	%r0,0,.LBB1_164         ; @0x6a6
;  BB#160:                              ; %while.body5.i.i205.lr.ph358
	test_barrier	%r0,5           ; @0x6a8
	brne_s	%r0,0,.LBB1_164         ; @0x6ac
;  BB#161:                              ; %while.body5.i.i205.preheader
	mov_s	%r2,6                   ; @0x6ae
	mov_s	%r0,0x186a1             ; @0x6b0
.LBB1_163:                              ; %while.body5.i.i205
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x6b6
	add_s	%r2,%r2,1               ; @0x6b6
	cmp_s	%r2,%r0                 ; @0x6b8
	bcc	.LBB1_72                ; @0x6ba
;  BB#162:                              ; %while.cond1.i.i203
                                        ;   in Loop: Header=BB1_163 Depth=1
	test_barrier	%r1,5           ; @0x6be
	breq_s	%r1,0,.LBB1_163         ; @0x6c2
.LBB1_164:                              ; %while.cond11.i.i208
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x6c4
	ld.di	%r0,[%r25,0]            ; @0x6c4
	brlt	%r0,0,.LBB1_164         ; @0x6c8
;  BB#165:                              ; %while.end15.i.i209
	st.di	%r18,[%r25,0]           ; @0x6cc
.LBB1_166:                              ; %while.cond16.i.i211
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x6d0
	ld.di	%r0,[%r21,0]            ; @0x6d0
	brlt	%r0,0,.LBB1_166         ; @0x6d4
;  BB#167:                              ; %while.end21.i.i214
	st.di	%r18,[%r21,0]           ; @0x6d8
	test_barrier	%r0,4           ; @0x6dc
	breq_s	%r0,0,.LBB1_178         ; @0x6e0
;  BB#168:                              ; %while.body25.lr.ph.i.i217
	test_barrier	%r0,4           ; @0x6e2
	breq_s	%r0,0,.LBB1_178         ; @0x6e6
;  BB#169:                              ; %while.body25.lr.ph64.i.i220
	test_barrier	%r0,4           ; @0x6e8
	breq_s	%r0,0,.LBB1_178         ; @0x6ec
;  BB#170:                              ; %while.body25.i.preheader.i223
	test_barrier	%r0,4           ; @0x6ee
	breq_s	%r0,0,.LBB1_178         ; @0x6f2
;  BB#171:                              ; %while.body25.i.lr.ph.i226
	test_barrier	%r0,4           ; @0x6f4
	breq_s	%r0,0,.LBB1_178         ; @0x6f8
;  BB#172:                              ; %while.cond22.i.i231.preheader
	test_barrier	%r0,4           ; @0x6fa
	breq_s	%r0,0,.LBB1_178         ; @0x6fe
;  BB#173:                              ; %while.body25.i.i248.lr.ph
	test_barrier	%r0,4           ; @0x700
	breq_s	%r0,0,.LBB1_178         ; @0x704
;  BB#174:                              ; %while.body25.i.i248.lr.ph345
	test_barrier	%r0,4           ; @0x706
	breq_s	%r0,0,.LBB1_178         ; @0x70a
;  BB#175:                              ; %while.body25.i.i248.preheader
	mov_s	%r2,6                   ; @0x70c
	mov_s	%r0,0x186a1             ; @0x70e
.LBB1_176:                              ; %while.body25.i.i248
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x714
	add_s	%r2,%r2,1               ; @0x714
	cmp_s	%r2,%r0                 ; @0x716
	bcc	.LBB1_268               ; @0x718
;  BB#177:                              ; %while.cond22.i.i231
                                        ;   in Loop: Header=BB1_176 Depth=1
	test_barrier	%r1,4           ; @0x71c
	brne_s	%r1,0,.LBB1_176         ; @0x720
.LBB1_178:                              ; %while.cond31.preheader.i.i234
                                        ; @0x722
	test_barrier	%r0,5           ; @0x722
	breq_s	%r0,0,.LBB1_183         ; @0x726
;  BB#179:                              ; %while.body34.lr.ph.i.i237
	test_barrier	%r0,5           ; @0x728
	breq_s	%r0,0,.LBB1_183         ; @0x72c
;  BB#180:                              ; %while.body34.lr.ph51.i.i240
	test_barrier	%r0,5           ; @0x72e
	breq_s	%r0,0,.LBB1_183         ; @0x732
;  BB#181:                              ; %while.body34.i.preheader.i243
	test_barrier	%r0,5           ; @0x734
	breq_s	%r0,0,.LBB1_183         ; @0x738
;  BB#182:                              ; %while.body34.i.lr.ph.i246
	test_barrier	%r0,5           ; @0x73a
	breq_s	%r0,0,.LBB1_183         ; @0x73e
;  BB#210:                              ; %while.cond31.i.i254.preheader
	test_barrier	%r0,5           ; @0x740
	breq_s	%r0,0,.LBB1_183         ; @0x744
;  BB#211:                              ; %while.body34.i.i256.lr.ph
	test_barrier	%r0,5           ; @0x746
	breq_s	%r0,0,.LBB1_183         ; @0x74a
;  BB#212:                              ; %while.body34.i.i256.lr.ph332
	test_barrier	%r0,5           ; @0x74c
	breq_s	%r0,0,.LBB1_183         ; @0x750
;  BB#213:                              ; %while.body34.i.i256.preheader
	mov_s	%r2,6                   ; @0x752
	mov_s	%r0,0x186a1             ; @0x754
.LBB1_215:                              ; %while.body34.i.i256
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x75a
	add_s	%r2,%r2,1               ; @0x75a
	cmp_s	%r2,%r0                 ; @0x75c
	bcc	.LBB1_114               ; @0x75e
;  BB#214:                              ; %while.cond31.i.i254
                                        ;   in Loop: Header=BB1_215 Depth=1
	test_barrier	%r1,5           ; @0x762
	brne_s	%r1,0,.LBB1_215         ; @0x766
.LBB1_183:                              ; %for.body.i263.preheader
                                        ; @0x768
	mov_s	%r13,0                  ; @0x768
	mov_s	%r14,0                  ; @0x76a
.LBB1_184:                              ; %for.body.i263
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x76c
	seteq	%r2,%r14,3              ; @0x76c
	mov_s	%r0,%r24                ; @0x770
	mov_s	%r1,%r14                ; @0x772
	mov_s	%r3,%r13                ; @0x774
	bl	gvml_load_vmr_16        ; @0x776
	add_s	%r13,%r13,2             ; @0x77a
	add_s	%r14,%r14,1             ; @0x77c
	brlo	%r14,4,.LBB1_184        ; @0x77e
;  BB#185:                              ; %my_dma_l2_to_l1_32k.exit264
	mov_s	%r0,%fp                 ; @0x782
	mov_s	%r1,%r24                ; @0x784
	bl	gvml_load_16            ; @0x786
	mov_s	%r0,%r19                ; @0x78a
	ld_s	%r1,[%sp,72]            ; 4-byte Folded Reload
                                        ; @0x78c
	mov_s	%r2,%fp                 ; @0x78e
	bl	gvml_add_u16            ; @0x790
	mov_s	%r0,%r23                ; @0x794
	mov_s	%r1,%r19                ; @0x796
	bl	gvml_store_16           ; @0x798
	test_barrier	%r0,4           ; @0x79c
	brne_s	%r0,0,.LBB1_197         ; @0x7a0
;  BB#186:                              ; %while.body.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0x7a2
	brne_s	%r0,0,.LBB1_197         ; @0x7a6
;  BB#187:                              ; %while.body.lr.ph90.i.i.i
	test_barrier	%r0,4           ; @0x7a8
	brne_s	%r0,0,.LBB1_197         ; @0x7ac
;  BB#188:                              ; %while.body.i.preheader.i.i
	test_barrier	%r0,4           ; @0x7ae
	brne_s	%r0,0,.LBB1_197         ; @0x7b2
;  BB#189:                              ; %while.body.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0x7b4
	brne_s	%r0,0,.LBB1_197         ; @0x7b8
;  BB#190:                              ; %while.cond.i.i.preheader.i
	test_barrier	%r0,4           ; @0x7ba
	brne_s	%r0,0,.LBB1_197         ; @0x7be
;  BB#191:                              ; %while.body.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x7c0
	brne_s	%r0,0,.LBB1_197         ; @0x7c4
;  BB#192:                              ; %while.body.i.i.lr.ph8.i
	test_barrier	%r0,4           ; @0x7c6
	brne_s	%r0,0,.LBB1_197         ; @0x7ca
;  BB#193:                              ; %while.body.i.i.i.preheader
	test_barrier	%r0,4           ; @0x7cc
	brne_s	%r0,0,.LBB1_197         ; @0x7d0
;  BB#194:                              ; %while.body.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x7d2
	brne_s	%r0,0,.LBB1_197         ; @0x7d6
;  BB#195:                              ; %while.cond.i.i.i.preheader
	mov_s	%r2,9                   ; @0x7d8
	mov_s	%r1,0x186a1             ; @0x7da
.LBB1_196:                              ; %while.cond.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x7e0
	test_barrier	%r0,4           ; @0x7e0
	brne_s	%r0,0,.LBB1_197         ; @0x7e4
;  BB#216:                              ; %while.body.i.i.i
                                        ;   in Loop: Header=BB1_196 Depth=1
	add_s	%r2,%r2,1               ; @0x7e6
	brlo	%r2,%r1,.LBB1_196       ; @0x7e8
.LBB1_217:                              ; %if.then.i.i
                                        ; @0x7ec
	add1	%r0,%r22,(.L.str.7-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0x7ec
	sub2	%r3,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.12)/4 ; @0x7f0
	add3	%r4,%r22,(.L.str.14-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/8 ; @0x7f4
	mov_s	%r1,67                  ; @0x7f8
	mov_s	%r2,%r22                ; @0x7fa
	bl	_gsi_log_fatal          ; @0x7fc
.LBB1_197:                              ; %while.cond1.preheader.i.i.i
                                        ; @0x800
	test_barrier	%r0,5           ; @0x800
	brne_s	%r0,0,.LBB1_218         ; @0x804
;  BB#198:                              ; %while.body5.lr.ph.i.i.i
	test_barrier	%r0,5           ; @0x806
	brne_s	%r0,0,.LBB1_218         ; @0x80a
;  BB#199:                              ; %while.body5.lr.ph77.i.i.i
	test_barrier	%r0,5           ; @0x80c
	brne_s	%r0,0,.LBB1_218         ; @0x810
;  BB#200:                              ; %while.body5.i.preheader.i.i
	test_barrier	%r0,5           ; @0x812
	brne_s	%r0,0,.LBB1_218         ; @0x816
;  BB#201:                              ; %while.body5.i.lr.ph.i.i
	test_barrier	%r0,5           ; @0x818
	brne_s	%r0,0,.LBB1_218         ; @0x81c
;  BB#202:                              ; %while.cond1.i.i.preheader.i
	test_barrier	%r0,5           ; @0x81e
	brne_s	%r0,0,.LBB1_218         ; @0x822
;  BB#203:                              ; %while.body5.i.i.lr.ph.i
	test_barrier	%r0,5           ; @0x824
	brne_s	%r0,0,.LBB1_218         ; @0x828
;  BB#204:                              ; %while.body5.i.i.lr.ph21.i
	test_barrier	%r0,5           ; @0x82a
	brne_s	%r0,0,.LBB1_218         ; @0x82e
;  BB#205:                              ; %while.body5.i.i.i.preheader
	test_barrier	%r0,5           ; @0x830
	brne_s	%r0,0,.LBB1_218         ; @0x834
;  BB#206:                              ; %while.body5.i.i.i.lr.ph
	test_barrier	%r0,5           ; @0x836
	brne_s	%r0,0,.LBB1_218         ; @0x83a
;  BB#207:                              ; %while.cond1.i.i.i.preheader
	mov_s	%r2,9                   ; @0x83c
	mov_s	%r1,0x186a1             ; @0x83e
.LBB1_208:                              ; %while.cond1.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x844
	test_barrier	%r0,5           ; @0x844
	brne_s	%r0,0,.LBB1_218         ; @0x848
;  BB#209:                              ; %while.body5.i.i.i
                                        ;   in Loop: Header=BB1_208 Depth=1
	add_s	%r2,%r2,1               ; @0x84a
	brlo	%r2,%r1,.LBB1_208       ; @0x84c
.LBB1_72:                               ; %if.then8.i.i
                                        ; @0x850
	add1	%r0,%r22,(.L.str.7-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0x850
	sub2	%r3,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.12)/4 ; @0x854
	mov_s	%r1,72                  ; @0x858
	mov_s	%r2,%r22                ; @0x85a
	mov_s	%r4,.L.str.15           ; @0x85c
	bl	_gsi_log_fatal          ; @0x862
.LBB1_218:                              ; %while.cond11.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x866
	ld.di	%r0,[%r25,0]            ; @0x866
	brlt	%r0,0,.LBB1_218         ; @0x86a
;  BB#219:                              ; %while.end15.i.i.i
	st.di	%r18,[%r25,0]           ; @0x86e
.LBB1_220:                              ; %while.cond16.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x872
	ld.di	%r0,[%r21,0]            ; @0x872
	brlt	%r0,0,.LBB1_220         ; @0x876
;  BB#221:                              ; %while.end21.i.i.i
	st.di	%r18,[%r21,0]           ; @0x87a
	test_barrier	%r0,4           ; @0x87e
	breq_s	%r0,0,.LBB1_233         ; @0x882
;  BB#222:                              ; %while.body25.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0x884
	breq_s	%r0,0,.LBB1_233         ; @0x888
;  BB#223:                              ; %while.body25.lr.ph64.i.i.i
	test_barrier	%r0,4           ; @0x88a
	breq_s	%r0,0,.LBB1_233         ; @0x88e
;  BB#224:                              ; %while.body25.i.preheader.i.i
	test_barrier	%r0,4           ; @0x890
	breq_s	%r0,0,.LBB1_233         ; @0x894
;  BB#225:                              ; %while.body25.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0x896
	breq_s	%r0,0,.LBB1_233         ; @0x89a
;  BB#226:                              ; %while.cond22.i.i.preheader.i
	test_barrier	%r0,4           ; @0x89c
	breq_s	%r0,0,.LBB1_233         ; @0x8a0
;  BB#227:                              ; %while.body25.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x8a2
	breq_s	%r0,0,.LBB1_233         ; @0x8a6
;  BB#228:                              ; %while.body25.i.i.lr.ph34.i
	test_barrier	%r0,4           ; @0x8a8
	breq_s	%r0,0,.LBB1_233         ; @0x8ac
;  BB#229:                              ; %while.body25.i.i.i.preheader
	test_barrier	%r0,4           ; @0x8ae
	breq_s	%r0,0,.LBB1_233         ; @0x8b2
;  BB#230:                              ; %while.body25.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x8b4
	breq_s	%r0,0,.LBB1_233         ; @0x8b8
;  BB#231:                              ; %while.cond22.i.i.i.preheader
	mov_s	%r2,9                   ; @0x8ba
	mov_s	%r1,0x186a1             ; @0x8bc
.LBB1_232:                              ; %while.cond22.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x8c2
	test_barrier	%r0,4           ; @0x8c2
	breq_s	%r0,0,.LBB1_233         ; @0x8c6
;  BB#267:                              ; %while.body25.i.i.i
                                        ;   in Loop: Header=BB1_232 Depth=1
	add_s	%r2,%r2,1               ; @0x8c8
	brlo	%r2,%r1,.LBB1_232       ; @0x8ca
.LBB1_268:                              ; %if.then28.i.i
                                        ; @0x8ce
	add1	%r0,%r22,(.L.str.7-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0x8ce
	sub2	%r3,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.12)/4 ; @0x8d2
	add1	%r4,%r22,(.L.str.16-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0x8d6
	mov_s	%r1,89                  ; @0x8da
	mov_s	%r2,%r22                ; @0x8dc
	bl	_gsi_log_fatal          ; @0x8de
.LBB1_233:                              ; %while.cond31.preheader.i.i.i
                                        ; @0x8e2
	test_barrier	%r0,5           ; @0x8e2
	breq_s	%r0,0,.LBB1_241         ; @0x8e6
;  BB#234:                              ; %while.body34.lr.ph.i.i.i
	test_barrier	%r0,5           ; @0x8e8
	breq_s	%r0,0,.LBB1_241         ; @0x8ec
;  BB#235:                              ; %while.body34.lr.ph51.i.i.i
	test_barrier	%r0,5           ; @0x8ee
	breq_s	%r0,0,.LBB1_241         ; @0x8f2
;  BB#236:                              ; %while.body34.i.preheader.i.i
	test_barrier	%r0,5           ; @0x8f4
	breq_s	%r0,0,.LBB1_241         ; @0x8f8
;  BB#237:                              ; %while.body34.i.lr.ph.i.i
	test_barrier	%r0,5           ; @0x8fa
	breq_s	%r0,0,.LBB1_241         ; @0x8fe
;  BB#238:                              ; %while.cond31.i.i.preheader.i
	test_barrier	%r0,5           ; @0x900
	breq_s	%r0,0,.LBB1_241         ; @0x904
;  BB#239:                              ; %while.body34.i.i.lr.ph.i
	test_barrier	%r0,5           ; @0x906
	breq_s	%r0,0,.LBB1_241         ; @0x90a
;  BB#240:                              ; %while.body34.i.i.lr.ph47.i
	test_barrier	%r0,5           ; @0x90c
	breq_s	%r0,0,.LBB1_241         ; @0x910
;  BB#262:                              ; %while.body34.i.i.i.preheader
	test_barrier	%r0,5           ; @0x912
	breq_s	%r0,0,.LBB1_241         ; @0x916
;  BB#263:                              ; %while.body34.i.i.i.lr.ph
	test_barrier	%r0,5           ; @0x918
	breq_s	%r0,0,.LBB1_241         ; @0x91c
;  BB#264:                              ; %while.cond31.i.i.i.preheader
	mov_s	%r2,9                   ; @0x91e
	mov_s	%r1,0x186a1             ; @0x920
.LBB1_265:                              ; %while.cond31.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x926
	test_barrier	%r0,5           ; @0x926
	breq_s	%r0,0,.LBB1_241         ; @0x92a
;  BB#266:                              ; %while.body34.i.i.i
                                        ;   in Loop: Header=BB1_265 Depth=1
	add_s	%r2,%r2,1               ; @0x92c
	brlo	%r2,%r1,.LBB1_265       ; @0x92e
.LBB1_114:                              ; %if.then37.i.i
                                        ; @0x932
	add1	%r0,%r22,(.L.str.7-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0x932
	sub2	%r3,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.12)/4 ; @0x936
	add2	%r4,%r22,(.L.str.17-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/4 ; @0x93a
	mov_s	%r1,94                  ; @0x93e
	mov_s	%r2,%r22                ; @0x940
	bl	_gsi_log_fatal          ; @0x942
.LBB1_241:                              ; %for.body.i.i.preheader
                                        ; @0x946
	mov_s	%r13,0                  ; @0x946
	mov_s	%r14,0                  ; @0x948
.LBB1_242:                              ; %for.body.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x94a
	seteq	%r2,%r14,3              ; @0x94a
	mov_s	%r0,%r23                ; @0x94e
	mov_s	%r1,%r14                ; @0x950
	mov_s	%r3,%r13                ; @0x952
	bl	gvml_store_vmr_16       ; @0x954
	add_s	%r13,%r13,2             ; @0x958
	add_s	%r14,%r14,1             ; @0x95a
	brlo	%r14,4,.LBB1_242        ; @0x95c
;  BB#243:                              ; %my_dma_l1_to_l2_32k.exit.i
	test_barrier	%r0,4           ; @0x960
	brne	%r0,0,.LBB1_269         ; @0x964
;  BB#244:                              ; %while.body.lr.ph.i.i.i.i
	test_barrier	%r0,4           ; @0x968
	brne	%r0,0,.LBB1_269         ; @0x96c
;  BB#245:                              ; %while.body.lr.ph14.i.i.i.i
	test_barrier	%r0,4           ; @0x970
	brne	%r0,0,.LBB1_269         ; @0x974
;  BB#246:                              ; %while.body.i.preheader.i.i.i
	test_barrier	%r0,4           ; @0x978
	brne_s	%r0,0,.LBB1_269         ; @0x97c
;  BB#247:                              ; %while.body.i.lr.ph.i.i.i
	test_barrier	%r0,4           ; @0x97e
	brne_s	%r0,0,.LBB1_269         ; @0x982
;  BB#248:                              ; %while.cond.i.preheader.i.i.i
	test_barrier	%r0,4           ; @0x984
	brne_s	%r0,0,.LBB1_269         ; @0x988
;  BB#249:                              ; %while.body.i.lr.ph31.i.i.i
	test_barrier	%r0,4           ; @0x98a
	brne_s	%r0,0,.LBB1_269         ; @0x98e
;  BB#250:                              ; %while.body.i.lr.ph36.i.i.i
	test_barrier	%r0,4           ; @0x990
	brne_s	%r0,0,.LBB1_269         ; @0x994
;  BB#251:                              ; %while.body.i.i.preheader.i.i
	test_barrier	%r0,4           ; @0x996
	brne_s	%r0,0,.LBB1_269         ; @0x99a
;  BB#252:                              ; %while.body.i.i.lr.ph.i.i
	test_barrier	%r0,4           ; @0x99c
	brne_s	%r0,0,.LBB1_269         ; @0x9a0
;  BB#253:                              ; %while.cond.i.i.i.preheader.i
	test_barrier	%r0,4           ; @0x9a2
	brne_s	%r0,0,.LBB1_269         ; @0x9a6
;  BB#254:                              ; %while.body.i.i.i.lr.ph.i
	test_barrier	%r0,4           ; @0x9a8
	brne_s	%r0,0,.LBB1_269         ; @0x9ac
;  BB#255:                              ; %while.body.i.i.i.lr.ph60.i
	test_barrier	%r0,4           ; @0x9ae
	brne_s	%r0,0,.LBB1_269         ; @0x9b2
;  BB#256:                              ; %while.body.i.i.i.i.preheader
	test_barrier	%r0,4           ; @0x9b4
	brne_s	%r0,0,.LBB1_269         ; @0x9b8
;  BB#257:                              ; %while.body.i.i.i.i.lr.ph
	test_barrier	%r0,4           ; @0x9ba
	brne_s	%r0,0,.LBB1_269         ; @0x9be
;  BB#258:                              ; %while.cond.i.i.i.i.preheader
	mov_s	%r2,14                  ; @0x9c0
	mov_s	%r1,0x186a1             ; @0x9c2
	ror	%r15,1                  ; @0x9c8
.LBB1_259:                              ; %while.cond.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x9cc
	test_barrier	%r0,4           ; @0x9cc
	brne_s	%r0,0,.LBB1_269         ; @0x9d0
;  BB#260:                              ; %while.body.i.i.i.i
                                        ;   in Loop: Header=BB1_259 Depth=1
	add_s	%r2,%r2,1               ; @0x9d2
	brlo	%r2,%r1,.LBB1_259       ; @0x9d4
;  BB#261:                              ; %if.then9.i.i.i.i
	add1	%r0,%r22,(.L.str.7-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0x9d8
	sub1	%r2,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start)/2 ; @0x9dc
	sub2	%r3,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.12)/4 ; @0x9e0
	sub2	%r4,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.13)/4 ; @0x9e4
	add3	%r5,%r22,(.L.str.18-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/8 ; @0x9e8
	mov	%r1,608                 ; @0x9ec
	bl	_gsi_log_fatal          ; @0x9f0
.LBB1_269:                              ; %while.cond10.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0x9f4
	ld.di	%r0,[%r25,0]            ; @0x9f4
	brlt	%r0,0,.LBB1_269         ; @0x9f8
;  BB#270:                              ; %my_dma_l2_to_l4_16k.exit.i.i
	mov_s	%r0,0                   ; @0x9fc
	st.di	%r0,[%r20,0]            ; @0x9fe
	ld_s	%r2,[%sp,68]            ; 4-byte Folded Reload
                                        ; @0xa02
	mov_s	%r14,0xf0000308         ; @0xa04
	st.di	%r2,[%r14,8]            ; @0xa0a
	mov_s	%r1,0xef3f00c0          ; @0xa0e
	st.di	%r1,[%r25,0]            ; @0xa14
	add	%r16,%r2,32768          ; @0xa18
	test_barrier	%r2,5           ; @0xa20
	brne	%r2,0,.LBB1_289         ; @0xa24
;  BB#271:                              ; %while.body21.lr.ph.i.i.i.i
	test_barrier	%r2,5           ; @0xa28
	brne	%r2,0,.LBB1_289         ; @0xa2c
;  BB#272:                              ; %while.body21.lr.ph27.i.i.i.i
	test_barrier	%r2,5           ; @0xa30
	brne	%r2,0,.LBB1_289         ; @0xa34
;  BB#273:                              ; %while.body21.i.preheader.i.i.i
	test_barrier	%r2,5           ; @0xa38
	brne	%r2,0,.LBB1_289         ; @0xa3c
;  BB#274:                              ; %while.body21.i.lr.ph.i.i.i
	test_barrier	%r2,5           ; @0xa40
	brne_s	%r2,0,.LBB1_289         ; @0xa44
;  BB#275:                              ; %while.cond17.i.preheader.i.i.i
	test_barrier	%r2,5           ; @0xa46
	brne_s	%r2,0,.LBB1_289         ; @0xa4a
;  BB#276:                              ; %while.body21.i.lr.ph45.i.i.i
	test_barrier	%r2,5           ; @0xa4c
	brne_s	%r2,0,.LBB1_289         ; @0xa50
;  BB#277:                              ; %while.body21.i.lr.ph50.i.i.i
	test_barrier	%r2,5           ; @0xa52
	brne_s	%r2,0,.LBB1_289         ; @0xa56
;  BB#278:                              ; %while.body21.i.i.preheader.i.i
	test_barrier	%r2,5           ; @0xa58
	brne_s	%r2,0,.LBB1_289         ; @0xa5c
;  BB#279:                              ; %while.body21.i.i.lr.ph.i.i
	test_barrier	%r2,5           ; @0xa5e
	brne_s	%r2,0,.LBB1_289         ; @0xa62
;  BB#280:                              ; %while.cond17.i.i.i.preheader.i
	test_barrier	%r2,5           ; @0xa64
	brne_s	%r2,0,.LBB1_289         ; @0xa68
;  BB#281:                              ; %while.body21.i.i.i.lr.ph.i
	test_barrier	%r2,5           ; @0xa6a
	brne_s	%r2,0,.LBB1_289         ; @0xa6e
;  BB#282:                              ; %while.body21.i.i.i.lr.ph73.i
	test_barrier	%r2,5           ; @0xa70
	brne_s	%r2,0,.LBB1_289         ; @0xa74
;  BB#283:                              ; %while.body21.i.i.i.i.preheader
	test_barrier	%r2,5           ; @0xa76
	brne_s	%r2,0,.LBB1_289         ; @0xa7a
;  BB#284:                              ; %while.body21.i.i.i.i.lr.ph
	test_barrier	%r2,5           ; @0xa7c
	brne_s	%r2,0,.LBB1_289         ; @0xa80
;  BB#285:                              ; %while.cond17.i.i.i.i.preheader
	mov_s	%r12,14                 ; @0xa82
	mov_s	%r3,0x186a1             ; @0xa84
	ror	%r15,1                  ; @0xa8a
	mov_s	%r14,0xf0000308         ; @0xa8e
.LBB1_286:                              ; %while.cond17.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xa94
	test_barrier	%r2,5           ; @0xa94
	brne_s	%r2,0,.LBB1_289         ; @0xa98
;  BB#287:                              ; %while.body21.i.i.i.i
                                        ;   in Loop: Header=BB1_286 Depth=1
	add_s	%r12,%r12,1             ; @0xa9a
	brlo	%r12,%r3,.LBB1_286      ; @0xa9c
;  BB#288:                              ; %if.then25.i.i.i.i
	add1	%r0,%r22,(.L.str.7-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0xaa0
	sub1	%r2,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_l2_to_mem_start)/2 ; @0xaa4
	sub2	%r3,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.12)/4 ; @0xaa8
	sub2	%r4,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.13)/4 ; @0xaac
	add3	%r5,%r22,(.L.str.18-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/8 ; @0xab0
	mov	%r1,617                 ; @0xab4
	bl	_gsi_log_fatal          ; @0xab8
.LBB1_289:                              ; %while.cond28.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xabc
	ld.di	%r2,[%r21,0]            ; @0xabc
	brlt	%r2,0,.LBB1_289         ; @0xac0
;  BB#290:                              ; %my_dma_l2_to_l4_16k.exit2.i.i
	st.di	%r0,[%r20,0]            ; @0xac4
	st.di	%r16,[%r20,8]           ; @0xac8
	st.di	%r1,[%r21,0]            ; @0xacc
.LBB1_291:                              ; %while.cond.i.i3.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xad0
	ld.di	%r1,[%r25,0]            ; @0xad0
	brlt	%r1,0,.LBB1_291         ; @0xad4
;  BB#292:                              ; %while.end.i.i.i.i
	st.di	%r0,[%r14,0]            ; @0xad8
	st.di	%r15,[%r25,0]           ; @0xadc
.LBB1_293:                              ; %while.cond1.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xae0
	ld.di	%r0,[%r25,0]            ; @0xae0
	brlt	%r0,0,.LBB1_293         ; @0xae4
.LBB1_294:                              ; %while.cond.i2.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xae8
	ld.di	%r0,[%r21,0]            ; @0xae8
	brlt	%r0,0,.LBB1_294         ; @0xaec
;  BB#295:                              ; %while.end.i3.i.i.i
	st.di	0,[%r20,0]              ; @0xaf0
	st.di	%r15,[%r21,0]           ; @0xaf4
.LBB1_296:                              ; %while.cond1.i5.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
                                        ; @0xaf8
	ld.di	%r0,[%r21,0]            ; @0xaf8
	brlt	%r0,0,.LBB1_296         ; @0xafc
;  BB#297:                              ; %my_dma_l1_to_l4.exit
	sub1	%r0,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str)/2 ; @0xb00
	sub2	%r2,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.add_vrs_task)/4 ; @0xb04
	sub2	%r4,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.1)/4 ; @0xb08
	sub1	%r5,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.6)/2 ; @0xb0c
	mov_s	%r1,146                 ; @0xb10
	mov_s	%r3,3                   ; @0xb12
	bl	_gsi_log                ; @0xb14
	ld	%r0,[0xf0000230]        ; @0xb18
	.cfa_remember_state             ; @0xb20
	add_s	%sp,%sp,4               ; @0xb20
	.cfa_pop	4               ; @0xb22
	ld	%blink,[%sp,56]         ; @0xb22
	.cfa_restore	{%blink}        ; @0xb26
	ld	%fp,[%sp,52]            ; @0xb26
	.cfa_restore	{%fp}           ; @0xb2a
	ld	%r25,[%sp,48]           ; @0xb2a
	.cfa_restore	{%r25}          ; @0xb2e
	ld	%r24,[%sp,44]           ; @0xb2e
	.cfa_restore	{%r24}          ; @0xb32
	ld	%r23,[%sp,40]           ; @0xb32
	.cfa_restore	{%r23}          ; @0xb36
	ld	%r22,[%sp,36]           ; @0xb36
	.cfa_restore	{%r22}          ; @0xb3a
	ld	%r21,[%sp,32]           ; @0xb3a
	.cfa_restore	{%r21}          ; @0xb3e
	ld	%r20,[%sp,28]           ; @0xb3e
	.cfa_restore	{%r20}          ; @0xb42
	ld	%r19,[%sp,24]           ; @0xb42
	.cfa_restore	{%r19}          ; @0xb46
	ld	%r18,[%sp,20]           ; @0xb46
	.cfa_restore	{%r18}          ; @0xb4a
	ld	%r17,[%sp,16]           ; @0xb4a
	.cfa_restore	{%r17}          ; @0xb4e
	ld	%r16,[%sp,12]           ; @0xb4e
	.cfa_restore	{%r16}          ; @0xb52
	ld_s	%r15,[%sp,8]            ; @0xb52
	.cfa_restore	{%r15}          ; @0xb54
	ld_s	%r14,[%sp,4]            ; @0xb54
	.cfa_restore	{%r14}          ; @0xb56
	ld.ab	%r13,[%sp,72]           ; @0xb56
	.cfa_restore	{%r13}          ; @0xb5a
	.cfa_pop	72              ; @0xb5a
	j_s	[%blink]                ; @0xb5a
	.cfa_restore_state              ; @0xb5c
.LBB1_23:                               ; %if.then9.i.i.i
                                        ; @0xb5c
	add1	%r0,%r22,(.L.str.7-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0xb5c
	sub	%r2,%r22,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0xb60
	sub2	%r3,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.12)/4 ; @0xb64
	sub2	%r4,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.13)/4 ; @0xb68
	add3	%r5,%r22,(.L.str.11-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/8 ; @0xb6c
	mov	%r1,328                 ; @0xb70
	bl	_gsi_log_fatal          ; @0xb74
.LBB1_41:                               ; %if.then25.i.i.i
                                        ; @0xb78
	add1	%r0,%r22,(.L.str.7-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/2 ; @0xb78
	sub	%r2,%r22,.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L__func__.gal_fast_l2dma_mem_to_l2_start ; @0xb7c
	sub2	%r3,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.12)/4 ; @0xb80
	sub2	%r4,%r22,(.L__func__.gal_fast_l2dma_l2_ready_rst_all-.L.str.13)/4 ; @0xb84
	add3	%r5,%r22,(.L.str.11-.L__func__.gal_fast_l2dma_l2_ready_rst_all)/8 ; @0xb88
	mov	%r1,337                 ; @0xb8c
	bl	_gsi_log_fatal          ; @0xb90
	.cfa_ef
.Lfunc_end1:                            ; @0xb94


