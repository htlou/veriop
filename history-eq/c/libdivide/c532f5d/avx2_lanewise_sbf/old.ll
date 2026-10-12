; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s32_branchfree_lanewise(<4 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %3 [
    i32 -1, label %156
    i32 1, label %156
    i32 0, label %156
  ]

3:                                                ; preds = %2
  %4 = tail call i32 @llvm.abs.i32(i32 range(i32 2, 0) %1, i1 false)
  %5 = tail call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, -1) %4, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %4)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = lshr i32 %1, 24
  %11 = and i32 %10, 128
  %12 = or disjoint i32 %6, %11
  %13 = trunc nuw i32 %12 to i8
  %14 = or disjoint i8 %13, 32
  br label %38

15:                                               ; preds = %3
  %16 = icmp slt i32 %1, 0
  %17 = sub nuw nsw i32 30, %5
  %18 = shl nuw nsw i32 1, %17
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 32
  %21 = zext i32 %4 to i64
  %22 = udiv i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %4, %23
  %25 = sub i32 0, %24
  %26 = shl i32 %23, 1
  %27 = shl i32 %25, 1
  %28 = icmp uge i32 %27, %4
  %29 = icmp slt i32 %25, 0
  %30 = or i1 %29, %28
  %31 = zext i1 %30 to i32
  %32 = trunc nuw nsw i32 %6 to i8
  %33 = or disjoint i32 %26, 1
  %34 = add i32 %33, %31
  %35 = select i1 %16, i8 -64, i8 64
  %36 = or disjoint i8 %35, %32
  %37 = sext i32 %34 to i64
  br label %38

38:                                               ; preds = %9, %15
  %39 = phi i64 [ 0, %9 ], [ %37, %15 ]
  %40 = phi i8 [ %14, %9 ], [ %36, %15 ]
  %41 = bitcast <4 x i64> %0 to <8 x i32>
  %42 = and i8 %40, 31
  %43 = ashr i8 %40, 7
  %44 = sext i8 %43 to i32
  %45 = lshr i8 %40, 5
  %46 = and i8 %45, 1
  %47 = zext nneg i8 %46 to i32
  %48 = zext nneg i8 %42 to i32
  %49 = shl nuw i32 1, %48
  %50 = sub nuw i32 %49, %47
  %51 = extractelement <8 x i32> %41, i64 0
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %39, %52
  %54 = lshr i64 %53, 32
  %55 = trunc nuw i64 %54 to i32
  %56 = add nsw i32 %51, %55
  %57 = icmp slt i32 %56, 0
  %58 = select i1 %57, i32 %50, i32 0
  %59 = add i32 %58, %56
  %60 = ashr i32 %59, %48
  %61 = xor i32 %60, %44
  %62 = sub nsw i32 %61, %44
  %63 = insertelement <8 x i32> poison, i32 %62, i64 0
  %64 = extractelement <8 x i32> %41, i64 1
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %39, %65
  %67 = lshr i64 %66, 32
  %68 = trunc nuw i64 %67 to i32
  %69 = add nsw i32 %64, %68
  %70 = icmp slt i32 %69, 0
  %71 = select i1 %70, i32 %50, i32 0
  %72 = add i32 %71, %69
  %73 = ashr i32 %72, %48
  %74 = xor i32 %73, %44
  %75 = sub nsw i32 %74, %44
  %76 = insertelement <8 x i32> %63, i32 %75, i64 1
  %77 = extractelement <8 x i32> %41, i64 2
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %39, %78
  %80 = lshr i64 %79, 32
  %81 = trunc nuw i64 %80 to i32
  %82 = add nsw i32 %77, %81
  %83 = icmp slt i32 %82, 0
  %84 = select i1 %83, i32 %50, i32 0
  %85 = add i32 %84, %82
  %86 = ashr i32 %85, %48
  %87 = xor i32 %86, %44
  %88 = sub nsw i32 %87, %44
  %89 = insertelement <8 x i32> %76, i32 %88, i64 2
  %90 = extractelement <8 x i32> %41, i64 3
  %91 = sext i32 %90 to i64
  %92 = mul nsw i64 %39, %91
  %93 = lshr i64 %92, 32
  %94 = trunc nuw i64 %93 to i32
  %95 = add nsw i32 %90, %94
  %96 = icmp slt i32 %95, 0
  %97 = select i1 %96, i32 %50, i32 0
  %98 = add i32 %97, %95
  %99 = ashr i32 %98, %48
  %100 = xor i32 %99, %44
  %101 = sub nsw i32 %100, %44
  %102 = insertelement <8 x i32> %89, i32 %101, i64 3
  %103 = extractelement <8 x i32> %41, i64 4
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %39, %104
  %106 = lshr i64 %105, 32
  %107 = trunc nuw i64 %106 to i32
  %108 = add nsw i32 %103, %107
  %109 = icmp slt i32 %108, 0
  %110 = select i1 %109, i32 %50, i32 0
  %111 = add i32 %110, %108
  %112 = ashr i32 %111, %48
  %113 = xor i32 %112, %44
  %114 = sub nsw i32 %113, %44
  %115 = insertelement <8 x i32> %102, i32 %114, i64 4
  %116 = extractelement <8 x i32> %41, i64 5
  %117 = sext i32 %116 to i64
  %118 = mul nsw i64 %39, %117
  %119 = lshr i64 %118, 32
  %120 = trunc nuw i64 %119 to i32
  %121 = add nsw i32 %116, %120
  %122 = icmp slt i32 %121, 0
  %123 = select i1 %122, i32 %50, i32 0
  %124 = add i32 %123, %121
  %125 = ashr i32 %124, %48
  %126 = xor i32 %125, %44
  %127 = sub nsw i32 %126, %44
  %128 = insertelement <8 x i32> %115, i32 %127, i64 5
  %129 = extractelement <8 x i32> %41, i64 6
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %39, %130
  %132 = lshr i64 %131, 32
  %133 = trunc nuw i64 %132 to i32
  %134 = add nsw i32 %129, %133
  %135 = icmp slt i32 %134, 0
  %136 = select i1 %135, i32 %50, i32 0
  %137 = add i32 %136, %134
  %138 = ashr i32 %137, %48
  %139 = xor i32 %138, %44
  %140 = sub nsw i32 %139, %44
  %141 = insertelement <8 x i32> %128, i32 %140, i64 6
  %142 = extractelement <8 x i32> %41, i64 7
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %39, %143
  %145 = lshr i64 %144, 32
  %146 = trunc nuw i64 %145 to i32
  %147 = add nsw i32 %142, %146
  %148 = icmp slt i32 %147, 0
  %149 = select i1 %148, i32 %50, i32 0
  %150 = add i32 %149, %147
  %151 = ashr i32 %150, %48
  %152 = xor i32 %151, %44
  %153 = sub nsw i32 %152, %44
  %154 = insertelement <8 x i32> %141, i32 %153, i64 7
  %155 = bitcast <8 x i32> %154 to <4 x i64>
  br label %156

