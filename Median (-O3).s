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
# -march=rv32i -mabi=ilp32 -mtune=rocket -auxbase-strip Median (-O3).s -O3
# -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -falign-functions
# -falign-jumps -falign-labels -falign-loops -fallocation-dce
# -fauto-inc-dec -fbranch-count-reg -fcaller-saves -fcode-hoisting
# -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
# -fgcse-after-reload -fgcse-lm -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-cp-clone -fipa-icf -fipa-icf-functions -fipa-icf-variables
# -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference
# -fipa-reference-addressable -fipa-sra -fipa-stack-alignment -fipa-vrp
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -floop-interchange
# -floop-unroll-and-jam -flra-remat -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-sibling-calls -foptimize-strlen -fpartial-inlining
# -fpeel-loops -fpeephole -fpeephole2 -fplt -fpredictive-commoning
# -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns
# -fschedule-insns2 -fsection-anchors -fsemantic-interposition
# -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-loops -fsplit-paths -fsplit-wide-types
# -fssa-backprop -fssa-phiopt -fstdarg-opt -fstore-merging
# -fstrict-aliasing -fstrict-volatile-bitfields -fsync-libcalls
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
# -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
# -ftree-loop-distribution -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
# -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -funswitch-loops
# -fverbose-asm -fversion-loops-for-strides -fzero-initialized-in-bss
# -mexplicit-relocs -mplt -mriscv-attribute -mstrict-align

	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
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
	.globl	__lesf2
	.globl	__addsf3
	.globl	__mulsf3
	.align	2
.LC5:
	.string	"Valores ordenados:"
	.globl	__extendsfdf2
	.align	2
.LC6:
	.string	"\n Mediana: %f\n"
	.align	2
.LC7:
	.string	"%f "
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
# Median.c:11:     printf("Quantidade de itens: ");
	lui	a0,%hi(.LC0)	# tmp133,
# Median.c:6: int main() {
	addi	sp,sp,-160	#,,
# Median.c:11:     printf("Quantidade de itens: ");
	addi	a0,a0,%lo(.LC0)	#, tmp133,
# Median.c:6: int main() {
	sw	ra,156(sp)	#,
	sw	s2,144(sp)	#,
	sw	s0,152(sp)	#,
	sw	s1,148(sp)	#,
	sw	s3,140(sp)	#,
	sw	s4,136(sp)	#,
	sw	s5,132(sp)	#,
	sw	s6,128(sp)	#,
	sw	s7,124(sp)	#,
	sw	s8,120(sp)	#,
	sw	s9,116(sp)	#,
	sw	s10,112(sp)	#,
	sw	s11,108(sp)	#,
# Median.c:11:     printf("Quantidade de itens: ");
	call	printf		#
# Median.c:12:     scanf("%d", &n);
	lui	a0,%hi(.LC1)	# tmp135,
	addi	a1,sp,52	#,,
	addi	a0,a0,%lo(.LC1)	#, tmp135,
	call	scanf		#
# Median.c:15:     printf("Insira os valores:\n", n);
	lw	a1,52(sp)		#, n
	lui	a0,%hi(.LC2)	# tmp137,
	addi	a0,a0,%lo(.LC2)	#, tmp137,
	call	printf		#
# Median.c:16:     for (i = 0; i < n; i++) {
	lw	s2,52(sp)		# n.1_3, n
# Median.c:16:     for (i = 0; i < n; i++) {
	ble	s2,zero,.L2	#, n.1_3,,
	addi	s1,sp,56	#, ivtmp.29,
# Median.c:16:     for (i = 0; i < n; i++) {
	li	s0,0		# i,
	lui	s3,%hi(.LC3)	# tmp176,
.L3:
# Median.c:17:         scanf("%f", &a[i]);
	mv	a1,s1	#, ivtmp.29
	addi	a0,s3,%lo(.LC3)	#, tmp176,
	call	scanf		#
# Median.c:16:     for (i = 0; i < n; i++) {
	lw	s2,52(sp)		# n.1_3, n
