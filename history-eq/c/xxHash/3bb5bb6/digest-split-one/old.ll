; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/3bb5bb6/wrap_digest_split.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/3bb5bb6/wrap_digest_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_5_small(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 5
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 374761393
  %12 = load i32, ptr %0, align 4
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %15 = load i32, ptr %14, align 1
  %16 = mul i32 %15, -1028477379
  %17 = add i32 %16, %13
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %19 = mul i32 %18, 668265263
  %20 = getelementptr i8, ptr %0, i64 28
  %21 = icmp ult ptr %20, %8
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load i8, ptr %20, align 1
  %24 = zext i8 %23 to i32
  %25 = mul i32 %24, 374761393
  %26 = add i32 %25, %19
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 11)
  %28 = mul i32 %27, -1640531535
  br label %29

29:                                               ; preds = %22, %1
  %30 = phi i32 [ %19, %1 ], [ %28, %22 ]
  %31 = lshr i32 %30, 15
  %32 = xor i32 %31, %30
  %33 = mul i32 %32, -2048144777
  %34 = lshr i32 %33, 13
  %35 = xor i32 %34, %33
  %36 = mul i32 %35, -1028477379
  %37 = lshr i32 %36, 16
  %38 = xor i32 %37, %36
  ret i32 %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_5_large(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 5
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 7)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %15 = add i32 %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  %24 = load i32, ptr %0, align 4
  %25 = add i32 %23, %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -1028477379
  %29 = add i32 %28, %25
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 17)
  %31 = mul i32 %30, 668265263
  %32 = getelementptr i8, ptr %0, i64 28
  %33 = icmp ult ptr %32, %8
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load i8, ptr %32, align 1
  %36 = zext i8 %35 to i32
  %37 = mul i32 %36, 374761393
  %38 = add i32 %37, %31
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 11)
  %40 = mul i32 %39, -1640531535
  br label %41

41:                                               ; preds = %34, %1
  %42 = phi i32 [ %31, %1 ], [ %40, %34 ]
  %43 = lshr i32 %42, 15
  %44 = xor i32 %43, %42
  %45 = mul i32 %44, -2048144777
  %46 = lshr i32 %45, 13
  %47 = xor i32 %46, %45
  %48 = mul i32 %47, -1028477379
  %49 = lshr i32 %48, 16
  %50 = xor i32 %49, %48
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_6_small(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 6
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr i8, ptr %0, i64 30
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 374761393
  %12 = load i32, ptr %0, align 4
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %15 = load i32, ptr %14, align 1
  %16 = mul i32 %15, -1028477379
  %17 = add i32 %16, %13
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %19 = mul i32 %18, 668265263
  %20 = getelementptr i8, ptr %0, i64 28
  %21 = icmp ult ptr %20, %8
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load i8, ptr %20, align 1
  %24 = zext i8 %23 to i32
  %25 = mul i32 %24, 374761393
  %26 = add i32 %25, %19
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 11)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr i8, ptr %0, i64 29
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = mul i32 %31, 374761393
  %33 = add i32 %32, %28
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 11)
  %35 = mul i32 %34, -1640531535
  br label %36

36:                                               ; preds = %22, %1
  %37 = phi i32 [ %19, %1 ], [ %35, %22 ]
  %38 = lshr i32 %37, 15
  %39 = xor i32 %38, %37
  %40 = mul i32 %39, -2048144777
  %41 = lshr i32 %40, 13
  %42 = xor i32 %41, %40
  %43 = mul i32 %42, -1028477379
  %44 = lshr i32 %43, 16
  %45 = xor i32 %44, %43
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_6_large(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 6
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr i8, ptr %0, i64 30
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 7)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %15 = add i32 %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  %24 = load i32, ptr %0, align 4
  %25 = add i32 %23, %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -1028477379
  %29 = add i32 %28, %25
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 17)
  %31 = mul i32 %30, 668265263
  %32 = getelementptr i8, ptr %0, i64 28
  %33 = icmp ult ptr %32, %8
  br i1 %33, label %34, label %48

34:                                               ; preds = %1
  %35 = load i8, ptr %32, align 1
  %36 = zext i8 %35 to i32
  %37 = mul i32 %36, 374761393
  %38 = add i32 %37, %31
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 11)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr i8, ptr %0, i64 29
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = mul i32 %43, 374761393
  %45 = add i32 %44, %40
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 11)
  %47 = mul i32 %46, -1640531535
  br label %48

48:                                               ; preds = %34, %1
  %49 = phi i32 [ %31, %1 ], [ %47, %34 ]
  %50 = lshr i32 %49, 15
  %51 = xor i32 %50, %49
  %52 = mul i32 %51, -2048144777
  %53 = lshr i32 %52, 13
  %54 = xor i32 %53, %52
  %55 = mul i32 %54, -1028477379
  %56 = lshr i32 %55, 16
  %57 = xor i32 %56, %55
  ret i32 %57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_7_small(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr i8, ptr %0, i64 31
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 374761393
  %12 = load i32, ptr %0, align 4
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %15 = load i32, ptr %14, align 1
  %16 = mul i32 %15, -1028477379
  %17 = add i32 %16, %13
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %19 = mul i32 %18, 668265263
  %20 = getelementptr i8, ptr %0, i64 28
  %21 = icmp ult ptr %20, %8
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load i8, ptr %20, align 1
  %24 = zext i8 %23 to i32
  %25 = mul i32 %24, 374761393
  %26 = add i32 %25, %19
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 11)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr i8, ptr %0, i64 29
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = mul i32 %31, 374761393
  %33 = add i32 %32, %28
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 11)
  %35 = mul i32 %34, -1640531535
  %36 = getelementptr i8, ptr %0, i64 30
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = mul i32 %38, 374761393
  %40 = add i32 %39, %35
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 11)
  %42 = mul i32 %41, -1640531535
  br label %43

43:                                               ; preds = %22, %1
  %44 = phi i32 [ %19, %1 ], [ %42, %22 ]
  %45 = lshr i32 %44, 15
  %46 = xor i32 %45, %44
  %47 = mul i32 %46, -2048144777
  %48 = lshr i32 %47, 13
  %49 = xor i32 %48, %47
  %50 = mul i32 %49, -1028477379
  %51 = lshr i32 %50, 16
  %52 = xor i32 %51, %50
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_7_large(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr i8, ptr %0, i64 31
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 7)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %15 = add i32 %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  %24 = load i32, ptr %0, align 4
  %25 = add i32 %23, %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -1028477379
  %29 = add i32 %28, %25
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 17)
  %31 = mul i32 %30, 668265263
  %32 = getelementptr i8, ptr %0, i64 28
  %33 = icmp ult ptr %32, %8
  br i1 %33, label %34, label %55

34:                                               ; preds = %1
  %35 = load i8, ptr %32, align 1
  %36 = zext i8 %35 to i32
  %37 = mul i32 %36, 374761393
  %38 = add i32 %37, %31
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 11)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr i8, ptr %0, i64 29
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = mul i32 %43, 374761393
  %45 = add i32 %44, %40
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 11)
  %47 = mul i32 %46, -1640531535
  %48 = getelementptr i8, ptr %0, i64 30
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = mul i32 %50, 374761393
  %52 = add i32 %51, %47
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 11)
  %54 = mul i32 %53, -1640531535
  br label %55

55:                                               ; preds = %34, %1
  %56 = phi i32 [ %31, %1 ], [ %54, %34 ]
  %57 = lshr i32 %56, 15
  %58 = xor i32 %57, %56
  %59 = mul i32 %58, -2048144777
  %60 = lshr i32 %59, 13
  %61 = xor i32 %60, %59
  %62 = mul i32 %61, -1028477379
  %63 = lshr i32 %62, 16
  %64 = xor i32 %63, %62
  ret i32 %64
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
