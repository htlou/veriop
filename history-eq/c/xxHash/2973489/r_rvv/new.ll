; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/2973489/wrap_simd.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/2973489/wrap_simd.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

@__const.XXH3_accumulate_512_rvv.swap_mask = private unnamed_addr constant [8 x i64] [i64 1, i64 0, i64 3, i64 2, i64 5, i64 4, i64 7, i64 6], align 8
@__const.XXH3_scrambleAcc_rvv.prime = private unnamed_addr constant [8 x i64] [i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761], align 8
@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024)
define dso_local void @target_acc512(ptr noundef writeonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = alloca [8 x i64], align 64
  %27 = alloca [64 x i8], align 8
  %28 = alloca [64 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %28) #10
  store i64 %1, ptr %26, align 64
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %2, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 %3, ptr %30, align 16
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i64 %4, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i64 %5, ptr %32, align 32
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 40
  store i64 %6, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %26, i64 48
  store i64 %7, ptr %34, align 16
  %35 = getelementptr inbounds nuw i8, ptr %26, i64 56
  store i64 %8, ptr %35, align 8
  store i64 %9, ptr %27, align 8
  %36 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %10, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 %11, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i64 %12, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i64 %13, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %27, i64 40
  store i64 %14, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %27, i64 48
  store i64 %15, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %27, i64 56
  store i64 %16, ptr %42, align 8
  store i64 %17, ptr %28, align 8
  %43 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %18, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 %19, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i64 %20, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %28, i64 32
  store i64 %21, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %28, i64 40
  store i64 %22, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %28, i64 48
  store i64 %23, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %28, i64 56
  store i64 %24, ptr %49, align 8
  %50 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 0)
  %51 = tail call <vscale x 1 x i64> @llvm.riscv.vle.nxv1i64.i64(<vscale x 1 x i64> poison, ptr nonnull @__const.XXH3_accumulate_512_rvv.swap_mask, i64 %50)
  %52 = shl nuw nsw i64 %50, 3
  %53 = udiv i64 64, %52
  %54 = icmp samesign ugt i64 %50, 8
  br i1 %54, label %76, label %55

55:                                               ; preds = %25, %55
  %56 = phi i64 [ %74, %55 ], [ 0, %25 ]
  %57 = mul nuw nsw i64 %56, %50
  %58 = getelementptr inbounds nuw i64, ptr %27, i64 %57
  %59 = call <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8> poison, ptr nonnull readonly %58, i64 %52)
  %60 = bitcast <vscale x 8 x i8> %59 to <vscale x 1 x i64>
  %61 = getelementptr inbounds nuw i64, ptr %28, i64 %57
  %62 = call <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8> poison, ptr nonnull readonly %61, i64 %52)
  %63 = bitcast <vscale x 8 x i8> %62 to <vscale x 1 x i64>
  %64 = tail call <vscale x 1 x i64> @llvm.riscv.vxor.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %60, <vscale x 1 x i64> %63, i64 %50)
  %65 = tail call <vscale x 1 x i64> @llvm.riscv.vsrl.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %64, i64 32, i64 %50)
  %66 = tail call <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %64, i64 4294967295, i64 %50)
  %67 = tail call <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %65, i64 4294967295, i64 %50)
  %68 = tail call <vscale x 1 x i64> @llvm.riscv.vmul.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %66, <vscale x 1 x i64> %67, i64 %50)
  %69 = getelementptr inbounds nuw i64, ptr %26, i64 %57
  %70 = call <vscale x 1 x i64> @llvm.riscv.vle.nxv1i64.i64(<vscale x 1 x i64> poison, ptr nonnull %69, i64 %50)
  %71 = tail call <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %70, <vscale x 1 x i64> %68, i64 %50)
  %72 = tail call <vscale x 1 x i64> @llvm.riscv.vrgather.vv.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %60, <vscale x 1 x i64> %51, i64 %50)
  %73 = tail call <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %71, <vscale x 1 x i64> %72, i64 %50)
  call void @llvm.riscv.vse.nxv1i64.i64(<vscale x 1 x i64> %73, ptr nonnull %69, i64 %50)
  %74 = add nuw nsw i64 %56, 1
  %75 = icmp samesign ult i64 %74, %53
  br i1 %75, label %55, label %76

