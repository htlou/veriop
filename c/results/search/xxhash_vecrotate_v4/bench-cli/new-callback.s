
/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecrotate_v4/bench-cli/new:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

0000000000002f80 <localXXH3_64b>:
    2f80:	50                   	push   %rax
    2f81:	48 83 fe 10          	cmp    $0x10,%rsi
    2f85:	77 49                	ja     2fd0 <localXXH3_64b+0x50>
    2f87:	48 83 fe 09          	cmp    $0x9,%rsi
    2f8b:	0f 82 fa 01 00 00    	jb     318b <localXXH3_64b+0x20b>
    2f91:	48 b8 b9 39 42 ea 7b 	movabs $0x6782737bea4239b9,%rax
    2f98:	73 82 67 
    2f9b:	48 33 07             	xor    (%rdi),%rax
    2f9e:	48 ba 3a 52 96 09 3b 	movabs $0xaf56bc3b0996523a,%rdx
    2fa5:	bc 56 af 
    2fa8:	48 33 54 37 f8       	xor    -0x8(%rdi,%rsi,1),%rdx
    2fad:	c4 e2 f3 f6 f8       	mulx   %rax,%rcx,%rdi
    2fb2:	48 01 d6             	add    %rdx,%rsi
    2fb5:	48 0f c8             	bswap  %rax
    2fb8:	48 01 c6             	add    %rax,%rsi
    2fbb:	48 31 cf             	xor    %rcx,%rdi
    2fbe:	48 01 f7             	add    %rsi,%rdi
    2fc1:	48 89 f8             	mov    %rdi,%rax
    2fc4:	48 c1 e8 25          	shr    $0x25,%rax
    2fc8:	48 31 f8             	xor    %rdi,%rax
    2fcb:	e9 81 01 00 00       	jmp    3151 <localXXH3_64b+0x1d1>
    2fd0:	48 81 fe 80 00 00 00 	cmp    $0x80,%rsi
    2fd7:	0f 87 8e 01 00 00    	ja     316b <localXXH3_64b+0x1eb>
    2fdd:	48 b9 87 ca eb 85 b1 	movabs $0x9e3779b185ebca87,%rcx
    2fe4:	79 37 9e 
    2fe7:	48 0f af ce          	imul   %rsi,%rcx
    2feb:	48 83 fe 21          	cmp    $0x21,%rsi
    2fef:	0f 82 00 01 00 00    	jb     30f5 <localXXH3_64b+0x175>
    2ff5:	48 83 fe 41          	cmp    $0x41,%rsi
    2ff9:	0f 82 a6 00 00 00    	jb     30a5 <localXXH3_64b+0x125>
    2fff:	48 83 fe 61          	cmp    $0x61,%rsi
    3003:	72 50                	jb     3055 <localXXH3_64b+0xd5>
    3005:	48 b8 a8 fa 76 3f e3 	movabs $0x3f349ce33f76faa8,%rax
    300c:	9c 34 3f 
    300f:	48 33 47 30          	xor    0x30(%rdi),%rax
    3013:	48 ba f9 dc bb c7 c7 	movabs $0x1d4f0bc7c7bbdcf9,%rdx
    301a:	0b 4f 1d 
    301d:	48 33 57 38          	xor    0x38(%rdi),%rdx
    3021:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3026:	49 31 c0             	xor    %rax,%r8
    3029:	48 b8 8a 51 e0 4b cd 	movabs $0x3159b4cd4be0518a,%rax
    3030:	b4 59 31 
    3033:	48 33 44 37 c0       	xor    -0x40(%rdi,%rsi,1),%rax
    3038:	48 ba c8 9f 7e c9 d9 	movabs $0x647378d9c97e9fc8,%rdx
    303f:	78 73 64 
    3042:	48 33 54 37 c8       	xor    -0x38(%rdi,%rsi,1),%rdx
    3047:	4c 01 c1             	add    %r8,%rcx
    304a:	c4 e2 eb f6 c0       	mulx   %rax,%rdx,%rax
    304f:	48 31 d0             	xor    %rdx,%rax
    3052:	48 01 c1             	add    %rax,%rcx
    3055:	48 b8 3c 28 52 bb 91 	movabs $0xcb00c391bb52283c,%rax
    305c:	c3 00 cb 
    305f:	48 33 47 20          	xor    0x20(%rdi),%rax
    3063:	48 ba 88 d0 65 8b 1b 	movabs $0xa32e531b8b65d088,%rdx
    306a:	53 2e a3 
    306d:	48 33 57 28          	xor    0x28(%rdi),%rdx
    3071:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    3076:	49 31 c0             	xor    %rax,%r8
    3079:	48 b8 71 64 48 97 a2 	movabs $0x4ef90da297486471,%rax
    3080:	0d f9 4e 
    3083:	48 33 44 37 d0       	xor    -0x30(%rdi,%rsi,1),%rax
    3088:	48 ba 38 19 ef 46 a9 	movabs $0xd8acdea946ef1938,%rdx
    308f:	de ac d8 
    3092:	48 33 54 37 d8       	xor    -0x28(%rdi,%rsi,1),%rdx
    3097:	49 01 c8             	add    %rcx,%r8
    309a:	c4 e2 fb f6 c8       	mulx   %rax,%rax,%rcx
    309f:	48 31 c1             	xor    %rax,%rcx
    30a2:	4c 01 c1             	add    %r8,%rcx
    30a5:	48 b8 cb 79 e6 4e cc 	movabs $0x78e5c0cc4ee679cb,%rax
    30ac:	c0 e5 78 
    30af:	48 33 47 10          	xor    0x10(%rdi),%rax
    30b3:	48 ba 82 5a d0 7d cc 	movabs $0x2172ffcc7dd05a82,%rdx
    30ba:	ff 72 21 
    30bd:	48 33 57 18          	xor    0x18(%rdi),%rdx
    30c1:	c4 62 fb f6 c0       	mulx   %rax,%rax,%r8
    30c6:	49 31 c0             	xor    %rax,%r8
    30c9:	48 b8 b8 08 46 74 f7 	movabs $0x8e2443f7744608b8,%rax
    30d0:	43 24 8e 
    30d3:	48 33 44 37 e0       	xor    -0x20(%rdi,%rsi,1),%rax
    30d8:	48 ba e0 35 90 e6 81 	movabs $0x4c263a81e69035e0,%rdx
    30df:	3a 26 4c 
    30e2:	48 33 54 37 e8       	xor    -0x18(%rdi,%rsi,1),%rdx
    30e7:	49 01 c8             	add    %rcx,%r8
    30ea:	c4 e2 fb f6 c8       	mulx   %rax,%rax,%rcx
    30ef:	48 31 c1             	xor    %rax,%rcx
    30f2:	4c 01 c1             	add    %r8,%rcx
    30f5:	49 b8 b8 fe 6c 39 23 	movabs $0xbe4ba423396cfeb8,%r8
    30fc:	a4 4b be 
    30ff:	4c 33 07             	xor    (%rdi),%r8
    3102:	49 b9 de d4 6d e9 83 	movabs $0xdb979083e96dd4de,%r9
    3109:	90 97 db 
    310c:	4c 33 4c 37 f0       	xor    -0x10(%rdi,%rsi,1),%r9
    3111:	48 b8 72 40 a4 a4 b7 	movabs $0x1f67b3b7a4a44072,%rax
    3118:	b3 67 1f 
    311b:	48 33 44 37 f8       	xor    -0x8(%rdi,%rsi,1),%rax
    3120:	48 ba 7c 01 81 2c f7 	movabs $0x1cad21f72c81017c,%rdx
    3127:	21 ad 1c 
    312a:	48 33 57 08          	xor    0x8(%rdi),%rdx
    312e:	c4 c2 eb f6 f0       	mulx   %r8,%rdx,%rsi
    3133:	48 31 d6             	xor    %rdx,%rsi
    3136:	48 01 ce             	add    %rcx,%rsi
    3139:	48 89 c2             	mov    %rax,%rdx
    313c:	c4 c2 fb f6 c9       	mulx   %r9,%rax,%rcx
    3141:	48 31 c1             	xor    %rax,%rcx
    3144:	48 01 f1             	add    %rsi,%rcx
    3147:	48 89 c8             	mov    %rcx,%rax
    314a:	48 c1 e8 25          	shr    $0x25,%rax
    314e:	48 31 c8             	xor    %rcx,%rax
    3151:	48 b9 f9 79 37 9e 91 	movabs $0x165667919e3779f9,%rcx
    3158:	67 56 16 
    315b:	48 0f af c8          	imul   %rax,%rcx
    315f:	48 89 c8             	mov    %rcx,%rax
    3162:	48 c1 e8 20          	shr    $0x20,%rax
    3166:	48 31 c8             	xor    %rcx,%rax
    3169:	59                   	pop    %rcx
    316a:	c3                   	ret    
    316b:	48 81 fe f0 00 00 00 	cmp    $0xf0,%rsi
    3172:	77 10                	ja     3184 <localXXH3_64b+0x204>
    3174:	48 8d 15 05 88 01 00 	lea    0x18805(%rip),%rdx        # 1b980 <XXH3_kSecret>
    317b:	31 c9                	xor    %ecx,%ecx
    317d:	e8 9e 4f 00 00       	call   8120 <XXH3_len_129to240_64b>
    3182:	59                   	pop    %rcx
    3183:	c3                   	ret    
    3184:	e8 07 5e 00 00       	call   8f90 <XXH3_hashLong_64b_default>
    3189:	59                   	pop    %rcx
    318a:	c3                   	ret    
    318b:	48 83 fe 04          	cmp    $0x4,%rsi
    318f:	72 66                	jb     31f7 <localXXH3_64b+0x277>
    3191:	8b 44 37 fc          	mov    -0x4(%rdi,%rsi,1),%eax
    3195:	8b 0f                	mov    (%rdi),%ecx
    3197:	48 c1 e1 20          	shl    $0x20,%rcx
    319b:	48 09 c1             	or     %rax,%rcx
    319e:	48 b8 a2 d5 ec c5 74 	movabs $0xc73ab174c5ecd5a2,%rax
    31a5:	b1 3a c7 
    31a8:	48 31 c8             	xor    %rcx,%rax
    31ab:	62 f2 fd 08 7c c0    	vpbroadcastq %rax,%xmm0
    31b1:	62 f2 fd 08 15 05 45 	vprolvq 0x18445(%rip),%xmm0,%xmm0        # 1b600 <XSUM_algoLength+0xa0>
    31b8:	84 01 00 
    31bb:	c5 f9 70 c8 ee       	vpshufd $0xee,%xmm0,%xmm1
    31c0:	c5 f1 ef c0          	vpxor  %xmm0,%xmm1,%xmm0
    31c4:	c4 e1 f9 7e c1       	vmovq  %xmm0,%rcx
    31c9:	48 31 c1             	xor    %rax,%rcx
    31cc:	48 b8 25 df 98 1e 65 	movabs $0x9fb21c651e98df25,%rax
    31d3:	1c b2 9f 
    31d6:	48 0f af c8          	imul   %rax,%rcx
    31da:	48 89 ca             	mov    %rcx,%rdx
    31dd:	48 c1 ea 23          	shr    $0x23,%rdx
    31e1:	48 01 f2             	add    %rsi,%rdx
    31e4:	48 31 ca             	xor    %rcx,%rdx
    31e7:	48 0f af d0          	imul   %rax,%rdx
    31eb:	48 89 d0             	mov    %rdx,%rax
    31ee:	48 c1 e8 1c          	shr    $0x1c,%rax
    31f2:	48 31 d0             	xor    %rdx,%rax
    31f5:	59                   	pop    %rcx
    31f6:	c3                   	ret    
    31f7:	48 85 f6             	test   %rsi,%rsi
    31fa:	74 53                	je     324f <localXXH3_64b+0x2cf>
    31fc:	0f b6 07             	movzbl (%rdi),%eax
    31ff:	48 89 f1             	mov    %rsi,%rcx
    3202:	48 d1 e9             	shr    %rcx
    3205:	0f b6 54 37 ff       	movzbl -0x1(%rdi,%rsi,1),%edx
    320a:	c1 e0 10             	shl    $0x10,%eax
    320d:	0f b6 0c 0f          	movzbl (%rdi,%rcx,1),%ecx
    3211:	c1 e1 18             	shl    $0x18,%ecx
    3214:	09 c1                	or     %eax,%ecx
    3216:	48 09 d1             	or     %rdx,%rcx
    3219:	48 c1 e6 08          	shl    $0x8,%rsi
    321d:	48 09 ce             	or     %rcx,%rsi
    3220:	b8 9b 5a 27 87       	mov    $0x87275a9b,%eax
    3225:	48 31 f0             	xor    %rsi,%rax
    3228:	48 b9 4f eb d4 27 3d 	movabs $0xc2b2ae3d27d4eb4f,%rcx
    322f:	ae b2 c2 
    3232:	48 0f af c8          	imul   %rax,%rcx
    3236:	48 89 c8             	mov    %rcx,%rax
    3239:	48 c1 e8 1d          	shr    $0x1d,%rax
    323d:	48 31 c8             	xor    %rcx,%rax
    3240:	48 b9 f9 79 37 9e b1 	movabs $0x165667b19e3779f9,%rcx
    3247:	67 56 16 
    324a:	e9 0c ff ff ff       	jmp    315b <localXXH3_64b+0x1db>
    324f:	48 b8 c2 94 d3 38 05 	movabs $0x2d06800538d394c2,%rax
    3256:	80 06 2d 
    3259:	59                   	pop    %rcx
    325a:	c3                   	ret    

Disassembly of section .fini:
