; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api64_len8/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api64_len8/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i64 4
  %5 = load i32, ptr %4, align 1
  %6 = trunc i64 %1 to i32
  %7 = add i32 %6, -1191285703
  %8 = add i32 %7, %3
  %9 = lshr i64 %1, 32
  %10 = trunc nuw i64 %9 to i32
  %11 = add i32 %10, 597969854
  %12 = add i32 %11, %5
  %13 = zext i32 %8 to i64
  %14 = zext i32 %12 to i64
  %15 = or disjoint i64 %13, 4294967296
  %16 = mul i64 %15, %14
  %17 = add nuw nsw i64 %13, 8
  %18 = add i64 %17, %16
  %19 = lshr i64 %18, 29
  %20 = xor i64 %19, %18
  %21 = mul i64 %20, 1609587929392839161
  %22 = lshr i64 %21, 32
  %23 = xor i64 %22, %21
  ret i64 %23
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
