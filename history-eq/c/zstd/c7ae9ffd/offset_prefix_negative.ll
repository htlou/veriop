; ModuleID = 'offset_prefix_negative.c'
source_filename = "offset_prefix_negative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@zstd_new_prefix.offsetPrefix = internal constant [27 x i64] [i64 1, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554431], align 16

; Function Attrs: noinline nounwind
define dso_local i64 @zstd_old_prefix(i32 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, ptr %4, align 4
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
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
  %20 = zext i32 %19 to i64
  %21 = and i64 %20, 63
  %22 = shl i64 1, %21
  %23 = load i64, ptr %5, align 8
  %24 = add i64 %22, %23
  store i64 %24, ptr %8, align 8
  %25 = load i32, ptr %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i64, ptr %6, align 8
  store i64 %28, ptr %8, align 8
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i64, ptr %8, align 8
  ret i64 %30
}

; Function Attrs: noinline nounwind
define dso_local i64 @zstd_new_prefix(i32 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, ptr %4, align 4
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
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
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw [27 x i64], ptr @zstd_new_prefix.offsetPrefix, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = load i64, ptr %5, align 8
  %24 = add i64 %22, %23
  store i64 %24, ptr %8, align 8
  %25 = load i32, ptr %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i64, ptr %6, align 8
  store i64 %28, ptr %8, align 8
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i64, ptr %8, align 8
  ret i64 %30
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
