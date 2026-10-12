; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_s32_bf_api(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 1
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %82, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 2, -1) %1, i1 false)
  %7 = tail call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, -1) %6, i1 true)
  %8 = xor i32 %7, 31
  %9 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %6)
  %10 = icmp samesign ult i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = lshr i32 %1, 24
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %8, %13
  %15 = trunc nuw i32 %14 to i8
  br label %38

16:                                               ; preds = %5
  %17 = icmp slt i32 %1, 0
  %18 = sub nuw nsw i32 30, %7
  %19 = shl nuw nsw i32 1, %18
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 32
  %22 = zext i32 %6 to i64
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = mul i32 %6, %24
  %26 = sub i32 0, %25
  %27 = shl i32 %24, 1
  %28 = shl i32 %26, 1
  %29 = icmp uge i32 %28, %6
  %30 = icmp slt i32 %26, 0
  %31 = or i1 %30, %29
  %32 = zext i1 %31 to i32
  %33 = trunc nuw nsw i32 %8 to i8
  %34 = or disjoint i32 %27, 1
  %35 = add i32 %34, %32
  %36 = select i1 %17, i8 -64, i8 64
  %37 = or disjoint i8 %36, %33
  br label %38

38:                                               ; preds = %11, %16
  %39 = phi i32 [ 0, %11 ], [ %35, %16 ]
  %40 = phi i8 [ %15, %11 ], [ %37, %16 ]
  %41 = and i8 %40, 31
  %42 = ashr i8 %40, 7
  %43 = sext i8 %42 to i32
  %44 = insertelement <4 x i32> poison, i32 %43, i64 0
  %45 = shufflevector <4 x i32> %44, <4 x i32> poison, <4 x i32> zeroinitializer
  %46 = insertelement <4 x i32> poison, i32 %39, i64 0
  %47 = shufflevector <4 x i32> %46, <4 x i32> poison, <4 x i32> zeroinitializer
  %48 = bitcast <4 x i32> %47 to <2 x i64>
  %49 = and <2 x i64> %0, splat (i64 4294967295)
  %50 = and <2 x i64> %48, splat (i64 4294967295)
  %51 = mul nuw <2 x i64> %50, %49
  %52 = lshr <2 x i64> %51, splat (i64 32)
  %53 = lshr <2 x i64> %0, splat (i64 32)
  %54 = mul nuw <2 x i64> %50, %53
  %55 = and <2 x i64> %54, splat (i64 -4294967296)
  %56 = or disjoint <2 x i64> %52, %55
  %57 = bitcast <2 x i64> %0 to <4 x i32>
  %58 = bitcast <2 x i64> %56 to <4 x i32>
  %59 = icmp slt <4 x i32> %57, zeroinitializer
  %60 = select <4 x i1> %59, <4 x i32> %47, <4 x i32> zeroinitializer
  %61 = icmp slt <4 x i32> %47, zeroinitializer
  %62 = select <4 x i1> %61, <4 x i32> %57, <4 x i32> zeroinitializer
  %63 = add <4 x i32> %60, %62
  %64 = sub <4 x i32> %57, %63
  %65 = add <4 x i32> %64, %58
  %66 = icmp eq i32 %39, 0
  %67 = sext i1 %66 to i32
  %68 = zext nneg i8 %41 to i32
  %69 = shl nuw i32 1, %68
  %70 = add i32 %69, %67
  %71 = insertelement <4 x i32> poison, i32 %70, i64 0
  %72 = shufflevector <4 x i32> %71, <4 x i32> poison, <4 x i32> zeroinitializer
  %73 = icmp slt <4 x i32> %65, zeroinitializer
  %74 = select <4 x i1> %73, <4 x i32> %72, <4 x i32> zeroinitializer
  %75 = add <4 x i32> %74, %65
  %76 = insertelement <4 x i32> poison, i32 %68, i64 0
  %77 = shufflevector <4 x i32> %76, <4 x i32> poison, <4 x i32> zeroinitializer
  %78 = ashr <4 x i32> %75, %77
  %79 = xor <4 x i32> %78, %45
  %80 = sub <4 x i32> %79, %45
  %81 = bitcast <4 x i32> %80 to <2 x i64>
  br label %82

82:                                               ; preds = %2, %38
  %83 = phi <2 x i64> [ %81, %38 ], [ %0, %2 ]
  ret <2 x i64> %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_s64_bf_api(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, 1
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %109, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 2, -1) %1, i1 false)
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, -1) %6, i1 true)
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = xor i32 %8, 63
  %10 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %6)
  %11 = icmp samesign ult i64 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = lshr i64 %1, 56
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %9, %15
  %17 = trunc nuw i32 %16 to i8
  br label %40

