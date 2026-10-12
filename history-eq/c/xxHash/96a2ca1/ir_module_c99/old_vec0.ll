; ModuleID = 'old/xxhash.c'
source_filename = "old/xxhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH128_hash_t = type { i64, i64 }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 801
}

; Function Attrs: nounwind uwtable
define dso_local i32 @XXH32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %5, label %56

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds i8, ptr %8, i64 -15
  %10 = add i32 %2, 606290984
  %11 = add i32 %2, -2048144777
  %12 = add i32 %2, 1640531535
  br label %13

13:                                               ; preds = %13, %5
  %14 = phi ptr [ %0, %5 ], [ %46, %13 ]
  %15 = phi i32 [ %10, %5 ], [ %24, %13 ]
  %16 = phi i32 [ %11, %5 ], [ %31, %13 ]
  %17 = phi i32 [ %2, %5 ], [ %38, %13 ]
  %18 = phi i32 [ %12, %5 ], [ %45, %13 ]
  %19 = load i32, ptr %14, align 1
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %15
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %23) #27, !srcloc !5
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %26 = load i32, ptr %25, align 1
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %16
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %30) #27, !srcloc !5
  %32 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %33 = load i32, ptr %32, align 1
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %17
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %37) #27, !srcloc !5
  %39 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %40 = load i32, ptr %39, align 1
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %18
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %44) #27, !srcloc !5
  %46 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %47 = icmp ult ptr %46, %9
  br i1 %47, label %13, label %48

48:                                               ; preds = %13
  %49 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 1)
  %50 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 7)
  %51 = add i32 %50, %49
  %52 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 12)
  %53 = add i32 %51, %52
  %54 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 18)
  %55 = add i32 %53, %54
  br label %58

56:                                               ; preds = %3
  %57 = add i32 %2, 374761393
  br label %58

58:                                               ; preds = %48, %56
  %59 = phi i32 [ %55, %48 ], [ %57, %56 ]
  %60 = phi ptr [ %46, %48 ], [ %0, %56 ]
  %61 = trunc i64 %1 to i32
  %62 = add i32 %59, %61
  %63 = and i64 %1, 15
  %64 = tail call fastcc i32 @XXH32_finalize(i32 noundef %62, ptr noundef %60, i64 noundef %63)
  ret i32 %64
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #28
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr nocapture noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #27
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH32_copyState(ptr nocapture noundef writeonly initializes((0, 48)) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_reset(ptr nocapture noundef writeonly initializes((0, 44)) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  store i64 0, ptr %0, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %5, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i64 20, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @XXH32_update(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %133, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = trunc i64 %2 to i32
  %8 = load i32, ptr %0, align 4
  %9 = add i32 %8, %7
  store i32 %9, ptr %0, align 4
  %10 = icmp ugt i64 %2, 15
  %11 = icmp ugt i32 %9, 15
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 %2, %19
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %25 = load i32, ptr %17, align 4
  %26 = add i32 %25, %7
  br label %131

27:                                               ; preds = %5
  %28 = icmp eq i32 %18, 0
  br i1 %28, label %73, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 %19
  %32 = sub i32 16, %18
  %33 = zext i32 %32 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr nonnull readonly align 1 %1, i64 %33, i1 false)
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %30, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %35
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %40) #27, !srcloc !5
  store i32 %41, ptr %34, align 4
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 1
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %49) #27, !srcloc !5
  store i32 %50, ptr %43, align 4
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %51, align 1
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %53
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %58) #27, !srcloc !5
  store i32 %59, ptr %52, align 4
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %60, align 1
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %67) #27, !srcloc !5
  store i32 %68, ptr %61, align 4
  %69 = load i32, ptr %17, align 4
  %70 = sub i32 16, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 %71
  store i32 0, ptr %17, align 4
  br label %73

73:                                               ; preds = %29, %27
  %74 = phi ptr [ %72, %29 ], [ %1, %27 ]
  %75 = getelementptr inbounds i8, ptr %6, i64 -16
  %76 = icmp ugt ptr %74, %75
  br i1 %76, label %122, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %85 = load i32, ptr %84, align 4
  br label %86

86:                                               ; preds = %86, %77
  %87 = phi ptr [ %74, %77 ], [ %119, %86 ]
  %88 = phi i32 [ %79, %77 ], [ %97, %86 ]
  %89 = phi i32 [ %81, %77 ], [ %104, %86 ]
  %90 = phi i32 [ %83, %77 ], [ %111, %86 ]
  %91 = phi i32 [ %85, %77 ], [ %118, %86 ]
  %92 = load i32, ptr %87, align 1
  %93 = mul i32 %92, -2048144777
  %94 = add i32 %93, %88
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 13)
  %96 = mul i32 %95, -1640531535
  %97 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %96) #27, !srcloc !5
  %98 = getelementptr inbounds nuw i8, ptr %87, i64 4
  %99 = load i32, ptr %98, align 1
  %100 = mul i32 %99, -2048144777
  %101 = add i32 %100, %89
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %103) #27, !srcloc !5
  %105 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %106 = load i32, ptr %105, align 1
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %90
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %110) #27, !srcloc !5
  %112 = getelementptr inbounds nuw i8, ptr %87, i64 12
  %113 = load i32, ptr %112, align 1
  %114 = mul i32 %113, -2048144777
  %115 = add i32 %114, %91
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = mul i32 %116, -1640531535
  %118 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %117) #27, !srcloc !5
  %119 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %120 = icmp ugt ptr %119, %75
  br i1 %120, label %121, label %86

121:                                              ; preds = %86
  store i32 %97, ptr %78, align 4
  store i32 %104, ptr %80, align 4
  store i32 %111, ptr %82, align 4
  store i32 %118, ptr %84, align 4
  br label %122

122:                                              ; preds = %121, %73
  %123 = phi ptr [ %119, %121 ], [ %74, %73 ]
  %124 = icmp ult ptr %123, %6
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %127 = ptrtoint ptr %6 to i64
  %128 = ptrtoint ptr %123 to i64
  %129 = sub i64 %127, %128
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %126, ptr nonnull readonly align 1 %123, i64 %129, i1 false)
  %130 = trunc i64 %129 to i32
  br label %131

131:                                              ; preds = %125, %22
  %132 = phi i32 [ %26, %22 ], [ %130, %125 ]
  store i32 %132, ptr %17, align 4
  br label %133

133:                                              ; preds = %131, %122, %3
  %134 = phi i32 [ 1, %3 ], [ 0, %122 ], [ 0, %131 ]
  ret i32 %134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XXH32_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 1)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 7)
  %12 = add i32 %11, %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 12)
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 18)
  %20 = add i32 %16, %19
  br label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 374761393
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i32 [ %20, %5 ], [ %24, %21 ]
  %27 = load i32, ptr %0, align 4
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %28, ptr noundef nonnull %29, i64 noundef %32)
  ret i32 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @XXH32_finalize(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #9 {
  %4 = and i64 %2, 15
  switch i64 %4, label %152 [
    i64 12, label %5
    i64 8, label %12
    i64 4, label %21
    i64 13, label %29
    i64 9, label %36
    i64 5, label %45
    i64 14, label %60
    i64 10, label %67
    i64 6, label %76
    i64 15, label %98
    i64 11, label %105
    i64 7, label %114
    i64 3, label %123
    i64 2, label %133
    i64 1, label %143
    i64 0, label %153
  ]

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 1
  %7 = mul i32 %6, -1028477379
  %8 = add i32 %7, %0
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 17)
  %11 = mul i32 %10, 668265263
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi ptr [ %1, %3 ], [ %9, %5 ]
  %14 = phi i32 [ %0, %3 ], [ %11, %5 ]
  %15 = load i32, ptr %13, align 1
  %16 = mul i32 %15, -1028477379
  %17 = add i32 %16, %14
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %20 = mul i32 %19, 668265263
  br label %21

21:                                               ; preds = %12, %3
  %22 = phi ptr [ %1, %3 ], [ %18, %12 ]
  %23 = phi i32 [ %0, %3 ], [ %20, %12 ]
  %24 = load i32, ptr %22, align 1
  %25 = mul i32 %24, -1028477379
  %26 = add i32 %25, %23
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  br label %153

29:                                               ; preds = %3
  %30 = load i32, ptr %1, align 1
  %31 = mul i32 %30, -1028477379
  %32 = add i32 %31, %0
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %34 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 17)
  %35 = mul i32 %34, 668265263
  br label %36

36:                                               ; preds = %29, %3
  %37 = phi ptr [ %1, %3 ], [ %33, %29 ]
  %38 = phi i32 [ %0, %3 ], [ %35, %29 ]
  %39 = load i32, ptr %37, align 1
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %40, %38
  %42 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %44 = mul i32 %43, 668265263
  br label %45

45:                                               ; preds = %36, %3
  %46 = phi ptr [ %1, %3 ], [ %42, %36 ]
  %47 = phi i32 [ %0, %3 ], [ %44, %36 ]
  %48 = load i32, ptr %46, align 1
  %49 = mul i32 %48, -1028477379
  %50 = add i32 %49, %47
  %51 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 17)
  %53 = mul i32 %52, 668265263
  %54 = load i8, ptr %51, align 1
  %55 = zext i8 %54 to i32
  %56 = mul i32 %55, 374761393
  %57 = add i32 %53, %56
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11)
  %59 = mul i32 %58, -1640531535
  br label %153

60:                                               ; preds = %3
  %61 = load i32, ptr %1, align 1
  %62 = mul i32 %61, -1028477379
  %63 = add i32 %62, %0
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %65 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 17)
  %66 = mul i32 %65, 668265263
  br label %67

67:                                               ; preds = %60, %3
  %68 = phi ptr [ %1, %3 ], [ %64, %60 ]
  %69 = phi i32 [ %0, %3 ], [ %66, %60 ]
  %70 = load i32, ptr %68, align 1
  %71 = mul i32 %70, -1028477379
  %72 = add i32 %71, %69
  %73 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %74 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 17)
  %75 = mul i32 %74, 668265263
  br label %76

76:                                               ; preds = %67, %3
  %77 = phi ptr [ %1, %3 ], [ %73, %67 ]
  %78 = phi i32 [ %0, %3 ], [ %75, %67 ]
  %79 = load i32, ptr %77, align 1
  %80 = mul i32 %79, -1028477379
  %81 = add i32 %80, %78
  %82 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %83 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 17)
  %84 = mul i32 %83, 668265263
  %85 = getelementptr inbounds nuw i8, ptr %77, i64 5
  %86 = load i8, ptr %82, align 1
  %87 = zext i8 %86 to i32
  %88 = mul i32 %87, 374761393
  %89 = add i32 %84, %88
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 11)
  %91 = mul i32 %90, -1640531535
  %92 = load i8, ptr %85, align 1
  %93 = zext i8 %92 to i32
  %94 = mul i32 %93, 374761393
  %95 = add i32 %91, %94
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 11)
  %97 = mul i32 %96, -1640531535
  br label %153

98:                                               ; preds = %3
  %99 = load i32, ptr %1, align 1
  %100 = mul i32 %99, -1028477379
  %101 = add i32 %100, %0
  %102 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %103 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 17)
  %104 = mul i32 %103, 668265263
  br label %105

105:                                              ; preds = %98, %3
  %106 = phi ptr [ %1, %3 ], [ %102, %98 ]
  %107 = phi i32 [ %0, %3 ], [ %104, %98 ]
  %108 = load i32, ptr %106, align 1
  %109 = mul i32 %108, -1028477379
  %110 = add i32 %109, %107
  %111 = getelementptr inbounds nuw i8, ptr %106, i64 4
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 17)
  %113 = mul i32 %112, 668265263
  br label %114

114:                                              ; preds = %105, %3
  %115 = phi ptr [ %1, %3 ], [ %111, %105 ]
  %116 = phi i32 [ %0, %3 ], [ %113, %105 ]
  %117 = load i32, ptr %115, align 1
  %118 = mul i32 %117, -1028477379
  %119 = add i32 %118, %116
  %120 = getelementptr inbounds nuw i8, ptr %115, i64 4
  %121 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 17)
  %122 = mul i32 %121, 668265263
  br label %123

123:                                              ; preds = %114, %3
  %124 = phi ptr [ %1, %3 ], [ %120, %114 ]
  %125 = phi i32 [ %0, %3 ], [ %122, %114 ]
  %126 = getelementptr inbounds nuw i8, ptr %124, i64 1
  %127 = load i8, ptr %124, align 1
  %128 = zext i8 %127 to i32
  %129 = mul i32 %128, 374761393
  %130 = add i32 %129, %125
  %131 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 11)
  %132 = mul i32 %131, -1640531535
  br label %133

133:                                              ; preds = %123, %3
  %134 = phi ptr [ %1, %3 ], [ %126, %123 ]
  %135 = phi i32 [ %0, %3 ], [ %132, %123 ]
  %136 = getelementptr inbounds nuw i8, ptr %134, i64 1
  %137 = load i8, ptr %134, align 1
  %138 = zext i8 %137 to i32
  %139 = mul i32 %138, 374761393
  %140 = add i32 %139, %135
  %141 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 11)
  %142 = mul i32 %141, -1640531535
  br label %143

143:                                              ; preds = %133, %3
  %144 = phi ptr [ %1, %3 ], [ %136, %133 ]
  %145 = phi i32 [ %0, %3 ], [ %142, %133 ]
  %146 = load i8, ptr %144, align 1
  %147 = zext i8 %146 to i32
  %148 = mul i32 %147, 374761393
  %149 = add i32 %148, %145
  %150 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 11)
  %151 = mul i32 %150, -1640531535
  br label %153

152:                                              ; preds = %3
  unreachable

153:                                              ; preds = %143, %3, %76, %45, %21
  %154 = phi i32 [ %97, %76 ], [ %59, %45 ], [ %28, %21 ], [ %0, %3 ], [ %151, %143 ]
  %155 = lshr i32 %154, 15
  %156 = xor i32 %155, %154
  %157 = mul i32 %156, -2048144777
  %158 = lshr i32 %157, 13
  %159 = xor i32 %158, %157
  %160 = mul i32 %159, -1028477379
  %161 = lshr i32 %160, 16
  %162 = xor i32 %161, %160
  ret i32 %162
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH32_canonicalFromHash(ptr nocapture noundef writeonly initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @XXH32_hashFromCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i32, ptr %0, align 1
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #11 {
  %4 = icmp ugt i64 %1, 31
  br i1 %4, label %5, label %76

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds i8, ptr %8, i64 -32
  %10 = add i64 %2, 6983438078262162902
  %11 = add i64 %2, -4417276706812531889
  %12 = add i64 %2, 7046029288634856825
  br label %13

13:                                               ; preds = %13, %5
  %14 = phi ptr [ %0, %5 ], [ %42, %13 ]
  %15 = phi i64 [ %10, %5 ], [ %23, %13 ]
  %16 = phi i64 [ %11, %5 ], [ %29, %13 ]
  %17 = phi i64 [ %2, %5 ], [ %35, %13 ]
  %18 = phi i64 [ %12, %5 ], [ %41, %13 ]
  %19 = load i64, ptr %14, align 1
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %20, %15
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %25 = load i64, ptr %24, align 1
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, %16
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %31 = load i64, ptr %30, align 1
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %17
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %37 = load i64, ptr %36, align 1
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %18
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %43 = icmp ugt ptr %42, %9
  br i1 %43, label %44, label %13

44:                                               ; preds = %13
  %45 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 1)
  %46 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 7)
  %47 = add i64 %46, %45
  %48 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 12)
  %49 = add i64 %47, %48
  %50 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 18)
  %51 = add i64 %49, %50
  %52 = mul i64 %22, -2381459717836149591
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = xor i64 %51, %54
  %56 = mul i64 %55, -7046029288634856825
  %57 = add i64 %56, -8796714831421723037
  %58 = mul i64 %28, -2381459717836149591
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = xor i64 %57, %60
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = mul i64 %34, -2381459717836149591
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = xor i64 %63, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = mul i64 %40, -2381459717836149591
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %69, %72
  %74 = mul i64 %73, -7046029288634856825
  %75 = add i64 %74, -8796714831421723037
  br label %78

76:                                               ; preds = %3
  %77 = add i64 %2, 2870177450012600261
  br label %78

78:                                               ; preds = %44, %76
  %79 = phi i64 [ %75, %44 ], [ %77, %76 ]
  %80 = phi ptr [ %42, %44 ], [ %0, %76 ]
  %81 = add i64 %79, %1
  %82 = and i64 %1, 31
  %83 = icmp samesign ugt i64 %82, 7
  br i1 %83, label %84, label %158

84:                                               ; preds = %78
  %85 = add nsw i64 %82, -8
  %86 = lshr i64 %85, 3
  %87 = add nuw nsw i64 %86, 1
  %88 = and i64 %87, 3
  %89 = and i64 %85, 24
  %90 = icmp eq i64 %89, 24
  br i1 %90, label %108, label %91

91:                                               ; preds = %84, %91
  %92 = phi i64 [ %104, %91 ], [ %81, %84 ]
  %93 = phi ptr [ %100, %91 ], [ %80, %84 ]
  %94 = phi i64 [ %105, %91 ], [ %82, %84 ]
  %95 = phi i64 [ %106, %91 ], [ 0, %84 ]
  %96 = load i64, ptr %93, align 1
  %97 = mul i64 %96, -4417276706812531889
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 31)
  %99 = mul i64 %98, -7046029288634856825
  %100 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %101 = xor i64 %99, %92
  %102 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 27)
  %103 = mul i64 %102, -7046029288634856825
  %104 = add i64 %103, -8796714831421723037
  %105 = add nsw i64 %94, -8
  %106 = add i64 %95, 1
  %107 = icmp eq i64 %106, %88
  br i1 %107, label %108, label %91, !llvm.loop !6

108:                                              ; preds = %91, %84
  %109 = phi i64 [ %81, %84 ], [ %104, %91 ]
  %110 = phi ptr [ %80, %84 ], [ %100, %91 ]
  %111 = phi i64 [ %82, %84 ], [ %105, %91 ]
  %112 = phi ptr [ poison, %84 ], [ %100, %91 ]
  %113 = phi i64 [ poison, %84 ], [ %104, %91 ]
  %114 = phi i64 [ poison, %84 ], [ %105, %91 ]
  %115 = icmp ult i64 %85, 24
  br i1 %115, label %158, label %116

116:                                              ; preds = %108, %116
  %117 = phi i64 [ %155, %116 ], [ %109, %108 ]
  %118 = phi ptr [ %151, %116 ], [ %110, %108 ]
  %119 = phi i64 [ %156, %116 ], [ %111, %108 ]
  %120 = load i64, ptr %118, align 1
  %121 = mul i64 %120, -4417276706812531889
  %122 = tail call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 31)
  %123 = mul i64 %122, -7046029288634856825
  %124 = getelementptr inbounds nuw i8, ptr %118, i64 8
  %125 = xor i64 %123, %117
  %126 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 27)
  %127 = mul i64 %126, -7046029288634856825
  %128 = add i64 %127, -8796714831421723037
  %129 = load i64, ptr %124, align 1
  %130 = mul i64 %129, -4417276706812531889
  %131 = tail call i64 @llvm.fshl.i64(i64 %130, i64 %130, i64 31)
  %132 = mul i64 %131, -7046029288634856825
  %133 = getelementptr inbounds nuw i8, ptr %118, i64 16
  %134 = xor i64 %132, %128
  %135 = tail call i64 @llvm.fshl.i64(i64 %134, i64 %134, i64 27)
  %136 = mul i64 %135, -7046029288634856825
  %137 = add i64 %136, -8796714831421723037
  %138 = load i64, ptr %133, align 1
  %139 = mul i64 %138, -4417276706812531889
  %140 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 31)
  %141 = mul i64 %140, -7046029288634856825
  %142 = getelementptr inbounds nuw i8, ptr %118, i64 24
  %143 = xor i64 %141, %137
  %144 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 27)
  %145 = mul i64 %144, -7046029288634856825
  %146 = add i64 %145, -8796714831421723037
  %147 = load i64, ptr %142, align 1
  %148 = mul i64 %147, -4417276706812531889
  %149 = tail call i64 @llvm.fshl.i64(i64 %148, i64 %148, i64 31)
  %150 = mul i64 %149, -7046029288634856825
  %151 = getelementptr inbounds nuw i8, ptr %118, i64 32
  %152 = xor i64 %150, %146
  %153 = tail call i64 @llvm.fshl.i64(i64 %152, i64 %152, i64 27)
  %154 = mul i64 %153, -7046029288634856825
  %155 = add i64 %154, -8796714831421723037
  %156 = add nsw i64 %119, -32
  %157 = icmp ugt i64 %156, 7
  br i1 %157, label %116, label %158

158:                                              ; preds = %108, %116, %78
  %159 = phi i64 [ %82, %78 ], [ %114, %108 ], [ %156, %116 ]
  %160 = phi ptr [ %80, %78 ], [ %112, %108 ], [ %151, %116 ]
  %161 = phi i64 [ %81, %78 ], [ %113, %108 ], [ %155, %116 ]
  %162 = icmp samesign ugt i64 %159, 3
  br i1 %162, label %163, label %173

163:                                              ; preds = %158
  %164 = load i32, ptr %160, align 1
  %165 = zext i32 %164 to i64
  %166 = mul i64 %165, -7046029288634856825
  %167 = xor i64 %166, %161
  %168 = getelementptr inbounds nuw i8, ptr %160, i64 4
  %169 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 23)
  %170 = mul i64 %169, -4417276706812531889
  %171 = add i64 %170, 1609587929392839161
  %172 = add nsw i64 %159, -4
  br label %173

173:                                              ; preds = %163, %158
  %174 = phi i64 [ %172, %163 ], [ %159, %158 ]
  %175 = phi ptr [ %168, %163 ], [ %160, %158 ]
  %176 = phi i64 [ %171, %163 ], [ %161, %158 ]
  %177 = icmp eq i64 %174, 0
  br i1 %177, label %264, label %178

178:                                              ; preds = %173
  %179 = and i64 %174, 7
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %196, label %181

181:                                              ; preds = %178, %181
  %182 = phi i64 [ %192, %181 ], [ %176, %178 ]
  %183 = phi ptr [ %186, %181 ], [ %175, %178 ]
  %184 = phi i64 [ %193, %181 ], [ %174, %178 ]
  %185 = phi i64 [ %194, %181 ], [ 0, %178 ]
  %186 = getelementptr inbounds nuw i8, ptr %183, i64 1
  %187 = load i8, ptr %183, align 1
  %188 = zext i8 %187 to i64
  %189 = mul i64 %188, 2870177450012600261
  %190 = xor i64 %189, %182
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 11)
  %192 = mul i64 %191, -7046029288634856825
  %193 = add nsw i64 %184, -1
  %194 = add i64 %185, 1
  %195 = icmp eq i64 %194, %179
  br i1 %195, label %196, label %181, !llvm.loop !8

196:                                              ; preds = %181, %178
  %197 = phi i64 [ poison, %178 ], [ %192, %181 ]
  %198 = phi i64 [ %176, %178 ], [ %192, %181 ]
  %199 = phi ptr [ %175, %178 ], [ %186, %181 ]
  %200 = phi i64 [ %174, %178 ], [ %193, %181 ]
  %201 = icmp ult i64 %174, 8
  br i1 %201, label %264, label %202

202:                                              ; preds = %196, %202
  %203 = phi i64 [ %261, %202 ], [ %198, %196 ]
  %204 = phi ptr [ %255, %202 ], [ %199, %196 ]
  %205 = phi i64 [ %262, %202 ], [ %200, %196 ]
  %206 = getelementptr inbounds nuw i8, ptr %204, i64 1
  %207 = load i8, ptr %204, align 1
  %208 = zext i8 %207 to i64
  %209 = mul i64 %208, 2870177450012600261
  %210 = xor i64 %209, %203
  %211 = tail call i64 @llvm.fshl.i64(i64 %210, i64 %210, i64 11)
  %212 = mul i64 %211, -7046029288634856825
  %213 = getelementptr inbounds nuw i8, ptr %204, i64 2
  %214 = load i8, ptr %206, align 1
  %215 = zext i8 %214 to i64
  %216 = mul i64 %215, 2870177450012600261
  %217 = xor i64 %216, %212
  %218 = tail call i64 @llvm.fshl.i64(i64 %217, i64 %217, i64 11)
  %219 = mul i64 %218, -7046029288634856825
  %220 = getelementptr inbounds nuw i8, ptr %204, i64 3
  %221 = load i8, ptr %213, align 1
  %222 = zext i8 %221 to i64
  %223 = mul i64 %222, 2870177450012600261
  %224 = xor i64 %223, %219
  %225 = tail call i64 @llvm.fshl.i64(i64 %224, i64 %224, i64 11)
  %226 = mul i64 %225, -7046029288634856825
  %227 = getelementptr inbounds nuw i8, ptr %204, i64 4
  %228 = load i8, ptr %220, align 1
  %229 = zext i8 %228 to i64
  %230 = mul i64 %229, 2870177450012600261
  %231 = xor i64 %230, %226
  %232 = tail call i64 @llvm.fshl.i64(i64 %231, i64 %231, i64 11)
  %233 = mul i64 %232, -7046029288634856825
  %234 = getelementptr inbounds nuw i8, ptr %204, i64 5
  %235 = load i8, ptr %227, align 1
  %236 = zext i8 %235 to i64
  %237 = mul i64 %236, 2870177450012600261
  %238 = xor i64 %237, %233
  %239 = tail call i64 @llvm.fshl.i64(i64 %238, i64 %238, i64 11)
  %240 = mul i64 %239, -7046029288634856825
  %241 = getelementptr inbounds nuw i8, ptr %204, i64 6
  %242 = load i8, ptr %234, align 1
  %243 = zext i8 %242 to i64
  %244 = mul i64 %243, 2870177450012600261
  %245 = xor i64 %244, %240
  %246 = tail call i64 @llvm.fshl.i64(i64 %245, i64 %245, i64 11)
  %247 = mul i64 %246, -7046029288634856825
  %248 = getelementptr inbounds nuw i8, ptr %204, i64 7
  %249 = load i8, ptr %241, align 1
  %250 = zext i8 %249 to i64
  %251 = mul i64 %250, 2870177450012600261
  %252 = xor i64 %251, %247
  %253 = tail call i64 @llvm.fshl.i64(i64 %252, i64 %252, i64 11)
  %254 = mul i64 %253, -7046029288634856825
  %255 = getelementptr inbounds nuw i8, ptr %204, i64 8
  %256 = load i8, ptr %248, align 1
  %257 = zext i8 %256 to i64
  %258 = mul i64 %257, 2870177450012600261
  %259 = xor i64 %258, %254
  %260 = tail call i64 @llvm.fshl.i64(i64 %259, i64 %259, i64 11)
  %261 = mul i64 %260, -7046029288634856825
  %262 = add nsw i64 %205, -8
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %202

264:                                              ; preds = %196, %202, %173
  %265 = phi i64 [ %176, %173 ], [ %197, %196 ], [ %261, %202 ]
  %266 = lshr i64 %265, 33
  %267 = xor i64 %266, %265
  %268 = mul i64 %267, -4417276706812531889
  %269 = lshr i64 %268, 29
  %270 = xor i64 %269, %268
  %271 = mul i64 %270, 1609587929392839161
  %272 = lshr i64 %271, 32
  %273 = xor i64 %272, %271
  ret i64 %273
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #28
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr nocapture noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #27
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH64_copyState(ptr nocapture noundef writeonly initializes((0, 88)) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH64_reset(ptr nocapture noundef writeonly initializes((0, 80)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  store i64 0, ptr %0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %5, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH64_update(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %119, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = load i64, ptr %0, align 8
  %8 = add i64 %7, %2
  store i64 %8, ptr %0, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load i32, ptr %9, align 8
  %11 = zext i32 %10 to i64
  %12 = add i64 %2, %11
  %13 = icmp ult i64 %12, 32
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %17 = trunc i64 %2 to i32
  %18 = load i32, ptr %9, align 8
  %19 = add i32 %18, %17
  br label %117

20:                                               ; preds = %5
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %11
  %25 = sub i32 32, %10
  %26 = zext i32 %25 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %1, i64 %26, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i64, ptr %27, align 8
  %29 = load i64, ptr %23, align 1
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, %28
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  store i64 %33, ptr %27, align 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %37 = load i64, ptr %36, align 1
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %35
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  store i64 %41, ptr %34, align 8
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %45 = load i64, ptr %44, align 1
  %46 = mul i64 %45, -4417276706812531889
  %47 = add i64 %46, %43
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 31)
  %49 = mul i64 %48, -7046029288634856825
  store i64 %49, ptr %42, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %53 = load i64, ptr %52, align 1
  %54 = mul i64 %53, -4417276706812531889
  %55 = add i64 %54, %51
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  store i64 %57, ptr %50, align 8
  %58 = load i32, ptr %9, align 8
  %59 = sub i32 32, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 %60
  store i32 0, ptr %9, align 8
  br label %62

62:                                               ; preds = %22, %20
  %63 = phi ptr [ %61, %22 ], [ %1, %20 ]
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %65 = icmp ugt ptr %64, %6
  br i1 %65, label %108, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %6, i64 -32
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %75 = load i64, ptr %74, align 8
  br label %76

76:                                               ; preds = %76, %66
  %77 = phi ptr [ %63, %66 ], [ %105, %76 ]
  %78 = phi i64 [ %69, %66 ], [ %86, %76 ]
  %79 = phi i64 [ %71, %66 ], [ %92, %76 ]
  %80 = phi i64 [ %73, %66 ], [ %98, %76 ]
  %81 = phi i64 [ %75, %66 ], [ %104, %76 ]
  %82 = load i64, ptr %77, align 1
  %83 = mul i64 %82, -4417276706812531889
  %84 = add i64 %83, %78
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 31)
  %86 = mul i64 %85, -7046029288634856825
  %87 = getelementptr inbounds nuw i8, ptr %77, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = mul i64 %88, -4417276706812531889
  %90 = add i64 %89, %79
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 31)
  %92 = mul i64 %91, -7046029288634856825
  %93 = getelementptr inbounds nuw i8, ptr %77, i64 16
  %94 = load i64, ptr %93, align 1
  %95 = mul i64 %94, -4417276706812531889
  %96 = add i64 %95, %80
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 31)
  %98 = mul i64 %97, -7046029288634856825
  %99 = getelementptr inbounds nuw i8, ptr %77, i64 24
  %100 = load i64, ptr %99, align 1
  %101 = mul i64 %100, -4417276706812531889
  %102 = add i64 %101, %81
  %103 = tail call i64 @llvm.fshl.i64(i64 %102, i64 %102, i64 31)
  %104 = mul i64 %103, -7046029288634856825
  %105 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %106 = icmp ugt ptr %105, %67
  br i1 %106, label %107, label %76

107:                                              ; preds = %76
  store i64 %86, ptr %68, align 8
  store i64 %92, ptr %70, align 8
  store i64 %98, ptr %72, align 8
  store i64 %104, ptr %74, align 8
  br label %108

108:                                              ; preds = %107, %62
  %109 = phi ptr [ %105, %107 ], [ %63, %62 ]
  %110 = icmp ult ptr %109, %6
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %113 = ptrtoint ptr %6 to i64
  %114 = ptrtoint ptr %109 to i64
  %115 = sub i64 %113, %114
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %112, ptr nonnull readonly align 1 %109, i64 %115, i1 false)
  %116 = trunc i64 %115 to i32
  br label %117

117:                                              ; preds = %111, %14
  %118 = phi i32 [ %19, %14 ], [ %116, %111 ]
  store i32 %118, ptr %9, align 8
  br label %119

119:                                              ; preds = %117, %108, %3
  %120 = phi i32 [ 1, %3 ], [ 0, %108 ], [ 0, %117 ]
  ret i32 %120
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load i64, ptr %0, align 8
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load i64, ptr %11, align 8
  %13 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 1)
  %14 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 7)
  %15 = add i64 %14, %13
  %16 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 12)
  %17 = add i64 %15, %16
  %18 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 18)
  %19 = add i64 %17, %18
  %20 = mul i64 %6, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = xor i64 %19, %22
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = mul i64 %8, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %25, %28
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = mul i64 %10, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %31, %34
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = mul i64 %12, -4417276706812531889
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %37, %40
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  br label %48

44:                                               ; preds = %1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %44, %4
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = and i64 %2, 31
  %53 = icmp samesign ugt i64 %52, 7
  br i1 %53, label %54, label %128

54:                                               ; preds = %48
  %55 = add nsw i64 %52, -8
  %56 = lshr i64 %55, 3
  %57 = add nuw nsw i64 %56, 1
  %58 = and i64 %57, 3
  %59 = and i64 %55, 24
  %60 = icmp eq i64 %59, 24
  br i1 %60, label %78, label %61

61:                                               ; preds = %54, %61
  %62 = phi i64 [ %74, %61 ], [ %50, %54 ]
  %63 = phi ptr [ %70, %61 ], [ %51, %54 ]
  %64 = phi i64 [ %75, %61 ], [ %52, %54 ]
  %65 = phi i64 [ %76, %61 ], [ 0, %54 ]
  %66 = load i64, ptr %63, align 1
  %67 = mul i64 %66, -4417276706812531889
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %71 = xor i64 %69, %62
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 27)
  %73 = mul i64 %72, -7046029288634856825
  %74 = add i64 %73, -8796714831421723037
  %75 = add nsw i64 %64, -8
  %76 = add i64 %65, 1
  %77 = icmp eq i64 %76, %58
  br i1 %77, label %78, label %61, !llvm.loop !9

78:                                               ; preds = %61, %54
  %79 = phi i64 [ %50, %54 ], [ %74, %61 ]
  %80 = phi ptr [ %51, %54 ], [ %70, %61 ]
  %81 = phi i64 [ %52, %54 ], [ %75, %61 ]
  %82 = phi ptr [ poison, %54 ], [ %70, %61 ]
  %83 = phi i64 [ poison, %54 ], [ %74, %61 ]
  %84 = phi i64 [ poison, %54 ], [ %75, %61 ]
  %85 = icmp ult i64 %55, 24
  br i1 %85, label %128, label %86

86:                                               ; preds = %78, %86
  %87 = phi i64 [ %125, %86 ], [ %79, %78 ]
  %88 = phi ptr [ %121, %86 ], [ %80, %78 ]
  %89 = phi i64 [ %126, %86 ], [ %81, %78 ]
  %90 = load i64, ptr %88, align 1
  %91 = mul i64 %90, -4417276706812531889
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %95 = xor i64 %93, %87
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 27)
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  %99 = load i64, ptr %94, align 1
  %100 = mul i64 %99, -4417276706812531889
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 31)
  %102 = mul i64 %101, -7046029288634856825
  %103 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %104 = xor i64 %102, %98
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 27)
  %106 = mul i64 %105, -7046029288634856825
  %107 = add i64 %106, -8796714831421723037
  %108 = load i64, ptr %103, align 1
  %109 = mul i64 %108, -4417276706812531889
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 31)
  %111 = mul i64 %110, -7046029288634856825
  %112 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %113 = xor i64 %111, %107
  %114 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 27)
  %115 = mul i64 %114, -7046029288634856825
  %116 = add i64 %115, -8796714831421723037
  %117 = load i64, ptr %112, align 1
  %118 = mul i64 %117, -4417276706812531889
  %119 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 31)
  %120 = mul i64 %119, -7046029288634856825
  %121 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %122 = xor i64 %120, %116
  %123 = tail call i64 @llvm.fshl.i64(i64 %122, i64 %122, i64 27)
  %124 = mul i64 %123, -7046029288634856825
  %125 = add i64 %124, -8796714831421723037
  %126 = add nsw i64 %89, -32
  %127 = icmp ugt i64 %126, 7
  br i1 %127, label %86, label %128

128:                                              ; preds = %78, %86, %48
  %129 = phi i64 [ %52, %48 ], [ %84, %78 ], [ %126, %86 ]
  %130 = phi ptr [ %51, %48 ], [ %82, %78 ], [ %121, %86 ]
  %131 = phi i64 [ %50, %48 ], [ %83, %78 ], [ %125, %86 ]
  %132 = icmp samesign ugt i64 %129, 3
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i32, ptr %130, align 1
  %135 = zext i32 %134 to i64
  %136 = mul i64 %135, -7046029288634856825
  %137 = xor i64 %136, %131
  %138 = getelementptr inbounds nuw i8, ptr %130, i64 4
  %139 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 23)
  %140 = mul i64 %139, -4417276706812531889
  %141 = add i64 %140, 1609587929392839161
  %142 = add nsw i64 %129, -4
  br label %143

143:                                              ; preds = %133, %128
  %144 = phi i64 [ %142, %133 ], [ %129, %128 ]
  %145 = phi ptr [ %138, %133 ], [ %130, %128 ]
  %146 = phi i64 [ %141, %133 ], [ %131, %128 ]
  %147 = icmp eq i64 %144, 0
  br i1 %147, label %234, label %148

148:                                              ; preds = %143
  %149 = and i64 %144, 7
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %148, %151
  %152 = phi i64 [ %162, %151 ], [ %146, %148 ]
  %153 = phi ptr [ %156, %151 ], [ %145, %148 ]
  %154 = phi i64 [ %163, %151 ], [ %144, %148 ]
  %155 = phi i64 [ %164, %151 ], [ 0, %148 ]
  %156 = getelementptr inbounds nuw i8, ptr %153, i64 1
  %157 = load i8, ptr %153, align 1
  %158 = zext i8 %157 to i64
  %159 = mul i64 %158, 2870177450012600261
  %160 = xor i64 %159, %152
  %161 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 11)
  %162 = mul i64 %161, -7046029288634856825
  %163 = add nsw i64 %154, -1
  %164 = add i64 %155, 1
  %165 = icmp eq i64 %164, %149
  br i1 %165, label %166, label %151, !llvm.loop !10

166:                                              ; preds = %151, %148
  %167 = phi i64 [ poison, %148 ], [ %162, %151 ]
  %168 = phi i64 [ %146, %148 ], [ %162, %151 ]
  %169 = phi ptr [ %145, %148 ], [ %156, %151 ]
  %170 = phi i64 [ %144, %148 ], [ %163, %151 ]
  %171 = icmp ult i64 %144, 8
  br i1 %171, label %234, label %172

172:                                              ; preds = %166, %172
  %173 = phi i64 [ %231, %172 ], [ %168, %166 ]
  %174 = phi ptr [ %225, %172 ], [ %169, %166 ]
  %175 = phi i64 [ %232, %172 ], [ %170, %166 ]
  %176 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %177 = load i8, ptr %174, align 1
  %178 = zext i8 %177 to i64
  %179 = mul i64 %178, 2870177450012600261
  %180 = xor i64 %179, %173
  %181 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 11)
  %182 = mul i64 %181, -7046029288634856825
  %183 = getelementptr inbounds nuw i8, ptr %174, i64 2
  %184 = load i8, ptr %176, align 1
  %185 = zext i8 %184 to i64
  %186 = mul i64 %185, 2870177450012600261
  %187 = xor i64 %186, %182
  %188 = tail call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 11)
  %189 = mul i64 %188, -7046029288634856825
  %190 = getelementptr inbounds nuw i8, ptr %174, i64 3
  %191 = load i8, ptr %183, align 1
  %192 = zext i8 %191 to i64
  %193 = mul i64 %192, 2870177450012600261
  %194 = xor i64 %193, %189
  %195 = tail call i64 @llvm.fshl.i64(i64 %194, i64 %194, i64 11)
  %196 = mul i64 %195, -7046029288634856825
  %197 = getelementptr inbounds nuw i8, ptr %174, i64 4
  %198 = load i8, ptr %190, align 1
  %199 = zext i8 %198 to i64
  %200 = mul i64 %199, 2870177450012600261
  %201 = xor i64 %200, %196
  %202 = tail call i64 @llvm.fshl.i64(i64 %201, i64 %201, i64 11)
  %203 = mul i64 %202, -7046029288634856825
  %204 = getelementptr inbounds nuw i8, ptr %174, i64 5
  %205 = load i8, ptr %197, align 1
  %206 = zext i8 %205 to i64
  %207 = mul i64 %206, 2870177450012600261
  %208 = xor i64 %207, %203
  %209 = tail call i64 @llvm.fshl.i64(i64 %208, i64 %208, i64 11)
  %210 = mul i64 %209, -7046029288634856825
  %211 = getelementptr inbounds nuw i8, ptr %174, i64 6
  %212 = load i8, ptr %204, align 1
  %213 = zext i8 %212 to i64
  %214 = mul i64 %213, 2870177450012600261
  %215 = xor i64 %214, %210
  %216 = tail call i64 @llvm.fshl.i64(i64 %215, i64 %215, i64 11)
  %217 = mul i64 %216, -7046029288634856825
  %218 = getelementptr inbounds nuw i8, ptr %174, i64 7
  %219 = load i8, ptr %211, align 1
  %220 = zext i8 %219 to i64
  %221 = mul i64 %220, 2870177450012600261
  %222 = xor i64 %221, %217
  %223 = tail call i64 @llvm.fshl.i64(i64 %222, i64 %222, i64 11)
  %224 = mul i64 %223, -7046029288634856825
  %225 = getelementptr inbounds nuw i8, ptr %174, i64 8
  %226 = load i8, ptr %218, align 1
  %227 = zext i8 %226 to i64
  %228 = mul i64 %227, 2870177450012600261
  %229 = xor i64 %228, %224
  %230 = tail call i64 @llvm.fshl.i64(i64 %229, i64 %229, i64 11)
  %231 = mul i64 %230, -7046029288634856825
  %232 = add nsw i64 %175, -8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %172

234:                                              ; preds = %166, %172, %143
  %235 = phi i64 [ %146, %143 ], [ %167, %166 ], [ %231, %172 ]
  %236 = lshr i64 %235, 33
  %237 = xor i64 %236, %235
  %238 = mul i64 %237, -4417276706812531889
  %239 = lshr i64 %238, 29
  %240 = xor i64 %239, %238
  %241 = mul i64 %240, 1609587929392839161
  %242 = lshr i64 %241, 32
  %243 = xor i64 %242, %241
  ret i64 %243
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH64_canonicalFromHash(ptr nocapture noundef writeonly initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @XXH64_hashFromCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i64, ptr %0, align 1
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @XXH3_64bits(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #13 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %77

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %28, !prof !11

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, 7458650908927343033
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, -5812251307325107654
  %13 = tail call noundef i64 @llvm.bswap.i64(i64 %8)
  %14 = add i64 %13, %1
  %15 = add i64 %14, %12
  %16 = zext i64 %8 to i128
  %17 = zext i64 %12 to i128
  %18 = mul nuw i128 %17, %16
  %19 = lshr i128 %18, 64
  %20 = xor i128 %19, %18
  %21 = trunc i128 %20 to i64
  %22 = add i64 %15, %21
  %23 = lshr i64 %22, 37
  %24 = xor i64 %23, %22
  %25 = mul i64 %24, 1609587791953885689
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %25
  br label %211

28:                                               ; preds = %4
  %29 = icmp samesign ugt i64 %1, 3
  br i1 %29, label %30, label %51, !prof !11

30:                                               ; preds = %28
  %31 = load i32, ptr %0, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %33 = getelementptr inbounds i8, ptr %32, i64 -4
  %34 = load i32, ptr %33, align 1
  %35 = zext i32 %34 to i64
  %36 = zext i32 %31 to i64
  %37 = shl nuw i64 %36, 32
  %38 = or disjoint i64 %37, %35
  %39 = xor i64 %38, -4090762196417718878
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 49)
  %41 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 24)
  %42 = xor i64 %40, %41
  %43 = xor i64 %42, %39
  %44 = mul i64 %43, -6939452855193903323
  %45 = lshr i64 %44, 35
  %46 = add nuw nsw i64 %45, %1
  %47 = xor i64 %46, %44
  %48 = mul i64 %47, -6939452855193903323
  %49 = lshr i64 %48, 28
  %50 = xor i64 %49, %48
  br label %211

51:                                               ; preds = %28
  %52 = icmp eq i64 %1, 0
  br i1 %52, label %211, label %53

53:                                               ; preds = %51
  %54 = load i8, ptr %0, align 1
  %55 = lshr i64 %1, 1
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 %55
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr i8, ptr %0, i64 %1
  %59 = getelementptr i8, ptr %58, i64 -1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %54 to i64
  %62 = shl nuw nsw i64 %61, 16
  %63 = zext i8 %57 to i64
  %64 = shl nuw nsw i64 %63, 24
  %65 = or disjoint i64 %64, %62
  %66 = zext i8 %60 to i64
  %67 = or disjoint i64 %65, %66
  %68 = shl nuw nsw i64 %1, 8
  %69 = or disjoint i64 %67, %68
  %70 = xor i64 %69, 2267503259
  %71 = mul i64 %70, -4417276706812531889
  %72 = lshr i64 %71, 29
  %73 = xor i64 %72, %71
  %74 = mul i64 %73, 1609587929392839161
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  br label %211

77:                                               ; preds = %2
  %78 = icmp ult i64 %1, 129
  br i1 %78, label %79, label %205

79:                                               ; preds = %77
  %80 = mul i64 %1, -7046029288634856825
  %81 = icmp samesign ugt i64 %1, 32
  br i1 %81, label %82, label %172

82:                                               ; preds = %79
  %83 = icmp samesign ugt i64 %1, 64
  br i1 %83, label %84, label %143

84:                                               ; preds = %82
  %85 = icmp samesign ugt i64 %1, 96
  br i1 %85, label %86, label %114

86:                                               ; preds = %84
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %88, 4554437623014685352
  %92 = xor i64 %90, 2111919702937427193
  %93 = zext i64 %91 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %101 = getelementptr inbounds i8, ptr %100, i64 -64
  %102 = load i64, ptr %101, align 1
  %103 = getelementptr inbounds i8, ptr %100, i64 -56
  %104 = load i64, ptr %103, align 1
  %105 = xor i64 %102, 3556072174620004746
  %106 = xor i64 %104, 7238261902898274248
  %107 = zext i64 %105 to i128
  %108 = zext i64 %106 to i128
  %109 = mul nuw i128 %108, %107
  %110 = lshr i128 %109, 64
  %111 = xor i128 %110, %109
  %112 = trunc i128 %111 to i64
  %113 = add i64 %99, %112
  br label %114

114:                                              ; preds = %86, %84
  %115 = phi i64 [ %113, %86 ], [ %80, %84 ]
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %117 = load i64, ptr %116, align 1
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %119 = load i64, ptr %118, align 1
  %120 = xor i64 %117, -3818837453329782724
  %121 = xor i64 %119, -6688317018830679928
  %122 = zext i64 %120 to i128
  %123 = zext i64 %121 to i128
  %124 = mul nuw i128 %123, %122
  %125 = lshr i128 %124, 64
  %126 = xor i128 %125, %124
  %127 = trunc i128 %126 to i64
  %128 = add i64 %115, %127
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %130 = getelementptr inbounds i8, ptr %129, i64 -48
  %131 = load i64, ptr %130, align 1
  %132 = getelementptr inbounds i8, ptr %129, i64 -40
  %133 = load i64, ptr %132, align 1
  %134 = xor i64 %131, 5690594596133299313
  %135 = xor i64 %133, -2833645246901970632
  %136 = zext i64 %134 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %128, %141
  br label %143

143:                                              ; preds = %114, %82
  %144 = phi i64 [ %142, %114 ], [ %80, %82 ]
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %146 = load i64, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %148 = load i64, ptr %147, align 1
  %149 = xor i64 %146, 8711581037947681227
  %150 = xor i64 %148, 2410270004345854594
  %151 = zext i64 %149 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %144, %156
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %159 = getelementptr inbounds i8, ptr %158, i64 -32
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr inbounds i8, ptr %158, i64 -24
  %162 = load i64, ptr %161, align 1
  %163 = xor i64 %160, -8204357891075471176
  %164 = xor i64 %162, 5487137525590930912
  %165 = zext i64 %163 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %157, %170
  br label %172

172:                                              ; preds = %79, %143
  %173 = phi i64 [ %171, %143 ], [ %80, %79 ]
  %174 = load i64, ptr %0, align 1
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %176 = load i64, ptr %175, align 1
  %177 = xor i64 %174, -4734510112055689544
  %178 = xor i64 %176, 2066345149520216444
  %179 = zext i64 %177 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %173, %184
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %187 = getelementptr inbounds i8, ptr %186, i64 -16
  %188 = load i64, ptr %187, align 1
  %189 = getelementptr inbounds i8, ptr %186, i64 -8
  %190 = load i64, ptr %189, align 1
  %191 = xor i64 %188, -2623469361688619810
  %192 = xor i64 %190, 2262974939099578482
  %193 = zext i64 %191 to i128
  %194 = zext i64 %192 to i128
  %195 = mul nuw i128 %194, %193
  %196 = lshr i128 %195, 64
  %197 = xor i128 %196, %195
  %198 = trunc i128 %197 to i64
  %199 = add i64 %185, %198
  %200 = lshr i64 %199, 37
  %201 = xor i64 %200, %199
  %202 = mul i64 %201, 1609587791953885689
  %203 = lshr i64 %202, 32
  %204 = xor i64 %203, %202
  br label %211

205:                                              ; preds = %77
  %206 = icmp ult i64 %1, 241
  br i1 %206, label %207, label %209

207:                                              ; preds = %205
  %208 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0)
  br label %211

209:                                              ; preds = %205
  %210 = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef %0, i64 noundef %1) #27
  br label %211

211:                                              ; preds = %53, %30, %6, %51, %172, %207, %209
  %212 = phi i64 [ %204, %172 ], [ %208, %207 ], [ %210, %209 ], [ %27, %6 ], [ %50, %30 ], [ %76, %53 ], [ 3244421341483603138, %51 ]
  ret i64 %212
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_default(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #14 {
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %149, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %114
  %8 = phi i64 [ 2654435761, %5 ], [ %146, %114 ]
  %9 = phi i64 [ 2870177450012600261, %5 ], [ %142, %114 ]
  %10 = phi i64 [ 2246822519, %5 ], [ %138, %114 ]
  %11 = phi i64 [ -8796714831421723037, %5 ], [ %134, %114 ]
  %12 = phi i64 [ 1609587929392839161, %5 ], [ %130, %114 ]
  %13 = phi i64 [ -4417276706812531889, %5 ], [ %126, %114 ]
  %14 = phi i64 [ -7046029288634856825, %5 ], [ %122, %114 ]
  %15 = phi i64 [ 3266489917, %5 ], [ %118, %114 ]
  %16 = phi i64 [ 0, %5 ], [ %147, %114 ]
  %17 = shl i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %17
  br label %19

19:                                               ; preds = %7, %19
  %20 = phi i64 [ %8, %7 ], [ %111, %19 ]
  %21 = phi i64 [ %9, %7 ], [ %107, %19 ]
  %22 = phi i64 [ %10, %7 ], [ %91, %19 ]
  %23 = phi i64 [ %11, %7 ], [ %87, %19 ]
  %24 = phi i64 [ %12, %7 ], [ %71, %19 ]
  %25 = phi i64 [ %13, %7 ], [ %67, %19 ]
  %26 = phi i64 [ %14, %7 ], [ %51, %19 ]
  %27 = phi i64 [ %15, %7 ], [ %47, %19 ]
  %28 = phi i64 [ 0, %7 ], [ %112, %19 ]
  %29 = shl nuw nsw i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 0, i32 3, i32 1), !noalias !12
  %32 = shl nuw nsw i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %32
  %34 = load i64, ptr %30, align 1
  %35 = load i64, ptr %33, align 8
  %36 = xor i64 %35, %34
  %37 = add i64 %26, %34
  %38 = and i64 %36, 4294967295
  %39 = lshr i64 %36, 32
  %40 = mul nuw i64 %38, %39
  %41 = add i64 %27, %40
  %42 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %43 = load i64, ptr %42, align 1
  %44 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %45 = load i64, ptr %44, align 8
  %46 = xor i64 %45, %43
  %47 = add i64 %41, %43
  %48 = and i64 %46, 4294967295
  %49 = lshr i64 %46, 32
  %50 = mul nuw i64 %48, %49
  %51 = add i64 %37, %50
  %52 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %53 = load i64, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %55 = load i64, ptr %54, align 8
  %56 = xor i64 %55, %53
  %57 = add i64 %24, %53
  %58 = and i64 %56, 4294967295
  %59 = lshr i64 %56, 32
  %60 = mul nuw i64 %58, %59
  %61 = add i64 %25, %60
  %62 = getelementptr inbounds nuw i8, ptr %30, i64 24
  %63 = load i64, ptr %62, align 1
  %64 = getelementptr inbounds nuw i8, ptr %33, i64 24
  %65 = load i64, ptr %64, align 8
  %66 = xor i64 %65, %63
  %67 = add i64 %61, %63
  %68 = and i64 %66, 4294967295
  %69 = lshr i64 %66, 32
  %70 = mul nuw i64 %68, %69
  %71 = add i64 %57, %70
  %72 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %75 = load i64, ptr %74, align 8
  %76 = xor i64 %75, %73
  %77 = add i64 %22, %73
  %78 = and i64 %76, 4294967295
  %79 = lshr i64 %76, 32
  %80 = mul nuw i64 %78, %79
  %81 = add i64 %23, %80
  %82 = getelementptr inbounds nuw i8, ptr %30, i64 40
  %83 = load i64, ptr %82, align 1
  %84 = getelementptr inbounds nuw i8, ptr %33, i64 40
  %85 = load i64, ptr %84, align 8
  %86 = xor i64 %85, %83
  %87 = add i64 %81, %83
  %88 = and i64 %86, 4294967295
  %89 = lshr i64 %86, 32
  %90 = mul nuw i64 %88, %89
  %91 = add i64 %77, %90
  %92 = getelementptr inbounds nuw i8, ptr %30, i64 48
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr inbounds nuw i8, ptr %33, i64 48
  %95 = load i64, ptr %94, align 8
  %96 = xor i64 %95, %93
  %97 = add i64 %20, %93
  %98 = and i64 %96, 4294967295
  %99 = lshr i64 %96, 32
  %100 = mul nuw i64 %98, %99
  %101 = add i64 %21, %100
  %102 = getelementptr inbounds nuw i8, ptr %30, i64 56
  %103 = load i64, ptr %102, align 1
  %104 = getelementptr inbounds nuw i8, ptr %33, i64 56
  %105 = load i64, ptr %104, align 8
  %106 = xor i64 %105, %103
  %107 = add i64 %101, %103
  %108 = and i64 %106, 4294967295
  %109 = lshr i64 %106, 32
  %110 = mul nuw i64 %108, %109
  %111 = add i64 %97, %110
  %112 = add nuw nsw i64 %28, 1
  %113 = icmp eq i64 %112, 16
  br i1 %113, label %114, label %19

114:                                              ; preds = %19
  %115 = lshr i64 %47, 47
  %116 = xor i64 %115, %47
  %117 = xor i64 %116, -4329134394285701654
  %118 = mul i64 %117, 2654435761
  %119 = lshr i64 %51, 47
  %120 = xor i64 %119, %51
  %121 = xor i64 %120, -1485321483350670907
  %122 = mul i64 %121, 2654435761
  %123 = lshr i64 %67, 47
  %124 = xor i64 %123, %67
  %125 = xor i64 %124, 5321830579834785047
  %126 = mul i64 %125, 2654435761
  %127 = lshr i64 %71, 47
  %128 = xor i64 %127, %71
  %129 = xor i64 %128, -7032137544937171245
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %87, 47
  %132 = xor i64 %131, %87
  %133 = xor i64 %132, -242834301215959509
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %91, 47
  %136 = xor i64 %135, %91
  %137 = xor i64 %136, -3588858202114426737
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %107, 47
  %140 = xor i64 %139, %107
  %141 = xor i64 %140, 2883454493032893253
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %111, 47
  %144 = xor i64 %143, %111
  %145 = xor i64 %144, 9097354517224871855
  %146 = mul i64 %145, 2654435761
  %147 = add nuw nsw i64 %16, 1
  %148 = icmp eq i64 %147, %6
  br i1 %148, label %149, label %7

149:                                              ; preds = %114, %2
  %150 = phi i64 [ 2654435761, %2 ], [ %146, %114 ]
  %151 = phi i64 [ 2870177450012600261, %2 ], [ %142, %114 ]
  %152 = phi i64 [ 2246822519, %2 ], [ %138, %114 ]
  %153 = phi i64 [ -8796714831421723037, %2 ], [ %134, %114 ]
  %154 = phi i64 [ 1609587929392839161, %2 ], [ %130, %114 ]
  %155 = phi i64 [ -4417276706812531889, %2 ], [ %126, %114 ]
  %156 = phi i64 [ -7046029288634856825, %2 ], [ %122, %114 ]
  %157 = phi i64 [ 3266489917, %2 ], [ %118, %114 ]
  %158 = and i64 %3, -1024
  %159 = lshr i64 %3, 6
  %160 = and i64 %159, 15
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 %158
  %162 = icmp eq i64 %160, 0
  br i1 %162, label %258, label %163

163:                                              ; preds = %149, %163
  %164 = phi i64 [ %255, %163 ], [ %150, %149 ]
  %165 = phi i64 [ %251, %163 ], [ %151, %149 ]
  %166 = phi i64 [ %235, %163 ], [ %152, %149 ]
  %167 = phi i64 [ %231, %163 ], [ %153, %149 ]
  %168 = phi i64 [ %215, %163 ], [ %154, %149 ]
  %169 = phi i64 [ %211, %163 ], [ %155, %149 ]
  %170 = phi i64 [ %195, %163 ], [ %156, %149 ]
  %171 = phi i64 [ %191, %163 ], [ %157, %149 ]
  %172 = phi i64 [ %256, %163 ], [ 0, %149 ]
  %173 = shl i64 %172, 6
  %174 = getelementptr inbounds nuw i8, ptr %161, i64 %173
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %175, i32 0, i32 3, i32 1), !noalias !15
  %176 = shl i64 %172, 3
  %177 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %176
  %178 = load i64, ptr %174, align 1
  %179 = load i64, ptr %177, align 8
  %180 = xor i64 %179, %178
  %181 = add i64 %170, %178
  %182 = and i64 %180, 4294967295
  %183 = lshr i64 %180, 32
  %184 = mul nuw i64 %182, %183
  %185 = add i64 %171, %184
  %186 = getelementptr inbounds nuw i8, ptr %174, i64 8
  %187 = load i64, ptr %186, align 1
  %188 = getelementptr inbounds nuw i8, ptr %177, i64 8
  %189 = load i64, ptr %188, align 8
  %190 = xor i64 %189, %187
  %191 = add i64 %185, %187
  %192 = and i64 %190, 4294967295
  %193 = lshr i64 %190, 32
  %194 = mul nuw i64 %192, %193
  %195 = add i64 %181, %194
  %196 = getelementptr inbounds nuw i8, ptr %174, i64 16
  %197 = load i64, ptr %196, align 1
  %198 = getelementptr inbounds nuw i8, ptr %177, i64 16
  %199 = load i64, ptr %198, align 8
  %200 = xor i64 %199, %197
  %201 = add i64 %168, %197
  %202 = and i64 %200, 4294967295
  %203 = lshr i64 %200, 32
  %204 = mul nuw i64 %202, %203
  %205 = add i64 %169, %204
  %206 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %207 = load i64, ptr %206, align 1
  %208 = getelementptr inbounds nuw i8, ptr %177, i64 24
  %209 = load i64, ptr %208, align 8
  %210 = xor i64 %209, %207
  %211 = add i64 %205, %207
  %212 = and i64 %210, 4294967295
  %213 = lshr i64 %210, 32
  %214 = mul nuw i64 %212, %213
  %215 = add i64 %201, %214
  %216 = getelementptr inbounds nuw i8, ptr %174, i64 32
  %217 = load i64, ptr %216, align 1
  %218 = getelementptr inbounds nuw i8, ptr %177, i64 32
  %219 = load i64, ptr %218, align 8
  %220 = xor i64 %219, %217
  %221 = add i64 %166, %217
  %222 = and i64 %220, 4294967295
  %223 = lshr i64 %220, 32
  %224 = mul nuw i64 %222, %223
  %225 = add i64 %167, %224
  %226 = getelementptr inbounds nuw i8, ptr %174, i64 40
  %227 = load i64, ptr %226, align 1
  %228 = getelementptr inbounds nuw i8, ptr %177, i64 40
  %229 = load i64, ptr %228, align 8
  %230 = xor i64 %229, %227
  %231 = add i64 %225, %227
  %232 = and i64 %230, 4294967295
  %233 = lshr i64 %230, 32
  %234 = mul nuw i64 %232, %233
  %235 = add i64 %221, %234
  %236 = getelementptr inbounds nuw i8, ptr %174, i64 48
  %237 = load i64, ptr %236, align 1
  %238 = getelementptr inbounds nuw i8, ptr %177, i64 48
  %239 = load i64, ptr %238, align 8
  %240 = xor i64 %239, %237
  %241 = add i64 %164, %237
  %242 = and i64 %240, 4294967295
  %243 = lshr i64 %240, 32
  %244 = mul nuw i64 %242, %243
  %245 = add i64 %165, %244
  %246 = getelementptr inbounds nuw i8, ptr %174, i64 56
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %177, i64 56
  %249 = load i64, ptr %248, align 8
  %250 = xor i64 %249, %247
  %251 = add i64 %245, %247
  %252 = and i64 %250, 4294967295
  %253 = lshr i64 %250, 32
  %254 = mul nuw i64 %252, %253
  %255 = add i64 %241, %254
  %256 = add nuw nsw i64 %172, 1
  %257 = icmp eq i64 %256, %160
  br i1 %257, label %258, label %163

258:                                              ; preds = %163, %149
  %259 = phi i64 [ %150, %149 ], [ %255, %163 ]
  %260 = phi i64 [ %151, %149 ], [ %251, %163 ]
  %261 = phi i64 [ %152, %149 ], [ %235, %163 ]
  %262 = phi i64 [ %153, %149 ], [ %231, %163 ]
  %263 = phi i64 [ %154, %149 ], [ %215, %163 ]
  %264 = phi i64 [ %155, %149 ], [ %211, %163 ]
  %265 = phi i64 [ %156, %149 ], [ %195, %163 ]
  %266 = phi i64 [ %157, %149 ], [ %191, %163 ]
  %267 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %268 = getelementptr inbounds i8, ptr %267, i64 -64
  %269 = load i64, ptr %268, align 1
  %270 = xor i64 %269, -1556992608276218209
  %271 = add i64 %265, %269
  %272 = and i64 %270, 4294967295
  %273 = lshr i64 %270, 32
  %274 = mul nuw i64 %272, %273
  %275 = add i64 %266, %274
  %276 = getelementptr inbounds i8, ptr %267, i64 -56
  %277 = load i64, ptr %276, align 1
  %278 = xor i64 %277, -4196251135427498811
  %279 = add i64 %275, %277
  %280 = and i64 %278, 4294967295
  %281 = lshr i64 %278, 32
  %282 = mul nuw i64 %280, %281
  %283 = add i64 %271, %282
  %284 = getelementptr inbounds i8, ptr %267, i64 -48
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %285, 1723580219865931905
  %287 = add i64 %263, %285
  %288 = and i64 %286, 4294967295
  %289 = lshr i64 %286, 32
  %290 = mul nuw i64 %288, %289
  %291 = add i64 %264, %290
  %292 = getelementptr inbounds i8, ptr %267, i64 -40
  %293 = load i64, ptr %292, align 1
  %294 = xor i64 %293, -3221803331004277491
  %295 = add i64 %291, %293
  %296 = and i64 %294, 4294967295
  %297 = lshr i64 %294, 32
  %298 = mul nuw i64 %296, %297
  %299 = add i64 %287, %298
  %300 = getelementptr inbounds i8, ptr %267, i64 -32
  %301 = load i64, ptr %300, align 1
  %302 = xor i64 %301, 3143064850383918358
  %303 = add i64 %261, %301
  %304 = and i64 %302, 4294967295
  %305 = lshr i64 %302, 32
  %306 = mul nuw i64 %304, %305
  %307 = add i64 %262, %306
  %308 = getelementptr inbounds i8, ptr %267, i64 -24
  %309 = load i64, ptr %308, align 1
  %310 = xor i64 %309, -8071399103737053674
  %311 = add i64 %307, %309
  %312 = and i64 %310, 4294967295
  %313 = lshr i64 %310, 32
  %314 = mul nuw i64 %312, %313
  %315 = add i64 %303, %314
  %316 = getelementptr inbounds i8, ptr %267, i64 -16
  %317 = load i64, ptr %316, align 1
  %318 = xor i64 %317, 5030012605302946040
  %319 = add i64 %259, %317
  %320 = and i64 %318, 4294967295
  %321 = lshr i64 %318, 32
  %322 = mul nuw i64 %320, %321
  %323 = add i64 %260, %322
  %324 = getelementptr inbounds i8, ptr %267, i64 -8
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, -5825401622958753077
  %327 = add i64 %323, %325
  %328 = and i64 %326, 4294967295
  %329 = lshr i64 %326, 32
  %330 = mul nuw i64 %328, %329
  %331 = add i64 %319, %330
  %332 = mul i64 %1, -7046029288634856825
  %333 = xor i64 %279, 7914194659941938988
  %334 = xor i64 %283, -6611157965513653271
  %335 = zext i64 %333 to i128
  %336 = zext i64 %334 to i128
  %337 = mul nuw i128 %336, %335
  %338 = lshr i128 %337, 64
  %339 = xor i128 %338, %337
  %340 = trunc i128 %339 to i64
  %341 = add i64 %332, %340
  %342 = xor i64 %295, -1839215637059881052
  %343 = xor i64 %299, -3433288310154277810
  %344 = zext i64 %342 to i128
  %345 = zext i64 %343 to i128
  %346 = mul nuw i128 %345, %344
  %347 = lshr i128 %346, 64
  %348 = xor i128 %347, %346
  %349 = trunc i128 %348 to i64
  %350 = add i64 %341, %349
  %351 = xor i64 %311, 5046485836271438973
  %352 = xor i64 %315, -8055285457383852172
  %353 = zext i64 %351 to i128
  %354 = zext i64 %352 to i128
  %355 = mul nuw i128 %354, %353
  %356 = lshr i128 %355, 64
  %357 = xor i128 %356, %355
  %358 = trunc i128 %357 to i64
  %359 = add i64 %350, %358
  %360 = xor i64 %327, 5920048007935066598
  %361 = xor i64 %331, 7336514198459093435
  %362 = zext i64 %360 to i128
  %363 = zext i64 %361 to i128
  %364 = mul nuw i128 %363, %362
  %365 = lshr i128 %364, 64
  %366 = xor i128 %365, %364
  %367 = trunc i128 %366 to i64
  %368 = add i64 %359, %367
  %369 = lshr i64 %368, 37
  %370 = xor i64 %369, %368
  %371 = mul i64 %370, 1609587791953885689
  %372 = lshr i64 %371, 32
  %373 = xor i64 %372, %371
  ret i64 %373
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @XXH3_64bits_withSecret(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #13 {
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %113

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %40, !prof !11

8:                                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, %10
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %17, %15
  %19 = load i64, ptr %0, align 1
  %20 = xor i64 %13, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %22 = getelementptr inbounds i8, ptr %21, i64 -8
  %23 = load i64, ptr %22, align 1
  %24 = xor i64 %18, %23
  %25 = tail call noundef i64 @llvm.bswap.i64(i64 %20)
  %26 = add i64 %25, %1
  %27 = add i64 %26, %24
  %28 = zext i64 %20 to i128
  %29 = zext i64 %24 to i128
  %30 = mul nuw i128 %29, %28
  %31 = lshr i128 %30, 64
  %32 = xor i128 %31, %30
  %33 = trunc i128 %32 to i64
  %34 = add i64 %27, %33
  %35 = lshr i64 %34, 37
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587791953885689
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %278

40:                                               ; preds = %6
  %41 = icmp samesign ugt i64 %1, 3
  br i1 %41, label %42, label %68, !prof !11

42:                                               ; preds = %40
  %43 = load i32, ptr %0, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %45 = getelementptr inbounds i8, ptr %44, i64 -4
  %46 = load i32, ptr %45, align 1
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %50 = load i64, ptr %49, align 1
  %51 = xor i64 %50, %48
  %52 = zext i32 %46 to i64
  %53 = zext i32 %43 to i64
  %54 = shl nuw i64 %53, 32
  %55 = or disjoint i64 %54, %52
  %56 = xor i64 %51, %55
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 49)
  %58 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 24)
  %59 = xor i64 %57, %58
  %60 = xor i64 %59, %56
  %61 = mul i64 %60, -6939452855193903323
  %62 = lshr i64 %61, 35
  %63 = add nuw nsw i64 %62, %1
  %64 = xor i64 %63, %61
  %65 = mul i64 %64, -6939452855193903323
  %66 = lshr i64 %65, 28
  %67 = xor i64 %66, %65
  br label %278

68:                                               ; preds = %40
  %69 = icmp eq i64 %1, 0
  br i1 %69, label %99, label %70

70:                                               ; preds = %68
  %71 = load i8, ptr %0, align 1
  %72 = lshr i64 %1, 1
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 %72
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr i8, ptr %0, i64 %1
  %76 = getelementptr i8, ptr %75, i64 -1
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %71 to i64
  %79 = shl nuw nsw i64 %78, 16
  %80 = zext i8 %74 to i64
  %81 = shl nuw nsw i64 %80, 24
  %82 = or disjoint i64 %81, %79
  %83 = zext i8 %77 to i64
  %84 = or disjoint i64 %82, %83
  %85 = shl nuw nsw i64 %1, 8
  %86 = or disjoint i64 %84, %85
  %87 = load i32, ptr %2, align 1
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %89 = load i32, ptr %88, align 1
  %90 = xor i32 %89, %87
  %91 = zext i32 %90 to i64
  %92 = xor i64 %86, %91
  %93 = mul i64 %92, -4417276706812531889
  %94 = lshr i64 %93, 29
  %95 = xor i64 %94, %93
  %96 = mul i64 %95, 1609587929392839161
  %97 = lshr i64 %96, 32
  %98 = xor i64 %97, %96
  br label %278

99:                                               ; preds = %68
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %101 = load i64, ptr %100, align 1
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %103 = load i64, ptr %102, align 1
  %104 = xor i64 %103, %101
  %105 = lshr i64 %104, 33
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, -4417276706812531889
  %108 = lshr i64 %107, 29
  %109 = xor i64 %108, %107
  %110 = mul i64 %109, 1609587929392839161
  %111 = lshr i64 %110, 32
  %112 = xor i64 %111, %110
  br label %278

113:                                              ; preds = %4
  %114 = icmp ult i64 %1, 129
  br i1 %114, label %115, label %272

115:                                              ; preds = %113
  %116 = mul i64 %1, -7046029288634856825
  %117 = icmp samesign ugt i64 %1, 32
  br i1 %117, label %118, label %232

118:                                              ; preds = %115
  %119 = icmp samesign ugt i64 %1, 64
  br i1 %119, label %120, label %195

120:                                              ; preds = %118
  %121 = icmp samesign ugt i64 %1, 96
  br i1 %121, label %122, label %158

122:                                              ; preds = %120
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %125 = load i64, ptr %123, align 1
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %127 = load i64, ptr %126, align 1
  %128 = load i64, ptr %124, align 1
  %129 = xor i64 %128, %125
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %131, %127
  %133 = zext i64 %129 to i128
  %134 = zext i64 %132 to i128
  %135 = mul nuw i128 %134, %133
  %136 = lshr i128 %135, 64
  %137 = xor i128 %136, %135
  %138 = trunc i128 %137 to i64
  %139 = add i64 %116, %138
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %141 = getelementptr inbounds i8, ptr %140, i64 -64
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %143 = load i64, ptr %141, align 1
  %144 = getelementptr inbounds i8, ptr %140, i64 -56
  %145 = load i64, ptr %144, align 1
  %146 = load i64, ptr %142, align 1
  %147 = xor i64 %146, %143
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %149, %145
  %151 = zext i64 %147 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %139, %156
  br label %158

158:                                              ; preds = %122, %120
  %159 = phi i64 [ %157, %122 ], [ %116, %120 ]
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %161 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %162 = load i64, ptr %160, align 1
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %164 = load i64, ptr %163, align 1
  %165 = load i64, ptr %161, align 1
  %166 = xor i64 %165, %162
  %167 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %168 = load i64, ptr %167, align 1
  %169 = xor i64 %168, %164
  %170 = zext i64 %166 to i128
  %171 = zext i64 %169 to i128
  %172 = mul nuw i128 %171, %170
  %173 = lshr i128 %172, 64
  %174 = xor i128 %173, %172
  %175 = trunc i128 %174 to i64
  %176 = add i64 %159, %175
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %178 = getelementptr inbounds i8, ptr %177, i64 -48
  %179 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %180 = load i64, ptr %178, align 1
  %181 = getelementptr inbounds i8, ptr %177, i64 -40
  %182 = load i64, ptr %181, align 1
  %183 = load i64, ptr %179, align 1
  %184 = xor i64 %183, %180
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %186 = load i64, ptr %185, align 1
  %187 = xor i64 %186, %182
  %188 = zext i64 %184 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %176, %193
  br label %195

195:                                              ; preds = %158, %118
  %196 = phi i64 [ %194, %158 ], [ %116, %118 ]
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %198 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %199 = load i64, ptr %197, align 1
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %201 = load i64, ptr %200, align 1
  %202 = load i64, ptr %198, align 1
  %203 = xor i64 %202, %199
  %204 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %205 = load i64, ptr %204, align 1
  %206 = xor i64 %205, %201
  %207 = zext i64 %203 to i128
  %208 = zext i64 %206 to i128
  %209 = mul nuw i128 %208, %207
  %210 = lshr i128 %209, 64
  %211 = xor i128 %210, %209
  %212 = trunc i128 %211 to i64
  %213 = add i64 %196, %212
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %215 = getelementptr inbounds i8, ptr %214, i64 -32
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %217 = load i64, ptr %215, align 1
  %218 = getelementptr inbounds i8, ptr %214, i64 -24
  %219 = load i64, ptr %218, align 1
  %220 = load i64, ptr %216, align 1
  %221 = xor i64 %220, %217
  %222 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %223 = load i64, ptr %222, align 1
  %224 = xor i64 %223, %219
  %225 = zext i64 %221 to i128
  %226 = zext i64 %224 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %213, %230
  br label %232

232:                                              ; preds = %115, %195
  %233 = phi i64 [ %231, %195 ], [ %116, %115 ]
  %234 = load i64, ptr %0, align 1
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %236 = load i64, ptr %235, align 1
  %237 = load i64, ptr %2, align 1
  %238 = xor i64 %237, %234
  %239 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %240 = load i64, ptr %239, align 1
  %241 = xor i64 %240, %236
  %242 = zext i64 %238 to i128
  %243 = zext i64 %241 to i128
  %244 = mul nuw i128 %243, %242
  %245 = lshr i128 %244, 64
  %246 = xor i128 %245, %244
  %247 = trunc i128 %246 to i64
  %248 = add i64 %233, %247
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %250 = getelementptr inbounds i8, ptr %249, i64 -16
  %251 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %252 = load i64, ptr %250, align 1
  %253 = getelementptr inbounds i8, ptr %249, i64 -8
  %254 = load i64, ptr %253, align 1
  %255 = load i64, ptr %251, align 1
  %256 = xor i64 %255, %252
  %257 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %258 = load i64, ptr %257, align 1
  %259 = xor i64 %258, %254
  %260 = zext i64 %256 to i128
  %261 = zext i64 %259 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %248, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %278

272:                                              ; preds = %113
  %273 = icmp ult i64 %1, 241
  br i1 %273, label %274, label %276

274:                                              ; preds = %272
  %275 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0)
  br label %278

276:                                              ; preds = %272
  %277 = tail call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #27
  br label %278

278:                                              ; preds = %99, %70, %42, %8, %232, %274, %276
  %279 = phi i64 [ %271, %232 ], [ %275, %274 ], [ %277, %276 ], [ %39, %8 ], [ %67, %42 ], [ %98, %70 ], [ %112, %99 ]
  ret i64 %279
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #14 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %7, %8
  br i1 %11, label %235, label %12

12:                                               ; preds = %4
  %13 = icmp ult i64 %5, 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  br i1 %13, label %33, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %18 = load i64, ptr %15, align 1
  %19 = getelementptr inbounds i8, ptr %14, i64 -56
  %20 = load i64, ptr %19, align 1
  %21 = getelementptr inbounds i8, ptr %14, i64 -48
  %22 = load i64, ptr %21, align 1
  %23 = getelementptr inbounds i8, ptr %14, i64 -40
  %24 = load i64, ptr %23, align 1
  %25 = getelementptr inbounds i8, ptr %14, i64 -32
  %26 = load i64, ptr %25, align 1
  %27 = getelementptr inbounds i8, ptr %14, i64 -24
  %28 = load i64, ptr %27, align 1
  %29 = getelementptr inbounds i8, ptr %14, i64 -16
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds i8, ptr %14, i64 -8
  %32 = load i64, ptr %31, align 1
  br label %49

33:                                               ; preds = %12
  %34 = load i64, ptr %15, align 1
  %35 = getelementptr inbounds i8, ptr %14, i64 -56
  %36 = load i64, ptr %35, align 1
  %37 = getelementptr inbounds i8, ptr %14, i64 -48
  %38 = load i64, ptr %37, align 1
  %39 = getelementptr inbounds i8, ptr %14, i64 -40
  %40 = load i64, ptr %39, align 1
  %41 = getelementptr inbounds i8, ptr %14, i64 -32
  %42 = load i64, ptr %41, align 1
  %43 = getelementptr inbounds i8, ptr %14, i64 -24
  %44 = load i64, ptr %43, align 1
  %45 = getelementptr inbounds i8, ptr %14, i64 -16
  %46 = load i64, ptr %45, align 1
  %47 = getelementptr inbounds i8, ptr %14, i64 -8
  %48 = load i64, ptr %47, align 1
  br label %191

49:                                               ; preds = %16, %156
  %50 = phi i64 [ 2654435761, %16 ], [ %188, %156 ]
  %51 = phi i64 [ 2870177450012600261, %16 ], [ %184, %156 ]
  %52 = phi i64 [ 2246822519, %16 ], [ %180, %156 ]
  %53 = phi i64 [ -8796714831421723037, %16 ], [ %176, %156 ]
  %54 = phi i64 [ 1609587929392839161, %16 ], [ %172, %156 ]
  %55 = phi i64 [ -4417276706812531889, %16 ], [ %168, %156 ]
  %56 = phi i64 [ -7046029288634856825, %16 ], [ %164, %156 ]
  %57 = phi i64 [ 3266489917, %16 ], [ %160, %156 ]
  %58 = phi i64 [ 0, %16 ], [ %189, %156 ]
  %59 = mul i64 %58, %7
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 %59
  br label %61

61:                                               ; preds = %49, %61
  %62 = phi i64 [ %50, %49 ], [ %153, %61 ]
  %63 = phi i64 [ %51, %49 ], [ %149, %61 ]
  %64 = phi i64 [ %52, %49 ], [ %133, %61 ]
  %65 = phi i64 [ %53, %49 ], [ %129, %61 ]
  %66 = phi i64 [ %54, %49 ], [ %113, %61 ]
  %67 = phi i64 [ %55, %49 ], [ %109, %61 ]
  %68 = phi i64 [ %56, %49 ], [ %93, %61 ]
  %69 = phi i64 [ %57, %49 ], [ %89, %61 ]
  %70 = phi i64 [ 0, %49 ], [ %154, %61 ]
  %71 = shl i64 %70, 6
  %72 = getelementptr inbounds nuw i8, ptr %60, i64 %71
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %73, i32 0, i32 3, i32 1), !noalias !18
  %74 = shl i64 %70, 3
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 %74
  %76 = load i64, ptr %72, align 1
  %77 = load i64, ptr %75, align 1
  %78 = xor i64 %77, %76
  %79 = add i64 %68, %76
  %80 = and i64 %78, 4294967295
  %81 = lshr i64 %78, 32
  %82 = mul nuw i64 %80, %81
  %83 = add i64 %69, %82
  %84 = getelementptr inbounds nuw i8, ptr %72, i64 8
  %85 = load i64, ptr %84, align 1
  %86 = getelementptr inbounds nuw i8, ptr %75, i64 8
  %87 = load i64, ptr %86, align 1
  %88 = xor i64 %87, %85
  %89 = add i64 %83, %85
  %90 = and i64 %88, 4294967295
  %91 = lshr i64 %88, 32
  %92 = mul nuw i64 %90, %91
  %93 = add i64 %79, %92
  %94 = getelementptr inbounds nuw i8, ptr %72, i64 16
  %95 = load i64, ptr %94, align 1
  %96 = getelementptr inbounds nuw i8, ptr %75, i64 16
  %97 = load i64, ptr %96, align 1
  %98 = xor i64 %97, %95
  %99 = add i64 %66, %95
  %100 = and i64 %98, 4294967295
  %101 = lshr i64 %98, 32
  %102 = mul nuw i64 %100, %101
  %103 = add i64 %67, %102
  %104 = getelementptr inbounds nuw i8, ptr %72, i64 24
  %105 = load i64, ptr %104, align 1
  %106 = getelementptr inbounds nuw i8, ptr %75, i64 24
  %107 = load i64, ptr %106, align 1
  %108 = xor i64 %107, %105
  %109 = add i64 %103, %105
  %110 = and i64 %108, 4294967295
  %111 = lshr i64 %108, 32
  %112 = mul nuw i64 %110, %111
  %113 = add i64 %99, %112
  %114 = getelementptr inbounds nuw i8, ptr %72, i64 32
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = add i64 %64, %115
  %120 = and i64 %118, 4294967295
  %121 = lshr i64 %118, 32
  %122 = mul nuw i64 %120, %121
  %123 = add i64 %65, %122
  %124 = getelementptr inbounds nuw i8, ptr %72, i64 40
  %125 = load i64, ptr %124, align 1
  %126 = getelementptr inbounds nuw i8, ptr %75, i64 40
  %127 = load i64, ptr %126, align 1
  %128 = xor i64 %127, %125
  %129 = add i64 %123, %125
  %130 = and i64 %128, 4294967295
  %131 = lshr i64 %128, 32
  %132 = mul nuw i64 %130, %131
  %133 = add i64 %119, %132
  %134 = getelementptr inbounds nuw i8, ptr %72, i64 48
  %135 = load i64, ptr %134, align 1
  %136 = getelementptr inbounds nuw i8, ptr %75, i64 48
  %137 = load i64, ptr %136, align 1
  %138 = xor i64 %137, %135
  %139 = add i64 %62, %135
  %140 = and i64 %138, 4294967295
  %141 = lshr i64 %138, 32
  %142 = mul nuw i64 %140, %141
  %143 = add i64 %63, %142
  %144 = getelementptr inbounds nuw i8, ptr %72, i64 56
  %145 = load i64, ptr %144, align 1
  %146 = getelementptr inbounds nuw i8, ptr %75, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = xor i64 %147, %145
  %149 = add i64 %143, %145
  %150 = and i64 %148, 4294967295
  %151 = lshr i64 %148, 32
  %152 = mul nuw i64 %150, %151
  %153 = add i64 %139, %152
  %154 = add nuw nsw i64 %70, 1
  %155 = icmp eq i64 %154, %17
  br i1 %155, label %156, label %61

156:                                              ; preds = %61
  %157 = lshr i64 %89, 47
  %158 = xor i64 %18, %157
  %159 = xor i64 %158, %89
  %160 = mul i64 %159, 2654435761
  %161 = lshr i64 %93, 47
  %162 = xor i64 %20, %161
  %163 = xor i64 %162, %93
  %164 = mul i64 %163, 2654435761
  %165 = lshr i64 %109, 47
  %166 = xor i64 %22, %165
  %167 = xor i64 %166, %109
  %168 = mul i64 %167, 2654435761
  %169 = lshr i64 %113, 47
  %170 = xor i64 %24, %169
  %171 = xor i64 %170, %113
  %172 = mul i64 %171, 2654435761
  %173 = lshr i64 %129, 47
  %174 = xor i64 %26, %173
  %175 = xor i64 %174, %129
  %176 = mul i64 %175, 2654435761
  %177 = lshr i64 %133, 47
  %178 = xor i64 %28, %177
  %179 = xor i64 %178, %133
  %180 = mul i64 %179, 2654435761
  %181 = lshr i64 %149, 47
  %182 = xor i64 %30, %181
  %183 = xor i64 %182, %149
  %184 = mul i64 %183, 2654435761
  %185 = lshr i64 %153, 47
  %186 = xor i64 %32, %185
  %187 = xor i64 %186, %153
  %188 = mul i64 %187, 2654435761
  %189 = add nuw i64 %58, 1
  %190 = icmp ult i64 %189, %9
  br i1 %190, label %49, label %235

191:                                              ; preds = %33, %191
  %192 = phi i64 [ 2654435761, %33 ], [ %232, %191 ]
  %193 = phi i64 [ 2870177450012600261, %33 ], [ %228, %191 ]
  %194 = phi i64 [ 2246822519, %33 ], [ %224, %191 ]
  %195 = phi i64 [ -8796714831421723037, %33 ], [ %220, %191 ]
  %196 = phi i64 [ 1609587929392839161, %33 ], [ %216, %191 ]
  %197 = phi i64 [ -4417276706812531889, %33 ], [ %212, %191 ]
  %198 = phi i64 [ -7046029288634856825, %33 ], [ %208, %191 ]
  %199 = phi i64 [ 3266489917, %33 ], [ %204, %191 ]
  %200 = phi i64 [ 0, %33 ], [ %233, %191 ]
  %201 = lshr i64 %199, 47
  %202 = xor i64 %34, %201
  %203 = xor i64 %202, %199
  %204 = mul i64 %203, 2654435761
  %205 = lshr i64 %198, 47
  %206 = xor i64 %36, %205
  %207 = xor i64 %206, %198
  %208 = mul i64 %207, 2654435761
  %209 = lshr i64 %197, 47
  %210 = xor i64 %38, %209
  %211 = xor i64 %210, %197
  %212 = mul i64 %211, 2654435761
  %213 = lshr i64 %196, 47
  %214 = xor i64 %40, %213
  %215 = xor i64 %214, %196
  %216 = mul i64 %215, 2654435761
  %217 = lshr i64 %195, 47
  %218 = xor i64 %42, %217
  %219 = xor i64 %218, %195
  %220 = mul i64 %219, 2654435761
  %221 = lshr i64 %194, 47
  %222 = xor i64 %44, %221
  %223 = xor i64 %222, %194
  %224 = mul i64 %223, 2654435761
  %225 = lshr i64 %193, 47
  %226 = xor i64 %46, %225
  %227 = xor i64 %226, %193
  %228 = mul i64 %227, 2654435761
  %229 = lshr i64 %192, 47
  %230 = xor i64 %48, %229
  %231 = xor i64 %230, %192
  %232 = mul i64 %231, 2654435761
  %233 = add nuw i64 %200, 1
  %234 = icmp ult i64 %233, %9
  br i1 %234, label %191, label %235

235:                                              ; preds = %156, %191, %4
  %236 = phi i64 [ 2654435761, %4 ], [ %232, %191 ], [ %188, %156 ]
  %237 = phi i64 [ 2870177450012600261, %4 ], [ %228, %191 ], [ %184, %156 ]
  %238 = phi i64 [ 2246822519, %4 ], [ %224, %191 ], [ %180, %156 ]
  %239 = phi i64 [ -8796714831421723037, %4 ], [ %220, %191 ], [ %176, %156 ]
  %240 = phi i64 [ 1609587929392839161, %4 ], [ %216, %191 ], [ %172, %156 ]
  %241 = phi i64 [ -4417276706812531889, %4 ], [ %212, %191 ], [ %168, %156 ]
  %242 = phi i64 [ -7046029288634856825, %4 ], [ %208, %191 ], [ %164, %156 ]
  %243 = phi i64 [ 3266489917, %4 ], [ %204, %191 ], [ %160, %156 ]
  %244 = mul i64 %9, %7
  %245 = lshr i64 %10, 6
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 %244
  %247 = icmp ult i64 %10, 64
  br i1 %247, label %343, label %248

248:                                              ; preds = %235, %248
  %249 = phi i64 [ %340, %248 ], [ %236, %235 ]
  %250 = phi i64 [ %336, %248 ], [ %237, %235 ]
  %251 = phi i64 [ %320, %248 ], [ %238, %235 ]
  %252 = phi i64 [ %316, %248 ], [ %239, %235 ]
  %253 = phi i64 [ %300, %248 ], [ %240, %235 ]
  %254 = phi i64 [ %296, %248 ], [ %241, %235 ]
  %255 = phi i64 [ %280, %248 ], [ %242, %235 ]
  %256 = phi i64 [ %276, %248 ], [ %243, %235 ]
  %257 = phi i64 [ %341, %248 ], [ 0, %235 ]
  %258 = shl i64 %257, 6
  %259 = getelementptr inbounds nuw i8, ptr %246, i64 %258
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %260, i32 0, i32 3, i32 1), !noalias !21
  %261 = shl i64 %257, 3
  %262 = getelementptr inbounds nuw i8, ptr %2, i64 %261
  %263 = load i64, ptr %259, align 1
  %264 = load i64, ptr %262, align 1
  %265 = xor i64 %264, %263
  %266 = add i64 %255, %263
  %267 = and i64 %265, 4294967295
  %268 = lshr i64 %265, 32
  %269 = mul nuw i64 %267, %268
  %270 = add i64 %256, %269
  %271 = getelementptr inbounds nuw i8, ptr %259, i64 8
  %272 = load i64, ptr %271, align 1
  %273 = getelementptr inbounds nuw i8, ptr %262, i64 8
  %274 = load i64, ptr %273, align 1
  %275 = xor i64 %274, %272
  %276 = add i64 %270, %272
  %277 = and i64 %275, 4294967295
  %278 = lshr i64 %275, 32
  %279 = mul nuw i64 %277, %278
  %280 = add i64 %266, %279
  %281 = getelementptr inbounds nuw i8, ptr %259, i64 16
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %262, i64 16
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = add i64 %253, %282
  %287 = and i64 %285, 4294967295
  %288 = lshr i64 %285, 32
  %289 = mul nuw i64 %287, %288
  %290 = add i64 %254, %289
  %291 = getelementptr inbounds nuw i8, ptr %259, i64 24
  %292 = load i64, ptr %291, align 1
  %293 = getelementptr inbounds nuw i8, ptr %262, i64 24
  %294 = load i64, ptr %293, align 1
  %295 = xor i64 %294, %292
  %296 = add i64 %290, %292
  %297 = and i64 %295, 4294967295
  %298 = lshr i64 %295, 32
  %299 = mul nuw i64 %297, %298
  %300 = add i64 %286, %299
  %301 = getelementptr inbounds nuw i8, ptr %259, i64 32
  %302 = load i64, ptr %301, align 1
  %303 = getelementptr inbounds nuw i8, ptr %262, i64 32
  %304 = load i64, ptr %303, align 1
  %305 = xor i64 %304, %302
  %306 = add i64 %251, %302
  %307 = and i64 %305, 4294967295
  %308 = lshr i64 %305, 32
  %309 = mul nuw i64 %307, %308
  %310 = add i64 %252, %309
  %311 = getelementptr inbounds nuw i8, ptr %259, i64 40
  %312 = load i64, ptr %311, align 1
  %313 = getelementptr inbounds nuw i8, ptr %262, i64 40
  %314 = load i64, ptr %313, align 1
  %315 = xor i64 %314, %312
  %316 = add i64 %310, %312
  %317 = and i64 %315, 4294967295
  %318 = lshr i64 %315, 32
  %319 = mul nuw i64 %317, %318
  %320 = add i64 %306, %319
  %321 = getelementptr inbounds nuw i8, ptr %259, i64 48
  %322 = load i64, ptr %321, align 1
  %323 = getelementptr inbounds nuw i8, ptr %262, i64 48
  %324 = load i64, ptr %323, align 1
  %325 = xor i64 %324, %322
  %326 = add i64 %249, %322
  %327 = and i64 %325, 4294967295
  %328 = lshr i64 %325, 32
  %329 = mul nuw i64 %327, %328
  %330 = add i64 %250, %329
  %331 = getelementptr inbounds nuw i8, ptr %259, i64 56
  %332 = load i64, ptr %331, align 1
  %333 = getelementptr inbounds nuw i8, ptr %262, i64 56
  %334 = load i64, ptr %333, align 1
  %335 = xor i64 %334, %332
  %336 = add i64 %330, %332
  %337 = and i64 %335, 4294967295
  %338 = lshr i64 %335, 32
  %339 = mul nuw i64 %337, %338
  %340 = add i64 %326, %339
  %341 = add nuw nsw i64 %257, 1
  %342 = icmp samesign ult i64 %341, %245
  br i1 %342, label %248, label %343

343:                                              ; preds = %248, %235
  %344 = phi i64 [ %236, %235 ], [ %340, %248 ]
  %345 = phi i64 [ %237, %235 ], [ %336, %248 ]
  %346 = phi i64 [ %238, %235 ], [ %320, %248 ]
  %347 = phi i64 [ %239, %235 ], [ %316, %248 ]
  %348 = phi i64 [ %240, %235 ], [ %300, %248 ]
  %349 = phi i64 [ %241, %235 ], [ %296, %248 ]
  %350 = phi i64 [ %242, %235 ], [ %280, %248 ]
  %351 = phi i64 [ %243, %235 ], [ %276, %248 ]
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %353 = getelementptr inbounds i8, ptr %352, i64 -64
  %354 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %355 = getelementptr inbounds i8, ptr %354, i64 -71
  %356 = load i64, ptr %353, align 1
  %357 = load i64, ptr %355, align 1
  %358 = xor i64 %357, %356
  %359 = add i64 %350, %356
  %360 = and i64 %358, 4294967295
  %361 = lshr i64 %358, 32
  %362 = mul nuw i64 %360, %361
  %363 = add i64 %351, %362
  %364 = getelementptr inbounds i8, ptr %352, i64 -56
  %365 = load i64, ptr %364, align 1
  %366 = getelementptr inbounds i8, ptr %354, i64 -63
  %367 = load i64, ptr %366, align 1
  %368 = xor i64 %367, %365
  %369 = add i64 %363, %365
  %370 = and i64 %368, 4294967295
  %371 = lshr i64 %368, 32
  %372 = mul nuw i64 %370, %371
  %373 = add i64 %359, %372
  %374 = getelementptr inbounds i8, ptr %352, i64 -48
  %375 = load i64, ptr %374, align 1
  %376 = getelementptr inbounds i8, ptr %354, i64 -55
  %377 = load i64, ptr %376, align 1
  %378 = xor i64 %377, %375
  %379 = add i64 %348, %375
  %380 = and i64 %378, 4294967295
  %381 = lshr i64 %378, 32
  %382 = mul nuw i64 %380, %381
  %383 = add i64 %349, %382
  %384 = getelementptr inbounds i8, ptr %352, i64 -40
  %385 = load i64, ptr %384, align 1
  %386 = getelementptr inbounds i8, ptr %354, i64 -47
  %387 = load i64, ptr %386, align 1
  %388 = xor i64 %387, %385
  %389 = add i64 %383, %385
  %390 = and i64 %388, 4294967295
  %391 = lshr i64 %388, 32
  %392 = mul nuw i64 %390, %391
  %393 = add i64 %379, %392
  %394 = getelementptr inbounds i8, ptr %352, i64 -32
  %395 = load i64, ptr %394, align 1
  %396 = getelementptr inbounds i8, ptr %354, i64 -39
  %397 = load i64, ptr %396, align 1
  %398 = xor i64 %397, %395
  %399 = add i64 %346, %395
  %400 = and i64 %398, 4294967295
  %401 = lshr i64 %398, 32
  %402 = mul nuw i64 %400, %401
  %403 = add i64 %347, %402
  %404 = getelementptr inbounds i8, ptr %352, i64 -24
  %405 = load i64, ptr %404, align 1
  %406 = getelementptr inbounds i8, ptr %354, i64 -31
  %407 = load i64, ptr %406, align 1
  %408 = xor i64 %407, %405
  %409 = add i64 %403, %405
  %410 = and i64 %408, 4294967295
  %411 = lshr i64 %408, 32
  %412 = mul nuw i64 %410, %411
  %413 = add i64 %399, %412
  %414 = getelementptr inbounds i8, ptr %352, i64 -16
  %415 = load i64, ptr %414, align 1
  %416 = getelementptr inbounds i8, ptr %354, i64 -23
  %417 = load i64, ptr %416, align 1
  %418 = xor i64 %417, %415
  %419 = add i64 %344, %415
  %420 = and i64 %418, 4294967295
  %421 = lshr i64 %418, 32
  %422 = mul nuw i64 %420, %421
  %423 = add i64 %345, %422
  %424 = getelementptr inbounds i8, ptr %352, i64 -8
  %425 = load i64, ptr %424, align 1
  %426 = getelementptr inbounds i8, ptr %354, i64 -15
  %427 = load i64, ptr %426, align 1
  %428 = xor i64 %427, %425
  %429 = add i64 %423, %425
  %430 = and i64 %428, 4294967295
  %431 = lshr i64 %428, 32
  %432 = mul nuw i64 %430, %431
  %433 = add i64 %419, %432
  %434 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %435 = mul i64 %1, -7046029288634856825
  %436 = load i64, ptr %434, align 1, !alias.scope !24, !noalias !27
  %437 = xor i64 %436, %369
  %438 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %439 = load i64, ptr %438, align 1, !alias.scope !24, !noalias !27
  %440 = xor i64 %439, %373
  %441 = zext i64 %437 to i128
  %442 = zext i64 %440 to i128
  %443 = mul nuw i128 %442, %441
  %444 = lshr i128 %443, 64
  %445 = xor i128 %444, %443
  %446 = trunc i128 %445 to i64
  %447 = add i64 %435, %446
  %448 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %449 = load i64, ptr %448, align 1, !alias.scope !24, !noalias !27
  %450 = xor i64 %449, %389
  %451 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %452 = load i64, ptr %451, align 1, !alias.scope !24, !noalias !27
  %453 = xor i64 %452, %393
  %454 = zext i64 %450 to i128
  %455 = zext i64 %453 to i128
  %456 = mul nuw i128 %455, %454
  %457 = lshr i128 %456, 64
  %458 = xor i128 %457, %456
  %459 = trunc i128 %458 to i64
  %460 = add i64 %447, %459
  %461 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %462 = load i64, ptr %461, align 1, !alias.scope !24, !noalias !27
  %463 = xor i64 %462, %409
  %464 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %465 = load i64, ptr %464, align 1, !alias.scope !24, !noalias !27
  %466 = xor i64 %465, %413
  %467 = zext i64 %463 to i128
  %468 = zext i64 %466 to i128
  %469 = mul nuw i128 %468, %467
  %470 = lshr i128 %469, 64
  %471 = xor i128 %470, %469
  %472 = trunc i128 %471 to i64
  %473 = add i64 %460, %472
  %474 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %475 = load i64, ptr %474, align 1, !alias.scope !24, !noalias !27
  %476 = xor i64 %475, %429
  %477 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %478 = load i64, ptr %477, align 1, !alias.scope !24, !noalias !27
  %479 = xor i64 %478, %433
  %480 = zext i64 %476 to i128
  %481 = zext i64 %479 to i128
  %482 = mul nuw i128 %481, %480
  %483 = lshr i128 %482, 64
  %484 = xor i128 %483, %482
  %485 = trunc i128 %484 to i64
  %486 = add i64 %473, %485
  %487 = lshr i64 %486, 37
  %488 = xor i64 %487, %486
  %489 = mul i64 %488, 1609587791953885689
  %490 = lshr i64 %489, 32
  %491 = xor i64 %490, %489
  ret i64 %491
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @XXH3_64bits_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #15 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %99

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %31, !prof !11

7:                                                ; preds = %5
  %8 = add i64 %2, 7458650908927343033
  %9 = sub i64 -5812251307325107654, %2
  %10 = load i64, ptr %0, align 1
  %11 = xor i64 %10, %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = xor i64 %14, %9
  %16 = tail call noundef i64 @llvm.bswap.i64(i64 %11)
  %17 = add i64 %16, %1
  %18 = add i64 %17, %15
  %19 = zext i64 %11 to i128
  %20 = zext i64 %15 to i128
  %21 = mul nuw i128 %20, %19
  %22 = lshr i128 %21, 64
  %23 = xor i128 %22, %21
  %24 = trunc i128 %23 to i64
  %25 = add i64 %18, %24
  %26 = lshr i64 %25, 37
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, 1609587791953885689
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %28
  br label %249

31:                                               ; preds = %5
  %32 = icmp samesign ugt i64 %1, 3
  br i1 %32, label %33, label %60, !prof !11

33:                                               ; preds = %31
  %34 = trunc i64 %2 to i32
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = zext i32 %35 to i64
  %37 = shl nuw i64 %36, 32
  %38 = xor i64 %37, %2
  %39 = load i32, ptr %0, align 1
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %41 = getelementptr inbounds i8, ptr %40, i64 -4
  %42 = load i32, ptr %41, align 1
  %43 = sub i64 -4090762196417718878, %38
  %44 = zext i32 %42 to i64
  %45 = zext i32 %39 to i64
  %46 = shl nuw i64 %45, 32
  %47 = or disjoint i64 %46, %44
  %48 = xor i64 %47, %43
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 49)
  %50 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 24)
  %51 = xor i64 %49, %50
  %52 = xor i64 %51, %48
  %53 = mul i64 %52, -6939452855193903323
  %54 = lshr i64 %53, 35
  %55 = add nuw nsw i64 %54, %1
  %56 = xor i64 %55, %53
  %57 = mul i64 %56, -6939452855193903323
  %58 = lshr i64 %57, 28
  %59 = xor i64 %58, %57
  br label %249

60:                                               ; preds = %31
  %61 = icmp eq i64 %1, 0
  br i1 %61, label %89, label %62

62:                                               ; preds = %60
  %63 = load i8, ptr %0, align 1
  %64 = lshr i64 %1, 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr i8, ptr %0, i64 %1
  %68 = getelementptr i8, ptr %67, i64 -1
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %63 to i64
  %71 = shl nuw nsw i64 %70, 16
  %72 = zext i8 %66 to i64
  %73 = shl nuw nsw i64 %72, 24
  %74 = or disjoint i64 %73, %71
  %75 = zext i8 %69 to i64
  %76 = or disjoint i64 %74, %75
  %77 = shl nuw nsw i64 %1, 8
  %78 = or disjoint i64 %76, %77
  %79 = add i64 %2, 2267503259
  %80 = xor i64 %78, %79
  %81 = lshr i64 %80, 33
  %82 = xor i64 %81, %80
  %83 = mul i64 %82, -4417276706812531889
  %84 = lshr i64 %83, 29
  %85 = xor i64 %84, %83
  %86 = mul i64 %85, 1609587929392839161
  %87 = lshr i64 %86, 32
  %88 = xor i64 %87, %86
  br label %249

89:                                               ; preds = %60
  %90 = xor i64 %2, -8707998980786479652
  %91 = lshr i64 %90, 33
  %92 = xor i64 %91, %90
  %93 = mul i64 %92, -4417276706812531889
  %94 = lshr i64 %93, 29
  %95 = xor i64 %94, %93
  %96 = mul i64 %95, 1609587929392839161
  %97 = lshr i64 %96, 32
  %98 = xor i64 %97, %96
  br label %249

99:                                               ; preds = %3
  %100 = icmp ult i64 %1, 129
  br i1 %100, label %101, label %243

101:                                              ; preds = %99
  %102 = mul i64 %1, -7046029288634856825
  %103 = icmp samesign ugt i64 %1, 32
  br i1 %103, label %104, label %206

104:                                              ; preds = %101
  %105 = icmp samesign ugt i64 %1, 64
  br i1 %105, label %106, label %173

106:                                              ; preds = %104
  %107 = icmp samesign ugt i64 %1, 96
  br i1 %107, label %108, label %140

108:                                              ; preds = %106
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %110 = load i64, ptr %109, align 1
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %112 = load i64, ptr %111, align 1
  %113 = add i64 %2, 4554437623014685352
  %114 = xor i64 %110, %113
  %115 = sub i64 2111919702937427193, %2
  %116 = xor i64 %112, %115
  %117 = zext i64 %114 to i128
  %118 = zext i64 %116 to i128
  %119 = mul nuw i128 %118, %117
  %120 = lshr i128 %119, 64
  %121 = xor i128 %120, %119
  %122 = trunc i128 %121 to i64
  %123 = add i64 %102, %122
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %125 = getelementptr inbounds i8, ptr %124, i64 -64
  %126 = load i64, ptr %125, align 1
  %127 = getelementptr inbounds i8, ptr %124, i64 -56
  %128 = load i64, ptr %127, align 1
  %129 = add i64 %2, 3556072174620004746
  %130 = xor i64 %126, %129
  %131 = sub i64 7238261902898274248, %2
  %132 = xor i64 %128, %131
  %133 = zext i64 %130 to i128
  %134 = zext i64 %132 to i128
  %135 = mul nuw i128 %134, %133
  %136 = lshr i128 %135, 64
  %137 = xor i128 %136, %135
  %138 = trunc i128 %137 to i64
  %139 = add i64 %123, %138
  br label %140

140:                                              ; preds = %108, %106
  %141 = phi i64 [ %139, %108 ], [ %102, %106 ]
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %143 = load i64, ptr %142, align 1
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %145 = load i64, ptr %144, align 1
  %146 = add i64 %2, -3818837453329782724
  %147 = xor i64 %143, %146
  %148 = sub i64 -6688317018830679928, %2
  %149 = xor i64 %145, %148
  %150 = zext i64 %147 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %141, %155
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %158 = getelementptr inbounds i8, ptr %157, i64 -48
  %159 = load i64, ptr %158, align 1
  %160 = getelementptr inbounds i8, ptr %157, i64 -40
  %161 = load i64, ptr %160, align 1
  %162 = add i64 %2, 5690594596133299313
  %163 = xor i64 %159, %162
  %164 = sub i64 -2833645246901970632, %2
  %165 = xor i64 %161, %164
  %166 = zext i64 %163 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %156, %171
  br label %173

173:                                              ; preds = %140, %104
  %174 = phi i64 [ %172, %140 ], [ %102, %104 ]
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %176 = load i64, ptr %175, align 1
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %178 = load i64, ptr %177, align 1
  %179 = add i64 %2, 8711581037947681227
  %180 = xor i64 %176, %179
  %181 = sub i64 2410270004345854594, %2
  %182 = xor i64 %178, %181
  %183 = zext i64 %180 to i128
  %184 = zext i64 %182 to i128
  %185 = mul nuw i128 %184, %183
  %186 = lshr i128 %185, 64
  %187 = xor i128 %186, %185
  %188 = trunc i128 %187 to i64
  %189 = add i64 %174, %188
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %191 = getelementptr inbounds i8, ptr %190, i64 -32
  %192 = load i64, ptr %191, align 1
  %193 = getelementptr inbounds i8, ptr %190, i64 -24
  %194 = load i64, ptr %193, align 1
  %195 = add i64 %2, -8204357891075471176
  %196 = xor i64 %192, %195
  %197 = sub i64 5487137525590930912, %2
  %198 = xor i64 %194, %197
  %199 = zext i64 %196 to i128
  %200 = zext i64 %198 to i128
  %201 = mul nuw i128 %200, %199
  %202 = lshr i128 %201, 64
  %203 = xor i128 %202, %201
  %204 = trunc i128 %203 to i64
  %205 = add i64 %189, %204
  br label %206

206:                                              ; preds = %101, %173
  %207 = phi i64 [ %205, %173 ], [ %102, %101 ]
  %208 = load i64, ptr %0, align 1
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %210 = load i64, ptr %209, align 1
  %211 = add i64 %2, -4734510112055689544
  %212 = xor i64 %208, %211
  %213 = sub i64 2066345149520216444, %2
  %214 = xor i64 %210, %213
  %215 = zext i64 %212 to i128
  %216 = zext i64 %214 to i128
  %217 = mul nuw i128 %216, %215
  %218 = lshr i128 %217, 64
  %219 = xor i128 %218, %217
  %220 = trunc i128 %219 to i64
  %221 = add i64 %207, %220
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %223 = getelementptr inbounds i8, ptr %222, i64 -16
  %224 = load i64, ptr %223, align 1
  %225 = getelementptr inbounds i8, ptr %222, i64 -8
  %226 = load i64, ptr %225, align 1
  %227 = add i64 %2, -2623469361688619810
  %228 = xor i64 %224, %227
  %229 = sub i64 2262974939099578482, %2
  %230 = xor i64 %226, %229
  %231 = zext i64 %228 to i128
  %232 = zext i64 %230 to i128
  %233 = mul nuw i128 %232, %231
  %234 = lshr i128 %233, 64
  %235 = xor i128 %234, %233
  %236 = trunc i128 %235 to i64
  %237 = add i64 %221, %236
  %238 = lshr i64 %237, 37
  %239 = xor i64 %238, %237
  %240 = mul i64 %239, 1609587791953885689
  %241 = lshr i64 %240, 32
  %242 = xor i64 %241, %240
  br label %249

243:                                              ; preds = %99
  %244 = icmp ult i64 %1, 241
  br i1 %244, label %245, label %247

245:                                              ; preds = %243
  %246 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2)
  br label %249

247:                                              ; preds = %243
  %248 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #27
  br label %249

249:                                              ; preds = %89, %62, %33, %7, %206, %245, %247
  %250 = phi i64 [ %242, %206 ], [ %246, %245 ], [ %248, %247 ], [ %30, %7 ], [ %59, %33 ], [ %88, %62 ], [ %98, %89 ]
  ret i64 %250
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #16 {
  %4 = alloca [192 x i8], align 8
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %378

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %153, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %118
  %12 = phi i64 [ 2654435761, %9 ], [ %150, %118 ]
  %13 = phi i64 [ 2870177450012600261, %9 ], [ %146, %118 ]
  %14 = phi i64 [ 2246822519, %9 ], [ %142, %118 ]
  %15 = phi i64 [ -8796714831421723037, %9 ], [ %138, %118 ]
  %16 = phi i64 [ 1609587929392839161, %9 ], [ %134, %118 ]
  %17 = phi i64 [ -4417276706812531889, %9 ], [ %130, %118 ]
  %18 = phi i64 [ -7046029288634856825, %9 ], [ %126, %118 ]
  %19 = phi i64 [ 3266489917, %9 ], [ %122, %118 ]
  %20 = phi i64 [ 0, %9 ], [ %151, %118 ]
  %21 = shl i64 %20, 10
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 %21
  br label %23

23:                                               ; preds = %11, %23
  %24 = phi i64 [ %12, %11 ], [ %115, %23 ]
  %25 = phi i64 [ %13, %11 ], [ %111, %23 ]
  %26 = phi i64 [ %14, %11 ], [ %95, %23 ]
  %27 = phi i64 [ %15, %11 ], [ %91, %23 ]
  %28 = phi i64 [ %16, %11 ], [ %75, %23 ]
  %29 = phi i64 [ %17, %11 ], [ %71, %23 ]
  %30 = phi i64 [ %18, %11 ], [ %55, %23 ]
  %31 = phi i64 [ %19, %11 ], [ %51, %23 ]
  %32 = phi i64 [ 0, %11 ], [ %116, %23 ]
  %33 = shl nuw nsw i64 %32, 6
  %34 = getelementptr inbounds nuw i8, ptr %22, i64 %33
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %35, i32 0, i32 3, i32 1), !noalias !29
  %36 = shl nuw nsw i64 %32, 3
  %37 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %36
  %38 = load i64, ptr %34, align 1
  %39 = load i64, ptr %37, align 8
  %40 = xor i64 %39, %38
  %41 = add i64 %30, %38
  %42 = and i64 %40, 4294967295
  %43 = lshr i64 %40, 32
  %44 = mul nuw i64 %42, %43
  %45 = add i64 %31, %44
  %46 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %49 = load i64, ptr %48, align 8
  %50 = xor i64 %49, %47
  %51 = add i64 %45, %47
  %52 = and i64 %50, 4294967295
  %53 = lshr i64 %50, 32
  %54 = mul nuw i64 %52, %53
  %55 = add i64 %41, %54
  %56 = getelementptr inbounds nuw i8, ptr %34, i64 16
  %57 = load i64, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %59 = load i64, ptr %58, align 8
  %60 = xor i64 %59, %57
  %61 = add i64 %28, %57
  %62 = and i64 %60, 4294967295
  %63 = lshr i64 %60, 32
  %64 = mul nuw i64 %62, %63
  %65 = add i64 %29, %64
  %66 = getelementptr inbounds nuw i8, ptr %34, i64 24
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %69 = load i64, ptr %68, align 8
  %70 = xor i64 %69, %67
  %71 = add i64 %65, %67
  %72 = and i64 %70, 4294967295
  %73 = lshr i64 %70, 32
  %74 = mul nuw i64 %72, %73
  %75 = add i64 %61, %74
  %76 = getelementptr inbounds nuw i8, ptr %34, i64 32
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %79 = load i64, ptr %78, align 8
  %80 = xor i64 %79, %77
  %81 = add i64 %26, %77
  %82 = and i64 %80, 4294967295
  %83 = lshr i64 %80, 32
  %84 = mul nuw i64 %82, %83
  %85 = add i64 %27, %84
  %86 = getelementptr inbounds nuw i8, ptr %34, i64 40
  %87 = load i64, ptr %86, align 1
  %88 = getelementptr inbounds nuw i8, ptr %37, i64 40
  %89 = load i64, ptr %88, align 8
  %90 = xor i64 %89, %87
  %91 = add i64 %85, %87
  %92 = and i64 %90, 4294967295
  %93 = lshr i64 %90, 32
  %94 = mul nuw i64 %92, %93
  %95 = add i64 %81, %94
  %96 = getelementptr inbounds nuw i8, ptr %34, i64 48
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %37, i64 48
  %99 = load i64, ptr %98, align 8
  %100 = xor i64 %99, %97
  %101 = add i64 %24, %97
  %102 = and i64 %100, 4294967295
  %103 = lshr i64 %100, 32
  %104 = mul nuw i64 %102, %103
  %105 = add i64 %25, %104
  %106 = getelementptr inbounds nuw i8, ptr %34, i64 56
  %107 = load i64, ptr %106, align 1
  %108 = getelementptr inbounds nuw i8, ptr %37, i64 56
  %109 = load i64, ptr %108, align 8
  %110 = xor i64 %109, %107
  %111 = add i64 %105, %107
  %112 = and i64 %110, 4294967295
  %113 = lshr i64 %110, 32
  %114 = mul nuw i64 %112, %113
  %115 = add i64 %101, %114
  %116 = add nuw nsw i64 %32, 1
  %117 = icmp eq i64 %116, 16
  br i1 %117, label %118, label %23

118:                                              ; preds = %23
  %119 = lshr i64 %51, 47
  %120 = xor i64 %119, %51
  %121 = xor i64 %120, -4329134394285701654
  %122 = mul i64 %121, 2654435761
  %123 = lshr i64 %55, 47
  %124 = xor i64 %123, %55
  %125 = xor i64 %124, -1485321483350670907
  %126 = mul i64 %125, 2654435761
  %127 = lshr i64 %71, 47
  %128 = xor i64 %127, %71
  %129 = xor i64 %128, 5321830579834785047
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %75, 47
  %132 = xor i64 %131, %75
  %133 = xor i64 %132, -7032137544937171245
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %91, 47
  %136 = xor i64 %135, %91
  %137 = xor i64 %136, -242834301215959509
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %95, 47
  %140 = xor i64 %139, %95
  %141 = xor i64 %140, -3588858202114426737
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %111, 47
  %144 = xor i64 %143, %111
  %145 = xor i64 %144, 2883454493032893253
  %146 = mul i64 %145, 2654435761
  %147 = lshr i64 %115, 47
  %148 = xor i64 %147, %115
  %149 = xor i64 %148, 9097354517224871855
  %150 = mul i64 %149, 2654435761
  %151 = add nuw nsw i64 %20, 1
  %152 = icmp eq i64 %151, %10
  br i1 %152, label %153, label %11

153:                                              ; preds = %118, %6
  %154 = phi i64 [ 2654435761, %6 ], [ %150, %118 ]
  %155 = phi i64 [ 2870177450012600261, %6 ], [ %146, %118 ]
  %156 = phi i64 [ 2246822519, %6 ], [ %142, %118 ]
  %157 = phi i64 [ -8796714831421723037, %6 ], [ %138, %118 ]
  %158 = phi i64 [ 1609587929392839161, %6 ], [ %134, %118 ]
  %159 = phi i64 [ -4417276706812531889, %6 ], [ %130, %118 ]
  %160 = phi i64 [ -7046029288634856825, %6 ], [ %126, %118 ]
  %161 = phi i64 [ 3266489917, %6 ], [ %122, %118 ]
  %162 = and i64 %7, -1024
  %163 = lshr i64 %7, 6
  %164 = and i64 %163, 15
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 %162
  %166 = icmp eq i64 %164, 0
  br i1 %166, label %262, label %167

167:                                              ; preds = %153, %167
  %168 = phi i64 [ %259, %167 ], [ %154, %153 ]
  %169 = phi i64 [ %255, %167 ], [ %155, %153 ]
  %170 = phi i64 [ %239, %167 ], [ %156, %153 ]
  %171 = phi i64 [ %235, %167 ], [ %157, %153 ]
  %172 = phi i64 [ %219, %167 ], [ %158, %153 ]
  %173 = phi i64 [ %215, %167 ], [ %159, %153 ]
  %174 = phi i64 [ %199, %167 ], [ %160, %153 ]
  %175 = phi i64 [ %195, %167 ], [ %161, %153 ]
  %176 = phi i64 [ %260, %167 ], [ 0, %153 ]
  %177 = shl i64 %176, 6
  %178 = getelementptr inbounds nuw i8, ptr %165, i64 %177
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %179, i32 0, i32 3, i32 1), !noalias !32
  %180 = shl i64 %176, 3
  %181 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %180
  %182 = load i64, ptr %178, align 1
  %183 = load i64, ptr %181, align 8
  %184 = xor i64 %183, %182
  %185 = add i64 %174, %182
  %186 = and i64 %184, 4294967295
  %187 = lshr i64 %184, 32
  %188 = mul nuw i64 %186, %187
  %189 = add i64 %175, %188
  %190 = getelementptr inbounds nuw i8, ptr %178, i64 8
  %191 = load i64, ptr %190, align 1
  %192 = getelementptr inbounds nuw i8, ptr %181, i64 8
  %193 = load i64, ptr %192, align 8
  %194 = xor i64 %193, %191
  %195 = add i64 %189, %191
  %196 = and i64 %194, 4294967295
  %197 = lshr i64 %194, 32
  %198 = mul nuw i64 %196, %197
  %199 = add i64 %185, %198
  %200 = getelementptr inbounds nuw i8, ptr %178, i64 16
  %201 = load i64, ptr %200, align 1
  %202 = getelementptr inbounds nuw i8, ptr %181, i64 16
  %203 = load i64, ptr %202, align 8
  %204 = xor i64 %203, %201
  %205 = add i64 %172, %201
  %206 = and i64 %204, 4294967295
  %207 = lshr i64 %204, 32
  %208 = mul nuw i64 %206, %207
  %209 = add i64 %173, %208
  %210 = getelementptr inbounds nuw i8, ptr %178, i64 24
  %211 = load i64, ptr %210, align 1
  %212 = getelementptr inbounds nuw i8, ptr %181, i64 24
  %213 = load i64, ptr %212, align 8
  %214 = xor i64 %213, %211
  %215 = add i64 %209, %211
  %216 = and i64 %214, 4294967295
  %217 = lshr i64 %214, 32
  %218 = mul nuw i64 %216, %217
  %219 = add i64 %205, %218
  %220 = getelementptr inbounds nuw i8, ptr %178, i64 32
  %221 = load i64, ptr %220, align 1
  %222 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %223 = load i64, ptr %222, align 8
  %224 = xor i64 %223, %221
  %225 = add i64 %170, %221
  %226 = and i64 %224, 4294967295
  %227 = lshr i64 %224, 32
  %228 = mul nuw i64 %226, %227
  %229 = add i64 %171, %228
  %230 = getelementptr inbounds nuw i8, ptr %178, i64 40
  %231 = load i64, ptr %230, align 1
  %232 = getelementptr inbounds nuw i8, ptr %181, i64 40
  %233 = load i64, ptr %232, align 8
  %234 = xor i64 %233, %231
  %235 = add i64 %229, %231
  %236 = and i64 %234, 4294967295
  %237 = lshr i64 %234, 32
  %238 = mul nuw i64 %236, %237
  %239 = add i64 %225, %238
  %240 = getelementptr inbounds nuw i8, ptr %178, i64 48
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %181, i64 48
  %243 = load i64, ptr %242, align 8
  %244 = xor i64 %243, %241
  %245 = add i64 %168, %241
  %246 = and i64 %244, 4294967295
  %247 = lshr i64 %244, 32
  %248 = mul nuw i64 %246, %247
  %249 = add i64 %169, %248
  %250 = getelementptr inbounds nuw i8, ptr %178, i64 56
  %251 = load i64, ptr %250, align 1
  %252 = getelementptr inbounds nuw i8, ptr %181, i64 56
  %253 = load i64, ptr %252, align 8
  %254 = xor i64 %253, %251
  %255 = add i64 %249, %251
  %256 = and i64 %254, 4294967295
  %257 = lshr i64 %254, 32
  %258 = mul nuw i64 %256, %257
  %259 = add i64 %245, %258
  %260 = add nuw nsw i64 %176, 1
  %261 = icmp eq i64 %260, %164
  br i1 %261, label %262, label %167

262:                                              ; preds = %167, %153
  %263 = phi i64 [ %154, %153 ], [ %259, %167 ]
  %264 = phi i64 [ %155, %153 ], [ %255, %167 ]
  %265 = phi i64 [ %156, %153 ], [ %239, %167 ]
  %266 = phi i64 [ %157, %153 ], [ %235, %167 ]
  %267 = phi i64 [ %158, %153 ], [ %219, %167 ]
  %268 = phi i64 [ %159, %153 ], [ %215, %167 ]
  %269 = phi i64 [ %160, %153 ], [ %199, %167 ]
  %270 = phi i64 [ %161, %153 ], [ %195, %167 ]
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %272 = getelementptr inbounds i8, ptr %271, i64 -64
  %273 = load i64, ptr %272, align 1
  %274 = xor i64 %273, -1556992608276218209
  %275 = add i64 %269, %273
  %276 = and i64 %274, 4294967295
  %277 = lshr i64 %274, 32
  %278 = mul nuw i64 %276, %277
  %279 = add i64 %270, %278
  %280 = getelementptr inbounds i8, ptr %271, i64 -56
  %281 = load i64, ptr %280, align 1
  %282 = xor i64 %281, -4196251135427498811
  %283 = add i64 %279, %281
  %284 = and i64 %282, 4294967295
  %285 = lshr i64 %282, 32
  %286 = mul nuw i64 %284, %285
  %287 = add i64 %275, %286
  %288 = getelementptr inbounds i8, ptr %271, i64 -48
  %289 = load i64, ptr %288, align 1
  %290 = xor i64 %289, 1723580219865931905
  %291 = add i64 %267, %289
  %292 = and i64 %290, 4294967295
  %293 = lshr i64 %290, 32
  %294 = mul nuw i64 %292, %293
  %295 = add i64 %268, %294
  %296 = getelementptr inbounds i8, ptr %271, i64 -40
  %297 = load i64, ptr %296, align 1
  %298 = xor i64 %297, -3221803331004277491
  %299 = add i64 %295, %297
  %300 = and i64 %298, 4294967295
  %301 = lshr i64 %298, 32
  %302 = mul nuw i64 %300, %301
  %303 = add i64 %291, %302
  %304 = getelementptr inbounds i8, ptr %271, i64 -32
  %305 = load i64, ptr %304, align 1
  %306 = xor i64 %305, 3143064850383918358
  %307 = add i64 %265, %305
  %308 = and i64 %306, 4294967295
  %309 = lshr i64 %306, 32
  %310 = mul nuw i64 %308, %309
  %311 = add i64 %266, %310
  %312 = getelementptr inbounds i8, ptr %271, i64 -24
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, -8071399103737053674
  %315 = add i64 %311, %313
  %316 = and i64 %314, 4294967295
  %317 = lshr i64 %314, 32
  %318 = mul nuw i64 %316, %317
  %319 = add i64 %307, %318
  %320 = getelementptr inbounds i8, ptr %271, i64 -16
  %321 = load i64, ptr %320, align 1
  %322 = xor i64 %321, 5030012605302946040
  %323 = add i64 %263, %321
  %324 = and i64 %322, 4294967295
  %325 = lshr i64 %322, 32
  %326 = mul nuw i64 %324, %325
  %327 = add i64 %264, %326
  %328 = getelementptr inbounds i8, ptr %271, i64 -8
  %329 = load i64, ptr %328, align 1
  %330 = xor i64 %329, -5825401622958753077
  %331 = add i64 %327, %329
  %332 = and i64 %330, 4294967295
  %333 = lshr i64 %330, 32
  %334 = mul nuw i64 %332, %333
  %335 = add i64 %323, %334
  %336 = mul i64 %1, -7046029288634856825
  %337 = xor i64 %283, 7914194659941938988
  %338 = xor i64 %287, -6611157965513653271
  %339 = zext i64 %337 to i128
  %340 = zext i64 %338 to i128
  %341 = mul nuw i128 %340, %339
  %342 = lshr i128 %341, 64
  %343 = xor i128 %342, %341
  %344 = trunc i128 %343 to i64
  %345 = add i64 %336, %344
  %346 = xor i64 %299, -1839215637059881052
  %347 = xor i64 %303, -3433288310154277810
  %348 = zext i64 %346 to i128
  %349 = zext i64 %347 to i128
  %350 = mul nuw i128 %349, %348
  %351 = lshr i128 %350, 64
  %352 = xor i128 %351, %350
  %353 = trunc i128 %352 to i64
  %354 = add i64 %345, %353
  %355 = xor i64 %315, 5046485836271438973
  %356 = xor i64 %319, -8055285457383852172
  %357 = zext i64 %355 to i128
  %358 = zext i64 %356 to i128
  %359 = mul nuw i128 %358, %357
  %360 = lshr i128 %359, 64
  %361 = xor i128 %360, %359
  %362 = trunc i128 %361 to i64
  %363 = add i64 %354, %362
  %364 = xor i64 %331, 5920048007935066598
  %365 = xor i64 %335, 7336514198459093435
  %366 = zext i64 %364 to i128
  %367 = zext i64 %365 to i128
  %368 = mul nuw i128 %367, %366
  %369 = lshr i128 %368, 64
  %370 = xor i128 %369, %368
  %371 = trunc i128 %370 to i64
  %372 = add i64 %363, %371
  %373 = lshr i64 %372, 37
  %374 = xor i64 %373, %372
  %375 = mul i64 %374, 1609587791953885689
  %376 = lshr i64 %375, 32
  %377 = xor i64 %376, %375
  br label %829

378:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #27
  %379 = add i64 %2, -4734510112055689544
  %380 = sub i64 2066345149520216444, %2
  store i64 %379, ptr %4, align 8
  %381 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %380, ptr %381, align 8
  %382 = add i64 %2, -2623469361688619810
  %383 = sub i64 2262974939099578482, %2
  %384 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %382, ptr %384, align 8
  %385 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %383, ptr %385, align 8
  %386 = add i64 %2, 8711581037947681227
  %387 = sub i64 2410270004345854594, %2
  %388 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %386, ptr %388, align 8
  %389 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %387, ptr %389, align 8
  %390 = add i64 %2, -8204357891075471176
  %391 = sub i64 5487137525590930912, %2
  %392 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %390, ptr %392, align 8
  %393 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %391, ptr %393, align 8
  %394 = add i64 %2, -3818837453329782724
  %395 = sub i64 -6688317018830679928, %2
  %396 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %394, ptr %396, align 8
  %397 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %395, ptr %397, align 8
  %398 = add i64 %2, 5690594596133299313
  %399 = sub i64 -2833645246901970632, %2
  %400 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %398, ptr %400, align 8
  %401 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %399, ptr %401, align 8
  %402 = add i64 %2, 4554437623014685352
  %403 = sub i64 2111919702937427193, %2
  %404 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %402, ptr %404, align 8
  %405 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %403, ptr %405, align 8
  %406 = add i64 %2, 3556072174620004746
  %407 = sub i64 7238261902898274248, %2
  %408 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 %406, ptr %408, align 8
  %409 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %407, ptr %409, align 8
  %410 = add i64 %2, -4329134394285701654
  %411 = sub i64 -1485321483350670907, %2
  %412 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i64 %410, ptr %412, align 8
  %413 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %411, ptr %413, align 8
  %414 = add i64 %2, 5321830579834785047
  %415 = sub i64 -7032137544937171245, %2
  %416 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i64 %414, ptr %416, align 8
  %417 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i64 %415, ptr %417, align 8
  %418 = add i64 %2, -242834301215959509
  %419 = sub i64 -3588858202114426737, %2
  %420 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i64 %418, ptr %420, align 8
  %421 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 %419, ptr %421, align 8
  %422 = add i64 %2, 2883454493032893253
  %423 = sub i64 9097354517224871855, %2
  %424 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i64 %422, ptr %424, align 8
  %425 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i64 %423, ptr %425, align 8
  %426 = add i64 %1, -1
  %427 = icmp ult i64 %426, 1024
  br i1 %427, label %572, label %428

428:                                              ; preds = %378
  %429 = lshr i64 %426, 10
  br label %430

430:                                              ; preds = %428, %537
  %431 = phi i64 [ 2654435761, %428 ], [ %569, %537 ]
  %432 = phi i64 [ 2870177450012600261, %428 ], [ %565, %537 ]
  %433 = phi i64 [ 2246822519, %428 ], [ %561, %537 ]
  %434 = phi i64 [ -8796714831421723037, %428 ], [ %557, %537 ]
  %435 = phi i64 [ 1609587929392839161, %428 ], [ %553, %537 ]
  %436 = phi i64 [ -4417276706812531889, %428 ], [ %549, %537 ]
  %437 = phi i64 [ -7046029288634856825, %428 ], [ %545, %537 ]
  %438 = phi i64 [ 3266489917, %428 ], [ %541, %537 ]
  %439 = phi i64 [ 0, %428 ], [ %570, %537 ]
  %440 = shl i64 %439, 10
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 %440
  br label %442

442:                                              ; preds = %430, %442
  %443 = phi i64 [ %431, %430 ], [ %534, %442 ]
  %444 = phi i64 [ %432, %430 ], [ %530, %442 ]
  %445 = phi i64 [ %433, %430 ], [ %514, %442 ]
  %446 = phi i64 [ %434, %430 ], [ %510, %442 ]
  %447 = phi i64 [ %435, %430 ], [ %494, %442 ]
  %448 = phi i64 [ %436, %430 ], [ %490, %442 ]
  %449 = phi i64 [ %437, %430 ], [ %474, %442 ]
  %450 = phi i64 [ %438, %430 ], [ %470, %442 ]
  %451 = phi i64 [ 0, %430 ], [ %535, %442 ]
  %452 = shl nuw nsw i64 %451, 6
  %453 = getelementptr inbounds nuw i8, ptr %441, i64 %452
  %454 = getelementptr inbounds nuw i8, ptr %453, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %454, i32 0, i32 3, i32 1), !noalias !35
  %455 = shl nuw nsw i64 %451, 3
  %456 = getelementptr inbounds nuw i8, ptr %4, i64 %455
  %457 = load i64, ptr %453, align 1
  %458 = load i64, ptr %456, align 8
  %459 = xor i64 %458, %457
  %460 = add i64 %449, %457
  %461 = and i64 %459, 4294967295
  %462 = lshr i64 %459, 32
  %463 = mul nuw i64 %461, %462
  %464 = add i64 %450, %463
  %465 = getelementptr inbounds nuw i8, ptr %453, i64 8
  %466 = load i64, ptr %465, align 1
  %467 = getelementptr inbounds nuw i8, ptr %456, i64 8
  %468 = load i64, ptr %467, align 8
  %469 = xor i64 %468, %466
  %470 = add i64 %464, %466
  %471 = and i64 %469, 4294967295
  %472 = lshr i64 %469, 32
  %473 = mul nuw i64 %471, %472
  %474 = add i64 %460, %473
  %475 = getelementptr inbounds nuw i8, ptr %453, i64 16
  %476 = load i64, ptr %475, align 1
  %477 = getelementptr inbounds nuw i8, ptr %456, i64 16
  %478 = load i64, ptr %477, align 8
  %479 = xor i64 %478, %476
  %480 = add i64 %447, %476
  %481 = and i64 %479, 4294967295
  %482 = lshr i64 %479, 32
  %483 = mul nuw i64 %481, %482
  %484 = add i64 %448, %483
  %485 = getelementptr inbounds nuw i8, ptr %453, i64 24
  %486 = load i64, ptr %485, align 1
  %487 = getelementptr inbounds nuw i8, ptr %456, i64 24
  %488 = load i64, ptr %487, align 8
  %489 = xor i64 %488, %486
  %490 = add i64 %484, %486
  %491 = and i64 %489, 4294967295
  %492 = lshr i64 %489, 32
  %493 = mul nuw i64 %491, %492
  %494 = add i64 %480, %493
  %495 = getelementptr inbounds nuw i8, ptr %453, i64 32
  %496 = load i64, ptr %495, align 1
  %497 = getelementptr inbounds nuw i8, ptr %456, i64 32
  %498 = load i64, ptr %497, align 8
  %499 = xor i64 %498, %496
  %500 = add i64 %445, %496
  %501 = and i64 %499, 4294967295
  %502 = lshr i64 %499, 32
  %503 = mul nuw i64 %501, %502
  %504 = add i64 %446, %503
  %505 = getelementptr inbounds nuw i8, ptr %453, i64 40
  %506 = load i64, ptr %505, align 1
  %507 = getelementptr inbounds nuw i8, ptr %456, i64 40
  %508 = load i64, ptr %507, align 8
  %509 = xor i64 %508, %506
  %510 = add i64 %504, %506
  %511 = and i64 %509, 4294967295
  %512 = lshr i64 %509, 32
  %513 = mul nuw i64 %511, %512
  %514 = add i64 %500, %513
  %515 = getelementptr inbounds nuw i8, ptr %453, i64 48
  %516 = load i64, ptr %515, align 1
  %517 = getelementptr inbounds nuw i8, ptr %456, i64 48
  %518 = load i64, ptr %517, align 8
  %519 = xor i64 %518, %516
  %520 = add i64 %443, %516
  %521 = and i64 %519, 4294967295
  %522 = lshr i64 %519, 32
  %523 = mul nuw i64 %521, %522
  %524 = add i64 %444, %523
  %525 = getelementptr inbounds nuw i8, ptr %453, i64 56
  %526 = load i64, ptr %525, align 1
  %527 = getelementptr inbounds nuw i8, ptr %456, i64 56
  %528 = load i64, ptr %527, align 8
  %529 = xor i64 %528, %526
  %530 = add i64 %524, %526
  %531 = and i64 %529, 4294967295
  %532 = lshr i64 %529, 32
  %533 = mul nuw i64 %531, %532
  %534 = add i64 %520, %533
  %535 = add nuw nsw i64 %451, 1
  %536 = icmp eq i64 %535, 16
  br i1 %536, label %537, label %442

537:                                              ; preds = %442
  %538 = lshr i64 %470, 47
  %539 = xor i64 %410, %538
  %540 = xor i64 %539, %470
  %541 = mul i64 %540, 2654435761
  %542 = lshr i64 %474, 47
  %543 = xor i64 %411, %542
  %544 = xor i64 %543, %474
  %545 = mul i64 %544, 2654435761
  %546 = lshr i64 %490, 47
  %547 = xor i64 %414, %546
  %548 = xor i64 %547, %490
  %549 = mul i64 %548, 2654435761
  %550 = lshr i64 %494, 47
  %551 = xor i64 %415, %550
  %552 = xor i64 %551, %494
  %553 = mul i64 %552, 2654435761
  %554 = lshr i64 %510, 47
  %555 = xor i64 %418, %554
  %556 = xor i64 %555, %510
  %557 = mul i64 %556, 2654435761
  %558 = lshr i64 %514, 47
  %559 = xor i64 %419, %558
  %560 = xor i64 %559, %514
  %561 = mul i64 %560, 2654435761
  %562 = lshr i64 %530, 47
  %563 = xor i64 %422, %562
  %564 = xor i64 %563, %530
  %565 = mul i64 %564, 2654435761
  %566 = lshr i64 %534, 47
  %567 = xor i64 %423, %566
  %568 = xor i64 %567, %534
  %569 = mul i64 %568, 2654435761
  %570 = add nuw nsw i64 %439, 1
  %571 = icmp eq i64 %570, %429
  br i1 %571, label %572, label %430

572:                                              ; preds = %537, %378
  %573 = phi i64 [ 2654435761, %378 ], [ %569, %537 ]
  %574 = phi i64 [ 2870177450012600261, %378 ], [ %565, %537 ]
  %575 = phi i64 [ 2246822519, %378 ], [ %561, %537 ]
  %576 = phi i64 [ -8796714831421723037, %378 ], [ %557, %537 ]
  %577 = phi i64 [ 1609587929392839161, %378 ], [ %553, %537 ]
  %578 = phi i64 [ -4417276706812531889, %378 ], [ %549, %537 ]
  %579 = phi i64 [ -7046029288634856825, %378 ], [ %545, %537 ]
  %580 = phi i64 [ 3266489917, %378 ], [ %541, %537 ]
  %581 = and i64 %426, -1024
  %582 = lshr i64 %426, 6
  %583 = and i64 %582, 15
  %584 = getelementptr inbounds nuw i8, ptr %0, i64 %581
  %585 = icmp eq i64 %583, 0
  br i1 %585, label %681, label %586

586:                                              ; preds = %572, %586
  %587 = phi i64 [ %678, %586 ], [ %573, %572 ]
  %588 = phi i64 [ %674, %586 ], [ %574, %572 ]
  %589 = phi i64 [ %658, %586 ], [ %575, %572 ]
  %590 = phi i64 [ %654, %586 ], [ %576, %572 ]
  %591 = phi i64 [ %638, %586 ], [ %577, %572 ]
  %592 = phi i64 [ %634, %586 ], [ %578, %572 ]
  %593 = phi i64 [ %618, %586 ], [ %579, %572 ]
  %594 = phi i64 [ %614, %586 ], [ %580, %572 ]
  %595 = phi i64 [ %679, %586 ], [ 0, %572 ]
  %596 = shl i64 %595, 6
  %597 = getelementptr inbounds nuw i8, ptr %584, i64 %596
  %598 = getelementptr inbounds nuw i8, ptr %597, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %598, i32 0, i32 3, i32 1), !noalias !38
  %599 = shl i64 %595, 3
  %600 = getelementptr inbounds nuw i8, ptr %4, i64 %599
  %601 = load i64, ptr %597, align 1
  %602 = load i64, ptr %600, align 8
  %603 = xor i64 %602, %601
  %604 = add i64 %593, %601
  %605 = and i64 %603, 4294967295
  %606 = lshr i64 %603, 32
  %607 = mul nuw i64 %605, %606
  %608 = add i64 %594, %607
  %609 = getelementptr inbounds nuw i8, ptr %597, i64 8
  %610 = load i64, ptr %609, align 1
  %611 = getelementptr inbounds nuw i8, ptr %600, i64 8
  %612 = load i64, ptr %611, align 8
  %613 = xor i64 %612, %610
  %614 = add i64 %608, %610
  %615 = and i64 %613, 4294967295
  %616 = lshr i64 %613, 32
  %617 = mul nuw i64 %615, %616
  %618 = add i64 %604, %617
  %619 = getelementptr inbounds nuw i8, ptr %597, i64 16
  %620 = load i64, ptr %619, align 1
  %621 = getelementptr inbounds nuw i8, ptr %600, i64 16
  %622 = load i64, ptr %621, align 8
  %623 = xor i64 %622, %620
  %624 = add i64 %591, %620
  %625 = and i64 %623, 4294967295
  %626 = lshr i64 %623, 32
  %627 = mul nuw i64 %625, %626
  %628 = add i64 %592, %627
  %629 = getelementptr inbounds nuw i8, ptr %597, i64 24
  %630 = load i64, ptr %629, align 1
  %631 = getelementptr inbounds nuw i8, ptr %600, i64 24
  %632 = load i64, ptr %631, align 8
  %633 = xor i64 %632, %630
  %634 = add i64 %628, %630
  %635 = and i64 %633, 4294967295
  %636 = lshr i64 %633, 32
  %637 = mul nuw i64 %635, %636
  %638 = add i64 %624, %637
  %639 = getelementptr inbounds nuw i8, ptr %597, i64 32
  %640 = load i64, ptr %639, align 1
  %641 = getelementptr inbounds nuw i8, ptr %600, i64 32
  %642 = load i64, ptr %641, align 8
  %643 = xor i64 %642, %640
  %644 = add i64 %589, %640
  %645 = and i64 %643, 4294967295
  %646 = lshr i64 %643, 32
  %647 = mul nuw i64 %645, %646
  %648 = add i64 %590, %647
  %649 = getelementptr inbounds nuw i8, ptr %597, i64 40
  %650 = load i64, ptr %649, align 1
  %651 = getelementptr inbounds nuw i8, ptr %600, i64 40
  %652 = load i64, ptr %651, align 8
  %653 = xor i64 %652, %650
  %654 = add i64 %648, %650
  %655 = and i64 %653, 4294967295
  %656 = lshr i64 %653, 32
  %657 = mul nuw i64 %655, %656
  %658 = add i64 %644, %657
  %659 = getelementptr inbounds nuw i8, ptr %597, i64 48
  %660 = load i64, ptr %659, align 1
  %661 = getelementptr inbounds nuw i8, ptr %600, i64 48
  %662 = load i64, ptr %661, align 8
  %663 = xor i64 %662, %660
  %664 = add i64 %587, %660
  %665 = and i64 %663, 4294967295
  %666 = lshr i64 %663, 32
  %667 = mul nuw i64 %665, %666
  %668 = add i64 %588, %667
  %669 = getelementptr inbounds nuw i8, ptr %597, i64 56
  %670 = load i64, ptr %669, align 1
  %671 = getelementptr inbounds nuw i8, ptr %600, i64 56
  %672 = load i64, ptr %671, align 8
  %673 = xor i64 %672, %670
  %674 = add i64 %668, %670
  %675 = and i64 %673, 4294967295
  %676 = lshr i64 %673, 32
  %677 = mul nuw i64 %675, %676
  %678 = add i64 %664, %677
  %679 = add nuw nsw i64 %595, 1
  %680 = icmp eq i64 %679, %583
  br i1 %680, label %681, label %586

681:                                              ; preds = %586, %572
  %682 = phi i64 [ %573, %572 ], [ %678, %586 ]
  %683 = phi i64 [ %574, %572 ], [ %674, %586 ]
  %684 = phi i64 [ %575, %572 ], [ %658, %586 ]
  %685 = phi i64 [ %576, %572 ], [ %654, %586 ]
  %686 = phi i64 [ %577, %572 ], [ %638, %586 ]
  %687 = phi i64 [ %578, %572 ], [ %634, %586 ]
  %688 = phi i64 [ %579, %572 ], [ %618, %586 ]
  %689 = phi i64 [ %580, %572 ], [ %614, %586 ]
  %690 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %691 = getelementptr inbounds i8, ptr %690, i64 -64
  %692 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %693 = load i64, ptr %691, align 1
  %694 = load i64, ptr %692, align 1
  %695 = xor i64 %694, %693
  %696 = add i64 %688, %693
  %697 = and i64 %695, 4294967295
  %698 = lshr i64 %695, 32
  %699 = mul nuw i64 %697, %698
  %700 = add i64 %689, %699
  %701 = getelementptr inbounds i8, ptr %690, i64 -56
  %702 = load i64, ptr %701, align 1
  %703 = getelementptr inbounds nuw i8, ptr %4, i64 129
  %704 = load i64, ptr %703, align 1
  %705 = xor i64 %704, %702
  %706 = add i64 %700, %702
  %707 = and i64 %705, 4294967295
  %708 = lshr i64 %705, 32
  %709 = mul nuw i64 %707, %708
  %710 = add i64 %696, %709
  %711 = getelementptr inbounds i8, ptr %690, i64 -48
  %712 = load i64, ptr %711, align 1
  %713 = getelementptr inbounds nuw i8, ptr %4, i64 137
  %714 = load i64, ptr %713, align 1
  %715 = xor i64 %714, %712
  %716 = add i64 %686, %712
  %717 = and i64 %715, 4294967295
  %718 = lshr i64 %715, 32
  %719 = mul nuw i64 %717, %718
  %720 = add i64 %687, %719
  %721 = getelementptr inbounds i8, ptr %690, i64 -40
  %722 = load i64, ptr %721, align 1
  %723 = getelementptr inbounds nuw i8, ptr %4, i64 145
  %724 = load i64, ptr %723, align 1
  %725 = xor i64 %724, %722
  %726 = add i64 %720, %722
  %727 = and i64 %725, 4294967295
  %728 = lshr i64 %725, 32
  %729 = mul nuw i64 %727, %728
  %730 = add i64 %716, %729
  %731 = getelementptr inbounds i8, ptr %690, i64 -32
  %732 = load i64, ptr %731, align 1
  %733 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %734 = load i64, ptr %733, align 1
  %735 = xor i64 %734, %732
  %736 = add i64 %684, %732
  %737 = and i64 %735, 4294967295
  %738 = lshr i64 %735, 32
  %739 = mul nuw i64 %737, %738
  %740 = add i64 %685, %739
  %741 = getelementptr inbounds i8, ptr %690, i64 -24
  %742 = load i64, ptr %741, align 1
  %743 = getelementptr inbounds nuw i8, ptr %4, i64 161
  %744 = load i64, ptr %743, align 1
  %745 = xor i64 %744, %742
  %746 = add i64 %740, %742
  %747 = and i64 %745, 4294967295
  %748 = lshr i64 %745, 32
  %749 = mul nuw i64 %747, %748
  %750 = add i64 %736, %749
  %751 = getelementptr inbounds i8, ptr %690, i64 -16
  %752 = load i64, ptr %751, align 1
  %753 = getelementptr inbounds nuw i8, ptr %4, i64 169
  %754 = load i64, ptr %753, align 1
  %755 = xor i64 %754, %752
  %756 = add i64 %682, %752
  %757 = and i64 %755, 4294967295
  %758 = lshr i64 %755, 32
  %759 = mul nuw i64 %757, %758
  %760 = add i64 %683, %759
  %761 = getelementptr inbounds i8, ptr %690, i64 -8
  %762 = load i64, ptr %761, align 1
  %763 = getelementptr inbounds nuw i8, ptr %4, i64 177
  %764 = load i64, ptr %763, align 1
  %765 = xor i64 %764, %762
  %766 = add i64 %760, %762
  %767 = and i64 %765, 4294967295
  %768 = lshr i64 %765, 32
  %769 = mul nuw i64 %767, %768
  %770 = add i64 %756, %769
  %771 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %772 = mul i64 %1, -7046029288634856825
  %773 = load i64, ptr %771, align 1, !alias.scope !41, !noalias !44
  %774 = xor i64 %773, %706
  %775 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %776 = load i64, ptr %775, align 1, !alias.scope !41, !noalias !44
  %777 = xor i64 %776, %710
  %778 = zext i64 %774 to i128
  %779 = zext i64 %777 to i128
  %780 = mul nuw i128 %779, %778
  %781 = lshr i128 %780, 64
  %782 = xor i128 %781, %780
  %783 = trunc i128 %782 to i64
  %784 = add i64 %772, %783
  %785 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %786 = load i64, ptr %785, align 1, !alias.scope !41, !noalias !44
  %787 = xor i64 %786, %726
  %788 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %789 = load i64, ptr %788, align 1, !alias.scope !41, !noalias !44
  %790 = xor i64 %789, %730
  %791 = zext i64 %787 to i128
  %792 = zext i64 %790 to i128
  %793 = mul nuw i128 %792, %791
  %794 = lshr i128 %793, 64
  %795 = xor i128 %794, %793
  %796 = trunc i128 %795 to i64
  %797 = add i64 %784, %796
  %798 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %799 = load i64, ptr %798, align 1, !alias.scope !41, !noalias !44
  %800 = xor i64 %799, %746
  %801 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %802 = load i64, ptr %801, align 1, !alias.scope !41, !noalias !44
  %803 = xor i64 %802, %750
  %804 = zext i64 %800 to i128
  %805 = zext i64 %803 to i128
  %806 = mul nuw i128 %805, %804
  %807 = lshr i128 %806, 64
  %808 = xor i128 %807, %806
  %809 = trunc i128 %808 to i64
  %810 = add i64 %797, %809
  %811 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %812 = load i64, ptr %811, align 1, !alias.scope !41, !noalias !44
  %813 = xor i64 %812, %766
  %814 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %815 = load i64, ptr %814, align 1, !alias.scope !41, !noalias !44
  %816 = xor i64 %815, %770
  %817 = zext i64 %813 to i128
  %818 = zext i64 %816 to i128
  %819 = mul nuw i128 %818, %817
  %820 = lshr i128 %819, 64
  %821 = xor i128 %820, %819
  %822 = trunc i128 %821 to i64
  %823 = add i64 %810, %822
  %824 = lshr i64 %823, 37
  %825 = xor i64 %824, %823
  %826 = mul i64 %825, 1609587791953885689
  %827 = lshr i64 %826, 32
  %828 = xor i64 %827, %826
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #27
  br label %829

829:                                              ; preds = %262, %681
  %830 = phi i64 [ %377, %262 ], [ %828, %681 ]
  ret i64 %830
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local ptr @XXH3_createState() local_unnamed_addr #17 {
  %1 = tail call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #28
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i64
  %5 = and i64 %4, 63
  %6 = sub nuw nsw i64 64, %5
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = trunc nuw nsw i64 %6 to i8
  %9 = getelementptr inbounds i8, ptr %7, i64 -1
  store i8 %8, ptr %9, align 1
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 552
  store i64 0, ptr %10, align 8
  br label %11

11:                                               ; preds = %0, %3
  %12 = phi ptr [ %7, %3 ], [ null, %0 ]
  ret ptr %12
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH3_freeState(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 -1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  tail call void @free(ptr noundef nonnull %8) #27
  br label %9

9:                                                ; preds = %1, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH3_copyState(ptr nocapture noundef writeonly initializes((0, 576)) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %0, ptr noundef nonnull align 64 dereferenceable(576) %1, i64 576, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %6, align 16
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %8, align 32
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @XXH3_kSecret, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %14, align 32
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %15, align 8
  br label %16

16:                                               ; preds = %1, %3
  %17 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %15, align 8
  %16 = add i64 %2, -64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %16, ptr %17, align 32
  %18 = lshr i64 %16, 3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %18, ptr %19, align 8
  %20 = icmp eq ptr %1, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = icmp ult i64 %2, 136
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %21, %5, %3
  %25 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %83, label %4

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %9, align 16
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %11, align 32
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %13, align 16
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %15, align 8
  br label %78

16:                                               ; preds = %4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %69, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %22 = add i64 %1, -4734510112055689544
  %23 = sub i64 2066345149520216444, %1
  store i64 %22, ptr %21, align 1
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %23, ptr %24, align 1
  %25 = add i64 %1, -2623469361688619810
  %26 = sub i64 2262974939099578482, %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %25, ptr %27, align 1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %26, ptr %28, align 1
  %29 = add i64 %1, 8711581037947681227
  %30 = sub i64 2410270004345854594, %1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %29, ptr %31, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %30, ptr %32, align 1
  %33 = add i64 %1, -8204357891075471176
  %34 = sub i64 5487137525590930912, %1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %33, ptr %35, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %34, ptr %36, align 1
  %37 = add i64 %1, -3818837453329782724
  %38 = sub i64 -6688317018830679928, %1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %37, ptr %39, align 1
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %38, ptr %40, align 1
  %41 = add i64 %1, 5690594596133299313
  %42 = sub i64 -2833645246901970632, %1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %41, ptr %43, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %42, ptr %44, align 1
  %45 = add i64 %1, 4554437623014685352
  %46 = sub i64 2111919702937427193, %1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %45, ptr %47, align 1
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %46, ptr %48, align 1
  %49 = add i64 %1, 3556072174620004746
  %50 = sub i64 7238261902898274248, %1
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %49, ptr %51, align 1
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %50, ptr %52, align 1
  %53 = add i64 %1, -4329134394285701654
  %54 = sub i64 -1485321483350670907, %1
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %53, ptr %55, align 1
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %54, ptr %56, align 1
  %57 = add i64 %1, 5321830579834785047
  %58 = sub i64 -7032137544937171245, %1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %57, ptr %59, align 1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %58, ptr %60, align 1
  %61 = add i64 %1, -242834301215959509
  %62 = sub i64 -3588858202114426737, %1
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %61, ptr %63, align 1
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %62, ptr %64, align 1
  %65 = add i64 %1, 2883454493032893253
  %66 = sub i64 9097354517224871855, %1
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %65, ptr %67, align 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %66, ptr %68, align 1
  br label %69

69:                                               ; preds = %20, %16
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %70, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %72, align 16
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %74, align 32
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %76, align 16
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %77, align 8
  store i64 %1, ptr %17, align 8
  br label %78

78:                                               ; preds = %6, %69
  %79 = phi ptr [ null, %69 ], [ @XXH3_kSecret, %6 ]
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %79, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %81, align 32
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %82, align 8
  br label %83

83:                                               ; preds = %78, %2
  %84 = phi i32 [ 1, %2 ], [ 0, %78 ]
  ret i32 %84
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %897, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %11 = select i1 %9, ptr %10, ptr %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %13 = load i64, ptr %12, align 16
  %14 = add i64 %13, %2
  store i64 %14, ptr %12, align 16
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %16 = load i32, ptr %15, align 64
  %17 = zext i32 %16 to i64
  %18 = add i64 %2, %17
  %19 = icmp ult i64 %18, 257
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %23 = trunc i64 %2 to i32
  %24 = load i32, ptr %15, align 64
  %25 = add i32 %24, %23
  br label %895

26:                                               ; preds = %5
  %27 = icmp eq i32 %16, 0
  br i1 %27, label %453, label %28

28:                                               ; preds = %26
  %29 = sub i32 256, %16
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull readonly align 1 %1, i64 %30, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %38 = load i64, ptr %37, align 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %39 = load i64, ptr %34, align 8, !alias.scope !49, !noalias !51
  %40 = sub i64 %36, %39
  %41 = icmp ugt i64 %40, 4
  br i1 %41, label %336, label %42

42:                                               ; preds = %28
  %43 = sub nuw nsw i64 4, %40
  %44 = shl i64 %39, 3
  %45 = getelementptr inbounds nuw i8, ptr %11, i64 %44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %46 = icmp eq i64 %36, %39
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load i64, ptr %0, align 8, !alias.scope !57, !noalias !60
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %50 = load i64, ptr %49, align 8, !alias.scope !57, !noalias !60
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %52 = load i64, ptr %51, align 8, !alias.scope !57, !noalias !60
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %54 = load i64, ptr %53, align 8, !alias.scope !57, !noalias !60
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %56 = load i64, ptr %55, align 8, !alias.scope !57, !noalias !60
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %58 = load i64, ptr %57, align 8, !alias.scope !57, !noalias !60
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %60 = load i64, ptr %59, align 8, !alias.scope !57, !noalias !60
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %62 = load i64, ptr %61, align 8, !alias.scope !57, !noalias !60
  br label %174

63:                                               ; preds = %42
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %65 = load i64, ptr %64, align 8, !alias.scope !62, !noalias !65
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %67 = load i64, ptr %66, align 8, !alias.scope !62, !noalias !65
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %69 = load i64, ptr %68, align 8, !alias.scope !62, !noalias !65
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %71 = load i64, ptr %70, align 8, !alias.scope !62, !noalias !65
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %73 = load i64, ptr %72, align 8, !alias.scope !62, !noalias !65
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %75 = load i64, ptr %74, align 8, !alias.scope !62, !noalias !65
  %76 = load i64, ptr %0, align 8, !alias.scope !62, !noalias !65
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %78 = load i64, ptr %77, align 8, !alias.scope !62, !noalias !65
  br label %79

79:                                               ; preds = %63, %79
  %80 = phi i64 [ %167, %79 ], [ %78, %63 ]
  %81 = phi i64 [ %107, %79 ], [ %76, %63 ]
  %82 = phi i64 [ %111, %79 ], [ %75, %63 ]
  %83 = phi i64 [ %171, %79 ], [ %73, %63 ]
  %84 = phi i64 [ %147, %79 ], [ %71, %63 ]
  %85 = phi i64 [ %151, %79 ], [ %69, %63 ]
  %86 = phi i64 [ %127, %79 ], [ %67, %63 ]
  %87 = phi i64 [ %131, %79 ], [ %65, %63 ]
  %88 = phi i64 [ %172, %79 ], [ 0, %63 ]
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %31, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1), !noalias !70
  %92 = shl i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr %45, i64 %92
  %94 = load i64, ptr %90, align 1
  %95 = load i64, ptr %93, align 1
  %96 = xor i64 %95, %94
  %97 = add i64 %82, %94
  store i64 %97, ptr %74, align 8, !alias.scope !62, !noalias !65
  %98 = and i64 %96, 4294967295
  %99 = lshr i64 %96, 32
  %100 = mul nuw i64 %98, %99
  %101 = add i64 %81, %100
  store i64 %101, ptr %0, align 8, !alias.scope !62, !noalias !65
  %102 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %103 = load i64, ptr %102, align 1
  %104 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %105 = load i64, ptr %104, align 1
  %106 = xor i64 %105, %103
  %107 = add i64 %101, %103
  store i64 %107, ptr %0, align 8, !alias.scope !62, !noalias !65
  %108 = and i64 %106, 4294967295
  %109 = lshr i64 %106, 32
  %110 = mul nuw i64 %108, %109
  %111 = add i64 %97, %110
  store i64 %111, ptr %74, align 8, !alias.scope !62, !noalias !65
  %112 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %113 = load i64, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %93, i64 16
  %115 = load i64, ptr %114, align 1
  %116 = xor i64 %115, %113
  %117 = add i64 %87, %113
  store i64 %117, ptr %64, align 8, !alias.scope !62, !noalias !65
  %118 = and i64 %116, 4294967295
  %119 = lshr i64 %116, 32
  %120 = mul nuw i64 %118, %119
  %121 = add i64 %86, %120
  store i64 %121, ptr %66, align 8, !alias.scope !62, !noalias !65
  %122 = getelementptr inbounds nuw i8, ptr %90, i64 24
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %93, i64 24
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %125, %123
  %127 = add i64 %121, %123
  store i64 %127, ptr %66, align 8, !alias.scope !62, !noalias !65
  %128 = and i64 %126, 4294967295
  %129 = lshr i64 %126, 32
  %130 = mul nuw i64 %128, %129
  %131 = add i64 %117, %130
  store i64 %131, ptr %64, align 8, !alias.scope !62, !noalias !65
  %132 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %133 = load i64, ptr %132, align 1
  %134 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %135 = load i64, ptr %134, align 1
  %136 = xor i64 %135, %133
  %137 = add i64 %85, %133
  store i64 %137, ptr %68, align 8, !alias.scope !62, !noalias !65
  %138 = and i64 %136, 4294967295
  %139 = lshr i64 %136, 32
  %140 = mul nuw i64 %138, %139
  %141 = add i64 %84, %140
  store i64 %141, ptr %70, align 8, !alias.scope !62, !noalias !65
  %142 = getelementptr inbounds nuw i8, ptr %90, i64 40
  %143 = load i64, ptr %142, align 1
  %144 = getelementptr inbounds nuw i8, ptr %93, i64 40
  %145 = load i64, ptr %144, align 1
  %146 = xor i64 %145, %143
  %147 = add i64 %141, %143
  store i64 %147, ptr %70, align 8, !alias.scope !62, !noalias !65
  %148 = and i64 %146, 4294967295
  %149 = lshr i64 %146, 32
  %150 = mul nuw i64 %148, %149
  %151 = add i64 %137, %150
  store i64 %151, ptr %68, align 8, !alias.scope !62, !noalias !65
  %152 = getelementptr inbounds nuw i8, ptr %90, i64 48
  %153 = load i64, ptr %152, align 1
  %154 = getelementptr inbounds nuw i8, ptr %93, i64 48
  %155 = load i64, ptr %154, align 1
  %156 = xor i64 %155, %153
  %157 = add i64 %83, %153
  store i64 %157, ptr %72, align 8, !alias.scope !62, !noalias !65
  %158 = and i64 %156, 4294967295
  %159 = lshr i64 %156, 32
  %160 = mul nuw i64 %158, %159
  %161 = add i64 %80, %160
  store i64 %161, ptr %77, align 8, !alias.scope !62, !noalias !65
  %162 = getelementptr inbounds nuw i8, ptr %90, i64 56
  %163 = load i64, ptr %162, align 1
  %164 = getelementptr inbounds nuw i8, ptr %93, i64 56
  %165 = load i64, ptr %164, align 1
  %166 = xor i64 %165, %163
  %167 = add i64 %161, %163
  store i64 %167, ptr %77, align 8, !alias.scope !62, !noalias !65
  %168 = and i64 %166, 4294967295
  %169 = lshr i64 %166, 32
  %170 = mul nuw i64 %168, %169
  %171 = add i64 %157, %170
  store i64 %171, ptr %72, align 8, !alias.scope !62, !noalias !65
  %172 = add nuw i64 %88, 1
  %173 = icmp eq i64 %172, %40
  br i1 %173, label %174, label %79

174:                                              ; preds = %79, %47
  %175 = phi i64 [ %62, %47 ], [ %171, %79 ]
  %176 = phi i64 [ %60, %47 ], [ %167, %79 ]
  %177 = phi i64 [ %58, %47 ], [ %151, %79 ]
  %178 = phi i64 [ %56, %47 ], [ %147, %79 ]
  %179 = phi i64 [ %54, %47 ], [ %131, %79 ]
  %180 = phi i64 [ %52, %47 ], [ %127, %79 ]
  %181 = phi i64 [ %50, %47 ], [ %111, %79 ]
  %182 = phi i64 [ %48, %47 ], [ %107, %79 ]
  %183 = getelementptr inbounds nuw i8, ptr %11, i64 %38
  %184 = load i64, ptr %183, align 1
  %185 = lshr i64 %182, 47
  %186 = xor i64 %184, %185
  %187 = xor i64 %186, %182
  %188 = mul i64 %187, 2654435761
  store i64 %188, ptr %0, align 8, !alias.scope !57, !noalias !60
  %189 = getelementptr inbounds nuw i8, ptr %183, i64 8
  %190 = load i64, ptr %189, align 1
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %192 = lshr i64 %181, 47
  %193 = xor i64 %190, %192
  %194 = xor i64 %193, %181
  %195 = mul i64 %194, 2654435761
  store i64 %195, ptr %191, align 8, !alias.scope !57, !noalias !60
  %196 = getelementptr inbounds nuw i8, ptr %183, i64 16
  %197 = load i64, ptr %196, align 1
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %199 = lshr i64 %180, 47
  %200 = xor i64 %197, %199
  %201 = xor i64 %200, %180
  %202 = mul i64 %201, 2654435761
  store i64 %202, ptr %198, align 8, !alias.scope !57, !noalias !60
  %203 = getelementptr inbounds nuw i8, ptr %183, i64 24
  %204 = load i64, ptr %203, align 1
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %206 = lshr i64 %179, 47
  %207 = xor i64 %204, %206
  %208 = xor i64 %207, %179
  %209 = mul i64 %208, 2654435761
  store i64 %209, ptr %205, align 8, !alias.scope !57, !noalias !60
  %210 = getelementptr inbounds nuw i8, ptr %183, i64 32
  %211 = load i64, ptr %210, align 1
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %213 = lshr i64 %178, 47
  %214 = xor i64 %211, %213
  %215 = xor i64 %214, %178
  %216 = mul i64 %215, 2654435761
  store i64 %216, ptr %212, align 8, !alias.scope !57, !noalias !60
  %217 = getelementptr inbounds nuw i8, ptr %183, i64 40
  %218 = load i64, ptr %217, align 1
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %220 = lshr i64 %177, 47
  %221 = xor i64 %218, %220
  %222 = xor i64 %221, %177
  %223 = mul i64 %222, 2654435761
  store i64 %223, ptr %219, align 8, !alias.scope !57, !noalias !60
  %224 = getelementptr inbounds nuw i8, ptr %183, i64 48
  %225 = load i64, ptr %224, align 1
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %227 = lshr i64 %176, 47
  %228 = xor i64 %225, %227
  %229 = xor i64 %228, %176
  %230 = mul i64 %229, 2654435761
  store i64 %230, ptr %226, align 8, !alias.scope !57, !noalias !60
  %231 = getelementptr inbounds nuw i8, ptr %183, i64 56
  %232 = load i64, ptr %231, align 1
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %234 = lshr i64 %175, 47
  %235 = xor i64 %232, %234
  %236 = xor i64 %235, %175
  %237 = mul i64 %236, 2654435761
  store i64 %237, ptr %233, align 8, !alias.scope !57, !noalias !60
  %238 = shl nuw nsw i64 %40, 6
  %239 = getelementptr inbounds nuw i8, ptr %31, i64 %238
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %240 = icmp eq i64 %40, 4
  br i1 %240, label %451, label %241

241:                                              ; preds = %174, %241
  %242 = phi i64 [ %269, %241 ], [ %188, %174 ]
  %243 = phi i64 [ %273, %241 ], [ %195, %174 ]
  %244 = phi i64 [ %329, %241 ], [ %230, %174 ]
  %245 = phi i64 [ %333, %241 ], [ %237, %174 ]
  %246 = phi i64 [ %309, %241 ], [ %216, %174 ]
  %247 = phi i64 [ %313, %241 ], [ %223, %174 ]
  %248 = phi i64 [ %289, %241 ], [ %202, %174 ]
  %249 = phi i64 [ %293, %241 ], [ %209, %174 ]
  %250 = phi i64 [ %334, %241 ], [ 0, %174 ]
  %251 = shl i64 %250, 6
  %252 = getelementptr inbounds nuw i8, ptr %239, i64 %251
  %253 = getelementptr inbounds nuw i8, ptr %252, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %253, i32 0, i32 3, i32 1), !noalias !74
  %254 = shl i64 %250, 3
  %255 = getelementptr inbounds nuw i8, ptr %11, i64 %254
  %256 = load i64, ptr %252, align 1
  %257 = load i64, ptr %255, align 1
  %258 = xor i64 %257, %256
  %259 = add i64 %243, %256
  store i64 %259, ptr %191, align 8, !alias.scope !75, !noalias !78
  %260 = and i64 %258, 4294967295
  %261 = lshr i64 %258, 32
  %262 = mul nuw i64 %260, %261
  %263 = add i64 %242, %262
  store i64 %263, ptr %0, align 8, !alias.scope !75, !noalias !78
  %264 = getelementptr inbounds nuw i8, ptr %252, i64 8
  %265 = load i64, ptr %264, align 1
  %266 = getelementptr inbounds nuw i8, ptr %255, i64 8
  %267 = load i64, ptr %266, align 1
  %268 = xor i64 %267, %265
  %269 = add i64 %263, %265
  store i64 %269, ptr %0, align 8, !alias.scope !75, !noalias !78
  %270 = and i64 %268, 4294967295
  %271 = lshr i64 %268, 32
  %272 = mul nuw i64 %270, %271
  %273 = add i64 %259, %272
  store i64 %273, ptr %191, align 8, !alias.scope !75, !noalias !78
  %274 = getelementptr inbounds nuw i8, ptr %252, i64 16
  %275 = load i64, ptr %274, align 1
  %276 = getelementptr inbounds nuw i8, ptr %255, i64 16
  %277 = load i64, ptr %276, align 1
  %278 = xor i64 %277, %275
  %279 = add i64 %249, %275
  store i64 %279, ptr %205, align 8, !alias.scope !75, !noalias !78
  %280 = and i64 %278, 4294967295
  %281 = lshr i64 %278, 32
  %282 = mul nuw i64 %280, %281
  %283 = add i64 %248, %282
  store i64 %283, ptr %198, align 8, !alias.scope !75, !noalias !78
  %284 = getelementptr inbounds nuw i8, ptr %252, i64 24
  %285 = load i64, ptr %284, align 1
  %286 = getelementptr inbounds nuw i8, ptr %255, i64 24
  %287 = load i64, ptr %286, align 1
  %288 = xor i64 %287, %285
  %289 = add i64 %283, %285
  store i64 %289, ptr %198, align 8, !alias.scope !75, !noalias !78
  %290 = and i64 %288, 4294967295
  %291 = lshr i64 %288, 32
  %292 = mul nuw i64 %290, %291
  %293 = add i64 %279, %292
  store i64 %293, ptr %205, align 8, !alias.scope !75, !noalias !78
  %294 = getelementptr inbounds nuw i8, ptr %252, i64 32
  %295 = load i64, ptr %294, align 1
  %296 = getelementptr inbounds nuw i8, ptr %255, i64 32
  %297 = load i64, ptr %296, align 1
  %298 = xor i64 %297, %295
  %299 = add i64 %247, %295
  store i64 %299, ptr %219, align 8, !alias.scope !75, !noalias !78
  %300 = and i64 %298, 4294967295
  %301 = lshr i64 %298, 32
  %302 = mul nuw i64 %300, %301
  %303 = add i64 %246, %302
  store i64 %303, ptr %212, align 8, !alias.scope !75, !noalias !78
  %304 = getelementptr inbounds nuw i8, ptr %252, i64 40
  %305 = load i64, ptr %304, align 1
  %306 = getelementptr inbounds nuw i8, ptr %255, i64 40
  %307 = load i64, ptr %306, align 1
  %308 = xor i64 %307, %305
  %309 = add i64 %303, %305
  store i64 %309, ptr %212, align 8, !alias.scope !75, !noalias !78
  %310 = and i64 %308, 4294967295
  %311 = lshr i64 %308, 32
  %312 = mul nuw i64 %310, %311
  %313 = add i64 %299, %312
  store i64 %313, ptr %219, align 8, !alias.scope !75, !noalias !78
  %314 = getelementptr inbounds nuw i8, ptr %252, i64 48
  %315 = load i64, ptr %314, align 1
  %316 = getelementptr inbounds nuw i8, ptr %255, i64 48
  %317 = load i64, ptr %316, align 1
  %318 = xor i64 %317, %315
  %319 = add i64 %245, %315
  store i64 %319, ptr %233, align 8, !alias.scope !75, !noalias !78
  %320 = and i64 %318, 4294967295
  %321 = lshr i64 %318, 32
  %322 = mul nuw i64 %320, %321
  %323 = add i64 %244, %322
  store i64 %323, ptr %226, align 8, !alias.scope !75, !noalias !78
  %324 = getelementptr inbounds nuw i8, ptr %252, i64 56
  %325 = load i64, ptr %324, align 1
  %326 = getelementptr inbounds nuw i8, ptr %255, i64 56
  %327 = load i64, ptr %326, align 1
  %328 = xor i64 %327, %325
  %329 = add i64 %323, %325
  store i64 %329, ptr %226, align 8, !alias.scope !75, !noalias !78
  %330 = and i64 %328, 4294967295
  %331 = lshr i64 %328, 32
  %332 = mul nuw i64 %330, %331
  %333 = add i64 %319, %332
  store i64 %333, ptr %233, align 8, !alias.scope !75, !noalias !78
  %334 = add nuw i64 %250, 1
  %335 = icmp eq i64 %334, %43
  br i1 %335, label %451, label %241

336:                                              ; preds = %28
  %337 = shl i64 %39, 3
  %338 = getelementptr inbounds nuw i8, ptr %11, i64 %337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %339 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %340 = load i64, ptr %339, align 8, !alias.scope !86, !noalias !89
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %342 = load i64, ptr %341, align 8, !alias.scope !86, !noalias !89
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %344 = load i64, ptr %343, align 8, !alias.scope !86, !noalias !89
  %345 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %346 = load i64, ptr %345, align 8, !alias.scope !86, !noalias !89
  %347 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %348 = load i64, ptr %347, align 8, !alias.scope !86, !noalias !89
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %350 = load i64, ptr %349, align 8, !alias.scope !86, !noalias !89
  %351 = load i64, ptr %0, align 8, !alias.scope !86, !noalias !89
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %353 = load i64, ptr %352, align 8, !alias.scope !86, !noalias !89
  br label %354

354:                                              ; preds = %336, %354
  %355 = phi i64 [ %353, %336 ], [ %442, %354 ]
  %356 = phi i64 [ %351, %336 ], [ %382, %354 ]
  %357 = phi i64 [ %350, %336 ], [ %386, %354 ]
  %358 = phi i64 [ %348, %336 ], [ %446, %354 ]
  %359 = phi i64 [ %346, %336 ], [ %422, %354 ]
  %360 = phi i64 [ %344, %336 ], [ %426, %354 ]
  %361 = phi i64 [ %342, %336 ], [ %402, %354 ]
  %362 = phi i64 [ %340, %336 ], [ %406, %354 ]
  %363 = phi i64 [ 0, %336 ], [ %447, %354 ]
  %364 = shl nuw nsw i64 %363, 6
  %365 = getelementptr inbounds nuw i8, ptr %31, i64 %364
  %366 = getelementptr inbounds nuw i8, ptr %365, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %366, i32 0, i32 3, i32 1), !noalias !94
  %367 = shl nuw nsw i64 %363, 3
  %368 = getelementptr inbounds nuw i8, ptr %338, i64 %367
  %369 = load i64, ptr %365, align 1
  %370 = load i64, ptr %368, align 1
  %371 = xor i64 %370, %369
  %372 = add i64 %357, %369
  store i64 %372, ptr %349, align 8, !alias.scope !86, !noalias !89
  %373 = and i64 %371, 4294967295
  %374 = lshr i64 %371, 32
  %375 = mul nuw i64 %373, %374
  %376 = add i64 %356, %375
  store i64 %376, ptr %0, align 8, !alias.scope !86, !noalias !89
  %377 = getelementptr inbounds nuw i8, ptr %365, i64 8
  %378 = load i64, ptr %377, align 1
  %379 = getelementptr inbounds nuw i8, ptr %368, i64 8
  %380 = load i64, ptr %379, align 1
  %381 = xor i64 %380, %378
  %382 = add i64 %376, %378
  store i64 %382, ptr %0, align 8, !alias.scope !86, !noalias !89
  %383 = and i64 %381, 4294967295
  %384 = lshr i64 %381, 32
  %385 = mul nuw i64 %383, %384
  %386 = add i64 %372, %385
  store i64 %386, ptr %349, align 8, !alias.scope !86, !noalias !89
  %387 = getelementptr inbounds nuw i8, ptr %365, i64 16
  %388 = load i64, ptr %387, align 1
  %389 = getelementptr inbounds nuw i8, ptr %368, i64 16
  %390 = load i64, ptr %389, align 1
  %391 = xor i64 %390, %388
  %392 = add i64 %362, %388
  store i64 %392, ptr %339, align 8, !alias.scope !86, !noalias !89
  %393 = and i64 %391, 4294967295
  %394 = lshr i64 %391, 32
  %395 = mul nuw i64 %393, %394
  %396 = add i64 %361, %395
  store i64 %396, ptr %341, align 8, !alias.scope !86, !noalias !89
  %397 = getelementptr inbounds nuw i8, ptr %365, i64 24
  %398 = load i64, ptr %397, align 1
  %399 = getelementptr inbounds nuw i8, ptr %368, i64 24
  %400 = load i64, ptr %399, align 1
  %401 = xor i64 %400, %398
  %402 = add i64 %396, %398
  store i64 %402, ptr %341, align 8, !alias.scope !86, !noalias !89
  %403 = and i64 %401, 4294967295
  %404 = lshr i64 %401, 32
  %405 = mul nuw i64 %403, %404
  %406 = add i64 %392, %405
  store i64 %406, ptr %339, align 8, !alias.scope !86, !noalias !89
  %407 = getelementptr inbounds nuw i8, ptr %365, i64 32
  %408 = load i64, ptr %407, align 1
  %409 = getelementptr inbounds nuw i8, ptr %368, i64 32
  %410 = load i64, ptr %409, align 1
  %411 = xor i64 %410, %408
  %412 = add i64 %360, %408
  store i64 %412, ptr %343, align 8, !alias.scope !86, !noalias !89
  %413 = and i64 %411, 4294967295
  %414 = lshr i64 %411, 32
  %415 = mul nuw i64 %413, %414
  %416 = add i64 %359, %415
  store i64 %416, ptr %345, align 8, !alias.scope !86, !noalias !89
  %417 = getelementptr inbounds nuw i8, ptr %365, i64 40
  %418 = load i64, ptr %417, align 1
  %419 = getelementptr inbounds nuw i8, ptr %368, i64 40
  %420 = load i64, ptr %419, align 1
  %421 = xor i64 %420, %418
  %422 = add i64 %416, %418
  store i64 %422, ptr %345, align 8, !alias.scope !86, !noalias !89
  %423 = and i64 %421, 4294967295
  %424 = lshr i64 %421, 32
  %425 = mul nuw i64 %423, %424
  %426 = add i64 %412, %425
  store i64 %426, ptr %343, align 8, !alias.scope !86, !noalias !89
  %427 = getelementptr inbounds nuw i8, ptr %365, i64 48
  %428 = load i64, ptr %427, align 1
  %429 = getelementptr inbounds nuw i8, ptr %368, i64 48
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %428
  %432 = add i64 %358, %428
  store i64 %432, ptr %347, align 8, !alias.scope !86, !noalias !89
  %433 = and i64 %431, 4294967295
  %434 = lshr i64 %431, 32
  %435 = mul nuw i64 %433, %434
  %436 = add i64 %355, %435
  store i64 %436, ptr %352, align 8, !alias.scope !86, !noalias !89
  %437 = getelementptr inbounds nuw i8, ptr %365, i64 56
  %438 = load i64, ptr %437, align 1
  %439 = getelementptr inbounds nuw i8, ptr %368, i64 56
  %440 = load i64, ptr %439, align 1
  %441 = xor i64 %440, %438
  %442 = add i64 %436, %438
  store i64 %442, ptr %352, align 8, !alias.scope !86, !noalias !89
  %443 = and i64 %441, 4294967295
  %444 = lshr i64 %441, 32
  %445 = mul nuw i64 %443, %444
  %446 = add i64 %432, %445
  store i64 %446, ptr %347, align 8, !alias.scope !86, !noalias !89
  %447 = add nuw nsw i64 %363, 1
  %448 = icmp eq i64 %447, 4
  br i1 %448, label %449, label %354

449:                                              ; preds = %354
  %450 = add i64 %39, 4
  br label %451

451:                                              ; preds = %241, %174, %449
  %452 = phi i64 [ %450, %449 ], [ 0, %174 ], [ %43, %241 ]
  store i64 %452, ptr %34, align 8, !alias.scope !49, !noalias !51
  store i32 0, ptr %15, align 64
  br label %453

453:                                              ; preds = %451, %26
  %454 = phi ptr [ %33, %451 ], [ %1, %26 ]
  %455 = ptrtoint ptr %6 to i64
  %456 = ptrtoint ptr %454 to i64
  %457 = sub i64 %455, %456
  %458 = icmp sgt i64 %457, 256
  br i1 %458, label %459, label %890

459:                                              ; preds = %453
  %460 = getelementptr inbounds i8, ptr %6, i64 -256
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %464 = load i64, ptr %461, align 8, !alias.scope !95, !noalias !98
  %465 = load i64, ptr %462, align 8
  %466 = load i64, ptr %463, align 32
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %481 = getelementptr inbounds nuw i8, ptr %11, i64 %466
  %482 = getelementptr inbounds nuw i8, ptr %481, i64 8
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %484 = getelementptr inbounds nuw i8, ptr %481, i64 16
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %486 = getelementptr inbounds nuw i8, ptr %481, i64 24
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %488 = getelementptr inbounds nuw i8, ptr %481, i64 32
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %490 = getelementptr inbounds nuw i8, ptr %481, i64 40
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %492 = getelementptr inbounds nuw i8, ptr %481, i64 48
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %494 = getelementptr inbounds nuw i8, ptr %481, i64 56
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %503

503:                                              ; preds = %881, %459
  %504 = phi i64 [ %464, %459 ], [ %882, %881 ]
  %505 = phi ptr [ %454, %459 ], [ %883, %881 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %506 = sub i64 %465, %504
  %507 = icmp ugt i64 %506, 4
  br i1 %507, label %773, label %508

508:                                              ; preds = %503
  %509 = sub nuw nsw i64 4, %506
  %510 = shl i64 %504, 3
  %511 = getelementptr inbounds nuw i8, ptr %11, i64 %510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %512 = icmp eq i64 %465, %504
  br i1 %512, label %513, label %522

513:                                              ; preds = %508
  %514 = load i64, ptr %474, align 8, !alias.scope !106, !noalias !109
  %515 = load i64, ptr %475, align 8, !alias.scope !106, !noalias !109
  %516 = load i64, ptr %476, align 8, !alias.scope !106, !noalias !109
  %517 = load i64, ptr %477, align 8, !alias.scope !106, !noalias !109
  %518 = load i64, ptr %478, align 8, !alias.scope !106, !noalias !109
  %519 = load i64, ptr %479, align 8, !alias.scope !106, !noalias !109
  %520 = load i64, ptr %480, align 8, !alias.scope !106, !noalias !109
  %521 = load i64, ptr %0, align 8, !alias.scope !106, !noalias !109
  br label %626

522:                                              ; preds = %508
  %523 = load i64, ptr %467, align 8, !alias.scope !111, !noalias !114
  %524 = load i64, ptr %468, align 8, !alias.scope !111, !noalias !114
  %525 = load i64, ptr %469, align 8, !alias.scope !111, !noalias !114
  %526 = load i64, ptr %470, align 8, !alias.scope !111, !noalias !114
  %527 = load i64, ptr %471, align 8, !alias.scope !111, !noalias !114
  %528 = load i64, ptr %472, align 8, !alias.scope !111, !noalias !114
  %529 = load i64, ptr %0, align 8, !alias.scope !111, !noalias !114
  %530 = load i64, ptr %473, align 8, !alias.scope !111, !noalias !114
  br label %531

531:                                              ; preds = %522, %531
  %532 = phi i64 [ %619, %531 ], [ %530, %522 ]
  %533 = phi i64 [ %559, %531 ], [ %529, %522 ]
  %534 = phi i64 [ %563, %531 ], [ %528, %522 ]
  %535 = phi i64 [ %623, %531 ], [ %527, %522 ]
  %536 = phi i64 [ %599, %531 ], [ %526, %522 ]
  %537 = phi i64 [ %603, %531 ], [ %525, %522 ]
  %538 = phi i64 [ %579, %531 ], [ %524, %522 ]
  %539 = phi i64 [ %583, %531 ], [ %523, %522 ]
  %540 = phi i64 [ %624, %531 ], [ 0, %522 ]
  %541 = shl i64 %540, 6
  %542 = getelementptr inbounds nuw i8, ptr %505, i64 %541
  %543 = getelementptr inbounds nuw i8, ptr %542, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %543, i32 0, i32 3, i32 1), !noalias !119
  %544 = shl i64 %540, 3
  %545 = getelementptr inbounds nuw i8, ptr %511, i64 %544
  %546 = load i64, ptr %542, align 1
  %547 = load i64, ptr %545, align 1
  %548 = xor i64 %547, %546
  %549 = add i64 %534, %546
  store i64 %549, ptr %472, align 8, !alias.scope !111, !noalias !114
  %550 = and i64 %548, 4294967295
  %551 = lshr i64 %548, 32
  %552 = mul nuw i64 %550, %551
  %553 = add i64 %533, %552
  store i64 %553, ptr %0, align 8, !alias.scope !111, !noalias !114
  %554 = getelementptr inbounds nuw i8, ptr %542, i64 8
  %555 = load i64, ptr %554, align 1
  %556 = getelementptr inbounds nuw i8, ptr %545, i64 8
  %557 = load i64, ptr %556, align 1
  %558 = xor i64 %557, %555
  %559 = add i64 %553, %555
  store i64 %559, ptr %0, align 8, !alias.scope !111, !noalias !114
  %560 = and i64 %558, 4294967295
  %561 = lshr i64 %558, 32
  %562 = mul nuw i64 %560, %561
  %563 = add i64 %549, %562
  store i64 %563, ptr %472, align 8, !alias.scope !111, !noalias !114
  %564 = getelementptr inbounds nuw i8, ptr %542, i64 16
  %565 = load i64, ptr %564, align 1
  %566 = getelementptr inbounds nuw i8, ptr %545, i64 16
  %567 = load i64, ptr %566, align 1
  %568 = xor i64 %567, %565
  %569 = add i64 %539, %565
  store i64 %569, ptr %467, align 8, !alias.scope !111, !noalias !114
  %570 = and i64 %568, 4294967295
  %571 = lshr i64 %568, 32
  %572 = mul nuw i64 %570, %571
  %573 = add i64 %538, %572
  store i64 %573, ptr %468, align 8, !alias.scope !111, !noalias !114
  %574 = getelementptr inbounds nuw i8, ptr %542, i64 24
  %575 = load i64, ptr %574, align 1
  %576 = getelementptr inbounds nuw i8, ptr %545, i64 24
  %577 = load i64, ptr %576, align 1
  %578 = xor i64 %577, %575
  %579 = add i64 %573, %575
  store i64 %579, ptr %468, align 8, !alias.scope !111, !noalias !114
  %580 = and i64 %578, 4294967295
  %581 = lshr i64 %578, 32
  %582 = mul nuw i64 %580, %581
  %583 = add i64 %569, %582
  store i64 %583, ptr %467, align 8, !alias.scope !111, !noalias !114
  %584 = getelementptr inbounds nuw i8, ptr %542, i64 32
  %585 = load i64, ptr %584, align 1
  %586 = getelementptr inbounds nuw i8, ptr %545, i64 32
  %587 = load i64, ptr %586, align 1
  %588 = xor i64 %587, %585
  %589 = add i64 %537, %585
  store i64 %589, ptr %469, align 8, !alias.scope !111, !noalias !114
  %590 = and i64 %588, 4294967295
  %591 = lshr i64 %588, 32
  %592 = mul nuw i64 %590, %591
  %593 = add i64 %536, %592
  store i64 %593, ptr %470, align 8, !alias.scope !111, !noalias !114
  %594 = getelementptr inbounds nuw i8, ptr %542, i64 40
  %595 = load i64, ptr %594, align 1
  %596 = getelementptr inbounds nuw i8, ptr %545, i64 40
  %597 = load i64, ptr %596, align 1
  %598 = xor i64 %597, %595
  %599 = add i64 %593, %595
  store i64 %599, ptr %470, align 8, !alias.scope !111, !noalias !114
  %600 = and i64 %598, 4294967295
  %601 = lshr i64 %598, 32
  %602 = mul nuw i64 %600, %601
  %603 = add i64 %589, %602
  store i64 %603, ptr %469, align 8, !alias.scope !111, !noalias !114
  %604 = getelementptr inbounds nuw i8, ptr %542, i64 48
  %605 = load i64, ptr %604, align 1
  %606 = getelementptr inbounds nuw i8, ptr %545, i64 48
  %607 = load i64, ptr %606, align 1
  %608 = xor i64 %607, %605
  %609 = add i64 %535, %605
  store i64 %609, ptr %471, align 8, !alias.scope !111, !noalias !114
  %610 = and i64 %608, 4294967295
  %611 = lshr i64 %608, 32
  %612 = mul nuw i64 %610, %611
  %613 = add i64 %532, %612
  store i64 %613, ptr %473, align 8, !alias.scope !111, !noalias !114
  %614 = getelementptr inbounds nuw i8, ptr %542, i64 56
  %615 = load i64, ptr %614, align 1
  %616 = getelementptr inbounds nuw i8, ptr %545, i64 56
  %617 = load i64, ptr %616, align 1
  %618 = xor i64 %617, %615
  %619 = add i64 %613, %615
  store i64 %619, ptr %473, align 8, !alias.scope !111, !noalias !114
  %620 = and i64 %618, 4294967295
  %621 = lshr i64 %618, 32
  %622 = mul nuw i64 %620, %621
  %623 = add i64 %609, %622
  store i64 %623, ptr %471, align 8, !alias.scope !111, !noalias !114
  %624 = add nuw i64 %540, 1
  %625 = icmp eq i64 %624, %506
  br i1 %625, label %626, label %531

626:                                              ; preds = %531, %513
  %627 = phi i64 [ %521, %513 ], [ %559, %531 ]
  %628 = phi i64 [ %520, %513 ], [ %623, %531 ]
  %629 = phi i64 [ %519, %513 ], [ %619, %531 ]
  %630 = phi i64 [ %518, %513 ], [ %603, %531 ]
  %631 = phi i64 [ %517, %513 ], [ %599, %531 ]
  %632 = phi i64 [ %516, %513 ], [ %583, %531 ]
  %633 = phi i64 [ %515, %513 ], [ %579, %531 ]
  %634 = phi i64 [ %514, %513 ], [ %563, %531 ]
  %635 = load i64, ptr %481, align 1
  %636 = lshr i64 %627, 47
  %637 = xor i64 %635, %636
  %638 = xor i64 %637, %627
  %639 = mul i64 %638, 2654435761
  store i64 %639, ptr %0, align 8, !alias.scope !106, !noalias !109
  %640 = load i64, ptr %482, align 1
  %641 = lshr i64 %634, 47
  %642 = xor i64 %640, %641
  %643 = xor i64 %642, %634
  %644 = mul i64 %643, 2654435761
  store i64 %644, ptr %483, align 8, !alias.scope !106, !noalias !109
  %645 = load i64, ptr %484, align 1
  %646 = lshr i64 %633, 47
  %647 = xor i64 %645, %646
  %648 = xor i64 %647, %633
  %649 = mul i64 %648, 2654435761
  store i64 %649, ptr %485, align 8, !alias.scope !106, !noalias !109
  %650 = load i64, ptr %486, align 1
  %651 = lshr i64 %632, 47
  %652 = xor i64 %650, %651
  %653 = xor i64 %652, %632
  %654 = mul i64 %653, 2654435761
  store i64 %654, ptr %487, align 8, !alias.scope !106, !noalias !109
  %655 = load i64, ptr %488, align 1
  %656 = lshr i64 %631, 47
  %657 = xor i64 %655, %656
  %658 = xor i64 %657, %631
  %659 = mul i64 %658, 2654435761
  store i64 %659, ptr %489, align 8, !alias.scope !106, !noalias !109
  %660 = load i64, ptr %490, align 1
  %661 = lshr i64 %630, 47
  %662 = xor i64 %660, %661
  %663 = xor i64 %662, %630
  %664 = mul i64 %663, 2654435761
  store i64 %664, ptr %491, align 8, !alias.scope !106, !noalias !109
  %665 = load i64, ptr %492, align 1
  %666 = lshr i64 %629, 47
  %667 = xor i64 %665, %666
  %668 = xor i64 %667, %629
  %669 = mul i64 %668, 2654435761
  store i64 %669, ptr %493, align 8, !alias.scope !106, !noalias !109
  %670 = load i64, ptr %494, align 1
  %671 = lshr i64 %628, 47
  %672 = xor i64 %670, %671
  %673 = xor i64 %672, %628
  %674 = mul i64 %673, 2654435761
  store i64 %674, ptr %495, align 8, !alias.scope !106, !noalias !109
  %675 = shl nuw nsw i64 %506, 6
  %676 = getelementptr inbounds nuw i8, ptr %505, i64 %675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %677 = icmp eq i64 %506, 4
  br i1 %677, label %881, label %678

678:                                              ; preds = %626, %678
  %679 = phi i64 [ %706, %678 ], [ %639, %626 ]
  %680 = phi i64 [ %710, %678 ], [ %644, %626 ]
  %681 = phi i64 [ %766, %678 ], [ %669, %626 ]
  %682 = phi i64 [ %770, %678 ], [ %674, %626 ]
  %683 = phi i64 [ %746, %678 ], [ %659, %626 ]
  %684 = phi i64 [ %750, %678 ], [ %664, %626 ]
  %685 = phi i64 [ %726, %678 ], [ %649, %626 ]
  %686 = phi i64 [ %730, %678 ], [ %654, %626 ]
  %687 = phi i64 [ %771, %678 ], [ 0, %626 ]
  %688 = shl i64 %687, 6
  %689 = getelementptr inbounds nuw i8, ptr %676, i64 %688
  %690 = getelementptr inbounds nuw i8, ptr %689, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %690, i32 0, i32 3, i32 1), !noalias !123
  %691 = shl i64 %687, 3
  %692 = getelementptr inbounds nuw i8, ptr %11, i64 %691
  %693 = load i64, ptr %689, align 1
  %694 = load i64, ptr %692, align 1
  %695 = xor i64 %694, %693
  %696 = add i64 %680, %693
  store i64 %696, ptr %483, align 8, !alias.scope !124, !noalias !127
  %697 = and i64 %695, 4294967295
  %698 = lshr i64 %695, 32
  %699 = mul nuw i64 %697, %698
  %700 = add i64 %679, %699
  store i64 %700, ptr %0, align 8, !alias.scope !124, !noalias !127
  %701 = getelementptr inbounds nuw i8, ptr %689, i64 8
  %702 = load i64, ptr %701, align 1
  %703 = getelementptr inbounds nuw i8, ptr %692, i64 8
  %704 = load i64, ptr %703, align 1
  %705 = xor i64 %704, %702
  %706 = add i64 %700, %702
  store i64 %706, ptr %0, align 8, !alias.scope !124, !noalias !127
  %707 = and i64 %705, 4294967295
  %708 = lshr i64 %705, 32
  %709 = mul nuw i64 %707, %708
  %710 = add i64 %696, %709
  store i64 %710, ptr %483, align 8, !alias.scope !124, !noalias !127
  %711 = getelementptr inbounds nuw i8, ptr %689, i64 16
  %712 = load i64, ptr %711, align 1
  %713 = getelementptr inbounds nuw i8, ptr %692, i64 16
  %714 = load i64, ptr %713, align 1
  %715 = xor i64 %714, %712
  %716 = add i64 %686, %712
  store i64 %716, ptr %487, align 8, !alias.scope !124, !noalias !127
  %717 = and i64 %715, 4294967295
  %718 = lshr i64 %715, 32
  %719 = mul nuw i64 %717, %718
  %720 = add i64 %685, %719
  store i64 %720, ptr %485, align 8, !alias.scope !124, !noalias !127
  %721 = getelementptr inbounds nuw i8, ptr %689, i64 24
  %722 = load i64, ptr %721, align 1
  %723 = getelementptr inbounds nuw i8, ptr %692, i64 24
  %724 = load i64, ptr %723, align 1
  %725 = xor i64 %724, %722
  %726 = add i64 %720, %722
  store i64 %726, ptr %485, align 8, !alias.scope !124, !noalias !127
  %727 = and i64 %725, 4294967295
  %728 = lshr i64 %725, 32
  %729 = mul nuw i64 %727, %728
  %730 = add i64 %716, %729
  store i64 %730, ptr %487, align 8, !alias.scope !124, !noalias !127
  %731 = getelementptr inbounds nuw i8, ptr %689, i64 32
  %732 = load i64, ptr %731, align 1
  %733 = getelementptr inbounds nuw i8, ptr %692, i64 32
  %734 = load i64, ptr %733, align 1
  %735 = xor i64 %734, %732
  %736 = add i64 %684, %732
  store i64 %736, ptr %491, align 8, !alias.scope !124, !noalias !127
  %737 = and i64 %735, 4294967295
  %738 = lshr i64 %735, 32
  %739 = mul nuw i64 %737, %738
  %740 = add i64 %683, %739
  store i64 %740, ptr %489, align 8, !alias.scope !124, !noalias !127
  %741 = getelementptr inbounds nuw i8, ptr %689, i64 40
  %742 = load i64, ptr %741, align 1
  %743 = getelementptr inbounds nuw i8, ptr %692, i64 40
  %744 = load i64, ptr %743, align 1
  %745 = xor i64 %744, %742
  %746 = add i64 %740, %742
  store i64 %746, ptr %489, align 8, !alias.scope !124, !noalias !127
  %747 = and i64 %745, 4294967295
  %748 = lshr i64 %745, 32
  %749 = mul nuw i64 %747, %748
  %750 = add i64 %736, %749
  store i64 %750, ptr %491, align 8, !alias.scope !124, !noalias !127
  %751 = getelementptr inbounds nuw i8, ptr %689, i64 48
  %752 = load i64, ptr %751, align 1
  %753 = getelementptr inbounds nuw i8, ptr %692, i64 48
  %754 = load i64, ptr %753, align 1
  %755 = xor i64 %754, %752
  %756 = add i64 %682, %752
  store i64 %756, ptr %495, align 8, !alias.scope !124, !noalias !127
  %757 = and i64 %755, 4294967295
  %758 = lshr i64 %755, 32
  %759 = mul nuw i64 %757, %758
  %760 = add i64 %681, %759
  store i64 %760, ptr %493, align 8, !alias.scope !124, !noalias !127
  %761 = getelementptr inbounds nuw i8, ptr %689, i64 56
  %762 = load i64, ptr %761, align 1
  %763 = getelementptr inbounds nuw i8, ptr %692, i64 56
  %764 = load i64, ptr %763, align 1
  %765 = xor i64 %764, %762
  %766 = add i64 %760, %762
  store i64 %766, ptr %493, align 8, !alias.scope !124, !noalias !127
  %767 = and i64 %765, 4294967295
  %768 = lshr i64 %765, 32
  %769 = mul nuw i64 %767, %768
  %770 = add i64 %756, %769
  store i64 %770, ptr %495, align 8, !alias.scope !124, !noalias !127
  %771 = add nuw i64 %687, 1
  %772 = icmp eq i64 %771, %509
  br i1 %772, label %881, label %678

773:                                              ; preds = %503
  %774 = shl i64 %504, 3
  %775 = getelementptr inbounds nuw i8, ptr %11, i64 %774
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %776 = load i64, ptr %496, align 8, !alias.scope !135, !noalias !138
  %777 = load i64, ptr %497, align 8, !alias.scope !135, !noalias !138
  %778 = load i64, ptr %498, align 8, !alias.scope !135, !noalias !138
  %779 = load i64, ptr %499, align 8, !alias.scope !135, !noalias !138
  %780 = load i64, ptr %500, align 8, !alias.scope !135, !noalias !138
  %781 = load i64, ptr %501, align 8, !alias.scope !135, !noalias !138
  %782 = load i64, ptr %0, align 8, !alias.scope !135, !noalias !138
  %783 = load i64, ptr %502, align 8, !alias.scope !135, !noalias !138
  br label %784

784:                                              ; preds = %773, %784
  %785 = phi i64 [ %783, %773 ], [ %872, %784 ]
  %786 = phi i64 [ %782, %773 ], [ %812, %784 ]
  %787 = phi i64 [ %781, %773 ], [ %816, %784 ]
  %788 = phi i64 [ %780, %773 ], [ %876, %784 ]
  %789 = phi i64 [ %779, %773 ], [ %852, %784 ]
  %790 = phi i64 [ %778, %773 ], [ %856, %784 ]
  %791 = phi i64 [ %777, %773 ], [ %832, %784 ]
  %792 = phi i64 [ %776, %773 ], [ %836, %784 ]
  %793 = phi i64 [ 0, %773 ], [ %877, %784 ]
  %794 = shl nuw nsw i64 %793, 6
  %795 = getelementptr inbounds nuw i8, ptr %505, i64 %794
  %796 = getelementptr inbounds nuw i8, ptr %795, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %796, i32 0, i32 3, i32 1), !noalias !143
  %797 = shl nuw nsw i64 %793, 3
  %798 = getelementptr inbounds nuw i8, ptr %775, i64 %797
  %799 = load i64, ptr %795, align 1
  %800 = load i64, ptr %798, align 1
  %801 = xor i64 %800, %799
  %802 = add i64 %787, %799
  store i64 %802, ptr %501, align 8, !alias.scope !135, !noalias !138
  %803 = and i64 %801, 4294967295
  %804 = lshr i64 %801, 32
  %805 = mul nuw i64 %803, %804
  %806 = add i64 %786, %805
  store i64 %806, ptr %0, align 8, !alias.scope !135, !noalias !138
  %807 = getelementptr inbounds nuw i8, ptr %795, i64 8
  %808 = load i64, ptr %807, align 1
  %809 = getelementptr inbounds nuw i8, ptr %798, i64 8
  %810 = load i64, ptr %809, align 1
  %811 = xor i64 %810, %808
  %812 = add i64 %806, %808
  store i64 %812, ptr %0, align 8, !alias.scope !135, !noalias !138
  %813 = and i64 %811, 4294967295
  %814 = lshr i64 %811, 32
  %815 = mul nuw i64 %813, %814
  %816 = add i64 %802, %815
  store i64 %816, ptr %501, align 8, !alias.scope !135, !noalias !138
  %817 = getelementptr inbounds nuw i8, ptr %795, i64 16
  %818 = load i64, ptr %817, align 1
  %819 = getelementptr inbounds nuw i8, ptr %798, i64 16
  %820 = load i64, ptr %819, align 1
  %821 = xor i64 %820, %818
  %822 = add i64 %792, %818
  store i64 %822, ptr %496, align 8, !alias.scope !135, !noalias !138
  %823 = and i64 %821, 4294967295
  %824 = lshr i64 %821, 32
  %825 = mul nuw i64 %823, %824
  %826 = add i64 %791, %825
  store i64 %826, ptr %497, align 8, !alias.scope !135, !noalias !138
  %827 = getelementptr inbounds nuw i8, ptr %795, i64 24
  %828 = load i64, ptr %827, align 1
  %829 = getelementptr inbounds nuw i8, ptr %798, i64 24
  %830 = load i64, ptr %829, align 1
  %831 = xor i64 %830, %828
  %832 = add i64 %826, %828
  store i64 %832, ptr %497, align 8, !alias.scope !135, !noalias !138
  %833 = and i64 %831, 4294967295
  %834 = lshr i64 %831, 32
  %835 = mul nuw i64 %833, %834
  %836 = add i64 %822, %835
  store i64 %836, ptr %496, align 8, !alias.scope !135, !noalias !138
  %837 = getelementptr inbounds nuw i8, ptr %795, i64 32
  %838 = load i64, ptr %837, align 1
  %839 = getelementptr inbounds nuw i8, ptr %798, i64 32
  %840 = load i64, ptr %839, align 1
  %841 = xor i64 %840, %838
  %842 = add i64 %790, %838
  store i64 %842, ptr %498, align 8, !alias.scope !135, !noalias !138
  %843 = and i64 %841, 4294967295
  %844 = lshr i64 %841, 32
  %845 = mul nuw i64 %843, %844
  %846 = add i64 %789, %845
  store i64 %846, ptr %499, align 8, !alias.scope !135, !noalias !138
  %847 = getelementptr inbounds nuw i8, ptr %795, i64 40
  %848 = load i64, ptr %847, align 1
  %849 = getelementptr inbounds nuw i8, ptr %798, i64 40
  %850 = load i64, ptr %849, align 1
  %851 = xor i64 %850, %848
  %852 = add i64 %846, %848
  store i64 %852, ptr %499, align 8, !alias.scope !135, !noalias !138
  %853 = and i64 %851, 4294967295
  %854 = lshr i64 %851, 32
  %855 = mul nuw i64 %853, %854
  %856 = add i64 %842, %855
  store i64 %856, ptr %498, align 8, !alias.scope !135, !noalias !138
  %857 = getelementptr inbounds nuw i8, ptr %795, i64 48
  %858 = load i64, ptr %857, align 1
  %859 = getelementptr inbounds nuw i8, ptr %798, i64 48
  %860 = load i64, ptr %859, align 1
  %861 = xor i64 %860, %858
  %862 = add i64 %788, %858
  store i64 %862, ptr %500, align 8, !alias.scope !135, !noalias !138
  %863 = and i64 %861, 4294967295
  %864 = lshr i64 %861, 32
  %865 = mul nuw i64 %863, %864
  %866 = add i64 %785, %865
  store i64 %866, ptr %502, align 8, !alias.scope !135, !noalias !138
  %867 = getelementptr inbounds nuw i8, ptr %795, i64 56
  %868 = load i64, ptr %867, align 1
  %869 = getelementptr inbounds nuw i8, ptr %798, i64 56
  %870 = load i64, ptr %869, align 1
  %871 = xor i64 %870, %868
  %872 = add i64 %866, %868
  store i64 %872, ptr %502, align 8, !alias.scope !135, !noalias !138
  %873 = and i64 %871, 4294967295
  %874 = lshr i64 %871, 32
  %875 = mul nuw i64 %873, %874
  %876 = add i64 %862, %875
  store i64 %876, ptr %500, align 8, !alias.scope !135, !noalias !138
  %877 = add nuw nsw i64 %793, 1
  %878 = icmp eq i64 %877, 4
  br i1 %878, label %879, label %784

879:                                              ; preds = %784
  %880 = add i64 %504, 4
  br label %881

881:                                              ; preds = %678, %626, %879
  %882 = phi i64 [ %880, %879 ], [ 0, %626 ], [ %509, %678 ]
  store i64 %882, ptr %461, align 8, !alias.scope !95, !noalias !98
  %883 = getelementptr inbounds nuw i8, ptr %505, i64 256
  %884 = icmp ult ptr %883, %460
  br i1 %884, label %503, label %885

885:                                              ; preds = %881
  %886 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %887 = getelementptr inbounds nuw i8, ptr %505, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %886, ptr noundef nonnull align 1 dereferenceable(64) %887, i64 64, i1 false)
  %888 = ptrtoint ptr %883 to i64
  %889 = sub i64 %455, %888
  br label %890

890:                                              ; preds = %885, %453
  %891 = phi i64 [ %889, %885 ], [ %457, %453 ]
  %892 = phi ptr [ %883, %885 ], [ %454, %453 ]
  %893 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %893, ptr nonnull readonly align 1 %892, i64 %891, i1 false)
  %894 = trunc i64 %891 to i32
  br label %895

895:                                              ; preds = %890, %20
  %896 = phi i32 [ %894, %890 ], [ %25, %20 ]
  store i32 %896, ptr %15, align 64
  br label %897

897:                                              ; preds = %3, %895
  %898 = phi i32 [ 1, %3 ], [ 0, %895 ]
  ret i32 %898
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @XXH3_64bits_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #18 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = select i1 %5, ptr %6, ptr %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %9 = load i64, ptr %8, align 16
  %10 = icmp ugt i64 %9, 240
  br i1 %10, label %11, label %648

11:                                               ; preds = %1
  %12 = load i64, ptr %0, align 64
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load i64, ptr %15, align 16
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %20 = load i64, ptr %19, align 32
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %24 = load i64, ptr %23, align 16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %28 = load i32, ptr %27, align 64
  %29 = icmp ugt i32 %28, 63
  br i1 %29, label %30, label %491

30:                                               ; preds = %11
  %31 = add i32 %28, -1
  %32 = lshr i32 %31, 6
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %40 = load i64, ptr %39, align 32
  %41 = sub i64 %37, %35
  %42 = icmp ugt i64 %41, %33
  br i1 %42, label %298, label %43

43:                                               ; preds = %30
  %44 = sub nuw nsw i64 %33, %41
  %45 = shl i64 %35, 3
  %46 = getelementptr inbounds nuw i8, ptr %7, i64 %45
  %47 = icmp eq i64 %37, %35
  br i1 %47, label %143, label %48

48:                                               ; preds = %43, %48
  %49 = phi i64 [ %140, %48 ], [ %26, %43 ]
  %50 = phi i64 [ %136, %48 ], [ %24, %43 ]
  %51 = phi i64 [ %120, %48 ], [ %22, %43 ]
  %52 = phi i64 [ %116, %48 ], [ %20, %43 ]
  %53 = phi i64 [ %100, %48 ], [ %18, %43 ]
  %54 = phi i64 [ %96, %48 ], [ %16, %43 ]
  %55 = phi i64 [ %80, %48 ], [ %14, %43 ]
  %56 = phi i64 [ %76, %48 ], [ %12, %43 ]
  %57 = phi i64 [ %141, %48 ], [ 0, %43 ]
  %58 = shl i64 %57, 6
  %59 = getelementptr inbounds nuw i8, ptr %38, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %60, i32 0, i32 3, i32 1), !noalias !144
  %61 = shl i64 %57, 3
  %62 = getelementptr inbounds nuw i8, ptr %46, i64 %61
  %63 = load i64, ptr %59, align 1
  %64 = load i64, ptr %62, align 1
  %65 = xor i64 %64, %63
  %66 = add i64 %55, %63
  %67 = and i64 %65, 4294967295
  %68 = lshr i64 %65, 32
  %69 = mul nuw i64 %67, %68
  %70 = add i64 %56, %69
  %71 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %72 = load i64, ptr %71, align 1
  %73 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %74 = load i64, ptr %73, align 1
  %75 = xor i64 %74, %72
  %76 = add i64 %70, %72
  %77 = and i64 %75, 4294967295
  %78 = lshr i64 %75, 32
  %79 = mul nuw i64 %77, %78
  %80 = add i64 %66, %79
  %81 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = add i64 %53, %82
  %87 = and i64 %85, 4294967295
  %88 = lshr i64 %85, 32
  %89 = mul nuw i64 %87, %88
  %90 = add i64 %54, %89
  %91 = getelementptr inbounds nuw i8, ptr %59, i64 24
  %92 = load i64, ptr %91, align 1
  %93 = getelementptr inbounds nuw i8, ptr %62, i64 24
  %94 = load i64, ptr %93, align 1
  %95 = xor i64 %94, %92
  %96 = add i64 %90, %92
  %97 = and i64 %95, 4294967295
  %98 = lshr i64 %95, 32
  %99 = mul nuw i64 %97, %98
  %100 = add i64 %86, %99
  %101 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %102 = load i64, ptr %101, align 1
  %103 = getelementptr inbounds nuw i8, ptr %62, i64 32
  %104 = load i64, ptr %103, align 1
  %105 = xor i64 %104, %102
  %106 = add i64 %51, %102
  %107 = and i64 %105, 4294967295
  %108 = lshr i64 %105, 32
  %109 = mul nuw i64 %107, %108
  %110 = add i64 %52, %109
  %111 = getelementptr inbounds nuw i8, ptr %59, i64 40
  %112 = load i64, ptr %111, align 1
  %113 = getelementptr inbounds nuw i8, ptr %62, i64 40
  %114 = load i64, ptr %113, align 1
  %115 = xor i64 %114, %112
  %116 = add i64 %110, %112
  %117 = and i64 %115, 4294967295
  %118 = lshr i64 %115, 32
  %119 = mul nuw i64 %117, %118
  %120 = add i64 %106, %119
  %121 = getelementptr inbounds nuw i8, ptr %59, i64 48
  %122 = load i64, ptr %121, align 1
  %123 = getelementptr inbounds nuw i8, ptr %62, i64 48
  %124 = load i64, ptr %123, align 1
  %125 = xor i64 %124, %122
  %126 = add i64 %49, %122
  %127 = and i64 %125, 4294967295
  %128 = lshr i64 %125, 32
  %129 = mul nuw i64 %127, %128
  %130 = add i64 %50, %129
  %131 = getelementptr inbounds nuw i8, ptr %59, i64 56
  %132 = load i64, ptr %131, align 1
  %133 = getelementptr inbounds nuw i8, ptr %62, i64 56
  %134 = load i64, ptr %133, align 1
  %135 = xor i64 %134, %132
  %136 = add i64 %130, %132
  %137 = and i64 %135, 4294967295
  %138 = lshr i64 %135, 32
  %139 = mul nuw i64 %137, %138
  %140 = add i64 %126, %139
  %141 = add nuw i64 %57, 1
  %142 = icmp eq i64 %141, %41
  br i1 %142, label %143, label %48

143:                                              ; preds = %48, %43
  %144 = phi i64 [ %26, %43 ], [ %140, %48 ]
  %145 = phi i64 [ %24, %43 ], [ %136, %48 ]
  %146 = phi i64 [ %22, %43 ], [ %120, %48 ]
  %147 = phi i64 [ %20, %43 ], [ %116, %48 ]
  %148 = phi i64 [ %18, %43 ], [ %100, %48 ]
  %149 = phi i64 [ %16, %43 ], [ %96, %48 ]
  %150 = phi i64 [ %14, %43 ], [ %80, %48 ]
  %151 = phi i64 [ %12, %43 ], [ %76, %48 ]
  %152 = getelementptr inbounds nuw i8, ptr %7, i64 %40
  %153 = load i64, ptr %152, align 1
  %154 = lshr i64 %151, 47
  %155 = xor i64 %153, %154
  %156 = xor i64 %155, %151
  %157 = mul i64 %156, 2654435761
  %158 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %159 = load i64, ptr %158, align 1
  %160 = lshr i64 %150, 47
  %161 = xor i64 %159, %160
  %162 = xor i64 %161, %150
  %163 = mul i64 %162, 2654435761
  %164 = getelementptr inbounds nuw i8, ptr %152, i64 16
  %165 = load i64, ptr %164, align 1
  %166 = lshr i64 %149, 47
  %167 = xor i64 %165, %166
  %168 = xor i64 %167, %149
  %169 = mul i64 %168, 2654435761
  %170 = getelementptr inbounds nuw i8, ptr %152, i64 24
  %171 = load i64, ptr %170, align 1
  %172 = lshr i64 %148, 47
  %173 = xor i64 %171, %172
  %174 = xor i64 %173, %148
  %175 = mul i64 %174, 2654435761
  %176 = getelementptr inbounds nuw i8, ptr %152, i64 32
  %177 = load i64, ptr %176, align 1
  %178 = lshr i64 %147, 47
  %179 = xor i64 %177, %178
  %180 = xor i64 %179, %147
  %181 = mul i64 %180, 2654435761
  %182 = getelementptr inbounds nuw i8, ptr %152, i64 40
  %183 = load i64, ptr %182, align 1
  %184 = lshr i64 %146, 47
  %185 = xor i64 %183, %184
  %186 = xor i64 %185, %146
  %187 = mul i64 %186, 2654435761
  %188 = getelementptr inbounds nuw i8, ptr %152, i64 48
  %189 = load i64, ptr %188, align 1
  %190 = lshr i64 %145, 47
  %191 = xor i64 %189, %190
  %192 = xor i64 %191, %145
  %193 = mul i64 %192, 2654435761
  %194 = getelementptr inbounds nuw i8, ptr %152, i64 56
  %195 = load i64, ptr %194, align 1
  %196 = lshr i64 %144, 47
  %197 = xor i64 %195, %196
  %198 = xor i64 %197, %144
  %199 = mul i64 %198, 2654435761
  %200 = shl nuw nsw i64 %41, 6
  %201 = getelementptr inbounds nuw i8, ptr %38, i64 %200
  %202 = icmp eq i64 %41, %33
  br i1 %202, label %399, label %203

203:                                              ; preds = %143, %203
  %204 = phi i64 [ %295, %203 ], [ %199, %143 ]
  %205 = phi i64 [ %291, %203 ], [ %193, %143 ]
  %206 = phi i64 [ %275, %203 ], [ %187, %143 ]
  %207 = phi i64 [ %271, %203 ], [ %181, %143 ]
  %208 = phi i64 [ %255, %203 ], [ %175, %143 ]
  %209 = phi i64 [ %251, %203 ], [ %169, %143 ]
  %210 = phi i64 [ %235, %203 ], [ %163, %143 ]
  %211 = phi i64 [ %231, %203 ], [ %157, %143 ]
  %212 = phi i64 [ %296, %203 ], [ 0, %143 ]
  %213 = shl i64 %212, 6
  %214 = getelementptr inbounds nuw i8, ptr %201, i64 %213
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %215, i32 0, i32 3, i32 1), !noalias !150
  %216 = shl i64 %212, 3
  %217 = getelementptr inbounds nuw i8, ptr %7, i64 %216
  %218 = load i64, ptr %214, align 1
  %219 = load i64, ptr %217, align 1
  %220 = xor i64 %219, %218
  %221 = add i64 %210, %218
  %222 = and i64 %220, 4294967295
  %223 = lshr i64 %220, 32
  %224 = mul nuw i64 %222, %223
  %225 = add i64 %211, %224
  %226 = getelementptr inbounds nuw i8, ptr %214, i64 8
  %227 = load i64, ptr %226, align 1
  %228 = getelementptr inbounds nuw i8, ptr %217, i64 8
  %229 = load i64, ptr %228, align 1
  %230 = xor i64 %229, %227
  %231 = add i64 %225, %227
  %232 = and i64 %230, 4294967295
  %233 = lshr i64 %230, 32
  %234 = mul nuw i64 %232, %233
  %235 = add i64 %221, %234
  %236 = getelementptr inbounds nuw i8, ptr %214, i64 16
  %237 = load i64, ptr %236, align 1
  %238 = getelementptr inbounds nuw i8, ptr %217, i64 16
  %239 = load i64, ptr %238, align 1
  %240 = xor i64 %239, %237
  %241 = add i64 %208, %237
  %242 = and i64 %240, 4294967295
  %243 = lshr i64 %240, 32
  %244 = mul nuw i64 %242, %243
  %245 = add i64 %209, %244
  %246 = getelementptr inbounds nuw i8, ptr %214, i64 24
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %217, i64 24
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = add i64 %245, %247
  %252 = and i64 %250, 4294967295
  %253 = lshr i64 %250, 32
  %254 = mul nuw i64 %252, %253
  %255 = add i64 %241, %254
  %256 = getelementptr inbounds nuw i8, ptr %214, i64 32
  %257 = load i64, ptr %256, align 1
  %258 = getelementptr inbounds nuw i8, ptr %217, i64 32
  %259 = load i64, ptr %258, align 1
  %260 = xor i64 %259, %257
  %261 = add i64 %206, %257
  %262 = and i64 %260, 4294967295
  %263 = lshr i64 %260, 32
  %264 = mul nuw i64 %262, %263
  %265 = add i64 %207, %264
  %266 = getelementptr inbounds nuw i8, ptr %214, i64 40
  %267 = load i64, ptr %266, align 1
  %268 = getelementptr inbounds nuw i8, ptr %217, i64 40
  %269 = load i64, ptr %268, align 1
  %270 = xor i64 %269, %267
  %271 = add i64 %265, %267
  %272 = and i64 %270, 4294967295
  %273 = lshr i64 %270, 32
  %274 = mul nuw i64 %272, %273
  %275 = add i64 %261, %274
  %276 = getelementptr inbounds nuw i8, ptr %214, i64 48
  %277 = load i64, ptr %276, align 1
  %278 = getelementptr inbounds nuw i8, ptr %217, i64 48
  %279 = load i64, ptr %278, align 1
  %280 = xor i64 %279, %277
  %281 = add i64 %204, %277
  %282 = and i64 %280, 4294967295
  %283 = lshr i64 %280, 32
  %284 = mul nuw i64 %282, %283
  %285 = add i64 %205, %284
  %286 = getelementptr inbounds nuw i8, ptr %214, i64 56
  %287 = load i64, ptr %286, align 1
  %288 = getelementptr inbounds nuw i8, ptr %217, i64 56
  %289 = load i64, ptr %288, align 1
  %290 = xor i64 %289, %287
  %291 = add i64 %285, %287
  %292 = and i64 %290, 4294967295
  %293 = lshr i64 %290, 32
  %294 = mul nuw i64 %292, %293
  %295 = add i64 %281, %294
  %296 = add nuw i64 %212, 1
  %297 = icmp eq i64 %296, %44
  br i1 %297, label %399, label %203

298:                                              ; preds = %30
  %299 = shl i64 %35, 3
  %300 = getelementptr inbounds nuw i8, ptr %7, i64 %299
  %301 = icmp eq i32 %28, 64
  br i1 %301, label %399, label %302

302:                                              ; preds = %298
  %303 = tail call i64 @llvm.umax.i64(i64 %33, i64 1)
  br label %304

304:                                              ; preds = %302, %304
  %305 = phi i64 [ %26, %302 ], [ %396, %304 ]
  %306 = phi i64 [ %24, %302 ], [ %392, %304 ]
  %307 = phi i64 [ %22, %302 ], [ %376, %304 ]
  %308 = phi i64 [ %20, %302 ], [ %372, %304 ]
  %309 = phi i64 [ %18, %302 ], [ %356, %304 ]
  %310 = phi i64 [ %16, %302 ], [ %352, %304 ]
  %311 = phi i64 [ %14, %302 ], [ %336, %304 ]
  %312 = phi i64 [ %12, %302 ], [ %332, %304 ]
  %313 = phi i64 [ 0, %302 ], [ %397, %304 ]
  %314 = shl i64 %313, 6
  %315 = getelementptr inbounds nuw i8, ptr %38, i64 %314
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %316, i32 0, i32 3, i32 1), !noalias !153
  %317 = shl i64 %313, 3
  %318 = getelementptr inbounds nuw i8, ptr %300, i64 %317
  %319 = load i64, ptr %315, align 1
  %320 = load i64, ptr %318, align 1
  %321 = xor i64 %320, %319
  %322 = add i64 %311, %319
  %323 = and i64 %321, 4294967295
  %324 = lshr i64 %321, 32
  %325 = mul nuw i64 %323, %324
  %326 = add i64 %312, %325
  %327 = getelementptr inbounds nuw i8, ptr %315, i64 8
  %328 = load i64, ptr %327, align 1
  %329 = getelementptr inbounds nuw i8, ptr %318, i64 8
  %330 = load i64, ptr %329, align 1
  %331 = xor i64 %330, %328
  %332 = add i64 %326, %328
  %333 = and i64 %331, 4294967295
  %334 = lshr i64 %331, 32
  %335 = mul nuw i64 %333, %334
  %336 = add i64 %322, %335
  %337 = getelementptr inbounds nuw i8, ptr %315, i64 16
  %338 = load i64, ptr %337, align 1
  %339 = getelementptr inbounds nuw i8, ptr %318, i64 16
  %340 = load i64, ptr %339, align 1
  %341 = xor i64 %340, %338
  %342 = add i64 %309, %338
  %343 = and i64 %341, 4294967295
  %344 = lshr i64 %341, 32
  %345 = mul nuw i64 %343, %344
  %346 = add i64 %310, %345
  %347 = getelementptr inbounds nuw i8, ptr %315, i64 24
  %348 = load i64, ptr %347, align 1
  %349 = getelementptr inbounds nuw i8, ptr %318, i64 24
  %350 = load i64, ptr %349, align 1
  %351 = xor i64 %350, %348
  %352 = add i64 %346, %348
  %353 = and i64 %351, 4294967295
  %354 = lshr i64 %351, 32
  %355 = mul nuw i64 %353, %354
  %356 = add i64 %342, %355
  %357 = getelementptr inbounds nuw i8, ptr %315, i64 32
  %358 = load i64, ptr %357, align 1
  %359 = getelementptr inbounds nuw i8, ptr %318, i64 32
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %358
  %362 = add i64 %307, %358
  %363 = and i64 %361, 4294967295
  %364 = lshr i64 %361, 32
  %365 = mul nuw i64 %363, %364
  %366 = add i64 %308, %365
  %367 = getelementptr inbounds nuw i8, ptr %315, i64 40
  %368 = load i64, ptr %367, align 1
  %369 = getelementptr inbounds nuw i8, ptr %318, i64 40
  %370 = load i64, ptr %369, align 1
  %371 = xor i64 %370, %368
  %372 = add i64 %366, %368
  %373 = and i64 %371, 4294967295
  %374 = lshr i64 %371, 32
  %375 = mul nuw i64 %373, %374
  %376 = add i64 %362, %375
  %377 = getelementptr inbounds nuw i8, ptr %315, i64 48
  %378 = load i64, ptr %377, align 1
  %379 = getelementptr inbounds nuw i8, ptr %318, i64 48
  %380 = load i64, ptr %379, align 1
  %381 = xor i64 %380, %378
  %382 = add i64 %305, %378
  %383 = and i64 %381, 4294967295
  %384 = lshr i64 %381, 32
  %385 = mul nuw i64 %383, %384
  %386 = add i64 %306, %385
  %387 = getelementptr inbounds nuw i8, ptr %315, i64 56
  %388 = load i64, ptr %387, align 1
  %389 = getelementptr inbounds nuw i8, ptr %318, i64 56
  %390 = load i64, ptr %389, align 1
  %391 = xor i64 %390, %388
  %392 = add i64 %386, %388
  %393 = and i64 %391, 4294967295
  %394 = lshr i64 %391, 32
  %395 = mul nuw i64 %393, %394
  %396 = add i64 %382, %395
  %397 = add nuw nsw i64 %313, 1
  %398 = icmp eq i64 %397, %303
  br i1 %398, label %399, label %304

399:                                              ; preds = %203, %304, %143, %298
  %400 = phi i64 [ %26, %298 ], [ %199, %143 ], [ %396, %304 ], [ %295, %203 ]
  %401 = phi i64 [ %24, %298 ], [ %193, %143 ], [ %392, %304 ], [ %291, %203 ]
  %402 = phi i64 [ %22, %298 ], [ %187, %143 ], [ %376, %304 ], [ %275, %203 ]
  %403 = phi i64 [ %20, %298 ], [ %181, %143 ], [ %372, %304 ], [ %271, %203 ]
  %404 = phi i64 [ %18, %298 ], [ %175, %143 ], [ %356, %304 ], [ %255, %203 ]
  %405 = phi i64 [ %16, %298 ], [ %169, %143 ], [ %352, %304 ], [ %251, %203 ]
  %406 = phi i64 [ %14, %298 ], [ %163, %143 ], [ %336, %304 ], [ %235, %203 ]
  %407 = phi i64 [ %12, %298 ], [ %157, %143 ], [ %332, %304 ], [ %231, %203 ]
  %408 = zext i32 %28 to i64
  %409 = getelementptr inbounds nuw i8, ptr %38, i64 %408
  %410 = getelementptr inbounds i8, ptr %409, i64 -64
  %411 = getelementptr inbounds nuw i8, ptr %7, i64 %40
  %412 = getelementptr inbounds i8, ptr %411, i64 -7
  %413 = load i64, ptr %410, align 1
  %414 = load i64, ptr %412, align 1
  %415 = xor i64 %414, %413
  %416 = add i64 %406, %413
  %417 = and i64 %415, 4294967295
  %418 = lshr i64 %415, 32
  %419 = mul nuw i64 %417, %418
  %420 = add i64 %407, %419
  %421 = getelementptr inbounds i8, ptr %409, i64 -56
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %411, i64 1
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = add i64 %420, %422
  %427 = and i64 %425, 4294967295
  %428 = lshr i64 %425, 32
  %429 = mul nuw i64 %427, %428
  %430 = add i64 %416, %429
  %431 = getelementptr inbounds i8, ptr %409, i64 -48
  %432 = load i64, ptr %431, align 1
  %433 = getelementptr inbounds nuw i8, ptr %411, i64 9
  %434 = load i64, ptr %433, align 1
  %435 = xor i64 %434, %432
  %436 = add i64 %404, %432
  %437 = and i64 %435, 4294967295
  %438 = lshr i64 %435, 32
  %439 = mul nuw i64 %437, %438
  %440 = add i64 %405, %439
  %441 = getelementptr inbounds i8, ptr %409, i64 -40
  %442 = load i64, ptr %441, align 1
  %443 = getelementptr inbounds nuw i8, ptr %411, i64 17
  %444 = load i64, ptr %443, align 1
  %445 = xor i64 %444, %442
  %446 = add i64 %440, %442
  %447 = and i64 %445, 4294967295
  %448 = lshr i64 %445, 32
  %449 = mul nuw i64 %447, %448
  %450 = add i64 %436, %449
  %451 = getelementptr inbounds i8, ptr %409, i64 -32
  %452 = load i64, ptr %451, align 1
  %453 = getelementptr inbounds nuw i8, ptr %411, i64 25
  %454 = load i64, ptr %453, align 1
  %455 = xor i64 %454, %452
  %456 = add i64 %402, %452
  %457 = and i64 %455, 4294967295
  %458 = lshr i64 %455, 32
  %459 = mul nuw i64 %457, %458
  %460 = add i64 %403, %459
  %461 = getelementptr inbounds i8, ptr %409, i64 -24
  %462 = load i64, ptr %461, align 1
  %463 = getelementptr inbounds nuw i8, ptr %411, i64 33
  %464 = load i64, ptr %463, align 1
  %465 = xor i64 %464, %462
  %466 = add i64 %460, %462
  %467 = and i64 %465, 4294967295
  %468 = lshr i64 %465, 32
  %469 = mul nuw i64 %467, %468
  %470 = add i64 %456, %469
  %471 = getelementptr inbounds i8, ptr %409, i64 -16
  %472 = load i64, ptr %471, align 1
  %473 = getelementptr inbounds nuw i8, ptr %411, i64 41
  %474 = load i64, ptr %473, align 1
  %475 = xor i64 %474, %472
  %476 = add i64 %400, %472
  %477 = and i64 %475, 4294967295
  %478 = lshr i64 %475, 32
  %479 = mul nuw i64 %477, %478
  %480 = add i64 %401, %479
  %481 = getelementptr inbounds i8, ptr %409, i64 -8
  %482 = load i64, ptr %481, align 1
  %483 = getelementptr inbounds nuw i8, ptr %411, i64 49
  %484 = load i64, ptr %483, align 1
  %485 = xor i64 %484, %482
  %486 = add i64 %480, %482
  %487 = and i64 %485, 4294967295
  %488 = lshr i64 %485, 32
  %489 = mul nuw i64 %487, %488
  %490 = add i64 %476, %489
  br label %581

491:                                              ; preds = %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #27
  %492 = sub nuw nsw i32 64, %28
  %493 = zext nneg i32 %492 to i64
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %495 = sub nsw i64 0, %493
  %496 = getelementptr inbounds i8, ptr %27, i64 %495
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %496, i64 %493, i1 false)
  %497 = getelementptr inbounds nuw i8, ptr %2, i64 %493
  %498 = zext nneg i32 %28 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %497, ptr nonnull align 64 %494, i64 %498, i1 false)
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %500 = load i64, ptr %499, align 32
  %501 = getelementptr inbounds nuw i8, ptr %7, i64 %500
  %502 = getelementptr inbounds i8, ptr %501, i64 -7
  %503 = load i64, ptr %2, align 16
  %504 = load i64, ptr %502, align 1
  %505 = xor i64 %504, %503
  %506 = add i64 %14, %503
  %507 = and i64 %505, 4294967295
  %508 = lshr i64 %505, 32
  %509 = mul nuw i64 %507, %508
  %510 = add i64 %12, %509
  %511 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %512 = load i64, ptr %511, align 8
  %513 = getelementptr inbounds nuw i8, ptr %501, i64 1
  %514 = load i64, ptr %513, align 1
  %515 = xor i64 %514, %512
  %516 = add i64 %510, %512
  %517 = and i64 %515, 4294967295
  %518 = lshr i64 %515, 32
  %519 = mul nuw i64 %517, %518
  %520 = add i64 %506, %519
  %521 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %522 = load i64, ptr %521, align 16
  %523 = getelementptr inbounds nuw i8, ptr %501, i64 9
  %524 = load i64, ptr %523, align 1
  %525 = xor i64 %524, %522
  %526 = add i64 %18, %522
  %527 = and i64 %525, 4294967295
  %528 = lshr i64 %525, 32
  %529 = mul nuw i64 %527, %528
  %530 = add i64 %16, %529
  %531 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %532 = load i64, ptr %531, align 8
  %533 = getelementptr inbounds nuw i8, ptr %501, i64 17
  %534 = load i64, ptr %533, align 1
  %535 = xor i64 %534, %532
  %536 = add i64 %530, %532
  %537 = and i64 %535, 4294967295
  %538 = lshr i64 %535, 32
  %539 = mul nuw i64 %537, %538
  %540 = add i64 %526, %539
  %541 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %542 = load i64, ptr %541, align 16
  %543 = getelementptr inbounds nuw i8, ptr %501, i64 25
  %544 = load i64, ptr %543, align 1
  %545 = xor i64 %544, %542
  %546 = add i64 %22, %542
  %547 = and i64 %545, 4294967295
  %548 = lshr i64 %545, 32
  %549 = mul nuw i64 %547, %548
  %550 = add i64 %20, %549
  %551 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %552 = load i64, ptr %551, align 8
  %553 = getelementptr inbounds nuw i8, ptr %501, i64 33
  %554 = load i64, ptr %553, align 1
  %555 = xor i64 %554, %552
  %556 = add i64 %550, %552
  %557 = and i64 %555, 4294967295
  %558 = lshr i64 %555, 32
  %559 = mul nuw i64 %557, %558
  %560 = add i64 %546, %559
  %561 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %562 = load i64, ptr %561, align 16
  %563 = getelementptr inbounds nuw i8, ptr %501, i64 41
  %564 = load i64, ptr %563, align 1
  %565 = xor i64 %564, %562
  %566 = add i64 %26, %562
  %567 = and i64 %565, 4294967295
  %568 = lshr i64 %565, 32
  %569 = mul nuw i64 %567, %568
  %570 = add i64 %24, %569
  %571 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %572 = load i64, ptr %571, align 8
  %573 = getelementptr inbounds nuw i8, ptr %501, i64 49
  %574 = load i64, ptr %573, align 1
  %575 = xor i64 %574, %572
  %576 = add i64 %570, %572
  %577 = and i64 %575, 4294967295
  %578 = lshr i64 %575, 32
  %579 = mul nuw i64 %577, %578
  %580 = add i64 %566, %579
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #27
  br label %581

581:                                              ; preds = %399, %491
  %582 = phi i64 [ %490, %399 ], [ %580, %491 ]
  %583 = phi i64 [ %486, %399 ], [ %576, %491 ]
  %584 = phi i64 [ %470, %399 ], [ %560, %491 ]
  %585 = phi i64 [ %466, %399 ], [ %556, %491 ]
  %586 = phi i64 [ %450, %399 ], [ %540, %491 ]
  %587 = phi i64 [ %446, %399 ], [ %536, %491 ]
  %588 = phi i64 [ %430, %399 ], [ %520, %491 ]
  %589 = phi i64 [ %426, %399 ], [ %516, %491 ]
  %590 = getelementptr inbounds nuw i8, ptr %7, i64 11
  %591 = mul i64 %9, -7046029288634856825
  %592 = load i64, ptr %590, align 1, !alias.scope !156, !noalias !159
  %593 = xor i64 %592, %589
  %594 = getelementptr inbounds nuw i8, ptr %7, i64 19
  %595 = load i64, ptr %594, align 1, !alias.scope !156, !noalias !159
  %596 = xor i64 %595, %588
  %597 = zext i64 %593 to i128
  %598 = zext i64 %596 to i128
  %599 = mul nuw i128 %598, %597
  %600 = lshr i128 %599, 64
  %601 = xor i128 %600, %599
  %602 = trunc i128 %601 to i64
  %603 = add i64 %591, %602
  %604 = getelementptr inbounds nuw i8, ptr %7, i64 27
  %605 = load i64, ptr %604, align 1, !alias.scope !156, !noalias !159
  %606 = xor i64 %605, %587
  %607 = getelementptr inbounds nuw i8, ptr %7, i64 35
  %608 = load i64, ptr %607, align 1, !alias.scope !156, !noalias !159
  %609 = xor i64 %608, %586
  %610 = zext i64 %606 to i128
  %611 = zext i64 %609 to i128
  %612 = mul nuw i128 %611, %610
  %613 = lshr i128 %612, 64
  %614 = xor i128 %613, %612
  %615 = trunc i128 %614 to i64
  %616 = add i64 %603, %615
  %617 = getelementptr inbounds nuw i8, ptr %7, i64 43
  %618 = load i64, ptr %617, align 1, !alias.scope !156, !noalias !159
  %619 = xor i64 %618, %585
  %620 = getelementptr inbounds nuw i8, ptr %7, i64 51
  %621 = load i64, ptr %620, align 1, !alias.scope !156, !noalias !159
  %622 = xor i64 %621, %584
  %623 = zext i64 %619 to i128
  %624 = zext i64 %622 to i128
  %625 = mul nuw i128 %624, %623
  %626 = lshr i128 %625, 64
  %627 = xor i128 %626, %625
  %628 = trunc i128 %627 to i64
  %629 = add i64 %616, %628
  %630 = getelementptr inbounds nuw i8, ptr %7, i64 59
  %631 = load i64, ptr %630, align 1, !alias.scope !156, !noalias !159
  %632 = xor i64 %631, %583
  %633 = getelementptr inbounds nuw i8, ptr %7, i64 67
  %634 = load i64, ptr %633, align 1, !alias.scope !156, !noalias !159
  %635 = xor i64 %634, %582
  %636 = zext i64 %632 to i128
  %637 = zext i64 %635 to i128
  %638 = mul nuw i128 %637, %636
  %639 = lshr i128 %638, 64
  %640 = xor i128 %639, %638
  %641 = trunc i128 %640 to i64
  %642 = add i64 %629, %641
  %643 = lshr i64 %642, 37
  %644 = xor i64 %643, %642
  %645 = mul i64 %644, 1609587791953885689
  %646 = lshr i64 %645, 32
  %647 = xor i64 %646, %645
  br label %660

648:                                              ; preds = %1
  %649 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %650 = load i64, ptr %649, align 8
  %651 = icmp eq i64 %650, 0
  %652 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %651, label %655, label %653

653:                                              ; preds = %648
  %654 = tail call i64 @XXH3_64bits_withSeed(ptr noundef nonnull %652, i64 noundef %9, i64 noundef %650)
  br label %660

655:                                              ; preds = %648
  %656 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %657 = load i64, ptr %656, align 32
  %658 = add i64 %657, 64
  %659 = tail call i64 @XXH3_64bits_withSecret(ptr noundef nonnull %652, i64 noundef %9, ptr noundef nonnull %7, i64 noundef %658)
  br label %660

660:                                              ; preds = %655, %653, %581
  %661 = phi i64 [ %647, %581 ], [ %654, %653 ], [ %659, %655 ]
  ret i64 %661
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @XXH3_generateSecret(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #15 {
  %4 = alloca [12 x i64], align 16
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %0, ptr noundef nonnull align 64 dereferenceable(192) @XXH3_kSecret, i64 192, i1 false)
  br label %71

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #27
  %8 = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef readonly %1, i64 noundef %2, i64 noundef 0)
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  %11 = tail call noundef i64 @llvm.bswap.i64(i64 %10)
  %12 = tail call noundef i64 @llvm.bswap.i64(i64 %9)
  %13 = tail call i64 @llvm.umin.i64(i64 %2, i64 96)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr align 1 %1, i64 %13, i1 false)
  %14 = icmp ult i64 %2, 96
  br i1 %14, label %15, label %22

15:                                               ; preds = %7, %15
  %16 = phi i64 [ %20, %15 ], [ %13, %7 ]
  %17 = sub nuw nsw i64 96, %16
  %18 = tail call i64 @llvm.umin.i64(i64 %16, i64 %17)
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 16 %4, i64 %18, i1 false)
  %20 = add nuw nsw i64 %18, %16
  %21 = icmp samesign ult i64 %20, 96
  br i1 %21, label %15, label %22

22:                                               ; preds = %15, %7
  store i64 %11, ptr %0, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %12, ptr %23, align 1
  %24 = xor i64 %12, %11
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 1, %22 ], [ %68, %25 ]
  %27 = shl nuw nsw i64 %26, 4
  %28 = getelementptr inbounds nuw i64, ptr %4, i64 %26
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %29, %26
  %31 = sub i64 6455697860950631241, %30
  %32 = add i64 %30, -4466874330221494952
  %33 = xor i64 %31, %24
  %34 = zext i64 %33 to i128
  %35 = mul nuw i128 %34, 11400714785074694791
  %36 = trunc i128 %35 to i64
  %37 = lshr i128 %35, 64
  %38 = trunc nuw i128 %37 to i64
  %39 = add i64 %36, 270215977642229760
  %40 = xor i64 %32, %12
  %41 = and i64 %40, 4294967295
  %42 = mul nuw i64 %41, 2246822518
  %43 = add i64 %42, %40
  %44 = add i64 %43, %38
  %45 = tail call noundef i64 @llvm.bswap.i64(i64 %44)
  %46 = xor i64 %45, %39
  %47 = zext i64 %46 to i128
  %48 = mul nuw i128 %47, 14029467366897019727
  %49 = trunc i128 %48 to i64
  %50 = lshr i128 %48, 64
  %51 = trunc nuw i128 %50 to i64
  %52 = mul i64 %44, -4417276706812531889
  %53 = add i64 %52, %51
  %54 = lshr i64 %49, 37
  %55 = xor i64 %54, %49
  %56 = mul i64 %55, 1609587791953885689
  %57 = lshr i64 %56, 32
  %58 = xor i64 %57, %56
  %59 = lshr i64 %53, 37
  %60 = xor i64 %59, %53
  %61 = mul i64 %60, 1609587791953885689
  %62 = lshr i64 %61, 32
  %63 = xor i64 %62, %61
  %64 = tail call noundef i64 @llvm.bswap.i64(i64 %63)
  %65 = tail call noundef i64 @llvm.bswap.i64(i64 %58)
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %27
  store i64 %64, ptr %66, align 1
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 %65, ptr %67, align 1
  %68 = add nuw nsw i64 %26, 1
  %69 = icmp eq i64 %68, 12
  br i1 %69, label %70, label %25

70:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #27
  br label %71

71:                                               ; preds = %70, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH128_canonicalFromHash(ptr nocapture noundef writeonly initializes((0, 16)) %0, i64 %1, i64 %2) local_unnamed_addr #6 {
  %4 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %5 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %4, ptr %0, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH128(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #15 {
  %4 = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  ret { i64, i64 } %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #13 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %123

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %47

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -8
  %10 = load i64, ptr %9, align 1
  %11 = xor i64 %7, %10
  %12 = xor i64 %11, 6455697860950631241
  %13 = zext i64 %12 to i128
  %14 = mul nuw i128 %13, 11400714785074694791
  %15 = trunc i128 %14 to i64
  %16 = lshr i128 %14, 64
  %17 = trunc nuw i128 %16 to i64
  %18 = shl nuw nsw i64 %1, 54
  %19 = add nsw i64 %18, -18014398509481984
  %20 = add i64 %19, %15
  %21 = xor i64 %10, -4466874330221494952
  %22 = and i64 %21, 4294967295
  %23 = mul nuw i64 %22, 2246822518
  %24 = add i64 %23, %21
  %25 = add i64 %24, %17
  %26 = tail call noundef i64 @llvm.bswap.i64(i64 %25)
  %27 = xor i64 %26, %20
  %28 = zext i64 %27 to i128
  %29 = mul nuw i128 %28, 14029467366897019727
  %30 = trunc i128 %29 to i64
  %31 = lshr i128 %29, 64
  %32 = trunc nuw i128 %31 to i64
  %33 = mul i64 %25, -4417276706812531889
  %34 = add i64 %33, %32
  %35 = lshr i64 %30, 37
  %36 = xor i64 %35, %30
  %37 = mul i64 %36, 1609587791953885689
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  %40 = lshr i64 %34, 37
  %41 = xor i64 %40, %34
  %42 = mul i64 %41, 1609587791953885689
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  %45 = insertvalue { i64, i64 } poison, i64 %39, 0
  %46 = insertvalue { i64, i64 } %45, i64 %44, 1
  br label %289

47:                                               ; preds = %4
  %48 = icmp samesign ugt i64 %1, 3
  br i1 %48, label %49, label %83

49:                                               ; preds = %47
  %50 = load i32, ptr %0, align 1
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %50 to i64
  %55 = zext i32 %53 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %54
  %58 = xor i64 %57, -4255862940314790740
  %59 = shl nuw nsw i64 %1, 2
  %60 = add nuw nsw i64 %59, -7046029288634856825
  %61 = zext i64 %58 to i128
  %62 = zext i64 %60 to i128
  %63 = mul nuw i128 %61, %62
  %64 = trunc i128 %63 to i64
  %65 = lshr i128 %63, 64
  %66 = trunc nuw i128 %65 to i64
  %67 = shl i64 %64, 1
  %68 = add i64 %67, %66
  %69 = lshr i64 %68, 3
  %70 = xor i64 %69, %64
  %71 = lshr i64 %70, 35
  %72 = xor i64 %71, %70
  %73 = mul i64 %72, -6939452855193903323
  %74 = lshr i64 %73, 28
  %75 = xor i64 %74, %73
  %76 = lshr i64 %68, 37
  %77 = xor i64 %76, %68
  %78 = mul i64 %77, 1609587791953885689
  %79 = lshr i64 %78, 32
  %80 = xor i64 %79, %78
  %81 = insertvalue { i64, i64 } poison, i64 %75, 0
  %82 = insertvalue { i64, i64 } %81, i64 %80, 1
  br label %289

83:                                               ; preds = %47
  %84 = icmp eq i64 %1, 0
  br i1 %84, label %289, label %85

85:                                               ; preds = %83
  %86 = load i8, ptr %0, align 1
  %87 = lshr i64 %1, 1
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr i8, ptr %0, i64 %1
  %91 = getelementptr i8, ptr %90, i64 -1
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %86 to i32
  %94 = shl nuw nsw i32 %93, 16
  %95 = zext i8 %89 to i32
  %96 = shl nuw i32 %95, 24
  %97 = or disjoint i32 %96, %94
  %98 = zext i8 %92 to i32
  %99 = or disjoint i32 %97, %98
  %100 = trunc nuw nsw i64 %1 to i32
  %101 = shl nuw nsw i32 %100, 8
  %102 = or disjoint i32 %99, %101
  %103 = tail call noundef i32 @llvm.bswap.i32(i32 %102)
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = xor i32 %102, -2027464037
  %106 = zext i32 %105 to i64
  %107 = xor i32 %104, 808198283
  %108 = zext i32 %107 to i64
  %109 = mul i64 %106, -4417276706812531889
  %110 = lshr i64 %109, 29
  %111 = xor i64 %110, %109
  %112 = mul i64 %111, 1609587929392839161
  %113 = lshr i64 %112, 32
  %114 = xor i64 %113, %112
  %115 = mul i64 %108, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  %121 = insertvalue { i64, i64 } poison, i64 %114, 0
  %122 = insertvalue { i64, i64 } %121, i64 %120, 1
  br label %289

123:                                              ; preds = %2
  %124 = icmp ult i64 %1, 129
  br i1 %124, label %125, label %283

125:                                              ; preds = %123
  %126 = mul i64 %1, -7046029288634856825
  %127 = icmp samesign ugt i64 %1, 32
  br i1 %127, label %128, label %231

128:                                              ; preds = %125
  %129 = icmp samesign ugt i64 %1, 64
  br i1 %129, label %130, label %197

130:                                              ; preds = %128
  %131 = icmp samesign ugt i64 %1, 96
  br i1 %131, label %132, label %163

132:                                              ; preds = %130
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %135 = getelementptr inbounds i8, ptr %134, i64 -64
  %136 = load i64, ptr %133, align 1
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %138 = load i64, ptr %137, align 1
  %139 = xor i64 %136, 4554437623014685352
  %140 = xor i64 %138, 2111919702937427193
  %141 = zext i64 %139 to i128
  %142 = zext i64 %140 to i128
  %143 = mul nuw i128 %142, %141
  %144 = lshr i128 %143, 64
  %145 = xor i128 %144, %143
  %146 = trunc i128 %145 to i64
  %147 = add i64 %126, %146
  %148 = load i64, ptr %135, align 1
  %149 = getelementptr inbounds i8, ptr %134, i64 -56
  %150 = load i64, ptr %149, align 1
  %151 = add i64 %150, %148
  %152 = xor i64 %147, %151
  %153 = xor i64 %148, 3556072174620004746
  %154 = xor i64 %150, 7238261902898274248
  %155 = zext i64 %153 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %138, %136
  %162 = xor i64 %161, %160
  br label %163

163:                                              ; preds = %132, %130
  %164 = phi i64 [ %152, %132 ], [ %126, %130 ]
  %165 = phi i64 [ %162, %132 ], [ 0, %130 ]
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %168 = getelementptr inbounds i8, ptr %167, i64 -48
  %169 = load i64, ptr %166, align 1
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %171 = load i64, ptr %170, align 1
  %172 = xor i64 %169, -3818837453329782724
  %173 = xor i64 %171, -6688317018830679928
  %174 = zext i64 %172 to i128
  %175 = zext i64 %173 to i128
  %176 = mul nuw i128 %175, %174
  %177 = lshr i128 %176, 64
  %178 = xor i128 %177, %176
  %179 = trunc i128 %178 to i64
  %180 = add i64 %164, %179
  %181 = load i64, ptr %168, align 1
  %182 = getelementptr inbounds i8, ptr %167, i64 -40
  %183 = load i64, ptr %182, align 1
  %184 = add i64 %183, %181
  %185 = xor i64 %180, %184
  %186 = xor i64 %181, 5690594596133299313
  %187 = xor i64 %183, -2833645246901970632
  %188 = zext i64 %186 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %165, %193
  %195 = add i64 %171, %169
  %196 = xor i64 %194, %195
  br label %197

197:                                              ; preds = %163, %128
  %198 = phi i64 [ %185, %163 ], [ %126, %128 ]
  %199 = phi i64 [ %196, %163 ], [ 0, %128 ]
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %202 = getelementptr inbounds i8, ptr %201, i64 -32
  %203 = load i64, ptr %200, align 1
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %205 = load i64, ptr %204, align 1
  %206 = xor i64 %203, 8711581037947681227
  %207 = xor i64 %205, 2410270004345854594
  %208 = zext i64 %206 to i128
  %209 = zext i64 %207 to i128
  %210 = mul nuw i128 %209, %208
  %211 = lshr i128 %210, 64
  %212 = xor i128 %211, %210
  %213 = trunc i128 %212 to i64
  %214 = add i64 %198, %213
  %215 = load i64, ptr %202, align 1
  %216 = getelementptr inbounds i8, ptr %201, i64 -24
  %217 = load i64, ptr %216, align 1
  %218 = add i64 %217, %215
  %219 = xor i64 %214, %218
  %220 = xor i64 %215, -8204357891075471176
  %221 = xor i64 %217, 5487137525590930912
  %222 = zext i64 %220 to i128
  %223 = zext i64 %221 to i128
  %224 = mul nuw i128 %223, %222
  %225 = lshr i128 %224, 64
  %226 = xor i128 %225, %224
  %227 = trunc i128 %226 to i64
  %228 = add i64 %199, %227
  %229 = add i64 %205, %203
  %230 = xor i64 %228, %229
  br label %231

231:                                              ; preds = %125, %197
  %232 = phi i64 [ %219, %197 ], [ %126, %125 ]
  %233 = phi i64 [ %230, %197 ], [ 0, %125 ]
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %235 = getelementptr inbounds i8, ptr %234, i64 -16
  %236 = load i64, ptr %0, align 1
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %238 = load i64, ptr %237, align 1
  %239 = xor i64 %236, -4734510112055689544
  %240 = xor i64 %238, 2066345149520216444
  %241 = zext i64 %239 to i128
  %242 = zext i64 %240 to i128
  %243 = mul nuw i128 %242, %241
  %244 = lshr i128 %243, 64
  %245 = xor i128 %244, %243
  %246 = trunc i128 %245 to i64
  %247 = add i64 %232, %246
  %248 = load i64, ptr %235, align 1
  %249 = getelementptr inbounds i8, ptr %234, i64 -8
  %250 = load i64, ptr %249, align 1
  %251 = add i64 %250, %248
  %252 = xor i64 %247, %251
  %253 = xor i64 %248, -2623469361688619810
  %254 = xor i64 %250, 2262974939099578482
  %255 = zext i64 %253 to i128
  %256 = zext i64 %254 to i128
  %257 = mul nuw i128 %256, %255
  %258 = lshr i128 %257, 64
  %259 = xor i128 %258, %257
  %260 = trunc i128 %259 to i64
  %261 = add i64 %233, %260
  %262 = add i64 %238, %236
  %263 = xor i64 %261, %262
  %264 = add i64 %263, %252
  %265 = mul i64 %252, -7046029288634856825
  %266 = mul i64 %263, -8796714831421723037
  %267 = mul i64 %1, -4417276706812531889
  %268 = add i64 %265, %267
  %269 = add i64 %268, %266
  %270 = lshr i64 %264, 37
  %271 = xor i64 %270, %264
  %272 = mul i64 %271, 1609587791953885689
  %273 = lshr i64 %272, 32
  %274 = xor i64 %273, %272
  %275 = lshr i64 %269, 37
  %276 = xor i64 %275, %269
  %277 = mul i64 %276, 1609587791953885689
  %278 = lshr i64 %277, 32
  %279 = xor i64 %278, %277
  %280 = sub i64 0, %279
  %281 = insertvalue { i64, i64 } poison, i64 %274, 0
  %282 = insertvalue { i64, i64 } %281, i64 %280, 1
  br label %289

283:                                              ; preds = %123
  %284 = icmp ult i64 %1, 241
  br i1 %284, label %285, label %287

285:                                              ; preds = %283
  %286 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0)
  br label %289

287:                                              ; preds = %283
  %288 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_default(ptr noundef %0, i64 noundef %1) #27
  br label %289

289:                                              ; preds = %85, %49, %6, %83, %231, %285, %287
  %290 = phi { i64, i64 } [ %282, %231 ], [ %286, %285 ], [ %288, %287 ], [ %46, %6 ], [ %82, %49 ], [ %122, %85 ], [ { i64 6918025063187695999, i64 -7374073936536430376 }, %83 ]
  ret { i64, i64 } %290
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_default(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #14 {
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %149, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %114
  %8 = phi i64 [ 2654435761, %5 ], [ %146, %114 ]
  %9 = phi i64 [ 2870177450012600261, %5 ], [ %142, %114 ]
  %10 = phi i64 [ 2246822519, %5 ], [ %138, %114 ]
  %11 = phi i64 [ -8796714831421723037, %5 ], [ %134, %114 ]
  %12 = phi i64 [ 1609587929392839161, %5 ], [ %130, %114 ]
  %13 = phi i64 [ -4417276706812531889, %5 ], [ %126, %114 ]
  %14 = phi i64 [ -7046029288634856825, %5 ], [ %122, %114 ]
  %15 = phi i64 [ 3266489917, %5 ], [ %118, %114 ]
  %16 = phi i64 [ 0, %5 ], [ %147, %114 ]
  %17 = shl i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %17
  br label %19

19:                                               ; preds = %7, %19
  %20 = phi i64 [ %8, %7 ], [ %111, %19 ]
  %21 = phi i64 [ %9, %7 ], [ %107, %19 ]
  %22 = phi i64 [ %10, %7 ], [ %91, %19 ]
  %23 = phi i64 [ %11, %7 ], [ %87, %19 ]
  %24 = phi i64 [ %12, %7 ], [ %71, %19 ]
  %25 = phi i64 [ %13, %7 ], [ %67, %19 ]
  %26 = phi i64 [ %14, %7 ], [ %51, %19 ]
  %27 = phi i64 [ %15, %7 ], [ %47, %19 ]
  %28 = phi i64 [ 0, %7 ], [ %112, %19 ]
  %29 = shl nuw nsw i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 0, i32 3, i32 1), !noalias !161
  %32 = shl nuw nsw i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %32
  %34 = load i64, ptr %30, align 1
  %35 = load i64, ptr %33, align 8
  %36 = xor i64 %35, %34
  %37 = add i64 %26, %34
  %38 = and i64 %36, 4294967295
  %39 = lshr i64 %36, 32
  %40 = mul nuw i64 %38, %39
  %41 = add i64 %27, %40
  %42 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %43 = load i64, ptr %42, align 1
  %44 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %45 = load i64, ptr %44, align 8
  %46 = xor i64 %45, %43
  %47 = add i64 %41, %43
  %48 = and i64 %46, 4294967295
  %49 = lshr i64 %46, 32
  %50 = mul nuw i64 %48, %49
  %51 = add i64 %37, %50
  %52 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %53 = load i64, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %55 = load i64, ptr %54, align 8
  %56 = xor i64 %55, %53
  %57 = add i64 %24, %53
  %58 = and i64 %56, 4294967295
  %59 = lshr i64 %56, 32
  %60 = mul nuw i64 %58, %59
  %61 = add i64 %25, %60
  %62 = getelementptr inbounds nuw i8, ptr %30, i64 24
  %63 = load i64, ptr %62, align 1
  %64 = getelementptr inbounds nuw i8, ptr %33, i64 24
  %65 = load i64, ptr %64, align 8
  %66 = xor i64 %65, %63
  %67 = add i64 %61, %63
  %68 = and i64 %66, 4294967295
  %69 = lshr i64 %66, 32
  %70 = mul nuw i64 %68, %69
  %71 = add i64 %57, %70
  %72 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %75 = load i64, ptr %74, align 8
  %76 = xor i64 %75, %73
  %77 = add i64 %22, %73
  %78 = and i64 %76, 4294967295
  %79 = lshr i64 %76, 32
  %80 = mul nuw i64 %78, %79
  %81 = add i64 %23, %80
  %82 = getelementptr inbounds nuw i8, ptr %30, i64 40
  %83 = load i64, ptr %82, align 1
  %84 = getelementptr inbounds nuw i8, ptr %33, i64 40
  %85 = load i64, ptr %84, align 8
  %86 = xor i64 %85, %83
  %87 = add i64 %81, %83
  %88 = and i64 %86, 4294967295
  %89 = lshr i64 %86, 32
  %90 = mul nuw i64 %88, %89
  %91 = add i64 %77, %90
  %92 = getelementptr inbounds nuw i8, ptr %30, i64 48
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr inbounds nuw i8, ptr %33, i64 48
  %95 = load i64, ptr %94, align 8
  %96 = xor i64 %95, %93
  %97 = add i64 %20, %93
  %98 = and i64 %96, 4294967295
  %99 = lshr i64 %96, 32
  %100 = mul nuw i64 %98, %99
  %101 = add i64 %21, %100
  %102 = getelementptr inbounds nuw i8, ptr %30, i64 56
  %103 = load i64, ptr %102, align 1
  %104 = getelementptr inbounds nuw i8, ptr %33, i64 56
  %105 = load i64, ptr %104, align 8
  %106 = xor i64 %105, %103
  %107 = add i64 %101, %103
  %108 = and i64 %106, 4294967295
  %109 = lshr i64 %106, 32
  %110 = mul nuw i64 %108, %109
  %111 = add i64 %97, %110
  %112 = add nuw nsw i64 %28, 1
  %113 = icmp eq i64 %112, 16
  br i1 %113, label %114, label %19

114:                                              ; preds = %19
  %115 = lshr i64 %47, 47
  %116 = xor i64 %115, %47
  %117 = xor i64 %116, -4329134394285701654
  %118 = mul i64 %117, 2654435761
  %119 = lshr i64 %51, 47
  %120 = xor i64 %119, %51
  %121 = xor i64 %120, -1485321483350670907
  %122 = mul i64 %121, 2654435761
  %123 = lshr i64 %67, 47
  %124 = xor i64 %123, %67
  %125 = xor i64 %124, 5321830579834785047
  %126 = mul i64 %125, 2654435761
  %127 = lshr i64 %71, 47
  %128 = xor i64 %127, %71
  %129 = xor i64 %128, -7032137544937171245
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %87, 47
  %132 = xor i64 %131, %87
  %133 = xor i64 %132, -242834301215959509
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %91, 47
  %136 = xor i64 %135, %91
  %137 = xor i64 %136, -3588858202114426737
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %107, 47
  %140 = xor i64 %139, %107
  %141 = xor i64 %140, 2883454493032893253
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %111, 47
  %144 = xor i64 %143, %111
  %145 = xor i64 %144, 9097354517224871855
  %146 = mul i64 %145, 2654435761
  %147 = add nuw nsw i64 %16, 1
  %148 = icmp eq i64 %147, %6
  br i1 %148, label %149, label %7

149:                                              ; preds = %114, %2
  %150 = phi i64 [ 2654435761, %2 ], [ %146, %114 ]
  %151 = phi i64 [ 2870177450012600261, %2 ], [ %142, %114 ]
  %152 = phi i64 [ 2246822519, %2 ], [ %138, %114 ]
  %153 = phi i64 [ -8796714831421723037, %2 ], [ %134, %114 ]
  %154 = phi i64 [ 1609587929392839161, %2 ], [ %130, %114 ]
  %155 = phi i64 [ -4417276706812531889, %2 ], [ %126, %114 ]
  %156 = phi i64 [ -7046029288634856825, %2 ], [ %122, %114 ]
  %157 = phi i64 [ 3266489917, %2 ], [ %118, %114 ]
  %158 = and i64 %3, -1024
  %159 = lshr i64 %3, 6
  %160 = and i64 %159, 15
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 %158
  %162 = icmp eq i64 %160, 0
  br i1 %162, label %258, label %163

163:                                              ; preds = %149, %163
  %164 = phi i64 [ %255, %163 ], [ %150, %149 ]
  %165 = phi i64 [ %251, %163 ], [ %151, %149 ]
  %166 = phi i64 [ %235, %163 ], [ %152, %149 ]
  %167 = phi i64 [ %231, %163 ], [ %153, %149 ]
  %168 = phi i64 [ %215, %163 ], [ %154, %149 ]
  %169 = phi i64 [ %211, %163 ], [ %155, %149 ]
  %170 = phi i64 [ %195, %163 ], [ %156, %149 ]
  %171 = phi i64 [ %191, %163 ], [ %157, %149 ]
  %172 = phi i64 [ %256, %163 ], [ 0, %149 ]
  %173 = shl i64 %172, 6
  %174 = getelementptr inbounds nuw i8, ptr %161, i64 %173
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %175, i32 0, i32 3, i32 1), !noalias !164
  %176 = shl i64 %172, 3
  %177 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %176
  %178 = load i64, ptr %174, align 1
  %179 = load i64, ptr %177, align 8
  %180 = xor i64 %179, %178
  %181 = add i64 %170, %178
  %182 = and i64 %180, 4294967295
  %183 = lshr i64 %180, 32
  %184 = mul nuw i64 %182, %183
  %185 = add i64 %171, %184
  %186 = getelementptr inbounds nuw i8, ptr %174, i64 8
  %187 = load i64, ptr %186, align 1
  %188 = getelementptr inbounds nuw i8, ptr %177, i64 8
  %189 = load i64, ptr %188, align 8
  %190 = xor i64 %189, %187
  %191 = add i64 %185, %187
  %192 = and i64 %190, 4294967295
  %193 = lshr i64 %190, 32
  %194 = mul nuw i64 %192, %193
  %195 = add i64 %181, %194
  %196 = getelementptr inbounds nuw i8, ptr %174, i64 16
  %197 = load i64, ptr %196, align 1
  %198 = getelementptr inbounds nuw i8, ptr %177, i64 16
  %199 = load i64, ptr %198, align 8
  %200 = xor i64 %199, %197
  %201 = add i64 %168, %197
  %202 = and i64 %200, 4294967295
  %203 = lshr i64 %200, 32
  %204 = mul nuw i64 %202, %203
  %205 = add i64 %169, %204
  %206 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %207 = load i64, ptr %206, align 1
  %208 = getelementptr inbounds nuw i8, ptr %177, i64 24
  %209 = load i64, ptr %208, align 8
  %210 = xor i64 %209, %207
  %211 = add i64 %205, %207
  %212 = and i64 %210, 4294967295
  %213 = lshr i64 %210, 32
  %214 = mul nuw i64 %212, %213
  %215 = add i64 %201, %214
  %216 = getelementptr inbounds nuw i8, ptr %174, i64 32
  %217 = load i64, ptr %216, align 1
  %218 = getelementptr inbounds nuw i8, ptr %177, i64 32
  %219 = load i64, ptr %218, align 8
  %220 = xor i64 %219, %217
  %221 = add i64 %166, %217
  %222 = and i64 %220, 4294967295
  %223 = lshr i64 %220, 32
  %224 = mul nuw i64 %222, %223
  %225 = add i64 %167, %224
  %226 = getelementptr inbounds nuw i8, ptr %174, i64 40
  %227 = load i64, ptr %226, align 1
  %228 = getelementptr inbounds nuw i8, ptr %177, i64 40
  %229 = load i64, ptr %228, align 8
  %230 = xor i64 %229, %227
  %231 = add i64 %225, %227
  %232 = and i64 %230, 4294967295
  %233 = lshr i64 %230, 32
  %234 = mul nuw i64 %232, %233
  %235 = add i64 %221, %234
  %236 = getelementptr inbounds nuw i8, ptr %174, i64 48
  %237 = load i64, ptr %236, align 1
  %238 = getelementptr inbounds nuw i8, ptr %177, i64 48
  %239 = load i64, ptr %238, align 8
  %240 = xor i64 %239, %237
  %241 = add i64 %164, %237
  %242 = and i64 %240, 4294967295
  %243 = lshr i64 %240, 32
  %244 = mul nuw i64 %242, %243
  %245 = add i64 %165, %244
  %246 = getelementptr inbounds nuw i8, ptr %174, i64 56
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %177, i64 56
  %249 = load i64, ptr %248, align 8
  %250 = xor i64 %249, %247
  %251 = add i64 %245, %247
  %252 = and i64 %250, 4294967295
  %253 = lshr i64 %250, 32
  %254 = mul nuw i64 %252, %253
  %255 = add i64 %241, %254
  %256 = add nuw nsw i64 %172, 1
  %257 = icmp eq i64 %256, %160
  br i1 %257, label %258, label %163

258:                                              ; preds = %163, %149
  %259 = phi i64 [ %150, %149 ], [ %255, %163 ]
  %260 = phi i64 [ %151, %149 ], [ %251, %163 ]
  %261 = phi i64 [ %152, %149 ], [ %235, %163 ]
  %262 = phi i64 [ %153, %149 ], [ %231, %163 ]
  %263 = phi i64 [ %154, %149 ], [ %215, %163 ]
  %264 = phi i64 [ %155, %149 ], [ %211, %163 ]
  %265 = phi i64 [ %156, %149 ], [ %195, %163 ]
  %266 = phi i64 [ %157, %149 ], [ %191, %163 ]
  %267 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %268 = getelementptr inbounds i8, ptr %267, i64 -64
  %269 = load i64, ptr %268, align 1
  %270 = xor i64 %269, -1556992608276218209
  %271 = add i64 %265, %269
  %272 = and i64 %270, 4294967295
  %273 = lshr i64 %270, 32
  %274 = mul nuw i64 %272, %273
  %275 = add i64 %266, %274
  %276 = getelementptr inbounds i8, ptr %267, i64 -56
  %277 = load i64, ptr %276, align 1
  %278 = xor i64 %277, -4196251135427498811
  %279 = add i64 %275, %277
  %280 = and i64 %278, 4294967295
  %281 = lshr i64 %278, 32
  %282 = mul nuw i64 %280, %281
  %283 = add i64 %271, %282
  %284 = getelementptr inbounds i8, ptr %267, i64 -48
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %285, 1723580219865931905
  %287 = add i64 %263, %285
  %288 = and i64 %286, 4294967295
  %289 = lshr i64 %286, 32
  %290 = mul nuw i64 %288, %289
  %291 = add i64 %264, %290
  %292 = getelementptr inbounds i8, ptr %267, i64 -40
  %293 = load i64, ptr %292, align 1
  %294 = xor i64 %293, -3221803331004277491
  %295 = add i64 %291, %293
  %296 = and i64 %294, 4294967295
  %297 = lshr i64 %294, 32
  %298 = mul nuw i64 %296, %297
  %299 = add i64 %287, %298
  %300 = getelementptr inbounds i8, ptr %267, i64 -32
  %301 = load i64, ptr %300, align 1
  %302 = xor i64 %301, 3143064850383918358
  %303 = add i64 %261, %301
  %304 = and i64 %302, 4294967295
  %305 = lshr i64 %302, 32
  %306 = mul nuw i64 %304, %305
  %307 = add i64 %262, %306
  %308 = getelementptr inbounds i8, ptr %267, i64 -24
  %309 = load i64, ptr %308, align 1
  %310 = xor i64 %309, -8071399103737053674
  %311 = add i64 %307, %309
  %312 = and i64 %310, 4294967295
  %313 = lshr i64 %310, 32
  %314 = mul nuw i64 %312, %313
  %315 = add i64 %303, %314
  %316 = getelementptr inbounds i8, ptr %267, i64 -16
  %317 = load i64, ptr %316, align 1
  %318 = xor i64 %317, 5030012605302946040
  %319 = add i64 %259, %317
  %320 = and i64 %318, 4294967295
  %321 = lshr i64 %318, 32
  %322 = mul nuw i64 %320, %321
  %323 = add i64 %260, %322
  %324 = getelementptr inbounds i8, ptr %267, i64 -8
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, -5825401622958753077
  %327 = add i64 %323, %325
  %328 = and i64 %326, 4294967295
  %329 = lshr i64 %326, 32
  %330 = mul nuw i64 %328, %329
  %331 = add i64 %319, %330
  %332 = mul i64 %1, -7046029288634856825
  %333 = xor i64 %279, 7914194659941938988
  %334 = xor i64 %283, -6611157965513653271
  %335 = zext i64 %333 to i128
  %336 = zext i64 %334 to i128
  %337 = mul nuw i128 %336, %335
  %338 = lshr i128 %337, 64
  %339 = xor i128 %338, %337
  %340 = trunc i128 %339 to i64
  %341 = add i64 %332, %340
  %342 = xor i64 %295, -1839215637059881052
  %343 = xor i64 %299, -3433288310154277810
  %344 = zext i64 %342 to i128
  %345 = zext i64 %343 to i128
  %346 = mul nuw i128 %345, %344
  %347 = lshr i128 %346, 64
  %348 = xor i128 %347, %346
  %349 = trunc i128 %348 to i64
  %350 = add i64 %341, %349
  %351 = xor i64 %311, 5046485836271438973
  %352 = xor i64 %315, -8055285457383852172
  %353 = zext i64 %351 to i128
  %354 = zext i64 %352 to i128
  %355 = mul nuw i128 %354, %353
  %356 = lshr i128 %355, 64
  %357 = xor i128 %356, %355
  %358 = trunc i128 %357 to i64
  %359 = add i64 %350, %358
  %360 = xor i64 %327, 5920048007935066598
  %361 = xor i64 %331, 7336514198459093435
  %362 = zext i64 %360 to i128
  %363 = zext i64 %361 to i128
  %364 = mul nuw i128 %363, %362
  %365 = lshr i128 %364, 64
  %366 = xor i128 %365, %364
  %367 = trunc i128 %366 to i64
  %368 = add i64 %359, %367
  %369 = lshr i64 %368, 37
  %370 = xor i64 %369, %368
  %371 = mul i64 %370, 1609587791953885689
  %372 = lshr i64 %371, 32
  %373 = xor i64 %372, %371
  %374 = mul i64 %1, -4417276706812531889
  %375 = xor i64 %374, -1
  %376 = xor i64 %279, -2753530472436770380
  %377 = xor i64 %283, 3784058077962335096
  %378 = zext i64 %376 to i128
  %379 = zext i64 %377 to i128
  %380 = mul nuw i128 %379, %378
  %381 = lshr i128 %380, 64
  %382 = xor i128 %381, %380
  %383 = trunc i128 %382 to i64
  %384 = add i64 %383, %375
  %385 = xor i64 %295, -360392965937173549
  %386 = xor i64 %299, -5237161843349560557
  %387 = zext i64 %385 to i128
  %388 = zext i64 %386 to i128
  %389 = mul nuw i128 %388, %387
  %390 = lshr i128 %389, 64
  %391 = xor i128 %390, %389
  %392 = trunc i128 %391 to i64
  %393 = add i64 %384, %392
  %394 = xor i64 %311, 2965150961192524528
  %395 = xor i64 %315, 9032178055121889492
  %396 = zext i64 %394 to i128
  %397 = zext i64 %395 to i128
  %398 = mul nuw i128 %397, %396
  %399 = lshr i128 %398, 64
  %400 = xor i128 %399, %398
  %401 = trunc i128 %400 to i64
  %402 = add i64 %393, %401
  %403 = xor i64 %327, 8850058120466833735
  %404 = xor i64 %331, -7669846995664752176
  %405 = zext i64 %403 to i128
  %406 = zext i64 %404 to i128
  %407 = mul nuw i128 %406, %405
  %408 = lshr i128 %407, 64
  %409 = xor i128 %408, %407
  %410 = trunc i128 %409 to i64
  %411 = add i64 %402, %410
  %412 = lshr i64 %411, 37
  %413 = xor i64 %412, %411
  %414 = mul i64 %413, 1609587791953885689
  %415 = lshr i64 %414, 32
  %416 = xor i64 %415, %414
  %417 = insertvalue { i64, i64 } poison, i64 %373, 0
  %418 = insertvalue { i64, i64 } %417, i64 %416, 1
  ret { i64, i64 } %418
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSecret(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #13 {
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %178

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %59

8:                                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, %10
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %17, %15
  %19 = load i64, ptr %0, align 1
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = load i64, ptr %21, align 1
  %23 = xor i64 %13, %19
  %24 = xor i64 %23, %22
  %25 = zext i64 %24 to i128
  %26 = mul nuw i128 %25, 11400714785074694791
  %27 = trunc i128 %26 to i64
  %28 = lshr i128 %26, 64
  %29 = trunc nuw i128 %28 to i64
  %30 = shl nuw nsw i64 %1, 54
  %31 = add nsw i64 %30, -18014398509481984
  %32 = add i64 %31, %27
  %33 = xor i64 %18, %22
  %34 = and i64 %33, 4294967295
  %35 = mul nuw i64 %34, 2246822518
  %36 = add i64 %35, %33
  %37 = add i64 %36, %29
  %38 = tail call noundef i64 @llvm.bswap.i64(i64 %37)
  %39 = xor i64 %38, %32
  %40 = zext i64 %39 to i128
  %41 = mul nuw i128 %40, 14029467366897019727
  %42 = trunc i128 %41 to i64
  %43 = lshr i128 %41, 64
  %44 = trunc nuw i128 %43 to i64
  %45 = mul i64 %37, -4417276706812531889
  %46 = add i64 %45, %44
  %47 = lshr i64 %42, 37
  %48 = xor i64 %47, %42
  %49 = mul i64 %48, 1609587791953885689
  %50 = lshr i64 %49, 32
  %51 = xor i64 %50, %49
  %52 = lshr i64 %46, 37
  %53 = xor i64 %52, %46
  %54 = mul i64 %53, 1609587791953885689
  %55 = lshr i64 %54, 32
  %56 = xor i64 %55, %54
  %57 = insertvalue { i64, i64 } poison, i64 %51, 0
  %58 = insertvalue { i64, i64 } %57, i64 %56, 1
  br label %375

59:                                               ; preds = %6
  %60 = icmp samesign ugt i64 %1, 3
  br i1 %60, label %61, label %100

61:                                               ; preds = %59
  %62 = load i32, ptr %0, align 1
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %64 = getelementptr inbounds i8, ptr %63, i64 -4
  %65 = load i32, ptr %64, align 1
  %66 = zext i32 %62 to i64
  %67 = zext i32 %65 to i64
  %68 = shl nuw i64 %67, 32
  %69 = or disjoint i64 %68, %66
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = xor i64 %74, %69
  %76 = shl nuw nsw i64 %1, 2
  %77 = add nuw nsw i64 %76, -7046029288634856825
  %78 = zext i64 %75 to i128
  %79 = zext i64 %77 to i128
  %80 = mul nuw i128 %78, %79
  %81 = trunc i128 %80 to i64
  %82 = lshr i128 %80, 64
  %83 = trunc nuw i128 %82 to i64
  %84 = shl i64 %81, 1
  %85 = add i64 %84, %83
  %86 = lshr i64 %85, 3
  %87 = xor i64 %86, %81
  %88 = lshr i64 %87, 35
  %89 = xor i64 %88, %87
  %90 = mul i64 %89, -6939452855193903323
  %91 = lshr i64 %90, 28
  %92 = xor i64 %91, %90
  %93 = lshr i64 %85, 37
  %94 = xor i64 %93, %85
  %95 = mul i64 %94, 1609587791953885689
  %96 = lshr i64 %95, 32
  %97 = xor i64 %96, %95
  %98 = insertvalue { i64, i64 } poison, i64 %92, 0
  %99 = insertvalue { i64, i64 } %98, i64 %97, 1
  br label %375

100:                                              ; preds = %59
  %101 = icmp eq i64 %1, 0
  br i1 %101, label %149, label %102

102:                                              ; preds = %100
  %103 = load i8, ptr %0, align 1
  %104 = lshr i64 %1, 1
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 %104
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr i8, ptr %0, i64 %1
  %108 = getelementptr i8, ptr %107, i64 -1
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %103 to i32
  %111 = shl nuw nsw i32 %110, 16
  %112 = zext i8 %106 to i32
  %113 = shl nuw i32 %112, 24
  %114 = or disjoint i32 %113, %111
  %115 = zext i8 %109 to i32
  %116 = or disjoint i32 %114, %115
  %117 = trunc nuw nsw i64 %1 to i32
  %118 = shl nuw nsw i32 %117, 8
  %119 = or disjoint i32 %116, %118
  %120 = tail call noundef i32 @llvm.bswap.i32(i32 %119)
  %121 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 13)
  %122 = load i32, ptr %2, align 1
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %124 = load i32, ptr %123, align 1
  %125 = xor i32 %124, %122
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %127 = load i32, ptr %126, align 1
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %129 = load i32, ptr %128, align 1
  %130 = xor i32 %129, %127
  %131 = xor i32 %125, %119
  %132 = zext i32 %131 to i64
  %133 = xor i32 %130, %121
  %134 = zext i32 %133 to i64
  %135 = mul i64 %132, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  %141 = mul i64 %134, -4417276706812531889
  %142 = lshr i64 %141, 29
  %143 = xor i64 %142, %141
  %144 = mul i64 %143, 1609587929392839161
  %145 = lshr i64 %144, 32
  %146 = xor i64 %145, %144
  %147 = insertvalue { i64, i64 } poison, i64 %140, 0
  %148 = insertvalue { i64, i64 } %147, i64 %146, 1
  br label %375

149:                                              ; preds = %100
  %150 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %151 = load i64, ptr %150, align 1
  %152 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %153 = load i64, ptr %152, align 1
  %154 = xor i64 %153, %151
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %156 = load i64, ptr %155, align 1
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %158 = load i64, ptr %157, align 1
  %159 = xor i64 %158, %156
  %160 = lshr i64 %154, 33
  %161 = xor i64 %160, %154
  %162 = mul i64 %161, -4417276706812531889
  %163 = lshr i64 %162, 29
  %164 = xor i64 %163, %162
  %165 = mul i64 %164, 1609587929392839161
  %166 = lshr i64 %165, 32
  %167 = xor i64 %166, %165
  %168 = lshr i64 %159, 33
  %169 = xor i64 %168, %159
  %170 = mul i64 %169, -4417276706812531889
  %171 = lshr i64 %170, 29
  %172 = xor i64 %171, %170
  %173 = mul i64 %172, 1609587929392839161
  %174 = lshr i64 %173, 32
  %175 = xor i64 %174, %173
  %176 = insertvalue { i64, i64 } poison, i64 %167, 0
  %177 = insertvalue { i64, i64 } %176, i64 %175, 1
  br label %375

178:                                              ; preds = %4
  %179 = icmp ult i64 %1, 129
  br i1 %179, label %180, label %369

180:                                              ; preds = %178
  %181 = mul i64 %1, -7046029288634856825
  %182 = icmp samesign ugt i64 %1, 32
  br i1 %182, label %183, label %310

183:                                              ; preds = %180
  %184 = icmp samesign ugt i64 %1, 64
  br i1 %184, label %185, label %268

185:                                              ; preds = %183
  %186 = icmp samesign ugt i64 %1, 96
  br i1 %186, label %187, label %226

187:                                              ; preds = %185
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %190 = getelementptr inbounds i8, ptr %189, i64 -64
  %191 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %192 = load i64, ptr %188, align 1
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %194 = load i64, ptr %193, align 1
  %195 = load i64, ptr %191, align 1
  %196 = xor i64 %195, %192
  %197 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %198 = load i64, ptr %197, align 1
  %199 = xor i64 %198, %194
  %200 = zext i64 %196 to i128
  %201 = zext i64 %199 to i128
  %202 = mul nuw i128 %201, %200
  %203 = lshr i128 %202, 64
  %204 = xor i128 %203, %202
  %205 = trunc i128 %204 to i64
  %206 = add i64 %181, %205
  %207 = load i64, ptr %190, align 1
  %208 = getelementptr inbounds i8, ptr %189, i64 -56
  %209 = load i64, ptr %208, align 1
  %210 = add i64 %209, %207
  %211 = xor i64 %206, %210
  %212 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %213 = load i64, ptr %212, align 1
  %214 = xor i64 %213, %207
  %215 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %216 = load i64, ptr %215, align 1
  %217 = xor i64 %216, %209
  %218 = zext i64 %214 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %194, %192
  %225 = xor i64 %224, %223
  br label %226

226:                                              ; preds = %187, %185
  %227 = phi i64 [ %211, %187 ], [ %181, %185 ]
  %228 = phi i64 [ %225, %187 ], [ 0, %185 ]
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %231 = getelementptr inbounds i8, ptr %230, i64 -48
  %232 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %233 = load i64, ptr %229, align 1
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %235 = load i64, ptr %234, align 1
  %236 = load i64, ptr %232, align 1
  %237 = xor i64 %236, %233
  %238 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %239 = load i64, ptr %238, align 1
  %240 = xor i64 %239, %235
  %241 = zext i64 %237 to i128
  %242 = zext i64 %240 to i128
  %243 = mul nuw i128 %242, %241
  %244 = lshr i128 %243, 64
  %245 = xor i128 %244, %243
  %246 = trunc i128 %245 to i64
  %247 = add i64 %227, %246
  %248 = load i64, ptr %231, align 1
  %249 = getelementptr inbounds i8, ptr %230, i64 -40
  %250 = load i64, ptr %249, align 1
  %251 = add i64 %250, %248
  %252 = xor i64 %247, %251
  %253 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %254 = load i64, ptr %253, align 1
  %255 = xor i64 %254, %248
  %256 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %257 = load i64, ptr %256, align 1
  %258 = xor i64 %257, %250
  %259 = zext i64 %255 to i128
  %260 = zext i64 %258 to i128
  %261 = mul nuw i128 %260, %259
  %262 = lshr i128 %261, 64
  %263 = xor i128 %262, %261
  %264 = trunc i128 %263 to i64
  %265 = add i64 %228, %264
  %266 = add i64 %235, %233
  %267 = xor i64 %265, %266
  br label %268

268:                                              ; preds = %226, %183
  %269 = phi i64 [ %252, %226 ], [ %181, %183 ]
  %270 = phi i64 [ %267, %226 ], [ 0, %183 ]
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %273 = getelementptr inbounds i8, ptr %272, i64 -32
  %274 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %275 = load i64, ptr %271, align 1
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %277 = load i64, ptr %276, align 1
  %278 = load i64, ptr %274, align 1
  %279 = xor i64 %278, %275
  %280 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %281 = load i64, ptr %280, align 1
  %282 = xor i64 %281, %277
  %283 = zext i64 %279 to i128
  %284 = zext i64 %282 to i128
  %285 = mul nuw i128 %284, %283
  %286 = lshr i128 %285, 64
  %287 = xor i128 %286, %285
  %288 = trunc i128 %287 to i64
  %289 = add i64 %269, %288
  %290 = load i64, ptr %273, align 1
  %291 = getelementptr inbounds i8, ptr %272, i64 -24
  %292 = load i64, ptr %291, align 1
  %293 = add i64 %292, %290
  %294 = xor i64 %289, %293
  %295 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %296 = load i64, ptr %295, align 1
  %297 = xor i64 %296, %290
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %299 = load i64, ptr %298, align 1
  %300 = xor i64 %299, %292
  %301 = zext i64 %297 to i128
  %302 = zext i64 %300 to i128
  %303 = mul nuw i128 %302, %301
  %304 = lshr i128 %303, 64
  %305 = xor i128 %304, %303
  %306 = trunc i128 %305 to i64
  %307 = add i64 %270, %306
  %308 = add i64 %277, %275
  %309 = xor i64 %307, %308
  br label %310

310:                                              ; preds = %180, %268
  %311 = phi i64 [ %294, %268 ], [ %181, %180 ]
  %312 = phi i64 [ %309, %268 ], [ 0, %180 ]
  %313 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %314 = getelementptr inbounds i8, ptr %313, i64 -16
  %315 = load i64, ptr %0, align 1
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %317 = load i64, ptr %316, align 1
  %318 = load i64, ptr %2, align 1
  %319 = xor i64 %318, %315
  %320 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %321 = load i64, ptr %320, align 1
  %322 = xor i64 %321, %317
  %323 = zext i64 %319 to i128
  %324 = zext i64 %322 to i128
  %325 = mul nuw i128 %324, %323
  %326 = lshr i128 %325, 64
  %327 = xor i128 %326, %325
  %328 = trunc i128 %327 to i64
  %329 = add i64 %311, %328
  %330 = load i64, ptr %314, align 1
  %331 = getelementptr inbounds i8, ptr %313, i64 -8
  %332 = load i64, ptr %331, align 1
  %333 = add i64 %332, %330
  %334 = xor i64 %329, %333
  %335 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %336 = load i64, ptr %335, align 1
  %337 = xor i64 %336, %330
  %338 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %339 = load i64, ptr %338, align 1
  %340 = xor i64 %339, %332
  %341 = zext i64 %337 to i128
  %342 = zext i64 %340 to i128
  %343 = mul nuw i128 %342, %341
  %344 = lshr i128 %343, 64
  %345 = xor i128 %344, %343
  %346 = trunc i128 %345 to i64
  %347 = add i64 %312, %346
  %348 = add i64 %317, %315
  %349 = xor i64 %347, %348
  %350 = add i64 %349, %334
  %351 = mul i64 %334, -7046029288634856825
  %352 = mul i64 %349, -8796714831421723037
  %353 = mul i64 %1, -4417276706812531889
  %354 = add i64 %351, %353
  %355 = add i64 %354, %352
  %356 = lshr i64 %350, 37
  %357 = xor i64 %356, %350
  %358 = mul i64 %357, 1609587791953885689
  %359 = lshr i64 %358, 32
  %360 = xor i64 %359, %358
  %361 = lshr i64 %355, 37
  %362 = xor i64 %361, %355
  %363 = mul i64 %362, 1609587791953885689
  %364 = lshr i64 %363, 32
  %365 = xor i64 %364, %363
  %366 = sub i64 0, %365
  %367 = insertvalue { i64, i64 } poison, i64 %360, 0
  %368 = insertvalue { i64, i64 } %367, i64 %366, 1
  br label %375

369:                                              ; preds = %178
  %370 = icmp ult i64 %1, 241
  br i1 %370, label %371, label %373

371:                                              ; preds = %369
  %372 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0)
  br label %375

373:                                              ; preds = %369
  %374 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #27
  br label %375

375:                                              ; preds = %149, %102, %61, %8, %310, %371, %373
  %376 = phi { i64, i64 } [ %368, %310 ], [ %372, %371 ], [ %374, %373 ], [ %58, %8 ], [ %99, %61 ], [ %148, %102 ], [ %177, %149 ]
  ret { i64, i64 } %376
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #14 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %7, %8
  br i1 %11, label %235, label %12

12:                                               ; preds = %4
  %13 = icmp ult i64 %5, 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  br i1 %13, label %33, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %18 = load i64, ptr %15, align 1
  %19 = getelementptr inbounds i8, ptr %14, i64 -56
  %20 = load i64, ptr %19, align 1
  %21 = getelementptr inbounds i8, ptr %14, i64 -48
  %22 = load i64, ptr %21, align 1
  %23 = getelementptr inbounds i8, ptr %14, i64 -40
  %24 = load i64, ptr %23, align 1
  %25 = getelementptr inbounds i8, ptr %14, i64 -32
  %26 = load i64, ptr %25, align 1
  %27 = getelementptr inbounds i8, ptr %14, i64 -24
  %28 = load i64, ptr %27, align 1
  %29 = getelementptr inbounds i8, ptr %14, i64 -16
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds i8, ptr %14, i64 -8
  %32 = load i64, ptr %31, align 1
  br label %49

33:                                               ; preds = %12
  %34 = load i64, ptr %15, align 1
  %35 = getelementptr inbounds i8, ptr %14, i64 -56
  %36 = load i64, ptr %35, align 1
  %37 = getelementptr inbounds i8, ptr %14, i64 -48
  %38 = load i64, ptr %37, align 1
  %39 = getelementptr inbounds i8, ptr %14, i64 -40
  %40 = load i64, ptr %39, align 1
  %41 = getelementptr inbounds i8, ptr %14, i64 -32
  %42 = load i64, ptr %41, align 1
  %43 = getelementptr inbounds i8, ptr %14, i64 -24
  %44 = load i64, ptr %43, align 1
  %45 = getelementptr inbounds i8, ptr %14, i64 -16
  %46 = load i64, ptr %45, align 1
  %47 = getelementptr inbounds i8, ptr %14, i64 -8
  %48 = load i64, ptr %47, align 1
  br label %191

49:                                               ; preds = %16, %156
  %50 = phi i64 [ 2654435761, %16 ], [ %188, %156 ]
  %51 = phi i64 [ 2870177450012600261, %16 ], [ %184, %156 ]
  %52 = phi i64 [ 2246822519, %16 ], [ %180, %156 ]
  %53 = phi i64 [ -8796714831421723037, %16 ], [ %176, %156 ]
  %54 = phi i64 [ 1609587929392839161, %16 ], [ %172, %156 ]
  %55 = phi i64 [ -4417276706812531889, %16 ], [ %168, %156 ]
  %56 = phi i64 [ -7046029288634856825, %16 ], [ %164, %156 ]
  %57 = phi i64 [ 3266489917, %16 ], [ %160, %156 ]
  %58 = phi i64 [ 0, %16 ], [ %189, %156 ]
  %59 = mul i64 %58, %7
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 %59
  br label %61

61:                                               ; preds = %49, %61
  %62 = phi i64 [ %50, %49 ], [ %153, %61 ]
  %63 = phi i64 [ %51, %49 ], [ %149, %61 ]
  %64 = phi i64 [ %52, %49 ], [ %133, %61 ]
  %65 = phi i64 [ %53, %49 ], [ %129, %61 ]
  %66 = phi i64 [ %54, %49 ], [ %113, %61 ]
  %67 = phi i64 [ %55, %49 ], [ %109, %61 ]
  %68 = phi i64 [ %56, %49 ], [ %93, %61 ]
  %69 = phi i64 [ %57, %49 ], [ %89, %61 ]
  %70 = phi i64 [ 0, %49 ], [ %154, %61 ]
  %71 = shl i64 %70, 6
  %72 = getelementptr inbounds nuw i8, ptr %60, i64 %71
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %73, i32 0, i32 3, i32 1), !noalias !167
  %74 = shl i64 %70, 3
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 %74
  %76 = load i64, ptr %72, align 1
  %77 = load i64, ptr %75, align 1
  %78 = xor i64 %77, %76
  %79 = add i64 %68, %76
  %80 = and i64 %78, 4294967295
  %81 = lshr i64 %78, 32
  %82 = mul nuw i64 %80, %81
  %83 = add i64 %69, %82
  %84 = getelementptr inbounds nuw i8, ptr %72, i64 8
  %85 = load i64, ptr %84, align 1
  %86 = getelementptr inbounds nuw i8, ptr %75, i64 8
  %87 = load i64, ptr %86, align 1
  %88 = xor i64 %87, %85
  %89 = add i64 %83, %85
  %90 = and i64 %88, 4294967295
  %91 = lshr i64 %88, 32
  %92 = mul nuw i64 %90, %91
  %93 = add i64 %79, %92
  %94 = getelementptr inbounds nuw i8, ptr %72, i64 16
  %95 = load i64, ptr %94, align 1
  %96 = getelementptr inbounds nuw i8, ptr %75, i64 16
  %97 = load i64, ptr %96, align 1
  %98 = xor i64 %97, %95
  %99 = add i64 %66, %95
  %100 = and i64 %98, 4294967295
  %101 = lshr i64 %98, 32
  %102 = mul nuw i64 %100, %101
  %103 = add i64 %67, %102
  %104 = getelementptr inbounds nuw i8, ptr %72, i64 24
  %105 = load i64, ptr %104, align 1
  %106 = getelementptr inbounds nuw i8, ptr %75, i64 24
  %107 = load i64, ptr %106, align 1
  %108 = xor i64 %107, %105
  %109 = add i64 %103, %105
  %110 = and i64 %108, 4294967295
  %111 = lshr i64 %108, 32
  %112 = mul nuw i64 %110, %111
  %113 = add i64 %99, %112
  %114 = getelementptr inbounds nuw i8, ptr %72, i64 32
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = add i64 %64, %115
  %120 = and i64 %118, 4294967295
  %121 = lshr i64 %118, 32
  %122 = mul nuw i64 %120, %121
  %123 = add i64 %65, %122
  %124 = getelementptr inbounds nuw i8, ptr %72, i64 40
  %125 = load i64, ptr %124, align 1
  %126 = getelementptr inbounds nuw i8, ptr %75, i64 40
  %127 = load i64, ptr %126, align 1
  %128 = xor i64 %127, %125
  %129 = add i64 %123, %125
  %130 = and i64 %128, 4294967295
  %131 = lshr i64 %128, 32
  %132 = mul nuw i64 %130, %131
  %133 = add i64 %119, %132
  %134 = getelementptr inbounds nuw i8, ptr %72, i64 48
  %135 = load i64, ptr %134, align 1
  %136 = getelementptr inbounds nuw i8, ptr %75, i64 48
  %137 = load i64, ptr %136, align 1
  %138 = xor i64 %137, %135
  %139 = add i64 %62, %135
  %140 = and i64 %138, 4294967295
  %141 = lshr i64 %138, 32
  %142 = mul nuw i64 %140, %141
  %143 = add i64 %63, %142
  %144 = getelementptr inbounds nuw i8, ptr %72, i64 56
  %145 = load i64, ptr %144, align 1
  %146 = getelementptr inbounds nuw i8, ptr %75, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = xor i64 %147, %145
  %149 = add i64 %143, %145
  %150 = and i64 %148, 4294967295
  %151 = lshr i64 %148, 32
  %152 = mul nuw i64 %150, %151
  %153 = add i64 %139, %152
  %154 = add nuw nsw i64 %70, 1
  %155 = icmp eq i64 %154, %17
  br i1 %155, label %156, label %61

156:                                              ; preds = %61
  %157 = lshr i64 %89, 47
  %158 = xor i64 %18, %157
  %159 = xor i64 %158, %89
  %160 = mul i64 %159, 2654435761
  %161 = lshr i64 %93, 47
  %162 = xor i64 %20, %161
  %163 = xor i64 %162, %93
  %164 = mul i64 %163, 2654435761
  %165 = lshr i64 %109, 47
  %166 = xor i64 %22, %165
  %167 = xor i64 %166, %109
  %168 = mul i64 %167, 2654435761
  %169 = lshr i64 %113, 47
  %170 = xor i64 %24, %169
  %171 = xor i64 %170, %113
  %172 = mul i64 %171, 2654435761
  %173 = lshr i64 %129, 47
  %174 = xor i64 %26, %173
  %175 = xor i64 %174, %129
  %176 = mul i64 %175, 2654435761
  %177 = lshr i64 %133, 47
  %178 = xor i64 %28, %177
  %179 = xor i64 %178, %133
  %180 = mul i64 %179, 2654435761
  %181 = lshr i64 %149, 47
  %182 = xor i64 %30, %181
  %183 = xor i64 %182, %149
  %184 = mul i64 %183, 2654435761
  %185 = lshr i64 %153, 47
  %186 = xor i64 %32, %185
  %187 = xor i64 %186, %153
  %188 = mul i64 %187, 2654435761
  %189 = add nuw i64 %58, 1
  %190 = icmp ult i64 %189, %9
  br i1 %190, label %49, label %235

191:                                              ; preds = %33, %191
  %192 = phi i64 [ 2654435761, %33 ], [ %232, %191 ]
  %193 = phi i64 [ 2870177450012600261, %33 ], [ %228, %191 ]
  %194 = phi i64 [ 2246822519, %33 ], [ %224, %191 ]
  %195 = phi i64 [ -8796714831421723037, %33 ], [ %220, %191 ]
  %196 = phi i64 [ 1609587929392839161, %33 ], [ %216, %191 ]
  %197 = phi i64 [ -4417276706812531889, %33 ], [ %212, %191 ]
  %198 = phi i64 [ -7046029288634856825, %33 ], [ %208, %191 ]
  %199 = phi i64 [ 3266489917, %33 ], [ %204, %191 ]
  %200 = phi i64 [ 0, %33 ], [ %233, %191 ]
  %201 = lshr i64 %199, 47
  %202 = xor i64 %34, %201
  %203 = xor i64 %202, %199
  %204 = mul i64 %203, 2654435761
  %205 = lshr i64 %198, 47
  %206 = xor i64 %36, %205
  %207 = xor i64 %206, %198
  %208 = mul i64 %207, 2654435761
  %209 = lshr i64 %197, 47
  %210 = xor i64 %38, %209
  %211 = xor i64 %210, %197
  %212 = mul i64 %211, 2654435761
  %213 = lshr i64 %196, 47
  %214 = xor i64 %40, %213
  %215 = xor i64 %214, %196
  %216 = mul i64 %215, 2654435761
  %217 = lshr i64 %195, 47
  %218 = xor i64 %42, %217
  %219 = xor i64 %218, %195
  %220 = mul i64 %219, 2654435761
  %221 = lshr i64 %194, 47
  %222 = xor i64 %44, %221
  %223 = xor i64 %222, %194
  %224 = mul i64 %223, 2654435761
  %225 = lshr i64 %193, 47
  %226 = xor i64 %46, %225
  %227 = xor i64 %226, %193
  %228 = mul i64 %227, 2654435761
  %229 = lshr i64 %192, 47
  %230 = xor i64 %48, %229
  %231 = xor i64 %230, %192
  %232 = mul i64 %231, 2654435761
  %233 = add nuw i64 %200, 1
  %234 = icmp ult i64 %233, %9
  br i1 %234, label %191, label %235

235:                                              ; preds = %156, %191, %4
  %236 = phi i64 [ 2654435761, %4 ], [ %232, %191 ], [ %188, %156 ]
  %237 = phi i64 [ 2870177450012600261, %4 ], [ %228, %191 ], [ %184, %156 ]
  %238 = phi i64 [ 2246822519, %4 ], [ %224, %191 ], [ %180, %156 ]
  %239 = phi i64 [ -8796714831421723037, %4 ], [ %220, %191 ], [ %176, %156 ]
  %240 = phi i64 [ 1609587929392839161, %4 ], [ %216, %191 ], [ %172, %156 ]
  %241 = phi i64 [ -4417276706812531889, %4 ], [ %212, %191 ], [ %168, %156 ]
  %242 = phi i64 [ -7046029288634856825, %4 ], [ %208, %191 ], [ %164, %156 ]
  %243 = phi i64 [ 3266489917, %4 ], [ %204, %191 ], [ %160, %156 ]
  %244 = mul i64 %9, %7
  %245 = lshr i64 %10, 6
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 %244
  %247 = icmp ult i64 %10, 64
  br i1 %247, label %343, label %248

248:                                              ; preds = %235, %248
  %249 = phi i64 [ %340, %248 ], [ %236, %235 ]
  %250 = phi i64 [ %336, %248 ], [ %237, %235 ]
  %251 = phi i64 [ %320, %248 ], [ %238, %235 ]
  %252 = phi i64 [ %316, %248 ], [ %239, %235 ]
  %253 = phi i64 [ %300, %248 ], [ %240, %235 ]
  %254 = phi i64 [ %296, %248 ], [ %241, %235 ]
  %255 = phi i64 [ %280, %248 ], [ %242, %235 ]
  %256 = phi i64 [ %276, %248 ], [ %243, %235 ]
  %257 = phi i64 [ %341, %248 ], [ 0, %235 ]
  %258 = shl i64 %257, 6
  %259 = getelementptr inbounds nuw i8, ptr %246, i64 %258
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %260, i32 0, i32 3, i32 1), !noalias !170
  %261 = shl i64 %257, 3
  %262 = getelementptr inbounds nuw i8, ptr %2, i64 %261
  %263 = load i64, ptr %259, align 1
  %264 = load i64, ptr %262, align 1
  %265 = xor i64 %264, %263
  %266 = add i64 %255, %263
  %267 = and i64 %265, 4294967295
  %268 = lshr i64 %265, 32
  %269 = mul nuw i64 %267, %268
  %270 = add i64 %256, %269
  %271 = getelementptr inbounds nuw i8, ptr %259, i64 8
  %272 = load i64, ptr %271, align 1
  %273 = getelementptr inbounds nuw i8, ptr %262, i64 8
  %274 = load i64, ptr %273, align 1
  %275 = xor i64 %274, %272
  %276 = add i64 %270, %272
  %277 = and i64 %275, 4294967295
  %278 = lshr i64 %275, 32
  %279 = mul nuw i64 %277, %278
  %280 = add i64 %266, %279
  %281 = getelementptr inbounds nuw i8, ptr %259, i64 16
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %262, i64 16
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = add i64 %253, %282
  %287 = and i64 %285, 4294967295
  %288 = lshr i64 %285, 32
  %289 = mul nuw i64 %287, %288
  %290 = add i64 %254, %289
  %291 = getelementptr inbounds nuw i8, ptr %259, i64 24
  %292 = load i64, ptr %291, align 1
  %293 = getelementptr inbounds nuw i8, ptr %262, i64 24
  %294 = load i64, ptr %293, align 1
  %295 = xor i64 %294, %292
  %296 = add i64 %290, %292
  %297 = and i64 %295, 4294967295
  %298 = lshr i64 %295, 32
  %299 = mul nuw i64 %297, %298
  %300 = add i64 %286, %299
  %301 = getelementptr inbounds nuw i8, ptr %259, i64 32
  %302 = load i64, ptr %301, align 1
  %303 = getelementptr inbounds nuw i8, ptr %262, i64 32
  %304 = load i64, ptr %303, align 1
  %305 = xor i64 %304, %302
  %306 = add i64 %251, %302
  %307 = and i64 %305, 4294967295
  %308 = lshr i64 %305, 32
  %309 = mul nuw i64 %307, %308
  %310 = add i64 %252, %309
  %311 = getelementptr inbounds nuw i8, ptr %259, i64 40
  %312 = load i64, ptr %311, align 1
  %313 = getelementptr inbounds nuw i8, ptr %262, i64 40
  %314 = load i64, ptr %313, align 1
  %315 = xor i64 %314, %312
  %316 = add i64 %310, %312
  %317 = and i64 %315, 4294967295
  %318 = lshr i64 %315, 32
  %319 = mul nuw i64 %317, %318
  %320 = add i64 %306, %319
  %321 = getelementptr inbounds nuw i8, ptr %259, i64 48
  %322 = load i64, ptr %321, align 1
  %323 = getelementptr inbounds nuw i8, ptr %262, i64 48
  %324 = load i64, ptr %323, align 1
  %325 = xor i64 %324, %322
  %326 = add i64 %249, %322
  %327 = and i64 %325, 4294967295
  %328 = lshr i64 %325, 32
  %329 = mul nuw i64 %327, %328
  %330 = add i64 %250, %329
  %331 = getelementptr inbounds nuw i8, ptr %259, i64 56
  %332 = load i64, ptr %331, align 1
  %333 = getelementptr inbounds nuw i8, ptr %262, i64 56
  %334 = load i64, ptr %333, align 1
  %335 = xor i64 %334, %332
  %336 = add i64 %330, %332
  %337 = and i64 %335, 4294967295
  %338 = lshr i64 %335, 32
  %339 = mul nuw i64 %337, %338
  %340 = add i64 %326, %339
  %341 = add nuw nsw i64 %257, 1
  %342 = icmp samesign ult i64 %341, %245
  br i1 %342, label %248, label %343

343:                                              ; preds = %248, %235
  %344 = phi i64 [ %236, %235 ], [ %340, %248 ]
  %345 = phi i64 [ %237, %235 ], [ %336, %248 ]
  %346 = phi i64 [ %238, %235 ], [ %320, %248 ]
  %347 = phi i64 [ %239, %235 ], [ %316, %248 ]
  %348 = phi i64 [ %240, %235 ], [ %300, %248 ]
  %349 = phi i64 [ %241, %235 ], [ %296, %248 ]
  %350 = phi i64 [ %242, %235 ], [ %280, %248 ]
  %351 = phi i64 [ %243, %235 ], [ %276, %248 ]
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %353 = getelementptr inbounds i8, ptr %352, i64 -64
  %354 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %355 = getelementptr inbounds i8, ptr %354, i64 -71
  %356 = load i64, ptr %353, align 1
  %357 = load i64, ptr %355, align 1
  %358 = xor i64 %357, %356
  %359 = add i64 %350, %356
  %360 = and i64 %358, 4294967295
  %361 = lshr i64 %358, 32
  %362 = mul nuw i64 %360, %361
  %363 = add i64 %351, %362
  %364 = getelementptr inbounds i8, ptr %352, i64 -56
  %365 = load i64, ptr %364, align 1
  %366 = getelementptr inbounds i8, ptr %354, i64 -63
  %367 = load i64, ptr %366, align 1
  %368 = xor i64 %367, %365
  %369 = add i64 %363, %365
  %370 = and i64 %368, 4294967295
  %371 = lshr i64 %368, 32
  %372 = mul nuw i64 %370, %371
  %373 = add i64 %359, %372
  %374 = getelementptr inbounds i8, ptr %352, i64 -48
  %375 = load i64, ptr %374, align 1
  %376 = getelementptr inbounds i8, ptr %354, i64 -55
  %377 = load i64, ptr %376, align 1
  %378 = xor i64 %377, %375
  %379 = add i64 %348, %375
  %380 = and i64 %378, 4294967295
  %381 = lshr i64 %378, 32
  %382 = mul nuw i64 %380, %381
  %383 = add i64 %349, %382
  %384 = getelementptr inbounds i8, ptr %352, i64 -40
  %385 = load i64, ptr %384, align 1
  %386 = getelementptr inbounds i8, ptr %354, i64 -47
  %387 = load i64, ptr %386, align 1
  %388 = xor i64 %387, %385
  %389 = add i64 %383, %385
  %390 = and i64 %388, 4294967295
  %391 = lshr i64 %388, 32
  %392 = mul nuw i64 %390, %391
  %393 = add i64 %379, %392
  %394 = getelementptr inbounds i8, ptr %352, i64 -32
  %395 = load i64, ptr %394, align 1
  %396 = getelementptr inbounds i8, ptr %354, i64 -39
  %397 = load i64, ptr %396, align 1
  %398 = xor i64 %397, %395
  %399 = add i64 %346, %395
  %400 = and i64 %398, 4294967295
  %401 = lshr i64 %398, 32
  %402 = mul nuw i64 %400, %401
  %403 = add i64 %347, %402
  %404 = getelementptr inbounds i8, ptr %352, i64 -24
  %405 = load i64, ptr %404, align 1
  %406 = getelementptr inbounds i8, ptr %354, i64 -31
  %407 = load i64, ptr %406, align 1
  %408 = xor i64 %407, %405
  %409 = add i64 %403, %405
  %410 = and i64 %408, 4294967295
  %411 = lshr i64 %408, 32
  %412 = mul nuw i64 %410, %411
  %413 = add i64 %399, %412
  %414 = getelementptr inbounds i8, ptr %352, i64 -16
  %415 = load i64, ptr %414, align 1
  %416 = getelementptr inbounds i8, ptr %354, i64 -23
  %417 = load i64, ptr %416, align 1
  %418 = xor i64 %417, %415
  %419 = add i64 %344, %415
  %420 = and i64 %418, 4294967295
  %421 = lshr i64 %418, 32
  %422 = mul nuw i64 %420, %421
  %423 = add i64 %345, %422
  %424 = getelementptr inbounds i8, ptr %352, i64 -8
  %425 = load i64, ptr %424, align 1
  %426 = getelementptr inbounds i8, ptr %354, i64 -15
  %427 = load i64, ptr %426, align 1
  %428 = xor i64 %427, %425
  %429 = add i64 %423, %425
  %430 = and i64 %428, 4294967295
  %431 = lshr i64 %428, 32
  %432 = mul nuw i64 %430, %431
  %433 = add i64 %419, %432
  %434 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %435 = mul i64 %1, -7046029288634856825
  %436 = load i64, ptr %434, align 1, !alias.scope !173, !noalias !176
  %437 = xor i64 %436, %369
  %438 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %439 = load i64, ptr %438, align 1, !alias.scope !173, !noalias !176
  %440 = xor i64 %439, %373
  %441 = zext i64 %437 to i128
  %442 = zext i64 %440 to i128
  %443 = mul nuw i128 %442, %441
  %444 = lshr i128 %443, 64
  %445 = xor i128 %444, %443
  %446 = trunc i128 %445 to i64
  %447 = add i64 %435, %446
  %448 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %449 = load i64, ptr %448, align 1, !alias.scope !173, !noalias !176
  %450 = xor i64 %449, %389
  %451 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %452 = load i64, ptr %451, align 1, !alias.scope !173, !noalias !176
  %453 = xor i64 %452, %393
  %454 = zext i64 %450 to i128
  %455 = zext i64 %453 to i128
  %456 = mul nuw i128 %455, %454
  %457 = lshr i128 %456, 64
  %458 = xor i128 %457, %456
  %459 = trunc i128 %458 to i64
  %460 = add i64 %447, %459
  %461 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %462 = load i64, ptr %461, align 1, !alias.scope !173, !noalias !176
  %463 = xor i64 %462, %409
  %464 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %465 = load i64, ptr %464, align 1, !alias.scope !173, !noalias !176
  %466 = xor i64 %465, %413
  %467 = zext i64 %463 to i128
  %468 = zext i64 %466 to i128
  %469 = mul nuw i128 %468, %467
  %470 = lshr i128 %469, 64
  %471 = xor i128 %470, %469
  %472 = trunc i128 %471 to i64
  %473 = add i64 %460, %472
  %474 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %475 = load i64, ptr %474, align 1, !alias.scope !173, !noalias !176
  %476 = xor i64 %475, %429
  %477 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %478 = load i64, ptr %477, align 1, !alias.scope !173, !noalias !176
  %479 = xor i64 %478, %433
  %480 = zext i64 %476 to i128
  %481 = zext i64 %479 to i128
  %482 = mul nuw i128 %481, %480
  %483 = lshr i128 %482, 64
  %484 = xor i128 %483, %482
  %485 = trunc i128 %484 to i64
  %486 = add i64 %473, %485
  %487 = lshr i64 %486, 37
  %488 = xor i64 %487, %486
  %489 = mul i64 %488, 1609587791953885689
  %490 = lshr i64 %489, 32
  %491 = xor i64 %490, %489
  %492 = getelementptr inbounds i8, ptr %354, i64 -75
  %493 = mul i64 %1, -4417276706812531889
  %494 = xor i64 %493, -1
  %495 = load i64, ptr %492, align 1, !alias.scope !178, !noalias !181
  %496 = xor i64 %495, %369
  %497 = getelementptr inbounds i8, ptr %354, i64 -67
  %498 = load i64, ptr %497, align 1, !alias.scope !178, !noalias !181
  %499 = xor i64 %498, %373
  %500 = zext i64 %496 to i128
  %501 = zext i64 %499 to i128
  %502 = mul nuw i128 %501, %500
  %503 = lshr i128 %502, 64
  %504 = xor i128 %503, %502
  %505 = trunc i128 %504 to i64
  %506 = add i64 %505, %494
  %507 = getelementptr inbounds i8, ptr %354, i64 -59
  %508 = load i64, ptr %507, align 1, !alias.scope !178, !noalias !181
  %509 = xor i64 %508, %389
  %510 = getelementptr inbounds i8, ptr %354, i64 -51
  %511 = load i64, ptr %510, align 1, !alias.scope !178, !noalias !181
  %512 = xor i64 %511, %393
  %513 = zext i64 %509 to i128
  %514 = zext i64 %512 to i128
  %515 = mul nuw i128 %514, %513
  %516 = lshr i128 %515, 64
  %517 = xor i128 %516, %515
  %518 = trunc i128 %517 to i64
  %519 = add i64 %506, %518
  %520 = getelementptr inbounds i8, ptr %354, i64 -43
  %521 = load i64, ptr %520, align 1, !alias.scope !178, !noalias !181
  %522 = xor i64 %521, %409
  %523 = getelementptr inbounds i8, ptr %354, i64 -35
  %524 = load i64, ptr %523, align 1, !alias.scope !178, !noalias !181
  %525 = xor i64 %524, %413
  %526 = zext i64 %522 to i128
  %527 = zext i64 %525 to i128
  %528 = mul nuw i128 %527, %526
  %529 = lshr i128 %528, 64
  %530 = xor i128 %529, %528
  %531 = trunc i128 %530 to i64
  %532 = add i64 %519, %531
  %533 = getelementptr inbounds i8, ptr %354, i64 -27
  %534 = load i64, ptr %533, align 1, !alias.scope !178, !noalias !181
  %535 = xor i64 %534, %429
  %536 = getelementptr inbounds i8, ptr %354, i64 -19
  %537 = load i64, ptr %536, align 1, !alias.scope !178, !noalias !181
  %538 = xor i64 %537, %433
  %539 = zext i64 %535 to i128
  %540 = zext i64 %538 to i128
  %541 = mul nuw i128 %540, %539
  %542 = lshr i128 %541, 64
  %543 = xor i128 %542, %541
  %544 = trunc i128 %543 to i64
  %545 = add i64 %532, %544
  %546 = lshr i64 %545, 37
  %547 = xor i64 %546, %545
  %548 = mul i64 %547, 1609587791953885689
  %549 = lshr i64 %548, 32
  %550 = xor i64 %549, %548
  %551 = insertvalue { i64, i64 } poison, i64 %491, 0
  %552 = insertvalue { i64, i64 } %551, i64 %550, 1
  ret { i64, i64 } %552
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #15 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %159

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %50

7:                                                ; preds = %5
  %8 = sub i64 6455697860950631241, %2
  %9 = add i64 %2, -4466874330221494952
  %10 = load i64, ptr %0, align 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %10, %8
  %15 = xor i64 %14, %13
  %16 = zext i64 %15 to i128
  %17 = mul nuw i128 %16, 11400714785074694791
  %18 = trunc i128 %17 to i64
  %19 = lshr i128 %17, 64
  %20 = trunc nuw i128 %19 to i64
  %21 = shl nuw nsw i64 %1, 54
  %22 = add nsw i64 %21, -18014398509481984
  %23 = add i64 %22, %18
  %24 = xor i64 %13, %9
  %25 = and i64 %24, 4294967295
  %26 = mul nuw i64 %25, 2246822518
  %27 = add i64 %26, %24
  %28 = add i64 %27, %20
  %29 = tail call noundef i64 @llvm.bswap.i64(i64 %28)
  %30 = xor i64 %29, %23
  %31 = zext i64 %30 to i128
  %32 = mul nuw i128 %31, 14029467366897019727
  %33 = trunc i128 %32 to i64
  %34 = lshr i128 %32, 64
  %35 = trunc nuw i128 %34 to i64
  %36 = mul i64 %28, -4417276706812531889
  %37 = add i64 %36, %35
  %38 = lshr i64 %33, 37
  %39 = xor i64 %38, %33
  %40 = mul i64 %39, 1609587791953885689
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  %43 = lshr i64 %37, 37
  %44 = xor i64 %43, %37
  %45 = mul i64 %44, 1609587791953885689
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  %48 = insertvalue { i64, i64 } poison, i64 %42, 0
  %49 = insertvalue { i64, i64 } %48, i64 %47, 1
  br label %342

50:                                               ; preds = %5
  %51 = icmp samesign ugt i64 %1, 3
  br i1 %51, label %52, label %92

52:                                               ; preds = %50
  %53 = trunc i64 %2 to i32
  %54 = tail call noundef i32 @llvm.bswap.i32(i32 %53)
  %55 = zext i32 %54 to i64
  %56 = shl nuw i64 %55, 32
  %57 = xor i64 %56, %2
  %58 = load i32, ptr %0, align 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %60 = getelementptr inbounds i8, ptr %59, i64 -4
  %61 = load i32, ptr %60, align 1
  %62 = zext i32 %58 to i64
  %63 = zext i32 %61 to i64
  %64 = shl nuw i64 %63, 32
  %65 = or disjoint i64 %64, %62
  %66 = add i64 %57, -4255862940314790740
  %67 = xor i64 %65, %66
  %68 = shl nuw nsw i64 %1, 2
  %69 = add nuw nsw i64 %68, -7046029288634856825
  %70 = zext i64 %67 to i128
  %71 = zext i64 %69 to i128
  %72 = mul nuw i128 %70, %71
  %73 = trunc i128 %72 to i64
  %74 = lshr i128 %72, 64
  %75 = trunc nuw i128 %74 to i64
  %76 = shl i64 %73, 1
  %77 = add i64 %76, %75
  %78 = lshr i64 %77, 3
  %79 = xor i64 %78, %73
  %80 = lshr i64 %79, 35
  %81 = xor i64 %80, %79
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  %85 = lshr i64 %77, 37
  %86 = xor i64 %85, %77
  %87 = mul i64 %86, 1609587791953885689
  %88 = lshr i64 %87, 32
  %89 = xor i64 %88, %87
  %90 = insertvalue { i64, i64 } poison, i64 %84, 0
  %91 = insertvalue { i64, i64 } %90, i64 %89, 1
  br label %342

92:                                               ; preds = %50
  %93 = icmp eq i64 %1, 0
  br i1 %93, label %138, label %94

94:                                               ; preds = %92
  %95 = load i8, ptr %0, align 1
  %96 = lshr i64 %1, 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  %98 = load i8, ptr %97, align 1
  %99 = getelementptr i8, ptr %0, i64 %1
  %100 = getelementptr i8, ptr %99, i64 -1
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %95 to i32
  %103 = shl nuw nsw i32 %102, 16
  %104 = zext i8 %98 to i32
  %105 = shl nuw i32 %104, 24
  %106 = or disjoint i32 %105, %103
  %107 = zext i8 %101 to i32
  %108 = or disjoint i32 %106, %107
  %109 = trunc nuw nsw i64 %1 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = or disjoint i32 %108, %110
  %112 = tail call noundef i32 @llvm.bswap.i32(i32 %111)
  %113 = tail call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 13)
  %114 = add i64 %2, 2267503259
  %115 = sub i64 808198283, %2
  %116 = zext i32 %111 to i64
  %117 = zext nneg i32 %113 to i64
  %118 = lshr i64 %114, 33
  %119 = xor i64 %118, %116
  %120 = xor i64 %119, %114
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  %127 = lshr i64 %115, 33
  %128 = xor i64 %127, %117
  %129 = xor i64 %128, %115
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  %136 = insertvalue { i64, i64 } poison, i64 %126, 0
  %137 = insertvalue { i64, i64 } %136, i64 %135, 1
  br label %342

138:                                              ; preds = %92
  %139 = xor i64 %2, 7507096552062056628
  %140 = lshr i64 %139, 33
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, -4417276706812531889
  %143 = lshr i64 %142, 29
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587929392839161
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  %148 = xor i64 %2, -7613947547284439735
  %149 = lshr i64 %148, 33
  %150 = xor i64 %149, %148
  %151 = mul i64 %150, -4417276706812531889
  %152 = lshr i64 %151, 29
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, 1609587929392839161
  %155 = lshr i64 %154, 32
  %156 = xor i64 %155, %154
  %157 = insertvalue { i64, i64 } poison, i64 %147, 0
  %158 = insertvalue { i64, i64 } %157, i64 %156, 1
  br label %342

159:                                              ; preds = %3
  %160 = icmp ult i64 %1, 129
  br i1 %160, label %161, label %336

161:                                              ; preds = %159
  %162 = mul i64 %1, -7046029288634856825
  %163 = icmp samesign ugt i64 %1, 32
  br i1 %163, label %164, label %279

164:                                              ; preds = %161
  %165 = icmp samesign ugt i64 %1, 64
  br i1 %165, label %166, label %241

166:                                              ; preds = %164
  %167 = icmp samesign ugt i64 %1, 96
  br i1 %167, label %168, label %203

168:                                              ; preds = %166
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %171 = getelementptr inbounds i8, ptr %170, i64 -64
  %172 = load i64, ptr %169, align 1
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %174 = load i64, ptr %173, align 1
  %175 = add i64 %2, 4554437623014685352
  %176 = xor i64 %172, %175
  %177 = sub i64 2111919702937427193, %2
  %178 = xor i64 %174, %177
  %179 = zext i64 %176 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %162, %184
  %186 = load i64, ptr %171, align 1
  %187 = getelementptr inbounds i8, ptr %170, i64 -56
  %188 = load i64, ptr %187, align 1
  %189 = add i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = add i64 %2, 3556072174620004746
  %192 = xor i64 %186, %191
  %193 = sub i64 7238261902898274248, %2
  %194 = xor i64 %188, %193
  %195 = zext i64 %192 to i128
  %196 = zext i64 %194 to i128
  %197 = mul nuw i128 %196, %195
  %198 = lshr i128 %197, 64
  %199 = xor i128 %198, %197
  %200 = trunc i128 %199 to i64
  %201 = add i64 %174, %172
  %202 = xor i64 %201, %200
  br label %203

203:                                              ; preds = %168, %166
  %204 = phi i64 [ %190, %168 ], [ %162, %166 ]
  %205 = phi i64 [ %202, %168 ], [ 0, %166 ]
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %208 = getelementptr inbounds i8, ptr %207, i64 -48
  %209 = load i64, ptr %206, align 1
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %211 = load i64, ptr %210, align 1
  %212 = add i64 %2, -3818837453329782724
  %213 = xor i64 %209, %212
  %214 = sub i64 -6688317018830679928, %2
  %215 = xor i64 %211, %214
  %216 = zext i64 %213 to i128
  %217 = zext i64 %215 to i128
  %218 = mul nuw i128 %217, %216
  %219 = lshr i128 %218, 64
  %220 = xor i128 %219, %218
  %221 = trunc i128 %220 to i64
  %222 = add i64 %204, %221
  %223 = load i64, ptr %208, align 1
  %224 = getelementptr inbounds i8, ptr %207, i64 -40
  %225 = load i64, ptr %224, align 1
  %226 = add i64 %225, %223
  %227 = xor i64 %222, %226
  %228 = add i64 %2, 5690594596133299313
  %229 = xor i64 %223, %228
  %230 = sub i64 -2833645246901970632, %2
  %231 = xor i64 %225, %230
  %232 = zext i64 %229 to i128
  %233 = zext i64 %231 to i128
  %234 = mul nuw i128 %233, %232
  %235 = lshr i128 %234, 64
  %236 = xor i128 %235, %234
  %237 = trunc i128 %236 to i64
  %238 = add i64 %205, %237
  %239 = add i64 %211, %209
  %240 = xor i64 %238, %239
  br label %241

241:                                              ; preds = %203, %164
  %242 = phi i64 [ %227, %203 ], [ %162, %164 ]
  %243 = phi i64 [ %240, %203 ], [ 0, %164 ]
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %245 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %246 = getelementptr inbounds i8, ptr %245, i64 -32
  %247 = load i64, ptr %244, align 1
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %249 = load i64, ptr %248, align 1
  %250 = add i64 %2, 8711581037947681227
  %251 = xor i64 %247, %250
  %252 = sub i64 2410270004345854594, %2
  %253 = xor i64 %249, %252
  %254 = zext i64 %251 to i128
  %255 = zext i64 %253 to i128
  %256 = mul nuw i128 %255, %254
  %257 = lshr i128 %256, 64
  %258 = xor i128 %257, %256
  %259 = trunc i128 %258 to i64
  %260 = add i64 %242, %259
  %261 = load i64, ptr %246, align 1
  %262 = getelementptr inbounds i8, ptr %245, i64 -24
  %263 = load i64, ptr %262, align 1
  %264 = add i64 %263, %261
  %265 = xor i64 %260, %264
  %266 = add i64 %2, -8204357891075471176
  %267 = xor i64 %261, %266
  %268 = sub i64 5487137525590930912, %2
  %269 = xor i64 %263, %268
  %270 = zext i64 %267 to i128
  %271 = zext i64 %269 to i128
  %272 = mul nuw i128 %271, %270
  %273 = lshr i128 %272, 64
  %274 = xor i128 %273, %272
  %275 = trunc i128 %274 to i64
  %276 = add i64 %243, %275
  %277 = add i64 %249, %247
  %278 = xor i64 %276, %277
  br label %279

279:                                              ; preds = %161, %241
  %280 = phi i64 [ %265, %241 ], [ %162, %161 ]
  %281 = phi i64 [ %278, %241 ], [ 0, %161 ]
  %282 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %283 = getelementptr inbounds i8, ptr %282, i64 -16
  %284 = load i64, ptr %0, align 1
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %286 = load i64, ptr %285, align 1
  %287 = add i64 %2, -4734510112055689544
  %288 = xor i64 %284, %287
  %289 = sub i64 2066345149520216444, %2
  %290 = xor i64 %286, %289
  %291 = zext i64 %288 to i128
  %292 = zext i64 %290 to i128
  %293 = mul nuw i128 %292, %291
  %294 = lshr i128 %293, 64
  %295 = xor i128 %294, %293
  %296 = trunc i128 %295 to i64
  %297 = add i64 %280, %296
  %298 = load i64, ptr %283, align 1
  %299 = getelementptr inbounds i8, ptr %282, i64 -8
  %300 = load i64, ptr %299, align 1
  %301 = add i64 %300, %298
  %302 = xor i64 %297, %301
  %303 = add i64 %2, -2623469361688619810
  %304 = xor i64 %298, %303
  %305 = sub i64 2262974939099578482, %2
  %306 = xor i64 %300, %305
  %307 = zext i64 %304 to i128
  %308 = zext i64 %306 to i128
  %309 = mul nuw i128 %308, %307
  %310 = lshr i128 %309, 64
  %311 = xor i128 %310, %309
  %312 = trunc i128 %311 to i64
  %313 = add i64 %281, %312
  %314 = add i64 %286, %284
  %315 = xor i64 %313, %314
  %316 = add i64 %315, %302
  %317 = mul i64 %302, -7046029288634856825
  %318 = mul i64 %315, -8796714831421723037
  %319 = sub i64 %1, %2
  %320 = mul i64 %319, -4417276706812531889
  %321 = add i64 %317, %320
  %322 = add i64 %321, %318
  %323 = lshr i64 %316, 37
  %324 = xor i64 %323, %316
  %325 = mul i64 %324, 1609587791953885689
  %326 = lshr i64 %325, 32
  %327 = xor i64 %326, %325
  %328 = lshr i64 %322, 37
  %329 = xor i64 %328, %322
  %330 = mul i64 %329, 1609587791953885689
  %331 = lshr i64 %330, 32
  %332 = xor i64 %331, %330
  %333 = sub i64 0, %332
  %334 = insertvalue { i64, i64 } poison, i64 %327, 0
  %335 = insertvalue { i64, i64 } %334, i64 %333, 1
  br label %342

336:                                              ; preds = %159
  %337 = icmp ult i64 %1, 241
  br i1 %337, label %338, label %340

338:                                              ; preds = %336
  %339 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2)
  br label %342

340:                                              ; preds = %336
  %341 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #27
  br label %342

342:                                              ; preds = %138, %94, %52, %7, %279, %338, %340
  %343 = phi { i64, i64 } [ %335, %279 ], [ %339, %338 ], [ %341, %340 ], [ %49, %7 ], [ %91, %52 ], [ %137, %94 ], [ %158, %138 ]
  ret { i64, i64 } %343
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #16 {
  %4 = alloca [192 x i8], align 8
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %421

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %153, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %118
  %12 = phi i64 [ 2654435761, %9 ], [ %150, %118 ]
  %13 = phi i64 [ 2870177450012600261, %9 ], [ %146, %118 ]
  %14 = phi i64 [ 2246822519, %9 ], [ %142, %118 ]
  %15 = phi i64 [ -8796714831421723037, %9 ], [ %138, %118 ]
  %16 = phi i64 [ 1609587929392839161, %9 ], [ %134, %118 ]
  %17 = phi i64 [ -4417276706812531889, %9 ], [ %130, %118 ]
  %18 = phi i64 [ -7046029288634856825, %9 ], [ %126, %118 ]
  %19 = phi i64 [ 3266489917, %9 ], [ %122, %118 ]
  %20 = phi i64 [ 0, %9 ], [ %151, %118 ]
  %21 = shl i64 %20, 10
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 %21
  br label %23

23:                                               ; preds = %11, %23
  %24 = phi i64 [ %12, %11 ], [ %115, %23 ]
  %25 = phi i64 [ %13, %11 ], [ %111, %23 ]
  %26 = phi i64 [ %14, %11 ], [ %95, %23 ]
  %27 = phi i64 [ %15, %11 ], [ %91, %23 ]
  %28 = phi i64 [ %16, %11 ], [ %75, %23 ]
  %29 = phi i64 [ %17, %11 ], [ %71, %23 ]
  %30 = phi i64 [ %18, %11 ], [ %55, %23 ]
  %31 = phi i64 [ %19, %11 ], [ %51, %23 ]
  %32 = phi i64 [ 0, %11 ], [ %116, %23 ]
  %33 = shl nuw nsw i64 %32, 6
  %34 = getelementptr inbounds nuw i8, ptr %22, i64 %33
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %35, i32 0, i32 3, i32 1), !noalias !183
  %36 = shl nuw nsw i64 %32, 3
  %37 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %36
  %38 = load i64, ptr %34, align 1
  %39 = load i64, ptr %37, align 8
  %40 = xor i64 %39, %38
  %41 = add i64 %30, %38
  %42 = and i64 %40, 4294967295
  %43 = lshr i64 %40, 32
  %44 = mul nuw i64 %42, %43
  %45 = add i64 %31, %44
  %46 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %49 = load i64, ptr %48, align 8
  %50 = xor i64 %49, %47
  %51 = add i64 %45, %47
  %52 = and i64 %50, 4294967295
  %53 = lshr i64 %50, 32
  %54 = mul nuw i64 %52, %53
  %55 = add i64 %41, %54
  %56 = getelementptr inbounds nuw i8, ptr %34, i64 16
  %57 = load i64, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %59 = load i64, ptr %58, align 8
  %60 = xor i64 %59, %57
  %61 = add i64 %28, %57
  %62 = and i64 %60, 4294967295
  %63 = lshr i64 %60, 32
  %64 = mul nuw i64 %62, %63
  %65 = add i64 %29, %64
  %66 = getelementptr inbounds nuw i8, ptr %34, i64 24
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %69 = load i64, ptr %68, align 8
  %70 = xor i64 %69, %67
  %71 = add i64 %65, %67
  %72 = and i64 %70, 4294967295
  %73 = lshr i64 %70, 32
  %74 = mul nuw i64 %72, %73
  %75 = add i64 %61, %74
  %76 = getelementptr inbounds nuw i8, ptr %34, i64 32
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %79 = load i64, ptr %78, align 8
  %80 = xor i64 %79, %77
  %81 = add i64 %26, %77
  %82 = and i64 %80, 4294967295
  %83 = lshr i64 %80, 32
  %84 = mul nuw i64 %82, %83
  %85 = add i64 %27, %84
  %86 = getelementptr inbounds nuw i8, ptr %34, i64 40
  %87 = load i64, ptr %86, align 1
  %88 = getelementptr inbounds nuw i8, ptr %37, i64 40
  %89 = load i64, ptr %88, align 8
  %90 = xor i64 %89, %87
  %91 = add i64 %85, %87
  %92 = and i64 %90, 4294967295
  %93 = lshr i64 %90, 32
  %94 = mul nuw i64 %92, %93
  %95 = add i64 %81, %94
  %96 = getelementptr inbounds nuw i8, ptr %34, i64 48
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %37, i64 48
  %99 = load i64, ptr %98, align 8
  %100 = xor i64 %99, %97
  %101 = add i64 %24, %97
  %102 = and i64 %100, 4294967295
  %103 = lshr i64 %100, 32
  %104 = mul nuw i64 %102, %103
  %105 = add i64 %25, %104
  %106 = getelementptr inbounds nuw i8, ptr %34, i64 56
  %107 = load i64, ptr %106, align 1
  %108 = getelementptr inbounds nuw i8, ptr %37, i64 56
  %109 = load i64, ptr %108, align 8
  %110 = xor i64 %109, %107
  %111 = add i64 %105, %107
  %112 = and i64 %110, 4294967295
  %113 = lshr i64 %110, 32
  %114 = mul nuw i64 %112, %113
  %115 = add i64 %101, %114
  %116 = add nuw nsw i64 %32, 1
  %117 = icmp eq i64 %116, 16
  br i1 %117, label %118, label %23

118:                                              ; preds = %23
  %119 = lshr i64 %51, 47
  %120 = xor i64 %119, %51
  %121 = xor i64 %120, -4329134394285701654
  %122 = mul i64 %121, 2654435761
  %123 = lshr i64 %55, 47
  %124 = xor i64 %123, %55
  %125 = xor i64 %124, -1485321483350670907
  %126 = mul i64 %125, 2654435761
  %127 = lshr i64 %71, 47
  %128 = xor i64 %127, %71
  %129 = xor i64 %128, 5321830579834785047
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %75, 47
  %132 = xor i64 %131, %75
  %133 = xor i64 %132, -7032137544937171245
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %91, 47
  %136 = xor i64 %135, %91
  %137 = xor i64 %136, -242834301215959509
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %95, 47
  %140 = xor i64 %139, %95
  %141 = xor i64 %140, -3588858202114426737
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %111, 47
  %144 = xor i64 %143, %111
  %145 = xor i64 %144, 2883454493032893253
  %146 = mul i64 %145, 2654435761
  %147 = lshr i64 %115, 47
  %148 = xor i64 %147, %115
  %149 = xor i64 %148, 9097354517224871855
  %150 = mul i64 %149, 2654435761
  %151 = add nuw nsw i64 %20, 1
  %152 = icmp eq i64 %151, %10
  br i1 %152, label %153, label %11

153:                                              ; preds = %118, %6
  %154 = phi i64 [ 2654435761, %6 ], [ %150, %118 ]
  %155 = phi i64 [ 2870177450012600261, %6 ], [ %146, %118 ]
  %156 = phi i64 [ 2246822519, %6 ], [ %142, %118 ]
  %157 = phi i64 [ -8796714831421723037, %6 ], [ %138, %118 ]
  %158 = phi i64 [ 1609587929392839161, %6 ], [ %134, %118 ]
  %159 = phi i64 [ -4417276706812531889, %6 ], [ %130, %118 ]
  %160 = phi i64 [ -7046029288634856825, %6 ], [ %126, %118 ]
  %161 = phi i64 [ 3266489917, %6 ], [ %122, %118 ]
  %162 = and i64 %7, -1024
  %163 = lshr i64 %7, 6
  %164 = and i64 %163, 15
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 %162
  %166 = icmp eq i64 %164, 0
  br i1 %166, label %262, label %167

167:                                              ; preds = %153, %167
  %168 = phi i64 [ %259, %167 ], [ %154, %153 ]
  %169 = phi i64 [ %255, %167 ], [ %155, %153 ]
  %170 = phi i64 [ %239, %167 ], [ %156, %153 ]
  %171 = phi i64 [ %235, %167 ], [ %157, %153 ]
  %172 = phi i64 [ %219, %167 ], [ %158, %153 ]
  %173 = phi i64 [ %215, %167 ], [ %159, %153 ]
  %174 = phi i64 [ %199, %167 ], [ %160, %153 ]
  %175 = phi i64 [ %195, %167 ], [ %161, %153 ]
  %176 = phi i64 [ %260, %167 ], [ 0, %153 ]
  %177 = shl i64 %176, 6
  %178 = getelementptr inbounds nuw i8, ptr %165, i64 %177
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %179, i32 0, i32 3, i32 1), !noalias !186
  %180 = shl i64 %176, 3
  %181 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %180
  %182 = load i64, ptr %178, align 1
  %183 = load i64, ptr %181, align 8
  %184 = xor i64 %183, %182
  %185 = add i64 %174, %182
  %186 = and i64 %184, 4294967295
  %187 = lshr i64 %184, 32
  %188 = mul nuw i64 %186, %187
  %189 = add i64 %175, %188
  %190 = getelementptr inbounds nuw i8, ptr %178, i64 8
  %191 = load i64, ptr %190, align 1
  %192 = getelementptr inbounds nuw i8, ptr %181, i64 8
  %193 = load i64, ptr %192, align 8
  %194 = xor i64 %193, %191
  %195 = add i64 %189, %191
  %196 = and i64 %194, 4294967295
  %197 = lshr i64 %194, 32
  %198 = mul nuw i64 %196, %197
  %199 = add i64 %185, %198
  %200 = getelementptr inbounds nuw i8, ptr %178, i64 16
  %201 = load i64, ptr %200, align 1
  %202 = getelementptr inbounds nuw i8, ptr %181, i64 16
  %203 = load i64, ptr %202, align 8
  %204 = xor i64 %203, %201
  %205 = add i64 %172, %201
  %206 = and i64 %204, 4294967295
  %207 = lshr i64 %204, 32
  %208 = mul nuw i64 %206, %207
  %209 = add i64 %173, %208
  %210 = getelementptr inbounds nuw i8, ptr %178, i64 24
  %211 = load i64, ptr %210, align 1
  %212 = getelementptr inbounds nuw i8, ptr %181, i64 24
  %213 = load i64, ptr %212, align 8
  %214 = xor i64 %213, %211
  %215 = add i64 %209, %211
  %216 = and i64 %214, 4294967295
  %217 = lshr i64 %214, 32
  %218 = mul nuw i64 %216, %217
  %219 = add i64 %205, %218
  %220 = getelementptr inbounds nuw i8, ptr %178, i64 32
  %221 = load i64, ptr %220, align 1
  %222 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %223 = load i64, ptr %222, align 8
  %224 = xor i64 %223, %221
  %225 = add i64 %170, %221
  %226 = and i64 %224, 4294967295
  %227 = lshr i64 %224, 32
  %228 = mul nuw i64 %226, %227
  %229 = add i64 %171, %228
  %230 = getelementptr inbounds nuw i8, ptr %178, i64 40
  %231 = load i64, ptr %230, align 1
  %232 = getelementptr inbounds nuw i8, ptr %181, i64 40
  %233 = load i64, ptr %232, align 8
  %234 = xor i64 %233, %231
  %235 = add i64 %229, %231
  %236 = and i64 %234, 4294967295
  %237 = lshr i64 %234, 32
  %238 = mul nuw i64 %236, %237
  %239 = add i64 %225, %238
  %240 = getelementptr inbounds nuw i8, ptr %178, i64 48
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %181, i64 48
  %243 = load i64, ptr %242, align 8
  %244 = xor i64 %243, %241
  %245 = add i64 %168, %241
  %246 = and i64 %244, 4294967295
  %247 = lshr i64 %244, 32
  %248 = mul nuw i64 %246, %247
  %249 = add i64 %169, %248
  %250 = getelementptr inbounds nuw i8, ptr %178, i64 56
  %251 = load i64, ptr %250, align 1
  %252 = getelementptr inbounds nuw i8, ptr %181, i64 56
  %253 = load i64, ptr %252, align 8
  %254 = xor i64 %253, %251
  %255 = add i64 %249, %251
  %256 = and i64 %254, 4294967295
  %257 = lshr i64 %254, 32
  %258 = mul nuw i64 %256, %257
  %259 = add i64 %245, %258
  %260 = add nuw nsw i64 %176, 1
  %261 = icmp eq i64 %260, %164
  br i1 %261, label %262, label %167

262:                                              ; preds = %167, %153
  %263 = phi i64 [ %154, %153 ], [ %259, %167 ]
  %264 = phi i64 [ %155, %153 ], [ %255, %167 ]
  %265 = phi i64 [ %156, %153 ], [ %239, %167 ]
  %266 = phi i64 [ %157, %153 ], [ %235, %167 ]
  %267 = phi i64 [ %158, %153 ], [ %219, %167 ]
  %268 = phi i64 [ %159, %153 ], [ %215, %167 ]
  %269 = phi i64 [ %160, %153 ], [ %199, %167 ]
  %270 = phi i64 [ %161, %153 ], [ %195, %167 ]
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %272 = getelementptr inbounds i8, ptr %271, i64 -64
  %273 = load i64, ptr %272, align 1
  %274 = xor i64 %273, -1556992608276218209
  %275 = add i64 %269, %273
  %276 = and i64 %274, 4294967295
  %277 = lshr i64 %274, 32
  %278 = mul nuw i64 %276, %277
  %279 = add i64 %270, %278
  %280 = getelementptr inbounds i8, ptr %271, i64 -56
  %281 = load i64, ptr %280, align 1
  %282 = xor i64 %281, -4196251135427498811
  %283 = add i64 %279, %281
  %284 = and i64 %282, 4294967295
  %285 = lshr i64 %282, 32
  %286 = mul nuw i64 %284, %285
  %287 = add i64 %275, %286
  %288 = getelementptr inbounds i8, ptr %271, i64 -48
  %289 = load i64, ptr %288, align 1
  %290 = xor i64 %289, 1723580219865931905
  %291 = add i64 %267, %289
  %292 = and i64 %290, 4294967295
  %293 = lshr i64 %290, 32
  %294 = mul nuw i64 %292, %293
  %295 = add i64 %268, %294
  %296 = getelementptr inbounds i8, ptr %271, i64 -40
  %297 = load i64, ptr %296, align 1
  %298 = xor i64 %297, -3221803331004277491
  %299 = add i64 %295, %297
  %300 = and i64 %298, 4294967295
  %301 = lshr i64 %298, 32
  %302 = mul nuw i64 %300, %301
  %303 = add i64 %291, %302
  %304 = getelementptr inbounds i8, ptr %271, i64 -32
  %305 = load i64, ptr %304, align 1
  %306 = xor i64 %305, 3143064850383918358
  %307 = add i64 %265, %305
  %308 = and i64 %306, 4294967295
  %309 = lshr i64 %306, 32
  %310 = mul nuw i64 %308, %309
  %311 = add i64 %266, %310
  %312 = getelementptr inbounds i8, ptr %271, i64 -24
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, -8071399103737053674
  %315 = add i64 %311, %313
  %316 = and i64 %314, 4294967295
  %317 = lshr i64 %314, 32
  %318 = mul nuw i64 %316, %317
  %319 = add i64 %307, %318
  %320 = getelementptr inbounds i8, ptr %271, i64 -16
  %321 = load i64, ptr %320, align 1
  %322 = xor i64 %321, 5030012605302946040
  %323 = add i64 %263, %321
  %324 = and i64 %322, 4294967295
  %325 = lshr i64 %322, 32
  %326 = mul nuw i64 %324, %325
  %327 = add i64 %264, %326
  %328 = getelementptr inbounds i8, ptr %271, i64 -8
  %329 = load i64, ptr %328, align 1
  %330 = xor i64 %329, -5825401622958753077
  %331 = add i64 %327, %329
  %332 = and i64 %330, 4294967295
  %333 = lshr i64 %330, 32
  %334 = mul nuw i64 %332, %333
  %335 = add i64 %323, %334
  %336 = mul i64 %1, -7046029288634856825
  %337 = xor i64 %283, 7914194659941938988
  %338 = xor i64 %287, -6611157965513653271
  %339 = zext i64 %337 to i128
  %340 = zext i64 %338 to i128
  %341 = mul nuw i128 %340, %339
  %342 = lshr i128 %341, 64
  %343 = xor i128 %342, %341
  %344 = trunc i128 %343 to i64
  %345 = add i64 %336, %344
  %346 = xor i64 %299, -1839215637059881052
  %347 = xor i64 %303, -3433288310154277810
  %348 = zext i64 %346 to i128
  %349 = zext i64 %347 to i128
  %350 = mul nuw i128 %349, %348
  %351 = lshr i128 %350, 64
  %352 = xor i128 %351, %350
  %353 = trunc i128 %352 to i64
  %354 = add i64 %345, %353
  %355 = xor i64 %315, 5046485836271438973
  %356 = xor i64 %319, -8055285457383852172
  %357 = zext i64 %355 to i128
  %358 = zext i64 %356 to i128
  %359 = mul nuw i128 %358, %357
  %360 = lshr i128 %359, 64
  %361 = xor i128 %360, %359
  %362 = trunc i128 %361 to i64
  %363 = add i64 %354, %362
  %364 = xor i64 %331, 5920048007935066598
  %365 = xor i64 %335, 7336514198459093435
  %366 = zext i64 %364 to i128
  %367 = zext i64 %365 to i128
  %368 = mul nuw i128 %367, %366
  %369 = lshr i128 %368, 64
  %370 = xor i128 %369, %368
  %371 = trunc i128 %370 to i64
  %372 = add i64 %363, %371
  %373 = lshr i64 %372, 37
  %374 = xor i64 %373, %372
  %375 = mul i64 %374, 1609587791953885689
  %376 = lshr i64 %375, 32
  %377 = xor i64 %376, %375
  %378 = mul i64 %1, -4417276706812531889
  %379 = xor i64 %378, -1
  %380 = xor i64 %283, -2753530472436770380
  %381 = xor i64 %287, 3784058077962335096
  %382 = zext i64 %380 to i128
  %383 = zext i64 %381 to i128
  %384 = mul nuw i128 %383, %382
  %385 = lshr i128 %384, 64
  %386 = xor i128 %385, %384
  %387 = trunc i128 %386 to i64
  %388 = add i64 %387, %379
  %389 = xor i64 %299, -360392965937173549
  %390 = xor i64 %303, -5237161843349560557
  %391 = zext i64 %389 to i128
  %392 = zext i64 %390 to i128
  %393 = mul nuw i128 %392, %391
  %394 = lshr i128 %393, 64
  %395 = xor i128 %394, %393
  %396 = trunc i128 %395 to i64
  %397 = add i64 %388, %396
  %398 = xor i64 %315, 2965150961192524528
  %399 = xor i64 %319, 9032178055121889492
  %400 = zext i64 %398 to i128
  %401 = zext i64 %399 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %397, %405
  %407 = xor i64 %331, 8850058120466833735
  %408 = xor i64 %335, -7669846995664752176
  %409 = zext i64 %407 to i128
  %410 = zext i64 %408 to i128
  %411 = mul nuw i128 %410, %409
  %412 = lshr i128 %411, 64
  %413 = xor i128 %412, %411
  %414 = trunc i128 %413 to i64
  %415 = add i64 %406, %414
  %416 = lshr i64 %415, 37
  %417 = xor i64 %416, %415
  %418 = mul i64 %417, 1609587791953885689
  %419 = lshr i64 %418, 32
  %420 = xor i64 %419, %418
  br label %931

421:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #27, !noalias !189
  %422 = add i64 %2, -4734510112055689544
  %423 = sub i64 2066345149520216444, %2
  store i64 %422, ptr %4, align 8, !noalias !189
  %424 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %423, ptr %424, align 8, !noalias !189
  %425 = add i64 %2, -2623469361688619810
  %426 = sub i64 2262974939099578482, %2
  %427 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %425, ptr %427, align 8, !noalias !189
  %428 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %426, ptr %428, align 8, !noalias !189
  %429 = add i64 %2, 8711581037947681227
  %430 = sub i64 2410270004345854594, %2
  %431 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %429, ptr %431, align 8, !noalias !189
  %432 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %430, ptr %432, align 8, !noalias !189
  %433 = add i64 %2, -8204357891075471176
  %434 = sub i64 5487137525590930912, %2
  %435 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %433, ptr %435, align 8, !noalias !189
  %436 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %434, ptr %436, align 8, !noalias !189
  %437 = add i64 %2, -3818837453329782724
  %438 = sub i64 -6688317018830679928, %2
  %439 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %437, ptr %439, align 8, !noalias !189
  %440 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %438, ptr %440, align 8, !noalias !189
  %441 = add i64 %2, 5690594596133299313
  %442 = sub i64 -2833645246901970632, %2
  %443 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %441, ptr %443, align 8, !noalias !189
  %444 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %442, ptr %444, align 8, !noalias !189
  %445 = add i64 %2, 4554437623014685352
  %446 = sub i64 2111919702937427193, %2
  %447 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %445, ptr %447, align 8, !noalias !189
  %448 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %446, ptr %448, align 8, !noalias !189
  %449 = add i64 %2, 3556072174620004746
  %450 = sub i64 7238261902898274248, %2
  %451 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 %449, ptr %451, align 8, !noalias !189
  %452 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %450, ptr %452, align 8, !noalias !189
  %453 = add i64 %2, -4329134394285701654
  %454 = sub i64 -1485321483350670907, %2
  %455 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i64 %453, ptr %455, align 8, !noalias !189
  %456 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %454, ptr %456, align 8, !noalias !189
  %457 = add i64 %2, 5321830579834785047
  %458 = sub i64 -7032137544937171245, %2
  %459 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i64 %457, ptr %459, align 8, !noalias !189
  %460 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i64 %458, ptr %460, align 8, !noalias !189
  %461 = add i64 %2, -242834301215959509
  %462 = sub i64 -3588858202114426737, %2
  %463 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i64 %461, ptr %463, align 8, !noalias !189
  %464 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 %462, ptr %464, align 8, !noalias !189
  %465 = add i64 %2, 2883454493032893253
  %466 = sub i64 9097354517224871855, %2
  %467 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i64 %465, ptr %467, align 8, !noalias !189
  %468 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i64 %466, ptr %468, align 8, !noalias !189
  %469 = add i64 %1, -1
  %470 = icmp ult i64 %469, 1024
  br i1 %470, label %615, label %471

471:                                              ; preds = %421
  %472 = lshr i64 %469, 10
  br label %473

473:                                              ; preds = %471, %580
  %474 = phi i64 [ 2654435761, %471 ], [ %612, %580 ]
  %475 = phi i64 [ 2870177450012600261, %471 ], [ %608, %580 ]
  %476 = phi i64 [ 2246822519, %471 ], [ %604, %580 ]
  %477 = phi i64 [ -8796714831421723037, %471 ], [ %600, %580 ]
  %478 = phi i64 [ 1609587929392839161, %471 ], [ %596, %580 ]
  %479 = phi i64 [ -4417276706812531889, %471 ], [ %592, %580 ]
  %480 = phi i64 [ -7046029288634856825, %471 ], [ %588, %580 ]
  %481 = phi i64 [ 3266489917, %471 ], [ %584, %580 ]
  %482 = phi i64 [ 0, %471 ], [ %613, %580 ]
  %483 = shl i64 %482, 10
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 %483
  br label %485

485:                                              ; preds = %473, %485
  %486 = phi i64 [ %474, %473 ], [ %577, %485 ]
  %487 = phi i64 [ %475, %473 ], [ %573, %485 ]
  %488 = phi i64 [ %476, %473 ], [ %557, %485 ]
  %489 = phi i64 [ %477, %473 ], [ %553, %485 ]
  %490 = phi i64 [ %478, %473 ], [ %537, %485 ]
  %491 = phi i64 [ %479, %473 ], [ %533, %485 ]
  %492 = phi i64 [ %480, %473 ], [ %517, %485 ]
  %493 = phi i64 [ %481, %473 ], [ %513, %485 ]
  %494 = phi i64 [ 0, %473 ], [ %578, %485 ]
  %495 = shl nuw nsw i64 %494, 6
  %496 = getelementptr inbounds nuw i8, ptr %484, i64 %495
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %497, i32 0, i32 3, i32 1), !noalias !192
  %498 = shl nuw nsw i64 %494, 3
  %499 = getelementptr inbounds nuw i8, ptr %4, i64 %498
  %500 = load i64, ptr %496, align 1
  %501 = load i64, ptr %499, align 8
  %502 = xor i64 %501, %500
  %503 = add i64 %492, %500
  %504 = and i64 %502, 4294967295
  %505 = lshr i64 %502, 32
  %506 = mul nuw i64 %504, %505
  %507 = add i64 %493, %506
  %508 = getelementptr inbounds nuw i8, ptr %496, i64 8
  %509 = load i64, ptr %508, align 1
  %510 = getelementptr inbounds nuw i8, ptr %499, i64 8
  %511 = load i64, ptr %510, align 8
  %512 = xor i64 %511, %509
  %513 = add i64 %507, %509
  %514 = and i64 %512, 4294967295
  %515 = lshr i64 %512, 32
  %516 = mul nuw i64 %514, %515
  %517 = add i64 %503, %516
  %518 = getelementptr inbounds nuw i8, ptr %496, i64 16
  %519 = load i64, ptr %518, align 1
  %520 = getelementptr inbounds nuw i8, ptr %499, i64 16
  %521 = load i64, ptr %520, align 8
  %522 = xor i64 %521, %519
  %523 = add i64 %490, %519
  %524 = and i64 %522, 4294967295
  %525 = lshr i64 %522, 32
  %526 = mul nuw i64 %524, %525
  %527 = add i64 %491, %526
  %528 = getelementptr inbounds nuw i8, ptr %496, i64 24
  %529 = load i64, ptr %528, align 1
  %530 = getelementptr inbounds nuw i8, ptr %499, i64 24
  %531 = load i64, ptr %530, align 8
  %532 = xor i64 %531, %529
  %533 = add i64 %527, %529
  %534 = and i64 %532, 4294967295
  %535 = lshr i64 %532, 32
  %536 = mul nuw i64 %534, %535
  %537 = add i64 %523, %536
  %538 = getelementptr inbounds nuw i8, ptr %496, i64 32
  %539 = load i64, ptr %538, align 1
  %540 = getelementptr inbounds nuw i8, ptr %499, i64 32
  %541 = load i64, ptr %540, align 8
  %542 = xor i64 %541, %539
  %543 = add i64 %488, %539
  %544 = and i64 %542, 4294967295
  %545 = lshr i64 %542, 32
  %546 = mul nuw i64 %544, %545
  %547 = add i64 %489, %546
  %548 = getelementptr inbounds nuw i8, ptr %496, i64 40
  %549 = load i64, ptr %548, align 1
  %550 = getelementptr inbounds nuw i8, ptr %499, i64 40
  %551 = load i64, ptr %550, align 8
  %552 = xor i64 %551, %549
  %553 = add i64 %547, %549
  %554 = and i64 %552, 4294967295
  %555 = lshr i64 %552, 32
  %556 = mul nuw i64 %554, %555
  %557 = add i64 %543, %556
  %558 = getelementptr inbounds nuw i8, ptr %496, i64 48
  %559 = load i64, ptr %558, align 1
  %560 = getelementptr inbounds nuw i8, ptr %499, i64 48
  %561 = load i64, ptr %560, align 8
  %562 = xor i64 %561, %559
  %563 = add i64 %486, %559
  %564 = and i64 %562, 4294967295
  %565 = lshr i64 %562, 32
  %566 = mul nuw i64 %564, %565
  %567 = add i64 %487, %566
  %568 = getelementptr inbounds nuw i8, ptr %496, i64 56
  %569 = load i64, ptr %568, align 1
  %570 = getelementptr inbounds nuw i8, ptr %499, i64 56
  %571 = load i64, ptr %570, align 8
  %572 = xor i64 %571, %569
  %573 = add i64 %567, %569
  %574 = and i64 %572, 4294967295
  %575 = lshr i64 %572, 32
  %576 = mul nuw i64 %574, %575
  %577 = add i64 %563, %576
  %578 = add nuw nsw i64 %494, 1
  %579 = icmp eq i64 %578, 16
  br i1 %579, label %580, label %485

580:                                              ; preds = %485
  %581 = lshr i64 %513, 47
  %582 = xor i64 %453, %581
  %583 = xor i64 %582, %513
  %584 = mul i64 %583, 2654435761
  %585 = lshr i64 %517, 47
  %586 = xor i64 %454, %585
  %587 = xor i64 %586, %517
  %588 = mul i64 %587, 2654435761
  %589 = lshr i64 %533, 47
  %590 = xor i64 %457, %589
  %591 = xor i64 %590, %533
  %592 = mul i64 %591, 2654435761
  %593 = lshr i64 %537, 47
  %594 = xor i64 %458, %593
  %595 = xor i64 %594, %537
  %596 = mul i64 %595, 2654435761
  %597 = lshr i64 %553, 47
  %598 = xor i64 %461, %597
  %599 = xor i64 %598, %553
  %600 = mul i64 %599, 2654435761
  %601 = lshr i64 %557, 47
  %602 = xor i64 %462, %601
  %603 = xor i64 %602, %557
  %604 = mul i64 %603, 2654435761
  %605 = lshr i64 %573, 47
  %606 = xor i64 %465, %605
  %607 = xor i64 %606, %573
  %608 = mul i64 %607, 2654435761
  %609 = lshr i64 %577, 47
  %610 = xor i64 %466, %609
  %611 = xor i64 %610, %577
  %612 = mul i64 %611, 2654435761
  %613 = add nuw nsw i64 %482, 1
  %614 = icmp eq i64 %613, %472
  br i1 %614, label %615, label %473

615:                                              ; preds = %580, %421
  %616 = phi i64 [ 2654435761, %421 ], [ %612, %580 ]
  %617 = phi i64 [ 2870177450012600261, %421 ], [ %608, %580 ]
  %618 = phi i64 [ 2246822519, %421 ], [ %604, %580 ]
  %619 = phi i64 [ -8796714831421723037, %421 ], [ %600, %580 ]
  %620 = phi i64 [ 1609587929392839161, %421 ], [ %596, %580 ]
  %621 = phi i64 [ -4417276706812531889, %421 ], [ %592, %580 ]
  %622 = phi i64 [ -7046029288634856825, %421 ], [ %588, %580 ]
  %623 = phi i64 [ 3266489917, %421 ], [ %584, %580 ]
  %624 = and i64 %469, -1024
  %625 = lshr i64 %469, 6
  %626 = and i64 %625, 15
  %627 = getelementptr inbounds nuw i8, ptr %0, i64 %624
  %628 = icmp eq i64 %626, 0
  br i1 %628, label %724, label %629

629:                                              ; preds = %615, %629
  %630 = phi i64 [ %721, %629 ], [ %616, %615 ]
  %631 = phi i64 [ %717, %629 ], [ %617, %615 ]
  %632 = phi i64 [ %701, %629 ], [ %618, %615 ]
  %633 = phi i64 [ %697, %629 ], [ %619, %615 ]
  %634 = phi i64 [ %681, %629 ], [ %620, %615 ]
  %635 = phi i64 [ %677, %629 ], [ %621, %615 ]
  %636 = phi i64 [ %661, %629 ], [ %622, %615 ]
  %637 = phi i64 [ %657, %629 ], [ %623, %615 ]
  %638 = phi i64 [ %722, %629 ], [ 0, %615 ]
  %639 = shl i64 %638, 6
  %640 = getelementptr inbounds nuw i8, ptr %627, i64 %639
  %641 = getelementptr inbounds nuw i8, ptr %640, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %641, i32 0, i32 3, i32 1), !noalias !195
  %642 = shl i64 %638, 3
  %643 = getelementptr inbounds nuw i8, ptr %4, i64 %642
  %644 = load i64, ptr %640, align 1
  %645 = load i64, ptr %643, align 8
  %646 = xor i64 %645, %644
  %647 = add i64 %636, %644
  %648 = and i64 %646, 4294967295
  %649 = lshr i64 %646, 32
  %650 = mul nuw i64 %648, %649
  %651 = add i64 %637, %650
  %652 = getelementptr inbounds nuw i8, ptr %640, i64 8
  %653 = load i64, ptr %652, align 1
  %654 = getelementptr inbounds nuw i8, ptr %643, i64 8
  %655 = load i64, ptr %654, align 8
  %656 = xor i64 %655, %653
  %657 = add i64 %651, %653
  %658 = and i64 %656, 4294967295
  %659 = lshr i64 %656, 32
  %660 = mul nuw i64 %658, %659
  %661 = add i64 %647, %660
  %662 = getelementptr inbounds nuw i8, ptr %640, i64 16
  %663 = load i64, ptr %662, align 1
  %664 = getelementptr inbounds nuw i8, ptr %643, i64 16
  %665 = load i64, ptr %664, align 8
  %666 = xor i64 %665, %663
  %667 = add i64 %634, %663
  %668 = and i64 %666, 4294967295
  %669 = lshr i64 %666, 32
  %670 = mul nuw i64 %668, %669
  %671 = add i64 %635, %670
  %672 = getelementptr inbounds nuw i8, ptr %640, i64 24
  %673 = load i64, ptr %672, align 1
  %674 = getelementptr inbounds nuw i8, ptr %643, i64 24
  %675 = load i64, ptr %674, align 8
  %676 = xor i64 %675, %673
  %677 = add i64 %671, %673
  %678 = and i64 %676, 4294967295
  %679 = lshr i64 %676, 32
  %680 = mul nuw i64 %678, %679
  %681 = add i64 %667, %680
  %682 = getelementptr inbounds nuw i8, ptr %640, i64 32
  %683 = load i64, ptr %682, align 1
  %684 = getelementptr inbounds nuw i8, ptr %643, i64 32
  %685 = load i64, ptr %684, align 8
  %686 = xor i64 %685, %683
  %687 = add i64 %632, %683
  %688 = and i64 %686, 4294967295
  %689 = lshr i64 %686, 32
  %690 = mul nuw i64 %688, %689
  %691 = add i64 %633, %690
  %692 = getelementptr inbounds nuw i8, ptr %640, i64 40
  %693 = load i64, ptr %692, align 1
  %694 = getelementptr inbounds nuw i8, ptr %643, i64 40
  %695 = load i64, ptr %694, align 8
  %696 = xor i64 %695, %693
  %697 = add i64 %691, %693
  %698 = and i64 %696, 4294967295
  %699 = lshr i64 %696, 32
  %700 = mul nuw i64 %698, %699
  %701 = add i64 %687, %700
  %702 = getelementptr inbounds nuw i8, ptr %640, i64 48
  %703 = load i64, ptr %702, align 1
  %704 = getelementptr inbounds nuw i8, ptr %643, i64 48
  %705 = load i64, ptr %704, align 8
  %706 = xor i64 %705, %703
  %707 = add i64 %630, %703
  %708 = and i64 %706, 4294967295
  %709 = lshr i64 %706, 32
  %710 = mul nuw i64 %708, %709
  %711 = add i64 %631, %710
  %712 = getelementptr inbounds nuw i8, ptr %640, i64 56
  %713 = load i64, ptr %712, align 1
  %714 = getelementptr inbounds nuw i8, ptr %643, i64 56
  %715 = load i64, ptr %714, align 8
  %716 = xor i64 %715, %713
  %717 = add i64 %711, %713
  %718 = and i64 %716, 4294967295
  %719 = lshr i64 %716, 32
  %720 = mul nuw i64 %718, %719
  %721 = add i64 %707, %720
  %722 = add nuw nsw i64 %638, 1
  %723 = icmp eq i64 %722, %626
  br i1 %723, label %724, label %629

724:                                              ; preds = %629, %615
  %725 = phi i64 [ %616, %615 ], [ %721, %629 ]
  %726 = phi i64 [ %617, %615 ], [ %717, %629 ]
  %727 = phi i64 [ %618, %615 ], [ %701, %629 ]
  %728 = phi i64 [ %619, %615 ], [ %697, %629 ]
  %729 = phi i64 [ %620, %615 ], [ %681, %629 ]
  %730 = phi i64 [ %621, %615 ], [ %677, %629 ]
  %731 = phi i64 [ %622, %615 ], [ %661, %629 ]
  %732 = phi i64 [ %623, %615 ], [ %657, %629 ]
  %733 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %734 = getelementptr inbounds i8, ptr %733, i64 -64
  %735 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %736 = load i64, ptr %734, align 1
  %737 = load i64, ptr %735, align 1
  %738 = xor i64 %737, %736
  %739 = add i64 %731, %736
  %740 = and i64 %738, 4294967295
  %741 = lshr i64 %738, 32
  %742 = mul nuw i64 %740, %741
  %743 = add i64 %732, %742
  %744 = getelementptr inbounds i8, ptr %733, i64 -56
  %745 = load i64, ptr %744, align 1
  %746 = getelementptr inbounds nuw i8, ptr %4, i64 129
  %747 = load i64, ptr %746, align 1
  %748 = xor i64 %747, %745
  %749 = add i64 %743, %745
  %750 = and i64 %748, 4294967295
  %751 = lshr i64 %748, 32
  %752 = mul nuw i64 %750, %751
  %753 = add i64 %739, %752
  %754 = getelementptr inbounds i8, ptr %733, i64 -48
  %755 = load i64, ptr %754, align 1
  %756 = getelementptr inbounds nuw i8, ptr %4, i64 137
  %757 = load i64, ptr %756, align 1
  %758 = xor i64 %757, %755
  %759 = add i64 %729, %755
  %760 = and i64 %758, 4294967295
  %761 = lshr i64 %758, 32
  %762 = mul nuw i64 %760, %761
  %763 = add i64 %730, %762
  %764 = getelementptr inbounds i8, ptr %733, i64 -40
  %765 = load i64, ptr %764, align 1
  %766 = getelementptr inbounds nuw i8, ptr %4, i64 145
  %767 = load i64, ptr %766, align 1
  %768 = xor i64 %767, %765
  %769 = add i64 %763, %765
  %770 = and i64 %768, 4294967295
  %771 = lshr i64 %768, 32
  %772 = mul nuw i64 %770, %771
  %773 = add i64 %759, %772
  %774 = getelementptr inbounds i8, ptr %733, i64 -32
  %775 = load i64, ptr %774, align 1
  %776 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %777 = load i64, ptr %776, align 1
  %778 = xor i64 %777, %775
  %779 = add i64 %727, %775
  %780 = and i64 %778, 4294967295
  %781 = lshr i64 %778, 32
  %782 = mul nuw i64 %780, %781
  %783 = add i64 %728, %782
  %784 = getelementptr inbounds i8, ptr %733, i64 -24
  %785 = load i64, ptr %784, align 1
  %786 = getelementptr inbounds nuw i8, ptr %4, i64 161
  %787 = load i64, ptr %786, align 1
  %788 = xor i64 %787, %785
  %789 = add i64 %783, %785
  %790 = and i64 %788, 4294967295
  %791 = lshr i64 %788, 32
  %792 = mul nuw i64 %790, %791
  %793 = add i64 %779, %792
  %794 = getelementptr inbounds i8, ptr %733, i64 -16
  %795 = load i64, ptr %794, align 1
  %796 = getelementptr inbounds nuw i8, ptr %4, i64 169
  %797 = load i64, ptr %796, align 1
  %798 = xor i64 %797, %795
  %799 = add i64 %725, %795
  %800 = and i64 %798, 4294967295
  %801 = lshr i64 %798, 32
  %802 = mul nuw i64 %800, %801
  %803 = add i64 %726, %802
  %804 = getelementptr inbounds i8, ptr %733, i64 -8
  %805 = load i64, ptr %804, align 1
  %806 = getelementptr inbounds nuw i8, ptr %4, i64 177
  %807 = load i64, ptr %806, align 1
  %808 = xor i64 %807, %805
  %809 = add i64 %803, %805
  %810 = and i64 %808, 4294967295
  %811 = lshr i64 %808, 32
  %812 = mul nuw i64 %810, %811
  %813 = add i64 %799, %812
  %814 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %815 = mul i64 %1, -7046029288634856825
  %816 = load i64, ptr %814, align 1, !alias.scope !198, !noalias !201
  %817 = xor i64 %816, %749
  %818 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %819 = load i64, ptr %818, align 1, !alias.scope !198, !noalias !201
  %820 = xor i64 %819, %753
  %821 = zext i64 %817 to i128
  %822 = zext i64 %820 to i128
  %823 = mul nuw i128 %822, %821
  %824 = lshr i128 %823, 64
  %825 = xor i128 %824, %823
  %826 = trunc i128 %825 to i64
  %827 = add i64 %815, %826
  %828 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %829 = load i64, ptr %828, align 1, !alias.scope !198, !noalias !201
  %830 = xor i64 %829, %769
  %831 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %832 = load i64, ptr %831, align 1, !alias.scope !198, !noalias !201
  %833 = xor i64 %832, %773
  %834 = zext i64 %830 to i128
  %835 = zext i64 %833 to i128
  %836 = mul nuw i128 %835, %834
  %837 = lshr i128 %836, 64
  %838 = xor i128 %837, %836
  %839 = trunc i128 %838 to i64
  %840 = add i64 %827, %839
  %841 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %842 = load i64, ptr %841, align 1, !alias.scope !198, !noalias !201
  %843 = xor i64 %842, %789
  %844 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %845 = load i64, ptr %844, align 1, !alias.scope !198, !noalias !201
  %846 = xor i64 %845, %793
  %847 = zext i64 %843 to i128
  %848 = zext i64 %846 to i128
  %849 = mul nuw i128 %848, %847
  %850 = lshr i128 %849, 64
  %851 = xor i128 %850, %849
  %852 = trunc i128 %851 to i64
  %853 = add i64 %840, %852
  %854 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %855 = load i64, ptr %854, align 1, !alias.scope !198, !noalias !201
  %856 = xor i64 %855, %809
  %857 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %858 = load i64, ptr %857, align 1, !alias.scope !198, !noalias !201
  %859 = xor i64 %858, %813
  %860 = zext i64 %856 to i128
  %861 = zext i64 %859 to i128
  %862 = mul nuw i128 %861, %860
  %863 = lshr i128 %862, 64
  %864 = xor i128 %863, %862
  %865 = trunc i128 %864 to i64
  %866 = add i64 %853, %865
  %867 = lshr i64 %866, 37
  %868 = xor i64 %867, %866
  %869 = mul i64 %868, 1609587791953885689
  %870 = lshr i64 %869, 32
  %871 = xor i64 %870, %869
  %872 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %873 = mul i64 %1, -4417276706812531889
  %874 = xor i64 %873, -1
  %875 = load i64, ptr %872, align 1, !alias.scope !203, !noalias !206
  %876 = xor i64 %875, %749
  %877 = getelementptr inbounds nuw i8, ptr %4, i64 125
  %878 = load i64, ptr %877, align 1, !alias.scope !203, !noalias !206
  %879 = xor i64 %878, %753
  %880 = zext i64 %876 to i128
  %881 = zext i64 %879 to i128
  %882 = mul nuw i128 %881, %880
  %883 = lshr i128 %882, 64
  %884 = xor i128 %883, %882
  %885 = trunc i128 %884 to i64
  %886 = add i64 %885, %874
  %887 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %888 = load i64, ptr %887, align 1, !alias.scope !203, !noalias !206
  %889 = xor i64 %888, %769
  %890 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %891 = load i64, ptr %890, align 1, !alias.scope !203, !noalias !206
  %892 = xor i64 %891, %773
  %893 = zext i64 %889 to i128
  %894 = zext i64 %892 to i128
  %895 = mul nuw i128 %894, %893
  %896 = lshr i128 %895, 64
  %897 = xor i128 %896, %895
  %898 = trunc i128 %897 to i64
  %899 = add i64 %886, %898
  %900 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %901 = load i64, ptr %900, align 1, !alias.scope !203, !noalias !206
  %902 = xor i64 %901, %789
  %903 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %904 = load i64, ptr %903, align 1, !alias.scope !203, !noalias !206
  %905 = xor i64 %904, %793
  %906 = zext i64 %902 to i128
  %907 = zext i64 %905 to i128
  %908 = mul nuw i128 %907, %906
  %909 = lshr i128 %908, 64
  %910 = xor i128 %909, %908
  %911 = trunc i128 %910 to i64
  %912 = add i64 %899, %911
  %913 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %914 = load i64, ptr %913, align 1, !alias.scope !203, !noalias !206
  %915 = xor i64 %914, %809
  %916 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %917 = load i64, ptr %916, align 1, !alias.scope !203, !noalias !206
  %918 = xor i64 %917, %813
  %919 = zext i64 %915 to i128
  %920 = zext i64 %918 to i128
  %921 = mul nuw i128 %920, %919
  %922 = lshr i128 %921, 64
  %923 = xor i128 %922, %921
  %924 = trunc i128 %923 to i64
  %925 = add i64 %912, %924
  %926 = lshr i64 %925, 37
  %927 = xor i64 %926, %925
  %928 = mul i64 %927, 1609587791953885689
  %929 = lshr i64 %928, 32
  %930 = xor i64 %929, %928
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #27, !noalias !189
  br label %931

931:                                              ; preds = %262, %724
  %932 = phi i64 [ %377, %262 ], [ %871, %724 ]
  %933 = phi i64 [ %420, %262 ], [ %930, %724 ]
  %934 = insertvalue { i64, i64 } poison, i64 %932, 0
  %935 = insertvalue { i64, i64 } %934, i64 %933, 1
  ret { i64, i64 } %935
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %6, align 16
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %8, align 32
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @XXH3_kSecret, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %14, align 32
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %15, align 8
  br label %16

16:                                               ; preds = %1, %3
  %17 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %15, align 8
  %16 = add i64 %2, -64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %16, ptr %17, align 32
  %18 = lshr i64 %16, 3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %18, ptr %19, align 8
  %20 = icmp eq ptr %1, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = icmp ult i64 %2, 136
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %21, %5, %3
  %25 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %83, label %4

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %9, align 16
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %11, align 32
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %13, align 16
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %15, align 8
  br label %78

16:                                               ; preds = %4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %69, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %22 = add i64 %1, -4734510112055689544
  %23 = sub i64 2066345149520216444, %1
  store i64 %22, ptr %21, align 1
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %23, ptr %24, align 1
  %25 = add i64 %1, -2623469361688619810
  %26 = sub i64 2262974939099578482, %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %25, ptr %27, align 1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %26, ptr %28, align 1
  %29 = add i64 %1, 8711581037947681227
  %30 = sub i64 2410270004345854594, %1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %29, ptr %31, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %30, ptr %32, align 1
  %33 = add i64 %1, -8204357891075471176
  %34 = sub i64 5487137525590930912, %1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %33, ptr %35, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %34, ptr %36, align 1
  %37 = add i64 %1, -3818837453329782724
  %38 = sub i64 -6688317018830679928, %1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %37, ptr %39, align 1
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %38, ptr %40, align 1
  %41 = add i64 %1, 5690594596133299313
  %42 = sub i64 -2833645246901970632, %1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %41, ptr %43, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %42, ptr %44, align 1
  %45 = add i64 %1, 4554437623014685352
  %46 = sub i64 2111919702937427193, %1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %45, ptr %47, align 1
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %46, ptr %48, align 1
  %49 = add i64 %1, 3556072174620004746
  %50 = sub i64 7238261902898274248, %1
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %49, ptr %51, align 1
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %50, ptr %52, align 1
  %53 = add i64 %1, -4329134394285701654
  %54 = sub i64 -1485321483350670907, %1
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %53, ptr %55, align 1
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %54, ptr %56, align 1
  %57 = add i64 %1, 5321830579834785047
  %58 = sub i64 -7032137544937171245, %1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %57, ptr %59, align 1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %58, ptr %60, align 1
  %61 = add i64 %1, -242834301215959509
  %62 = sub i64 -3588858202114426737, %1
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %61, ptr %63, align 1
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %62, ptr %64, align 1
  %65 = add i64 %1, 2883454493032893253
  %66 = sub i64 9097354517224871855, %1
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %65, ptr %67, align 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %66, ptr %68, align 1
  br label %69

69:                                               ; preds = %20, %16
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %70, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %72, align 16
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %74, align 32
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %76, align 16
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %77, align 8
  store i64 %1, ptr %17, align 8
  br label %78

78:                                               ; preds = %6, %69
  %79 = phi ptr [ null, %69 ], [ @XXH3_kSecret, %6 ]
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %79, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %81, align 32
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %82, align 8
  br label %83

83:                                               ; preds = %78, %2
  %84 = phi i32 [ 1, %2 ], [ 0, %78 ]
  ret i32 %84
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %897, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %11 = select i1 %9, ptr %10, ptr %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %13 = load i64, ptr %12, align 16
  %14 = add i64 %13, %2
  store i64 %14, ptr %12, align 16
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %16 = load i32, ptr %15, align 64
  %17 = zext i32 %16 to i64
  %18 = add i64 %2, %17
  %19 = icmp ult i64 %18, 257
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %23 = trunc i64 %2 to i32
  %24 = load i32, ptr %15, align 64
  %25 = add i32 %24, %23
  br label %895

26:                                               ; preds = %5
  %27 = icmp eq i32 %16, 0
  br i1 %27, label %453, label %28

28:                                               ; preds = %26
  %29 = sub i32 256, %16
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull readonly align 1 %1, i64 %30, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %38 = load i64, ptr %37, align 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %39 = load i64, ptr %34, align 8, !alias.scope !211, !noalias !213
  %40 = sub i64 %36, %39
  %41 = icmp ugt i64 %40, 4
  br i1 %41, label %336, label %42

42:                                               ; preds = %28
  %43 = sub nuw nsw i64 4, %40
  %44 = shl i64 %39, 3
  %45 = getelementptr inbounds nuw i8, ptr %11, i64 %44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %46 = icmp eq i64 %36, %39
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load i64, ptr %0, align 8, !alias.scope !219, !noalias !222
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %50 = load i64, ptr %49, align 8, !alias.scope !219, !noalias !222
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %52 = load i64, ptr %51, align 8, !alias.scope !219, !noalias !222
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %54 = load i64, ptr %53, align 8, !alias.scope !219, !noalias !222
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %56 = load i64, ptr %55, align 8, !alias.scope !219, !noalias !222
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %58 = load i64, ptr %57, align 8, !alias.scope !219, !noalias !222
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %60 = load i64, ptr %59, align 8, !alias.scope !219, !noalias !222
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %62 = load i64, ptr %61, align 8, !alias.scope !219, !noalias !222
  br label %174

63:                                               ; preds = %42
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %65 = load i64, ptr %64, align 8, !alias.scope !224, !noalias !227
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %67 = load i64, ptr %66, align 8, !alias.scope !224, !noalias !227
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %69 = load i64, ptr %68, align 8, !alias.scope !224, !noalias !227
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %71 = load i64, ptr %70, align 8, !alias.scope !224, !noalias !227
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %73 = load i64, ptr %72, align 8, !alias.scope !224, !noalias !227
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %75 = load i64, ptr %74, align 8, !alias.scope !224, !noalias !227
  %76 = load i64, ptr %0, align 8, !alias.scope !224, !noalias !227
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %78 = load i64, ptr %77, align 8, !alias.scope !224, !noalias !227
  br label %79

79:                                               ; preds = %63, %79
  %80 = phi i64 [ %167, %79 ], [ %78, %63 ]
  %81 = phi i64 [ %107, %79 ], [ %76, %63 ]
  %82 = phi i64 [ %111, %79 ], [ %75, %63 ]
  %83 = phi i64 [ %171, %79 ], [ %73, %63 ]
  %84 = phi i64 [ %147, %79 ], [ %71, %63 ]
  %85 = phi i64 [ %151, %79 ], [ %69, %63 ]
  %86 = phi i64 [ %127, %79 ], [ %67, %63 ]
  %87 = phi i64 [ %131, %79 ], [ %65, %63 ]
  %88 = phi i64 [ %172, %79 ], [ 0, %63 ]
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %31, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1), !noalias !232
  %92 = shl i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr %45, i64 %92
  %94 = load i64, ptr %90, align 1
  %95 = load i64, ptr %93, align 1
  %96 = xor i64 %95, %94
  %97 = add i64 %82, %94
  store i64 %97, ptr %74, align 8, !alias.scope !224, !noalias !227
  %98 = and i64 %96, 4294967295
  %99 = lshr i64 %96, 32
  %100 = mul nuw i64 %98, %99
  %101 = add i64 %81, %100
  store i64 %101, ptr %0, align 8, !alias.scope !224, !noalias !227
  %102 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %103 = load i64, ptr %102, align 1
  %104 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %105 = load i64, ptr %104, align 1
  %106 = xor i64 %105, %103
  %107 = add i64 %101, %103
  store i64 %107, ptr %0, align 8, !alias.scope !224, !noalias !227
  %108 = and i64 %106, 4294967295
  %109 = lshr i64 %106, 32
  %110 = mul nuw i64 %108, %109
  %111 = add i64 %97, %110
  store i64 %111, ptr %74, align 8, !alias.scope !224, !noalias !227
  %112 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %113 = load i64, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %93, i64 16
  %115 = load i64, ptr %114, align 1
  %116 = xor i64 %115, %113
  %117 = add i64 %87, %113
  store i64 %117, ptr %64, align 8, !alias.scope !224, !noalias !227
  %118 = and i64 %116, 4294967295
  %119 = lshr i64 %116, 32
  %120 = mul nuw i64 %118, %119
  %121 = add i64 %86, %120
  store i64 %121, ptr %66, align 8, !alias.scope !224, !noalias !227
  %122 = getelementptr inbounds nuw i8, ptr %90, i64 24
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %93, i64 24
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %125, %123
  %127 = add i64 %121, %123
  store i64 %127, ptr %66, align 8, !alias.scope !224, !noalias !227
  %128 = and i64 %126, 4294967295
  %129 = lshr i64 %126, 32
  %130 = mul nuw i64 %128, %129
  %131 = add i64 %117, %130
  store i64 %131, ptr %64, align 8, !alias.scope !224, !noalias !227
  %132 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %133 = load i64, ptr %132, align 1
  %134 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %135 = load i64, ptr %134, align 1
  %136 = xor i64 %135, %133
  %137 = add i64 %85, %133
  store i64 %137, ptr %68, align 8, !alias.scope !224, !noalias !227
  %138 = and i64 %136, 4294967295
  %139 = lshr i64 %136, 32
  %140 = mul nuw i64 %138, %139
  %141 = add i64 %84, %140
  store i64 %141, ptr %70, align 8, !alias.scope !224, !noalias !227
  %142 = getelementptr inbounds nuw i8, ptr %90, i64 40
  %143 = load i64, ptr %142, align 1
  %144 = getelementptr inbounds nuw i8, ptr %93, i64 40
  %145 = load i64, ptr %144, align 1
  %146 = xor i64 %145, %143
  %147 = add i64 %141, %143
  store i64 %147, ptr %70, align 8, !alias.scope !224, !noalias !227
  %148 = and i64 %146, 4294967295
  %149 = lshr i64 %146, 32
  %150 = mul nuw i64 %148, %149
  %151 = add i64 %137, %150
  store i64 %151, ptr %68, align 8, !alias.scope !224, !noalias !227
  %152 = getelementptr inbounds nuw i8, ptr %90, i64 48
  %153 = load i64, ptr %152, align 1
  %154 = getelementptr inbounds nuw i8, ptr %93, i64 48
  %155 = load i64, ptr %154, align 1
  %156 = xor i64 %155, %153
  %157 = add i64 %83, %153
  store i64 %157, ptr %72, align 8, !alias.scope !224, !noalias !227
  %158 = and i64 %156, 4294967295
  %159 = lshr i64 %156, 32
  %160 = mul nuw i64 %158, %159
  %161 = add i64 %80, %160
  store i64 %161, ptr %77, align 8, !alias.scope !224, !noalias !227
  %162 = getelementptr inbounds nuw i8, ptr %90, i64 56
  %163 = load i64, ptr %162, align 1
  %164 = getelementptr inbounds nuw i8, ptr %93, i64 56
  %165 = load i64, ptr %164, align 1
  %166 = xor i64 %165, %163
  %167 = add i64 %161, %163
  store i64 %167, ptr %77, align 8, !alias.scope !224, !noalias !227
  %168 = and i64 %166, 4294967295
  %169 = lshr i64 %166, 32
  %170 = mul nuw i64 %168, %169
  %171 = add i64 %157, %170
  store i64 %171, ptr %72, align 8, !alias.scope !224, !noalias !227
  %172 = add nuw i64 %88, 1
  %173 = icmp eq i64 %172, %40
  br i1 %173, label %174, label %79

174:                                              ; preds = %79, %47
  %175 = phi i64 [ %62, %47 ], [ %171, %79 ]
  %176 = phi i64 [ %60, %47 ], [ %167, %79 ]
  %177 = phi i64 [ %58, %47 ], [ %151, %79 ]
  %178 = phi i64 [ %56, %47 ], [ %147, %79 ]
  %179 = phi i64 [ %54, %47 ], [ %131, %79 ]
  %180 = phi i64 [ %52, %47 ], [ %127, %79 ]
  %181 = phi i64 [ %50, %47 ], [ %111, %79 ]
  %182 = phi i64 [ %48, %47 ], [ %107, %79 ]
  %183 = getelementptr inbounds nuw i8, ptr %11, i64 %38
  %184 = load i64, ptr %183, align 1
  %185 = lshr i64 %182, 47
  %186 = xor i64 %184, %185
  %187 = xor i64 %186, %182
  %188 = mul i64 %187, 2654435761
  store i64 %188, ptr %0, align 8, !alias.scope !219, !noalias !222
  %189 = getelementptr inbounds nuw i8, ptr %183, i64 8
  %190 = load i64, ptr %189, align 1
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %192 = lshr i64 %181, 47
  %193 = xor i64 %190, %192
  %194 = xor i64 %193, %181
  %195 = mul i64 %194, 2654435761
  store i64 %195, ptr %191, align 8, !alias.scope !219, !noalias !222
  %196 = getelementptr inbounds nuw i8, ptr %183, i64 16
  %197 = load i64, ptr %196, align 1
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %199 = lshr i64 %180, 47
  %200 = xor i64 %197, %199
  %201 = xor i64 %200, %180
  %202 = mul i64 %201, 2654435761
  store i64 %202, ptr %198, align 8, !alias.scope !219, !noalias !222
  %203 = getelementptr inbounds nuw i8, ptr %183, i64 24
  %204 = load i64, ptr %203, align 1
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %206 = lshr i64 %179, 47
  %207 = xor i64 %204, %206
  %208 = xor i64 %207, %179
  %209 = mul i64 %208, 2654435761
  store i64 %209, ptr %205, align 8, !alias.scope !219, !noalias !222
  %210 = getelementptr inbounds nuw i8, ptr %183, i64 32
  %211 = load i64, ptr %210, align 1
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %213 = lshr i64 %178, 47
  %214 = xor i64 %211, %213
  %215 = xor i64 %214, %178
  %216 = mul i64 %215, 2654435761
  store i64 %216, ptr %212, align 8, !alias.scope !219, !noalias !222
  %217 = getelementptr inbounds nuw i8, ptr %183, i64 40
  %218 = load i64, ptr %217, align 1
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %220 = lshr i64 %177, 47
  %221 = xor i64 %218, %220
  %222 = xor i64 %221, %177
  %223 = mul i64 %222, 2654435761
  store i64 %223, ptr %219, align 8, !alias.scope !219, !noalias !222
  %224 = getelementptr inbounds nuw i8, ptr %183, i64 48
  %225 = load i64, ptr %224, align 1
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %227 = lshr i64 %176, 47
  %228 = xor i64 %225, %227
  %229 = xor i64 %228, %176
  %230 = mul i64 %229, 2654435761
  store i64 %230, ptr %226, align 8, !alias.scope !219, !noalias !222
  %231 = getelementptr inbounds nuw i8, ptr %183, i64 56
  %232 = load i64, ptr %231, align 1
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %234 = lshr i64 %175, 47
  %235 = xor i64 %232, %234
  %236 = xor i64 %235, %175
  %237 = mul i64 %236, 2654435761
  store i64 %237, ptr %233, align 8, !alias.scope !219, !noalias !222
  %238 = shl nuw nsw i64 %40, 6
  %239 = getelementptr inbounds nuw i8, ptr %31, i64 %238
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %240 = icmp eq i64 %40, 4
  br i1 %240, label %451, label %241

241:                                              ; preds = %174, %241
  %242 = phi i64 [ %269, %241 ], [ %188, %174 ]
  %243 = phi i64 [ %273, %241 ], [ %195, %174 ]
  %244 = phi i64 [ %329, %241 ], [ %230, %174 ]
  %245 = phi i64 [ %333, %241 ], [ %237, %174 ]
  %246 = phi i64 [ %309, %241 ], [ %216, %174 ]
  %247 = phi i64 [ %313, %241 ], [ %223, %174 ]
  %248 = phi i64 [ %289, %241 ], [ %202, %174 ]
  %249 = phi i64 [ %293, %241 ], [ %209, %174 ]
  %250 = phi i64 [ %334, %241 ], [ 0, %174 ]
  %251 = shl i64 %250, 6
  %252 = getelementptr inbounds nuw i8, ptr %239, i64 %251
  %253 = getelementptr inbounds nuw i8, ptr %252, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %253, i32 0, i32 3, i32 1), !noalias !236
  %254 = shl i64 %250, 3
  %255 = getelementptr inbounds nuw i8, ptr %11, i64 %254
  %256 = load i64, ptr %252, align 1
  %257 = load i64, ptr %255, align 1
  %258 = xor i64 %257, %256
  %259 = add i64 %243, %256
  store i64 %259, ptr %191, align 8, !alias.scope !237, !noalias !240
  %260 = and i64 %258, 4294967295
  %261 = lshr i64 %258, 32
  %262 = mul nuw i64 %260, %261
  %263 = add i64 %242, %262
  store i64 %263, ptr %0, align 8, !alias.scope !237, !noalias !240
  %264 = getelementptr inbounds nuw i8, ptr %252, i64 8
  %265 = load i64, ptr %264, align 1
  %266 = getelementptr inbounds nuw i8, ptr %255, i64 8
  %267 = load i64, ptr %266, align 1
  %268 = xor i64 %267, %265
  %269 = add i64 %263, %265
  store i64 %269, ptr %0, align 8, !alias.scope !237, !noalias !240
  %270 = and i64 %268, 4294967295
  %271 = lshr i64 %268, 32
  %272 = mul nuw i64 %270, %271
  %273 = add i64 %259, %272
  store i64 %273, ptr %191, align 8, !alias.scope !237, !noalias !240
  %274 = getelementptr inbounds nuw i8, ptr %252, i64 16
  %275 = load i64, ptr %274, align 1
  %276 = getelementptr inbounds nuw i8, ptr %255, i64 16
  %277 = load i64, ptr %276, align 1
  %278 = xor i64 %277, %275
  %279 = add i64 %249, %275
  store i64 %279, ptr %205, align 8, !alias.scope !237, !noalias !240
  %280 = and i64 %278, 4294967295
  %281 = lshr i64 %278, 32
  %282 = mul nuw i64 %280, %281
  %283 = add i64 %248, %282
  store i64 %283, ptr %198, align 8, !alias.scope !237, !noalias !240
  %284 = getelementptr inbounds nuw i8, ptr %252, i64 24
  %285 = load i64, ptr %284, align 1
  %286 = getelementptr inbounds nuw i8, ptr %255, i64 24
  %287 = load i64, ptr %286, align 1
  %288 = xor i64 %287, %285
  %289 = add i64 %283, %285
  store i64 %289, ptr %198, align 8, !alias.scope !237, !noalias !240
  %290 = and i64 %288, 4294967295
  %291 = lshr i64 %288, 32
  %292 = mul nuw i64 %290, %291
  %293 = add i64 %279, %292
  store i64 %293, ptr %205, align 8, !alias.scope !237, !noalias !240
  %294 = getelementptr inbounds nuw i8, ptr %252, i64 32
  %295 = load i64, ptr %294, align 1
  %296 = getelementptr inbounds nuw i8, ptr %255, i64 32
  %297 = load i64, ptr %296, align 1
  %298 = xor i64 %297, %295
  %299 = add i64 %247, %295
  store i64 %299, ptr %219, align 8, !alias.scope !237, !noalias !240
  %300 = and i64 %298, 4294967295
  %301 = lshr i64 %298, 32
  %302 = mul nuw i64 %300, %301
  %303 = add i64 %246, %302
  store i64 %303, ptr %212, align 8, !alias.scope !237, !noalias !240
  %304 = getelementptr inbounds nuw i8, ptr %252, i64 40
  %305 = load i64, ptr %304, align 1
  %306 = getelementptr inbounds nuw i8, ptr %255, i64 40
  %307 = load i64, ptr %306, align 1
  %308 = xor i64 %307, %305
  %309 = add i64 %303, %305
  store i64 %309, ptr %212, align 8, !alias.scope !237, !noalias !240
  %310 = and i64 %308, 4294967295
  %311 = lshr i64 %308, 32
  %312 = mul nuw i64 %310, %311
  %313 = add i64 %299, %312
  store i64 %313, ptr %219, align 8, !alias.scope !237, !noalias !240
  %314 = getelementptr inbounds nuw i8, ptr %252, i64 48
  %315 = load i64, ptr %314, align 1
  %316 = getelementptr inbounds nuw i8, ptr %255, i64 48
  %317 = load i64, ptr %316, align 1
  %318 = xor i64 %317, %315
  %319 = add i64 %245, %315
  store i64 %319, ptr %233, align 8, !alias.scope !237, !noalias !240
  %320 = and i64 %318, 4294967295
  %321 = lshr i64 %318, 32
  %322 = mul nuw i64 %320, %321
  %323 = add i64 %244, %322
  store i64 %323, ptr %226, align 8, !alias.scope !237, !noalias !240
  %324 = getelementptr inbounds nuw i8, ptr %252, i64 56
  %325 = load i64, ptr %324, align 1
  %326 = getelementptr inbounds nuw i8, ptr %255, i64 56
  %327 = load i64, ptr %326, align 1
  %328 = xor i64 %327, %325
  %329 = add i64 %323, %325
  store i64 %329, ptr %226, align 8, !alias.scope !237, !noalias !240
  %330 = and i64 %328, 4294967295
  %331 = lshr i64 %328, 32
  %332 = mul nuw i64 %330, %331
  %333 = add i64 %319, %332
  store i64 %333, ptr %233, align 8, !alias.scope !237, !noalias !240
  %334 = add nuw i64 %250, 1
  %335 = icmp eq i64 %334, %43
  br i1 %335, label %451, label %241

336:                                              ; preds = %28
  %337 = shl i64 %39, 3
  %338 = getelementptr inbounds nuw i8, ptr %11, i64 %337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %339 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %340 = load i64, ptr %339, align 8, !alias.scope !248, !noalias !251
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %342 = load i64, ptr %341, align 8, !alias.scope !248, !noalias !251
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %344 = load i64, ptr %343, align 8, !alias.scope !248, !noalias !251
  %345 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %346 = load i64, ptr %345, align 8, !alias.scope !248, !noalias !251
  %347 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %348 = load i64, ptr %347, align 8, !alias.scope !248, !noalias !251
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %350 = load i64, ptr %349, align 8, !alias.scope !248, !noalias !251
  %351 = load i64, ptr %0, align 8, !alias.scope !248, !noalias !251
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %353 = load i64, ptr %352, align 8, !alias.scope !248, !noalias !251
  br label %354

354:                                              ; preds = %336, %354
  %355 = phi i64 [ %353, %336 ], [ %442, %354 ]
  %356 = phi i64 [ %351, %336 ], [ %382, %354 ]
  %357 = phi i64 [ %350, %336 ], [ %386, %354 ]
  %358 = phi i64 [ %348, %336 ], [ %446, %354 ]
  %359 = phi i64 [ %346, %336 ], [ %422, %354 ]
  %360 = phi i64 [ %344, %336 ], [ %426, %354 ]
  %361 = phi i64 [ %342, %336 ], [ %402, %354 ]
  %362 = phi i64 [ %340, %336 ], [ %406, %354 ]
  %363 = phi i64 [ 0, %336 ], [ %447, %354 ]
  %364 = shl nuw nsw i64 %363, 6
  %365 = getelementptr inbounds nuw i8, ptr %31, i64 %364
  %366 = getelementptr inbounds nuw i8, ptr %365, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %366, i32 0, i32 3, i32 1), !noalias !256
  %367 = shl nuw nsw i64 %363, 3
  %368 = getelementptr inbounds nuw i8, ptr %338, i64 %367
  %369 = load i64, ptr %365, align 1
  %370 = load i64, ptr %368, align 1
  %371 = xor i64 %370, %369
  %372 = add i64 %357, %369
  store i64 %372, ptr %349, align 8, !alias.scope !248, !noalias !251
  %373 = and i64 %371, 4294967295
  %374 = lshr i64 %371, 32
  %375 = mul nuw i64 %373, %374
  %376 = add i64 %356, %375
  store i64 %376, ptr %0, align 8, !alias.scope !248, !noalias !251
  %377 = getelementptr inbounds nuw i8, ptr %365, i64 8
  %378 = load i64, ptr %377, align 1
  %379 = getelementptr inbounds nuw i8, ptr %368, i64 8
  %380 = load i64, ptr %379, align 1
  %381 = xor i64 %380, %378
  %382 = add i64 %376, %378
  store i64 %382, ptr %0, align 8, !alias.scope !248, !noalias !251
  %383 = and i64 %381, 4294967295
  %384 = lshr i64 %381, 32
  %385 = mul nuw i64 %383, %384
  %386 = add i64 %372, %385
  store i64 %386, ptr %349, align 8, !alias.scope !248, !noalias !251
  %387 = getelementptr inbounds nuw i8, ptr %365, i64 16
  %388 = load i64, ptr %387, align 1
  %389 = getelementptr inbounds nuw i8, ptr %368, i64 16
  %390 = load i64, ptr %389, align 1
  %391 = xor i64 %390, %388
  %392 = add i64 %362, %388
  store i64 %392, ptr %339, align 8, !alias.scope !248, !noalias !251
  %393 = and i64 %391, 4294967295
  %394 = lshr i64 %391, 32
  %395 = mul nuw i64 %393, %394
  %396 = add i64 %361, %395
  store i64 %396, ptr %341, align 8, !alias.scope !248, !noalias !251
  %397 = getelementptr inbounds nuw i8, ptr %365, i64 24
  %398 = load i64, ptr %397, align 1
  %399 = getelementptr inbounds nuw i8, ptr %368, i64 24
  %400 = load i64, ptr %399, align 1
  %401 = xor i64 %400, %398
  %402 = add i64 %396, %398
  store i64 %402, ptr %341, align 8, !alias.scope !248, !noalias !251
  %403 = and i64 %401, 4294967295
  %404 = lshr i64 %401, 32
  %405 = mul nuw i64 %403, %404
  %406 = add i64 %392, %405
  store i64 %406, ptr %339, align 8, !alias.scope !248, !noalias !251
  %407 = getelementptr inbounds nuw i8, ptr %365, i64 32
  %408 = load i64, ptr %407, align 1
  %409 = getelementptr inbounds nuw i8, ptr %368, i64 32
  %410 = load i64, ptr %409, align 1
  %411 = xor i64 %410, %408
  %412 = add i64 %360, %408
  store i64 %412, ptr %343, align 8, !alias.scope !248, !noalias !251
  %413 = and i64 %411, 4294967295
  %414 = lshr i64 %411, 32
  %415 = mul nuw i64 %413, %414
  %416 = add i64 %359, %415
  store i64 %416, ptr %345, align 8, !alias.scope !248, !noalias !251
  %417 = getelementptr inbounds nuw i8, ptr %365, i64 40
  %418 = load i64, ptr %417, align 1
  %419 = getelementptr inbounds nuw i8, ptr %368, i64 40
  %420 = load i64, ptr %419, align 1
  %421 = xor i64 %420, %418
  %422 = add i64 %416, %418
  store i64 %422, ptr %345, align 8, !alias.scope !248, !noalias !251
  %423 = and i64 %421, 4294967295
  %424 = lshr i64 %421, 32
  %425 = mul nuw i64 %423, %424
  %426 = add i64 %412, %425
  store i64 %426, ptr %343, align 8, !alias.scope !248, !noalias !251
  %427 = getelementptr inbounds nuw i8, ptr %365, i64 48
  %428 = load i64, ptr %427, align 1
  %429 = getelementptr inbounds nuw i8, ptr %368, i64 48
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %428
  %432 = add i64 %358, %428
  store i64 %432, ptr %347, align 8, !alias.scope !248, !noalias !251
  %433 = and i64 %431, 4294967295
  %434 = lshr i64 %431, 32
  %435 = mul nuw i64 %433, %434
  %436 = add i64 %355, %435
  store i64 %436, ptr %352, align 8, !alias.scope !248, !noalias !251
  %437 = getelementptr inbounds nuw i8, ptr %365, i64 56
  %438 = load i64, ptr %437, align 1
  %439 = getelementptr inbounds nuw i8, ptr %368, i64 56
  %440 = load i64, ptr %439, align 1
  %441 = xor i64 %440, %438
  %442 = add i64 %436, %438
  store i64 %442, ptr %352, align 8, !alias.scope !248, !noalias !251
  %443 = and i64 %441, 4294967295
  %444 = lshr i64 %441, 32
  %445 = mul nuw i64 %443, %444
  %446 = add i64 %432, %445
  store i64 %446, ptr %347, align 8, !alias.scope !248, !noalias !251
  %447 = add nuw nsw i64 %363, 1
  %448 = icmp eq i64 %447, 4
  br i1 %448, label %449, label %354

449:                                              ; preds = %354
  %450 = add i64 %39, 4
  br label %451

451:                                              ; preds = %241, %174, %449
  %452 = phi i64 [ %450, %449 ], [ 0, %174 ], [ %43, %241 ]
  store i64 %452, ptr %34, align 8, !alias.scope !211, !noalias !213
  store i32 0, ptr %15, align 64
  br label %453

453:                                              ; preds = %451, %26
  %454 = phi ptr [ %33, %451 ], [ %1, %26 ]
  %455 = ptrtoint ptr %6 to i64
  %456 = ptrtoint ptr %454 to i64
  %457 = sub i64 %455, %456
  %458 = icmp sgt i64 %457, 256
  br i1 %458, label %459, label %890

459:                                              ; preds = %453
  %460 = getelementptr inbounds i8, ptr %6, i64 -256
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %464 = load i64, ptr %461, align 8, !alias.scope !257, !noalias !260
  %465 = load i64, ptr %462, align 8
  %466 = load i64, ptr %463, align 32
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %481 = getelementptr inbounds nuw i8, ptr %11, i64 %466
  %482 = getelementptr inbounds nuw i8, ptr %481, i64 8
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %484 = getelementptr inbounds nuw i8, ptr %481, i64 16
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %486 = getelementptr inbounds nuw i8, ptr %481, i64 24
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %488 = getelementptr inbounds nuw i8, ptr %481, i64 32
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %490 = getelementptr inbounds nuw i8, ptr %481, i64 40
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %492 = getelementptr inbounds nuw i8, ptr %481, i64 48
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %494 = getelementptr inbounds nuw i8, ptr %481, i64 56
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %503

503:                                              ; preds = %881, %459
  %504 = phi i64 [ %464, %459 ], [ %882, %881 ]
  %505 = phi ptr [ %454, %459 ], [ %883, %881 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %506 = sub i64 %465, %504
  %507 = icmp ugt i64 %506, 4
  br i1 %507, label %773, label %508

508:                                              ; preds = %503
  %509 = sub nuw nsw i64 4, %506
  %510 = shl i64 %504, 3
  %511 = getelementptr inbounds nuw i8, ptr %11, i64 %510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %512 = icmp eq i64 %465, %504
  br i1 %512, label %513, label %522

513:                                              ; preds = %508
  %514 = load i64, ptr %474, align 8, !alias.scope !268, !noalias !271
  %515 = load i64, ptr %475, align 8, !alias.scope !268, !noalias !271
  %516 = load i64, ptr %476, align 8, !alias.scope !268, !noalias !271
  %517 = load i64, ptr %477, align 8, !alias.scope !268, !noalias !271
  %518 = load i64, ptr %478, align 8, !alias.scope !268, !noalias !271
  %519 = load i64, ptr %479, align 8, !alias.scope !268, !noalias !271
  %520 = load i64, ptr %480, align 8, !alias.scope !268, !noalias !271
  %521 = load i64, ptr %0, align 8, !alias.scope !268, !noalias !271
  br label %626

522:                                              ; preds = %508
  %523 = load i64, ptr %467, align 8, !alias.scope !273, !noalias !276
  %524 = load i64, ptr %468, align 8, !alias.scope !273, !noalias !276
  %525 = load i64, ptr %469, align 8, !alias.scope !273, !noalias !276
  %526 = load i64, ptr %470, align 8, !alias.scope !273, !noalias !276
  %527 = load i64, ptr %471, align 8, !alias.scope !273, !noalias !276
  %528 = load i64, ptr %472, align 8, !alias.scope !273, !noalias !276
  %529 = load i64, ptr %0, align 8, !alias.scope !273, !noalias !276
  %530 = load i64, ptr %473, align 8, !alias.scope !273, !noalias !276
  br label %531

531:                                              ; preds = %522, %531
  %532 = phi i64 [ %619, %531 ], [ %530, %522 ]
  %533 = phi i64 [ %559, %531 ], [ %529, %522 ]
  %534 = phi i64 [ %563, %531 ], [ %528, %522 ]
  %535 = phi i64 [ %623, %531 ], [ %527, %522 ]
  %536 = phi i64 [ %599, %531 ], [ %526, %522 ]
  %537 = phi i64 [ %603, %531 ], [ %525, %522 ]
  %538 = phi i64 [ %579, %531 ], [ %524, %522 ]
  %539 = phi i64 [ %583, %531 ], [ %523, %522 ]
  %540 = phi i64 [ %624, %531 ], [ 0, %522 ]
  %541 = shl i64 %540, 6
  %542 = getelementptr inbounds nuw i8, ptr %505, i64 %541
  %543 = getelementptr inbounds nuw i8, ptr %542, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %543, i32 0, i32 3, i32 1), !noalias !281
  %544 = shl i64 %540, 3
  %545 = getelementptr inbounds nuw i8, ptr %511, i64 %544
  %546 = load i64, ptr %542, align 1
  %547 = load i64, ptr %545, align 1
  %548 = xor i64 %547, %546
  %549 = add i64 %534, %546
  store i64 %549, ptr %472, align 8, !alias.scope !273, !noalias !276
  %550 = and i64 %548, 4294967295
  %551 = lshr i64 %548, 32
  %552 = mul nuw i64 %550, %551
  %553 = add i64 %533, %552
  store i64 %553, ptr %0, align 8, !alias.scope !273, !noalias !276
  %554 = getelementptr inbounds nuw i8, ptr %542, i64 8
  %555 = load i64, ptr %554, align 1
  %556 = getelementptr inbounds nuw i8, ptr %545, i64 8
  %557 = load i64, ptr %556, align 1
  %558 = xor i64 %557, %555
  %559 = add i64 %553, %555
  store i64 %559, ptr %0, align 8, !alias.scope !273, !noalias !276
  %560 = and i64 %558, 4294967295
  %561 = lshr i64 %558, 32
  %562 = mul nuw i64 %560, %561
  %563 = add i64 %549, %562
  store i64 %563, ptr %472, align 8, !alias.scope !273, !noalias !276
  %564 = getelementptr inbounds nuw i8, ptr %542, i64 16
  %565 = load i64, ptr %564, align 1
  %566 = getelementptr inbounds nuw i8, ptr %545, i64 16
  %567 = load i64, ptr %566, align 1
  %568 = xor i64 %567, %565
  %569 = add i64 %539, %565
  store i64 %569, ptr %467, align 8, !alias.scope !273, !noalias !276
  %570 = and i64 %568, 4294967295
  %571 = lshr i64 %568, 32
  %572 = mul nuw i64 %570, %571
  %573 = add i64 %538, %572
  store i64 %573, ptr %468, align 8, !alias.scope !273, !noalias !276
  %574 = getelementptr inbounds nuw i8, ptr %542, i64 24
  %575 = load i64, ptr %574, align 1
  %576 = getelementptr inbounds nuw i8, ptr %545, i64 24
  %577 = load i64, ptr %576, align 1
  %578 = xor i64 %577, %575
  %579 = add i64 %573, %575
  store i64 %579, ptr %468, align 8, !alias.scope !273, !noalias !276
  %580 = and i64 %578, 4294967295
  %581 = lshr i64 %578, 32
  %582 = mul nuw i64 %580, %581
  %583 = add i64 %569, %582
  store i64 %583, ptr %467, align 8, !alias.scope !273, !noalias !276
  %584 = getelementptr inbounds nuw i8, ptr %542, i64 32
  %585 = load i64, ptr %584, align 1
  %586 = getelementptr inbounds nuw i8, ptr %545, i64 32
  %587 = load i64, ptr %586, align 1
  %588 = xor i64 %587, %585
  %589 = add i64 %537, %585
  store i64 %589, ptr %469, align 8, !alias.scope !273, !noalias !276
  %590 = and i64 %588, 4294967295
  %591 = lshr i64 %588, 32
  %592 = mul nuw i64 %590, %591
  %593 = add i64 %536, %592
  store i64 %593, ptr %470, align 8, !alias.scope !273, !noalias !276
  %594 = getelementptr inbounds nuw i8, ptr %542, i64 40
  %595 = load i64, ptr %594, align 1
  %596 = getelementptr inbounds nuw i8, ptr %545, i64 40
  %597 = load i64, ptr %596, align 1
  %598 = xor i64 %597, %595
  %599 = add i64 %593, %595
  store i64 %599, ptr %470, align 8, !alias.scope !273, !noalias !276
  %600 = and i64 %598, 4294967295
  %601 = lshr i64 %598, 32
  %602 = mul nuw i64 %600, %601
  %603 = add i64 %589, %602
  store i64 %603, ptr %469, align 8, !alias.scope !273, !noalias !276
  %604 = getelementptr inbounds nuw i8, ptr %542, i64 48
  %605 = load i64, ptr %604, align 1
  %606 = getelementptr inbounds nuw i8, ptr %545, i64 48
  %607 = load i64, ptr %606, align 1
  %608 = xor i64 %607, %605
  %609 = add i64 %535, %605
  store i64 %609, ptr %471, align 8, !alias.scope !273, !noalias !276
  %610 = and i64 %608, 4294967295
  %611 = lshr i64 %608, 32
  %612 = mul nuw i64 %610, %611
  %613 = add i64 %532, %612
  store i64 %613, ptr %473, align 8, !alias.scope !273, !noalias !276
  %614 = getelementptr inbounds nuw i8, ptr %542, i64 56
  %615 = load i64, ptr %614, align 1
  %616 = getelementptr inbounds nuw i8, ptr %545, i64 56
  %617 = load i64, ptr %616, align 1
  %618 = xor i64 %617, %615
  %619 = add i64 %613, %615
  store i64 %619, ptr %473, align 8, !alias.scope !273, !noalias !276
  %620 = and i64 %618, 4294967295
  %621 = lshr i64 %618, 32
  %622 = mul nuw i64 %620, %621
  %623 = add i64 %609, %622
  store i64 %623, ptr %471, align 8, !alias.scope !273, !noalias !276
  %624 = add nuw i64 %540, 1
  %625 = icmp eq i64 %624, %506
  br i1 %625, label %626, label %531

626:                                              ; preds = %531, %513
  %627 = phi i64 [ %521, %513 ], [ %559, %531 ]
  %628 = phi i64 [ %520, %513 ], [ %623, %531 ]
  %629 = phi i64 [ %519, %513 ], [ %619, %531 ]
  %630 = phi i64 [ %518, %513 ], [ %603, %531 ]
  %631 = phi i64 [ %517, %513 ], [ %599, %531 ]
  %632 = phi i64 [ %516, %513 ], [ %583, %531 ]
  %633 = phi i64 [ %515, %513 ], [ %579, %531 ]
  %634 = phi i64 [ %514, %513 ], [ %563, %531 ]
  %635 = load i64, ptr %481, align 1
  %636 = lshr i64 %627, 47
  %637 = xor i64 %635, %636
  %638 = xor i64 %637, %627
  %639 = mul i64 %638, 2654435761
  store i64 %639, ptr %0, align 8, !alias.scope !268, !noalias !271
  %640 = load i64, ptr %482, align 1
  %641 = lshr i64 %634, 47
  %642 = xor i64 %640, %641
  %643 = xor i64 %642, %634
  %644 = mul i64 %643, 2654435761
  store i64 %644, ptr %483, align 8, !alias.scope !268, !noalias !271
  %645 = load i64, ptr %484, align 1
  %646 = lshr i64 %633, 47
  %647 = xor i64 %645, %646
  %648 = xor i64 %647, %633
  %649 = mul i64 %648, 2654435761
  store i64 %649, ptr %485, align 8, !alias.scope !268, !noalias !271
  %650 = load i64, ptr %486, align 1
  %651 = lshr i64 %632, 47
  %652 = xor i64 %650, %651
  %653 = xor i64 %652, %632
  %654 = mul i64 %653, 2654435761
  store i64 %654, ptr %487, align 8, !alias.scope !268, !noalias !271
  %655 = load i64, ptr %488, align 1
  %656 = lshr i64 %631, 47
  %657 = xor i64 %655, %656
  %658 = xor i64 %657, %631
  %659 = mul i64 %658, 2654435761
  store i64 %659, ptr %489, align 8, !alias.scope !268, !noalias !271
  %660 = load i64, ptr %490, align 1
  %661 = lshr i64 %630, 47
  %662 = xor i64 %660, %661
  %663 = xor i64 %662, %630
  %664 = mul i64 %663, 2654435761
  store i64 %664, ptr %491, align 8, !alias.scope !268, !noalias !271
  %665 = load i64, ptr %492, align 1
  %666 = lshr i64 %629, 47
  %667 = xor i64 %665, %666
  %668 = xor i64 %667, %629
  %669 = mul i64 %668, 2654435761
  store i64 %669, ptr %493, align 8, !alias.scope !268, !noalias !271
  %670 = load i64, ptr %494, align 1
  %671 = lshr i64 %628, 47
  %672 = xor i64 %670, %671
  %673 = xor i64 %672, %628
  %674 = mul i64 %673, 2654435761
  store i64 %674, ptr %495, align 8, !alias.scope !268, !noalias !271
  %675 = shl nuw nsw i64 %506, 6
  %676 = getelementptr inbounds nuw i8, ptr %505, i64 %675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %677 = icmp eq i64 %506, 4
  br i1 %677, label %881, label %678

678:                                              ; preds = %626, %678
  %679 = phi i64 [ %706, %678 ], [ %639, %626 ]
  %680 = phi i64 [ %710, %678 ], [ %644, %626 ]
  %681 = phi i64 [ %766, %678 ], [ %669, %626 ]
  %682 = phi i64 [ %770, %678 ], [ %674, %626 ]
  %683 = phi i64 [ %746, %678 ], [ %659, %626 ]
  %684 = phi i64 [ %750, %678 ], [ %664, %626 ]
  %685 = phi i64 [ %726, %678 ], [ %649, %626 ]
  %686 = phi i64 [ %730, %678 ], [ %654, %626 ]
  %687 = phi i64 [ %771, %678 ], [ 0, %626 ]
  %688 = shl i64 %687, 6
  %689 = getelementptr inbounds nuw i8, ptr %676, i64 %688
  %690 = getelementptr inbounds nuw i8, ptr %689, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %690, i32 0, i32 3, i32 1), !noalias !285
  %691 = shl i64 %687, 3
  %692 = getelementptr inbounds nuw i8, ptr %11, i64 %691
  %693 = load i64, ptr %689, align 1
  %694 = load i64, ptr %692, align 1
  %695 = xor i64 %694, %693
  %696 = add i64 %680, %693
  store i64 %696, ptr %483, align 8, !alias.scope !286, !noalias !289
  %697 = and i64 %695, 4294967295
  %698 = lshr i64 %695, 32
  %699 = mul nuw i64 %697, %698
  %700 = add i64 %679, %699
  store i64 %700, ptr %0, align 8, !alias.scope !286, !noalias !289
  %701 = getelementptr inbounds nuw i8, ptr %689, i64 8
  %702 = load i64, ptr %701, align 1
  %703 = getelementptr inbounds nuw i8, ptr %692, i64 8
  %704 = load i64, ptr %703, align 1
  %705 = xor i64 %704, %702
  %706 = add i64 %700, %702
  store i64 %706, ptr %0, align 8, !alias.scope !286, !noalias !289
  %707 = and i64 %705, 4294967295
  %708 = lshr i64 %705, 32
  %709 = mul nuw i64 %707, %708
  %710 = add i64 %696, %709
  store i64 %710, ptr %483, align 8, !alias.scope !286, !noalias !289
  %711 = getelementptr inbounds nuw i8, ptr %689, i64 16
  %712 = load i64, ptr %711, align 1
  %713 = getelementptr inbounds nuw i8, ptr %692, i64 16
  %714 = load i64, ptr %713, align 1
  %715 = xor i64 %714, %712
  %716 = add i64 %686, %712
  store i64 %716, ptr %487, align 8, !alias.scope !286, !noalias !289
  %717 = and i64 %715, 4294967295
  %718 = lshr i64 %715, 32
  %719 = mul nuw i64 %717, %718
  %720 = add i64 %685, %719
  store i64 %720, ptr %485, align 8, !alias.scope !286, !noalias !289
  %721 = getelementptr inbounds nuw i8, ptr %689, i64 24
  %722 = load i64, ptr %721, align 1
  %723 = getelementptr inbounds nuw i8, ptr %692, i64 24
  %724 = load i64, ptr %723, align 1
  %725 = xor i64 %724, %722
  %726 = add i64 %720, %722
  store i64 %726, ptr %485, align 8, !alias.scope !286, !noalias !289
  %727 = and i64 %725, 4294967295
  %728 = lshr i64 %725, 32
  %729 = mul nuw i64 %727, %728
  %730 = add i64 %716, %729
  store i64 %730, ptr %487, align 8, !alias.scope !286, !noalias !289
  %731 = getelementptr inbounds nuw i8, ptr %689, i64 32
  %732 = load i64, ptr %731, align 1
  %733 = getelementptr inbounds nuw i8, ptr %692, i64 32
  %734 = load i64, ptr %733, align 1
  %735 = xor i64 %734, %732
  %736 = add i64 %684, %732
  store i64 %736, ptr %491, align 8, !alias.scope !286, !noalias !289
  %737 = and i64 %735, 4294967295
  %738 = lshr i64 %735, 32
  %739 = mul nuw i64 %737, %738
  %740 = add i64 %683, %739
  store i64 %740, ptr %489, align 8, !alias.scope !286, !noalias !289
  %741 = getelementptr inbounds nuw i8, ptr %689, i64 40
  %742 = load i64, ptr %741, align 1
  %743 = getelementptr inbounds nuw i8, ptr %692, i64 40
  %744 = load i64, ptr %743, align 1
  %745 = xor i64 %744, %742
  %746 = add i64 %740, %742
  store i64 %746, ptr %489, align 8, !alias.scope !286, !noalias !289
  %747 = and i64 %745, 4294967295
  %748 = lshr i64 %745, 32
  %749 = mul nuw i64 %747, %748
  %750 = add i64 %736, %749
  store i64 %750, ptr %491, align 8, !alias.scope !286, !noalias !289
  %751 = getelementptr inbounds nuw i8, ptr %689, i64 48
  %752 = load i64, ptr %751, align 1
  %753 = getelementptr inbounds nuw i8, ptr %692, i64 48
  %754 = load i64, ptr %753, align 1
  %755 = xor i64 %754, %752
  %756 = add i64 %682, %752
  store i64 %756, ptr %495, align 8, !alias.scope !286, !noalias !289
  %757 = and i64 %755, 4294967295
  %758 = lshr i64 %755, 32
  %759 = mul nuw i64 %757, %758
  %760 = add i64 %681, %759
  store i64 %760, ptr %493, align 8, !alias.scope !286, !noalias !289
  %761 = getelementptr inbounds nuw i8, ptr %689, i64 56
  %762 = load i64, ptr %761, align 1
  %763 = getelementptr inbounds nuw i8, ptr %692, i64 56
  %764 = load i64, ptr %763, align 1
  %765 = xor i64 %764, %762
  %766 = add i64 %760, %762
  store i64 %766, ptr %493, align 8, !alias.scope !286, !noalias !289
  %767 = and i64 %765, 4294967295
  %768 = lshr i64 %765, 32
  %769 = mul nuw i64 %767, %768
  %770 = add i64 %756, %769
  store i64 %770, ptr %495, align 8, !alias.scope !286, !noalias !289
  %771 = add nuw i64 %687, 1
  %772 = icmp eq i64 %771, %509
  br i1 %772, label %881, label %678

773:                                              ; preds = %503
  %774 = shl i64 %504, 3
  %775 = getelementptr inbounds nuw i8, ptr %11, i64 %774
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %776 = load i64, ptr %496, align 8, !alias.scope !297, !noalias !300
  %777 = load i64, ptr %497, align 8, !alias.scope !297, !noalias !300
  %778 = load i64, ptr %498, align 8, !alias.scope !297, !noalias !300
  %779 = load i64, ptr %499, align 8, !alias.scope !297, !noalias !300
  %780 = load i64, ptr %500, align 8, !alias.scope !297, !noalias !300
  %781 = load i64, ptr %501, align 8, !alias.scope !297, !noalias !300
  %782 = load i64, ptr %0, align 8, !alias.scope !297, !noalias !300
  %783 = load i64, ptr %502, align 8, !alias.scope !297, !noalias !300
  br label %784

784:                                              ; preds = %773, %784
  %785 = phi i64 [ %783, %773 ], [ %872, %784 ]
  %786 = phi i64 [ %782, %773 ], [ %812, %784 ]
  %787 = phi i64 [ %781, %773 ], [ %816, %784 ]
  %788 = phi i64 [ %780, %773 ], [ %876, %784 ]
  %789 = phi i64 [ %779, %773 ], [ %852, %784 ]
  %790 = phi i64 [ %778, %773 ], [ %856, %784 ]
  %791 = phi i64 [ %777, %773 ], [ %832, %784 ]
  %792 = phi i64 [ %776, %773 ], [ %836, %784 ]
  %793 = phi i64 [ 0, %773 ], [ %877, %784 ]
  %794 = shl nuw nsw i64 %793, 6
  %795 = getelementptr inbounds nuw i8, ptr %505, i64 %794
  %796 = getelementptr inbounds nuw i8, ptr %795, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %796, i32 0, i32 3, i32 1), !noalias !305
  %797 = shl nuw nsw i64 %793, 3
  %798 = getelementptr inbounds nuw i8, ptr %775, i64 %797
  %799 = load i64, ptr %795, align 1
  %800 = load i64, ptr %798, align 1
  %801 = xor i64 %800, %799
  %802 = add i64 %787, %799
  store i64 %802, ptr %501, align 8, !alias.scope !297, !noalias !300
  %803 = and i64 %801, 4294967295
  %804 = lshr i64 %801, 32
  %805 = mul nuw i64 %803, %804
  %806 = add i64 %786, %805
  store i64 %806, ptr %0, align 8, !alias.scope !297, !noalias !300
  %807 = getelementptr inbounds nuw i8, ptr %795, i64 8
  %808 = load i64, ptr %807, align 1
  %809 = getelementptr inbounds nuw i8, ptr %798, i64 8
  %810 = load i64, ptr %809, align 1
  %811 = xor i64 %810, %808
  %812 = add i64 %806, %808
  store i64 %812, ptr %0, align 8, !alias.scope !297, !noalias !300
  %813 = and i64 %811, 4294967295
  %814 = lshr i64 %811, 32
  %815 = mul nuw i64 %813, %814
  %816 = add i64 %802, %815
  store i64 %816, ptr %501, align 8, !alias.scope !297, !noalias !300
  %817 = getelementptr inbounds nuw i8, ptr %795, i64 16
  %818 = load i64, ptr %817, align 1
  %819 = getelementptr inbounds nuw i8, ptr %798, i64 16
  %820 = load i64, ptr %819, align 1
  %821 = xor i64 %820, %818
  %822 = add i64 %792, %818
  store i64 %822, ptr %496, align 8, !alias.scope !297, !noalias !300
  %823 = and i64 %821, 4294967295
  %824 = lshr i64 %821, 32
  %825 = mul nuw i64 %823, %824
  %826 = add i64 %791, %825
  store i64 %826, ptr %497, align 8, !alias.scope !297, !noalias !300
  %827 = getelementptr inbounds nuw i8, ptr %795, i64 24
  %828 = load i64, ptr %827, align 1
  %829 = getelementptr inbounds nuw i8, ptr %798, i64 24
  %830 = load i64, ptr %829, align 1
  %831 = xor i64 %830, %828
  %832 = add i64 %826, %828
  store i64 %832, ptr %497, align 8, !alias.scope !297, !noalias !300
  %833 = and i64 %831, 4294967295
  %834 = lshr i64 %831, 32
  %835 = mul nuw i64 %833, %834
  %836 = add i64 %822, %835
  store i64 %836, ptr %496, align 8, !alias.scope !297, !noalias !300
  %837 = getelementptr inbounds nuw i8, ptr %795, i64 32
  %838 = load i64, ptr %837, align 1
  %839 = getelementptr inbounds nuw i8, ptr %798, i64 32
  %840 = load i64, ptr %839, align 1
  %841 = xor i64 %840, %838
  %842 = add i64 %790, %838
  store i64 %842, ptr %498, align 8, !alias.scope !297, !noalias !300
  %843 = and i64 %841, 4294967295
  %844 = lshr i64 %841, 32
  %845 = mul nuw i64 %843, %844
  %846 = add i64 %789, %845
  store i64 %846, ptr %499, align 8, !alias.scope !297, !noalias !300
  %847 = getelementptr inbounds nuw i8, ptr %795, i64 40
  %848 = load i64, ptr %847, align 1
  %849 = getelementptr inbounds nuw i8, ptr %798, i64 40
  %850 = load i64, ptr %849, align 1
  %851 = xor i64 %850, %848
  %852 = add i64 %846, %848
  store i64 %852, ptr %499, align 8, !alias.scope !297, !noalias !300
  %853 = and i64 %851, 4294967295
  %854 = lshr i64 %851, 32
  %855 = mul nuw i64 %853, %854
  %856 = add i64 %842, %855
  store i64 %856, ptr %498, align 8, !alias.scope !297, !noalias !300
  %857 = getelementptr inbounds nuw i8, ptr %795, i64 48
  %858 = load i64, ptr %857, align 1
  %859 = getelementptr inbounds nuw i8, ptr %798, i64 48
  %860 = load i64, ptr %859, align 1
  %861 = xor i64 %860, %858
  %862 = add i64 %788, %858
  store i64 %862, ptr %500, align 8, !alias.scope !297, !noalias !300
  %863 = and i64 %861, 4294967295
  %864 = lshr i64 %861, 32
  %865 = mul nuw i64 %863, %864
  %866 = add i64 %785, %865
  store i64 %866, ptr %502, align 8, !alias.scope !297, !noalias !300
  %867 = getelementptr inbounds nuw i8, ptr %795, i64 56
  %868 = load i64, ptr %867, align 1
  %869 = getelementptr inbounds nuw i8, ptr %798, i64 56
  %870 = load i64, ptr %869, align 1
  %871 = xor i64 %870, %868
  %872 = add i64 %866, %868
  store i64 %872, ptr %502, align 8, !alias.scope !297, !noalias !300
  %873 = and i64 %871, 4294967295
  %874 = lshr i64 %871, 32
  %875 = mul nuw i64 %873, %874
  %876 = add i64 %862, %875
  store i64 %876, ptr %500, align 8, !alias.scope !297, !noalias !300
  %877 = add nuw nsw i64 %793, 1
  %878 = icmp eq i64 %877, 4
  br i1 %878, label %879, label %784

879:                                              ; preds = %784
  %880 = add i64 %504, 4
  br label %881

881:                                              ; preds = %678, %626, %879
  %882 = phi i64 [ %880, %879 ], [ 0, %626 ], [ %509, %678 ]
  store i64 %882, ptr %461, align 8, !alias.scope !257, !noalias !260
  %883 = getelementptr inbounds nuw i8, ptr %505, i64 256
  %884 = icmp ult ptr %883, %460
  br i1 %884, label %503, label %885

885:                                              ; preds = %881
  %886 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %887 = getelementptr inbounds nuw i8, ptr %505, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %886, ptr noundef nonnull align 1 dereferenceable(64) %887, i64 64, i1 false)
  %888 = ptrtoint ptr %883 to i64
  %889 = sub i64 %455, %888
  br label %890

890:                                              ; preds = %885, %453
  %891 = phi i64 [ %889, %885 ], [ %457, %453 ]
  %892 = phi ptr [ %883, %885 ], [ %454, %453 ]
  %893 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %893, ptr nonnull readonly align 1 %892, i64 %891, i1 false)
  %894 = trunc i64 %891 to i32
  br label %895

895:                                              ; preds = %890, %20
  %896 = phi i32 [ %894, %890 ], [ %25, %20 ]
  store i32 %896, ptr %15, align 64
  br label %897

897:                                              ; preds = %3, %895
  %898 = phi i32 [ 1, %3 ], [ 0, %895 ]
  ret i32 %898
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits_digest(ptr noundef readonly %0) local_unnamed_addr #18 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = select i1 %5, ptr %6, ptr %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %9 = load i64, ptr %8, align 16
  %10 = icmp ugt i64 %9, 240
  br i1 %10, label %11, label %711

11:                                               ; preds = %1
  %12 = load i64, ptr %0, align 64
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load i64, ptr %15, align 16
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %20 = load i64, ptr %19, align 32
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %24 = load i64, ptr %23, align 16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %28 = load i32, ptr %27, align 64
  %29 = icmp ugt i32 %28, 63
  br i1 %29, label %30, label %491

30:                                               ; preds = %11
  %31 = add i32 %28, -1
  %32 = lshr i32 %31, 6
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %40 = load i64, ptr %39, align 32
  %41 = sub i64 %37, %35
  %42 = icmp ugt i64 %41, %33
  br i1 %42, label %298, label %43

43:                                               ; preds = %30
  %44 = sub nuw nsw i64 %33, %41
  %45 = shl i64 %35, 3
  %46 = getelementptr inbounds nuw i8, ptr %7, i64 %45
  %47 = icmp eq i64 %37, %35
  br i1 %47, label %143, label %48

48:                                               ; preds = %43, %48
  %49 = phi i64 [ %140, %48 ], [ %26, %43 ]
  %50 = phi i64 [ %136, %48 ], [ %24, %43 ]
  %51 = phi i64 [ %120, %48 ], [ %22, %43 ]
  %52 = phi i64 [ %116, %48 ], [ %20, %43 ]
  %53 = phi i64 [ %100, %48 ], [ %18, %43 ]
  %54 = phi i64 [ %96, %48 ], [ %16, %43 ]
  %55 = phi i64 [ %80, %48 ], [ %14, %43 ]
  %56 = phi i64 [ %76, %48 ], [ %12, %43 ]
  %57 = phi i64 [ %141, %48 ], [ 0, %43 ]
  %58 = shl i64 %57, 6
  %59 = getelementptr inbounds nuw i8, ptr %38, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %60, i32 0, i32 3, i32 1), !noalias !306
  %61 = shl i64 %57, 3
  %62 = getelementptr inbounds nuw i8, ptr %46, i64 %61
  %63 = load i64, ptr %59, align 1
  %64 = load i64, ptr %62, align 1
  %65 = xor i64 %64, %63
  %66 = add i64 %55, %63
  %67 = and i64 %65, 4294967295
  %68 = lshr i64 %65, 32
  %69 = mul nuw i64 %67, %68
  %70 = add i64 %56, %69
  %71 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %72 = load i64, ptr %71, align 1
  %73 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %74 = load i64, ptr %73, align 1
  %75 = xor i64 %74, %72
  %76 = add i64 %70, %72
  %77 = and i64 %75, 4294967295
  %78 = lshr i64 %75, 32
  %79 = mul nuw i64 %77, %78
  %80 = add i64 %66, %79
  %81 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = add i64 %53, %82
  %87 = and i64 %85, 4294967295
  %88 = lshr i64 %85, 32
  %89 = mul nuw i64 %87, %88
  %90 = add i64 %54, %89
  %91 = getelementptr inbounds nuw i8, ptr %59, i64 24
  %92 = load i64, ptr %91, align 1
  %93 = getelementptr inbounds nuw i8, ptr %62, i64 24
  %94 = load i64, ptr %93, align 1
  %95 = xor i64 %94, %92
  %96 = add i64 %90, %92
  %97 = and i64 %95, 4294967295
  %98 = lshr i64 %95, 32
  %99 = mul nuw i64 %97, %98
  %100 = add i64 %86, %99
  %101 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %102 = load i64, ptr %101, align 1
  %103 = getelementptr inbounds nuw i8, ptr %62, i64 32
  %104 = load i64, ptr %103, align 1
  %105 = xor i64 %104, %102
  %106 = add i64 %51, %102
  %107 = and i64 %105, 4294967295
  %108 = lshr i64 %105, 32
  %109 = mul nuw i64 %107, %108
  %110 = add i64 %52, %109
  %111 = getelementptr inbounds nuw i8, ptr %59, i64 40
  %112 = load i64, ptr %111, align 1
  %113 = getelementptr inbounds nuw i8, ptr %62, i64 40
  %114 = load i64, ptr %113, align 1
  %115 = xor i64 %114, %112
  %116 = add i64 %110, %112
  %117 = and i64 %115, 4294967295
  %118 = lshr i64 %115, 32
  %119 = mul nuw i64 %117, %118
  %120 = add i64 %106, %119
  %121 = getelementptr inbounds nuw i8, ptr %59, i64 48
  %122 = load i64, ptr %121, align 1
  %123 = getelementptr inbounds nuw i8, ptr %62, i64 48
  %124 = load i64, ptr %123, align 1
  %125 = xor i64 %124, %122
  %126 = add i64 %49, %122
  %127 = and i64 %125, 4294967295
  %128 = lshr i64 %125, 32
  %129 = mul nuw i64 %127, %128
  %130 = add i64 %50, %129
  %131 = getelementptr inbounds nuw i8, ptr %59, i64 56
  %132 = load i64, ptr %131, align 1
  %133 = getelementptr inbounds nuw i8, ptr %62, i64 56
  %134 = load i64, ptr %133, align 1
  %135 = xor i64 %134, %132
  %136 = add i64 %130, %132
  %137 = and i64 %135, 4294967295
  %138 = lshr i64 %135, 32
  %139 = mul nuw i64 %137, %138
  %140 = add i64 %126, %139
  %141 = add nuw i64 %57, 1
  %142 = icmp eq i64 %141, %41
  br i1 %142, label %143, label %48

143:                                              ; preds = %48, %43
  %144 = phi i64 [ %26, %43 ], [ %140, %48 ]
  %145 = phi i64 [ %24, %43 ], [ %136, %48 ]
  %146 = phi i64 [ %22, %43 ], [ %120, %48 ]
  %147 = phi i64 [ %20, %43 ], [ %116, %48 ]
  %148 = phi i64 [ %18, %43 ], [ %100, %48 ]
  %149 = phi i64 [ %16, %43 ], [ %96, %48 ]
  %150 = phi i64 [ %14, %43 ], [ %80, %48 ]
  %151 = phi i64 [ %12, %43 ], [ %76, %48 ]
  %152 = getelementptr inbounds nuw i8, ptr %7, i64 %40
  %153 = load i64, ptr %152, align 1
  %154 = lshr i64 %151, 47
  %155 = xor i64 %153, %154
  %156 = xor i64 %155, %151
  %157 = mul i64 %156, 2654435761
  %158 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %159 = load i64, ptr %158, align 1
  %160 = lshr i64 %150, 47
  %161 = xor i64 %159, %160
  %162 = xor i64 %161, %150
  %163 = mul i64 %162, 2654435761
  %164 = getelementptr inbounds nuw i8, ptr %152, i64 16
  %165 = load i64, ptr %164, align 1
  %166 = lshr i64 %149, 47
  %167 = xor i64 %165, %166
  %168 = xor i64 %167, %149
  %169 = mul i64 %168, 2654435761
  %170 = getelementptr inbounds nuw i8, ptr %152, i64 24
  %171 = load i64, ptr %170, align 1
  %172 = lshr i64 %148, 47
  %173 = xor i64 %171, %172
  %174 = xor i64 %173, %148
  %175 = mul i64 %174, 2654435761
  %176 = getelementptr inbounds nuw i8, ptr %152, i64 32
  %177 = load i64, ptr %176, align 1
  %178 = lshr i64 %147, 47
  %179 = xor i64 %177, %178
  %180 = xor i64 %179, %147
  %181 = mul i64 %180, 2654435761
  %182 = getelementptr inbounds nuw i8, ptr %152, i64 40
  %183 = load i64, ptr %182, align 1
  %184 = lshr i64 %146, 47
  %185 = xor i64 %183, %184
  %186 = xor i64 %185, %146
  %187 = mul i64 %186, 2654435761
  %188 = getelementptr inbounds nuw i8, ptr %152, i64 48
  %189 = load i64, ptr %188, align 1
  %190 = lshr i64 %145, 47
  %191 = xor i64 %189, %190
  %192 = xor i64 %191, %145
  %193 = mul i64 %192, 2654435761
  %194 = getelementptr inbounds nuw i8, ptr %152, i64 56
  %195 = load i64, ptr %194, align 1
  %196 = lshr i64 %144, 47
  %197 = xor i64 %195, %196
  %198 = xor i64 %197, %144
  %199 = mul i64 %198, 2654435761
  %200 = shl nuw nsw i64 %41, 6
  %201 = getelementptr inbounds nuw i8, ptr %38, i64 %200
  %202 = icmp eq i64 %41, %33
  br i1 %202, label %399, label %203

203:                                              ; preds = %143, %203
  %204 = phi i64 [ %295, %203 ], [ %199, %143 ]
  %205 = phi i64 [ %291, %203 ], [ %193, %143 ]
  %206 = phi i64 [ %275, %203 ], [ %187, %143 ]
  %207 = phi i64 [ %271, %203 ], [ %181, %143 ]
  %208 = phi i64 [ %255, %203 ], [ %175, %143 ]
  %209 = phi i64 [ %251, %203 ], [ %169, %143 ]
  %210 = phi i64 [ %235, %203 ], [ %163, %143 ]
  %211 = phi i64 [ %231, %203 ], [ %157, %143 ]
  %212 = phi i64 [ %296, %203 ], [ 0, %143 ]
  %213 = shl i64 %212, 6
  %214 = getelementptr inbounds nuw i8, ptr %201, i64 %213
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %215, i32 0, i32 3, i32 1), !noalias !312
  %216 = shl i64 %212, 3
  %217 = getelementptr inbounds nuw i8, ptr %7, i64 %216
  %218 = load i64, ptr %214, align 1
  %219 = load i64, ptr %217, align 1
  %220 = xor i64 %219, %218
  %221 = add i64 %210, %218
  %222 = and i64 %220, 4294967295
  %223 = lshr i64 %220, 32
  %224 = mul nuw i64 %222, %223
  %225 = add i64 %211, %224
  %226 = getelementptr inbounds nuw i8, ptr %214, i64 8
  %227 = load i64, ptr %226, align 1
  %228 = getelementptr inbounds nuw i8, ptr %217, i64 8
  %229 = load i64, ptr %228, align 1
  %230 = xor i64 %229, %227
  %231 = add i64 %225, %227
  %232 = and i64 %230, 4294967295
  %233 = lshr i64 %230, 32
  %234 = mul nuw i64 %232, %233
  %235 = add i64 %221, %234
  %236 = getelementptr inbounds nuw i8, ptr %214, i64 16
  %237 = load i64, ptr %236, align 1
  %238 = getelementptr inbounds nuw i8, ptr %217, i64 16
  %239 = load i64, ptr %238, align 1
  %240 = xor i64 %239, %237
  %241 = add i64 %208, %237
  %242 = and i64 %240, 4294967295
  %243 = lshr i64 %240, 32
  %244 = mul nuw i64 %242, %243
  %245 = add i64 %209, %244
  %246 = getelementptr inbounds nuw i8, ptr %214, i64 24
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %217, i64 24
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = add i64 %245, %247
  %252 = and i64 %250, 4294967295
  %253 = lshr i64 %250, 32
  %254 = mul nuw i64 %252, %253
  %255 = add i64 %241, %254
  %256 = getelementptr inbounds nuw i8, ptr %214, i64 32
  %257 = load i64, ptr %256, align 1
  %258 = getelementptr inbounds nuw i8, ptr %217, i64 32
  %259 = load i64, ptr %258, align 1
  %260 = xor i64 %259, %257
  %261 = add i64 %206, %257
  %262 = and i64 %260, 4294967295
  %263 = lshr i64 %260, 32
  %264 = mul nuw i64 %262, %263
  %265 = add i64 %207, %264
  %266 = getelementptr inbounds nuw i8, ptr %214, i64 40
  %267 = load i64, ptr %266, align 1
  %268 = getelementptr inbounds nuw i8, ptr %217, i64 40
  %269 = load i64, ptr %268, align 1
  %270 = xor i64 %269, %267
  %271 = add i64 %265, %267
  %272 = and i64 %270, 4294967295
  %273 = lshr i64 %270, 32
  %274 = mul nuw i64 %272, %273
  %275 = add i64 %261, %274
  %276 = getelementptr inbounds nuw i8, ptr %214, i64 48
  %277 = load i64, ptr %276, align 1
  %278 = getelementptr inbounds nuw i8, ptr %217, i64 48
  %279 = load i64, ptr %278, align 1
  %280 = xor i64 %279, %277
  %281 = add i64 %204, %277
  %282 = and i64 %280, 4294967295
  %283 = lshr i64 %280, 32
  %284 = mul nuw i64 %282, %283
  %285 = add i64 %205, %284
  %286 = getelementptr inbounds nuw i8, ptr %214, i64 56
  %287 = load i64, ptr %286, align 1
  %288 = getelementptr inbounds nuw i8, ptr %217, i64 56
  %289 = load i64, ptr %288, align 1
  %290 = xor i64 %289, %287
  %291 = add i64 %285, %287
  %292 = and i64 %290, 4294967295
  %293 = lshr i64 %290, 32
  %294 = mul nuw i64 %292, %293
  %295 = add i64 %281, %294
  %296 = add nuw i64 %212, 1
  %297 = icmp eq i64 %296, %44
  br i1 %297, label %399, label %203

298:                                              ; preds = %30
  %299 = shl i64 %35, 3
  %300 = getelementptr inbounds nuw i8, ptr %7, i64 %299
  %301 = icmp eq i32 %28, 64
  br i1 %301, label %399, label %302

302:                                              ; preds = %298
  %303 = tail call i64 @llvm.umax.i64(i64 %33, i64 1)
  br label %304

304:                                              ; preds = %302, %304
  %305 = phi i64 [ %26, %302 ], [ %396, %304 ]
  %306 = phi i64 [ %24, %302 ], [ %392, %304 ]
  %307 = phi i64 [ %22, %302 ], [ %376, %304 ]
  %308 = phi i64 [ %20, %302 ], [ %372, %304 ]
  %309 = phi i64 [ %18, %302 ], [ %356, %304 ]
  %310 = phi i64 [ %16, %302 ], [ %352, %304 ]
  %311 = phi i64 [ %14, %302 ], [ %336, %304 ]
  %312 = phi i64 [ %12, %302 ], [ %332, %304 ]
  %313 = phi i64 [ 0, %302 ], [ %397, %304 ]
  %314 = shl i64 %313, 6
  %315 = getelementptr inbounds nuw i8, ptr %38, i64 %314
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %316, i32 0, i32 3, i32 1), !noalias !315
  %317 = shl i64 %313, 3
  %318 = getelementptr inbounds nuw i8, ptr %300, i64 %317
  %319 = load i64, ptr %315, align 1
  %320 = load i64, ptr %318, align 1
  %321 = xor i64 %320, %319
  %322 = add i64 %311, %319
  %323 = and i64 %321, 4294967295
  %324 = lshr i64 %321, 32
  %325 = mul nuw i64 %323, %324
  %326 = add i64 %312, %325
  %327 = getelementptr inbounds nuw i8, ptr %315, i64 8
  %328 = load i64, ptr %327, align 1
  %329 = getelementptr inbounds nuw i8, ptr %318, i64 8
  %330 = load i64, ptr %329, align 1
  %331 = xor i64 %330, %328
  %332 = add i64 %326, %328
  %333 = and i64 %331, 4294967295
  %334 = lshr i64 %331, 32
  %335 = mul nuw i64 %333, %334
  %336 = add i64 %322, %335
  %337 = getelementptr inbounds nuw i8, ptr %315, i64 16
  %338 = load i64, ptr %337, align 1
  %339 = getelementptr inbounds nuw i8, ptr %318, i64 16
  %340 = load i64, ptr %339, align 1
  %341 = xor i64 %340, %338
  %342 = add i64 %309, %338
  %343 = and i64 %341, 4294967295
  %344 = lshr i64 %341, 32
  %345 = mul nuw i64 %343, %344
  %346 = add i64 %310, %345
  %347 = getelementptr inbounds nuw i8, ptr %315, i64 24
  %348 = load i64, ptr %347, align 1
  %349 = getelementptr inbounds nuw i8, ptr %318, i64 24
  %350 = load i64, ptr %349, align 1
  %351 = xor i64 %350, %348
  %352 = add i64 %346, %348
  %353 = and i64 %351, 4294967295
  %354 = lshr i64 %351, 32
  %355 = mul nuw i64 %353, %354
  %356 = add i64 %342, %355
  %357 = getelementptr inbounds nuw i8, ptr %315, i64 32
  %358 = load i64, ptr %357, align 1
  %359 = getelementptr inbounds nuw i8, ptr %318, i64 32
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %358
  %362 = add i64 %307, %358
  %363 = and i64 %361, 4294967295
  %364 = lshr i64 %361, 32
  %365 = mul nuw i64 %363, %364
  %366 = add i64 %308, %365
  %367 = getelementptr inbounds nuw i8, ptr %315, i64 40
  %368 = load i64, ptr %367, align 1
  %369 = getelementptr inbounds nuw i8, ptr %318, i64 40
  %370 = load i64, ptr %369, align 1
  %371 = xor i64 %370, %368
  %372 = add i64 %366, %368
  %373 = and i64 %371, 4294967295
  %374 = lshr i64 %371, 32
  %375 = mul nuw i64 %373, %374
  %376 = add i64 %362, %375
  %377 = getelementptr inbounds nuw i8, ptr %315, i64 48
  %378 = load i64, ptr %377, align 1
  %379 = getelementptr inbounds nuw i8, ptr %318, i64 48
  %380 = load i64, ptr %379, align 1
  %381 = xor i64 %380, %378
  %382 = add i64 %305, %378
  %383 = and i64 %381, 4294967295
  %384 = lshr i64 %381, 32
  %385 = mul nuw i64 %383, %384
  %386 = add i64 %306, %385
  %387 = getelementptr inbounds nuw i8, ptr %315, i64 56
  %388 = load i64, ptr %387, align 1
  %389 = getelementptr inbounds nuw i8, ptr %318, i64 56
  %390 = load i64, ptr %389, align 1
  %391 = xor i64 %390, %388
  %392 = add i64 %386, %388
  %393 = and i64 %391, 4294967295
  %394 = lshr i64 %391, 32
  %395 = mul nuw i64 %393, %394
  %396 = add i64 %382, %395
  %397 = add nuw nsw i64 %313, 1
  %398 = icmp eq i64 %397, %303
  br i1 %398, label %399, label %304

399:                                              ; preds = %203, %304, %143, %298
  %400 = phi i64 [ %26, %298 ], [ %199, %143 ], [ %396, %304 ], [ %295, %203 ]
  %401 = phi i64 [ %24, %298 ], [ %193, %143 ], [ %392, %304 ], [ %291, %203 ]
  %402 = phi i64 [ %22, %298 ], [ %187, %143 ], [ %376, %304 ], [ %275, %203 ]
  %403 = phi i64 [ %20, %298 ], [ %181, %143 ], [ %372, %304 ], [ %271, %203 ]
  %404 = phi i64 [ %18, %298 ], [ %175, %143 ], [ %356, %304 ], [ %255, %203 ]
  %405 = phi i64 [ %16, %298 ], [ %169, %143 ], [ %352, %304 ], [ %251, %203 ]
  %406 = phi i64 [ %14, %298 ], [ %163, %143 ], [ %336, %304 ], [ %235, %203 ]
  %407 = phi i64 [ %12, %298 ], [ %157, %143 ], [ %332, %304 ], [ %231, %203 ]
  %408 = zext i32 %28 to i64
  %409 = getelementptr inbounds nuw i8, ptr %38, i64 %408
  %410 = getelementptr inbounds i8, ptr %409, i64 -64
  %411 = getelementptr inbounds nuw i8, ptr %7, i64 %40
  %412 = getelementptr inbounds i8, ptr %411, i64 -7
  %413 = load i64, ptr %410, align 1
  %414 = load i64, ptr %412, align 1
  %415 = xor i64 %414, %413
  %416 = add i64 %406, %413
  %417 = and i64 %415, 4294967295
  %418 = lshr i64 %415, 32
  %419 = mul nuw i64 %417, %418
  %420 = add i64 %407, %419
  %421 = getelementptr inbounds i8, ptr %409, i64 -56
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %411, i64 1
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = add i64 %420, %422
  %427 = and i64 %425, 4294967295
  %428 = lshr i64 %425, 32
  %429 = mul nuw i64 %427, %428
  %430 = add i64 %416, %429
  %431 = getelementptr inbounds i8, ptr %409, i64 -48
  %432 = load i64, ptr %431, align 1
  %433 = getelementptr inbounds nuw i8, ptr %411, i64 9
  %434 = load i64, ptr %433, align 1
  %435 = xor i64 %434, %432
  %436 = add i64 %404, %432
  %437 = and i64 %435, 4294967295
  %438 = lshr i64 %435, 32
  %439 = mul nuw i64 %437, %438
  %440 = add i64 %405, %439
  %441 = getelementptr inbounds i8, ptr %409, i64 -40
  %442 = load i64, ptr %441, align 1
  %443 = getelementptr inbounds nuw i8, ptr %411, i64 17
  %444 = load i64, ptr %443, align 1
  %445 = xor i64 %444, %442
  %446 = add i64 %440, %442
  %447 = and i64 %445, 4294967295
  %448 = lshr i64 %445, 32
  %449 = mul nuw i64 %447, %448
  %450 = add i64 %436, %449
  %451 = getelementptr inbounds i8, ptr %409, i64 -32
  %452 = load i64, ptr %451, align 1
  %453 = getelementptr inbounds nuw i8, ptr %411, i64 25
  %454 = load i64, ptr %453, align 1
  %455 = xor i64 %454, %452
  %456 = add i64 %402, %452
  %457 = and i64 %455, 4294967295
  %458 = lshr i64 %455, 32
  %459 = mul nuw i64 %457, %458
  %460 = add i64 %403, %459
  %461 = getelementptr inbounds i8, ptr %409, i64 -24
  %462 = load i64, ptr %461, align 1
  %463 = getelementptr inbounds nuw i8, ptr %411, i64 33
  %464 = load i64, ptr %463, align 1
  %465 = xor i64 %464, %462
  %466 = add i64 %460, %462
  %467 = and i64 %465, 4294967295
  %468 = lshr i64 %465, 32
  %469 = mul nuw i64 %467, %468
  %470 = add i64 %456, %469
  %471 = getelementptr inbounds i8, ptr %409, i64 -16
  %472 = load i64, ptr %471, align 1
  %473 = getelementptr inbounds nuw i8, ptr %411, i64 41
  %474 = load i64, ptr %473, align 1
  %475 = xor i64 %474, %472
  %476 = add i64 %400, %472
  %477 = and i64 %475, 4294967295
  %478 = lshr i64 %475, 32
  %479 = mul nuw i64 %477, %478
  %480 = add i64 %401, %479
  %481 = getelementptr inbounds i8, ptr %409, i64 -8
  %482 = load i64, ptr %481, align 1
  %483 = getelementptr inbounds nuw i8, ptr %411, i64 49
  %484 = load i64, ptr %483, align 1
  %485 = xor i64 %484, %482
  %486 = add i64 %480, %482
  %487 = and i64 %485, 4294967295
  %488 = lshr i64 %485, 32
  %489 = mul nuw i64 %487, %488
  %490 = add i64 %476, %489
  br label %581

491:                                              ; preds = %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #27
  %492 = sub nuw nsw i32 64, %28
  %493 = zext nneg i32 %492 to i64
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %495 = sub nsw i64 0, %493
  %496 = getelementptr inbounds i8, ptr %27, i64 %495
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %496, i64 %493, i1 false)
  %497 = getelementptr inbounds nuw i8, ptr %2, i64 %493
  %498 = zext nneg i32 %28 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %497, ptr nonnull align 64 %494, i64 %498, i1 false)
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %500 = load i64, ptr %499, align 32
  %501 = getelementptr inbounds nuw i8, ptr %7, i64 %500
  %502 = getelementptr inbounds i8, ptr %501, i64 -7
  %503 = load i64, ptr %2, align 16
  %504 = load i64, ptr %502, align 1
  %505 = xor i64 %504, %503
  %506 = add i64 %14, %503
  %507 = and i64 %505, 4294967295
  %508 = lshr i64 %505, 32
  %509 = mul nuw i64 %507, %508
  %510 = add i64 %12, %509
  %511 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %512 = load i64, ptr %511, align 8
  %513 = getelementptr inbounds nuw i8, ptr %501, i64 1
  %514 = load i64, ptr %513, align 1
  %515 = xor i64 %514, %512
  %516 = add i64 %510, %512
  %517 = and i64 %515, 4294967295
  %518 = lshr i64 %515, 32
  %519 = mul nuw i64 %517, %518
  %520 = add i64 %506, %519
  %521 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %522 = load i64, ptr %521, align 16
  %523 = getelementptr inbounds nuw i8, ptr %501, i64 9
  %524 = load i64, ptr %523, align 1
  %525 = xor i64 %524, %522
  %526 = add i64 %18, %522
  %527 = and i64 %525, 4294967295
  %528 = lshr i64 %525, 32
  %529 = mul nuw i64 %527, %528
  %530 = add i64 %16, %529
  %531 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %532 = load i64, ptr %531, align 8
  %533 = getelementptr inbounds nuw i8, ptr %501, i64 17
  %534 = load i64, ptr %533, align 1
  %535 = xor i64 %534, %532
  %536 = add i64 %530, %532
  %537 = and i64 %535, 4294967295
  %538 = lshr i64 %535, 32
  %539 = mul nuw i64 %537, %538
  %540 = add i64 %526, %539
  %541 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %542 = load i64, ptr %541, align 16
  %543 = getelementptr inbounds nuw i8, ptr %501, i64 25
  %544 = load i64, ptr %543, align 1
  %545 = xor i64 %544, %542
  %546 = add i64 %22, %542
  %547 = and i64 %545, 4294967295
  %548 = lshr i64 %545, 32
  %549 = mul nuw i64 %547, %548
  %550 = add i64 %20, %549
  %551 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %552 = load i64, ptr %551, align 8
  %553 = getelementptr inbounds nuw i8, ptr %501, i64 33
  %554 = load i64, ptr %553, align 1
  %555 = xor i64 %554, %552
  %556 = add i64 %550, %552
  %557 = and i64 %555, 4294967295
  %558 = lshr i64 %555, 32
  %559 = mul nuw i64 %557, %558
  %560 = add i64 %546, %559
  %561 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %562 = load i64, ptr %561, align 16
  %563 = getelementptr inbounds nuw i8, ptr %501, i64 41
  %564 = load i64, ptr %563, align 1
  %565 = xor i64 %564, %562
  %566 = add i64 %26, %562
  %567 = and i64 %565, 4294967295
  %568 = lshr i64 %565, 32
  %569 = mul nuw i64 %567, %568
  %570 = add i64 %24, %569
  %571 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %572 = load i64, ptr %571, align 8
  %573 = getelementptr inbounds nuw i8, ptr %501, i64 49
  %574 = load i64, ptr %573, align 1
  %575 = xor i64 %574, %572
  %576 = add i64 %570, %572
  %577 = and i64 %575, 4294967295
  %578 = lshr i64 %575, 32
  %579 = mul nuw i64 %577, %578
  %580 = add i64 %566, %579
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #27
  br label %581

581:                                              ; preds = %399, %491
  %582 = phi i64 [ %40, %399 ], [ %500, %491 ]
  %583 = phi i64 [ %490, %399 ], [ %580, %491 ]
  %584 = phi i64 [ %486, %399 ], [ %576, %491 ]
  %585 = phi i64 [ %470, %399 ], [ %560, %491 ]
  %586 = phi i64 [ %466, %399 ], [ %556, %491 ]
  %587 = phi i64 [ %450, %399 ], [ %540, %491 ]
  %588 = phi i64 [ %446, %399 ], [ %536, %491 ]
  %589 = phi i64 [ %430, %399 ], [ %520, %491 ]
  %590 = phi i64 [ %426, %399 ], [ %516, %491 ]
  %591 = getelementptr inbounds nuw i8, ptr %7, i64 11
  %592 = mul i64 %9, -7046029288634856825
  %593 = load i64, ptr %591, align 1, !alias.scope !318, !noalias !321
  %594 = xor i64 %593, %590
  %595 = getelementptr inbounds nuw i8, ptr %7, i64 19
  %596 = load i64, ptr %595, align 1, !alias.scope !318, !noalias !321
  %597 = xor i64 %596, %589
  %598 = zext i64 %594 to i128
  %599 = zext i64 %597 to i128
  %600 = mul nuw i128 %599, %598
  %601 = lshr i128 %600, 64
  %602 = xor i128 %601, %600
  %603 = trunc i128 %602 to i64
  %604 = add i64 %592, %603
  %605 = getelementptr inbounds nuw i8, ptr %7, i64 27
  %606 = load i64, ptr %605, align 1, !alias.scope !318, !noalias !321
  %607 = xor i64 %606, %588
  %608 = getelementptr inbounds nuw i8, ptr %7, i64 35
  %609 = load i64, ptr %608, align 1, !alias.scope !318, !noalias !321
  %610 = xor i64 %609, %587
  %611 = zext i64 %607 to i128
  %612 = zext i64 %610 to i128
  %613 = mul nuw i128 %612, %611
  %614 = lshr i128 %613, 64
  %615 = xor i128 %614, %613
  %616 = trunc i128 %615 to i64
  %617 = add i64 %604, %616
  %618 = getelementptr inbounds nuw i8, ptr %7, i64 43
  %619 = load i64, ptr %618, align 1, !alias.scope !318, !noalias !321
  %620 = xor i64 %619, %586
  %621 = getelementptr inbounds nuw i8, ptr %7, i64 51
  %622 = load i64, ptr %621, align 1, !alias.scope !318, !noalias !321
  %623 = xor i64 %622, %585
  %624 = zext i64 %620 to i128
  %625 = zext i64 %623 to i128
  %626 = mul nuw i128 %625, %624
  %627 = lshr i128 %626, 64
  %628 = xor i128 %627, %626
  %629 = trunc i128 %628 to i64
  %630 = add i64 %617, %629
  %631 = getelementptr inbounds nuw i8, ptr %7, i64 59
  %632 = load i64, ptr %631, align 1, !alias.scope !318, !noalias !321
  %633 = xor i64 %632, %584
  %634 = getelementptr inbounds nuw i8, ptr %7, i64 67
  %635 = load i64, ptr %634, align 1, !alias.scope !318, !noalias !321
  %636 = xor i64 %635, %583
  %637 = zext i64 %633 to i128
  %638 = zext i64 %636 to i128
  %639 = mul nuw i128 %638, %637
  %640 = lshr i128 %639, 64
  %641 = xor i128 %640, %639
  %642 = trunc i128 %641 to i64
  %643 = add i64 %630, %642
  %644 = lshr i64 %643, 37
  %645 = xor i64 %644, %643
  %646 = mul i64 %645, 1609587791953885689
  %647 = lshr i64 %646, 32
  %648 = xor i64 %647, %646
  %649 = getelementptr inbounds nuw i8, ptr %7, i64 %582
  %650 = getelementptr inbounds i8, ptr %649, i64 -11
  %651 = mul i64 %9, -4417276706812531889
  %652 = xor i64 %651, -1
  %653 = load i64, ptr %650, align 1, !alias.scope !323, !noalias !326
  %654 = xor i64 %653, %590
  %655 = getelementptr inbounds i8, ptr %649, i64 -3
  %656 = load i64, ptr %655, align 1, !alias.scope !323, !noalias !326
  %657 = xor i64 %656, %589
  %658 = zext i64 %654 to i128
  %659 = zext i64 %657 to i128
  %660 = mul nuw i128 %659, %658
  %661 = lshr i128 %660, 64
  %662 = xor i128 %661, %660
  %663 = trunc i128 %662 to i64
  %664 = add i64 %663, %652
  %665 = getelementptr inbounds nuw i8, ptr %649, i64 5
  %666 = load i64, ptr %665, align 1, !alias.scope !323, !noalias !326
  %667 = xor i64 %666, %588
  %668 = getelementptr inbounds nuw i8, ptr %649, i64 13
  %669 = load i64, ptr %668, align 1, !alias.scope !323, !noalias !326
  %670 = xor i64 %669, %587
  %671 = zext i64 %667 to i128
  %672 = zext i64 %670 to i128
  %673 = mul nuw i128 %672, %671
  %674 = lshr i128 %673, 64
  %675 = xor i128 %674, %673
  %676 = trunc i128 %675 to i64
  %677 = add i64 %664, %676
  %678 = getelementptr inbounds nuw i8, ptr %649, i64 21
  %679 = load i64, ptr %678, align 1, !alias.scope !323, !noalias !326
  %680 = xor i64 %679, %586
  %681 = getelementptr inbounds nuw i8, ptr %649, i64 29
  %682 = load i64, ptr %681, align 1, !alias.scope !323, !noalias !326
  %683 = xor i64 %682, %585
  %684 = zext i64 %680 to i128
  %685 = zext i64 %683 to i128
  %686 = mul nuw i128 %685, %684
  %687 = lshr i128 %686, 64
  %688 = xor i128 %687, %686
  %689 = trunc i128 %688 to i64
  %690 = add i64 %677, %689
  %691 = getelementptr inbounds nuw i8, ptr %649, i64 37
  %692 = load i64, ptr %691, align 1, !alias.scope !323, !noalias !326
  %693 = xor i64 %692, %584
  %694 = getelementptr inbounds nuw i8, ptr %649, i64 45
  %695 = load i64, ptr %694, align 1, !alias.scope !323, !noalias !326
  %696 = xor i64 %695, %583
  %697 = zext i64 %693 to i128
  %698 = zext i64 %696 to i128
  %699 = mul nuw i128 %698, %697
  %700 = lshr i128 %699, 64
  %701 = xor i128 %700, %699
  %702 = trunc i128 %701 to i64
  %703 = add i64 %690, %702
  %704 = lshr i64 %703, 37
  %705 = xor i64 %704, %703
  %706 = mul i64 %705, 1609587791953885689
  %707 = lshr i64 %706, 32
  %708 = xor i64 %707, %706
  %709 = insertvalue { i64, i64 } poison, i64 %648, 0
  %710 = insertvalue { i64, i64 } %709, i64 %708, 1
  br label %723

711:                                              ; preds = %1
  %712 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %713 = load i64, ptr %712, align 8
  %714 = icmp eq i64 %713, 0
  %715 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %714, label %718, label %716

716:                                              ; preds = %711
  %717 = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef nonnull %715, i64 noundef %9, i64 noundef %713)
  br label %723

718:                                              ; preds = %711
  %719 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %720 = load i64, ptr %719, align 32
  %721 = add i64 %720, 64
  %722 = tail call { i64, i64 } @XXH3_128bits_withSecret(ptr noundef nonnull %715, i64 noundef %9, ptr noundef nonnull %7, i64 noundef %721)
  br label %723

723:                                              ; preds = %718, %716, %581
  %724 = phi { i64, i64 } [ %710, %581 ], [ %717, %716 ], [ %722, %718 ]
  ret { i64, i64 } %724
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @XXH128_isEqual(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #19 {
  %5 = alloca %struct.XXH128_hash_t, align 8
  %6 = alloca %struct.XXH128_hash_t, align 8
  store i64 %0, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %6, align 8
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %8, align 8
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef nonnull dereferenceable(16) %6, i64 16)
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @XXH128_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @llvm.ucmp.i32.i64(i64 %4, i64 %6)
  br label %14

10:                                               ; preds = %2
  %11 = load i64, ptr %1, align 8
  %12 = load i64, ptr %0, align 8
  %13 = tail call i32 @llvm.ucmp.i32.i64(i64 %12, i64 %11)
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %9, %8 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH128_hashFromCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i64, ptr %0, align 1
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = tail call noundef i64 @llvm.bswap.i64(i64 %5)
  %7 = insertvalue { i64, i64 } poison, i64 %6, 0
  %8 = insertvalue { i64, i64 } %7, i64 %3, 1
  ret { i64, i64 } %8
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias nocapture noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #22 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = trunc nuw nsw i64 %1 to i32
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %2, align 1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %3
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %5, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %26 = load i64, ptr %24, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 1
  %29 = load i64, ptr %25, align 1
  %30 = add i64 %29, %3
  %31 = xor i64 %30, %26
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = sub i64 %33, %3
  %35 = xor i64 %34, %28
  %36 = zext i64 %31 to i128
  %37 = zext i64 %35 to i128
  %38 = mul nuw i128 %37, %36
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = add i64 %23, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %45 = load i64, ptr %43, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %47 = load i64, ptr %46, align 1
  %48 = load i64, ptr %44, align 1
  %49 = add i64 %48, %3
  %50 = xor i64 %49, %45
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %52 = load i64, ptr %51, align 1
  %53 = sub i64 %52, %3
  %54 = xor i64 %53, %47
  %55 = zext i64 %50 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %42, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %64 = load i64, ptr %62, align 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %66 = load i64, ptr %65, align 1
  %67 = load i64, ptr %63, align 1
  %68 = add i64 %67, %3
  %69 = xor i64 %68, %64
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %71 = load i64, ptr %70, align 1
  %72 = sub i64 %71, %3
  %73 = xor i64 %72, %66
  %74 = zext i64 %69 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %61, %79
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %83 = load i64, ptr %81, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %85 = load i64, ptr %84, align 1
  %86 = load i64, ptr %82, align 1
  %87 = add i64 %86, %3
  %88 = xor i64 %87, %83
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %90 = load i64, ptr %89, align 1
  %91 = sub i64 %90, %3
  %92 = xor i64 %91, %85
  %93 = zext i64 %88 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %102 = load i64, ptr %100, align 1
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %104 = load i64, ptr %103, align 1
  %105 = load i64, ptr %101, align 1
  %106 = add i64 %105, %3
  %107 = xor i64 %106, %102
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %109 = load i64, ptr %108, align 1
  %110 = sub i64 %109, %3
  %111 = xor i64 %110, %104
  %112 = zext i64 %107 to i128
  %113 = zext i64 %111 to i128
  %114 = mul nuw i128 %113, %112
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %99, %117
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 1
  %125 = add i64 %124, %3
  %126 = xor i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %128 = load i64, ptr %127, align 1
  %129 = sub i64 %128, %3
  %130 = xor i64 %129, %123
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %118, %136
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %140 = load i64, ptr %138, align 1
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %142 = load i64, ptr %141, align 1
  %143 = load i64, ptr %139, align 1
  %144 = add i64 %143, %3
  %145 = xor i64 %144, %140
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %147 = load i64, ptr %146, align 1
  %148 = sub i64 %147, %3
  %149 = xor i64 %148, %142
  %150 = zext i64 %145 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %137, %155
  %157 = lshr i32 %6, 4
  %158 = lshr i64 %156, 37
  %159 = xor i64 %158, %156
  %160 = mul i64 %159, 1609587791953885689
  %161 = lshr i64 %160, 32
  %162 = xor i64 %161, %160
  %163 = icmp eq i32 %157, 8
  br i1 %163, label %310, label %164

164:                                              ; preds = %4
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %166 = getelementptr i8, ptr %2, i64 3
  %167 = load i64, ptr %165, align 1
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %169 = load i64, ptr %168, align 1
  %170 = load i64, ptr %166, align 1
  %171 = add i64 %170, %3
  %172 = xor i64 %171, %167
  %173 = getelementptr i8, ptr %2, i64 11
  %174 = load i64, ptr %173, align 1
  %175 = sub i64 %174, %3
  %176 = xor i64 %175, %169
  %177 = zext i64 %172 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %162, %182
  %184 = icmp eq i32 %157, 9
  br i1 %184, label %310, label %185

185:                                              ; preds = %164
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %187 = getelementptr i8, ptr %2, i64 19
  %188 = load i64, ptr %186, align 1
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %190 = load i64, ptr %189, align 1
  %191 = load i64, ptr %187, align 1
  %192 = add i64 %191, %3
  %193 = xor i64 %192, %188
  %194 = getelementptr i8, ptr %2, i64 27
  %195 = load i64, ptr %194, align 1
  %196 = sub i64 %195, %3
  %197 = xor i64 %196, %190
  %198 = zext i64 %193 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %183, %203
  %205 = icmp eq i32 %157, 10
  br i1 %205, label %310, label %206

206:                                              ; preds = %185
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %208 = getelementptr i8, ptr %2, i64 35
  %209 = load i64, ptr %207, align 1
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %211 = load i64, ptr %210, align 1
  %212 = load i64, ptr %208, align 1
  %213 = add i64 %212, %3
  %214 = xor i64 %213, %209
  %215 = getelementptr i8, ptr %2, i64 43
  %216 = load i64, ptr %215, align 1
  %217 = sub i64 %216, %3
  %218 = xor i64 %217, %211
  %219 = zext i64 %214 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %204, %224
  %226 = icmp eq i32 %157, 11
  br i1 %226, label %310, label %227

227:                                              ; preds = %206
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %229 = getelementptr i8, ptr %2, i64 51
  %230 = load i64, ptr %228, align 1
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = add i64 %233, %3
  %235 = xor i64 %234, %230
  %236 = getelementptr i8, ptr %2, i64 59
  %237 = load i64, ptr %236, align 1
  %238 = sub i64 %237, %3
  %239 = xor i64 %238, %232
  %240 = zext i64 %235 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %225, %245
  %247 = icmp eq i32 %157, 12
  br i1 %247, label %310, label %248

248:                                              ; preds = %227
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %250 = getelementptr i8, ptr %2, i64 67
  %251 = load i64, ptr %249, align 1
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %253 = load i64, ptr %252, align 1
  %254 = load i64, ptr %250, align 1
  %255 = add i64 %254, %3
  %256 = xor i64 %255, %251
  %257 = getelementptr i8, ptr %2, i64 75
  %258 = load i64, ptr %257, align 1
  %259 = sub i64 %258, %3
  %260 = xor i64 %259, %253
  %261 = zext i64 %256 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %246, %266
  %268 = icmp eq i32 %157, 13
  br i1 %268, label %310, label %269

269:                                              ; preds = %248
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %271 = getelementptr i8, ptr %2, i64 83
  %272 = load i64, ptr %270, align 1
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %274 = load i64, ptr %273, align 1
  %275 = load i64, ptr %271, align 1
  %276 = add i64 %275, %3
  %277 = xor i64 %276, %272
  %278 = getelementptr i8, ptr %2, i64 91
  %279 = load i64, ptr %278, align 1
  %280 = sub i64 %279, %3
  %281 = xor i64 %280, %274
  %282 = zext i64 %277 to i128
  %283 = zext i64 %281 to i128
  %284 = mul nuw i128 %283, %282
  %285 = lshr i128 %284, 64
  %286 = xor i128 %285, %284
  %287 = trunc i128 %286 to i64
  %288 = add i64 %267, %287
  %289 = icmp eq i32 %157, 14
  br i1 %289, label %310, label %290

290:                                              ; preds = %269
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %292 = getelementptr i8, ptr %2, i64 99
  %293 = load i64, ptr %291, align 1
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %295 = load i64, ptr %294, align 1
  %296 = load i64, ptr %292, align 1
  %297 = add i64 %296, %3
  %298 = xor i64 %297, %293
  %299 = getelementptr i8, ptr %2, i64 107
  %300 = load i64, ptr %299, align 1
  %301 = sub i64 %300, %3
  %302 = xor i64 %301, %295
  %303 = zext i64 %298 to i128
  %304 = zext i64 %302 to i128
  %305 = mul nuw i128 %304, %303
  %306 = lshr i128 %305, 64
  %307 = xor i128 %306, %305
  %308 = trunc i128 %307 to i64
  %309 = add i64 %288, %308
  br label %310

310:                                              ; preds = %164, %185, %206, %227, %248, %269, %290, %4
  %311 = phi i64 [ %162, %4 ], [ %183, %164 ], [ %204, %185 ], [ %225, %206 ], [ %246, %227 ], [ %267, %248 ], [ %288, %269 ], [ %309, %290 ]
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %313 = getelementptr inbounds i8, ptr %312, i64 -16
  %314 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %315 = load i64, ptr %313, align 1
  %316 = getelementptr inbounds i8, ptr %312, i64 -8
  %317 = load i64, ptr %316, align 1
  %318 = load i64, ptr %314, align 1
  %319 = add i64 %318, %3
  %320 = xor i64 %319, %315
  %321 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %322 = load i64, ptr %321, align 1
  %323 = sub i64 %322, %3
  %324 = xor i64 %323, %317
  %325 = zext i64 %320 to i128
  %326 = zext i64 %324 to i128
  %327 = mul nuw i128 %326, %325
  %328 = lshr i128 %327, 64
  %329 = xor i128 %328, %327
  %330 = trunc i128 %329 to i64
  %331 = add i64 %311, %330
  %332 = lshr i64 %331, 37
  %333 = xor i64 %332, %331
  %334 = mul i64 %333, 1609587791953885689
  %335 = lshr i64 %334, 32
  %336 = xor i64 %335, %334
  ret i64 %336
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #23

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noalias nocapture noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #22 {
  %5 = trunc nuw nsw i64 %1 to i32
  %6 = mul i64 %1, -7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %0, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 1
  %11 = load i64, ptr %2, align 1
  %12 = add i64 %11, %3
  %13 = xor i64 %12, %8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %15 = load i64, ptr %14, align 1
  %16 = sub i64 %15, %3
  %17 = xor i64 %16, %10
  %18 = zext i64 %13 to i128
  %19 = zext i64 %17 to i128
  %20 = mul nuw i128 %19, %18
  %21 = lshr i128 %20, 64
  %22 = xor i128 %21, %20
  %23 = trunc i128 %22 to i64
  %24 = add i64 %6, %23
  %25 = load i64, ptr %7, align 1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load i64, ptr %26, align 1
  %28 = add i64 %27, %25
  %29 = xor i64 %24, %28
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %31 = load i64, ptr %30, align 1
  %32 = add i64 %31, %3
  %33 = xor i64 %32, %25
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %35 = load i64, ptr %34, align 1
  %36 = sub i64 %35, %3
  %37 = xor i64 %36, %27
  %38 = zext i64 %33 to i128
  %39 = zext i64 %37 to i128
  %40 = mul nuw i128 %39, %38
  %41 = lshr i128 %40, 64
  %42 = xor i128 %41, %40
  %43 = trunc i128 %42 to i64
  %44 = add i64 %10, %8
  %45 = xor i64 %44, %43
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %49 = load i64, ptr %46, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %51 = load i64, ptr %50, align 1
  %52 = load i64, ptr %48, align 1
  %53 = add i64 %52, %3
  %54 = xor i64 %53, %49
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %56 = load i64, ptr %55, align 1
  %57 = sub i64 %56, %3
  %58 = xor i64 %57, %51
  %59 = zext i64 %54 to i128
  %60 = zext i64 %58 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = xor i128 %62, %61
  %64 = trunc i128 %63 to i64
  %65 = add i64 %29, %64
  %66 = load i64, ptr %47, align 1
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %68 = load i64, ptr %67, align 1
  %69 = add i64 %68, %66
  %70 = xor i64 %65, %69
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %72 = load i64, ptr %71, align 1
  %73 = add i64 %72, %3
  %74 = xor i64 %73, %66
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %76 = load i64, ptr %75, align 1
  %77 = sub i64 %76, %3
  %78 = xor i64 %77, %68
  %79 = zext i64 %74 to i128
  %80 = zext i64 %78 to i128
  %81 = mul nuw i128 %80, %79
  %82 = lshr i128 %81, 64
  %83 = xor i128 %82, %81
  %84 = trunc i128 %83 to i64
  %85 = add i64 %45, %84
  %86 = add i64 %51, %49
  %87 = xor i64 %85, %86
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %91 = load i64, ptr %88, align 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %93 = load i64, ptr %92, align 1
  %94 = load i64, ptr %90, align 1
  %95 = add i64 %94, %3
  %96 = xor i64 %95, %91
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %98 = load i64, ptr %97, align 1
  %99 = sub i64 %98, %3
  %100 = xor i64 %99, %93
  %101 = zext i64 %96 to i128
  %102 = zext i64 %100 to i128
  %103 = mul nuw i128 %102, %101
  %104 = lshr i128 %103, 64
  %105 = xor i128 %104, %103
  %106 = trunc i128 %105 to i64
  %107 = add i64 %70, %106
  %108 = load i64, ptr %89, align 1
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %110 = load i64, ptr %109, align 1
  %111 = add i64 %110, %108
  %112 = xor i64 %107, %111
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %114 = load i64, ptr %113, align 1
  %115 = add i64 %114, %3
  %116 = xor i64 %115, %108
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %118 = load i64, ptr %117, align 1
  %119 = sub i64 %118, %3
  %120 = xor i64 %119, %110
  %121 = zext i64 %116 to i128
  %122 = zext i64 %120 to i128
  %123 = mul nuw i128 %122, %121
  %124 = lshr i128 %123, 64
  %125 = xor i128 %124, %123
  %126 = trunc i128 %125 to i64
  %127 = add i64 %87, %126
  %128 = add i64 %93, %91
  %129 = xor i64 %127, %128
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %132 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %133 = load i64, ptr %130, align 1
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %135 = load i64, ptr %134, align 1
  %136 = load i64, ptr %132, align 1
  %137 = add i64 %136, %3
  %138 = xor i64 %137, %133
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %140 = load i64, ptr %139, align 1
  %141 = sub i64 %140, %3
  %142 = xor i64 %141, %135
  %143 = zext i64 %138 to i128
  %144 = zext i64 %142 to i128
  %145 = mul nuw i128 %144, %143
  %146 = lshr i128 %145, 64
  %147 = xor i128 %146, %145
  %148 = trunc i128 %147 to i64
  %149 = add i64 %112, %148
  %150 = load i64, ptr %131, align 1
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %152 = load i64, ptr %151, align 1
  %153 = add i64 %152, %150
  %154 = xor i64 %149, %153
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %156 = load i64, ptr %155, align 1
  %157 = add i64 %156, %3
  %158 = xor i64 %157, %150
  %159 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %160 = load i64, ptr %159, align 1
  %161 = sub i64 %160, %3
  %162 = xor i64 %161, %152
  %163 = zext i64 %158 to i128
  %164 = zext i64 %162 to i128
  %165 = mul nuw i128 %164, %163
  %166 = lshr i128 %165, 64
  %167 = xor i128 %166, %165
  %168 = trunc i128 %167 to i64
  %169 = add i64 %129, %168
  %170 = add i64 %135, %133
  %171 = xor i64 %169, %170
  %172 = lshr i32 %5, 5
  %173 = lshr i64 %154, 37
  %174 = xor i64 %173, %154
  %175 = mul i64 %174, 1609587791953885689
  %176 = lshr i64 %175, 32
  %177 = xor i64 %176, %175
  %178 = lshr i64 %171, 37
  %179 = xor i64 %178, %171
  %180 = mul i64 %179, 1609587791953885689
  %181 = lshr i64 %180, 32
  %182 = xor i64 %181, %180
  %183 = icmp eq i32 %172, 4
  br i1 %183, label %315, label %184

184:                                              ; preds = %4
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %187 = getelementptr i8, ptr %2, i64 3
  %188 = load i64, ptr %185, align 1
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %190 = load i64, ptr %189, align 1
  %191 = load i64, ptr %187, align 1
  %192 = add i64 %191, %3
  %193 = xor i64 %192, %188
  %194 = getelementptr i8, ptr %2, i64 11
  %195 = load i64, ptr %194, align 1
  %196 = sub i64 %195, %3
  %197 = xor i64 %196, %190
  %198 = zext i64 %193 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %177, %203
  %205 = load i64, ptr %186, align 1
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %207 = load i64, ptr %206, align 1
  %208 = add i64 %207, %205
  %209 = xor i64 %204, %208
  %210 = getelementptr i8, ptr %2, i64 19
  %211 = load i64, ptr %210, align 1
  %212 = add i64 %211, %3
  %213 = xor i64 %212, %205
  %214 = getelementptr i8, ptr %2, i64 27
  %215 = load i64, ptr %214, align 1
  %216 = sub i64 %215, %3
  %217 = xor i64 %216, %207
  %218 = zext i64 %213 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %182, %223
  %225 = add i64 %190, %188
  %226 = xor i64 %224, %225
  %227 = icmp eq i32 %172, 5
  br i1 %227, label %315, label %228

228:                                              ; preds = %184
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %231 = getelementptr i8, ptr %2, i64 35
  %232 = load i64, ptr %229, align 1
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %234 = load i64, ptr %233, align 1
  %235 = load i64, ptr %231, align 1
  %236 = add i64 %235, %3
  %237 = xor i64 %236, %232
  %238 = getelementptr i8, ptr %2, i64 43
  %239 = load i64, ptr %238, align 1
  %240 = sub i64 %239, %3
  %241 = xor i64 %240, %234
  %242 = zext i64 %237 to i128
  %243 = zext i64 %241 to i128
  %244 = mul nuw i128 %243, %242
  %245 = lshr i128 %244, 64
  %246 = xor i128 %245, %244
  %247 = trunc i128 %246 to i64
  %248 = add i64 %209, %247
  %249 = load i64, ptr %230, align 1
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %251 = load i64, ptr %250, align 1
  %252 = add i64 %251, %249
  %253 = xor i64 %248, %252
  %254 = getelementptr i8, ptr %2, i64 51
  %255 = load i64, ptr %254, align 1
  %256 = add i64 %255, %3
  %257 = xor i64 %256, %249
  %258 = getelementptr i8, ptr %2, i64 59
  %259 = load i64, ptr %258, align 1
  %260 = sub i64 %259, %3
  %261 = xor i64 %260, %251
  %262 = zext i64 %257 to i128
  %263 = zext i64 %261 to i128
  %264 = mul nuw i128 %263, %262
  %265 = lshr i128 %264, 64
  %266 = xor i128 %265, %264
  %267 = trunc i128 %266 to i64
  %268 = add i64 %226, %267
  %269 = add i64 %234, %232
  %270 = xor i64 %268, %269
  %271 = icmp eq i32 %172, 6
  br i1 %271, label %315, label %272

272:                                              ; preds = %228
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %275 = getelementptr i8, ptr %2, i64 67
  %276 = load i64, ptr %273, align 1
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %278 = load i64, ptr %277, align 1
  %279 = load i64, ptr %275, align 1
  %280 = add i64 %279, %3
  %281 = xor i64 %280, %276
  %282 = getelementptr i8, ptr %2, i64 75
  %283 = load i64, ptr %282, align 1
  %284 = sub i64 %283, %3
  %285 = xor i64 %284, %278
  %286 = zext i64 %281 to i128
  %287 = zext i64 %285 to i128
  %288 = mul nuw i128 %287, %286
  %289 = lshr i128 %288, 64
  %290 = xor i128 %289, %288
  %291 = trunc i128 %290 to i64
  %292 = add i64 %253, %291
  %293 = load i64, ptr %274, align 1
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %295 = load i64, ptr %294, align 1
  %296 = add i64 %295, %293
  %297 = xor i64 %292, %296
  %298 = getelementptr i8, ptr %2, i64 83
  %299 = load i64, ptr %298, align 1
  %300 = add i64 %299, %3
  %301 = xor i64 %300, %293
  %302 = getelementptr i8, ptr %2, i64 91
  %303 = load i64, ptr %302, align 1
  %304 = sub i64 %303, %3
  %305 = xor i64 %304, %295
  %306 = zext i64 %301 to i128
  %307 = zext i64 %305 to i128
  %308 = mul nuw i128 %307, %306
  %309 = lshr i128 %308, 64
  %310 = xor i128 %309, %308
  %311 = trunc i128 %310 to i64
  %312 = add i64 %270, %311
  %313 = add i64 %278, %276
  %314 = xor i64 %312, %313
  br label %315

315:                                              ; preds = %184, %228, %272, %4
  %316 = phi i64 [ %177, %4 ], [ %209, %184 ], [ %253, %228 ], [ %297, %272 ]
  %317 = phi i64 [ %182, %4 ], [ %226, %184 ], [ %270, %228 ], [ %314, %272 ]
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %319 = getelementptr inbounds i8, ptr %318, i64 -16
  %320 = getelementptr inbounds i8, ptr %318, i64 -32
  %321 = getelementptr inbounds nuw i8, ptr %2, i64 103
  %322 = load i64, ptr %319, align 1
  %323 = getelementptr inbounds i8, ptr %318, i64 -8
  %324 = load i64, ptr %323, align 1
  %325 = load i64, ptr %321, align 1
  %326 = sub i64 %325, %3
  %327 = xor i64 %326, %322
  %328 = getelementptr inbounds nuw i8, ptr %2, i64 111
  %329 = load i64, ptr %328, align 1
  %330 = add i64 %329, %3
  %331 = xor i64 %330, %324
  %332 = zext i64 %327 to i128
  %333 = zext i64 %331 to i128
  %334 = mul nuw i128 %333, %332
  %335 = lshr i128 %334, 64
  %336 = xor i128 %335, %334
  %337 = trunc i128 %336 to i64
  %338 = add i64 %316, %337
  %339 = load i64, ptr %320, align 1
  %340 = getelementptr inbounds i8, ptr %318, i64 -24
  %341 = load i64, ptr %340, align 1
  %342 = add i64 %341, %339
  %343 = xor i64 %338, %342
  %344 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %345 = load i64, ptr %344, align 1
  %346 = sub i64 %345, %3
  %347 = xor i64 %346, %339
  %348 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %349 = load i64, ptr %348, align 1
  %350 = add i64 %349, %3
  %351 = xor i64 %350, %341
  %352 = zext i64 %347 to i128
  %353 = zext i64 %351 to i128
  %354 = mul nuw i128 %353, %352
  %355 = lshr i128 %354, 64
  %356 = xor i128 %355, %354
  %357 = trunc i128 %356 to i64
  %358 = add i64 %317, %357
  %359 = add i64 %324, %322
  %360 = xor i64 %358, %359
  %361 = add i64 %360, %343
  %362 = mul i64 %343, -7046029288634856825
  %363 = mul i64 %360, -8796714831421723037
  %364 = sub i64 %1, %3
  %365 = mul i64 %364, -4417276706812531889
  %366 = add i64 %362, %365
  %367 = add i64 %366, %363
  %368 = lshr i64 %361, 37
  %369 = xor i64 %368, %361
  %370 = mul i64 %369, 1609587791953885689
  %371 = lshr i64 %370, 32
  %372 = xor i64 %371, %370
  %373 = lshr i64 %367, 37
  %374 = xor i64 %373, %367
  %375 = mul i64 %374, 1609587791953885689
  %376 = lshr i64 %375, 32
  %377 = xor i64 %376, %375
  %378 = sub i64 0, %377
  %379 = insertvalue { i64, i64 } poison, i64 %372, 0
  %380 = insertvalue { i64, i64 } %379, i64 %378, 1
  ret { i64, i64 } %380
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ucmp.i32.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #18 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #22 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2147959130}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_accumulate: argument 0"}
!14 = distinct !{!14, !"XXH3_accumulate"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH3_accumulate: argument 0"}
!17 = distinct !{!17, !"XXH3_accumulate"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_accumulate: argument 0"}
!20 = distinct !{!20, !"XXH3_accumulate"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_accumulate: argument 0"}
!23 = distinct !{!23, !"XXH3_accumulate"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_mergeAccs: argument 1"}
!26 = distinct !{!26, !"XXH3_mergeAccs"}
!27 = !{!28}
!28 = distinct !{!28, !26, !"XXH3_mergeAccs: argument 0"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_accumulate: argument 0"}
!31 = distinct !{!31, !"XXH3_accumulate"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"XXH3_accumulate: argument 0"}
!34 = distinct !{!34, !"XXH3_accumulate"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"XXH3_accumulate: argument 0"}
!37 = distinct !{!37, !"XXH3_accumulate"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"XXH3_accumulate: argument 0"}
!40 = distinct !{!40, !"XXH3_accumulate"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"XXH3_mergeAccs: argument 1"}
!43 = distinct !{!43, !"XXH3_mergeAccs"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"XXH3_mergeAccs: argument 0"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"XXH3_consumeStripes: argument 0"}
!48 = distinct !{!48, !"XXH3_consumeStripes"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"XXH3_consumeStripes: argument 1"}
!51 = !{!47, !52, !53}
!52 = distinct !{!52, !48, !"XXH3_consumeStripes: argument 2"}
!53 = distinct !{!53, !48, !"XXH3_consumeStripes: argument 3"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"XXH3_accumulate: argument 0"}
!56 = distinct !{!56, !"XXH3_accumulate"}
!57 = !{!58, !47}
!58 = distinct !{!58, !59, !"XXH3_scrambleAcc_scalar: argument 0"}
!59 = distinct !{!59, !"XXH3_scrambleAcc_scalar"}
!60 = !{!61, !50, !52, !53}
!61 = distinct !{!61, !59, !"XXH3_scrambleAcc_scalar: argument 1"}
!62 = !{!63, !55, !47}
!63 = distinct !{!63, !64, !"XXH3_accumulate_512_scalar: argument 0"}
!64 = distinct !{!64, !"XXH3_accumulate_512_scalar"}
!65 = !{!66, !67, !68, !69, !50, !52, !53}
!66 = distinct !{!66, !64, !"XXH3_accumulate_512_scalar: argument 1"}
!67 = distinct !{!67, !64, !"XXH3_accumulate_512_scalar: argument 2"}
!68 = distinct !{!68, !56, !"XXH3_accumulate: argument 1"}
!69 = distinct !{!69, !56, !"XXH3_accumulate: argument 2"}
!70 = !{!55, !47, !50}
!71 = !{!72}
!72 = distinct !{!72, !73, !"XXH3_accumulate: argument 0"}
!73 = distinct !{!73, !"XXH3_accumulate"}
!74 = !{!72, !47, !50}
!75 = !{!76, !72, !47}
!76 = distinct !{!76, !77, !"XXH3_accumulate_512_scalar: argument 0"}
!77 = distinct !{!77, !"XXH3_accumulate_512_scalar"}
!78 = !{!79, !80, !81, !82, !50, !52, !53}
!79 = distinct !{!79, !77, !"XXH3_accumulate_512_scalar: argument 1"}
!80 = distinct !{!80, !77, !"XXH3_accumulate_512_scalar: argument 2"}
!81 = distinct !{!81, !73, !"XXH3_accumulate: argument 1"}
!82 = distinct !{!82, !73, !"XXH3_accumulate: argument 2"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"XXH3_accumulate: argument 0"}
!85 = distinct !{!85, !"XXH3_accumulate"}
!86 = !{!87, !84, !47}
!87 = distinct !{!87, !88, !"XXH3_accumulate_512_scalar: argument 0"}
!88 = distinct !{!88, !"XXH3_accumulate_512_scalar"}
!89 = !{!90, !91, !92, !93, !50, !52, !53}
!90 = distinct !{!90, !88, !"XXH3_accumulate_512_scalar: argument 1"}
!91 = distinct !{!91, !88, !"XXH3_accumulate_512_scalar: argument 2"}
!92 = distinct !{!92, !85, !"XXH3_accumulate: argument 1"}
!93 = distinct !{!93, !85, !"XXH3_accumulate: argument 2"}
!94 = !{!84, !47, !50}
!95 = !{!96}
!96 = distinct !{!96, !97, !"XXH3_consumeStripes: argument 1"}
!97 = distinct !{!97, !"XXH3_consumeStripes"}
!98 = !{!99, !100, !101}
!99 = distinct !{!99, !97, !"XXH3_consumeStripes: argument 0"}
!100 = distinct !{!100, !97, !"XXH3_consumeStripes: argument 2"}
!101 = distinct !{!101, !97, !"XXH3_consumeStripes: argument 3"}
!102 = !{!99}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_accumulate: argument 0"}
!105 = distinct !{!105, !"XXH3_accumulate"}
!106 = !{!107, !99}
!107 = distinct !{!107, !108, !"XXH3_scrambleAcc_scalar: argument 0"}
!108 = distinct !{!108, !"XXH3_scrambleAcc_scalar"}
!109 = !{!110, !96, !100, !101}
!110 = distinct !{!110, !108, !"XXH3_scrambleAcc_scalar: argument 1"}
!111 = !{!112, !104, !99}
!112 = distinct !{!112, !113, !"XXH3_accumulate_512_scalar: argument 0"}
!113 = distinct !{!113, !"XXH3_accumulate_512_scalar"}
!114 = !{!115, !116, !117, !118, !96, !100, !101}
!115 = distinct !{!115, !113, !"XXH3_accumulate_512_scalar: argument 1"}
!116 = distinct !{!116, !113, !"XXH3_accumulate_512_scalar: argument 2"}
!117 = distinct !{!117, !105, !"XXH3_accumulate: argument 1"}
!118 = distinct !{!118, !105, !"XXH3_accumulate: argument 2"}
!119 = !{!104, !99, !96}
!120 = !{!121}
!121 = distinct !{!121, !122, !"XXH3_accumulate: argument 0"}
!122 = distinct !{!122, !"XXH3_accumulate"}
!123 = !{!121, !99, !96}
!124 = !{!125, !121, !99}
!125 = distinct !{!125, !126, !"XXH3_accumulate_512_scalar: argument 0"}
!126 = distinct !{!126, !"XXH3_accumulate_512_scalar"}
!127 = !{!128, !129, !130, !131, !96, !100, !101}
!128 = distinct !{!128, !126, !"XXH3_accumulate_512_scalar: argument 1"}
!129 = distinct !{!129, !126, !"XXH3_accumulate_512_scalar: argument 2"}
!130 = distinct !{!130, !122, !"XXH3_accumulate: argument 1"}
!131 = distinct !{!131, !122, !"XXH3_accumulate: argument 2"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"XXH3_accumulate: argument 0"}
!134 = distinct !{!134, !"XXH3_accumulate"}
!135 = !{!136, !133, !99}
!136 = distinct !{!136, !137, !"XXH3_accumulate_512_scalar: argument 0"}
!137 = distinct !{!137, !"XXH3_accumulate_512_scalar"}
!138 = !{!139, !140, !141, !142, !96, !100, !101}
!139 = distinct !{!139, !137, !"XXH3_accumulate_512_scalar: argument 1"}
!140 = distinct !{!140, !137, !"XXH3_accumulate_512_scalar: argument 2"}
!141 = distinct !{!141, !134, !"XXH3_accumulate: argument 1"}
!142 = distinct !{!142, !134, !"XXH3_accumulate: argument 2"}
!143 = !{!133, !99, !96}
!144 = !{!145, !147, !149}
!145 = distinct !{!145, !146, !"XXH3_accumulate: argument 0"}
!146 = distinct !{!146, !"XXH3_accumulate"}
!147 = distinct !{!147, !148, !"XXH3_consumeStripes: argument 0"}
!148 = distinct !{!148, !"XXH3_consumeStripes"}
!149 = distinct !{!149, !148, !"XXH3_consumeStripes: argument 1"}
!150 = !{!151, !147, !149}
!151 = distinct !{!151, !152, !"XXH3_accumulate: argument 0"}
!152 = distinct !{!152, !"XXH3_accumulate"}
!153 = !{!154, !147, !149}
!154 = distinct !{!154, !155, !"XXH3_accumulate: argument 0"}
!155 = distinct !{!155, !"XXH3_accumulate"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"XXH3_mergeAccs: argument 1"}
!158 = distinct !{!158, !"XXH3_mergeAccs"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"XXH3_mergeAccs: argument 0"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"XXH3_accumulate: argument 0"}
!163 = distinct !{!163, !"XXH3_accumulate"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"XXH3_accumulate: argument 0"}
!166 = distinct !{!166, !"XXH3_accumulate"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"XXH3_accumulate: argument 0"}
!169 = distinct !{!169, !"XXH3_accumulate"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"XXH3_accumulate: argument 0"}
!172 = distinct !{!172, !"XXH3_accumulate"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"XXH3_mergeAccs: argument 1"}
!175 = distinct !{!175, !"XXH3_mergeAccs"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"XXH3_mergeAccs: argument 0"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"XXH3_mergeAccs: argument 1"}
!180 = distinct !{!180, !"XXH3_mergeAccs"}
!181 = !{!182}
!182 = distinct !{!182, !180, !"XXH3_mergeAccs: argument 0"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"XXH3_accumulate: argument 0"}
!185 = distinct !{!185, !"XXH3_accumulate"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"XXH3_accumulate: argument 0"}
!188 = distinct !{!188, !"XXH3_accumulate"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!191 = distinct !{!191, !"XXH3_hashLong_128b_withSeed_internal"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"XXH3_accumulate: argument 0"}
!194 = distinct !{!194, !"XXH3_accumulate"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"XXH3_accumulate: argument 0"}
!197 = distinct !{!197, !"XXH3_accumulate"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"XXH3_mergeAccs: argument 1"}
!200 = distinct !{!200, !"XXH3_mergeAccs"}
!201 = !{!202}
!202 = distinct !{!202, !200, !"XXH3_mergeAccs: argument 0"}
!203 = !{!204}
!204 = distinct !{!204, !205, !"XXH3_mergeAccs: argument 1"}
!205 = distinct !{!205, !"XXH3_mergeAccs"}
!206 = !{!207}
!207 = distinct !{!207, !205, !"XXH3_mergeAccs: argument 0"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"XXH3_consumeStripes: argument 0"}
!210 = distinct !{!210, !"XXH3_consumeStripes"}
!211 = !{!212}
!212 = distinct !{!212, !210, !"XXH3_consumeStripes: argument 1"}
!213 = !{!209, !214, !215}
!214 = distinct !{!214, !210, !"XXH3_consumeStripes: argument 2"}
!215 = distinct !{!215, !210, !"XXH3_consumeStripes: argument 3"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"XXH3_accumulate: argument 0"}
!218 = distinct !{!218, !"XXH3_accumulate"}
!219 = !{!220, !209}
!220 = distinct !{!220, !221, !"XXH3_scrambleAcc_scalar: argument 0"}
!221 = distinct !{!221, !"XXH3_scrambleAcc_scalar"}
!222 = !{!223, !212, !214, !215}
!223 = distinct !{!223, !221, !"XXH3_scrambleAcc_scalar: argument 1"}
!224 = !{!225, !217, !209}
!225 = distinct !{!225, !226, !"XXH3_accumulate_512_scalar: argument 0"}
!226 = distinct !{!226, !"XXH3_accumulate_512_scalar"}
!227 = !{!228, !229, !230, !231, !212, !214, !215}
!228 = distinct !{!228, !226, !"XXH3_accumulate_512_scalar: argument 1"}
!229 = distinct !{!229, !226, !"XXH3_accumulate_512_scalar: argument 2"}
!230 = distinct !{!230, !218, !"XXH3_accumulate: argument 1"}
!231 = distinct !{!231, !218, !"XXH3_accumulate: argument 2"}
!232 = !{!217, !209, !212}
!233 = !{!234}
!234 = distinct !{!234, !235, !"XXH3_accumulate: argument 0"}
!235 = distinct !{!235, !"XXH3_accumulate"}
!236 = !{!234, !209, !212}
!237 = !{!238, !234, !209}
!238 = distinct !{!238, !239, !"XXH3_accumulate_512_scalar: argument 0"}
!239 = distinct !{!239, !"XXH3_accumulate_512_scalar"}
!240 = !{!241, !242, !243, !244, !212, !214, !215}
!241 = distinct !{!241, !239, !"XXH3_accumulate_512_scalar: argument 1"}
!242 = distinct !{!242, !239, !"XXH3_accumulate_512_scalar: argument 2"}
!243 = distinct !{!243, !235, !"XXH3_accumulate: argument 1"}
!244 = distinct !{!244, !235, !"XXH3_accumulate: argument 2"}
!245 = !{!246}
!246 = distinct !{!246, !247, !"XXH3_accumulate: argument 0"}
!247 = distinct !{!247, !"XXH3_accumulate"}
!248 = !{!249, !246, !209}
!249 = distinct !{!249, !250, !"XXH3_accumulate_512_scalar: argument 0"}
!250 = distinct !{!250, !"XXH3_accumulate_512_scalar"}
!251 = !{!252, !253, !254, !255, !212, !214, !215}
!252 = distinct !{!252, !250, !"XXH3_accumulate_512_scalar: argument 1"}
!253 = distinct !{!253, !250, !"XXH3_accumulate_512_scalar: argument 2"}
!254 = distinct !{!254, !247, !"XXH3_accumulate: argument 1"}
!255 = distinct !{!255, !247, !"XXH3_accumulate: argument 2"}
!256 = !{!246, !209, !212}
!257 = !{!258}
!258 = distinct !{!258, !259, !"XXH3_consumeStripes: argument 1"}
!259 = distinct !{!259, !"XXH3_consumeStripes"}
!260 = !{!261, !262, !263}
!261 = distinct !{!261, !259, !"XXH3_consumeStripes: argument 0"}
!262 = distinct !{!262, !259, !"XXH3_consumeStripes: argument 2"}
!263 = distinct !{!263, !259, !"XXH3_consumeStripes: argument 3"}
!264 = !{!261}
!265 = !{!266}
!266 = distinct !{!266, !267, !"XXH3_accumulate: argument 0"}
!267 = distinct !{!267, !"XXH3_accumulate"}
!268 = !{!269, !261}
!269 = distinct !{!269, !270, !"XXH3_scrambleAcc_scalar: argument 0"}
!270 = distinct !{!270, !"XXH3_scrambleAcc_scalar"}
!271 = !{!272, !258, !262, !263}
!272 = distinct !{!272, !270, !"XXH3_scrambleAcc_scalar: argument 1"}
!273 = !{!274, !266, !261}
!274 = distinct !{!274, !275, !"XXH3_accumulate_512_scalar: argument 0"}
!275 = distinct !{!275, !"XXH3_accumulate_512_scalar"}
!276 = !{!277, !278, !279, !280, !258, !262, !263}
!277 = distinct !{!277, !275, !"XXH3_accumulate_512_scalar: argument 1"}
!278 = distinct !{!278, !275, !"XXH3_accumulate_512_scalar: argument 2"}
!279 = distinct !{!279, !267, !"XXH3_accumulate: argument 1"}
!280 = distinct !{!280, !267, !"XXH3_accumulate: argument 2"}
!281 = !{!266, !261, !258}
!282 = !{!283}
!283 = distinct !{!283, !284, !"XXH3_accumulate: argument 0"}
!284 = distinct !{!284, !"XXH3_accumulate"}
!285 = !{!283, !261, !258}
!286 = !{!287, !283, !261}
!287 = distinct !{!287, !288, !"XXH3_accumulate_512_scalar: argument 0"}
!288 = distinct !{!288, !"XXH3_accumulate_512_scalar"}
!289 = !{!290, !291, !292, !293, !258, !262, !263}
!290 = distinct !{!290, !288, !"XXH3_accumulate_512_scalar: argument 1"}
!291 = distinct !{!291, !288, !"XXH3_accumulate_512_scalar: argument 2"}
!292 = distinct !{!292, !284, !"XXH3_accumulate: argument 1"}
!293 = distinct !{!293, !284, !"XXH3_accumulate: argument 2"}
!294 = !{!295}
!295 = distinct !{!295, !296, !"XXH3_accumulate: argument 0"}
!296 = distinct !{!296, !"XXH3_accumulate"}
!297 = !{!298, !295, !261}
!298 = distinct !{!298, !299, !"XXH3_accumulate_512_scalar: argument 0"}
!299 = distinct !{!299, !"XXH3_accumulate_512_scalar"}
!300 = !{!301, !302, !303, !304, !258, !262, !263}
!301 = distinct !{!301, !299, !"XXH3_accumulate_512_scalar: argument 1"}
!302 = distinct !{!302, !299, !"XXH3_accumulate_512_scalar: argument 2"}
!303 = distinct !{!303, !296, !"XXH3_accumulate: argument 1"}
!304 = distinct !{!304, !296, !"XXH3_accumulate: argument 2"}
!305 = !{!295, !261, !258}
!306 = !{!307, !309, !311}
!307 = distinct !{!307, !308, !"XXH3_accumulate: argument 0"}
!308 = distinct !{!308, !"XXH3_accumulate"}
!309 = distinct !{!309, !310, !"XXH3_consumeStripes: argument 0"}
!310 = distinct !{!310, !"XXH3_consumeStripes"}
!311 = distinct !{!311, !310, !"XXH3_consumeStripes: argument 1"}
!312 = !{!313, !309, !311}
!313 = distinct !{!313, !314, !"XXH3_accumulate: argument 0"}
!314 = distinct !{!314, !"XXH3_accumulate"}
!315 = !{!316, !309, !311}
!316 = distinct !{!316, !317, !"XXH3_accumulate: argument 0"}
!317 = distinct !{!317, !"XXH3_accumulate"}
!318 = !{!319}
!319 = distinct !{!319, !320, !"XXH3_mergeAccs: argument 1"}
!320 = distinct !{!320, !"XXH3_mergeAccs"}
!321 = !{!322}
!322 = distinct !{!322, !320, !"XXH3_mergeAccs: argument 0"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"XXH3_mergeAccs: argument 1"}
!325 = distinct !{!325, !"XXH3_mergeAccs"}
!326 = !{!327}
!327 = distinct !{!327, !325, !"XXH3_mergeAccs: argument 0"}
