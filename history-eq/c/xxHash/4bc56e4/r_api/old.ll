; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4bc56e4/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4bc56e4/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_9to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -17
  %5 = icmp ult i64 %4, -8
  br i1 %5, label %46, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -8
  %10 = load i64, ptr %9, align 1
  %11 = xor i64 %10, 2066345149520216444
  %12 = xor i64 %7, %11
  %13 = xor i64 %12, -4734510112055689544
  %14 = zext i64 %13 to i128
  %15 = mul nuw i128 %14, 11400714785074694791
  %16 = trunc i128 %15 to i64
  %17 = lshr i128 %15, 64
  %18 = trunc nuw i128 %17 to i64
  %19 = shl nuw nsw i64 %1, 54
  %20 = add nsw i64 %19, -18014398509481984
  %21 = add i64 %20, %16
  %22 = and i64 %11, 4294967295
  %23 = mul nuw i64 %22, 2246822518
  %24 = add i64 %23, %11
  %25 = add i64 %24, %18
  %26 = tail call noundef i64 @llvm.bswap.i64(i64 %25)
  %27 = xor i64 %26, %21
  %28 = zext i64 %27 to i128
  %29 = mul nuw i128 %28, 14029467366897019727
  %30 = trunc i128 %29 to i64
  %31 = lshr i128 %29, 64
  %32 = trunc nuw i128 %31 to i64
  %33 = mul i64 %25, -4417276706812531889
  %34 = add i64 %33, %32
  %35 = lshr i64 %30, 37
  %36 = xor i64 %35, %30
  %37 = mul i64 %36, 1609587791953885689
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  %40 = lshr i64 %34, 37
  %41 = xor i64 %40, %34
  %42 = mul i64 %41, 1609587791953885689
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  store i64 %39, ptr %2, align 8
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %44, ptr %45, align 8
  br label %46

46:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_seed_9to16(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add i64 %1, -17
  %6 = icmp ult i64 %5, -8
  br i1 %6, label %48, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -8
  %11 = load i64, ptr %10, align 1
  %12 = sub i64 2066345149520216444, %2
  %13 = xor i64 %11, %12
  %14 = xor i64 %8, %13
  %15 = xor i64 %14, -4734510112055689544
  %16 = zext i64 %15 to i128
  %17 = mul nuw i128 %16, 11400714785074694791
  %18 = trunc i128 %17 to i64
  %19 = lshr i128 %17, 64
  %20 = trunc nuw i128 %19 to i64
  %21 = shl nuw nsw i64 %1, 54
  %22 = add nsw i64 %21, -18014398509481984
  %23 = add i64 %22, %18
  %24 = and i64 %13, 4294967295
  %25 = mul nuw i64 %24, 2246822518
  %26 = add i64 %25, %13
  %27 = add i64 %26, %20
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %27)
  %29 = xor i64 %28, %23
  %30 = zext i64 %29 to i128
  %31 = mul nuw i128 %30, 14029467366897019727
  %32 = trunc i128 %31 to i64
  %33 = lshr i128 %31, 64
  %34 = trunc nuw i128 %33 to i64
  %35 = mul i64 %27, -4417276706812531889
  %36 = add i64 %35, %34
  %37 = lshr i64 %32, 37
  %38 = xor i64 %37, %32
  %39 = mul i64 %38, 1609587791953885689
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  %42 = lshr i64 %36, 37
  %43 = xor i64 %42, %36
  %44 = mul i64 %43, 1609587791953885689
  %45 = lshr i64 %44, 32
  %46 = xor i64 %45, %44
  store i64 %41, ptr %3, align 8
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %46, ptr %47, align 8
  br label %48

48:                                               ; preds = %4, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_secret_9to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = add i64 %1, -17
  %7 = icmp ult i64 %6, -8
  %8 = icmp ult i64 %3, 136
  %9 = or i1 %7, %8
  br i1 %9, label %53, label %10

10:                                               ; preds = %5
  %11 = load i64, ptr %2, align 1
  %12 = getelementptr i8, ptr %2, i64 8
  %13 = load i64, ptr %12, align 1
  %14 = load i64, ptr %0, align 1
  %15 = xor i64 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %17 = getelementptr inbounds i8, ptr %16, i64 -8
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %13
  %20 = xor i64 %15, %19
  %21 = zext i64 %20 to i128
  %22 = mul nuw i128 %21, 11400714785074694791
  %23 = trunc i128 %22 to i64
  %24 = lshr i128 %22, 64
  %25 = trunc nuw i128 %24 to i64
  %26 = shl nuw nsw i64 %1, 54
  %27 = add nsw i64 %26, -18014398509481984
  %28 = add i64 %27, %23
  %29 = and i64 %19, 4294967295
  %30 = mul nuw i64 %29, 2246822518
  %31 = add i64 %30, %19
  %32 = add i64 %31, %25
  %33 = tail call noundef i64 @llvm.bswap.i64(i64 %32)
  %34 = xor i64 %33, %28
  %35 = zext i64 %34 to i128
  %36 = mul nuw i128 %35, 14029467366897019727
  %37 = trunc i128 %36 to i64
  %38 = lshr i128 %36, 64
  %39 = trunc nuw i128 %38 to i64
  %40 = mul i64 %32, -4417276706812531889
  %41 = add i64 %40, %39
  %42 = lshr i64 %37, 37
  %43 = xor i64 %42, %37
  %44 = mul i64 %43, 1609587791953885689
  %45 = lshr i64 %44, 32
  %46 = xor i64 %45, %44
  %47 = lshr i64 %41, 37
  %48 = xor i64 %47, %41
  %49 = mul i64 %48, 1609587791953885689
  %50 = lshr i64 %49, 32
  %51 = xor i64 %50, %49
  store i64 %46, ptr %4, align 8
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %51, ptr %52, align 8
  br label %53

53:                                               ; preds = %5, %10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
