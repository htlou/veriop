; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/87b712a/wrap_simd.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/87b712a/wrap_simd.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

@XXH3_accumulate_512_rvv.swap_mask = internal constant [16 x i64] [i64 1, i64 0, i64 3, i64 2, i64 5, i64 4, i64 7, i64 6, i64 9, i64 8, i64 11, i64 10, i64 13, i64 12, i64 15, i64 14], align 8
@__const.XXH3_scrambleAcc_rvv.prime = private unnamed_addr constant [16 x i64] [i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761], align 8
@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024)
define dso_local void @target_acc512(ptr noundef writeonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = alloca [8 x i64], align 64
  %27 = alloca [64 x i8], align 8
  %28 = alloca [64 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %28) #8
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
  %50 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 1)
  %51 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull @XXH3_accumulate_512_rvv.swap_mask, i64 %50)
  %52 = shl nuw nsw i64 %50, 3
  br label %53

53:                                               ; preds = %53, %25
  %54 = phi i64 [ 0, %25 ], [ %70, %53 ]
  %55 = getelementptr inbounds nuw i64, ptr %26, i64 %54
  %56 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %55, i64 %50)
  %57 = getelementptr inbounds nuw i64, ptr %27, i64 %54
  %58 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %57, i64 %52)
  %59 = bitcast <vscale x 16 x i8> %58 to <vscale x 2 x i64>
  %60 = getelementptr inbounds nuw i64, ptr %28, i64 %54
  %61 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %60, i64 %52)
  %62 = bitcast <vscale x 16 x i8> %61 to <vscale x 2 x i64>
  %63 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %59, <vscale x 2 x i64> %62, i64 %50)
  %64 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %63, i64 32, i64 %50)
  %65 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %63, i64 4294967295, i64 %50)
  %66 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %65, <vscale x 2 x i64> %64, i64 %50)
  %67 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %59, <vscale x 2 x i64> %51, i64 %50)
  %68 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %56, <vscale x 2 x i64> %66, i64 %50)
  %69 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %68, <vscale x 2 x i64> %67, i64 %50)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %69, ptr nonnull %55, i64 %50)
  %70 = add nuw nsw i64 %54, %50
  %71 = icmp samesign ult i64 %70, 8
  br i1 %71, label %53, label %72

72:                                               ; preds = %53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 64 dereferenceable(64) %26, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %28) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #8
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #8
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
  %34 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 1)
  %35 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull @__const.XXH3_scrambleAcc_rvv.prime, i64 %34)
  %36 = shl nuw nsw i64 %34, 3
  %37 = udiv i64 64, %36
  %38 = icmp samesign ugt i64 %34, 8
  br i1 %38, label %58, label %39

39:                                               ; preds = %17, %39
  %40 = phi i64 [ %56, %39 ], [ 0, %17 ]
  %41 = mul nuw nsw i64 %40, %34
  %42 = getelementptr inbounds nuw i64, ptr %18, i64 %41
  %43 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %42, i64 %34)
  %44 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %43, i64 47, i64 %34)
  %45 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %43, <vscale x 2 x i64> %44, i64 %34)
  %46 = getelementptr inbounds nuw i64, ptr %19, i64 %41
  %47 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %46, i64 %36)
  %48 = bitcast <vscale x 16 x i8> %47 to <vscale x 2 x i64>
  %49 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %45, <vscale x 2 x i64> %48, i64 %34)
  %50 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %49, i64 4294967295, i64 %34)
  %51 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %50, <vscale x 2 x i64> %35, i64 %34)
  %52 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %49, i64 32, i64 %34)
  %53 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %52, <vscale x 2 x i64> %35, i64 %34)
  %54 = tail call <vscale x 2 x i64> @llvm.riscv.vsll.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %53, i64 32, i64 %34)
  %55 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %51, <vscale x 2 x i64> %54, i64 %34)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %55, ptr nonnull %42, i64 %34)
  %56 = add nuw nsw i64 %40, 1
  %57 = icmp samesign ult i64 %56, %37
  br i1 %57, label %39, label %58

58:                                               ; preds = %39, %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 64 dereferenceable(64) %18, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024)
define dso_local void @target_initsecret(ptr noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i64], align 8
  %4 = alloca [192 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8
  store i64 %1, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = sub nsw i64 0, %1
  store i64 %6, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %6, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %1, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %6, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %1, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %6, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %1, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %6, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %1, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %6, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %1, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %6, ptr %20, align 8
  br label %21

21:                                               ; preds = %21, %2
  %22 = phi i64 [ 0, %2 ], [ %30, %21 ]
  %23 = sub nuw nsw i64 24, %22
  %24 = tail call i64 @llvm.riscv.vsetvli.i64(i64 %23, i64 3, i64 1)
  %25 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %3, i64 %24)
  %26 = getelementptr inbounds nuw i64, ptr @XXH3_kSecret, i64 %22
  %27 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %26, i64 %24)
  %28 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %27, <vscale x 2 x i64> %25, i64 %24)
  %29 = getelementptr inbounds nuw i64, ptr %4, i64 %22
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %28, ptr nonnull %29, i64 %24)
  %30 = add nuw nsw i64 %24, %22
  %31 = icmp samesign ult i64 %30, 24
  br i1 %31, label %21, label %32

32:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %0, ptr noundef nonnull align 64 dereferenceable(192) %4, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024)
define dso_local i64 @target_api_len1024(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i64], align 64
  %4 = alloca [16 x i64], align 8
  %5 = alloca [8 x i64], align 64
  %6 = alloca [192 x i8], align 64
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %8, label %119

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %5, ptr noundef nonnull align 64 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %9 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 1)
  %10 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull @XXH3_accumulate_512_rvv.swap_mask, i64 %9)
  %11 = shl nuw nsw i64 %9, 3
  br label %12

12:                                               ; preds = %38, %8
  %13 = phi i64 [ 0, %8 ], [ %39, %38 ]
  %14 = shl i64 %13, 6
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %16, i32 0, i32 3, i32 1)
  %17 = shl i64 %13, 3
  %18 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %17
  br label %19

19:                                               ; preds = %19, %12
  %20 = phi i64 [ 0, %12 ], [ %36, %19 ]
  %21 = getelementptr inbounds nuw i64, ptr %5, i64 %20
  %22 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %21, i64 %9)
  %23 = getelementptr inbounds nuw i64, ptr %15, i64 %20
  %24 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr readonly %23, i64 %11)
  %25 = bitcast <vscale x 16 x i8> %24 to <vscale x 2 x i64>
  %26 = getelementptr inbounds nuw i64, ptr %18, i64 %20
  %27 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %26, i64 %11)
  %28 = bitcast <vscale x 16 x i8> %27 to <vscale x 2 x i64>
  %29 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %25, <vscale x 2 x i64> %28, i64 %9)
  %30 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %29, i64 32, i64 %9)
  %31 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %29, i64 4294967295, i64 %9)
  %32 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %31, <vscale x 2 x i64> %30, i64 %9)
  %33 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %25, <vscale x 2 x i64> %10, i64 %9)
  %34 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %22, <vscale x 2 x i64> %32, i64 %9)
  %35 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %34, <vscale x 2 x i64> %33, i64 %9)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %35, ptr nonnull %21, i64 %9)
  %36 = add nuw nsw i64 %20, %9
  %37 = icmp samesign ult i64 %36, 8
  br i1 %37, label %19, label %38

