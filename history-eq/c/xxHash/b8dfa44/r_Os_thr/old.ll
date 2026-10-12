; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/b8dfa44/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/b8dfa44/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 32

; Function Attrs: nofree nosync nounwind optsize memory(none) uwtable
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len40(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len20(ptr noundef readonly %0) local_unnamed_addr #3 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len100(ptr noundef readonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len200(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i64 noundef 200) #11
  ret i64 %2
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_xxh3_len300(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef readonly %0, i64 noundef 300) #11
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh128_len20_lo(ptr noundef readonly %0) local_unnamed_addr #3 {
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
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias noundef readonly %0, i64 noundef range(i64 129, 241) %1) unnamed_addr #7 {
  %3 = mul i64 %1, -7046029288634856825
  %4 = trunc nuw nsw i64 %1 to i32
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %26, %5 ]
  %7 = phi i64 [ %3, %2 ], [ %25, %5 ]
  %8 = shl nuw nsw i64 %6, 4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %8
  %11 = load i64, ptr %9, align 1
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %13 = load i64, ptr %12, align 1
  %14 = load i64, ptr %10, align 16
  %15 = xor i64 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %17 = load i64, ptr %16, align 8
  %18 = xor i64 %17, %13
  %19 = zext i64 %15 to i128
  %20 = zext i64 %18 to i128
  %21 = mul nuw i128 %20, %19
  %22 = lshr i128 %21, 64
  %23 = xor i128 %22, %21
  %24 = trunc i128 %23 to i64
  %25 = add i64 %7, %24
  %26 = add nuw nsw i64 %6, 1
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %28, label %5

28:                                               ; preds = %5
  %29 = lshr i32 %4, 4
  %30 = lshr i64 %25, 37
  %31 = xor i64 %30, %25
  %32 = mul i64 %31, 1609587929392839161
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  %35 = icmp eq i32 %29, 8
  br i1 %35, label %62, label %36

36:                                               ; preds = %28
  %37 = zext nneg i32 %29 to i64
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ 8, %36 ], [ %60, %38 ]
  %40 = phi i64 [ %34, %36 ], [ %59, %38 ]
  %41 = shl nsw i64 %39, 4
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 %41
  %43 = getelementptr i8, ptr @kSecret, i64 %41
  %44 = getelementptr i8, ptr %43, i64 -125
  %45 = load i64, ptr %42, align 1
  %46 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %47 = load i64, ptr %46, align 1
  %48 = load i64, ptr %44, align 1
  %49 = xor i64 %48, %45
  %50 = getelementptr i8, ptr %43, i64 -117
  %51 = load i64, ptr %50, align 1
  %52 = xor i64 %51, %47
  %53 = zext i64 %49 to i128
  %54 = zext i64 %52 to i128
  %55 = mul nuw i128 %54, %53
  %56 = lshr i128 %55, 64
  %57 = xor i128 %56, %55
  %58 = trunc i128 %57 to i64
  %59 = add i64 %40, %58
  %60 = add nuw nsw i64 %39, 1
  %61 = icmp eq i64 %60, %37
  br i1 %61, label %62, label %38

62:                                               ; preds = %38, %28
  %63 = phi i64 [ %34, %28 ], [ %59, %38 ]
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %65 = getelementptr inbounds i8, ptr %64, i64 -16
  %66 = load i64, ptr %65, align 1
  %67 = getelementptr inbounds i8, ptr %64, i64 -8
  %68 = load i64, ptr %67, align 1
  %69 = xor i64 %66, 8320639771003045937
  %70 = xor i64 %68, -1453760514566526364
  %71 = zext i64 %69 to i128
  %72 = zext i64 %70 to i128
  %73 = mul nuw i128 %72, %71
  %74 = lshr i128 %73, 64
  %75 = xor i128 %74, %73
  %76 = trunc i128 %75 to i64
  %77 = add i64 %63, %76
  %78 = lshr i64 %77, 37
  %79 = xor i64 %78, %77
  %80 = mul i64 %79, 1609587929392839161
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  ret i64 %82
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noalias noundef readonly %0, i64 noundef range(i64 241, 301) %1) unnamed_addr #8 {
  %3 = alloca [4 x i64], align 32
  %4 = alloca [4 x i64], align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %3, ptr noundef nonnull align 32 dereferenceable(32) @__const.XXH3_hashLong_internal.acc, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %4, ptr noundef nonnull align 32 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @__const.XXH3_hashLong_internal.acc, i64 32), i64 32, i1 false)
  %5 = lshr i64 %1, 6
  br label %6

6:                                                ; preds = %2, %30
  %7 = phi i64 [ %31, %30 ], [ 0, %2 ]
  %8 = shl nuw nsw i64 %7, 6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = shl nuw nsw i64 %7, 3
  %11 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %10
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i1 [ true, %6 ], [ false, %12 ]
  %14 = phi ptr [ %3, %6 ], [ %4, %12 ]
  %15 = phi i64 [ 0, %6 ], [ 1, %12 ]
  %16 = getelementptr inbounds nuw <4 x i64>, ptr %9, i64 %15
  %17 = load <4 x i64>, ptr %16, align 1
  %18 = getelementptr inbounds nuw <4 x i64>, ptr %11, i64 %15
  %19 = load <4 x i64>, ptr %18, align 8
  %20 = xor <4 x i64> %19, %17
  %21 = bitcast <4 x i64> %20 to <8 x i32>
  %22 = shufflevector <8 x i32> %21, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %23 = bitcast <8 x i32> %22 to <4 x i64>
  %24 = and <4 x i64> %20, splat (i64 4294967295)
  %25 = and <4 x i64> %23, splat (i64 4294967295)
  %26 = mul nuw <4 x i64> %25, %24
  %27 = load <4 x i64>, ptr %14, align 32
  %28 = add <4 x i64> %27, %17
  %29 = add <4 x i64> %28, %26
  store <4 x i64> %29, ptr %14, align 32
  br i1 %13, label %12, label %30

30:                                               ; preds = %12
  %31 = add nuw nsw i64 %7, 1
  %32 = icmp eq i64 %31, %5
  br i1 %32, label %33, label %6

33:                                               ; preds = %30
  %34 = and i64 %1, 63
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %38 = getelementptr inbounds i8, ptr %37, i64 -64
  br label %39

39:                                               ; preds = %36, %39
  %40 = phi i1 [ true, %36 ], [ false, %39 ]
  %41 = phi ptr [ %3, %36 ], [ %4, %39 ]
  %42 = phi i64 [ 0, %36 ], [ 1, %39 ]
  %43 = getelementptr inbounds nuw <4 x i64>, ptr %38, i64 %42
  %44 = load <4 x i64>, ptr %43, align 1
  %45 = getelementptr inbounds nuw <4 x i64>, ptr getelementptr inbounds nuw (i8, ptr @kSecret, i64 121), i64 %42
  %46 = load <4 x i64>, ptr %45, align 1
  %47 = xor <4 x i64> %46, %44
  %48 = bitcast <4 x i64> %47 to <8 x i32>
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %50 = bitcast <8 x i32> %49 to <4 x i64>
  %51 = and <4 x i64> %47, splat (i64 4294967295)
  %52 = and <4 x i64> %50, splat (i64 4294967295)
  %53 = mul nuw <4 x i64> %52, %51
  %54 = load <4 x i64>, ptr %41, align 32
  %55 = add <4 x i64> %54, %44
  %56 = add <4 x i64> %55, %53
  store <4 x i64> %56, ptr %41, align 32
  br i1 %40, label %39, label %57