# Median.c:16:     for (i = 0; i < n; i++) {
	addi	s0,s0,1	#, i, i
# Median.c:16:     for (i = 0; i < n; i++) {
	addi	s1,s1,4	#, ivtmp.29, ivtmp.29
	bgt	s2,s0,.L3	#, n.1_3, i,
.L2:
# Median.c:21:     for (i = 0; i < n - 1; i++) {
	addi	s0,s2,-1	#, _56, n.1_3
# Median.c:21:     for (i = 0; i < n - 1; i++) {
	ble	s0,zero,.L4	#, _56,,
	li	a5,0		# a_I_lsm_flag.37,
	sw	s2,44(sp)	# n.1_3, %sfp
	lw	s6,56(sp)		# a_I_lsm.34, a
	lw	s11,60(sp)		# a_I_lsm.36, a
	lw	s1,64(sp)		# a_I_lsm.38, a
	lw	s3,68(sp)		# a_I_lsm.40, a
	lw	s4,72(sp)		# a_I_lsm.42, a
	lw	s5,76(sp)		# a_I_lsm.44, a
	lw	s7,80(sp)		# a_I_lsm.46, a
	lw	s8,84(sp)		# a_I_lsm.48, a
	lw	s10,92(sp)		# a_I_lsm.32, a
	lw	s9,88(sp)		# a_I_lsm.30, a
	sw	zero,36(sp)	#, %sfp
	sw	zero,32(sp)	#, %sfp
	sw	zero,24(sp)	#, %sfp
	sw	zero,16(sp)	#, %sfp
	sw	zero,12(sp)	#, %sfp
	sw	zero,8(sp)	#, %sfp
	sw	zero,20(sp)	#, %sfp
	sw	zero,40(sp)	#, %sfp
	sw	zero,28(sp)	#, %sfp
	mv	s2,a5	# a_I_lsm_flag.37, a_I_lsm_flag.37
	j	.L5		#
