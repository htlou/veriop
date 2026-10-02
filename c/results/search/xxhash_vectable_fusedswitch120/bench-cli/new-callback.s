
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vectable_fusedswitch120/bench-cli/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000003130 <localXXH3_64b>:
    3130:	48 83 fe 10          	cmp    $0x10,%rsi
    3134:	77 49                	ja     317f <localXXH3_64b+0x4f>
    3136:	48 83 fe 09          	cmp    $0x9,%rsi
    313a:	0f 82 00 02 00 00    	jb     3340 <localXXH3_64b+0x210>
    3140:	48 b8 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rax
    3147:	73 82 67 
    314a:	48 33 07             	xor    (%rdi),%rax
    314d:	48 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rdx
    3154:	bc 56 af 
    3157:	48 33 54 37 f8       	xor    -0x8(%rdi,%rsi,1),%rdx
    315c:	c4 e2 f3 f6 f8       	mulx   %rax,%rcx,%rdi
    3161:	48 01 d6             	add    %rdx,%rsi
    3164:	48 0f c8             	bswap  %rax
    3167:	48 01 c6             	add    %rax,%rsi
    316a:	48 31 cf             	xor    %rcx,%rdi
    316d:	48 01 f7             	add    %rsi,%rdi
    3170:	48 89 f8             	mov    %rdi,%rax
    3173:	48 c1 e8 25          	shr    $0x25,%rax
    3177:	48 31 f8             	xor    %rdi,%rax
    317a:	e9 81 01 00 00       	jmp    3300 <localXXH3_64b+0x1d0>
    317f:	48 81 fe 80 00 00 00 	cmp    $0x80,%rsi
    3186:	0f 87 8d 01 00 00    	ja     3319 <localXXH3_64b+0x1e9>
    318c:	48 b9 87 ca eb 85 b1 	movabs $0x9e3779b185ebca87,%rcx
    3193:	79 37 9e 
    3196:	48 0f af ce          	imul   %rsi,%rcx
    319a:	48 83 fe 21          	cmp    $0x21,%rsi
    319e:	0f 82 00 01 00 00    	jb     32a4 <localXXH3_64b+0x174>
    31a4:	48 83 fe 41          	cmp    $0x41,%rsi
    31a8:	0f 82 a6 00 00 00    	jb     3254 <localXXH3_64b+0x124>
    31ae:	48 83 fe 61          	cmp    $0x61,%rsi
    31b2:	72 50                	jb     3204 <localXXH3_64b+0xd4>
    31b4:	48 b8 a8 fa 76 3f e3 	movabs $0x3f349ce33f76faa8,%rax
    31bb:	9c 34 3f 
    31be:	48 33 47 30          	xor    0x30(%rdi),%rax
    31c2:	48 ba f9 dc bb c7 c7 	movabs $0x1d4f0bc7c7bbdcf9,%rdx
    31c9:	0b 4f 1d 
    31cc:	48 33 57 38          	xor    0x38(%rdi),%rdx
    31d0:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    31d5:	49 b9 8a 51 e0 4b cd 	movabs $0x3159b4cd4be0518a,%r9
    31dc:	b4 59 31 
    31df:	4c 33 4c 37 c0       	xor    -0x40(%rdi,%rsi,1),%r9
    31e4:	48 ba c8 9f 7e c9 d9 	movabs $0x647378d9c97e9fc8,%rdx
    31eb:	78 73 64 
    31ee:	48 33 54 37 c8       	xor    -0x38(%rdi,%rsi,1),%rdx
    31f3:	c4 c2 b3 f6 d1       	mulx   %r9,%r9,%rdx
    31f8:	49 31 c0             	xor    %rax,%r8
    31fb:	4c 01 c1             	add    %r8,%rcx
    31fe:	4c 31 ca             	xor    %r9,%rdx
    3201:	48 01 d1             	add    %rdx,%rcx
    3204:	48 b8 3c 28 52 bb 91 	movabs $0xcb00c391bb52283c,%rax
    320b:	c3 00 cb 
    320e:	48 33 47 20          	xor    0x20(%rdi),%rax
    3212:	48 ba 88 d0 65 8b 1b 	movabs $0xa32e531b8b65d088,%rdx
    3219:	53 2e a3 
    321c:	48 33 57 28          	xor    0x28(%rdi),%rdx
    3220:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3225:	49 b9 71 64 48 97 a2 	movabs $0x4ef90da297486471,%r9
    322c:	0d f9 4e 
    322f:	4c 33 4c 37 d0       	xor    -0x30(%rdi,%rsi,1),%r9
    3234:	49 31 c0             	xor    %rax,%r8
    3237:	48 ba 38 19 ef 46 a9 	movabs $0xd8acdea946ef1938,%rdx
    323e:	de ac d8 
    3241:	48 33 54 37 d8       	xor    -0x28(%rdi,%rsi,1),%rdx
    3246:	49 01 c8             	add    %rcx,%r8
    3249:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    324e:	48 31 c1             	xor    %rax,%rcx
    3251:	4c 01 c1             	add    %r8,%rcx
    3254:	48 b8 cb 79 e6 4e cc 	movabs $0x78e5c0cc4ee679cb,%rax
    325b:	c0 e5 78 
    325e:	48 33 47 10          	xor    0x10(%rdi),%rax
    3262:	48 ba 82 5a d0 7d cc 	movabs $0x2172ffcc7dd05a82,%rdx
    3269:	ff 72 21 
    326c:	48 33 57 18          	xor    0x18(%rdi),%rdx
    3270:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3275:	49 b9 b8 08 46 74 f7 	movabs $0x8e2443f7744608b8,%r9
    327c:	43 24 8e 
    327f:	4c 33 4c 37 e0       	xor    -0x20(%rdi,%rsi,1),%r9
    3284:	49 31 c0             	xor    %rax,%r8
    3287:	48 ba e0 35 90 e6 81 	movabs $0x4c263a81e69035e0,%rdx
    328e:	3a 26 4c 
    3291:	48 33 54 37 e8       	xor    -0x18(%rdi,%rsi,1),%rdx
    3296:	49 01 c8             	add    %rcx,%r8
    3299:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    329e:	48 31 c1             	xor    %rax,%rcx
    32a1:	4c 01 c1             	add    %r8,%rcx
    32a4:	49 b8 b8 fe 6c 39 23 	movabs $0xbe4ba423396cfeb8,%r8
    32ab:	a4 4b be 
    32ae:	4c 33 07             	xor    (%rdi),%r8
    32b1:	49 b9 de d4 6d e9 83 	movabs $0xdb979083e96dd4de,%r9
    32b8:	90 97 db 
    32bb:	4c 33 4c 37 f0       	xor    -0x10(%rdi,%rsi,1),%r9
    32c0:	48 b8 72 40 a4 a4 b7 	movabs $0x1f67b3b7a4a44072,%rax
    32c7:	b3 67 1f 
    32ca:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
    32cf:	48 ba 7c 01 81 2c f7 	movabs $0x1cad21f72c81017c,%rdx
    32d6:	21 ad 1c 
    32d9:	48 33 57 08          	xor    0x8(%rdi),%rdx
    32dd:	c4 c2 eb f6 f0       	mulx   %r8,%rdx,%rsi
    32e2:	48 31 d6             	xor    %rdx,%rsi
    32e5:	48 01 ce             	add    %rcx,%rsi
    32e8:	48 89 c2             	mov    %rax,%rdx
    32eb:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    32f0:	48 31 c1             	xor    %rax,%rcx
    32f3:	48 01 f1             	add    %rsi,%rcx
    32f6:	48 89 c8             	mov    %rcx,%rax
    32f9:	48 c1 e8 25          	shr    $0x25,%rax
    32fd:	48 31 c8             	xor    %rcx,%rax
    3300:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    3307:	67 56 16 
    330a:	48 0f af c8          	imul   %rax,%rcx
    330e:	48 89 c8             	mov    %rcx,%rax
    3311:	48 c1 e8 20          	shr    $0x20,%rax
    3315:	48 31 c8             	xor    %rcx,%rax
    3318:	c3                   	ret    
    3319:	50                   	push   %rax
    331a:	48 81 fe f0 00 00 00 	cmp    $0xf0,%rsi
    3321:	77 13                	ja     3336 <localXXH3_64b+0x206>
    3323:	48 8d 15 d6 85 01 00 	lea    0x185d6(%rip),%rdx        # 1b900 <XXH3_kSecret>
    332a:	31 c9                	xor    %ecx,%ecx
    332c:	e8 3f 4d 00 00       	call   8070 <XXH3_len_129to240_64b>
    3331:	48 83 c4 08          	add    $0x8,%rsp
    3335:	c3                   	ret    
    3336:	e8 95 5a 00 00       	call   8dd0 <XXH3_hashLong_64b_default>
    333b:	48 83 c4 08          	add    $0x8,%rsp
    333f:	c3                   	ret    
    3340:	48 83 fe 04          	cmp    $0x4,%rsi
    3344:	72 56                	jb     339c <localXXH3_64b+0x26c>
    3346:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    334a:	8b 0f                	mov    (%rdi),%ecx
    334c:	48 c1 e1 20          	shl    $0x20,%rcx
    3350:	48 09 c1             	or     %rax,%rcx
    3353:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    335a:	b1 3a c7 
    335d:	48 31 c8             	xor    %rcx,%rax
    3360:	c4 e3 fb f0 c8 0f    	rorx   $0xf,%rax,%rcx
    3366:	c4 e3 fb f0 d0 28    	rorx   $0x28,%rax,%rdx
    336c:	48 31 ca             	xor    %rcx,%rdx
    336f:	48 31 c2             	xor    %rax,%rdx
    3372:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    3379:	1c b2 9f 
    337c:	48 0f af d0          	imul   %rax,%rdx
    3380:	48 89 d1             	mov    %rdx,%rcx
    3383:	48 c1 e9 23          	shr    $0x23,%rcx
    3387:	48 01 f1             	add    %rsi,%rcx
    338a:	48 31 d1             	xor    %rdx,%rcx
    338d:	48 0f af c8          	imul   %rax,%rcx
    3391:	48 89 c8             	mov    %rcx,%rax
    3394:	48 c1 e8 1c          	shr    $0x1c,%rax
    3398:	48 31 c8             	xor    %rcx,%rax
    339b:	c3                   	ret    
    339c:	48 85 f6             	test   %rsi,%rsi
    339f:	74 1a                	je     33bb <localXXH3_64b+0x28b>
    33a1:	0f b6 07             	movzbl (%rdi),%eax
    33a4:	48 83 fe 01          	cmp    $0x1,%rsi
    33a8:	75 1c                	jne    33c6 <localXXH3_64b+0x296>
    33aa:	04 80                	add    $0x80,%al
    33ac:	0f b6 c0             	movzbl %al,%eax
    33af:	48 8d 0d 4a 91 01 00 	lea    0x1914a(%rip),%rcx        # 1c500 <XXH3_kSecret.99+0xc0>
    33b6:	48 8b 04 c1          	mov    (%rcx,%rax,8),%rax
    33ba:	c3                   	ret    
    33bb:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    33c2:	80 06 2d 
    33c5:	c3                   	ret    
    33c6:	48 89 f1             	mov    %rsi,%rcx
    33c9:	48 d1 e9             	shr    %rcx
    33cc:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    33d1:	0f b6 c0             	movzbl %al,%eax
    33d4:	c1 e0 10             	shl    $0x10,%eax
    33d7:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    33db:	c1 e1 18             	shl    $0x18,%ecx
    33de:	09 c1                	or     %eax,%ecx
    33e0:	48 09 d1             	or     %rdx,%rcx
    33e3:	48 c1 e6 08          	shl    $0x8,%rsi
    33e7:	48 09 ce             	or     %rcx,%rsi
    33ea:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    33ef:	48 31 f0             	xor    %rsi,%rax
    33f2:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    33f9:	ae b2 c2 
    33fc:	48 0f af c8          	imul   %rax,%rcx
    3400:	48 89 c8             	mov    %rcx,%rax
    3403:	48 c1 e8 1d          	shr    $0x1d,%rax
    3407:	48 31 c8             	xor    %rcx,%rax
    340a:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    3411:	67 56 16 
    3414:	e9 f1 fe ff ff       	jmp    330a <localXXH3_64b+0x1da>

Disassembly of section .fini:
