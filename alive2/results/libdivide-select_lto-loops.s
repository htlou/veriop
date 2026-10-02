0000000000006100 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)>:
    6100: 48 8b 0e                     	movq	(%rsi), %rcx
    6103: 48 8b 76 08                  	movq	0x8(%rsi), %rsi
    6107: 31 c0                        	xorl	%eax, %eax
    6109: eb 3f                        	jmp	0x614a <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x4a>
    610b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    6110: c4 e2 eb f6 d7               	mulxq	%rdi, %rdx, %rdx
    6115: 49 89 f9                     	movq	%rdi, %r9
    6118: 49 29 d1                     	subq	%rdx, %r9
    611b: 49 d1 e9                     	shrq	%r9
    611e: 45 89 c2                     	movl	%r8d, %r10d
    6121: 41 80 e2 3f                  	andb	$0x3f, %r10b
    6125: 41 f6 c0 40                  	testb	$0x40, %r8b
    6129: 41 bb 00 00 00 00            	movl	$0x0, %r11d
    612f: 4d 0f 45 d9                  	cmovneq	%r9, %r11
    6133: 45 0f b6 ca                  	movzbl	%r10b, %r9d
    6137: 45 0f 44 c8                  	cmovel	%r8d, %r9d
    613b: 49 01 d3                     	addq	%rdx, %r11
    613e: c4 c2 b3 f7 d3               	shrxq	%r9, %r11, %rdx
    6143: 48 01 d0                     	addq	%rdx, %rax
    6146: 48 83 c1 09                  	addq	$0x9, %rcx
    614a: 48 39 f1                     	cmpq	%rsi, %rcx
    614d: 74 14                        	je	0x6163 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x63>
    614f: 48 8b 11                     	movq	(%rcx), %rdx
    6152: 44 0f b6 41 08               	movzbl	0x8(%rcx), %r8d
    6157: 48 85 d2                     	testq	%rdx, %rdx
    615a: 75 b4                        	jne	0x6110 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x10>
    615c: c4 e2 bb f7 d7               	shrxq	%r8, %rdi, %rdx
    6161: eb e0                        	jmp	0x6143 <unsigned long sum_dividers<unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>>>(unsigned long, std::vector<libdivide::divider<unsigned long, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned long, (libdivide::Branching)0>>> const&)+0x43>
    6163: c3                           	retq
    6164: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    616e: 66 90                        	nop

0000000000007700 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)>:
    7700: 48 8b 0e                     	movq	(%rsi), %rcx
    7703: 48 8b 56 08                  	movq	0x8(%rsi), %rdx
    7707: 48 39 d1                     	cmpq	%rdx, %rcx
    770a: 74 71                        	je	0x777d <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x7d>
    770c: 89 fe                        	movl	%edi, %esi
    770e: 31 c0                        	xorl	%eax, %eax
    7710: eb 57                        	jmp	0x7769 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x69>
    7712: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)
    7720: 4c 0f af ce                  	imulq	%rsi, %r9
    7724: 49 c1 e9 20                  	shrq	$0x20, %r9
    7728: 45 89 c2                     	movl	%r8d, %r10d
    772b: 41 c1 e2 19                  	shll	$0x19, %r10d
    772f: 41 c1 fa 1f                  	sarl	$0x1f, %r10d
    7733: 41 89 fb                     	movl	%edi, %r11d
    7736: 45 29 cb                     	subl	%r9d, %r11d
    7739: 41 d1 eb                     	shrl	%r11d
    773c: 45 21 d3                     	andl	%r10d, %r11d
    773f: 45 01 cb                     	addl	%r9d, %r11d
    7742: 45 89 c1                     	movl	%r8d, %r9d
    7745: 41 80 e1 1f                  	andb	$0x1f, %r9b
    7749: 41 f6 c0 40                  	testb	$0x40, %r8b
    774d: 45 0f b6 c9                  	movzbl	%r9b, %r9d
    7751: 45 0f 44 c8                  	cmovel	%r8d, %r9d
    7755: c4 42 33 f7 c3               	shrxl	%r9d, %r11d, %r8d
    775a: 45 89 c0                     	movl	%r8d, %r8d
    775d: 4c 01 c0                     	addq	%r8, %rax
    7760: 48 83 c1 05                  	addq	$0x5, %rcx
    7764: 48 39 d1                     	cmpq	%rdx, %rcx
    7767: 74 16                        	je	0x777f <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x7f>
    7769: 44 8b 09                     	movl	(%rcx), %r9d
    776c: 44 0f b6 41 04               	movzbl	0x4(%rcx), %r8d
    7771: 4d 85 c9                     	testq	%r9, %r9
    7774: 75 aa                        	jne	0x7720 <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x20>
    7776: c4 62 3b f7 c7               	shrxl	%r8d, %edi, %r8d
    777b: eb dd                        	jmp	0x775a <unsigned long sum_dividers<unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>>>(unsigned int, std::vector<libdivide::divider<unsigned int, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned int, (libdivide::Branching)0>>> const&)+0x5a>
    777d: 31 c0                        	xorl	%eax, %eax
    777f: c3                           	retq

0000000000008d30 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)>:
    8d30: 48 8b 0e                     	movq	(%rsi), %rcx
    8d33: 48 8b 56 08                  	movq	0x8(%rsi), %rdx
    8d37: 48 39 d1                     	cmpq	%rdx, %rcx
    8d3a: 74 5b                        	je	0x8d97 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x67>
    8d3c: 0f b7 f7                     	movzwl	%di, %esi
    8d3f: 31 c0                        	xorl	%eax, %eax
    8d41: eb 20                        	jmp	0x8d63 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x33>
    8d43: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
    8d50: c4 c2 43 f7 f8               	shrxl	%edi, %r8d, %edi
    8d55: 89 ff                        	movl	%edi, %edi
    8d57: 48 01 f8                     	addq	%rdi, %rax
    8d5a: 48 83 c1 03                  	addq	$0x3, %rcx
    8d5e: 48 39 d1                     	cmpq	%rdx, %rcx
    8d61: 74 36                        	je	0x8d99 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x69>
    8d63: 44 0f b7 01                  	movzwl	(%rcx), %r8d
    8d67: 0f b6 79 02                  	movzbl	0x2(%rcx), %edi
    8d6b: 45 85 c0                     	testl	%r8d, %r8d
    8d6e: 74 20                        	je	0x8d90 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x60>
    8d70: 44 0f af c6                  	imull	%esi, %r8d
    8d74: 41 c1 e8 10                  	shrl	$0x10, %r8d
    8d78: 40 f6 c7 40                  	testb	$0x40, %dil
    8d7c: 74 d2                        	je	0x8d50 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x20>
    8d7e: 41 89 f1                     	movl	%esi, %r9d
    8d81: 45 29 c1                     	subl	%r8d, %r9d
    8d84: 41 d1 e9                     	shrl	%r9d
    8d87: 45 01 c1                     	addl	%r8d, %r9d
    8d8a: 45 0f b7 c1                  	movzwl	%r9w, %r8d
    8d8e: eb c0                        	jmp	0x8d50 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x20>
    8d90: c4 e2 43 f7 fe               	shrxl	%edi, %esi, %edi
    8d95: eb be                        	jmp	0x8d55 <unsigned long sum_dividers<unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>>>(unsigned short, std::vector<libdivide::divider<unsigned short, (libdivide::Branching)0>, std::allocator<libdivide::divider<unsigned short, (libdivide::Branching)0>>> const&)+0x25>
    8d97: 31 c0                        	xorl	%eax, %eax
    8d99: c3                           	retq
    8d9a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
