; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e876423/wrap_finalize_residues.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e876423/wrap_finalize_residues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_unaligned_0(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = lshr i64 %0, 33
  %4 = xor i64 %3, %0
  %5 = mul i64 %4, -4417276706812531889
  %6 = lshr i64 %5, 29
  %7 = xor i64 %6, %5
  %8 = mul i64 %7, 1609587929392839161
  %9 = lshr i64 %8, 32
  %10 = xor i64 %9, %8
  ret i64 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_0(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = lshr i64 %0, 33
  %7 = xor i64 %6, %0
  %8 = mul i64 %7, -4417276706812531889
  %9 = lshr i64 %8, 29
  %10 = xor i64 %9, %8
  %11 = mul i64 %10, 1609587929392839161
  %12 = lshr i64 %11, 32
  %13 = xor i64 %12, %11
  ret i64 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_1(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i64
  %6 = mul i64 %5, 2870177450012600261
  %7 = xor i64 %6, %0
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 11)
  %9 = mul i64 %8, -7046029288634856825
  %10 = lshr i64 %9, 33
  %11 = xor i64 %10, %9
  %12 = mul i64 %11, -4417276706812531889
  %13 = lshr i64 %12, 29
  %14 = xor i64 %13, %12
  %15 = mul i64 %14, 1609587929392839161
  %16 = lshr i64 %15, 32
  %17 = xor i64 %16, %15
  ret i64 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_1(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i8, ptr %1, align 8
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = xor i64 %9, %0
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 11)
  %12 = mul i64 %11, -7046029288634856825
  %13 = lshr i64 %12, 33
  %14 = xor i64 %13, %12
  %15 = mul i64 %14, -4417276706812531889
  %16 = lshr i64 %15, 29
  %17 = xor i64 %16, %15
  %18 = mul i64 %17, 1609587929392839161
  %19 = lshr i64 %18, 32
  %20 = xor i64 %19, %18
  ret i64 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_2(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %5 = load i8, ptr %1, align 1
  %6 = zext i8 %5 to i64
  %7 = mul i64 %6, 2870177450012600261
  %8 = xor i64 %7, %0
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 11)
  %10 = mul i64 %9, -7046029288634856825
  %11 = load i8, ptr %4, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = xor i64 %13, %10
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 11)
  %16 = mul i64 %15, -7046029288634856825
  %17 = lshr i64 %16, 33
  %18 = xor i64 %17, %16
  %19 = mul i64 %18, -4417276706812531889
  %20 = lshr i64 %19, 29
  %21 = xor i64 %20, %19
  %22 = mul i64 %21, 1609587929392839161
  %23 = lshr i64 %22, 32
  %24 = xor i64 %23, %22
  ret i64 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_2(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %8 = load i8, ptr %1, align 8
  %9 = zext i8 %8 to i64
  %10 = mul i64 %9, 2870177450012600261
  %11 = xor i64 %10, %0
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 11)
  %13 = mul i64 %12, -7046029288634856825
  %14 = load i8, ptr %7, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = xor i64 %16, %13
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 11)
  %19 = mul i64 %18, -7046029288634856825
  %20 = lshr i64 %19, 33
  %21 = xor i64 %20, %19
  %22 = mul i64 %21, -4417276706812531889
  %23 = lshr i64 %22, 29
  %24 = xor i64 %23, %22
  %25 = mul i64 %24, 1609587929392839161
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %25
  ret i64 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_3(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %5 = load i8, ptr %1, align 1
  %6 = zext i8 %5 to i64
  %7 = mul i64 %6, 2870177450012600261
  %8 = xor i64 %7, %0
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 11)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %12 = load i8, ptr %4, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = xor i64 %14, %10
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 11)
  %17 = mul i64 %16, -7046029288634856825
  %18 = load i8, ptr %11, align 1
  %19 = zext i8 %18 to i64
  %20 = mul i64 %19, 2870177450012600261
  %21 = xor i64 %20, %17
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 11)
  %23 = mul i64 %22, -7046029288634856825
  %24 = lshr i64 %23, 33
  %25 = xor i64 %24, %23
  %26 = mul i64 %25, -4417276706812531889
  %27 = lshr i64 %26, 29
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587929392839161
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  ret i64 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_3(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %8 = load i8, ptr %1, align 8
  %9 = zext i8 %8 to i64
  %10 = mul i64 %9, 2870177450012600261
  %11 = xor i64 %10, %0
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 11)
  %13 = mul i64 %12, -7046029288634856825
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %15 = load i8, ptr %7, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = xor i64 %17, %13
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 11)
  %20 = mul i64 %19, -7046029288634856825
  %21 = load i8, ptr %14, align 2
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = xor i64 %23, %20
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 11)
  %26 = mul i64 %25, -7046029288634856825
  %27 = lshr i64 %26, 33
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, -4417276706812531889
  %30 = lshr i64 %29, 29
  %31 = xor i64 %30, %29
  %32 = mul i64 %31, 1609587929392839161
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  ret i64 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_4(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i32, ptr %1, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = xor i64 %6, %0
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 23)
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %9, 1609587929392839161
  %11 = lshr i64 %10, 33
  %12 = xor i64 %11, %10
  %13 = mul i64 %12, -4417276706812531889
  %14 = lshr i64 %13, 29
  %15 = xor i64 %14, %13
  %16 = mul i64 %15, 1609587929392839161
  %17 = lshr i64 %16, 32
  %18 = xor i64 %17, %16
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_4(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i32, ptr %1, align 8
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, -7046029288634856825
  %10 = xor i64 %9, %0
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 23)
  %12 = mul i64 %11, -4417276706812531889
  %13 = add i64 %12, 1609587929392839161
  %14 = lshr i64 %13, 33
  %15 = xor i64 %14, %13
  %16 = mul i64 %15, -4417276706812531889
  %17 = lshr i64 %16, 29
  %18 = xor i64 %17, %16
  %19 = mul i64 %18, 1609587929392839161
  %20 = lshr i64 %19, 32
  %21 = xor i64 %20, %19
  ret i64 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_5(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i32, ptr %1, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = xor i64 %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %9 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 23)
  %10 = mul i64 %9, -4417276706812531889
  %11 = add i64 %10, 1609587929392839161
  %12 = load i8, ptr %8, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = xor i64 %14, %11
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 11)
  %17 = mul i64 %16, -7046029288634856825
  %18 = lshr i64 %17, 33
  %19 = xor i64 %18, %17
  %20 = mul i64 %19, -4417276706812531889
  %21 = lshr i64 %20, 29
  %22 = xor i64 %21, %20
  %23 = mul i64 %22, 1609587929392839161
  %24 = lshr i64 %23, 32
  %25 = xor i64 %24, %23
  ret i64 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_5(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i32, ptr %1, align 8
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, -7046029288634856825
  %10 = xor i64 %9, %0
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %12 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 23)
  %13 = mul i64 %12, -4417276706812531889
  %14 = add i64 %13, 1609587929392839161
  %15 = load i8, ptr %11, align 4
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = xor i64 %17, %14
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 11)
  %20 = mul i64 %19, -7046029288634856825
  %21 = lshr i64 %20, 33
  %22 = xor i64 %21, %20
  %23 = mul i64 %22, -4417276706812531889
  %24 = lshr i64 %23, 29
  %25 = xor i64 %24, %23
  %26 = mul i64 %25, 1609587929392839161
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_6(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i32, ptr %1, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = xor i64 %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %9 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 23)
  %10 = mul i64 %9, -4417276706812531889
  %11 = add i64 %10, 1609587929392839161
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %13 = load i8, ptr %8, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = xor i64 %15, %11
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 11)
  %18 = mul i64 %17, -7046029288634856825
  %19 = load i8, ptr %12, align 1
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = xor i64 %21, %18
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 11)
  %24 = mul i64 %23, -7046029288634856825
  %25 = lshr i64 %24, 33
  %26 = xor i64 %25, %24
  %27 = mul i64 %26, -4417276706812531889
  %28 = lshr i64 %27, 29
  %29 = xor i64 %28, %27
  %30 = mul i64 %29, 1609587929392839161
  %31 = lshr i64 %30, 32
  %32 = xor i64 %31, %30
  ret i64 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_6(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i32, ptr %1, align 8
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, -7046029288634856825
  %10 = xor i64 %9, %0
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %12 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 23)
  %13 = mul i64 %12, -4417276706812531889
  %14 = add i64 %13, 1609587929392839161
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %16 = load i8, ptr %11, align 4
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = xor i64 %18, %14
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 11)
  %21 = mul i64 %20, -7046029288634856825
  %22 = load i8, ptr %15, align 1
  %23 = zext i8 %22 to i64
  %24 = mul i64 %23, 2870177450012600261
  %25 = xor i64 %24, %21
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 11)
  %27 = mul i64 %26, -7046029288634856825
  %28 = lshr i64 %27, 33
  %29 = xor i64 %28, %27
  %30 = mul i64 %29, -4417276706812531889
  %31 = lshr i64 %30, 29
  %32 = xor i64 %31, %30
  %33 = mul i64 %32, 1609587929392839161
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_7(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i32, ptr %1, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = xor i64 %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %9 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 23)
  %10 = mul i64 %9, -4417276706812531889
  %11 = add i64 %10, 1609587929392839161
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %13 = load i8, ptr %8, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = xor i64 %15, %11
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 11)
  %18 = mul i64 %17, -7046029288634856825
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %20 = load i8, ptr %12, align 1
  %21 = zext i8 %20 to i64
  %22 = mul i64 %21, 2870177450012600261
  %23 = xor i64 %22, %18
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 11)
  %25 = mul i64 %24, -7046029288634856825
  %26 = load i8, ptr %19, align 1
  %27 = zext i8 %26 to i64
  %28 = mul i64 %27, 2870177450012600261
  %29 = xor i64 %28, %25
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 11)
  %31 = mul i64 %30, -7046029288634856825
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_7(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i32, ptr %1, align 8
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, -7046029288634856825
  %10 = xor i64 %9, %0
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %12 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 23)
  %13 = mul i64 %12, -4417276706812531889
  %14 = add i64 %13, 1609587929392839161
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %16 = load i8, ptr %11, align 4
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = xor i64 %18, %14
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 11)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %23 = load i8, ptr %15, align 1
  %24 = zext i8 %23 to i64
  %25 = mul i64 %24, 2870177450012600261
  %26 = xor i64 %25, %21
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 11)
  %28 = mul i64 %27, -7046029288634856825
  %29 = load i8, ptr %22, align 2
  %30 = zext i8 %29 to i64
  %31 = mul i64 %30, 2870177450012600261
  %32 = xor i64 %31, %28
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 11)
  %34 = mul i64 %33, -7046029288634856825
  %35 = lshr i64 %34, 33
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, -4417276706812531889
  %38 = lshr i64 %37, 29
  %39 = xor i64 %38, %37
  %40 = mul i64 %39, 1609587929392839161
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  ret i64 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_8(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i64, ptr %1, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = xor i64 %7, %0
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 27)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %10, -8796714831421723037
  %12 = lshr i64 %11, 33
  %13 = xor i64 %12, %11
  %14 = mul i64 %13, -4417276706812531889
  %15 = lshr i64 %14, 29
  %16 = xor i64 %15, %14
  %17 = mul i64 %16, 1609587929392839161
  %18 = lshr i64 %17, 32
  %19 = xor i64 %18, %17
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_8(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i64, ptr %1, align 8
  %8 = mul i64 %7, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = xor i64 %10, %0
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  %15 = lshr i64 %14, 33
  %16 = xor i64 %15, %14
  %17 = mul i64 %16, -4417276706812531889
  %18 = lshr i64 %17, 29
  %19 = xor i64 %18, %17
  %20 = mul i64 %19, 1609587929392839161
  %21 = lshr i64 %20, 32
  %22 = xor i64 %21, %20
  ret i64 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_9(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i64, ptr %1, align 1
  %5 = getelementptr i8, ptr %1, i64 8
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i64
  %8 = mul i64 %7, 2870177450012600261
  %9 = mul i64 %4, -4417276706812531889
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = xor i64 %11, %0
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  %16 = xor i64 %8, %15
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 11)
  %18 = mul i64 %17, -7046029288634856825
  %19 = lshr i64 %18, 33
  %20 = xor i64 %19, %18
  %21 = mul i64 %20, -4417276706812531889
  %22 = lshr i64 %21, 29
  %23 = xor i64 %22, %21
  %24 = mul i64 %23, 1609587929392839161
  %25 = lshr i64 %24, 32
  %26 = xor i64 %25, %24
  ret i64 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_9(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i64, ptr %1, align 8
  %8 = getelementptr i8, ptr %1, i64 8
  %9 = load i8, ptr %8, align 8
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = mul i64 %7, -4417276706812531889
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = xor i64 %14, %0
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 27)
  %17 = mul i64 %16, -7046029288634856825
  %18 = add i64 %17, -8796714831421723037
  %19 = xor i64 %11, %18
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 11)
  %21 = mul i64 %20, -7046029288634856825
  %22 = lshr i64 %21, 33
  %23 = xor i64 %22, %21
  %24 = mul i64 %23, -4417276706812531889
  %25 = lshr i64 %24, 29
  %26 = xor i64 %25, %24
  %27 = mul i64 %26, 1609587929392839161
  %28 = lshr i64 %27, 32
  %29 = xor i64 %28, %27
  ret i64 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_10(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 8
  %5 = load i64, ptr %1, align 1
  %6 = mul i64 %5, -4417276706812531889
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 31)
  %8 = mul i64 %7, -7046029288634856825
  %9 = xor i64 %8, %0
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = getelementptr i8, ptr %1, i64 9
  %14 = load i8, ptr %4, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = xor i64 %16, %12
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 11)
  %19 = mul i64 %18, -7046029288634856825
  %20 = load i8, ptr %13, align 1
  %21 = zext i8 %20 to i64
  %22 = mul i64 %21, 2870177450012600261
  %23 = xor i64 %22, %19
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 11)
  %25 = mul i64 %24, -7046029288634856825
  %26 = lshr i64 %25, 33
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, -4417276706812531889
  %29 = lshr i64 %28, 29
  %30 = xor i64 %29, %28
  %31 = mul i64 %30, 1609587929392839161
  %32 = lshr i64 %31, 32
  %33 = xor i64 %32, %31
  ret i64 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_10(i64 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i64, ptr %1, align 8
  %9 = mul i64 %8, -4417276706812531889
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = xor i64 %11, %0
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  %16 = getelementptr i8, ptr %1, i64 9
  %17 = load i8, ptr %7, align 8
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = xor i64 %19, %15
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 11)
  %22 = mul i64 %21, -7046029288634856825
  %23 = load i8, ptr %16, align 1
  %24 = zext i8 %23 to i64
  %25 = mul i64 %24, 2870177450012600261
  %26 = xor i64 %25, %22
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 11)
  %28 = mul i64 %27, -7046029288634856825
  %29 = lshr i64 %28, 33
  %30 = xor i64 %29, %28
  %31 = mul i64 %30, -4417276706812531889
  %32 = lshr i64 %31, 29
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, 1609587929392839161
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  ret i64 %36
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_11(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 8
  %5 = load i64, ptr %1, align 1
  %6 = mul i64 %5, -4417276706812531889
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 31)
  %8 = mul i64 %7, -7046029288634856825
  %9 = xor i64 %8, %0
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = getelementptr i8, ptr %1, i64 9
  %14 = load i8, ptr %4, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = xor i64 %16, %12
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 11)
  %19 = mul i64 %18, -7046029288634856825
  %20 = getelementptr i8, ptr %1, i64 10
  %21 = load i8, ptr %13, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = xor i64 %23, %19
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 11)
  %26 = mul i64 %25, -7046029288634856825
  %27 = load i8, ptr %20, align 1
  %28 = zext i8 %27 to i64
  %29 = mul i64 %28, 2870177450012600261
  %30 = xor i64 %29, %26
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 11)
  %32 = mul i64 %31, -7046029288634856825
  %33 = lshr i64 %32, 33
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, -4417276706812531889
  %36 = lshr i64 %35, 29
  %37 = xor i64 %36, %35
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  ret i64 %40
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_11(i64 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i64, ptr %1, align 8
  %9 = mul i64 %8, -4417276706812531889
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = xor i64 %11, %0
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  %16 = getelementptr i8, ptr %1, i64 9
  %17 = load i8, ptr %7, align 8
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = xor i64 %19, %15
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 11)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr i8, ptr %1, i64 10
  %24 = load i8, ptr %16, align 1
  %25 = zext i8 %24 to i64
  %26 = mul i64 %25, 2870177450012600261
  %27 = xor i64 %26, %22
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 11)
  %29 = mul i64 %28, -7046029288634856825
  %30 = load i8, ptr %23, align 2
  %31 = zext i8 %30 to i64
  %32 = mul i64 %31, 2870177450012600261
  %33 = xor i64 %32, %29
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 11)
  %35 = mul i64 %34, -7046029288634856825
  %36 = lshr i64 %35, 33
  %37 = xor i64 %36, %35
  %38 = mul i64 %37, -4417276706812531889
  %39 = lshr i64 %38, 29
  %40 = xor i64 %39, %38
  %41 = mul i64 %40, 1609587929392839161
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  ret i64 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_12(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 8
  %5 = load i64, ptr %1, align 1
  %6 = load i32, ptr %4, align 1
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, -7046029288634856825
  %9 = mul i64 %5, -4417276706812531889
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = xor i64 %11, %0
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  %16 = xor i64 %8, %15
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 23)
  %18 = mul i64 %17, -4417276706812531889
  %19 = add i64 %18, 1609587929392839161
  %20 = lshr i64 %19, 33
  %21 = xor i64 %20, %19
  %22 = mul i64 %21, -4417276706812531889
  %23 = lshr i64 %22, 29
  %24 = xor i64 %23, %22
  %25 = mul i64 %24, 1609587929392839161
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %25
  ret i64 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_12(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i64, ptr %1, align 8
  %9 = load i32, ptr %7, align 8
  %10 = zext i32 %9 to i64
  %11 = mul i64 %10, -7046029288634856825
  %12 = mul i64 %8, -4417276706812531889
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = xor i64 %14, %0
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 27)
  %17 = mul i64 %16, -7046029288634856825
  %18 = add i64 %17, -8796714831421723037
  %19 = xor i64 %11, %18
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 23)
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %21, 1609587929392839161
  %23 = lshr i64 %22, 33
  %24 = xor i64 %23, %22
  %25 = mul i64 %24, -4417276706812531889
  %26 = lshr i64 %25, 29
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, 1609587929392839161
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %28
  ret i64 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_13(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 8
  %5 = load i64, ptr %1, align 1
  %6 = load i32, ptr %4, align 1
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i64
  %10 = mul i64 %9, 2870177450012600261
  %11 = zext i32 %6 to i64
  %12 = mul i64 %11, -7046029288634856825
  %13 = mul i64 %5, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %15, %0
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 27)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %18, -8796714831421723037
  %20 = xor i64 %12, %19
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 23)
  %22 = mul i64 %21, -4417276706812531889
  %23 = add i64 %22, 1609587929392839161
  %24 = xor i64 %10, %23
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 11)
  %26 = mul i64 %25, -7046029288634856825
  %27 = lshr i64 %26, 33
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, -4417276706812531889
  %30 = lshr i64 %29, 29
  %31 = xor i64 %30, %29
  %32 = mul i64 %31, 1609587929392839161
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  ret i64 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_13(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i64, ptr %1, align 8
  %9 = load i32, ptr %7, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = zext i32 %9 to i64
  %15 = mul i64 %14, -7046029288634856825
  %16 = mul i64 %8, -4417276706812531889
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = xor i64 %18, %0
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 27)
  %21 = mul i64 %20, -7046029288634856825
  %22 = add i64 %21, -8796714831421723037
  %23 = xor i64 %15, %22
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 23)
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, 1609587929392839161
  %27 = xor i64 %13, %26
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 11)
  %29 = mul i64 %28, -7046029288634856825
  %30 = lshr i64 %29, 33
  %31 = xor i64 %30, %29
  %32 = mul i64 %31, -4417276706812531889
  %33 = lshr i64 %32, 29
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, 1609587929392839161
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  ret i64 %37
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_14(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 8
  %5 = load i32, ptr %4, align 1
  %6 = zext i32 %5 to i64
  %7 = mul i64 %6, -7046029288634856825
  %8 = load i64, ptr %1, align 1
  %9 = mul i64 %8, -4417276706812531889
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = xor i64 %11, %0
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  %16 = xor i64 %7, %15
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 23)
  %18 = mul i64 %17, -4417276706812531889
  %19 = add i64 %18, 1609587929392839161
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %22 = load i8, ptr %20, align 1
  %23 = zext i8 %22 to i64
  %24 = mul i64 %23, 2870177450012600261
  %25 = xor i64 %24, %19
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 11)
  %27 = mul i64 %26, -7046029288634856825
  %28 = load i8, ptr %21, align 1
  %29 = zext i8 %28 to i64
  %30 = mul i64 %29, 2870177450012600261
  %31 = xor i64 %30, %27
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 11)
  %33 = mul i64 %32, -7046029288634856825
  %34 = lshr i64 %33, 33
  %35 = xor i64 %34, %33
  %36 = mul i64 %35, -4417276706812531889
  %37 = lshr i64 %36, 29
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, 1609587929392839161
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  ret i64 %41
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_14(i64 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i32, ptr %7, align 8
  %9 = zext i32 %8 to i64
  %10 = mul i64 %9, -7046029288634856825
  %11 = load i64, ptr %1, align 8
  %12 = mul i64 %11, -4417276706812531889
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = xor i64 %14, %0
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 27)
  %17 = mul i64 %16, -7046029288634856825
  %18 = add i64 %17, -8796714831421723037
  %19 = xor i64 %10, %18
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 23)
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %21, 1609587929392839161
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %25 = load i8, ptr %23, align 4
  %26 = zext i8 %25 to i64
  %27 = mul i64 %26, 2870177450012600261
  %28 = xor i64 %27, %22
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 11)
  %30 = mul i64 %29, -7046029288634856825
  %31 = load i8, ptr %24, align 1
  %32 = zext i8 %31 to i64
  %33 = mul i64 %32, 2870177450012600261
  %34 = xor i64 %33, %30
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 11)
  %36 = mul i64 %35, -7046029288634856825
  %37 = lshr i64 %36, 33
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, -4417276706812531889
  %40 = lshr i64 %39, 29
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, 1609587929392839161
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  ret i64 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_15(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 8
  %5 = load i64, ptr %1, align 1
  %6 = load i32, ptr %4, align 1
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i64
  %10 = mul i64 %9, 2870177450012600261
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = zext i32 %6 to i64
  %20 = mul i64 %19, -7046029288634856825
  %21 = mul i64 %5, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = xor i64 %23, %0
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  %28 = xor i64 %20, %27
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 23)
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, 1609587929392839161
  %32 = xor i64 %18, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 11)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %14, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 11)
  %37 = mul i64 %36, -7046029288634856825
  %38 = xor i64 %10, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 11)
  %40 = mul i64 %39, -7046029288634856825
  %41 = lshr i64 %40, 33
  %42 = xor i64 %41, %40
  %43 = mul i64 %42, -4417276706812531889
  %44 = lshr i64 %43, 29
  %45 = xor i64 %44, %43
  %46 = mul i64 %45, 1609587929392839161
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  ret i64 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_15(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i64, ptr %1, align 8
  %9 = load i32, ptr %7, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = zext i32 %9 to i64
  %23 = mul i64 %22, -7046029288634856825
  %24 = mul i64 %8, -4417276706812531889
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = xor i64 %26, %0
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 27)
  %29 = mul i64 %28, -7046029288634856825
  %30 = add i64 %29, -8796714831421723037
  %31 = xor i64 %23, %30
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 23)
  %33 = mul i64 %32, -4417276706812531889
  %34 = add i64 %33, 1609587929392839161
  %35 = xor i64 %21, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 11)
  %37 = mul i64 %36, -7046029288634856825
  %38 = xor i64 %17, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 11)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %13, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 11)
  %43 = mul i64 %42, -7046029288634856825
  %44 = lshr i64 %43, 33
  %45 = xor i64 %44, %43
  %46 = mul i64 %45, -4417276706812531889
  %47 = lshr i64 %46, 29
  %48 = xor i64 %47, %46
  %49 = mul i64 %48, 1609587929392839161
  %50 = lshr i64 %49, 32
  %51 = xor i64 %50, %49
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_16(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i64, ptr %1, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = xor i64 %7, %0
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i64, ptr %8, align 1
  %14 = mul i64 %13, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = xor i64 %16, %12
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 27)
  %19 = mul i64 %18, -7046029288634856825
  %20 = add i64 %19, -8796714831421723037
  %21 = lshr i64 %20, 33
  %22 = xor i64 %21, %20
  %23 = mul i64 %22, -4417276706812531889
  %24 = lshr i64 %23, 29
  %25 = xor i64 %24, %23
  %26 = mul i64 %25, 1609587929392839161
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_16(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i64, ptr %1, align 8
  %8 = mul i64 %7, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = xor i64 %10, %0
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  %16 = load i64, ptr %11, align 8
  %17 = mul i64 %16, -4417276706812531889
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %19, %15
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 27)
  %22 = mul i64 %21, -7046029288634856825
  %23 = add i64 %22, -8796714831421723037
  %24 = lshr i64 %23, 33
  %25 = xor i64 %24, %23
  %26 = mul i64 %25, -4417276706812531889
  %27 = lshr i64 %26, 29
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587929392839161
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  ret i64 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_17(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 8
  %5 = load i64, ptr %1, align 1
  %6 = load i64, ptr %4, align 1
  %7 = getelementptr i8, ptr %1, i64 16
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i64
  %10 = mul i64 %9, 2870177450012600261
  %11 = mul i64 %6, -4417276706812531889
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 31)
  %13 = mul i64 %12, -7046029288634856825
  %14 = mul i64 %5, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = xor i64 %16, %0
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 27)
  %19 = mul i64 %18, -7046029288634856825
  %20 = add i64 %19, -8796714831421723037
  %21 = xor i64 %13, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %10, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 11)
  %27 = mul i64 %26, -7046029288634856825
  %28 = lshr i64 %27, 33
  %29 = xor i64 %28, %27
  %30 = mul i64 %29, -4417276706812531889
  %31 = lshr i64 %30, 29
  %32 = xor i64 %31, %30
  %33 = mul i64 %32, 1609587929392839161
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_17(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i64, ptr %1, align 8
  %9 = load i64, ptr %7, align 8
  %10 = getelementptr i8, ptr %1, i64 16
  %11 = load i8, ptr %10, align 8
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = mul i64 %9, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = mul i64 %8, -4417276706812531889
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %19, %0
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 27)
  %22 = mul i64 %21, -7046029288634856825
  %23 = add i64 %22, -8796714831421723037
  %24 = xor i64 %16, %23
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  %28 = xor i64 %13, %27
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 11)
  %30 = mul i64 %29, -7046029288634856825
  %31 = lshr i64 %30, 33
  %32 = xor i64 %31, %30
  %33 = mul i64 %32, -4417276706812531889
  %34 = lshr i64 %33, 29
  %35 = xor i64 %34, %33
  %36 = mul i64 %35, 1609587929392839161
  %37 = lshr i64 %36, 32
  %38 = xor i64 %37, %36
  ret i64 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_18(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 8
  %5 = load i64, ptr %1, align 1
  %6 = load i64, ptr %4, align 1
  %7 = getelementptr i8, ptr %1, i64 17
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i64
  %10 = mul i64 %9, 2870177450012600261
  %11 = getelementptr i8, ptr %1, i64 16
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = mul i64 %6, -4417276706812531889
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 31)
  %17 = mul i64 %16, -7046029288634856825
  %18 = mul i64 %5, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = xor i64 %20, %0
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %17, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %14, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 11)
  %31 = mul i64 %30, -7046029288634856825
  %32 = xor i64 %10, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 11)
  %34 = mul i64 %33, -7046029288634856825
  %35 = lshr i64 %34, 33
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, -4417276706812531889
  %38 = lshr i64 %37, 29
  %39 = xor i64 %38, %37
  %40 = mul i64 %39, 1609587929392839161
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  ret i64 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_18(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i64, ptr %1, align 8
  %9 = load i64, ptr %7, align 8
  %10 = getelementptr i8, ptr %1, i64 17
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr i8, ptr %1, i64 16
  %15 = load i8, ptr %14, align 8
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = mul i64 %9, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = mul i64 %8, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = xor i64 %23, %0
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  %28 = xor i64 %20, %27
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 27)
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = xor i64 %17, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 11)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %13, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 11)
  %37 = mul i64 %36, -7046029288634856825
  %38 = lshr i64 %37, 33
  %39 = xor i64 %38, %37
  %40 = mul i64 %39, -4417276706812531889
  %41 = lshr i64 %40, 29
  %42 = xor i64 %41, %40
  %43 = mul i64 %42, 1609587929392839161
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  ret i64 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_19(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 8
  %5 = load i64, ptr %1, align 1
  %6 = load i64, ptr %4, align 1
  %7 = getelementptr i8, ptr %1, i64 18
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i64
  %10 = mul i64 %9, 2870177450012600261
  %11 = getelementptr i8, ptr %1, i64 17
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = getelementptr i8, ptr %1, i64 16
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = mul i64 %6, -4417276706812531889
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %5, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %0
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %21, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %18, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 11)
  %35 = mul i64 %34, -7046029288634856825
  %36 = xor i64 %14, %35
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 11)
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %10, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 11)
  %41 = mul i64 %40, -7046029288634856825
  %42 = lshr i64 %41, 33
  %43 = xor i64 %42, %41
  %44 = mul i64 %43, -4417276706812531889
  %45 = lshr i64 %44, 29
  %46 = xor i64 %45, %44
  %47 = mul i64 %46, 1609587929392839161
  %48 = lshr i64 %47, 32
  %49 = xor i64 %48, %47
  ret i64 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_19(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i64, ptr %1, align 8
  %9 = load i64, ptr %7, align 8
  %10 = getelementptr i8, ptr %1, i64 18
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr i8, ptr %1, i64 17
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = getelementptr i8, ptr %1, i64 16
  %19 = load i8, ptr %18, align 8
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = mul i64 %9, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %8, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = xor i64 %27, %0
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 27)
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = xor i64 %24, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 27)
  %34 = mul i64 %33, -7046029288634856825
  %35 = add i64 %34, -8796714831421723037
  %36 = xor i64 %21, %35
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 11)
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %17, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 11)
  %41 = mul i64 %40, -7046029288634856825
  %42 = xor i64 %13, %41
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 11)
  %44 = mul i64 %43, -7046029288634856825
  %45 = lshr i64 %44, 33
  %46 = xor i64 %45, %44
  %47 = mul i64 %46, -4417276706812531889
  %48 = lshr i64 %47, 29
  %49 = xor i64 %48, %47
  %50 = mul i64 %49, 1609587929392839161
  %51 = lshr i64 %50, 32
  %52 = xor i64 %51, %50
  ret i64 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_20(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 16
  %5 = getelementptr i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 1
  %7 = load i64, ptr %1, align 1
  %8 = load i32, ptr %4, align 1
  %9 = zext i32 %8 to i64
  %10 = mul i64 %9, -7046029288634856825
  %11 = mul i64 %6, -4417276706812531889
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 31)
  %13 = mul i64 %12, -7046029288634856825
  %14 = mul i64 %7, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = xor i64 %16, %0
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 27)
  %19 = mul i64 %18, -7046029288634856825
  %20 = add i64 %19, -8796714831421723037
  %21 = xor i64 %13, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %10, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 23)
  %27 = mul i64 %26, -4417276706812531889
  %28 = add i64 %27, 1609587929392839161
  %29 = lshr i64 %28, 33
  %30 = xor i64 %29, %28
  %31 = mul i64 %30, -4417276706812531889
  %32 = lshr i64 %31, 29
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, 1609587929392839161
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  ret i64 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_20(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 16
  %8 = getelementptr i8, ptr %1, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr %1, align 8
  %11 = load i32, ptr %7, align 8
  %12 = zext i32 %11 to i64
  %13 = mul i64 %12, -7046029288634856825
  %14 = mul i64 %9, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = mul i64 %10, -4417276706812531889
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %19, %0
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 27)
  %22 = mul i64 %21, -7046029288634856825
  %23 = add i64 %22, -8796714831421723037
  %24 = xor i64 %16, %23
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  %28 = xor i64 %13, %27
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 23)
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, 1609587929392839161
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_21(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 16
  %5 = getelementptr i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 1
  %7 = load i64, ptr %1, align 1
  %8 = load i32, ptr %4, align 1
  %9 = getelementptr i8, ptr %1, i64 20
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = mul i64 %11, 2870177450012600261
  %13 = zext i32 %8 to i64
  %14 = mul i64 %13, -7046029288634856825
  %15 = mul i64 %6, -4417276706812531889
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 31)
  %17 = mul i64 %16, -7046029288634856825
  %18 = mul i64 %7, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = xor i64 %20, %0
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %17, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %14, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 23)
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, 1609587929392839161
  %33 = xor i64 %12, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 11)
  %35 = mul i64 %34, -7046029288634856825
  %36 = lshr i64 %35, 33
  %37 = xor i64 %36, %35
  %38 = mul i64 %37, -4417276706812531889
  %39 = lshr i64 %38, 29
  %40 = xor i64 %39, %38
  %41 = mul i64 %40, 1609587929392839161
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  ret i64 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_21(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 16
  %8 = getelementptr i8, ptr %1, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr %1, align 8
  %11 = load i32, ptr %7, align 8
  %12 = getelementptr i8, ptr %1, i64 20
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = zext i32 %11 to i64
  %17 = mul i64 %16, -7046029288634856825
  %18 = mul i64 %9, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = mul i64 %10, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = xor i64 %23, %0
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  %28 = xor i64 %20, %27
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 27)
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = xor i64 %17, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 23)
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, 1609587929392839161
  %36 = xor i64 %15, %35
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 11)
  %38 = mul i64 %37, -7046029288634856825
  %39 = lshr i64 %38, 33
  %40 = xor i64 %39, %38
  %41 = mul i64 %40, -4417276706812531889
  %42 = lshr i64 %41, 29
  %43 = xor i64 %42, %41
  %44 = mul i64 %43, 1609587929392839161
  %45 = lshr i64 %44, 32
  %46 = xor i64 %45, %44
  ret i64 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_22(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 16
  %5 = getelementptr i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 1
  %7 = load i64, ptr %1, align 1
  %8 = load i32, ptr %4, align 1
  %9 = getelementptr i8, ptr %1, i64 21
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = mul i64 %11, 2870177450012600261
  %13 = getelementptr i8, ptr %1, i64 20
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = zext i32 %8 to i64
  %18 = mul i64 %17, -7046029288634856825
  %19 = mul i64 %6, -4417276706812531889
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %7, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %0
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %21, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %18, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 23)
  %35 = mul i64 %34, -4417276706812531889
  %36 = add i64 %35, 1609587929392839161
  %37 = xor i64 %16, %36
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 11)
  %39 = mul i64 %38, -7046029288634856825
  %40 = xor i64 %12, %39
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 11)
  %42 = mul i64 %41, -7046029288634856825
  %43 = lshr i64 %42, 33
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, -4417276706812531889
  %46 = lshr i64 %45, 29
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, 1609587929392839161
  %49 = lshr i64 %48, 32
  %50 = xor i64 %49, %48
  ret i64 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_22(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 16
  %8 = getelementptr i8, ptr %1, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr %1, align 8
  %11 = load i32, ptr %7, align 8
  %12 = getelementptr i8, ptr %1, i64 21
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = getelementptr i8, ptr %1, i64 20
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = zext i32 %11 to i64
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %9, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %10, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = xor i64 %27, %0
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 27)
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = xor i64 %24, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 27)
  %34 = mul i64 %33, -7046029288634856825
  %35 = add i64 %34, -8796714831421723037
  %36 = xor i64 %21, %35
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 23)
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, 1609587929392839161
  %40 = xor i64 %19, %39
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 11)
  %42 = mul i64 %41, -7046029288634856825
  %43 = xor i64 %15, %42
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 11)
  %45 = mul i64 %44, -7046029288634856825
  %46 = lshr i64 %45, 33
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, -4417276706812531889
  %49 = lshr i64 %48, 29
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587929392839161
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  ret i64 %53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_23(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 16
  %5 = getelementptr i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 1
  %7 = load i64, ptr %1, align 1
  %8 = load i32, ptr %4, align 1
  %9 = getelementptr i8, ptr %1, i64 22
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = mul i64 %11, 2870177450012600261
  %13 = getelementptr i8, ptr %1, i64 21
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = getelementptr i8, ptr %1, i64 20
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i64
  %20 = mul i64 %19, 2870177450012600261
  %21 = zext i32 %8 to i64
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %6, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %7, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %28, %0
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %25, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = xor i64 %22, %36
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 23)
  %39 = mul i64 %38, -4417276706812531889
  %40 = add i64 %39, 1609587929392839161
  %41 = xor i64 %20, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 11)
  %43 = mul i64 %42, -7046029288634856825
  %44 = xor i64 %16, %43
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 11)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %12, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 11)
  %49 = mul i64 %48, -7046029288634856825
  %50 = lshr i64 %49, 33
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, -4417276706812531889
  %53 = lshr i64 %52, 29
  %54 = xor i64 %53, %52
  %55 = mul i64 %54, 1609587929392839161
  %56 = lshr i64 %55, 32
  %57 = xor i64 %56, %55
  ret i64 %57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_23(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 16
  %8 = getelementptr i8, ptr %1, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr %1, align 8
  %11 = load i32, ptr %7, align 8
  %12 = getelementptr i8, ptr %1, i64 22
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = getelementptr i8, ptr %1, i64 21
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = getelementptr i8, ptr %1, i64 20
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = zext i32 %11 to i64
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %9, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = mul i64 %10, -4417276706812531889
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = xor i64 %31, %0
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 27)
  %34 = mul i64 %33, -7046029288634856825
  %35 = add i64 %34, -8796714831421723037
  %36 = xor i64 %28, %35
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 27)
  %38 = mul i64 %37, -7046029288634856825
  %39 = add i64 %38, -8796714831421723037
  %40 = xor i64 %25, %39
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 23)
  %42 = mul i64 %41, -4417276706812531889
  %43 = add i64 %42, 1609587929392839161
  %44 = xor i64 %23, %43
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 11)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %19, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 11)
  %49 = mul i64 %48, -7046029288634856825
  %50 = xor i64 %15, %49
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 11)
  %52 = mul i64 %51, -7046029288634856825
  %53 = lshr i64 %52, 33
  %54 = xor i64 %53, %52
  %55 = mul i64 %54, -4417276706812531889
  %56 = lshr i64 %55, 29
  %57 = xor i64 %56, %55
  %58 = mul i64 %57, 1609587929392839161
  %59 = lshr i64 %58, 32
  %60 = xor i64 %59, %58
  ret i64 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_24(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i64, ptr %1, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = xor i64 %7, %0
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i64, ptr %8, align 1
  %14 = mul i64 %13, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %18 = xor i64 %16, %12
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i64, ptr %17, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = xor i64 %25, %21
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = lshr i64 %29, 33
  %31 = xor i64 %30, %29
  %32 = mul i64 %31, -4417276706812531889
  %33 = lshr i64 %32, 29
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, 1609587929392839161
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  ret i64 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_24(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i64, ptr %1, align 8
  %8 = mul i64 %7, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = xor i64 %10, %0
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  %16 = load i64, ptr %11, align 8
  %17 = mul i64 %16, -4417276706812531889
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %21 = xor i64 %19, %15
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = load i64, ptr %20, align 8
  %26 = mul i64 %25, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %28, %24
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = lshr i64 %32, 33
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, -4417276706812531889
  %36 = lshr i64 %35, 29
  %37 = xor i64 %36, %35
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  ret i64 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_25(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i64, ptr %1, align 1
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %8 = load i64, ptr %7, align 1
  %9 = getelementptr i8, ptr %1, i64 24
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = mul i64 %11, 2870177450012600261
  %13 = mul i64 %8, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = mul i64 %6, -4417276706812531889
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = mul i64 %4, -4417276706812531889
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = xor i64 %21, %0
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 27)
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = xor i64 %18, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = xor i64 %15, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %12, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 11)
  %36 = mul i64 %35, -7046029288634856825
  %37 = lshr i64 %36, 33
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, -4417276706812531889
  %40 = lshr i64 %39, 29
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, 1609587929392839161
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  ret i64 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_25(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i64, ptr %1, align 8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr i8, ptr %1, i64 24
  %13 = load i8, ptr %12, align 8
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = mul i64 %11, -4417276706812531889
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = mul i64 %9, -4417276706812531889
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %7, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %0
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %21, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %18, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = xor i64 %15, %36
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 11)
  %39 = mul i64 %38, -7046029288634856825
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  ret i64 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_26(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i64, ptr %1, align 1
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %8 = load i64, ptr %7, align 1
  %9 = getelementptr i8, ptr %1, i64 25
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = mul i64 %11, 2870177450012600261
  %13 = getelementptr i8, ptr %1, i64 24
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = mul i64 %8, -4417276706812531889
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = mul i64 %6, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %4, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = xor i64 %25, %0
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = xor i64 %22, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %19, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %16, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 11)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %12, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 11)
  %43 = mul i64 %42, -7046029288634856825
  %44 = lshr i64 %43, 33
  %45 = xor i64 %44, %43
  %46 = mul i64 %45, -4417276706812531889
  %47 = lshr i64 %46, 29
  %48 = xor i64 %47, %46
  %49 = mul i64 %48, 1609587929392839161
  %50 = lshr i64 %49, 32
  %51 = xor i64 %50, %49
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_26(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i64, ptr %1, align 8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr i8, ptr %1, i64 25
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = getelementptr i8, ptr %1, i64 24
  %17 = load i8, ptr %16, align 8
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = mul i64 %11, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %9, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %7, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %28, %0
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %25, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = xor i64 %22, %36
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 27)
  %39 = mul i64 %38, -7046029288634856825
  %40 = add i64 %39, -8796714831421723037
  %41 = xor i64 %19, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 11)
  %43 = mul i64 %42, -7046029288634856825
  %44 = xor i64 %15, %43
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 11)
  %46 = mul i64 %45, -7046029288634856825
  %47 = lshr i64 %46, 33
  %48 = xor i64 %47, %46
  %49 = mul i64 %48, -4417276706812531889
  %50 = lshr i64 %49, 29
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587929392839161
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  ret i64 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_27(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i64, ptr %1, align 1
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %8 = load i64, ptr %7, align 1
  %9 = getelementptr i8, ptr %1, i64 26
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = mul i64 %11, 2870177450012600261
  %13 = getelementptr i8, ptr %1, i64 25
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = getelementptr i8, ptr %1, i64 24
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i64
  %20 = mul i64 %19, 2870177450012600261
  %21 = mul i64 %8, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = mul i64 %6, -4417276706812531889
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = mul i64 %4, -4417276706812531889
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = xor i64 %29, %0
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %26, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %23, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 27)
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = xor i64 %20, %41
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 11)
  %44 = mul i64 %43, -7046029288634856825
  %45 = xor i64 %16, %44
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 11)
  %47 = mul i64 %46, -7046029288634856825
  %48 = xor i64 %12, %47
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 11)
  %50 = mul i64 %49, -7046029288634856825
  %51 = lshr i64 %50, 33
  %52 = xor i64 %51, %50
  %53 = mul i64 %52, -4417276706812531889
  %54 = lshr i64 %53, 29
  %55 = xor i64 %54, %53
  %56 = mul i64 %55, 1609587929392839161
  %57 = lshr i64 %56, 32
  %58 = xor i64 %57, %56
  ret i64 %58
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_27(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = load i64, ptr %1, align 8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr i8, ptr %1, i64 26
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = getelementptr i8, ptr %1, i64 25
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = getelementptr i8, ptr %1, i64 24
  %21 = load i8, ptr %20, align 8
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = mul i64 %11, -4417276706812531889
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = mul i64 %9, -4417276706812531889
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = mul i64 %7, -4417276706812531889
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = xor i64 %32, %0
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = xor i64 %29, %36
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 27)
  %39 = mul i64 %38, -7046029288634856825
  %40 = add i64 %39, -8796714831421723037
  %41 = xor i64 %26, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 27)
  %43 = mul i64 %42, -7046029288634856825
  %44 = add i64 %43, -8796714831421723037
  %45 = xor i64 %23, %44
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 11)
  %47 = mul i64 %46, -7046029288634856825
  %48 = xor i64 %19, %47
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 11)
  %50 = mul i64 %49, -7046029288634856825
  %51 = xor i64 %15, %50
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 11)
  %53 = mul i64 %52, -7046029288634856825
  %54 = lshr i64 %53, 33
  %55 = xor i64 %54, %53
  %56 = mul i64 %55, -4417276706812531889
  %57 = lshr i64 %56, 29
  %58 = xor i64 %57, %56
  %59 = mul i64 %58, 1609587929392839161
  %60 = lshr i64 %59, 32
  %61 = xor i64 %60, %59
  ret i64 %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_28(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = load i64, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i64, ptr %7, align 1
  %9 = load i64, ptr %1, align 1
  %10 = load i32, ptr %4, align 1
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, -7046029288634856825
  %13 = mul i64 %6, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = mul i64 %8, -4417276706812531889
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = mul i64 %9, -4417276706812531889
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = xor i64 %21, %0
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 27)
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = xor i64 %18, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = xor i64 %15, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %12, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 23)
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 33
  %39 = xor i64 %38, %37
  %40 = mul i64 %39, -4417276706812531889
  %41 = lshr i64 %40, 29
  %42 = xor i64 %41, %40
  %43 = mul i64 %42, 1609587929392839161
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  ret i64 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_28(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = load i64, ptr %1, align 8
  %13 = load i32, ptr %7, align 8
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, -7046029288634856825
  %16 = mul i64 %9, -4417276706812531889
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = mul i64 %11, -4417276706812531889
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %12, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %0
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %21, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %18, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = xor i64 %15, %36
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 23)
  %39 = mul i64 %38, -4417276706812531889
  %40 = add i64 %39, 1609587929392839161
  %41 = lshr i64 %40, 33
  %42 = xor i64 %41, %40
  %43 = mul i64 %42, -4417276706812531889
  %44 = lshr i64 %43, 29
  %45 = xor i64 %44, %43
  %46 = mul i64 %45, 1609587929392839161
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  ret i64 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_29(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = load i64, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i64, ptr %7, align 1
  %9 = load i64, ptr %1, align 1
  %10 = load i32, ptr %4, align 1
  %11 = getelementptr i8, ptr %1, i64 28
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = zext i32 %10 to i64
  %16 = mul i64 %15, -7046029288634856825
  %17 = mul i64 %6, -4417276706812531889
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = mul i64 %8, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %9, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = xor i64 %25, %0
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = xor i64 %22, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %19, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %16, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 23)
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, 1609587929392839161
  %42 = xor i64 %14, %41
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 11)
  %44 = mul i64 %43, -7046029288634856825
  %45 = lshr i64 %44, 33
  %46 = xor i64 %45, %44
  %47 = mul i64 %46, -4417276706812531889
  %48 = lshr i64 %47, 29
  %49 = xor i64 %48, %47
  %50 = mul i64 %49, 1609587929392839161
  %51 = lshr i64 %50, 32
  %52 = xor i64 %51, %50
  ret i64 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_29(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = load i64, ptr %1, align 8
  %13 = load i32, ptr %7, align 8
  %14 = getelementptr i8, ptr %1, i64 28
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = zext i32 %13 to i64
  %19 = mul i64 %18, -7046029288634856825
  %20 = mul i64 %9, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %11, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %12, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %28, %0
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %25, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = xor i64 %22, %36
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 27)
  %39 = mul i64 %38, -7046029288634856825
  %40 = add i64 %39, -8796714831421723037
  %41 = xor i64 %19, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 23)
  %43 = mul i64 %42, -4417276706812531889
  %44 = add i64 %43, 1609587929392839161
  %45 = xor i64 %17, %44
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 11)
  %47 = mul i64 %46, -7046029288634856825
  %48 = lshr i64 %47, 33
  %49 = xor i64 %48, %47
  %50 = mul i64 %49, -4417276706812531889
  %51 = lshr i64 %50, 29
  %52 = xor i64 %51, %50
  %53 = mul i64 %52, 1609587929392839161
  %54 = lshr i64 %53, 32
  %55 = xor i64 %54, %53
  ret i64 %55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_30(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = load i64, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i64, ptr %7, align 1
  %9 = load i64, ptr %1, align 1
  %10 = load i32, ptr %4, align 1
  %11 = getelementptr i8, ptr %1, i64 29
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = getelementptr i8, ptr %1, i64 28
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = zext i32 %10 to i64
  %20 = mul i64 %19, -7046029288634856825
  %21 = mul i64 %6, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = mul i64 %8, -4417276706812531889
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = mul i64 %9, -4417276706812531889
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = xor i64 %29, %0
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %26, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %23, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 27)
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = xor i64 %20, %41
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 23)
  %44 = mul i64 %43, -4417276706812531889
  %45 = add i64 %44, 1609587929392839161
  %46 = xor i64 %18, %45
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 11)
  %48 = mul i64 %47, -7046029288634856825
  %49 = xor i64 %14, %48
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 11)
  %51 = mul i64 %50, -7046029288634856825
  %52 = lshr i64 %51, 33
  %53 = xor i64 %52, %51
  %54 = mul i64 %53, -4417276706812531889
  %55 = lshr i64 %54, 29
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, 1609587929392839161
  %58 = lshr i64 %57, 32
  %59 = xor i64 %58, %57
  ret i64 %59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_30(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = load i64, ptr %1, align 8
  %13 = load i32, ptr %7, align 8
  %14 = getelementptr i8, ptr %1, i64 29
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = getelementptr i8, ptr %1, i64 28
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = zext i32 %13 to i64
  %23 = mul i64 %22, -7046029288634856825
  %24 = mul i64 %9, -4417276706812531889
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = mul i64 %11, -4417276706812531889
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = mul i64 %12, -4417276706812531889
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = xor i64 %32, %0
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = xor i64 %29, %36
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 27)
  %39 = mul i64 %38, -7046029288634856825
  %40 = add i64 %39, -8796714831421723037
  %41 = xor i64 %26, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 27)
  %43 = mul i64 %42, -7046029288634856825
  %44 = add i64 %43, -8796714831421723037
  %45 = xor i64 %23, %44
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 23)
  %47 = mul i64 %46, -4417276706812531889
  %48 = add i64 %47, 1609587929392839161
  %49 = xor i64 %21, %48
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 11)
  %51 = mul i64 %50, -7046029288634856825
  %52 = xor i64 %17, %51
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 11)
  %54 = mul i64 %53, -7046029288634856825
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  ret i64 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned_31(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %1, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = load i64, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i64, ptr %7, align 1
  %9 = load i64, ptr %1, align 1
  %10 = load i32, ptr %4, align 1
  %11 = getelementptr i8, ptr %1, i64 30
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = getelementptr i8, ptr %1, i64 29
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = getelementptr i8, ptr %1, i64 28
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i64
  %22 = mul i64 %21, 2870177450012600261
  %23 = zext i32 %10 to i64
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %6, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = mul i64 %8, -4417276706812531889
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = mul i64 %9, -4417276706812531889
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = xor i64 %33, %0
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %30, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 27)
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = xor i64 %27, %41
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 27)
  %44 = mul i64 %43, -7046029288634856825
  %45 = add i64 %44, -8796714831421723037
  %46 = xor i64 %24, %45
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 23)
  %48 = mul i64 %47, -4417276706812531889
  %49 = add i64 %48, 1609587929392839161
  %50 = xor i64 %22, %49
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 11)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %18, %52
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 11)
  %55 = mul i64 %54, -7046029288634856825
  %56 = xor i64 %14, %55
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 11)
  %58 = mul i64 %57, -7046029288634856825
  %59 = lshr i64 %58, 33
  %60 = xor i64 %59, %58
  %61 = mul i64 %60, -4417276706812531889
  %62 = lshr i64 %61, 29
  %63 = xor i64 %62, %61
  %64 = mul i64 %63, 1609587929392839161
  %65 = lshr i64 %64, 32
  %66 = xor i64 %65, %64
  ret i64 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned_31(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr i8, ptr %1, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = load i64, ptr %1, align 8
  %13 = load i32, ptr %7, align 8
  %14 = getelementptr i8, ptr %1, i64 30
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = getelementptr i8, ptr %1, i64 29
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = getelementptr i8, ptr %1, i64 28
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i64
  %25 = mul i64 %24, 2870177450012600261
  %26 = zext i32 %13 to i64
  %27 = mul i64 %26, -7046029288634856825
  %28 = mul i64 %9, -4417276706812531889
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = mul i64 %11, -4417276706812531889
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = mul i64 %12, -4417276706812531889
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = xor i64 %36, %0
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 27)
  %39 = mul i64 %38, -7046029288634856825
  %40 = add i64 %39, -8796714831421723037
  %41 = xor i64 %33, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 27)
  %43 = mul i64 %42, -7046029288634856825
  %44 = add i64 %43, -8796714831421723037
  %45 = xor i64 %30, %44
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 27)
  %47 = mul i64 %46, -7046029288634856825
  %48 = add i64 %47, -8796714831421723037
  %49 = xor i64 %27, %48
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 23)
  %51 = mul i64 %50, -4417276706812531889
  %52 = add i64 %51, 1609587929392839161
  %53 = xor i64 %25, %52
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 11)
  %55 = mul i64 %54, -7046029288634856825
  %56 = xor i64 %21, %55
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 11)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %17, %58
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 11)
  %61 = mul i64 %60, -7046029288634856825
  %62 = lshr i64 %61, 33
  %63 = xor i64 %62, %61
  %64 = mul i64 %63, -4417276706812531889
  %65 = lshr i64 %64, 29
  %66 = xor i64 %65, %64
  %67 = mul i64 %66, 1609587929392839161
  %68 = lshr i64 %67, 32
  %69 = xor i64 %68, %67
  ret i64 %69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
