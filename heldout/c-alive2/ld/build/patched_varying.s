	.file	"benchmark_branchfree.cpp"
	.text
	.globl	_Z5usagev                       # -- Begin function _Z5usagev
	.p2align	4
	.type	_Z5usagev,@function
_Z5usagev:                              # @_Z5usagev
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str(%rip), %rsi
	movl	$406, %edx                      # imm = 0x196
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_5
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB0_3
# %bb.2:
	movzbl	67(%rbx), %eax
	jmp	.LBB0_4
.LBB0_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB0_4:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT               # TAILCALL
.LBB0_5:
	.cfi_def_cfa_offset 16
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end0:
	.size	_Z5usagev, .Lfunc_end0-_Z5usagev
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	xorl	%ebx, %ebx
	cmpl	$2, %edi
	jl	.LBB1_38
# %bb.1:
	leaq	40(%rsp), %rbp
	movl	%edi, %eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	movl	$1, %r13d
	leaq	24(%rsp), %r15
	xorl	%ebx, %ebx
	.p2align	4
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%r13,8), %r12
	movq	%rbp, 24(%rsp)
	testq	%r12, %r12
	je	.LBB1_56
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movq	%r12, %rdi
	callq	strlen@PLT
	movq	%rax, %r14
	movq	%rax, 8(%rsp)
	movq	%rbp, %rax
	cmpq	$16, %r14
	jb	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	leaq	8(%rsp), %rsi
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, 24(%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 40(%rsp)
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	testq	%r14, %r14
	je	.LBB1_10
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	cmpq	$1, %r14
	jne	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	movzbl	(%r12), %ecx
	movb	%cl, (%rax)
	jmp	.LBB1_10
	.p2align	4
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=1
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	movq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rcx
	movb	$0, (%rcx,%rax)
	movq	%r15, %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB1_11
# %bb.15:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB1_16
# %bb.17:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB1_18
# %bb.19:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str.9(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB1_20
# %bb.21:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB1_22
# %bb.23:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB1_24
# %bb.25:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB1_26
# %bb.27:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB1_28
# %bb.29:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB1_31
# %bb.32:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp0:
	callq	_Z5usagev
.Ltmp1:
# %bb.33:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$1, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	xorl	%r14d, %r14d
	movq	24(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.LBB1_35
	jmp	.LBB1_36
	.p2align	4
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$1, %ebx
	movb	$1, %r14b
	movq	24(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.LBB1_35
	jmp	.LBB1_36
	.p2align	4
.LBB1_16:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$8, %ebx
	movb	$1, %r14b
	movq	24(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.LBB1_35
	jmp	.LBB1_36
.LBB1_18:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$2, %ebx
	movb	$1, %r14b
	movq	24(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.LBB1_35
	jmp	.LBB1_36
.LBB1_20:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$16, %ebx
	movb	$1, %r14b
	movq	24(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.LBB1_35
	jmp	.LBB1_36
.LBB1_22:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$4, %ebx
	movb	$1, %r14b
	movq	24(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.LBB1_35
	jmp	.LBB1_36
.LBB1_24:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$32, %ebx
	movb	$1, %r14b
	movq	24(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.LBB1_35
	jmp	.LBB1_36
.LBB1_26:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$128, %ebx
	movb	$1, %r14b
	movq	24(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.LBB1_35
	jmp	.LBB1_36
.LBB1_31:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$64, %ebx
	movb	$1, %r14b
	movq	24(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB1_36
	.p2align	4
.LBB1_35:                               #   in Loop: Header=BB1_3 Depth=1
	movq	40(%rsp), %rsi
	incq	%rsi
	callq	_ZdlPvm@PLT
.LBB1_36:                               #   in Loop: Header=BB1_3 Depth=1
	testb	%r14b, %r14b
	je	.LBB1_37
# %bb.2:                                #   in Loop: Header=BB1_3 Depth=1
	incq	%r13
	cmpq	%r13, 56(%rsp)                  # 8-byte Folded Reload
	jne	.LBB1_3
	jmp	.LBB1_38
.LBB1_28:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$256, %ebx                      # imm = 0x100
	movb	$1, %r14b
	movq	24(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.LBB1_35
	jmp	.LBB1_36
.LBB1_38:
	movl	%ebx, %eax
	orl	$63, %eax
	testb	$63, %bl
	cmovnel	%ebx, %eax
	movl	%eax, %ebx
	orl	$448, %ebx                      # imm = 0x1C0
	testl	$448, %eax                      # imm = 0x1C0
	cmovnel	%eax, %ebx
	testb	$1, %bl
	jne	.LBB1_39
# %bb.40:
	testb	$8, %bl
	jne	.LBB1_41
.LBB1_42:
	testb	$2, %bl
	jne	.LBB1_43
.LBB1_44:
	testb	$16, %bl
	jne	.LBB1_45
.LBB1_46:
	testb	$4, %bl
	jne	.LBB1_47
.LBB1_48:
	testb	$32, %bl
	je	.LBB1_50
.LBB1_49:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkIlEvjmm
.LBB1_50:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.5(%rip), %rsi
	movl	$30, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_57
# %bb.51:
	cmpb	$0, 56(%rbx)
	je	.LBB1_53
# %bb.52:
	movzbl	67(%rbx), %eax
	jmp	.LBB1_54
.LBB1_39:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkItEvjmm
	testb	$8, %bl
	je	.LBB1_42
.LBB1_41:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkIsEvjmm
	testb	$2, %bl
	je	.LBB1_44
.LBB1_43:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkIjEvjmm
	testb	$16, %bl
	je	.LBB1_46
.LBB1_45:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkIiEvjmm
	testb	$4, %bl
	je	.LBB1_48
.LBB1_47:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkImEvjmm
	testb	$32, %bl
	jne	.LBB1_49
	jmp	.LBB1_50
.LBB1_53:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB1_54:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	xorl	%eax, %eax
	jmp	.LBB1_55
.LBB1_37:
	movq	16(%rsp), %rax                  # 8-byte Reload
.LBB1_55:
                                        # kill: def $eax killed $eax killed $rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_56:
	.cfi_def_cfa_offset 128
	leaq	.L.str.12(%rip), %rdi
	callq	_ZSt19__throw_logic_errorPKc@PLT
.LBB1_57:
	callq	_ZSt16__throw_bad_castv@PLT
.LBB1_12:
.Ltmp2:
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB1_14
# %bb.13:
	movq	40(%rsp), %rsi
	incq	%rsi
	callq	_ZdlPvm@PLT
.LBB1_14:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z9benchmarkItEvjmm,"axG",@progbits,_Z9benchmarkItEvjmm,comdat
	.weak	_Z9benchmarkItEvjmm             # -- Begin function _Z9benchmarkItEvjmm
	.p2align	4
	.type	_Z9benchmarkItEvjmm,@function
_Z9benchmarkItEvjmm:                    # @_Z9benchmarkItEvjmm
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %ebp
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.13(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.6(%rip), %rsi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.14(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_75
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB2_3
# %bb.2:
	movzbl	67(%rbx), %eax
	jmp	.LBB2_4
.LBB2_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB2_4:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	cmpq	$65535, %r15                    # imm = 0xFFFF
	movl	$65535, %r13d                   # imm = 0xFFFF
	cmovbq	%r15, %r13
	movq	%r15, %rax
	shrq	$32, %rax
	je	.LBB2_5
# %bb.6:
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%r13
	movq	%rax, %r12
	jmp	.LBB2_7
.LBB2_5:
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%r13d
	movl	%eax, %r12d
.LBB2_7:
	imulq	%r14, %r12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	testb	$64, %bpl
	jne	.LBB2_17
# %bb.8:
	xorl	%r14d, %r14d
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	jmp	.LBB2_9
.LBB2_17:
	movzwl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIttESt6vectorIT_SaIS1_EET0_
.Ltmp3:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp4:
# %bb.18:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp6:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp7:
# %bb.19:
.Ltmp8:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp9:
# %bb.20:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_9
# %bb.21:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB2_9:
	testl	$256, %ebp                      # imm = 0x100
	jne	.LBB2_27
# %bb.10:
	xorl	%r15d, %r15d
	jmp	.LBB2_11
.LBB2_27:
	movzwl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_
.Ltmp11:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp12:
# %bb.28:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp14:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp15:
# %bb.29:
.Ltmp16:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp17:
# %bb.30:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_11
# %bb.31:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB2_11:
	testb	%bpl, %bpl
	js	.LBB2_34
# %bb.12:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB2_13
.LBB2_34:
	movzwl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_
.Ltmp19:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp20:
# %bb.35:
	movq	%rax, %r12
	movb	$46, 7(%rsp)
.Ltmp22:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp23:
# %bb.36:
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_37
# %bb.39:
	cmpb	$0, 56(%rbx)
	je	.LBB2_41
# %bb.40:
	movzbl	67(%rbx), %eax
	jmp	.LBB2_43
.LBB2_41:
.Ltmp24:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp25:
# %bb.42:
	movq	(%rbx), %rax
.Ltmp26:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp27:
.LBB2_43:
.Ltmp28:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp29:
# %bb.44:
.Ltmp30:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp31:
# %bb.45:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_13
# %bb.46:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB2_13:
	movl	%ebp, %eax
	notl	%eax
	testl	$320, %eax                      # imm = 0x140
	jne	.LBB2_49
# %bb.14:
	cmpq	%r14, %r15
	jne	.LBB2_15
.LBB2_49:
	testb	$-64, %al
	jne	.LBB2_52
# %bb.50:
	cmpq	%r14, %r12
	jne	.LBB2_51
.LBB2_52:
	testb	$64, %bpl
	je	.LBB2_58
# %bb.53:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.19(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_75
# %bb.54:
	cmpb	$0, 56(%rbx)
	je	.LBB2_56
# %bb.55:
	movzbl	67(%rbx), %eax
	jmp	.LBB2_57
.LBB2_56:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB2_57:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB2_58:
	testl	$256, %ebp                      # imm = 0x100
	je	.LBB2_64
# %bb.59:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.21(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_75
# %bb.60:
	cmpb	$0, 56(%rbx)
	je	.LBB2_62
# %bb.61:
	movzbl	67(%rbx), %eax
	jmp	.LBB2_63
.LBB2_62:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB2_63:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB2_64:
	testb	%bpl, %bpl
	jns	.LBB2_70
# %bb.65:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.22(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_75
# %bb.66:
	cmpb	$0, 56(%rbx)
	je	.LBB2_68
# %bb.67:
	movzbl	67(%rbx), %eax
	jmp	.LBB2_69
.LBB2_68:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB2_69:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB2_70:
	movq	_ZSt4cout@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_75
# %bb.71:
	cmpb	$0, 56(%rbx)
	je	.LBB2_73
# %bb.72:
	movzbl	67(%rbx), %eax
	jmp	.LBB2_74
.LBB2_73:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB2_74:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_75:
	.cfi_def_cfa_offset 112
	callq	_ZSt16__throw_bad_castv@PLT
.LBB2_15:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	jmp	.LBB2_16
.LBB2_51:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
.LBB2_16:
	callq	_ZNSolsEm@PLT
	leaq	.L.str.17(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_ZNSolsEm@PLT
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB2_37:
.Ltmp32:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp33:
# %bb.38:
.LBB2_47:
.Ltmp21:
	jmp	.LBB2_24
.LBB2_32:
.Ltmp13:
	jmp	.LBB2_24
.LBB2_22:
.Ltmp5:
	jmp	.LBB2_24
.LBB2_33:
.Ltmp18:
	jmp	.LBB2_24
.LBB2_23:
.Ltmp10:
	jmp	.LBB2_24
.LBB2_48:
.Ltmp34:
.LBB2_24:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_26
# %bb.25:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB2_26:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end2:
	.size	_Z9benchmarkItEvjmm, .Lfunc_end2-_Z9benchmarkItEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkItEvjmm,"aG",@progbits,_Z9benchmarkItEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin1          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 4 <<
	.uleb128 .Ltmp11-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp17-.Ltmp14                #   Call between .Ltmp14 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp17                #   Call between .Ltmp17 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp31-.Ltmp22                #   Call between .Ltmp22 and .Ltmp31
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Lfunc_end2-.Ltmp33            #   Call between .Ltmp33 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z9benchmarkIsEvjmm,"axG",@progbits,_Z9benchmarkIsEvjmm,comdat
	.weak	_Z9benchmarkIsEvjmm             # -- Begin function _Z9benchmarkIsEvjmm
	.p2align	4
	.type	_Z9benchmarkIsEvjmm,@function
_Z9benchmarkIsEvjmm:                    # @_Z9benchmarkIsEvjmm
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %ebp
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.13(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.7(%rip), %rsi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.14(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_75
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB3_3
# %bb.2:
	movzbl	67(%rbx), %eax
	jmp	.LBB3_4
.LBB3_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB3_4:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	cmpq	$32767, %r15                    # imm = 0x7FFF
	movl	$32767, %r13d                   # imm = 0x7FFF
	cmovbq	%r15, %r13
	movq	%r15, %rax
	shrq	$32, %rax
	je	.LBB3_5
# %bb.6:
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%r13
	movq	%rax, %r12
	jmp	.LBB3_7
.LBB3_5:
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%r13d
	movl	%eax, %r12d
.LBB3_7:
	imulq	%r14, %r12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	testb	$64, %bpl
	jne	.LBB3_17
# %bb.8:
	xorl	%r14d, %r14d
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	jmp	.LBB3_9
.LBB3_17:
	movswl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIssESt6vectorIT_SaIS1_EET0_
.Ltmp35:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp36:
# %bb.18:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp38:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp39:
# %bb.19:
.Ltmp40:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp41:
# %bb.20:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_9
# %bb.21:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB3_9:
	testl	$256, %ebp                      # imm = 0x100
	jne	.LBB3_27
# %bb.10:
	xorl	%r15d, %r15d
	jmp	.LBB3_11
.LBB3_27:
	movswl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_
.Ltmp43:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp44:
# %bb.28:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp46:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp47:
# %bb.29:
.Ltmp48:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp49:
# %bb.30:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_11
# %bb.31:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB3_11:
	testb	%bpl, %bpl
	js	.LBB3_34
# %bb.12:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB3_13
.LBB3_34:
	movswl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_
.Ltmp51:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp52:
# %bb.35:
	movq	%rax, %r12
	movb	$46, 7(%rsp)
.Ltmp54:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp55:
# %bb.36:
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_37
# %bb.39:
	cmpb	$0, 56(%rbx)
	je	.LBB3_41
# %bb.40:
	movzbl	67(%rbx), %eax
	jmp	.LBB3_43
.LBB3_41:
.Ltmp56:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp57:
# %bb.42:
	movq	(%rbx), %rax
.Ltmp58:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp59:
.LBB3_43:
.Ltmp60:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp61:
# %bb.44:
.Ltmp62:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp63:
# %bb.45:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_13
# %bb.46:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB3_13:
	movl	%ebp, %eax
	notl	%eax
	testl	$320, %eax                      # imm = 0x140
	jne	.LBB3_49
# %bb.14:
	cmpq	%r14, %r15
	jne	.LBB3_15
.LBB3_49:
	testb	$-64, %al
	jne	.LBB3_52
# %bb.50:
	cmpq	%r14, %r12
	jne	.LBB3_51
.LBB3_52:
	testb	$64, %bpl
	je	.LBB3_58
# %bb.53:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.19(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_75
# %bb.54:
	cmpb	$0, 56(%rbx)
	je	.LBB3_56
# %bb.55:
	movzbl	67(%rbx), %eax
	jmp	.LBB3_57
.LBB3_56:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB3_57:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB3_58:
	testl	$256, %ebp                      # imm = 0x100
	je	.LBB3_64
# %bb.59:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.21(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_75
# %bb.60:
	cmpb	$0, 56(%rbx)
	je	.LBB3_62
# %bb.61:
	movzbl	67(%rbx), %eax
	jmp	.LBB3_63
.LBB3_62:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB3_63:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB3_64:
	testb	%bpl, %bpl
	jns	.LBB3_70
# %bb.65:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.22(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_75
# %bb.66:
	cmpb	$0, 56(%rbx)
	je	.LBB3_68
# %bb.67:
	movzbl	67(%rbx), %eax
	jmp	.LBB3_69
.LBB3_68:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB3_69:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB3_70:
	movq	_ZSt4cout@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_75
# %bb.71:
	cmpb	$0, 56(%rbx)
	je	.LBB3_73
# %bb.72:
	movzbl	67(%rbx), %eax
	jmp	.LBB3_74
.LBB3_73:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB3_74:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB3_75:
	.cfi_def_cfa_offset 112
	callq	_ZSt16__throw_bad_castv@PLT
.LBB3_15:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	jmp	.LBB3_16
.LBB3_51:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
.LBB3_16:
	callq	_ZNSolsEm@PLT
	leaq	.L.str.17(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_ZNSolsEm@PLT
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB3_37:
.Ltmp64:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp65:
# %bb.38:
.LBB3_47:
.Ltmp53:
	jmp	.LBB3_24
.LBB3_32:
.Ltmp45:
	jmp	.LBB3_24
.LBB3_22:
.Ltmp37:
	jmp	.LBB3_24
.LBB3_33:
.Ltmp50:
	jmp	.LBB3_24
.LBB3_23:
.Ltmp42:
	jmp	.LBB3_24
.LBB3_48:
.Ltmp66:
.LBB3_24:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_26
# %bb.25:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB3_26:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	_Z9benchmarkIsEvjmm, .Lfunc_end3-_Z9benchmarkIsEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkIsEvjmm,"aG",@progbits,_Z9benchmarkIsEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp35-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin2          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp41-.Ltmp38                #   Call between .Ltmp38 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin2          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp49-.Ltmp46                #   Call between .Ltmp46 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin2          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp51-.Ltmp49                #   Call between .Ltmp49 and .Ltmp51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin2          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp63-.Ltmp54                #   Call between .Ltmp54 and .Ltmp63
	.uleb128 .Ltmp66-.Lfunc_begin2          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin2          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Lfunc_end3-.Ltmp65            #   Call between .Ltmp65 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z9benchmarkIjEvjmm,"axG",@progbits,_Z9benchmarkIjEvjmm,comdat
	.weak	_Z9benchmarkIjEvjmm             # -- Begin function _Z9benchmarkIjEvjmm
	.p2align	4
	.type	_Z9benchmarkIjEvjmm,@function
_Z9benchmarkIjEvjmm:                    # @_Z9benchmarkIjEvjmm
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %ebp
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.13(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.8(%rip), %rsi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.14(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_75
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB4_3
# %bb.2:
	movzbl	67(%rbx), %eax
	jmp	.LBB4_4
.LBB4_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_4:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movl	$4294967295, %r12d              # imm = 0xFFFFFFFF
	cmpq	%r12, %r15
	cmovbq	%r15, %r12
	movq	%r15, %rax
	shrq	$32, %rax
	je	.LBB4_5
# %bb.6:
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%r12
	movq	%rax, %r13
	jmp	.LBB4_7
.LBB4_5:
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%r12d
	movl	%eax, %r13d
.LBB4_7:
	imulq	%r14, %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	testb	$64, %bpl
	jne	.LBB4_17
# %bb.8:
	xorl	%r14d, %r14d
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	jmp	.LBB4_9
.LBB4_17:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_
.Ltmp67:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp68:
# %bb.18:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp70:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp71:
# %bb.19:
.Ltmp72:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp73:
# %bb.20:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_9
# %bb.21:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB4_9:
	testl	$256, %ebp                      # imm = 0x100
	jne	.LBB4_27
# %bb.10:
	xorl	%r15d, %r15d
	jmp	.LBB4_11
.LBB4_27:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_
.Ltmp75:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp76:
# %bb.28:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp78:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp79:
# %bb.29:
.Ltmp80:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp81:
# %bb.30:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_11
# %bb.31:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB4_11:
	testb	%bpl, %bpl
	js	.LBB4_34
# %bb.12:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB4_13
.LBB4_34:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_
.Ltmp83:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp84:
# %bb.35:
	movq	%rax, %r12
	movb	$46, 7(%rsp)
.Ltmp86:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp87:
# %bb.36:
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_37
# %bb.39:
	cmpb	$0, 56(%rbx)
	je	.LBB4_41
# %bb.40:
	movzbl	67(%rbx), %eax
	jmp	.LBB4_43
.LBB4_41:
.Ltmp88:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp89:
# %bb.42:
	movq	(%rbx), %rax
.Ltmp90:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp91:
.LBB4_43:
.Ltmp92:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp93:
# %bb.44:
.Ltmp94:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp95:
# %bb.45:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_13
# %bb.46:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB4_13:
	movl	%ebp, %eax
	notl	%eax
	testl	$320, %eax                      # imm = 0x140
	jne	.LBB4_49
# %bb.14:
	cmpq	%r14, %r15
	jne	.LBB4_15
.LBB4_49:
	testb	$-64, %al
	jne	.LBB4_52
# %bb.50:
	cmpq	%r14, %r12
	jne	.LBB4_51
.LBB4_52:
	testb	$64, %bpl
	je	.LBB4_58
# %bb.53:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.19(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_75
# %bb.54:
	cmpb	$0, 56(%rbx)
	je	.LBB4_56
# %bb.55:
	movzbl	67(%rbx), %eax
	jmp	.LBB4_57
.LBB4_56:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_57:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB4_58:
	testl	$256, %ebp                      # imm = 0x100
	je	.LBB4_64
# %bb.59:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.21(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_75
# %bb.60:
	cmpb	$0, 56(%rbx)
	je	.LBB4_62
# %bb.61:
	movzbl	67(%rbx), %eax
	jmp	.LBB4_63
.LBB4_62:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_63:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB4_64:
	testb	%bpl, %bpl
	jns	.LBB4_70
# %bb.65:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.22(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_75
# %bb.66:
	cmpb	$0, 56(%rbx)
	je	.LBB4_68
# %bb.67:
	movzbl	67(%rbx), %eax
	jmp	.LBB4_69
.LBB4_68:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_69:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB4_70:
	movq	_ZSt4cout@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_75
# %bb.71:
	cmpb	$0, 56(%rbx)
	je	.LBB4_73
# %bb.72:
	movzbl	67(%rbx), %eax
	jmp	.LBB4_74
.LBB4_73:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_74:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_75:
	.cfi_def_cfa_offset 112
	callq	_ZSt16__throw_bad_castv@PLT
.LBB4_15:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.8(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	jmp	.LBB4_16
.LBB4_51:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.8(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
.LBB4_16:
	callq	_ZNSolsEm@PLT
	leaq	.L.str.17(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_ZNSolsEm@PLT
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB4_37:
.Ltmp96:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp97:
# %bb.38:
.LBB4_47:
.Ltmp85:
	jmp	.LBB4_24
.LBB4_32:
.Ltmp77:
	jmp	.LBB4_24
.LBB4_22:
.Ltmp69:
	jmp	.LBB4_24
.LBB4_33:
.Ltmp82:
	jmp	.LBB4_24
.LBB4_23:
.Ltmp74:
	jmp	.LBB4_24
.LBB4_48:
.Ltmp98:
.LBB4_24:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_26
# %bb.25:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB4_26:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	_Z9benchmarkIjEvjmm, .Lfunc_end4-_Z9benchmarkIjEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkIjEvjmm,"aG",@progbits,_Z9benchmarkIjEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp67-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp67
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin3          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp73-.Ltmp70                #   Call between .Ltmp70 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin3          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp75-.Ltmp73                #   Call between .Ltmp73 and .Ltmp75
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin3          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp81-.Ltmp78                #   Call between .Ltmp78 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin3          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp83-.Ltmp81                #   Call between .Ltmp81 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin3          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp95-.Ltmp86                #   Call between .Ltmp86 and .Ltmp95
	.uleb128 .Ltmp98-.Lfunc_begin3          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin3          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Lfunc_end4-.Ltmp97            #   Call between .Ltmp97 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z9benchmarkIiEvjmm,"axG",@progbits,_Z9benchmarkIiEvjmm,comdat
	.weak	_Z9benchmarkIiEvjmm             # -- Begin function _Z9benchmarkIiEvjmm
	.p2align	4
	.type	_Z9benchmarkIiEvjmm,@function
_Z9benchmarkIiEvjmm:                    # @_Z9benchmarkIiEvjmm
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %ebp
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.13(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.9(%rip), %rsi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.14(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_75
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB5_3
# %bb.2:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_4
.LBB5_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB5_4:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	cmpq	$2147483647, %r15               # imm = 0x7FFFFFFF
	movl	$2147483647, %r12d              # imm = 0x7FFFFFFF
	cmovbq	%r15, %r12
	movq	%r15, %rax
	shrq	$32, %rax
	je	.LBB5_5
# %bb.6:
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%r12
	movq	%rax, %r13
	jmp	.LBB5_7
.LBB5_5:
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%r12d
	movl	%eax, %r13d
.LBB5_7:
	imulq	%r14, %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	testb	$64, %bpl
	jne	.LBB5_17
# %bb.8:
	xorl	%r14d, %r14d
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	jmp	.LBB5_9
.LBB5_17:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_
.Ltmp99:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp100:
# %bb.18:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp102:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp103:
# %bb.19:
.Ltmp104:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp105:
# %bb.20:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_9
# %bb.21:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB5_9:
	testl	$256, %ebp                      # imm = 0x100
	jne	.LBB5_27
# %bb.10:
	xorl	%r15d, %r15d
	jmp	.LBB5_11
.LBB5_27:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_
.Ltmp107:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp108:
# %bb.28:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp110:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp111:
# %bb.29:
.Ltmp112:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp113:
# %bb.30:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_11
# %bb.31:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB5_11:
	testb	%bpl, %bpl
	js	.LBB5_34
# %bb.12:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB5_13
.LBB5_34:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_
.Ltmp115:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp116:
# %bb.35:
	movq	%rax, %r12
	movb	$46, 7(%rsp)
.Ltmp118:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp119:
# %bb.36:
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_37
# %bb.39:
	cmpb	$0, 56(%rbx)
	je	.LBB5_41
# %bb.40:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_43
.LBB5_41:
.Ltmp120:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp121:
# %bb.42:
	movq	(%rbx), %rax
.Ltmp122:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp123:
.LBB5_43:
.Ltmp124:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp125:
# %bb.44:
.Ltmp126:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp127:
# %bb.45:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_13
# %bb.46:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB5_13:
	movl	%ebp, %eax
	notl	%eax
	testl	$320, %eax                      # imm = 0x140
	jne	.LBB5_49
# %bb.14:
	cmpq	%r14, %r15
	jne	.LBB5_15
.LBB5_49:
	testb	$-64, %al
	jne	.LBB5_52
# %bb.50:
	cmpq	%r14, %r12
	jne	.LBB5_51
.LBB5_52:
	testb	$64, %bpl
	je	.LBB5_58
# %bb.53:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.19(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_75
# %bb.54:
	cmpb	$0, 56(%rbx)
	je	.LBB5_56
# %bb.55:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_57
.LBB5_56:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB5_57:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB5_58:
	testl	$256, %ebp                      # imm = 0x100
	je	.LBB5_64
# %bb.59:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.21(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_75
# %bb.60:
	cmpb	$0, 56(%rbx)
	je	.LBB5_62
# %bb.61:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_63
.LBB5_62:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB5_63:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB5_64:
	testb	%bpl, %bpl
	jns	.LBB5_70
# %bb.65:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.22(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_75
# %bb.66:
	cmpb	$0, 56(%rbx)
	je	.LBB5_68
# %bb.67:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_69
.LBB5_68:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB5_69:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB5_70:
	movq	_ZSt4cout@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_75
# %bb.71:
	cmpb	$0, 56(%rbx)
	je	.LBB5_73
# %bb.72:
	movzbl	67(%rbx), %eax
	jmp	.LBB5_74
.LBB5_73:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB5_74:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB5_75:
	.cfi_def_cfa_offset 112
	callq	_ZSt16__throw_bad_castv@PLT
.LBB5_15:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	jmp	.LBB5_16
.LBB5_51:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
.LBB5_16:
	callq	_ZNSolsEm@PLT
	leaq	.L.str.17(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_ZNSolsEm@PLT
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB5_37:
.Ltmp128:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp129:
# %bb.38:
.LBB5_47:
.Ltmp117:
	jmp	.LBB5_24
.LBB5_32:
.Ltmp109:
	jmp	.LBB5_24
.LBB5_22:
.Ltmp101:
	jmp	.LBB5_24
.LBB5_33:
.Ltmp114:
	jmp	.LBB5_24
.LBB5_23:
.Ltmp106:
	jmp	.LBB5_24
.LBB5_48:
.Ltmp130:
.LBB5_24:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_26
# %bb.25:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB5_26:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end5:
	.size	_Z9benchmarkIiEvjmm, .Lfunc_end5-_Z9benchmarkIiEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkIiEvjmm,"aG",@progbits,_Z9benchmarkIiEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp99-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp99
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin4         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp105-.Ltmp102              #   Call between .Ltmp102 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin4         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp107-.Ltmp105              #   Call between .Ltmp105 and .Ltmp107
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin4         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp113-.Ltmp110              #   Call between .Ltmp110 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin4         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp115-.Ltmp113              #   Call between .Ltmp113 and .Ltmp115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin4         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp127-.Ltmp118              #   Call between .Ltmp118 and .Ltmp127
	.uleb128 .Ltmp130-.Lfunc_begin4         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin4         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Lfunc_end5-.Ltmp129           #   Call between .Ltmp129 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z9benchmarkImEvjmm,"axG",@progbits,_Z9benchmarkImEvjmm,comdat
	.weak	_Z9benchmarkImEvjmm             # -- Begin function _Z9benchmarkImEvjmm
	.p2align	4
	.type	_Z9benchmarkImEvjmm,@function
_Z9benchmarkImEvjmm:                    # @_Z9benchmarkImEvjmm
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movl	%edi, %ebp
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.13(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.10(%rip), %rsi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.14(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_72
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB6_3
# %bb.2:
	movzbl	67(%rbx), %eax
	jmp	.LBB6_4
.LBB6_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_4:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	testb	$64, %bpl
	jne	.LBB6_14
# %bb.5:
	xorl	%r14d, %r14d
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	jmp	.LBB6_6
.LBB6_14:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesImmESt6vectorIT_SaIS1_EET0_
.Ltmp131:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp132:
# %bb.15:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp134:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp135:
# %bb.16:
.Ltmp136:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp137:
# %bb.17:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_6
# %bb.18:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB6_6:
	testl	$256, %ebp                      # imm = 0x100
	jne	.LBB6_24
# %bb.7:
	xorl	%r13d, %r13d
	jmp	.LBB6_8
.LBB6_24:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_
.Ltmp139:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp140:
# %bb.25:
	movq	%rax, %r13
	movb	$46, 7(%rsp)
.Ltmp142:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp143:
# %bb.26:
.Ltmp144:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp145:
# %bb.27:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_8
# %bb.28:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB6_8:
	testb	%bpl, %bpl
	js	.LBB6_31
# %bb.9:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB6_10
.LBB6_31:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_
.Ltmp147:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp148:
# %bb.32:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp150:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp151:
# %bb.33:
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_34
# %bb.36:
	cmpb	$0, 56(%rbx)
	je	.LBB6_38
# %bb.37:
	movzbl	67(%rbx), %eax
	jmp	.LBB6_40
.LBB6_38:
.Ltmp152:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp153:
# %bb.39:
	movq	(%rbx), %rax
.Ltmp154:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp155:
.LBB6_40:
.Ltmp156:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp157:
# %bb.41:
.Ltmp158:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp159:
# %bb.42:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_10
# %bb.43:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB6_10:
	movl	%ebp, %eax
	notl	%eax
	testl	$320, %eax                      # imm = 0x140
	jne	.LBB6_46
# %bb.11:
	cmpq	%r14, %r13
	jne	.LBB6_12
.LBB6_46:
	testb	$-64, %al
	jne	.LBB6_49
# %bb.47:
	cmpq	%r14, %r15
	jne	.LBB6_48
.LBB6_49:
	testb	$64, %bpl
	movq	_ZSt4cout@GOTPCREL(%rip), %r15
	je	.LBB6_55
# %bb.50:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.19(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_72
# %bb.51:
	cmpb	$0, 56(%rbx)
	je	.LBB6_53
# %bb.52:
	movzbl	67(%rbx), %eax
	jmp	.LBB6_54
.LBB6_53:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_54:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB6_55:
	testl	$256, %ebp                      # imm = 0x100
	je	.LBB6_61
# %bb.56:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.21(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_72
# %bb.57:
	cmpb	$0, 56(%rbx)
	je	.LBB6_59
# %bb.58:
	movzbl	67(%rbx), %eax
	jmp	.LBB6_60
.LBB6_59:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_60:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB6_61:
	testb	%bpl, %bpl
	jns	.LBB6_67
# %bb.62:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.22(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_72
# %bb.63:
	cmpb	$0, 56(%rbx)
	je	.LBB6_65
# %bb.64:
	movzbl	67(%rbx), %eax
	jmp	.LBB6_66
.LBB6_65:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_66:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB6_67:
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_72
# %bb.68:
	cmpb	$0, 56(%rbx)
	je	.LBB6_70
# %bb.69:
	movzbl	67(%rbx), %eax
	jmp	.LBB6_71
.LBB6_70:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_71:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB6_72:
	.cfi_def_cfa_offset 112
	callq	_ZSt16__throw_bad_castv@PLT
.LBB6_12:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	jmp	.LBB6_13
.LBB6_48:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
.LBB6_13:
	callq	_ZNSolsEm@PLT
	leaq	.L.str.17(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_ZNSolsEm@PLT
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB6_34:
.Ltmp160:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp161:
# %bb.35:
.LBB6_44:
.Ltmp149:
	jmp	.LBB6_21
.LBB6_29:
.Ltmp141:
	jmp	.LBB6_21
.LBB6_19:
.Ltmp133:
	jmp	.LBB6_21
.LBB6_30:
.Ltmp146:
	jmp	.LBB6_21
.LBB6_20:
.Ltmp138:
	jmp	.LBB6_21
.LBB6_45:
.Ltmp162:
.LBB6_21:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_23
# %bb.22:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB6_23:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end6:
	.size	_Z9benchmarkImEvjmm, .Lfunc_end6-_Z9benchmarkImEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkImEvjmm,"aG",@progbits,_Z9benchmarkImEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp131-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp131
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin5         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp137-.Ltmp134              #   Call between .Ltmp134 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin5         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp139-.Ltmp137              #   Call between .Ltmp137 and .Ltmp139
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin5         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp145-.Ltmp142              #   Call between .Ltmp142 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin5         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp147-.Ltmp145              #   Call between .Ltmp145 and .Ltmp147
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin5         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp159-.Ltmp150              #   Call between .Ltmp150 and .Ltmp159
	.uleb128 .Ltmp162-.Lfunc_begin5         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin5         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Lfunc_end6-.Ltmp161           #   Call between .Ltmp161 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z9benchmarkIlEvjmm,"axG",@progbits,_Z9benchmarkIlEvjmm,comdat
	.weak	_Z9benchmarkIlEvjmm             # -- Begin function _Z9benchmarkIlEvjmm
	.p2align	4
	.type	_Z9benchmarkIlEvjmm,@function
_Z9benchmarkIlEvjmm:                    # @_Z9benchmarkIlEvjmm
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %ebp
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.13(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.11(%rip), %rsi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.14(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_75
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB7_3
# %bb.2:
	movzbl	67(%rbx), %eax
	jmp	.LBB7_4
.LBB7_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_4:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movabsq	$9223372036854775807, %r12      # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%r12, %r15
	cmovbq	%r15, %r12
	movq	%r15, %rax
	orq	%r12, %rax
	shrq	$32, %rax
	je	.LBB7_5
# %bb.6:
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%r12
	movq	%rax, %r13
	jmp	.LBB7_7
.LBB7_5:
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%r12d
	movl	%eax, %r13d
.LBB7_7:
	imulq	%r14, %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	testb	$64, %bpl
	jne	.LBB7_17
# %bb.8:
	xorl	%r14d, %r14d
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	jmp	.LBB7_9
.LBB7_17:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesIllESt6vectorIT_SaIS1_EET0_
.Ltmp163:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp164:
# %bb.18:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp166:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp167:
# %bb.19:
.Ltmp168:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp169:
# %bb.20:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_9
# %bb.21:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB7_9:
	testl	$256, %ebp                      # imm = 0x100
	jne	.LBB7_27
# %bb.10:
	xorl	%r15d, %r15d
	jmp	.LBB7_11
.LBB7_27:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_
.Ltmp171:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp172:
# %bb.28:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp174:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp175:
# %bb.29:
.Ltmp176:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp177:
# %bb.30:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_11
# %bb.31:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB7_11:
	testb	%bpl, %bpl
	js	.LBB7_34
# %bb.12:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB7_13
.LBB7_34:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_
.Ltmp179:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp180:
# %bb.35:
	movq	%rax, %r12
	movb	$46, 7(%rsp)
.Ltmp182:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp183:
# %bb.36:
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_37
# %bb.39:
	cmpb	$0, 56(%rbx)
	je	.LBB7_41
# %bb.40:
	movzbl	67(%rbx), %eax
	jmp	.LBB7_43
.LBB7_41:
.Ltmp184:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp185:
# %bb.42:
	movq	(%rbx), %rax
.Ltmp186:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp187:
.LBB7_43:
.Ltmp188:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp189:
# %bb.44:
.Ltmp190:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp191:
# %bb.45:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_13
# %bb.46:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB7_13:
	movl	%ebp, %eax
	notl	%eax
	testl	$320, %eax                      # imm = 0x140
	jne	.LBB7_49
# %bb.14:
	cmpq	%r14, %r15
	jne	.LBB7_15
.LBB7_49:
	testb	$-64, %al
	jne	.LBB7_52
# %bb.50:
	cmpq	%r14, %r12
	jne	.LBB7_51
.LBB7_52:
	testb	$64, %bpl
	je	.LBB7_58
# %bb.53:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.19(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_75
# %bb.54:
	cmpb	$0, 56(%rbx)
	je	.LBB7_56
# %bb.55:
	movzbl	67(%rbx), %eax
	jmp	.LBB7_57
.LBB7_56:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_57:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB7_58:
	testl	$256, %ebp                      # imm = 0x100
	je	.LBB7_64
# %bb.59:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.21(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_75
# %bb.60:
	cmpb	$0, 56(%rbx)
	je	.LBB7_62
# %bb.61:
	movzbl	67(%rbx), %eax
	jmp	.LBB7_63
.LBB7_62:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_63:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB7_64:
	testb	%bpl, %bpl
	jns	.LBB7_70
# %bb.65:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.22(%rip), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.20(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_75
# %bb.66:
	cmpb	$0, 56(%rbx)
	je	.LBB7_68
# %bb.67:
	movzbl	67(%rbx), %eax
	jmp	.LBB7_69
.LBB7_68:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_69:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB7_70:
	movq	_ZSt4cout@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_75
# %bb.71:
	cmpb	$0, 56(%rbx)
	je	.LBB7_73
# %bb.72:
	movzbl	67(%rbx), %eax
	jmp	.LBB7_74
.LBB7_73:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_74:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB7_75:
	.cfi_def_cfa_offset 112
	callq	_ZSt16__throw_bad_castv@PLT
.LBB7_15:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	jmp	.LBB7_16
.LBB7_51:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
.LBB7_16:
	callq	_ZNSolsEm@PLT
	leaq	.L.str.17(%rip), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_ZNSolsEm@PLT
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB7_37:
.Ltmp192:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp193:
# %bb.38:
.LBB7_47:
.Ltmp181:
	jmp	.LBB7_24
.LBB7_32:
.Ltmp173:
	jmp	.LBB7_24
.LBB7_22:
.Ltmp165:
	jmp	.LBB7_24
.LBB7_33:
.Ltmp178:
	jmp	.LBB7_24
.LBB7_23:
.Ltmp170:
	jmp	.LBB7_24
.LBB7_48:
.Ltmp194:
.LBB7_24:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_26
# %bb.25:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB7_26:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end7:
	.size	_Z9benchmarkIlEvjmm, .Lfunc_end7-_Z9benchmarkIlEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkIlEvjmm,"aG",@progbits,_Z9benchmarkIlEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp163-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin6         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp169-.Ltmp166              #   Call between .Ltmp166 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin6         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp171-.Ltmp169              #   Call between .Ltmp169 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin6         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp177-.Ltmp174              #   Call between .Ltmp174 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin6         #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp179-.Ltmp177              #   Call between .Ltmp177 and .Ltmp179
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin6         #     jumps to .Ltmp181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp191-.Ltmp182              #   Call between .Ltmp182 and .Ltmp191
	.uleb128 .Ltmp194-.Lfunc_begin6         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin6         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Lfunc_end7-.Ltmp193           #   Call between .Ltmp193 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z10get_primesIttESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesIttESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesIttESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesIttESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesIttESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesIttESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesIttESt6vectorIT_SaIS1_EET0_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movl	%esi, %ebx
	leaq	1(%rbx), %r15
	movq	%r15, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movq	%r15, %rdx
	callq	memset@PLT
	cmpw	$4, %bp
	jae	.LBB8_1
.LBB8_5:
	vxorps	%xmm0, %xmm0, %xmm0
	movq	(%rsp), %rcx                    # 8-byte Reload
	vmovups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	cmpw	$2, %bp
	jae	.LBB8_7
# %bb.6:
	xorl	%ebp, %ebp
.LBB8_13:
	movq	%rbp, (%rcx)
	movq	%rcx, %rbx
	movq	%r14, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB8_1:
	.cfi_def_cfa_offset 80
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB8_2
	.p2align	4
.LBB8_4:                                #   in Loop: Header=BB8_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB8_5
.LBB8_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%rbx, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB8_4
	.p2align	4
.LBB8_3:                                #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB8_3
	jmp	.LBB8_4
.LBB8_7:
	movl	$1, %edx
	subq	%rbx, %rdx
	movl	$2, %ebx
	xorl	%r12d, %r12d
	movabsq	$4611686018427387903, %rsi      # imm = 0x3FFFFFFFFFFFFFFF
	xorl	%r13d, %r13d
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB8_8
	.p2align	4
.LBB8_10:                               #   in Loop: Header=BB8_8 Depth=1
	movw	%bx, (%r12)
	addq	$2, %r12
	movq	%r12, 8(%rcx)
.LBB8_11:                               #   in Loop: Header=BB8_8 Depth=1
	movq	%r13, %rbp
.LBB8_12:                               #   in Loop: Header=BB8_8 Depth=1
	leaq	(%rdx,%rbx), %rax
	incq	%rax
	incq	%rbx
	movq	%rbp, %r13
	cmpq	$2, %rax
	je	.LBB8_13
.LBB8_8:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r14,%rbx)
	je	.LBB8_11
# %bb.9:                                #   in Loop: Header=BB8_8 Depth=1
	cmpq	16(%rcx), %r12
	jne	.LBB8_10
# %bb.14:                               #   in Loop: Header=BB8_8 Depth=1
	subq	%r13, %r12
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %r12
	je	.LBB8_15
# %bb.17:                               #   in Loop: Header=BB8_8 Depth=1
	movq	%r12, %rax
	sarq	%rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %r15
	cmpq	%rsi, %r15
	jb	.LBB8_19
# %bb.18:                               #   in Loop: Header=BB8_8 Depth=1
	movq	%rsi, %r15
.LBB8_19:                               #   in Loop: Header=BB8_8 Depth=1
	addq	%rax, %rcx
	cmovbq	%rsi, %r15
	leaq	(%r15,%r15), %rdi
.Ltmp195:
	callq	_Znwm@PLT
.Ltmp196:
# %bb.20:                               #   in Loop: Header=BB8_8 Depth=1
	movq	%rax, %rbp
	movw	%bx, (%rax,%r12)
	testq	%r12, %r12
	jle	.LBB8_22
# %bb.21:                               #   in Loop: Header=BB8_8 Depth=1
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	memmove@PLT
.LBB8_22:                               #   in Loop: Header=BB8_8 Depth=1
	testq	%r13, %r13
	je	.LBB8_24
# %bb.23:                               #   in Loop: Header=BB8_8 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_ZdlPvm@PLT
.LBB8_24:                               #   in Loop: Header=BB8_8 Depth=1
	addq	%rbp, %r12
	addq	$2, %r12
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%r12, 8(%rcx)
	leaq	(,%r15,2), %rax
	addq	%rbp, %rax
	movq	%rax, 16(%rcx)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movabsq	$4611686018427387903, %rsi      # imm = 0x3FFFFFFFFFFFFFFF
	jmp	.LBB8_12
.LBB8_15:
	movq	%r13, (%rcx)
.Ltmp198:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp199:
# %bb.16:
.LBB8_26:
.Ltmp200:
	movq	%rax, %rbp
	jmp	.LBB8_27
.LBB8_25:
.Ltmp197:
	movq	%rax, %rbp
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%r13, (%rax)
.LBB8_27:
	testq	%r13, %r13
	je	.LBB8_29
# %bb.28:
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_ZdlPvm@PLT
.LBB8_29:
	movq	%r14, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end8:
	.size	_Z10get_primesIttESt6vectorIT_SaIS1_EET0_, .Lfunc_end8-_Z10get_primesIttESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIttESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesIttESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp195-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp195
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin7         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp198-.Ltmp196              #   Call between .Ltmp196 and .Ltmp198
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin7         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Lfunc_end8-.Ltmp199           #   Call between .Ltmp199 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m
.LCPI9_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB9_2
	.p2align	4
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovael	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB9_1
.LBB9_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI9_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m, .Lfunc_end9-_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movl	%esi, %r15d
	leaq	1(%r15), %rbx
	movq	%rbx, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdx
	callq	memset@PLT
	cmpw	$4, %bp
	jae	.LBB10_1
.LBB10_5:
	vxorps	%xmm0, %xmm0, %xmm0
	movq	8(%rsp), %r9                    # 8-byte Reload
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpw	$2, %bp
	jae	.LBB10_7
# %bb.6:
	xorl	%ebp, %ebp
.LBB10_18:
	movq	%rbp, (%r9)
	movq	%r9, %rbx
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB10_1:
	.cfi_def_cfa_offset 96
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB10_2
	.p2align	4
.LBB10_4:                               #   in Loop: Header=BB10_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r15, %rcx
	ja	.LBB10_5
.LBB10_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%r15, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB10_4
	.p2align	4
.LBB10_3:                               #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r15, %rcx
	jbe	.LBB10_3
	jmp	.LBB10_4
.LBB10_7:
	movl	$2, %ebx
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	jmp	.LBB10_8
	.p2align	4
.LBB10_15:                              #   in Loop: Header=BB10_8 Depth=1
	movw	%r12w, (%r13)
	shrl	$16, %r12d
	movb	%r12b, 2(%r13)
	addq	$3, %r13
	movq	%r13, 8(%r9)
.LBB10_16:                              #   in Loop: Header=BB10_8 Depth=1
	movq	%r8, %rbp
.LBB10_17:                              #   in Loop: Header=BB10_8 Depth=1
	leaq	1(%rbx), %rax
	movq	%rbp, %r8
	cmpq	%r15, %rbx
	movq	%rax, %rbx
	je	.LBB10_18
.LBB10_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_25 Depth 2
	cmpb	$0, (%r14,%rbx)
	je	.LBB10_16
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=1
	movzwl	%bx, %esi
	lzcntw	%bx, %cx
	xorb	$15, %cl
	leal	-1(%rbx), %eax
	testl	%esi, %eax
	je	.LBB10_10
# %bb.11:                               #   in Loop: Header=BB10_8 Depth=1
	movl	$65536, %eax                    # imm = 0x10000
	shlxl	%ecx, %eax, %eax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, %edx
	imull	%ebx, %edx
	leal	(%rdx,%rbx), %esi
	movzwl	%si, %esi
	shrxl	%ecx, %esi, %esi
	testl	%esi, %esi
	je	.LBB10_13
# %bb.12:                               #   in Loop: Header=BB10_8 Depth=1
	negl	%edx
	movl	%edx, %esi
	addl	%edx, %esi
	cmpw	%bx, %si
	setae	%sil
	testw	%dx, %dx
	sets	%dl
	orb	%sil, %dl
	movzbl	%dl, %edx
	leal	(%rdx,%rax,2), %eax
	orb	$64, %cl
.LBB10_13:                              #   in Loop: Header=BB10_8 Depth=1
	incl	%eax
	jmp	.LBB10_14
	.p2align	4
.LBB10_10:                              #   in Loop: Header=BB10_8 Depth=1
	xorl	%eax, %eax
.LBB10_14:                              #   in Loop: Header=BB10_8 Depth=1
	movzbl	%cl, %ecx
	shll	$16, %ecx
	movzwl	%ax, %r12d
	orl	%ecx, %r12d
	cmpq	16(%r9), %r13
	jne	.LBB10_15
# %bb.19:                               #   in Loop: Header=BB10_8 Depth=1
	movq	%r13, %rsi
	movq	%r8, (%rsp)                     # 8-byte Spill
	subq	%r8, %rsi
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %rsi
	je	.LBB10_20
# %bb.22:                               #   in Loop: Header=BB10_8 Depth=1
	movq	%rsi, %rax
	movabsq	$-6148914691236517205, %rcx     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movabsq	$3074457345618258602, %rsi      # imm = 0x2AAAAAAAAAAAAAAA
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,2), %rdi
.Ltmp201:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp202:
# %bb.23:                               #   in Loop: Header=BB10_8 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movw	%r12w, (%rax,%rsi)
	shrl	$16, %r12d
	movb	%r12b, 2(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB10_26
# %bb.24:                               #   in Loop: Header=BB10_8 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB10_25:                              #   Parent Loop BB10_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	2(%rax), %ecx
	movb	%cl, 2(%r12)
	movzwl	(%rax), %ecx
	movw	%cx, (%r12)
	addq	$3, %rax
	addq	$3, %r12
	cmpq	%r13, %rax
	jne	.LBB10_25
.LBB10_26:                              #   in Loop: Header=BB10_8 Depth=1
	testq	%rdi, %rdi
	je	.LBB10_28
# %bb.27:                               #   in Loop: Header=BB10_8 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB10_28:                              #   in Loop: Header=BB10_8 Depth=1
	addq	$3, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	jmp	.LBB10_17
.LBB10_20:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp204:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp205:
# %bb.21:
.LBB10_30:
.Ltmp206:
	movq	%rax, %rbx
	jmp	.LBB10_31
.LBB10_29:
.Ltmp203:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB10_31:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB10_33
# %bb.32:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB10_33:
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end10:
	.size	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_, .Lfunc_end10-_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp201-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp201
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin8         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin8         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Lfunc_end10-.Ltmp205          #   Call between .Ltmp205 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI11_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB11_2
	.p2align	4
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovael	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB11_1
.LBB11_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI11_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end11-_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movl	%esi, %r15d
	leaq	1(%r15), %rbx
	movq	%rbx, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdx
	callq	memset@PLT
	cmpw	$4, %bp
	jae	.LBB12_1
.LBB12_5:
	vxorps	%xmm0, %xmm0, %xmm0
	movq	8(%rsp), %r9                    # 8-byte Reload
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpw	$2, %bp
	jae	.LBB12_7
# %bb.6:
	xorl	%ebp, %ebp
.LBB12_16:
	movq	%rbp, (%r9)
	movq	%r9, %rbx
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB12_1:
	.cfi_def_cfa_offset 96
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB12_2
	.p2align	4
.LBB12_4:                               #   in Loop: Header=BB12_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r15, %rcx
	ja	.LBB12_5
.LBB12_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%r15, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB12_4
	.p2align	4
.LBB12_3:                               #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r15, %rcx
	jbe	.LBB12_3
	jmp	.LBB12_4
.LBB12_7:
	movl	$2, %ebx
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	jmp	.LBB12_8
	.p2align	4
.LBB12_13:                              #   in Loop: Header=BB12_8 Depth=1
	movw	%r12w, (%r13)
	shrl	$16, %r12d
	movb	%r12b, 2(%r13)
	addq	$3, %r13
	movq	%r13, 8(%r9)
.LBB12_14:                              #   in Loop: Header=BB12_8 Depth=1
	movq	%r8, %rbp
.LBB12_15:                              #   in Loop: Header=BB12_8 Depth=1
	leaq	1(%rbx), %rax
	movq	%rbp, %r8
	cmpq	%r15, %rbx
	movq	%rax, %rbx
	je	.LBB12_16
.LBB12_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_23 Depth 2
	cmpb	$0, (%r14,%rbx)
	je	.LBB12_14
# %bb.9:                                #   in Loop: Header=BB12_8 Depth=1
	movzwl	%bx, %esi
	lzcntw	%bx, %cx
	leal	-1(%rbx), %eax
	testl	%esi, %eax
	je	.LBB12_10
# %bb.11:                               #   in Loop: Header=BB12_8 Depth=1
	xorb	$15, %cl
	movl	$1, %eax
	shlxl	%ecx, %eax, %eax
	shll	$16, %eax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
	movl	%ebx, %edx
	imull	%eax, %edx
	negl	%edx
	movl	%edx, %esi
	addl	%edx, %esi
	cmpw	%bx, %si
	setae	%sil
	testw	%dx, %dx
	sets	%dl
	orb	%sil, %dl
	movzbl	%dl, %edx
	leal	(%rdx,%rax,2), %eax
	incl	%eax
	movl	%ecx, %edx
	jmp	.LBB12_12
	.p2align	4
.LBB12_10:                              #   in Loop: Header=BB12_8 Depth=1
	movb	$14, %dl
	subb	%cl, %dl
	xorl	%eax, %eax
.LBB12_12:                              #   in Loop: Header=BB12_8 Depth=1
	movzbl	%dl, %r12d
	movzwl	%ax, %eax
	andl	$31, %r12d
	shll	$16, %r12d
	orl	%eax, %r12d
	cmpq	16(%r9), %r13
	jne	.LBB12_13
# %bb.17:                               #   in Loop: Header=BB12_8 Depth=1
	movq	%r13, %rsi
	movq	%r8, (%rsp)                     # 8-byte Spill
	subq	%r8, %rsi
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %rsi
	je	.LBB12_18
# %bb.20:                               #   in Loop: Header=BB12_8 Depth=1
	movq	%rsi, %rax
	movabsq	$-6148914691236517205, %rcx     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movabsq	$3074457345618258602, %rsi      # imm = 0x2AAAAAAAAAAAAAAA
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,2), %rdi
.Ltmp207:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp208:
# %bb.21:                               #   in Loop: Header=BB12_8 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movw	%r12w, (%rax,%rsi)
	shrl	$16, %r12d
	movb	%r12b, 2(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB12_24
# %bb.22:                               #   in Loop: Header=BB12_8 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB12_23:                              #   Parent Loop BB12_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	2(%rax), %ecx
	movb	%cl, 2(%r12)
	movzwl	(%rax), %ecx
	movw	%cx, (%r12)
	addq	$3, %rax
	addq	$3, %r12
	cmpq	%r13, %rax
	jne	.LBB12_23
.LBB12_24:                              #   in Loop: Header=BB12_8 Depth=1
	testq	%rdi, %rdi
	je	.LBB12_26
# %bb.25:                               #   in Loop: Header=BB12_8 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB12_26:                              #   in Loop: Header=BB12_8 Depth=1
	addq	$3, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	jmp	.LBB12_15
.LBB12_18:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp210:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp211:
# %bb.19:
.LBB12_28:
.Ltmp212:
	movq	%rax, %rbx
	jmp	.LBB12_29
.LBB12_27:
.Ltmp209:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB12_29:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB12_31
# %bb.30:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB12_31:
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end12:
	.size	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_, .Lfunc_end12-_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp207-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp207
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin9         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin9         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Lfunc_end12-.Ltmp211          #   Call between .Ltmp211 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI13_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB13_2
	.p2align	4
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovael	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB13_1
.LBB13_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI13_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end13-_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_ # -- Begin function _Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_,@function
_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_: # @_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %r8
	movq	8(%rsi), %rsi
	xorl	%ecx, %ecx
	cmpq	%rsi, %r8
	je	.LBB14_3
	.p2align	4
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divw	(%r8)
	movzwl	%ax, %eax
	addq	%rax, %rcx
	addq	$2, %r8
	cmpq	%rsi, %r8
	jne	.LBB14_1
.LBB14_3:
	movq	%rcx, %rax
	retq
.Lfunc_end14:
	.size	_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_, .Lfunc_end14-_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	cmpq	%rdx, %rcx
	je	.LBB15_1
# %bb.3:
	movzwl	%di, %esi
	xorl	%eax, %eax
	jmp	.LBB15_4
	.p2align	4
.LBB15_8:                               #   in Loop: Header=BB15_4 Depth=1
	shrxl	%edi, %r8d, %edi
.LBB15_9:                               #   in Loop: Header=BB15_4 Depth=1
	movl	%edi, %edi
	addq	%rdi, %rax
	addq	$3, %rcx
	cmpq	%rdx, %rcx
	je	.LBB15_2
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %r8d
	movzbl	2(%rcx), %edi
	testl	%r8d, %r8d
	je	.LBB15_5
# %bb.6:                                #   in Loop: Header=BB15_4 Depth=1
	imull	%esi, %r8d
	shrl	$16, %r8d
	testb	$64, %dil
	je	.LBB15_8
# %bb.7:                                #   in Loop: Header=BB15_4 Depth=1
	movl	%esi, %r9d
	subl	%r8d, %r9d
	shrl	%r9d
	addl	%r8d, %r9d
	movzwl	%r9w, %r8d
	jmp	.LBB15_8
	.p2align	4
.LBB15_5:                               #   in Loop: Header=BB15_4 Depth=1
	shrxl	%edi, %esi, %edi
	jmp	.LBB15_9
.LBB15_1:
	xorl	%eax, %eax
.LBB15_2:
	retq
.Lfunc_end15:
	.size	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end15-_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	cmpq	%rdx, %rcx
	je	.LBB16_1
# %bb.3:
	movzwl	%di, %esi
	xorl	%eax, %eax
	.p2align	4
.LBB16_4:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %edi
	imull	%esi, %edi
	shrl	$16, %edi
	movl	%esi, %r8d
	subl	%edi, %r8d
	shrl	%r8d
	addl	%edi, %r8d
	movzwl	%r8w, %edi
	movzbl	2(%rcx), %r8d
	shrxl	%r8d, %edi, %edi
	addq	%rdi, %rax
	addq	$3, %rcx
	cmpq	%rdx, %rcx
	jne	.LBB16_4
# %bb.2:
	retq
.LBB16_1:
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end16-_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIssESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesIssESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesIssESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesIssESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesIssESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesIssESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesIssESt6vectorIT_SaIS1_EET0_
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	cmpw	$-2, %bp
	jle	.LBB17_36
# %bb.1:
	movslq	%ebp, %r12
	movq	%r12, %rbx
	incq	%rbx
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB17_2
# %bb.3:
	movq	%rbx, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	leaq	(%rax,%rbx), %r15
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	memset@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpw	$4, %bp
	jb	.LBB17_9
	jmp	.LBB17_5
.LBB17_2:
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	cmpw	$4, %bp
	jae	.LBB17_5
.LBB17_9:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpw	$2, %bp
	jae	.LBB17_10
# %bb.32:
	testq	%r14, %r14
	jne	.LBB17_33
# %bb.34:
	movq	%rdi, %rax
	jmp	.LBB17_35
.LBB17_5:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB17_6
	.p2align	4
.LBB17_8:                               #   in Loop: Header=BB17_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB17_9
.LBB17_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%r12, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB17_8
	.p2align	4
.LBB17_7:                               #   Parent Loop BB17_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB17_7
	jmp	.LBB17_8
.LBB17_10:
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movl	$2, %r13d
	xorl	%ebx, %ebx
	movabsq	$4611686018427387903, %rdx      # imm = 0x3FFFFFFFFFFFFFFF
	xorl	%ebp, %ebp
	jmp	.LBB17_11
	.p2align	4
.LBB17_13:                              #   in Loop: Header=BB17_11 Depth=1
	movw	%r13w, (%rbx)
	addq	$2, %rbx
	movq	%rbx, 8(%rdi)
.LBB17_14:                              #   in Loop: Header=BB17_11 Depth=1
	incq	%r13
	cmpq	%r12, %r13
	ja	.LBB17_15
.LBB17_11:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r14,%r13)
	je	.LBB17_14
# %bb.12:                               #   in Loop: Header=BB17_11 Depth=1
	cmpq	16(%rdi), %rbx
	jne	.LBB17_13
# %bb.16:                               #   in Loop: Header=BB17_11 Depth=1
	subq	%rbp, %rbx
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %rbx
	movq	%rbp, (%rsp)                    # 8-byte Spill
	je	.LBB17_17
# %bb.19:                               #   in Loop: Header=BB17_11 Depth=1
	movq	%rbx, %rax
	sarq	%rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %r15
	cmpq	%rdx, %r15
	jb	.LBB17_21
# %bb.20:                               #   in Loop: Header=BB17_11 Depth=1
	movq	%rdx, %r15
.LBB17_21:                              #   in Loop: Header=BB17_11 Depth=1
	addq	%rax, %rcx
	cmovbq	%rdx, %r15
	leaq	(%r15,%r15), %rdi
.Ltmp213:
	callq	_Znwm@PLT
.Ltmp214:
# %bb.22:                               #   in Loop: Header=BB17_11 Depth=1
	movq	%rax, %rbp
	movw	%r13w, (%rax,%rbx)
	testq	%rbx, %rbx
	movq	(%rsp), %rax                    # 8-byte Reload
	jle	.LBB17_24
# %bb.23:                               #   in Loop: Header=BB17_11 Depth=1
	movq	%rbp, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rbx, %rdx
	callq	memmove@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
.LBB17_24:                              #   in Loop: Header=BB17_11 Depth=1
	testq	%rax, %rax
	je	.LBB17_26
# %bb.25:                               #   in Loop: Header=BB17_11 Depth=1
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_ZdlPvm@PLT
.LBB17_26:                              #   in Loop: Header=BB17_11 Depth=1
	addq	%rbp, %rbx
	addq	$2, %rbx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%rbx, 8(%rdi)
	leaq	(,%r15,2), %rax
	addq	%rbp, %rax
	movq	%rax, 16(%rdi)
	movabsq	$4611686018427387903, %rdx      # imm = 0x3FFFFFFFFFFFFFFF
	jmp	.LBB17_14
.LBB17_15:
	movq	%rbp, (%rdi)
	movq	16(%rsp), %r15                  # 8-byte Reload
.LBB17_33:
	subq	%r14, %r15
	movq	%rdi, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
.LBB17_35:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB17_17:
	.cfi_def_cfa_offset 80
	movq	%rbp, (%rdi)
.Ltmp216:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp217:
# %bb.18:
.LBB17_36:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB17_28:
.Ltmp218:
	movq	%rax, %rbp
	jmp	.LBB17_29
.LBB17_27:
.Ltmp215:
	movq	%rax, %rbp
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB17_29:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB17_31
# %bb.30:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%rbx, %rsi
	callq	_ZdlPvm@PLT
.LBB17_31:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end17:
	.size	_Z10get_primesIssESt6vectorIT_SaIS1_EET0_, .Lfunc_end17-_Z10get_primesIssESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIssESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesIssESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp213-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp213
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin10        #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp216-.Ltmp214              #   Call between .Ltmp214 and .Ltmp216
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin10        #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Lfunc_end17-.Ltmp217          #   Call between .Ltmp217 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m
.LCPI18_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB18_2
	.p2align	4
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovgel	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB18_1
.LBB18_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI18_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m, .Lfunc_end18-_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	cmpw	$-2, %bp
	jle	.LBB19_43
# %bb.1:
	movq	%rdi, %r9
	movslq	%ebp, %rbx
	movq	%rbx, %r15
	incq	%r15
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB19_2
# %bb.3:
	movq	%r15, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	addq	%r15, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
	cmpw	$4, %bp
	jb	.LBB19_9
	jmp	.LBB19_5
.LBB19_2:
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%r14d, %r14d
	cmpw	$4, %bp
	jae	.LBB19_5
.LBB19_9:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpw	$2, %bp
	jae	.LBB19_11
# %bb.10:
	xorl	%ebp, %ebp
.LBB19_24:
	movq	%rbp, (%r9)
	testq	%r14, %r14
	je	.LBB19_41
# %bb.25:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	movq	%r9, %rbx
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	jmp	.LBB19_42
.LBB19_5:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB19_6
	.p2align	4
.LBB19_8:                               #   in Loop: Header=BB19_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB19_9
.LBB19_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_7 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%rbx, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB19_8
	.p2align	4
.LBB19_7:                               #   Parent Loop BB19_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB19_7
	jmp	.LBB19_8
.LBB19_11:
	movl	$2, %r15d
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	jmp	.LBB19_12
	.p2align	4
.LBB19_21:                              #   in Loop: Header=BB19_12 Depth=1
	movw	%r12w, (%r13)
	shrl	$16, %r12d
	movb	%r12b, 2(%r13)
	addq	$3, %r13
	movq	%r13, 8(%r9)
.LBB19_22:                              #   in Loop: Header=BB19_12 Depth=1
	movq	%r10, %rbp
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	ja	.LBB19_24
.LBB19_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_32 Depth 2
	cmpb	$0, (%r14,%r15)
	je	.LBB19_22
# %bb.13:                               #   in Loop: Header=BB19_12 Depth=1
	testw	%r15w, %r15w
	je	.LBB19_44
# %bb.14:                               #   in Loop: Header=BB19_12 Depth=1
	movl	%r15d, %esi
	negw	%si
	cmovsw	%r15w, %si
	lzcntw	%si, %di
	movl	%edi, %ecx
	xorl	$15, %ecx
	movzwl	%si, %r8d
	blsrl	%r8d, %eax
	je	.LBB19_15
# %bb.16:                               #   in Loop: Header=BB19_12 Depth=1
	movl	$32768, %eax                    # imm = 0x8000
	shlxl	%ecx, %eax, %eax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, %edx
	imull	%r8d, %edx
	addl	%edx, %r8d
	movzwl	%r8w, %r8d
	shrxl	%ecx, %r8d, %r8d
	testl	%r8d, %r8d
	je	.LBB19_17
# %bb.18:                               #   in Loop: Header=BB19_12 Depth=1
	negl	%edx
	movl	%edx, %edi
	addl	%edx, %edi
	cmpw	%si, %di
	setae	%sil
	testw	%dx, %dx
	sets	%dl
	orb	%sil, %dl
	movzbl	%dl, %edx
	leal	(%rdx,%rax,2), %eax
	orb	$64, %cl
	jmp	.LBB19_19
	.p2align	4
.LBB19_15:                              #   in Loop: Header=BB19_12 Depth=1
	movl	%r15d, %eax
	shrl	$8, %eax
	andl	$128, %eax
	movzwl	%cx, %ecx
	orl	%eax, %ecx
	xorl	%eax, %eax
	jmp	.LBB19_20
.LBB19_17:                              #   in Loop: Header=BB19_12 Depth=1
	movb	$14, %cl
	subb	%dil, %cl
.LBB19_19:                              #   in Loop: Header=BB19_12 Depth=1
	leal	1(%rax), %edx
	movzbl	%cl, %esi
	orb	$-128, %cl
	testw	%r15w, %r15w
	notl	%eax
	movzbl	%cl, %ecx
	cmovnsl	%esi, %ecx
	cmovnsl	%edx, %eax
.LBB19_20:                              #   in Loop: Header=BB19_12 Depth=1
	movzbl	%cl, %ecx
	shll	$16, %ecx
	movzwl	%ax, %r12d
	orl	%ecx, %r12d
	cmpq	16(%r9), %r13
	jne	.LBB19_21
# %bb.26:                               #   in Loop: Header=BB19_12 Depth=1
	movq	%r13, %rsi
	movq	%r10, (%rsp)                    # 8-byte Spill
	subq	%r10, %rsi
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %rsi
	je	.LBB19_27
# %bb.29:                               #   in Loop: Header=BB19_12 Depth=1
	movq	%rsi, %rax
	movabsq	$-6148914691236517205, %rcx     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movabsq	$3074457345618258602, %rsi      # imm = 0x2AAAAAAAAAAAAAAA
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,2), %rdi
.Ltmp219:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp220:
# %bb.30:                               #   in Loop: Header=BB19_12 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movw	%r12w, (%rax,%rsi)
	shrl	$16, %r12d
	movb	%r12b, 2(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB19_33
# %bb.31:                               #   in Loop: Header=BB19_12 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB19_32:                              #   Parent Loop BB19_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	2(%rax), %ecx
	movb	%cl, 2(%r12)
	movzwl	(%rax), %ecx
	movw	%cx, (%r12)
	addq	$3, %rax
	addq	$3, %r12
	cmpq	%r13, %rax
	jne	.LBB19_32
.LBB19_33:                              #   in Loop: Header=BB19_12 Depth=1
	testq	%rdi, %rdi
	je	.LBB19_35
# %bb.34:                               #   in Loop: Header=BB19_12 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB19_35:                              #   in Loop: Header=BB19_12 Depth=1
	addq	$3, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	jbe	.LBB19_12
	jmp	.LBB19_24
.LBB19_41:
	movq	%r9, %rax
.LBB19_42:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB19_44:
	.cfi_def_cfa_offset 96
	movq	%r10, (%r9)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s16_genEsi(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1279, %edx                     # imm = 0x4FF
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB19_27:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp222:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp223:
# %bb.28:
.LBB19_43:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB19_37:
.Ltmp224:
	movq	%rax, %rbx
	jmp	.LBB19_38
.LBB19_36:
.Ltmp221:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB19_38:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB19_40
# %bb.39:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB19_40:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end19:
	.size	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_, .Lfunc_end19-_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp219-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp219
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin11        #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin11        #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Lfunc_end19-.Ltmp223          #   Call between .Ltmp223 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI20_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB20_2
	.p2align	4
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovgel	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB20_1
.LBB20_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI20_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end20-_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	cmpw	$-2, %bp
	jle	.LBB21_40
# %bb.1:
	movq	%rdi, %r9
	movslq	%ebp, %rbx
	movq	%rbx, %r15
	incq	%r15
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB21_2
# %bb.3:
	movq	%r15, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	addq	%r15, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
	cmpw	$4, %bp
	jb	.LBB21_9
	jmp	.LBB21_5
.LBB21_2:
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%r14d, %r14d
	cmpw	$4, %bp
	jae	.LBB21_5
.LBB21_9:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpw	$2, %bp
	jae	.LBB21_11
# %bb.10:
	xorl	%ebp, %ebp
.LBB21_21:
	movq	%rbp, (%r9)
	testq	%r14, %r14
	je	.LBB21_38
# %bb.22:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	movq	%r9, %rbx
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	jmp	.LBB21_39
.LBB21_5:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB21_6
	.p2align	4
.LBB21_8:                               #   in Loop: Header=BB21_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB21_9
.LBB21_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_7 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%rbx, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB21_8
	.p2align	4
.LBB21_7:                               #   Parent Loop BB21_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB21_7
	jmp	.LBB21_8
.LBB21_11:
	movl	$2, %r15d
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	jmp	.LBB21_12
	.p2align	4
.LBB21_18:                              #   in Loop: Header=BB21_12 Depth=1
	movw	%r12w, (%r13)
	shrl	$16, %r12d
	movb	%r12b, 2(%r13)
	addq	$3, %r13
	movq	%r13, 8(%r9)
.LBB21_19:                              #   in Loop: Header=BB21_12 Depth=1
	movq	%r10, %rbp
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	ja	.LBB21_21
.LBB21_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_29 Depth 2
	cmpb	$0, (%r14,%r15)
	je	.LBB21_19
# %bb.13:                               #   in Loop: Header=BB21_12 Depth=1
	testw	%r15w, %r15w
	je	.LBB21_41
# %bb.14:                               #   in Loop: Header=BB21_12 Depth=1
	movl	%r15d, %eax
	negw	%ax
	cmovsw	%r15w, %ax
	bsrw	%ax, %si
	movzwl	%ax, %edi
	blsrl	%edi, %eax
	je	.LBB21_15
# %bb.16:                               #   in Loop: Header=BB21_12 Depth=1
	testw	%r15w, %r15w
	setns	%cl
	movl	$32768, %eax                    # imm = 0x8000
	shlxl	%esi, %eax, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $eax killed $eax def $rax
	movl	%edi, %edx
	imull	%eax, %edx
	negl	%edx
	movl	%edx, %r8d
	addl	%edx, %r8d
	cmpw	%di, %r8w
	setae	%dil
	testw	%dx, %dx
	sets	%dl
	orb	%dil, %dl
	movzbl	%dl, %edx
	leal	(%rdx,%rax,2), %eax
	incl	%eax
	shlb	$7, %cl
	orb	%sil, %cl
	addb	$-64, %cl
	jmp	.LBB21_17
	.p2align	4
.LBB21_15:                              #   in Loop: Header=BB21_12 Depth=1
	movl	%r15d, %eax
	shrl	$8, %eax
	andl	$128, %eax
	movzwl	%si, %ecx
	orl	%eax, %ecx
	xorl	%eax, %eax
.LBB21_17:                              #   in Loop: Header=BB21_12 Depth=1
	movzbl	%cl, %ecx
	shll	$16, %ecx
	movzwl	%ax, %r12d
	orl	%ecx, %r12d
	cmpq	16(%r9), %r13
	jne	.LBB21_18
# %bb.23:                               #   in Loop: Header=BB21_12 Depth=1
	movq	%r13, %rsi
	movq	%r10, (%rsp)                    # 8-byte Spill
	subq	%r10, %rsi
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %rsi
	je	.LBB21_24
# %bb.26:                               #   in Loop: Header=BB21_12 Depth=1
	movq	%rsi, %rax
	movabsq	$-6148914691236517205, %rcx     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movabsq	$3074457345618258602, %rsi      # imm = 0x2AAAAAAAAAAAAAAA
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,2), %rdi
.Ltmp225:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp226:
# %bb.27:                               #   in Loop: Header=BB21_12 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movw	%r12w, (%rax,%rsi)
	shrl	$16, %r12d
	movb	%r12b, 2(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB21_30
# %bb.28:                               #   in Loop: Header=BB21_12 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB21_29:                              #   Parent Loop BB21_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	2(%rax), %ecx
	movb	%cl, 2(%r12)
	movzwl	(%rax), %ecx
	movw	%cx, (%r12)
	addq	$3, %rax
	addq	$3, %r12
	cmpq	%r13, %rax
	jne	.LBB21_29
.LBB21_30:                              #   in Loop: Header=BB21_12 Depth=1
	testq	%rdi, %rdi
	je	.LBB21_32
# %bb.31:                               #   in Loop: Header=BB21_12 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB21_32:                              #   in Loop: Header=BB21_12 Depth=1
	addq	$3, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	jbe	.LBB21_12
	jmp	.LBB21_21
.LBB21_38:
	movq	%r9, %rax
.LBB21_39:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB21_41:
	.cfi_def_cfa_offset 96
	movq	%r10, (%r9)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s16_genEsi(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1279, %edx                     # imm = 0x4FF
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB21_24:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp228:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp229:
# %bb.25:
.LBB21_40:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB21_34:
.Ltmp230:
	movq	%rax, %rbx
	jmp	.LBB21_35
.LBB21_33:
.Ltmp227:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB21_35:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB21_37
# %bb.36:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB21_37:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end21:
	.size	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_, .Lfunc_end21-_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp225-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin12        #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin12        #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Lfunc_end21-.Ltmp229          #   Call between .Ltmp229 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI22_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB22_2
	.p2align	4
.LBB22_1:                               # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovgel	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB22_1
.LBB22_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI22_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end22-_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_ # -- Begin function _Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_,@function
_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_: # @_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %r8
	movq	8(%rsi), %r9
	cmpq	%r9, %r8
	je	.LBB23_1
# %bb.3:
	movswl	%di, %esi
	xorl	%ecx, %ecx
	.p2align	4
.LBB23_4:                               # =>This Inner Loop Header: Depth=1
	movswl	(%r8), %edi
	movl	%esi, %eax
	cltd
	idivl	%edi
	cltq
	addq	%rax, %rcx
	addq	$2, %r8
	cmpq	%r9, %r8
	jne	.LBB23_4
# %bb.2:
	movq	%rcx, %rax
	retq
.LBB23_1:
	xorl	%ecx, %ecx
	movq	%rcx, %rax
	retq
.Lfunc_end23:
	.size	_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_, .Lfunc_end23-_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	je	.LBB24_9
# %bb.1:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movswl	%di, %esi
	movzwl	%si, %edi
	movl	%esi, %r8d
	shrl	$15, %r8d
	movl	$65535, %r9d                    # imm = 0xFFFF
	jmp	.LBB24_2
	.p2align	4
.LBB24_3:                               #   in Loop: Header=BB24_2 Depth=1
	bzhil	%r10d, %r8d, %r11d
	addl	%esi, %r11d
	movswl	%r11w, %r11d
	sarxl	%r10d, %r11d, %r10d
	testb	%bl, %bl
	movl	$0, %r11d
	cmovsl	%r9d, %r11d
	xorl	%r11d, %r10d
	subl	%r11d, %r10d
.LBB24_7:                               #   in Loop: Header=BB24_2 Depth=1
	movswq	%r10w, %r10
	addq	%r10, %rax
	addq	$3, %rcx
	cmpq	%rdx, %rcx
	je	.LBB24_8
.LBB24_2:                               # =>This Inner Loop Header: Depth=1
	movswl	(%rcx), %r11d
	movzbl	2(%rcx), %ebx
	movl	%ebx, %r10d
	andl	$31, %r10d
	testl	%r11d, %r11d
	je	.LBB24_3
# %bb.4:                                #   in Loop: Header=BB24_2 Depth=1
	imull	%esi, %r11d
	shrl	$16, %r11d
	testb	$64, %bl
	je	.LBB24_6
# %bb.5:                                #   in Loop: Header=BB24_2 Depth=1
	sarb	$7, %bl
	movsbl	%bl, %ebx
	subl	%ebx, %r11d
	xorl	%edi, %ebx
	addl	%ebx, %r11d
.LBB24_6:                               #   in Loop: Header=BB24_2 Depth=1
	movswl	%r11w, %ebx
	sarxl	%r10d, %ebx, %r10d
	btl	$15, %r11d
	adcl	$0, %r10d
	jmp	.LBB24_7
.LBB24_8:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB24_9:
	retq
.Lfunc_end24:
	.size	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end24-_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	cmpq	%rdx, %rcx
	je	.LBB25_1
# %bb.3:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movswl	%di, %esi
	xorl	%eax, %eax
	movl	$1, %edi
	.p2align	4
.LBB25_4:                               # =>This Inner Loop Header: Depth=1
	movzbl	2(%rcx), %r8d
	movswl	(%rcx), %r9d
	movl	%r9d, %r10d
	imull	%esi, %r10d
	shrl	$16, %r10d
	addl	%esi, %r10d
	movswl	%r10w, %r11d
	movl	%r8d, %ebx
	sarb	$7, %bl
	shlxl	%r8d, %edi, %ebp
	cmpl	$1, %r9d
	sbbl	$0, %ebp
	sarl	$15, %r11d
	andl	%ebp, %r11d
	addl	%r10d, %r11d
	movswl	%r11w, %r9d
	sarxl	%r8d, %r9d, %r8d
	movsbl	%bl, %r9d
	xorl	%r9d, %r8d
	subl	%r9d, %r8d
	movswq	%r8w, %r8
	addq	%r8, %rax
	addq	$3, %rcx
	cmpq	%rdx, %rcx
	jne	.LBB25_4
# %bb.5:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	retq
.LBB25_1:
	xorl	%eax, %eax
	retq
.Lfunc_end25:
	.size	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end25-_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIjjESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesIjjESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movl	%esi, %ebx
	leaq	1(%rbx), %r15
	movq	%r15, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movq	%r15, %rdx
	callq	memset@PLT
	cmpl	$4, %ebp
	jae	.LBB26_1
.LBB26_5:
	vxorps	%xmm0, %xmm0, %xmm0
	movq	(%rsp), %rcx                    # 8-byte Reload
	vmovups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	cmpl	$2, %ebp
	jae	.LBB26_7
# %bb.6:
	xorl	%ebp, %ebp
.LBB26_13:
	movq	%rbp, (%rcx)
	movq	%rcx, %rbx
	movq	%r14, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB26_1:
	.cfi_def_cfa_offset 80
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB26_2
	.p2align	4
.LBB26_4:                               #   in Loop: Header=BB26_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB26_5
.LBB26_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_3 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%rbx, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB26_4
	.p2align	4
.LBB26_3:                               #   Parent Loop BB26_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB26_3
	jmp	.LBB26_4
.LBB26_7:
	movl	$1, %edx
	subq	%rbx, %rdx
	movl	$2, %ebx
	xorl	%r12d, %r12d
	movabsq	$2305843009213693951, %rsi      # imm = 0x1FFFFFFFFFFFFFFF
	xorl	%r13d, %r13d
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB26_8
	.p2align	4
.LBB26_10:                              #   in Loop: Header=BB26_8 Depth=1
	movl	%ebx, (%r12)
	addq	$4, %r12
	movq	%r12, 8(%rcx)
.LBB26_11:                              #   in Loop: Header=BB26_8 Depth=1
	movq	%r13, %rbp
.LBB26_12:                              #   in Loop: Header=BB26_8 Depth=1
	leaq	(%rdx,%rbx), %rax
	incq	%rax
	incq	%rbx
	movq	%rbp, %r13
	cmpq	$2, %rax
	je	.LBB26_13
.LBB26_8:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r14,%rbx)
	je	.LBB26_11
# %bb.9:                                #   in Loop: Header=BB26_8 Depth=1
	cmpq	16(%rcx), %r12
	jne	.LBB26_10
# %bb.14:                               #   in Loop: Header=BB26_8 Depth=1
	subq	%r13, %r12
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r12
	je	.LBB26_15
# %bb.17:                               #   in Loop: Header=BB26_8 Depth=1
	movq	%r12, %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %r15
	cmpq	%rsi, %r15
	jb	.LBB26_19
# %bb.18:                               #   in Loop: Header=BB26_8 Depth=1
	movq	%rsi, %r15
.LBB26_19:                              #   in Loop: Header=BB26_8 Depth=1
	addq	%rax, %rcx
	cmovbq	%rsi, %r15
	leaq	(,%r15,4), %rdi
.Ltmp231:
	callq	_Znwm@PLT
.Ltmp232:
# %bb.20:                               #   in Loop: Header=BB26_8 Depth=1
	movq	%rax, %rbp
	movl	%ebx, (%rax,%r12)
	testq	%r12, %r12
	jle	.LBB26_22
# %bb.21:                               #   in Loop: Header=BB26_8 Depth=1
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	memmove@PLT
.LBB26_22:                              #   in Loop: Header=BB26_8 Depth=1
	testq	%r13, %r13
	je	.LBB26_24
# %bb.23:                               #   in Loop: Header=BB26_8 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_ZdlPvm@PLT
.LBB26_24:                              #   in Loop: Header=BB26_8 Depth=1
	addq	%rbp, %r12
	addq	$4, %r12
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%r12, 8(%rcx)
	leaq	(,%r15,4), %rax
	addq	%rbp, %rax
	movq	%rax, 16(%rcx)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movabsq	$2305843009213693951, %rsi      # imm = 0x1FFFFFFFFFFFFFFF
	jmp	.LBB26_12
.LBB26_15:
	movq	%r13, (%rcx)
.Ltmp234:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp235:
# %bb.16:
.LBB26_26:
.Ltmp236:
	movq	%rax, %rbp
	jmp	.LBB26_27
.LBB26_25:
.Ltmp233:
	movq	%rax, %rbp
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%r13, (%rax)
.LBB26_27:
	testq	%r13, %r13
	je	.LBB26_29
# %bb.28:
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_ZdlPvm@PLT
.LBB26_29:
	movq	%r14, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end26:
	.size	_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_, .Lfunc_end26-_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIjjESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table26:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp231-.Lfunc_begin13        #   Call between .Lfunc_begin13 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin13        #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Ltmp234-.Ltmp232              #   Call between .Ltmp232 and .Ltmp234
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin13        # >> Call Site 4 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin13        #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin13        # >> Call Site 5 <<
	.uleb128 .Lfunc_end26-.Ltmp235          #   Call between .Ltmp235 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m
.LCPI27_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB27_2
	.p2align	4
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovael	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB27_1
.LBB27_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI27_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end27:
	.size	_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m, .Lfunc_end27-_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movl	%esi, %r15d
	leaq	1(%r15), %rbx
	movq	%rbx, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdx
	callq	memset@PLT
	cmpl	$4, %ebp
	jae	.LBB28_1
.LBB28_5:
	vxorps	%xmm0, %xmm0, %xmm0
	movq	8(%rsp), %r8                    # 8-byte Reload
	vmovups	%xmm0, (%r8)
	movq	$0, 16(%r8)
	cmpl	$2, %ebp
	jae	.LBB28_7
# %bb.6:
	xorl	%ebp, %ebp
.LBB28_18:
	movq	%rbp, (%r8)
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r8, %rbx
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB28_1:
	.cfi_def_cfa_offset 96
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB28_2
	.p2align	4
.LBB28_4:                               #   in Loop: Header=BB28_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r15, %rcx
	ja	.LBB28_5
.LBB28_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_3 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%r15, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB28_4
	.p2align	4
.LBB28_3:                               #   Parent Loop BB28_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r15, %rcx
	jbe	.LBB28_3
	jmp	.LBB28_4
.LBB28_7:
	movl	$2, %ebx
	xorl	%r13d, %r13d
	xorl	%r9d, %r9d
	jmp	.LBB28_8
	.p2align	4
.LBB28_15:                              #   in Loop: Header=BB28_8 Depth=1
	movl	%r12d, (%r13)
	shrq	$32, %r12
	movb	%r12b, 4(%r13)
	addq	$5, %r13
	movq	%r13, 8(%r8)
.LBB28_16:                              #   in Loop: Header=BB28_8 Depth=1
	movq	%r9, %rbp
.LBB28_17:                              #   in Loop: Header=BB28_8 Depth=1
	leaq	1(%rbx), %rax
	movq	%rbp, %r9
	cmpq	%r15, %rbx
	movq	%rax, %rbx
	je	.LBB28_18
.LBB28_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_25 Depth 2
	cmpb	$0, (%r14,%rbx)
	je	.LBB28_16
# %bb.9:                                #   in Loop: Header=BB28_8 Depth=1
	bsrl	%ebx, %esi
	blsrl	%ebx, %eax
	jne	.LBB28_11
# %bb.10:                               #   in Loop: Header=BB28_8 Depth=1
	xorl	%eax, %eax
	jmp	.LBB28_14
	.p2align	4
.LBB28_11:                              #   in Loop: Header=BB28_8 Depth=1
	movl	$1, %eax
	shlxl	%esi, %eax, %ecx
	xorl	%eax, %eax
	movl	%ecx, %edx
	#APP
	divl	%ebx
	#NO_APP
                                        # kill: def $eax killed $eax def $rax
                                        # kill: def $edx killed $edx def $rdx
	movl	%ebx, %edi
	subl	%edx, %edi
	cmpl	%ecx, %edi
	jb	.LBB28_13
# %bb.12:                               #   in Loop: Header=BB28_8 Depth=1
	leal	(%rdx,%rdx), %ecx
	cmpl	%ebx, %ecx
	setae	%cl
	testl	%edx, %edx
	sets	%dl
	orb	%cl, %dl
	movzbl	%dl, %ecx
	leal	(%rcx,%rax,2), %eax
	orb	$64, %sil
.LBB28_13:                              #   in Loop: Header=BB28_8 Depth=1
	incl	%eax
.LBB28_14:                              #   in Loop: Header=BB28_8 Depth=1
	movzbl	%sil, %ecx
	shlq	$32, %rcx
	movl	%eax, %r12d
	orq	%rcx, %r12
	cmpq	16(%r8), %r13
	jne	.LBB28_15
# %bb.19:                               #   in Loop: Header=BB28_8 Depth=1
	movq	%r13, %rsi
	movq	%r9, (%rsp)                     # 8-byte Spill
	subq	%r9, %rsi
	movabsq	$9223372036854775805, %rax      # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rsi
	je	.LBB28_20
# %bb.22:                               #   in Loop: Header=BB28_8 Depth=1
	movq	%rsi, %rax
	movabsq	$-3689348814741910323, %rcx     # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movabsq	$1844674407370955161, %rsi      # imm = 0x1999999999999999
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,4), %rdi
.Ltmp237:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp238:
# %bb.23:                               #   in Loop: Header=BB28_8 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%r12d, (%rax,%rsi)
	shrq	$32, %r12
	movb	%r12b, 4(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r8                    # 8-byte Reload
	je	.LBB28_26
# %bb.24:                               #   in Loop: Header=BB28_8 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB28_25:                              #   Parent Loop BB28_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4(%rax), %ecx
	movb	%cl, 4(%r12)
	movl	(%rax), %ecx
	movl	%ecx, (%r12)
	addq	$5, %rax
	addq	$5, %r12
	cmpq	%r13, %rax
	jne	.LBB28_25
.LBB28_26:                              #   in Loop: Header=BB28_8 Depth=1
	testq	%rdi, %rdi
	je	.LBB28_28
# %bb.27:                               #   in Loop: Header=BB28_8 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r8                    # 8-byte Reload
.LBB28_28:                              #   in Loop: Header=BB28_8 Depth=1
	addq	$5, %r12
	movq	%r12, 8(%r8)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r8)
	movq	%r12, %r13
	jmp	.LBB28_17
.LBB28_20:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp240:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp241:
# %bb.21:
.LBB28_30:
.Ltmp242:
	movq	%rax, %rbx
	jmp	.LBB28_31
.LBB28_29:
.Ltmp239:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB28_31:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB28_33
# %bb.32:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB28_33:
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end28:
	.size	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_, .Lfunc_end28-_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table28:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp237-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp237
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin14        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin14        #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Lfunc_end28-.Ltmp241          #   Call between .Ltmp241 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI29_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB29_2
	.p2align	4
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovael	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB29_1
.LBB29_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI29_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end29:
	.size	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end29-_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movl	%esi, %r15d
	leaq	1(%r15), %rbx
	movq	%rbx, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdx
	callq	memset@PLT
	cmpl	$4, %ebp
	jae	.LBB30_1
.LBB30_5:
	vxorps	%xmm0, %xmm0, %xmm0
	movq	8(%rsp), %r9                    # 8-byte Reload
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpl	$2, %ebp
	jae	.LBB30_7
# %bb.6:
	xorl	%ebp, %ebp
.LBB30_16:
	movq	%rbp, (%r9)
	movq	%r9, %rbx
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB30_1:
	.cfi_def_cfa_offset 96
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB30_2
	.p2align	4
.LBB30_4:                               #   in Loop: Header=BB30_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r15, %rcx
	ja	.LBB30_5
.LBB30_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_3 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%r15, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB30_4
	.p2align	4
.LBB30_3:                               #   Parent Loop BB30_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r15, %rcx
	jbe	.LBB30_3
	jmp	.LBB30_4
.LBB30_7:
	movl	$2, %ebx
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	jmp	.LBB30_8
	.p2align	4
.LBB30_13:                              #   in Loop: Header=BB30_8 Depth=1
	movl	%r12d, (%r13)
	shrq	$32, %r12
	movb	%r12b, 4(%r13)
	addq	$5, %r13
	movq	%r13, 8(%r9)
.LBB30_14:                              #   in Loop: Header=BB30_8 Depth=1
	movq	%r8, %rbp
.LBB30_15:                              #   in Loop: Header=BB30_8 Depth=1
	leaq	1(%rbx), %rax
	movq	%rbp, %r8
	cmpq	%r15, %rbx
	movq	%rax, %rbx
	je	.LBB30_16
.LBB30_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_23 Depth 2
	cmpb	$0, (%r14,%rbx)
	je	.LBB30_14
# %bb.9:                                #   in Loop: Header=BB30_8 Depth=1
	xorl	%ecx, %ecx
	lzcntl	%ebx, %ecx
	blsrl	%ebx, %eax
	jne	.LBB30_11
# %bb.10:                               #   in Loop: Header=BB30_8 Depth=1
	movb	$30, %dl
	subb	%cl, %dl
	xorl	%eax, %eax
	jmp	.LBB30_12
	.p2align	4
.LBB30_11:                              #   in Loop: Header=BB30_8 Depth=1
	xorb	$31, %cl
	movl	$1, %eax
	shlxl	%ecx, %eax, %edx
	xorl	%eax, %eax
	#APP
	divl	%ebx
	#NO_APP
                                        # kill: def $eax killed $eax def $rax
                                        # kill: def $edx killed $edx def $rdx
	leal	(%rdx,%rdx), %esi
	cmpl	%ebx, %esi
	setae	%sil
	testl	%edx, %edx
	sets	%dl
	orb	%sil, %dl
	movzbl	%dl, %edx
	leal	(%rdx,%rax,2), %eax
	incl	%eax
	movl	%ecx, %edx
.LBB30_12:                              #   in Loop: Header=BB30_8 Depth=1
	movzbl	%dl, %r12d
	movl	%eax, %eax
	andl	$31, %r12d
	shlq	$32, %r12
	orq	%rax, %r12
	cmpq	16(%r9), %r13
	jne	.LBB30_13
# %bb.17:                               #   in Loop: Header=BB30_8 Depth=1
	movq	%r13, %rsi
	movq	%r8, (%rsp)                     # 8-byte Spill
	subq	%r8, %rsi
	movabsq	$9223372036854775805, %rax      # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rsi
	je	.LBB30_18
# %bb.20:                               #   in Loop: Header=BB30_8 Depth=1
	movq	%rsi, %rax
	movabsq	$-3689348814741910323, %rcx     # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movabsq	$1844674407370955161, %rsi      # imm = 0x1999999999999999
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,4), %rdi
.Ltmp243:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp244:
# %bb.21:                               #   in Loop: Header=BB30_8 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%r12d, (%rax,%rsi)
	shrq	$32, %r12
	movb	%r12b, 4(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB30_24
# %bb.22:                               #   in Loop: Header=BB30_8 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB30_23:                              #   Parent Loop BB30_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4(%rax), %ecx
	movb	%cl, 4(%r12)
	movl	(%rax), %ecx
	movl	%ecx, (%r12)
	addq	$5, %rax
	addq	$5, %r12
	cmpq	%r13, %rax
	jne	.LBB30_23
.LBB30_24:                              #   in Loop: Header=BB30_8 Depth=1
	testq	%rdi, %rdi
	je	.LBB30_26
# %bb.25:                               #   in Loop: Header=BB30_8 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB30_26:                              #   in Loop: Header=BB30_8 Depth=1
	addq	$5, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	jmp	.LBB30_15
.LBB30_18:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp246:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp247:
# %bb.19:
.LBB30_28:
.Ltmp248:
	movq	%rax, %rbx
	jmp	.LBB30_29
.LBB30_27:
.Ltmp245:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB30_29:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB30_31
# %bb.30:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB30_31:
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end30:
	.size	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_, .Lfunc_end30-_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table30:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp243-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp243
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin15        #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin15        #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin15        # >> Call Site 4 <<
	.uleb128 .Lfunc_end30-.Ltmp247          #   Call between .Ltmp247 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI31_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB31_2
	.p2align	4
.LBB31_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovael	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB31_1
.LBB31_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI31_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end31:
	.size	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end31-_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_ # -- Begin function _Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_,@function
_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_: # @_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %r8
	movq	8(%rsi), %rsi
	xorl	%ecx, %ecx
	cmpq	%rsi, %r8
	je	.LBB32_3
	.p2align	4
.LBB32_1:                               # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	(%r8)
                                        # kill: def $eax killed $eax def $rax
	addq	%rax, %rcx
	addq	$4, %r8
	cmpq	%rsi, %r8
	jne	.LBB32_1
.LBB32_3:
	movq	%rcx, %rax
	retq
.Lfunc_end32:
	.size	_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_, .Lfunc_end32-_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	cmpq	%rdx, %rcx
	je	.LBB33_1
# %bb.3:
	movl	%edi, %esi
	xorl	%eax, %eax
	jmp	.LBB33_4
	.p2align	4
.LBB33_5:                               #   in Loop: Header=BB33_4 Depth=1
	shrxl	%r8d, %edi, %r8d
.LBB33_9:                               #   in Loop: Header=BB33_4 Depth=1
	movl	%r8d, %r8d
	addq	%r8, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	je	.LBB33_2
.LBB33_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %r9d
	movzbl	4(%rcx), %r8d
	testq	%r9, %r9
	je	.LBB33_5
# %bb.6:                                #   in Loop: Header=BB33_4 Depth=1
	imulq	%rsi, %r9
	shrq	$32, %r9
	testb	$64, %r8b
	jne	.LBB33_7
# %bb.8:                                #   in Loop: Header=BB33_4 Depth=1
	shrxl	%r8d, %r9d, %r8d
	jmp	.LBB33_9
	.p2align	4
.LBB33_7:                               #   in Loop: Header=BB33_4 Depth=1
	movl	%edi, %r10d
	subl	%r9d, %r10d
	shrl	%r10d
	addl	%r9d, %r10d
	shrxl	%r8d, %r10d, %r8d
	jmp	.LBB33_9
.LBB33_1:
	xorl	%eax, %eax
.LBB33_2:
	retq
.Lfunc_end33:
	.size	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end33-_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	cmpq	%rdx, %rcx
	je	.LBB34_1
# %bb.3:
	movl	%edi, %esi
	xorl	%eax, %eax
	.p2align	4
.LBB34_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %r8d
	imulq	%rsi, %r8
	shrq	$32, %r8
	movl	%edi, %r9d
	subl	%r8d, %r9d
	shrl	%r9d
	addl	%r8d, %r9d
	movzbl	4(%rcx), %r8d
	shrxl	%r8d, %r9d, %r8d
	addq	%r8, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	jne	.LBB34_4
# %bb.2:
	retq
.LBB34_1:
	xorl	%eax, %eax
	retq
.Lfunc_end34:
	.size	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end34-_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIiiESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesIiiESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$-2, %esi
	jle	.LBB35_36
# %bb.1:
	movl	%esi, %ebp
	movslq	%esi, %r12
	movq	%r12, %rbx
	incq	%rbx
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB35_2
# %bb.3:
	movq	%rbx, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	leaq	(%rax,%rbx), %r15
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	memset@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpl	$4, %ebp
	jb	.LBB35_9
	jmp	.LBB35_5
.LBB35_2:
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	cmpl	$4, %ebp
	jae	.LBB35_5
.LBB35_9:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpl	$2, %ebp
	jae	.LBB35_10
# %bb.32:
	testq	%r14, %r14
	jne	.LBB35_33
# %bb.34:
	movq	%rdi, %rax
	jmp	.LBB35_35
.LBB35_5:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB35_6
	.p2align	4
.LBB35_8:                               #   in Loop: Header=BB35_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB35_9
.LBB35_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_7 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%r12, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB35_8
	.p2align	4
.LBB35_7:                               #   Parent Loop BB35_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB35_7
	jmp	.LBB35_8
.LBB35_10:
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movl	$2, %r13d
	xorl	%ebx, %ebx
	movabsq	$2305843009213693951, %rdx      # imm = 0x1FFFFFFFFFFFFFFF
	xorl	%ebp, %ebp
	jmp	.LBB35_11
	.p2align	4
.LBB35_13:                              #   in Loop: Header=BB35_11 Depth=1
	movl	%r13d, (%rbx)
	addq	$4, %rbx
	movq	%rbx, 8(%rdi)
.LBB35_14:                              #   in Loop: Header=BB35_11 Depth=1
	incq	%r13
	cmpq	%r12, %r13
	ja	.LBB35_15
.LBB35_11:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r14,%r13)
	je	.LBB35_14
# %bb.12:                               #   in Loop: Header=BB35_11 Depth=1
	cmpq	16(%rdi), %rbx
	jne	.LBB35_13
# %bb.16:                               #   in Loop: Header=BB35_11 Depth=1
	subq	%rbp, %rbx
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %rbx
	movq	%rbp, (%rsp)                    # 8-byte Spill
	je	.LBB35_17
# %bb.19:                               #   in Loop: Header=BB35_11 Depth=1
	movq	%rbx, %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %r15
	cmpq	%rdx, %r15
	jb	.LBB35_21
# %bb.20:                               #   in Loop: Header=BB35_11 Depth=1
	movq	%rdx, %r15
.LBB35_21:                              #   in Loop: Header=BB35_11 Depth=1
	addq	%rax, %rcx
	cmovbq	%rdx, %r15
	leaq	(,%r15,4), %rdi
.Ltmp249:
	callq	_Znwm@PLT
.Ltmp250:
# %bb.22:                               #   in Loop: Header=BB35_11 Depth=1
	movq	%rax, %rbp
	movl	%r13d, (%rax,%rbx)
	testq	%rbx, %rbx
	movq	(%rsp), %rax                    # 8-byte Reload
	jle	.LBB35_24
# %bb.23:                               #   in Loop: Header=BB35_11 Depth=1
	movq	%rbp, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rbx, %rdx
	callq	memmove@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
.LBB35_24:                              #   in Loop: Header=BB35_11 Depth=1
	testq	%rax, %rax
	je	.LBB35_26
# %bb.25:                               #   in Loop: Header=BB35_11 Depth=1
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_ZdlPvm@PLT
.LBB35_26:                              #   in Loop: Header=BB35_11 Depth=1
	addq	%rbp, %rbx
	addq	$4, %rbx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%rbx, 8(%rdi)
	leaq	(,%r15,4), %rax
	addq	%rbp, %rax
	movq	%rax, 16(%rdi)
	movabsq	$2305843009213693951, %rdx      # imm = 0x1FFFFFFFFFFFFFFF
	jmp	.LBB35_14
.LBB35_15:
	movq	%rbp, (%rdi)
	movq	16(%rsp), %r15                  # 8-byte Reload
.LBB35_33:
	subq	%r14, %r15
	movq	%rdi, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
.LBB35_35:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB35_17:
	.cfi_def_cfa_offset 80
	movq	%rbp, (%rdi)
.Ltmp252:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp253:
# %bb.18:
.LBB35_36:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB35_28:
.Ltmp254:
	movq	%rax, %rbp
	jmp	.LBB35_29
.LBB35_27:
.Ltmp251:
	movq	%rax, %rbp
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB35_29:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB35_31
# %bb.30:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%rbx, %rsi
	callq	_ZdlPvm@PLT
.LBB35_31:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end35:
	.size	_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_, .Lfunc_end35-_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIiiESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table35:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp249-.Lfunc_begin16        #   Call between .Lfunc_begin16 and .Ltmp249
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin16        #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Ltmp252-.Ltmp250              #   Call between .Ltmp250 and .Ltmp252
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin16        # >> Call Site 4 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin16        #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin16        # >> Call Site 5 <<
	.uleb128 .Lfunc_end35-.Ltmp253          #   Call between .Ltmp253 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m
.LCPI36_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB36_2
	.p2align	4
.LBB36_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovgel	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB36_1
.LBB36_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI36_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end36:
	.size	_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m, .Lfunc_end36-_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$-2, %esi
	jle	.LBB37_42
# %bb.1:
	movl	%esi, %ebp
	movq	%rdi, %r9
	movslq	%esi, %rbx
	movq	%rbx, %r15
	incq	%r15
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB37_2
# %bb.3:
	movq	%r15, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	addq	%r15, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
	cmpl	$4, %ebp
	jb	.LBB37_9
	jmp	.LBB37_5
.LBB37_2:
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%r14d, %r14d
	cmpl	$4, %ebp
	jae	.LBB37_5
.LBB37_9:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpl	$2, %ebp
	jae	.LBB37_11
# %bb.10:
	xorl	%ebp, %ebp
.LBB37_23:
	movq	%rbp, (%r9)
	testq	%r14, %r14
	je	.LBB37_40
# %bb.24:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	movq	%r9, %rbx
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	jmp	.LBB37_41
.LBB37_5:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB37_6
	.p2align	4
.LBB37_8:                               #   in Loop: Header=BB37_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB37_9
.LBB37_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_7 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%rbx, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB37_8
	.p2align	4
.LBB37_7:                               #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB37_7
	jmp	.LBB37_8
.LBB37_11:
	movl	$2, %r15d
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	jmp	.LBB37_12
	.p2align	4
.LBB37_20:                              #   in Loop: Header=BB37_12 Depth=1
	movl	%r12d, (%r13)
	shrq	$32, %r12
	movb	%r12b, 4(%r13)
	addq	$5, %r13
	movq	%r13, 8(%r9)
.LBB37_21:                              #   in Loop: Header=BB37_12 Depth=1
	movq	%r10, %rbp
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	ja	.LBB37_23
.LBB37_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_31 Depth 2
	cmpb	$0, (%r14,%r15)
	je	.LBB37_21
# %bb.13:                               #   in Loop: Header=BB37_12 Depth=1
	testl	%r15d, %r15d
	je	.LBB37_43
# %bb.14:                               #   in Loop: Header=BB37_12 Depth=1
	movl	%r15d, %edi
	negl	%edi
	cmovsl	%r15d, %edi
	xorl	%eax, %eax
	lzcntl	%edi, %eax
	movl	%eax, %ecx
	xorl	$31, %ecx
	blsrl	%edi, %edx
	jne	.LBB37_16
# %bb.15:                               #   in Loop: Header=BB37_12 Depth=1
	movl	%r15d, %eax
	shrl	$24, %eax
	andl	$-128, %eax
	orl	%eax, %ecx
	xorl	%eax, %eax
	jmp	.LBB37_19
	.p2align	4
.LBB37_16:                              #   in Loop: Header=BB37_12 Depth=1
	movl	$30, %esi
	subl	%eax, %esi
	movl	$1, %eax
	shlxl	%esi, %eax, %edx
	xorl	%eax, %eax
	#APP
	divl	%edi
	#NO_APP
                                        # kill: def $eax killed $eax def $rax
                                        # kill: def $edx killed $edx def $rdx
	movl	%edi, %r8d
	subl	%edx, %r8d
	shrxl	%ecx, %r8d, %r8d
	testl	%r8d, %r8d
	je	.LBB37_18
# %bb.17:                               #   in Loop: Header=BB37_12 Depth=1
	leal	(%rdx,%rdx), %esi
	cmpl	%edi, %esi
	setae	%sil
	testl	%edx, %edx
	sets	%dl
	orb	%sil, %dl
	movzbl	%dl, %edx
	leal	(%rdx,%rax,2), %eax
	orb	$64, %cl
	movl	%ecx, %esi
.LBB37_18:                              #   in Loop: Header=BB37_12 Depth=1
	leal	1(%rax), %edx
	movzbl	%sil, %edi
	orb	$-128, %sil
	testl	%r15d, %r15d
	notl	%eax
	movzbl	%sil, %ecx
	cmovnsl	%edi, %ecx
	cmovnsl	%edx, %eax
.LBB37_19:                              #   in Loop: Header=BB37_12 Depth=1
	movzbl	%cl, %ecx
	shlq	$32, %rcx
	movl	%eax, %r12d
	orq	%rcx, %r12
	cmpq	16(%r9), %r13
	jne	.LBB37_20
# %bb.25:                               #   in Loop: Header=BB37_12 Depth=1
	movq	%r13, %rsi
	movq	%r10, (%rsp)                    # 8-byte Spill
	subq	%r10, %rsi
	movabsq	$9223372036854775805, %rax      # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rsi
	je	.LBB37_26
# %bb.28:                               #   in Loop: Header=BB37_12 Depth=1
	movq	%rsi, %rax
	movabsq	$-3689348814741910323, %rcx     # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movabsq	$1844674407370955161, %rsi      # imm = 0x1999999999999999
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,4), %rdi
.Ltmp255:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp256:
# %bb.29:                               #   in Loop: Header=BB37_12 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%r12d, (%rax,%rsi)
	shrq	$32, %r12
	movb	%r12b, 4(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB37_32
# %bb.30:                               #   in Loop: Header=BB37_12 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB37_31:                              #   Parent Loop BB37_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4(%rax), %ecx
	movb	%cl, 4(%r12)
	movl	(%rax), %ecx
	movl	%ecx, (%r12)
	addq	$5, %rax
	addq	$5, %r12
	cmpq	%r13, %rax
	jne	.LBB37_31
.LBB37_32:                              #   in Loop: Header=BB37_12 Depth=1
	testq	%rdi, %rdi
	je	.LBB37_34
# %bb.33:                               #   in Loop: Header=BB37_12 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB37_34:                              #   in Loop: Header=BB37_12 Depth=1
	addq	$5, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	jbe	.LBB37_12
	jmp	.LBB37_23
.LBB37_40:
	movq	%r9, %rax
.LBB37_41:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB37_43:
	.cfi_def_cfa_offset 96
	movq	%r10, (%r9)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s32_genEii(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1455, %edx                     # imm = 0x5AF
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB37_26:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp258:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp259:
# %bb.27:
.LBB37_42:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB37_36:
.Ltmp260:
	movq	%rax, %rbx
	jmp	.LBB37_37
.LBB37_35:
.Ltmp257:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB37_37:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB37_39
# %bb.38:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB37_39:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end37:
	.size	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_, .Lfunc_end37-_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table37:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp255-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp255
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin17        #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin17        #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Lfunc_end37-.Ltmp259          #   Call between .Ltmp259 and .Lfunc_end37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI38_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB38_2
	.p2align	4
.LBB38_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovgel	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB38_1
.LBB38_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI38_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end38:
	.size	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end38-_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$-2, %esi
	jle	.LBB39_40
# %bb.1:
	movl	%esi, %ebp
	movq	%rdi, %r9
	movslq	%esi, %rbx
	movq	%rbx, %r15
	incq	%r15
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB39_2
# %bb.3:
	movq	%r15, %rdi
	callq	_Znwm@PLT
	movq	%rax, %r14
	addq	%r15, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
	cmpl	$4, %ebp
	jb	.LBB39_9
	jmp	.LBB39_5
.LBB39_2:
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%r14d, %r14d
	cmpl	$4, %ebp
	jae	.LBB39_5
.LBB39_9:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpl	$2, %ebp
	jae	.LBB39_11
# %bb.10:
	xorl	%ebp, %ebp
.LBB39_21:
	movq	%rbp, (%r9)
	testq	%r14, %r14
	je	.LBB39_38
# %bb.22:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	movq	%r9, %rbx
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	jmp	.LBB39_39
.LBB39_5:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB39_6
	.p2align	4
.LBB39_8:                               #   in Loop: Header=BB39_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB39_9
.LBB39_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_7 Depth 2
	cmpb	$0, (%r14,%rax)
	sete	%dl
	cmpq	%rbx, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB39_8
	.p2align	4
.LBB39_7:                               #   Parent Loop BB39_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB39_7
	jmp	.LBB39_8
.LBB39_11:
	movl	$2, %r15d
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	jmp	.LBB39_12
	.p2align	4
.LBB39_18:                              #   in Loop: Header=BB39_12 Depth=1
	movl	%r12d, (%r13)
	shrq	$32, %r12
	movb	%r12b, 4(%r13)
	addq	$5, %r13
	movq	%r13, 8(%r9)
.LBB39_19:                              #   in Loop: Header=BB39_12 Depth=1
	movq	%r10, %rbp
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	ja	.LBB39_21
.LBB39_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_29 Depth 2
	cmpb	$0, (%r14,%r15)
	je	.LBB39_19
# %bb.13:                               #   in Loop: Header=BB39_12 Depth=1
	testl	%r15d, %r15d
	je	.LBB39_41
# %bb.14:                               #   in Loop: Header=BB39_12 Depth=1
	movl	%r15d, %edi
	negl	%edi
	cmovsl	%r15d, %edi
	xorl	%eax, %eax
	lzcntl	%edi, %eax
	movl	%eax, %ecx
	xorl	$31, %ecx
	blsrl	%edi, %edx
	jne	.LBB39_16
# %bb.15:                               #   in Loop: Header=BB39_12 Depth=1
	movl	%r15d, %eax
	shrl	$24, %eax
	andl	$-128, %eax
	orl	%eax, %ecx
	xorl	%eax, %eax
	jmp	.LBB39_17
	.p2align	4
.LBB39_16:                              #   in Loop: Header=BB39_12 Depth=1
	testl	%r15d, %r15d
	setns	%sil
	movb	$30, %dl
	subb	%al, %dl
	movl	$1, %eax
	shlxl	%edx, %eax, %edx
	xorl	%eax, %eax
	#APP
	divl	%edi
	#NO_APP
                                        # kill: def $eax killed $eax def $rax
                                        # kill: def $edx killed $edx def $rdx
	leal	(%rdx,%rdx), %r8d
	cmpl	%edi, %r8d
	setae	%dil
	testl	%edx, %edx
	sets	%dl
	orb	%dil, %dl
	movzbl	%dl, %edx
	leal	(%rdx,%rax,2), %eax
	incl	%eax
	shlb	$7, %sil
	orb	%cl, %sil
	addb	$-64, %sil
	movl	%esi, %ecx
.LBB39_17:                              #   in Loop: Header=BB39_12 Depth=1
	movzbl	%cl, %ecx
	shlq	$32, %rcx
	movl	%eax, %r12d
	orq	%rcx, %r12
	cmpq	16(%r9), %r13
	jne	.LBB39_18
# %bb.23:                               #   in Loop: Header=BB39_12 Depth=1
	movq	%r13, %rsi
	movq	%r10, (%rsp)                    # 8-byte Spill
	subq	%r10, %rsi
	movabsq	$9223372036854775805, %rax      # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rsi
	je	.LBB39_24
# %bb.26:                               #   in Loop: Header=BB39_12 Depth=1
	movq	%rsi, %rax
	movabsq	$-3689348814741910323, %rcx     # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movabsq	$1844674407370955161, %rsi      # imm = 0x1999999999999999
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,4), %rdi
.Ltmp261:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp262:
# %bb.27:                               #   in Loop: Header=BB39_12 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%r12d, (%rax,%rsi)
	shrq	$32, %r12
	movb	%r12b, 4(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB39_30
# %bb.28:                               #   in Loop: Header=BB39_12 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB39_29:                              #   Parent Loop BB39_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4(%rax), %ecx
	movb	%cl, 4(%r12)
	movl	(%rax), %ecx
	movl	%ecx, (%r12)
	addq	$5, %rax
	addq	$5, %r12
	cmpq	%r13, %rax
	jne	.LBB39_29
.LBB39_30:                              #   in Loop: Header=BB39_12 Depth=1
	testq	%rdi, %rdi
	je	.LBB39_32
# %bb.31:                               #   in Loop: Header=BB39_12 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB39_32:                              #   in Loop: Header=BB39_12 Depth=1
	addq	$5, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	jbe	.LBB39_12
	jmp	.LBB39_21
.LBB39_38:
	movq	%r9, %rax
.LBB39_39:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB39_41:
	.cfi_def_cfa_offset 96
	movq	%r10, (%r9)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s32_genEii(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1455, %edx                     # imm = 0x5AF
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB39_24:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp264:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp265:
# %bb.25:
.LBB39_40:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB39_34:
.Ltmp266:
	movq	%rax, %rbx
	jmp	.LBB39_35
.LBB39_33:
.Ltmp263:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB39_35:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB39_37
# %bb.36:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB39_37:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end39:
	.size	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_, .Lfunc_end39-_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table39:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp261-.Lfunc_begin18        #   Call between .Lfunc_begin18 and .Ltmp261
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin18        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin18        #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin18        # >> Call Site 4 <<
	.uleb128 .Lfunc_end39-.Ltmp265          #   Call between .Ltmp265 and .Lfunc_end39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI40_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB40_2
	.p2align	4
.LBB40_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovgel	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB40_1
.LBB40_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI40_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end40:
	.size	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end40-_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_ # -- Begin function _Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_,@function
_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_: # @_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %r8
	movq	8(%rsi), %rsi
	xorl	%ecx, %ecx
	cmpq	%rsi, %r8
	je	.LBB41_3
	.p2align	4
.LBB41_1:                               # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	cltd
	idivl	(%r8)
	cltq
	addq	%rax, %rcx
	addq	$4, %r8
	cmpq	%rsi, %r8
	jne	.LBB41_1
.LBB41_3:
	movq	%rcx, %rax
	retq
.Lfunc_end41:
	.size	_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_, .Lfunc_end41-_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	cmpq	%rdx, %rcx
	je	.LBB42_1
# %bb.3:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movslq	%edi, %rsi
	xorl	%r8d, %r8d
	testl	%esi, %esi
	js	.LBB42_7
# %bb.4:
	xorl	%eax, %eax
	jmp	.LBB42_5
	.p2align	4
.LBB42_12:                              #   in Loop: Header=BB42_5 Depth=1
	imulq	%rsi, %r10
	shrq	$32, %r10
	movl	%ebx, %r11d
	sarb	$7, %r11b
	movsbl	%r11b, %ebp
	movl	%edi, %r11d
	xorl	%ebp, %r11d
	subl	%ebp, %r11d
	testb	$64, %bl
	cmovel	%r8d, %r11d
	addl	%r10d, %r11d
	sarxl	%r9d, %r11d, %r9d
	shrl	$31, %r11d
	addl	%r9d, %r11d
.LBB42_13:                              #   in Loop: Header=BB42_5 Depth=1
	movslq	%r11d, %r9
	addq	%r9, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	je	.LBB42_14
.LBB42_5:                               # =>This Inner Loop Header: Depth=1
	movslq	(%rcx), %r10
	movzbl	4(%rcx), %ebx
	movl	%ebx, %r9d
	andl	$31, %r9d
	testq	%r10, %r10
	jne	.LBB42_12
# %bb.6:                                #   in Loop: Header=BB42_5 Depth=1
	sarb	$7, %bl
	movsbl	%bl, %r10d
	shrxl	%r9d, %edi, %r11d
	xorl	%r10d, %r11d
	subl	%r10d, %r11d
	jmp	.LBB42_13
.LBB42_1:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r14
	xorl	%eax, %eax
	retq
.LBB42_7:
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %rbp, -16
	.cfi_offset %r14, -24
	movl	$-1, %r9d
	xorl	%eax, %eax
	jmp	.LBB42_8
	.p2align	4
.LBB42_9:                               #   in Loop: Header=BB42_8 Depth=1
	imulq	%rsi, %rbx
	shrq	$32, %rbx
	movl	%ebp, %r11d
	sarb	$7, %r11b
	movsbl	%r11b, %r14d
	movl	%edi, %r11d
	xorl	%r14d, %r11d
	subl	%r14d, %r11d
	testb	$64, %bpl
	cmovel	%r8d, %r11d
	addl	%ebx, %r11d
	sarxl	%r10d, %r11d, %r10d
	shrl	$31, %r11d
	addl	%r10d, %r11d
.LBB42_11:                              #   in Loop: Header=BB42_8 Depth=1
	movslq	%r11d, %r10
	addq	%r10, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	je	.LBB42_14
.LBB42_8:                               # =>This Inner Loop Header: Depth=1
	movslq	(%rcx), %rbx
	movzbl	4(%rcx), %ebp
	movl	%ebp, %r10d
	andl	$31, %r10d
	testq	%rbx, %rbx
	jne	.LBB42_9
# %bb.10:                               #   in Loop: Header=BB42_8 Depth=1
	sarb	$7, %bpl
	movsbl	%bpl, %ebx
	shlxl	%r10d, %r9d, %r11d
	notl	%r11d
	addl	%edi, %r11d
	sarxl	%r10d, %r11d, %r11d
	xorl	%ebx, %r11d
	subl	%ebx, %r11d
	jmp	.LBB42_11
.LBB42_14:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
	retq
.Lfunc_end42:
	.size	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end42-_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	cmpq	%rdx, %rcx
	je	.LBB43_1
# %bb.3:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movslq	%edi, %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	.p2align	4
.LBB43_4:                               # =>This Inner Loop Header: Depth=1
	movzbl	4(%rcx), %r8d
	movl	%r8d, %r9d
	sarb	$7, %r9b
	movsbl	%r9b, %r9d
	movslq	(%rcx), %r10
	movq	%r10, %r11
	imulq	%rsi, %r11
	shrq	$32, %r11
	addl	%esi, %r11d
	shlxl	%r8d, %edi, %ebx
	cmpq	$1, %r10
	sbbl	$0, %ebx
	movl	%r11d, %r10d
	sarl	$31, %r10d
	andl	%ebx, %r10d
	addl	%r11d, %r10d
	sarxl	%r8d, %r10d, %r8d
	xorl	%r9d, %r8d
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	addq	%r8, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	jne	.LBB43_4
# %bb.5:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB43_1:
	xorl	%eax, %eax
	retq
.Lfunc_end43:
	.size	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end43-_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesImmESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesImmESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesImmESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesImmESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesImmESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesImmESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesImmESt6vectorIT_SaIS1_EET0_
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	incq	%r14
	js	.LBB44_33
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB44_2
# %bb.3:
	movq	%r14, %rdi
	callq	_Znwm@PLT
	movq	%rax, %rbx
	addq	%r14, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rbx, %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	memset@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpq	$4, %r12
	jae	.LBB44_4
.LBB44_8:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpq	$2, %r12
	jae	.LBB44_10
# %bb.9:
	xorl	%ebp, %ebp
.LBB44_16:
	movq	%rbp, (%rdi)
	movq	(%rsp), %rsi                    # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r14, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB44_10:
	.cfi_def_cfa_offset 80
	movl	$2, %r15d
	xorl	%r13d, %r13d
	movabsq	$1152921504606846975, %rdx      # imm = 0xFFFFFFFFFFFFFFF
	xorl	%r14d, %r14d
	jmp	.LBB44_11
	.p2align	4
.LBB44_13:                              #   in Loop: Header=BB44_11 Depth=1
	movq	%r15, (%r13)
	addq	$8, %r13
	movq	%r13, 8(%rdi)
.LBB44_14:                              #   in Loop: Header=BB44_11 Depth=1
	movq	%r14, %rbp
	incq	%r15
	movq	%rbp, %r14
	cmpq	%r12, %r15
	ja	.LBB44_16
.LBB44_11:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbx,%r15)
	je	.LBB44_14
# %bb.12:                               #   in Loop: Header=BB44_11 Depth=1
	cmpq	16(%rdi), %r13
	jne	.LBB44_13
# %bb.17:                               #   in Loop: Header=BB44_11 Depth=1
	subq	%r14, %r13
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	je	.LBB44_18
# %bb.20:                               #   in Loop: Header=BB44_11 Depth=1
	movq	%r13, %rax
	sarq	$3, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rsi
	cmpq	%rdx, %rsi
	jb	.LBB44_22
# %bb.21:                               #   in Loop: Header=BB44_11 Depth=1
	movq	%rdx, %rsi
.LBB44_22:                              #   in Loop: Header=BB44_11 Depth=1
	addq	%rax, %rcx
	cmovbq	%rdx, %rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	leaq	(,%rsi,8), %rdi
.Ltmp267:
	callq	_Znwm@PLT
.Ltmp268:
# %bb.23:                               #   in Loop: Header=BB44_11 Depth=1
	movq	%rax, %rbp
	movq	%r15, (%rax,%r13)
	testq	%r13, %r13
	jle	.LBB44_25
# %bb.24:                               #   in Loop: Header=BB44_11 Depth=1
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memmove@PLT
.LBB44_25:                              #   in Loop: Header=BB44_11 Depth=1
	testq	%r14, %r14
	je	.LBB44_27
# %bb.26:                               #   in Loop: Header=BB44_11 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_ZdlPvm@PLT
.LBB44_27:                              #   in Loop: Header=BB44_11 Depth=1
	addq	%rbp, %r13
	addq	$8, %r13
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%r13, 8(%rdi)
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(,%rax,8), %rax
	addq	%rbp, %rax
	movq	%rax, 16(%rdi)
	movabsq	$1152921504606846975, %rdx      # imm = 0xFFFFFFFFFFFFFFF
	incq	%r15
	movq	%rbp, %r14
	cmpq	%r12, %r15
	jbe	.LBB44_11
	jmp	.LBB44_16
.LBB44_2:
	xorl	%ebx, %ebx
	movq	$0, (%rsp)                      # 8-byte Folded Spill
.LBB44_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB44_5
	.p2align	4
.LBB44_7:                               #   in Loop: Header=BB44_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB44_8
.LBB44_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_6 Depth 2
	cmpb	$0, (%rbx,%rax)
	sete	%dl
	cmpq	%r12, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB44_7
	.p2align	4
.LBB44_6:                               #   Parent Loop BB44_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB44_6
	jmp	.LBB44_7
.LBB44_18:
	movq	%r14, (%rdi)
.Ltmp270:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp271:
# %bb.19:
.LBB44_33:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB44_29:
.Ltmp272:
	movq	%rax, %r12
	jmp	.LBB44_30
.LBB44_28:
.Ltmp269:
	movq	%rax, %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%r14, (%rax)
.LBB44_30:
	testq	%r14, %r14
	je	.LBB44_32
# %bb.31:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_ZdlPvm@PLT
.LBB44_32:
	movq	(%rsp), %rsi                    # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r12, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end44:
	.size	_Z10get_primesImmESt6vectorIT_SaIS1_EET0_, .Lfunc_end44-_Z10get_primesImmESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesImmESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesImmESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table44:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Lfunc_begin19-.Lfunc_begin19  # >> Call Site 1 <<
	.uleb128 .Ltmp267-.Lfunc_begin19        #   Call between .Lfunc_begin19 and .Ltmp267
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin19        #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin19        # >> Call Site 3 <<
	.uleb128 .Ltmp270-.Ltmp268              #   Call between .Ltmp268 and .Ltmp270
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin19        # >> Call Site 4 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin19        #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin19        # >> Call Site 5 <<
	.uleb128 .Lfunc_end44-.Ltmp271          #   Call between .Ltmp271 and .Lfunc_end44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m
.LCPI45_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB45_2
	.p2align	4
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovaeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB45_1
.LBB45_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI45_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end45:
	.size	_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m, .Lfunc_end45-_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	incq	%r14
	js	.LBB46_39
# %bb.1:
	movq	%rsi, %r12
	je	.LBB46_2
# %bb.3:
	movq	%rdi, %r13
	movq	%r14, %rdi
	callq	_Znwm@PLT
	movq	%rax, %rbx
	leaq	(%rax,%r14), %r15
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	memset@PLT
	movq	%r13, %rdi
	cmpq	$4, %r12
	jae	.LBB46_4
.LBB46_8:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpq	$2, %r12
	jb	.LBB46_21
# %bb.9:
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movl	$2, %r15d
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB46_10
	.p2align	4
.LBB46_18:                              #   in Loop: Header=BB46_10 Depth=1
	movq	%rax, (%rbp)
	movb	%sil, 8(%rbp)
	addq	$9, %rbp
	movq	%rbp, 8(%rdi)
.LBB46_19:                              #   in Loop: Header=BB46_10 Depth=1
	incq	%r15
	cmpq	%r12, %r15
	ja	.LBB46_20
.LBB46_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_28 Depth 2
	cmpb	$0, (%rbx,%r15)
	je	.LBB46_19
# %bb.11:                               #   in Loop: Header=BB46_10 Depth=1
	testq	%r15, %r15
	je	.LBB46_40
# %bb.12:                               #   in Loop: Header=BB46_10 Depth=1
	xorl	%esi, %esi
	lzcntq	%r15, %rsi
	xorl	$63, %esi
	blsrq	%r15, %rax
	jne	.LBB46_14
# %bb.13:                               #   in Loop: Header=BB46_10 Depth=1
	xorl	%eax, %eax
	cmpq	16(%rdi), %rbp
	jne	.LBB46_18
	jmp	.LBB46_22
	.p2align	4
.LBB46_14:                              #   in Loop: Header=BB46_10 Depth=1
	movl	$1, %eax
	shlxq	%rsi, %rax, %rcx
	xorl	%eax, %eax
	movq	%rcx, %rdx
	#APP
	divq	%r15
	#NO_APP
	movq	%r15, %r8
	subq	%rdx, %r8
	cmpq	%rcx, %r8
	jb	.LBB46_16
# %bb.15:                               #   in Loop: Header=BB46_10 Depth=1
	leaq	(%rdx,%rdx), %rcx
	cmpq	%r15, %rcx
	setae	%r8b
	testq	%rdx, %rdx
	sets	%cl
	orb	%r8b, %cl
	movzbl	%cl, %ecx
	leaq	(%rcx,%rax,2), %rax
	orb	$64, %sil
.LBB46_16:                              #   in Loop: Header=BB46_10 Depth=1
	incq	%rax
	cmpq	16(%rdi), %rbp
	jne	.LBB46_18
.LBB46_22:                              #   in Loop: Header=BB46_10 Depth=1
	movq	%rax, %r13
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%rbp, %rsi
	movq	%r14, (%rsp)                    # 8-byte Spill
	subq	%r14, %rsi
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rsi
	je	.LBB46_23
# %bb.25:                               #   in Loop: Header=BB46_10 Depth=1
	movq	%rsi, %rax
	movabsq	$-8198552921648689607, %rcx     # imm = 0x8E38E38E38E38E39
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rsi, %r14
	movabsq	$1024819115206086200, %rsi      # imm = 0xE38E38E38E38E38
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,8), %rdi
.Ltmp273:
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
	movq	%rax, %rdx
.Ltmp274:
# %bb.26:                               #   in Loop: Header=BB46_10 Depth=1
	movq	%r13, (%rdx,%r14)
	movq	32(%rsp), %rax                  # 8-byte Reload
	movb	%al, 8(%rdx,%r14)
	movq	%rdx, %r13
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%rbp, %rdi
	je	.LBB46_29
# %bb.27:                               #   in Loop: Header=BB46_10 Depth=1
	movq	%rdx, %r13
	movq	%rdi, %rax
	.p2align	4
.LBB46_28:                              #   Parent Loop BB46_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	8(%rax), %ecx
	movb	%cl, 8(%r13)
	movq	(%rax), %rcx
	movq	%rcx, (%r13)
	addq	$9, %rax
	addq	$9, %r13
	cmpq	%rbp, %rax
	jne	.LBB46_28
.LBB46_29:                              #   in Loop: Header=BB46_10 Depth=1
	testq	%rdi, %rdi
	je	.LBB46_31
# %bb.30:                               #   in Loop: Header=BB46_10 Depth=1
	movq	%r14, %rsi
	movq	%rdx, %r14
	callq	_ZdlPvm@PLT
	movq	%r14, %rdx
.LBB46_31:                              #   in Loop: Header=BB46_10 Depth=1
	addq	$9, %r13
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, 8(%rdi)
	movq	%rdx, %rax
	addq	24(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%rdi)
	movq	%r13, %rbp
	movq	%rdx, %r14
	jmp	.LBB46_19
.LBB46_20:
	movq	%r14, (%rdi)
	testq	%rbx, %rbx
	movq	8(%rsp), %r15                   # 8-byte Reload
	je	.LBB46_37
.LBB46_21:
	subq	%rbx, %r15
	movq	%rdi, %r14
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
	movq	%r14, %rax
.LBB46_38:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB46_2:
	.cfi_def_cfa_offset 96
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
.LBB46_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB46_5
	.p2align	4
.LBB46_7:                               #   in Loop: Header=BB46_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB46_8
.LBB46_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_6 Depth 2
	cmpb	$0, (%rbx,%rax)
	sete	%dl
	cmpq	%r12, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB46_7
	.p2align	4
.LBB46_6:                               #   Parent Loop BB46_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB46_6
	jmp	.LBB46_7
.LBB46_37:
	movq	%rdi, %rax
	jmp	.LBB46_38
.LBB46_40:
	movq	%r14, (%rdi)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1104, %edx                     # imm = 0x450
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB46_23:
	movq	%rsi, %r14
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%rax, (%rdi)
.Ltmp276:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp277:
# %bb.24:
.LBB46_39:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB46_33:
.Ltmp278:
	movq	%rax, %r15
	jmp	.LBB46_34
.LBB46_32:
.Ltmp275:
	movq	%rax, %r15
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB46_34:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB46_36
# %bb.35:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r14, %rsi
	callq	_ZdlPvm@PLT
.LBB46_36:
	movq	8(%rsp), %rsi                   # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end46:
	.size	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_, .Lfunc_end46-_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table46:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp273-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp273
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin20        #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin20        #     jumps to .Ltmp278
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin20        # >> Call Site 4 <<
	.uleb128 .Lfunc_end46-.Ltmp277          #   Call between .Ltmp277 and .Lfunc_end46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI47_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB47_2
	.p2align	4
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovaeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB47_1
.LBB47_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI47_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end47:
	.size	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end47-_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception21
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	incq	%r13
	js	.LBB48_40
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, %r14
	je	.LBB48_2
# %bb.3:
	movq	%r13, %rdi
	callq	_Znwm@PLT
	movq	%rax, %rbx
	leaq	(%rax,%r13), %r15
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%r13, %rdx
	callq	memset@PLT
	cmpq	$4, %r12
	jae	.LBB48_4
.LBB48_8:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	cmpq	$2, %r12
	jb	.LBB48_23
# %bb.9:
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movl	$2, %r15d
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB48_10
	.p2align	4
.LBB48_20:                              #   in Loop: Header=BB48_10 Depth=1
	movq	%rax, (%rbp)
	movb	%r13b, 8(%rbp)
	addq	$9, %rbp
	movq	%rbp, 8(%r14)
.LBB48_21:                              #   in Loop: Header=BB48_10 Depth=1
	incq	%r15
	cmpq	%r12, %r15
	ja	.LBB48_22
.LBB48_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_31 Depth 2
	cmpb	$0, (%rbx,%r15)
	je	.LBB48_21
# %bb.11:                               #   in Loop: Header=BB48_10 Depth=1
	testq	%r15, %r15
	je	.LBB48_15
# %bb.12:                               #   in Loop: Header=BB48_10 Depth=1
	cmpq	$1, %r15
	je	.LBB48_13
# %bb.16:                               #   in Loop: Header=BB48_10 Depth=1
	xorl	%ecx, %ecx
	lzcntq	%r15, %rcx
	blsrq	%r15, %rax
	jne	.LBB48_18
# %bb.17:                               #   in Loop: Header=BB48_10 Depth=1
	movb	$62, %r13b
	subb	%cl, %r13b
	xorl	%eax, %eax
	cmpq	16(%r14), %rbp
	jne	.LBB48_20
	jmp	.LBB48_25
	.p2align	4
.LBB48_18:                              #   in Loop: Header=BB48_10 Depth=1
	xorb	$63, %cl
	movl	$1, %eax
	shlxq	%rcx, %rax, %rdx
	xorl	%eax, %eax
	#APP
	divq	%r15
	#NO_APP
	leaq	(%rdx,%rdx), %rsi
	cmpq	%r15, %rsi
	setae	%sil
	testq	%rdx, %rdx
	sets	%dl
	orb	%sil, %dl
	movzbl	%dl, %edx
	leaq	(%rdx,%rax,2), %rax
	incq	%rax
	movl	%ecx, %r13d
	cmpq	16(%r14), %rbp
	jne	.LBB48_20
.LBB48_25:                              #   in Loop: Header=BB48_10 Depth=1
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rbp, %rsi
	movq	%rdi, (%rsp)                    # 8-byte Spill
	subq	%rdi, %rsi
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rsi
	je	.LBB48_26
# %bb.28:                               #   in Loop: Header=BB48_10 Depth=1
	movq	%rsi, %rax
	movabsq	$-8198552921648689607, %rcx     # imm = 0x8E38E38E38E38E39
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rsi, %r14
	movabsq	$1024819115206086200, %rsi      # imm = 0xE38E38E38E38E38
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,8), %rdi
.Ltmp279:
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp280:
# %bb.29:                               #   in Loop: Header=BB48_10 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax,%r14)
	movb	%r13b, 8(%rax,%r14)
	movq	%rax, %r13
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%rbp, %rdi
	je	.LBB48_32
# %bb.30:                               #   in Loop: Header=BB48_10 Depth=1
	movq	%rax, %r13
	movq	%rdi, %rdx
	.p2align	4
.LBB48_31:                              #   Parent Loop BB48_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	8(%rdx), %ecx
	movb	%cl, 8(%r13)
	movq	(%rdx), %rcx
	movq	%rcx, (%r13)
	addq	$9, %rdx
	addq	$9, %r13
	cmpq	%rbp, %rdx
	jne	.LBB48_31
.LBB48_32:                              #   in Loop: Header=BB48_10 Depth=1
	testq	%rdi, %rdi
	je	.LBB48_34
# %bb.33:                               #   in Loop: Header=BB48_10 Depth=1
	movq	%r14, %rsi
	movq	%rax, %r14
	callq	_ZdlPvm@PLT
	movq	%r14, %rax
.LBB48_34:                              #   in Loop: Header=BB48_10 Depth=1
	addq	$9, %r13
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	%r13, 8(%r14)
	movq	%rax, %rdx
	addq	24(%rsp), %rdx                  # 8-byte Folded Reload
	movq	%rdx, 16(%r14)
	movq	%r13, %rbp
	movq	%rax, %rdi
	jmp	.LBB48_21
.LBB48_22:
	movq	%rdi, (%r14)
	testq	%rbx, %rbx
	movq	8(%rsp), %r15                   # 8-byte Reload
	je	.LBB48_24
.LBB48_23:
	subq	%rbx, %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB48_24:
	movq	%r14, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB48_2:
	.cfi_def_cfa_offset 96
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
.LBB48_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB48_5
	.p2align	4
.LBB48_7:                               #   in Loop: Header=BB48_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB48_8
.LBB48_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_6 Depth 2
	cmpb	$0, (%rbx,%rax)
	sete	%dl
	cmpq	%r12, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB48_7
	.p2align	4
.LBB48_6:                               #   Parent Loop BB48_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB48_6
	jmp	.LBB48_7
.LBB48_13:
	movq	%rdi, (%r14)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL28libdivide_u64_branchfree_genEm(%rip), %rcx
	leaq	.L.str.27(%rip), %r8
	movl	$1160, %edx                     # imm = 0x488
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB48_15:
	movq	%rdi, (%r14)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1104, %edx                     # imm = 0x450
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB48_26:
	movq	%rsi, %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%rax, (%r14)
.Ltmp282:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp283:
# %bb.27:
.LBB48_40:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB48_36:
.Ltmp284:
	movq	%rax, %r15
	jmp	.LBB48_37
.LBB48_35:
.Ltmp281:
	movq	%r14, %r12
	movq	%rax, %r15
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB48_37:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB48_39
# %bb.38:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r12, %rsi
	callq	_ZdlPvm@PLT
.LBB48_39:
	movq	8(%rsp), %rsi                   # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end48:
	.size	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_, .Lfunc_end48-_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table48:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Lfunc_begin21-.Lfunc_begin21  # >> Call Site 1 <<
	.uleb128 .Ltmp279-.Lfunc_begin21        #   Call between .Lfunc_begin21 and .Ltmp279
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin21        #     jumps to .Ltmp281
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin21        # >> Call Site 3 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin21        #     jumps to .Ltmp284
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin21        # >> Call Site 4 <<
	.uleb128 .Lfunc_end48-.Ltmp283          #   Call between .Ltmp283 and .Lfunc_end48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI49_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB49_2
	.p2align	4
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovaeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB49_1
.LBB49_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI49_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end49:
	.size	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end49-_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_ # -- Begin function _Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_,@function
_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_: # @_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %r8
	movq	8(%rsi), %rsi
	xorl	%ecx, %ecx
	jmp	.LBB50_1
	.p2align	4
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%r9
.LBB50_5:                               #   in Loop: Header=BB50_1 Depth=1
	addq	%rax, %rcx
	addq	$8, %r8
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %r8
	je	.LBB50_6
# %bb.2:                                #   in Loop: Header=BB50_1 Depth=1
	movq	(%r8), %r9
	movq	%rdi, %rax
	orq	%r9, %rax
	shrq	$32, %rax
	jne	.LBB50_4
# %bb.3:                                #   in Loop: Header=BB50_1 Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%r9d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB50_5
.LBB50_6:
	movq	%rcx, %rax
	retq
.Lfunc_end50:
	.size	_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_, .Lfunc_end50-_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.LBB51_1
	.p2align	4
.LBB51_3:                               #   in Loop: Header=BB51_1 Depth=1
	shrxq	%r8, %rdi, %rdx
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
	addq	%rdx, %rax
	addq	$9, %rcx
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	je	.LBB51_8
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
	movq	(%rcx), %rdx
	movzbl	8(%rcx), %r8d
	testq	%rdx, %rdx
	je	.LBB51_3
# %bb.4:                                #   in Loop: Header=BB51_1 Depth=1
	mulxq	%rdi, %rdx, %rdx
	testb	$64, %r8b
	jne	.LBB51_5
# %bb.6:                                #   in Loop: Header=BB51_1 Depth=1
	shrxq	%r8, %rdx, %rdx
	jmp	.LBB51_7
	.p2align	4
.LBB51_5:                               #   in Loop: Header=BB51_1 Depth=1
	movq	%rdi, %r9
	subq	%rdx, %r9
	shrq	%r9
	addq	%rdx, %r9
	shrxq	%r8, %r9, %rdx
	jmp	.LBB51_7
.LBB51_8:
	retq
.Lfunc_end51:
	.size	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end51-_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rsi
	cmpq	%rsi, %rcx
	je	.LBB52_1
# %bb.3:
	movq	%rdi, %rdx
	xorl	%eax, %eax
	.p2align	4
.LBB52_4:                               # =>This Inner Loop Header: Depth=1
	mulxq	(%rcx), %rdi, %rdi
	movq	%rdx, %r8
	subq	%rdi, %r8
	shrq	%r8
	addq	%rdi, %r8
	movzbl	8(%rcx), %edi
	shrxq	%rdi, %r8, %rdi
	addq	%rdi, %rax
	addq	$9, %rcx
	cmpq	%rsi, %rcx
	jne	.LBB52_4
# %bb.2:
	retq
.LBB52_1:
	xorl	%eax, %eax
	retq
.Lfunc_end52:
	.size	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end52-_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIllESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesIllESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesIllESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesIllESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesIllESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesIllESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesIllESt6vectorIT_SaIS1_EET0_
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception22
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	incq	%r14
	js	.LBB53_33
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB53_2
# %bb.3:
	movq	%r14, %rdi
	callq	_Znwm@PLT
	movq	%rax, %rbx
	addq	%r14, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rbx, %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	memset@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpq	$4, %r12
	jae	.LBB53_4
.LBB53_8:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpq	$2, %r12
	jae	.LBB53_10
# %bb.9:
	xorl	%ebp, %ebp
.LBB53_16:
	movq	%rbp, (%rdi)
	movq	(%rsp), %rsi                    # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r14, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB53_10:
	.cfi_def_cfa_offset 80
	movl	$2, %r15d
	xorl	%r13d, %r13d
	movabsq	$1152921504606846975, %rdx      # imm = 0xFFFFFFFFFFFFFFF
	xorl	%r14d, %r14d
	jmp	.LBB53_11
	.p2align	4
.LBB53_13:                              #   in Loop: Header=BB53_11 Depth=1
	movq	%r15, (%r13)
	addq	$8, %r13
	movq	%r13, 8(%rdi)
.LBB53_14:                              #   in Loop: Header=BB53_11 Depth=1
	movq	%r14, %rbp
	incq	%r15
	movq	%rbp, %r14
	cmpq	%r12, %r15
	ja	.LBB53_16
.LBB53_11:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbx,%r15)
	je	.LBB53_14
# %bb.12:                               #   in Loop: Header=BB53_11 Depth=1
	cmpq	16(%rdi), %r13
	jne	.LBB53_13
# %bb.17:                               #   in Loop: Header=BB53_11 Depth=1
	subq	%r14, %r13
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	je	.LBB53_18
# %bb.20:                               #   in Loop: Header=BB53_11 Depth=1
	movq	%r13, %rax
	sarq	$3, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rsi
	cmpq	%rdx, %rsi
	jb	.LBB53_22
# %bb.21:                               #   in Loop: Header=BB53_11 Depth=1
	movq	%rdx, %rsi
.LBB53_22:                              #   in Loop: Header=BB53_11 Depth=1
	addq	%rax, %rcx
	cmovbq	%rdx, %rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	leaq	(,%rsi,8), %rdi
.Ltmp285:
	callq	_Znwm@PLT
.Ltmp286:
# %bb.23:                               #   in Loop: Header=BB53_11 Depth=1
	movq	%rax, %rbp
	movq	%r15, (%rax,%r13)
	testq	%r13, %r13
	jle	.LBB53_25
# %bb.24:                               #   in Loop: Header=BB53_11 Depth=1
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memmove@PLT
.LBB53_25:                              #   in Loop: Header=BB53_11 Depth=1
	testq	%r14, %r14
	je	.LBB53_27
# %bb.26:                               #   in Loop: Header=BB53_11 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_ZdlPvm@PLT
.LBB53_27:                              #   in Loop: Header=BB53_11 Depth=1
	addq	%rbp, %r13
	addq	$8, %r13
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%r13, 8(%rdi)
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(,%rax,8), %rax
	addq	%rbp, %rax
	movq	%rax, 16(%rdi)
	movabsq	$1152921504606846975, %rdx      # imm = 0xFFFFFFFFFFFFFFF
	incq	%r15
	movq	%rbp, %r14
	cmpq	%r12, %r15
	jbe	.LBB53_11
	jmp	.LBB53_16
.LBB53_2:
	xorl	%ebx, %ebx
	movq	$0, (%rsp)                      # 8-byte Folded Spill
.LBB53_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB53_5
	.p2align	4
.LBB53_7:                               #   in Loop: Header=BB53_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB53_8
.LBB53_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB53_6 Depth 2
	cmpb	$0, (%rbx,%rax)
	sete	%dl
	cmpq	%r12, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB53_7
	.p2align	4
.LBB53_6:                               #   Parent Loop BB53_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB53_6
	jmp	.LBB53_7
.LBB53_18:
	movq	%r14, (%rdi)
.Ltmp288:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp289:
# %bb.19:
.LBB53_33:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB53_29:
.Ltmp290:
	movq	%rax, %r12
	jmp	.LBB53_30
.LBB53_28:
.Ltmp287:
	movq	%rax, %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%r14, (%rax)
.LBB53_30:
	testq	%r14, %r14
	je	.LBB53_32
# %bb.31:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_ZdlPvm@PLT
.LBB53_32:
	movq	(%rsp), %rsi                    # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r12, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end53:
	.size	_Z10get_primesIllESt6vectorIT_SaIS1_EET0_, .Lfunc_end53-_Z10get_primesIllESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIllESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesIllESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table53:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Lfunc_begin22-.Lfunc_begin22  # >> Call Site 1 <<
	.uleb128 .Ltmp285-.Lfunc_begin22        #   Call between .Lfunc_begin22 and .Ltmp285
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp287-.Lfunc_begin22        #     jumps to .Ltmp287
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin22        # >> Call Site 3 <<
	.uleb128 .Ltmp288-.Ltmp286              #   Call between .Ltmp286 and .Ltmp288
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin22        # >> Call Site 4 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp290-.Lfunc_begin22        #     jumps to .Ltmp290
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin22        # >> Call Site 5 <<
	.uleb128 .Lfunc_end53-.Ltmp289          #   Call between .Ltmp289 and .Lfunc_end53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m
.LCPI54_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB54_2
	.p2align	4
.LBB54_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovgeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB54_1
.LBB54_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI54_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end54:
	.size	_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m, .Lfunc_end54-_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception23
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	incq	%r14
	js	.LBB55_39
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB55_2
# %bb.3:
	movq	%r14, %rdi
	callq	_Znwm@PLT
	movq	%rax, %rbx
	leaq	(%rax,%r14), %r15
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	memset@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpq	$4, %r12
	jae	.LBB55_4
.LBB55_8:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpq	$2, %r12
	jb	.LBB55_21
# %bb.9:
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movl	$2, %r15d
	xorl	%ebp, %ebp
	xorl	%r8d, %r8d
	jmp	.LBB55_10
	.p2align	4
.LBB55_18:                              #   in Loop: Header=BB55_10 Depth=1
	movq	%r14, (%rbp)
	movb	%r13b, 8(%rbp)
	addq	$9, %rbp
	movq	%rbp, 8(%rdi)
.LBB55_19:                              #   in Loop: Header=BB55_10 Depth=1
	incq	%r15
	cmpq	%r12, %r15
	ja	.LBB55_20
.LBB55_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_28 Depth 2
	cmpb	$0, (%rbx,%r15)
	je	.LBB55_19
# %bb.11:                               #   in Loop: Header=BB55_10 Depth=1
	testq	%r15, %r15
	je	.LBB55_40
# %bb.12:                               #   in Loop: Header=BB55_10 Depth=1
	movq	%r15, %rsi
	negq	%rsi
	cmovsq	%r15, %rsi
	xorl	%eax, %eax
	lzcntq	%rsi, %rax
	movl	%eax, %r13d
	xorl	$63, %r13d
	blsrq	%rsi, %rcx
	jne	.LBB55_14
# %bb.13:                               #   in Loop: Header=BB55_10 Depth=1
	movq	%r15, %rax
	shrq	$56, %rax
	andl	$-128, %eax
	orl	%eax, %r13d
	xorl	%r14d, %r14d
	cmpq	16(%rdi), %rbp
	jne	.LBB55_18
	jmp	.LBB55_22
	.p2align	4
.LBB55_14:                              #   in Loop: Header=BB55_10 Depth=1
	movl	$62, %ecx
	subl	%eax, %ecx
	movl	$1, %eax
	shlxq	%rcx, %rax, %rdx
	xorl	%eax, %eax
	#APP
	divq	%rsi
	#NO_APP
	movq	%rax, %r14
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrxq	%r13, %rax, %rax
	testq	%rax, %rax
	je	.LBB55_16
# %bb.15:                               #   in Loop: Header=BB55_10 Depth=1
	leaq	(%rdx,%rdx), %rax
	cmpq	%rsi, %rax
	setae	%al
	testq	%rdx, %rdx
	sets	%cl
	orb	%al, %cl
	movzbl	%cl, %eax
	leaq	(%rax,%r14,2), %r14
	orb	$64, %r13b
	movl	%r13d, %ecx
.LBB55_16:                              #   in Loop: Header=BB55_10 Depth=1
	leaq	1(%r14), %rax
	movzbl	%cl, %edx
	orb	$-128, %cl
	testq	%r15, %r15
	notq	%r14
	movzbl	%cl, %r13d
	cmovnsl	%edx, %r13d
	cmovnsq	%rax, %r14
	cmpq	16(%rdi), %rbp
	jne	.LBB55_18
.LBB55_22:                              #   in Loop: Header=BB55_10 Depth=1
	movq	%rbp, %rsi
	movq	%r8, (%rsp)                     # 8-byte Spill
	subq	%r8, %rsi
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rsi
	je	.LBB55_23
# %bb.25:                               #   in Loop: Header=BB55_10 Depth=1
	movq	%rsi, %rax
	movabsq	$-8198552921648689607, %rcx     # imm = 0x8E38E38E38E38E39
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movabsq	$1024819115206086200, %rsi      # imm = 0xE38E38E38E38E38
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,8), %rdi
.Ltmp291:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp292:
# %bb.26:                               #   in Loop: Header=BB55_10 Depth=1
	movq	%rax, %r8
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%r14, (%rax,%rsi)
	movb	%r13b, 8(%rax,%rsi)
	movq	%rax, %r14
	movq	(%rsp), %rdx                    # 8-byte Reload
	cmpq	%rbp, %rdx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	je	.LBB55_29
# %bb.27:                               #   in Loop: Header=BB55_10 Depth=1
	movq	%r8, %r14
	movq	%rdx, %rax
	.p2align	4
.LBB55_28:                              #   Parent Loop BB55_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	8(%rax), %ecx
	movb	%cl, 8(%r14)
	movq	(%rax), %rcx
	movq	%rcx, (%r14)
	addq	$9, %rax
	addq	$9, %r14
	cmpq	%rbp, %rax
	jne	.LBB55_28
.LBB55_29:                              #   in Loop: Header=BB55_10 Depth=1
	testq	%rdx, %rdx
	je	.LBB55_31
# %bb.30:                               #   in Loop: Header=BB55_10 Depth=1
	movq	%rdx, %rdi
	movq	%r8, %r13
	callq	_ZdlPvm@PLT
	movq	%r13, %r8
	movq	8(%rsp), %rdi                   # 8-byte Reload
.LBB55_31:                              #   in Loop: Header=BB55_10 Depth=1
	addq	$9, %r14
	movq	%r14, 8(%rdi)
	movq	%r8, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%rdi)
	movq	%r14, %rbp
	jmp	.LBB55_19
.LBB55_20:
	movq	%r8, (%rdi)
	testq	%rbx, %rbx
	movq	16(%rsp), %r15                  # 8-byte Reload
	je	.LBB55_37
.LBB55_21:
	subq	%rbx, %r15
	movq	%rdi, %r14
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
	movq	%r14, %rax
.LBB55_38:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB55_2:
	.cfi_def_cfa_offset 96
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
.LBB55_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB55_5
	.p2align	4
.LBB55_7:                               #   in Loop: Header=BB55_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB55_8
.LBB55_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_6 Depth 2
	cmpb	$0, (%rbx,%rax)
	sete	%dl
	cmpq	%r12, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB55_7
	.p2align	4
.LBB55_6:                               #   Parent Loop BB55_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB55_6
	jmp	.LBB55_7
.LBB55_37:
	movq	%rdi, %rax
	jmp	.LBB55_38
.LBB55_40:
	movq	%r8, (%rdi)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s64_genEli(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1627, %edx                     # imm = 0x65B
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB55_23:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp294:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp295:
# %bb.24:
.LBB55_39:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB55_33:
.Ltmp296:
	movq	%rax, %r14
	jmp	.LBB55_34
.LBB55_32:
.Ltmp293:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB55_34:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB55_36
# %bb.35:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB55_36:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end55:
	.size	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_, .Lfunc_end55-_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table55:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Lfunc_begin23-.Lfunc_begin23  # >> Call Site 1 <<
	.uleb128 .Ltmp291-.Lfunc_begin23        #   Call between .Lfunc_begin23 and .Ltmp291
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin23        #     jumps to .Ltmp293
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin23        # >> Call Site 3 <<
	.uleb128 .Ltmp295-.Ltmp294              #   Call between .Ltmp294 and .Ltmp295
	.uleb128 .Ltmp296-.Lfunc_begin23        #     jumps to .Ltmp296
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin23        # >> Call Site 4 <<
	.uleb128 .Lfunc_end55-.Ltmp295          #   Call between .Ltmp295 and .Lfunc_end55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI56_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB56_2
	.p2align	4
.LBB56_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovgeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB56_1
.LBB56_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI56_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end56:
	.size	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end56-_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception24
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	incq	%r14
	js	.LBB57_36
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, %r13
	je	.LBB57_2
# %bb.3:
	movq	%r14, %rdi
	callq	_Znwm@PLT
	movq	%rax, %rbx
	leaq	(%rax,%r14), %r15
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	memset@PLT
	cmpq	$4, %r12
	jae	.LBB57_4
.LBB57_8:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r13)
	movq	$0, 16(%r13)
	cmpq	$2, %r12
	jb	.LBB57_19
# %bb.9:
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movl	$2, %r15d
	xorl	%ebp, %ebp
	xorl	%r8d, %r8d
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB57_10
	.p2align	4
.LBB57_16:                              #   in Loop: Header=BB57_10 Depth=1
	movq	%rax, (%rbp)
	movb	%r14b, 8(%rbp)
	addq	$9, %rbp
	movq	%rbp, 8(%r13)
.LBB57_17:                              #   in Loop: Header=BB57_10 Depth=1
	incq	%r15
	cmpq	%r12, %r15
	ja	.LBB57_18
.LBB57_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_27 Depth 2
	cmpb	$0, (%rbx,%r15)
	je	.LBB57_17
# %bb.11:                               #   in Loop: Header=BB57_10 Depth=1
	testq	%r15, %r15
	je	.LBB57_37
# %bb.12:                               #   in Loop: Header=BB57_10 Depth=1
	movq	%r15, %rsi
	negq	%rsi
	cmovsq	%r15, %rsi
	xorl	%eax, %eax
	lzcntq	%rsi, %rax
	movl	%eax, %r14d
	xorl	$63, %r14d
	blsrq	%rsi, %rcx
	jne	.LBB57_14
# %bb.13:                               #   in Loop: Header=BB57_10 Depth=1
	movq	%r15, %rax
	shrq	$56, %rax
	andl	$-128, %eax
	orl	%eax, %r14d
	xorl	%eax, %eax
	cmpq	16(%r13), %rbp
	jne	.LBB57_16
	jmp	.LBB57_21
	.p2align	4
.LBB57_14:                              #   in Loop: Header=BB57_10 Depth=1
	testq	%r15, %r15
	setns	%cl
	movb	$62, %dl
	subb	%al, %dl
	movl	$1, %eax
	shlxq	%rdx, %rax, %rdx
	xorl	%eax, %eax
	#APP
	divq	%rsi
	#NO_APP
	leaq	(%rdx,%rdx), %rdi
	cmpq	%rsi, %rdi
	setae	%sil
	testq	%rdx, %rdx
	sets	%dl
	orb	%sil, %dl
	movzbl	%dl, %edx
	leaq	(%rdx,%rax,2), %rax
	incq	%rax
	shlb	$7, %cl
	orb	%r14b, %cl
	addb	$-64, %cl
	movl	%ecx, %r14d
	cmpq	16(%r13), %rbp
	jne	.LBB57_16
.LBB57_21:                              #   in Loop: Header=BB57_10 Depth=1
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rbp, %r13
	movq	%r8, (%rsp)                     # 8-byte Spill
	subq	%r8, %r13
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	je	.LBB57_22
# %bb.24:                               #   in Loop: Header=BB57_10 Depth=1
	movq	%r13, %rax
	movabsq	$-8198552921648689607, %rcx     # imm = 0x8E38E38E38E38E39
	imulq	%rcx, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rdx
	movabsq	$1024819115206086200, %rsi      # imm = 0xE38E38E38E38E38
	cmpq	%rsi, %rdx
	cmovaeq	%rsi, %rdx
	addq	%rax, %rcx
	cmovbq	%rsi, %rdx
	leaq	(%rdx,%rdx,8), %rdi
.Ltmp297:
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp298:
# %bb.25:                               #   in Loop: Header=BB57_10 Depth=1
	movq	%rax, %r8
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%r8,%r13)
	movb	%r14b, 8(%r8,%r13)
	movq	%r8, %r14
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%rbp, %rdi
	je	.LBB57_28
# %bb.26:                               #   in Loop: Header=BB57_10 Depth=1
	movq	%r8, %r14
	movq	%rdi, %rax
	.p2align	4
.LBB57_27:                              #   Parent Loop BB57_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	8(%rax), %ecx
	movb	%cl, 8(%r14)
	movq	(%rax), %rcx
	movq	%rcx, (%r14)
	addq	$9, %rax
	addq	$9, %r14
	cmpq	%rbp, %rax
	jne	.LBB57_27
.LBB57_28:                              #   in Loop: Header=BB57_10 Depth=1
	testq	%rdi, %rdi
	je	.LBB57_30
# %bb.29:                               #   in Loop: Header=BB57_10 Depth=1
	movq	%r13, %rsi
	movq	%r8, %r13
	callq	_ZdlPvm@PLT
	movq	%r13, %r8
.LBB57_30:                              #   in Loop: Header=BB57_10 Depth=1
	addq	$9, %r14
	movq	8(%rsp), %r13                   # 8-byte Reload
	movq	%r14, 8(%r13)
	movq	%r8, %rax
	addq	24(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r13)
	movq	%r14, %rbp
	jmp	.LBB57_17
.LBB57_18:
	movq	%r8, (%r13)
	testq	%rbx, %rbx
	movq	16(%rsp), %r15                  # 8-byte Reload
	je	.LBB57_20
.LBB57_19:
	subq	%rbx, %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB57_20:
	movq	%r13, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB57_2:
	.cfi_def_cfa_offset 96
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
.LBB57_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB57_5
	.p2align	4
.LBB57_7:                               #   in Loop: Header=BB57_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB57_8
.LBB57_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_6 Depth 2
	cmpb	$0, (%rbx,%rax)
	sete	%dl
	cmpq	%r12, %rcx
	seta	%sil
	orb	%dl, %sil
	jne	.LBB57_7
	.p2align	4
.LBB57_6:                               #   Parent Loop BB57_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB57_6
	jmp	.LBB57_7
.LBB57_37:
	movq	%r8, (%r13)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s64_genEli(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1627, %edx                     # imm = 0x65B
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB57_22:
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp300:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp301:
# %bb.23:
.LBB57_36:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB57_32:
.Ltmp302:
	movq	%rax, %r15
	jmp	.LBB57_33
.LBB57_31:
.Ltmp299:
	movq	%rax, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB57_33:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB57_35
# %bb.34:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r13, %rsi
	callq	_ZdlPvm@PLT
.LBB57_35:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end57:
	.size	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_, .Lfunc_end57-_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table57:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Lfunc_begin24-.Lfunc_begin24  # >> Call Site 1 <<
	.uleb128 .Ltmp297-.Lfunc_begin24        #   Call between .Lfunc_begin24 and .Ltmp297
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp297-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Ltmp298-.Ltmp297              #   Call between .Ltmp297 and .Ltmp298
	.uleb128 .Ltmp299-.Lfunc_begin24        #     jumps to .Ltmp299
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin24        # >> Call Site 3 <<
	.uleb128 .Ltmp301-.Ltmp300              #   Call between .Ltmp300 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin24        #     jumps to .Ltmp302
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin24        # >> Call Site 4 <<
	.uleb128 .Lfunc_end57-.Ltmp301          #   Call between .Ltmp301 and .Lfunc_end57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI58_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,"axG",@progbits,_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,comdat
	.weak	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.p2align	4
	.type	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m,@function
_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m: # @_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB58_2
	.p2align	4
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovgeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB58_1
.LBB58_2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI58_0(%rip), %xmm0, %xmm0
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end58:
	.size	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end58-_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_ # -- Begin function _Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_,@function
_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_: # @_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %r8
	movq	8(%rsi), %rsi
	xorl	%ecx, %ecx
	jmp	.LBB59_1
	.p2align	4
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	movq	%rdi, %rax
	cqto
	idivq	%r9
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	addq	%rax, %rcx
	addq	$8, %r8
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %r8
	je	.LBB59_6
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	movq	(%r8), %r9
	movq	%rdi, %rax
	orq	%r9, %rax
	shrq	$32, %rax
	jne	.LBB59_4
# %bb.3:                                #   in Loop: Header=BB59_1 Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%r9d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB59_5
.LBB59_6:
	movq	%rcx, %rax
	retq
.Lfunc_end59:
	.size	_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_, .Lfunc_end59-_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %r8
	movq	8(%rsi), %rsi
	cmpq	%rsi, %r8
	je	.LBB60_1
# %bb.3:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	jns	.LBB60_4
# %bb.6:
	movq	$-1, %r9
	jmp	.LBB60_7
	.p2align	4
.LBB60_11:                              #   in Loop: Header=BB60_4 Depth=1
	imulq	%rdi
	movl	%r10d, %eax
	sarb	$7, %al
	movsbq	%al, %rax
	movq	%rdi, %r11
	xorq	%rax, %r11
	subq	%rax, %r11
	testb	$64, %r10b
	movl	$0, %eax
	cmovneq	%r11, %rax
	addq	%rdx, %rax
	sarxq	%r9, %rax, %rdx
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	%rax, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	je	.LBB60_13
.LBB60_4:                               # =>This Inner Loop Header: Depth=1
	movq	(%r8), %rax
	movzbl	8(%r8), %r10d
	movl	%r10d, %r9d
	andl	$63, %r9d
	testq	%rax, %rax
	jne	.LBB60_11
# %bb.5:                                #   in Loop: Header=BB60_4 Depth=1
	shrxq	%r9, %rdi, %rax
	sarb	$7, %r10b
	movsbq	%r10b, %rdx
	xorq	%rdx, %rax
	subq	%rdx, %rax
	addq	%rax, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	jne	.LBB60_4
.LBB60_13:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movq	%rcx, %rax
	retq
	.p2align	4
.LBB60_8:                               #   in Loop: Header=BB60_7 Depth=1
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	imulq	%rdi
	movl	%r11d, %eax
	sarb	$7, %al
	movsbq	%al, %rax
	movq	%rdi, %rbx
	xorq	%rax, %rbx
	subq	%rax, %rbx
	testb	$64, %r11b
	movl	$0, %eax
	cmovneq	%rbx, %rax
	addq	%rdx, %rax
	sarxq	%r10, %rax, %rdx
	shrq	$63, %rax
	addq	%rdx, %rax
.LBB60_10:                              #   in Loop: Header=BB60_7 Depth=1
	addq	%rax, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	je	.LBB60_13
.LBB60_7:                               # =>This Inner Loop Header: Depth=1
	movq	(%r8), %rax
	movzbl	8(%r8), %r11d
	movl	%r11d, %r10d
	andl	$63, %r10d
	testq	%rax, %rax
	jne	.LBB60_8
# %bb.9:                                #   in Loop: Header=BB60_7 Depth=1
	shlxq	%r10, %r9, %rax
	notq	%rax
	addq	%rdi, %rax
	sarxq	%r10, %rax, %rax
	sarb	$7, %r11b
	movsbq	%r11b, %rdx
	xorq	%rdx, %rax
	subq	%rdx, %rax
	jmp	.LBB60_10
.LBB60_1:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	xorl	%ecx, %ecx
	movq	%rcx, %rax
	retq
.Lfunc_end60:
	.size	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end60-_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,"axG",@progbits,_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,comdat
	.weak	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ # -- Begin function _Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.p2align	4
	.type	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_,@function
_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_: # @_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %r8
	movq	8(%rsi), %rsi
	cmpq	%rsi, %r8
	je	.LBB61_1
# %bb.3:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%ecx, %ecx
	movl	$1, %r9d
	.p2align	4
.LBB61_4:                               # =>This Inner Loop Header: Depth=1
	movzbl	8(%r8), %r11d
	movl	%r11d, %eax
	sarb	$7, %al
	movsbq	%al, %r10
	movq	(%r8), %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	xorl	%ebx, %ebx
	orq	%rax, %rdx
	sete	%bl
	imulq	%rdi
	addq	%rdi, %rdx
	shlxq	%r11, %r9, %rax
	subq	%rbx, %rax
	movq	%rdx, %rbx
	sarq	$63, %rbx
	andq	%rax, %rbx
	addq	%rdx, %rbx
	sarxq	%r11, %rbx, %rax
	xorq	%r10, %rax
	subq	%r10, %rcx
	addq	%rax, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	jne	.LBB61_4
# %bb.5:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movq	%rcx, %rax
	retq
.LBB61_1:
	xorl	%ecx, %ecx
	movq	%rcx, %rax
	retq
.Lfunc_end61:
	.size	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end61-_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4                               # -- Begin function _GLOBAL__sub_I_benchmark_branchfree.cpp
	.type	_GLOBAL__sub_I_benchmark_branchfree.cpp,@function
_GLOBAL__sub_I_benchmark_branchfree.cpp: # @_GLOBAL__sub_I_benchmark_branchfree.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT                # TAILCALL
.Lfunc_end62:
	.size	_GLOBAL__sub_I_benchmark_branchfree.cpp, .Lfunc_end62-_GLOBAL__sub_I_benchmark_branchfree.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: benchmark_branchfree [uu16] [u32] [u64] [s16] [s32] [s64] [branchfree] [branchfull] [sys|system]\n\nThe branchfree benchmark iterates over an array of dividers and computes\ndivisions. This is the use case where the branchfree divider generally\nshines and where the default branchfull divider performs poorly because\nthe CPU is not able to correctly predict the branches of the many different\ndividers."
	.size	.L.str, 407

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"branchfree"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"branchfull"
	.size	.L.str.2, 11

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"sys"
	.size	.L.str.3, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"system"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"All tests passed successfully!"
	.size	.L.str.5, 31

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"u16"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"s16"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"u32"
	.size	.L.str.8, 4

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"s32"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"u64"
	.size	.L.str.10, 4

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"s64"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"basic_string::_M_construct null not valid"
	.size	.L.str.12, 42

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"----- "
	.size	.L.str.13, 7

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	" -----"
	.size	.L.str.14, 7

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Error: branchfull_divider<"
	.size	.L.str.15, 27

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"> sum: "
	.size	.L.str.16, 8

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	", but system sum: "
	.size	.L.str.17, 19

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Error: branchfree_divider<"
	.size	.L.str.18, 27

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"    system: "
	.size	.L.str.19, 13

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	" seconds"
	.size	.L.str.20, 9

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"branchfull: "
	.size	.L.str.21, 13

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"branchfree: "
	.size	.L.str.22, 13

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.23, 49

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.24, 26

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"libdivide.h:%d: %s(): Error: %s\n"
	.size	.L.str.25, 33

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"divider must be != 0"
	.size	.L.str.26, 21

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"branchfree divider must be != 1"
	.size	.L.str.27, 32

	.type	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s16_genEsi,@object # @__FUNCTION__._ZN9libdivideL26libdivide_internal_s16_genEsi
.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s16_genEsi:
	.asciz	"libdivide_internal_s16_gen"
	.size	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s16_genEsi, 27

	.type	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s32_genEii,@object # @__FUNCTION__._ZN9libdivideL26libdivide_internal_s32_genEii
.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s32_genEii:
	.asciz	"libdivide_internal_s32_gen"
	.size	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s32_genEii, 27

	.type	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi,@object # @__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi
.L__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi:
	.asciz	"libdivide_internal_u64_gen"
	.size	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi, 27

	.type	.L__FUNCTION__._ZN9libdivideL28libdivide_u64_branchfree_genEm,@object # @__FUNCTION__._ZN9libdivideL28libdivide_u64_branchfree_genEm
.L__FUNCTION__._ZN9libdivideL28libdivide_u64_branchfree_genEm:
	.asciz	"libdivide_u64_branchfree_gen"
	.size	.L__FUNCTION__._ZN9libdivideL28libdivide_u64_branchfree_genEm, 29

	.type	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s64_genEli,@object # @__FUNCTION__._ZN9libdivideL26libdivide_internal_s64_genEli
.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s64_genEli:
	.asciz	"libdivide_internal_s64_gen"
	.size	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s64_genEli, 27

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_benchmark_branchfree.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_benchmark_branchfree.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
