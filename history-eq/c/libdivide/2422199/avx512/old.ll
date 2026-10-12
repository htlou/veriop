; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/2422199/wrap_vec.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/2422199/wrap_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u32_vec_raw(<8 x i64> noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = and i8 %2, 31
  %7 = zext nneg i8 %6 to i32
  %8 = bitcast <8 x i64> %0 to <16 x i32>
  %9 = insertelement <16 x i32> poison, i32 %7, i64 0
  %10 = shufflevector <16 x i32> %9, <16 x i32> poison, <16 x i32> zeroinitializer
  %11 = lshr <16 x i32> %8, %10
  br label %40

12:                                               ; preds = %3
  %13 = insertelement <16 x i32> poison, i32 %1, i64 0
  %14 = shufflevector <16 x i32> %13, <16 x i32> poison, <16 x i32> zeroinitializer
  %15 = bitcast <16 x i32> %14 to <8 x i64>
  %16 = and <8 x i64> %0, splat (i64 4294967295)
  %17 = and <8 x i64> %15, splat (i64 4294967295)
  %18 = mul nuw <8 x i64> %17, %16
  %19 = lshr <8 x i64> %18, splat (i64 32)
  %20 = lshr <8 x i64> %0, splat (i64 32)
  %21 = mul nuw <8 x i64> %17, %20
  %22 = and <8 x i64> %21, splat (i64 -4294967296)
  %23 = or disjoint <8 x i64> %19, %22
  %24 = zext i8 %2 to i32
  %25 = and i32 %24, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %12
  %28 = and i32 %24, 31
  %29 = bitcast <8 x i64> %0 to <16 x i32>
  %30 = bitcast <8 x i64> %23 to <16 x i32>
  %31 = sub <16 x i32> %29, %30
  %32 = lshr <16 x i32> %31, splat (i32 1)
  %33 = add <16 x i32> %32, %30
  %34 = insertelement <16 x i32> poison, i32 %28, i64 0
  %35 = shufflevector <16 x i32> %34, <16 x i32> poison, <16 x i32> zeroinitializer
  %36 = lshr <16 x i32> %33, %35
  br label %40

37:                                               ; preds = %12
  %38 = bitcast <8 x i64> %23 to <16 x i32>
  %39 = tail call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %38, i32 range(i32 0, 256) %24)
  br label %40

40:                                               ; preds = %5, %27, %37
  %41 = phi <16 x i32> [ %11, %5 ], [ %36, %27 ], [ %39, %37 ]
  %42 = bitcast <16 x i32> %41 to <8 x i64>
  ret <8 x i64> %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u64_vec_raw(<8 x i64> noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = and i8 %2, 63
  %7 = zext nneg i8 %6 to i64
  %8 = insertelement <8 x i64> poison, i64 %7, i64 0
  %9 = shufflevector <8 x i64> %8, <8 x i64> poison, <8 x i32> zeroinitializer
  %10 = lshr <8 x i64> %0, %9
  br label %50

11:                                               ; preds = %3
  %12 = insertelement <8 x i64> poison, i64 %1, i64 0
  %13 = shufflevector <8 x i64> %12, <8 x i64> poison, <8 x i32> zeroinitializer
  %14 = bitcast <8 x i64> %0 to <16 x i32>
  %15 = shufflevector <16 x i32> %14, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %16 = bitcast <16 x i32> %15 to <8 x i64>
  %17 = bitcast <8 x i64> %13 to <16 x i32>
  %18 = shufflevector <16 x i32> %17, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %19 = bitcast <16 x i32> %18 to <8 x i64>
  %20 = and <8 x i64> %0, splat (i64 4294967295)
  %21 = and <8 x i64> %13, splat (i64 4294967295)
  %22 = mul nuw <8 x i64> %21, %20
  %23 = and <8 x i64> %19, splat (i64 4294967295)
  %24 = mul nuw <8 x i64> %23, %20
  %25 = and <8 x i64> %16, splat (i64 4294967295)
  %26 = mul nuw <8 x i64> %25, %21
  %27 = mul nuw <8 x i64> %23, %25
  %28 = lshr <8 x i64> %22, splat (i64 32)
  %29 = add nuw <8 x i64> %24, %28
  %30 = and <8 x i64> %29, splat (i64 4294967295)
  %31 = lshr <8 x i64> %29, splat (i64 32)
  %32 = add nuw <8 x i64> %30, %26
  %33 = lshr <8 x i64> %32, splat (i64 32)
  %34 = add nuw <8 x i64> %31, %27
  %35 = add nuw <8 x i64> %34, %33
  %36 = zext i8 %2 to i32
  %37 = and i32 %36, 64
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %11
  %40 = and i32 %36, 63
  %41 = sub <8 x i64> %0, %35
  %42 = lshr <8 x i64> %41, splat (i64 1)
  %43 = add <8 x i64> %42, %35
  %44 = zext nneg i32 %40 to i64
  %45 = insertelement <8 x i64> poison, i64 %44, i64 0
  %46 = shufflevector <8 x i64> %45, <8 x i64> poison, <8 x i32> zeroinitializer
  %47 = lshr <8 x i64> %43, %46
  br label %50

48:                                               ; preds = %11
  %49 = tail call <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64> %35, i32 range(i32 0, 256) %36)
  br label %50

