; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap_finalizer_residues.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap_finalizer_residues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_tail_0(ptr noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 15
  %4 = xor i32 %3, %1
  %5 = mul i32 %4, -2048144777
  %6 = lshr i32 %5, 13
  %7 = xor i32 %6, %5
  %8 = mul i32 %7, -1028477379
  %9 = lshr i32 %8, 16
  %10 = xor i32 %9, %8
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_tail_1(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = mul i32 %4, 374761393
  %6 = add i32 %5, %1
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 11)
  %8 = mul i32 %7, -1640531535
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
define dso_local i32 @target_tail_2(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  %6 = mul i32 %5, 374761393
  %7 = add i32 %6, %1
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 11)
  %9 = mul i32 %8, -1640531535
  %10 = load i8, ptr %3, align 1
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
define dso_local i32 @target_tail_3(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  %6 = mul i32 %5, 374761393
  %7 = add i32 %6, %1
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 11)
  %9 = mul i32 %8, -1640531535
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %11 = load i8, ptr %3, align 1
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
define dso_local i32 @target_tail_4(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %7 = mul i32 %6, 668265263
  %8 = lshr i32 %7, 15
  %9 = xor i32 %8, %7
  %10 = mul i32 %9, -2048144777
  %11 = lshr i32 %10, 13
  %12 = xor i32 %11, %10
  %13 = mul i32 %12, -1028477379
  %14 = lshr i32 %13, 16
  %15 = xor i32 %14, %13
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_tail_5(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = load i8, ptr %6, align 1
  %10 = zext i8 %9 to i32
  %11 = mul i32 %10, 374761393
  %12 = add i32 %8, %11
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 11)
  %14 = mul i32 %13, -1640531535
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
define dso_local i32 @target_tail_6(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %10 = load i8, ptr %6, align 1
  %11 = zext i8 %10 to i32
  %12 = mul i32 %11, 374761393
  %13 = add i32 %8, %12
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 11)
  %15 = mul i32 %14, -1640531535
  %16 = load i8, ptr %9, align 1
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
define dso_local i32 @target_tail_7(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %10 = load i8, ptr %6, align 1
  %11 = zext i8 %10 to i32
  %12 = mul i32 %11, 374761393
  %13 = add i32 %8, %12
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 11)
  %15 = mul i32 %14, -1640531535
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %17 = load i8, ptr %9, align 1
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
define dso_local i32 @target_tail_8(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = load i32, ptr %6, align 1
  %10 = mul i32 %9, -1028477379
  %11 = add i32 %8, %10
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 17)
  %13 = mul i32 %12, 668265263
  %14 = lshr i32 %13, 15
  %15 = xor i32 %14, %13
  %16 = mul i32 %15, -2048144777
  %17 = lshr i32 %16, 13
  %18 = xor i32 %17, %16
  %19 = mul i32 %18, -1028477379
  %20 = lshr i32 %19, 16
  %21 = xor i32 %20, %19
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_tail_9(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = load i32, ptr %6, align 1
  %10 = mul i32 %9, -1028477379
  %11 = add i32 %8, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 17)
  %14 = mul i32 %13, 668265263
  %15 = load i8, ptr %12, align 1
  %16 = zext i8 %15 to i32
  %17 = mul i32 %16, 374761393
  %18 = add i32 %14, %17
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 11)
  %20 = mul i32 %19, -1640531535
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
define dso_local i32 @target_tail_10(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = load i32, ptr %6, align 1
  %10 = mul i32 %9, -1028477379
  %11 = add i32 %8, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 17)
  %14 = mul i32 %13, 668265263
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %16 = load i8, ptr %12, align 1
  %17 = zext i8 %16 to i32
  %18 = mul i32 %17, 374761393
  %19 = add i32 %14, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 11)
  %21 = mul i32 %20, -1640531535
  %22 = load i8, ptr %15, align 1
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
define dso_local i32 @target_tail_11(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = load i32, ptr %6, align 1
  %10 = mul i32 %9, -1028477379
  %11 = add i32 %8, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 17)
  %14 = mul i32 %13, 668265263
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %16 = load i8, ptr %12, align 1
  %17 = zext i8 %16 to i32
  %18 = mul i32 %17, 374761393
  %19 = add i32 %14, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 11)
  %21 = mul i32 %20, -1640531535
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %23 = load i8, ptr %15, align 1
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
define dso_local i32 @target_tail_12(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = load i32, ptr %6, align 1
  %10 = mul i32 %9, -1028477379
  %11 = add i32 %8, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 17)
  %14 = mul i32 %13, 668265263
  %15 = load i32, ptr %12, align 1
  %16 = mul i32 %15, -1028477379
  %17 = add i32 %14, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %19 = mul i32 %18, 668265263
  %20 = lshr i32 %19, 15
  %21 = xor i32 %20, %19
  %22 = mul i32 %21, -2048144777
  %23 = lshr i32 %22, 13
  %24 = xor i32 %23, %22
  %25 = mul i32 %24, -1028477379
  %26 = lshr i32 %25, 16
  %27 = xor i32 %26, %25
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_tail_13(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = load i32, ptr %6, align 1
  %10 = mul i32 %9, -1028477379
  %11 = add i32 %8, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 17)
  %14 = mul i32 %13, 668265263
  %15 = load i32, ptr %12, align 1
  %16 = mul i32 %15, -1028477379
  %17 = add i32 %14, %16
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %19 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %20 = mul i32 %19, 668265263
  %21 = load i8, ptr %18, align 1
  %22 = zext i8 %21 to i32
  %23 = mul i32 %22, 374761393
  %24 = add i32 %20, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 11)
  %26 = mul i32 %25, -1640531535
  %27 = lshr i32 %26, 15
  %28 = xor i32 %27, %26
  %29 = mul i32 %28, -2048144777
  %30 = lshr i32 %29, 13
  %31 = xor i32 %30, %29
  %32 = mul i32 %31, -1028477379
  %33 = lshr i32 %32, 16
  %34 = xor i32 %33, %32
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_tail_14(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = load i32, ptr %6, align 1
  %10 = mul i32 %9, -1028477379
  %11 = add i32 %8, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 17)
  %14 = mul i32 %13, 668265263
  %15 = load i32, ptr %12, align 1
  %16 = mul i32 %15, -1028477379
  %17 = add i32 %14, %16
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %19 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %20 = mul i32 %19, 668265263
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %22 = load i8, ptr %18, align 1
  %23 = zext i8 %22 to i32
  %24 = mul i32 %23, 374761393
  %25 = add i32 %20, %24
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 11)
  %27 = mul i32 %26, -1640531535
  %28 = load i8, ptr %21, align 1
  %29 = zext i8 %28 to i32
  %30 = mul i32 %29, 374761393
  %31 = add i32 %27, %30
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 11)
  %33 = mul i32 %32, -1640531535
  %34 = lshr i32 %33, 15
  %35 = xor i32 %34, %33
  %36 = mul i32 %35, -2048144777
  %37 = lshr i32 %36, 13
  %38 = xor i32 %37, %36
  %39 = mul i32 %38, -1028477379
  %40 = lshr i32 %39, 16
  %41 = xor i32 %40, %39
  ret i32 %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_tail_15(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = mul i32 %3, -1028477379
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = load i32, ptr %6, align 1
  %10 = mul i32 %9, -1028477379
  %11 = add i32 %8, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 17)
  %14 = mul i32 %13, 668265263
  %15 = load i32, ptr %12, align 1
  %16 = mul i32 %15, -1028477379
  %17 = add i32 %14, %16
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %19 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %20 = mul i32 %19, 668265263
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %22 = load i8, ptr %18, align 1
  %23 = zext i8 %22 to i32
  %24 = mul i32 %23, 374761393
  %25 = add i32 %20, %24
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 11)
  %27 = mul i32 %26, -1640531535
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %29 = load i8, ptr %21, align 1
  %30 = zext i8 %29 to i32
  %31 = mul i32 %30, 374761393
  %32 = add i32 %27, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 11)
  %34 = mul i32 %33, -1640531535
  %35 = load i8, ptr %28, align 1
  %36 = zext i8 %35 to i32
  %37 = mul i32 %36, 374761393
  %38 = add i32 %34, %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 11)
  %40 = mul i32 %39, -1640531535
  %41 = lshr i32 %40, 15
  %42 = xor i32 %41, %40
  %43 = mul i32 %42, -2048144777
  %44 = lshr i32 %43, 13
  %45 = xor i32 %44, %43
  %46 = mul i32 %45, -1028477379
  %47 = lshr i32 %46, 16
  %48 = xor i32 %47, %46
  ret i32 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_0(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = lshr i32 %1, 15
  %7 = xor i32 %6, %1
  %8 = mul i32 %7, -2048144777
  %9 = lshr i32 %8, 13
  %10 = xor i32 %9, %8
  %11 = mul i32 %10, -1028477379
  %12 = lshr i32 %11, 16
  %13 = xor i32 %12, %11
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i8, ptr %0, align 4
  %7 = zext i8 %6 to i32
  %8 = mul i32 %7, 374761393
  %9 = add i32 %8, %1
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 11)
  %11 = mul i32 %10, -1640531535
  %12 = lshr i32 %11, 15
  %13 = xor i32 %12, %11
  %14 = mul i32 %13, -2048144777
  %15 = lshr i32 %14, 13
  %16 = xor i32 %15, %14
  %17 = mul i32 %16, -1028477379
  %18 = lshr i32 %17, 16
  %19 = xor i32 %18, %17
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %7 = load i8, ptr %0, align 4
  %8 = zext i8 %7 to i32
  %9 = mul i32 %8, 374761393
  %10 = add i32 %9, %1
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 11)
  %12 = mul i32 %11, -1640531535
  %13 = load i8, ptr %6, align 1
  %14 = zext i8 %13 to i32
  %15 = mul i32 %14, 374761393
  %16 = add i32 %12, %15
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 11)
  %18 = mul i32 %17, -1640531535
  %19 = lshr i32 %18, 15
  %20 = xor i32 %19, %18
  %21 = mul i32 %20, -2048144777
  %22 = lshr i32 %21, 13
  %23 = xor i32 %22, %21
  %24 = mul i32 %23, -1028477379
  %25 = lshr i32 %24, 16
  %26 = xor i32 %25, %24
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_3(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %7 = load i8, ptr %0, align 4
  %8 = zext i8 %7 to i32
  %9 = mul i32 %8, 374761393
  %10 = add i32 %9, %1
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 11)
  %12 = mul i32 %11, -1640531535
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %14 = load i8, ptr %6, align 1
  %15 = zext i8 %14 to i32
  %16 = mul i32 %15, 374761393
  %17 = add i32 %12, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 11)
  %19 = mul i32 %18, -1640531535
  %20 = load i8, ptr %13, align 2
  %21 = zext i8 %20 to i32
  %22 = mul i32 %21, 374761393
  %23 = add i32 %19, %22
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 11)
  %25 = mul i32 %24, -1640531535
  %26 = lshr i32 %25, 15
  %27 = xor i32 %26, %25
  %28 = mul i32 %27, -2048144777
  %29 = lshr i32 %28, 13
  %30 = xor i32 %29, %28
  %31 = mul i32 %30, -1028477379
  %32 = lshr i32 %31, 16
  %33 = xor i32 %32, %31
  ret i32 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_4(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %10 = mul i32 %9, 668265263
  %11 = lshr i32 %10, 15
  %12 = xor i32 %11, %10
  %13 = mul i32 %12, -2048144777
  %14 = lshr i32 %13, 13
  %15 = xor i32 %14, %13
  %16 = mul i32 %15, -1028477379
  %17 = lshr i32 %16, 16
  %18 = xor i32 %17, %16
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_5(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  %12 = load i8, ptr %9, align 4
  %13 = zext i8 %12 to i32
  %14 = mul i32 %13, 374761393
  %15 = add i32 %11, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 11)
  %17 = mul i32 %16, -1640531535
  %18 = lshr i32 %17, 15
  %19 = xor i32 %18, %17
  %20 = mul i32 %19, -2048144777
  %21 = lshr i32 %20, 13
  %22 = xor i32 %21, %20
  %23 = mul i32 %22, -1028477379
  %24 = lshr i32 %23, 16
  %25 = xor i32 %24, %23
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_6(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %13 = load i8, ptr %9, align 4
  %14 = zext i8 %13 to i32
  %15 = mul i32 %14, 374761393
  %16 = add i32 %11, %15
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 11)
  %18 = mul i32 %17, -1640531535
  %19 = load i8, ptr %12, align 1
  %20 = zext i8 %19 to i32
  %21 = mul i32 %20, 374761393
  %22 = add i32 %18, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 11)
  %24 = mul i32 %23, -1640531535
  %25 = lshr i32 %24, 15
  %26 = xor i32 %25, %24
  %27 = mul i32 %26, -2048144777
  %28 = lshr i32 %27, 13
  %29 = xor i32 %28, %27
  %30 = mul i32 %29, -1028477379
  %31 = lshr i32 %30, 16
  %32 = xor i32 %31, %30
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_7(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %13 = load i8, ptr %9, align 4
  %14 = zext i8 %13 to i32
  %15 = mul i32 %14, 374761393
  %16 = add i32 %11, %15
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 11)
  %18 = mul i32 %17, -1640531535
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %20 = load i8, ptr %12, align 1
  %21 = zext i8 %20 to i32
  %22 = mul i32 %21, 374761393
  %23 = add i32 %18, %22
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 11)
  %25 = mul i32 %24, -1640531535
  %26 = load i8, ptr %19, align 2
  %27 = zext i8 %26 to i32
  %28 = mul i32 %27, 374761393
  %29 = add i32 %25, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 11)
  %31 = mul i32 %30, -1640531535
  %32 = lshr i32 %31, 15
  %33 = xor i32 %32, %31
  %34 = mul i32 %33, -2048144777
  %35 = lshr i32 %34, 13
  %36 = xor i32 %35, %34
  %37 = mul i32 %36, -1028477379
  %38 = lshr i32 %37, 16
  %39 = xor i32 %38, %37
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_8(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  %12 = load i32, ptr %9, align 4
  %13 = mul i32 %12, -1028477379
  %14 = add i32 %11, %13
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 17)
  %16 = mul i32 %15, 668265263
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_9(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  %12 = load i32, ptr %9, align 4
  %13 = mul i32 %12, -1028477379
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 17)
  %17 = mul i32 %16, 668265263
  %18 = load i8, ptr %15, align 4
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_10(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  %12 = load i32, ptr %9, align 4
  %13 = mul i32 %12, -1028477379
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 17)
  %17 = mul i32 %16, 668265263
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %19 = load i8, ptr %15, align 4
  %20 = zext i8 %19 to i32
  %21 = mul i32 %20, 374761393
  %22 = add i32 %17, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 11)
  %24 = mul i32 %23, -1640531535
  %25 = load i8, ptr %18, align 1
  %26 = zext i8 %25 to i32
  %27 = mul i32 %26, 374761393
  %28 = add i32 %24, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 11)
  %30 = mul i32 %29, -1640531535
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_11(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  %12 = load i32, ptr %9, align 4
  %13 = mul i32 %12, -1028477379
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 17)
  %17 = mul i32 %16, 668265263
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %19 = load i8, ptr %15, align 4
  %20 = zext i8 %19 to i32
  %21 = mul i32 %20, 374761393
  %22 = add i32 %17, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 11)
  %24 = mul i32 %23, -1640531535
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %26 = load i8, ptr %18, align 1
  %27 = zext i8 %26 to i32
  %28 = mul i32 %27, 374761393
  %29 = add i32 %24, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 11)
  %31 = mul i32 %30, -1640531535
  %32 = load i8, ptr %25, align 2
  %33 = zext i8 %32 to i32
  %34 = mul i32 %33, 374761393
  %35 = add i32 %31, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 11)
  %37 = mul i32 %36, -1640531535
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
define dso_local i32 @target_aligned_12(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  %12 = load i32, ptr %9, align 4
  %13 = mul i32 %12, -1028477379
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 17)
  %17 = mul i32 %16, 668265263
  %18 = load i32, ptr %15, align 4
  %19 = mul i32 %18, -1028477379
  %20 = add i32 %17, %19
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 17)
  %22 = mul i32 %21, 668265263
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_13(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  %12 = load i32, ptr %9, align 4
  %13 = mul i32 %12, -1028477379
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 17)
  %17 = mul i32 %16, 668265263
  %18 = load i32, ptr %15, align 4
  %19 = mul i32 %18, -1028477379
  %20 = add i32 %17, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %22 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 17)
  %23 = mul i32 %22, 668265263
  %24 = load i8, ptr %21, align 4
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_14(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  %12 = load i32, ptr %9, align 4
  %13 = mul i32 %12, -1028477379
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 17)
  %17 = mul i32 %16, 668265263
  %18 = load i32, ptr %15, align 4
  %19 = mul i32 %18, -1028477379
  %20 = add i32 %17, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %22 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 17)
  %23 = mul i32 %22, 668265263
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %25 = load i8, ptr %21, align 4
  %26 = zext i8 %25 to i32
  %27 = mul i32 %26, 374761393
  %28 = add i32 %23, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 11)
  %30 = mul i32 %29, -1640531535
  %31 = load i8, ptr %24, align 1
  %32 = zext i8 %31 to i32
  %33 = mul i32 %32, 374761393
  %34 = add i32 %30, %33
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 11)
  %36 = mul i32 %35, -1640531535
  %37 = lshr i32 %36, 15
  %38 = xor i32 %37, %36
  %39 = mul i32 %38, -2048144777
  %40 = lshr i32 %39, 13
  %41 = xor i32 %40, %39
  %42 = mul i32 %41, -1028477379
  %43 = lshr i32 %42, 16
  %44 = xor i32 %43, %42
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_aligned_15(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load i32, ptr %0, align 4
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  %12 = load i32, ptr %9, align 4
  %13 = mul i32 %12, -1028477379
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 17)
  %17 = mul i32 %16, 668265263
  %18 = load i32, ptr %15, align 4
  %19 = mul i32 %18, -1028477379
  %20 = add i32 %17, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %22 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 17)
  %23 = mul i32 %22, 668265263
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %25 = load i8, ptr %21, align 4
  %26 = zext i8 %25 to i32
  %27 = mul i32 %26, 374761393
  %28 = add i32 %23, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 11)
  %30 = mul i32 %29, -1640531535
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %32 = load i8, ptr %24, align 1
  %33 = zext i8 %32 to i32
  %34 = mul i32 %33, 374761393
  %35 = add i32 %30, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 11)
  %37 = mul i32 %36, -1640531535
  %38 = load i8, ptr %31, align 2
  %39 = zext i8 %38 to i32
  %40 = mul i32 %39, 374761393
  %41 = add i32 %37, %40
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 11)
  %43 = mul i32 %42, -1640531535
  %44 = lshr i32 %43, 15
  %45 = xor i32 %44, %43
  %46 = mul i32 %45, -2048144777
  %47 = lshr i32 %46, 13
  %48 = xor i32 %47, %46
  %49 = mul i32 %48, -1028477379
  %50 = lshr i32 %49, 16
  %51 = xor i32 %50, %49
  ret i32 %51
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
