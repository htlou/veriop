; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/935f280/wrap_rawcex.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/935f280/wrap_rawcex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rawcex_XXH3_len_4to8_128b_len4(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 16)) %3) local_unnamed_addr #0 {
  %5 = and i64 %0, 4294967295
  %6 = mul nuw i64 %5, 4294967297
  %7 = tail call noundef i64 @llvm.bswap.i64(i64 %6)
  %8 = xor i64 %6, %2
  %9 = sub i64 0, %2
  %10 = xor i64 %7, %9
  %11 = lshr i64 %8, 51
  %12 = xor i64 %11, %8
  %13 = mul i64 %12, 2654435761
  %14 = add i64 %13, 4
  %15 = lshr i64 %14, 47
  %16 = xor i64 %15, %14
  %17 = mul i64 %16, -4417276706812531889
  %18 = lshr i64 %10, 47
  %19 = xor i64 %18, %10
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -4
  %22 = lshr i64 %21, 43
  %23 = xor i64 %22, %21
  %24 = mul i64 %23, -8796714831421723037
  %25 = lshr i64 %17, 37
  %26 = xor i64 %25, %17
  %27 = mul i64 %26, 1609587791953885689
  %28 = lshr i64 %27, 32
  %29 = xor i64 %28, %27
  %30 = lshr i64 %24, 37
  %31 = xor i64 %30, %24
  %32 = mul i64 %31, 1609587791953885689
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  store i64 %29, ptr %3, align 8
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %34, ptr %35, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rawcex_XXH3_len_4to8_128b_len8(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 16)) %3) local_unnamed_addr #0 {
  %5 = tail call noundef i64 @llvm.bswap.i64(i64 %0)
  %6 = xor i64 %2, %0
  %7 = sub i64 0, %2
  %8 = xor i64 %5, %7
  %9 = lshr i64 %6, 51
  %10 = xor i64 %9, %6
  %11 = mul i64 %10, 2654435761
  %12 = add i64 %11, 8
  %13 = lshr i64 %12, 47
  %14 = xor i64 %13, %12
  %15 = mul i64 %14, -4417276706812531889
  %16 = lshr i64 %8, 47
  %17 = xor i64 %16, %8
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %18, -8
  %20 = lshr i64 %19, 43
  %21 = xor i64 %20, %19
  %22 = mul i64 %21, -8796714831421723037
  %23 = lshr i64 %15, 37
  %24 = xor i64 %23, %15
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
declare i64 @llvm.bswap.i64(i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
