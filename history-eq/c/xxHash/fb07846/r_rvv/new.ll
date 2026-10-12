; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/fb07846/wrap_simd.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/fb07846/wrap_simd.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

@__const.XXH3_accumulate_512_rvv.swap_mask = private unnamed_addr constant [16 x i64] [i64 1, i64 0, i64 3, i64 2, i64 5, i64 4, i64 7, i64 6, i64 9, i64 8, i64 11, i64 10, i64 13, i64 12, i64 15, i64 14], align 8
@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024)
define dso_local void @target_acc512(ptr noundef writeonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = alloca [8 x i64], align 64
  %27 = alloca [64 x i8], align 8
  %28 = alloca [64 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %28) #12
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %28) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #12
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #12
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
  %35 = shl nuw nsw i64 %34, 3
  br label %36

36:                                               ; preds = %36, %17
  %37 = phi i64 [ 0, %17 ], [ %47, %36 ]
  %38 = getelementptr inbounds nuw i64, ptr %18, i64 %37
  %39 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %38, i64 %34)
  %40 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %39, i64 47, i64 %34)
  %41 = getelementptr inbounds nuw i64, ptr %19, i64 %37
  %42 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %41, i64 %35)
  %43 = bitcast <vscale x 16 x i8> %42 to <vscale x 2 x i64>
  %44 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %39, <vscale x 2 x i64> %40, i64 %34)
  %45 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %44, <vscale x 2 x i64> %43, i64 %34)
  %46 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %45, i64 2654435761, i64 %34)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %46, ptr nonnull %38, i64 %34)
  %47 = add nuw nsw i64 %37, %34
  %48 = icmp samesign ult i64 %47, 8
  br i1 %48, label %36, label %49

49:                                               ; preds = %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 64 dereferenceable(64) %18, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable vscale_range(2,1024)
define dso_local void @target_initsecret(ptr noundef writeonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca [192 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #12
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %3, %2 ], [ %19, %4 ]
  %6 = phi ptr [ @XXH3_kSecret, %2 ], [ %18, %4 ]
  %7 = phi i64 [ 0, %2 ], [ %16, %4 ]
  %8 = sub nuw nsw i64 12, %7
  %9 = tail call i64 @llvm.riscv.vsetvli.i64(i64 %8, i64 3, i64 1)
  %10 = tail call <vscale x 2 x i64> @llvm.riscv.vlse.nxv2i64.i64(<vscale x 2 x i64> poison, ptr %6, i64 16, i64 %9)
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %12 = tail call <vscale x 2 x i64> @llvm.riscv.vlse.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %11, i64 16, i64 %9)
  %13 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %10, i64 %1, i64 %9)
  %14 = tail call <vscale x 2 x i64> @llvm.riscv.vsub.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %12, i64 %1, i64 %9)
  call void @llvm.riscv.vsse.nxv2i64.i64(<vscale x 2 x i64> %13, ptr %5, i64 16, i64 %9)
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.riscv.vsse.nxv2i64.i64(<vscale x 2 x i64> %14, ptr nonnull %15, i64 16, i64 %9)
  %16 = add nuw nsw i64 %9, %7
  %17 = shl nuw nsw i64 %9, 4
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 %17
  %20 = icmp samesign ult i64 %16, 12
  br i1 %20, label %4, label %21

21:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %0, ptr noundef nonnull align 64 dereferenceable(192) %3, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable vscale_range(2,1024)
define dso_local i64 @target_api_len1024(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca [8 x i64], align 64
  %4 = alloca [8 x i64], align 64
  %5 = alloca [192 x i8], align 64
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %7, label %150

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %4, ptr noundef nonnull align 64 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %8 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 1)
  %9 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull @__const.XXH3_accumulate_512_rvv.swap_mask, i64 %8)
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
  %40 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr readonly %39, i64 %10)
  %41 = bitcast <vscale x 16 x i8> %40 to <vscale x 2 x i64>
  %42 = getelementptr inbounds nuw i64, ptr %35, i64 %38
  %43 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %42, i64 %10)
  %44 = bitcast <vscale x 16 x i8> %43 to <vscale x 2 x i64>
  %45 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %41, <vscale x 2 x i64> %44, i64 %8)
  %46 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %45, i64 32, i64 %8)
  %47 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %45, i64 4294967295, i64 %8)
  %48 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %46, i64 4294967295, i64 %8)
  %49 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %47, <vscale x 2 x i64> %48, i64 %8)
  %50 = getelementptr inbounds nuw i64, ptr %4, i64 %38
  %51 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %50, i64 %8)
  %52 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %51, <vscale x 2 x i64> %49, i64 %8)
  %53 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %41, <vscale x 2 x i64> %9, i64 %8)
  %54 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %52, <vscale x 2 x i64> %53, i64 %8)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %54, ptr nonnull %50, i64 %8)
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
  %67 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %66, i64 %10)
  %68 = bitcast <vscale x 16 x i8> %67 to <vscale x 2 x i64>
  %69 = getelementptr inbounds nuw i64, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i64 %65
  %70 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %69, i64 %10)
  %71 = bitcast <vscale x 16 x i8> %70 to <vscale x 2 x i64>
  %72 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %68, <vscale x 2 x i64> %71, i64 %8)
  %73 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %72, i64 32, i64 %8)
  %74 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %72, i64 4294967295, i64 %8)
  %75 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %73, i64 4294967295, i64 %8)
  %76 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %74, <vscale x 2 x i64> %75, i64 %8)
  %77 = getelementptr inbounds nuw i64, ptr %4, i64 %65
  %78 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %77, i64 %8)
  %79 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %78, <vscale x 2 x i64> %76, i64 %8)
  %80 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %68, <vscale x 2 x i64> %9, i64 %8)
  %81 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %79, <vscale x 2 x i64> %80, i64 %8)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %81, ptr nonnull %77, i64 %8)
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %328

150:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #12
  br label %151

151:                                              ; preds = %151, %150
  %152 = phi ptr [ %5, %150 ], [ %166, %151 ]
  %153 = phi ptr [ @XXH3_kSecret, %150 ], [ %165, %151 ]
  %154 = phi i64 [ 0, %150 ], [ %163, %151 ]
  %155 = sub nuw nsw i64 12, %154
  %156 = tail call i64 @llvm.riscv.vsetvli.i64(i64 %155, i64 3, i64 1)
  %157 = tail call <vscale x 2 x i64> @llvm.riscv.vlse.nxv2i64.i64(<vscale x 2 x i64> poison, ptr %153, i64 16, i64 %156)
  %158 = getelementptr inbounds nuw i8, ptr %153, i64 8
  %159 = tail call <vscale x 2 x i64> @llvm.riscv.vlse.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %158, i64 16, i64 %156)
  %160 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %157, i64 %1, i64 %156)
  %161 = tail call <vscale x 2 x i64> @llvm.riscv.vsub.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %159, i64 %1, i64 %156)
  call void @llvm.riscv.vsse.nxv2i64.i64(<vscale x 2 x i64> %160, ptr %152, i64 16, i64 %156)
  %162 = getelementptr inbounds nuw i8, ptr %152, i64 8
  call void @llvm.riscv.vsse.nxv2i64.i64(<vscale x 2 x i64> %161, ptr nonnull %162, i64 16, i64 %156)
  %163 = add nuw nsw i64 %156, %154
  %164 = shl nuw nsw i64 %156, 4
  %165 = getelementptr inbounds nuw i8, ptr %153, i64 %164
  %166 = getelementptr inbounds nuw i8, ptr %152, i64 %164
  %167 = icmp samesign ult i64 %163, 12
  br i1 %167, label %151, label %168

168:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %3, ptr noundef nonnull align 64 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %169 = tail call i64 @llvm.riscv.vsetvli.i64(i64 8, i64 3, i64 1)
  %170 = tail call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull @__const.XXH3_accumulate_512_rvv.swap_mask, i64 %169)
  %171 = shl nuw nsw i64 %169, 3
  %172 = udiv i64 64, %171
  %173 = icmp samesign ugt i64 %169, 8
  br i1 %173, label %174, label %190

174:                                              ; preds = %168
  %175 = getelementptr i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %175, i32 0, i32 3, i32 1)
  %176 = getelementptr i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %176, i32 0, i32 3, i32 1)
  %177 = getelementptr i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %177, i32 0, i32 3, i32 1)
  %178 = getelementptr i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %178, i32 0, i32 3, i32 1)
  %179 = getelementptr i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %179, i32 0, i32 3, i32 1)
  %180 = getelementptr i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %180, i32 0, i32 3, i32 1)
  %181 = getelementptr i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %181, i32 0, i32 3, i32 1)
  %182 = getelementptr i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %182, i32 0, i32 3, i32 1)
  %183 = getelementptr i8, ptr %0, i64 832
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %183, i32 0, i32 3, i32 1)
  %184 = getelementptr i8, ptr %0, i64 896
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %184, i32 0, i32 3, i32 1)
  %185 = getelementptr i8, ptr %0, i64 960
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %185, i32 0, i32 3, i32 1)
  %186 = getelementptr i8, ptr %0, i64 1024
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %186, i32 0, i32 3, i32 1)
  %187 = getelementptr i8, ptr %0, i64 1088
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %187, i32 0, i32 3, i32 1)
  %188 = getelementptr i8, ptr %0, i64 1152
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %188, i32 0, i32 3, i32 1)
  %189 = getelementptr i8, ptr %0, i64 1216
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %189, i32 0, i32 3, i32 1)
  br label %262

190:                                              ; preds = %168, %218
  %191 = phi i64 [ %219, %218 ], [ 0, %168 ]
  %192 = shl i64 %191, 6
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 %192
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %194, i32 0, i32 3, i32 1)
  %195 = shl i64 %191, 3
  %196 = getelementptr inbounds nuw i8, ptr %5, i64 %195
  br label %197

197:                                              ; preds = %197, %190
  %198 = phi i64 [ %216, %197 ], [ 0, %190 ]
  %199 = mul nuw nsw i64 %198, %169
  %200 = getelementptr inbounds nuw i64, ptr %193, i64 %199
  %201 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr readonly %200, i64 %171)
  %202 = bitcast <vscale x 16 x i8> %201 to <vscale x 2 x i64>
  %203 = getelementptr inbounds nuw i64, ptr %196, i64 %199
  %204 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %203, i64 %171)
  %205 = bitcast <vscale x 16 x i8> %204 to <vscale x 2 x i64>
  %206 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %202, <vscale x 2 x i64> %205, i64 %169)
  %207 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %206, i64 32, i64 %169)
  %208 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %206, i64 4294967295, i64 %169)
  %209 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %207, i64 4294967295, i64 %169)
  %210 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %208, <vscale x 2 x i64> %209, i64 %169)
  %211 = getelementptr inbounds nuw i64, ptr %3, i64 %199
  %212 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %211, i64 %169)
  %213 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %212, <vscale x 2 x i64> %210, i64 %169)
  %214 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %202, <vscale x 2 x i64> %170, i64 %169)
  %215 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %213, <vscale x 2 x i64> %214, i64 %169)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %215, ptr nonnull %211, i64 %169)
  %216 = add nuw nsw i64 %198, 1
  %217 = icmp samesign ult i64 %216, %172
  br i1 %217, label %197, label %218

218:                                              ; preds = %197
  %219 = add nuw nsw i64 %191, 1
  %220 = icmp eq i64 %219, 15
  br i1 %220, label %221, label %190

221:                                              ; preds = %218
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %223 = getelementptr inbounds nuw i8, ptr %5, i64 121
  %224 = tail call i64 @llvm.umax.i64(i64 %172, i64 1)
  br label %225

225:                                              ; preds = %225, %221
  %226 = phi i64 [ %244, %225 ], [ 0, %221 ]
  %227 = mul nuw nsw i64 %226, %169
  %228 = getelementptr inbounds nuw i64, ptr %222, i64 %227
  %229 = tail call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %228, i64 %171)
  %230 = bitcast <vscale x 16 x i8> %229 to <vscale x 2 x i64>
  %231 = getelementptr inbounds nuw i64, ptr %223, i64 %227
  %232 = call <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8> poison, ptr nonnull readonly %231, i64 %171)
  %233 = bitcast <vscale x 16 x i8> %232 to <vscale x 2 x i64>
  %234 = tail call <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %230, <vscale x 2 x i64> %233, i64 %169)
  %235 = tail call <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %234, i64 32, i64 %169)
  %236 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %234, i64 4294967295, i64 %169)
  %237 = tail call <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %235, i64 4294967295, i64 %169)
  %238 = tail call <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %236, <vscale x 2 x i64> %237, i64 %169)
  %239 = getelementptr inbounds nuw i64, ptr %3, i64 %227
  %240 = call <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64> poison, ptr nonnull %239, i64 %169)
  %241 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %240, <vscale x 2 x i64> %238, i64 %169)
  %242 = tail call <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %230, <vscale x 2 x i64> %170, i64 %169)
  %243 = tail call <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64> poison, <vscale x 2 x i64> %241, <vscale x 2 x i64> %242, i64 %169)
  call void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64> %243, ptr nonnull %239, i64 %169)
  %244 = add nuw nsw i64 %226, 1
  %245 = icmp eq i64 %244, %224
  br i1 %245, label %246, label %225

