; ModuleID = '3e41aba/new/xxhash.c'
source_filename = "3e41aba/new/xxhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH32_state_s = type { i32, i32, [4 x i32], [4 x i32], i32, i32 }
%struct.XXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }
%struct.XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }
%struct.XXH128_canonical_t = type { [16 x i8] }
%struct.XXH128_hash_t = type { i64, i64 }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 32
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 32

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH_versionNumber() #0 {
  ret i32 801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = load i32, ptr %6, align 4
  %10 = call i32 @XXH32_endian_align(ptr noundef %7, i64 noundef %8, i32 noundef %9, i32 noundef 1)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH32_endian_align(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %16 = load ptr, ptr %5, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %4
  %20 = load i64, ptr %6, align 8
  %21 = icmp uge i64 %20, 16
  br i1 %21, label %22, label %82

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8
  %24 = load i64, ptr %6, align 8
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %24
  store ptr %25, ptr %10, align 8
  %26 = load ptr, ptr %10, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 -15
  store ptr %27, ptr %11, align 8
  %28 = load i32, ptr %7, align 4
  %29 = add i32 %28, -1640531535
  %30 = add i32 %29, -2048144777
  store i32 %30, ptr %12, align 4
  %31 = load i32, ptr %7, align 4
  %32 = add i32 %31, -2048144777
  store i32 %32, ptr %13, align 4
  %33 = load i32, ptr %7, align 4
  %34 = add i32 %33, 0
  store i32 %34, ptr %14, align 4
  %35 = load i32, ptr %7, align 4
  %36 = sub i32 %35, -1640531535
  store i32 %36, ptr %15, align 4
  br label %37

37:                                               ; preds = %66, %22
  %38 = load i32, ptr %12, align 4
  %39 = load ptr, ptr %5, align 8
  %40 = load i32, ptr %8, align 4
  %41 = call i32 @XXH_readLE32_align(ptr noundef %39, i32 noundef %40)
  %42 = call i32 @XXH32_round(i32 noundef %38, i32 noundef %41)
  store i32 %42, ptr %12, align 4
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds i8, ptr %43, i64 4
  store ptr %44, ptr %5, align 8
  %45 = load i32, ptr %13, align 4
  %46 = load ptr, ptr %5, align 8
  %47 = load i32, ptr %8, align 4
  %48 = call i32 @XXH_readLE32_align(ptr noundef %46, i32 noundef %47)
  %49 = call i32 @XXH32_round(i32 noundef %45, i32 noundef %48)
  store i32 %49, ptr %13, align 4
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds i8, ptr %50, i64 4
  store ptr %51, ptr %5, align 8
  %52 = load i32, ptr %14, align 4
  %53 = load ptr, ptr %5, align 8
  %54 = load i32, ptr %8, align 4
  %55 = call i32 @XXH_readLE32_align(ptr noundef %53, i32 noundef %54)
  %56 = call i32 @XXH32_round(i32 noundef %52, i32 noundef %55)
  store i32 %56, ptr %14, align 4
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr inbounds i8, ptr %57, i64 4
  store ptr %58, ptr %5, align 8
  %59 = load i32, ptr %15, align 4
  %60 = load ptr, ptr %5, align 8
  %61 = load i32, ptr %8, align 4
  %62 = call i32 @XXH_readLE32_align(ptr noundef %60, i32 noundef %61)
  %63 = call i32 @XXH32_round(i32 noundef %59, i32 noundef %62)
  store i32 %63, ptr %15, align 4
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds i8, ptr %64, i64 4
  store ptr %65, ptr %5, align 8
  br label %66

66:                                               ; preds = %37
  %67 = load ptr, ptr %5, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = icmp ult ptr %67, %68
  br i1 %69, label %37, label %70, !llvm.loop !6

70:                                               ; preds = %66
  %71 = load i32, ptr %12, align 4
  %72 = call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 1)
  %73 = load i32, ptr %13, align 4
  %74 = call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 7)
  %75 = add i32 %72, %74
  %76 = load i32, ptr %14, align 4
  %77 = call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 12)
  %78 = add i32 %75, %77
  %79 = load i32, ptr %15, align 4
  %80 = call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 18)
  %81 = add i32 %78, %80
  store i32 %81, ptr %9, align 4
  br label %85

82:                                               ; preds = %19
  %83 = load i32, ptr %7, align 4
  %84 = add i32 %83, 374761393
  store i32 %84, ptr %9, align 4
  br label %85

85:                                               ; preds = %82, %70
  %86 = load i64, ptr %6, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, ptr %9, align 4
  %89 = add i32 %88, %87
  store i32 %89, ptr %9, align 4
  %90 = load i32, ptr %9, align 4
  %91 = load ptr, ptr %5, align 8
  %92 = load i64, ptr %6, align 8
  %93 = and i64 %92, 15
  %94 = load i32, ptr %8, align 4
  %95 = call i32 @XXH32_finalize(i32 noundef %90, ptr noundef %91, i64 noundef %93, i32 noundef %94)
  ret i32 %95
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @XXH32_createState() #0 {
  %1 = call ptr @XXH_malloc(i64 noundef 48)
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @XXH_malloc(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call noalias ptr @malloc(i64 noundef %3) #10
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32_freeState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @XXH_free(ptr noundef %3)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XXH32_copyState(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @XXH_memcpy(ptr noundef %5, ptr noundef %6, i64 noundef 48)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @XXH_memcpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %9, i1 false)
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32_reset(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.XXH32_state_s, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 48, i1 false)
  %6 = load i32, ptr %4, align 4
  %7 = add i32 %6, -1640531535
  %8 = add i32 %7, -2048144777
  %9 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %5, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 0
  store i32 %8, ptr %10, align 4
  %11 = load i32, ptr %4, align 4
  %12 = add i32 %11, -2048144777
  %13 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %5, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 1
  store i32 %12, ptr %14, align 4
  %15 = load i32, ptr %4, align 4
  %16 = add i32 %15, 0
  %17 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %5, i32 0, i32 2
  %18 = getelementptr inbounds [4 x i32], ptr %17, i64 0, i64 2
  store i32 %16, ptr %18, align 4
  %19 = load i32, ptr %4, align 4
  %20 = sub i32 %19, -1640531535
  %21 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %5, i32 0, i32 2
  %22 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 3
  store i32 %20, ptr %22, align 4
  %23 = load ptr, ptr %3, align 8
  %24 = call ptr @XXH_memcpy(ptr noundef %23, ptr noundef %5, i64 noundef 44)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  br label %229

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8
  store ptr %16, ptr %8, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = load i64, ptr %7, align 8
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 %18
  store ptr %19, ptr %9, align 8
  %20 = load i64, ptr %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %21
  store i32 %25, ptr %23, align 4
  %26 = load i64, ptr %7, align 8
  %27 = icmp uge i64 %26, 16
  %28 = zext i1 %27 to i32
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 4
  %32 = icmp uge i32 %31, 16
  %33 = zext i1 %32 to i32
  %34 = or i32 %28, %33
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, ptr %36, align 4
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %39, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %7, align 8
  %44 = add i64 %42, %43
  %45 = icmp ult i64 %44, 16
  br i1 %45, label %46, label %64

46:                                               ; preds = %15
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %47, i32 0, i32 3
  %49 = getelementptr inbounds [4 x i32], ptr %48, i64 0, i64 0
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %50, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds nuw i8, ptr %49, i64 %53
  %55 = load ptr, ptr %6, align 8
  %56 = load i64, ptr %7, align 8
  %57 = call ptr @XXH_memcpy(ptr noundef %54, ptr noundef %55, i64 noundef %56)
  %58 = load i64, ptr %7, align 8
  %59 = trunc i64 %58 to i32
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %60, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %59
  store i32 %63, ptr %61, align 4
  store i32 0, ptr %4, align 4
  br label %229

64:                                               ; preds = %15
  %65 = load ptr, ptr %5, align 8
  %66 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %65, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %143

69:                                               ; preds = %64
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %70, i32 0, i32 3
  %72 = getelementptr inbounds [4 x i32], ptr %71, i64 0, i64 0
  %73 = load ptr, ptr %5, align 8
  %74 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %73, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds nuw i8, ptr %72, i64 %76
  %78 = load ptr, ptr %6, align 8
  %79 = load ptr, ptr %5, align 8
  %80 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %79, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = sub i32 16, %81
  %83 = zext i32 %82 to i64
  %84 = call ptr @XXH_memcpy(ptr noundef %77, ptr noundef %78, i64 noundef %83)
  %85 = load ptr, ptr %5, align 8
  %86 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %85, i32 0, i32 3
  %87 = getelementptr inbounds [4 x i32], ptr %86, i64 0, i64 0
  store ptr %87, ptr %10, align 8
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %88, i32 0, i32 2
  %90 = getelementptr inbounds [4 x i32], ptr %89, i64 0, i64 0
  %91 = load i32, ptr %90, align 4
  %92 = load ptr, ptr %10, align 8
  %93 = call i32 @XXH_readLE32(ptr noundef %92)
  %94 = call i32 @XXH32_round(i32 noundef %91, i32 noundef %93)
  %95 = load ptr, ptr %5, align 8
  %96 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %95, i32 0, i32 2
  %97 = getelementptr inbounds [4 x i32], ptr %96, i64 0, i64 0
  store i32 %94, ptr %97, align 4
  %98 = load ptr, ptr %10, align 8
  %99 = getelementptr inbounds nuw i32, ptr %98, i32 1
  store ptr %99, ptr %10, align 8
  %100 = load ptr, ptr %5, align 8
  %101 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %100, i32 0, i32 2
  %102 = getelementptr inbounds [4 x i32], ptr %101, i64 0, i64 1
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %10, align 8
  %105 = call i32 @XXH_readLE32(ptr noundef %104)
  %106 = call i32 @XXH32_round(i32 noundef %103, i32 noundef %105)
  %107 = load ptr, ptr %5, align 8
  %108 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %107, i32 0, i32 2
  %109 = getelementptr inbounds [4 x i32], ptr %108, i64 0, i64 1
  store i32 %106, ptr %109, align 4
  %110 = load ptr, ptr %10, align 8
  %111 = getelementptr inbounds nuw i32, ptr %110, i32 1
  store ptr %111, ptr %10, align 8
  %112 = load ptr, ptr %5, align 8
  %113 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %112, i32 0, i32 2
  %114 = getelementptr inbounds [4 x i32], ptr %113, i64 0, i64 2
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %10, align 8
  %117 = call i32 @XXH_readLE32(ptr noundef %116)
  %118 = call i32 @XXH32_round(i32 noundef %115, i32 noundef %117)
  %119 = load ptr, ptr %5, align 8
  %120 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %119, i32 0, i32 2
  %121 = getelementptr inbounds [4 x i32], ptr %120, i64 0, i64 2
  store i32 %118, ptr %121, align 4
  %122 = load ptr, ptr %10, align 8
  %123 = getelementptr inbounds nuw i32, ptr %122, i32 1
  store ptr %123, ptr %10, align 8
  %124 = load ptr, ptr %5, align 8
  %125 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %124, i32 0, i32 2
  %126 = getelementptr inbounds [4 x i32], ptr %125, i64 0, i64 3
  %127 = load i32, ptr %126, align 4
  %128 = load ptr, ptr %10, align 8
  %129 = call i32 @XXH_readLE32(ptr noundef %128)
  %130 = call i32 @XXH32_round(i32 noundef %127, i32 noundef %129)
  %131 = load ptr, ptr %5, align 8
  %132 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %131, i32 0, i32 2
  %133 = getelementptr inbounds [4 x i32], ptr %132, i64 0, i64 3
  store i32 %130, ptr %133, align 4
  %134 = load ptr, ptr %5, align 8
  %135 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %134, i32 0, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = sub i32 16, %136
  %138 = load ptr, ptr %8, align 8
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds nuw i8, ptr %138, i64 %139
  store ptr %140, ptr %8, align 8
  %141 = load ptr, ptr %5, align 8
  %142 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %141, i32 0, i32 4
  store i32 0, ptr %142, align 4
  br label %143

143:                                              ; preds = %69, %64
  %144 = load ptr, ptr %8, align 8
  %145 = load ptr, ptr %9, align 8
  %146 = getelementptr inbounds i8, ptr %145, i64 -16
  %147 = icmp ule ptr %144, %146
  br i1 %147, label %148, label %205

148:                                              ; preds = %143
  %149 = load ptr, ptr %9, align 8
  %150 = getelementptr inbounds i8, ptr %149, i64 -16
  store ptr %150, ptr %11, align 8
  br label %151

151:                                              ; preds = %200, %148
  %152 = load ptr, ptr %5, align 8
  %153 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %152, i32 0, i32 2
  %154 = getelementptr inbounds [4 x i32], ptr %153, i64 0, i64 0
  %155 = load i32, ptr %154, align 4
  %156 = load ptr, ptr %8, align 8
  %157 = call i32 @XXH_readLE32(ptr noundef %156)
  %158 = call i32 @XXH32_round(i32 noundef %155, i32 noundef %157)
  %159 = load ptr, ptr %5, align 8
  %160 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %159, i32 0, i32 2
  %161 = getelementptr inbounds [4 x i32], ptr %160, i64 0, i64 0
  store i32 %158, ptr %161, align 4
  %162 = load ptr, ptr %8, align 8
  %163 = getelementptr inbounds i8, ptr %162, i64 4
  store ptr %163, ptr %8, align 8
  %164 = load ptr, ptr %5, align 8
  %165 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %164, i32 0, i32 2
  %166 = getelementptr inbounds [4 x i32], ptr %165, i64 0, i64 1
  %167 = load i32, ptr %166, align 4
  %168 = load ptr, ptr %8, align 8
  %169 = call i32 @XXH_readLE32(ptr noundef %168)
  %170 = call i32 @XXH32_round(i32 noundef %167, i32 noundef %169)
  %171 = load ptr, ptr %5, align 8
  %172 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %171, i32 0, i32 2
  %173 = getelementptr inbounds [4 x i32], ptr %172, i64 0, i64 1
  store i32 %170, ptr %173, align 4
  %174 = load ptr, ptr %8, align 8
  %175 = getelementptr inbounds i8, ptr %174, i64 4
  store ptr %175, ptr %8, align 8
  %176 = load ptr, ptr %5, align 8
  %177 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %176, i32 0, i32 2
  %178 = getelementptr inbounds [4 x i32], ptr %177, i64 0, i64 2
  %179 = load i32, ptr %178, align 4
  %180 = load ptr, ptr %8, align 8
  %181 = call i32 @XXH_readLE32(ptr noundef %180)
  %182 = call i32 @XXH32_round(i32 noundef %179, i32 noundef %181)
  %183 = load ptr, ptr %5, align 8
  %184 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %183, i32 0, i32 2
  %185 = getelementptr inbounds [4 x i32], ptr %184, i64 0, i64 2
  store i32 %182, ptr %185, align 4
  %186 = load ptr, ptr %8, align 8
  %187 = getelementptr inbounds i8, ptr %186, i64 4
  store ptr %187, ptr %8, align 8
  %188 = load ptr, ptr %5, align 8
  %189 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %188, i32 0, i32 2
  %190 = getelementptr inbounds [4 x i32], ptr %189, i64 0, i64 3
  %191 = load i32, ptr %190, align 4
  %192 = load ptr, ptr %8, align 8
  %193 = call i32 @XXH_readLE32(ptr noundef %192)
  %194 = call i32 @XXH32_round(i32 noundef %191, i32 noundef %193)
  %195 = load ptr, ptr %5, align 8
  %196 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %195, i32 0, i32 2
  %197 = getelementptr inbounds [4 x i32], ptr %196, i64 0, i64 3
  store i32 %194, ptr %197, align 4
  %198 = load ptr, ptr %8, align 8
  %199 = getelementptr inbounds i8, ptr %198, i64 4
  store ptr %199, ptr %8, align 8
  br label %200

200:                                              ; preds = %151
  %201 = load ptr, ptr %8, align 8
  %202 = load ptr, ptr %11, align 8
  %203 = icmp ule ptr %201, %202
  br i1 %203, label %151, label %204, !llvm.loop !8

204:                                              ; preds = %200
  br label %205

205:                                              ; preds = %204, %143
  %206 = load ptr, ptr %8, align 8
  %207 = load ptr, ptr %9, align 8
  %208 = icmp ult ptr %206, %207
  br i1 %208, label %209, label %228

209:                                              ; preds = %205
  %210 = load ptr, ptr %5, align 8
  %211 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %210, i32 0, i32 3
  %212 = getelementptr inbounds [4 x i32], ptr %211, i64 0, i64 0
  %213 = load ptr, ptr %8, align 8
  %214 = load ptr, ptr %9, align 8
  %215 = load ptr, ptr %8, align 8
  %216 = ptrtoint ptr %214 to i64
  %217 = ptrtoint ptr %215 to i64
  %218 = sub i64 %216, %217
  %219 = call ptr @XXH_memcpy(ptr noundef %212, ptr noundef %213, i64 noundef %218)
  %220 = load ptr, ptr %9, align 8
  %221 = load ptr, ptr %8, align 8
  %222 = ptrtoint ptr %220 to i64
  %223 = ptrtoint ptr %221 to i64
  %224 = sub i64 %222, %223
  %225 = trunc i64 %224 to i32
  %226 = load ptr, ptr %5, align 8
  %227 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %226, i32 0, i32 4
  store i32 %225, ptr %227, align 4
  br label %228

228:                                              ; preds = %209, %205
  store i32 0, ptr %4, align 4
  br label %229

229:                                              ; preds = %228, %46, %14
  %230 = load i32, ptr %4, align 4
  ret i32 %230
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH32_round(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -2048144777
  %7 = load i32, ptr %3, align 4
  %8 = add i32 %7, %6
  store i32 %8, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 13)
  store i32 %10, ptr %3, align 4
  %11 = load i32, ptr %3, align 4
  %12 = mul i32 %11, -1640531535
  store i32 %12, ptr %3, align 4
  %13 = load i32, ptr %3, align 4
  %14 = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %13) #11, !srcloc !9
  store i32 %14, ptr %3, align 4
  %15 = load i32, ptr %3, align 4
  ret i32 %15
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
define dso_local i32 @XXH32_digest(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 0
  %12 = load i32, ptr %11, align 4
  %13 = call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %14, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i32], ptr %15, i64 0, i64 1
  %17 = load i32, ptr %16, align 4
  %18 = call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 7)
  %19 = add i32 %13, %18
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %20, i32 0, i32 2
  %22 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 2
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 12)
  %25 = add i32 %19, %24
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %26, i32 0, i32 2
  %28 = getelementptr inbounds [4 x i32], ptr %27, i64 0, i64 3
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 18)
  %31 = add i32 %25, %30
  store i32 %31, ptr %3, align 4
  br label %38

