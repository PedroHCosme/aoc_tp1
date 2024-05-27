	.file	"Median.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (GCC) version 10.1.0 (riscv64-unknown-elf)
#	compiled by GNU C version 5.3.1 20160211, GMP version 4.3.2, MPFR version 3.1.6, MPC version 1.0.3, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultilib rv32i/ilp32
# -iprefix c:\sysgcc\risc-v\bin\../lib/gcc/riscv64-unknown-elf/10.1.0/
# -isysroot c:\sysgcc\risc-v\bin\../riscv64-unknown-elf Median.c
# -march=rv32i -mabi=ilp32 -mtune=rocket -auxbase-strip Median (-O0).s -O0
# -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -fallocation-dce
# -fauto-inc-dec -fdelete-null-pointer-checks -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-symbols
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-unique -fident -finline-atomics -fipa-stack-alignment
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -fmath-errno -fmerge-debug-strings -fpeephole -fplt
# -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -fverbose-asm
# -fzero-initialized-in-bss -mexplicit-relocs -mplt -mriscv-attribute
# -mstrict-align

	.text
	.section	.rodata
	.align	2
.LC0:
	.string	"Quantidade de itens: "
	.align	2
.LC1:
	.string	"%d"
	.align	2
.LC2:
	.string	"Insira os valores:\n"
	.align	2
.LC3:
	.string	"%f"
	.globl	__gesf2
	.globl	__addsf3
	.globl	__divsf3
	.align	2
.LC5:
	.string	"Valores ordenados:"
	.globl	__extendsfdf2
	.align	2
.LC6:
	.string	"%f "
	.align	2
.LC7:
	.string	"\n Mediana: %f\n"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80	#,,
	sw	ra,76(sp)	#,
	sw	s0,72(sp)	#,
	addi	s0,sp,80	#,,
# Median.c:11:     printf("Quantidade de itens: ");
	lui	a5,%hi(.LC0)	# tmp105,
	addi	a0,a5,%lo(.LC0)	#, tmp105,
	call	printf		#
# Median.c:12:     scanf("%d", &n);
	addi	a5,s0,-36	#, tmp106,
	mv	a1,a5	#, tmp106
	lui	a5,%hi(.LC1)	# tmp107,
	addi	a0,a5,%lo(.LC1)	#, tmp107,
	call	scanf		#
# Median.c:15:     printf("Insira os valores:\n", n);
	lw	a5,-36(s0)		# n.0_1, n
	mv	a1,a5	#, n.0_1
	lui	a5,%hi(.LC2)	# tmp108,
	addi	a0,a5,%lo(.LC2)	#, tmp108,
	call	printf		#
# Median.c:16:     for (i = 0; i < n; i++) {
	sw	zero,-20(s0)	#, i
# Median.c:16:     for (i = 0; i < n; i++) {
	j	.L2		#
.L3:
# Median.c:17:         scanf("%f", &a[i]);
	addi	a4,s0,-76	#, tmp109,
	lw	a5,-20(s0)		# tmp111, i
	slli	a5,a5,2	#, tmp110, tmp111
	add	a5,a4,a5	# tmp110, _2, tmp109
	mv	a1,a5	#, _2
	lui	a5,%hi(.LC3)	# tmp112,
	addi	a0,a5,%lo(.LC3)	#, tmp112,
	call	scanf		#
# Median.c:16:     for (i = 0; i < n; i++) {
	lw	a5,-20(s0)		# tmp114, i
	addi	a5,a5,1	#, tmp113, tmp114
	sw	a5,-20(s0)	# tmp113, i
.L2:
# Median.c:16:     for (i = 0; i < n; i++) {
	lw	a5,-36(s0)		# n.1_3, n
# Median.c:16:     for (i = 0; i < n; i++) {
	lw	a4,-20(s0)		# tmp115, i
	blt	a4,a5,.L3	#, tmp115, n.1_3,
# Median.c:21:     for (i = 0; i < n - 1; i++) {
	sw	zero,-20(s0)	#, i
# Median.c:21:     for (i = 0; i < n - 1; i++) {
	j	.L4		#
