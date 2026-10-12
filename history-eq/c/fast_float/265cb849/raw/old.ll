; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/265cb849/wrap.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/265cb849/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_raw_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %0, 8
  %4 = trunc i32 %3 to i8
  %5 = lshr i32 %0, 16
  %6 = trunc i32 %5 to i8
  %7 = lshr i32 %0, 24
  %8 = trunc nuw i32 %7 to i8
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = lshr i32 %1, 16
  %12 = trunc i32 %11 to i8
  %13 = lshr i32 %1, 24
  %14 = trunc nuw i32 %13 to i8
  %15 = trunc i32 %1 to i8
  %16 = trunc i32 %0 to i8
  %17 = or i8 %16, 32
  %18 = icmp eq i8 %17, %15
  %19 = or i8 %4, 32
  %20 = icmp eq i8 %19, %10
  %21 = and i1 %18, %20
  %22 = or i8 %6, 32
  %23 = icmp eq i8 %22, %12
  %24 = and i1 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = or i8 %8, 32
  %27 = icmp eq i8 %26, %14
  br label %28

28:                                               ; preds = %25, %2
  %29 = phi i1 [ false, %2 ], [ %27, %25 ]
  ret i1 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_literal_inf(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 223
  %3 = icmp eq i32 %2, 73
  %4 = and i32 %0, 57088
  %5 = icmp eq i32 %4, 19968
  %6 = and i1 %3, %5
  %7 = and i32 %0, 14614528
  %8 = icmp eq i32 %7, 4587520
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = and i32 %0, -553648128
  %12 = icmp eq i32 %11, 1224736768
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i1 [ false, %1 ], [ %12, %10 ]
  ret i1 %14
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
