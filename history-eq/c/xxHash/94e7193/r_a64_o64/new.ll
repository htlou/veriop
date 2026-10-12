; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrap_o64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrap_o64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

%struct.XXH_INLINE_XXH64_state_s = type { i64, i64, i64, i64, i64, [4 x i64], i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_xxh64_len0(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, 2870177450012600261
  %4 = lshr i64 %3, 33
  %5 = xor i64 %4, %3
  %6 = mul i64 %5, -4417276706812531889
  %7 = lshr i64 %6, 29
  %8 = xor i64 %7, %6
  %9 = mul i64 %8, 1609587929392839161
  %10 = lshr i64 %9, 32
  %11 = xor i64 %10, %9
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len1(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600262
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i64
  %6 = mul i64 %5, 2870177450012600261
  %7 = xor i64 %6, %3
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len2(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600263
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i64
  %7 = mul i64 %6, 2870177450012600261
  %8 = xor i64 %7, %3
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len3(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600264
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i64
  %7 = mul i64 %6, 2870177450012600261
  %8 = xor i64 %7, %3
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 11)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len4(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600265
  %4 = load i32, ptr %0, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = xor i64 %6, %3
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len5(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600266
  %4 = load i32, ptr %0, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = xor i64 %6, %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 4
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len6(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600267
  %4 = load i32, ptr %0, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = xor i64 %6, %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %9 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 23)
  %10 = mul i64 %9, -4417276706812531889
  %11 = add i64 %10, 1609587929392839161
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 5
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len7(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600268
  %4 = load i32, ptr %0, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = xor i64 %6, %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %9 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 23)
  %10 = mul i64 %9, -4417276706812531889
  %11 = add i64 %10, 1609587929392839161
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %13 = load i8, ptr %8, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = xor i64 %15, %11
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 11)
  %18 = mul i64 %17, -7046029288634856825
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 6
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
define dso_local i64 @target_xxh64_len8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600269
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = xor i64 %7, %3
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len9(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  %7 = mul i64 %6, 2870177450012600261
  %8 = mul i64 %3, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %1, 2870177450012600270
  %12 = xor i64 %10, %11
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  %16 = xor i64 %7, %15
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len10(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = add i64 %1, 2870177450012600271
  %9 = xor i64 %7, %8
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = getelementptr i8, ptr %0, i64 9
  %14 = load i8, ptr %3, align 1
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len11(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = add i64 %1, 2870177450012600272
  %9 = xor i64 %7, %8
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = getelementptr i8, ptr %0, i64 9
  %14 = load i8, ptr %3, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = xor i64 %16, %12
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 11)
  %19 = mul i64 %18, -7046029288634856825
  %20 = getelementptr i8, ptr %0, i64 10
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len12(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %0, align 1
  %5 = load i32, ptr %3, align 1
  %6 = zext i32 %5 to i64
  %7 = mul i64 %6, -7046029288634856825
  %8 = mul i64 %4, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %1, 2870177450012600273
  %12 = xor i64 %10, %11
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  %16 = xor i64 %7, %15
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len13(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %15 = add i64 %1, 2870177450012600274
  %16 = xor i64 %14, %15
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 27)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %18, -8796714831421723037
  %20 = xor i64 %11, %19
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 23)
  %22 = mul i64 %21, -4417276706812531889
  %23 = add i64 %22, 1609587929392839161
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len14(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i32, ptr %3, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = load i64, ptr %0, align 1
  %8 = mul i64 %7, -4417276706812531889
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %1, 2870177450012600275
  %12 = xor i64 %10, %11
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  %16 = xor i64 %6, %15
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 23)
  %18 = mul i64 %17, -4417276706812531889
  %19 = add i64 %18, 1609587929392839161
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 13
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len15(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %23 = add i64 %1, 2870177450012600276
  %24 = xor i64 %22, %23
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  %28 = xor i64 %19, %27
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 23)
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, 1609587929392839161
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
define dso_local i64 @target_xxh64_len16(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600277
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len17(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %16 = add i64 %1, 2870177450012600278
  %17 = xor i64 %15, %16
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 27)
  %19 = mul i64 %18, -7046029288634856825
  %20 = add i64 %19, -8796714831421723037
  %21 = xor i64 %12, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %9, %24
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len18(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %20 = add i64 %1, 2870177450012600279
  %21 = xor i64 %19, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %16, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %13, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 11)
  %31 = mul i64 %30, -7046029288634856825
  %32 = xor i64 %9, %31
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
define dso_local i64 @target_xxh64_len19(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %24 = add i64 %1, 2870177450012600280
  %25 = xor i64 %23, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %20, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %17, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 11)
  %35 = mul i64 %34, -7046029288634856825
  %36 = xor i64 %13, %35
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 11)
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %9, %38
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
define dso_local i64 @target_xxh64_len20(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %16 = add i64 %1, 2870177450012600281
  %17 = xor i64 %15, %16
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 27)
  %19 = mul i64 %18, -7046029288634856825
  %20 = add i64 %19, -8796714831421723037
  %21 = xor i64 %12, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %9, %24
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len21(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %20 = add i64 %1, 2870177450012600282
  %21 = xor i64 %19, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  %25 = xor i64 %16, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %13, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 23)
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, 1609587929392839161
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
define dso_local i64 @target_xxh64_len22(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %24 = add i64 %1, 2870177450012600283
  %25 = xor i64 %23, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = xor i64 %20, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %17, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 23)
  %35 = mul i64 %34, -4417276706812531889
  %36 = add i64 %35, 1609587929392839161
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
define dso_local i64 @target_xxh64_len23(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %28 = add i64 %1, 2870177450012600284
  %29 = xor i64 %27, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = xor i64 %24, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = xor i64 %21, %36
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 23)
  %39 = mul i64 %38, -4417276706812531889
  %40 = add i64 %39, 1609587929392839161
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
define dso_local i64 @target_xxh64_len24(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600285
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i64, ptr %8, align 1
  %14 = mul i64 %13, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len25(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %21 = add i64 %1, 2870177450012600286
  %22 = xor i64 %20, %21
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 27)
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = xor i64 %17, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = xor i64 %14, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %11, %33
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len26(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %25 = add i64 %1, 2870177450012600287
  %26 = xor i64 %24, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = xor i64 %21, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %18, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %15, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 11)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %11, %40
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
define dso_local i64 @target_xxh64_len27(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %29 = add i64 %1, 2870177450012600288
  %30 = xor i64 %28, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %25, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %22, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 27)
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = xor i64 %19, %41
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 11)
  %44 = mul i64 %43, -7046029288634856825
  %45 = xor i64 %15, %44
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 11)
  %47 = mul i64 %46, -7046029288634856825
  %48 = xor i64 %11, %47
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
define dso_local i64 @target_xxh64_len28(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %21 = add i64 %1, 2870177450012600289
  %22 = xor i64 %20, %21
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 27)
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = xor i64 %17, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = xor i64 %14, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %11, %33
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len29(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %25 = add i64 %1, 2870177450012600290
  %26 = xor i64 %24, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = xor i64 %21, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %18, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %15, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 23)
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, 1609587929392839161
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len30(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %29 = add i64 %1, 2870177450012600291
  %30 = xor i64 %28, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %25, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %22, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 27)
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = xor i64 %19, %41
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 23)
  %44 = mul i64 %43, -4417276706812531889
  %45 = add i64 %44, 1609587929392839161
  %46 = xor i64 %17, %45
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 11)
  %48 = mul i64 %47, -7046029288634856825
  %49 = xor i64 %13, %48
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len31(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %33 = add i64 %1, 2870177450012600292
  %34 = xor i64 %32, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %29, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 27)
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = xor i64 %26, %41
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 27)
  %44 = mul i64 %43, -7046029288634856825
  %45 = add i64 %44, -8796714831421723037
  %46 = xor i64 %23, %45
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 23)
  %48 = mul i64 %47, -4417276706812531889
  %49 = add i64 %48, 1609587929392839161
  %50 = xor i64 %21, %49
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 11)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %17, %52
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 11)
  %55 = mul i64 %54, -7046029288634856825
  %56 = xor i64 %13, %55
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len32(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  %6 = load i64, ptr %0, align 1
  %7 = mul i64 %6, -4417276706812531889
  %8 = add i64 %7, %3
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 1
  %13 = mul i64 %12, -4417276706812531889
  %14 = add i64 %13, %4
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i64, ptr %17, align 1
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %1
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load i64, ptr %23, align 1
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %5
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 1)
  %30 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 7)
  %31 = add i64 %30, %29
  %32 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 12)
  %33 = add i64 %31, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 18)
  %35 = add i64 %33, %34
  %36 = mul i64 %9, -2381459717836149591
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %35, %38
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = mul i64 %15, -2381459717836149591
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 31)
  %44 = mul i64 %43, -7046029288634856825
  %45 = xor i64 %41, %44
  %46 = mul i64 %45, -7046029288634856825
  %47 = add i64 %46, -8796714831421723037
  %48 = mul i64 %21, -2381459717836149591
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 31)
  %50 = mul i64 %49, -7046029288634856825
  %51 = xor i64 %47, %50
  %52 = mul i64 %51, -7046029288634856825
  %53 = add i64 %52, -8796714831421723037
  %54 = mul i64 %27, -2381459717836149591
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 31)
  %56 = mul i64 %55, -7046029288634856825
  %57 = xor i64 %53, %56
  %58 = mul i64 %57, -7046029288634856825
  %59 = add i64 %58, -8796714831421723005
  %60 = lshr i64 %59, 33
  %61 = xor i64 %60, %59
  %62 = mul i64 %61, -4417276706812531889
  %63 = lshr i64 %62, 29
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, 1609587929392839161
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  ret i64 %67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len33(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i64, ptr %6, align 1
  %8 = mul i64 %7, -4417276706812531889
  %9 = add i64 %5, %8
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load i64, ptr %12, align 1
  %14 = mul i64 %13, -4417276706812531889
  %15 = add i64 %14, %1
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 31)
  %17 = mul i64 %16, -7046029288634856825
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i64, ptr %18, align 1
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %4, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = load i64, ptr %0, align 1
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %3, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr i8, ptr %0, i64 32
  %30 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 1)
  %31 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 7)
  %32 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 12)
  %33 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 18)
  %34 = add i64 %32, %33
  %35 = add i64 %34, %31
  %36 = add i64 %35, %30
  %37 = mul i64 %27, -2381459717836149591
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = xor i64 %36, %39
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = mul i64 %22, -2381459717836149591
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 31)
  %45 = mul i64 %44, -7046029288634856825
  %46 = xor i64 %42, %45
  %47 = mul i64 %46, -7046029288634856825
  %48 = add i64 %47, -8796714831421723037
  %49 = mul i64 %16, -2381459717836149591
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  %52 = xor i64 %48, %51
  %53 = mul i64 %52, -7046029288634856825
  %54 = add i64 %53, -8796714831421723037
  %55 = mul i64 %10, -2381459717836149591
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = xor i64 %54, %57
  %59 = mul i64 %58, -7046029288634856825
  %60 = add i64 %59, -8796714831421723004
  %61 = load i8, ptr %29, align 1
  %62 = zext i8 %61 to i64
  %63 = mul i64 %62, 2870177450012600261
  %64 = xor i64 %63, %60
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 11)
  %66 = mul i64 %65, -7046029288634856825
  %67 = lshr i64 %66, 33
  %68 = xor i64 %67, %66
  %69 = mul i64 %68, -4417276706812531889
  %70 = lshr i64 %69, 29
  %71 = xor i64 %70, %69
  %72 = mul i64 %71, 1609587929392839161
  %73 = lshr i64 %72, 32
  %74 = xor i64 %73, %72
  ret i64 %74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len39(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i64, ptr %6, align 1
  %8 = mul i64 %7, -4417276706812531889
  %9 = add i64 %5, %8
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load i64, ptr %12, align 1
  %14 = mul i64 %13, -4417276706812531889
  %15 = add i64 %14, %1
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 31)
  %17 = mul i64 %16, -7046029288634856825
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i64, ptr %18, align 1
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %4, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = load i64, ptr %0, align 1
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %3, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr i8, ptr %0, i64 32
  %30 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 1)
  %31 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 7)
  %32 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 12)
  %33 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 18)
  %34 = add i64 %32, %33
  %35 = add i64 %34, %31
  %36 = add i64 %35, %30
  %37 = mul i64 %27, -2381459717836149591
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = xor i64 %36, %39
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = mul i64 %22, -2381459717836149591
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 31)
  %45 = mul i64 %44, -7046029288634856825
  %46 = xor i64 %42, %45
  %47 = mul i64 %46, -7046029288634856825
  %48 = add i64 %47, -8796714831421723037
  %49 = mul i64 %16, -2381459717836149591
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  %52 = xor i64 %48, %51
  %53 = mul i64 %52, -7046029288634856825
  %54 = add i64 %53, -8796714831421723037
  %55 = mul i64 %10, -2381459717836149591
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = xor i64 %54, %57
  %59 = mul i64 %58, -7046029288634856825
  %60 = add i64 %59, -8796714831421722998
  %61 = load i32, ptr %29, align 1
  %62 = zext i32 %61 to i64
  %63 = mul i64 %62, -7046029288634856825
  %64 = xor i64 %60, %63
  %65 = getelementptr i8, ptr %0, i64 36
  %66 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 23)
  %67 = mul i64 %66, -4417276706812531889
  %68 = add i64 %67, 1609587929392839161
  %69 = getelementptr i8, ptr %0, i64 37
  %70 = load i8, ptr %65, align 1
  %71 = zext i8 %70 to i64
  %72 = mul i64 %71, 2870177450012600261
  %73 = xor i64 %72, %68
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 11)
  %75 = mul i64 %74, -7046029288634856825
  %76 = getelementptr i8, ptr %0, i64 38
  %77 = load i8, ptr %69, align 1
  %78 = zext i8 %77 to i64
  %79 = mul i64 %78, 2870177450012600261
  %80 = xor i64 %79, %75
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 11)
  %82 = mul i64 %81, -7046029288634856825
  %83 = load i8, ptr %76, align 1
  %84 = zext i8 %83 to i64
  %85 = mul i64 %84, 2870177450012600261
  %86 = xor i64 %85, %82
  %87 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 11)
  %88 = mul i64 %87, -7046029288634856825
  %89 = lshr i64 %88, 33
  %90 = xor i64 %89, %88
  %91 = mul i64 %90, -4417276706812531889
  %92 = lshr i64 %91, 29
  %93 = xor i64 %92, %91
  %94 = mul i64 %93, 1609587929392839161
  %95 = lshr i64 %94, 32
  %96 = xor i64 %95, %94
  ret i64 %96
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len47(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 40
  %4 = getelementptr i8, ptr %0, i64 32
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %6, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i64, ptr %8, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i64, ptr %10, align 1
  %12 = load i64, ptr %0, align 1
  %13 = load i32, ptr %3, align 1
  %14 = getelementptr i8, ptr %0, i64 46
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = getelementptr i8, ptr %0, i64 45
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = getelementptr i8, ptr %0, i64 44
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = mul i64 %24, 2870177450012600261
  %26 = zext i32 %13 to i64
  %27 = mul i64 %26, -7046029288634856825
  %28 = mul i64 %5, -4417276706812531889
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = mul i64 %7, -4417276706812531889
  %32 = add i64 %31, %1
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 12)
  %36 = add i64 %1, 7046029288634856825
  %37 = mul i64 %9, -4417276706812531889
  %38 = add i64 %36, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 18)
  %42 = add i64 %35, %41
  %43 = add i64 %1, -4417276706812531889
  %44 = mul i64 %11, -4417276706812531889
  %45 = add i64 %43, %44
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31)
  %47 = mul i64 %46, -7046029288634856825
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 7)
  %49 = add i64 %42, %48
  %50 = add i64 %1, 6983438078262162902
  %51 = mul i64 %12, -4417276706812531889
  %52 = add i64 %50, %51
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 1)
  %56 = add i64 %49, %55
  %57 = mul i64 %53, -2381459717836149591
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  %60 = xor i64 %56, %59
  %61 = mul i64 %60, -7046029288634856825
  %62 = add i64 %61, -8796714831421723037
  %63 = mul i64 %46, -2381459717836149591
  %64 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 31)
  %65 = mul i64 %64, -7046029288634856825
  %66 = xor i64 %62, %65
  %67 = mul i64 %66, -7046029288634856825
  %68 = add i64 %67, -8796714831421723037
  %69 = mul i64 %33, -2381459717836149591
  %70 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 31)
  %71 = mul i64 %70, -7046029288634856825
  %72 = xor i64 %68, %71
  %73 = mul i64 %72, -7046029288634856825
  %74 = add i64 %73, -8796714831421723037
  %75 = mul i64 %39, -2381459717836149591
  %76 = tail call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 31)
  %77 = mul i64 %76, -7046029288634856825
  %78 = xor i64 %74, %77
  %79 = mul i64 %78, -7046029288634856825
  %80 = add i64 %79, -8796714831421722990
  %81 = xor i64 %30, %80
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 27)
  %83 = mul i64 %82, -7046029288634856825
  %84 = add i64 %83, -8796714831421723037
  %85 = xor i64 %27, %84
  %86 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 23)
  %87 = mul i64 %86, -4417276706812531889
  %88 = add i64 %87, 1609587929392839161
  %89 = xor i64 %25, %88
  %90 = tail call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 11)
  %91 = mul i64 %90, -7046029288634856825
  %92 = xor i64 %21, %91
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 11)
  %94 = mul i64 %93, -7046029288634856825
  %95 = xor i64 %17, %94
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 11)
  %97 = mul i64 %96, -7046029288634856825
  %98 = lshr i64 %97, 33
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, -4417276706812531889
  %101 = lshr i64 %100, 29
  %102 = xor i64 %101, %100
  %103 = mul i64 %102, 1609587929392839161
  %104 = lshr i64 %103, 32
  %105 = xor i64 %104, %103
  ret i64 %105
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len63(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 56
  %4 = getelementptr i8, ptr %0, i64 48
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr i8, ptr %0, i64 40
  %7 = load i64, ptr %6, align 1
  %8 = getelementptr i8, ptr %0, i64 32
  %9 = load i64, ptr %8, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 1
  %16 = load i64, ptr %0, align 1
  %17 = load i32, ptr %3, align 1
  %18 = getelementptr i8, ptr %0, i64 62
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = getelementptr i8, ptr %0, i64 61
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = mul i64 %24, 2870177450012600261
  %26 = getelementptr i8, ptr %0, i64 60
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i64
  %29 = mul i64 %28, 2870177450012600261
  %30 = zext i32 %17 to i64
  %31 = mul i64 %30, -7046029288634856825
  %32 = mul i64 %5, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = mul i64 %7, -4417276706812531889
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  %38 = mul i64 %9, -4417276706812531889
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = mul i64 %11, -4417276706812531889
  %42 = add i64 %41, %1
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 31)
  %44 = mul i64 %43, -7046029288634856825
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 12)
  %46 = add i64 %1, 7046029288634856825
  %47 = mul i64 %13, -4417276706812531889
  %48 = add i64 %46, %47
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 31)
  %50 = mul i64 %49, -7046029288634856825
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 18)
  %52 = add i64 %45, %51
  %53 = add i64 %1, -4417276706812531889
  %54 = mul i64 %15, -4417276706812531889
  %55 = add i64 %53, %54
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 7)
  %59 = add i64 %52, %58
  %60 = add i64 %1, 6983438078262162902
  %61 = mul i64 %16, -4417276706812531889
  %62 = add i64 %60, %61
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 1)
  %66 = add i64 %59, %65
  %67 = mul i64 %63, -2381459717836149591
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = xor i64 %66, %69
  %71 = mul i64 %70, -7046029288634856825
  %72 = add i64 %71, -8796714831421723037
  %73 = mul i64 %56, -2381459717836149591
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 31)
  %75 = mul i64 %74, -7046029288634856825
  %76 = xor i64 %72, %75
  %77 = mul i64 %76, -7046029288634856825
  %78 = add i64 %77, -8796714831421723037
  %79 = mul i64 %43, -2381459717836149591
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 31)
  %81 = mul i64 %80, -7046029288634856825
  %82 = xor i64 %78, %81
  %83 = mul i64 %82, -7046029288634856825
  %84 = add i64 %83, -8796714831421723037
  %85 = mul i64 %49, -2381459717836149591
  %86 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 31)
  %87 = mul i64 %86, -7046029288634856825
  %88 = xor i64 %84, %87
  %89 = mul i64 %88, -7046029288634856825
  %90 = add i64 %89, -8796714831421722974
  %91 = xor i64 %40, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 27)
  %93 = mul i64 %92, -7046029288634856825
  %94 = add i64 %93, -8796714831421723037
  %95 = xor i64 %37, %94
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 27)
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  %99 = xor i64 %34, %98
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 27)
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  %103 = xor i64 %31, %102
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 23)
  %105 = mul i64 %104, -4417276706812531889
  %106 = add i64 %105, 1609587929392839161
  %107 = xor i64 %29, %106
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 11)
  %109 = mul i64 %108, -7046029288634856825
  %110 = xor i64 %25, %109
  %111 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 11)
  %112 = mul i64 %111, -7046029288634856825
  %113 = xor i64 %21, %112
  %114 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 11)
  %115 = mul i64 %114, -7046029288634856825
  %116 = lshr i64 %115, 33
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, -4417276706812531889
  %119 = lshr i64 %118, 29
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, 1609587929392839161
  %122 = lshr i64 %121, 32
  %123 = xor i64 %122, %121
  ret i64 %123
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %4 = load i64, ptr %3, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i64, ptr %6, align 1
  %8 = mul i64 %7, -4417276706812531889
  %9 = add i64 %1, 7046029288634856825
  %10 = add i64 %8, %9
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = add i64 %5, %12
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = mul i64 %18, -4417276706812531889
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 1
  %22 = mul i64 %21, -4417276706812531889
  %23 = add i64 %22, %1
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %19, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %30 = load i64, ptr %29, align 1
  %31 = mul i64 %30, -4417276706812531889
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %33 = load i64, ptr %32, align 1
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %1, -4417276706812531889
  %36 = add i64 %34, %35
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = add i64 %31, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = load i64, ptr %16, align 1
  %43 = mul i64 %42, -4417276706812531889
  %44 = load i64, ptr %0, align 1
  %45 = mul i64 %44, -4417276706812531889
  %46 = add i64 %1, 6983438078262162902
  %47 = add i64 %45, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 31)
  %49 = mul i64 %48, -7046029288634856825
  %50 = add i64 %43, %49
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 1)
  %54 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 7)
  %55 = add i64 %54, %53
  %56 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 12)
  %57 = add i64 %55, %56
  %58 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 18)
  %59 = add i64 %57, %58
  %60 = mul i64 %51, -2381459717836149591
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 31)
  %62 = mul i64 %61, -7046029288634856825
  %63 = xor i64 %59, %62
  %64 = mul i64 %63, -7046029288634856825
  %65 = add i64 %64, -8796714831421723037
  %66 = mul i64 %40, -2381459717836149591
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 31)
  %68 = mul i64 %67, -7046029288634856825
  %69 = xor i64 %65, %68
  %70 = mul i64 %69, -7046029288634856825
  %71 = add i64 %70, -8796714831421723037
  %72 = mul i64 %27, -2381459717836149591
  %73 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 31)
  %74 = mul i64 %73, -7046029288634856825
  %75 = xor i64 %71, %74
  %76 = mul i64 %75, -7046029288634856825
  %77 = add i64 %76, -8796714831421723037
  %78 = mul i64 %14, -2381459717836149591
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 31)
  %80 = mul i64 %79, -7046029288634856825
  %81 = xor i64 %77, %80
  %82 = mul i64 %81, -7046029288634856825
  %83 = add i64 %82, -8796714831421722973
  %84 = lshr i64 %83, 33
  %85 = xor i64 %84, %83
  %86 = mul i64 %85, -4417276706812531889
  %87 = lshr i64 %86, 29
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, 1609587929392839161
  %90 = lshr i64 %89, 32
  %91 = xor i64 %90, %89
  ret i64 %91
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len95(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i64 88
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = load i64, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %7 = load i64, ptr %6, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = load i64, ptr %8, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load i64, ptr %12, align 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %15 = load i64, ptr %14, align 1
  %16 = load i64, ptr %0, align 1
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load i64, ptr %19, align 1
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %22 = load i64, ptr %21, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load i64, ptr %23, align 1
  %25 = load i32, ptr %3, align 1
  %26 = getelementptr i8, ptr %0, i64 94
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i64
  %29 = mul i64 %28, 2870177450012600261
  %30 = getelementptr i8, ptr %0, i64 93
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i64
  %33 = mul i64 %32, 2870177450012600261
  %34 = getelementptr i8, ptr %0, i64 92
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i64
  %37 = mul i64 %36, 2870177450012600261
  %38 = zext i32 %25 to i64
  %39 = mul i64 %38, -7046029288634856825
  %40 = mul i64 %5, -4417276706812531889
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 31)
  %42 = mul i64 %41, -7046029288634856825
  %43 = mul i64 %7, -4417276706812531889
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 31)
  %45 = mul i64 %44, -7046029288634856825
  %46 = mul i64 %9, -4417276706812531889
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 31)
  %48 = mul i64 %47, -7046029288634856825
  %49 = mul i64 %11, -4417276706812531889
  %50 = mul i64 %13, -4417276706812531889
  %51 = add i64 %1, -4417276706812531889
  %52 = add i64 %50, %51
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %49, %54
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 7)
  %59 = mul i64 %15, -4417276706812531889
  %60 = mul i64 %16, -4417276706812531889
  %61 = add i64 %1, 6983438078262162902
  %62 = add i64 %60, %61
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = add i64 %59, %64
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 31)
  %67 = mul i64 %66, -7046029288634856825
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 1)
  %69 = add i64 %58, %68
  %70 = mul i64 %18, -4417276706812531889
  %71 = mul i64 %20, -4417276706812531889
  %72 = add i64 %71, %1
  %73 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 31)
  %74 = mul i64 %73, -7046029288634856825
  %75 = add i64 %70, %74
  %76 = tail call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 31)
  %77 = mul i64 %76, -7046029288634856825
  %78 = tail call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 12)
  %79 = add i64 %69, %78
  %80 = mul i64 %22, -4417276706812531889
  %81 = mul i64 %24, -4417276706812531889
  %82 = add i64 %1, 7046029288634856825
  %83 = add i64 %81, %82
  %84 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 31)
  %85 = mul i64 %84, -7046029288634856825
  %86 = add i64 %80, %85
  %87 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 31)
  %88 = mul i64 %87, -7046029288634856825
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 18)
  %90 = add i64 %79, %89
  %91 = mul i64 %66, -2381459717836149591
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = xor i64 %90, %93
  %95 = mul i64 %94, -7046029288634856825
  %96 = add i64 %95, -8796714831421723037
  %97 = mul i64 %56, -2381459717836149591
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 31)
  %99 = mul i64 %98, -7046029288634856825
  %100 = xor i64 %96, %99
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  %103 = mul i64 %76, -2381459717836149591
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 31)
  %105 = mul i64 %104, -7046029288634856825
  %106 = xor i64 %102, %105
  %107 = mul i64 %106, -7046029288634856825
  %108 = add i64 %107, -8796714831421723037
  %109 = mul i64 %87, -2381459717836149591
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 31)
  %111 = mul i64 %110, -7046029288634856825
  %112 = xor i64 %108, %111
  %113 = mul i64 %112, -7046029288634856825
  %114 = add i64 %113, -8796714831421722942
  %115 = xor i64 %48, %114
  %116 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 27)
  %117 = mul i64 %116, -7046029288634856825
  %118 = add i64 %117, -8796714831421723037
  %119 = xor i64 %45, %118
  %120 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 27)
  %121 = mul i64 %120, -7046029288634856825
  %122 = add i64 %121, -8796714831421723037
  %123 = xor i64 %42, %122
  %124 = tail call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 27)
  %125 = mul i64 %124, -7046029288634856825
  %126 = add i64 %125, -8796714831421723037
  %127 = xor i64 %39, %126
  %128 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 23)
  %129 = mul i64 %128, -4417276706812531889
  %130 = add i64 %129, 1609587929392839161
  %131 = xor i64 %37, %130
  %132 = tail call i64 @llvm.fshl.i64(i64 %131, i64 %131, i64 11)
  %133 = mul i64 %132, -7046029288634856825
  %134 = xor i64 %33, %133
  %135 = tail call i64 @llvm.fshl.i64(i64 %134, i64 %134, i64 11)
  %136 = mul i64 %135, -7046029288634856825
  %137 = xor i64 %29, %136
  %138 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 11)
  %139 = mul i64 %138, -7046029288634856825
  %140 = lshr i64 %139, 33
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, -4417276706812531889
  %143 = lshr i64 %142, 29
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587929392839161
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  ret i64 %147
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_7_8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %11, ptr noundef nonnull readonly align 1 dereferenceable(7) %0, i64 7, i1 false)
  br label %14

14:                                               ; preds = %13, %2
  %15 = phi i32 [ 0, %2 ], [ 7, %13 ]
  %16 = phi i64 [ 8, %2 ], [ 15, %13 ]
  store i64 %16, ptr %3, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 %18
  %21 = load i64, ptr %19, align 1
  store i64 %21, ptr %20, align 1
  %22 = or disjoint i32 %15, 8
  store i32 %22, ptr %17, align 8
  %23 = add i64 %1, 2870177450012600261
  %24 = add i64 %23, %16
  %25 = load i64, ptr %11, align 8
  %26 = mul i64 %25, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %30 = xor i64 %28, %24
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = add nsw i64 %16, -8
  %35 = icmp samesign ugt i64 %34, 3
  br i1 %35, label %36, label %46

36:                                               ; preds = %14
  %37 = load i32, ptr %29, align 8
  %38 = zext i32 %37 to i64
  %39 = mul i64 %38, -7046029288634856825
  %40 = xor i64 %39, %33
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %42 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 23)
  %43 = mul i64 %42, -4417276706812531889
  %44 = add i64 %43, 1609587929392839161
  %45 = add nsw i64 %16, -12
  br label %46

46:                                               ; preds = %36, %14
  %47 = phi i64 [ %45, %36 ], [ %34, %14 ]
  %48 = phi ptr [ %41, %36 ], [ %29, %14 ]
  %49 = phi i64 [ %44, %36 ], [ %33, %14 ]
  %50 = icmp eq i64 %47, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %46, %51
  %52 = phi i64 [ %61, %51 ], [ %49, %46 ]
  %53 = phi ptr [ %55, %51 ], [ %48, %46 ]
  %54 = phi i64 [ %62, %51 ], [ %47, %46 ]
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 1
  %56 = load i8, ptr %53, align 1
  %57 = zext i8 %56 to i64
  %58 = mul i64 %57, 2870177450012600261
  %59 = xor i64 %58, %52
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 11)
  %61 = mul i64 %60, -7046029288634856825
  %62 = add nsw i64 %54, -1
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %51