76:                                               ; preds = %55, %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 64 dereferenceable(64) %26, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024)
define dso_local void @target_scramble(ptr noundef writeonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [8 x i64], align 64
  %19 = alloca [64 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #10
  store i64 %1, ptr %18, align 64
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %2, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %3, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %4, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %5, ptr %23, align 32
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %6, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %7, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %8, ptr %26, align 8
  store i64 %9, ptr %19, align 8
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %10, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %11, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i64 %12, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i64 %13, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i64 %14, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %19, i64 48
  store i64 %15, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 56
  store i64 %16, ptr %33, align 8
  %34 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 0)
  %35 = tail call <vscale x 1 x i64> @llvm.riscv.vle.nxv1i64.i64(<vscale x 1 x i64> poison, ptr nonnull @__const.XXH3_scrambleAcc_rvv.prime, i64 %34)
  %36 = shl nuw nsw i64 %34, 3
  %37 = udiv i64 64, %36
  %38 = icmp samesign ugt i64 %34, 8
  br i1 %38, label %58, label %39

39:                                               ; preds = %17, %39
  %40 = phi i64 [ %56, %39 ], [ 0, %17 ]
  %41 = mul nuw nsw i64 %40, %34
  %42 = getelementptr inbounds nuw i64, ptr %18, i64 %41
  %43 = call <vscale x 1 x i64> @llvm.riscv.vle.nxv1i64.i64(<vscale x 1 x i64> poison, ptr nonnull %42, i64 %34)
  %44 = tail call <vscale x 1 x i64> @llvm.riscv.vsrl.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %43, i64 47, i64 %34)
  %45 = tail call <vscale x 1 x i64> @llvm.riscv.vxor.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %43, <vscale x 1 x i64> %44, i64 %34)
  %46 = getelementptr inbounds nuw i64, ptr %19, i64 %41
  %47 = call <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8> poison, ptr nonnull readonly %46, i64 %36)
  %48 = bitcast <vscale x 8 x i8> %47 to <vscale x 1 x i64>
  %49 = tail call <vscale x 1 x i64> @llvm.riscv.vxor.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %45, <vscale x 1 x i64> %48, i64 %34)
  %50 = tail call <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %49, i64 4294967295, i64 %34)
  %51 = tail call <vscale x 1 x i64> @llvm.riscv.vmul.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %50, <vscale x 1 x i64> %35, i64 %34)
  %52 = tail call <vscale x 1 x i64> @llvm.riscv.vsrl.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %49, i64 32, i64 %34)
  %53 = tail call <vscale x 1 x i64> @llvm.riscv.vmul.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %52, <vscale x 1 x i64> %35, i64 %34)
  %54 = tail call <vscale x 1 x i64> @llvm.riscv.vsll.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %53, i64 32, i64 %34)
  %55 = tail call <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %51, <vscale x 1 x i64> %54, i64 %34)
  call void @llvm.riscv.vse.nxv1i64.i64(<vscale x 1 x i64> %55, ptr nonnull %42, i64 %34)
  %56 = add nuw nsw i64 %40, 1
  %57 = icmp samesign ult i64 %56, %37
  br i1 %57, label %39, label %58

58:                                               ; preds = %39, %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 64 dereferenceable(64) %18, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable vscale_range(2,1024)
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024)
define dso_local i64 @target_api_len1024(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i64], align 64
  %4 = alloca [8 x i64], align 64
  %5 = alloca [192 x i8], align 8
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %7, label %150

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %4, ptr noundef nonnull align 64 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %8 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 0)
  %9 = tail call <vscale x 1 x i64> @llvm.riscv.vle.nxv1i64.i64(<vscale x 1 x i64> poison, ptr nonnull @__const.XXH3_accumulate_512_rvv.swap_mask, i64 %8)
  %10 = shl nuw nsw i64 %8, 3
  %11 = udiv i64 64, %10
  %12 = icmp samesign ugt i64 %8, 8
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %14, i32 0, i32 3, i32 1)
  %15 = getelementptr i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %15, i32 0, i32 3, i32 1)
  %16 = getelementptr i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %16, i32 0, i32 3, i32 1)
  %17 = getelementptr i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %17, i32 0, i32 3, i32 1)
  %18 = getelementptr i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %18, i32 0, i32 3, i32 1)
  %19 = getelementptr i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %19, i32 0, i32 3, i32 1)
  %20 = getelementptr i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %20, i32 0, i32 3, i32 1)
  %21 = getelementptr i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %21, i32 0, i32 3, i32 1)
  %22 = getelementptr i8, ptr %0, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %22, i32 0, i32 3, i32 1)
  %23 = getelementptr i8, ptr %0, i64 896
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %23, i32 0, i32 3, i32 1)
  %24 = getelementptr i8, ptr %0, i64 960
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %24, i32 0, i32 3, i32 1)
  %25 = getelementptr i8, ptr %0, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %25, i32 0, i32 3, i32 1)
  %26 = getelementptr i8, ptr %0, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %26, i32 0, i32 3, i32 1)
  %27 = getelementptr i8, ptr %0, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %27, i32 0, i32 3, i32 1)
  %28 = getelementptr i8, ptr %0, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %28, i32 0, i32 3, i32 1)
  br label %108

29:                                               ; preds = %7, %57
  %30 = phi i64 [ %58, %57 ], [ 0, %7 ]
  %31 = shl i64 %30, 6
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %33, i32 0, i32 3, i32 1)
  %34 = shl i64 %30, 3
  %35 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %34
  br label %36

36:                                               ; preds = %36, %29
  %37 = phi i64 [ %55, %36 ], [ 0, %29 ]
  %38 = mul nuw nsw i64 %37, %8
  %39 = getelementptr inbounds nuw i64, ptr %32, i64 %38
  %40 = tail call <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8> poison, ptr readonly %39, i64 %10)
  %41 = bitcast <vscale x 8 x i8> %40 to <vscale x 1 x i64>
  %42 = getelementptr inbounds nuw i64, ptr %35, i64 %38
  %43 = tail call <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8> poison, ptr nonnull readonly %42, i64 %10)
  %44 = bitcast <vscale x 8 x i8> %43 to <vscale x 1 x i64>
  %45 = tail call <vscale x 1 x i64> @llvm.riscv.vxor.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %41, <vscale x 1 x i64> %44, i64 %8)
  %46 = tail call <vscale x 1 x i64> @llvm.riscv.vsrl.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %45, i64 32, i64 %8)
  %47 = tail call <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %45, i64 4294967295, i64 %8)
  %48 = tail call <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %46, i64 4294967295, i64 %8)
  %49 = tail call <vscale x 1 x i64> @llvm.riscv.vmul.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %47, <vscale x 1 x i64> %48, i64 %8)
  %50 = getelementptr inbounds nuw i64, ptr %4, i64 %38
  %51 = call <vscale x 1 x i64> @llvm.riscv.vle.nxv1i64.i64(<vscale x 1 x i64> poison, ptr nonnull %50, i64 %8)
  %52 = tail call <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %51, <vscale x 1 x i64> %49, i64 %8)
  %53 = tail call <vscale x 1 x i64> @llvm.riscv.vrgather.vv.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %41, <vscale x 1 x i64> %9, i64 %8)
  %54 = tail call <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %52, <vscale x 1 x i64> %53, i64 %8)
  call void @llvm.riscv.vse.nxv1i64.i64(<vscale x 1 x i64> %54, ptr nonnull %50, i64 %8)
  %55 = add nuw nsw i64 %37, 1
  %56 = icmp samesign ult i64 %55, %11
  br i1 %56, label %36, label %57

57:                                               ; preds = %36
  %58 = add nuw nsw i64 %30, 1
  %59 = icmp eq i64 %58, 15
  br i1 %59, label %60, label %29

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %62 = tail call i64 @llvm.umax.i64(i64 %11, i64 1)
  br label %63

63:                                               ; preds = %63, %60
  %64 = phi i64 [ %82, %63 ], [ 0, %60 ]
  %65 = mul nuw nsw i64 %64, %8
  %66 = getelementptr inbounds nuw i64, ptr %61, i64 %65
  %67 = tail call <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8> poison, ptr nonnull readonly %66, i64 %10)
  %68 = bitcast <vscale x 8 x i8> %67 to <vscale x 1 x i64>
  %69 = getelementptr inbounds nuw i64, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i64 %65
  %70 = tail call <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8> poison, ptr nonnull readonly %69, i64 %10)
  %71 = bitcast <vscale x 8 x i8> %70 to <vscale x 1 x i64>
  %72 = tail call <vscale x 1 x i64> @llvm.riscv.vxor.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %68, <vscale x 1 x i64> %71, i64 %8)
  %73 = tail call <vscale x 1 x i64> @llvm.riscv.vsrl.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %72, i64 32, i64 %8)
  %74 = tail call <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %72, i64 4294967295, i64 %8)
  %75 = tail call <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %73, i64 4294967295, i64 %8)
  %76 = tail call <vscale x 1 x i64> @llvm.riscv.vmul.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %74, <vscale x 1 x i64> %75, i64 %8)
  %77 = getelementptr inbounds nuw i64, ptr %4, i64 %65
  %78 = call <vscale x 1 x i64> @llvm.riscv.vle.nxv1i64.i64(<vscale x 1 x i64> poison, ptr nonnull %77, i64 %8)
  %79 = tail call <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %78, <vscale x 1 x i64> %76, i64 %8)
  %80 = tail call <vscale x 1 x i64> @llvm.riscv.vrgather.vv.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %68, <vscale x 1 x i64> %9, i64 %8)
  %81 = tail call <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %79, <vscale x 1 x i64> %80, i64 %8)
  call void @llvm.riscv.vse.nxv1i64.i64(<vscale x 1 x i64> %81, ptr nonnull %77, i64 %8)
  %82 = add nuw nsw i64 %64, 1
  %83 = icmp eq i64 %82, %62
  br i1 %83, label %84, label %63

84:                                               ; preds = %63
  %85 = load i64, ptr %4, align 64
  %86 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %87 = load i64, ptr %86, align 8
  %88 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %89 = load i64, ptr %88, align 16
  %90 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %91 = load i64, ptr %90, align 8
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %93 = load i64, ptr %92, align 32
  %94 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %95 = load i64, ptr %94, align 8
  %96 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %97 = load i64, ptr %96, align 16
  %98 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %99 = load i64, ptr %98, align 8
  %100 = xor i64 %85, 7914194659941938988
  %101 = xor i64 %87, -6611157965513653271
  %102 = xor i64 %89, -1839215637059881052
  %103 = xor i64 %91, -3433288310154277810
  %104 = xor i64 %93, 5046485836271438973
  %105 = xor i64 %95, -8055285457383852172
  %106 = xor i64 %97, 5920048007935066598
  %107 = xor i64 %99, 7336514198459093435
  br label %108