38:                                               ; preds = %19
  %39 = add nuw nsw i64 %13, 1
  %40 = icmp eq i64 %39, 15
  br i1 %40, label %41, label %12

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 960
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i64 [ 0, %41 ], [ %60, %43 ]
  %45 = getelementptr inbounds nuw i64, ptr %5, i64 %44
  %46 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %45, i64 %9)
  %47 = getelementptr inbounds nuw i64, ptr %42, i64 %44
  %48 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %47, i64 %11)
  %49 = bitcast <vscale x 16 x i8> %48 to <vscale x 2 x i64>
  %50 = getelementptr inbounds nuw i64, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i64 %44
  %51 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %50, i64 %11)
  %52 = bitcast <vscale x 16 x i8> %51 to <vscale x 2 x i64>
  %53 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %49, <vscale x 2 x i64> %52, i64 %9)
  %54 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %53, i64 32, i64 %9)
  %55 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %53, i64 4294967295, i64 %9)
  %56 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %55, <vscale x 2 x i64> %54, i64 %9)
  %57 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %49, <vscale x 2 x i64> %10, i64 %9)
  %58 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %46, <vscale x 2 x i64> %56, i64 %9)
  %59 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %58, <vscale x 2 x i64> %57, i64 %9)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %59, ptr nonnull %45, i64 %9)
  %60 = add nuw nsw i64 %44, %9
  %61 = icmp samesign ult i64 %60, 8
  br i1 %61, label %43, label %62

62:                                               ; preds = %43
  %63 = load i64, ptr %5, align 64
  %64 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %65 = load i64, ptr %64, align 8
  %66 = xor i64 %63, 7914194659941938988
  %67 = xor i64 %65, -6611157965513653271
  %68 = zext i64 %66 to i128
  %69 = zext i64 %67 to i128
  %70 = mul nuw i128 %69, %68
  %71 = lshr i128 %70, 64
  %72 = xor i128 %71, %70
  %73 = trunc i128 %72 to i64
  %74 = add i64 %73, -2457058741658706944
  %75 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %76 = load i64, ptr %75, align 16
  %77 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %78 = load i64, ptr %77, align 8
  %79 = xor i64 %76, -1839215637059881052
  %80 = xor i64 %78, -3433288310154277810
  %81 = zext i64 %79 to i128
  %82 = zext i64 %80 to i128
  %83 = mul nuw i128 %82, %81
  %84 = lshr i128 %83, 64
  %85 = xor i128 %84, %83
  %86 = trunc i128 %85 to i64
  %87 = add i64 %74, %86
  %88 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %89 = load i64, ptr %88, align 32
  %90 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %91 = load i64, ptr %90, align 8
  %92 = xor i64 %89, 5046485836271438973
  %93 = xor i64 %91, -8055285457383852172
  %94 = zext i64 %92 to i128
  %95 = zext i64 %93 to i128
  %96 = mul nuw i128 %95, %94
  %97 = lshr i128 %96, 64
  %98 = xor i128 %97, %96
  %99 = trunc i128 %98 to i64
  %100 = add i64 %87, %99
  %101 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %102 = load i64, ptr %101, align 16
  %103 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %104 = load i64, ptr %103, align 8
  %105 = xor i64 %102, 5920048007935066598
  %106 = xor i64 %104, 7336514198459093435
  %107 = zext i64 %105 to i128
  %108 = zext i64 %106 to i128
  %109 = mul nuw i128 %108, %107
  %110 = lshr i128 %109, 64
  %111 = xor i128 %110, %109
  %112 = trunc i128 %111 to i64
  %113 = add i64 %100, %112
  %114 = lshr i64 %113, 37
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, 1609587791953885689
  %117 = lshr i64 %116, 32
  %118 = xor i64 %117, %116
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %275

119:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #8
  store i64 %1, ptr %4, align 8
  %120 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %121 = sub nsw i64 0, %1
  store i64 %121, ptr %120, align 8
  %122 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %1, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %121, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %1, ptr %124, align 8
  %125 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %121, ptr %125, align 8
  %126 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %1, ptr %126, align 8
  %127 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %121, ptr %127, align 8
  %128 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %1, ptr %128, align 8
  %129 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %121, ptr %129, align 8
  %130 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %1, ptr %130, align 8
  %131 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %121, ptr %131, align 8
  %132 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %1, ptr %132, align 8
  %133 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %121, ptr %133, align 8
  %134 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 %1, ptr %134, align 8
  %135 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %121, ptr %135, align 8
  br label %136

