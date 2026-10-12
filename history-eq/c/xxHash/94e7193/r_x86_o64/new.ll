; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrap_o64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrap_o64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH64_state_s = type { i64, i64, i64, i64, i64, [4 x i64], i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_xxh64_len0(ptr noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %14 = xor i64 %10, %13
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
  %15 = xor i64 %10, %14
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 11)
  %17 = mul i64 %16, -7046029288634856825
  %18 = load i8, ptr %11, align 1
  %19 = zext i8 %18 to i64
  %20 = mul i64 %19, 2870177450012600261
  %21 = xor i64 %17, %20
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
  %15 = xor i64 %11, %14
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
  %16 = xor i64 %11, %15
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 11)
  %18 = mul i64 %17, -7046029288634856825
  %19 = load i8, ptr %12, align 1
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = xor i64 %18, %21
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
  %16 = xor i64 %11, %15
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 11)
  %18 = mul i64 %17, -7046029288634856825
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %20 = load i8, ptr %12, align 1
  %21 = zext i8 %20 to i64
  %22 = mul i64 %21, 2870177450012600261
  %23 = xor i64 %18, %22
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 11)
  %25 = mul i64 %24, -7046029288634856825
  %26 = load i8, ptr %19, align 1
  %27 = zext i8 %26 to i64
  %28 = mul i64 %27, 2870177450012600261
  %29 = xor i64 %25, %28
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
  %3 = add i64 %1, 2870177450012600270
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i8, ptr %8, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = xor i64 %12, %15
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len10(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600271
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %14 = load i8, ptr %8, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = xor i64 %12, %16
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 11)
  %19 = mul i64 %18, -7046029288634856825
  %20 = load i8, ptr %13, align 1
  %21 = zext i8 %20 to i64
  %22 = mul i64 %21, 2870177450012600261
  %23 = xor i64 %19, %22
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len11(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600272
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %14 = load i8, ptr %8, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = xor i64 %12, %16
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 11)
  %19 = mul i64 %18, -7046029288634856825
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %21 = load i8, ptr %13, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = xor i64 %19, %23
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 11)
  %26 = mul i64 %25, -7046029288634856825
  %27 = load i8, ptr %20, align 1
  %28 = zext i8 %27 to i64
  %29 = mul i64 %28, 2870177450012600261
  %30 = xor i64 %26, %29
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
  %3 = add i64 %1, 2870177450012600273
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i32, ptr %8, align 1
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %12, %15
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
  %3 = add i64 %1, 2870177450012600274
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i32, ptr %8, align 1
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %18 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 23)
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, 1609587929392839161
  %21 = load i8, ptr %17, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = xor i64 %20, %23
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
define dso_local i64 @target_xxh64_len14(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600275
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i32, ptr %8, align 1
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %18 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 23)
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, 1609587929392839161
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %22 = load i8, ptr %17, align 1
  %23 = zext i8 %22 to i64
  %24 = mul i64 %23, 2870177450012600261
  %25 = xor i64 %20, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 11)
  %27 = mul i64 %26, -7046029288634856825
  %28 = load i8, ptr %21, align 1
  %29 = zext i8 %28 to i64
  %30 = mul i64 %29, 2870177450012600261
  %31 = xor i64 %27, %30
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
  %3 = add i64 %1, 2870177450012600276
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i32, ptr %8, align 1
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %18 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 23)
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, 1609587929392839161
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %22 = load i8, ptr %17, align 1
  %23 = zext i8 %22 to i64
  %24 = mul i64 %23, 2870177450012600261
  %25 = xor i64 %20, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 11)
  %27 = mul i64 %26, -7046029288634856825
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %29 = load i8, ptr %21, align 1
  %30 = zext i8 %29 to i64
  %31 = mul i64 %30, 2870177450012600261
  %32 = xor i64 %27, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 11)
  %34 = mul i64 %33, -7046029288634856825
  %35 = load i8, ptr %28, align 1
  %36 = zext i8 %35 to i64
  %37 = mul i64 %36, 2870177450012600261
  %38 = xor i64 %34, %37
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
  %17 = xor i64 %12, %16
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
  %3 = add i64 %1, 2870177450012600278
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i8, ptr %17, align 1
  %23 = zext i8 %22 to i64
  %24 = mul i64 %23, 2870177450012600261
  %25 = xor i64 %21, %24
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
  %3 = add i64 %1, 2870177450012600279
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %23 = load i8, ptr %17, align 1
  %24 = zext i8 %23 to i64
  %25 = mul i64 %24, 2870177450012600261
  %26 = xor i64 %21, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 11)
  %28 = mul i64 %27, -7046029288634856825
  %29 = load i8, ptr %22, align 1
  %30 = zext i8 %29 to i64
  %31 = mul i64 %30, 2870177450012600261
  %32 = xor i64 %28, %31
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
  %3 = add i64 %1, 2870177450012600280
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %23 = load i8, ptr %17, align 1
  %24 = zext i8 %23 to i64
  %25 = mul i64 %24, 2870177450012600261
  %26 = xor i64 %21, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 11)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %30 = load i8, ptr %22, align 1
  %31 = zext i8 %30 to i64
  %32 = mul i64 %31, 2870177450012600261
  %33 = xor i64 %28, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 11)
  %35 = mul i64 %34, -7046029288634856825
  %36 = load i8, ptr %29, align 1
  %37 = zext i8 %36 to i64
  %38 = mul i64 %37, 2870177450012600261
  %39 = xor i64 %35, %38
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
  %3 = add i64 %1, 2870177450012600281
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i32, ptr %17, align 1
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %21, %24
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
  %3 = add i64 %1, 2870177450012600282
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i32, ptr %17, align 1
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %21, %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %27 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 23)
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, 1609587929392839161
  %30 = load i8, ptr %26, align 1
  %31 = zext i8 %30 to i64
  %32 = mul i64 %31, 2870177450012600261
  %33 = xor i64 %29, %32
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
  %3 = add i64 %1, 2870177450012600283
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i32, ptr %17, align 1
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %21, %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %27 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 23)
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, 1609587929392839161
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 21
  %31 = load i8, ptr %26, align 1
  %32 = zext i8 %31 to i64
  %33 = mul i64 %32, 2870177450012600261
  %34 = xor i64 %29, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 11)
  %36 = mul i64 %35, -7046029288634856825
  %37 = load i8, ptr %30, align 1
  %38 = zext i8 %37 to i64
  %39 = mul i64 %38, 2870177450012600261
  %40 = xor i64 %36, %39
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
  %3 = add i64 %1, 2870177450012600284
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i32, ptr %17, align 1
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %21, %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %27 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 23)
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, 1609587929392839161
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 21
  %31 = load i8, ptr %26, align 1
  %32 = zext i8 %31 to i64
  %33 = mul i64 %32, 2870177450012600261
  %34 = xor i64 %29, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 11)
  %36 = mul i64 %35, -7046029288634856825
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %38 = load i8, ptr %30, align 1
  %39 = zext i8 %38 to i64
  %40 = mul i64 %39, 2870177450012600261
  %41 = xor i64 %36, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 11)
  %43 = mul i64 %42, -7046029288634856825
  %44 = load i8, ptr %37, align 1
  %45 = zext i8 %44 to i64
  %46 = mul i64 %45, 2870177450012600261
  %47 = xor i64 %43, %46
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i64, ptr %17, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = xor i64 %21, %25
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
  %3 = add i64 %1, 2870177450012600286
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i64, ptr %17, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = xor i64 %21, %25
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 27)
  %29 = mul i64 %28, -7046029288634856825
  %30 = add i64 %29, -8796714831421723037
  %31 = load i8, ptr %26, align 1
  %32 = zext i8 %31 to i64
  %33 = mul i64 %32, 2870177450012600261
  %34 = xor i64 %30, %33
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
  %3 = add i64 %1, 2870177450012600287
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i64, ptr %17, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = xor i64 %21, %25
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 27)
  %29 = mul i64 %28, -7046029288634856825
  %30 = add i64 %29, -8796714831421723037
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %32 = load i8, ptr %26, align 1
  %33 = zext i8 %32 to i64
  %34 = mul i64 %33, 2870177450012600261
  %35 = xor i64 %30, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 11)
  %37 = mul i64 %36, -7046029288634856825
  %38 = load i8, ptr %31, align 1
  %39 = zext i8 %38 to i64
  %40 = mul i64 %39, 2870177450012600261
  %41 = xor i64 %37, %40
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
  %3 = add i64 %1, 2870177450012600288
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i64, ptr %17, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = xor i64 %21, %25
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 27)
  %29 = mul i64 %28, -7046029288634856825
  %30 = add i64 %29, -8796714831421723037
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %32 = load i8, ptr %26, align 1
  %33 = zext i8 %32 to i64
  %34 = mul i64 %33, 2870177450012600261
  %35 = xor i64 %30, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 11)
  %37 = mul i64 %36, -7046029288634856825
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %39 = load i8, ptr %31, align 1
  %40 = zext i8 %39 to i64
  %41 = mul i64 %40, 2870177450012600261
  %42 = xor i64 %37, %41
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 11)
  %44 = mul i64 %43, -7046029288634856825
  %45 = load i8, ptr %38, align 1
  %46 = zext i8 %45 to i64
  %47 = mul i64 %46, 2870177450012600261
  %48 = xor i64 %44, %47
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
  %3 = add i64 %1, 2870177450012600289
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i64, ptr %17, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = xor i64 %21, %25
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 27)
  %29 = mul i64 %28, -7046029288634856825
  %30 = add i64 %29, -8796714831421723037
  %31 = load i32, ptr %26, align 1
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, -7046029288634856825
  %34 = xor i64 %30, %33
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
  %3 = add i64 %1, 2870177450012600290
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i64, ptr %17, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = xor i64 %21, %25
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 27)
  %29 = mul i64 %28, -7046029288634856825
  %30 = add i64 %29, -8796714831421723037
  %31 = load i32, ptr %26, align 1
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, -7046029288634856825
  %34 = xor i64 %30, %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %36 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 23)
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, 1609587929392839161
  %39 = load i8, ptr %35, align 1
  %40 = zext i8 %39 to i64
  %41 = mul i64 %40, 2870177450012600261
  %42 = xor i64 %38, %41
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
  %3 = add i64 %1, 2870177450012600291
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i64, ptr %17, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = xor i64 %21, %25
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 27)
  %29 = mul i64 %28, -7046029288634856825
  %30 = add i64 %29, -8796714831421723037
  %31 = load i32, ptr %26, align 1
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, -7046029288634856825
  %34 = xor i64 %30, %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %36 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 23)
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, 1609587929392839161
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %40 = load i8, ptr %35, align 1
  %41 = zext i8 %40 to i64
  %42 = mul i64 %41, 2870177450012600261
  %43 = xor i64 %38, %42
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 11)
  %45 = mul i64 %44, -7046029288634856825
  %46 = load i8, ptr %39, align 1
  %47 = zext i8 %46 to i64
  %48 = mul i64 %47, 2870177450012600261
  %49 = xor i64 %45, %48
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
  %3 = add i64 %1, 2870177450012600292
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
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i64, ptr %17, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = xor i64 %21, %25
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 27)
  %29 = mul i64 %28, -7046029288634856825
  %30 = add i64 %29, -8796714831421723037
  %31 = load i32, ptr %26, align 1
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, -7046029288634856825
  %34 = xor i64 %30, %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %36 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 23)
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, 1609587929392839161
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %40 = load i8, ptr %35, align 1
  %41 = zext i8 %40 to i64
  %42 = mul i64 %41, 2870177450012600261
  %43 = xor i64 %38, %42
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 11)
  %45 = mul i64 %44, -7046029288634856825
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %47 = load i8, ptr %39, align 1
  %48 = zext i8 %47 to i64
  %49 = mul i64 %48, 2870177450012600261
  %50 = xor i64 %45, %49
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 11)
  %52 = mul i64 %51, -7046029288634856825
  %53 = load i8, ptr %46, align 1
  %54 = zext i8 %53 to i64
  %55 = mul i64 %54, 2870177450012600261
  %56 = xor i64 %52, %55
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
  %64 = xor i64 %60, %63
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
  %73 = xor i64 %68, %72
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 11)
  %75 = mul i64 %74, -7046029288634856825
  %76 = getelementptr i8, ptr %0, i64 38
  %77 = load i8, ptr %69, align 1
  %78 = zext i8 %77 to i64
  %79 = mul i64 %78, 2870177450012600261
  %80 = xor i64 %75, %79
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 11)
  %82 = mul i64 %81, -7046029288634856825
  %83 = load i8, ptr %76, align 1
  %84 = zext i8 %83 to i64
  %85 = mul i64 %84, 2870177450012600261
  %86 = xor i64 %82, %85
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
  %60 = add i64 %59, -8796714831421722990
  %61 = load i64, ptr %29, align 1
  %62 = mul i64 %61, -4417276706812531889
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = getelementptr i8, ptr %0, i64 40
  %66 = xor i64 %60, %64
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 27)
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = load i32, ptr %65, align 1
  %71 = zext i32 %70 to i64
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %69, %72
  %74 = getelementptr i8, ptr %0, i64 44
  %75 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 23)
  %76 = mul i64 %75, -4417276706812531889
  %77 = add i64 %76, 1609587929392839161
  %78 = getelementptr i8, ptr %0, i64 45
  %79 = load i8, ptr %74, align 1
  %80 = zext i8 %79 to i64
  %81 = mul i64 %80, 2870177450012600261
  %82 = xor i64 %77, %81
  %83 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 11)
  %84 = mul i64 %83, -7046029288634856825
  %85 = getelementptr i8, ptr %0, i64 46
  %86 = load i8, ptr %78, align 1
  %87 = zext i8 %86 to i64
  %88 = mul i64 %87, 2870177450012600261
  %89 = xor i64 %84, %88
  %90 = tail call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 11)
  %91 = mul i64 %90, -7046029288634856825
  %92 = load i8, ptr %85, align 1
  %93 = zext i8 %92 to i64
  %94 = mul i64 %93, 2870177450012600261
  %95 = xor i64 %91, %94
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
  %60 = add i64 %59, -8796714831421722974
  %61 = load i64, ptr %29, align 1
  %62 = mul i64 %61, -4417276706812531889
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = getelementptr i8, ptr %0, i64 40
  %66 = xor i64 %60, %64
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 27)
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = load i64, ptr %65, align 1
  %71 = mul i64 %70, -4417276706812531889
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 31)
  %73 = mul i64 %72, -7046029288634856825
  %74 = getelementptr i8, ptr %0, i64 48
  %75 = xor i64 %69, %73
  %76 = tail call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 27)
  %77 = mul i64 %76, -7046029288634856825
  %78 = add i64 %77, -8796714831421723037
  %79 = load i64, ptr %74, align 1
  %80 = mul i64 %79, -4417276706812531889
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 31)
  %82 = mul i64 %81, -7046029288634856825
  %83 = getelementptr i8, ptr %0, i64 56
  %84 = xor i64 %78, %82
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 27)
  %86 = mul i64 %85, -7046029288634856825
  %87 = add i64 %86, -8796714831421723037
  %88 = load i32, ptr %83, align 1
  %89 = zext i32 %88 to i64
  %90 = mul i64 %89, -7046029288634856825
  %91 = xor i64 %87, %90
  %92 = getelementptr i8, ptr %0, i64 60
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 23)
  %94 = mul i64 %93, -4417276706812531889
  %95 = add i64 %94, 1609587929392839161
  %96 = getelementptr i8, ptr %0, i64 61
  %97 = load i8, ptr %92, align 1
  %98 = zext i8 %97 to i64
  %99 = mul i64 %98, 2870177450012600261
  %100 = xor i64 %95, %99
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 11)
  %102 = mul i64 %101, -7046029288634856825
  %103 = getelementptr i8, ptr %0, i64 62
  %104 = load i8, ptr %96, align 1
  %105 = zext i8 %104 to i64
  %106 = mul i64 %105, 2870177450012600261
  %107 = xor i64 %102, %106
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 11)
  %109 = mul i64 %108, -7046029288634856825
  %110 = load i8, ptr %103, align 1
  %111 = zext i8 %110 to i64
  %112 = mul i64 %111, 2870177450012600261
  %113 = xor i64 %109, %112
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
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %30 = load i64, ptr %29, align 1
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %10
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %36 = load i64, ptr %35, align 1
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, %16
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %42 = load i64, ptr %41, align 1
  %43 = mul i64 %42, -4417276706812531889
  %44 = add i64 %43, %22
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %48 = load i64, ptr %47, align 1
  %49 = mul i64 %48, -4417276706812531889
  %50 = add i64 %49, %28
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %54 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 1)
  %55 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 7)
  %56 = add i64 %55, %54
  %57 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 12)
  %58 = add i64 %56, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 18)
  %60 = add i64 %58, %59
  %61 = mul i64 %33, -2381459717836149591
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 31)
  %63 = mul i64 %62, -7046029288634856825
  %64 = xor i64 %60, %63
  %65 = mul i64 %64, -7046029288634856825
  %66 = add i64 %65, -8796714831421723037
  %67 = mul i64 %39, -2381459717836149591
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = xor i64 %66, %69
  %71 = mul i64 %70, -7046029288634856825
  %72 = add i64 %71, -8796714831421723037
  %73 = mul i64 %45, -2381459717836149591
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 31)
  %75 = mul i64 %74, -7046029288634856825
  %76 = xor i64 %72, %75
  %77 = mul i64 %76, -7046029288634856825
  %78 = add i64 %77, -8796714831421723037
  %79 = mul i64 %51, -2381459717836149591
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 31)
  %81 = mul i64 %80, -7046029288634856825
  %82 = xor i64 %78, %81
  %83 = mul i64 %82, -7046029288634856825
  %84 = add i64 %83, -8796714831421722942
  %85 = load i64, ptr %53, align 1
  %86 = mul i64 %85, -4417276706812531889
  %87 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 31)
  %88 = mul i64 %87, -7046029288634856825
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %90 = xor i64 %88, %84
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 27)
  %92 = mul i64 %91, -7046029288634856825
  %93 = add i64 %92, -8796714831421723037
  %94 = load i64, ptr %89, align 1
  %95 = mul i64 %94, -4417276706812531889
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 31)
  %97 = mul i64 %96, -7046029288634856825
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %99 = xor i64 %93, %97
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 27)
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  %103 = load i64, ptr %98, align 1
  %104 = mul i64 %103, -4417276706812531889
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 31)
  %106 = mul i64 %105, -7046029288634856825
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %108 = xor i64 %102, %106
  %109 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 27)
  %110 = mul i64 %109, -7046029288634856825
  %111 = add i64 %110, -8796714831421723037
  %112 = load i32, ptr %107, align 1
  %113 = zext i32 %112 to i64
  %114 = mul i64 %113, -7046029288634856825
  %115 = xor i64 %111, %114
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %117 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 23)
  %118 = mul i64 %117, -4417276706812531889
  %119 = add i64 %118, 1609587929392839161
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 93
  %121 = load i8, ptr %116, align 1
  %122 = zext i8 %121 to i64
  %123 = mul i64 %122, 2870177450012600261
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 11)
  %126 = mul i64 %125, -7046029288634856825
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 94
  %128 = load i8, ptr %120, align 1
  %129 = zext i8 %128 to i64
  %130 = mul i64 %129, 2870177450012600261
  %131 = xor i64 %126, %130
  %132 = tail call i64 @llvm.fshl.i64(i64 %131, i64 %131, i64 11)
  %133 = mul i64 %132, -7046029288634856825
  %134 = load i8, ptr %127, align 1
  %135 = zext i8 %134 to i64
  %136 = mul i64 %135, 2870177450012600261
  %137 = xor i64 %133, %136
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_7_8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [15 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %3, i8 0, i64 15, i1 false)
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 7
  br i1 %4, label %6, label %16

