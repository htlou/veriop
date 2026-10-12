; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrap_o64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrap_o64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

%struct.XXH_INLINE_XXH64_state_s = type { i64, i64, i64, i64, i64, [4 x i64], i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
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
  %17 = xor i64 %16, %13
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
  %18 = xor i64 %17, %13
  %19 = call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 11)
  %20 = mul i64 %19, -7046029288634856825
  %21 = load i8, ptr %14, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = xor i64 %23, %20
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
  %18 = xor i64 %17, %13
  %19 = call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 11)
  %20 = mul i64 %19, -7046029288634856825
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %22 = load i8, ptr %14, align 1
  %23 = zext i8 %22 to i64
  %24 = mul i64 %23, 2870177450012600261
  %25 = xor i64 %24, %20
  %26 = call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 11)
  %27 = mul i64 %26, -7046029288634856825
  %28 = load i8, ptr %21, align 1
  %29 = zext i8 %28 to i64
  %30 = mul i64 %29, 2870177450012600261
  %31 = xor i64 %30, %27
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
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %7 = load i8, ptr %4, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = mul i64 %6, -4417276706812531889
  %11 = call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = add i64 %1, 2870177450012600270
  %14 = xor i64 %12, %13
  %15 = call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 27)
  %16 = mul i64 %15, -7046029288634856825
  %17 = add i64 %16, -8796714831421723037
  %18 = xor i64 %9, %17
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %5 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %6 = mul i64 %5, -4417276706812531889
  %7 = call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 31)
  %8 = mul i64 %7, -7046029288634856825
  %9 = add i64 %1, 2870177450012600271
  %10 = xor i64 %8, %9
  %11 = call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 27)
  %12 = mul i64 %11, -7046029288634856825
  %13 = add i64 %12, -8796714831421723037
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %16 = load i8, ptr %14, align 1
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = xor i64 %18, %13
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 11)
  %21 = mul i64 %20, -7046029288634856825
  %22 = load i8, ptr %15, align 1
  %23 = zext i8 %22 to i64
  %24 = mul i64 %23, 2870177450012600261
  %25 = xor i64 %24, %21
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %5 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %6 = mul i64 %5, -4417276706812531889
  %7 = call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 31)
  %8 = mul i64 %7, -7046029288634856825
  %9 = add i64 %1, 2870177450012600272
  %10 = xor i64 %8, %9
  %11 = call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 27)
  %12 = mul i64 %11, -7046029288634856825
  %13 = add i64 %12, -8796714831421723037
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %16 = load i8, ptr %14, align 1
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = xor i64 %18, %13
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 11)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %23 = load i8, ptr %15, align 1
  %24 = zext i8 %23 to i64
  %25 = mul i64 %24, 2870177450012600261
  %26 = xor i64 %25, %21
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 11)
  %28 = mul i64 %27, -7046029288634856825
  %29 = load i8, ptr %22, align 1
  %30 = zext i8 %29 to i64
  %31 = mul i64 %30, 2870177450012600261
  %32 = xor i64 %31, %28
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %7, i64 noundef 4) #7
  %9 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %10 = zext i32 %9 to i64
  %11 = mul i64 %10, -7046029288634856825
  %12 = mul i64 %6, -4417276706812531889
  %13 = call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %1, 2870177450012600273
  %16 = xor i64 %14, %15
  %17 = call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 27)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %18, -8796714831421723037
  %20 = xor i64 %11, %19
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %7, i64 noundef 4) #7
  %9 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = zext i32 %9 to i64
  %15 = mul i64 %14, -7046029288634856825
  %16 = mul i64 %6, -4417276706812531889
  %17 = call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %1, 2870177450012600274
  %20 = xor i64 %18, %19
  %21 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 27)
  %22 = mul i64 %21, -7046029288634856825
  %23 = add i64 %22, -8796714831421723037
  %24 = xor i64 %15, %23
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 23)
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, 1609587929392839161
  %28 = xor i64 %13, %27
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %7, i64 noundef 4) #7
  %9 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %10 = zext i32 %9 to i64
  %11 = mul i64 %10, -7046029288634856825
  %12 = mul i64 %6, -4417276706812531889
  %13 = call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %1, 2870177450012600275
  %16 = xor i64 %14, %15
  %17 = call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 27)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %18, -8796714831421723037
  %20 = xor i64 %11, %19
  %21 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 23)
  %22 = mul i64 %21, -4417276706812531889
  %23 = add i64 %22, 1609587929392839161
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %26 = load i8, ptr %24, align 1
  %27 = zext i8 %26 to i64
  %28 = mul i64 %27, 2870177450012600261
  %29 = xor i64 %28, %23
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 11)
  %31 = mul i64 %30, -7046029288634856825
  %32 = load i8, ptr %25, align 1
  %33 = zext i8 %32 to i64
  %34 = mul i64 %33, 2870177450012600261
  %35 = xor i64 %34, %31
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %7, i64 noundef 4) #7
  %9 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = zext i32 %9 to i64
  %23 = mul i64 %22, -7046029288634856825
  %24 = mul i64 %6, -4417276706812531889
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %1, 2870177450012600276
  %28 = xor i64 %26, %27
  %29 = call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 27)
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = xor i64 %23, %31
  %33 = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 23)
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, 1609587929392839161
  %36 = xor i64 %21, %35
  %37 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 11)
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %17, %38
  %40 = call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 11)
  %41 = mul i64 %40, -7046029288634856825
  %42 = xor i64 %13, %41
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
  %4 = add i64 %1, 2870177450012600277
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %15 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 8) #7
  %16 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %17 = mul i64 %16, -4417276706812531889
  %18 = call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = xor i64 %19, %14
  %21 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 27)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len17(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %5 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef 8) #7
  %8 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = mul i64 %11, 2870177450012600261
  %13 = mul i64 %8, -4417276706812531889
  %14 = call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 31)
  %15 = mul i64 %14, -7046029288634856825
  %16 = mul i64 %5, -4417276706812531889
  %17 = call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = add i64 %1, 2870177450012600278
  %20 = xor i64 %18, %19
  %21 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 27)
  %22 = mul i64 %21, -7046029288634856825
  %23 = add i64 %22, -8796714831421723037
  %24 = xor i64 %15, %23
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  %28 = xor i64 %12, %27
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
define dso_local i64 @target_xxh64_len18(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %5 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef 8) #7
  %8 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = mul i64 %11, 2870177450012600261
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = mul i64 %8, -4417276706812531889
  %18 = call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = mul i64 %5, -4417276706812531889
  %21 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = add i64 %1, 2870177450012600279
  %24 = xor i64 %22, %23
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  %28 = xor i64 %19, %27
  %29 = call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 27)
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = xor i64 %16, %31
  %33 = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 11)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %12, %34
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
define dso_local i64 @target_xxh64_len19(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %5 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef 8) #7
  %8 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = mul i64 %11, 2870177450012600261
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i64
  %20 = mul i64 %19, 2870177450012600261
  %21 = mul i64 %8, -4417276706812531889
  %22 = call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = mul i64 %5, -4417276706812531889
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %1, 2870177450012600280
  %28 = xor i64 %26, %27
  %29 = call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 27)
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = xor i64 %23, %31
  %33 = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 27)
  %34 = mul i64 %33, -7046029288634856825
  %35 = add i64 %34, -8796714831421723037
  %36 = xor i64 %20, %35
  %37 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 11)
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %16, %38
  %40 = call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 11)
  %41 = mul i64 %40, -7046029288634856825
  %42 = xor i64 %12, %41
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
define dso_local i64 @target_xxh64_len20(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %7, i64 noundef 8) #7
  %9 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %11 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 4) #7
  %12 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, -7046029288634856825
  %15 = mul i64 %9, -4417276706812531889
  %16 = call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 31)
  %17 = mul i64 %16, -7046029288634856825
  %18 = mul i64 %6, -4417276706812531889
  %19 = call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %1, 2870177450012600281
  %22 = xor i64 %20, %21
  %23 = call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 27)
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = xor i64 %17, %25
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = xor i64 %14, %29
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 23)
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, 1609587929392839161
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
define dso_local i64 @target_xxh64_len21(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %7, i64 noundef 8) #7
  %9 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %11 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 4) #7
  %12 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = zext i32 %12 to i64
  %18 = mul i64 %17, -7046029288634856825
  %19 = mul i64 %9, -4417276706812531889
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %6, -4417276706812531889
  %23 = call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %1, 2870177450012600282
  %26 = xor i64 %24, %25
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = xor i64 %21, %29
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %18, %33
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 23)
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, 1609587929392839161
  %38 = xor i64 %16, %37
  %39 = call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len22(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %7, i64 noundef 8) #7
  %9 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %11 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 4) #7
  %12 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 21
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i64
  %20 = mul i64 %19, 2870177450012600261
  %21 = zext i32 %12 to i64
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %9, -4417276706812531889
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %6, -4417276706812531889
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %1, 2870177450012600283
  %30 = xor i64 %28, %29
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %25, %33
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %22, %37
  %39 = call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 23)
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, 1609587929392839161
  %42 = xor i64 %20, %41
  %43 = call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 11)
  %44 = mul i64 %43, -7046029288634856825
  %45 = xor i64 %16, %44
  %46 = call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len23(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %7, i64 noundef 8) #7
  %9 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %11 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 4) #7
  %12 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 21
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i64
  %20 = mul i64 %19, 2870177450012600261
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i64
  %24 = mul i64 %23, 2870177450012600261
  %25 = zext i32 %12 to i64
  %26 = mul i64 %25, -7046029288634856825
  %27 = mul i64 %9, -4417276706812531889
  %28 = call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = mul i64 %6, -4417276706812531889
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %1, 2870177450012600284
  %34 = xor i64 %32, %33
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %29, %37
  %39 = call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 27)
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = xor i64 %26, %41
  %43 = call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 23)
  %44 = mul i64 %43, -4417276706812531889
  %45 = add i64 %44, 1609587929392839161
  %46 = xor i64 %24, %45
  %47 = call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 11)
  %48 = mul i64 %47, -7046029288634856825
  %49 = xor i64 %20, %48
  %50 = call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 11)
  %51 = mul i64 %50, -7046029288634856825
  %52 = xor i64 %16, %51
  %53 = call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len24(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = add i64 %1, 2870177450012600285
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %15 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 8) #7
  %16 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %17 = mul i64 %16, -4417276706812531889
  %18 = call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = xor i64 %19, %14
  %22 = call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 27)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %23, -8796714831421723037
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %25 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %20, i64 noundef 8) #7
  %26 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %27 = mul i64 %26, -4417276706812531889
  %28 = call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = xor i64 %29, %24
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
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
define dso_local i64 @target_xxh64_len25(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %5 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef 8) #7
  %8 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %10 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %9, i64 noundef 8) #7
  %11 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = mul i64 %11, -4417276706812531889
  %17 = call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = mul i64 %8, -4417276706812531889
  %20 = call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %5, -4417276706812531889
  %23 = call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %1, 2870177450012600286
  %26 = xor i64 %24, %25
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  %30 = xor i64 %21, %29
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %18, %33
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %15, %37
  %39 = call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len26(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %5 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef 8) #7
  %8 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %10 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %9, i64 noundef 8) #7
  %11 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = mul i64 %11, -4417276706812531889
  %21 = call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %8, -4417276706812531889
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %5, -4417276706812531889
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %1, 2870177450012600287
  %30 = xor i64 %28, %29
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = xor i64 %25, %33
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %22, %37
  %39 = call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 27)
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = xor i64 %19, %41
  %43 = call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 11)
  %44 = mul i64 %43, -7046029288634856825
  %45 = xor i64 %15, %44
  %46 = call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len27(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8) #7
  %5 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %7 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef 8) #7
  %8 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %10 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %9, i64 noundef 8) #7
  %11 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = mul i64 %14, 2870177450012600261
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = mul i64 %11, -4417276706812531889
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = mul i64 %8, -4417276706812531889
  %28 = call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = mul i64 %5, -4417276706812531889
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %1, 2870177450012600288
  %34 = xor i64 %32, %33
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %29, %37
  %39 = call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 27)
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = xor i64 %26, %41
  %43 = call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 27)
  %44 = mul i64 %43, -7046029288634856825
  %45 = add i64 %44, -8796714831421723037
  %46 = xor i64 %23, %45
  %47 = call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 11)
  %48 = mul i64 %47, -7046029288634856825
  %49 = xor i64 %19, %48
  %50 = call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 11)
  %51 = mul i64 %50, -7046029288634856825
  %52 = xor i64 %15, %51
  %53 = call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len28(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %7, i64 noundef 8) #7
  %9 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %11 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %10, i64 noundef 8) #7
  %12 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %14 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %13, i64 noundef 4) #7
  %15 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, -7046029288634856825
  %18 = mul i64 %12, -4417276706812531889
  %19 = call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = mul i64 %9, -4417276706812531889
  %22 = call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = mul i64 %6, -4417276706812531889
  %25 = call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %1, 2870177450012600289
  %28 = xor i64 %26, %27
  %29 = call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 27)
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = xor i64 %23, %31
  %33 = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 27)
  %34 = mul i64 %33, -7046029288634856825
  %35 = add i64 %34, -8796714831421723037
  %36 = xor i64 %20, %35
  %37 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 27)
  %38 = mul i64 %37, -7046029288634856825
  %39 = add i64 %38, -8796714831421723037
  %40 = xor i64 %17, %39
  %41 = call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 23)
  %42 = mul i64 %41, -4417276706812531889
  %43 = add i64 %42, 1609587929392839161
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len29(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %7, i64 noundef 8) #7
  %9 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %11 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %10, i64 noundef 8) #7
  %12 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %14 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %13, i64 noundef 4) #7
  %15 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = zext i32 %15 to i64
  %21 = mul i64 %20, -7046029288634856825
  %22 = mul i64 %12, -4417276706812531889
  %23 = call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %9, -4417276706812531889
  %26 = call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = mul i64 %6, -4417276706812531889
  %29 = call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %1, 2870177450012600290
  %32 = xor i64 %30, %31
  %33 = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 27)
  %34 = mul i64 %33, -7046029288634856825
  %35 = add i64 %34, -8796714831421723037
  %36 = xor i64 %27, %35
  %37 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 27)
  %38 = mul i64 %37, -7046029288634856825
  %39 = add i64 %38, -8796714831421723037
  %40 = xor i64 %24, %39
  %41 = call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 27)
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  %44 = xor i64 %21, %43
  %45 = call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 23)
  %46 = mul i64 %45, -4417276706812531889
  %47 = add i64 %46, 1609587929392839161
  %48 = xor i64 %19, %47
  %49 = call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len30(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %7, i64 noundef 8) #7
  %9 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %11 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %10, i64 noundef 8) #7
  %12 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %14 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %13, i64 noundef 4) #7
  %15 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = zext i32 %15 to i64
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %12, -4417276706812531889
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = mul i64 %9, -4417276706812531889
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = mul i64 %6, -4417276706812531889
  %33 = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = add i64 %1, 2870177450012600291
  %36 = xor i64 %34, %35
  %37 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 27)
  %38 = mul i64 %37, -7046029288634856825
  %39 = add i64 %38, -8796714831421723037
  %40 = xor i64 %31, %39
  %41 = call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 27)
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  %44 = xor i64 %28, %43
  %45 = call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 27)
  %46 = mul i64 %45, -7046029288634856825
  %47 = add i64 %46, -8796714831421723037
  %48 = xor i64 %25, %47
  %49 = call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 23)
  %50 = mul i64 %49, -4417276706812531889
  %51 = add i64 %50, 1609587929392839161
  %52 = xor i64 %23, %51
  %53 = call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 11)
  %54 = mul i64 %53, -7046029288634856825
  %55 = xor i64 %19, %54
  %56 = call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 11)
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

