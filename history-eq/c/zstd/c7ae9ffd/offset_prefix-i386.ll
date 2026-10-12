; ModuleID = 'offset_prefix.c'
source_filename = "offset_prefix.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@zstd_new_prefix.offsetPrefix = internal constant [27 x i32] [i32 1, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432], align 4

; Function Attrs: noinline nounwind
define dso_local i32 @zstd_old_prefix(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp ugt i32 %9, 26
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  unreachable

12:                                               ; preds = %3
  %13 = load i32, ptr %4, align 4
  %14 = sub i32 %13, 1
  store i32 %14, ptr %7, align 4
  %15 = load i32, ptr %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, ptr %7, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i32, ptr %7, align 4
  %20 = and i32 %19, 31
  %21 = shl i32 1, %20
  %22 = load i32, ptr %5, align 4
  %23 = add i32 %21, %22
  store i32 %23, ptr %8, align 4
  %24 = load i32, ptr %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, ptr %6, align 4
  store i32 %27, ptr %8, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, ptr %8, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind
define dso_local i32 @zstd_new_prefix(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp ugt i32 %9, 26
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  unreachable

12:                                               ; preds = %3
  %13 = load i32, ptr %4, align 4
  %14 = sub i32 %13, 1
  store i32 %14, ptr %7, align 4
  %15 = load i32, ptr %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, ptr %7, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i32, ptr %4, align 4
  %20 = getelementptr inbounds nuw [27 x i32], ptr @zstd_new_prefix.offsetPrefix, i32 0, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %5, align 4
  %23 = add i32 %21, %22
  store i32 %23, ptr %8, align 4
  %24 = load i32, ptr %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, ptr %6, align 4
  store i32 %27, ptr %8, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, ptr %8, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