6:                                                ; preds = %2
  %7 = load i64, ptr %5, align 1
  store i64 %7, ptr %3, align 8
  %8 = add i64 %1, 2870177450012600269
  %9 = mul i64 %7, -4417276706812531889
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = xor i64 %11, %8
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  br label %57

16:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %3, ptr noundef nonnull align 1 dereferenceable(7) %0, i64 7, i1 false)
  %17 = load i64, ptr %5, align 1
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i64 %17, ptr %18, align 1
  %19 = add i64 %1, 2870177450012600276
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 13
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i64
  %27 = mul i64 %26, 2870177450012600261
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %29 = load i32, ptr %28, align 8
  %30 = zext i32 %29 to i64
  %31 = mul i64 %30, -7046029288634856825
  %32 = load i64, ptr %3, align 8
  %33 = mul i64 %32, -4417276706812531889
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = xor i64 %35, %19
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 27)
  %38 = mul i64 %37, -7046029288634856825
  %39 = add i64 %38, -8796714831421723037
  %40 = xor i64 %31, %39
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 23)
  %42 = mul i64 %41, -4417276706812531889
  %43 = add i64 %42, 1609587929392839161
  %44 = xor i64 %27, %43
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 11)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %23, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 11)
  %49 = mul i64 %48, -7046029288634856825
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 14
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i64
  %53 = mul i64 %52, 2870177450012600261
  %54 = xor i64 %53, %49
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 11)
  %56 = mul i64 %55, -7046029288634856825
  br label %57

57:                                               ; preds = %6, %16
  %58 = phi i64 [ %15, %6 ], [ %56, %16 ]
  %59 = lshr i64 %58, 33
  %60 = xor i64 %59, %58
  %61 = mul i64 %60, -4417276706812531889
  %62 = lshr i64 %61, 29
  %63 = xor i64 %62, %61
  %64 = mul i64 %63, 1609587929392839161
  %65 = lshr i64 %64, 32
  %66 = xor i64 %65, %64
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %3)
  ret i64 %66
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_13_18(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 13
  br i1 %3, label %5, label %37

5:                                                ; preds = %2
  %6 = load i64, ptr %4, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 21
  %8 = load i64, ptr %7, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %12 = load i8, ptr %11, align 1
  %13 = add i64 %1, 2870177450012600279
  %14 = mul i64 %6, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = xor i64 %16, %13
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 27)
  %19 = mul i64 %18, -7046029288634856825
  %20 = add i64 %19, -8796714831421723037
  %21 = mul i64 %8, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = xor i64 %23, %20
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  %28 = zext i8 %10 to i64
  %29 = mul i64 %28, 2870177450012600261
  %30 = xor i64 %27, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 11)
  %32 = mul i64 %31, -7046029288634856825
  %33 = zext i8 %12 to i64
  %34 = mul i64 %33, 2870177450012600261
  %35 = xor i64 %32, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 11)
  br label %98

37:                                               ; preds = %2
  %38 = load i64, ptr %0, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load i40, ptr %39, align 1
  %41 = zext i40 %40 to i64
  %42 = load i24, ptr %4, align 1
  %43 = zext i24 %42 to i64
  %44 = shl nuw i64 %43, 40
  %45 = or disjoint i64 %44, %41
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %49 = load i32, ptr %48, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %55 = load i8, ptr %54, align 1
  %56 = add i64 %1, 2870177450012600292
  %57 = mul i64 %38, -4417276706812531889
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  %60 = xor i64 %59, %56
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 27)
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = zext i8 %53 to i64
  %65 = mul i64 %64, 2870177450012600261
  %66 = zext i8 %51 to i64
  %67 = mul i64 %66, 2870177450012600261
  %68 = zext i32 %49 to i64
  %69 = mul i64 %68, -7046029288634856825
  %70 = mul i64 %47, -4417276706812531889
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = mul i64 %45, -4417276706812531889
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 31)
  %75 = mul i64 %74, -7046029288634856825
  %76 = xor i64 %75, %63
  %77 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 27)
  %78 = mul i64 %77, -7046029288634856825
  %79 = add i64 %78, -8796714831421723037
  %80 = xor i64 %72, %79
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 27)
  %82 = mul i64 %81, -7046029288634856825
  %83 = add i64 %82, -8796714831421723037
  %84 = xor i64 %69, %83
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 23)
  %86 = mul i64 %85, -4417276706812531889
  %87 = add i64 %86, 1609587929392839161
  %88 = xor i64 %67, %87
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 11)
  %90 = mul i64 %89, -7046029288634856825
  %91 = xor i64 %65, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 11)
  %93 = mul i64 %92, -7046029288634856825
  %94 = zext i8 %55 to i64
  %95 = mul i64 %94, 2870177450012600261
  %96 = xor i64 %95, %93
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 11)
  br label %98

