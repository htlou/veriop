00000000000060e0 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)>:
    60e0: 48 8b 0e                     	movq	(%rsi), %rcx
    60e3: 48 8b 76 08                  	movq	0x8(%rsi), %rsi
    60e7: 31 c0                        	xorl	%eax, %eax
    60e9: eb 11                        	jmp	0x60fc <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x1c>
    60eb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    60f0: c4 e2 bb f7 d7               	shrxq	%r8, %rdi, %rdx
    60f5: 48 01 d0                     	addq	%rdx, %rax
    60f8: 48 83 c1 09                  	addq	$0x9, %rcx
    60fc: 48 39 f1                     	cmpq	%rsi, %rcx
    60ff: 74 32                        	je	0x6133 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x53>
    6101: 48 8b 11                     	movq	(%rcx), %rdx
    6104: 44 0f b6 41 08               	movzbl	0x8(%rcx), %r8d
    6109: 48 85 d2                     	testq	%rdx, %rdx
    610c: 74 e2                        	je	0x60f0 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x10>
    610e: c4 e2 eb f6 d7               	mulxq	%rdi, %rdx, %rdx
    6113: 41 f6 c0 40                  	testb	$0x40, %r8b
    6117: 75 07                        	jne	0x6120 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x40>
    6119: c4 e2 bb f7 d2               	shrxq	%r8, %rdx, %rdx
    611e: eb d5                        	jmp	0x60f5 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x15>
    6120: 49 89 f9                     	movq	%rdi, %r9
    6123: 49 29 d1                     	subq	%rdx, %r9
    6126: 49 d1 e9                     	shrq	%r9
    6129: 49 01 d1                     	addq	%rdx, %r9
    612c: c4 c2 bb f7 d1               	shrxq	%r8, %r9, %rdx
    6131: eb c2                        	jmp	0x60f5 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x15>
    6133: c3                           	retq
    6134: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    613e: 66 90                        	nop

00000000000076d0 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)>:
    76d0: 48 8b 0e                     	movq	(%rsi), %rcx
    76d3: 48 8b 56 08                  	movq	0x8(%rsi), %rdx
    76d7: 48 39 d1                     	cmpq	%rdx, %rcx
    76da: 74 67                        	je	0x7743 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x73>
    76dc: 89 fe                        	movl	%edi, %esi
    76de: 31 c0                        	xorl	%eax, %eax
    76e0: eb 22                        	jmp	0x7704 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x34>
    76e2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)
    76f0: c4 62 3b f7 c7               	shrxl	%r8d, %edi, %r8d
    76f5: 45 89 c0                     	movl	%r8d, %r8d
    76f8: 4c 01 c0                     	addq	%r8, %rax
    76fb: 48 83 c1 05                  	addq	$0x5, %rcx
    76ff: 48 39 d1                     	cmpq	%rdx, %rcx
    7702: 74 41                        	je	0x7745 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x75>
    7704: 44 8b 09                     	movl	(%rcx), %r9d
    7707: 44 0f b6 41 04               	movzbl	0x4(%rcx), %r8d
    770c: 4d 85 c9                     	testq	%r9, %r9
    770f: 74 df                        	je	0x76f0 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x20>
    7711: 4c 0f af ce                  	imulq	%rsi, %r9
    7715: 49 c1 e9 20                  	shrq	$0x20, %r9
    7719: 41 f6 c0 40                  	testb	$0x40, %r8b
    771d: 75 11                        	jne	0x7730 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x60>
    771f: c4 42 3b f7 c1               	shrxl	%r8d, %r9d, %r8d
    7724: eb cf                        	jmp	0x76f5 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x25>
    7726: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    7730: 41 89 fa                     	movl	%edi, %r10d
    7733: 45 29 ca                     	subl	%r9d, %r10d
    7736: 41 d1 ea                     	shrl	%r10d
    7739: 45 01 ca                     	addl	%r9d, %r10d
    773c: c4 42 3b f7 c2               	shrxl	%r8d, %r10d, %r8d
    7741: eb b2                        	jmp	0x76f5 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x25>
    7743: 31 c0                        	xorl	%eax, %eax
    7745: c3                           	retq
    7746: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000008d00 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)>:
    8d00: 48 8b 0e                     	movq	(%rsi), %rcx
    8d03: 48 8b 56 08                  	movq	0x8(%rsi), %rdx
    8d07: 48 39 d1                     	cmpq	%rdx, %rcx
    8d0a: 74 5b                        	je	0x8d67 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x67>
    8d0c: 0f b7 f7                     	movzwl	%di, %esi
    8d0f: 31 c0                        	xorl	%eax, %eax
    8d11: eb 20                        	jmp	0x8d33 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x33>
    8d13: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
    8d20: c4 c2 43 f7 f8               	shrxl	%edi, %r8d, %edi
    8d25: 89 ff                        	movl	%edi, %edi
    8d27: 48 01 f8                     	addq	%rdi, %rax
    8d2a: 48 83 c1 03                  	addq	$0x3, %rcx
    8d2e: 48 39 d1                     	cmpq	%rdx, %rcx
    8d31: 74 36                        	je	0x8d69 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x69>
    8d33: 44 0f b7 01                  	movzwl	(%rcx), %r8d
    8d37: 0f b6 79 02                  	movzbl	0x2(%rcx), %edi
    8d3b: 45 85 c0                     	testl	%r8d, %r8d
    8d3e: 74 20                        	je	0x8d60 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x60>
    8d40: 44 0f af c6                  	imull	%esi, %r8d
    8d44: 41 c1 e8 10                  	shrl	$0x10, %r8d
    8d48: 40 f6 c7 40                  	testb	$0x40, %dil
    8d4c: 74 d2                        	je	0x8d20 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x20>
    8d4e: 41 89 f1                     	movl	%esi, %r9d
    8d51: 45 29 c1                     	subl	%r8d, %r9d
    8d54: 41 d1 e9                     	shrl	%r9d
    8d57: 45 01 c1                     	addl	%r8d, %r9d
    8d5a: 45 0f b7 c1                  	movzwl	%r9w, %r8d
    8d5e: eb c0                        	jmp	0x8d20 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x20>
    8d60: c4 e2 43 f7 fe               	shrxl	%edi, %esi, %edi
    8d65: eb be                        	jmp	0x8d25 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x25>
    8d67: 31 c0                        	xorl	%eax, %eax
    8d69: c3                           	retq
    8d6a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
