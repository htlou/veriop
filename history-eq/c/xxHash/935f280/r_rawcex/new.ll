; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/935f280/wrap_rawcex.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/935f280/wrap_rawcex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rawcex_XXH3_len_4to8_128b_len4(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 16)) %3) local_unnamed_addr #0 {
  %5 = trunc i64 %2 to i32
  %6 = tail call noundef i32 @llvm.bswap.i32(i32 %5)
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = and i64 %0, 4294967295
  %10 = mul nuw i64 %9, 4294967297
  %11 = xor i64 %10, %8
  %12 = xor i64 %11, %2
  %13 = zext i64 %12 to i128
  %14 = mul nuw i128 %13, 11400714785074694791
  %15 = trunc i128 %14 to i64
  %16 = lshr i128 %14, 64
  %17 = trunc nuw i128 %16 to i64
  %18 = add i64 %15, 4
  %19 = add i64 %17, -4
  %20 = lshr i64 %19, 5
  %21 = xor i64 %20, %18
  %22 = shl i64 %21, 3
  %23 = add i64 %22, %19
  %24 = lshr i64 %21, 37
  %25 = xor i64 %24, %21
  %26 = mul i64 %25, 1609587791953885689
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  %29 = lshr i64 %23, 37
  %30 = xor i64 %29, %23
  %31 = mul i64 %30, 1609587791953885689
  %32 = lshr i64 %31, 32
  %33 = xor i64 %32, %31
  store i64 %28, ptr %3, align 8
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %33, ptr %34, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rawcex_XXH3_len_4to8_128b_len8(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 16)) %3) local_unnamed_addr #0 {
  %5 = trunc i64 %2 to i32
  %6 = tail call noundef i32 @llvm.bswap.i32(i32 %5)
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 32)
  %10 = xor i64 %9, %8
  %11 = xor i64 %10, %2
  %12 = zext i64 %11 to i128
  %13 = mul nuw i128 %12, 11400714785074694791
  %14 = trunc i128 %13 to i64
  %15 = lshr i128 %13, 64
  %16 = trunc nuw i128 %15 to i64
  %17 = add i64 %14, 8
  %18 = add i64 %16, -8
  %19 = lshr i64 %18, 5
  %20 = xor i64 %19, %17
  %21 = shl i64 %20, 3
  %22 = add i64 %21, %18
  %23 = lshr i64 %20, 37
  %24 = xor i64 %23, %20
  %25 = mul i64 %24, 1609587791953885689
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %25
  %28 = lshr i64 %22, 37
  %29 = xor i64 %28, %22
  %30 = mul i64 %29, 1609587791953885689
  %31 = lshr i64 %30, 32
  %32 = xor i64 %31, %30
  store i64 %27, ptr %3, align 8
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %32, ptr %33, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