98:                                               ; preds = %5, %37
  %99 = phi i64 [ %36, %5 ], [ %97, %37 ]
  %100 = mul i64 %99, -7046029288634856825
  %101 = lshr i64 %100, 33
  %102 = xor i64 %101, %100
  %103 = mul i64 %102, -4417276706812531889
  %104 = lshr i64 %103, 29
  %105 = xor i64 %104, %103
  %106 = mul i64 %105, 1609587929392839161
  %107 = lshr i64 %106, 32
  %108 = xor i64 %107, %106
  ret i64 %108
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_10_30(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca { [4 x i64], i32, i32, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %87, label %5

5:                                                ; preds = %2
  %6 = add i64 %1, 7046029288634856825
  %7 = add i64 %1, -4417276706812531889
  %8 = add i64 %1, 6983438078262162902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) %0, i64 10, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 10, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %11, ptr noundef nonnull align 1 dereferenceable(22) %10, i64 22, i1 false)
  %12 = load i64, ptr %3, align 8
  %13 = mul i64 %12, -4417276706812531889
  %14 = add i64 %13, %8
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %7
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %24 = load i64, ptr %23, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %1
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %30 = load i64, ptr %29, align 8
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %6
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %36 = load i32, ptr %35, align 8
  %37 = sub i32 32, %36
  %38 = icmp ult i32 %37, 30
  br i1 %38, label %39, label %47

