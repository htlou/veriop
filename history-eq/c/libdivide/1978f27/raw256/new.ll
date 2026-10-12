; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/1978f27/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/1978f27/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u16_raw_vec256(<4 x i64> noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i16 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext i8 %2 to i32
  %7 = bitcast <4 x i64> %0 to <16 x i16>
  %8 = tail call <16 x i16> @llvm.x86.avx2.psrli.w(<16 x i16> %7, i32 range(i32 0, 256) %6)
  br label %25

9:                                                ; preds = %3
  %10 = insertelement <16 x i16> poison, i16 %1, i64 0
  %11 = shufflevector <16 x i16> %10, <16 x i16> poison, <16 x i32> zeroinitializer
  %12 = bitcast <4 x i64> %0 to <16 x i16>
  %13 = tail call <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16> %12, <16 x i16> %11)
  %14 = zext i8 %2 to i32
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %9
  %18 = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %12, <16 x i16> %13)
  %19 = lshr <16 x i16> %18, splat (i16 1)
  %20 = tail call <16 x i16> @llvm.uadd.sat.v16i16(<16 x i16> %19, <16 x i16> %13)
  %21 = and i32 %14, 31
  %22 = tail call <16 x i16> @llvm.x86.avx2.psrli.w(<16 x i16> %20, i32 range(i32 0, 256) %21)
  br label %25

23:                                               ; preds = %9
  %24 = tail call <16 x i16> @llvm.x86.avx2.psrli.w(<16 x i16> %13, i32 range(i32 0, 256) %14)
  br label %25

