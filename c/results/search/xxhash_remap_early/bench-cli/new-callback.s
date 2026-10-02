
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_remap_early/bench-cli/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000003130 <localXXH3_64b>:
    3130:	48 83 fe 10          	cmp    $0x10,%rsi
    3134:	77 19                	ja     314f <localXXH3_64b+0x1f>
    3136:	48 83 fe 01          	cmp    $0x1,%rsi
    313a:	0f 85 92 01 00 00    	jne    32d2 <localXXH3_64b+0x1a2>
    3140:	0f b6 07             	movzbl (%rdi),%eax
    3143:	48 8d 0d b6 93 01 00 	lea    0x193b6(%rip),%rcx        # 1c500 <XXH3_kSecret.99+0xc0>
    314a:	48 8b 04 c1          	mov    (%rcx,%rax,8),%rax
    314e:	c3                   	ret    
    314f:	48 81 fe 80 00 00 00 	cmp    $0x80,%rsi
    3156:	0f 87 cf 01 00 00    	ja     332b <localXXH3_64b+0x1fb>
    315c:	48 b9 87 ca eb 85 b1 	movabs $0x9e3779b185ebca87,%rcx
    3163:	79 37 9e 
    3166:	48 0f af ce          	imul   %rsi,%rcx
    316a:	48 83 fe 21          	cmp    $0x21,%rsi
    316e:	0f 82 00 01 00 00    	jb     3274 <localXXH3_64b+0x144>
    3174:	48 83 fe 41          	cmp    $0x41,%rsi
    3178:	0f 82 a6 00 00 00    	jb     3224 <localXXH3_64b+0xf4>
    317e:	48 83 fe 61          	cmp    $0x61,%rsi
    3182:	72 50                	jb     31d4 <localXXH3_64b+0xa4>
    3184:	48 b8 a8 fa 76 3f e3 	movabs $0x3f349ce33f76faa8,%rax
    318b:	9c 34 3f 
    318e:	48 33 47 30          	xor    0x30(%rdi),%rax
    3192:	48 ba f9 dc bb c7 c7 	movabs $0x1d4f0bc7c7bbdcf9,%rdx
    3199:	0b 4f 1d 
    319c:	48 33 57 38          	xor    0x38(%rdi),%rdx
    31a0:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    31a5:	49 b9 8a 51 e0 4b cd 	movabs $0x3159b4cd4be0518a,%r9
    31ac:	b4 59 31 
    31af:	4c 33 4c 37 c0       	xor    -0x40(%rdi,%rsi,1),%r9
    31b4:	48 ba c8 9f 7e c9 d9 	movabs $0x647378d9c97e9fc8,%rdx
    31bb:	78 73 64 
    31be:	48 33 54 37 c8       	xor    -0x38(%rdi,%rsi,1),%rdx
    31c3:	c4 c2 b3 f6 d1       	mulx   %r9,%r9,%rdx
    31c8:	49 31 c0             	xor    %rax,%r8
    31cb:	4c 01 c1             	add    %r8,%rcx
    31ce:	4c 31 ca             	xor    %r9,%rdx
    31d1:	48 01 d1             	add    %rdx,%rcx
    31d4:	48 b8 3c 28 52 bb 91 	movabs $0xcb00c391bb52283c,%rax
    31db:	c3 00 cb 
    31de:	48 33 47 20          	xor    0x20(%rdi),%rax
    31e2:	48 ba 88 d0 65 8b 1b 	movabs $0xa32e531b8b65d088,%rdx
    31e9:	53 2e a3 
    31ec:	48 33 57 28          	xor    0x28(%rdi),%rdx
    31f0:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    31f5:	49 b9 71 64 48 97 a2 	movabs $0x4ef90da297486471,%r9
    31fc:	0d f9 4e 
    31ff:	4c 33 4c 37 d0       	xor    -0x30(%rdi,%rsi,1),%r9
    3204:	49 31 c0             	xor    %rax,%r8
    3207:	48 ba 38 19 ef 46 a9 	movabs $0xd8acdea946ef1938,%rdx
    320e:	de ac d8 
    3211:	48 33 54 37 d8       	xor    -0x28(%rdi,%rsi,1),%rdx
    3216:	49 01 c8             	add    %rcx,%r8
    3219:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    321e:	48 31 c1             	xor    %rax,%rcx
    3221:	4c 01 c1             	add    %r8,%rcx
    3224:	48 b8 cb 79 e6 4e cc 	movabs $0x78e5c0cc4ee679cb,%rax
    322b:	c0 e5 78 
    322e:	48 33 47 10          	xor    0x10(%rdi),%rax
    3232:	48 ba 82 5a d0 7d cc 	movabs $0x2172ffcc7dd05a82,%rdx
    3239:	ff 72 21 
    323c:	48 33 57 18          	xor    0x18(%rdi),%rdx
    3240:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3245:	49 b9 b8 08 46 74 f7 	movabs $0x8e2443f7744608b8,%r9
    324c:	43 24 8e 
    324f:	4c 33 4c 37 e0       	xor    -0x20(%rdi,%rsi,1),%r9
    3254:	49 31 c0             	xor    %rax,%r8
    3257:	48 ba e0 35 90 e6 81 	movabs $0x4c263a81e69035e0,%rdx
    325e:	3a 26 4c 
    3261:	48 33 54 37 e8       	xor    -0x18(%rdi,%rsi,1),%rdx
    3266:	49 01 c8             	add    %rcx,%r8
    3269:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    326e:	48 31 c1             	xor    %rax,%rcx
    3271:	4c 01 c1             	add    %r8,%rcx
    3274:	49 b8 b8 fe 6c 39 23 	movabs $0xbe4ba423396cfeb8,%r8
    327b:	a4 4b be 
    327e:	4c 33 07             	xor    (%rdi),%r8
    3281:	49 b9 de d4 6d e9 83 	movabs $0xdb979083e96dd4de,%r9
    3288:	90 97 db 
    328b:	4c 33 4c 37 f0       	xor    -0x10(%rdi,%rsi,1),%r9
    3290:	48 b8 72 40 a4 a4 b7 	movabs $0x1f67b3b7a4a44072,%rax
    3297:	b3 67 1f 
    329a:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
    329f:	48 ba 7c 01 81 2c f7 	movabs $0x1cad21f72c81017c,%rdx
    32a6:	21 ad 1c 
    32a9:	48 33 57 08          	xor    0x8(%rdi),%rdx
    32ad:	c4 c2 eb f6 f0       	mulx   %r8,%rdx,%rsi
    32b2:	48 31 d6             	xor    %rdx,%rsi
    32b5:	48 01 ce             	add    %rcx,%rsi
    32b8:	48 89 c2             	mov    %rax,%rdx
    32bb:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    32c0:	48 31 c1             	xor    %rax,%rcx
    32c3:	48 01 f1             	add    %rsi,%rcx
    32c6:	48 89 c8             	mov    %rcx,%rax
    32c9:	48 c1 e8 25          	shr    $0x25,%rax
    32cd:	48 31 c8             	xor    %rcx,%rax
    32d0:	eb 40                	jmp    3312 <localXXH3_64b+0x1e2>
    32d2:	48 83 fe 09          	cmp    $0x9,%rsi
    32d6:	72 7a                	jb     3352 <localXXH3_64b+0x222>
    32d8:	48 b8 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rax
    32df:	73 82 67 
    32e2:	48 33 07             	xor    (%rdi),%rax
    32e5:	48 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rdx
    32ec:	bc 56 af 
    32ef:	48 33 54 37 f8       	xor    -0x8(%rdi,%rsi,1),%rdx
    32f4:	c4 e2 f3 f6 f8       	mulx   %rax,%rcx,%rdi
    32f9:	48 01 d6             	add    %rdx,%rsi
    32fc:	48 0f c8             	bswap  %rax
    32ff:	48 01 c6             	add    %rax,%rsi
    3302:	48 31 cf             	xor    %rcx,%rdi
    3305:	48 01 f7             	add    %rsi,%rdi
    3308:	48 89 f8             	mov    %rdi,%rax
    330b:	48 c1 e8 25          	shr    $0x25,%rax
    330f:	48 31 f8             	xor    %rdi,%rax
    3312:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    3319:	67 56 16 
    331c:	48 0f af c8          	imul   %rax,%rcx
    3320:	48 89 c8             	mov    %rcx,%rax
    3323:	48 c1 e8 20          	shr    $0x20,%rax
    3327:	48 31 c8             	xor    %rcx,%rax
    332a:	c3                   	ret    
    332b:	50                   	push   %rax
    332c:	48 81 fe f0 00 00 00 	cmp    $0xf0,%rsi
    3333:	77 13                	ja     3348 <localXXH3_64b+0x218>
    3335:	48 8d 15 c4 85 01 00 	lea    0x185c4(%rip),%rdx        # 1b900 <XXH3_kSecret>
    333c:	31 c9                	xor    %ecx,%ecx
    333e:	e8 2d 4d 00 00       	call   8070 <XXH3_len_129to240_64b>
    3343:	48 83 c4 08          	add    $0x8,%rsp
    3347:	c3                   	ret    
    3348:	e8 83 5a 00 00       	call   8dd0 <XXH3_hashLong_64b_default>
    334d:	48 83 c4 08          	add    $0x8,%rsp
    3351:	c3                   	ret    
    3352:	48 83 fe 04          	cmp    $0x4,%rsi
    3356:	72 56                	jb     33ae <localXXH3_64b+0x27e>
    3358:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    335c:	8b 0f                	mov    (%rdi),%ecx
    335e:	48 c1 e1 20          	shl    $0x20,%rcx
    3362:	48 09 c1             	or     %rax,%rcx
    3365:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    336c:	b1 3a c7 
    336f:	48 31 c8             	xor    %rcx,%rax
    3372:	c4 e3 fb f0 c8 0f    	rorx   $0xf,%rax,%rcx
    3378:	c4 e3 fb f0 d0 28    	rorx   $0x28,%rax,%rdx
    337e:	48 31 ca             	xor    %rcx,%rdx
    3381:	48 31 c2             	xor    %rax,%rdx
    3384:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    338b:	1c b2 9f 
    338e:	48 0f af d0          	imul   %rax,%rdx
    3392:	48 89 d1             	mov    %rdx,%rcx
    3395:	48 c1 e9 23          	shr    $0x23,%rcx
    3399:	48 01 f1             	add    %rsi,%rcx
    339c:	48 31 d1             	xor    %rdx,%rcx
    339f:	48 0f af c8          	imul   %rax,%rcx
    33a3:	48 89 c8             	mov    %rcx,%rax
    33a6:	48 c1 e8 1c          	shr    $0x1c,%rax
    33aa:	48 31 c8             	xor    %rcx,%rax
    33ad:	c3                   	ret    
    33ae:	48 85 f6             	test   %rsi,%rsi
    33b1:	74 44                	je     33f7 <localXXH3_64b+0x2c7>
    33b3:	0f b7 07             	movzwl (%rdi),%eax
    33b6:	c1 e0 10             	shl    $0x10,%eax
    33b9:	0f b6 4c 37 ff       	movzbl -0x1(%rdi,%rsi,1),%ecx
    33be:	48 09 c1             	or     %rax,%rcx
    33c1:	48 c1 e6 08          	shl    $0x8,%rsi
    33c5:	48 09 ce             	or     %rcx,%rsi
    33c8:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    33cd:	48 31 f0             	xor    %rsi,%rax
    33d0:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    33d7:	ae b2 c2 
    33da:	48 0f af c8          	imul   %rax,%rcx
    33de:	48 89 c8             	mov    %rcx,%rax
    33e1:	48 c1 e8 1d          	shr    $0x1d,%rax
    33e5:	48 31 c8             	xor    %rcx,%rax
    33e8:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    33ef:	67 56 16 
    33f2:	e9 25 ff ff ff       	jmp    331c <localXXH3_64b+0x1ec>
    33f7:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    33fe:	80 06 2d 
    3401:	c3                   	ret    

Disassembly of section .fini:
