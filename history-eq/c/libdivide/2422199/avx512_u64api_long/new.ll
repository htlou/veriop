; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/2422199/wrap_vec.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/2422199/wrap_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u32_vec_raw(<8 x i64> noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = zext i8 %2 to i32
  %7 = bitcast <8 x i64> %0 to <16 x i32>
  %8 = tail call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %7, i32 range(i32 0, 256) %6)
  br label %37

9:                                                ; preds = %3
  %10 = insertelement <16 x i32> poison, i32 %1, i64 0
  %11 = shufflevector <16 x i32> %10, <16 x i32> poison, <16 x i32> zeroinitializer
  %12 = bitcast <16 x i32> %11 to <8 x i64>
  %13 = and <8 x i64> %0, splat (i64 4294967295)
  %14 = and <8 x i64> %12, splat (i64 4294967295)
  %15 = mul nuw <8 x i64> %14, %13
  %16 = lshr <8 x i64> %15, splat (i64 32)
  %17 = lshr <8 x i64> %0, splat (i64 32)
  %18 = mul nuw <8 x i64> %14, %17
  %19 = and <8 x i64> %18, splat (i64 -4294967296)
  %20 = or disjoint <8 x i64> %16, %19
  %21 = zext i8 %2 to i32
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %9
  %25 = and i32 %21, 31
  %26 = bitcast <8 x i64> %0 to <16 x i32>
  %27 = bitcast <8 x i64> %20 to <16 x i32>
  %28 = sub <16 x i32> %26, %27
  %29 = lshr <16 x i32> %28, splat (i32 1)
  %30 = add <16 x i32> %29, %27
  %31 = insertelement <16 x i32> poison, i32 %25, i64 0
  %32 = shufflevector <16 x i32> %31, <16 x i32> poison, <16 x i32> zeroinitializer
  %33 = lshr <16 x i32> %30, %32
  br label %37

34:                                               ; preds = %9
  %35 = bitcast <8 x i64> %20 to <16 x i32>
  %36 = tail call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %35, i32 range(i32 0, 256) %21)
  br label %37

37:                                               ; preds = %5, %24, %34
  %38 = phi <16 x i32> [ %8, %5 ], [ %33, %24 ], [ %36, %34 ]
  %39 = bitcast <16 x i32> %38 to <8 x i64>
  ret <8 x i64> %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u64_vec_raw(<8 x i64> noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = zext i8 %2 to i32
  %7 = tail call <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64> %0, i32 range(i32 0, 256) %6)
  br label %47

8:                                                ; preds = %3
  %9 = insertelement <8 x i64> poison, i64 %1, i64 0
  %10 = shufflevector <8 x i64> %9, <8 x i64> poison, <8 x i32> zeroinitializer
  %11 = bitcast <8 x i64> %0 to <16 x i32>
  %12 = shufflevector <16 x i32> %11, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %13 = bitcast <16 x i32> %12 to <8 x i64>
  %14 = bitcast <8 x i64> %10 to <16 x i32>
  %15 = shufflevector <16 x i32> %14, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %16 = bitcast <16 x i32> %15 to <8 x i64>
  %17 = and <8 x i64> %0, splat (i64 4294967295)
  %18 = and <8 x i64> %10, splat (i64 4294967295)
  %19 = mul nuw <8 x i64> %18, %17
  %20 = and <8 x i64> %16, splat (i64 4294967295)
  %21 = mul nuw <8 x i64> %20, %17
  %22 = and <8 x i64> %13, splat (i64 4294967295)
  %23 = mul nuw <8 x i64> %22, %18
  %24 = mul nuw <8 x i64> %20, %22
  %25 = lshr <8 x i64> %19, splat (i64 32)
  %26 = add nuw <8 x i64> %21, %25
  %27 = and <8 x i64> %26, splat (i64 4294967295)
  %28 = lshr <8 x i64> %26, splat (i64 32)
  %29 = add nuw <8 x i64> %27, %23
  %30 = lshr <8 x i64> %29, splat (i64 32)
  %31 = add nuw <8 x i64> %28, %24
  %32 = add nuw <8 x i64> %31, %30
  %33 = zext i8 %2 to i32
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %8
  %37 = and i32 %33, 63
  %38 = sub <8 x i64> %0, %32
  %39 = lshr <8 x i64> %38, splat (i64 1)
  %40 = add <8 x i64> %39, %32
  %41 = zext nneg i32 %37 to i64
  %42 = insertelement <8 x i64> poison, i64 %41, i64 0
  %43 = shufflevector <8 x i64> %42, <8 x i64> poison, <8 x i32> zeroinitializer
  %44 = lshr <8 x i64> %40, %43
  br label %47

45:                                               ; preds = %8
  %46 = tail call <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64> %32, i32 range(i32 0, 256) %33)
  br label %47

47:                                               ; preds = %5, %36, %45
  %48 = phi <8 x i64> [ %7, %5 ], [ %44, %36 ], [ %46, %45 ]
  ret <8 x i64> %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u32_vec_api(<8 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %74, label %4

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
  br i1 %38, label %39, label %44

39:                                               ; preds = %9, %34
  %40 = phi i8 [ %10, %9 ], [ %36, %34 ]
  %41 = zext nneg i8 %40 to i32
  %42 = bitcast <8 x i64> %0 to <16 x i32>
  %43 = tail call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %42, i32 range(i32 0, 256) %41)
  br label %71

