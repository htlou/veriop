; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0d7465e/wrap_simd.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0d7465e/wrap_simd.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

@__const.XXH3_accumulate_512_rvv.swap_mask = private unnamed_addr constant [16 x i64] [i64 1, i64 0, i64 3, i64 2, i64 5, i64 4, i64 7, i64 6, i64 9, i64 8, i64 11, i64 10, i64 13, i64 12, i64 15, i64 14], align 8
@__const.XXH3_scrambleAcc_rvv.prime = private unnamed_addr constant [16 x i64] [i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761], align 8
@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024)
define dso_local void @target_acc512(ptr noundef writeonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = alloca [8 x i64], align 64
  %27 = alloca [64 x i8], align 8
  %28 = alloca [64 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %28) #9
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
  %51 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull @__const.XXH3_accumulate_512_rvv.swap_mask, i64 %50)
  %52 = shl nuw nsw i64 %50, 3
  %53 = udiv i64 64, %52
  %54 = icmp samesign ugt i64 %50, 8
  br i1 %54, label %76, label %55

55:                                               ; preds = %25, %55
  %56 = phi i64 [ %74, %55 ], [ 0, %25 ]
  %57 = mul nuw nsw i64 %56, %50
  %58 = getelementptr inbounds nuw i64, ptr %27, i64 %57
  %59 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %58, i64 %52)
  %60 = bitcast <vscale x 16 x i8> %59 to <vscale x 2 x i64>
  %61 = getelementptr inbounds nuw i64, ptr %28, i64 %57
  %62 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %61, i64 %52)
  %63 = bitcast <vscale x 16 x i8> %62 to <vscale x 2 x i64>
  %64 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %60, <vscale x 2 x i64> %63, i64 %50)
  %65 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %64, i64 32, i64 %50)
  %66 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %64, i64 4294967295, i64 %50)
  %67 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %65, i64 4294967295, i64 %50)
  %68 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %66, <vscale x 2 x i64> %67, i64 %50)
  %69 = getelementptr inbounds nuw i64, ptr %26, i64 %57
  %70 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %69, i64 %50)
  %71 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %70, <vscale x 2 x i64> %68, i64 %50)
  %72 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %60, <vscale x 2 x i64> %51, i64 %50)
  %73 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %71, <vscale x 2 x i64> %72, i64 %50)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %73, ptr nonnull %69, i64 %50)
  %74 = add nuw nsw i64 %56, 1
  %75 = icmp samesign ult i64 %74, %53
  br i1 %75, label %55, label %76

76:                                               ; preds = %55, %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 64 dereferenceable(64) %26, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %28) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #9
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #9
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024)
define dso_local void @target_initsecret(ptr noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i64], align 8
  %4 = alloca [192 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #9
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
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %0, ptr noundef nonnull align 64 dereferenceable(192) %4, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024)
define dso_local i64 @target_api_len1024(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i64], align 64
  %4 = alloca [16 x i64], align 8
  %5 = alloca [8 x i64], align 64
  %6 = alloca [192 x i8], align 64
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %8, label %151

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %5, ptr noundef nonnull align 64 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %9 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 1)
  %10 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull @__const.XXH3_accumulate_512_rvv.swap_mask, i64 %9)
  %11 = shl nuw nsw i64 %9, 3
  %12 = udiv i64 64, %11
  %13 = icmp samesign ugt i64 %9, 8
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %15, i32 0, i32 3, i32 1)
  %16 = getelementptr i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %16, i32 0, i32 3, i32 1)
  %17 = getelementptr i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %17, i32 0, i32 3, i32 1)
  %18 = getelementptr i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %18, i32 0, i32 3, i32 1)
  %19 = getelementptr i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %19, i32 0, i32 3, i32 1)
  %20 = getelementptr i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %20, i32 0, i32 3, i32 1)
  %21 = getelementptr i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %21, i32 0, i32 3, i32 1)
  %22 = getelementptr i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %22, i32 0, i32 3, i32 1)
  %23 = getelementptr i8, ptr %0, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %23, i32 0, i32 3, i32 1)
  %24 = getelementptr i8, ptr %0, i64 896
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %24, i32 0, i32 3, i32 1)
  %25 = getelementptr i8, ptr %0, i64 960
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %25, i32 0, i32 3, i32 1)
  %26 = getelementptr i8, ptr %0, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %26, i32 0, i32 3, i32 1)
  %27 = getelementptr i8, ptr %0, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %27, i32 0, i32 3, i32 1)
  %28 = getelementptr i8, ptr %0, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %28, i32 0, i32 3, i32 1)
  %29 = getelementptr i8, ptr %0, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %29, i32 0, i32 3, i32 1)
  br label %109