64:                                               ; preds = %51, %46
  %65 = phi i64 [ %49, %46 ], [ %61, %51 ]
  %66 = lshr i64 %65, 33
  %67 = xor i64 %66, %65
  %68 = mul i64 %67, -4417276706812531889
  %69 = lshr i64 %68, 29
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, 1609587929392839161
  %72 = lshr i64 %71, 32
  %73 = xor i64 %72, %71
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  ret i64 %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_13_18(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %11, ptr noundef nonnull readonly align 1 dereferenceable(13) %0, i64 13, i1 false)
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 0, %2 ], [ 13, %13 ]
  %16 = phi i64 [ 18, %2 ], [ 31, %13 ]
  store i64 %16, ptr %3, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %20, ptr noundef nonnull readonly align 1 dereferenceable(18) %19, i64 18, i1 false)
  %21 = or disjoint i32 %15, 18
  store i32 %21, ptr %17, align 8
  %22 = add i64 %1, 2870177450012600261
  %23 = add i64 %22, %16
  %24 = load i64, ptr %11, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %29 = xor i64 %27, %23
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = add nsw i64 %16, -8
  %34 = icmp samesign ugt i64 %33, 7
  br i1 %34, label %35, label %58

35:                                               ; preds = %14
  %36 = load i64, ptr %28, align 8
  %37 = mul i64 %36, -4417276706812531889
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %41 = xor i64 %39, %32
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 27)
  %43 = mul i64 %42, -7046029288634856825
  %44 = add i64 %43, -8796714831421723037
  %45 = add nsw i64 %16, -16
  %46 = icmp samesign ugt i64 %45, 7
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = load i64, ptr %40, align 8
  %49 = mul i64 %48, -4417276706812531889
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %53 = xor i64 %51, %44
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 27)
  %55 = mul i64 %54, -7046029288634856825
  %56 = add i64 %55, -8796714831421723037
  %57 = add nsw i64 %16, -24
  br label %58

58:                                               ; preds = %47, %35, %14
  %59 = phi ptr [ %11, %14 ], [ %28, %35 ], [ %40, %47 ]
  %60 = phi i64 [ %16, %14 ], [ %33, %35 ], [ %45, %47 ]
  %61 = phi ptr [ %28, %14 ], [ %40, %35 ], [ %52, %47 ]
  %62 = phi i64 [ %32, %14 ], [ %44, %35 ], [ %56, %47 ]
  %63 = phi i64 [ %33, %14 ], [ %45, %35 ], [ %57, %47 ]
  %64 = icmp samesign ugt i64 %63, 3
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load i32, ptr %61, align 1
  %67 = zext i32 %66 to i64
  %68 = mul i64 %67, -7046029288634856825
  %69 = xor i64 %68, %62
  %70 = getelementptr inbounds nuw i8, ptr %59, i64 12
  %71 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 23)
  %72 = mul i64 %71, -4417276706812531889
  %73 = add i64 %72, 1609587929392839161
  %74 = add nsw i64 %60, -12
  br label %75

75:                                               ; preds = %65, %58
  %76 = phi i64 [ %74, %65 ], [ %63, %58 ]
  %77 = phi ptr [ %70, %65 ], [ %61, %58 ]
  %78 = phi i64 [ %73, %65 ], [ %62, %58 ]
  %79 = icmp eq i64 %76, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %75, %80
  %81 = phi i64 [ %90, %80 ], [ %78, %75 ]
  %82 = phi ptr [ %84, %80 ], [ %77, %75 ]
  %83 = phi i64 [ %91, %80 ], [ %76, %75 ]
  %84 = getelementptr inbounds nuw i8, ptr %82, i64 1
  %85 = load i8, ptr %82, align 1
  %86 = zext i8 %85 to i64
  %87 = mul i64 %86, 2870177450012600261
  %88 = xor i64 %87, %81
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 11)
  %90 = mul i64 %89, -7046029288634856825
  %91 = add nsw i64 %83, -1
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %80

93:                                               ; preds = %80, %75
  %94 = phi i64 [ %78, %75 ], [ %90, %80 ]
  %95 = lshr i64 %94, 33
  %96 = xor i64 %95, %94
  %97 = mul i64 %96, -4417276706812531889
  %98 = lshr i64 %97, 29
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587929392839161
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  ret i64 %102
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_10_30(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %85, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %11, ptr noundef nonnull readonly align 1 dereferenceable(10) %0, i64 10, i1 false)
  store i32 10, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i64 40, ptr %3, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %17, ptr noundef nonnull readonly align 1 dereferenceable(22) %15, i64 22, i1 false)
  %18 = load i64, ptr %11, align 8
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %4
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  store i64 %22, ptr %7, align 8
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %24 = load i64, ptr %23, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %5
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  store i64 %28, ptr %8, align 8
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %30 = load i64, ptr %29, align 8
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %1
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  store i64 %34, ptr %9, align 8
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %36 = load i64, ptr %35, align 8
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, %6
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  store i64 %40, ptr %10, align 8
  %41 = load i32, ptr %16, align 8
  %42 = sub i32 32, %41
  store i32 0, ptr %16, align 8
  %43 = icmp ult i32 %42, 30
  br i1 %43, label %44, label %53

44:                                               ; preds = %13
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 10
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %47 to i64
  %51 = sub i64 %49, %50
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %47, i64 %51, i1 false)
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr %16, align 8
  br label %53

53:                                               ; preds = %13, %44
  %54 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 1)
  %55 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 7)
  %56 = add i64 %55, %54
  %57 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 12)
  %58 = add i64 %56, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 18)
  %60 = add i64 %58, %59
  %61 = mul i64 %21, -2381459717836149591
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 31)
  %63 = mul i64 %62, -7046029288634856825
  %64 = xor i64 %60, %63
  %65 = mul i64 %64, -7046029288634856825
  %66 = add i64 %65, -8796714831421723037
  %67 = mul i64 %27, -2381459717836149591
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = xor i64 %66, %69
  %71 = mul i64 %70, -7046029288634856825
  %72 = add i64 %71, -8796714831421723037
  %73 = mul i64 %33, -2381459717836149591
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 31)
  %75 = mul i64 %74, -7046029288634856825
  %76 = xor i64 %72, %75
  %77 = mul i64 %76, -7046029288634856825
  %78 = add i64 %77, -8796714831421723037
  %79 = mul i64 %39, -2381459717836149591
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 31)
  %81 = mul i64 %80, -7046029288634856825
  %82 = xor i64 %78, %81
  %83 = mul i64 %82, -7046029288634856825
  %84 = add i64 %83, -8796714831421723037
  br label %91

85:                                               ; preds = %2
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i64 30, ptr %3, align 8
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %11, ptr noundef nonnull readonly align 1 dereferenceable(30) %86, i64 30, i1 false)
  %88 = load i32, ptr %87, align 8
  %89 = add i32 %88, 30
  store i32 %89, ptr %87, align 8
  %90 = add i64 %1, 2870177450012600261
  br label %91

