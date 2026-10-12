; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/63e083c/wrap_simd.c'
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
  %50 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %26, i32 0)
  %51 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %27, i32 0)
  %52 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %50, <16 x i8> %51)
  %53 = bitcast <16 x i8> %52 to <2 x i64>
  %54 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %53, i32 32)
  %55 = bitcast <16 x i8> %52 to <4 x i32>
  %56 = bitcast <2 x i64> %54 to <4 x i32>
  %57 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %55, <4 x i32> %56)
  %58 = bitcast <16 x i8> %50 to <4 x i32>
  %59 = call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %58, i32 78)
  %60 = bitcast <4 x i32> %59 to <2 x i64>
  %61 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %29, <2 x i64> %60)
  %62 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %57, <2 x i64> %61)
  %63 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %37, i32 0)
  %64 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %44, i32 0)
  %65 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %63, <16 x i8> %64)
  %66 = bitcast <16 x i8> %65 to <2 x i64>
  %67 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %66, i32 32)
  %68 = bitcast <16 x i8> %65 to <4 x i32>
  %69 = bitcast <2 x i64> %67 to <4 x i32>
  %70 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %68, <4 x i32> %69)
  %71 = bitcast <16 x i8> %63 to <4 x i32>
  %72 = call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %71, i32 78)
  %73 = bitcast <4 x i32> %72 to <2 x i64>
  %74 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %31, <2 x i64> %73)
  %75 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %70, <2 x i64> %74)
  %76 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %39, i32 0)
  %77 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %46, i32 0)
  %78 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %76, <16 x i8> %77)
  %79 = bitcast <16 x i8> %78 to <2 x i64>
  %80 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %79, i32 32)
  %81 = bitcast <16 x i8> %78 to <4 x i32>
  %82 = bitcast <2 x i64> %80 to <4 x i32>
  %83 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %81, <4 x i32> %82)
  %84 = bitcast <16 x i8> %76 to <4 x i32>
  %85 = call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %84, i32 78)
  %86 = bitcast <4 x i32> %85 to <2 x i64>
  %87 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %33, <2 x i64> %86)
  %88 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %83, <2 x i64> %87)
  %89 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %41, i32 0)
  %90 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %48, i32 0)
  %91 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %89, <16 x i8> %90)
  %92 = bitcast <16 x i8> %91 to <2 x i64>
  %93 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %92, i32 32)
  %94 = bitcast <16 x i8> %91 to <4 x i32>
  %95 = bitcast <2 x i64> %93 to <4 x i32>
  %96 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %94, <4 x i32> %95)
  %97 = bitcast <16 x i8> %89 to <4 x i32>
  %98 = call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %97, i32 78)
  %99 = bitcast <4 x i32> %98 to <2 x i64>
  %100 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %35, <2 x i64> %99)
  %101 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %96, <2 x i64> %100)
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
  %34 = tail call <4 x i32> @llvm.loongarch.lsx.vreplgr2vr.w(i32 -1640531535)
  %35 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %20, i32 47)
  %36 = bitcast <2 x i64> %20 to <16 x i8>
  %37 = bitcast <2 x i64> %35 to <16 x i8>
  %38 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %36, <16 x i8> %37)
  %39 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %18, i32 0)
  %40 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %38, <16 x i8> %39)
  %41 = bitcast <16 x i8> %40 to <2 x i64>
  %42 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %41, i32 32)
  %43 = bitcast <16 x i8> %40 to <4 x i32>
  %44 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %43, <4 x i32> %34)
  %45 = bitcast <2 x i64> %42 to <4 x i32>
  %46 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %45, <4 x i32> %34)
  %47 = call <2 x i64> @llvm.loongarch.lsx.vslli.d(<2 x i64> %46, i32 32)
  %48 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %44, <2 x i64> %47)
  %49 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %22, i32 47)
  %50 = bitcast <2 x i64> %22 to <16 x i8>
  %51 = bitcast <2 x i64> %49 to <16 x i8>
  %52 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %50, <16 x i8> %51)
  %53 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %28, i32 0)
  %54 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %52, <16 x i8> %53)
  %55 = bitcast <16 x i8> %54 to <2 x i64>
  %56 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %55, i32 32)
  %57 = bitcast <16 x i8> %54 to <4 x i32>
  %58 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %57, <4 x i32> %34)
  %59 = bitcast <2 x i64> %56 to <4 x i32>
  %60 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %59, <4 x i32> %34)
  %61 = call <2 x i64> @llvm.loongarch.lsx.vslli.d(<2 x i64> %60, i32 32)
  %62 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %58, <2 x i64> %61)
  %63 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %24, i32 47)
  %64 = bitcast <2 x i64> %24 to <16 x i8>
  %65 = bitcast <2 x i64> %63 to <16 x i8>
  %66 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %64, <16 x i8> %65)
  %67 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %30, i32 0)
  %68 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %66, <16 x i8> %67)
  %69 = bitcast <16 x i8> %68 to <2 x i64>
  %70 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %69, i32 32)
  %71 = bitcast <16 x i8> %68 to <4 x i32>
  %72 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %71, <4 x i32> %34)
  %73 = bitcast <2 x i64> %70 to <4 x i32>
  %74 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %73, <4 x i32> %34)
  %75 = call <2 x i64> @llvm.loongarch.lsx.vslli.d(<2 x i64> %74, i32 32)
  %76 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %72, <2 x i64> %75)
  %77 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %26, i32 47)
  %78 = bitcast <2 x i64> %26 to <16 x i8>
  %79 = bitcast <2 x i64> %77 to <16 x i8>
  %80 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %78, <16 x i8> %79)
  %81 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %32, i32 0)
  %82 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %80, <16 x i8> %81)
  %83 = bitcast <16 x i8> %82 to <2 x i64>
  %84 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %83, i32 32)
  %85 = bitcast <16 x i8> %82 to <4 x i32>
  %86 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %85, <4 x i32> %34)
  %87 = bitcast <2 x i64> %84 to <4 x i32>
  %88 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %87, <4 x i32> %34)
  %89 = call <2 x i64> @llvm.loongarch.lsx.vslli.d(<2 x i64> %88, i32 32)
  %90 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %86, <2 x i64> %89)
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
  %17 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr %13, i32 0)
  %18 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %16, i32 0)
  %19 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %17, <16 x i8> %18)
  %20 = bitcast <16 x i8> %19 to <2 x i64>
  %21 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %20, i32 32)
  %22 = bitcast <16 x i8> %19 to <4 x i32>
  %23 = bitcast <2 x i64> %21 to <4 x i32>
  %24 = tail call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %22, <4 x i32> %23)
  %25 = bitcast <16 x i8> %17 to <4 x i32>
  %26 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %25, i32 78)
  %27 = bitcast <4 x i32> %26 to <2 x i64>
  %28 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %10, <2 x i64> %27)
  %29 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %24, <2 x i64> %28)
  %30 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %31 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %30, i32 0)
  %32 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %33 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %32, i32 0)
  %34 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %31, <16 x i8> %33)
  %35 = bitcast <16 x i8> %34 to <2 x i64>
  %36 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %35, i32 32)
  %37 = bitcast <16 x i8> %34 to <4 x i32>
  %38 = bitcast <2 x i64> %36 to <4 x i32>
  %39 = tail call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %37, <4 x i32> %38)
  %40 = bitcast <16 x i8> %31 to <4 x i32>
  %41 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %40, i32 78)
  %42 = bitcast <4 x i32> %41 to <2 x i64>
  %43 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %9, <2 x i64> %42)
  %44 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %39, <2 x i64> %43)
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %46 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %45, i32 0)
  %47 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %48 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %47, i32 0)
  %49 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %46, <16 x i8> %48)
  %50 = bitcast <16 x i8> %49 to <2 x i64>
  %51 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %50, i32 32)
  %52 = bitcast <16 x i8> %49 to <4 x i32>
  %53 = bitcast <2 x i64> %51 to <4 x i32>
  %54 = tail call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %52, <4 x i32> %53)
  %55 = bitcast <16 x i8> %46 to <4 x i32>
  %56 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %55, i32 78)
  %57 = bitcast <4 x i32> %56 to <2 x i64>
  %58 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %8, <2 x i64> %57)
  %59 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %54, <2 x i64> %58)
  %60 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %61 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %60, i32 0)
  %62 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %63 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %62, i32 0)
  %64 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %61, <16 x i8> %63)
  %65 = bitcast <16 x i8> %64 to <2 x i64>
  %66 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %65, i32 32)
  %67 = bitcast <16 x i8> %64 to <4 x i32>
  %68 = bitcast <2 x i64> %66 to <4 x i32>
  %69 = tail call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %67, <4 x i32> %68)
  %70 = bitcast <16 x i8> %61 to <4 x i32>
  %71 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %70, i32 78)
  %72 = bitcast <4 x i32> %71 to <2 x i64>
  %73 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %7, <2 x i64> %72)
  %74 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %69, <2 x i64> %73)
  %75 = add nuw nsw i64 %11, 1
  %76 = icmp eq i64 %75, 15
  br i1 %76, label %77, label %6

