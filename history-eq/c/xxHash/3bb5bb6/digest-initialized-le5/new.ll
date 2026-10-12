; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/3bb5bb6/wrap_digest_initialized.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/3bb5bb6/wrap_digest_initialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_0(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_be_0(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = and i32 %6, 255
  %26 = mul i32 %25, 374761393
  %27 = add i32 %24, %26
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
define dso_local i32 @target_be_1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = and i32 %6, 255
  %26 = mul i32 %25, 374761393
  %27 = add i32 %24, %26
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
define dso_local i32 @target_le_2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = and i32 %6, 255
  %26 = mul i32 %25, 374761393
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 11)
  %29 = mul i32 %28, -1640531535
  %30 = lshr i32 %6, 8
  %31 = and i32 %30, 255
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_be_2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = and i32 %6, 255
  %26 = mul i32 %25, 374761393
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 11)
  %29 = mul i32 %28, -1640531535
  %30 = lshr i32 %6, 8
  %31 = and i32 %30, 255
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = and i32 %6, 255
  %26 = mul i32 %25, 374761393
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 11)
  %29 = mul i32 %28, -1640531535
  %30 = lshr i32 %6, 8
  %31 = and i32 %30, 255
  %32 = mul i32 %31, 374761393
  %33 = add i32 %29, %32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 11)
  %35 = mul i32 %34, -1640531535
  %36 = lshr i32 %6, 16
  %37 = and i32 %36, 255
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_be_3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = and i32 %6, 255
  %26 = mul i32 %25, 374761393
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 11)
  %29 = mul i32 %28, -1640531535
  %30 = lshr i32 %6, 8
  %31 = and i32 %30, 255
  %32 = mul i32 %31, 374761393
  %33 = add i32 %29, %32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 11)
  %35 = mul i32 %34, -1640531535
  %36 = lshr i32 %6, 16
  %37 = and i32 %36, 255
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = mul i32 %6, -1028477379
  %26 = add i32 %24, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
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
define dso_local i32 @target_be_4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = tail call i32 @llvm.bswap.i32(i32 %6)
  %26 = mul i32 %25, -1028477379
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
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
define dso_local i32 @target_le_5(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = mul i32 %6, -1028477379
  %26 = add i32 %24, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = and i32 %7, 255
  %30 = mul i32 %29, 374761393
  %31 = add i32 %28, %30
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
define dso_local i32 @target_be_5(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = tail call i32 @llvm.bswap.i32(i32 %6)
  %26 = mul i32 %25, -1028477379
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = and i32 %7, 255
  %31 = mul i32 %30, 374761393
  %32 = add i32 %29, %31
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_6(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = mul i32 %6, -1028477379
  %26 = add i32 %24, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = and i32 %7, 255
  %30 = mul i32 %29, 374761393
  %31 = add i32 %28, %30
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 11)
  %33 = mul i32 %32, -1640531535
  %34 = lshr i32 %7, 8
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
define dso_local i32 @target_be_6(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = tail call i32 @llvm.bswap.i32(i32 %6)
  %26 = mul i32 %25, -1028477379
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = and i32 %7, 255
  %31 = mul i32 %30, 374761393
  %32 = add i32 %29, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 11)
  %34 = mul i32 %33, -1640531535
  %35 = lshr i32 %7, 8
  %36 = and i32 %35, 255
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_7(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = mul i32 %6, -1028477379
  %26 = add i32 %24, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = and i32 %7, 255
  %30 = mul i32 %29, 374761393
  %31 = add i32 %28, %30
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 11)
  %33 = mul i32 %32, -1640531535
  %34 = lshr i32 %7, 8
  %35 = and i32 %34, 255
  %36 = mul i32 %35, 374761393
  %37 = add i32 %33, %36
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 11)
  %39 = mul i32 %38, -1640531535
  %40 = lshr i32 %7, 16
  %41 = and i32 %40, 255
  %42 = mul i32 %41, 374761393
  %43 = add i32 %39, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 11)
  %45 = mul i32 %44, -1640531535
  %46 = lshr i32 %45, 15
  %47 = xor i32 %46, %45
  %48 = mul i32 %47, -2048144777
  %49 = lshr i32 %48, 13
  %50 = xor i32 %49, %48
  %51 = mul i32 %50, -1028477379
  %52 = lshr i32 %51, 16
  %53 = xor i32 %52, %51
  ret i32 %53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_be_7(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = tail call i32 @llvm.bswap.i32(i32 %6)
  %26 = mul i32 %25, -1028477379
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = and i32 %7, 255
  %31 = mul i32 %30, 374761393
  %32 = add i32 %29, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 11)
  %34 = mul i32 %33, -1640531535
  %35 = lshr i32 %7, 8
  %36 = and i32 %35, 255
  %37 = mul i32 %36, 374761393
  %38 = add i32 %34, %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 11)
  %40 = mul i32 %39, -1640531535
  %41 = lshr i32 %7, 16
  %42 = and i32 %41, 255
  %43 = mul i32 %42, 374761393
  %44 = add i32 %40, %43
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 11)
  %46 = mul i32 %45, -1640531535
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = mul i32 %6, -1028477379
  %26 = add i32 %24, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = mul i32 %7, -1028477379
  %30 = add i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = lshr i32 %32, 15
  %34 = xor i32 %33, %32
  %35 = mul i32 %34, -2048144777
  %36 = lshr i32 %35, 13
  %37 = xor i32 %36, %35
  %38 = mul i32 %37, -1028477379
  %39 = lshr i32 %38, 16
  %40 = xor i32 %39, %38
  ret i32 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_be_8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = tail call i32 @llvm.bswap.i32(i32 %6)
  %26 = mul i32 %25, -1028477379
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = tail call i32 @llvm.bswap.i32(i32 %7)
  %31 = mul i32 %30, -1028477379
  %32 = add i32 %29, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 17)
  %34 = mul i32 %33, 668265263
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_9(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = mul i32 %6, -1028477379
  %26 = add i32 %24, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = mul i32 %7, -1028477379
  %30 = add i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = and i32 %8, 255
  %34 = mul i32 %33, 374761393
  %35 = add i32 %32, %34
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_be_9(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = tail call i32 @llvm.bswap.i32(i32 %6)
  %26 = mul i32 %25, -1028477379
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = tail call i32 @llvm.bswap.i32(i32 %7)
  %31 = mul i32 %30, -1028477379
  %32 = add i32 %29, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 17)
  %34 = mul i32 %33, 668265263
  %35 = and i32 %8, 255
  %36 = mul i32 %35, 374761393
  %37 = add i32 %34, %36
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
define dso_local i32 @target_le_10(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = mul i32 %6, -1028477379
  %26 = add i32 %24, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = mul i32 %7, -1028477379
  %30 = add i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = and i32 %8, 255
  %34 = mul i32 %33, 374761393
  %35 = add i32 %32, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 11)
  %37 = mul i32 %36, -1640531535
  %38 = lshr i32 %8, 8
  %39 = and i32 %38, 255
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_be_10(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = tail call i32 @llvm.bswap.i32(i32 %6)
  %26 = mul i32 %25, -1028477379
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = tail call i32 @llvm.bswap.i32(i32 %7)
  %31 = mul i32 %30, -1028477379
  %32 = add i32 %29, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 17)
  %34 = mul i32 %33, 668265263
  %35 = and i32 %8, 255
  %36 = mul i32 %35, 374761393
  %37 = add i32 %34, %36
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 11)
  %39 = mul i32 %38, -1640531535
  %40 = lshr i32 %8, 8
  %41 = and i32 %40, 255
  %42 = mul i32 %41, 374761393
  %43 = add i32 %39, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 11)
  %45 = mul i32 %44, -1640531535
  %46 = lshr i32 %45, 15
  %47 = xor i32 %46, %45
  %48 = mul i32 %47, -2048144777
  %49 = lshr i32 %48, 13
  %50 = xor i32 %49, %48
  %51 = mul i32 %50, -1028477379
  %52 = lshr i32 %51, 16
  %53 = xor i32 %52, %51
  ret i32 %53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_11(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = mul i32 %6, -1028477379
  %26 = add i32 %24, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = mul i32 %7, -1028477379
  %30 = add i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = and i32 %8, 255
  %34 = mul i32 %33, 374761393
  %35 = add i32 %32, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 11)
  %37 = mul i32 %36, -1640531535
  %38 = lshr i32 %8, 8
  %39 = and i32 %38, 255
  %40 = mul i32 %39, 374761393
  %41 = add i32 %37, %40
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 11)
  %43 = mul i32 %42, -1640531535
  %44 = lshr i32 %8, 16
  %45 = and i32 %44, 255
  %46 = mul i32 %45, 374761393
  %47 = add i32 %43, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 11)
  %49 = mul i32 %48, -1640531535
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_be_11(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = add i32 %23, %0
  %25 = tail call i32 @llvm.bswap.i32(i32 %6)
  %26 = mul i32 %25, -1028477379
  %27 = add i32 %24, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = tail call i32 @llvm.bswap.i32(i32 %7)
  %31 = mul i32 %30, -1028477379
  %32 = add i32 %29, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 17)
  %34 = mul i32 %33, 668265263
  %35 = and i32 %8, 255
  %36 = mul i32 %35, 374761393
  %37 = add i32 %34, %36
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 11)
  %39 = mul i32 %38, -1640531535
  %40 = lshr i32 %8, 8
  %41 = and i32 %40, 255
  %42 = mul i32 %41, 374761393
  %43 = add i32 %39, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 11)
  %45 = mul i32 %44, -1640531535
  %46 = lshr i32 %8, 16
  %47 = and i32 %46, 255
  %48 = mul i32 %47, 374761393
  %49 = add i32 %45, %48
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 11)
  %51 = mul i32 %50, -1640531535
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_12(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = mul i32 %6, -1028477379
  %25 = add i32 %24, %0
  %26 = add i32 %25, %23
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = mul i32 %7, -1028477379
  %30 = add i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = mul i32 %8, -1028477379
  %34 = add i32 %32, %33
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 17)
  %36 = mul i32 %35, 668265263
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
define dso_local i32 @target_be_12(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = tail call i32 @llvm.bswap.i32(i32 %6)
  %25 = mul i32 %24, -1028477379
  %26 = add i32 %25, %0
  %27 = add i32 %26, %23
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = tail call i32 @llvm.bswap.i32(i32 %7)
  %31 = mul i32 %30, -1028477379
  %32 = add i32 %29, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 17)
  %34 = mul i32 %33, 668265263
  %35 = tail call i32 @llvm.bswap.i32(i32 %8)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %34, %36
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %39 = mul i32 %38, 668265263
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
define dso_local i32 @target_le_13(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = mul i32 %6, -1028477379
  %25 = add i32 %24, %0
  %26 = add i32 %25, %23
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = mul i32 %7, -1028477379
  %30 = add i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = mul i32 %8, -1028477379
  %34 = add i32 %32, %33
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 17)
  %36 = mul i32 %35, 668265263
  %37 = and i32 %9, 255
  %38 = mul i32 %37, 374761393
  %39 = add i32 %36, %38
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
define dso_local i32 @target_be_13(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = tail call i32 @llvm.bswap.i32(i32 %6)
  %25 = mul i32 %24, -1028477379
  %26 = add i32 %25, %0
  %27 = add i32 %26, %23
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = tail call i32 @llvm.bswap.i32(i32 %7)
  %31 = mul i32 %30, -1028477379
  %32 = add i32 %29, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 17)
  %34 = mul i32 %33, 668265263
  %35 = tail call i32 @llvm.bswap.i32(i32 %8)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %34, %36
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = and i32 %9, 255
  %41 = mul i32 %40, 374761393
  %42 = add i32 %39, %41
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 11)
  %44 = mul i32 %43, -1640531535
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_14(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = mul i32 %6, -1028477379
  %25 = add i32 %24, %0
  %26 = add i32 %25, %23
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = mul i32 %7, -1028477379
  %30 = add i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = mul i32 %8, -1028477379
  %34 = add i32 %32, %33
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 17)
  %36 = mul i32 %35, 668265263
  %37 = and i32 %9, 255
  %38 = mul i32 %37, 374761393
  %39 = add i32 %36, %38
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 11)
  %41 = mul i32 %40, -1640531535
  %42 = lshr i32 %9, 8
  %43 = and i32 %42, 255
  %44 = mul i32 %43, 374761393
  %45 = add i32 %41, %44
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_be_14(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = tail call i32 @llvm.bswap.i32(i32 %6)
  %25 = mul i32 %24, -1028477379
  %26 = add i32 %25, %0
  %27 = add i32 %26, %23
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = tail call i32 @llvm.bswap.i32(i32 %7)
  %31 = mul i32 %30, -1028477379
  %32 = add i32 %29, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 17)
  %34 = mul i32 %33, 668265263
  %35 = tail call i32 @llvm.bswap.i32(i32 %8)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %34, %36
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = and i32 %9, 255
  %41 = mul i32 %40, 374761393
  %42 = add i32 %39, %41
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 11)
  %44 = mul i32 %43, -1640531535
  %45 = lshr i32 %9, 8
  %46 = and i32 %45, 255
  %47 = mul i32 %46, 374761393
  %48 = add i32 %44, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 11)
  %50 = mul i32 %49, -1640531535
  %51 = lshr i32 %50, 15
  %52 = xor i32 %51, %50
  %53 = mul i32 %52, -2048144777
  %54 = lshr i32 %53, 13
  %55 = xor i32 %54, %53
  %56 = mul i32 %55, -1028477379
  %57 = lshr i32 %56, 16
  %58 = xor i32 %57, %56
  ret i32 %58
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_le_15(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = mul i32 %6, -1028477379
  %25 = add i32 %24, %0
  %26 = add i32 %25, %23
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = mul i32 %7, -1028477379
  %30 = add i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = mul i32 %8, -1028477379
  %34 = add i32 %32, %33
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 17)
  %36 = mul i32 %35, 668265263
  %37 = and i32 %9, 255
  %38 = mul i32 %37, 374761393
  %39 = add i32 %36, %38
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 11)
  %41 = mul i32 %40, -1640531535
  %42 = lshr i32 %9, 8
  %43 = and i32 %42, 255
  %44 = mul i32 %43, 374761393
  %45 = add i32 %41, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 11)
  %47 = mul i32 %46, -1640531535
  %48 = lshr i32 %9, 16
  %49 = and i32 %48, 255
  %50 = mul i32 %49, 374761393
  %51 = add i32 %47, %50
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 11)
  %53 = mul i32 %52, -1640531535
  %54 = lshr i32 %53, 15
  %55 = xor i32 %54, %53
  %56 = mul i32 %55, -2048144777
  %57 = lshr i32 %56, 13
  %58 = xor i32 %57, %56
  %59 = mul i32 %58, -1028477379
  %60 = lshr i32 %59, 16
  %61 = xor i32 %60, %59
  ret i32 %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_be_15(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 1)
  %14 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 7)
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 18)
  %19 = add i32 %17, %18
  br label %22

20:                                               ; preds = %10
  %21 = add i32 %4, 374761393
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %19, %12 ], [ %21, %20 ]
  %24 = tail call i32 @llvm.bswap.i32(i32 %6)
  %25 = mul i32 %24, -1028477379
  %26 = add i32 %25, %0
  %27 = add i32 %26, %23
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = tail call i32 @llvm.bswap.i32(i32 %7)
  %31 = mul i32 %30, -1028477379
  %32 = add i32 %29, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 17)
  %34 = mul i32 %33, 668265263
  %35 = tail call i32 @llvm.bswap.i32(i32 %8)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %34, %36
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = and i32 %9, 255
  %41 = mul i32 %40, 374761393
  %42 = add i32 %39, %41
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 11)
  %44 = mul i32 %43, -1640531535
  %45 = lshr i32 %9, 8
  %46 = and i32 %45, 255
  %47 = mul i32 %46, 374761393
  %48 = add i32 %44, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 11)
  %50 = mul i32 %49, -1640531535
  %51 = lshr i32 %9, 16
  %52 = and i32 %51, 255
  %53 = mul i32 %52, 374761393
  %54 = add i32 %50, %53
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 11)
  %56 = mul i32 %55, -1640531535
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
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
