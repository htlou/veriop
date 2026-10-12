; ModuleID = 'history-eq/c/xxHash/a4ecded/body-proof/long_secret.c'
source_filename = "history-eq/c/xxHash/a4ecded/body-proof/long_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-conda-linux-gnu"

%struct.XXH_NAMESPACEXXH128_hash_t = type { i64, i64 }

@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @target_64sec192_len256(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call i64 @XXH_INLINE_XXH3_64bits_withSecret(ptr noundef %5, i64 noundef 256, ptr noundef %6, i64 noundef 192)
  ret i64 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @XXH_INLINE_XXH3_64bits_withSecret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load i64, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load i64, ptr %8, align 8
  %13 = call i64 @XXH3_64bits_internal(ptr noundef %9, i64 noundef %10, i64 noundef 0, ptr noundef %11, i64 noundef %12, ptr noundef @XXH3_hashLong_64b_withSecret)
  ret i64 %13
}

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4) #0 {
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
  %12 = load ptr, ptr %6, align 8
  %13 = load i64, ptr %7, align 8
  %14 = load ptr, ptr %9, align 8
  %15 = load i64, ptr %10, align 8
  %16 = call i64 @XXH3_hashLong_64b_internal(ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, ptr noundef @XXH3_accumulate_512_scalar, ptr noundef @XXH3_scrambleAcc_scalar)
  ret i64 %16
}

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
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
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
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
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
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
  %72 = getelementptr inbounds i8, ptr %70, i64 %71
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
  %91 = getelementptr inbounds i8, ptr %89, i64 %90
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

; Function Attrs: noinline nounwind uwtable
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
  br label %20, !llvm.loop !6

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
  br label %44, !llvm.loop !8

68:                                               ; preds = %44
  %69 = load ptr, ptr %6, align 8
  %70 = load i64, ptr %7, align 8
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
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

; Function Attrs: noinline nounwind uwtable
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
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
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

; Function Attrs: noinline nounwind uwtable
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
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
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

