; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e7c94ef/wrap_simd.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e7c94ef/wrap_simd.c"
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
  %56 = bitcast <2 x i64> %54 to <4 x i32>
  %lam5_e0 = shufflevector <4 x i32> %55, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam5_z0 = zext <2 x i32> %lam5_e0 to <2 x i64>
  %lam5_e1 = shufflevector <4 x i32> %56, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam5_z1 = zext <2 x i32> %lam5_e1 to <2 x i64>
  %57 = mul nuw <2 x i64> %lam5_z0, %lam5_z1
  %58 = bitcast <16 x i8> %50 to <4 x i32>
  %59 = shufflevector <4 x i32> %58, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %60 = bitcast <4 x i32> %59 to <2 x i64>
  %61 = add <2 x i64> %29, %60
  %62 = add <2 x i64> %57, %61
  %63 = load <16 x i8>, ptr %37, align 1
  %64 = load <16 x i8>, ptr %44, align 1
  %65 = xor <16 x i8> %63, %64
  %66 = bitcast <16 x i8> %65 to <2 x i64>
  %67 = lshr <2 x i64> %66, splat (i64 32)
  %68 = bitcast <16 x i8> %65 to <4 x i32>
  %69 = bitcast <2 x i64> %67 to <4 x i32>
  %lam13_e0 = shufflevector <4 x i32> %68, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam13_z0 = zext <2 x i32> %lam13_e0 to <2 x i64>
  %lam13_e1 = shufflevector <4 x i32> %69, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam13_z1 = zext <2 x i32> %lam13_e1 to <2 x i64>
  %70 = mul nuw <2 x i64> %lam13_z0, %lam13_z1
  %71 = bitcast <16 x i8> %63 to <4 x i32>
  %72 = shufflevector <4 x i32> %71, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %73 = bitcast <4 x i32> %72 to <2 x i64>
  %74 = add <2 x i64> %31, %73
  %75 = add <2 x i64> %70, %74
  %76 = load <16 x i8>, ptr %39, align 1
  %77 = load <16 x i8>, ptr %46, align 1
  %78 = xor <16 x i8> %76, %77
  %79 = bitcast <16 x i8> %78 to <2 x i64>
  %80 = lshr <2 x i64> %79, splat (i64 32)
  %81 = bitcast <16 x i8> %78 to <4 x i32>
  %82 = bitcast <2 x i64> %80 to <4 x i32>
  %lam21_e0 = shufflevector <4 x i32> %81, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam21_z0 = zext <2 x i32> %lam21_e0 to <2 x i64>
  %lam21_e1 = shufflevector <4 x i32> %82, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam21_z1 = zext <2 x i32> %lam21_e1 to <2 x i64>
  %83 = mul nuw <2 x i64> %lam21_z0, %lam21_z1
  %84 = bitcast <16 x i8> %76 to <4 x i32>
  %85 = shufflevector <4 x i32> %84, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %86 = bitcast <4 x i32> %85 to <2 x i64>
  %87 = add <2 x i64> %33, %86
  %88 = add <2 x i64> %83, %87
  %89 = load <16 x i8>, ptr %41, align 1
  %90 = load <16 x i8>, ptr %48, align 1
  %91 = xor <16 x i8> %89, %90
  %92 = bitcast <16 x i8> %91 to <2 x i64>
  %93 = lshr <2 x i64> %92, splat (i64 32)
  %94 = bitcast <16 x i8> %91 to <4 x i32>
  %95 = bitcast <2 x i64> %93 to <4 x i32>
  %lam29_e0 = shufflevector <4 x i32> %94, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam29_z0 = zext <2 x i32> %lam29_e0 to <2 x i64>
  %lam29_e1 = shufflevector <4 x i32> %95, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam29_z1 = zext <2 x i32> %lam29_e1 to <2 x i64>
  %96 = mul nuw <2 x i64> %lam29_z0, %lam29_z1
  %97 = bitcast <16 x i8> %89 to <4 x i32>
  %98 = shufflevector <4 x i32> %97, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %99 = bitcast <4 x i32> %98 to <2 x i64>
  %100 = add <2 x i64> %35, %99
  %101 = add <2 x i64> %96, %100
  store <2 x i64> %62, ptr %0, align 8
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %75, ptr %102, align 8
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %88, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %101, ptr %104, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

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
  %lam33_i = insertelement <4 x i32> poison, i32 -1640531535, i64 0
  %34 = shufflevector <4 x i32> %lam33_i, <4 x i32> poison, <4 x i32> zeroinitializer
  %35 = lshr <2 x i64> %20, splat (i64 47)
  %36 = bitcast <2 x i64> %20 to <16 x i8>
  %37 = bitcast <2 x i64> %35 to <16 x i8>
  %38 = xor <16 x i8> %36, %37
  %39 = load <16 x i8>, ptr %18, align 1
  %40 = xor <16 x i8> %38, %39
  %41 = bitcast <16 x i8> %40 to <2 x i64>
  %42 = lshr <2 x i64> %41, splat (i64 32)
  %43 = bitcast <16 x i8> %40 to <4 x i32>
  %lam39_e0 = shufflevector <4 x i32> %43, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam39_z0 = zext <2 x i32> %lam39_e0 to <2 x i64>
  %lam39_e1 = shufflevector <4 x i32> %34, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam39_z1 = zext <2 x i32> %lam39_e1 to <2 x i64>
  %44 = mul nuw <2 x i64> %lam39_z0, %lam39_z1
  %45 = bitcast <2 x i64> %42 to <4 x i32>
  %lam40_e0 = shufflevector <4 x i32> %45, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam40_z0 = zext <2 x i32> %lam40_e0 to <2 x i64>
  %lam40_e1 = shufflevector <4 x i32> %34, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam40_z1 = zext <2 x i32> %lam40_e1 to <2 x i64>
  %46 = mul nuw <2 x i64> %lam40_z0, %lam40_z1
  %47 = shl <2 x i64> %46, splat (i64 32)
  %48 = add <2 x i64> %44, %47
  %49 = lshr <2 x i64> %22, splat (i64 47)
  %50 = bitcast <2 x i64> %22 to <16 x i8>
  %51 = bitcast <2 x i64> %49 to <16 x i8>
  %52 = xor <16 x i8> %50, %51
  %53 = load <16 x i8>, ptr %28, align 1
  %54 = xor <16 x i8> %52, %53
  %55 = bitcast <16 x i8> %54 to <2 x i64>
  %56 = lshr <2 x i64> %55, splat (i64 32)
  %57 = bitcast <16 x i8> %54 to <4 x i32>
  %lam48_e0 = shufflevector <4 x i32> %57, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam48_z0 = zext <2 x i32> %lam48_e0 to <2 x i64>
  %lam48_e1 = shufflevector <4 x i32> %34, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam48_z1 = zext <2 x i32> %lam48_e1 to <2 x i64>
  %58 = mul nuw <2 x i64> %lam48_z0, %lam48_z1
  %59 = bitcast <2 x i64> %56 to <4 x i32>
  %lam49_e0 = shufflevector <4 x i32> %59, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam49_z0 = zext <2 x i32> %lam49_e0 to <2 x i64>
  %lam49_e1 = shufflevector <4 x i32> %34, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam49_z1 = zext <2 x i32> %lam49_e1 to <2 x i64>
  %60 = mul nuw <2 x i64> %lam49_z0, %lam49_z1
  %61 = shl <2 x i64> %60, splat (i64 32)
  %62 = add <2 x i64> %58, %61
  %63 = lshr <2 x i64> %24, splat (i64 47)
  %64 = bitcast <2 x i64> %24 to <16 x i8>
  %65 = bitcast <2 x i64> %63 to <16 x i8>
  %66 = xor <16 x i8> %64, %65
  %67 = load <16 x i8>, ptr %30, align 1
  %68 = xor <16 x i8> %66, %67
  %69 = bitcast <16 x i8> %68 to <2 x i64>
  %70 = lshr <2 x i64> %69, splat (i64 32)
  %71 = bitcast <16 x i8> %68 to <4 x i32>
  %lam57_e0 = shufflevector <4 x i32> %71, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam57_z0 = zext <2 x i32> %lam57_e0 to <2 x i64>
  %lam57_e1 = shufflevector <4 x i32> %34, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam57_z1 = zext <2 x i32> %lam57_e1 to <2 x i64>
  %72 = mul nuw <2 x i64> %lam57_z0, %lam57_z1
  %73 = bitcast <2 x i64> %70 to <4 x i32>
  %lam58_e0 = shufflevector <4 x i32> %73, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam58_z0 = zext <2 x i32> %lam58_e0 to <2 x i64>
  %lam58_e1 = shufflevector <4 x i32> %34, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam58_z1 = zext <2 x i32> %lam58_e1 to <2 x i64>
  %74 = mul nuw <2 x i64> %lam58_z0, %lam58_z1
  %75 = shl <2 x i64> %74, splat (i64 32)
  %76 = add <2 x i64> %72, %75
  %77 = lshr <2 x i64> %26, splat (i64 47)
  %78 = bitcast <2 x i64> %26 to <16 x i8>
  %79 = bitcast <2 x i64> %77 to <16 x i8>
  %80 = xor <16 x i8> %78, %79
  %81 = load <16 x i8>, ptr %32, align 1
  %82 = xor <16 x i8> %80, %81
  %83 = bitcast <16 x i8> %82 to <2 x i64>
  %84 = lshr <2 x i64> %83, splat (i64 32)
  %85 = bitcast <16 x i8> %82 to <4 x i32>
  %lam66_e0 = shufflevector <4 x i32> %85, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam66_z0 = zext <2 x i32> %lam66_e0 to <2 x i64>
  %lam66_e1 = shufflevector <4 x i32> %34, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam66_z1 = zext <2 x i32> %lam66_e1 to <2 x i64>
  %86 = mul nuw <2 x i64> %lam66_z0, %lam66_z1
  %87 = bitcast <2 x i64> %84 to <4 x i32>
  %lam67_e0 = shufflevector <4 x i32> %87, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam67_z0 = zext <2 x i32> %lam67_e0 to <2 x i64>
  %lam67_e1 = shufflevector <4 x i32> %34, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam67_z1 = zext <2 x i32> %lam67_e1 to <2 x i64>
  %88 = mul nuw <2 x i64> %lam67_z0, %lam67_z1
  %89 = shl <2 x i64> %88, splat (i64 32)
  %90 = add <2 x i64> %86, %89
  store <2 x i64> %48, ptr %0, align 8
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %62, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %76, ptr %92, align 8
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %90, ptr %93, align 8
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
  br i1 %4, label %5, label %183

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi <2 x i64> [ %74, %6 ], [ <i64 2870177450012600261, i64 2654435761>, %5 ]
  %8 = phi <2 x i64> [ %59, %6 ], [ <i64 -8796714831421723037, i64 2246822519>, %5 ]
  %9 = phi <2 x i64> [ %44, %6 ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %5 ]
  %10 = phi <2 x i64> [ %29, %6 ], [ <i64 3266489917, i64 -7046029288634856825>, %5 ]
  %11 = phi i64 [ %75, %6 ], [ 0, %5 ]
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
  %23 = bitcast <2 x i64> %21 to <4 x i32>
  %lam74_e0 = shufflevector <4 x i32> %22, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam74_z0 = zext <2 x i32> %lam74_e0 to <2 x i64>
  %lam74_e1 = shufflevector <4 x i32> %23, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam74_z1 = zext <2 x i32> %lam74_e1 to <2 x i64>
  %24 = mul nuw <2 x i64> %lam74_z0, %lam74_z1
  %25 = bitcast <16 x i8> %17 to <4 x i32>
  %26 = shufflevector <4 x i32> %25, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %27 = bitcast <4 x i32> %26 to <2 x i64>
  %28 = add <2 x i64> %10, %27
  %29 = add <2 x i64> %24, %28
  %30 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %31 = load <16 x i8>, ptr %30, align 1
  %32 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %33 = load <16 x i8>, ptr %32, align 1
  %34 = xor <16 x i8> %31, %33
  %35 = bitcast <16 x i8> %34 to <2 x i64>
  %36 = lshr <2 x i64> %35, splat (i64 32)
  %37 = bitcast <16 x i8> %34 to <4 x i32>
  %38 = bitcast <2 x i64> %36 to <4 x i32>
  %lam82_e0 = shufflevector <4 x i32> %37, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam82_z0 = zext <2 x i32> %lam82_e0 to <2 x i64>
  %lam82_e1 = shufflevector <4 x i32> %38, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam82_z1 = zext <2 x i32> %lam82_e1 to <2 x i64>
  %39 = mul nuw <2 x i64> %lam82_z0, %lam82_z1
  %40 = bitcast <16 x i8> %31 to <4 x i32>
  %41 = shufflevector <4 x i32> %40, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %42 = bitcast <4 x i32> %41 to <2 x i64>
  %43 = add <2 x i64> %9, %42
  %44 = add <2 x i64> %39, %43
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %46 = load <16 x i8>, ptr %45, align 1
  %47 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %48 = load <16 x i8>, ptr %47, align 1
  %49 = xor <16 x i8> %46, %48
  %50 = bitcast <16 x i8> %49 to <2 x i64>
  %51 = lshr <2 x i64> %50, splat (i64 32)
  %52 = bitcast <16 x i8> %49 to <4 x i32>
  %53 = bitcast <2 x i64> %51 to <4 x i32>
  %lam90_e0 = shufflevector <4 x i32> %52, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam90_z0 = zext <2 x i32> %lam90_e0 to <2 x i64>
  %lam90_e1 = shufflevector <4 x i32> %53, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam90_z1 = zext <2 x i32> %lam90_e1 to <2 x i64>
  %54 = mul nuw <2 x i64> %lam90_z0, %lam90_z1
  %55 = bitcast <16 x i8> %46 to <4 x i32>
  %56 = shufflevector <4 x i32> %55, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %57 = bitcast <4 x i32> %56 to <2 x i64>
  %58 = add <2 x i64> %8, %57
  %59 = add <2 x i64> %54, %58
  %60 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %61 = load <16 x i8>, ptr %60, align 1
  %62 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %63 = load <16 x i8>, ptr %62, align 1
  %64 = xor <16 x i8> %61, %63
  %65 = bitcast <16 x i8> %64 to <2 x i64>
  %66 = lshr <2 x i64> %65, splat (i64 32)
  %67 = bitcast <16 x i8> %64 to <4 x i32>
  %68 = bitcast <2 x i64> %66 to <4 x i32>
  %lam98_e0 = shufflevector <4 x i32> %67, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam98_z0 = zext <2 x i32> %lam98_e0 to <2 x i64>
  %lam98_e1 = shufflevector <4 x i32> %68, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam98_z1 = zext <2 x i32> %lam98_e1 to <2 x i64>
  %69 = mul nuw <2 x i64> %lam98_z0, %lam98_z1
  %70 = bitcast <16 x i8> %61 to <4 x i32>
  %71 = shufflevector <4 x i32> %70, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %72 = bitcast <4 x i32> %71 to <2 x i64>
  %73 = add <2 x i64> %7, %72
  %74 = add <2 x i64> %69, %73
  %75 = add nuw nsw i64 %11, 1
  %76 = icmp eq i64 %75, 15
  br i1 %76, label %77, label %6

77:                                               ; preds = %6
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %79 = load <16 x i8>, ptr %78, align 1
  %80 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), align 1
  %81 = xor <16 x i8> %79, %80
  %82 = bitcast <16 x i8> %81 to <2 x i64>
  %83 = lshr <2 x i64> %82, splat (i64 32)
  %84 = bitcast <16 x i8> %81 to <4 x i32>
  %85 = bitcast <2 x i64> %83 to <4 x i32>
  %lam106_e0 = shufflevector <4 x i32> %84, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam106_z0 = zext <2 x i32> %lam106_e0 to <2 x i64>
  %lam106_e1 = shufflevector <4 x i32> %85, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam106_z1 = zext <2 x i32> %lam106_e1 to <2 x i64>
  %86 = mul nuw <2 x i64> %lam106_z0, %lam106_z1
  %87 = bitcast <16 x i8> %79 to <4 x i32>
  %88 = shufflevector <4 x i32> %87, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %89 = bitcast <4 x i32> %88 to <2 x i64>
  %90 = add <2 x i64> %29, %89
  %91 = add <2 x i64> %86, %90
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %93 = load <16 x i8>, ptr %92, align 1
  %94 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 137), align 1
  %95 = xor <16 x i8> %93, %94
  %96 = bitcast <16 x i8> %95 to <2 x i64>
  %97 = lshr <2 x i64> %96, splat (i64 32)
  %98 = bitcast <16 x i8> %95 to <4 x i32>
  %99 = bitcast <2 x i64> %97 to <4 x i32>
  %lam114_e0 = shufflevector <4 x i32> %98, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam114_z0 = zext <2 x i32> %lam114_e0 to <2 x i64>
  %lam114_e1 = shufflevector <4 x i32> %99, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam114_z1 = zext <2 x i32> %lam114_e1 to <2 x i64>
  %100 = mul nuw <2 x i64> %lam114_z0, %lam114_z1
  %101 = bitcast <16 x i8> %93 to <4 x i32>
  %102 = shufflevector <4 x i32> %101, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %103 = bitcast <4 x i32> %102 to <2 x i64>
  %104 = add <2 x i64> %44, %103
  %105 = add <2 x i64> %100, %104
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %107 = load <16 x i8>, ptr %106, align 1
  %108 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 153), align 1
  %109 = xor <16 x i8> %107, %108
  %110 = bitcast <16 x i8> %109 to <2 x i64>
  %111 = lshr <2 x i64> %110, splat (i64 32)
  %112 = bitcast <16 x i8> %109 to <4 x i32>
  %113 = bitcast <2 x i64> %111 to <4 x i32>
  %lam122_e0 = shufflevector <4 x i32> %112, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam122_z0 = zext <2 x i32> %lam122_e0 to <2 x i64>
  %lam122_e1 = shufflevector <4 x i32> %113, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam122_z1 = zext <2 x i32> %lam122_e1 to <2 x i64>
  %114 = mul nuw <2 x i64> %lam122_z0, %lam122_z1
  %115 = bitcast <16 x i8> %107 to <4 x i32>
  %116 = shufflevector <4 x i32> %115, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %117 = bitcast <4 x i32> %116 to <2 x i64>
  %118 = add <2 x i64> %59, %117
  %119 = add <2 x i64> %114, %118
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %121 = load <16 x i8>, ptr %120, align 1
  %122 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 169), align 1
  %123 = xor <16 x i8> %121, %122
  %124 = bitcast <16 x i8> %123 to <2 x i64>
  %125 = lshr <2 x i64> %124, splat (i64 32)
  %126 = bitcast <16 x i8> %123 to <4 x i32>
  %127 = bitcast <2 x i64> %125 to <4 x i32>
  %lam130_e0 = shufflevector <4 x i32> %126, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam130_z0 = zext <2 x i32> %lam130_e0 to <2 x i64>
  %lam130_e1 = shufflevector <4 x i32> %127, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam130_z1 = zext <2 x i32> %lam130_e1 to <2 x i64>
  %128 = mul nuw <2 x i64> %lam130_z0, %lam130_z1
  %129 = bitcast <16 x i8> %121 to <4 x i32>
  %130 = shufflevector <4 x i32> %129, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %131 = bitcast <4 x i32> %130 to <2 x i64>
  %132 = add <2 x i64> %74, %131
  %133 = add <2 x i64> %128, %132
  %134 = extractelement <2 x i64> %91, i64 0
  %135 = extractelement <2 x i64> %91, i64 1
  %136 = xor i64 %134, 7914194659941938988
  %137 = xor i64 %135, -6611157965513653271
  %138 = zext i64 %136 to i128
  %139 = zext i64 %137 to i128
  %140 = mul nuw i128 %139, %138
  %141 = lshr i128 %140, 64
  %142 = xor i128 %141, %140
  %143 = trunc i128 %142 to i64
  %144 = add i64 %143, -2457058741658706944
  %145 = extractelement <2 x i64> %105, i64 0
  %146 = extractelement <2 x i64> %105, i64 1
  %147 = xor i64 %145, -1839215637059881052
  %148 = xor i64 %146, -3433288310154277810
  %149 = zext i64 %147 to i128
  %150 = zext i64 %148 to i128
  %151 = mul nuw i128 %150, %149
  %152 = lshr i128 %151, 64
  %153 = xor i128 %152, %151
  %154 = trunc i128 %153 to i64
  %155 = add i64 %144, %154
  %156 = extractelement <2 x i64> %119, i64 0
  %157 = extractelement <2 x i64> %119, i64 1
  %158 = xor i64 %156, 5046485836271438973
  %159 = xor i64 %157, -8055285457383852172
  %160 = zext i64 %158 to i128
  %161 = zext i64 %159 to i128
  %162 = mul nuw i128 %161, %160
  %163 = lshr i128 %162, 64
  %164 = xor i128 %163, %162
  %165 = trunc i128 %164 to i64
  %166 = add i64 %155, %165
  %167 = extractelement <2 x i64> %133, i64 0
  %168 = extractelement <2 x i64> %133, i64 1
  %169 = xor i64 %167, 5920048007935066598
  %170 = xor i64 %168, 7336514198459093435
  %171 = zext i64 %169 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = add i64 %166, %176
  %178 = lshr i64 %177, 37
  %179 = xor i64 %178, %177
  %180 = mul i64 %179, 1609587791953885689
  %181 = lshr i64 %180, 32
  %182 = xor i64 %181, %180
  br label %428

183:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #9
  %184 = add i64 %1, -4734510112055689544
  %185 = sub i64 2066345149520216444, %1
  store i64 %184, ptr %3, align 8
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %185, ptr %186, align 8
  %187 = add i64 %1, -2623469361688619810
  %188 = sub i64 2262974939099578482, %1
  %189 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %187, ptr %189, align 8
  %190 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %188, ptr %190, align 8
  %191 = add i64 %1, 8711581037947681227
  %192 = sub i64 2410270004345854594, %1
  %193 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %191, ptr %193, align 8
  %194 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %192, ptr %194, align 8
  %195 = add i64 %1, -8204357891075471176
  %196 = sub i64 5487137525590930912, %1
  %197 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %195, ptr %197, align 8
  %198 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %196, ptr %198, align 8
  %199 = add i64 %1, -3818837453329782724
  %200 = sub i64 -6688317018830679928, %1
  %201 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %199, ptr %201, align 8
  %202 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %200, ptr %202, align 8
  %203 = add i64 %1, 5690594596133299313
  %204 = sub i64 -2833645246901970632, %1
  %205 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %203, ptr %205, align 8
  %206 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %204, ptr %206, align 8
  %207 = add i64 %1, 4554437623014685352
  %208 = sub i64 2111919702937427193, %1
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %207, ptr %209, align 8
  %210 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %208, ptr %210, align 8
  %211 = add i64 %1, 3556072174620004746
  %212 = sub i64 7238261902898274248, %1
  %213 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %211, ptr %213, align 8
  %214 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %212, ptr %214, align 8
  %215 = add i64 %1, -4329134394285701654
  %216 = sub i64 -1485321483350670907, %1
  %217 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %215, ptr %217, align 8
  %218 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %216, ptr %218, align 8
  %219 = add i64 %1, 5321830579834785047
  %220 = sub i64 -7032137544937171245, %1
  %221 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 %219, ptr %221, align 8
  %222 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 %220, ptr %222, align 8
  %223 = add i64 %1, -242834301215959509
  %224 = sub i64 -3588858202114426737, %1
  %225 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %223, ptr %225, align 8
  %226 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %224, ptr %226, align 8
  %227 = add i64 %1, 2883454493032893253
  %228 = sub i64 9097354517224871855, %1
  %229 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %227, ptr %229, align 8
  %230 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 %228, ptr %230, align 8
  br label %231

