; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/665424e/wrap_newapi.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/665424e/wrap_newapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind uwtable
define dso_local i64 @target_x_len256(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [192 x i8], align 32
  %4 = alloca [192 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #7
  call void @llvm.prefetch.p0(ptr nonnull %3, i32 0, i32 3, i32 1)
  %5 = sub i64 0, %1
  %6 = insertelement <4 x i64> poison, i64 %1, i64 0
  %7 = insertelement <4 x i64> %6, i64 %5, i64 1
  %8 = insertelement <4 x i64> %7, i64 %1, i64 2
  %9 = insertelement <4 x i64> %8, i64 %5, i64 3
  %10 = freeze ptr %3
  %11 = add <4 x i64> %9, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %11, ptr %10, align 32
  %12 = add <4 x i64> %9, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store <4 x i64> %12, ptr %13, align 32
  %14 = add <4 x i64> %9, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 64
  store <4 x i64> %14, ptr %15, align 32
  %16 = add <4 x i64> %9, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 96
  store <4 x i64> %16, ptr %17, align 32
  %18 = add <4 x i64> %9, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 128
  store <4 x i64> %18, ptr %19, align 32
  %20 = add <4 x i64> %9, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 160
  store <4 x i64> %20, ptr %21, align 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(192) %4, ptr noundef nonnull align 32 dereferenceable(192) %3, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #7
  %22 = call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef readonly %0, i64 noundef range(i64 64, 257) 256, ptr noundef nonnull readonly %4, i64 noundef 192) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #7
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_x_len200(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [192 x i8], align 32
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #7
  call void @llvm.prefetch.p0(ptr nonnull %3, i32 0, i32 3, i32 1)
  %4 = sub i64 0, %1
  %5 = insertelement <4 x i64> poison, i64 %1, i64 0
  %6 = insertelement <4 x i64> %5, i64 %4, i64 1
  %7 = insertelement <4 x i64> %6, i64 %1, i64 2
  %8 = insertelement <4 x i64> %7, i64 %4, i64 3
  %9 = freeze ptr %3
  %10 = add <4 x i64> %8, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %10, ptr %9, align 32
  %11 = add <4 x i64> %8, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x i64> %11, ptr %12, align 32
  %13 = add <4 x i64> %8, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x i64> %13, ptr %14, align 32
  %15 = add <4 x i64> %8, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x i64> %15, ptr %16, align 32
  %17 = add <4 x i64> %8, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %18 = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <4 x i64> %17, ptr %18, align 32
  %19 = add <4 x i64> %8, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <4 x i64> %19, ptr %20, align 32
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #7
  %21 = call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i64 noundef range(i64 64, 257) 200, ptr noundef nonnull @XXH3_kSecret, i64 noundef %1)
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_x_len64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [192 x i8], align 32
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #7
  call void @llvm.prefetch.p0(ptr nonnull %3, i32 0, i32 3, i32 1)
  %4 = sub i64 0, %1
  %5 = insertelement <4 x i64> poison, i64 %1, i64 0
  %6 = insertelement <4 x i64> %5, i64 %4, i64 1
  %7 = insertelement <4 x i64> %6, i64 %1, i64 2
  %8 = insertelement <4 x i64> %7, i64 %4, i64 3
  %9 = freeze ptr %3
  %10 = add <4 x i64> %8, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %10, ptr %9, align 32
  %11 = add <4 x i64> %8, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x i64> %11, ptr %12, align 32
  %13 = add <4 x i64> %8, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x i64> %13, ptr %14, align 32
  %15 = add <4 x i64> %8, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x i64> %15, ptr %16, align 32
  %17 = add <4 x i64> %8, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %18 = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <4 x i64> %17, ptr %18, align 32
  %19 = add <4 x i64> %8, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <4 x i64> %19, ptr %20, align 32
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #7
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = load i64, ptr %21, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load i64, ptr %23, align 1
  %25 = add i64 %1, 8711581037947681227
  %26 = xor i64 %22, %25
  %27 = sub i64 2410270004345854594, %1
  %28 = xor i64 %24, %27
  %29 = zext i64 %26 to i128
  %30 = zext i64 %28 to i128
  %31 = mul nuw i128 %30, %29
  %32 = lshr i128 %31, 64
  %33 = xor i128 %32, %31
  %34 = trunc i128 %33 to i64
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %36 = load i64, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %38 = load i64, ptr %37, align 1
  %39 = add i64 %1, -8204357891075471176
  %40 = xor i64 %36, %39
  %41 = sub i64 5487137525590930912, %1
  %42 = xor i64 %38, %41
  %43 = zext i64 %40 to i128
  %44 = zext i64 %42 to i128
  %45 = mul nuw i128 %44, %43
  %46 = lshr i128 %45, 64
  %47 = xor i128 %46, %45
  %48 = trunc i128 %47 to i64
  %49 = add i64 %34, -8224016703601598016
  %50 = add i64 %49, %48
  %51 = load i64, ptr %0, align 1
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %53 = load i64, ptr %52, align 1
  %54 = add i64 %1, -4734510112055689544
  %55 = xor i64 %51, %54
  %56 = sub i64 2066345149520216444, %1
  %57 = xor i64 %53, %56
  %58 = zext i64 %55 to i128
  %59 = zext i64 %57 to i128
  %60 = mul nuw i128 %59, %58
  %61 = lshr i128 %60, 64
  %62 = xor i128 %61, %60
  %63 = trunc i128 %62 to i64
  %64 = add i64 %50, %63
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %66 = load i64, ptr %65, align 1
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %68 = load i64, ptr %67, align 1
  %69 = add i64 %1, -2623469361688619810
  %70 = xor i64 %66, %69
  %71 = sub i64 2262974939099578482, %1
  %72 = xor i64 %68, %71
  %73 = zext i64 %70 to i128
  %74 = zext i64 %72 to i128
  %75 = mul nuw i128 %74, %73
  %76 = lshr i128 %75, 64
  %77 = xor i128 %76, %75
  %78 = trunc i128 %77 to i64
  %79 = add i64 %64, %78
  %80 = lshr i64 %79, 37
  %81 = xor i64 %80, %79
  %82 = mul i64 %81, 1609587791953885689
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  ret i64 %84
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noalias noundef readonly %0, i64 noundef %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #4 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %7, %8
  br i1 %11, label %88, label %12

12:                                               ; preds = %4
  %13 = icmp ult i64 %5, 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  %16 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %17 = load <4 x i64>, ptr %15, align 1
  %18 = getelementptr inbounds i8, ptr %14, i64 -32
  %19 = load <4 x i64>, ptr %18, align 1
  br label %20

20:                                               ; preds = %12, %63
  %21 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %12 ], [ %85, %63 ]
  %22 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %12 ], [ %75, %63 ]
  %23 = phi i64 [ 0, %12 ], [ %86, %63 ]
  %24 = mul i64 %23, %7
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %24
  br i1 %13, label %63, label %26

26:                                               ; preds = %20, %26
  %27 = phi <4 x i64> [ %60, %26 ], [ %21, %20 ]
  %28 = phi <4 x i64> [ %46, %26 ], [ %22, %20 ]
  %29 = phi i64 [ %61, %26 ], [ 0, %20 ]
  %30 = shl i64 %29, 6
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %32, i32 0, i32 3, i32 1)
  %33 = shl nuw i64 %29, 3
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load <4 x i64>, ptr %31, align 1
  %36 = load <4 x i64>, ptr %34, align 1
  %37 = xor <4 x i64> %36, %35
  %38 = bitcast <4 x i64> %37 to <8 x i32>
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  %41 = and <4 x i64> %37, splat (i64 4294967295)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %45 = add <4 x i64> %28, %44
  %46 = add <4 x i64> %45, %43
  %47 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %48 = load <4 x i64>, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %34, i64 32
  %50 = load <4 x i64>, ptr %49, align 1
  %51 = xor <4 x i64> %50, %48
  %52 = bitcast <4 x i64> %51 to <8 x i32>
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %54 = bitcast <8 x i32> %53 to <4 x i64>
  %55 = and <4 x i64> %51, splat (i64 4294967295)
  %56 = and <4 x i64> %54, splat (i64 4294967295)
  %57 = mul nuw <4 x i64> %56, %55
  %58 = shufflevector <4 x i64> %48, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %59 = add <4 x i64> %27, %58
  %60 = add <4 x i64> %59, %57
  %61 = add nuw nsw i64 %29, 1
  %62 = icmp eq i64 %61, %16
  br i1 %62, label %63, label %26

63:                                               ; preds = %26, %20
  %64 = phi <4 x i64> [ %21, %20 ], [ %60, %26 ]
  %65 = phi <4 x i64> [ %22, %20 ], [ %46, %26 ]
  %66 = lshr <4 x i64> %65, splat (i64 47)
  %67 = xor <4 x i64> %17, %66
  %68 = xor <4 x i64> %67, %65
  %69 = bitcast <4 x i64> %68 to <8 x i32>
  %70 = shufflevector <8 x i32> %69, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %71 = bitcast <8 x i32> %70 to <4 x i64>
  %72 = and <4 x i64> %68, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, splat (i64 2654435761)
  %74 = mul <4 x i64> %71, splat (i64 -7046029290881679360)
  %75 = add <4 x i64> %74, %73
  %76 = lshr <4 x i64> %64, splat (i64 47)
  %77 = xor <4 x i64> %19, %76
  %78 = xor <4 x i64> %77, %64
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = mul nuw <4 x i64> %82, splat (i64 2654435761)
  %84 = mul <4 x i64> %81, splat (i64 -7046029290881679360)
  %85 = add <4 x i64> %84, %83
  %86 = add nuw i64 %23, 1
  %87 = icmp ult i64 %86, %9
  br i1 %87, label %20, label %88

88:                                               ; preds = %63, %4
  %89 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %85, %63 ]
  %90 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %75, %63 ]
  %91 = mul i64 %9, %7
  %92 = lshr i64 %10, 6
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %94 = icmp ult i64 %10, 64
  br i1 %94, label %132, label %95

95:                                               ; preds = %88, %95
  %96 = phi <4 x i64> [ %129, %95 ], [ %89, %88 ]
  %97 = phi <4 x i64> [ %115, %95 ], [ %90, %88 ]
  %98 = phi i64 [ %130, %95 ], [ 0, %88 ]
  %99 = shl i64 %98, 6
  %100 = getelementptr inbounds nuw i8, ptr %93, i64 %99
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %101, i32 0, i32 3, i32 1)
  %102 = shl nuw i64 %98, 3
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %102
  %104 = load <4 x i64>, ptr %100, align 1
  %105 = load <4 x i64>, ptr %103, align 1
  %106 = xor <4 x i64> %105, %104
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %97, %113
  %115 = add <4 x i64> %114, %112
  %116 = getelementptr inbounds nuw i8, ptr %100, i64 32
  %117 = load <4 x i64>, ptr %116, align 1
  %118 = getelementptr inbounds nuw i8, ptr %103, i64 32
  %119 = load <4 x i64>, ptr %118, align 1
  %120 = xor <4 x i64> %119, %117
  %121 = bitcast <4 x i64> %120 to <8 x i32>
  %122 = shufflevector <8 x i32> %121, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %123 = bitcast <8 x i32> %122 to <4 x i64>
  %124 = and <4 x i64> %120, splat (i64 4294967295)
  %125 = and <4 x i64> %123, splat (i64 4294967295)
  %126 = mul nuw <4 x i64> %125, %124
  %127 = shufflevector <4 x i64> %117, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %128 = add <4 x i64> %96, %127
  %129 = add <4 x i64> %128, %126
  %130 = add nuw nsw i64 %98, 1
  %131 = icmp samesign ult i64 %130, %92
  br i1 %131, label %95, label %132

132:                                              ; preds = %95, %88
  %133 = phi <4 x i64> [ %89, %88 ], [ %129, %95 ]
  %134 = phi <4 x i64> [ %90, %88 ], [ %115, %95 ]
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %136 = getelementptr inbounds i8, ptr %135, i64 -64
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %138 = getelementptr inbounds i8, ptr %137, i64 -71
  %139 = load <4 x i64>, ptr %136, align 1
  %140 = load <4 x i64>, ptr %138, align 1
  %141 = xor <4 x i64> %140, %139
  %142 = bitcast <4 x i64> %141 to <8 x i32>
  %143 = shufflevector <8 x i32> %142, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %144 = bitcast <8 x i32> %143 to <4 x i64>
  %145 = and <4 x i64> %141, splat (i64 4294967295)
  %146 = and <4 x i64> %144, splat (i64 4294967295)
  %147 = mul nuw <4 x i64> %146, %145
  %148 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %149 = add <4 x i64> %134, %148
  %150 = add <4 x i64> %149, %147
  %151 = getelementptr inbounds i8, ptr %135, i64 -32
  %152 = load <4 x i64>, ptr %151, align 1
  %153 = getelementptr inbounds i8, ptr %137, i64 -39
  %154 = load <4 x i64>, ptr %153, align 1
  %155 = xor <4 x i64> %154, %152
  %156 = bitcast <4 x i64> %155 to <8 x i32>
  %157 = shufflevector <8 x i32> %156, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %158 = bitcast <8 x i32> %157 to <4 x i64>
  %159 = and <4 x i64> %155, splat (i64 4294967295)
  %160 = and <4 x i64> %158, splat (i64 4294967295)
  %161 = mul nuw <4 x i64> %160, %159
  %162 = shufflevector <4 x i64> %152, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %163 = add <4 x i64> %133, %162
  %164 = add <4 x i64> %163, %161
  %165 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %166 = mul i64 %1, -7046029288634856825
  %167 = extractelement <4 x i64> %150, i64 0
  %168 = load i64, ptr %165, align 1
  %169 = xor i64 %168, %167
  %170 = extractelement <4 x i64> %150, i64 1
  %171 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %172 = load i64, ptr %171, align 1
  %173 = xor i64 %172, %170
  %174 = zext i64 %169 to i128
  %175 = zext i64 %173 to i128
  %176 = mul nuw i128 %175, %174
  %177 = lshr i128 %176, 64
  %178 = xor i128 %177, %176
  %179 = trunc i128 %178 to i64
  %180 = add i64 %166, %179
  %181 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %182 = extractelement <4 x i64> %150, i64 2
  %183 = load i64, ptr %181, align 1
  %184 = xor i64 %183, %182
  %185 = extractelement <4 x i64> %150, i64 3
  %186 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %187 = load i64, ptr %186, align 1
  %188 = xor i64 %187, %185
  %189 = zext i64 %184 to i128
  %190 = zext i64 %188 to i128
  %191 = mul nuw i128 %190, %189
  %192 = lshr i128 %191, 64
  %193 = xor i128 %192, %191
  %194 = trunc i128 %193 to i64
  %195 = add i64 %180, %194
  %196 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %197 = extractelement <4 x i64> %164, i64 0
  %198 = load i64, ptr %196, align 1
  %199 = xor i64 %198, %197
  %200 = extractelement <4 x i64> %164, i64 1
  %201 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %202 = load i64, ptr %201, align 1
  %203 = xor i64 %202, %200
  %204 = zext i64 %199 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %195, %209
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %212 = extractelement <4 x i64> %164, i64 2
  %213 = load i64, ptr %211, align 1
  %214 = xor i64 %213, %212
  %215 = extractelement <4 x i64> %164, i64 3
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %217 = load i64, ptr %216, align 1
  %218 = xor i64 %217, %215
  %219 = zext i64 %214 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %210, %224
  %226 = lshr i64 %225, 37
  %227 = xor i64 %226, %225
  %228 = mul i64 %227, 1609587791953885689
  %229 = lshr i64 %228, 32
  %230 = xor i64 %229, %228
  ret i64 %230
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #5 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = trunc nuw nsw i64 %1 to i32
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %2, align 1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %3
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %5, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %26 = load i64, ptr %24, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 1
  %29 = load i64, ptr %25, align 1
  %30 = add i64 %29, %3
  %31 = xor i64 %30, %26
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = sub i64 %33, %3
  %35 = xor i64 %34, %28
  %36 = zext i64 %31 to i128
  %37 = zext i64 %35 to i128
  %38 = mul nuw i128 %37, %36
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = add i64 %23, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %45 = load i64, ptr %43, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %47 = load i64, ptr %46, align 1
  %48 = load i64, ptr %44, align 1
  %49 = add i64 %48, %3
  %50 = xor i64 %49, %45
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %52 = load i64, ptr %51, align 1
  %53 = sub i64 %52, %3
  %54 = xor i64 %53, %47
  %55 = zext i64 %50 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %42, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %64 = load i64, ptr %62, align 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %66 = load i64, ptr %65, align 1
  %67 = load i64, ptr %63, align 1
  %68 = add i64 %67, %3
  %69 = xor i64 %68, %64
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %71 = load i64, ptr %70, align 1
  %72 = sub i64 %71, %3
  %73 = xor i64 %72, %66
  %74 = zext i64 %69 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %61, %79
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %83 = load i64, ptr %81, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %85 = load i64, ptr %84, align 1
  %86 = load i64, ptr %82, align 1
  %87 = add i64 %86, %3
  %88 = xor i64 %87, %83
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %90 = load i64, ptr %89, align 1
  %91 = sub i64 %90, %3
  %92 = xor i64 %91, %85
  %93 = zext i64 %88 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %102 = load i64, ptr %100, align 1
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %104 = load i64, ptr %103, align 1
  %105 = load i64, ptr %101, align 1
  %106 = add i64 %105, %3
  %107 = xor i64 %106, %102
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %109 = load i64, ptr %108, align 1
  %110 = sub i64 %109, %3
  %111 = xor i64 %110, %104
  %112 = zext i64 %107 to i128
  %113 = zext i64 %111 to i128
  %114 = mul nuw i128 %113, %112
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %99, %117
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 1
  %125 = add i64 %124, %3
  %126 = xor i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %128 = load i64, ptr %127, align 1
  %129 = sub i64 %128, %3
  %130 = xor i64 %129, %123
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %118, %136
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %140 = load i64, ptr %138, align 1
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %142 = load i64, ptr %141, align 1
  %143 = load i64, ptr %139, align 1
  %144 = add i64 %143, %3
  %145 = xor i64 %144, %140
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %147 = load i64, ptr %146, align 1
  %148 = sub i64 %147, %3
  %149 = xor i64 %148, %142
  %150 = zext i64 %145 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %137, %155
  %157 = lshr i32 %6, 4
  %158 = lshr i64 %156, 37
  %159 = xor i64 %158, %156
  %160 = mul i64 %159, 1609587791953885689
  %161 = lshr i64 %160, 32
  %162 = xor i64 %161, %160
  %163 = icmp eq i32 %157, 8
  br i1 %163, label %310, label %164

164:                                              ; preds = %4
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %166 = getelementptr i8, ptr %2, i64 3
  %167 = load i64, ptr %165, align 1
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %169 = load i64, ptr %168, align 1
  %170 = load i64, ptr %166, align 1
  %171 = add i64 %170, %3
  %172 = xor i64 %171, %167
  %173 = getelementptr i8, ptr %2, i64 11
  %174 = load i64, ptr %173, align 1
  %175 = sub i64 %174, %3
  %176 = xor i64 %175, %169
  %177 = zext i64 %172 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %162, %182
  %184 = icmp eq i32 %157, 9
  br i1 %184, label %310, label %185

185:                                              ; preds = %164
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %187 = getelementptr i8, ptr %2, i64 19
  %188 = load i64, ptr %186, align 1
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %190 = load i64, ptr %189, align 1
  %191 = load i64, ptr %187, align 1
  %192 = add i64 %191, %3
  %193 = xor i64 %192, %188
  %194 = getelementptr i8, ptr %2, i64 27
  %195 = load i64, ptr %194, align 1
  %196 = sub i64 %195, %3
  %197 = xor i64 %196, %190
  %198 = zext i64 %193 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %183, %203
  %205 = icmp eq i32 %157, 10
  br i1 %205, label %310, label %206

206:                                              ; preds = %185
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %208 = getelementptr i8, ptr %2, i64 35
  %209 = load i64, ptr %207, align 1
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %211 = load i64, ptr %210, align 1
  %212 = load i64, ptr %208, align 1
  %213 = add i64 %212, %3
  %214 = xor i64 %213, %209
  %215 = getelementptr i8, ptr %2, i64 43
  %216 = load i64, ptr %215, align 1
  %217 = sub i64 %216, %3
  %218 = xor i64 %217, %211
  %219 = zext i64 %214 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %204, %224
  %226 = icmp eq i32 %157, 11
  br i1 %226, label %310, label %227

227:                                              ; preds = %206
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %229 = getelementptr i8, ptr %2, i64 51
  %230 = load i64, ptr %228, align 1
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = add i64 %233, %3
  %235 = xor i64 %234, %230
  %236 = getelementptr i8, ptr %2, i64 59
  %237 = load i64, ptr %236, align 1
  %238 = sub i64 %237, %3
  %239 = xor i64 %238, %232
  %240 = zext i64 %235 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %225, %245
  %247 = icmp eq i32 %157, 12
  br i1 %247, label %310, label %248

248:                                              ; preds = %227
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %250 = getelementptr i8, ptr %2, i64 67
  %251 = load i64, ptr %249, align 1
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %253 = load i64, ptr %252, align 1
  %254 = load i64, ptr %250, align 1
  %255 = add i64 %254, %3
  %256 = xor i64 %255, %251
  %257 = getelementptr i8, ptr %2, i64 75
  %258 = load i64, ptr %257, align 1
  %259 = sub i64 %258, %3
  %260 = xor i64 %259, %253
  %261 = zext i64 %256 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %246, %266
  %268 = icmp eq i32 %157, 13
  br i1 %268, label %310, label %269

