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
  br label %32

18:                                               ; preds = %3
  %19 = sext i32 %0 to i64
  %20 = sext i32 %1 to i64
  %21 = mul nsw i64 %20, %19
  %22 = lshr i64 %21, 32
  %23 = trunc nuw i64 %22 to i32
  %24 = and i8 %2, 64
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 0, i32 %0
  %27 = add i32 %26, %23
  %28 = zext nneg i8 %4 to i32
  %29 = ashr i32 %27, %28
  %30 = lshr i32 %29, 31
  %31 = add nsw i32 %30, %29
  br label %32

32:                                               ; preds = %6, %18
  %33 = phi i32 [ %31, %18 ], [ %17, %6 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64(i64 noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 63
  %5 = icmp eq i64 %1, 0
  %6 = ashr i8 %2, 7
  %7 = sext i8 %6 to i64
  br i1 %5, label %8, label %18

8:                                                ; preds = %3
  %9 = zext nneg i8 %4 to i64
  %10 = shl nsw i64 -1, %9
  %11 = xor i64 %10, -1
  %12 = icmp slt i64 %0, 0
  %13 = select i1 %12, i64 %11, i64 0
  %14 = add i64 %13, %0
  %15 = ashr i64 %14, %9
  %16 = xor i64 %15, %7
  %17 = sub nsw i64 %16, %7
  br label %34

18:                                               ; preds = %3
  %19 = sext i64 %0 to i128
  %20 = sext i64 %1 to i128
  %21 = mul nsw i128 %20, %19
  %22 = lshr i128 %21, 64
  %23 = trunc nuw i128 %22 to i64
  %24 = and i8 %2, 64
  %25 = icmp eq i8 %24, 0
  %26 = xor i64 %0, %7
  %27 = sub i64 %26, %7
  %28 = select i1 %25, i64 0, i64 %27
  %29 = add i64 %28, %23
  %30 = zext nneg i8 %4 to i64
  %31 = ashr i64 %29, %30
  %32 = lshr i64 %31, 63
  %33 = add nsw i64 %32, %31
  br label %34

34:                                               ; preds = %8, %18
  %35 = phi i64 [ %33, %18 ], [ %17, %8 ]
  ret i64 %35
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
