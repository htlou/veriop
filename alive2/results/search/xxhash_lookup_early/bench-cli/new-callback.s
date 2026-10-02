
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_lookup_early/bench-cli/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000003130 <localXXH3_64b>:
    3130:	48 83 fe 10          	cmp    $0x10,%rsi
    3134:	77 1e                	ja     3154 <localXXH3_64b+0x24>
    3136:	48 83 fe 01          	cmp    $0x1,%rsi
    313a:	0f 85 97 01 00 00    	jne    32d7 <localXXH3_64b+0x1a7>
    3140:	0f b6 07             	movzbl (%rdi),%eax
    3143:	04 80                	add    $0x80,%al
    3145:	0f b6 c0             	movzbl %al,%eax
    3148:	48 8d 0d b1 93 01 00 	lea    0x193b1(%rip),%rcx        # 1c500 <XXH3_kSecret.99+0xc0>
    314f:	48 8b 04 c1          	mov    (%rcx,%rax,8),%rax
    3153:	c3                   	ret    
    3154:	48 81 fe 80 00 00 00 	cmp    $0x80,%rsi
    315b:	0f 87 cf 01 00 00    	ja     3330 <localXXH3_64b+0x200>
    3161:	48 b9 87 ca eb 85 b1 	movabs $0x9e3779b185ebca87,%rcx
    3168:	79 37 9e 
    316b:	48 0f af ce          	imul   %rsi,%rcx
    316f:	48 83 fe 21          	cmp    $0x21,%rsi
    3173:	0f 82 00 01 00 00    	jb     3279 <localXXH3_64b+0x149>
    3179:	48 83 fe 41          	cmp    $0x41,%rsi
    317d:	0f 82 a6 00 00 00    	jb     3229 <localXXH3_64b+0xf9>
    3183:	48 83 fe 61          	cmp    $0x61,%rsi
    3187:	72 50                	jb     31d9 <localXXH3_64b+0xa9>
    3189:	48 b8 a8 fa 76 3f e3 	movabs $0x3f349ce33f76faa8,%rax
    3190:	9c 34 3f 
    3193:	48 33 47 30          	xor    0x30(%rdi),%rax
    3197:	48 ba f9 dc bb c7 c7 	movabs $0x1d4f0bc7c7bbdcf9,%rdx
    319e:	0b 4f 1d 
    31a1:	48 33 57 38          	xor    0x38(%rdi),%rdx
    31a5:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    31aa:	49 b9 8a 51 e0 4b cd 	movabs $0x3159b4cd4be0518a,%r9
    31b1:	b4 59 31 
    31b4:	4c 33 4c 37 c0       	xor    -0x40(%rdi,%rsi,1),%r9
    31b9:	48 ba c8 9f 7e c9 d9 	movabs $0x647378d9c97e9fc8,%rdx
    31c0:	78 73 64 
    31c3:	48 33 54 37 c8       	xor    -0x38(%rdi,%rsi,1),%rdx
    31c8:	c4 c2 b3 f6 d1       	mulx   %r9,%r9,%rdx
    31cd:	49 31 c0             	xor    %rax,%r8
    31d0:	4c 01 c1             	add    %r8,%rcx
    31d3:	4c 31 ca             	xor    %r9,%rdx
    31d6:	48 01 d1             	add    %rdx,%rcx
    31d9:	48 b8 3c 28 52 bb 91 	movabs $0xcb00c391bb52283c,%rax
    31e0:	c3 00 cb 
    31e3:	48 33 47 20          	xor    0x20(%rdi),%rax
    31e7:	48 ba 88 d0 65 8b 1b 	movabs $0xa32e531b8b65d088,%rdx
    31ee:	53 2e a3 
    31f1:	48 33 57 28          	xor    0x28(%rdi),%rdx
    31f5:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    31fa:	49 b9 71 64 48 97 a2 	movabs $0x4ef90da297486471,%r9
    3201:	0d f9 4e 
    3204:	4c 33 4c 37 d0       	xor    -0x30(%rdi,%rsi,1),%r9
    3209:	49 31 c0             	xor    %rax,%r8
    320c:	48 ba 38 19 ef 46 a9 	movabs $0xd8acdea946ef1938,%rdx
    3213:	de ac d8 
    3216:	48 33 54 37 d8       	xor    -0x28(%rdi,%rsi,1),%rdx
    321b:	49 01 c8             	add    %rcx,%r8
    321e:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    3223:	48 31 c1             	xor    %rax,%rcx
    3226:	4c 01 c1             	add    %r8,%rcx
    3229:	48 b8 cb 79 e6 4e cc 	movabs $0x78e5c0cc4ee679cb,%rax
    3230:	c0 e5 78 
    3233:	48 33 47 10          	xor    0x10(%rdi),%rax
    3237:	48 ba 82 5a d0 7d cc 	movabs $0x2172ffcc7dd05a82,%rdx
    323e:	ff 72 21 
    3241:	48 33 57 18          	xor    0x18(%rdi),%rdx
    3245:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    324a:	49 b9 b8 08 46 74 f7 	movabs $0x8e2443f7744608b8,%r9
    3251:	43 24 8e 
    3254:	4c 33 4c 37 e0       	xor    -0x20(%rdi,%rsi,1),%r9
    3259:	49 31 c0             	xor    %rax,%r8
    325c:	48 ba e0 35 90 e6 81 	movabs $0x4c263a81e69035e0,%rdx
    3263:	3a 26 4c 
    3266:	48 33 54 37 e8       	xor    -0x18(%rdi,%rsi,1),%rdx
    326b:	49 01 c8             	add    %rcx,%r8
    326e:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    3273:	48 31 c1             	xor    %rax,%rcx
    3276:	4c 01 c1             	add    %r8,%rcx
    3279:	49 b8 b8 fe 6c 39 23 	movabs $0xbe4ba423396cfeb8,%r8
    3280:	a4 4b be 
    3283:	4c 33 07             	xor    (%rdi),%r8
    3286:	49 b9 de d4 6d e9 83 	movabs $0xdb979083e96dd4de,%r9
    328d:	90 97 db 
    3290:	4c 33 4c 37 f0       	xor    -0x10(%rdi,%rsi,1),%r9
    3295:	48 b8 72 40 a4 a4 b7 	movabs $0x1f67b3b7a4a44072,%rax
    329c:	b3 67 1f 
    329f:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
    32a4:	48 ba 7c 01 81 2c f7 	movabs $0x1cad21f72c81017c,%rdx
    32ab:	21 ad 1c 
    32ae:	48 33 57 08          	xor    0x8(%rdi),%rdx
    32b2:	c4 c2 eb f6 f0       	mulx   %r8,%rdx,%rsi
    32b7:	48 31 d6             	xor    %rdx,%rsi
    32ba:	48 01 ce             	add    %rcx,%rsi
    32bd:	48 89 c2             	mov    %rax,%rdx
    32c0:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    32c5:	48 31 c1             	xor    %rax,%rcx
    32c8:	48 01 f1             	add    %rsi,%rcx
    32cb:	48 89 c8             	mov    %rcx,%rax
    32ce:	48 c1 e8 25          	shr    $0x25,%rax
    32d2:	48 31 c8             	xor    %rcx,%rax
    32d5:	eb 40                	jmp    3317 <localXXH3_64b+0x1e7>
    32d7:	48 83 fe 09          	cmp    $0x9,%rsi
    32db:	72 7a                	jb     3357 <localXXH3_64b+0x227>
    32dd:	48 b8 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rax
    32e4:	73 82 67 
    32e7:	48 33 07             	xor    (%rdi),%rax
    32ea:	48 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rdx
    32f1:	bc 56 af 
    32f4:	48 33 54 37 f8       	xor    -0x8(%rdi,%rsi,1),%rdx
    32f9:	c4 e2 f3 f6 f8       	mulx   %rax,%rcx,%rdi
    32fe:	48 01 d6             	add    %rdx,%rsi
    3301:	48 0f c8             	bswap  %rax
    3304:	48 01 c6             	add    %rax,%rsi
    3307:	48 31 cf             	xor    %rcx,%rdi
    330a:	48 01 f7             	add    %rsi,%rdi
    330d:	48 89 f8             	mov    %rdi,%rax
    3310:	48 c1 e8 25          	shr    $0x25,%rax
    3314:	48 31 f8             	xor    %rdi,%rax
    3317:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    331e:	67 56 16 
    3321:	48 0f af c8          	imul   %rax,%rcx
    3325:	48 89 c8             	mov    %rcx,%rax
    3328:	48 c1 e8 20          	shr    $0x20,%rax
    332c:	48 31 c8             	xor    %rcx,%rax
    332f:	c3                   	ret    
    3330:	50                   	push   %rax
    3331:	48 81 fe f0 00 00 00 	cmp    $0xf0,%rsi
    3338:	77 13                	ja     334d <localXXH3_64b+0x21d>
    333a:	48 8d 15 bf 85 01 00 	lea    0x185bf(%rip),%rdx        # 1b900 <XXH3_kSecret>
    3341:	31 c9                	xor    %ecx,%ecx
    3343:	e8 58 4d 00 00       	call   80a0 <XXH3_len_129to240_64b>
    3348:	48 83 c4 08          	add    $0x8,%rsp
    334c:	c3                   	ret    
    334d:	e8 ae 5a 00 00       	call   8e00 <XXH3_hashLong_64b_default>
    3352:	48 83 c4 08          	add    $0x8,%rsp
    3356:	c3                   	ret    
    3357:	48 83 fe 04          	cmp    $0x4,%rsi
    335b:	72 56                	jb     33b3 <localXXH3_64b+0x283>
    335d:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    3361:	8b 0f                	mov    (%rdi),%ecx
    3363:	48 c1 e1 20          	shl    $0x20,%rcx
    3367:	48 09 c1             	or     %rax,%rcx
    336a:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    3371:	b1 3a c7 
    3374:	48 31 c8             	xor    %rcx,%rax
    3377:	c4 e3 fb f0 c8 0f    	rorx   $0xf,%rax,%rcx
    337d:	c4 e3 fb f0 d0 28    	rorx   $0x28,%rax,%rdx
    3383:	48 31 ca             	xor    %rcx,%rdx
    3386:	48 31 c2             	xor    %rax,%rdx
    3389:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    3390:	1c b2 9f 
    3393:	48 0f af d0          	imul   %rax,%rdx
    3397:	48 89 d1             	mov    %rdx,%rcx
    339a:	48 c1 e9 23          	shr    $0x23,%rcx
    339e:	48 01 f1             	add    %rsi,%rcx
    33a1:	48 31 d1             	xor    %rdx,%rcx
    33a4:	48 0f af c8          	imul   %rax,%rcx
    33a8:	48 89 c8             	mov    %rcx,%rax
    33ab:	48 c1 e8 1c          	shr    $0x1c,%rax
    33af:	48 31 c8             	xor    %rcx,%rax
    33b2:	c3                   	ret    
    33b3:	48 85 f6             	test   %rsi,%rsi
    33b6:	74 53                	je     340b <localXXH3_64b+0x2db>
    33b8:	0f b6 07             	movzbl (%rdi),%eax
    33bb:	48 89 f1             	mov    %rsi,%rcx
    33be:	48 d1 e9             	shr    %rcx
    33c1:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    33c6:	c1 e0 10             	shl    $0x10,%eax
    33c9:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    33cd:	c1 e1 18             	shl    $0x18,%ecx
    33d0:	09 c1                	or     %eax,%ecx
    33d2:	48 09 d1             	or     %rdx,%rcx
    33d5:	48 c1 e6 08          	shl    $0x8,%rsi
    33d9:	48 09 ce             	or     %rcx,%rsi
    33dc:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    33e1:	48 31 f0             	xor    %rsi,%rax
    33e4:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    33eb:	ae b2 c2 
    33ee:	48 0f af c8          	imul   %rax,%rcx
    33f2:	48 89 c8             	mov    %rcx,%rax
    33f5:	48 c1 e8 1d          	shr    $0x1d,%rax
    33f9:	48 31 c8             	xor    %rcx,%rax
    33fc:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    3403:	67 56 16 
    3406:	e9 16 ff ff ff       	jmp    3321 <localXXH3_64b+0x1f1>
    340b:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    3412:	80 06 2d 
    3415:	c3                   	ret    

Disassembly of section .fini:
