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
define dso_local i64 @target_xxh3_len20(ptr noundef readonly %0) local_unnamed_addr #4 {
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
define dso_local i64 @target_xxh3_len100(ptr noundef readonly %0) local_unnamed_addr #4 {
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

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_xxh3_len200(ptr noundef readonly %0) local_unnamed_addr #5 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %23, %2 ]
  %4 = phi i64 [ -7253308125045442184, %1 ], [ %22, %2 ]
  %5 = shl nuw nsw i64 %3, 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %5
  %8 = load i64, ptr %6, align 1
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = load i64, ptr %9, align 1
  %11 = load i64, ptr %7, align 16
  %12 = xor i64 %11, %8
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = xor i64 %14, %10
  %16 = zext i64 %12 to i128
  %17 = zext i64 %15 to i128
  %18 = mul nuw i128 %17, %16
  %19 = lshr i128 %18, 64
  %20 = xor i128 %19, %18
  %21 = trunc i128 %20 to i64
  %22 = add i64 %4, %21
  %23 = add nuw nsw i64 %3, 1
  %24 = icmp eq i64 %23, 8
  br i1 %24, label %25, label %2

25:                                               ; preds = %2
  %26 = lshr i64 %22, 37
  %27 = xor i64 %26, %22
  %28 = mul i64 %27, 1609587929392839161
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %28
  br label %31

31:                                               ; preds = %31, %25
  %32 = phi i64 [ 8, %25 ], [ %53, %31 ]
  %33 = phi i64 [ %30, %25 ], [ %52, %31 ]
  %34 = shl nsw i64 %32, 4
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 %34
  %36 = getelementptr i8, ptr @kSecret, i64 %34
  %37 = getelementptr i8, ptr %36, i64 -125
  %38 = load i64, ptr %35, align 1
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %40 = load i64, ptr %39, align 1
  %41 = load i64, ptr %37, align 1
  %42 = xor i64 %41, %38
  %43 = getelementptr i8, ptr %36, i64 -117
  %44 = load i64, ptr %43, align 1
  %45 = xor i64 %44, %40
  %46 = zext i64 %42 to i128
  %47 = zext i64 %45 to i128
  %48 = mul nuw i128 %47, %46
  %49 = lshr i128 %48, 64
  %50 = xor i128 %49, %48
  %51 = trunc i128 %50 to i64
  %52 = add i64 %33, %51
  %53 = add nuw nsw i64 %32, 1
  %54 = icmp eq i64 %53, 12
  br i1 %54, label %55, label %31

55:                                               ; preds = %31
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %57 = load i64, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %59 = load i64, ptr %58, align 1
  %60 = xor i64 %57, 8320639771003045937
  %61 = xor i64 %59, -1453760514566526364
  %62 = zext i64 %60 to i128
  %63 = zext i64 %61 to i128
  %64 = mul nuw i128 %63, %62
  %65 = lshr i128 %64, 64
  %66 = xor i128 %65, %64
  %67 = trunc i128 %66 to i64
  %68 = add i64 %52, %67
  %69 = lshr i64 %68, 37
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, 1609587929392839161
  %72 = lshr i64 %71, 32
  %73 = xor i64 %72, %71
  ret i64 %73
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_xxh3_len300(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = alloca [4 x i64], align 32
  %3 = alloca [4 x i64], align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %2, ptr noundef nonnull align 32 dereferenceable(32) @__const.XXH3_hashLong_internal.acc, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %3, ptr noundef nonnull align 32 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @__const.XXH3_hashLong_internal.acc, i64 32), i64 32, i1 false)
  br label %4

4:                                                ; preds = %28, %1
  %5 = phi i64 [ 0, %1 ], [ %29, %28 ]
  %6 = shl nuw nsw i64 %5, 6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = shl nuw nsw i64 %5, 3
  %9 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %8
  br label %10

