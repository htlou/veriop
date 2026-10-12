; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap_fixed.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len0(ptr noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 374761393
  %4 = lshr i32 %3, 15
  %5 = xor i32 %4, %3
  %6 = mul i32 %5, -2048144777
  %7 = lshr i32 %6, 13
  %8 = xor i32 %7, %6
  %9 = mul i32 %8, -1028477379
  %10 = lshr i32 %9, 16
  %11 = xor i32 %10, %9
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len1(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761394
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  %6 = mul i32 %5, 374761393
  %7 = add i32 %3, %6
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 11)
  %9 = mul i32 %8, -1640531535
  %10 = lshr i32 %9, 15
  %11 = xor i32 %10, %9
  %12 = mul i32 %11, -2048144777
  %13 = lshr i32 %12, 13
  %14 = xor i32 %13, %12
  %15 = mul i32 %14, -1028477379
  %16 = lshr i32 %15, 16
  %17 = xor i32 %16, %15
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len2(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761395
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i32
  %7 = mul i32 %6, 374761393
  %8 = add i32 %3, %7
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 11)
  %10 = mul i32 %9, -1640531535
  %11 = load i8, ptr %4, align 1
  %12 = zext i8 %11 to i32
  %13 = mul i32 %12, 374761393
  %14 = add i32 %10, %13
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 11)
  %16 = mul i32 %15, -1640531535
  %17 = lshr i32 %16, 15
  %18 = xor i32 %17, %16
  %19 = mul i32 %18, -2048144777
  %20 = lshr i32 %19, 13
  %21 = xor i32 %20, %19
  %22 = mul i32 %21, -1028477379
  %23 = lshr i32 %22, 16
  %24 = xor i32 %23, %22
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len3(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761396
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i32
  %7 = mul i32 %6, 374761393
  %8 = add i32 %3, %7
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 11)
  %10 = mul i32 %9, -1640531535
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %12 = load i8, ptr %4, align 1
  %13 = zext i8 %12 to i32
  %14 = mul i32 %13, 374761393
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 11)
  %17 = mul i32 %16, -1640531535
  %18 = load i8, ptr %11, align 1
  %19 = zext i8 %18 to i32
  %20 = mul i32 %19, 374761393
  %21 = add i32 %17, %20
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 11)
  %23 = mul i32 %22, -1640531535
  %24 = lshr i32 %23, 15
  %25 = xor i32 %24, %23
  %26 = mul i32 %25, -2048144777
  %27 = lshr i32 %26, 13
  %28 = xor i32 %27, %26
  %29 = mul i32 %28, -1028477379
  %30 = lshr i32 %29, 16
  %31 = xor i32 %30, %29
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len4(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761397
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = lshr i32 %8, 15
  %10 = xor i32 %9, %8
  %11 = mul i32 %10, -2048144777
  %12 = lshr i32 %11, 13
  %13 = xor i32 %12, %11
  %14 = mul i32 %13, -1028477379
  %15 = lshr i32 %14, 16
  %16 = xor i32 %15, %14
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len5(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761398
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = load i8, ptr %7, align 1
  %11 = zext i8 %10 to i32
  %12 = mul i32 %11, 374761393
  %13 = add i32 %9, %12
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 11)
  %15 = mul i32 %14, -1640531535
  %16 = lshr i32 %15, 15
  %17 = xor i32 %16, %15
  %18 = mul i32 %17, -2048144777
  %19 = lshr i32 %18, 13
  %20 = xor i32 %19, %18
  %21 = mul i32 %20, -1028477379
  %22 = lshr i32 %21, 16
  %23 = xor i32 %22, %21
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len6(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761399
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %11 = load i8, ptr %7, align 1
  %12 = zext i8 %11 to i32
  %13 = mul i32 %12, 374761393
  %14 = add i32 %9, %13
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 11)
  %16 = mul i32 %15, -1640531535
  %17 = load i8, ptr %10, align 1
  %18 = zext i8 %17 to i32
  %19 = mul i32 %18, 374761393
  %20 = add i32 %16, %19
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 11)
  %22 = mul i32 %21, -1640531535
  %23 = lshr i32 %22, 15
  %24 = xor i32 %23, %22
  %25 = mul i32 %24, -2048144777
  %26 = lshr i32 %25, 13
  %27 = xor i32 %26, %25
  %28 = mul i32 %27, -1028477379
  %29 = lshr i32 %28, 16
  %30 = xor i32 %29, %28
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len7(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761400
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %11 = load i8, ptr %7, align 1
  %12 = zext i8 %11 to i32
  %13 = mul i32 %12, 374761393
  %14 = add i32 %9, %13
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 11)
  %16 = mul i32 %15, -1640531535
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %18 = load i8, ptr %10, align 1
  %19 = zext i8 %18 to i32
  %20 = mul i32 %19, 374761393
  %21 = add i32 %16, %20
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 11)
  %23 = mul i32 %22, -1640531535
  %24 = load i8, ptr %17, align 1
  %25 = zext i8 %24 to i32
  %26 = mul i32 %25, 374761393
  %27 = add i32 %23, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 11)
  %29 = mul i32 %28, -1640531535
  %30 = lshr i32 %29, 15
  %31 = xor i32 %30, %29
  %32 = mul i32 %31, -2048144777
  %33 = lshr i32 %32, 13
  %34 = xor i32 %33, %32
  %35 = mul i32 %34, -1028477379
  %36 = lshr i32 %35, 16
  %37 = xor i32 %36, %35
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len8(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761401
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = load i32, ptr %7, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %9, %11
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %14 = mul i32 %13, 668265263
  %15 = lshr i32 %14, 15
  %16 = xor i32 %15, %14
  %17 = mul i32 %16, -2048144777
  %18 = lshr i32 %17, 13
  %19 = xor i32 %18, %17
  %20 = mul i32 %19, -1028477379
  %21 = lshr i32 %20, 16
  %22 = xor i32 %21, %20
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len9(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761402
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = load i32, ptr %7, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = load i8, ptr %13, align 1
  %17 = zext i8 %16 to i32
  %18 = mul i32 %17, 374761393
  %19 = add i32 %15, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 11)
  %21 = mul i32 %20, -1640531535
  %22 = lshr i32 %21, 15
  %23 = xor i32 %22, %21
  %24 = mul i32 %23, -2048144777
  %25 = lshr i32 %24, 13
  %26 = xor i32 %25, %24
  %27 = mul i32 %26, -1028477379
  %28 = lshr i32 %27, 16
  %29 = xor i32 %28, %27
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len10(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761403
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = load i32, ptr %7, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %17 = load i8, ptr %13, align 1
  %18 = zext i8 %17 to i32
  %19 = mul i32 %18, 374761393
  %20 = add i32 %15, %19
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 11)
  %22 = mul i32 %21, -1640531535
  %23 = load i8, ptr %16, align 1
  %24 = zext i8 %23 to i32
  %25 = mul i32 %24, 374761393
  %26 = add i32 %22, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 11)
  %28 = mul i32 %27, -1640531535
  %29 = lshr i32 %28, 15
  %30 = xor i32 %29, %28
  %31 = mul i32 %30, -2048144777
  %32 = lshr i32 %31, 13
  %33 = xor i32 %32, %31
  %34 = mul i32 %33, -1028477379
  %35 = lshr i32 %34, 16
  %36 = xor i32 %35, %34
  ret i32 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len11(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761404
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = load i32, ptr %7, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %17 = load i8, ptr %13, align 1
  %18 = zext i8 %17 to i32
  %19 = mul i32 %18, 374761393
  %20 = add i32 %15, %19
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 11)
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %24 = load i8, ptr %16, align 1
  %25 = zext i8 %24 to i32
  %26 = mul i32 %25, 374761393
  %27 = add i32 %22, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 11)
  %29 = mul i32 %28, -1640531535
  %30 = load i8, ptr %23, align 1
  %31 = zext i8 %30 to i32
  %32 = mul i32 %31, 374761393
  %33 = add i32 %29, %32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 11)
  %35 = mul i32 %34, -1640531535
  %36 = lshr i32 %35, 15
  %37 = xor i32 %36, %35
  %38 = mul i32 %37, -2048144777
  %39 = lshr i32 %38, 13
  %40 = xor i32 %39, %38
  %41 = mul i32 %40, -1028477379
  %42 = lshr i32 %41, 16
  %43 = xor i32 %42, %41
  ret i32 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len12(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761405
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = load i32, ptr %7, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = load i32, ptr %13, align 1
  %17 = mul i32 %16, -1028477379
  %18 = add i32 %15, %17
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 17)
  %20 = mul i32 %19, 668265263
  %21 = lshr i32 %20, 15
  %22 = xor i32 %21, %20
  %23 = mul i32 %22, -2048144777
  %24 = lshr i32 %23, 13
  %25 = xor i32 %24, %23
  %26 = mul i32 %25, -1028477379
  %27 = lshr i32 %26, 16
  %28 = xor i32 %27, %26
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len13(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761406
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = load i32, ptr %7, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = load i32, ptr %13, align 1
  %17 = mul i32 %16, -1028477379
  %18 = add i32 %15, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = load i8, ptr %19, align 1
  %23 = zext i8 %22 to i32
  %24 = mul i32 %23, 374761393
  %25 = add i32 %21, %24
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 11)
  %27 = mul i32 %26, -1640531535
  %28 = lshr i32 %27, 15
  %29 = xor i32 %28, %27
  %30 = mul i32 %29, -2048144777
  %31 = lshr i32 %30, 13
  %32 = xor i32 %31, %30
  %33 = mul i32 %32, -1028477379
  %34 = lshr i32 %33, 16
  %35 = xor i32 %34, %33
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len14(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761407
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = load i32, ptr %7, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = load i32, ptr %13, align 1
  %17 = mul i32 %16, -1028477379
  %18 = add i32 %15, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %23 = load i8, ptr %19, align 1
  %24 = zext i8 %23 to i32
  %25 = mul i32 %24, 374761393
  %26 = add i32 %21, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 11)
  %28 = mul i32 %27, -1640531535
  %29 = load i8, ptr %22, align 1
  %30 = zext i8 %29 to i32
  %31 = mul i32 %30, 374761393
  %32 = add i32 %28, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 11)
  %34 = mul i32 %33, -1640531535
  %35 = lshr i32 %34, 15
  %36 = xor i32 %35, %34
  %37 = mul i32 %36, -2048144777
  %38 = lshr i32 %37, 13
  %39 = xor i32 %38, %37
  %40 = mul i32 %39, -1028477379
  %41 = lshr i32 %40, 16
  %42 = xor i32 %41, %40
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len15(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761408
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = load i32, ptr %7, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = load i32, ptr %13, align 1
  %17 = mul i32 %16, -1028477379
  %18 = add i32 %15, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %23 = load i8, ptr %19, align 1
  %24 = zext i8 %23 to i32
  %25 = mul i32 %24, 374761393
  %26 = add i32 %21, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 11)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %30 = load i8, ptr %22, align 1
  %31 = zext i8 %30 to i32
  %32 = mul i32 %31, 374761393
  %33 = add i32 %28, %32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 11)
  %35 = mul i32 %34, -1640531535
  %36 = load i8, ptr %29, align 1
  %37 = zext i8 %36 to i32
  %38 = mul i32 %37, 374761393
  %39 = add i32 %35, %38
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 11)
  %41 = mul i32 %40, -1640531535
  %42 = lshr i32 %41, 15
  %43 = xor i32 %42, %41
  %44 = mul i32 %43, -2048144777
  %45 = lshr i32 %44, 13
  %46 = xor i32 %45, %44
  %47 = mul i32 %46, -1028477379
  %48 = lshr i32 %47, 16
  %49 = xor i32 %48, %47
  ret i32 %49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
