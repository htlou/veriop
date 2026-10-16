	.file	"llvm-link"
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
.Lfunc_end0:
	.size	_GLOBAL__sub_I_benchmark_branchfree.cpp, .Lfunc_end0-_GLOBAL__sub_I_benchmark_branchfree.cpp
	.cfi_endproc
                                        # -- End function
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
	je	.LBB1_5
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB1_3
# %bb.2:
	movzbl	67(%rbx), %eax
	jmp	.LBB1_4
.LBB1_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB1_4:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT               # TAILCALL
.LBB1_5:
	.cfi_def_cfa_offset 16
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end1:
	.size	_Z5usagev, .Lfunc_end1-_Z5usagev
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
	jl	.LBB2_49
# %bb.1:
	leaq	40(%rsp), %r13
	movl	%edi, %eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	movl	$1, %r12d
	leaq	24(%rsp), %r14
	xorl	%ebx, %ebx
	.p2align	4
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%r12,8), %r15
	movq	%r13, 24(%rsp)
	testq	%r15, %r15
	je	.LBB2_67
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%r15, %rdi
	callq	strlen@PLT
	movq	%rax, %rbp
	movq	%rax, 8(%rsp)
	movq	%r13, %rax
	cmpq	$16, %rbp
	jb	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	leaq	8(%rsp), %rsi
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, 24(%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 40(%rsp)
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	testq	%rbp, %rbp
	je	.LBB2_10
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	cmpq	$1, %rbp
	jne	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	movzbl	(%r15), %ecx
	movb	%cl, (%rax)
	jmp	.LBB2_10
	.p2align	4
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memcpy@PLT
.LBB2_10:                               #   in Loop: Header=BB2_3 Depth=1
	movq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rcx
	movb	$0, (%rcx,%rax)
	movq	%r14, %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_11
# %bb.17:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_18
# %bb.19:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_20
# %bb.21:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	leaq	.L.str.9(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_22
# %bb.23:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_24
# %bb.25:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_26
# %bb.27:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_28
# %bb.29:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_30
# %bb.31:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_33
# %bb.34:                               #   in Loop: Header=BB2_3 Depth=1
.Ltmp0:
	movl	$406, %edx                      # imm = 0x196
	movq	_ZSt4cout@GOTPCREL(%rip), %rbp
	movq	%rbp, %rdi
	leaq	.L.str(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp1:
# %bb.35:                               # %.noexc
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	(%rbp), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r15
	testq	%r15, %r15
	je	.LBB2_36
# %bb.38:                               #   in Loop: Header=BB2_3 Depth=1
	cmpb	$0, 56(%r15)
	je	.LBB2_40
# %bb.39:                               #   in Loop: Header=BB2_3 Depth=1
	movzbl	67(%r15), %eax
	jmp	.LBB2_42
	.p2align	4
.LBB2_11:                               #   in Loop: Header=BB2_3 Depth=1
	orl	$1, %ebx
	movb	$1, %bpl
	movq	24(%rsp), %rdi
	cmpq	%r13, %rdi
	jne	.LBB2_46
	jmp	.LBB2_47
	.p2align	4
.LBB2_18:                               #   in Loop: Header=BB2_3 Depth=1
	orl	$8, %ebx
	movb	$1, %bpl
	movq	24(%rsp), %rdi
	cmpq	%r13, %rdi
	jne	.LBB2_46
	jmp	.LBB2_47
.LBB2_20:                               #   in Loop: Header=BB2_3 Depth=1
	orl	$2, %ebx
	movb	$1, %bpl
	movq	24(%rsp), %rdi
	cmpq	%r13, %rdi
	jne	.LBB2_46
	jmp	.LBB2_47
.LBB2_22:                               #   in Loop: Header=BB2_3 Depth=1
	orl	$16, %ebx
	movb	$1, %bpl
	movq	24(%rsp), %rdi
	cmpq	%r13, %rdi
	jne	.LBB2_46
	jmp	.LBB2_47
.LBB2_24:                               #   in Loop: Header=BB2_3 Depth=1
	orl	$4, %ebx
	movb	$1, %bpl
	movq	24(%rsp), %rdi
	cmpq	%r13, %rdi
	jne	.LBB2_46
	jmp	.LBB2_47
.LBB2_26:                               #   in Loop: Header=BB2_3 Depth=1
	orl	$32, %ebx
	movb	$1, %bpl
	movq	24(%rsp), %rdi
	cmpq	%r13, %rdi
	jne	.LBB2_46
	jmp	.LBB2_47
.LBB2_28:                               #   in Loop: Header=BB2_3 Depth=1
	orl	$128, %ebx
	movb	$1, %bpl
	movq	24(%rsp), %rdi
	cmpq	%r13, %rdi
	jne	.LBB2_46
	jmp	.LBB2_47
.LBB2_33:                               #   in Loop: Header=BB2_3 Depth=1
	orl	$64, %ebx
	movb	$1, %bpl
	movq	24(%rsp), %rdi
	cmpq	%r13, %rdi
	jne	.LBB2_46
	jmp	.LBB2_47
.LBB2_30:                               #   in Loop: Header=BB2_3 Depth=1
	orl	$256, %ebx                      # imm = 0x100
	movb	$1, %bpl
	movq	24(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB2_47
	.p2align	4
.LBB2_46:                               #   in Loop: Header=BB2_3 Depth=1
	movq	40(%rsp), %rsi
	incq	%rsi
	callq	_ZdlPvm@PLT
.LBB2_47:                               #   in Loop: Header=BB2_3 Depth=1
	testb	%bpl, %bpl
	je	.LBB2_48
# %bb.2:                                #   in Loop: Header=BB2_3 Depth=1
	incq	%r12
	cmpq	%r12, 56(%rsp)                  # 8-byte Folded Reload
	jne	.LBB2_3
	jmp	.LBB2_49
.LBB2_40:                               #   in Loop: Header=BB2_3 Depth=1
.Ltmp2:
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp3:
# %bb.41:                               # %.noexc8
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	(%r15), %rax
.Ltmp4:
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp5:
.LBB2_42:                               # %.noexc9
                                        #   in Loop: Header=BB2_3 Depth=1
.Ltmp6:
	movsbl	%al, %esi
	movq	%rbp, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp7:
# %bb.43:                               # %.noexc10
                                        #   in Loop: Header=BB2_3 Depth=1
.Ltmp8:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp9:
# %bb.44:                               #   in Loop: Header=BB2_3 Depth=1
	movl	$1, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	movq	24(%rsp), %rdi
	cmpq	%r13, %rdi
	jne	.LBB2_46
	jmp	.LBB2_47
.LBB2_49:                               # %.loopexit13
	movl	%ebx, %eax
	orl	$63, %eax
	testb	$63, %bl
	cmovnel	%ebx, %eax
	movl	%eax, %ebx
	orl	$448, %ebx                      # imm = 0x1C0
	testl	$448, %eax                      # imm = 0x1C0
	cmovnel	%eax, %ebx
	testb	$1, %bl
	jne	.LBB2_50
# %bb.51:
	testb	$8, %bl
	jne	.LBB2_52
.LBB2_53:
	testb	$2, %bl
	jne	.LBB2_54
.LBB2_55:
	testb	$16, %bl
	jne	.LBB2_56
.LBB2_57:
	testb	$4, %bl
	jne	.LBB2_58
.LBB2_59:
	testb	$32, %bl
	je	.LBB2_61
.LBB2_60:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkIlEvjmm
.LBB2_61:
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.5(%rip), %rsi
	movl	$30, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_68
# %bb.62:
	cmpb	$0, 56(%rbx)
	je	.LBB2_64
# %bb.63:
	movzbl	67(%rbx), %eax
	jmp	.LBB2_65
.LBB2_50:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkItEvjmm
	testb	$8, %bl
	je	.LBB2_53
.LBB2_52:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkIsEvjmm
	testb	$2, %bl
	je	.LBB2_55
.LBB2_54:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkIjEvjmm
	testb	$16, %bl
	je	.LBB2_57
.LBB2_56:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkIiEvjmm
	testb	$4, %bl
	je	.LBB2_59
.LBB2_58:
	movl	$4194304, %esi                  # imm = 0x400000
	movl	$3000, %edx                     # imm = 0xBB8
	movl	%ebx, %edi
	callq	_Z9benchmarkImEvjmm
	testb	$32, %bl
	jne	.LBB2_60
	jmp	.LBB2_61
.LBB2_64:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB2_65:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	xorl	%eax, %eax
	jmp	.LBB2_66
.LBB2_48:
	movq	16(%rsp), %rax                  # 8-byte Reload
.LBB2_66:                               # %.loopexit12
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
.LBB2_67:
	.cfi_def_cfa_offset 128
	leaq	.L.str.12(%rip), %rdi
	callq	_ZSt19__throw_logic_errorPKc@PLT
.LBB2_68:
	callq	_ZSt16__throw_bad_castv@PLT
.LBB2_36:
.Ltmp11:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp12:
# %bb.37:                               # %.noexc7
.LBB2_13:                               # %.loopexit.split-lp
.Ltmp13:
	jmp	.LBB2_14
.LBB2_12:                               # %.loopexit
.Ltmp10:
.LBB2_14:
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB2_16
# %bb.15:
	movq	40(%rsp), %rsi
	incq	%rsi
	callq	_ZdlPvm@PLT
.LBB2_16:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
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
	.uleb128 .Ltmp9-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp11-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Lfunc_end2-.Ltmp12            #   Call between .Ltmp12 and .Lfunc_end2
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
	cmpq	$65535, %r15                    # imm = 0xFFFF
	movl	$65535, %r13d                   # imm = 0xFFFF
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
	movzwl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIttESt6vectorIT_SaIS1_EET0_
.Ltmp14:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp15:
# %bb.18:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp17:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp18:
# %bb.19:
.Ltmp19:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp20:
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
	movzwl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_
.Ltmp22:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp23:
# %bb.28:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp25:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp26:
# %bb.29:
.Ltmp27:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp28:
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
	movzwl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_
.Ltmp30:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp31:
# %bb.35:
	movq	%rax, %r12
	movb	$46, 7(%rsp)
.Ltmp33:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp34:
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
.Ltmp35:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp36:
# %bb.42:
	movq	(%rbx), %rax
.Ltmp37:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp38:
.LBB3_43:
.Ltmp39:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp40:
# %bb.44:
.Ltmp41:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp42:
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
	leaq	.L.str.6(%rip), %rsi
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
	leaq	.L.str.6(%rip), %rsi
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
.Ltmp43:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp44:
# %bb.38:
.LBB3_47:
.Ltmp32:
	jmp	.LBB3_24
.LBB3_32:
.Ltmp24:
	jmp	.LBB3_24
.LBB3_22:
.Ltmp16:
	jmp	.LBB3_24
.LBB3_33:
.Ltmp29:
	jmp	.LBB3_24
.LBB3_23:
.Ltmp21:
	jmp	.LBB3_24
.LBB3_48:
.Ltmp45:
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
	.size	_Z9benchmarkItEvjmm, .Lfunc_end3-_Z9benchmarkItEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkItEvjmm,"aG",@progbits,_Z9benchmarkItEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp14-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin1          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp20-.Ltmp17                #   Call between .Ltmp17 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp22-.Ltmp20                #   Call between .Ltmp20 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin1          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp28-.Ltmp25                #   Call between .Ltmp25 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin1          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp30-.Ltmp28                #   Call between .Ltmp28 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin1          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp42-.Ltmp33                #   Call between .Ltmp33 and .Ltmp42
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Lfunc_end3-.Ltmp44            #   Call between .Ltmp44 and .Lfunc_end3
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
	cmpq	$32767, %r15                    # imm = 0x7FFF
	movl	$32767, %r13d                   # imm = 0x7FFF
	cmovbq	%r15, %r13
	movq	%r15, %rax
	shrq	$32, %rax
	je	.LBB4_5
# %bb.6:
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%r13
	movq	%rax, %r12
	jmp	.LBB4_7
.LBB4_5:
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%r13d
	movl	%eax, %r12d
.LBB4_7:
	imulq	%r14, %r12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	testb	$64, %bpl
	jne	.LBB4_17
# %bb.8:
	xorl	%r14d, %r14d
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	jmp	.LBB4_9
.LBB4_17:
	movswl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIssESt6vectorIT_SaIS1_EET0_
.Ltmp46:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp47:
# %bb.18:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp49:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp50:
# %bb.19:
.Ltmp51:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp52:
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
	movswl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_
.Ltmp54:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp55:
# %bb.28:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp57:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp58:
# %bb.29:
.Ltmp59:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp60:
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
	movswl	%r13w, %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_
.Ltmp62:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp63:
# %bb.35:
	movq	%rax, %r12
	movb	$46, 7(%rsp)
.Ltmp65:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp66:
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
.Ltmp67:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp68:
# %bb.42:
	movq	(%rbx), %rax
.Ltmp69:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp70:
.LBB4_43:
.Ltmp71:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp72:
# %bb.44:
.Ltmp73:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp74:
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
	leaq	.L.str.7(%rip), %rsi
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
	leaq	.L.str.7(%rip), %rsi
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
.Ltmp75:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp76:
# %bb.38:
.LBB4_47:
.Ltmp64:
	jmp	.LBB4_24
.LBB4_32:
.Ltmp56:
	jmp	.LBB4_24
.LBB4_22:
.Ltmp48:
	jmp	.LBB4_24
.LBB4_33:
.Ltmp61:
	jmp	.LBB4_24
.LBB4_23:
.Ltmp53:
	jmp	.LBB4_24
.LBB4_48:
.Ltmp77:
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
	.size	_Z9benchmarkIsEvjmm, .Lfunc_end4-_Z9benchmarkIsEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkIsEvjmm,"aG",@progbits,_Z9benchmarkIsEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp46-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp52-.Ltmp49                #   Call between .Ltmp49 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin2          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp54-.Ltmp52                #   Call between .Ltmp52 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin2          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp60-.Ltmp57                #   Call between .Ltmp57 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin2          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp62-.Ltmp60                #   Call between .Ltmp60 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin2          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp74-.Ltmp65                #   Call between .Ltmp65 and .Ltmp74
	.uleb128 .Ltmp77-.Lfunc_begin2          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin2          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Lfunc_end4-.Ltmp76            #   Call between .Ltmp76 and .Lfunc_end4
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
	movl	$4294967295, %r12d              # imm = 0xFFFFFFFF
	cmpq	%r12, %r15
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
	callq	_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_
.Ltmp78:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp79:
# %bb.18:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp81:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp82:
# %bb.19:
.Ltmp83:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp84:
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
	callq	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_
.Ltmp86:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp87:
# %bb.28:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp89:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp90:
# %bb.29:
.Ltmp91:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp92:
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
	callq	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_
.Ltmp94:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp95:
# %bb.35:
	movq	%rax, %r12
	movb	$46, 7(%rsp)
.Ltmp97:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp98:
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
.Ltmp99:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp100:
# %bb.42:
	movq	(%rbx), %rax
.Ltmp101:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp102:
.LBB5_43:
.Ltmp103:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp104:
# %bb.44:
.Ltmp105:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp106:
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
	leaq	.L.str.8(%rip), %rsi
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
	leaq	.L.str.8(%rip), %rsi
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
.Ltmp107:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp108:
# %bb.38:
.LBB5_47:
.Ltmp96:
	jmp	.LBB5_24
.LBB5_32:
.Ltmp88:
	jmp	.LBB5_24
.LBB5_22:
.Ltmp80:
	jmp	.LBB5_24
.LBB5_33:
.Ltmp93:
	jmp	.LBB5_24
.LBB5_23:
.Ltmp85:
	jmp	.LBB5_24
.LBB5_48:
.Ltmp109:
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
	.size	_Z9benchmarkIjEvjmm, .Lfunc_end5-_Z9benchmarkIjEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkIjEvjmm,"aG",@progbits,_Z9benchmarkIjEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp78-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin3          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp84-.Ltmp81                #   Call between .Ltmp81 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin3          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp86-.Ltmp84                #   Call between .Ltmp84 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin3          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp92-.Ltmp89                #   Call between .Ltmp89 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin3          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp94-.Ltmp92                #   Call between .Ltmp92 and .Ltmp94
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin3          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp106-.Ltmp97               #   Call between .Ltmp97 and .Ltmp106
	.uleb128 .Ltmp109-.Lfunc_begin3         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin3         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Lfunc_end5-.Ltmp108           #   Call between .Ltmp108 and .Lfunc_end5
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
	je	.LBB6_75
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
	cmpq	$2147483647, %r15               # imm = 0x7FFFFFFF
	movl	$2147483647, %r12d              # imm = 0x7FFFFFFF
	cmovbq	%r15, %r12
	movq	%r15, %rax
	shrq	$32, %rax
	je	.LBB6_5
# %bb.6:
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%r12
	movq	%rax, %r13
	jmp	.LBB6_7
.LBB6_5:
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%r12d
	movl	%eax, %r13d
.LBB6_7:
	imulq	%r14, %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	testb	$64, %bpl
	jne	.LBB6_17
# %bb.8:
	xorl	%r14d, %r14d
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	jmp	.LBB6_9
.LBB6_17:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_
.Ltmp110:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp111:
# %bb.18:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp113:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp114:
# %bb.19:
.Ltmp115:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp116:
# %bb.20:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_9
# %bb.21:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB6_9:
	testl	$256, %ebp                      # imm = 0x100
	jne	.LBB6_27
# %bb.10:
	xorl	%r15d, %r15d
	jmp	.LBB6_11
.LBB6_27:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_
.Ltmp118:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp119:
# %bb.28:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp121:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp122:
# %bb.29:
.Ltmp123:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp124:
# %bb.30:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_11
# %bb.31:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB6_11:
	testb	%bpl, %bpl
	js	.LBB6_34
# %bb.12:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB6_13
.LBB6_34:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_
.Ltmp126:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp127:
# %bb.35:
	movq	%rax, %r12
	movb	$46, 7(%rsp)
.Ltmp129:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp130:
# %bb.36:
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_37
# %bb.39:
	cmpb	$0, 56(%rbx)
	je	.LBB6_41
# %bb.40:
	movzbl	67(%rbx), %eax
	jmp	.LBB6_43
.LBB6_41:
.Ltmp131:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp132:
# %bb.42:
	movq	(%rbx), %rax
.Ltmp133:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp134:
.LBB6_43:
.Ltmp135:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp136:
# %bb.44:
.Ltmp137:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp138:
# %bb.45:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_13
# %bb.46:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB6_13:
	movl	%ebp, %eax
	notl	%eax
	testl	$320, %eax                      # imm = 0x140
	jne	.LBB6_49
# %bb.14:
	cmpq	%r14, %r15
	jne	.LBB6_15
.LBB6_49:
	testb	$-64, %al
	jne	.LBB6_52
# %bb.50:
	cmpq	%r14, %r12
	jne	.LBB6_51
.LBB6_52:
	testb	$64, %bpl
	je	.LBB6_58
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
	je	.LBB6_75
# %bb.54:
	cmpb	$0, 56(%rbx)
	je	.LBB6_56
# %bb.55:
	movzbl	67(%rbx), %eax
	jmp	.LBB6_57
.LBB6_56:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_57:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB6_58:
	testl	$256, %ebp                      # imm = 0x100
	je	.LBB6_64
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
	je	.LBB6_75
# %bb.60:
	cmpb	$0, 56(%rbx)
	je	.LBB6_62
# %bb.61:
	movzbl	67(%rbx), %eax
	jmp	.LBB6_63
.LBB6_62:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_63:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB6_64:
	testb	%bpl, %bpl
	jns	.LBB6_70
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
	je	.LBB6_75
# %bb.66:
	cmpb	$0, 56(%rbx)
	je	.LBB6_68
# %bb.67:
	movzbl	67(%rbx), %eax
	jmp	.LBB6_69
.LBB6_68:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_69:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB6_70:
	movq	_ZSt4cout@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_75
# %bb.71:
	cmpb	$0, 56(%rbx)
	je	.LBB6_73
# %bb.72:
	movzbl	67(%rbx), %eax
	jmp	.LBB6_74
.LBB6_73:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_74:
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
.LBB6_75:
	.cfi_def_cfa_offset 112
	callq	_ZSt16__throw_bad_castv@PLT
.LBB6_15:
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
	jmp	.LBB6_16
.LBB6_51:
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
.LBB6_16:
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
.LBB6_37:
.Ltmp139:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp140:
# %bb.38:
.LBB6_47:
.Ltmp128:
	jmp	.LBB6_24
.LBB6_32:
.Ltmp120:
	jmp	.LBB6_24
.LBB6_22:
.Ltmp112:
	jmp	.LBB6_24
.LBB6_33:
.Ltmp125:
	jmp	.LBB6_24
.LBB6_23:
.Ltmp117:
	jmp	.LBB6_24
.LBB6_48:
.Ltmp141:
.LBB6_24:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_26
# %bb.25:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB6_26:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end6:
	.size	_Z9benchmarkIiEvjmm, .Lfunc_end6-_Z9benchmarkIiEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkIiEvjmm,"aG",@progbits,_Z9benchmarkIiEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp110-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp110
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin4         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp116-.Ltmp113              #   Call between .Ltmp113 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin4         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp118-.Ltmp116              #   Call between .Ltmp116 and .Ltmp118
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin4         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp124-.Ltmp121              #   Call between .Ltmp121 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin4         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp126-.Ltmp124              #   Call between .Ltmp124 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin4         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp138-.Ltmp129              #   Call between .Ltmp129 and .Ltmp138
	.uleb128 .Ltmp141-.Lfunc_begin4         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin4         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Lfunc_end6-.Ltmp140           #   Call between .Ltmp140 and .Lfunc_end6
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
	je	.LBB7_72
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
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	testb	$64, %bpl
	jne	.LBB7_14
# %bb.5:
	xorl	%r14d, %r14d
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	jmp	.LBB7_6
.LBB7_14:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesImmESt6vectorIT_SaIS1_EET0_
.Ltmp142:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp143:
# %bb.15:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp145:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp146:
# %bb.16:
.Ltmp147:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp148:
# %bb.17:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_6
# %bb.18:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB7_6:
	testl	$256, %ebp                      # imm = 0x100
	jne	.LBB7_24
# %bb.7:
	xorl	%r13d, %r13d
	jmp	.LBB7_8
.LBB7_24:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_
.Ltmp150:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp151:
# %bb.25:
	movq	%rax, %r13
	movb	$46, 7(%rsp)
.Ltmp153:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp154:
# %bb.26:
.Ltmp155:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp156:
# %bb.27:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_8
# %bb.28:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB7_8:
	testb	%bpl, %bpl
	js	.LBB7_31
# %bb.9:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB7_10
.LBB7_31:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_
.Ltmp158:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp159:
# %bb.32:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp161:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp162:
# %bb.33:
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_34
# %bb.36:
	cmpb	$0, 56(%rbx)
	je	.LBB7_38
# %bb.37:
	movzbl	67(%rbx), %eax
	jmp	.LBB7_40
.LBB7_38:
.Ltmp163:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp164:
# %bb.39:
	movq	(%rbx), %rax
.Ltmp165:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp166:
.LBB7_40:
.Ltmp167:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp168:
# %bb.41:
.Ltmp169:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp170:
# %bb.42:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_10
# %bb.43:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB7_10:
	movl	%ebp, %eax
	notl	%eax
	testl	$320, %eax                      # imm = 0x140
	jne	.LBB7_46
# %bb.11:
	cmpq	%r14, %r13
	jne	.LBB7_12
.LBB7_46:
	testb	$-64, %al
	jne	.LBB7_49
# %bb.47:
	cmpq	%r14, %r15
	jne	.LBB7_48
.LBB7_49:
	testb	$64, %bpl
	movq	_ZSt4cout@GOTPCREL(%rip), %r15
	je	.LBB7_55
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
	je	.LBB7_72
# %bb.51:
	cmpb	$0, 56(%rbx)
	je	.LBB7_53
# %bb.52:
	movzbl	67(%rbx), %eax
	jmp	.LBB7_54
.LBB7_53:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_54:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB7_55:
	testl	$256, %ebp                      # imm = 0x100
	je	.LBB7_61
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
	je	.LBB7_72
# %bb.57:
	cmpb	$0, 56(%rbx)
	je	.LBB7_59
# %bb.58:
	movzbl	67(%rbx), %eax
	jmp	.LBB7_60
.LBB7_59:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_60:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB7_61:
	testb	%bpl, %bpl
	jns	.LBB7_67
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
	je	.LBB7_72
# %bb.63:
	cmpb	$0, 56(%rbx)
	je	.LBB7_65
# %bb.64:
	movzbl	67(%rbx), %eax
	jmp	.LBB7_66
.LBB7_65:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_66:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB7_67:
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_72
# %bb.68:
	cmpb	$0, 56(%rbx)
	je	.LBB7_70
# %bb.69:
	movzbl	67(%rbx), %eax
	jmp	.LBB7_71
.LBB7_70:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_71:
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
.LBB7_72:
	.cfi_def_cfa_offset 112
	callq	_ZSt16__throw_bad_castv@PLT
.LBB7_12:
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
	jmp	.LBB7_13
.LBB7_48:
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
.LBB7_13:
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
.LBB7_34:
.Ltmp171:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp172:
# %bb.35:
.LBB7_44:
.Ltmp160:
	jmp	.LBB7_21
.LBB7_29:
.Ltmp152:
	jmp	.LBB7_21
.LBB7_19:
.Ltmp144:
	jmp	.LBB7_21
.LBB7_30:
.Ltmp157:
	jmp	.LBB7_21
.LBB7_20:
.Ltmp149:
	jmp	.LBB7_21
.LBB7_45:
.Ltmp173:
.LBB7_21:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_23
# %bb.22:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB7_23:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end7:
	.size	_Z9benchmarkImEvjmm, .Lfunc_end7-_Z9benchmarkImEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkImEvjmm,"aG",@progbits,_Z9benchmarkImEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp142-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp142
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin5         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp148-.Ltmp145              #   Call between .Ltmp145 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin5         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp150-.Ltmp148              #   Call between .Ltmp148 and .Ltmp150
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin5         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp156-.Ltmp153              #   Call between .Ltmp153 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin5         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp158-.Ltmp156              #   Call between .Ltmp156 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin5         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp170-.Ltmp161              #   Call between .Ltmp161 and .Ltmp170
	.uleb128 .Ltmp173-.Lfunc_begin5         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp171-.Ltmp170              #   Call between .Ltmp170 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin5         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Lfunc_end7-.Ltmp172           #   Call between .Ltmp172 and .Lfunc_end7
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
	je	.LBB8_75
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB8_3
# %bb.2:
	movzbl	67(%rbx), %eax
	jmp	.LBB8_4
.LBB8_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB8_4:
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
	je	.LBB8_5
# %bb.6:
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%r12
	movq	%rax, %r13
	jmp	.LBB8_7
.LBB8_5:
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%r12d
	movl	%eax, %r13d
.LBB8_7:
	imulq	%r14, %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	testb	$64, %bpl
	jne	.LBB8_17
# %bb.8:
	xorl	%r14d, %r14d
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	jmp	.LBB8_9
.LBB8_17:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesIllESt6vectorIT_SaIS1_EET0_
.Ltmp174:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.Ltmp175:
# %bb.18:
	movq	%rax, %r14
	movb	$46, 7(%rsp)
.Ltmp177:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp178:
# %bb.19:
.Ltmp179:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp180:
# %bb.20:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_9
# %bb.21:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB8_9:
	testl	$256, %ebp                      # imm = 0x100
	jne	.LBB8_27
# %bb.10:
	xorl	%r15d, %r15d
	jmp	.LBB8_11
.LBB8_27:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_
.Ltmp182:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp183:
# %bb.28:
	movq	%rax, %r15
	movb	$46, 7(%rsp)
.Ltmp185:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp186:
# %bb.29:
.Ltmp187:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp188:
# %bb.30:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_11
# %bb.31:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB8_11:
	testb	%bpl, %bpl
	js	.LBB8_34
# %bb.12:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB8_13
.LBB8_34:
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_
.Ltmp190:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp191:
# %bb.35:
	movq	%rax, %r12
	movb	$46, 7(%rsp)
.Ltmp193:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp194:
# %bb.36:
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB8_37
# %bb.39:
	cmpb	$0, 56(%rbx)
	je	.LBB8_41
# %bb.40:
	movzbl	67(%rbx), %eax
	jmp	.LBB8_43
.LBB8_41:
.Ltmp195:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp196:
# %bb.42:
	movq	(%rbx), %rax
.Ltmp197:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp198:
.LBB8_43:
.Ltmp199:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp200:
# %bb.44:
.Ltmp201:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp202:
# %bb.45:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_13
# %bb.46:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB8_13:
	movl	%ebp, %eax
	notl	%eax
	testl	$320, %eax                      # imm = 0x140
	jne	.LBB8_49
# %bb.14:
	cmpq	%r14, %r15
	jne	.LBB8_15
.LBB8_49:
	testb	$-64, %al
	jne	.LBB8_52
# %bb.50:
	cmpq	%r14, %r12
	jne	.LBB8_51
.LBB8_52:
	testb	$64, %bpl
	je	.LBB8_58
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
	je	.LBB8_75
# %bb.54:
	cmpb	$0, 56(%rbx)
	je	.LBB8_56
# %bb.55:
	movzbl	67(%rbx), %eax
	jmp	.LBB8_57
.LBB8_56:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB8_57:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB8_58:
	testl	$256, %ebp                      # imm = 0x100
	je	.LBB8_64
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
	je	.LBB8_75
# %bb.60:
	cmpb	$0, 56(%rbx)
	je	.LBB8_62
# %bb.61:
	movzbl	67(%rbx), %eax
	jmp	.LBB8_63
.LBB8_62:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB8_63:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB8_64:
	testb	%bpl, %bpl
	jns	.LBB8_70
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
	je	.LBB8_75
# %bb.66:
	cmpb	$0, 56(%rbx)
	je	.LBB8_68
# %bb.67:
	movzbl	67(%rbx), %eax
	jmp	.LBB8_69
.LBB8_68:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB8_69:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB8_70:
	movq	_ZSt4cout@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB8_75
# %bb.71:
	cmpb	$0, 56(%rbx)
	je	.LBB8_73
# %bb.72:
	movzbl	67(%rbx), %eax
	jmp	.LBB8_74
.LBB8_73:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB8_74:
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
.LBB8_75:
	.cfi_def_cfa_offset 112
	callq	_ZSt16__throw_bad_castv@PLT
.LBB8_15:
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
	jmp	.LBB8_16
.LBB8_51:
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
.LBB8_16:
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
.LBB8_37:
.Ltmp203:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp204:
# %bb.38:
.LBB8_47:
.Ltmp192:
	jmp	.LBB8_24
.LBB8_32:
.Ltmp184:
	jmp	.LBB8_24
.LBB8_22:
.Ltmp176:
	jmp	.LBB8_24
.LBB8_33:
.Ltmp189:
	jmp	.LBB8_24
.LBB8_23:
.Ltmp181:
	jmp	.LBB8_24
.LBB8_48:
.Ltmp205:
.LBB8_24:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_26
# %bb.25:
	movq	24(%rsp), %rsi
	subq	%rdi, %rsi
	callq	_ZdlPvm@PLT
.LBB8_26:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end8:
	.size	_Z9benchmarkIlEvjmm, .Lfunc_end8-_Z9benchmarkIlEvjmm
	.cfi_endproc
	.section	.gcc_except_table._Z9benchmarkIlEvjmm,"aG",@progbits,_Z9benchmarkIlEvjmm,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp174-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp174
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin6         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp180-.Ltmp177              #   Call between .Ltmp177 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin6         #     jumps to .Ltmp181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp182-.Ltmp180              #   Call between .Ltmp180 and .Ltmp182
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin6         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp188-.Ltmp185              #   Call between .Ltmp185 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin6         #     jumps to .Ltmp189
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp190-.Ltmp188              #   Call between .Ltmp188 and .Ltmp190
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp191-.Ltmp190              #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin6         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp202-.Ltmp193              #   Call between .Ltmp193 and .Ltmp202
	.uleb128 .Ltmp205-.Lfunc_begin6         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin6         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Lfunc_end8-.Ltmp204           #   Call between .Ltmp204 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z10get_primesIllESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesIllESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesIllESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesIllESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesIllESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesIllESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesIllESt6vectorIT_SaIS1_EET0_
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
	movq	%rsi, %r14
	incq	%r14
	js	.LBB9_34
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB9_2
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
	jae	.LBB9_4
.LBB9_9:                                # %.loopexit10
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpq	$2, %r12
	jae	.LBB9_11
# %bb.10:
	xorl	%ebp, %ebp
.LBB9_17:                               # %.loopexit
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
.LBB9_11:
	.cfi_def_cfa_offset 80
	movl	$2, %r15d
	xorl	%r13d, %r13d
	movabsq	$1152921504606846975, %rdx      # imm = 0xFFFFFFFFFFFFFFF
	xorl	%r14d, %r14d
	jmp	.LBB9_12
	.p2align	4
.LBB9_14:                               #   in Loop: Header=BB9_12 Depth=1
	movq	%r15, (%r13)
	addq	$8, %r13
	movq	%r13, 8(%rdi)
.LBB9_15:                               #   in Loop: Header=BB9_12 Depth=1
	movq	%r14, %rbp
	incq	%r15
	movq	%rbp, %r14
	cmpq	%r12, %r15
	ja	.LBB9_17
.LBB9_12:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbx,%r15)
	je	.LBB9_15
# %bb.13:                               #   in Loop: Header=BB9_12 Depth=1
	cmpq	16(%rdi), %r13
	jne	.LBB9_14
# %bb.18:                               #   in Loop: Header=BB9_12 Depth=1
	subq	%r14, %r13
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	je	.LBB9_19
# %bb.21:                               #   in Loop: Header=BB9_12 Depth=1
	movq	%r13, %rax
	sarq	$3, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rsi
	cmpq	%rdx, %rsi
	jb	.LBB9_23
# %bb.22:                               #   in Loop: Header=BB9_12 Depth=1
	movq	%rdx, %rsi
.LBB9_23:                               #   in Loop: Header=BB9_12 Depth=1
	addq	%rax, %rcx
	cmovbq	%rdx, %rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	leaq	(,%rsi,8), %rdi
.Ltmp206:
	callq	_Znwm@PLT
.Ltmp207:
# %bb.24:                               #   in Loop: Header=BB9_12 Depth=1
	movq	%rax, %rbp
	movq	%r15, (%rax,%r13)
	testq	%r13, %r13
	jle	.LBB9_26
# %bb.25:                               #   in Loop: Header=BB9_12 Depth=1
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memmove@PLT
.LBB9_26:                               #   in Loop: Header=BB9_12 Depth=1
	testq	%r14, %r14
	je	.LBB9_28
# %bb.27:                               #   in Loop: Header=BB9_12 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_ZdlPvm@PLT
.LBB9_28:                               #   in Loop: Header=BB9_12 Depth=1
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
	jbe	.LBB9_12
	jmp	.LBB9_17
.LBB9_2:
	xorl	%ebx, %ebx
	movq	$0, (%rsp)                      # 8-byte Folded Spill
.LBB9_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB9_5
	.p2align	4
.LBB9_8:                                # %.loopexit9
                                        #   in Loop: Header=BB9_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB9_9
.LBB9_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
	cmpq	%r12, %rcx
	ja	.LBB9_8
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=1
	cmpb	$0, (%rbx,%rax)
	je	.LBB9_8
	.p2align	4
.LBB9_7:                                # %.preheader
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB9_7
	jmp	.LBB9_8
.LBB9_19:
	movq	%r14, (%rdi)
.Ltmp209:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp210:
# %bb.20:
.LBB9_34:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB9_30:
.Ltmp211:
	movq	%rax, %r12
	jmp	.LBB9_31
.LBB9_29:
.Ltmp208:
	movq	%rax, %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%r14, (%rax)
.LBB9_31:
	testq	%r14, %r14
	je	.LBB9_33
# %bb.32:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_ZdlPvm@PLT
.LBB9_33:
	movq	(%rsp), %rsi                    # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r12, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end9:
	.size	_Z10get_primesIllESt6vectorIT_SaIS1_EET0_, .Lfunc_end9-_Z10get_primesIllESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIllESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesIllESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp206-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp206
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin7         #     jumps to .Ltmp208
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp209-.Ltmp207              #   Call between .Ltmp207 and .Ltmp209
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin7         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Lfunc_end9-.Ltmp210           #   Call between .Ltmp210 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m
.LCPI10_0:
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
	je	.LBB10_2
	.p2align	4
.LBB10_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovgeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB10_1
.LBB10_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI10_0(%rip), %xmm0, %xmm0
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
.Lfunc_end10:
	.size	_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m, .Lfunc_end10-_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_
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
	movq	%rsi, %r14
	incq	%r14
	js	.LBB11_40
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB11_2
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
	jae	.LBB11_4
.LBB11_9:                               # %.loopexit12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpq	$2, %r12
	jb	.LBB11_22
# %bb.10:
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movl	$2, %r15d
	xorl	%ebp, %ebp
	xorl	%r8d, %r8d
	jmp	.LBB11_11
	.p2align	4
.LBB11_19:                              #   in Loop: Header=BB11_11 Depth=1
	movq	%r14, (%rbp)
	movb	%r13b, 8(%rbp)
	addq	$9, %rbp
	movq	%rbp, 8(%rdi)
.LBB11_20:                              #   in Loop: Header=BB11_11 Depth=1
	incq	%r15
	cmpq	%r12, %r15
	ja	.LBB11_21
.LBB11_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_29 Depth 2
	cmpb	$0, (%rbx,%r15)
	je	.LBB11_20
# %bb.12:                               #   in Loop: Header=BB11_11 Depth=1
	testq	%r15, %r15
	je	.LBB11_41
# %bb.13:                               #   in Loop: Header=BB11_11 Depth=1
	movq	%r15, %rsi
	negq	%rsi
	cmovsq	%r15, %rsi
	xorl	%eax, %eax
	lzcntq	%rsi, %rax
	movl	%eax, %r13d
	xorl	$63, %r13d
	blsrq	%rsi, %rcx
	jne	.LBB11_15
# %bb.14:                               #   in Loop: Header=BB11_11 Depth=1
	movq	%r15, %rax
	shrq	$56, %rax
	andl	$-128, %eax
	orl	%eax, %r13d
	xorl	%r14d, %r14d
	cmpq	16(%rdi), %rbp
	jne	.LBB11_19
	jmp	.LBB11_23
	.p2align	4
.LBB11_15:                              #   in Loop: Header=BB11_11 Depth=1
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
	je	.LBB11_17
# %bb.16:                               #   in Loop: Header=BB11_11 Depth=1
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
.LBB11_17:                              #   in Loop: Header=BB11_11 Depth=1
	leaq	1(%r14), %rax
	movzbl	%cl, %edx
	orb	$-128, %cl
	testq	%r15, %r15
	notq	%r14
	movzbl	%cl, %r13d
	cmovnsl	%edx, %r13d
	cmovnsq	%rax, %r14
	cmpq	16(%rdi), %rbp
	jne	.LBB11_19
.LBB11_23:                              #   in Loop: Header=BB11_11 Depth=1
	movq	%rbp, %rsi
	movq	%r8, (%rsp)                     # 8-byte Spill
	subq	%r8, %rsi
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rsi
	je	.LBB11_24
# %bb.26:                               #   in Loop: Header=BB11_11 Depth=1
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
.Ltmp212:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp213:
# %bb.27:                               #   in Loop: Header=BB11_11 Depth=1
	movq	%rax, %r8
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%r14, (%rax,%rsi)
	movb	%r13b, 8(%rax,%rsi)
	movq	%rax, %r14
	movq	(%rsp), %rdx                    # 8-byte Reload
	cmpq	%rbp, %rdx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	je	.LBB11_30
# %bb.28:                               # %.preheader.preheader
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	%r8, %r14
	movq	%rdx, %rax
	.p2align	4
.LBB11_29:                              # %.preheader
                                        #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	8(%rax), %ecx
	movb	%cl, 8(%r14)
	movq	(%rax), %rcx
	movq	%rcx, (%r14)
	addq	$9, %rax
	addq	$9, %r14
	cmpq	%rbp, %rax
	jne	.LBB11_29
.LBB11_30:                              # %.loopexit
                                        #   in Loop: Header=BB11_11 Depth=1
	testq	%rdx, %rdx
	je	.LBB11_32
# %bb.31:                               #   in Loop: Header=BB11_11 Depth=1
	movq	%rdx, %rdi
	movq	%r8, %r13
	callq	_ZdlPvm@PLT
	movq	%r13, %r8
	movq	8(%rsp), %rdi                   # 8-byte Reload
.LBB11_32:                              #   in Loop: Header=BB11_11 Depth=1
	addq	$9, %r14
	movq	%r14, 8(%rdi)
	movq	%r8, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%rdi)
	movq	%r14, %rbp
	jmp	.LBB11_20
.LBB11_21:
	movq	%r8, (%rdi)
	testq	%rbx, %rbx
	movq	16(%rsp), %r15                  # 8-byte Reload
	je	.LBB11_38
.LBB11_22:
	subq	%rbx, %r15
	movq	%rdi, %r14
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
	movq	%r14, %rax
.LBB11_39:
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
.LBB11_2:
	.cfi_def_cfa_offset 96
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
.LBB11_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB11_5
	.p2align	4
.LBB11_8:                               # %.loopexit11
                                        #   in Loop: Header=BB11_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB11_9
.LBB11_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
	cmpq	%r12, %rcx
	ja	.LBB11_8
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	cmpb	$0, (%rbx,%rax)
	je	.LBB11_8
	.p2align	4
.LBB11_7:                               # %.preheader10
                                        #   Parent Loop BB11_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB11_7
	jmp	.LBB11_8
.LBB11_38:
	movq	%rdi, %rax
	jmp	.LBB11_39
.LBB11_41:
	movq	%r8, (%rdi)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s64_genEli(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1614, %edx                     # imm = 0x64E
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB11_24:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp215:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp216:
# %bb.25:
.LBB11_40:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB11_34:
.Ltmp217:
	movq	%rax, %r14
	jmp	.LBB11_35
.LBB11_33:
.Ltmp214:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB11_35:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB11_37
# %bb.36:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB11_37:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end11:
	.size	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_, .Lfunc_end11-_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table11:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp212-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp212
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin8         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin8         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Lfunc_end11-.Ltmp216          #   Call between .Ltmp216 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI12_0:
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
	je	.LBB12_2
	.p2align	4
.LBB12_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovgeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB12_1
.LBB12_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI12_0(%rip), %xmm0, %xmm0
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
.Lfunc_end12:
	.size	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end12-_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_
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
	movq	%rsi, %r14
	incq	%r14
	js	.LBB13_37
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, %r13
	je	.LBB13_2
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
	jae	.LBB13_4
.LBB13_9:                               # %.loopexit12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r13)
	movq	$0, 16(%r13)
	cmpq	$2, %r12
	jb	.LBB13_20
# %bb.10:
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movl	$2, %r15d
	xorl	%ebp, %ebp
	xorl	%r8d, %r8d
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB13_11
	.p2align	4
.LBB13_17:                              #   in Loop: Header=BB13_11 Depth=1
	movq	%rax, (%rbp)
	movb	%r14b, 8(%rbp)
	addq	$9, %rbp
	movq	%rbp, 8(%r13)
.LBB13_18:                              #   in Loop: Header=BB13_11 Depth=1
	incq	%r15
	cmpq	%r12, %r15
	ja	.LBB13_19
.LBB13_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_28 Depth 2
	cmpb	$0, (%rbx,%r15)
	je	.LBB13_18
# %bb.12:                               #   in Loop: Header=BB13_11 Depth=1
	testq	%r15, %r15
	je	.LBB13_38
# %bb.13:                               #   in Loop: Header=BB13_11 Depth=1
	movq	%r15, %rsi
	negq	%rsi
	cmovsq	%r15, %rsi
	xorl	%eax, %eax
	lzcntq	%rsi, %rax
	movl	%eax, %r14d
	xorl	$63, %r14d
	blsrq	%rsi, %rcx
	jne	.LBB13_15
# %bb.14:                               #   in Loop: Header=BB13_11 Depth=1
	movq	%r15, %rax
	shrq	$56, %rax
	andl	$-128, %eax
	orl	%eax, %r14d
	xorl	%eax, %eax
	cmpq	16(%r13), %rbp
	jne	.LBB13_17
	jmp	.LBB13_22
	.p2align	4
.LBB13_15:                              #   in Loop: Header=BB13_11 Depth=1
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
	jne	.LBB13_17
.LBB13_22:                              #   in Loop: Header=BB13_11 Depth=1
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rbp, %r13
	movq	%r8, (%rsp)                     # 8-byte Spill
	subq	%r8, %r13
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	je	.LBB13_23
# %bb.25:                               #   in Loop: Header=BB13_11 Depth=1
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
.Ltmp218:
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp219:
# %bb.26:                               #   in Loop: Header=BB13_11 Depth=1
	movq	%rax, %r8
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%r8,%r13)
	movb	%r14b, 8(%r8,%r13)
	movq	%r8, %r14
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%rbp, %rdi
	je	.LBB13_29
# %bb.27:                               # %.preheader.preheader
                                        #   in Loop: Header=BB13_11 Depth=1
	movq	%r8, %r14
	movq	%rdi, %rax
	.p2align	4
.LBB13_28:                              # %.preheader
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	8(%rax), %ecx
	movb	%cl, 8(%r14)
	movq	(%rax), %rcx
	movq	%rcx, (%r14)
	addq	$9, %rax
	addq	$9, %r14
	cmpq	%rbp, %rax
	jne	.LBB13_28
.LBB13_29:                              # %.loopexit
                                        #   in Loop: Header=BB13_11 Depth=1
	testq	%rdi, %rdi
	je	.LBB13_31
# %bb.30:                               #   in Loop: Header=BB13_11 Depth=1
	movq	%r13, %rsi
	movq	%r8, %r13
	callq	_ZdlPvm@PLT
	movq	%r13, %r8
.LBB13_31:                              #   in Loop: Header=BB13_11 Depth=1
	addq	$9, %r14
	movq	8(%rsp), %r13                   # 8-byte Reload
	movq	%r14, 8(%r13)
	movq	%r8, %rax
	addq	24(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r13)
	movq	%r14, %rbp
	jmp	.LBB13_18
.LBB13_19:
	movq	%r8, (%r13)
	testq	%rbx, %rbx
	movq	16(%rsp), %r15                  # 8-byte Reload
	je	.LBB13_21
.LBB13_20:
	subq	%rbx, %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB13_21:
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
.LBB13_2:
	.cfi_def_cfa_offset 96
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
.LBB13_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB13_5
	.p2align	4
.LBB13_8:                               # %.loopexit11
                                        #   in Loop: Header=BB13_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB13_9
.LBB13_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
	cmpq	%r12, %rcx
	ja	.LBB13_8
# %bb.6:                                #   in Loop: Header=BB13_5 Depth=1
	cmpb	$0, (%rbx,%rax)
	je	.LBB13_8
	.p2align	4
.LBB13_7:                               # %.preheader10
                                        #   Parent Loop BB13_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB13_7
	jmp	.LBB13_8
.LBB13_38:
	movq	%r8, (%r13)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s64_genEli(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1614, %edx                     # imm = 0x64E
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB13_23:
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp221:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp222:
# %bb.24:
.LBB13_37:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB13_33:
.Ltmp223:
	movq	%rax, %r15
	jmp	.LBB13_34
.LBB13_32:
.Ltmp220:
	movq	%rax, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB13_34:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB13_36
# %bb.35:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r13, %rsi
	callq	_ZdlPvm@PLT
.LBB13_36:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end13:
	.size	_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_, .Lfunc_end13-_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp218-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp218
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin9         #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin9         #     jumps to .Ltmp223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Lfunc_end13-.Ltmp222          #   Call between .Ltmp222 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI14_0:
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
	je	.LBB14_2
	.p2align	4
.LBB14_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovgeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB14_1
.LBB14_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI14_0(%rip), %xmm0, %xmm0
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
.Lfunc_end14:
	.size	_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end14-_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
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
	je	.LBB15_1
# %bb.3:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%ecx, %ecx
	movl	$1, %r9d
	.p2align	4
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB15_4
# %bb.5:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movq	%rcx, %rax
	retq
.LBB15_1:
	xorl	%ecx, %ecx
	movq	%rcx, %rax
	retq
.Lfunc_end15:
	.size	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end15-_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
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
	je	.LBB16_1
# %bb.3:                                # %.preheader
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	jns	.LBB16_4
# %bb.6:                                # %.preheader.split.us.preheader
	movq	$-1, %r9
	jmp	.LBB16_7
	.p2align	4
.LBB16_11:                              #   in Loop: Header=BB16_4 Depth=1
	imulq	%rdi
	movq	%rdi, %rbx
	xorq	%r11, %rbx
	subq	%r11, %rbx
	testb	$64, %r10b
	movl	$0, %eax
	cmovneq	%rbx, %rax
	addq	%rdx, %rax
	sarxq	%r9, %rax, %rdx
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	%rax, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	je	.LBB16_13
.LBB16_4:                               # %.preheader.split
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r8), %rax
	movzbl	8(%r8), %r10d
	movl	%r10d, %r9d
	andl	$63, %r9d
	movl	%r10d, %edx
	sarb	$7, %dl
	movsbq	%dl, %r11
	testq	%rax, %rax
	jne	.LBB16_11
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
	shrxq	%r9, %rdi, %rax
	xorq	%r11, %rax
	subq	%r11, %rax
	addq	%rax, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	jne	.LBB16_4
.LBB16_13:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movq	%rcx, %rax
	retq
	.p2align	4
.LBB16_8:                               #   in Loop: Header=BB16_7 Depth=1
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	imulq	%rdi
	movq	%rdi, %r14
	xorq	%r11, %r14
	subq	%r11, %r14
	testb	$64, %bl
	movl	$0, %eax
	cmovneq	%r14, %rax
	addq	%rdx, %rax
	sarxq	%r10, %rax, %rdx
	shrq	$63, %rax
	addq	%rdx, %rax
.LBB16_10:                              # %target_s64.exit.us
                                        #   in Loop: Header=BB16_7 Depth=1
	addq	%rax, %rcx
	addq	$9, %r8
	cmpq	%rsi, %r8
	je	.LBB16_13
.LBB16_7:                               # %.preheader.split.us
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r8), %rax
	movzbl	8(%r8), %ebx
	movl	%ebx, %r10d
	andl	$63, %r10d
	movl	%ebx, %edx
	sarb	$7, %dl
	movsbq	%dl, %r11
	testq	%rax, %rax
	jne	.LBB16_8
