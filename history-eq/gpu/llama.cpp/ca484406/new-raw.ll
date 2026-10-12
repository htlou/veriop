; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/ca484406/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/ca484406/new.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @ggml_cpu_fp16_to_fp32(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i64 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %8, %3
  %6 = phi i64 [ 0, %3 ], [ %16, %8 ]
  %7 = icmp slt i64 %6, %2
  br i1 %7, label %18, label %26

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %16, %8 ], [ 0, %3 ]
  %10 = sub nsw i64 %2, %9
  %11 = tail call i64 @llvm.riscv.vsetvli.i64(i64 %10, i64 1, i64 0)
  %12 = getelementptr inbounds nuw i16, ptr %0, i64 %9
  %13 = tail call <vscale x 4 x half> @llvm.riscv.vle.nxv4f16.i64(<vscale x 4 x half> poison, ptr %12, i64 %11)
  %14 = tail call <vscale x 4 x float> @llvm.riscv.vfwcvt.f.f.v.nxv4f32.nxv4f16.i64(<vscale x 4 x float> poison, <vscale x 4 x half> %13, i64 %11)
  %15 = getelementptr inbounds nuw float, ptr %1, i64 %9
  tail call void @llvm.riscv.vse.nxv4f32.i64(<vscale x 4 x float> %14, ptr %15, i64 %11)
  %16 = add nuw nsw i64 %11, %9
  %17 = icmp slt i64 %16, %2
  br i1 %17, label %8, label %5, !llvm.loop !8

18:                                               ; preds = %5, %18
  %19 = phi i64 [ %24, %18 ], [ %6, %5 ]
  %20 = getelementptr inbounds nuw i16, ptr %0, i64 %19
  %21 = load half, ptr %20, align 2, !tbaa !11
  %22 = fpext half %21 to float
  %23 = getelementptr inbounds nuw float, ptr %1, i64 %19
  store float %22, ptr %23, align 4, !tbaa !15
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, %2
  br i1 %25, label %26, label %18, !llvm.loop !17

26:                                               ; preds = %18, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.riscv.vsetvli.i64(i64, i64 immarg, i64 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 4 x half> @llvm.riscv.vle.nxv4f16.i64(<vscale x 4 x half>, ptr nocapture, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x float> @llvm.riscv.vfwcvt.f.f.v.nxv4f32.nxv4f16.i64(<vscale x 4 x float>, <vscale x 4 x half>, i64) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.riscv.vse.nxv4f32.i64(<vscale x 4 x float>, ptr nocapture, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) vscale_range(2,1024)
define dso_local signext i32 @target(i16 noundef zeroext %0) local_unnamed_addr #5 {
  %2 = alloca [8 x i16], align 2
  %3 = alloca [8 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  store i16 %0, ptr %2, align 2, !tbaa !11
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %0, ptr %4, align 2, !tbaa !11
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 %0, ptr %5, align 2, !tbaa !11
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i16 %0, ptr %6, align 2, !tbaa !11
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 %0, ptr %7, align 2, !tbaa !11
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i16 %0, ptr %8, align 2, !tbaa !11
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i16 %0, ptr %9, align 2, !tbaa !11
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 %0, ptr %10, align 2, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  br label %11

11:                                               ; preds = %11, %1
  %12 = phi i64 [ %19, %11 ], [ 0, %1 ]
  %13 = sub nsw i64 8, %12
  %14 = tail call i64 @llvm.riscv.vsetvli.i64(i64 %13, i64 1, i64 0)
  %15 = getelementptr inbounds nuw i16, ptr %2, i64 %12
  %16 = call <vscale x 4 x half> @llvm.riscv.vle.nxv4f16.i64(<vscale x 4 x half> poison, ptr nonnull readonly %15, i64 %14)
  %17 = tail call <vscale x 4 x float> @llvm.riscv.vfwcvt.f.f.v.nxv4f32.nxv4f16.i64(<vscale x 4 x float> poison, <vscale x 4 x half> %16, i64 %14)
  %18 = getelementptr inbounds nuw float, ptr %3, i64 %12
  call void @llvm.riscv.vse.nxv4f32.i64(<vscale x 4 x float> %17, ptr nonnull %18, i64 %14)
  %19 = add nuw nsw i64 %14, %12
  %20 = icmp samesign ult i64 %19, 8
  br i1 %20, label %11, label %21, !llvm.loop !8

21:                                               ; preds = %11
  %22 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret i32 %22
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) vscale_range(2,1024) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zaamo,+zalrsc,+zfhmin,+zicsr,+zifencei,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfh,+zvfhmin,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(none) vscale_range(2,1024) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zaamo,+zalrsc,+zfhmin,+zicsr,+zifencei,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfh,+zvfhmin,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zfhmin1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfh1p0_zvfhmin1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 8, !"SmallDataLimit", i32 0}
!7 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !13, i64 0}
!17 = distinct !{!17, !9, !10}