; Function Attrs: nounwind
define dso_local i64 @target_xxh64_len31(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 8) #7
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %8 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %7, i64 noundef 8) #7
  %9 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %11 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %10, i64 noundef 8) #7
  %12 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %14 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %13, i64 noundef 4) #7
  %15 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = mul i64 %18, 2870177450012600261
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i64
  %27 = mul i64 %26, 2870177450012600261
  %28 = zext i32 %15 to i64
  %29 = mul i64 %28, -7046029288634856825
  %30 = mul i64 %12, -4417276706812531889
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = mul i64 %9, -4417276706812531889
  %34 = call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = mul i64 %6, -4417276706812531889
  %37 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = add i64 %1, 2870177450012600292
  %40 = xor i64 %38, %39
  %41 = call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 27)
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  %44 = xor i64 %35, %43
  %45 = call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 27)
  %46 = mul i64 %45, -7046029288634856825
  %47 = add i64 %46, -8796714831421723037
  %48 = xor i64 %32, %47
  %49 = call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 27)
  %50 = mul i64 %49, -7046029288634856825
  %51 = add i64 %50, -8796714831421723037
  %52 = xor i64 %29, %51
  %53 = call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 23)
  %54 = mul i64 %53, -4417276706812531889
  %55 = add i64 %54, 1609587929392839161
  %56 = xor i64 %27, %55
  %57 = call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 11)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %23, %58
  %60 = call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 11)
  %61 = mul i64 %60, -7046029288634856825
  %62 = xor i64 %19, %61
  %63 = call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 11)
  %64 = mul i64 %63, -7046029288634856825
  %65 = lshr i64 %64, 33
  %66 = xor i64 %65, %64
  %67 = mul i64 %66, -4417276706812531889
  %68 = lshr i64 %67, 29
  %69 = xor i64 %68, %67
  %70 = mul i64 %69, 1609587929392839161
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  ret i64 %72
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
  %7 = add i64 %1, 6983438078262162902
  %8 = add i64 %1, -4417276706812531889
  %9 = add i64 %1, 7046029288634856825
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %10 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 8) #7
  %11 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %13 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %12, i64 noundef 8) #7
  %14 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %16 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %15, i64 noundef 8) #7
  %17 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %19 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %18, i64 noundef 8) #7
  %20 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %9, %21
  %23 = call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %17, -4417276706812531889
  %26 = add i64 %25, %1
  %27 = call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = mul i64 %14, -4417276706812531889
  %30 = add i64 %8, %29
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = mul i64 %11, -4417276706812531889
  %34 = add i64 %7, %33
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
  %72 = xor i64 %71, %68
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
  %8 = add i64 %1, 6983438078262162902
  %9 = add i64 %1, -4417276706812531889
  %10 = add i64 %1, 7046029288634856825
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %11 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef %0, i64 noundef 8) #7
  %12 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %14 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 8) #7
  %15 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %17 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %16, i64 noundef 8) #7
  %18 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %20 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %19, i64 noundef 8) #7
  %21 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %22 = mul i64 %21, -4417276706812531889
  %23 = add i64 %10, %22
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = mul i64 %18, -4417276706812531889
  %27 = add i64 %26, %1
  %28 = call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = mul i64 %15, -4417276706812531889
  %31 = add i64 %9, %30
  %32 = call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = mul i64 %12, -4417276706812531889
  %35 = add i64 %8, %34
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
  %83 = xor i64 %82, %78
  %84 = call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 11)
  %85 = mul i64 %84, -7046029288634856825
  %86 = getelementptr i8, ptr %0, i64 38
  %87 = load i8, ptr %79, align 1
  %88 = zext i8 %87 to i64
  %89 = mul i64 %88, 2870177450012600261
  %90 = xor i64 %89, %85
  %91 = call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 11)
  %92 = mul i64 %91, -7046029288634856825
  %93 = load i8, ptr %86, align 1
  %94 = zext i8 %93 to i64
  %95 = mul i64 %94, 2870177450012600261
  %96 = xor i64 %95, %92
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
  %20 = getelementptr i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %21 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %20, i64 noundef 8) #7
  %22 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %23 = getelementptr i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %24 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %23, i64 noundef 4) #7
  %25 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %26 = getelementptr i8, ptr %0, i64 46
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i64
  %29 = mul i64 %28, 2870177450012600261
  %30 = getelementptr i8, ptr %0, i64 45
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i64
  %33 = mul i64 %32, 2870177450012600261
  %34 = getelementptr i8, ptr %0, i64 44
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i64
  %37 = mul i64 %36, 2870177450012600261
  %38 = zext i32 %25 to i64
  %39 = mul i64 %38, -7046029288634856825
  %40 = mul i64 %22, -4417276706812531889
  %41 = call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 31)
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %1, -4417276706812531889
  %44 = mul i64 %13, -4417276706812531889
  %45 = add i64 %43, %44
  %46 = call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31)
  %47 = mul i64 %46, -7046029288634856825
  %48 = call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 7)
  %49 = add i64 %1, 6983438078262162902
  %50 = mul i64 %10, -4417276706812531889
  %51 = add i64 %49, %50
  %52 = call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 31)
  %53 = mul i64 %52, -7046029288634856825
  %54 = call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 1)
  %55 = add i64 %48, %54
  %56 = mul i64 %16, -4417276706812531889
  %57 = add i64 %56, %1
  %58 = call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  %60 = call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 12)
  %61 = add i64 %55, %60
  %62 = add i64 %1, 7046029288634856825
  %63 = mul i64 %19, -4417276706812531889
  %64 = add i64 %62, %63
  %65 = call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 18)
  %68 = add i64 %61, %67
  %69 = mul i64 %52, -2381459717836149591
  %70 = call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 31)
  %71 = mul i64 %70, -7046029288634856825
  %72 = xor i64 %68, %71
  %73 = mul i64 %72, -7046029288634856825
  %74 = add i64 %73, -8796714831421723037
  %75 = mul i64 %46, -2381459717836149591
  %76 = call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 31)
  %77 = mul i64 %76, -7046029288634856825
  %78 = xor i64 %74, %77
  %79 = mul i64 %78, -7046029288634856825
  %80 = add i64 %79, -8796714831421723037
  %81 = mul i64 %58, -2381459717836149591
  %82 = call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 31)
  %83 = mul i64 %82, -7046029288634856825
  %84 = xor i64 %80, %83
  %85 = mul i64 %84, -7046029288634856825
  %86 = add i64 %85, -8796714831421723037
  %87 = mul i64 %65, -2381459717836149591
  %88 = call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 31)
  %89 = mul i64 %88, -7046029288634856825
  %90 = xor i64 %86, %89
  %91 = mul i64 %90, -7046029288634856825
  %92 = add i64 %91, -8796714831421722990
  %93 = xor i64 %42, %92
  %94 = call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 27)
  %95 = mul i64 %94, -7046029288634856825
  %96 = add i64 %95, -8796714831421723037
  %97 = xor i64 %39, %96
  %98 = call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 23)
  %99 = mul i64 %98, -4417276706812531889
  %100 = add i64 %99, 1609587929392839161
  %101 = xor i64 %37, %100
  %102 = call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 11)
  %103 = mul i64 %102, -7046029288634856825
  %104 = xor i64 %33, %103
  %105 = call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 11)
  %106 = mul i64 %105, -7046029288634856825
  %107 = xor i64 %29, %106
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
  %20 = getelementptr i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %21 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %20, i64 noundef 8) #7
  %22 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %23 = getelementptr i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %24 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %23, i64 noundef 8) #7
  %25 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %26 = getelementptr i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %27 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %26, i64 noundef 8) #7
  %28 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %29 = getelementptr i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %30 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %29, i64 noundef 4) #7
  %31 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %32 = getelementptr i8, ptr %0, i64 62
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i64
  %35 = mul i64 %34, 2870177450012600261
  %36 = getelementptr i8, ptr %0, i64 61
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i64
  %39 = mul i64 %38, 2870177450012600261
  %40 = getelementptr i8, ptr %0, i64 60
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i64
  %43 = mul i64 %42, 2870177450012600261
  %44 = zext i32 %31 to i64
  %45 = mul i64 %44, -7046029288634856825
  %46 = mul i64 %28, -4417276706812531889
  %47 = call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 31)
  %48 = mul i64 %47, -7046029288634856825
  %49 = mul i64 %25, -4417276706812531889
  %50 = call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  %52 = mul i64 %22, -4417276706812531889
  %53 = call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %1, -4417276706812531889
  %56 = mul i64 %13, -4417276706812531889
  %57 = add i64 %55, %56
  %58 = call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  %60 = call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 7)
  %61 = add i64 %1, 6983438078262162902
  %62 = mul i64 %10, -4417276706812531889
  %63 = add i64 %61, %62
  %64 = call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 31)
  %65 = mul i64 %64, -7046029288634856825
  %66 = call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 1)
  %67 = add i64 %60, %66
  %68 = mul i64 %16, -4417276706812531889
  %69 = add i64 %68, %1
  %70 = call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 31)
  %71 = mul i64 %70, -7046029288634856825
  %72 = call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 12)
  %73 = add i64 %67, %72
  %74 = add i64 %1, 7046029288634856825
  %75 = mul i64 %19, -4417276706812531889
  %76 = add i64 %74, %75
  %77 = call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 31)
  %78 = mul i64 %77, -7046029288634856825
  %79 = call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 18)
  %80 = add i64 %73, %79
  %81 = mul i64 %64, -2381459717836149591
  %82 = call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 31)
  %83 = mul i64 %82, -7046029288634856825
  %84 = xor i64 %80, %83
  %85 = mul i64 %84, -7046029288634856825
  %86 = add i64 %85, -8796714831421723037
  %87 = mul i64 %58, -2381459717836149591
  %88 = call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 31)
  %89 = mul i64 %88, -7046029288634856825
  %90 = xor i64 %86, %89
  %91 = mul i64 %90, -7046029288634856825
  %92 = add i64 %91, -8796714831421723037
  %93 = mul i64 %70, -2381459717836149591
  %94 = call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 31)
  %95 = mul i64 %94, -7046029288634856825
  %96 = xor i64 %92, %95
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  %99 = mul i64 %77, -2381459717836149591
  %100 = call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 31)
  %101 = mul i64 %100, -7046029288634856825
  %102 = xor i64 %98, %101
  %103 = mul i64 %102, -7046029288634856825
  %104 = add i64 %103, -8796714831421722974
  %105 = xor i64 %54, %104
  %106 = call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 27)
  %107 = mul i64 %106, -7046029288634856825
  %108 = add i64 %107, -8796714831421723037
  %109 = xor i64 %51, %108
  %110 = call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 27)
  %111 = mul i64 %110, -7046029288634856825
  %112 = add i64 %111, -8796714831421723037
  %113 = xor i64 %48, %112
  %114 = call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 27)
  %115 = mul i64 %114, -7046029288634856825
  %116 = add i64 %115, -8796714831421723037
  %117 = xor i64 %45, %116
  %118 = call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 23)
  %119 = mul i64 %118, -4417276706812531889
  %120 = add i64 %119, 1609587929392839161
  %121 = xor i64 %43, %120
  %122 = call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 11)
  %123 = mul i64 %122, -7046029288634856825
  %124 = xor i64 %39, %123
  %125 = call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 11)
  %126 = mul i64 %125, -7046029288634856825
  %127 = xor i64 %35, %126
  %128 = call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 11)
  %129 = mul i64 %128, -7046029288634856825
  %130 = lshr i64 %129, 33
  %131 = xor i64 %130, %129
  %132 = mul i64 %131, -4417276706812531889
  %133 = lshr i64 %132, 29
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, 1609587929392839161
  %136 = lshr i64 %135, 32
  %137 = xor i64 %136, %135
  ret i64 %137
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
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %21 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %20, i64 noundef 8) #7
  %22 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %24 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %23, i64 noundef 8) #7
  %25 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %27 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %26, i64 noundef 8) #7
  %28 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %30 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %29, i64 noundef 8) #7
  %31 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %33 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %32, i64 noundef 8) #7
  %34 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %36 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %35, i64 noundef 8) #7
  %37 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %39 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %38, i64 noundef 8) #7
  %40 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %42 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %41, i64 noundef 4) #7
  %43 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 94
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i64
  %47 = mul i64 %46, 2870177450012600261
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 93
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i64
  %51 = mul i64 %50, 2870177450012600261
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i64
  %55 = mul i64 %54, 2870177450012600261
  %56 = zext i32 %43 to i64
  %57 = mul i64 %56, -7046029288634856825
  %58 = mul i64 %40, -4417276706812531889
  %59 = call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = mul i64 %37, -4417276706812531889
  %62 = call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 31)
  %63 = mul i64 %62, -7046029288634856825
  %64 = mul i64 %34, -4417276706812531889
  %65 = call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = mul i64 %25, -4417276706812531889
  %68 = mul i64 %13, -4417276706812531889
  %69 = add i64 %1, -4417276706812531889
  %70 = add i64 %68, %69
  %71 = call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = add i64 %67, %72
  %74 = call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 31)
  %75 = mul i64 %74, -7046029288634856825
  %76 = call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 7)
  %77 = mul i64 %22, -4417276706812531889
  %78 = mul i64 %10, -4417276706812531889
  %79 = add i64 %1, 6983438078262162902
  %80 = add i64 %78, %79
  %81 = call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 31)
  %82 = mul i64 %81, -7046029288634856825
  %83 = add i64 %77, %82
  %84 = call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 31)
  %85 = mul i64 %84, -7046029288634856825
  %86 = call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 1)
  %87 = add i64 %76, %86
  %88 = mul i64 %28, -4417276706812531889
  %89 = mul i64 %16, -4417276706812531889
  %90 = add i64 %89, %1
  %91 = call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 31)
  %92 = mul i64 %91, -7046029288634856825
  %93 = add i64 %88, %92
  %94 = call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 31)
  %95 = mul i64 %94, -7046029288634856825
  %96 = call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 12)
  %97 = add i64 %87, %96
  %98 = mul i64 %31, -4417276706812531889
  %99 = mul i64 %19, -4417276706812531889
  %100 = add i64 %1, 7046029288634856825
  %101 = add i64 %99, %100
  %102 = call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 31)
  %103 = mul i64 %102, -7046029288634856825
  %104 = add i64 %98, %103
  %105 = call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 31)
  %106 = mul i64 %105, -7046029288634856825
  %107 = call i64 @llvm.fshl.i64(i64 %106, i64 %106, i64 18)
  %108 = add i64 %97, %107
  %109 = mul i64 %84, -2381459717836149591
  %110 = call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 31)
  %111 = mul i64 %110, -7046029288634856825
  %112 = xor i64 %108, %111
  %113 = mul i64 %112, -7046029288634856825
  %114 = add i64 %113, -8796714831421723037
  %115 = mul i64 %74, -2381459717836149591
  %116 = call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 31)
  %117 = mul i64 %116, -7046029288634856825
  %118 = xor i64 %114, %117
  %119 = mul i64 %118, -7046029288634856825
  %120 = add i64 %119, -8796714831421723037
  %121 = mul i64 %94, -2381459717836149591
  %122 = call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 31)
  %123 = mul i64 %122, -7046029288634856825
  %124 = xor i64 %120, %123
  %125 = mul i64 %124, -7046029288634856825
  %126 = add i64 %125, -8796714831421723037
  %127 = mul i64 %105, -2381459717836149591
  %128 = call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 31)
  %129 = mul i64 %128, -7046029288634856825
  %130 = xor i64 %126, %129
  %131 = mul i64 %130, -7046029288634856825
  %132 = add i64 %131, -8796714831421722942
  %133 = xor i64 %66, %132
  %134 = call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 27)
  %135 = mul i64 %134, -7046029288634856825
  %136 = add i64 %135, -8796714831421723037
  %137 = xor i64 %63, %136
  %138 = call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 27)
  %139 = mul i64 %138, -7046029288634856825
  %140 = add i64 %139, -8796714831421723037
  %141 = xor i64 %60, %140
  %142 = call i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 27)
  %143 = mul i64 %142, -7046029288634856825
  %144 = add i64 %143, -8796714831421723037
  %145 = xor i64 %57, %144
  %146 = call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 23)
  %147 = mul i64 %146, -4417276706812531889
  %148 = add i64 %147, 1609587929392839161
  %149 = xor i64 %55, %148
  %150 = call i64 @llvm.fshl.i64(i64 %149, i64 %149, i64 11)
  %151 = mul i64 %150, -7046029288634856825
  %152 = xor i64 %51, %151
  %153 = call i64 @llvm.fshl.i64(i64 %152, i64 %152, i64 11)
  %154 = mul i64 %153, -7046029288634856825
  %155 = xor i64 %47, %154
  %156 = call i64 @llvm.fshl.i64(i64 %155, i64 %155, i64 11)
  %157 = mul i64 %156, -7046029288634856825
  %158 = lshr i64 %157, 33
  %159 = xor i64 %158, %157
  %160 = mul i64 %159, -4417276706812531889
  %161 = lshr i64 %160, 29
  %162 = xor i64 %161, %160
  %163 = mul i64 %162, 1609587929392839161
  %164 = lshr i64 %163, 32
  %165 = xor i64 %164, %163
  ret i64 %165
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
  %220 = icmp samesign ugt i64 %219, 7
  br i1 %220, label %221, label %236