50:                                               ; preds = %5, %39, %48
  %51 = phi <8 x i64> [ %10, %5 ], [ %47, %39 ], [ %49, %48 ]
  ret <8 x i64> %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u32_vec_api(<8 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %77, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = trunc nuw nsw i32 %6 to i8
  br label %39

11:                                               ; preds = %4
  %12 = shl nuw i32 1, %6
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 %13, 32
  %15 = zext i32 %1 to i64
  %16 = udiv i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = mul i32 %1, %17
  %19 = add i32 %18, %1
  %20 = icmp ult i32 %19, %12
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = trunc nuw nsw i32 %6 to i8
  br label %34

23:                                               ; preds = %11
  %24 = sub i32 0, %18
  %25 = shl i32 %17, 1
  %26 = shl i32 %24, 1
  %27 = icmp uge i32 %26, %1
  %28 = icmp slt i32 %24, 0
  %29 = or i1 %28, %27
  %30 = zext i1 %29 to i32
  %31 = or disjoint i32 %25, %30
  %32 = trunc nuw nsw i32 %6 to i8
  %33 = or disjoint i8 %32, 64
  br label %34

34:                                               ; preds = %21, %23
  %35 = phi i32 [ %31, %23 ], [ %17, %21 ]
  %36 = phi i8 [ %33, %23 ], [ %22, %21 ]
  %37 = add i32 %35, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %9, %34
  %40 = phi i8 [ %10, %9 ], [ %36, %34 ]
  %41 = and i8 %40, 31
  %42 = zext nneg i8 %41 to i32
  %43 = bitcast <8 x i64> %0 to <16 x i32>
  %44 = insertelement <16 x i32> poison, i32 %42, i64 0
  %45 = shufflevector <16 x i32> %44, <16 x i32> poison, <16 x i32> zeroinitializer
  %46 = lshr <16 x i32> %43, %45
  br label %74

47:                                               ; preds = %34
  %48 = insertelement <16 x i32> poison, i32 %37, i64 0
  %49 = shufflevector <16 x i32> %48, <16 x i32> poison, <16 x i32> zeroinitializer
  %50 = bitcast <16 x i32> %49 to <8 x i64>
  %51 = and <8 x i64> %0, splat (i64 4294967295)
  %52 = and <8 x i64> %50, splat (i64 4294967295)
  %53 = mul nuw <8 x i64> %52, %51
  %54 = lshr <8 x i64> %53, splat (i64 32)
  %55 = lshr <8 x i64> %0, splat (i64 32)
  %56 = mul nuw <8 x i64> %52, %55
  %57 = and <8 x i64> %56, splat (i64 -4294967296)
  %58 = or disjoint <8 x i64> %54, %57
  %59 = zext nneg i8 %36 to i32
  %60 = icmp samesign ult i8 %36, 64
  br i1 %60, label %71, label %61

61:                                               ; preds = %47
  %62 = and i32 %59, 31
  %63 = bitcast <8 x i64> %0 to <16 x i32>
  %64 = bitcast <8 x i64> %58 to <16 x i32>
  %65 = sub <16 x i32> %63, %64
  %66 = lshr <16 x i32> %65, splat (i32 1)
  %67 = add <16 x i32> %66, %64
  %68 = insertelement <16 x i32> poison, i32 %62, i64 0
  %69 = shufflevector <16 x i32> %68, <16 x i32> poison, <16 x i32> zeroinitializer
  %70 = lshr <16 x i32> %67, %69
  br label %74

71:                                               ; preds = %47
  %72 = bitcast <8 x i64> %58 to <16 x i32>
  %73 = tail call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %72, i32 range(i32 0, 256) %59)
  br label %74

74:                                               ; preds = %39, %61, %71
  %75 = phi <16 x i32> [ %46, %39 ], [ %70, %61 ], [ %73, %71 ]
  %76 = bitcast <16 x i32> %75 to <8 x i64>
  br label %77