108:                                              ; preds = %84, %13
  %109 = phi i64 [ %107, %84 ], [ 7336514201113126922, %13 ]
  %110 = phi i64 [ %106, %84 ], [ 8501907017582831139, %13 ]
  %111 = phi i64 [ %105, %84 ], [ -8055285455280128765, %13 ]
  %112 = phi i64 [ %104, %84 ], [ -4331492699949669858, %13 ]
  %113 = phi i64 [ %103, %84 ], [ -4175710100948273737, %13 ]
  %114 = phi i64 [ %102, %84 ], [ 2651324003421478123, %13 ]
  %115 = phi i64 [ %101, %84 ], [ 4212848526632896878, %13 ]
  %116 = phi i64 [ %100, %84 ], [ 7914194658909182225, %13 ]
  %117 = zext i64 %116 to i128
  %118 = zext i64 %115 to i128
  %119 = mul nuw i128 %117, %118
  %120 = lshr i128 %119, 64
  %121 = xor i128 %120, %119
  %122 = trunc i128 %121 to i64
  %123 = zext i64 %114 to i128
  %124 = zext i64 %113 to i128
  %125 = mul nuw i128 %123, %124
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = zext i64 %112 to i128
  %130 = zext i64 %111 to i128
  %131 = mul nuw i128 %129, %130
  %132 = lshr i128 %131, 64
  %133 = xor i128 %132, %131
  %134 = trunc i128 %133 to i64
  %135 = zext i64 %110 to i128
  %136 = zext i64 %109 to i128
  %137 = mul nuw i128 %135, %136
  %138 = lshr i128 %137, 64
  %139 = xor i128 %138, %137
  %140 = trunc i128 %139 to i64
  %141 = add i64 %140, -2457058741658706944
  %142 = add i64 %141, %134
  %143 = add i64 %142, %128
  %144 = add i64 %143, %122
  %145 = lshr i64 %144, 37
  %146 = xor i64 %145, %144
  %147 = mul i64 %146, 1609587791953885689
  %148 = lshr i64 %147, 32
  %149 = xor i64 %148, %147
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  br label %357

150:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #10
  %151 = add i64 %1, -4734510112055689544
  %152 = sub i64 2066345149520216444, %1
  store i64 %151, ptr %5, align 8
  %153 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %152, ptr %153, align 8
  %154 = add i64 %1, -2623469361688619810
  %155 = sub i64 2262974939099578482, %1
  %156 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %154, ptr %156, align 8
  %157 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %155, ptr %157, align 8
  %158 = add i64 %1, 8711581037947681227
  %159 = sub i64 2410270004345854594, %1
  %160 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %158, ptr %160, align 8
  %161 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %159, ptr %161, align 8
  %162 = add i64 %1, -8204357891075471176
  %163 = sub i64 5487137525590930912, %1
  %164 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %162, ptr %164, align 8
  %165 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %163, ptr %165, align 8
  %166 = add i64 %1, -3818837453329782724
  %167 = sub i64 -6688317018830679928, %1
  %168 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %166, ptr %168, align 8
  %169 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %167, ptr %169, align 8
  %170 = add i64 %1, 5690594596133299313
  %171 = sub i64 -2833645246901970632, %1
  %172 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %170, ptr %172, align 8
  %173 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %171, ptr %173, align 8
  %174 = add i64 %1, 4554437623014685352
  %175 = sub i64 2111919702937427193, %1
  %176 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 %174, ptr %176, align 8
  %177 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %175, ptr %177, align 8
  %178 = add i64 %1, 3556072174620004746
  %179 = sub i64 7238261902898274248, %1
  %180 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %178, ptr %180, align 8
  %181 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %179, ptr %181, align 8
  %182 = add i64 %1, -4329134394285701654
  %183 = sub i64 -1485321483350670907, %1
  %184 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 %182, ptr %184, align 8
  %185 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 %183, ptr %185, align 8
  %186 = add i64 %1, 5321830579834785047
  %187 = sub i64 -7032137544937171245, %1
  %188 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 %186, ptr %188, align 8
  %189 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %187, ptr %189, align 8
  %190 = add i64 %1, -242834301215959509
  %191 = sub i64 -3588858202114426737, %1
  %192 = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 %190, ptr %192, align 8
  %193 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %191, ptr %193, align 8
  %194 = add i64 %1, 2883454493032893253
  %195 = sub i64 9097354517224871855, %1
  %196 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 %194, ptr %196, align 8
  %197 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 %195, ptr %197, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %3, ptr noundef nonnull align 64 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %198 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 0)
  %199 = tail call <vscale x 1 x i64> @llvm.riscv.vle.nxv1i64.i64(<vscale x 1 x i64> poison, ptr nonnull @__const.XXH3_accumulate_512_rvv.swap_mask, i64 %198)
  %200 = shl nuw nsw i64 %198, 3
  %201 = udiv i64 64, %200
  %202 = icmp samesign ugt i64 %198, 8
  br i1 %202, label %203, label %219

