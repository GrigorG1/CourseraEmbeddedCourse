	.file	"memory.c"
	.text
.Ltext0:
	.globl	set_value
	.type	set_value, @function
set_value:
.LFB0:
	.file 1 "src/memory.c"
	.loc 1 29 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, %eax
	movb	%al, -16(%rbp)
	.loc 1 30 0
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-16(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 31 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	set_value, .-set_value
	.globl	clear_value
	.type	clear_value, @function
clear_value:
.LFB1:
	.loc 1 33 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 1 34 0
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	set_value
	.loc 1 35 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	clear_value, .-clear_value
	.globl	get_value
	.type	get_value, @function
get_value:
.LFB2:
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 1 38 0
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 39 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	get_value, .-get_value
	.globl	set_all
	.type	set_all, @function
set_all:
.LFB3:
	.loc 1 41 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movl	%edx, -32(%rbp)
	movb	%al, -28(%rbp)
	.loc 1 43 0
	movl	$0, -4(%rbp)
	jmp	.L6
.L7:
	.loc 1 44 0 discriminator 3
	movsbl	-28(%rbp), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	set_value
	.loc 1 43 0 discriminator 3
	addl	$1, -4(%rbp)
.L6:
	.loc 1 43 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jb	.L7
	.loc 1 46 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	set_all, .-set_all
	.globl	clear_all
	.type	clear_all, @function
clear_all:
.LFB4:
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 1 49 0
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_all
	.loc 1 50 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	clear_all, .-clear_all
	.section	.rodata
	.align 8
.LC0:
	.string	"In my_memmove: cannot reallocate memory for dst, nothing done."
	.text
	.globl	my_memmove
	.type	my_memmove, @function
my_memmove:
.LFB5:
	.loc 1 53 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 55 0
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -32(%rbp)
	ja	.L10
	.loc 1 56 0
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -32(%rbp)
.L10:
	.loc 1 57 0
	cmpq	$0, -32(%rbp)
	jne	.L11
	.loc 1 59 0
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	.loc 1 60 0
	movl	$0, %eax
	jmp	.L12
.L11:
.LBB2:
	.loc 1 62 0
	movq	$0, -8(%rbp)
	jmp	.L13
.L14:
	.loc 1 63 0 discriminator 3
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 62 0 discriminator 3
	addq	$1, -8(%rbp)
.L13:
	.loc 1 62 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L14
.LBE2:
	.loc 1 64 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 65 0
	movq	-32(%rbp), %rax
.L12:
	.loc 1 66 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	my_memmove, .-my_memmove
	.section	.rodata
	.align 8
.LC1:
	.string	"In my_memcopy: cannot reallocate memory for dst, possible data corruption."
	.text
	.globl	my_memcopy
	.type	my_memcopy, @function
my_memcopy:
.LFB6:
	.loc 1 69 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 71 0
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -32(%rbp)
	ja	.L16
	.loc 1 72 0
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -32(%rbp)
.L16:
	.loc 1 73 0
	cmpq	$0, -32(%rbp)
	jne	.L17
	.loc 1 75 0
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
.L17:
.LBB3:
	.loc 1 77 0
	movq	$0, -8(%rbp)
	jmp	.L18
.L19:
	.loc 1 78 0 discriminator 3
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 77 0 discriminator 3
	addq	$1, -8(%rbp)
.L18:
	.loc 1 77 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L19
.LBE3:
	.loc 1 80 0 is_stmt 1
	movq	-32(%rbp), %rax
	.loc 1 81 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	my_memcopy, .-my_memcopy
	.section	.rodata
	.align 8
.LC2:
	.string	"In my_memset: cannot reallocate memory for src, nothing done."
	.text
	.globl	my_memset
	.type	my_memset, @function
my_memset:
.LFB7:
	.loc 1 84 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	.loc 1 85 0
	cmpq	$0, -24(%rbp)
	jne	.L22
	.loc 1 87 0
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -24(%rbp)
	.loc 1 88 0
	cmpq	$0, -24(%rbp)
	jne	.L22
	.loc 1 90 0
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	.loc 1 91 0
	movl	$0, %eax
	jmp	.L23
.L22:
.LBB4:
	.loc 1 95 0
	movq	$0, -8(%rbp)
	jmp	.L24
.L25:
	.loc 1 96 0 discriminator 3
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-36(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 95 0 discriminator 3
	addq	$1, -8(%rbp)
.L24:
	.loc 1 95 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L25
.LBE4:
	.loc 1 98 0 is_stmt 1
	movq	-24(%rbp), %rax
.L23:
	.loc 1 99 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	my_memset, .-my_memset
	.globl	my_memzero
	.type	my_memzero, @function
my_memzero:
.LFB8:
	.loc 1 102 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 103 0
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	my_memset
	.loc 1 104 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	my_memzero, .-my_memzero
	.globl	my_reverse
	.type	my_reverse, @function
my_reverse:
.LFB9:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 108 0
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 109 0
	jmp	.L29
.L30:
	.loc 1 111 0
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	.loc 1 112 0
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	.loc 1 113 0
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	-17(%rbp), %edx
	movb	%dl, (%rax)
.L29:
	.loc 1 109 0
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L30
	.loc 1 115 0
	movq	-40(%rbp), %rax
	.loc 1 116 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	my_reverse, .-my_reverse
	.globl	reserve_words
	.type	reserve_words, @function
reserve_words:
.LFB10:
	.loc 1 119 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 120 0
	movq	-8(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 1 121 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	reserve_words, .-reserve_words
	.globl	free_words
	.type	free_words, @function
free_words:
.LFB11:
	.loc 1 124 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 125 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 126 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	free_words, .-free_words
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6a8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF73
	.byte	0xc
	.long	.LASF74
	.long	.LASF75
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF10
	.byte	0x2
	.byte	0x8c
	.long	0x7f
	.uleb128 0x3
	.long	.LASF11
	.byte	0x2
	.byte	0x8d
	.long	0x7f
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x1a
	.long	0x62
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
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0xd8
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF17
	.uleb128 0x7
	.long	.LASF47
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x25e
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.byte	0xf6
	.long	0x6d
	.byte	0
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.byte	0xfb
	.long	0x9e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.byte	0xfc
	.long	0x9e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.byte	0xfd
	.long	0x9e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.byte	0xfe
	.long	0x9e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.byte	0xff
	.long	0x9e
	.byte	0x28
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x100
	.long	0x9e
	.byte	0x30
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x101
	.long	0x9e
	.byte	0x38
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x102
	.long	0x9e
	.byte	0x40
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x104
	.long	0x9e
	.byte	0x48
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x105
	.long	0x9e
	.byte	0x50
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x106
	.long	0x9e
	.byte	0x58
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x108
	.long	0x296
	.byte	0x60
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x10a
	.long	0x29c
	.byte	0x68
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x10c
	.long	0x6d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x110
	.long	0x6d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x112
	.long	0x86
	.byte	0x78
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x116
	.long	0x34
	.byte	0x80
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x117
	.long	0x49
	.byte	0x82
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x118
	.long	0x2a2
	.byte	0x83
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x11c
	.long	0x2b2
	.byte	0x88
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x125
	.long	0x91
	.byte	0x90
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x12d
	.long	0x9c
	.byte	0x98
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.value	0x12e
	.long	0x9c
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.value	0x12f
	.long	0x9c
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF43
	.byte	0x6
	.value	0x130
	.long	0x9c
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF44
	.byte	0x6
	.value	0x132
	.long	0xcc
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF45
	.byte	0x6
	.value	0x133
	.long	0x6d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF46
	.byte	0x6
	.value	0x135
	.long	0x2b8
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF76
	.byte	0x6
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF48
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x296
	.uleb128 0x8
	.long	.LASF49
	.byte	0x6
	.byte	0xa1
	.long	0x296
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x6
	.byte	0xa2
	.long	0x29c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0xa6
	.long	0x6d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x265
	.uleb128 0x6
	.byte	0x8
	.long	0xde
	.uleb128 0xb
	.long	0xa4
	.long	0x2b2
	.uleb128 0xc
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x25e
	.uleb128 0xb
	.long	0xa4
	.long	0x2c8
	.uleb128 0xc
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF77
	.uleb128 0xe
	.long	.LASF52
	.byte	0x6
	.value	0x13f
	.long	0x2c8
	.uleb128 0xe
	.long	.LASF53
	.byte	0x6
	.value	0x140
	.long	0x2c8
	.uleb128 0xe
	.long	.LASF54
	.byte	0x6
	.value	0x141
	.long	0x2c8
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.byte	0x87
	.long	0x29c
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x88
	.long	0x29c
	.uleb128 0xf
	.long	.LASF57
	.byte	0x7
	.byte	0x89
	.long	0x29c
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.byte	0x7b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x33e
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x7b
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc1
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.byte	0x76
	.long	0x374
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x374
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x76
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x14
	.long	.LASF60
	.byte	0x1
	.byte	0x6a
	.long	0x3df
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x6a
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x6a
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"p1"
	.byte	0x1
	.byte	0x6c
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"p2"
	.byte	0x1
	.byte	0x6c
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"pt"
	.byte	0x1
	.byte	0x6c
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb6
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.byte	0x65
	.long	0x3df
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x423
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x65
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x65
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x12
	.long	.LASF62
	.byte	0x1
	.byte	0x53
	.long	0x3df
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x48d
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x53
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x53
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x53
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF64
	.byte	0x1
	.byte	0x44
	.long	0x3df
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f7
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x44
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"dst"
	.byte	0x1
	.byte	0x44
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x44
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF65
	.byte	0x1
	.byte	0x34
	.long	0x3df
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x561
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x34
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"dst"
	.byte	0x1
	.byte	0x34
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x34
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x3e
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0x1
	.byte	0x30
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x59b
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x30
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x30
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.long	.LASF69
	.byte	0x1
	.byte	0x29
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ef
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x29
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x29
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x29
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF70
	.byte	0x1
	.byte	0x25
	.long	0xa4
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x62d
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x25
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0x25
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.byte	0x21
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x667
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x21
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0x21
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.long	.LASF78
	.byte	0x1
	.byte	0x1d
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x1d
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0x1d
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x1d
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x17
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
.LASF73:
	.string	"GNU C99 7.5.0 -mtune=generic -march=x86-64 -g -O0 -std=c99 -fstack-protector-strong"
.LASF10:
	.string	"__off_t"
.LASF19:
	.string	"_IO_read_ptr"
.LASF67:
	.string	"clear_all"
.LASF31:
	.string	"_chain"
.LASF16:
	.string	"size_t"
.LASF37:
	.string	"_shortbuf"
.LASF6:
	.string	"__uint8_t"
.LASF59:
	.string	"reserve_words"
.LASF54:
	.string	"_IO_2_1_stderr_"
.LASF25:
	.string	"_IO_buf_base"
.LASF61:
	.string	"my_memzero"
.LASF17:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF32:
	.string	"_fileno"
.LASF20:
	.string	"_IO_read_end"
.LASF9:
	.string	"long int"
.LASF18:
	.string	"_flags"
.LASF65:
	.string	"my_memmove"
.LASF26:
	.string	"_IO_buf_end"
.LASF35:
	.string	"_cur_column"
.LASF34:
	.string	"_old_offset"
.LASF39:
	.string	"_offset"
.LASF8:
	.string	"__uint32_t"
.LASF63:
	.string	"value"
.LASF48:
	.string	"_IO_marker"
.LASF55:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF3:
	.string	"long unsigned int"
.LASF66:
	.string	"free_words"
.LASF77:
	.string	"_IO_FILE_plus"
.LASF23:
	.string	"_IO_write_ptr"
.LASF50:
	.string	"_sbuf"
.LASF69:
	.string	"set_all"
.LASF60:
	.string	"my_reverse"
.LASF68:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF27:
	.string	"_IO_save_base"
.LASF75:
	.string	"/home/grigor/Coursera_Embedded/assignments/course1"
.LASF38:
	.string	"_lock"
.LASF33:
	.string	"_flags2"
.LASF45:
	.string	"_mode"
.LASF56:
	.string	"stdout"
.LASF78:
	.string	"set_value"
.LASF52:
	.string	"_IO_2_1_stdin_"
.LASF24:
	.string	"_IO_write_end"
.LASF74:
	.string	"src/memory.c"
.LASF76:
	.string	"_IO_lock_t"
.LASF64:
	.string	"my_memcopy"
.LASF47:
	.string	"_IO_FILE"
.LASF62:
	.string	"my_memset"
.LASF51:
	.string	"_pos"
.LASF30:
	.string	"_markers"
.LASF13:
	.string	"int32_t"
.LASF0:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF36:
	.string	"_vtable_offset"
.LASF53:
	.string	"_IO_2_1_stdout_"
.LASF15:
	.string	"uint32_t"
.LASF58:
	.string	"length"
.LASF12:
	.string	"char"
.LASF71:
	.string	"index"
.LASF7:
	.string	"__int32_t"
.LASF49:
	.string	"_next"
.LASF11:
	.string	"__off64_t"
.LASF21:
	.string	"_IO_read_base"
.LASF29:
	.string	"_IO_save_end"
.LASF40:
	.string	"__pad1"
.LASF41:
	.string	"__pad2"
.LASF42:
	.string	"__pad3"
.LASF43:
	.string	"__pad4"
.LASF44:
	.string	"__pad5"
.LASF46:
	.string	"_unused2"
.LASF57:
	.string	"stderr"
.LASF14:
	.string	"uint8_t"
.LASF28:
	.string	"_IO_backup_base"
.LASF72:
	.string	"clear_value"
.LASF22:
	.string	"_IO_write_base"
.LASF70:
	.string	"get_value"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
