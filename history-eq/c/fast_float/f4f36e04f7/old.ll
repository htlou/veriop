; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/f4f36e04f7/old.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/f4f36e04f7/old.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @parse4(i64 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = sext i8 %1 to i32
  %10 = add nsw i32 %9, -48
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = add i8 %1, -48
  %14 = mul i64 %0, 10
  %15 = zext i8 %13 to i64
  %16 = add i64 %14, %15
  %17 = sext i8 %2 to i32
  %18 = add nsw i32 %17, -48
  %19 = icmp ult i32 %18, 10
  br i1 %19, label %20, label %41

20:                                               ; preds = %12
  %21 = add i8 %2, -48
  %22 = mul i64 %16, 10
  %23 = zext i8 %21 to i64
  %24 = add i64 %22, %23
  %25 = sext i8 %3 to i32
  %26 = add nsw i32 %25, -48
  %27 = icmp ult i32 %26, 10
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = add i8 %3, -48
  %30 = mul i64 %24, 10
  %31 = zext i8 %29 to i64
  %32 = add i64 %30, %31
  %33 = sext i8 %4 to i32
  %34 = add nsw i32 %33, -48
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = add i8 %4, -48
  %38 = mul i64 %32, 10
  %39 = zext i8 %37 to i64
  %40 = add i64 %38, %39
  br label %41

41:                                               ; preds = %36, %28, %20, %12, %8
  %42 = phi i64 [ %0, %8 ], [ %16, %12 ], [ %24, %20 ], [ %32, %28 ], [ %40, %36 ]
  %43 = phi i32 [ 0, %8 ], [ 1, %12 ], [ 2, %20 ], [ 3, %28 ], [ 4, %36 ]
  %44 = insertvalue { i64, i32 } poison, i64 %42, 0
  %45 = insertvalue { i64, i32 } %44, i32 %43, 1
  ret { i64, i32 } %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @parse5(i64 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = sext i8 %1 to i32
  %10 = add nsw i32 %9, -48
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = add i8 %1, -48
  %14 = mul i64 %0, 10
  %15 = zext i8 %13 to i64
  %16 = add i64 %14, %15
  %17 = sext i8 %2 to i32
  %18 = add nsw i32 %17, -48
  %19 = icmp ult i32 %18, 10
  br i1 %19, label %20, label %49

20:                                               ; preds = %12
  %21 = add i8 %2, -48
  %22 = mul i64 %16, 10
  %23 = zext i8 %21 to i64
  %24 = add i64 %22, %23
  %25 = sext i8 %3 to i32
  %26 = add nsw i32 %25, -48
  %27 = icmp ult i32 %26, 10
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = add i8 %3, -48
  %30 = mul i64 %24, 10
  %31 = zext i8 %29 to i64
  %32 = add i64 %30, %31
  %33 = sext i8 %4 to i32
  %34 = add nsw i32 %33, -48
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = add i8 %4, -48
  %38 = mul i64 %32, 10
  %39 = zext i8 %37 to i64
  %40 = add i64 %38, %39
  %41 = sext i8 %5 to i32
  %42 = add nsw i32 %41, -48
  %43 = icmp ult i32 %42, 10
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = add i8 %5, -48
  %46 = mul i64 %40, 10
  %47 = zext i8 %45 to i64
  %48 = add i64 %46, %47
  br label %49

49:                                               ; preds = %44, %36, %28, %20, %12, %8
  %50 = phi i64 [ %0, %8 ], [ %16, %12 ], [ %24, %20 ], [ %32, %28 ], [ %40, %36 ], [ %48, %44 ]
  %51 = phi i32 [ 0, %8 ], [ 1, %12 ], [ 2, %20 ], [ 3, %28 ], [ 4, %36 ], [ 5, %44 ]
  %52 = insertvalue { i64, i32 } poison, i64 %50, 0
  %53 = insertvalue { i64, i32 } %52, i32 %51, 1
  ret { i64, i32 } %53
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
