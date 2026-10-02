
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_sharedmix_seed/bench-cli/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000003130 <localXXH3_64b>:
    3130:	48 83 fe 10          	cmp    $0x10,%rsi
    3134:	77 66                	ja     319c <localXXH3_64b+0x6c>
    3136:	48 83 fe 03          	cmp    $0x3,%rsi
    313a:	0f 87 f6 01 00 00    	ja     3336 <localXXH3_64b+0x206>
    3140:	48 85 f6             	test   %rsi,%rsi
    3143:	0f 84 f8 02 00 00    	je     3441 <localXXH3_64b+0x311>
    3149:	0f b6 07             	movzbl (%rdi),%eax
    314c:	48 89 f1             	mov    %rsi,%rcx
    314f:	48 d1 e9             	shr    %rcx
    3152:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    3157:	c1 e0 10             	shl    $0x10,%eax
    315a:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    315e:	c1 e1 18             	shl    $0x18,%ecx
    3161:	09 c1                	or     %eax,%ecx
    3163:	48 09 d1             	or     %rdx,%rcx
    3166:	48 c1 e6 08          	shl    $0x8,%rsi
    316a:	48 09 ce             	or     %rcx,%rsi
    316d:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    3172:	48 31 f0             	xor    %rsi,%rax
    3175:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    317c:	ae b2 c2 
    317f:	48 0f af c8          	imul   %rax,%rcx
    3183:	48 89 c8             	mov    %rcx,%rax
    3186:	48 c1 e8 1d          	shr    $0x1d,%rax
    318a:	48 31 c8             	xor    %rcx,%rax
    318d:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    3194:	67 56 16 
    3197:	e9 8b 01 00 00       	jmp    3327 <localXXH3_64b+0x1f7>
    319c:	48 81 fe 80 00 00 00 	cmp    $0x80,%rsi
    31a3:	0f 87 71 02 00 00    	ja     341a <localXXH3_64b+0x2ea>
    31a9:	48 b9 87 ca eb 85 b1 	movabs $0x9e3779b185ebca87,%rcx
    31b0:	79 37 9e 
    31b3:	48 0f af ce          	imul   %rsi,%rcx
    31b7:	48 83 fe 21          	cmp    $0x21,%rsi
    31bb:	0f 82 00 01 00 00    	jb     32c1 <localXXH3_64b+0x191>
    31c1:	48 83 fe 41          	cmp    $0x41,%rsi
    31c5:	0f 82 a6 00 00 00    	jb     3271 <localXXH3_64b+0x141>
    31cb:	48 83 fe 61          	cmp    $0x61,%rsi
    31cf:	72 50                	jb     3221 <localXXH3_64b+0xf1>
    31d1:	48 b8 a8 fa 76 3f e3 	movabs $0x3f349ce33f76faa8,%rax
    31d8:	9c 34 3f 
    31db:	48 33 47 30          	xor    0x30(%rdi),%rax
    31df:	48 ba f9 dc bb c7 c7 	movabs $0x1d4f0bc7c7bbdcf9,%rdx
    31e6:	0b 4f 1d 
    31e9:	48 33 57 38          	xor    0x38(%rdi),%rdx
    31ed:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    31f2:	49 b9 8a 51 e0 4b cd 	movabs $0x3159b4cd4be0518a,%r9
    31f9:	b4 59 31 
    31fc:	4c 33 4c 37 c0       	xor    -0x40(%rdi,%rsi,1),%r9
    3201:	48 ba c8 9f 7e c9 d9 	movabs $0x647378d9c97e9fc8,%rdx
    3208:	78 73 64 
    320b:	48 33 54 37 c8       	xor    -0x38(%rdi,%rsi,1),%rdx
    3210:	c4 c2 b3 f6 d1       	mulx   %r9,%r9,%rdx
    3215:	49 31 c0             	xor    %rax,%r8
    3218:	4c 01 c1             	add    %r8,%rcx
    321b:	4c 31 ca             	xor    %r9,%rdx
    321e:	48 01 d1             	add    %rdx,%rcx
    3221:	48 b8 3c 28 52 bb 91 	movabs $0xcb00c391bb52283c,%rax
    3228:	c3 00 cb 
    322b:	48 33 47 20          	xor    0x20(%rdi),%rax
    322f:	48 ba 88 d0 65 8b 1b 	movabs $0xa32e531b8b65d088,%rdx
    3236:	53 2e a3 
    3239:	48 33 57 28          	xor    0x28(%rdi),%rdx
    323d:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3242:	49 b9 71 64 48 97 a2 	movabs $0x4ef90da297486471,%r9
    3249:	0d f9 4e 
    324c:	4c 33 4c 37 d0       	xor    -0x30(%rdi,%rsi,1),%r9
    3251:	49 31 c0             	xor    %rax,%r8
    3254:	48 ba 38 19 ef 46 a9 	movabs $0xd8acdea946ef1938,%rdx
    325b:	de ac d8 
    325e:	48 33 54 37 d8       	xor    -0x28(%rdi,%rsi,1),%rdx
    3263:	49 01 c8             	add    %rcx,%r8
    3266:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    326b:	48 31 c1             	xor    %rax,%rcx
    326e:	4c 01 c1             	add    %r8,%rcx
    3271:	48 b8 cb 79 e6 4e cc 	movabs $0x78e5c0cc4ee679cb,%rax
    3278:	c0 e5 78 
    327b:	48 33 47 10          	xor    0x10(%rdi),%rax
    327f:	48 ba 82 5a d0 7d cc 	movabs $0x2172ffcc7dd05a82,%rdx
    3286:	ff 72 21 
    3289:	48 33 57 18          	xor    0x18(%rdi),%rdx
    328d:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3292:	49 b9 b8 08 46 74 f7 	movabs $0x8e2443f7744608b8,%r9
    3299:	43 24 8e 
    329c:	4c 33 4c 37 e0       	xor    -0x20(%rdi,%rsi,1),%r9
    32a1:	49 31 c0             	xor    %rax,%r8
    32a4:	48 ba e0 35 90 e6 81 	movabs $0x4c263a81e69035e0,%rdx
    32ab:	3a 26 4c 
    32ae:	48 33 54 37 e8       	xor    -0x18(%rdi,%rsi,1),%rdx
    32b3:	49 01 c8             	add    %rcx,%r8
    32b6:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    32bb:	48 31 c1             	xor    %rax,%rcx
    32be:	4c 01 c1             	add    %r8,%rcx
    32c1:	49 b8 b8 fe 6c 39 23 	movabs $0xbe4ba423396cfeb8,%r8
    32c8:	a4 4b be 
    32cb:	4c 33 07             	xor    (%rdi),%r8
    32ce:	49 b9 de d4 6d e9 83 	movabs $0xdb979083e96dd4de,%r9
    32d5:	90 97 db 
    32d8:	4c 33 4c 37 f0       	xor    -0x10(%rdi,%rsi,1),%r9
    32dd:	48 b8 72 40 a4 a4 b7 	movabs $0x1f67b3b7a4a44072,%rax
    32e4:	b3 67 1f 
    32e7:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
    32ec:	48 ba 7c 01 81 2c f7 	movabs $0x1cad21f72c81017c,%rdx
    32f3:	21 ad 1c 
    32f6:	48 33 57 08          	xor    0x8(%rdi),%rdx
    32fa:	c4 c2 eb f6 f0       	mulx   %r8,%rdx,%rsi
    32ff:	48 31 d6             	xor    %rdx,%rsi
    3302:	48 01 ce             	add    %rcx,%rsi
    3305:	48 89 c2             	mov    %rax,%rdx
    3308:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    330d:	48 31 c1             	xor    %rax,%rcx
    3310:	48 01 f1             	add    %rsi,%rcx
    3313:	48 89 c8             	mov    %rcx,%rax
    3316:	48 c1 e8 25          	shr    $0x25,%rax
    331a:	48 31 c8             	xor    %rcx,%rax
    331d:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    3324:	67 56 16 
    3327:	48 0f af c8          	imul   %rax,%rcx
    332b:	48 89 c8             	mov    %rcx,%rax
    332e:	48 c1 e8 20          	shr    $0x20,%rax
    3332:	48 31 c8             	xor    %rcx,%rax
    3335:	c3                   	ret    
    3336:	31 c0                	xor    %eax,%eax
    3338:	48 83 fe 09          	cmp    $0x9,%rsi
    333c:	0f 93 c0             	setae  %al
    333f:	48 b9 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rcx
    3346:	73 82 67 
    3349:	49 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%r8
    3350:	b1 3a c7 
    3353:	4c 0f 43 c1          	cmovae %rcx,%r8
    3357:	8b 17                	mov    (%rdi),%edx
    3359:	8b 4c 37 fc          	mov    -0x4(%rdi,%rsi,1),%ecx
    335d:	44 8b 0c 87          	mov    (%rdi,%rax,4),%r9d
    3361:	44 0f 42 ca          	cmovb  %edx,%r9d
    3365:	0f 42 d1             	cmovb  %ecx,%edx
    3368:	49 c1 e1 20          	shl    $0x20,%r9
    336c:	4c 09 ca             	or     %r9,%rdx
    336f:	4c 31 c2             	xor    %r8,%rdx
    3372:	45 31 c9             	xor    %r9d,%r9d
    3375:	48 83 fe 09          	cmp    $0x9,%rsi
    3379:	49 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%r10
    3380:	bc 56 af 
    3383:	4d 0f 42 d1          	cmovb  %r9,%r10
    3387:	49 89 d0             	mov    %rdx,%r8
    338a:	49 0f c8             	bswap  %r8
    338d:	4d 0f 42 c1          	cmovb  %r9,%r8
    3391:	49 89 f3             	mov    %rsi,%r11
    3394:	49 83 eb 08          	sub    $0x8,%r11
    3398:	4d 0f 42 d9          	cmovb  %r9,%r11
    339c:	42 8b 3c 1f          	mov    (%rdi,%r11,1),%edi
    33a0:	c4 63 fb f0 ca 0f    	rorx   $0xf,%rdx,%r9
    33a6:	c4 63 fb f0 da 28    	rorx   $0x28,%rdx,%r11
    33ac:	4d 31 cb             	xor    %r9,%r11
    33af:	48 c1 e1 20          	shl    $0x20,%rcx
    33b3:	48 09 f9             	or     %rdi,%rcx
    33b6:	4c 31 d1             	xor    %r10,%rcx
    33b9:	49 31 d3             	xor    %rdx,%r11
    33bc:	48 bf 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rdi
    33c3:	1c b2 9f 
    33c6:	4c 0f af df          	imul   %rdi,%r11
    33ca:	4d 89 d9             	mov    %r11,%r9
    33cd:	49 c1 e9 23          	shr    $0x23,%r9
    33d1:	c4 62 eb f6 d1       	mulx   %rcx,%rdx,%r10
    33d6:	49 01 f1             	add    %rsi,%r9
    33d9:	4d 31 d9             	xor    %r11,%r9
    33dc:	49 31 d2             	xor    %rdx,%r10
    33df:	48 01 f1             	add    %rsi,%rcx
    33e2:	4c 01 c1             	add    %r8,%rcx
    33e5:	4c 01 d1             	add    %r10,%rcx
    33e8:	48 89 ca             	mov    %rcx,%rdx
    33eb:	48 c1 ea 25          	shr    $0x25,%rdx
    33ef:	48 31 ca             	xor    %rcx,%rdx
    33f2:	48 83 fe 09          	cmp    $0x9,%rsi
    33f6:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    33fd:	67 56 16 
    3400:	48 0f 42 cf          	cmovb  %rdi,%rcx
    3404:	49 0f 42 d1          	cmovb  %r9,%rdx
    3408:	48 0f af d1          	imul   %rcx,%rdx
    340c:	c0 e0 02             	shl    $0x2,%al
    340f:	04 1c                	add    $0x1c,%al
    3411:	c4 e2 fb f7 c2       	shrx   %rax,%rdx,%rax
    3416:	48 31 d0             	xor    %rdx,%rax
    3419:	c3                   	ret    
    341a:	50                   	push   %rax
    341b:	48 81 fe f0 00 00 00 	cmp    $0xf0,%rsi
    3422:	77 13                	ja     3437 <localXXH3_64b+0x307>
    3424:	48 8d 15 d5 84 01 00 	lea    0x184d5(%rip),%rdx        # 1b900 <XXH3_kSecret>
    342b:	31 c9                	xor    %ecx,%ecx
    342d:	e8 8e 4c 00 00       	call   80c0 <XXH3_len_129to240_64b>
    3432:	48 83 c4 08          	add    $0x8,%rsp
    3436:	c3                   	ret    
    3437:	e8 e4 59 00 00       	call   8e20 <XXH3_hashLong_64b_default>
    343c:	48 83 c4 08          	add    $0x8,%rsp
    3440:	c3                   	ret    
    3441:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    3448:	80 06 2d 
    344b:	c3                   	ret    

Disassembly of section .fini:
