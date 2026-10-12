; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/b8dfa44/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/b8dfa44/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_xxh32_len20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -2048144777
  %12 = add i32 %11, 606290984
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 13)
  %15 = mul i32 %14, -1640531535
  %16 = freeze i32 %15
  %17 = lshr i64 %0, 32
  %18 = trunc nuw i64 %17 to i32
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, -2048144777
  %21 = add i32 %20, %8
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = freeze i32 %23
  %25 = trunc i64 %1 to i32
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %8, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = freeze i32 %29
  %31 = lshr i64 %1, 32
  %32 = trunc nuw i64 %31 to i32
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, 1640531535
  %35 = add i32 %34, %8
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, 20
  %46 = add i32 %45, %39
  %47 = add i32 %46, %40
  %48 = add i32 %47, %41
  %49 = add i32 %48, %42
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i32 %51, 15
  %53 = xor i32 %52, %51
  %54 = mul i32 %53, -2048144777
  %55 = lshr i32 %54, 13
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, -1028477379
  %58 = lshr i32 %57, 16
  %59 = xor i32 %58, %57
  ret i32 %59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len40(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  %6 = load i64, ptr %0, align 1
  %7 = mul i64 %6, -4417276706812531889
  %8 = add i64 %3, %7
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 1
  %13 = mul i64 %12, -4417276706812531889
  %14 = add i64 %4, %13
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
  %26 = add i64 %5, %25
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
  %59 = getelementptr i8, ptr %0, i64 32
  %60 = add i64 %58, -8796714831421722997
  %61 = load i64, ptr %59, align 1
  %62 = mul i64 %61, -4417276706812531889
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %60, %64
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 27)
  %67 = mul i64 %66, -7046029288634856825
  %68 = add i64 %67, -8796714831421723037
  %69 = lshr i64 %68, 33
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, -4417276706812531889
  %72 = lshr i64 %71, 29
  %73 = xor i64 %72, %71
  %74 = mul i64 %73, 1609587929392839161
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  ret i64 %76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len20(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i64, ptr %0, align 1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 1
  %5 = xor i64 %2, -4734510112055689544
  %6 = xor i64 %4, 2066345149520216444
  %7 = zext i64 %5 to i128
  %8 = zext i64 %6 to i128
  %9 = mul nuw i128 %8, %7
  %10 = lshr i128 %9, 64
  %11 = xor i128 %10, %9
  %12 = trunc i128 %11 to i64
  %13 = add i64 %12, 6653366816979276428
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %15, -2623469361688619810
  %19 = xor i64 %17, 2262974939099578482
  %20 = zext i64 %18 to i128
  %21 = zext i64 %19 to i128
  %22 = mul nuw i128 %21, %20
  %23 = lshr i128 %22, 64
  %24 = xor i128 %23, %22
  %25 = trunc i128 %24 to i64
  %26 = add i64 %13, %25
  %27 = lshr i64 %26, 37
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587929392839161
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  ret i64 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len100(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %3 = load i64, ptr %2, align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %5 = load i64, ptr %4, align 1
  %6 = xor i64 %3, 4554437623014685352
  %7 = xor i64 %5, 2111919702937427193
  %8 = zext i64 %6 to i128
  %9 = zext i64 %7 to i128
  %10 = mul nuw i128 %9, %8
  %11 = lshr i128 %10, 64
  %12 = xor i128 %11, %10
  %13 = trunc i128 %12 to i64
  %14 = add i64 %13, -3626654062522721092
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %16, 3556072174620004746
  %20 = xor i64 %18, 7238261902898274248
  %21 = zext i64 %19 to i128
  %22 = zext i64 %20 to i128
  %23 = mul nuw i128 %22, %21
  %24 = lshr i128 %23, 64
  %25 = xor i128 %24, %23
  %26 = trunc i128 %25 to i64
  %27 = add i64 %14, %26
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %29 = load i64, ptr %28, align 1
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i64, ptr %30, align 1
  %32 = xor i64 %29, -3818837453329782724
  %33 = xor i64 %31, -6688317018830679928
  %34 = zext i64 %32 to i128
  %35 = zext i64 %33 to i128
  %36 = mul nuw i128 %35, %34
  %37 = lshr i128 %36, 64
  %38 = xor i128 %37, %36
  %39 = trunc i128 %38 to i64
  %40 = add i64 %27, %39
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %42 = load i64, ptr %41, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %44 = load i64, ptr %43, align 1
  %45 = xor i64 %42, 5690594596133299313
  %46 = xor i64 %44, -2833645246901970632
  %47 = zext i64 %45 to i128
  %48 = zext i64 %46 to i128
  %49 = mul nuw i128 %48, %47
  %50 = lshr i128 %49, 64
  %51 = xor i128 %50, %49
  %52 = trunc i128 %51 to i64
  %53 = add i64 %40, %52
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %55 = load i64, ptr %54, align 1
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %57 = load i64, ptr %56, align 1
  %58 = xor i64 %55, 8711581037947681227
  %59 = xor i64 %57, 2410270004345854594
  %60 = zext i64 %58 to i128
  %61 = zext i64 %59 to i128
  %62 = mul nuw i128 %61, %60
  %63 = lshr i128 %62, 64
  %64 = xor i128 %63, %62
  %65 = trunc i128 %64 to i64
  %66 = add i64 %53, %65
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %68 = load i64, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %70 = load i64, ptr %69, align 1
  %71 = xor i64 %68, -8204357891075471176
  %72 = xor i64 %70, 5487137525590930912
  %73 = zext i64 %71 to i128
  %74 = zext i64 %72 to i128
  %75 = mul nuw i128 %74, %73
  %76 = lshr i128 %75, 64
  %77 = xor i128 %76, %75
  %78 = trunc i128 %77 to i64
  %79 = add i64 %66, %78
  %80 = load i64, ptr %0, align 1
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = xor i64 %80, -4734510112055689544
  %84 = xor i64 %82, 2066345149520216444
  %85 = zext i64 %83 to i128
  %86 = zext i64 %84 to i128
  %87 = mul nuw i128 %86, %85
  %88 = lshr i128 %87, 64
  %89 = xor i128 %88, %87
  %90 = trunc i128 %89 to i64
  %91 = add i64 %79, %90
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %95 = load i64, ptr %94, align 1
  %96 = xor i64 %93, -2623469361688619810
  %97 = xor i64 %95, 2262974939099578482
  %98 = zext i64 %96 to i128
  %99 = zext i64 %97 to i128
  %100 = mul nuw i128 %99, %98
  %101 = lshr i128 %100, 64
  %102 = xor i128 %101, %100
  %103 = trunc i128 %102 to i64
  %104 = add i64 %91, %103
  %105 = lshr i64 %104, 37
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  ret i64 %109
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len200(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i64 noundef 200)
  ret i64 %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len300(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef readonly %0, i64 noundef 300)
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh128_len20_lo(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = xor i64 %3, -4734510112055689544
  %7 = xor i64 %5, 2066345149520216444
  %8 = zext i64 %6 to i128
  %9 = zext i64 %7 to i128
  %10 = mul nuw i128 %9, %8
  %11 = lshr i128 %10, 64
  %12 = xor i128 %11, %10
  %13 = trunc i128 %12 to i64
  %14 = add i64 %13, 6653366816979276428
  %15 = load i64, ptr %2, align 1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %17 = load i64, ptr %16, align 1
  %18 = add i64 %17, %15
  %19 = xor i64 %14, %18
  %20 = xor i64 %15, -2623469361688619810
  %21 = xor i64 %17, 2262974939099578482
  %22 = zext i64 %20 to i128
  %23 = zext i64 %21 to i128
  %24 = mul nuw i128 %23, %22
  %25 = lshr i128 %24, 64
  %26 = xor i128 %25, %24
  %27 = trunc i128 %26 to i64
  %28 = add i64 %5, %3
  %29 = xor i64 %28, %27
  %30 = add i64 %29, %19
  %31 = lshr i64 %30, 37
  %32 = xor i64 %31, %30
  %33 = mul i64 %32, 1609587929392839161
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  ret i64 %35
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias noundef readonly %0, i64 noundef range(i64 129, 241) %1) unnamed_addr #4 {
  %3 = mul i64 %1, -7046029288634856825
  %4 = trunc nuw nsw i64 %1 to i32
  %5 = load i64, ptr %0, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 1
  %8 = xor i64 %5, -4734510112055689544
  %9 = xor i64 %7, 2066345149520216444
  %10 = zext i64 %8 to i128
  %11 = zext i64 %9 to i128
  %12 = mul nuw i128 %11, %10
  %13 = lshr i128 %12, 64
  %14 = xor i128 %13, %12
  %15 = trunc i128 %14 to i64
  %16 = add i64 %3, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %20 = load i64, ptr %19, align 1
  %21 = xor i64 %18, -2623469361688619810
  %22 = xor i64 %20, 2262974939099578482
  %23 = zext i64 %21 to i128
  %24 = zext i64 %22 to i128
  %25 = mul nuw i128 %24, %23
  %26 = lshr i128 %25, 64
  %27 = xor i128 %26, %25
  %28 = trunc i128 %27 to i64
  %29 = add i64 %16, %28
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %31 = load i64, ptr %30, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %33 = load i64, ptr %32, align 1
  %34 = xor i64 %31, 8711581037947681227
  %35 = xor i64 %33, 2410270004345854594
  %36 = zext i64 %34 to i128
  %37 = zext i64 %35 to i128
  %38 = mul nuw i128 %37, %36
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = add i64 %29, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %44 = load i64, ptr %43, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %46 = load i64, ptr %45, align 1
  %47 = xor i64 %44, -8204357891075471176
  %48 = xor i64 %46, 5487137525590930912
  %49 = zext i64 %47 to i128
  %50 = zext i64 %48 to i128
  %51 = mul nuw i128 %50, %49
  %52 = lshr i128 %51, 64
  %53 = xor i128 %52, %51
  %54 = trunc i128 %53 to i64
  %55 = add i64 %42, %54
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %57 = load i64, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %59 = load i64, ptr %58, align 1
  %60 = xor i64 %57, -3818837453329782724
  %61 = xor i64 %59, -6688317018830679928
  %62 = zext i64 %60 to i128
  %63 = zext i64 %61 to i128
  %64 = mul nuw i128 %63, %62
  %65 = lshr i128 %64, 64
  %66 = xor i128 %65, %64
  %67 = trunc i128 %66 to i64
  %68 = add i64 %55, %67
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %70, 5690594596133299313
  %74 = xor i64 %72, -2833645246901970632
  %75 = zext i64 %73 to i128
  %76 = zext i64 %74 to i128
  %77 = mul nuw i128 %76, %75
  %78 = lshr i128 %77, 64
  %79 = xor i128 %78, %77
  %80 = trunc i128 %79 to i64
  %81 = add i64 %68, %80
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %83 = load i64, ptr %82, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %85 = load i64, ptr %84, align 1
  %86 = xor i64 %83, 4554437623014685352
  %87 = xor i64 %85, 2111919702937427193
  %88 = zext i64 %86 to i128
  %89 = zext i64 %87 to i128
  %90 = mul nuw i128 %89, %88
  %91 = lshr i128 %90, 64
  %92 = xor i128 %91, %90
  %93 = trunc i128 %92 to i64
  %94 = add i64 %81, %93
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %96 = load i64, ptr %95, align 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %98 = load i64, ptr %97, align 1
  %99 = xor i64 %96, 3556072174620004746
  %100 = xor i64 %98, 7238261902898274248
  %101 = zext i64 %99 to i128
  %102 = zext i64 %100 to i128
  %103 = mul nuw i128 %102, %101
  %104 = lshr i128 %103, 64
  %105 = xor i128 %104, %103
  %106 = trunc i128 %105 to i64
  %107 = add i64 %94, %106
  %108 = lshr i32 %4, 4
  %109 = lshr i64 %107, 37
  %110 = xor i64 %109, %107
  %111 = mul i64 %110, 1609587929392839161
  %112 = lshr i64 %111, 32
  %113 = xor i64 %112, %111
  %114 = icmp eq i32 %108, 8
  br i1 %114, label %219, label %115

115:                                              ; preds = %2
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %117 = load i64, ptr %116, align 1
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %119 = load i64, ptr %118, align 1
  %120 = xor i64 %117, -9150895811085458631
  %121 = xor i64 %119, 7914194659941938988
  %122 = zext i64 %120 to i128
  %123 = zext i64 %121 to i128
  %124 = mul nuw i128 %123, %122
  %125 = lshr i128 %124, 64
  %126 = xor i128 %125, %124
  %127 = trunc i128 %126 to i64
  %128 = add i64 %113, %127
  %129 = icmp eq i32 %108, 9
  br i1 %129, label %219, label %130

130:                                              ; preds = %115
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %132 = load i64, ptr %131, align 1
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %134 = load i64, ptr %133, align 1
  %135 = xor i64 %132, -6611157965513653271
  %136 = xor i64 %134, -1839215637059881052
  %137 = zext i64 %135 to i128
  %138 = zext i64 %136 to i128
  %139 = mul nuw i128 %138, %137
  %140 = lshr i128 %139, 64
  %141 = xor i128 %140, %139
  %142 = trunc i128 %141 to i64
  %143 = add i64 %128, %142
  %144 = icmp eq i32 %108, 10
  br i1 %144, label %219, label %145

145:                                              ; preds = %130
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, -3433288310154277810
  %151 = xor i64 %149, 5046485836271438973
  %152 = zext i64 %150 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %143, %157
  %159 = icmp eq i32 %108, 11
  br i1 %159, label %219, label %160

160:                                              ; preds = %145
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %162 = load i64, ptr %161, align 1
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %164 = load i64, ptr %163, align 1
  %165 = xor i64 %162, -8055285457383852172
  %166 = xor i64 %164, 5920048007935066598
  %167 = zext i64 %165 to i128
  %168 = zext i64 %166 to i128
  %169 = mul nuw i128 %168, %167
  %170 = lshr i128 %169, 64
  %171 = xor i128 %170, %169
  %172 = trunc i128 %171 to i64
  %173 = add i64 %158, %172
  %174 = icmp eq i32 %108, 12
  br i1 %174, label %219, label %175

175:                                              ; preds = %160
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %177 = load i64, ptr %176, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %179 = load i64, ptr %178, align 1
  %180 = xor i64 %177, 7336514198459093435
  %181 = xor i64 %179, 5216419214072683403
  %182 = zext i64 %180 to i128
  %183 = zext i64 %181 to i128
  %184 = mul nuw i128 %183, %182
  %185 = lshr i128 %184, 64
  %186 = xor i128 %185, %184
  %187 = trunc i128 %186 to i64
  %188 = add i64 %173, %187
  %189 = icmp eq i32 %108, 13
  br i1 %189, label %219, label %190

190:                                              ; preds = %175
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %192 = load i64, ptr %191, align 1
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %194 = load i64, ptr %193, align 1
  %195 = xor i64 %192, -1217880312389983593
  %196 = xor i64 %194, 8573350489219836230
  %197 = zext i64 %195 to i128
  %198 = zext i64 %196 to i128
  %199 = mul nuw i128 %198, %197
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %188, %202
  %204 = icmp eq i32 %108, 14
  br i1 %204, label %219, label %205

205:                                              ; preds = %190
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %207 = load i64, ptr %206, align 1
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %209 = load i64, ptr %208, align 1
  %210 = xor i64 %207, -4909775443879730369
  %211 = xor i64 %209, -2282891677615274041
  %212 = zext i64 %210 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %203, %217
  br label %219

219:                                              ; preds = %115, %130, %145, %160, %175, %190, %205, %2
  %220 = phi i64 [ %113, %2 ], [ %128, %115 ], [ %143, %130 ], [ %158, %145 ], [ %173, %160 ], [ %188, %175 ], [ %203, %190 ], [ %218, %205 ]
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %222 = getelementptr inbounds i8, ptr %221, i64 -16
  %223 = load i64, ptr %222, align 1
  %224 = getelementptr inbounds i8, ptr %221, i64 -8
  %225 = load i64, ptr %224, align 1
  %226 = xor i64 %223, 8320639771003045937
  %227 = xor i64 %225, -1453760514566526364
  %228 = zext i64 %226 to i128
  %229 = zext i64 %227 to i128
  %230 = mul nuw i128 %229, %228
  %231 = lshr i128 %230, 64
  %232 = xor i128 %231, %230
  %233 = trunc i128 %232 to i64
  %234 = add i64 %220, %233
  %235 = lshr i64 %234, 37
  %236 = xor i64 %235, %234
  %237 = mul i64 %236, 1609587929392839161
  %238 = lshr i64 %237, 32
  %239 = xor i64 %238, %237
  ret i64 %239
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noalias noundef readonly %0, i64 noundef range(i64 241, 301) %1) unnamed_addr #5 {
  %3 = lshr i64 %1, 6
  %4 = load <4 x i64>, ptr %0, align 1
  %5 = xor <4 x i64> %4, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %6 = bitcast <4 x i64> %5 to <8 x i32>
  %7 = shufflevector <8 x i32> %6, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %8 = bitcast <8 x i32> %7 to <4 x i64>
  %9 = and <4 x i64> %5, splat (i64 4294967295)
  %10 = and <4 x i64> %8, splat (i64 4294967295)
  %11 = mul nuw <4 x i64> %10, %9
  %12 = add <4 x i64> %4, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %13 = add <4 x i64> %12, %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %15 = load <4 x i64>, ptr %14, align 1
  %16 = xor <4 x i64> %15, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %17 = bitcast <4 x i64> %16 to <8 x i32>
  %18 = shufflevector <8 x i32> %17, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %19 = bitcast <8 x i32> %18 to <4 x i64>
  %20 = and <4 x i64> %16, splat (i64 4294967295)
  %21 = and <4 x i64> %19, splat (i64 4294967295)
  %22 = mul nuw <4 x i64> %21, %20
  %23 = add <4 x i64> %15, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %24 = add <4 x i64> %23, %22
  %25 = icmp eq i64 %3, 1
  br i1 %25, label %97, label %26

26:                                               ; preds = %2
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %28 = load <4 x i64>, ptr %27, align 1
  %29 = xor <4 x i64> %28, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %30 = bitcast <4 x i64> %29 to <8 x i32>
  %31 = shufflevector <8 x i32> %30, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %32 = bitcast <8 x i32> %31 to <4 x i64>
  %33 = and <4 x i64> %29, splat (i64 4294967295)
  %34 = and <4 x i64> %32, splat (i64 4294967295)
  %35 = mul nuw <4 x i64> %34, %33
  %36 = add <4 x i64> %13, %28
  %37 = add <4 x i64> %36, %35
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %39 = load <4 x i64>, ptr %38, align 1
  %40 = xor <4 x i64> %39, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %41 = bitcast <4 x i64> %40 to <8 x i32>
  %42 = shufflevector <8 x i32> %41, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %43 = bitcast <8 x i32> %42 to <4 x i64>
  %44 = and <4 x i64> %40, splat (i64 4294967295)
  %45 = and <4 x i64> %43, splat (i64 4294967295)
  %46 = mul nuw <4 x i64> %45, %44
  %47 = add <4 x i64> %24, %39
  %48 = add <4 x i64> %47, %46
  %49 = icmp eq i64 %3, 2
  br i1 %49, label %97, label %50

50:                                               ; preds = %26
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %52 = load <4 x i64>, ptr %51, align 1
  %53 = xor <4 x i64> %52, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %54 = bitcast <4 x i64> %53 to <8 x i32>
  %55 = shufflevector <8 x i32> %54, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %56 = bitcast <8 x i32> %55 to <4 x i64>
  %57 = and <4 x i64> %53, splat (i64 4294967295)
  %58 = and <4 x i64> %56, splat (i64 4294967295)
  %59 = mul nuw <4 x i64> %58, %57
  %60 = add <4 x i64> %37, %52
  %61 = add <4 x i64> %60, %59
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %63 = load <4 x i64>, ptr %62, align 1
  %64 = xor <4 x i64> %63, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %65 = bitcast <4 x i64> %64 to <8 x i32>
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = and <4 x i64> %64, splat (i64 4294967295)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, %68
  %71 = add <4 x i64> %48, %63
  %72 = add <4 x i64> %71, %70
  %73 = icmp eq i64 %3, 3
  br i1 %73, label %97, label %74

74:                                               ; preds = %50
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %76 = load <4 x i64>, ptr %75, align 1
  %77 = xor <4 x i64> %76, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %78 = bitcast <4 x i64> %77 to <8 x i32>
  %79 = shufflevector <8 x i32> %78, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %80 = bitcast <8 x i32> %79 to <4 x i64>
  %81 = and <4 x i64> %77, splat (i64 4294967295)
  %82 = and <4 x i64> %80, splat (i64 4294967295)
  %83 = mul nuw <4 x i64> %82, %81
  %84 = add <4 x i64> %61, %76
  %85 = add <4 x i64> %84, %83
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %87 = load <4 x i64>, ptr %86, align 1
  %88 = xor <4 x i64> %87, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %89 = bitcast <4 x i64> %88 to <8 x i32>
  %90 = shufflevector <8 x i32> %89, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %91 = bitcast <8 x i32> %90 to <4 x i64>
  %92 = and <4 x i64> %88, splat (i64 4294967295)
  %93 = and <4 x i64> %91, splat (i64 4294967295)
  %94 = mul nuw <4 x i64> %93, %92
  %95 = add <4 x i64> %72, %87
  %96 = add <4 x i64> %95, %94
  br label %97

97:                                               ; preds = %74, %50, %26, %2
  %98 = phi <4 x i64> [ %13, %2 ], [ %37, %26 ], [ %61, %50 ], [ %85, %74 ]
  %99 = phi <4 x i64> [ %24, %2 ], [ %48, %26 ], [ %72, %50 ], [ %96, %74 ]
  %100 = and i64 %1, 63
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %126, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %104 = getelementptr inbounds i8, ptr %103, i64 -64
  %105 = load <4 x i64>, ptr %104, align 1
  %106 = xor <4 x i64> %105, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = add <4 x i64> %98, %105
  %114 = add <4 x i64> %113, %112
  %115 = getelementptr inbounds i8, ptr %103, i64 -32
  %116 = load <4 x i64>, ptr %115, align 1
  %117 = xor <4 x i64> %116, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %118 = bitcast <4 x i64> %117 to <8 x i32>
  %119 = shufflevector <8 x i32> %118, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %120 = bitcast <8 x i32> %119 to <4 x i64>
  %121 = and <4 x i64> %117, splat (i64 4294967295)
  %122 = and <4 x i64> %120, splat (i64 4294967295)
  %123 = mul nuw <4 x i64> %122, %121
  %124 = add <4 x i64> %99, %116
  %125 = add <4 x i64> %124, %123
  br label %126

126:                                              ; preds = %102, %97
  %127 = phi <4 x i64> [ %99, %97 ], [ %125, %102 ]
  %128 = phi <4 x i64> [ %98, %97 ], [ %114, %102 ]
  %129 = mul i64 %1, -7046029288634856825
  %130 = extractelement <4 x i64> %128, i64 0
  %131 = xor i64 %130, 7914194659941938988
  %132 = extractelement <4 x i64> %128, i64 1
  %133 = xor i64 %132, -6611157965513653271
  %134 = zext i64 %131 to i128
  %135 = zext i64 %133 to i128
  %136 = mul nuw i128 %135, %134
  %137 = lshr i128 %136, 64
  %138 = xor i128 %137, %136
  %139 = trunc i128 %138 to i64
  %140 = add i64 %129, %139
  %141 = extractelement <4 x i64> %128, i64 2
  %142 = xor i64 %141, -1839215637059881052
  %143 = extractelement <4 x i64> %128, i64 3
  %144 = xor i64 %143, -3433288310154277810
  %145 = zext i64 %142 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %140, %150
  %152 = extractelement <4 x i64> %127, i64 0
  %153 = xor i64 %152, 5046485836271438973
  %154 = extractelement <4 x i64> %127, i64 1
  %155 = xor i64 %154, -8055285457383852172
  %156 = zext i64 %153 to i128
  %157 = zext i64 %155 to i128
  %158 = mul nuw i128 %157, %156
  %159 = lshr i128 %158, 64
  %160 = xor i128 %159, %158
  %161 = trunc i128 %160 to i64
  %162 = add i64 %151, %161
  %163 = extractelement <4 x i64> %127, i64 2
  %164 = xor i64 %163, 5920048007935066598
  %165 = extractelement <4 x i64> %127, i64 3
  %166 = xor i64 %165, 7336514198459093435
  %167 = zext i64 %164 to i128
  %168 = zext i64 %166 to i128
  %169 = mul nuw i128 %168, %167
  %170 = lshr i128 %169, 64
  %171 = xor i128 %170, %169
  %172 = trunc i128 %171 to i64
  %173 = add i64 %162, %172
  %174 = lshr i64 %173, 37
  %175 = xor i64 %174, %173
  %176 = mul i64 %175, 1609587929392839161
  %177 = lshr i64 %176, 32
  %178 = xor i64 %177, %176
  ret i64 %178
}

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 243191}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_accumulate_512: argument 0"}
!10 = distinct !{!10, !"XXH3_accumulate_512"}
!11 = distinct !{!11, !7}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_accumulate_512: argument 0"}
!14 = distinct !{!14, !"XXH3_accumulate_512"}