221:                                              ; preds = %215, %221
  %222 = phi i64 [ %233, %221 ], [ %217, %215 ]
  %223 = phi ptr [ %229, %221 ], [ %218, %215 ]
  %224 = phi i64 [ %234, %221 ], [ %219, %215 ]
  %225 = load i64, ptr %223, align 8
  %226 = mul i64 %225, -4417276706812531889
  %227 = call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 31)
  %228 = mul i64 %227, -7046029288634856825
  %229 = getelementptr inbounds nuw i8, ptr %223, i64 8
  %230 = xor i64 %228, %222
  %231 = call i64 @llvm.fshl.i64(i64 %230, i64 %230, i64 27)
  %232 = mul i64 %231, -7046029288634856825
  %233 = add i64 %232, -8796714831421723037
  %234 = add nsw i64 %224, -8
  %235 = icmp ugt i64 %234, 7
  br i1 %235, label %221, label %236

236:                                              ; preds = %221, %215
  %237 = phi i64 [ %219, %215 ], [ %234, %221 ]
  %238 = phi ptr [ %218, %215 ], [ %229, %221 ]
  %239 = phi i64 [ %217, %215 ], [ %233, %221 ]
  %240 = icmp samesign ugt i64 %237, 3
  br i1 %240, label %241, label %251

