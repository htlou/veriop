; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/2dd84169/old-nibbles.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/2dd84169/old-nibbles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4611686018427387904) <4 x i64> @target0(<4 x i64> noundef %0, <4 x i64> noundef %1, <4 x i64> noundef %2) local_unnamed_addr #0 {
  %4 = bitcast <4 x i64> %2 to <16 x i16>
  %5 = shl <16 x i16> %4, splat (i16 4)
  %6 = bitcast <16 x i16> %5 to <4 x i64>
  %7 = and <4 x i64> %6, splat (i64 3472328296227680304)
  %8 = and <4 x i64> %0, splat (i64 1085102592571150095)
  %9 = or disjoint <4 x i64> %7, %8
  ret <4 x i64> %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4611686018427387904) <4 x i64> @target1(<4 x i64> noundef %0, <4 x i64> noundef %1, <4 x i64> noundef %2) local_unnamed_addr #0 {
  %4 = bitcast <4 x i64> %2 to <16 x i16>
  %5 = shl <16 x i16> %4, splat (i16 2)
  %6 = bitcast <16 x i16> %5 to <4 x i64>
  %7 = and <4 x i64> %6, splat (i64 3472328296227680304)
  %8 = and <4 x i64> %1, splat (i64 1085102592571150095)
  %9 = or disjoint <4 x i64> %7, %8
  ret <4 x i64> %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4611686018427387904) <4 x i64> @target2(<4 x i64> noundef %0, <4 x i64> noundef %1, <4 x i64> noundef %2) local_unnamed_addr #0 {
  %4 = and <4 x i64> %2, splat (i64 3472328296227680304)
  %5 = bitcast <4 x i64> %0 to <16 x i16>
  %6 = lshr <16 x i16> %5, splat (i16 4)
  %7 = bitcast <16 x i16> %6 to <4 x i64>
  %8 = and <4 x i64> %7, splat (i64 1085102592571150095)
  %9 = or disjoint <4 x i64> %8, %4
  ret <4 x i64> %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4611686018427387904) <4 x i64> @target3(<4 x i64> noundef %0, <4 x i64> noundef %1, <4 x i64> noundef %2) local_unnamed_addr #0 {
  %4 = bitcast <4 x i64> %2 to <16 x i16>
  %5 = lshr <16 x i16> %4, splat (i16 2)
  %6 = bitcast <16 x i16> %5 to <4 x i64>
  %7 = and <4 x i64> %6, splat (i64 3472328296227680304)
  %8 = bitcast <4 x i64> %1 to <16 x i16>
  %9 = lshr <16 x i16> %8, splat (i16 4)
  %10 = bitcast <16 x i16> %9 to <4 x i64>
  %11 = and <4 x i64> %10, splat (i64 1085102592571150095)
  %12 = or disjoint <4 x i64> %7, %11
  ret <4 x i64> %12
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
