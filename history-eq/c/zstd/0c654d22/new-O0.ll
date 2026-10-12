; ModuleID = 'history-eq/c/zstd/0c654d22/new.c'
source_filename = "history-eq/c/zstd/0c654d22/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_matchState_t = type { %struct.ZSTD_window_t, i32 }
%struct.ZSTD_window_t = type { ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @target(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %16, align 8
  store ptr %1, ptr %17, align 8
  store ptr %2, ptr %18, align 8
  store ptr %3, ptr %19, align 8
  store ptr %4, ptr %20, align 8
  store i32 %5, ptr %21, align 4
  store i32 %6, ptr %22, align 4
  %23 = load ptr, ptr %16, align 8
  %24 = load ptr, ptr %17, align 8
  %25 = load ptr, ptr %18, align 8
  %26 = load ptr, ptr %19, align 8
  %27 = load ptr, ptr %20, align 8
  %28 = load i32, ptr %21, align 4
  %29 = load i32, ptr %22, align 4
  store ptr %23, ptr %9, align 8
  store ptr %24, ptr %10, align 8
  store ptr %25, ptr %11, align 8
  store ptr %26, ptr %12, align 8
  store ptr %27, ptr %13, align 8
  store i32 %28, ptr %14, align 4
  store i32 %29, ptr %15, align 4
  %30 = load ptr, ptr %11, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = getelementptr inbounds nuw %struct.ZSTD_matchState_t, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %32, i64 %36
  %38 = icmp ult ptr %30, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %7
  store i64 0, ptr %8, align 8
  br label %54

40:                                               ; preds = %7
  %41 = load ptr, ptr %9, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = load ptr, ptr %11, align 8
  %44 = load ptr, ptr %12, align 8
  %45 = load i32, ptr %14, align 4
  call void @ZSTD_updateDUBT(ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, i32 noundef %45) #2
  %46 = load ptr, ptr %9, align 8
  %47 = load ptr, ptr %10, align 8
  %48 = load ptr, ptr %11, align 8
  %49 = load ptr, ptr %12, align 8
  %50 = load ptr, ptr %13, align 8
  %51 = load i32, ptr %14, align 4
  %52 = load i32, ptr %15, align 4
  %53 = call i64 @ZSTD_DUBT_findBestMatch(ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, i32 noundef %51, i32 noundef %52) #2
  store i64 %53, ptr %8, align 8
  br label %54

54:                                               ; preds = %39, %40
  %55 = load i64, ptr %8, align 8
  ret i64 %55
}

declare void @ZSTD_updateDUBT(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i64 @ZSTD_DUBT_findBestMatch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