241:                                              ; preds = %236
  %242 = load i32, ptr %238, align 4
  %243 = zext i32 %242 to i64
  %244 = mul i64 %243, -7046029288634856825
  %245 = xor i64 %244, %239
  %246 = getelementptr inbounds nuw i8, ptr %238, i64 4
  %247 = call i64 @llvm.fshl.i64(i64 %245, i64 %245, i64 23)
  %248 = mul i64 %247, -4417276706812531889
  %249 = add i64 %248, 1609587929392839161
  %250 = add nsw i64 %237, -4
  br label %251

251:                                              ; preds = %241, %236
  %252 = phi i64 [ %250, %241 ], [ %237, %236 ]
  %253 = phi ptr [ %246, %241 ], [ %238, %236 ]
  %254 = phi i64 [ %249, %241 ], [ %239, %236 ]
  %255 = icmp eq i64 %252, 0
  br i1 %255, label %269, label %256

256:                                              ; preds = %251, %256
  %257 = phi i64 [ %266, %256 ], [ %254, %251 ]
  %258 = phi ptr [ %260, %256 ], [ %253, %251 ]
  %259 = phi i64 [ %267, %256 ], [ %252, %251 ]
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 1
  %261 = load i8, ptr %258, align 1
  %262 = zext i8 %261 to i64
  %263 = mul i64 %262, 2870177450012600261
  %264 = xor i64 %263, %257
  %265 = call i64 @llvm.fshl.i64(i64 %264, i64 %264, i64 11)
  %266 = mul i64 %265, -7046029288634856825
  %267 = add nsw i64 %259, -1
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %256

