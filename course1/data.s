	.file	"data.c"
	.text
.Ltext0:
	.globl	no_of_digits
	.type	no_of_digits, @function
no_of_digits:
.LFB0:
	.file 1 "src/data.c"
	.loc 1 24 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 25 0
	movb	$0, -1(%rbp)
	.loc 1 27 0
	cmpl	$0, -20(%rbp)
	jns	.L3
	.loc 1 28 0
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
	.loc 1 30 0
	jmp	.L3
.L4:
	.loc 1 32 0
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
	.loc 1 33 0
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-24(%rbp)
	movl	%eax, -20(%rbp)
.L3:
	.loc 1 30 0
	cmpl	$0, -20(%rbp)
	jne	.L4
	.loc 1 36 0
	movzbl	-1(%rbp), %eax
	.loc 1 37 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	no_of_digits, .-no_of_digits
	.globl	my_itoa
	.type	my_itoa, @function
my_itoa:
.LFB1:
	.loc 1 40 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	.loc 1 41 0
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	no_of_digits
	movb	%al, -2(%rbp)
	.loc 1 43 0
	cmpl	$0, -20(%rbp)
	jne	.L7
	.loc 1 45 0
	movq	-32(%rbp), %rax
	movb	$48, (%rax)
	.loc 1 46 0
	movzbl	-2(%rbp), %eax
	jmp	.L8
.L7:
	.loc 1 49 0
	cmpl	$-2147483648, -20(%rbp)
	jne	.L9
	.loc 1 51 0
	movq	-32(%rbp), %rax
	movb	$45, (%rax)
	.loc 1 52 0
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	$49, (%rax)
.LBB2:
	.loc 1 53 0
	movb	$2, -1(%rbp)
	jmp	.L10