203:                                              ; preds = %150
  %204 = getelementptr i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %204, i32 0, i32 3, i32 1)
  %205 = getelementptr i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %205, i32 0, i32 3, i32 1)
  %206 = getelementptr i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %206, i32 0, i32 3, i32 1)
  %207 = getelementptr i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %207, i32 0, i32 3, i32 1)
  %208 = getelementptr i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %208, i32 0, i32 3, i32 1)
  %209 = getelementptr i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %209, i32 0, i32 3, i32 1)
  %210 = getelementptr i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %210, i32 0, i32 3, i32 1)
  %211 = getelementptr i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %211, i32 0, i32 3, i32 1)
  %212 = getelementptr i8, ptr %0, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %212, i32 0, i32 3, i32 1)
  %213 = getelementptr i8, ptr %0, i64 896
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %213, i32 0, i32 3, i32 1)
  %214 = getelementptr i8, ptr %0, i64 960
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %214, i32 0, i32 3, i32 1)
  %215 = getelementptr i8, ptr %0, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %215, i32 0, i32 3, i32 1)
  %216 = getelementptr i8, ptr %0, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %216, i32 0, i32 3, i32 1)
  %217 = getelementptr i8, ptr %0, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %217, i32 0, i32 3, i32 1)
  %218 = getelementptr i8, ptr %0, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %218, i32 0, i32 3, i32 1)
  br label %291

219:                                              ; preds = %150, %247
  %220 = phi i64 [ %248, %247 ], [ 0, %150 ]
  %221 = shl i64 %220, 6
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 %221
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %223, i32 0, i32 3, i32 1)
  %224 = shl i64 %220, 3
  %225 = getelementptr inbounds nuw i8, ptr %5, i64 %224
  br label %226

226:                                              ; preds = %226, %219
  %227 = phi i64 [ %245, %226 ], [ 0, %219 ]
  %228 = mul nuw nsw i64 %227, %198
  %229 = getelementptr inbounds nuw i64, ptr %222, i64 %228
  %230 = tail call <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8> poison, ptr readonly %229, i64 %200)
  %231 = bitcast <vscale x 8 x i8> %230 to <vscale x 1 x i64>
  %232 = getelementptr inbounds nuw i64, ptr %225, i64 %228
  %233 = call <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8> poison, ptr nonnull readonly %232, i64 %200)
  %234 = bitcast <vscale x 8 x i8> %233 to <vscale x 1 x i64>
  %235 = tail call <vscale x 1 x i64> @llvm.riscv.vxor.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %231, <vscale x 1 x i64> %234, i64 %198)
  %236 = tail call <vscale x 1 x i64> @llvm.riscv.vsrl.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %235, i64 32, i64 %198)
  %237 = tail call <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %235, i64 4294967295, i64 %198)
  %238 = tail call <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %236, i64 4294967295, i64 %198)
  %239 = tail call <vscale x 1 x i64> @llvm.riscv.vmul.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %237, <vscale x 1 x i64> %238, i64 %198)
  %240 = getelementptr inbounds nuw i64, ptr %3, i64 %228
  %241 = call <vscale x 1 x i64> @llvm.riscv.vle.nxv1i64.i64(<vscale x 1 x i64> poison, ptr nonnull %240, i64 %198)
  %242 = tail call <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %241, <vscale x 1 x i64> %239, i64 %198)
  %243 = tail call <vscale x 1 x i64> @llvm.riscv.vrgather.vv.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %231, <vscale x 1 x i64> %199, i64 %198)
  %244 = tail call <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %242, <vscale x 1 x i64> %243, i64 %198)
  call void @llvm.riscv.vse.nxv1i64.i64(<vscale x 1 x i64> %244, ptr nonnull %240, i64 %198)
  %245 = add nuw nsw i64 %227, 1
  %246 = icmp samesign ult i64 %245, %201
  br i1 %246, label %226, label %247

247:                                              ; preds = %226
  %248 = add nuw nsw i64 %220, 1
  %249 = icmp eq i64 %248, 15
  br i1 %249, label %250, label %219

250:                                              ; preds = %247
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %252 = getelementptr inbounds nuw i8, ptr %5, i64 121
  %253 = tail call i64 @llvm.umax.i64(i64 %201, i64 1)
  br label %254