18:                                               ; preds = %5
  %19 = icmp slt i64 %1, 0
  %20 = sub nuw nsw i64 62, %7
  %21 = shl nuw nsw i64 1, %20
  %22 = zext nneg i64 %21 to i128
  %23 = shl nuw nsw i128 %22, 64
  %24 = zext i64 %6 to i128
  %25 = udiv i128 %23, %24
  %26 = trunc i128 %25 to i64
  %27 = mul i64 %6, %26
  %28 = sub i64 0, %27
  %29 = shl i64 %26, 1
  %30 = shl i64 %28, 1
  %31 = icmp uge i64 %30, %6
  %32 = icmp slt i64 %28, 0
  %33 = or i1 %32, %31
  %34 = zext i1 %33 to i64
  %35 = trunc nuw nsw i32 %9 to i8
  %36 = or disjoint i64 %29, 1
  %37 = add i64 %36, %34
  %38 = select i1 %19, i8 -64, i8 64
  %39 = or disjoint i8 %38, %35
  br label %40

40:                                               ; preds = %12, %18
  %41 = phi i64 [ 0, %12 ], [ %37, %18 ]
  %42 = phi i8 [ %17, %12 ], [ %39, %18 ]
  %43 = and i8 %42, 63
  %44 = ashr i8 %42, 7
  %45 = sext i8 %44 to i32
  %46 = insertelement <4 x i32> poison, i32 %45, i64 0
  %47 = shufflevector <4 x i32> %46, <4 x i32> poison, <4 x i32> zeroinitializer
  %48 = bitcast <4 x i32> %47 to <2 x i64>
  %49 = insertelement <2 x i64> poison, i64 %41, i64 0
  %50 = shufflevector <2 x i64> %49, <2 x i64> poison, <2 x i32> zeroinitializer
  %51 = bitcast <2 x i64> %0 to <4 x i32>
  %52 = shufflevector <4 x i32> %51, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %53 = bitcast <4 x i32> %52 to <2 x i64>
  %54 = bitcast <2 x i64> %50 to <4 x i32>
  %55 = shufflevector <4 x i32> %54, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %56 = bitcast <4 x i32> %55 to <2 x i64>
  %57 = and <2 x i64> %0, splat (i64 4294967295)
  %58 = and <2 x i64> %50, splat (i64 4294967295)
  %59 = mul nuw <2 x i64> %58, %57
  %60 = and <2 x i64> %56, splat (i64 4294967295)
  %61 = mul nuw <2 x i64> %60, %57
  %62 = and <2 x i64> %53, splat (i64 4294967295)
  %63 = mul nuw <2 x i64> %58, %62
  %64 = mul nuw <2 x i64> %60, %62
  %65 = lshr <2 x i64> %59, splat (i64 32)
  %66 = add nuw <2 x i64> %61, %65
  %67 = and <2 x i64> %66, splat (i64 4294967295)
  %68 = lshr <2 x i64> %66, splat (i64 32)
  %69 = add nuw <2 x i64> %67, %63
  %70 = lshr <2 x i64> %69, splat (i64 32)
  %71 = ashr <4 x i32> %51, <i32 0, i32 31, i32 0, i32 31>
  %72 = shufflevector <4 x i32> %71, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %73 = bitcast <4 x i32> %72 to <2 x i64>
  %74 = and <2 x i64> %50, %73
  %75 = ashr <4 x i32> %54, <i32 0, i32 31, i32 0, i32 31>
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %77 = bitcast <4 x i32> %76 to <2 x i64>
  %78 = and <2 x i64> %0, %77
  %79 = add <2 x i64> %74, %78
  %80 = sub <2 x i64> %0, %79
  %81 = add <2 x i64> %80, %64
  %82 = add <2 x i64> %81, %68
  %83 = add <2 x i64> %82, %70
  %84 = icmp eq i64 %41, 0
  %85 = bitcast <2 x i64> %83 to <4 x i32>
  %86 = ashr <4 x i32> %85, <i32 0, i32 31, i32 0, i32 31>
  %87 = shufflevector <4 x i32> %86, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %88 = bitcast <4 x i32> %87 to <2 x i64>
  %89 = zext nneg i8 %43 to i64
  %90 = shl nuw i64 1, %89
  %91 = sext i1 %84 to i64
  %92 = add i64 %90, %91
  %93 = insertelement <2 x i64> poison, i64 %92, i64 0
  %94 = shufflevector <2 x i64> %93, <2 x i64> poison, <2 x i32> zeroinitializer
  %95 = and <2 x i64> %94, %88
  %96 = add <2 x i64> %95, %83
  %97 = xor i8 %43, 63
  %98 = zext nneg i8 %97 to i64
  %99 = shl nuw i64 1, %98
  %100 = insertelement <2 x i64> poison, i64 %99, i64 0
  %101 = shufflevector <2 x i64> %100, <2 x i64> poison, <2 x i32> zeroinitializer
  %102 = insertelement <2 x i64> poison, i64 %89, i64 0
  %103 = shufflevector <2 x i64> %102, <2 x i64> poison, <2 x i32> zeroinitializer
  %104 = lshr <2 x i64> %96, %103
  %105 = xor <2 x i64> %104, %101
  %106 = sub <2 x i64> %105, %101
  %107 = xor <2 x i64> %106, %48
  %108 = sub <2 x i64> %107, %48
  br label %109

109:                                              ; preds = %2, %40
  %110 = phi <2 x i64> [ %108, %40 ], [ %0, %2 ]
  ret <2 x i64> %110
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
