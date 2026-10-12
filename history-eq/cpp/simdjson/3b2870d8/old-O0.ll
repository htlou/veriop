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
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul i32 8, %11
  %13 = lshr i32 %10, %12
  %14 = sub i32 %13, 48
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %5, align 1
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sgt i32 %17, 9
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i1 false, i1* %2, align 1
  br label %25

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %6, !llvm.loop !6

24:                                               ; preds = %6
  store i1 true, i1* %2, align 1
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i1, i1* %2, align 1
  ret i1 %26
}

; Function Attrs: mustprogress noinline uwtable
define dso_local i32 @target_value(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call noundef zeroext i1 @_ZL11four_digitsj(i32 noundef %6)
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %24, %9
  %11 = load i32, i32* %5, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = mul i32 %14, 10
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul i32 8, %17
  %19 = lshr i32 %16, %18
  %20 = sub i32 %19, 48
  %21 = trunc i32 %20 to i8
  %22 = zext i8 %21 to i32
  %23 = add i32 %15, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %10, !llvm.loop !8

27:                                               ; preds = %10
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: mustprogress noinline uwtable
define dso_local i64 @target_update(i32 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call noundef zeroext i1 @_ZL11four_digitsj(i32 noundef %7)
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %3, align 8
  br label %31

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %26, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i64, i64* %5, align 8
  %17 = mul i64 %16, 10
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul i32 8, %19
  %21 = lshr i32 %18, %20
  %22 = sub i32 %21, 48
  %23 = trunc i32 %22 to i8
  %24 = zext i8 %23 to i64
  %25 = add i64 %17, %24
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %12, !llvm.loop !9

29:                                               ; preds = %12
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %29, %9
  %32 = load i64, i64* %3, align 8
  ret i64 %32
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