136:                                              ; preds = %136, %119
  %137 = phi i64 [ 0, %119 ], [ %145, %136 ]
  %138 = sub nuw nsw i64 24, %137
  %139 = tail call i64 @llvm.riscv.vsetvli.i64(i64 %138, i64 3, i64 1)
  %140 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %4, i64 %139)
  %141 = getelementptr inbounds nuw i64, ptr @XXH3_kSecret, i64 %137
  %142 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %141, i64 %139)
  %143 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %142, <vscale x 2 x i64> %140, i64 %139)
  %144 = getelementptr inbounds nuw i64, ptr %6, i64 %137
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %143, ptr nonnull %144, i64 %139)
  %145 = add nuw nsw i64 %139, %137
  %146 = icmp samesign ult i64 %145, 24
  br i1 %146, label %136, label %147

147:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %3, ptr noundef nonnull align 64 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %148 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 1)
  %149 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull @XXH3_accumulate_512_rvv.swap_mask, i64 %148)
  %150 = shl nuw nsw i64 %148, 3
  br label %151

151:                                              ; preds = %177, %147
  %152 = phi i64 [ 0, %147 ], [ %178, %177 ]
  %153 = shl i64 %152, 6
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 %153
  %155 = getelementptr inbounds nuw i8, ptr %154, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %155, i32 0, i32 3, i32 1)
  %156 = shl i64 %152, 3
  %157 = getelementptr inbounds nuw i8, ptr %6, i64 %156
  br label %158

158:                                              ; preds = %158, %151
  %159 = phi i64 [ 0, %151 ], [ %175, %158 ]
  %160 = getelementptr inbounds nuw i64, ptr %3, i64 %159
  %161 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %160, i64 %148)
  %162 = getelementptr inbounds nuw i64, ptr %154, i64 %159
  %163 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr readonly %162, i64 %150)
  %164 = bitcast <vscale x 16 x i8> %163 to <vscale x 2 x i64>
  %165 = getelementptr inbounds nuw i64, ptr %157, i64 %159
  %166 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %165, i64 %150)
  %167 = bitcast <vscale x 16 x i8> %166 to <vscale x 2 x i64>
  %168 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %164, <vscale x 2 x i64> %167, i64 %148)
  %169 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %168, i64 32, i64 %148)
  %170 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %168, i64 4294967295, i64 %148)
  %171 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %170, <vscale x 2 x i64> %169, i64 %148)
  %172 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %164, <vscale x 2 x i64> %149, i64 %148)
  %173 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %161, <vscale x 2 x i64> %171, i64 %148)
  %174 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %173, <vscale x 2 x i64> %172, i64 %148)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %174, ptr nonnull %160, i64 %148)
  %175 = add nuw nsw i64 %159, %148
  %176 = icmp samesign ult i64 %175, 8
  br i1 %176, label %158, label %177

177:                                              ; preds = %158
  %178 = add nuw nsw i64 %152, 1
  %179 = icmp eq i64 %178, 15
  br i1 %179, label %180, label %151

180:                                              ; preds = %177
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %182 = getelementptr inbounds nuw i8, ptr %6, i64 121
  br label %183