# %bb.9:                                #   in Loop: Header=BB16_7 Depth=1
	shlxq	%r10, %r9, %rax
	notq	%rax
	addq	%rdi, %rax
	sarxq	%r10, %rax, %rax
	xorq	%r11, %rax
	subq	%r11, %rax
	jmp	.LBB16_10
.LBB16_1:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	xorl	%ecx, %ecx
	movq	%rcx, %rax
	retq
.Lfunc_end16:
	.size	_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end16-_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
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
	jmp	.LBB17_1
	.p2align	4
.LBB17_4:                               #   in Loop: Header=BB17_1 Depth=1
	movq	%rdi, %rax
	cqto
	idivq	%r9
.LBB17_5:                               #   in Loop: Header=BB17_1 Depth=1
	addq	%rax, %rcx
	addq	$8, %r8
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %r8
	je	.LBB17_6
# %bb.2:                                # %.preheader
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	(%r8), %r9
	movq	%rdi, %rax
	orq	%r9, %rax
	shrq	$32, %rax
	jne	.LBB17_4
# %bb.3:                                #   in Loop: Header=BB17_1 Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%r9d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB17_5
.LBB17_6:                               # %.loopexit
	movq	%rcx, %rax
	retq
.Lfunc_end17:
	.size	_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_, .Lfunc_end17-_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesImmESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesImmESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesImmESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesImmESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesImmESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesImmESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesImmESt6vectorIT_SaIS1_EET0_
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
	movq	%rsi, %r14
	incq	%r14
	js	.LBB18_34
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB18_2
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
	jae	.LBB18_4