30:                                               ; preds = %8, %58
  %31 = phi i64 [ %59, %58 ], [ 0, %8 ]
  %32 = shl i64 %31, 6
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %34, i32 0, i32 3, i32 1)
  %35 = shl i64 %31, 3
  %36 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %35
  br label %37

37:                                               ; preds = %37, %30
  %38 = phi i64 [ %56, %37 ], [ 0, %30 ]
  %39 = mul nuw nsw i64 %38, %9
  %40 = getelementptr inbounds nuw i64, ptr %33, i64 %39
  %41 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr readonly %40, i64 %11)
  %42 = bitcast <vscale x 16 x i8> %41 to <vscale x 2 x i64>
  %43 = getelementptr inbounds nuw i64, ptr %36, i64 %39
  %44 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %43, i64 %11)
  %45 = bitcast <vscale x 16 x i8> %44 to <vscale x 2 x i64>
  %46 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %42, <vscale x 2 x i64> %45, i64 %9)
  %47 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %46, i64 32, i64 %9)
  %48 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %46, i64 4294967295, i64 %9)
  %49 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %47, i64 4294967295, i64 %9)
  %50 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %48, <vscale x 2 x i64> %49, i64 %9)
  %51 = getelementptr inbounds nuw i64, ptr %5, i64 %39
  %52 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %51, i64 %9)
  %53 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %52, <vscale x 2 x i64> %50, i64 %9)
  %54 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %42, <vscale x 2 x i64> %10, i64 %9)
  %55 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %53, <vscale x 2 x i64> %54, i64 %9)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %55, ptr nonnull %51, i64 %9)
  %56 = add nuw nsw i64 %38, 1
  %57 = icmp samesign ult i64 %56, %12
  br i1 %57, label %37, label %58

58:                                               ; preds = %37
  %59 = add nuw nsw i64 %31, 1
  %60 = icmp eq i64 %59, 15
  br i1 %60, label %61, label %30

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %63 = tail call i64 @llvm.umax.i64(i64 %12, i64 1)
  br label %64

64:                                               ; preds = %64, %61
  %65 = phi i64 [ %83, %64 ], [ 0, %61 ]
  %66 = mul nuw nsw i64 %65, %9
  %67 = getelementptr inbounds nuw i64, ptr %62, i64 %66
  %68 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %67, i64 %11)
  %69 = bitcast <vscale x 16 x i8> %68 to <vscale x 2 x i64>
  %70 = getelementptr inbounds nuw i64, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i64 %66
  %71 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %70, i64 %11)
  %72 = bitcast <vscale x 16 x i8> %71 to <vscale x 2 x i64>
  %73 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %69, <vscale x 2 x i64> %72, i64 %9)
  %74 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %73, i64 32, i64 %9)
  %75 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %73, i64 4294967295, i64 %9)
  %76 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %74, i64 4294967295, i64 %9)
  %77 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %75, <vscale x 2 x i64> %76, i64 %9)
  %78 = getelementptr inbounds nuw i64, ptr %5, i64 %66
  %79 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %78, i64 %9)
  %80 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %79, <vscale x 2 x i64> %77, i64 %9)
  %81 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %69, <vscale x 2 x i64> %10, i64 %9)
  %82 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %80, <vscale x 2 x i64> %81, i64 %9)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %82, ptr nonnull %78, i64 %9)
  %83 = add nuw nsw i64 %65, 1
  %84 = icmp eq i64 %83, %63
  br i1 %84, label %85, label %64

