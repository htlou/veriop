; ModuleID = 'ld/src/libdivide_s_target.c'
source_filename = "ld/src/libdivide_s_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 31
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = ashr i8 %2, 7
  %8 = sext i8 %7 to i32
  %9 = zext nneg i8 %4 to i32
  %10 = shl nsw i32 -1, %9
  %11 = xor i32 %10, -1
  %12 = icmp slt i32 %0, 0
  %13 = select i1 %12, i32 %11, i32 0
  %14 = add i32 %13, %0
  %15 = ashr i32 %14, %9
  %16 = xor i32 %15, %8
  %17 = sub i32 %16, %8
  br label %38

18:                                               ; preds = %3
  %19 = sext i32 %0 to i64
  %20 = sext i32 %1 to i64
  %21 = mul nsw i64 %20, %19
  %22 = lshr i64 %21, 32
  %23 = trunc nuw i64 %22 to i32
  %24 = and i8 %2, 64
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = ashr i8 %2, 7
  %28 = sext i8 %27 to i32
  %29 = xor i32 %0, %28
  %30 = sub i32 %29, %28
  %31 = add i32 %30, %23
  br label %32

32:                                               ; preds = %26, %18
  %33 = phi i32 [ %31, %26 ], [ %23, %18 ]
  %34 = zext nneg i8 %4 to i32
  %35 = ashr i32 %33, %34
  %36 = lshr i32 %35, 31
  %37 = add nsw i32 %36, %35
  br label %38

38:                                               ; preds = %6, %32
  %39 = phi i32 [ %37, %32 ], [ %17, %6 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64(i64 noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 63
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = zext nneg i8 %4 to i64
  %8 = shl nsw i64 -1, %7
  %9 = xor i64 %8, -1
  %10 = icmp slt i64 %0, 0
  %11 = select i1 %10, i64 %9, i64 0
  %12 = add i64 %11, %0
  %13 = ashr i64 %12, %7
  %14 = ashr i8 %2, 7
  %15 = sext i8 %14 to i64
  %16 = xor i64 %13, %15
  %17 = sub nsw i64 %16, %15
  br label %38

18:                                               ; preds = %3
  %19 = sext i64 %0 to i128
  %20 = sext i64 %1 to i128
  %21 = mul nsw i128 %20, %19
  %22 = lshr i128 %21, 64
  %23 = trunc nuw i128 %22 to i64
  %24 = and i8 %2, 64
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = ashr i8 %2, 7
  %28 = sext i8 %27 to i64
  %29 = xor i64 %0, %28
  %30 = sub i64 %29, %28
  %31 = add i64 %30, %23
  br label %32

32:                                               ; preds = %26, %18
  %33 = phi i64 [ %31, %26 ], [ %23, %18 ]
  %34 = zext nneg i8 %4 to i64
  %35 = ashr i64 %33, %34
  %36 = lshr i64 %35, 63
  %37 = add nsw i64 %36, %35
  br label %38

38:                                               ; preds = %6, %32
  %39 = phi i64 [ %37, %32 ], [ %17, %6 ]
  ret i64 %39
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