77:                                               ; preds = %6
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %79 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %78, i32 0)
  %80 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i32 0)
  %81 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %79, <16 x i8> %80)
  %82 = bitcast <16 x i8> %81 to <2 x i64>
  %83 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %82, i32 32)
  %84 = bitcast <16 x i8> %81 to <4 x i32>
  %85 = bitcast <2 x i64> %83 to <4 x i32>
  %86 = tail call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %84, <4 x i32> %85)
  %87 = bitcast <16 x i8> %79 to <4 x i32>
  %88 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %87, i32 78)
  %89 = bitcast <4 x i32> %88 to <2 x i64>
  %90 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %29, <2 x i64> %89)
  %91 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %86, <2 x i64> %90)
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %93 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %92, i32 0)
  %94 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 137), i32 0)
  %95 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %93, <16 x i8> %94)
  %96 = bitcast <16 x i8> %95 to <2 x i64>
  %97 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %96, i32 32)
  %98 = bitcast <16 x i8> %95 to <4 x i32>
  %99 = bitcast <2 x i64> %97 to <4 x i32>
  %100 = tail call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %98, <4 x i32> %99)
  %101 = bitcast <16 x i8> %93 to <4 x i32>
  %102 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %101, i32 78)
  %103 = bitcast <4 x i32> %102 to <2 x i64>
  %104 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %44, <2 x i64> %103)
  %105 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %100, <2 x i64> %104)
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %107 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %106, i32 0)
  %108 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 153), i32 0)
  %109 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %107, <16 x i8> %108)
  %110 = bitcast <16 x i8> %109 to <2 x i64>
  %111 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %110, i32 32)
  %112 = bitcast <16 x i8> %109 to <4 x i32>
  %113 = bitcast <2 x i64> %111 to <4 x i32>
  %114 = tail call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %112, <4 x i32> %113)
  %115 = bitcast <16 x i8> %107 to <4 x i32>
  %116 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %115, i32 78)
  %117 = bitcast <4 x i32> %116 to <2 x i64>
  %118 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %59, <2 x i64> %117)
  %119 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %114, <2 x i64> %118)
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %121 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %120, i32 0)
  %122 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 169), i32 0)
  %123 = tail call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %121, <16 x i8> %122)
  %124 = bitcast <16 x i8> %123 to <2 x i64>
  %125 = tail call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %124, i32 32)
  %126 = bitcast <16 x i8> %123 to <4 x i32>
  %127 = bitcast <2 x i64> %125 to <4 x i32>
  %128 = tail call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %126, <4 x i32> %127)
  %129 = bitcast <16 x i8> %121 to <4 x i32>
  %130 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %129, i32 78)
  %131 = bitcast <4 x i32> %130 to <2 x i64>
  %132 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %74, <2 x i64> %131)
  %133 = tail call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %128, <2 x i64> %132)
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
  %242 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr %238, i32 0)
  %243 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %241, i32 0)
  %244 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %242, <16 x i8> %243)
  %245 = bitcast <16 x i8> %244 to <2 x i64>
  %246 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %245, i32 32)
  %247 = bitcast <16 x i8> %244 to <4 x i32>
  %248 = bitcast <2 x i64> %246 to <4 x i32>
  %249 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %247, <4 x i32> %248)
  %250 = bitcast <16 x i8> %242 to <4 x i32>
  %251 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %250, i32 78)
  %252 = bitcast <4 x i32> %251 to <2 x i64>
  %253 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %235, <2 x i64> %252)
  %254 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %249, <2 x i64> %253)
  %255 = getelementptr inbounds nuw i8, ptr %238, i64 16
  %256 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %255, i32 0)
  %257 = getelementptr inbounds nuw i8, ptr %241, i64 16
  %258 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %257, i32 0)
  %259 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %256, <16 x i8> %258)
  %260 = bitcast <16 x i8> %259 to <2 x i64>
  %261 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %260, i32 32)
  %262 = bitcast <16 x i8> %259 to <4 x i32>
  %263 = bitcast <2 x i64> %261 to <4 x i32>
  %264 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %262, <4 x i32> %263)
  %265 = bitcast <16 x i8> %256 to <4 x i32>
  %266 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %265, i32 78)
  %267 = bitcast <4 x i32> %266 to <2 x i64>
  %268 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %234, <2 x i64> %267)
  %269 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %264, <2 x i64> %268)
  %270 = getelementptr inbounds nuw i8, ptr %238, i64 32
  %271 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %270, i32 0)
  %272 = getelementptr inbounds nuw i8, ptr %241, i64 32
  %273 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %272, i32 0)
  %274 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %271, <16 x i8> %273)
  %275 = bitcast <16 x i8> %274 to <2 x i64>
  %276 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %275, i32 32)
  %277 = bitcast <16 x i8> %274 to <4 x i32>
  %278 = bitcast <2 x i64> %276 to <4 x i32>
  %279 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %277, <4 x i32> %278)
  %280 = bitcast <16 x i8> %271 to <4 x i32>
  %281 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %280, i32 78)
  %282 = bitcast <4 x i32> %281 to <2 x i64>
  %283 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %233, <2 x i64> %282)
  %284 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %279, <2 x i64> %283)
  %285 = getelementptr inbounds nuw i8, ptr %238, i64 48
  %286 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %285, i32 0)
  %287 = getelementptr inbounds nuw i8, ptr %241, i64 48
  %288 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %287, i32 0)
  %289 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %286, <16 x i8> %288)
  %290 = bitcast <16 x i8> %289 to <2 x i64>
  %291 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %290, i32 32)
  %292 = bitcast <16 x i8> %289 to <4 x i32>
  %293 = bitcast <2 x i64> %291 to <4 x i32>
  %294 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %292, <4 x i32> %293)
  %295 = bitcast <16 x i8> %286 to <4 x i32>
  %296 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %295, i32 78)
  %297 = bitcast <4 x i32> %296 to <2 x i64>
  %298 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %232, <2 x i64> %297)
  %299 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %294, <2 x i64> %298)
  %300 = add nuw nsw i64 %236, 1
  %301 = icmp eq i64 %300, 15
  br i1 %301, label %302, label %231

