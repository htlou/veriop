; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrap_o64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrap_o64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

%struct.XXH_INLINE_XXH64_state_s = type { i64, i64, i64, i64, i64, [4 x i64], i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len4(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = add i64 %1, 2870177450012600265
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 4) #7
  %6 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, -7046029288634856825
  %9 = xor i64 %8, %4
  %10 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 23)
  %11 = mul i64 %10, -4417276706812531889
  %12 = add i64 %11, 1609587929392839161
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len5(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = add i64 %1, 2870177450012600266
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 4) #7
  %6 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, -7046029288634856825
  %9 = xor i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %11 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 23)
  %12 = mul i64 %11, -4417276706812531889
  %13 = add i64 %12, 1609587929392839161
  %14 = load i8, ptr %10, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = xor i64 %13, %16
  %18 = call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len6(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = add i64 %1, 2870177450012600267
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 4) #7
  %6 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, -7046029288634856825
  %9 = xor i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %11 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 23)
  %12 = mul i64 %11, -4417276706812531889
  %13 = add i64 %12, 1609587929392839161
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %15 = load i8, ptr %10, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = xor i64 %13, %17
  %19 = call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 11)
  %20 = mul i64 %19, -7046029288634856825
  %21 = load i8, ptr %14, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = xor i64 %20, %23
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len7(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = add i64 %1, 2870177450012600268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 4) #7
  %6 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, -7046029288634856825
  %9 = xor i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %11 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 23)
  %12 = mul i64 %11, -4417276706812531889
  %13 = add i64 %12, 1609587929392839161
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %15 = load i8, ptr %10, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = xor i64 %13, %17
  %19 = call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 11)
  %20 = mul i64 %19, -7046029288634856825
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %22 = load i8, ptr %14, align 1
  %23 = zext i8 %22 to i64
  %24 = mul i64 %23, 2870177450012600261
  %25 = xor i64 %20, %24
  %26 = call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 11)
  %27 = mul i64 %26, -7046029288634856825
  %28 = load i8, ptr %21, align 1
  %29 = zext i8 %28 to i64
  %30 = mul i64 %29, 2870177450012600261
  %31 = xor i64 %27, %30
  %32 = call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len8(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = add i64 %1, 2870177450012600269
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %7 = mul i64 %6, -4417276706812531889
  %8 = call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 31)
  %9 = mul i64 %8, -7046029288634856825
  %10 = xor i64 %9, %4
  %11 = call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 27)
  %12 = mul i64 %11, -7046029288634856825
  %13 = add i64 %12, -8796714831421723037
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len9(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = add i64 %1, 2870177450012600270
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %7 = mul i64 %6, -4417276706812531889
  %8 = call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 31)
  %9 = mul i64 %8, -7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = xor i64 %9, %4
  %12 = call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  %15 = load i8, ptr %10, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = xor i64 %14, %17
  %19 = call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len10(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = add i64 %1, 2870177450012600271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %7 = mul i64 %6, -4417276706812531889
  %8 = call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 31)
  %9 = mul i64 %8, -7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = xor i64 %9, %4
  %12 = call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %16 = load i8, ptr %10, align 1
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = xor i64 %14, %18
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 11)
  %21 = mul i64 %20, -7046029288634856825
  %22 = load i8, ptr %15, align 1
  %23 = zext i8 %22 to i64
  %24 = mul i64 %23, 2870177450012600261
  %25 = xor i64 %21, %24
  %26 = call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len11(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = add i64 %1, 2870177450012600272
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %7 = mul i64 %6, -4417276706812531889
  %8 = call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 31)
  %9 = mul i64 %8, -7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = xor i64 %9, %4
  %12 = call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %16 = load i8, ptr %10, align 1
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = xor i64 %14, %18
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 11)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %23 = load i8, ptr %15, align 1
  %24 = zext i8 %23 to i64
  %25 = mul i64 %24, 2870177450012600261
  %26 = xor i64 %21, %25
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 11)
  %28 = mul i64 %27, -7046029288634856825
  %29 = load i8, ptr %22, align 1
  %30 = zext i8 %29 to i64
  %31 = mul i64 %30, 2870177450012600261
  %32 = xor i64 %28, %31
  %33 = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len12(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = add i64 %1, 2870177450012600273
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %6 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %7 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %8 = mul i64 %7, -4417276706812531889
  %9 = call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = xor i64 %10, %5
  %13 = call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %11, i64 noundef 4) #7
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %18 = zext i32 %17 to i64
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %15, %19
  %21 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 23)
  %22 = mul i64 %21, -4417276706812531889
  %23 = add i64 %22, 1609587929392839161
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len13(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = add i64 %1, 2870177450012600274
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %6 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %7 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %8 = mul i64 %7, -4417276706812531889
  %9 = call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = xor i64 %10, %5
  %13 = call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %11, i64 noundef 4) #7
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %18 = zext i32 %17 to i64
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %15, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %22 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 23)
  %23 = mul i64 %22, -4417276706812531889
  %24 = add i64 %23, 1609587929392839161
  %25 = load i8, ptr %21, align 1
  %26 = zext i8 %25 to i64
  %27 = mul i64 %26, 2870177450012600261
  %28 = xor i64 %24, %27
  %29 = call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len14(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = add i64 %1, 2870177450012600275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %6 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %7 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %8 = mul i64 %7, -4417276706812531889
  %9 = call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = xor i64 %10, %5
  %13 = call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %11, i64 noundef 4) #7
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %18 = zext i32 %17 to i64
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %15, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %22 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 23)
  %23 = mul i64 %22, -4417276706812531889
  %24 = add i64 %23, 1609587929392839161
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %26 = load i8, ptr %21, align 1
  %27 = zext i8 %26 to i64
  %28 = mul i64 %27, 2870177450012600261
  %29 = xor i64 %24, %28
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 11)
  %31 = mul i64 %30, -7046029288634856825
  %32 = load i8, ptr %25, align 1
  %33 = zext i8 %32 to i64
  %34 = mul i64 %33, 2870177450012600261
  %35 = xor i64 %31, %34
  %36 = call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len15(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = add i64 %1, 2870177450012600276
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %6 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %7 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %8 = mul i64 %7, -4417276706812531889
  %9 = call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = xor i64 %10, %5
  %13 = call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %11, i64 noundef 4) #7
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %18 = zext i32 %17 to i64
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %15, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %22 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 23)
  %23 = mul i64 %22, -4417276706812531889
  %24 = add i64 %23, 1609587929392839161
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %26 = load i8, ptr %21, align 1
  %27 = zext i8 %26 to i64
  %28 = mul i64 %27, 2870177450012600261
  %29 = xor i64 %24, %28
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 11)
  %31 = mul i64 %30, -7046029288634856825
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %33 = load i8, ptr %25, align 1
  %34 = zext i8 %33 to i64
  %35 = mul i64 %34, 2870177450012600261
  %36 = xor i64 %31, %35
  %37 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 11)
  %38 = mul i64 %37, -7046029288634856825
  %39 = load i8, ptr %32, align 1
  %40 = zext i8 %39 to i64
  %41 = mul i64 %40, 2870177450012600261
  %42 = xor i64 %38, %41
  %43 = call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len16(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = add i64 %1, 2870177450012600277
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %6 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %7 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %8 = mul i64 %7, -4417276706812531889
  %9 = call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = xor i64 %10, %5
  %13 = call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %11, i64 noundef 8) #7
  %17 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %18 = mul i64 %17, -4417276706812531889
  %19 = call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = xor i64 %20, %15
  %22 = call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len17(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = add i64 %1, 2870177450012600278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %6 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %7 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %8 = mul i64 %7, -4417276706812531889
  %9 = call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = xor i64 %10, %5
  %13 = call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %11, i64 noundef 8) #7
  %17 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %18 = mul i64 %17, -4417276706812531889
  %19 = call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = xor i64 %20, %15
  %23 = call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 27)
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = load i8, ptr %21, align 1
  %27 = zext i8 %26 to i64
  %28 = mul i64 %27, 2870177450012600261
  %29 = xor i64 %25, %28
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len18(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = add i64 %1, 2870177450012600279
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %6 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %7 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %8 = mul i64 %7, -4417276706812531889
  %9 = call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = xor i64 %10, %5
  %13 = call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %11, i64 noundef 8) #7
  %17 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %18 = mul i64 %17, -4417276706812531889
  %19 = call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = xor i64 %20, %15
  %23 = call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 27)
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %27 = load i8, ptr %21, align 1
  %28 = zext i8 %27 to i64
  %29 = mul i64 %28, 2870177450012600261
  %30 = xor i64 %25, %29
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 11)
  %32 = mul i64 %31, -7046029288634856825
  %33 = load i8, ptr %26, align 1
  %34 = zext i8 %33 to i64
  %35 = mul i64 %34, 2870177450012600261
  %36 = xor i64 %32, %35
  %37 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len19(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = add i64 %1, 2870177450012600280
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %6 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %7 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %8 = mul i64 %7, -4417276706812531889
  %9 = call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = xor i64 %10, %5
  %13 = call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %11, i64 noundef 8) #7
  %17 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %18 = mul i64 %17, -4417276706812531889
  %19 = call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = xor i64 %20, %15
  %23 = call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 27)
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %27 = load i8, ptr %21, align 1
  %28 = zext i8 %27 to i64
  %29 = mul i64 %28, 2870177450012600261
  %30 = xor i64 %25, %29
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 11)
  %32 = mul i64 %31, -7046029288634856825
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %34 = load i8, ptr %26, align 1
  %35 = zext i8 %34 to i64
  %36 = mul i64 %35, 2870177450012600261
  %37 = xor i64 %32, %36
  %38 = call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 11)
  %39 = mul i64 %38, -7046029288634856825
  %40 = load i8, ptr %33, align 1
  %41 = zext i8 %40 to i64
  %42 = mul i64 %41, 2870177450012600261
  %43 = xor i64 %39, %42
  %44 = call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len20(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = add i64 %1, 2870177450012600281
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 8) #7
  %8 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %9 = mul i64 %8, -4417276706812531889
  %10 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = xor i64 %11, %6
  %14 = call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 27)
  %15 = mul i64 %14, -7046029288634856825
  %16 = add i64 %15, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %17 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %12, i64 noundef 8) #7
  %18 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %19 = mul i64 %18, -4417276706812531889
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = xor i64 %21, %16
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 27)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %27 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %22, i64 noundef 4) #7
  %28 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, -7046029288634856825
  %31 = xor i64 %26, %30
  %32 = call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 23)
  %33 = mul i64 %32, -4417276706812531889
  %34 = add i64 %33, 1609587929392839161
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len21(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = add i64 %1, 2870177450012600282
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 8) #7
  %8 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %9 = mul i64 %8, -4417276706812531889
  %10 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = xor i64 %11, %6
  %14 = call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 27)
  %15 = mul i64 %14, -7046029288634856825
  %16 = add i64 %15, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %17 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %12, i64 noundef 8) #7
  %18 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %19 = mul i64 %18, -4417276706812531889
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = xor i64 %21, %16
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 27)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %27 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %22, i64 noundef 4) #7
  %28 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, -7046029288634856825
  %31 = xor i64 %26, %30
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %33 = call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 23)
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, 1609587929392839161
  %36 = load i8, ptr %32, align 1
  %37 = zext i8 %36 to i64
  %38 = mul i64 %37, 2870177450012600261
  %39 = xor i64 %35, %38
  %40 = call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len22(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = add i64 %1, 2870177450012600283
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 8) #7
  %8 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %9 = mul i64 %8, -4417276706812531889
  %10 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = xor i64 %11, %6
  %14 = call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 27)
  %15 = mul i64 %14, -7046029288634856825
  %16 = add i64 %15, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %17 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %12, i64 noundef 8) #7
  %18 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %19 = mul i64 %18, -4417276706812531889
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = xor i64 %21, %16
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 27)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %27 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %22, i64 noundef 4) #7
  %28 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, -7046029288634856825
  %31 = xor i64 %26, %30
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %33 = call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 23)
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, 1609587929392839161
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 21
  %37 = load i8, ptr %32, align 1
  %38 = zext i8 %37 to i64
  %39 = mul i64 %38, 2870177450012600261
  %40 = xor i64 %35, %39
  %41 = call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 11)
  %42 = mul i64 %41, -7046029288634856825
  %43 = load i8, ptr %36, align 1
  %44 = zext i8 %43 to i64
  %45 = mul i64 %44, 2870177450012600261
  %46 = xor i64 %42, %45
  %47 = call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len23(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = add i64 %1, 2870177450012600284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 8) #7
  %8 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %9 = mul i64 %8, -4417276706812531889
  %10 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = xor i64 %11, %6
  %14 = call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 27)
  %15 = mul i64 %14, -7046029288634856825
  %16 = add i64 %15, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %17 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %12, i64 noundef 8) #7
  %18 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %19 = mul i64 %18, -4417276706812531889
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = xor i64 %21, %16
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 27)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %27 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %22, i64 noundef 4) #7
  %28 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, -7046029288634856825
  %31 = xor i64 %26, %30
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %33 = call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 23)
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, 1609587929392839161
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 21
  %37 = load i8, ptr %32, align 1
  %38 = zext i8 %37 to i64
  %39 = mul i64 %38, 2870177450012600261
  %40 = xor i64 %35, %39
  %41 = call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 11)
  %42 = mul i64 %41, -7046029288634856825
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %44 = load i8, ptr %36, align 1
  %45 = zext i8 %44 to i64
  %46 = mul i64 %45, 2870177450012600261
  %47 = xor i64 %42, %46
  %48 = call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 11)
  %49 = mul i64 %48, -7046029288634856825
  %50 = load i8, ptr %43, align 1
  %51 = zext i8 %50 to i64
  %52 = mul i64 %51, 2870177450012600261
  %53 = xor i64 %49, %52
  %54 = call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 11)
  %55 = mul i64 %54, -7046029288634856825
  %56 = lshr i64 %55, 33
  %57 = xor i64 %56, %55
  %58 = mul i64 %57, -4417276706812531889
  %59 = lshr i64 %58, 29
  %60 = xor i64 %59, %58
  %61 = mul i64 %60, 1609587929392839161
  %62 = lshr i64 %61, 32
  %63 = xor i64 %62, %61
  ret i64 %63
}

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len24(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = add i64 %1, 2870177450012600285
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 8) #7
  %8 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %9 = mul i64 %8, -4417276706812531889
  %10 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = xor i64 %11, %6
  %14 = call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 27)
  %15 = mul i64 %14, -7046029288634856825
  %16 = add i64 %15, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %17 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %12, i64 noundef 8) #7
  %18 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %19 = mul i64 %18, -4417276706812531889
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = xor i64 %21, %16
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 27)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %27 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %22, i64 noundef 8) #7
  %28 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %29 = mul i64 %28, -4417276706812531889
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = xor i64 %31, %26
  %33 = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 27)
  %34 = mul i64 %33, -7046029288634856825
  %35 = add i64 %34, -8796714831421723037
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len25(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = add i64 %1, 2870177450012600286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 8) #7
  %8 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %9 = mul i64 %8, -4417276706812531889
  %10 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = xor i64 %11, %6
  %14 = call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 27)
  %15 = mul i64 %14, -7046029288634856825
  %16 = add i64 %15, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %17 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %12, i64 noundef 8) #7
  %18 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %19 = mul i64 %18, -4417276706812531889
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = xor i64 %21, %16
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 27)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %27 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %22, i64 noundef 8) #7
  %28 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %29 = mul i64 %28, -4417276706812531889
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = xor i64 %31, %26
  %34 = call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = load i8, ptr %32, align 1
  %38 = zext i8 %37 to i64
  %39 = mul i64 %38, 2870177450012600261
  %40 = xor i64 %36, %39
  %41 = call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len26(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = add i64 %1, 2870177450012600287
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 8) #7
  %8 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %9 = mul i64 %8, -4417276706812531889
  %10 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = xor i64 %11, %6
  %14 = call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 27)
  %15 = mul i64 %14, -7046029288634856825
  %16 = add i64 %15, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %17 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %12, i64 noundef 8) #7
  %18 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %19 = mul i64 %18, -4417276706812531889
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = xor i64 %21, %16
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 27)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %27 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %22, i64 noundef 8) #7
  %28 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %29 = mul i64 %28, -4417276706812531889
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = xor i64 %31, %26
  %34 = call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %38 = load i8, ptr %32, align 1
  %39 = zext i8 %38 to i64
  %40 = mul i64 %39, 2870177450012600261
  %41 = xor i64 %36, %40
  %42 = call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 11)
  %43 = mul i64 %42, -7046029288634856825
  %44 = load i8, ptr %37, align 1
  %45 = zext i8 %44 to i64
  %46 = mul i64 %45, 2870177450012600261
  %47 = xor i64 %43, %46
  %48 = call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len27(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = add i64 %1, 2870177450012600288
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 8) #7
  %8 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %9 = mul i64 %8, -4417276706812531889
  %10 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = xor i64 %11, %6
  %14 = call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 27)
  %15 = mul i64 %14, -7046029288634856825
  %16 = add i64 %15, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %17 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %12, i64 noundef 8) #7
  %18 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %19 = mul i64 %18, -4417276706812531889
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = xor i64 %21, %16
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 27)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %27 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %22, i64 noundef 8) #7
  %28 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %29 = mul i64 %28, -4417276706812531889
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = xor i64 %31, %26
  %34 = call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %38 = load i8, ptr %32, align 1
  %39 = zext i8 %38 to i64
  %40 = mul i64 %39, 2870177450012600261
  %41 = xor i64 %36, %40
  %42 = call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 11)
  %43 = mul i64 %42, -7046029288634856825
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %45 = load i8, ptr %37, align 1
  %46 = zext i8 %45 to i64
  %47 = mul i64 %46, 2870177450012600261
  %48 = xor i64 %43, %47
  %49 = call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 11)
  %50 = mul i64 %49, -7046029288634856825
  %51 = load i8, ptr %44, align 1
  %52 = zext i8 %51 to i64
  %53 = mul i64 %52, 2870177450012600261
  %54 = xor i64 %50, %53
  %55 = call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 11)
  %56 = mul i64 %55, -7046029288634856825
  %57 = lshr i64 %56, 33
  %58 = xor i64 %57, %56
  %59 = mul i64 %58, -4417276706812531889
  %60 = lshr i64 %59, 29
  %61 = xor i64 %60, %59
  %62 = mul i64 %61, 1609587929392839161
  %63 = lshr i64 %62, 32
  %64 = xor i64 %63, %62
  ret i64 %64
}

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len28(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = add i64 %1, 2870177450012600289
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 8) #7
  %9 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %10 = mul i64 %9, -4417276706812531889
  %11 = call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = xor i64 %12, %7
  %15 = call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 27)
  %16 = mul i64 %15, -7046029288634856825
  %17 = add i64 %16, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %18 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %13, i64 noundef 8) #7
  %19 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %20 = mul i64 %19, -4417276706812531889
  %21 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = xor i64 %22, %17
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %28 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %23, i64 noundef 8) #7
  %29 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %30 = mul i64 %29, -4417276706812531889
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %34 = xor i64 %32, %27
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %38 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %33, i64 noundef 4) #7
  %39 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, -7046029288634856825
  %42 = xor i64 %37, %41
  %43 = call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 23)
  %44 = mul i64 %43, -4417276706812531889
  %45 = add i64 %44, 1609587929392839161
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len29(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = add i64 %1, 2870177450012600290
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 8) #7
  %9 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %10 = mul i64 %9, -4417276706812531889
  %11 = call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = xor i64 %12, %7
  %15 = call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 27)
  %16 = mul i64 %15, -7046029288634856825
  %17 = add i64 %16, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %18 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %13, i64 noundef 8) #7
  %19 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %20 = mul i64 %19, -4417276706812531889
  %21 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = xor i64 %22, %17
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %28 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %23, i64 noundef 8) #7
  %29 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %30 = mul i64 %29, -4417276706812531889
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %34 = xor i64 %32, %27
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %38 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %33, i64 noundef 4) #7
  %39 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, -7046029288634856825
  %42 = xor i64 %37, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %44 = call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 23)
  %45 = mul i64 %44, -4417276706812531889
  %46 = add i64 %45, 1609587929392839161
  %47 = load i8, ptr %43, align 1
  %48 = zext i8 %47 to i64
  %49 = mul i64 %48, 2870177450012600261
  %50 = xor i64 %46, %49
  %51 = call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len30(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = add i64 %1, 2870177450012600291
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 8) #7
  %9 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %10 = mul i64 %9, -4417276706812531889
  %11 = call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = xor i64 %12, %7
  %15 = call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 27)
  %16 = mul i64 %15, -7046029288634856825
  %17 = add i64 %16, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %18 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %13, i64 noundef 8) #7
  %19 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %20 = mul i64 %19, -4417276706812531889
  %21 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = xor i64 %22, %17
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %28 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %23, i64 noundef 8) #7
  %29 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %30 = mul i64 %29, -4417276706812531889
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %34 = xor i64 %32, %27
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %38 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %33, i64 noundef 4) #7
  %39 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, -7046029288634856825
  %42 = xor i64 %37, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %44 = call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 23)
  %45 = mul i64 %44, -4417276706812531889
  %46 = add i64 %45, 1609587929392839161
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %48 = load i8, ptr %43, align 1
  %49 = zext i8 %48 to i64
  %50 = mul i64 %49, 2870177450012600261
  %51 = xor i64 %46, %50
  %52 = call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 11)
  %53 = mul i64 %52, -7046029288634856825
  %54 = load i8, ptr %47, align 1
  %55 = zext i8 %54 to i64
  %56 = mul i64 %55, 2870177450012600261
  %57 = xor i64 %53, %56
  %58 = call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 11)
  %59 = mul i64 %58, -7046029288634856825
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len31(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = add i64 %1, 2870177450012600292
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 8) #7
  %9 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %10 = mul i64 %9, -4417276706812531889
  %11 = call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = xor i64 %12, %7
  %15 = call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 27)
  %16 = mul i64 %15, -7046029288634856825
  %17 = add i64 %16, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %18 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %13, i64 noundef 8) #7
  %19 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %20 = mul i64 %19, -4417276706812531889
  %21 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = xor i64 %22, %17
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %28 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %23, i64 noundef 8) #7
  %29 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %30 = mul i64 %29, -4417276706812531889
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %34 = xor i64 %32, %27
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %38 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %33, i64 noundef 4) #7
  %39 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, -7046029288634856825
  %42 = xor i64 %37, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %44 = call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 23)
  %45 = mul i64 %44, -4417276706812531889
  %46 = add i64 %45, 1609587929392839161
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %48 = load i8, ptr %43, align 1
  %49 = zext i8 %48 to i64
  %50 = mul i64 %49, 2870177450012600261
  %51 = xor i64 %46, %50
  %52 = call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 11)
  %53 = mul i64 %52, -7046029288634856825
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %55 = load i8, ptr %47, align 1
  %56 = zext i8 %55 to i64
  %57 = mul i64 %56, 2870177450012600261
  %58 = xor i64 %53, %57
  %59 = call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 11)
  %60 = mul i64 %59, -7046029288634856825
  %61 = load i8, ptr %54, align 1
  %62 = zext i8 %61 to i64
  %63 = mul i64 %62, 2870177450012600261
  %64 = xor i64 %60, %63
  %65 = call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len32(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = add i64 %1, 6983438078262162902
  %8 = add i64 %1, -4417276706812531889
  %9 = add i64 %1, 7046029288634856825
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi ptr [ %0, %2 ], [ %43, %10 ]
  %12 = phi i64 [ %7, %2 ], [ %21, %10 ]
  %13 = phi i64 [ %8, %2 ], [ %28, %10 ]
  %14 = phi i64 [ %1, %2 ], [ %35, %10 ]
  %15 = phi i64 [ %9, %2 ], [ %42, %10 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef %11, i64 noundef 8) #7
  %17 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %18 = mul i64 %17, -4417276706812531889
  %19 = add i64 %18, %12
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %23 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %22, i64 noundef 8) #7
  %24 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %13
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %30 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %29, i64 noundef 8) #7
  %31 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %14
  %34 = call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %37 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %36, i64 noundef 8) #7
  %38 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %39 = mul i64 %38, -4417276706812531889
  %40 = add i64 %39, %15
  %41 = call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 31)
  %42 = mul i64 %41, -7046029288634856825
  %43 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %44 = icmp ugt ptr %43, %0
  br i1 %44, label %45, label %10

45:                                               ; preds = %10
  %46 = call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 1)
  %47 = call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 7)
  %48 = add i64 %47, %46
  %49 = call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 12)
  %50 = add i64 %48, %49
  %51 = call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 18)
  %52 = add i64 %50, %51
  %53 = mul i64 %20, -2381459717836149591
  %54 = call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 31)
  %55 = mul i64 %54, -7046029288634856825
  %56 = xor i64 %52, %55
  %57 = mul i64 %56, -7046029288634856825
  %58 = add i64 %57, -8796714831421723037
  %59 = mul i64 %27, -2381459717836149591
  %60 = call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 31)
  %61 = mul i64 %60, -7046029288634856825
  %62 = xor i64 %58, %61
  %63 = mul i64 %62, -7046029288634856825
  %64 = add i64 %63, -8796714831421723037
  %65 = mul i64 %34, -2381459717836149591
  %66 = call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 31)
  %67 = mul i64 %66, -7046029288634856825
  %68 = xor i64 %64, %67
  %69 = mul i64 %68, -7046029288634856825
  %70 = add i64 %69, -8796714831421723037
  %71 = mul i64 %41, -2381459717836149591
  %72 = call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 31)
  %73 = mul i64 %72, -7046029288634856825
  %74 = xor i64 %70, %73
  %75 = mul i64 %74, -7046029288634856825
  %76 = add i64 %75, -8796714831421723005
  %77 = lshr i64 %76, 33
  %78 = xor i64 %77, %76
  %79 = mul i64 %78, -4417276706812531889
  %80 = lshr i64 %79, 29
  %81 = xor i64 %80, %79
  %82 = mul i64 %81, 1609587929392839161
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  ret i64 %84
}

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len33(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 8) #7
  %8 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %10 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef 8) #7
  %11 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %13 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %12, i64 noundef 8) #7
  %14 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %15, i64 noundef 8) #7
  %17 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %18 = add i64 %1, 6983438078262162902
  %19 = add i64 %1, -4417276706812531889
  %20 = add i64 %1, 7046029288634856825
  %21 = mul i64 %17, -4417276706812531889
  %22 = add i64 %20, %21
  %23 = call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %14, -4417276706812531889
  %26 = add i64 %25, %1
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = mul i64 %11, -4417276706812531889
  %30 = add i64 %19, %29
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = mul i64 %8, -4417276706812531889
  %34 = add i64 %18, %33
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = getelementptr i8, ptr %0, i64 32
  %38 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 1)
  %39 = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 7)
  %40 = add i64 %39, %38
  %41 = call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 12)
  %42 = add i64 %40, %41
  %43 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 18)
  %44 = add i64 %42, %43
  %45 = mul i64 %35, -2381459717836149591
  %46 = call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31)
  %47 = mul i64 %46, -7046029288634856825
  %48 = xor i64 %44, %47
  %49 = mul i64 %48, -7046029288634856825
  %50 = add i64 %49, -8796714831421723037
  %51 = mul i64 %31, -2381459717836149591
  %52 = call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 31)
  %53 = mul i64 %52, -7046029288634856825
  %54 = xor i64 %50, %53
  %55 = mul i64 %54, -7046029288634856825
  %56 = add i64 %55, -8796714831421723037
  %57 = mul i64 %27, -2381459717836149591
  %58 = call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  %60 = xor i64 %56, %59
  %61 = mul i64 %60, -7046029288634856825
  %62 = add i64 %61, -8796714831421723037
  %63 = mul i64 %23, -2381459717836149591
  %64 = call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 31)
  %65 = mul i64 %64, -7046029288634856825
  %66 = xor i64 %62, %65
  %67 = mul i64 %66, -7046029288634856825
  %68 = add i64 %67, -8796714831421723004
  %69 = load i8, ptr %37, align 1
  %70 = zext i8 %69 to i64
  %71 = mul i64 %70, 2870177450012600261
  %72 = xor i64 %68, %71
  %73 = call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 11)
  %74 = mul i64 %73, -7046029288634856825
  %75 = lshr i64 %74, 33
  %76 = xor i64 %75, %74
  %77 = mul i64 %76, -4417276706812531889
  %78 = lshr i64 %77, 29
  %79 = xor i64 %78, %77
  %80 = mul i64 %79, 1609587929392839161
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  ret i64 %82
}

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len39(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef %0, i64 noundef 8) #7
  %9 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %11 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %10, i64 noundef 8) #7
  %12 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %14 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %13, i64 noundef 8) #7
  %15 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %17 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %16, i64 noundef 8) #7
  %18 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %19 = add i64 %1, 6983438078262162902
  %20 = add i64 %1, -4417276706812531889
  %21 = add i64 %1, 7046029288634856825
  %22 = mul i64 %18, -4417276706812531889
  %23 = add i64 %21, %22
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %15, -4417276706812531889
  %27 = add i64 %26, %1
  %28 = call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = mul i64 %12, -4417276706812531889
  %31 = add i64 %20, %30
  %32 = call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = mul i64 %9, -4417276706812531889
  %35 = add i64 %19, %34
  %36 = call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  %38 = getelementptr i8, ptr %0, i64 32
  %39 = call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 1)
  %40 = call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 7)
  %41 = add i64 %40, %39
  %42 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 12)
  %43 = add i64 %41, %42
  %44 = call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 18)
  %45 = add i64 %43, %44
  %46 = mul i64 %36, -2381459717836149591
  %47 = call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 31)
  %48 = mul i64 %47, -7046029288634856825
  %49 = xor i64 %45, %48
  %50 = mul i64 %49, -7046029288634856825
  %51 = add i64 %50, -8796714831421723037
  %52 = mul i64 %32, -2381459717836149591
  %53 = call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = xor i64 %51, %54
  %56 = mul i64 %55, -7046029288634856825
  %57 = add i64 %56, -8796714831421723037
  %58 = mul i64 %28, -2381459717836149591
  %59 = call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = xor i64 %57, %60
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = mul i64 %24, -2381459717836149591
  %65 = call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = xor i64 %63, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421722998
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %70 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %38, i64 noundef 4) #7
  %71 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %72 = zext i32 %71 to i64
  %73 = mul i64 %72, -7046029288634856825
  %74 = xor i64 %69, %73
  %75 = getelementptr i8, ptr %0, i64 36
  %76 = call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 23)
  %77 = mul i64 %76, -4417276706812531889
  %78 = add i64 %77, 1609587929392839161
  %79 = getelementptr i8, ptr %0, i64 37
  %80 = load i8, ptr %75, align 1
  %81 = zext i8 %80 to i64
  %82 = mul i64 %81, 2870177450012600261
  %83 = xor i64 %78, %82
  %84 = call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 11)
  %85 = mul i64 %84, -7046029288634856825
  %86 = getelementptr i8, ptr %0, i64 38
  %87 = load i8, ptr %79, align 1
  %88 = zext i8 %87 to i64
  %89 = mul i64 %88, 2870177450012600261
  %90 = xor i64 %85, %89
  %91 = call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 11)
  %92 = mul i64 %91, -7046029288634856825
  %93 = load i8, ptr %86, align 1
  %94 = zext i8 %93 to i64
  %95 = mul i64 %94, 2870177450012600261
  %96 = xor i64 %92, %95
  %97 = call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 11)
  %98 = mul i64 %97, -7046029288634856825
  %99 = lshr i64 %98, 33
  %100 = xor i64 %99, %98
  %101 = mul i64 %100, -4417276706812531889
  %102 = lshr i64 %101, 29
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, 1609587929392839161
  %105 = lshr i64 %104, 32
  %106 = xor i64 %105, %104
  ret i64 %106
}

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len47(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %9 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef %0, i64 noundef 8) #7
  %10 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %12 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %11, i64 noundef 8) #7
  %13 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %15 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %14, i64 noundef 8) #7
  %16 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %18 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %17, i64 noundef 8) #7
  %19 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %20 = add i64 %1, 6983438078262162902
  %21 = add i64 %1, -4417276706812531889
  %22 = add i64 %1, 7046029288634856825
  %23 = mul i64 %19, -4417276706812531889
  %24 = add i64 %22, %23
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = mul i64 %16, -4417276706812531889
  %28 = add i64 %27, %1
  %29 = call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = mul i64 %13, -4417276706812531889
  %32 = add i64 %21, %31
  %33 = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = mul i64 %10, -4417276706812531889
  %36 = add i64 %20, %35
  %37 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = getelementptr i8, ptr %0, i64 32
  %40 = call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 1)
  %41 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 7)
  %42 = add i64 %41, %40
  %43 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 12)
  %44 = add i64 %42, %43
  %45 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 18)
  %46 = add i64 %44, %45
  %47 = mul i64 %37, -2381459717836149591
  %48 = call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 31)
  %49 = mul i64 %48, -7046029288634856825
  %50 = xor i64 %46, %49
  %51 = mul i64 %50, -7046029288634856825
  %52 = add i64 %51, -8796714831421723037
  %53 = mul i64 %33, -2381459717836149591
  %54 = call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 31)
  %55 = mul i64 %54, -7046029288634856825
  %56 = xor i64 %52, %55
  %57 = mul i64 %56, -7046029288634856825
  %58 = add i64 %57, -8796714831421723037
  %59 = mul i64 %29, -2381459717836149591
  %60 = call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 31)
  %61 = mul i64 %60, -7046029288634856825
  %62 = xor i64 %58, %61
  %63 = mul i64 %62, -7046029288634856825
  %64 = add i64 %63, -8796714831421723037
  %65 = mul i64 %25, -2381459717836149591
  %66 = call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 31)
  %67 = mul i64 %66, -7046029288634856825
  %68 = xor i64 %64, %67
  %69 = mul i64 %68, -7046029288634856825
  %70 = add i64 %69, -8796714831421722990
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %71 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %39, i64 noundef 8) #7
  %72 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %73 = mul i64 %72, -4417276706812531889
  %74 = call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 31)
  %75 = mul i64 %74, -7046029288634856825
  %76 = getelementptr i8, ptr %0, i64 40
  %77 = xor i64 %70, %75
  %78 = call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 27)
  %79 = mul i64 %78, -7046029288634856825
  %80 = add i64 %79, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %81 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %76, i64 noundef 4) #7
  %82 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %83 = zext i32 %82 to i64
  %84 = mul i64 %83, -7046029288634856825
  %85 = xor i64 %80, %84
  %86 = getelementptr i8, ptr %0, i64 44
  %87 = call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 23)
  %88 = mul i64 %87, -4417276706812531889
  %89 = add i64 %88, 1609587929392839161
  %90 = getelementptr i8, ptr %0, i64 45
  %91 = load i8, ptr %86, align 1
  %92 = zext i8 %91 to i64
  %93 = mul i64 %92, 2870177450012600261
  %94 = xor i64 %89, %93
  %95 = call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 11)
  %96 = mul i64 %95, -7046029288634856825
  %97 = getelementptr i8, ptr %0, i64 46
  %98 = load i8, ptr %90, align 1
  %99 = zext i8 %98 to i64
  %100 = mul i64 %99, 2870177450012600261
  %101 = xor i64 %96, %100
  %102 = call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 11)
  %103 = mul i64 %102, -7046029288634856825
  %104 = load i8, ptr %97, align 1
  %105 = zext i8 %104 to i64
  %106 = mul i64 %105, 2870177450012600261
  %107 = xor i64 %103, %106
  %108 = call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 11)
  %109 = mul i64 %108, -7046029288634856825
  %110 = lshr i64 %109, 33
  %111 = xor i64 %110, %109
  %112 = mul i64 %111, -4417276706812531889
  %113 = lshr i64 %112, 29
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, 1609587929392839161
  %116 = lshr i64 %115, 32
  %117 = xor i64 %116, %115
  ret i64 %117
}

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len63(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %11 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef %0, i64 noundef 8) #7
  %12 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %14 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %13, i64 noundef 8) #7
  %15 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %17 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %16, i64 noundef 8) #7
  %18 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %20 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %19, i64 noundef 8) #7
  %21 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %22 = add i64 %1, 6983438078262162902
  %23 = add i64 %1, -4417276706812531889
  %24 = add i64 %1, 7046029288634856825
  %25 = mul i64 %21, -4417276706812531889
  %26 = add i64 %24, %25
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = mul i64 %18, -4417276706812531889
  %30 = add i64 %29, %1
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = mul i64 %15, -4417276706812531889
  %34 = add i64 %23, %33
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = mul i64 %12, -4417276706812531889
  %38 = add i64 %22, %37
  %39 = call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = getelementptr i8, ptr %0, i64 32
  %42 = call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 1)
  %43 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 7)
  %44 = add i64 %43, %42
  %45 = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 12)
  %46 = add i64 %44, %45
  %47 = call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 18)
  %48 = add i64 %46, %47
  %49 = mul i64 %39, -2381459717836149591
  %50 = call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  %52 = xor i64 %48, %51
  %53 = mul i64 %52, -7046029288634856825
  %54 = add i64 %53, -8796714831421723037
  %55 = mul i64 %35, -2381459717836149591
  %56 = call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = xor i64 %54, %57
  %59 = mul i64 %58, -7046029288634856825
  %60 = add i64 %59, -8796714831421723037
  %61 = mul i64 %31, -2381459717836149591
  %62 = call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 31)
  %63 = mul i64 %62, -7046029288634856825
  %64 = xor i64 %60, %63
  %65 = mul i64 %64, -7046029288634856825
  %66 = add i64 %65, -8796714831421723037
  %67 = mul i64 %27, -2381459717836149591
  %68 = call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = xor i64 %66, %69
  %71 = mul i64 %70, -7046029288634856825
  %72 = add i64 %71, -8796714831421722974
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %73 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %41, i64 noundef 8) #7
  %74 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %75 = mul i64 %74, -4417276706812531889
  %76 = call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 31)
  %77 = mul i64 %76, -7046029288634856825
  %78 = getelementptr i8, ptr %0, i64 40
  %79 = xor i64 %72, %77
  %80 = call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 27)
  %81 = mul i64 %80, -7046029288634856825
  %82 = add i64 %81, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %83 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %78, i64 noundef 8) #7
  %84 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %85 = mul i64 %84, -4417276706812531889
  %86 = call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 31)
  %87 = mul i64 %86, -7046029288634856825
  %88 = getelementptr i8, ptr %0, i64 48
  %89 = xor i64 %82, %87
  %90 = call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 27)
  %91 = mul i64 %90, -7046029288634856825
  %92 = add i64 %91, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %93 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %88, i64 noundef 8) #7
  %94 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %95 = mul i64 %94, -4417276706812531889
  %96 = call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 31)
  %97 = mul i64 %96, -7046029288634856825
  %98 = getelementptr i8, ptr %0, i64 56
  %99 = xor i64 %92, %97
  %100 = call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 27)
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %103 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %98, i64 noundef 4) #7
  %104 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %105 = zext i32 %104 to i64
  %106 = mul i64 %105, -7046029288634856825
  %107 = xor i64 %102, %106
  %108 = getelementptr i8, ptr %0, i64 60
  %109 = call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 23)
  %110 = mul i64 %109, -4417276706812531889
  %111 = add i64 %110, 1609587929392839161
  %112 = getelementptr i8, ptr %0, i64 61
  %113 = load i8, ptr %108, align 1
  %114 = zext i8 %113 to i64
  %115 = mul i64 %114, 2870177450012600261
  %116 = xor i64 %111, %115
  %117 = call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 11)
  %118 = mul i64 %117, -7046029288634856825
  %119 = getelementptr i8, ptr %0, i64 62
  %120 = load i8, ptr %112, align 1
  %121 = zext i8 %120 to i64
  %122 = mul i64 %121, 2870177450012600261
  %123 = xor i64 %118, %122
  %124 = call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 11)
  %125 = mul i64 %124, -7046029288634856825
  %126 = load i8, ptr %119, align 1
  %127 = zext i8 %126 to i64
  %128 = mul i64 %127, 2870177450012600261
  %129 = xor i64 %125, %128
  %130 = call i64 @llvm.fshl.i64(i64 %129, i64 %129, i64 11)
  %131 = mul i64 %130, -7046029288634856825
  %132 = lshr i64 %131, 33
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, -4417276706812531889
  %135 = lshr i64 %134, 29
  %136 = xor i64 %135, %134
  %137 = mul i64 %136, 1609587929392839161
  %138 = lshr i64 %137, 32
  %139 = xor i64 %138, %137
  ret i64 %139
}

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len64(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = add i64 %1, 6983438078262162902
  %8 = add i64 %1, -4417276706812531889
  %9 = add i64 %1, 7046029288634856825
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi ptr [ %0, %2 ], [ %43, %10 ]
  %12 = phi i64 [ %7, %2 ], [ %21, %10 ]
  %13 = phi i64 [ %8, %2 ], [ %28, %10 ]
  %14 = phi i64 [ %1, %2 ], [ %35, %10 ]
  %15 = phi i64 [ %9, %2 ], [ %42, %10 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef %11, i64 noundef 8) #7
  %17 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %18 = mul i64 %17, -4417276706812531889
  %19 = add i64 %18, %12
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %23 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %22, i64 noundef 8) #7
  %24 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %13
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %30 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %29, i64 noundef 8) #7
  %31 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %14
  %34 = call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %37 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %36, i64 noundef 8) #7
  %38 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %39 = mul i64 %38, -4417276706812531889
  %40 = add i64 %39, %15
  %41 = call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 31)
  %42 = mul i64 %41, -7046029288634856825
  %43 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %44 = icmp ugt ptr %11, %0
  br i1 %44, label %45, label %10

45:                                               ; preds = %10
  %46 = call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 1)
  %47 = call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 7)
  %48 = add i64 %47, %46
  %49 = call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 12)
  %50 = add i64 %48, %49
  %51 = call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 18)
  %52 = add i64 %50, %51
  %53 = mul i64 %20, -2381459717836149591
  %54 = call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 31)
  %55 = mul i64 %54, -7046029288634856825
  %56 = xor i64 %52, %55
  %57 = mul i64 %56, -7046029288634856825
  %58 = add i64 %57, -8796714831421723037
  %59 = mul i64 %27, -2381459717836149591
  %60 = call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 31)
  %61 = mul i64 %60, -7046029288634856825
  %62 = xor i64 %58, %61
  %63 = mul i64 %62, -7046029288634856825
  %64 = add i64 %63, -8796714831421723037
  %65 = mul i64 %34, -2381459717836149591
  %66 = call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 31)
  %67 = mul i64 %66, -7046029288634856825
  %68 = xor i64 %64, %67
  %69 = mul i64 %68, -7046029288634856825
  %70 = add i64 %69, -8796714831421723037
  %71 = mul i64 %41, -2381459717836149591
  %72 = call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 31)
  %73 = mul i64 %72, -7046029288634856825
  %74 = xor i64 %70, %73
  %75 = mul i64 %74, -7046029288634856825
  %76 = add i64 %75, -8796714831421722973
  %77 = lshr i64 %76, 33
  %78 = xor i64 %77, %76
  %79 = mul i64 %78, -4417276706812531889
  %80 = lshr i64 %79, 29
  %81 = xor i64 %80, %79
  %82 = mul i64 %81, 1609587929392839161
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  ret i64 %84
}

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len95(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = add i64 %1, 6983438078262162902
  %12 = add i64 %1, -4417276706812531889
  %13 = add i64 %1, 7046029288634856825
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %14 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef %0, i64 noundef 8) #7
  %15 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  %16 = mul i64 %15, -4417276706812531889
  %17 = add i64 %16, %11
  %18 = call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %21 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %20, i64 noundef 8) #7
  %22 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  %23 = mul i64 %22, -4417276706812531889
  %24 = add i64 %23, %12
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %28 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %27, i64 noundef 8) #7
  %29 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, %1
  %32 = call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %35 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %34, i64 noundef 8) #7
  %36 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, %13
  %39 = call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %42 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %41, i64 noundef 8) #7
  %43 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  %44 = mul i64 %43, -4417276706812531889
  %45 = add i64 %44, %19
  %46 = call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31)
  %47 = mul i64 %46, -7046029288634856825
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %49 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %48, i64 noundef 8) #7
  %50 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  %51 = mul i64 %50, -4417276706812531889
  %52 = add i64 %51, %26
  %53 = call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %56 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %55, i64 noundef 8) #7
  %57 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  %58 = mul i64 %57, -4417276706812531889
  %59 = add i64 %58, %33
  %60 = call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 31)
  %61 = mul i64 %60, -7046029288634856825
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %63 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %62, i64 noundef 8) #7
  %64 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %65 = mul i64 %64, -4417276706812531889
  %66 = add i64 %65, %40
  %67 = call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 31)
  %68 = mul i64 %67, -7046029288634856825
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %70 = call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 1)
  %71 = call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 7)
  %72 = add i64 %71, %70
  %73 = call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 12)
  %74 = add i64 %72, %73
  %75 = call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 18)
  %76 = add i64 %74, %75
  %77 = mul i64 %46, -2381459717836149591
  %78 = call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 31)
  %79 = mul i64 %78, -7046029288634856825
  %80 = xor i64 %76, %79
  %81 = mul i64 %80, -7046029288634856825
  %82 = add i64 %81, -8796714831421723037
  %83 = mul i64 %53, -2381459717836149591
  %84 = call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 31)
  %85 = mul i64 %84, -7046029288634856825
  %86 = xor i64 %82, %85
  %87 = mul i64 %86, -7046029288634856825
  %88 = add i64 %87, -8796714831421723037
  %89 = mul i64 %60, -2381459717836149591
  %90 = call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 31)
  %91 = mul i64 %90, -7046029288634856825
  %92 = xor i64 %88, %91
  %93 = mul i64 %92, -7046029288634856825
  %94 = add i64 %93, -8796714831421723037
  %95 = mul i64 %67, -2381459717836149591
  %96 = call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 31)
  %97 = mul i64 %96, -7046029288634856825
  %98 = xor i64 %94, %97
  %99 = mul i64 %98, -7046029288634856825
  %100 = add i64 %99, -8796714831421722942
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %101 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %69, i64 noundef 8) #7
  %102 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %103 = mul i64 %102, -4417276706812531889
  %104 = call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 31)
  %105 = mul i64 %104, -7046029288634856825
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %107 = xor i64 %105, %100
  %108 = call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 27)
  %109 = mul i64 %108, -7046029288634856825
  %110 = add i64 %109, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %111 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %106, i64 noundef 8) #7
  %112 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %113 = mul i64 %112, -4417276706812531889
  %114 = call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 31)
  %115 = mul i64 %114, -7046029288634856825
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %117 = xor i64 %115, %110
  %118 = call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 27)
  %119 = mul i64 %118, -7046029288634856825
  %120 = add i64 %119, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %121 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %116, i64 noundef 8) #7
  %122 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %123 = mul i64 %122, -4417276706812531889
  %124 = call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 31)
  %125 = mul i64 %124, -7046029288634856825
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %127 = xor i64 %125, %120
  %128 = call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 27)
  %129 = mul i64 %128, -7046029288634856825
  %130 = add i64 %129, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %131 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %126, i64 noundef 4) #7
  %132 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %133 = zext i32 %132 to i64
  %134 = mul i64 %133, -7046029288634856825
  %135 = xor i64 %130, %134
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %137 = call i64 @llvm.fshl.i64(i64 %135, i64 %135, i64 23)
  %138 = mul i64 %137, -4417276706812531889
  %139 = add i64 %138, 1609587929392839161
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 93
  %141 = load i8, ptr %136, align 1
  %142 = zext i8 %141 to i64
  %143 = mul i64 %142, 2870177450012600261
  %144 = xor i64 %139, %143
  %145 = call i64 @llvm.fshl.i64(i64 %144, i64 %144, i64 11)
  %146 = mul i64 %145, -7046029288634856825
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 94
  %148 = load i8, ptr %140, align 1
  %149 = zext i8 %148 to i64
  %150 = mul i64 %149, 2870177450012600261
  %151 = xor i64 %146, %150
  %152 = call i64 @llvm.fshl.i64(i64 %151, i64 %151, i64 11)
  %153 = mul i64 %152, -7046029288634856825
  %154 = load i8, ptr %147, align 1
  %155 = zext i8 %154 to i64
  %156 = mul i64 %155, 2870177450012600261
  %157 = xor i64 %153, %156
  %158 = call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 11)
  %159 = mul i64 %158, -7046029288634856825
  %160 = lshr i64 %159, 33
  %161 = xor i64 %160, %159
  %162 = mul i64 %161, -4417276706812531889
  %163 = lshr i64 %162, 29
  %164 = xor i64 %163, %162
  %165 = mul i64 %164, 1609587929392839161
  %166 = lshr i64 %165, 32
  %167 = xor i64 %166, %165
  ret i64 %167
}

; Function Attrs: nounwind
define dso_local i64 @target_s64_7_8(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  %12 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %11) #6
  %13 = call ptr @memset(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 88) #7
  %14 = add i64 %1, 6983438078262162902
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %14, ptr %15, align 8
  %16 = add i64 %1, -4417276706812531889
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %16, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %1, ptr %18, align 8
  %19 = add i64 %1, 7046029288634856825
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %19, ptr %20, align 8
  %21 = call ptr @memcpy(ptr noundef nonnull %12, ptr noundef nonnull %11, i64 noundef 80) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #6
  %22 = icmp eq ptr %0, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %25 = load i32, ptr %24, align 8
  br label %94

26:                                               ; preds = %2
  %27 = load i64, ptr %12, align 8
  %28 = add i64 %27, 7
  store i64 %28, ptr %12, align 8
  %29 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %30 = load i32, ptr %29, align 8
  %31 = zext i32 %30 to i64
  %32 = icmp ult i32 %30, 25
  %33 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 %31
  br i1 %32, label %35, label %39

35:                                               ; preds = %26
  %36 = call ptr @memcpy(ptr noundef nonnull %34, ptr noundef nonnull %0, i64 noundef 7) #7
  %37 = load i32, ptr %29, align 8
  %38 = add i32 %37, 7
  br label %92

39:                                               ; preds = %26
  %40 = sub i32 32, %30
  %41 = zext i32 %40 to i64
  %42 = call ptr @memcpy(ptr noundef nonnull %34, ptr noundef nonnull %0, i64 noundef %41) #7
  %43 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %44 = load i64, ptr %43, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %45 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %33, i64 noundef 8) #7
  %46 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  %47 = mul i64 %46, -4417276706812531889
  %48 = add i64 %47, %44
  %49 = call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 31)
  %50 = mul i64 %49, -7046029288634856825
  store i64 %50, ptr %43, align 8
  %51 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %54 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %53, i64 noundef 8) #7
  %55 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  %56 = mul i64 %55, -4417276706812531889
  %57 = add i64 %56, %52
  %58 = call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  store i64 %59, ptr %51, align 8
  %60 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds nuw i8, ptr %12, i64 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %63 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %62, i64 noundef 8) #7
  %64 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  %65 = mul i64 %64, -4417276706812531889
  %66 = add i64 %65, %61
  %67 = call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 31)
  %68 = mul i64 %67, -7046029288634856825
  store i64 %68, ptr %60, align 8
  %69 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %72 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %71, i64 noundef 8) #7
  %73 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %74 = mul i64 %73, -4417276706812531889
  %75 = add i64 %74, %70
  %76 = call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 31)
  %77 = mul i64 %76, -7046029288634856825
  store i64 %77, ptr %69, align 8
  %78 = load i32, ptr %29, align 8
  %79 = sub i32 32, %78
  store i32 0, ptr %29, align 8
  %80 = icmp ult i32 %79, 7
  br i1 %80, label %86, label %81

81:                                               ; preds = %39
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %83 = load i64, ptr %12, align 8
  %84 = add i64 %83, 8
  store i64 %84, ptr %12, align 8
  %85 = getelementptr inbounds nuw i8, ptr %12, i64 72
  br label %103

86:                                               ; preds = %39
  %87 = zext nneg i32 %79 to i64
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = sub nuw nsw i64 7, %87
  %90 = call ptr @memcpy(ptr noundef nonnull %33, ptr noundef nonnull %88, i64 noundef %89) #7
  %91 = trunc nuw nsw i64 %89 to i32
  br label %92

92:                                               ; preds = %86, %35
  %93 = phi i32 [ %38, %35 ], [ %91, %86 ]
  store i32 %93, ptr %29, align 8
  br label %94

94:                                               ; preds = %23, %92
  %95 = phi i32 [ %25, %23 ], [ %93, %92 ]
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %98 = load i64, ptr %12, align 8
  %99 = add i64 %98, 8
  store i64 %99, ptr %12, align 8
  %100 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %101 = zext i32 %95 to i64
  %102 = icmp ult i32 %95, 24
  br i1 %102, label %103, label %112

103:                                              ; preds = %81, %94
  %104 = phi i64 [ 0, %81 ], [ %101, %94 ]
  %105 = phi ptr [ %85, %81 ], [ %100, %94 ]
  %106 = phi ptr [ %82, %81 ], [ %96, %94 ]
  %107 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 %104
  %109 = call ptr @memcpy(ptr noundef nonnull %108, ptr noundef nonnull %106, i64 noundef 8) #7
  %110 = load i32, ptr %105, align 8
  %111 = add i32 %110, 8
  br label %165

112:                                              ; preds = %94
  %113 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 %101
  %115 = sub i32 32, %95
  %116 = zext i32 %115 to i64
  %117 = call ptr @memcpy(ptr noundef nonnull %114, ptr noundef nonnull %96, i64 noundef %116) #7
  %118 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %119 = load i64, ptr %118, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %120 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %113, i64 noundef 8) #7
  %121 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %122 = mul i64 %121, -4417276706812531889
  %123 = add i64 %122, %119
  %124 = call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 31)
  %125 = mul i64 %124, -7046029288634856825
  store i64 %125, ptr %118, align 8
  %126 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %127 = load i64, ptr %126, align 8
  %128 = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %129 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %128, i64 noundef 8) #7
  %130 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %131 = mul i64 %130, -4417276706812531889
  %132 = add i64 %131, %127
  %133 = call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 31)
  %134 = mul i64 %133, -7046029288634856825
  store i64 %134, ptr %126, align 8
  %135 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %136 = load i64, ptr %135, align 8
  %137 = getelementptr inbounds nuw i8, ptr %12, i64 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %138 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %137, i64 noundef 8) #7
  %139 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %140 = mul i64 %139, -4417276706812531889
  %141 = add i64 %140, %136
  %142 = call i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 31)
  %143 = mul i64 %142, -7046029288634856825
  store i64 %143, ptr %135, align 8
  %144 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %145 = load i64, ptr %144, align 8
  %146 = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %147 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %146, i64 noundef 8) #7
  %148 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %149 = mul i64 %148, -4417276706812531889
  %150 = add i64 %149, %145
  %151 = call i64 @llvm.fshl.i64(i64 %150, i64 %150, i64 31)
  %152 = mul i64 %151, -7046029288634856825
  store i64 %152, ptr %144, align 8
  %153 = load i32, ptr %100, align 8
  %154 = sub i32 32, %153
  store i32 0, ptr %100, align 8
  %155 = icmp ult i32 %154, 8
  br i1 %155, label %156, label %168

156:                                              ; preds = %112
  %157 = zext nneg i32 %154 to i64
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %157
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 7
  %160 = ptrtoint ptr %97 to i64
  %161 = ptrtoint ptr %159 to i64
  %162 = sub i64 %160, %161
  %163 = call ptr @memcpy(ptr noundef nonnull %113, ptr noundef nonnull %159, i64 noundef %162) #7
  %164 = trunc i64 %162 to i32
  br label %165

165:                                              ; preds = %156, %103
  %166 = phi ptr [ %105, %103 ], [ %100, %156 ]
  %167 = phi i32 [ %111, %103 ], [ %164, %156 ]
  store i32 %167, ptr %166, align 8
  br label %168

168:                                              ; preds = %112, %165
  %169 = load i64, ptr %12, align 8
  %170 = icmp ugt i64 %169, 31
  br i1 %170, label %171, label %211

171:                                              ; preds = %168
  %172 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %173 = load i64, ptr %172, align 8
  %174 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %175 = load i64, ptr %174, align 8
  %176 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %177 = load i64, ptr %176, align 8
  %178 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %179 = load i64, ptr %178, align 8
  %180 = call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 1)
  %181 = call i64 @llvm.fshl.i64(i64 %175, i64 %175, i64 7)
  %182 = add i64 %181, %180
  %183 = call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 12)
  %184 = add i64 %182, %183
  %185 = call i64 @llvm.fshl.i64(i64 %179, i64 %179, i64 18)
  %186 = add i64 %184, %185
  %187 = mul i64 %173, -4417276706812531889
  %188 = call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 31)
  %189 = mul i64 %188, -7046029288634856825
  %190 = xor i64 %186, %189
  %191 = mul i64 %190, -7046029288634856825
  %192 = add i64 %191, -8796714831421723037
  %193 = mul i64 %175, -4417276706812531889
  %194 = call i64 @llvm.fshl.i64(i64 %193, i64 %193, i64 31)
  %195 = mul i64 %194, -7046029288634856825
  %196 = xor i64 %192, %195
  %197 = mul i64 %196, -7046029288634856825
  %198 = add i64 %197, -8796714831421723037
  %199 = mul i64 %177, -4417276706812531889
  %200 = call i64 @llvm.fshl.i64(i64 %199, i64 %199, i64 31)
  %201 = mul i64 %200, -7046029288634856825
  %202 = xor i64 %198, %201
  %203 = mul i64 %202, -7046029288634856825
  %204 = add i64 %203, -8796714831421723037
  %205 = mul i64 %179, -4417276706812531889
  %206 = call i64 @llvm.fshl.i64(i64 %205, i64 %205, i64 31)
  %207 = mul i64 %206, -7046029288634856825
  %208 = xor i64 %204, %207
  %209 = mul i64 %208, -7046029288634856825
  %210 = add i64 %209, -8796714831421723037
  br label %215

211:                                              ; preds = %168
  %212 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %213 = load i64, ptr %212, align 8
  %214 = add i64 %213, 2870177450012600261
  br label %215

215:                                              ; preds = %211, %171
  %216 = phi i64 [ %210, %171 ], [ %214, %211 ]
  %217 = add i64 %216, %169
  %218 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %219 = and i64 %169, 31
  switch i64 %219, label %621 [
    i64 24, label %220
    i64 16, label %230
    i64 8, label %242
    i64 28, label %253
    i64 20, label %263
    i64 12, label %275
    i64 4, label %287
    i64 25, label %297
    i64 17, label %307
    i64 9, label %319
    i64 29, label %337
    i64 21, label %347
    i64 13, label %359
    i64 5, label %371
    i64 26, label %388
    i64 18, label %398
    i64 10, label %410
    i64 30, label %435
    i64 22, label %445
    i64 14, label %457
    i64 6, label %469
    i64 27, label %493
    i64 19, label %503
    i64 11, label %515
    i64 31, label %547
    i64 23, label %557
    i64 15, label %569
    i64 7, label %581
    i64 3, label %592
    i64 2, label %602
    i64 1, label %612
    i64 0, label %622
  ]

220:                                              ; preds = %215
  %221 = load i64, ptr %218, align 8
  %222 = mul i64 %221, -4417276706812531889
  %223 = call i64 @llvm.fshl.i64(i64 %222, i64 %222, i64 31)
  %224 = mul i64 %223, -7046029288634856825
  %225 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %226 = xor i64 %224, %217
  %227 = call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 27)
  %228 = mul i64 %227, -7046029288634856825
  %229 = add i64 %228, -8796714831421723037
  br label %230

230:                                              ; preds = %220, %215
  %231 = phi ptr [ %218, %215 ], [ %225, %220 ]
  %232 = phi i64 [ %217, %215 ], [ %229, %220 ]
  %233 = load i64, ptr %231, align 8
  %234 = mul i64 %233, -4417276706812531889
  %235 = call i64 @llvm.fshl.i64(i64 %234, i64 %234, i64 31)
  %236 = mul i64 %235, -7046029288634856825
  %237 = getelementptr inbounds nuw i8, ptr %231, i64 8
  %238 = xor i64 %236, %232
  %239 = call i64 @llvm.fshl.i64(i64 %238, i64 %238, i64 27)
  %240 = mul i64 %239, -7046029288634856825
  %241 = add i64 %240, -8796714831421723037
  br label %242

242:                                              ; preds = %230, %215
  %243 = phi ptr [ %218, %215 ], [ %237, %230 ]
  %244 = phi i64 [ %217, %215 ], [ %241, %230 ]
  %245 = load i64, ptr %243, align 8
  %246 = mul i64 %245, -4417276706812531889
  %247 = call i64 @llvm.fshl.i64(i64 %246, i64 %246, i64 31)
  %248 = mul i64 %247, -7046029288634856825
  %249 = xor i64 %248, %244
  %250 = call i64 @llvm.fshl.i64(i64 %249, i64 %249, i64 27)
  %251 = mul i64 %250, -7046029288634856825
  %252 = add i64 %251, -8796714831421723037
  br label %622

253:                                              ; preds = %215
  %254 = load i64, ptr %218, align 8
  %255 = mul i64 %254, -4417276706812531889
  %256 = call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 31)
  %257 = mul i64 %256, -7046029288634856825
  %258 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %259 = xor i64 %257, %217
  %260 = call i64 @llvm.fshl.i64(i64 %259, i64 %259, i64 27)
  %261 = mul i64 %260, -7046029288634856825
  %262 = add i64 %261, -8796714831421723037
  br label %263

263:                                              ; preds = %253, %215
  %264 = phi ptr [ %218, %215 ], [ %258, %253 ]
  %265 = phi i64 [ %217, %215 ], [ %262, %253 ]
  %266 = load i64, ptr %264, align 8
  %267 = mul i64 %266, -4417276706812531889
  %268 = call i64 @llvm.fshl.i64(i64 %267, i64 %267, i64 31)
  %269 = mul i64 %268, -7046029288634856825
  %270 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %271 = xor i64 %269, %265
  %272 = call i64 @llvm.fshl.i64(i64 %271, i64 %271, i64 27)
  %273 = mul i64 %272, -7046029288634856825
  %274 = add i64 %273, -8796714831421723037
  br label %275

275:                                              ; preds = %263, %215
  %276 = phi ptr [ %218, %215 ], [ %270, %263 ]
  %277 = phi i64 [ %217, %215 ], [ %274, %263 ]
  %278 = load i64, ptr %276, align 8
  %279 = mul i64 %278, -4417276706812531889
  %280 = call i64 @llvm.fshl.i64(i64 %279, i64 %279, i64 31)
  %281 = mul i64 %280, -7046029288634856825
  %282 = getelementptr inbounds nuw i8, ptr %276, i64 8
  %283 = xor i64 %281, %277
  %284 = call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 27)
  %285 = mul i64 %284, -7046029288634856825
  %286 = add i64 %285, -8796714831421723037
  br label %287

287:                                              ; preds = %275, %215
  %288 = phi ptr [ %218, %215 ], [ %282, %275 ]
  %289 = phi i64 [ %217, %215 ], [ %286, %275 ]
  %290 = load i32, ptr %288, align 4
  %291 = zext i32 %290 to i64
  %292 = mul i64 %291, -7046029288634856825
  %293 = xor i64 %292, %289
  %294 = call i64 @llvm.fshl.i64(i64 %293, i64 %293, i64 23)
  %295 = mul i64 %294, -4417276706812531889
  %296 = add i64 %295, 1609587929392839161
  br label %622

297:                                              ; preds = %215
  %298 = load i64, ptr %218, align 8
  %299 = mul i64 %298, -4417276706812531889
  %300 = call i64 @llvm.fshl.i64(i64 %299, i64 %299, i64 31)
  %301 = mul i64 %300, -7046029288634856825
  %302 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %303 = xor i64 %301, %217
  %304 = call i64 @llvm.fshl.i64(i64 %303, i64 %303, i64 27)
  %305 = mul i64 %304, -7046029288634856825
  %306 = add i64 %305, -8796714831421723037
  br label %307

307:                                              ; preds = %297, %215
  %308 = phi ptr [ %218, %215 ], [ %302, %297 ]
  %309 = phi i64 [ %217, %215 ], [ %306, %297 ]
  %310 = load i64, ptr %308, align 8
  %311 = mul i64 %310, -4417276706812531889
  %312 = call i64 @llvm.fshl.i64(i64 %311, i64 %311, i64 31)
  %313 = mul i64 %312, -7046029288634856825
  %314 = getelementptr inbounds nuw i8, ptr %308, i64 8
  %315 = xor i64 %313, %309
  %316 = call i64 @llvm.fshl.i64(i64 %315, i64 %315, i64 27)
  %317 = mul i64 %316, -7046029288634856825
  %318 = add i64 %317, -8796714831421723037
  br label %319

319:                                              ; preds = %307, %215
  %320 = phi ptr [ %218, %215 ], [ %314, %307 ]
  %321 = phi i64 [ %217, %215 ], [ %318, %307 ]
  %322 = load i64, ptr %320, align 8
  %323 = mul i64 %322, -4417276706812531889
  %324 = call i64 @llvm.fshl.i64(i64 %323, i64 %323, i64 31)
  %325 = mul i64 %324, -7046029288634856825
  %326 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %327 = xor i64 %325, %321
  %328 = call i64 @llvm.fshl.i64(i64 %327, i64 %327, i64 27)
  %329 = mul i64 %328, -7046029288634856825
  %330 = add i64 %329, -8796714831421723037
  %331 = load i8, ptr %326, align 1
  %332 = zext i8 %331 to i64
  %333 = mul i64 %332, 2870177450012600261
  %334 = xor i64 %330, %333
  %335 = call i64 @llvm.fshl.i64(i64 %334, i64 %334, i64 11)
  %336 = mul i64 %335, -7046029288634856825
  br label %622

337:                                              ; preds = %215
  %338 = load i64, ptr %218, align 8
  %339 = mul i64 %338, -4417276706812531889
  %340 = call i64 @llvm.fshl.i64(i64 %339, i64 %339, i64 31)
  %341 = mul i64 %340, -7046029288634856825
  %342 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %343 = xor i64 %341, %217
  %344 = call i64 @llvm.fshl.i64(i64 %343, i64 %343, i64 27)
  %345 = mul i64 %344, -7046029288634856825
  %346 = add i64 %345, -8796714831421723037
  br label %347

347:                                              ; preds = %337, %215
  %348 = phi ptr [ %218, %215 ], [ %342, %337 ]
  %349 = phi i64 [ %217, %215 ], [ %346, %337 ]
  %350 = load i64, ptr %348, align 8
  %351 = mul i64 %350, -4417276706812531889
  %352 = call i64 @llvm.fshl.i64(i64 %351, i64 %351, i64 31)
  %353 = mul i64 %352, -7046029288634856825
  %354 = getelementptr inbounds nuw i8, ptr %348, i64 8
  %355 = xor i64 %353, %349
  %356 = call i64 @llvm.fshl.i64(i64 %355, i64 %355, i64 27)
  %357 = mul i64 %356, -7046029288634856825
  %358 = add i64 %357, -8796714831421723037
  br label %359

359:                                              ; preds = %347, %215
  %360 = phi ptr [ %218, %215 ], [ %354, %347 ]
  %361 = phi i64 [ %217, %215 ], [ %358, %347 ]
  %362 = load i64, ptr %360, align 8
  %363 = mul i64 %362, -4417276706812531889
  %364 = call i64 @llvm.fshl.i64(i64 %363, i64 %363, i64 31)
  %365 = mul i64 %364, -7046029288634856825
  %366 = getelementptr inbounds nuw i8, ptr %360, i64 8
  %367 = xor i64 %365, %361
  %368 = call i64 @llvm.fshl.i64(i64 %367, i64 %367, i64 27)
  %369 = mul i64 %368, -7046029288634856825
  %370 = add i64 %369, -8796714831421723037
  br label %371

371:                                              ; preds = %359, %215
  %372 = phi ptr [ %218, %215 ], [ %366, %359 ]
  %373 = phi i64 [ %217, %215 ], [ %370, %359 ]
  %374 = load i32, ptr %372, align 4
  %375 = zext i32 %374 to i64
  %376 = mul i64 %375, -7046029288634856825
  %377 = xor i64 %376, %373
  %378 = getelementptr inbounds nuw i8, ptr %372, i64 4
  %379 = call i64 @llvm.fshl.i64(i64 %377, i64 %377, i64 23)
  %380 = mul i64 %379, -4417276706812531889
  %381 = add i64 %380, 1609587929392839161
  %382 = load i8, ptr %378, align 1
  %383 = zext i8 %382 to i64
  %384 = mul i64 %383, 2870177450012600261
  %385 = xor i64 %381, %384
  %386 = call i64 @llvm.fshl.i64(i64 %385, i64 %385, i64 11)
  %387 = mul i64 %386, -7046029288634856825
  br label %622

388:                                              ; preds = %215
  %389 = load i64, ptr %218, align 8
  %390 = mul i64 %389, -4417276706812531889
  %391 = call i64 @llvm.fshl.i64(i64 %390, i64 %390, i64 31)
  %392 = mul i64 %391, -7046029288634856825
  %393 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %394 = xor i64 %392, %217
  %395 = call i64 @llvm.fshl.i64(i64 %394, i64 %394, i64 27)
  %396 = mul i64 %395, -7046029288634856825
  %397 = add i64 %396, -8796714831421723037
  br label %398

398:                                              ; preds = %388, %215
  %399 = phi ptr [ %218, %215 ], [ %393, %388 ]
  %400 = phi i64 [ %217, %215 ], [ %397, %388 ]
  %401 = load i64, ptr %399, align 8
  %402 = mul i64 %401, -4417276706812531889
  %403 = call i64 @llvm.fshl.i64(i64 %402, i64 %402, i64 31)
  %404 = mul i64 %403, -7046029288634856825
  %405 = getelementptr inbounds nuw i8, ptr %399, i64 8
  %406 = xor i64 %404, %400
  %407 = call i64 @llvm.fshl.i64(i64 %406, i64 %406, i64 27)
  %408 = mul i64 %407, -7046029288634856825
  %409 = add i64 %408, -8796714831421723037
  br label %410

410:                                              ; preds = %398, %215
  %411 = phi ptr [ %218, %215 ], [ %405, %398 ]
  %412 = phi i64 [ %217, %215 ], [ %409, %398 ]
  %413 = load i64, ptr %411, align 8
  %414 = mul i64 %413, -4417276706812531889
  %415 = call i64 @llvm.fshl.i64(i64 %414, i64 %414, i64 31)
  %416 = mul i64 %415, -7046029288634856825
  %417 = getelementptr inbounds nuw i8, ptr %411, i64 8
  %418 = xor i64 %416, %412
  %419 = call i64 @llvm.fshl.i64(i64 %418, i64 %418, i64 27)
  %420 = mul i64 %419, -7046029288634856825
  %421 = add i64 %420, -8796714831421723037
  %422 = getelementptr inbounds nuw i8, ptr %411, i64 9
  %423 = load i8, ptr %417, align 1
  %424 = zext i8 %423 to i64
  %425 = mul i64 %424, 2870177450012600261
  %426 = xor i64 %421, %425
  %427 = call i64 @llvm.fshl.i64(i64 %426, i64 %426, i64 11)
  %428 = mul i64 %427, -7046029288634856825
  %429 = load i8, ptr %422, align 1
  %430 = zext i8 %429 to i64
  %431 = mul i64 %430, 2870177450012600261
  %432 = xor i64 %428, %431
  %433 = call i64 @llvm.fshl.i64(i64 %432, i64 %432, i64 11)
  %434 = mul i64 %433, -7046029288634856825
  br label %622

435:                                              ; preds = %215
  %436 = load i64, ptr %218, align 8
  %437 = mul i64 %436, -4417276706812531889
  %438 = call i64 @llvm.fshl.i64(i64 %437, i64 %437, i64 31)
  %439 = mul i64 %438, -7046029288634856825
  %440 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %441 = xor i64 %439, %217
  %442 = call i64 @llvm.fshl.i64(i64 %441, i64 %441, i64 27)
  %443 = mul i64 %442, -7046029288634856825
  %444 = add i64 %443, -8796714831421723037
  br label %445

445:                                              ; preds = %435, %215
  %446 = phi ptr [ %218, %215 ], [ %440, %435 ]
  %447 = phi i64 [ %217, %215 ], [ %444, %435 ]
  %448 = load i64, ptr %446, align 8
  %449 = mul i64 %448, -4417276706812531889
  %450 = call i64 @llvm.fshl.i64(i64 %449, i64 %449, i64 31)
  %451 = mul i64 %450, -7046029288634856825
  %452 = getelementptr inbounds nuw i8, ptr %446, i64 8
  %453 = xor i64 %451, %447
  %454 = call i64 @llvm.fshl.i64(i64 %453, i64 %453, i64 27)
  %455 = mul i64 %454, -7046029288634856825
  %456 = add i64 %455, -8796714831421723037
  br label %457

457:                                              ; preds = %445, %215
  %458 = phi ptr [ %218, %215 ], [ %452, %445 ]
  %459 = phi i64 [ %217, %215 ], [ %456, %445 ]
  %460 = load i64, ptr %458, align 8
  %461 = mul i64 %460, -4417276706812531889
  %462 = call i64 @llvm.fshl.i64(i64 %461, i64 %461, i64 31)
  %463 = mul i64 %462, -7046029288634856825
  %464 = getelementptr inbounds nuw i8, ptr %458, i64 8
  %465 = xor i64 %463, %459
  %466 = call i64 @llvm.fshl.i64(i64 %465, i64 %465, i64 27)
  %467 = mul i64 %466, -7046029288634856825
  %468 = add i64 %467, -8796714831421723037
  br label %469

469:                                              ; preds = %457, %215
  %470 = phi ptr [ %218, %215 ], [ %464, %457 ]
  %471 = phi i64 [ %217, %215 ], [ %468, %457 ]
  %472 = load i32, ptr %470, align 4
  %473 = zext i32 %472 to i64
  %474 = mul i64 %473, -7046029288634856825
  %475 = xor i64 %474, %471
  %476 = getelementptr inbounds nuw i8, ptr %470, i64 4
  %477 = call i64 @llvm.fshl.i64(i64 %475, i64 %475, i64 23)
  %478 = mul i64 %477, -4417276706812531889
  %479 = add i64 %478, 1609587929392839161
  %480 = getelementptr inbounds nuw i8, ptr %470, i64 5
  %481 = load i8, ptr %476, align 1
  %482 = zext i8 %481 to i64
  %483 = mul i64 %482, 2870177450012600261
  %484 = xor i64 %479, %483
  %485 = call i64 @llvm.fshl.i64(i64 %484, i64 %484, i64 11)
  %486 = mul i64 %485, -7046029288634856825
  %487 = load i8, ptr %480, align 1
  %488 = zext i8 %487 to i64
  %489 = mul i64 %488, 2870177450012600261
  %490 = xor i64 %486, %489
  %491 = call i64 @llvm.fshl.i64(i64 %490, i64 %490, i64 11)
  %492 = mul i64 %491, -7046029288634856825
  br label %622

493:                                              ; preds = %215
  %494 = load i64, ptr %218, align 8
  %495 = mul i64 %494, -4417276706812531889
  %496 = call i64 @llvm.fshl.i64(i64 %495, i64 %495, i64 31)
  %497 = mul i64 %496, -7046029288634856825
  %498 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %499 = xor i64 %497, %217
  %500 = call i64 @llvm.fshl.i64(i64 %499, i64 %499, i64 27)
  %501 = mul i64 %500, -7046029288634856825
  %502 = add i64 %501, -8796714831421723037
  br label %503

503:                                              ; preds = %493, %215
  %504 = phi ptr [ %218, %215 ], [ %498, %493 ]
  %505 = phi i64 [ %217, %215 ], [ %502, %493 ]
  %506 = load i64, ptr %504, align 8
  %507 = mul i64 %506, -4417276706812531889
  %508 = call i64 @llvm.fshl.i64(i64 %507, i64 %507, i64 31)
  %509 = mul i64 %508, -7046029288634856825
  %510 = getelementptr inbounds nuw i8, ptr %504, i64 8
  %511 = xor i64 %509, %505
  %512 = call i64 @llvm.fshl.i64(i64 %511, i64 %511, i64 27)
  %513 = mul i64 %512, -7046029288634856825
  %514 = add i64 %513, -8796714831421723037
  br label %515

515:                                              ; preds = %503, %215
  %516 = phi ptr [ %218, %215 ], [ %510, %503 ]
  %517 = phi i64 [ %217, %215 ], [ %514, %503 ]
  %518 = load i64, ptr %516, align 8
  %519 = mul i64 %518, -4417276706812531889
  %520 = call i64 @llvm.fshl.i64(i64 %519, i64 %519, i64 31)
  %521 = mul i64 %520, -7046029288634856825
  %522 = getelementptr inbounds nuw i8, ptr %516, i64 8
  %523 = xor i64 %521, %517
  %524 = call i64 @llvm.fshl.i64(i64 %523, i64 %523, i64 27)
  %525 = mul i64 %524, -7046029288634856825
  %526 = add i64 %525, -8796714831421723037
  %527 = getelementptr inbounds nuw i8, ptr %516, i64 9
  %528 = load i8, ptr %522, align 1
  %529 = zext i8 %528 to i64
  %530 = mul i64 %529, 2870177450012600261
  %531 = xor i64 %526, %530
  %532 = call i64 @llvm.fshl.i64(i64 %531, i64 %531, i64 11)
  %533 = mul i64 %532, -7046029288634856825
  %534 = getelementptr inbounds nuw i8, ptr %516, i64 10
  %535 = load i8, ptr %527, align 1
  %536 = zext i8 %535 to i64
  %537 = mul i64 %536, 2870177450012600261
  %538 = xor i64 %533, %537
  %539 = call i64 @llvm.fshl.i64(i64 %538, i64 %538, i64 11)
  %540 = mul i64 %539, -7046029288634856825
  %541 = load i8, ptr %534, align 1
  %542 = zext i8 %541 to i64
  %543 = mul i64 %542, 2870177450012600261
  %544 = xor i64 %540, %543
  %545 = call i64 @llvm.fshl.i64(i64 %544, i64 %544, i64 11)
  %546 = mul i64 %545, -7046029288634856825
  br label %622

547:                                              ; preds = %215
  %548 = load i64, ptr %218, align 8
  %549 = mul i64 %548, -4417276706812531889
  %550 = call i64 @llvm.fshl.i64(i64 %549, i64 %549, i64 31)
  %551 = mul i64 %550, -7046029288634856825
  %552 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %553 = xor i64 %551, %217
  %554 = call i64 @llvm.fshl.i64(i64 %553, i64 %553, i64 27)
  %555 = mul i64 %554, -7046029288634856825
  %556 = add i64 %555, -8796714831421723037
  br label %557

557:                                              ; preds = %547, %215
  %558 = phi ptr [ %218, %215 ], [ %552, %547 ]
  %559 = phi i64 [ %217, %215 ], [ %556, %547 ]
  %560 = load i64, ptr %558, align 8
  %561 = mul i64 %560, -4417276706812531889
  %562 = call i64 @llvm.fshl.i64(i64 %561, i64 %561, i64 31)
  %563 = mul i64 %562, -7046029288634856825
  %564 = getelementptr inbounds nuw i8, ptr %558, i64 8
  %565 = xor i64 %563, %559
  %566 = call i64 @llvm.fshl.i64(i64 %565, i64 %565, i64 27)
  %567 = mul i64 %566, -7046029288634856825
  %568 = add i64 %567, -8796714831421723037
  br label %569

569:                                              ; preds = %557, %215
  %570 = phi ptr [ %218, %215 ], [ %564, %557 ]
  %571 = phi i64 [ %217, %215 ], [ %568, %557 ]
  %572 = load i64, ptr %570, align 8
  %573 = mul i64 %572, -4417276706812531889
  %574 = call i64 @llvm.fshl.i64(i64 %573, i64 %573, i64 31)
  %575 = mul i64 %574, -7046029288634856825
  %576 = getelementptr inbounds nuw i8, ptr %570, i64 8
  %577 = xor i64 %575, %571
  %578 = call i64 @llvm.fshl.i64(i64 %577, i64 %577, i64 27)
  %579 = mul i64 %578, -7046029288634856825
  %580 = add i64 %579, -8796714831421723037
  br label %581

581:                                              ; preds = %569, %215
  %582 = phi ptr [ %218, %215 ], [ %576, %569 ]
  %583 = phi i64 [ %217, %215 ], [ %580, %569 ]
  %584 = load i32, ptr %582, align 4
  %585 = zext i32 %584 to i64
  %586 = mul i64 %585, -7046029288634856825
  %587 = xor i64 %586, %583
  %588 = getelementptr inbounds nuw i8, ptr %582, i64 4
  %589 = call i64 @llvm.fshl.i64(i64 %587, i64 %587, i64 23)
  %590 = mul i64 %589, -4417276706812531889
  %591 = add i64 %590, 1609587929392839161
  br label %592

592:                                              ; preds = %581, %215
  %593 = phi ptr [ %218, %215 ], [ %588, %581 ]
  %594 = phi i64 [ %217, %215 ], [ %591, %581 ]
  %595 = getelementptr inbounds nuw i8, ptr %593, i64 1
  %596 = load i8, ptr %593, align 1
  %597 = zext i8 %596 to i64
  %598 = mul i64 %597, 2870177450012600261
  %599 = xor i64 %598, %594
  %600 = call i64 @llvm.fshl.i64(i64 %599, i64 %599, i64 11)
  %601 = mul i64 %600, -7046029288634856825
  br label %602

602:                                              ; preds = %592, %215
  %603 = phi ptr [ %218, %215 ], [ %595, %592 ]
  %604 = phi i64 [ %217, %215 ], [ %601, %592 ]
  %605 = getelementptr inbounds nuw i8, ptr %603, i64 1
  %606 = load i8, ptr %603, align 1
  %607 = zext i8 %606 to i64
  %608 = mul i64 %607, 2870177450012600261
  %609 = xor i64 %608, %604
  %610 = call i64 @llvm.fshl.i64(i64 %609, i64 %609, i64 11)
  %611 = mul i64 %610, -7046029288634856825
  br label %612

612:                                              ; preds = %602, %215
  %613 = phi ptr [ %218, %215 ], [ %605, %602 ]
  %614 = phi i64 [ %217, %215 ], [ %611, %602 ]
  %615 = load i8, ptr %613, align 1
  %616 = zext i8 %615 to i64
  %617 = mul i64 %616, 2870177450012600261
  %618 = xor i64 %617, %614
  %619 = call i64 @llvm.fshl.i64(i64 %618, i64 %618, i64 11)
  %620 = mul i64 %619, -7046029288634856825
  br label %622

621:                                              ; preds = %215
  unreachable

622:                                              ; preds = %215, %242, %287, %319, %371, %410, %469, %515, %612
  %623 = phi i64 [ %546, %515 ], [ %492, %469 ], [ %434, %410 ], [ %387, %371 ], [ %336, %319 ], [ %296, %287 ], [ %252, %242 ], [ %217, %215 ], [ %620, %612 ]
  %624 = lshr i64 %623, 33
  %625 = xor i64 %624, %623
  %626 = mul i64 %625, -4417276706812531889
  %627 = lshr i64 %626, 29
  %628 = xor i64 %627, %626
  %629 = mul i64 %628, 1609587929392839161
  %630 = lshr i64 %629, 32
  %631 = xor i64 %630, %629
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #6
  ret i64 %631
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #3

; Function Attrs: nounwind
define dso_local i64 @target_s64_13_18(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  %12 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %11) #6
  %13 = call ptr @memset(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 88) #7
  %14 = add i64 %1, 6983438078262162902
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %14, ptr %15, align 8
  %16 = add i64 %1, -4417276706812531889
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %16, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %1, ptr %18, align 8
  %19 = add i64 %1, 7046029288634856825
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %19, ptr %20, align 8
  %21 = call ptr @memcpy(ptr noundef nonnull %12, ptr noundef nonnull %11, i64 noundef 80) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #6
  %22 = icmp eq ptr %0, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %25 = load i32, ptr %24, align 8
  br label %94

26:                                               ; preds = %2
  %27 = load i64, ptr %12, align 8
  %28 = add i64 %27, 13
  store i64 %28, ptr %12, align 8
  %29 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %30 = load i32, ptr %29, align 8
  %31 = zext i32 %30 to i64
  %32 = icmp ult i32 %30, 19
  %33 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 %31
  br i1 %32, label %35, label %39

35:                                               ; preds = %26
  %36 = call ptr @memcpy(ptr noundef nonnull %34, ptr noundef nonnull %0, i64 noundef 13) #7
  %37 = load i32, ptr %29, align 8
  %38 = add i32 %37, 13
  br label %92

39:                                               ; preds = %26
  %40 = sub i32 32, %30
  %41 = zext i32 %40 to i64
  %42 = call ptr @memcpy(ptr noundef nonnull %34, ptr noundef nonnull %0, i64 noundef %41) #7
  %43 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %44 = load i64, ptr %43, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %45 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %33, i64 noundef 8) #7
  %46 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  %47 = mul i64 %46, -4417276706812531889
  %48 = add i64 %47, %44
  %49 = call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 31)
  %50 = mul i64 %49, -7046029288634856825
  store i64 %50, ptr %43, align 8
  %51 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %54 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %53, i64 noundef 8) #7
  %55 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  %56 = mul i64 %55, -4417276706812531889
  %57 = add i64 %56, %52
  %58 = call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  store i64 %59, ptr %51, align 8
  %60 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds nuw i8, ptr %12, i64 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %63 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %62, i64 noundef 8) #7
  %64 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  %65 = mul i64 %64, -4417276706812531889
  %66 = add i64 %65, %61
  %67 = call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 31)
  %68 = mul i64 %67, -7046029288634856825
  store i64 %68, ptr %60, align 8
  %69 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %72 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %71, i64 noundef 8) #7
  %73 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %74 = mul i64 %73, -4417276706812531889
  %75 = add i64 %74, %70
  %76 = call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 31)
  %77 = mul i64 %76, -7046029288634856825
  store i64 %77, ptr %69, align 8
  %78 = load i32, ptr %29, align 8
  %79 = sub i32 32, %78
  store i32 0, ptr %29, align 8
  %80 = icmp ult i32 %79, 13
  br i1 %80, label %86, label %81

81:                                               ; preds = %39
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %83 = load i64, ptr %12, align 8
  %84 = add i64 %83, 18
  store i64 %84, ptr %12, align 8
  %85 = getelementptr inbounds nuw i8, ptr %12, i64 72
  br label %103

86:                                               ; preds = %39
  %87 = zext nneg i32 %79 to i64
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = sub nsw i64 13, %87
  %90 = call ptr @memcpy(ptr noundef nonnull %33, ptr noundef nonnull %88, i64 noundef %89) #7
  %91 = trunc i64 %89 to i32
  br label %92

92:                                               ; preds = %86, %35
  %93 = phi i32 [ %38, %35 ], [ %91, %86 ]
  store i32 %93, ptr %29, align 8
  br label %94

94:                                               ; preds = %23, %92
  %95 = phi i32 [ %25, %23 ], [ %93, %92 ]
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 31
  %98 = load i64, ptr %12, align 8
  %99 = add i64 %98, 18
  store i64 %99, ptr %12, align 8
  %100 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %101 = zext i32 %95 to i64
  %102 = icmp ult i32 %95, 14
  br i1 %102, label %103, label %112

103:                                              ; preds = %81, %94
  %104 = phi i64 [ 0, %81 ], [ %101, %94 ]
  %105 = phi ptr [ %85, %81 ], [ %100, %94 ]
  %106 = phi ptr [ %82, %81 ], [ %96, %94 ]
  %107 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 %104
  %109 = call ptr @memcpy(ptr noundef nonnull %108, ptr noundef nonnull %106, i64 noundef 18) #7
  %110 = load i32, ptr %105, align 8
  %111 = add i32 %110, 18
  br label %165

112:                                              ; preds = %94
  %113 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 %101
  %115 = sub i32 32, %95
  %116 = zext i32 %115 to i64
  %117 = call ptr @memcpy(ptr noundef nonnull %114, ptr noundef nonnull %96, i64 noundef %116) #7
  %118 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %119 = load i64, ptr %118, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %120 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %113, i64 noundef 8) #7
  %121 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %122 = mul i64 %121, -4417276706812531889
  %123 = add i64 %122, %119
  %124 = call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 31)
  %125 = mul i64 %124, -7046029288634856825
  store i64 %125, ptr %118, align 8
  %126 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %127 = load i64, ptr %126, align 8
  %128 = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %129 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %128, i64 noundef 8) #7
  %130 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %131 = mul i64 %130, -4417276706812531889
  %132 = add i64 %131, %127
  %133 = call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 31)
  %134 = mul i64 %133, -7046029288634856825
  store i64 %134, ptr %126, align 8
  %135 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %136 = load i64, ptr %135, align 8
  %137 = getelementptr inbounds nuw i8, ptr %12, i64 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %138 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %137, i64 noundef 8) #7
  %139 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %140 = mul i64 %139, -4417276706812531889
  %141 = add i64 %140, %136
  %142 = call i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 31)
  %143 = mul i64 %142, -7046029288634856825
  store i64 %143, ptr %135, align 8
  %144 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %145 = load i64, ptr %144, align 8
  %146 = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %147 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %146, i64 noundef 8) #7
  %148 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %149 = mul i64 %148, -4417276706812531889
  %150 = add i64 %149, %145
  %151 = call i64 @llvm.fshl.i64(i64 %150, i64 %150, i64 31)
  %152 = mul i64 %151, -7046029288634856825
  store i64 %152, ptr %144, align 8
  %153 = load i32, ptr %100, align 8
  %154 = sub i32 32, %153
  store i32 0, ptr %100, align 8
  %155 = icmp ult i32 %154, 18
  br i1 %155, label %156, label %168

156:                                              ; preds = %112
  %157 = zext nneg i32 %154 to i64
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %157
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 13
  %160 = ptrtoint ptr %97 to i64
  %161 = ptrtoint ptr %159 to i64
  %162 = sub i64 %160, %161
  %163 = call ptr @memcpy(ptr noundef nonnull %113, ptr noundef nonnull %159, i64 noundef %162) #7
  %164 = trunc i64 %162 to i32
  br label %165

165:                                              ; preds = %156, %103
  %166 = phi ptr [ %105, %103 ], [ %100, %156 ]
  %167 = phi i32 [ %111, %103 ], [ %164, %156 ]
  store i32 %167, ptr %166, align 8
  br label %168

168:                                              ; preds = %112, %165
  %169 = load i64, ptr %12, align 8
  %170 = icmp ugt i64 %169, 31
  br i1 %170, label %171, label %211

171:                                              ; preds = %168
  %172 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %173 = load i64, ptr %172, align 8
  %174 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %175 = load i64, ptr %174, align 8
  %176 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %177 = load i64, ptr %176, align 8
  %178 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %179 = load i64, ptr %178, align 8
  %180 = call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 1)
  %181 = call i64 @llvm.fshl.i64(i64 %175, i64 %175, i64 7)
  %182 = add i64 %181, %180
  %183 = call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 12)
  %184 = add i64 %182, %183
  %185 = call i64 @llvm.fshl.i64(i64 %179, i64 %179, i64 18)
  %186 = add i64 %184, %185
  %187 = mul i64 %173, -4417276706812531889
  %188 = call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 31)
  %189 = mul i64 %188, -7046029288634856825
  %190 = xor i64 %186, %189
  %191 = mul i64 %190, -7046029288634856825
  %192 = add i64 %191, -8796714831421723037
  %193 = mul i64 %175, -4417276706812531889
  %194 = call i64 @llvm.fshl.i64(i64 %193, i64 %193, i64 31)
  %195 = mul i64 %194, -7046029288634856825
  %196 = xor i64 %192, %195
  %197 = mul i64 %196, -7046029288634856825
  %198 = add i64 %197, -8796714831421723037
  %199 = mul i64 %177, -4417276706812531889
  %200 = call i64 @llvm.fshl.i64(i64 %199, i64 %199, i64 31)
  %201 = mul i64 %200, -7046029288634856825
  %202 = xor i64 %198, %201
  %203 = mul i64 %202, -7046029288634856825
  %204 = add i64 %203, -8796714831421723037
  %205 = mul i64 %179, -4417276706812531889
  %206 = call i64 @llvm.fshl.i64(i64 %205, i64 %205, i64 31)
  %207 = mul i64 %206, -7046029288634856825
  %208 = xor i64 %204, %207
  %209 = mul i64 %208, -7046029288634856825
  %210 = add i64 %209, -8796714831421723037
  br label %215

211:                                              ; preds = %168
  %212 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %213 = load i64, ptr %212, align 8
  %214 = add i64 %213, 2870177450012600261
  br label %215

215:                                              ; preds = %211, %171
  %216 = phi i64 [ %210, %171 ], [ %214, %211 ]
  %217 = add i64 %216, %169
  %218 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %219 = and i64 %169, 31
  switch i64 %219, label %621 [
    i64 24, label %220
    i64 16, label %230
    i64 8, label %242
    i64 28, label %253
    i64 20, label %263
    i64 12, label %275
    i64 4, label %287
    i64 25, label %297
    i64 17, label %307
    i64 9, label %319
    i64 29, label %337
    i64 21, label %347
    i64 13, label %359
    i64 5, label %371
    i64 26, label %388
    i64 18, label %398
    i64 10, label %410
    i64 30, label %435
    i64 22, label %445
    i64 14, label %457
    i64 6, label %469
    i64 27, label %493
    i64 19, label %503
    i64 11, label %515
    i64 31, label %547
    i64 23, label %557
    i64 15, label %569
    i64 7, label %581
    i64 3, label %592
    i64 2, label %602
    i64 1, label %612
    i64 0, label %622
  ]

220:                                              ; preds = %215
  %221 = load i64, ptr %218, align 8
  %222 = mul i64 %221, -4417276706812531889
  %223 = call i64 @llvm.fshl.i64(i64 %222, i64 %222, i64 31)
  %224 = mul i64 %223, -7046029288634856825
  %225 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %226 = xor i64 %224, %217
  %227 = call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 27)
  %228 = mul i64 %227, -7046029288634856825
  %229 = add i64 %228, -8796714831421723037
  br label %230

230:                                              ; preds = %220, %215
  %231 = phi ptr [ %218, %215 ], [ %225, %220 ]
  %232 = phi i64 [ %217, %215 ], [ %229, %220 ]
  %233 = load i64, ptr %231, align 8
  %234 = mul i64 %233, -4417276706812531889
  %235 = call i64 @llvm.fshl.i64(i64 %234, i64 %234, i64 31)
  %236 = mul i64 %235, -7046029288634856825
  %237 = getelementptr inbounds nuw i8, ptr %231, i64 8
  %238 = xor i64 %236, %232
  %239 = call i64 @llvm.fshl.i64(i64 %238, i64 %238, i64 27)
  %240 = mul i64 %239, -7046029288634856825
  %241 = add i64 %240, -8796714831421723037
  br label %242

