; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/55788bf/wrap.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/55788bf/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @target_default_then_divide(i32 noundef returned %0) local_unnamed_addr #0 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @target_default_then_divide_s64(i64 noundef returned %0) local_unnamed_addr #0 {
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_default_then_assign(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %59, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %6 = icmp samesign ult i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %1, i1 true)
  %9 = or disjoint i32 %8, 128
  br label %37

10:                                               ; preds = %4
  %11 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %12 = xor i32 %11, 31
  %13 = shl nuw i32 1, %12
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = zext i32 %1 to i64
  %17 = udiv i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = mul i32 %1, %18
  %20 = add i32 %19, %1
  %21 = icmp ult i32 %20, %13
  br i1 %21, label %32, label %22

22:                                               ; preds = %10
  %23 = sub i32 0, %19
  %24 = shl nuw nsw i64 %17, 1
  %25 = shl i32 %23, 1
  %26 = icmp uge i32 %25, %1
  %27 = icmp slt i32 %23, 0
  %28 = or i1 %27, %26
  %29 = zext i1 %28 to i64
  %30 = or disjoint i64 %24, %29
  %31 = or disjoint i32 %12, 64
  br label %32

32:                                               ; preds = %22, %10
  %33 = phi i32 [ %31, %22 ], [ %12, %10 ]
  %34 = phi i64 [ %30, %22 ], [ %17, %10 ]
  %35 = add nuw nsw i64 %34, 1
  %36 = and i64 %35, 4294967295
  br label %37

37:                                               ; preds = %7, %32
  %38 = phi i64 [ 0, %7 ], [ %36, %32 ]
  %39 = phi i32 [ %9, %7 ], [ %33, %32 ]
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = and i32 %39, 31
  %44 = lshr i32 %0, %43
  br label %59

45:                                               ; preds = %37
  %46 = zext i32 %0 to i64
  %47 = mul nuw i64 %38, %46
  %48 = lshr i64 %47, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = icmp samesign ult i32 %39, 64
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = sub i32 %0, %49
  %53 = lshr i32 %52, 1
  %54 = add i32 %53, %49
  %55 = and i32 %39, 31
  %56 = lshr i32 %54, %55
  br label %59

57:                                               ; preds = %45
  %58 = lshr i32 %49, %39
  br label %59

59:                                               ; preds = %57, %51, %42, %2
  %60 = phi i32 [ 0, %2 ], [ %44, %42 ], [ %56, %51 ], [ %58, %57 ]
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_array_init(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %98, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %67, label %7

7:                                                ; preds = %4
  %8 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = xor i32 %9, 63
  %11 = zext nneg i32 %10 to i64
  %12 = shl nuw i64 1, %11
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %62

14:                                               ; preds = %7
  %15 = shl i64 %1, %8
  %16 = shl i64 %12, %8
  %17 = lshr i64 %15, 32
  %18 = and i64 %15, 4294967295
  %19 = udiv i64 %16, %17
  %20 = mul i64 %19, %17
  %21 = urem i64 %16, %17
  br label %22

22:                                               ; preds = %30, %14
  %23 = phi i64 [ %19, %14 ], [ %31, %30 ]
  %24 = phi i64 [ %21, %14 ], [ %32, %30 ]
  %25 = icmp ugt i64 %23, 4294967295
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = mul nuw i64 %23, %18
  %28 = shl i64 %24, 32
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %22
  %31 = add i64 %23, -1
  %32 = add i64 %24, %17
  %33 = icmp ult i64 %32, 4294967296
  br i1 %33, label %22, label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %31, %30 ], [ %23, %26 ]
  %36 = shl i64 %16, 32
  %37 = mul i64 %35, %15
  %38 = sub i64 %36, %37
  %39 = udiv i64 %38, %17
  %40 = mul i64 %39, %17
  %41 = urem i64 %38, %17
  br label %42

42:                                               ; preds = %50, %34
  %43 = phi i64 [ %39, %34 ], [ %51, %50 ]
  %44 = phi i64 [ %41, %34 ], [ %52, %50 ]
  %45 = icmp ugt i64 %43, 4294967295
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = mul nuw i64 %43, %18
  %48 = shl i64 %44, 32
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %42
  %51 = add i64 %43, -1
  %52 = add i64 %44, %17
  %53 = icmp ult i64 %52, 4294967296
  br i1 %53, label %42, label %54

54:                                               ; preds = %50, %46
  %55 = phi i64 [ %51, %50 ], [ %43, %46 ]
  %56 = shl i64 %38, 32
  %57 = mul i64 %55, %15
  %58 = sub i64 %56, %57
  %59 = lshr i64 %58, %8
  %60 = shl i64 %35, 32
  %61 = add i64 %55, %60
  br label %62

62:                                               ; preds = %54, %7
  %63 = phi i64 [ %59, %54 ], [ -1, %7 ]
  %64 = phi i64 [ %61, %54 ], [ -1, %7 ]
  %65 = sub i64 %1, %63
  %66 = icmp ult i64 %65, %12
  br i1 %66, label %89, label %70

67:                                               ; preds = %4
  %68 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1, i1 true)
  %69 = lshr i64 %0, %68
  br label %98

70:                                               ; preds = %62
  %71 = shl i64 %64, 1
  %72 = icmp slt i64 %63, 0
  %73 = shl i64 %63, 1
  %74 = icmp uge i64 %73, %1
  %75 = or i1 %72, %74
  %76 = zext i1 %75 to i64
  %77 = or disjoint i64 %71, %76
  %78 = add i64 %77, 1
  %79 = zext i64 %78 to i128
  %80 = zext i64 %0 to i128
  %81 = mul nuw i128 %79, %80
  %82 = lshr i128 %81, 64
  %83 = trunc nuw i128 %82 to i64
  %84 = zext nneg i32 %10 to i64
  %85 = sub i64 %0, %83
  %86 = lshr i64 %85, 1
  %87 = add i64 %86, %83
  %88 = lshr i64 %87, %84
  br label %98

89:                                               ; preds = %62
  %90 = zext nneg i32 %10 to i64
  %91 = add i64 %64, 1
  %92 = zext i64 %91 to i128
  %93 = zext i64 %0 to i128
  %94 = mul nuw i128 %92, %93
  %95 = lshr i128 %94, 64
  %96 = trunc nuw i128 %95 to i64
  %97 = lshr i64 %96, %90
  br label %98

98:                                               ; preds = %89, %70, %67, %2
  %99 = phi i64 [ 0, %2 ], [ %69, %67 ], [ %88, %70 ], [ %97, %89 ]
  ret i64 %99
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