302:                                              ; preds = %231
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %304 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %305 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %303, i32 0)
  %306 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %304, i32 0)
  %307 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %305, <16 x i8> %306)
  %308 = bitcast <16 x i8> %307 to <2 x i64>
  %309 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %308, i32 32)
  %310 = bitcast <16 x i8> %307 to <4 x i32>
  %311 = bitcast <2 x i64> %309 to <4 x i32>
  %312 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %310, <4 x i32> %311)
  %313 = bitcast <16 x i8> %305 to <4 x i32>
  %314 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %313, i32 78)
  %315 = bitcast <4 x i32> %314 to <2 x i64>
  %316 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %254, <2 x i64> %315)
  %317 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %312, <2 x i64> %316)
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %319 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %318, i32 0)
  %320 = getelementptr inbounds nuw i8, ptr %3, i64 137
  %321 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %320, i32 0)
  %322 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %319, <16 x i8> %321)
  %323 = bitcast <16 x i8> %322 to <2 x i64>
  %324 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %323, i32 32)
  %325 = bitcast <16 x i8> %322 to <4 x i32>
  %326 = bitcast <2 x i64> %324 to <4 x i32>
  %327 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %325, <4 x i32> %326)
  %328 = bitcast <16 x i8> %319 to <4 x i32>
  %329 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %328, i32 78)
  %330 = bitcast <4 x i32> %329 to <2 x i64>
  %331 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %269, <2 x i64> %330)
  %332 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %327, <2 x i64> %331)
  %333 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %334 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %333, i32 0)
  %335 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %336 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %335, i32 0)
  %337 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %334, <16 x i8> %336)
  %338 = bitcast <16 x i8> %337 to <2 x i64>
  %339 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %338, i32 32)
  %340 = bitcast <16 x i8> %337 to <4 x i32>
  %341 = bitcast <2 x i64> %339 to <4 x i32>
  %342 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %340, <4 x i32> %341)
  %343 = bitcast <16 x i8> %334 to <4 x i32>
  %344 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %343, i32 78)
  %345 = bitcast <4 x i32> %344 to <2 x i64>
  %346 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %284, <2 x i64> %345)
  %347 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %342, <2 x i64> %346)
  %348 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %349 = tail call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %348, i32 0)
  %350 = getelementptr inbounds nuw i8, ptr %3, i64 169
  %351 = call <16 x i8> @llvm.loongarch.lsx.vld(ptr nonnull %350, i32 0)
  %352 = call <16 x i8> @llvm.loongarch.lsx.vxor.v(<16 x i8> %349, <16 x i8> %351)
  %353 = bitcast <16 x i8> %352 to <2 x i64>
  %354 = call <2 x i64> @llvm.loongarch.lsx.vsrli.d(<2 x i64> %353, i32 32)
  %355 = bitcast <16 x i8> %352 to <4 x i32>
  %356 = bitcast <2 x i64> %354 to <4 x i32>
  %357 = call <2 x i64> @llvm.loongarch.lsx.vmulwev.d.wu(<4 x i32> %355, <4 x i32> %356)
  %358 = bitcast <16 x i8> %349 to <4 x i32>
  %359 = tail call <4 x i32> @llvm.loongarch.lsx.vshuf4i.w(<4 x i32> %358, i32 78)
  %360 = bitcast <4 x i32> %359 to <2 x i64>
  %361 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %299, <2 x i64> %360)
  %362 = call <2 x i64> @llvm.loongarch.lsx.vadd.d(<2 x i64> %357, <2 x i64> %361)
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
!103 = !{!104, !106, !70}
!104 = distinct !{!104, !105, !"XXH3_mergeAccs: argument 1"}
!105 = distinct !{!105, !"XXH3_mergeAccs"}
!106 = distinct !{!106, !107, !"XXH3_finalizeLong_64b: argument 1"}
!107 = distinct !{!107, !"XXH3_finalizeLong_64b"}
!108 = !{!109, !110, !67, !21, !18}
!109 = distinct !{!109, !105, !"XXH3_mergeAccs: argument 0"}
!110 = distinct !{!110, !107, !"XXH3_finalizeLong_64b: argument 0"}
