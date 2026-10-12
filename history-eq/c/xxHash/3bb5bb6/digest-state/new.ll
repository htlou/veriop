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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 0, i32 noundef 1)
  ret i32 %33
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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 0, i32 noundef 0)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 1, i32 noundef 1)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 1, i32 noundef 0)
  ret i32 %33
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 2, i32 noundef 1)
  ret i32 %33
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
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 2, i32 noundef 0)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 3, i32 noundef 1)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 3, i32 noundef 0)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 4, i32 noundef 1)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 4, i32 noundef 0)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 5, i32 noundef 1)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 5, i32 noundef 0)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 6, i32 noundef 1)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 6, i32 noundef 0)
  ret i32 %33
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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 7, i32 noundef 1)
  ret i32 %33
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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 7, i32 noundef 0)
  ret i32 %33
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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 8, i32 noundef 1)
  ret i32 %33
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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 8, i32 noundef 0)
  ret i32 %33
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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 9, i32 noundef 1)
  ret i32 %33
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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 9, i32 noundef 0)
  ret i32 %33
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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 10, i32 noundef 1)
  ret i32 %33
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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 10, i32 noundef 0)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 11, i32 noundef 1)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 11, i32 noundef 0)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 12, i32 noundef 1)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 12, i32 noundef 0)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 13, i32 noundef 1)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 13, i32 noundef 0)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 14, i32 noundef 1)
  ret i32 %33
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
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 14, i32 noundef 0)
  ret i32 %33
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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 15, i32 noundef 1)
  ret i32 %33
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

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %23, %8 ], [ %27, %24 ]
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %31, ptr noundef nonnull %32, i64 noundef 15, i32 noundef 0)
  ret i32 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @XXH32_finalize(i32 noundef %0, ptr noundef readonly %1, i64 noundef range(i64 0, 4294967296) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
  %5 = and i64 %2, 15
  switch i64 %5, label %189 [
    i64 12, label %6
    i64 8, label %16
    i64 4, label %28
    i64 13, label %39
    i64 9, label %49
    i64 5, label %61
    i64 14, label %79
    i64 10, label %89
    i64 6, label %101
    i64 15, label %126
    i64 11, label %136
    i64 7, label %148
    i64 3, label %160
    i64 2, label %170
    i64 1, label %180
    i64 0, label %190
  ]

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  %8 = load i32, ptr %1, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = select i1 %7, i32 %9, i32 %8
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, %0
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  br label %16

16:                                               ; preds = %4, %6
  %17 = phi i32 [ %0, %4 ], [ %15, %6 ]
  %18 = phi ptr [ %1, %4 ], [ %13, %6 ]
  %19 = icmp eq i32 %3, 0
  %20 = load i32, ptr %18, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = select i1 %19, i32 %21, i32 %20
  %23 = mul i32 %22, -1028477379
  %24 = add i32 %23, %17
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %26 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 17)
  %27 = mul i32 %26, 668265263
  br label %28

28:                                               ; preds = %4, %16
  %29 = phi i32 [ %0, %4 ], [ %27, %16 ]
  %30 = phi ptr [ %1, %4 ], [ %25, %16 ]
  %31 = icmp eq i32 %3, 0
  %32 = load i32, ptr %30, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = select i1 %31, i32 %33, i32 %32
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %29
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %38 = mul i32 %37, 668265263
  br label %190

39:                                               ; preds = %4
  %40 = icmp eq i32 %3, 0
  %41 = load i32, ptr %1, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = select i1 %40, i32 %42, i32 %41
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %0
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %47 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %48 = mul i32 %47, 668265263
  br label %49

49:                                               ; preds = %4, %39
  %50 = phi i32 [ %0, %4 ], [ %48, %39 ]
  %51 = phi ptr [ %1, %4 ], [ %46, %39 ]
  %52 = icmp eq i32 %3, 0
  %53 = load i32, ptr %51, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = select i1 %52, i32 %54, i32 %53
  %56 = mul i32 %55, -1028477379
  %57 = add i32 %56, %50
  %58 = getelementptr inbounds nuw i8, ptr %51, i64 4
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 17)
  %60 = mul i32 %59, 668265263
  br label %61

61:                                               ; preds = %4, %49
  %62 = phi i32 [ %0, %4 ], [ %60, %49 ]
  %63 = phi ptr [ %1, %4 ], [ %58, %49 ]
  %64 = icmp eq i32 %3, 0
  %65 = load i32, ptr %63, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = select i1 %64, i32 %66, i32 %65
  %68 = mul i32 %67, -1028477379
  %69 = add i32 %68, %62
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %71 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 17)
  %72 = mul i32 %71, 668265263
  %73 = load i8, ptr %70, align 1
  %74 = zext i8 %73 to i32
  %75 = mul i32 %74, 374761393
  %76 = add i32 %72, %75
  %77 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 11)
  %78 = mul i32 %77, -1640531535
  br label %190

79:                                               ; preds = %4
  %80 = icmp eq i32 %3, 0
  %81 = load i32, ptr %1, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %83 = select i1 %80, i32 %82, i32 %81
  %84 = mul i32 %83, -1028477379
  %85 = add i32 %84, %0
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 17)
  %88 = mul i32 %87, 668265263
  br label %89