.LBB18_9:                               # %.loopexit10
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpq	$2, %r12
	jae	.LBB18_11
# %bb.10:
	xorl	%ebp, %ebp
.LBB18_17:                              # %.loopexit
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
.LBB18_11:
	.cfi_def_cfa_offset 80
	movl	$2, %r15d
	xorl	%r13d, %r13d
	movabsq	$1152921504606846975, %rdx      # imm = 0xFFFFFFFFFFFFFFF
	xorl	%r14d, %r14d
	jmp	.LBB18_12
	.p2align	4
.LBB18_14:                              #   in Loop: Header=BB18_12 Depth=1
	movq	%r15, (%r13)
	addq	$8, %r13
	movq	%r13, 8(%rdi)
.LBB18_15:                              #   in Loop: Header=BB18_12 Depth=1
	movq	%r14, %rbp
	incq	%r15
	movq	%rbp, %r14
	cmpq	%r12, %r15
	ja	.LBB18_17
.LBB18_12:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbx,%r15)
	je	.LBB18_15
# %bb.13:                               #   in Loop: Header=BB18_12 Depth=1
	cmpq	16(%rdi), %r13
	jne	.LBB18_14
# %bb.18:                               #   in Loop: Header=BB18_12 Depth=1
	subq	%r14, %r13
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	je	.LBB18_19
# %bb.21:                               #   in Loop: Header=BB18_12 Depth=1
	movq	%r13, %rax
	sarq	$3, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %rsi
	cmpq	%rdx, %rsi
	jb	.LBB18_23
# %bb.22:                               #   in Loop: Header=BB18_12 Depth=1
	movq	%rdx, %rsi
.LBB18_23:                              #   in Loop: Header=BB18_12 Depth=1
	addq	%rax, %rcx
	cmovbq	%rdx, %rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	leaq	(,%rsi,8), %rdi
.Ltmp224:
	callq	_Znwm@PLT
.Ltmp225:
# %bb.24:                               #   in Loop: Header=BB18_12 Depth=1
	movq	%rax, %rbp
	movq	%r15, (%rax,%r13)
	testq	%r13, %r13
	jle	.LBB18_26
# %bb.25:                               #   in Loop: Header=BB18_12 Depth=1
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memmove@PLT
.LBB18_26:                              #   in Loop: Header=BB18_12 Depth=1
	testq	%r14, %r14
	je	.LBB18_28
# %bb.27:                               #   in Loop: Header=BB18_12 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_ZdlPvm@PLT
.LBB18_28:                              #   in Loop: Header=BB18_12 Depth=1
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
	jbe	.LBB18_12
	jmp	.LBB18_17
.LBB18_2:
	xorl	%ebx, %ebx
	movq	$0, (%rsp)                      # 8-byte Folded Spill
.LBB18_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB18_5
	.p2align	4
.LBB18_8:                               # %.loopexit9
                                        #   in Loop: Header=BB18_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB18_9
.LBB18_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_7 Depth 2
	cmpq	%r12, %rcx
	ja	.LBB18_8
# %bb.6:                                #   in Loop: Header=BB18_5 Depth=1
	cmpb	$0, (%rbx,%rax)
	je	.LBB18_8
	.p2align	4
.LBB18_7:                               # %.preheader
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB18_7
	jmp	.LBB18_8
.LBB18_19:
	movq	%r14, (%rdi)
.Ltmp227:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp228:
# %bb.20:
.LBB18_34:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB18_30:
.Ltmp229:
	movq	%rax, %r12
	jmp	.LBB18_31
.LBB18_29:
.Ltmp226:
	movq	%rax, %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%r14, (%rax)
.LBB18_31:
	testq	%r14, %r14
	je	.LBB18_33
# %bb.32:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_ZdlPvm@PLT
.LBB18_33:
	movq	(%rsp), %rsi                    # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r12, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end18:
	.size	_Z10get_primesImmESt6vectorIT_SaIS1_EET0_, .Lfunc_end18-_Z10get_primesImmESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesImmESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesImmESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp224-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp224
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin10        #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp227-.Ltmp225              #   Call between .Ltmp225 and .Ltmp227
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin10        #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Lfunc_end18-.Ltmp228          #   Call between .Ltmp228 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m
.LCPI19_0:
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
	je	.LBB19_2
	.p2align	4
.LBB19_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovaeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB19_1
.LBB19_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI19_0(%rip), %xmm0, %xmm0
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
.Lfunc_end19:
	.size	_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m, .Lfunc_end19-_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_
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
	movq	%rsi, %r14
	incq	%r14
	js	.LBB20_40
# %bb.1:
	movq	%rsi, %r12
	je	.LBB20_2
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
	jae	.LBB20_4
.LBB20_9:                               # %.loopexit12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpq	$2, %r12
	jb	.LBB20_22
# %bb.10:
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movl	$2, %r15d
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB20_11
	.p2align	4
.LBB20_19:                              #   in Loop: Header=BB20_11 Depth=1
	movq	%rax, (%rbp)
	movb	%sil, 8(%rbp)
	addq	$9, %rbp
	movq	%rbp, 8(%rdi)
.LBB20_20:                              #   in Loop: Header=BB20_11 Depth=1
	incq	%r15
	cmpq	%r12, %r15
	ja	.LBB20_21
.LBB20_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_29 Depth 2
	cmpb	$0, (%rbx,%r15)
	je	.LBB20_20
# %bb.12:                               #   in Loop: Header=BB20_11 Depth=1
	testq	%r15, %r15
	je	.LBB20_41