254:                                              ; preds = %254, %250
  %255 = phi i64 [ %273, %254 ], [ 0, %250 ]
  %256 = mul nuw nsw i64 %255, %198
  %257 = getelementptr inbounds nuw i64, ptr %251, i64 %256
  %258 = tail call <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8> poison, ptr nonnull readonly %257, i64 %200)
  %259 = bitcast <vscale x 8 x i8> %258 to <vscale x 1 x i64>
  %260 = getelementptr inbounds nuw i64, ptr %252, i64 %256
  %261 = call <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8> poison, ptr nonnull readonly %260, i64 %200)
  %262 = bitcast <vscale x 8 x i8> %261 to <vscale x 1 x i64>
  %263 = tail call <vscale x 1 x i64> @llvm.riscv.vxor.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %259, <vscale x 1 x i64> %262, i64 %198)
  %264 = tail call <vscale x 1 x i64> @llvm.riscv.vsrl.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %263, i64 32, i64 %198)
  %265 = tail call <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %263, i64 4294967295, i64 %198)
  %266 = tail call <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %264, i64 4294967295, i64 %198)
  %267 = tail call <vscale x 1 x i64> @llvm.riscv.vmul.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %265, <vscale x 1 x i64> %266, i64 %198)
  %268 = getelementptr inbounds nuw i64, ptr %3, i64 %256
  %269 = call <vscale x 1 x i64> @llvm.riscv.vle.nxv1i64.i64(<vscale x 1 x i64> poison, ptr nonnull %268, i64 %198)
  %270 = tail call <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %269, <vscale x 1 x i64> %267, i64 %198)
  %271 = tail call <vscale x 1 x i64> @llvm.riscv.vrgather.vv.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %259, <vscale x 1 x i64> %199, i64 %198)
  %272 = tail call <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64> poison, <vscale x 1 x i64> %270, <vscale x 1 x i64> %271, i64 %198)
  call void @llvm.riscv.vse.nxv1i64.i64(<vscale x 1 x i64> %272, ptr nonnull %268, i64 %198)
  %273 = add nuw nsw i64 %255, 1
  %274 = icmp eq i64 %273, %253
  br i1 %274, label %275, label %254

275:                                              ; preds = %254
  %276 = load i64, ptr %3, align 64
  %277 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %278 = load i64, ptr %277, align 8
  %279 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %280 = load i64, ptr %279, align 16
  %281 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %282 = load i64, ptr %281, align 8
  %283 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %284 = load i64, ptr %283, align 32
  %285 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %286 = load i64, ptr %285, align 8
  %287 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %288 = load i64, ptr %287, align 16
  %289 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %290 = load i64, ptr %289, align 8
  br label %291

291:                                              ; preds = %275, %203
  %292 = phi i64 [ %290, %275 ], [ 2654435761, %203 ]
  %293 = phi i64 [ %288, %275 ], [ 2870177450012600261, %203 ]
  %294 = phi i64 [ %286, %275 ], [ 2246822519, %203 ]
  %295 = phi i64 [ %284, %275 ], [ -8796714831421723037, %203 ]
  %296 = phi i64 [ %282, %275 ], [ 1609587929392839161, %203 ]
  %297 = phi i64 [ %280, %275 ], [ -4417276706812531889, %203 ]
  %298 = phi i64 [ %278, %275 ], [ -7046029288634856825, %203 ]
  %299 = phi i64 [ %276, %275 ], [ 3266489917, %203 ]
  %300 = getelementptr inbounds nuw i8, ptr %5, i64 11
  %301 = load i64, ptr %300, align 1
  %302 = getelementptr inbounds nuw i8, ptr %5, i64 19
  %303 = load i64, ptr %302, align 1
  %304 = xor i64 %301, %299
  %305 = xor i64 %303, %298
  %306 = zext i64 %304 to i128
  %307 = zext i64 %305 to i128
  %308 = mul nuw i128 %307, %306
  %309 = lshr i128 %308, 64
  %310 = xor i128 %309, %308
  %311 = trunc i128 %310 to i64
  %312 = add i64 %311, -2457058741658706944
  %313 = getelementptr inbounds nuw i8, ptr %5, i64 27
  %314 = load i64, ptr %313, align 1
  %315 = getelementptr inbounds nuw i8, ptr %5, i64 35
  %316 = load i64, ptr %315, align 1
  %317 = xor i64 %314, %297
  %318 = xor i64 %316, %296
  %319 = zext i64 %317 to i128
  %320 = zext i64 %318 to i128
  %321 = mul nuw i128 %320, %319
  %322 = lshr i128 %321, 64
  %323 = xor i128 %322, %321
  %324 = trunc i128 %323 to i64
  %325 = add i64 %312, %324
  %326 = getelementptr inbounds nuw i8, ptr %5, i64 43
  %327 = load i64, ptr %326, align 1
  %328 = getelementptr inbounds nuw i8, ptr %5, i64 51
  %329 = load i64, ptr %328, align 1
  %330 = xor i64 %327, %295
  %331 = xor i64 %329, %294
  %332 = zext i64 %330 to i128
  %333 = zext i64 %331 to i128
  %334 = mul nuw i128 %333, %332
  %335 = lshr i128 %334, 64
  %336 = xor i128 %335, %334
  %337 = trunc i128 %336 to i64
  %338 = add i64 %325, %337
  %339 = getelementptr inbounds nuw i8, ptr %5, i64 59
  %340 = load i64, ptr %339, align 1
  %341 = getelementptr inbounds nuw i8, ptr %5, i64 67
  %342 = load i64, ptr %341, align 1
  %343 = xor i64 %340, %293
  %344 = xor i64 %342, %292
  %345 = zext i64 %343 to i128
  %346 = zext i64 %344 to i128
  %347 = mul nuw i128 %346, %345
  %348 = lshr i128 %347, 64
  %349 = xor i128 %348, %347
  %350 = trunc i128 %349 to i64
  %351 = add i64 %338, %350
  %352 = lshr i64 %351, 37
  %353 = xor i64 %352, %351
  %354 = mul i64 %353, 1609587791953885689
  %355 = lshr i64 %354, 32
  %356 = xor i64 %355, %354
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #10
  br label %357

