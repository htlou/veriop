; ModuleID = 'xxhash.c'
source_filename = "xxhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.XXH64_state_s = type { i64, i64, i64, i64, i64, [4 x i64], i32, i32, i64 }
%struct.XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }
%struct.XXH128_canonical_t = type { [16 x i8] }
%struct.XXH128_hash_t = type { i64, i64 }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 16
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 16

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
  br i1 %69, label %37, label %70

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
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 48, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

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
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %4, align 4
  %11 = add i32 %10, -2048144777
  %12 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %5, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %4, align 4
  %14 = add i32 %13, 0
  %15 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %5, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr %4, align 4
  %17 = sub i32 %16, -1640531535
  %18 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %5, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %5, i64 44, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  br label %225

19:                                               ; preds = %3
  %20 = load ptr, ptr %6, align 8
  store ptr %20, ptr %8, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = load i64, ptr %7, align 8
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 %22
  store ptr %23, ptr %9, align 8
  %24 = load i64, ptr %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %25
  store i32 %29, ptr %27, align 4
  %30 = load i64, ptr %7, align 8
  %31 = icmp uge i64 %30, 16
  %32 = zext i1 %31 to i32
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %33, i32 0, i32 0
  %35 = load i32, ptr %34, align 4
  %36 = icmp uge i32 %35, 16
  %37 = zext i1 %36 to i32
  %38 = or i32 %32, %37
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, ptr %40, align 4
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %43, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, ptr %7, align 8
  %48 = add i64 %46, %47
  %49 = icmp ult i64 %48, 16
  br i1 %49, label %50, label %68

50:                                               ; preds = %19
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %51, i32 0, i32 6
  %53 = getelementptr inbounds [4 x i32], ptr %52, i64 0, i64 0
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %54, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds nuw i8, ptr %53, i64 %57
  %59 = load ptr, ptr %6, align 8
  %60 = load i64, ptr %7, align 8
  %61 = call ptr @XXH_memcpy(ptr noundef %58, ptr noundef %59, i64 noundef %60)
  %62 = load i64, ptr %7, align 8
  %63 = trunc i64 %62 to i32
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %64, i32 0, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %63
  store i32 %67, ptr %65, align 4
  store i32 0, ptr %4, align 4
  br label %225

68:                                               ; preds = %19
  %69 = load ptr, ptr %5, align 8
  %70 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %69, i32 0, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %139

73:                                               ; preds = %68
  %74 = load ptr, ptr %5, align 8
  %75 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %74, i32 0, i32 6
  %76 = getelementptr inbounds [4 x i32], ptr %75, i64 0, i64 0
  %77 = load ptr, ptr %5, align 8
  %78 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %77, i32 0, i32 7
  %79 = load i32, ptr %78, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds nuw i8, ptr %76, i64 %80
  %82 = load ptr, ptr %6, align 8
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %83, i32 0, i32 7
  %85 = load i32, ptr %84, align 4
  %86 = sub i32 16, %85
  %87 = zext i32 %86 to i64
  %88 = call ptr @XXH_memcpy(ptr noundef %81, ptr noundef %82, i64 noundef %87)
  %89 = load ptr, ptr %5, align 8
  %90 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %89, i32 0, i32 6
  %91 = getelementptr inbounds [4 x i32], ptr %90, i64 0, i64 0
  store ptr %91, ptr %10, align 8
  %92 = load ptr, ptr %5, align 8
  %93 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %92, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %10, align 8
  %96 = call i32 @XXH_readLE32(ptr noundef %95)
  %97 = call i32 @XXH32_round(i32 noundef %94, i32 noundef %96)
  %98 = load ptr, ptr %5, align 8
  %99 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %98, i32 0, i32 2
  store i32 %97, ptr %99, align 4
  %100 = load ptr, ptr %10, align 8
  %101 = getelementptr inbounds nuw i32, ptr %100, i32 1
  store ptr %101, ptr %10, align 8
  %102 = load ptr, ptr %5, align 8
  %103 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %102, i32 0, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = load ptr, ptr %10, align 8
  %106 = call i32 @XXH_readLE32(ptr noundef %105)
  %107 = call i32 @XXH32_round(i32 noundef %104, i32 noundef %106)
  %108 = load ptr, ptr %5, align 8
  %109 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %108, i32 0, i32 3
  store i32 %107, ptr %109, align 4
  %110 = load ptr, ptr %10, align 8
  %111 = getelementptr inbounds nuw i32, ptr %110, i32 1
  store ptr %111, ptr %10, align 8
  %112 = load ptr, ptr %5, align 8
  %113 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %112, i32 0, i32 4
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %10, align 8
  %116 = call i32 @XXH_readLE32(ptr noundef %115)
  %117 = call i32 @XXH32_round(i32 noundef %114, i32 noundef %116)
  %118 = load ptr, ptr %5, align 8
  %119 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %118, i32 0, i32 4
  store i32 %117, ptr %119, align 4
  %120 = load ptr, ptr %10, align 8
  %121 = getelementptr inbounds nuw i32, ptr %120, i32 1
  store ptr %121, ptr %10, align 8
  %122 = load ptr, ptr %5, align 8
  %123 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %122, i32 0, i32 5
  %124 = load i32, ptr %123, align 4
  %125 = load ptr, ptr %10, align 8
  %126 = call i32 @XXH_readLE32(ptr noundef %125)
  %127 = call i32 @XXH32_round(i32 noundef %124, i32 noundef %126)
  %128 = load ptr, ptr %5, align 8
  %129 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %128, i32 0, i32 5
  store i32 %127, ptr %129, align 4
  %130 = load ptr, ptr %5, align 8
  %131 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %130, i32 0, i32 7
  %132 = load i32, ptr %131, align 4
  %133 = sub i32 16, %132
  %134 = load ptr, ptr %8, align 8
  %135 = zext i32 %133 to i64
  %136 = getelementptr inbounds nuw i8, ptr %134, i64 %135
  store ptr %136, ptr %8, align 8
  %137 = load ptr, ptr %5, align 8
  %138 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %137, i32 0, i32 7
  store i32 0, ptr %138, align 4
  br label %139

139:                                              ; preds = %73, %68
  %140 = load ptr, ptr %8, align 8
  %141 = load ptr, ptr %9, align 8
  %142 = getelementptr inbounds i8, ptr %141, i64 -16
  %143 = icmp ule ptr %140, %142
  br i1 %143, label %144, label %201

144:                                              ; preds = %139
  %145 = load ptr, ptr %9, align 8
  %146 = getelementptr inbounds i8, ptr %145, i64 -16
  store ptr %146, ptr %11, align 8
  %147 = load ptr, ptr %5, align 8
  %148 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %147, i32 0, i32 2
  %149 = load i32, ptr %148, align 4
  store i32 %149, ptr %12, align 4
  %150 = load ptr, ptr %5, align 8
  %151 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %150, i32 0, i32 3
  %152 = load i32, ptr %151, align 4
  store i32 %152, ptr %13, align 4
  %153 = load ptr, ptr %5, align 8
  %154 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %153, i32 0, i32 4
  %155 = load i32, ptr %154, align 4
  store i32 %155, ptr %14, align 4
  %156 = load ptr, ptr %5, align 8
  %157 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %156, i32 0, i32 5
  %158 = load i32, ptr %157, align 4
  store i32 %158, ptr %15, align 4
  br label %159

159:                                              ; preds = %184, %144
  %160 = load i32, ptr %12, align 4
  %161 = load ptr, ptr %8, align 8
  %162 = call i32 @XXH_readLE32(ptr noundef %161)
  %163 = call i32 @XXH32_round(i32 noundef %160, i32 noundef %162)
  store i32 %163, ptr %12, align 4
  %164 = load ptr, ptr %8, align 8
  %165 = getelementptr inbounds i8, ptr %164, i64 4
  store ptr %165, ptr %8, align 8
  %166 = load i32, ptr %13, align 4
  %167 = load ptr, ptr %8, align 8
  %168 = call i32 @XXH_readLE32(ptr noundef %167)
  %169 = call i32 @XXH32_round(i32 noundef %166, i32 noundef %168)
  store i32 %169, ptr %13, align 4
  %170 = load ptr, ptr %8, align 8
  %171 = getelementptr inbounds i8, ptr %170, i64 4
  store ptr %171, ptr %8, align 8
  %172 = load i32, ptr %14, align 4
  %173 = load ptr, ptr %8, align 8
  %174 = call i32 @XXH_readLE32(ptr noundef %173)
  %175 = call i32 @XXH32_round(i32 noundef %172, i32 noundef %174)
  store i32 %175, ptr %14, align 4
  %176 = load ptr, ptr %8, align 8
  %177 = getelementptr inbounds i8, ptr %176, i64 4
  store ptr %177, ptr %8, align 8
  %178 = load i32, ptr %15, align 4
  %179 = load ptr, ptr %8, align 8
  %180 = call i32 @XXH_readLE32(ptr noundef %179)
  %181 = call i32 @XXH32_round(i32 noundef %178, i32 noundef %180)
  store i32 %181, ptr %15, align 4
  %182 = load ptr, ptr %8, align 8
  %183 = getelementptr inbounds i8, ptr %182, i64 4
  store ptr %183, ptr %8, align 8
  br label %184

184:                                              ; preds = %159
  %185 = load ptr, ptr %8, align 8
  %186 = load ptr, ptr %11, align 8
  %187 = icmp ule ptr %185, %186
  br i1 %187, label %159, label %188

188:                                              ; preds = %184
  %189 = load i32, ptr %12, align 4
  %190 = load ptr, ptr %5, align 8
  %191 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %190, i32 0, i32 2
  store i32 %189, ptr %191, align 4
  %192 = load i32, ptr %13, align 4
  %193 = load ptr, ptr %5, align 8
  %194 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %193, i32 0, i32 3
  store i32 %192, ptr %194, align 4
  %195 = load i32, ptr %14, align 4
  %196 = load ptr, ptr %5, align 8
  %197 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %196, i32 0, i32 4
  store i32 %195, ptr %197, align 4
  %198 = load i32, ptr %15, align 4
  %199 = load ptr, ptr %5, align 8
  %200 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %199, i32 0, i32 5
  store i32 %198, ptr %200, align 4
  br label %201

201:                                              ; preds = %188, %139
  %202 = load ptr, ptr %8, align 8
  %203 = load ptr, ptr %9, align 8
  %204 = icmp ult ptr %202, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  %206 = load ptr, ptr %5, align 8
  %207 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %206, i32 0, i32 6
  %208 = getelementptr inbounds [4 x i32], ptr %207, i64 0, i64 0
  %209 = load ptr, ptr %8, align 8
  %210 = load ptr, ptr %9, align 8
  %211 = load ptr, ptr %8, align 8
  %212 = ptrtoint ptr %210 to i64
  %213 = ptrtoint ptr %211 to i64
  %214 = sub i64 %212, %213
  %215 = call ptr @XXH_memcpy(ptr noundef %208, ptr noundef %209, i64 noundef %214)
  %216 = load ptr, ptr %9, align 8
  %217 = load ptr, ptr %8, align 8
  %218 = ptrtoint ptr %216 to i64
  %219 = ptrtoint ptr %217 to i64
  %220 = sub i64 %218, %219
  %221 = trunc i64 %220 to i32
  %222 = load ptr, ptr %5, align 8
  %223 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %222, i32 0, i32 7
  store i32 %221, ptr %223, align 4
  br label %224

224:                                              ; preds = %205, %201
  store i32 0, ptr %4, align 4
  br label %225

225:                                              ; preds = %224, %50, %18
  %226 = load i32, ptr %4, align 4
  ret i32 %226
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
  ret i32 %13
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
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %12, %16
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 12)
  %22 = add i32 %17, %21
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 18)
  %27 = add i32 %22, %26
  store i32 %27, ptr %3, align 4
  br label %33

28:                                               ; preds = %1
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %29, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 374761393
  store i32 %32, ptr %3, align 4
  br label %33

33:                                               ; preds = %28, %8
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %34, i32 0, i32 0
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %3, align 4
  %38 = add i32 %37, %36
  store i32 %38, ptr %3, align 4
  %39 = load i32, ptr %3, align 4
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %40, i32 0, i32 6
  %42 = getelementptr inbounds [4 x i32], ptr %41, i64 0, i64 0
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %43, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = zext i32 %45 to i64
  %47 = call i32 @XXH32_finalize(i32 noundef %39, ptr noundef %42, i64 noundef %46, i32 noundef 0)
  ret i32 %47
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 4 %4, i64 4, i1 false)
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
  br i1 %69, label %37, label %70

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
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %6, i64 88, i1 false)
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
  store i64 %8, ptr %9, align 8
  %10 = load i64, ptr %4, align 8
  %11 = add i64 %10, -4417276706812531889
  %12 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %5, i32 0, i32 2
  store i64 %11, ptr %12, align 8
  %13 = load i64, ptr %4, align 8
  %14 = add i64 %13, 0
  %15 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %5, i32 0, i32 3
  store i64 %14, ptr %15, align 8
  %16 = load i64, ptr %4, align 8
  %17 = sub i64 %16, -7046029288634856825
  %18 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %5, i32 0, i32 4
  store i64 %17, ptr %18, align 8
  %19 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %5, i64 80, i1 false)
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
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  br label %213

18:                                               ; preds = %3
  %19 = load ptr, ptr %6, align 8
  store ptr %19, ptr %8, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = load i64, ptr %7, align 8
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 %21
  store ptr %22, ptr %9, align 8
  %23 = load i64, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %24, i32 0, i32 0
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, %23
  store i64 %27, ptr %25, align 8
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %28, i32 0, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = zext i32 %30 to i64
  %32 = load i64, ptr %7, align 8
  %33 = add i64 %31, %32
  %34 = icmp ult i64 %33, 32
  br i1 %34, label %35, label %53

35:                                               ; preds = %18
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %36, i32 0, i32 5
  %38 = getelementptr inbounds [4 x i64], ptr %37, i64 0, i64 0
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %39, i32 0, i32 6
  %41 = load i32, ptr %40, align 8
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %38, i64 %42
  %44 = load ptr, ptr %6, align 8
  %45 = load i64, ptr %7, align 8
  %46 = call ptr @XXH_memcpy(ptr noundef %43, ptr noundef %44, i64 noundef %45)
  %47 = load i64, ptr %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %49, i32 0, i32 6
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, %48
  store i32 %52, ptr %50, align 8
  store i32 0, ptr %4, align 4
  br label %213

53:                                               ; preds = %18
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %54, i32 0, i32 6
  %56 = load i32, ptr %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %127

