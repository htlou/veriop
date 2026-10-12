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
  %50 = call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %26, i32 0)
  %51 = call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %27, i32 0)
  %52 = call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %50, <32 x i8> %51)
  %53 = bitcast <32 x i8> %52 to <4 x i64>
  %54 = call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %53, i32 32)
  %55 = bitcast <32 x i8> %52 to <8 x i32>
  %56 = bitcast <4 x i64> %54 to <8 x i32>
  %57 = call <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32> %55, <8 x i32> %56)
  %58 = bitcast <32 x i8> %50 to <8 x i32>
  %59 = call <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32> %58, i32 78)
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %31, <4 x i64> %60)
  %62 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %57, <4 x i64> %61)
  %63 = call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %39, i32 0)
  %64 = call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %46, i32 0)
  %65 = call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %63, <32 x i8> %64)
  %66 = bitcast <32 x i8> %65 to <4 x i64>
  %67 = call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %66, i32 32)
  %68 = bitcast <32 x i8> %65 to <8 x i32>
  %69 = bitcast <4 x i64> %67 to <8 x i32>
  %70 = call <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32> %68, <8 x i32> %69)
  %71 = bitcast <32 x i8> %63 to <8 x i32>
  %72 = call <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32> %71, i32 78)
  %73 = bitcast <8 x i32> %72 to <4 x i64>
  %74 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %35, <4 x i64> %73)
  %75 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %70, <4 x i64> %74)
  store <4 x i64> %62, ptr %0, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %75, ptr %76, align 8
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
  %34 = tail call <4 x i64> @llvm.loongarch.lasx.xvreplgr2vr.d(i64 2654435761)
  %35 = tail call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %22, i32 47)
  %36 = bitcast <4 x i64> %22 to <32 x i8>
  %37 = bitcast <4 x i64> %35 to <32 x i8>
  %38 = tail call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %36, <32 x i8> %37)
  %39 = call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %18, i32 0)
  %40 = call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %38, <32 x i8> %39)
  %41 = bitcast <32 x i8> %40 to <4 x i64>
  %42 = call <4 x i64> @llvm.loongarch.lasx.xvmul.d(<4 x i64> %41, <4 x i64> %34)
  %43 = tail call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %26, i32 47)
  %44 = bitcast <4 x i64> %26 to <32 x i8>
  %45 = bitcast <4 x i64> %43 to <32 x i8>
  %46 = tail call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %44, <32 x i8> %45)
  %47 = call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %30, i32 0)
  %48 = call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %46, <32 x i8> %47)
  %49 = bitcast <32 x i8> %48 to <4 x i64>
  %50 = call <4 x i64> @llvm.loongarch.lasx.xvmul.d(<4 x i64> %49, <4 x i64> %34)
  store <4 x i64> %42, ptr %0, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %50, ptr %51, align 8
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
  br i1 %4, label %5, label %123

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi <4 x i64> [ %42, %6 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %5 ]
  %8 = phi <4 x i64> [ %27, %6 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %5 ]
  %9 = phi i64 [ %43, %6 ], [ 0, %5 ]
  %10 = shl i64 %9, 6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %12, i32 0, i32 3, i32 1)
  %13 = shl i64 %9, 3
  %14 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %13
  %15 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr %11, i32 0)
  %16 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %14, i32 0)
  %17 = tail call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %15, <32 x i8> %16)
  %18 = bitcast <32 x i8> %17 to <4 x i64>
  %19 = tail call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %18, i32 32)
  %20 = bitcast <32 x i8> %17 to <8 x i32>
  %21 = bitcast <4 x i64> %19 to <8 x i32>
  %22 = tail call <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32> %20, <8 x i32> %21)
  %23 = bitcast <32 x i8> %15 to <8 x i32>
  %24 = tail call <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32> %23, i32 78)
  %25 = bitcast <8 x i32> %24 to <4 x i64>
  %26 = tail call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %8, <4 x i64> %25)
  %27 = tail call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %22, <4 x i64> %26)
  %28 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %29 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %28, i32 0)
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %31 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %30, i32 0)
  %32 = tail call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %29, <32 x i8> %31)
  %33 = bitcast <32 x i8> %32 to <4 x i64>
  %34 = tail call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %33, i32 32)
  %35 = bitcast <32 x i8> %32 to <8 x i32>
  %36 = bitcast <4 x i64> %34 to <8 x i32>
  %37 = tail call <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32> %35, <8 x i32> %36)
  %38 = bitcast <32 x i8> %29 to <8 x i32>
  %39 = tail call <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32> %38, i32 78)
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  %41 = tail call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %7, <4 x i64> %40)
  %42 = tail call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %37, <4 x i64> %41)
  %43 = add nuw nsw i64 %9, 1
  %44 = icmp eq i64 %43, 15
  br i1 %44, label %45, label %6

45:                                               ; preds = %6
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %47 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %46, i32 0)
  %48 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i32 0)
  %49 = tail call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %47, <32 x i8> %48)
  %50 = bitcast <32 x i8> %49 to <4 x i64>
  %51 = tail call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %50, i32 32)
  %52 = bitcast <32 x i8> %49 to <8 x i32>
  %53 = bitcast <4 x i64> %51 to <8 x i32>
  %54 = tail call <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32> %52, <8 x i32> %53)
  %55 = bitcast <32 x i8> %47 to <8 x i32>
  %56 = tail call <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32> %55, i32 78)
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = tail call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %27, <4 x i64> %57)
  %59 = tail call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %54, <4 x i64> %58)
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %61 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %60, i32 0)
  %62 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 153), i32 0)
  %63 = tail call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %61, <32 x i8> %62)
  %64 = bitcast <32 x i8> %63 to <4 x i64>
  %65 = tail call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %64, i32 32)
  %66 = bitcast <32 x i8> %63 to <8 x i32>
  %67 = bitcast <4 x i64> %65 to <8 x i32>
  %68 = tail call <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32> %66, <8 x i32> %67)
  %69 = bitcast <32 x i8> %61 to <8 x i32>
  %70 = tail call <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32> %69, i32 78)
  %71 = bitcast <8 x i32> %70 to <4 x i64>
  %72 = tail call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %42, <4 x i64> %71)
  %73 = tail call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %68, <4 x i64> %72)
  %74 = extractelement <4 x i64> %59, i64 0
  %75 = extractelement <4 x i64> %59, i64 1
  %76 = xor i64 %74, 7914194659941938988
  %77 = xor i64 %75, -6611157965513653271
  %78 = zext i64 %76 to i128
  %79 = zext i64 %77 to i128
  %80 = mul nuw i128 %79, %78
  %81 = lshr i128 %80, 64
  %82 = xor i128 %81, %80
  %83 = trunc i128 %82 to i64
  %84 = add i64 %83, -2457058741658706944
  %85 = extractelement <4 x i64> %59, i64 2
  %86 = extractelement <4 x i64> %59, i64 3
  %87 = xor i64 %85, -1839215637059881052
  %88 = xor i64 %86, -3433288310154277810
  %89 = zext i64 %87 to i128
  %90 = zext i64 %88 to i128
  %91 = mul nuw i128 %90, %89
  %92 = lshr i128 %91, 64
  %93 = xor i128 %92, %91
  %94 = trunc i128 %93 to i64
  %95 = add i64 %84, %94
  %96 = extractelement <4 x i64> %73, i64 0
  %97 = extractelement <4 x i64> %73, i64 1
  %98 = xor i64 %96, 5046485836271438973
  %99 = xor i64 %97, -8055285457383852172
  %100 = zext i64 %98 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %95, %105
  %107 = extractelement <4 x i64> %73, i64 2
  %108 = extractelement <4 x i64> %73, i64 3
  %109 = xor i64 %107, 5920048007935066598
  %110 = xor i64 %108, 7336514198459093435
  %111 = zext i64 %109 to i128
  %112 = zext i64 %110 to i128
  %113 = mul nuw i128 %112, %111
  %114 = lshr i128 %113, 64
  %115 = xor i128 %114, %113
  %116 = trunc i128 %115 to i64
  %117 = add i64 %106, %116
  %118 = lshr i64 %117, 37
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, 1609587791953885689
  %121 = lshr i64 %120, 32
  %122 = xor i64 %121, %120
  br label %306

123:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #9
  %124 = add i64 %1, -4734510112055689544
  %125 = sub i64 2066345149520216444, %1
  store i64 %124, ptr %3, align 8
  %126 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %125, ptr %126, align 8
  %127 = add i64 %1, -2623469361688619810
  %128 = sub i64 2262974939099578482, %1
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %127, ptr %129, align 8
  %130 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %128, ptr %130, align 8
  %131 = add i64 %1, 8711581037947681227
  %132 = sub i64 2410270004345854594, %1
  %133 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %131, ptr %133, align 8
  %134 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %132, ptr %134, align 8
  %135 = add i64 %1, -8204357891075471176
  %136 = sub i64 5487137525590930912, %1
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %135, ptr %137, align 8
  %138 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %136, ptr %138, align 8
  %139 = add i64 %1, -3818837453329782724
  %140 = sub i64 -6688317018830679928, %1
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %139, ptr %141, align 8
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %140, ptr %142, align 8
  %143 = add i64 %1, 5690594596133299313
  %144 = sub i64 -2833645246901970632, %1
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %143, ptr %145, align 8
  %146 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %144, ptr %146, align 8
  %147 = add i64 %1, 4554437623014685352
  %148 = sub i64 2111919702937427193, %1
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %147, ptr %149, align 8
  %150 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %148, ptr %150, align 8
  %151 = add i64 %1, 3556072174620004746
  %152 = sub i64 7238261902898274248, %1
  %153 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %151, ptr %153, align 8
  %154 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %152, ptr %154, align 8
  %155 = add i64 %1, -4329134394285701654
  %156 = sub i64 -1485321483350670907, %1
  %157 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %155, ptr %157, align 8
  %158 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %156, ptr %158, align 8
  %159 = add i64 %1, 5321830579834785047
  %160 = sub i64 -7032137544937171245, %1
  %161 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 %159, ptr %161, align 8
  %162 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 %160, ptr %162, align 8
  %163 = add i64 %1, -242834301215959509
  %164 = sub i64 -3588858202114426737, %1
  %165 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %163, ptr %165, align 8
  %166 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %164, ptr %166, align 8
  %167 = add i64 %1, 2883454493032893253
  %168 = sub i64 9097354517224871855, %1
  %169 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %167, ptr %169, align 8
  %170 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 %168, ptr %170, align 8
  br label %171

171:                                              ; preds = %171, %123
  %172 = phi <4 x i64> [ %207, %171 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %123 ]
  %173 = phi <4 x i64> [ %192, %171 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %123 ]
  %174 = phi i64 [ %208, %171 ], [ 0, %123 ]
  %175 = shl i64 %174, 6
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 %175
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %177, i32 0, i32 3, i32 1)
  %178 = shl i64 %174, 3
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 %178
  %180 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr %176, i32 0)
  %181 = call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %179, i32 0)
  %182 = call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %180, <32 x i8> %181)
  %183 = bitcast <32 x i8> %182 to <4 x i64>
  %184 = call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %183, i32 32)
  %185 = bitcast <32 x i8> %182 to <8 x i32>
  %186 = bitcast <4 x i64> %184 to <8 x i32>
  %187 = call <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32> %185, <8 x i32> %186)
  %188 = bitcast <32 x i8> %180 to <8 x i32>
  %189 = tail call <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32> %188, i32 78)
  %190 = bitcast <8 x i32> %189 to <4 x i64>
  %191 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %173, <4 x i64> %190)
  %192 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %187, <4 x i64> %191)
  %193 = getelementptr inbounds nuw i8, ptr %176, i64 32
  %194 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %193, i32 0)
  %195 = getelementptr inbounds nuw i8, ptr %179, i64 32
  %196 = call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %195, i32 0)
  %197 = call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %194, <32 x i8> %196)
  %198 = bitcast <32 x i8> %197 to <4 x i64>
  %199 = call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %198, i32 32)
  %200 = bitcast <32 x i8> %197 to <8 x i32>
  %201 = bitcast <4 x i64> %199 to <8 x i32>
  %202 = call <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32> %200, <8 x i32> %201)
  %203 = bitcast <32 x i8> %194 to <8 x i32>
  %204 = tail call <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32> %203, i32 78)
  %205 = bitcast <8 x i32> %204 to <4 x i64>
  %206 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %172, <4 x i64> %205)
  %207 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %202, <4 x i64> %206)
  %208 = add nuw nsw i64 %174, 1
  %209 = icmp eq i64 %208, 15
  br i1 %209, label %210, label %171

