; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/cfbf0b7/wrap_api256.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/cfbf0b7/wrap_api256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(1,16)
define dso_local i64 @target_xxh3_len256(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i64], align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %2, ptr noundef nonnull align 64 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %3 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %4 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 0, i64 1)
  %5 = select <vscale x 2 x i1> %3, <vscale x 2 x i64> %4, <vscale x 2 x i64> zeroinitializer
  %6 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %3, <vscale x 2 x i64> %5, <vscale x 2 x i64> splat (i64 1))
  %7 = tail call i64 @llvm.vscale.i64()
  %8 = icmp samesign ugt i64 %7, 3
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %12, i32 0, i32 3, i32 1)
  br i1 %8, label %15, label %13

13:                                               ; preds = %1
  %14 = icmp eq i64 %7, 1
  br i1 %14, label %58, label %218

15:                                               ; preds = %1
  %16 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 8)
  %17 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %18 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr readonly %0, i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %19 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly @XXH3_kSecret, i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %20 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %19, <vscale x 2 x i64> %18)
  %21 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %18, <vscale x 2 x i64> %6)
  %22 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %16, <vscale x 2 x i64> %20)
  %23 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %20, <vscale x 2 x i64> splat (i64 32))
  %24 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %21, <vscale x 2 x i64> %23, <vscale x 2 x i64> %22)
  %25 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %17, <vscale x 2 x i64> %24)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %25, ptr nonnull %2, i32 1, <vscale x 2 x i1> %16)
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %27, i32 0, i32 3, i32 1)
  %28 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %29 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %26, i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %30 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %31 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %30, <vscale x 2 x i64> %29)
  %32 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %29, <vscale x 2 x i64> %6)
  %33 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %16, <vscale x 2 x i64> %31)
  %34 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %31, <vscale x 2 x i64> splat (i64 32))
  %35 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %32, <vscale x 2 x i64> %34, <vscale x 2 x i64> %33)
  %36 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %28, <vscale x 2 x i64> %35)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %36, ptr nonnull %2, i32 1, <vscale x 2 x i1> %16)
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %38, i32 0, i32 3, i32 1)
  %39 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %40 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %37, i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %41 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %42 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %41, <vscale x 2 x i64> %40)
  %43 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %40, <vscale x 2 x i64> %6)
  %44 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %16, <vscale x 2 x i64> %42)
  %45 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %42, <vscale x 2 x i64> splat (i64 32))
  %46 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %43, <vscale x 2 x i64> %45, <vscale x 2 x i64> %44)
  %47 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %39, <vscale x 2 x i64> %46)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %47, ptr nonnull %2, i32 1, <vscale x 2 x i1> %16)
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %49 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %50 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %48, i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %51 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i32 1, <vscale x 2 x i1> %16, <vscale x 2 x i64> zeroinitializer)
  %52 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %51, <vscale x 2 x i64> %50)
  %53 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %50, <vscale x 2 x i64> %6)
  %54 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %16, <vscale x 2 x i64> %52)
  %55 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %52, <vscale x 2 x i64> splat (i64 32))
  %56 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %53, <vscale x 2 x i64> %55, <vscale x 2 x i64> %54)
  %57 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %16, <vscale x 2 x i64> %49, <vscale x 2 x i64> %56)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %57, ptr nonnull %2, i32 1, <vscale x 2 x i1> %16)
  br label %301