; Function Attrs: noinline nounwind uwtable
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
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = load i8, ptr %21, align 1
  store i8 %22, ptr %10, align 1
  %23 = load ptr, ptr %5, align 8
  %24 = load i64, ptr %6, align 8
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds i8, ptr %23, i64 %25
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

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
define internal i64 @XXH_readLE64(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @XXH_read64(ptr noundef %3)
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
define internal i64 @XXH3_mul128_fold64(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.XXH_NAMESPACEXXH128_hash_t, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = load i64, ptr %4, align 8
  %8 = call { i64, i64 } @XXH_mult64to128(i64 noundef %6, i64 noundef %7)
  %9 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0
  %10 = extractvalue { i64, i64 } %8, 0
  store i64 %10, ptr %9, align 8
  %11 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1
  %12 = extractvalue { i64, i64 } %8, 1
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 0
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.XXH_NAMESPACEXXH128_hash_t, ptr %5, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = xor i64 %14, %16
  ret i64 %17
}

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
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
  %14 = getelementptr inbounds %struct.XXH_NAMESPACEXXH128_hash_t, ptr %3, i32 0, i32 0
  store i64 %13, ptr %14, align 8
  %15 = load i128, ptr %6, align 16
  %16 = lshr i128 %15, 64
  %17 = trunc i128 %16 to i64
  %18 = getelementptr inbounds %struct.XXH_NAMESPACEXXH128_hash_t, ptr %3, i32 0, i32 1
  store i64 %17, ptr %18, align 8
  %19 = load { i64, i64 }, ptr %3, align 8
  ret { i64, i64 } %19
}

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
define internal i32 @XXH_readLE32(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @XXH_read32(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
define internal i32 @XXH_read32(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 1 %4, i64 4, i1 false)
  %5 = load i32, ptr %3, align 4
  ret i32 %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @XXH_read64(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 1 %4, i64 8, i1 false)
  %5 = load i64, ptr %3, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
define internal i64 @XXH3_hashLong_64b_internal(ptr noalias noundef %0, i64 noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [8 x i64], align 8
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %14 = getelementptr inbounds [8 x i64], ptr %13, i64 0, i64 0
  %15 = load ptr, ptr %7, align 8
  %16 = load i64, ptr %8, align 8
  %17 = load ptr, ptr %9, align 8
  %18 = load i64, ptr %10, align 8
  %19 = load ptr, ptr %11, align 8
  %20 = load ptr, ptr %12, align 8
  call void @XXH3_hashLong_internal_loop(ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20)
  br label %21

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds [8 x i64], ptr %13, i64 0, i64 0
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 11
  %26 = load i64, ptr %8, align 8
  %27 = mul i64 %26, -7046029288634856825
  %28 = call i64 @XXH3_mergeAccs(ptr noundef %23, ptr noundef %25, i64 noundef %27)
  ret i64 %28
}

; Function Attrs: noinline nounwind uwtable
define internal void @XXH3_accumulate_512_scalar(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %13 = load ptr, ptr %4, align 8
  store ptr %13, ptr %7, align 8
  %14 = load ptr, ptr %5, align 8
  store ptr %14, ptr %8, align 8
  %15 = load ptr, ptr %6, align 8
  store ptr %15, ptr %9, align 8
  store i64 0, ptr %10, align 8
  br label %16

16:                                               ; preds = %53, %3
  %17 = load i64, ptr %10, align 8
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %56

19:                                               ; preds = %16
  %20 = load ptr, ptr %8, align 8
  %21 = load i64, ptr %10, align 8
  %22 = mul i64 8, %21
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = call i64 @XXH_readLE64(ptr noundef %23)
  store i64 %24, ptr %11, align 8
  %25 = load i64, ptr %11, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = load i64, ptr %10, align 8
  %28 = mul i64 %27, 8
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  %30 = call i64 @XXH_readLE64(ptr noundef %29)
  %31 = xor i64 %25, %30
  store i64 %31, ptr %12, align 8
  %32 = load i64, ptr %11, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = load i64, ptr %10, align 8
  %35 = xor i64 %34, 1
  %36 = getelementptr inbounds i64, ptr %33, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = add i64 %37, %32
  store i64 %38, ptr %36, align 8
  %39 = load i64, ptr %12, align 8
  %40 = and i64 %39, 4294967295
  %41 = trunc i64 %40 to i32
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %12, align 8
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = zext i32 %45 to i64
  %47 = mul i64 %42, %46
  %48 = load ptr, ptr %7, align 8
  %49 = load i64, ptr %10, align 8
  %50 = getelementptr inbounds i64, ptr %48, i64 %49
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, %47
  store i64 %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %19
  %54 = load i64, ptr %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, ptr %10, align 8
  br label %16, !llvm.loop !9

56:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @XXH3_scrambleAcc_scalar(ptr noalias noundef %0, ptr noalias noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %10, ptr %5, align 8
  %11 = load ptr, ptr %4, align 8
  store ptr %11, ptr %6, align 8
  store i64 0, ptr %7, align 8
  br label %12

12:                                               ; preds = %36, %2
  %13 = load i64, ptr %7, align 8
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load ptr, ptr %6, align 8
  %17 = load i64, ptr %7, align 8
  %18 = mul i64 8, %17
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = call i64 @XXH_readLE64(ptr noundef %19)
  store i64 %20, ptr %8, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = load i64, ptr %7, align 8
  %23 = getelementptr inbounds i64, ptr %21, i64 %22
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %9, align 8
  %25 = load i64, ptr %9, align 8
  %26 = call i64 @XXH_xorshift64(i64 noundef %25, i32 noundef 47)
  store i64 %26, ptr %9, align 8
  %27 = load i64, ptr %8, align 8
  %28 = load i64, ptr %9, align 8
  %29 = xor i64 %28, %27
  store i64 %29, ptr %9, align 8
  %30 = load i64, ptr %9, align 8
  %31 = mul i64 %30, 2654435761
  store i64 %31, ptr %9, align 8
  %32 = load i64, ptr %9, align 8
  %33 = load ptr, ptr %5, align 8
  %34 = load i64, ptr %7, align 8
  %35 = getelementptr inbounds i64, ptr %33, i64 %34
  store i64 %32, ptr %35, align 8
  br label %36

36:                                               ; preds = %15
  %37 = load i64, ptr %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, ptr %7, align 8
  br label %12, !llvm.loop !10

39:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
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
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load ptr, ptr %11, align 8
  %42 = load i64, ptr %15, align 8
  %43 = load ptr, ptr %13, align 8
  call void @XXH3_accumulate(ptr noundef %35, ptr noundef %40, ptr noundef %41, i64 noundef %42, ptr noundef %43)
  %44 = load ptr, ptr %14, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load ptr, ptr %11, align 8
  %47 = load i64, ptr %12, align 8
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 -64
  call void %44(ptr noundef %45, ptr noundef %49)
  br label %50

50:                                               ; preds = %34
  %51 = load i64, ptr %18, align 8
  %52 = add i64 %51, 1
  store i64 %52, ptr %18, align 8
  br label %30, !llvm.loop !11

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
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = load ptr, ptr %11, align 8
  %68 = load i64, ptr %19, align 8
  %69 = load ptr, ptr %13, align 8
  call void @XXH3_accumulate(ptr noundef %61, ptr noundef %66, ptr noundef %67, i64 noundef %68, ptr noundef %69)
  %70 = load ptr, ptr %9, align 8
  %71 = load i64, ptr %10, align 8
  %72 = getelementptr inbounds i8, ptr %70, i64 %71
  %73 = getelementptr inbounds i8, ptr %72, i64 -64
  store ptr %73, ptr %20, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = load ptr, ptr %8, align 8
  %76 = load ptr, ptr %20, align 8
  %77 = load ptr, ptr %11, align 8
  %78 = load i64, ptr %12, align 8
  %79 = getelementptr inbounds i8, ptr %77, i64 %78
  %80 = getelementptr inbounds i8, ptr %79, i64 -64
  %81 = getelementptr inbounds i8, ptr %80, i64 -7
  call void %74(ptr noundef %75, ptr noundef %76, ptr noundef %81)
  ret void
}

; Function Attrs: noinline nounwind uwtable
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
  %17 = getelementptr inbounds i64, ptr %14, i64 %16
  %18 = load ptr, ptr %5, align 8
  %19 = load i64, ptr %8, align 8
  %20 = mul i64 16, %19
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = call i64 @XXH3_mix2Accs(ptr noundef %17, ptr noundef %21)
  %23 = load i64, ptr %7, align 8
  %24 = add i64 %23, %22
  store i64 %24, ptr %7, align 8
  br label %25

25:                                               ; preds = %13
  %26 = load i64, ptr %8, align 8
  %27 = add i64 %26, 1
  store i64 %27, ptr %8, align 8
  br label %10, !llvm.loop !12

28:                                               ; preds = %10
  %29 = load i64, ptr %7, align 8
  %30 = call i64 @XXH3_avalanche(i64 noundef %29)
  ret i64 %30
}

; Function Attrs: noinline nounwind uwtable
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
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  store ptr %21, ptr %12, align 8
  %22 = load ptr, ptr %12, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 320
  call void @llvm.prefetch.p0(ptr %23, i32 0, i32 3, i32 1)
  %24 = load ptr, ptr %10, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %12, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = load i64, ptr %11, align 8
  %29 = mul i64 %28, 8
  %30 = getelementptr inbounds i8, ptr %27, i64 %29
  call void %24(ptr noundef %25, ptr noundef %26, ptr noundef %30)
  br label %31

31:                                               ; preds = %17
  %32 = load i64, ptr %11, align 8
  %33 = add i64 %32, 1
  store i64 %33, ptr %11, align 8
  br label %13, !llvm.loop !13

34:                                               ; preds = %13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: noinline nounwind uwtable
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

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 18.1.8 (https://github.com/conda-forge/clangdev-feedstock 3c15221e001c9fe87fcc807876aa06d599616b01)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
