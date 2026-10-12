; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/c3c15053/old.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/c3c15053/old.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Tensor = type { i32, [2 x i64] }
%struct.Context = type { ptr, ptr }

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local i32 @target(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Tensor, align 8
  %10 = alloca %struct.Tensor, align 8
  %11 = alloca %struct.Context, align 8
  store i32 %0, ptr %5, align 4
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %12 = getelementptr inbounds nuw %struct.Tensor, ptr %9, i32 0, i32 0
  %13 = load i32, ptr %5, align 4
  store i32 %13, ptr %12, align 8
  %14 = getelementptr inbounds nuw %struct.Tensor, ptr %9, i32 0, i32 1
  %15 = load i64, ptr %6, align 8
  store i64 %15, ptr %14, align 8
  %16 = getelementptr inbounds i64, ptr %14, i64 1
  store i64 1, ptr %16, align 8
  %17 = getelementptr inbounds nuw %struct.Tensor, ptr %10, i32 0, i32 0
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds nuw %struct.Tensor, ptr %10, i32 0, i32 1
  %19 = load i64, ptr %7, align 8
  store i64 %19, ptr %18, align 8
  %20 = getelementptr inbounds i64, ptr %18, i64 1
  %21 = load i64, ptr %8, align 8
  store i64 %21, ptr %20, align 8
  %22 = getelementptr inbounds nuw %struct.Context, ptr %11, i32 0, i32 0
  store ptr %9, ptr %22, align 8
  %23 = getelementptr inbounds nuw %struct.Context, ptr %11, i32 0, i32 1
  store ptr %10, ptr %23, align 8
  %24 = getelementptr inbounds nuw %struct.Context, ptr %11, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw %struct.Tensor, ptr %25, i32 0, i32 1
  %27 = getelementptr inbounds [2 x i64], ptr %26, i64 0, i64 0
  %28 = load i64, ptr %27, align 8
  %29 = srem i64 %28, 4
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %4
  %32 = getelementptr inbounds nuw %struct.Context, ptr %11, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw %struct.Tensor, ptr %33, i32 0, i32 1
  %35 = getelementptr inbounds [2 x i64], ptr %34, i64 0, i64 0
  %36 = load i64, ptr %35, align 8
  %37 = srem i64 %36, 4
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %31
  %40 = getelementptr inbounds nuw %struct.Context, ptr %11, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds nuw %struct.Tensor, ptr %41, i32 0, i32 1
  %43 = getelementptr inbounds [2 x i64], ptr %42, i64 0, i64 1
  %44 = load i64, ptr %43, align 8
  %45 = srem i64 %44, 4
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw %struct.Context, ptr %11, i32 0, i32 0
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds nuw %struct.Tensor, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds nuw %struct.Context, ptr %11, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds nuw %struct.Tensor, ptr %55, i32 0, i32 0
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 1
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i1 [ true, %47 ], [ %58, %53 ]
  br label %61

61:                                               ; preds = %59, %39, %31, %4
  %62 = phi i1 [ false, %39 ], [ false, %31 ], [ false, %4 ], [ %60, %59 ]
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  ret i32 %64
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
