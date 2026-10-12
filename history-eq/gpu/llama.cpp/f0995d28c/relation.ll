; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f0995d28c/relation.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f0995d28c/relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @relation(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %7 = load i64, ptr %4, align 8
  %8 = icmp sge i64 %7, 4
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8
  %11 = srem i64 %10, 128
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i64, ptr %3, align 8
  %15 = icmp ne i64 %14, 96
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i64, ptr %3, align 8
  %18 = icmp ne i64 %17, 192
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, ptr %3, align 8
  %21 = icmp ne i64 %20, 576
  br label %22

22:                                               ; preds = %19, %16, %13, %9
  %23 = phi i1 [ false, %16 ], [ false, %13 ], [ false, %9 ], [ %21, %19 ]
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i1 [ true, %2 ], [ %23, %22 ]
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, ptr %5, align 4
  %28 = load i64, ptr %4, align 8
  %29 = icmp sge i64 %28, 20
  br i1 %29, label %45, label %30

30:                                               ; preds = %24
  %31 = load i64, ptr %3, align 8
  %32 = srem i64 %31, 128
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i64, ptr %3, align 8
  %36 = icmp ne i64 %35, 96
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i64, ptr %3, align 8
  %39 = icmp ne i64 %38, 192
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, ptr %3, align 8
  %42 = icmp ne i64 %41, 576
  br label %43

43:                                               ; preds = %40, %37, %34, %30
  %44 = phi i1 [ false, %37 ], [ false, %34 ], [ false, %30 ], [ %42, %40 ]
  br label %45

45:                                               ; preds = %43, %24
  %46 = phi i1 [ true, %24 ], [ %44, %43 ]
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, ptr %6, align 4
  %49 = load i32, ptr %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, ptr %6, align 4
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %51, %45
  %55 = phi i1 [ true, %45 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
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
