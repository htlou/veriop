; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/1978f27/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/1978f27/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u16_api_vec256(<4 x i64> noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  %6 = tail call range(i16 0, 16) i16 @llvm.ctlz.i16(i16 range(i16 1, 0) %1, i1 true)
  %7 = trunc nuw nsw i16 %6 to i8
  %8 = xor i8 %7, 15
  %9 = add nuw nsw i32 %5, 65535
  %10 = and i32 %9, %5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  %13 = zext nneg i8 %8 to i32
  %14 = shl nuw i32 65536, %13
  %15 = udiv i32 %14, %5
  %16 = trunc i32 %15 to i16
  %17 = mul i16 %1, %16
  %18 = add i16 %17, %1
  %19 = zext i16 %18 to i32
  %20 = lshr i32 %19, %13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = sub i16 0, %17
  %24 = shl i16 %16, 1
  %25 = shl i16 %23, 1
  %26 = icmp uge i16 %25, %1
  %27 = icmp slt i16 %23, 0
  %28 = or i1 %27, %26
  %29 = zext i1 %28 to i16
  %30 = or disjoint i16 %24, %29
  %31 = or disjoint i8 %8, 64
  br label %32

32:                                               ; preds = %12, %22
  %33 = phi i16 [ %30, %22 ], [ %16, %12 ]
  %34 = phi i8 [ %31, %22 ], [ %8, %12 ]
  %35 = add i16 %33, 1
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %4, %32
  %38 = phi i8 [ %34, %32 ], [ %8, %4 ]
  %39 = zext nneg i8 %38 to i32
  %40 = bitcast <4 x i64> %0 to <16 x i16>
  %41 = tail call <16 x i16> @llvm.x86.avx2.psrli.w(<16 x i16> %40, i32 range(i32 0, 256) %39)
  %42 = bitcast <16 x i16> %41 to <4 x i64>
  br label %60

43:                                               ; preds = %32
  %44 = insertelement <16 x i16> poison, i16 %35, i64 0
  %45 = shufflevector <16 x i16> %44, <16 x i16> poison, <16 x i32> zeroinitializer
  %46 = bitcast <4 x i64> %0 to <16 x i16>
  %47 = tail call <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16> %46, <16 x i16> %45)
  %48 = zext nneg i8 %34 to i32
  %49 = icmp samesign ult i8 %34, 64
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %46, <16 x i16> %47)
  %52 = lshr <16 x i16> %51, splat (i16 1)
  %53 = tail call <16 x i16> @llvm.uadd.sat.v16i16(<16 x i16> %52, <16 x i16> %47)
  %54 = and i32 %48, 31
  %55 = tail call <16 x i16> @llvm.x86.avx2.psrli.w(<16 x i16> %53, i32 range(i32 0, 256) %54)
  %56 = bitcast <16 x i16> %55 to <4 x i64>
  br label %60

57:                                               ; preds = %43
  %58 = tail call <16 x i16> @llvm.x86.avx2.psrli.w(<16 x i16> %47, i32 range(i32 0, 256) %48)
  %59 = bitcast <16 x i16> %58 to <4 x i64>
  br label %60

60:                                               ; preds = %57, %50, %37, %2
  %61 = phi <4 x i64> [ %0, %2 ], [ %42, %37 ], [ %56, %50 ], [ %59, %57 ]
  ret <4 x i64> %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u16bf_api_vec256(<4 x i64> noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp ult i16 %1, 2
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  %6 = tail call range(i16 0, 16) i16 @llvm.ctlz.i16(i16 %1, i1 true)
  %7 = trunc nuw nsw i16 %6 to i8
  %8 = add nuw nsw i32 %5, 65535
  %9 = and i32 %8, %5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = sub nuw nsw i8 14, %7
  br label %31

13:                                               ; preds = %4
  %14 = xor i8 %7, 15
  %15 = zext nneg i8 %14 to i16
  %16 = shl nuw i16 1, %15
  %17 = zext i16 %16 to i32
  %18 = shl nuw i32 %17, 16
  %19 = udiv i32 %18, %5
  %20 = trunc i32 %19 to i16
  %21 = mul i16 %1, %20
  %22 = sub i16 0, %21
  %23 = shl i16 %20, 1
  %24 = shl i16 %22, 1
  %25 = icmp uge i16 %24, %1
  %26 = icmp slt i16 %22, 0
  %27 = or i1 %26, %25
  %28 = zext i1 %27 to i16
  %29 = or disjoint i16 %23, 1
  %30 = add i16 %29, %28
  br label %31

31:                                               ; preds = %11, %13
  %32 = phi i16 [ 0, %11 ], [ %30, %13 ]
  %33 = phi i8 [ %12, %11 ], [ %14, %13 ]
  %34 = insertelement <16 x i16> poison, i16 %32, i64 0
  %35 = shufflevector <16 x i16> %34, <16 x i16> poison, <16 x i32> zeroinitializer
  %36 = bitcast <4 x i64> %0 to <16 x i16>
  %37 = tail call <16 x i16> @llvm.x86.avx2.pmulhu.w(<16 x i16> %36, <16 x i16> %35)
  %38 = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> %36, <16 x i16> %37)
  %39 = lshr <16 x i16> %38, splat (i16 1)
  %40 = tail call <16 x i16> @llvm.uadd.sat.v16i16(<16 x i16> %39, <16 x i16> %37)
  %41 = zext nneg i8 %33 to i32
  %42 = tail call <16 x i16> @llvm.x86.avx2.psrli.w(<16 x i16> %40, i32 range(i32 0, 256) %41)
  %43 = bitcast <16 x i16> %42 to <4 x i64>
  br label %44

