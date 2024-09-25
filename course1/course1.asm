	.file	"course1.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"\ntest_data1();"
.LC1:
	.string	"  Initial number: %d\n"
.LC2:
	.string	"  Final Decimal number: %d\n"
	.text
	.globl	test_data1
	.type	test_data1, @function
test_data1:
.LFB0:
	.file 1 "src/course1.c"
	.loc 1 27 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 29 0
	movl	$-4096, -20(%rbp)
	.loc 1 33 0
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	.loc 1 34 0
	movl	$10, %edi
	call	reserve_words@PLT
	movq	%rax, -8(%rbp)
	.loc 1 36 0
	cmpq	$0, -8(%rbp)
	jne	.L2
	.loc 1 38 0
	movl	$1, %eax
	jmp	.L3
.L2:
	.loc 1 41 0
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	my_itoa@PLT
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	.loc 1 42 0
	movl	-16(%rbp), %eax
	movzbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	my_atoi@PLT
	movl	%eax, -12(%rbp)
	.loc 1 44 0
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 45 0
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 47 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_words@PLT
	.loc 1 49 0
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L4
	.loc 1 51 0
	movl	$1, %eax
	jmp	.L3
.L4:
	.loc 1 53 0
	movl	$0, %eax
.L3:
	.loc 1 54 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	test_data1, .-test_data1
	.section	.rodata
.LC3:
	.string	"test_data2():"
.LC4:
	.string	"  Initial Decimal number: %d\n"
	.text
	.globl	test_data2
	.type	test_data2, @function
test_data2:
.LFB1:
	.loc 1 56 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 58 0
	movl	$123456, -20(%rbp)
	.loc 1 62 0
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	.loc 1 63 0
	movl	$10, %edi
	call	reserve_words@PLT
	movq	%rax, -8(%rbp)
	.loc 1 65 0
	cmpq	$0, -8(%rbp)
	jne	.L6
	.loc 1 67 0
	movl	$1, %eax
	jmp	.L7
.L6:
	.loc 1 70 0
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %eax
	movl	$10, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	my_itoa@PLT
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	.loc 1 71 0
	movl	-16(%rbp), %eax
	movzbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	my_atoi@PLT
	movl	%eax, -12(%rbp)
	.loc 1 73 0
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 74 0
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 76 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_words@PLT
	.loc 1 78 0
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L8
	.loc 1 80 0
	movl	$1, %eax
	jmp	.L7
.L8:
	.loc 1 82 0
	movl	$0, %eax
.L7:
	.loc 1 83 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	test_data2, .-test_data2
	.section	.rodata
.LC5:
	.string	"test_memmove1() - NO OVERLAP"
	.text
	.globl	test_memmove1
	.type	test_memmove1, @function
test_memmove1:
.LFB2:
	.loc 1 85 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 87 0
	movb	$0, -25(%rbp)
	.loc 1 92 0
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	.loc 1 93 0
	movl	$8, %edi
	call	reserve_words@PLT
	movq	%rax, -24(%rbp)
	.loc 1 95 0
	cmpq	$0, -24(%rbp)
	jne	.L10
	.loc 1 97 0
	movl	$1, %eax
	jmp	.L11
.L10:
	.loc 1 100 0
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 101 0
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	.loc 1 104 0
	movb	$0, -26(%rbp)
	jmp	.L12