39:                                               ; preds = %5
  %40 = zext nneg i32 %37 to i64
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 10
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %42 to i64
  %46 = sub i64 %44, %45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull readonly align 1 %42, i64 %46, i1 false)
  br label %47

47:                                               ; preds = %5, %39
  %48 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 1)
  %49 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 7)
  %50 = add i64 %49, %48
  %51 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 12)
  %52 = add i64 %50, %51
  %53 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 18)
  %54 = add i64 %52, %53
  %55 = mul i64 %15, -2381459717836149591
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = xor i64 %54, %57
  %59 = mul i64 %58, -7046029288634856825
  %60 = add i64 %59, -8796714831421723037
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
  %78 = add i64 %77, -8796714831421722997
  %79 = load i64, ptr %3, align 8
  %80 = mul i64 %79, -4417276706812531889
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 31)
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %82, %78
  %84 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 27)
  %85 = mul i64 %84, -7046029288634856825
  %86 = add i64 %85, -8796714831421723037
  br label %138

87:                                               ; preds = %2
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %3, ptr noundef nonnull align 1 dereferenceable(30) %88, i64 30, i1 false)
  %89 = add i64 %1, 2870177450012600291
  %90 = load i64, ptr %3, align 8
  %91 = mul i64 %90, -4417276706812531889
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = xor i64 %93, %89
  %95 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 27)
  %96 = mul i64 %95, -7046029288634856825
  %97 = add i64 %96, -8796714831421723037
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %99 = load i64, ptr %98, align 8
  %100 = mul i64 %99, -4417276706812531889
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 31)
  %102 = mul i64 %101, -7046029288634856825
  %103 = xor i64 %102, %97
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 27)
  %105 = mul i64 %104, -7046029288634856825
  %106 = add i64 %105, -8796714831421723037
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %108 = load i64, ptr %107, align 8
  %109 = mul i64 %108, -4417276706812531889
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 31)
  %111 = mul i64 %110, -7046029288634856825
  %112 = xor i64 %111, %106
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 27)
  %114 = mul i64 %113, -7046029288634856825
  %115 = add i64 %114, -8796714831421723037
  %116 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %117 = load i32, ptr %116, align 8
  %118 = zext i32 %117 to i64
  %119 = mul i64 %118, -7046029288634856825
  %120 = xor i64 %119, %115
  %121 = tail call i64 @llvm.fshl.i64(i64 %120, i64 %120, i64 23)
  %122 = mul i64 %121, -4417276706812531889
  %123 = add i64 %122, 1609587929392839161
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %125 = load i8, ptr %124, align 4
  %126 = zext i8 %125 to i64
  %127 = mul i64 %126, 2870177450012600261
  %128 = xor i64 %123, %127
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 11)
  %130 = mul i64 %129, -7046029288634856825
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 29
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i64
  %134 = mul i64 %133, 2870177450012600261
  %135 = xor i64 %130, %134
  %136 = tail call i64 @llvm.fshl.i64(i64 %135, i64 %135, i64 11)
  %137 = mul i64 %136, -7046029288634856825
  br label %138

