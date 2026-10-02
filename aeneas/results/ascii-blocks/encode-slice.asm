
aeneas/repos/base64-ascii-blocks/target/release/deps/benchmarks-81bf89f34f44580f:     file format elf64-x86-64


Disassembly of section .text:

00000000000e1180 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>>:
   e1180:	55                   	push   %rbp
   e1181:	41 57                	push   %r15
   e1183:	41 56                	push   %r14
   e1185:	41 55                	push   %r13
   e1187:	41 54                	push   %r12
   e1189:	53                   	push   %rbx
   e118a:	48 83 ec 68          	sub    $0x68,%rsp
   e118e:	49 89 d4             	mov    %rdx,%r12
   e1191:	49 89 f7             	mov    %rsi,%r15
   e1194:	48 89 fb             	mov    %rdi,%rbx
   e1197:	c6 47 30 01          	movb   $0x1,0x30(%rdi)
   e119b:	ff 15 17 e3 1f 00    	call   *0x1fe317(%rip)        # 2df4b8 <_DYNAMIC+0x268>
   e11a1:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
   e11a6:	89 54 24 60          	mov    %edx,0x60(%rsp)
   e11aa:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
   e11ae:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
   e11b3:	ff 15 87 e9 1f 00    	call   *0x1fe987(%rip)        # 2dfb40 <_DYNAMIC+0x8f0>
   e11b9:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   e11be:	89 54 24 24          	mov    %edx,0x24(%rsp)
   e11c2:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
   e11c7:	48 8b 43 28          	mov    0x28(%rbx),%rax
   e11cb:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
   e11d0:	48 85 c0             	test   %rax,%rax
   e11d3:	0f 84 a2 06 00 00    	je     e187b <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x6fb>
   e11d9:	4d 8b 47 10          	mov    0x10(%r15),%r8
   e11dd:	48 b9 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rcx
   e11e4:	aa aa aa 
   e11e7:	4c 89 c0             	mov    %r8,%rax
   e11ea:	48 f7 e1             	mul    %rcx
   e11ed:	48 89 d0             	mov    %rdx,%rax
   e11f0:	48 d1 e8             	shr    %rax
   e11f3:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   e11fa:	00 
   e11fb:	4c 8d 2c 40          	lea    (%rax,%rax,2),%r13
   e11ff:	4c 89 c1             	mov    %r8,%rcx
   e1202:	4c 29 e9             	sub    %r13,%rcx
   e1205:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
   e120a:	48 8d 34 85 04 00 00 	lea    0x4(,%rax,4),%rsi
   e1211:	00 
   e1212:	48 0f 45 d6          	cmovne %rsi,%rdx
   e1216:	31 c9                	xor    %ecx,%ecx
   e1218:	4c 89 c0             	mov    %r8,%rax
   e121b:	48 83 e8 1a          	sub    $0x1a,%rax
   e121f:	48 0f 43 c8          	cmovae %rax,%rcx
   e1223:	49 39 54 24 10       	cmp    %rdx,0x10(%r12)
   e1228:	0f 82 4f 07 00 00    	jb     e197d <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x7fd>
   e122e:	4d 8b 64 24 08       	mov    0x8(%r12),%r12
   e1233:	4d 8b 7f 08          	mov    0x8(%r15),%r15
   e1237:	31 c0                	xor    %eax,%eax
   e1239:	f3 0f 7e 1d df 7f f3 	movq   -0xc8021(%rip),%xmm3        # 19220 <anon.5c50fc8432f4db1b80acdd67fd02057d.0.llvm.4703694746020698434+0x210>
   e1240:	ff 
   e1241:	f3 0f 7e 2d 37 79 f3 	movq   -0xc86c9(%rip),%xmm5        # 18b80 <anon.b80e56b8a6330bf8f767091e17bd4f2c.4.llvm.290322811585857608+0x240>
   e1248:	ff 
   e1249:	f3 0f 7e 3d 8f 80 f3 	movq   -0xc7f71(%rip),%xmm7        # 192e0 <anon.5c50fc8432f4db1b80acdd67fd02057d.0.llvm.4703694746020698434+0x2d0>
   e1250:	ff 
   e1251:	66 44 0f 6f 05 d6 79 	movdqa -0xc862a(%rip),%xmm8        # 18c30 <anon.b80e56b8a6330bf8f767091e17bd4f2c.4.llvm.290322811585857608+0x2f0>
   e1258:	f3 ff 
   e125a:	f3 44 0f 7e 0d 8d 80 	movq   -0xc7f73(%rip),%xmm9        # 192f0 <anon.5c50fc8432f4db1b80acdd67fd02057d.0.llvm.4703694746020698434+0x2e0>
   e1261:	f3 ff 
   e1263:	4c 8d 35 21 23 f4 ff 	lea    -0xbdcdf(%rip),%r14        # 2358b <anon.06faec34da25a19a7b2f7c11a228e538.0.llvm.6146696725461908352+0x2b>
   e126a:	66 0f 6f 15 3e 74 f3 	movdqa -0xc8bc2(%rip),%xmm2        # 186b0 <__abi_tag+0x183b4>
   e1271:	ff 
   e1272:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
   e1277:	66 44 0f 6f 2d 70 75 	movdqa -0xc8a90(%rip),%xmm13        # 187f0 <anon.36fb530f58697395b8a5d87fa0545518.23.llvm.12948509815252800608+0x50>
   e127e:	f3 ff 
   e1280:	66 44 0f 6f 35 b7 7b 	movdqa -0xc8449(%rip),%xmm14        # 18e40 <anon.36fb530f58697395b8a5d87fa0545518.45.llvm.12948509815252800608+0xc0>
   e1287:	f3 ff 
   e1289:	eb 30                	jmp    e12bb <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x13b>
   e128b:	41 c6 44 1c 02 3d    	movb   $0x3d,0x2(%r12,%rbx,1)
   e1291:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
   e1296:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   e129d:	00 00 00 
   e12a0:	49 ff c1             	inc    %r9
   e12a3:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
   e12a8:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
   e12ad:	4c 3b 4c 24 48       	cmp    0x48(%rsp),%r9
   e12b2:	4c 89 c8             	mov    %r9,%rax
   e12b5:	0f 84 c0 05 00 00    	je     e187b <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x6fb>
   e12bb:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
   e12c0:	31 db                	xor    %ebx,%ebx
   e12c2:	31 c0                	xor    %eax,%eax
   e12c4:	49 83 f8 1b          	cmp    $0x1b,%r8
   e12c8:	0f 82 b9 03 00 00    	jb     e1687 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x507>
   e12ce:	66 90                	xchg   %ax,%ax
   e12d0:	4c 8d 50 1a          	lea    0x1a(%rax),%r10
   e12d4:	4d 39 c2             	cmp    %r8,%r10
   e12d7:	0f 87 09 06 00 00    	ja     e18e6 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x766>
   e12dd:	48 8d 73 1f          	lea    0x1f(%rbx),%rsi
   e12e1:	48 39 d6             	cmp    %rdx,%rsi
   e12e4:	0f 83 d1 05 00 00    	jae    e18bb <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x73b>
   e12ea:	41 0f b6 34 07       	movzbl (%r15,%rax,1),%esi
   e12ef:	41 0f b6 7c 07 03    	movzbl 0x3(%r15,%rax,1),%edi
   e12f5:	45 0f b6 54 07 06    	movzbl 0x6(%r15,%rax,1),%r10d
   e12fb:	45 0f b6 5c 07 0c    	movzbl 0xc(%r15,%rax,1),%r11d
   e1301:	41 0f b6 6c 07 12    	movzbl 0x12(%r15,%rax,1),%ebp
   e1307:	45 0f b6 4c 07 0f    	movzbl 0xf(%r15,%rax,1),%r9d
   e130d:	41 c1 e1 08          	shl    $0x8,%r9d
   e1311:	45 09 d9             	or     %r11d,%r9d
   e1314:	c1 e7 08             	shl    $0x8,%edi
   e1317:	09 f7                	or     %esi,%edi
   e1319:	41 c1 e2 10          	shl    $0x10,%r10d
   e131d:	41 09 fa             	or     %edi,%r10d
   e1320:	41 0f b6 74 07 09    	movzbl 0x9(%r15,%rax,1),%esi
   e1326:	c1 e6 18             	shl    $0x18,%esi
   e1329:	44 09 d6             	or     %r10d,%esi
   e132c:	66 44 0f 6e e6       	movd   %esi,%xmm12
   e1331:	66 45 0f c4 e1 02    	pinsrw $0x2,%r9d,%xmm12
   e1337:	41 0f b6 74 07 15    	movzbl 0x15(%r15,%rax,1),%esi
   e133d:	c1 e6 08             	shl    $0x8,%esi
   e1340:	09 ee                	or     %ebp,%esi
   e1342:	66 44 0f c4 e6 03    	pinsrw $0x3,%esi,%xmm12
   e1348:	41 0f b6 74 07 01    	movzbl 0x1(%r15,%rax,1),%esi
   e134e:	41 0f b6 7c 07 04    	movzbl 0x4(%r15,%rax,1),%edi
   e1354:	45 0f b6 4c 07 07    	movzbl 0x7(%r15,%rax,1),%r9d
   e135a:	45 0f b6 54 07 0d    	movzbl 0xd(%r15,%rax,1),%r10d
   e1360:	45 0f b6 5c 07 10    	movzbl 0x10(%r15,%rax,1),%r11d
   e1366:	41 c1 e3 08          	shl    $0x8,%r11d
   e136a:	45 09 d3             	or     %r10d,%r11d
   e136d:	c1 e7 08             	shl    $0x8,%edi
   e1370:	09 f7                	or     %esi,%edi
   e1372:	41 c1 e1 10          	shl    $0x10,%r9d
   e1376:	41 09 f9             	or     %edi,%r9d
   e1379:	41 0f b6 74 07 0a    	movzbl 0xa(%r15,%rax,1),%esi
   e137f:	c1 e6 18             	shl    $0x18,%esi
   e1382:	44 09 ce             	or     %r9d,%esi
   e1385:	66 0f 6e e6          	movd   %esi,%xmm4
   e1389:	66 41 0f c4 e3 02    	pinsrw $0x2,%r11d,%xmm4
   e138f:	41 0f b6 74 07 13    	movzbl 0x13(%r15,%rax,1),%esi
   e1395:	41 0f b6 7c 07 16    	movzbl 0x16(%r15,%rax,1),%edi
   e139b:	c1 e7 08             	shl    $0x8,%edi
   e139e:	09 f7                	or     %esi,%edi
   e13a0:	66 0f c4 e7 03       	pinsrw $0x3,%edi,%xmm4
   e13a5:	f3 44 0f 7e d4       	movq   %xmm4,%xmm10
   e13aa:	41 0f b6 74 07 02    	movzbl 0x2(%r15,%rax,1),%esi
   e13b0:	41 0f b6 7c 07 05    	movzbl 0x5(%r15,%rax,1),%edi
   e13b6:	45 0f b6 4c 07 08    	movzbl 0x8(%r15,%rax,1),%r9d
   e13bc:	45 0f b6 54 07 0e    	movzbl 0xe(%r15,%rax,1),%r10d
   e13c2:	45 0f b6 5c 07 11    	movzbl 0x11(%r15,%rax,1),%r11d
   e13c8:	41 c1 e3 08          	shl    $0x8,%r11d
   e13cc:	45 09 d3             	or     %r10d,%r11d
   e13cf:	c1 e7 08             	shl    $0x8,%edi
   e13d2:	09 f7                	or     %esi,%edi
   e13d4:	41 c1 e1 10          	shl    $0x10,%r9d
   e13d8:	41 09 f9             	or     %edi,%r9d
   e13db:	41 0f b6 74 07 0b    	movzbl 0xb(%r15,%rax,1),%esi
   e13e1:	c1 e6 18             	shl    $0x18,%esi
   e13e4:	44 09 ce             	or     %r9d,%esi
   e13e7:	66 0f 6e f6          	movd   %esi,%xmm6
   e13eb:	66 41 0f c4 f3 02    	pinsrw $0x2,%r11d,%xmm6
   e13f1:	41 0f b6 74 07 14    	movzbl 0x14(%r15,%rax,1),%esi
   e13f7:	41 0f b6 7c 07 17    	movzbl 0x17(%r15,%rax,1),%edi
   e13fd:	c1 e7 08             	shl    $0x8,%edi
   e1400:	09 f7                	or     %esi,%edi
   e1402:	66 0f c4 f7 03       	pinsrw $0x3,%edi,%xmm6
   e1407:	66 45 0f 6f dc       	movdqa %xmm12,%xmm11
   e140c:	66 41 0f 71 d3 02    	psrlw  $0x2,%xmm11
   e1412:	66 44 0f db 1d b5 7e 	pand   -0xc814b(%rip),%xmm11        # 192d0 <anon.5c50fc8432f4db1b80acdd67fd02057d.0.llvm.4703694746020698434+0x2c0>
   e1419:	f3 ff 
   e141b:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
   e1420:	66 0f da 25 48 73 f3 	pminub -0xc8cb8(%rip),%xmm4        # 18770 <__abi_tag+0x18474>
   e1427:	ff 
   e1428:	66 41 0f 74 e4       	pcmpeqb %xmm12,%xmm4
   e142d:	66 0f df e3          	pandn  %xmm3,%xmm4
   e1431:	66 45 0f 6f fc       	movdqa %xmm12,%xmm15
   e1436:	66 44 0f da 3d f1 76 	pminub -0xc890f(%rip),%xmm15        # 18b30 <anon.b80e56b8a6330bf8f767091e17bd4f2c.4.llvm.290322811585857608+0x1f0>
   e143d:	f3 ff 
   e143f:	66 45 0f 74 fc       	pcmpeqb %xmm12,%xmm15
   e1444:	66 44 0f df fd       	pandn  %xmm5,%xmm15
   e1449:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
   e144e:	66 0f da 0d ca 77 f3 	pminub -0xc8836(%rip),%xmm1        # 18c20 <anon.b80e56b8a6330bf8f767091e17bd4f2c.4.llvm.290322811585857608+0x2e0>
   e1455:	ff 
   e1456:	66 41 0f 74 cc       	pcmpeqb %xmm12,%xmm1
   e145b:	66 0f df cf          	pandn  %xmm7,%xmm1
   e145f:	66 41 0f fc cf       	paddb  %xmm15,%xmm1
   e1464:	66 41 0f fc e3       	paddb  %xmm11,%xmm4
   e1469:	66 45 0f 74 d8       	pcmpeqb %xmm8,%xmm11
   e146e:	66 45 0f db d9       	pand   %xmm9,%xmm11
   e1473:	66 0f fc e1          	paddb  %xmm1,%xmm4
   e1477:	66 41 0f fc e3       	paddb  %xmm11,%xmm4
   e147c:	66 41 0f 71 f4 04    	psllw  $0x4,%xmm12
   e1482:	66 44 0f db 25 b5 77 	pand   -0xc884b(%rip),%xmm12        # 18c40 <anon.b80e56b8a6330bf8f767091e17bd4f2c.4.llvm.290322811585857608+0x300>
   e1489:	f3 ff 
   e148b:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
   e1490:	66 0f 71 d1 04       	psrlw  $0x4,%xmm1
   e1495:	66 0f db 0d 83 72 f3 	pand   -0xc8d7d(%rip),%xmm1        # 18720 <__abi_tag+0x18424>
   e149c:	ff 
   e149d:	66 41 0f eb cc       	por    %xmm12,%xmm1
   e14a2:	66 41 0f db c8       	pand   %xmm8,%xmm1
   e14a7:	66 44 0f 6f d9       	movdqa %xmm1,%xmm11
   e14ac:	66 45 0f 64 dd       	pcmpgtb %xmm13,%xmm11
   e14b1:	66 44 0f db db       	pand   %xmm3,%xmm11
   e14b6:	66 44 0f 6f e1       	movdqa %xmm1,%xmm12
   e14bb:	66 44 0f 6f f9       	movdqa %xmm1,%xmm15
   e14c0:	66 44 0f fc d9       	paddb  %xmm1,%xmm11
   e14c5:	66 41 0f 64 ce       	pcmpgtb %xmm14,%xmm1
   e14ca:	66 0f db cd          	pand   %xmm5,%xmm1
   e14ce:	66 0f 6f 05 ea 75 f3 	movdqa -0xc8a16(%rip),%xmm0        # 18ac0 <anon.b80e56b8a6330bf8f767091e17bd4f2c.4.llvm.290322811585857608+0x180>
   e14d5:	ff 
   e14d6:	66 44 0f 64 e0       	pcmpgtb %xmm0,%xmm12
   e14db:	66 44 0f db e7       	pand   %xmm7,%xmm12
   e14e0:	66 44 0f fc e1       	paddb  %xmm1,%xmm12
   e14e5:	66 45 0f 74 f8       	pcmpeqb %xmm8,%xmm15
   e14ea:	66 45 0f db f9       	pand   %xmm9,%xmm15
   e14ef:	66 45 0f fc dc       	paddb  %xmm12,%xmm11
   e14f4:	66 45 0f fc df       	paddb  %xmm15,%xmm11
   e14f9:	66 41 0f 6c e3       	punpcklqdq %xmm11,%xmm4
   e14fe:	66 0f 6f ce          	movdqa %xmm6,%xmm1
   e1502:	66 0f 71 d1 06       	psrlw  $0x6,%xmm1
   e1507:	66 0f db 0d 31 75 f3 	pand   -0xc8acf(%rip),%xmm1        # 18a40 <anon.b80e56b8a6330bf8f767091e17bd4f2c.4.llvm.290322811585857608+0x100>
   e150e:	ff 
   e150f:	66 45 0f fc d2       	paddb  %xmm10,%xmm10
   e1514:	66 45 0f fc d2       	paddb  %xmm10,%xmm10
   e1519:	66 44 0f eb d1       	por    %xmm1,%xmm10
   e151e:	66 45 0f db d0       	pand   %xmm8,%xmm10
   e1523:	66 45 0f 6f da       	movdqa %xmm10,%xmm11
   e1528:	66 45 0f 64 dd       	pcmpgtb %xmm13,%xmm11
   e152d:	66 44 0f db db       	pand   %xmm3,%xmm11
   e1532:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
   e1537:	66 45 0f 6f e2       	movdqa %xmm10,%xmm12
   e153c:	66 45 0f fc da       	paddb  %xmm10,%xmm11
   e1541:	66 45 0f 64 d6       	pcmpgtb %xmm14,%xmm10
   e1546:	66 44 0f db d5       	pand   %xmm5,%xmm10
   e154b:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
   e154f:	66 0f db cf          	pand   %xmm7,%xmm1
   e1553:	66 41 0f fc ca       	paddb  %xmm10,%xmm1
   e1558:	66 45 0f 74 e0       	pcmpeqb %xmm8,%xmm12
   e155d:	66 45 0f db e1       	pand   %xmm9,%xmm12
   e1562:	66 44 0f fc d9       	paddb  %xmm1,%xmm11
   e1567:	66 45 0f fc dc       	paddb  %xmm12,%xmm11
   e156c:	66 41 0f db f0       	pand   %xmm8,%xmm6
   e1571:	66 44 0f 6f d6       	movdqa %xmm6,%xmm10
   e1576:	66 45 0f 64 d5       	pcmpgtb %xmm13,%xmm10
   e157b:	66 44 0f db d3       	pand   %xmm3,%xmm10
   e1580:	66 0f 6f ce          	movdqa %xmm6,%xmm1
   e1584:	66 44 0f 6f e6       	movdqa %xmm6,%xmm12
   e1589:	66 44 0f fc d6       	paddb  %xmm6,%xmm10
   e158e:	66 41 0f 64 f6       	pcmpgtb %xmm14,%xmm6
   e1593:	66 0f db f5          	pand   %xmm5,%xmm6
   e1597:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
   e159b:	66 0f db cf          	pand   %xmm7,%xmm1
   e159f:	66 0f fc ce          	paddb  %xmm6,%xmm1
   e15a3:	66 45 0f 74 e0       	pcmpeqb %xmm8,%xmm12
   e15a8:	66 45 0f db e1       	pand   %xmm9,%xmm12
   e15ad:	66 44 0f fc d1       	paddb  %xmm1,%xmm10
   e15b2:	66 45 0f fc d4       	paddb  %xmm12,%xmm10
   e15b7:	66 45 0f 6c da       	punpcklqdq %xmm10,%xmm11
   e15bc:	66 0f 6f 05 3c 7d f3 	movdqa -0xc82c4(%rip),%xmm0        # 19300 <anon.5c50fc8432f4db1b80acdd67fd02057d.0.llvm.4703694746020698434+0x2f0>
   e15c3:	ff 
   e15c4:	66 0f fc e0          	paddb  %xmm0,%xmm4
   e15c8:	66 44 0f fc d8       	paddb  %xmm0,%xmm11
   e15cd:	66 0f 6f cc          	movdqa %xmm4,%xmm1
   e15d1:	66 0f ef c0          	pxor   %xmm0,%xmm0
   e15d5:	66 0f 68 c8          	punpckhbw %xmm0,%xmm1
   e15d9:	66 0f 60 e0          	punpcklbw %xmm0,%xmm4
   e15dd:	66 0f 6f f4          	movdqa %xmm4,%xmm6
   e15e1:	66 0f 61 f1          	punpcklwd %xmm1,%xmm6
   e15e5:	66 44 0f 70 d6 f6    	pshufd $0xf6,%xmm6,%xmm10
   e15eb:	66 0f 70 f6 d4       	pshufd $0xd4,%xmm6,%xmm6
   e15f0:	66 41 0f 67 f2       	packuswb %xmm10,%xmm6
   e15f5:	66 45 0f 6f d3       	movdqa %xmm11,%xmm10
   e15fa:	66 44 0f 68 d0       	punpckhbw %xmm0,%xmm10
   e15ff:	66 44 0f 60 d8       	punpcklbw %xmm0,%xmm11
   e1604:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
   e1609:	66 45 0f 61 e2       	punpcklwd %xmm10,%xmm12
   e160e:	66 45 0f 70 fc fa    	pshufd $0xfa,%xmm12,%xmm15
   e1614:	66 45 0f 70 e4 50    	pshufd $0x50,%xmm12,%xmm12
   e161a:	66 45 0f 67 e7       	packuswb %xmm15,%xmm12
   e161f:	66 44 0f 6f fa       	movdqa %xmm2,%xmm15
   e1624:	66 45 0f df fc       	pandn  %xmm12,%xmm15
   e1629:	66 0f db f2          	pand   %xmm2,%xmm6
   e162d:	66 44 0f eb fe       	por    %xmm6,%xmm15
   e1632:	66 0f 69 e1          	punpckhwd %xmm1,%xmm4
   e1636:	66 0f 70 cc f6       	pshufd $0xf6,%xmm4,%xmm1
   e163b:	66 0f 70 e4 d4       	pshufd $0xd4,%xmm4,%xmm4
   e1640:	66 0f 67 e1          	packuswb %xmm1,%xmm4
   e1644:	66 45 0f 69 da       	punpckhwd %xmm10,%xmm11
   e1649:	66 41 0f 70 cb fa    	pshufd $0xfa,%xmm11,%xmm1
   e164f:	66 41 0f 70 f3 50    	pshufd $0x50,%xmm11,%xmm6
   e1655:	66 0f 67 f1          	packuswb %xmm1,%xmm6
   e1659:	66 0f 6f ca          	movdqa %xmm2,%xmm1
   e165d:	66 0f df ce          	pandn  %xmm6,%xmm1
   e1661:	66 0f db e2          	pand   %xmm2,%xmm4
   e1665:	66 0f eb cc          	por    %xmm4,%xmm1
   e1669:	f3 41 0f 7f 4c 1c 10 	movdqu %xmm1,0x10(%r12,%rbx,1)
   e1670:	f3 45 0f 7f 3c 1c    	movdqu %xmm15,(%r12,%rbx,1)
   e1676:	48 83 c0 18          	add    $0x18,%rax
   e167a:	48 83 c3 20          	add    $0x20,%rbx
   e167e:	48 39 c8             	cmp    %rcx,%rax
   e1681:	0f 86 49 fc ff ff    	jbe    e12d0 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x150>
   e1687:	4c 39 e8             	cmp    %r13,%rax
   e168a:	0f 83 a2 00 00 00    	jae    e1732 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x5b2>
   e1690:	48 83 f8 fc          	cmp    $0xfffffffffffffffc,%rax
   e1694:	0f 87 35 02 00 00    	ja     e18cf <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x74f>
   e169a:	4c 8d 50 03          	lea    0x3(%rax),%r10
   e169e:	4d 39 c2             	cmp    %r8,%r10
   e16a1:	0f 87 28 02 00 00    	ja     e18cf <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x74f>
   e16a7:	48 8d 7b 04          	lea    0x4(%rbx),%rdi
   e16ab:	48 39 d7             	cmp    %rdx,%rdi
   e16ae:	0f 87 48 02 00 00    	ja     e18fc <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x77c>
   e16b4:	45 0f b6 1c 07       	movzbl (%r15,%rax,1),%r11d
   e16b9:	44 89 dd             	mov    %r11d,%ebp
   e16bc:	c1 ed 02             	shr    $0x2,%ebp
   e16bf:	42 0f b6 6c 35 03    	movzbl 0x3(%rbp,%r14,1),%ebp
   e16c5:	41 88 2c 1c          	mov    %bpl,(%r12,%rbx,1)
   e16c9:	41 0f b6 74 07 01    	movzbl 0x1(%r15,%rax,1),%esi
   e16cf:	41 c0 e3 04          	shl    $0x4,%r11b
   e16d3:	89 f5                	mov    %esi,%ebp
   e16d5:	40 c0 ed 04          	shr    $0x4,%bpl
   e16d9:	44 08 dd             	or     %r11b,%bpl
   e16dc:	44 0f b6 dd          	movzbl %bpl,%r11d
   e16e0:	41 83 e3 3f          	and    $0x3f,%r11d
   e16e4:	47 0f b6 5c 33 03    	movzbl 0x3(%r11,%r14,1),%r11d
   e16ea:	45 88 5c 1c 01       	mov    %r11b,0x1(%r12,%rbx,1)
   e16ef:	41 0f b6 44 07 02    	movzbl 0x2(%r15,%rax,1),%eax
   e16f5:	40 c0 e6 02          	shl    $0x2,%sil
   e16f9:	41 89 c3             	mov    %eax,%r11d
   e16fc:	41 c0 eb 06          	shr    $0x6,%r11b
   e1700:	41 08 f3             	or     %sil,%r11b
   e1703:	41 0f b6 f3          	movzbl %r11b,%esi
   e1707:	83 e6 3f             	and    $0x3f,%esi
   e170a:	42 0f b6 74 36 03    	movzbl 0x3(%rsi,%r14,1),%esi
   e1710:	41 88 74 1c 02       	mov    %sil,0x2(%r12,%rbx,1)
   e1715:	83 e0 3f             	and    $0x3f,%eax
   e1718:	42 0f b6 44 30 03    	movzbl 0x3(%rax,%r14,1),%eax
   e171e:	41 88 44 1c 03       	mov    %al,0x3(%r12,%rbx,1)
   e1723:	48 89 fb             	mov    %rdi,%rbx
   e1726:	4c 89 d0             	mov    %r10,%rax
   e1729:	4d 39 ea             	cmp    %r13,%r10
   e172c:	0f 82 5e ff ff ff    	jb     e1690 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x510>
   e1732:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   e1737:	48 83 f8 01          	cmp    $0x1,%rax
   e173b:	0f 84 7f 00 00 00    	je     e17c0 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x640>
   e1741:	48 83 f8 02          	cmp    $0x2,%rax
   e1745:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
   e174a:	0f 85 be 00 00 00    	jne    e180e <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x68e>
   e1750:	48 39 f3             	cmp    %rsi,%rbx
   e1753:	0f 83 ca 01 00 00    	jae    e1923 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x7a3>
   e1759:	43 0f b6 3c 2f       	movzbl (%r15,%r13,1),%edi
   e175e:	89 f8                	mov    %edi,%eax
   e1760:	c1 e8 02             	shr    $0x2,%eax
   e1763:	42 0f b6 44 30 03    	movzbl 0x3(%rax,%r14,1),%eax
   e1769:	41 88 04 1c          	mov    %al,(%r12,%rbx,1)
   e176d:	48 8d 43 01          	lea    0x1(%rbx),%rax
   e1771:	48 39 f0             	cmp    %rsi,%rax
   e1774:	0f 83 b9 01 00 00    	jae    e1933 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x7b3>
   e177a:	47 0f b6 54 2f 01    	movzbl 0x1(%r15,%r13,1),%r10d
   e1780:	44 89 d0             	mov    %r10d,%eax
   e1783:	c0 e8 04             	shr    $0x4,%al
   e1786:	40 c0 e7 04          	shl    $0x4,%dil
   e178a:	40 08 c7             	or     %al,%dil
   e178d:	40 0f b6 c7          	movzbl %dil,%eax
   e1791:	83 e0 3f             	and    $0x3f,%eax
   e1794:	42 0f b6 44 30 03    	movzbl 0x3(%rax,%r14,1),%eax
   e179a:	41 88 44 1c 01       	mov    %al,0x1(%r12,%rbx,1)
   e179f:	48 8d 43 02          	lea    0x2(%rbx),%rax
   e17a3:	48 39 f0             	cmp    %rsi,%rax
   e17a6:	0f 83 97 01 00 00    	jae    e1943 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x7c3>
   e17ac:	41 c0 e2 02          	shl    $0x2,%r10b
   e17b0:	41 80 e2 3c          	and    $0x3c,%r10b
   e17b4:	bf 03 00 00 00       	mov    $0x3,%edi
   e17b9:	eb 42                	jmp    e17fd <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x67d>
   e17bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   e17c0:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
   e17c5:	48 39 f3             	cmp    %rsi,%rbx
   e17c8:	0f 83 8a 01 00 00    	jae    e1958 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x7d8>
   e17ce:	47 0f b6 14 2f       	movzbl (%r15,%r13,1),%r10d
   e17d3:	44 89 d0             	mov    %r10d,%eax
   e17d6:	c1 e8 02             	shr    $0x2,%eax
   e17d9:	42 0f b6 44 30 03    	movzbl 0x3(%rax,%r14,1),%eax
   e17df:	41 88 04 1c          	mov    %al,(%r12,%rbx,1)
   e17e3:	48 8d 43 01          	lea    0x1(%rbx),%rax
   e17e7:	48 39 f0             	cmp    %rsi,%rax
   e17ea:	0f 83 78 01 00 00    	jae    e1968 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x7e8>
   e17f0:	41 c0 e2 04          	shl    $0x4,%r10b
   e17f4:	41 80 e2 30          	and    $0x30,%r10b
   e17f8:	bf 02 00 00 00       	mov    $0x2,%edi
   e17fd:	41 0f b6 f2          	movzbl %r10b,%esi
   e1801:	42 0f b6 74 36 03    	movzbl 0x3(%rsi,%r14,1),%esi
   e1807:	41 88 34 04          	mov    %sil,(%r12,%rax,1)
   e180b:	48 01 fb             	add    %rdi,%rbx
   e180e:	48 89 d0             	mov    %rdx,%rax
   e1811:	48 29 d8             	sub    %rbx,%rax
   e1814:	0f 82 f6 00 00 00    	jb     e1910 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x790>
   e181a:	89 df                	mov    %ebx,%edi
   e181c:	f7 df                	neg    %edi
   e181e:	83 e7 03             	and    $0x3,%edi
   e1821:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
   e1826:	0f 84 74 fa ff ff    	je     e12a0 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x120>
   e182c:	48 85 c0             	test   %rax,%rax
   e182f:	74 37                	je     e1868 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x6e8>
   e1831:	41 c6 04 1c 3d       	movb   $0x3d,(%r12,%rbx,1)
   e1836:	83 ff 01             	cmp    $0x1,%edi
   e1839:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
   e183e:	0f 84 5c fa ff ff    	je     e12a0 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x120>
   e1844:	48 83 f8 01          	cmp    $0x1,%rax
   e1848:	74 1e                	je     e1868 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x6e8>
   e184a:	41 c6 44 1c 01 3d    	movb   $0x3d,0x1(%r12,%rbx,1)
   e1850:	83 ff 02             	cmp    $0x2,%edi
   e1853:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
   e1858:	0f 84 42 fa ff ff    	je     e12a0 <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x120>
   e185e:	48 83 f8 02          	cmp    $0x2,%rax
   e1862:	0f 85 23 fa ff ff    	jne    e128b <<criterion::bencher::Bencher>::iter::<usize, benchmarks::do_encode_bench_slice::{closure#0}>+0x10b>
   e1868:	48 8d 15 f9 10 1f 00 	lea    0x1f10f9(%rip),%rdx        # 2d2968 <anon.3de03848e2dfaa98f4b0d6779f3da947.2.llvm.11510869118945015205+0x30>
   e186f:	48 89 c7             	mov    %rax,%rdi
   e1872:	48 89 c6             	mov    %rax,%rsi
   e1875:	ff 15 e5 de 1f 00    	call   *0x1fdee5(%rip)        # 2df760 <_DYNAMIC+0x510>
   e187b:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
   e1880:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   e1885:	8b 54 24 24          	mov    0x24(%rsp),%edx
   e1889:	ff 15 b9 e2 1f 00    	call   *0x1fe2b9(%rip)        # 2dfb48 <_DYNAMIC+0x8f8>
   e188f:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
   e1894:	48 89 03             	mov    %rax,(%rbx)
   e1897:	89 53 08             	mov    %edx,0x8(%rbx)
   e189a:	48 8d 7c 24 58       	lea    0x58(%rsp),%rdi
   e189f:	ff 15 1b dc 1f 00    	call   *0x1fdc1b(%rip)        # 2df4c0 <_DYNAMIC+0x270>
   e18a5:	48 89 43 10          	mov    %rax,0x10(%rbx)
   e18a9:	89 53 18             	mov    %edx,0x18(%rbx)
   e18ac:	48 83 c4 68          	add    $0x68,%rsp
   e18b0:	5b                   	pop    %rbx
   e18b1:	41 5c                	pop    %r12
   e18b3:	41 5d                	pop    %r13
   e18b5:	41 5e                	pop    %r14
   e18b7:	41 5f                	pop    %r15
   e18b9:	5d                   	pop    %rbp
   e18ba:	c3                   	ret    
   e18bb:	48 8d 73 20          	lea    0x20(%rbx),%rsi
   e18bf:	48 8d 0d 22 13 1f 00 	lea    0x1f1322(%rip),%rcx        # 2d2be8 <anon.06faec34da25a19a7b2f7c11a228e538.19.llvm.6146696725461908352+0x160>
   e18c6:	48 89 df             	mov    %rbx,%rdi
   e18c9:	ff 15 21 dd 1f 00    	call   *0x1fdd21(%rip)        # 2df5f0 <_DYNAMIC+0x3a0>
   e18cf:	48 8d 70 03          	lea    0x3(%rax),%rsi
   e18d3:	48 8d 0d f6 12 1f 00 	lea    0x1f12f6(%rip),%rcx        # 2d2bd0 <anon.06faec34da25a19a7b2f7c11a228e538.19.llvm.6146696725461908352+0x148>
   e18da:	48 89 c7             	mov    %rax,%rdi
   e18dd:	4c 89 c2             	mov    %r8,%rdx
   e18e0:	ff 15 0a dd 1f 00    	call   *0x1fdd0a(%rip)        # 2df5f0 <_DYNAMIC+0x3a0>
   e18e6:	48 8d 0d 13 13 1f 00 	lea    0x1f1313(%rip),%rcx        # 2d2c00 <anon.06faec34da25a19a7b2f7c11a228e538.19.llvm.6146696725461908352+0x178>
   e18ed:	48 89 c7             	mov    %rax,%rdi
   e18f0:	4c 89 d6             	mov    %r10,%rsi
   e18f3:	4c 89 c2             	mov    %r8,%rdx
   e18f6:	ff 15 f4 dc 1f 00    	call   *0x1fdcf4(%rip)        # 2df5f0 <_DYNAMIC+0x3a0>
   e18fc:	48 8d 73 04          	lea    0x4(%rbx),%rsi
   e1900:	48 8d 0d b1 12 1f 00 	lea    0x1f12b1(%rip),%rcx        # 2d2bb8 <anon.06faec34da25a19a7b2f7c11a228e538.19.llvm.6146696725461908352+0x130>
   e1907:	48 89 df             	mov    %rbx,%rdi
   e190a:	ff 15 e0 dc 1f 00    	call   *0x1fdce0(%rip)        # 2df5f0 <_DYNAMIC+0x3a0>
   e1910:	48 8d 0d 69 10 1f 00 	lea    0x1f1069(%rip),%rcx        # 2d2980 <anon.3de03848e2dfaa98f4b0d6779f3da947.2.llvm.11510869118945015205+0x48>
   e1917:	48 89 df             	mov    %rbx,%rdi
   e191a:	48 89 d6             	mov    %rdx,%rsi
   e191d:	ff 15 cd dc 1f 00    	call   *0x1fdccd(%rip)        # 2df5f0 <_DYNAMIC+0x3a0>
   e1923:	48 8d 15 16 12 1f 00 	lea    0x1f1216(%rip),%rdx        # 2d2b40 <anon.06faec34da25a19a7b2f7c11a228e538.19.llvm.6146696725461908352+0xb8>
   e192a:	48 89 df             	mov    %rbx,%rdi
   e192d:	ff 15 2d de 1f 00    	call   *0x1fde2d(%rip)        # 2df760 <_DYNAMIC+0x510>
   e1933:	48 8d 15 1e 12 1f 00 	lea    0x1f121e(%rip),%rdx        # 2d2b58 <anon.06faec34da25a19a7b2f7c11a228e538.19.llvm.6146696725461908352+0xd0>
   e193a:	48 89 c7             	mov    %rax,%rdi
   e193d:	ff 15 1d de 1f 00    	call   *0x1fde1d(%rip)        # 2df760 <_DYNAMIC+0x510>
   e1943:	48 8d 15 26 12 1f 00 	lea    0x1f1226(%rip),%rdx        # 2d2b70 <anon.06faec34da25a19a7b2f7c11a228e538.19.llvm.6146696725461908352+0xe8>
   e194a:	48 89 c7             	mov    %rax,%rdi
   e194d:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
   e1952:	ff 15 08 de 1f 00    	call   *0x1fde08(%rip)        # 2df760 <_DYNAMIC+0x510>
   e1958:	48 8d 15 29 12 1f 00 	lea    0x1f1229(%rip),%rdx        # 2d2b88 <anon.06faec34da25a19a7b2f7c11a228e538.19.llvm.6146696725461908352+0x100>
   e195f:	48 89 df             	mov    %rbx,%rdi
   e1962:	ff 15 f8 dd 1f 00    	call   *0x1fddf8(%rip)        # 2df760 <_DYNAMIC+0x510>
   e1968:	48 8d 15 31 12 1f 00 	lea    0x1f1231(%rip),%rdx        # 2d2ba0 <anon.06faec34da25a19a7b2f7c11a228e538.19.llvm.6146696725461908352+0x118>
   e196f:	48 89 c7             	mov    %rax,%rdi
   e1972:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
   e1977:	ff 15 e3 dd 1f 00    	call   *0x1fdde3(%rip)        # 2df760 <_DYNAMIC+0x510>
   e197d:	48 8d 3d 88 1d f4 ff 	lea    -0xbe278(%rip),%rdi        # 2370c <anon.06faec34da25a19a7b2f7c11a228e538.17.llvm.6146696725461908352+0x3d>
   e1984:	48 8d 0d 35 11 1f 00 	lea    0x1f1135(%rip),%rcx        # 2d2ac0 <anon.06faec34da25a19a7b2f7c11a228e538.19.llvm.6146696725461908352+0x38>
   e198b:	4c 8d 05 1e 10 1f 00 	lea    0x1f101e(%rip),%r8        # 2d29b0 <anon.3de03848e2dfaa98f4b0d6779f3da947.2.llvm.11510869118945015205+0x78>
   e1992:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
   e1997:	be 2b 00 00 00       	mov    $0x2b,%esi
   e199c:	ff 15 ae db 1f 00    	call   *0x1fdbae(%rip)        # 2df550 <_DYNAMIC+0x300>
   e19a2:	cc                   	int3   
   e19a3:	cc                   	int3   
   e19a4:	cc                   	int3   
   e19a5:	cc                   	int3   
   e19a6:	cc                   	int3   
   e19a7:	cc                   	int3   
   e19a8:	cc                   	int3   
   e19a9:	cc                   	int3   
   e19aa:	cc                   	int3   
   e19ab:	cc                   	int3   
   e19ac:	cc                   	int3   
   e19ad:	cc                   	int3   
   e19ae:	cc                   	int3   
   e19af:	cc                   	int3   