242:                                              ; preds = %230, %215
  %243 = phi ptr [ %218, %215 ], [ %237, %230 ]
  %244 = phi i64 [ %217, %215 ], [ %241, %230 ]
  %245 = load i64, ptr %243, align 8
  %246 = mul i64 %245, -4417276706812531889
  %247 = call i64 @llvm.fshl.i64(i64 %246, i64 %246, i64 31)
  %248 = mul i64 %247, -7046029288634856825
  %249 = xor i64 %248, %244
  %250 = call i64 @llvm.fshl.i64(i64 %249, i64 %249, i64 27)
  %251 = mul i64 %250, -7046029288634856825
  %252 = add i64 %251, -8796714831421723037
  br label %622

253:                                              ; preds = %215
  %254 = load i64, ptr %218, align 8
  %255 = mul i64 %254, -4417276706812531889
  %256 = call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 31)
  %257 = mul i64 %256, -7046029288634856825
  %258 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %259 = xor i64 %257, %217
  %260 = call i64 @llvm.fshl.i64(i64 %259, i64 %259, i64 27)
  %261 = mul i64 %260, -7046029288634856825
  %262 = add i64 %261, -8796714831421723037
  br label %263

263:                                              ; preds = %253, %215
  %264 = phi ptr [ %218, %215 ], [ %258, %253 ]
  %265 = phi i64 [ %217, %215 ], [ %262, %253 ]
  %266 = load i64, ptr %264, align 8
  %267 = mul i64 %266, -4417276706812531889
  %268 = call i64 @llvm.fshl.i64(i64 %267, i64 %267, i64 31)
  %269 = mul i64 %268, -7046029288634856825
  %270 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %271 = xor i64 %269, %265
  %272 = call i64 @llvm.fshl.i64(i64 %271, i64 %271, i64 27)
  %273 = mul i64 %272, -7046029288634856825
  %274 = add i64 %273, -8796714831421723037
  br label %275

275:                                              ; preds = %263, %215
  %276 = phi ptr [ %218, %215 ], [ %270, %263 ]
  %277 = phi i64 [ %217, %215 ], [ %274, %263 ]
  %278 = load i64, ptr %276, align 8
  %279 = mul i64 %278, -4417276706812531889
  %280 = call i64 @llvm.fshl.i64(i64 %279, i64 %279, i64 31)
  %281 = mul i64 %280, -7046029288634856825
  %282 = getelementptr inbounds nuw i8, ptr %276, i64 8
  %283 = xor i64 %281, %277
  %284 = call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 27)
  %285 = mul i64 %284, -7046029288634856825
  %286 = add i64 %285, -8796714831421723037
  br label %287

287:                                              ; preds = %275, %215
  %288 = phi ptr [ %218, %215 ], [ %282, %275 ]
  %289 = phi i64 [ %217, %215 ], [ %286, %275 ]
  %290 = load i32, ptr %288, align 4
  %291 = zext i32 %290 to i64
  %292 = mul i64 %291, -7046029288634856825
  %293 = xor i64 %292, %289
  %294 = call i64 @llvm.fshl.i64(i64 %293, i64 %293, i64 23)
  %295 = mul i64 %294, -4417276706812531889
  %296 = add i64 %295, 1609587929392839161
  br label %622

297:                                              ; preds = %215
  %298 = load i64, ptr %218, align 8
  %299 = mul i64 %298, -4417276706812531889
  %300 = call i64 @llvm.fshl.i64(i64 %299, i64 %299, i64 31)
  %301 = mul i64 %300, -7046029288634856825
  %302 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %303 = xor i64 %301, %217
  %304 = call i64 @llvm.fshl.i64(i64 %303, i64 %303, i64 27)
  %305 = mul i64 %304, -7046029288634856825
  %306 = add i64 %305, -8796714831421723037
  br label %307

307:                                              ; preds = %297, %215
  %308 = phi ptr [ %218, %215 ], [ %302, %297 ]
  %309 = phi i64 [ %217, %215 ], [ %306, %297 ]
  %310 = load i64, ptr %308, align 8
  %311 = mul i64 %310, -4417276706812531889
  %312 = call i64 @llvm.fshl.i64(i64 %311, i64 %311, i64 31)
  %313 = mul i64 %312, -7046029288634856825
  %314 = getelementptr inbounds nuw i8, ptr %308, i64 8
  %315 = xor i64 %313, %309
  %316 = call i64 @llvm.fshl.i64(i64 %315, i64 %315, i64 27)
  %317 = mul i64 %316, -7046029288634856825
  %318 = add i64 %317, -8796714831421723037
  br label %319

319:                                              ; preds = %307, %215
  %320 = phi ptr [ %218, %215 ], [ %314, %307 ]
  %321 = phi i64 [ %217, %215 ], [ %318, %307 ]
  %322 = load i64, ptr %320, align 8
  %323 = mul i64 %322, -4417276706812531889
  %324 = call i64 @llvm.fshl.i64(i64 %323, i64 %323, i64 31)
  %325 = mul i64 %324, -7046029288634856825
  %326 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %327 = xor i64 %325, %321
  %328 = call i64 @llvm.fshl.i64(i64 %327, i64 %327, i64 27)
  %329 = mul i64 %328, -7046029288634856825
  %330 = add i64 %329, -8796714831421723037
  %331 = load i8, ptr %326, align 1
  %332 = zext i8 %331 to i64
  %333 = mul i64 %332, 2870177450012600261
  %334 = xor i64 %330, %333
  %335 = call i64 @llvm.fshl.i64(i64 %334, i64 %334, i64 11)
  %336 = mul i64 %335, -7046029288634856825
  br label %622

337:                                              ; preds = %215
  %338 = load i64, ptr %218, align 8
  %339 = mul i64 %338, -4417276706812531889
  %340 = call i64 @llvm.fshl.i64(i64 %339, i64 %339, i64 31)
  %341 = mul i64 %340, -7046029288634856825
  %342 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %343 = xor i64 %341, %217
  %344 = call i64 @llvm.fshl.i64(i64 %343, i64 %343, i64 27)
  %345 = mul i64 %344, -7046029288634856825
  %346 = add i64 %345, -8796714831421723037
  br label %347

347:                                              ; preds = %337, %215
  %348 = phi ptr [ %218, %215 ], [ %342, %337 ]
  %349 = phi i64 [ %217, %215 ], [ %346, %337 ]
  %350 = load i64, ptr %348, align 8
  %351 = mul i64 %350, -4417276706812531889
  %352 = call i64 @llvm.fshl.i64(i64 %351, i64 %351, i64 31)
  %353 = mul i64 %352, -7046029288634856825
  %354 = getelementptr inbounds nuw i8, ptr %348, i64 8
  %355 = xor i64 %353, %349
  %356 = call i64 @llvm.fshl.i64(i64 %355, i64 %355, i64 27)
  %357 = mul i64 %356, -7046029288634856825
  %358 = add i64 %357, -8796714831421723037
  br label %359

359:                                              ; preds = %347, %215
  %360 = phi ptr [ %218, %215 ], [ %354, %347 ]
  %361 = phi i64 [ %217, %215 ], [ %358, %347 ]
  %362 = load i64, ptr %360, align 8
  %363 = mul i64 %362, -4417276706812531889
  %364 = call i64 @llvm.fshl.i64(i64 %363, i64 %363, i64 31)
  %365 = mul i64 %364, -7046029288634856825
  %366 = getelementptr inbounds nuw i8, ptr %360, i64 8
  %367 = xor i64 %365, %361
  %368 = call i64 @llvm.fshl.i64(i64 %367, i64 %367, i64 27)
  %369 = mul i64 %368, -7046029288634856825
  %370 = add i64 %369, -8796714831421723037
  br label %371

371:                                              ; preds = %359, %215
  %372 = phi ptr [ %218, %215 ], [ %366, %359 ]
  %373 = phi i64 [ %217, %215 ], [ %370, %359 ]
  %374 = load i32, ptr %372, align 4
  %375 = zext i32 %374 to i64
  %376 = mul i64 %375, -7046029288634856825
  %377 = xor i64 %376, %373
  %378 = getelementptr inbounds nuw i8, ptr %372, i64 4
  %379 = call i64 @llvm.fshl.i64(i64 %377, i64 %377, i64 23)
  %380 = mul i64 %379, -4417276706812531889
  %381 = add i64 %380, 1609587929392839161
  %382 = load i8, ptr %378, align 1
  %383 = zext i8 %382 to i64
  %384 = mul i64 %383, 2870177450012600261
  %385 = xor i64 %381, %384
  %386 = call i64 @llvm.fshl.i64(i64 %385, i64 %385, i64 11)
  %387 = mul i64 %386, -7046029288634856825
  br label %622

388:                                              ; preds = %215
  %389 = load i64, ptr %218, align 8
  %390 = mul i64 %389, -4417276706812531889
  %391 = call i64 @llvm.fshl.i64(i64 %390, i64 %390, i64 31)
  %392 = mul i64 %391, -7046029288634856825
  %393 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %394 = xor i64 %392, %217
  %395 = call i64 @llvm.fshl.i64(i64 %394, i64 %394, i64 27)
  %396 = mul i64 %395, -7046029288634856825
  %397 = add i64 %396, -8796714831421723037
  br label %398

398:                                              ; preds = %388, %215
  %399 = phi ptr [ %218, %215 ], [ %393, %388 ]
  %400 = phi i64 [ %217, %215 ], [ %397, %388 ]
  %401 = load i64, ptr %399, align 8
  %402 = mul i64 %401, -4417276706812531889
  %403 = call i64 @llvm.fshl.i64(i64 %402, i64 %402, i64 31)
  %404 = mul i64 %403, -7046029288634856825
  %405 = getelementptr inbounds nuw i8, ptr %399, i64 8
  %406 = xor i64 %404, %400
  %407 = call i64 @llvm.fshl.i64(i64 %406, i64 %406, i64 27)
  %408 = mul i64 %407, -7046029288634856825
  %409 = add i64 %408, -8796714831421723037
  br label %410

410:                                              ; preds = %398, %215
  %411 = phi ptr [ %218, %215 ], [ %405, %398 ]
  %412 = phi i64 [ %217, %215 ], [ %409, %398 ]
  %413 = load i64, ptr %411, align 8
  %414 = mul i64 %413, -4417276706812531889
  %415 = call i64 @llvm.fshl.i64(i64 %414, i64 %414, i64 31)
  %416 = mul i64 %415, -7046029288634856825
  %417 = getelementptr inbounds nuw i8, ptr %411, i64 8
  %418 = xor i64 %416, %412
  %419 = call i64 @llvm.fshl.i64(i64 %418, i64 %418, i64 27)
  %420 = mul i64 %419, -7046029288634856825
  %421 = add i64 %420, -8796714831421723037
  %422 = getelementptr inbounds nuw i8, ptr %411, i64 9
  %423 = load i8, ptr %417, align 1
  %424 = zext i8 %423 to i64
  %425 = mul i64 %424, 2870177450012600261
  %426 = xor i64 %421, %425
  %427 = call i64 @llvm.fshl.i64(i64 %426, i64 %426, i64 11)
  %428 = mul i64 %427, -7046029288634856825
  %429 = load i8, ptr %422, align 1
  %430 = zext i8 %429 to i64
  %431 = mul i64 %430, 2870177450012600261
  %432 = xor i64 %428, %431
  %433 = call i64 @llvm.fshl.i64(i64 %432, i64 %432, i64 11)
  %434 = mul i64 %433, -7046029288634856825
  br label %622

435:                                              ; preds = %215
  %436 = load i64, ptr %218, align 8
  %437 = mul i64 %436, -4417276706812531889
  %438 = call i64 @llvm.fshl.i64(i64 %437, i64 %437, i64 31)
  %439 = mul i64 %438, -7046029288634856825
  %440 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %441 = xor i64 %439, %217
  %442 = call i64 @llvm.fshl.i64(i64 %441, i64 %441, i64 27)
  %443 = mul i64 %442, -7046029288634856825
  %444 = add i64 %443, -8796714831421723037
  br label %445

445:                                              ; preds = %435, %215
  %446 = phi ptr [ %218, %215 ], [ %440, %435 ]
  %447 = phi i64 [ %217, %215 ], [ %444, %435 ]
  %448 = load i64, ptr %446, align 8
  %449 = mul i64 %448, -4417276706812531889
  %450 = call i64 @llvm.fshl.i64(i64 %449, i64 %449, i64 31)
  %451 = mul i64 %450, -7046029288634856825
  %452 = getelementptr inbounds nuw i8, ptr %446, i64 8
  %453 = xor i64 %451, %447
  %454 = call i64 @llvm.fshl.i64(i64 %453, i64 %453, i64 27)
  %455 = mul i64 %454, -7046029288634856825
  %456 = add i64 %455, -8796714831421723037
  br label %457

457:                                              ; preds = %445, %215
  %458 = phi ptr [ %218, %215 ], [ %452, %445 ]
  %459 = phi i64 [ %217, %215 ], [ %456, %445 ]
  %460 = load i64, ptr %458, align 8
  %461 = mul i64 %460, -4417276706812531889
  %462 = call i64 @llvm.fshl.i64(i64 %461, i64 %461, i64 31)
  %463 = mul i64 %462, -7046029288634856825
  %464 = getelementptr inbounds nuw i8, ptr %458, i64 8
  %465 = xor i64 %463, %459
  %466 = call i64 @llvm.fshl.i64(i64 %465, i64 %465, i64 27)
  %467 = mul i64 %466, -7046029288634856825
  %468 = add i64 %467, -8796714831421723037
  br label %469

469:                                              ; preds = %457, %215
  %470 = phi ptr [ %218, %215 ], [ %464, %457 ]
  %471 = phi i64 [ %217, %215 ], [ %468, %457 ]
  %472 = load i32, ptr %470, align 4
  %473 = zext i32 %472 to i64
  %474 = mul i64 %473, -7046029288634856825
  %475 = xor i64 %474, %471
  %476 = getelementptr inbounds nuw i8, ptr %470, i64 4
  %477 = call i64 @llvm.fshl.i64(i64 %475, i64 %475, i64 23)
  %478 = mul i64 %477, -4417276706812531889
  %479 = add i64 %478, 1609587929392839161
  %480 = getelementptr inbounds nuw i8, ptr %470, i64 5
  %481 = load i8, ptr %476, align 1
  %482 = zext i8 %481 to i64
  %483 = mul i64 %482, 2870177450012600261
  %484 = xor i64 %479, %483
  %485 = call i64 @llvm.fshl.i64(i64 %484, i64 %484, i64 11)
  %486 = mul i64 %485, -7046029288634856825
  %487 = load i8, ptr %480, align 1
  %488 = zext i8 %487 to i64
  %489 = mul i64 %488, 2870177450012600261
  %490 = xor i64 %486, %489
  %491 = call i64 @llvm.fshl.i64(i64 %490, i64 %490, i64 11)
  %492 = mul i64 %491, -7046029288634856825
  br label %622

493:                                              ; preds = %215
  %494 = load i64, ptr %218, align 8
  %495 = mul i64 %494, -4417276706812531889
  %496 = call i64 @llvm.fshl.i64(i64 %495, i64 %495, i64 31)
  %497 = mul i64 %496, -7046029288634856825
  %498 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %499 = xor i64 %497, %217
  %500 = call i64 @llvm.fshl.i64(i64 %499, i64 %499, i64 27)
  %501 = mul i64 %500, -7046029288634856825
  %502 = add i64 %501, -8796714831421723037
  br label %503

503:                                              ; preds = %493, %215
  %504 = phi ptr [ %218, %215 ], [ %498, %493 ]
  %505 = phi i64 [ %217, %215 ], [ %502, %493 ]
  %506 = load i64, ptr %504, align 8
  %507 = mul i64 %506, -4417276706812531889
  %508 = call i64 @llvm.fshl.i64(i64 %507, i64 %507, i64 31)
  %509 = mul i64 %508, -7046029288634856825
  %510 = getelementptr inbounds nuw i8, ptr %504, i64 8
  %511 = xor i64 %509, %505
  %512 = call i64 @llvm.fshl.i64(i64 %511, i64 %511, i64 27)
  %513 = mul i64 %512, -7046029288634856825
  %514 = add i64 %513, -8796714831421723037
  br label %515

515:                                              ; preds = %503, %215
  %516 = phi ptr [ %218, %215 ], [ %510, %503 ]
  %517 = phi i64 [ %217, %215 ], [ %514, %503 ]
  %518 = load i64, ptr %516, align 8
  %519 = mul i64 %518, -4417276706812531889
  %520 = call i64 @llvm.fshl.i64(i64 %519, i64 %519, i64 31)
  %521 = mul i64 %520, -7046029288634856825
  %522 = getelementptr inbounds nuw i8, ptr %516, i64 8
  %523 = xor i64 %521, %517
  %524 = call i64 @llvm.fshl.i64(i64 %523, i64 %523, i64 27)
  %525 = mul i64 %524, -7046029288634856825
  %526 = add i64 %525, -8796714831421723037
  %527 = getelementptr inbounds nuw i8, ptr %516, i64 9
  %528 = load i8, ptr %522, align 1
  %529 = zext i8 %528 to i64
  %530 = mul i64 %529, 2870177450012600261
  %531 = xor i64 %526, %530
  %532 = call i64 @llvm.fshl.i64(i64 %531, i64 %531, i64 11)
  %533 = mul i64 %532, -7046029288634856825
  %534 = getelementptr inbounds nuw i8, ptr %516, i64 10
  %535 = load i8, ptr %527, align 1
  %536 = zext i8 %535 to i64
  %537 = mul i64 %536, 2870177450012600261
  %538 = xor i64 %533, %537
  %539 = call i64 @llvm.fshl.i64(i64 %538, i64 %538, i64 11)
  %540 = mul i64 %539, -7046029288634856825
  %541 = load i8, ptr %534, align 1
  %542 = zext i8 %541 to i64
  %543 = mul i64 %542, 2870177450012600261
  %544 = xor i64 %540, %543
  %545 = call i64 @llvm.fshl.i64(i64 %544, i64 %544, i64 11)
  %546 = mul i64 %545, -7046029288634856825
  br label %622

547:                                              ; preds = %215
  %548 = load i64, ptr %218, align 8
  %549 = mul i64 %548, -4417276706812531889
  %550 = call i64 @llvm.fshl.i64(i64 %549, i64 %549, i64 31)
  %551 = mul i64 %550, -7046029288634856825
  %552 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %553 = xor i64 %551, %217
  %554 = call i64 @llvm.fshl.i64(i64 %553, i64 %553, i64 27)
  %555 = mul i64 %554, -7046029288634856825
  %556 = add i64 %555, -8796714831421723037
  br label %557

557:                                              ; preds = %547, %215
  %558 = phi ptr [ %218, %215 ], [ %552, %547 ]
  %559 = phi i64 [ %217, %215 ], [ %556, %547 ]
  %560 = load i64, ptr %558, align 8
  %561 = mul i64 %560, -4417276706812531889
  %562 = call i64 @llvm.fshl.i64(i64 %561, i64 %561, i64 31)
  %563 = mul i64 %562, -7046029288634856825
  %564 = getelementptr inbounds nuw i8, ptr %558, i64 8
  %565 = xor i64 %563, %559
  %566 = call i64 @llvm.fshl.i64(i64 %565, i64 %565, i64 27)
  %567 = mul i64 %566, -7046029288634856825
  %568 = add i64 %567, -8796714831421723037
  br label %569

569:                                              ; preds = %557, %215
  %570 = phi ptr [ %218, %215 ], [ %564, %557 ]
  %571 = phi i64 [ %217, %215 ], [ %568, %557 ]
  %572 = load i64, ptr %570, align 8
  %573 = mul i64 %572, -4417276706812531889
  %574 = call i64 @llvm.fshl.i64(i64 %573, i64 %573, i64 31)
  %575 = mul i64 %574, -7046029288634856825
  %576 = getelementptr inbounds nuw i8, ptr %570, i64 8
  %577 = xor i64 %575, %571
  %578 = call i64 @llvm.fshl.i64(i64 %577, i64 %577, i64 27)
  %579 = mul i64 %578, -7046029288634856825
  %580 = add i64 %579, -8796714831421723037
  br label %581

581:                                              ; preds = %569, %215
  %582 = phi ptr [ %218, %215 ], [ %576, %569 ]
  %583 = phi i64 [ %217, %215 ], [ %580, %569 ]
  %584 = load i32, ptr %582, align 4
  %585 = zext i32 %584 to i64
  %586 = mul i64 %585, -7046029288634856825
  %587 = xor i64 %586, %583
  %588 = getelementptr inbounds nuw i8, ptr %582, i64 4
  %589 = call i64 @llvm.fshl.i64(i64 %587, i64 %587, i64 23)
  %590 = mul i64 %589, -4417276706812531889
  %591 = add i64 %590, 1609587929392839161
  br label %592

592:                                              ; preds = %581, %215
  %593 = phi ptr [ %218, %215 ], [ %588, %581 ]
  %594 = phi i64 [ %217, %215 ], [ %591, %581 ]
  %595 = getelementptr inbounds nuw i8, ptr %593, i64 1
  %596 = load i8, ptr %593, align 1
  %597 = zext i8 %596 to i64
  %598 = mul i64 %597, 2870177450012600261
  %599 = xor i64 %598, %594
  %600 = call i64 @llvm.fshl.i64(i64 %599, i64 %599, i64 11)
  %601 = mul i64 %600, -7046029288634856825
  br label %602

602:                                              ; preds = %592, %215
  %603 = phi ptr [ %218, %215 ], [ %595, %592 ]
  %604 = phi i64 [ %217, %215 ], [ %601, %592 ]
  %605 = getelementptr inbounds nuw i8, ptr %603, i64 1
  %606 = load i8, ptr %603, align 1
  %607 = zext i8 %606 to i64
  %608 = mul i64 %607, 2870177450012600261
  %609 = xor i64 %608, %604
  %610 = call i64 @llvm.fshl.i64(i64 %609, i64 %609, i64 11)
  %611 = mul i64 %610, -7046029288634856825
  br label %612

612:                                              ; preds = %602, %215
  %613 = phi ptr [ %218, %215 ], [ %605, %602 ]
  %614 = phi i64 [ %217, %215 ], [ %611, %602 ]
  %615 = load i8, ptr %613, align 1
  %616 = zext i8 %615 to i64
  %617 = mul i64 %616, 2870177450012600261
  %618 = xor i64 %617, %614
  %619 = call i64 @llvm.fshl.i64(i64 %618, i64 %618, i64 11)
  %620 = mul i64 %619, -7046029288634856825
  br label %622

621:                                              ; preds = %215
  unreachable

622:                                              ; preds = %215, %242, %287, %319, %371, %410, %469, %515, %612
  %623 = phi i64 [ %546, %515 ], [ %492, %469 ], [ %434, %410 ], [ %387, %371 ], [ %336, %319 ], [ %296, %287 ], [ %252, %242 ], [ %217, %215 ], [ %620, %612 ]
  %624 = lshr i64 %623, 33
  %625 = xor i64 %624, %623
  %626 = mul i64 %625, -4417276706812531889
  %627 = lshr i64 %626, 29
  %628 = xor i64 %627, %626
  %629 = mul i64 %628, 1609587929392839161
  %630 = lshr i64 %629, 32
  %631 = xor i64 %630, %629
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #6
  ret i64 %631
}

; Function Attrs: nounwind
define dso_local i64 @target_s64_10_30(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  %12 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %11) #6
  %13 = call ptr @memset(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 88) #7
  %14 = add i64 %1, 6983438078262162902
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %14, ptr %15, align 8
  %16 = add i64 %1, -4417276706812531889
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %16, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %1, ptr %18, align 8
  %19 = add i64 %1, 7046029288634856825
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %19, ptr %20, align 8
  %21 = call ptr @memcpy(ptr noundef nonnull %12, ptr noundef nonnull %11, i64 noundef 80) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #6
  %22 = icmp eq ptr %0, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %25 = load i32, ptr %24, align 8
  br label %94

