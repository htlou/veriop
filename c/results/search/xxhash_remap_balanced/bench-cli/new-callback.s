
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_remap_balanced/bench-cli/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000003130 <localXXH3_64b>:
    3130:	48 83 fe 10          	cmp    $0x10,%rsi
    3134:	77 58                	ja     318e <localXXH3_64b+0x5e>
    3136:	48 83 fe 03          	cmp    $0x3,%rsi
    313a:	0f 87 2e 02 00 00    	ja     336e <localXXH3_64b+0x23e>
    3140:	48 83 fe 02          	cmp    $0x2,%rsi
    3144:	0f 82 fb 01 00 00    	jb     3345 <localXXH3_64b+0x215>
    314a:	0f b7 07             	movzwl (%rdi),%eax
    314d:	c1 e0 10             	shl    $0x10,%eax
    3150:	0f b6 4c 37 ff       	movzbl -0x1(%rdi,%rsi,1),%ecx
    3155:	48 09 c1             	or     %rax,%rcx
    3158:	48 c1 e6 08          	shl    $0x8,%rsi
    315c:	48 09 ce             	or     %rcx,%rsi
    315f:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    3164:	48 31 f0             	xor    %rsi,%rax
    3167:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    316e:	ae b2 c2 
    3171:	48 0f af c8          	imul   %rax,%rcx
    3175:	48 89 c8             	mov    %rcx,%rax
    3178:	48 c1 e8 1d          	shr    $0x1d,%rax
    317c:	48 31 c8             	xor    %rcx,%rax
    317f:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    3186:	67 56 16 
    3189:	e9 8b 01 00 00       	jmp    3319 <localXXH3_64b+0x1e9>
    318e:	48 81 fe 80 00 00 00 	cmp    $0x80,%rsi
    3195:	0f 87 8d 01 00 00    	ja     3328 <localXXH3_64b+0x1f8>
    319b:	48 b9 87 ca eb 85 b1 	movabs $0x9e3779b185ebca87,%rcx
    31a2:	79 37 9e 
    31a5:	48 0f af ce          	imul   %rsi,%rcx
    31a9:	48 83 fe 21          	cmp    $0x21,%rsi
    31ad:	0f 82 00 01 00 00    	jb     32b3 <localXXH3_64b+0x183>
    31b3:	48 83 fe 41          	cmp    $0x41,%rsi
    31b7:	0f 82 a6 00 00 00    	jb     3263 <localXXH3_64b+0x133>
    31bd:	48 83 fe 61          	cmp    $0x61,%rsi
    31c1:	72 50                	jb     3213 <localXXH3_64b+0xe3>
    31c3:	48 b8 a8 fa 76 3f e3 	movabs $0x3f349ce33f76faa8,%rax
    31ca:	9c 34 3f 
    31cd:	48 33 47 30          	xor    0x30(%rdi),%rax
    31d1:	48 ba f9 dc bb c7 c7 	movabs $0x1d4f0bc7c7bbdcf9,%rdx
    31d8:	0b 4f 1d 
    31db:	48 33 57 38          	xor    0x38(%rdi),%rdx
    31df:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    31e4:	49 b9 8a 51 e0 4b cd 	movabs $0x3159b4cd4be0518a,%r9
    31eb:	b4 59 31 
    31ee:	4c 33 4c 37 c0       	xor    -0x40(%rdi,%rsi,1),%r9
    31f3:	48 ba c8 9f 7e c9 d9 	movabs $0x647378d9c97e9fc8,%rdx
    31fa:	78 73 64 
    31fd:	48 33 54 37 c8       	xor    -0x38(%rdi,%rsi,1),%rdx
    3202:	c4 c2 b3 f6 d1       	mulx   %r9,%r9,%rdx
    3207:	49 31 c0             	xor    %rax,%r8
    320a:	4c 01 c1             	add    %r8,%rcx
    320d:	4c 31 ca             	xor    %r9,%rdx
    3210:	48 01 d1             	add    %rdx,%rcx
    3213:	48 b8 3c 28 52 bb 91 	movabs $0xcb00c391bb52283c,%rax
    321a:	c3 00 cb 
    321d:	48 33 47 20          	xor    0x20(%rdi),%rax
    3221:	48 ba 88 d0 65 8b 1b 	movabs $0xa32e531b8b65d088,%rdx
    3228:	53 2e a3 
    322b:	48 33 57 28          	xor    0x28(%rdi),%rdx
    322f:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3234:	49 b9 71 64 48 97 a2 	movabs $0x4ef90da297486471,%r9
    323b:	0d f9 4e 
    323e:	4c 33 4c 37 d0       	xor    -0x30(%rdi,%rsi,1),%r9
    3243:	49 31 c0             	xor    %rax,%r8
    3246:	48 ba 38 19 ef 46 a9 	movabs $0xd8acdea946ef1938,%rdx
    324d:	de ac d8 
    3250:	48 33 54 37 d8       	xor    -0x28(%rdi,%rsi,1),%rdx
    3255:	49 01 c8             	add    %rcx,%r8
    3258:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    325d:	48 31 c1             	xor    %rax,%rcx
    3260:	4c 01 c1             	add    %r8,%rcx
    3263:	48 b8 cb 79 e6 4e cc 	movabs $0x78e5c0cc4ee679cb,%rax
    326a:	c0 e5 78 
    326d:	48 33 47 10          	xor    0x10(%rdi),%rax
    3271:	48 ba 82 5a d0 7d cc 	movabs $0x2172ffcc7dd05a82,%rdx
    3278:	ff 72 21 
    327b:	48 33 57 18          	xor    0x18(%rdi),%rdx
    327f:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3284:	49 b9 b8 08 46 74 f7 	movabs $0x8e2443f7744608b8,%r9
    328b:	43 24 8e 
    328e:	4c 33 4c 37 e0       	xor    -0x20(%rdi,%rsi,1),%r9
    3293:	49 31 c0             	xor    %rax,%r8
    3296:	48 ba e0 35 90 e6 81 	movabs $0x4c263a81e69035e0,%rdx
    329d:	3a 26 4c 
    32a0:	48 33 54 37 e8       	xor    -0x18(%rdi,%rsi,1),%rdx
    32a5:	49 01 c8             	add    %rcx,%r8
    32a8:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    32ad:	48 31 c1             	xor    %rax,%rcx
    32b0:	4c 01 c1             	add    %r8,%rcx
    32b3:	49 b8 b8 fe 6c 39 23 	movabs $0xbe4ba423396cfeb8,%r8
    32ba:	a4 4b be 
    32bd:	4c 33 07             	xor    (%rdi),%r8
    32c0:	49 b9 de d4 6d e9 83 	movabs $0xdb979083e96dd4de,%r9
    32c7:	90 97 db 
    32ca:	4c 33 4c 37 f0       	xor    -0x10(%rdi,%rsi,1),%r9
    32cf:	48 b8 72 40 a4 a4 b7 	movabs $0x1f67b3b7a4a44072,%rax
    32d6:	b3 67 1f 
    32d9:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
    32de:	48 ba 7c 01 81 2c f7 	movabs $0x1cad21f72c81017c,%rdx
    32e5:	21 ad 1c 
    32e8:	48 33 57 08          	xor    0x8(%rdi),%rdx
    32ec:	c4 c2 eb f6 f0       	mulx   %r8,%rdx,%rsi
    32f1:	48 31 d6             	xor    %rdx,%rsi
    32f4:	48 01 ce             	add    %rcx,%rsi
    32f7:	48 89 c2             	mov    %rax,%rdx
    32fa:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    32ff:	48 31 c1             	xor    %rax,%rcx
    3302:	48 01 f1             	add    %rsi,%rcx
    3305:	48 89 c8             	mov    %rcx,%rax
    3308:	48 c1 e8 25          	shr    $0x25,%rax
    330c:	48 31 c8             	xor    %rcx,%rax
    330f:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    3316:	67 56 16 
    3319:	48 0f af c8          	imul   %rax,%rcx
    331d:	48 89 c8             	mov    %rcx,%rax
    3320:	48 c1 e8 20          	shr    $0x20,%rax
    3324:	48 31 c8             	xor    %rcx,%rax
    3327:	c3                   	ret    
    3328:	50                   	push   %rax
    3329:	48 81 fe f0 00 00 00 	cmp    $0xf0,%rsi
    3330:	77 27                	ja     3359 <localXXH3_64b+0x229>
    3332:	48 8d 15 c7 85 01 00 	lea    0x185c7(%rip),%rdx        # 1b900 <XXH3_kSecret>
    3339:	31 c9                	xor    %ecx,%ecx
    333b:	e8 d0 4c 00 00       	call   8010 <XXH3_len_129to240_64b>
    3340:	48 83 c4 08          	add    $0x8,%rsp
    3344:	c3                   	ret    
    3345:	48 85 f6             	test   %rsi,%rsi
    3348:	74 19                	je     3363 <localXXH3_64b+0x233>
    334a:	0f b6 07             	movzbl (%rdi),%eax
    334d:	48 8d 0d ac 91 01 00 	lea    0x191ac(%rip),%rcx        # 1c500 <XXH3_kSecret.99+0xc0>
    3354:	48 8b 04 c1          	mov    (%rcx,%rax,8),%rax
    3358:	c3                   	ret    
    3359:	e8 12 5a 00 00       	call   8d70 <XXH3_hashLong_64b_default>
    335e:	48 83 c4 08          	add    $0x8,%rsp
    3362:	c3                   	ret    
    3363:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    336a:	80 06 2d 
    336d:	c3                   	ret    
    336e:	48 83 fe 08          	cmp    $0x8,%rsi
    3372:	77 56                	ja     33ca <localXXH3_64b+0x29a>
    3374:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    3378:	8b 0f                	mov    (%rdi),%ecx
    337a:	48 c1 e1 20          	shl    $0x20,%rcx
    337e:	48 09 c1             	or     %rax,%rcx
    3381:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    3388:	b1 3a c7 
    338b:	48 31 c8             	xor    %rcx,%rax
    338e:	c4 e3 fb f0 c8 0f    	rorx   $0xf,%rax,%rcx
    3394:	c4 e3 fb f0 d0 28    	rorx   $0x28,%rax,%rdx
    339a:	48 31 ca             	xor    %rcx,%rdx
    339d:	48 31 c2             	xor    %rax,%rdx
    33a0:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    33a7:	1c b2 9f 
    33aa:	48 0f af d0          	imul   %rax,%rdx
    33ae:	48 89 d1             	mov    %rdx,%rcx
    33b1:	48 c1 e9 23          	shr    $0x23,%rcx
    33b5:	48 01 f1             	add    %rsi,%rcx
    33b8:	48 31 d1             	xor    %rdx,%rcx
    33bb:	48 0f af c8          	imul   %rax,%rcx
    33bf:	48 89 c8             	mov    %rcx,%rax
    33c2:	48 c1 e8 1c          	shr    $0x1c,%rax
    33c6:	48 31 c8             	xor    %rcx,%rax
    33c9:	c3                   	ret    
    33ca:	48 b8 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rax
    33d1:	73 82 67 
    33d4:	48 33 07             	xor    (%rdi),%rax
    33d7:	48 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rdx
    33de:	bc 56 af 
    33e1:	48 33 54 37 f8       	xor    -0x8(%rdi,%rsi,1),%rdx
    33e6:	c4 e2 f3 f6 f8       	mulx   %rax,%rcx,%rdi
    33eb:	48 01 d6             	add    %rdx,%rsi
    33ee:	48 0f c8             	bswap  %rax
    33f1:	48 01 c6             	add    %rax,%rsi
    33f4:	48 31 cf             	xor    %rcx,%rdi
    33f7:	48 01 f7             	add    %rsi,%rdi
    33fa:	48 89 f8             	mov    %rdi,%rax
    33fd:	48 c1 e8 25          	shr    $0x25,%rax
    3401:	48 31 f8             	xor    %rdi,%rax
    3404:	e9 06 ff ff ff       	jmp    330f <localXXH3_64b+0x1df>

Disassembly of section .fini:
