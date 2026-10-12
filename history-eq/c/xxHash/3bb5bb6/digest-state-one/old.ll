; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/3bb5bb6/wrap_digest_state.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/3bb5bb6/wrap_digest_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_0(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 1)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 7)
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 374761393
  br label %28

28:                                               ; preds = %24, %8
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_0(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 1)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 7)
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 374761393
  br label %28

28:                                               ; preds = %24, %8
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
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
define dso_local i32 @target_le_1(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 1)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 7)
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 374761393
  br label %28

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = mul i32 %33, 374761393
  %35 = add i32 %30, %29
  %36 = add i32 %34, %35
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 11)
  %38 = mul i32 %37, -1640531535
  %39 = lshr i32 %38, 15
  %40 = xor i32 %39, %38
  %41 = mul i32 %40, -2048144777
  %42 = lshr i32 %41, 13
  %43 = xor i32 %42, %41
  %44 = mul i32 %43, -1028477379
  %45 = lshr i32 %44, 16
  %46 = xor i32 %45, %44
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_1(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 1)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 7)
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 374761393
  br label %28

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = mul i32 %33, 374761393
  %35 = add i32 %30, %29
  %36 = add i32 %34, %35
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 11)
  %38 = mul i32 %37, -1640531535
  %39 = lshr i32 %38, 15
  %40 = xor i32 %39, %38
  %41 = mul i32 %40, -2048144777
  %42 = lshr i32 %41, 13
  %43 = xor i32 %42, %41
  %44 = mul i32 %43, -1028477379
  %45 = lshr i32 %44, 16
  %46 = xor i32 %45, %44
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_2(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 1)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 7)
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 374761393
  br label %28

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = mul i32 %33, 374761393
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = mul i32 %37, 374761393
  %39 = add i32 %30, %29
  %40 = add i32 %38, %39
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 11)
  %42 = mul i32 %41, -1640531535
  %43 = add i32 %34, %42
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_2(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 1)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 7)
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 374761393
  br label %28

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = mul i32 %33, 374761393
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = mul i32 %37, 374761393
  %39 = add i32 %30, %29
  %40 = add i32 %38, %39
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 11)
  %42 = mul i32 %41, -1640531535
  %43 = add i32 %34, %42
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_3(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 3
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 1)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 7)
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 374761393
  br label %28

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = mul i32 %33, 374761393
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = mul i32 %37, 374761393
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = mul i32 %41, 374761393
  %43 = add i32 %30, %29
  %44 = add i32 %42, %43
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 11)
  %46 = mul i32 %45, -1640531535
  %47 = add i32 %38, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 11)
  %49 = mul i32 %48, -1640531535
  %50 = add i32 %34, %49
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_3(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 3
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 1)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 7)
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 374761393
  br label %28

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = mul i32 %33, 374761393
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = mul i32 %37, 374761393
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = mul i32 %41, 374761393
  %43 = add i32 %30, %29
  %44 = add i32 %42, %43
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 11)
  %46 = mul i32 %45, -1640531535
  %47 = add i32 %38, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 11)
  %49 = mul i32 %48, -1640531535
  %50 = add i32 %34, %49
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_4(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 4
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 1)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 7)
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 374761393
  br label %28

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = load i32, ptr %0, align 4
  %32 = load i32, ptr %30, align 1
  %33 = mul i32 %32, -1028477379
  %34 = add i32 %31, %29
  %35 = add i32 %33, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %37 = mul i32 %36, 668265263
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
define dso_local i32 @target_be_4(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 4
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 1)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 7)
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %19 = add i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 18)
  %23 = add i32 %19, %22
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 374761393
  br label %28

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = load i32, ptr %0, align 4
  %32 = load i32, ptr %30, align 1
  %33 = tail call noundef i32 @llvm.bswap.i32(i32 %32)
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %29
  %36 = add i32 %34, %35
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = lshr i32 %38, 15
  %40 = xor i32 %39, %38
  %41 = mul i32 %40, -2048144777
  %42 = lshr i32 %41, 13
  %43 = xor i32 %42, %41
  %44 = mul i32 %43, -1028477379
  %45 = lshr i32 %44, 16
  %46 = xor i32 %45, %44
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_5(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 5
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = load i32, ptr %0, align 4
  %33 = add i32 %32, %31
  %34 = load i32, ptr %5, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %33
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = getelementptr i8, ptr %0, i64 28
  %40 = icmp ult ptr %39, %6
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load i8, ptr %39, align 1
  %43 = zext i8 %42 to i32
  %44 = mul i32 %43, 374761393
  %45 = add i32 %44, %38
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 11)
  %47 = mul i32 %46, -1640531535
  br label %48

48:                                               ; preds = %41, %30
  %49 = phi i32 [ %38, %30 ], [ %47, %41 ]
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
define dso_local i32 @target_be_5(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 5
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = load i32, ptr %0, align 4
  %33 = add i32 %32, %31
  %34 = load i32, ptr %5, align 1
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %36, %33
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = getelementptr i8, ptr %0, i64 28
  %41 = icmp ult ptr %40, %6
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load i8, ptr %40, align 1
  %44 = zext i8 %43 to i32
  %45 = mul i32 %44, 374761393
  %46 = add i32 %45, %39
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 11)
  %48 = mul i32 %47, -1640531535
  br label %49

49:                                               ; preds = %42, %30
  %50 = phi i32 [ %39, %30 ], [ %48, %42 ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_6(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 6
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr i8, ptr %0, i64 30
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = load i32, ptr %0, align 4
  %33 = add i32 %32, %31
  %34 = load i32, ptr %5, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %33
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = getelementptr i8, ptr %0, i64 28
  %40 = icmp ult ptr %39, %6
  br i1 %40, label %41, label %55

41:                                               ; preds = %30
  %42 = load i8, ptr %39, align 1
  %43 = zext i8 %42 to i32
  %44 = mul i32 %43, 374761393
  %45 = add i32 %44, %38
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 11)
  %47 = mul i32 %46, -1640531535
  %48 = getelementptr i8, ptr %0, i64 29
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = mul i32 %50, 374761393
  %52 = add i32 %51, %47
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 11)
  %54 = mul i32 %53, -1640531535
  br label %55

55:                                               ; preds = %41, %30
  %56 = phi i32 [ %38, %30 ], [ %54, %41 ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_6(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 6
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr i8, ptr %0, i64 30
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = load i32, ptr %0, align 4
  %33 = add i32 %32, %31
  %34 = load i32, ptr %5, align 1
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %36, %33
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = getelementptr i8, ptr %0, i64 28
  %41 = icmp ult ptr %40, %6
  br i1 %41, label %42, label %56

42:                                               ; preds = %30
  %43 = load i8, ptr %40, align 1
  %44 = zext i8 %43 to i32
  %45 = mul i32 %44, 374761393
  %46 = add i32 %45, %39
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 11)
  %48 = mul i32 %47, -1640531535
  %49 = getelementptr i8, ptr %0, i64 29
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = mul i32 %51, 374761393
  %53 = add i32 %52, %48
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 11)
  %55 = mul i32 %54, -1640531535
  br label %56

56:                                               ; preds = %42, %30
  %57 = phi i32 [ %39, %30 ], [ %55, %42 ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_7(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr i8, ptr %0, i64 31
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = load i32, ptr %0, align 4
  %33 = add i32 %32, %31
  %34 = load i32, ptr %5, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %33
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = getelementptr i8, ptr %0, i64 28
  %40 = icmp ult ptr %39, %6
  br i1 %40, label %41, label %62

41:                                               ; preds = %30
  %42 = load i8, ptr %39, align 1
  %43 = zext i8 %42 to i32
  %44 = mul i32 %43, 374761393
  %45 = add i32 %44, %38
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 11)
  %47 = mul i32 %46, -1640531535
  %48 = getelementptr i8, ptr %0, i64 29
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = mul i32 %50, 374761393
  %52 = add i32 %51, %47
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 11)
  %54 = mul i32 %53, -1640531535
  %55 = getelementptr i8, ptr %0, i64 30
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = mul i32 %57, 374761393
  %59 = add i32 %58, %54
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 11)
  %61 = mul i32 %60, -1640531535
  br label %62

