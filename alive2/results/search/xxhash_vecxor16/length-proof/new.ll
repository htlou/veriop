; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecxor16/xxhash_vecxor16.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecxor16/xxhash_vecxor16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}

define dso_local i64 @target_9to16_len9(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 9, 8
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 9, 17
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, %10
  %14 = add i64 %13, %3
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = sub i64 %19, %3
  %21 = icmp eq i64 9, 16
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load <2 x i64>, ptr %0, align 1
  %24 = insertelement <2 x i64> poison, i64 %14, i64 0
  %25 = insertelement <2 x i64> %24, i64 %20, i64 1
  %26 = xor <2 x i64> %23, %25
  %27 = extractelement <2 x i64> %26, i64 0
  %28 = extractelement <2 x i64> %26, i64 1
  br label %36

29:                                               ; preds = %4
  %30 = load i64, ptr %0, align 1
  %31 = xor i64 %30, %14
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %34, %20
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i64 [ %28, %22 ], [ %35, %29 ]
  %38 = phi i64 [ %27, %22 ], [ %31, %29 ]
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = zext i64 %38 to i128
  %41 = zext i64 %37 to i128
  %42 = mul nuw i128 %40, %41
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %37, 9
  %47 = add i64 %46, %39
  %48 = add i64 %47, %45
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587791953885689
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  ret i64 %53
}

define dso_local i64 @target_9to16_len10(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 10, 8
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 10, 17
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, %10
  %14 = add i64 %13, %3
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = sub i64 %19, %3
  %21 = icmp eq i64 10, 16
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load <2 x i64>, ptr %0, align 1
  %24 = insertelement <2 x i64> poison, i64 %14, i64 0
  %25 = insertelement <2 x i64> %24, i64 %20, i64 1
  %26 = xor <2 x i64> %23, %25
  %27 = extractelement <2 x i64> %26, i64 0
  %28 = extractelement <2 x i64> %26, i64 1
  br label %36

29:                                               ; preds = %4
  %30 = load i64, ptr %0, align 1
  %31 = xor i64 %30, %14
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %34, %20
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i64 [ %28, %22 ], [ %35, %29 ]
  %38 = phi i64 [ %27, %22 ], [ %31, %29 ]
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = zext i64 %38 to i128
  %41 = zext i64 %37 to i128
  %42 = mul nuw i128 %40, %41
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %37, 10
  %47 = add i64 %46, %39
  %48 = add i64 %47, %45
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587791953885689
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  ret i64 %53
}

define dso_local i64 @target_9to16_len11(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 11, 8
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 11, 17
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, %10
  %14 = add i64 %13, %3
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = sub i64 %19, %3
  %21 = icmp eq i64 11, 16
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load <2 x i64>, ptr %0, align 1
  %24 = insertelement <2 x i64> poison, i64 %14, i64 0
  %25 = insertelement <2 x i64> %24, i64 %20, i64 1
  %26 = xor <2 x i64> %23, %25
  %27 = extractelement <2 x i64> %26, i64 0
  %28 = extractelement <2 x i64> %26, i64 1
  br label %36

29:                                               ; preds = %4
  %30 = load i64, ptr %0, align 1
  %31 = xor i64 %30, %14
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %34, %20
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i64 [ %28, %22 ], [ %35, %29 ]
  %38 = phi i64 [ %27, %22 ], [ %31, %29 ]
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = zext i64 %38 to i128
  %41 = zext i64 %37 to i128
  %42 = mul nuw i128 %40, %41
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %37, 11
  %47 = add i64 %46, %39
  %48 = add i64 %47, %45
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587791953885689
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  ret i64 %53
}

define dso_local i64 @target_9to16_len12(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 12, 8
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 12, 17
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, %10
  %14 = add i64 %13, %3
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = sub i64 %19, %3
  %21 = icmp eq i64 12, 16
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load <2 x i64>, ptr %0, align 1
  %24 = insertelement <2 x i64> poison, i64 %14, i64 0
  %25 = insertelement <2 x i64> %24, i64 %20, i64 1
  %26 = xor <2 x i64> %23, %25
  %27 = extractelement <2 x i64> %26, i64 0
  %28 = extractelement <2 x i64> %26, i64 1
  br label %36

29:                                               ; preds = %4
  %30 = load i64, ptr %0, align 1
  %31 = xor i64 %30, %14
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %34, %20
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i64 [ %28, %22 ], [ %35, %29 ]
  %38 = phi i64 [ %27, %22 ], [ %31, %29 ]
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = zext i64 %38 to i128
  %41 = zext i64 %37 to i128
  %42 = mul nuw i128 %40, %41
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %37, 12
  %47 = add i64 %46, %39
  %48 = add i64 %47, %45
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587791953885689
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  ret i64 %53
}

define dso_local i64 @target_9to16_len13(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 13, 8
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 13, 17
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, %10
  %14 = add i64 %13, %3
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = sub i64 %19, %3
  %21 = icmp eq i64 13, 16
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load <2 x i64>, ptr %0, align 1
  %24 = insertelement <2 x i64> poison, i64 %14, i64 0
  %25 = insertelement <2 x i64> %24, i64 %20, i64 1
  %26 = xor <2 x i64> %23, %25
  %27 = extractelement <2 x i64> %26, i64 0
  %28 = extractelement <2 x i64> %26, i64 1
  br label %36

29:                                               ; preds = %4
  %30 = load i64, ptr %0, align 1
  %31 = xor i64 %30, %14
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %34, %20
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i64 [ %28, %22 ], [ %35, %29 ]
  %38 = phi i64 [ %27, %22 ], [ %31, %29 ]
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = zext i64 %38 to i128
  %41 = zext i64 %37 to i128
  %42 = mul nuw i128 %40, %41
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %37, 13
  %47 = add i64 %46, %39
  %48 = add i64 %47, %45
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587791953885689
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  ret i64 %53
}

define dso_local i64 @target_9to16_len14(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 14, 8
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 14, 17
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, %10
  %14 = add i64 %13, %3
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = sub i64 %19, %3
  %21 = icmp eq i64 14, 16
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load <2 x i64>, ptr %0, align 1
  %24 = insertelement <2 x i64> poison, i64 %14, i64 0
  %25 = insertelement <2 x i64> %24, i64 %20, i64 1
  %26 = xor <2 x i64> %23, %25
  %27 = extractelement <2 x i64> %26, i64 0
  %28 = extractelement <2 x i64> %26, i64 1
  br label %36

29:                                               ; preds = %4
  %30 = load i64, ptr %0, align 1
  %31 = xor i64 %30, %14
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %34, %20
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i64 [ %28, %22 ], [ %35, %29 ]
  %38 = phi i64 [ %27, %22 ], [ %31, %29 ]
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = zext i64 %38 to i128
  %41 = zext i64 %37 to i128
  %42 = mul nuw i128 %40, %41
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %37, 14
  %47 = add i64 %46, %39
  %48 = add i64 %47, %45
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587791953885689
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  ret i64 %53
}

define dso_local i64 @target_9to16_len15(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 15, 8
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 15, 17
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, %10
  %14 = add i64 %13, %3
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = sub i64 %19, %3
  %21 = icmp eq i64 15, 16
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load <2 x i64>, ptr %0, align 1
  %24 = insertelement <2 x i64> poison, i64 %14, i64 0
  %25 = insertelement <2 x i64> %24, i64 %20, i64 1
  %26 = xor <2 x i64> %23, %25
  %27 = extractelement <2 x i64> %26, i64 0
  %28 = extractelement <2 x i64> %26, i64 1
  br label %36

29:                                               ; preds = %4
  %30 = load i64, ptr %0, align 1
  %31 = xor i64 %30, %14
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %34, %20
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i64 [ %28, %22 ], [ %35, %29 ]
  %38 = phi i64 [ %27, %22 ], [ %31, %29 ]
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = zext i64 %38 to i128
  %41 = zext i64 %37 to i128
  %42 = mul nuw i128 %40, %41
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %37, 15
  %47 = add i64 %46, %39
  %48 = add i64 %47, %45
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587791953885689
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  ret i64 %53
}

define dso_local i64 @target_9to16_len16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 16, 8
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 16, 17
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, %10
  %14 = add i64 %13, %3
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = sub i64 %19, %3
  %21 = icmp eq i64 16, 16
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load <2 x i64>, ptr %0, align 1
  %24 = insertelement <2 x i64> poison, i64 %14, i64 0
  %25 = insertelement <2 x i64> %24, i64 %20, i64 1
  %26 = xor <2 x i64> %23, %25
  %27 = extractelement <2 x i64> %26, i64 0
  %28 = extractelement <2 x i64> %26, i64 1
  br label %36

29:                                               ; preds = %4
  %30 = load i64, ptr %0, align 1
  %31 = xor i64 %30, %14
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %34, %20
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i64 [ %28, %22 ], [ %35, %29 ]
  %38 = phi i64 [ %27, %22 ], [ %31, %29 ]
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = zext i64 %38 to i128
  %41 = zext i64 %37 to i128
  %42 = mul nuw i128 %40, %41
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %37, 16
  %47 = add i64 %46, %39
  %48 = add i64 %47, %45
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587791953885689
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  ret i64 %53
}

define dso_local i64 @target_0to16_len0(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 0, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 0, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 0, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 0
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 0
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 0, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 0
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 0
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 0, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 0, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 0
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 0, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len1(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 1, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 1, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 1
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 1, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 1
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 1, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 1, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 1
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 1, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len2(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 2, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 2, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 2, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 2
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 2, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 2
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 2, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 2, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 2
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 2, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 3, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 3, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 3, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 3
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 3, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 3
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 3, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 3, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 3
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 3, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len4(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 4, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 4, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 4, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 4
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 4, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 4
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 4, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 4, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 4
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 4, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len5(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 5, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 5, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 5, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 5
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 5, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 5
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 5, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 5, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 5
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 5, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len6(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 6, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 6, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 6, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 6
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 6, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 6
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 6, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 6, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 6
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 6, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len7(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 7, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 7, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 7, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 7
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 7, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 7
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 7, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 7, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 7
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 7, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 8, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 8, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 8, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 8
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 8, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 8
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 8, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 8, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 8
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 8, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len9(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 9, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 9, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 9, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 9
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 9, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 9
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 9, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 9, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 9
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 9, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len10(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 10, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 10, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 10, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 10
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 10, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 10
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 10, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 10, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 10
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 10, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len11(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 11, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 11, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 11, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 11
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 11, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 11
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 11, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 11, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 11
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 11, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len12(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 12, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 12, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 12, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 12
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 12, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 12
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 12, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 12, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 12
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 12, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len13(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 13, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 13, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 13, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 13
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 13, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 13
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 13, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 13, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 13
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 13, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len14(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 14, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 14, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 14, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 14
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 14, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 14
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 14, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 14, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 14
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 14, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len15(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 15, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 15, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 15, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 15
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 15, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 15
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 15, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 15, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 15
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 15, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 16, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 16, 8
  br i1 %6, label %7, label %55, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = icmp eq i64 16, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, 16
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 16, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, 16
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 16, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 16, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 16
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 16, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}