246:                                              ; preds = %225
  %247 = load i64, ptr %3, align 64
  %248 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %249 = load i64, ptr %248, align 8
  %250 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %251 = load i64, ptr %250, align 16
  %252 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %253 = load i64, ptr %252, align 8
  %254 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %255 = load i64, ptr %254, align 32
  %256 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %257 = load i64, ptr %256, align 8
  %258 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %259 = load i64, ptr %258, align 16
  %260 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %261 = load i64, ptr %260, align 8
  br label %262

262:                                              ; preds = %246, %174
  %263 = phi i64 [ %261, %246 ], [ 2654435761, %174 ]
  %264 = phi i64 [ %259, %246 ], [ 2870177450012600261, %174 ]
  %265 = phi i64 [ %257, %246 ], [ 2246822519, %174 ]
  %266 = phi i64 [ %255, %246 ], [ -8796714831421723037, %174 ]
  %267 = phi i64 [ %253, %246 ], [ 1609587929392839161, %174 ]
  %268 = phi i64 [ %251, %246 ], [ -4417276706812531889, %174 ]
  %269 = phi i64 [ %249, %246 ], [ -7046029288634856825, %174 ]
  %270 = phi i64 [ %247, %246 ], [ 3266489917, %174 ]
  %271 = getelementptr inbounds nuw i8, ptr %5, i64 11
  %272 = load i64, ptr %271, align 1
  %273 = getelementptr inbounds nuw i8, ptr %5, i64 19
  %274 = load i64, ptr %273, align 1
  %275 = xor i64 %272, %270
  %276 = xor i64 %274, %269
  %277 = zext i64 %275 to i128
  %278 = zext i64 %276 to i128
  %279 = mul nuw i128 %278, %277
  %280 = lshr i128 %279, 64
  %281 = xor i128 %280, %279
  %282 = trunc i128 %281 to i64
  %283 = add i64 %282, -2457058741658706944
  %284 = getelementptr inbounds nuw i8, ptr %5, i64 27
  %285 = load i64, ptr %284, align 1
  %286 = getelementptr inbounds nuw i8, ptr %5, i64 35
  %287 = load i64, ptr %286, align 1
  %288 = xor i64 %285, %268
  %289 = xor i64 %287, %267
  %290 = zext i64 %288 to i128
  %291 = zext i64 %289 to i128
  %292 = mul nuw i128 %291, %290
  %293 = lshr i128 %292, 64
  %294 = xor i128 %293, %292
  %295 = trunc i128 %294 to i64
  %296 = add i64 %283, %295
  %297 = getelementptr inbounds nuw i8, ptr %5, i64 43
  %298 = load i64, ptr %297, align 1
  %299 = getelementptr inbounds nuw i8, ptr %5, i64 51
  %300 = load i64, ptr %299, align 1
  %301 = xor i64 %298, %266
  %302 = xor i64 %300, %265
  %303 = zext i64 %301 to i128
  %304 = zext i64 %302 to i128
  %305 = mul nuw i128 %304, %303
  %306 = lshr i128 %305, 64
  %307 = xor i128 %306, %305
  %308 = trunc i128 %307 to i64
  %309 = add i64 %296, %308
  %310 = getelementptr inbounds nuw i8, ptr %5, i64 59
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %5, i64 67
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %311, %264
  %315 = xor i64 %313, %263
  %316 = zext i64 %314 to i128
  %317 = zext i64 %315 to i128
  %318 = mul nuw i128 %317, %316
  %319 = lshr i128 %318, 64
  %320 = xor i128 %319, %318
  %321 = trunc i128 %320 to i64
  %322 = add i64 %309, %321
  %323 = lshr i64 %322, 37
  %324 = xor i64 %323, %322
  %325 = mul i64 %324, 1609587791953885689
  %326 = lshr i64 %325, 32
  %327 = xor i64 %326, %325
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #12
  br label %328