269:                                              ; preds = %256, %251
  %270 = phi i64 [ %254, %251 ], [ %266, %256 ]
  %271 = lshr i64 %270, 33
  %272 = xor i64 %271, %270
  %273 = mul i64 %272, -4417276706812531889
  %274 = lshr i64 %273, 29
  %275 = xor i64 %274, %273
  %276 = mul i64 %275, 1609587929392839161
  %277 = lshr i64 %276, 32
  %278 = xor i64 %277, %276
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #6
  ret i64 %278
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
  %220 = icmp samesign ugt i64 %219, 7
  br i1 %220, label %221, label %236

221:                                              ; preds = %215, %221
  %222 = phi i64 [ %233, %221 ], [ %217, %215 ]
  %223 = phi ptr [ %229, %221 ], [ %218, %215 ]
  %224 = phi i64 [ %234, %221 ], [ %219, %215 ]
  %225 = load i64, ptr %223, align 8
  %226 = mul i64 %225, -4417276706812531889
  %227 = call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 31)
  %228 = mul i64 %227, -7046029288634856825
  %229 = getelementptr inbounds nuw i8, ptr %223, i64 8
  %230 = xor i64 %228, %222
  %231 = call i64 @llvm.fshl.i64(i64 %230, i64 %230, i64 27)
  %232 = mul i64 %231, -7046029288634856825
  %233 = add i64 %232, -8796714831421723037
  %234 = add nsw i64 %224, -8
  %235 = icmp ugt i64 %234, 7
  br i1 %235, label %221, label %236

