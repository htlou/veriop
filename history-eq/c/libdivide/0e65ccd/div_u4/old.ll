; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/0e65ccd/wrap_div.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/0e65ccd/wrap_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_raw_quot(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %0, %2
  br i1 %4, label %5, label %62

5:                                                ; preds = %3
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = shl i64 %2, %6
  %10 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 %6)
  %11 = shl i64 %1, %6
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i64 [ %10, %8 ], [ %0, %5 ]
  %14 = phi i64 [ %9, %8 ], [ %2, %5 ]
  %15 = phi i64 [ %11, %8 ], [ %1, %5 ]
  %16 = lshr i64 %14, 32
  %17 = and i64 %14, 4294967295
  %18 = lshr i64 %15, 32
  %19 = and i64 %15, 4294967295
  %20 = udiv i64 %13, %16
  %21 = mul i64 %20, %16
  %22 = urem i64 %13, %16
  br label %23

23:                                               ; preds = %32, %12
  %24 = phi i64 [ %20, %12 ], [ %33, %32 ]
  %25 = phi i64 [ %22, %12 ], [ %34, %32 ]
  %26 = icmp ugt i64 %24, 4294967295
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = mul nuw i64 %24, %17
  %29 = shl i64 %25, 32
  %30 = or disjoint i64 %29, %18
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %23
  %33 = add i64 %24, -1
  %34 = add i64 %25, %16
  %35 = icmp ugt i64 %34, 4294967295
  br i1 %35, label %36, label %23

36:                                               ; preds = %32, %27
  %37 = phi i64 [ %33, %32 ], [ %24, %27 ]
  %38 = shl i64 %13, 32
  %39 = or disjoint i64 %18, %38
  %40 = mul i64 %37, %14
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, %16
  %43 = mul i64 %42, %16
  %44 = urem i64 %41, %16
  br label %45

45:                                               ; preds = %54, %36
  %46 = phi i64 [ %42, %36 ], [ %55, %54 ]
  %47 = phi i64 [ %44, %36 ], [ %56, %54 ]
  %48 = icmp ugt i64 %46, 4294967295
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = mul nuw i64 %46, %17
  %51 = shl i64 %47, 32
  %52 = or disjoint i64 %51, %19
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %45
  %55 = add i64 %46, -1
  %56 = add i64 %47, %16
  %57 = icmp ugt i64 %56, 4294967295
  br i1 %57, label %58, label %45

58:                                               ; preds = %54, %49
  %59 = phi i64 [ %55, %54 ], [ %46, %49 ]
  %60 = shl i64 %37, 32
  %61 = add i64 %59, %60
  br label %62

62:                                               ; preds = %3, %58
  %63 = phi i64 [ %61, %58 ], [ -1, %3 ]
  ret i64 %63
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_raw_rem(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %0, %2
  br i1 %4, label %5, label %65

5:                                                ; preds = %3
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = shl i64 %2, %6
  %10 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 %6)
  %11 = shl i64 %1, %6
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i64 [ %10, %8 ], [ %0, %5 ]
  %14 = phi i64 [ %9, %8 ], [ %2, %5 ]
  %15 = phi i64 [ %11, %8 ], [ %1, %5 ]
  %16 = lshr i64 %14, 32
  %17 = and i64 %14, 4294967295
  %18 = lshr i64 %15, 32
  %19 = and i64 %15, 4294967295
  %20 = udiv i64 %13, %16
  %21 = mul i64 %20, %16
  %22 = urem i64 %13, %16
  br label %23

23:                                               ; preds = %32, %12
  %24 = phi i64 [ %20, %12 ], [ %33, %32 ]
  %25 = phi i64 [ %22, %12 ], [ %34, %32 ]
  %26 = icmp ugt i64 %24, 4294967295
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = mul nuw i64 %24, %17
  %29 = shl i64 %25, 32
  %30 = or disjoint i64 %29, %18
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %23
  %33 = add i64 %24, -1
  %34 = add i64 %25, %16
  %35 = icmp ugt i64 %34, 4294967295
  br i1 %35, label %36, label %23

36:                                               ; preds = %32, %27
  %37 = phi i64 [ %33, %32 ], [ %24, %27 ]
  %38 = shl i64 %13, 32
  %39 = or disjoint i64 %18, %38
  %40 = mul i64 %37, %14
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, %16
  %43 = mul i64 %42, %16
  %44 = urem i64 %41, %16
  br label %45

45:                                               ; preds = %54, %36
  %46 = phi i64 [ %42, %36 ], [ %55, %54 ]
  %47 = phi i64 [ %44, %36 ], [ %56, %54 ]
  %48 = icmp ugt i64 %46, 4294967295
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = mul nuw i64 %46, %17
  %51 = shl i64 %47, 32
  %52 = or disjoint i64 %51, %19
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %45
  %55 = add i64 %46, -1
  %56 = add i64 %47, %16
  %57 = icmp ugt i64 %56, 4294967295
  br i1 %57, label %58, label %45

58:                                               ; preds = %54, %49
  %59 = phi i64 [ %55, %54 ], [ %46, %49 ]
  %60 = shl i64 %41, 32
  %61 = or disjoint i64 %60, %19
  %62 = mul i64 %59, %14
  %63 = sub i64 %61, %62
  %64 = lshr i64 %63, %6
  br label %65

