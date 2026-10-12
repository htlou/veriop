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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = mul i32 %34, 374761393
  %36 = add i32 %31, %35
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = mul i32 %34, 374761393
  %36 = add i32 %31, %35
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

28:                                               ; preds = %24, %8
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = mul i32 %34, 374761393
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 11)
  %39 = mul i32 %38, -1640531535
  %40 = load i8, ptr %37, align 1
  %41 = zext i8 %40 to i32
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

28:                                               ; preds = %24, %8
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = mul i32 %34, 374761393
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 11)
  %39 = mul i32 %38, -1640531535
  %40 = load i8, ptr %37, align 1
  %41 = zext i8 %40 to i32
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = mul i32 %34, 374761393
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 11)
  %39 = mul i32 %38, -1640531535
  %40 = load i8, ptr %37, align 1
  %41 = zext i8 %40 to i32
  %42 = mul i32 %41, 374761393
  %43 = add i32 %39, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 11)
  %46 = mul i32 %45, -1640531535
  %47 = load i8, ptr %44, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, 374761393
  %50 = add i32 %46, %49
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = mul i32 %34, 374761393
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 11)
  %39 = mul i32 %38, -1640531535
  %40 = load i8, ptr %37, align 1
  %41 = zext i8 %40 to i32
  %42 = mul i32 %41, 374761393
  %43 = add i32 %39, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 11)
  %46 = mul i32 %45, -1640531535
  %47 = load i8, ptr %44, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, 374761393
  %50 = add i32 %46, %49
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
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
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
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i8, ptr %36, align 1
  %40 = zext i8 %39 to i32
  %41 = mul i32 %40, 374761393
  %42 = add i32 %38, %41
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_5(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 5
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i8, ptr %37, align 1
  %41 = zext i8 %40 to i32
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_6(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 6
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i8, ptr %36, align 1
  %40 = zext i8 %39 to i32
  %41 = mul i32 %40, 374761393
  %42 = add i32 %38, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %44 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 11)
  %45 = mul i32 %44, -1640531535
  %46 = load i8, ptr %43, align 1
  %47 = zext i8 %46 to i32
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_6(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 6
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i8, ptr %37, align 1
  %41 = zext i8 %40 to i32
  %42 = mul i32 %41, 374761393
  %43 = add i32 %39, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 11)
  %46 = mul i32 %45, -1640531535
  %47 = load i8, ptr %44, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, 374761393
  %50 = add i32 %46, %49
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
define dso_local i32 @target_le_7(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i8, ptr %36, align 1
  %40 = zext i8 %39 to i32
  %41 = mul i32 %40, 374761393
  %42 = add i32 %38, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %44 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 11)
  %45 = mul i32 %44, -1640531535
  %46 = load i8, ptr %43, align 1
  %47 = zext i8 %46 to i32
  %48 = mul i32 %47, 374761393
  %49 = add i32 %45, %48
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %51 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 11)
  %52 = mul i32 %51, -1640531535
  %53 = load i8, ptr %50, align 1
  %54 = zext i8 %53 to i32
  %55 = mul i32 %54, 374761393
  %56 = add i32 %52, %55
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_7(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i8, ptr %37, align 1
  %41 = zext i8 %40 to i32
  %42 = mul i32 %41, 374761393
  %43 = add i32 %39, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 11)
  %46 = mul i32 %45, -1640531535
  %47 = load i8, ptr %44, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, 374761393
  %50 = add i32 %46, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11)
  %53 = mul i32 %52, -1640531535
  %54 = load i8, ptr %51, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %53, %56
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_8(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 8
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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i32, ptr %36, align 4
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %38, %40
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_8(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 8
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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i32, ptr %37, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = mul i32 %41, -1028477379
  %43 = add i32 %39, %42
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_9(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 9
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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i32, ptr %36, align 4
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %38, %40
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %44 = mul i32 %43, 668265263
  %45 = load i8, ptr %42, align 1
  %46 = zext i8 %45 to i32
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_9(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 9
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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i32, ptr %37, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = mul i32 %41, -1028477379
  %43 = add i32 %39, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = load i8, ptr %44, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, 374761393
  %50 = add i32 %46, %49
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
define dso_local i32 @target_le_10(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 10
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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i32, ptr %36, align 4
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %38, %40
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %44 = mul i32 %43, 668265263
  %45 = load i8, ptr %42, align 1
  %46 = zext i8 %45 to i32
  %47 = mul i32 %46, 374761393
  %48 = add i32 %44, %47
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %50 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 11)
  %51 = mul i32 %50, -1640531535
  %52 = load i8, ptr %49, align 1
  %53 = zext i8 %52 to i32
  %54 = mul i32 %53, 374761393
  %55 = add i32 %51, %54
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_10(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 10
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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i32, ptr %37, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = mul i32 %41, -1028477379
  %43 = add i32 %39, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = load i8, ptr %44, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, 374761393
  %50 = add i32 %46, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11)
  %53 = mul i32 %52, -1640531535
  %54 = load i8, ptr %51, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %53, %56
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_11(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 11
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i32, ptr %36, align 4
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %38, %40
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %44 = mul i32 %43, 668265263
  %45 = load i8, ptr %42, align 1
  %46 = zext i8 %45 to i32
  %47 = mul i32 %46, 374761393
  %48 = add i32 %44, %47
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %50 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 11)
  %51 = mul i32 %50, -1640531535
  %52 = load i8, ptr %49, align 1
  %53 = zext i8 %52 to i32
  %54 = mul i32 %53, 374761393
  %55 = add i32 %51, %54
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 34
  %57 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 11)
  %58 = mul i32 %57, -1640531535
  %59 = load i8, ptr %56, align 1
  %60 = zext i8 %59 to i32
  %61 = mul i32 %60, 374761393
  %62 = add i32 %58, %61
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_11(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 11
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i32, ptr %37, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = mul i32 %41, -1028477379
  %43 = add i32 %39, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = load i8, ptr %44, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, 374761393
  %50 = add i32 %46, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11)
  %53 = mul i32 %52, -1640531535
  %54 = load i8, ptr %51, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %53, %56
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 34
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11)
  %60 = mul i32 %59, -1640531535
  %61 = load i8, ptr %58, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 374761393
  %64 = add i32 %60, %63
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_12(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 12
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i32, ptr %36, align 4
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %38, %40
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %44 = mul i32 %43, 668265263
  %45 = load i32, ptr %42, align 4
  %46 = mul i32 %45, -1028477379
  %47 = add i32 %44, %46
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_12(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 12
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i32, ptr %37, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = mul i32 %41, -1028477379
  %43 = add i32 %39, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = load i32, ptr %44, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %49 = mul i32 %48, -1028477379
  %50 = add i32 %46, %49
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_13(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 13
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i32, ptr %36, align 4
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %38, %40
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %44 = mul i32 %43, 668265263
  %45 = load i32, ptr %42, align 4
  %46 = mul i32 %45, -1028477379
  %47 = add i32 %44, %46
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %49 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %50 = mul i32 %49, 668265263
  %51 = load i8, ptr %48, align 1
  %52 = zext i8 %51 to i32
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_13(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 13
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i32, ptr %37, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = mul i32 %41, -1028477379
  %43 = add i32 %39, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = load i32, ptr %44, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %49 = mul i32 %48, -1028477379
  %50 = add i32 %46, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 17)
  %53 = mul i32 %52, 668265263
  %54 = load i8, ptr %51, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %53, %56
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_14(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 14
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i32, ptr %36, align 4
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %38, %40
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %44 = mul i32 %43, 668265263
  %45 = load i32, ptr %42, align 4
  %46 = mul i32 %45, -1028477379
  %47 = add i32 %44, %46
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %49 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %50 = mul i32 %49, 668265263
  %51 = load i8, ptr %48, align 1
  %52 = zext i8 %51 to i32
  %53 = mul i32 %52, 374761393
  %54 = add i32 %50, %53
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 37
  %56 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 11)
  %57 = mul i32 %56, -1640531535
  %58 = load i8, ptr %55, align 1
  %59 = zext i8 %58 to i32
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_14(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 14
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i32, ptr %37, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = mul i32 %41, -1028477379
  %43 = add i32 %39, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = load i32, ptr %44, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %49 = mul i32 %48, -1028477379
  %50 = add i32 %46, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 17)
  %53 = mul i32 %52, 668265263
  %54 = load i8, ptr %51, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %53, %56
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 37
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11)
  %60 = mul i32 %59, -1640531535
  %61 = load i8, ptr %58, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 374761393
  %64 = add i32 %60, %63
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_15(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 15
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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %38 = mul i32 %37, 668265263
  %39 = load i32, ptr %36, align 4
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %38, %40
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %44 = mul i32 %43, 668265263
  %45 = load i32, ptr %42, align 4
  %46 = mul i32 %45, -1028477379
  %47 = add i32 %44, %46
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %49 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %50 = mul i32 %49, 668265263
  %51 = load i8, ptr %48, align 1
  %52 = zext i8 %51 to i32
  %53 = mul i32 %52, 374761393
  %54 = add i32 %50, %53
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 37
  %56 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 11)
  %57 = mul i32 %56, -1640531535
  %58 = load i8, ptr %55, align 1
  %59 = zext i8 %58 to i32
  %60 = mul i32 %59, 374761393
  %61 = add i32 %57, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 38
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 11)
  %64 = mul i32 %63, -1640531535
  %65 = load i8, ptr %62, align 1
  %66 = zext i8 %65 to i32
  %67 = mul i32 %66, 374761393
  %68 = add i32 %64, %67
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_be_15(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 15
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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  %40 = load i32, ptr %37, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = mul i32 %41, -1028477379
  %43 = add i32 %39, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = load i32, ptr %44, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %49 = mul i32 %48, -1028477379
  %50 = add i32 %46, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 17)
  %53 = mul i32 %52, 668265263
  %54 = load i8, ptr %51, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %53, %56
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 37
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11)
  %60 = mul i32 %59, -1640531535
  %61 = load i8, ptr %58, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 374761393
  %64 = add i32 %60, %63
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 38
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 11)
  %67 = mul i32 %66, -1640531535
  %68 = load i8, ptr %65, align 1
  %69 = zext i8 %68 to i32
  %70 = mul i32 %69, 374761393
  %71 = add i32 %67, %70
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
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

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
