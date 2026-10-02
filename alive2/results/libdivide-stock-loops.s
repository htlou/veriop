0000000000005300 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)>:
    5300: 48 8b 0e                     	movq	(%rsi), %rcx
    5303: 48 8b 56 08                  	movq	0x8(%rsi), %rdx
    5307: 48 39 d1                     	cmpq	%rdx, %rcx
    530a: 74 5b                        	je	0x5367 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x67>
    530c: 0f b7 f7                     	movzwl	%di, %esi
    530f: 31 c0                        	xorl	%eax, %eax
    5311: eb 20                        	jmp	0x5333 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x33>
    5313: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
    5320: c4 c2 43 f7 f8               	shrxl	%edi, %r8d, %edi
    5325: 89 ff                        	movl	%edi, %edi
    5327: 48 01 f8                     	addq	%rdi, %rax
    532a: 48 83 c1 03                  	addq	$0x3, %rcx
    532e: 48 39 d1                     	cmpq	%rdx, %rcx
    5331: 74 36                        	je	0x5369 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x69>
    5333: 44 0f b7 01                  	movzwl	(%rcx), %r8d
    5337: 0f b6 79 02                  	movzbl	0x2(%rcx), %edi
    533b: 45 85 c0                     	testl	%r8d, %r8d
    533e: 74 20                        	je	0x5360 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x60>
    5340: 44 0f af c6                  	imull	%esi, %r8d
    5344: 41 c1 e8 10                  	shrl	$0x10, %r8d
    5348: 40 f6 c7 40                  	testb	$0x40, %dil
    534c: 74 d2                        	je	0x5320 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x20>
    534e: 41 89 f1                     	movl	%esi, %r9d
    5351: 45 29 c1                     	subl	%r8d, %r9d
    5354: 41 d1 e9                     	shrl	%r9d
    5357: 45 01 c1                     	addl	%r8d, %r9d
    535a: 45 0f b7 c1                  	movzwl	%r9w, %r8d
    535e: eb c0                        	jmp	0x5320 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x20>
    5360: c4 e2 43 f7 fe               	shrxl	%edi, %esi, %edi
    5365: eb be                        	jmp	0x5325 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x25>
    5367: 31 c0                        	xorl	%eax, %eax
    5369: c3                           	retq
    536a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

0000000000006930 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)>:
    6930: 48 8b 0e                     	movq	(%rsi), %rcx
    6933: 48 8b 56 08                  	movq	0x8(%rsi), %rdx
    6937: 48 39 d1                     	cmpq	%rdx, %rcx
    693a: 74 67                        	je	0x69a3 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x73>
    693c: 89 fe                        	movl	%edi, %esi
    693e: 31 c0                        	xorl	%eax, %eax
    6940: eb 22                        	jmp	0x6964 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x34>
    6942: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)
    6950: c4 62 3b f7 c7               	shrxl	%r8d, %edi, %r8d
    6955: 45 89 c0                     	movl	%r8d, %r8d
    6958: 4c 01 c0                     	addq	%r8, %rax
    695b: 48 83 c1 05                  	addq	$0x5, %rcx
    695f: 48 39 d1                     	cmpq	%rdx, %rcx
    6962: 74 41                        	je	0x69a5 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x75>
    6964: 44 8b 09                     	movl	(%rcx), %r9d
    6967: 44 0f b6 41 04               	movzbl	0x4(%rcx), %r8d
    696c: 4d 85 c9                     	testq	%r9, %r9
    696f: 74 df                        	je	0x6950 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x20>
    6971: 4c 0f af ce                  	imulq	%rsi, %r9
    6975: 49 c1 e9 20                  	shrq	$0x20, %r9
    6979: 41 f6 c0 40                  	testb	$0x40, %r8b
    697d: 75 11                        	jne	0x6990 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x60>
    697f: c4 42 3b f7 c1               	shrxl	%r8d, %r9d, %r8d
    6984: eb cf                        	jmp	0x6955 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x25>
    6986: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    6990: 41 89 fa                     	movl	%edi, %r10d
    6993: 45 29 ca                     	subl	%r9d, %r10d
    6996: 41 d1 ea                     	shrl	%r10d
    6999: 45 01 ca                     	addl	%r9d, %r10d
    699c: c4 42 3b f7 c2               	shrxl	%r8d, %r10d, %r8d
    69a1: eb b2                        	jmp	0x6955 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x25>
    69a3: 31 c0                        	xorl	%eax, %eax
    69a5: c3                           	retq
    69a6: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000000000080f0 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)>:
    80f0: 48 8b 0e                     	movq	(%rsi), %rcx
    80f3: 48 8b 76 08                  	movq	0x8(%rsi), %rsi
    80f7: 31 c0                        	xorl	%eax, %eax
    80f9: eb 11                        	jmp	0x810c <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x1c>
    80fb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    8100: c4 e2 bb f7 d7               	shrxq	%r8, %rdi, %rdx
    8105: 48 01 d0                     	addq	%rdx, %rax
    8108: 48 83 c1 09                  	addq	$0x9, %rcx
    810c: 48 39 f1                     	cmpq	%rsi, %rcx
    810f: 74 32                        	je	0x8143 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x53>
    8111: 48 8b 11                     	movq	(%rcx), %rdx
    8114: 44 0f b6 41 08               	movzbl	0x8(%rcx), %r8d
    8119: 48 85 d2                     	testq	%rdx, %rdx
    811c: 74 e2                        	je	0x8100 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x10>
    811e: c4 e2 eb f6 d7               	mulxq	%rdi, %rdx, %rdx
    8123: 41 f6 c0 40                  	testb	$0x40, %r8b
    8127: 75 07                        	jne	0x8130 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x40>
    8129: c4 e2 bb f7 d2               	shrxq	%r8, %rdx, %rdx
    812e: eb d5                        	jmp	0x8105 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x15>
    8130: 49 89 f9                     	movq	%rdi, %r9
    8133: 49 29 d1                     	subq	%rdx, %r9
    8136: 49 d1 e9                     	shrq	%r9
    8139: 49 01 d1                     	addq	%rdx, %r9
    813c: c4 c2 bb f7 d1               	shrxq	%r8, %r9, %rdx
    8141: eb c2                        	jmp	0x8105 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x15>
    8143: c3                           	retq
    8144: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    814e: 66 90                        	nop
