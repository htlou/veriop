; ModuleID = 'history-eq/c/fast_float/6484c736/digit_lemma.cpp'
source_filename = "history-eq/c/fast_float/6484c736/digit_lemma.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967296) i64 @target_digit_value(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = trunc i64 %0 to i8
  %3 = add i8 %2, -58
  %4 = icmp ult i8 %3, -10
  br i1 %4, label %52, label %5

5:                                                ; preds = %1
  %6 = lshr i64 %0, 56
  %7 = trunc nuw i64 %6 to i8
  %8 = lshr i64 %0, 48
  %9 = trunc i64 %8 to i8
  %10 = lshr i64 %0, 40
  %11 = trunc i64 %10 to i8
  %12 = lshr i64 %0, 32
  %13 = trunc i64 %12 to i8
  %14 = lshr i64 %0, 24
  %15 = trunc i64 %14 to i8
  %16 = lshr i64 %0, 16
  %17 = trunc i64 %16 to i8
  %18 = lshr i64 %0, 8
  %19 = trunc i64 %18 to i8
  %20 = add i8 %19, -58
  %21 = icmp ult i8 %20, -10
  %22 = add i8 %17, -58
  %23 = icmp ult i8 %22, -10
  %24 = or i1 %21, %23
  %25 = add i8 %15, -58
  %26 = icmp ult i8 %25, -10
  %27 = or i1 %24, %26
  %28 = add i8 %13, -58
  %29 = icmp ult i8 %28, -10
  %30 = or i1 %27, %29
  %31 = add i8 %11, -58
  %32 = icmp ult i8 %31, -10
  %33 = or i1 %30, %32
  %34 = add i8 %9, -58
  %35 = icmp ult i8 %34, -10
  %36 = or i1 %33, %35
  %37 = add i8 %7, -58
  %38 = icmp ult i8 %37, -10
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %5
  %41 = add i64 %0, -3472328296227680304
  %42 = mul i64 %41, 10
  %43 = lshr i64 %41, 8
  %44 = add i64 %42, %43
  %45 = and i64 %44, 1095216660735
  %46 = mul i64 %45, 4294967296000100
  %47 = lshr i64 %44, 16
  %48 = and i64 %47, 1095216660735
  %49 = mul i64 %48, 42949672960001
  %50 = add i64 %49, %46
  %51 = lshr i64 %50, 32
  br label %52

52:                                               ; preds = %1, %5, %40
  %53 = phi i64 [ %51, %40 ], [ 0, %5 ], [ 0, %1 ]
  ret i64 %53
}

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