10:                                               ; preds = %10, %4
  %11 = phi i1 [ true, %4 ], [ false, %10 ]
  %12 = phi ptr [ %2, %4 ], [ %3, %10 ]
  %13 = phi i64 [ 0, %4 ], [ 1, %10 ]
  %14 = getelementptr inbounds nuw <4 x i64>, ptr %7, i64 %13
  %15 = load <4 x i64>, ptr %14, align 1
  %16 = getelementptr inbounds nuw <4 x i64>, ptr %9, i64 %13
  %17 = load <4 x i64>, ptr %16, align 8
  %18 = xor <4 x i64> %17, %15
  %19 = bitcast <4 x i64> %18 to <8 x i32>
  %20 = shufflevector <8 x i32> %19, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %21 = bitcast <8 x i32> %20 to <4 x i64>
  %22 = and <4 x i64> %18, splat (i64 4294967295)
  %23 = and <4 x i64> %21, splat (i64 4294967295)
  %24 = mul nuw <4 x i64> %23, %22
  %25 = load <4 x i64>, ptr %12, align 32
  %26 = add <4 x i64> %25, %15
  %27 = add <4 x i64> %26, %24
  store <4 x i64> %27, ptr %12, align 32
  br i1 %11, label %10, label %28

28:                                               ; preds = %10
  %29 = add nuw nsw i64 %5, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %4

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 236
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i1 [ true, %31 ], [ false, %33 ]
  %35 = phi ptr [ %2, %31 ], [ %3, %33 ]
  %36 = phi i64 [ 0, %31 ], [ 1, %33 ]
  %37 = getelementptr inbounds nuw <4 x i64>, ptr %32, i64 %36
  %38 = load <4 x i64>, ptr %37, align 1
  %39 = getelementptr inbounds nuw <4 x i64>, ptr getelementptr inbounds nuw (i8, ptr @kSecret, i64 121), i64 %36
  %40 = load <4 x i64>, ptr %39, align 1
  %41 = xor <4 x i64> %40, %38
  %42 = bitcast <4 x i64> %41 to <8 x i32>
  %43 = shufflevector <8 x i32> %42, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %44 = bitcast <8 x i32> %43 to <4 x i64>
  %45 = and <4 x i64> %41, splat (i64 4294967295)
  %46 = and <4 x i64> %44, splat (i64 4294967295)
  %47 = mul nuw <4 x i64> %46, %45
  %48 = load <4 x i64>, ptr %35, align 32
  %49 = add <4 x i64> %48, %38
  %50 = add <4 x i64> %49, %47
  store <4 x i64> %50, ptr %35, align 32
  br i1 %34, label %33, label %51

51:                                               ; preds = %33
  %52 = load i64, ptr %2, align 32
  %53 = xor i64 %52, 7914194659941938988
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %55 = load i64, ptr %54, align 8
  %56 = xor i64 %55, -6611157965513653271
  %57 = zext i64 %53 to i128
  %58 = zext i64 %56 to i128
  %59 = mul nuw i128 %58, %57
  %60 = lshr i128 %59, 64
  %61 = xor i128 %60, %59
  %62 = trunc i128 %61 to i64
  %63 = add i64 %62, 7566781886141388340
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %65 = load i64, ptr %64, align 16
  %66 = xor i64 %65, -1839215637059881052
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %68 = load i64, ptr %67, align 8
  %69 = xor i64 %68, -3433288310154277810
  %70 = zext i64 %66 to i128
  %71 = zext i64 %69 to i128
  %72 = mul nuw i128 %71, %70
  %73 = lshr i128 %72, 64
  %74 = xor i128 %73, %72
  %75 = trunc i128 %74 to i64
  %76 = add i64 %63, %75
  %77 = load i64, ptr %3, align 32
  %78 = xor i64 %77, 5046485836271438973
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %80 = load i64, ptr %79, align 8
  %81 = xor i64 %80, -8055285457383852172
  %82 = zext i64 %78 to i128
  %83 = zext i64 %81 to i128
  %84 = mul nuw i128 %83, %82
  %85 = lshr i128 %84, 64
  %86 = xor i128 %85, %84
  %87 = trunc i128 %86 to i64
  %88 = add i64 %76, %87
  %89 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %90 = load i64, ptr %89, align 16
  %91 = xor i64 %90, 5920048007935066598
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %93 = load i64, ptr %92, align 8
  %94 = xor i64 %93, 7336514198459093435
  %95 = zext i64 %91 to i128
  %96 = zext i64 %94 to i128
  %97 = mul nuw i128 %96, %95
  %98 = lshr i128 %97, 64
  %99 = xor i128 %98, %97
  %100 = trunc i128 %99 to i64
  %101 = add i64 %88, %100
  %102 = lshr i64 %101, 37
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, 1609587929392839161
  %105 = lshr i64 %104, 32
  %106 = xor i64 %105, %104
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  ret i64 %106
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nofree nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nofree norecurse nosync nounwind optsize memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 244297}
!6 = !{!7, !9}
!7 = distinct !{!7, !8, !"XXH3_mix16B: argument 0"}
!8 = distinct !{!8, !"XXH3_mix16B"}
!9 = distinct !{!9, !10, !"XXH3_len_17to128_64b: argument 0"}
!10 = distinct !{!10, !"XXH3_len_17to128_64b"}
!11 = !{!12}
!12 = distinct !{!12, !8, !"XXH3_mix16B: argument 1"}
!13 = !{!14, !9}
!14 = distinct !{!14, !15, !"XXH3_mix16B: argument 0"}
!15 = distinct !{!15, !"XXH3_mix16B"}
!16 = !{!17}
!17 = distinct !{!17, !15, !"XXH3_mix16B: argument 1"}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"XXH3_mix16B: argument 0"}
!20 = distinct !{!20, !"XXH3_mix16B"}
!21 = distinct !{!21, !22, !"XXH3_len_17to128_64b: argument 0"}
!22 = distinct !{!22, !"XXH3_len_17to128_64b"}
!23 = !{!24}
!24 = distinct !{!24, !20, !"XXH3_mix16B: argument 1"}
!25 = !{!26, !21}
!26 = distinct !{!26, !27, !"XXH3_mix16B: argument 0"}
!27 = distinct !{!27, !"XXH3_mix16B"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"XXH3_mix16B: argument 1"}
!30 = !{!31, !21}
!31 = distinct !{!31, !32, !"XXH3_mix16B: argument 0"}
!32 = distinct !{!32, !"XXH3_mix16B"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"XXH3_mix16B: argument 1"}
!35 = !{!36, !21}
!36 = distinct !{!36, !37, !"XXH3_mix16B: argument 0"}
!37 = distinct !{!37, !"XXH3_mix16B"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"XXH3_mix16B: argument 1"}
!40 = !{!41, !21}
!41 = distinct !{!41, !42, !"XXH3_mix16B: argument 0"}
!42 = distinct !{!42, !"XXH3_mix16B"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"XXH3_mix16B: argument 1"}
!45 = !{!46, !21}
!46 = distinct !{!46, !47, !"XXH3_mix16B: argument 0"}
!47 = distinct !{!47, !"XXH3_mix16B"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"XXH3_mix16B: argument 1"}
!50 = !{!51, !21}
!51 = distinct !{!51, !52, !"XXH3_mix16B: argument 0"}
!52 = distinct !{!52, !"XXH3_mix16B"}
!53 = !{!54}
!54 = distinct !{!54, !52, !"XXH3_mix16B: argument 1"}
!55 = !{!56, !21}
!56 = distinct !{!56, !57, !"XXH3_mix16B: argument 0"}
!57 = distinct !{!57, !"XXH3_mix16B"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"XXH3_mix16B: argument 1"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"XXH3_len_129to240_64b: argument 0"}
!62 = distinct !{!62, !"XXH3_len_129to240_64b"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"XXH3_mix16B: argument 0"}
!65 = distinct !{!65, !"XXH3_mix16B"}
!66 = !{!67}
!67 = distinct !{!67, !65, !"XXH3_mix16B: argument 1"}
!68 = !{!64, !61}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"XXH3_mix16B: argument 0"}
!73 = distinct !{!73, !"XXH3_mix16B"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"XXH3_mix16B: argument 1"}
!76 = !{!72, !61}
!77 = distinct !{!77, !70}
!78 = !{!79, !61}
!79 = distinct !{!79, !80, !"XXH3_mix16B: argument 0"}
!80 = distinct !{!80, !"XXH3_mix16B"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"XXH3_mix16B: argument 1"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"XXH3_hashLong_64b_defaultSecret: argument 0"}
!85 = distinct !{!85, !"XXH3_hashLong_64b_defaultSecret"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"XXH3_hashLong_internal: argument 0"}
!88 = distinct !{!88, !"XXH3_hashLong_internal"}
!89 = !{!87, !84}
!90 = !{!91}
!91 = distinct !{!91, !92, !"XXH3_hashLong_internal_loop: argument 0"}
!92 = distinct !{!92, !"XXH3_hashLong_internal_loop"}
!93 = !{!94}
!94 = distinct !{!94, !92, !"XXH3_hashLong_internal_loop: argument 1"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"XXH3_accumulate: argument 0"}
!97 = distinct !{!97, !"XXH3_accumulate"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"XXH3_accumulate: argument 1"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"XXH3_accumulate_512: argument 0"}
!102 = distinct !{!102, !"XXH3_accumulate_512"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"XXH3_accumulate_512: argument 1"}
!105 = !{!106}
!106 = distinct !{!106, !102, !"XXH3_accumulate_512: argument 2"}
!107 = !{!104, !99, !94, !87, !84}
!108 = !{!101, !106, !96, !91}
!109 = !{!101, !104, !96, !99, !91, !94, !87, !84}
!110 = !{!101, !96, !91}
!111 = !{!104, !106, !99, !94, !87, !84}
!112 = distinct !{!112, !70}
!113 = distinct !{!113, !70}
!114 = !{!115}
!115 = distinct !{!115, !116, !"XXH3_accumulate_512: argument 0"}
!116 = distinct !{!116, !"XXH3_accumulate_512"}
!117 = !{!118}
!118 = distinct !{!118, !116, !"XXH3_accumulate_512: argument 1"}
!119 = !{!120}
!120 = distinct !{!120, !116, !"XXH3_accumulate_512: argument 2"}
!121 = !{!118, !94, !87, !84}
!122 = !{!115, !120, !91}
!123 = !{!115, !118, !91, !94, !87, !84}
!124 = !{!115, !91}
!125 = !{!118, !120, !94, !87, !84}
!126 = !{!127, !129}
!127 = distinct !{!127, !128, !"XXH3_mix2Accs: argument 0"}
!128 = distinct !{!128, !"XXH3_mix2Accs"}
!129 = distinct !{!129, !130, !"XXH3_mergeAccs: argument 0"}
!130 = distinct !{!130, !"XXH3_mergeAccs"}
!131 = !{!132, !87, !84}
!132 = distinct !{!132, !128, !"XXH3_mix2Accs: argument 1"}
!133 = !{!134, !129}
!134 = distinct !{!134, !135, !"XXH3_mix2Accs: argument 0"}
!135 = distinct !{!135, !"XXH3_mix2Accs"}
!136 = !{!137, !87, !84}
!137 = distinct !{!137, !135, !"XXH3_mix2Accs: argument 1"}
!138 = !{!139, !129}
!139 = distinct !{!139, !140, !"XXH3_mix2Accs: argument 0"}
!140 = distinct !{!140, !"XXH3_mix2Accs"}
!141 = !{!142, !87, !84}
!142 = distinct !{!142, !140, !"XXH3_mix2Accs: argument 1"}
!143 = !{!144, !129}
!144 = distinct !{!144, !145, !"XXH3_mix2Accs: argument 0"}
!145 = distinct !{!145, !"XXH3_mix2Accs"}
!146 = !{!147, !87, !84}
!147 = distinct !{!147, !145, !"XXH3_mix2Accs: argument 1"}
!148 = !{!149, !151}
!149 = distinct !{!149, !150, !"XXH3_mix16B: argument 0"}
!150 = distinct !{!150, !"XXH3_mix16B"}
!151 = distinct !{!151, !152, !"XXH3_len_17to128_128b: argument 0"}
!152 = distinct !{!152, !"XXH3_len_17to128_128b"}
!153 = !{!154}
!154 = distinct !{!154, !150, !"XXH3_mix16B: argument 1"}
!155 = !{!151}
