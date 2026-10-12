; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5d3ed49/wrap_api256.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5d3ed49/wrap_api256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(1,16)
define dso_local i64 @target_xxh3_len256(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i64], align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %2, ptr noundef nonnull align 64 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  %3 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %4 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 0, i64 1)
  %5 = select <vscale x 2 x i1> %3, <vscale x 2 x i64> %4, <vscale x 2 x i64> zeroinitializer
  %6 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %3, <vscale x 2 x i64> %5, <vscale x 2 x i64> splat (i64 1))
  %7 = tail call i64 @llvm.vscale.i64()
  %8 = icmp samesign ugt i64 %7, 3
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = icmp eq i64 %7, 1
  br i1 %10, label %53, label %209

11:                                               ; preds = %1
  %12 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 8)
  %13 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %12, <vscale x 2 x i64> zeroinitializer)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.aarch64.sve.prf.nxv2i1(<vscale x 2 x i1> %12, ptr nonnull %14, i32 1)
  %15 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr %0, i32 1, <vscale x 2 x i1> %12, <vscale x 2 x i64> zeroinitializer)
  %16 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull @XXH3_kSecret, i32 1, <vscale x 2 x i1> %12, <vscale x 2 x i64> zeroinitializer)
  %17 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %16, <vscale x 2 x i64> %15)
  %18 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %15, <vscale x 2 x i64> %6)
  %19 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %12, <vscale x 2 x i64> %17)
  %20 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %17, <vscale x 2 x i64> splat (i64 32))
  %21 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %18, <vscale x 2 x i64> %20, <vscale x 2 x i64> %19)
  %22 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %13, <vscale x 2 x i64> %21)
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 1088
  tail call void @llvm.aarch64.sve.prf.nxv2i1(<vscale x 2 x i1> %12, ptr nonnull %24, i32 1)
  %25 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %23, i32 1, <vscale x 2 x i1> %12, <vscale x 2 x i64> zeroinitializer)
  %26 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), i32 1, <vscale x 2 x i1> %12, <vscale x 2 x i64> zeroinitializer)
  %27 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %26, <vscale x 2 x i64> %25)
  %28 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %25, <vscale x 2 x i64> %6)
  %29 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %12, <vscale x 2 x i64> %27)
  %30 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %27, <vscale x 2 x i64> splat (i64 32))
  %31 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %28, <vscale x 2 x i64> %30, <vscale x 2 x i64> %29)
  %32 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %22, <vscale x 2 x i64> %31)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 1152
  tail call void @llvm.aarch64.sve.prf.nxv2i1(<vscale x 2 x i1> %12, ptr nonnull %34, i32 1)
  %35 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %33, i32 1, <vscale x 2 x i1> %12, <vscale x 2 x i64> zeroinitializer)
  %36 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), i32 1, <vscale x 2 x i1> %12, <vscale x 2 x i64> zeroinitializer)
  %37 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %36, <vscale x 2 x i64> %35)
  %38 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %35, <vscale x 2 x i64> %6)
  %39 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %12, <vscale x 2 x i64> %37)
  %40 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %37, <vscale x 2 x i64> splat (i64 32))
  %41 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %38, <vscale x 2 x i64> %40, <vscale x 2 x i64> %39)
  %42 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %32, <vscale x 2 x i64> %41)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %42, ptr nonnull %2, i32 1, <vscale x 2 x i1> %12)
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %44 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %12, <vscale x 2 x i64> zeroinitializer)
  %45 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %43, i32 1, <vscale x 2 x i1> %12, <vscale x 2 x i64> zeroinitializer)
  %46 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i32 1, <vscale x 2 x i1> %12, <vscale x 2 x i64> zeroinitializer)
  %47 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %46, <vscale x 2 x i64> %45)
  %48 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %45, <vscale x 2 x i64> %6)
  %49 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %12, <vscale x 2 x i64> %47)
  %50 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %47, <vscale x 2 x i64> splat (i64 32))
  %51 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %48, <vscale x 2 x i64> %50, <vscale x 2 x i64> %49)
  %52 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %12, <vscale x 2 x i64> %44, <vscale x 2 x i64> %51)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %52, ptr nonnull %2, i32 1, <vscale x 2 x i1> %12)
  br label %290