# %bb.13:                               #   in Loop: Header=BB20_11 Depth=1
	xorl	%esi, %esi
	lzcntq	%r15, %rsi
	xorl	$63, %esi
	blsrq	%r15, %rax
	jne	.LBB20_15
# %bb.14:                               #   in Loop: Header=BB20_11 Depth=1
	xorl	%eax, %eax
	cmpq	16(%rdi), %rbp
	jne	.LBB20_19
	jmp	.LBB20_23
	.p2align	4
.LBB20_15:                              #   in Loop: Header=BB20_11 Depth=1
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
	jb	.LBB20_17
# %bb.16:                               #   in Loop: Header=BB20_11 Depth=1
	leaq	(%rdx,%rdx), %rcx
	cmpq	%r15, %rcx
	setae	%r8b
	testq	%rdx, %rdx
	sets	%cl
	orb	%r8b, %cl
	movzbl	%cl, %ecx
	leaq	(%rcx,%rax,2), %rax
	orb	$64, %sil
.LBB20_17:                              #   in Loop: Header=BB20_11 Depth=1
	incq	%rax
	cmpq	16(%rdi), %rbp
	jne	.LBB20_19
.LBB20_23:                              #   in Loop: Header=BB20_11 Depth=1
	movq	%rax, %r13
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%rbp, %rsi
	movq	%r14, (%rsp)                    # 8-byte Spill
	subq	%r14, %rsi
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rsi
	je	.LBB20_24
# %bb.26:                               #   in Loop: Header=BB20_11 Depth=1
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
.Ltmp230:
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
	movq	%rax, %rdx
.Ltmp231:
# %bb.27:                               #   in Loop: Header=BB20_11 Depth=1
	movq	%r13, (%rdx,%r14)
	movq	32(%rsp), %rax                  # 8-byte Reload
	movb	%al, 8(%rdx,%r14)
	movq	%rdx, %r13
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%rbp, %rdi
	je	.LBB20_30
# %bb.28:                               # %.preheader.preheader
                                        #   in Loop: Header=BB20_11 Depth=1
	movq	%rdx, %r13
	movq	%rdi, %rax
	.p2align	4
.LBB20_29:                              # %.preheader
                                        #   Parent Loop BB20_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	8(%rax), %ecx
	movb	%cl, 8(%r13)
	movq	(%rax), %rcx
	movq	%rcx, (%r13)
	addq	$9, %rax
	addq	$9, %r13
	cmpq	%rbp, %rax
	jne	.LBB20_29
.LBB20_30:                              # %.loopexit
                                        #   in Loop: Header=BB20_11 Depth=1
	testq	%rdi, %rdi
	je	.LBB20_32
# %bb.31:                               #   in Loop: Header=BB20_11 Depth=1
	movq	%r14, %rsi
	movq	%rdx, %r14
	callq	_ZdlPvm@PLT
	movq	%r14, %rdx
.LBB20_32:                              #   in Loop: Header=BB20_11 Depth=1
	addq	$9, %r13
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%r13, 8(%rdi)
	movq	%rdx, %rax
	addq	24(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%rdi)
	movq	%r13, %rbp
	movq	%rdx, %r14
	jmp	.LBB20_20
.LBB20_21:
	movq	%r14, (%rdi)
	testq	%rbx, %rbx
	movq	8(%rsp), %r15                   # 8-byte Reload
	je	.LBB20_38
.LBB20_22:
	subq	%rbx, %r15
	movq	%rdi, %r14
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
	movq	%r14, %rax
.LBB20_39:
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
.LBB20_2:
	.cfi_def_cfa_offset 96
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
.LBB20_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB20_5
	.p2align	4
.LBB20_8:                               # %.loopexit11
                                        #   in Loop: Header=BB20_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB20_9
.LBB20_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_7 Depth 2
	cmpq	%r12, %rcx
	ja	.LBB20_8
# %bb.6:                                #   in Loop: Header=BB20_5 Depth=1
	cmpb	$0, (%rbx,%rax)
	je	.LBB20_8
	.p2align	4
.LBB20_7:                               # %.preheader10
                                        #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB20_7
	jmp	.LBB20_8
.LBB20_38:
	movq	%rdi, %rax
	jmp	.LBB20_39
.LBB20_41:
	movq	%r14, (%rdi)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1113, %edx                     # imm = 0x459
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB20_24:
	movq	%rsi, %r14
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%rax, (%rdi)
.Ltmp233:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp234:
# %bb.25:
.LBB20_40:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB20_34:
.Ltmp235:
	movq	%rax, %r15
	jmp	.LBB20_35
.LBB20_33:
.Ltmp232:
	movq	%rax, %r15
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB20_35:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB20_37
# %bb.36:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r14, %rsi
	callq	_ZdlPvm@PLT
.LBB20_37:
	movq	8(%rsp), %rsi                   # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end20:
	.size	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_, .Lfunc_end20-_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp230-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp230
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin11        #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin11        #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Lfunc_end20-.Ltmp234          #   Call between .Ltmp234 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI21_0:
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
	je	.LBB21_2
	.p2align	4
.LBB21_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovaeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB21_1
.LBB21_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI21_0(%rip), %xmm0, %xmm0
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
.Lfunc_end21:
	.size	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end21-_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_
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
	movq	%rsi, %r13
	incq	%r13
	js	.LBB22_41
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, %r14
	je	.LBB22_2
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
	jae	.LBB22_4
.LBB22_9:                               # %.loopexit11
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	cmpq	$2, %r12
	jb	.LBB22_24
# %bb.10:
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movl	$2, %r15d
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB22_11
	.p2align	4
.LBB22_21:                              #   in Loop: Header=BB22_11 Depth=1
	movq	%rax, (%rbp)
	movb	%r13b, 8(%rbp)
	addq	$9, %rbp
	movq	%rbp, 8(%r14)
.LBB22_22:                              #   in Loop: Header=BB22_11 Depth=1
	incq	%r15
	cmpq	%r12, %r15
	ja	.LBB22_23
.LBB22_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_32 Depth 2
	cmpb	$0, (%rbx,%r15)
	je	.LBB22_22
# %bb.12:                               #   in Loop: Header=BB22_11 Depth=1
	testq	%r15, %r15
	je	.LBB22_16
# %bb.13:                               #   in Loop: Header=BB22_11 Depth=1
	cmpq	$1, %r15
	je	.LBB22_14
# %bb.17:                               #   in Loop: Header=BB22_11 Depth=1
	xorl	%ecx, %ecx
	lzcntq	%r15, %rcx
	blsrq	%r15, %rax
	jne	.LBB22_19
# %bb.18:                               #   in Loop: Header=BB22_11 Depth=1
	movb	$62, %r13b
	subb	%cl, %r13b
	xorl	%eax, %eax
	cmpq	16(%r14), %rbp
	jne	.LBB22_21
	jmp	.LBB22_26
	.p2align	4
.LBB22_19:                              #   in Loop: Header=BB22_11 Depth=1
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
	jne	.LBB22_21
.LBB22_26:                              #   in Loop: Header=BB22_11 Depth=1
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rbp, %rsi
	movq	%rdi, (%rsp)                    # 8-byte Spill
	subq	%rdi, %rsi
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rsi
	je	.LBB22_27
# %bb.29:                               #   in Loop: Header=BB22_11 Depth=1
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
.Ltmp236:
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp237:
# %bb.30:                               #   in Loop: Header=BB22_11 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax,%r14)
	movb	%r13b, 8(%rax,%r14)
	movq	%rax, %r13
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%rbp, %rdi
	je	.LBB22_33
# %bb.31:                               # %.preheader.preheader
                                        #   in Loop: Header=BB22_11 Depth=1
	movq	%rax, %r13
	movq	%rdi, %rdx
	.p2align	4
.LBB22_32:                              # %.preheader
                                        #   Parent Loop BB22_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	8(%rdx), %ecx
	movb	%cl, 8(%r13)
	movq	(%rdx), %rcx
	movq	%rcx, (%r13)
	addq	$9, %rdx
	addq	$9, %r13
	cmpq	%rbp, %rdx
	jne	.LBB22_32
.LBB22_33:                              # %.loopexit
                                        #   in Loop: Header=BB22_11 Depth=1
	testq	%rdi, %rdi
	je	.LBB22_35
# %bb.34:                               #   in Loop: Header=BB22_11 Depth=1
	movq	%r14, %rsi
	movq	%rax, %r14
	callq	_ZdlPvm@PLT
	movq	%r14, %rax
.LBB22_35:                              #   in Loop: Header=BB22_11 Depth=1
	addq	$9, %r13
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	%r13, 8(%r14)
	movq	%rax, %rdx
	addq	24(%rsp), %rdx                  # 8-byte Folded Reload
	movq	%rdx, 16(%r14)
	movq	%r13, %rbp
	movq	%rax, %rdi
	jmp	.LBB22_22
.LBB22_23:
	movq	%rdi, (%r14)
	testq	%rbx, %rbx
	movq	8(%rsp), %r15                   # 8-byte Reload
	je	.LBB22_25
.LBB22_24:
	subq	%rbx, %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB22_25:
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
.LBB22_2:
	.cfi_def_cfa_offset 96
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
.LBB22_4:
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB22_5
	.p2align	4
.LBB22_8:                               # %.loopexit10
                                        #   in Loop: Header=BB22_5 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB22_9
.LBB22_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_7 Depth 2
	cmpq	%r12, %rcx
	ja	.LBB22_8
# %bb.6:                                #   in Loop: Header=BB22_5 Depth=1
	cmpb	$0, (%rbx,%rax)
	je	.LBB22_8
	.p2align	4
.LBB22_7:                               # %.preheader9
                                        #   Parent Loop BB22_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rbx,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB22_7
	jmp	.LBB22_8
.LBB22_14:
	movq	%rdi, (%r14)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL28libdivide_u64_branchfree_genEm(%rip), %rcx
	leaq	.L.str.27(%rip), %r8
	movl	$1169, %edx                     # imm = 0x491
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB22_16:
	movq	%rdi, (%r14)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1113, %edx                     # imm = 0x459
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB22_27:
	movq	%rsi, %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%rax, (%r14)
.Ltmp239:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp240:
# %bb.28:
.LBB22_41:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB22_37:
.Ltmp241:
	movq	%rax, %r15
	jmp	.LBB22_38
.LBB22_36:
.Ltmp238:
	movq	%r14, %r12
	movq	%rax, %r15
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB22_38:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB22_40
# %bb.39:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r12, %rsi
	callq	_ZdlPvm@PLT
.LBB22_40:
	movq	8(%rsp), %rsi                   # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end22:
	.size	_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_, .Lfunc_end22-_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp236-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp236
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin12        #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin12        #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Lfunc_end22-.Ltmp240          #   Call between .Ltmp240 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI23_0:
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
	je	.LBB23_2
	.p2align	4
.LBB23_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, %r15
	movl	$2, %edi
	cmovaeq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB23_1
.LBB23_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI23_0(%rip), %xmm0, %xmm0
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
.Lfunc_end23:
	.size	_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end23-_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
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
	je	.LBB24_1
# %bb.3:
	movq	%rdi, %rdx
	xorl	%eax, %eax
	.p2align	4
.LBB24_4:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB24_4
# %bb.2:                                # %.loopexit
	retq
.LBB24_1:
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end24-_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
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
	jmp	.LBB25_1
	.p2align	4
.LBB25_3:                               #   in Loop: Header=BB25_1 Depth=1
	shrxq	%r8, %rdi, %rdx
.LBB25_7:                               #   in Loop: Header=BB25_1 Depth=1
	addq	%rdx, %rax
	addq	$9, %rcx
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	je	.LBB25_8
# %bb.2:                                #   in Loop: Header=BB25_1 Depth=1
	movq	(%rcx), %rdx
	movzbl	8(%rcx), %r8d
	testq	%rdx, %rdx
	je	.LBB25_3
# %bb.4:                                #   in Loop: Header=BB25_1 Depth=1
	mulxq	%rdi, %rdx, %rdx
	testb	$64, %r8b
	jne	.LBB25_5
# %bb.6:                                #   in Loop: Header=BB25_1 Depth=1
	shrxq	%r8, %rdx, %rdx
	jmp	.LBB25_7
	.p2align	4
.LBB25_5:                               #   in Loop: Header=BB25_1 Depth=1
	movq	%rdi, %r9
	subq	%rdx, %r9
	shrq	%r9
	addq	%rdx, %r9
	shrxq	%r8, %r9, %rdx
	jmp	.LBB25_7
.LBB25_8:                               # %.loopexit
	retq
.Lfunc_end25:
	.size	_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end25-_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
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
	jmp	.LBB26_1
	.p2align	4
.LBB26_4:                               #   in Loop: Header=BB26_1 Depth=1
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%r9
.LBB26_5:                               #   in Loop: Header=BB26_1 Depth=1
	addq	%rax, %rcx
	addq	$8, %r8
.LBB26_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %r8
	je	.LBB26_6
# %bb.2:                                # %.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	(%r8), %r9
	movq	%rdi, %rax
	orq	%r9, %rax
	shrq	$32, %rax
	jne	.LBB26_4
# %bb.3:                                #   in Loop: Header=BB26_1 Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%r9d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB26_5
.LBB26_6:                               # %.loopexit
	movq	%rcx, %rax
	retq
.Lfunc_end26:
	.size	_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_, .Lfunc_end26-_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIiiESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesIiiESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_
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
	cmpl	$-2, %esi
	jle	.LBB27_37
# %bb.1:
	movl	%esi, %ebp
	movslq	%esi, %r12
	movq	%r12, %rbx
	incq	%rbx
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB27_2
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
	jb	.LBB27_10
	jmp	.LBB27_5
.LBB27_2:
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	cmpl	$4, %ebp
	jae	.LBB27_5
.LBB27_10:                              # %.loopexit10
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpl	$2, %ebp
	jae	.LBB27_11
# %bb.33:
	testq	%r14, %r14
	jne	.LBB27_34
# %bb.35:
	movq	%rdi, %rax
	jmp	.LBB27_36
.LBB27_5:                               # %.preheader9.preheader
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB27_6
	.p2align	4
.LBB27_9:                               # %.loopexit
                                        #   in Loop: Header=BB27_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB27_10
.LBB27_6:                               # %.preheader9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_8 Depth 2
	cmpq	%r12, %rcx
	ja	.LBB27_9
# %bb.7:                                # %.preheader9
                                        #   in Loop: Header=BB27_6 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB27_9
	.p2align	4
.LBB27_8:                               # %.preheader
                                        #   Parent Loop BB27_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB27_8
	jmp	.LBB27_9
.LBB27_11:
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movl	$2, %r13d
	xorl	%ebx, %ebx
	movabsq	$2305843009213693951, %rdx      # imm = 0x1FFFFFFFFFFFFFFF
	xorl	%ebp, %ebp
	jmp	.LBB27_12
	.p2align	4
.LBB27_14:                              #   in Loop: Header=BB27_12 Depth=1
	movl	%r13d, (%rbx)
	addq	$4, %rbx
	movq	%rbx, 8(%rdi)
.LBB27_15:                              #   in Loop: Header=BB27_12 Depth=1
	incq	%r13
	cmpq	%r12, %r13
	ja	.LBB27_16
.LBB27_12:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r14,%r13)
	je	.LBB27_15
# %bb.13:                               #   in Loop: Header=BB27_12 Depth=1
	cmpq	16(%rdi), %rbx
	jne	.LBB27_14
# %bb.17:                               #   in Loop: Header=BB27_12 Depth=1
	subq	%rbp, %rbx
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %rbx
	movq	%rbp, (%rsp)                    # 8-byte Spill
	je	.LBB27_18
# %bb.20:                               #   in Loop: Header=BB27_12 Depth=1
	movq	%rbx, %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %r15
	cmpq	%rdx, %r15
	jb	.LBB27_22
# %bb.21:                               #   in Loop: Header=BB27_12 Depth=1
	movq	%rdx, %r15
.LBB27_22:                              #   in Loop: Header=BB27_12 Depth=1
	addq	%rax, %rcx
	cmovbq	%rdx, %r15
	leaq	(,%r15,4), %rdi
.Ltmp242:
	callq	_Znwm@PLT
.Ltmp243:
# %bb.23:                               #   in Loop: Header=BB27_12 Depth=1
	movq	%rax, %rbp
	movl	%r13d, (%rax,%rbx)
	testq	%rbx, %rbx
	movq	(%rsp), %rax                    # 8-byte Reload
	jle	.LBB27_25
# %bb.24:                               #   in Loop: Header=BB27_12 Depth=1
	movq	%rbp, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rbx, %rdx
	callq	memmove@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
.LBB27_25:                              #   in Loop: Header=BB27_12 Depth=1
	testq	%rax, %rax
	je	.LBB27_27
# %bb.26:                               #   in Loop: Header=BB27_12 Depth=1
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_ZdlPvm@PLT
.LBB27_27:                              #   in Loop: Header=BB27_12 Depth=1
	addq	%rbp, %rbx
	addq	$4, %rbx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%rbx, 8(%rdi)
	leaq	(,%r15,4), %rax
	addq	%rbp, %rax
	movq	%rax, 16(%rdi)
	movabsq	$2305843009213693951, %rdx      # imm = 0x1FFFFFFFFFFFFFFF
	jmp	.LBB27_15
.LBB27_16:
	movq	%rbp, (%rdi)
	movq	16(%rsp), %r15                  # 8-byte Reload
.LBB27_34:
	subq	%r14, %r15
	movq	%rdi, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
.LBB27_36:
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
.LBB27_18:
	.cfi_def_cfa_offset 80
	movq	%rbp, (%rdi)
.Ltmp245:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp246:
# %bb.19:
.LBB27_37:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB27_29:
.Ltmp247:
	movq	%rax, %rbp
	jmp	.LBB27_30
.LBB27_28:
.Ltmp244:
	movq	%rax, %rbp
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB27_30:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB27_32
# %bb.31:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%rbx, %rsi
	callq	_ZdlPvm@PLT
.LBB27_32:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end27:
	.size	_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_, .Lfunc_end27-_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIiiESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table27:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp242-.Lfunc_begin13        #   Call between .Lfunc_begin13 and .Ltmp242
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp243-.Ltmp242              #   Call between .Ltmp242 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin13        #     jumps to .Ltmp244
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Ltmp245-.Ltmp243              #   Call between .Ltmp243 and .Ltmp245
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp245-.Lfunc_begin13        # >> Call Site 4 <<
	.uleb128 .Ltmp246-.Ltmp245              #   Call between .Ltmp245 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin13        #     jumps to .Ltmp247
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin13        # >> Call Site 5 <<
	.uleb128 .Lfunc_end27-.Ltmp246          #   Call between .Ltmp246 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m
.LCPI28_0:
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
	je	.LBB28_2
	.p2align	4
.LBB28_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovgel	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB28_1
.LBB28_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI28_0(%rip), %xmm0, %xmm0
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
.Lfunc_end28:
	.size	_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m, .Lfunc_end28-_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_
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
	cmpl	$-2, %esi
	jle	.LBB29_43
# %bb.1:
	movl	%esi, %ebp
	movq	%rdi, %r9
	movslq	%esi, %rbx
	movq	%rbx, %r15
	incq	%r15
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB29_2
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
	jb	.LBB29_10
	jmp	.LBB29_5