25:                                               ; preds = %5, %17, %23
  %26 = phi <16 x i16> [ %8, %5 ], [ %22, %17 ], [ %24, %23 ]
  %27 = bitcast <16 x i16> %26 to <4 x i64>
  ret <4 x i64> %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u16bf_raw_vec256(<4 x i64> noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = insertelement <16 x i16> poison, i16 %1, i64 0
  %5 = shufflevector <16 x i16> %4, <16 x i16> poison, <16 x i32> zeroinitializer
  %6 = bitcast <4 x i64> %0 to <16 x i16>
  %7 = tail call <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16> %6, <16 x i16> %5)
  %8 = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %6, <16 x i16> %7)
  %9 = lshr <16 x i16> %8, splat (i16 1)
  %10 = tail call <16 x i16> @llvm.uadd.sat.v16i16(<16 x i16> %9, <16 x i16> %7)
  %11 = zext i8 %2 to i32
  %12 = tail call <16 x i16> @llvm.x86.avx2.psrli.w(<16 x i16> %10, i32 range(i32 0, 256) %11)
  %13 = bitcast <16 x i16> %12 to <4 x i64>
  ret <4 x i64> %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s16_raw_vec256(<4 x i64> noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i16 %1, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = and i8 %2, 31
  %7 = zext nneg i8 %6 to i32
  %8 = shl nsw i32 -1, %7
  %9 = trunc i32 %8 to i16
  %10 = xor i16 %9, -1
  %11 = insertelement <16 x i16> poison, i16 %10, i64 0
  %12 = shufflevector <16 x i16> %11, <16 x i16> poison, <16 x i32> zeroinitializer
  %13 = bitcast <4 x i64> %0 to <16 x i16>
  %14 = icmp slt <16 x i16> %13, zeroinitializer
  %15 = select <16 x i1> %14, <16 x i16> %12, <16 x i16> zeroinitializer
  %16 = add <16 x i16> %15, %13
  %17 = tail call <16 x i16> @llvm.x86.avx2.psrai.w(<16 x i16> %16, i32 range(i32 0, 32) %7)
  %18 = ashr i8 %2, 7
  %19 = sext i8 %18 to i16
  %20 = insertelement <16 x i16> poison, i16 %19, i64 0
  %21 = shufflevector <16 x i16> %20, <16 x i16> poison, <16 x i32> zeroinitializer
  %22 = xor <16 x i16> %17, %21
  %23 = sub <16 x i16> %22, %21
  br label %46

24:                                               ; preds = %3
  %25 = insertelement <16 x i16> poison, i16 %1, i64 0
  %26 = shufflevector <16 x i16> %25, <16 x i16> poison, <16 x i32> zeroinitializer
  %27 = bitcast <4 x i64> %0 to <16 x i16>
  %28 = tail call <16 x i16> @llvm.x86.avx2.pmulh.w(<16 x i16> %27, <16 x i16> %26)
  %29 = zext i8 %2 to i32
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = ashr i8 %2, 7
  %34 = sext i8 %33 to i16
  %35 = insertelement <16 x i16> poison, i16 %34, i64 0
  %36 = shufflevector <16 x i16> %35, <16 x i16> poison, <16 x i32> zeroinitializer
  %37 = xor <16 x i16> %36, %27
  %38 = sub <16 x i16> %37, %36
  %39 = add <16 x i16> %38, %28
  br label %40

40:                                               ; preds = %32, %24
  %41 = phi <16 x i16> [ %39, %32 ], [ %28, %24 ]
  %42 = and i32 %29, 31
  %43 = tail call <16 x i16> @llvm.x86.avx2.psrai.w(<16 x i16> %41, i32 range(i32 0, 32) %42)
  %44 = lshr <16 x i16> %43, splat (i16 15)
  %45 = add <16 x i16> %44, %43
  br label %46

46:                                               ; preds = %5, %40
  %47 = phi <16 x i16> [ %45, %40 ], [ %23, %5 ]
  %48 = bitcast <16 x i16> %47 to <4 x i64>
  ret <4 x i64> %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s16bf_raw_vec256(<4 x i64> noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 31
  %5 = ashr i8 %2, 7
  %6 = sext i8 %5 to i16
  %7 = insertelement <16 x i16> poison, i16 %6, i64 0
  %8 = shufflevector <16 x i16> %7, <16 x i16> poison, <16 x i32> zeroinitializer
  %9 = insertelement <16 x i16> poison, i16 %1, i64 0
  %10 = shufflevector <16 x i16> %9, <16 x i16> poison, <16 x i32> zeroinitializer
  %11 = bitcast <4 x i64> %0 to <16 x i16>
  %12 = tail call <16 x i16> @llvm.x86.avx2.pmulh.w(<16 x i16> %11, <16 x i16> %10)
  %13 = add <16 x i16> %12, %11
  %14 = icmp eq i16 %1, 0
  %15 = zext nneg i8 %4 to i32
  %16 = shl nuw i32 1, %15
  %17 = sext i1 %14 to i32
  %18 = add i32 %16, %17
  %19 = trunc i32 %18 to i16
  %20 = insertelement <16 x i16> poison, i16 %19, i64 0
  %21 = shufflevector <16 x i16> %20, <16 x i16> poison, <16 x i32> zeroinitializer
  %22 = icmp slt <16 x i16> %13, zeroinitializer
  %23 = select <16 x i1> %22, <16 x i16> %21, <16 x i16> zeroinitializer
  %24 = add <16 x i16> %23, %13
  %25 = tail call <16 x i16> @llvm.x86.avx2.psrai.w(<16 x i16> %24, i32 range(i32 0, 32) %15)
  %26 = xor <16 x i16> %25, %8
  %27 = sub <16 x i16> %26, %8
  %28 = bitcast <16 x i16> %27 to <4 x i64>
  ret <4 x i64> %28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.psrli.w(<16 x i16>, i32) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16>, <16 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.uadd.sat.v16i16(<16 x i16>, <16 x i16>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.usub.sat.v16i16(<16 x i16>, <16 x i16>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.psrai.w(<16 x i16>, i32) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmulh.w(<16 x i16>, <16 x i16>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
