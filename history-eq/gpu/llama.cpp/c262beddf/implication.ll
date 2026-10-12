; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/c262beddf/implication.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/c262beddf/implication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @implication(i64 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %11 = load i64, ptr %6, align 8
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %27

13:                                               ; preds = %4
  %14 = load i64, ptr %5, align 8
  %15 = srem i64 %14, 64
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i32, ptr %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, ptr %5, align 8
  %22 = icmp sle i64 %21, 128
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %17
  %24 = load i32, ptr %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %23, %20, %13, %4
  %28 = phi i1 [ false, %20 ], [ false, %13 ], [ false, %4 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, ptr %9, align 4
  %30 = load i64, ptr %6, align 8
  %31 = icmp eq i64 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i64, ptr %5, align 8
  %34 = srem i64 %33, 64
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, ptr %8, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %36, %32, %27
  %41 = phi i1 [ false, %32 ], [ false, %27 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %10, align 4
  %43 = load i32, ptr %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, ptr %10, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi i1 [ true, %40 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  ret i32 %50
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
