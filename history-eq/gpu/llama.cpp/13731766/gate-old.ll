; ModuleID = 'history-eq/gpu/llama.cpp/13731766/gate-old.c'
source_filename = "history-eq/gpu/llama.cpp/13731766/gate-old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @gate(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = alloca i1, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i64 %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  %12 = zext i1 %2 to i8
  store i8 %12, ptr %9, align 1
  %13 = zext i1 %3 to i8
  store i8 %13, ptr %10, align 1
  %14 = zext i1 %4 to i8
  store i8 %14, ptr %11, align 1
  %15 = load i64, ptr %7, align 8
  %16 = icmp slt i64 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i64, ptr %8, align 8
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %5
  store i1 false, ptr %6, align 1
  br label %40

21:                                               ; preds = %17
  %22 = load i64, ptr %7, align 8
  %23 = icmp slt i64 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i1 false, ptr %6, align 1
  br label %40

25:                                               ; preds = %21
  %26 = load i8, ptr %11, align 1
  %27 = trunc i8 %26 to i1
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i8, ptr %9, align 1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8, ptr %10, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, ptr %8, align 8
  %36 = srem i64 %35, 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %31, %28, %25
  store i1 false, ptr %6, align 1
  br label %40

39:                                               ; preds = %34
  store i1 true, ptr %6, align 1
  br label %40

40:                                               ; preds = %39, %38, %24, %20
  %41 = load i1, ptr %6, align 1
  ret i1 %41
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