357:                                              ; preds = %108, %291
  %358 = phi i64 [ %149, %108 ], [ %356, %291 ]
  ret i64 %358
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.riscv.vsetvli.i64(i64, i64 immarg, i64 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 1 x i64> @llvm.riscv.vle.nxv1i64.i64(<vscale x 1 x i64>, ptr, i64) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 8 x i8> @llvm.riscv.vle.nxv8i8.i64(<vscale x 8 x i8>, ptr, i64) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 1 x i64> @llvm.riscv.vxor.nxv1i64.nxv1i64.i64(<vscale x 1 x i64>, <vscale x 1 x i64>, <vscale x 1 x i64>, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 1 x i64> @llvm.riscv.vsrl.nxv1i64.i64.i64(<vscale x 1 x i64>, <vscale x 1 x i64>, i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 1 x i64> @llvm.riscv.vand.nxv1i64.i64.i64(<vscale x 1 x i64>, <vscale x 1 x i64>, i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 1 x i64> @llvm.riscv.vmul.nxv1i64.nxv1i64.i64(<vscale x 1 x i64>, <vscale x 1 x i64>, <vscale x 1 x i64>, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 1 x i64> @llvm.riscv.vadd.nxv1i64.nxv1i64.i64(<vscale x 1 x i64>, <vscale x 1 x i64>, <vscale x 1 x i64>, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 1 x i64> @llvm.riscv.vrgather.vv.nxv1i64.i64(<vscale x 1 x i64>, <vscale x 1 x i64>, <vscale x 1 x i64>, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.riscv.vse.nxv1i64.i64(<vscale x 1 x i64>, ptr, i64) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 1 x i64> @llvm.riscv.vsll.nxv1i64.i64.i64(<vscale x 1 x i64>, <vscale x 1 x i64>, i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zaamo,+zalrsc,+zicsr,+zifencei,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zaamo,+zalrsc,+zicsr,+zifencei,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 8, !"SmallDataLimit", i32 0}
!8 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"XXH3_accumulate_512_rvv: argument 0"}
!11 = distinct !{!11, !"XXH3_accumulate_512_rvv"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"XXH3_accumulate_512_rvv: argument 1"}
!14 = !{!15}
!15 = distinct !{!15, !11, !"XXH3_accumulate_512_rvv: argument 2"}
!16 = !{!10, !13, !15}
!17 = !{!10, !15}
!18 = !{!10, !13}
!19 = !{!13, !15}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"XXH3_scrambleAcc_rvv: argument 0"}
!24 = distinct !{!24, !"XXH3_scrambleAcc_rvv"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"XXH3_scrambleAcc_rvv: argument 1"}
!27 = !{!23, !26}
!28 = distinct !{!28, !21}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_64bits_internal: argument 0"}
!31 = distinct !{!31, !"XXH3_64bits_internal"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"XXH3_hashLong_64b_withSeed: argument 0"}
!34 = distinct !{!34, !"XXH3_hashLong_64b_withSeed"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"XXH3_hashLong_64b_internal: argument 0"}
!37 = distinct !{!37, !"XXH3_hashLong_64b_internal"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"XXH3_hashLong_64b_internal: argument 1"}
!40 = !{!36, !39, !33, !30}
!41 = !{!42}
!42 = distinct !{!42, !43, !"XXH3_hashLong_internal_loop: argument 0"}
!43 = distinct !{!43, !"XXH3_hashLong_internal_loop"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"XXH3_hashLong_internal_loop: argument 1"}
!46 = !{!47}
!47 = distinct !{!47, !43, !"XXH3_hashLong_internal_loop: argument 2"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"XXH3_accumulate_rvv: argument 0"}
!50 = distinct !{!50, !"XXH3_accumulate_rvv"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"XXH3_accumulate_rvv: argument 1"}
!53 = !{!54}
!54 = distinct !{!54, !50, !"XXH3_accumulate_rvv: argument 2"}
!55 = !{!56, !58, !59, !49, !52, !54, !42, !45, !47, !36, !39, !33, !30}
!56 = distinct !{!56, !57, !"XXH3_accumulate_512_rvv: argument 0"}
!57 = distinct !{!57, !"XXH3_accumulate_512_rvv"}
!58 = distinct !{!58, !57, !"XXH3_accumulate_512_rvv: argument 1"}
!59 = distinct !{!59, !57, !"XXH3_accumulate_512_rvv: argument 2"}
!60 = !{!54, !47, !39}
!61 = !{!56}
!62 = !{!58}
!63 = !{!59}
!64 = !{!58, !52, !45, !36, !33, !30}
!65 = !{!56, !59, !49, !54, !42, !47, !39}
!66 = !{!59, !54, !47, !39}
!67 = !{!56, !58, !49, !52, !42, !45, !36, !33, !30}
!68 = !{!56, !49, !42}
!69 = !{!58, !59, !52, !54, !45, !47, !36, !39, !33, !30}
!70 = distinct !{!70, !21}
!71 = !{!72}
!72 = distinct !{!72, !73, !"XXH3_accumulate_512_rvv: argument 0"}
!73 = distinct !{!73, !"XXH3_accumulate_512_rvv"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"XXH3_accumulate_512_rvv: argument 1"}
!76 = !{!77}
!77 = distinct !{!77, !73, !"XXH3_accumulate_512_rvv: argument 2"}
!78 = !{!75, !45, !36, !33, !30}
!79 = !{!72, !77, !42, !47, !39}
!80 = !{!77, !47, !39}
!81 = !{!72, !75, !42, !45, !36, !33, !30}
!82 = !{!72, !42}
!83 = !{!75, !77, !45, !47, !36, !39, !33, !30}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"XXH3_mergeAccs: argument 0"}
!86 = distinct !{!86, !"XXH3_mergeAccs"}
!87 = distinct !{!87, !88, !"XXH3_finalizeLong_64b: argument 0"}
!88 = distinct !{!88, !"XXH3_finalizeLong_64b"}
!89 = !{!90, !91, !36, !39, !33, !30}
!90 = distinct !{!90, !86, !"XXH3_mergeAccs: argument 1"}
!91 = distinct !{!91, !88, !"XXH3_finalizeLong_64b: argument 1"}
!92 = !{!33, !30}
!93 = !{!94}
!94 = distinct !{!94, !95, !"XXH3_initCustomSecret_scalar: argument 0"}
!95 = distinct !{!95, !"XXH3_initCustomSecret_scalar"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"XXH3_hashLong_64b_internal: argument 0"}
!98 = distinct !{!98, !"XXH3_hashLong_64b_internal"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"XXH3_hashLong_64b_internal: argument 1"}
!101 = !{!97, !100, !33, !30}
!102 = !{!103}
!103 = distinct !{!103, !104, !"XXH3_hashLong_internal_loop: argument 0"}
!104 = distinct !{!104, !"XXH3_hashLong_internal_loop"}
!105 = !{!106}
!106 = distinct !{!106, !104, !"XXH3_hashLong_internal_loop: argument 1"}
!107 = !{!108}
!108 = distinct !{!108, !104, !"XXH3_hashLong_internal_loop: argument 2"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"XXH3_accumulate_rvv: argument 0"}
!111 = distinct !{!111, !"XXH3_accumulate_rvv"}
!112 = !{!113}
!113 = distinct !{!113, !111, !"XXH3_accumulate_rvv: argument 1"}
!114 = !{!115}
!115 = distinct !{!115, !111, !"XXH3_accumulate_rvv: argument 2"}
!116 = !{!117, !119, !120, !110, !113, !115, !103, !106, !108, !97, !100, !33, !30}
!117 = distinct !{!117, !118, !"XXH3_accumulate_512_rvv: argument 0"}
!118 = distinct !{!118, !"XXH3_accumulate_512_rvv"}
!119 = distinct !{!119, !118, !"XXH3_accumulate_512_rvv: argument 1"}
!120 = distinct !{!120, !118, !"XXH3_accumulate_512_rvv: argument 2"}
!121 = !{!115, !108, !100}
!122 = !{!117}
!123 = !{!119}
!124 = !{!120}
!125 = !{!119, !113, !106, !97, !33, !30}
!126 = !{!117, !120, !110, !115, !103, !108, !100}
!127 = !{!120, !115, !108, !100}
!128 = !{!117, !119, !110, !113, !103, !106, !97, !33, !30}
!129 = !{!117, !110, !103}
!130 = !{!119, !120, !113, !115, !106, !108, !97, !100, !33, !30}
!131 = !{!132}
!132 = distinct !{!132, !133, !"XXH3_accumulate_512_rvv: argument 0"}
!133 = distinct !{!133, !"XXH3_accumulate_512_rvv"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"XXH3_accumulate_512_rvv: argument 1"}
!136 = !{!137}
!137 = distinct !{!137, !133, !"XXH3_accumulate_512_rvv: argument 2"}
!138 = !{!135, !106, !97, !33, !30}
!139 = !{!132, !137, !103, !108, !100}
!140 = !{!137, !108, !100}
!141 = !{!132, !135, !103, !106, !97, !33, !30}
!142 = !{!132, !103}
!143 = !{!135, !137, !106, !108, !97, !100, !33, !30}
!144 = !{!145, !147}
!145 = distinct !{!145, !146, !"XXH3_mergeAccs: argument 0"}
!146 = distinct !{!146, !"XXH3_mergeAccs"}
!147 = distinct !{!147, !148, !"XXH3_finalizeLong_64b: argument 0"}
!148 = distinct !{!148, !"XXH3_finalizeLong_64b"}
!149 = !{!150, !151, !97, !100, !33, !30}
!150 = distinct !{!150, !146, !"XXH3_mergeAccs: argument 1"}
!151 = distinct !{!151, !148, !"XXH3_finalizeLong_64b: argument 1"}
!152 = !{!147}
!153 = !{!151}
!154 = !{!145}
!155 = !{!150}
!156 = !{!150, !151, !100}
!157 = !{!145, !147, !97, !33, !30}
