; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91d43db/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91d43db/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_9to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -17
  %5 = icmp ult i64 %4, -8
  br i1 %5, label %43, label %6

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
  %19 = mul nuw nsw i64 %1, 374761393
  %20 = add i64 %19, %16
  %21 = mul i64 %11, -7046029288634856825
  %22 = add i64 %21, %18
  %23 = lshr i64 %22, 32
  %24 = xor i64 %23, %20
  %25 = zext i64 %24 to i128
  %26 = mul nuw i128 %25, 14029467366897019727
  %27 = trunc i128 %26 to i64
  %28 = lshr i128 %26, 64
  %29 = trunc nuw i128 %28 to i64
  %30 = mul i64 %22, -4417276706812531889
  %31 = add i64 %30, %29
  %32 = lshr i64 %27, 37
  %33 = xor i64 %32, %27
  %34 = mul i64 %33, 1609587791953885689
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  %37 = lshr i64 %31, 37
  %38 = xor i64 %37, %31
  %39 = mul i64 %38, 1609587791953885689
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  store i64 %36, ptr %2, align 8
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_seed_9to16(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add i64 %1, -17
  %6 = icmp ult i64 %5, -8
  br i1 %6, label %46, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 1
  %9 = add i64 %2, -4734510112055689544
  %10 = xor i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 2066345149520216444, %2
  %15 = xor i64 %13, %14
  %16 = xor i64 %10, %15
  %17 = zext i64 %16 to i128
  %18 = mul nuw i128 %17, 11400714785074694791
  %19 = trunc i128 %18 to i64
  %20 = lshr i128 %18, 64
  %21 = trunc nuw i128 %20 to i64
  %22 = mul nuw nsw i64 %1, 374761393
  %23 = add i64 %22, %19
  %24 = mul i64 %15, -7046029288634856825
  %25 = add i64 %24, %21
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %23
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
  store i64 %39, ptr %3, align 8
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %44, ptr %45, align 8
  br label %46

46:                                               ; preds = %4, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_secret_9to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = add i64 %1, -17
  %7 = icmp ult i64 %6, -8
  %8 = icmp ult i64 %3, 136
  %9 = or i1 %7, %8
  br i1 %9, label %50, label %10

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
  %26 = mul nuw nsw i64 %1, 374761393
  %27 = add i64 %26, %23
  %28 = mul i64 %19, -7046029288634856825
  %29 = add i64 %28, %25
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %27
  %32 = zext i64 %31 to i128
  %33 = mul nuw i128 %32, 14029467366897019727
  %34 = trunc i128 %33 to i64
  %35 = lshr i128 %33, 64
  %36 = trunc nuw i128 %35 to i64
  %37 = mul i64 %29, -4417276706812531889
  %38 = add i64 %37, %36
  %39 = lshr i64 %34, 37
  %40 = xor i64 %39, %34
  %41 = mul i64 %40, 1609587791953885689
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  %44 = lshr i64 %38, 37
  %45 = xor i64 %44, %38
  %46 = mul i64 %45, 1609587791953885689
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  store i64 %43, ptr %4, align 8
  %49 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %48, ptr %49, align 8
  br label %50

50:                                               ; preds = %5, %10
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