.LBB29_2:
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%r14d, %r14d
	cmpl	$4, %ebp
	jae	.LBB29_5
.LBB29_10:                              # %.loopexit15
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpl	$2, %ebp
	jae	.LBB29_12
# %bb.11:
	xorl	%ebp, %ebp
.LBB29_24:                              # %.loopexit11
	movq	%rbp, (%r9)
	testq	%r14, %r14
	je	.LBB29_41
# %bb.25:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	movq	%r9, %rbx
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	jmp	.LBB29_42
.LBB29_5:                               # %.preheader14.preheader
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB29_6
	.p2align	4
.LBB29_9:                               # %.loopexit13
                                        #   in Loop: Header=BB29_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB29_10
.LBB29_6:                               # %.preheader14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_8 Depth 2
	cmpq	%rbx, %rcx
	ja	.LBB29_9
# %bb.7:                                # %.preheader14
                                        #   in Loop: Header=BB29_6 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB29_9
	.p2align	4
.LBB29_8:                               # %.preheader12
                                        #   Parent Loop BB29_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB29_8
	jmp	.LBB29_9
.LBB29_12:
	movl	$2, %r15d
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	jmp	.LBB29_13
	.p2align	4
.LBB29_21:                              #   in Loop: Header=BB29_13 Depth=1
	movl	%r12d, (%r13)
	shrq	$32, %r12
	movb	%r12b, 4(%r13)
	addq	$5, %r13
	movq	%r13, 8(%r9)
.LBB29_22:                              #   in Loop: Header=BB29_13 Depth=1
	movq	%r10, %rbp
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	ja	.LBB29_24
.LBB29_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_32 Depth 2
	cmpb	$0, (%r14,%r15)
	je	.LBB29_22
# %bb.14:                               #   in Loop: Header=BB29_13 Depth=1
	testl	%r15d, %r15d
	je	.LBB29_44
# %bb.15:                               #   in Loop: Header=BB29_13 Depth=1
	movl	%r15d, %edi
	negl	%edi
	cmovsl	%r15d, %edi
	xorl	%eax, %eax
	lzcntl	%edi, %eax
	movl	%eax, %ecx
	xorl	$31, %ecx
	blsrl	%edi, %edx
	jne	.LBB29_17
# %bb.16:                               #   in Loop: Header=BB29_13 Depth=1
	movl	%r15d, %eax
	shrl	$24, %eax
	andl	$-128, %eax
	orl	%eax, %ecx
	xorl	%eax, %eax
	jmp	.LBB29_20
	.p2align	4
.LBB29_17:                              #   in Loop: Header=BB29_13 Depth=1
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
	je	.LBB29_19
# %bb.18:                               #   in Loop: Header=BB29_13 Depth=1
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
.LBB29_19:                              #   in Loop: Header=BB29_13 Depth=1
	leal	1(%rax), %edx
	movzbl	%sil, %edi
	orb	$-128, %sil
	testl	%r15d, %r15d
	notl	%eax
	movzbl	%sil, %ecx
	cmovnsl	%edi, %ecx
	cmovnsl	%edx, %eax
.LBB29_20:                              #   in Loop: Header=BB29_13 Depth=1
	movzbl	%cl, %ecx
	shlq	$32, %rcx
	movl	%eax, %r12d
	orq	%rcx, %r12
	cmpq	16(%r9), %r13
	jne	.LBB29_21
# %bb.26:                               #   in Loop: Header=BB29_13 Depth=1
	movq	%r13, %rsi
	movq	%r10, (%rsp)                    # 8-byte Spill
	subq	%r10, %rsi
	movabsq	$9223372036854775805, %rax      # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rsi
	je	.LBB29_27