.L9:
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	sw	zero,-24(s0)	#, j
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	j	.L5		#
.L8:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	lw	a5,-24(s0)		# tmp116, j
	slli	a5,a5,2	#, tmp117, tmp116
	addi	a4,s0,-16	#, tmp163,
	add	a5,a4,a5	# tmp117, tmp117, tmp163
	lw	a4,-60(a5)		# _4, a
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	lw	a5,-24(s0)		# tmp118, j
	addi	a5,a5,1	#, _5, tmp118
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	slli	a5,a5,2	#, tmp119, _5
	addi	a3,s0,-16	#, tmp164,
	add	a5,a3,a5	# tmp119, tmp119, tmp164
	lw	a5,-60(a5)		# _6, a
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	a1,a5	#, _6
	mv	a0,a4	#, _4
	call	__gesf2		#
	mv	a5,a0	# tmp120,
	blt	a5,zero,.L6	#, tmp120,,
# Median.c:24:                 t = a[j];
	lw	a5,-24(s0)		# tmp121, j
	slli	a5,a5,2	#, tmp122, tmp121
	addi	a4,s0,-16	#, tmp165,
	add	a5,a4,a5	# tmp122, tmp122, tmp165
	lw	a5,-60(a5)		# tmp123, a
	sw	a5,-32(s0)	# tmp123, t
# Median.c:25:                 a[j] = a[j + 1];
	lw	a5,-24(s0)		# tmp124, j
	addi	a5,a5,1	#, _7, tmp124
# Median.c:25:                 a[j] = a[j + 1];
	slli	a5,a5,2	#, tmp125, _7
	addi	a4,s0,-16	#, tmp166,
	add	a5,a4,a5	# tmp125, tmp125, tmp166
	lw	a4,-60(a5)		# _8, a
# Median.c:25:                 a[j] = a[j + 1];
	lw	a5,-24(s0)		# tmp126, j
	slli	a5,a5,2	#, tmp127, tmp126
	addi	a3,s0,-16	#, tmp167,
	add	a5,a3,a5	# tmp127, tmp127, tmp167
	sw	a4,-60(a5)	# _8, a
# Median.c:26:                 a[j + 1] = t;
	lw	a5,-24(s0)		# tmp128, j
	addi	a5,a5,1	#, _9, tmp128
# Median.c:26:                 a[j + 1] = t;
	slli	a5,a5,2	#, tmp129, _9
	addi	a4,s0,-16	#, tmp168,
	add	a5,a4,a5	# tmp129, tmp129, tmp168
	lw	a4,-32(s0)		# tmp130, t
	sw	a4,-60(a5)	# tmp130, a
.L6:
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	lw	a5,-24(s0)		# tmp132, j
	addi	a5,a5,1	#, tmp131, tmp132
	sw	a5,-24(s0)	# tmp131, j
.L5:
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	lw	a4,-36(s0)		# n.2_10, n
	lw	a5,-20(s0)		# tmp133, i
	sub	a5,a4,a5	# _11, n.2_10, tmp133
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	addi	a5,a5,-1	#, _12, _11
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	lw	a4,-24(s0)		# tmp134, j
	blt	a4,a5,.L8	#, tmp134, _12,
# Median.c:21:     for (i = 0; i < n - 1; i++) {
	lw	a5,-20(s0)		# tmp136, i
	addi	a5,a5,1	#, tmp135, tmp136
	sw	a5,-20(s0)	# tmp135, i
.L4:
# Median.c:21:     for (i = 0; i < n - 1; i++) {
	lw	a5,-36(s0)		# n.3_13, n
	addi	a5,a5,-1	#, _14, n.3_13
# Median.c:21:     for (i = 0; i < n - 1; i++) {
	lw	a4,-20(s0)		# tmp137, i
	blt	a4,a5,.L9	#, tmp137, _14,
# Median.c:32:     if (n % 2 == 0) {
	lw	a5,-36(s0)		# n.4_15, n
	andi	a5,a5,1	#, _17, n.5_16