85:                                               ; preds = %64
  %86 = load i64, ptr %5, align 64
  %87 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %90 = load i64, ptr %89, align 16
  %91 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %94 = load i64, ptr %93, align 32
  %95 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %96 = load i64, ptr %95, align 8
  %97 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %98 = load i64, ptr %97, align 16
  %99 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %100 = load i64, ptr %99, align 8
  %101 = xor i64 %86, 7914194659941938988
  %102 = xor i64 %88, -6611157965513653271
  %103 = xor i64 %90, -1839215637059881052
  %104 = xor i64 %92, -3433288310154277810
  %105 = xor i64 %94, 5046485836271438973
  %106 = xor i64 %96, -8055285457383852172
  %107 = xor i64 %98, 5920048007935066598
  %108 = xor i64 %100, 7336514198459093435
  br label %109

109:                                              ; preds = %85, %14
  %110 = phi i64 [ %108, %85 ], [ 7336514201113126922, %14 ]
  %111 = phi i64 [ %107, %85 ], [ 8501907017582831139, %14 ]
  %112 = phi i64 [ %106, %85 ], [ -8055285455280128765, %14 ]
  %113 = phi i64 [ %105, %85 ], [ -4331492699949669858, %14 ]
  %114 = phi i64 [ %104, %85 ], [ -4175710100948273737, %14 ]
  %115 = phi i64 [ %103, %85 ], [ 2651324003421478123, %14 ]
  %116 = phi i64 [ %102, %85 ], [ 4212848526632896878, %14 ]
  %117 = phi i64 [ %101, %85 ], [ 7914194658909182225, %14 ]
  %118 = zext i64 %117 to i128
  %119 = zext i64 %116 to i128
  %120 = mul nuw i128 %118, %119
  %121 = lshr i128 %120, 64
  %122 = xor i128 %121, %120
  %123 = trunc i128 %122 to i64
  %124 = zext i64 %115 to i128
  %125 = zext i64 %114 to i128
  %126 = mul nuw i128 %124, %125
  %127 = lshr i128 %126, 64
  %128 = xor i128 %127, %126
  %129 = trunc i128 %128 to i64
  %130 = zext i64 %113 to i128
  %131 = zext i64 %112 to i128
  %132 = mul nuw i128 %130, %131
  %133 = lshr i128 %132, 64
  %134 = xor i128 %133, %132
  %135 = trunc i128 %134 to i64
  %136 = zext i64 %111 to i128
  %137 = zext i64 %110 to i128
  %138 = mul nuw i128 %136, %137
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %141, -2457058741658706944
  %143 = add i64 %142, %135
  %144 = add i64 %143, %129
  %145 = add i64 %144, %123
  %146 = lshr i64 %145, 37
  %147 = xor i64 %146, %145
  %148 = mul i64 %147, 1609587791953885689
  %149 = lshr i64 %148, 32
  %150 = xor i64 %149, %148
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %339

151:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  store i64 %1, ptr %4, align 8
  %152 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %153 = sub nsw i64 0, %1
  store i64 %153, ptr %152, align 8
  %154 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %1, ptr %154, align 8
  %155 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %153, ptr %155, align 8
  %156 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %1, ptr %156, align 8
  %157 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %153, ptr %157, align 8
  %158 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %1, ptr %158, align 8
  %159 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %153, ptr %159, align 8
  %160 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %1, ptr %160, align 8
  %161 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %153, ptr %161, align 8
  %162 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %1, ptr %162, align 8
  %163 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %153, ptr %163, align 8
  %164 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %1, ptr %164, align 8
  %165 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %153, ptr %165, align 8
  %166 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 %1, ptr %166, align 8
  %167 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %153, ptr %167, align 8
  br label %168

168:                                              ; preds = %168, %151
  %169 = phi i64 [ 0, %151 ], [ %177, %168 ]
  %170 = sub nuw nsw i64 24, %169
  %171 = tail call i64 @llvm.riscv.vsetvli.i64(i64 %170, i64 3, i64 1)
  %172 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %4, i64 %171)
  %173 = getelementptr inbounds nuw i64, ptr @XXH3_kSecret, i64 %169
  %174 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %173, i64 %171)
  %175 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %174, <vscale x 2 x i64> %172, i64 %171)
  %176 = getelementptr inbounds nuw i64, ptr %6, i64 %169
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %175, ptr nonnull %176, i64 %171)
  %177 = add nuw nsw i64 %171, %169
  %178 = icmp samesign ult i64 %177, 24
  br i1 %178, label %168, label %179

