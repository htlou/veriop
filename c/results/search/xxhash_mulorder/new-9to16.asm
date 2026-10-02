
alive2/results/search/xxhash_mulorder/new.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <target_9to16>:
   0:	4c 8b 42 20          	mov    0x20(%rdx),%r8
   4:	48 8b 42 30          	mov    0x30(%rdx),%rax
   8:	4c 33 42 18          	xor    0x18(%rdx),%r8
   c:	49 01 c8             	add    %rcx,%r8
   f:	48 33 42 28          	xor    0x28(%rdx),%rax
  13:	48 29 c8             	sub    %rcx,%rax
  16:	4c 33 07             	xor    (%rdi),%r8
  19:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
  1e:	48 89 c2             	mov    %rax,%rdx
  21:	c4 c2 f3 f6 d0       	mulx   %r8,%rcx,%rdx
  26:	49 0f c8             	bswap  %r8
  29:	48 01 f0             	add    %rsi,%rax
  2c:	49 01 c0             	add    %rax,%r8
  2f:	48 31 ca             	xor    %rcx,%rdx
  32:	4c 01 c2             	add    %r8,%rdx
  35:	48 89 d0             	mov    %rdx,%rax
  38:	48 c1 e8 25          	shr    $0x25,%rax
  3c:	48 31 d0             	xor    %rdx,%rax
  3f:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
  46:	67 56 16 
  49:	48 0f af c8          	imul   %rax,%rcx
  4d:	48 89 c8             	mov    %rcx,%rax
  50:	48 c1 e8 20          	shr    $0x20,%rax
  54:	48 31 c8             	xor    %rcx,%rax
  57:	c3                   	ret    
