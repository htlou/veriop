; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/raw_mul128_x86_64_long/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/raw_mul128_x86_64_long/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_fold64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %0, 32
  %4 = lshr i64 %1, 32
  %5 = and i64 %0, 4294967295
  %6 = and i64 %1, 4294967295
  %7 = mul nuw i64 %6, %5
  %8 = lshr i64 %7, 32
  %9 = mul nuw i64 %6, %3
  %10 = add nuw i64 %8, %9
  %11 = lshr i64 %10, 32
  %12 = mul nuw i64 %4, %5
  %13 = and i64 %10, 4294967295
  %14 = add nuw i64 %13, %12
  %15 = lshr i64 %14, 32
  %16 = mul nuw i64 %4, %3
  %17 = and i64 %7, 4294967295
  %18 = shl i64 %14, 32
  %19 = add nuw i64 %17, %16
  %20 = add nuw i64 %19, %11
  %21 = add i64 %20, %15
  %22 = add i64 %21, %18
  ret i64 %22
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
