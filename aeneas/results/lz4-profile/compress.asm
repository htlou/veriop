
aeneas/repos/lz4_flex/target/release/deps/binggan_bench-2ea8eea7cc47e14d:     file format elf64-x86-64


Disassembly of section .text:

0000000000a377a0 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>>:
  a377a0:	55                   	push   %rbp
  a377a1:	41 57                	push   %r15
  a377a3:	41 56                	push   %r14
  a377a5:	41 55                	push   %r13
  a377a7:	41 54                	push   %r12
  a377a9:	53                   	push   %rbx
  a377aa:	48 83 ec 58          	sub    $0x58,%rsp
  a377ae:	48 89 d3             	mov    %rdx,%rbx
  a377b1:	4c 8b 6a 08          	mov    0x8(%rdx),%r13
  a377b5:	4c 8b 4a 10          	mov    0x10(%rdx),%r9
  a377b9:	4d 89 e8             	mov    %r13,%r8
  a377bc:	4d 29 c8             	sub    %r9,%r8
  a377bf:	48 6b c6 6e          	imul   $0x6e,%rsi,%rax
  a377c3:	48 c1 e8 02          	shr    $0x2,%rax
  a377c7:	48 ba c3 f5 28 5c 8f 	movabs $0x28f5c28f5c28f5c3,%rdx
  a377ce:	c2 f5 28 
  a377d1:	48 f7 e2             	mul    %rdx
  a377d4:	48 c1 ea 02          	shr    $0x2,%rdx
  a377d8:	48 83 c2 14          	add    $0x14,%rdx
  a377dc:	49 39 d0             	cmp    %rdx,%r8
  a377df:	73 14                	jae    a377f5 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x55>
  a377e1:	b8 01 00 00 00       	mov    $0x1,%eax
  a377e6:	48 83 c4 58          	add    $0x58,%rsp
  a377ea:	5b                   	pop    %rbx
  a377eb:	41 5c                	pop    %r12
  a377ed:	41 5d                	pop    %r13
  a377ef:	41 5e                	pop    %r14
  a377f1:	41 5f                	pop    %r15
  a377f3:	5d                   	pop    %rbp
  a377f4:	c3                   	ret    
  a377f5:	48 bd 00 00 00 bb dc 	movabs $0xcf1bbcdcbb000000,%rbp
  a377fc:	bc 1b cf 
  a377ff:	4c 8d 7e f4          	lea    -0xc(%rsi),%r15
  a37803:	48 8b 07             	mov    (%rdi),%rax
  a37806:	48 0f af c5          	imul   %rbp,%rax
  a3780a:	48 c1 e8 34          	shr    $0x34,%rax
  a3780e:	c7 04 81 00 00 00 00 	movl   $0x0,(%rcx,%rax,4)
  a37815:	48 8d 46 fa          	lea    -0x6(%rsi),%rax
  a37819:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  a3781e:	48 8b 03             	mov    (%rbx),%rax
  a37821:	48 8d 57 04          	lea    0x4(%rdi),%rdx
  a37825:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
  a3782a:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  a37830:	31 d2                	xor    %edx,%edx
  a37832:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  a37837:	4d 89 c8             	mov    %r9,%r8
  a3783a:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
  a3783f:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
  a37844:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  a37849:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  a3784e:	eb 1e                	jmp    a3786e <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0xce>
  a37850:	48 bd 00 00 00 bb dc 	movabs $0xcf1bbcdcbb000000,%rbp
  a37857:	bc 1b cf 
  a3785a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
  a3785f:	4d 01 dc             	add    %r11,%r12
  a37862:	4c 89 e2             	mov    %r12,%rdx
  a37865:	4d 39 fc             	cmp    %r15,%r12
  a37868:	0f 87 eb 05 00 00    	ja     a37e59 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x6b9>
  a3786e:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  a37873:	49 8d 44 24 01       	lea    0x1(%r12),%rax
  a37878:	41 b9 21 00 00 00    	mov    $0x21,%r9d
  a3787e:	eb 19                	jmp    a37899 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0xf9>
  a37880:	4c 89 c8             	mov    %r9,%rax
  a37883:	48 c1 e8 05          	shr    $0x5,%rax
  a37887:	49 ff c1             	inc    %r9
  a3788a:	4c 01 d0             	add    %r10,%rax
  a3788d:	4d 89 d4             	mov    %r10,%r12
  a37890:	4d 39 fa             	cmp    %r15,%r10
  a37893:	0f 87 bb 05 00 00    	ja     a37e54 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x6b4>
  a37899:	49 89 c2             	mov    %rax,%r10
  a3789c:	49 8d 44 24 08       	lea    0x8(%r12),%rax
  a378a1:	48 39 f0             	cmp    %rsi,%rax
  a378a4:	0f 87 95 05 00 00    	ja     a37e3f <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x69f>
  a378aa:	4a 8b 04 27          	mov    (%rdi,%r12,1),%rax
  a378ae:	49 89 c3             	mov    %rax,%r11
  a378b1:	4c 0f af dd          	imul   %rbp,%r11
  a378b5:	49 c1 eb 34          	shr    $0x34,%r11
  a378b9:	42 8b 14 99          	mov    (%rcx,%r11,4),%edx
  a378bd:	46 89 24 99          	mov    %r12d,(%rcx,%r11,4)
  a378c1:	4d 89 e6             	mov    %r12,%r14
  a378c4:	49 29 d6             	sub    %rdx,%r14
  a378c7:	49 81 fe ff ff 00 00 	cmp    $0xffff,%r14
  a378ce:	77 b0                	ja     a37880 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0xe0>
  a378d0:	39 04 17             	cmp    %eax,(%rdi,%rdx,1)
  a378d3:	75 ab                	jne    a37880 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0xe0>
  a378d5:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
  a378da:	4d 39 cc             	cmp    %r9,%r12
  a378dd:	76 41                	jbe    a37920 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x180>
  a378df:	85 d2                	test   %edx,%edx
  a378e1:	74 3d                	je     a37920 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x180>
  a378e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
  a378ea:	84 00 00 00 00 00 
  a378f0:	4d 8d 7c 24 ff       	lea    -0x1(%r12),%r15
  a378f5:	49 39 f7             	cmp    %rsi,%r15
  a378f8:	0f 83 0e 06 00 00    	jae    a37f0c <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x76c>
  a378fe:	42 0f b6 44 27 ff    	movzbl -0x1(%rdi,%r12,1),%eax
  a37904:	3a 44 17 ff          	cmp    -0x1(%rdi,%rdx,1),%al
  a37908:	75 16                	jne    a37920 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x180>
  a3790a:	48 ff ca             	dec    %rdx
  a3790d:	74 14                	je     a37923 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x183>
  a3790f:	4d 89 fc             	mov    %r15,%r12
  a37912:	4d 39 cf             	cmp    %r9,%r15
  a37915:	77 d9                	ja     a378f0 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x150>
  a37917:	eb 0a                	jmp    a37923 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x183>
  a37919:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  a37920:	4d 89 e7             	mov    %r12,%r15
  a37923:	49 8d 47 04          	lea    0x4(%r15),%rax
  a37927:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  a3792c:	49 29 c1             	sub    %rax,%r9
  a3792f:	0f 82 9c 05 00 00    	jb     a37ed1 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x731>
  a37935:	48 8d 42 04          	lea    0x4(%rdx),%rax
  a37939:	49 89 f2             	mov    %rsi,%r10
  a3793c:	49 29 c2             	sub    %rax,%r10
  a3793f:	0f 82 a3 05 00 00    	jb     a37ee8 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x748>
  a37945:	4c 89 cb             	mov    %r9,%rbx
  a37948:	48 c1 eb 03          	shr    $0x3,%rbx
  a3794c:	4d 89 d3             	mov    %r10,%r11
  a3794f:	49 c1 eb 03          	shr    $0x3,%r11
  a37953:	49 39 db             	cmp    %rbx,%r11
  a37956:	4c 0f 43 db          	cmovae %rbx,%r11
  a3795a:	4d 85 db             	test   %r11,%r11
  a3795d:	0f 84 7d 00 00 00    	je     a379e0 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x240>
  a37963:	49 8d 5f 04          	lea    0x4(%r15),%rbx
  a37967:	48 01 fb             	add    %rdi,%rbx
  a3796a:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  a3796f:	48 01 f8             	add    %rdi,%rax
  a37972:	4e 8d 24 dd 00 00 00 	lea    0x0(,%r11,8),%r12
  a37979:	00 
  a3797a:	31 db                	xor    %ebx,%ebx
  a3797c:	0f 1f 40 00          	nopl   0x0(%rax)
  a37980:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
  a37985:	4d 8b 6c 1d 00       	mov    0x0(%r13,%rbx,1),%r13
  a3798a:	48 8b 2c 18          	mov    (%rax,%rbx,1),%rbp
  a3798e:	49 39 ed             	cmp    %rbp,%r13
  a37991:	0f 85 a4 00 00 00    	jne    a37a3b <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x29b>
  a37997:	48 83 c3 08          	add    $0x8,%rbx
  a3799b:	49 ff cb             	dec    %r11
  a3799e:	75 e0                	jne    a37980 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x1e0>
  a379a0:	4d 39 ca             	cmp    %r9,%r10
  a379a3:	4d 0f 42 ca          	cmovb  %r10,%r9
  a379a7:	49 8d 44 24 ff       	lea    -0x1(%r12),%rax
  a379ac:	4c 39 c8             	cmp    %r9,%rax
  a379af:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  a379b4:	0f 83 13 04 00 00    	jae    a37dcd <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x62d>
  a379ba:	b8 00 00 00 00       	mov    $0x0,%eax
  a379bf:	4d 39 cc             	cmp    %r9,%r12
  a379c2:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  a379c7:	48 bd 00 00 00 bb dc 	movabs $0xcf1bbcdcbb000000,%rbp
  a379ce:	bc 1b cf 
  a379d1:	72 29                	jb     a379fc <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x25c>
  a379d3:	eb 61                	jmp    a37a36 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x296>
  a379d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  a379dc:	00 00 00 00 
  a379e0:	4d 39 ca             	cmp    %r9,%r10
  a379e3:	4d 0f 42 ca          	cmovb  %r10,%r9
  a379e7:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  a379ed:	b8 00 00 00 00       	mov    $0x0,%eax
  a379f2:	4d 85 c9             	test   %r9,%r9
  a379f5:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  a379fa:	74 3a                	je     a37a36 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x296>
  a379fc:	4d 29 e1             	sub    %r12,%r9
  a379ff:	4c 01 e2             	add    %r12,%rdx
  a37a02:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
  a37a07:	48 01 c2             	add    %rax,%rdx
  a37a0a:	4f 8d 14 27          	lea    (%r15,%r12,1),%r10
  a37a0e:	49 01 c2             	add    %rax,%r10
  a37a11:	31 c0                	xor    %eax,%eax
  a37a13:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
  a37a1a:	84 00 00 00 00 00 
  a37a20:	45 0f b6 1c 02       	movzbl (%r10,%rax,1),%r11d
  a37a25:	44 3a 1c 02          	cmp    (%rdx,%rax,1),%r11b
  a37a29:	75 0b                	jne    a37a36 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x296>
  a37a2b:	48 ff c0             	inc    %rax
  a37a2e:	49 39 c1             	cmp    %rax,%r9
  a37a31:	75 ed                	jne    a37a20 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x280>
  a37a33:	4c 89 c8             	mov    %r9,%rax
  a37a36:	49 01 c4             	add    %rax,%r12
  a37a39:	eb 23                	jmp    a37a5e <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x2be>
  a37a3b:	4c 31 ed             	xor    %r13,%rbp
  a37a3e:	f3 4c 0f bc e5       	tzcnt  %rbp,%r12
  a37a43:	41 c1 ec 03          	shr    $0x3,%r12d
  a37a47:	49 09 dc             	or     %rbx,%r12
  a37a4a:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  a37a4f:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  a37a54:	48 bd 00 00 00 bb dc 	movabs $0xcf1bbcdcbb000000,%rbp
  a37a5b:	bc 1b cf 
  a37a5e:	4d 8d 5f 04          	lea    0x4(%r15),%r11
  a37a62:	4b 8d 04 1c          	lea    (%r12,%r11,1),%rax
  a37a66:	48 83 c0 fe          	add    $0xfffffffffffffffe,%rax
  a37a6a:	4f 8d 0c 1c          	lea    (%r12,%r11,1),%r9
  a37a6e:	49 83 c1 06          	add    $0x6,%r9
  a37a72:	48 83 f8 f7          	cmp    $0xfffffffffffffff7,%rax
  a37a76:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
  a37a7b:	0f 87 fc 03 00 00    	ja     a37e7d <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x6dd>
  a37a81:	49 39 f1             	cmp    %rsi,%r9
  a37a84:	0f 87 f3 03 00 00    	ja     a37e7d <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x6dd>
  a37a8a:	48 8b 14 07          	mov    (%rdi,%rax,1),%rdx
  a37a8e:	48 0f af d5          	imul   %rbp,%rdx
  a37a92:	48 c1 ea 34          	shr    $0x34,%rdx
  a37a96:	89 04 91             	mov    %eax,(%rcx,%rdx,4)
  a37a99:	4d 39 e8             	cmp    %r13,%r8
  a37a9c:	0f 83 58 04 00 00    	jae    a37efa <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x75a>
  a37aa2:	4d 89 f9             	mov    %r15,%r9
  a37aa5:	4d 29 d1             	sub    %r10,%r9
  a37aa8:	44 89 c8             	mov    %r9d,%eax
  a37aab:	c0 e0 04             	shl    $0x4,%al
  a37aae:	49 83 f9 0f          	cmp    $0xf,%r9
  a37ab2:	0f b6 c0             	movzbl %al,%eax
  a37ab5:	ba f0 00 00 00       	mov    $0xf0,%edx
  a37aba:	0f 43 c2             	cmovae %edx,%eax
  a37abd:	49 83 fc 0f          	cmp    $0xf,%r12
  a37ac1:	ba 0f 00 00 00       	mov    $0xf,%edx
  a37ac6:	49 0f 42 d4          	cmovb  %r12,%rdx
  a37aca:	08 c2                	or     %al,%dl
  a37acc:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  a37ad1:	42 88 14 00          	mov    %dl,(%rax,%r8,1)
  a37ad5:	49 8d 68 01          	lea    0x1(%r8),%rbp
  a37ad9:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
  a37add:	49 83 f9 0e          	cmp    $0xe,%r9
  a37ae1:	0f 86 d6 00 00 00    	jbe    a37bbd <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x41d>
  a37ae7:	4d 8d 51 f1          	lea    -0xf(%r9),%r10
  a37aeb:	49 81 fa ff 00 00 00 	cmp    $0xff,%r10
  a37af2:	0f 82 ac 00 00 00    	jb     a37ba4 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x404>
  a37af8:	49 8d 81 f2 fe ff ff 	lea    -0x10e(%r9),%rax
  a37aff:	48 ba 81 80 80 80 80 	movabs $0x8080808080808081,%rdx
  a37b06:	80 80 80 
  a37b09:	48 f7 e2             	mul    %rdx
  a37b0c:	48 c1 ea 07          	shr    $0x7,%rdx
  a37b10:	49 f7 d0             	not    %r8
  a37b13:	4d 01 e8             	add    %r13,%r8
  a37b16:	4c 39 c2             	cmp    %r8,%rdx
  a37b19:	4c 0f 42 c2          	cmovb  %rdx,%r8
  a37b1d:	49 83 f8 04          	cmp    $0x4,%r8
  a37b21:	72 55                	jb     a37b78 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x3d8>
  a37b23:	49 ff c0             	inc    %r8
  a37b26:	44 89 c0             	mov    %r8d,%eax
  a37b29:	83 e0 03             	and    $0x3,%eax
  a37b2c:	ba 04 00 00 00       	mov    $0x4,%edx
  a37b31:	48 0f 44 c2          	cmove  %rdx,%rax
  a37b35:	49 29 c0             	sub    %rax,%r8
  a37b38:	4c 89 c0             	mov    %r8,%rax
  a37b3b:	48 c1 e0 08          	shl    $0x8,%rax
  a37b3f:	4c 89 c2             	mov    %r8,%rdx
  a37b42:	48 29 c2             	sub    %rax,%rdx
  a37b45:	49 01 d2             	add    %rdx,%r10
  a37b48:	49 8d 04 28          	lea    (%r8,%rbp,1),%rax
  a37b4c:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  a37b51:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
  a37b58:	0f 1f 84 00 00 00 00 
  a37b5f:	00 
  a37b60:	c7 04 2a ff ff ff ff 	movl   $0xffffffff,(%rdx,%rbp,1)
  a37b67:	48 83 c5 04          	add    $0x4,%rbp
  a37b6b:	49 83 c0 fc          	add    $0xfffffffffffffffc,%r8
  a37b6f:	75 ef                	jne    a37b60 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x3c0>
  a37b71:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
  a37b75:	48 89 c5             	mov    %rax,%rbp
  a37b78:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  a37b7d:	0f 1f 00             	nopl   (%rax)
  a37b80:	49 39 ed             	cmp    %rbp,%r13
  a37b83:	0f 84 92 03 00 00    	je     a37f1b <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x77b>
  a37b89:	49 81 c2 01 ff ff ff 	add    $0xffffffffffffff01,%r10
  a37b90:	c6 04 28 ff          	movb   $0xff,(%rax,%rbp,1)
  a37b94:	48 ff c5             	inc    %rbp
  a37b97:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
  a37b9b:	49 81 fa fe 00 00 00 	cmp    $0xfe,%r10
  a37ba2:	77 dc                	ja     a37b80 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x3e0>
  a37ba4:	4c 39 ed             	cmp    %r13,%rbp
  a37ba7:	0f 83 80 03 00 00    	jae    a37f2d <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x78d>
  a37bad:	44 88 14 28          	mov    %r10b,(%rax,%rbp,1)
  a37bb1:	48 ff c5             	inc    %rbp
  a37bb4:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
  a37bb8:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
  a37bbd:	4d 39 d7             	cmp    %r10,%r15
  a37bc0:	0f 82 cc 02 00 00    	jb     a37e92 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x6f2>
  a37bc6:	49 39 f7             	cmp    %rsi,%r15
  a37bc9:	0f 87 c3 02 00 00    	ja     a37e92 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x6f2>
  a37bcf:	48 89 eb             	mov    %rbp,%rbx
  a37bd2:	4c 01 cb             	add    %r9,%rbx
  a37bd5:	0f 82 cc 02 00 00    	jb     a37ea7 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x707>
  a37bdb:	4c 39 eb             	cmp    %r13,%rbx
  a37bde:	0f 87 c3 02 00 00    	ja     a37ea7 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x707>
  a37be4:	4d 39 d7             	cmp    %r10,%r15
  a37be7:	0f 85 a3 00 00 00    	jne    a37c90 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x4f0>
  a37bed:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  a37bf2:	48 89 58 10          	mov    %rbx,0x10(%rax)
  a37bf6:	4c 8d 43 02          	lea    0x2(%rbx),%r8
  a37bfa:	48 83 fb fd          	cmp    $0xfffffffffffffffd,%rbx
  a37bfe:	0f 87 b8 02 00 00    	ja     a37ebc <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x71c>
  a37c04:	4d 39 e8             	cmp    %r13,%r8
  a37c07:	0f 87 af 02 00 00    	ja     a37ebc <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x71c>
  a37c0d:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  a37c12:	66 44 89 34 18       	mov    %r14w,(%rax,%rbx,1)
  a37c17:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  a37c1c:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  a37c20:	49 83 fc 0e          	cmp    $0xe,%r12
  a37c24:	0f 86 26 fc ff ff    	jbe    a37850 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0xb0>
  a37c2a:	4d 8d 4c 24 f1       	lea    -0xf(%r12),%r9
  a37c2f:	49 81 f9 ff 00 00 00 	cmp    $0xff,%r9
  a37c36:	0f 82 ab 00 00 00    	jb     a37ce7 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x547>
  a37c3c:	49 8d 84 24 f2 fe ff 	lea    -0x10e(%r12),%rax
  a37c43:	ff 
  a37c44:	48 ba 81 80 80 80 80 	movabs $0x8080808080808081,%rdx
  a37c4b:	80 80 80 
  a37c4e:	48 f7 e2             	mul    %rdx
  a37c51:	48 c1 ea 07          	shr    $0x7,%rdx
  a37c55:	4d 01 ea             	add    %r13,%r10
  a37c58:	49 01 ef             	add    %rbp,%r15
  a37c5b:	4d 29 fa             	sub    %r15,%r10
  a37c5e:	49 83 c2 fe          	add    $0xfffffffffffffffe,%r10
  a37c62:	4c 39 d2             	cmp    %r10,%rdx
  a37c65:	4c 0f 42 d2          	cmovb  %rdx,%r10
  a37c69:	49 83 fa 04          	cmp    $0x4,%r10
  a37c6d:	0f 83 a7 00 00 00    	jae    a37d1a <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x57a>
  a37c73:	48 bd 00 00 00 bb dc 	movabs $0xcf1bbcdcbb000000,%rbp
  a37c7a:	bc 1b cf 
  a37c7d:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
  a37c82:	e9 f2 00 00 00       	jmp    a37d79 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x5d9>
  a37c87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  a37c8e:	00 00 
  a37c90:	4a 8d 14 17          	lea    (%rdi,%r10,1),%rdx
  a37c94:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  a37c99:	48 01 e8             	add    %rbp,%rax
  a37c9c:	49 83 f9 04          	cmp    $0x4,%r9
  a37ca0:	73 2a                	jae    a37ccc <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x52c>
  a37ca2:	44 0f b6 02          	movzbl (%rdx),%r8d
  a37ca6:	44 88 00             	mov    %r8b,(%rax)
  a37ca9:	49 83 f9 01          	cmp    $0x1,%r9
  a37cad:	0f 84 3a ff ff ff    	je     a37bed <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x44d>
  a37cb3:	44 0f b7 02          	movzwl (%rdx),%r8d
  a37cb7:	66 44 89 00          	mov    %r8w,(%rax)
  a37cbb:	42 0f b7 54 0a fe    	movzwl -0x2(%rdx,%r9,1),%edx
  a37cc1:	66 42 89 54 08 fe    	mov    %dx,-0x2(%rax,%r9,1)
  a37cc7:	e9 21 ff ff ff       	jmp    a37bed <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x44d>
  a37ccc:	49 83 f9 08          	cmp    $0x8,%r9
  a37cd0:	73 29                	jae    a37cfb <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x55b>
  a37cd2:	44 8b 02             	mov    (%rdx),%r8d
  a37cd5:	44 89 00             	mov    %r8d,(%rax)
  a37cd8:	42 8b 54 0a fc       	mov    -0x4(%rdx,%r9,1),%edx
  a37cdd:	42 89 54 08 fc       	mov    %edx,-0x4(%rax,%r9,1)
  a37ce2:	e9 06 ff ff ff       	jmp    a37bed <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x44d>
  a37ce7:	48 bd 00 00 00 bb dc 	movabs $0xcf1bbcdcbb000000,%rbp
  a37cee:	bc 1b cf 
  a37cf1:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
  a37cf6:	e9 aa 00 00 00       	jmp    a37da5 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x605>
  a37cfb:	49 83 f9 11          	cmp    $0x11,%r9
  a37cff:	0f 83 e1 00 00 00    	jae    a37de6 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x646>
  a37d05:	4c 8b 02             	mov    (%rdx),%r8
  a37d08:	4c 89 00             	mov    %r8,(%rax)
  a37d0b:	4a 8b 54 0a f8       	mov    -0x8(%rdx,%r9,1),%rdx
  a37d10:	4a 89 54 08 f8       	mov    %rdx,-0x8(%rax,%r9,1)
  a37d15:	e9 d3 fe ff ff       	jmp    a37bed <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x44d>
  a37d1a:	49 ff c2             	inc    %r10
  a37d1d:	44 89 d0             	mov    %r10d,%eax
  a37d20:	83 e0 03             	and    $0x3,%eax
  a37d23:	ba 04 00 00 00       	mov    $0x4,%edx
  a37d28:	48 0f 44 c2          	cmove  %rdx,%rax
  a37d2c:	49 29 c2             	sub    %rax,%r10
  a37d2f:	4c 89 d0             	mov    %r10,%rax
  a37d32:	48 c1 e0 08          	shl    $0x8,%rax
  a37d36:	4c 89 d2             	mov    %r10,%rdx
  a37d39:	48 29 c2             	sub    %rax,%rdx
  a37d3c:	49 01 d1             	add    %rdx,%r9
  a37d3f:	4b 8d 04 10          	lea    (%r8,%r10,1),%rax
  a37d43:	48 bd 00 00 00 bb dc 	movabs $0xcf1bbcdcbb000000,%rbp
  a37d4a:	bc 1b cf 
  a37d4d:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
  a37d52:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  a37d57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  a37d5e:	00 00 
  a37d60:	42 c7 04 02 ff ff ff 	movl   $0xffffffff,(%rdx,%r8,1)
  a37d67:	ff 
  a37d68:	49 83 c0 04          	add    $0x4,%r8
  a37d6c:	49 83 c2 fc          	add    $0xfffffffffffffffc,%r10
  a37d70:	75 ee                	jne    a37d60 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x5c0>
  a37d72:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  a37d76:	49 89 c0             	mov    %rax,%r8
  a37d79:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  a37d7e:	66 90                	xchg   %ax,%ax
  a37d80:	4d 39 e8             	cmp    %r13,%r8
  a37d83:	0f 83 71 01 00 00    	jae    a37efa <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x75a>
  a37d89:	49 81 c1 01 ff ff ff 	add    $0xffffffffffffff01,%r9
  a37d90:	42 c6 04 00 ff       	movb   $0xff,(%rax,%r8,1)
  a37d95:	49 ff c0             	inc    %r8
  a37d98:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  a37d9c:	49 81 f9 fe 00 00 00 	cmp    $0xfe,%r9
  a37da3:	77 db                	ja     a37d80 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x5e0>
  a37da5:	4d 39 e8             	cmp    %r13,%r8
  a37da8:	0f 83 4c 01 00 00    	jae    a37efa <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x75a>
  a37dae:	46 88 0c 00          	mov    %r9b,(%rax,%r8,1)
  a37db2:	49 ff c0             	inc    %r8
  a37db5:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  a37db9:	4d 01 dc             	add    %r11,%r12
  a37dbc:	4c 89 e2             	mov    %r12,%rdx
  a37dbf:	4d 39 fc             	cmp    %r15,%r12
  a37dc2:	0f 86 a6 fa ff ff    	jbe    a3786e <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0xce>
  a37dc8:	e9 8c 00 00 00       	jmp    a37e59 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x6b9>
  a37dcd:	31 c0                	xor    %eax,%eax
  a37dcf:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  a37dd4:	48 bd 00 00 00 bb dc 	movabs $0xcf1bbcdcbb000000,%rbp
  a37ddb:	bc 1b cf 
  a37dde:	49 01 c4             	add    %rax,%r12
  a37de1:	e9 78 fc ff ff       	jmp    a37a5e <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x2be>
  a37de6:	49 83 f9 21          	cmp    $0x21,%r9
  a37dea:	73 17                	jae    a37e03 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x663>
  a37dec:	0f 10 02             	movups (%rdx),%xmm0
  a37def:	0f 11 00             	movups %xmm0,(%rax)
  a37df2:	42 0f 10 44 0a f0    	movups -0x10(%rdx,%r9,1),%xmm0
  a37df8:	42 0f 11 44 08 f0    	movups %xmm0,-0x10(%rax,%r9,1)
  a37dfe:	e9 ea fd ff ff       	jmp    a37bed <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x44d>
  a37e03:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
  a37e08:	48 89 c7             	mov    %rax,%rdi
  a37e0b:	48 89 74 24 40       	mov    %rsi,0x40(%rsp)
  a37e10:	48 89 d6             	mov    %rdx,%rsi
  a37e13:	4c 89 ca             	mov    %r9,%rdx
  a37e16:	49 89 cd             	mov    %rcx,%r13
  a37e19:	ff 15 b1 ac 0e 00    	call   *0xeacb1(%rip)        # b22ad0 <memcpy@GLIBC_2.14>
  a37e1f:	4d 8d 5f 04          	lea    0x4(%r15),%r11
  a37e23:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
  a37e28:	4c 89 e9             	mov    %r13,%rcx
  a37e2b:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  a37e30:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  a37e35:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
  a37e3a:	e9 ae fd ff ff       	jmp    a37bed <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x44d>
  a37e3f:	48 8d 0d b2 3f 0e 00 	lea    0xe3fb2(%rip),%rcx        # b1bdf8 <__frame_dummy_init_array_entry+0x1640>
  a37e46:	4c 89 e7             	mov    %r12,%rdi
  a37e49:	48 89 f2             	mov    %rsi,%rdx
  a37e4c:	48 89 c6             	mov    %rax,%rsi
  a37e4f:	e8 8c 62 ff ff       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a37e54:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  a37e59:	48 89 f8             	mov    %rdi,%rax
  a37e5c:	48 89 df             	mov    %rbx,%rdi
  a37e5f:	48 89 f2             	mov    %rsi,%rdx
  a37e62:	48 89 c6             	mov    %rax,%rsi
  a37e65:	4c 89 e1             	mov    %r12,%rcx
  a37e68:	e8 d3 00 00 00       	call   a37f40 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>>
  a37e6d:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  a37e71:	48 2b 54 24 48       	sub    0x48(%rsp),%rdx
  a37e76:	31 c0                	xor    %eax,%eax
  a37e78:	e9 69 f9 ff ff       	jmp    a377e6 <lz4_flex::block::compress::compress_internal::<lz4_flex::block::hashtable::HashTable4K, false, lz4_flex::sink::SliceSink>+0x46>
  a37e7d:	48 8d 0d 74 3f 0e 00 	lea    0xe3f74(%rip),%rcx        # b1bdf8 <__frame_dummy_init_array_entry+0x1640>
  a37e84:	48 89 c7             	mov    %rax,%rdi
  a37e87:	48 89 f2             	mov    %rsi,%rdx
  a37e8a:	4c 89 ce             	mov    %r9,%rsi
  a37e8d:	e8 4e 62 ff ff       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a37e92:	48 8d 0d 2f 3f 0e 00 	lea    0xe3f2f(%rip),%rcx        # b1bdc8 <__frame_dummy_init_array_entry+0x1610>
  a37e99:	4c 89 d7             	mov    %r10,%rdi
  a37e9c:	48 89 f2             	mov    %rsi,%rdx
  a37e9f:	4c 89 fe             	mov    %r15,%rsi
  a37ea2:	e8 39 62 ff ff       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a37ea7:	48 8d 0d c2 3f 0e 00 	lea    0xe3fc2(%rip),%rcx        # b1be70 <__frame_dummy_init_array_entry+0x16b8>
  a37eae:	48 89 ef             	mov    %rbp,%rdi
  a37eb1:	48 89 de             	mov    %rbx,%rsi
  a37eb4:	4c 89 ea             	mov    %r13,%rdx
  a37eb7:	e8 24 62 ff ff       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a37ebc:	48 8d 0d ad 3f 0e 00 	lea    0xe3fad(%rip),%rcx        # b1be70 <__frame_dummy_init_array_entry+0x16b8>
  a37ec3:	48 89 df             	mov    %rbx,%rdi
  a37ec6:	4c 89 c6             	mov    %r8,%rsi
  a37ec9:	4c 89 ea             	mov    %r13,%rdx
  a37ecc:	e8 0f 62 ff ff       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a37ed1:	48 8d 0d 68 3f 0e 00 	lea    0xe3f68(%rip),%rcx        # b1be40 <__frame_dummy_init_array_entry+0x1688>
  a37ed8:	48 89 c7             	mov    %rax,%rdi
  a37edb:	48 89 f2             	mov    %rsi,%rdx
  a37ede:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  a37ee3:	e8 f8 61 ff ff       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a37ee8:	48 8d 0d 39 3f 0e 00 	lea    0xe3f39(%rip),%rcx        # b1be28 <__frame_dummy_init_array_entry+0x1670>
  a37eef:	48 89 c7             	mov    %rax,%rdi
  a37ef2:	48 89 f2             	mov    %rsi,%rdx
  a37ef5:	e8 e6 61 ff ff       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a37efa:	48 8d 15 87 3f 0e 00 	lea    0xe3f87(%rip),%rdx        # b1be88 <__frame_dummy_init_array_entry+0x16d0>
  a37f01:	4c 89 c7             	mov    %r8,%rdi
  a37f04:	4c 89 ee             	mov    %r13,%rsi
  a37f07:	e8 b5 62 ff ff       	call   a2e1c1 <core::panicking::panic_bounds_check>
  a37f0c:	48 8d 15 fd 3e 0e 00 	lea    0xe3efd(%rip),%rdx        # b1be10 <__frame_dummy_init_array_entry+0x1658>
  a37f13:	4c 89 ff             	mov    %r15,%rdi
  a37f16:	e8 a6 62 ff ff       	call   a2e1c1 <core::panicking::panic_bounds_check>
  a37f1b:	48 8d 15 66 3f 0e 00 	lea    0xe3f66(%rip),%rdx        # b1be88 <__frame_dummy_init_array_entry+0x16d0>
  a37f22:	4c 89 ef             	mov    %r13,%rdi
  a37f25:	4c 89 ee             	mov    %r13,%rsi
  a37f28:	e8 94 62 ff ff       	call   a2e1c1 <core::panicking::panic_bounds_check>
  a37f2d:	48 8d 15 54 3f 0e 00 	lea    0xe3f54(%rip),%rdx        # b1be88 <__frame_dummy_init_array_entry+0x16d0>
  a37f34:	48 89 ef             	mov    %rbp,%rdi
  a37f37:	4c 89 ee             	mov    %r13,%rsi
  a37f3a:	e8 82 62 ff ff       	call   a2e1c1 <core::panicking::panic_bounds_check>
  a37f3f:	cc                   	int3   

0000000000a37f40 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>>:
  a37f40:	41 57                	push   %r15
  a37f42:	41 56                	push   %r14
  a37f44:	53                   	push   %rbx
  a37f45:	4c 8b 4f 08          	mov    0x8(%rdi),%r9
  a37f49:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  a37f4d:	4c 39 cb             	cmp    %r9,%rbx
  a37f50:	0f 83 fd 01 00 00    	jae    a38153 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x213>
  a37f56:	49 89 d2             	mov    %rdx,%r10
  a37f59:	49 29 ca             	sub    %rcx,%r10
  a37f5c:	44 89 d0             	mov    %r10d,%eax
  a37f5f:	c0 e0 04             	shl    $0x4,%al
  a37f62:	49 83 fa 0f          	cmp    $0xf,%r10
  a37f66:	0f b6 c0             	movzbl %al,%eax
  a37f69:	41 bb f0 00 00 00    	mov    $0xf0,%r11d
  a37f6f:	44 0f 42 d8          	cmovb  %eax,%r11d
  a37f73:	4c 8b 07             	mov    (%rdi),%r8
  a37f76:	45 88 1c 18          	mov    %r11b,(%r8,%rbx,1)
  a37f7a:	4c 8d 5b 01          	lea    0x1(%rbx),%r11
  a37f7e:	4c 89 5f 10          	mov    %r11,0x10(%rdi)
  a37f82:	49 83 fa 0e          	cmp    $0xe,%r10
  a37f86:	0f 86 cd 00 00 00    	jbe    a38059 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x119>
  a37f8c:	4d 8d 72 f1          	lea    -0xf(%r10),%r14
  a37f90:	49 81 fe ff 00 00 00 	cmp    $0xff,%r14
  a37f97:	0f 82 a8 00 00 00    	jb     a38045 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x105>
  a37f9d:	49 89 d7             	mov    %rdx,%r15
  a37fa0:	49 8d 82 f2 fe ff ff 	lea    -0x10e(%r10),%rax
  a37fa7:	48 ba 81 80 80 80 80 	movabs $0x8080808080808081,%rdx
  a37fae:	80 80 80 
  a37fb1:	48 f7 e2             	mul    %rdx
  a37fb4:	48 c1 ea 07          	shr    $0x7,%rdx
  a37fb8:	48 f7 d3             	not    %rbx
  a37fbb:	4c 01 cb             	add    %r9,%rbx
  a37fbe:	48 39 da             	cmp    %rbx,%rdx
  a37fc1:	48 0f 42 da          	cmovb  %rdx,%rbx
  a37fc5:	48 83 fb 04          	cmp    $0x4,%rbx
  a37fc9:	72 4e                	jb     a38019 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0xd9>
  a37fcb:	48 ff c3             	inc    %rbx
  a37fce:	89 d8                	mov    %ebx,%eax
  a37fd0:	83 e0 03             	and    $0x3,%eax
  a37fd3:	ba 04 00 00 00       	mov    $0x4,%edx
  a37fd8:	48 0f 45 d0          	cmovne %rax,%rdx
  a37fdc:	48 29 d3             	sub    %rdx,%rbx
  a37fdf:	48 89 d8             	mov    %rbx,%rax
  a37fe2:	48 c1 e0 08          	shl    $0x8,%rax
  a37fe6:	48 89 da             	mov    %rbx,%rdx
  a37fe9:	48 29 c2             	sub    %rax,%rdx
  a37fec:	49 01 d6             	add    %rdx,%r14
  a37fef:	49 8d 04 1b          	lea    (%r11,%rbx,1),%rax
  a37ff3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
  a37ffa:	84 00 00 00 00 00 
  a38000:	43 c7 04 18 ff ff ff 	movl   $0xffffffff,(%r8,%r11,1)
  a38007:	ff 
  a38008:	49 83 c3 04          	add    $0x4,%r11
  a3800c:	48 83 c3 fc          	add    $0xfffffffffffffffc,%rbx
  a38010:	75 ee                	jne    a38000 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0xc0>
  a38012:	4c 89 5f 10          	mov    %r11,0x10(%rdi)
  a38016:	49 89 c3             	mov    %rax,%r11
  a38019:	4c 89 fa             	mov    %r15,%rdx
  a3801c:	0f 1f 40 00          	nopl   0x0(%rax)
  a38020:	4d 39 d9             	cmp    %r11,%r9
  a38023:	0f 84 18 01 00 00    	je     a38141 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x201>
  a38029:	49 81 c6 01 ff ff ff 	add    $0xffffffffffffff01,%r14
  a38030:	43 c6 04 18 ff       	movb   $0xff,(%r8,%r11,1)
  a38035:	49 ff c3             	inc    %r11
  a38038:	4c 89 5f 10          	mov    %r11,0x10(%rdi)
  a3803c:	49 81 fe fe 00 00 00 	cmp    $0xfe,%r14
  a38043:	77 db                	ja     a38020 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0xe0>
  a38045:	4d 39 cb             	cmp    %r9,%r11
  a38048:	0f 83 17 01 00 00    	jae    a38165 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x225>
  a3804e:	47 88 34 18          	mov    %r14b,(%r8,%r11,1)
  a38052:	49 ff c3             	inc    %r11
  a38055:	4c 89 5f 10          	mov    %r11,0x10(%rdi)
  a38059:	48 39 ca             	cmp    %rcx,%rdx
  a3805c:	0f 82 ca 00 00 00    	jb     a3812c <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x1ec>
  a38062:	4c 89 db             	mov    %r11,%rbx
  a38065:	4c 01 d3             	add    %r10,%rbx
  a38068:	0f 82 a9 00 00 00    	jb     a38117 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x1d7>
  a3806e:	4c 39 cb             	cmp    %r9,%rbx
  a38071:	0f 87 a0 00 00 00    	ja     a38117 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x1d7>
  a38077:	48 39 ca             	cmp    %rcx,%rdx
  a3807a:	75 0a                	jne    a38086 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x146>
  a3807c:	48 89 5f 10          	mov    %rbx,0x10(%rdi)
  a38080:	5b                   	pop    %rbx
  a38081:	41 5e                	pop    %r14
  a38083:	41 5f                	pop    %r15
  a38085:	c3                   	ret    
  a38086:	48 01 ce             	add    %rcx,%rsi
  a38089:	4d 01 d8             	add    %r11,%r8
  a3808c:	49 83 fa 04          	cmp    $0x4,%r10
  a38090:	73 21                	jae    a380b3 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x173>
  a38092:	0f b6 06             	movzbl (%rsi),%eax
  a38095:	41 88 00             	mov    %al,(%r8)
  a38098:	49 83 fa 01          	cmp    $0x1,%r10
  a3809c:	74 de                	je     a3807c <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x13c>
  a3809e:	0f b7 06             	movzwl (%rsi),%eax
  a380a1:	66 41 89 00          	mov    %ax,(%r8)
  a380a5:	42 0f b7 44 16 fe    	movzwl -0x2(%rsi,%r10,1),%eax
  a380ab:	66 43 89 44 10 fe    	mov    %ax,-0x2(%r8,%r10,1)
  a380b1:	eb c9                	jmp    a3807c <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x13c>
  a380b3:	49 83 fa 08          	cmp    $0x8,%r10
  a380b7:	73 11                	jae    a380ca <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x18a>
  a380b9:	8b 06                	mov    (%rsi),%eax
  a380bb:	41 89 00             	mov    %eax,(%r8)
  a380be:	42 8b 44 16 fc       	mov    -0x4(%rsi,%r10,1),%eax
  a380c3:	43 89 44 10 fc       	mov    %eax,-0x4(%r8,%r10,1)
  a380c8:	eb b2                	jmp    a3807c <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x13c>
  a380ca:	49 83 fa 11          	cmp    $0x11,%r10
  a380ce:	73 12                	jae    a380e2 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x1a2>
  a380d0:	48 8b 06             	mov    (%rsi),%rax
  a380d3:	49 89 00             	mov    %rax,(%r8)
  a380d6:	4a 8b 44 16 f8       	mov    -0x8(%rsi,%r10,1),%rax
  a380db:	4b 89 44 10 f8       	mov    %rax,-0x8(%r8,%r10,1)
  a380e0:	eb 9a                	jmp    a3807c <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x13c>
  a380e2:	49 83 fa 21          	cmp    $0x21,%r10
  a380e6:	73 18                	jae    a38100 <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x1c0>
  a380e8:	0f 10 06             	movups (%rsi),%xmm0
  a380eb:	41 0f 11 00          	movups %xmm0,(%r8)
  a380ef:	42 0f 10 44 16 f0    	movups -0x10(%rsi,%r10,1),%xmm0
  a380f5:	43 0f 11 44 10 f0    	movups %xmm0,-0x10(%r8,%r10,1)
  a380fb:	e9 7c ff ff ff       	jmp    a3807c <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x13c>
  a38100:	49 89 fe             	mov    %rdi,%r14
  a38103:	4c 89 c7             	mov    %r8,%rdi
  a38106:	4c 89 d2             	mov    %r10,%rdx
  a38109:	ff 15 c1 a9 0e 00    	call   *0xea9c1(%rip)        # b22ad0 <memcpy@GLIBC_2.14>
  a3810f:	4c 89 f7             	mov    %r14,%rdi
  a38112:	e9 65 ff ff ff       	jmp    a3807c <lz4_flex::block::compress::handle_last_literals::<lz4_flex::sink::SliceSink>+0x13c>
  a38117:	48 8d 0d 52 3d 0e 00 	lea    0xe3d52(%rip),%rcx        # b1be70 <__frame_dummy_init_array_entry+0x16b8>
  a3811e:	4c 89 df             	mov    %r11,%rdi
  a38121:	48 89 de             	mov    %rbx,%rsi
  a38124:	4c 89 ca             	mov    %r9,%rdx
  a38127:	e8 b4 5f ff ff       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a3812c:	48 8d 05 ad 3c 0e 00 	lea    0xe3cad(%rip),%rax        # b1bde0 <__frame_dummy_init_array_entry+0x1628>
  a38133:	48 89 cf             	mov    %rcx,%rdi
  a38136:	48 89 d6             	mov    %rdx,%rsi
  a38139:	48 89 c1             	mov    %rax,%rcx
  a3813c:	e8 9f 5f ff ff       	call   a2e0e0 <core::slice::index::slice_index_fail>
  a38141:	48 8d 15 40 3d 0e 00 	lea    0xe3d40(%rip),%rdx        # b1be88 <__frame_dummy_init_array_entry+0x16d0>
  a38148:	4c 89 cf             	mov    %r9,%rdi
  a3814b:	4c 89 ce             	mov    %r9,%rsi
  a3814e:	e8 6e 60 ff ff       	call   a2e1c1 <core::panicking::panic_bounds_check>
  a38153:	48 8d 15 2e 3d 0e 00 	lea    0xe3d2e(%rip),%rdx        # b1be88 <__frame_dummy_init_array_entry+0x16d0>
  a3815a:	48 89 df             	mov    %rbx,%rdi
  a3815d:	4c 89 ce             	mov    %r9,%rsi
  a38160:	e8 5c 60 ff ff       	call   a2e1c1 <core::panicking::panic_bounds_check>
  a38165:	48 8d 15 1c 3d 0e 00 	lea    0xe3d1c(%rip),%rdx        # b1be88 <__frame_dummy_init_array_entry+0x16d0>
  a3816c:	4c 89 df             	mov    %r11,%rdi
  a3816f:	4c 89 ce             	mov    %r9,%rsi
  a38172:	e8 4a 60 ff ff       	call   a2e1c1 <core::panicking::panic_bounds_check>
  a38177:	cc                   	int3   
  a38178:	cc                   	int3   
  a38179:	cc                   	int3   
  a3817a:	cc                   	int3   
  a3817b:	cc                   	int3   
  a3817c:	cc                   	int3   
  a3817d:	cc                   	int3   
  a3817e:	cc                   	int3   
  a3817f:	cc                   	int3   