.L82:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	a4,s1	# a_I_lsm.38, a_I_lsm.38
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,2		# tmp240,
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	s1,s11	# a_I_lsm.38, a_I_lsm.36
	mv	s11,a4	# a_I_lsm.36, a_I_lsm.38
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	beq	s0,a5,.L31	#, ivtmp.24, tmp240,
.L83:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	a1,s3	#, a_I_lsm.40
	mv	a0,s11	#, a_I_lsm.36
	call	__gesf2		#
	bge	a0,zero,.L32	#, tmp197,,
	mv	a4,s3	# a_I_lsm.40, a_I_lsm.40
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,3		# tmp243,
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	s3,s11	# a_I_lsm.40, a_I_lsm.36
	mv	s11,a4	# a_I_lsm.36, a_I_lsm.40
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	beq	s0,a5,.L33	#, ivtmp.24, tmp243,
.L84:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	a1,s4	#, a_I_lsm.42
	mv	a0,s11	#, a_I_lsm.36
	call	__gesf2		#
	bge	a0,zero,.L34	#, tmp198,,
	mv	a4,s4	# a_I_lsm.42, a_I_lsm.42
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,4		# tmp246,
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	s4,s11	# a_I_lsm.42, a_I_lsm.36
	mv	s11,a4	# a_I_lsm.36, a_I_lsm.42
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	beq	s0,a5,.L35	#, ivtmp.24, tmp246,
.L85:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	a1,s5	#, a_I_lsm.44
	mv	a0,s11	#, a_I_lsm.36
	call	__gesf2		#
	bge	a0,zero,.L36	#, tmp199,,
	mv	a4,s5	# a_I_lsm.44, a_I_lsm.44
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,5		# tmp249,
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	s5,s11	# a_I_lsm.44, a_I_lsm.36
	mv	s11,a4	# a_I_lsm.36, a_I_lsm.44
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	beq	s0,a5,.L37	#, ivtmp.24, tmp249,
.L86:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	a1,s7	#, a_I_lsm.46
	mv	a0,s11	#, a_I_lsm.36
	call	__gesf2		#
	bge	a0,zero,.L38	#, tmp200,,
	mv	a4,s7	# a_I_lsm.46, a_I_lsm.46
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,6		# tmp252,
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	s7,s11	# a_I_lsm.46, a_I_lsm.36
	mv	s11,a4	# a_I_lsm.36, a_I_lsm.46
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	beq	s0,a5,.L39	#, ivtmp.24, tmp252,
.L87:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	a1,s8	#, a_I_lsm.48
	mv	a0,s11	#, a_I_lsm.36
	call	__gesf2		#
	bge	a0,zero,.L40	#, tmp201,,
	mv	a4,s8	# a_I_lsm.48, a_I_lsm.48
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,7		# tmp255,
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	s8,s11	# a_I_lsm.48, a_I_lsm.36
	mv	s11,a4	# a_I_lsm.36, a_I_lsm.48
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	beq	s0,a5,.L41	#, ivtmp.24, tmp255,
.L88:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	a1,s11	#, a_I_lsm.36
	mv	a0,s9	#, a_I_lsm.30
	call	__lesf2		#
	ble	a0,zero,.L42	#, tmp202,,
	mv	a4,s11	# a_I_lsm.36, a_I_lsm.36
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,8		# tmp258,
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	s11,s9	# a_I_lsm.36, a_I_lsm.30
	mv	s9,a4	# a_I_lsm.30, a_I_lsm.36
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	beq	s0,a5,.L43	#, ivtmp.24, tmp258,
.L89:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	a1,s10	#, a_I_lsm.32
	mv	a0,s11	#, a_I_lsm.36
	call	__gesf2		#
	bge	a0,zero,.L44	#, tmp203,,
	mv	a4,s10	# a_I_lsm.32, a_I_lsm.32
	mv	s10,s11	# a_I_lsm.32, a_I_lsm.36
	mv	s11,a4	# a_I_lsm.36, a_I_lsm.32
.L14:
	mv	a4,s9	# a_I_lsm.30, a_I_lsm.30
	mv	s9,s10	# a_I_lsm.30, a_I_lsm.32
	mv	s10,s11	# a_I_lsm.32, a_I_lsm.36
.L80:
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	mv	s11,s1	# a_I_lsm.36, a_I_lsm.38
	mv	s1,s3	# a_I_lsm.38, a_I_lsm.40
	mv	s3,s4	# a_I_lsm.40, a_I_lsm.42
	mv	s4,s5	# a_I_lsm.42, a_I_lsm.44
	mv	s5,s7	# a_I_lsm.44, a_I_lsm.46
	mv	s7,s8	# a_I_lsm.46, a_I_lsm.48
	mv	s8,a4	# a_I_lsm.48, a_I_lsm.30
.L6:
# Median.c:21:     for (i = 0; i < n - 1; i++) {
	addi	s0,s0,-1	#, ivtmp.24, ivtmp.24
	beq	s0,zero,.L15	#, ivtmp.24,,
.L5:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	a1,s11	#, a_I_lsm.36
	mv	a0,s6	#, a_I_lsm.34
	call	__gesf2		#
	blt	a0,zero,.L16	#, tmp204,,
	mv	a4,s6	# a_I_lsm.34, a_I_lsm.34
	li	a5,1		# a_I_lsm_flag.35,
# Median.c:25:                 a[j] = a[j + 1];
	mv	s6,s11	# a_I_lsm.34, a_I_lsm.36
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	li	s2,1		# a_I_lsm_flag.37,
	sw	a5,20(sp)	# a_I_lsm_flag.35, %sfp
# Median.c:26:                 a[j + 1] = t;
	mv	s11,a4	# a_I_lsm.36, a_I_lsm.34
