	.file	"stats.c"
	.text
.Ltext0:
	.globl	compare
	.type	compare, @function
compare:
.LFB0:
	.file 1 "src/stats.c"
	.loc 1 59 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 60 0
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 61 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	compare, .-compare
	.globl	compare_rev
	.type	compare_rev, @function
compare_rev:
.LFB1:
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 65 0
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 66 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	compare_rev, .-compare_rev
	.section	.rodata
	.align 8
.LC0:
	.string	"Array statistics:\n-----------------\nThe minimum value is: %u\nThe maximum value is: %u\nThe mean value is: %u\nThe median value is: %u\n"
	.text
	.globl	print_statistics
	.type	print_statistics, @function
print_statistics:
.LFB2:
	.loc 1 69 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 70 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	find_minimum
	movl	%eax, -16(%rbp)
	.loc 1 71 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	find_maximum
	movl	%eax, -12(%rbp)
	.loc 1 72 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	find_mean
	movl	%eax, -8(%rbp)
	.loc 1 73 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	find_median
	movl	%eax, -4(%rbp)
	.loc 1 75 0
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 78 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	print_statistics, .-print_statistics
	.section	.rodata
.LC1:
	.string	"%4d"
	.text
	.globl	print_array
	.type	print_array, @function
print_array:
.LFB3:
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movb	%al, -20(%rbp)
.LBB2:
	.loc 1 93 0
	movq	$0, -8(%rbp)
	jmp	.L7
.L9:
	.loc 1 95 0
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 96 0
	movq	-8(%rbp), %rax
	addq	$1, %rax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.L8
	.loc 1 97 0
	movl	$10, %edi
	call	putchar@PLT
.L8:
	.loc 1 93 0 discriminator 2
	addq	$1, -8(%rbp)
.L7:
	.loc 1 93 0 is_stmt 0 discriminator 1
	movzbl	-20(%rbp), %eax
	cmpq	%rax, -8(%rbp)
	jb	.L9
.LBE2:
	.loc 1 99 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	print_array, .-print_array
	.globl	find_median
	.type	find_median, @function
