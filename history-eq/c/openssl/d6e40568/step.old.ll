; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/openssl/d6e40568/step.old.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/openssl/d6e40568/step.old.c"
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
  %8 = load i32, ptr %4, align 4
  %9 = srem i32 %7, %8
  store i32 %9, ptr %3, align 4
  %10 = load i32, ptr %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, ptr %5, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i32, ptr %3, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 %15, 1
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = or i64 %16, %18
  ret i64 %19
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
  br label %32

17:                                               ; preds = %12
  store i32 0, ptr %6, align 4
  %18 = load i32, ptr %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, ptr %5, align 4
  %21 = srem i32 %19, %20
  store i32 %21, ptr %4, align 4
  %22 = load i32, ptr %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 1, ptr %6, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, ptr %4, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 %27, 1
  %29 = load i32, ptr %6, align 4
  %30 = sext i32 %29 to i64
  %31 = or i64 %28, %30
  store i64 %31, ptr %3, align 8
  br label %32

32:                                               ; preds = %25, %16
  %33 = load i64, ptr %3, align 8
  ret i64 %33
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