58:                                               ; preds = %53
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %59, i32 0, i32 5
  %61 = getelementptr inbounds [4 x i64], ptr %60, i64 0, i64 0
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %62, i32 0, i32 6
  %64 = load i32, ptr %63, align 8
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds nuw i8, ptr %61, i64 %65
  %67 = load ptr, ptr %6, align 8
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %68, i32 0, i32 6
  %70 = load i32, ptr %69, align 8
  %71 = sub i32 32, %70
  %72 = zext i32 %71 to i64
  %73 = call ptr @XXH_memcpy(ptr noundef %66, ptr noundef %67, i64 noundef %72)
  %74 = load ptr, ptr %5, align 8
  %75 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %74, i32 0, i32 1
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %5, align 8
  %78 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %77, i32 0, i32 5
  %79 = getelementptr inbounds [4 x i64], ptr %78, i64 0, i64 0
  %80 = getelementptr inbounds i64, ptr %79, i64 0
  %81 = call i64 @XXH_readLE64(ptr noundef %80)
  %82 = call i64 @XXH64_round(i64 noundef %76, i64 noundef %81)
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %83, i32 0, i32 1
  store i64 %82, ptr %84, align 8
  %85 = load ptr, ptr %5, align 8
  %86 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %85, i32 0, i32 2
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %88, i32 0, i32 5
  %90 = getelementptr inbounds [4 x i64], ptr %89, i64 0, i64 0
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  %92 = call i64 @XXH_readLE64(ptr noundef %91)
  %93 = call i64 @XXH64_round(i64 noundef %87, i64 noundef %92)
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %94, i32 0, i32 2
  store i64 %93, ptr %95, align 8
  %96 = load ptr, ptr %5, align 8
  %97 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %96, i32 0, i32 3
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %5, align 8
  %100 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %99, i32 0, i32 5
  %101 = getelementptr inbounds [4 x i64], ptr %100, i64 0, i64 0
  %102 = getelementptr inbounds i64, ptr %101, i64 2
  %103 = call i64 @XXH_readLE64(ptr noundef %102)
  %104 = call i64 @XXH64_round(i64 noundef %98, i64 noundef %103)
  %105 = load ptr, ptr %5, align 8
  %106 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %105, i32 0, i32 3
  store i64 %104, ptr %106, align 8
  %107 = load ptr, ptr %5, align 8
  %108 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %107, i32 0, i32 4
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %5, align 8
  %111 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %110, i32 0, i32 5
  %112 = getelementptr inbounds [4 x i64], ptr %111, i64 0, i64 0
  %113 = getelementptr inbounds i64, ptr %112, i64 3
  %114 = call i64 @XXH_readLE64(ptr noundef %113)
  %115 = call i64 @XXH64_round(i64 noundef %109, i64 noundef %114)
  %116 = load ptr, ptr %5, align 8
  %117 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %116, i32 0, i32 4
  store i64 %115, ptr %117, align 8
  %118 = load ptr, ptr %5, align 8
  %119 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %118, i32 0, i32 6
  %120 = load i32, ptr %119, align 8
  %121 = sub i32 32, %120
  %122 = load ptr, ptr %8, align 8
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds nuw i8, ptr %122, i64 %123
  store ptr %124, ptr %8, align 8
  %125 = load ptr, ptr %5, align 8
  %126 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %125, i32 0, i32 6
  store i32 0, ptr %126, align 8
  br label %127

127:                                              ; preds = %58, %53
  %128 = load ptr, ptr %8, align 8
  %129 = getelementptr inbounds i8, ptr %128, i64 32
  %130 = load ptr, ptr %9, align 8
  %131 = icmp ule ptr %129, %130
  br i1 %131, label %132, label %189

132:                                              ; preds = %127
  %133 = load ptr, ptr %9, align 8
  %134 = getelementptr inbounds i8, ptr %133, i64 -32
  store ptr %134, ptr %10, align 8
  %135 = load ptr, ptr %5, align 8
  %136 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %135, i32 0, i32 1
  %137 = load i64, ptr %136, align 8
  store i64 %137, ptr %11, align 8
  %138 = load ptr, ptr %5, align 8
  %139 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %138, i32 0, i32 2
  %140 = load i64, ptr %139, align 8
  store i64 %140, ptr %12, align 8
  %141 = load ptr, ptr %5, align 8
  %142 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %141, i32 0, i32 3
  %143 = load i64, ptr %142, align 8
  store i64 %143, ptr %13, align 8
  %144 = load ptr, ptr %5, align 8
  %145 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %144, i32 0, i32 4
  %146 = load i64, ptr %145, align 8
  store i64 %146, ptr %14, align 8
  br label %147

147:                                              ; preds = %172, %132
  %148 = load i64, ptr %11, align 8
  %149 = load ptr, ptr %8, align 8
  %150 = call i64 @XXH_readLE64(ptr noundef %149)
  %151 = call i64 @XXH64_round(i64 noundef %148, i64 noundef %150)
  store i64 %151, ptr %11, align 8
  %152 = load ptr, ptr %8, align 8
  %153 = getelementptr inbounds i8, ptr %152, i64 8
  store ptr %153, ptr %8, align 8
  %154 = load i64, ptr %12, align 8
  %155 = load ptr, ptr %8, align 8
  %156 = call i64 @XXH_readLE64(ptr noundef %155)
  %157 = call i64 @XXH64_round(i64 noundef %154, i64 noundef %156)
  store i64 %157, ptr %12, align 8
  %158 = load ptr, ptr %8, align 8
  %159 = getelementptr inbounds i8, ptr %158, i64 8
  store ptr %159, ptr %8, align 8
  %160 = load i64, ptr %13, align 8
  %161 = load ptr, ptr %8, align 8
  %162 = call i64 @XXH_readLE64(ptr noundef %161)
  %163 = call i64 @XXH64_round(i64 noundef %160, i64 noundef %162)
  store i64 %163, ptr %13, align 8
  %164 = load ptr, ptr %8, align 8
  %165 = getelementptr inbounds i8, ptr %164, i64 8
  store ptr %165, ptr %8, align 8
  %166 = load i64, ptr %14, align 8
  %167 = load ptr, ptr %8, align 8
  %168 = call i64 @XXH_readLE64(ptr noundef %167)
  %169 = call i64 @XXH64_round(i64 noundef %166, i64 noundef %168)
  store i64 %169, ptr %14, align 8
  %170 = load ptr, ptr %8, align 8
  %171 = getelementptr inbounds i8, ptr %170, i64 8
  store ptr %171, ptr %8, align 8
  br label %172

172:                                              ; preds = %147
  %173 = load ptr, ptr %8, align 8
  %174 = load ptr, ptr %10, align 8
  %175 = icmp ule ptr %173, %174
  br i1 %175, label %147, label %176

176:                                              ; preds = %172
  %177 = load i64, ptr %11, align 8
  %178 = load ptr, ptr %5, align 8
  %179 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %178, i32 0, i32 1
  store i64 %177, ptr %179, align 8
  %180 = load i64, ptr %12, align 8
  %181 = load ptr, ptr %5, align 8
  %182 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %181, i32 0, i32 2
  store i64 %180, ptr %182, align 8
  %183 = load i64, ptr %13, align 8
  %184 = load ptr, ptr %5, align 8
  %185 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %184, i32 0, i32 3
  store i64 %183, ptr %185, align 8
  %186 = load i64, ptr %14, align 8
  %187 = load ptr, ptr %5, align 8
  %188 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %187, i32 0, i32 4
  store i64 %186, ptr %188, align 8
  br label %189

189:                                              ; preds = %176, %127
  %190 = load ptr, ptr %8, align 8
  %191 = load ptr, ptr %9, align 8
  %192 = icmp ult ptr %190, %191
  br i1 %192, label %193, label %212

193:                                              ; preds = %189
  %194 = load ptr, ptr %5, align 8
  %195 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %194, i32 0, i32 5
  %196 = getelementptr inbounds [4 x i64], ptr %195, i64 0, i64 0
  %197 = load ptr, ptr %8, align 8
  %198 = load ptr, ptr %9, align 8
  %199 = load ptr, ptr %8, align 8
  %200 = ptrtoint ptr %198 to i64
  %201 = ptrtoint ptr %199 to i64
  %202 = sub i64 %200, %201
  %203 = call ptr @XXH_memcpy(ptr noundef %196, ptr noundef %197, i64 noundef %202)
  %204 = load ptr, ptr %9, align 8
  %205 = load ptr, ptr %8, align 8
  %206 = ptrtoint ptr %204 to i64
  %207 = ptrtoint ptr %205 to i64
  %208 = sub i64 %206, %207
  %209 = trunc i64 %208 to i32
  %210 = load ptr, ptr %5, align 8
  %211 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %210, i32 0, i32 6
  store i32 %209, ptr %211, align 8
  br label %212