32:                                               ; preds = %1
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %33, i32 0, i32 2
  %35 = getelementptr inbounds [4 x i32], ptr %34, i64 0, i64 2
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 374761393
  store i32 %37, ptr %3, align 4
  br label %38

38:                                               ; preds = %32, %8
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %39, i32 0, i32 0
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %3, align 4
  %43 = add i32 %42, %41
  store i32 %43, ptr %3, align 4
  %44 = load i32, ptr %3, align 4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %45, i32 0, i32 3
  %47 = getelementptr inbounds [4 x i32], ptr %46, i64 0, i64 0
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %48, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = zext i32 %50 to i64
  %52 = call i32 @XXH32_finalize(i32 noundef %44, ptr noundef %47, i64 noundef %51, i32 noundef 0)
  ret i32 %52
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH32_finalize(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  %10 = load ptr, ptr %7, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i64, ptr %8, align 8
  %15 = and i64 %14, 15
  switch i64 %15, label %268 [
    i64 12, label %16
    i64 8, label %30
    i64 4, label %44
    i64 13, label %60
    i64 9, label %74
    i64 5, label %88
    i64 14, label %116
    i64 10, label %130
    i64 6, label %144
    i64 15, label %184
    i64 11, label %198
    i64 7, label %212
    i64 3, label %226
    i64 2, label %239
    i64 1, label %252
    i64 0, label %265
  ]

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %7, align 8
  %19 = load i32, ptr %9, align 4
  %20 = call i32 @XXH_readLE32_align(ptr noundef %18, i32 noundef %19)
  %21 = mul i32 %20, -1028477379
  %22 = load i32, ptr %6, align 4
  %23 = add i32 %22, %21
  store i32 %23, ptr %6, align 4
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 4
  store ptr %25, ptr %7, align 8
  %26 = load i32, ptr %6, align 4
  %27 = call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  store i32 %28, ptr %6, align 4
  br label %29

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %13, %29
  br label %31

31:                                               ; preds = %30
  %32 = load ptr, ptr %7, align 8
  %33 = load i32, ptr %9, align 4
  %34 = call i32 @XXH_readLE32_align(ptr noundef %32, i32 noundef %33)
  %35 = mul i32 %34, -1028477379
  %36 = load i32, ptr %6, align 4
  %37 = add i32 %36, %35
  store i32 %37, ptr %6, align 4
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds i8, ptr %38, i64 4
  store ptr %39, ptr %7, align 8
  %40 = load i32, ptr %6, align 4
  %41 = call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 17)
  %42 = mul i32 %41, 668265263
  store i32 %42, ptr %6, align 4
  br label %43

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %13, %43
  br label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %7, align 8
  %47 = load i32, ptr %9, align 4
  %48 = call i32 @XXH_readLE32_align(ptr noundef %46, i32 noundef %47)
  %49 = mul i32 %48, -1028477379
  %50 = load i32, ptr %6, align 4
  %51 = add i32 %50, %49
  store i32 %51, ptr %6, align 4
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds i8, ptr %52, i64 4
  store ptr %53, ptr %7, align 8
  %54 = load i32, ptr %6, align 4
  %55 = call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 17)
  %56 = mul i32 %55, 668265263
  store i32 %56, ptr %6, align 4
  br label %57

57:                                               ; preds = %45
  %58 = load i32, ptr %6, align 4
  %59 = call i32 @XXH32_avalanche(i32 noundef %58)
  store i32 %59, ptr %5, align 4
  br label %270

60:                                               ; preds = %13
  br label %61

61:                                               ; preds = %60
  %62 = load ptr, ptr %7, align 8
  %63 = load i32, ptr %9, align 4
  %64 = call i32 @XXH_readLE32_align(ptr noundef %62, i32 noundef %63)
  %65 = mul i32 %64, -1028477379
  %66 = load i32, ptr %6, align 4
  %67 = add i32 %66, %65
  store i32 %67, ptr %6, align 4
  %68 = load ptr, ptr %7, align 8
  %69 = getelementptr inbounds i8, ptr %68, i64 4
  store ptr %69, ptr %7, align 8
  %70 = load i32, ptr %6, align 4
  %71 = call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 17)
  %72 = mul i32 %71, 668265263
  store i32 %72, ptr %6, align 4
  br label %73

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %13, %73
  br label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %7, align 8
  %77 = load i32, ptr %9, align 4
  %78 = call i32 @XXH_readLE32_align(ptr noundef %76, i32 noundef %77)
  %79 = mul i32 %78, -1028477379
  %80 = load i32, ptr %6, align 4
  %81 = add i32 %80, %79
  store i32 %81, ptr %6, align 4
  %82 = load ptr, ptr %7, align 8
  %83 = getelementptr inbounds i8, ptr %82, i64 4
  store ptr %83, ptr %7, align 8
  %84 = load i32, ptr %6, align 4
  %85 = call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 17)
  %86 = mul i32 %85, 668265263
  store i32 %86, ptr %6, align 4
  br label %87

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %13, %87
  br label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %7, align 8
  %91 = load i32, ptr %9, align 4
  %92 = call i32 @XXH_readLE32_align(ptr noundef %90, i32 noundef %91)
  %93 = mul i32 %92, -1028477379
  %94 = load i32, ptr %6, align 4
  %95 = add i32 %94, %93
  store i32 %95, ptr %6, align 4
  %96 = load ptr, ptr %7, align 8
  %97 = getelementptr inbounds i8, ptr %96, i64 4
  store ptr %97, ptr %7, align 8
  %98 = load i32, ptr %6, align 4
  %99 = call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 17)
  %100 = mul i32 %99, 668265263
  store i32 %100, ptr %6, align 4
  br label %101

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101
  %103 = load ptr, ptr %7, align 8
  %104 = getelementptr inbounds nuw i8, ptr %103, i32 1
  store ptr %104, ptr %7, align 8
  %105 = load i8, ptr %103, align 1
  %106 = zext i8 %105 to i32
  %107 = mul i32 %106, 374761393
  %108 = load i32, ptr %6, align 4
  %109 = add i32 %108, %107
  store i32 %109, ptr %6, align 4
  %110 = load i32, ptr %6, align 4
  %111 = call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 11)
  %112 = mul i32 %111, -1640531535
  store i32 %112, ptr %6, align 4
  br label %113

113:                                              ; preds = %102
  %114 = load i32, ptr %6, align 4
  %115 = call i32 @XXH32_avalanche(i32 noundef %114)
  store i32 %115, ptr %5, align 4
  br label %270

116:                                              ; preds = %13
  br label %117

117:                                              ; preds = %116
  %118 = load ptr, ptr %7, align 8
  %119 = load i32, ptr %9, align 4
  %120 = call i32 @XXH_readLE32_align(ptr noundef %118, i32 noundef %119)
  %121 = mul i32 %120, -1028477379
  %122 = load i32, ptr %6, align 4
  %123 = add i32 %122, %121
  store i32 %123, ptr %6, align 4
  %124 = load ptr, ptr %7, align 8
  %125 = getelementptr inbounds i8, ptr %124, i64 4
  store ptr %125, ptr %7, align 8
  %126 = load i32, ptr %6, align 4
  %127 = call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 17)
  %128 = mul i32 %127, 668265263
  store i32 %128, ptr %6, align 4
  br label %129

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %13, %129
  br label %131

131:                                              ; preds = %130
  %132 = load ptr, ptr %7, align 8
  %133 = load i32, ptr %9, align 4
  %134 = call i32 @XXH_readLE32_align(ptr noundef %132, i32 noundef %133)
  %135 = mul i32 %134, -1028477379
  %136 = load i32, ptr %6, align 4
  %137 = add i32 %136, %135
  store i32 %137, ptr %6, align 4
  %138 = load ptr, ptr %7, align 8
  %139 = getelementptr inbounds i8, ptr %138, i64 4
  store ptr %139, ptr %7, align 8
  %140 = load i32, ptr %6, align 4
  %141 = call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 17)
  %142 = mul i32 %141, 668265263
  store i32 %142, ptr %6, align 4
  br label %143

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %13, %143
  br label %145

145:                                              ; preds = %144
  %146 = load ptr, ptr %7, align 8
  %147 = load i32, ptr %9, align 4
  %148 = call i32 @XXH_readLE32_align(ptr noundef %146, i32 noundef %147)
  %149 = mul i32 %148, -1028477379
  %150 = load i32, ptr %6, align 4
  %151 = add i32 %150, %149
  store i32 %151, ptr %6, align 4
  %152 = load ptr, ptr %7, align 8
  %153 = getelementptr inbounds i8, ptr %152, i64 4
  store ptr %153, ptr %7, align 8
  %154 = load i32, ptr %6, align 4
  %155 = call i32 @llvm.fshl.i32(i32 %154, i32 %154, i32 17)
  %156 = mul i32 %155, 668265263
  store i32 %156, ptr %6, align 4
  br label %157

157:                                              ; preds = %145
  br label %158

158:                                              ; preds = %157
  %159 = load ptr, ptr %7, align 8
  %160 = getelementptr inbounds nuw i8, ptr %159, i32 1
  store ptr %160, ptr %7, align 8
  %161 = load i8, ptr %159, align 1
  %162 = zext i8 %161 to i32
  %163 = mul i32 %162, 374761393
  %164 = load i32, ptr %6, align 4
  %165 = add i32 %164, %163
  store i32 %165, ptr %6, align 4
  %166 = load i32, ptr %6, align 4
  %167 = call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 11)
  %168 = mul i32 %167, -1640531535
  store i32 %168, ptr %6, align 4
  br label %169

169:                                              ; preds = %158
  br label %170

170:                                              ; preds = %169
  %171 = load ptr, ptr %7, align 8
  %172 = getelementptr inbounds nuw i8, ptr %171, i32 1
  store ptr %172, ptr %7, align 8
  %173 = load i8, ptr %171, align 1
  %174 = zext i8 %173 to i32
  %175 = mul i32 %174, 374761393
  %176 = load i32, ptr %6, align 4
  %177 = add i32 %176, %175
  store i32 %177, ptr %6, align 4
  %178 = load i32, ptr %6, align 4
  %179 = call i32 @llvm.fshl.i32(i32 %178, i32 %178, i32 11)
  %180 = mul i32 %179, -1640531535
  store i32 %180, ptr %6, align 4
  br label %181

181:                                              ; preds = %170
  %182 = load i32, ptr %6, align 4
  %183 = call i32 @XXH32_avalanche(i32 noundef %182)
  store i32 %183, ptr %5, align 4
  br label %270

184:                                              ; preds = %13
  br label %185

185:                                              ; preds = %184
  %186 = load ptr, ptr %7, align 8
  %187 = load i32, ptr %9, align 4
  %188 = call i32 @XXH_readLE32_align(ptr noundef %186, i32 noundef %187)
  %189 = mul i32 %188, -1028477379
  %190 = load i32, ptr %6, align 4
  %191 = add i32 %190, %189
  store i32 %191, ptr %6, align 4
  %192 = load ptr, ptr %7, align 8
  %193 = getelementptr inbounds i8, ptr %192, i64 4
  store ptr %193, ptr %7, align 8
  %194 = load i32, ptr %6, align 4
  %195 = call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 17)
  %196 = mul i32 %195, 668265263
  store i32 %196, ptr %6, align 4
  br label %197

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %13, %197
  br label %199

199:                                              ; preds = %198
  %200 = load ptr, ptr %7, align 8
  %201 = load i32, ptr %9, align 4
  %202 = call i32 @XXH_readLE32_align(ptr noundef %200, i32 noundef %201)
  %203 = mul i32 %202, -1028477379
  %204 = load i32, ptr %6, align 4
  %205 = add i32 %204, %203
  store i32 %205, ptr %6, align 4
  %206 = load ptr, ptr %7, align 8
  %207 = getelementptr inbounds i8, ptr %206, i64 4
  store ptr %207, ptr %7, align 8
  %208 = load i32, ptr %6, align 4
  %209 = call i32 @llvm.fshl.i32(i32 %208, i32 %208, i32 17)
  %210 = mul i32 %209, 668265263
  store i32 %210, ptr %6, align 4
  br label %211

211:                                              ; preds = %199
  br label %212

212:                                              ; preds = %13, %211
  br label %213

213:                                              ; preds = %212
  %214 = load ptr, ptr %7, align 8
  %215 = load i32, ptr %9, align 4
  %216 = call i32 @XXH_readLE32_align(ptr noundef %214, i32 noundef %215)
  %217 = mul i32 %216, -1028477379
  %218 = load i32, ptr %6, align 4
  %219 = add i32 %218, %217
  store i32 %219, ptr %6, align 4
  %220 = load ptr, ptr %7, align 8
  %221 = getelementptr inbounds i8, ptr %220, i64 4
  store ptr %221, ptr %7, align 8
  %222 = load i32, ptr %6, align 4
  %223 = call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 17)
  %224 = mul i32 %223, 668265263
  store i32 %224, ptr %6, align 4
  br label %225

225:                                              ; preds = %213
  br label %226

226:                                              ; preds = %13, %225
  br label %227

227:                                              ; preds = %226
  %228 = load ptr, ptr %7, align 8
  %229 = getelementptr inbounds nuw i8, ptr %228, i32 1
  store ptr %229, ptr %7, align 8
  %230 = load i8, ptr %228, align 1
  %231 = zext i8 %230 to i32
  %232 = mul i32 %231, 374761393
  %233 = load i32, ptr %6, align 4
  %234 = add i32 %233, %232
  store i32 %234, ptr %6, align 4
  %235 = load i32, ptr %6, align 4
  %236 = call i32 @llvm.fshl.i32(i32 %235, i32 %235, i32 11)
  %237 = mul i32 %236, -1640531535
  store i32 %237, ptr %6, align 4
  br label %238

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %13, %238
  br label %240

240:                                              ; preds = %239
  %241 = load ptr, ptr %7, align 8
  %242 = getelementptr inbounds nuw i8, ptr %241, i32 1
  store ptr %242, ptr %7, align 8
  %243 = load i8, ptr %241, align 1
  %244 = zext i8 %243 to i32
  %245 = mul i32 %244, 374761393
  %246 = load i32, ptr %6, align 4
  %247 = add i32 %246, %245
  store i32 %247, ptr %6, align 4
  %248 = load i32, ptr %6, align 4
  %249 = call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 11)
  %250 = mul i32 %249, -1640531535
  store i32 %250, ptr %6, align 4
  br label %251

251:                                              ; preds = %240
  br label %252

252:                                              ; preds = %13, %251
  br label %253

253:                                              ; preds = %252
  %254 = load ptr, ptr %7, align 8
  %255 = getelementptr inbounds nuw i8, ptr %254, i32 1
  store ptr %255, ptr %7, align 8
  %256 = load i8, ptr %254, align 1
  %257 = zext i8 %256 to i32
  %258 = mul i32 %257, 374761393
  %259 = load i32, ptr %6, align 4
  %260 = add i32 %259, %258
  store i32 %260, ptr %6, align 4
  %261 = load i32, ptr %6, align 4
  %262 = call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 11)
  %263 = mul i32 %262, -1640531535
  store i32 %263, ptr %6, align 4
  br label %264

264:                                              ; preds = %253
  br label %265

265:                                              ; preds = %13, %264
  %266 = load i32, ptr %6, align 4
  %267 = call i32 @XXH32_avalanche(i32 noundef %266)
  store i32 %267, ptr %5, align 4
  br label %270

268:                                              ; preds = %13
  %269 = load i32, ptr %6, align 4
  store i32 %269, ptr %5, align 4
  br label %270