.L16:
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,1		# tmp238,
	beq	s0,a5,.L6	#, ivtmp.24, tmp238,
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	mv	a1,s1	#, a_I_lsm.38
	mv	a0,s11	#, a_I_lsm.36
	call	__gesf2		#
	blt	a0,zero,.L82	#, tmp196,,
	li	a5,1		# a_I_lsm_flag.39,
	sw	a5,8(sp)	# a_I_lsm_flag.39, %sfp
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,2		# tmp240,
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	li	s2,1		# a_I_lsm_flag.37,
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	bne	s0,a5,.L83	#, ivtmp.24, tmp240,
.L31:
	mv	a4,s11	# a_I_lsm.36, a_I_lsm.36
# Median.c:21:     for (i = 0; i < n - 1; i++) {
	addi	s0,s0,-1	#, ivtmp.24, ivtmp.24
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	mv	s11,s1	# a_I_lsm.36, a_I_lsm.38
	mv	s1,a4	# a_I_lsm.38, a_I_lsm.36
# Median.c:21:     for (i = 0; i < n - 1; i++) {
	bne	s0,zero,.L5	#, ivtmp.24,,
.L15:
	lw	a5,28(sp)		# a_I_lsm_flag.31, %sfp
	mv	a4,s2	# a_I_lsm_flag.37, a_I_lsm_flag.37
	lw	s2,44(sp)		# n.1_3, %sfp
	beq	a5,zero,.L17	#, a_I_lsm_flag.31,,
	sw	s9,88(sp)	# a_I_lsm.30, a
.L17:
	lw	a5,40(sp)		# a_I_lsm_flag.33, %sfp
	beq	a5,zero,.L18	#, a_I_lsm_flag.33,,
	sw	s10,92(sp)	# a_I_lsm.32, a
.L18:
	lw	a5,20(sp)		# a_I_lsm_flag.35, %sfp
	beq	a5,zero,.L19	#, a_I_lsm_flag.35,,
	sw	s6,56(sp)	# a_I_lsm.34, a
.L19:
	beq	a4,zero,.L20	#, a_I_lsm_flag.37,,
	sw	s11,60(sp)	# a_I_lsm.36, a
.L20:
	lw	a5,8(sp)		# a_I_lsm_flag.39, %sfp
	beq	a5,zero,.L21	#, a_I_lsm_flag.39,,
	sw	s1,64(sp)	# a_I_lsm.38, a
.L21:
	lw	a5,12(sp)		# a_I_lsm_flag.41, %sfp
	beq	a5,zero,.L22	#, a_I_lsm_flag.41,,
	sw	s3,68(sp)	# a_I_lsm.40, a
.L22:
	lw	a5,16(sp)		# a_I_lsm_flag.43, %sfp
	beq	a5,zero,.L23	#, a_I_lsm_flag.43,,
	sw	s4,72(sp)	# a_I_lsm.42, a
.L23:
	lw	a5,24(sp)		# a_I_lsm_flag.45, %sfp
	beq	a5,zero,.L24	#, a_I_lsm_flag.45,,
	sw	s5,76(sp)	# a_I_lsm.44, a
.L24:
	lw	a5,32(sp)		# a_I_lsm_flag.47, %sfp
	beq	a5,zero,.L25	#, a_I_lsm_flag.47,,
	sw	s7,80(sp)	# a_I_lsm.46, a
.L25:
	lw	a5,36(sp)		# a_I_lsm_flag.49, %sfp
	beq	a5,zero,.L4	#, a_I_lsm_flag.49,,
	sw	s8,84(sp)	# a_I_lsm.48, a
.L4:
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	srli	a5,s2,31	#, tmp156, n.1_3
	add	a5,a5,s2	# n.1_3, tmp157, tmp156
	srai	a5,a5,1	#, tmp158, tmp157
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	slli	a4,a5,2	#, tmp160, tmp158
	addi	a3,sp,96	#, tmp271,
	add	a4,a3,a4	# tmp160, tmp159, tmp271