212:                                              ; preds = %193, %189
  store i32 0, ptr %4, align 4
  br label %213

213:                                              ; preds = %212, %35, %17
  %214 = load i32, ptr %4, align 4
  ret i32 %214
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
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %8, i32 0, i32 0
  %10 = load i64, ptr %9, align 8
  %11 = icmp uge i64 %10, 32
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %13, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %4, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %16, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %5, align 8
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %19, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %6, align 8
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %22, i32 0, i32 4
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %7, align 8
  %25 = load i64, ptr %4, align 8
  %26 = call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 1)
  %27 = load i64, ptr %5, align 8
  %28 = call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 7)
  %29 = add i64 %26, %28
  %30 = load i64, ptr %6, align 8
  %31 = call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 12)
  %32 = add i64 %29, %31
  %33 = load i64, ptr %7, align 8
  %34 = call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 18)
  %35 = add i64 %32, %34
  store i64 %35, ptr %3, align 8
  %36 = load i64, ptr %3, align 8
  %37 = load i64, ptr %4, align 8
  %38 = call i64 @XXH64_mergeRound(i64 noundef %36, i64 noundef %37)
  store i64 %38, ptr %3, align 8
  %39 = load i64, ptr %3, align 8
  %40 = load i64, ptr %5, align 8
  %41 = call i64 @XXH64_mergeRound(i64 noundef %39, i64 noundef %40)
  store i64 %41, ptr %3, align 8
  %42 = load i64, ptr %3, align 8
  %43 = load i64, ptr %6, align 8
  %44 = call i64 @XXH64_mergeRound(i64 noundef %42, i64 noundef %43)
  store i64 %44, ptr %3, align 8
  %45 = load i64, ptr %3, align 8
  %46 = load i64, ptr %7, align 8
  %47 = call i64 @XXH64_mergeRound(i64 noundef %45, i64 noundef %46)
  store i64 %47, ptr %3, align 8
  br label %53

48:                                               ; preds = %1
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %49, i32 0, i32 3
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, 2870177450012600261
  store i64 %52, ptr %3, align 8
  br label %53

53:                                               ; preds = %48, %12
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %54, i32 0, i32 0
  %56 = load i64, ptr %55, align 8
  %57 = load i64, ptr %3, align 8
  %58 = add i64 %57, %56
  store i64 %58, ptr %3, align 8
  %59 = load i64, ptr %3, align 8
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %60, i32 0, i32 5
  %62 = getelementptr inbounds [4 x i64], ptr %61, i64 0, i64 0
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %63, i32 0, i32 0
  %65 = load i64, ptr %64, align 8
  %66 = call i64 @XXH64_finalize(i64 noundef %59, ptr noundef %62, i64 noundef %65, i32 noundef 0)
  ret i64 %66
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

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
  br label %16

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
  br label %55

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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 8 %4, i64 8, i1 false)
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
define internal i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) #0 {
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
define internal i64 @XXH3_hashLong_64b_default(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
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
  %16 = call i64 @XXH3_hashLong_64b_internal(ptr noundef %14, i64 noundef %15, ptr noundef @XXH3_kSecret, i64 noundef 192, ptr noundef @XXH3_accumulate_512_sse2, ptr noundef @XXH3_scrambleAcc_sse2)
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
define internal i64 @XXH3_hashLong_64b_withSecret(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
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
  %16 = call i64 @XXH3_hashLong_64b_internal(ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, ptr noundef @XXH3_accumulate_512_sse2, ptr noundef @XXH3_scrambleAcc_sse2)
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
  %16 = call i64 @XXH3_hashLong_64b_withSeed_internal(ptr noundef %13, i64 noundef %14, i64 noundef %15, ptr noundef @XXH3_accumulate_512_sse2, ptr noundef @XXH3_scrambleAcc_sse2, ptr noundef @XXH3_initCustomSecret_sse2)
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %5, ptr align 64 %6, i64 576, i1 false)
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
  call void @XXH3_initCustomSecret_sse2(ptr noundef %24, i64 noundef %25)
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
define internal void @XXH3_initCustomSecret_sse2(ptr noundef %0, i64 noundef %1) #4 {
  %3 = alloca ptr, align 8
  %4 = alloca <2 x i64>, align 16
  %5 = alloca <2 x i64>, align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca <2 x i64>, align 16
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca <2 x i64>, align 16
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %9, align 8
  store i64 %1, ptr %10, align 8
  br label %16

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16
  store i32 12, ptr %11, align 4
  %18 = load i64, ptr %10, align 8
  %19 = sub i64 0, %18
  %20 = load i64, ptr %10, align 8
  store i64 %19, ptr %6, align 8
  store i64 %20, ptr %7, align 8
  %21 = load i64, ptr %7, align 8
  %22 = insertelement <2 x i64> poison, i64 %21, i32 0
  %23 = load i64, ptr %6, align 8
  %24 = insertelement <2 x i64> %22, i64 %23, i32 1
  store <2 x i64> %24, ptr %8, align 16
  %25 = load <2 x i64>, ptr %8, align 16
  store <2 x i64> %25, ptr %12, align 16
  store ptr @XXH3_kSecret, ptr %14, align 8
  %26 = load ptr, ptr %9, align 8
  store ptr %26, ptr %15, align 8
  %27 = load ptr, ptr %15, align 8
  %28 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %27) #11
  store ptr %28, ptr %15, align 8
  store i32 0, ptr %13, align 4
  br label %29

29:                                               ; preds = %46, %17
  %30 = load i32, ptr %13, align 4
  %31 = icmp slt i32 %30, 12
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32, ptr %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds <2 x i64>, ptr @XXH3_kSecret, i64 %34
  store ptr %35, ptr %3, align 8
  %36 = load ptr, ptr %3, align 8
  %37 = load <2 x i64>, ptr %36, align 16
  %38 = load <2 x i64>, ptr %12, align 16
  store <2 x i64> %37, ptr %4, align 16
  store <2 x i64> %38, ptr %5, align 16
  %39 = load <2 x i64>, ptr %4, align 16
  %40 = load <2 x i64>, ptr %5, align 16
  %41 = add <2 x i64> %39, %40
  %42 = load ptr, ptr %15, align 8
  %43 = load i32, ptr %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds <2 x i64>, ptr %42, i64 %44
  store <2 x i64> %41, ptr %45, align 16
  br label %46

46:                                               ; preds = %32
  %47 = load i32, ptr %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %13, align 4
  br label %29

