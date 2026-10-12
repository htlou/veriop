; ModuleID = 'history-eq/c/fast_float/6484c736/digit_lemma.cpp'
source_filename = "history-eq/c/fast_float/6484c736/digit_lemma.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -533333328, 877777770) i64 @target_digit_value(i64 noundef %0) local_unnamed_addr #0 {
  %2 = trunc i64 %0 to i8
  %3 = lshr i64 %0, 8
  %4 = lshr i64 %0, 16
  %5 = trunc i64 %4 to i8
  %6 = lshr i64 %0, 24
  %7 = trunc i64 %6 to i8
  %8 = lshr i64 %0, 32
  %9 = trunc i64 %8 to i8
  %10 = lshr i64 %0, 40
  %11 = trunc i64 %10 to i8
  %12 = lshr i64 %0, 48
  %13 = trunc i64 %12 to i8
  %14 = lshr i64 %0, 56
  %15 = trunc nuw i64 %14 to i8
  %16 = add i8 %2, -58
  %17 = icmp ult i8 %16, -10
  %18 = trunc i64 %3 to i8
  %19 = add i8 %18, -58
  %20 = icmp ult i8 %19, -10
  %21 = or i1 %17, %20
  %22 = add i8 %5, -58
  %23 = icmp ult i8 %22, -10
  %24 = or i1 %21, %23
  %25 = add i8 %7, -58
  %26 = icmp ult i8 %25, -10
  %27 = or i1 %24, %26
  %28 = add i8 %9, -58
  %29 = icmp ult i8 %28, -10
  %30 = or i1 %27, %29
  %31 = add i8 %11, -58
  %32 = icmp ult i8 %31, -10
  %33 = or i1 %30, %32
  %34 = add i8 %13, -58
  %35 = icmp ult i8 %34, -10
  %36 = or i1 %33, %35
  %37 = add i8 %15, -58
  %38 = icmp ult i8 %37, -10
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %69, label %40

40:                                               ; preds = %1
  %41 = and i64 %0, 255
  %42 = mul nuw nsw i64 %41, 10
  %43 = and i64 %3, 255
  %44 = add nsw i64 %42, -528
  %45 = add nsw i64 %44, %43
  %46 = mul nsw i64 %45, 10
  %47 = and i64 %4, 255
  %48 = add nsw i64 %46, -48
  %49 = add nsw i64 %48, %47
  %50 = mul nsw i64 %49, 10
  %51 = and i64 %6, 255
  %52 = add nsw i64 %50, -48
  %53 = add nsw i64 %52, %51
  %54 = mul nsw i64 %53, 10
  %55 = and i64 %8, 255
  %56 = add nsw i64 %54, -48
  %57 = add nsw i64 %56, %55
  %58 = mul nsw i64 %57, 10
  %59 = and i64 %10, 255
  %60 = add nsw i64 %58, -48
  %61 = add nsw i64 %60, %59
  %62 = mul nsw i64 %61, 10
  %63 = and i64 %12, 255
  %64 = add nsw i64 %62, -48
  %65 = add nsw i64 %64, %63
  %66 = mul nsw i64 %65, 10
  %67 = add nsw i64 %66, -48
  %68 = add nsw i64 %67, %14
  br label %69

69:                                               ; preds = %1, %40
  %70 = phi i64 [ %68, %40 ], [ 0, %1 ]
  ret i64 %70
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
