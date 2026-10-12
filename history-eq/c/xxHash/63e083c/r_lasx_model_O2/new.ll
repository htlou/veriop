; ModuleID = '63e083c/r_lasx_model/new.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/63e083c/wrap_simd.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @target_acc512(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <4 x i64> poison, i64 %1, i64 0
  %27 = insertelement <4 x i64> %26, i64 %2, i64 1
  %28 = insertelement <4 x i64> %27, i64 %3, i64 2
  %29 = insertelement <4 x i64> %28, i64 %4, i64 3
  %30 = insertelement <4 x i64> poison, i64 %5, i64 0
  %31 = insertelement <4 x i64> %30, i64 %6, i64 1
  %32 = insertelement <4 x i64> %31, i64 %7, i64 2
  %33 = insertelement <4 x i64> %32, i64 %8, i64 3
  %.sroa.03.0.vec.insert = insertelement <4 x i64> poison, i64 %9, i64 0
  %.sroa.03.8.vec.insert = insertelement <4 x i64> %.sroa.03.0.vec.insert, i64 %10, i64 1
  %.sroa.03.16.vec.insert = insertelement <4 x i64> %.sroa.03.8.vec.insert, i64 %11, i64 2
  %.sroa.03.24.vec.insert = insertelement <4 x i64> %.sroa.03.16.vec.insert, i64 %12, i64 3
  %.sroa.75.32.vec.insert = insertelement <4 x i64> poison, i64 %13, i64 0
  %.sroa.75.40.vec.insert = insertelement <4 x i64> %.sroa.75.32.vec.insert, i64 %14, i64 1
  %.sroa.75.48.vec.insert = insertelement <4 x i64> %.sroa.75.40.vec.insert, i64 %15, i64 2
  %.sroa.75.56.vec.insert = insertelement <4 x i64> %.sroa.75.48.vec.insert, i64 %16, i64 3
  %.sroa.0.0.vec.insert = insertelement <4 x i64> poison, i64 %17, i64 0
  %.sroa.0.8.vec.insert = insertelement <4 x i64> %.sroa.0.0.vec.insert, i64 %18, i64 1
  %.sroa.0.16.vec.insert = insertelement <4 x i64> %.sroa.0.8.vec.insert, i64 %19, i64 2
  %.sroa.0.24.vec.insert = insertelement <4 x i64> %.sroa.0.16.vec.insert, i64 %20, i64 3
  %.sroa.7.32.vec.insert = insertelement <4 x i64> poison, i64 %21, i64 0
  %.sroa.7.40.vec.insert = insertelement <4 x i64> %.sroa.7.32.vec.insert, i64 %22, i64 1
  %.sroa.7.48.vec.insert = insertelement <4 x i64> %.sroa.7.40.vec.insert, i64 %23, i64 2
  %.sroa.7.56.vec.insert = insertelement <4 x i64> %.sroa.7.48.vec.insert, i64 %24, i64 3
  %34 = xor <4 x i64> %.sroa.0.24.vec.insert, %.sroa.03.24.vec.insert
  %35 = lshr <4 x i64> %34, splat (i64 32)
  %lam5_z0 = and <4 x i64> %34, splat (i64 4294967295)
  %36 = mul nuw <4 x i64> %lam5_z0, %35
  %37 = shufflevector <4 x i64> %.sroa.03.24.vec.insert, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %38 = add <4 x i64> %29, %37
  %39 = add <4 x i64> %38, %36
  %40 = xor <4 x i64> %.sroa.7.56.vec.insert, %.sroa.75.56.vec.insert
  %41 = lshr <4 x i64> %40, splat (i64 32)
  %lam13_z0 = and <4 x i64> %40, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %lam13_z0, %41
  %43 = shufflevector <4 x i64> %.sroa.75.56.vec.insert, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %44 = add <4 x i64> %33, %43
  %45 = add <4 x i64> %44, %42
  store <4 x i64> %39, ptr %0, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %45, ptr %46, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @target_scramble(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = insertelement <4 x i64> poison, i64 %1, i64 0
  %19 = insertelement <4 x i64> %18, i64 %2, i64 1
  %20 = insertelement <4 x i64> %19, i64 %3, i64 2
  %21 = insertelement <4 x i64> %20, i64 %4, i64 3
  %22 = insertelement <4 x i64> poison, i64 %5, i64 0
  %23 = insertelement <4 x i64> %22, i64 %6, i64 1
  %24 = insertelement <4 x i64> %23, i64 %7, i64 2
  %25 = insertelement <4 x i64> %24, i64 %8, i64 3
  %.sroa.0.0.vec.insert = insertelement <4 x i64> poison, i64 %9, i64 0
  %.sroa.0.8.vec.insert = insertelement <4 x i64> %.sroa.0.0.vec.insert, i64 %10, i64 1
  %.sroa.0.16.vec.insert = insertelement <4 x i64> %.sroa.0.8.vec.insert, i64 %11, i64 2
  %.sroa.0.24.vec.insert = insertelement <4 x i64> %.sroa.0.16.vec.insert, i64 %12, i64 3
  %.sroa.7.32.vec.insert = insertelement <4 x i64> poison, i64 %13, i64 0
  %.sroa.7.40.vec.insert = insertelement <4 x i64> %.sroa.7.32.vec.insert, i64 %14, i64 1
  %.sroa.7.48.vec.insert = insertelement <4 x i64> %.sroa.7.40.vec.insert, i64 %15, i64 2
  %.sroa.7.56.vec.insert = insertelement <4 x i64> %.sroa.7.48.vec.insert, i64 %16, i64 3
  %26 = lshr <4 x i64> %21, splat (i64 47)
  %27 = xor <4 x i64> %26, %.sroa.0.24.vec.insert
  %28 = xor <4 x i64> %27, %21
  %29 = mul <4 x i64> %28, splat (i64 2654435761)
  %30 = lshr <4 x i64> %25, splat (i64 47)
  %31 = xor <4 x i64> %30, %.sroa.7.56.vec.insert
  %32 = xor <4 x i64> %31, %25
  %33 = mul <4 x i64> %32, splat (i64 2654435761)
  store <4 x i64> %29, ptr %0, align 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %33, ptr %34, align 8
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
  br i1 %4, label %.preheader, label %111

.preheader:                                       ; preds = %2, %.preheader
  %5 = phi <4 x i64> [ %36, %.preheader ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %6 = phi <4 x i64> [ %23, %.preheader ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %7 = phi i64 [ %37, %.preheader ], [ 0, %2 ]
  %8 = shl i64 %7, 6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %10, i32 0, i32 3, i32 1)
  %11 = shl i64 %7, 3
  %12 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %11
  %13 = load <32 x i8>, ptr %9, align 1
  %14 = load <32 x i8>, ptr %12, align 8
  %15 = xor <32 x i8> %14, %13
  %16 = bitcast <32 x i8> %15 to <4 x i64>
  %17 = lshr <4 x i64> %16, splat (i64 32)
  %18 = bitcast <32 x i8> %15 to <8 x i32>
  %lam32_e0 = shufflevector <8 x i32> %18, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam32_z0 = zext <4 x i32> %lam32_e0 to <4 x i64>
  %19 = mul nuw <4 x i64> %17, %lam32_z0
  %20 = bitcast <32 x i8> %13 to <4 x i64>
  %21 = shufflevector <4 x i64> %20, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %22 = add <4 x i64> %6, %21
  %23 = add <4 x i64> %22, %19
  %24 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %25 = load <32 x i8>, ptr %24, align 1
  %26 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %27 = load <32 x i8>, ptr %26, align 8
  %28 = xor <32 x i8> %27, %25
  %29 = bitcast <32 x i8> %28 to <4 x i64>
  %30 = lshr <4 x i64> %29, splat (i64 32)
  %31 = bitcast <32 x i8> %28 to <8 x i32>
  %lam40_e0 = shufflevector <8 x i32> %31, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam40_z0 = zext <4 x i32> %lam40_e0 to <4 x i64>
  %32 = mul nuw <4 x i64> %30, %lam40_z0
  %33 = bitcast <32 x i8> %25 to <4 x i64>
  %34 = shufflevector <4 x i64> %33, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %35 = add <4 x i64> %5, %34
  %36 = add <4 x i64> %35, %32
  %37 = add nuw nsw i64 %7, 1
  %38 = icmp eq i64 %37, 15
  br i1 %38, label %39, label %.preheader

39:                                               ; preds = %.preheader
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %41 = load <32 x i8>, ptr %40, align 1
  %42 = xor <32 x i8> %41, <i8 -97, i8 126, i8 -55, i8 -39, i8 120, i8 115, i8 100, i8 -22, i8 -59, i8 -84, i8 -125, i8 52, i8 -45, i8 -21, i8 -61, i8 -59, i8 -127, i8 -96, i8 -1, i8 -6, i8 19, i8 99, i8 -21, i8 23, i8 13, i8 -35, i8 81, i8 -73, i8 -16, i8 -38, i8 73, i8 -45>
  %43 = bitcast <32 x i8> %42 to <4 x i64>
  %44 = lshr <4 x i64> %43, splat (i64 32)
  %45 = bitcast <32 x i8> %42 to <8 x i32>
  %lam48_e0 = shufflevector <8 x i32> %45, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam48_z0 = zext <4 x i32> %lam48_e0 to <4 x i64>
  %46 = mul nuw <4 x i64> %44, %lam48_z0
  %47 = bitcast <32 x i8> %41 to <4 x i64>
  %48 = shufflevector <4 x i64> %47, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %49 = add <4 x i64> %23, %48
  %50 = add <4 x i64> %49, %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %52 = load <32 x i8>, ptr %51, align 1
  %53 = xor <32 x i8> %52, <i8 22, i8 85, i8 38, i8 41, i8 -44, i8 104, i8 -98, i8 43, i8 22, i8 -66, i8 88, i8 125, i8 71, i8 -95, i8 -4, i8 -113, i8 -8, i8 -72, i8 -47, i8 122, i8 -48, i8 49, i8 -50, i8 69, i8 -53, i8 58, i8 -113, i8 -107, i8 22, i8 4, i8 40, i8 -81>
  %54 = bitcast <32 x i8> %53 to <4 x i64>
  %55 = lshr <4 x i64> %54, splat (i64 32)
  %56 = bitcast <32 x i8> %53 to <8 x i32>
  %lam56_e0 = shufflevector <8 x i32> %56, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam56_z0 = zext <4 x i32> %lam56_e0 to <4 x i64>
  %57 = mul nuw <4 x i64> %55, %lam56_z0
  %58 = bitcast <32 x i8> %52 to <4 x i64>
  %59 = shufflevector <4 x i64> %58, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %60 = add <4 x i64> %36, %59
  %61 = add <4 x i64> %60, %57
  %62 = extractelement <4 x i64> %50, i64 0
  %63 = extractelement <4 x i64> %50, i64 1
  %64 = xor i64 %62, 7914194659941938988
  %65 = xor i64 %63, -6611157965513653271
  %66 = zext i64 %64 to i128
  %67 = zext i64 %65 to i128
  %68 = mul nuw i128 %67, %66
  %69 = lshr i128 %68, 64
  %70 = xor i128 %69, %68
  %71 = trunc i128 %70 to i64
  %72 = add i64 %71, -2457058741658706944
  %73 = extractelement <4 x i64> %50, i64 2
  %74 = extractelement <4 x i64> %50, i64 3
  %75 = xor i64 %73, -1839215637059881052
  %76 = xor i64 %74, -3433288310154277810
  %77 = zext i64 %75 to i128
  %78 = zext i64 %76 to i128
  %79 = mul nuw i128 %78, %77
  %80 = lshr i128 %79, 64
  %81 = xor i128 %80, %79
  %82 = trunc i128 %81 to i64
  %83 = add i64 %72, %82
  %84 = extractelement <4 x i64> %61, i64 0
  %85 = extractelement <4 x i64> %61, i64 1
  %86 = xor i64 %84, 5046485836271438973
  %87 = xor i64 %85, -8055285457383852172
  %88 = zext i64 %86 to i128
  %89 = zext i64 %87 to i128
  %90 = mul nuw i128 %89, %88
  %91 = lshr i128 %90, 64
  %92 = xor i128 %91, %90
  %93 = trunc i128 %92 to i64
  %94 = add i64 %83, %93
  %95 = extractelement <4 x i64> %61, i64 2
  %96 = extractelement <4 x i64> %61, i64 3
  %97 = xor i64 %95, 5920048007935066598
  %98 = xor i64 %96, 7336514198459093435
  %99 = zext i64 %97 to i128
  %100 = zext i64 %98 to i128
  %101 = mul nuw i128 %100, %99
  %102 = lshr i128 %101, 64
  %103 = xor i128 %102, %101
  %104 = trunc i128 %103 to i64
  %105 = add i64 %94, %104
  %106 = lshr i64 %105, 37
  %107 = xor i64 %106, %105
  %108 = mul i64 %107, 1609587791953885689
  %109 = lshr i64 %108, 32
  %110 = xor i64 %109, %108
  br label %286

111:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #4
  %112 = add i64 %1, -4734510112055689544
  %113 = sub i64 2066345149520216444, %1
  store i64 %112, ptr %3, align 8
  %114 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %113, ptr %114, align 8
  %115 = add i64 %1, -2623469361688619810
  %116 = sub i64 2262974939099578482, %1
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %115, ptr %117, align 8
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %116, ptr %118, align 8
  %119 = add i64 %1, 8711581037947681227
  %120 = sub i64 2410270004345854594, %1
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %119, ptr %121, align 8
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %120, ptr %122, align 8
  %123 = add i64 %1, -8204357891075471176
  %124 = sub i64 5487137525590930912, %1
  %125 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %123, ptr %125, align 8
  %126 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %124, ptr %126, align 8
  %127 = add i64 %1, -3818837453329782724
  %128 = sub i64 -6688317018830679928, %1
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %127, ptr %129, align 8
  %130 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %128, ptr %130, align 8
  %131 = add i64 %1, 5690594596133299313
  %132 = sub i64 -2833645246901970632, %1
  %133 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %131, ptr %133, align 8
  %134 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %132, ptr %134, align 8
  %135 = add i64 %1, 4554437623014685352
  %136 = sub i64 2111919702937427193, %1
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %135, ptr %137, align 8
  %138 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %136, ptr %138, align 8
  %139 = add i64 %1, 3556072174620004746
  %140 = sub i64 7238261902898274248, %1
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %139, ptr %141, align 8
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %140, ptr %142, align 8
  %143 = add i64 %1, -4329134394285701654
  %144 = sub i64 -1485321483350670907, %1
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %143, ptr %145, align 8
  %146 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %144, ptr %146, align 8
  %147 = add i64 %1, 5321830579834785047
  %148 = sub i64 -7032137544937171245, %1
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 %147, ptr %149, align 8
  %150 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 %148, ptr %150, align 8
  %151 = add i64 %1, -242834301215959509
  %152 = sub i64 -3588858202114426737, %1
  %153 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %151, ptr %153, align 8
  %154 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %152, ptr %154, align 8
  %155 = add i64 %1, 2883454493032893253
  %156 = sub i64 9097354517224871855, %1
  %157 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %155, ptr %157, align 8
  %158 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 %156, ptr %158, align 8
  br label %159

159:                                              ; preds = %159, %111
  %160 = phi <4 x i64> [ %191, %159 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %111 ]
  %161 = phi <4 x i64> [ %178, %159 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %111 ]
  %162 = phi i64 [ %192, %159 ], [ 0, %111 ]
  %163 = shl i64 %162, 6
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 %163
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %165, i32 0, i32 3, i32 1)
  %166 = shl i64 %162, 3
  %167 = getelementptr inbounds nuw i8, ptr %3, i64 %166
  %168 = load <32 x i8>, ptr %164, align 1
  %169 = load <32 x i8>, ptr %167, align 8
  %170 = xor <32 x i8> %169, %168
  %171 = bitcast <32 x i8> %170 to <4 x i64>
  %172 = lshr <4 x i64> %171, splat (i64 32)
  %173 = bitcast <32 x i8> %170 to <8 x i32>
  %lam64_e0 = shufflevector <8 x i32> %173, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam64_z0 = zext <4 x i32> %lam64_e0 to <4 x i64>
  %174 = mul nuw <4 x i64> %172, %lam64_z0
  %175 = bitcast <32 x i8> %168 to <4 x i64>
  %176 = shufflevector <4 x i64> %175, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %177 = add <4 x i64> %161, %176
  %178 = add <4 x i64> %177, %174
  %179 = getelementptr inbounds nuw i8, ptr %164, i64 32
  %180 = load <32 x i8>, ptr %179, align 1
  %181 = getelementptr inbounds nuw i8, ptr %167, i64 32
  %182 = load <32 x i8>, ptr %181, align 8
  %183 = xor <32 x i8> %182, %180
  %184 = bitcast <32 x i8> %183 to <4 x i64>
  %185 = lshr <4 x i64> %184, splat (i64 32)
  %186 = bitcast <32 x i8> %183 to <8 x i32>
  %lam72_e0 = shufflevector <8 x i32> %186, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam72_z0 = zext <4 x i32> %lam72_e0 to <4 x i64>
  %187 = mul nuw <4 x i64> %185, %lam72_z0
  %188 = bitcast <32 x i8> %180 to <4 x i64>
  %189 = shufflevector <4 x i64> %188, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %190 = add <4 x i64> %160, %189
  %191 = add <4 x i64> %190, %187
  %192 = add nuw nsw i64 %162, 1
  %193 = icmp eq i64 %192, 15
  br i1 %193, label %194, label %159

194:                                              ; preds = %159
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %196 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %197 = load <32 x i8>, ptr %195, align 1
  %198 = load <32 x i8>, ptr %196, align 1
  %199 = xor <32 x i8> %198, %197
  %200 = bitcast <32 x i8> %199 to <4 x i64>
  %201 = lshr <4 x i64> %200, splat (i64 32)
  %202 = bitcast <32 x i8> %199 to <8 x i32>
  %lam80_e0 = shufflevector <8 x i32> %202, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam80_z0 = zext <4 x i32> %lam80_e0 to <4 x i64>
  %203 = mul nuw <4 x i64> %201, %lam80_z0
  %204 = bitcast <32 x i8> %197 to <4 x i64>
  %205 = shufflevector <4 x i64> %204, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %206 = add <4 x i64> %178, %205
  %207 = add <4 x i64> %206, %203
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %209 = load <32 x i8>, ptr %208, align 1
  %210 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %211 = load <32 x i8>, ptr %210, align 1
  %212 = xor <32 x i8> %211, %209
  %213 = bitcast <32 x i8> %212 to <4 x i64>
  %214 = lshr <4 x i64> %213, splat (i64 32)
  %215 = bitcast <32 x i8> %212 to <8 x i32>
  %lam88_e0 = shufflevector <8 x i32> %215, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam88_z0 = zext <4 x i32> %lam88_e0 to <4 x i64>
  %216 = mul nuw <4 x i64> %214, %lam88_z0
  %217 = bitcast <32 x i8> %209 to <4 x i64>
  %218 = shufflevector <4 x i64> %217, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %219 = add <4 x i64> %191, %218
  %220 = add <4 x i64> %219, %216
  %221 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %222 = extractelement <4 x i64> %207, i64 0
  %223 = extractelement <4 x i64> %207, i64 1
  %224 = load i64, ptr %221, align 1
  %225 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %226 = load i64, ptr %225, align 1
  %227 = xor i64 %222, %224
  %228 = xor i64 %223, %226
  %229 = zext i64 %227 to i128
  %230 = zext i64 %228 to i128
  %231 = mul nuw i128 %230, %229
  %232 = lshr i128 %231, 64
  %233 = xor i128 %232, %231
  %234 = trunc i128 %233 to i64
  %235 = add i64 %234, -2457058741658706944
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %237 = extractelement <4 x i64> %207, i64 2
  %238 = extractelement <4 x i64> %207, i64 3
  %239 = load i64, ptr %236, align 1
  %240 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %241 = load i64, ptr %240, align 1
  %242 = xor i64 %237, %239
  %243 = xor i64 %238, %241
  %244 = zext i64 %242 to i128
  %245 = zext i64 %243 to i128
  %246 = mul nuw i128 %245, %244
  %247 = lshr i128 %246, 64
  %248 = xor i128 %247, %246
  %249 = trunc i128 %248 to i64
  %250 = add i64 %235, %249
  %251 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %252 = extractelement <4 x i64> %220, i64 0
  %253 = extractelement <4 x i64> %220, i64 1
  %254 = load i64, ptr %251, align 1
  %255 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %256 = load i64, ptr %255, align 1
  %257 = xor i64 %252, %254
  %258 = xor i64 %253, %256
  %259 = zext i64 %257 to i128
  %260 = zext i64 %258 to i128
  %261 = mul nuw i128 %260, %259
  %262 = lshr i128 %261, 64
  %263 = xor i128 %262, %261
  %264 = trunc i128 %263 to i64
  %265 = add i64 %250, %264
  %266 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %267 = extractelement <4 x i64> %220, i64 2
  %268 = extractelement <4 x i64> %220, i64 3
  %269 = load i64, ptr %266, align 1
  %270 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %271 = load i64, ptr %270, align 1
  %272 = xor i64 %269, %267
  %273 = xor i64 %271, %268
  %274 = zext i64 %272 to i128
  %275 = zext i64 %273 to i128
  %276 = mul nuw i128 %275, %274
  %277 = lshr i128 %276, 64
  %278 = xor i128 %277, %276
  %279 = trunc i128 %278 to i64
  %280 = add i64 %265, %279
  %281 = lshr i64 %280, 37
  %282 = xor i64 %281, %280
  %283 = mul i64 %282, 1609587791953885689
  %284 = lshr i64 %283, 32
  %285 = xor i64 %284, %283
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #4
  br label %286

286:                                              ; preds = %194, %39
  %287 = phi i64 [ %110, %39 ], [ %285, %194 ]
  ret i64 %287
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