49:                                               ; preds = %29
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
  %10 = call i32 @XXH3_update(ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef @XXH3_accumulate_512_sse2, ptr noundef @XXH3_scrambleAcc_sse2)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH3_update(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, ptr %6, align 4
  br label %172

19:                                               ; preds = %5
  %20 = load ptr, ptr %8, align 8
  %21 = load i64, ptr %9, align 8
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 %21
  store ptr %22, ptr %12, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %23, i32 0, i32 11
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %28, i32 0, i32 1
  %30 = getelementptr inbounds [192 x i8], ptr %29, i64 0, i64 0
  br label %35

31:                                               ; preds = %19
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %32, i32 0, i32 11
  %34 = load ptr, ptr %33, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi ptr [ %30, %27 ], [ %34, %31 ]
  store ptr %36, ptr %13, align 8
  %37 = load i64, ptr %9, align 8
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %38, i32 0, i32 6
  %40 = load i64, ptr %39, align 16
  %41 = add i64 %40, %37
  store i64 %41, ptr %39, align 16
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 64
  %45 = zext i32 %44 to i64
  %46 = load i64, ptr %9, align 8
  %47 = add i64 %45, %46
  %48 = icmp ule i64 %47, 256
  br i1 %48, label %49, label %67

49:                                               ; preds = %35
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %50, i32 0, i32 2
  %52 = getelementptr inbounds [256 x i8], ptr %51, i64 0, i64 0
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 64
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds nuw i8, ptr %52, i64 %56
  %58 = load ptr, ptr %8, align 8
  %59 = load i64, ptr %9, align 8
  %60 = call ptr @XXH_memcpy(ptr noundef %57, ptr noundef %58, i64 noundef %59)
  %61 = load i64, ptr %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = load ptr, ptr %7, align 8
  %64 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %63, i32 0, i32 3
  %65 = load i32, ptr %64, align 64
  %66 = add i32 %65, %62
  store i32 %66, ptr %64, align 64
  store i32 0, ptr %6, align 4
  br label %172

67:                                               ; preds = %35
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr %7, align 8
  %71 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %70, i32 0, i32 3
  %72 = load i32, ptr %71, align 64
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %113

74:                                               ; preds = %69
  %75 = load ptr, ptr %7, align 8
  %76 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %75, i32 0, i32 3
  %77 = load i32, ptr %76, align 64
  %78 = sub i32 256, %77
  %79 = zext i32 %78 to i64
  store i64 %79, ptr %14, align 8
  %80 = load ptr, ptr %7, align 8
  %81 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %80, i32 0, i32 2
  %82 = getelementptr inbounds [256 x i8], ptr %81, i64 0, i64 0
  %83 = load ptr, ptr %7, align 8
  %84 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 64
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds nuw i8, ptr %82, i64 %86
  %88 = load ptr, ptr %8, align 8
  %89 = load i64, ptr %14, align 8
  %90 = call ptr @XXH_memcpy(ptr noundef %87, ptr noundef %88, i64 noundef %89)
  %91 = load i64, ptr %14, align 8
  %92 = load ptr, ptr %8, align 8
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 %91
  store ptr %93, ptr %8, align 8
  %94 = load ptr, ptr %7, align 8
  %95 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %94, i32 0, i32 0
  %96 = getelementptr inbounds [8 x i64], ptr %95, i64 0, i64 0
  %97 = load ptr, ptr %7, align 8
  %98 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %97, i32 0, i32 5
  %99 = load ptr, ptr %7, align 8
  %100 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %99, i32 0, i32 7
  %101 = load i64, ptr %100, align 8
  %102 = load ptr, ptr %7, align 8
  %103 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %102, i32 0, i32 2
  %104 = getelementptr inbounds [256 x i8], ptr %103, i64 0, i64 0
  %105 = load ptr, ptr %13, align 8
  %106 = load ptr, ptr %7, align 8
  %107 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %106, i32 0, i32 8
  %108 = load i64, ptr %107, align 32
  %109 = load ptr, ptr %10, align 8
  %110 = load ptr, ptr %11, align 8
  call void @XXH3_consumeStripes(ptr noundef %96, ptr noundef %98, i64 noundef %101, ptr noundef %104, i64 noundef 4, ptr noundef %105, i64 noundef %108, ptr noundef %109, ptr noundef %110)
  %111 = load ptr, ptr %7, align 8
  %112 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %111, i32 0, i32 3
  store i32 0, ptr %112, align 64
  br label %113

113:                                              ; preds = %74, %69
  %114 = load ptr, ptr %12, align 8
  %115 = load ptr, ptr %8, align 8
  %116 = ptrtoint ptr %114 to i64
  %117 = ptrtoint ptr %115 to i64
  %118 = sub i64 %116, %117
  %119 = icmp sgt i64 %118, 256
  br i1 %119, label %120, label %153

120:                                              ; preds = %113
  %121 = load ptr, ptr %12, align 8
  %122 = getelementptr inbounds i8, ptr %121, i64 -256
  store ptr %122, ptr %15, align 8
  br label %123

123:                                              ; preds = %141, %120
  %124 = load ptr, ptr %7, align 8
  %125 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %124, i32 0, i32 0
  %126 = getelementptr inbounds [8 x i64], ptr %125, i64 0, i64 0
  %127 = load ptr, ptr %7, align 8
  %128 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %127, i32 0, i32 5
  %129 = load ptr, ptr %7, align 8
  %130 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %129, i32 0, i32 7
  %131 = load i64, ptr %130, align 8
  %132 = load ptr, ptr %8, align 8
  %133 = load ptr, ptr %13, align 8
  %134 = load ptr, ptr %7, align 8
  %135 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %134, i32 0, i32 8
  %136 = load i64, ptr %135, align 32
  %137 = load ptr, ptr %10, align 8
  %138 = load ptr, ptr %11, align 8
  call void @XXH3_consumeStripes(ptr noundef %126, ptr noundef %128, i64 noundef %131, ptr noundef %132, i64 noundef 4, ptr noundef %133, i64 noundef %136, ptr noundef %137, ptr noundef %138)
  %139 = load ptr, ptr %8, align 8
  %140 = getelementptr inbounds i8, ptr %139, i64 256
  store ptr %140, ptr %8, align 8
  br label %141

141:                                              ; preds = %123
  %142 = load ptr, ptr %8, align 8
  %143 = load ptr, ptr %15, align 8
  %144 = icmp ult ptr %142, %143
  br i1 %144, label %123, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %7, align 8
  %147 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %146, i32 0, i32 2
  %148 = getelementptr inbounds [256 x i8], ptr %147, i64 0, i64 0
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 256
  %150 = getelementptr inbounds i8, ptr %149, i64 -64
  %151 = load ptr, ptr %8, align 8
  %152 = getelementptr inbounds i8, ptr %151, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %150, ptr align 1 %152, i64 64, i1 false)
  br label %153

153:                                              ; preds = %145, %113
  %154 = load ptr, ptr %7, align 8
  %155 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %154, i32 0, i32 2
  %156 = getelementptr inbounds [256 x i8], ptr %155, i64 0, i64 0
  %157 = load ptr, ptr %8, align 8
  %158 = load ptr, ptr %12, align 8
  %159 = load ptr, ptr %8, align 8
  %160 = ptrtoint ptr %158 to i64
  %161 = ptrtoint ptr %159 to i64
  %162 = sub i64 %160, %161
  %163 = call ptr @XXH_memcpy(ptr noundef %156, ptr noundef %157, i64 noundef %162)
  %164 = load ptr, ptr %12, align 8
  %165 = load ptr, ptr %8, align 8
  %166 = ptrtoint ptr %164 to i64
  %167 = ptrtoint ptr %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  %170 = load ptr, ptr %7, align 8
  %171 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %170, i32 0, i32 3
  store i32 %169, ptr %171, align 64
  store i32 0, ptr %6, align 4
  br label %172

172:                                              ; preds = %153, %49, %18
  %173 = load i32, ptr %6, align 4
  ret i32 %173
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_accumulate_512_sse2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = alloca <2 x i64>, align 16
  %5 = alloca <2 x i64>, align 16
  %6 = alloca <2 x i64>, align 16
  %7 = alloca <2 x i64>, align 16
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca <2 x i64>, align 16
  %11 = alloca <2 x i64>, align 16
  %12 = alloca <2 x i64>, align 16
  %13 = alloca <2 x i64>, align 16
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca <2 x i64>, align 16
  %22 = alloca <2 x i64>, align 16
  %23 = alloca <2 x i64>, align 16
  %24 = alloca <2 x i64>, align 16
  %25 = alloca <2 x i64>, align 16
  %26 = alloca <2 x i64>, align 16
  %27 = alloca <2 x i64>, align 16
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
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %86

