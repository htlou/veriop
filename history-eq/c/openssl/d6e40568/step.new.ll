; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/openssl/d6e40568/step.new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/openssl/d6e40568/step.new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @step_all(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %3, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %3, align 4
  %8 = load i32, ptr %4, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  store i32 1, ptr %5, align 4
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i32, ptr %3, align 4
  %13 = zext i32 %12 to i64
  %14 = shl i64 %13, 1
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = or i64 %14, %16
  ret i64 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @step_positive(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %7 = load i32, ptr %5, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = load i32, ptr %5, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %9, %2
  store i64 0, ptr %3, align 8
  br label %30

17:                                               ; preds = %12
  store i32 0, ptr %6, align 4
  %18 = load i32, ptr %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %4, align 4
  %20 = load i32, ptr %5, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, ptr %4, align 4
  store i32 1, ptr %6, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, ptr %4, align 4
  %25 = zext i32 %24 to i64
  %26 = shl i64 %25, 1
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = or i64 %26, %28
  store i64 %29, ptr %3, align 8
  br label %30

30:                                               ; preds = %23, %16
  %31 = load i64, ptr %3, align 8
  ret i64 %31
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
