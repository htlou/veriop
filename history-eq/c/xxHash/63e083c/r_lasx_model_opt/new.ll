; ModuleID = 'r_lasx_model/new.ll'
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
  %28 = insertelement <4 x i64> poison, i64 %1, i64 0
  %29 = insertelement <4 x i64> %28, i64 %2, i64 1
  %30 = insertelement <4 x i64> %29, i64 %3, i64 2
  %31 = insertelement <4 x i64> %30, i64 %4, i64 3
  %32 = insertelement <4 x i64> poison, i64 %5, i64 0
  %33 = insertelement <4 x i64> %32, i64 %6, i64 1
  %34 = insertelement <4 x i64> %33, i64 %7, i64 2
  %35 = insertelement <4 x i64> %34, i64 %8, i64 3
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
  %50 = load <32 x i8>, ptr %26, align 1
  %51 = load <32 x i8>, ptr %27, align 1
  %52 = xor <32 x i8> %50, %51
  %53 = bitcast <32 x i8> %52 to <4 x i64>
  %54 = lshr <4 x i64> %53, splat (i64 32)
  %55 = bitcast <32 x i8> %52 to <8 x i32>
  %lam5_e0 = shufflevector <8 x i32> %55, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam5_z0 = zext <4 x i32> %lam5_e0 to <4 x i64>
  %56 = mul nuw <4 x i64> %54, %lam5_z0
  %57 = bitcast <32 x i8> %50 to <8 x i32>
  %58 = shufflevector <8 x i32> %57, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %59 = bitcast <8 x i32> %58 to <4 x i64>
  %60 = add <4 x i64> %31, %59
  %61 = add <4 x i64> %56, %60
  %62 = load <32 x i8>, ptr %39, align 1
  %63 = load <32 x i8>, ptr %46, align 1
  %64 = xor <32 x i8> %62, %63
  %65 = bitcast <32 x i8> %64 to <4 x i64>
  %66 = lshr <4 x i64> %65, splat (i64 32)
  %67 = bitcast <32 x i8> %64 to <8 x i32>
  %lam13_e0 = shufflevector <8 x i32> %67, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam13_z0 = zext <4 x i32> %lam13_e0 to <4 x i64>
  %68 = mul nuw <4 x i64> %66, %lam13_z0
  %69 = bitcast <32 x i8> %62 to <8 x i32>
  %70 = shufflevector <8 x i32> %69, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %71 = bitcast <8 x i32> %70 to <4 x i64>
  %72 = add <4 x i64> %35, %71
  %73 = add <4 x i64> %68, %72
  store <4 x i64> %61, ptr %0, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %73, ptr %74, align 8
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
  %19 = insertelement <4 x i64> poison, i64 %1, i64 0
  %20 = insertelement <4 x i64> %19, i64 %2, i64 1
  %21 = insertelement <4 x i64> %20, i64 %3, i64 2
  %22 = insertelement <4 x i64> %21, i64 %4, i64 3
  %23 = insertelement <4 x i64> poison, i64 %5, i64 0
  %24 = insertelement <4 x i64> %23, i64 %6, i64 1
  %25 = insertelement <4 x i64> %24, i64 %7, i64 2
  %26 = insertelement <4 x i64> %25, i64 %8, i64 3
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
  %34 = lshr <4 x i64> %22, splat (i64 47)
  %35 = load <4 x i64>, ptr %18, align 1
  %36 = xor <4 x i64> %34, %35
  %37 = xor <4 x i64> %36, %22
  %38 = mul <4 x i64> %37, splat (i64 2654435761)
  %39 = lshr <4 x i64> %26, splat (i64 47)
  %40 = load <4 x i64>, ptr %30, align 1
  %41 = xor <4 x i64> %39, %40
  %42 = xor <4 x i64> %41, %26
  %43 = mul <4 x i64> %42, splat (i64 2654435761)
  store <4 x i64> %38, ptr %0, align 8
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %43, ptr %44, align 8
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
  br i1 %4, label %5, label %117

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi <4 x i64> [ %40, %6 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %5 ]
  %8 = phi <4 x i64> [ %26, %6 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %5 ]
  %9 = phi i64 [ %41, %6 ], [ 0, %5 ]
  %10 = shl i64 %9, 6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %12, i32 0, i32 3, i32 1)
  %13 = shl i64 %9, 3
  %14 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %13
  %15 = load <32 x i8>, ptr %11, align 1
  %16 = load <32 x i8>, ptr %14, align 1
  %17 = xor <32 x i8> %15, %16
  %18 = bitcast <32 x i8> %17 to <4 x i64>
  %19 = lshr <4 x i64> %18, splat (i64 32)
  %20 = bitcast <32 x i8> %17 to <8 x i32>
  %lam32_e0 = shufflevector <8 x i32> %20, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam32_z0 = zext <4 x i32> %lam32_e0 to <4 x i64>
  %21 = mul nuw <4 x i64> %19, %lam32_z0
  %22 = bitcast <32 x i8> %15 to <8 x i32>
  %23 = shufflevector <8 x i32> %22, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %24 = bitcast <8 x i32> %23 to <4 x i64>
  %25 = add <4 x i64> %8, %24
  %26 = add <4 x i64> %21, %25
  %27 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %28 = load <32 x i8>, ptr %27, align 1
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %30 = load <32 x i8>, ptr %29, align 1
  %31 = xor <32 x i8> %28, %30
  %32 = bitcast <32 x i8> %31 to <4 x i64>
  %33 = lshr <4 x i64> %32, splat (i64 32)
  %34 = bitcast <32 x i8> %31 to <8 x i32>
  %lam40_e0 = shufflevector <8 x i32> %34, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam40_z0 = zext <4 x i32> %lam40_e0 to <4 x i64>
  %35 = mul nuw <4 x i64> %33, %lam40_z0
  %36 = bitcast <32 x i8> %28 to <8 x i32>
  %37 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %38 = bitcast <8 x i32> %37 to <4 x i64>
  %39 = add <4 x i64> %7, %38
  %40 = add <4 x i64> %35, %39
  %41 = add nuw nsw i64 %9, 1
  %42 = icmp eq i64 %41, 15
  br i1 %42, label %43, label %6