269:                                              ; preds = %248
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %271 = getelementptr i8, ptr %2, i64 83
  %272 = load i64, ptr %270, align 1
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %274 = load i64, ptr %273, align 1
  %275 = load i64, ptr %271, align 1
  %276 = add i64 %275, %3
  %277 = xor i64 %276, %272
  %278 = getelementptr i8, ptr %2, i64 91
  %279 = load i64, ptr %278, align 1
  %280 = sub i64 %279, %3
  %281 = xor i64 %280, %274
  %282 = zext i64 %277 to i128
  %283 = zext i64 %281 to i128
  %284 = mul nuw i128 %283, %282
  %285 = lshr i128 %284, 64
  %286 = xor i128 %285, %284
  %287 = trunc i128 %286 to i64
  %288 = add i64 %267, %287
  %289 = icmp eq i32 %157, 14
  br i1 %289, label %310, label %290

290:                                              ; preds = %269
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %292 = getelementptr i8, ptr %2, i64 99
  %293 = load i64, ptr %291, align 1
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %295 = load i64, ptr %294, align 1
  %296 = load i64, ptr %292, align 1
  %297 = add i64 %296, %3
  %298 = xor i64 %297, %293
  %299 = getelementptr i8, ptr %2, i64 107
  %300 = load i64, ptr %299, align 1
  %301 = sub i64 %300, %3
  %302 = xor i64 %301, %295
  %303 = zext i64 %298 to i128
  %304 = zext i64 %302 to i128
  %305 = mul nuw i128 %304, %303
  %306 = lshr i128 %305, 64
  %307 = xor i128 %306, %305
  %308 = trunc i128 %307 to i64
  %309 = add i64 %288, %308
  br label %310

310:                                              ; preds = %164, %185, %206, %227, %248, %269, %290, %4
  %311 = phi i64 [ %162, %4 ], [ %183, %164 ], [ %204, %185 ], [ %225, %206 ], [ %246, %227 ], [ %267, %248 ], [ %288, %269 ], [ %309, %290 ]
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %313 = getelementptr inbounds i8, ptr %312, i64 -16
  %314 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %315 = load i64, ptr %313, align 1
  %316 = getelementptr inbounds i8, ptr %312, i64 -8
  %317 = load i64, ptr %316, align 1
  %318 = load i64, ptr %314, align 1
  %319 = add i64 %318, %3
  %320 = xor i64 %319, %315
  %321 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %322 = load i64, ptr %321, align 1
  %323 = sub i64 %322, %3
  %324 = xor i64 %323, %317
  %325 = zext i64 %320 to i128
  %326 = zext i64 %324 to i128
  %327 = mul nuw i128 %326, %325
  %328 = lshr i128 %327, 64
  %329 = xor i128 %328, %327
  %330 = trunc i128 %329 to i64
  %331 = add i64 %311, %330
  %332 = lshr i64 %331, 37
  %333 = xor i64 %332, %331
  %334 = mul i64 %333, 1609587791953885689
  %335 = lshr i64 %334, 32
  %336 = xor i64 %335, %334
  ret i64 %336
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2152065616}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_scrambleAcc_avx2: argument 0"}
!8 = distinct !{!8, !"XXH3_scrambleAcc_avx2"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"XXH3_accumulate: argument 0"}
!11 = distinct !{!11, !"XXH3_accumulate"}
!12 = !{!13, !10}
!13 = distinct !{!13, !14, !"XXH3_accumulate_512_avx2: argument 0"}
!14 = distinct !{!14, !"XXH3_accumulate_512_avx2"}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_accumulate: argument 0"}
!20 = distinct !{!20, !"XXH3_accumulate"}
!21 = !{!22, !19}
!22 = distinct !{!22, !23, !"XXH3_accumulate_512_avx2: argument 0"}
!23 = distinct !{!23, !"XXH3_accumulate_512_avx2"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_accumulate_512_avx2: argument 0"}
!26 = distinct !{!26, !"XXH3_accumulate_512_avx2"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"XXH3_mergeAccs: argument 1"}
!29 = distinct !{!29, !"XXH3_mergeAccs"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"XXH3_mergeAccs: argument 0"}
!32 = distinct !{!32, !16}