231:                                              ; preds = %231, %183
  %232 = phi <2 x i64> [ %299, %231 ], [ <i64 2870177450012600261, i64 2654435761>, %183 ]
  %233 = phi <2 x i64> [ %284, %231 ], [ <i64 -8796714831421723037, i64 2246822519>, %183 ]
  %234 = phi <2 x i64> [ %269, %231 ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %183 ]
  %235 = phi <2 x i64> [ %254, %231 ], [ <i64 3266489917, i64 -7046029288634856825>, %183 ]
  %236 = phi i64 [ %300, %231 ], [ 0, %183 ]
  %237 = shl i64 %236, 6
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 %237
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %239, i32 0, i32 3, i32 1)
  %240 = shl i64 %236, 3
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 %240
  %242 = load <16 x i8>, ptr %238, align 1
  %243 = load <16 x i8>, ptr %241, align 1
  %244 = xor <16 x i8> %242, %243
  %245 = bitcast <16 x i8> %244 to <2 x i64>
  %246 = lshr <2 x i64> %245, splat (i64 32)
  %247 = bitcast <16 x i8> %244 to <4 x i32>
  %248 = bitcast <2 x i64> %246 to <4 x i32>
  %lam138_e0 = shufflevector <4 x i32> %247, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam138_z0 = zext <2 x i32> %lam138_e0 to <2 x i64>
  %lam138_e1 = shufflevector <4 x i32> %248, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam138_z1 = zext <2 x i32> %lam138_e1 to <2 x i64>
  %249 = mul nuw <2 x i64> %lam138_z0, %lam138_z1
  %250 = bitcast <16 x i8> %242 to <4 x i32>
  %251 = shufflevector <4 x i32> %250, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %252 = bitcast <4 x i32> %251 to <2 x i64>
  %253 = add <2 x i64> %235, %252
  %254 = add <2 x i64> %249, %253
  %255 = getelementptr inbounds nuw i8, ptr %238, i64 16
  %256 = load <16 x i8>, ptr %255, align 1
  %257 = getelementptr inbounds nuw i8, ptr %241, i64 16
  %258 = load <16 x i8>, ptr %257, align 1
  %259 = xor <16 x i8> %256, %258
  %260 = bitcast <16 x i8> %259 to <2 x i64>
  %261 = lshr <2 x i64> %260, splat (i64 32)
  %262 = bitcast <16 x i8> %259 to <4 x i32>
  %263 = bitcast <2 x i64> %261 to <4 x i32>
  %lam146_e0 = shufflevector <4 x i32> %262, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam146_z0 = zext <2 x i32> %lam146_e0 to <2 x i64>
  %lam146_e1 = shufflevector <4 x i32> %263, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam146_z1 = zext <2 x i32> %lam146_e1 to <2 x i64>
  %264 = mul nuw <2 x i64> %lam146_z0, %lam146_z1
  %265 = bitcast <16 x i8> %256 to <4 x i32>
  %266 = shufflevector <4 x i32> %265, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %267 = bitcast <4 x i32> %266 to <2 x i64>
  %268 = add <2 x i64> %234, %267
  %269 = add <2 x i64> %264, %268
  %270 = getelementptr inbounds nuw i8, ptr %238, i64 32
  %271 = load <16 x i8>, ptr %270, align 1
  %272 = getelementptr inbounds nuw i8, ptr %241, i64 32
  %273 = load <16 x i8>, ptr %272, align 1
  %274 = xor <16 x i8> %271, %273
  %275 = bitcast <16 x i8> %274 to <2 x i64>
  %276 = lshr <2 x i64> %275, splat (i64 32)
  %277 = bitcast <16 x i8> %274 to <4 x i32>
  %278 = bitcast <2 x i64> %276 to <4 x i32>
  %lam154_e0 = shufflevector <4 x i32> %277, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam154_z0 = zext <2 x i32> %lam154_e0 to <2 x i64>
  %lam154_e1 = shufflevector <4 x i32> %278, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam154_z1 = zext <2 x i32> %lam154_e1 to <2 x i64>
  %279 = mul nuw <2 x i64> %lam154_z0, %lam154_z1
  %280 = bitcast <16 x i8> %271 to <4 x i32>
  %281 = shufflevector <4 x i32> %280, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %282 = bitcast <4 x i32> %281 to <2 x i64>
  %283 = add <2 x i64> %233, %282
  %284 = add <2 x i64> %279, %283
  %285 = getelementptr inbounds nuw i8, ptr %238, i64 48
  %286 = load <16 x i8>, ptr %285, align 1
  %287 = getelementptr inbounds nuw i8, ptr %241, i64 48
  %288 = load <16 x i8>, ptr %287, align 1
  %289 = xor <16 x i8> %286, %288
  %290 = bitcast <16 x i8> %289 to <2 x i64>
  %291 = lshr <2 x i64> %290, splat (i64 32)
  %292 = bitcast <16 x i8> %289 to <4 x i32>
  %293 = bitcast <2 x i64> %291 to <4 x i32>
  %lam162_e0 = shufflevector <4 x i32> %292, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam162_z0 = zext <2 x i32> %lam162_e0 to <2 x i64>
  %lam162_e1 = shufflevector <4 x i32> %293, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam162_z1 = zext <2 x i32> %lam162_e1 to <2 x i64>
  %294 = mul nuw <2 x i64> %lam162_z0, %lam162_z1
  %295 = bitcast <16 x i8> %286 to <4 x i32>
  %296 = shufflevector <4 x i32> %295, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %297 = bitcast <4 x i32> %296 to <2 x i64>
  %298 = add <2 x i64> %232, %297
  %299 = add <2 x i64> %294, %298
  %300 = add nuw nsw i64 %236, 1
  %301 = icmp eq i64 %300, 15
  br i1 %301, label %302, label %231

