; ModuleID = 'history-eq/cpp/simdjson/3b2870d8/four_digits.cpp'
source_filename = "history-eq/cpp/simdjson/3b2870d8/four_digits.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress noinline uwtable
define dso_local zeroext i1 @target_guard(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call noundef zeroext i1 @_ZL11four_digitsj(i32 noundef %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef zeroext i1 @_ZL11four_digitsj(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add i32 %3, 1179010630
  %5 = load i32, i32* %2, align 4
  %6 = sub i32 %5, 808464432
  %7 = or i32 %4, %6
  %8 = and i32 %7, -2139062144
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  ret i1 %10
}

; Function Attrs: mustprogress noinline uwtable
define dso_local i32 @target_value(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call noundef zeroext i1 @_ZL11four_digitsj(i32 noundef %5)
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = sub i32 %9, 808464432
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul i32 %11, 10
  %13 = load i32, i32* %4, align 4
  %14 = lshr i32 %13, 8
  %15 = add i32 %12, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 16711935
  %18 = mul i32 %17, 6553601
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 65535
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %8, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

; Function Attrs: mustprogress noinline uwtable
define dso_local i64 @target_update(i32 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call noundef zeroext i1 @_ZL11four_digitsj(i32 noundef %6)
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %3, align 8
  br label %17

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = mul i64 %11, 10000
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @target_value(i32 noundef %13)
  %15 = zext i32 %14 to i64
  %16 = add i64 %12, %15
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %10, %8
  %18 = load i64, i64* %3, align 8
  ret i64 %18
}

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
