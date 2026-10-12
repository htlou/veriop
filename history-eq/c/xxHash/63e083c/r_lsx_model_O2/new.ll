; ModuleID = '63e083c/r_lsx_model/new.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/63e083c/wrap_simd.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @target_acc512(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <2 x i64> poison, i64 %1, i64 0
  %27 = insertelement <2 x i64> %26, i64 %2, i64 1
  %28 = insertelement <2 x i64> poison, i64 %3, i64 0
  %29 = insertelement <2 x i64> %28, i64 %4, i64 1
  %30 = insertelement <2 x i64> poison, i64 %5, i64 0
  %31 = insertelement <2 x i64> %30, i64 %6, i64 1
  %32 = insertelement <2 x i64> poison, i64 %7, i64 0
  %33 = insertelement <2 x i64> %32, i64 %8, i64 1
  %.sroa.05.0.vec.insert = insertelement <2 x i64> poison, i64 %9, i64 0
  %.sroa.05.8.vec.insert = insertelement <2 x i64> %.sroa.05.0.vec.insert, i64 %10, i64 1
  %.sroa.57.16.vec.insert = insertelement <2 x i64> poison, i64 %11, i64 0
  %.sroa.57.24.vec.insert = insertelement <2 x i64> %.sroa.57.16.vec.insert, i64 %12, i64 1
  %.sroa.89.32.vec.insert = insertelement <2 x i64> poison, i64 %13, i64 0
  %.sroa.89.40.vec.insert = insertelement <2 x i64> %.sroa.89.32.vec.insert, i64 %14, i64 1
  %.sroa.1111.48.vec.insert = insertelement <2 x i64> poison, i64 %15, i64 0
  %.sroa.1111.56.vec.insert = insertelement <2 x i64> %.sroa.1111.48.vec.insert, i64 %16, i64 1
  %.sroa.0.0.vec.insert = insertelement <2 x i64> poison, i64 %17, i64 0
  %.sroa.0.8.vec.insert = insertelement <2 x i64> %.sroa.0.0.vec.insert, i64 %18, i64 1
  %.sroa.5.16.vec.insert = insertelement <2 x i64> poison, i64 %19, i64 0
  %.sroa.5.24.vec.insert = insertelement <2 x i64> %.sroa.5.16.vec.insert, i64 %20, i64 1
  %.sroa.8.32.vec.insert = insertelement <2 x i64> poison, i64 %21, i64 0
  %.sroa.8.40.vec.insert = insertelement <2 x i64> %.sroa.8.32.vec.insert, i64 %22, i64 1
  %.sroa.11.48.vec.insert = insertelement <2 x i64> poison, i64 %23, i64 0
  %.sroa.11.56.vec.insert = insertelement <2 x i64> %.sroa.11.48.vec.insert, i64 %24, i64 1
  %34 = xor <2 x i64> %.sroa.0.8.vec.insert, %.sroa.05.8.vec.insert
  %35 = lshr <2 x i64> %34, splat (i64 32)
  %lam5_z0 = and <2 x i64> %34, splat (i64 4294967295)
  %36 = mul nuw <2 x i64> %lam5_z0, %35
  %37 = shufflevector <2 x i64> %.sroa.05.8.vec.insert, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %38 = add <2 x i64> %27, %37
  %39 = add <2 x i64> %38, %36
  %40 = xor <2 x i64> %.sroa.5.24.vec.insert, %.sroa.57.24.vec.insert
  %41 = lshr <2 x i64> %40, splat (i64 32)
  %lam13_z0 = and <2 x i64> %40, splat (i64 4294967295)
  %42 = mul nuw <2 x i64> %lam13_z0, %41
  %43 = shufflevector <2 x i64> %.sroa.57.24.vec.insert, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %44 = add <2 x i64> %29, %43
  %45 = add <2 x i64> %44, %42
  %46 = xor <2 x i64> %.sroa.8.40.vec.insert, %.sroa.89.40.vec.insert
  %47 = lshr <2 x i64> %46, splat (i64 32)
  %lam21_z0 = and <2 x i64> %46, splat (i64 4294967295)
  %48 = mul nuw <2 x i64> %lam21_z0, %47
  %49 = shufflevector <2 x i64> %.sroa.89.40.vec.insert, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %50 = add <2 x i64> %31, %49
  %51 = add <2 x i64> %50, %48
  %52 = xor <2 x i64> %.sroa.11.56.vec.insert, %.sroa.1111.56.vec.insert
  %53 = lshr <2 x i64> %52, splat (i64 32)
  %lam29_z0 = and <2 x i64> %52, splat (i64 4294967295)
  %54 = mul nuw <2 x i64> %lam29_z0, %53
  %55 = shufflevector <2 x i64> %.sroa.1111.56.vec.insert, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %56 = add <2 x i64> %33, %55
  %57 = add <2 x i64> %56, %54
  store <2 x i64> %39, ptr %0, align 8
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %45, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %51, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %57, ptr %60, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @target_scramble(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = insertelement <2 x i64> poison, i64 %1, i64 0
  %19 = insertelement <2 x i64> %18, i64 %2, i64 1
  %20 = insertelement <2 x i64> poison, i64 %3, i64 0
  %21 = insertelement <2 x i64> %20, i64 %4, i64 1
  %22 = insertelement <2 x i64> poison, i64 %5, i64 0
  %23 = insertelement <2 x i64> %22, i64 %6, i64 1
  %24 = insertelement <2 x i64> poison, i64 %7, i64 0
  %25 = insertelement <2 x i64> %24, i64 %8, i64 1
  %.sroa.0.0.vec.insert = insertelement <2 x i64> poison, i64 %9, i64 0
  %.sroa.0.8.vec.insert = insertelement <2 x i64> %.sroa.0.0.vec.insert, i64 %10, i64 1
  %.sroa.5.16.vec.insert = insertelement <2 x i64> poison, i64 %11, i64 0
  %.sroa.5.24.vec.insert = insertelement <2 x i64> %.sroa.5.16.vec.insert, i64 %12, i64 1
  %.sroa.8.32.vec.insert = insertelement <2 x i64> poison, i64 %13, i64 0
  %.sroa.8.40.vec.insert = insertelement <2 x i64> %.sroa.8.32.vec.insert, i64 %14, i64 1
  %.sroa.11.48.vec.insert = insertelement <2 x i64> poison, i64 %15, i64 0
  %.sroa.11.56.vec.insert = insertelement <2 x i64> %.sroa.11.48.vec.insert, i64 %16, i64 1
  %26 = lshr <2 x i64> %19, splat (i64 47)
  %27 = xor <2 x i64> %26, %.sroa.0.8.vec.insert
  %28 = xor <2 x i64> %27, %19
  %29 = mul <2 x i64> %28, splat (i64 2654435761)
  %30 = lshr <2 x i64> %21, splat (i64 47)
  %31 = xor <2 x i64> %30, %.sroa.5.24.vec.insert
  %32 = xor <2 x i64> %31, %21
  %33 = mul <2 x i64> %32, splat (i64 2654435761)
  %34 = lshr <2 x i64> %23, splat (i64 47)
  %35 = xor <2 x i64> %34, %.sroa.8.40.vec.insert
  %36 = xor <2 x i64> %35, %23
  %37 = mul <2 x i64> %36, splat (i64 2654435761)
  %38 = lshr <2 x i64> %25, splat (i64 47)
  %39 = xor <2 x i64> %38, %.sroa.11.56.vec.insert
  %40 = xor <2 x i64> %39, %25
  %41 = mul <2 x i64> %40, splat (i64 2654435761)
  store <2 x i64> %29, ptr %0, align 8
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %33, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %37, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %41, ptr %44, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @target_initsecret(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #0 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local i64 @target_api_len1024(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [192 x i8], align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %.preheader, label %161

.preheader:                                       ; preds = %2, %.preheader
  %5 = phi <2 x i64> [ %64, %.preheader ], [ <i64 2870177450012600261, i64 2654435761>, %2 ]
  %6 = phi <2 x i64> [ %51, %.preheader ], [ <i64 -8796714831421723037, i64 2246822519>, %2 ]
  %7 = phi <2 x i64> [ %38, %.preheader ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %8 = phi <2 x i64> [ %25, %.preheader ], [ <i64 3266489917, i64 -7046029288634856825>, %2 ]
  %9 = phi i64 [ %65, %.preheader ], [ 0, %2 ]
  %10 = shl i64 %9, 6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %12, i32 0, i32 3, i32 1)
  %13 = shl i64 %9, 3
  %14 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %13
  %15 = load <16 x i8>, ptr %11, align 1
  %16 = load <16 x i8>, ptr %14, align 8
  %17 = xor <16 x i8> %16, %15
  %18 = bitcast <16 x i8> %17 to <2 x i64>
  %19 = lshr <2 x i64> %18, splat (i64 32)
  %20 = bitcast <16 x i8> %17 to <4 x i32>
  %lam58_e0 = shufflevector <4 x i32> %20, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam58_z0 = zext <2 x i32> %lam58_e0 to <2 x i64>
  %21 = mul nuw <2 x i64> %19, %lam58_z0
  %22 = bitcast <16 x i8> %15 to <2 x i64>
  %23 = shufflevector <2 x i64> %22, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %24 = add <2 x i64> %8, %23
  %25 = add <2 x i64> %24, %21
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %27 = load <16 x i8>, ptr %26, align 1
  %28 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %29 = load <16 x i8>, ptr %28, align 8
  %30 = xor <16 x i8> %29, %27
  %31 = bitcast <16 x i8> %30 to <2 x i64>
  %32 = lshr <2 x i64> %31, splat (i64 32)
  %33 = bitcast <16 x i8> %30 to <4 x i32>
  %lam66_e0 = shufflevector <4 x i32> %33, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam66_z0 = zext <2 x i32> %lam66_e0 to <2 x i64>
  %34 = mul nuw <2 x i64> %32, %lam66_z0
  %35 = bitcast <16 x i8> %27 to <2 x i64>
  %36 = shufflevector <2 x i64> %35, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %37 = add <2 x i64> %7, %36
  %38 = add <2 x i64> %37, %34
  %39 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %40 = load <16 x i8>, ptr %39, align 1
  %41 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %42 = load <16 x i8>, ptr %41, align 8
  %43 = xor <16 x i8> %42, %40
  %44 = bitcast <16 x i8> %43 to <2 x i64>
  %45 = lshr <2 x i64> %44, splat (i64 32)
  %46 = bitcast <16 x i8> %43 to <4 x i32>
  %lam74_e0 = shufflevector <4 x i32> %46, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam74_z0 = zext <2 x i32> %lam74_e0 to <2 x i64>
  %47 = mul nuw <2 x i64> %45, %lam74_z0
  %48 = bitcast <16 x i8> %40 to <2 x i64>
  %49 = shufflevector <2 x i64> %48, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %50 = add <2 x i64> %6, %49
  %51 = add <2 x i64> %50, %47
  %52 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %53 = load <16 x i8>, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %55 = load <16 x i8>, ptr %54, align 8
  %56 = xor <16 x i8> %55, %53
  %57 = bitcast <16 x i8> %56 to <2 x i64>
  %58 = lshr <2 x i64> %57, splat (i64 32)
  %59 = bitcast <16 x i8> %56 to <4 x i32>
  %lam82_e0 = shufflevector <4 x i32> %59, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam82_z0 = zext <2 x i32> %lam82_e0 to <2 x i64>
  %60 = mul nuw <2 x i64> %58, %lam82_z0
  %61 = bitcast <16 x i8> %53 to <2 x i64>
  %62 = shufflevector <2 x i64> %61, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %63 = add <2 x i64> %5, %62
  %64 = add <2 x i64> %63, %60
  %65 = add nuw nsw i64 %9, 1
  %66 = icmp eq i64 %65, 15
  br i1 %66, label %67, label %.preheader

67:                                               ; preds = %.preheader
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %69 = load <16 x i8>, ptr %68, align 1
  %70 = xor <16 x i8> %69, <i8 -97, i8 126, i8 -55, i8 -39, i8 120, i8 115, i8 100, i8 -22, i8 -59, i8 -84, i8 -125, i8 52, i8 -45, i8 -21, i8 -61, i8 -59>
  %71 = bitcast <16 x i8> %70 to <2 x i64>
  %72 = lshr <2 x i64> %71, splat (i64 32)
  %73 = bitcast <16 x i8> %70 to <4 x i32>
  %lam90_e0 = shufflevector <4 x i32> %73, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam90_z0 = zext <2 x i32> %lam90_e0 to <2 x i64>
  %74 = mul nuw <2 x i64> %72, %lam90_z0
  %75 = bitcast <16 x i8> %69 to <2 x i64>
  %76 = shufflevector <2 x i64> %75, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %77 = add <2 x i64> %25, %76
  %78 = add <2 x i64> %77, %74
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %80 = load <16 x i8>, ptr %79, align 1
  %81 = xor <16 x i8> %80, <i8 -127, i8 -96, i8 -1, i8 -6, i8 19, i8 99, i8 -21, i8 23, i8 13, i8 -35, i8 81, i8 -73, i8 -16, i8 -38, i8 73, i8 -45>
  %82 = bitcast <16 x i8> %81 to <2 x i64>
  %83 = lshr <2 x i64> %82, splat (i64 32)
  %84 = bitcast <16 x i8> %81 to <4 x i32>
  %lam98_e0 = shufflevector <4 x i32> %84, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam98_z0 = zext <2 x i32> %lam98_e0 to <2 x i64>
  %85 = mul nuw <2 x i64> %83, %lam98_z0
  %86 = bitcast <16 x i8> %80 to <2 x i64>
  %87 = shufflevector <2 x i64> %86, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %88 = add <2 x i64> %38, %87
  %89 = add <2 x i64> %88, %85
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %91 = load <16 x i8>, ptr %90, align 1
  %92 = xor <16 x i8> %91, <i8 22, i8 85, i8 38, i8 41, i8 -44, i8 104, i8 -98, i8 43, i8 22, i8 -66, i8 88, i8 125, i8 71, i8 -95, i8 -4, i8 -113>
  %93 = bitcast <16 x i8> %92 to <2 x i64>
  %94 = lshr <2 x i64> %93, splat (i64 32)
  %95 = bitcast <16 x i8> %92 to <4 x i32>
  %lam106_e0 = shufflevector <4 x i32> %95, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam106_z0 = zext <2 x i32> %lam106_e0 to <2 x i64>
  %96 = mul nuw <2 x i64> %94, %lam106_z0
  %97 = bitcast <16 x i8> %91 to <2 x i64>
  %98 = shufflevector <2 x i64> %97, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %99 = add <2 x i64> %51, %98
  %100 = add <2 x i64> %99, %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %102 = load <16 x i8>, ptr %101, align 1
  %103 = xor <16 x i8> %102, <i8 -8, i8 -72, i8 -47, i8 122, i8 -48, i8 49, i8 -50, i8 69, i8 -53, i8 58, i8 -113, i8 -107, i8 22, i8 4, i8 40, i8 -81>
  %104 = bitcast <16 x i8> %103 to <2 x i64>
  %105 = lshr <2 x i64> %104, splat (i64 32)
  %106 = bitcast <16 x i8> %103 to <4 x i32>
  %lam114_e0 = shufflevector <4 x i32> %106, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam114_z0 = zext <2 x i32> %lam114_e0 to <2 x i64>
  %107 = mul nuw <2 x i64> %105, %lam114_z0
  %108 = bitcast <16 x i8> %102 to <2 x i64>
  %109 = shufflevector <2 x i64> %108, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %110 = add <2 x i64> %64, %109
  %111 = add <2 x i64> %110, %107
  %112 = extractelement <2 x i64> %78, i64 0
  %113 = extractelement <2 x i64> %78, i64 1
  %114 = xor i64 %112, 7914194659941938988
  %115 = xor i64 %113, -6611157965513653271
  %116 = zext i64 %114 to i128
  %117 = zext i64 %115 to i128
  %118 = mul nuw i128 %117, %116
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %121, -2457058741658706944
  %123 = extractelement <2 x i64> %89, i64 0
  %124 = extractelement <2 x i64> %89, i64 1
  %125 = xor i64 %123, -1839215637059881052
  %126 = xor i64 %124, -3433288310154277810
  %127 = zext i64 %125 to i128
  %128 = zext i64 %126 to i128
  %129 = mul nuw i128 %128, %127
  %130 = lshr i128 %129, 64
  %131 = xor i128 %130, %129
  %132 = trunc i128 %131 to i64
  %133 = add i64 %122, %132
  %134 = extractelement <2 x i64> %100, i64 0
  %135 = extractelement <2 x i64> %100, i64 1
  %136 = xor i64 %134, 5046485836271438973
  %137 = xor i64 %135, -8055285457383852172
  %138 = zext i64 %136 to i128
  %139 = zext i64 %137 to i128
  %140 = mul nuw i128 %139, %138
  %141 = lshr i128 %140, 64
  %142 = xor i128 %141, %140
  %143 = trunc i128 %142 to i64
  %144 = add i64 %133, %143
  %145 = extractelement <2 x i64> %111, i64 0
  %146 = extractelement <2 x i64> %111, i64 1
  %147 = xor i64 %145, 5920048007935066598
  %148 = xor i64 %146, 7336514198459093435
  %149 = zext i64 %147 to i128
  %150 = zext i64 %148 to i128
  %151 = mul nuw i128 %150, %149
  %152 = lshr i128 %151, 64
  %153 = xor i128 %152, %151
  %154 = trunc i128 %153 to i64
  %155 = add i64 %144, %154
  %156 = lshr i64 %155, 37
  %157 = xor i64 %156, %155
  %158 = mul i64 %157, 1609587791953885689
  %159 = lshr i64 %158, 32
  %160 = xor i64 %159, %158
  br label %390

161:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #4
  %162 = add i64 %1, -4734510112055689544
  %163 = sub i64 2066345149520216444, %1
  store i64 %162, ptr %3, align 8
  %164 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %163, ptr %164, align 8
  %165 = add i64 %1, -2623469361688619810
  %166 = sub i64 2262974939099578482, %1
  %167 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %165, ptr %167, align 8
  %168 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %166, ptr %168, align 8
  %169 = add i64 %1, 8711581037947681227
  %170 = sub i64 2410270004345854594, %1
  %171 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %169, ptr %171, align 8
  %172 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %170, ptr %172, align 8
  %173 = add i64 %1, -8204357891075471176
  %174 = sub i64 5487137525590930912, %1
  %175 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %173, ptr %175, align 8
  %176 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %174, ptr %176, align 8
  %177 = add i64 %1, -3818837453329782724
  %178 = sub i64 -6688317018830679928, %1
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %177, ptr %179, align 8
  %180 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %178, ptr %180, align 8
  %181 = add i64 %1, 5690594596133299313
  %182 = sub i64 -2833645246901970632, %1
  %183 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %181, ptr %183, align 8
  %184 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %182, ptr %184, align 8
  %185 = add i64 %1, 4554437623014685352
  %186 = sub i64 2111919702937427193, %1
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %185, ptr %187, align 8
  %188 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %186, ptr %188, align 8
  %189 = add i64 %1, 3556072174620004746
  %190 = sub i64 7238261902898274248, %1
  %191 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %189, ptr %191, align 8
  %192 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %190, ptr %192, align 8
  %193 = add i64 %1, -4329134394285701654
  %194 = sub i64 -1485321483350670907, %1
  %195 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %193, ptr %195, align 8
  %196 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %194, ptr %196, align 8
  %197 = add i64 %1, 5321830579834785047
  %198 = sub i64 -7032137544937171245, %1
  %199 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 %197, ptr %199, align 8
  %200 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 %198, ptr %200, align 8
  %201 = add i64 %1, -242834301215959509
  %202 = sub i64 -3588858202114426737, %1
  %203 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %201, ptr %203, align 8
  %204 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %202, ptr %204, align 8
  %205 = add i64 %1, 2883454493032893253
  %206 = sub i64 9097354517224871855, %1
  %207 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %205, ptr %207, align 8
  %208 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 %206, ptr %208, align 8
  br label %209

209:                                              ; preds = %209, %161
  %210 = phi <2 x i64> [ %269, %209 ], [ <i64 2870177450012600261, i64 2654435761>, %161 ]
  %211 = phi <2 x i64> [ %256, %209 ], [ <i64 -8796714831421723037, i64 2246822519>, %161 ]
  %212 = phi <2 x i64> [ %243, %209 ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %161 ]
  %213 = phi <2 x i64> [ %230, %209 ], [ <i64 3266489917, i64 -7046029288634856825>, %161 ]
  %214 = phi i64 [ %270, %209 ], [ 0, %161 ]
  %215 = shl i64 %214, 6
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 %215
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %217, i32 0, i32 3, i32 1)
  %218 = shl i64 %214, 3
  %219 = getelementptr inbounds nuw i8, ptr %3, i64 %218
  %220 = load <16 x i8>, ptr %216, align 1
  %221 = load <16 x i8>, ptr %219, align 8
  %222 = xor <16 x i8> %221, %220
  %223 = bitcast <16 x i8> %222 to <2 x i64>
  %224 = lshr <2 x i64> %223, splat (i64 32)
  %225 = bitcast <16 x i8> %222 to <4 x i32>
  %lam122_e0 = shufflevector <4 x i32> %225, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam122_z0 = zext <2 x i32> %lam122_e0 to <2 x i64>
  %226 = mul nuw <2 x i64> %224, %lam122_z0
  %227 = bitcast <16 x i8> %220 to <2 x i64>
  %228 = shufflevector <2 x i64> %227, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %229 = add <2 x i64> %213, %228
  %230 = add <2 x i64> %229, %226
  %231 = getelementptr inbounds nuw i8, ptr %216, i64 16
  %232 = load <16 x i8>, ptr %231, align 1
  %233 = getelementptr inbounds nuw i8, ptr %219, i64 16
  %234 = load <16 x i8>, ptr %233, align 8
  %235 = xor <16 x i8> %234, %232
  %236 = bitcast <16 x i8> %235 to <2 x i64>
  %237 = lshr <2 x i64> %236, splat (i64 32)
  %238 = bitcast <16 x i8> %235 to <4 x i32>
  %lam130_e0 = shufflevector <4 x i32> %238, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam130_z0 = zext <2 x i32> %lam130_e0 to <2 x i64>
  %239 = mul nuw <2 x i64> %237, %lam130_z0
  %240 = bitcast <16 x i8> %232 to <2 x i64>
  %241 = shufflevector <2 x i64> %240, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %242 = add <2 x i64> %212, %241
  %243 = add <2 x i64> %242, %239
  %244 = getelementptr inbounds nuw i8, ptr %216, i64 32
  %245 = load <16 x i8>, ptr %244, align 1
  %246 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %247 = load <16 x i8>, ptr %246, align 8
  %248 = xor <16 x i8> %247, %245
  %249 = bitcast <16 x i8> %248 to <2 x i64>
  %250 = lshr <2 x i64> %249, splat (i64 32)
  %251 = bitcast <16 x i8> %248 to <4 x i32>
  %lam138_e0 = shufflevector <4 x i32> %251, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam138_z0 = zext <2 x i32> %lam138_e0 to <2 x i64>
  %252 = mul nuw <2 x i64> %250, %lam138_z0
  %253 = bitcast <16 x i8> %245 to <2 x i64>
  %254 = shufflevector <2 x i64> %253, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %255 = add <2 x i64> %211, %254
  %256 = add <2 x i64> %255, %252
  %257 = getelementptr inbounds nuw i8, ptr %216, i64 48
  %258 = load <16 x i8>, ptr %257, align 1
  %259 = getelementptr inbounds nuw i8, ptr %219, i64 48
  %260 = load <16 x i8>, ptr %259, align 8
  %261 = xor <16 x i8> %260, %258
  %262 = bitcast <16 x i8> %261 to <2 x i64>
  %263 = lshr <2 x i64> %262, splat (i64 32)
  %264 = bitcast <16 x i8> %261 to <4 x i32>
  %lam146_e0 = shufflevector <4 x i32> %264, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam146_z0 = zext <2 x i32> %lam146_e0 to <2 x i64>
  %265 = mul nuw <2 x i64> %263, %lam146_z0
  %266 = bitcast <16 x i8> %258 to <2 x i64>
  %267 = shufflevector <2 x i64> %266, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %268 = add <2 x i64> %210, %267
  %269 = add <2 x i64> %268, %265
  %270 = add nuw nsw i64 %214, 1
  %271 = icmp eq i64 %270, 15
  br i1 %271, label %272, label %209

272:                                              ; preds = %209
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %274 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %275 = load <16 x i8>, ptr %273, align 1
  %276 = load <16 x i8>, ptr %274, align 1
  %277 = xor <16 x i8> %276, %275
  %278 = bitcast <16 x i8> %277 to <2 x i64>
  %279 = lshr <2 x i64> %278, splat (i64 32)
  %280 = bitcast <16 x i8> %277 to <4 x i32>
  %lam154_e0 = shufflevector <4 x i32> %280, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam154_z0 = zext <2 x i32> %lam154_e0 to <2 x i64>
  %281 = mul nuw <2 x i64> %279, %lam154_z0
  %282 = bitcast <16 x i8> %275 to <2 x i64>
  %283 = shufflevector <2 x i64> %282, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %284 = add <2 x i64> %230, %283
  %285 = add <2 x i64> %284, %281
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %287 = load <16 x i8>, ptr %286, align 1
  %288 = getelementptr inbounds nuw i8, ptr %3, i64 137
  %289 = load <16 x i8>, ptr %288, align 1
  %290 = xor <16 x i8> %289, %287
  %291 = bitcast <16 x i8> %290 to <2 x i64>
  %292 = lshr <2 x i64> %291, splat (i64 32)
  %293 = bitcast <16 x i8> %290 to <4 x i32>
  %lam162_e0 = shufflevector <4 x i32> %293, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam162_z0 = zext <2 x i32> %lam162_e0 to <2 x i64>
  %294 = mul nuw <2 x i64> %292, %lam162_z0
  %295 = bitcast <16 x i8> %287 to <2 x i64>
  %296 = shufflevector <2 x i64> %295, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %297 = add <2 x i64> %243, %296
  %298 = add <2 x i64> %297, %294
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %300 = load <16 x i8>, ptr %299, align 1
  %301 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %302 = load <16 x i8>, ptr %301, align 1
  %303 = xor <16 x i8> %302, %300
  %304 = bitcast <16 x i8> %303 to <2 x i64>
  %305 = lshr <2 x i64> %304, splat (i64 32)
  %306 = bitcast <16 x i8> %303 to <4 x i32>
  %lam170_e0 = shufflevector <4 x i32> %306, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam170_z0 = zext <2 x i32> %lam170_e0 to <2 x i64>
  %307 = mul nuw <2 x i64> %305, %lam170_z0
  %308 = bitcast <16 x i8> %300 to <2 x i64>
  %309 = shufflevector <2 x i64> %308, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %310 = add <2 x i64> %256, %309
  %311 = add <2 x i64> %310, %307
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %313 = load <16 x i8>, ptr %312, align 1
  %314 = getelementptr inbounds nuw i8, ptr %3, i64 169
  %315 = load <16 x i8>, ptr %314, align 1
  %316 = xor <16 x i8> %315, %313
  %317 = bitcast <16 x i8> %316 to <2 x i64>
  %318 = lshr <2 x i64> %317, splat (i64 32)
  %319 = bitcast <16 x i8> %316 to <4 x i32>
  %lam178_e0 = shufflevector <4 x i32> %319, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam178_z0 = zext <2 x i32> %lam178_e0 to <2 x i64>
  %320 = mul nuw <2 x i64> %318, %lam178_z0
  %321 = bitcast <16 x i8> %313 to <2 x i64>
  %322 = shufflevector <2 x i64> %321, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %323 = add <2 x i64> %269, %322
  %324 = add <2 x i64> %323, %320
  %325 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %326 = extractelement <2 x i64> %285, i64 0
  %327 = extractelement <2 x i64> %285, i64 1
  %328 = load i64, ptr %325, align 1
  %329 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %330 = load i64, ptr %329, align 1
  %331 = xor i64 %328, %326
  %332 = xor i64 %330, %327
  %333 = zext i64 %331 to i128
  %334 = zext i64 %332 to i128
  %335 = mul nuw i128 %334, %333
  %336 = lshr i128 %335, 64
  %337 = xor i128 %336, %335
  %338 = trunc i128 %337 to i64
  %339 = add i64 %338, -2457058741658706944
  %340 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %341 = extractelement <2 x i64> %298, i64 0
  %342 = extractelement <2 x i64> %298, i64 1
  %343 = load i64, ptr %340, align 1
  %344 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %345 = load i64, ptr %344, align 1
  %346 = xor i64 %343, %341
  %347 = xor i64 %345, %342
  %348 = zext i64 %346 to i128
  %349 = zext i64 %347 to i128
  %350 = mul nuw i128 %349, %348
  %351 = lshr i128 %350, 64
  %352 = xor i128 %351, %350
  %353 = trunc i128 %352 to i64
  %354 = add i64 %339, %353
  %355 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %356 = extractelement <2 x i64> %311, i64 0
  %357 = extractelement <2 x i64> %311, i64 1
  %358 = load i64, ptr %355, align 1
  %359 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %358, %356
  %362 = xor i64 %360, %357
  %363 = zext i64 %361 to i128
  %364 = zext i64 %362 to i128
  %365 = mul nuw i128 %364, %363
  %366 = lshr i128 %365, 64
  %367 = xor i128 %366, %365
  %368 = trunc i128 %367 to i64
  %369 = add i64 %354, %368
  %370 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %371 = extractelement <2 x i64> %324, i64 0
  %372 = extractelement <2 x i64> %324, i64 1
  %373 = load i64, ptr %370, align 1
  %374 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %375 = load i64, ptr %374, align 1
  %376 = xor i64 %373, %371
  %377 = xor i64 %375, %372
  %378 = zext i64 %376 to i128
  %379 = zext i64 %377 to i128
  %380 = mul nuw i128 %379, %378
  %381 = lshr i128 %380, 64
  %382 = xor i128 %381, %380
  %383 = trunc i128 %382 to i64
  %384 = add i64 %369, %383
  %385 = lshr i64 %384, 37
  %386 = xor i64 %385, %384
  %387 = mul i64 %386, 1609587791953885689
  %388 = lshr i64 %387, 32
  %389 = xor i64 %388, %387
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #4
  br label %390

390:                                              ; preds = %272, %67
  %391 = phi i64 [ %160, %67 ], [ %389, %272 ]
  ret i64 %391
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