# Median.c:32:     if (n % 2 == 0) {
	andi	s2,s2,1	#, tmp161, n.1_3
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	lw	s3,-40(a4)		# mediana, a
# Median.c:32:     if (n % 2 == 0) {
	bne	s2,zero,.L26	#, tmp161,,
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	addi	a5,a5,-1	#, tmp162, tmp158
	slli	a5,a5,2	#, tmp164, tmp162
	add	a5,a3,a5	# tmp164, tmp163, tmp272
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	lw	a1,-40(a5)		#, a
	mv	a0,s3	#, mediana
	call	__addsf3		#
# Median.c:33:         mediana = (a[n / 2 - 1] + a[n / 2]) / 2.0;
	lui	a5,%hi(.LC4)	# tmp166,
	lw	a1,%lo(.LC4)(a5)		#,
	call	__mulsf3		#
	mv	s3,a0	# mediana, tmp205
.L26:
# Median.c:39:     printf("Valores ordenados:\n");
	lui	a0,%hi(.LC5)	# tmp168,
	addi	a0,a0,%lo(.LC5)	#, tmp168,
	call	puts		#
# Median.c:40:     for (i = 0; i < n; i++) {
	lw	a5,52(sp)		# n, n
	ble	a5,zero,.L29	#, n,,
	addi	s1,sp,56	#, ivtmp.20,
# Median.c:40:     for (i = 0; i < n; i++) {
	li	s0,0		# i,
	lui	s2,%hi(.LC7)	# tmp177,
.L28:
# Median.c:41:         printf("%f ", a[i]);
	lw	a0,0(s1)		#, MEM[base: _26, offset: 0B]
# Median.c:40:     for (i = 0; i < n; i++) {
	addi	s0,s0,1	#, i, i
# Median.c:40:     for (i = 0; i < n; i++) {
	addi	s1,s1,4	#, ivtmp.20, ivtmp.20
# Median.c:41:         printf("%f ", a[i]);
	call	__extendsfdf2		#
	mv	a2,a0	# tmp207,
	mv	a3,a1	#,
	addi	a0,s2,%lo(.LC7)	#, tmp177,
	call	printf		#
# Median.c:40:     for (i = 0; i < n; i++) {
	lw	a5,52(sp)		# n, n
	bgt	a5,s0,.L28	#, n, i,
.L29:
# Median.c:43:     printf("\n Mediana: %f\n", mediana);
	mv	a0,s3	#, mediana
	call	__extendsfdf2		#
	mv	a2,a0	# tmp206,
	lui	a0,%hi(.LC6)	# tmp171,
	mv	a3,a1	#,
	addi	a0,a0,%lo(.LC6)	#, tmp171,
	call	printf		#
# Median.c:46: }
	lw	ra,156(sp)		#,
	lw	s0,152(sp)		#,
	lw	s1,148(sp)		#,
	lw	s2,144(sp)		#,
	lw	s3,140(sp)		#,
	lw	s4,136(sp)		#,
	lw	s5,132(sp)		#,
	lw	s6,128(sp)		#,
	lw	s7,124(sp)		#,
	lw	s8,120(sp)		#,
	lw	s9,116(sp)		#,
	lw	s10,112(sp)		#,
	lw	s11,108(sp)		#,
	li	a0,0		#,
	addi	sp,sp,160	#,,
	jr	ra		#
.L32:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	li	a5,1		# a_I_lsm_flag.41,
	sw	a5,12(sp)	# a_I_lsm_flag.41, %sfp
	sw	a5,8(sp)	# a_I_lsm_flag.39, %sfp
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,3		# tmp243,
	bne	s0,a5,.L84	#, ivtmp.24, tmp243,
.L33:
	mv	a4,s11	# a_I_lsm.36, a_I_lsm.36
	mv	s11,s1	# a_I_lsm.36, a_I_lsm.38
	mv	s1,s3	# a_I_lsm.38, a_I_lsm.40
	mv	s3,a4	# a_I_lsm.40, a_I_lsm.36
	j	.L6		#