53:                                               ; preds = %9
  %54 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 2)
  %55 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %57 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %56, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %59 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %58, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %61 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %60, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.aarch64.sve.prf.nxv2i1(<vscale x 2 x i1> %54, ptr nonnull %62, i32 1)
  %63 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr %0, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %64 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull @XXH3_kSecret, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %65 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %64, <vscale x 2 x i64> %63)
  %66 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %63, <vscale x 2 x i64> %6)
  %67 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %65)
  %68 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %65, <vscale x 2 x i64> splat (i64 32))
  %69 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %66, <vscale x 2 x i64> %68, <vscale x 2 x i64> %67)
  %70 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %55, <vscale x 2 x i64> %69)
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %72 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %71, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %73 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %74 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %73, <vscale x 2 x i64> %72)
  %75 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %72, <vscale x 2 x i64> %6)
  %76 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %74)
  %77 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %74, <vscale x 2 x i64> splat (i64 32))
  %78 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %75, <vscale x 2 x i64> %77, <vscale x 2 x i64> %76)
  %79 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %57, <vscale x 2 x i64> %78)
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %81 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %80, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %82 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 32), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %83 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %82, <vscale x 2 x i64> %81)
  %84 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %81, <vscale x 2 x i64> %6)
  %85 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %83)
  %86 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %83, <vscale x 2 x i64> splat (i64 32))
  %87 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %84, <vscale x 2 x i64> %86, <vscale x 2 x i64> %85)
  %88 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %59, <vscale x 2 x i64> %87)
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %90 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %89, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %91 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 48), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %92 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %91, <vscale x 2 x i64> %90)
  %93 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %90, <vscale x 2 x i64> %6)
  %94 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %92)
  %95 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %92, <vscale x 2 x i64> splat (i64 32))
  %96 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %93, <vscale x 2 x i64> %95, <vscale x 2 x i64> %94)
  %97 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %61, <vscale x 2 x i64> %96)
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 1088
  tail call void @llvm.aarch64.sve.prf.nxv2i1(<vscale x 2 x i1> %54, ptr nonnull %99, i32 1)
  %100 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %98, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %101 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %102 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %101, <vscale x 2 x i64> %100)
  %103 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %100, <vscale x 2 x i64> %6)
  %104 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %102)
  %105 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %102, <vscale x 2 x i64> splat (i64 32))
  %106 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %103, <vscale x 2 x i64> %105, <vscale x 2 x i64> %104)
  %107 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %70, <vscale x 2 x i64> %106)
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %109 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %108, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %110 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 24), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %111 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %110, <vscale x 2 x i64> %109)
  %112 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %109, <vscale x 2 x i64> %6)
  %113 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %111)
  %114 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %111, <vscale x 2 x i64> splat (i64 32))
  %115 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %112, <vscale x 2 x i64> %114, <vscale x 2 x i64> %113)
  %116 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %79, <vscale x 2 x i64> %115)
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %118 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %117, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %119 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 40), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %120 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %119, <vscale x 2 x i64> %118)
  %121 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %118, <vscale x 2 x i64> %6)
  %122 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %120)
  %123 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %120, <vscale x 2 x i64> splat (i64 32))
  %124 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %121, <vscale x 2 x i64> %123, <vscale x 2 x i64> %122)
  %125 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %88, <vscale x 2 x i64> %124)
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %127 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %126, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %128 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 56), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %129 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %128, <vscale x 2 x i64> %127)
  %130 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %127, <vscale x 2 x i64> %6)
  %131 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %129)
  %132 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %129, <vscale x 2 x i64> splat (i64 32))
  %133 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %130, <vscale x 2 x i64> %132, <vscale x 2 x i64> %131)
  %134 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %97, <vscale x 2 x i64> %133)
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 1152
  tail call void @llvm.aarch64.sve.prf.nxv2i1(<vscale x 2 x i1> %54, ptr nonnull %136, i32 1)
  %137 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %135, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %138 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %73, <vscale x 2 x i64> %137)
  %139 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %137, <vscale x 2 x i64> %6)
  %140 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %138)
  %141 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %138, <vscale x 2 x i64> splat (i64 32))
  %142 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %139, <vscale x 2 x i64> %141, <vscale x 2 x i64> %140)
  %143 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %107, <vscale x 2 x i64> %142)
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %145 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %144, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %146 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %82, <vscale x 2 x i64> %145)
  %147 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %145, <vscale x 2 x i64> %6)
  %148 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %146)
  %149 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %146, <vscale x 2 x i64> splat (i64 32))
  %150 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %147, <vscale x 2 x i64> %149, <vscale x 2 x i64> %148)
  %151 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %116, <vscale x 2 x i64> %150)
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %153 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %152, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %154 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %91, <vscale x 2 x i64> %153)
  %155 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %153, <vscale x 2 x i64> %6)
  %156 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %154)
  %157 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %154, <vscale x 2 x i64> splat (i64 32))
  %158 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %155, <vscale x 2 x i64> %157, <vscale x 2 x i64> %156)
  %159 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %125, <vscale x 2 x i64> %158)
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %161 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %160, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %162 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 64), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %163 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %162, <vscale x 2 x i64> %161)
  %164 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %161, <vscale x 2 x i64> %6)
  %165 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %163)
  %166 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %163, <vscale x 2 x i64> splat (i64 32))
  %167 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %164, <vscale x 2 x i64> %166, <vscale x 2 x i64> %165)
  %168 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %134, <vscale x 2 x i64> %167)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %143, ptr nonnull %2, i32 1, <vscale x 2 x i1> %54)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %151, ptr nonnull %56, i32 1, <vscale x 2 x i1> %54)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %159, ptr nonnull %58, i32 1, <vscale x 2 x i1> %54)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %168, ptr nonnull %60, i32 1, <vscale x 2 x i1> %54)
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %170 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %171 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %56, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %172 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %58, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %173 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %60, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %174 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %169, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %175 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %176 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %175, <vscale x 2 x i64> %174)
  %177 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %174, <vscale x 2 x i64> %6)
  %178 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %176)
  %179 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %176, <vscale x 2 x i64> splat (i64 32))
  %180 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %177, <vscale x 2 x i64> %179, <vscale x 2 x i64> %178)
  %181 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %170, <vscale x 2 x i64> %180)
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %183 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %182, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %184 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 137), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %185 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %184, <vscale x 2 x i64> %183)
  %186 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %183, <vscale x 2 x i64> %6)
  %187 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %185)
  %188 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %185, <vscale x 2 x i64> splat (i64 32))
  %189 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %186, <vscale x 2 x i64> %188, <vscale x 2 x i64> %187)
  %190 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %171, <vscale x 2 x i64> %189)
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %192 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %191, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %193 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 153), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %194 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %193, <vscale x 2 x i64> %192)
  %195 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %192, <vscale x 2 x i64> %6)
  %196 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %194)
  %197 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %194, <vscale x 2 x i64> splat (i64 32))
  %198 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %195, <vscale x 2 x i64> %197, <vscale x 2 x i64> %196)
  %199 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %172, <vscale x 2 x i64> %198)
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %201 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %200, i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %202 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 169), i32 1, <vscale x 2 x i1> %54, <vscale x 2 x i64> zeroinitializer)
  %203 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %202, <vscale x 2 x i64> %201)
  %204 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %201, <vscale x 2 x i64> %6)
  %205 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %54, <vscale x 2 x i64> %203)
  %206 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %203, <vscale x 2 x i64> splat (i64 32))
  %207 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %204, <vscale x 2 x i64> %206, <vscale x 2 x i64> %205)
  %208 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %54, <vscale x 2 x i64> %173, <vscale x 2 x i64> %207)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %181, ptr nonnull %2, i32 1, <vscale x 2 x i1> %54)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %190, ptr nonnull %56, i32 1, <vscale x 2 x i1> %54)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %199, ptr nonnull %58, i32 1, <vscale x 2 x i1> %54)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %208, ptr nonnull %60, i32 1, <vscale x 2 x i1> %54)
  br label %290

