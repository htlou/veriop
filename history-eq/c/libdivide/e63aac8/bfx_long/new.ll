; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/e63aac8/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/e63aac8/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_bfx(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, 1
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %108, label %5

5:                                                ; preds = %2
  %6 = icmp slt i64 %1, 0
  %7 = tail call i64 @llvm.abs.i64(i64 range(i64 2, -1) %1, i1 true)
  %8 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, -1) %7, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = xor i32 %9, 63
  %11 = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %7)
  %12 = icmp samesign ult i64 %11, 2
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = lshr i64 %1, 56
  %15 = trunc nuw nsw i64 %14 to i32
  %16 = and i32 %15, 128
  %17 = or disjoint i32 %10, %16
  %18 = trunc nuw i32 %17 to i8
  br label %85

19:                                               ; preds = %5
  %20 = sub nuw nsw i64 62, %8
  %21 = shl nuw nsw i64 1, %20
  %22 = icmp samesign ult i64 %21, %7
  br i1 %22, label %23, label %70

23:                                               ; preds = %19
  %24 = shl i64 %7, %8
  %25 = lshr i64 %24, 32
  %26 = and i64 %24, 4294967294
  %27 = udiv i64 4611686018427387904, %25
  %28 = mul i64 %27, %25
  %29 = urem i64 4611686018427387904, %25
  br label %30

30:                                               ; preds = %38, %23
  %31 = phi i64 [ %27, %23 ], [ %39, %38 ]
  %32 = phi i64 [ %29, %23 ], [ %40, %38 ]
  %33 = icmp ugt i64 %31, 4294967295
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = mul nuw i64 %31, %26
  %36 = shl i64 %32, 32
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %30
  %39 = add i64 %31, -1
  %40 = add i64 %32, %25
  %41 = icmp ult i64 %40, 4294967296
  br i1 %41, label %30, label %42

42:                                               ; preds = %38, %34
  %43 = phi i64 [ %39, %38 ], [ %31, %34 ]
  %44 = mul i64 %24, %43
  %45 = sub i64 0, %44
  %46 = udiv i64 %45, %25
  %47 = mul i64 %46, %25
  %48 = urem i64 %45, %25
  br label %49

49:                                               ; preds = %57, %42
  %50 = phi i64 [ %46, %42 ], [ %58, %57 ]
  %51 = phi i64 [ %48, %42 ], [ %59, %57 ]
  %52 = icmp ugt i64 %50, 4294967295
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = mul nuw i64 %50, %26
  %55 = shl i64 %51, 32
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %49
  %58 = add i64 %50, -1
  %59 = add i64 %51, %25
  %60 = icmp ult i64 %59, 4294967296
  br i1 %60, label %49, label %61

61:                                               ; preds = %57, %53
  %62 = phi i64 [ %58, %57 ], [ %50, %53 ]
  %63 = shl i64 %45, 32
  %64 = mul i64 %62, %24
  %65 = sub i64 %63, %64
  %66 = lshr i64 %65, %8
  %67 = shl i64 %43, 33
  %68 = shl i64 %62, 1
  %69 = add i64 %68, %67
  br label %70

70:                                               ; preds = %61, %19
  %71 = phi i64 [ %66, %61 ], [ -1, %19 ]
  %72 = phi i64 [ %69, %61 ], [ -2, %19 ]
  %73 = shl i64 %71, 1
  %74 = icmp uge i64 %73, %7
  %75 = icmp slt i64 %71, 0
  %76 = or i1 %75, %74
  %77 = zext i1 %76 to i64
  %78 = or disjoint i64 %72, %77
  %79 = trunc nuw nsw i32 %10 to i8
  %80 = add i64 %78, 1
  %81 = xor i64 %78, -1
  %82 = select i1 %6, i64 %81, i64 %80
  %83 = select i1 %6, i8 -64, i8 64
  %84 = or disjoint i8 %83, %79
  br label %85

85:                                               ; preds = %13, %70
  %86 = phi i64 [ 0, %13 ], [ %82, %70 ]
  %87 = phi i8 [ %18, %13 ], [ %84, %70 ]
  %88 = and i8 %87, 63
  %89 = ashr i8 %87, 7
  %90 = sext i8 %89 to i64
  %91 = xor i64 %86, %90
  %92 = sub nsw i64 %91, %90
  %93 = sext i64 %92 to i128
  %94 = sext i64 %0 to i128
  %95 = mul nsw i128 %93, %94
  %96 = lshr i128 %95, 64
  %97 = trunc nuw i128 %96 to i64
  %98 = add nsw i64 %0, %97
  %99 = lshr i64 %98, 63
  %100 = ashr i64 %98, 63
  %101 = zext nneg i8 %88 to i64
  %102 = shl nuw i64 %99, %101
  %103 = add i64 %100, %98
  %104 = add i64 %103, %102
  %105 = ashr i64 %104, %101
  %106 = xor i64 %105, %90
  %107 = sub nsw i64 %106, %90
  br label %108

108:                                              ; preds = %2, %85
  %109 = phi i64 [ %107, %85 ], [ 0, %2 ]
  ret i64 %109
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