302:                                              ; preds = %231
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %304 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %305 = load <16 x i8>, ptr %303, align 1
  %306 = load <16 x i8>, ptr %304, align 1
  %307 = xor <16 x i8> %305, %306
  %308 = bitcast <16 x i8> %307 to <2 x i64>
  %309 = lshr <2 x i64> %308, splat (i64 32)
  %310 = bitcast <16 x i8> %307 to <4 x i32>
  %311 = bitcast <2 x i64> %309 to <4 x i32>
  %lam170_e0 = shufflevector <4 x i32> %310, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam170_z0 = zext <2 x i32> %lam170_e0 to <2 x i64>
  %lam170_e1 = shufflevector <4 x i32> %311, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam170_z1 = zext <2 x i32> %lam170_e1 to <2 x i64>
  %312 = mul nuw <2 x i64> %lam170_z0, %lam170_z1
  %313 = bitcast <16 x i8> %305 to <4 x i32>
  %314 = shufflevector <4 x i32> %313, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %315 = bitcast <4 x i32> %314 to <2 x i64>
  %316 = add <2 x i64> %254, %315
  %317 = add <2 x i64> %312, %316
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %319 = load <16 x i8>, ptr %318, align 1
  %320 = getelementptr inbounds nuw i8, ptr %3, i64 137
  %321 = load <16 x i8>, ptr %320, align 1
  %322 = xor <16 x i8> %319, %321
  %323 = bitcast <16 x i8> %322 to <2 x i64>
  %324 = lshr <2 x i64> %323, splat (i64 32)
  %325 = bitcast <16 x i8> %322 to <4 x i32>
  %326 = bitcast <2 x i64> %324 to <4 x i32>
  %lam178_e0 = shufflevector <4 x i32> %325, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam178_z0 = zext <2 x i32> %lam178_e0 to <2 x i64>
  %lam178_e1 = shufflevector <4 x i32> %326, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam178_z1 = zext <2 x i32> %lam178_e1 to <2 x i64>
  %327 = mul nuw <2 x i64> %lam178_z0, %lam178_z1
  %328 = bitcast <16 x i8> %319 to <4 x i32>
  %329 = shufflevector <4 x i32> %328, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %330 = bitcast <4 x i32> %329 to <2 x i64>
  %331 = add <2 x i64> %269, %330
  %332 = add <2 x i64> %327, %331
  %333 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %334 = load <16 x i8>, ptr %333, align 1
  %335 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %336 = load <16 x i8>, ptr %335, align 1
  %337 = xor <16 x i8> %334, %336
  %338 = bitcast <16 x i8> %337 to <2 x i64>
  %339 = lshr <2 x i64> %338, splat (i64 32)
  %340 = bitcast <16 x i8> %337 to <4 x i32>
  %341 = bitcast <2 x i64> %339 to <4 x i32>
  %lam186_e0 = shufflevector <4 x i32> %340, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam186_z0 = zext <2 x i32> %lam186_e0 to <2 x i64>
  %lam186_e1 = shufflevector <4 x i32> %341, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam186_z1 = zext <2 x i32> %lam186_e1 to <2 x i64>
  %342 = mul nuw <2 x i64> %lam186_z0, %lam186_z1
  %343 = bitcast <16 x i8> %334 to <4 x i32>
  %344 = shufflevector <4 x i32> %343, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %345 = bitcast <4 x i32> %344 to <2 x i64>
  %346 = add <2 x i64> %284, %345
  %347 = add <2 x i64> %342, %346
  %348 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %349 = load <16 x i8>, ptr %348, align 1
  %350 = getelementptr inbounds nuw i8, ptr %3, i64 169
  %351 = load <16 x i8>, ptr %350, align 1
  %352 = xor <16 x i8> %349, %351
  %353 = bitcast <16 x i8> %352 to <2 x i64>
  %354 = lshr <2 x i64> %353, splat (i64 32)
  %355 = bitcast <16 x i8> %352 to <4 x i32>
  %356 = bitcast <2 x i64> %354 to <4 x i32>
  %lam194_e0 = shufflevector <4 x i32> %355, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam194_z0 = zext <2 x i32> %lam194_e0 to <2 x i64>
  %lam194_e1 = shufflevector <4 x i32> %356, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %lam194_z1 = zext <2 x i32> %lam194_e1 to <2 x i64>
  %357 = mul nuw <2 x i64> %lam194_z0, %lam194_z1
  %358 = bitcast <16 x i8> %349 to <4 x i32>
  %359 = shufflevector <4 x i32> %358, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %360 = bitcast <4 x i32> %359 to <2 x i64>
  %361 = add <2 x i64> %299, %360
  %362 = add <2 x i64> %357, %361
  %363 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %364 = extractelement <2 x i64> %317, i64 0
  %365 = extractelement <2 x i64> %317, i64 1
  %366 = load i64, ptr %363, align 1
  %367 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %368 = load i64, ptr %367, align 1
  %369 = xor i64 %366, %364
  %370 = xor i64 %368, %365
  %371 = zext i64 %369 to i128
  %372 = zext i64 %370 to i128
  %373 = mul nuw i128 %372, %371
  %374 = lshr i128 %373, 64
  %375 = xor i128 %374, %373
  %376 = trunc i128 %375 to i64
  %377 = add i64 %376, -2457058741658706944
  %378 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %379 = extractelement <2 x i64> %332, i64 0
  %380 = extractelement <2 x i64> %332, i64 1
  %381 = load i64, ptr %378, align 1
  %382 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %381, %379
  %385 = xor i64 %383, %380
  %386 = zext i64 %384 to i128
  %387 = zext i64 %385 to i128
  %388 = mul nuw i128 %387, %386
  %389 = lshr i128 %388, 64
  %390 = xor i128 %389, %388
  %391 = trunc i128 %390 to i64
  %392 = add i64 %377, %391
  %393 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %394 = extractelement <2 x i64> %347, i64 0
  %395 = extractelement <2 x i64> %347, i64 1
  %396 = load i64, ptr %393, align 1
  %397 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %398 = load i64, ptr %397, align 1
  %399 = xor i64 %396, %394
  %400 = xor i64 %398, %395
  %401 = zext i64 %399 to i128
  %402 = zext i64 %400 to i128
  %403 = mul nuw i128 %402, %401
  %404 = lshr i128 %403, 64
  %405 = xor i128 %404, %403
  %406 = trunc i128 %405 to i64
  %407 = add i64 %392, %406
  %408 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %409 = extractelement <2 x i64> %362, i64 0
  %410 = extractelement <2 x i64> %362, i64 1
  %411 = load i64, ptr %408, align 1
  %412 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %413 = load i64, ptr %412, align 1
  %414 = xor i64 %411, %409
  %415 = xor i64 %413, %410
  %416 = zext i64 %414 to i128
  %417 = zext i64 %415 to i128
  %418 = mul nuw i128 %417, %416
  %419 = lshr i128 %418, 64
  %420 = xor i128 %419, %418
  %421 = trunc i128 %420 to i64
  %422 = add i64 %407, %421
  %423 = lshr i64 %422, 37
  %424 = xor i64 %423, %422
  %425 = mul i64 %424, 1609587791953885689
  %426 = lshr i64 %425, 32
  %427 = xor i64 %426, %425
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #9
  br label %428