find_median:
.LFB4:
	.loc 1 102 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 103 0
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rax
	leaq	compare(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	.loc 1 104 0
	movl	-20(%rbp), %eax
	shrl	%eax
	movl	%eax, -4(%rbp)
	.loc 1 105 0
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L11
	.loc 1 107 0
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-4(%rbp), %ecx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	jmp	.L12
.L11:
	.loc 1 109 0
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
.L12:
	.loc 1 110 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	find_median, .-find_median
	.globl	find_minimum
	.type	find_minimum, @function
find_minimum:
.LFB5:
	.loc 1 113 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 114 0
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
.LBB3:
	.loc 1 115 0
	movq	$1, -8(%rbp)
	jmp	.L14
.L16:
	.loc 1 117 0
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -9(%rbp)
	jbe	.L15
	.loc 1 118 0
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
.L15:
	.loc 1 115 0 discriminator 2
	addq	$1, -8(%rbp)
.L14:
	.loc 1 115 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax
	cmpq	%rax, -8(%rbp)
	jb	.L16
.LBE3:
	.loc 1 120 0 is_stmt 1
	movzbl	-9(%rbp), %eax
	.loc 1 121 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	find_minimum, .-find_minimum
	.globl	find_maximum
	.type	find_maximum, @function
find_maximum:
.LFB6:
	.loc 1 124 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 125 0
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
.LBB4:
	.loc 1 126 0
	movq	$1, -8(%rbp)
	jmp	.L19
.L21:
	.loc 1 128 0
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -9(%rbp)
	jnb	.L20
	.loc 1 129 0
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
.L20:
	.loc 1 126 0 discriminator 2
	addq	$1, -8(%rbp)
.L19:
	.loc 1 126 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax
	cmpq	%rax, -8(%rbp)
	jb	.L21
.LBE4:
	.loc 1 131 0 is_stmt 1
	movzbl	-9(%rbp), %eax
	.loc 1 132 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	find_maximum, .-find_maximum
	.globl	find_mean
	.type	find_mean, @function
find_mean:
.LFB7:
	.loc 1 135 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 136 0
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
.LBB5:
	.loc 1 137 0
	movq	$1, -8(%rbp)
	jmp	.L24
.L25:
	.loc 1 138 0 discriminator 3
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -12(%rbp)
	.loc 1 137 0 discriminator 3
	addq	$1, -8(%rbp)
.L24:
	.loc 1 137 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax
	cmpq	%rax, -8(%rbp)
	jb	.L25
.LBE5:
	.loc 1 139 0 is_stmt 1
	movl	-12(%rbp), %eax
	movl	$0, %edx
	divl	-20(%rbp)
	.loc 1 140 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	find_mean, .-find_mean
	.globl	sort_array
	.type	sort_array, @function
sort_array:
.LFB8:
	.loc 1 143 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 144 0
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rax
	leaq	compare_rev(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	.loc 1 145 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sort_array, .-sort_array
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5f4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF72
	.byte	0xc
	.long	.LASF73
	.long	.LASF74
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.byte	0x8
	.long	0x5a
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x25
	.long	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x8c
	.long	0x46
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x8d
	.long	0x46
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0xa7
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	.LASF42
	.byte	0xd8
	.byte	0x4
	.byte	0xf5
	.long	0x22e
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.byte	0xf6
	.long	0x3f
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0xfb
	.long	0xa1
	.byte	0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0xfc
	.long	0xa1
	.byte	0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0xfd
	.long	0xa1
	.byte	0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0xfe
	.long	0xa1
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0xff
	.long	0xa1
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x100
	.long	0xa1
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x101
	.long	0xa1
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x102
	.long	0xa1
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x104
	.long	0xa1
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x105
	.long	0xa1
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x106
	.long	0xa1
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x108
	.long	0x266
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x10a
	.long	0x26c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.value	0x10c
	.long	0x3f
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.value	0x110
	.long	0x3f
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.value	0x112
	.long	0x89
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.value	0x116
	.long	0x62
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.value	0x117
	.long	0x70
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.value	0x118
	.long	0x272
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.value	0x11c
	.long	0x282
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.value	0x125
	.long	0x94
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.value	0x12d
	.long	0x9f
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.value	0x12e
	.long	0x9f
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.value	0x12f
	.long	0x9f
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.value	0x130
	.long	0x9f
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x4
	.value	0x133
	.long	0x3f
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x4
	.value	0x135
	.long	0x288
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF75
	.byte	0x4
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF43
	.byte	0x18
	.byte	0x4
	.byte	0xa0
	.long	0x266
	.uleb128 0x9
	.long	.LASF44
	.byte	0x4
	.byte	0xa1
	.long	0x266
	.byte	0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x4
	.byte	0xa2
	.long	0x26c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF46
	.byte	0x4
	.byte	0xa6
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x235
	.uleb128 0x5
	.byte	0x8
	.long	0xae
	.uleb128 0xc
	.long	0xa7
	.long	0x282
	.uleb128 0xd
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x22e
	.uleb128 0xc
	.long	0xa7
	.long	0x298
	.uleb128 0xd
	.long	0x38
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF76
	.uleb128 0xf
	.long	.LASF47
	.byte	0x4
	.value	0x13f
	.long	0x298
	.uleb128 0xf
	.long	.LASF48
	.byte	0x4
	.value	0x140
	.long	0x298
	.uleb128 0xf
	.long	.LASF49
	.byte	0x4
	.value	0x141
	.long	0x298
	.uleb128 0x10
	.long	.LASF50
	.byte	0x5
	.byte	0x87
	.long	0x26c
	.uleb128 0x10
	.long	.LASF51
	.byte	0x5
	.byte	0x88
	.long	0x26c
	.uleb128 0x10
	.long	.LASF52
	.byte	0x5
	.byte	0x89
	.long	0x26c
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x18
	.long	0x77
	.uleb128 0x11
	.long	.LASF63
	.byte	0x1
	.byte	0x8e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x327
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x8e
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x8e
	.long	0x327
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x5b
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x86
	.long	0x69
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x397
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x86
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x86
	.long	0x327
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"sum"
	.byte	0x1
	.byte	0x88
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x89
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x7b
	.long	0x69
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x401
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x7b
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x7b
	.long	0x327
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0x7d
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x15
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.byte	0x70
	.long	0x69
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x46b
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x70
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x70
	.long	0x327
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.byte	0x72
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x15
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x73
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.byte	0x65
	.long	0x69
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b7
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x65
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x65
	.long	0x327
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF62
	.byte	0x1
	.byte	0x68
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.byte	0x5b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x50f
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x5b
	.long	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x5b
	.long	0x50f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x2e2
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.byte	0x44
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x587
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x44
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x44
	.long	0x327
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0x46
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.byte	0x47
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.long	.LASF68
	.byte	0x1
	.byte	0x48
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.byte	0x49
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.byte	0x3f
	.long	0x3f
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c1
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.byte	0x3f
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0x3f
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.byte	0x3a
	.long	0x3f
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.byte	0x3a
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0x3a
	.long	0x54
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
	.uleb128 0x3
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x19
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
.LASF72:
	.string	"GNU C99 7.5.0 -mtune=generic -march=x86-64 -g -O0 -std=c99 -fstack-protector-strong"
.LASF10:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF56:
	.string	"find_mean"
.LASF7:
	.string	"size_t"
.LASF66:
	.string	"array_min"
.LASF32:
	.string	"_shortbuf"
.LASF8:
	.string	"__uint8_t"
.LASF64:
	.string	"print_array"
.LASF49:
	.string	"_IO_2_1_stderr_"
.LASF20:
	.string	"_IO_buf_base"
.LASF2:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF67:
	.string	"array_max"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF70:
	.string	"compare_rev"
.LASF1:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF60:
	.string	"min_v"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF55:
	.string	"array"
.LASF68:
	.string	"array_mean"
.LASF43:
	.string	"_IO_marker"
.LASF50:
	.string	"stdin"
.LASF5:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF76:
	.string	"_IO_FILE_plus"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_sbuf"
.LASF54:
	.string	"size"
.LASF4:
	.string	"short unsigned int"
.LASF22:
	.string	"_IO_save_base"
.LASF74:
	.string	"/home/grigor/Coursera_Embedded/assignments/course1"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF51:
	.string	"stdout"
.LASF73:
	.string	"src/stats.c"
.LASF47:
	.string	"_IO_2_1_stdin_"
.LASF63:
	.string	"sort_array"
.LASF19:
	.string	"_IO_write_end"
.LASF71:
	.string	"compare"
.LASF75:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF59:
	.string	"find_minimum"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF65:
	.string	"print_statistics"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF48:
	.string	"_IO_2_1_stdout_"
.LASF12:
	.string	"char"
.LASF44:
	.string	"_next"
.LASF11:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF58:
	.string	"max_v"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF52:
	.string	"stderr"
.LASF69:
	.string	"array_median"
.LASF61:
	.string	"find_median"
.LASF53:
	.string	"uint8_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF17:
	.string	"_IO_write_base"
.LASF62:
	.string	"middle"
.LASF57:
	.string	"find_maximum"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