91:                                               ; preds = %53, %85
  %92 = phi i64 [ 40, %53 ], [ 30, %85 ]
  %93 = phi i64 [ %84, %53 ], [ %90, %85 ]
  %94 = add i64 %93, %92
  %95 = and i64 %92, 30
  br label %96

96:                                               ; preds = %91, %96
  %97 = phi i64 [ %108, %96 ], [ %94, %91 ]
  %98 = phi ptr [ %104, %96 ], [ %11, %91 ]
  %99 = phi i64 [ %109, %96 ], [ %95, %91 ]
  %100 = load i64, ptr %98, align 1
  %101 = mul i64 %100, -4417276706812531889
  %102 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 31)
  %103 = mul i64 %102, -7046029288634856825
  %104 = getelementptr inbounds nuw i8, ptr %98, i64 8
  %105 = xor i64 %103, %97
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 27)
  %107 = mul i64 %106, -7046029288634856825
  %108 = add i64 %107, -8796714831421723037
  %109 = add nsw i64 %99, -8
  %110 = icmp ugt i64 %109, 7
  br i1 %110, label %96, label %111

111:                                              ; preds = %96
  %112 = icmp samesign ugt i64 %109, 3
  br i1 %112, label %113, label %123

113:                                              ; preds = %111
  %114 = load i32, ptr %104, align 1
  %115 = zext i32 %114 to i64
  %116 = mul i64 %115, -7046029288634856825
  %117 = xor i64 %116, %108
  %118 = getelementptr inbounds nuw i8, ptr %98, i64 12
  %119 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 23)
  %120 = mul i64 %119, -4417276706812531889
  %121 = add i64 %120, 1609587929392839161
  %122 = add nsw i64 %99, -12
  br label %123

123:                                              ; preds = %113, %111
  %124 = phi i64 [ %122, %113 ], [ %109, %111 ]
  %125 = phi ptr [ %118, %113 ], [ %104, %111 ]
  %126 = phi i64 [ %121, %113 ], [ %108, %111 ]
  %127 = icmp eq i64 %124, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %123, %128
  %129 = phi i64 [ %138, %128 ], [ %126, %123 ]
  %130 = phi ptr [ %132, %128 ], [ %125, %123 ]
  %131 = phi i64 [ %139, %128 ], [ %124, %123 ]
  %132 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %133 = load i8, ptr %130, align 1
  %134 = zext i8 %133 to i64
  %135 = mul i64 %134, 2870177450012600261
  %136 = xor i64 %135, %129
  %137 = tail call i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 11)
  %138 = mul i64 %137, -7046029288634856825
  %139 = add nsw i64 %131, -1
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %128

