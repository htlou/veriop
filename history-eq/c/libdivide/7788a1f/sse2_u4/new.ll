; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/7788a1f/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/7788a1f/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u32_bf_vec_raw(<2 x i64> noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = insertelement <4 x i32> poison, i32 %1, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = bitcast <4 x i32> %5 to <2 x i64>
  %7 = and <2 x i64> %0, splat (i64 4294967295)
  %8 = and <2 x i64> %6, splat (i64 4294967295)
  %9 = mul nuw <2 x i64> %8, %7
  %10 = lshr <2 x i64> %9, splat (i64 32)
  %11 = lshr <2 x i64> %0, splat (i64 32)
  %12 = mul nuw <2 x i64> %8, %11
  %13 = and <2 x i64> %12, splat (i64 -4294967296)
  %14 = or disjoint <2 x i64> %10, %13
  %15 = bitcast <2 x i64> %0 to <4 x i32>
  %16 = bitcast <2 x i64> %14 to <4 x i32>
  %17 = sub <4 x i32> %15, %16
  %18 = lshr <4 x i32> %17, splat (i32 1)
  %19 = add <4 x i32> %18, %16
  %20 = zext i8 %2 to i32
  %21 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %20, i64 0
  %22 = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %19, <4 x i32> %21)
  %23 = bitcast <4 x i32> %22 to <2 x i64>
  ret <2 x i64> %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u64_bf_vec_raw(<2 x i64> noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = insertelement <2 x i64> poison, i64 %1, i64 0
  %5 = shufflevector <2 x i64> %4, <2 x i64> poison, <2 x i32> zeroinitializer
  %6 = and <2 x i64> %0, splat (i64 4294967295)
  %7 = lshr <2 x i64> %0, splat (i64 32)
  %8 = and <2 x i64> %5, splat (i64 4294967295)
  %9 = lshr <2 x i64> %5, splat (i64 32)
  %10 = mul nuw <2 x i64> %8, %6
  %11 = lshr <2 x i64> %10, splat (i64 32)
  %12 = mul nuw <2 x i64> %9, %6
  %13 = mul nuw <2 x i64> %8, %7
  %14 = mul nuw <2 x i64> %9, %7
  %15 = add nuw <2 x i64> %11, %13
  %16 = and <2 x i64> %15, splat (i64 4294967295)
  %17 = lshr <2 x i64> %15, splat (i64 32)
  %18 = add nuw <2 x i64> %16, %12
  %19 = lshr <2 x i64> %18, splat (i64 32)
  %20 = add nuw <2 x i64> %17, %14
  %21 = add nuw <2 x i64> %20, %19
  %22 = sub <2 x i64> %0, %21
  %23 = lshr <2 x i64> %22, splat (i64 1)
  %24 = add <2 x i64> %23, %21
  %25 = zext i8 %2 to i32
  %26 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %25, i64 0
  %27 = bitcast <4 x i32> %26 to <2 x i64>
  %28 = tail call <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %24, <2 x i64> %27)
  ret <2 x i64> %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u32_bf_vec_api(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %52, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %1)
  %7 = icmp samesign ult i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = sub nuw nsw i32 30, %5
  br label %29

10:                                               ; preds = %4
  %11 = xor i32 %5, 31
  %12 = shl nuw i32 1, %11
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 %13, 32
  %15 = zext i32 %1 to i64
  %16 = udiv i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = mul i32 %1, %17
  %19 = sub i32 0, %18
  %20 = shl nuw nsw i64 %16, 1
  %21 = shl i32 %19, 1
  %22 = icmp uge i32 %21, %1
  %23 = icmp slt i32 %19, 0
  %24 = or i1 %23, %22
  %25 = zext i1 %24 to i64
  %26 = or disjoint i64 %20, 1
  %27 = add nuw nsw i64 %26, %25
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %8, %10
  %30 = phi i32 [ 0, %8 ], [ %28, %10 ]
  %31 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %32 = insertelement <4 x i32> poison, i32 %30, i64 0
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> zeroinitializer
  %34 = bitcast <4 x i32> %33 to <2 x i64>
  %35 = and <2 x i64> %0, splat (i64 4294967295)
  %36 = and <2 x i64> %34, splat (i64 4294967295)
  %37 = mul nuw <2 x i64> %36, %35
  %38 = lshr <2 x i64> %37, splat (i64 32)
  %39 = lshr <2 x i64> %0, splat (i64 32)
  %40 = mul nuw <2 x i64> %36, %39
  %41 = and <2 x i64> %40, splat (i64 -4294967296)
  %42 = or disjoint <2 x i64> %38, %41
  %43 = bitcast <2 x i64> %0 to <4 x i32>
  %44 = bitcast <2 x i64> %42 to <4 x i32>
  %45 = sub <4 x i32> %43, %44
  %46 = lshr <4 x i32> %45, splat (i32 1)
  %47 = add <4 x i32> %46, %44
  %48 = insertelement <4 x i32> poison, i32 %31, i64 0
  %49 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> zeroinitializer
  %50 = lshr <4 x i32> %47, %49
  %51 = bitcast <4 x i32> %50 to <2 x i64>
  br label %52

