; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/740a447f/new.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/740a447f/new.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Device = type { i32, i32 }

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local i32 @target(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store ptr %0, ptr %5, align 8
  %13 = zext i1 %1 to i8
  store i8 %13, ptr %6, align 1
  %14 = zext i1 %2 to i8
  store i8 %14, ptr %7, align 1
  %15 = zext i1 %3 to i8
  store i8 %15, ptr %8, align 1
  %16 = load i8, ptr %6, align 1
  %17 = trunc i8 %16 to i1
  %18 = zext i1 %17 to i8
  store i8 %18, ptr %9, align 1
  %19 = load i8, ptr %9, align 1
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 1
  store i32 %22, ptr %10, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds nuw %struct.Device, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds nuw %struct.Device, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8, ptr %9, align 1
  %34 = trunc i8 %33 to i1
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %27, %4
  %37 = phi i1 [ false, %27 ], [ false, %4 ], [ %35, %32 ]
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %11, align 1
  store i8 0, ptr %12, align 1
  %39 = load i8, ptr %8, align 1
  %40 = trunc i8 %39 to i1
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = load i8, ptr %11, align 1
  %43 = trunc i8 %42 to i1
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i8, ptr %7, align 1
  %46 = trunc i8 %45 to i1
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ true, %41 ], [ %46, %44 ]
  %49 = zext i1 %48 to i8
  store i8 %49, ptr %12, align 1
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, ptr %10, align 4
  %52 = load i8, ptr %12, align 1
  %53 = trunc i8 %52 to i1
  %54 = zext i1 %53 to i32
  %55 = shl i32 %54, 1
  %56 = or i32 %51, %55
  ret i32 %56
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