89:                                               ; preds = %4, %79
  %90 = phi i32 [ %0, %4 ], [ %88, %79 ]
  %91 = phi ptr [ %1, %4 ], [ %86, %79 ]
  %92 = icmp eq i32 %3, 0
  %93 = load i32, ptr %91, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %95 = select i1 %92, i32 %94, i32 %93
  %96 = mul i32 %95, -1028477379
  %97 = add i32 %96, %90
  %98 = getelementptr inbounds nuw i8, ptr %91, i64 4
  %99 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 17)
  %100 = mul i32 %99, 668265263
  br label %101

101:                                              ; preds = %4, %89
  %102 = phi i32 [ %0, %4 ], [ %100, %89 ]
  %103 = phi ptr [ %1, %4 ], [ %98, %89 ]
  %104 = icmp eq i32 %3, 0
  %105 = load i32, ptr %103, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %107 = select i1 %104, i32 %106, i32 %105
  %108 = mul i32 %107, -1028477379
  %109 = add i32 %108, %102
  %110 = getelementptr inbounds nuw i8, ptr %103, i64 4
  %111 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 17)
  %112 = mul i32 %111, 668265263
  %113 = load i8, ptr %110, align 1
  %114 = zext i8 %113 to i32
  %115 = mul i32 %114, 374761393
  %116 = add i32 %112, %115
  %117 = getelementptr inbounds nuw i8, ptr %103, i64 5
  %118 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 11)
  %119 = mul i32 %118, -1640531535
  %120 = load i8, ptr %117, align 1
  %121 = zext i8 %120 to i32
  %122 = mul i32 %121, 374761393
  %123 = add i32 %119, %122
  %124 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 11)
  %125 = mul i32 %124, -1640531535
  br label %190

126:                                              ; preds = %4
  %127 = icmp eq i32 %3, 0
  %128 = load i32, ptr %1, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128)
  %130 = select i1 %127, i32 %129, i32 %128
  %131 = mul i32 %130, -1028477379
  %132 = add i32 %131, %0
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %134 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 17)
  %135 = mul i32 %134, 668265263
  br label %136

136:                                              ; preds = %4, %126
  %137 = phi i32 [ %0, %4 ], [ %135, %126 ]
  %138 = phi ptr [ %1, %4 ], [ %133, %126 ]
  %139 = icmp eq i32 %3, 0
  %140 = load i32, ptr %138, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140)
  %142 = select i1 %139, i32 %141, i32 %140
  %143 = mul i32 %142, -1028477379
  %144 = add i32 %143, %137
  %145 = getelementptr inbounds nuw i8, ptr %138, i64 4
  %146 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 17)
  %147 = mul i32 %146, 668265263
  br label %148

148:                                              ; preds = %4, %136
  %149 = phi i32 [ %0, %4 ], [ %147, %136 ]
  %150 = phi ptr [ %1, %4 ], [ %145, %136 ]
  %151 = icmp eq i32 %3, 0
  %152 = load i32, ptr %150, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  %154 = select i1 %151, i32 %153, i32 %152
  %155 = mul i32 %154, -1028477379
  %156 = add i32 %155, %149
  %157 = getelementptr inbounds nuw i8, ptr %150, i64 4
  %158 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 17)
  %159 = mul i32 %158, 668265263
  br label %160

160:                                              ; preds = %4, %148
  %161 = phi i32 [ %0, %4 ], [ %159, %148 ]
  %162 = phi ptr [ %1, %4 ], [ %157, %148 ]
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = mul i32 %164, 374761393
  %166 = add i32 %165, %161
  %167 = getelementptr inbounds nuw i8, ptr %162, i64 1
  %168 = tail call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 11)
  %169 = mul i32 %168, -1640531535
  br label %170

170:                                              ; preds = %4, %160
  %171 = phi i32 [ %0, %4 ], [ %169, %160 ]
  %172 = phi ptr [ %1, %4 ], [ %167, %160 ]
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = mul i32 %174, 374761393
  %176 = add i32 %175, %171
  %177 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %178 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 11)
  %179 = mul i32 %178, -1640531535
  br label %180

180:                                              ; preds = %4, %170
  %181 = phi i32 [ %0, %4 ], [ %179, %170 ]
  %182 = phi ptr [ %1, %4 ], [ %177, %170 ]
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = mul i32 %184, 374761393
  %186 = add i32 %185, %181
  %187 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 11)
  %188 = mul i32 %187, -1640531535
  br label %190

189:                                              ; preds = %4
  unreachable

190:                                              ; preds = %180, %4, %101, %61, %28
  %191 = phi i32 [ %125, %101 ], [ %78, %61 ], [ %38, %28 ], [ %0, %4 ], [ %188, %180 ]
  %192 = lshr i32 %191, 15
  %193 = xor i32 %192, %191
  %194 = mul i32 %193, -2048144777
  %195 = lshr i32 %194, 13
  %196 = xor i32 %195, %194
  %197 = mul i32 %196, -1028477379
  %198 = lshr i32 %197, 16
  %199 = xor i32 %198, %197
  ret i32 %199
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
