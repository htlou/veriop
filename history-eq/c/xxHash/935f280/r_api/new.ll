; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/935f280/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/935f280/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_4to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -9
  %5 = icmp ult i64 %4, -5
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -4
  %10 = load i32, ptr %9, align 1
  %11 = zext i32 %10 to i64
  %12 = zext i32 %7 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or disjoint i64 %13, %11
  %15 = xor i64 %14, -4734510112055689544
  %16 = zext i64 %15 to i128
  %17 = mul nuw i128 %16, 11400714785074694791
  %18 = trunc i128 %17 to i64
  %19 = lshr i128 %17, 64
  %20 = trunc nuw i128 %19 to i64
  %21 = add i64 %1, %18
  %22 = sub i64 %20, %1
  %23 = lshr i64 %22, 5
  %24 = xor i64 %23, %21
  %25 = shl i64 %24, 3
  %26 = add i64 %25, %22
  %27 = lshr i64 %24, 37
  %28 = xor i64 %27, %24
  %29 = mul i64 %28, 1609587791953885689
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  %32 = lshr i64 %26, 37
  %33 = xor i64 %32, %26
  %34 = mul i64 %33, 1609587791953885689
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  store i64 %31, ptr %2, align 8
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %36, ptr %37, align 8
  br label %38

38:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_seed_4to8(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add i64 %1, -9
  %6 = icmp ult i64 %5, -5
  br i1 %6, label %45, label %7

7:                                                ; preds = %4
  %8 = trunc i64 %2 to i32
  %9 = tail call noundef i32 @llvm.bswap.i32(i32 %8)
  %10 = zext i32 %9 to i64
  %11 = shl nuw i64 %10, 32
  %12 = xor i64 %11, %2
  %13 = load i32, ptr %0, align 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %15 = getelementptr inbounds i8, ptr %14, i64 -4
  %16 = load i32, ptr %15, align 1
  %17 = zext i32 %16 to i64
  %18 = zext i32 %13 to i64
  %19 = shl nuw i64 %18, 32
  %20 = or disjoint i64 %19, %17
  %21 = add i64 %12, -4734510112055689544
  %22 = xor i64 %20, %21
  %23 = zext i64 %22 to i128
  %24 = mul nuw i128 %23, 11400714785074694791
  %25 = trunc i128 %24 to i64
  %26 = lshr i128 %24, 64
  %27 = trunc nuw i128 %26 to i64
  %28 = add i64 %1, %25
  %29 = sub i64 %27, %1
  %30 = lshr i64 %29, 5
  %31 = xor i64 %30, %28
  %32 = shl i64 %31, 3
  %33 = add i64 %32, %29
  %34 = lshr i64 %31, 37
  %35 = xor i64 %34, %31
  %36 = mul i64 %35, 1609587791953885689
  %37 = lshr i64 %36, 32
  %38 = xor i64 %37, %36
  %39 = lshr i64 %33, 37
  %40 = xor i64 %39, %33
  %41 = mul i64 %40, 1609587791953885689
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  store i64 %38, ptr %3, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %43, ptr %44, align 8
  br label %45

45:                                               ; preds = %4, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_secret_4to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = add i64 %1, -9
  %7 = icmp ult i64 %6, -5
  %8 = icmp ult i64 %3, 136
  %9 = or i1 %7, %8
  br i1 %9, label %43, label %10

10:                                               ; preds = %5
  %11 = load i64, ptr %2, align 1
  %12 = load i32, ptr %0, align 1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %14 = getelementptr inbounds i8, ptr %13, i64 -4
  %15 = load i32, ptr %14, align 1
  %16 = zext i32 %15 to i64
  %17 = zext i32 %12 to i64
  %18 = shl nuw i64 %17, 32
  %19 = or disjoint i64 %18, %16
  %20 = xor i64 %19, %11
  %21 = zext i64 %20 to i128
  %22 = mul nuw i128 %21, 11400714785074694791
  %23 = trunc i128 %22 to i64
  %24 = lshr i128 %22, 64
  %25 = trunc nuw i128 %24 to i64
  %26 = add i64 %1, %23
  %27 = sub i64 %25, %1
  %28 = lshr i64 %27, 5
  %29 = xor i64 %28, %26
  %30 = shl i64 %29, 3
  %31 = add i64 %30, %27
  %32 = lshr i64 %29, 37
  %33 = xor i64 %32, %29
  %34 = mul i64 %33, 1609587791953885689
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  %37 = lshr i64 %31, 37
  %38 = xor i64 %37, %31
  %39 = mul i64 %38, 1609587791953885689
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  store i64 %36, ptr %4, align 8
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %5, %10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