26:                                               ; preds = %2
  %27 = load i64, ptr %12, align 8
  %28 = add i64 %27, 10
  store i64 %28, ptr %12, align 8
  %29 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %30 = load i32, ptr %29, align 8
  %31 = zext i32 %30 to i64
  %32 = icmp ult i32 %30, 22
  %33 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 %31
  br i1 %32, label %35, label %39

35:                                               ; preds = %26
  %36 = call ptr @memcpy(ptr noundef nonnull %34, ptr noundef nonnull %0, i64 noundef 10) #7
  %37 = load i32, ptr %29, align 8
  %38 = add i32 %37, 10
  br label %92

39:                                               ; preds = %26
  %40 = sub i32 32, %30
  %41 = zext i32 %40 to i64
  %42 = call ptr @memcpy(ptr noundef nonnull %34, ptr noundef nonnull %0, i64 noundef %41) #7
  %43 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %44 = load i64, ptr %43, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %45 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %33, i64 noundef 8) #7
  %46 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  %47 = mul i64 %46, -4417276706812531889
  %48 = add i64 %47, %44
  %49 = call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 31)
  %50 = mul i64 %49, -7046029288634856825
  store i64 %50, ptr %43, align 8
  %51 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %54 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %53, i64 noundef 8) #7
  %55 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  %56 = mul i64 %55, -4417276706812531889
  %57 = add i64 %56, %52
  %58 = call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  store i64 %59, ptr %51, align 8
  %60 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds nuw i8, ptr %12, i64 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %63 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %62, i64 noundef 8) #7
  %64 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  %65 = mul i64 %64, -4417276706812531889
  %66 = add i64 %65, %61
  %67 = call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 31)
  %68 = mul i64 %67, -7046029288634856825
  store i64 %68, ptr %60, align 8
  %69 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %72 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %71, i64 noundef 8) #7
  %73 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %74 = mul i64 %73, -4417276706812531889
  %75 = add i64 %74, %70
  %76 = call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 31)
  %77 = mul i64 %76, -7046029288634856825
  store i64 %77, ptr %69, align 8
  %78 = load i32, ptr %29, align 8
  %79 = sub i32 32, %78
  store i32 0, ptr %29, align 8
  %80 = icmp ult i32 %79, 10
  br i1 %80, label %86, label %81

81:                                               ; preds = %39
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %83 = load i64, ptr %12, align 8
  %84 = add i64 %83, 30
  store i64 %84, ptr %12, align 8
  %85 = getelementptr inbounds nuw i8, ptr %12, i64 72
  br label %103

86:                                               ; preds = %39
  %87 = zext nneg i32 %79 to i64
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = sub nsw i64 10, %87
  %90 = call ptr @memcpy(ptr noundef nonnull %33, ptr noundef nonnull %88, i64 noundef %89) #7
  %91 = trunc i64 %89 to i32
  br label %92

92:                                               ; preds = %86, %35
  %93 = phi i32 [ %38, %35 ], [ %91, %86 ]
  store i32 %93, ptr %29, align 8
  br label %94

94:                                               ; preds = %23, %92
  %95 = phi i32 [ %25, %23 ], [ %93, %92 ]
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %98 = load i64, ptr %12, align 8
  %99 = add i64 %98, 30
  store i64 %99, ptr %12, align 8
  %100 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %101 = zext i32 %95 to i64
  %102 = icmp ult i32 %95, 2
  br i1 %102, label %103, label %112

103:                                              ; preds = %81, %94
  %104 = phi i64 [ 0, %81 ], [ %101, %94 ]
  %105 = phi ptr [ %85, %81 ], [ %100, %94 ]
  %106 = phi ptr [ %82, %81 ], [ %96, %94 ]
  %107 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 %104
  %109 = call ptr @memcpy(ptr noundef nonnull %108, ptr noundef nonnull %106, i64 noundef 30) #7
  %110 = load i32, ptr %105, align 8
  %111 = add i32 %110, 30
  br label %165

112:                                              ; preds = %94
  %113 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 %101
  %115 = sub i32 32, %95
  %116 = zext i32 %115 to i64
  %117 = call ptr @memcpy(ptr noundef nonnull %114, ptr noundef nonnull %96, i64 noundef %116) #7
  %118 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %119 = load i64, ptr %118, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %120 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %113, i64 noundef 8) #7
  %121 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %122 = mul i64 %121, -4417276706812531889
  %123 = add i64 %122, %119
  %124 = call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 31)
  %125 = mul i64 %124, -7046029288634856825
  store i64 %125, ptr %118, align 8
  %126 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %127 = load i64, ptr %126, align 8
  %128 = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %129 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %128, i64 noundef 8) #7
  %130 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %131 = mul i64 %130, -4417276706812531889
  %132 = add i64 %131, %127
  %133 = call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 31)
  %134 = mul i64 %133, -7046029288634856825
  store i64 %134, ptr %126, align 8
  %135 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %136 = load i64, ptr %135, align 8
  %137 = getelementptr inbounds nuw i8, ptr %12, i64 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %138 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %137, i64 noundef 8) #7
  %139 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %140 = mul i64 %139, -4417276706812531889
  %141 = add i64 %140, %136
  %142 = call i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 31)
  %143 = mul i64 %142, -7046029288634856825
  store i64 %143, ptr %135, align 8
  %144 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %145 = load i64, ptr %144, align 8
  %146 = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %147 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %146, i64 noundef 8) #7
  %148 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %149 = mul i64 %148, -4417276706812531889
  %150 = add i64 %149, %145
  %151 = call i64 @llvm.fshl.i64(i64 %150, i64 %150, i64 31)
  %152 = mul i64 %151, -7046029288634856825
  store i64 %152, ptr %144, align 8
  %153 = load i32, ptr %100, align 8
  %154 = sub i32 32, %153
  store i32 0, ptr %100, align 8
  %155 = icmp ult i32 %154, 30
  br i1 %155, label %156, label %168

156:                                              ; preds = %112
  %157 = zext nneg i32 %154 to i64
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %157
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 10
  %160 = ptrtoint ptr %97 to i64
  %161 = ptrtoint ptr %159 to i64
  %162 = sub i64 %160, %161
  %163 = call ptr @memcpy(ptr noundef nonnull %113, ptr noundef nonnull %159, i64 noundef %162) #7
  %164 = trunc i64 %162 to i32
  br label %165

165:                                              ; preds = %156, %103
  %166 = phi ptr [ %105, %103 ], [ %100, %156 ]
  %167 = phi i32 [ %111, %103 ], [ %164, %156 ]
  store i32 %167, ptr %166, align 8
  br label %168

168:                                              ; preds = %112, %165
  %169 = load i64, ptr %12, align 8
  %170 = icmp ugt i64 %169, 31
  br i1 %170, label %171, label %211

171:                                              ; preds = %168
  %172 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %173 = load i64, ptr %172, align 8
  %174 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %175 = load i64, ptr %174, align 8
  %176 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %177 = load i64, ptr %176, align 8
  %178 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %179 = load i64, ptr %178, align 8
  %180 = call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 1)
  %181 = call i64 @llvm.fshl.i64(i64 %175, i64 %175, i64 7)
  %182 = add i64 %181, %180
  %183 = call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 12)
  %184 = add i64 %182, %183
  %185 = call i64 @llvm.fshl.i64(i64 %179, i64 %179, i64 18)
  %186 = add i64 %184, %185
  %187 = mul i64 %173, -4417276706812531889
  %188 = call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 31)
  %189 = mul i64 %188, -7046029288634856825
  %190 = xor i64 %186, %189
  %191 = mul i64 %190, -7046029288634856825
  %192 = add i64 %191, -8796714831421723037
  %193 = mul i64 %175, -4417276706812531889
  %194 = call i64 @llvm.fshl.i64(i64 %193, i64 %193, i64 31)
  %195 = mul i64 %194, -7046029288634856825
  %196 = xor i64 %192, %195
  %197 = mul i64 %196, -7046029288634856825
  %198 = add i64 %197, -8796714831421723037
  %199 = mul i64 %177, -4417276706812531889
  %200 = call i64 @llvm.fshl.i64(i64 %199, i64 %199, i64 31)
  %201 = mul i64 %200, -7046029288634856825
  %202 = xor i64 %198, %201
  %203 = mul i64 %202, -7046029288634856825
  %204 = add i64 %203, -8796714831421723037
  %205 = mul i64 %179, -4417276706812531889
  %206 = call i64 @llvm.fshl.i64(i64 %205, i64 %205, i64 31)
  %207 = mul i64 %206, -7046029288634856825
  %208 = xor i64 %204, %207
  %209 = mul i64 %208, -7046029288634856825
  %210 = add i64 %209, -8796714831421723037
  br label %215

211:                                              ; preds = %168
  %212 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %213 = load i64, ptr %212, align 8
  %214 = add i64 %213, 2870177450012600261
  br label %215

215:                                              ; preds = %211, %171
  %216 = phi i64 [ %210, %171 ], [ %214, %211 ]
  %217 = add i64 %216, %169
  %218 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %219 = and i64 %169, 31
  switch i64 %219, label %621 [
    i64 24, label %220
    i64 16, label %230
    i64 8, label %242
    i64 28, label %253
    i64 20, label %263
    i64 12, label %275
    i64 4, label %287
    i64 25, label %297
    i64 17, label %307
    i64 9, label %319
    i64 29, label %337
    i64 21, label %347
    i64 13, label %359
    i64 5, label %371
    i64 26, label %388
    i64 18, label %398
    i64 10, label %410
    i64 30, label %435
    i64 22, label %445
    i64 14, label %457
    i64 6, label %469
    i64 27, label %493
    i64 19, label %503
    i64 11, label %515
    i64 31, label %547
    i64 23, label %557
    i64 15, label %569
    i64 7, label %581
    i64 3, label %592
    i64 2, label %602
    i64 1, label %612
    i64 0, label %622
  ]

220:                                              ; preds = %215
  %221 = load i64, ptr %218, align 8
  %222 = mul i64 %221, -4417276706812531889
  %223 = call i64 @llvm.fshl.i64(i64 %222, i64 %222, i64 31)
  %224 = mul i64 %223, -7046029288634856825
  %225 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %226 = xor i64 %224, %217
  %227 = call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 27)
  %228 = mul i64 %227, -7046029288634856825
  %229 = add i64 %228, -8796714831421723037
  br label %230

230:                                              ; preds = %220, %215
  %231 = phi ptr [ %218, %215 ], [ %225, %220 ]
  %232 = phi i64 [ %217, %215 ], [ %229, %220 ]
  %233 = load i64, ptr %231, align 8
  %234 = mul i64 %233, -4417276706812531889
  %235 = call i64 @llvm.fshl.i64(i64 %234, i64 %234, i64 31)
  %236 = mul i64 %235, -7046029288634856825
  %237 = getelementptr inbounds nuw i8, ptr %231, i64 8
  %238 = xor i64 %236, %232
  %239 = call i64 @llvm.fshl.i64(i64 %238, i64 %238, i64 27)
  %240 = mul i64 %239, -7046029288634856825
  %241 = add i64 %240, -8796714831421723037
  br label %242

242:                                              ; preds = %230, %215
  %243 = phi ptr [ %218, %215 ], [ %237, %230 ]
  %244 = phi i64 [ %217, %215 ], [ %241, %230 ]
  %245 = load i64, ptr %243, align 8
  %246 = mul i64 %245, -4417276706812531889
  %247 = call i64 @llvm.fshl.i64(i64 %246, i64 %246, i64 31)
  %248 = mul i64 %247, -7046029288634856825
  %249 = xor i64 %248, %244
  %250 = call i64 @llvm.fshl.i64(i64 %249, i64 %249, i64 27)
  %251 = mul i64 %250, -7046029288634856825
  %252 = add i64 %251, -8796714831421723037
  br label %622

253:                                              ; preds = %215
  %254 = load i64, ptr %218, align 8
  %255 = mul i64 %254, -4417276706812531889
  %256 = call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 31)
  %257 = mul i64 %256, -7046029288634856825
  %258 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %259 = xor i64 %257, %217
  %260 = call i64 @llvm.fshl.i64(i64 %259, i64 %259, i64 27)
  %261 = mul i64 %260, -7046029288634856825
  %262 = add i64 %261, -8796714831421723037
  br label %263

263:                                              ; preds = %253, %215
  %264 = phi ptr [ %218, %215 ], [ %258, %253 ]
  %265 = phi i64 [ %217, %215 ], [ %262, %253 ]
  %266 = load i64, ptr %264, align 8
  %267 = mul i64 %266, -4417276706812531889
  %268 = call i64 @llvm.fshl.i64(i64 %267, i64 %267, i64 31)
  %269 = mul i64 %268, -7046029288634856825
  %270 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %271 = xor i64 %269, %265
  %272 = call i64 @llvm.fshl.i64(i64 %271, i64 %271, i64 27)
  %273 = mul i64 %272, -7046029288634856825
  %274 = add i64 %273, -8796714831421723037
  br label %275

275:                                              ; preds = %263, %215
  %276 = phi ptr [ %218, %215 ], [ %270, %263 ]
  %277 = phi i64 [ %217, %215 ], [ %274, %263 ]
  %278 = load i64, ptr %276, align 8
  %279 = mul i64 %278, -4417276706812531889
  %280 = call i64 @llvm.fshl.i64(i64 %279, i64 %279, i64 31)
  %281 = mul i64 %280, -7046029288634856825
  %282 = getelementptr inbounds nuw i8, ptr %276, i64 8
  %283 = xor i64 %281, %277
  %284 = call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 27)
  %285 = mul i64 %284, -7046029288634856825
  %286 = add i64 %285, -8796714831421723037
  br label %287

287:                                              ; preds = %275, %215
  %288 = phi ptr [ %218, %215 ], [ %282, %275 ]
  %289 = phi i64 [ %217, %215 ], [ %286, %275 ]
  %290 = load i32, ptr %288, align 4
  %291 = zext i32 %290 to i64
  %292 = mul i64 %291, -7046029288634856825
  %293 = xor i64 %292, %289
  %294 = call i64 @llvm.fshl.i64(i64 %293, i64 %293, i64 23)
  %295 = mul i64 %294, -4417276706812531889
  %296 = add i64 %295, 1609587929392839161
  br label %622

297:                                              ; preds = %215
  %298 = load i64, ptr %218, align 8
  %299 = mul i64 %298, -4417276706812531889
  %300 = call i64 @llvm.fshl.i64(i64 %299, i64 %299, i64 31)
  %301 = mul i64 %300, -7046029288634856825
  %302 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %303 = xor i64 %301, %217
  %304 = call i64 @llvm.fshl.i64(i64 %303, i64 %303, i64 27)
  %305 = mul i64 %304, -7046029288634856825
  %306 = add i64 %305, -8796714831421723037
  br label %307

307:                                              ; preds = %297, %215
  %308 = phi ptr [ %218, %215 ], [ %302, %297 ]
  %309 = phi i64 [ %217, %215 ], [ %306, %297 ]
  %310 = load i64, ptr %308, align 8
  %311 = mul i64 %310, -4417276706812531889
  %312 = call i64 @llvm.fshl.i64(i64 %311, i64 %311, i64 31)
  %313 = mul i64 %312, -7046029288634856825
  %314 = getelementptr inbounds nuw i8, ptr %308, i64 8
  %315 = xor i64 %313, %309
  %316 = call i64 @llvm.fshl.i64(i64 %315, i64 %315, i64 27)
  %317 = mul i64 %316, -7046029288634856825
  %318 = add i64 %317, -8796714831421723037
  br label %319

319:                                              ; preds = %307, %215
  %320 = phi ptr [ %218, %215 ], [ %314, %307 ]
  %321 = phi i64 [ %217, %215 ], [ %318, %307 ]
  %322 = load i64, ptr %320, align 8
  %323 = mul i64 %322, -4417276706812531889
  %324 = call i64 @llvm.fshl.i64(i64 %323, i64 %323, i64 31)
  %325 = mul i64 %324, -7046029288634856825
  %326 = getelementptr inbounds nuw i8, ptr %320, i64 8
  %327 = xor i64 %325, %321
  %328 = call i64 @llvm.fshl.i64(i64 %327, i64 %327, i64 27)
  %329 = mul i64 %328, -7046029288634856825
  %330 = add i64 %329, -8796714831421723037
  %331 = load i8, ptr %326, align 1
  %332 = zext i8 %331 to i64
  %333 = mul i64 %332, 2870177450012600261
  %334 = xor i64 %330, %333
  %335 = call i64 @llvm.fshl.i64(i64 %334, i64 %334, i64 11)
  %336 = mul i64 %335, -7046029288634856825
  br label %622

337:                                              ; preds = %215
  %338 = load i64, ptr %218, align 8
  %339 = mul i64 %338, -4417276706812531889
  %340 = call i64 @llvm.fshl.i64(i64 %339, i64 %339, i64 31)
  %341 = mul i64 %340, -7046029288634856825
  %342 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %343 = xor i64 %341, %217
  %344 = call i64 @llvm.fshl.i64(i64 %343, i64 %343, i64 27)
  %345 = mul i64 %344, -7046029288634856825
  %346 = add i64 %345, -8796714831421723037
  br label %347

347:                                              ; preds = %337, %215
  %348 = phi ptr [ %218, %215 ], [ %342, %337 ]
  %349 = phi i64 [ %217, %215 ], [ %346, %337 ]
  %350 = load i64, ptr %348, align 8
  %351 = mul i64 %350, -4417276706812531889
  %352 = call i64 @llvm.fshl.i64(i64 %351, i64 %351, i64 31)
  %353 = mul i64 %352, -7046029288634856825
  %354 = getelementptr inbounds nuw i8, ptr %348, i64 8
  %355 = xor i64 %353, %349
  %356 = call i64 @llvm.fshl.i64(i64 %355, i64 %355, i64 27)
  %357 = mul i64 %356, -7046029288634856825
  %358 = add i64 %357, -8796714831421723037
  br label %359

359:                                              ; preds = %347, %215
  %360 = phi ptr [ %218, %215 ], [ %354, %347 ]
  %361 = phi i64 [ %217, %215 ], [ %358, %347 ]
  %362 = load i64, ptr %360, align 8
  %363 = mul i64 %362, -4417276706812531889
  %364 = call i64 @llvm.fshl.i64(i64 %363, i64 %363, i64 31)
  %365 = mul i64 %364, -7046029288634856825
  %366 = getelementptr inbounds nuw i8, ptr %360, i64 8
  %367 = xor i64 %365, %361
  %368 = call i64 @llvm.fshl.i64(i64 %367, i64 %367, i64 27)
  %369 = mul i64 %368, -7046029288634856825
  %370 = add i64 %369, -8796714831421723037
  br label %371

371:                                              ; preds = %359, %215
  %372 = phi ptr [ %218, %215 ], [ %366, %359 ]
  %373 = phi i64 [ %217, %215 ], [ %370, %359 ]
  %374 = load i32, ptr %372, align 4
  %375 = zext i32 %374 to i64
  %376 = mul i64 %375, -7046029288634856825
  %377 = xor i64 %376, %373
  %378 = getelementptr inbounds nuw i8, ptr %372, i64 4
  %379 = call i64 @llvm.fshl.i64(i64 %377, i64 %377, i64 23)
  %380 = mul i64 %379, -4417276706812531889
  %381 = add i64 %380, 1609587929392839161
  %382 = load i8, ptr %378, align 1
  %383 = zext i8 %382 to i64
  %384 = mul i64 %383, 2870177450012600261
  %385 = xor i64 %381, %384
  %386 = call i64 @llvm.fshl.i64(i64 %385, i64 %385, i64 11)
  %387 = mul i64 %386, -7046029288634856825
  br label %622

388:                                              ; preds = %215
  %389 = load i64, ptr %218, align 8
  %390 = mul i64 %389, -4417276706812531889
  %391 = call i64 @llvm.fshl.i64(i64 %390, i64 %390, i64 31)
  %392 = mul i64 %391, -7046029288634856825
  %393 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %394 = xor i64 %392, %217
  %395 = call i64 @llvm.fshl.i64(i64 %394, i64 %394, i64 27)
  %396 = mul i64 %395, -7046029288634856825
  %397 = add i64 %396, -8796714831421723037
  br label %398

398:                                              ; preds = %388, %215
  %399 = phi ptr [ %218, %215 ], [ %393, %388 ]
  %400 = phi i64 [ %217, %215 ], [ %397, %388 ]
  %401 = load i64, ptr %399, align 8
  %402 = mul i64 %401, -4417276706812531889
  %403 = call i64 @llvm.fshl.i64(i64 %402, i64 %402, i64 31)
  %404 = mul i64 %403, -7046029288634856825
  %405 = getelementptr inbounds nuw i8, ptr %399, i64 8
  %406 = xor i64 %404, %400
  %407 = call i64 @llvm.fshl.i64(i64 %406, i64 %406, i64 27)
  %408 = mul i64 %407, -7046029288634856825
  %409 = add i64 %408, -8796714831421723037
  br label %410

410:                                              ; preds = %398, %215
  %411 = phi ptr [ %218, %215 ], [ %405, %398 ]
  %412 = phi i64 [ %217, %215 ], [ %409, %398 ]
  %413 = load i64, ptr %411, align 8
  %414 = mul i64 %413, -4417276706812531889
  %415 = call i64 @llvm.fshl.i64(i64 %414, i64 %414, i64 31)
  %416 = mul i64 %415, -7046029288634856825
  %417 = getelementptr inbounds nuw i8, ptr %411, i64 8
  %418 = xor i64 %416, %412
  %419 = call i64 @llvm.fshl.i64(i64 %418, i64 %418, i64 27)
  %420 = mul i64 %419, -7046029288634856825
  %421 = add i64 %420, -8796714831421723037
  %422 = getelementptr inbounds nuw i8, ptr %411, i64 9
  %423 = load i8, ptr %417, align 1
  %424 = zext i8 %423 to i64
  %425 = mul i64 %424, 2870177450012600261
  %426 = xor i64 %421, %425
  %427 = call i64 @llvm.fshl.i64(i64 %426, i64 %426, i64 11)
  %428 = mul i64 %427, -7046029288634856825
  %429 = load i8, ptr %422, align 1
  %430 = zext i8 %429 to i64
  %431 = mul i64 %430, 2870177450012600261
  %432 = xor i64 %428, %431
  %433 = call i64 @llvm.fshl.i64(i64 %432, i64 %432, i64 11)
  %434 = mul i64 %433, -7046029288634856825
  br label %622

435:                                              ; preds = %215
  %436 = load i64, ptr %218, align 8
  %437 = mul i64 %436, -4417276706812531889
  %438 = call i64 @llvm.fshl.i64(i64 %437, i64 %437, i64 31)
  %439 = mul i64 %438, -7046029288634856825
  %440 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %441 = xor i64 %439, %217
  %442 = call i64 @llvm.fshl.i64(i64 %441, i64 %441, i64 27)
  %443 = mul i64 %442, -7046029288634856825
  %444 = add i64 %443, -8796714831421723037
  br label %445

445:                                              ; preds = %435, %215
  %446 = phi ptr [ %218, %215 ], [ %440, %435 ]
  %447 = phi i64 [ %217, %215 ], [ %444, %435 ]
  %448 = load i64, ptr %446, align 8
  %449 = mul i64 %448, -4417276706812531889
  %450 = call i64 @llvm.fshl.i64(i64 %449, i64 %449, i64 31)
  %451 = mul i64 %450, -7046029288634856825
  %452 = getelementptr inbounds nuw i8, ptr %446, i64 8
  %453 = xor i64 %451, %447
  %454 = call i64 @llvm.fshl.i64(i64 %453, i64 %453, i64 27)
  %455 = mul i64 %454, -7046029288634856825
  %456 = add i64 %455, -8796714831421723037
  br label %457