# Median.c:32:     if (n % 2 == 0) {
	bne	a5,zero,.L10	#, _17,,
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	lw	a5,-36(s0)		# n.6_18, n
	srli	a4,a5,31	#, tmp138, n.6_18
	add	a5,a4,a5	# n.6_18, tmp139, tmp138
	srai	a5,a5,1	#, tmp140, tmp139
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	addi	a5,a5,-1	#, _20, _19
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	slli	a5,a5,2	#, tmp141, _20
	addi	a4,s0,-16	#, tmp169,
	add	a5,a4,a5	# tmp141, tmp141, tmp169
	lw	a3,-60(a5)		# _21, a
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	lw	a5,-36(s0)		# n.7_22, n
	srli	a4,a5,31	#, tmp142, n.7_22
	add	a5,a4,a5	# n.7_22, tmp143, tmp142
	srai	a5,a5,1	#, tmp144, tmp143
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	slli	a5,a5,2	#, tmp145, _23
	addi	a4,s0,-16	#, tmp170,
	add	a5,a4,a5	# tmp145, tmp145, tmp170
	lw	a5,-60(a5)		# _24, a
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	mv	a1,a5	#, _24
	mv	a0,a3	#, _21
	call	__addsf3		#
	mv	a5,a0	# tmp146,
	mv	a4,a5	# _25, tmp146
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	lui	a5,%hi(.LC4)	# tmp147,
	lw	a1,%lo(.LC4)(a5)		#,
	mv	a0,a4	#, _25
	call	__divsf3		#
	mv	a5,a0	# tmp148,
	sw	a5,-28(s0)	# tmp148, mediana
	j	.L11		#
.L10:
# Median.c:35:         mediana = a[n / 2];
	lw	a5,-36(s0)		# n.8_26, n
	srli	a4,a5,31	#, tmp149, n.8_26
	add	a5,a4,a5	# n.8_26, tmp150, tmp149
	srai	a5,a5,1	#, tmp151, tmp150
# Median.c:35:         mediana = a[n / 2];
	slli	a5,a5,2	#, tmp152, _27
	addi	a4,s0,-16	#, tmp171,
	add	a5,a4,a5	# tmp152, tmp152, tmp171
	lw	a5,-60(a5)		# tmp153, a
	sw	a5,-28(s0)	# tmp153, mediana
.L11:
# Median.c:39:     printf("Valores ordenados:\n");
	lui	a5,%hi(.LC5)	# tmp154,
	addi	a0,a5,%lo(.LC5)	#, tmp154,
	call	puts		#
# Median.c:40:     for (i = 0; i < n; i++) {
	sw	zero,-20(s0)	#, i
# Median.c:40:     for (i = 0; i < n; i++) {
	j	.L12		#
.L13:
# Median.c:41:         printf("%f ", a[i]);
	lw	a5,-20(s0)		# tmp155, i
	slli	a5,a5,2	#, tmp156, tmp155
	addi	a4,s0,-16	#, tmp172,
	add	a5,a4,a5	# tmp156, tmp156, tmp172
	lw	a5,-60(a5)		# _28, a
# Median.c:41:         printf("%f ", a[i]);
	mv	a0,a5	#, _28
	call	__extendsfdf2		#
	mv	a4,a0	# _29,
	mv	a5,a1	# _29,
	mv	a2,a4	#, _29
	mv	a3,a5	#, _29
	lui	a5,%hi(.LC6)	# tmp157,
	addi	a0,a5,%lo(.LC6)	#, tmp157,
	call	printf		#
# Median.c:40:     for (i = 0; i < n; i++) {
	lw	a5,-20(s0)		# tmp159, i
	addi	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L12:
# Median.c:40:     for (i = 0; i < n; i++) {
	lw	a5,-36(s0)		# n.9_30, n
# Median.c:40:     for (i = 0; i < n; i++) {
	lw	a4,-20(s0)		# tmp160, i
	blt	a4,a5,.L13	#, tmp160, n.9_30,
# Median.c:43:     printf("\n Mediana: %f\n", mediana);
	lw	a0,-28(s0)		#, mediana
	call	__extendsfdf2		#
	mv	a4,a0	# _31,
	mv	a5,a1	# _31,
	mv	a2,a4	#, _31
	mv	a3,a5	#, _31
	lui	a5,%hi(.LC7)	# tmp161,
	addi	a0,a5,%lo(.LC7)	#, tmp161,
	call	printf		#
# Median.c:45:     return 0;
	li	a5,0		# _53,
# Median.c:46: }
	mv	a0,a5	#, <retval>
	lw	ra,76(sp)		#,
	lw	s0,72(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	2
.LC4:
	.word	1073741824
	.ident	"GCC: (GNU) 10.1.0"
