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
  %7 = xor i64 %2, %0
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %9 = load i64, ptr %8, align 1
  %10 = sub i64 0, %2
  %11 = xor i64 %9, %10
  %12 = xor i64 %7, %11
  %13 = zext i64 %12 to i128
  %14 = mul nuw i128 %13, 11400714785074694791
  %15 = trunc i128 %14 to i64
  %16 = lshr i128 %14, 64
  %17 = trunc nuw i128 %16 to i64
  %18 = add i64 %15, 3372852537
  %19 = mul i64 %11, -7046029288634856825
  %20 = add i64 %19, %17
  %21 = lshr i64 %20, 32
  %22 = xor i64 %21, %18
  %23 = zext i64 %22 to i128
  %24 = mul nuw i128 %23, 14029467366897019727
  %25 = trunc i128 %24 to i64
  %26 = lshr i128 %24, 64
  %27 = trunc nuw i128 %26 to i64
  %28 = mul i64 %20, -4417276706812531889
  %29 = add i64 %28, %27
  %30 = lshr i64 %25, 37
  %31 = xor i64 %30, %25
  %32 = mul i64 %31, 1609587791953885689
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  %35 = lshr i64 %29, 37
  %36 = xor i64 %35, %29
  %37 = mul i64 %36, 1609587791953885689
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  store i64 %34, ptr %3, align 8
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %39, ptr %40, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rawcex_XXH3_len_9to16_128b_len16(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 16)) %3) local_unnamed_addr #0 {
  %5 = xor i64 %2, %0
  %6 = sub i64 0, %2
  %7 = xor i64 %1, %6
  %8 = xor i64 %5, %7
  %9 = zext i64 %8 to i128
  %10 = mul nuw i128 %9, 11400714785074694791
  %11 = trunc i128 %10 to i64
  %12 = lshr i128 %10, 64
  %13 = trunc nuw i128 %12 to i64
  %14 = add i64 %11, 5996182288
  %15 = mul i64 %7, -7046029288634856825
  %16 = add i64 %15, %13
  %17 = lshr i64 %16, 32
  %18 = xor i64 %17, %14
  %19 = zext i64 %18 to i128
  %20 = mul nuw i128 %19, 14029467366897019727
  %21 = trunc i128 %20 to i64
  %22 = lshr i128 %20, 64
  %23 = trunc nuw i128 %22 to i64
  %24 = mul i64 %16, -4417276706812531889
  %25 = add i64 %24, %23
  %26 = lshr i64 %21, 37
  %27 = xor i64 %26, %21
  %28 = mul i64 %27, 1609587791953885689
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %28
  %31 = lshr i64 %25, 37
  %32 = xor i64 %31, %25
  %33 = mul i64 %32, 1609587791953885689
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  store i64 %30, ptr %3, align 8
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %35, ptr %36, align 8
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
