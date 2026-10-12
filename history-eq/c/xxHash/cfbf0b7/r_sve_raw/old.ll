; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/cfbf0b7/wrap_sve.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/cfbf0b7/wrap_sve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable vscale_range(1,16)
define dso_local void @target_accsve_1stripe(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = alloca [8 x i64], align 64
  %27 = alloca [64 x i8], align 64
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
  store i64 %9, ptr %27, align 64
  %36 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %10, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 %11, ptr %37, align 16
  %38 = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i64 %12, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i64 %13, ptr %39, align 32
  %40 = getelementptr inbounds nuw i8, ptr %27, i64 40
  store i64 %14, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %27, i64 48
  store i64 %15, ptr %41, align 16
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
  %50 = getelementptr inbounds nuw i8, ptr %27, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %50, i32 0, i32 3, i32 1)
  %51 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %52 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 0, i64 1)
  %53 = select <vscale x 2 x i1> %51, <vscale x 2 x i64> %52, <vscale x 2 x i64> zeroinitializer
  %54 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %51, <vscale x 2 x i64> %53, <vscale x 2 x i64> splat (i64 1))
  %55 = tail call i64 @llvm.vscale.i64()
  %56 = icmp samesign ugt i64 %55, 3
  br i1 %56, label %57, label %68

57:                                               ; preds = %25
  %58 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 8)
  %59 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %26, i32 1, <vscale x 2 x i1> %58, <vscale x 2 x i64> zeroinitializer)
  %60 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %27, i32 1, <vscale x 2 x i1> %58, <vscale x 2 x i64> zeroinitializer)
  %61 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %28, i32 1, <vscale x 2 x i1> %58, <vscale x 2 x i64> zeroinitializer)
  %62 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %58, <vscale x 2 x i64> %61, <vscale x 2 x i64> %60)
  %63 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %60, <vscale x 2 x i64> %54)
  %64 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %58, <vscale x 2 x i64> %62)
  %65 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %58, <vscale x 2 x i64> %62, <vscale x 2 x i64> splat (i64 32))
  %66 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %58, <vscale x 2 x i64> %63, <vscale x 2 x i64> %65, <vscale x 2 x i64> %64)
  %67 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %58, <vscale x 2 x i64> %59, <vscale x 2 x i64> %66)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %67, ptr nonnull %26, i32 1, <vscale x 2 x i1> %58)
  br label %128

68:                                               ; preds = %25
  %69 = icmp eq i64 %55, 1
  br i1 %69, label %70, label %108

70:                                               ; preds = %68
  %71 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 2)
  %72 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %26, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %73 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %30, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %74 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %32, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %75 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %34, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %76 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %27, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %77 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %28, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %78 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %77, <vscale x 2 x i64> %76)
  %79 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %76, <vscale x 2 x i64> %54)
  %80 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %71, <vscale x 2 x i64> %78)
  %81 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %78, <vscale x 2 x i64> splat (i64 32))
  %82 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %79, <vscale x 2 x i64> %81, <vscale x 2 x i64> %80)
  %83 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %72, <vscale x 2 x i64> %82)
  %84 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %37, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %85 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %44, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %86 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %85, <vscale x 2 x i64> %84)
  %87 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %84, <vscale x 2 x i64> %54)
  %88 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %71, <vscale x 2 x i64> %86)
  %89 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %86, <vscale x 2 x i64> splat (i64 32))
  %90 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %87, <vscale x 2 x i64> %89, <vscale x 2 x i64> %88)
  %91 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %73, <vscale x 2 x i64> %90)
  %92 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %39, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %93 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %46, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %94 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %93, <vscale x 2 x i64> %92)
  %95 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %92, <vscale x 2 x i64> %54)
  %96 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %71, <vscale x 2 x i64> %94)
  %97 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %94, <vscale x 2 x i64> splat (i64 32))
  %98 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %95, <vscale x 2 x i64> %97, <vscale x 2 x i64> %96)
  %99 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %74, <vscale x 2 x i64> %98)
  %100 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %41, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %101 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %48, i32 1, <vscale x 2 x i1> %71, <vscale x 2 x i64> zeroinitializer)
  %102 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %101, <vscale x 2 x i64> %100)
  %103 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %100, <vscale x 2 x i64> %54)
  %104 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %71, <vscale x 2 x i64> %102)
  %105 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %102, <vscale x 2 x i64> splat (i64 32))
  %106 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %103, <vscale x 2 x i64> %105, <vscale x 2 x i64> %104)
  %107 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %75, <vscale x 2 x i64> %106)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %83, ptr nonnull %26, i32 1, <vscale x 2 x i1> %71)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %91, ptr nonnull %30, i32 1, <vscale x 2 x i1> %71)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %99, ptr nonnull %32, i32 1, <vscale x 2 x i1> %71)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %107, ptr nonnull %34, i32 1, <vscale x 2 x i1> %71)
  br label %128

