; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/96892952/old.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/96892952/old.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local zeroext i1 @target(i32 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 %0, ptr %5, align 4
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i32 16781568, ptr %8, align 4
  %10 = load i32, ptr %5, align 4
  switch i32 %10, label %12 [
    i32 2, label %11
    i32 3, label %11
    i32 6, label %11
    i32 7, label %11
    i32 8, label %11
    i32 39, label %11
    i32 10, label %11
    i32 11, label %11
    i32 12, label %11
    i32 13, label %11
    i32 14, label %11
    i32 16, label %11
    i32 17, label %11
    i32 22, label %11
    i32 18, label %11
    i32 21, label %11
    i32 19, label %11
    i32 23, label %11
    i32 20, label %11
  ]

11:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  store i8 1, ptr %9, align 1
  br label %13

12:                                               ; preds = %3
  store i8 0, ptr %9, align 1
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i8, ptr %9, align 1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i1 false, ptr %4, align 1
  br label %61

17:                                               ; preds = %13
  %18 = call noundef zeroext i1 @_ZL20turing_mma_availablei(i32 noundef 16781568)
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  store i1 true, ptr %4, align 1
  br label %61

20:                                               ; preds = %17
  %21 = call noundef i32 @_ZL31ggml_cuda_highest_compiled_archi(i32 noundef 16781568)
  %22 = icmp slt i32 %21, 610
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i1 false, ptr %4, align 1
  br label %61

24:                                               ; preds = %20
  %25 = call noundef zeroext i1 @_ZL18amd_mfma_availablei(i32 noundef 16781568)
  br i1 %25, label %26, label %57

26:                                               ; preds = %24
  %27 = load i64, ptr %7, align 8
  %28 = icmp sgt i64 %27, 64
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, ptr %6, align 8
  %31 = icmp sle i64 %30, 128
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  store i1 true, ptr %4, align 1
  br label %61

33:                                               ; preds = %29
  %34 = load i32, ptr %5, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %5, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %5, align 4
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %5, align 4
  %44 = icmp eq i32 %43, 7
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39, %36, %33
  store i1 true, ptr %4, align 1
  br label %61

46:                                               ; preds = %42
  %47 = load i64, ptr %6, align 8
  %48 = icmp sle i64 %47, 256
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, ptr %5, align 4
  %51 = icmp eq i32 %50, 12
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %5, align 4
  %54 = icmp eq i32 %53, 13
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49
  store i1 true, ptr %4, align 1
  br label %61

56:                                               ; preds = %52, %46
  store i1 false, ptr %4, align 1
  br label %61

57:                                               ; preds = %24
  %58 = call noundef zeroext i1 @_ZL18amd_wmma_availablei(i32 noundef 16781568)
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  store i1 true, ptr %4, align 1
  br label %61

60:                                               ; preds = %57
  store i1 true, ptr %4, align 1
  br label %61

61:                                               ; preds = %60, %59, %56, %55, %45, %32, %23, %19, %16
  %62 = load i1, ptr %4, align 1
  ret i1 %62
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef zeroext i1 @_ZL20turing_mma_availablei(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 1048576
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  %7 = call noundef i32 @_ZL31ggml_cuda_highest_compiled_archi(i32 noundef %6)
  %8 = icmp sge i32 %7, 750
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef i32 @_ZL31ggml_cuda_highest_compiled_archi(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef zeroext i1 @_ZL18amd_mfma_availablei(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp sge i32 %3, 16779528
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  %7 = icmp slt i32 %6, 16781328
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef zeroext i1 @_ZL18amd_wmma_availablei(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp sge i32 %3, 16781824
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  %7 = icmp sge i32 %6, 16781568
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, ptr %2, align 4
  %10 = icmp slt i32 %9, 16781648
  br i1 %10, label %19, label %11

11:                                               ; preds = %8, %5
  %12 = load i32, ptr %2, align 4
  %13 = icmp sge i32 %12, 16781648
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, ptr %2, align 4
  %16 = icmp slt i32 %15, 16781824
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi i1 [ true, %8 ], [ %18, %17 ]
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi i1 [ true, %1 ], [ %20, %19 ]
  ret i1 %22
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
