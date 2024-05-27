	.file	"median.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Quantidade de itens: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Insira os valores:\n"
.LC3:
	.string	"%f"
.LC5:
	.string	"Valores ordenados:"
.LC6:
	.string	"\n Mediana: %f\n"
.LC7:
	.string	"%f "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$.LC0, %edi
	xorl	%eax, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	call	printf
	leaq	12(%rsp), %rsi
	movl	$.LC1, %edi
	xorl	%eax, %eax
	call	__isoc99_scanf
	movl	12(%rsp), %esi
	movl	$.LC2, %edi
	xorl	%eax, %eax
	call	printf
	movl	12(%rsp), %edx
	testl	%edx, %edx
	jle	.L2
	leaq	16(%rsp), %rbp
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rbp, %rsi
	movl	$.LC3, %edi
	xorl	%eax, %eax
	addl	$1, %ebx
	call	__isoc99_scanf
	movl	12(%rsp), %edx
	addq	$4, %rbp
	cmpl	%ebx, %edx
	jg	.L3
	leal	-1(%rdx), %eax
	cmpl	$1, %edx
	jg	.L5
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L68:
	movq	20(%rsp), %xmm0
	movaps	%xmm0, %xmm4
	shufps	$0xe5, %xmm4, %xmm4
	comiss	%xmm4, %xmm0
	jb	.L8
	shufps	$0xe1, %xmm0, %xmm0
	movlps	%xmm0, 20(%rsp)
.L8:
	cmpl	$2, %eax
	je	.L10
	movq	24(%rsp), %xmm0
	movaps	%xmm0, %xmm5
	shufps	$0xe5, %xmm5, %xmm5
	comiss	%xmm5, %xmm0
	jb	.L11
	shufps	$0xe1, %xmm0, %xmm0
	movlps	%xmm0, 24(%rsp)
.L11:
	cmpl	$3, %eax
	je	.L10
	movq	28(%rsp), %xmm0
	movaps	%xmm0, %xmm6
	shufps	$0xe5, %xmm6, %xmm6
	comiss	%xmm6, %xmm0
	jb	.L13
	shufps	$0xe1, %xmm0, %xmm0
	movlps	%xmm0, 28(%rsp)
.L13:
	cmpl	$4, %eax
	je	.L10
	movq	32(%rsp), %xmm0
	movaps	%xmm0, %xmm7
	shufps	$0xe5, %xmm7, %xmm7
	comiss	%xmm7, %xmm0
	jb	.L15
	shufps	$0xe1, %xmm0, %xmm0
	movlps	%xmm0, 32(%rsp)
.L15:
	cmpl	$5, %eax
	je	.L10
	movq	36(%rsp), %xmm0
	movaps	%xmm0, %xmm7
	shufps	$0xe5, %xmm7, %xmm7
	comiss	%xmm7, %xmm0
	jb	.L17
	shufps	$0xe1, %xmm0, %xmm0
	movlps	%xmm0, 36(%rsp)
.L17:
	cmpl	$6, %eax
	je	.L10
	movq	40(%rsp), %xmm0
	movaps	%xmm0, %xmm6
	shufps	$0xe5, %xmm6, %xmm6
	comiss	%xmm6, %xmm0
	jb	.L19
	shufps	$0xe1, %xmm0, %xmm0
	movlps	%xmm0, 40(%rsp)
.L19:
	cmpl	$7, %eax
	je	.L10
	movq	44(%rsp), %xmm0
	movaps	%xmm0, %xmm5
	shufps	$0xe5, %xmm5, %xmm5
	comiss	%xmm5, %xmm0
	jb	.L21
	shufps	$0xe1, %xmm0, %xmm0
	movlps	%xmm0, 44(%rsp)
.L21:
	cmpl	$8, %eax
	je	.L10
	movq	48(%rsp), %xmm0
	movaps	%xmm0, %xmm4
	shufps	$0xe5, %xmm4, %xmm4
	comiss	%xmm4, %xmm0
	jb	.L10
	shufps	$0xe1, %xmm0, %xmm0
	movlps	%xmm0, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L10:
	subl	$1, %eax
.L5:
	leal	1(%rax), %ecx
	cmpl	$1, %ecx
	jle	.L10
	movq	16(%rsp), %xmm0
	movaps	%xmm0, %xmm3
	shufps	$0xe5, %xmm3, %xmm3
	comiss	%xmm3, %xmm0
	jb	.L6
	shufps	$0xe1, %xmm0, %xmm0
	movlps	%xmm0, 16(%rsp)
.L6:
	cmpl	$1, %eax
	jne	.L68
.L2:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	andl	$1, %edx
	movslq	%eax, %rcx
	movss	16(%rsp,%rcx,4), %xmm3
	movd	%xmm3, %r14d
	jne	.L26
	subl	$1, %eax
	movss	.LC4(%rip), %xmm0
	cltq
	addss	16(%rsp,%rax,4), %xmm3
	mulss	%xmm3, %xmm0
	movd	%xmm0, %r14d
.L26:
	movl	$.LC5, %edi
	xorl	%ebx, %ebx
	leaq	16(%rsp), %rbp
	call	puts
	movl	12(%rsp), %eax
	testl	%eax, %eax
	jle	.L28
	.p2align 4,,10
	.p2align 3
.L27:
	pxor	%xmm0, %xmm0
	movl	$.LC7, %edi
	movl	$1, %eax
	cvtss2sd	0(%rbp,%rbx,4), %xmm0
	call	printf
	addq	$1, %rbx
	cmpl	%ebx, 12(%rsp)
	jg	.L27
.L28:
	movd	%r14d, %xmm7
	pxor	%xmm0, %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	cvtss2sd	%xmm7, %xmm0
	call	printf
	addq	$64, %rsp
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC4:
	.long	1056964608
	.ident	"GCC: (GNU) 14.1.1 20240507 (Red Hat 14.1.1-1)"
	.section	.note.GNU-stack,"",@progbits