34:                                               ; preds = %31
  %35 = load ptr, ptr %18, align 8
  %36 = load i64, ptr %20, align 8
  %37 = getelementptr inbounds nuw <2 x i64>, ptr %35, i64 %36
  store ptr %37, ptr %8, align 8
  %38 = load ptr, ptr %8, align 8
  %39 = load <2 x i64>, ptr %38, align 1
  store <2 x i64> %39, ptr %21, align 16
  %40 = load ptr, ptr %19, align 8
  %41 = load i64, ptr %20, align 8
  %42 = getelementptr inbounds nuw <2 x i64>, ptr %40, i64 %41
  store ptr %42, ptr %9, align 8
  %43 = load ptr, ptr %9, align 8
  %44 = load <2 x i64>, ptr %43, align 1
  store <2 x i64> %44, ptr %22, align 16
  %45 = load <2 x i64>, ptr %21, align 16
  %46 = load <2 x i64>, ptr %22, align 16
  store <2 x i64> %45, ptr %6, align 16
  store <2 x i64> %46, ptr %7, align 16
  %47 = load <2 x i64>, ptr %6, align 16
  %48 = load <2 x i64>, ptr %7, align 16
  %49 = xor <2 x i64> %47, %48
  store <2 x i64> %49, ptr %23, align 16
  %50 = load <2 x i64>, ptr %23, align 16
  %51 = bitcast <2 x i64> %50 to <4 x i32>
  %52 = shufflevector <4 x i32> %51, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %53 = bitcast <4 x i32> %52 to <2 x i64>
  store <2 x i64> %53, ptr %24, align 16
  %54 = load <2 x i64>, ptr %23, align 16
  %55 = load <2 x i64>, ptr %24, align 16
  store <2 x i64> %54, ptr %4, align 16
  store <2 x i64> %55, ptr %5, align 16
  %56 = load <2 x i64>, ptr %4, align 16
  %57 = bitcast <2 x i64> %56 to <4 x i32>
  %58 = load <2 x i64>, ptr %5, align 16
  %59 = bitcast <2 x i64> %58 to <4 x i32>
  %60 = and <2 x i64> %56, splat (i64 4294967295)
  %61 = and <2 x i64> %58, splat (i64 4294967295)
  %62 = mul <2 x i64> %60, %61
  store <2 x i64> %62, ptr %25, align 16
  %63 = load <2 x i64>, ptr %21, align 16
  %64 = bitcast <2 x i64> %63 to <4 x i32>
  %65 = shufflevector <4 x i32> %64, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %66 = bitcast <4 x i32> %65 to <2 x i64>
  store <2 x i64> %66, ptr %26, align 16
  %67 = load ptr, ptr %17, align 8
  %68 = load i64, ptr %20, align 8
  %69 = getelementptr inbounds nuw <2 x i64>, ptr %67, i64 %68
  %70 = load <2 x i64>, ptr %69, align 16
  %71 = load <2 x i64>, ptr %26, align 16
  store <2 x i64> %70, ptr %10, align 16
  store <2 x i64> %71, ptr %11, align 16
  %72 = load <2 x i64>, ptr %10, align 16
  %73 = load <2 x i64>, ptr %11, align 16
  %74 = add <2 x i64> %72, %73
  store <2 x i64> %74, ptr %27, align 16
  %75 = load <2 x i64>, ptr %25, align 16
  %76 = load <2 x i64>, ptr %27, align 16
  store <2 x i64> %75, ptr %12, align 16
  store <2 x i64> %76, ptr %13, align 16
  %77 = load <2 x i64>, ptr %12, align 16
  %78 = load <2 x i64>, ptr %13, align 16
  %79 = add <2 x i64> %77, %78
  %80 = load ptr, ptr %17, align 8
  %81 = load i64, ptr %20, align 8
  %82 = getelementptr inbounds nuw <2 x i64>, ptr %80, i64 %81
  store <2 x i64> %79, ptr %82, align 16
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
define internal void @XXH3_scrambleAcc_sse2(ptr noundef %0, ptr noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca <4 x i32>, align 16
  %8 = alloca <2 x i64>, align 16
  %9 = alloca i32, align 4
  %10 = alloca <2 x i64>, align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca <2 x i64>, align 16
  %14 = alloca <2 x i64>, align 16
  %15 = alloca <2 x i64>, align 16
  %16 = alloca <2 x i64>, align 16
  %17 = alloca <2 x i64>, align 16
  %18 = alloca <2 x i64>, align 16
  %19 = alloca <2 x i64>, align 16
  %20 = alloca <2 x i64>, align 16
  %21 = alloca ptr, align 8
  %22 = alloca <2 x i64>, align 16
  %23 = alloca <2 x i64>, align 16
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca <2 x i64>, align 16
  %29 = alloca i64, align 8
  %30 = alloca <2 x i64>, align 16
  %31 = alloca <2 x i64>, align 16
  %32 = alloca <2 x i64>, align 16
  %33 = alloca <2 x i64>, align 16
  %34 = alloca <2 x i64>, align 16
  %35 = alloca <2 x i64>, align 16
  %36 = alloca <2 x i64>, align 16
  %37 = alloca <2 x i64>, align 16
  store ptr %0, ptr %24, align 8
  store ptr %1, ptr %25, align 8
  %38 = load ptr, ptr %24, align 8
  store ptr %38, ptr %26, align 8
  %39 = load ptr, ptr %25, align 8
  store ptr %39, ptr %27, align 8
  store i32 -1640531535, ptr %12, align 4
  %40 = load i32, ptr %12, align 4
  %41 = load i32, ptr %12, align 4
  %42 = load i32, ptr %12, align 4
  %43 = load i32, ptr %12, align 4
  store i32 %40, ptr %3, align 4
  store i32 %41, ptr %4, align 4
  store i32 %42, ptr %5, align 4
  store i32 %43, ptr %6, align 4
  %44 = load i32, ptr %6, align 4
  %45 = insertelement <4 x i32> poison, i32 %44, i32 0
  %46 = load i32, ptr %5, align 4
  %47 = insertelement <4 x i32> %45, i32 %46, i32 1
  %48 = load i32, ptr %4, align 4
  %49 = insertelement <4 x i32> %47, i32 %48, i32 2
  %50 = load i32, ptr %3, align 4
  %51 = insertelement <4 x i32> %49, i32 %50, i32 3
  store <4 x i32> %51, ptr %7, align 16
  %52 = load <4 x i32>, ptr %7, align 16
  %53 = bitcast <4 x i32> %52 to <2 x i64>
  store <2 x i64> %53, ptr %28, align 16
  store i64 0, ptr %29, align 8
  br label %54

54:                                               ; preds = %114, %2
  %55 = load i64, ptr %29, align 8
  %56 = icmp ult i64 %55, 4
  br i1 %56, label %57, label %117

57:                                               ; preds = %54
  %58 = load ptr, ptr %26, align 8
  %59 = load i64, ptr %29, align 8
  %60 = getelementptr inbounds nuw <2 x i64>, ptr %58, i64 %59
  %61 = load <2 x i64>, ptr %60, align 16
  store <2 x i64> %61, ptr %30, align 16
  %62 = load <2 x i64>, ptr %30, align 16
  store <2 x i64> %62, ptr %10, align 16
  store i32 47, ptr %11, align 4
  %63 = load <2 x i64>, ptr %10, align 16
  %64 = load i32, ptr %11, align 4
  %65 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %63, i32 %64)
  store <2 x i64> %65, ptr %31, align 16
  %66 = load <2 x i64>, ptr %30, align 16
  %67 = load <2 x i64>, ptr %31, align 16
  store <2 x i64> %66, ptr %17, align 16
  store <2 x i64> %67, ptr %18, align 16
  %68 = load <2 x i64>, ptr %17, align 16
  %69 = load <2 x i64>, ptr %18, align 16
  %70 = xor <2 x i64> %68, %69
  store <2 x i64> %70, ptr %32, align 16
  %71 = load ptr, ptr %27, align 8
  %72 = load i64, ptr %29, align 8
  %73 = getelementptr inbounds nuw <2 x i64>, ptr %71, i64 %72
  store ptr %73, ptr %21, align 8
  %74 = load ptr, ptr %21, align 8
  %75 = load <2 x i64>, ptr %74, align 1
  store <2 x i64> %75, ptr %33, align 16
  %76 = load <2 x i64>, ptr %32, align 16
  %77 = load <2 x i64>, ptr %33, align 16
  store <2 x i64> %76, ptr %19, align 16
  store <2 x i64> %77, ptr %20, align 16
  %78 = load <2 x i64>, ptr %19, align 16
  %79 = load <2 x i64>, ptr %20, align 16
  %80 = xor <2 x i64> %78, %79
  store <2 x i64> %80, ptr %34, align 16
  %81 = load <2 x i64>, ptr %34, align 16
  %82 = bitcast <2 x i64> %81 to <4 x i32>
  %83 = shufflevector <4 x i32> %82, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %84 = bitcast <4 x i32> %83 to <2 x i64>
  store <2 x i64> %84, ptr %35, align 16
  %85 = load <2 x i64>, ptr %34, align 16
  %86 = load <2 x i64>, ptr %28, align 16
  store <2 x i64> %85, ptr %13, align 16
  store <2 x i64> %86, ptr %14, align 16
  %87 = load <2 x i64>, ptr %13, align 16
  %88 = bitcast <2 x i64> %87 to <4 x i32>
  %89 = load <2 x i64>, ptr %14, align 16
  %90 = bitcast <2 x i64> %89 to <4 x i32>
  %91 = and <2 x i64> %87, splat (i64 4294967295)
  %92 = and <2 x i64> %89, splat (i64 4294967295)
  %93 = mul <2 x i64> %91, %92
  store <2 x i64> %93, ptr %36, align 16
  %94 = load <2 x i64>, ptr %35, align 16
  %95 = load <2 x i64>, ptr %28, align 16
  store <2 x i64> %94, ptr %15, align 16
  store <2 x i64> %95, ptr %16, align 16
  %96 = load <2 x i64>, ptr %15, align 16
  %97 = bitcast <2 x i64> %96 to <4 x i32>
  %98 = load <2 x i64>, ptr %16, align 16
  %99 = bitcast <2 x i64> %98 to <4 x i32>
  %100 = and <2 x i64> %96, splat (i64 4294967295)
  %101 = and <2 x i64> %98, splat (i64 4294967295)
  %102 = mul <2 x i64> %100, %101
  store <2 x i64> %102, ptr %37, align 16
  %103 = load <2 x i64>, ptr %36, align 16
  %104 = load <2 x i64>, ptr %37, align 16
  store <2 x i64> %104, ptr %8, align 16
  store i32 32, ptr %9, align 4
  %105 = load <2 x i64>, ptr %8, align 16
  %106 = load i32, ptr %9, align 4
  %107 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %105, i32 %106)
  store <2 x i64> %103, ptr %22, align 16
  store <2 x i64> %107, ptr %23, align 16
  %108 = load <2 x i64>, ptr %22, align 16
  %109 = load <2 x i64>, ptr %23, align 16
  %110 = add <2 x i64> %108, %109
  %111 = load ptr, ptr %26, align 8
  %112 = load i64, ptr %29, align 8
  %113 = getelementptr inbounds nuw <2 x i64>, ptr %111, i64 %112
  store <2 x i64> %110, ptr %113, align 16
  br label %114