.L11:
	.loc 1 54 0 discriminator 3
	movzbl	-1(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$48, (%rax)
	.loc 1 53 0 discriminator 3
	addb	$1, -1(%rbp)
.L10:
	.loc 1 53 0 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	cmpb	-2(%rbp), %al
	jb	.L11
.LBE2:
	.loc 1 55 0 is_stmt 1
	movzbl	-2(%rbp), %eax
	jmp	.L8
.L9:
	.loc 1 58 0
	movzbl	-2(%rbp), %eax
	addl	$2, %eax
	cmpl	$8, %eax
	jbe	.L12
	.loc 1 61 0
	movl	$0, %eax
	jmp	.L8
.L12:
	.loc 1 64 0
	cmpl	$0, -20(%rbp)
	jns	.L13
	.loc 1 66 0
	negl	-20(%rbp)
	.loc 1 67 0
	movq	-32(%rbp), %rax
	movb	$45, (%rax)
.L13:
	.loc 1 70 0
	movzbl	-2(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	.loc 1 71 0
	jmp	.L14
.L15:
	.loc 1 73 0
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-24(%rbp)
	movl	%edx, %eax
	movl	%eax, %ecx
	movzbl	-2(%rbp), %eax
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leal	48(%rcx), %edx
	movb	%dl, (%rax)
	.loc 1 74 0
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-24(%rbp)
	movl	%eax, -20(%rbp)
	.loc 1 75 0
	movzbl	-2(%rbp), %eax
	subl	$1, %eax
	movb	%al, -2(%rbp)
.L14:
	.loc 1 71 0
	cmpl	$0, -20(%rbp)
	jg	.L15
	.loc 1 78 0
	movzbl	-2(%rbp), %eax
.L8:
	.loc 1 79 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	my_itoa, .-my_itoa
	.globl	my_atoi
	.type	my_atoi, @function
my_atoi:
.LFB2:
	.loc 1 83 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movl	%edx, -48(%rbp)
	movb	%al, -44(%rbp)
	.loc 1 84 0
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L17
	.loc 1 85 0
	cmpb	$1, -44(%rbp)
	jbe	.L17
	.loc 1 86 0
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L18
	.loc 1 86 0 is_stmt 0 discriminator 1
	cmpb	$2, -44(%rbp)
	jbe	.L17
.L18:
	.loc 1 87 0 is_stmt 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L19
	.loc 1 87 0 is_stmt 0 discriminator 1
	cmpb	$34, -44(%rbp)
	ja	.L17
.L19:
	.loc 1 88 0 is_stmt 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L20
	.loc 1 88 0 is_stmt 0 discriminator 1
	cmpb	$32, -44(%rbp)
	jbe	.L20
.L17:
	.loc 1 91 0 is_stmt 1
	movl	$0, %eax
	jmp	.L21
.L20:
	.loc 1 94 0
	movzbl	-44(%rbp), %eax
	leaq	-2(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	cltq
	movq	%rax, -16(%rbp)
	movl	-48(%rbp), %eax
	movq	%rax, -8(%rbp)
	.loc 1 95 0
	movl	$0, -20(%rbp)
	.loc 1 97 0
	cmpb	$2, -44(%rbp)
	jbe	.L22
.LBB3:
	.loc 1 99 0
	movzbl	-44(%rbp), %eax
	subl	$3, %eax
	movb	%al, -21(%rbp)
	jmp	.L23
.L24:
	.loc 1 101 0 discriminator 3
	movzbl	-21(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	cltq
	imulq	-8(%rbp), %rax
	addq	%rax, -16(%rbp)
	.loc 1 102 0 discriminator 3
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 99 0 discriminator 3
	subb	$1, -21(%rbp)
.L23:
	.loc 1 99 0 is_stmt 0 discriminator 1
	cmpb	$0, -21(%rbp)
	jne	.L24
.L22:
.LBE3:
	.loc 1 106 0 is_stmt 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L25
	.loc 1 108 0
	negq	-16(%rbp)
	jmp	.L26
.L25:
	.loc 1 110 0
	cmpb	$2, -44(%rbp)
	jbe	.L26
	.loc 1 112 0
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	cltq
	imulq	-8(%rbp), %rax
	addq	%rax, -16(%rbp)
.L26:
	.loc 1 116 0
	cmpq	$-2147483648, -16(%rbp)
	jl	.L27
	.loc 1 116 0 is_stmt 0 discriminator 1
	cmpq	$2147483647, -16(%rbp)
	jg	.L27
	.loc 1 118 0 is_stmt 1
	movq	-16(%rbp), %rax
	movl	%eax, -20(%rbp)
.L27:
	.loc 1 125 0
	movl	-20(%rbp), %eax
.L21:
	.loc 1 126 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	my_atoi, .-my_atoi
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x21b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF24
	.byte	0xc
	.long	.LASF25
	.long	.LASF26
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0x25
	.long	0x2d
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x28
	.long	0x6d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x29
	.long	0x3b
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x2b
	.long	0x8a
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x1a
	.long	0x62
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x1b
	.long	0x7f
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x18
	.long	0x50
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x1a
	.long	0x74
	.uleb128 0x5
	.long	.LASF19
	.byte	0x1
	.byte	0x52
	.long	0x98
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x158
	.uleb128 0x6
	.string	"ptr"
	.byte	0x1
	.byte	0x52
	.long	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x52
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x52
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.byte	0x5e
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"pow"
	.byte	0x1
	.byte	0x5e
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"num"
	.byte	0x1
	.byte	0x5f
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x63
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0xae
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.byte	0x27
	.long	0xae
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d6
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0x27
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"ptr"
	.byte	0x1
	.byte	0x27
	.long	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x27
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0x29
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xa
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x35
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF27
	.byte	0x1
	.byte	0x17
	.long	0xae
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.string	"num"
	.byte	0x1
	.byte	0x17
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0x17
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0x19
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"digit_count"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"__uint32_t"
.LASF27:
	.string	"no_of_digits"
.LASF13:
	.string	"int64_t"
.LASF14:
	.string	"uint8_t"
.LASF10:
	.string	"long int"
.LASF9:
	.string	"__int64_t"
.LASF25:
	.string	"src/data.c"
.LASF6:
	.string	"__uint8_t"
.LASF19:
	.string	"my_atoi"
.LASF16:
	.string	"digits"
.LASF20:
	.string	"my_itoa"
.LASF18:
	.string	"num_64"
.LASF26:
	.string	"/home/grigor/Coursera_Embedded/assignments/course1"
.LASF0:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF15:
	.string	"uint32_t"
.LASF2:
	.string	"unsigned int"
.LASF23:
	.string	"radix"
.LASF1:
	.string	"short unsigned int"
.LASF11:
	.string	"char"
.LASF12:
	.string	"int32_t"
.LASF21:
	.string	"data"
.LASF3:
	.string	"long unsigned int"
.LASF7:
	.string	"__int32_t"
.LASF17:
	.string	"base"
.LASF24:
	.string	"GNU C99 7.5.0 -mtune=generic -march=x86-64 -g -O0 -std=c99 -fstack-protector-strong"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