43:                                               ; preds = %6
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %45 = load <32 x i8>, ptr %44, align 1
  %46 = xor <32 x i8> %45, <i8 -97, i8 126, i8 -55, i8 -39, i8 120, i8 115, i8 100, i8 -22, i8 -59, i8 -84, i8 -125, i8 52, i8 -45, i8 -21, i8 -61, i8 -59, i8 -127, i8 -96, i8 -1, i8 -6, i8 19, i8 99, i8 -21, i8 23, i8 13, i8 -35, i8 81, i8 -73, i8 -16, i8 -38, i8 73, i8 -45>
  %47 = bitcast <32 x i8> %46 to <4 x i64>
  %48 = lshr <4 x i64> %47, splat (i64 32)
  %49 = bitcast <32 x i8> %46 to <8 x i32>
  %lam48_e0 = shufflevector <8 x i32> %49, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam48_z0 = zext <4 x i32> %lam48_e0 to <4 x i64>
  %50 = mul nuw <4 x i64> %48, %lam48_z0
  %51 = bitcast <32 x i8> %45 to <8 x i32>
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %53 = bitcast <8 x i32> %52 to <4 x i64>
  %54 = add <4 x i64> %26, %53
  %55 = add <4 x i64> %50, %54
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %57 = load <32 x i8>, ptr %56, align 1
  %58 = xor <32 x i8> %57, <i8 22, i8 85, i8 38, i8 41, i8 -44, i8 104, i8 -98, i8 43, i8 22, i8 -66, i8 88, i8 125, i8 71, i8 -95, i8 -4, i8 -113, i8 -8, i8 -72, i8 -47, i8 122, i8 -48, i8 49, i8 -50, i8 69, i8 -53, i8 58, i8 -113, i8 -107, i8 22, i8 4, i8 40, i8 -81>
  %59 = bitcast <32 x i8> %58 to <4 x i64>
  %60 = lshr <4 x i64> %59, splat (i64 32)
  %61 = bitcast <32 x i8> %58 to <8 x i32>
  %lam56_e0 = shufflevector <8 x i32> %61, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam56_z0 = zext <4 x i32> %lam56_e0 to <4 x i64>
  %62 = mul nuw <4 x i64> %60, %lam56_z0
  %63 = bitcast <32 x i8> %57 to <8 x i32>
  %64 = shufflevector <8 x i32> %63, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %65 = bitcast <8 x i32> %64 to <4 x i64>
  %66 = add <4 x i64> %40, %65
  %67 = add <4 x i64> %62, %66
  %68 = extractelement <4 x i64> %55, i64 0
  %69 = extractelement <4 x i64> %55, i64 1
  %70 = xor i64 %68, 7914194659941938988
  %71 = xor i64 %69, -6611157965513653271
  %72 = zext i64 %70 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %73, %72
  %75 = lshr i128 %74, 64
  %76 = xor i128 %75, %74
  %77 = trunc i128 %76 to i64
  %78 = add i64 %77, -2457058741658706944
  %79 = extractelement <4 x i64> %55, i64 2
  %80 = extractelement <4 x i64> %55, i64 3
  %81 = xor i64 %79, -1839215637059881052
  %82 = xor i64 %80, -3433288310154277810
  %83 = zext i64 %81 to i128
  %84 = zext i64 %82 to i128
  %85 = mul nuw i128 %84, %83
  %86 = lshr i128 %85, 64
  %87 = xor i128 %86, %85
  %88 = trunc i128 %87 to i64
  %89 = add i64 %78, %88
  %90 = extractelement <4 x i64> %67, i64 0
  %91 = extractelement <4 x i64> %67, i64 1
  %92 = xor i64 %90, 5046485836271438973
  %93 = xor i64 %91, -8055285457383852172
  %94 = zext i64 %92 to i128
  %95 = zext i64 %93 to i128
  %96 = mul nuw i128 %95, %94
  %97 = lshr i128 %96, 64
  %98 = xor i128 %97, %96
  %99 = trunc i128 %98 to i64
  %100 = add i64 %89, %99
  %101 = extractelement <4 x i64> %67, i64 2
  %102 = extractelement <4 x i64> %67, i64 3
  %103 = xor i64 %101, 5920048007935066598
  %104 = xor i64 %102, 7336514198459093435
  %105 = zext i64 %103 to i128
  %106 = zext i64 %104 to i128
  %107 = mul nuw i128 %106, %105
  %108 = lshr i128 %107, 64
  %109 = xor i128 %108, %107
  %110 = trunc i128 %109 to i64
  %111 = add i64 %100, %110
  %112 = lshr i64 %111, 37
  %113 = xor i64 %112, %111
  %114 = mul i64 %113, 1609587791953885689
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  br label %296

117:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #9
  %118 = add i64 %1, -4734510112055689544
  %119 = sub i64 2066345149520216444, %1
  store i64 %118, ptr %3, align 8
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %119, ptr %120, align 8
  %121 = add i64 %1, -2623469361688619810
  %122 = sub i64 2262974939099578482, %1
  %123 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %121, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %122, ptr %124, align 8
  %125 = add i64 %1, 8711581037947681227
  %126 = sub i64 2410270004345854594, %1
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %125, ptr %127, align 8
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %126, ptr %128, align 8
  %129 = add i64 %1, -8204357891075471176
  %130 = sub i64 5487137525590930912, %1
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %129, ptr %131, align 8
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %130, ptr %132, align 8
  %133 = add i64 %1, -3818837453329782724
  %134 = sub i64 -6688317018830679928, %1
  %135 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %133, ptr %135, align 8
  %136 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %134, ptr %136, align 8
  %137 = add i64 %1, 5690594596133299313
  %138 = sub i64 -2833645246901970632, %1
  %139 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %137, ptr %139, align 8
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %138, ptr %140, align 8
  %141 = add i64 %1, 4554437623014685352
  %142 = sub i64 2111919702937427193, %1
  %143 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %141, ptr %143, align 8
  %144 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %142, ptr %144, align 8
  %145 = add i64 %1, 3556072174620004746
  %146 = sub i64 7238261902898274248, %1
  %147 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %145, ptr %147, align 8
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %146, ptr %148, align 8
  %149 = add i64 %1, -4329134394285701654
  %150 = sub i64 -1485321483350670907, %1
  %151 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %149, ptr %151, align 8
  %152 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %150, ptr %152, align 8
  %153 = add i64 %1, 5321830579834785047
  %154 = sub i64 -7032137544937171245, %1
  %155 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 %153, ptr %155, align 8
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 %154, ptr %156, align 8
  %157 = add i64 %1, -242834301215959509
  %158 = sub i64 -3588858202114426737, %1
  %159 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %157, ptr %159, align 8
  %160 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %158, ptr %160, align 8
  %161 = add i64 %1, 2883454493032893253
  %162 = sub i64 9097354517224871855, %1
  %163 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %161, ptr %163, align 8
  %164 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 %162, ptr %164, align 8
  br label %165