236:                                              ; preds = %221, %215
  %237 = phi i64 [ %219, %215 ], [ %234, %221 ]
  %238 = phi ptr [ %218, %215 ], [ %229, %221 ]
  %239 = phi i64 [ %217, %215 ], [ %233, %221 ]
  %240 = icmp samesign ugt i64 %237, 3
  br i1 %240, label %241, label %251

241:                                              ; preds = %236
  %242 = load i32, ptr %238, align 4
  %243 = zext i32 %242 to i64
  %244 = mul i64 %243, -7046029288634856825
  %245 = xor i64 %244, %239
  %246 = getelementptr inbounds nuw i8, ptr %238, i64 4
  %247 = call i64 @llvm.fshl.i64(i64 %245, i64 %245, i64 23)
  %248 = mul i64 %247, -4417276706812531889
  %249 = add i64 %248, 1609587929392839161
  %250 = add nsw i64 %237, -4
  br label %251

251:                                              ; preds = %241, %236
  %252 = phi i64 [ %250, %241 ], [ %237, %236 ]
  %253 = phi ptr [ %246, %241 ], [ %238, %236 ]
  %254 = phi i64 [ %249, %241 ], [ %239, %236 ]
  %255 = icmp eq i64 %252, 0
  br i1 %255, label %269, label %256

