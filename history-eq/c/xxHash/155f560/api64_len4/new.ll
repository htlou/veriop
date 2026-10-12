; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api64_len4/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api64_len4/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 1
  %4 = trunc i64 %1 to i32
  %5 = add i32 %4, -1191285703
  %6 = add i32 %5, %3
  %7 = lshr i64 %1, 32
  %8 = trunc nuw i64 %7 to i32
  %9 = add i32 %8, 597969854
  %10 = add i32 %9, %3
  %11 = zext i32 %6 to i64
  %12 = zext i32 %10 to i64
  %13 = or disjoint i64 %11, 4294967296
  %14 = mul i64 %13, %12
  %15 = add nuw nsw i64 %11, 4
  %16 = add i64 %15, %14
  %17 = lshr i64 %16, 29
  %18 = xor i64 %17, %16
  %19 = mul i64 %18, 1609587929392839161
  %20 = lshr i64 %19, 32
  %21 = xor i64 %20, %19
  ret i64 %21
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
