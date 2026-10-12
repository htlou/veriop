; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0a5f34f/wrap_rawcex.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0a5f34f/wrap_rawcex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_rawcex_XXH3_len_4to8_64b_len4(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = and i64 %0, 4294967295
  %5 = mul nuw i64 %4, 4294967297
  %6 = xor i64 %5, %2
  %7 = lshr i64 %6, 39
  %8 = xor i64 %7, %6
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %9, 4
  %11 = lshr i64 %10, 47
  %12 = lshr i64 %10, 37
  %13 = xor i64 %11, %12
  %14 = xor i64 %13, %10
  %15 = mul i64 %14, 1609587791953885689
  %16 = lshr i64 %15, 32
  %17 = xor i64 %16, %15
  ret i64 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_rawcex_XXH3_len_4to8_64b_len8(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 32)
  %5 = xor i64 %2, %4
  %6 = lshr i64 %5, 39
  %7 = xor i64 %6, %5
  %8 = mul i64 %7, -4417276706812531889
  %9 = add i64 %8, 8
  %10 = lshr i64 %9, 47
  %11 = lshr i64 %9, 37
  %12 = xor i64 %10, %11
  %13 = xor i64 %12, %9
  %14 = mul i64 %13, 1609587791953885689
  %15 = lshr i64 %14, 32
  %16 = xor i64 %15, %14
  ret i64 %16
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