.L13:
	.loc 1 106 0 discriminator 3
	movzbl	-26(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-26(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 104 0 discriminator 3
	movzbl	-26(%rbp), %eax
	addl	$1, %eax
	movb	%al, -26(%rbp)
.L12:
	.loc 1 104 0 is_stmt 0 discriminator 1
	cmpb	$31, -26(%rbp)
	jbe	.L13
	.loc 1 109 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 110 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	my_memmove@PLT
	.loc 1 111 0
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 113 0
	movb	$0, -26(%rbp)
	jmp	.L14
.L16:
	.loc 1 115 0
	movzbl	-26(%rbp), %eax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -26(%rbp)
	je	.L15
	.loc 1 117 0
	movb	$1, -25(%rbp)
.L15:
	.loc 1 113 0 discriminator 2
	movzbl	-26(%rbp), %eax
	addl	$1, %eax
	movb	%al, -26(%rbp)
.L14:
	.loc 1 113 0 is_stmt 0 discriminator 1
	cmpb	$15, -26(%rbp)
	jbe	.L16
	.loc 1 121 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_words@PLT
	.loc 1 122 0
	movzbl	-25(%rbp), %eax
.L11:
	.loc 1 123 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	test_memmove1, .-test_memmove1
	.section	.rodata
	.align 8
.LC6:
	.string	"test_memmove2() -OVERLAP END OF SRC BEGINNING OF DST"
	.text
	.globl	test_memmove2
	.type	test_memmove2, @function
test_memmove2:
.LFB3:
	.loc 1 125 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 127 0
	movb	$0, -25(%rbp)
	.loc 1 132 0
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	.loc 1 133 0
	movl	$8, %edi
	call	reserve_words@PLT
	movq	%rax, -24(%rbp)
	.loc 1 135 0
	cmpq	$0, -24(%rbp)
	jne	.L18
	.loc 1 137 0
	movl	$1, %eax
	jmp	.L19
.L18:
	.loc 1 139 0
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 140 0
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	.loc 1 143 0
	movb	$0, -26(%rbp)
	jmp	.L20
.L21:
	.loc 1 144 0 discriminator 3
	movzbl	-26(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-26(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 143 0 discriminator 3
	movzbl	-26(%rbp), %eax
	addl	$1, %eax
	movb	%al, -26(%rbp)
.L20:
	.loc 1 143 0 is_stmt 0 discriminator 1
	cmpb	$31, -26(%rbp)
	jbe	.L21
	.loc 1 147 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 148 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	my_memmove@PLT
	.loc 1 149 0
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 151 0
	movb	$0, -26(%rbp)
	jmp	.L22
.L24:
	.loc 1 153 0
	movzbl	-26(%rbp), %eax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -26(%rbp)
	je	.L23
	.loc 1 155 0
	movb	$1, -25(%rbp)
.L23:
	.loc 1 151 0 discriminator 2
	movzbl	-26(%rbp), %eax
	addl	$1, %eax
	movb	%al, -26(%rbp)
.L22:
	.loc 1 151 0 is_stmt 0 discriminator 1
	cmpb	$15, -26(%rbp)
	jbe	.L24
	.loc 1 159 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_words@PLT
	.loc 1 160 0
	movzbl	-25(%rbp), %eax
.L19:
	.loc 1 161 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	test_memmove2, .-test_memmove2
	.section	.rodata
	.align 8
.LC7:
	.string	"test_memove3() - OVERLAP END OF DEST BEGINNING OF SRC"
	.text
	.globl	test_memmove3
	.type	test_memmove3, @function
test_memmove3:
.LFB4:
	.loc 1 163 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 165 0
	movb	$0, -25(%rbp)
	.loc 1 170 0
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	.loc 1 171 0
	movl	$8, %edi
	call	reserve_words@PLT
	movq	%rax, -24(%rbp)
	.loc 1 173 0
	cmpq	$0, -24(%rbp)
	jne	.L26
	.loc 1 175 0
	movl	$1, %eax
	jmp	.L27
.L26:
	.loc 1 177 0
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	.loc 1 178 0
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 181 0
	movb	$0, -26(%rbp)
	jmp	.L28
.L29:
	.loc 1 183 0 discriminator 3
	movzbl	-26(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-26(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 181 0 discriminator 3
	movzbl	-26(%rbp), %eax
	addl	$1, %eax
	movb	%al, -26(%rbp)
.L28:
	.loc 1 181 0 is_stmt 0 discriminator 1
	cmpb	$31, -26(%rbp)
	jbe	.L29
	.loc 1 186 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 187 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	my_memmove@PLT
	.loc 1 188 0
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 190 0
	movb	$0, -26(%rbp)
	jmp	.L30
.L32:
	.loc 1 192 0
	movzbl	-26(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movzbl	-26(%rbp), %edx
	addl	$8, %edx
	cmpl	%edx, %eax
	je	.L31
	.loc 1 194 0
	movb	$1, -25(%rbp)
.L31:
	.loc 1 190 0 discriminator 2
	movzbl	-26(%rbp), %eax
	addl	$1, %eax
	movb	%al, -26(%rbp)
.L30:
	.loc 1 190 0 is_stmt 0 discriminator 1
	cmpb	$15, -26(%rbp)
	jbe	.L32
	.loc 1 199 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_words@PLT
	.loc 1 200 0
	movzbl	-25(%rbp), %eax
.L27:
	.loc 1 202 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	test_memmove3, .-test_memmove3
	.section	.rodata
.LC8:
	.string	"test_memcopy()"
	.text
	.globl	test_memcopy
	.type	test_memcopy, @function
test_memcopy:
.LFB5:
	.loc 1 204 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 206 0
	movb	$0, -25(%rbp)
	.loc 1 211 0
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	.loc 1 212 0
	movl	$8, %edi
	call	reserve_words@PLT
	movq	%rax, -24(%rbp)
	.loc 1 214 0
	cmpq	$0, -24(%rbp)
	jne	.L34
	.loc 1 216 0
	movl	$1, %eax
	jmp	.L35
.L34:
	.loc 1 218 0
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 219 0
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	.loc 1 222 0
	movb	$0, -26(%rbp)
	jmp	.L36
.L37:
	.loc 1 223 0 discriminator 3
	movzbl	-26(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-26(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 222 0 discriminator 3
	movzbl	-26(%rbp), %eax
	addl	$1, %eax
	movb	%al, -26(%rbp)
.L36:
	.loc 1 222 0 is_stmt 0 discriminator 1
	cmpb	$31, -26(%rbp)
	jbe	.L37
	.loc 1 226 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 227 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	my_memcopy@PLT
	.loc 1 228 0
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 230 0
	movb	$0, -26(%rbp)
	jmp	.L38
.L40:
	.loc 1 232 0
	movzbl	-26(%rbp), %eax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -26(%rbp)
	je	.L39
	.loc 1 234 0
	movb	$1, -25(%rbp)
.L39:
	.loc 1 230 0 discriminator 2
	movzbl	-26(%rbp), %eax
	addl	$1, %eax
	movb	%al, -26(%rbp)
.L38:
	.loc 1 230 0 is_stmt 0 discriminator 1
	cmpb	$15, -26(%rbp)
	jbe	.L40
	.loc 1 238 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_words@PLT
	.loc 1 239 0
	movzbl	-25(%rbp), %eax
.L35:
	.loc 1 240 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	test_memcopy, .-test_memcopy
	.section	.rodata
.LC9:
	.string	"test_memset()"
	.text
	.globl	test_memset
	.type	test_memset, @function
test_memset:
.LFB6:
	.loc 1 243 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 245 0
	movb	$0, -25(%rbp)
	.loc 1 250 0
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	.loc 1 251 0
	movl	$8, %edi
	call	reserve_words@PLT
	movq	%rax, -24(%rbp)
	.loc 1 252 0
	cmpq	$0, -24(%rbp)
	jne	.L42
	.loc 1 254 0
	movl	$1, %eax
	jmp	.L43
.L42:
	.loc 1 256 0
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 257 0
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	.loc 1 260 0
	movb	$0, -26(%rbp)
	jmp	.L44
.L45:
	.loc 1 262 0 discriminator 3
	movzbl	-26(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-26(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 260 0 discriminator 3
	movzbl	-26(%rbp), %eax
	addl	$1, %eax
	movb	%al, -26(%rbp)
.L44:
	.loc 1 260 0 is_stmt 0 discriminator 1
	cmpb	$31, -26(%rbp)
	jbe	.L45
	.loc 1 265 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 266 0
	movq	-16(%rbp), %rax
	movl	$255, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	my_memset@PLT
	.loc 1 267 0
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 268 0
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	my_memzero@PLT
	.loc 1 269 0
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 272 0
	movb	$0, -26(%rbp)
	jmp	.L46
.L49:
	.loc 1 274 0
	movzbl	-26(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$-1, %al
	je	.L47
	.loc 1 276 0
	movb	$1, -25(%rbp)
.L47:
	.loc 1 278 0
	movzbl	-26(%rbp), %eax
	addl	$16, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L48
	.loc 1 280 0
	movb	$1, -25(%rbp)
.L48:
	.loc 1 272 0 discriminator 2
	movzbl	-26(%rbp), %eax
	addl	$1, %eax
	movb	%al, -26(%rbp)
.L46:
	.loc 1 272 0 is_stmt 0 discriminator 1
	cmpb	$15, -26(%rbp)
	jbe	.L49
	.loc 1 284 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_words@PLT
	.loc 1 285 0
	movzbl	-25(%rbp), %eax
.L43:
	.loc 1 286 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	test_memset, .-test_memset
	.section	.rodata
.LC10:
	.string	"test_reverse()"
	.text
	.globl	test_reverse
	.type	test_reverse, @function
test_reverse:
.LFB7:
	.loc 1 289 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.loc 1 289 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 291 0
	movb	$0, -57(%rbp)
	.loc 1 293 0
	movb	$63, -48(%rbp)
	movb	$115, -47(%rbp)
	movb	$114, -46(%rbp)
	movb	$51, -45(%rbp)
	movb	$84, -44(%rbp)
	movb	$67, -43(%rbp)
	movb	$114, -42(%rbp)
	movb	$38, -41(%rbp)
	movb	$72, -40(%rbp)
	movb	$99, -39(%rbp)
	movb	$32, -38(%rbp)
	movb	$102, -37(%rbp)
	movb	$111, -36(%rbp)
	movb	$0, -35(%rbp)
	movb	$32, -34(%rbp)
	movb	$51, -33(%rbp)
	movb	$114, -32(%rbp)
	movb	$117, -31(%rbp)
	movb	$116, -30(%rbp)
	movb	$120, -29(%rbp)
	movb	$33, -28(%rbp)
	movb	$77, -27(%rbp)
	movb	$32, -26(%rbp)
	movb	$64, -25(%rbp)
	movb	$32, -24(%rbp)
	movb	$36, -23(%rbp)
	movb	$124, -22(%rbp)
	movb	$32, -21(%rbp)
	movb	$36, -20(%rbp)
	movb	$105, -19(%rbp)
	movb	$104, -18(%rbp)
	movb	$84, -17(%rbp)
	.loc 1 299 0
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	.loc 1 300 0
	movl	$8, %edi
	call	reserve_words@PLT
	movq	%rax, -56(%rbp)
	.loc 1 301 0
	cmpq	$0, -56(%rbp)
	jne	.L51
	.loc 1 303 0
	movl	$1, %eax
	jmp	.L56
.L51:
	.loc 1 306 0
	movq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	my_memcopy@PLT
	.loc 1 308 0
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 309 0
	leaq	-48(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	my_reverse@PLT
	.loc 1 310 0
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	print_array@PLT
	.loc 1 312 0
	movb	$0, -58(%rbp)
	jmp	.L53
.L55:
	.loc 1 314 0
	movzbl	-58(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %edx
	movzbl	-58(%rbp), %eax
	movl	$32, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L54
	.loc 1 316 0
	movb	$1, -57(%rbp)
.L54:
	.loc 1 312 0 discriminator 2
	movzbl	-58(%rbp), %eax
	addl	$1, %eax
	movb	%al, -58(%rbp)
.L53:
	.loc 1 312 0 is_stmt 0 discriminator 1
	cmpb	$31, -58(%rbp)
	jbe	.L55
	.loc 1 320 0 is_stmt 1
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free_words@PLT
	.loc 1 321 0
	movzbl	-57(%rbp), %eax
.L56:
	.loc 1 322 0 discriminator 1
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L57
	.loc 1 322 0 is_stmt 0
	call	__stack_chk_fail@PLT
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	test_reverse, .-test_reverse
	.section	.rodata
	.align 8
.LC11:
	.string	"--------------------------------"
.LC12:
	.string	"Test Results:"
.LC13:
	.string	"  PASSED: %d / %d\n"
.LC14:
	.string	"  FAILED: %d / %d\n"
	.text
	.globl	course1
	.type	course1, @function
course1:
.LFB8:
	.loc 1 325 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 325 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 327 0
	movb	$0, -17(%rbp)
	.loc 1 330 0
	movl	$0, %eax
	call	test_data1
	movb	%al, -16(%rbp)
	.loc 1 331 0
	movl	$0, %eax
	call	test_data2
	movb	%al, -15(%rbp)
	.loc 1 332 0
	movl	$0, %eax
	call	test_memmove1
	movb	%al, -14(%rbp)
	.loc 1 333 0
	movl	$0, %eax
	call	test_memmove2
	movb	%al, -13(%rbp)
	.loc 1 334 0
	movl	$0, %eax
	call	test_memmove3
	movb	%al, -12(%rbp)
	.loc 1 335 0
	movl	$0, %eax
	call	test_memcopy
	movb	%al, -11(%rbp)
	.loc 1 336 0
	movl	$0, %eax
	call	test_memset
	movb	%al, -10(%rbp)
	.loc 1 337 0
	movl	$0, %eax
	call	test_reverse
	movb	%al, -9(%rbp)
	.loc 1 339 0
	movb	$0, -18(%rbp)
	jmp	.L59
.L60:
	.loc 1 341 0 discriminator 3
	movzbl	-18(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movl	%eax, %edx
	movzbl	-17(%rbp), %eax
	addl	%edx, %eax
	movb	%al, -17(%rbp)
	.loc 1 339 0 discriminator 3
	movzbl	-18(%rbp), %eax
	addl	$1, %eax
	movb	%al, -18(%rbp)
.L59:
	.loc 1 339 0 is_stmt 0 discriminator 1
	cmpb	$7, -18(%rbp)
	jbe	.L60
	.loc 1 344 0 is_stmt 1
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	.loc 1 345 0
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	.loc 1 346 0
	movsbl	-17(%rbp), %eax
	movl	$8, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$8, %edx
	movl	%eax, %esi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 347 0
	movsbl	-17(%rbp), %eax
	movl	$8, %edx
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 348 0
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	.loc 1 349 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L61
	call	__stack_chk_fail@PLT
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	course1, .-course1
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6a3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF75
	.byte	0xc
	.long	.LASF76
	.long	.LASF77
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x24
	.long	0x54
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
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x28
	.long	0x78
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x29
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x2
	.byte	0x8c
	.long	0x8a
	.uleb128 0x3
	.long	.LASF12
	.byte	0x2
	.byte	0x8d
	.long	0x8a
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xaf
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x18
	.long	0x49
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x1a
	.long	0x6d
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x18
	.long	0x5b
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x1a
	.long	0x7f
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0xd8
	.long	0x42
	.uleb128 0x7
	.long	.LASF48
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x26d
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.byte	0xf6
	.long	0x78
	.byte	0
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.byte	0xfb
	.long	0xa9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.byte	0xfc
	.long	0xa9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.byte	0xfd
	.long	0xa9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.byte	0xfe
	.long	0xa9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.byte	0xff
	.long	0xa9
	.byte	0x28
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x100
	.long	0xa9
	.byte	0x30
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x101
	.long	0xa9
	.byte	0x38
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x102
	.long	0xa9
	.byte	0x40
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x104
	.long	0xa9
	.byte	0x48
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x105
	.long	0xa9
	.byte	0x50
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x106
	.long	0xa9
	.byte	0x58
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x108
	.long	0x2a5
	.byte	0x60
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x10a
	.long	0x2ab
	.byte	0x68
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x10c
	.long	0x78
	.byte	0x70
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x110
	.long	0x78
	.byte	0x74
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x112
	.long	0x91
	.byte	0x78
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x116
	.long	0x34
	.byte	0x80
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x117
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x118
	.long	0x2b1
	.byte	0x83
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x11c
	.long	0x2c1
	.byte	0x88
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x125
	.long	0x9c
	.byte	0x90
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.value	0x12d
	.long	0xa7
	.byte	0x98
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.value	0x12e
	.long	0xa7
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x6
	.value	0x12f
	.long	0xa7
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF44
	.byte	0x6
	.value	0x130
	.long	0xa7
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x6
	.value	0x132
	.long	0xe2
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF46
	.byte	0x6
	.value	0x133
	.long	0x78
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x6
	.value	0x135
	.long	0x2c7
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF78
	.byte	0x6
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF49
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x2a5
	.uleb128 0x8
	.long	.LASF50
	.byte	0x6
	.byte	0xa1
	.long	0x2a5
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0xa2
	.long	0x2ab
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0xa6
	.long	0x78
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x274
	.uleb128 0x6
	.byte	0x8
	.long	0xed
	.uleb128 0xb
	.long	0xaf
	.long	0x2c1
	.uleb128 0xc
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x26d
	.uleb128 0xb
	.long	0xaf
	.long	0x2d7
	.uleb128 0xc
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF79
	.uleb128 0xe
	.long	.LASF53
	.byte	0x6
	.value	0x13f
	.long	0x2d7
	.uleb128 0xe
	.long	.LASF54
	.byte	0x6
	.value	0x140
	.long	0x2d7
	.uleb128 0xe
	.long	.LASF55
	.byte	0x6
	.value	0x141
	.long	0x2d7
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x87
	.long	0x2ab
	.uleb128 0xf
	.long	.LASF57
	.byte	0x7
	.byte	0x88
	.long	0x2ab
	.uleb128 0xf
	.long	.LASF58
	.byte	0x7
	.byte	0x89
	.long	0x2ab
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF59
	.uleb128 0x10
	.long	.LASF62
	.byte	0x1
	.value	0x144
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x372
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x146
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x12
	.long	.LASF60
	.byte	0x1
	.value	0x147
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.value	0x148
	.long	0x372
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.long	0xb6
	.long	0x382
	.uleb128 0xc
	.long	0x42
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.value	0x120
	.long	0xb6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e2
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x122
	.long	0xcc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.value	0x123
	.long	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x12
	.long	.LASF64
	.byte	0x1
	.value	0x124
	.long	0x3e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.string	"set"
	.byte	0x1
	.value	0x125
	.long	0x3e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcc
	.uleb128 0xb
	.long	0xcc
	.long	0x3f8
	.uleb128 0xc
	.long	0x42
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0xf2
	.long	0xb6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x45e
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xf4
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xf5
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x15
	.string	"set"
	.byte	0x1
	.byte	0xf6
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0xf7
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.byte	0xf8
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF68
	.byte	0x1
	.byte	0xcc
	.long	0xb6
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c4
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xcd
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xce
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x15
	.string	"set"
	.byte	0x1
	.byte	0xcf
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0xd0
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.byte	0xd1
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF69
	.byte	0x1
	.byte	0xa3
	.long	0xb6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x52a
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xa4
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xa5
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x15
	.string	"set"
	.byte	0x1
	.byte	0xa6
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0xa7
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.byte	0xa8
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF70
	.byte	0x1
	.byte	0x7d
	.long	0xb6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x590
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x7f
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x15
	.string	"set"
	.byte	0x1
	.byte	0x80
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0x81
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.byte	0x82
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF71
	.byte	0x1
	.byte	0x55
	.long	0xb6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f6
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x56
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x57
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x15
	.string	"set"
	.byte	0x1
	.byte	0x58
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0x59
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.byte	0x5a
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF72
	.byte	0x1
	.byte	0x38
	.long	0xb6
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x650
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x39
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"num"
	.byte	0x1
	.byte	0x3a
	.long	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF73
	.byte	0x1
	.byte	0x3b
	.long	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF74
	.byte	0x1
	.byte	0x3c
	.long	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.long	.LASF80
	.byte	0x1
	.byte	0x1b
	.long	0xb6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x1c
	.long	0x3e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"num"
	.byte	0x1
	.byte	0x1d
	.long	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF73
	.byte	0x1
	.byte	0x1e
	.long	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF74
	.byte	0x1
	.byte	0x1f
	.long	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0x5
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x5
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
.LASF75:
	.string	"GNU C99 7.5.0 -mtune=generic -march=x86-64 -g -O0 -std=c99 -fstack-protector-strong"
.LASF11:
	.string	"__off_t"
.LASF20:
	.string	"_IO_read_ptr"
.LASF32:
	.string	"_chain"
.LASF18:
	.string	"size_t"
.LASF38:
	.string	"_shortbuf"
.LASF68:
	.string	"test_memcopy"
.LASF6:
	.string	"__uint8_t"
.LASF55:
	.string	"_IO_2_1_stderr_"
.LASF26:
	.string	"_IO_buf_base"
.LASF5:
	.string	"__int8_t"
.LASF59:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF33:
	.string	"_fileno"
.LASF21:
	.string	"_IO_read_end"
.LASF10:
	.string	"long int"
.LASF19:
	.string	"_flags"
.LASF27:
	.string	"_IO_buf_end"
.LASF36:
	.string	"_cur_column"
.LASF35:
	.string	"_old_offset"
.LASF40:
	.string	"_offset"
.LASF9:
	.string	"__uint32_t"
.LASF41:
	.string	"__pad1"
.LASF74:
	.string	"value"
.LASF49:
	.string	"_IO_marker"
.LASF56:
	.string	"stdin"
.LASF62:
	.string	"course1"
.LASF2:
	.string	"unsigned int"
.LASF3:
	.string	"long unsigned int"
.LASF79:
	.string	"_IO_FILE_plus"
.LASF24:
	.string	"_IO_write_ptr"
.LASF66:
	.string	"ptra"
.LASF67:
	.string	"ptrb"
.LASF51:
	.string	"_sbuf"
.LASF1:
	.string	"short unsigned int"
.LASF28:
	.string	"_IO_save_base"
.LASF77:
	.string	"/home/grigor/Coursera_Embedded/assignments/course1"
.LASF39:
	.string	"_lock"
.LASF34:
	.string	"_flags2"
.LASF46:
	.string	"_mode"
.LASF57:
	.string	"stdout"
.LASF53:
	.string	"_IO_2_1_stdin_"
.LASF64:
	.string	"copy"
.LASF71:
	.string	"test_memmove1"
.LASF70:
	.string	"test_memmove2"
.LASF69:
	.string	"test_memmove3"
.LASF25:
	.string	"_IO_write_end"
.LASF78:
	.string	"_IO_lock_t"
.LASF48:
	.string	"_IO_FILE"
.LASF60:
	.string	"failed"
.LASF65:
	.string	"test_memset"
.LASF52:
	.string	"_pos"
.LASF31:
	.string	"_markers"
.LASF15:
	.string	"int32_t"
.LASF0:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF37:
	.string	"_vtable_offset"
.LASF54:
	.string	"_IO_2_1_stdout_"
.LASF17:
	.string	"uint32_t"
.LASF13:
	.string	"char"
.LASF8:
	.string	"__int32_t"
.LASF50:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF22:
	.string	"_IO_read_base"
.LASF73:
	.string	"digits"
.LASF30:
	.string	"_IO_save_end"
.LASF14:
	.string	"int8_t"
.LASF42:
	.string	"__pad2"
.LASF43:
	.string	"__pad3"
.LASF44:
	.string	"__pad4"
.LASF45:
	.string	"__pad5"
.LASF47:
	.string	"_unused2"
.LASF58:
	.string	"stderr"
.LASF63:
	.string	"test_reverse"
.LASF16:
	.string	"uint8_t"
.LASF29:
	.string	"_IO_backup_base"
.LASF76:
	.string	"src/course1.c"
.LASF61:
	.string	"results"
.LASF80:
	.string	"test_data1"
.LASF72:
	.string	"test_data2"
.LASF23:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