141:                                              ; preds = %128, %123
  %142 = phi i64 [ %126, %123 ], [ %138, %128 ]
  %143 = lshr i64 %142, 33
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, -4417276706812531889
  %146 = lshr i64 %145, 29
  %147 = xor i64 %146, %145
  %148 = mul i64 %147, 1609587929392839161
  %149 = lshr i64 %148, 32
  %150 = xor i64 %149, %148
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  ret i64 %150
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_40_23(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %16 = load i64, ptr %15, align 1
  %17 = mul i64 %16, -4417276706812531889
  %18 = add i64 %17, %6
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = load i64, ptr %21, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = add i64 %23, %1
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i64, ptr %27, align 1
  %29 = mul i64 %28, -4417276706812531889
  %30 = add i64 %29, %5
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = load i64, ptr %0, align 1
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, %4
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  %38 = getelementptr i8, ptr %0, i64 32
  store i64 %37, ptr %7, align 8
  store i64 %32, ptr %8, align 8
  store i64 %26, ptr %9, align 8
  store i64 %20, ptr %10, align 8
  %39 = icmp ult ptr %38, %14
  br i1 %39, label %40, label %43

40:                                               ; preds = %13
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %42 = load i64, ptr %38, align 1
  store i64 %42, ptr %11, align 8
  store i32 8, ptr %41, align 8
  br label %43

43:                                               ; preds = %2, %13, %40
  %44 = phi i64 [ %6, %2 ], [ %20, %13 ], [ %20, %40 ]
  %45 = phi i64 [ %1, %2 ], [ %26, %13 ], [ %26, %40 ]
  %46 = phi i64 [ %5, %2 ], [ %32, %13 ], [ %32, %40 ]
  %47 = phi i64 [ %4, %2 ], [ %37, %13 ], [ %37, %40 ]
  %48 = phi i64 [ 0, %2 ], [ 0, %13 ], [ 8, %40 ]
  %49 = phi i64 [ 23, %2 ], [ 63, %13 ], [ 63, %40 ]
  store i64 %49, ptr %3, align 8
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = getelementptr inbounds nuw i8, ptr %11, i64 %48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %52, ptr noundef nonnull readonly align 1 dereferenceable(23) %51, i64 23, i1 false)
  %53 = load i32, ptr %50, align 8
  %54 = add i32 %53, 23
  store i32 %54, ptr %50, align 8
  %55 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 1)
  %56 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 7)
  %57 = add i64 %56, %55
  %58 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 12)
  %59 = add i64 %57, %58
  %60 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 18)
  %61 = add i64 %59, %60
  %62 = mul i64 %47, -4417276706812531889
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %61, %64
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723037
  %68 = mul i64 %46, -4417276706812531889
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = xor i64 %67, %70
  %72 = mul i64 %71, -7046029288634856825
  %73 = add i64 %72, -8796714831421723037
  %74 = mul i64 %45, -4417276706812531889
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 31)
  %76 = mul i64 %75, -7046029288634856825
  %77 = xor i64 %73, %76
  %78 = mul i64 %77, -7046029288634856825
  %79 = add i64 %78, -8796714831421723037
  %80 = mul i64 %44, -4417276706812531889
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 31)
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %79, %82
  %84 = mul i64 %83, -7046029288634856825
  %85 = add i64 %84, -8796714831421723037
  %86 = add i64 %85, %49
  %87 = and i64 %49, 31
  br label %88

88:                                               ; preds = %43, %88
  %89 = phi i64 [ %100, %88 ], [ %86, %43 ]
  %90 = phi ptr [ %96, %88 ], [ %11, %43 ]
  %91 = phi i64 [ %101, %88 ], [ %87, %43 ]
  %92 = load i64, ptr %90, align 1
  %93 = mul i64 %92, -4417276706812531889
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 31)
  %95 = mul i64 %94, -7046029288634856825
  %96 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %97 = xor i64 %95, %89
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 27)
  %99 = mul i64 %98, -7046029288634856825
  %100 = add i64 %99, -8796714831421723037
  %101 = add nsw i64 %91, -8
  %102 = icmp ugt i64 %101, 7
  br i1 %102, label %88, label %103

103:                                              ; preds = %88
  %104 = icmp samesign ugt i64 %101, 3
  br i1 %104, label %105, label %115

105:                                              ; preds = %103
  %106 = load i32, ptr %96, align 1
  %107 = zext i32 %106 to i64
  %108 = mul i64 %107, -7046029288634856825
  %109 = xor i64 %108, %100
  %110 = getelementptr inbounds nuw i8, ptr %90, i64 12
  %111 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 23)
  %112 = mul i64 %111, -4417276706812531889
  %113 = add i64 %112, 1609587929392839161
  %114 = add nsw i64 %91, -12
  br label %115

115:                                              ; preds = %105, %103
  %116 = phi i64 [ %114, %105 ], [ %101, %103 ]
  %117 = phi ptr [ %110, %105 ], [ %96, %103 ]
  %118 = phi i64 [ %113, %105 ], [ %100, %103 ]
  %119 = icmp eq i64 %116, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %115, %120
  %121 = phi i64 [ %130, %120 ], [ %118, %115 ]
  %122 = phi ptr [ %124, %120 ], [ %117, %115 ]
  %123 = phi i64 [ %131, %120 ], [ %116, %115 ]
  %124 = getelementptr inbounds nuw i8, ptr %122, i64 1
  %125 = load i8, ptr %122, align 1
  %126 = zext i8 %125 to i64
  %127 = mul i64 %126, 2870177450012600261
  %128 = xor i64 %127, %121
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 11)
  %130 = mul i64 %129, -7046029288634856825
  %131 = add nsw i64 %123, -1
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %120

133:                                              ; preds = %120, %115
  %134 = phi i64 [ %118, %115 ], [ %130, %120 ]
  %135 = lshr i64 %134, 33
  %136 = xor i64 %135, %134
  %137 = mul i64 %136, -4417276706812531889
  %138 = lshr i64 %137, 29
  %139 = xor i64 %138, %137
  %140 = mul i64 %139, 1609587929392839161
  %141 = lshr i64 %140, 32
  %142 = xor i64 %141, %140
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  ret i64 %142
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