156:                                              ; preds = %2, %2, %2, %38
  %157 = phi <4 x i64> [ %155, %38 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ]
  ret <4 x i64> %157
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s64_branchfree_lanewise(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  switch i64 %1, label %3 [
    i64 -1, label %102
    i64 1, label %102
    i64 0, label %102
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
  %43 = sext i8 %42 to i64
  %44 = sext i64 %39 to i128
  %45 = icmp eq i64 %39, 0
  %46 = zext nneg i8 %41 to i64
  %47 = shl nuw i64 1, %46
  %48 = sext i1 %45 to i64
  %49 = add i64 %47, %48
  %50 = extractelement <4 x i64> %0, i64 0
  %51 = sext i64 %50 to i128
  %52 = mul nsw i128 %51, %44
  %53 = lshr i128 %52, 64
  %54 = trunc nuw i128 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = icmp slt i64 %55, 0
  %57 = select i1 %56, i64 %49, i64 0
  %58 = add i64 %57, %55
  %59 = ashr i64 %58, %46
  %60 = xor i64 %59, %43
  %61 = sub nsw i64 %60, %43
  %62 = insertelement <4 x i64> poison, i64 %61, i64 0
  %63 = extractelement <4 x i64> %0, i64 1
  %64 = sext i64 %63 to i128
  %65 = mul nsw i128 %64, %44
  %66 = lshr i128 %65, 64
  %67 = trunc nuw i128 %66 to i64
  %68 = add nsw i64 %63, %67
  %69 = icmp slt i64 %68, 0
  %70 = select i1 %69, i64 %49, i64 0
  %71 = add i64 %70, %68
  %72 = ashr i64 %71, %46
  %73 = xor i64 %72, %43
  %74 = sub nsw i64 %73, %43
  %75 = insertelement <4 x i64> %62, i64 %74, i64 1
  %76 = extractelement <4 x i64> %0, i64 2
  %77 = sext i64 %76 to i128
  %78 = mul nsw i128 %77, %44
  %79 = lshr i128 %78, 64
  %80 = trunc nuw i128 %79 to i64
  %81 = add nsw i64 %76, %80
  %82 = icmp slt i64 %81, 0
  %83 = select i1 %82, i64 %49, i64 0
  %84 = add i64 %83, %81
  %85 = ashr i64 %84, %46
  %86 = xor i64 %85, %43
  %87 = sub nsw i64 %86, %43
  %88 = insertelement <4 x i64> %75, i64 %87, i64 2
  %89 = extractelement <4 x i64> %0, i64 3
  %90 = sext i64 %89 to i128
  %91 = mul nsw i128 %90, %44
  %92 = lshr i128 %91, 64
  %93 = trunc nuw i128 %92 to i64
  %94 = add nsw i64 %89, %93
  %95 = icmp slt i64 %94, 0
  %96 = select i1 %95, i64 %49, i64 0
  %97 = add i64 %96, %94
  %98 = ashr i64 %97, %46
  %99 = xor i64 %98, %43
  %100 = sub nsw i64 %99, %43
  %101 = insertelement <4 x i64> %88, i64 %100, i64 3
  br label %102

102:                                              ; preds = %2, %2, %2, %38
  %103 = phi <4 x i64> [ %101, %38 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ]
  ret <4 x i64> %103
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