# %bb.29:                               #   in Loop: Header=BB29_13 Depth=1
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
.Ltmp248:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp249:
# %bb.30:                               #   in Loop: Header=BB29_13 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%r12d, (%rax,%rsi)
	shrq	$32, %r12
	movb	%r12b, 4(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB29_33
# %bb.31:                               # %.preheader.preheader
                                        #   in Loop: Header=BB29_13 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB29_32:                              # %.preheader
                                        #   Parent Loop BB29_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4(%rax), %ecx
	movb	%cl, 4(%r12)
	movl	(%rax), %ecx
	movl	%ecx, (%r12)
	addq	$5, %rax
	addq	$5, %r12
	cmpq	%r13, %rax
	jne	.LBB29_32
.LBB29_33:                              # %.loopexit
                                        #   in Loop: Header=BB29_13 Depth=1
	testq	%rdi, %rdi
	je	.LBB29_35
# %bb.34:                               #   in Loop: Header=BB29_13 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB29_35:                              #   in Loop: Header=BB29_13 Depth=1
	addq	$5, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	jbe	.LBB29_13
	jmp	.LBB29_24
.LBB29_41:
	movq	%r9, %rax
.LBB29_42:
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
.LBB29_44:
	.cfi_def_cfa_offset 96
	movq	%r10, (%r9)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s32_genEii(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1464, %edx                     # imm = 0x5B8
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB29_27:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp251:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp252:
# %bb.28:
.LBB29_43:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB29_37:
.Ltmp253:
	movq	%rax, %rbx
	jmp	.LBB29_38
.LBB29_36:
.Ltmp250:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB29_38:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB29_40
# %bb.39:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB29_40:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end29:
	.size	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_, .Lfunc_end29-_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table29:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp248-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp248
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp249-.Ltmp248              #   Call between .Ltmp248 and .Ltmp249
	.uleb128 .Ltmp250-.Lfunc_begin14        #     jumps to .Ltmp250
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp252-.Ltmp251              #   Call between .Ltmp251 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin14        #     jumps to .Ltmp253
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Lfunc_end29-.Ltmp252          #   Call between .Ltmp252 and .Lfunc_end29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI30_0:
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
	je	.LBB30_2
	.p2align	4
.LBB30_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovgel	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB30_1
.LBB30_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI30_0(%rip), %xmm0, %xmm0
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
.Lfunc_end30:
	.size	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end30-_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_
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
	cmpl	$-2, %esi
	jle	.LBB31_41
# %bb.1:
	movl	%esi, %ebp
	movq	%rdi, %r9
	movslq	%esi, %rbx
	movq	%rbx, %r15
	incq	%r15
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB31_2
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
	jb	.LBB31_10
	jmp	.LBB31_5
.LBB31_2:
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%r14d, %r14d
	cmpl	$4, %ebp
	jae	.LBB31_5
.LBB31_10:                              # %.loopexit15
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpl	$2, %ebp
	jae	.LBB31_12
# %bb.11:
	xorl	%ebp, %ebp
.LBB31_22:                              # %.loopexit11
	movq	%rbp, (%r9)
	testq	%r14, %r14
	je	.LBB31_39
# %bb.23:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	movq	%r9, %rbx
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	jmp	.LBB31_40
.LBB31_5:                               # %.preheader14.preheader
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB31_6
	.p2align	4
.LBB31_9:                               # %.loopexit13
                                        #   in Loop: Header=BB31_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB31_10
.LBB31_6:                               # %.preheader14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_8 Depth 2
	cmpq	%rbx, %rcx
	ja	.LBB31_9
# %bb.7:                                # %.preheader14
                                        #   in Loop: Header=BB31_6 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB31_9
	.p2align	4
.LBB31_8:                               # %.preheader12
                                        #   Parent Loop BB31_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB31_8
	jmp	.LBB31_9
.LBB31_12:
	movl	$2, %r15d
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	jmp	.LBB31_13
	.p2align	4
.LBB31_19:                              #   in Loop: Header=BB31_13 Depth=1
	movl	%r12d, (%r13)
	shrq	$32, %r12
	movb	%r12b, 4(%r13)
	addq	$5, %r13
	movq	%r13, 8(%r9)
.LBB31_20:                              #   in Loop: Header=BB31_13 Depth=1
	movq	%r10, %rbp
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	ja	.LBB31_22
.LBB31_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_30 Depth 2
	cmpb	$0, (%r14,%r15)
	je	.LBB31_20
# %bb.14:                               #   in Loop: Header=BB31_13 Depth=1
	testl	%r15d, %r15d
	je	.LBB31_42
# %bb.15:                               #   in Loop: Header=BB31_13 Depth=1
	movl	%r15d, %edi
	negl	%edi
	cmovsl	%r15d, %edi
	xorl	%eax, %eax
	lzcntl	%edi, %eax
	movl	%eax, %ecx
	xorl	$31, %ecx
	blsrl	%edi, %edx
	jne	.LBB31_17
# %bb.16:                               #   in Loop: Header=BB31_13 Depth=1
	movl	%r15d, %eax
	shrl	$24, %eax
	andl	$-128, %eax
	orl	%eax, %ecx
	xorl	%eax, %eax
	jmp	.LBB31_18
	.p2align	4
.LBB31_17:                              #   in Loop: Header=BB31_13 Depth=1
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
.LBB31_18:                              #   in Loop: Header=BB31_13 Depth=1
	movzbl	%cl, %ecx
	shlq	$32, %rcx
	movl	%eax, %r12d
	orq	%rcx, %r12
	cmpq	16(%r9), %r13
	jne	.LBB31_19
# %bb.24:                               #   in Loop: Header=BB31_13 Depth=1
	movq	%r13, %rsi
	movq	%r10, (%rsp)                    # 8-byte Spill
	subq	%r10, %rsi
	movabsq	$9223372036854775805, %rax      # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rsi
	je	.LBB31_25
# %bb.27:                               #   in Loop: Header=BB31_13 Depth=1
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
.Ltmp254:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp255:
# %bb.28:                               #   in Loop: Header=BB31_13 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%r12d, (%rax,%rsi)
	shrq	$32, %r12
	movb	%r12b, 4(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB31_31
# %bb.29:                               # %.preheader.preheader
                                        #   in Loop: Header=BB31_13 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB31_30:                              # %.preheader
                                        #   Parent Loop BB31_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4(%rax), %ecx
	movb	%cl, 4(%r12)
	movl	(%rax), %ecx
	movl	%ecx, (%r12)
	addq	$5, %rax
	addq	$5, %r12
	cmpq	%r13, %rax
	jne	.LBB31_30
.LBB31_31:                              # %.loopexit
                                        #   in Loop: Header=BB31_13 Depth=1
	testq	%rdi, %rdi
	je	.LBB31_33
# %bb.32:                               #   in Loop: Header=BB31_13 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB31_33:                              #   in Loop: Header=BB31_13 Depth=1
	addq	$5, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	jbe	.LBB31_13
	jmp	.LBB31_22
.LBB31_39:
	movq	%r9, %rax
.LBB31_40:
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
.LBB31_42:
	.cfi_def_cfa_offset 96
	movq	%r10, (%r9)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s32_genEii(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1464, %edx                     # imm = 0x5B8
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB31_25:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp257:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp258:
# %bb.26:
.LBB31_41:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB31_35:
.Ltmp259:
	movq	%rax, %rbx
	jmp	.LBB31_36
.LBB31_34:
.Ltmp256:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB31_36:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB31_38
# %bb.37:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB31_38:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end31:
	.size	_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_, .Lfunc_end31-_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table31:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp254-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp254
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp255-.Ltmp254              #   Call between .Ltmp254 and .Ltmp255
	.uleb128 .Ltmp256-.Lfunc_begin15        #     jumps to .Ltmp256
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp257-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Ltmp258-.Ltmp257              #   Call between .Ltmp257 and .Ltmp258
	.uleb128 .Ltmp259-.Lfunc_begin15        #     jumps to .Ltmp259
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin15        # >> Call Site 4 <<
	.uleb128 .Lfunc_end31-.Ltmp258          #   Call between .Ltmp258 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI32_0:
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
	je	.LBB32_2
	.p2align	4
.LBB32_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovgel	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB32_1
.LBB32_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI32_0(%rip), %xmm0, %xmm0
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
.Lfunc_end32:
	.size	_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end32-_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
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
	je	.LBB33_1
# %bb.3:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movslq	%edi, %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	.p2align	4
.LBB33_4:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB33_4
# %bb.5:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB33_1:
	xorl	%eax, %eax
	retq
.Lfunc_end33:
	.size	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end33-_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
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
	je	.LBB34_1
# %bb.3:                                # %.preheader
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
	js	.LBB34_7
# %bb.4:                                # %.preheader.split.preheader
	xorl	%eax, %eax
	jmp	.LBB34_5
	.p2align	4
.LBB34_12:                              #   in Loop: Header=BB34_5 Depth=1
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
.LBB34_13:                              # %target_s32.exit
                                        #   in Loop: Header=BB34_5 Depth=1
	movslq	%r11d, %r9
	addq	%r9, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	je	.LBB34_14
.LBB34_5:                               # %.preheader.split
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rcx), %r10
	movzbl	4(%rcx), %ebx
	movl	%ebx, %r9d
	andl	$31, %r9d
	testq	%r10, %r10
	jne	.LBB34_12
# %bb.6:                                #   in Loop: Header=BB34_5 Depth=1
	sarb	$7, %bl
	movsbl	%bl, %r10d
	shrxl	%r9d, %edi, %r11d
	xorl	%r10d, %r11d
	subl	%r10d, %r11d
	jmp	.LBB34_13
.LBB34_1:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r14
	xorl	%eax, %eax
	retq
.LBB34_7:                               # %.preheader.split.us.preheader
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %rbp, -16
	.cfi_offset %r14, -24
	movl	$-1, %r9d
	xorl	%eax, %eax
	jmp	.LBB34_8
	.p2align	4
.LBB34_9:                               #   in Loop: Header=BB34_8 Depth=1
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
.LBB34_11:                              # %target_s32.exit.us
                                        #   in Loop: Header=BB34_8 Depth=1
	movslq	%r11d, %r10
	addq	%r10, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	je	.LBB34_14
.LBB34_8:                               # %.preheader.split.us
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rcx), %rbx
	movzbl	4(%rcx), %ebp
	movl	%ebp, %r10d
	andl	$31, %r10d
	testq	%rbx, %rbx
	jne	.LBB34_9
# %bb.10:                               #   in Loop: Header=BB34_8 Depth=1
	sarb	$7, %bpl
	movsbl	%bpl, %ebx
	shlxl	%r10d, %r9d, %r11d
	notl	%r11d
	addl	%edi, %r11d
	sarxl	%r10d, %r11d, %r11d
	xorl	%ebx, %r11d
	subl	%ebx, %r11d
	jmp	.LBB34_11
.LBB34_14:
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
.Lfunc_end34:
	.size	_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end34-_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
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
	je	.LBB35_3
	.p2align	4
.LBB35_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	cltd
	idivl	(%r8)
	cltq
	addq	%rax, %rcx
	addq	$4, %r8
	cmpq	%rsi, %r8
	jne	.LBB35_1
.LBB35_3:                               # %.loopexit
	movq	%rcx, %rax
	retq
.Lfunc_end35:
	.size	_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_, .Lfunc_end35-_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIjjESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesIjjESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_
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
	jae	.LBB36_1
.LBB36_6:                               # %.loopexit8
	vxorps	%xmm0, %xmm0, %xmm0
	movq	(%rsp), %rcx                    # 8-byte Reload
	vmovups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	cmpl	$2, %ebp
	jae	.LBB36_8
# %bb.7:
	xorl	%ebp, %ebp
.LBB36_14:                              # %.loopexit
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
.LBB36_1:                               # %.preheader7.preheader
	.cfi_def_cfa_offset 80
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB36_2
	.p2align	4
.LBB36_5:                               # %.loopexit6
                                        #   in Loop: Header=BB36_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB36_6
.LBB36_2:                               # %.preheader7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_4 Depth 2
	cmpq	%rbx, %rcx
	ja	.LBB36_5
# %bb.3:                                # %.preheader7
                                        #   in Loop: Header=BB36_2 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB36_5
	.p2align	4
.LBB36_4:                               # %.preheader
                                        #   Parent Loop BB36_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB36_4
	jmp	.LBB36_5
.LBB36_8:
	movl	$1, %edx
	subq	%rbx, %rdx
	movl	$2, %ebx
	xorl	%r12d, %r12d
	movabsq	$2305843009213693951, %rsi      # imm = 0x1FFFFFFFFFFFFFFF
	xorl	%r13d, %r13d
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB36_9
	.p2align	4
.LBB36_11:                              #   in Loop: Header=BB36_9 Depth=1
	movl	%ebx, (%r12)
	addq	$4, %r12
	movq	%r12, 8(%rcx)
.LBB36_12:                              #   in Loop: Header=BB36_9 Depth=1
	movq	%r13, %rbp
.LBB36_13:                              #   in Loop: Header=BB36_9 Depth=1
	leaq	(%rdx,%rbx), %rax
	incq	%rax
	incq	%rbx
	movq	%rbp, %r13
	cmpq	$2, %rax
	je	.LBB36_14
.LBB36_9:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r14,%rbx)
	je	.LBB36_12
# %bb.10:                               #   in Loop: Header=BB36_9 Depth=1
	cmpq	16(%rcx), %r12
	jne	.LBB36_11
# %bb.15:                               #   in Loop: Header=BB36_9 Depth=1
	subq	%r13, %r12
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r12
	je	.LBB36_16
# %bb.18:                               #   in Loop: Header=BB36_9 Depth=1
	movq	%r12, %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %r15
	cmpq	%rsi, %r15
	jb	.LBB36_20
# %bb.19:                               #   in Loop: Header=BB36_9 Depth=1
	movq	%rsi, %r15
.LBB36_20:                              #   in Loop: Header=BB36_9 Depth=1
	addq	%rax, %rcx
	cmovbq	%rsi, %r15
	leaq	(,%r15,4), %rdi
.Ltmp260:
	callq	_Znwm@PLT
.Ltmp261:
# %bb.21:                               #   in Loop: Header=BB36_9 Depth=1
	movq	%rax, %rbp
	movl	%ebx, (%rax,%r12)
	testq	%r12, %r12
	jle	.LBB36_23
# %bb.22:                               #   in Loop: Header=BB36_9 Depth=1
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	memmove@PLT
.LBB36_23:                              #   in Loop: Header=BB36_9 Depth=1
	testq	%r13, %r13
	je	.LBB36_25
# %bb.24:                               #   in Loop: Header=BB36_9 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_ZdlPvm@PLT
.LBB36_25:                              #   in Loop: Header=BB36_9 Depth=1
	addq	%rbp, %r12
	addq	$4, %r12
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%r12, 8(%rcx)
	leaq	(,%r15,4), %rax
	addq	%rbp, %rax
	movq	%rax, 16(%rcx)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movabsq	$2305843009213693951, %rsi      # imm = 0x1FFFFFFFFFFFFFFF
	jmp	.LBB36_13
.LBB36_16:
	movq	%r13, (%rcx)
.Ltmp263:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp264:
# %bb.17:
.LBB36_27:
.Ltmp265:
	movq	%rax, %rbp
	jmp	.LBB36_28
.LBB36_26:
.Ltmp262:
	movq	%rax, %rbp
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%r13, (%rax)
.LBB36_28:
	testq	%r13, %r13
	je	.LBB36_30
# %bb.29:
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_ZdlPvm@PLT
.LBB36_30:
	movq	%r14, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end36:
	.size	_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_, .Lfunc_end36-_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIjjESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table36:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp260-.Lfunc_begin16        #   Call between .Lfunc_begin16 and .Ltmp260
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp261-.Ltmp260              #   Call between .Ltmp260 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin16        #     jumps to .Ltmp262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Ltmp263-.Ltmp261              #   Call between .Ltmp261 and .Ltmp263
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin16        # >> Call Site 4 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin16        #     jumps to .Ltmp265
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin16        # >> Call Site 5 <<
	.uleb128 .Lfunc_end36-.Ltmp264          #   Call between .Ltmp264 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m
.LCPI37_0:
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
	je	.LBB37_2
	.p2align	4
.LBB37_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovael	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB37_1
.LBB37_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI37_0(%rip), %xmm0, %xmm0
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
.Lfunc_end37:
	.size	_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m, .Lfunc_end37-_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_
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
	jae	.LBB38_1
.LBB38_6:                               # %.loopexit10
	vxorps	%xmm0, %xmm0, %xmm0
	movq	8(%rsp), %r8                    # 8-byte Reload
	vmovups	%xmm0, (%r8)
	movq	$0, 16(%r8)
	cmpl	$2, %ebp
	jae	.LBB38_8
# %bb.7:
	xorl	%ebp, %ebp
.LBB38_19:                              # %.loopexit6
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
.LBB38_1:                               # %.preheader9.preheader
	.cfi_def_cfa_offset 96
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB38_2
	.p2align	4
.LBB38_5:                               # %.loopexit8
                                        #   in Loop: Header=BB38_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r15, %rcx
	ja	.LBB38_6
.LBB38_2:                               # %.preheader9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_4 Depth 2
	cmpq	%r15, %rcx
	ja	.LBB38_5
# %bb.3:                                # %.preheader9
                                        #   in Loop: Header=BB38_2 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB38_5
	.p2align	4
.LBB38_4:                               # %.preheader7
                                        #   Parent Loop BB38_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r15, %rcx
	jbe	.LBB38_4
	jmp	.LBB38_5
.LBB38_8:
	movl	$2, %ebx
	xorl	%r13d, %r13d
	xorl	%r9d, %r9d
	jmp	.LBB38_9
	.p2align	4
.LBB38_16:                              #   in Loop: Header=BB38_9 Depth=1
	movl	%r12d, (%r13)
	shrq	$32, %r12
	movb	%r12b, 4(%r13)
	addq	$5, %r13
	movq	%r13, 8(%r8)
.LBB38_17:                              #   in Loop: Header=BB38_9 Depth=1
	movq	%r9, %rbp
.LBB38_18:                              #   in Loop: Header=BB38_9 Depth=1
	leaq	1(%rbx), %rax
	movq	%rbp, %r9
	cmpq	%r15, %rbx
	movq	%rax, %rbx
	je	.LBB38_19
.LBB38_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_26 Depth 2
	cmpb	$0, (%r14,%rbx)
	je	.LBB38_17
# %bb.10:                               #   in Loop: Header=BB38_9 Depth=1
	bsrl	%ebx, %esi
	blsrl	%ebx, %eax
	jne	.LBB38_12
# %bb.11:                               #   in Loop: Header=BB38_9 Depth=1
	xorl	%eax, %eax
	jmp	.LBB38_15
	.p2align	4
.LBB38_12:                              #   in Loop: Header=BB38_9 Depth=1
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
	jb	.LBB38_14
# %bb.13:                               #   in Loop: Header=BB38_9 Depth=1
	leal	(%rdx,%rdx), %ecx
	cmpl	%ebx, %ecx
	setae	%cl
	testl	%edx, %edx
	sets	%dl
	orb	%cl, %dl
	movzbl	%dl, %ecx
	leal	(%rcx,%rax,2), %eax
	orb	$64, %sil
.LBB38_14:                              #   in Loop: Header=BB38_9 Depth=1
	incl	%eax
.LBB38_15:                              #   in Loop: Header=BB38_9 Depth=1
	movzbl	%sil, %ecx
	shlq	$32, %rcx
	movl	%eax, %r12d
	orq	%rcx, %r12
	cmpq	16(%r8), %r13
	jne	.LBB38_16
# %bb.20:                               #   in Loop: Header=BB38_9 Depth=1
	movq	%r13, %rsi
	movq	%r9, (%rsp)                     # 8-byte Spill
	subq	%r9, %rsi
	movabsq	$9223372036854775805, %rax      # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rsi
	je	.LBB38_21
# %bb.23:                               #   in Loop: Header=BB38_9 Depth=1
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
.Ltmp266:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp267:
# %bb.24:                               #   in Loop: Header=BB38_9 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%r12d, (%rax,%rsi)
	shrq	$32, %r12
	movb	%r12b, 4(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r8                    # 8-byte Reload
	je	.LBB38_27
# %bb.25:                               # %.preheader.preheader
                                        #   in Loop: Header=BB38_9 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB38_26:                              # %.preheader
                                        #   Parent Loop BB38_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4(%rax), %ecx
	movb	%cl, 4(%r12)
	movl	(%rax), %ecx
	movl	%ecx, (%r12)
	addq	$5, %rax
	addq	$5, %r12
	cmpq	%r13, %rax
	jne	.LBB38_26
.LBB38_27:                              # %.loopexit
                                        #   in Loop: Header=BB38_9 Depth=1
	testq	%rdi, %rdi
	je	.LBB38_29
# %bb.28:                               #   in Loop: Header=BB38_9 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r8                    # 8-byte Reload
.LBB38_29:                              #   in Loop: Header=BB38_9 Depth=1
	addq	$5, %r12
	movq	%r12, 8(%r8)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r8)
	movq	%r12, %r13
	jmp	.LBB38_18
.LBB38_21:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp269:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp270:
# %bb.22:
.LBB38_31:
.Ltmp271:
	movq	%rax, %rbx
	jmp	.LBB38_32
.LBB38_30:
.Ltmp268:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB38_32:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB38_34
# %bb.33:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB38_34:
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end38:
	.size	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_, .Lfunc_end38-_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table38:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp266-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp266
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp267-.Ltmp266              #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin17        #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin17        #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Lfunc_end38-.Ltmp270          #   Call between .Ltmp270 and .Lfunc_end38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI39_0:
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
	je	.LBB39_2
	.p2align	4
.LBB39_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovael	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB39_1
.LBB39_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI39_0(%rip), %xmm0, %xmm0
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
.Lfunc_end39:
	.size	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end39-_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_
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
	jae	.LBB40_1
.LBB40_6:                               # %.loopexit10
	vxorps	%xmm0, %xmm0, %xmm0
	movq	8(%rsp), %r9                    # 8-byte Reload
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpl	$2, %ebp
	jae	.LBB40_8
# %bb.7:
	xorl	%ebp, %ebp
.LBB40_17:                              # %.loopexit6
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
.LBB40_1:                               # %.preheader9.preheader
	.cfi_def_cfa_offset 96
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB40_2
	.p2align	4
.LBB40_5:                               # %.loopexit8
                                        #   in Loop: Header=BB40_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r15, %rcx
	ja	.LBB40_6
.LBB40_2:                               # %.preheader9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_4 Depth 2
	cmpq	%r15, %rcx
	ja	.LBB40_5
# %bb.3:                                # %.preheader9
                                        #   in Loop: Header=BB40_2 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB40_5
	.p2align	4
.LBB40_4:                               # %.preheader7
                                        #   Parent Loop BB40_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r15, %rcx
	jbe	.LBB40_4
	jmp	.LBB40_5
.LBB40_8:
	movl	$2, %ebx
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	jmp	.LBB40_9
	.p2align	4
.LBB40_14:                              #   in Loop: Header=BB40_9 Depth=1
	movl	%r12d, (%r13)
	shrq	$32, %r12
	movb	%r12b, 4(%r13)
	addq	$5, %r13
	movq	%r13, 8(%r9)
.LBB40_15:                              #   in Loop: Header=BB40_9 Depth=1
	movq	%r8, %rbp
.LBB40_16:                              #   in Loop: Header=BB40_9 Depth=1
	leaq	1(%rbx), %rax
	movq	%rbp, %r8
	cmpq	%r15, %rbx
	movq	%rax, %rbx
	je	.LBB40_17
.LBB40_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_24 Depth 2
	cmpb	$0, (%r14,%rbx)
	je	.LBB40_15
# %bb.10:                               #   in Loop: Header=BB40_9 Depth=1
	xorl	%ecx, %ecx
	lzcntl	%ebx, %ecx
	blsrl	%ebx, %eax
	jne	.LBB40_12
# %bb.11:                               #   in Loop: Header=BB40_9 Depth=1
	movb	$30, %dl
	subb	%cl, %dl
	xorl	%eax, %eax
	jmp	.LBB40_13
	.p2align	4
.LBB40_12:                              #   in Loop: Header=BB40_9 Depth=1
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
.LBB40_13:                              #   in Loop: Header=BB40_9 Depth=1
	movzbl	%dl, %r12d
	movl	%eax, %eax
	andl	$31, %r12d
	shlq	$32, %r12
	orq	%rax, %r12
	cmpq	16(%r9), %r13
	jne	.LBB40_14
# %bb.18:                               #   in Loop: Header=BB40_9 Depth=1
	movq	%r13, %rsi
	movq	%r8, (%rsp)                     # 8-byte Spill
	subq	%r8, %rsi
	movabsq	$9223372036854775805, %rax      # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rsi
	je	.LBB40_19
# %bb.21:                               #   in Loop: Header=BB40_9 Depth=1
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
.Ltmp272:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp273:
# %bb.22:                               #   in Loop: Header=BB40_9 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%r12d, (%rax,%rsi)
	shrq	$32, %r12
	movb	%r12b, 4(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB40_25
# %bb.23:                               # %.preheader.preheader
                                        #   in Loop: Header=BB40_9 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB40_24:                              # %.preheader
                                        #   Parent Loop BB40_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4(%rax), %ecx
	movb	%cl, 4(%r12)
	movl	(%rax), %ecx
	movl	%ecx, (%r12)
	addq	$5, %rax
	addq	$5, %r12
	cmpq	%r13, %rax
	jne	.LBB40_24
.LBB40_25:                              # %.loopexit
                                        #   in Loop: Header=BB40_9 Depth=1
	testq	%rdi, %rdi
	je	.LBB40_27
# %bb.26:                               #   in Loop: Header=BB40_9 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB40_27:                              #   in Loop: Header=BB40_9 Depth=1
	addq	$5, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	jmp	.LBB40_16
.LBB40_19:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp275:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp276:
# %bb.20:
.LBB40_29:
.Ltmp277:
	movq	%rax, %rbx
	jmp	.LBB40_30
.LBB40_28:
.Ltmp274:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB40_30:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB40_32
# %bb.31:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB40_32:
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end40:
	.size	_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_, .Lfunc_end40-_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table40:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp272-.Lfunc_begin18        #   Call between .Lfunc_begin18 and .Ltmp272
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin18        #     jumps to .Ltmp274
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin18        #     jumps to .Ltmp277
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin18        # >> Call Site 4 <<
	.uleb128 .Lfunc_end40-.Ltmp276          #   Call between .Ltmp276 and .Lfunc_end40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI41_0:
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
	je	.LBB41_2
	.p2align	4
.LBB41_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, %r15d
	movl	$2, %edi
	cmovael	%r15d, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB41_1
.LBB41_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI41_0(%rip), %xmm0, %xmm0
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
.Lfunc_end41:
	.size	_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end41-_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
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
	je	.LBB42_1
# %bb.3:
	movl	%edi, %esi
	xorl	%eax, %eax
	.p2align	4
.LBB42_4:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB42_4
# %bb.2:                                # %.loopexit
	retq
.LBB42_1:
	xorl	%eax, %eax
	retq
.Lfunc_end42:
	.size	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end42-_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
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
	je	.LBB43_1
# %bb.3:
	movl	%edi, %esi
	xorl	%eax, %eax
	jmp	.LBB43_4
	.p2align	4
.LBB43_5:                               #   in Loop: Header=BB43_4 Depth=1
	shrxl	%r8d, %edi, %r8d
.LBB43_9:                               #   in Loop: Header=BB43_4 Depth=1
	movl	%r8d, %r8d
	addq	%r8, %rax
	addq	$5, %rcx
	cmpq	%rdx, %rcx
	je	.LBB43_2
.LBB43_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %r9d
	movzbl	4(%rcx), %r8d
	testq	%r9, %r9
	je	.LBB43_5
# %bb.6:                                #   in Loop: Header=BB43_4 Depth=1
	imulq	%rsi, %r9
	shrq	$32, %r9
	testb	$64, %r8b
	jne	.LBB43_7
# %bb.8:                                #   in Loop: Header=BB43_4 Depth=1
	shrxl	%r8d, %r9d, %r8d
	jmp	.LBB43_9
	.p2align	4
.LBB43_7:                               #   in Loop: Header=BB43_4 Depth=1
	movl	%edi, %r10d
	subl	%r9d, %r10d
	shrl	%r10d
	addl	%r9d, %r10d
	shrxl	%r8d, %r10d, %r8d
	jmp	.LBB43_9
.LBB43_1:
	xorl	%eax, %eax
.LBB43_2:                               # %.loopexit
	retq
.Lfunc_end43:
	.size	_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end43-_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
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
	je	.LBB44_3
	.p2align	4
.LBB44_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	(%r8)
                                        # kill: def $eax killed $eax def $rax
	addq	%rax, %rcx
	addq	$4, %r8
	cmpq	%rsi, %r8
	jne	.LBB44_1
.LBB44_3:                               # %.loopexit
	movq	%rcx, %rax
	retq
.Lfunc_end44:
	.size	_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_, .Lfunc_end44-_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIssESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesIssESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesIssESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesIssESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesIssESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesIssESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesIssESt6vectorIT_SaIS1_EET0_
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
	movl	%esi, %ebp
	cmpw	$-2, %bp
	jle	.LBB45_37
# %bb.1:
	movslq	%ebp, %r12
	movq	%r12, %rbx
	incq	%rbx
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB45_2
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
	jb	.LBB45_10
	jmp	.LBB45_5
.LBB45_2:
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	cmpw	$4, %bp
	jae	.LBB45_5
.LBB45_10:                              # %.loopexit10
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	cmpw	$2, %bp
	jae	.LBB45_11
# %bb.33:
	testq	%r14, %r14
	jne	.LBB45_34
# %bb.35:
	movq	%rdi, %rax
	jmp	.LBB45_36
.LBB45_5:                               # %.preheader9.preheader
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB45_6
	.p2align	4
.LBB45_9:                               # %.loopexit
                                        #   in Loop: Header=BB45_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r12, %rcx
	ja	.LBB45_10
.LBB45_6:                               # %.preheader9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_8 Depth 2
	cmpq	%r12, %rcx
	ja	.LBB45_9
# %bb.7:                                # %.preheader9
                                        #   in Loop: Header=BB45_6 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB45_9
	.p2align	4
.LBB45_8:                               # %.preheader
                                        #   Parent Loop BB45_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r12, %rcx
	jbe	.LBB45_8
	jmp	.LBB45_9
.LBB45_11:
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movl	$2, %r13d
	xorl	%ebx, %ebx
	movabsq	$4611686018427387903, %rdx      # imm = 0x3FFFFFFFFFFFFFFF
	xorl	%ebp, %ebp
	jmp	.LBB45_12
	.p2align	4
.LBB45_14:                              #   in Loop: Header=BB45_12 Depth=1
	movw	%r13w, (%rbx)
	addq	$2, %rbx
	movq	%rbx, 8(%rdi)
.LBB45_15:                              #   in Loop: Header=BB45_12 Depth=1
	incq	%r13
	cmpq	%r12, %r13
	ja	.LBB45_16
.LBB45_12:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r14,%r13)
	je	.LBB45_15
# %bb.13:                               #   in Loop: Header=BB45_12 Depth=1
	cmpq	16(%rdi), %rbx
	jne	.LBB45_14
# %bb.17:                               #   in Loop: Header=BB45_12 Depth=1
	subq	%rbp, %rbx
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %rbx
	movq	%rbp, (%rsp)                    # 8-byte Spill
	je	.LBB45_18
# %bb.20:                               #   in Loop: Header=BB45_12 Depth=1
	movq	%rbx, %rax
	sarq	%rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %r15
	cmpq	%rdx, %r15
	jb	.LBB45_22
# %bb.21:                               #   in Loop: Header=BB45_12 Depth=1
	movq	%rdx, %r15
.LBB45_22:                              #   in Loop: Header=BB45_12 Depth=1
	addq	%rax, %rcx
	cmovbq	%rdx, %r15
	leaq	(%r15,%r15), %rdi
.Ltmp278:
	callq	_Znwm@PLT
.Ltmp279:
# %bb.23:                               #   in Loop: Header=BB45_12 Depth=1
	movq	%rax, %rbp
	movw	%r13w, (%rax,%rbx)
	testq	%rbx, %rbx
	movq	(%rsp), %rax                    # 8-byte Reload
	jle	.LBB45_25
# %bb.24:                               #   in Loop: Header=BB45_12 Depth=1
	movq	%rbp, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rbx, %rdx
	callq	memmove@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
.LBB45_25:                              #   in Loop: Header=BB45_12 Depth=1
	testq	%rax, %rax
	je	.LBB45_27
# %bb.26:                               #   in Loop: Header=BB45_12 Depth=1
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_ZdlPvm@PLT
.LBB45_27:                              #   in Loop: Header=BB45_12 Depth=1
	addq	%rbp, %rbx
	addq	$2, %rbx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%rbx, 8(%rdi)
	leaq	(,%r15,2), %rax
	addq	%rbp, %rax
	movq	%rax, 16(%rdi)
	movabsq	$4611686018427387903, %rdx      # imm = 0x3FFFFFFFFFFFFFFF
	jmp	.LBB45_15
.LBB45_16:
	movq	%rbp, (%rdi)
	movq	16(%rsp), %r15                  # 8-byte Reload
.LBB45_34:
	subq	%r14, %r15
	movq	%rdi, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
.LBB45_36:
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
.LBB45_18:
	.cfi_def_cfa_offset 80
	movq	%rbp, (%rdi)
.Ltmp281:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp282:
# %bb.19:
.LBB45_37:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB45_29:
.Ltmp283:
	movq	%rax, %rbp
	jmp	.LBB45_30
.LBB45_28:
.Ltmp280:
	movq	%rax, %rbp
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB45_30:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB45_32
# %bb.31:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%rbx, %rsi
	callq	_ZdlPvm@PLT
.LBB45_32:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end45:
	.size	_Z10get_primesIssESt6vectorIT_SaIS1_EET0_, .Lfunc_end45-_Z10get_primesIssESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIssESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesIssESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table45:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Lfunc_begin19-.Lfunc_begin19  # >> Call Site 1 <<
	.uleb128 .Ltmp278-.Lfunc_begin19        #   Call between .Lfunc_begin19 and .Ltmp278
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin19        #     jumps to .Ltmp280
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin19        # >> Call Site 3 <<
	.uleb128 .Ltmp281-.Ltmp279              #   Call between .Ltmp279 and .Ltmp281
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin19        # >> Call Site 4 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin19        #     jumps to .Ltmp283
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin19        # >> Call Site 5 <<
	.uleb128 .Lfunc_end45-.Ltmp282          #   Call between .Ltmp282 and .Lfunc_end45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m
.LCPI46_0:
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
	je	.LBB46_2
	.p2align	4
.LBB46_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovgel	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB46_1
.LBB46_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI46_0(%rip), %xmm0, %xmm0
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
.Lfunc_end46:
	.size	_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m, .Lfunc_end46-_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_
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
	movl	%esi, %ebp
	cmpw	$-2, %bp
	jle	.LBB47_44
# %bb.1:
	movq	%rdi, %r9
	movslq	%ebp, %rbx
	movq	%rbx, %r15
	incq	%r15
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB47_2
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
	jb	.LBB47_10
	jmp	.LBB47_5
.LBB47_2:
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%r14d, %r14d
	cmpw	$4, %bp
	jae	.LBB47_5
.LBB47_10:                              # %.loopexit15
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpw	$2, %bp
	jae	.LBB47_12
# %bb.11:
	xorl	%ebp, %ebp
.LBB47_25:                              # %.loopexit11
	movq	%rbp, (%r9)
	testq	%r14, %r14
	je	.LBB47_42
# %bb.26:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	movq	%r9, %rbx
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	jmp	.LBB47_43
.LBB47_5:                               # %.preheader14.preheader
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB47_6
	.p2align	4
.LBB47_9:                               # %.loopexit13
                                        #   in Loop: Header=BB47_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB47_10
.LBB47_6:                               # %.preheader14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_8 Depth 2
	cmpq	%rbx, %rcx
	ja	.LBB47_9
# %bb.7:                                # %.preheader14
                                        #   in Loop: Header=BB47_6 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB47_9
	.p2align	4
.LBB47_8:                               # %.preheader12
                                        #   Parent Loop BB47_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB47_8
	jmp	.LBB47_9
.LBB47_12:
	movl	$2, %r15d
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	jmp	.LBB47_13
	.p2align	4
.LBB47_22:                              #   in Loop: Header=BB47_13 Depth=1
	movw	%r12w, (%r13)
	shrl	$16, %r12d
	movb	%r12b, 2(%r13)
	addq	$3, %r13
	movq	%r13, 8(%r9)
.LBB47_23:                              #   in Loop: Header=BB47_13 Depth=1
	movq	%r10, %rbp
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	ja	.LBB47_25
.LBB47_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_33 Depth 2
	cmpb	$0, (%r14,%r15)
	je	.LBB47_23
# %bb.14:                               #   in Loop: Header=BB47_13 Depth=1
	testw	%r15w, %r15w
	je	.LBB47_45
# %bb.15:                               #   in Loop: Header=BB47_13 Depth=1
	movl	%r15d, %esi
	negw	%si
	cmovsw	%r15w, %si
	lzcntw	%si, %di
	movl	%edi, %ecx
	xorl	$15, %ecx
	movzwl	%si, %r8d
	blsrl	%r8d, %eax
	je	.LBB47_16
# %bb.17:                               #   in Loop: Header=BB47_13 Depth=1
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
	je	.LBB47_18
# %bb.19:                               #   in Loop: Header=BB47_13 Depth=1
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
	jmp	.LBB47_20
	.p2align	4
.LBB47_16:                              #   in Loop: Header=BB47_13 Depth=1
	movl	%r15d, %eax
	shrl	$8, %eax
	andl	$128, %eax
	movzwl	%cx, %ecx
	orl	%eax, %ecx
	xorl	%eax, %eax
	jmp	.LBB47_21
.LBB47_18:                              #   in Loop: Header=BB47_13 Depth=1
	movb	$14, %cl
	subb	%dil, %cl
.LBB47_20:                              #   in Loop: Header=BB47_13 Depth=1
	leal	1(%rax), %edx
	movzbl	%cl, %esi
	orb	$-128, %cl
	testw	%r15w, %r15w
	notl	%eax
	movzbl	%cl, %ecx
	cmovnsl	%esi, %ecx
	cmovnsl	%edx, %eax
.LBB47_21:                              #   in Loop: Header=BB47_13 Depth=1
	movzbl	%cl, %ecx
	shll	$16, %ecx
	movzwl	%ax, %r12d
	orl	%ecx, %r12d
	cmpq	16(%r9), %r13
	jne	.LBB47_22
# %bb.27:                               #   in Loop: Header=BB47_13 Depth=1
	movq	%r13, %rsi
	movq	%r10, (%rsp)                    # 8-byte Spill
	subq	%r10, %rsi
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %rsi
	je	.LBB47_28
# %bb.30:                               #   in Loop: Header=BB47_13 Depth=1
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
.Ltmp284:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp285:
# %bb.31:                               #   in Loop: Header=BB47_13 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movw	%r12w, (%rax,%rsi)
	shrl	$16, %r12d
	movb	%r12b, 2(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB47_34
# %bb.32:                               # %.preheader.preheader
                                        #   in Loop: Header=BB47_13 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB47_33:                              # %.preheader
                                        #   Parent Loop BB47_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	2(%rax), %ecx
	movb	%cl, 2(%r12)
	movzwl	(%rax), %ecx
	movw	%cx, (%r12)
	addq	$3, %rax
	addq	$3, %r12
	cmpq	%r13, %rax
	jne	.LBB47_33
.LBB47_34:                              # %.loopexit
                                        #   in Loop: Header=BB47_13 Depth=1
	testq	%rdi, %rdi
	je	.LBB47_36
# %bb.35:                               #   in Loop: Header=BB47_13 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB47_36:                              #   in Loop: Header=BB47_13 Depth=1
	addq	$3, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	jbe	.LBB47_13
	jmp	.LBB47_25
.LBB47_42:
	movq	%r9, %rax
.LBB47_43:
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
.LBB47_45:
	.cfi_def_cfa_offset 96
	movq	%r10, (%r9)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s16_genEsi(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1288, %edx                     # imm = 0x508
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB47_28:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp287:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp288:
# %bb.29:
.LBB47_44:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB47_38:
.Ltmp289:
	movq	%rax, %rbx
	jmp	.LBB47_39
.LBB47_37:
.Ltmp286:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB47_39:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB47_41
# %bb.40:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB47_41:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end47:
	.size	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_, .Lfunc_end47-_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table47:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp284-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp284
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin20        #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.uleb128 .Ltmp289-.Lfunc_begin20        #     jumps to .Ltmp289
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin20        # >> Call Site 4 <<
	.uleb128 .Lfunc_end47-.Ltmp288          #   Call between .Ltmp288 and .Lfunc_end47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI48_0:
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
	je	.LBB48_2
	.p2align	4
.LBB48_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovgel	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB48_1
.LBB48_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI48_0(%rip), %xmm0, %xmm0
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
.Lfunc_end48:
	.size	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end48-_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_
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
	movl	%esi, %ebp
	cmpw	$-2, %bp
	jle	.LBB49_41
# %bb.1:
	movq	%rdi, %r9
	movslq	%ebp, %rbx
	movq	%rbx, %r15
	incq	%r15
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	je	.LBB49_2
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
	jb	.LBB49_10
	jmp	.LBB49_5
.LBB49_2:
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%r14d, %r14d
	cmpw	$4, %bp
	jae	.LBB49_5
.LBB49_10:                              # %.loopexit15
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpw	$2, %bp
	jae	.LBB49_12
# %bb.11:
	xorl	%ebp, %ebp
.LBB49_22:                              # %.loopexit11
	movq	%rbp, (%r9)
	testq	%r14, %r14
	je	.LBB49_39
# %bb.23:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	movq	%r9, %rbx
	callq	_ZdlPvm@PLT
	movq	%rbx, %rax
	jmp	.LBB49_40
.LBB49_5:                               # %.preheader14.preheader
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB49_6
	.p2align	4
.LBB49_9:                               # %.loopexit13
                                        #   in Loop: Header=BB49_6 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB49_10
.LBB49_6:                               # %.preheader14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_8 Depth 2
	cmpq	%rbx, %rcx
	ja	.LBB49_9
# %bb.7:                                # %.preheader14
                                        #   in Loop: Header=BB49_6 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB49_9
	.p2align	4
.LBB49_8:                               # %.preheader12
                                        #   Parent Loop BB49_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB49_8
	jmp	.LBB49_9
.LBB49_12:
	movl	$2, %r15d
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	jmp	.LBB49_13
	.p2align	4
.LBB49_19:                              #   in Loop: Header=BB49_13 Depth=1
	movw	%r12w, (%r13)
	shrl	$16, %r12d
	movb	%r12b, 2(%r13)
	addq	$3, %r13
	movq	%r13, 8(%r9)
.LBB49_20:                              #   in Loop: Header=BB49_13 Depth=1
	movq	%r10, %rbp
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	ja	.LBB49_22
.LBB49_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_30 Depth 2
	cmpb	$0, (%r14,%r15)
	je	.LBB49_20
# %bb.14:                               #   in Loop: Header=BB49_13 Depth=1
	testw	%r15w, %r15w
	je	.LBB49_42
# %bb.15:                               #   in Loop: Header=BB49_13 Depth=1
	movl	%r15d, %eax
	negw	%ax
	cmovsw	%r15w, %ax
	bsrw	%ax, %si
	movzwl	%ax, %edi
	blsrl	%edi, %eax
	je	.LBB49_16
# %bb.17:                               #   in Loop: Header=BB49_13 Depth=1
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
	jmp	.LBB49_18
	.p2align	4
.LBB49_16:                              #   in Loop: Header=BB49_13 Depth=1
	movl	%r15d, %eax
	shrl	$8, %eax
	andl	$128, %eax
	movzwl	%si, %ecx
	orl	%eax, %ecx
	xorl	%eax, %eax
.LBB49_18:                              #   in Loop: Header=BB49_13 Depth=1
	movzbl	%cl, %ecx
	shll	$16, %ecx
	movzwl	%ax, %r12d
	orl	%ecx, %r12d
	cmpq	16(%r9), %r13
	jne	.LBB49_19
# %bb.24:                               #   in Loop: Header=BB49_13 Depth=1
	movq	%r13, %rsi
	movq	%r10, (%rsp)                    # 8-byte Spill
	subq	%r10, %rsi
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %rsi
	je	.LBB49_25
# %bb.27:                               #   in Loop: Header=BB49_13 Depth=1
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
.Ltmp290:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp291:
# %bb.28:                               #   in Loop: Header=BB49_13 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movw	%r12w, (%rax,%rsi)
	shrl	$16, %r12d
	movb	%r12b, 2(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB49_31
# %bb.29:                               # %.preheader.preheader
                                        #   in Loop: Header=BB49_13 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB49_30:                              # %.preheader
                                        #   Parent Loop BB49_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	2(%rax), %ecx
	movb	%cl, 2(%r12)
	movzwl	(%rax), %ecx
	movw	%cx, (%r12)
	addq	$3, %rax
	addq	$3, %r12
	cmpq	%r13, %rax
	jne	.LBB49_30
.LBB49_31:                              # %.loopexit
                                        #   in Loop: Header=BB49_13 Depth=1
	testq	%rdi, %rdi
	je	.LBB49_33
# %bb.32:                               #   in Loop: Header=BB49_13 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB49_33:                              #   in Loop: Header=BB49_13 Depth=1
	addq	$3, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	incq	%r15
	movq	%rbp, %r10
	cmpq	%rbx, %r15
	jbe	.LBB49_13
	jmp	.LBB49_22
.LBB49_39:
	movq	%r9, %rax
.LBB49_40:
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
.LBB49_42:
	.cfi_def_cfa_offset 96
	movq	%r10, (%r9)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	.L.str.25(%rip), %rsi
	leaq	.L__FUNCTION__._ZN9libdivideL26libdivide_internal_s16_genEsi(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1288, %edx                     # imm = 0x508
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	abort@PLT
.LBB49_25:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp293:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp294:
# %bb.26:
.LBB49_41:
	leaq	.L.str.23(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB49_35:
.Ltmp295:
	movq	%rax, %rbx
	jmp	.LBB49_36
.LBB49_34:
.Ltmp292:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB49_36:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB49_38
# %bb.37:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB49_38:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	subq	%r14, %rsi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end49:
	.size	_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_, .Lfunc_end49-_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table49:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Lfunc_begin21-.Lfunc_begin21  # >> Call Site 1 <<
	.uleb128 .Ltmp290-.Lfunc_begin21        #   Call between .Lfunc_begin21 and .Ltmp290
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin21        #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin21        # >> Call Site 3 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin21        #     jumps to .Ltmp295
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin21        # >> Call Site 4 <<
	.uleb128 .Lfunc_end49-.Ltmp294          #   Call between .Ltmp294 and .Lfunc_end49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI50_0:
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
	je	.LBB50_2
	.p2align	4
.LBB50_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovgel	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB50_1
.LBB50_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI50_0(%rip), %xmm0, %xmm0
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
.Lfunc_end50:
	.size	_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end50-_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
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
	je	.LBB51_1
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
.LBB51_4:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB51_4
# %bb.5:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	retq
.LBB51_1:
	xorl	%eax, %eax
	retq
.Lfunc_end51:
	.size	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end51-_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
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
	je	.LBB52_9
# %bb.1:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movswl	%di, %esi
	movzwl	%si, %edi
	movl	%esi, %r8d
	shrl	$15, %r8d
	movl	$65535, %r9d                    # imm = 0xFFFF
	jmp	.LBB52_2
	.p2align	4
.LBB52_3:                               #   in Loop: Header=BB52_2 Depth=1
	bzhil	%r10d, %r8d, %r11d
	addl	%esi, %r11d
	movswl	%r11w, %r11d
	sarxl	%r10d, %r11d, %r10d
	testb	%bl, %bl
	movl	$0, %r11d
	cmovsl	%r9d, %r11d
	xorl	%r11d, %r10d
	subl	%r11d, %r10d
.LBB52_7:                               #   in Loop: Header=BB52_2 Depth=1
	movswq	%r10w, %r10
	addq	%r10, %rax
	addq	$3, %rcx
	cmpq	%rdx, %rcx
	je	.LBB52_8
.LBB52_2:                               # =>This Inner Loop Header: Depth=1
	movswl	(%rcx), %r11d
	movzbl	2(%rcx), %ebx
	movl	%ebx, %r10d
	andl	$31, %r10d
	testl	%r11d, %r11d
	je	.LBB52_3
# %bb.4:                                #   in Loop: Header=BB52_2 Depth=1
	imull	%esi, %r11d
	shrl	$16, %r11d
	testb	$64, %bl
	je	.LBB52_6
# %bb.5:                                #   in Loop: Header=BB52_2 Depth=1
	sarb	$7, %bl
	movsbl	%bl, %ebx
	subl	%ebx, %r11d
	xorl	%edi, %ebx
	addl	%ebx, %r11d
.LBB52_6:                               #   in Loop: Header=BB52_2 Depth=1
	movswl	%r11w, %ebx
	sarxl	%r10d, %ebx, %r10d
	btl	$15, %r11d
	adcl	$0, %r10d
	jmp	.LBB52_7
.LBB52_8:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB52_9:                               # %.loopexit
	retq
.Lfunc_end52:
	.size	_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end52-_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
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
	je	.LBB53_1
# %bb.3:
	movswl	%di, %esi
	xorl	%ecx, %ecx
	.p2align	4
.LBB53_4:                               # =>This Inner Loop Header: Depth=1
	movswl	(%r8), %edi
	movl	%esi, %eax
	cltd
	idivl	%edi
	cltq
	addq	%rax, %rcx
	addq	$2, %r8
	cmpq	%r9, %r8
	jne	.LBB53_4
# %bb.2:                                # %.loopexit
	movq	%rcx, %rax
	retq
.LBB53_1:
	xorl	%ecx, %ecx
	movq	%rcx, %rax
	retq
.Lfunc_end53:
	.size	_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_, .Lfunc_end53-_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIttESt6vectorIT_SaIS1_EET0_,"axG",@progbits,_Z10get_primesIttESt6vectorIT_SaIS1_EET0_,comdat
	.weak	_Z10get_primesIttESt6vectorIT_SaIS1_EET0_ # -- Begin function _Z10get_primesIttESt6vectorIT_SaIS1_EET0_
	.p2align	4
	.type	_Z10get_primesIttESt6vectorIT_SaIS1_EET0_,@function
_Z10get_primesIttESt6vectorIT_SaIS1_EET0_: # @_Z10get_primesIttESt6vectorIT_SaIS1_EET0_
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
	jae	.LBB54_1
.LBB54_6:                               # %.loopexit8
	vxorps	%xmm0, %xmm0, %xmm0
	movq	(%rsp), %rcx                    # 8-byte Reload
	vmovups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	cmpw	$2, %bp
	jae	.LBB54_8
# %bb.7:
	xorl	%ebp, %ebp
.LBB54_14:                              # %.loopexit
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
.LBB54_1:                               # %.preheader7.preheader
	.cfi_def_cfa_offset 80
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB54_2
	.p2align	4
.LBB54_5:                               # %.loopexit6
                                        #   in Loop: Header=BB54_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%rbx, %rcx
	ja	.LBB54_6
.LBB54_2:                               # %.preheader7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_4 Depth 2
	cmpq	%rbx, %rcx
	ja	.LBB54_5
# %bb.3:                                # %.preheader7
                                        #   in Loop: Header=BB54_2 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB54_5
	.p2align	4
.LBB54_4:                               # %.preheader
                                        #   Parent Loop BB54_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB54_4
	jmp	.LBB54_5
.LBB54_8:
	movl	$1, %edx
	subq	%rbx, %rdx
	movl	$2, %ebx
	xorl	%r12d, %r12d
	movabsq	$4611686018427387903, %rsi      # imm = 0x3FFFFFFFFFFFFFFF
	xorl	%r13d, %r13d
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB54_9
	.p2align	4
.LBB54_11:                              #   in Loop: Header=BB54_9 Depth=1
	movw	%bx, (%r12)
	addq	$2, %r12
	movq	%r12, 8(%rcx)
.LBB54_12:                              #   in Loop: Header=BB54_9 Depth=1
	movq	%r13, %rbp
.LBB54_13:                              #   in Loop: Header=BB54_9 Depth=1
	leaq	(%rdx,%rbx), %rax
	incq	%rax
	incq	%rbx
	movq	%rbp, %r13
	cmpq	$2, %rax
	je	.LBB54_14
.LBB54_9:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r14,%rbx)
	je	.LBB54_12
# %bb.10:                               #   in Loop: Header=BB54_9 Depth=1
	cmpq	16(%rcx), %r12
	jne	.LBB54_11
# %bb.15:                               #   in Loop: Header=BB54_9 Depth=1
	subq	%r13, %r12
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %r12
	je	.LBB54_16
# %bb.18:                               #   in Loop: Header=BB54_9 Depth=1
	movq	%r12, %rax
	sarq	%rax
	cmpq	$1, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	leaq	(%rcx,%rax), %r15
	cmpq	%rsi, %r15
	jb	.LBB54_20
# %bb.19:                               #   in Loop: Header=BB54_9 Depth=1
	movq	%rsi, %r15
.LBB54_20:                              #   in Loop: Header=BB54_9 Depth=1
	addq	%rax, %rcx
	cmovbq	%rsi, %r15
	leaq	(%r15,%r15), %rdi
.Ltmp296:
	callq	_Znwm@PLT
.Ltmp297:
# %bb.21:                               #   in Loop: Header=BB54_9 Depth=1
	movq	%rax, %rbp
	movw	%bx, (%rax,%r12)
	testq	%r12, %r12
	jle	.LBB54_23
# %bb.22:                               #   in Loop: Header=BB54_9 Depth=1
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	memmove@PLT
.LBB54_23:                              #   in Loop: Header=BB54_9 Depth=1
	testq	%r13, %r13
	je	.LBB54_25
# %bb.24:                               #   in Loop: Header=BB54_9 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_ZdlPvm@PLT
.LBB54_25:                              #   in Loop: Header=BB54_9 Depth=1
	addq	%rbp, %r12
	addq	$2, %r12
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%r12, 8(%rcx)
	leaq	(,%r15,2), %rax
	addq	%rbp, %rax
	movq	%rax, 16(%rcx)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movabsq	$4611686018427387903, %rsi      # imm = 0x3FFFFFFFFFFFFFFF
	jmp	.LBB54_13
.LBB54_16:
	movq	%r13, (%rcx)
.Ltmp299:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp300:
# %bb.17:
.LBB54_27:
.Ltmp301:
	movq	%rax, %rbp
	jmp	.LBB54_28
.LBB54_26:
.Ltmp298:
	movq	%rax, %rbp
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%r13, (%rax)
.LBB54_28:
	testq	%r13, %r13
	je	.LBB54_30
# %bb.29:
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	_ZdlPvm@PLT
.LBB54_30:
	movq	%r14, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end54:
	.size	_Z10get_primesIttESt6vectorIT_SaIS1_EET0_, .Lfunc_end54-_Z10get_primesIttESt6vectorIT_SaIS1_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIttESt6vectorIT_SaIS1_EET0_,"aG",@progbits,_Z10get_primesIttESt6vectorIT_SaIS1_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table54:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Lfunc_begin22-.Lfunc_begin22  # >> Call Site 1 <<
	.uleb128 .Ltmp296-.Lfunc_begin22        #   Call between .Lfunc_begin22 and .Ltmp296
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin22        #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp297-.Lfunc_begin22        # >> Call Site 3 <<
	.uleb128 .Ltmp299-.Ltmp297              #   Call between .Ltmp297 and .Ltmp299
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin22        # >> Call Site 4 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp301-.Lfunc_begin22        #     jumps to .Ltmp301
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin22        # >> Call Site 5 <<
	.uleb128 .Lfunc_end54-.Ltmp300          #   Call between .Ltmp300 and .Lfunc_end54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m
.LCPI55_0:
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
	je	.LBB55_2
	.p2align	4
.LBB55_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovael	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB55_1
.LBB55_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI55_0(%rip), %xmm0, %xmm0
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
.Lfunc_end55:
	.size	_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m, .Lfunc_end55-_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_
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
	jae	.LBB56_1
.LBB56_6:                               # %.loopexit10
	vxorps	%xmm0, %xmm0, %xmm0
	movq	8(%rsp), %r9                    # 8-byte Reload
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpw	$2, %bp
	jae	.LBB56_8
# %bb.7:
	xorl	%ebp, %ebp
.LBB56_19:                              # %.loopexit6
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
.LBB56_1:                               # %.preheader9.preheader
	.cfi_def_cfa_offset 96
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB56_2
	.p2align	4
.LBB56_5:                               # %.loopexit8
                                        #   in Loop: Header=BB56_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r15, %rcx
	ja	.LBB56_6
.LBB56_2:                               # %.preheader9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_4 Depth 2
	cmpq	%r15, %rcx
	ja	.LBB56_5
# %bb.3:                                # %.preheader9
                                        #   in Loop: Header=BB56_2 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB56_5
	.p2align	4
.LBB56_4:                               # %.preheader7
                                        #   Parent Loop BB56_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r15, %rcx
	jbe	.LBB56_4
	jmp	.LBB56_5
.LBB56_8:
	movl	$2, %ebx
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	jmp	.LBB56_9
	.p2align	4
.LBB56_16:                              #   in Loop: Header=BB56_9 Depth=1
	movw	%r12w, (%r13)
	shrl	$16, %r12d
	movb	%r12b, 2(%r13)
	addq	$3, %r13
	movq	%r13, 8(%r9)
.LBB56_17:                              #   in Loop: Header=BB56_9 Depth=1
	movq	%r8, %rbp
.LBB56_18:                              #   in Loop: Header=BB56_9 Depth=1
	leaq	1(%rbx), %rax
	movq	%rbp, %r8
	cmpq	%r15, %rbx
	movq	%rax, %rbx
	je	.LBB56_19
.LBB56_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_26 Depth 2
	cmpb	$0, (%r14,%rbx)
	je	.LBB56_17
# %bb.10:                               #   in Loop: Header=BB56_9 Depth=1
	movzwl	%bx, %esi
	lzcntw	%bx, %cx
	xorb	$15, %cl
	leal	-1(%rbx), %eax
	testl	%esi, %eax
	je	.LBB56_11
# %bb.12:                               #   in Loop: Header=BB56_9 Depth=1
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
	je	.LBB56_14
# %bb.13:                               #   in Loop: Header=BB56_9 Depth=1
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
.LBB56_14:                              #   in Loop: Header=BB56_9 Depth=1
	incl	%eax
	jmp	.LBB56_15
	.p2align	4
.LBB56_11:                              #   in Loop: Header=BB56_9 Depth=1
	xorl	%eax, %eax
.LBB56_15:                              #   in Loop: Header=BB56_9 Depth=1
	movzbl	%cl, %ecx
	shll	$16, %ecx
	movzwl	%ax, %r12d
	orl	%ecx, %r12d
	cmpq	16(%r9), %r13
	jne	.LBB56_16
# %bb.20:                               #   in Loop: Header=BB56_9 Depth=1
	movq	%r13, %rsi
	movq	%r8, (%rsp)                     # 8-byte Spill
	subq	%r8, %rsi
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %rsi
	je	.LBB56_21
# %bb.23:                               #   in Loop: Header=BB56_9 Depth=1
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
.Ltmp302:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp303:
# %bb.24:                               #   in Loop: Header=BB56_9 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movw	%r12w, (%rax,%rsi)
	shrl	$16, %r12d
	movb	%r12b, 2(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB56_27
# %bb.25:                               # %.preheader.preheader
                                        #   in Loop: Header=BB56_9 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB56_26:                              # %.preheader
                                        #   Parent Loop BB56_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	2(%rax), %ecx
	movb	%cl, 2(%r12)
	movzwl	(%rax), %ecx
	movw	%cx, (%r12)
	addq	$3, %rax
	addq	$3, %r12
	cmpq	%r13, %rax
	jne	.LBB56_26
.LBB56_27:                              # %.loopexit
                                        #   in Loop: Header=BB56_9 Depth=1
	testq	%rdi, %rdi
	je	.LBB56_29
# %bb.28:                               #   in Loop: Header=BB56_9 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB56_29:                              #   in Loop: Header=BB56_9 Depth=1
	addq	$3, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	jmp	.LBB56_18
.LBB56_21:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp305:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp306:
# %bb.22:
.LBB56_31:
.Ltmp307:
	movq	%rax, %rbx
	jmp	.LBB56_32
.LBB56_30:
.Ltmp304:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB56_32:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB56_34
# %bb.33:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB56_34:
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end56:
	.size	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_, .Lfunc_end56-_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table56:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Lfunc_begin23-.Lfunc_begin23  # >> Call Site 1 <<
	.uleb128 .Ltmp302-.Lfunc_begin23        #   Call between .Lfunc_begin23 and .Ltmp302
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.uleb128 .Ltmp304-.Lfunc_begin23        #     jumps to .Ltmp304
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin23        # >> Call Site 3 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin23        #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin23        # >> Call Site 4 <<
	.uleb128 .Lfunc_end56-.Ltmp306          #   Call between .Ltmp306 and .Lfunc_end56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
.LCPI57_0:
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
	je	.LBB57_2
	.p2align	4
.LBB57_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovael	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB57_1
.LBB57_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI57_0(%rip), %xmm0, %xmm0
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
.Lfunc_end57:
	.size	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end57-_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_,"axG",@progbits,_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_,comdat
	.weak	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_ # -- Begin function _Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_
	.p2align	4
	.type	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_,@function
_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_: # @_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_
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
	jae	.LBB58_1
.LBB58_6:                               # %.loopexit10
	vxorps	%xmm0, %xmm0, %xmm0
	movq	8(%rsp), %r9                    # 8-byte Reload
	vmovups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	cmpw	$2, %bp
	jae	.LBB58_8
# %bb.7:
	xorl	%ebp, %ebp
.LBB58_17:                              # %.loopexit6
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
.LBB58_1:                               # %.preheader9.preheader
	.cfi_def_cfa_offset 96
	movl	$2, %eax
	movl	$4, %ecx
	jmp	.LBB58_2
	.p2align	4
.LBB58_5:                               # %.loopexit8
                                        #   in Loop: Header=BB58_2 Depth=1
	incq	%rax
	movq	%rax, %rcx
	imulq	%rax, %rcx
	cmpq	%r15, %rcx
	ja	.LBB58_6
.LBB58_2:                               # %.preheader9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_4 Depth 2
	cmpq	%r15, %rcx
	ja	.LBB58_5
# %bb.3:                                # %.preheader9
                                        #   in Loop: Header=BB58_2 Depth=1
	cmpb	$0, (%r14,%rax)
	je	.LBB58_5
	.p2align	4
.LBB58_4:                               # %.preheader7
                                        #   Parent Loop BB58_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%r14,%rcx)
	addq	%rax, %rcx
	cmpq	%r15, %rcx
	jbe	.LBB58_4
	jmp	.LBB58_5
.LBB58_8:
	movl	$2, %ebx
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	jmp	.LBB58_9
	.p2align	4
.LBB58_14:                              #   in Loop: Header=BB58_9 Depth=1
	movw	%r12w, (%r13)
	shrl	$16, %r12d
	movb	%r12b, 2(%r13)
	addq	$3, %r13
	movq	%r13, 8(%r9)
.LBB58_15:                              #   in Loop: Header=BB58_9 Depth=1
	movq	%r8, %rbp
.LBB58_16:                              #   in Loop: Header=BB58_9 Depth=1
	leaq	1(%rbx), %rax
	movq	%rbp, %r8
	cmpq	%r15, %rbx
	movq	%rax, %rbx
	je	.LBB58_17
.LBB58_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_24 Depth 2
	cmpb	$0, (%r14,%rbx)
	je	.LBB58_15
# %bb.10:                               #   in Loop: Header=BB58_9 Depth=1
	movzwl	%bx, %esi
	lzcntw	%bx, %cx
	leal	-1(%rbx), %eax
	testl	%esi, %eax
	je	.LBB58_11
# %bb.12:                               #   in Loop: Header=BB58_9 Depth=1
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
	jmp	.LBB58_13
	.p2align	4
.LBB58_11:                              #   in Loop: Header=BB58_9 Depth=1
	movb	$14, %dl
	subb	%cl, %dl
	xorl	%eax, %eax
.LBB58_13:                              #   in Loop: Header=BB58_9 Depth=1
	movzbl	%dl, %r12d
	movzwl	%ax, %eax
	andl	$31, %r12d
	shll	$16, %r12d
	orl	%eax, %r12d
	cmpq	16(%r9), %r13
	jne	.LBB58_14
# %bb.18:                               #   in Loop: Header=BB58_9 Depth=1
	movq	%r13, %rsi
	movq	%r8, (%rsp)                     # 8-byte Spill
	subq	%r8, %rsi
	movabsq	$9223372036854775806, %rax      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rax, %rsi
	je	.LBB58_19
# %bb.21:                               #   in Loop: Header=BB58_9 Depth=1
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
.Ltmp308:
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
.Ltmp309:
# %bb.22:                               #   in Loop: Header=BB58_9 Depth=1
	movq	%rax, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movw	%r12w, (%rax,%rsi)
	shrl	$16, %r12d
	movb	%r12b, 2(%rax,%rsi)
	movq	%rax, %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpq	%r13, %rdi
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB58_25
# %bb.23:                               # %.preheader.preheader
                                        #   in Loop: Header=BB58_9 Depth=1
	movq	%rbp, %r12
	movq	%rdi, %rax
	.p2align	4
.LBB58_24:                              # %.preheader
                                        #   Parent Loop BB58_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	2(%rax), %ecx
	movb	%cl, 2(%r12)
	movzwl	(%rax), %ecx
	movw	%cx, (%r12)
	addq	$3, %rax
	addq	$3, %r12
	cmpq	%r13, %rax
	jne	.LBB58_24
.LBB58_25:                              # %.loopexit
                                        #   in Loop: Header=BB58_9 Depth=1
	testq	%rdi, %rdi
	je	.LBB58_27
# %bb.26:                               #   in Loop: Header=BB58_9 Depth=1
	callq	_ZdlPvm@PLT
	movq	8(%rsp), %r9                    # 8-byte Reload
.LBB58_27:                              #   in Loop: Header=BB58_9 Depth=1
	addq	$3, %r12
	movq	%r12, 8(%r9)
	movq	%rbp, %rax
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 16(%r9)
	movq	%r12, %r13
	jmp	.LBB58_16
.LBB58_19:
	movq	%rsi, %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp311:
	leaq	.L.str.24(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp312:
# %bb.20:
.LBB58_29:
.Ltmp313:
	movq	%rax, %rbx
	jmp	.LBB58_30
.LBB58_28:
.Ltmp310:
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, (%rax)
.LBB58_30:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB58_32
# %bb.31:
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	_ZdlPvm@PLT
.LBB58_32:
	movq	%r14, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_ZdlPvm@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end58:
	.size	_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_, .Lfunc_end58-_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_
	.cfi_endproc
	.section	.gcc_except_table._Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_,"aG",@progbits,_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_,comdat
	.p2align	2, 0x0
GCC_except_table58:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Lfunc_begin24-.Lfunc_begin24  # >> Call Site 1 <<
	.uleb128 .Ltmp308-.Lfunc_begin24        #   Call between .Lfunc_begin24 and .Ltmp308
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin24        #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin24        # >> Call Site 3 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin24        #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin24        # >> Call Site 4 <<
	.uleb128 .Lfunc_end58-.Ltmp312          #   Call between .Ltmp312 and .Lfunc_end58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
.LCPI59_0:
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
	je	.LBB59_2
	.p2align	4
.LBB59_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$3, %r15w
	movl	$2, %eax
	cmovael	%r15d, %eax
	movzwl	%ax, %edi
	movq	%r12, %rsi
	callq	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
	addq	%rax, %r14
	decq	%r15
	jne	.LBB59_1
.LBB59_2:                               # %.loopexit
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%rbx, %rax
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vdivsd	.LCPI59_0(%rip), %xmm0, %xmm0
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
.Lfunc_end59:
	.size	_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m, .Lfunc_end59-_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m
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
	je	.LBB60_1
# %bb.3:
	movzwl	%di, %esi
	xorl	%eax, %eax
	.p2align	4
.LBB60_4:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB60_4
# %bb.2:                                # %.loopexit
	retq
.LBB60_1:
	xorl	%eax, %eax
	retq
.Lfunc_end60:
	.size	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_, .Lfunc_end60-_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_
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
	je	.LBB61_1
# %bb.3:
	movzwl	%di, %esi
	xorl	%eax, %eax
	jmp	.LBB61_4
	.p2align	4
.LBB61_8:                               #   in Loop: Header=BB61_4 Depth=1
	shrxl	%edi, %r8d, %edi
.LBB61_9:                               #   in Loop: Header=BB61_4 Depth=1
	movl	%edi, %edi
	addq	%rdi, %rax
	addq	$3, %rcx
	cmpq	%rdx, %rcx
	je	.LBB61_2
.LBB61_4:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %r8d
	movzbl	2(%rcx), %edi
	testl	%r8d, %r8d
	je	.LBB61_5
# %bb.6:                                #   in Loop: Header=BB61_4 Depth=1
	imull	%esi, %r8d
	shrl	$16, %r8d
	testb	$64, %dil
	je	.LBB61_8
# %bb.7:                                #   in Loop: Header=BB61_4 Depth=1
	movl	%esi, %r9d
	subl	%r8d, %r9d
	shrl	%r9d
	addl	%r8d, %r9d
	movzwl	%r9w, %r8d
	jmp	.LBB61_8
	.p2align	4
.LBB61_5:                               #   in Loop: Header=BB61_4 Depth=1
	shrxl	%edi, %esi, %edi
	jmp	.LBB61_9
.LBB61_1:
	xorl	%eax, %eax
.LBB61_2:                               # %.loopexit
	retq
.Lfunc_end61:
	.size	_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_, .Lfunc_end61-_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_
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
	je	.LBB62_3
	.p2align	4
.LBB62_1:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divw	(%r8)
	movzwl	%ax, %eax
	addq	%rax, %rcx
	addq	$2, %r8
	cmpq	%rsi, %r8
	jne	.LBB62_1
.LBB62_3:                               # %.loopexit
	movq	%rcx, %rax
	retq
.Lfunc_end62:
	.size	_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_, .Lfunc_end62-_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	target_s32                      # -- Begin function target_s32
	.p2align	4
	.type	target_s32,@function
target_s32:                             # @target_s32
	.cfi_startproc
# %bb.0:
	movl	%edx, %ecx
	andb	$31, %cl
	testl	%esi, %esi
	je	.LBB63_1
# %bb.2:
	movslq	%edi, %rax
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	shrq	$32, %rsi
	movl	%edx, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	xorl	%eax, %edi
	subl	%eax, %edi
	xorl	%eax, %eax
	testb	$64, %dl
	cmovnel	%edi, %eax
	addl	%esi, %eax
	sarxl	%ecx, %eax, %ecx
	shrl	$31, %eax
	addl	%ecx, %eax
	retq
.LBB63_1:
	sarb	$7, %dl
	movsbl	%dl, %edx
	movl	%edi, %eax
	sarl	$31, %eax
	bzhil	%ecx, %eax, %eax
	addl	%edi, %eax
	sarxl	%ecx, %eax, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
	retq
.Lfunc_end63:
	.size	target_s32, .Lfunc_end63-target_s32
	.cfi_endproc
                                        # -- End function
	.globl	target_s64                      # -- Begin function target_s64
	.p2align	4
	.type	target_s64,@function
target_s64:                             # @target_s64
	.cfi_startproc
# %bb.0:
	movl	%edx, %ecx
	movl	%ecx, %r8d
	andb	$63, %r8b
	movl	%ecx, %eax
	sarb	$7, %al
	movsbq	%al, %r9
	testq	%rsi, %rsi
	je	.LBB64_1
# %bb.2:
	movq	%rsi, %rax
	imulq	%rdi
	xorq	%r9, %rdi
	subq	%r9, %rdi
	xorl	%eax, %eax
	testb	$64, %cl
	cmovneq	%rdi, %rax
	addq	%rdx, %rax
	sarxq	%r8, %rax, %rcx
	shrq	$63, %rax
	addq	%rcx, %rax
	retq
.LBB64_1:
	movq	%rdi, %rax
	sarq	$63, %rax
	bzhiq	%r8, %rax, %rax
	addq	%rdi, %rax
	sarxq	%r8, %rax, %rax
	xorq	%r9, %rax
	subq	%r9, %rax
	retq
.Lfunc_end64:
	.size	target_s64, .Lfunc_end64-target_s64
	.cfi_endproc
                                        # -- End function
	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_benchmark_branchfree.cpp
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

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"
	.ident	"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_benchmark_branchfree.cpp
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
