
alive2/build/ir/xxhash_old.o:     file format elf64-x86-64


Disassembly of section .text:

00000000000000e0 <target_9to16>:
  e0:	4c 8b 42 20          	mov    0x20(%rdx),%r8
  e4:	48 8b 42 30          	mov    0x30(%rdx),%rax
  e8:	4c 33 42 18          	xor    0x18(%rdx),%r8
  ec:	49 01 c8             	add    %rcx,%r8
  ef:	48 33 42 28          	xor    0x28(%rdx),%rax
  f3:	48 29 c8             	sub    %rcx,%rax
  f6:	4c 33 07             	xor    (%rdi),%r8
  f9:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
  fe:	48 89 c2             	mov    %rax,%rdx
 101:	c4 c2 f3 f6 d0       	mulx   %r8,%rcx,%rdx
 106:	49 0f c8             	bswap  %r8
 109:	48 01 f0             	add    %rsi,%rax
 10c:	49 01 c0             	add    %rax,%r8
 10f:	48 31 ca             	xor    %rcx,%rdx
 112:	4c 01 c2             	add    %r8,%rdx
 115:	48 89 d0             	mov    %rdx,%rax
 118:	48 c1 e8 25          	shr    $0x25,%rax
 11c:	48 31 d0             	xor    %rdx,%rax
 11f:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
 126:	67 56 16 
 129:	48 0f af c8          	imul   %rax,%rcx
 12d:	48 89 c8             	mov    %rcx,%rax
 130:	48 c1 e8 20          	shr    $0x20,%rax
 134:	48 31 c8             	xor    %rcx,%rax
 137:	c3                   	ret    