210:                                              ; preds = %171
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %212 = getelementptr inbounds nuw i8, ptr %3, i64 121
  %213 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %211, i32 0)
  %214 = call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %212, i32 0)
  %215 = call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %213, <32 x i8> %214)
  %216 = bitcast <32 x i8> %215 to <4 x i64>
  %217 = call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %216, i32 32)
  %218 = bitcast <32 x i8> %215 to <8 x i32>
  %219 = bitcast <4 x i64> %217 to <8 x i32>
  %220 = call <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32> %218, <8 x i32> %219)
  %221 = bitcast <32 x i8> %213 to <8 x i32>
  %222 = tail call <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32> %221, i32 78)
  %223 = bitcast <8 x i32> %222 to <4 x i64>
  %224 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %192, <4 x i64> %223)
  %225 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %220, <4 x i64> %224)
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %227 = tail call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %226, i32 0)
  %228 = getelementptr inbounds nuw i8, ptr %3, i64 153
  %229 = call <32 x i8> @llvm.loongarch.lasx.xvld(ptr nonnull %228, i32 0)
  %230 = call <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8> %227, <32 x i8> %229)
  %231 = bitcast <32 x i8> %230 to <4 x i64>
  %232 = call <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64> %231, i32 32)
  %233 = bitcast <32 x i8> %230 to <8 x i32>
  %234 = bitcast <4 x i64> %232 to <8 x i32>
  %235 = call <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32> %233, <8 x i32> %234)
  %236 = bitcast <32 x i8> %227 to <8 x i32>
  %237 = tail call <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32> %236, i32 78)
  %238 = bitcast <8 x i32> %237 to <4 x i64>
  %239 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %207, <4 x i64> %238)
  %240 = call <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64> %235, <4 x i64> %239)
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %242 = extractelement <4 x i64> %225, i64 0
  %243 = extractelement <4 x i64> %225, i64 1
  %244 = load i64, ptr %241, align 1
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %246 = load i64, ptr %245, align 1
  %247 = xor i64 %244, %242
  %248 = xor i64 %246, %243
  %249 = zext i64 %247 to i128
  %250 = zext i64 %248 to i128
  %251 = mul nuw i128 %250, %249
  %252 = lshr i128 %251, 64
  %253 = xor i128 %252, %251
  %254 = trunc i128 %253 to i64
  %255 = add i64 %254, -2457058741658706944
  %256 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %257 = extractelement <4 x i64> %225, i64 2
  %258 = extractelement <4 x i64> %225, i64 3
  %259 = load i64, ptr %256, align 1
  %260 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %261 = load i64, ptr %260, align 1
  %262 = xor i64 %259, %257
  %263 = xor i64 %261, %258
  %264 = zext i64 %262 to i128
  %265 = zext i64 %263 to i128
  %266 = mul nuw i128 %265, %264
  %267 = lshr i128 %266, 64
  %268 = xor i128 %267, %266
  %269 = trunc i128 %268 to i64
  %270 = add i64 %255, %269
  %271 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %272 = extractelement <4 x i64> %240, i64 0
  %273 = extractelement <4 x i64> %240, i64 1
  %274 = load i64, ptr %271, align 1
  %275 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %276 = load i64, ptr %275, align 1
  %277 = xor i64 %274, %272
  %278 = xor i64 %276, %273
  %279 = zext i64 %277 to i128
  %280 = zext i64 %278 to i128
  %281 = mul nuw i128 %280, %279
  %282 = lshr i128 %281, 64
  %283 = xor i128 %282, %281
  %284 = trunc i128 %283 to i64
  %285 = add i64 %270, %284
  %286 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %287 = extractelement <4 x i64> %240, i64 2
  %288 = extractelement <4 x i64> %240, i64 3
  %289 = load i64, ptr %286, align 1
  %290 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %291 = load i64, ptr %290, align 1
  %292 = xor i64 %289, %287
  %293 = xor i64 %291, %288
  %294 = zext i64 %292 to i128
  %295 = zext i64 %293 to i128
  %296 = mul nuw i128 %295, %294
  %297 = lshr i128 %296, 64
  %298 = xor i128 %297, %296
  %299 = trunc i128 %298 to i64
  %300 = add i64 %285, %299
  %301 = lshr i64 %300, 37
  %302 = xor i64 %301, %300
  %303 = mul i64 %302, 1609587791953885689
  %304 = lshr i64 %303, 32
  %305 = xor i64 %304, %303
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #9
  br label %306

306:                                              ; preds = %45, %210
  %307 = phi i64 [ %122, %45 ], [ %305, %210 ]
  ret i64 %307
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <32 x i8> @llvm.loongarch.lasx.xvld(ptr, i32 immarg) #5