209:                                              ; preds = %9
  %210 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 4)
  %211 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %212 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %213 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %212, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.aarch64.sve.prf.nxv2i1(<vscale x 2 x i1> %210, ptr nonnull %214, i32 1)
  %215 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr %0, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %216 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull @XXH3_kSecret, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %217 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %216, <vscale x 2 x i64> %215)
  %218 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %215, <vscale x 2 x i64> %6)
  %219 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %210, <vscale x 2 x i64> %217)
  %220 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %217, <vscale x 2 x i64> splat (i64 32))
  %221 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %218, <vscale x 2 x i64> %220, <vscale x 2 x i64> %219)
  %222 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %211, <vscale x 2 x i64> %221)
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %224 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %223, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %225 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 32), i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %226 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %225, <vscale x 2 x i64> %224)
  %227 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %224, <vscale x 2 x i64> %6)
  %228 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %210, <vscale x 2 x i64> %226)
  %229 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %226, <vscale x 2 x i64> splat (i64 32))
  %230 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %227, <vscale x 2 x i64> %229, <vscale x 2 x i64> %228)
  %231 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %213, <vscale x 2 x i64> %230)
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 1088
  tail call void @llvm.aarch64.sve.prf.nxv2i1(<vscale x 2 x i1> %210, ptr nonnull %233, i32 1)
  %234 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %232, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %235 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 8), i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %236 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %235, <vscale x 2 x i64> %234)
  %237 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %234, <vscale x 2 x i64> %6)
  %238 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %210, <vscale x 2 x i64> %236)
  %239 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %236, <vscale x 2 x i64> splat (i64 32))
  %240 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %237, <vscale x 2 x i64> %239, <vscale x 2 x i64> %238)
  %241 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %222, <vscale x 2 x i64> %240)
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %243 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %242, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %244 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 40), i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %245 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %244, <vscale x 2 x i64> %243)
  %246 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %243, <vscale x 2 x i64> %6)
  %247 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %210, <vscale x 2 x i64> %245)
  %248 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %245, <vscale x 2 x i64> splat (i64 32))
  %249 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %246, <vscale x 2 x i64> %248, <vscale x 2 x i64> %247)
  %250 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %231, <vscale x 2 x i64> %249)
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 1152
  tail call void @llvm.aarch64.sve.prf.nxv2i1(<vscale x 2 x i1> %210, ptr nonnull %252, i32 1)
  %253 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %251, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %254 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 16), i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %255 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %254, <vscale x 2 x i64> %253)
  %256 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %253, <vscale x 2 x i64> %6)
  %257 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %210, <vscale x 2 x i64> %255)
  %258 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %255, <vscale x 2 x i64> splat (i64 32))
  %259 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %256, <vscale x 2 x i64> %258, <vscale x 2 x i64> %257)
  %260 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %241, <vscale x 2 x i64> %259)
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %262 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %261, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %263 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 48), i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %264 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %263, <vscale x 2 x i64> %262)
  %265 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %262, <vscale x 2 x i64> %6)
  %266 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %210, <vscale x 2 x i64> %264)
  %267 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %264, <vscale x 2 x i64> splat (i64 32))
  %268 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %265, <vscale x 2 x i64> %267, <vscale x 2 x i64> %266)
  %269 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %250, <vscale x 2 x i64> %268)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %260, ptr nonnull %2, i32 1, <vscale x 2 x i1> %210)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %269, ptr nonnull %212, i32 1, <vscale x 2 x i1> %210)
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %271 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %2, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %272 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %212, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %273 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %270, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %274 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %275 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %274, <vscale x 2 x i64> %273)
  %276 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %273, <vscale x 2 x i64> %6)
  %277 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %210, <vscale x 2 x i64> %275)
  %278 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %275, <vscale x 2 x i64> splat (i64 32))
  %279 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %276, <vscale x 2 x i64> %278, <vscale x 2 x i64> %277)
  %280 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %271, <vscale x 2 x i64> %279)
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %282 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %281, i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %283 = tail call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 153), i32 1, <vscale x 2 x i1> %210, <vscale x 2 x i64> zeroinitializer)
  %284 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %283, <vscale x 2 x i64> %282)
  %285 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %282, <vscale x 2 x i64> %6)
  %286 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %210, <vscale x 2 x i64> %284)
  %287 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %284, <vscale x 2 x i64> splat (i64 32))
  %288 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %285, <vscale x 2 x i64> %287, <vscale x 2 x i64> %286)
  %289 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %210, <vscale x 2 x i64> %272, <vscale x 2 x i64> %288)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %280, ptr nonnull %2, i32 1, <vscale x 2 x i1> %210)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %289, ptr nonnull %212, i32 1, <vscale x 2 x i1> %210)
  br label %290