183:                                              ; preds = %183, %180
  %184 = phi i64 [ 0, %180 ], [ %200, %183 ]
  %185 = getelementptr inbounds nuw i64, ptr %3, i64 %184
  %186 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %185, i64 %148)
  %187 = getelementptr inbounds nuw i64, ptr %181, i64 %184
  %188 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %187, i64 %150)
  %189 = bitcast <vscale x 16 x i8> %188 to <vscale x 2 x i64>
  %190 = getelementptr inbounds nuw i64, ptr %182, i64 %184
  %191 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %190, i64 %150)
  %192 = bitcast <vscale x 16 x i8> %191 to <vscale x 2 x i64>
  %193 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %189, <vscale x 2 x i64> %192, i64 %148)
  %194 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %193, i64 32, i64 %148)
  %195 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %193, i64 4294967295, i64 %148)
  %196 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %195, <vscale x 2 x i64> %194, i64 %148)
  %197 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %189, <vscale x 2 x i64> %149, i64 %148)
  %198 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %186, <vscale x 2 x i64> %196, i64 %148)
  %199 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %198, <vscale x 2 x i64> %197, i64 %148)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %199, ptr nonnull %185, i64 %148)
  %200 = add nuw nsw i64 %184, %148
  %201 = icmp samesign ult i64 %200, 8
  br i1 %201, label %183, label %202

202:                                              ; preds = %183
  %203 = getelementptr inbounds nuw i8, ptr %6, i64 11
  %204 = load i64, ptr %3, align 64
  %205 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %206 = load i64, ptr %205, align 8
  %207 = load i64, ptr %203, align 1
  %208 = getelementptr inbounds nuw i8, ptr %6, i64 19
  %209 = load i64, ptr %208, align 1
  %210 = xor i64 %207, %204
  %211 = xor i64 %209, %206
  %212 = zext i64 %210 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %217, -2457058741658706944
  %219 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %220 = getelementptr inbounds nuw i8, ptr %6, i64 27
  %221 = load i64, ptr %219, align 16
  %222 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %223 = load i64, ptr %222, align 8
  %224 = load i64, ptr %220, align 1
  %225 = getelementptr inbounds nuw i8, ptr %6, i64 35
  %226 = load i64, ptr %225, align 1
  %227 = xor i64 %224, %221
  %228 = xor i64 %226, %223
  %229 = zext i64 %227 to i128
  %230 = zext i64 %228 to i128
  %231 = mul nuw i128 %230, %229
  %232 = lshr i128 %231, 64
  %233 = xor i128 %232, %231
  %234 = trunc i128 %233 to i64
  %235 = add i64 %218, %234
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %237 = getelementptr inbounds nuw i8, ptr %6, i64 43
  %238 = load i64, ptr %236, align 32
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %240 = load i64, ptr %239, align 8
  %241 = load i64, ptr %237, align 1
  %242 = getelementptr inbounds nuw i8, ptr %6, i64 51
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %241, %238
  %245 = xor i64 %243, %240
  %246 = zext i64 %244 to i128
  %247 = zext i64 %245 to i128
  %248 = mul nuw i128 %247, %246
  %249 = lshr i128 %248, 64
  %250 = xor i128 %249, %248
  %251 = trunc i128 %250 to i64
  %252 = add i64 %235, %251
  %253 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %254 = getelementptr inbounds nuw i8, ptr %6, i64 59
  %255 = load i64, ptr %253, align 16
  %256 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %257 = load i64, ptr %256, align 8
  %258 = load i64, ptr %254, align 1
  %259 = getelementptr inbounds nuw i8, ptr %6, i64 67
  %260 = load i64, ptr %259, align 1
  %261 = xor i64 %258, %255
  %262 = xor i64 %260, %257
  %263 = zext i64 %261 to i128
  %264 = zext i64 %262 to i128
  %265 = mul nuw i128 %264, %263
  %266 = lshr i128 %265, 64
  %267 = xor i128 %266, %265
  %268 = trunc i128 %267 to i64
  %269 = add i64 %252, %268
  %270 = lshr i64 %269, 37
  %271 = xor i64 %270, %269
  %272 = mul i64 %271, 1609587791953885689
  %273 = lshr i64 %272, 32
  %274 = xor i64 %273, %272
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #8
  br label %275