58:                                               ; preds = %13
  %59 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 2)
  %60 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %61 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %10, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %62 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %9, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %63 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %11, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %64 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr readonly %0, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %65 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly @XXH3_kSecret, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %66 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %65, <vscale x 2 x i64> %64)
  %67 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %64, <vscale x 2 x i64> %6)
  %68 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %66)
  %69 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %66, <vscale x 2 x i64> splat (i64 32))
  %70 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %67, <vscale x 2 x i64> %69, <vscale x 2 x i64> %68)
  %71 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %60, <vscale x 2 x i64> %70)
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %73 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %72, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %74 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %75 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %74, <vscale x 2 x i64> %73)
  %76 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %73, <vscale x 2 x i64> %6)
  %77 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %75)
  %78 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %75, <vscale x 2 x i64> splat (i64 32))
  %79 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %76, <vscale x 2 x i64> %78, <vscale x 2 x i64> %77)
  %80 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %61, <vscale x 2 x i64> %79)
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %82 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %81, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %83 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 32), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %84 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %83, <vscale x 2 x i64> %82)
  %85 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %82, <vscale x 2 x i64> %6)
  %86 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %84)
  %87 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %84, <vscale x 2 x i64> splat (i64 32))
  %88 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %85, <vscale x 2 x i64> %87, <vscale x 2 x i64> %86)
  %89 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %62, <vscale x 2 x i64> %88)
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %91 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %90, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %92 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 48), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %93 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %92, <vscale x 2 x i64> %91)
  %94 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %91, <vscale x 2 x i64> %6)
  %95 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %93)
  %96 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %93, <vscale x 2 x i64> splat (i64 32))
  %97 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %94, <vscale x 2 x i64> %96, <vscale x 2 x i64> %95)
  %98 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %63, <vscale x 2 x i64> %97)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %71, ptr nonnull %2, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %80, ptr nonnull %10, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %89, ptr nonnull %9, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %98, ptr nonnull %11, i32 1, <vscale x 2 x i1> %59)
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %100, i32 0, i32 3, i32 1)
  %101 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %102 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %10, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %103 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %9, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %104 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %11, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %105 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %99, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %106 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %107 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %106, <vscale x 2 x i64> %105)
  %108 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %105, <vscale x 2 x i64> %6)
  %109 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %107)
  %110 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %107, <vscale x 2 x i64> splat (i64 32))
  %111 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %108, <vscale x 2 x i64> %110, <vscale x 2 x i64> %109)
  %112 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %101, <vscale x 2 x i64> %111)
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %114 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %113, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %115 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 24), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %116 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %115, <vscale x 2 x i64> %114)
  %117 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %114, <vscale x 2 x i64> %6)
  %118 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %116)
  %119 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %116, <vscale x 2 x i64> splat (i64 32))
  %120 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %117, <vscale x 2 x i64> %119, <vscale x 2 x i64> %118)
  %121 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %102, <vscale x 2 x i64> %120)
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %123 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %122, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %124 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 40), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %125 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %124, <vscale x 2 x i64> %123)
  %126 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %123, <vscale x 2 x i64> %6)
  %127 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %125)
  %128 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %125, <vscale x 2 x i64> splat (i64 32))
  %129 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %126, <vscale x 2 x i64> %128, <vscale x 2 x i64> %127)
  %130 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %103, <vscale x 2 x i64> %129)
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %132 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %131, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %133 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 56), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %134 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %133, <vscale x 2 x i64> %132)
  %135 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %132, <vscale x 2 x i64> %6)
  %136 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %134)
  %137 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %134, <vscale x 2 x i64> splat (i64 32))
  %138 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %135, <vscale x 2 x i64> %137, <vscale x 2 x i64> %136)
  %139 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %104, <vscale x 2 x i64> %138)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %112, ptr nonnull %2, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %121, ptr nonnull %10, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %130, ptr nonnull %9, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %139, ptr nonnull %11, i32 1, <vscale x 2 x i1> %59)
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %141, i32 0, i32 3, i32 1)
  %142 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %143 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %10, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %144 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %9, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %145 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %11, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %146 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %140, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %147 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %74, <vscale x 2 x i64> %146)
  %148 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %146, <vscale x 2 x i64> %6)
  %149 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %147)
  %150 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %147, <vscale x 2 x i64> splat (i64 32))
  %151 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %148, <vscale x 2 x i64> %150, <vscale x 2 x i64> %149)
  %152 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %142, <vscale x 2 x i64> %151)
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %154 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %153, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %155 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %83, <vscale x 2 x i64> %154)
  %156 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %154, <vscale x 2 x i64> %6)
  %157 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %155)
  %158 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %155, <vscale x 2 x i64> splat (i64 32))
  %159 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %156, <vscale x 2 x i64> %158, <vscale x 2 x i64> %157)
  %160 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %143, <vscale x 2 x i64> %159)
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %162 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %161, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %163 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %92, <vscale x 2 x i64> %162)
  %164 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %162, <vscale x 2 x i64> %6)
  %165 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %163)
  %166 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %163, <vscale x 2 x i64> splat (i64 32))
  %167 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %164, <vscale x 2 x i64> %166, <vscale x 2 x i64> %165)
  %168 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %144, <vscale x 2 x i64> %167)
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %170 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %169, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %171 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 64), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %172 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %171, <vscale x 2 x i64> %170)
  %173 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %170, <vscale x 2 x i64> %6)
  %174 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %172)
  %175 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %172, <vscale x 2 x i64> splat (i64 32))
  %176 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %173, <vscale x 2 x i64> %175, <vscale x 2 x i64> %174)
  %177 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %145, <vscale x 2 x i64> %176)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %152, ptr nonnull %2, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %160, ptr nonnull %10, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %168, ptr nonnull %9, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %177, ptr nonnull %11, i32 1, <vscale x 2 x i1> %59)
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %179 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %180 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %10, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %181 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %9, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %182 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %11, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %183 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %178, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %184 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %185 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %184, <vscale x 2 x i64> %183)
  %186 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %183, <vscale x 2 x i64> %6)
  %187 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %185)
  %188 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %185, <vscale x 2 x i64> splat (i64 32))
  %189 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %186, <vscale x 2 x i64> %188, <vscale x 2 x i64> %187)
  %190 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %179, <vscale x 2 x i64> %189)
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %192 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %191, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %193 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 137), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %194 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %193, <vscale x 2 x i64> %192)
  %195 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %192, <vscale x 2 x i64> %6)
  %196 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %194)
  %197 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %194, <vscale x 2 x i64> splat (i64 32))
  %198 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %195, <vscale x 2 x i64> %197, <vscale x 2 x i64> %196)
  %199 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %180, <vscale x 2 x i64> %198)
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %201 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %200, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %202 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 153), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %203 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %202, <vscale x 2 x i64> %201)
  %204 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %201, <vscale x 2 x i64> %6)
  %205 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %203)
  %206 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %203, <vscale x 2 x i64> splat (i64 32))
  %207 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %204, <vscale x 2 x i64> %206, <vscale x 2 x i64> %205)
  %208 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %181, <vscale x 2 x i64> %207)
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %210 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %209, i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %211 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 169), i32 1, <vscale x 2 x i1> %59, <vscale x 2 x i64> zeroinitializer)
  %212 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %211, <vscale x 2 x i64> %210)
  %213 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %210, <vscale x 2 x i64> %6)
  %214 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %59, <vscale x 2 x i64> %212)
  %215 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %212, <vscale x 2 x i64> splat (i64 32))
  %216 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %213, <vscale x 2 x i64> %215, <vscale x 2 x i64> %214)
  %217 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %59, <vscale x 2 x i64> %182, <vscale x 2 x i64> %216)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %190, ptr nonnull %2, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %199, ptr nonnull %10, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %208, ptr nonnull %9, i32 1, <vscale x 2 x i1> %59)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %217, ptr nonnull %11, i32 1, <vscale x 2 x i1> %59)
  br label %301