44:                                               ; preds = %34
  %45 = insertelement <16 x i32> poison, i32 %37, i64 0
  %46 = shufflevector <16 x i32> %45, <16 x i32> poison, <16 x i32> zeroinitializer
  %47 = bitcast <16 x i32> %46 to <8 x i64>
  %48 = and <8 x i64> %0, splat (i64 4294967295)
  %49 = and <8 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <8 x i64> %49, %48
  %51 = lshr <8 x i64> %50, splat (i64 32)
  %52 = lshr <8 x i64> %0, splat (i64 32)
  %53 = mul nuw <8 x i64> %49, %52
  %54 = and <8 x i64> %53, splat (i64 -4294967296)
  %55 = or disjoint <8 x i64> %51, %54
  %56 = zext nneg i8 %36 to i32
  %57 = icmp samesign ult i8 %36, 64
  br i1 %57, label %68, label %58

58:                                               ; preds = %44
  %59 = and i32 %56, 31
  %60 = bitcast <8 x i64> %0 to <16 x i32>
  %61 = bitcast <8 x i64> %55 to <16 x i32>
  %62 = sub <16 x i32> %60, %61
  %63 = lshr <16 x i32> %62, splat (i32 1)
  %64 = add <16 x i32> %63, %61
  %65 = insertelement <16 x i32> poison, i32 %59, i64 0
  %66 = shufflevector <16 x i32> %65, <16 x i32> poison, <16 x i32> zeroinitializer
  %67 = lshr <16 x i32> %64, %66
  br label %71

68:                                               ; preds = %44
  %69 = bitcast <8 x i64> %55 to <16 x i32>
  %70 = tail call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %69, i32 range(i32 0, 256) %56)
  br label %71

71:                                               ; preds = %39, %58, %68
  %72 = phi <16 x i32> [ %43, %39 ], [ %67, %58 ], [ %70, %68 ]
  %73 = bitcast <16 x i32> %72 to <8 x i64>
  br label %74

74:                                               ; preds = %2, %71
  %75 = phi <8 x i64> [ %73, %71 ], [ %0, %2 ]
  ret <8 x i64> %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <8 x i64> @target_u64_vec_api(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %83, label %4

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
  br i1 %40, label %41, label %45

41:                                               ; preds = %10, %36
  %42 = phi i8 [ %11, %10 ], [ %37, %36 ]
  %43 = zext nneg i8 %42 to i32
  %44 = tail call <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64> %0, i32 range(i32 0, 256) %43)
  br label %83

45:                                               ; preds = %36
  %46 = insertelement <8 x i64> poison, i64 %39, i64 0
  %47 = shufflevector <8 x i64> %46, <8 x i64> poison, <8 x i32> zeroinitializer
  %48 = bitcast <8 x i64> %0 to <16 x i32>
  %49 = shufflevector <16 x i32> %48, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %50 = bitcast <16 x i32> %49 to <8 x i64>
  %51 = bitcast <8 x i64> %47 to <16 x i32>
  %52 = shufflevector <16 x i32> %51, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %53 = bitcast <16 x i32> %52 to <8 x i64>
  %54 = and <8 x i64> %0, splat (i64 4294967295)
  %55 = and <8 x i64> %47, splat (i64 4294967295)
  %56 = mul nuw <8 x i64> %55, %54
  %57 = and <8 x i64> %53, splat (i64 4294967295)
  %58 = mul nuw <8 x i64> %57, %54
  %59 = and <8 x i64> %50, splat (i64 4294967295)
  %60 = mul nuw <8 x i64> %55, %59
  %61 = mul nuw <8 x i64> %57, %59
  %62 = lshr <8 x i64> %56, splat (i64 32)
  %63 = add nuw <8 x i64> %58, %62
  %64 = and <8 x i64> %63, splat (i64 4294967295)
  %65 = lshr <8 x i64> %63, splat (i64 32)
  %66 = add nuw <8 x i64> %64, %60
  %67 = lshr <8 x i64> %66, splat (i64 32)
  %68 = add nuw <8 x i64> %65, %61
  %69 = add nuw <8 x i64> %68, %67
  %70 = zext nneg i8 %37 to i32
  %71 = icmp samesign ult i8 %37, 64
  br i1 %71, label %81, label %72

72:                                               ; preds = %45
  %73 = and i32 %70, 63
  %74 = sub <8 x i64> %0, %69
  %75 = lshr <8 x i64> %74, splat (i64 1)
  %76 = add <8 x i64> %75, %69
  %77 = zext nneg i32 %73 to i64
  %78 = insertelement <8 x i64> poison, i64 %77, i64 0
  %79 = shufflevector <8 x i64> %78, <8 x i64> poison, <8 x i32> zeroinitializer
  %80 = lshr <8 x i64> %76, %79
  br label %83

81:                                               ; preds = %45
  %82 = tail call <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64> %69, i32 range(i32 0, 256) %70)
  br label %83

83:                                               ; preds = %81, %72, %41, %2
  %84 = phi <8 x i64> [ %0, %2 ], [ %44, %41 ], [ %80, %72 ], [ %82, %81 ]
  ret <8 x i64> %84
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