179:                                              ; preds = %168
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %3, ptr noundef nonnull align 64 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %180 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 1)
  %181 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull @__const.XXH3_accumulate_512_rvv.swap_mask, i64 %180)
  %182 = shl nuw nsw i64 %180, 3
  %183 = udiv i64 64, %182
  %184 = icmp samesign ugt i64 %180, 8
  br i1 %184, label %185, label %201

185:                                              ; preds = %179
  %186 = getelementptr i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %186, i32 0, i32 3, i32 1)
  %187 = getelementptr i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %187, i32 0, i32 3, i32 1)
  %188 = getelementptr i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %188, i32 0, i32 3, i32 1)
  %189 = getelementptr i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %189, i32 0, i32 3, i32 1)
  %190 = getelementptr i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %190, i32 0, i32 3, i32 1)
  %191 = getelementptr i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %191, i32 0, i32 3, i32 1)
  %192 = getelementptr i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %192, i32 0, i32 3, i32 1)
  %193 = getelementptr i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %193, i32 0, i32 3, i32 1)
  %194 = getelementptr i8, ptr %0, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %194, i32 0, i32 3, i32 1)
  %195 = getelementptr i8, ptr %0, i64 896
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %195, i32 0, i32 3, i32 1)
  %196 = getelementptr i8, ptr %0, i64 960
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %196, i32 0, i32 3, i32 1)
  %197 = getelementptr i8, ptr %0, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %197, i32 0, i32 3, i32 1)
  %198 = getelementptr i8, ptr %0, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %198, i32 0, i32 3, i32 1)
  %199 = getelementptr i8, ptr %0, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %199, i32 0, i32 3, i32 1)
  %200 = getelementptr i8, ptr %0, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %200, i32 0, i32 3, i32 1)
  br label %273

201:                                              ; preds = %179, %229
  %202 = phi i64 [ %230, %229 ], [ 0, %179 ]
  %203 = shl i64 %202, 6
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 %203
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %205, i32 0, i32 3, i32 1)
  %206 = shl i64 %202, 3
  %207 = getelementptr inbounds nuw i8, ptr %6, i64 %206
  br label %208

208:                                              ; preds = %208, %201
  %209 = phi i64 [ %227, %208 ], [ 0, %201 ]
  %210 = mul nuw nsw i64 %209, %180
  %211 = getelementptr inbounds nuw i64, ptr %204, i64 %210
  %212 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr readonly %211, i64 %182)
  %213 = bitcast <vscale x 16 x i8> %212 to <vscale x 2 x i64>
  %214 = getelementptr inbounds nuw i64, ptr %207, i64 %210
  %215 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %214, i64 %182)
  %216 = bitcast <vscale x 16 x i8> %215 to <vscale x 2 x i64>
  %217 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %213, <vscale x 2 x i64> %216, i64 %180)
  %218 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %217, i64 32, i64 %180)
  %219 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %217, i64 4294967295, i64 %180)
  %220 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %218, i64 4294967295, i64 %180)
  %221 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %219, <vscale x 2 x i64> %220, i64 %180)
  %222 = getelementptr inbounds nuw i64, ptr %3, i64 %210
  %223 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %222, i64 %180)
  %224 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %223, <vscale x 2 x i64> %221, i64 %180)
  %225 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %213, <vscale x 2 x i64> %181, i64 %180)
  %226 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %224, <vscale x 2 x i64> %225, i64 %180)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %226, ptr nonnull %222, i64 %180)
  %227 = add nuw nsw i64 %209, 1
  %228 = icmp samesign ult i64 %227, %183
  br i1 %228, label %208, label %229

229:                                              ; preds = %208
  %230 = add nuw nsw i64 %202, 1
  %231 = icmp eq i64 %230, 15
  br i1 %231, label %232, label %201

232:                                              ; preds = %229
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %234 = getelementptr inbounds nuw i8, ptr %6, i64 121
  %235 = tail call i64 @llvm.umax.i64(i64 %183, i64 1)
  br label %236

