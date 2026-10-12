; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s32_branchfree_lanewise(<4 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %3 [
    i32 -1, label %76
    i32 1, label %76
    i32 0, label %76
  ]

3:                                                ; preds = %2
  %4 = tail call i32 @llvm.abs.i32(i32 range(i32 2, 0) %1, i1 false)
  %5 = tail call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, -1) %4, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %4)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = lshr i32 %1, 24
  %11 = and i32 %10, 128
  %12 = or disjoint i32 %6, %11
  %13 = trunc nuw i32 %12 to i8
  br label %36

14:                                               ; preds = %3
  %15 = icmp slt i32 %1, 0
  %16 = sub nuw nsw i32 30, %5
  %17 = shl nuw nsw i32 1, %16
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 32
  %20 = zext i32 %4 to i64
  %21 = udiv i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = mul i32 %4, %22
  %24 = sub i32 0, %23
  %25 = shl i32 %22, 1
  %26 = shl i32 %24, 1
  %27 = icmp uge i32 %26, %4
  %28 = icmp slt i32 %24, 0
  %29 = or i1 %28, %27
  %30 = zext i1 %29 to i32
  %31 = trunc nuw nsw i32 %6 to i8
  %32 = or disjoint i32 %25, 1
  %33 = add i32 %32, %30
  %34 = select i1 %15, i8 -64, i8 64
  %35 = or disjoint i8 %34, %31
  br label %36

36:                                               ; preds = %9, %14
  %37 = phi i32 [ 0, %9 ], [ %33, %14 ]
  %38 = phi i8 [ %13, %9 ], [ %35, %14 ]
  %39 = and i8 %38, 31
  %40 = ashr i8 %38, 7
  %41 = sext i8 %40 to i32
  %42 = insertelement <8 x i32> poison, i32 %41, i64 0
  %43 = shufflevector <8 x i32> %42, <8 x i32> poison, <8 x i32> zeroinitializer
  %44 = insertelement <8 x i32> poison, i32 %37, i64 0
  %45 = shufflevector <8 x i32> %44, <8 x i32> poison, <8 x i32> zeroinitializer
  %46 = bitcast <8 x i32> %45 to <4 x i64>
  %47 = shl <4 x i64> %0, splat (i64 32)
  %48 = ashr exact <4 x i64> %47, splat (i64 32)
  %49 = shl <4 x i64> %46, splat (i64 32)
  %50 = ashr exact <4 x i64> %49, splat (i64 32)
  %51 = mul nsw <4 x i64> %50, %48
  %52 = lshr <4 x i64> %51, splat (i64 32)
  %53 = ashr <4 x i64> %0, splat (i64 32)
  %54 = mul nsw <4 x i64> %50, %53
  %55 = and <4 x i64> %54, splat (i64 -4294967296)
  %56 = or disjoint <4 x i64> %52, %55
  %57 = bitcast <4 x i64> %56 to <8 x i32>
  %58 = bitcast <4 x i64> %0 to <8 x i32>
  %59 = add <8 x i32> %57, %58
  %60 = icmp eq i32 %37, 0
  %61 = sext i1 %60 to i32
  %62 = zext nneg i8 %39 to i32
  %63 = shl nuw i32 1, %62
  %64 = add i32 %63, %61
  %65 = insertelement <8 x i32> poison, i32 %64, i64 0
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> zeroinitializer
  %67 = icmp slt <8 x i32> %59, zeroinitializer
  %68 = select <8 x i1> %67, <8 x i32> %66, <8 x i32> zeroinitializer
  %69 = add <8 x i32> %68, %59
  %70 = insertelement <8 x i32> poison, i32 %62, i64 0
  %71 = shufflevector <8 x i32> %70, <8 x i32> poison, <8 x i32> zeroinitializer
  %72 = ashr <8 x i32> %69, %71
  %73 = xor <8 x i32> %72, %43
  %74 = sub <8 x i32> %73, %43
  %75 = bitcast <8 x i32> %74 to <4 x i64>
  br label %76

76:                                               ; preds = %2, %2, %2, %36
  %77 = phi <4 x i64> [ %75, %36 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ]
  ret <4 x i64> %77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s64_branchfree_lanewise(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  switch i64 %1, label %3 [
    i64 -1, label %107
    i64 1, label %107
    i64 0, label %107
  ]

3:                                                ; preds = %2
  %4 = tail call i64 @llvm.abs.i64(i64 range(i64 2, 0) %1, i1 false)
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, -1) %4, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %4)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = lshr i64 %1, 56
  %12 = trunc nuw nsw i64 %11 to i32
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %7, %13
  %15 = trunc nuw i32 %14 to i8
  br label %38