57:                                               ; preds = %39, %33
  %58 = mul i64 %1, -7046029288634856825
  %59 = load i64, ptr %3, align 32
  %60 = xor i64 %59, 7914194659941938988
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %62 = load i64, ptr %61, align 8
  %63 = xor i64 %62, -6611157965513653271
  %64 = zext i64 %60 to i128
  %65 = zext i64 %63 to i128
  %66 = mul nuw i128 %65, %64
  %67 = lshr i128 %66, 64
  %68 = xor i128 %67, %66
  %69 = trunc i128 %68 to i64
  %70 = add i64 %58, %69
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %72 = load i64, ptr %71, align 16
  %73 = xor i64 %72, -1839215637059881052
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %75 = load i64, ptr %74, align 8
  %76 = xor i64 %75, -3433288310154277810
  %77 = zext i64 %73 to i128
  %78 = zext i64 %76 to i128
  %79 = mul nuw i128 %78, %77
  %80 = lshr i128 %79, 64
  %81 = xor i128 %80, %79
  %82 = trunc i128 %81 to i64
  %83 = add i64 %70, %82
  %84 = load i64, ptr %4, align 32
  %85 = xor i64 %84, 5046485836271438973
  %86 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %87 = load i64, ptr %86, align 8
  %88 = xor i64 %87, -8055285457383852172
  %89 = zext i64 %85 to i128
  %90 = zext i64 %88 to i128
  %91 = mul nuw i128 %90, %89
  %92 = lshr i128 %91, 64
  %93 = xor i128 %92, %91
  %94 = trunc i128 %93 to i64
  %95 = add i64 %83, %94
  %96 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %97 = load i64, ptr %96, align 16
  %98 = xor i64 %97, 5920048007935066598
  %99 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %100 = load i64, ptr %99, align 8
  %101 = xor i64 %100, 7336514198459093435
  %102 = zext i64 %98 to i128
  %103 = zext i64 %101 to i128
  %104 = mul nuw i128 %103, %102
  %105 = lshr i128 %104, 64
  %106 = xor i128 %105, %104
  %107 = trunc i128 %106 to i64
  %108 = add i64 %95, %107
  %109 = lshr i64 %108, 37
  %110 = xor i64 %109, %108
  %111 = mul i64 %110, 1609587929392839161
  %112 = lshr i64 %111, 32
  %113 = xor i64 %112, %111
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  ret i64 %113
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { nofree nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nofree norecurse nosync nounwind optsize memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind memory(none) }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 243189}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_mix16B: argument 1"}
!8 = distinct !{!8, !"XXH3_mix16B"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"XXH3_mix16B: argument 1"}
!11 = distinct !{!11, !"XXH3_mix16B"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_mix16B: argument 1"}
!14 = distinct !{!14, !"XXH3_mix16B"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH3_mix16B: argument 1"}
!17 = distinct !{!17, !"XXH3_mix16B"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_mix16B: argument 1"}
!20 = distinct !{!20, !"XXH3_mix16B"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_mix16B: argument 1"}
!23 = distinct !{!23, !"XXH3_mix16B"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_mix16B: argument 1"}
!26 = distinct !{!26, !"XXH3_mix16B"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"XXH3_mix16B: argument 1"}
!29 = distinct !{!29, !"XXH3_mix16B"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"XXH3_mix16B: argument 1"}
!32 = distinct !{!32, !"XXH3_mix16B"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH3_mix16B: argument 1"}
!35 = distinct !{!35, !"XXH3_mix16B"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"XXH3_mix16B: argument 1"}
!38 = distinct !{!38, !"XXH3_mix16B"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"XXH3_mix16B: argument 1"}
!41 = distinct !{!41, !"XXH3_mix16B"}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"XXH3_mix16B: argument 1"}
!46 = distinct !{!46, !"XXH3_mix16B"}
!47 = distinct !{!47, !43}
!48 = !{!49}
!49 = distinct !{!49, !50, !"XXH3_mix16B: argument 1"}
!50 = distinct !{!50, !"XXH3_mix16B"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"XXH3_hashLong_internal: argument 0"}
!53 = distinct !{!53, !"XXH3_hashLong_internal"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"XXH3_accumulate_512: argument 0"}
!56 = distinct !{!56, !"XXH3_accumulate_512"}
!57 = !{!58, !59}
!58 = distinct !{!58, !56, !"XXH3_accumulate_512: argument 1"}
!59 = distinct !{!59, !56, !"XXH3_accumulate_512: argument 2"}
!60 = distinct !{!60, !43}
!61 = distinct !{!61, !43}
!62 = !{!63}
!63 = distinct !{!63, !64, !"XXH3_accumulate_512: argument 0"}
!64 = distinct !{!64, !"XXH3_accumulate_512"}
!65 = !{!66, !67}
!66 = distinct !{!66, !64, !"XXH3_accumulate_512: argument 1"}
!67 = distinct !{!67, !64, !"XXH3_accumulate_512: argument 2"}
!68 = !{!69, !71}
!69 = distinct !{!69, !70, !"XXH3_mix2Accs: argument 0"}
!70 = distinct !{!70, !"XXH3_mix2Accs"}
!71 = distinct !{!71, !72, !"XXH3_mergeAccs: argument 0"}
!72 = distinct !{!72, !"XXH3_mergeAccs"}
!73 = !{!74}
!74 = distinct !{!74, !70, !"XXH3_mix2Accs: argument 1"}
!75 = !{!76, !71}
!76 = distinct !{!76, !77, !"XXH3_mix2Accs: argument 0"}
!77 = distinct !{!77, !"XXH3_mix2Accs"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"XXH3_mix2Accs: argument 1"}
!80 = !{!81, !71}
!81 = distinct !{!81, !82, !"XXH3_mix2Accs: argument 0"}
!82 = distinct !{!82, !"XXH3_mix2Accs"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"XXH3_mix2Accs: argument 1"}
!85 = !{!86, !71}
!86 = distinct !{!86, !87, !"XXH3_mix2Accs: argument 0"}
!87 = distinct !{!87, !"XXH3_mix2Accs"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"XXH3_mix2Accs: argument 1"}
