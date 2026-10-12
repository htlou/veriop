; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/dcb69ac/wrap_xxh32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/dcb69ac/wrap_xxh32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = add i32 %8, 374761393
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len1(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = and i32 %10, 255
  %12 = mul i32 %11, 374761393
  %13 = add i32 %12, 374761394
  %14 = add i32 %13, %8
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len2(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = and i32 %10, 255
  %12 = mul i32 %11, 374761393
  %13 = add i32 %12, 374761395
  %14 = add i32 %13, %8
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 11)
  %16 = mul i32 %15, -1640531535
  %17 = lshr i32 %10, 8
  %18 = and i32 %17, 255
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len3(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = and i32 %10, 255
  %12 = mul i32 %11, 374761393
  %13 = add i32 %12, 374761396
  %14 = add i32 %13, %8
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 11)
  %16 = mul i32 %15, -1640531535
  %17 = lshr i32 %10, 8
  %18 = and i32 %17, 255
  %19 = mul i32 %18, 374761393
  %20 = add i32 %16, %19
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 11)
  %22 = mul i32 %21, -1640531535
  %23 = lshr i32 %10, 16
  %24 = and i32 %23, 255
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len4(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761397
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len5(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761398
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = lshr i64 %0, 32
  %17 = trunc nuw i64 %16 to i32
  %18 = and i32 %17, 255
  %19 = mul i32 %18, 374761393
  %20 = add i32 %15, %19
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len6(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761399
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = lshr i64 %0, 32
  %17 = trunc nuw i64 %16 to i32
  %18 = and i32 %17, 255
  %19 = mul i32 %18, 374761393
  %20 = add i32 %15, %19
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 11)
  %22 = mul i32 %21, -1640531535
  %23 = lshr i64 %0, 40
  %24 = trunc nuw nsw i64 %23 to i32
  %25 = and i32 %24, 255
  %26 = mul i32 %25, 374761393
  %27 = add i32 %22, %26
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len7(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761400
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = lshr i64 %0, 32
  %17 = trunc nuw i64 %16 to i32
  %18 = and i32 %17, 255
  %19 = mul i32 %18, 374761393
  %20 = add i32 %15, %19
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 11)
  %22 = mul i32 %21, -1640531535
  %23 = lshr i64 %0, 40
  %24 = trunc nuw nsw i64 %23 to i32
  %25 = and i32 %24, 255
  %26 = mul i32 %25, 374761393
  %27 = add i32 %22, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 11)
  %29 = mul i32 %28, -1640531535
  %30 = lshr i64 %0, 48
  %31 = trunc nuw nsw i64 %30 to i32
  %32 = and i32 %31, 255
  %33 = mul i32 %32, 374761393
  %34 = add i32 %29, %33
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len8(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761401
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = lshr i64 %0, 32
  %17 = trunc nuw i64 %16 to i32
  %18 = mul i32 %17, -1028477379
  %19 = add i32 %15, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 17)
  %21 = mul i32 %20, 668265263
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len9(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761402
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = lshr i64 %0, 32
  %17 = trunc nuw i64 %16 to i32
  %18 = mul i32 %17, -1028477379
  %19 = add i32 %15, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = trunc i64 %1 to i32
  %23 = and i32 %22, 255
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761403
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = lshr i64 %0, 32
  %17 = trunc nuw i64 %16 to i32
  %18 = mul i32 %17, -1028477379
  %19 = add i32 %15, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = trunc i64 %1 to i32
  %23 = and i32 %22, 255
  %24 = mul i32 %23, 374761393
  %25 = add i32 %21, %24
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 11)
  %27 = mul i32 %26, -1640531535
  %28 = lshr i32 %22, 8
  %29 = and i32 %28, 255
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len11(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761404
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = lshr i64 %0, 32
  %17 = trunc nuw i64 %16 to i32
  %18 = mul i32 %17, -1028477379
  %19 = add i32 %15, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = trunc i64 %1 to i32
  %23 = and i32 %22, 255
  %24 = mul i32 %23, 374761393
  %25 = add i32 %21, %24
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 11)
  %27 = mul i32 %26, -1640531535
  %28 = lshr i32 %22, 8
  %29 = and i32 %28, 255
  %30 = mul i32 %29, 374761393
  %31 = add i32 %27, %30
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 11)
  %33 = mul i32 %32, -1640531535
  %34 = lshr i32 %22, 16
  %35 = and i32 %34, 255
  %36 = mul i32 %35, 374761393
  %37 = add i32 %33, %36
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 11)
  %39 = mul i32 %38, -1640531535
  %40 = lshr i32 %39, 15
  %41 = xor i32 %40, %39
  %42 = mul i32 %41, -2048144777
  %43 = lshr i32 %42, 13
  %44 = xor i32 %43, %42
  %45 = mul i32 %44, -1028477379
  %46 = lshr i32 %45, 16
  %47 = xor i32 %46, %45
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len12(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761405
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = lshr i64 %0, 32
  %17 = trunc nuw i64 %16 to i32
  %18 = mul i32 %17, -1028477379
  %19 = add i32 %15, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = trunc i64 %1 to i32
  %23 = mul i32 %22, -1028477379
  %24 = add i32 %21, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 17)
  %26 = mul i32 %25, 668265263
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761406
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = lshr i64 %0, 32
  %17 = trunc nuw i64 %16 to i32
  %18 = mul i32 %17, -1028477379
  %19 = add i32 %15, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = trunc i64 %1 to i32
  %23 = mul i32 %22, -1028477379
  %24 = add i32 %21, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 17)
  %26 = mul i32 %25, 668265263
  %27 = lshr i64 %1, 32
  %28 = trunc nuw i64 %27 to i32
  %29 = and i32 %28, 255
  %30 = mul i32 %29, 374761393
  %31 = add i32 %26, %30
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len14(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761407
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = lshr i64 %0, 32
  %17 = trunc nuw i64 %16 to i32
  %18 = mul i32 %17, -1028477379
  %19 = add i32 %15, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = trunc i64 %1 to i32
  %23 = mul i32 %22, -1028477379
  %24 = add i32 %21, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 17)
  %26 = mul i32 %25, 668265263
  %27 = lshr i64 %1, 32
  %28 = trunc nuw i64 %27 to i32
  %29 = and i32 %28, 255
  %30 = mul i32 %29, 374761393
  %31 = add i32 %26, %30
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 11)
  %33 = mul i32 %32, -1640531535
  %34 = lshr i64 %1, 40
  %35 = trunc nuw nsw i64 %34 to i32
  %36 = and i32 %35, 255
  %37 = mul i32 %36, 374761393
  %38 = add i32 %33, %37
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len15(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, 374761408
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = lshr i64 %0, 32
  %17 = trunc nuw i64 %16 to i32
  %18 = mul i32 %17, -1028477379
  %19 = add i32 %15, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = trunc i64 %1 to i32
  %23 = mul i32 %22, -1028477379
  %24 = add i32 %21, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 17)
  %26 = mul i32 %25, 668265263
  %27 = lshr i64 %1, 32
  %28 = trunc nuw i64 %27 to i32
  %29 = and i32 %28, 255
  %30 = mul i32 %29, 374761393
  %31 = add i32 %26, %30
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 11)
  %33 = mul i32 %32, -1640531535
  %34 = lshr i64 %1, 40
  %35 = trunc nuw nsw i64 %34 to i32
  %36 = and i32 %35, 255
  %37 = mul i32 %36, 374761393
  %38 = add i32 %33, %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 11)
  %40 = mul i32 %39, -1640531535
  %41 = lshr i64 %1, 48
  %42 = trunc nuw nsw i64 %41 to i32
  %43 = and i32 %42, 255
  %44 = mul i32 %43, 374761393
  %45 = add i32 %40, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 11)
  %47 = mul i32 %46, -1640531535
  %48 = lshr i32 %47, 15
  %49 = xor i32 %48, %47
  %50 = mul i32 %49, -2048144777
  %51 = lshr i32 %50, 13
  %52 = xor i32 %51, %50
  %53 = mul i32 %52, -1028477379
  %54 = lshr i32 %53, 16
  %55 = xor i32 %54, %53
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len16(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = add i32 %39, 16
  %44 = add i32 %43, %40
  %45 = add i32 %44, %41
  %46 = add i32 %45, %42
  %47 = lshr i32 %46, 15
  %48 = xor i32 %47, %46
  %49 = mul i32 %48, -2048144777
  %50 = lshr i32 %49, 13
  %51 = xor i32 %50, %49
  %52 = mul i32 %51, -1028477379
  %53 = lshr i32 %52, 16
  %54 = xor i32 %53, %52
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len17(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = and i32 %43, 255
  %45 = mul i32 %44, 374761393
  %46 = add i32 %39, 17
  %47 = add i32 %46, %40
  %48 = add i32 %47, %41
  %49 = add i32 %48, %42
  %50 = add i32 %49, %45
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11)
  %52 = mul i32 %51, -1640531535
  %53 = lshr i32 %52, 15
  %54 = xor i32 %53, %52
  %55 = mul i32 %54, -2048144777
  %56 = lshr i32 %55, 13
  %57 = xor i32 %56, %55
  %58 = mul i32 %57, -1028477379
  %59 = lshr i32 %58, 16
  %60 = xor i32 %59, %58
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len18(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = and i32 %43, 255
  %45 = mul i32 %44, 374761393
  %46 = add i32 %39, 18
  %47 = add i32 %46, %40
  %48 = add i32 %47, %41
  %49 = add i32 %48, %42
  %50 = add i32 %49, %45
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11)
  %52 = mul i32 %51, -1640531535
  %53 = trunc i64 %2 to i32
  %54 = lshr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = mul i32 %55, 374761393
  %57 = add i32 %52, %56
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11)
  %59 = mul i32 %58, -1640531535
  %60 = lshr i32 %59, 15
  %61 = xor i32 %60, %59
  %62 = mul i32 %61, -2048144777
  %63 = lshr i32 %62, 13
  %64 = xor i32 %63, %62
  %65 = mul i32 %64, -1028477379
  %66 = lshr i32 %65, 16
  %67 = xor i32 %66, %65
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len19(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = and i32 %43, 255
  %45 = mul i32 %44, 374761393
  %46 = add i32 %39, 19
  %47 = add i32 %46, %40
  %48 = add i32 %47, %41
  %49 = add i32 %48, %42
  %50 = add i32 %49, %45
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11)
  %52 = mul i32 %51, -1640531535
  %53 = trunc i64 %2 to i32
  %54 = lshr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = mul i32 %55, 374761393
  %57 = add i32 %52, %56
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11)
  %59 = mul i32 %58, -1640531535
  %60 = trunc i64 %2 to i32
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = mul i32 %62, 374761393
  %64 = add i32 %59, %63
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 11)
  %66 = mul i32 %65, -1640531535
  %67 = lshr i32 %66, 15
  %68 = xor i32 %67, %66
  %69 = mul i32 %68, -2048144777
  %70 = lshr i32 %69, 13
  %71 = xor i32 %70, %69
  %72 = mul i32 %71, -1028477379
  %73 = lshr i32 %72, 16
  %74 = xor i32 %73, %72
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 20
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i32 %51, 15
  %53 = xor i32 %52, %51
  %54 = mul i32 %53, -2048144777
  %55 = lshr i32 %54, 13
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, -1028477379
  %58 = lshr i32 %57, 16
  %59 = xor i32 %58, %57
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len21(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 21
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i64 %2, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = mul i32 %54, 374761393
  %56 = add i32 %51, %55
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 11)
  %58 = mul i32 %57, -1640531535
  %59 = lshr i32 %58, 15
  %60 = xor i32 %59, %58
  %61 = mul i32 %60, -2048144777
  %62 = lshr i32 %61, 13
  %63 = xor i32 %62, %61
  %64 = mul i32 %63, -1028477379
  %65 = lshr i32 %64, 16
  %66 = xor i32 %65, %64
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len22(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 22
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i64 %2, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = mul i32 %54, 374761393
  %56 = add i32 %51, %55
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 11)
  %58 = mul i32 %57, -1640531535
  %59 = lshr i64 %2, 40
  %60 = trunc nuw nsw i64 %59 to i32
  %61 = and i32 %60, 255
  %62 = mul i32 %61, 374761393
  %63 = add i32 %58, %62
  %64 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 11)
  %65 = mul i32 %64, -1640531535
  %66 = lshr i32 %65, 15
  %67 = xor i32 %66, %65
  %68 = mul i32 %67, -2048144777
  %69 = lshr i32 %68, 13
  %70 = xor i32 %69, %68
  %71 = mul i32 %70, -1028477379
  %72 = lshr i32 %71, 16
  %73 = xor i32 %72, %71
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len23(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 23
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i64 %2, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = mul i32 %54, 374761393
  %56 = add i32 %51, %55
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 11)
  %58 = mul i32 %57, -1640531535
  %59 = lshr i64 %2, 40
  %60 = trunc nuw nsw i64 %59 to i32
  %61 = and i32 %60, 255
  %62 = mul i32 %61, 374761393
  %63 = add i32 %58, %62
  %64 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 11)
  %65 = mul i32 %64, -1640531535
  %66 = lshr i64 %2, 48
  %67 = trunc nuw nsw i64 %66 to i32
  %68 = and i32 %67, 255
  %69 = mul i32 %68, 374761393
  %70 = add i32 %65, %69
  %71 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 11)
  %72 = mul i32 %71, -1640531535
  %73 = lshr i32 %72, 15
  %74 = xor i32 %73, %72
  %75 = mul i32 %74, -2048144777
  %76 = lshr i32 %75, 13
  %77 = xor i32 %76, %75
  %78 = mul i32 %77, -1028477379
  %79 = lshr i32 %78, 16
  %80 = xor i32 %79, %78
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len24(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 24
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i64 %2, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = mul i32 %53, -1028477379
  %55 = add i32 %51, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 17)
  %57 = mul i32 %56, 668265263
  %58 = lshr i32 %57, 15
  %59 = xor i32 %58, %57
  %60 = mul i32 %59, -2048144777
  %61 = lshr i32 %60, 13
  %62 = xor i32 %61, %60
  %63 = mul i32 %62, -1028477379
  %64 = lshr i32 %63, 16
  %65 = xor i32 %64, %63
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len25(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 25
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i64 %2, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = mul i32 %53, -1028477379
  %55 = add i32 %51, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 17)
  %57 = mul i32 %56, 668265263
  %58 = trunc i64 %3 to i32
  %59 = and i32 %58, 255
  %60 = mul i32 %59, 374761393
  %61 = add i32 %57, %60
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 11)
  %63 = mul i32 %62, -1640531535
  %64 = lshr i32 %63, 15
  %65 = xor i32 %64, %63
  %66 = mul i32 %65, -2048144777
  %67 = lshr i32 %66, 13
  %68 = xor i32 %67, %66
  %69 = mul i32 %68, -1028477379
  %70 = lshr i32 %69, 16
  %71 = xor i32 %70, %69
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len26(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 26
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i64 %2, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = mul i32 %53, -1028477379
  %55 = add i32 %51, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 17)
  %57 = mul i32 %56, 668265263
  %58 = trunc i64 %3 to i32
  %59 = and i32 %58, 255
  %60 = mul i32 %59, 374761393
  %61 = add i32 %57, %60
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 11)
  %63 = mul i32 %62, -1640531535
  %64 = trunc i64 %3 to i32
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = mul i32 %66, 374761393
  %68 = add i32 %63, %67
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 11)
  %70 = mul i32 %69, -1640531535
  %71 = lshr i32 %70, 15
  %72 = xor i32 %71, %70
  %73 = mul i32 %72, -2048144777
  %74 = lshr i32 %73, 13
  %75 = xor i32 %74, %73
  %76 = mul i32 %75, -1028477379
  %77 = lshr i32 %76, 16
  %78 = xor i32 %77, %76
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len27(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 27
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i64 %2, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = mul i32 %53, -1028477379
  %55 = add i32 %51, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 17)
  %57 = mul i32 %56, 668265263
  %58 = trunc i64 %3 to i32
  %59 = and i32 %58, 255
  %60 = mul i32 %59, 374761393
  %61 = add i32 %57, %60
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 11)
  %63 = mul i32 %62, -1640531535
  %64 = trunc i64 %3 to i32
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = mul i32 %66, 374761393
  %68 = add i32 %63, %67
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 11)
  %70 = mul i32 %69, -1640531535
  %71 = trunc i64 %3 to i32
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = mul i32 %73, 374761393
  %75 = add i32 %70, %74
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 11)
  %77 = mul i32 %76, -1640531535
  %78 = lshr i32 %77, 15
  %79 = xor i32 %78, %77
  %80 = mul i32 %79, -2048144777
  %81 = lshr i32 %80, 13
  %82 = xor i32 %81, %80
  %83 = mul i32 %82, -1028477379
  %84 = lshr i32 %83, 16
  %85 = xor i32 %84, %83
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len28(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 28
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i64 %2, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = mul i32 %53, -1028477379
  %55 = add i32 %51, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 17)
  %57 = mul i32 %56, 668265263
  %58 = trunc i64 %3 to i32
  %59 = mul i32 %58, -1028477379
  %60 = add i32 %57, %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17)
  %62 = mul i32 %61, 668265263
  %63 = lshr i32 %62, 15
  %64 = xor i32 %63, %62
  %65 = mul i32 %64, -2048144777
  %66 = lshr i32 %65, 13
  %67 = xor i32 %66, %65
  %68 = mul i32 %67, -1028477379
  %69 = lshr i32 %68, 16
  %70 = xor i32 %69, %68
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len29(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 29
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i64 %2, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = mul i32 %53, -1028477379
  %55 = add i32 %51, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 17)
  %57 = mul i32 %56, 668265263
  %58 = trunc i64 %3 to i32
  %59 = mul i32 %58, -1028477379
  %60 = add i32 %57, %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17)
  %62 = mul i32 %61, 668265263
  %63 = lshr i64 %3, 32
  %64 = trunc nuw i64 %63 to i32
  %65 = and i32 %64, 255
  %66 = mul i32 %65, 374761393
  %67 = add i32 %62, %66
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 11)
  %69 = mul i32 %68, -1640531535
  %70 = lshr i32 %69, 15
  %71 = xor i32 %70, %69
  %72 = mul i32 %71, -2048144777
  %73 = lshr i32 %72, 13
  %74 = xor i32 %73, %72
  %75 = mul i32 %74, -1028477379
  %76 = lshr i32 %75, 16
  %77 = xor i32 %76, %75
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len30(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 30
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i64 %2, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = mul i32 %53, -1028477379
  %55 = add i32 %51, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 17)
  %57 = mul i32 %56, 668265263
  %58 = trunc i64 %3 to i32
  %59 = mul i32 %58, -1028477379
  %60 = add i32 %57, %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17)
  %62 = mul i32 %61, 668265263
  %63 = lshr i64 %3, 32
  %64 = trunc nuw i64 %63 to i32
  %65 = and i32 %64, 255
  %66 = mul i32 %65, 374761393
  %67 = add i32 %62, %66
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 11)
  %69 = mul i32 %68, -1640531535
  %70 = lshr i64 %3, 40
  %71 = trunc nuw nsw i64 %70 to i32
  %72 = and i32 %71, 255
  %73 = mul i32 %72, 374761393
  %74 = add i32 %69, %73
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 11)
  %76 = mul i32 %75, -1640531535
  %77 = lshr i32 %76, 15
  %78 = xor i32 %77, %76
  %79 = mul i32 %78, -2048144777
  %80 = lshr i32 %79, 13
  %81 = xor i32 %80, %79
  %82 = mul i32 %81, -1028477379
  %83 = lshr i32 %82, 16
  %84 = xor i32 %83, %82
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len31(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %10
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %11
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %12
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 31
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i64 %2, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = mul i32 %53, -1028477379
  %55 = add i32 %51, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 17)
  %57 = mul i32 %56, 668265263
  %58 = trunc i64 %3 to i32
  %59 = mul i32 %58, -1028477379
  %60 = add i32 %57, %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17)
  %62 = mul i32 %61, 668265263
  %63 = lshr i64 %3, 32
  %64 = trunc nuw i64 %63 to i32
  %65 = and i32 %64, 255
  %66 = mul i32 %65, 374761393
  %67 = add i32 %62, %66
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 11)
  %69 = mul i32 %68, -1640531535
  %70 = lshr i64 %3, 40
  %71 = trunc nuw nsw i64 %70 to i32
  %72 = and i32 %71, 255
  %73 = mul i32 %72, 374761393
  %74 = add i32 %69, %73
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 11)
  %76 = mul i32 %75, -1640531535
  %77 = lshr i64 %3, 48
  %78 = trunc nuw nsw i64 %77 to i32
  %79 = and i32 %78, 255
  %80 = mul i32 %79, 374761393
  %81 = add i32 %76, %80
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 11)
  %83 = mul i32 %82, -1640531535
  %84 = lshr i32 %83, 15
  %85 = xor i32 %84, %83
  %86 = mul i32 %85, -2048144777
  %87 = lshr i32 %86, 13
  %88 = xor i32 %87, %86
  %89 = mul i32 %88, -1028477379
  %90 = lshr i32 %89, 16
  %91 = xor i32 %90, %89
  ret i32 %91
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_stream_len0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = add i32 %8, 374761393
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_stream_len1(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = and i32 %10, 255
  %12 = mul i32 %11, 374761393
  %13 = add i32 %8, 374761394
  %14 = add i32 %12, %13
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_stream_len3(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = trunc i64 %0 to i32
  %12 = lshr i32 %11, 8
  %13 = trunc i64 %0 to i32
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = mul i32 %15, 374761393
  %17 = and i32 %12, 255
  %18 = mul i32 %17, 374761393
  %19 = and i32 %10, 255
  %20 = mul i32 %19, 374761393
  %21 = add i32 %8, 374761396
  %22 = add i32 %20, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 11)
  %24 = mul i32 %23, -1640531535
  %25 = add i32 %18, %24
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 11)
  %27 = mul i32 %26, -1640531535
  %28 = add i32 %16, %27
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_stream_len4(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %8, 374761397
  %13 = add i32 %11, %12
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 17)
  %15 = mul i32 %14, 668265263
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_stream_len5(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = lshr i64 %0, 32
  %12 = trunc nuw i64 %11 to i32
  %13 = mul i32 %10, -1028477379
  %14 = add i32 %8, 374761398
  %15 = add i32 %13, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 17)
  %17 = mul i32 %16, 668265263
  %18 = and i32 %12, 255
  %19 = mul i32 %18, 374761393
  %20 = add i32 %17, %19
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_stream_len7(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = lshr i64 %0, 32
  %12 = trunc nuw i64 %11 to i32
  %13 = lshr i64 %0, 40
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = lshr i64 %0, 48
  %16 = trunc nuw nsw i64 %15 to i32
  %17 = and i32 %16, 255
  %18 = mul i32 %17, 374761393
  %19 = and i32 %14, 255
  %20 = mul i32 %19, 374761393
  %21 = and i32 %12, 255
  %22 = mul i32 %21, 374761393
  %23 = mul i32 %10, -1028477379
  %24 = add i32 %8, 374761400
  %25 = add i32 %23, %24
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 17)
  %27 = mul i32 %26, 668265263
  %28 = add i32 %22, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 11)
  %30 = mul i32 %29, -1640531535
  %31 = add i32 %20, %30
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 11)
  %33 = mul i32 %32, -1640531535
  %34 = add i32 %18, %33
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_stream_len8(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = lshr i64 %0, 32
  %11 = trunc nuw i64 %10 to i32
  %12 = mul i32 %11, -1028477379
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -1028477379
  %15 = add i32 %8, 374761401
  %16 = add i32 %14, %15
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 17)
  %18 = mul i32 %17, 668265263
  %19 = add i32 %12, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 17)
  %21 = mul i32 %20, 668265263
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_stream_len11(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = lshr i64 %0, 32
  %12 = trunc nuw i64 %11 to i32
  %13 = trunc i64 %1 to i32
  %14 = trunc i64 %1 to i32
  %15 = lshr i32 %14, 8
  %16 = trunc i64 %1 to i32
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = mul i32 %18, 374761393
  %20 = and i32 %15, 255
  %21 = mul i32 %20, 374761393
  %22 = and i32 %13, 255
  %23 = mul i32 %22, 374761393
  %24 = mul i32 %12, -1028477379
  %25 = mul i32 %10, -1028477379
  %26 = add i32 %8, 374761404
  %27 = add i32 %25, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = add i32 %24, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = add i32 %23, %32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 11)
  %35 = mul i32 %34, -1640531535
  %36 = add i32 %21, %35
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 11)
  %38 = mul i32 %37, -1640531535
  %39 = add i32 %19, %38
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_stream_len12(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = lshr i64 %0, 32
  %12 = trunc nuw i64 %11 to i32
  %13 = trunc i64 %1 to i32
  %14 = mul i32 %13, -1028477379
  %15 = mul i32 %12, -1028477379
  %16 = mul i32 %10, -1028477379
  %17 = add i32 %8, 374761405
  %18 = add i32 %16, %17
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 17)
  %20 = mul i32 %19, 668265263
  %21 = add i32 %15, %20
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 17)
  %23 = mul i32 %22, 668265263
  %24 = add i32 %14, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 17)
  %26 = mul i32 %25, 668265263
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_stream_len15(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = lshr i64 %0, 32
  %12 = trunc nuw i64 %11 to i32
  %13 = trunc i64 %1 to i32
  %14 = lshr i64 %1, 32
  %15 = trunc nuw i64 %14 to i32
  %16 = lshr i64 %1, 40
  %17 = trunc nuw nsw i64 %16 to i32
  %18 = lshr i64 %1, 48
  %19 = trunc nuw nsw i64 %18 to i32
  %20 = and i32 %19, 255
  %21 = mul i32 %20, 374761393
  %22 = and i32 %17, 255
  %23 = mul i32 %22, 374761393
  %24 = and i32 %15, 255
  %25 = mul i32 %24, 374761393
  %26 = mul i32 %13, -1028477379
  %27 = mul i32 %12, -1028477379
  %28 = mul i32 %10, -1028477379
  %29 = add i32 %8, 374761408
  %30 = add i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = add i32 %27, %32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 17)
  %35 = mul i32 %34, 668265263
  %36 = add i32 %26, %35
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = add i32 %25, %38
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 11)
  %41 = mul i32 %40, -1640531535
  %42 = add i32 %23, %41
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 11)
  %44 = mul i32 %43, -1640531535
  %45 = add i32 %21, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 11)
  %47 = mul i32 %46, -1640531535
  %48 = lshr i32 %47, 15
  %49 = xor i32 %48, %47
  %50 = mul i32 %49, -2048144777
  %51 = lshr i32 %50, 13
  %52 = xor i32 %51, %50
  %53 = mul i32 %52, -1028477379
  %54 = lshr i32 %53, 16
  %55 = xor i32 %54, %53
  ret i32 %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148080228}
