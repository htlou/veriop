; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7bf3d9f/wrap_finalizer.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7bf3d9f/wrap_finalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_tail_0(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %1, 33
  %4 = xor i64 %3, %1
  %5 = mul i64 %4, -4417276706812531889
  %6 = lshr i64 %5, 29
  %7 = xor i64 %6, %5
  %8 = mul i64 %7, 1609587929392839161
  %9 = lshr i64 %8, 32
  %10 = xor i64 %9, %8
  ret i64 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_1(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i64
  %5 = mul i64 %4, 2870177450012600261
  %6 = xor i64 %5, %1
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 11)
  %8 = mul i64 %7, -7046029288634856825
  %9 = lshr i64 %8, 33
  %10 = xor i64 %9, %8
  %11 = mul i64 %10, -4417276706812531889
  %12 = lshr i64 %11, 29
  %13 = xor i64 %12, %11
  %14 = mul i64 %13, 1609587929392839161
  %15 = lshr i64 %14, 32
  %16 = xor i64 %15, %14
  ret i64 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_2(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i64
  %6 = mul i64 %5, 2870177450012600261
  %7 = xor i64 %6, %1
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 11)
  %9 = mul i64 %8, -7046029288634856825
  %10 = load i8, ptr %3, align 1
  %11 = zext i8 %10 to i64
  %12 = mul i64 %11, 2870177450012600261
  %13 = xor i64 %12, %9
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 11)
  %15 = mul i64 %14, -7046029288634856825
  %16 = lshr i64 %15, 33
  %17 = xor i64 %16, %15
  %18 = mul i64 %17, -4417276706812531889
  %19 = lshr i64 %18, 29
  %20 = xor i64 %19, %18
  %21 = mul i64 %20, 1609587929392839161
  %22 = lshr i64 %21, 32
  %23 = xor i64 %22, %21
  ret i64 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_3(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i64
  %6 = mul i64 %5, 2870177450012600261
  %7 = xor i64 %6, %1
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 11)
  %9 = mul i64 %8, -7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %11 = load i8, ptr %3, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = xor i64 %13, %9
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 11)
  %16 = mul i64 %15, -7046029288634856825
  %17 = load i8, ptr %10, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = xor i64 %19, %16
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 11)
  %22 = mul i64 %21, -7046029288634856825
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_4(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, -7046029288634856825
  %6 = xor i64 %5, %1
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 23)
  %8 = mul i64 %7, -4417276706812531889
  %9 = add i64 %8, 1609587929392839161
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_5(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, -7046029288634856825
  %6 = xor i64 %5, %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 23)
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %9, 1609587929392839161
  %11 = load i8, ptr %7, align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_6(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, -7046029288634856825
  %6 = xor i64 %5, %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 23)
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %9, 1609587929392839161
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %12 = load i8, ptr %7, align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_7(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, -7046029288634856825
  %6 = xor i64 %5, %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 23)
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %9, 1609587929392839161
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %12 = load i8, ptr %7, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = xor i64 %14, %10
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 11)
  %17 = mul i64 %16, -7046029288634856825
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %19 = load i8, ptr %11, align 1
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = xor i64 %21, %17
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 11)
  %24 = mul i64 %23, -7046029288634856825
  %25 = load i8, ptr %18, align 1
  %26 = zext i8 %25 to i64
  %27 = mul i64 %26, 2870177450012600261
  %28 = xor i64 %27, %24
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = mul i64 %3, -4417276706812531889
  %5 = tail call i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 31)
  %6 = mul i64 %5, -7046029288634856825
  %7 = xor i64 %6, %1
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 27)
  %9 = mul i64 %8, -7046029288634856825
  %10 = add i64 %9, -8796714831421723037
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_9(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  %7 = mul i64 %6, 2870177450012600261
  %8 = mul i64 %3, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = xor i64 %10, %1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  %15 = xor i64 %7, %14
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_tail_10(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = xor i64 %7, %1
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 27)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %10, -8796714831421723037
  %12 = getelementptr i8, ptr %0, i64 9
  %13 = load i8, ptr %3, align 1
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_tail_11(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = xor i64 %7, %1
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 27)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %10, -8796714831421723037
  %12 = getelementptr i8, ptr %0, i64 9
  %13 = load i8, ptr %3, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = xor i64 %15, %11
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 11)
  %18 = mul i64 %17, -7046029288634856825
  %19 = getelementptr i8, ptr %0, i64 10
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_12(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i32, ptr %3, align 1
  %6 = zext i32 %5 to i64
  %7 = mul i64 %6, -7046029288634856825
  %8 = mul i64 %4, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = xor i64 %10, %1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  %15 = xor i64 %7, %14
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 23)
  %17 = mul i64 %16, -4417276706812531889
  %18 = add i64 %17, 1609587929392839161
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_13(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i32, ptr %3, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = zext i32 %5 to i64
  %11 = mul i64 %10, -7046029288634856825
  %12 = mul i64 %4, -4417276706812531889
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = xor i64 %14, %1
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 27)
  %17 = mul i64 %16, -7046029288634856825
  %18 = add i64 %17, -8796714831421723037
  %19 = xor i64 %11, %18
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 23)
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %21, 1609587929392839161
  %23 = xor i64 %9, %22
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_tail_14(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i32, ptr %3, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = load i64, ptr %0, align 1
  %8 = mul i64 %7, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = xor i64 %10, %1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  %15 = xor i64 %6, %14
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 23)
  %17 = mul i64 %16, -4417276706812531889
  %18 = add i64 %17, 1609587929392839161
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %21 = load i8, ptr %19, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = xor i64 %23, %18
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_15(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i32, ptr %3, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = zext i32 %5 to i64
  %19 = mul i64 %18, -7046029288634856825
  %20 = mul i64 %4, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = xor i64 %22, %1
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 27)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  %27 = xor i64 %19, %26
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 23)
  %29 = mul i64 %28, -4417276706812531889
  %30 = add i64 %29, 1609587929392839161
  %31 = xor i64 %17, %30
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 11)
  %33 = mul i64 %32, -7046029288634856825
  %34 = xor i64 %13, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 11)
  %36 = mul i64 %35, -7046029288634856825
  %37 = xor i64 %9, %36
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_16(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = mul i64 %3, -4417276706812531889
  %5 = tail call i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 31)
  %6 = mul i64 %5, -7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = xor i64 %6, %1
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 27)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %10, -8796714831421723037
  %12 = load i64, ptr %7, align 1
  %13 = mul i64 %12, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %15, %11
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 27)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %18, -8796714831421723037
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_17(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i64, ptr %3, align 1
  %6 = getelementptr i8, ptr %0, i64 16
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = mul i64 %5, -4417276706812531889
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = mul i64 %4, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %15, %1
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 27)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %18, -8796714831421723037
  %20 = xor i64 %12, %19
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 27)
  %22 = mul i64 %21, -7046029288634856825
  %23 = add i64 %22, -8796714831421723037
  %24 = xor i64 %9, %23
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_18(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i64, ptr %3, align 1
  %6 = getelementptr i8, ptr %0, i64 17
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = getelementptr i8, ptr %0, i64 16
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = mul i64 %5, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = mul i64 %4, -4417276706812531889
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %19, %1
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
  %31 = xor i64 %9, %30
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_19(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i64, ptr %3, align 1
  %6 = getelementptr i8, ptr %0, i64 18
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = getelementptr i8, ptr %0, i64 17
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr i8, ptr %0, i64 16
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = mul i64 %5, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = mul i64 %4, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = xor i64 %23, %1
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
  %38 = xor i64 %9, %37
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_20(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 16
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = load i64, ptr %0, align 1
  %7 = load i32, ptr %3, align 1
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, -7046029288634856825
  %10 = mul i64 %5, -4417276706812531889
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = mul i64 %6, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %15, %1
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 27)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %18, -8796714831421723037
  %20 = xor i64 %12, %19
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 27)
  %22 = mul i64 %21, -7046029288634856825
  %23 = add i64 %22, -8796714831421723037
  %24 = xor i64 %9, %23
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 23)
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, 1609587929392839161
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_21(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 16
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = load i64, ptr %0, align 1
  %7 = load i32, ptr %3, align 1
  %8 = getelementptr i8, ptr %0, i64 20
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = zext i32 %7 to i64
  %13 = mul i64 %12, -7046029288634856825
  %14 = mul i64 %5, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = mul i64 %6, -4417276706812531889
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %19, %1
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
  %32 = xor i64 %11, %31
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_22(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 16
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = load i64, ptr %0, align 1
  %7 = load i32, ptr %3, align 1
  %8 = getelementptr i8, ptr %0, i64 21
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = getelementptr i8, ptr %0, i64 20
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = zext i32 %7 to i64
  %17 = mul i64 %16, -7046029288634856825
  %18 = mul i64 %5, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = mul i64 %6, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = xor i64 %23, %1
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
  %39 = xor i64 %11, %38
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_23(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 16
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = load i64, ptr %0, align 1
  %7 = load i32, ptr %3, align 1
  %8 = getelementptr i8, ptr %0, i64 22
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = getelementptr i8, ptr %0, i64 21
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = getelementptr i8, ptr %0, i64 20
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = zext i32 %7 to i64
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %5, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %6, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = xor i64 %27, %1
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
  %46 = xor i64 %11, %45
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 11)
  %48 = mul i64 %47, -7046029288634856825
  %49 = lshr i64 %48, 33
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, -4417276706812531889
  %52 = lshr i64 %51, 29
  %53 = xor i64 %52, %51
  %54 = mul i64 %53, 1609587929392839161
  %55 = lshr i64 %54, 32
  %56 = xor i64 %55, %54
  ret i64 %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_24(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = mul i64 %3, -4417276706812531889
  %5 = tail call i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 31)
  %6 = mul i64 %5, -7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = xor i64 %6, %1
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 27)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %10, -8796714831421723037
  %12 = load i64, ptr %7, align 1
  %13 = mul i64 %12, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = xor i64 %15, %11
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 27)
  %19 = mul i64 %18, -7046029288634856825
  %20 = add i64 %19, -8796714831421723037
  %21 = load i64, ptr %16, align 1
  %22 = mul i64 %21, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %20
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_25(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %6, align 1
  %8 = getelementptr i8, ptr %0, i64 24
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = mul i64 %7, -4417276706812531889
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = mul i64 %5, -4417276706812531889
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 31)
  %17 = mul i64 %16, -7046029288634856825
  %18 = mul i64 %3, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = xor i64 %20, %1
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %17, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %14, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %11, %32
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_26(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %6, align 1
  %8 = getelementptr i8, ptr %0, i64 25
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = getelementptr i8, ptr %0, i64 24
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = mul i64 %7, -4417276706812531889
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = mul i64 %5, -4417276706812531889
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %3, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %1
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
  %40 = xor i64 %11, %39
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_27(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %6, align 1
  %8 = getelementptr i8, ptr %0, i64 26
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = getelementptr i8, ptr %0, i64 25
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = getelementptr i8, ptr %0, i64 24
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = mul i64 %7, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %5, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %3, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %28, %1
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
  %47 = xor i64 %11, %46
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_28(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 1
  %8 = load i64, ptr %0, align 1
  %9 = load i32, ptr %3, align 1
  %10 = zext i32 %9 to i64
  %11 = mul i64 %10, -7046029288634856825
  %12 = mul i64 %5, -4417276706812531889
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = mul i64 %7, -4417276706812531889
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 31)
  %17 = mul i64 %16, -7046029288634856825
  %18 = mul i64 %8, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = xor i64 %20, %1
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %17, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %14, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %11, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 23)
  %35 = mul i64 %34, -4417276706812531889
  %36 = add i64 %35, 1609587929392839161
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_29(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 1
  %8 = load i64, ptr %0, align 1
  %9 = load i32, ptr %3, align 1
  %10 = getelementptr i8, ptr %0, i64 28
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = zext i32 %9 to i64
  %15 = mul i64 %14, -7046029288634856825
  %16 = mul i64 %5, -4417276706812531889
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = mul i64 %7, -4417276706812531889
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %8, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_30(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 1
  %8 = load i64, ptr %0, align 1
  %9 = load i32, ptr %3, align 1
  %10 = getelementptr i8, ptr %0, i64 29
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr i8, ptr %0, i64 28
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = zext i32 %9 to i64
  %19 = mul i64 %18, -7046029288634856825
  %20 = mul i64 %5, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %7, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %8, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %28, %1
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
  %48 = xor i64 %13, %47
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_tail_31(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 1
  %8 = load i64, ptr %0, align 1
  %9 = load i32, ptr %3, align 1
  %10 = getelementptr i8, ptr %0, i64 30
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr i8, ptr %0, i64 29
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = getelementptr i8, ptr %0, i64 28
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = zext i32 %9 to i64
  %23 = mul i64 %22, -7046029288634856825
  %24 = mul i64 %5, -4417276706812531889
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = mul i64 %7, -4417276706812531889
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = mul i64 %8, -4417276706812531889
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = xor i64 %32, %1
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
  %55 = xor i64 %13, %54
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 11)
  %57 = mul i64 %56, -7046029288634856825
  %58 = lshr i64 %57, 33
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, -4417276706812531889
  %61 = lshr i64 %60, 29
  %62 = xor i64 %61, %60
  %63 = mul i64 %62, 1609587929392839161
  %64 = lshr i64 %63, 32
  %65 = xor i64 %64, %63
  ret i64 %65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_aligned_0(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %1, 33
  %4 = xor i64 %3, %1
  %5 = mul i64 %4, -4417276706812531889
  %6 = lshr i64 %5, 29
  %7 = xor i64 %6, %5
  %8 = mul i64 %7, 1609587929392839161
  %9 = lshr i64 %8, 32
  %10 = xor i64 %9, %8
  ret i64 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_1(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i64
  %5 = mul i64 %4, 2870177450012600261
  %6 = xor i64 %5, %1
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 11)
  %8 = mul i64 %7, -7046029288634856825
  %9 = lshr i64 %8, 33
  %10 = xor i64 %9, %8
  %11 = mul i64 %10, -4417276706812531889
  %12 = lshr i64 %11, 29
  %13 = xor i64 %12, %11
  %14 = mul i64 %13, 1609587929392839161
  %15 = lshr i64 %14, 32
  %16 = xor i64 %15, %14
  ret i64 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_2(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i64
  %6 = mul i64 %5, 2870177450012600261
  %7 = xor i64 %6, %1
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 11)
  %9 = mul i64 %8, -7046029288634856825
  %10 = load i8, ptr %3, align 1
  %11 = zext i8 %10 to i64
  %12 = mul i64 %11, 2870177450012600261
  %13 = xor i64 %12, %9
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 11)
  %15 = mul i64 %14, -7046029288634856825
  %16 = lshr i64 %15, 33
  %17 = xor i64 %16, %15
  %18 = mul i64 %17, -4417276706812531889
  %19 = lshr i64 %18, 29
  %20 = xor i64 %19, %18
  %21 = mul i64 %20, 1609587929392839161
  %22 = lshr i64 %21, 32
  %23 = xor i64 %22, %21
  ret i64 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_3(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i64
  %6 = mul i64 %5, 2870177450012600261
  %7 = xor i64 %6, %1
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 11)
  %9 = mul i64 %8, -7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %11 = load i8, ptr %3, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = xor i64 %13, %9
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 11)
  %16 = mul i64 %15, -7046029288634856825
  %17 = load i8, ptr %10, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = xor i64 %19, %16
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 11)
  %22 = mul i64 %21, -7046029288634856825
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_4(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, -7046029288634856825
  %6 = xor i64 %5, %1
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 23)
  %8 = mul i64 %7, -4417276706812531889
  %9 = add i64 %8, 1609587929392839161
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_5(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, -7046029288634856825
  %6 = xor i64 %5, %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 23)
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %9, 1609587929392839161
  %11 = load i8, ptr %7, align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_6(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, -7046029288634856825
  %6 = xor i64 %5, %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 23)
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %9, 1609587929392839161
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %12 = load i8, ptr %7, align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_7(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 1
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, -7046029288634856825
  %6 = xor i64 %5, %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 23)
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %9, 1609587929392839161
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %12 = load i8, ptr %7, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = xor i64 %14, %10
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 11)
  %17 = mul i64 %16, -7046029288634856825
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %19 = load i8, ptr %11, align 1
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = xor i64 %21, %17
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 11)
  %24 = mul i64 %23, -7046029288634856825
  %25 = load i8, ptr %18, align 1
  %26 = zext i8 %25 to i64
  %27 = mul i64 %26, 2870177450012600261
  %28 = xor i64 %27, %24
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = mul i64 %3, -4417276706812531889
  %5 = tail call i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 31)
  %6 = mul i64 %5, -7046029288634856825
  %7 = xor i64 %6, %1
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 27)
  %9 = mul i64 %8, -7046029288634856825
  %10 = add i64 %9, -8796714831421723037
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_9(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  %7 = mul i64 %6, 2870177450012600261
  %8 = mul i64 %3, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = xor i64 %10, %1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  %15 = xor i64 %7, %14
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_aligned_10(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = xor i64 %7, %1
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 27)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %10, -8796714831421723037
  %12 = getelementptr i8, ptr %0, i64 9
  %13 = load i8, ptr %3, align 1
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_aligned_11(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = xor i64 %7, %1
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 27)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %10, -8796714831421723037
  %12 = getelementptr i8, ptr %0, i64 9
  %13 = load i8, ptr %3, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = xor i64 %15, %11
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 11)
  %18 = mul i64 %17, -7046029288634856825
  %19 = getelementptr i8, ptr %0, i64 10
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_12(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i32, ptr %3, align 1
  %6 = zext i32 %5 to i64
  %7 = mul i64 %6, -7046029288634856825
  %8 = mul i64 %4, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = xor i64 %10, %1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  %15 = xor i64 %7, %14
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 23)
  %17 = mul i64 %16, -4417276706812531889
  %18 = add i64 %17, 1609587929392839161
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_13(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i32, ptr %3, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = zext i32 %5 to i64
  %11 = mul i64 %10, -7046029288634856825
  %12 = mul i64 %4, -4417276706812531889
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = xor i64 %14, %1
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 27)
  %17 = mul i64 %16, -7046029288634856825
  %18 = add i64 %17, -8796714831421723037
  %19 = xor i64 %11, %18
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 23)
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %21, 1609587929392839161
  %23 = xor i64 %9, %22
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_aligned_14(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i32, ptr %3, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = load i64, ptr %0, align 1
  %8 = mul i64 %7, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = xor i64 %10, %1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  %15 = xor i64 %6, %14
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 23)
  %17 = mul i64 %16, -4417276706812531889
  %18 = add i64 %17, 1609587929392839161
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %21 = load i8, ptr %19, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = xor i64 %23, %18
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_15(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i32, ptr %3, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = zext i32 %5 to i64
  %19 = mul i64 %18, -7046029288634856825
  %20 = mul i64 %4, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = xor i64 %22, %1
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 27)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  %27 = xor i64 %19, %26
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 23)
  %29 = mul i64 %28, -4417276706812531889
  %30 = add i64 %29, 1609587929392839161
  %31 = xor i64 %17, %30
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 11)
  %33 = mul i64 %32, -7046029288634856825
  %34 = xor i64 %13, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 11)
  %36 = mul i64 %35, -7046029288634856825
  %37 = xor i64 %9, %36
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_16(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = mul i64 %3, -4417276706812531889
  %5 = tail call i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 31)
  %6 = mul i64 %5, -7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = xor i64 %6, %1
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 27)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %10, -8796714831421723037
  %12 = load i64, ptr %7, align 1
  %13 = mul i64 %12, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %15, %11
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 27)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %18, -8796714831421723037
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_17(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i64, ptr %3, align 1
  %6 = getelementptr i8, ptr %0, i64 16
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = mul i64 %5, -4417276706812531889
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = mul i64 %4, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %15, %1
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 27)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %18, -8796714831421723037
  %20 = xor i64 %12, %19
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 27)
  %22 = mul i64 %21, -7046029288634856825
  %23 = add i64 %22, -8796714831421723037
  %24 = xor i64 %9, %23
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_18(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i64, ptr %3, align 1
  %6 = getelementptr i8, ptr %0, i64 17
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = getelementptr i8, ptr %0, i64 16
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = mul i64 %5, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = mul i64 %4, -4417276706812531889
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %19, %1
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
  %31 = xor i64 %9, %30
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_19(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i64, ptr %3, align 1
  %6 = getelementptr i8, ptr %0, i64 18
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = getelementptr i8, ptr %0, i64 17
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr i8, ptr %0, i64 16
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = mul i64 %5, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = mul i64 %4, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = xor i64 %23, %1
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
  %38 = xor i64 %9, %37
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_20(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 16
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = load i64, ptr %0, align 1
  %7 = load i32, ptr %3, align 1
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, -7046029288634856825
  %10 = mul i64 %5, -4417276706812531889
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = mul i64 %6, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %15, %1
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 27)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %18, -8796714831421723037
  %20 = xor i64 %12, %19
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 27)
  %22 = mul i64 %21, -7046029288634856825
  %23 = add i64 %22, -8796714831421723037
  %24 = xor i64 %9, %23
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 23)
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, 1609587929392839161
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_21(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 16
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = load i64, ptr %0, align 1
  %7 = load i32, ptr %3, align 1
  %8 = getelementptr i8, ptr %0, i64 20
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = zext i32 %7 to i64
  %13 = mul i64 %12, -7046029288634856825
  %14 = mul i64 %5, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = mul i64 %6, -4417276706812531889
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %19, %1
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
  %32 = xor i64 %11, %31
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_22(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 16
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = load i64, ptr %0, align 1
  %7 = load i32, ptr %3, align 1
  %8 = getelementptr i8, ptr %0, i64 21
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = getelementptr i8, ptr %0, i64 20
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = zext i32 %7 to i64
  %17 = mul i64 %16, -7046029288634856825
  %18 = mul i64 %5, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = mul i64 %6, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = xor i64 %23, %1
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
  %39 = xor i64 %11, %38
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_23(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 16
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = load i64, ptr %0, align 1
  %7 = load i32, ptr %3, align 1
  %8 = getelementptr i8, ptr %0, i64 22
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = getelementptr i8, ptr %0, i64 21
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = getelementptr i8, ptr %0, i64 20
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = zext i32 %7 to i64
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %5, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %6, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = xor i64 %27, %1
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
  %46 = xor i64 %11, %45
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 11)
  %48 = mul i64 %47, -7046029288634856825
  %49 = lshr i64 %48, 33
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, -4417276706812531889
  %52 = lshr i64 %51, 29
  %53 = xor i64 %52, %51
  %54 = mul i64 %53, 1609587929392839161
  %55 = lshr i64 %54, 32
  %56 = xor i64 %55, %54
  ret i64 %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_24(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = mul i64 %3, -4417276706812531889
  %5 = tail call i64 @llvm.fshl.i64(i64 %4, i64 %4, i64 31)
  %6 = mul i64 %5, -7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = xor i64 %6, %1
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 27)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %10, -8796714831421723037
  %12 = load i64, ptr %7, align 1
  %13 = mul i64 %12, -4417276706812531889
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = xor i64 %15, %11
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 27)
  %19 = mul i64 %18, -7046029288634856825
  %20 = add i64 %19, -8796714831421723037
  %21 = load i64, ptr %16, align 1
  %22 = mul i64 %21, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %20
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_25(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %6, align 1
  %8 = getelementptr i8, ptr %0, i64 24
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = mul i64 %7, -4417276706812531889
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = mul i64 %5, -4417276706812531889
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 31)
  %17 = mul i64 %16, -7046029288634856825
  %18 = mul i64 %3, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = xor i64 %20, %1
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %17, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %14, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %11, %32
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_26(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %6, align 1
  %8 = getelementptr i8, ptr %0, i64 25
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = getelementptr i8, ptr %0, i64 24
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = mul i64 %7, -4417276706812531889
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = mul i64 %5, -4417276706812531889
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %3, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %1
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
  %40 = xor i64 %11, %39
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_27(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %6, align 1
  %8 = getelementptr i8, ptr %0, i64 26
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i64
  %11 = mul i64 %10, 2870177450012600261
  %12 = getelementptr i8, ptr %0, i64 25
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = getelementptr i8, ptr %0, i64 24
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = mul i64 %7, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %5, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %3, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %28, %1
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
  %47 = xor i64 %11, %46
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_28(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 1
  %8 = load i64, ptr %0, align 1
  %9 = load i32, ptr %3, align 1
  %10 = zext i32 %9 to i64
  %11 = mul i64 %10, -7046029288634856825
  %12 = mul i64 %5, -4417276706812531889
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = mul i64 %7, -4417276706812531889
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 31)
  %17 = mul i64 %16, -7046029288634856825
  %18 = mul i64 %8, -4417276706812531889
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = xor i64 %20, %1
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %17, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %14, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %11, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 23)
  %35 = mul i64 %34, -4417276706812531889
  %36 = add i64 %35, 1609587929392839161
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_29(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 1
  %8 = load i64, ptr %0, align 1
  %9 = load i32, ptr %3, align 1
  %10 = getelementptr i8, ptr %0, i64 28
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = zext i32 %9 to i64
  %15 = mul i64 %14, -7046029288634856825
  %16 = mul i64 %5, -4417276706812531889
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = mul i64 %7, -4417276706812531889
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %8, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_30(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 1
  %8 = load i64, ptr %0, align 1
  %9 = load i32, ptr %3, align 1
  %10 = getelementptr i8, ptr %0, i64 29
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr i8, ptr %0, i64 28
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = zext i32 %9 to i64
  %19 = mul i64 %18, -7046029288634856825
  %20 = mul i64 %5, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %7, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %8, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %28, %1
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
  %48 = xor i64 %13, %47
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_aligned_31(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 1
  %8 = load i64, ptr %0, align 1
  %9 = load i32, ptr %3, align 1
  %10 = getelementptr i8, ptr %0, i64 30
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr i8, ptr %0, i64 29
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = getelementptr i8, ptr %0, i64 28
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = zext i32 %9 to i64
  %23 = mul i64 %22, -7046029288634856825
  %24 = mul i64 %5, -4417276706812531889
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = mul i64 %7, -4417276706812531889
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = mul i64 %8, -4417276706812531889
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = xor i64 %32, %1
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
  %55 = xor i64 %13, %54
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 11)
  %57 = mul i64 %56, -7046029288634856825
  %58 = lshr i64 %57, 33
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, -4417276706812531889
  %61 = lshr i64 %60, 29
  %62 = xor i64 %61, %60
  %63 = mul i64 %62, 1609587929392839161
  %64 = lshr i64 %63, 32
  %65 = xor i64 %64, %63
  ret i64 %65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
