; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/96a2ca1/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/96a2ca1/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH32_canonical_t = type { [4 x i8] }
%struct.XXH_NAMESPACEXXH64_canonical_t = type { [8 x i8] }
%struct.XXH_NAMESPACEXXH128_hash_t = type { i64, i64 }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 32
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 32

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_canon32(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.XXH_NAMESPACEXXH32_canonical_t, align 1
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr %2, align 4
  call void @XXH_INLINE_XXH32_canonicalFromHash(ptr noundef %3, i32 noundef %5)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 1 %3, i64 4, i1 false)
  %6 = load i32, ptr %4, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH_INLINE_XXH32_canonicalFromHash(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x i8], align 1
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [1 x i8], ptr %5, i64 0, i64 0
  br label %8

8:                                                ; preds = %6
  %9 = load i32, ptr %4, align 4
  %10 = call i32 @XXH_swap32(i32 noundef %9)
  store i32 %10, ptr %4, align 4
  %11 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 4 %4, i64 4, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @target_canon64(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.XXH_NAMESPACEXXH64_canonical_t, align 1
  %4 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %5 = load i64, ptr %2, align 8
  call void @XXH_INLINE_XXH64_canonicalFromHash(ptr noundef %3, i64 noundef %5)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 1 %3, i64 8, i1 false)
  %6 = load i64, ptr %4, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH_INLINE_XXH64_canonicalFromHash(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca [1 x i8], align 1
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  br label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [1 x i8], ptr %5, i64 0, i64 0
  br label %8

8:                                                ; preds = %6
  %9 = load i64, ptr %4, align 8
  %10 = call i64 @XXH_swap64(i64 noundef %9)
  store i64 %10, ptr %4, align 8
  %11 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 8 %4, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @target_xxh3_64_len300(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @XXH_INLINE_XXH3_64bits(ptr noundef %3, i64 noundef 300)
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_INLINE_XXH3_64bits(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @XXH3_64bits_internal(ptr noundef %5, i64 noundef %6, i64 noundef 0, ptr noundef @XXH3_kSecret, i64 noundef 192, ptr noundef @XXH3_hashLong_64b_default)
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @target_xxh3_64_seed_len300(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @XXH_INLINE_XXH3_64bits_withSeed(ptr noundef %5, i64 noundef 300, i64 noundef %6)
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_INLINE_XXH3_64bits_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call i64 @XXH3_64bits_internal(ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef @XXH3_kSecret, i64 noundef 192, ptr noundef @XXH3_hashLong_64b_withSeed)
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @target_xxh3_128_len300_hi(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call { i64, i64 } @XXH_INLINE_XXH3_128bits(ptr noundef %4, i64 noundef 300)
  %6 = getelementptr inbounds nuw { i64, i64 }, ptr %3, i32 0, i32 0
  %7 = extractvalue { i64, i64 } %5, 0
  store i64 %7, ptr %6, align 8
  %8 = getelementptr inbounds nuw { i64, i64 }, ptr %3, i32 0, i32 1
  %9 = extractvalue { i64, i64 } %5, 1
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %3, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH_INLINE_XXH3_128bits(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i64, ptr %5, align 8
  %8 = call { i64, i64 } @XXH3_128bits_internal(ptr noundef %6, i64 noundef %7, i64 noundef 0, ptr noundef @XXH3_kSecret, i64 noundef 192, ptr noundef @XXH3_hashLong_128b_default)
  %9 = getelementptr inbounds nuw { i64, i64 }, ptr %3, i32 0, i32 0
  %10 = extractvalue { i64, i64 } %8, 0
  store i64 %10, ptr %9, align 8
  %11 = getelementptr inbounds nuw { i64, i64 }, ptr %3, i32 0, i32 1
  %12 = extractvalue { i64, i64 } %8, 1
  store i64 %12, ptr %11, align 8
  %13 = load { i64, i64 }, ptr %3, align 8
  ret { i64, i64 } %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH_swap32(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 24
  %5 = and i32 %4, -16777216
  %6 = load i32, ptr %2, align 4
  %7 = shl i32 %6, 8
  %8 = and i32 %7, 16711680
  %9 = or i32 %5, %8
  %10 = load i32, ptr %2, align 4
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 65280
  %13 = or i32 %9, %12
  %14 = load i32, ptr %2, align 4
  %15 = lshr i32 %14, 24
  %16 = and i32 %15, 255
  %17 = or i32 %13, %16
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_swap64(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = shl i64 %3, 56
  %5 = and i64 %4, -72057594037927936
  %6 = load i64, ptr %2, align 8
  %7 = shl i64 %6, 40
  %8 = and i64 %7, 71776119061217280
  %9 = or i64 %5, %8
  %10 = load i64, ptr %2, align 8
  %11 = shl i64 %10, 24
  %12 = and i64 %11, 280375465082880
  %13 = or i64 %9, %12
  %14 = load i64, ptr %2, align 8
  %15 = shl i64 %14, 8
  %16 = and i64 %15, 1095216660480
  %17 = or i64 %13, %16
  %18 = load i64, ptr %2, align 8
  %19 = lshr i64 %18, 8
  %20 = and i64 %19, 4278190080
  %21 = or i64 %17, %20
  %22 = load i64, ptr %2, align 8
  %23 = lshr i64 %22, 24
  %24 = and i64 %23, 16711680
  %25 = or i64 %21, %24
  %26 = load i64, ptr %2, align 8
  %27 = lshr i64 %26, 40
  %28 = and i64 %27, 65280
  %29 = or i64 %25, %28
  %30 = load i64, ptr %2, align 8
  %31 = lshr i64 %30, 56
  %32 = and i64 %31, 255
  %33 = or i64 %29, %32
  ret i64 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_64bits_internal(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store i64 %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store i64 %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  %14 = load i64, ptr %9, align 8
  %15 = icmp ule i64 %14, 16
  br i1 %15, label %16, label %22

16:                                               ; preds = %6
  %17 = load ptr, ptr %8, align 8
  %18 = load i64, ptr %9, align 8
  %19 = load ptr, ptr %11, align 8
  %20 = load i64, ptr %10, align 8
  %21 = call i64 @XXH3_len_0to16_64b(ptr noundef %17, i64 noundef %18, ptr noundef %19, i64 noundef %20)
  store i64 %21, ptr %7, align 8
  br label %50

22:                                               ; preds = %6
  %23 = load i64, ptr %9, align 8
  %24 = icmp ule i64 %23, 128
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load ptr, ptr %8, align 8
  %27 = load i64, ptr %9, align 8
  %28 = load ptr, ptr %11, align 8
  %29 = load i64, ptr %12, align 8
  %30 = load i64, ptr %10, align 8
  %31 = call i64 @XXH3_len_17to128_64b(ptr noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, i64 noundef %30)
  store i64 %31, ptr %7, align 8
  br label %50

32:                                               ; preds = %22
  %33 = load i64, ptr %9, align 8
  %34 = icmp ule i64 %33, 240
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load ptr, ptr %8, align 8
  %37 = load i64, ptr %9, align 8
  %38 = load ptr, ptr %11, align 8
  %39 = load i64, ptr %12, align 8
  %40 = load i64, ptr %10, align 8
  %41 = call i64 @XXH3_len_129to240_64b(ptr noundef %36, i64 noundef %37, ptr noundef %38, i64 noundef %39, i64 noundef %40)
  store i64 %41, ptr %7, align 8
  br label %50

42:                                               ; preds = %32
  %43 = load ptr, ptr %13, align 8
  %44 = load ptr, ptr %8, align 8
  %45 = load i64, ptr %9, align 8
  %46 = load i64, ptr %10, align 8
  %47 = load ptr, ptr %11, align 8
  %48 = load i64, ptr %12, align 8
  %49 = call i64 %43(ptr noundef %44, i64 noundef %45, i64 noundef %46, ptr noundef %47, i64 noundef %48)
  store i64 %49, ptr %7, align 8
  br label %50

50:                                               ; preds = %42, %35, %25, %16
  %51 = load i64, ptr %7, align 8
  ret i64 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_hashLong_64b_default(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %11 = load i64, ptr %8, align 8
  %12 = load ptr, ptr %9, align 8
  %13 = load i64, ptr %10, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load i64, ptr %7, align 8
  %16 = call i64 @XXH3_hashLong_64b_internal(ptr noundef %14, i64 noundef %15, ptr noundef @XXH3_kSecret, i64 noundef 192, ptr noundef @XXH3_accumulate_512_avx2, ptr noundef @XXH3_scrambleAcc_avx2)
  ret i64 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_len_0to16_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  %10 = load i64, ptr %7, align 8
  %11 = icmp ugt i64 %10, 8
  %12 = zext i1 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 8
  %17 = load i64, ptr %7, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = load i64, ptr %9, align 8
  %20 = call i64 @XXH3_len_9to16_64b(ptr noundef %16, i64 noundef %17, ptr noundef %18, i64 noundef %19)
  store i64 %20, ptr %5, align 8
  br label %53

21:                                               ; preds = %4
  %22 = load i64, ptr %7, align 8
  %23 = icmp uge i64 %22, 4
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %7, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = load i64, ptr %9, align 8
  %32 = call i64 @XXH3_len_4to8_64b(ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31)
  store i64 %32, ptr %5, align 8
  br label %53

33:                                               ; preds = %21
  %34 = load i64, ptr %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load ptr, ptr %6, align 8
  %38 = load i64, ptr %7, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = load i64, ptr %9, align 8
  %41 = call i64 @XXH3_len_1to3_64b(ptr noundef %37, i64 noundef %38, ptr noundef %39, i64 noundef %40)
  store i64 %41, ptr %5, align 8
  br label %53

42:                                               ; preds = %33
  %43 = load i64, ptr %9, align 8
  %44 = load ptr, ptr %8, align 8
  %45 = getelementptr inbounds i8, ptr %44, i64 56
  %46 = call i64 @XXH_readLE64(ptr noundef %45)
  %47 = load ptr, ptr %8, align 8
  %48 = getelementptr inbounds i8, ptr %47, i64 64
  %49 = call i64 @XXH_readLE64(ptr noundef %48)
  %50 = xor i64 %46, %49
  %51 = xor i64 %43, %50
  %52 = call i64 @XXH64_avalanche(i64 noundef %51)
  store i64 %52, ptr %5, align 8
  br label %53

53:                                               ; preds = %42, %36, %27, %15
  %54 = load i64, ptr %5, align 8
  ret i64 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_len_17to128_64b(ptr noalias noundef %0, i64 noundef %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %12 = load i64, ptr %9, align 8
  %13 = load i64, ptr %7, align 8
  %14 = mul i64 %13, -7046029288634856825
  store i64 %14, ptr %11, align 8
  %15 = load i64, ptr %7, align 8
  %16 = icmp ugt i64 %15, 32
  br i1 %16, label %17, label %80

17:                                               ; preds = %5
  %18 = load i64, ptr %7, align 8
  %19 = icmp ugt i64 %18, 64
  br i1 %19, label %20, label %61

20:                                               ; preds = %17
  %21 = load i64, ptr %7, align 8
  %22 = icmp ugt i64 %21, 96
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 48
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 96
  %28 = load i64, ptr %10, align 8
  %29 = call i64 @XXH3_mix16B(ptr noundef %25, ptr noundef %27, i64 noundef %28)
  %30 = load i64, ptr %11, align 8
  %31 = add i64 %30, %29
  store i64 %31, ptr %11, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 %33
  %35 = getelementptr inbounds i8, ptr %34, i64 -64
  %36 = load ptr, ptr %8, align 8
  %37 = getelementptr inbounds i8, ptr %36, i64 112
  %38 = load i64, ptr %10, align 8
  %39 = call i64 @XXH3_mix16B(ptr noundef %35, ptr noundef %37, i64 noundef %38)
  %40 = load i64, ptr %11, align 8
  %41 = add i64 %40, %39
  store i64 %41, ptr %11, align 8
  br label %42

42:                                               ; preds = %23, %20
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds i8, ptr %43, i64 32
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds i8, ptr %45, i64 64
  %47 = load i64, ptr %10, align 8
  %48 = call i64 @XXH3_mix16B(ptr noundef %44, ptr noundef %46, i64 noundef %47)
  %49 = load i64, ptr %11, align 8
  %50 = add i64 %49, %48
  store i64 %50, ptr %11, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = load i64, ptr %7, align 8
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 %52
  %54 = getelementptr inbounds i8, ptr %53, i64 -48
  %55 = load ptr, ptr %8, align 8
  %56 = getelementptr inbounds i8, ptr %55, i64 80
  %57 = load i64, ptr %10, align 8
  %58 = call i64 @XXH3_mix16B(ptr noundef %54, ptr noundef %56, i64 noundef %57)
  %59 = load i64, ptr %11, align 8
  %60 = add i64 %59, %58
  store i64 %60, ptr %11, align 8
  br label %61

61:                                               ; preds = %42, %17
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr inbounds i8, ptr %62, i64 16
  %64 = load ptr, ptr %8, align 8
  %65 = getelementptr inbounds i8, ptr %64, i64 32
  %66 = load i64, ptr %10, align 8
  %67 = call i64 @XXH3_mix16B(ptr noundef %63, ptr noundef %65, i64 noundef %66)
  %68 = load i64, ptr %11, align 8
  %69 = add i64 %68, %67
  store i64 %69, ptr %11, align 8
  %70 = load ptr, ptr %6, align 8
  %71 = load i64, ptr %7, align 8
  %72 = getelementptr inbounds nuw i8, ptr %70, i64 %71
  %73 = getelementptr inbounds i8, ptr %72, i64 -32
  %74 = load ptr, ptr %8, align 8
  %75 = getelementptr inbounds i8, ptr %74, i64 48
  %76 = load i64, ptr %10, align 8
  %77 = call i64 @XXH3_mix16B(ptr noundef %73, ptr noundef %75, i64 noundef %76)
  %78 = load i64, ptr %11, align 8
  %79 = add i64 %78, %77
  store i64 %79, ptr %11, align 8
  br label %80

80:                                               ; preds = %61, %5
  %81 = load ptr, ptr %6, align 8
  %82 = getelementptr inbounds i8, ptr %81, i64 0
  %83 = load ptr, ptr %8, align 8
  %84 = getelementptr inbounds i8, ptr %83, i64 0
  %85 = load i64, ptr %10, align 8
  %86 = call i64 @XXH3_mix16B(ptr noundef %82, ptr noundef %84, i64 noundef %85)
  %87 = load i64, ptr %11, align 8
  %88 = add i64 %87, %86
  store i64 %88, ptr %11, align 8
  %89 = load ptr, ptr %6, align 8
  %90 = load i64, ptr %7, align 8
  %91 = getelementptr inbounds nuw i8, ptr %89, i64 %90
  %92 = getelementptr inbounds i8, ptr %91, i64 -16
  %93 = load ptr, ptr %8, align 8
  %94 = getelementptr inbounds i8, ptr %93, i64 16
  %95 = load i64, ptr %10, align 8
  %96 = call i64 @XXH3_mix16B(ptr noundef %92, ptr noundef %94, i64 noundef %95)
  %97 = load i64, ptr %11, align 8
  %98 = add i64 %97, %96
  store i64 %98, ptr %11, align 8
  %99 = load i64, ptr %11, align 8
  %100 = call i64 @XXH3_avalanche(i64 noundef %99)
  ret i64 %100
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_len_129to240_64b(ptr noalias noundef %0, i64 noundef %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %14 = load i64, ptr %9, align 8
  %15 = load i64, ptr %7, align 8
  %16 = mul i64 %15, -7046029288634856825
  store i64 %16, ptr %11, align 8
  %17 = load i64, ptr %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = sdiv i32 %18, 16
  store i32 %19, ptr %12, align 4
  store i32 0, ptr %13, align 4
  br label %20

20:                                               ; preds = %38, %5
  %21 = load i32, ptr %13, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8
  %25 = load i32, ptr %13, align 4
  %26 = mul nsw i32 16, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = load ptr, ptr %8, align 8
  %30 = load i32, ptr %13, align 4
  %31 = mul nsw i32 16, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %29, i64 %32
  %34 = load i64, ptr %10, align 8
  %35 = call i64 @XXH3_mix16B(ptr noundef %28, ptr noundef %33, i64 noundef %34)
  %36 = load i64, ptr %11, align 8
  %37 = add i64 %36, %35
  store i64 %37, ptr %11, align 8
  br label %38

38:                                               ; preds = %23
  %39 = load i32, ptr %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %13, align 4
  br label %20

41:                                               ; preds = %20
  %42 = load i64, ptr %11, align 8
  %43 = call i64 @XXH3_avalanche(i64 noundef %42)
  store i64 %43, ptr %11, align 8
  store i32 8, ptr %13, align 4
  br label %44

44:                                               ; preds = %65, %41
  %45 = load i32, ptr %13, align 4
  %46 = load i32, ptr %12, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load ptr, ptr %6, align 8
  %50 = load i32, ptr %13, align 4
  %51 = mul nsw i32 16, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %49, i64 %52
  %54 = load ptr, ptr %8, align 8
  %55 = load i32, ptr %13, align 4
  %56 = sub nsw i32 %55, 8
  %57 = mul nsw i32 16, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %54, i64 %58
  %60 = getelementptr inbounds i8, ptr %59, i64 3
  %61 = load i64, ptr %10, align 8
  %62 = call i64 @XXH3_mix16B(ptr noundef %53, ptr noundef %60, i64 noundef %61)
  %63 = load i64, ptr %11, align 8
  %64 = add i64 %63, %62
  store i64 %64, ptr %11, align 8
  br label %65

65:                                               ; preds = %48
  %66 = load i32, ptr %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %13, align 4
  br label %44

68:                                               ; preds = %44
  %69 = load ptr, ptr %6, align 8
  %70 = load i64, ptr %7, align 8
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 %70
  %72 = getelementptr inbounds i8, ptr %71, i64 -16
  %73 = load ptr, ptr %8, align 8
  %74 = getelementptr inbounds i8, ptr %73, i64 136
  %75 = getelementptr inbounds i8, ptr %74, i64 -17
  %76 = load i64, ptr %10, align 8
  %77 = call i64 @XXH3_mix16B(ptr noundef %72, ptr noundef %75, i64 noundef %76)
  %78 = load i64, ptr %11, align 8
  %79 = add i64 %78, %77
  store i64 %79, ptr %11, align 8
  %80 = load i64, ptr %11, align 8
  %81 = call i64 @XXH3_avalanche(i64 noundef %80)
  ret i64 %81
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_len_9to16_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds i8, ptr %14, i64 24
  %16 = call i64 @XXH_readLE64(ptr noundef %15)
  %17 = load ptr, ptr %7, align 8
  %18 = getelementptr inbounds i8, ptr %17, i64 32
  %19 = call i64 @XXH_readLE64(ptr noundef %18)
  %20 = xor i64 %16, %19
  %21 = load i64, ptr %8, align 8
  %22 = add i64 %20, %21
  store i64 %22, ptr %9, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds i8, ptr %23, i64 40
  %25 = call i64 @XXH_readLE64(ptr noundef %24)
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 48
  %28 = call i64 @XXH_readLE64(ptr noundef %27)
  %29 = xor i64 %25, %28
  %30 = load i64, ptr %8, align 8
  %31 = sub i64 %29, %30
  store i64 %31, ptr %10, align 8
  %32 = load ptr, ptr %5, align 8
  %33 = call i64 @XXH_readLE64(ptr noundef %32)
  %34 = load i64, ptr %9, align 8
  %35 = xor i64 %33, %34
  store i64 %35, ptr %11, align 8
  %36 = load ptr, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 %37
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = call i64 @XXH_readLE64(ptr noundef %39)
  %41 = load i64, ptr %10, align 8
  %42 = xor i64 %40, %41
  store i64 %42, ptr %12, align 8
  %43 = load i64, ptr %6, align 8
  %44 = load i64, ptr %11, align 8
  %45 = call i64 @XXH_swap64(i64 noundef %44)
  %46 = add i64 %43, %45
  %47 = load i64, ptr %12, align 8
  %48 = add i64 %46, %47
  %49 = load i64, ptr %11, align 8
  %50 = load i64, ptr %12, align 8
  %51 = call i64 @XXH3_mul128_fold64(i64 noundef %49, i64 noundef %50)
  %52 = add i64 %48, %51
  store i64 %52, ptr %13, align 8
  %53 = load i64, ptr %13, align 8
  %54 = call i64 @XXH3_avalanche(i64 noundef %53)
  ret i64 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_len_4to8_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %14 = load i64, ptr %8, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @XXH_swap32(i32 noundef %15)
  %17 = zext i32 %16 to i64
  %18 = shl i64 %17, 32
  %19 = load i64, ptr %8, align 8
  %20 = xor i64 %19, %18
  store i64 %20, ptr %8, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = call i32 @XXH_readLE32(ptr noundef %21)
  store i32 %22, ptr %9, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = load i64, ptr %6, align 8
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %24
  %26 = getelementptr inbounds i8, ptr %25, i64 -4
  %27 = call i32 @XXH_readLE32(ptr noundef %26)
  store i32 %27, ptr %10, align 4
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds i8, ptr %28, i64 8
  %30 = call i64 @XXH_readLE64(ptr noundef %29)
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds i8, ptr %31, i64 16
  %33 = call i64 @XXH_readLE64(ptr noundef %32)
  %34 = xor i64 %30, %33
  %35 = load i64, ptr %8, align 8
  %36 = sub i64 %34, %35
  store i64 %36, ptr %11, align 8
  %37 = load i32, ptr %10, align 4
  %38 = zext i32 %37 to i64
  %39 = load i32, ptr %9, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 %40, 32
  %42 = add i64 %38, %41
  store i64 %42, ptr %12, align 8
  %43 = load i64, ptr %12, align 8
  %44 = load i64, ptr %11, align 8
  %45 = xor i64 %43, %44
  store i64 %45, ptr %13, align 8
  %46 = load i64, ptr %13, align 8
  %47 = load i64, ptr %6, align 8
  %48 = call i64 @XXH3_rrmxmx(i64 noundef %46, i64 noundef %47)
  ret i64 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_len_1to3_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 0
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr %9, align 1
  %18 = load ptr, ptr %5, align 8
  %19 = load i64, ptr %6, align 8
  %20 = lshr i64 %19, 1
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  %22 = load i8, ptr %21, align 1
  store i8 %22, ptr %10, align 1
  %23 = load ptr, ptr %5, align 8
  %24 = load i64, ptr %6, align 8
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 %25
  %27 = load i8, ptr %26, align 1
  store i8 %27, ptr %11, align 1
  %28 = load i8, ptr %9, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 16
  %31 = load i8, ptr %10, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 24
  %34 = or i32 %30, %33
  %35 = load i8, ptr %11, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 0
  %38 = or i32 %34, %37
  %39 = load i64, ptr %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 8
  %42 = or i32 %38, %41
  store i32 %42, ptr %12, align 4
  %43 = load ptr, ptr %7, align 8
  %44 = call i32 @XXH_readLE32(ptr noundef %43)
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds i8, ptr %45, i64 4
  %47 = call i32 @XXH_readLE32(ptr noundef %46)
  %48 = xor i32 %44, %47
  %49 = zext i32 %48 to i64
  %50 = load i64, ptr %8, align 8
  %51 = add i64 %49, %50
  store i64 %51, ptr %13, align 8
  %52 = load i32, ptr %12, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, ptr %13, align 8
  %55 = xor i64 %53, %54
  store i64 %55, ptr %14, align 8
  %56 = load i64, ptr %14, align 8
  %57 = call i64 @XXH64_avalanche(i64 noundef %56)
  ret i64 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH64_avalanche(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = lshr i64 %3, 33
  %5 = load i64, ptr %2, align 8
  %6 = xor i64 %5, %4
  store i64 %6, ptr %2, align 8
  %7 = load i64, ptr %2, align 8
  %8 = mul i64 %7, -4417276706812531889
  store i64 %8, ptr %2, align 8
  %9 = load i64, ptr %2, align 8
  %10 = lshr i64 %9, 29
  %11 = load i64, ptr %2, align 8
  %12 = xor i64 %11, %10
  store i64 %12, ptr %2, align 8
  %13 = load i64, ptr %2, align 8
  %14 = mul i64 %13, 1609587929392839161
  store i64 %14, ptr %2, align 8
  %15 = load i64, ptr %2, align 8
  %16 = lshr i64 %15, 32
  %17 = load i64, ptr %2, align 8
  %18 = xor i64 %17, %16
  store i64 %18, ptr %2, align 8
  %19 = load i64, ptr %2, align 8
  ret i64 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_readLE64(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @XXH_read64(ptr noundef %3)
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_mul128_fold64(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = load i64, ptr %4, align 8
  %8 = call { i64, i64 } @XXH_mult64to128(i64 noundef %6, i64 noundef %7)
  %9 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  %10 = extractvalue { i64, i64 } %8, 0
  store i64 %10, ptr %9, align 8
  %11 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  %12 = extractvalue { i64, i64 } %8, 1
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = xor i64 %14, %16
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_avalanche(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @XXH_xorshift64(i64 noundef %3, i32 noundef 37)
  store i64 %4, ptr %2, align 8
  %5 = load i64, ptr %2, align 8
  %6 = mul i64 %5, 1609587791953885689
  store i64 %6, ptr %2, align 8
  %7 = load i64, ptr %2, align 8
  %8 = call i64 @XXH_xorshift64(i64 noundef %7, i32 noundef 32)
  store i64 %8, ptr %2, align 8
  %9 = load i64, ptr %2, align 8
  ret i64 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH_mult64to128(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i128, align 16
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %7 = load i64, ptr %4, align 8
  %8 = zext i64 %7 to i128
  %9 = load i64, ptr %5, align 8
  %10 = zext i64 %9 to i128
  %11 = mul i128 %8, %10
  store i128 %11, ptr %6, align 16
  %12 = load i128, ptr %6, align 16
  %13 = trunc i128 %12 to i64
  %14 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %3, i32 0, i32 0
  store i64 %13, ptr %14, align 8
  %15 = load i128, ptr %6, align 16
  %16 = lshr i128 %15, 64
  %17 = trunc i128 %16 to i64
  %18 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %3, i32 0, i32 1
  store i64 %17, ptr %18, align 8
  %19 = load { i64, i64 }, ptr %3, align 8
  ret { i64, i64 } %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_xorshift64(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  %8 = zext i32 %7 to i64
  %9 = lshr i64 %6, %8
  %10 = xor i64 %5, %9
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH_readLE32(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @XXH_read32(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_rrmxmx(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 49)
  %7 = load i64, ptr %3, align 8
  %8 = call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 24)
  %9 = xor i64 %6, %8
  %10 = load i64, ptr %3, align 8
  %11 = xor i64 %10, %9
  store i64 %11, ptr %3, align 8
  %12 = load i64, ptr %3, align 8
  %13 = mul i64 %12, -6939452855193903323
  store i64 %13, ptr %3, align 8
  %14 = load i64, ptr %3, align 8
  %15 = lshr i64 %14, 35
  %16 = load i64, ptr %4, align 8
  %17 = add i64 %15, %16
  %18 = load i64, ptr %3, align 8
  %19 = xor i64 %18, %17
  store i64 %19, ptr %3, align 8
  %20 = load i64, ptr %3, align 8
  %21 = mul i64 %20, -6939452855193903323
  store i64 %21, ptr %3, align 8
  %22 = load i64, ptr %3, align 8
  %23 = call i64 @XXH_xorshift64(i64 noundef %22, i32 noundef 28)
  ret i64 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH_read32(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 1 %4, i64 4, i1 false)
  %5 = load i32, ptr %3, align 4
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_read64(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 1 %4, i64 8, i1 false)
  %5 = load i64, ptr %3, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_mix16B(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i64 @XXH_readLE64(ptr noundef %9)
  store i64 %10, ptr %7, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  %13 = call i64 @XXH_readLE64(ptr noundef %12)
  store i64 %13, ptr %8, align 8
  %14 = load i64, ptr %7, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = call i64 @XXH_readLE64(ptr noundef %15)
  %17 = load i64, ptr %6, align 8
  %18 = add i64 %16, %17
  %19 = xor i64 %14, %18
  %20 = load i64, ptr %8, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 8
  %23 = call i64 @XXH_readLE64(ptr noundef %22)
  %24 = load i64, ptr %6, align 8
  %25 = sub i64 %23, %24
  %26 = xor i64 %20, %25
  %27 = call i64 @XXH3_mul128_fold64(i64 noundef %19, i64 noundef %26)
  ret i64 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_hashLong_64b_internal(ptr noalias noundef %0, i64 noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [8 x i64], align 32
  %14 = alloca [1 x i8], align 1
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %13, ptr align 32 @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %15 = getelementptr inbounds [8 x i64], ptr %13, i64 0, i64 0
  %16 = load ptr, ptr %7, align 8
  %17 = load i64, ptr %8, align 8
  %18 = load ptr, ptr %9, align 8
  %19 = load i64, ptr %10, align 8
  %20 = load ptr, ptr %11, align 8
  %21 = load ptr, ptr %12, align 8
  call void @XXH3_hashLong_internal_loop(ptr noundef %15, ptr noundef %16, i64 noundef %17, ptr noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21)
  br label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds [1 x i8], ptr %14, i64 0, i64 0
  br label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds [8 x i64], ptr %13, i64 0, i64 0
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 11
  %28 = load i64, ptr %8, align 8
  %29 = mul i64 %28, -7046029288634856825
  %30 = call i64 @XXH3_mergeAccs(ptr noundef %25, ptr noundef %27, i64 noundef %29)
  ret i64 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_accumulate_512_avx2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2) #3 {
  %4 = alloca <4 x i64>, align 32
  %5 = alloca <4 x i64>, align 32
  %6 = alloca <4 x i64>, align 32
  %7 = alloca <4 x i64>, align 32
  %8 = alloca <4 x i64>, align 32
  %9 = alloca <4 x i64>, align 32
  %10 = alloca <4 x i64>, align 32
  %11 = alloca <4 x i64>, align 32
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 32
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca <4 x i64>, align 32
  %22 = alloca <4 x i64>, align 32
  %23 = alloca <4 x i64>, align 32
  %24 = alloca <4 x i64>, align 32
  %25 = alloca <4 x i64>, align 32
  %26 = alloca <4 x i64>, align 32
  %27 = alloca <4 x i64>, align 32
  store ptr %0, ptr %14, align 8
  store ptr %1, ptr %15, align 8
  store ptr %2, ptr %16, align 8
  %28 = load ptr, ptr %14, align 8
  store ptr %28, ptr %17, align 32
  %29 = load ptr, ptr %15, align 8
  store ptr %29, ptr %18, align 8
  %30 = load ptr, ptr %16, align 8
  store ptr %30, ptr %19, align 8
  store i64 0, ptr %20, align 8
  br label %31

31:                                               ; preds = %83, %3
  %32 = load i64, ptr %20, align 8
  %33 = icmp ult i64 %32, 2
  br i1 %33, label %34, label %86

34:                                               ; preds = %31
  %35 = load ptr, ptr %18, align 8
  %36 = load i64, ptr %20, align 8
  %37 = getelementptr inbounds nuw <4 x i64>, ptr %35, i64 %36
  store ptr %37, ptr %12, align 8
  %38 = load ptr, ptr %12, align 8
  %39 = load <4 x i64>, ptr %38, align 1
  store <4 x i64> %39, ptr %21, align 32
  %40 = load ptr, ptr %19, align 8
  %41 = load i64, ptr %20, align 8
  %42 = getelementptr inbounds nuw <4 x i64>, ptr %40, i64 %41
  store ptr %42, ptr %13, align 8
  %43 = load ptr, ptr %13, align 8
  %44 = load <4 x i64>, ptr %43, align 1
  store <4 x i64> %44, ptr %22, align 32
  %45 = load <4 x i64>, ptr %21, align 32
  %46 = load <4 x i64>, ptr %22, align 32
  store <4 x i64> %45, ptr %10, align 32
  store <4 x i64> %46, ptr %11, align 32
  %47 = load <4 x i64>, ptr %10, align 32
  %48 = load <4 x i64>, ptr %11, align 32
  %49 = xor <4 x i64> %47, %48
  store <4 x i64> %49, ptr %23, align 32
  %50 = load <4 x i64>, ptr %23, align 32
  %51 = bitcast <4 x i64> %50 to <8 x i32>
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %53 = bitcast <8 x i32> %52 to <4 x i64>
  store <4 x i64> %53, ptr %24, align 32
  %54 = load <4 x i64>, ptr %23, align 32
  %55 = load <4 x i64>, ptr %24, align 32
  store <4 x i64> %54, ptr %8, align 32
  store <4 x i64> %55, ptr %9, align 32
  %56 = load <4 x i64>, ptr %8, align 32
  %57 = bitcast <4 x i64> %56 to <8 x i32>
  %58 = load <4 x i64>, ptr %9, align 32
  %59 = bitcast <4 x i64> %58 to <8 x i32>
  %60 = and <4 x i64> %56, splat (i64 4294967295)
  %61 = and <4 x i64> %58, splat (i64 4294967295)
  %62 = mul <4 x i64> %60, %61
  store <4 x i64> %62, ptr %25, align 32
  %63 = load <4 x i64>, ptr %21, align 32
  %64 = bitcast <4 x i64> %63 to <8 x i32>
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %66 = bitcast <8 x i32> %65 to <4 x i64>
  store <4 x i64> %66, ptr %26, align 32
  %67 = load ptr, ptr %17, align 32
  %68 = load i64, ptr %20, align 8
  %69 = getelementptr inbounds nuw <4 x i64>, ptr %67, i64 %68
  %70 = load <4 x i64>, ptr %69, align 32
  %71 = load <4 x i64>, ptr %26, align 32
  store <4 x i64> %70, ptr %4, align 32
  store <4 x i64> %71, ptr %5, align 32
  %72 = load <4 x i64>, ptr %4, align 32
  %73 = load <4 x i64>, ptr %5, align 32
  %74 = add <4 x i64> %72, %73
  store <4 x i64> %74, ptr %27, align 32
  %75 = load <4 x i64>, ptr %25, align 32
  %76 = load <4 x i64>, ptr %27, align 32
  store <4 x i64> %75, ptr %6, align 32
  store <4 x i64> %76, ptr %7, align 32
  %77 = load <4 x i64>, ptr %6, align 32
  %78 = load <4 x i64>, ptr %7, align 32
  %79 = add <4 x i64> %77, %78
  %80 = load ptr, ptr %17, align 32
  %81 = load i64, ptr %20, align 8
  %82 = getelementptr inbounds nuw <4 x i64>, ptr %80, i64 %81
  store <4 x i64> %79, ptr %82, align 32
  br label %83

83:                                               ; preds = %34
  %84 = load i64, ptr %20, align 8
  %85 = add i64 %84, 1
  store i64 %85, ptr %20, align 8
  br label %31

86:                                               ; preds = %31
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_scrambleAcc_avx2(ptr noalias noundef %0, ptr noalias noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca <8 x i32>, align 32
  %12 = alloca <4 x i64>, align 32
  %13 = alloca i32, align 4
  %14 = alloca <4 x i64>, align 32
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca <4 x i64>, align 32
  %18 = alloca <4 x i64>, align 32
  %19 = alloca <4 x i64>, align 32
  %20 = alloca <4 x i64>, align 32
  %21 = alloca <4 x i64>, align 32
  %22 = alloca <4 x i64>, align 32
  %23 = alloca <4 x i64>, align 32
  %24 = alloca <4 x i64>, align 32
  %25 = alloca <4 x i64>, align 32
  %26 = alloca <4 x i64>, align 32
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 32
  %31 = alloca ptr, align 8
  %32 = alloca <4 x i64>, align 32
  %33 = alloca i64, align 8
  %34 = alloca <4 x i64>, align 32
  %35 = alloca <4 x i64>, align 32
  %36 = alloca <4 x i64>, align 32
  %37 = alloca <4 x i64>, align 32
  %38 = alloca <4 x i64>, align 32
  %39 = alloca <4 x i64>, align 32
  %40 = alloca <4 x i64>, align 32
  %41 = alloca <4 x i64>, align 32
  store ptr %0, ptr %28, align 8
  store ptr %1, ptr %29, align 8
  %42 = load ptr, ptr %28, align 8
  store ptr %42, ptr %30, align 32
  %43 = load ptr, ptr %29, align 8
  store ptr %43, ptr %31, align 8
  store i32 -1640531535, ptr %16, align 4
  %44 = load i32, ptr %16, align 4
  %45 = load i32, ptr %16, align 4
  %46 = load i32, ptr %16, align 4
  %47 = load i32, ptr %16, align 4
  %48 = load i32, ptr %16, align 4
  %49 = load i32, ptr %16, align 4
  %50 = load i32, ptr %16, align 4
  %51 = load i32, ptr %16, align 4
  store i32 %44, ptr %3, align 4
  store i32 %45, ptr %4, align 4
  store i32 %46, ptr %5, align 4
  store i32 %47, ptr %6, align 4
  store i32 %48, ptr %7, align 4
  store i32 %49, ptr %8, align 4
  store i32 %50, ptr %9, align 4
  store i32 %51, ptr %10, align 4
  %52 = load i32, ptr %10, align 4
  %53 = insertelement <8 x i32> poison, i32 %52, i32 0
  %54 = load i32, ptr %9, align 4
  %55 = insertelement <8 x i32> %53, i32 %54, i32 1
  %56 = load i32, ptr %8, align 4
  %57 = insertelement <8 x i32> %55, i32 %56, i32 2
  %58 = load i32, ptr %7, align 4
  %59 = insertelement <8 x i32> %57, i32 %58, i32 3
  %60 = load i32, ptr %6, align 4
  %61 = insertelement <8 x i32> %59, i32 %60, i32 4
  %62 = load i32, ptr %5, align 4
  %63 = insertelement <8 x i32> %61, i32 %62, i32 5
  %64 = load i32, ptr %4, align 4
  %65 = insertelement <8 x i32> %63, i32 %64, i32 6
  %66 = load i32, ptr %3, align 4
  %67 = insertelement <8 x i32> %65, i32 %66, i32 7
  store <8 x i32> %67, ptr %11, align 32
  %68 = load <8 x i32>, ptr %11, align 32
  %69 = bitcast <8 x i32> %68 to <4 x i64>
  store <4 x i64> %69, ptr %32, align 32
  store i64 0, ptr %33, align 8
  br label %70

70:                                               ; preds = %130, %2
  %71 = load i64, ptr %33, align 8
  %72 = icmp ult i64 %71, 2
  br i1 %72, label %73, label %133

73:                                               ; preds = %70
  %74 = load ptr, ptr %30, align 32
  %75 = load i64, ptr %33, align 8
  %76 = getelementptr inbounds nuw <4 x i64>, ptr %74, i64 %75
  %77 = load <4 x i64>, ptr %76, align 32
  store <4 x i64> %77, ptr %34, align 32
  %78 = load <4 x i64>, ptr %34, align 32
  store <4 x i64> %78, ptr %14, align 32
  store i32 47, ptr %15, align 4
  %79 = load <4 x i64>, ptr %14, align 32
  %80 = load i32, ptr %15, align 4
  %81 = call <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %79, i32 %80)
  store <4 x i64> %81, ptr %35, align 32
  %82 = load <4 x i64>, ptr %34, align 32
  %83 = load <4 x i64>, ptr %35, align 32
  store <4 x i64> %82, ptr %23, align 32
  store <4 x i64> %83, ptr %24, align 32
  %84 = load <4 x i64>, ptr %23, align 32
  %85 = load <4 x i64>, ptr %24, align 32
  %86 = xor <4 x i64> %84, %85
  store <4 x i64> %86, ptr %36, align 32
  %87 = load ptr, ptr %31, align 8
  %88 = load i64, ptr %33, align 8
  %89 = getelementptr inbounds nuw <4 x i64>, ptr %87, i64 %88
  store ptr %89, ptr %27, align 8
  %90 = load ptr, ptr %27, align 8
  %91 = load <4 x i64>, ptr %90, align 1
  store <4 x i64> %91, ptr %37, align 32
  %92 = load <4 x i64>, ptr %36, align 32
  %93 = load <4 x i64>, ptr %37, align 32
  store <4 x i64> %92, ptr %25, align 32
  store <4 x i64> %93, ptr %26, align 32
  %94 = load <4 x i64>, ptr %25, align 32
  %95 = load <4 x i64>, ptr %26, align 32
  %96 = xor <4 x i64> %94, %95
  store <4 x i64> %96, ptr %38, align 32
  %97 = load <4 x i64>, ptr %38, align 32
  %98 = bitcast <4 x i64> %97 to <8 x i32>
  %99 = shufflevector <8 x i32> %98, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %100 = bitcast <8 x i32> %99 to <4 x i64>
  store <4 x i64> %100, ptr %39, align 32
  %101 = load <4 x i64>, ptr %38, align 32
  %102 = load <4 x i64>, ptr %32, align 32
  store <4 x i64> %101, ptr %19, align 32
  store <4 x i64> %102, ptr %20, align 32
  %103 = load <4 x i64>, ptr %19, align 32
  %104 = bitcast <4 x i64> %103 to <8 x i32>
  %105 = load <4 x i64>, ptr %20, align 32
  %106 = bitcast <4 x i64> %105 to <8 x i32>
  %107 = and <4 x i64> %103, splat (i64 4294967295)
  %108 = and <4 x i64> %105, splat (i64 4294967295)
  %109 = mul <4 x i64> %107, %108
  store <4 x i64> %109, ptr %40, align 32
  %110 = load <4 x i64>, ptr %39, align 32
  %111 = load <4 x i64>, ptr %32, align 32
  store <4 x i64> %110, ptr %21, align 32
  store <4 x i64> %111, ptr %22, align 32
  %112 = load <4 x i64>, ptr %21, align 32
  %113 = bitcast <4 x i64> %112 to <8 x i32>
  %114 = load <4 x i64>, ptr %22, align 32
  %115 = bitcast <4 x i64> %114 to <8 x i32>
  %116 = and <4 x i64> %112, splat (i64 4294967295)
  %117 = and <4 x i64> %114, splat (i64 4294967295)
  %118 = mul <4 x i64> %116, %117
  store <4 x i64> %118, ptr %41, align 32
  %119 = load <4 x i64>, ptr %40, align 32
  %120 = load <4 x i64>, ptr %41, align 32
  store <4 x i64> %120, ptr %12, align 32
  store i32 32, ptr %13, align 4
  %121 = load <4 x i64>, ptr %12, align 32
  %122 = load i32, ptr %13, align 4
  %123 = call <4 x i64> @llvm.x86.avx2.pslli.q(<4 x i64> %121, i32 %122)
  store <4 x i64> %119, ptr %17, align 32
  store <4 x i64> %123, ptr %18, align 32
  %124 = load <4 x i64>, ptr %17, align 32
  %125 = load <4 x i64>, ptr %18, align 32
  %126 = add <4 x i64> %124, %125
  %127 = load ptr, ptr %30, align 32
  %128 = load i64, ptr %33, align 8
  %129 = getelementptr inbounds nuw <4 x i64>, ptr %127, i64 %128
  store <4 x i64> %126, ptr %129, align 32
  br label %130

130:                                              ; preds = %73
  %131 = load i64, ptr %33, align 8
  %132 = add i64 %131, 1
  store i64 %132, ptr %33, align 8
  br label %70

133:                                              ; preds = %70
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_hashLong_internal_loop(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i64 %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store i64 %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  %21 = load i64, ptr %12, align 8
  %22 = sub i64 %21, 64
  %23 = udiv i64 %22, 8
  store i64 %23, ptr %15, align 8
  %24 = load i64, ptr %15, align 8
  %25 = mul i64 64, %24
  store i64 %25, ptr %16, align 8
  %26 = load i64, ptr %10, align 8
  %27 = sub i64 %26, 1
  %28 = load i64, ptr %16, align 8
  %29 = udiv i64 %27, %28
  store i64 %29, ptr %17, align 8
  store i64 0, ptr %18, align 8
  br label %30

30:                                               ; preds = %50, %7
  %31 = load i64, ptr %18, align 8
  %32 = load i64, ptr %17, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load ptr, ptr %8, align 8
  %36 = load ptr, ptr %9, align 8
  %37 = load i64, ptr %18, align 8
  %38 = load i64, ptr %16, align 8
  %39 = mul i64 %37, %38
  %40 = getelementptr inbounds nuw i8, ptr %36, i64 %39
  %41 = load ptr, ptr %11, align 8
  %42 = load i64, ptr %15, align 8
  %43 = load ptr, ptr %13, align 8
  call void @XXH3_accumulate(ptr noundef %35, ptr noundef %40, ptr noundef %41, i64 noundef %42, ptr noundef %43)
  %44 = load ptr, ptr %14, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load ptr, ptr %11, align 8
  %47 = load i64, ptr %12, align 8
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 -64
  call void %44(ptr noundef %45, ptr noundef %49)
  br label %50

50:                                               ; preds = %34
  %51 = load i64, ptr %18, align 8
  %52 = add i64 %51, 1
  store i64 %52, ptr %18, align 8
  br label %30

53:                                               ; preds = %30
  %54 = load i64, ptr %10, align 8
  %55 = sub i64 %54, 1
  %56 = load i64, ptr %16, align 8
  %57 = load i64, ptr %17, align 8
  %58 = mul i64 %56, %57
  %59 = sub i64 %55, %58
  %60 = udiv i64 %59, 64
  store i64 %60, ptr %19, align 8
  %61 = load ptr, ptr %8, align 8
  %62 = load ptr, ptr %9, align 8
  %63 = load i64, ptr %17, align 8
  %64 = load i64, ptr %16, align 8
  %65 = mul i64 %63, %64
  %66 = getelementptr inbounds nuw i8, ptr %62, i64 %65
  %67 = load ptr, ptr %11, align 8
  %68 = load i64, ptr %19, align 8
  %69 = load ptr, ptr %13, align 8
  call void @XXH3_accumulate(ptr noundef %61, ptr noundef %66, ptr noundef %67, i64 noundef %68, ptr noundef %69)
  %70 = load ptr, ptr %9, align 8
  %71 = load i64, ptr %10, align 8
  %72 = getelementptr inbounds nuw i8, ptr %70, i64 %71
  %73 = getelementptr inbounds i8, ptr %72, i64 -64
  store ptr %73, ptr %20, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = load ptr, ptr %8, align 8
  %76 = load ptr, ptr %20, align 8
  %77 = load ptr, ptr %11, align 8
  %78 = load i64, ptr %12, align 8
  %79 = getelementptr inbounds nuw i8, ptr %77, i64 %78
  %80 = getelementptr inbounds i8, ptr %79, i64 -64
  %81 = getelementptr inbounds i8, ptr %80, i64 -7
  call void %74(ptr noundef %75, ptr noundef %76, ptr noundef %81)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_mergeAccs(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %9 = load i64, ptr %6, align 8
  store i64 %9, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store i64 0, ptr %8, align 8
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i64, ptr %8, align 8
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8
  %15 = load i64, ptr %8, align 8
  %16 = mul i64 2, %15
  %17 = getelementptr inbounds nuw i64, ptr %14, i64 %16
  %18 = load ptr, ptr %5, align 8
  %19 = load i64, ptr %8, align 8
  %20 = mul i64 16, %19
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  %22 = call i64 @XXH3_mix2Accs(ptr noundef %17, ptr noundef %21)
  %23 = load i64, ptr %7, align 8
  %24 = add i64 %23, %22
  store i64 %24, ptr %7, align 8
  br label %25

25:                                               ; preds = %13
  %26 = load i64, ptr %8, align 8
  %27 = add i64 %26, 1
  store i64 %27, ptr %8, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load i64, ptr %7, align 8
  %30 = call i64 @XXH3_avalanche(i64 noundef %29)
  ret i64 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_accumulate(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store i64 0, ptr %11, align 8
  br label %13

13:                                               ; preds = %31, %5
  %14 = load i64, ptr %11, align 8
  %15 = load i64, ptr %9, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 8
  %19 = load i64, ptr %11, align 8
  %20 = mul i64 %19, 64
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  store ptr %21, ptr %12, align 8
  %22 = load ptr, ptr %12, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 320
  %24 = load ptr, ptr %10, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %12, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = load i64, ptr %11, align 8
  %29 = mul i64 %28, 8
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 %29
  call void %24(ptr noundef %25, ptr noundef %26, ptr noundef %30)
  br label %31

31:                                               ; preds = %17
  %32 = load i64, ptr %11, align 8
  %33 = add i64 %32, 1
  store i64 %33, ptr %11, align 8
  br label %13

34:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_mix2Accs(ptr noalias noundef %0, ptr noalias noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = call i64 @XXH_readLE64(ptr noundef %8)
  %10 = xor i64 %7, %9
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds i64, ptr %11, i64 1
  %13 = load i64, ptr %12, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i8, ptr %14, i64 8
  %16 = call i64 @XXH_readLE64(ptr noundef %15)
  %17 = xor i64 %13, %16
  %18 = call i64 @XXH3_mul128_fold64(i64 noundef %10, i64 noundef %17)
  ret i64 %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64>, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.pslli.q(<4 x i64>, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = load i64, ptr %10, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load i64, ptr %7, align 8
  %15 = load i64, ptr %8, align 8
  %16 = call i64 @XXH3_hashLong_64b_withSeed_internal(ptr noundef %13, i64 noundef %14, i64 noundef %15, ptr noundef @XXH3_accumulate_512_avx2, ptr noundef @XXH3_scrambleAcc_avx2, ptr noundef @XXH3_initCustomSecret_avx2)
  ret i64 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_hashLong_64b_withSeed_internal(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [192 x i8], align 32
  store ptr %0, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store i64 %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  %15 = load i64, ptr %10, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = load ptr, ptr %8, align 8
  %19 = load i64, ptr %9, align 8
  %20 = load ptr, ptr %11, align 8
  %21 = load ptr, ptr %12, align 8
  %22 = call i64 @XXH3_hashLong_64b_internal(ptr noundef %18, i64 noundef %19, ptr noundef @XXH3_kSecret, i64 noundef 192, ptr noundef %20, ptr noundef %21)
  store i64 %22, ptr %7, align 8
  br label %33

23:                                               ; preds = %6
  %24 = load ptr, ptr %13, align 8
  %25 = getelementptr inbounds [192 x i8], ptr %14, i64 0, i64 0
  %26 = load i64, ptr %10, align 8
  call void %24(ptr noundef %25, i64 noundef %26)
  %27 = load ptr, ptr %8, align 8
  %28 = load i64, ptr %9, align 8
  %29 = getelementptr inbounds [192 x i8], ptr %14, i64 0, i64 0
  %30 = load ptr, ptr %11, align 8
  %31 = load ptr, ptr %12, align 8
  %32 = call i64 @XXH3_hashLong_64b_internal(ptr noundef %27, i64 noundef %28, ptr noundef %29, i64 noundef 192, ptr noundef %30, ptr noundef %31)
  store i64 %32, ptr %7, align 8
  br label %33

33:                                               ; preds = %23, %17
  %34 = load i64, ptr %7, align 8
  ret i64 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_initCustomSecret_avx2(ptr noalias noundef %0, i64 noundef %1) #3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca <4 x i64>, align 32
  %14 = alloca <4 x i64>, align 32
  %15 = alloca <4 x i64>, align 32
  %16 = alloca <4 x i64>, align 32
  %17 = alloca <4 x i64>, align 32
  %18 = alloca <4 x i64>, align 32
  %19 = alloca <4 x i64>, align 32
  %20 = alloca <4 x i64>, align 32
  %21 = alloca <4 x i64>, align 32
  %22 = alloca <4 x i64>, align 32
  %23 = alloca <4 x i64>, align 32
  %24 = alloca <4 x i64>, align 32
  %25 = alloca <4 x i64>, align 32
  %26 = alloca ptr, align 8
  %27 = alloca i64, align 8
  %28 = alloca [1 x i8], align 1
  %29 = alloca [1 x i8], align 1
  %30 = alloca [1 x i8], align 1
  %31 = alloca <4 x i64>, align 32
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  store ptr %0, ptr %26, align 8
  store i64 %1, ptr %27, align 8
  br label %34

34:                                               ; preds = %2
  %35 = getelementptr inbounds [1 x i8], ptr %28, i64 0, i64 0
  br label %36

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds [1 x i8], ptr %29, i64 0, i64 0
  br label %39

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds [1 x i8], ptr %30, i64 0, i64 0
  br label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %26, align 8
  %44 = load i64, ptr %27, align 8
  %45 = sub i64 0, %44
  %46 = load i64, ptr %27, align 8
  %47 = load i64, ptr %27, align 8
  %48 = sub i64 0, %47
  %49 = load i64, ptr %27, align 8
  store i64 %45, ptr %9, align 8
  store i64 %46, ptr %10, align 8
  store i64 %48, ptr %11, align 8
  store i64 %49, ptr %12, align 8
  %50 = load i64, ptr %12, align 8
  %51 = insertelement <4 x i64> poison, i64 %50, i32 0
  %52 = load i64, ptr %11, align 8
  %53 = insertelement <4 x i64> %51, i64 %52, i32 1
  %54 = load i64, ptr %10, align 8
  %55 = insertelement <4 x i64> %53, i64 %54, i32 2
  %56 = load i64, ptr %9, align 8
  %57 = insertelement <4 x i64> %55, i64 %56, i32 3
  store <4 x i64> %57, ptr %13, align 32
  %58 = load <4 x i64>, ptr %13, align 32
  store <4 x i64> %58, ptr %31, align 32
  store ptr @XXH3_kSecret, ptr %32, align 8
  %59 = load ptr, ptr %26, align 8
  store ptr %59, ptr %33, align 8
  %60 = load ptr, ptr %33, align 8
  %61 = freeze ptr %60
  store ptr %61, ptr %33, align 8
  store ptr @XXH3_kSecret, ptr %3, align 8
  %62 = load ptr, ptr %3, align 8
  %63 = load <4 x i64>, ptr %62, align 32, !nontemporal !7
  %64 = load <4 x i64>, ptr %31, align 32
  store <4 x i64> %63, ptr %14, align 32
  store <4 x i64> %64, ptr %15, align 32
  %65 = load <4 x i64>, ptr %14, align 32
  %66 = load <4 x i64>, ptr %15, align 32
  %67 = add <4 x i64> %65, %66
  %68 = load ptr, ptr %33, align 8
  %69 = getelementptr inbounds <4 x i64>, ptr %68, i64 0
  store <4 x i64> %67, ptr %69, align 32
  store ptr getelementptr inbounds (<4 x i64>, ptr @XXH3_kSecret, i64 1), ptr %4, align 8
  %70 = load ptr, ptr %4, align 8
  %71 = load <4 x i64>, ptr %70, align 32, !nontemporal !7
  %72 = load <4 x i64>, ptr %31, align 32
  store <4 x i64> %71, ptr %16, align 32
  store <4 x i64> %72, ptr %17, align 32
  %73 = load <4 x i64>, ptr %16, align 32
  %74 = load <4 x i64>, ptr %17, align 32
  %75 = add <4 x i64> %73, %74
  %76 = load ptr, ptr %33, align 8
  %77 = getelementptr inbounds <4 x i64>, ptr %76, i64 1
  store <4 x i64> %75, ptr %77, align 32
  store ptr getelementptr inbounds (<4 x i64>, ptr @XXH3_kSecret, i64 2), ptr %5, align 8
  %78 = load ptr, ptr %5, align 8
  %79 = load <4 x i64>, ptr %78, align 32, !nontemporal !7
  %80 = load <4 x i64>, ptr %31, align 32
  store <4 x i64> %79, ptr %18, align 32
  store <4 x i64> %80, ptr %19, align 32
  %81 = load <4 x i64>, ptr %18, align 32
  %82 = load <4 x i64>, ptr %19, align 32
  %83 = add <4 x i64> %81, %82
  %84 = load ptr, ptr %33, align 8
  %85 = getelementptr inbounds <4 x i64>, ptr %84, i64 2
  store <4 x i64> %83, ptr %85, align 32
  store ptr getelementptr inbounds (<4 x i64>, ptr @XXH3_kSecret, i64 3), ptr %6, align 8
  %86 = load ptr, ptr %6, align 8
  %87 = load <4 x i64>, ptr %86, align 32, !nontemporal !7
  %88 = load <4 x i64>, ptr %31, align 32
  store <4 x i64> %87, ptr %20, align 32
  store <4 x i64> %88, ptr %21, align 32
  %89 = load <4 x i64>, ptr %20, align 32
  %90 = load <4 x i64>, ptr %21, align 32
  %91 = add <4 x i64> %89, %90
  %92 = load ptr, ptr %33, align 8
  %93 = getelementptr inbounds <4 x i64>, ptr %92, i64 3
  store <4 x i64> %91, ptr %93, align 32
  store ptr getelementptr inbounds (<4 x i64>, ptr @XXH3_kSecret, i64 4), ptr %7, align 8
  %94 = load ptr, ptr %7, align 8
  %95 = load <4 x i64>, ptr %94, align 32, !nontemporal !7
  %96 = load <4 x i64>, ptr %31, align 32
  store <4 x i64> %95, ptr %22, align 32
  store <4 x i64> %96, ptr %23, align 32
  %97 = load <4 x i64>, ptr %22, align 32
  %98 = load <4 x i64>, ptr %23, align 32
  %99 = add <4 x i64> %97, %98
  %100 = load ptr, ptr %33, align 8
  %101 = getelementptr inbounds <4 x i64>, ptr %100, i64 4
  store <4 x i64> %99, ptr %101, align 32
  store ptr getelementptr inbounds (<4 x i64>, ptr @XXH3_kSecret, i64 5), ptr %8, align 8
  %102 = load ptr, ptr %8, align 8
  %103 = load <4 x i64>, ptr %102, align 32, !nontemporal !7
  %104 = load <4 x i64>, ptr %31, align 32
  store <4 x i64> %103, ptr %24, align 32
  store <4 x i64> %104, ptr %25, align 32
  %105 = load <4 x i64>, ptr %24, align 32
  %106 = load <4 x i64>, ptr %25, align 32
  %107 = add <4 x i64> %105, %106
  %108 = load ptr, ptr %33, align 8
  %109 = getelementptr inbounds <4 x i64>, ptr %108, i64 5
  store <4 x i64> %107, ptr %109, align 32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH_writeLE64(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 8 %4, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_128bits_internal(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store i64 %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store i64 %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  %14 = load i64, ptr %9, align 8
  %15 = icmp ule i64 %14, 16
  br i1 %15, label %16, label %26

16:                                               ; preds = %6
  %17 = load ptr, ptr %8, align 8
  %18 = load i64, ptr %9, align 8
  %19 = load ptr, ptr %11, align 8
  %20 = load i64, ptr %10, align 8
  %21 = call { i64, i64 } @XXH3_len_0to16_128b(ptr noundef %17, i64 noundef %18, ptr noundef %19, i64 noundef %20)
  %22 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 0
  %23 = extractvalue { i64, i64 } %21, 0
  store i64 %23, ptr %22, align 8
  %24 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 1
  %25 = extractvalue { i64, i64 } %21, 1
  store i64 %25, ptr %24, align 8
  br label %66

26:                                               ; preds = %6
  %27 = load i64, ptr %9, align 8
  %28 = icmp ule i64 %27, 128
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load ptr, ptr %8, align 8
  %31 = load i64, ptr %9, align 8
  %32 = load ptr, ptr %11, align 8
  %33 = load i64, ptr %12, align 8
  %34 = load i64, ptr %10, align 8
  %35 = call { i64, i64 } @XXH3_len_17to128_128b(ptr noundef %30, i64 noundef %31, ptr noundef %32, i64 noundef %33, i64 noundef %34)
  %36 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 0
  %37 = extractvalue { i64, i64 } %35, 0
  store i64 %37, ptr %36, align 8
  %38 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 1
  %39 = extractvalue { i64, i64 } %35, 1
  store i64 %39, ptr %38, align 8
  br label %66

40:                                               ; preds = %26
  %41 = load i64, ptr %9, align 8
  %42 = icmp ule i64 %41, 240
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load ptr, ptr %8, align 8
  %45 = load i64, ptr %9, align 8
  %46 = load ptr, ptr %11, align 8
  %47 = load i64, ptr %12, align 8
  %48 = load i64, ptr %10, align 8
  %49 = call { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %44, i64 noundef %45, ptr noundef %46, i64 noundef %47, i64 noundef %48)
  %50 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 0
  %51 = extractvalue { i64, i64 } %49, 0
  store i64 %51, ptr %50, align 8
  %52 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 1
  %53 = extractvalue { i64, i64 } %49, 1
  store i64 %53, ptr %52, align 8
  br label %66

54:                                               ; preds = %40
  %55 = load ptr, ptr %13, align 8
  %56 = load ptr, ptr %8, align 8
  %57 = load i64, ptr %9, align 8
  %58 = load i64, ptr %10, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = load i64, ptr %12, align 8
  %61 = call { i64, i64 } %55(ptr noundef %56, i64 noundef %57, i64 noundef %58, ptr noundef %59, i64 noundef %60)
  %62 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 0
  %63 = extractvalue { i64, i64 } %61, 0
  store i64 %63, ptr %62, align 8
  %64 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 1
  %65 = extractvalue { i64, i64 } %61, 1
  store i64 %65, ptr %64, align 8
  br label %66

66:                                               ; preds = %54, %43, %29, %16
  %67 = load { i64, i64 }, ptr %7, align 8
  ret { i64, i64 } %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_hashLong_128b_default(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  %12 = load i64, ptr %9, align 8
  %13 = load ptr, ptr %10, align 8
  %14 = load i64, ptr %11, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = load i64, ptr %8, align 8
  %17 = call { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef %15, i64 noundef %16, ptr noundef @XXH3_kSecret, i64 noundef 192, ptr noundef @XXH3_accumulate_512_avx2, ptr noundef @XXH3_scrambleAcc_avx2)
  %18 = getelementptr inbounds nuw { i64, i64 }, ptr %6, i32 0, i32 0
  %19 = extractvalue { i64, i64 } %17, 0
  store i64 %19, ptr %18, align 8
  %20 = getelementptr inbounds nuw { i64, i64 }, ptr %6, i32 0, i32 1
  %21 = extractvalue { i64, i64 } %17, 1
  store i64 %21, ptr %20, align 8
  %22 = load { i64, i64 }, ptr %6, align 8
  ret { i64, i64 } %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_0to16_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  %12 = load i64, ptr %7, align 8
  %13 = icmp ugt i64 %12, 8
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load ptr, ptr %6, align 8
  %16 = load i64, ptr %7, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = load i64, ptr %9, align 8
  %19 = call { i64, i64 } @XXH3_len_9to16_128b(ptr noundef %15, i64 noundef %16, ptr noundef %17, i64 noundef %18)
  %20 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  %21 = extractvalue { i64, i64 } %19, 0
  store i64 %21, ptr %20, align 8
  %22 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  %23 = extractvalue { i64, i64 } %19, 1
  store i64 %23, ptr %22, align 8
  br label %75

24:                                               ; preds = %4
  %25 = load i64, ptr %7, align 8
  %26 = icmp uge i64 %25, 4
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 8
  %29 = load i64, ptr %7, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = load i64, ptr %9, align 8
  %32 = call { i64, i64 } @XXH3_len_4to8_128b(ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31)
  %33 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  %34 = extractvalue { i64, i64 } %32, 0
  store i64 %34, ptr %33, align 8
  %35 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  %36 = extractvalue { i64, i64 } %32, 1
  store i64 %36, ptr %35, align 8
  br label %75

37:                                               ; preds = %24
  %38 = load i64, ptr %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load ptr, ptr %6, align 8
  %42 = load i64, ptr %7, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = load i64, ptr %9, align 8
  %45 = call { i64, i64 } @XXH3_len_1to3_128b(ptr noundef %41, i64 noundef %42, ptr noundef %43, i64 noundef %44)
  %46 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  %47 = extractvalue { i64, i64 } %45, 0
  store i64 %47, ptr %46, align 8
  %48 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  %49 = extractvalue { i64, i64 } %45, 1
  store i64 %49, ptr %48, align 8
  br label %75

50:                                               ; preds = %37
  %51 = load ptr, ptr %8, align 8
  %52 = getelementptr inbounds i8, ptr %51, i64 64
  %53 = call i64 @XXH_readLE64(ptr noundef %52)
  %54 = load ptr, ptr %8, align 8
  %55 = getelementptr inbounds i8, ptr %54, i64 72
  %56 = call i64 @XXH_readLE64(ptr noundef %55)
  %57 = xor i64 %53, %56
  store i64 %57, ptr %10, align 8
  %58 = load ptr, ptr %8, align 8
  %59 = getelementptr inbounds i8, ptr %58, i64 80
  %60 = call i64 @XXH_readLE64(ptr noundef %59)
  %61 = load ptr, ptr %8, align 8
  %62 = getelementptr inbounds i8, ptr %61, i64 88
  %63 = call i64 @XXH_readLE64(ptr noundef %62)
  %64 = xor i64 %60, %63
  store i64 %64, ptr %11, align 8
  %65 = load i64, ptr %9, align 8
  %66 = load i64, ptr %10, align 8
  %67 = xor i64 %65, %66
  %68 = call i64 @XXH64_avalanche(i64 noundef %67)
  %69 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  store i64 %68, ptr %69, align 8
  %70 = load i64, ptr %9, align 8
  %71 = load i64, ptr %11, align 8
  %72 = xor i64 %70, %71
  %73 = call i64 @XXH64_avalanche(i64 noundef %72)
  %74 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 1
  store i64 %73, ptr %74, align 8
  br label %75

75:                                               ; preds = %50, %40, %27, %14
  %76 = load { i64, i64 }, ptr %5, align 8
  ret { i64, i64 } %76
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_17to128_128b(ptr noalias noundef %0, i64 noundef %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %13 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %14 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %15 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %16 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  %17 = load i64, ptr %10, align 8
  %18 = load i64, ptr %8, align 8
  %19 = mul i64 %18, -7046029288634856825
  %20 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 0
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 1
  store i64 0, ptr %21, align 8
  %22 = load i64, ptr %8, align 8
  %23 = icmp ugt i64 %22, 32
  br i1 %23, label %24, label %87

24:                                               ; preds = %5
  %25 = load i64, ptr %8, align 8
  %26 = icmp ugt i64 %25, 64
  br i1 %26, label %27, label %68

27:                                               ; preds = %24
  %28 = load i64, ptr %8, align 8
  %29 = icmp ugt i64 %28, 96
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds i8, ptr %31, i64 48
  %33 = load ptr, ptr %7, align 8
  %34 = load i64, ptr %8, align 8
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 %34
  %36 = getelementptr inbounds i8, ptr %35, i64 -64
  %37 = load ptr, ptr %9, align 8
  %38 = getelementptr inbounds i8, ptr %37, i64 96
  %39 = load i64, ptr %11, align 8
  %40 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 0
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = call { i64, i64 } @XXH128_mix32B(i64 %41, i64 %43, ptr noundef %32, ptr noundef %36, ptr noundef %38, i64 noundef %39)
  %45 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 0
  %46 = extractvalue { i64, i64 } %44, 0
  store i64 %46, ptr %45, align 8
  %47 = getelementptr inbounds nuw { i64, i64 }, ptr %13, i32 0, i32 1
  %48 = extractvalue { i64, i64 } %44, 1
  store i64 %48, ptr %47, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %13, i64 16, i1 false)
  br label %49

49:                                               ; preds = %30, %27
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds i8, ptr %50, i64 32
  %52 = load ptr, ptr %7, align 8
  %53 = load i64, ptr %8, align 8
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 %53
  %55 = getelementptr inbounds i8, ptr %54, i64 -48
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds i8, ptr %56, i64 64
  %58 = load i64, ptr %11, align 8
  %59 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 0
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 1
  %62 = load i64, ptr %61, align 8
  %63 = call { i64, i64 } @XXH128_mix32B(i64 %60, i64 %62, ptr noundef %51, ptr noundef %55, ptr noundef %57, i64 noundef %58)
  %64 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 0
  %65 = extractvalue { i64, i64 } %63, 0
  store i64 %65, ptr %64, align 8
  %66 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 1
  %67 = extractvalue { i64, i64 } %63, 1
  store i64 %67, ptr %66, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %14, i64 16, i1 false)
  br label %68

68:                                               ; preds = %49, %24
  %69 = load ptr, ptr %7, align 8
  %70 = getelementptr inbounds i8, ptr %69, i64 16
  %71 = load ptr, ptr %7, align 8
  %72 = load i64, ptr %8, align 8
  %73 = getelementptr inbounds nuw i8, ptr %71, i64 %72
  %74 = getelementptr inbounds i8, ptr %73, i64 -32
  %75 = load ptr, ptr %9, align 8
  %76 = getelementptr inbounds i8, ptr %75, i64 32
  %77 = load i64, ptr %11, align 8
  %78 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 0
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 1
  %81 = load i64, ptr %80, align 8
  %82 = call { i64, i64 } @XXH128_mix32B(i64 %79, i64 %81, ptr noundef %70, ptr noundef %74, ptr noundef %76, i64 noundef %77)
  %83 = getelementptr inbounds nuw { i64, i64 }, ptr %15, i32 0, i32 0
  %84 = extractvalue { i64, i64 } %82, 0
  store i64 %84, ptr %83, align 8
  %85 = getelementptr inbounds nuw { i64, i64 }, ptr %15, i32 0, i32 1
  %86 = extractvalue { i64, i64 } %82, 1
  store i64 %86, ptr %85, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %15, i64 16, i1 false)
  br label %87

87:                                               ; preds = %68, %5
  %88 = load ptr, ptr %7, align 8
  %89 = load ptr, ptr %7, align 8
  %90 = load i64, ptr %8, align 8
  %91 = getelementptr inbounds nuw i8, ptr %89, i64 %90
  %92 = getelementptr inbounds i8, ptr %91, i64 -16
  %93 = load ptr, ptr %9, align 8
  %94 = load i64, ptr %11, align 8
  %95 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 0
  %96 = load i64, ptr %95, align 8
  %97 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 1
  %98 = load i64, ptr %97, align 8
  %99 = call { i64, i64 } @XXH128_mix32B(i64 %96, i64 %98, ptr noundef %88, ptr noundef %92, ptr noundef %93, i64 noundef %94)
  %100 = getelementptr inbounds nuw { i64, i64 }, ptr %16, i32 0, i32 0
  %101 = extractvalue { i64, i64 } %99, 0
  store i64 %101, ptr %100, align 8
  %102 = getelementptr inbounds nuw { i64, i64 }, ptr %16, i32 0, i32 1
  %103 = extractvalue { i64, i64 } %99, 1
  store i64 %103, ptr %102, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %16, i64 16, i1 false)
  %104 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 0
  %105 = load i64, ptr %104, align 8
  %106 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 1
  %107 = load i64, ptr %106, align 8
  %108 = add i64 %105, %107
  %109 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 0
  store i64 %108, ptr %109, align 8
  %110 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 0
  %111 = load i64, ptr %110, align 8
  %112 = mul i64 %111, -7046029288634856825
  %113 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 1
  %114 = load i64, ptr %113, align 8
  %115 = mul i64 %114, -8796714831421723037
  %116 = add i64 %112, %115
  %117 = load i64, ptr %8, align 8
  %118 = load i64, ptr %11, align 8
  %119 = sub i64 %117, %118
  %120 = mul i64 %119, -4417276706812531889
  %121 = add i64 %116, %120
  %122 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 1
  store i64 %121, ptr %122, align 8
  %123 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 0
  %124 = load i64, ptr %123, align 8
  %125 = call i64 @XXH3_avalanche(i64 noundef %124)
  %126 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 0
  store i64 %125, ptr %126, align 8
  %127 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 1
  %128 = load i64, ptr %127, align 8
  %129 = call i64 @XXH3_avalanche(i64 noundef %128)
  %130 = sub i64 0, %129
  %131 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 1
  store i64 %130, ptr %131, align 8
  %132 = load { i64, i64 }, ptr %6, align 8
  ret { i64, i64 } %132
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_129to240_128b(ptr noalias noundef %0, i64 noundef %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %16 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %17 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  %18 = load i64, ptr %10, align 8
  %19 = load i64, ptr %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = sdiv i32 %20, 32
  store i32 %21, ptr %13, align 4
  %22 = load i64, ptr %8, align 8
  %23 = mul i64 %22, -7046029288634856825
  %24 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 0
  store i64 %23, ptr %24, align 8
  %25 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 1
  store i64 0, ptr %25, align 8
  store i32 0, ptr %14, align 4
  br label %26

26:                                               ; preds = %56, %5
  %27 = load i32, ptr %14, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load ptr, ptr %7, align 8
  %31 = load i32, ptr %14, align 4
  %32 = mul nsw i32 32, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %30, i64 %33
  %35 = load ptr, ptr %7, align 8
  %36 = load i32, ptr %14, align 4
  %37 = mul nsw i32 32, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %35, i64 %38
  %40 = getelementptr inbounds i8, ptr %39, i64 16
  %41 = load ptr, ptr %9, align 8
  %42 = load i32, ptr %14, align 4
  %43 = mul nsw i32 32, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  %46 = load i64, ptr %11, align 8
  %47 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 0
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = call { i64, i64 } @XXH128_mix32B(i64 %48, i64 %50, ptr noundef %34, ptr noundef %40, ptr noundef %45, i64 noundef %46)
  %52 = getelementptr inbounds nuw { i64, i64 }, ptr %15, i32 0, i32 0
  %53 = extractvalue { i64, i64 } %51, 0
  store i64 %53, ptr %52, align 8
  %54 = getelementptr inbounds nuw { i64, i64 }, ptr %15, i32 0, i32 1
  %55 = extractvalue { i64, i64 } %51, 1
  store i64 %55, ptr %54, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %15, i64 16, i1 false)
  br label %56

56:                                               ; preds = %29
  %57 = load i32, ptr %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %14, align 4
  br label %26

59:                                               ; preds = %26
  %60 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 0
  %61 = load i64, ptr %60, align 8
  %62 = call i64 @XXH3_avalanche(i64 noundef %61)
  %63 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 0
  store i64 %62, ptr %63, align 8
  %64 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 1
  %65 = load i64, ptr %64, align 8
  %66 = call i64 @XXH3_avalanche(i64 noundef %65)
  %67 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 1
  store i64 %66, ptr %67, align 8
  store i32 4, ptr %14, align 4
  br label %68

68:                                               ; preds = %101, %59
  %69 = load i32, ptr %14, align 4
  %70 = load i32, ptr %13, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %68
  %73 = load ptr, ptr %7, align 8
  %74 = load i32, ptr %14, align 4
  %75 = mul nsw i32 32, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %73, i64 %76
  %78 = load ptr, ptr %7, align 8
  %79 = load i32, ptr %14, align 4
  %80 = mul nsw i32 32, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %78, i64 %81
  %83 = getelementptr inbounds i8, ptr %82, i64 16
  %84 = load ptr, ptr %9, align 8
  %85 = getelementptr inbounds i8, ptr %84, i64 3
  %86 = load i32, ptr %14, align 4
  %87 = sub nsw i32 %86, 4
  %88 = mul nsw i32 32, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %85, i64 %89
  %91 = load i64, ptr %11, align 8
  %92 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 0
  %93 = load i64, ptr %92, align 8
  %94 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 1
  %95 = load i64, ptr %94, align 8
  %96 = call { i64, i64 } @XXH128_mix32B(i64 %93, i64 %95, ptr noundef %77, ptr noundef %83, ptr noundef %90, i64 noundef %91)
  %97 = getelementptr inbounds nuw { i64, i64 }, ptr %16, i32 0, i32 0
  %98 = extractvalue { i64, i64 } %96, 0
  store i64 %98, ptr %97, align 8
  %99 = getelementptr inbounds nuw { i64, i64 }, ptr %16, i32 0, i32 1
  %100 = extractvalue { i64, i64 } %96, 1
  store i64 %100, ptr %99, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %16, i64 16, i1 false)
  br label %101

101:                                              ; preds = %72
  %102 = load i32, ptr %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %14, align 4
  br label %68

104:                                              ; preds = %68
  %105 = load ptr, ptr %7, align 8
  %106 = load i64, ptr %8, align 8
  %107 = getelementptr inbounds nuw i8, ptr %105, i64 %106
  %108 = getelementptr inbounds i8, ptr %107, i64 -16
  %109 = load ptr, ptr %7, align 8
  %110 = load i64, ptr %8, align 8
  %111 = getelementptr inbounds nuw i8, ptr %109, i64 %110
  %112 = getelementptr inbounds i8, ptr %111, i64 -32
  %113 = load ptr, ptr %9, align 8
  %114 = getelementptr inbounds i8, ptr %113, i64 136
  %115 = getelementptr inbounds i8, ptr %114, i64 -17
  %116 = getelementptr inbounds i8, ptr %115, i64 -16
  %117 = load i64, ptr %11, align 8
  %118 = sub i64 0, %117
  %119 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 0
  %120 = load i64, ptr %119, align 8
  %121 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 1
  %122 = load i64, ptr %121, align 8
  %123 = call { i64, i64 } @XXH128_mix32B(i64 %120, i64 %122, ptr noundef %108, ptr noundef %112, ptr noundef %116, i64 noundef %118)
  %124 = getelementptr inbounds nuw { i64, i64 }, ptr %17, i32 0, i32 0
  %125 = extractvalue { i64, i64 } %123, 0
  store i64 %125, ptr %124, align 8
  %126 = getelementptr inbounds nuw { i64, i64 }, ptr %17, i32 0, i32 1
  %127 = extractvalue { i64, i64 } %123, 1
  store i64 %127, ptr %126, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %17, i64 16, i1 false)
  %128 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 0
  %129 = load i64, ptr %128, align 8
  %130 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 1
  %131 = load i64, ptr %130, align 8
  %132 = add i64 %129, %131
  %133 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 0
  store i64 %132, ptr %133, align 8
  %134 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 0
  %135 = load i64, ptr %134, align 8
  %136 = mul i64 %135, -7046029288634856825
  %137 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %12, i32 0, i32 1
  %138 = load i64, ptr %137, align 8
  %139 = mul i64 %138, -8796714831421723037
  %140 = add i64 %136, %139
  %141 = load i64, ptr %8, align 8
  %142 = load i64, ptr %11, align 8
  %143 = sub i64 %141, %142
  %144 = mul i64 %143, -4417276706812531889
  %145 = add i64 %140, %144
  %146 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 1
  store i64 %145, ptr %146, align 8
  %147 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 0
  %148 = load i64, ptr %147, align 8
  %149 = call i64 @XXH3_avalanche(i64 noundef %148)
  %150 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 0
  store i64 %149, ptr %150, align 8
  %151 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 1
  %152 = load i64, ptr %151, align 8
  %153 = call i64 @XXH3_avalanche(i64 noundef %152)
  %154 = sub i64 0, %153
  %155 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %6, i32 0, i32 1
  store i64 %154, ptr %155, align 8
  %156 = load { i64, i64 }, ptr %6, align 8
  ret { i64, i64 } %156
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_9to16_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 32
  %17 = call i64 @XXH_readLE64(ptr noundef %16)
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds i8, ptr %18, i64 40
  %20 = call i64 @XXH_readLE64(ptr noundef %19)
  %21 = xor i64 %17, %20
  %22 = load i64, ptr %9, align 8
  %23 = sub i64 %21, %22
  store i64 %23, ptr %10, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 48
  %26 = call i64 @XXH_readLE64(ptr noundef %25)
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds i8, ptr %27, i64 56
  %29 = call i64 @XXH_readLE64(ptr noundef %28)
  %30 = xor i64 %26, %29
  %31 = load i64, ptr %9, align 8
  %32 = add i64 %30, %31
  store i64 %32, ptr %11, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = call i64 @XXH_readLE64(ptr noundef %33)
  store i64 %34, ptr %12, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i64, ptr %7, align 8
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %36
  %38 = getelementptr inbounds i8, ptr %37, i64 -8
  %39 = call i64 @XXH_readLE64(ptr noundef %38)
  store i64 %39, ptr %13, align 8
  %40 = load i64, ptr %12, align 8
  %41 = load i64, ptr %13, align 8
  %42 = xor i64 %40, %41
  %43 = load i64, ptr %10, align 8
  %44 = xor i64 %42, %43
  %45 = call { i64, i64 } @XXH_mult64to128(i64 noundef %44, i64 noundef -7046029288634856825)
  %46 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 0
  %47 = extractvalue { i64, i64 } %45, 0
  store i64 %47, ptr %46, align 8
  %48 = getelementptr inbounds nuw { i64, i64 }, ptr %14, i32 0, i32 1
  %49 = extractvalue { i64, i64 } %45, 1
  store i64 %49, ptr %48, align 8
  %50 = load i64, ptr %7, align 8
  %51 = sub i64 %50, 1
  %52 = shl i64 %51, 54
  %53 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %14, i32 0, i32 0
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, %52
  store i64 %55, ptr %53, align 8
  %56 = load i64, ptr %11, align 8
  %57 = load i64, ptr %13, align 8
  %58 = xor i64 %57, %56
  store i64 %58, ptr %13, align 8
  %59 = load i64, ptr %13, align 8
  %60 = load i64, ptr %13, align 8
  %61 = trunc i64 %60 to i32
  %62 = zext i32 %61 to i64
  %63 = mul i64 %62, 2246822518
  %64 = add i64 %59, %63
  %65 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %14, i32 0, i32 1
  %66 = load i64, ptr %65, align 8
  %67 = add i64 %66, %64
  store i64 %67, ptr %65, align 8
  %68 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %14, i32 0, i32 1
  %69 = load i64, ptr %68, align 8
  %70 = call i64 @XXH_swap64(i64 noundef %69)
  %71 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %14, i32 0, i32 0
  %72 = load i64, ptr %71, align 8
  %73 = xor i64 %72, %70
  store i64 %73, ptr %71, align 8
  %74 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %14, i32 0, i32 0
  %75 = load i64, ptr %74, align 8
  %76 = call { i64, i64 } @XXH_mult64to128(i64 noundef %75, i64 noundef -4417276706812531889)
  %77 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  %78 = extractvalue { i64, i64 } %76, 0
  store i64 %78, ptr %77, align 8
  %79 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  %80 = extractvalue { i64, i64 } %76, 1
  store i64 %80, ptr %79, align 8
  %81 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %14, i32 0, i32 1
  %82 = load i64, ptr %81, align 8
  %83 = mul i64 %82, -4417276706812531889
  %84 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 1
  %85 = load i64, ptr %84, align 8
  %86 = add i64 %85, %83
  store i64 %86, ptr %84, align 8
  %87 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  %88 = load i64, ptr %87, align 8
  %89 = call i64 @XXH3_avalanche(i64 noundef %88)
  %90 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  store i64 %89, ptr %90, align 8
  %91 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 1
  %92 = load i64, ptr %91, align 8
  %93 = call i64 @XXH3_avalanche(i64 noundef %92)
  %94 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 1
  store i64 %93, ptr %94, align 8
  %95 = load { i64, i64 }, ptr %5, align 8
  ret { i64, i64 } %95
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_4to8_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  %15 = load i64, ptr %9, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @XXH_swap32(i32 noundef %16)
  %18 = zext i32 %17 to i64
  %19 = shl i64 %18, 32
  %20 = load i64, ptr %9, align 8
  %21 = xor i64 %20, %19
  store i64 %21, ptr %9, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = call i32 @XXH_readLE32(ptr noundef %22)
  store i32 %23, ptr %10, align 4
  %24 = load ptr, ptr %6, align 8
  %25 = load i64, ptr %7, align 8
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 %25
  %27 = getelementptr inbounds i8, ptr %26, i64 -4
  %28 = call i32 @XXH_readLE32(ptr noundef %27)
  store i32 %28, ptr %11, align 4
  %29 = load i32, ptr %10, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, ptr %11, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 %32, 32
  %34 = add i64 %30, %33
  store i64 %34, ptr %12, align 8
  %35 = load ptr, ptr %8, align 8
  %36 = getelementptr inbounds i8, ptr %35, i64 16
  %37 = call i64 @XXH_readLE64(ptr noundef %36)
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds i8, ptr %38, i64 24
  %40 = call i64 @XXH_readLE64(ptr noundef %39)
  %41 = xor i64 %37, %40
  %42 = load i64, ptr %9, align 8
  %43 = add i64 %41, %42
  store i64 %43, ptr %13, align 8
  %44 = load i64, ptr %12, align 8
  %45 = load i64, ptr %13, align 8
  %46 = xor i64 %44, %45
  store i64 %46, ptr %14, align 8
  %47 = load i64, ptr %14, align 8
  %48 = load i64, ptr %7, align 8
  %49 = shl i64 %48, 2
  %50 = add i64 -7046029288634856825, %49
  %51 = call { i64, i64 } @XXH_mult64to128(i64 noundef %47, i64 noundef %50)
  %52 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  %53 = extractvalue { i64, i64 } %51, 0
  store i64 %53, ptr %52, align 8
  %54 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  %55 = extractvalue { i64, i64 } %51, 1
  store i64 %55, ptr %54, align 8
  %56 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  %57 = load i64, ptr %56, align 8
  %58 = shl i64 %57, 1
  %59 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %60, %58
  store i64 %61, ptr %59, align 8
  %62 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 1
  %63 = load i64, ptr %62, align 8
  %64 = lshr i64 %63, 3
  %65 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  %66 = load i64, ptr %65, align 8
  %67 = xor i64 %66, %64
  store i64 %67, ptr %65, align 8
  %68 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  %69 = load i64, ptr %68, align 8
  %70 = call i64 @XXH_xorshift64(i64 noundef %69, i32 noundef 35)
  %71 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  store i64 %70, ptr %71, align 8
  %72 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  %73 = load i64, ptr %72, align 8
  %74 = mul i64 %73, -6939452855193903323
  store i64 %74, ptr %72, align 8
  %75 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  %76 = load i64, ptr %75, align 8
  %77 = call i64 @XXH_xorshift64(i64 noundef %76, i32 noundef 28)
  %78 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  store i64 %77, ptr %78, align 8
  %79 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 1
  %80 = load i64, ptr %79, align 8
  %81 = call i64 @XXH3_avalanche(i64 noundef %80)
  %82 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 1
  store i64 %81, ptr %82, align 8
  %83 = load { i64, i64 }, ptr %5, align 8
  ret { i64, i64 } %83
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_1to3_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds i8, ptr %19, i64 0
  %21 = load i8, ptr %20, align 1
  store i8 %21, ptr %10, align 1
  %22 = load ptr, ptr %6, align 8
  %23 = load i64, ptr %7, align 8
  %24 = lshr i64 %23, 1
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 %24
  %26 = load i8, ptr %25, align 1
  store i8 %26, ptr %11, align 1
  %27 = load ptr, ptr %6, align 8
  %28 = load i64, ptr %7, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 %29
  %31 = load i8, ptr %30, align 1
  store i8 %31, ptr %12, align 1
  %32 = load i8, ptr %10, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 16
  %35 = load i8, ptr %11, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 24
  %38 = or i32 %34, %37
  %39 = load i8, ptr %12, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 0
  %42 = or i32 %38, %41
  %43 = load i64, ptr %7, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 8
  %46 = or i32 %42, %45
  store i32 %46, ptr %13, align 4
  %47 = load i32, ptr %13, align 4
  %48 = call i32 @XXH_swap32(i32 noundef %47)
  %49 = call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  store i32 %49, ptr %14, align 4
  %50 = load ptr, ptr %8, align 8
  %51 = call i32 @XXH_readLE32(ptr noundef %50)
  %52 = load ptr, ptr %8, align 8
  %53 = getelementptr inbounds i8, ptr %52, i64 4
  %54 = call i32 @XXH_readLE32(ptr noundef %53)
  %55 = xor i32 %51, %54
  %56 = zext i32 %55 to i64
  %57 = load i64, ptr %9, align 8
  %58 = add i64 %56, %57
  store i64 %58, ptr %15, align 8
  %59 = load ptr, ptr %8, align 8
  %60 = getelementptr inbounds i8, ptr %59, i64 8
  %61 = call i32 @XXH_readLE32(ptr noundef %60)
  %62 = load ptr, ptr %8, align 8
  %63 = getelementptr inbounds i8, ptr %62, i64 12
  %64 = call i32 @XXH_readLE32(ptr noundef %63)
  %65 = xor i32 %61, %64
  %66 = zext i32 %65 to i64
  %67 = load i64, ptr %9, align 8
  %68 = sub i64 %66, %67
  store i64 %68, ptr %16, align 8
  %69 = load i32, ptr %13, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, ptr %15, align 8
  %72 = xor i64 %70, %71
  store i64 %72, ptr %17, align 8
  %73 = load i32, ptr %14, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, ptr %16, align 8
  %76 = xor i64 %74, %75
  store i64 %76, ptr %18, align 8
  %77 = load i64, ptr %17, align 8
  %78 = call i64 @XXH64_avalanche(i64 noundef %77)
  %79 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  store i64 %78, ptr %79, align 8
  %80 = load i64, ptr %18, align 8
  %81 = call i64 @XXH64_avalanche(i64 noundef %80)
  %82 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 1
  store i64 %81, ptr %82, align 8
  %83 = load { i64, i64 }, ptr %5, align 8
  ret { i64, i64 } %83
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH128_mix32B(i64 %0, i64 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 {
  %7 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %8 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = getelementptr inbounds nuw { i64, i64 }, ptr %8, i32 0, i32 0
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds nuw { i64, i64 }, ptr %8, i32 0, i32 1
  store i64 %1, ptr %14, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store i64 %5, ptr %12, align 8
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr inbounds i8, ptr %16, i64 0
  %18 = load i64, ptr %12, align 8
  %19 = call i64 @XXH3_mix16B(ptr noundef %15, ptr noundef %17, i64 noundef %18)
  %20 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %8, i32 0, i32 0
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %19
  store i64 %22, ptr %20, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = call i64 @XXH_readLE64(ptr noundef %23)
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 8
  %27 = call i64 @XXH_readLE64(ptr noundef %26)
  %28 = add i64 %24, %27
  %29 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %8, i32 0, i32 0
  %30 = load i64, ptr %29, align 8
  %31 = xor i64 %30, %28
  store i64 %31, ptr %29, align 8
  %32 = load ptr, ptr %10, align 8
  %33 = load ptr, ptr %11, align 8
  %34 = getelementptr inbounds i8, ptr %33, i64 16
  %35 = load i64, ptr %12, align 8
  %36 = call i64 @XXH3_mix16B(ptr noundef %32, ptr noundef %34, i64 noundef %35)
  %37 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %8, i32 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %36
  store i64 %39, ptr %37, align 8
  %40 = load ptr, ptr %9, align 8
  %41 = call i64 @XXH_readLE64(ptr noundef %40)
  %42 = load ptr, ptr %9, align 8
  %43 = getelementptr inbounds i8, ptr %42, i64 8
  %44 = call i64 @XXH_readLE64(ptr noundef %43)
  %45 = add i64 %41, %44
  %46 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %8, i32 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = xor i64 %47, %45
  store i64 %48, ptr %46, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 16, i1 false)
  %49 = load { i64, i64 }, ptr %7, align 8
  ret { i64, i64 } %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_hashLong_128b_internal(ptr noalias noundef %0, i64 noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [8 x i64], align 32
  %15 = alloca [1 x i8], align 1
  store ptr %0, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store i64 %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %14, ptr align 32 @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false)
  %16 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %17 = load ptr, ptr %8, align 8
  %18 = load i64, ptr %9, align 8
  %19 = load ptr, ptr %10, align 8
  %20 = load i64, ptr %11, align 8
  %21 = load ptr, ptr %12, align 8
  %22 = load ptr, ptr %13, align 8
  call void @XXH3_hashLong_internal_loop(ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, i64 noundef %20, ptr noundef %21, ptr noundef %22)
  br label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds [1 x i8], ptr %15, i64 0, i64 0
  br label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %27 = load ptr, ptr %10, align 8
  %28 = getelementptr inbounds i8, ptr %27, i64 11
  %29 = load i64, ptr %9, align 8
  %30 = mul i64 %29, -7046029288634856825
  %31 = call i64 @XXH3_mergeAccs(ptr noundef %26, ptr noundef %28, i64 noundef %30)
  %32 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %7, i32 0, i32 0
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %34 = load ptr, ptr %10, align 8
  %35 = load i64, ptr %11, align 8
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  %37 = getelementptr inbounds i8, ptr %36, i64 -64
  %38 = getelementptr inbounds i8, ptr %37, i64 -11
  %39 = load i64, ptr %9, align 8
  %40 = mul i64 %39, -4417276706812531889
  %41 = xor i64 %40, -1
  %42 = call i64 @XXH3_mergeAccs(ptr noundef %33, ptr noundef %38, i64 noundef %41)
  %43 = getelementptr inbounds nuw %struct.XXH_NAMESPACEXXH128_hash_t, ptr %7, i32 0, i32 1
  store i64 %42, ptr %43, align 8
  %44 = load { i64, i64 }, ptr %7, align 8
  ret { i64, i64 } %44
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{i64 2151966428}
!7 = !{i32 1}