77:                                               ; preds = %2, %74
  %78 = phi <8 x i64> [ %76, %74 ], [ %0, %2 ]
  ret <8 x i64> %78
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u64_vec_api(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %86, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = trunc nuw nsw i32 %7 to i8
  br label %41

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = zext i64 %14 to i128
  %16 = shl nuw i128 %15, 64
  %17 = zext i64 %1 to i128
  %18 = udiv i128 %16, %17
  %19 = trunc i128 %18 to i64
  %20 = mul i64 %1, %19
  %21 = add i64 %20, %1
  %22 = icmp ult i64 %21, %14
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = trunc nuw nsw i32 %7 to i8
  br label %36

25:                                               ; preds = %12
  %26 = sub i64 0, %20
  %27 = shl i64 %19, 1
  %28 = shl i64 %26, 1
  %29 = icmp uge i64 %28, %1
  %30 = icmp slt i64 %26, 0
  %31 = or i1 %30, %29
  %32 = zext i1 %31 to i64
  %33 = or disjoint i64 %27, %32
  %34 = trunc nuw nsw i32 %7 to i8
  %35 = or disjoint i8 %34, 64
  br label %36

36:                                               ; preds = %23, %25
  %37 = phi i8 [ %35, %25 ], [ %24, %23 ]
  %38 = phi i64 [ %33, %25 ], [ %19, %23 ]
  %39 = add i64 %38, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %10, %36
  %42 = phi i8 [ %11, %10 ], [ %37, %36 ]
  %43 = and i8 %42, 63
  %44 = zext nneg i8 %43 to i64
  %45 = insertelement <8 x i64> poison, i64 %44, i64 0
  %46 = shufflevector <8 x i64> %45, <8 x i64> poison, <8 x i32> zeroinitializer
  %47 = lshr <8 x i64> %0, %46
  br label %86

48:                                               ; preds = %36
  %49 = insertelement <8 x i64> poison, i64 %39, i64 0
  %50 = shufflevector <8 x i64> %49, <8 x i64> poison, <8 x i32> zeroinitializer
  %51 = bitcast <8 x i64> %0 to <16 x i32>
  %52 = shufflevector <16 x i32> %51, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %53 = bitcast <16 x i32> %52 to <8 x i64>
  %54 = bitcast <8 x i64> %50 to <16 x i32>
  %55 = shufflevector <16 x i32> %54, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %56 = bitcast <16 x i32> %55 to <8 x i64>
  %57 = and <8 x i64> %0, splat (i64 4294967295)
  %58 = and <8 x i64> %50, splat (i64 4294967295)
  %59 = mul nuw <8 x i64> %58, %57
  %60 = and <8 x i64> %56, splat (i64 4294967295)
  %61 = mul nuw <8 x i64> %60, %57
  %62 = and <8 x i64> %53, splat (i64 4294967295)
  %63 = mul nuw <8 x i64> %58, %62
  %64 = mul nuw <8 x i64> %60, %62
  %65 = lshr <8 x i64> %59, splat (i64 32)
  %66 = add nuw <8 x i64> %61, %65
  %67 = and <8 x i64> %66, splat (i64 4294967295)
  %68 = lshr <8 x i64> %66, splat (i64 32)
  %69 = add nuw <8 x i64> %67, %63
  %70 = lshr <8 x i64> %69, splat (i64 32)
  %71 = add nuw <8 x i64> %68, %64
  %72 = add nuw <8 x i64> %71, %70
  %73 = zext nneg i8 %37 to i32
  %74 = icmp samesign ult i8 %37, 64
  br i1 %74, label %84, label %75

75:                                               ; preds = %48
  %76 = and i32 %73, 63
  %77 = sub <8 x i64> %0, %72
  %78 = lshr <8 x i64> %77, splat (i64 1)
  %79 = add <8 x i64> %78, %72
  %80 = zext nneg i32 %76 to i64
  %81 = insertelement <8 x i64> poison, i64 %80, i64 0
  %82 = shufflevector <8 x i64> %81, <8 x i64> poison, <8 x i32> zeroinitializer
  %83 = lshr <8 x i64> %79, %82
  br label %86

84:                                               ; preds = %48
  %85 = tail call <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64> %72, i32 range(i32 0, 256) %73)
  br label %86

86:                                               ; preds = %84, %75, %41, %2
  %87 = phi <8 x i64> [ %0, %2 ], [ %47, %41 ], [ %83, %75 ], [ %85, %84 ]
  ret <8 x i64> %87
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32>, i32) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64>, i32) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