62:                                               ; preds = %41, %30
  %63 = phi i32 [ %38, %30 ], [ %61, %41 ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_7(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr i8, ptr %0, i64 31
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = load i32, ptr %0, align 4
  %33 = add i32 %32, %31
  %34 = load i32, ptr %5, align 1
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %36, %33
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = getelementptr i8, ptr %0, i64 28
  %41 = icmp ult ptr %40, %6
  br i1 %41, label %42, label %63

42:                                               ; preds = %30
  %43 = load i8, ptr %40, align 1
  %44 = zext i8 %43 to i32
  %45 = mul i32 %44, 374761393
  %46 = add i32 %45, %39
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 11)
  %48 = mul i32 %47, -1640531535
  %49 = getelementptr i8, ptr %0, i64 29
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = mul i32 %51, 374761393
  %53 = add i32 %52, %48
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 11)
  %55 = mul i32 %54, -1640531535
  %56 = getelementptr i8, ptr %0, i64 30
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = mul i32 %58, 374761393
  %60 = add i32 %59, %55
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 11)
  %62 = mul i32 %61, -1640531535
  br label %63

63:                                               ; preds = %42, %30
  %64 = phi i32 [ %39, %30 ], [ %62, %42 ]
  %65 = lshr i32 %64, 15
  %66 = xor i32 %65, %64
  %67 = mul i32 %66, -2048144777
  %68 = lshr i32 %67, 13
  %69 = xor i32 %68, %67
  %70 = mul i32 %69, -1028477379
  %71 = lshr i32 %70, 16
  %72 = xor i32 %71, %70
  ret i32 %72
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_8(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 8
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %33 = load i32, ptr %5, align 1
  %34 = load i32, ptr %32, align 1
  %35 = mul i32 %34, -1028477379
  %36 = mul i32 %33, -1028477379
  %37 = add i32 %31, %30
  %38 = add i32 %36, %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 17)
  %40 = mul i32 %39, 668265263
  %41 = add i32 %35, %40
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %43 = mul i32 %42, 668265263
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_8(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 8
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %33 = load i32, ptr %5, align 1
  %34 = load i32, ptr %32, align 1
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = mul i32 %35, -1028477379
  %37 = tail call noundef i32 @llvm.bswap.i32(i32 %33)
  %38 = mul i32 %37, -1028477379
  %39 = add i32 %31, %30
  %40 = add i32 %38, %39
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 17)
  %42 = mul i32 %41, 668265263
  %43 = add i32 %36, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %45 = mul i32 %44, 668265263
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_9(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 9
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %9, %25
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %32 = load i32, ptr %31, align 1
  %33 = mul i32 %32, -1028477379
  %34 = load i32, ptr %5, align 1
  %35 = mul i32 %34, -1028477379
  %36 = load i32, ptr %0, align 4
  %37 = add i32 %36, %30
  %38 = add i32 %35, %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 17)
  %40 = mul i32 %39, 668265263
  %41 = add i32 %33, %40
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %43 = mul i32 %42, 668265263
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = mul i32 %46, 374761393
  %48 = add i32 %47, %43
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_9(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 9
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %9, %25
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %32 = load i32, ptr %31, align 1
  %33 = tail call noundef i32 @llvm.bswap.i32(i32 %32)
  %34 = mul i32 %33, -1028477379
  %35 = load i32, ptr %5, align 1
  %36 = tail call noundef i32 @llvm.bswap.i32(i32 %35)
  %37 = mul i32 %36, -1028477379
  %38 = load i32, ptr %0, align 4
  %39 = add i32 %38, %30
  %40 = add i32 %37, %39
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 17)
  %42 = mul i32 %41, 668265263
  %43 = add i32 %34, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %45 = mul i32 %44, 668265263
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, 374761393
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_10(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 10
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = add i32 %31, %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %34 = load i32, ptr %5, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %32
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i32, ptr %33, align 1
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %40, %38
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %43 = mul i32 %42, 668265263
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = mul i32 %46, 374761393
  %48 = add i32 %47, %43
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 11)
  %50 = mul i32 %49, -1640531535
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = mul i32 %53, 374761393
  %55 = add i32 %54, %50
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 11)
  %57 = mul i32 %56, -1640531535
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_10(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 10
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = add i32 %31, %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %34 = load i32, ptr %5, align 1
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %36, %32
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i32, ptr %33, align 1
  %41 = tail call noundef i32 @llvm.bswap.i32(i32 %40)
  %42 = mul i32 %41, -1028477379
  %43 = add i32 %42, %39
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %45 = mul i32 %44, 668265263
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, 374761393
  %50 = add i32 %49, %45
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11)
  %52 = mul i32 %51, -1640531535
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %56, %52
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_11(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 11
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = add i32 %31, %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %34 = load i32, ptr %5, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %32
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i32, ptr %33, align 1
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %40, %38
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %43 = mul i32 %42, 668265263
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = mul i32 %46, 374761393
  %48 = add i32 %47, %43
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 11)
  %50 = mul i32 %49, -1640531535
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = mul i32 %53, 374761393
  %55 = add i32 %54, %50
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 11)
  %57 = mul i32 %56, -1640531535
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 34
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = mul i32 %60, 374761393
  %62 = add i32 %61, %57
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 11)
  %64 = mul i32 %63, -1640531535
  %65 = lshr i32 %64, 15
  %66 = xor i32 %65, %64
  %67 = mul i32 %66, -2048144777
  %68 = lshr i32 %67, 13
  %69 = xor i32 %68, %67
  %70 = mul i32 %69, -1028477379
  %71 = lshr i32 %70, 16
  %72 = xor i32 %71, %70
  ret i32 %72
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_11(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 11
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = add i32 %31, %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %34 = load i32, ptr %5, align 1
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %36, %32
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i32, ptr %33, align 1
  %41 = tail call noundef i32 @llvm.bswap.i32(i32 %40)
  %42 = mul i32 %41, -1028477379
  %43 = add i32 %42, %39
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %45 = mul i32 %44, 668265263
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, 374761393
  %50 = add i32 %49, %45
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11)
  %52 = mul i32 %51, -1640531535
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %56, %52
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11)
  %59 = mul i32 %58, -1640531535
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 34
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 374761393
  %64 = add i32 %63, %59
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_12(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 12
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = load i32, ptr %10, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %13
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %33 = load i32, ptr %5, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %35 = load i32, ptr %32, align 1
  %36 = load i32, ptr %34, align 1
  %37 = mul i32 %36, -1028477379
  %38 = mul i32 %35, -1028477379
  %39 = mul i32 %33, -1028477379
  %40 = add i32 %31, %30
  %41 = add i32 %39, %40
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %43 = mul i32 %42, 668265263
  %44 = add i32 %38, %43
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = add i32 %37, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %49 = mul i32 %48, 668265263
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_12(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 12
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = load i32, ptr %10, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %13
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %33 = load i32, ptr %5, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %35 = load i32, ptr %32, align 1
  %36 = load i32, ptr %34, align 1
  %37 = tail call noundef i32 @llvm.bswap.i32(i32 %36)
  %38 = mul i32 %37, -1028477379
  %39 = tail call noundef i32 @llvm.bswap.i32(i32 %35)
  %40 = mul i32 %39, -1028477379
  %41 = tail call noundef i32 @llvm.bswap.i32(i32 %33)
  %42 = mul i32 %41, -1028477379
  %43 = add i32 %31, %30
  %44 = add i32 %42, %43
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = add i32 %40, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %49 = mul i32 %48, 668265263
  %50 = add i32 %38, %49
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 17)
  %52 = mul i32 %51, 668265263
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_13(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 13
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %9, %25
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %32 = load i32, ptr %31, align 1
  %33 = mul i32 %32, -1028477379
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %35 = load i32, ptr %34, align 1
  %36 = mul i32 %35, -1028477379
  %37 = load i32, ptr %5, align 1
  %38 = mul i32 %37, -1028477379
  %39 = load i32, ptr %0, align 4
  %40 = add i32 %39, %30
  %41 = add i32 %38, %40
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %43 = mul i32 %42, 668265263
  %44 = add i32 %36, %43
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = add i32 %33, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %49 = mul i32 %48, 668265263
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = mul i32 %52, 374761393
  %54 = add i32 %53, %49
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_13(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 13
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %9, %25
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %32 = load i32, ptr %31, align 1
  %33 = tail call noundef i32 @llvm.bswap.i32(i32 %32)
  %34 = mul i32 %33, -1028477379
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %36 = load i32, ptr %35, align 1
  %37 = tail call noundef i32 @llvm.bswap.i32(i32 %36)
  %38 = mul i32 %37, -1028477379
  %39 = load i32, ptr %5, align 1
  %40 = tail call noundef i32 @llvm.bswap.i32(i32 %39)
  %41 = mul i32 %40, -1028477379
  %42 = load i32, ptr %0, align 4
  %43 = add i32 %42, %30
  %44 = add i32 %41, %43
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = add i32 %38, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %49 = mul i32 %48, 668265263
  %50 = add i32 %34, %49
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 17)
  %52 = mul i32 %51, 668265263
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %56, %52
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_14(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 14
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = add i32 %31, %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %34 = load i32, ptr %5, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %32
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %40 = load i32, ptr %33, align 1
  %41 = mul i32 %40, -1028477379
  %42 = add i32 %41, %38
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 17)
  %44 = mul i32 %43, 668265263
  %45 = load i32, ptr %39, align 1
  %46 = mul i32 %45, -1028477379
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %49 = mul i32 %48, 668265263
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = mul i32 %52, 374761393
  %54 = add i32 %53, %49
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 11)
  %56 = mul i32 %55, -1640531535
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 37
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = mul i32 %59, 374761393
  %61 = add i32 %60, %56
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_14(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 14
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = add i32 %31, %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %34 = load i32, ptr %5, align 1
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %36, %32
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %41 = load i32, ptr %33, align 1
  %42 = tail call noundef i32 @llvm.bswap.i32(i32 %41)
  %43 = mul i32 %42, -1028477379
  %44 = add i32 %43, %39
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = load i32, ptr %40, align 1
  %48 = tail call noundef i32 @llvm.bswap.i32(i32 %47)
  %49 = mul i32 %48, -1028477379
  %50 = add i32 %49, %46
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 17)
  %52 = mul i32 %51, 668265263
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %56, %52
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11)
  %59 = mul i32 %58, -1640531535
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 37
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 374761393
  %64 = add i32 %63, %59
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_15(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 15
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = add i32 %31, %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %34 = load i32, ptr %5, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %32
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %40 = load i32, ptr %33, align 1
  %41 = mul i32 %40, -1028477379
  %42 = add i32 %41, %38
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 17)
  %44 = mul i32 %43, 668265263
  %45 = load i32, ptr %39, align 1
  %46 = mul i32 %45, -1028477379
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %49 = mul i32 %48, 668265263
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = mul i32 %52, 374761393
  %54 = add i32 %53, %49
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 11)
  %56 = mul i32 %55, -1640531535
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 37
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = mul i32 %59, 374761393
  %61 = add i32 %60, %56
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 11)
  %63 = mul i32 %62, -1640531535
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 38
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = mul i32 %66, 374761393
  %68 = add i32 %67, %63
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_15(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 15
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 7)
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 12)
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 18)
  %24 = add i32 %20, %23
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 374761393
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %24, %9 ], [ %28, %25 ]
  %31 = load i32, ptr %0, align 4
  %32 = add i32 %31, %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %34 = load i32, ptr %5, align 1
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %36, %32
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %41 = load i32, ptr %33, align 1
  %42 = tail call noundef i32 @llvm.bswap.i32(i32 %41)
  %43 = mul i32 %42, -1028477379
  %44 = add i32 %43, %39
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = load i32, ptr %40, align 1
  %48 = tail call noundef i32 @llvm.bswap.i32(i32 %47)
  %49 = mul i32 %48, -1028477379
  %50 = add i32 %49, %46
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 17)
  %52 = mul i32 %51, 668265263
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %56, %52
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11)
  %59 = mul i32 %58, -1640531535
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 37
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 374761393
  %64 = add i32 %63, %59
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 11)
  %66 = mul i32 %65, -1640531535
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 38
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = mul i32 %69, 374761393
  %71 = add i32 %70, %66
  %72 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 11)
  %73 = mul i32 %72, -1640531535
  %74 = lshr i32 %73, 15
  %75 = xor i32 %74, %73
  %76 = mul i32 %75, -2048144777
  %77 = lshr i32 %76, 13
  %78 = xor i32 %77, %76
  %79 = mul i32 %78, -1028477379
  %80 = lshr i32 %79, 16
  %81 = xor i32 %80, %79
  ret i32 %81
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