270:                                              ; preds = %268, %265, %181, %113, %57
  %271 = load i32, ptr %5, align 4
  ret i32 %271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XXH32_canonicalFromHash(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %5

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5
  %7 = load i32, ptr %4, align 4
  %8 = call i32 @XXH_swap32(i32 noundef %7)
  store i32 %8, ptr %4, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = call ptr @XXH_memcpy(ptr noundef %9, ptr noundef %4, i64 noundef 4)
  ret void
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
define dso_local i32 @XXH32_hashFromCanonical(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @XXH_readBE32(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH_readBE32(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @XXH_read32(ptr noundef %3)
  %5 = call i32 @XXH_swap32(i32 noundef %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XXH64(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call i64 @XXH64_endian_align(ptr noundef %7, i64 noundef %8, i64 noundef %9, i32 noundef 1)
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH64_endian_align(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %16 = load ptr, ptr %5, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %4
  %20 = load i64, ptr %6, align 8
  %21 = icmp uge i64 %20, 32
  br i1 %21, label %22, label %94

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8
  %24 = load i64, ptr %6, align 8
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %24
  store ptr %25, ptr %10, align 8
  %26 = load ptr, ptr %10, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 -31
  store ptr %27, ptr %11, align 8
  %28 = load i64, ptr %7, align 8
  %29 = add i64 %28, -7046029288634856825
  %30 = add i64 %29, -4417276706812531889
  store i64 %30, ptr %12, align 8
  %31 = load i64, ptr %7, align 8
  %32 = add i64 %31, -4417276706812531889
  store i64 %32, ptr %13, align 8
  %33 = load i64, ptr %7, align 8
  %34 = add i64 %33, 0
  store i64 %34, ptr %14, align 8
  %35 = load i64, ptr %7, align 8
  %36 = sub i64 %35, -7046029288634856825
  store i64 %36, ptr %15, align 8
  br label %37

37:                                               ; preds = %66, %22
  %38 = load i64, ptr %12, align 8
  %39 = load ptr, ptr %5, align 8
  %40 = load i32, ptr %8, align 4
  %41 = call i64 @XXH_readLE64_align(ptr noundef %39, i32 noundef %40)
  %42 = call i64 @XXH64_round(i64 noundef %38, i64 noundef %41)
  store i64 %42, ptr %12, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds i8, ptr %43, i64 8
  store ptr %44, ptr %5, align 8
  %45 = load i64, ptr %13, align 8
  %46 = load ptr, ptr %5, align 8
  %47 = load i32, ptr %8, align 4
  %48 = call i64 @XXH_readLE64_align(ptr noundef %46, i32 noundef %47)
  %49 = call i64 @XXH64_round(i64 noundef %45, i64 noundef %48)
  store i64 %49, ptr %13, align 8
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds i8, ptr %50, i64 8
  store ptr %51, ptr %5, align 8
  %52 = load i64, ptr %14, align 8
  %53 = load ptr, ptr %5, align 8
  %54 = load i32, ptr %8, align 4
  %55 = call i64 @XXH_readLE64_align(ptr noundef %53, i32 noundef %54)
  %56 = call i64 @XXH64_round(i64 noundef %52, i64 noundef %55)
  store i64 %56, ptr %14, align 8
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr inbounds i8, ptr %57, i64 8
  store ptr %58, ptr %5, align 8
  %59 = load i64, ptr %15, align 8
  %60 = load ptr, ptr %5, align 8
  %61 = load i32, ptr %8, align 4
  %62 = call i64 @XXH_readLE64_align(ptr noundef %60, i32 noundef %61)
  %63 = call i64 @XXH64_round(i64 noundef %59, i64 noundef %62)
  store i64 %63, ptr %15, align 8
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds i8, ptr %64, i64 8
  store ptr %65, ptr %5, align 8
  br label %66

66:                                               ; preds = %37
  %67 = load ptr, ptr %5, align 8
  %68 = load ptr, ptr %11, align 8
  %69 = icmp ult ptr %67, %68
  br i1 %69, label %37, label %70, !llvm.loop !10

70:                                               ; preds = %66
  %71 = load i64, ptr %12, align 8
  %72 = call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 1)
  %73 = load i64, ptr %13, align 8
  %74 = call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 7)
  %75 = add i64 %72, %74
  %76 = load i64, ptr %14, align 8
  %77 = call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 12)
  %78 = add i64 %75, %77
  %79 = load i64, ptr %15, align 8
  %80 = call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 18)
  %81 = add i64 %78, %80
  store i64 %81, ptr %9, align 8
  %82 = load i64, ptr %9, align 8
  %83 = load i64, ptr %12, align 8
  %84 = call i64 @XXH64_mergeRound(i64 noundef %82, i64 noundef %83)
  store i64 %84, ptr %9, align 8
  %85 = load i64, ptr %9, align 8
  %86 = load i64, ptr %13, align 8
  %87 = call i64 @XXH64_mergeRound(i64 noundef %85, i64 noundef %86)
  store i64 %87, ptr %9, align 8
  %88 = load i64, ptr %9, align 8
  %89 = load i64, ptr %14, align 8
  %90 = call i64 @XXH64_mergeRound(i64 noundef %88, i64 noundef %89)
  store i64 %90, ptr %9, align 8
  %91 = load i64, ptr %9, align 8
  %92 = load i64, ptr %15, align 8
  %93 = call i64 @XXH64_mergeRound(i64 noundef %91, i64 noundef %92)
  store i64 %93, ptr %9, align 8
  br label %97

94:                                               ; preds = %19
  %95 = load i64, ptr %7, align 8
  %96 = add i64 %95, 2870177450012600261
  store i64 %96, ptr %9, align 8
  br label %97

97:                                               ; preds = %94, %70
  %98 = load i64, ptr %6, align 8
  %99 = load i64, ptr %9, align 8
  %100 = add i64 %99, %98
  store i64 %100, ptr %9, align 8
  %101 = load i64, ptr %9, align 8
  %102 = load ptr, ptr %5, align 8
  %103 = load i64, ptr %6, align 8
  %104 = load i32, ptr %8, align 4
  %105 = call i64 @XXH64_finalize(i64 noundef %101, ptr noundef %102, i64 noundef %103, i32 noundef %104)
  ret i64 %105
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @XXH64_createState() #0 {
  %1 = call ptr @XXH_malloc(i64 noundef 88)
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH64_freeState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @XXH_free(ptr noundef %3)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XXH64_copyState(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @XXH_memcpy(ptr noundef %5, ptr noundef %6, i64 noundef 88)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH64_reset(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.XXH64_state_s, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 88, i1 false)
  %6 = load i64, ptr %4, align 8
  %7 = add i64 %6, -7046029288634856825
  %8 = add i64 %7, -4417276706812531889
  %9 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds [4 x i64], ptr %9, i64 0, i64 0
  store i64 %8, ptr %10, align 8
  %11 = load i64, ptr %4, align 8
  %12 = add i64 %11, -4417276706812531889
  %13 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %5, i32 0, i32 1
  %14 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 1
  store i64 %12, ptr %14, align 8
  %15 = load i64, ptr %4, align 8
  %16 = add i64 %15, 0
  %17 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %5, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i64], ptr %17, i64 0, i64 2
  store i64 %16, ptr %18, align 8
  %19 = load i64, ptr %4, align 8
  %20 = sub i64 %19, -7046029288634856825
  %21 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %5, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i64], ptr %21, i64 0, i64 3
  store i64 %20, ptr %22, align 8
  %23 = load ptr, ptr %3, align 8
  %24 = call ptr @XXH_memcpy(ptr noundef %23, ptr noundef %5, i64 noundef 80)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  br label %217

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 8
  store ptr %15, ptr %8, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = load i64, ptr %7, align 8
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %17
  store ptr %18, ptr %9, align 8
  %19 = load i64, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %20, i32 0, i32 0
  %22 = load i64, ptr %21, align 8
  %23 = add i64 %22, %19
  store i64 %23, ptr %21, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %24, i32 0, i32 3
  %26 = load i32, ptr %25, align 8
  %27 = zext i32 %26 to i64
  %28 = load i64, ptr %7, align 8
  %29 = add i64 %27, %28
  %30 = icmp ult i64 %29, 32
  br i1 %30, label %31, label %49

31:                                               ; preds = %14
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %32, i32 0, i32 2
  %34 = getelementptr inbounds [4 x i64], ptr %33, i64 0, i64 0
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 8
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds nuw i8, ptr %34, i64 %38
  %40 = load ptr, ptr %6, align 8
  %41 = load i64, ptr %7, align 8
  %42 = call ptr @XXH_memcpy(ptr noundef %39, ptr noundef %40, i64 noundef %41)
  %43 = load i64, ptr %7, align 8
  %44 = trunc i64 %43 to i32
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, %44
  store i32 %48, ptr %46, align 8
  store i32 0, ptr %4, align 4
  br label %217

49:                                               ; preds = %14
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %131

54:                                               ; preds = %49
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %55, i32 0, i32 2
  %57 = getelementptr inbounds [4 x i64], ptr %56, i64 0, i64 0
  %58 = load ptr, ptr %5, align 8
  %59 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %58, i32 0, i32 3
  %60 = load i32, ptr %59, align 8
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw i8, ptr %57, i64 %61
  %63 = load ptr, ptr %6, align 8
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %64, i32 0, i32 3
  %66 = load i32, ptr %65, align 8
  %67 = sub i32 32, %66
  %68 = zext i32 %67 to i64
  %69 = call ptr @XXH_memcpy(ptr noundef %62, ptr noundef %63, i64 noundef %68)
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %70, i32 0, i32 1
  %72 = getelementptr inbounds [4 x i64], ptr %71, i64 0, i64 0
  %73 = load i64, ptr %72, align 8
  %74 = load ptr, ptr %5, align 8
  %75 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %74, i32 0, i32 2
  %76 = getelementptr inbounds [4 x i64], ptr %75, i64 0, i64 0
  %77 = getelementptr inbounds i64, ptr %76, i64 0
  %78 = call i64 @XXH_readLE64(ptr noundef %77)
  %79 = call i64 @XXH64_round(i64 noundef %73, i64 noundef %78)
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %80, i32 0, i32 1
  %82 = getelementptr inbounds [4 x i64], ptr %81, i64 0, i64 0
  store i64 %79, ptr %82, align 8
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %83, i32 0, i32 1
  %85 = getelementptr inbounds [4 x i64], ptr %84, i64 0, i64 1
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %5, align 8
  %88 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %87, i32 0, i32 2
  %89 = getelementptr inbounds [4 x i64], ptr %88, i64 0, i64 0
  %90 = getelementptr inbounds i64, ptr %89, i64 1
  %91 = call i64 @XXH_readLE64(ptr noundef %90)
  %92 = call i64 @XXH64_round(i64 noundef %86, i64 noundef %91)
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %93, i32 0, i32 1
  %95 = getelementptr inbounds [4 x i64], ptr %94, i64 0, i64 1
  store i64 %92, ptr %95, align 8
  %96 = load ptr, ptr %5, align 8
  %97 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %96, i32 0, i32 1
  %98 = getelementptr inbounds [4 x i64], ptr %97, i64 0, i64 2
  %99 = load i64, ptr %98, align 8
  %100 = load ptr, ptr %5, align 8
  %101 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %100, i32 0, i32 2
  %102 = getelementptr inbounds [4 x i64], ptr %101, i64 0, i64 0
  %103 = getelementptr inbounds i64, ptr %102, i64 2
  %104 = call i64 @XXH_readLE64(ptr noundef %103)
  %105 = call i64 @XXH64_round(i64 noundef %99, i64 noundef %104)
  %106 = load ptr, ptr %5, align 8
  %107 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %106, i32 0, i32 1
  %108 = getelementptr inbounds [4 x i64], ptr %107, i64 0, i64 2
  store i64 %105, ptr %108, align 8
  %109 = load ptr, ptr %5, align 8
  %110 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %109, i32 0, i32 1
  %111 = getelementptr inbounds [4 x i64], ptr %110, i64 0, i64 3
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %5, align 8
  %114 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %113, i32 0, i32 2
  %115 = getelementptr inbounds [4 x i64], ptr %114, i64 0, i64 0
  %116 = getelementptr inbounds i64, ptr %115, i64 3
  %117 = call i64 @XXH_readLE64(ptr noundef %116)
  %118 = call i64 @XXH64_round(i64 noundef %112, i64 noundef %117)
  %119 = load ptr, ptr %5, align 8
  %120 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %119, i32 0, i32 1
  %121 = getelementptr inbounds [4 x i64], ptr %120, i64 0, i64 3
  store i64 %118, ptr %121, align 8
  %122 = load ptr, ptr %5, align 8
  %123 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %122, i32 0, i32 3
  %124 = load i32, ptr %123, align 8
  %125 = sub i32 32, %124
  %126 = load ptr, ptr %8, align 8
  %127 = zext i32 %125 to i64
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 %127
  store ptr %128, ptr %8, align 8
  %129 = load ptr, ptr %5, align 8
  %130 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %129, i32 0, i32 3
  store i32 0, ptr %130, align 8
  br label %131

131:                                              ; preds = %54, %49
  %132 = load ptr, ptr %8, align 8
  %133 = getelementptr inbounds i8, ptr %132, i64 32
  %134 = load ptr, ptr %9, align 8
  %135 = icmp ule ptr %133, %134
  br i1 %135, label %136, label %193

136:                                              ; preds = %131
  %137 = load ptr, ptr %9, align 8
  %138 = getelementptr inbounds i8, ptr %137, i64 -32
  store ptr %138, ptr %10, align 8
  br label %139

139:                                              ; preds = %188, %136
  %140 = load ptr, ptr %5, align 8
  %141 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %140, i32 0, i32 1
  %142 = getelementptr inbounds [4 x i64], ptr %141, i64 0, i64 0
  %143 = load i64, ptr %142, align 8
  %144 = load ptr, ptr %8, align 8
  %145 = call i64 @XXH_readLE64(ptr noundef %144)
  %146 = call i64 @XXH64_round(i64 noundef %143, i64 noundef %145)
  %147 = load ptr, ptr %5, align 8
  %148 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %147, i32 0, i32 1
  %149 = getelementptr inbounds [4 x i64], ptr %148, i64 0, i64 0
  store i64 %146, ptr %149, align 8
  %150 = load ptr, ptr %8, align 8
  %151 = getelementptr inbounds i8, ptr %150, i64 8
  store ptr %151, ptr %8, align 8
  %152 = load ptr, ptr %5, align 8
  %153 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %152, i32 0, i32 1
  %154 = getelementptr inbounds [4 x i64], ptr %153, i64 0, i64 1
  %155 = load i64, ptr %154, align 8
  %156 = load ptr, ptr %8, align 8
  %157 = call i64 @XXH_readLE64(ptr noundef %156)
  %158 = call i64 @XXH64_round(i64 noundef %155, i64 noundef %157)
  %159 = load ptr, ptr %5, align 8
  %160 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %159, i32 0, i32 1
  %161 = getelementptr inbounds [4 x i64], ptr %160, i64 0, i64 1
  store i64 %158, ptr %161, align 8
  %162 = load ptr, ptr %8, align 8
  %163 = getelementptr inbounds i8, ptr %162, i64 8
  store ptr %163, ptr %8, align 8
  %164 = load ptr, ptr %5, align 8
  %165 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %164, i32 0, i32 1
  %166 = getelementptr inbounds [4 x i64], ptr %165, i64 0, i64 2
  %167 = load i64, ptr %166, align 8
  %168 = load ptr, ptr %8, align 8
  %169 = call i64 @XXH_readLE64(ptr noundef %168)
  %170 = call i64 @XXH64_round(i64 noundef %167, i64 noundef %169)
  %171 = load ptr, ptr %5, align 8
  %172 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %171, i32 0, i32 1
  %173 = getelementptr inbounds [4 x i64], ptr %172, i64 0, i64 2
  store i64 %170, ptr %173, align 8
  %174 = load ptr, ptr %8, align 8
  %175 = getelementptr inbounds i8, ptr %174, i64 8
  store ptr %175, ptr %8, align 8
  %176 = load ptr, ptr %5, align 8
  %177 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %176, i32 0, i32 1
  %178 = getelementptr inbounds [4 x i64], ptr %177, i64 0, i64 3
  %179 = load i64, ptr %178, align 8
  %180 = load ptr, ptr %8, align 8
  %181 = call i64 @XXH_readLE64(ptr noundef %180)
  %182 = call i64 @XXH64_round(i64 noundef %179, i64 noundef %181)
  %183 = load ptr, ptr %5, align 8
  %184 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %183, i32 0, i32 1
  %185 = getelementptr inbounds [4 x i64], ptr %184, i64 0, i64 3
  store i64 %182, ptr %185, align 8
  %186 = load ptr, ptr %8, align 8
  %187 = getelementptr inbounds i8, ptr %186, i64 8
  store ptr %187, ptr %8, align 8
  br label %188

188:                                              ; preds = %139
  %189 = load ptr, ptr %8, align 8
  %190 = load ptr, ptr %10, align 8
  %191 = icmp ule ptr %189, %190
  br i1 %191, label %139, label %192, !llvm.loop !11

192:                                              ; preds = %188
  br label %193

193:                                              ; preds = %192, %131
  %194 = load ptr, ptr %8, align 8
  %195 = load ptr, ptr %9, align 8
  %196 = icmp ult ptr %194, %195
  br i1 %196, label %197, label %216

197:                                              ; preds = %193
  %198 = load ptr, ptr %5, align 8
  %199 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %198, i32 0, i32 2
  %200 = getelementptr inbounds [4 x i64], ptr %199, i64 0, i64 0
  %201 = load ptr, ptr %8, align 8
  %202 = load ptr, ptr %9, align 8
  %203 = load ptr, ptr %8, align 8
  %204 = ptrtoint ptr %202 to i64
  %205 = ptrtoint ptr %203 to i64
  %206 = sub i64 %204, %205
  %207 = call ptr @XXH_memcpy(ptr noundef %200, ptr noundef %201, i64 noundef %206)
  %208 = load ptr, ptr %9, align 8
  %209 = load ptr, ptr %8, align 8
  %210 = ptrtoint ptr %208 to i64
  %211 = ptrtoint ptr %209 to i64
  %212 = sub i64 %210, %211
  %213 = trunc i64 %212 to i32
  %214 = load ptr, ptr %5, align 8
  %215 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %214, i32 0, i32 3
  store i32 %213, ptr %215, align 8
  br label %216

216:                                              ; preds = %197, %193
  store i32 0, ptr %4, align 4
  br label %217

217:                                              ; preds = %216, %31, %13
  %218 = load i32, ptr %4, align 4
  ret i32 %218
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH64_round(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = mul i64 %5, -4417276706812531889
  %7 = load i64, ptr %3, align 8
  %8 = add i64 %7, %6
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  store i64 %10, ptr %3, align 8
  %11 = load i64, ptr %3, align 8
  %12 = mul i64 %11, -7046029288634856825
  store i64 %12, ptr %3, align 8
  %13 = load i64, ptr %3, align 8
  ret i64 %13
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
define dso_local i64 @XXH64_digest(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %4, i32 0, i32 0
  %6 = load i64, ptr %5, align 8
  %7 = icmp uge i64 %6, 32
  br i1 %7, label %8, label %56

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %9, i32 0, i32 1
  %11 = getelementptr inbounds [4 x i64], ptr %10, i64 0, i64 0
  %12 = load i64, ptr %11, align 8
  %13 = call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 1)
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %14, i32 0, i32 1
  %16 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 1
  %17 = load i64, ptr %16, align 8
  %18 = call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 7)
  %19 = add i64 %13, %18
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i64], ptr %21, i64 0, i64 2
  %23 = load i64, ptr %22, align 8
  %24 = call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 12)
  %25 = add i64 %19, %24
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %26, i32 0, i32 1
  %28 = getelementptr inbounds [4 x i64], ptr %27, i64 0, i64 3
  %29 = load i64, ptr %28, align 8
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 18)
  %31 = add i64 %25, %30
  store i64 %31, ptr %3, align 8
  %32 = load i64, ptr %3, align 8
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %33, i32 0, i32 1
  %35 = getelementptr inbounds [4 x i64], ptr %34, i64 0, i64 0
  %36 = load i64, ptr %35, align 8
  %37 = call i64 @XXH64_mergeRound(i64 noundef %32, i64 noundef %36)
  store i64 %37, ptr %3, align 8
  %38 = load i64, ptr %3, align 8
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %39, i32 0, i32 1
  %41 = getelementptr inbounds [4 x i64], ptr %40, i64 0, i64 1
  %42 = load i64, ptr %41, align 8
  %43 = call i64 @XXH64_mergeRound(i64 noundef %38, i64 noundef %42)
  store i64 %43, ptr %3, align 8
  %44 = load i64, ptr %3, align 8
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %45, i32 0, i32 1
  %47 = getelementptr inbounds [4 x i64], ptr %46, i64 0, i64 2
  %48 = load i64, ptr %47, align 8
  %49 = call i64 @XXH64_mergeRound(i64 noundef %44, i64 noundef %48)
  store i64 %49, ptr %3, align 8
  %50 = load i64, ptr %3, align 8
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %51, i32 0, i32 1
  %53 = getelementptr inbounds [4 x i64], ptr %52, i64 0, i64 3
  %54 = load i64, ptr %53, align 8
  %55 = call i64 @XXH64_mergeRound(i64 noundef %50, i64 noundef %54)
  store i64 %55, ptr %3, align 8
  br label %62