256:                                              ; preds = %251, %256
  %257 = phi i64 [ %266, %256 ], [ %254, %251 ]
  %258 = phi ptr [ %260, %256 ], [ %253, %251 ]
  %259 = phi i64 [ %267, %256 ], [ %252, %251 ]
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 1
  %261 = load i8, ptr %258, align 1
  %262 = zext i8 %261 to i64
  %263 = mul i64 %262, 2870177450012600261
  %264 = xor i64 %263, %257
  %265 = call i64 @llvm.fshl.i64(i64 %264, i64 %264, i64 11)
  %266 = mul i64 %265, -7046029288634856825
  %267 = add nsw i64 %259, -1
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %256

269:                                              ; preds = %256, %251
  %270 = phi i64 [ %254, %251 ], [ %266, %256 ]
  %271 = lshr i64 %270, 33
  %272 = xor i64 %271, %270
  %273 = mul i64 %272, -4417276706812531889
  %274 = lshr i64 %273, 29
  %275 = xor i64 %274, %273
  %276 = mul i64 %275, 1609587929392839161
  %277 = lshr i64 %276, 32
  %278 = xor i64 %277, %276
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #6
  ret i64 %278
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
  %220 = icmp samesign ugt i64 %219, 7
  br i1 %220, label %221, label %236

221:                                              ; preds = %215, %221
  %222 = phi i64 [ %233, %221 ], [ %217, %215 ]
  %223 = phi ptr [ %229, %221 ], [ %218, %215 ]
  %224 = phi i64 [ %234, %221 ], [ %219, %215 ]
  %225 = load i64, ptr %223, align 8
  %226 = mul i64 %225, -4417276706812531889
  %227 = call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 31)
  %228 = mul i64 %227, -7046029288634856825
  %229 = getelementptr inbounds nuw i8, ptr %223, i64 8
  %230 = xor i64 %228, %222
  %231 = call i64 @llvm.fshl.i64(i64 %230, i64 %230, i64 27)
  %232 = mul i64 %231, -7046029288634856825
  %233 = add i64 %232, -8796714831421723037
  %234 = add nsw i64 %224, -8
  %235 = icmp ugt i64 %234, 7
  br i1 %235, label %221, label %236