275:                                              ; preds = %62, %202
  %276 = phi i64 [ %118, %62 ], [ %274, %202 ]
  ret i64 %276
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.riscv.vsetvli.i64(i64, i64 immarg, i64 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64>, ptr, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8>, ptr, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64>, ptr, i64) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vsll.nxv2i64.i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zaamo,+zalrsc,+zicsr,+zifencei,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }

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
!17 = !{!13, !15}
!18 = !{!10, !15}
!19 = !{!10, !13}
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
!30 = distinct !{!30, !31, !"XXH3_initCustomSecret_rvv: argument 0"}
!31 = distinct !{!31, !"XXH3_initCustomSecret_rvv"}
!32 = distinct !{!32, !21}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH3_64bits_internal: argument 0"}
!35 = distinct !{!35, !"XXH3_64bits_internal"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"XXH3_hashLong_64b_withSeed: argument 0"}
!38 = distinct !{!38, !"XXH3_hashLong_64b_withSeed"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"XXH3_hashLong_64b_internal: argument 0"}
!41 = distinct !{!41, !"XXH3_hashLong_64b_internal"}
!42 = !{!43}
!43 = distinct !{!43, !41, !"XXH3_hashLong_64b_internal: argument 1"}
!44 = !{!40, !43, !37, !34}
!45 = !{!46}
!46 = distinct !{!46, !47, !"XXH3_hashLong_internal_loop: argument 0"}
!47 = distinct !{!47, !"XXH3_hashLong_internal_loop"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"XXH3_hashLong_internal_loop: argument 1"}
!50 = !{!51}
!51 = distinct !{!51, !47, !"XXH3_hashLong_internal_loop: argument 2"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"XXH3_accumulate_rvv: argument 0"}
!54 = distinct !{!54, !"XXH3_accumulate_rvv"}
!55 = !{!56}
!56 = distinct !{!56, !54, !"XXH3_accumulate_rvv: argument 1"}
!57 = !{!58}
!58 = distinct !{!58, !54, !"XXH3_accumulate_rvv: argument 2"}
!59 = !{!60, !62, !63, !53, !56, !58, !46, !49, !51, !40, !43, !37, !34}
!60 = distinct !{!60, !61, !"XXH3_accumulate_512_rvv: argument 0"}
!61 = distinct !{!61, !"XXH3_accumulate_512_rvv"}
!62 = distinct !{!62, !61, !"XXH3_accumulate_512_rvv: argument 1"}
!63 = distinct !{!63, !61, !"XXH3_accumulate_512_rvv: argument 2"}
!64 = !{!58, !51, !43}
!65 = !{!60}
!66 = !{!62}
!67 = !{!63}
!68 = !{!60, !53, !46}
!69 = !{!62, !63, !56, !58, !49, !51, !40, !43, !37, !34}
!70 = !{!62, !56, !49, !40, !37, !34}
!71 = !{!60, !63, !53, !58, !46, !51, !43}
!72 = !{!63, !58, !51, !43}
!73 = !{!60, !62, !53, !56, !46, !49, !40, !37, !34}
!74 = distinct !{!74, !21}
!75 = !{!76}
!76 = distinct !{!76, !77, !"XXH3_accumulate_512_rvv: argument 0"}
!77 = distinct !{!77, !"XXH3_accumulate_512_rvv"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"XXH3_accumulate_512_rvv: argument 1"}
!80 = !{!81}
!81 = distinct !{!81, !77, !"XXH3_accumulate_512_rvv: argument 2"}
!82 = !{!76, !46}
!83 = !{!79, !81, !49, !51, !40, !43, !37, !34}
!84 = !{!79, !49, !40, !37, !34}
!85 = !{!76, !81, !46, !51, !43}
!86 = !{!81, !51, !43}
!87 = !{!76, !79, !46, !49, !40, !37, !34}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"XXH3_mergeAccs: argument 0"}
!90 = distinct !{!90, !"XXH3_mergeAccs"}
!91 = distinct !{!91, !92, !"XXH3_finalizeLong_64b: argument 0"}
!92 = distinct !{!92, !"XXH3_finalizeLong_64b"}
!93 = !{!94, !95, !40, !43, !37, !34}
!94 = distinct !{!94, !90, !"XXH3_mergeAccs: argument 1"}
!95 = distinct !{!95, !92, !"XXH3_finalizeLong_64b: argument 1"}
!96 = !{!37, !34}
!97 = !{!98}
!98 = distinct !{!98, !99, !"XXH3_initCustomSecret_rvv: argument 0"}
!99 = distinct !{!99, !"XXH3_initCustomSecret_rvv"}
!100 = !{!98, !37, !34}
!101 = !{!102}
!102 = distinct !{!102, !103, !"XXH3_hashLong_64b_internal: argument 0"}
!103 = distinct !{!103, !"XXH3_hashLong_64b_internal"}
!104 = !{!105}
!105 = distinct !{!105, !103, !"XXH3_hashLong_64b_internal: argument 1"}
!106 = !{!102, !105, !37, !34}
!107 = !{!108}
!108 = distinct !{!108, !109, !"XXH3_hashLong_internal_loop: argument 0"}
!109 = distinct !{!109, !"XXH3_hashLong_internal_loop"}
!110 = !{!111}
!111 = distinct !{!111, !109, !"XXH3_hashLong_internal_loop: argument 1"}
!112 = !{!113}
!113 = distinct !{!113, !109, !"XXH3_hashLong_internal_loop: argument 2"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"XXH3_accumulate_rvv: argument 0"}
!116 = distinct !{!116, !"XXH3_accumulate_rvv"}
!117 = !{!118}
!118 = distinct !{!118, !116, !"XXH3_accumulate_rvv: argument 1"}
!119 = !{!120}
!120 = distinct !{!120, !116, !"XXH3_accumulate_rvv: argument 2"}
!121 = !{!122, !124, !125, !115, !118, !120, !108, !111, !113, !102, !105, !37, !34}
!122 = distinct !{!122, !123, !"XXH3_accumulate_512_rvv: argument 0"}
!123 = distinct !{!123, !"XXH3_accumulate_512_rvv"}
!124 = distinct !{!124, !123, !"XXH3_accumulate_512_rvv: argument 1"}
!125 = distinct !{!125, !123, !"XXH3_accumulate_512_rvv: argument 2"}
!126 = !{!120, !113, !105}
!127 = !{!122}
!128 = !{!124}
!129 = !{!125}
!130 = !{!122, !115, !108}
!131 = !{!124, !125, !118, !120, !111, !113, !102, !105, !37, !34}
!132 = !{!124, !118, !111, !102, !37, !34}
!133 = !{!122, !125, !115, !120, !108, !113, !105}
!134 = !{!125, !120, !113, !105}
!135 = !{!122, !124, !115, !118, !108, !111, !102, !37, !34}
!136 = !{!137}
!137 = distinct !{!137, !138, !"XXH3_accumulate_512_rvv: argument 0"}
!138 = distinct !{!138, !"XXH3_accumulate_512_rvv"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"XXH3_accumulate_512_rvv: argument 1"}
!141 = !{!142}
!142 = distinct !{!142, !138, !"XXH3_accumulate_512_rvv: argument 2"}
!143 = !{!137, !108}
!144 = !{!140, !142, !111, !113, !102, !105, !37, !34}
!145 = !{!140, !111, !102, !37, !34}
!146 = !{!137, !142, !108, !113, !105}
!147 = !{!142, !113, !105}
!148 = !{!137, !140, !108, !111, !102, !37, !34}
!149 = !{!150}
!150 = distinct !{!150, !151, !"XXH3_finalizeLong_64b: argument 0"}
!151 = distinct !{!151, !"XXH3_finalizeLong_64b"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"XXH3_finalizeLong_64b: argument 1"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"XXH3_mergeAccs: argument 0"}
!156 = distinct !{!156, !"XXH3_mergeAccs"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"XXH3_mergeAccs: argument 1"}
!159 = !{!155, !150}
!160 = !{!158, !153, !102, !105, !37, !34}
!161 = !{!158, !153, !105}
!162 = !{!155, !150, !102, !37, !34}