56:                                               ; preds = %1
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %57, i32 0, i32 1
  %59 = getelementptr inbounds [4 x i64], ptr %58, i64 0, i64 2
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %60, 2870177450012600261
  store i64 %61, ptr %3, align 8
  br label %62

62:                                               ; preds = %56, %8
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %63, i32 0, i32 0
  %65 = load i64, ptr %64, align 8
  %66 = load i64, ptr %3, align 8
  %67 = add i64 %66, %65
  store i64 %67, ptr %3, align 8
  %68 = load i64, ptr %3, align 8
  %69 = load ptr, ptr %2, align 8
  %70 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %69, i32 0, i32 2
  %71 = getelementptr inbounds [4 x i64], ptr %70, i64 0, i64 0
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %72, i32 0, i32 0
  %74 = load i64, ptr %73, align 8
  %75 = call i64 @XXH64_finalize(i64 noundef %68, ptr noundef %71, i64 noundef %74, i32 noundef 0)
  ret i64 %75
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH64_mergeRound(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %5)
  store i64 %6, ptr %4, align 8
  %7 = load i64, ptr %4, align 8
  %8 = load i64, ptr %3, align 8
  %9 = xor i64 %8, %7
  store i64 %9, ptr %3, align 8
  %10 = load i64, ptr %3, align 8
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  store i64 %12, ptr %3, align 8
  %13 = load i64, ptr %3, align 8
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH64_finalize(i64 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %10 = load ptr, ptr %6, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i64, ptr %7, align 8
  %15 = and i64 %14, 31
  store i64 %15, ptr %7, align 8
  br label %16

16:                                               ; preds = %19, %13
  %17 = load i64, ptr %7, align 8
  %18 = icmp uge i64 %17, 8
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8
  %21 = load i32, ptr %8, align 4
  %22 = call i64 @XXH_readLE64_align(ptr noundef %20, i32 noundef %21)
  %23 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %22)
  store i64 %23, ptr %9, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  store ptr %25, ptr %6, align 8
  %26 = load i64, ptr %9, align 8
  %27 = load i64, ptr %5, align 8
  %28 = xor i64 %27, %26
  store i64 %28, ptr %5, align 8
  %29 = load i64, ptr %5, align 8
  %30 = call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  store i64 %32, ptr %5, align 8
  %33 = load i64, ptr %7, align 8
  %34 = sub i64 %33, 8
  store i64 %34, ptr %7, align 8
  br label %16, !llvm.loop !12

35:                                               ; preds = %16
  %36 = load i64, ptr %7, align 8
  %37 = icmp uge i64 %36, 4
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load ptr, ptr %6, align 8
  %40 = load i32, ptr %8, align 4
  %41 = call i32 @XXH_readLE32_align(ptr noundef %39, i32 noundef %40)
  %42 = zext i32 %41 to i64
  %43 = mul i64 %42, -7046029288634856825
  %44 = load i64, ptr %5, align 8
  %45 = xor i64 %44, %43
  store i64 %45, ptr %5, align 8
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds i8, ptr %46, i64 4
  store ptr %47, ptr %6, align 8
  %48 = load i64, ptr %5, align 8
  %49 = call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 23)
  %50 = mul i64 %49, -4417276706812531889
  %51 = add i64 %50, 1609587929392839161
  store i64 %51, ptr %5, align 8
  %52 = load i64, ptr %7, align 8
  %53 = sub i64 %52, 4
  store i64 %53, ptr %7, align 8
  br label %54

54:                                               ; preds = %38, %35
  br label %55

55:                                               ; preds = %58, %54
  %56 = load i64, ptr %7, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr inbounds nuw i8, ptr %59, i32 1
  store ptr %60, ptr %6, align 8
  %61 = load i8, ptr %59, align 1
  %62 = zext i8 %61 to i64
  %63 = mul i64 %62, 2870177450012600261
  %64 = load i64, ptr %5, align 8
  %65 = xor i64 %64, %63
  store i64 %65, ptr %5, align 8
  %66 = load i64, ptr %5, align 8
  %67 = call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 11)
  %68 = mul i64 %67, -7046029288634856825
  store i64 %68, ptr %5, align 8
  %69 = load i64, ptr %7, align 8
  %70 = add i64 %69, -1
  store i64 %70, ptr %7, align 8
  br label %55, !llvm.loop !13