457:                                              ; preds = %445, %215
  %458 = phi ptr [ %218, %215 ], [ %452, %445 ]
  %459 = phi i64 [ %217, %215 ], [ %456, %445 ]
  %460 = load i64, ptr %458, align 8
  %461 = mul i64 %460, -4417276706812531889
  %462 = call i64 @llvm.fshl.i64(i64 %461, i64 %461, i64 31)
  %463 = mul i64 %462, -7046029288634856825
  %464 = getelementptr inbounds nuw i8, ptr %458, i64 8
  %465 = xor i64 %463, %459
  %466 = call i64 @llvm.fshl.i64(i64 %465, i64 %465, i64 27)
  %467 = mul i64 %466, -7046029288634856825
  %468 = add i64 %467, -8796714831421723037
  br label %469

469:                                              ; preds = %457, %215
  %470 = phi ptr [ %218, %215 ], [ %464, %457 ]
  %471 = phi i64 [ %217, %215 ], [ %468, %457 ]
  %472 = load i32, ptr %470, align 4
  %473 = zext i32 %472 to i64
  %474 = mul i64 %473, -7046029288634856825
  %475 = xor i64 %474, %471
  %476 = getelementptr inbounds nuw i8, ptr %470, i64 4
  %477 = call i64 @llvm.fshl.i64(i64 %475, i64 %475, i64 23)
  %478 = mul i64 %477, -4417276706812531889
  %479 = add i64 %478, 1609587929392839161
  %480 = getelementptr inbounds nuw i8, ptr %470, i64 5
  %481 = load i8, ptr %476, align 1
  %482 = zext i8 %481 to i64
  %483 = mul i64 %482, 2870177450012600261
  %484 = xor i64 %479, %483
  %485 = call i64 @llvm.fshl.i64(i64 %484, i64 %484, i64 11)
  %486 = mul i64 %485, -7046029288634856825
  %487 = load i8, ptr %480, align 1
  %488 = zext i8 %487 to i64
  %489 = mul i64 %488, 2870177450012600261
  %490 = xor i64 %486, %489
  %491 = call i64 @llvm.fshl.i64(i64 %490, i64 %490, i64 11)
  %492 = mul i64 %491, -7046029288634856825
  br label %622

493:                                              ; preds = %215
  %494 = load i64, ptr %218, align 8
  %495 = mul i64 %494, -4417276706812531889
  %496 = call i64 @llvm.fshl.i64(i64 %495, i64 %495, i64 31)
  %497 = mul i64 %496, -7046029288634856825
  %498 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %499 = xor i64 %497, %217
  %500 = call i64 @llvm.fshl.i64(i64 %499, i64 %499, i64 27)
  %501 = mul i64 %500, -7046029288634856825
  %502 = add i64 %501, -8796714831421723037
  br label %503

503:                                              ; preds = %493, %215
  %504 = phi ptr [ %218, %215 ], [ %498, %493 ]
  %505 = phi i64 [ %217, %215 ], [ %502, %493 ]
  %506 = load i64, ptr %504, align 8
  %507 = mul i64 %506, -4417276706812531889
  %508 = call i64 @llvm.fshl.i64(i64 %507, i64 %507, i64 31)
  %509 = mul i64 %508, -7046029288634856825
  %510 = getelementptr inbounds nuw i8, ptr %504, i64 8
  %511 = xor i64 %509, %505
  %512 = call i64 @llvm.fshl.i64(i64 %511, i64 %511, i64 27)
  %513 = mul i64 %512, -7046029288634856825
  %514 = add i64 %513, -8796714831421723037
  br label %515

515:                                              ; preds = %503, %215
  %516 = phi ptr [ %218, %215 ], [ %510, %503 ]
  %517 = phi i64 [ %217, %215 ], [ %514, %503 ]
  %518 = load i64, ptr %516, align 8
  %519 = mul i64 %518, -4417276706812531889
  %520 = call i64 @llvm.fshl.i64(i64 %519, i64 %519, i64 31)
  %521 = mul i64 %520, -7046029288634856825
  %522 = getelementptr inbounds nuw i8, ptr %516, i64 8
  %523 = xor i64 %521, %517
  %524 = call i64 @llvm.fshl.i64(i64 %523, i64 %523, i64 27)
  %525 = mul i64 %524, -7046029288634856825
  %526 = add i64 %525, -8796714831421723037
  %527 = getelementptr inbounds nuw i8, ptr %516, i64 9
  %528 = load i8, ptr %522, align 1
  %529 = zext i8 %528 to i64
  %530 = mul i64 %529, 2870177450012600261
  %531 = xor i64 %526, %530
  %532 = call i64 @llvm.fshl.i64(i64 %531, i64 %531, i64 11)
  %533 = mul i64 %532, -7046029288634856825
  %534 = getelementptr inbounds nuw i8, ptr %516, i64 10
  %535 = load i8, ptr %527, align 1
  %536 = zext i8 %535 to i64
  %537 = mul i64 %536, 2870177450012600261
  %538 = xor i64 %533, %537
  %539 = call i64 @llvm.fshl.i64(i64 %538, i64 %538, i64 11)
  %540 = mul i64 %539, -7046029288634856825
  %541 = load i8, ptr %534, align 1
  %542 = zext i8 %541 to i64
  %543 = mul i64 %542, 2870177450012600261
  %544 = xor i64 %540, %543
  %545 = call i64 @llvm.fshl.i64(i64 %544, i64 %544, i64 11)
  %546 = mul i64 %545, -7046029288634856825
  br label %622

547:                                              ; preds = %215
  %548 = load i64, ptr %218, align 8
  %549 = mul i64 %548, -4417276706812531889
  %550 = call i64 @llvm.fshl.i64(i64 %549, i64 %549, i64 31)
  %551 = mul i64 %550, -7046029288634856825
  %552 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %553 = xor i64 %551, %217
  %554 = call i64 @llvm.fshl.i64(i64 %553, i64 %553, i64 27)
  %555 = mul i64 %554, -7046029288634856825
  %556 = add i64 %555, -8796714831421723037
  br label %557

557:                                              ; preds = %547, %215
  %558 = phi ptr [ %218, %215 ], [ %552, %547 ]
  %559 = phi i64 [ %217, %215 ], [ %556, %547 ]
  %560 = load i64, ptr %558, align 8
  %561 = mul i64 %560, -4417276706812531889
  %562 = call i64 @llvm.fshl.i64(i64 %561, i64 %561, i64 31)
  %563 = mul i64 %562, -7046029288634856825
  %564 = getelementptr inbounds nuw i8, ptr %558, i64 8
  %565 = xor i64 %563, %559
  %566 = call i64 @llvm.fshl.i64(i64 %565, i64 %565, i64 27)
  %567 = mul i64 %566, -7046029288634856825
  %568 = add i64 %567, -8796714831421723037
  br label %569

569:                                              ; preds = %557, %215
  %570 = phi ptr [ %218, %215 ], [ %564, %557 ]
  %571 = phi i64 [ %217, %215 ], [ %568, %557 ]
  %572 = load i64, ptr %570, align 8
  %573 = mul i64 %572, -4417276706812531889
  %574 = call i64 @llvm.fshl.i64(i64 %573, i64 %573, i64 31)
  %575 = mul i64 %574, -7046029288634856825
  %576 = getelementptr inbounds nuw i8, ptr %570, i64 8
  %577 = xor i64 %575, %571
  %578 = call i64 @llvm.fshl.i64(i64 %577, i64 %577, i64 27)
  %579 = mul i64 %578, -7046029288634856825
  %580 = add i64 %579, -8796714831421723037
  br label %581

581:                                              ; preds = %569, %215
  %582 = phi ptr [ %218, %215 ], [ %576, %569 ]
  %583 = phi i64 [ %217, %215 ], [ %580, %569 ]
  %584 = load i32, ptr %582, align 4
  %585 = zext i32 %584 to i64
  %586 = mul i64 %585, -7046029288634856825
  %587 = xor i64 %586, %583
  %588 = getelementptr inbounds nuw i8, ptr %582, i64 4
  %589 = call i64 @llvm.fshl.i64(i64 %587, i64 %587, i64 23)
  %590 = mul i64 %589, -4417276706812531889
  %591 = add i64 %590, 1609587929392839161
  br label %592

592:                                              ; preds = %581, %215
  %593 = phi ptr [ %218, %215 ], [ %588, %581 ]
  %594 = phi i64 [ %217, %215 ], [ %591, %581 ]
  %595 = getelementptr inbounds nuw i8, ptr %593, i64 1
  %596 = load i8, ptr %593, align 1
  %597 = zext i8 %596 to i64
  %598 = mul i64 %597, 2870177450012600261
  %599 = xor i64 %598, %594
  %600 = call i64 @llvm.fshl.i64(i64 %599, i64 %599, i64 11)
  %601 = mul i64 %600, -7046029288634856825
  br label %602

602:                                              ; preds = %592, %215
  %603 = phi ptr [ %218, %215 ], [ %595, %592 ]
  %604 = phi i64 [ %217, %215 ], [ %601, %592 ]
  %605 = getelementptr inbounds nuw i8, ptr %603, i64 1
  %606 = load i8, ptr %603, align 1
  %607 = zext i8 %606 to i64
  %608 = mul i64 %607, 2870177450012600261
  %609 = xor i64 %608, %604
  %610 = call i64 @llvm.fshl.i64(i64 %609, i64 %609, i64 11)
  %611 = mul i64 %610, -7046029288634856825
  br label %612

612:                                              ; preds = %602, %215
  %613 = phi ptr [ %218, %215 ], [ %605, %602 ]
  %614 = phi i64 [ %217, %215 ], [ %611, %602 ]
  %615 = load i8, ptr %613, align 1
  %616 = zext i8 %615 to i64
  %617 = mul i64 %616, 2870177450012600261
  %618 = xor i64 %617, %614
  %619 = call i64 @llvm.fshl.i64(i64 %618, i64 %618, i64 11)
  %620 = mul i64 %619, -7046029288634856825
  br label %622

621:                                              ; preds = %215
  unreachable

622:                                              ; preds = %215, %242, %287, %319, %371, %410, %469, %515, %612
  %623 = phi i64 [ %546, %515 ], [ %492, %469 ], [ %434, %410 ], [ %387, %371 ], [ %336, %319 ], [ %296, %287 ], [ %252, %242 ], [ %217, %215 ], [ %620, %612 ]
  %624 = lshr i64 %623, 33
  %625 = xor i64 %624, %623
  %626 = mul i64 %625, -4417276706812531889
  %627 = lshr i64 %626, 29
  %628 = xor i64 %627, %626
  %629 = mul i64 %628, 1609587929392839161
  %630 = lshr i64 %629, 32
  %631 = xor i64 %630, %629
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #6
  ret i64 %631
}

; Function Attrs: nounwind
define dso_local i64 @target_s64_40_23(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  %16 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %15) #6
  %17 = call ptr @memset(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 88) #7
  %18 = add i64 %1, 6983438078262162902
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %18, ptr %19, align 8
  %20 = add i64 %1, -4417276706812531889
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 %20, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 %1, ptr %22, align 8
  %23 = add i64 %1, 7046029288634856825
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 %23, ptr %24, align 8
  %25 = call ptr @memcpy(ptr noundef nonnull %16, ptr noundef nonnull %15, i64 noundef 80) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %15) #6
  %26 = icmp eq ptr %0, null
  br i1 %26, label %129, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %29 = load i64, ptr %16, align 8
  %30 = add i64 %29, 40
  store i64 %30, ptr %16, align 8
  %31 = getelementptr inbounds nuw i8, ptr %16, i64 72
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %81, label %34

34:                                               ; preds = %27
  %35 = zext i32 %32 to i64
  %36 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %35
  %38 = sub i32 32, %32
  %39 = zext i32 %38 to i64
  %40 = call ptr @memcpy(ptr noundef nonnull %37, ptr noundef nonnull %0, i64 noundef %39) #7
  %41 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %42 = load i64, ptr %41, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #6
  %43 = call ptr @memcpy(ptr noundef nonnull %14, ptr noundef nonnull %36, i64 noundef 8) #7
  %44 = load i64, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #6
  %45 = mul i64 %44, -4417276706812531889
  %46 = add i64 %45, %42
  %47 = call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 31)
  %48 = mul i64 %47, -7046029288634856825
  store i64 %48, ptr %41, align 8
  %49 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds nuw i8, ptr %16, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #6
  %52 = call ptr @memcpy(ptr noundef nonnull %13, ptr noundef nonnull %51, i64 noundef 8) #7
  %53 = load i64, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #6
  %54 = mul i64 %53, -4417276706812531889
  %55 = add i64 %54, %50
  %56 = call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  store i64 %57, ptr %49, align 8
  %58 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds nuw i8, ptr %16, i64 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  %61 = call ptr @memcpy(ptr noundef nonnull %12, ptr noundef nonnull %60, i64 noundef 8) #7
  %62 = load i64, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  %63 = mul i64 %62, -4417276706812531889
  %64 = add i64 %63, %59
  %65 = call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  store i64 %66, ptr %58, align 8
  %67 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %16, i64 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  %70 = call ptr @memcpy(ptr noundef nonnull %11, ptr noundef nonnull %69, i64 noundef 8) #7
  %71 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  %72 = mul i64 %71, -4417276706812531889
  %73 = add i64 %72, %68
  %74 = call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 31)
  %75 = mul i64 %74, -7046029288634856825
  store i64 %75, ptr %67, align 8
  %76 = load i32, ptr %31, align 8
  %77 = sub i32 32, %76
  %78 = zext i32 %77 to i64
  store i32 0, ptr %31, align 8
  %79 = getelementptr i8, ptr %0, i64 %78
  %80 = icmp ugt i32 %77, 8
  br i1 %80, label %119, label %81

81:                                               ; preds = %27, %34
  %82 = phi ptr [ %79, %34 ], [ %0, %27 ]
  %83 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %84 = load i64, ptr %83, align 8
  %85 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %86 = load i64, ptr %85, align 8
  %87 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %90 = load i64, ptr %89, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %91 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %82, i64 noundef 8) #7
  %92 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  %93 = getelementptr inbounds nuw i8, ptr %82, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %94 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %93, i64 noundef 8) #7
  %95 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  %96 = getelementptr inbounds nuw i8, ptr %82, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %97 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %96, i64 noundef 8) #7
  %98 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  %99 = getelementptr inbounds nuw i8, ptr %82, i64 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %100 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %99, i64 noundef 8) #7
  %101 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %102 = mul i64 %101, -4417276706812531889
  %103 = add i64 %102, %90
  %104 = call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 31)
  %105 = mul i64 %104, -7046029288634856825
  %106 = mul i64 %98, -4417276706812531889
  %107 = add i64 %106, %88
  %108 = call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 31)
  %109 = mul i64 %108, -7046029288634856825
  %110 = mul i64 %95, -4417276706812531889
  %111 = add i64 %110, %86
  %112 = call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 31)
  %113 = mul i64 %112, -7046029288634856825
  %114 = mul i64 %92, -4417276706812531889
  %115 = add i64 %114, %84
  %116 = call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 31)
  %117 = mul i64 %116, -7046029288634856825
  %118 = getelementptr i8, ptr %82, i64 32
  store i64 %117, ptr %83, align 8
  store i64 %113, ptr %85, align 8
  store i64 %109, ptr %87, align 8
  store i64 %105, ptr %89, align 8
  br label %119

119:                                              ; preds = %81, %34
  %120 = phi ptr [ %118, %81 ], [ %79, %34 ]
  %121 = icmp ult ptr %120, %28
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %124 = ptrtoint ptr %28 to i64
  %125 = ptrtoint ptr %120 to i64
  %126 = sub i64 %124, %125
  %127 = call ptr @memcpy(ptr noundef nonnull %123, ptr noundef nonnull %120, i64 noundef %126) #7
  %128 = trunc i64 %126 to i32
  store i32 %128, ptr %31, align 8
  br label %129

129:                                              ; preds = %2, %119, %122
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 63
  %132 = load i64, ptr %16, align 8
  %133 = add i64 %132, 23
  store i64 %133, ptr %16, align 8
  %134 = getelementptr inbounds nuw i8, ptr %16, i64 72
  %135 = load i32, ptr %134, align 8
  %136 = zext i32 %135 to i64
  %137 = icmp ult i32 %135, 9
  %138 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 %136
  br i1 %137, label %140, label %144

140:                                              ; preds = %129
  %141 = call ptr @memcpy(ptr noundef nonnull %139, ptr noundef nonnull %130, i64 noundef 23) #7
  %142 = load i32, ptr %134, align 8
  %143 = add i32 %142, 23
  br label %195

144:                                              ; preds = %129
  %145 = sub i32 32, %135
  %146 = zext i32 %145 to i64
  %147 = call ptr @memcpy(ptr noundef nonnull %139, ptr noundef nonnull %130, i64 noundef %146) #7
  %148 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %149 = load i64, ptr %148, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %150 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %138, i64 noundef 8) #7
  %151 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %152 = mul i64 %151, -4417276706812531889
  %153 = add i64 %152, %149
  %154 = call i64 @llvm.fshl.i64(i64 %153, i64 %153, i64 31)
  %155 = mul i64 %154, -7046029288634856825
  store i64 %155, ptr %148, align 8
  %156 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %157 = load i64, ptr %156, align 8
  %158 = getelementptr inbounds nuw i8, ptr %16, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %159 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %158, i64 noundef 8) #7
  %160 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %161 = mul i64 %160, -4417276706812531889
  %162 = add i64 %161, %157
  %163 = call i64 @llvm.fshl.i64(i64 %162, i64 %162, i64 31)
  %164 = mul i64 %163, -7046029288634856825
  store i64 %164, ptr %156, align 8
  %165 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %166 = load i64, ptr %165, align 8
  %167 = getelementptr inbounds nuw i8, ptr %16, i64 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %168 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %167, i64 noundef 8) #7
  %169 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %170 = mul i64 %169, -4417276706812531889
  %171 = add i64 %170, %166
  %172 = call i64 @llvm.fshl.i64(i64 %171, i64 %171, i64 31)
  %173 = mul i64 %172, -7046029288634856825
  store i64 %173, ptr %165, align 8
  %174 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %175 = load i64, ptr %174, align 8
  %176 = getelementptr inbounds nuw i8, ptr %16, i64 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %177 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %176, i64 noundef 8) #7
  %178 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %179 = mul i64 %178, -4417276706812531889
  %180 = add i64 %179, %175
  %181 = call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 31)
  %182 = mul i64 %181, -7046029288634856825
  store i64 %182, ptr %174, align 8
  %183 = load i32, ptr %134, align 8
  %184 = sub i32 32, %183
  store i32 0, ptr %134, align 8
  %185 = icmp ult i32 %184, 23
  br i1 %185, label %186, label %197

186:                                              ; preds = %144
  %187 = zext nneg i32 %184 to i64
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 %187
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 40
  %190 = ptrtoint ptr %131 to i64
  %191 = ptrtoint ptr %189 to i64
  %192 = sub i64 %190, %191
  %193 = call ptr @memcpy(ptr noundef nonnull %138, ptr noundef nonnull %189, i64 noundef %192) #7
  %194 = trunc i64 %192 to i32
  br label %195

195:                                              ; preds = %186, %140
  %196 = phi i32 [ %143, %140 ], [ %194, %186 ]
  store i32 %196, ptr %134, align 8
  br label %197

197:                                              ; preds = %144, %195
  %198 = load i64, ptr %16, align 8
  %199 = icmp ugt i64 %198, 31
  br i1 %199, label %200, label %240

200:                                              ; preds = %197
  %201 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %202 = load i64, ptr %201, align 8
  %203 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %204 = load i64, ptr %203, align 8
  %205 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %206 = load i64, ptr %205, align 8
  %207 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %208 = load i64, ptr %207, align 8
  %209 = call i64 @llvm.fshl.i64(i64 %202, i64 %202, i64 1)
  %210 = call i64 @llvm.fshl.i64(i64 %204, i64 %204, i64 7)
  %211 = add i64 %210, %209
  %212 = call i64 @llvm.fshl.i64(i64 %206, i64 %206, i64 12)
  %213 = add i64 %211, %212
  %214 = call i64 @llvm.fshl.i64(i64 %208, i64 %208, i64 18)
  %215 = add i64 %213, %214
  %216 = mul i64 %202, -4417276706812531889
  %217 = call i64 @llvm.fshl.i64(i64 %216, i64 %216, i64 31)
  %218 = mul i64 %217, -7046029288634856825
  %219 = xor i64 %215, %218
  %220 = mul i64 %219, -7046029288634856825
  %221 = add i64 %220, -8796714831421723037
  %222 = mul i64 %204, -4417276706812531889
  %223 = call i64 @llvm.fshl.i64(i64 %222, i64 %222, i64 31)
  %224 = mul i64 %223, -7046029288634856825
  %225 = xor i64 %221, %224
  %226 = mul i64 %225, -7046029288634856825
  %227 = add i64 %226, -8796714831421723037
  %228 = mul i64 %206, -4417276706812531889
  %229 = call i64 @llvm.fshl.i64(i64 %228, i64 %228, i64 31)
  %230 = mul i64 %229, -7046029288634856825
  %231 = xor i64 %227, %230
  %232 = mul i64 %231, -7046029288634856825
  %233 = add i64 %232, -8796714831421723037
  %234 = mul i64 %208, -4417276706812531889
  %235 = call i64 @llvm.fshl.i64(i64 %234, i64 %234, i64 31)
  %236 = mul i64 %235, -7046029288634856825
  %237 = xor i64 %233, %236
  %238 = mul i64 %237, -7046029288634856825
  %239 = add i64 %238, -8796714831421723037
  br label %244

240:                                              ; preds = %197
  %241 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %242 = load i64, ptr %241, align 8
  %243 = add i64 %242, 2870177450012600261
  br label %244

244:                                              ; preds = %240, %200
  %245 = phi i64 [ %239, %200 ], [ %243, %240 ]
  %246 = add i64 %245, %198
  %247 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %248 = and i64 %198, 31
  switch i64 %248, label %650 [
    i64 24, label %249
    i64 16, label %259
    i64 8, label %271
    i64 28, label %282
    i64 20, label %292
    i64 12, label %304
    i64 4, label %316
    i64 25, label %326
    i64 17, label %336
    i64 9, label %348
    i64 29, label %366
    i64 21, label %376
    i64 13, label %388
    i64 5, label %400
    i64 26, label %417
    i64 18, label %427
    i64 10, label %439
    i64 30, label %464
    i64 22, label %474
    i64 14, label %486
    i64 6, label %498
    i64 27, label %522
    i64 19, label %532
    i64 11, label %544
    i64 31, label %576
    i64 23, label %586
    i64 15, label %598
    i64 7, label %610
    i64 3, label %621
    i64 2, label %631
    i64 1, label %641
    i64 0, label %651
  ]

249:                                              ; preds = %244
  %250 = load i64, ptr %247, align 8
  %251 = mul i64 %250, -4417276706812531889
  %252 = call i64 @llvm.fshl.i64(i64 %251, i64 %251, i64 31)
  %253 = mul i64 %252, -7046029288634856825
  %254 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %255 = xor i64 %253, %246
  %256 = call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 27)
  %257 = mul i64 %256, -7046029288634856825
  %258 = add i64 %257, -8796714831421723037
  br label %259

259:                                              ; preds = %249, %244
  %260 = phi ptr [ %247, %244 ], [ %254, %249 ]
  %261 = phi i64 [ %246, %244 ], [ %258, %249 ]
  %262 = load i64, ptr %260, align 8
  %263 = mul i64 %262, -4417276706812531889
  %264 = call i64 @llvm.fshl.i64(i64 %263, i64 %263, i64 31)
  %265 = mul i64 %264, -7046029288634856825
  %266 = getelementptr inbounds nuw i8, ptr %260, i64 8
  %267 = xor i64 %265, %261
  %268 = call i64 @llvm.fshl.i64(i64 %267, i64 %267, i64 27)
  %269 = mul i64 %268, -7046029288634856825
  %270 = add i64 %269, -8796714831421723037
  br label %271

