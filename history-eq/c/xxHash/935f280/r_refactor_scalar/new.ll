; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/935f280/wrap_refactor.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/935f280/wrap_refactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_4to8(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -9
  %5 = icmp ult i64 %4, -5
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = trunc i64 %2 to i32
  %8 = tail call noundef i32 @llvm.bswap.i32(i32 %7)
  %9 = load i32, ptr %0, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -4
  %12 = load i32, ptr %11, align 1
  %13 = tail call noundef i32 @llvm.bswap.i32(i32 %9)
  %14 = lshr i64 %2, 32
  %15 = trunc nuw i64 %14 to i32
  %16 = xor i32 %8, %15
  %17 = add i32 %16, 963444408
  %18 = xor i32 %13, %17
  %19 = sub i32 -1102339037, %7
  %20 = xor i32 %12, %19
  %21 = zext i32 %18 to i64
  %22 = zext i32 %20 to i64
  %23 = mul nuw i64 %21, %22
  %24 = zext i32 %9 to i64
  %25 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 23)
  %26 = zext i32 %25 to i64
  %27 = add nuw nsw i64 %26, %24
  %28 = shl i64 %27, 32
  %29 = add nuw i64 %23, %1
  %30 = add i64 %29, %28
  %31 = lshr i64 %30, 59
  %32 = lshr i64 %30, 37
  %33 = xor i64 %31, %32
  %34 = xor i64 %33, %30
  %35 = mul i64 %34, 1609587791953885689
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  br label %38

38:                                               ; preds = %3, %6
  %39 = phi i64 [ %37, %6 ], [ 0, %3 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_9to16(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -17
  %5 = icmp ult i64 %4, -8
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, -4734510112055689544
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -8
  %11 = load i64, ptr %10, align 1
  %12 = sub i64 2066345149520216444, %2
  %13 = xor i64 %11, %12
  %14 = zext i64 %8 to i128
  %15 = zext i64 %13 to i128
  %16 = mul nuw i128 %15, %14
  %17 = lshr i128 %16, 64
  %18 = xor i128 %17, %16
  %19 = trunc i128 %18 to i64
  %20 = add i64 %8, %1
  %21 = add i64 %20, %13
  %22 = add i64 %21, %19
  %23 = lshr i64 %22, 37
  %24 = xor i64 %23, %22
  %25 = mul i64 %24, 1609587791953885689
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %25
  br label %28

28:                                               ; preds = %3, %6
  %29 = phi i64 [ %27, %6 ], [ 0, %3 ]
  ret i64 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_raw_scrambleAcc_scalar(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, ptr noundef writeonly initializes((0, 64)) %16) local_unnamed_addr #1 {
  %18 = lshr i64 %0, 47
  %19 = xor i64 %18, %8
  %20 = xor i64 %19, %0
  %21 = mul i64 %20, 2654435761
  %22 = lshr i64 %1, 47
  %23 = xor i64 %22, %9
  %24 = xor i64 %23, %1
  %25 = mul i64 %24, 2654435761
  %26 = lshr i64 %2, 47
  %27 = xor i64 %26, %10
  %28 = xor i64 %27, %2
  %29 = mul i64 %28, 2654435761
  %30 = lshr i64 %3, 47
  %31 = xor i64 %30, %11
  %32 = xor i64 %31, %3
  %33 = mul i64 %32, 2654435761
  %34 = lshr i64 %4, 47
  %35 = xor i64 %34, %12
  %36 = xor i64 %35, %4
  %37 = mul i64 %36, 2654435761
  %38 = lshr i64 %5, 47
  %39 = xor i64 %38, %13
  %40 = xor i64 %39, %5
  %41 = mul i64 %40, 2654435761
  %42 = lshr i64 %6, 47
  %43 = xor i64 %42, %14
  %44 = xor i64 %43, %6
  %45 = mul i64 %44, 2654435761
  %46 = lshr i64 %7, 47
  %47 = xor i64 %46, %15
  %48 = xor i64 %47, %7
  %49 = mul i64 %48, 2654435761
  store i64 %21, ptr %16, align 8
  %50 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %25, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %29, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 %33, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i64 %37, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 %41, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i64 %45, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %16, i64 56
  store i64 %49, ptr %56, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