138:                                              ; preds = %47, %87
  %139 = phi i64 [ %137, %87 ], [ %86, %47 ]
  %140 = lshr i64 %139, 33
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, -4417276706812531889
  %143 = lshr i64 %142, 29
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587929392839161
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i64 %147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_40_23(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #7
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

43:                                               ; preds = %40, %13, %2
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
  %88 = icmp eq i64 %87, 23
  br i1 %88, label %99, label %89

89:                                               ; preds = %43
  %90 = load i64, ptr %11, align 8
  %91 = mul i64 %90, -4417276706812531889
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %95 = xor i64 %93, %86
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 27)
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  br label %99

99:                                               ; preds = %43, %89
  %100 = phi ptr [ %11, %43 ], [ %94, %89 ]
  %101 = phi i64 [ %86, %43 ], [ %98, %89 ]
  %102 = load i64, ptr %100, align 1
  %103 = mul i64 %102, -4417276706812531889
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 31)
  %105 = mul i64 %104, -7046029288634856825
  %106 = getelementptr inbounds nuw i8, ptr %100, i64 8
  %107 = xor i64 %105, %101
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 27)
  %109 = mul i64 %108, -7046029288634856825
  %110 = add i64 %109, -8796714831421723037
  %111 = load i64, ptr %106, align 1
  %112 = mul i64 %111, -4417276706812531889
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 31)
  %114 = mul i64 %113, -7046029288634856825
  %115 = getelementptr inbounds nuw i8, ptr %100, i64 16
  %116 = xor i64 %114, %110
  %117 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 27)
  %118 = mul i64 %117, -7046029288634856825
  %119 = add i64 %118, -8796714831421723037
  %120 = load i32, ptr %115, align 1
  %121 = zext i32 %120 to i64
  %122 = mul i64 %121, -7046029288634856825
  %123 = xor i64 %122, %119
  %124 = getelementptr inbounds nuw i8, ptr %100, i64 20
  %125 = tail call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 23)
  %126 = mul i64 %125, -4417276706812531889
  %127 = add i64 %126, 1609587929392839161
  %128 = getelementptr inbounds nuw i8, ptr %100, i64 21
  %129 = load i8, ptr %124, align 1
  %130 = zext i8 %129 to i64
  %131 = mul i64 %130, 2870177450012600261
  %132 = xor i64 %131, %127
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 11)
  %134 = mul i64 %133, -7046029288634856825
  %135 = getelementptr inbounds nuw i8, ptr %100, i64 22
  %136 = load i8, ptr %128, align 1
  %137 = zext i8 %136 to i64
  %138 = mul i64 %137, 2870177450012600261
  %139 = xor i64 %138, %134
  %140 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 11)
  %141 = mul i64 %140, -7046029288634856825
  %142 = load i8, ptr %135, align 1
  %143 = zext i8 %142 to i64
  %144 = mul i64 %143, 2870177450012600261
  %145 = xor i64 %144, %141
  %146 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 11)
  %147 = mul i64 %146, -7046029288634856825
  %148 = lshr i64 %147, 33
  %149 = xor i64 %148, %147
  %150 = mul i64 %149, -4417276706812531889
  %151 = lshr i64 %150, 29
  %152 = xor i64 %151, %150
  %153 = mul i64 %152, 1609587929392839161
  %154 = lshr i64 %153, 32
  %155 = xor i64 %154, %153
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #7
  ret i64 %155
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
