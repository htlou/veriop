; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/b54708f/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/b54708f/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_4to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -9
  %5 = icmp ult i64 %4, -5
  br i1 %5, label %39, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -4
  %10 = load i32, ptr %9, align 1
  %11 = zext i32 %7 to i64
  %12 = zext i32 %10 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or disjoint i64 %13, %11
  %15 = xor i64 %14, -4734510112055689544
  %16 = shl nuw nsw i64 %1, 2
  %17 = add nuw nsw i64 %16, -7046029288634856825
  %18 = zext i64 %15 to i128
  %19 = zext i64 %17 to i128
  %20 = mul nuw i128 %18, %19
  %21 = trunc i128 %20 to i64
  %22 = lshr i128 %20, 64
  %23 = trunc nuw i128 %22 to i64
  %24 = shl i64 %21, 1
  %25 = add i64 %24, %23
  %26 = lshr i64 %25, 3
  %27 = xor i64 %26, %21
  %28 = lshr i64 %27, 37
  %29 = xor i64 %28, %27
  %30 = mul i64 %29, 1609587791953885689
  %31 = lshr i64 %30, 32
  %32 = xor i64 %31, %30
  %33 = lshr i64 %25, 37
  %34 = xor i64 %33, %25
  %35 = mul i64 %34, 1609587791953885689
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  store i64 %32, ptr %2, align 8
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_seed_4to8(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add i64 %1, -9
  %6 = icmp ult i64 %5, -5
  br i1 %6, label %46, label %7

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
  %17 = zext i32 %13 to i64
  %18 = zext i32 %16 to i64
  %19 = shl nuw i64 %18, 32
  %20 = or disjoint i64 %19, %17
  %21 = add i64 %12, -4734510112055689544
  %22 = xor i64 %20, %21
  %23 = shl nuw nsw i64 %1, 2
  %24 = add nuw nsw i64 %23, -7046029288634856825
  %25 = zext i64 %22 to i128
  %26 = zext i64 %24 to i128
  %27 = mul nuw i128 %25, %26
  %28 = trunc i128 %27 to i64
  %29 = lshr i128 %27, 64
  %30 = trunc nuw i128 %29 to i64
  %31 = shl i64 %28, 1
  %32 = add i64 %31, %30
  %33 = lshr i64 %32, 3
  %34 = xor i64 %33, %28
  %35 = lshr i64 %34, 37
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587791953885689
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  %40 = lshr i64 %32, 37
  %41 = xor i64 %40, %32
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
define dso_local void @target_api_128_secret_4to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = add i64 %1, -9
  %7 = icmp ult i64 %6, -5
  %8 = icmp ult i64 %3, 136
  %9 = or i1 %7, %8
  br i1 %9, label %44, label %10

10:                                               ; preds = %5
  %11 = load i64, ptr %2, align 1
  %12 = load i32, ptr %0, align 1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %14 = getelementptr inbounds i8, ptr %13, i64 -4
  %15 = load i32, ptr %14, align 1
  %16 = zext i32 %12 to i64
  %17 = zext i32 %15 to i64
  %18 = shl nuw i64 %17, 32
  %19 = or disjoint i64 %18, %16
  %20 = xor i64 %19, %11
  %21 = shl nuw nsw i64 %1, 2
  %22 = add nuw nsw i64 %21, -7046029288634856825
  %23 = zext i64 %20 to i128
  %24 = zext i64 %22 to i128
  %25 = mul nuw i128 %23, %24
  %26 = trunc i128 %25 to i64
  %27 = lshr i128 %25, 64
  %28 = trunc nuw i128 %27 to i64
  %29 = shl i64 %26, 1
  %30 = add i64 %29, %28
  %31 = lshr i64 %30, 3
  %32 = xor i64 %31, %26
  %33 = lshr i64 %32, 37
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, 1609587791953885689
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  %38 = lshr i64 %30, 37
  %39 = xor i64 %38, %30
  %40 = mul i64 %39, 1609587791953885689
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  store i64 %37, ptr %4, align 8
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %42, ptr %43, align 8
  br label %44

44:                                               ; preds = %5, %10
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