65:                                               ; preds = %3, %58
  %66 = phi i64 [ %64, %58 ], [ -1, %3 ]
  ret i64 %66
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_pre_quot(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %0, %2
  br i1 %4, label %5, label %62

5:                                                ; preds = %3
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = shl i64 %2, %6
  %10 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 %6)
  %11 = shl i64 %1, %6
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i64 [ %10, %8 ], [ %0, %5 ]
  %14 = phi i64 [ %9, %8 ], [ %2, %5 ]
  %15 = phi i64 [ %11, %8 ], [ %1, %5 ]
  %16 = lshr i64 %14, 32
  %17 = and i64 %14, 4294967295
  %18 = lshr i64 %15, 32
  %19 = and i64 %15, 4294967295
  %20 = udiv i64 %13, %16
  %21 = mul i64 %20, %16
  %22 = urem i64 %13, %16
  br label %23

23:                                               ; preds = %32, %12
  %24 = phi i64 [ %20, %12 ], [ %33, %32 ]
  %25 = phi i64 [ %22, %12 ], [ %34, %32 ]
  %26 = icmp ugt i64 %24, 4294967295
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = mul nuw i64 %24, %17
  %29 = shl i64 %25, 32
  %30 = or disjoint i64 %29, %18
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %23
  %33 = add i64 %24, -1
  %34 = add i64 %25, %16
  %35 = icmp ugt i64 %34, 4294967295
  br i1 %35, label %36, label %23

36:                                               ; preds = %32, %27
  %37 = phi i64 [ %33, %32 ], [ %24, %27 ]
  %38 = shl i64 %13, 32
  %39 = or disjoint i64 %18, %38
  %40 = mul i64 %37, %14
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, %16
  %43 = mul i64 %42, %16
  %44 = urem i64 %41, %16
  br label %45

45:                                               ; preds = %54, %36
  %46 = phi i64 [ %42, %36 ], [ %55, %54 ]
  %47 = phi i64 [ %44, %36 ], [ %56, %54 ]
  %48 = icmp ugt i64 %46, 4294967295
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = mul nuw i64 %46, %17
  %51 = shl i64 %47, 32
  %52 = or disjoint i64 %51, %19
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %45
  %55 = add i64 %46, -1
  %56 = add i64 %47, %16
  %57 = icmp ugt i64 %56, 4294967295
  br i1 %57, label %58, label %45

58:                                               ; preds = %49, %54
  %59 = phi i64 [ %55, %54 ], [ %46, %49 ]
  %60 = shl i64 %37, 32
  %61 = add i64 %59, %60
  br label %62

62:                                               ; preds = %3, %58
  %63 = phi i64 [ %61, %58 ], [ 0, %3 ]
  ret i64 %63
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_pre_rem(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %0, %2
  br i1 %4, label %5, label %65

5:                                                ; preds = %3
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = shl i64 %2, %6
  %10 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 %6)
  %11 = shl i64 %1, %6
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i64 [ %10, %8 ], [ %0, %5 ]
  %14 = phi i64 [ %9, %8 ], [ %2, %5 ]
  %15 = phi i64 [ %11, %8 ], [ %1, %5 ]
  %16 = lshr i64 %14, 32
  %17 = and i64 %14, 4294967295
  %18 = lshr i64 %15, 32
  %19 = and i64 %15, 4294967295
  %20 = udiv i64 %13, %16
  %21 = mul i64 %20, %16
  %22 = urem i64 %13, %16
  br label %23

23:                                               ; preds = %32, %12
  %24 = phi i64 [ %20, %12 ], [ %33, %32 ]
  %25 = phi i64 [ %22, %12 ], [ %34, %32 ]
  %26 = icmp ugt i64 %24, 4294967295
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = mul nuw i64 %24, %17
  %29 = shl i64 %25, 32
  %30 = or disjoint i64 %29, %18
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %23
  %33 = add i64 %24, -1
  %34 = add i64 %25, %16
  %35 = icmp ugt i64 %34, 4294967295
  br i1 %35, label %36, label %23

36:                                               ; preds = %32, %27
  %37 = phi i64 [ %33, %32 ], [ %24, %27 ]
  %38 = shl i64 %13, 32
  %39 = or disjoint i64 %18, %38
  %40 = mul i64 %37, %14
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, %16
  %43 = mul i64 %42, %16
  %44 = urem i64 %41, %16
  br label %45

45:                                               ; preds = %54, %36
  %46 = phi i64 [ %42, %36 ], [ %55, %54 ]
  %47 = phi i64 [ %44, %36 ], [ %56, %54 ]
  %48 = icmp ugt i64 %46, 4294967295
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = mul nuw i64 %46, %17
  %51 = shl i64 %47, 32
  %52 = or disjoint i64 %51, %19
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %45
  %55 = add i64 %46, -1
  %56 = add i64 %47, %16
  %57 = icmp ugt i64 %56, 4294967295
  br i1 %57, label %58, label %45

58:                                               ; preds = %49, %54
  %59 = phi i64 [ %55, %54 ], [ %46, %49 ]
  %60 = shl i64 %41, 32
  %61 = or disjoint i64 %60, %19
  %62 = mul i64 %59, %14
  %63 = sub i64 %61, %62
  %64 = lshr i64 %63, %6
  br label %65

65:                                               ; preds = %3, %58
  %66 = phi i64 [ %64, %58 ], [ 0, %3 ]
  ret i64 %66
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
