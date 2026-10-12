; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c8edb85/wrap_div.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c8edb85/wrap_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_quot(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = zext i64 %0 to i128
  %5 = shl nuw i128 %4, 64
  %6 = zext i64 %1 to i128
  %7 = or disjoint i128 %5, %6
  %8 = zext i64 %2 to i128
  %9 = udiv i128 %7, %8
  %10 = trunc i128 %9 to i64
  ret i64 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_rem(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = zext i64 %0 to i128
  %5 = shl nuw i128 %4, 64
  %6 = zext i64 %1 to i128
  %7 = or disjoint i128 %5, %6
  %8 = zext i64 %2 to i128
  %9 = udiv i128 %7, %8
  %10 = trunc i128 %9 to i64
  %11 = mul i64 %2, %10
  %12 = sub i64 %1, %11
  ret i64 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_pre_quot(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %0, %2
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = zext i64 %0 to i128
  %7 = shl nuw i128 %6, 64
  %8 = zext i64 %1 to i128
  %9 = or disjoint i128 %7, %8
  %10 = zext i64 %2 to i128
  %11 = udiv i128 %9, %10
  %12 = trunc i128 %11 to i64
  br label %13

13:                                               ; preds = %3, %5
  %14 = phi i64 [ %12, %5 ], [ 0, %3 ]
  ret i64 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_pre_rem(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i64 %0, %2
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = zext i64 %0 to i128
  %7 = shl nuw i128 %6, 64
  %8 = zext i64 %1 to i128
  %9 = or disjoint i128 %7, %8
  %10 = zext i64 %2 to i128
  %11 = udiv i128 %9, %10
  %12 = trunc i128 %11 to i64
  %13 = mul i64 %2, %12
  %14 = sub i64 %1, %13
  br label %15

15:                                               ; preds = %3, %5
  %16 = phi i64 [ %14, %5 ], [ 0, %3 ]
  ret i64 %16
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