52:                                               ; preds = %2, %29
  %53 = phi <2 x i64> [ %51, %29 ], [ %0, %2 ]
  ret <2 x i64> %53
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local <2 x i64> @target_u64_bf_vec_api(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %104, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = sub nuw nsw i32 62, %6
  br label %75

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %16, label %66

16:                                               ; preds = %12
  %17 = shl i64 %1, %5
  %18 = shl i64 %14, %5
  %19 = lshr i64 %17, 32
  %20 = and i64 %17, 4294967295
  %21 = udiv i64 %18, %19
  %22 = mul i64 %21, %19
  %23 = urem i64 %18, %19
  br label %24

24:                                               ; preds = %32, %16
  %25 = phi i64 [ %21, %16 ], [ %33, %32 ]
  %26 = phi i64 [ %23, %16 ], [ %34, %32 ]
  %27 = icmp ugt i64 %25, 4294967295
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = mul nuw i64 %25, %20
  %30 = shl i64 %26, 32
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %24
  %33 = add i64 %25, -1
  %34 = add i64 %26, %19
  %35 = icmp ult i64 %34, 4294967296
  br i1 %35, label %24, label %36

36:                                               ; preds = %32, %28
  %37 = phi i64 [ %33, %32 ], [ %25, %28 ]
  %38 = shl i64 %18, 32
  %39 = mul i64 %37, %17
  %40 = sub i64 %38, %39
  %41 = udiv i64 %40, %19
  %42 = mul i64 %41, %19
  %43 = urem i64 %40, %19
  br label %44

44:                                               ; preds = %52, %36
  %45 = phi i64 [ %41, %36 ], [ %53, %52 ]
  %46 = phi i64 [ %43, %36 ], [ %54, %52 ]
  %47 = icmp ugt i64 %45, 4294967295
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = mul nuw i64 %45, %20
  %50 = shl i64 %46, 32
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %44
  %53 = add i64 %45, -1
  %54 = add i64 %46, %19
  %55 = icmp ult i64 %54, 4294967296
  br i1 %55, label %44, label %56

56:                                               ; preds = %52, %48
  %57 = phi i64 [ %53, %52 ], [ %45, %48 ]
  %58 = shl i64 %40, 32
  %59 = mul i64 %57, %17
  %60 = sub i64 %58, %59
  %61 = lshr i64 %60, %5
  %62 = shl i64 %37, 33
  %63 = shl i64 %57, 1
  %64 = add i64 %63, %62
  %65 = or disjoint i64 %64, 1
  br label %66

66:                                               ; preds = %56, %12
  %67 = phi i64 [ %61, %56 ], [ -1, %12 ]
  %68 = phi i64 [ %65, %56 ], [ -1, %12 ]
  %69 = shl i64 %67, 1
  %70 = icmp uge i64 %69, %1
  %71 = icmp slt i64 %67, 0
  %72 = or i1 %71, %70
  %73 = zext i1 %72 to i64
  %74 = add i64 %68, %73
  br label %75

75:                                               ; preds = %10, %66
  %76 = phi i64 [ 0, %10 ], [ %74, %66 ]
  %77 = phi i32 [ %11, %10 ], [ %7, %66 ]
  %78 = and i32 %77, 63
  %79 = insertelement <2 x i64> poison, i64 %76, i64 0
  %80 = shufflevector <2 x i64> %79, <2 x i64> poison, <2 x i32> zeroinitializer
  %81 = and <2 x i64> %0, splat (i64 4294967295)
  %82 = lshr <2 x i64> %0, splat (i64 32)
  %83 = and <2 x i64> %80, splat (i64 4294967295)
  %84 = lshr <2 x i64> %80, splat (i64 32)
  %85 = mul nuw <2 x i64> %83, %81
  %86 = lshr <2 x i64> %85, splat (i64 32)
  %87 = mul nuw <2 x i64> %84, %81
  %88 = mul nuw <2 x i64> %83, %82
  %89 = mul nuw <2 x i64> %84, %82
  %90 = add nuw <2 x i64> %86, %88
  %91 = and <2 x i64> %90, splat (i64 4294967295)
  %92 = lshr <2 x i64> %90, splat (i64 32)
  %93 = add nuw <2 x i64> %91, %87
  %94 = lshr <2 x i64> %93, splat (i64 32)
  %95 = add nuw <2 x i64> %92, %89
  %96 = add nuw <2 x i64> %95, %94
  %97 = sub <2 x i64> %0, %96
  %98 = lshr <2 x i64> %97, splat (i64 1)
  %99 = add <2 x i64> %98, %96
  %100 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %78, i64 0
  %101 = bitcast <4 x i32> %100 to <2 x i64>
  %102 = shufflevector <2 x i64> %101, <2 x i64> poison, <2 x i32> zeroinitializer
  %103 = lshr <2 x i64> %99, %102
  br label %104

104:                                              ; preds = %2, %75
  %105 = phi <2 x i64> [ %103, %75 ], [ %0, %2 ]
  ret <2 x i64> %105
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32>, <4 x i32>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64>, <2 x i64>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