114:                                              ; preds = %57
  %115 = load i64, ptr %29, align 8
  %116 = add i64 %115, 1
  store i64 %116, ptr %29, align 8
  br label %54

117:                                              ; preds = %54
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XXH3_64bits_digest(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [8 x i64], align 16
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 64 %14, i64 64, i1 false)
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 64
  %18 = icmp uge i32 %17, 64
  br i1 %18, label %19, label %57

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 64
  %23 = sub i32 %22, 1
  %24 = udiv i32 %23, 64
  %25 = zext i32 %24 to i64
  store i64 %25, ptr %7, align 8
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %26, i32 0, i32 5
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %8, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %30, i32 0, i32 7
  %32 = load i64, ptr %31, align 8
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %33, i32 0, i32 2
  %35 = getelementptr inbounds [256 x i8], ptr %34, i64 0, i64 0
  %36 = load i64, ptr %7, align 8
  %37 = load ptr, ptr %6, align 8
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %38, i32 0, i32 8
  %40 = load i64, ptr %39, align 32
  call void @XXH3_consumeStripes(ptr noundef %29, ptr noundef %8, i64 noundef %32, ptr noundef %35, i64 noundef %36, ptr noundef %37, i64 noundef %40, ptr noundef @XXH3_accumulate_512_sse2, ptr noundef @XXH3_scrambleAcc_sse2)
  %41 = load ptr, ptr %4, align 8
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %42, i32 0, i32 2
  %44 = getelementptr inbounds [256 x i8], ptr %43, i64 0, i64 0
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 64
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds nuw i8, ptr %44, i64 %48
  %50 = getelementptr inbounds i8, ptr %49, i64 -64
  %51 = load ptr, ptr %6, align 8
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %52, i32 0, i32 8
  %54 = load i64, ptr %53, align 32
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 %54
  %56 = getelementptr inbounds i8, ptr %55, i64 -7
  call void @XXH3_accumulate_512_sse2(ptr noundef %41, ptr noundef %50, ptr noundef %56)
  br label %90

57:                                               ; preds = %3
  %58 = load ptr, ptr %5, align 8
  %59 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %58, i32 0, i32 3
  %60 = load i32, ptr %59, align 64
  %61 = sub i32 64, %60
  %62 = zext i32 %61 to i64
  store i64 %62, ptr %10, align 8
  %63 = getelementptr inbounds [64 x i8], ptr %9, i64 0, i64 0
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %64, i32 0, i32 2
  %66 = getelementptr inbounds [256 x i8], ptr %65, i64 0, i64 0
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 256
  %68 = load i64, ptr %10, align 8
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i8, ptr %67, i64 %69
  %71 = load i64, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %63, ptr align 1 %70, i64 %71, i1 false)
  %72 = getelementptr inbounds [64 x i8], ptr %9, i64 0, i64 0
  %73 = load i64, ptr %10, align 8
  %74 = getelementptr inbounds nuw i8, ptr %72, i64 %73
  %75 = load ptr, ptr %5, align 8
  %76 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %75, i32 0, i32 2
  %77 = getelementptr inbounds [256 x i8], ptr %76, i64 0, i64 0
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 64
  %81 = zext i32 %80 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 64 %77, i64 %81, i1 false)
  %82 = load ptr, ptr %4, align 8
  %83 = getelementptr inbounds [64 x i8], ptr %9, i64 0, i64 0
  %84 = load ptr, ptr %6, align 8
  %85 = load ptr, ptr %5, align 8
  %86 = getelementptr inbounds nuw %struct.XXH3_state_s, ptr %85, i32 0, i32 8
  %87 = load i64, ptr %86, align 32
  %88 = getelementptr inbounds nuw i8, ptr %84, i64 %87
  %89 = getelementptr inbounds i8, ptr %88, i64 -7
  call void @XXH3_accumulate_512_sse2(ptr noundef %82, ptr noundef %83, ptr noundef %89)
  br label %90

