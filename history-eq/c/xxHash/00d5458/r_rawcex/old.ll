; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/00d5458/wrap_rawcex.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/00d5458/wrap_rawcex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_rawcex_XXH3_len_4to8_64b_len4(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = trunc i64 %0 to i32
  %5 = lshr i64 %2, 32
  %6 = sub i64 0, %2
  %7 = xor i64 %0, %6
  %8 = and i64 %0, 4294967295
  %9 = xor i64 %5, %8
  %10 = and i64 %7, 4294967295
  %11 = mul nuw i64 %10, %9
  %12 = tail call i32 @llvm.bswap.i32(i32 %4)
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 31
  %15 = or disjoint i64 %8, 288230376151711744
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %17 = add i64 %14, %16
  %18 = add i64 %17, %11
  %19 = lshr i64 %18, 59
  %20 = lshr i64 %18, 37
  %21 = xor i64 %19, %20
  %22 = xor i64 %21, %18
  %23 = mul i64 %22, 1609587791953885689
  %24 = lshr i64 %23, 32
  %25 = xor i64 %24, %23
  ret i64 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_rawcex_XXH3_len_4to8_64b_len8(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i64 %0, 32
  %5 = trunc nuw i64 %4 to i32
  %6 = lshr i64 %2, 32
  %7 = sub i64 0, %2
  %8 = and i64 %0, 4294967295
  %9 = xor i64 %6, %8
  %10 = and i64 %7, 4294967295
  %11 = xor i64 %10, %4
  %12 = mul nuw i64 %11, %9
  %13 = tail call i32 @llvm.bswap.i32(i32 %5)
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 31
  %16 = or disjoint i64 %8, 576460752303423488
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %18 = add i64 %12, %17
  %19 = add i64 %18, %15
  %20 = lshr i64 %19, 59
  %21 = lshr i64 %19, 37
  %22 = xor i64 %20, %21
  %23 = xor i64 %22, %19
  %24 = mul i64 %23, 1609587791953885689
  %25 = lshr i64 %24, 32
  %26 = xor i64 %25, %24
  ret i64 %26
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