271:                                              ; preds = %259, %244
  %272 = phi ptr [ %247, %244 ], [ %266, %259 ]
  %273 = phi i64 [ %246, %244 ], [ %270, %259 ]
  %274 = load i64, ptr %272, align 8
  %275 = mul i64 %274, -4417276706812531889
  %276 = call i64 @llvm.fshl.i64(i64 %275, i64 %275, i64 31)
  %277 = mul i64 %276, -7046029288634856825
  %278 = xor i64 %277, %273
  %279 = call i64 @llvm.fshl.i64(i64 %278, i64 %278, i64 27)
  %280 = mul i64 %279, -7046029288634856825
  %281 = add i64 %280, -8796714831421723037
  br label %651

282:                                              ; preds = %244
  %283 = load i64, ptr %247, align 8
  %284 = mul i64 %283, -4417276706812531889
  %285 = call i64 @llvm.fshl.i64(i64 %284, i64 %284, i64 31)
  %286 = mul i64 %285, -7046029288634856825
  %287 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %288 = xor i64 %286, %246
  %289 = call i64 @llvm.fshl.i64(i64 %288, i64 %288, i64 27)
  %290 = mul i64 %289, -7046029288634856825
  %291 = add i64 %290, -8796714831421723037
  br label %292

292:                                              ; preds = %282, %244
  %293 = phi ptr [ %247, %244 ], [ %287, %282 ]
  %294 = phi i64 [ %246, %244 ], [ %291, %282 ]
  %295 = load i64, ptr %293, align 8
  %296 = mul i64 %295, -4417276706812531889
  %297 = call i64 @llvm.fshl.i64(i64 %296, i64 %296, i64 31)
  %298 = mul i64 %297, -7046029288634856825
  %299 = getelementptr inbounds nuw i8, ptr %293, i64 8
  %300 = xor i64 %298, %294
  %301 = call i64 @llvm.fshl.i64(i64 %300, i64 %300, i64 27)
  %302 = mul i64 %301, -7046029288634856825
  %303 = add i64 %302, -8796714831421723037
  br label %304

304:                                              ; preds = %292, %244
  %305 = phi ptr [ %247, %244 ], [ %299, %292 ]
  %306 = phi i64 [ %246, %244 ], [ %303, %292 ]
  %307 = load i64, ptr %305, align 8
  %308 = mul i64 %307, -4417276706812531889
  %309 = call i64 @llvm.fshl.i64(i64 %308, i64 %308, i64 31)
  %310 = mul i64 %309, -7046029288634856825
  %311 = getelementptr inbounds nuw i8, ptr %305, i64 8
  %312 = xor i64 %310, %306
  %313 = call i64 @llvm.fshl.i64(i64 %312, i64 %312, i64 27)
  %314 = mul i64 %313, -7046029288634856825
  %315 = add i64 %314, -8796714831421723037
  br label %316

316:                                              ; preds = %304, %244
  %317 = phi ptr [ %247, %244 ], [ %311, %304 ]
  %318 = phi i64 [ %246, %244 ], [ %315, %304 ]
  %319 = load i32, ptr %317, align 4
  %320 = zext i32 %319 to i64
  %321 = mul i64 %320, -7046029288634856825
  %322 = xor i64 %321, %318
  %323 = call i64 @llvm.fshl.i64(i64 %322, i64 %322, i64 23)
  %324 = mul i64 %323, -4417276706812531889
  %325 = add i64 %324, 1609587929392839161
  br label %651

326:                                              ; preds = %244
  %327 = load i64, ptr %247, align 8
  %328 = mul i64 %327, -4417276706812531889
  %329 = call i64 @llvm.fshl.i64(i64 %328, i64 %328, i64 31)
  %330 = mul i64 %329, -7046029288634856825
  %331 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %332 = xor i64 %330, %246
  %333 = call i64 @llvm.fshl.i64(i64 %332, i64 %332, i64 27)
  %334 = mul i64 %333, -7046029288634856825
  %335 = add i64 %334, -8796714831421723037
  br label %336

336:                                              ; preds = %326, %244
  %337 = phi ptr [ %247, %244 ], [ %331, %326 ]
  %338 = phi i64 [ %246, %244 ], [ %335, %326 ]
  %339 = load i64, ptr %337, align 8
  %340 = mul i64 %339, -4417276706812531889
  %341 = call i64 @llvm.fshl.i64(i64 %340, i64 %340, i64 31)
  %342 = mul i64 %341, -7046029288634856825
  %343 = getelementptr inbounds nuw i8, ptr %337, i64 8
  %344 = xor i64 %342, %338
  %345 = call i64 @llvm.fshl.i64(i64 %344, i64 %344, i64 27)
  %346 = mul i64 %345, -7046029288634856825
  %347 = add i64 %346, -8796714831421723037
  br label %348

348:                                              ; preds = %336, %244
  %349 = phi ptr [ %247, %244 ], [ %343, %336 ]
  %350 = phi i64 [ %246, %244 ], [ %347, %336 ]
  %351 = load i64, ptr %349, align 8
  %352 = mul i64 %351, -4417276706812531889
  %353 = call i64 @llvm.fshl.i64(i64 %352, i64 %352, i64 31)
  %354 = mul i64 %353, -7046029288634856825
  %355 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %356 = xor i64 %354, %350
  %357 = call i64 @llvm.fshl.i64(i64 %356, i64 %356, i64 27)
  %358 = mul i64 %357, -7046029288634856825
  %359 = add i64 %358, -8796714831421723037
  %360 = load i8, ptr %355, align 1
  %361 = zext i8 %360 to i64
  %362 = mul i64 %361, 2870177450012600261
  %363 = xor i64 %359, %362
  %364 = call i64 @llvm.fshl.i64(i64 %363, i64 %363, i64 11)
  %365 = mul i64 %364, -7046029288634856825
  br label %651

366:                                              ; preds = %244
  %367 = load i64, ptr %247, align 8
  %368 = mul i64 %367, -4417276706812531889
  %369 = call i64 @llvm.fshl.i64(i64 %368, i64 %368, i64 31)
  %370 = mul i64 %369, -7046029288634856825
  %371 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %372 = xor i64 %370, %246
  %373 = call i64 @llvm.fshl.i64(i64 %372, i64 %372, i64 27)
  %374 = mul i64 %373, -7046029288634856825
  %375 = add i64 %374, -8796714831421723037
  br label %376

376:                                              ; preds = %366, %244
  %377 = phi ptr [ %247, %244 ], [ %371, %366 ]
  %378 = phi i64 [ %246, %244 ], [ %375, %366 ]
  %379 = load i64, ptr %377, align 8
  %380 = mul i64 %379, -4417276706812531889
  %381 = call i64 @llvm.fshl.i64(i64 %380, i64 %380, i64 31)
  %382 = mul i64 %381, -7046029288634856825
  %383 = getelementptr inbounds nuw i8, ptr %377, i64 8
  %384 = xor i64 %382, %378
  %385 = call i64 @llvm.fshl.i64(i64 %384, i64 %384, i64 27)
  %386 = mul i64 %385, -7046029288634856825
  %387 = add i64 %386, -8796714831421723037
  br label %388

388:                                              ; preds = %376, %244
  %389 = phi ptr [ %247, %244 ], [ %383, %376 ]
  %390 = phi i64 [ %246, %244 ], [ %387, %376 ]
  %391 = load i64, ptr %389, align 8
  %392 = mul i64 %391, -4417276706812531889
  %393 = call i64 @llvm.fshl.i64(i64 %392, i64 %392, i64 31)
  %394 = mul i64 %393, -7046029288634856825
  %395 = getelementptr inbounds nuw i8, ptr %389, i64 8
  %396 = xor i64 %394, %390
  %397 = call i64 @llvm.fshl.i64(i64 %396, i64 %396, i64 27)
  %398 = mul i64 %397, -7046029288634856825
  %399 = add i64 %398, -8796714831421723037
  br label %400

400:                                              ; preds = %388, %244
  %401 = phi ptr [ %247, %244 ], [ %395, %388 ]
  %402 = phi i64 [ %246, %244 ], [ %399, %388 ]
  %403 = load i32, ptr %401, align 4
  %404 = zext i32 %403 to i64
  %405 = mul i64 %404, -7046029288634856825
  %406 = xor i64 %405, %402
  %407 = getelementptr inbounds nuw i8, ptr %401, i64 4
  %408 = call i64 @llvm.fshl.i64(i64 %406, i64 %406, i64 23)
  %409 = mul i64 %408, -4417276706812531889
  %410 = add i64 %409, 1609587929392839161
  %411 = load i8, ptr %407, align 1
  %412 = zext i8 %411 to i64
  %413 = mul i64 %412, 2870177450012600261
  %414 = xor i64 %410, %413
  %415 = call i64 @llvm.fshl.i64(i64 %414, i64 %414, i64 11)
  %416 = mul i64 %415, -7046029288634856825
  br label %651

417:                                              ; preds = %244
  %418 = load i64, ptr %247, align 8
  %419 = mul i64 %418, -4417276706812531889
  %420 = call i64 @llvm.fshl.i64(i64 %419, i64 %419, i64 31)
  %421 = mul i64 %420, -7046029288634856825
  %422 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %423 = xor i64 %421, %246
  %424 = call i64 @llvm.fshl.i64(i64 %423, i64 %423, i64 27)
  %425 = mul i64 %424, -7046029288634856825
  %426 = add i64 %425, -8796714831421723037
  br label %427

427:                                              ; preds = %417, %244
  %428 = phi ptr [ %247, %244 ], [ %422, %417 ]
  %429 = phi i64 [ %246, %244 ], [ %426, %417 ]
  %430 = load i64, ptr %428, align 8
  %431 = mul i64 %430, -4417276706812531889
  %432 = call i64 @llvm.fshl.i64(i64 %431, i64 %431, i64 31)
  %433 = mul i64 %432, -7046029288634856825
  %434 = getelementptr inbounds nuw i8, ptr %428, i64 8
  %435 = xor i64 %433, %429
  %436 = call i64 @llvm.fshl.i64(i64 %435, i64 %435, i64 27)
  %437 = mul i64 %436, -7046029288634856825
  %438 = add i64 %437, -8796714831421723037
  br label %439

439:                                              ; preds = %427, %244
  %440 = phi ptr [ %247, %244 ], [ %434, %427 ]
  %441 = phi i64 [ %246, %244 ], [ %438, %427 ]
  %442 = load i64, ptr %440, align 8
  %443 = mul i64 %442, -4417276706812531889
  %444 = call i64 @llvm.fshl.i64(i64 %443, i64 %443, i64 31)
  %445 = mul i64 %444, -7046029288634856825
  %446 = getelementptr inbounds nuw i8, ptr %440, i64 8
  %447 = xor i64 %445, %441
  %448 = call i64 @llvm.fshl.i64(i64 %447, i64 %447, i64 27)
  %449 = mul i64 %448, -7046029288634856825
  %450 = add i64 %449, -8796714831421723037
  %451 = getelementptr inbounds nuw i8, ptr %440, i64 9
  %452 = load i8, ptr %446, align 1
  %453 = zext i8 %452 to i64
  %454 = mul i64 %453, 2870177450012600261
  %455 = xor i64 %450, %454
  %456 = call i64 @llvm.fshl.i64(i64 %455, i64 %455, i64 11)
  %457 = mul i64 %456, -7046029288634856825
  %458 = load i8, ptr %451, align 1
  %459 = zext i8 %458 to i64
  %460 = mul i64 %459, 2870177450012600261
  %461 = xor i64 %457, %460
  %462 = call i64 @llvm.fshl.i64(i64 %461, i64 %461, i64 11)
  %463 = mul i64 %462, -7046029288634856825
  br label %651

464:                                              ; preds = %244
  %465 = load i64, ptr %247, align 8
  %466 = mul i64 %465, -4417276706812531889
  %467 = call i64 @llvm.fshl.i64(i64 %466, i64 %466, i64 31)
  %468 = mul i64 %467, -7046029288634856825
  %469 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %470 = xor i64 %468, %246
  %471 = call i64 @llvm.fshl.i64(i64 %470, i64 %470, i64 27)
  %472 = mul i64 %471, -7046029288634856825
  %473 = add i64 %472, -8796714831421723037
  br label %474

474:                                              ; preds = %464, %244
  %475 = phi ptr [ %247, %244 ], [ %469, %464 ]
  %476 = phi i64 [ %246, %244 ], [ %473, %464 ]
  %477 = load i64, ptr %475, align 8
  %478 = mul i64 %477, -4417276706812531889
  %479 = call i64 @llvm.fshl.i64(i64 %478, i64 %478, i64 31)
  %480 = mul i64 %479, -7046029288634856825
  %481 = getelementptr inbounds nuw i8, ptr %475, i64 8
  %482 = xor i64 %480, %476
  %483 = call i64 @llvm.fshl.i64(i64 %482, i64 %482, i64 27)
  %484 = mul i64 %483, -7046029288634856825
  %485 = add i64 %484, -8796714831421723037
  br label %486

486:                                              ; preds = %474, %244
  %487 = phi ptr [ %247, %244 ], [ %481, %474 ]
  %488 = phi i64 [ %246, %244 ], [ %485, %474 ]
  %489 = load i64, ptr %487, align 8
  %490 = mul i64 %489, -4417276706812531889
  %491 = call i64 @llvm.fshl.i64(i64 %490, i64 %490, i64 31)
  %492 = mul i64 %491, -7046029288634856825
  %493 = getelementptr inbounds nuw i8, ptr %487, i64 8
  %494 = xor i64 %492, %488
  %495 = call i64 @llvm.fshl.i64(i64 %494, i64 %494, i64 27)
  %496 = mul i64 %495, -7046029288634856825
  %497 = add i64 %496, -8796714831421723037
  br label %498

498:                                              ; preds = %486, %244
  %499 = phi ptr [ %247, %244 ], [ %493, %486 ]
  %500 = phi i64 [ %246, %244 ], [ %497, %486 ]
  %501 = load i32, ptr %499, align 4
  %502 = zext i32 %501 to i64
  %503 = mul i64 %502, -7046029288634856825
  %504 = xor i64 %503, %500
  %505 = getelementptr inbounds nuw i8, ptr %499, i64 4
  %506 = call i64 @llvm.fshl.i64(i64 %504, i64 %504, i64 23)
  %507 = mul i64 %506, -4417276706812531889
  %508 = add i64 %507, 1609587929392839161
  %509 = getelementptr inbounds nuw i8, ptr %499, i64 5
  %510 = load i8, ptr %505, align 1
  %511 = zext i8 %510 to i64
  %512 = mul i64 %511, 2870177450012600261
  %513 = xor i64 %508, %512
  %514 = call i64 @llvm.fshl.i64(i64 %513, i64 %513, i64 11)
  %515 = mul i64 %514, -7046029288634856825
  %516 = load i8, ptr %509, align 1
  %517 = zext i8 %516 to i64
  %518 = mul i64 %517, 2870177450012600261
  %519 = xor i64 %515, %518
  %520 = call i64 @llvm.fshl.i64(i64 %519, i64 %519, i64 11)
  %521 = mul i64 %520, -7046029288634856825
  br label %651

522:                                              ; preds = %244
  %523 = load i64, ptr %247, align 8
  %524 = mul i64 %523, -4417276706812531889
  %525 = call i64 @llvm.fshl.i64(i64 %524, i64 %524, i64 31)
  %526 = mul i64 %525, -7046029288634856825
  %527 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %528 = xor i64 %526, %246
  %529 = call i64 @llvm.fshl.i64(i64 %528, i64 %528, i64 27)
  %530 = mul i64 %529, -7046029288634856825
  %531 = add i64 %530, -8796714831421723037
  br label %532

532:                                              ; preds = %522, %244
  %533 = phi ptr [ %247, %244 ], [ %527, %522 ]
  %534 = phi i64 [ %246, %244 ], [ %531, %522 ]
  %535 = load i64, ptr %533, align 8
  %536 = mul i64 %535, -4417276706812531889
  %537 = call i64 @llvm.fshl.i64(i64 %536, i64 %536, i64 31)
  %538 = mul i64 %537, -7046029288634856825
  %539 = getelementptr inbounds nuw i8, ptr %533, i64 8
  %540 = xor i64 %538, %534
  %541 = call i64 @llvm.fshl.i64(i64 %540, i64 %540, i64 27)
  %542 = mul i64 %541, -7046029288634856825
  %543 = add i64 %542, -8796714831421723037
  br label %544

544:                                              ; preds = %532, %244
  %545 = phi ptr [ %247, %244 ], [ %539, %532 ]
  %546 = phi i64 [ %246, %244 ], [ %543, %532 ]
  %547 = load i64, ptr %545, align 8
  %548 = mul i64 %547, -4417276706812531889
  %549 = call i64 @llvm.fshl.i64(i64 %548, i64 %548, i64 31)
  %550 = mul i64 %549, -7046029288634856825
  %551 = getelementptr inbounds nuw i8, ptr %545, i64 8
  %552 = xor i64 %550, %546
  %553 = call i64 @llvm.fshl.i64(i64 %552, i64 %552, i64 27)
  %554 = mul i64 %553, -7046029288634856825
  %555 = add i64 %554, -8796714831421723037
  %556 = getelementptr inbounds nuw i8, ptr %545, i64 9
  %557 = load i8, ptr %551, align 1
  %558 = zext i8 %557 to i64
  %559 = mul i64 %558, 2870177450012600261
  %560 = xor i64 %555, %559
  %561 = call i64 @llvm.fshl.i64(i64 %560, i64 %560, i64 11)
  %562 = mul i64 %561, -7046029288634856825
  %563 = getelementptr inbounds nuw i8, ptr %545, i64 10
  %564 = load i8, ptr %556, align 1
  %565 = zext i8 %564 to i64
  %566 = mul i64 %565, 2870177450012600261
  %567 = xor i64 %562, %566
  %568 = call i64 @llvm.fshl.i64(i64 %567, i64 %567, i64 11)
  %569 = mul i64 %568, -7046029288634856825
  %570 = load i8, ptr %563, align 1
  %571 = zext i8 %570 to i64
  %572 = mul i64 %571, 2870177450012600261
  %573 = xor i64 %569, %572
  %574 = call i64 @llvm.fshl.i64(i64 %573, i64 %573, i64 11)
  %575 = mul i64 %574, -7046029288634856825
  br label %651

576:                                              ; preds = %244
  %577 = load i64, ptr %247, align 8
  %578 = mul i64 %577, -4417276706812531889
  %579 = call i64 @llvm.fshl.i64(i64 %578, i64 %578, i64 31)
  %580 = mul i64 %579, -7046029288634856825
  %581 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %582 = xor i64 %580, %246
  %583 = call i64 @llvm.fshl.i64(i64 %582, i64 %582, i64 27)
  %584 = mul i64 %583, -7046029288634856825
  %585 = add i64 %584, -8796714831421723037
  br label %586

586:                                              ; preds = %576, %244
  %587 = phi ptr [ %247, %244 ], [ %581, %576 ]
  %588 = phi i64 [ %246, %244 ], [ %585, %576 ]
  %589 = load i64, ptr %587, align 8
  %590 = mul i64 %589, -4417276706812531889
  %591 = call i64 @llvm.fshl.i64(i64 %590, i64 %590, i64 31)
  %592 = mul i64 %591, -7046029288634856825
  %593 = getelementptr inbounds nuw i8, ptr %587, i64 8
  %594 = xor i64 %592, %588
  %595 = call i64 @llvm.fshl.i64(i64 %594, i64 %594, i64 27)
  %596 = mul i64 %595, -7046029288634856825
  %597 = add i64 %596, -8796714831421723037
  br label %598

598:                                              ; preds = %586, %244
  %599 = phi ptr [ %247, %244 ], [ %593, %586 ]
  %600 = phi i64 [ %246, %244 ], [ %597, %586 ]
  %601 = load i64, ptr %599, align 8
  %602 = mul i64 %601, -4417276706812531889
  %603 = call i64 @llvm.fshl.i64(i64 %602, i64 %602, i64 31)
  %604 = mul i64 %603, -7046029288634856825
  %605 = getelementptr inbounds nuw i8, ptr %599, i64 8
  %606 = xor i64 %604, %600
  %607 = call i64 @llvm.fshl.i64(i64 %606, i64 %606, i64 27)
  %608 = mul i64 %607, -7046029288634856825
  %609 = add i64 %608, -8796714831421723037
  br label %610

610:                                              ; preds = %598, %244
  %611 = phi ptr [ %247, %244 ], [ %605, %598 ]
  %612 = phi i64 [ %246, %244 ], [ %609, %598 ]
  %613 = load i32, ptr %611, align 4
  %614 = zext i32 %613 to i64
  %615 = mul i64 %614, -7046029288634856825
  %616 = xor i64 %615, %612
  %617 = getelementptr inbounds nuw i8, ptr %611, i64 4
  %618 = call i64 @llvm.fshl.i64(i64 %616, i64 %616, i64 23)
  %619 = mul i64 %618, -4417276706812531889
  %620 = add i64 %619, 1609587929392839161
  br label %621

621:                                              ; preds = %610, %244
  %622 = phi ptr [ %247, %244 ], [ %617, %610 ]
  %623 = phi i64 [ %246, %244 ], [ %620, %610 ]
  %624 = getelementptr inbounds nuw i8, ptr %622, i64 1
  %625 = load i8, ptr %622, align 1
  %626 = zext i8 %625 to i64
  %627 = mul i64 %626, 2870177450012600261
  %628 = xor i64 %627, %623
  %629 = call i64 @llvm.fshl.i64(i64 %628, i64 %628, i64 11)
  %630 = mul i64 %629, -7046029288634856825
  br label %631

631:                                              ; preds = %621, %244
  %632 = phi ptr [ %247, %244 ], [ %624, %621 ]
  %633 = phi i64 [ %246, %244 ], [ %630, %621 ]
  %634 = getelementptr inbounds nuw i8, ptr %632, i64 1
  %635 = load i8, ptr %632, align 1
  %636 = zext i8 %635 to i64
  %637 = mul i64 %636, 2870177450012600261
  %638 = xor i64 %637, %633
  %639 = call i64 @llvm.fshl.i64(i64 %638, i64 %638, i64 11)
  %640 = mul i64 %639, -7046029288634856825
  br label %641

641:                                              ; preds = %631, %244
  %642 = phi ptr [ %247, %244 ], [ %634, %631 ]
  %643 = phi i64 [ %246, %244 ], [ %640, %631 ]
  %644 = load i8, ptr %642, align 1
  %645 = zext i8 %644 to i64
  %646 = mul i64 %645, 2870177450012600261
  %647 = xor i64 %646, %643
  %648 = call i64 @llvm.fshl.i64(i64 %647, i64 %647, i64 11)
  %649 = mul i64 %648, -7046029288634856825
  br label %651

650:                                              ; preds = %244
  unreachable

651:                                              ; preds = %244, %271, %316, %348, %400, %439, %498, %544, %641
  %652 = phi i64 [ %575, %544 ], [ %521, %498 ], [ %463, %439 ], [ %416, %400 ], [ %365, %348 ], [ %325, %316 ], [ %281, %271 ], [ %246, %244 ], [ %649, %641 ]
  %653 = lshr i64 %652, 33
  %654 = xor i64 %653, %652
  %655 = mul i64 %654, -4417276706812531889
  %656 = lshr i64 %655, 29
  %657 = xor i64 %656, %655
  %658 = mul i64 %657, 1609587929392839161
  %659 = lshr i64 %658, 32
  %660 = xor i64 %659, %658
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %16) #6
  ret i64 %660
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @memset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