236:                                              ; preds = %236, %232
  %237 = phi i64 [ %255, %236 ], [ 0, %232 ]
  %238 = mul nuw nsw i64 %237, %180
  %239 = getelementptr inbounds nuw i64, ptr %233, i64 %238
  %240 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %239, i64 %182)
  %241 = bitcast <vscale x 16 x i8> %240 to <vscale x 2 x i64>
  %242 = getelementptr inbounds nuw i64, ptr %234, i64 %238
  %243 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %242, i64 %182)
  %244 = bitcast <vscale x 16 x i8> %243 to <vscale x 2 x i64>
  %245 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %241, <vscale x 2 x i64> %244, i64 %180)
  %246 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %245, i64 32, i64 %180)
  %247 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %245, i64 4294967295, i64 %180)
  %248 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %246, i64 4294967295, i64 %180)
  %249 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %247, <vscale x 2 x i64> %248, i64 %180)
  %250 = getelementptr inbounds nuw i64, ptr %3, i64 %238
  %251 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %250, i64 %180)
  %252 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %251, <vscale x 2 x i64> %249, i64 %180)
  %253 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %241, <vscale x 2 x i64> %181, i64 %180)
  %254 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %252, <vscale x 2 x i64> %253, i64 %180)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %254, ptr nonnull %250, i64 %180)
  %255 = add nuw nsw i64 %237, 1
  %256 = icmp eq i64 %255, %235
  br i1 %256, label %257, label %236

257:                                              ; preds = %236
  %258 = load i64, ptr %3, align 64
  %259 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %260 = load i64, ptr %259, align 8
  %261 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %262 = load i64, ptr %261, align 16
  %263 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %264 = load i64, ptr %263, align 8
  %265 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %266 = load i64, ptr %265, align 32
  %267 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %268 = load i64, ptr %267, align 8
  %269 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %270 = load i64, ptr %269, align 16
  %271 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %272 = load i64, ptr %271, align 8
  br label %273

273:                                              ; preds = %257, %185
  %274 = phi i64 [ %272, %257 ], [ 2654435761, %185 ]
  %275 = phi i64 [ %270, %257 ], [ 2870177450012600261, %185 ]
  %276 = phi i64 [ %268, %257 ], [ 2246822519, %185 ]
  %277 = phi i64 [ %266, %257 ], [ -8796714831421723037, %185 ]
  %278 = phi i64 [ %264, %257 ], [ 1609587929392839161, %185 ]
  %279 = phi i64 [ %262, %257 ], [ -4417276706812531889, %185 ]
  %280 = phi i64 [ %260, %257 ], [ -7046029288634856825, %185 ]
  %281 = phi i64 [ %258, %257 ], [ 3266489917, %185 ]
  %282 = getelementptr inbounds nuw i8, ptr %6, i64 11
  %283 = load i64, ptr %282, align 1
  %284 = getelementptr inbounds nuw i8, ptr %6, i64 19
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %283, %281
  %287 = xor i64 %285, %280
  %288 = zext i64 %286 to i128
  %289 = zext i64 %287 to i128
  %290 = mul nuw i128 %289, %288
  %291 = lshr i128 %290, 64
  %292 = xor i128 %291, %290
  %293 = trunc i128 %292 to i64
  %294 = add i64 %293, -2457058741658706944
  %295 = getelementptr inbounds nuw i8, ptr %6, i64 27
  %296 = load i64, ptr %295, align 1
  %297 = getelementptr inbounds nuw i8, ptr %6, i64 35
  %298 = load i64, ptr %297, align 1
  %299 = xor i64 %296, %279
  %300 = xor i64 %298, %278
  %301 = zext i64 %299 to i128
  %302 = zext i64 %300 to i128
  %303 = mul nuw i128 %302, %301
  %304 = lshr i128 %303, 64
  %305 = xor i128 %304, %303
  %306 = trunc i128 %305 to i64
  %307 = add i64 %294, %306
  %308 = getelementptr inbounds nuw i8, ptr %6, i64 43
  %309 = load i64, ptr %308, align 1
  %310 = getelementptr inbounds nuw i8, ptr %6, i64 51
  %311 = load i64, ptr %310, align 1
  %312 = xor i64 %309, %277
  %313 = xor i64 %311, %276
  %314 = zext i64 %312 to i128
  %315 = zext i64 %313 to i128
  %316 = mul nuw i128 %315, %314
  %317 = lshr i128 %316, 64
  %318 = xor i128 %317, %316
  %319 = trunc i128 %318 to i64
  %320 = add i64 %307, %319
  %321 = getelementptr inbounds nuw i8, ptr %6, i64 59
  %322 = load i64, ptr %321, align 1
  %323 = getelementptr inbounds nuw i8, ptr %6, i64 67
  %324 = load i64, ptr %323, align 1
  %325 = xor i64 %322, %275
  %326 = xor i64 %324, %274
  %327 = zext i64 %325 to i128
  %328 = zext i64 %326 to i128
  %329 = mul nuw i128 %328, %327
  %330 = lshr i128 %329, 64
  %331 = xor i128 %330, %329
  %332 = trunc i128 %331 to i64
  %333 = add i64 %320, %332
  %334 = lshr i64 %333, 37
  %335 = xor i64 %334, %333
  %336 = mul i64 %335, 1609587791953885689
  %337 = lshr i64 %336, 32
  %338 = xor i64 %337, %336
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #9
  br label %339

