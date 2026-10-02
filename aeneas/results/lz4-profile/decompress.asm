
aeneas/repos/lz4_flex/target/release/deps/binggan_bench-2ea8eea7cc47e14d:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0ed90 <binggan_bench::block_decompress::{closure#0}>:
  a0ed90:	55                   	push   %rbp
  a0ed91:	41 57                	push   %r15
  a0ed93:	41 56                	push   %r14
  a0ed95:	41 55                	push   %r13
  a0ed97:	41 54                	push   %r12
  a0ed99:	53                   	push   %rbx
  a0ed9a:	48 83 ec 58          	sub    $0x58,%rsp
  a0ed9e:	48 8b 5e 18          	mov    0x18(%rsi),%rbx
  a0eda2:	48 85 db             	test   %rbx,%rbx
  a0eda5:	79 05                	jns    a0edac <binggan_bench::block_decompress::{closure#0}+0x1c>
  a0eda7:	e8 b4 89 00 00       	call   a17760 <alloc::raw_vec::capacity_overflow>
  a0edac:	4c 8b 4e 08          	mov    0x8(%rsi),%r9
  a0edb0:	4c 8b 5e 10          	mov    0x10(%rsi),%r11
  a0edb4:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
  a0edb9:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
  a0edbe:	74 5c                	je     a0ee1c <binggan_bench::block_decompress::{closure#0}+0x8c>
  a0edc0:	48 89 d8             	mov    %rbx,%rax
  a0edc3:	f0 48 0f c1 05 3c 5f 	lock xadd %rax,0x115f3c(%rip)        # b24d08 <binggan_bench::GLOBAL>
  a0edca:	11 00 
  a0edcc:	48 01 d8             	add    %rbx,%rax
  a0edcf:	31 c9                	xor    %ecx,%ecx
  a0edd1:	48 85 c0             	test   %rax,%rax
  a0edd4:	48 0f 4f c8          	cmovg  %rax,%rcx
  a0edd8:	48 8b 05 31 5f 11 00 	mov    0x115f31(%rip),%rax        # b24d10 <binggan_bench::GLOBAL+0x8>
  a0eddf:	90                   	nop
  a0ede0:	48 39 c8             	cmp    %rcx,%rax
  a0ede3:	48 89 ca             	mov    %rcx,%rdx
  a0ede6:	48 0f 47 d0          	cmova  %rax,%rdx
  a0edea:	f0 48 0f b1 15 1d 5f 	lock cmpxchg %rdx,0x115f1d(%rip)        # b24d10 <binggan_bench::GLOBAL+0x8>
  a0edf1:	11 00 
  a0edf3:	75 eb                	jne    a0ede0 <binggan_bench::block_decompress::{closure#0}+0x50>
  a0edf5:	bf 01 00 00 00       	mov    $0x1,%edi
  a0edfa:	48 89 de             	mov    %rbx,%rsi
  a0edfd:	ff 15 dd 3c 11 00    	call   *0x113cdd(%rip)        # b22ae0 <_DYNAMIC+0x218>
  a0ee03:	48 89 04 24          	mov    %rax,(%rsp)
  a0ee07:	48 85 c0             	test   %rax,%rax
  a0ee0a:	0f 84 87 08 00 00    	je     a0f697 <binggan_bench::block_decompress::{closure#0}+0x907>
  a0ee10:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
  a0ee15:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
  a0ee1a:	eb 09                	jmp    a0ee25 <binggan_bench::block_decompress::{closure#0}+0x95>
  a0ee1c:	b8 01 00 00 00       	mov    $0x1,%eax
  a0ee21:	48 89 04 24          	mov    %rax,(%rsp)
  a0ee25:	31 c0                	xor    %eax,%eax
  a0ee27:	4d 89 de             	mov    %r11,%r14
  a0ee2a:	49 83 ee 12          	sub    $0x12,%r14
  a0ee2e:	4c 0f 42 f0          	cmovb  %rax,%r14
  a0ee32:	48 89 d9             	mov    %rbx,%rcx
  a0ee35:	48 83 e9 22          	sub    $0x22,%rcx
  a0ee39:	48 0f 42 c8          	cmovb  %rax,%rcx
  a0ee3d:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  a0ee42:	4d 85 db             	test   %r11,%r11
  a0ee45:	0f 84 47 08 00 00    	je     a0f692 <binggan_bench::block_decompress::{closure#0}+0x902>
  a0ee4b:	45 31 e4             	xor    %r12d,%r12d
  a0ee4e:	45 31 ff             	xor    %r15d,%r15d
  a0ee51:	4c 89 74 24 48       	mov    %r14,0x48(%rsp)
  a0ee56:	eb 18                	jmp    a0ee70 <binggan_bench::block_decompress::{closure#0}+0xe0>
  a0ee58:	4d 39 df             	cmp    %r11,%r15
  a0ee5b:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
  a0ee60:	0f 83 e1 05 00 00    	jae    a0f447 <binggan_bench::block_decompress::{closure#0}+0x6b7>
  a0ee66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  a0ee6d:	00 00 00 
  a0ee70:	43 0f b6 0c 39       	movzbl (%r9,%r15,1),%ecx
  a0ee75:	49 8d 77 01          	lea    0x1(%r15),%rsi
  a0ee79:	89 cd                	mov    %ecx,%ebp
  a0ee7b:	83 e5 0f             	and    $0xf,%ebp
  a0ee7e:	48 83 fd 0f          	cmp    $0xf,%rbp
  a0ee82:	0f 84 cf 01 00 00    	je     a0f057 <binggan_bench::block_decompress::{closure#0}+0x2c7>
  a0ee88:	4d 39 f7             	cmp    %r14,%r15
  a0ee8b:	0f 83 c9 01 00 00    	jae    a0f05a <binggan_bench::block_decompress::{closure#0}+0x2ca>
  a0ee91:	80 f9 ef             	cmp    $0xef,%cl
  a0ee94:	0f 87 c0 01 00 00    	ja     a0f05a <binggan_bench::block_decompress::{closure#0}+0x2ca>
  a0ee9a:	4c 3b 64 24 50       	cmp    0x50(%rsp),%r12
  a0ee9f:	0f 83 b5 01 00 00    	jae    a0f05a <binggan_bench::block_decompress::{closure#0}+0x2ca>
  a0eea5:	44 89 ef             	mov    %r13d,%edi
  a0eea8:	4d 8d 6f 11          	lea    0x11(%r15),%r13
  a0eeac:	4d 39 dd             	cmp    %r11,%r13
  a0eeaf:	0f 87 f2 05 00 00    	ja     a0f4a7 <binggan_bench::block_decompress::{closure#0}+0x717>
  a0eeb5:	4d 8d 6c 24 10       	lea    0x10(%r12),%r13
  a0eeba:	49 39 dd             	cmp    %rbx,%r13
  a0eebd:	0f 87 ed 05 00 00    	ja     a0f4b0 <binggan_bench::block_decompress::{closure#0}+0x720>
  a0eec3:	89 ca                	mov    %ecx,%edx
  a0eec5:	c1 ea 04             	shr    $0x4,%edx
  a0eec8:	49 8d 04 31          	lea    (%r9,%rsi,1),%rax
  a0eecc:	41 0f 10 04 31       	movups (%r9,%rsi,1),%xmm0
  a0eed1:	48 8b 34 24          	mov    (%rsp),%rsi
  a0eed5:	42 0f 11 04 26       	movups %xmm0,(%rsi,%r12,1)
  a0eeda:	44 0f b7 04 02       	movzwl (%rdx,%rax,1),%r8d
  a0eedf:	4d 85 c0             	test   %r8,%r8
  a0eee2:	0f 84 b4 06 00 00    	je     a0f59c <binggan_bench::block_decompress::{closure#0}+0x80c>
  a0eee8:	49 01 d4             	add    %rdx,%r12
  a0eeeb:	4c 89 e0             	mov    %r12,%rax
  a0eeee:	4c 29 c0             	sub    %r8,%rax
  a0eef1:	0f 82 b1 06 00 00    	jb     a0f5a8 <binggan_bench::block_decompress::{closure#0}+0x818>
  a0eef7:	45 89 c5             	mov    %r8d,%r13d
  a0eefa:	48 83 c5 04          	add    $0x4,%rbp
  a0eefe:	41 39 e8             	cmp    %ebp,%r8d
  a0ef01:	0f 83 f9 00 00 00    	jae    a0f000 <binggan_bench::block_decompress::{closure#0}+0x270>
  a0ef07:	49 39 dc             	cmp    %rbx,%r12
  a0ef0a:	48 89 df             	mov    %rbx,%rdi
  a0ef0d:	49 0f 47 fc          	cmova  %r12,%rdi
  a0ef11:	48 39 c3             	cmp    %rax,%rbx
  a0ef14:	48 0f 47 c3          	cmova  %rbx,%rax
  a0ef18:	4c 29 e0             	sub    %r12,%rax
  a0ef1b:	4c 01 c0             	add    %r8,%rax
  a0ef1e:	49 89 f9             	mov    %rdi,%r9
  a0ef21:	4d 29 e1             	sub    %r12,%r9
  a0ef24:	89 ce                	mov    %ecx,%esi
  a0ef26:	40 80 e6 0f          	and    $0xf,%sil
  a0ef2a:	40 80 c6 03          	add    $0x3,%sil
  a0ef2e:	40 0f b6 f6          	movzbl %sil,%esi
  a0ef32:	4c 39 c8             	cmp    %r9,%rax
  a0ef35:	4c 0f 42 c8          	cmovb  %rax,%r9
  a0ef39:	49 39 f1             	cmp    %rsi,%r9
  a0ef3c:	4c 0f 43 ce          	cmovae %rsi,%r9
  a0ef40:	4c 89 e6             	mov    %r12,%rsi
  a0ef43:	49 83 f9 10          	cmp    $0x10,%r9
  a0ef47:	72 49                	jb     a0ef92 <binggan_bench::block_decompress::{closure#0}+0x202>
  a0ef49:	4c 89 e6             	mov    %r12,%rsi
  a0ef4c:	66 41 83 fd 10       	cmp    $0x10,%r13w
  a0ef51:	72 3f                	jb     a0ef92 <binggan_bench::block_decompress::{closure#0}+0x202>
  a0ef53:	49 8d 71 01          	lea    0x1(%r9),%rsi
  a0ef57:	89 f0                	mov    %esi,%eax
  a0ef59:	83 e0 0f             	and    $0xf,%eax
  a0ef5c:	41 ba 10 00 00 00    	mov    $0x10,%r10d
  a0ef62:	49 0f 44 c2          	cmove  %r10,%rax
  a0ef66:	48 29 c6             	sub    %rax,%rsi
  a0ef69:	4c 01 e6             	add    %r12,%rsi
  a0ef6c:	49 f7 d1             	not    %r9
  a0ef6f:	49 01 c1             	add    %rax,%r9
  a0ef72:	48 8b 04 24          	mov    (%rsp),%rax
  a0ef76:	4c 01 e0             	add    %r12,%rax
  a0ef79:	4d 89 c2             	mov    %r8,%r10
  a0ef7c:	49 f7 da             	neg    %r10
  a0ef7f:	90                   	nop
  a0ef80:	42 0f 10 04 10       	movups (%rax,%r10,1),%xmm0
  a0ef85:	0f 11 00             	movups %xmm0,(%rax)
  a0ef88:	48 83 c0 10          	add    $0x10,%rax
  a0ef8c:	49 83 c1 10          	add    $0x10,%r9
  a0ef90:	75 ee                	jne    a0ef80 <binggan_bench::block_decompress::{closure#0}+0x1f0>
  a0ef92:	4c 01 e5             	add    %r12,%rbp
  a0ef95:	48 8b 04 24          	mov    (%rsp),%rax
  a0ef99:	48 01 f0             	add    %rsi,%rax
  a0ef9c:	4d 89 c1             	mov    %r8,%r9
  a0ef9f:	49 f7 d9             	neg    %r9
  a0efa2:	83 e1 0f             	and    $0xf,%ecx
  a0efa5:	4c 01 e1             	add    %r12,%rcx
  a0efa8:	48 f7 d9             	neg    %rcx
  a0efab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  a0efb0:	4d 8d 14 31          	lea    (%r9,%rsi,1),%r10
  a0efb4:	49 39 da             	cmp    %rbx,%r10
  a0efb7:	0f 83 b8 05 00 00    	jae    a0f575 <binggan_bench::block_decompress::{closure#0}+0x7e5>
  a0efbd:	48 39 f7             	cmp    %rsi,%rdi
  a0efc0:	0f 84 4f 06 00 00    	je     a0f615 <binggan_bench::block_decompress::{closure#0}+0x885>
  a0efc6:	48 ff c6             	inc    %rsi
  a0efc9:	46 0f b6 14 08       	movzbl (%rax,%r9,1),%r10d
  a0efce:	44 88 10             	mov    %r10b,(%rax)
  a0efd1:	48 ff c0             	inc    %rax
  a0efd4:	4c 8d 14 31          	lea    (%rcx,%rsi,1),%r10
  a0efd8:	49 83 fa 04          	cmp    $0x4,%r10
  a0efdc:	75 d2                	jne    a0efb0 <binggan_bench::block_decompress::{closure#0}+0x220>
  a0efde:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
  a0efe3:	49 01 d7             	add    %rdx,%r15
  a0efe6:	49 83 c7 03          	add    $0x3,%r15
  a0efea:	49 89 ec             	mov    %rbp,%r12
  a0efed:	4d 39 df             	cmp    %r11,%r15
  a0eff0:	0f 82 7a fe ff ff    	jb     a0ee70 <binggan_bench::block_decompress::{closure#0}+0xe0>
  a0eff6:	e9 b5 05 00 00       	jmp    a0f5b0 <binggan_bench::block_decompress::{closure#0}+0x820>
  a0effb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  a0f000:	48 8d 70 12          	lea    0x12(%rax),%rsi
  a0f004:	48 39 de             	cmp    %rbx,%rsi
  a0f007:	0f 87 c3 04 00 00    	ja     a0f4d0 <binggan_bench::block_decompress::{closure#0}+0x740>
  a0f00d:	48 83 f8 ee          	cmp    $0xffffffffffffffee,%rax
  a0f011:	0f 83 d3 04 00 00    	jae    a0f4ea <binggan_bench::block_decompress::{closure#0}+0x75a>
  a0f017:	48 8d 4b ee          	lea    -0x12(%rbx),%rcx
  a0f01b:	49 39 cc             	cmp    %rcx,%r12
  a0f01e:	0f 87 dd 04 00 00    	ja     a0f501 <binggan_bench::block_decompress::{closure#0}+0x771>
  a0f024:	48 8b 0c 24          	mov    (%rsp),%rcx
  a0f028:	0f 10 04 01          	movups (%rcx,%rax,1),%xmm0
  a0f02c:	0f b7 44 01 10       	movzwl 0x10(%rcx,%rax,1),%eax
  a0f031:	66 42 89 44 21 10    	mov    %ax,0x10(%rcx,%r12,1)
  a0f037:	42 0f 11 04 21       	movups %xmm0,(%rcx,%r12,1)
  a0f03c:	4c 01 e5             	add    %r12,%rbp
  a0f03f:	49 01 d7             	add    %rdx,%r15
  a0f042:	49 83 c7 03          	add    $0x3,%r15
  a0f046:	49 89 ec             	mov    %rbp,%r12
  a0f049:	4d 39 df             	cmp    %r11,%r15
  a0f04c:	0f 82 1e fe ff ff    	jb     a0ee70 <binggan_bench::block_decompress::{closure#0}+0xe0>
  a0f052:	e9 59 05 00 00       	jmp    a0f5b0 <binggan_bench::block_decompress::{closure#0}+0x820>
  a0f057:	40 b5 0f             	mov    $0xf,%bpl
  a0f05a:	c0 e9 04             	shr    $0x4,%cl
  a0f05d:	66 44 89 6c 24 0e    	mov    %r13w,0xe(%rsp)
  a0f063:	74 33                	je     a0f098 <binggan_bench::block_decompress::{closure#0}+0x308>
  a0f065:	80 f9 0f             	cmp    $0xf,%cl
  a0f068:	75 39                	jne    a0f0a3 <binggan_bench::block_decompress::{closure#0}+0x313>
  a0f06a:	31 c0                	xor    %eax,%eax
  a0f06c:	0f 1f 40 00          	nopl   0x0(%rax)
  a0f070:	49 39 f3             	cmp    %rsi,%r11
  a0f073:	0f 84 3f 05 00 00    	je     a0f5b8 <binggan_bench::block_decompress::{closure#0}+0x828>
  a0f079:	41 0f b6 0c 31       	movzbl (%r9,%rsi,1),%ecx
  a0f07e:	48 ff c6             	inc    %rsi
  a0f081:	48 01 c8             	add    %rcx,%rax
  a0f084:	48 81 f9 ff 00 00 00 	cmp    $0xff,%rcx
  a0f08b:	74 e3                	je     a0f070 <binggan_bench::block_decompress::{closure#0}+0x2e0>
  a0f08d:	48 8d 50 0f          	lea    0xf(%rax),%rdx
  a0f091:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  a0f096:	eb 0e                	jmp    a0f0a6 <binggan_bench::block_decompress::{closure#0}+0x316>
  a0f098:	4d 89 e6             	mov    %r12,%r14
  a0f09b:	49 89 f5             	mov    %rsi,%r13
  a0f09e:	e9 e1 00 00 00       	jmp    a0f184 <binggan_bench::block_decompress::{closure#0}+0x3f4>
  a0f0a3:	0f b6 d1             	movzbl %cl,%edx
  a0f0a6:	4c 89 d8             	mov    %r11,%rax
  a0f0a9:	48 29 f0             	sub    %rsi,%rax
  a0f0ac:	48 39 c2             	cmp    %rax,%rdx
  a0f0af:	0f 87 c6 05 00 00    	ja     a0f67b <binggan_bench::block_decompress::{closure#0}+0x8eb>
  a0f0b5:	48 89 d8             	mov    %rbx,%rax
  a0f0b8:	4c 29 e0             	sub    %r12,%rax
  a0f0bb:	48 39 c2             	cmp    %rax,%rdx
  a0f0be:	0f 87 a9 05 00 00    	ja     a0f66d <binggan_bench::block_decompress::{closure#0}+0x8dd>
  a0f0c4:	49 89 d5             	mov    %rdx,%r13
  a0f0c7:	49 01 f5             	add    %rsi,%r13
  a0f0ca:	0f 82 4e 04 00 00    	jb     a0f51e <binggan_bench::block_decompress::{closure#0}+0x78e>
  a0f0d0:	4d 39 dd             	cmp    %r11,%r13
  a0f0d3:	0f 87 45 04 00 00    	ja     a0f51e <binggan_bench::block_decompress::{closure#0}+0x78e>
  a0f0d9:	49 89 d6             	mov    %rdx,%r14
  a0f0dc:	4d 01 e6             	add    %r12,%r14
  a0f0df:	0f 82 42 04 00 00    	jb     a0f527 <binggan_bench::block_decompress::{closure#0}+0x797>
  a0f0e5:	49 39 de             	cmp    %rbx,%r14
  a0f0e8:	0f 87 39 04 00 00    	ja     a0f527 <binggan_bench::block_decompress::{closure#0}+0x797>
  a0f0ee:	48 85 d2             	test   %rdx,%rdx
  a0f0f1:	0f 84 8d 00 00 00    	je     a0f184 <binggan_bench::block_decompress::{closure#0}+0x3f4>
  a0f0f7:	4c 01 ce             	add    %r9,%rsi
  a0f0fa:	4c 03 24 24          	add    (%rsp),%r12
  a0f0fe:	48 83 fa 04          	cmp    $0x4,%rdx
  a0f102:	73 22                	jae    a0f126 <binggan_bench::block_decompress::{closure#0}+0x396>
  a0f104:	0f b6 06             	movzbl (%rsi),%eax
  a0f107:	41 88 04 24          	mov    %al,(%r12)
  a0f10b:	48 83 fa 01          	cmp    $0x1,%rdx
  a0f10f:	74 73                	je     a0f184 <binggan_bench::block_decompress::{closure#0}+0x3f4>
  a0f111:	0f b7 06             	movzwl (%rsi),%eax
  a0f114:	66 41 89 04 24       	mov    %ax,(%r12)
  a0f119:	0f b7 44 16 fe       	movzwl -0x2(%rsi,%rdx,1),%eax
  a0f11e:	66 41 89 44 14 fe    	mov    %ax,-0x2(%r12,%rdx,1)
  a0f124:	eb 5e                	jmp    a0f184 <binggan_bench::block_decompress::{closure#0}+0x3f4>
  a0f126:	48 83 fa 08          	cmp    $0x8,%rdx
  a0f12a:	73 11                	jae    a0f13d <binggan_bench::block_decompress::{closure#0}+0x3ad>
  a0f12c:	8b 06                	mov    (%rsi),%eax
  a0f12e:	41 89 04 24          	mov    %eax,(%r12)
  a0f132:	8b 44 16 fc          	mov    -0x4(%rsi,%rdx,1),%eax
  a0f136:	41 89 44 14 fc       	mov    %eax,-0x4(%r12,%rdx,1)
  a0f13b:	eb 47                	jmp    a0f184 <binggan_bench::block_decompress::{closure#0}+0x3f4>
  a0f13d:	48 83 fa 11          	cmp    $0x11,%rdx
  a0f141:	73 13                	jae    a0f156 <binggan_bench::block_decompress::{closure#0}+0x3c6>
  a0f143:	48 8b 06             	mov    (%rsi),%rax
  a0f146:	49 89 04 24          	mov    %rax,(%r12)
  a0f14a:	48 8b 44 16 f8       	mov    -0x8(%rsi,%rdx,1),%rax
  a0f14f:	49 89 44 14 f8       	mov    %rax,-0x8(%r12,%rdx,1)
  a0f154:	eb 2e                	jmp    a0f184 <binggan_bench::block_decompress::{closure#0}+0x3f4>
  a0f156:	48 83 fa 21          	cmp    $0x21,%rdx
  a0f15a:	73 15                	jae    a0f171 <binggan_bench::block_decompress::{closure#0}+0x3e1>
  a0f15c:	0f 10 06             	movups (%rsi),%xmm0
  a0f15f:	41 0f 11 04 24       	movups %xmm0,(%r12)
  a0f164:	0f 10 44 16 f0       	movups -0x10(%rsi,%rdx,1),%xmm0
  a0f169:	41 0f 11 44 14 f0    	movups %xmm0,-0x10(%r12,%rdx,1)
  a0f16f:	eb 13                	jmp    a0f184 <binggan_bench::block_decompress::{closure#0}+0x3f4>
  a0f171:	4c 89 e7             	mov    %r12,%rdi
  a0f174:	ff 15 56 39 11 00    	call   *0x113956(%rip)        # b22ad0 <memcpy@GLIBC_2.14>
  a0f17a:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
  a0f17f:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
  a0f184:	4d 39 dd             	cmp    %r11,%r13
  a0f187:	0f 83 c5 02 00 00    	jae    a0f452 <binggan_bench::block_decompress::{closure#0}+0x6c2>
  a0f18d:	4d 8d 7d 02          	lea    0x2(%r13),%r15
  a0f191:	4d 39 df             	cmp    %r11,%r15
  a0f194:	0f 87 9e 04 00 00    	ja     a0f638 <binggan_bench::block_decompress::{closure#0}+0x8a8>
  a0f19a:	43 0f b7 04 29       	movzwl (%r9,%r13,1),%eax
  a0f19f:	48 85 c0             	test   %rax,%rax
  a0f1a2:	0f 84 a1 04 00 00    	je     a0f649 <binggan_bench::block_decompress::{closure#0}+0x8b9>
  a0f1a8:	40 80 c5 04          	add    $0x4,%bpl
  a0f1ac:	40 80 fd 13          	cmp    $0x13,%bpl
  a0f1b0:	44 0f b7 6c 24 0e    	movzwl 0xe(%rsp),%r13d
  a0f1b6:	75 30                	jne    a0f1e8 <binggan_bench::block_decompress::{closure#0}+0x458>
  a0f1b8:	31 c9                	xor    %ecx,%ecx
  a0f1ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  a0f1c0:	4d 39 fb             	cmp    %r15,%r11
  a0f1c3:	0f 84 c6 03 00 00    	je     a0f58f <binggan_bench::block_decompress::{closure#0}+0x7ff>
  a0f1c9:	43 0f b6 14 39       	movzbl (%r9,%r15,1),%edx
  a0f1ce:	49 ff c7             	inc    %r15
  a0f1d1:	48 01 d1             	add    %rdx,%rcx
  a0f1d4:	48 81 fa ff 00 00 00 	cmp    $0xff,%rdx
  a0f1db:	74 e3                	je     a0f1c0 <binggan_bench::block_decompress::{closure#0}+0x430>
  a0f1dd:	48 8d 51 13          	lea    0x13(%rcx),%rdx
  a0f1e1:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
  a0f1e6:	eb 04                	jmp    a0f1ec <binggan_bench::block_decompress::{closure#0}+0x45c>
  a0f1e8:	40 0f b6 d5          	movzbl %bpl,%edx
  a0f1ec:	4e 8d 24 32          	lea    (%rdx,%r14,1),%r12
  a0f1f0:	49 39 dc             	cmp    %rbx,%r12
  a0f1f3:	0f 87 61 04 00 00    	ja     a0f65a <binggan_bench::block_decompress::{closure#0}+0x8ca>
  a0f1f9:	4c 89 f6             	mov    %r14,%rsi
  a0f1fc:	48 29 c6             	sub    %rax,%rsi
  a0f1ff:	48 39 c2             	cmp    %rax,%rdx
  a0f202:	66 89 44 24 0c       	mov    %ax,0xc(%rsp)
  a0f207:	76 56                	jbe    a0f25f <binggan_bench::block_decompress::{closure#0}+0x4cf>
  a0f209:	49 39 c6             	cmp    %rax,%r14
  a0f20c:	0f 82 50 04 00 00    	jb     a0f662 <binggan_bench::block_decompress::{closure#0}+0x8d2>
  a0f212:	66 83 f8 01          	cmp    $0x1,%ax
  a0f216:	0f 85 9c 00 00 00    	jne    a0f2b8 <binggan_bench::block_decompress::{closure#0}+0x528>
  a0f21c:	48 39 de             	cmp    %rbx,%rsi
  a0f21f:	0f 83 61 04 00 00    	jae    a0f686 <binggan_bench::block_decompress::{closure#0}+0x8f6>
  a0f225:	4d 39 f4             	cmp    %r14,%r12
  a0f228:	0f 82 0f 03 00 00    	jb     a0f53d <binggan_bench::block_decompress::{closure#0}+0x7ad>
  a0f22e:	48 8b 04 24          	mov    (%rsp),%rax
  a0f232:	49 01 c6             	add    %rax,%r14
  a0f235:	0f b6 34 30          	movzbl (%rax,%rsi,1),%esi
  a0f239:	4c 89 f7             	mov    %r14,%rdi
  a0f23c:	ff 15 96 38 11 00    	call   *0x113896(%rip)        # b22ad8 <memset@GLIBC_2.2.5>
  a0f242:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
  a0f247:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
  a0f24c:	4d 39 df             	cmp    %r11,%r15
  a0f24f:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
  a0f254:	0f 82 16 fc ff ff    	jb     a0ee70 <binggan_bench::block_decompress::{closure#0}+0xe0>
  a0f25a:	e9 e8 01 00 00       	jmp    a0f447 <binggan_bench::block_decompress::{closure#0}+0x6b7>
  a0f25f:	49 39 c6             	cmp    %rax,%r14
  a0f262:	0f 82 fa 03 00 00    	jb     a0f662 <binggan_bench::block_decompress::{closure#0}+0x8d2>
  a0f268:	44 89 ed             	mov    %r13d,%ebp
  a0f26b:	48 83 fa 21          	cmp    $0x21,%rdx
  a0f26f:	0f 83 0b 01 00 00    	jae    a0f380 <binggan_bench::block_decompress::{closure#0}+0x5f0>
  a0f275:	49 8d 46 20          	lea    0x20(%r14),%rax
  a0f279:	48 39 d8             	cmp    %rbx,%rax
  a0f27c:	0f 87 72 01 00 00    	ja     a0f3f4 <binggan_bench::block_decompress::{closure#0}+0x664>
  a0f282:	4c 8d 6e 20          	lea    0x20(%rsi),%r13
  a0f286:	49 39 dd             	cmp    %rbx,%r13
  a0f289:	0f 87 a0 02 00 00    	ja     a0f52f <binggan_bench::block_decompress::{closure#0}+0x79f>
  a0f28f:	48 83 fe df          	cmp    $0xffffffffffffffdf,%rsi
  a0f293:	0f 87 b0 02 00 00    	ja     a0f549 <binggan_bench::block_decompress::{closure#0}+0x7b9>
  a0f299:	48 8d 43 e0          	lea    -0x20(%rbx),%rax
  a0f29d:	49 39 c6             	cmp    %rax,%r14
  a0f2a0:	0f 87 b2 02 00 00    	ja     a0f558 <binggan_bench::block_decompress::{closure#0}+0x7c8>
  a0f2a6:	48 8b 04 24          	mov    (%rsp),%rax
  a0f2aa:	0f 10 04 30          	movups (%rax,%rsi,1),%xmm0
  a0f2ae:	0f 10 4c 30 10       	movups 0x10(%rax,%rsi,1),%xmm1
  a0f2b3:	e9 1e 01 00 00       	jmp    a0f3d6 <binggan_bench::block_decompress::{closure#0}+0x646>
  a0f2b8:	4d 39 e6             	cmp    %r12,%r14
  a0f2bb:	0f 83 97 fb ff ff    	jae    a0ee58 <binggan_bench::block_decompress::{closure#0}+0xc8>
  a0f2c1:	48 39 f3             	cmp    %rsi,%rbx
  a0f2c4:	48 0f 47 f3          	cmova  %rbx,%rsi
  a0f2c8:	4c 29 f6             	sub    %r14,%rsi
  a0f2cb:	48 01 c6             	add    %rax,%rsi
  a0f2ce:	48 89 d9             	mov    %rbx,%rcx
  a0f2d1:	4c 29 f1             	sub    %r14,%rcx
  a0f2d4:	48 ff ca             	dec    %rdx
  a0f2d7:	48 39 ce             	cmp    %rcx,%rsi
  a0f2da:	48 0f 42 ce          	cmovb  %rsi,%rcx
  a0f2de:	48 39 d1             	cmp    %rdx,%rcx
  a0f2e1:	48 0f 43 ca          	cmovae %rdx,%rcx
  a0f2e5:	48 83 f9 10          	cmp    $0x10,%rcx
  a0f2e9:	72 4b                	jb     a0f336 <binggan_bench::block_decompress::{closure#0}+0x5a6>
  a0f2eb:	66 83 7c 24 0c 10    	cmpw   $0x10,0xc(%rsp)
  a0f2f1:	72 43                	jb     a0f336 <binggan_bench::block_decompress::{closure#0}+0x5a6>
  a0f2f3:	48 8d 51 01          	lea    0x1(%rcx),%rdx
  a0f2f7:	89 d6                	mov    %edx,%esi
  a0f2f9:	83 e6 0f             	and    $0xf,%esi
  a0f2fc:	bf 10 00 00 00       	mov    $0x10,%edi
  a0f301:	48 0f 44 f7          	cmove  %rdi,%rsi
  a0f305:	48 29 f2             	sub    %rsi,%rdx
  a0f308:	4c 01 f2             	add    %r14,%rdx
  a0f30b:	48 f7 d1             	not    %rcx
  a0f30e:	48 01 f1             	add    %rsi,%rcx
  a0f311:	4c 03 34 24          	add    (%rsp),%r14
  a0f315:	48 89 c6             	mov    %rax,%rsi
  a0f318:	48 f7 de             	neg    %rsi
  a0f31b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  a0f320:	41 0f 10 04 36       	movups (%r14,%rsi,1),%xmm0
  a0f325:	41 0f 11 06          	movups %xmm0,(%r14)
  a0f329:	49 83 c6 10          	add    $0x10,%r14
  a0f32d:	48 83 c1 10          	add    $0x10,%rcx
  a0f331:	75 ed                	jne    a0f320 <binggan_bench::block_decompress::{closure#0}+0x590>
  a0f333:	49 89 d6             	mov    %rdx,%r14
  a0f336:	48 89 c1             	mov    %rax,%rcx
  a0f339:	48 f7 d9             	neg    %rcx
  a0f33c:	48 8b 14 24          	mov    (%rsp),%rdx
  a0f340:	48 29 c2             	sub    %rax,%rdx
  a0f343:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
  a0f34a:	84 00 00 00 00 00 
  a0f350:	4a 8d 34 31          	lea    (%rcx,%r14,1),%rsi
  a0f354:	48 39 de             	cmp    %rbx,%rsi
  a0f357:	0f 83 c9 02 00 00    	jae    a0f626 <binggan_bench::block_decompress::{closure#0}+0x896>
  a0f35d:	4c 39 f3             	cmp    %r14,%rbx
  a0f360:	0f 84 ac 02 00 00    	je     a0f612 <binggan_bench::block_decompress::{closure#0}+0x882>
  a0f366:	42 0f b6 34 32       	movzbl (%rdx,%r14,1),%esi
  a0f36b:	48 8b 3c 24          	mov    (%rsp),%rdi
  a0f36f:	42 88 34 37          	mov    %sil,(%rdi,%r14,1)
  a0f373:	49 ff c6             	inc    %r14
  a0f376:	4d 39 f4             	cmp    %r14,%r12
  a0f379:	75 d5                	jne    a0f350 <binggan_bench::block_decompress::{closure#0}+0x5c0>
  a0f37b:	e9 d8 fa ff ff       	jmp    a0ee58 <binggan_bench::block_decompress::{closure#0}+0xc8>
  a0f380:	49 8d 46 40          	lea    0x40(%r14),%rax
  a0f384:	48 39 d8             	cmp    %rbx,%rax
  a0f387:	77 6b                	ja     a0f3f4 <binggan_bench::block_decompress::{closure#0}+0x664>
  a0f389:	48 83 fa 40          	cmp    $0x40,%rdx
  a0f38d:	77 65                	ja     a0f3f4 <binggan_bench::block_decompress::{closure#0}+0x664>
  a0f38f:	4c 8d 6e 40          	lea    0x40(%rsi),%r13
  a0f393:	49 39 dd             	cmp    %rbx,%r13
  a0f396:	0f 87 93 01 00 00    	ja     a0f52f <binggan_bench::block_decompress::{closure#0}+0x79f>
  a0f39c:	48 83 fe bf          	cmp    $0xffffffffffffffbf,%rsi
  a0f3a0:	0f 87 a3 01 00 00    	ja     a0f549 <binggan_bench::block_decompress::{closure#0}+0x7b9>
  a0f3a6:	48 8d 43 c0          	lea    -0x40(%rbx),%rax
  a0f3aa:	49 39 c6             	cmp    %rax,%r14
  a0f3ad:	0f 87 a5 01 00 00    	ja     a0f558 <binggan_bench::block_decompress::{closure#0}+0x7c8>
  a0f3b3:	48 8b 04 24          	mov    (%rsp),%rax
  a0f3b7:	0f 10 04 30          	movups (%rax,%rsi,1),%xmm0
  a0f3bb:	0f 10 4c 30 10       	movups 0x10(%rax,%rsi,1),%xmm1
  a0f3c0:	0f 10 54 30 20       	movups 0x20(%rax,%rsi,1),%xmm2
  a0f3c5:	0f 10 5c 30 30       	movups 0x30(%rax,%rsi,1),%xmm3
  a0f3ca:	42 0f 11 5c 30 30    	movups %xmm3,0x30(%rax,%r14,1)
  a0f3d0:	42 0f 11 54 30 20    	movups %xmm2,0x20(%rax,%r14,1)
  a0f3d6:	42 0f 11 4c 30 10    	movups %xmm1,0x10(%rax,%r14,1)
  a0f3dc:	42 0f 11 04 30       	movups %xmm0,(%rax,%r14,1)
  a0f3e1:	41 89 ed             	mov    %ebp,%r13d
  a0f3e4:	4d 39 df             	cmp    %r11,%r15
  a0f3e7:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
  a0f3ec:	0f 82 7e fa ff ff    	jb     a0ee70 <binggan_bench::block_decompress::{closure#0}+0xe0>
  a0f3f2:	eb 53                	jmp    a0f447 <binggan_bench::block_decompress::{closure#0}+0x6b7>
  a0f3f4:	4c 8d 2c 32          	lea    (%rdx,%rsi,1),%r13
  a0f3f8:	49 39 dd             	cmp    %rbx,%r13
  a0f3fb:	0f 87 2e 01 00 00    	ja     a0f52f <binggan_bench::block_decompress::{closure#0}+0x79f>
  a0f401:	4c 39 ee             	cmp    %r13,%rsi
  a0f404:	0f 87 3f 01 00 00    	ja     a0f549 <binggan_bench::block_decompress::{closure#0}+0x7b9>
  a0f40a:	48 89 d8             	mov    %rbx,%rax
  a0f40d:	48 29 d0             	sub    %rdx,%rax
  a0f410:	49 39 c6             	cmp    %rax,%r14
  a0f413:	0f 87 3f 01 00 00    	ja     a0f558 <binggan_bench::block_decompress::{closure#0}+0x7c8>
  a0f419:	48 8b 04 24          	mov    (%rsp),%rax
  a0f41d:	48 01 c6             	add    %rax,%rsi
  a0f420:	49 01 c6             	add    %rax,%r14
  a0f423:	4c 89 f7             	mov    %r14,%rdi
  a0f426:	ff 15 c4 36 11 00    	call   *0x1136c4(%rip)        # b22af0 <memmove@GLIBC_2.2.5>
  a0f42c:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
  a0f431:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
  a0f436:	41 89 ed             	mov    %ebp,%r13d
  a0f439:	4d 39 df             	cmp    %r11,%r15
  a0f43c:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
  a0f441:	0f 82 29 fa ff ff    	jb     a0ee70 <binggan_bench::block_decompress::{closure#0}+0xe0>
  a0f447:	41 be 02 00 00 00    	mov    $0x2,%r14d
  a0f44d:	e9 71 01 00 00       	jmp    a0f5c3 <binggan_bench::block_decompress::{closure#0}+0x833>
  a0f452:	49 39 de             	cmp    %rbx,%r14
  a0f455:	4c 0f 43 f3          	cmovae %rbx,%r14
  a0f459:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
  a0f45e:	48 8b 04 24          	mov    (%rsp),%rax
  a0f462:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  a0f467:	4c 89 74 24 30       	mov    %r14,0x30(%rsp)
  a0f46c:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  a0f471:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  a0f476:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
  a0f47b:	48 85 f6             	test   %rsi,%rsi
  a0f47e:	74 15                	je     a0f495 <binggan_bench::block_decompress::{closure#0}+0x705>
  a0f480:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  a0f485:	f0 48 29 35 7b 58 11 	lock sub %rsi,0x11587b(%rip)        # b24d08 <binggan_bench::GLOBAL>
  a0f48c:	00 
  a0f48d:	31 d2                	xor    %edx,%edx
  a0f48f:	ff 15 2b 36 11 00    	call   *0x11362b(%rip)        # b22ac0 <_DYNAMIC+0x1f8>
  a0f495:	48 89 d8             	mov    %rbx,%rax
  a0f498:	48 83 c4 58          	add    $0x58,%rsp
  a0f49c:	5b                   	pop    %rbx
  a0f49d:	41 5c                	pop    %r12
  a0f49f:	41 5d                	pop    %r13
  a0f4a1:	41 5e                	pop    %r14
  a0f4a3:	41 5f                	pop    %r15
  a0f4a5:	5d                   	pop    %rbp
  a0f4a6:	c3                   	ret    
  a0f4a7:	48 8d 0d 6a b5 10 00 	lea    0x10b56a(%rip),%rcx        # b1aa18 <__frame_dummy_init_array_entry+0x260>
  a0f4ae:	eb 0d                	jmp    a0f4bd <binggan_bench::block_decompress::{closure#0}+0x72d>
  a0f4b0:	4c 89 e6             	mov    %r12,%rsi
  a0f4b3:	49 89 db             	mov    %rbx,%r11
  a0f4b6:	48 8d 0d b3 c9 10 00 	lea    0x10c9b3(%rip),%rcx        # b1be70 <__frame_dummy_init_array_entry+0x16b8>
  a0f4bd:	48 89 f7             	mov    %rsi,%rdi
  a0f4c0:	4c 89 ee             	mov    %r13,%rsi
  a0f4c3:	4c 89 da             	mov    %r11,%rdx
  a0f4c6:	e8 15 ec 01 00       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a0f4cb:	e9 54 01 00 00       	jmp    a0f624 <binggan_bench::block_decompress::{closure#0}+0x894>
  a0f4d0:	45 31 f6             	xor    %r14d,%r14d
  a0f4d3:	48 8d 0d 06 cf 10 00 	lea    0x10cf06(%rip),%rcx        # b1c3e0 <__frame_dummy_init_array_entry+0x1c28>
  a0f4da:	4c 89 f7             	mov    %r14,%rdi
  a0f4dd:	48 89 da             	mov    %rbx,%rdx
  a0f4e0:	e8 fb eb 01 00       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a0f4e5:	e9 3a 01 00 00       	jmp    a0f624 <binggan_bench::block_decompress::{closure#0}+0x894>
  a0f4ea:	48 8d 0d 07 cf 10 00 	lea    0x10cf07(%rip),%rcx        # b1c3f8 <__frame_dummy_init_array_entry+0x1c40>
  a0f4f1:	48 89 c7             	mov    %rax,%rdi
  a0f4f4:	48 89 da             	mov    %rbx,%rdx
  a0f4f7:	e8 e4 eb 01 00       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a0f4fc:	e9 23 01 00 00       	jmp    a0f624 <binggan_bench::block_decompress::{closure#0}+0x894>
  a0f501:	48 8d 3d 98 48 fd ff 	lea    -0x2b768(%rip),%rdi        # 9e3da0 <miniserde::json::de::POW10+0x9a8>
  a0f508:	48 8d 15 69 b7 10 00 	lea    0x10b769(%rip),%rdx        # b1ac78 <__frame_dummy_init_array_entry+0x4c0>
  a0f50f:	be 2b 00 00 00       	mov    $0x2b,%esi
  a0f514:	e8 e7 cd 01 00       	call   a2c300 <core::panicking::panic_fmt>
  a0f519:	e9 06 01 00 00       	jmp    a0f624 <binggan_bench::block_decompress::{closure#0}+0x894>
  a0f51e:	48 8d 0d db b4 10 00 	lea    0x10b4db(%rip),%rcx        # b1aa00 <__frame_dummy_init_array_entry+0x248>
  a0f525:	eb 96                	jmp    a0f4bd <binggan_bench::block_decompress::{closure#0}+0x72d>
  a0f527:	4c 89 e6             	mov    %r12,%rsi
  a0f52a:	4d 89 f5             	mov    %r14,%r13
  a0f52d:	eb 84                	jmp    a0f4b3 <binggan_bench::block_decompress::{closure#0}+0x723>
  a0f52f:	31 f6                	xor    %esi,%esi
  a0f531:	49 89 db             	mov    %rbx,%r11
  a0f534:	48 8d 0d a5 ce 10 00 	lea    0x10cea5(%rip),%rcx        # b1c3e0 <__frame_dummy_init_array_entry+0x1c28>
  a0f53b:	eb 80                	jmp    a0f4bd <binggan_bench::block_decompress::{closure#0}+0x72d>
  a0f53d:	4c 89 e6             	mov    %r12,%rsi
  a0f540:	48 8d 0d 19 b7 10 00 	lea    0x10b719(%rip),%rcx        # b1ac60 <__frame_dummy_init_array_entry+0x4a8>
  a0f547:	eb 91                	jmp    a0f4da <binggan_bench::block_decompress::{closure#0}+0x74a>
  a0f549:	49 89 db             	mov    %rbx,%r11
  a0f54c:	48 8d 0d a5 ce 10 00 	lea    0x10cea5(%rip),%rcx        # b1c3f8 <__frame_dummy_init_array_entry+0x1c40>
  a0f553:	e9 65 ff ff ff       	jmp    a0f4bd <binggan_bench::block_decompress::{closure#0}+0x72d>
  a0f558:	48 8d 3d 41 48 fd ff 	lea    -0x2b7bf(%rip),%rdi        # 9e3da0 <miniserde::json::de::POW10+0x9a8>
  a0f55f:	48 8d 15 12 b7 10 00 	lea    0x10b712(%rip),%rdx        # b1ac78 <__frame_dummy_init_array_entry+0x4c0>
  a0f566:	be 2b 00 00 00       	mov    $0x2b,%esi
  a0f56b:	e8 90 cd 01 00       	call   a2c300 <core::panicking::panic_fmt>
  a0f570:	e9 af 00 00 00       	jmp    a0f624 <binggan_bench::block_decompress::{closure#0}+0x894>
  a0f575:	4c 29 c6             	sub    %r8,%rsi
  a0f578:	48 8d 15 11 b7 10 00 	lea    0x10b711(%rip),%rdx        # b1ac90 <__frame_dummy_init_array_entry+0x4d8>
  a0f57f:	48 89 f7             	mov    %rsi,%rdi
  a0f582:	48 89 de             	mov    %rbx,%rsi
  a0f585:	e8 37 ec 01 00       	call   a2e1c1 <core::panicking::panic_bounds_check>
  a0f58a:	e9 95 00 00 00       	jmp    a0f624 <binggan_bench::block_decompress::{closure#0}+0x894>
  a0f58f:	41 be 02 00 00 00    	mov    $0x2,%r14d
  a0f595:	4c 8b 64 24 40       	mov    0x40(%rsp),%r12
  a0f59a:	eb 27                	jmp    a0f5c3 <binggan_bench::block_decompress::{closure#0}+0x833>
  a0f59c:	44 0f b7 e7          	movzwl %di,%r12d
  a0f5a0:	41 be 03 00 00 00    	mov    $0x3,%r14d
  a0f5a6:	eb 20                	jmp    a0f5c8 <binggan_bench::block_decompress::{closure#0}+0x838>
  a0f5a8:	41 be 04 00 00 00    	mov    $0x4,%r14d
  a0f5ae:	eb 18                	jmp    a0f5c8 <binggan_bench::block_decompress::{closure#0}+0x838>
  a0f5b0:	41 be 02 00 00 00    	mov    $0x2,%r14d
  a0f5b6:	eb 10                	jmp    a0f5c8 <binggan_bench::block_decompress::{closure#0}+0x838>
  a0f5b8:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
  a0f5bd:	41 be 02 00 00 00    	mov    $0x2,%r14d
  a0f5c3:	48 85 db             	test   %rbx,%rbx
  a0f5c6:	74 17                	je     a0f5df <binggan_bench::block_decompress::{closure#0}+0x84f>
  a0f5c8:	f0 48 29 1d 38 57 11 	lock sub %rbx,0x115738(%rip)        # b24d08 <binggan_bench::GLOBAL>
  a0f5cf:	00 
  a0f5d0:	48 8b 3c 24          	mov    (%rsp),%rdi
  a0f5d4:	48 89 de             	mov    %rbx,%rsi
  a0f5d7:	31 d2                	xor    %edx,%edx
  a0f5d9:	ff 15 e1 34 11 00    	call   *0x1134e1(%rip)        # b22ac0 <_DYNAMIC+0x1f8>
  a0f5df:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
  a0f5e4:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
  a0f5e9:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  a0f5ee:	48 8d 3d 40 59 fd ff 	lea    -0x2a6c0(%rip),%rdi        # 9e4f35 <miniserde::json::de::POW10+0x1b3d>
  a0f5f5:	48 8d 0d 9c b5 10 00 	lea    0x10b59c(%rip),%rcx        # b1ab98 <__frame_dummy_init_array_entry+0x3e0>
  a0f5fc:	4c 8d 05 75 b4 10 00 	lea    0x10b475(%rip),%r8        # b1aa78 <__frame_dummy_init_array_entry+0x2c0>
  a0f603:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  a0f608:	be 2b 00 00 00       	mov    $0x2b,%esi
  a0f60d:	e8 0e 05 02 00       	call   a2fb20 <core::result::unwrap_failed>
  a0f612:	48 89 df             	mov    %rbx,%rdi
  a0f615:	48 8d 15 8c b6 10 00 	lea    0x10b68c(%rip),%rdx        # b1aca8 <__frame_dummy_init_array_entry+0x4f0>
  a0f61c:	48 89 de             	mov    %rbx,%rsi
  a0f61f:	e8 9d eb 01 00       	call   a2e1c1 <core::panicking::panic_bounds_check>
  a0f624:	0f 0b                	ud2    
  a0f626:	49 29 c6             	sub    %rax,%r14
  a0f629:	48 8d 15 60 b6 10 00 	lea    0x10b660(%rip),%rdx        # b1ac90 <__frame_dummy_init_array_entry+0x4d8>
  a0f630:	4c 89 f6             	mov    %r14,%rsi
  a0f633:	e9 47 ff ff ff       	jmp    a0f57f <binggan_bench::block_decompress::{closure#0}+0x7ef>
  a0f638:	41 be 02 00 00 00    	mov    $0x2,%r14d
  a0f63e:	44 0f b7 64 24 0c    	movzwl 0xc(%rsp),%r12d
  a0f644:	e9 7a ff ff ff       	jmp    a0f5c3 <binggan_bench::block_decompress::{closure#0}+0x833>
  a0f649:	41 be 03 00 00 00    	mov    $0x3,%r14d
  a0f64f:	44 0f b7 64 24 0c    	movzwl 0xc(%rsp),%r12d
  a0f655:	e9 69 ff ff ff       	jmp    a0f5c3 <binggan_bench::block_decompress::{closure#0}+0x833>
  a0f65a:	45 31 f6             	xor    %r14d,%r14d
  a0f65d:	e9 61 ff ff ff       	jmp    a0f5c3 <binggan_bench::block_decompress::{closure#0}+0x833>
  a0f662:	41 be 04 00 00 00    	mov    $0x4,%r14d
  a0f668:	e9 56 ff ff ff       	jmp    a0f5c3 <binggan_bench::block_decompress::{closure#0}+0x833>
  a0f66d:	4c 01 e2             	add    %r12,%rdx
  a0f670:	45 31 f6             	xor    %r14d,%r14d
  a0f673:	49 89 d4             	mov    %rdx,%r12
  a0f676:	e9 48 ff ff ff       	jmp    a0f5c3 <binggan_bench::block_decompress::{closure#0}+0x833>
  a0f67b:	41 be 01 00 00 00    	mov    $0x1,%r14d
  a0f681:	e9 3d ff ff ff       	jmp    a0f5c3 <binggan_bench::block_decompress::{closure#0}+0x833>
  a0f686:	48 8d 15 33 b6 10 00 	lea    0x10b633(%rip),%rdx        # b1acc0 <__frame_dummy_init_array_entry+0x508>
  a0f68d:	e9 ed fe ff ff       	jmp    a0f57f <binggan_bench::block_decompress::{closure#0}+0x7ef>
  a0f692:	e9 26 ff ff ff       	jmp    a0f5bd <binggan_bench::block_decompress::{closure#0}+0x82d>
  a0f697:	bf 01 00 00 00       	mov    $0x1,%edi
  a0f69c:	48 89 de             	mov    %rbx,%rsi
  a0f69f:	e8 8e 80 00 00       	call   a17732 <alloc::raw_vec::handle_error>
  a0f6a4:	49 89 c7             	mov    %rax,%r15
  a0f6a7:	eb 0d                	jmp    a0f6b6 <binggan_bench::block_decompress::{closure#0}+0x926>
  a0f6a9:	49 89 c7             	mov    %rax,%r15
  a0f6ac:	eb 08                	jmp    a0f6b6 <binggan_bench::block_decompress::{closure#0}+0x926>
  a0f6ae:	49 89 c7             	mov    %rax,%r15
  a0f6b1:	48 85 db             	test   %rbx,%rbx
  a0f6b4:	74 17                	je     a0f6cd <binggan_bench::block_decompress::{closure#0}+0x93d>
  a0f6b6:	f0 48 29 1d 4a 56 11 	lock sub %rbx,0x11564a(%rip)        # b24d08 <binggan_bench::GLOBAL>
  a0f6bd:	00 
  a0f6be:	48 8b 3c 24          	mov    (%rsp),%rdi
  a0f6c2:	48 89 de             	mov    %rbx,%rsi
  a0f6c5:	31 d2                	xor    %edx,%edx
  a0f6c7:	ff 15 f3 33 11 00    	call   *0x1133f3(%rip)        # b22ac0 <_DYNAMIC+0x1f8>
  a0f6cd:	4c 89 ff             	mov    %r15,%rdi
  a0f6d0:	e8 4b 93 10 00       	call   b18a20 <_Unwind_Resume@plt>
  a0f6d5:	cc                   	int3   
  a0f6d6:	cc                   	int3   
  a0f6d7:	cc                   	int3   
  a0f6d8:	cc                   	int3   
  a0f6d9:	cc                   	int3   
  a0f6da:	cc                   	int3   
  a0f6db:	cc                   	int3   
  a0f6dc:	cc                   	int3   
  a0f6dd:	cc                   	int3   
  a0f6de:	cc                   	int3   
  a0f6df:	cc                   	int3   
