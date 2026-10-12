; ModuleID = 'wrap.c'
source_filename = "wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_do(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = and i8 %2, 31
  %7 = zext nneg i8 %6 to i32
  %8 = lshr i32 %0, %7
  br label %26

9:                                                ; preds = %3
  %10 = zext i32 %1 to i64
  %11 = zext i32 %0 to i64
  %12 = mul nuw i64 %10, %11
  %13 = lshr i64 %12, 32
  %14 = trunc nuw i64 %13 to i32
  %15 = zext i8 %2 to i32
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %9
  %19 = sub i32 %0, %14
  %20 = lshr i32 %19, 1
  %21 = add i32 %20, %14
  %22 = and i32 %15, 31
  %23 = lshr i32 %21, %22
  br label %26

24:                                               ; preds = %9
  %25 = lshr i32 %14, %15
  br label %26

26:                                               ; preds = %5, %18, %24
  %27 = phi i32 [ %8, %5 ], [ %23, %18 ], [ %25, %24 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_do(i64 noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = and i8 %2, 63
  %7 = zext nneg i8 %6 to i64
  %8 = lshr i64 %0, %7
  br label %28

9:                                                ; preds = %3
  %10 = zext i64 %1 to i128
  %11 = zext i64 %0 to i128
  %12 = mul nuw i128 %10, %11
  %13 = lshr i128 %12, 64
  %14 = trunc nuw i128 %13 to i64
  %15 = zext i8 %2 to i32
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %9
  %19 = sub i64 %0, %14
  %20 = lshr i64 %19, 1
  %21 = add i64 %20, %14
  %22 = and i32 %15, 63
  %23 = zext nneg i32 %22 to i64
  %24 = lshr i64 %21, %23
  br label %28

25:                                               ; preds = %9
  %26 = zext nneg i8 %2 to i64
  %27 = lshr i64 %14, %26
  br label %28

28:                                               ; preds = %5, %18, %25
  %29 = phi i64 [ %8, %5 ], [ %24, %18 ], [ %27, %25 ]
  ret i64 %29
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