16:                                               ; preds = %3
  %17 = icmp slt i64 %1, 0
  %18 = sub nuw nsw i64 62, %5
  %19 = shl nuw nsw i64 1, %18
  %20 = zext nneg i64 %19 to i128
  %21 = shl nuw nsw i128 %20, 64
  %22 = zext i64 %4 to i128
  %23 = udiv i128 %21, %22
  %24 = trunc i128 %23 to i64
  %25 = mul i64 %4, %24
  %26 = sub i64 0, %25
  %27 = shl i64 %24, 1
  %28 = shl i64 %26, 1
  %29 = icmp uge i64 %28, %4
  %30 = icmp slt i64 %26, 0
  %31 = or i1 %30, %29
  %32 = zext i1 %31 to i64
  %33 = trunc nuw nsw i32 %7 to i8
  %34 = or disjoint i64 %27, 1
  %35 = add i64 %34, %32
  %36 = select i1 %17, i8 -64, i8 64
  %37 = or disjoint i8 %36, %33
  br label %38

38:                                               ; preds = %10, %16
  %39 = phi i64 [ 0, %10 ], [ %35, %16 ]
  %40 = phi i8 [ %15, %10 ], [ %37, %16 ]
  %41 = and i8 %40, 63
  %42 = ashr i8 %40, 7
  %43 = sext i8 %42 to i32
  %44 = insertelement <8 x i32> poison, i32 %43, i64 0
  %45 = shufflevector <8 x i32> %44, <8 x i32> poison, <8 x i32> zeroinitializer
  %46 = bitcast <8 x i32> %45 to <4 x i64>
  %47 = insertelement <4 x i64> poison, i64 %39, i64 0
  %48 = shufflevector <4 x i64> %47, <4 x i64> poison, <4 x i32> zeroinitializer
  %49 = bitcast <4 x i64> %0 to <8 x i32>
  %50 = shufflevector <8 x i32> %49, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %51 = bitcast <8 x i32> %50 to <4 x i64>
  %52 = bitcast <4 x i64> %48 to <8 x i32>
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %54 = bitcast <8 x i32> %53 to <4 x i64>
  %55 = and <4 x i64> %0, splat (i64 4294967295)
  %56 = and <4 x i64> %48, splat (i64 4294967295)
  %57 = mul nuw <4 x i64> %56, %55
  %58 = and <4 x i64> %54, splat (i64 4294967295)
  %59 = mul nuw <4 x i64> %58, %55
  %60 = and <4 x i64> %51, splat (i64 4294967295)
  %61 = mul nuw <4 x i64> %56, %60
  %62 = mul nuw <4 x i64> %58, %60
  %63 = lshr <4 x i64> %57, splat (i64 32)
  %64 = add nuw <4 x i64> %59, %63
  %65 = and <4 x i64> %64, splat (i64 4294967295)
  %66 = lshr <4 x i64> %64, splat (i64 32)
  %67 = add nuw <4 x i64> %65, %61
  %68 = lshr <4 x i64> %67, splat (i64 32)
  %69 = ashr <8 x i32> %49, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %70 = shufflevector <8 x i32> %69, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %71 = bitcast <8 x i32> %70 to <4 x i64>
  %72 = and <4 x i64> %48, %71
  %73 = ashr <8 x i32> %52, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %74 = shufflevector <8 x i32> %73, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %75 = bitcast <8 x i32> %74 to <4 x i64>
  %76 = and <4 x i64> %0, %75
  %77 = add <4 x i64> %72, %76
  %78 = sub <4 x i64> %0, %77
  %79 = add <4 x i64> %78, %62
  %80 = add <4 x i64> %79, %66
  %81 = add <4 x i64> %80, %68
  %82 = icmp eq i64 %39, 0
  %83 = bitcast <4 x i64> %81 to <8 x i32>
  %84 = ashr <8 x i32> %83, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %85 = shufflevector <8 x i32> %84, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %86 = bitcast <8 x i32> %85 to <4 x i64>
  %87 = zext nneg i8 %41 to i64
  %88 = shl nuw i64 1, %87
  %89 = sext i1 %82 to i64
  %90 = add i64 %88, %89
  %91 = insertelement <4 x i64> poison, i64 %90, i64 0
  %92 = shufflevector <4 x i64> %91, <4 x i64> poison, <4 x i32> zeroinitializer
  %93 = and <4 x i64> %92, %86
  %94 = add <4 x i64> %93, %81
  %95 = xor i8 %41, 63
  %96 = zext nneg i8 %95 to i64
  %97 = shl nuw i64 1, %96
  %98 = insertelement <4 x i64> poison, i64 %97, i64 0
  %99 = shufflevector <4 x i64> %98, <4 x i64> poison, <4 x i32> zeroinitializer
  %100 = insertelement <4 x i64> poison, i64 %87, i64 0
  %101 = shufflevector <4 x i64> %100, <4 x i64> poison, <4 x i32> zeroinitializer
  %102 = lshr <4 x i64> %94, %101
  %103 = xor <4 x i64> %102, %99
  %104 = sub <4 x i64> %103, %99
  %105 = xor <4 x i64> %104, %46
  %106 = sub <4 x i64> %105, %46
  br label %107

107:                                              ; preds = %2, %2, %2, %38
  %108 = phi <4 x i64> [ %106, %38 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ]
  ret <4 x i64> %108
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
