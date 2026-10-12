; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91d43db/wrap_rawcex.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91d43db/wrap_rawcex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rawcex_XXH3_len_9to16_128b_len9(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 16)) %3) local_unnamed_addr #0 {
  %5 = alloca [16 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  store i64 %0, ptr %5, align 64
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %8 = load i64, ptr %7, align 1
  %9 = sub i64 0, %2
  %10 = xor i64 %8, %9
  %11 = xor i64 %10, %0
  %12 = zext i64 %11 to i128
  %13 = mul nuw i128 %12, 11400714785074694791
  %14 = trunc i128 %13 to i64
  %15 = lshr i128 %13, 64
  %16 = trunc nuw i128 %15 to i64
  %17 = add i64 %14, 144115188075855872
  %18 = and i64 %10, 4294967295
  %19 = mul nuw i64 %18, 2246822518
  %20 = add i64 %19, %10
  %21 = add i64 %20, %16
  %22 = lshr i64 %21, 3
  %23 = xor i64 %22, %17
  %24 = zext i64 %23 to i128
  %25 = mul nuw i128 %24, 14029467366897019727
  %26 = trunc i128 %25 to i64
  %27 = lshr i128 %25, 64
  %28 = trunc nuw i128 %27 to i64
  %29 = mul i64 %21, -4417276706812531889
  %30 = add i64 %29, %28
  %31 = lshr i64 %26, 37
  %32 = xor i64 %31, %26
  %33 = mul i64 %32, 1609587791953885689
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  %36 = lshr i64 %30, 37
  %37 = xor i64 %36, %30
  %38 = mul i64 %37, 1609587791953885689
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  store i64 %35, ptr %3, align 8
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %40, ptr %41, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rawcex_XXH3_len_9to16_128b_len16(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 16)) %3) local_unnamed_addr #0 {
  %5 = sub i64 0, %2
  %6 = xor i64 %1, %5
  %7 = xor i64 %6, %0
  %8 = zext i64 %7 to i128
  %9 = mul nuw i128 %8, 11400714785074694791
  %10 = trunc i128 %9 to i64
  %11 = lshr i128 %9, 64
  %12 = trunc nuw i128 %11 to i64
  %13 = add i64 %10, 270215977642229760
  %14 = and i64 %6, 4294967295
  %15 = mul nuw i64 %14, 2246822518
  %16 = add i64 %15, %6
  %17 = add i64 %16, %12
  %18 = lshr i64 %17, 3
  %19 = xor i64 %18, %13
  %20 = zext i64 %19 to i128
  %21 = mul nuw i128 %20, 14029467366897019727
  %22 = trunc i128 %21 to i64
  %23 = lshr i128 %21, 64
  %24 = trunc nuw i128 %23 to i64
  %25 = mul i64 %17, -4417276706812531889
  %26 = add i64 %25, %24
  %27 = lshr i64 %22, 37
  %28 = xor i64 %27, %22
  %29 = mul i64 %28, 1609587791953885689
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  %32 = lshr i64 %26, 37
  %33 = xor i64 %32, %26
  %34 = mul i64 %33, 1609587791953885689
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  store i64 %31, ptr %3, align 8
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %36, ptr %37, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