.L34:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	li	a5,1		# a_I_lsm_flag.43,
	sw	a5,16(sp)	# a_I_lsm_flag.43, %sfp
	sw	a5,12(sp)	# a_I_lsm_flag.41, %sfp
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,4		# tmp246,
	bne	s0,a5,.L85	#, ivtmp.24, tmp246,
.L35:
	mv	a4,s11	# a_I_lsm.36, a_I_lsm.36
	mv	s11,s1	# a_I_lsm.36, a_I_lsm.38
	mv	s1,s3	# a_I_lsm.38, a_I_lsm.40
	mv	s3,s4	# a_I_lsm.40, a_I_lsm.42
	mv	s4,a4	# a_I_lsm.42, a_I_lsm.36
	j	.L6		#
.L36:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	li	a5,1		# a_I_lsm_flag.45,
	sw	a5,24(sp)	# a_I_lsm_flag.45, %sfp
	sw	a5,16(sp)	# a_I_lsm_flag.43, %sfp
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,5		# tmp249,
	bne	s0,a5,.L86	#, ivtmp.24, tmp249,
.L37:
	mv	a4,s11	# a_I_lsm.36, a_I_lsm.36
	mv	s11,s1	# a_I_lsm.36, a_I_lsm.38
	mv	s1,s3	# a_I_lsm.38, a_I_lsm.40
	mv	s3,s4	# a_I_lsm.40, a_I_lsm.42
	mv	s4,s5	# a_I_lsm.42, a_I_lsm.44
	mv	s5,a4	# a_I_lsm.44, a_I_lsm.36
	j	.L6		#
.L38:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	li	a5,1		# a_I_lsm_flag.47,
	sw	a5,32(sp)	# a_I_lsm_flag.47, %sfp
	sw	a5,24(sp)	# a_I_lsm_flag.45, %sfp
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,6		# tmp252,
	bne	s0,a5,.L87	#, ivtmp.24, tmp252,
.L39:
	mv	a4,s11	# a_I_lsm.36, a_I_lsm.36
	mv	s11,s1	# a_I_lsm.36, a_I_lsm.38
	mv	s1,s3	# a_I_lsm.38, a_I_lsm.40
	mv	s3,s4	# a_I_lsm.40, a_I_lsm.42
	mv	s4,s5	# a_I_lsm.42, a_I_lsm.44
	mv	s5,s7	# a_I_lsm.44, a_I_lsm.46
	mv	s7,a4	# a_I_lsm.46, a_I_lsm.36
	j	.L6		#
.L40:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	li	a5,1		# a_I_lsm_flag.49,
	sw	a5,36(sp)	# a_I_lsm_flag.49, %sfp
	sw	a5,32(sp)	# a_I_lsm_flag.47, %sfp
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,7		# tmp255,
	bne	s0,a5,.L88	#, ivtmp.24, tmp255,
.L41:
	mv	a4,s11	# a_I_lsm.36, a_I_lsm.36
	j	.L80		#
.L42:
# Median.c:23:             if (a[j] >= a[j + 1]) { // Trocando valores
	li	a5,1		# a_I_lsm_flag.49,
	sw	a5,36(sp)	# a_I_lsm_flag.49, %sfp
	sw	a5,28(sp)	# a_I_lsm_flag.31, %sfp
# Median.c:22:         for (j = 0; j < n - i - 1; j++) {
	li	a5,8		# tmp258,
	bne	s0,a5,.L89	#, ivtmp.24, tmp258,
.L43:
	mv	a4,s9	# a_I_lsm.30, a_I_lsm.30
	mv	s9,s11	# a_I_lsm.30, a_I_lsm.36
	j	.L80		#
.L44:
	li	a5,1		# a_I_lsm_flag.33,
	sw	a5,40(sp)	# a_I_lsm_flag.33, %sfp
	sw	a5,28(sp)	# a_I_lsm_flag.31, %sfp
	j	.L14		#
	.size	main, .-main
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC4:
	.word	1056964608
	.ident	"GCC: (GNU) 10.1.0"
