; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/892e3c33/new.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/892e3c33/new.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Device = type { i32, i32, i32, i32 }

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local zeroext i1 @target(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i1, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store i32 %3, ptr %10, align 4
  store i32 %4, ptr %11, align 4
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw %struct.Device, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i1 true, ptr %6, align 1
  br label %94

18:                                               ; preds = %5
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds nuw %struct.Device, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i1 false, ptr %6, align 1
  br label %94

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %11, align 4
  %28 = icmp eq i32 %27, 11
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %11, align 4
  %31 = icmp eq i32 %30, 14
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  store i1 false, ptr %6, align 1
  br label %94

33:                                               ; preds = %29
  %34 = load i32, ptr %9, align 4
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i1 true, ptr %6, align 1
  br label %94

37:                                               ; preds = %33
  %38 = load ptr, ptr %7, align 8
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds nuw %struct.Device, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  switch i32 %41, label %93 [
    i32 1, label %42
    i32 2, label %65
    i32 3, label %78
  ]

42:                                               ; preds = %37
  %43 = load i32, ptr %11, align 4
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %11, align 4
  %47 = icmp eq i32 %46, 19
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %11, align 4
  %50 = icmp eq i32 %49, 29
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %45, %42
  store i1 true, ptr %6, align 1
  br label %94

52:                                               ; preds = %48
  %53 = load i32, ptr %10, align 4
  %54 = icmp ule i32 %53, 4096
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i1 false, ptr %6, align 1
  br label %94

56:                                               ; preds = %52
  %57 = load i32, ptr %11, align 4
  switch i32 %57, label %64 [
    i32 39, label %58
    i32 8, label %58
  ]

58:                                               ; preds = %56, %56
  %59 = load ptr, ptr %7, align 8
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds nuw %struct.Device, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 1
  store i1 %63, ptr %6, align 1
  br label %94

64:                                               ; preds = %56
  store i1 true, ptr %6, align 1
  br label %94

65:                                               ; preds = %37
  %66 = load i32, ptr %10, align 4
  %67 = icmp ult i32 %66, 2048
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i1 false, ptr %6, align 1
  br label %94

69:                                               ; preds = %65
  %70 = load i32, ptr %11, align 4
  switch i32 %70, label %77 [
    i32 8, label %71
  ]

71:                                               ; preds = %69
  %72 = load ptr, ptr %7, align 8
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds nuw %struct.Device, ptr %73, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 2
  store i1 %76, ptr %6, align 1
  br label %94

77:                                               ; preds = %69
  store i1 true, ptr %6, align 1
  br label %94

78:                                               ; preds = %37
  %79 = load ptr, ptr %7, align 8
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds nuw %struct.Device, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i1 false, ptr %6, align 1
  br label %94

85:                                               ; preds = %78
  %86 = load i32, ptr %10, align 4
  %87 = icmp ult i32 %86, 2048
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i1 false, ptr %6, align 1
  br label %94

89:                                               ; preds = %85
  %90 = load i32, ptr %11, align 4
  switch i32 %90, label %92 [
    i32 2, label %91
    i32 7, label %91
  ]

91:                                               ; preds = %89, %89
  store i1 false, ptr %6, align 1
  br label %94

92:                                               ; preds = %89
  store i1 true, ptr %6, align 1
  br label %94

93:                                               ; preds = %37
  store i1 true, ptr %6, align 1
  br label %94

94:                                               ; preds = %93, %92, %91, %88, %84, %77, %71, %68, %64, %58, %55, %51, %36, %32, %24, %17
  %95 = load i1, ptr %6, align 1
  ret i1 %95
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
