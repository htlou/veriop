; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/c7bda030/implication.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/c7bda030/implication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @implication(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, ptr %10, align 8
  store i64 %1, ptr %11, align 8
  store i64 %2, ptr %12, align 8
  store i64 %3, ptr %13, align 8
  store i64 %4, ptr %14, align 8
  store i64 %5, ptr %15, align 8
  store i64 %6, ptr %16, align 8
  store i64 %7, ptr %17, align 8
  store i64 %8, ptr %18, align 8
  %19 = load i64, ptr %10, align 8
  %20 = load i64, ptr %17, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %9
  %23 = load i64, ptr %12, align 8
  %24 = load i64, ptr %18, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %22
  %27 = load i64, ptr %11, align 8
  %28 = load i64, ptr %12, align 8
  %29 = load i64, ptr %15, align 8
  %30 = mul i64 %28, %29
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %26
  %33 = load i64, ptr %13, align 8
  %34 = load i64, ptr %11, align 8
  %35 = load i64, ptr %14, align 8
  %36 = mul i64 %34, %35
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %32
  %39 = load i64, ptr %10, align 8
  %40 = load i64, ptr %17, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load i64, ptr %12, align 8
  %44 = load i64, ptr %18, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load i64, ptr %11, align 8
  %48 = load i64, ptr %12, align 8
  %49 = load i64, ptr %15, align 8
  %50 = mul i64 %48, %49
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load i64, ptr %16, align 8
  %54 = icmp eq i64 %53, 1
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i64, ptr %13, align 8
  %57 = load i64, ptr %11, align 8
  %58 = load i64, ptr %14, align 8
  %59 = mul i64 %57, %58
  %60 = icmp eq i64 %56, %59
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi i1 [ true, %52 ], [ %60, %55 ]
  br label %63

63:                                               ; preds = %61, %46, %42, %38
  %64 = phi i1 [ false, %46 ], [ false, %42 ], [ false, %38 ], [ %62, %61 ]
  br label %65

65:                                               ; preds = %63, %32, %26, %22, %9
  %66 = phi i1 [ true, %32 ], [ true, %26 ], [ true, %22 ], [ true, %9 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
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