165:                                              ; preds = %165, %117
  %166 = phi <4 x i64> [ %199, %165 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %117 ]
  %167 = phi <4 x i64> [ %185, %165 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %117 ]
  %168 = phi i64 [ %200, %165 ], [ 0, %117 ]
  %169 = shl i64 %168, 6
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 %169
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %171, i32 0, i32 3, i32 1)
  %172 = shl i64 %168, 3
  %173 = getelementptr inbounds nuw i8, ptr %3, i64 %172
  %174 = load <32 x i8>, ptr %170, align 1
  %175 = load <32 x i8>, ptr %173, align 1
  %176 = xor <32 x i8> %174, %175
  %177 = bitcast <32 x i8> %176 to <4 x i64>
  %178 = lshr <4 x i64> %177, splat (i64 32)
  %179 = bitcast <32 x i8> %176 to <8 x i32>
  %lam64_e0 = shufflevector <8 x i32> %179, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam64_z0 = zext <4 x i32> %lam64_e0 to <4 x i64>
  %180 = mul nuw <4 x i64> %178, %lam64_z0
  %181 = bitcast <32 x i8> %174 to <8 x i32>
  %182 = shufflevector <8 x i32> %181, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %183 = bitcast <8 x i32> %182 to <4 x i64>
  %184 = add <4 x i64> %167, %183
  %185 = add <4 x i64> %180, %184
  %186 = getelementptr inbounds nuw i8, ptr %170, i64 32
  %187 = load <32 x i8>, ptr %186, align 1
  %188 = getelementptr inbounds nuw i8, ptr %173, i64 32
  %189 = load <32 x i8>, ptr %188, align 1
  %190 = xor <32 x i8> %187, %189
  %191 = bitcast <32 x i8> %190 to <4 x i64>
  %192 = lshr <4 x i64> %191, splat (i64 32)
  %193 = bitcast <32 x i8> %190 to <8 x i32>
  %lam72_e0 = shufflevector <8 x i32> %193, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam72_z0 = zext <4 x i32> %lam72_e0 to <4 x i64>
  %194 = mul nuw <4 x i64> %192, %lam72_z0
  %195 = bitcast <32 x i8> %187 to <8 x i32>
  %196 = shufflevector <8 x i32> %195, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %197 = bitcast <8 x i32> %196 to <4 x i64>
  %198 = add <4 x i64> %166, %197
  %199 = add <4 x i64> %194, %198
  %200 = add nuw nsw i64 %168, 1
  %201 = icmp eq i64 %200, 15
  br i1 %201, label %202, label %165