236:                                              ; preds = %221, %215
  %237 = phi i64 [ %219, %215 ], [ %234, %221 ]
  %238 = phi ptr [ %218, %215 ], [ %229, %221 ]
  %239 = phi i64 [ %217, %215 ], [ %233, %221 ]
  %240 = icmp samesign ugt i64 %237, 3
  br i1 %240, label %241, label %251

241:                                              ; preds = %236
  %242 = load i32, ptr %238, align 4
  %243 = zext i32 %242 to i64
  %244 = mul i64 %243, -7046029288634856825
  %245 = xor i64 %244, %239
  %246 = getelementptr inbounds nuw i8, ptr %238, i64 4
  %247 = call i64 @llvm.fshl.i64(i64 %245, i64 %245, i64 23)
  %248 = mul i64 %247, -4417276706812531889
  %249 = add i64 %248, 1609587929392839161
  %250 = add nsw i64 %237, -4
  br label %251

251:                                              ; preds = %241, %236
  %252 = phi i64 [ %250, %241 ], [ %237, %236 ]
  %253 = phi ptr [ %246, %241 ], [ %238, %236 ]
  %254 = phi i64 [ %249, %241 ], [ %239, %236 ]
  %255 = icmp eq i64 %252, 0
  br i1 %255, label %269, label %256

256:                                              ; preds = %251, %256
  %257 = phi i64 [ %266, %256 ], [ %254, %251 ]
  %258 = phi ptr [ %260, %256 ], [ %253, %251 ]
  %259 = phi i64 [ %267, %256 ], [ %252, %251 ]
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 1
  %261 = load i8, ptr %258, align 1
  %262 = zext i8 %261 to i64
  %263 = mul i64 %262, 2870177450012600261
  %264 = xor i64 %263, %257
  %265 = call i64 @llvm.fshl.i64(i64 %264, i64 %264, i64 11)
  %266 = mul i64 %265, -7046029288634856825
  %267 = add nsw i64 %259, -1
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %256

269:                                              ; preds = %256, %251
  %270 = phi i64 [ %254, %251 ], [ %266, %256 ]
  %271 = lshr i64 %270, 33
  %272 = xor i64 %271, %270
  %273 = mul i64 %272, -4417276706812531889
  %274 = lshr i64 %273, 29
  %275 = xor i64 %274, %273
  %276 = mul i64 %275, 1609587929392839161
  %277 = lshr i64 %276, 32
  %278 = xor i64 %277, %276
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #6
  ret i64 %278
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
  %249 = icmp samesign ugt i64 %248, 7
  br i1 %249, label %250, label %265

250:                                              ; preds = %244, %250
  %251 = phi i64 [ %262, %250 ], [ %246, %244 ]
  %252 = phi ptr [ %258, %250 ], [ %247, %244 ]
  %253 = phi i64 [ %263, %250 ], [ %248, %244 ]
  %254 = load i64, ptr %252, align 8
  %255 = mul i64 %254, -4417276706812531889
  %256 = call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 31)
  %257 = mul i64 %256, -7046029288634856825
  %258 = getelementptr inbounds nuw i8, ptr %252, i64 8
  %259 = xor i64 %257, %251
  %260 = call i64 @llvm.fshl.i64(i64 %259, i64 %259, i64 27)
  %261 = mul i64 %260, -7046029288634856825
  %262 = add i64 %261, -8796714831421723037
  %263 = add nsw i64 %253, -8
  %264 = icmp ugt i64 %263, 7
  br i1 %264, label %250, label %265

265:                                              ; preds = %250, %244
  %266 = phi i64 [ %248, %244 ], [ %263, %250 ]
  %267 = phi ptr [ %247, %244 ], [ %258, %250 ]
  %268 = phi i64 [ %246, %244 ], [ %262, %250 ]
  %269 = icmp samesign ugt i64 %266, 3
  br i1 %269, label %270, label %280

270:                                              ; preds = %265
  %271 = load i32, ptr %267, align 4
  %272 = zext i32 %271 to i64
  %273 = mul i64 %272, -7046029288634856825
  %274 = xor i64 %273, %268
  %275 = getelementptr inbounds nuw i8, ptr %267, i64 4
  %276 = call i64 @llvm.fshl.i64(i64 %274, i64 %274, i64 23)
  %277 = mul i64 %276, -4417276706812531889
  %278 = add i64 %277, 1609587929392839161
  %279 = add nsw i64 %266, -4
  br label %280

280:                                              ; preds = %270, %265
  %281 = phi i64 [ %279, %270 ], [ %266, %265 ]
  %282 = phi ptr [ %275, %270 ], [ %267, %265 ]
  %283 = phi i64 [ %278, %270 ], [ %268, %265 ]
  %284 = icmp eq i64 %281, 0
  br i1 %284, label %298, label %285

285:                                              ; preds = %280, %285
  %286 = phi i64 [ %295, %285 ], [ %283, %280 ]
  %287 = phi ptr [ %289, %285 ], [ %282, %280 ]
  %288 = phi i64 [ %296, %285 ], [ %281, %280 ]
  %289 = getelementptr inbounds nuw i8, ptr %287, i64 1
  %290 = load i8, ptr %287, align 1
  %291 = zext i8 %290 to i64
  %292 = mul i64 %291, 2870177450012600261
  %293 = xor i64 %292, %286
  %294 = call i64 @llvm.fshl.i64(i64 %293, i64 %293, i64 11)
  %295 = mul i64 %294, -7046029288634856825
  %296 = add nsw i64 %288, -1
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %285

298:                                              ; preds = %285, %280
  %299 = phi i64 [ %283, %280 ], [ %295, %285 ]
  %300 = lshr i64 %299, 33
  %301 = xor i64 %300, %299
  %302 = mul i64 %301, -4417276706812531889
  %303 = lshr i64 %302, 29
  %304 = xor i64 %303, %302
  %305 = mul i64 %304, 1609587929392839161
  %306 = lshr i64 %305, 32
  %307 = xor i64 %306, %305
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %16) #6
  ret i64 %307
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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