90:                                               ; preds = %57, %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_mergeAccs(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
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
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 64 @XXH3_kSecret, i64 192, i1 false)
  br label %97

22:                                               ; preds = %3
  store i64 16, ptr %7, align 8
  store i64 12, ptr %8, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load i64, ptr %6, align 8
  %25 = call { i64, i64 } @XXH128(ptr noundef %23, i64 noundef %24, i64 noundef 0)
  %26 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 0
  %27 = extractvalue { i64, i64 } %25, 0
  store i64 %27, ptr %26, align 8
  %28 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 1
  %29 = extractvalue { i64, i64 } %25, 1
  store i64 %29, ptr %28, align 8
  %30 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 0
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds nuw { i64, i64 }, ptr %12, i32 0, i32 1
  %33 = load i64, ptr %32, align 8
  call void @XXH128_canonicalFromHash(ptr noundef %9, i64 %31, i64 %33)
  %34 = load i64, ptr %6, align 8
  %35 = icmp ugt i64 %34, 96
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %39

37:                                               ; preds = %22
  %38 = load i64, ptr %6, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i64 [ 96, %36 ], [ %38, %37 ]
  store i64 %40, ptr %13, align 8
  %41 = load i64, ptr %13, align 8
  store i64 %41, ptr %14, align 8
  %42 = getelementptr inbounds [12 x i64], ptr %10, i64 0, i64 0
  %43 = load ptr, ptr %5, align 8
  %44 = load i64, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %42, ptr align 1 %43, i64 %44, i1 false)
  br label %45

45:                                               ; preds = %58, %39
  %46 = load i64, ptr %14, align 8
  %47 = icmp ult i64 %46, 96
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i64, ptr %14, align 8
  %50 = load i64, ptr %14, align 8
  %51 = sub i64 96, %50
  %52 = icmp ugt i64 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i64, ptr %14, align 8
  %55 = sub i64 96, %54
  br label %58

56:                                               ; preds = %48
  %57 = load i64, ptr %14, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i64 [ %55, %53 ], [ %57, %56 ]
  store i64 %59, ptr %13, align 8
  %60 = getelementptr inbounds [12 x i64], ptr %10, i64 0, i64 0
  %61 = load i64, ptr %14, align 8
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 %61
  %63 = getelementptr inbounds [12 x i64], ptr %10, i64 0, i64 0
  %64 = load i64, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 16 %63, i64 %64, i1 false)
  %65 = load i64, ptr %13, align 8
  %66 = load i64, ptr %14, align 8
  %67 = add i64 %66, %65
  store i64 %67, ptr %14, align 8
  br label %45

68:                                               ; preds = %45
  %69 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 1 %9, i64 16, i1 false)
  store i64 1, ptr %11, align 8
  br label %70

70:                                               ; preds = %94, %68
  %71 = load i64, ptr %11, align 8
  %72 = icmp ult i64 %71, 12
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load i64, ptr %11, align 8
  %75 = mul i64 %74, 16
  store i64 %75, ptr %15, align 8
  %76 = getelementptr inbounds [12 x i64], ptr %10, i64 0, i64 0
  %77 = load i64, ptr %11, align 8
  %78 = getelementptr inbounds nuw i64, ptr %76, i64 %77
  %79 = call i64 @XXH_readLE64(ptr noundef %78)
  %80 = load i64, ptr %11, align 8
  %81 = add i64 %79, %80
  %82 = call { i64, i64 } @XXH128(ptr noundef %9, i64 noundef 16, i64 noundef %81)
  %83 = getelementptr inbounds nuw { i64, i64 }, ptr %17, i32 0, i32 0
  %84 = extractvalue { i64, i64 } %82, 0
  store i64 %84, ptr %83, align 8
  %85 = getelementptr inbounds nuw { i64, i64 }, ptr %17, i32 0, i32 1
  %86 = extractvalue { i64, i64 } %82, 1
  store i64 %86, ptr %85, align 8
  %87 = getelementptr inbounds nuw { i64, i64 }, ptr %17, i32 0, i32 0
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr inbounds nuw { i64, i64 }, ptr %17, i32 0, i32 1
  %90 = load i64, ptr %89, align 8
  call void @XXH128_canonicalFromHash(ptr noundef %16, i64 %88, i64 %90)
  %91 = load ptr, ptr %4, align 8
  %92 = load i64, ptr %15, align 8
  %93 = getelementptr inbounds nuw i8, ptr %91, i64 %92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %93, ptr align 1 %16, i64 16, i1 false)
  br label %94

94:                                               ; preds = %73
  %95 = load i64, ptr %11, align 8
  %96 = add i64 %95, 1
  store i64 %96, ptr %11, align 8
  br label %70

97:                                               ; preds = %20, %70
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 8 %19, i64 8, i1 false)
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %22 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %4, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 8 %22, i64 8, i1 false)
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
define internal { i64, i64 } @XXH3_128bits_internal(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) #0 {
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
define internal { i64, i64 } @XXH3_hashLong_128b_default(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
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
  %17 = call { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef %15, i64 noundef %16, ptr noundef @XXH3_kSecret, i64 noundef 192, ptr noundef @XXH3_accumulate_512_sse2, ptr noundef @XXH3_scrambleAcc_sse2)
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
define internal { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
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
  %17 = call { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef @XXH3_accumulate_512_sse2, ptr noundef @XXH3_scrambleAcc_sse2)
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
define internal { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
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
  %17 = call { i64, i64 } @XXH3_hashLong_128b_withSeed_internal(ptr noundef %14, i64 noundef %15, i64 noundef %16, ptr noundef @XXH3_accumulate_512_sse2, ptr noundef @XXH3_scrambleAcc_sse2, ptr noundef @XXH3_initCustomSecret_sse2)
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
  call void @XXH3_initCustomSecret_sse2(ptr noundef %24, i64 noundef %25)
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
  %10 = call i32 @XXH3_update(ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef @XXH3_accumulate_512_sse2, ptr noundef @XXH3_scrambleAcc_sse2)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @XXH3_128bits_digest(ptr noundef %0) #0 {
  %2 = alloca %struct.XXH128_hash_t, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [8 x i64], align 16
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
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

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
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 1 %4, i64 4, i1 false)
  %5 = load i32, ptr %3, align 4
  ret i32 %5
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 1 %4, i64 8, i1 false)
  %5 = load i64, ptr %3, align 8
  ret i64 %5
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
define internal i64 @XXH3_len_17to128_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 {
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
define internal i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 {
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
define internal i64 @XXH3_mix16B(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
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
define internal i64 @XXH3_hashLong_64b_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [8 x i64], align 16
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %13, ptr align 16 @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
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
define internal void @XXH3_hashLong_internal_loop(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
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
define internal void @XXH3_accumulate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
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
  br label %13

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
  %14 = alloca [192 x i8], align 16
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 8 %4, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_consumeStripes(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8) #0 {
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
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64>, i32) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_mix2Accs(ptr noundef %0, ptr noundef %1) #0 {
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
define internal { i64, i64 } @XXH3_len_17to128_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 {
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
define internal { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 {
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
  br label %26

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
define internal { i64, i64 } @XXH3_hashLong_128b_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.XXH128_hash_t, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [8 x i64], align 16
  store ptr %0, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store i64 %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %14, ptr align 16 @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false)
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
define internal { i64, i64 } @XXH3_hashLong_128b_withSeed_internal(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.XXH128_hash_t, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [192 x i8], align 16
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

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