428:                                              ; preds = %77, %302
  %429 = phi i64 [ %182, %77 ], [ %427, %302 ]
  ret i64 %429
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x i8> @llvm.loongarch.lsx.vld(ptr, i32 immarg) #5

; Function Attrs: nofree nosync nounwind memory(none)
declare <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64>, i32 immarg) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32>, i32 immarg) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8>, <16 x i8>) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32>, <4 x i32>) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64>, <2 x i64>) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <2 x i64> @llvm.loongarch.lsx.vslli.d(<2 x i64>, i32 immarg) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <4 x i32> @llvm.loongarch.lsx.vreplgr2vr.w(i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nofree nosync nounwind memory(argmem: write, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nofree nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"XXH3_accumulate_512_lsx: argument 1"}
!6 = distinct !{!6, !"XXH3_accumulate_512_lsx"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"XXH3_accumulate_512_lsx: argument 2"}
!9 = !{!10, !8}
!10 = distinct !{!10, !6, !"XXH3_accumulate_512_lsx: argument 0"}
!11 = !{!10, !5}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_scrambleAcc_lsx: argument 1"}
!14 = distinct !{!14, !"XXH3_scrambleAcc_lsx"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"XXH3_scrambleAcc_lsx: argument 0"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_64bits_internal: argument 0"}
!19 = distinct !{!19, !"XXH3_64bits_internal"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_hashLong_64b_withSeed: argument 0"}
!22 = distinct !{!22, !"XXH3_hashLong_64b_withSeed"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH3_hashLong_64b_internal: argument 0"}
!25 = distinct !{!25, !"XXH3_hashLong_64b_internal"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"XXH3_hashLong_64b_internal: argument 1"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"XXH3_hashLong_internal_loop: argument 1"}
!30 = distinct !{!30, !"XXH3_hashLong_internal_loop"}
!31 = !{!32}
!32 = distinct !{!32, !30, !"XXH3_hashLong_internal_loop: argument 2"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH3_accumulate_lsx: argument 1"}
!35 = distinct !{!35, !"XXH3_accumulate_lsx"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"XXH3_accumulate_lsx: argument 2"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"XXH3_accumulate_512_lsx: argument 1"}
!40 = distinct !{!40, !"XXH3_accumulate_512_lsx"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"XXH3_accumulate_512_lsx: argument 2"}
!43 = !{!39, !34, !29, !24, !21, !18}
!44 = !{!45, !42, !46, !37, !47, !32, !27}
!45 = distinct !{!45, !40, !"XXH3_accumulate_512_lsx: argument 0"}
!46 = distinct !{!46, !35, !"XXH3_accumulate_lsx: argument 0"}
!47 = distinct !{!47, !30, !"XXH3_hashLong_internal_loop: argument 0"}
!48 = !{!42, !37, !32, !27}
!49 = !{!45, !39, !46, !34, !47, !29, !24, !21, !18}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"XXH3_accumulate_512_lsx: argument 1"}
!54 = distinct !{!54, !"XXH3_accumulate_512_lsx"}
!55 = !{!56}
!56 = distinct !{!56, !54, !"XXH3_accumulate_512_lsx: argument 2"}
!57 = !{!53, !29, !24, !21, !18}
!58 = !{!59, !56, !47, !32, !27}
!59 = distinct !{!59, !54, !"XXH3_accumulate_512_lsx: argument 0"}
!60 = !{!56, !32, !27}
!61 = !{!59, !53, !47, !29, !24, !21, !18}
!62 = !{!21, !18}
!63 = !{!64}
!64 = distinct !{!64, !65, !"XXH3_initCustomSecret_scalar: argument 0"}
!65 = distinct !{!65, !"XXH3_initCustomSecret_scalar"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"XXH3_hashLong_64b_internal: argument 0"}
!68 = distinct !{!68, !"XXH3_hashLong_64b_internal"}
!69 = !{!70}
!70 = distinct !{!70, !68, !"XXH3_hashLong_64b_internal: argument 1"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"XXH3_hashLong_internal_loop: argument 1"}
!73 = distinct !{!73, !"XXH3_hashLong_internal_loop"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"XXH3_hashLong_internal_loop: argument 2"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"XXH3_accumulate_lsx: argument 1"}
!78 = distinct !{!78, !"XXH3_accumulate_lsx"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"XXH3_accumulate_lsx: argument 2"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"XXH3_accumulate_512_lsx: argument 1"}
!83 = distinct !{!83, !"XXH3_accumulate_512_lsx"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"XXH3_accumulate_512_lsx: argument 2"}
!86 = !{!82, !77, !72, !67, !21, !18}
!87 = !{!88, !85, !89, !80, !90, !75, !70}
!88 = distinct !{!88, !83, !"XXH3_accumulate_512_lsx: argument 0"}
!89 = distinct !{!89, !78, !"XXH3_accumulate_lsx: argument 0"}
!90 = distinct !{!90, !73, !"XXH3_hashLong_internal_loop: argument 0"}
!91 = !{!85, !80, !75, !70}
!92 = !{!88, !82, !89, !77, !90, !72, !67, !21, !18}
!93 = !{!94}
!94 = distinct !{!94, !95, !"XXH3_accumulate_512_lsx: argument 1"}
!95 = distinct !{!95, !"XXH3_accumulate_512_lsx"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"XXH3_accumulate_512_lsx: argument 2"}
!98 = !{!94, !72, !67, !21, !18}
!99 = !{!100, !97, !90, !75, !70}
!100 = distinct !{!100, !95, !"XXH3_accumulate_512_lsx: argument 0"}
!101 = !{!97, !75, !70}
!102 = !{!100, !94, !90, !72, !67, !21, !18}
!103 = !{!104, !70}
!104 = distinct !{!104, !105, !"XXH3_mergeAccs: argument 1"}
!105 = distinct !{!105, !"XXH3_mergeAccs"}
!106 = !{!107, !67, !21, !18}
!107 = distinct !{!107, !105, !"XXH3_mergeAccs: argument 0"}