108:                                              ; preds = %68
  %109 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 4)
  %110 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %26, i32 1, <vscale x 2 x i1> %109, <vscale x 2 x i64> zeroinitializer)
  %111 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull %32, i32 1, <vscale x 2 x i1> %109, <vscale x 2 x i64> zeroinitializer)
  %112 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %27, i32 1, <vscale x 2 x i1> %109, <vscale x 2 x i64> zeroinitializer)
  %113 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %28, i32 1, <vscale x 2 x i1> %109, <vscale x 2 x i64> zeroinitializer)
  %114 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %109, <vscale x 2 x i64> %113, <vscale x 2 x i64> %112)
  %115 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %112, <vscale x 2 x i64> %54)
  %116 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %109, <vscale x 2 x i64> %114)
  %117 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %109, <vscale x 2 x i64> %114, <vscale x 2 x i64> splat (i64 32))
  %118 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %109, <vscale x 2 x i64> %115, <vscale x 2 x i64> %117, <vscale x 2 x i64> %116)
  %119 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %109, <vscale x 2 x i64> %110, <vscale x 2 x i64> %118)
  %120 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %39, i32 1, <vscale x 2 x i1> %109, <vscale x 2 x i64> zeroinitializer)
  %121 = call <vscale x 2 x i64> @llvm.masked.load.nxv2i64.p0(ptr nonnull readonly %46, i32 1, <vscale x 2 x i1> %109, <vscale x 2 x i64> zeroinitializer)
  %122 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1> %109, <vscale x 2 x i64> %121, <vscale x 2 x i64> %120)
  %123 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64> %120, <vscale x 2 x i64> %54)
  %124 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64> undef, <vscale x 2 x i1> %109, <vscale x 2 x i64> %122)
  %125 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %109, <vscale x 2 x i64> %122, <vscale x 2 x i64> splat (i64 32))
  %126 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1> %109, <vscale x 2 x i64> %123, <vscale x 2 x i64> %125, <vscale x 2 x i64> %124)
  %127 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %109, <vscale x 2 x i64> %111, <vscale x 2 x i64> %126)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %119, ptr nonnull %26, i32 1, <vscale x 2 x i1> %109)
  call void @llvm.masked.store.nxv2i64.p0(<vscale x 2 x i64> %127, ptr nonnull %32, i32 1, <vscale x 2 x i1> %109)
  br label %128

128:                                              ; preds = %57, %70, %108
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.eor.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.tbl.nxv2i64(<vscale x 2 x i64>, <vscale x 2 x i64>) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.uxtw.nxv2i64(<vscale x 2 x i64>, <vscale x 2 x i1>, <vscale x 2 x i64>) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.mla.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>, <vscale x 2 x i64>) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #4

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
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
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
!7 = distinct !{!7, !8, !"XXH3_accumulate_sve: argument 0"}
!8 = distinct !{!8, !"XXH3_accumulate_sve"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"XXH3_accumulate_sve: argument 1"}
!11 = !{!12}
!12 = distinct !{!12, !8, !"XXH3_accumulate_sve: argument 2"}
!13 = !{!7, !12}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_accumulate_512_sve: argument 0"}
!16 = distinct !{!16, !"XXH3_accumulate_512_sve"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"XXH3_accumulate_512_sve: argument 1"}
!19 = !{!20}
!20 = distinct !{!20, !16, !"XXH3_accumulate_512_sve: argument 2"}
!21 = !{!15, !7}
!22 = !{!18, !20, !10, !12}
!23 = !{!18, !10}
!24 = !{!15, !20, !7, !12}
!25 = !{!20, !12}
!26 = !{!15, !18, !7, !10}