71:                                               ; preds = %55
  %72 = load i64, ptr %5, align 8
  %73 = call i64 @XXH64_avalanche(i64 noundef %72)
  ret i64 %73
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XXH64_canonicalFromHash(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  br label %5

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5
  %7 = load i64, ptr %4, align 8
  %8 = call i64 @XXH_swap64(i64 noundef %7)
  store i64 %8, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = call ptr @XXH_memcpy(ptr noundef %9, ptr noundef %4, i64 noundef 8)
  ret void
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
define dso_local i64 @XXH64_hashFromCanonical(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @XXH_readBE64(ptr noundef %3)
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_readBE64(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @XXH_read64(ptr noundef %3)
  %5 = call i64 @XXH_swap64(i64 noundef %4)
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XXH3_64bits(ptr noundef %0, i64 noundef %1) #0 {
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
define dso_local i64 @XXH3_64bits_withSecret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
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

; Function Attrs: noinline nounwind optnone uwtable
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
  %16 = call i64 @XXH3_hashLong_64b_internal(ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, ptr noundef @XXH3_accumulate_512_avx2, ptr noundef @XXH3_scrambleAcc_avx2)
  ret i64 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
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
define dso_local ptr @XXH3_createState() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = call ptr @XXH_alignedMalloc(i64 noundef 576, i64 noundef 64)
  store ptr %3, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store ptr null, ptr %1, align 8
  br label %11

7:                                                ; preds = %0
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %8, i32 0, i32 9
  store i64 0, ptr %9, align 8
  %10 = load ptr, ptr %2, align 8
  store ptr %10, ptr %1, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load ptr, ptr %1, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @XXH_alignedMalloc(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %9 = load i64, ptr %4, align 8
  %10 = load i64, ptr %5, align 8
  %11 = add i64 %9, %10
  %12 = call ptr @XXH_malloc(i64 noundef %11)
  store ptr %12, ptr %6, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i64, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = ptrtoint ptr %17 to i64
  %19 = load i64, ptr %5, align 8
  %20 = sub i64 %19, 1
  %21 = and i64 %18, %20
  %22 = sub i64 %16, %21
  store i64 %22, ptr %7, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %7, align 8
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %24
  store ptr %25, ptr %8, align 8
  %26 = load i64, ptr %7, align 8
  %27 = trunc i64 %26 to i8
  %28 = load ptr, ptr %8, align 8
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  store i8 %27, ptr %29, align 1
  %30 = load ptr, ptr %8, align 8
  store ptr %30, ptr %3, align 8
  br label %32

31:                                               ; preds = %2
  store ptr null, ptr %3, align 8
  br label %32

32:                                               ; preds = %31, %15
  %33 = load ptr, ptr %3, align 8
  ret ptr %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH3_freeState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @XXH_alignedFree(ptr noundef %3)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH_alignedFree(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  store ptr %9, ptr %3, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr %4, align 1
  %13 = load ptr, ptr %3, align 8
  %14 = load i8, ptr %4, align 1
  %15 = zext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = sub i64 0, %16
  %18 = getelementptr inbounds i8, ptr %13, i64 %17
  store ptr %18, ptr %5, align 8
  %19 = load ptr, ptr %5, align 8
  call void @XXH_free(ptr noundef %19)
  br label %20

20:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XXH3_copyState(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @XXH_memcpy(ptr noundef %5, ptr noundef %6, i64 noundef 576)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH3_64bits_reset(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  call void @XXH3_reset_internal(ptr noundef %8, i64 noundef 0, ptr noundef @XXH3_kSecret, i64 noundef 192)
  store i32 0, ptr %2, align 4
  br label %9

9:                                                ; preds = %7, %6
  %10 = load i32, ptr %2, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_reset_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  store i64 512, ptr %9, align 8
  store i64 24, ptr %10, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 512
  call void @llvm.memset.p0.i64(ptr align 1 %12, i8 0, i64 24, i1 false)
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  store i64 3266489917, ptr %15, align 64
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds [8 x i64], ptr %17, i64 0, i64 1
  store i64 -7046029288634856825, ptr %18, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds [8 x i64], ptr %20, i64 0, i64 2
  store i64 -4417276706812531889, ptr %21, align 16
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %22, i32 0, i32 0
  %24 = getelementptr inbounds [8 x i64], ptr %23, i64 0, i64 3
  store i64 1609587929392839161, ptr %24, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %25, i32 0, i32 0
  %27 = getelementptr inbounds [8 x i64], ptr %26, i64 0, i64 4
  store i64 -8796714831421723037, ptr %27, align 32
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds [8 x i64], ptr %29, i64 0, i64 5
  store i64 2246822519, ptr %30, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %31, i32 0, i32 0
  %33 = getelementptr inbounds [8 x i64], ptr %32, i64 0, i64 6
  store i64 2870177450012600261, ptr %33, align 16
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds [8 x i64], ptr %35, i64 0, i64 7
  store i64 2654435761, ptr %36, align 8
  %37 = load i64, ptr %6, align 8
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %38, i32 0, i32 9
  store i64 %37, ptr %39, align 8
  %40 = load ptr, ptr %7, align 8
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %41, i32 0, i32 11
  store ptr %40, ptr %42, align 8
  %43 = load i64, ptr %8, align 8
  %44 = sub i64 %43, 64
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %45, i32 0, i32 8
  store i64 %44, ptr %46, align 32
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %47, i32 0, i32 8
  %49 = load i64, ptr %48, align 32
  %50 = udiv i64 %49, 8
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %51, i32 0, i32 7
  store i64 %50, ptr %52, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH3_64bits_reset_withSecret(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 1, ptr %4, align 4
  br label %23

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load i64, ptr %7, align 8
  call void @XXH3_reset_internal(ptr noundef %12, i64 noundef 0, ptr noundef %13, i64 noundef %14)
  %15 = load ptr, ptr %6, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, ptr %4, align 4
  br label %23

18:                                               ; preds = %11
  %19 = load i64, ptr %7, align 8
  %20 = icmp ult i64 %19, 136
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, ptr %4, align 4
  br label %23

22:                                               ; preds = %18
  store i32 0, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %21, %17, %10
  %24 = load i32, ptr %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH3_64bits_reset_withSeed(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, ptr %3, align 4
  br label %29

9:                                                ; preds = %2
  %10 = load i64, ptr %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8
  %14 = call i32 @XXH3_64bits_reset(ptr noundef %13)
  store i32 %14, ptr %3, align 4
  br label %29

15:                                               ; preds = %9
  %16 = load i64, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %17, i32 0, i32 9
  %19 = load i64, ptr %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds [192 x i8], ptr %23, i64 0, i64 0
  %25 = load i64, ptr %5, align 8
  call void @XXH3_initCustomSecret_avx2(ptr noundef %24, i64 noundef %25)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load ptr, ptr %4, align 8
  %28 = load i64, ptr %5, align 8
  call void @XXH3_reset_internal(ptr noundef %27, i64 noundef %28, ptr noundef null, i64 noundef 192)
  store i32 0, ptr %3, align 4
  br label %29

29:                                               ; preds = %26, %12, %8
  %30 = load i32, ptr %3, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_initCustomSecret_avx2(ptr noalias noundef %0, i64 noundef %1) #3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca <4 x i64>, align 32
  %10 = alloca <4 x i64>, align 32
  %11 = alloca <4 x i64>, align 32
  %12 = alloca <4 x i64>, align 32
  %13 = alloca <4 x i64>, align 32
  %14 = alloca <4 x i64>, align 32
  %15 = alloca <4 x i64>, align 32
  %16 = alloca <4 x i64>, align 32
  %17 = alloca <4 x i64>, align 32
  %18 = alloca <4 x i64>, align 32
  %19 = alloca <4 x i64>, align 32
  %20 = alloca <4 x i64>, align 32
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca <4 x i64>, align 32
  %26 = alloca ptr, align 8
  %27 = alloca i64, align 8
  %28 = alloca <4 x i64>, align 32
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  store ptr %0, ptr %26, align 8
  store i64 %1, ptr %27, align 8
  br label %31

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %26, align 8
  call void @llvm.prefetch.p0(ptr %37, i32 0, i32 3, i32 1)
  %38 = load i64, ptr %27, align 8
  %39 = sub i64 0, %38
  %40 = load i64, ptr %27, align 8
  %41 = load i64, ptr %27, align 8
  %42 = sub i64 0, %41
  %43 = load i64, ptr %27, align 8
  store i64 %39, ptr %21, align 8
  store i64 %40, ptr %22, align 8
  store i64 %42, ptr %23, align 8
  store i64 %43, ptr %24, align 8
  %44 = load i64, ptr %24, align 8
  %45 = insertelement <4 x i64> poison, i64 %44, i32 0
  %46 = load i64, ptr %23, align 8
  %47 = insertelement <4 x i64> %45, i64 %46, i32 1
  %48 = load i64, ptr %22, align 8
  %49 = insertelement <4 x i64> %47, i64 %48, i32 2
  %50 = load i64, ptr %21, align 8
  %51 = insertelement <4 x i64> %49, i64 %50, i32 3
  store <4 x i64> %51, ptr %25, align 32
  %52 = load <4 x i64>, ptr %25, align 32
  store <4 x i64> %52, ptr %28, align 32
  store ptr @XXH3_kSecret, ptr %29, align 8
  %53 = load ptr, ptr %26, align 8
  store ptr %53, ptr %30, align 8
  %54 = load ptr, ptr %30, align 8
  %55 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %54) #11, !srcloc !14
  store ptr %55, ptr %30, align 8
  store ptr @XXH3_kSecret, ptr %3, align 8
  %56 = load ptr, ptr %3, align 8
  %57 = load <4 x i64>, ptr %56, align 32, !nontemporal !15
  %58 = load <4 x i64>, ptr %28, align 32
  store <4 x i64> %57, ptr %9, align 32
  store <4 x i64> %58, ptr %10, align 32
  %59 = load <4 x i64>, ptr %9, align 32
  %60 = load <4 x i64>, ptr %10, align 32
  %61 = add <4 x i64> %59, %60
  %62 = load ptr, ptr %30, align 8
  %63 = getelementptr inbounds <4 x i64>, ptr %62, i64 0
  store <4 x i64> %61, ptr %63, align 32
  store ptr getelementptr inbounds (<4 x i64>, ptr @XXH3_kSecret, i64 1), ptr %4, align 8
  %64 = load ptr, ptr %4, align 8
  %65 = load <4 x i64>, ptr %64, align 32, !nontemporal !15
  %66 = load <4 x i64>, ptr %28, align 32
  store <4 x i64> %65, ptr %11, align 32
  store <4 x i64> %66, ptr %12, align 32
  %67 = load <4 x i64>, ptr %11, align 32
  %68 = load <4 x i64>, ptr %12, align 32
  %69 = add <4 x i64> %67, %68
  %70 = load ptr, ptr %30, align 8
  %71 = getelementptr inbounds <4 x i64>, ptr %70, i64 1
  store <4 x i64> %69, ptr %71, align 32
  store ptr getelementptr inbounds (<4 x i64>, ptr @XXH3_kSecret, i64 2), ptr %5, align 8
  %72 = load ptr, ptr %5, align 8
  %73 = load <4 x i64>, ptr %72, align 32, !nontemporal !15
  %74 = load <4 x i64>, ptr %28, align 32
  store <4 x i64> %73, ptr %13, align 32
  store <4 x i64> %74, ptr %14, align 32
  %75 = load <4 x i64>, ptr %13, align 32
  %76 = load <4 x i64>, ptr %14, align 32
  %77 = add <4 x i64> %75, %76
  %78 = load ptr, ptr %30, align 8
  %79 = getelementptr inbounds <4 x i64>, ptr %78, i64 2
  store <4 x i64> %77, ptr %79, align 32
  store ptr getelementptr inbounds (<4 x i64>, ptr @XXH3_kSecret, i64 3), ptr %6, align 8
  %80 = load ptr, ptr %6, align 8
  %81 = load <4 x i64>, ptr %80, align 32, !nontemporal !15
  %82 = load <4 x i64>, ptr %28, align 32
  store <4 x i64> %81, ptr %15, align 32
  store <4 x i64> %82, ptr %16, align 32
  %83 = load <4 x i64>, ptr %15, align 32
  %84 = load <4 x i64>, ptr %16, align 32
  %85 = add <4 x i64> %83, %84
  %86 = load ptr, ptr %30, align 8
  %87 = getelementptr inbounds <4 x i64>, ptr %86, i64 3
  store <4 x i64> %85, ptr %87, align 32
  store ptr getelementptr inbounds (<4 x i64>, ptr @XXH3_kSecret, i64 4), ptr %7, align 8
  %88 = load ptr, ptr %7, align 8
  %89 = load <4 x i64>, ptr %88, align 32, !nontemporal !15
  %90 = load <4 x i64>, ptr %28, align 32
  store <4 x i64> %89, ptr %17, align 32
  store <4 x i64> %90, ptr %18, align 32
  %91 = load <4 x i64>, ptr %17, align 32
  %92 = load <4 x i64>, ptr %18, align 32
  %93 = add <4 x i64> %91, %92
  %94 = load ptr, ptr %30, align 8
  %95 = getelementptr inbounds <4 x i64>, ptr %94, i64 4
  store <4 x i64> %93, ptr %95, align 32
  store ptr getelementptr inbounds (<4 x i64>, ptr @XXH3_kSecret, i64 5), ptr %8, align 8
  %96 = load ptr, ptr %8, align 8
  %97 = load <4 x i64>, ptr %96, align 32, !nontemporal !15
  %98 = load <4 x i64>, ptr %28, align 32
  store <4 x i64> %97, ptr %19, align 32
  store <4 x i64> %98, ptr %20, align 32
  %99 = load <4 x i64>, ptr %19, align 32
  %100 = load <4 x i64>, ptr %20, align 32
  %101 = add <4 x i64> %99, %100
  %102 = load ptr, ptr %30, align 8
  %103 = getelementptr inbounds <4 x i64>, ptr %102, i64 5
  store <4 x i64> %101, ptr %103, align 32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call i32 @XXH3_update(ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef @XXH3_accumulate_512_avx2, ptr noundef @XXH3_scrambleAcc_avx2)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH3_update(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [8 x i64], align 32
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, ptr %6, align 4
  br label %286

22:                                               ; preds = %5
  %23 = load ptr, ptr %8, align 8
  %24 = load i64, ptr %9, align 8
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %24
  store ptr %25, ptr %12, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %26, i32 0, i32 11
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %31, i32 0, i32 1
  %33 = getelementptr inbounds [192 x i8], ptr %32, i64 0, i64 0
  br label %38

34:                                               ; preds = %22
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %35, i32 0, i32 11
  %37 = load ptr, ptr %36, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi ptr [ %33, %30 ], [ %37, %34 ]
  store ptr %39, ptr %13, align 8
  %40 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %41, i32 0, i32 0
  %43 = getelementptr inbounds [8 x i64], ptr %42, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %40, ptr align 64 %43, i64 64, i1 false)
  %44 = load i64, ptr %9, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %45, i32 0, i32 6
  %47 = load i64, ptr %46, align 16
  %48 = add i64 %47, %44
  store i64 %48, ptr %46, align 16
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 64
  %52 = zext i32 %51 to i64
  %53 = load i64, ptr %9, align 8
  %54 = add i64 %52, %53
  %55 = icmp ule i64 %54, 256
  br i1 %55, label %56, label %74

56:                                               ; preds = %38
  %57 = load ptr, ptr %7, align 8
  %58 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %57, i32 0, i32 2
  %59 = getelementptr inbounds [256 x i8], ptr %58, i64 0, i64 0
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %61, align 64
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw i8, ptr %59, i64 %63
  %65 = load ptr, ptr %8, align 8
  %66 = load i64, ptr %9, align 8
  %67 = call ptr @XXH_memcpy(ptr noundef %64, ptr noundef %65, i64 noundef %66)
  %68 = load i64, ptr %9, align 8
  %69 = trunc i64 %68 to i32
  %70 = load ptr, ptr %7, align 8
  %71 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %70, i32 0, i32 3
  %72 = load i32, ptr %71, align 64
  %73 = add i32 %72, %69
  store i32 %73, ptr %71, align 64
  store i32 0, ptr %6, align 4
  br label %286

74:                                               ; preds = %38
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr %7, align 8
  %78 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %77, i32 0, i32 3
  %79 = load i32, ptr %78, align 64
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %76
  %82 = load ptr, ptr %7, align 8
  %83 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %82, i32 0, i32 3
  %84 = load i32, ptr %83, align 64
  %85 = sub i32 256, %84
  %86 = zext i32 %85 to i64
  store i64 %86, ptr %15, align 8
  %87 = load ptr, ptr %7, align 8
  %88 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %87, i32 0, i32 2
  %89 = getelementptr inbounds [256 x i8], ptr %88, i64 0, i64 0
  %90 = load ptr, ptr %7, align 8
  %91 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %90, i32 0, i32 3
  %92 = load i32, ptr %91, align 64
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds nuw i8, ptr %89, i64 %93
  %95 = load ptr, ptr %8, align 8
  %96 = load i64, ptr %15, align 8
  %97 = call ptr @XXH_memcpy(ptr noundef %94, ptr noundef %95, i64 noundef %96)
  %98 = load i64, ptr %15, align 8
  %99 = load ptr, ptr %8, align 8
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 %98
  store ptr %100, ptr %8, align 8
  %101 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %102 = load ptr, ptr %7, align 8
  %103 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %7, align 8
  %105 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %104, i32 0, i32 7
  %106 = load i64, ptr %105, align 8
  %107 = load ptr, ptr %7, align 8
  %108 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %107, i32 0, i32 2
  %109 = getelementptr inbounds [256 x i8], ptr %108, i64 0, i64 0
  %110 = load ptr, ptr %13, align 8
  %111 = load ptr, ptr %7, align 8
  %112 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %111, i32 0, i32 8
  %113 = load i64, ptr %112, align 32
  %114 = load ptr, ptr %10, align 8
  %115 = load ptr, ptr %11, align 8
  call void @XXH3_consumeStripes(ptr noundef %101, ptr noundef %103, i64 noundef %106, ptr noundef %109, i64 noundef 4, ptr noundef %110, i64 noundef %113, ptr noundef %114, ptr noundef %115)
  %116 = load ptr, ptr %7, align 8
  %117 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %116, i32 0, i32 3
  store i32 0, ptr %117, align 64
  br label %118

118:                                              ; preds = %81, %76
  %119 = load ptr, ptr %12, align 8
  %120 = load ptr, ptr %8, align 8
  %121 = ptrtoint ptr %119 to i64
  %122 = ptrtoint ptr %120 to i64
  %123 = sub i64 %121, %122
  %124 = load ptr, ptr %7, align 8
  %125 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %124, i32 0, i32 7
  %126 = load i64, ptr %125, align 8
  %127 = mul i64 %126, 64
  %128 = icmp ugt i64 %123, %127
  br i1 %128, label %129, label %223

129:                                              ; preds = %118
  %130 = load ptr, ptr %12, align 8
  %131 = getelementptr inbounds i8, ptr %130, i64 -1
  %132 = load ptr, ptr %8, align 8
  %133 = ptrtoint ptr %131 to i64
  %134 = ptrtoint ptr %132 to i64
  %135 = sub i64 %133, %134
  %136 = udiv i64 %135, 64
  store i64 %136, ptr %16, align 8
  %137 = load ptr, ptr %7, align 8
  %138 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %137, i32 0, i32 7
  %139 = load i64, ptr %138, align 8
  %140 = load ptr, ptr %7, align 8
  %141 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %140, i32 0, i32 5
  %142 = load i64, ptr %141, align 8
  %143 = sub i64 %139, %142
  store i64 %143, ptr %17, align 8
  %144 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %145 = load ptr, ptr %8, align 8
  %146 = load ptr, ptr %13, align 8
  %147 = load ptr, ptr %7, align 8
  %148 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %147, i32 0, i32 5
  %149 = load i64, ptr %148, align 8
  %150 = mul i64 %149, 8
  %151 = getelementptr inbounds nuw i8, ptr %146, i64 %150
  %152 = load i64, ptr %17, align 8
  %153 = load ptr, ptr %10, align 8
  call void @XXH3_accumulate(ptr noundef %144, ptr noundef %145, ptr noundef %151, i64 noundef %152, ptr noundef %153)
  %154 = load ptr, ptr %11, align 8
  %155 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %156 = load ptr, ptr %13, align 8
  %157 = load ptr, ptr %7, align 8
  %158 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %157, i32 0, i32 8
  %159 = load i64, ptr %158, align 32
  %160 = getelementptr inbounds nuw i8, ptr %156, i64 %159
  call void %154(ptr noundef %155, ptr noundef %160)
  %161 = load ptr, ptr %7, align 8
  %162 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %161, i32 0, i32 5
  store i64 0, ptr %162, align 8
  %163 = load i64, ptr %17, align 8
  %164 = mul i64 %163, 64
  %165 = load ptr, ptr %8, align 8
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 %164
  store ptr %166, ptr %8, align 8
  %167 = load i64, ptr %17, align 8
  %168 = load i64, ptr %16, align 8
  %169 = sub i64 %168, %167
  store i64 %169, ptr %16, align 8
  br label %170

170:                                              ; preds = %176, %129
  %171 = load i64, ptr %16, align 8
  %172 = load ptr, ptr %7, align 8
  %173 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %172, i32 0, i32 7
  %174 = load i64, ptr %173, align 8
  %175 = icmp uge i64 %171, %174
  br i1 %175, label %176, label %202

176:                                              ; preds = %170
  %177 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %178 = load ptr, ptr %8, align 8
  %179 = load ptr, ptr %13, align 8
  %180 = load ptr, ptr %7, align 8
  %181 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %180, i32 0, i32 7
  %182 = load i64, ptr %181, align 8
  %183 = load ptr, ptr %10, align 8
  call void @XXH3_accumulate(ptr noundef %177, ptr noundef %178, ptr noundef %179, i64 noundef %182, ptr noundef %183)
  %184 = load ptr, ptr %11, align 8
  %185 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %186 = load ptr, ptr %13, align 8
  %187 = load ptr, ptr %7, align 8
  %188 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %187, i32 0, i32 8
  %189 = load i64, ptr %188, align 32
  %190 = getelementptr inbounds nuw i8, ptr %186, i64 %189
  call void %184(ptr noundef %185, ptr noundef %190)
  %191 = load ptr, ptr %7, align 8
  %192 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %191, i32 0, i32 7
  %193 = load i64, ptr %192, align 8
  %194 = mul i64 %193, 64
  %195 = load ptr, ptr %8, align 8
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 %194
  store ptr %196, ptr %8, align 8
  %197 = load ptr, ptr %7, align 8
  %198 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %197, i32 0, i32 7
  %199 = load i64, ptr %198, align 8
  %200 = load i64, ptr %16, align 8
  %201 = sub i64 %200, %199
  store i64 %201, ptr %16, align 8
  br label %170, !llvm.loop !16

202:                                              ; preds = %170
  %203 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %204 = load ptr, ptr %8, align 8
  %205 = load ptr, ptr %13, align 8
  %206 = load i64, ptr %16, align 8
  %207 = load ptr, ptr %10, align 8
  call void @XXH3_accumulate(ptr noundef %203, ptr noundef %204, ptr noundef %205, i64 noundef %206, ptr noundef %207)
  %208 = load i64, ptr %16, align 8
  %209 = mul i64 %208, 64
  %210 = load ptr, ptr %8, align 8
  %211 = getelementptr inbounds nuw i8, ptr %210, i64 %209
  store ptr %211, ptr %8, align 8
  %212 = load i64, ptr %16, align 8
  %213 = load ptr, ptr %7, align 8
  %214 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %213, i32 0, i32 5
  store i64 %212, ptr %214, align 8
  %215 = load ptr, ptr %7, align 8
  %216 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %215, i32 0, i32 2
  %217 = getelementptr inbounds [256 x i8], ptr %216, i64 0, i64 0
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 256
  %219 = getelementptr inbounds i8, ptr %218, i64 -64
  %220 = load ptr, ptr %8, align 8
  %221 = getelementptr inbounds i8, ptr %220, i64 -64
  %222 = call ptr @XXH_memcpy(ptr noundef %219, ptr noundef %221, i64 noundef 64)
  br label %263

223:                                              ; preds = %118
  %224 = load ptr, ptr %12, align 8
  %225 = load ptr, ptr %8, align 8
  %226 = ptrtoint ptr %224 to i64
  %227 = ptrtoint ptr %225 to i64
  %228 = sub i64 %226, %227
  %229 = icmp sgt i64 %228, 256
  br i1 %229, label %230, label %262

230:                                              ; preds = %223
  %231 = load ptr, ptr %12, align 8
  %232 = getelementptr inbounds i8, ptr %231, i64 -256
  store ptr %232, ptr %18, align 8
  br label %233

233:                                              ; preds = %249, %230
  %234 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %235 = load ptr, ptr %7, align 8
  %236 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %235, i32 0, i32 5
  %237 = load ptr, ptr %7, align 8
  %238 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %237, i32 0, i32 7
  %239 = load i64, ptr %238, align 8
  %240 = load ptr, ptr %8, align 8
  %241 = load ptr, ptr %13, align 8
  %242 = load ptr, ptr %7, align 8
  %243 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %242, i32 0, i32 8
  %244 = load i64, ptr %243, align 32
  %245 = load ptr, ptr %10, align 8
  %246 = load ptr, ptr %11, align 8
  call void @XXH3_consumeStripes(ptr noundef %234, ptr noundef %236, i64 noundef %239, ptr noundef %240, i64 noundef 4, ptr noundef %241, i64 noundef %244, ptr noundef %245, ptr noundef %246)
  %247 = load ptr, ptr %8, align 8
  %248 = getelementptr inbounds i8, ptr %247, i64 256
  store ptr %248, ptr %8, align 8
  br label %249

249:                                              ; preds = %233
  %250 = load ptr, ptr %8, align 8
  %251 = load ptr, ptr %18, align 8
  %252 = icmp ult ptr %250, %251
  br i1 %252, label %233, label %253, !llvm.loop !17

253:                                              ; preds = %249
  %254 = load ptr, ptr %7, align 8
  %255 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %254, i32 0, i32 2
  %256 = getelementptr inbounds [256 x i8], ptr %255, i64 0, i64 0
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 256
  %258 = getelementptr inbounds i8, ptr %257, i64 -64
  %259 = load ptr, ptr %8, align 8
  %260 = getelementptr inbounds i8, ptr %259, i64 -64
  %261 = call ptr @XXH_memcpy(ptr noundef %258, ptr noundef %260, i64 noundef 64)
  br label %262

262:                                              ; preds = %253, %223
  br label %263

263:                                              ; preds = %262, %202
  %264 = load ptr, ptr %7, align 8
  %265 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %264, i32 0, i32 2
  %266 = getelementptr inbounds [256 x i8], ptr %265, i64 0, i64 0
  %267 = load ptr, ptr %8, align 8
  %268 = load ptr, ptr %12, align 8
  %269 = load ptr, ptr %8, align 8
  %270 = ptrtoint ptr %268 to i64
  %271 = ptrtoint ptr %269 to i64
  %272 = sub i64 %270, %271
  %273 = call ptr @XXH_memcpy(ptr noundef %266, ptr noundef %267, i64 noundef %272)
  %274 = load ptr, ptr %12, align 8
  %275 = load ptr, ptr %8, align 8
  %276 = ptrtoint ptr %274 to i64
  %277 = ptrtoint ptr %275 to i64
  %278 = sub i64 %276, %277
  %279 = trunc i64 %278 to i32
  %280 = load ptr, ptr %7, align 8
  %281 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %280, i32 0, i32 3
  store i32 %279, ptr %281, align 64
  %282 = load ptr, ptr %7, align 8
  %283 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %282, i32 0, i32 0
  %284 = getelementptr inbounds [8 x i64], ptr %283, i64 0, i64 0
  %285 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %284, ptr align 32 %285, i64 64, i1 false)
  store i32 0, ptr %6, align 4
  br label %286

286:                                              ; preds = %263, %56, %21
  %287 = load i32, ptr %6, align 4
  ret i32 %287
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_accumulate_512_avx2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2) #3 {
  %4 = alloca <4 x i64>, align 32
  %5 = alloca <4 x i64>, align 32
  %6 = alloca <4 x i64>, align 32
  %7 = alloca <4 x i64>, align 32
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca <4 x i64>, align 32
  %11 = alloca <4 x i64>, align 32
  %12 = alloca <4 x i64>, align 32
  %13 = alloca <4 x i64>, align 32
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
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
  store ptr %28, ptr %17, align 8
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
  store ptr %37, ptr %8, align 8
  %38 = load ptr, ptr %8, align 8
  %39 = load <4 x i64>, ptr %38, align 1
  store <4 x i64> %39, ptr %21, align 32
  %40 = load ptr, ptr %19, align 8
  %41 = load i64, ptr %20, align 8
  %42 = getelementptr inbounds nuw <4 x i64>, ptr %40, i64 %41
  store ptr %42, ptr %9, align 8
  %43 = load ptr, ptr %9, align 8
  %44 = load <4 x i64>, ptr %43, align 1
  store <4 x i64> %44, ptr %22, align 32
  %45 = load <4 x i64>, ptr %21, align 32
  %46 = load <4 x i64>, ptr %22, align 32
  store <4 x i64> %45, ptr %6, align 32
  store <4 x i64> %46, ptr %7, align 32
  %47 = load <4 x i64>, ptr %6, align 32
  %48 = load <4 x i64>, ptr %7, align 32
  %49 = xor <4 x i64> %47, %48
  store <4 x i64> %49, ptr %23, align 32
  %50 = load <4 x i64>, ptr %23, align 32
  %51 = bitcast <4 x i64> %50 to <8 x i32>
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %53 = bitcast <8 x i32> %52 to <4 x i64>
  store <4 x i64> %53, ptr %24, align 32
  %54 = load <4 x i64>, ptr %23, align 32
  %55 = load <4 x i64>, ptr %24, align 32
  store <4 x i64> %54, ptr %4, align 32
  store <4 x i64> %55, ptr %5, align 32
  %56 = load <4 x i64>, ptr %4, align 32
  %57 = bitcast <4 x i64> %56 to <8 x i32>
  %58 = load <4 x i64>, ptr %5, align 32
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
  %67 = load ptr, ptr %17, align 8
  %68 = load i64, ptr %20, align 8
  %69 = getelementptr inbounds nuw <4 x i64>, ptr %67, i64 %68
  %70 = load <4 x i64>, ptr %69, align 32
  %71 = load <4 x i64>, ptr %26, align 32
  store <4 x i64> %70, ptr %10, align 32
  store <4 x i64> %71, ptr %11, align 32
  %72 = load <4 x i64>, ptr %10, align 32
  %73 = load <4 x i64>, ptr %11, align 32
  %74 = add <4 x i64> %72, %73
  store <4 x i64> %74, ptr %27, align 32
  %75 = load <4 x i64>, ptr %25, align 32
  %76 = load <4 x i64>, ptr %27, align 32
  store <4 x i64> %75, ptr %12, align 32
  store <4 x i64> %76, ptr %13, align 32
  %77 = load <4 x i64>, ptr %12, align 32
  %78 = load <4 x i64>, ptr %13, align 32
  %79 = add <4 x i64> %77, %78
  %80 = load ptr, ptr %17, align 8
  %81 = load i64, ptr %20, align 8
  %82 = getelementptr inbounds nuw <4 x i64>, ptr %80, i64 %81
  store <4 x i64> %79, ptr %82, align 32
  br label %83

83:                                               ; preds = %34
  %84 = load i64, ptr %20, align 8
  %85 = add i64 %84, 1
  store i64 %85, ptr %20, align 8
  br label %31, !llvm.loop !18

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
  %25 = alloca ptr, align 8
  %26 = alloca <4 x i64>, align 32
  %27 = alloca <4 x i64>, align 32
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
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
  store ptr %42, ptr %30, align 8
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
  %74 = load ptr, ptr %30, align 8
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
  store <4 x i64> %82, ptr %21, align 32
  store <4 x i64> %83, ptr %22, align 32
  %84 = load <4 x i64>, ptr %21, align 32
  %85 = load <4 x i64>, ptr %22, align 32
  %86 = xor <4 x i64> %84, %85
  store <4 x i64> %86, ptr %36, align 32
  %87 = load ptr, ptr %31, align 8
  %88 = load i64, ptr %33, align 8
  %89 = getelementptr inbounds nuw <4 x i64>, ptr %87, i64 %88
  store ptr %89, ptr %25, align 8
  %90 = load ptr, ptr %25, align 8
  %91 = load <4 x i64>, ptr %90, align 1
  store <4 x i64> %91, ptr %37, align 32
  %92 = load <4 x i64>, ptr %36, align 32
  %93 = load <4 x i64>, ptr %37, align 32
  store <4 x i64> %92, ptr %23, align 32
  store <4 x i64> %93, ptr %24, align 32
  %94 = load <4 x i64>, ptr %23, align 32
  %95 = load <4 x i64>, ptr %24, align 32
  %96 = xor <4 x i64> %94, %95
  store <4 x i64> %96, ptr %38, align 32
  %97 = load <4 x i64>, ptr %38, align 32
  %98 = bitcast <4 x i64> %97 to <8 x i32>
  %99 = shufflevector <8 x i32> %98, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %100 = bitcast <8 x i32> %99 to <4 x i64>
  store <4 x i64> %100, ptr %39, align 32
  %101 = load <4 x i64>, ptr %38, align 32
  %102 = load <4 x i64>, ptr %32, align 32
  store <4 x i64> %101, ptr %17, align 32
  store <4 x i64> %102, ptr %18, align 32
  %103 = load <4 x i64>, ptr %17, align 32
  %104 = bitcast <4 x i64> %103 to <8 x i32>
  %105 = load <4 x i64>, ptr %18, align 32
  %106 = bitcast <4 x i64> %105 to <8 x i32>
  %107 = and <4 x i64> %103, splat (i64 4294967295)
  %108 = and <4 x i64> %105, splat (i64 4294967295)
  %109 = mul <4 x i64> %107, %108
  store <4 x i64> %109, ptr %40, align 32
  %110 = load <4 x i64>, ptr %39, align 32
  %111 = load <4 x i64>, ptr %32, align 32
  store <4 x i64> %110, ptr %19, align 32
  store <4 x i64> %111, ptr %20, align 32
  %112 = load <4 x i64>, ptr %19, align 32
  %113 = bitcast <4 x i64> %112 to <8 x i32>
  %114 = load <4 x i64>, ptr %20, align 32
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
  store <4 x i64> %119, ptr %26, align 32
  store <4 x i64> %123, ptr %27, align 32
  %124 = load <4 x i64>, ptr %26, align 32
  %125 = load <4 x i64>, ptr %27, align 32
  %126 = add <4 x i64> %124, %125
  %127 = load ptr, ptr %30, align 8
  %128 = load i64, ptr %33, align 8
  %129 = getelementptr inbounds nuw <4 x i64>, ptr %127, i64 %128
  store <4 x i64> %126, ptr %129, align 32
  br label %130

130:                                              ; preds = %73
  %131 = load i64, ptr %33, align 8
  %132 = add i64 %131, 1
  store i64 %132, ptr %33, align 8
  br label %70, !llvm.loop !19

133:                                              ; preds = %70
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XXH3_64bits_digest(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [8 x i64], align 32
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %11, i32 0, i32 1
  %13 = getelementptr inbounds [192 x i8], ptr %12, i64 0, i64 0
  br label %18

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %13, %10 ], [ %17, %14 ]
  store ptr %19, ptr %4, align 8
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %20, i32 0, i32 6
  %22 = load i64, ptr %21, align 16
  %23 = icmp ugt i64 %22, 240
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = getelementptr inbounds [8 x i64], ptr %5, i64 0, i64 0
  %26 = load ptr, ptr %3, align 8
  %27 = load ptr, ptr %4, align 8
  call void @XXH3_digest_long(ptr noundef %25, ptr noundef %26, ptr noundef %27)
  %28 = getelementptr inbounds [8 x i64], ptr %5, i64 0, i64 0
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds i8, ptr %29, i64 11
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %31, i32 0, i32 6
  %33 = load i64, ptr %32, align 16
  %34 = mul i64 %33, -7046029288634856825
  %35 = call i64 @XXH3_mergeAccs(ptr noundef %28, ptr noundef %30, i64 noundef %34)
  store i64 %35, ptr %2, align 8
  br label %65

36:                                               ; preds = %18
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %37, i32 0, i32 9
  %39 = load i64, ptr %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %42, i32 0, i32 2
  %44 = getelementptr inbounds [256 x i8], ptr %43, i64 0, i64 0
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %45, i32 0, i32 6
  %47 = load i64, ptr %46, align 16
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %48, i32 0, i32 9
  %50 = load i64, ptr %49, align 8
  %51 = call i64 @XXH3_64bits_withSeed(ptr noundef %44, i64 noundef %47, i64 noundef %50)
  store i64 %51, ptr %2, align 8
  br label %65

52:                                               ; preds = %36
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %53, i32 0, i32 2
  %55 = getelementptr inbounds [256 x i8], ptr %54, i64 0, i64 0
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %56, i32 0, i32 6
  %58 = load i64, ptr %57, align 16
  %59 = load ptr, ptr %4, align 8
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %60, i32 0, i32 8
  %62 = load i64, ptr %61, align 32
  %63 = add i64 %62, 64
  %64 = call i64 @XXH3_64bits_withSecret(ptr noundef %55, i64 noundef %58, ptr noundef %59, i64 noundef %63)
  store i64 %64, ptr %2, align 8
  br label %65

65:                                               ; preds = %52, %41, %24
  %66 = load i64, ptr %2, align 8
  ret i64 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_digest_long(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds [8 x i64], ptr %13, i64 0, i64 0
  %15 = call ptr @XXH_memcpy(ptr noundef %11, ptr noundef %14, i64 noundef 64)
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 64
  %19 = icmp uge i32 %18, 64
  br i1 %19, label %20, label %58

20:                                               ; preds = %3
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 64
  %24 = sub i32 %23, 1
  %25 = udiv i32 %24, 64
  %26 = zext i32 %25 to i64
  store i64 %26, ptr %7, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %27, i32 0, i32 5
  %29 = load i64, ptr %28, align 8
  store i64 %29, ptr %8, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %31, i32 0, i32 7
  %33 = load i64, ptr %32, align 8
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %34, i32 0, i32 2
  %36 = getelementptr inbounds [256 x i8], ptr %35, i64 0, i64 0
  %37 = load i64, ptr %7, align 8
  %38 = load ptr, ptr %6, align 8
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %39, i32 0, i32 8
  %41 = load i64, ptr %40, align 32
  call void @XXH3_consumeStripes(ptr noundef %30, ptr noundef %8, i64 noundef %33, ptr noundef %36, i64 noundef %37, ptr noundef %38, i64 noundef %41, ptr noundef @XXH3_accumulate_512_avx2, ptr noundef @XXH3_scrambleAcc_avx2)
  %42 = load ptr, ptr %4, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %43, i32 0, i32 2
  %45 = getelementptr inbounds [256 x i8], ptr %44, i64 0, i64 0
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %46, i32 0, i32 3
  %48 = load i32, ptr %47, align 64
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds nuw i8, ptr %45, i64 %49
  %51 = getelementptr inbounds i8, ptr %50, i64 -64
  %52 = load ptr, ptr %6, align 8
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %53, i32 0, i32 8
  %55 = load i64, ptr %54, align 32
  %56 = getelementptr inbounds nuw i8, ptr %52, i64 %55
  %57 = getelementptr inbounds i8, ptr %56, i64 -7
  call void @XXH3_accumulate_512_avx2(ptr noundef %42, ptr noundef %51, ptr noundef %57)
  br label %93

58:                                               ; preds = %3
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 64
  %62 = sub i32 64, %61
  %63 = zext i32 %62 to i64
  store i64 %63, ptr %10, align 8
  %64 = getelementptr inbounds [64 x i8], ptr %9, i64 0, i64 0
  %65 = load ptr, ptr %5, align 8
  %66 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %65, i32 0, i32 2
  %67 = getelementptr inbounds [256 x i8], ptr %66, i64 0, i64 0
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 256
  %69 = load i64, ptr %10, align 8
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  %72 = load i64, ptr %10, align 8
  %73 = call ptr @XXH_memcpy(ptr noundef %64, ptr noundef %71, i64 noundef %72)
  %74 = getelementptr inbounds [64 x i8], ptr %9, i64 0, i64 0
  %75 = load i64, ptr %10, align 8
  %76 = getelementptr inbounds nuw i8, ptr %74, i64 %75
  %77 = load ptr, ptr %5, align 8
  %78 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %77, i32 0, i32 2
  %79 = getelementptr inbounds [256 x i8], ptr %78, i64 0, i64 0
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %80, i32 0, i32 3
  %82 = load i32, ptr %81, align 64
  %83 = zext i32 %82 to i64
  %84 = call ptr @XXH_memcpy(ptr noundef %76, ptr noundef %79, i64 noundef %83)
  %85 = load ptr, ptr %4, align 8
  %86 = getelementptr inbounds [64 x i8], ptr %9, i64 0, i64 0
  %87 = load ptr, ptr %6, align 8
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %88, i32 0, i32 8
  %90 = load i64, ptr %89, align 32
  %91 = getelementptr inbounds nuw i8, ptr %87, i64 %90
  %92 = getelementptr inbounds i8, ptr %91, i64 -7
  call void @XXH3_accumulate_512_avx2(ptr noundef %85, ptr noundef %86, ptr noundef %92)
  br label %93

93:                                               ; preds = %58, %20
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
  br label %10, !llvm.loop !20

28:                                               ; preds = %10
  %29 = load i64, ptr %7, align 8
  %30 = call i64 @XXH3_avalanche(i64 noundef %29)
  ret i64 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XXH3_generateSecret(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.XXH128_canonical_t, align 1
  %10 = alloca [12 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.XXH128_hash_t, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.XXH128_canonical_t, align 1
  %17 = alloca %struct.XXH128_hash_t, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %18 = load i64, ptr %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load ptr, ptr %4, align 8
  %22 = call ptr @XXH_memcpy(ptr noundef %21, ptr noundef @XXH3_kSecret, i64 noundef 192)
  br label %102

23:                                               ; preds = %3
  store i64 16, ptr %7, align 8
  store i64 12, ptr %8, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = load i64, ptr %6, align 8
  %26 = call { i64, i64 } @XXH128(ptr noundef %24, i64 noundef %25, i64 noundef 0)
  %27 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 0
  %28 = extractvalue { i64, i64 } %26, 0
  store i64 %28, ptr %27, align 8
  %29 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 1
  %30 = extractvalue { i64, i64 } %26, 1
  store i64 %30, ptr %29, align 8
  %31 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 0
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  call void @XXH128_canonicalFromHash(ptr noundef %9, i64 %32, i64 %34)
  %35 = load i64, ptr %6, align 8
  %36 = icmp ugt i64 %35, 96
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %40

38:                                               ; preds = %23
  %39 = load i64, ptr %6, align 8
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i64 [ 96, %37 ], [ %39, %38 ]
  store i64 %41, ptr %13, align 8
  %42 = load i64, ptr %13, align 8
  store i64 %42, ptr %14, align 8
  %43 = getelementptr inbounds [12 x i64], ptr %10, i64 0, i64 0
  %44 = load ptr, ptr %5, align 8
  %45 = load i64, ptr %13, align 8
  %46 = call ptr @XXH_memcpy(ptr noundef %43, ptr noundef %44, i64 noundef %45)
  br label %47

47:                                               ; preds = %60, %40
  %48 = load i64, ptr %14, align 8
  %49 = icmp ult i64 %48, 96
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load i64, ptr %14, align 8
  %52 = load i64, ptr %14, align 8
  %53 = sub i64 96, %52
  %54 = icmp ugt i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i64, ptr %14, align 8
  %57 = sub i64 96, %56
  br label %60

58:                                               ; preds = %50
  %59 = load i64, ptr %14, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i64 [ %57, %55 ], [ %59, %58 ]
  store i64 %61, ptr %13, align 8
  %62 = getelementptr inbounds [12 x i64], ptr %10, i64 0, i64 0
  %63 = load i64, ptr %14, align 8
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 %63
  %65 = getelementptr inbounds [12 x i64], ptr %10, i64 0, i64 0
  %66 = load i64, ptr %13, align 8
  %67 = call ptr @XXH_memcpy(ptr noundef %64, ptr noundef %65, i64 noundef %66)
  %68 = load i64, ptr %13, align 8
  %69 = load i64, ptr %14, align 8
  %70 = add i64 %69, %68
  store i64 %70, ptr %14, align 8
  br label %47, !llvm.loop !21

71:                                               ; preds = %47
  %72 = load ptr, ptr %4, align 8
  %73 = call ptr @XXH_memcpy(ptr noundef %72, ptr noundef %9, i64 noundef 16)
  store i64 1, ptr %11, align 8
  br label %74

74:                                               ; preds = %99, %71
  %75 = load i64, ptr %11, align 8
  %76 = icmp ult i64 %75, 12
  br i1 %76, label %77, label %102

77:                                               ; preds = %74
  %78 = load i64, ptr %11, align 8
  %79 = mul i64 %78, 16
  store i64 %79, ptr %15, align 8
  %80 = getelementptr inbounds [12 x i64], ptr %10, i64 0, i64 0
  %81 = load i64, ptr %11, align 8
  %82 = getelementptr inbounds nuw i64, ptr %80, i64 %81
  %83 = call i64 @XXH_readLE64(ptr noundef %82)
  %84 = load i64, ptr %11, align 8
  %85 = add i64 %83, %84
  %86 = call { i64, i64 } @XXH128(ptr noundef %9, i64 noundef 16, i64 noundef %85)
  %87 = getelementptr inbounds nuw { i64, i64 }, ptr %17, i32 0, i32 0
  %88 = extractvalue { i64, i64 } %86, 0
  store i64 %88, ptr %87, align 8
  %89 = getelementptr inbounds nuw { i64, i64 }, ptr %17, i32 0, i32 1
  %90 = extractvalue { i64, i64 } %86, 1
  store i64 %90, ptr %89, align 8
  %91 = getelementptr inbounds nuw { i64, i64 }, ptr %17, i32 0, i32 0
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr inbounds nuw { i64, i64 }, ptr %17, i32 0, i32 1
  %94 = load i64, ptr %93, align 8
  call void @XXH128_canonicalFromHash(ptr noundef %16, i64 %92, i64 %94)
  %95 = load ptr, ptr %4, align 8
  %96 = load i64, ptr %15, align 8
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 %96
  %98 = call ptr @XXH_memcpy(ptr noundef %97, ptr noundef %16, i64 noundef 16)
  br label %99

99:                                               ; preds = %77
  %100 = load i64, ptr %11, align 8
  %101 = add i64 %100, 1
  store i64 %101, ptr %11, align 8
  br label %74, !llvm.loop !22

102:                                              ; preds = %20, %74
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XXH128_canonicalFromHash(ptr noundef %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.XXH128_hash_t, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 0
  store i64 %1, ptr %6, align 8
  %7 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 1
  store i64 %2, ptr %7, align 8
  store ptr %0, ptr %5, align 8
  br label %8

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %4, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = call i64 @XXH_swap64(i64 noundef %11)
  %13 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %4, i32 0, i32 1
  store i64 %12, ptr %13, align 8
  %14 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %4, i32 0, i32 0
  %15 = load i64, ptr %14, align 8
  %16 = call i64 @XXH_swap64(i64 noundef %15)
  %17 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %4, i32 0, i32 0
  store i64 %16, ptr %17, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %4, i32 0, i32 1
  %20 = call ptr @XXH_memcpy(ptr noundef %18, ptr noundef %19, i64 noundef 8)
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %4, i32 0, i32 0
  %24 = call ptr @XXH_memcpy(ptr noundef %22, ptr noundef %23, i64 noundef 8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @XXH128(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.XXH128_hash_t, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = load i64, ptr %7, align 8
  %11 = call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef %8, i64 noundef %9, i64 noundef %10)
  %12 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 0
  %13 = extractvalue { i64, i64 } %11, 0
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 1
  %15 = extractvalue { i64, i64 } %11, 1
  store i64 %15, ptr %14, align 8
  %16 = load { i64, i64 }, ptr %4, align 8
  ret { i64, i64 } %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @XXH3_128bits(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.XXH128_hash_t, align 8
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
define internal { i64, i64 } @XXH3_128bits_internal(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.XXH128_hash_t, align 8
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
  %6 = alloca %struct.XXH128_hash_t, align 8
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
define dso_local { i64, i64 } @XXH3_128bits_withSecret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.XXH128_hash_t, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load i64, ptr %9, align 8
  %14 = call { i64, i64 } @XXH3_128bits_internal(ptr noundef %10, i64 noundef %11, i64 noundef 0, ptr noundef %12, i64 noundef %13, ptr noundef @XXH3_hashLong_128b_withSecret)
  %15 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  %16 = extractvalue { i64, i64 } %14, 0
  store i64 %16, ptr %15, align 8
  %17 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  %18 = extractvalue { i64, i64 } %14, 1
  store i64 %18, ptr %17, align 8
  %19 = load { i64, i64 }, ptr %5, align 8
  ret { i64, i64 } %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.XXH128_hash_t, align 8
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
  %13 = load ptr, ptr %7, align 8
  %14 = load i64, ptr %8, align 8
  %15 = load ptr, ptr %10, align 8
  %16 = load i64, ptr %11, align 8
  %17 = call { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef @XXH3_accumulate_512_avx2, ptr noundef @XXH3_scrambleAcc_avx2)
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
define dso_local { i64, i64 } @XXH3_128bits_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.XXH128_hash_t, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = load i64, ptr %7, align 8
  %11 = call { i64, i64 } @XXH3_128bits_internal(ptr noundef %8, i64 noundef %9, i64 noundef %10, ptr noundef @XXH3_kSecret, i64 noundef 192, ptr noundef @XXH3_hashLong_128b_withSeed)
  %12 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 0
  %13 = extractvalue { i64, i64 } %11, 0
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 1
  %15 = extractvalue { i64, i64 } %11, 1
  store i64 %15, ptr %14, align 8
  %16 = load { i64, i64 }, ptr %4, align 8
  ret { i64, i64 } %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.XXH128_hash_t, align 8
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
  %12 = load ptr, ptr %10, align 8
  %13 = load i64, ptr %11, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = load i64, ptr %8, align 8
  %16 = load i64, ptr %9, align 8
  %17 = call { i64, i64 } @XXH3_hashLong_128b_withSeed_internal(ptr noundef %14, i64 noundef %15, i64 noundef %16, ptr noundef @XXH3_accumulate_512_avx2, ptr noundef @XXH3_scrambleAcc_avx2, ptr noundef @XXH3_initCustomSecret_avx2)
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
define dso_local i32 @XXH3_128bits_reset(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  call void @XXH3_reset_internal(ptr noundef %8, i64 noundef 0, ptr noundef @XXH3_kSecret, i64 noundef 192)
  store i32 0, ptr %2, align 4
  br label %9

9:                                                ; preds = %7, %6
  %10 = load i32, ptr %2, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH3_128bits_reset_withSecret(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 1, ptr %4, align 4
  br label %23

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load i64, ptr %7, align 8
  call void @XXH3_reset_internal(ptr noundef %12, i64 noundef 0, ptr noundef %13, i64 noundef %14)
  %15 = load ptr, ptr %6, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, ptr %4, align 4
  br label %23

18:                                               ; preds = %11
  %19 = load i64, ptr %7, align 8
  %20 = icmp ult i64 %19, 136
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, ptr %4, align 4
  br label %23

22:                                               ; preds = %18
  store i32 0, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %21, %17, %10
  %24 = load i32, ptr %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH3_128bits_reset_withSeed(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, ptr %3, align 4
  br label %29

9:                                                ; preds = %2
  %10 = load i64, ptr %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8
  %14 = call i32 @XXH3_128bits_reset(ptr noundef %13)
  store i32 %14, ptr %3, align 4
  br label %29

15:                                               ; preds = %9
  %16 = load i64, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %17, i32 0, i32 9
  %19 = load i64, ptr %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds [192 x i8], ptr %23, i64 0, i64 0
  %25 = load i64, ptr %5, align 8
  call void @XXH3_initCustomSecret_avx2(ptr noundef %24, i64 noundef %25)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load ptr, ptr %4, align 8
  %28 = load i64, ptr %5, align 8
  call void @XXH3_reset_internal(ptr noundef %27, i64 noundef %28, ptr noundef null, i64 noundef 192)
  store i32 0, ptr %3, align 4
  br label %29

29:                                               ; preds = %26, %12, %8
  %30 = load i32, ptr %3, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH3_128bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call i32 @XXH3_update(ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef @XXH3_accumulate_512_avx2, ptr noundef @XXH3_scrambleAcc_avx2)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @XXH3_128bits_digest(ptr noundef %0) #0 {
  %2 = alloca %struct.XXH128_hash_t, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [8 x i64], align 32
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %11, i32 0, i32 1
  %13 = getelementptr inbounds [192 x i8], ptr %12, i64 0, i64 0
  br label %18

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %13, %10 ], [ %17, %14 ]
  store ptr %19, ptr %4, align 8
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %20, i32 0, i32 6
  %22 = load i64, ptr %21, align 16
  %23 = icmp ugt i64 %22, 240
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  %25 = getelementptr inbounds [8 x i64], ptr %5, i64 0, i64 0
  %26 = load ptr, ptr %3, align 8
  %27 = load ptr, ptr %4, align 8
  call void @XXH3_digest_long(ptr noundef %25, ptr noundef %26, ptr noundef %27)
  %28 = getelementptr inbounds [8 x i64], ptr %5, i64 0, i64 0
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds i8, ptr %29, i64 11
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %31, i32 0, i32 6
  %33 = load i64, ptr %32, align 16
  %34 = mul i64 %33, -7046029288634856825
  %35 = call i64 @XXH3_mergeAccs(ptr noundef %28, ptr noundef %30, i64 noundef %34)
  %36 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %2, i32 0, i32 0
  store i64 %35, ptr %36, align 8
  %37 = getelementptr inbounds [8 x i64], ptr %5, i64 0, i64 0
  %38 = load ptr, ptr %4, align 8
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %39, i32 0, i32 8
  %41 = load i64, ptr %40, align 32
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 %41
  %43 = getelementptr inbounds i8, ptr %42, i64 64
  %44 = getelementptr inbounds i8, ptr %43, i64 -64
  %45 = getelementptr inbounds i8, ptr %44, i64 -11
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %46, i32 0, i32 6
  %48 = load i64, ptr %47, align 16
  %49 = mul i64 %48, -4417276706812531889
  %50 = xor i64 %49, -1
  %51 = call i64 @XXH3_mergeAccs(ptr noundef %37, ptr noundef %45, i64 noundef %50)
  %52 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %2, i32 0, i32 1
  store i64 %51, ptr %52, align 8
  br label %90

53:                                               ; preds = %18
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %54, i32 0, i32 9
  %56 = load i64, ptr %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load ptr, ptr %3, align 8
  %60 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %59, i32 0, i32 2
  %61 = getelementptr inbounds [256 x i8], ptr %60, i64 0, i64 0
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %62, i32 0, i32 6
  %64 = load i64, ptr %63, align 16
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %65, i32 0, i32 9
  %67 = load i64, ptr %66, align 8
  %68 = call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef %61, i64 noundef %64, i64 noundef %67)
  %69 = getelementptr inbounds nuw { i64, i64 }, ptr %2, i32 0, i32 0
  %70 = extractvalue { i64, i64 } %68, 0
  store i64 %70, ptr %69, align 8
  %71 = getelementptr inbounds nuw { i64, i64 }, ptr %2, i32 0, i32 1
  %72 = extractvalue { i64, i64 } %68, 1
  store i64 %72, ptr %71, align 8
  br label %90

73:                                               ; preds = %53
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %74, i32 0, i32 2
  %76 = getelementptr inbounds [256 x i8], ptr %75, i64 0, i64 0
  %77 = load ptr, ptr %3, align 8
  %78 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %77, i32 0, i32 6
  %79 = load i64, ptr %78, align 16
  %80 = load ptr, ptr %4, align 8
  %81 = load ptr, ptr %3, align 8
  %82 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %81, i32 0, i32 8
  %83 = load i64, ptr %82, align 32
  %84 = add i64 %83, 64
  %85 = call { i64, i64 } @XXH3_128bits_withSecret(ptr noundef %76, i64 noundef %79, ptr noundef %80, i64 noundef %84)
  %86 = getelementptr inbounds nuw { i64, i64 }, ptr %2, i32 0, i32 0
  %87 = extractvalue { i64, i64 } %85, 0
  store i64 %87, ptr %86, align 8
  %88 = getelementptr inbounds nuw { i64, i64 }, ptr %2, i32 0, i32 1
  %89 = extractvalue { i64, i64 } %85, 1
  store i64 %89, ptr %88, align 8
  br label %90

90:                                               ; preds = %73, %58, %24
  %91 = load { i64, i64 }, ptr %2, align 8
  ret { i64, i64 } %91
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH128_isEqual(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.XXH128_hash_t, align 8
  %6 = alloca %struct.XXH128_hash_t, align 8
  %7 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  store i64 %0, ptr %7, align 8
  %8 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds nuw { i64, i64 }, ptr %6, i32 0, i32 0
  store i64 %2, ptr %9, align 8
  %10 = getelementptr inbounds nuw { i64, i64 }, ptr %6, i32 0, i32 1
  store i64 %3, ptr %10, align 8
  %11 = call i32 @memcmp(ptr noundef %5, ptr noundef %6, i64 noundef 16) #12
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH128_cmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.XXH128_hash_t, align 8
  %7 = alloca %struct.XXH128_hash_t, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %9, i64 16, i1 false)
  %10 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %10, i64 16, i1 false)
  %11 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %7, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = icmp ugt i64 %12, %14
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %7, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = icmp ugt i64 %18, %20
  %22 = zext i1 %21 to i32
  %23 = sub nsw i32 %16, %22
  store i32 %23, ptr %8, align 4
  %24 = load i32, ptr %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, ptr %8, align 4
  store i32 %27, ptr %3, align 4
  br label %42

28:                                               ; preds = %2
  %29 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 0
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %7, i32 0, i32 0
  %32 = load i64, ptr %31, align 8
  %33 = icmp ugt i64 %30, %32
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %7, i32 0, i32 0
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 0
  %38 = load i64, ptr %37, align 8
  %39 = icmp ugt i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = sub nsw i32 %34, %40
  store i32 %41, ptr %3, align 4
  br label %42

42:                                               ; preds = %28, %26
  %43 = load i32, ptr %3, align 4
  ret i32 %43
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @XXH128_hashFromCanonical(ptr noundef %0) #0 {
  %2 = alloca %struct.XXH128_hash_t, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call i64 @XXH_readBE64(ptr noundef %4)
  %6 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %2, i32 0, i32 1
  store i64 %5, ptr %6, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds nuw %struct.XXH128_canonical_t, ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds [16 x i8], ptr %8, i64 0, i64 0
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  %11 = call i64 @XXH_readBE64(ptr noundef %10)
  %12 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %2, i32 0, i32 0
  store i64 %11, ptr %12, align 8
  %13 = load { i64, i64 }, ptr %2, align 8
  ret { i64, i64 } %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH_readLE32_align(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @XXH_readLE32(ptr noundef %9)
  store i32 %10, ptr %3, align 4
  br label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %3, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, ptr %3, align 4
  ret i32 %15
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH_read32(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call ptr @XXH_memcpy(ptr noundef %3, ptr noundef %4, i64 noundef 4)
  %6 = load i32, ptr %3, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH32_avalanche(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 15
  %5 = load i32, ptr %2, align 4
  %6 = xor i32 %5, %4
  store i32 %6, ptr %2, align 4
  %7 = load i32, ptr %2, align 4
  %8 = mul i32 %7, -2048144777
  store i32 %8, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %10 = lshr i32 %9, 13
  %11 = load i32, ptr %2, align 4
  %12 = xor i32 %11, %10
  store i32 %12, ptr %2, align 4
  %13 = load i32, ptr %2, align 4
  %14 = mul i32 %13, -1028477379
  store i32 %14, ptr %2, align 4
  %15 = load i32, ptr %2, align 4
  %16 = lshr i32 %15, 16
  %17 = load i32, ptr %2, align 4
  %18 = xor i32 %17, %16
  store i32 %18, ptr %2, align 4
  %19 = load i32, ptr %2, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_readLE64_align(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = call i64 @XXH_readLE64(ptr noundef %9)
  store i64 %10, ptr %3, align 8
  br label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %3, align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i64, ptr %3, align 8
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_read64(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call ptr @XXH_memcpy(ptr noundef %3, ptr noundef %4, i64 noundef 8)
  %6 = load i64, ptr %3, align 8
  ret i64 %6
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
  br label %20, !llvm.loop !23

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
  br label %44, !llvm.loop !24

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
define internal i64 @XXH3_mul128_fold64(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.XXH128_hash_t, align 8
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
  %13 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 1
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
  %3 = alloca %struct.XXH128_hash_t, align 8
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
  %14 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %3, i32 0, i32 0
  store i64 %13, ptr %14, align 8
  %15 = load i128, ptr %6, align 16
  %16 = lshr i128 %15, 64
  %17 = trunc i128 %16 to i64
  %18 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %3, i32 0, i32 1
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
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %13, ptr align 32 @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
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
  br label %30, !llvm.loop !25

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
  call void @llvm.prefetch.p0(ptr %23, i32 0, i32 3, i32 1)
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
  br label %13, !llvm.loop !26

34:                                               ; preds = %13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #8

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
define internal void @XXH_writeLE64(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @XXH_memcpy(ptr noundef %5, ptr noundef %4, i64 noundef 8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_consumeStripes(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8) #0 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %10, align 8
  store ptr %1, ptr %11, align 8
  store i64 %2, ptr %12, align 8
  store ptr %3, ptr %13, align 8
  store i64 %4, ptr %14, align 8
  store ptr %5, ptr %15, align 8
  store i64 %6, ptr %16, align 8
  store ptr %7, ptr %17, align 8
  store ptr %8, ptr %18, align 8
  %21 = load i64, ptr %12, align 8
  %22 = load ptr, ptr %11, align 8
  %23 = load i64, ptr %22, align 8
  %24 = sub i64 %21, %23
  %25 = load i64, ptr %14, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %9
  %28 = load i64, ptr %12, align 8
  %29 = load ptr, ptr %11, align 8
  %30 = load i64, ptr %29, align 8
  %31 = sub i64 %28, %30
  store i64 %31, ptr %19, align 8
  %32 = load i64, ptr %14, align 8
  %33 = load i64, ptr %19, align 8
  %34 = sub i64 %32, %33
  store i64 %34, ptr %20, align 8
  %35 = load ptr, ptr %10, align 8
  %36 = load ptr, ptr %13, align 8
  %37 = load ptr, ptr %15, align 8
  %38 = load ptr, ptr %11, align 8
  %39 = getelementptr inbounds i64, ptr %38, i64 0
  %40 = load i64, ptr %39, align 8
  %41 = mul i64 %40, 8
  %42 = getelementptr inbounds nuw i8, ptr %37, i64 %41
  %43 = load i64, ptr %19, align 8
  %44 = load ptr, ptr %17, align 8
  call void @XXH3_accumulate(ptr noundef %35, ptr noundef %36, ptr noundef %42, i64 noundef %43, ptr noundef %44)
  %45 = load ptr, ptr %18, align 8
  %46 = load ptr, ptr %10, align 8
  %47 = load ptr, ptr %15, align 8
  %48 = load i64, ptr %16, align 8
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 %48
  call void %45(ptr noundef %46, ptr noundef %49)
  %50 = load ptr, ptr %10, align 8
  %51 = load ptr, ptr %13, align 8
  %52 = load i64, ptr %19, align 8
  %53 = mul i64 %52, 64
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 %53
  %55 = load ptr, ptr %15, align 8
  %56 = load i64, ptr %20, align 8
  %57 = load ptr, ptr %17, align 8
  call void @XXH3_accumulate(ptr noundef %50, ptr noundef %54, ptr noundef %55, i64 noundef %56, ptr noundef %57)
  %58 = load i64, ptr %20, align 8
  %59 = load ptr, ptr %11, align 8
  store i64 %58, ptr %59, align 8
  br label %75

60:                                               ; preds = %9
  %61 = load ptr, ptr %10, align 8
  %62 = load ptr, ptr %13, align 8
  %63 = load ptr, ptr %15, align 8
  %64 = load ptr, ptr %11, align 8
  %65 = getelementptr inbounds i64, ptr %64, i64 0
  %66 = load i64, ptr %65, align 8
  %67 = mul i64 %66, 8
  %68 = getelementptr inbounds nuw i8, ptr %63, i64 %67
  %69 = load i64, ptr %14, align 8
  %70 = load ptr, ptr %17, align 8
  call void @XXH3_accumulate(ptr noundef %61, ptr noundef %62, ptr noundef %68, i64 noundef %69, ptr noundef %70)
  %71 = load i64, ptr %14, align 8
  %72 = load ptr, ptr %11, align 8
  %73 = load i64, ptr %72, align 8
  %74 = add i64 %73, %71
  store i64 %74, ptr %72, align 8
  br label %75

75:                                               ; preds = %60, %27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64>, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.pslli.q(<4 x i64>, i32) #9

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

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_0to16_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.XXH128_hash_t, align 8
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
  %69 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  store i64 %68, ptr %69, align 8
  %70 = load i64, ptr %9, align 8
  %71 = load i64, ptr %11, align 8
  %72 = xor i64 %70, %71
  %73 = call i64 @XXH64_avalanche(i64 noundef %72)
  %74 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 1
  store i64 %73, ptr %74, align 8
  br label %75

75:                                               ; preds = %50, %40, %27, %14
  %76 = load { i64, i64 }, ptr %5, align 8
  ret { i64, i64 } %76
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_17to128_128b(ptr noalias noundef %0, i64 noundef %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.XXH128_hash_t, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.XXH128_hash_t, align 8
  %13 = alloca %struct.XXH128_hash_t, align 8
  %14 = alloca %struct.XXH128_hash_t, align 8
  %15 = alloca %struct.XXH128_hash_t, align 8
  %16 = alloca %struct.XXH128_hash_t, align 8
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  %17 = load i64, ptr %10, align 8
  %18 = load i64, ptr %8, align 8
  %19 = mul i64 %18, -7046029288634856825
  %20 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 0
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 1
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
  %104 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 0
  %105 = load i64, ptr %104, align 8
  %106 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 1
  %107 = load i64, ptr %106, align 8
  %108 = add i64 %105, %107
  %109 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 0
  store i64 %108, ptr %109, align 8
  %110 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 0
  %111 = load i64, ptr %110, align 8
  %112 = mul i64 %111, -7046029288634856825
  %113 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 1
  %114 = load i64, ptr %113, align 8
  %115 = mul i64 %114, -8796714831421723037
  %116 = add i64 %112, %115
  %117 = load i64, ptr %8, align 8
  %118 = load i64, ptr %11, align 8
  %119 = sub i64 %117, %118
  %120 = mul i64 %119, -4417276706812531889
  %121 = add i64 %116, %120
  %122 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 1
  store i64 %121, ptr %122, align 8
  %123 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 0
  %124 = load i64, ptr %123, align 8
  %125 = call i64 @XXH3_avalanche(i64 noundef %124)
  %126 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 0
  store i64 %125, ptr %126, align 8
  %127 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 1
  %128 = load i64, ptr %127, align 8
  %129 = call i64 @XXH3_avalanche(i64 noundef %128)
  %130 = sub i64 0, %129
  %131 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 1
  store i64 %130, ptr %131, align 8
  %132 = load { i64, i64 }, ptr %6, align 8
  ret { i64, i64 } %132
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_129to240_128b(ptr noalias noundef %0, i64 noundef %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.XXH128_hash_t, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.XXH128_hash_t, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.XXH128_hash_t, align 8
  %16 = alloca %struct.XXH128_hash_t, align 8
  %17 = alloca %struct.XXH128_hash_t, align 8
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
  %24 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 0
  store i64 %23, ptr %24, align 8
  %25 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 1
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
  br label %26, !llvm.loop !27

59:                                               ; preds = %26
  %60 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 0
  %61 = load i64, ptr %60, align 8
  %62 = call i64 @XXH3_avalanche(i64 noundef %61)
  %63 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 0
  store i64 %62, ptr %63, align 8
  %64 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 1
  %65 = load i64, ptr %64, align 8
  %66 = call i64 @XXH3_avalanche(i64 noundef %65)
  %67 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 1
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
  br label %68, !llvm.loop !28

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
  %128 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 0
  %129 = load i64, ptr %128, align 8
  %130 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 1
  %131 = load i64, ptr %130, align 8
  %132 = add i64 %129, %131
  %133 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 0
  store i64 %132, ptr %133, align 8
  %134 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 0
  %135 = load i64, ptr %134, align 8
  %136 = mul i64 %135, -7046029288634856825
  %137 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %12, i32 0, i32 1
  %138 = load i64, ptr %137, align 8
  %139 = mul i64 %138, -8796714831421723037
  %140 = add i64 %136, %139
  %141 = load i64, ptr %8, align 8
  %142 = load i64, ptr %11, align 8
  %143 = sub i64 %141, %142
  %144 = mul i64 %143, -4417276706812531889
  %145 = add i64 %140, %144
  %146 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 1
  store i64 %145, ptr %146, align 8
  %147 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 0
  %148 = load i64, ptr %147, align 8
  %149 = call i64 @XXH3_avalanche(i64 noundef %148)
  %150 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 0
  store i64 %149, ptr %150, align 8
  %151 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 1
  %152 = load i64, ptr %151, align 8
  %153 = call i64 @XXH3_avalanche(i64 noundef %152)
  %154 = sub i64 0, %153
  %155 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %6, i32 0, i32 1
  store i64 %154, ptr %155, align 8
  %156 = load { i64, i64 }, ptr %6, align 8
  ret { i64, i64 } %156
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_9to16_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.XXH128_hash_t, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.XXH128_hash_t, align 8
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
  %53 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %14, i32 0, i32 0
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
  %65 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %14, i32 0, i32 1
  %66 = load i64, ptr %65, align 8
  %67 = add i64 %66, %64
  store i64 %67, ptr %65, align 8
  %68 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %14, i32 0, i32 1
  %69 = load i64, ptr %68, align 8
  %70 = call i64 @XXH_swap64(i64 noundef %69)
  %71 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %14, i32 0, i32 0
  %72 = load i64, ptr %71, align 8
  %73 = xor i64 %72, %70
  store i64 %73, ptr %71, align 8
  %74 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %14, i32 0, i32 0
  %75 = load i64, ptr %74, align 8
  %76 = call { i64, i64 } @XXH_mult64to128(i64 noundef %75, i64 noundef -4417276706812531889)
  %77 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 0
  %78 = extractvalue { i64, i64 } %76, 0
  store i64 %78, ptr %77, align 8
  %79 = getelementptr inbounds nuw { i64, i64 }, ptr %5, i32 0, i32 1
  %80 = extractvalue { i64, i64 } %76, 1
  store i64 %80, ptr %79, align 8
  %81 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %14, i32 0, i32 1
  %82 = load i64, ptr %81, align 8
  %83 = mul i64 %82, -4417276706812531889
  %84 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 1
  %85 = load i64, ptr %84, align 8
  %86 = add i64 %85, %83
  store i64 %86, ptr %84, align 8
  %87 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  %88 = load i64, ptr %87, align 8
  %89 = call i64 @XXH3_avalanche(i64 noundef %88)
  %90 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  store i64 %89, ptr %90, align 8
  %91 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 1
  %92 = load i64, ptr %91, align 8
  %93 = call i64 @XXH3_avalanche(i64 noundef %92)
  %94 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 1
  store i64 %93, ptr %94, align 8
  %95 = load { i64, i64 }, ptr %5, align 8
  ret { i64, i64 } %95
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_4to8_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.XXH128_hash_t, align 8
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
  %56 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  %57 = load i64, ptr %56, align 8
  %58 = shl i64 %57, 1
  %59 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %60, %58
  store i64 %61, ptr %59, align 8
  %62 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 1
  %63 = load i64, ptr %62, align 8
  %64 = lshr i64 %63, 3
  %65 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  %66 = load i64, ptr %65, align 8
  %67 = xor i64 %66, %64
  store i64 %67, ptr %65, align 8
  %68 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  %69 = load i64, ptr %68, align 8
  %70 = call i64 @XXH_xorshift64(i64 noundef %69, i32 noundef 35)
  %71 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  store i64 %70, ptr %71, align 8
  %72 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  %73 = load i64, ptr %72, align 8
  %74 = mul i64 %73, -6939452855193903323
  store i64 %74, ptr %72, align 8
  %75 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  %76 = load i64, ptr %75, align 8
  %77 = call i64 @XXH_xorshift64(i64 noundef %76, i32 noundef 28)
  %78 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  store i64 %77, ptr %78, align 8
  %79 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 1
  %80 = load i64, ptr %79, align 8
  %81 = call i64 @XXH3_avalanche(i64 noundef %80)
  %82 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 1
  store i64 %81, ptr %82, align 8
  %83 = load { i64, i64 }, ptr %5, align 8
  ret { i64, i64 } %83
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_len_1to3_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.XXH128_hash_t, align 8
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
  %79 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 0
  store i64 %78, ptr %79, align 8
  %80 = load i64, ptr %18, align 8
  %81 = call i64 @XXH64_avalanche(i64 noundef %80)
  %82 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %5, i32 0, i32 1
  store i64 %81, ptr %82, align 8
  %83 = load { i64, i64 }, ptr %5, align 8
  ret { i64, i64 } %83
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH128_mix32B(i64 %0, i64 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 {
  %7 = alloca %struct.XXH128_hash_t, align 8
  %8 = alloca %struct.XXH128_hash_t, align 8
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
  %20 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %8, i32 0, i32 0
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %19
  store i64 %22, ptr %20, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = call i64 @XXH_readLE64(ptr noundef %23)
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 8
  %27 = call i64 @XXH_readLE64(ptr noundef %26)
  %28 = add i64 %24, %27
  %29 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %8, i32 0, i32 0
  %30 = load i64, ptr %29, align 8
  %31 = xor i64 %30, %28
  store i64 %31, ptr %29, align 8
  %32 = load ptr, ptr %10, align 8
  %33 = load ptr, ptr %11, align 8
  %34 = getelementptr inbounds i8, ptr %33, i64 16
  %35 = load i64, ptr %12, align 8
  %36 = call i64 @XXH3_mix16B(ptr noundef %32, ptr noundef %34, i64 noundef %35)
  %37 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %8, i32 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %36
  store i64 %39, ptr %37, align 8
  %40 = load ptr, ptr %9, align 8
  %41 = call i64 @XXH_readLE64(ptr noundef %40)
  %42 = load ptr, ptr %9, align 8
  %43 = getelementptr inbounds i8, ptr %42, i64 8
  %44 = call i64 @XXH_readLE64(ptr noundef %43)
  %45 = add i64 %41, %44
  %46 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %8, i32 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = xor i64 %47, %45
  store i64 %48, ptr %46, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 16, i1 false)
  %49 = load { i64, i64 }, ptr %7, align 8
  ret { i64, i64 } %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_hashLong_128b_internal(ptr noalias noundef %0, i64 noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.XXH128_hash_t, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [8 x i64], align 32
  store ptr %0, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store i64 %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %14, ptr align 32 @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false)
  %15 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %16 = load ptr, ptr %8, align 8
  %17 = load i64, ptr %9, align 8
  %18 = load ptr, ptr %10, align 8
  %19 = load i64, ptr %11, align 8
  %20 = load ptr, ptr %12, align 8
  %21 = load ptr, ptr %13, align 8
  call void @XXH3_hashLong_internal_loop(ptr noundef %15, ptr noundef %16, i64 noundef %17, ptr noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21)
  br label %22

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 11
  %27 = load i64, ptr %9, align 8
  %28 = mul i64 %27, -7046029288634856825
  %29 = call i64 @XXH3_mergeAccs(ptr noundef %24, ptr noundef %26, i64 noundef %28)
  %30 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %7, i32 0, i32 0
  store i64 %29, ptr %30, align 8
  %31 = getelementptr inbounds [8 x i64], ptr %14, i64 0, i64 0
  %32 = load ptr, ptr %10, align 8
  %33 = load i64, ptr %11, align 8
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 %33
  %35 = getelementptr inbounds i8, ptr %34, i64 -64
  %36 = getelementptr inbounds i8, ptr %35, i64 -11
  %37 = load i64, ptr %9, align 8
  %38 = mul i64 %37, -4417276706812531889
  %39 = xor i64 %38, -1
  %40 = call i64 @XXH3_mergeAccs(ptr noundef %31, ptr noundef %36, i64 noundef %39)
  %41 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %7, i32 0, i32 1
  store i64 %40, ptr %41, align 8
  %42 = load { i64, i64 }, ptr %7, align 8
  ret { i64, i64 } %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_hashLong_128b_withSeed_internal(ptr noalias noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.XXH128_hash_t, align 8
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
  br i1 %16, label %17, label %27

17:                                               ; preds = %6
  %18 = load ptr, ptr %8, align 8
  %19 = load i64, ptr %9, align 8
  %20 = load ptr, ptr %11, align 8
  %21 = load ptr, ptr %12, align 8
  %22 = call { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef %18, i64 noundef %19, ptr noundef @XXH3_kSecret, i64 noundef 192, ptr noundef %20, ptr noundef %21)
  %23 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 0
  %24 = extractvalue { i64, i64 } %22, 0
  store i64 %24, ptr %23, align 8
  %25 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 1
  %26 = extractvalue { i64, i64 } %22, 1
  store i64 %26, ptr %25, align 8
  br label %41

27:                                               ; preds = %6
  %28 = load ptr, ptr %13, align 8
  %29 = getelementptr inbounds [192 x i8], ptr %14, i64 0, i64 0
  %30 = load i64, ptr %10, align 8
  call void %28(ptr noundef %29, i64 noundef %30)
  %31 = load ptr, ptr %8, align 8
  %32 = load i64, ptr %9, align 8
  %33 = getelementptr inbounds [192 x i8], ptr %14, i64 0, i64 0
  %34 = load ptr, ptr %11, align 8
  %35 = load ptr, ptr %12, align 8
  %36 = call { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef %31, i64 noundef %32, ptr noundef %33, i64 noundef 192, ptr noundef %34, ptr noundef %35)
  %37 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 0
  %38 = extractvalue { i64, i64 } %36, 0
  store i64 %38, ptr %37, align 8
  %39 = getelementptr inbounds nuw { i64, i64 }, ptr %7, i32 0, i32 1
  %40 = extractvalue { i64, i64 } %36, 1
  store i64 %40, ptr %39, align 8
  br label %41

41:                                               ; preds = %27, %17
  %42 = load { i64, i64 }, ptr %7, align 8
  ret { i64, i64 } %42
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = !{i64 2148058002}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = !{i64 2152033036}
!15 = !{i32 1}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