218:                                              ; preds = %13
  %219 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 4)
  %220 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %221 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %9, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %222 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr readonly %0, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %223 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly @XXH3_kSecret, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %224 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %223, <vscale x 2 x i64> %222)
  %225 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %222, <vscale x 2 x i64> %6)
  %226 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %219, <vscale x 2 x i64> %224)
  %227 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %224, <vscale x 2 x i64> splat (i64 32))
  %228 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %225, <vscale x 2 x i64> %227, <vscale x 2 x i64> %226)
  %229 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %220, <vscale x 2 x i64> %228)
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %231 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %230, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %232 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 32), i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %233 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %232, <vscale x 2 x i64> %231)
  %234 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %231, <vscale x 2 x i64> %6)
  %235 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %219, <vscale x 2 x i64> %233)
  %236 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %233, <vscale x 2 x i64> splat (i64 32))
  %237 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %234, <vscale x 2 x i64> %236, <vscale x 2 x i64> %235)
  %238 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %221, <vscale x 2 x i64> %237)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %229, ptr nonnull %2, i32 1, <vscale x 2 x i1> %219)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %238, ptr nonnull %9, i32 1, <vscale x 2 x i1> %219)
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %240, i32 0, i32 3, i32 1)
  %241 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %242 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %9, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %243 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %239, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %244 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %245 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %244, <vscale x 2 x i64> %243)
  %246 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %243, <vscale x 2 x i64> %6)
  %247 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %219, <vscale x 2 x i64> %245)
  %248 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %245, <vscale x 2 x i64> splat (i64 32))
  %249 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %246, <vscale x 2 x i64> %248, <vscale x 2 x i64> %247)
  %250 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %241, <vscale x 2 x i64> %249)
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %252 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %251, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %253 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 40), i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %254 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %253, <vscale x 2 x i64> %252)
  %255 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %252, <vscale x 2 x i64> %6)
  %256 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %219, <vscale x 2 x i64> %254)
  %257 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %254, <vscale x 2 x i64> splat (i64 32))
  %258 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %255, <vscale x 2 x i64> %257, <vscale x 2 x i64> %256)
  %259 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %242, <vscale x 2 x i64> %258)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %250, ptr nonnull %2, i32 1, <vscale x 2 x i1> %219)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %259, ptr nonnull %9, i32 1, <vscale x 2 x i1> %219)
  %260 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %261, i32 0, i32 3, i32 1)
  %262 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %263 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %9, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %264 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %260, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %265 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %266 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %265, <vscale x 2 x i64> %264)
  %267 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %264, <vscale x 2 x i64> %6)
  %268 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %219, <vscale x 2 x i64> %266)
  %269 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %266, <vscale x 2 x i64> splat (i64 32))
  %270 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %267, <vscale x 2 x i64> %269, <vscale x 2 x i64> %268)
  %271 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %262, <vscale x 2 x i64> %270)
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %273 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %272, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %274 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 48), i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %275 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %274, <vscale x 2 x i64> %273)
  %276 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %273, <vscale x 2 x i64> %6)
  %277 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %219, <vscale x 2 x i64> %275)
  %278 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %275, <vscale x 2 x i64> splat (i64 32))
  %279 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %276, <vscale x 2 x i64> %278, <vscale x 2 x i64> %277)
  %280 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %263, <vscale x 2 x i64> %279)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %271, ptr nonnull %2, i32 1, <vscale x 2 x i1> %219)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %280, ptr nonnull %9, i32 1, <vscale x 2 x i1> %219)
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %282 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %283 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %9, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %284 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %281, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %285 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %286 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %285, <vscale x 2 x i64> %284)
  %287 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %284, <vscale x 2 x i64> %6)
  %288 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %219, <vscale x 2 x i64> %286)
  %289 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %286, <vscale x 2 x i64> splat (i64 32))
  %290 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %287, <vscale x 2 x i64> %289, <vscale x 2 x i64> %288)
  %291 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %282, <vscale x 2 x i64> %290)
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %293 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %292, i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %294 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 153), i32 1, <vscale x 2 x i1> %219, <vscale x 2 x i64> zeroinitializer)
  %295 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %294, <vscale x 2 x i64> %293)
  %296 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %293, <vscale x 2 x i64> %6)
  %297 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %219, <vscale x 2 x i64> %295)
  %298 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %295, <vscale x 2 x i64> splat (i64 32))
  %299 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %296, <vscale x 2 x i64> %298, <vscale x 2 x i64> %297)
  %300 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %219, <vscale x 2 x i64> %283, <vscale x 2 x i64> %299)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %291, ptr nonnull %2, i32 1, <vscale x 2 x i1> %219)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %300, ptr nonnull %9, i32 1, <vscale x 2 x i1> %219)
  br label %301