290:                                              ; preds = %11, %53, %209
  %291 = load i64, ptr %2, align 64
  %292 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %293 = load i64, ptr %292, align 8
  %294 = xor i64 %291, 7914194659941938988
  %295 = xor i64 %293, -6611157965513653271
  %296 = zext i64 %294 to i128
  %297 = zext i64 %295 to i128
  %298 = mul nuw i128 %297, %296
  %299 = lshr i128 %298, 64
  %300 = xor i128 %299, %298
  %301 = trunc i128 %300 to i64
  %302 = add i64 %301, 3997421333012711168
  %303 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %304 = load i64, ptr %303, align 16
  %305 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %306 = load i64, ptr %305, align 8
  %307 = xor i64 %304, -1839215637059881052
  %308 = xor i64 %306, -3433288310154277810
  %309 = zext i64 %307 to i128
  %310 = zext i64 %308 to i128
  %311 = mul nuw i128 %310, %309
  %312 = lshr i128 %311, 64
  %313 = xor i128 %312, %311
  %314 = trunc i128 %313 to i64
  %315 = add i64 %302, %314
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %317 = load i64, ptr %316, align 32
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %319 = load i64, ptr %318, align 8
  %320 = xor i64 %317, 5046485836271438973
  %321 = xor i64 %319, -8055285457383852172
  %322 = zext i64 %320 to i128
  %323 = zext i64 %321 to i128
  %324 = mul nuw i128 %323, %322
  %325 = lshr i128 %324, 64
  %326 = xor i128 %325, %324
  %327 = trunc i128 %326 to i64
  %328 = add i64 %315, %327
  %329 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %330 = load i64, ptr %329, align 16
  %331 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %332 = load i64, ptr %331, align 8
  %333 = xor i64 %330, 5920048007935066598
  %334 = xor i64 %332, 7336514198459093435
  %335 = zext i64 %333 to i128
  %336 = zext i64 %334 to i128
  %337 = mul nuw i128 %336, %335
  %338 = lshr i128 %337, 64
  %339 = xor i128 %338, %337
  %340 = trunc i128 %339 to i64
  %341 = add i64 %328, %340
  %342 = lshr i64 %341, 37
  %343 = xor i64 %342, %341
  %344 = mul i64 %343, 1609587791953885689
  %345 = lshr i64 %344, 32
  %346 = xor i64 %345, %344
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #8
  ret i64 %346
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.aarch64.sve.prf.nxv2i1(<vscale x 2 x i1>, ptr, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.vscale.i64() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr, i32 immarg, <vscale x 2 x i1>, <vscale x 2 x i64>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64>, ptr, i32 immarg, <vscale x 2 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(1,16) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+fullfp16,+neon,+sve,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }

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
!28 = !{!22, !17}
!29 = !{!25, !27, !20, !13, !10, !7}
!30 = !{!25, !20, !13, !10, !7}
!31 = !{!22, !27, !17}
!32 = !{!22, !25, !17, !20, !13, !10, !7}
!33 = !{!34, !17}
!34 = distinct !{!34, !35, !"XXH3_accumulate_512_sve: argument 0"}
!35 = distinct !{!35, !"XXH3_accumulate_512_sve"}
!36 = !{!37, !20, !13, !10, !7}
!37 = distinct !{!37, !35, !"XXH3_accumulate_512_sve: argument 1"}
!38 = !{!34, !37, !17, !20, !13, !10, !7}
!39 = !{!34}
!40 = !{!37}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"XXH3_mergeAccs: argument 0"}
!43 = distinct !{!43, !"XXH3_mergeAccs"}
!44 = distinct !{!44, !45, !"XXH3_finalizeLong_64b: argument 0"}
!45 = distinct !{!45, !"XXH3_finalizeLong_64b"}