202:                                              ; preds = %165
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %204 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %205 = load <32 x i8>, ptr %203, align 1
  %206 = load <32 x i8>, ptr %204, align 1
  %207 = xor <32 x i8> %205, %206
  %208 = bitcast <32 x i8> %207 to <4 x i64>
  %209 = lshr <4 x i64> %208, splat (i64 32)
  %210 = bitcast <32 x i8> %207 to <8 x i32>
  %lam80_e0 = shufflevector <8 x i32> %210, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam80_z0 = zext <4 x i32> %lam80_e0 to <4 x i64>
  %211 = mul nuw <4 x i64> %209, %lam80_z0
  %212 = bitcast <32 x i8> %205 to <8 x i32>
  %213 = shufflevector <8 x i32> %212, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %214 = bitcast <8 x i32> %213 to <4 x i64>
  %215 = add <4 x i64> %185, %214
  %216 = add <4 x i64> %211, %215
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %218 = load <32 x i8>, ptr %217, align 1
  %219 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %220 = load <32 x i8>, ptr %219, align 1
  %221 = xor <32 x i8> %218, %220
  %222 = bitcast <32 x i8> %221 to <4 x i64>
  %223 = lshr <4 x i64> %222, splat (i64 32)
  %224 = bitcast <32 x i8> %221 to <8 x i32>
  %lam88_e0 = shufflevector <8 x i32> %224, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %lam88_z0 = zext <4 x i32> %lam88_e0 to <4 x i64>
  %225 = mul nuw <4 x i64> %223, %lam88_z0
  %226 = bitcast <32 x i8> %218 to <8 x i32>
  %227 = shufflevector <8 x i32> %226, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %228 = bitcast <8 x i32> %227 to <4 x i64>
  %229 = add <4 x i64> %199, %228
  %230 = add <4 x i64> %225, %229
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %232 = extractelement <4 x i64> %216, i64 0
  %233 = extractelement <4 x i64> %216, i64 1
  %234 = load i64, ptr %231, align 1
  %235 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %236 = load i64, ptr %235, align 1
  %237 = xor i64 %234, %232
  %238 = xor i64 %236, %233
  %239 = zext i64 %237 to i128
  %240 = zext i64 %238 to i128
  %241 = mul nuw i128 %240, %239
  %242 = lshr i128 %241, 64
  %243 = xor i128 %242, %241
  %244 = trunc i128 %243 to i64
  %245 = add i64 %244, -2457058741658706944
  %246 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %247 = extractelement <4 x i64> %216, i64 2
  %248 = extractelement <4 x i64> %216, i64 3
  %249 = load i64, ptr %246, align 1
  %250 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %251 = load i64, ptr %250, align 1
  %252 = xor i64 %249, %247
  %253 = xor i64 %251, %248
  %254 = zext i64 %252 to i128
  %255 = zext i64 %253 to i128
  %256 = mul nuw i128 %255, %254
  %257 = lshr i128 %256, 64
  %258 = xor i128 %257, %256
  %259 = trunc i128 %258 to i64
  %260 = add i64 %245, %259
  %261 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %262 = extractelement <4 x i64> %230, i64 0
  %263 = extractelement <4 x i64> %230, i64 1
  %264 = load i64, ptr %261, align 1
  %265 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %266 = load i64, ptr %265, align 1
  %267 = xor i64 %264, %262
  %268 = xor i64 %266, %263
  %269 = zext i64 %267 to i128
  %270 = zext i64 %268 to i128
  %271 = mul nuw i128 %270, %269
  %272 = lshr i128 %271, 64
  %273 = xor i128 %272, %271
  %274 = trunc i128 %273 to i64
  %275 = add i64 %260, %274
  %276 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %277 = extractelement <4 x i64> %230, i64 2
  %278 = extractelement <4 x i64> %230, i64 3
  %279 = load i64, ptr %276, align 1
  %280 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %281 = load i64, ptr %280, align 1
  %282 = xor i64 %279, %277
  %283 = xor i64 %281, %278
  %284 = zext i64 %282 to i128
  %285 = zext i64 %283 to i128
  %286 = mul nuw i128 %285, %284
  %287 = lshr i128 %286, 64
  %288 = xor i128 %287, %286
  %289 = trunc i128 %288 to i64
  %290 = add i64 %275, %289
  %291 = lshr i64 %290, 37
  %292 = xor i64 %291, %290
  %293 = mul i64 %292, 1609587791953885689
  %294 = lshr i64 %293, 32
  %295 = xor i64 %294, %293
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #9
  br label %296

296:                                              ; preds = %202, %43
  %297 = phi i64 [ %116, %43 ], [ %295, %202 ]
  ret i64 %297
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <32 x i8> @llvm.loongarch.lasx.xvld(ptr, i32 immarg) #5

; Function Attrs: nounwind memory(none)
declare <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64>, i32 immarg) #6

; Function Attrs: nounwind memory(none)
declare <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32>, i32 immarg) #6

; Function Attrs: nounwind memory(none)
declare <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8>, <32 x i8>) #6

; Function Attrs: nounwind memory(none)
declare <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32>, <8 x i32>) #6

; Function Attrs: nounwind memory(none)
declare <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64>, <4 x i64>) #6

; Function Attrs: nounwind memory(none)
declare <4 x i64> @llvm.loongarch.lasx.xvreplgr2vr.d(i64) #6

; Function Attrs: nounwind memory(none)
declare <4 x i64> @llvm.loongarch.lasx.xvmul.d(<4 x i64>, <4 x i64>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nofree nosync nounwind memory(argmem: write, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nofree nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
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