301:                                              ; preds = %15, %58, %218
  %302 = load i64, ptr %2, align 64
  %303 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %304 = load i64, ptr %303, align 8
  %305 = xor i64 %302, 7914194659941938988
  %306 = xor i64 %304, -6611157965513653271
  %307 = zext i64 %305 to i128
  %308 = zext i64 %306 to i128
  %309 = mul nuw i128 %308, %307
  %310 = lshr i128 %309, 64
  %311 = xor i128 %310, %309
  %312 = trunc i128 %311 to i64
  %313 = add i64 %312, 3997421333012711168
  %314 = load i64, ptr %10, align 16
  %315 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %316 = load i64, ptr %315, align 8
  %317 = xor i64 %314, -1839215637059881052
  %318 = xor i64 %316, -3433288310154277810
  %319 = zext i64 %317 to i128
  %320 = zext i64 %318 to i128
  %321 = mul nuw i128 %320, %319
  %322 = lshr i128 %321, 64
  %323 = xor i128 %322, %321
  %324 = trunc i128 %323 to i64
  %325 = add i64 %313, %324
  %326 = load i64, ptr %9, align 32
  %327 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %328 = load i64, ptr %327, align 8
  %329 = xor i64 %326, 5046485836271438973
  %330 = xor i64 %328, -8055285457383852172
  %331 = zext i64 %329 to i128
  %332 = zext i64 %330 to i128
  %333 = mul nuw i128 %332, %331
  %334 = lshr i128 %333, 64
  %335 = xor i128 %334, %333
  %336 = trunc i128 %335 to i64
  %337 = add i64 %325, %336
  %338 = load i64, ptr %11, align 16
  %339 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %340 = load i64, ptr %339, align 8
  %341 = xor i64 %338, 5920048007935066598
  %342 = xor i64 %340, 7336514198459093435
  %343 = zext i64 %341 to i128
  %344 = zext i64 %342 to i128
  %345 = mul nuw i128 %344, %343
  %346 = lshr i128 %345, 64
  %347 = xor i128 %346, %345
  %348 = trunc i128 %347 to i64
  %349 = add i64 %337, %348
  %350 = lshr i64 %349, 37
  %351 = xor i64 %350, %349
  %352 = mul i64 %351, 1609587791953885689
  %353 = lshr i64 %352, 32
  %354 = xor i64 %353, %352
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  ret i64 %354
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64>, <vscale x 2 x i64>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64>, <vscale x 2 x i1>, <vscale x 2 x i64>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.vscale.i64() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr, i32 immarg, <vscale x 2 x i1>, <vscale x 2 x i64>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64>, ptr, i32 immarg, <vscale x 2 x i1>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(1,16) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+fullfp16,+neon,+sve,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_64bits_internal: argument 0"}
!8 = distinct !{!8, !"XXH3_64bits_internal"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"XXH3_hashLong_64b_default: argument 0"}
!11 = distinct !{!11, !"XXH3_hashLong_64b_default"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_hashLong_64b_internal: argument 0"}
!14 = distinct !{!14, !"XXH3_hashLong_64b_internal"}
!15 = !{!13, !10, !7}
!16 = !{!17}
!17 = distinct !{!17, !18, !"XXH3_hashLong_internal_loop: argument 0"}
!18 = distinct !{!18, !"XXH3_hashLong_internal_loop"}
!19 = !{!20}
!20 = distinct !{!20, !18, !"XXH3_hashLong_internal_loop: argument 1"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_accumulate_sve: argument 0"}
!23 = distinct !{!23, !"XXH3_accumulate_sve"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"XXH3_accumulate_sve: argument 1"}
!26 = !{!27}
!27 = distinct !{!27, !23, !"XXH3_accumulate_sve: argument 2"}
!28 = !{!22, !27}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_accumulate_512_sve: argument 0"}
!31 = distinct !{!31, !"XXH3_accumulate_512_sve"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"XXH3_accumulate_512_sve: argument 1"}
!34 = !{!35}
!35 = distinct !{!35, !31, !"XXH3_accumulate_512_sve: argument 2"}
!36 = !{!30, !22, !17}
!37 = !{!33, !35, !25, !27, !20, !13, !10, !7}
!38 = !{!33, !25, !20, !13, !10, !7}
!39 = !{!30, !35, !22, !27, !17}
!40 = !{!35, !27}
!41 = !{!30, !33, !22, !25, !17, !20, !13, !10, !7}
!42 = !{!43}
!43 = distinct !{!43, !31, !"XXH3_accumulate_512_sve: argument 0:It1"}
!44 = !{!45}
!45 = distinct !{!45, !31, !"XXH3_accumulate_512_sve: argument 1:It1"}
!46 = !{!47}
!47 = distinct !{!47, !31, !"XXH3_accumulate_512_sve: argument 2:It1"}
!48 = !{!43, !22, !17}
!49 = !{!45, !47, !25, !27, !20, !13, !10, !7}
!50 = !{!45, !25, !20, !13, !10, !7}
!51 = !{!43, !47, !22, !27, !17}
!52 = !{!47, !27}
!53 = !{!43, !45, !22, !25, !17, !20, !13, !10, !7}
!54 = !{!55}
!55 = distinct !{!55, !31, !"XXH3_accumulate_512_sve: argument 0:It2"}
!56 = !{!57}
!57 = distinct !{!57, !31, !"XXH3_accumulate_512_sve: argument 1:It2"}
!58 = !{!59}
!59 = distinct !{!59, !31, !"XXH3_accumulate_512_sve: argument 2:It2"}
!60 = !{!55, !22, !17}
!61 = !{!57, !59, !25, !27, !20, !13, !10, !7}
!62 = !{!57, !25, !20, !13, !10, !7}
!63 = !{!55, !59, !22, !27, !17}
!64 = !{!59, !27}
!65 = !{!55, !57, !22, !25, !17, !20, !13, !10, !7}
!66 = !{!67, !17}
!67 = distinct !{!67, !68, !"XXH3_accumulate_512_sve: argument 0"}
!68 = distinct !{!68, !"XXH3_accumulate_512_sve"}
!69 = !{!70, !71, !20, !13, !10, !7}
!70 = distinct !{!70, !68, !"XXH3_accumulate_512_sve: argument 1"}
!71 = distinct !{!71, !68, !"XXH3_accumulate_512_sve: argument 2"}
!72 = !{!70, !20, !13, !10, !7}
!73 = !{!67, !71, !17}
!74 = !{!71}
!75 = !{!67, !70, !17, !20, !13, !10, !7}
!76 = !{!77}
!77 = distinct !{!77, !31, !"XXH3_accumulate_512_sve: argument 0:It1"}
!78 = !{!79}
!79 = distinct !{!79, !31, !"XXH3_accumulate_512_sve: argument 1:It1"}
!80 = !{!81}
!81 = distinct !{!81, !31, !"XXH3_accumulate_512_sve: argument 2:It1"}
!82 = !{!77, !22, !17}
!83 = !{!79, !81, !25, !27, !20, !13, !10, !7}
!84 = !{!79, !25, !20, !13, !10, !7}
!85 = !{!77, !81, !22, !27, !17}
!86 = !{!81, !27}
!87 = !{!77, !79, !22, !25, !17, !20, !13, !10, !7}
!88 = !{!89}
!89 = distinct !{!89, !31, !"XXH3_accumulate_512_sve: argument 0:It2"}
!90 = !{!91}
!91 = distinct !{!91, !31, !"XXH3_accumulate_512_sve: argument 1:It2"}
!92 = !{!93}
!93 = distinct !{!93, !31, !"XXH3_accumulate_512_sve: argument 2:It2"}
!94 = !{!89, !22, !17}
!95 = !{!91, !93, !25, !27, !20, !13, !10, !7}
!96 = !{!91, !25, !20, !13, !10, !7}
!97 = !{!89, !93, !22, !27, !17}
!98 = !{!93, !27}
!99 = !{!89, !91, !22, !25, !17, !20, !13, !10, !7}
!100 = !{!101}
!101 = distinct !{!101, !31, !"XXH3_accumulate_512_sve: argument 0:It1"}
!102 = !{!103}
!103 = distinct !{!103, !31, !"XXH3_accumulate_512_sve: argument 1:It1"}
!104 = !{!105}
!105 = distinct !{!105, !31, !"XXH3_accumulate_512_sve: argument 2:It1"}
!106 = !{!101, !22, !17}
!107 = !{!103, !105, !25, !27, !20, !13, !10, !7}
!108 = !{!103, !25, !20, !13, !10, !7}
!109 = !{!101, !105, !22, !27, !17}
!110 = !{!105, !27}
!111 = !{!101, !103, !22, !25, !17, !20, !13, !10, !7}
!112 = !{!113}
!113 = distinct !{!113, !31, !"XXH3_accumulate_512_sve: argument 0:It2"}
!114 = !{!115}
!115 = distinct !{!115, !31, !"XXH3_accumulate_512_sve: argument 1:It2"}
!116 = !{!117}
!117 = distinct !{!117, !31, !"XXH3_accumulate_512_sve: argument 2:It2"}
!118 = !{!113, !22, !17}
!119 = !{!115, !117, !25, !27, !20, !13, !10, !7}
!120 = !{!115, !25, !20, !13, !10, !7}
!121 = !{!113, !117, !22, !27, !17}
!122 = !{!117, !27}
!123 = !{!113, !115, !22, !25, !17, !20, !13, !10, !7}
!124 = !{!67}
!125 = !{!70}
!126 = !{!127}
!127 = distinct !{!127, !128, !"XXH3_mergeAccs: argument 0"}
!128 = distinct !{!128, !"XXH3_mergeAccs"}
