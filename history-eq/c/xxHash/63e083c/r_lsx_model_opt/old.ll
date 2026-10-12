; ModuleID = 'r_lsx_model/old.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/63e083c/wrap_simd.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree nosync nounwind memory(argmem: write, inaccessiblemem: readwrite)
define dso_local void @target_acc512(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = alloca [64 x i8], align 8
  %27 = alloca [64 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #9
  %28 = insertelement <2 x i64> poison, i64 %1, i64 0
  %29 = insertelement <2 x i64> %28, i64 %2, i64 1
  %30 = insertelement <2 x i64> poison, i64 %3, i64 0
  %31 = insertelement <2 x i64> %30, i64 %4, i64 1
  %32 = insertelement <2 x i64> poison, i64 %5, i64 0
  %33 = insertelement <2 x i64> %32, i64 %6, i64 1
  %34 = insertelement <2 x i64> poison, i64 %7, i64 0
  %35 = insertelement <2 x i64> %34, i64 %8, i64 1
  store i64 %9, ptr %26, align 8
  %36 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %10, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 %11, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i64 %12, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i64 %13, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %26, i64 40
  store i64 %14, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 48
  store i64 %15, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 56
  store i64 %16, ptr %42, align 8
  store i64 %17, ptr %27, align 8
  %43 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %18, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 %19, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i64 %20, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i64 %21, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %27, i64 40
  store i64 %22, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %27, i64 48
  store i64 %23, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %27, i64 56
  store i64 %24, ptr %49, align 8
  %50 = load <16 x i8>, ptr %26, align 1
  %51 = load <16 x i8>, ptr %27, align 1
  %52 = xor <16 x i8> %50, %51
  %53 = bitcast <16 x i8> %52 to <2 x i64>
  %54 = lshr <2 x i64> %53, splat (i64 32)
  %55 = bitcast <16 x i8> %52 to <4 x i32>
  %lam5_e0 = shufflevector <4 x i32> %55, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam5_z0 = zext <2 x i32> %lam5_e0 to <2 x i64>
  %56 = mul nuw <2 x i64> %54, %lam5_z0
  %57 = bitcast <16 x i8> %50 to <4 x i32>
  %58 = shufflevector <4 x i32> %57, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %59 = bitcast <4 x i32> %58 to <2 x i64>
  %60 = add <2 x i64> %29, %59
  %61 = add <2 x i64> %56, %60
  %62 = load <16 x i8>, ptr %37, align 1
  %63 = load <16 x i8>, ptr %44, align 1
  %64 = xor <16 x i8> %62, %63
  %65 = bitcast <16 x i8> %64 to <2 x i64>
  %66 = lshr <2 x i64> %65, splat (i64 32)
  %67 = bitcast <16 x i8> %64 to <4 x i32>
  %lam13_e0 = shufflevector <4 x i32> %67, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam13_z0 = zext <2 x i32> %lam13_e0 to <2 x i64>
  %68 = mul nuw <2 x i64> %66, %lam13_z0
  %69 = bitcast <16 x i8> %62 to <4 x i32>
  %70 = shufflevector <4 x i32> %69, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %71 = bitcast <4 x i32> %70 to <2 x i64>
  %72 = add <2 x i64> %31, %71
  %73 = add <2 x i64> %68, %72
  %74 = load <16 x i8>, ptr %39, align 1
  %75 = load <16 x i8>, ptr %46, align 1
  %76 = xor <16 x i8> %74, %75
  %77 = bitcast <16 x i8> %76 to <2 x i64>
  %78 = lshr <2 x i64> %77, splat (i64 32)
  %79 = bitcast <16 x i8> %76 to <4 x i32>
  %lam21_e0 = shufflevector <4 x i32> %79, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam21_z0 = zext <2 x i32> %lam21_e0 to <2 x i64>
  %80 = mul nuw <2 x i64> %78, %lam21_z0
  %81 = bitcast <16 x i8> %74 to <4 x i32>
  %82 = shufflevector <4 x i32> %81, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %83 = bitcast <4 x i32> %82 to <2 x i64>
  %84 = add <2 x i64> %33, %83
  %85 = add <2 x i64> %80, %84
  %86 = load <16 x i8>, ptr %41, align 1
  %87 = load <16 x i8>, ptr %48, align 1
  %88 = xor <16 x i8> %86, %87
  %89 = bitcast <16 x i8> %88 to <2 x i64>
  %90 = lshr <2 x i64> %89, splat (i64 32)
  %91 = bitcast <16 x i8> %88 to <4 x i32>
  %lam29_e0 = shufflevector <4 x i32> %91, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam29_z0 = zext <2 x i32> %lam29_e0 to <2 x i64>
  %92 = mul nuw <2 x i64> %90, %lam29_z0
  %93 = bitcast <16 x i8> %86 to <4 x i32>
  %94 = shufflevector <4 x i32> %93, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %95 = bitcast <4 x i32> %94 to <2 x i64>
  %96 = add <2 x i64> %35, %95
  %97 = add <2 x i64> %92, %96
  store <2 x i64> %61, ptr %0, align 8
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %73, ptr %98, align 8
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %85, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %97, ptr %100, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind memory(argmem: write)
define dso_local void @target_scramble(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
  %18 = alloca [64 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #9
  %19 = insertelement <2 x i64> poison, i64 %1, i64 0
  %20 = insertelement <2 x i64> %19, i64 %2, i64 1
  %21 = insertelement <2 x i64> poison, i64 %3, i64 0
  %22 = insertelement <2 x i64> %21, i64 %4, i64 1
  %23 = insertelement <2 x i64> poison, i64 %5, i64 0
  %24 = insertelement <2 x i64> %23, i64 %6, i64 1
  %25 = insertelement <2 x i64> poison, i64 %7, i64 0
  %26 = insertelement <2 x i64> %25, i64 %8, i64 1
  store i64 %9, ptr %18, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %10, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %11, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %12, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %13, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %14, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %15, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %16, ptr %33, align 8
  %34 = lshr <2 x i64> %20, splat (i64 47)
  %35 = xor <2 x i64> %20, %34
  %36 = bitcast <2 x i64> %35 to <16 x i8>
  %37 = load <16 x i8>, ptr %18, align 1
  %38 = xor <16 x i8> %37, %36
  %39 = bitcast <16 x i8> %38 to <2 x i64>
  %40 = lshr <2 x i64> %39, splat (i64 32)
  %41 = bitcast <16 x i8> %38 to <4 x i32>
  %lam39_e0 = shufflevector <4 x i32> %41, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam39_z0 = zext <2 x i32> %lam39_e0 to <2 x i64>
  %42 = mul nuw <2 x i64> %lam39_z0, splat (i64 2654435761)
  %43 = mul <2 x i64> %40, splat (i64 -7046029290881679360)
  %44 = add <2 x i64> %42, %43
  %45 = lshr <2 x i64> %22, splat (i64 47)
  %46 = xor <2 x i64> %22, %45
  %47 = bitcast <2 x i64> %46 to <16 x i8>
  %48 = load <16 x i8>, ptr %28, align 1
  %49 = xor <16 x i8> %48, %47
  %50 = bitcast <16 x i8> %49 to <2 x i64>
  %51 = lshr <2 x i64> %50, splat (i64 32)
  %52 = bitcast <16 x i8> %49 to <4 x i32>
  %lam48_e0 = shufflevector <4 x i32> %52, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam48_z0 = zext <2 x i32> %lam48_e0 to <2 x i64>
  %53 = mul nuw <2 x i64> %lam48_z0, splat (i64 2654435761)
  %54 = mul <2 x i64> %51, splat (i64 -7046029290881679360)
  %55 = add <2 x i64> %53, %54
  %56 = lshr <2 x i64> %24, splat (i64 47)
  %57 = xor <2 x i64> %24, %56
  %58 = bitcast <2 x i64> %57 to <16 x i8>
  %59 = load <16 x i8>, ptr %30, align 1
  %60 = xor <16 x i8> %59, %58
  %61 = bitcast <16 x i8> %60 to <2 x i64>
  %62 = lshr <2 x i64> %61, splat (i64 32)
  %63 = bitcast <16 x i8> %60 to <4 x i32>
  %lam57_e0 = shufflevector <4 x i32> %63, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam57_z0 = zext <2 x i32> %lam57_e0 to <2 x i64>
  %64 = mul nuw <2 x i64> %lam57_z0, splat (i64 2654435761)
  %65 = mul <2 x i64> %62, splat (i64 -7046029290881679360)
  %66 = add <2 x i64> %64, %65
  %67 = lshr <2 x i64> %26, splat (i64 47)
  %68 = xor <2 x i64> %26, %67
  %69 = bitcast <2 x i64> %68 to <16 x i8>
  %70 = load <16 x i8>, ptr %32, align 1
  %71 = xor <16 x i8> %70, %69
  %72 = bitcast <16 x i8> %71 to <2 x i64>
  %73 = lshr <2 x i64> %72, splat (i64 32)
  %74 = bitcast <16 x i8> %71 to <4 x i32>
  %lam66_e0 = shufflevector <4 x i32> %74, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam66_z0 = zext <2 x i32> %lam66_e0 to <2 x i64>
  %75 = mul nuw <2 x i64> %lam66_z0, splat (i64 2654435761)
  %76 = mul <2 x i64> %73, splat (i64 -7046029290881679360)
  %77 = add <2 x i64> %75, %76
  store <2 x i64> %44, ptr %0, align 8
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %55, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %66, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %77, ptr %80, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @target_initsecret(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = add i64 %1, -4734510112055689544
  %4 = sub i64 2066345149520216444, %1
  %5 = add i64 %1, -2623469361688619810
  %6 = sub i64 2262974939099578482, %1
  %7 = add i64 %1, 8711581037947681227
  %8 = sub i64 2410270004345854594, %1
  %9 = add i64 %1, -8204357891075471176
  %10 = sub i64 5487137525590930912, %1
  %11 = add i64 %1, -3818837453329782724
  %12 = sub i64 -6688317018830679928, %1
  %13 = add i64 %1, 5690594596133299313
  %14 = sub i64 -2833645246901970632, %1
  %15 = add i64 %1, 4554437623014685352
  %16 = sub i64 2111919702937427193, %1
  %17 = add i64 %1, 3556072174620004746
  %18 = sub i64 7238261902898274248, %1
  %19 = add i64 %1, -4329134394285701654
  %20 = sub i64 -1485321483350670907, %1
  %21 = add i64 %1, 5321830579834785047
  %22 = sub i64 -7032137544937171245, %1
  %23 = add i64 %1, -242834301215959509
  %24 = sub i64 -3588858202114426737, %1
  %25 = add i64 %1, 2883454493032893253
  %26 = sub i64 9097354517224871855, %1
  store i64 %3, ptr %0, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %27, align 1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %28, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %6, ptr %29, align 1
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %7, ptr %30, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %8, ptr %31, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %9, ptr %32, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %10, ptr %33, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %11, ptr %34, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %12, ptr %35, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %13, ptr %36, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %14, ptr %37, align 1
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %15, ptr %38, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %16, ptr %39, align 1
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %17, ptr %40, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %18, ptr %41, align 1
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %19, ptr %42, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %20, ptr %43, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %21, ptr %44, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %22, ptr %45, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %23, ptr %46, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %24, ptr %47, align 1
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %25, ptr %48, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %26, ptr %49, align 1
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local i64 @target_api_len1024(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = alloca [192 x i8], align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %171

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi <2 x i64> [ %70, %6 ], [ <i64 2870177450012600261, i64 2654435761>, %5 ]
  %8 = phi <2 x i64> [ %56, %6 ], [ <i64 -8796714831421723037, i64 2246822519>, %5 ]
  %9 = phi <2 x i64> [ %42, %6 ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %5 ]
  %10 = phi <2 x i64> [ %28, %6 ], [ <i64 3266489917, i64 -7046029288634856825>, %5 ]
  %11 = phi i64 [ %71, %6 ], [ 0, %5 ]
  %12 = shl i64 %11, 6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %12
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %14, i32 0, i32 3, i32 1)
  %15 = shl i64 %11, 3
  %16 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %15
  %17 = load <16 x i8>, ptr %13, align 1
  %18 = load <16 x i8>, ptr %16, align 1
  %19 = xor <16 x i8> %17, %18
  %20 = bitcast <16 x i8> %19 to <2 x i64>
  %21 = lshr <2 x i64> %20, splat (i64 32)
  %22 = bitcast <16 x i8> %19 to <4 x i32>
  %lam74_e0 = shufflevector <4 x i32> %22, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam74_z0 = zext <2 x i32> %lam74_e0 to <2 x i64>
  %23 = mul nuw <2 x i64> %21, %lam74_z0
  %24 = bitcast <16 x i8> %17 to <4 x i32>
  %25 = shufflevector <4 x i32> %24, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %26 = bitcast <4 x i32> %25 to <2 x i64>
  %27 = add <2 x i64> %10, %26
  %28 = add <2 x i64> %23, %27
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %30 = load <16 x i8>, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %32 = load <16 x i8>, ptr %31, align 1
  %33 = xor <16 x i8> %30, %32
  %34 = bitcast <16 x i8> %33 to <2 x i64>
  %35 = lshr <2 x i64> %34, splat (i64 32)
  %36 = bitcast <16 x i8> %33 to <4 x i32>
  %lam82_e0 = shufflevector <4 x i32> %36, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam82_z0 = zext <2 x i32> %lam82_e0 to <2 x i64>
  %37 = mul nuw <2 x i64> %35, %lam82_z0
  %38 = bitcast <16 x i8> %30 to <4 x i32>
  %39 = shufflevector <4 x i32> %38, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %40 = bitcast <4 x i32> %39 to <2 x i64>
  %41 = add <2 x i64> %9, %40
  %42 = add <2 x i64> %37, %41
  %43 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %44 = load <16 x i8>, ptr %43, align 1
  %45 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %46 = load <16 x i8>, ptr %45, align 1
  %47 = xor <16 x i8> %44, %46
  %48 = bitcast <16 x i8> %47 to <2 x i64>
  %49 = lshr <2 x i64> %48, splat (i64 32)
  %50 = bitcast <16 x i8> %47 to <4 x i32>
  %lam90_e0 = shufflevector <4 x i32> %50, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam90_z0 = zext <2 x i32> %lam90_e0 to <2 x i64>
  %51 = mul nuw <2 x i64> %49, %lam90_z0
  %52 = bitcast <16 x i8> %44 to <4 x i32>
  %53 = shufflevector <4 x i32> %52, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %54 = bitcast <4 x i32> %53 to <2 x i64>
  %55 = add <2 x i64> %8, %54
  %56 = add <2 x i64> %51, %55
  %57 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %58 = load <16 x i8>, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %60 = load <16 x i8>, ptr %59, align 1
  %61 = xor <16 x i8> %58, %60
  %62 = bitcast <16 x i8> %61 to <2 x i64>
  %63 = lshr <2 x i64> %62, splat (i64 32)
  %64 = bitcast <16 x i8> %61 to <4 x i32>
  %lam98_e0 = shufflevector <4 x i32> %64, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam98_z0 = zext <2 x i32> %lam98_e0 to <2 x i64>
  %65 = mul nuw <2 x i64> %63, %lam98_z0
  %66 = bitcast <16 x i8> %58 to <4 x i32>
  %67 = shufflevector <4 x i32> %66, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %68 = bitcast <4 x i32> %67 to <2 x i64>
  %69 = add <2 x i64> %7, %68
  %70 = add <2 x i64> %65, %69
  %71 = add nuw nsw i64 %11, 1
  %72 = icmp eq i64 %71, 15
  br i1 %72, label %73, label %6

73:                                               ; preds = %6
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %75 = load <16 x i8>, ptr %74, align 1
  %76 = xor <16 x i8> %75, <i8 -97, i8 126, i8 -55, i8 -39, i8 120, i8 115, i8 100, i8 -22, i8 -59, i8 -84, i8 -125, i8 52, i8 -45, i8 -21, i8 -61, i8 -59>
  %77 = bitcast <16 x i8> %76 to <2 x i64>
  %78 = lshr <2 x i64> %77, splat (i64 32)
  %79 = bitcast <16 x i8> %76 to <4 x i32>
  %lam106_e0 = shufflevector <4 x i32> %79, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam106_z0 = zext <2 x i32> %lam106_e0 to <2 x i64>
  %80 = mul nuw <2 x i64> %78, %lam106_z0
  %81 = bitcast <16 x i8> %75 to <4 x i32>
  %82 = shufflevector <4 x i32> %81, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %83 = bitcast <4 x i32> %82 to <2 x i64>
  %84 = add <2 x i64> %28, %83
  %85 = add <2 x i64> %80, %84
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %87 = load <16 x i8>, ptr %86, align 1
  %88 = xor <16 x i8> %87, <i8 -127, i8 -96, i8 -1, i8 -6, i8 19, i8 99, i8 -21, i8 23, i8 13, i8 -35, i8 81, i8 -73, i8 -16, i8 -38, i8 73, i8 -45>
  %89 = bitcast <16 x i8> %88 to <2 x i64>
  %90 = lshr <2 x i64> %89, splat (i64 32)
  %91 = bitcast <16 x i8> %88 to <4 x i32>
  %lam114_e0 = shufflevector <4 x i32> %91, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam114_z0 = zext <2 x i32> %lam114_e0 to <2 x i64>
  %92 = mul nuw <2 x i64> %90, %lam114_z0
  %93 = bitcast <16 x i8> %87 to <4 x i32>
  %94 = shufflevector <4 x i32> %93, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %95 = bitcast <4 x i32> %94 to <2 x i64>
  %96 = add <2 x i64> %42, %95
  %97 = add <2 x i64> %92, %96
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %99 = load <16 x i8>, ptr %98, align 1
  %100 = xor <16 x i8> %99, <i8 22, i8 85, i8 38, i8 41, i8 -44, i8 104, i8 -98, i8 43, i8 22, i8 -66, i8 88, i8 125, i8 71, i8 -95, i8 -4, i8 -113>
  %101 = bitcast <16 x i8> %100 to <2 x i64>
  %102 = lshr <2 x i64> %101, splat (i64 32)
  %103 = bitcast <16 x i8> %100 to <4 x i32>
  %lam122_e0 = shufflevector <4 x i32> %103, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam122_z0 = zext <2 x i32> %lam122_e0 to <2 x i64>
  %104 = mul nuw <2 x i64> %102, %lam122_z0
  %105 = bitcast <16 x i8> %99 to <4 x i32>
  %106 = shufflevector <4 x i32> %105, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %107 = bitcast <4 x i32> %106 to <2 x i64>
  %108 = add <2 x i64> %56, %107
  %109 = add <2 x i64> %104, %108
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %111 = load <16 x i8>, ptr %110, align 1
  %112 = xor <16 x i8> %111, <i8 -8, i8 -72, i8 -47, i8 122, i8 -48, i8 49, i8 -50, i8 69, i8 -53, i8 58, i8 -113, i8 -107, i8 22, i8 4, i8 40, i8 -81>
  %113 = bitcast <16 x i8> %112 to <2 x i64>
  %114 = lshr <2 x i64> %113, splat (i64 32)
  %115 = bitcast <16 x i8> %112 to <4 x i32>
  %lam130_e0 = shufflevector <4 x i32> %115, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam130_z0 = zext <2 x i32> %lam130_e0 to <2 x i64>
  %116 = mul nuw <2 x i64> %114, %lam130_z0
  %117 = bitcast <16 x i8> %111 to <4 x i32>
  %118 = shufflevector <4 x i32> %117, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %119 = bitcast <4 x i32> %118 to <2 x i64>
  %120 = add <2 x i64> %70, %119
  %121 = add <2 x i64> %116, %120
  %122 = extractelement <2 x i64> %85, i64 0
  %123 = extractelement <2 x i64> %85, i64 1
  %124 = xor i64 %122, 7914194659941938988
  %125 = xor i64 %123, -6611157965513653271
  %126 = zext i64 %124 to i128
  %127 = zext i64 %125 to i128
  %128 = mul nuw i128 %127, %126
  %129 = lshr i128 %128, 64
  %130 = xor i128 %129, %128
  %131 = trunc i128 %130 to i64
  %132 = add i64 %131, -2457058741658706944
  %133 = extractelement <2 x i64> %97, i64 0
  %134 = extractelement <2 x i64> %97, i64 1
  %135 = xor i64 %133, -1839215637059881052
  %136 = xor i64 %134, -3433288310154277810
  %137 = zext i64 %135 to i128
  %138 = zext i64 %136 to i128
  %139 = mul nuw i128 %138, %137
  %140 = lshr i128 %139, 64
  %141 = xor i128 %140, %139
  %142 = trunc i128 %141 to i64
  %143 = add i64 %132, %142
  %144 = extractelement <2 x i64> %109, i64 0
  %145 = extractelement <2 x i64> %109, i64 1
  %146 = xor i64 %144, 5046485836271438973
  %147 = xor i64 %145, -8055285457383852172
  %148 = zext i64 %146 to i128
  %149 = zext i64 %147 to i128
  %150 = mul nuw i128 %149, %148
  %151 = lshr i128 %150, 64
  %152 = xor i128 %151, %150
  %153 = trunc i128 %152 to i64
  %154 = add i64 %143, %153
  %155 = extractelement <2 x i64> %121, i64 0
  %156 = extractelement <2 x i64> %121, i64 1
  %157 = xor i64 %155, 5920048007935066598
  %158 = xor i64 %156, 7336514198459093435
  %159 = zext i64 %157 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %154, %164
  %166 = lshr i64 %165, 37
  %167 = xor i64 %166, %165
  %168 = mul i64 %167, 1609587791953885689
  %169 = lshr i64 %168, 32
  %170 = xor i64 %169, %168
  br label %408

171:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #9
  %172 = add i64 %1, -4734510112055689544
  %173 = sub i64 2066345149520216444, %1
  store i64 %172, ptr %3, align 8
  %174 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %173, ptr %174, align 8
  %175 = add i64 %1, -2623469361688619810
  %176 = sub i64 2262974939099578482, %1
  %177 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %175, ptr %177, align 8
  %178 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %176, ptr %178, align 8
  %179 = add i64 %1, 8711581037947681227
  %180 = sub i64 2410270004345854594, %1
  %181 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %179, ptr %181, align 8
  %182 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %180, ptr %182, align 8
  %183 = add i64 %1, -8204357891075471176
  %184 = sub i64 5487137525590930912, %1
  %185 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %183, ptr %185, align 8
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %184, ptr %186, align 8
  %187 = add i64 %1, -3818837453329782724
  %188 = sub i64 -6688317018830679928, %1
  %189 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %187, ptr %189, align 8
  %190 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %188, ptr %190, align 8
  %191 = add i64 %1, 5690594596133299313
  %192 = sub i64 -2833645246901970632, %1
  %193 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %191, ptr %193, align 8
  %194 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %192, ptr %194, align 8
  %195 = add i64 %1, 4554437623014685352
  %196 = sub i64 2111919702937427193, %1
  %197 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %195, ptr %197, align 8
  %198 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %196, ptr %198, align 8
  %199 = add i64 %1, 3556072174620004746
  %200 = sub i64 7238261902898274248, %1
  %201 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %199, ptr %201, align 8
  %202 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %200, ptr %202, align 8
  %203 = add i64 %1, -4329134394285701654
  %204 = sub i64 -1485321483350670907, %1
  %205 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %203, ptr %205, align 8
  %206 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %204, ptr %206, align 8
  %207 = add i64 %1, 5321830579834785047
  %208 = sub i64 -7032137544937171245, %1
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 %207, ptr %209, align 8
  %210 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 %208, ptr %210, align 8
  %211 = add i64 %1, -242834301215959509
  %212 = sub i64 -3588858202114426737, %1
  %213 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %211, ptr %213, align 8
  %214 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %212, ptr %214, align 8
  %215 = add i64 %1, 2883454493032893253
  %216 = sub i64 9097354517224871855, %1
  %217 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %215, ptr %217, align 8
  %218 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 %216, ptr %218, align 8
  br label %219

219:                                              ; preds = %219, %171
  %220 = phi <2 x i64> [ %283, %219 ], [ <i64 2870177450012600261, i64 2654435761>, %171 ]
  %221 = phi <2 x i64> [ %269, %219 ], [ <i64 -8796714831421723037, i64 2246822519>, %171 ]
  %222 = phi <2 x i64> [ %255, %219 ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %171 ]
  %223 = phi <2 x i64> [ %241, %219 ], [ <i64 3266489917, i64 -7046029288634856825>, %171 ]
  %224 = phi i64 [ %284, %219 ], [ 0, %171 ]
  %225 = shl i64 %224, 6
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 %225
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %227, i32 0, i32 3, i32 1)
  %228 = shl i64 %224, 3
  %229 = getelementptr inbounds nuw i8, ptr %3, i64 %228
  %230 = load <16 x i8>, ptr %226, align 1
  %231 = load <16 x i8>, ptr %229, align 1
  %232 = xor <16 x i8> %230, %231
  %233 = bitcast <16 x i8> %232 to <2 x i64>
  %234 = lshr <2 x i64> %233, splat (i64 32)
  %235 = bitcast <16 x i8> %232 to <4 x i32>
  %lam138_e0 = shufflevector <4 x i32> %235, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam138_z0 = zext <2 x i32> %lam138_e0 to <2 x i64>
  %236 = mul nuw <2 x i64> %234, %lam138_z0
  %237 = bitcast <16 x i8> %230 to <4 x i32>
  %238 = shufflevector <4 x i32> %237, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %239 = bitcast <4 x i32> %238 to <2 x i64>
  %240 = add <2 x i64> %223, %239
  %241 = add <2 x i64> %236, %240
  %242 = getelementptr inbounds nuw i8, ptr %226, i64 16
  %243 = load <16 x i8>, ptr %242, align 1
  %244 = getelementptr inbounds nuw i8, ptr %229, i64 16
  %245 = load <16 x i8>, ptr %244, align 1
  %246 = xor <16 x i8> %243, %245
  %247 = bitcast <16 x i8> %246 to <2 x i64>
  %248 = lshr <2 x i64> %247, splat (i64 32)
  %249 = bitcast <16 x i8> %246 to <4 x i32>
  %lam146_e0 = shufflevector <4 x i32> %249, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam146_z0 = zext <2 x i32> %lam146_e0 to <2 x i64>
  %250 = mul nuw <2 x i64> %248, %lam146_z0
  %251 = bitcast <16 x i8> %243 to <4 x i32>
  %252 = shufflevector <4 x i32> %251, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %253 = bitcast <4 x i32> %252 to <2 x i64>
  %254 = add <2 x i64> %222, %253
  %255 = add <2 x i64> %250, %254
  %256 = getelementptr inbounds nuw i8, ptr %226, i64 32
  %257 = load <16 x i8>, ptr %256, align 1
  %258 = getelementptr inbounds nuw i8, ptr %229, i64 32
  %259 = load <16 x i8>, ptr %258, align 1
  %260 = xor <16 x i8> %257, %259
  %261 = bitcast <16 x i8> %260 to <2 x i64>
  %262 = lshr <2 x i64> %261, splat (i64 32)
  %263 = bitcast <16 x i8> %260 to <4 x i32>
  %lam154_e0 = shufflevector <4 x i32> %263, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam154_z0 = zext <2 x i32> %lam154_e0 to <2 x i64>
  %264 = mul nuw <2 x i64> %262, %lam154_z0
  %265 = bitcast <16 x i8> %257 to <4 x i32>
  %266 = shufflevector <4 x i32> %265, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %267 = bitcast <4 x i32> %266 to <2 x i64>
  %268 = add <2 x i64> %221, %267
  %269 = add <2 x i64> %264, %268
  %270 = getelementptr inbounds nuw i8, ptr %226, i64 48
  %271 = load <16 x i8>, ptr %270, align 1
  %272 = getelementptr inbounds nuw i8, ptr %229, i64 48
  %273 = load <16 x i8>, ptr %272, align 1
  %274 = xor <16 x i8> %271, %273
  %275 = bitcast <16 x i8> %274 to <2 x i64>
  %276 = lshr <2 x i64> %275, splat (i64 32)
  %277 = bitcast <16 x i8> %274 to <4 x i32>
  %lam162_e0 = shufflevector <4 x i32> %277, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam162_z0 = zext <2 x i32> %lam162_e0 to <2 x i64>
  %278 = mul nuw <2 x i64> %276, %lam162_z0
  %279 = bitcast <16 x i8> %271 to <4 x i32>
  %280 = shufflevector <4 x i32> %279, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %281 = bitcast <4 x i32> %280 to <2 x i64>
  %282 = add <2 x i64> %220, %281
  %283 = add <2 x i64> %278, %282
  %284 = add nuw nsw i64 %224, 1
  %285 = icmp eq i64 %284, 15
  br i1 %285, label %286, label %219

286:                                              ; preds = %219
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %288 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %289 = load <16 x i8>, ptr %287, align 1
  %290 = load <16 x i8>, ptr %288, align 1
  %291 = xor <16 x i8> %289, %290
  %292 = bitcast <16 x i8> %291 to <2 x i64>
  %293 = lshr <2 x i64> %292, splat (i64 32)
  %294 = bitcast <16 x i8> %291 to <4 x i32>
  %lam170_e0 = shufflevector <4 x i32> %294, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam170_z0 = zext <2 x i32> %lam170_e0 to <2 x i64>
  %295 = mul nuw <2 x i64> %293, %lam170_z0
  %296 = bitcast <16 x i8> %289 to <4 x i32>
  %297 = shufflevector <4 x i32> %296, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %298 = bitcast <4 x i32> %297 to <2 x i64>
  %299 = add <2 x i64> %241, %298
  %300 = add <2 x i64> %295, %299
  %301 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %302 = load <16 x i8>, ptr %301, align 1
  %303 = getelementptr inbounds nuw i8, ptr %3, i64 137
  %304 = load <16 x i8>, ptr %303, align 1
  %305 = xor <16 x i8> %302, %304
  %306 = bitcast <16 x i8> %305 to <2 x i64>
  %307 = lshr <2 x i64> %306, splat (i64 32)
  %308 = bitcast <16 x i8> %305 to <4 x i32>
  %lam178_e0 = shufflevector <4 x i32> %308, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam178_z0 = zext <2 x i32> %lam178_e0 to <2 x i64>
  %309 = mul nuw <2 x i64> %307, %lam178_z0
  %310 = bitcast <16 x i8> %302 to <4 x i32>
  %311 = shufflevector <4 x i32> %310, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %312 = bitcast <4 x i32> %311 to <2 x i64>
  %313 = add <2 x i64> %255, %312
  %314 = add <2 x i64> %309, %313
  %315 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %316 = load <16 x i8>, ptr %315, align 1
  %317 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %318 = load <16 x i8>, ptr %317, align 1
  %319 = xor <16 x i8> %316, %318
  %320 = bitcast <16 x i8> %319 to <2 x i64>
  %321 = lshr <2 x i64> %320, splat (i64 32)
  %322 = bitcast <16 x i8> %319 to <4 x i32>
  %lam186_e0 = shufflevector <4 x i32> %322, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam186_z0 = zext <2 x i32> %lam186_e0 to <2 x i64>
  %323 = mul nuw <2 x i64> %321, %lam186_z0
  %324 = bitcast <16 x i8> %316 to <4 x i32>
  %325 = shufflevector <4 x i32> %324, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %326 = bitcast <4 x i32> %325 to <2 x i64>
  %327 = add <2 x i64> %269, %326
  %328 = add <2 x i64> %323, %327
  %329 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %330 = load <16 x i8>, ptr %329, align 1
  %331 = getelementptr inbounds nuw i8, ptr %3, i64 169
  %332 = load <16 x i8>, ptr %331, align 1
  %333 = xor <16 x i8> %330, %332
  %334 = bitcast <16 x i8> %333 to <2 x i64>
  %335 = lshr <2 x i64> %334, splat (i64 32)
  %336 = bitcast <16 x i8> %333 to <4 x i32>
  %lam194_e0 = shufflevector <4 x i32> %336, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam194_z0 = zext <2 x i32> %lam194_e0 to <2 x i64>
  %337 = mul nuw <2 x i64> %335, %lam194_z0
  %338 = bitcast <16 x i8> %330 to <4 x i32>
  %339 = shufflevector <4 x i32> %338, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %340 = bitcast <4 x i32> %339 to <2 x i64>
  %341 = add <2 x i64> %283, %340
  %342 = add <2 x i64> %337, %341
  %343 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %344 = extractelement <2 x i64> %300, i64 0
  %345 = extractelement <2 x i64> %300, i64 1
  %346 = load i64, ptr %343, align 1
  %347 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %346, %344
  %350 = xor i64 %348, %345
  %351 = zext i64 %349 to i128
  %352 = zext i64 %350 to i128
  %353 = mul nuw i128 %352, %351
  %354 = lshr i128 %353, 64
  %355 = xor i128 %354, %353
  %356 = trunc i128 %355 to i64
  %357 = add i64 %356, -2457058741658706944
  %358 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %359 = extractelement <2 x i64> %314, i64 0
  %360 = extractelement <2 x i64> %314, i64 1
  %361 = load i64, ptr %358, align 1
  %362 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %363 = load i64, ptr %362, align 1
  %364 = xor i64 %361, %359
  %365 = xor i64 %363, %360
  %366 = zext i64 %364 to i128
  %367 = zext i64 %365 to i128
  %368 = mul nuw i128 %367, %366
  %369 = lshr i128 %368, 64
  %370 = xor i128 %369, %368
  %371 = trunc i128 %370 to i64
  %372 = add i64 %357, %371
  %373 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %374 = extractelement <2 x i64> %328, i64 0
  %375 = extractelement <2 x i64> %328, i64 1
  %376 = load i64, ptr %373, align 1
  %377 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %378 = load i64, ptr %377, align 1
  %379 = xor i64 %376, %374
  %380 = xor i64 %378, %375
  %381 = zext i64 %379 to i128
  %382 = zext i64 %380 to i128
  %383 = mul nuw i128 %382, %381
  %384 = lshr i128 %383, 64
  %385 = xor i128 %384, %383
  %386 = trunc i128 %385 to i64
  %387 = add i64 %372, %386
  %388 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %389 = extractelement <2 x i64> %342, i64 0
  %390 = extractelement <2 x i64> %342, i64 1
  %391 = load i64, ptr %388, align 1
  %392 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %393 = load i64, ptr %392, align 1
  %394 = xor i64 %391, %389
  %395 = xor i64 %393, %390
  %396 = zext i64 %394 to i128
  %397 = zext i64 %395 to i128
  %398 = mul nuw i128 %397, %396
  %399 = lshr i128 %398, 64
  %400 = xor i128 %399, %398
  %401 = trunc i128 %400 to i64
  %402 = add i64 %387, %401
  %403 = lshr i64 %402, 37
  %404 = xor i64 %403, %402
  %405 = mul i64 %404, 1609587791953885689
  %406 = lshr i64 %405, 32
  %407 = xor i64 %406, %405
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #9
  br label %408

408:                                              ; preds = %286, %73
  %409 = phi i64 [ %170, %73 ], [ %407, %286 ]
  ret i64 %409
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x i8> @llvm.loongarch.lsx.vld(ptr, i32 immarg) #5

; Function Attrs: nounwind memory(none)
declare <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64>, i32 immarg) #6

; Function Attrs: nounwind memory(none)
declare <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32>, i32 immarg) #6

; Function Attrs: nounwind memory(none)
declare <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8>, <16 x i8>) #6

; Function Attrs: nounwind memory(none)
declare <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32>, <4 x i32>) #6

; Function Attrs: nounwind memory(none)
declare <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64>, <2 x i64>) #6

; Function Attrs: nounwind memory(none)
declare <2 x i64> @llvm.loongarch.lsx.vslli.d(<2 x i64>, i32 immarg) #6

; Function Attrs: nounwind memory(none)
declare <4 x i32> @llvm.loongarch.lsx.vreplgr2vr.w(i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nofree nosync nounwind memory(argmem: write, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nofree nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