328:                                              ; preds = %108, %262
  %329 = phi i64 [ %149, %108 ], [ %327, %262 ]
  ret i64 %329
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.riscv.vsetvli.i64(i64, i64 immarg, i64 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 2 x i64> @llvm.riscv.vle.nxv2i64.i64(<vscale x 2 x i64>, ptr, i64) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 16 x i8> @llvm.riscv.vle.nxv16i8.i64(<vscale x 16 x i8>, ptr, i64) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vxor.nxv2i64.nxv2i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vsrl.nxv2i64.i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vand.nxv2i64.i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.nxv2i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.nxv2i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vrgather.vv.nxv2i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.riscv.vse.nxv2i64.i64(<vscale x 2 x i64>, ptr, i64) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vmul.nxv2i64.i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(read)
declare <vscale x 2 x i64> @llvm.riscv.vlse.nxv2i64.i64(<vscale x 2 x i64>, ptr, i64, i64) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vadd.nxv2i64.i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.riscv.vsub.nxv2i64.i64.i64(<vscale x 2 x i64>, <vscale x 2 x i64>, i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.riscv.vsse.nxv2i64.i64(<vscale x 2 x i64>, ptr, i64, i64) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zaamo,+zalrsc,+zicsr,+zifencei,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind uwtable vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zaamo,+zalrsc,+zicsr,+zifencei,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-sdext,-experimental-sdtrig,-experimental-smctr,-experimental-ssctr,-experimental-svukte,-experimental-xqcia,-experimental-xqciac,-experimental-xqcicli,-experimental-xqcicm,-experimental-xqcics,-experimental-xqcicsr,-experimental-xqciint,-experimental-xqcilo,-experimental-xqcilsm,-experimental-xqcisls,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvkgs,-h,-sha,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscmove,-xmipslsp,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zihintntl,-zihintpause,-zihpm,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

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
!27 = distinct !{!27, !21}
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
!94 = distinct !{!94, !95, !"XXH3_hashLong_64b_internal: argument 0"}
!95 = distinct !{!95, !"XXH3_hashLong_64b_internal"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"XXH3_hashLong_64b_internal: argument 1"}
!98 = !{!94, !97, !33, !30}
!99 = !{!100}
!100 = distinct !{!100, !101, !"XXH3_hashLong_internal_loop: argument 0"}
!101 = distinct !{!101, !"XXH3_hashLong_internal_loop"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"XXH3_hashLong_internal_loop: argument 1"}
!104 = !{!105}
!105 = distinct !{!105, !101, !"XXH3_hashLong_internal_loop: argument 2"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"XXH3_accumulate_rvv: argument 0"}
!108 = distinct !{!108, !"XXH3_accumulate_rvv"}
!109 = !{!110}
!110 = distinct !{!110, !108, !"XXH3_accumulate_rvv: argument 1"}
!111 = !{!112}
!112 = distinct !{!112, !108, !"XXH3_accumulate_rvv: argument 2"}
!113 = !{!114, !116, !117, !107, !110, !112, !100, !103, !105, !94, !97, !33, !30}
!114 = distinct !{!114, !115, !"XXH3_accumulate_512_rvv: argument 0"}
!115 = distinct !{!115, !"XXH3_accumulate_512_rvv"}
!116 = distinct !{!116, !115, !"XXH3_accumulate_512_rvv: argument 1"}
!117 = distinct !{!117, !115, !"XXH3_accumulate_512_rvv: argument 2"}
!118 = !{!112, !105, !97}
!119 = !{!114}
!120 = !{!116}
!121 = !{!117}
!122 = !{!116, !110, !103, !94, !33, !30}
!123 = !{!114, !117, !107, !112, !100, !105, !97}
!124 = !{!117, !112, !105, !97}
!125 = !{!114, !116, !107, !110, !100, !103, !94, !33, !30}
!126 = !{!114, !107, !100}
!127 = !{!116, !117, !110, !112, !103, !105, !94, !97, !33, !30}
!128 = !{!129}
!129 = distinct !{!129, !130, !"XXH3_accumulate_512_rvv: argument 0"}
!130 = distinct !{!130, !"XXH3_accumulate_512_rvv"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"XXH3_accumulate_512_rvv: argument 1"}
!133 = !{!134}
!134 = distinct !{!134, !130, !"XXH3_accumulate_512_rvv: argument 2"}
!135 = !{!132, !103, !94, !33, !30}
!136 = !{!129, !134, !100, !105, !97}
!137 = !{!134, !105, !97}
!138 = !{!129, !132, !100, !103, !94, !33, !30}
!139 = !{!129, !100}
!140 = !{!132, !134, !103, !105, !94, !97, !33, !30}
!141 = !{!142, !144}
!142 = distinct !{!142, !143, !"XXH3_mergeAccs: argument 0"}
!143 = distinct !{!143, !"XXH3_mergeAccs"}
!144 = distinct !{!144, !145, !"XXH3_finalizeLong_64b: argument 0"}
!145 = distinct !{!145, !"XXH3_finalizeLong_64b"}
!146 = !{!147, !148, !94, !97, !33, !30}
!147 = distinct !{!147, !143, !"XXH3_mergeAccs: argument 1"}
!148 = distinct !{!148, !145, !"XXH3_finalizeLong_64b: argument 1"}
!149 = !{!144}
!150 = !{!148}
!151 = !{!142}
!152 = !{!147}
!153 = !{!147, !148, !97}
!154 = !{!142, !144, !94, !33, !30}