; Function Attrs: nofree nosync nounwind memory(none)
declare <4 x i64> @llvm.loongarch.lasx.xvsrli.d(<4 x i64>, i32 immarg) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <8 x i32> @llvm.loongarch.lasx.xvshuf4i.w(<8 x i32>, i32 immarg) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <32 x i8> @llvm.loongarch.lasx.xvxor.v(<32 x i8>, <32 x i8>) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <4 x i64> @llvm.loongarch.lasx.xvmulwev.d.wu(<8 x i32>, <8 x i32>) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <4 x i64> @llvm.loongarch.lasx.xvadd.d(<4 x i64>, <4 x i64>) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <4 x i64> @llvm.loongarch.lasx.xvreplgr2vr.d(i64) #6

; Function Attrs: nofree nosync nounwind memory(none)
declare <4 x i64> @llvm.loongarch.lasx.xvmul.d(<4 x i64>, <4 x i64>) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nofree nosync nounwind memory(argmem: write, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nofree nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
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
!5 = distinct !{!5, !6, !"XXH3_accumulate_512_lasx: argument 1"}
!6 = distinct !{!6, !"XXH3_accumulate_512_lasx"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"XXH3_accumulate_512_lasx: argument 2"}
!9 = !{!10, !8}
!10 = distinct !{!10, !6, !"XXH3_accumulate_512_lasx: argument 0"}
!11 = !{!10, !5}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_scrambleAcc_lasx: argument 1"}
!14 = distinct !{!14, !"XXH3_scrambleAcc_lasx"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"XXH3_scrambleAcc_lasx: argument 0"}
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
!34 = distinct !{!34, !35, !"XXH3_accumulate_lasx: argument 1"}
!35 = distinct !{!35, !"XXH3_accumulate_lasx"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"XXH3_accumulate_lasx: argument 2"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"XXH3_accumulate_512_lasx: argument 1"}
!40 = distinct !{!40, !"XXH3_accumulate_512_lasx"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"XXH3_accumulate_512_lasx: argument 2"}
!43 = !{!39, !34, !29, !24, !21, !18}
!44 = !{!45, !42, !46, !37, !47, !32, !27}
!45 = distinct !{!45, !40, !"XXH3_accumulate_512_lasx: argument 0"}
!46 = distinct !{!46, !35, !"XXH3_accumulate_lasx: argument 0"}
!47 = distinct !{!47, !30, !"XXH3_hashLong_internal_loop: argument 0"}
!48 = !{!42, !37, !32, !27}
!49 = !{!45, !39, !46, !34, !47, !29, !24, !21, !18}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"XXH3_accumulate_512_lasx: argument 1"}
!54 = distinct !{!54, !"XXH3_accumulate_512_lasx"}
!55 = !{!56}
!56 = distinct !{!56, !54, !"XXH3_accumulate_512_lasx: argument 2"}
!57 = !{!53, !29, !24, !21, !18}
!58 = !{!59, !56, !47, !32, !27}
!59 = distinct !{!59, !54, !"XXH3_accumulate_512_lasx: argument 0"}
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
!77 = distinct !{!77, !78, !"XXH3_accumulate_lasx: argument 1"}
!78 = distinct !{!78, !"XXH3_accumulate_lasx"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"XXH3_accumulate_lasx: argument 2"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"XXH3_accumulate_512_lasx: argument 1"}
!83 = distinct !{!83, !"XXH3_accumulate_512_lasx"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"XXH3_accumulate_512_lasx: argument 2"}
!86 = !{!82, !77, !72, !67, !21, !18}
!87 = !{!88, !85, !89, !80, !90, !75, !70}
!88 = distinct !{!88, !83, !"XXH3_accumulate_512_lasx: argument 0"}
!89 = distinct !{!89, !78, !"XXH3_accumulate_lasx: argument 0"}
!90 = distinct !{!90, !73, !"XXH3_hashLong_internal_loop: argument 0"}
!91 = !{!85, !80, !75, !70}
!92 = !{!88, !82, !89, !77, !90, !72, !67, !21, !18}
!93 = !{!94}
!94 = distinct !{!94, !95, !"XXH3_accumulate_512_lasx: argument 1"}
!95 = distinct !{!95, !"XXH3_accumulate_512_lasx"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"XXH3_accumulate_512_lasx: argument 2"}
!98 = !{!94, !72, !67, !21, !18}
!99 = !{!100, !97, !90, !75, !70}
!100 = distinct !{!100, !95, !"XXH3_accumulate_512_lasx: argument 0"}
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