44:                                               ; preds = %2, %31
  %45 = phi <4 x i64> [ %43, %31 ], [ %0, %2 ]
  ret <4 x i64> %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s16_api_vec256(<4 x i64> noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %95, label %4

4:                                                ; preds = %2
  %5 = icmp slt i16 %1, 0
  %6 = tail call i16 @llvm.abs.i16(i16 range(i16 1, 0) %1, i1 false)
  %7 = tail call range(i16 0, 16) i16 @llvm.ctlz.i16(i16 %6, i1 true)
  %8 = xor i16 %7, 15
  %9 = zext i16 %6 to i32
  %10 = add nuw nsw i32 %9, 65535
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = lshr i16 %1, 8
  %15 = and i16 %14, 128
  %16 = or disjoint i16 %8, %15
  %17 = trunc nuw i16 %16 to i8
  br label %51

18:                                               ; preds = %4
  %19 = zext nneg i16 %8 to i32
  %20 = shl nuw nsw i32 32768, %19
  %21 = udiv i32 %20, %9
  %22 = trunc i32 %21 to i16
  %23 = mul i16 %6, %22
  %24 = add i16 %23, %6
  %25 = zext i16 %24 to i32
  %26 = lshr i32 %25, %19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = trunc nuw nsw i16 %7 to i8
  %30 = sub nsw i8 14, %29
  br label %42

31:                                               ; preds = %18
  %32 = sub i16 0, %23
  %33 = shl i16 %22, 1
  %34 = shl i16 %32, 1
  %35 = icmp uge i16 %34, %6
  %36 = icmp slt i16 %32, 0
  %37 = or i1 %36, %35
  %38 = zext i1 %37 to i16
  %39 = or disjoint i16 %33, %38
  %40 = trunc nuw nsw i16 %8 to i8
  %41 = or disjoint i8 %40, 64
  br label %42

42:                                               ; preds = %28, %31
  %43 = phi i16 [ %39, %31 ], [ %22, %28 ]
  %44 = phi i8 [ %41, %31 ], [ %30, %28 ]
  %45 = add i16 %43, 1
  %46 = or i8 %44, -128
  %47 = xor i16 %43, -1
  %48 = select i1 %5, i8 %46, i8 %44
  %49 = select i1 %5, i16 %47, i16 %45
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %13, %42
  %52 = phi i8 [ %17, %13 ], [ %48, %42 ]
  %53 = and i8 %52, 31
  %54 = zext nneg i8 %53 to i32
  %55 = shl nsw i32 -1, %54
  %56 = trunc i32 %55 to i16
  %57 = xor i16 %56, -1
  %58 = insertelement <16 x i16> poison, i16 %57, i64 0
  %59 = shufflevector <16 x i16> %58, <16 x i16> poison, <16 x i32> zeroinitializer
  %60 = bitcast <4 x i64> %0 to <16 x i16>
  %61 = icmp slt <16 x i16> %60, zeroinitializer
  %62 = select <16 x i1> %61, <16 x i16> %59, <16 x i16> zeroinitializer
  %63 = add <16 x i16> %62, %60
  %64 = tail call <16 x i16> @llvm.x86.avx2.psrai.w(<16 x i16> %63, i32 range(i32 0, 32) %54)
  %65 = ashr i8 %52, 7
  %66 = sext i8 %65 to i16
  %67 = insertelement <16 x i16> poison, i16 %66, i64 0
  %68 = shufflevector <16 x i16> %67, <16 x i16> poison, <16 x i32> zeroinitializer
  %69 = xor <16 x i16> %64, %68
  %70 = sub <16 x i16> %69, %68
  %71 = bitcast <16 x i16> %70 to <4 x i64>
  br label %95

72:                                               ; preds = %42
  %73 = insertelement <16 x i16> poison, i16 %49, i64 0
  %74 = shufflevector <16 x i16> %73, <16 x i16> poison, <16 x i32> zeroinitializer
  %75 = bitcast <4 x i64> %0 to <16 x i16>
  %76 = tail call <16 x i16> @llvm.x86.avx2.pmulh.w(<16 x i16> %75, <16 x i16> %74)
  %77 = zext i8 %48 to i32
  %78 = and i32 %77, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = ashr i8 %48, 7
  %82 = sext i8 %81 to i16
  %83 = insertelement <16 x i16> poison, i16 %82, i64 0
  %84 = shufflevector <16 x i16> %83, <16 x i16> poison, <16 x i32> zeroinitializer
  %85 = xor <16 x i16> %84, %75
  %86 = sub <16 x i16> %85, %84
  %87 = add <16 x i16> %86, %76
  br label %88

88:                                               ; preds = %80, %72
  %89 = phi <16 x i16> [ %87, %80 ], [ %76, %72 ]
  %90 = and i32 %77, 31
  %91 = tail call <16 x i16> @llvm.x86.avx2.psrai.w(<16 x i16> %89, i32 range(i32 0, 32) %90)
  %92 = lshr <16 x i16> %91, splat (i16 15)
  %93 = add <16 x i16> %92, %91
  %94 = bitcast <16 x i16> %93 to <4 x i64>
  br label %95

95:                                               ; preds = %88, %51, %2
  %96 = phi <4 x i64> [ %0, %2 ], [ %94, %88 ], [ %71, %51 ]
  ret <4 x i64> %96
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s16bf_api_vec256(<4 x i64> noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %64, label %4

4:                                                ; preds = %2
  %5 = tail call i16 @llvm.abs.i16(i16 range(i16 1, 0) %1, i1 false)
  %6 = tail call range(i16 0, 16) i16 @llvm.ctlz.i16(i16 %5, i1 true)
  %7 = xor i16 %6, 15
  %8 = zext i16 %5 to i32
  %9 = add nuw nsw i32 %8, 65535
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = lshr i16 %1, 8
  %14 = and i16 %13, 128
  %15 = or disjoint i16 %7, %14
  %16 = trunc nuw i16 %15 to i8
  br label %36

17:                                               ; preds = %4
  %18 = icmp slt i16 %1, 0
  %19 = zext nneg i16 %7 to i32
  %20 = shl nuw nsw i32 32768, %19
  %21 = udiv i32 %20, %8
  %22 = trunc i32 %21 to i16
  %23 = mul i16 %5, %22
  %24 = sub i16 0, %23
  %25 = shl i16 %22, 1
  %26 = shl i16 %24, 1
  %27 = icmp uge i16 %26, %5
  %28 = icmp slt i16 %24, 0
  %29 = or i1 %28, %27
  %30 = zext i1 %29 to i16
  %31 = trunc nuw nsw i16 %7 to i8
  %32 = or disjoint i16 %25, 1
  %33 = add i16 %32, %30
  %34 = select i1 %18, i8 -64, i8 64
  %35 = or disjoint i8 %34, %31
  br label %36

36:                                               ; preds = %12, %17
  %37 = phi i16 [ 0, %12 ], [ %33, %17 ]
  %38 = phi i8 [ %16, %12 ], [ %35, %17 ]
  %39 = and i8 %38, 31
  %40 = ashr i8 %38, 7
  %41 = sext i8 %40 to i16
  %42 = insertelement <16 x i16> poison, i16 %41, i64 0
  %43 = shufflevector <16 x i16> %42, <16 x i16> poison, <16 x i32> zeroinitializer
  %44 = insertelement <16 x i16> poison, i16 %37, i64 0
  %45 = shufflevector <16 x i16> %44, <16 x i16> poison, <16 x i32> zeroinitializer
  %46 = bitcast <4 x i64> %0 to <16 x i16>
  %47 = tail call <16 x i16> @llvm.x86.avx2.pmulh.w(<16 x i16> %46, <16 x i16> %45)
  %48 = add <16 x i16> %47, %46
  %49 = icmp eq i16 %37, 0
  %50 = zext nneg i8 %39 to i32
  %51 = shl nuw i32 1, %50
  %52 = sext i1 %49 to i32
  %53 = add i32 %51, %52
  %54 = trunc i32 %53 to i16
  %55 = insertelement <16 x i16> poison, i16 %54, i64 0
  %56 = shufflevector <16 x i16> %55, <16 x i16> poison, <16 x i32> zeroinitializer
  %57 = icmp slt <16 x i16> %48, zeroinitializer
  %58 = select <16 x i1> %57, <16 x i16> %56, <16 x i16> zeroinitializer
  %59 = add <16 x i16> %58, %48
  %60 = tail call <16 x i16> @llvm.x86.avx2.psrai.w(<16 x i16> %59, i32 range(i32 0, 32) %50)
  %61 = xor <16 x i16> %43, %60
  %62 = sub <16 x i16> %61, %43
  %63 = bitcast <16 x i16> %62 to <4 x i64>
  br label %64

64:                                               ; preds = %2, %36
  %65 = phi <4 x i64> [ %63, %36 ], [ %0, %2 ]
  ret <4 x i64> %65
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