339:                                              ; preds = %109, %273
  %340 = phi i64 [ %150, %109 ], [ %338, %273 ]
  ret i64 %340
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
declare <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64>, ptr, i64) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vsll.nxv2i64.i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zaamo,+zalrsc,+zicsr,+zifencei,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!68 = !{!62, !56, !49, !40, !37, !34}
!69 = !{!60, !63, !53, !58, !46, !51, !43}
!70 = !{!63, !58, !51, !43}
!71 = !{!60, !62, !53, !56, !46, !49, !40, !37, !34}
!72 = !{!60, !53, !46}
!73 = !{!62, !63, !56, !58, !49, !51, !40, !43, !37, !34}
!74 = distinct !{!74, !21}
!75 = !{!76}
!76 = distinct !{!76, !77, !"XXH3_accumulate_512_rvv: argument 0"}
!77 = distinct !{!77, !"XXH3_accumulate_512_rvv"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"XXH3_accumulate_512_rvv: argument 1"}
!80 = !{!81}
!81 = distinct !{!81, !77, !"XXH3_accumulate_512_rvv: argument 2"}
!82 = !{!79, !49, !40, !37, !34}
!83 = !{!76, !81, !46, !51, !43}
!84 = !{!81, !51, !43}
!85 = !{!76, !79, !46, !49, !40, !37, !34}
!86 = !{!76, !46}
!87 = !{!79, !81, !49, !51, !40, !43, !37, !34}
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
!130 = !{!124, !118, !111, !102, !37, !34}
!131 = !{!122, !125, !115, !120, !108, !113, !105}
!132 = !{!125, !120, !113, !105}
!133 = !{!122, !124, !115, !118, !108, !111, !102, !37, !34}
!134 = !{!122, !115, !108}
!135 = !{!124, !125, !118, !120, !111, !113, !102, !105, !37, !34}
!136 = !{!137}
!137 = distinct !{!137, !138, !"XXH3_accumulate_512_rvv: argument 0"}
!138 = distinct !{!138, !"XXH3_accumulate_512_rvv"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"XXH3_accumulate_512_rvv: argument 1"}
!141 = !{!142}
!142 = distinct !{!142, !138, !"XXH3_accumulate_512_rvv: argument 2"}
!143 = !{!140, !111, !102, !37, !34}
!144 = !{!137, !142, !108, !113, !105}
!145 = !{!142, !113, !105}
!146 = !{!137, !140, !108, !111, !102, !37, !34}
!147 = !{!137, !108}
!148 = !{!140, !142, !111, !113, !102, !105, !37, !34}
!149 = !{!150, !152}
!150 = distinct !{!150, !151, !"XXH3_mergeAccs: argument 0"}
!151 = distinct !{!151, !"XXH3_mergeAccs"}
!152 = distinct !{!152, !153, !"XXH3_finalizeLong_64b: argument 0"}
!153 = distinct !{!153, !"XXH3_finalizeLong_64b"}
!154 = !{!155, !156, !102, !105, !37, !34}
!155 = distinct !{!155, !151, !"XXH3_mergeAccs: argument 1"}
!156 = distinct !{!156, !153, !"XXH3_finalizeLong_64b: argument 1"}
!157 = !{!152}
!158 = !{!156}
!159 = !{!150}
!160 = !{!155}
!161 = !{!155, !156, !105}
!162 = !{!150, !152, !102, !37, !34}
