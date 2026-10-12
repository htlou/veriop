; ModuleID = '-'
source_filename = "-"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH128_hash_t = type { i64, i64 }

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 701
}

; Function Attrs: nofree nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %5, label %54

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %7 = getelementptr inbounds i8, ptr %6, i64 -15
  %8 = add i32 %2, 606290984
  %9 = add i32 %2, -2048144777
  %10 = add i32 %2, 1640531535
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %0, %5 ], [ %44, %11 ]
  %13 = phi i32 [ %8, %5 ], [ %22, %11 ]
  %14 = phi i32 [ %9, %5 ], [ %29, %11 ]
  %15 = phi i32 [ %2, %5 ], [ %36, %11 ]
  %16 = phi i32 [ %10, %5 ], [ %43, %11 ]
  %17 = load i32, ptr %12, align 1
  %18 = mul i32 %17, -2048144777
  %19 = add i32 %18, %13
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 13)
  %21 = mul i32 %20, -1640531535
  %22 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %21) #26
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %14
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %28) #26
  %30 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %15
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %35) #26
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %38 = load i32, ptr %37, align 1
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %16
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %42) #26
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %45 = icmp ult ptr %44, %7
  br i1 %45, label %11, label %46

46:                                               ; preds = %11
  %47 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 1)
  %48 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 7)
  %49 = add i32 %48, %47
  %50 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 12)
  %51 = add i32 %49, %50
  %52 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 18)
  %53 = add i32 %51, %52
  br label %56

54:                                               ; preds = %3
  %55 = add i32 %2, 374761393
  br label %56

56:                                               ; preds = %46, %54
  %57 = phi i32 [ %53, %46 ], [ %55, %54 ]
  %58 = phi ptr [ %44, %46 ], [ %0, %54 ]
  %59 = trunc i64 %1 to i32
  %60 = add i32 %57, %59
  %61 = and i64 %1, 15
  %62 = tail call fastcc i32 @XXH32_finalize(i32 noundef %60, ptr noundef %58, i64 noundef %61)
  ret i32 %62
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #27
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH32_copyState(ptr noundef writeonly initializes((0, 48)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_reset(ptr noundef writeonly initializes((0, 44)) %0, i32 noundef %1) local_unnamed_addr #6 {
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
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #7

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 {
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
  %41 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %40) #26
  store i32 %41, ptr %34, align 4
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 1
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %49) #26
  store i32 %50, ptr %43, align 4
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %51, align 1
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %53
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %58) #26
  store i32 %59, ptr %52, align 4
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %60, align 1
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %67) #26
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
  %97 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %96) #26
  %98 = getelementptr inbounds nuw i8, ptr %87, i64 4
  %99 = load i32, ptr %98, align 1
  %100 = mul i32 %99, -2048144777
  %101 = add i32 %100, %89
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %103) #26
  %105 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %106 = load i32, ptr %105, align 1
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %90
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %110) #26
  %112 = getelementptr inbounds nuw i8, ptr %87, i64 12
  %113 = load i32, ptr %112, align 1
  %114 = mul i32 %113, -2048144777
  %115 = add i32 %114, %91
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = mul i32 %116, -1640531535
  %118 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %117) #26
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
define dso_local i32 @XXH32_digest(ptr noundef readonly %0) local_unnamed_addr #10 {
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
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @XXH32_finalize(i32 noundef %0, ptr noundef readonly %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #10 {
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

12:                                               ; preds = %3, %5
  %13 = phi i32 [ %0, %3 ], [ %11, %5 ]
  %14 = phi ptr [ %1, %3 ], [ %9, %5 ]
  %15 = load i32, ptr %14, align 1
  %16 = mul i32 %15, -1028477379
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %20 = mul i32 %19, 668265263
  br label %21

21:                                               ; preds = %3, %12
  %22 = phi i32 [ %0, %3 ], [ %20, %12 ]
  %23 = phi ptr [ %1, %3 ], [ %18, %12 ]
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -1028477379
  %26 = add i32 %25, %22
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

36:                                               ; preds = %3, %29
  %37 = phi i32 [ %0, %3 ], [ %35, %29 ]
  %38 = phi ptr [ %1, %3 ], [ %33, %29 ]
  %39 = load i32, ptr %38, align 1
  %40 = mul i32 %39, -1028477379
  %41 = add i32 %40, %37
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 4
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %44 = mul i32 %43, 668265263
  br label %45

45:                                               ; preds = %3, %36
  %46 = phi i32 [ %0, %3 ], [ %44, %36 ]
  %47 = phi ptr [ %1, %3 ], [ %42, %36 ]
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -1028477379
  %50 = add i32 %49, %46
  %51 = getelementptr inbounds nuw i8, ptr %47, i64 4
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

67:                                               ; preds = %3, %60
  %68 = phi i32 [ %0, %3 ], [ %66, %60 ]
  %69 = phi ptr [ %1, %3 ], [ %64, %60 ]
  %70 = load i32, ptr %69, align 1
  %71 = mul i32 %70, -1028477379
  %72 = add i32 %71, %68
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 4
  %74 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 17)
  %75 = mul i32 %74, 668265263
  br label %76

76:                                               ; preds = %3, %67
  %77 = phi i32 [ %0, %3 ], [ %75, %67 ]
  %78 = phi ptr [ %1, %3 ], [ %73, %67 ]
  %79 = load i32, ptr %78, align 1
  %80 = mul i32 %79, -1028477379
  %81 = add i32 %80, %77
  %82 = getelementptr inbounds nuw i8, ptr %78, i64 4
  %83 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 17)
  %84 = mul i32 %83, 668265263
  %85 = getelementptr inbounds nuw i8, ptr %78, i64 5
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

105:                                              ; preds = %3, %98
  %106 = phi i32 [ %0, %3 ], [ %104, %98 ]
  %107 = phi ptr [ %1, %3 ], [ %102, %98 ]
  %108 = load i32, ptr %107, align 1
  %109 = mul i32 %108, -1028477379
  %110 = add i32 %109, %106
  %111 = getelementptr inbounds nuw i8, ptr %107, i64 4
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 17)
  %113 = mul i32 %112, 668265263
  br label %114

114:                                              ; preds = %3, %105
  %115 = phi i32 [ %0, %3 ], [ %113, %105 ]
  %116 = phi ptr [ %1, %3 ], [ %111, %105 ]
  %117 = load i32, ptr %116, align 1
  %118 = mul i32 %117, -1028477379
  %119 = add i32 %118, %115
  %120 = getelementptr inbounds nuw i8, ptr %116, i64 4
  %121 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 17)
  %122 = mul i32 %121, 668265263
  br label %123

123:                                              ; preds = %3, %114
  %124 = phi i32 [ %0, %3 ], [ %122, %114 ]
  %125 = phi ptr [ %1, %3 ], [ %120, %114 ]
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %127 = load i8, ptr %125, align 1
  %128 = zext i8 %127 to i32
  %129 = mul i32 %128, 374761393
  %130 = add i32 %129, %124
  %131 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 11)
  %132 = mul i32 %131, -1640531535
  br label %133

133:                                              ; preds = %3, %123
  %134 = phi i32 [ %0, %3 ], [ %132, %123 ]
  %135 = phi ptr [ %1, %3 ], [ %126, %123 ]
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %137 = load i8, ptr %135, align 1
  %138 = zext i8 %137 to i32
  %139 = mul i32 %138, 374761393
  %140 = add i32 %139, %134
  %141 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 11)
  %142 = mul i32 %141, -1640531535
  br label %143

143:                                              ; preds = %3, %133
  %144 = phi i32 [ %0, %3 ], [ %142, %133 ]
  %145 = phi ptr [ %1, %3 ], [ %136, %133 ]
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = mul i32 %147, 374761393
  %149 = add i32 %148, %144
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
define dso_local void @XXH32_canonicalFromHash(ptr noundef writeonly initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @XXH32_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 1
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = icmp ugt i64 %1, 31
  br i1 %4, label %5, label %74

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %7 = getelementptr inbounds i8, ptr %6, i64 -32
  %8 = add i64 %2, 6983438078262162902
  %9 = add i64 %2, -4417276706812531889
  %10 = add i64 %2, 7046029288634856825
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %0, %5 ], [ %40, %11 ]
  %13 = phi i64 [ %8, %5 ], [ %21, %11 ]
  %14 = phi i64 [ %9, %5 ], [ %27, %11 ]
  %15 = phi i64 [ %2, %5 ], [ %33, %11 ]
  %16 = phi i64 [ %10, %5 ], [ %39, %11 ]
  %17 = load i64, ptr %12, align 1
  %18 = mul i64 %17, -4417276706812531889
  %19 = add i64 %18, %13
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %23 = load i64, ptr %22, align 1
  %24 = mul i64 %23, -4417276706812531889
  %25 = add i64 %24, %14
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %29 = load i64, ptr %28, align 1
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, %15
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %35 = load i64, ptr %34, align 1
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, %16
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %41 = icmp ugt ptr %40, %7
  br i1 %41, label %42, label %11

42:                                               ; preds = %11
  %43 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 1)
  %44 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 7)
  %45 = add i64 %44, %43
  %46 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 12)
  %47 = add i64 %45, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 18)
  %49 = add i64 %47, %48
  %50 = mul i64 %20, -2381459717836149591
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %49, %52
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %54, -8796714831421723037
  %56 = mul i64 %26, -2381459717836149591
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %55, %58
  %60 = mul i64 %59, -7046029288634856825
  %61 = add i64 %60, -8796714831421723037
  %62 = mul i64 %32, -2381459717836149591
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %61, %64
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723037
  %68 = mul i64 %38, -2381459717836149591
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = xor i64 %67, %70
  %72 = mul i64 %71, -7046029288634856825
  %73 = add i64 %72, -8796714831421723037
  br label %76

74:                                               ; preds = %3
  %75 = add i64 %2, 2870177450012600261
  br label %76

76:                                               ; preds = %42, %74
  %77 = phi i64 [ %73, %42 ], [ %75, %74 ]
  %78 = phi ptr [ %40, %42 ], [ %0, %74 ]
  %79 = add i64 %77, %1
  %80 = tail call fastcc i64 @XXH64_finalize(i64 noundef %79, ptr noundef %78, i64 noundef %1)
  ret i64 %80
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #27
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH64_copyState(ptr noundef writeonly initializes((0, 88)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH64_reset(ptr noundef writeonly initializes((0, 80)) %0, i64 noundef %1) local_unnamed_addr #6 {
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
define dso_local range(i32 0, 2) i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %68, label %5

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
  br label %66

20:                                               ; preds = %5
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %11
  %25 = sub i32 32, %10
  %26 = zext i32 %25 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %1, i64 %26, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load <4 x i64>, ptr %27, align 8
  %29 = load <4 x i64>, ptr %23, align 1
  %30 = mul <4 x i64> %29, splat (i64 -4417276706812531889)
  %31 = add <4 x i64> %30, %28
  %32 = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %31, <4 x i64> %31, <4 x i64> splat (i64 31))
  %33 = mul <4 x i64> %32, splat (i64 -7046029288634856825)
  store <4 x i64> %33, ptr %27, align 8
  %34 = load i32, ptr %9, align 8
  %35 = sub i32 32, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %36
  store i32 0, ptr %9, align 8
  br label %38

38:                                               ; preds = %22, %20
  %39 = phi ptr [ %37, %22 ], [ %1, %20 ]
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %41 = icmp ugt ptr %40, %6
  br i1 %41, label %57, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %6, i64 -32
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %45 = load <4 x i64>, ptr %44, align 8
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi ptr [ %39, %42 ], [ %54, %46 ]
  %48 = phi <4 x i64> [ %45, %42 ], [ %53, %46 ]
  %49 = load <4 x i64>, ptr %47, align 1
  %50 = mul <4 x i64> %49, splat (i64 -4417276706812531889)
  %51 = add <4 x i64> %50, %48
  %52 = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %51, <4 x i64> %51, <4 x i64> splat (i64 31))
  %53 = mul <4 x i64> %52, splat (i64 -7046029288634856825)
  %54 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %55 = icmp ugt ptr %54, %43
  br i1 %55, label %56, label %46

56:                                               ; preds = %46
  store <4 x i64> %53, ptr %44, align 8
  br label %57

57:                                               ; preds = %56, %38
  %58 = phi ptr [ %54, %56 ], [ %39, %38 ]
  %59 = icmp ult ptr %58, %6
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %62 = ptrtoint ptr %6 to i64
  %63 = ptrtoint ptr %58 to i64
  %64 = sub i64 %62, %63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %61, ptr nonnull readonly align 1 %58, i64 %64, i1 false)
  %65 = trunc i64 %64 to i32
  br label %66

66:                                               ; preds = %60, %14
  %67 = phi i32 [ %19, %14 ], [ %65, %60 ]
  store i32 %67, ptr %9, align 8
  br label %68

68:                                               ; preds = %66, %57, %3
  %69 = phi i32 [ 1, %3 ], [ 0, %57 ], [ 0, %66 ]
  ret i32 %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #10 {
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
  %52 = tail call fastcc i64 @XXH64_finalize(i64 noundef %50, ptr noundef nonnull %51, i64 noundef %2)
  ret i64 %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH64_finalize(i64 noundef %0, ptr noundef readonly %1, i64 noundef %2) unnamed_addr #10 {
  %4 = and i64 %2, 31
  switch i64 %4, label %406 [
    i64 24, label %5
    i64 16, label %15
    i64 8, label %27
    i64 28, label %38
    i64 20, label %48
    i64 12, label %60
    i64 4, label %72
    i64 25, label %82
    i64 17, label %92
    i64 9, label %104
    i64 29, label %122
    i64 21, label %132
    i64 13, label %144
    i64 5, label %156
    i64 26, label %173
    i64 18, label %183
    i64 10, label %195
    i64 30, label %220
    i64 22, label %230
    i64 14, label %242
    i64 6, label %254
    i64 27, label %278
    i64 19, label %288
    i64 11, label %300
    i64 31, label %332
    i64 23, label %342
    i64 15, label %354
    i64 7, label %366
    i64 3, label %377
    i64 2, label %387
    i64 1, label %397
    i64 0, label %407
  ]

5:                                                ; preds = %3
  %6 = load i64, ptr %1, align 1
  %7 = mul i64 %6, -4417276706812531889
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 31)
  %9 = mul i64 %8, -7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = xor i64 %9, %0
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  br label %15

15:                                               ; preds = %3, %5
  %16 = phi ptr [ %1, %3 ], [ %10, %5 ]
  %17 = phi i64 [ %0, %3 ], [ %14, %5 ]
  %18 = load i64, ptr %16, align 1
  %19 = mul i64 %18, -4417276706812531889
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %23 = xor i64 %21, %17
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 27)
  %25 = mul i64 %24, -7046029288634856825
  %26 = add i64 %25, -8796714831421723037
  br label %27

27:                                               ; preds = %3, %15
  %28 = phi ptr [ %1, %3 ], [ %22, %15 ]
  %29 = phi i64 [ %0, %3 ], [ %26, %15 ]
  %30 = load i64, ptr %28, align 1
  %31 = mul i64 %30, -4417276706812531889
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = xor i64 %33, %29
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  br label %407

38:                                               ; preds = %3
  %39 = load i64, ptr %1, align 1
  %40 = mul i64 %39, -4417276706812531889
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 31)
  %42 = mul i64 %41, -7046029288634856825
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %44 = xor i64 %42, %0
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 27)
  %46 = mul i64 %45, -7046029288634856825
  %47 = add i64 %46, -8796714831421723037
  br label %48

48:                                               ; preds = %3, %38
  %49 = phi ptr [ %1, %3 ], [ %43, %38 ]
  %50 = phi i64 [ %0, %3 ], [ %47, %38 ]
  %51 = load i64, ptr %49, align 1
  %52 = mul i64 %51, -4417276706812531889
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %56 = xor i64 %54, %50
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 27)
  %58 = mul i64 %57, -7046029288634856825
  %59 = add i64 %58, -8796714831421723037
  br label %60

60:                                               ; preds = %3, %48
  %61 = phi ptr [ %1, %3 ], [ %55, %48 ]
  %62 = phi i64 [ %0, %3 ], [ %59, %48 ]
  %63 = load i64, ptr %61, align 1
  %64 = mul i64 %63, -4417276706812531889
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %68 = xor i64 %66, %62
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 27)
  %70 = mul i64 %69, -7046029288634856825
  %71 = add i64 %70, -8796714831421723037
  br label %72

72:                                               ; preds = %3, %60
  %73 = phi ptr [ %1, %3 ], [ %67, %60 ]
  %74 = phi i64 [ %0, %3 ], [ %71, %60 ]
  %75 = load i32, ptr %73, align 1
  %76 = zext i32 %75 to i64
  %77 = mul i64 %76, -7046029288634856825
  %78 = xor i64 %77, %74
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 23)
  %80 = mul i64 %79, -4417276706812531889
  %81 = add i64 %80, 1609587929392839161
  br label %407

82:                                               ; preds = %3
  %83 = load i64, ptr %1, align 1
  %84 = mul i64 %83, -4417276706812531889
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 31)
  %86 = mul i64 %85, -7046029288634856825
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %88 = xor i64 %86, %0
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 27)
  %90 = mul i64 %89, -7046029288634856825
  %91 = add i64 %90, -8796714831421723037
  br label %92

92:                                               ; preds = %3, %82
  %93 = phi ptr [ %1, %3 ], [ %87, %82 ]
  %94 = phi i64 [ %0, %3 ], [ %91, %82 ]
  %95 = load i64, ptr %93, align 1
  %96 = mul i64 %95, -4417276706812531889
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 31)
  %98 = mul i64 %97, -7046029288634856825
  %99 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %100 = xor i64 %98, %94
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 27)
  %102 = mul i64 %101, -7046029288634856825
  %103 = add i64 %102, -8796714831421723037
  br label %104

104:                                              ; preds = %3, %92
  %105 = phi ptr [ %1, %3 ], [ %99, %92 ]
  %106 = phi i64 [ %0, %3 ], [ %103, %92 ]
  %107 = load i64, ptr %105, align 1
  %108 = mul i64 %107, -4417276706812531889
  %109 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 31)
  %110 = mul i64 %109, -7046029288634856825
  %111 = getelementptr inbounds nuw i8, ptr %105, i64 8
  %112 = xor i64 %110, %106
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 27)
  %114 = mul i64 %113, -7046029288634856825
  %115 = add i64 %114, -8796714831421723037
  %116 = load i8, ptr %111, align 1
  %117 = zext i8 %116 to i64
  %118 = mul i64 %117, 2870177450012600261
  %119 = xor i64 %115, %118
  %120 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 11)
  %121 = mul i64 %120, -7046029288634856825
  br label %407

122:                                              ; preds = %3
  %123 = load i64, ptr %1, align 1
  %124 = mul i64 %123, -4417276706812531889
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 31)
  %126 = mul i64 %125, -7046029288634856825
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %128 = xor i64 %126, %0
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 27)
  %130 = mul i64 %129, -7046029288634856825
  %131 = add i64 %130, -8796714831421723037
  br label %132

132:                                              ; preds = %3, %122
  %133 = phi ptr [ %1, %3 ], [ %127, %122 ]
  %134 = phi i64 [ %0, %3 ], [ %131, %122 ]
  %135 = load i64, ptr %133, align 1
  %136 = mul i64 %135, -4417276706812531889
  %137 = tail call i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 31)
  %138 = mul i64 %137, -7046029288634856825
  %139 = getelementptr inbounds nuw i8, ptr %133, i64 8
  %140 = xor i64 %138, %134
  %141 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 27)
  %142 = mul i64 %141, -7046029288634856825
  %143 = add i64 %142, -8796714831421723037
  br label %144

144:                                              ; preds = %3, %132
  %145 = phi ptr [ %1, %3 ], [ %139, %132 ]
  %146 = phi i64 [ %0, %3 ], [ %143, %132 ]
  %147 = load i64, ptr %145, align 1
  %148 = mul i64 %147, -4417276706812531889
  %149 = tail call i64 @llvm.fshl.i64(i64 %148, i64 %148, i64 31)
  %150 = mul i64 %149, -7046029288634856825
  %151 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %152 = xor i64 %150, %146
  %153 = tail call i64 @llvm.fshl.i64(i64 %152, i64 %152, i64 27)
  %154 = mul i64 %153, -7046029288634856825
  %155 = add i64 %154, -8796714831421723037
  br label %156

156:                                              ; preds = %3, %144
  %157 = phi ptr [ %1, %3 ], [ %151, %144 ]
  %158 = phi i64 [ %0, %3 ], [ %155, %144 ]
  %159 = load i32, ptr %157, align 1
  %160 = zext i32 %159 to i64
  %161 = mul i64 %160, -7046029288634856825
  %162 = xor i64 %161, %158
  %163 = getelementptr inbounds nuw i8, ptr %157, i64 4
  %164 = tail call i64 @llvm.fshl.i64(i64 %162, i64 %162, i64 23)
  %165 = mul i64 %164, -4417276706812531889
  %166 = add i64 %165, 1609587929392839161
  %167 = load i8, ptr %163, align 1
  %168 = zext i8 %167 to i64
  %169 = mul i64 %168, 2870177450012600261
  %170 = xor i64 %166, %169
  %171 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 11)
  %172 = mul i64 %171, -7046029288634856825
  br label %407

173:                                              ; preds = %3
  %174 = load i64, ptr %1, align 1
  %175 = mul i64 %174, -4417276706812531889
  %176 = tail call i64 @llvm.fshl.i64(i64 %175, i64 %175, i64 31)
  %177 = mul i64 %176, -7046029288634856825
  %178 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %179 = xor i64 %177, %0
  %180 = tail call i64 @llvm.fshl.i64(i64 %179, i64 %179, i64 27)
  %181 = mul i64 %180, -7046029288634856825
  %182 = add i64 %181, -8796714831421723037
  br label %183

183:                                              ; preds = %3, %173
  %184 = phi ptr [ %1, %3 ], [ %178, %173 ]
  %185 = phi i64 [ %0, %3 ], [ %182, %173 ]
  %186 = load i64, ptr %184, align 1
  %187 = mul i64 %186, -4417276706812531889
  %188 = tail call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 31)
  %189 = mul i64 %188, -7046029288634856825
  %190 = getelementptr inbounds nuw i8, ptr %184, i64 8
  %191 = xor i64 %189, %185
  %192 = tail call i64 @llvm.fshl.i64(i64 %191, i64 %191, i64 27)
  %193 = mul i64 %192, -7046029288634856825
  %194 = add i64 %193, -8796714831421723037
  br label %195

195:                                              ; preds = %3, %183
  %196 = phi ptr [ %1, %3 ], [ %190, %183 ]
  %197 = phi i64 [ %0, %3 ], [ %194, %183 ]
  %198 = load i64, ptr %196, align 1
  %199 = mul i64 %198, -4417276706812531889
  %200 = tail call i64 @llvm.fshl.i64(i64 %199, i64 %199, i64 31)
  %201 = mul i64 %200, -7046029288634856825
  %202 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %203 = xor i64 %201, %197
  %204 = tail call i64 @llvm.fshl.i64(i64 %203, i64 %203, i64 27)
  %205 = mul i64 %204, -7046029288634856825
  %206 = add i64 %205, -8796714831421723037
  %207 = getelementptr inbounds nuw i8, ptr %196, i64 9
  %208 = load i8, ptr %202, align 1
  %209 = zext i8 %208 to i64
  %210 = mul i64 %209, 2870177450012600261
  %211 = xor i64 %206, %210
  %212 = tail call i64 @llvm.fshl.i64(i64 %211, i64 %211, i64 11)
  %213 = mul i64 %212, -7046029288634856825
  %214 = load i8, ptr %207, align 1
  %215 = zext i8 %214 to i64
  %216 = mul i64 %215, 2870177450012600261
  %217 = xor i64 %213, %216
  %218 = tail call i64 @llvm.fshl.i64(i64 %217, i64 %217, i64 11)
  %219 = mul i64 %218, -7046029288634856825
  br label %407

220:                                              ; preds = %3
  %221 = load i64, ptr %1, align 1
  %222 = mul i64 %221, -4417276706812531889
  %223 = tail call i64 @llvm.fshl.i64(i64 %222, i64 %222, i64 31)
  %224 = mul i64 %223, -7046029288634856825
  %225 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %226 = xor i64 %224, %0
  %227 = tail call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 27)
  %228 = mul i64 %227, -7046029288634856825
  %229 = add i64 %228, -8796714831421723037
  br label %230

230:                                              ; preds = %3, %220
  %231 = phi ptr [ %1, %3 ], [ %225, %220 ]
  %232 = phi i64 [ %0, %3 ], [ %229, %220 ]
  %233 = load i64, ptr %231, align 1
  %234 = mul i64 %233, -4417276706812531889
  %235 = tail call i64 @llvm.fshl.i64(i64 %234, i64 %234, i64 31)
  %236 = mul i64 %235, -7046029288634856825
  %237 = getelementptr inbounds nuw i8, ptr %231, i64 8
  %238 = xor i64 %236, %232
  %239 = tail call i64 @llvm.fshl.i64(i64 %238, i64 %238, i64 27)
  %240 = mul i64 %239, -7046029288634856825
  %241 = add i64 %240, -8796714831421723037
  br label %242

242:                                              ; preds = %3, %230
  %243 = phi ptr [ %1, %3 ], [ %237, %230 ]
  %244 = phi i64 [ %0, %3 ], [ %241, %230 ]
  %245 = load i64, ptr %243, align 1
  %246 = mul i64 %245, -4417276706812531889
  %247 = tail call i64 @llvm.fshl.i64(i64 %246, i64 %246, i64 31)
  %248 = mul i64 %247, -7046029288634856825
  %249 = getelementptr inbounds nuw i8, ptr %243, i64 8
  %250 = xor i64 %248, %244
  %251 = tail call i64 @llvm.fshl.i64(i64 %250, i64 %250, i64 27)
  %252 = mul i64 %251, -7046029288634856825
  %253 = add i64 %252, -8796714831421723037
  br label %254

254:                                              ; preds = %3, %242
  %255 = phi ptr [ %1, %3 ], [ %249, %242 ]
  %256 = phi i64 [ %0, %3 ], [ %253, %242 ]
  %257 = load i32, ptr %255, align 1
  %258 = zext i32 %257 to i64
  %259 = mul i64 %258, -7046029288634856825
  %260 = xor i64 %259, %256
  %261 = getelementptr inbounds nuw i8, ptr %255, i64 4
  %262 = tail call i64 @llvm.fshl.i64(i64 %260, i64 %260, i64 23)
  %263 = mul i64 %262, -4417276706812531889
  %264 = add i64 %263, 1609587929392839161
  %265 = getelementptr inbounds nuw i8, ptr %255, i64 5
  %266 = load i8, ptr %261, align 1
  %267 = zext i8 %266 to i64
  %268 = mul i64 %267, 2870177450012600261
  %269 = xor i64 %264, %268
  %270 = tail call i64 @llvm.fshl.i64(i64 %269, i64 %269, i64 11)
  %271 = mul i64 %270, -7046029288634856825
  %272 = load i8, ptr %265, align 1
  %273 = zext i8 %272 to i64
  %274 = mul i64 %273, 2870177450012600261
  %275 = xor i64 %271, %274
  %276 = tail call i64 @llvm.fshl.i64(i64 %275, i64 %275, i64 11)
  %277 = mul i64 %276, -7046029288634856825
  br label %407

278:                                              ; preds = %3
  %279 = load i64, ptr %1, align 1
  %280 = mul i64 %279, -4417276706812531889
  %281 = tail call i64 @llvm.fshl.i64(i64 %280, i64 %280, i64 31)
  %282 = mul i64 %281, -7046029288634856825
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %284 = xor i64 %282, %0
  %285 = tail call i64 @llvm.fshl.i64(i64 %284, i64 %284, i64 27)
  %286 = mul i64 %285, -7046029288634856825
  %287 = add i64 %286, -8796714831421723037
  br label %288

288:                                              ; preds = %3, %278
  %289 = phi ptr [ %1, %3 ], [ %283, %278 ]
  %290 = phi i64 [ %0, %3 ], [ %287, %278 ]
  %291 = load i64, ptr %289, align 1
  %292 = mul i64 %291, -4417276706812531889
  %293 = tail call i64 @llvm.fshl.i64(i64 %292, i64 %292, i64 31)
  %294 = mul i64 %293, -7046029288634856825
  %295 = getelementptr inbounds nuw i8, ptr %289, i64 8
  %296 = xor i64 %294, %290
  %297 = tail call i64 @llvm.fshl.i64(i64 %296, i64 %296, i64 27)
  %298 = mul i64 %297, -7046029288634856825
  %299 = add i64 %298, -8796714831421723037
  br label %300

300:                                              ; preds = %3, %288
  %301 = phi ptr [ %1, %3 ], [ %295, %288 ]
  %302 = phi i64 [ %0, %3 ], [ %299, %288 ]
  %303 = load i64, ptr %301, align 1
  %304 = mul i64 %303, -4417276706812531889
  %305 = tail call i64 @llvm.fshl.i64(i64 %304, i64 %304, i64 31)
  %306 = mul i64 %305, -7046029288634856825
  %307 = getelementptr inbounds nuw i8, ptr %301, i64 8
  %308 = xor i64 %306, %302
  %309 = tail call i64 @llvm.fshl.i64(i64 %308, i64 %308, i64 27)
  %310 = mul i64 %309, -7046029288634856825
  %311 = add i64 %310, -8796714831421723037
  %312 = getelementptr inbounds nuw i8, ptr %301, i64 9
  %313 = load i8, ptr %307, align 1
  %314 = zext i8 %313 to i64
  %315 = mul i64 %314, 2870177450012600261
  %316 = xor i64 %311, %315
  %317 = tail call i64 @llvm.fshl.i64(i64 %316, i64 %316, i64 11)
  %318 = mul i64 %317, -7046029288634856825
  %319 = getelementptr inbounds nuw i8, ptr %301, i64 10
  %320 = load i8, ptr %312, align 1
  %321 = zext i8 %320 to i64
  %322 = mul i64 %321, 2870177450012600261
  %323 = xor i64 %318, %322
  %324 = tail call i64 @llvm.fshl.i64(i64 %323, i64 %323, i64 11)
  %325 = mul i64 %324, -7046029288634856825
  %326 = load i8, ptr %319, align 1
  %327 = zext i8 %326 to i64
  %328 = mul i64 %327, 2870177450012600261
  %329 = xor i64 %325, %328
  %330 = tail call i64 @llvm.fshl.i64(i64 %329, i64 %329, i64 11)
  %331 = mul i64 %330, -7046029288634856825
  br label %407

332:                                              ; preds = %3
  %333 = load i64, ptr %1, align 1
  %334 = mul i64 %333, -4417276706812531889
  %335 = tail call i64 @llvm.fshl.i64(i64 %334, i64 %334, i64 31)
  %336 = mul i64 %335, -7046029288634856825
  %337 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %338 = xor i64 %336, %0
  %339 = tail call i64 @llvm.fshl.i64(i64 %338, i64 %338, i64 27)
  %340 = mul i64 %339, -7046029288634856825
  %341 = add i64 %340, -8796714831421723037
  br label %342

342:                                              ; preds = %3, %332
  %343 = phi ptr [ %1, %3 ], [ %337, %332 ]
  %344 = phi i64 [ %0, %3 ], [ %341, %332 ]
  %345 = load i64, ptr %343, align 1
  %346 = mul i64 %345, -4417276706812531889
  %347 = tail call i64 @llvm.fshl.i64(i64 %346, i64 %346, i64 31)
  %348 = mul i64 %347, -7046029288634856825
  %349 = getelementptr inbounds nuw i8, ptr %343, i64 8
  %350 = xor i64 %348, %344
  %351 = tail call i64 @llvm.fshl.i64(i64 %350, i64 %350, i64 27)
  %352 = mul i64 %351, -7046029288634856825
  %353 = add i64 %352, -8796714831421723037
  br label %354

354:                                              ; preds = %3, %342
  %355 = phi ptr [ %1, %3 ], [ %349, %342 ]
  %356 = phi i64 [ %0, %3 ], [ %353, %342 ]
  %357 = load i64, ptr %355, align 1
  %358 = mul i64 %357, -4417276706812531889
  %359 = tail call i64 @llvm.fshl.i64(i64 %358, i64 %358, i64 31)
  %360 = mul i64 %359, -7046029288634856825
  %361 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %362 = xor i64 %360, %356
  %363 = tail call i64 @llvm.fshl.i64(i64 %362, i64 %362, i64 27)
  %364 = mul i64 %363, -7046029288634856825
  %365 = add i64 %364, -8796714831421723037
  br label %366

366:                                              ; preds = %3, %354
  %367 = phi ptr [ %1, %3 ], [ %361, %354 ]
  %368 = phi i64 [ %0, %3 ], [ %365, %354 ]
  %369 = load i32, ptr %367, align 1
  %370 = zext i32 %369 to i64
  %371 = mul i64 %370, -7046029288634856825
  %372 = xor i64 %371, %368
  %373 = getelementptr inbounds nuw i8, ptr %367, i64 4
  %374 = tail call i64 @llvm.fshl.i64(i64 %372, i64 %372, i64 23)
  %375 = mul i64 %374, -4417276706812531889
  %376 = add i64 %375, 1609587929392839161
  br label %377

377:                                              ; preds = %3, %366
  %378 = phi ptr [ %1, %3 ], [ %373, %366 ]
  %379 = phi i64 [ %0, %3 ], [ %376, %366 ]
  %380 = getelementptr inbounds nuw i8, ptr %378, i64 1
  %381 = load i8, ptr %378, align 1
  %382 = zext i8 %381 to i64
  %383 = mul i64 %382, 2870177450012600261
  %384 = xor i64 %383, %379
  %385 = tail call i64 @llvm.fshl.i64(i64 %384, i64 %384, i64 11)
  %386 = mul i64 %385, -7046029288634856825
  br label %387

387:                                              ; preds = %3, %377
  %388 = phi ptr [ %1, %3 ], [ %380, %377 ]
  %389 = phi i64 [ %0, %3 ], [ %386, %377 ]
  %390 = getelementptr inbounds nuw i8, ptr %388, i64 1
  %391 = load i8, ptr %388, align 1
  %392 = zext i8 %391 to i64
  %393 = mul i64 %392, 2870177450012600261
  %394 = xor i64 %393, %389
  %395 = tail call i64 @llvm.fshl.i64(i64 %394, i64 %394, i64 11)
  %396 = mul i64 %395, -7046029288634856825
  br label %397

397:                                              ; preds = %3, %387
  %398 = phi ptr [ %1, %3 ], [ %390, %387 ]
  %399 = phi i64 [ %0, %3 ], [ %396, %387 ]
  %400 = load i8, ptr %398, align 1
  %401 = zext i8 %400 to i64
  %402 = mul i64 %401, 2870177450012600261
  %403 = xor i64 %402, %399
  %404 = tail call i64 @llvm.fshl.i64(i64 %403, i64 %403, i64 11)
  %405 = mul i64 %404, -7046029288634856825
  br label %407

406:                                              ; preds = %3
  unreachable

407:                                              ; preds = %397, %3, %300, %254, %195, %156, %104, %72, %27
  %408 = phi i64 [ %331, %300 ], [ %277, %254 ], [ %219, %195 ], [ %172, %156 ], [ %121, %104 ], [ %81, %72 ], [ %37, %27 ], [ %0, %3 ], [ %405, %397 ]
  %409 = lshr i64 %408, 33
  %410 = xor i64 %409, %408
  %411 = mul i64 %410, -4417276706812531889
  %412 = lshr i64 %411, 29
  %413 = xor i64 %412, %411
  %414 = mul i64 %413, 1609587929392839161
  %415 = lshr i64 %414, 32
  %416 = xor i64 %415, %414
  ret i64 %416
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH64_canonicalFromHash(ptr noundef writeonly initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @XXH64_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i64, ptr %0, align 1
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %77

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, -4734510112055689544
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, 2066345149520216444
  %13 = zext i64 %8 to i128
  %14 = zext i64 %12 to i128
  %15 = mul nuw i128 %14, %13
  %16 = lshr i128 %15, 64
  %17 = xor i128 %16, %15
  %18 = trunc i128 %17 to i64
  %19 = add i64 %8, %1
  %20 = add i64 %19, %12
  %21 = add i64 %20, %18
  %22 = lshr i64 %21, 37
  %23 = xor i64 %22, %21
  %24 = mul i64 %23, 1609587929392839161
  %25 = lshr i64 %24, 32
  %26 = xor i64 %25, %24
  br label %211

27:                                               ; preds = %4
  %28 = icmp samesign ugt i64 %1, 3
  br i1 %28, label %29, label %51

29:                                               ; preds = %27
  %30 = load i32, ptr %0, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %32 = getelementptr inbounds i8, ptr %31, i64 -4
  %33 = load i32, ptr %32, align 1
  %34 = zext i32 %30 to i64
  %35 = zext i32 %33 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or disjoint i64 %36, %34
  %38 = xor i64 %37, -4734510112055689544
  %39 = lshr i64 %38, 51
  %40 = xor i64 %39, %38
  %41 = mul i64 %40, 2654435761
  %42 = add i64 %41, %1
  %43 = lshr i64 %42, 47
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, -4417276706812531889
  %46 = lshr i64 %45, 37
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, 1609587929392839161
  %49 = lshr i64 %48, 32
  %50 = xor i64 %49, %48
  br label %211

51:                                               ; preds = %27
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
  %62 = zext i8 %57 to i64
  %63 = shl nuw nsw i64 %62, 8
  %64 = or disjoint i64 %63, %61
  %65 = zext i8 %60 to i64
  %66 = shl nuw nsw i64 %65, 16
  %67 = or disjoint i64 %64, %66
  %68 = shl nuw nsw i64 %1, 24
  %69 = or disjoint i64 %67, %68
  %70 = xor i64 %69, 963444408
  %71 = mul i64 %70, -7046029288634856825
  %72 = lshr i64 %71, 37
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
  %202 = mul i64 %201, 1609587929392839161
  %203 = lshr i64 %202, 32
  %204 = xor i64 %203, %202
  br label %211

205:                                              ; preds = %77
  %206 = icmp ult i64 %1, 241
  br i1 %206, label %207, label %209

207:                                              ; preds = %205
  %208 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %211

209:                                              ; preds = %205
  %210 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %211

211:                                              ; preds = %53, %51, %29, %6, %209, %207, %172
  %212 = phi i64 [ %204, %172 ], [ %208, %207 ], [ %210, %209 ], [ %26, %6 ], [ %50, %29 ], [ %76, %53 ], [ 0, %51 ]
  ret i64 %212
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #14 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = trunc nuw nsw i64 %1 to i32
  %7 = load <16 x i64>, ptr %0, align 1
  %8 = load <16 x i64>, ptr %2, align 1
  %9 = shufflevector <16 x i64> %8, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %10 = insertelement <8 x i64> poison, i64 %3, i64 0
  %11 = shufflevector <8 x i64> %10, <8 x i64> poison, <8 x i32> zeroinitializer
  %12 = add <8 x i64> %9, %11
  %13 = shufflevector <16 x i64> %7, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %14 = xor <8 x i64> %12, %13
  %15 = shufflevector <16 x i64> %8, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %16 = sub <8 x i64> %15, %11
  %17 = shufflevector <16 x i64> %7, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %18 = xor <8 x i64> %16, %17
  %19 = zext <8 x i64> %14 to <8 x i128>
  %20 = zext <8 x i64> %18 to <8 x i128>
  %21 = mul nuw <8 x i128> %20, %19
  %22 = lshr <8 x i128> %21, splat (i128 64)
  %23 = xor <8 x i128> %22, %21
  %24 = trunc <8 x i128> %23 to <8 x i64>
  %25 = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %24)
  %26 = add i64 %25, %5
  %27 = lshr i32 %6, 4
  %28 = lshr i64 %26, 37
  %29 = xor i64 %28, %26
  %30 = mul i64 %29, 1609587929392839161
  %31 = lshr i64 %30, 32
  %32 = xor i64 %31, %30
  %33 = icmp eq i32 %27, 8
  br i1 %33, label %180, label %34

34:                                               ; preds = %4
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %36 = getelementptr i8, ptr %2, i64 3
  %37 = load i64, ptr %35, align 1
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %39 = load i64, ptr %38, align 1
  %40 = load i64, ptr %36, align 1
  %41 = add i64 %40, %3
  %42 = xor i64 %41, %37
  %43 = getelementptr i8, ptr %2, i64 11
  %44 = load i64, ptr %43, align 1
  %45 = sub i64 %44, %3
  %46 = xor i64 %45, %39
  %47 = zext i64 %42 to i128
  %48 = zext i64 %46 to i128
  %49 = mul nuw i128 %48, %47
  %50 = lshr i128 %49, 64
  %51 = xor i128 %50, %49
  %52 = trunc i128 %51 to i64
  %53 = add i64 %32, %52
  %54 = icmp eq i32 %27, 9
  br i1 %54, label %180, label %55

55:                                               ; preds = %34
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %57 = getelementptr i8, ptr %2, i64 19
  %58 = load i64, ptr %56, align 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %60 = load i64, ptr %59, align 1
  %61 = load i64, ptr %57, align 1
  %62 = add i64 %61, %3
  %63 = xor i64 %62, %58
  %64 = getelementptr i8, ptr %2, i64 27
  %65 = load i64, ptr %64, align 1
  %66 = sub i64 %65, %3
  %67 = xor i64 %66, %60
  %68 = zext i64 %63 to i128
  %69 = zext i64 %67 to i128
  %70 = mul nuw i128 %69, %68
  %71 = lshr i128 %70, 64
  %72 = xor i128 %71, %70
  %73 = trunc i128 %72 to i64
  %74 = add i64 %53, %73
  %75 = icmp eq i32 %27, 10
  br i1 %75, label %180, label %76

76:                                               ; preds = %55
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %78 = getelementptr i8, ptr %2, i64 35
  %79 = load i64, ptr %77, align 1
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %81 = load i64, ptr %80, align 1
  %82 = load i64, ptr %78, align 1
  %83 = add i64 %82, %3
  %84 = xor i64 %83, %79
  %85 = getelementptr i8, ptr %2, i64 43
  %86 = load i64, ptr %85, align 1
  %87 = sub i64 %86, %3
  %88 = xor i64 %87, %81
  %89 = zext i64 %84 to i128
  %90 = zext i64 %88 to i128
  %91 = mul nuw i128 %90, %89
  %92 = lshr i128 %91, 64
  %93 = xor i128 %92, %91
  %94 = trunc i128 %93 to i64
  %95 = add i64 %74, %94
  %96 = icmp eq i32 %27, 11
  br i1 %96, label %180, label %97

97:                                               ; preds = %76
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %99 = getelementptr i8, ptr %2, i64 51
  %100 = load i64, ptr %98, align 1
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %102 = load i64, ptr %101, align 1
  %103 = load i64, ptr %99, align 1
  %104 = add i64 %103, %3
  %105 = xor i64 %104, %100
  %106 = getelementptr i8, ptr %2, i64 59
  %107 = load i64, ptr %106, align 1
  %108 = sub i64 %107, %3
  %109 = xor i64 %108, %102
  %110 = zext i64 %105 to i128
  %111 = zext i64 %109 to i128
  %112 = mul nuw i128 %111, %110
  %113 = lshr i128 %112, 64
  %114 = xor i128 %113, %112
  %115 = trunc i128 %114 to i64
  %116 = add i64 %95, %115
  %117 = icmp eq i32 %27, 12
  br i1 %117, label %180, label %118

118:                                              ; preds = %97
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %120 = getelementptr i8, ptr %2, i64 67
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 1
  %125 = add i64 %124, %3
  %126 = xor i64 %125, %121
  %127 = getelementptr i8, ptr %2, i64 75
  %128 = load i64, ptr %127, align 1
  %129 = sub i64 %128, %3
  %130 = xor i64 %129, %123
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %116, %136
  %138 = icmp eq i32 %27, 13
  br i1 %138, label %180, label %139

139:                                              ; preds = %118
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %141 = getelementptr i8, ptr %2, i64 83
  %142 = load i64, ptr %140, align 1
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %144 = load i64, ptr %143, align 1
  %145 = load i64, ptr %141, align 1
  %146 = add i64 %145, %3
  %147 = xor i64 %146, %142
  %148 = getelementptr i8, ptr %2, i64 91
  %149 = load i64, ptr %148, align 1
  %150 = sub i64 %149, %3
  %151 = xor i64 %150, %144
  %152 = zext i64 %147 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %137, %157
  %159 = icmp eq i32 %27, 14
  br i1 %159, label %180, label %160

160:                                              ; preds = %139
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %162 = getelementptr i8, ptr %2, i64 99
  %163 = load i64, ptr %161, align 1
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %165 = load i64, ptr %164, align 1
  %166 = load i64, ptr %162, align 1
  %167 = add i64 %166, %3
  %168 = xor i64 %167, %163
  %169 = getelementptr i8, ptr %2, i64 107
  %170 = load i64, ptr %169, align 1
  %171 = sub i64 %170, %3
  %172 = xor i64 %171, %165
  %173 = zext i64 %168 to i128
  %174 = zext i64 %172 to i128
  %175 = mul nuw i128 %174, %173
  %176 = lshr i128 %175, 64
  %177 = xor i128 %176, %175
  %178 = trunc i128 %177 to i64
  %179 = add i64 %158, %178
  br label %180

180:                                              ; preds = %34, %55, %76, %97, %118, %139, %160, %4
  %181 = phi i64 [ %32, %4 ], [ %53, %34 ], [ %74, %55 ], [ %95, %76 ], [ %116, %97 ], [ %137, %118 ], [ %158, %139 ], [ %179, %160 ]
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %183 = getelementptr inbounds i8, ptr %182, i64 -16
  %184 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %185 = load i64, ptr %183, align 1
  %186 = getelementptr inbounds i8, ptr %182, i64 -8
  %187 = load i64, ptr %186, align 1
  %188 = load i64, ptr %184, align 1
  %189 = add i64 %188, %3
  %190 = xor i64 %189, %185
  %191 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %192 = load i64, ptr %191, align 1
  %193 = sub i64 %192, %3
  %194 = xor i64 %193, %187
  %195 = zext i64 %190 to i128
  %196 = zext i64 %194 to i128
  %197 = mul nuw i128 %196, %195
  %198 = lshr i128 %197, 64
  %199 = xor i128 %198, %197
  %200 = trunc i128 %199 to i64
  %201 = add i64 %181, %200
  %202 = lshr i64 %201, 37
  %203 = xor i64 %202, %201
  %204 = mul i64 %203, 1609587929392839161
  %205 = lshr i64 %204, 32
  %206 = xor i64 %205, %204
  ret i64 %206
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noalias noundef readonly %0, i64 noundef range(i64 241, 0) %1) unnamed_addr #15 {
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %384, label %5

5:                                                ; preds = %2, %5
  %6 = phi <4 x i64> [ %381, %5 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %7 = phi <4 x i64> [ %371, %5 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %8 = phi i64 [ %382, %5 ], [ 0, %2 ]
  %9 = shl i64 %8, 10
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = load <4 x i64>, ptr %10, align 1
  %12 = xor <4 x i64> %11, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %13 = bitcast <4 x i64> %12 to <8 x i32>
  %14 = shufflevector <8 x i32> %13, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %15 = bitcast <8 x i32> %14 to <4 x i64>
  %16 = and <4 x i64> %12, splat (i64 4294967295)
  %17 = and <4 x i64> %15, splat (i64 4294967295)
  %18 = mul nuw <4 x i64> %17, %16
  %19 = add <4 x i64> %7, %11
  %20 = add <4 x i64> %19, %18
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %22 = load <4 x i64>, ptr %21, align 1
  %23 = xor <4 x i64> %22, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %24 = bitcast <4 x i64> %23 to <8 x i32>
  %25 = shufflevector <8 x i32> %24, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %26 = bitcast <8 x i32> %25 to <4 x i64>
  %27 = and <4 x i64> %23, splat (i64 4294967295)
  %28 = and <4 x i64> %26, splat (i64 4294967295)
  %29 = mul nuw <4 x i64> %28, %27
  %30 = add <4 x i64> %6, %22
  %31 = add <4 x i64> %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %33 = load <4 x i64>, ptr %32, align 1
  %34 = xor <4 x i64> %33, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %35 = bitcast <4 x i64> %34 to <8 x i32>
  %36 = shufflevector <8 x i32> %35, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %37 = bitcast <8 x i32> %36 to <4 x i64>
  %38 = and <4 x i64> %34, splat (i64 4294967295)
  %39 = and <4 x i64> %37, splat (i64 4294967295)
  %40 = mul nuw <4 x i64> %39, %38
  %41 = add <4 x i64> %20, %33
  %42 = add <4 x i64> %41, %40
  %43 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %44 = load <4 x i64>, ptr %43, align 1
  %45 = xor <4 x i64> %44, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %46 = bitcast <4 x i64> %45 to <8 x i32>
  %47 = shufflevector <8 x i32> %46, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %48 = bitcast <8 x i32> %47 to <4 x i64>
  %49 = and <4 x i64> %45, splat (i64 4294967295)
  %50 = and <4 x i64> %48, splat (i64 4294967295)
  %51 = mul nuw <4 x i64> %50, %49
  %52 = add <4 x i64> %31, %44
  %53 = add <4 x i64> %52, %51
  %54 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %55 = load <4 x i64>, ptr %54, align 1
  %56 = xor <4 x i64> %55, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %57 = bitcast <4 x i64> %56 to <8 x i32>
  %58 = shufflevector <8 x i32> %57, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %59 = bitcast <8 x i32> %58 to <4 x i64>
  %60 = and <4 x i64> %56, splat (i64 4294967295)
  %61 = and <4 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, %60
  %63 = add <4 x i64> %42, %55
  %64 = add <4 x i64> %63, %62
  %65 = getelementptr inbounds nuw i8, ptr %10, i64 160
  %66 = load <4 x i64>, ptr %65, align 1
  %67 = xor <4 x i64> %66, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = and <4 x i64> %70, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, %71
  %74 = add <4 x i64> %53, %66
  %75 = add <4 x i64> %74, %73
  %76 = getelementptr inbounds nuw i8, ptr %10, i64 192
  %77 = load <4 x i64>, ptr %76, align 1
  %78 = xor <4 x i64> %77, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = add <4 x i64> %64, %77
  %86 = add <4 x i64> %85, %84
  %87 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %88 = load <4 x i64>, ptr %87, align 1
  %89 = xor <4 x i64> %88, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %90 = bitcast <4 x i64> %89 to <8 x i32>
  %91 = shufflevector <8 x i32> %90, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %92 = bitcast <8 x i32> %91 to <4 x i64>
  %93 = and <4 x i64> %89, splat (i64 4294967295)
  %94 = and <4 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <4 x i64> %94, %93
  %96 = add <4 x i64> %75, %88
  %97 = add <4 x i64> %96, %95
  %98 = getelementptr inbounds nuw i8, ptr %10, i64 256
  %99 = load <4 x i64>, ptr %98, align 1
  %100 = xor <4 x i64> %99, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %101 = bitcast <4 x i64> %100 to <8 x i32>
  %102 = shufflevector <8 x i32> %101, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %103 = bitcast <8 x i32> %102 to <4 x i64>
  %104 = and <4 x i64> %100, splat (i64 4294967295)
  %105 = and <4 x i64> %103, splat (i64 4294967295)
  %106 = mul nuw <4 x i64> %105, %104
  %107 = add <4 x i64> %86, %99
  %108 = add <4 x i64> %107, %106
  %109 = getelementptr inbounds nuw i8, ptr %10, i64 288
  %110 = load <4 x i64>, ptr %109, align 1
  %111 = xor <4 x i64> %110, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %112 = bitcast <4 x i64> %111 to <8 x i32>
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %114 = bitcast <8 x i32> %113 to <4 x i64>
  %115 = and <4 x i64> %111, splat (i64 4294967295)
  %116 = and <4 x i64> %114, splat (i64 4294967295)
  %117 = mul nuw <4 x i64> %116, %115
  %118 = add <4 x i64> %97, %110
  %119 = add <4 x i64> %118, %117
  %120 = getelementptr inbounds nuw i8, ptr %10, i64 320
  %121 = load <4 x i64>, ptr %120, align 1
  %122 = xor <4 x i64> %121, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %123 = bitcast <4 x i64> %122 to <8 x i32>
  %124 = shufflevector <8 x i32> %123, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %125 = bitcast <8 x i32> %124 to <4 x i64>
  %126 = and <4 x i64> %122, splat (i64 4294967295)
  %127 = and <4 x i64> %125, splat (i64 4294967295)
  %128 = mul nuw <4 x i64> %127, %126
  %129 = add <4 x i64> %108, %121
  %130 = add <4 x i64> %129, %128
  %131 = getelementptr inbounds nuw i8, ptr %10, i64 352
  %132 = load <4 x i64>, ptr %131, align 1
  %133 = xor <4 x i64> %132, <i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352>
  %134 = bitcast <4 x i64> %133 to <8 x i32>
  %135 = shufflevector <8 x i32> %134, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %136 = bitcast <8 x i32> %135 to <4 x i64>
  %137 = and <4 x i64> %133, splat (i64 4294967295)
  %138 = and <4 x i64> %136, splat (i64 4294967295)
  %139 = mul nuw <4 x i64> %138, %137
  %140 = add <4 x i64> %119, %132
  %141 = add <4 x i64> %140, %139
  %142 = getelementptr inbounds nuw i8, ptr %10, i64 384
  %143 = load <4 x i64>, ptr %142, align 1
  %144 = xor <4 x i64> %143, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %145 = bitcast <4 x i64> %144 to <8 x i32>
  %146 = shufflevector <8 x i32> %145, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %147 = bitcast <8 x i32> %146 to <4 x i64>
  %148 = and <4 x i64> %144, splat (i64 4294967295)
  %149 = and <4 x i64> %147, splat (i64 4294967295)
  %150 = mul nuw <4 x i64> %149, %148
  %151 = add <4 x i64> %130, %143
  %152 = add <4 x i64> %151, %150
  %153 = getelementptr inbounds nuw i8, ptr %10, i64 416
  %154 = load <4 x i64>, ptr %153, align 1
  %155 = xor <4 x i64> %154, <i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193>
  %156 = bitcast <4 x i64> %155 to <8 x i32>
  %157 = shufflevector <8 x i32> %156, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %158 = bitcast <8 x i32> %157 to <4 x i64>
  %159 = and <4 x i64> %155, splat (i64 4294967295)
  %160 = and <4 x i64> %158, splat (i64 4294967295)
  %161 = mul nuw <4 x i64> %160, %159
  %162 = add <4 x i64> %141, %154
  %163 = add <4 x i64> %162, %161
  %164 = getelementptr inbounds nuw i8, ptr %10, i64 448
  %165 = load <4 x i64>, ptr %164, align 1
  %166 = xor <4 x i64> %165, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %167 = bitcast <4 x i64> %166 to <8 x i32>
  %168 = shufflevector <8 x i32> %167, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %169 = bitcast <8 x i32> %168 to <4 x i64>
  %170 = and <4 x i64> %166, splat (i64 4294967295)
  %171 = and <4 x i64> %169, splat (i64 4294967295)
  %172 = mul nuw <4 x i64> %171, %170
  %173 = add <4 x i64> %152, %165
  %174 = add <4 x i64> %173, %172
  %175 = getelementptr inbounds nuw i8, ptr %10, i64 480
  %176 = load <4 x i64>, ptr %175, align 1
  %177 = xor <4 x i64> %176, <i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746>
  %178 = bitcast <4 x i64> %177 to <8 x i32>
  %179 = shufflevector <8 x i32> %178, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %180 = bitcast <8 x i32> %179 to <4 x i64>
  %181 = and <4 x i64> %177, splat (i64 4294967295)
  %182 = and <4 x i64> %180, splat (i64 4294967295)
  %183 = mul nuw <4 x i64> %182, %181
  %184 = add <4 x i64> %163, %176
  %185 = add <4 x i64> %184, %183
  %186 = getelementptr inbounds nuw i8, ptr %10, i64 512
  %187 = load <4 x i64>, ptr %186, align 1
  %188 = xor <4 x i64> %187, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %189 = bitcast <4 x i64> %188 to <8 x i32>
  %190 = shufflevector <8 x i32> %189, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %191 = bitcast <8 x i32> %190 to <4 x i64>
  %192 = and <4 x i64> %188, splat (i64 4294967295)
  %193 = and <4 x i64> %191, splat (i64 4294967295)
  %194 = mul nuw <4 x i64> %193, %192
  %195 = add <4 x i64> %174, %187
  %196 = add <4 x i64> %195, %194
  %197 = getelementptr inbounds nuw i8, ptr %10, i64 544
  %198 = load <4 x i64>, ptr %197, align 1
  %199 = xor <4 x i64> %198, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %200 = bitcast <4 x i64> %199 to <8 x i32>
  %201 = shufflevector <8 x i32> %200, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %202 = bitcast <8 x i32> %201 to <4 x i64>
  %203 = and <4 x i64> %199, splat (i64 4294967295)
  %204 = and <4 x i64> %202, splat (i64 4294967295)
  %205 = mul nuw <4 x i64> %204, %203
  %206 = add <4 x i64> %185, %198
  %207 = add <4 x i64> %206, %205
  %208 = getelementptr inbounds nuw i8, ptr %10, i64 576
  %209 = load <4 x i64>, ptr %208, align 1
  %210 = xor <4 x i64> %209, <i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352>
  %211 = bitcast <4 x i64> %210 to <8 x i32>
  %212 = shufflevector <8 x i32> %211, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %213 = bitcast <8 x i32> %212 to <4 x i64>
  %214 = and <4 x i64> %210, splat (i64 4294967295)
  %215 = and <4 x i64> %213, splat (i64 4294967295)
  %216 = mul nuw <4 x i64> %215, %214
  %217 = add <4 x i64> %196, %209
  %218 = add <4 x i64> %217, %216
  %219 = getelementptr inbounds nuw i8, ptr %10, i64 608
  %220 = load <4 x i64>, ptr %219, align 1
  %221 = xor <4 x i64> %220, <i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654>
  %222 = bitcast <4 x i64> %221 to <8 x i32>
  %223 = shufflevector <8 x i32> %222, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %224 = bitcast <8 x i32> %223 to <4 x i64>
  %225 = and <4 x i64> %221, splat (i64 4294967295)
  %226 = and <4 x i64> %224, splat (i64 4294967295)
  %227 = mul nuw <4 x i64> %226, %225
  %228 = add <4 x i64> %207, %220
  %229 = add <4 x i64> %228, %227
  %230 = getelementptr inbounds nuw i8, ptr %10, i64 640
  %231 = load <4 x i64>, ptr %230, align 1
  %232 = xor <4 x i64> %231, <i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193>
  %233 = bitcast <4 x i64> %232 to <8 x i32>
  %234 = shufflevector <8 x i32> %233, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %235 = bitcast <8 x i32> %234 to <4 x i64>
  %236 = and <4 x i64> %232, splat (i64 4294967295)
  %237 = and <4 x i64> %235, splat (i64 4294967295)
  %238 = mul nuw <4 x i64> %237, %236
  %239 = add <4 x i64> %218, %231
  %240 = add <4 x i64> %239, %238
  %241 = getelementptr inbounds nuw i8, ptr %10, i64 672
  %242 = load <4 x i64>, ptr %241, align 1
  %243 = xor <4 x i64> %242, <i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907>
  %244 = bitcast <4 x i64> %243 to <8 x i32>
  %245 = shufflevector <8 x i32> %244, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %246 = bitcast <8 x i32> %245 to <4 x i64>
  %247 = and <4 x i64> %243, splat (i64 4294967295)
  %248 = and <4 x i64> %246, splat (i64 4294967295)
  %249 = mul nuw <4 x i64> %248, %247
  %250 = add <4 x i64> %229, %242
  %251 = add <4 x i64> %250, %249
  %252 = getelementptr inbounds nuw i8, ptr %10, i64 704
  %253 = load <4 x i64>, ptr %252, align 1
  %254 = xor <4 x i64> %253, <i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746>
  %255 = bitcast <4 x i64> %254 to <8 x i32>
  %256 = shufflevector <8 x i32> %255, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %257 = bitcast <8 x i32> %256 to <4 x i64>
  %258 = and <4 x i64> %254, splat (i64 4294967295)
  %259 = and <4 x i64> %257, splat (i64 4294967295)
  %260 = mul nuw <4 x i64> %259, %258
  %261 = add <4 x i64> %240, %253
  %262 = add <4 x i64> %261, %260
  %263 = getelementptr inbounds nuw i8, ptr %10, i64 736
  %264 = load <4 x i64>, ptr %263, align 1
  %265 = xor <4 x i64> %264, <i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047>
  %266 = bitcast <4 x i64> %265 to <8 x i32>
  %267 = shufflevector <8 x i32> %266, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %268 = bitcast <8 x i32> %267 to <4 x i64>
  %269 = and <4 x i64> %265, splat (i64 4294967295)
  %270 = and <4 x i64> %268, splat (i64 4294967295)
  %271 = mul nuw <4 x i64> %270, %269
  %272 = add <4 x i64> %251, %264
  %273 = add <4 x i64> %272, %271
  %274 = getelementptr inbounds nuw i8, ptr %10, i64 768
  %275 = load <4 x i64>, ptr %274, align 1
  %276 = xor <4 x i64> %275, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %277 = bitcast <4 x i64> %276 to <8 x i32>
  %278 = shufflevector <8 x i32> %277, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %279 = bitcast <8 x i32> %278 to <4 x i64>
  %280 = and <4 x i64> %276, splat (i64 4294967295)
  %281 = and <4 x i64> %279, splat (i64 4294967295)
  %282 = mul nuw <4 x i64> %281, %280
  %283 = add <4 x i64> %262, %275
  %284 = add <4 x i64> %283, %282
  %285 = getelementptr inbounds nuw i8, ptr %10, i64 800
  %286 = load <4 x i64>, ptr %285, align 1
  %287 = xor <4 x i64> %286, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %288 = bitcast <4 x i64> %287 to <8 x i32>
  %289 = shufflevector <8 x i32> %288, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %290 = bitcast <8 x i32> %289 to <4 x i64>
  %291 = and <4 x i64> %287, splat (i64 4294967295)
  %292 = and <4 x i64> %290, splat (i64 4294967295)
  %293 = mul nuw <4 x i64> %292, %291
  %294 = add <4 x i64> %273, %286
  %295 = add <4 x i64> %294, %293
  %296 = getelementptr inbounds nuw i8, ptr %10, i64 832
  %297 = load <4 x i64>, ptr %296, align 1
  %298 = xor <4 x i64> %297, <i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654>
  %299 = bitcast <4 x i64> %298 to <8 x i32>
  %300 = shufflevector <8 x i32> %299, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %301 = bitcast <8 x i32> %300 to <4 x i64>
  %302 = and <4 x i64> %298, splat (i64 4294967295)
  %303 = and <4 x i64> %301, splat (i64 4294967295)
  %304 = mul nuw <4 x i64> %303, %302
  %305 = add <4 x i64> %284, %297
  %306 = add <4 x i64> %305, %304
  %307 = getelementptr inbounds nuw i8, ptr %10, i64 864
  %308 = load <4 x i64>, ptr %307, align 1
  %309 = xor <4 x i64> %308, <i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509>
  %310 = bitcast <4 x i64> %309 to <8 x i32>
  %311 = shufflevector <8 x i32> %310, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %312 = bitcast <8 x i32> %311 to <4 x i64>
  %313 = and <4 x i64> %309, splat (i64 4294967295)
  %314 = and <4 x i64> %312, splat (i64 4294967295)
  %315 = mul nuw <4 x i64> %314, %313
  %316 = add <4 x i64> %295, %308
  %317 = add <4 x i64> %316, %315
  %318 = getelementptr inbounds nuw i8, ptr %10, i64 896
  %319 = load <4 x i64>, ptr %318, align 1
  %320 = xor <4 x i64> %319, <i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907>
  %321 = bitcast <4 x i64> %320 to <8 x i32>
  %322 = shufflevector <8 x i32> %321, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %323 = bitcast <8 x i32> %322 to <4 x i64>
  %324 = and <4 x i64> %320, splat (i64 4294967295)
  %325 = and <4 x i64> %323, splat (i64 4294967295)
  %326 = mul nuw <4 x i64> %325, %324
  %327 = add <4 x i64> %306, %319
  %328 = add <4 x i64> %327, %326
  %329 = getelementptr inbounds nuw i8, ptr %10, i64 928
  %330 = load <4 x i64>, ptr %329, align 1
  %331 = xor <4 x i64> %330, <i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737>
  %332 = bitcast <4 x i64> %331 to <8 x i32>
  %333 = shufflevector <8 x i32> %332, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %334 = bitcast <8 x i32> %333 to <4 x i64>
  %335 = and <4 x i64> %331, splat (i64 4294967295)
  %336 = and <4 x i64> %334, splat (i64 4294967295)
  %337 = mul nuw <4 x i64> %336, %335
  %338 = add <4 x i64> %317, %330
  %339 = add <4 x i64> %338, %337
  %340 = getelementptr inbounds nuw i8, ptr %10, i64 960
  %341 = load <4 x i64>, ptr %340, align 1
  %342 = xor <4 x i64> %341, <i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047>
  %343 = bitcast <4 x i64> %342 to <8 x i32>
  %344 = shufflevector <8 x i32> %343, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %345 = bitcast <8 x i32> %344 to <4 x i64>
  %346 = and <4 x i64> %342, splat (i64 4294967295)
  %347 = and <4 x i64> %345, splat (i64 4294967295)
  %348 = mul nuw <4 x i64> %347, %346
  %349 = add <4 x i64> %328, %341
  %350 = add <4 x i64> %349, %348
  %351 = getelementptr inbounds nuw i8, ptr %10, i64 992
  %352 = load <4 x i64>, ptr %351, align 1
  %353 = xor <4 x i64> %352, <i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253>
  %354 = bitcast <4 x i64> %353 to <8 x i32>
  %355 = shufflevector <8 x i32> %354, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %356 = bitcast <8 x i32> %355 to <4 x i64>
  %357 = and <4 x i64> %353, splat (i64 4294967295)
  %358 = and <4 x i64> %356, splat (i64 4294967295)
  %359 = mul nuw <4 x i64> %358, %357
  %360 = add <4 x i64> %339, %352
  %361 = add <4 x i64> %360, %359
  %362 = lshr <4 x i64> %350, splat (i64 47)
  %363 = xor <4 x i64> %362, %350
  %364 = xor <4 x i64> %363, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %365 = and <4 x i64> %364, splat (i64 4294967295)
  %366 = mul nuw <4 x i64> %365, splat (i64 2654435761)
  %367 = bitcast <4 x i64> %364 to <8 x i32>
  %368 = shufflevector <8 x i32> %367, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %369 = bitcast <8 x i32> %368 to <4 x i64>
  %370 = mul <4 x i64> %369, splat (i64 -7046029290881679360)
  %371 = add <4 x i64> %370, %366
  %372 = lshr <4 x i64> %361, splat (i64 47)
  %373 = xor <4 x i64> %372, %361
  %374 = xor <4 x i64> %373, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %375 = and <4 x i64> %374, splat (i64 4294967295)
  %376 = mul nuw <4 x i64> %375, splat (i64 2654435761)
  %377 = bitcast <4 x i64> %374 to <8 x i32>
  %378 = shufflevector <8 x i32> %377, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %379 = bitcast <8 x i32> %378 to <4 x i64>
  %380 = mul <4 x i64> %379, splat (i64 -7046029290881679360)
  %381 = add <4 x i64> %380, %376
  %382 = add nuw nsw i64 %8, 1
  %383 = icmp eq i64 %382, %3
  br i1 %383, label %384, label %5

384:                                              ; preds = %5, %2
  %385 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %381, %5 ]
  %386 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %371, %5 ]
  %387 = and i64 %1, -1024
  %388 = lshr i64 %1, 6
  %389 = and i64 %388, 15
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 %387
  %391 = icmp eq i64 %389, 0
  br i1 %391, label %426, label %392

392:                                              ; preds = %384, %392
  %393 = phi <4 x i64> [ %423, %392 ], [ %385, %384 ]
  %394 = phi <4 x i64> [ %410, %392 ], [ %386, %384 ]
  %395 = phi i64 [ %424, %392 ], [ 0, %384 ]
  %396 = shl i64 %395, 6
  %397 = getelementptr inbounds nuw i8, ptr %390, i64 %396
  %398 = shl i64 %395, 3
  %399 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %398
  %400 = load <4 x i64>, ptr %397, align 1
  %401 = load <4 x i64>, ptr %399, align 8
  %402 = xor <4 x i64> %401, %400
  %403 = bitcast <4 x i64> %402 to <8 x i32>
  %404 = shufflevector <8 x i32> %403, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %405 = bitcast <8 x i32> %404 to <4 x i64>
  %406 = and <4 x i64> %402, splat (i64 4294967295)
  %407 = and <4 x i64> %405, splat (i64 4294967295)
  %408 = mul nuw <4 x i64> %407, %406
  %409 = add <4 x i64> %394, %400
  %410 = add <4 x i64> %409, %408
  %411 = getelementptr inbounds nuw i8, ptr %397, i64 32
  %412 = load <4 x i64>, ptr %411, align 1
  %413 = getelementptr inbounds nuw i8, ptr %399, i64 32
  %414 = load <4 x i64>, ptr %413, align 8
  %415 = xor <4 x i64> %414, %412
  %416 = bitcast <4 x i64> %415 to <8 x i32>
  %417 = shufflevector <8 x i32> %416, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %418 = bitcast <8 x i32> %417 to <4 x i64>
  %419 = and <4 x i64> %415, splat (i64 4294967295)
  %420 = and <4 x i64> %418, splat (i64 4294967295)
  %421 = mul nuw <4 x i64> %420, %419
  %422 = add <4 x i64> %393, %412
  %423 = add <4 x i64> %422, %421
  %424 = add nuw nsw i64 %395, 1
  %425 = icmp eq i64 %424, %389
  br i1 %425, label %426, label %392

426:                                              ; preds = %392, %384
  %427 = phi <4 x i64> [ %385, %384 ], [ %423, %392 ]
  %428 = phi <4 x i64> [ %386, %384 ], [ %410, %392 ]
  %429 = and i64 %1, 63
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %455, label %431

431:                                              ; preds = %426
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %433 = getelementptr inbounds i8, ptr %432, i64 -64
  %434 = load <4 x i64>, ptr %433, align 1
  %435 = xor <4 x i64> %434, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %436 = bitcast <4 x i64> %435 to <8 x i32>
  %437 = shufflevector <8 x i32> %436, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %438 = bitcast <8 x i32> %437 to <4 x i64>
  %439 = and <4 x i64> %435, splat (i64 4294967295)
  %440 = and <4 x i64> %438, splat (i64 4294967295)
  %441 = mul nuw <4 x i64> %440, %439
  %442 = add <4 x i64> %428, %434
  %443 = add <4 x i64> %442, %441
  %444 = getelementptr inbounds i8, ptr %432, i64 -32
  %445 = load <4 x i64>, ptr %444, align 1
  %446 = xor <4 x i64> %445, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %447 = bitcast <4 x i64> %446 to <8 x i32>
  %448 = shufflevector <8 x i32> %447, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %449 = bitcast <8 x i32> %448 to <4 x i64>
  %450 = and <4 x i64> %446, splat (i64 4294967295)
  %451 = and <4 x i64> %449, splat (i64 4294967295)
  %452 = mul nuw <4 x i64> %451, %450
  %453 = add <4 x i64> %427, %445
  %454 = add <4 x i64> %453, %452
  br label %455

455:                                              ; preds = %431, %426
  %456 = phi <4 x i64> [ %427, %426 ], [ %454, %431 ]
  %457 = phi <4 x i64> [ %428, %426 ], [ %443, %431 ]
  %458 = mul i64 %1, -7046029288634856825
  %459 = shufflevector <4 x i64> %457, <4 x i64> %456, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %460 = xor <4 x i64> %459, <i64 7914194659941938988, i64 -1839215637059881052, i64 5046485836271438973, i64 5920048007935066598>
  %461 = shufflevector <4 x i64> %457, <4 x i64> %456, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %462 = xor <4 x i64> %461, <i64 -6611157965513653271, i64 -3433288310154277810, i64 -8055285457383852172, i64 7336514198459093435>
  %463 = zext <4 x i64> %460 to <4 x i128>
  %464 = zext <4 x i64> %462 to <4 x i128>
  %465 = mul nuw <4 x i128> %464, %463
  %466 = lshr <4 x i128> %465, splat (i128 64)
  %467 = xor <4 x i128> %466, %465
  %468 = trunc <4 x i128> %467 to <4 x i64>
  %469 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %468)
  %470 = add i64 %469, %458
  %471 = lshr i64 %470, 37
  %472 = xor i64 %471, %470
  %473 = mul i64 %472, 1609587929392839161
  %474 = lshr i64 %473, 32
  %475 = xor i64 %474, %473
  ret i64 %475
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits_withSecret(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %85

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %32

8:                                                ; preds = %6
  %9 = load i64, ptr %0, align 1
  %10 = load i64, ptr %2, align 1
  %11 = xor i64 %10, %9
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %14
  %18 = zext i64 %11 to i128
  %19 = zext i64 %17 to i128
  %20 = mul nuw i128 %19, %18
  %21 = lshr i128 %20, 64
  %22 = xor i128 %21, %20
  %23 = trunc i128 %22 to i64
  %24 = add i64 %11, %1
  %25 = add i64 %24, %17
  %26 = add i64 %25, %23
  %27 = lshr i64 %26, 37
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587929392839161
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  br label %226

32:                                               ; preds = %6
  %33 = icmp samesign ugt i64 %1, 3
  br i1 %33, label %34, label %57

34:                                               ; preds = %32
  %35 = load i32, ptr %0, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %37 = getelementptr inbounds i8, ptr %36, i64 -4
  %38 = load i32, ptr %37, align 1
  %39 = zext i32 %35 to i64
  %40 = zext i32 %38 to i64
  %41 = shl nuw i64 %40, 32
  %42 = or disjoint i64 %41, %39
  %43 = load i64, ptr %2, align 1
  %44 = xor i64 %42, %43
  %45 = lshr i64 %44, 51
  %46 = xor i64 %45, %44
  %47 = mul i64 %46, 2654435761
  %48 = add i64 %47, %1
  %49 = lshr i64 %48, 47
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, -4417276706812531889
  %52 = lshr i64 %51, 37
  %53 = xor i64 %52, %51
  %54 = mul i64 %53, 1609587929392839161
  %55 = lshr i64 %54, 32
  %56 = xor i64 %55, %54
  br label %226

57:                                               ; preds = %32
  %58 = icmp eq i64 %1, 0
  br i1 %58, label %226, label %59

59:                                               ; preds = %57
  %60 = load i8, ptr %0, align 1
  %61 = lshr i64 %1, 1
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %61
  %63 = load i8, ptr %62, align 1
  %64 = getelementptr i8, ptr %0, i64 %1
  %65 = getelementptr i8, ptr %64, i64 -1
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %60 to i64
  %68 = zext i8 %63 to i64
  %69 = shl nuw nsw i64 %68, 8
  %70 = or disjoint i64 %69, %67
  %71 = zext i8 %66 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = or disjoint i64 %70, %72
  %74 = shl nuw nsw i64 %1, 24
  %75 = or disjoint i64 %73, %74
  %76 = load i32, ptr %2, align 1
  %77 = zext i32 %76 to i64
  %78 = xor i64 %75, %77
  %79 = mul i64 %78, -7046029288634856825
  %80 = lshr i64 %79, 37
  %81 = xor i64 %80, %79
  %82 = mul i64 %81, 1609587929392839161
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  br label %226

85:                                               ; preds = %4
  %86 = icmp ult i64 %1, 129
  br i1 %86, label %87, label %220

87:                                               ; preds = %85
  %88 = mul i64 %1, -7046029288634856825
  %89 = icmp samesign ugt i64 %1, 32
  br i1 %89, label %90, label %186

90:                                               ; preds = %87
  %91 = icmp samesign ugt i64 %1, 64
  br i1 %91, label %92, label %155

92:                                               ; preds = %90
  %93 = icmp samesign ugt i64 %1, 96
  br i1 %93, label %94, label %124

94:                                               ; preds = %92
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %97 = load <2 x i64>, ptr %95, align 1
  %98 = load <2 x i64>, ptr %96, align 1
  %99 = xor <2 x i64> %98, %97
  %100 = extractelement <2 x i64> %99, i64 0
  %101 = zext i64 %100 to i128
  %102 = extractelement <2 x i64> %99, i64 1
  %103 = zext i64 %102 to i128
  %104 = mul nuw i128 %103, %101
  %105 = lshr i128 %104, 64
  %106 = xor i128 %105, %104
  %107 = trunc i128 %106 to i64
  %108 = add i64 %88, %107
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %110 = getelementptr inbounds i8, ptr %109, i64 -64
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %112 = load <2 x i64>, ptr %110, align 1
  %113 = load <2 x i64>, ptr %111, align 1
  %114 = xor <2 x i64> %113, %112
  %115 = extractelement <2 x i64> %114, i64 0
  %116 = zext i64 %115 to i128
  %117 = extractelement <2 x i64> %114, i64 1
  %118 = zext i64 %117 to i128
  %119 = mul nuw i128 %118, %116
  %120 = lshr i128 %119, 64
  %121 = xor i128 %120, %119
  %122 = trunc i128 %121 to i64
  %123 = add i64 %108, %122
  br label %124

124:                                              ; preds = %94, %92
  %125 = phi i64 [ %123, %94 ], [ %88, %92 ]
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %128 = load <2 x i64>, ptr %126, align 1
  %129 = load <2 x i64>, ptr %127, align 1
  %130 = xor <2 x i64> %129, %128
  %131 = extractelement <2 x i64> %130, i64 0
  %132 = zext i64 %131 to i128
  %133 = extractelement <2 x i64> %130, i64 1
  %134 = zext i64 %133 to i128
  %135 = mul nuw i128 %134, %132
  %136 = lshr i128 %135, 64
  %137 = xor i128 %136, %135
  %138 = trunc i128 %137 to i64
  %139 = add i64 %125, %138
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %141 = getelementptr inbounds i8, ptr %140, i64 -48
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %143 = load <2 x i64>, ptr %141, align 1
  %144 = load <2 x i64>, ptr %142, align 1
  %145 = xor <2 x i64> %144, %143
  %146 = extractelement <2 x i64> %145, i64 0
  %147 = zext i64 %146 to i128
  %148 = extractelement <2 x i64> %145, i64 1
  %149 = zext i64 %148 to i128
  %150 = mul nuw i128 %149, %147
  %151 = lshr i128 %150, 64
  %152 = xor i128 %151, %150
  %153 = trunc i128 %152 to i64
  %154 = add i64 %139, %153
  br label %155

155:                                              ; preds = %124, %90
  %156 = phi i64 [ %154, %124 ], [ %88, %90 ]
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %158 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %159 = load <2 x i64>, ptr %157, align 1
  %160 = load <2 x i64>, ptr %158, align 1
  %161 = xor <2 x i64> %160, %159
  %162 = extractelement <2 x i64> %161, i64 0
  %163 = zext i64 %162 to i128
  %164 = extractelement <2 x i64> %161, i64 1
  %165 = zext i64 %164 to i128
  %166 = mul nuw i128 %165, %163
  %167 = lshr i128 %166, 64
  %168 = xor i128 %167, %166
  %169 = trunc i128 %168 to i64
  %170 = add i64 %156, %169
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %172 = getelementptr inbounds i8, ptr %171, i64 -32
  %173 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %174 = load <2 x i64>, ptr %172, align 1
  %175 = load <2 x i64>, ptr %173, align 1
  %176 = xor <2 x i64> %175, %174
  %177 = extractelement <2 x i64> %176, i64 0
  %178 = zext i64 %177 to i128
  %179 = extractelement <2 x i64> %176, i64 1
  %180 = zext i64 %179 to i128
  %181 = mul nuw i128 %180, %178
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %170, %184
  br label %186

186:                                              ; preds = %87, %155
  %187 = phi i64 [ %185, %155 ], [ %88, %87 ]
  %188 = load <2 x i64>, ptr %0, align 1
  %189 = load <2 x i64>, ptr %2, align 1
  %190 = xor <2 x i64> %189, %188
  %191 = extractelement <2 x i64> %190, i64 0
  %192 = zext i64 %191 to i128
  %193 = extractelement <2 x i64> %190, i64 1
  %194 = zext i64 %193 to i128
  %195 = mul nuw i128 %194, %192
  %196 = lshr i128 %195, 64
  %197 = xor i128 %196, %195
  %198 = trunc i128 %197 to i64
  %199 = add i64 %187, %198
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %201 = getelementptr inbounds i8, ptr %200, i64 -16
  %202 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %203 = load <2 x i64>, ptr %201, align 1
  %204 = load <2 x i64>, ptr %202, align 1
  %205 = xor <2 x i64> %204, %203
  %206 = extractelement <2 x i64> %205, i64 0
  %207 = zext i64 %206 to i128
  %208 = extractelement <2 x i64> %205, i64 1
  %209 = zext i64 %208 to i128
  %210 = mul nuw i128 %209, %207
  %211 = lshr i128 %210, 64
  %212 = xor i128 %211, %210
  %213 = trunc i128 %212 to i64
  %214 = add i64 %199, %213
  %215 = lshr i64 %214, 37
  %216 = xor i64 %215, %214
  %217 = mul i64 %216, 1609587929392839161
  %218 = lshr i64 %217, 32
  %219 = xor i64 %218, %217
  br label %226

220:                                              ; preds = %85
  %221 = icmp ult i64 %1, 241
  br i1 %221, label %222, label %224

222:                                              ; preds = %220
  %223 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0)
  br label %226

224:                                              ; preds = %220
  %225 = tail call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %226

226:                                              ; preds = %59, %57, %34, %8, %224, %222, %186
  %227 = phi i64 [ %219, %186 ], [ %223, %222 ], [ %225, %224 ], [ %31, %8 ], [ %56, %34 ], [ %84, %59 ], [ 0, %57 ]
  ret i64 %227
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noalias noundef readonly %0, i64 noundef range(i64 241, 0) %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #15 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = udiv i64 %1, %7
  %9 = urem i64 %1, %7
  %10 = icmp ugt i64 %7, %1
  br i1 %10, label %84, label %11

11:                                               ; preds = %4
  %12 = icmp ult i64 %5, 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %14 = getelementptr inbounds i8, ptr %13, i64 -64
  %15 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %16 = load <4 x i64>, ptr %14, align 1
  %17 = getelementptr inbounds i8, ptr %13, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1
  br label %19

19:                                               ; preds = %11, %59
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %11 ], [ %81, %59 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %11 ], [ %71, %59 ]
  %22 = phi i64 [ 0, %11 ], [ %82, %59 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  br i1 %12, label %59, label %25

25:                                               ; preds = %19, %25
  %26 = phi <4 x i64> [ %56, %25 ], [ %20, %19 ]
  %27 = phi <4 x i64> [ %43, %25 ], [ %21, %19 ]
  %28 = phi i64 [ %57, %25 ], [ 0, %19 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = shl i64 %28, 3
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %33 = load <4 x i64>, ptr %30, align 1
  %34 = load <4 x i64>, ptr %32, align 1
  %35 = xor <4 x i64> %34, %33
  %36 = bitcast <4 x i64> %35 to <8 x i32>
  %37 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %38 = bitcast <8 x i32> %37 to <4 x i64>
  %39 = and <4 x i64> %35, splat (i64 4294967295)
  %40 = and <4 x i64> %38, splat (i64 4294967295)
  %41 = mul nuw <4 x i64> %40, %39
  %42 = add <4 x i64> %27, %33
  %43 = add <4 x i64> %42, %41
  %44 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %45 = load <4 x i64>, ptr %44, align 1
  %46 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %47 = load <4 x i64>, ptr %46, align 1
  %48 = xor <4 x i64> %47, %45
  %49 = bitcast <4 x i64> %48 to <8 x i32>
  %50 = shufflevector <8 x i32> %49, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %51 = bitcast <8 x i32> %50 to <4 x i64>
  %52 = and <4 x i64> %48, splat (i64 4294967295)
  %53 = and <4 x i64> %51, splat (i64 4294967295)
  %54 = mul nuw <4 x i64> %53, %52
  %55 = add <4 x i64> %26, %45
  %56 = add <4 x i64> %55, %54
  %57 = add nuw nsw i64 %28, 1
  %58 = icmp eq i64 %57, %15
  br i1 %58, label %59, label %25

59:                                               ; preds = %25, %19
  %60 = phi <4 x i64> [ %20, %19 ], [ %56, %25 ]
  %61 = phi <4 x i64> [ %21, %19 ], [ %43, %25 ]
  %62 = lshr <4 x i64> %61, splat (i64 47)
  %63 = xor <4 x i64> %16, %62
  %64 = xor <4 x i64> %63, %61
  %65 = and <4 x i64> %64, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, splat (i64 2654435761)
  %67 = bitcast <4 x i64> %64 to <8 x i32>
  %68 = shufflevector <8 x i32> %67, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %69 = bitcast <8 x i32> %68 to <4 x i64>
  %70 = mul <4 x i64> %69, splat (i64 -7046029290881679360)
  %71 = add <4 x i64> %70, %66
  %72 = lshr <4 x i64> %60, splat (i64 47)
  %73 = xor <4 x i64> %18, %72
  %74 = xor <4 x i64> %73, %60
  %75 = and <4 x i64> %74, splat (i64 4294967295)
  %76 = mul nuw <4 x i64> %75, splat (i64 2654435761)
  %77 = bitcast <4 x i64> %74 to <8 x i32>
  %78 = shufflevector <8 x i32> %77, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %79 = bitcast <8 x i32> %78 to <4 x i64>
  %80 = mul <4 x i64> %79, splat (i64 -7046029290881679360)
  %81 = add <4 x i64> %80, %76
  %82 = add nuw i64 %22, 1
  %83 = icmp ult i64 %82, %8
  br i1 %83, label %19, label %84

84:                                               ; preds = %59, %4
  %85 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %81, %59 ]
  %86 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %71, %59 ]
  %87 = mul i64 %8, %7
  %88 = lshr i64 %9, 6
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %90 = icmp ult i64 %9, 64
  br i1 %90, label %125, label %91

91:                                               ; preds = %84, %91
  %92 = phi <4 x i64> [ %122, %91 ], [ %85, %84 ]
  %93 = phi <4 x i64> [ %109, %91 ], [ %86, %84 ]
  %94 = phi i64 [ %123, %91 ], [ 0, %84 ]
  %95 = shl i64 %94, 6
  %96 = getelementptr inbounds nuw i8, ptr %89, i64 %95
  %97 = shl i64 %94, 3
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 %97
  %99 = load <4 x i64>, ptr %96, align 1
  %100 = load <4 x i64>, ptr %98, align 1
  %101 = xor <4 x i64> %100, %99
  %102 = bitcast <4 x i64> %101 to <8 x i32>
  %103 = shufflevector <8 x i32> %102, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %104 = bitcast <8 x i32> %103 to <4 x i64>
  %105 = and <4 x i64> %101, splat (i64 4294967295)
  %106 = and <4 x i64> %104, splat (i64 4294967295)
  %107 = mul nuw <4 x i64> %106, %105
  %108 = add <4 x i64> %93, %99
  %109 = add <4 x i64> %108, %107
  %110 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %111 = load <4 x i64>, ptr %110, align 1
  %112 = getelementptr inbounds nuw i8, ptr %98, i64 32
  %113 = load <4 x i64>, ptr %112, align 1
  %114 = xor <4 x i64> %113, %111
  %115 = bitcast <4 x i64> %114 to <8 x i32>
  %116 = shufflevector <8 x i32> %115, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %117 = bitcast <8 x i32> %116 to <4 x i64>
  %118 = and <4 x i64> %114, splat (i64 4294967295)
  %119 = and <4 x i64> %117, splat (i64 4294967295)
  %120 = mul nuw <4 x i64> %119, %118
  %121 = add <4 x i64> %92, %111
  %122 = add <4 x i64> %121, %120
  %123 = add nuw nsw i64 %94, 1
  %124 = icmp samesign ult i64 %123, %88
  br i1 %124, label %91, label %125

125:                                              ; preds = %91, %84
  %126 = phi <4 x i64> [ %85, %84 ], [ %122, %91 ]
  %127 = phi <4 x i64> [ %86, %84 ], [ %109, %91 ]
  %128 = and i64 %1, 63
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %159, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %132 = getelementptr inbounds i8, ptr %131, i64 -64
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %134 = getelementptr inbounds i8, ptr %133, i64 -71
  %135 = load <4 x i64>, ptr %132, align 1
  %136 = load <4 x i64>, ptr %134, align 1
  %137 = xor <4 x i64> %136, %135
  %138 = bitcast <4 x i64> %137 to <8 x i32>
  %139 = shufflevector <8 x i32> %138, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %140 = bitcast <8 x i32> %139 to <4 x i64>
  %141 = and <4 x i64> %137, splat (i64 4294967295)
  %142 = and <4 x i64> %140, splat (i64 4294967295)
  %143 = mul nuw <4 x i64> %142, %141
  %144 = add <4 x i64> %127, %135
  %145 = add <4 x i64> %144, %143
  %146 = getelementptr inbounds i8, ptr %131, i64 -32
  %147 = load <4 x i64>, ptr %146, align 1
  %148 = getelementptr inbounds i8, ptr %133, i64 -39
  %149 = load <4 x i64>, ptr %148, align 1
  %150 = xor <4 x i64> %149, %147
  %151 = bitcast <4 x i64> %150 to <8 x i32>
  %152 = shufflevector <8 x i32> %151, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %153 = bitcast <8 x i32> %152 to <4 x i64>
  %154 = and <4 x i64> %150, splat (i64 4294967295)
  %155 = and <4 x i64> %153, splat (i64 4294967295)
  %156 = mul nuw <4 x i64> %155, %154
  %157 = add <4 x i64> %126, %147
  %158 = add <4 x i64> %157, %156
  br label %159

159:                                              ; preds = %130, %125
  %160 = phi <4 x i64> [ %126, %125 ], [ %158, %130 ]
  %161 = phi <4 x i64> [ %127, %125 ], [ %145, %130 ]
  %162 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %163 = mul i64 %1, -7046029288634856825
  %164 = load <8 x i64>, ptr %162, align 1
  %165 = shufflevector <8 x i64> %164, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %166 = shufflevector <4 x i64> %161, <4 x i64> %160, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %167 = xor <4 x i64> %165, %166
  %168 = shufflevector <8 x i64> %164, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %169 = shufflevector <4 x i64> %161, <4 x i64> %160, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %170 = xor <4 x i64> %168, %169
  %171 = zext <4 x i64> %167 to <4 x i128>
  %172 = zext <4 x i64> %170 to <4 x i128>
  %173 = mul nuw <4 x i128> %172, %171
  %174 = lshr <4 x i128> %173, splat (i128 64)
  %175 = xor <4 x i128> %174, %173
  %176 = trunc <4 x i128> %175 to <4 x i64>
  %177 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %176)
  %178 = add i64 %177, %163
  %179 = lshr i64 %178, 37
  %180 = xor i64 %179, %178
  %181 = mul i64 %180, 1609587929392839161
  %182 = lshr i64 %181, 32
  %183 = xor i64 %182, %181
  ret i64 %183
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %82

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %30

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = add i64 %2, -4734510112055689544
  %10 = xor i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 2066345149520216444, %2
  %15 = xor i64 %13, %14
  %16 = zext i64 %10 to i128
  %17 = zext i64 %15 to i128
  %18 = mul nuw i128 %17, %16
  %19 = lshr i128 %18, 64
  %20 = xor i128 %19, %18
  %21 = trunc i128 %20 to i64
  %22 = add i64 %10, %1
  %23 = add i64 %22, %15
  %24 = add i64 %23, %21
  %25 = lshr i64 %24, 37
  %26 = xor i64 %25, %24
  %27 = mul i64 %26, 1609587929392839161
  %28 = lshr i64 %27, 32
  %29 = xor i64 %28, %27
  br label %232

30:                                               ; preds = %5
  %31 = icmp samesign ugt i64 %1, 3
  br i1 %31, label %32, label %55

32:                                               ; preds = %30
  %33 = load i32, ptr %0, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %35 = getelementptr inbounds i8, ptr %34, i64 -4
  %36 = load i32, ptr %35, align 1
  %37 = zext i32 %33 to i64
  %38 = zext i32 %36 to i64
  %39 = shl nuw i64 %38, 32
  %40 = or disjoint i64 %39, %37
  %41 = add i64 %2, -4734510112055689544
  %42 = xor i64 %40, %41
  %43 = lshr i64 %42, 51
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 2654435761
  %46 = add i64 %45, %1
  %47 = lshr i64 %46, 47
  %48 = xor i64 %47, %46
  %49 = mul i64 %48, -4417276706812531889
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587929392839161
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %232

55:                                               ; preds = %30
  %56 = icmp eq i64 %1, 0
  br i1 %56, label %232, label %57

57:                                               ; preds = %55
  %58 = load i8, ptr %0, align 1
  %59 = lshr i64 %1, 1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 %59
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr i8, ptr %0, i64 %1
  %63 = getelementptr i8, ptr %62, i64 -1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %58 to i64
  %66 = zext i8 %61 to i64
  %67 = shl nuw nsw i64 %66, 8
  %68 = or disjoint i64 %67, %65
  %69 = zext i8 %64 to i64
  %70 = shl nuw nsw i64 %69, 16
  %71 = or disjoint i64 %68, %70
  %72 = shl nuw nsw i64 %1, 24
  %73 = or disjoint i64 %71, %72
  %74 = add i64 %2, 963444408
  %75 = xor i64 %73, %74
  %76 = mul i64 %75, -7046029288634856825
  %77 = lshr i64 %76, 37
  %78 = xor i64 %77, %76
  %79 = mul i64 %78, 1609587929392839161
  %80 = lshr i64 %79, 32
  %81 = xor i64 %80, %79
  br label %232

82:                                               ; preds = %3
  %83 = icmp ult i64 %1, 129
  br i1 %83, label %84, label %226

84:                                               ; preds = %82
  %85 = mul i64 %1, -7046029288634856825
  %86 = icmp samesign ugt i64 %1, 32
  br i1 %86, label %87, label %189

87:                                               ; preds = %84
  %88 = icmp samesign ugt i64 %1, 64
  br i1 %88, label %89, label %156

89:                                               ; preds = %87
  %90 = icmp samesign ugt i64 %1, 96
  br i1 %90, label %91, label %123

91:                                               ; preds = %89
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %95 = load i64, ptr %94, align 1
  %96 = add i64 %2, 4554437623014685352
  %97 = xor i64 %93, %96
  %98 = sub i64 2111919702937427193, %2
  %99 = xor i64 %95, %98
  %100 = zext i64 %97 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %85, %105
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %108 = getelementptr inbounds i8, ptr %107, i64 -64
  %109 = load i64, ptr %108, align 1
  %110 = getelementptr inbounds i8, ptr %107, i64 -56
  %111 = load i64, ptr %110, align 1
  %112 = add i64 %2, 3556072174620004746
  %113 = xor i64 %109, %112
  %114 = sub i64 7238261902898274248, %2
  %115 = xor i64 %111, %114
  %116 = zext i64 %113 to i128
  %117 = zext i64 %115 to i128
  %118 = mul nuw i128 %117, %116
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %106, %121
  br label %123

123:                                              ; preds = %91, %89
  %124 = phi i64 [ %122, %91 ], [ %85, %89 ]
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %126 = load i64, ptr %125, align 1
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %128 = load i64, ptr %127, align 1
  %129 = add i64 %2, -3818837453329782724
  %130 = xor i64 %126, %129
  %131 = sub i64 -6688317018830679928, %2
  %132 = xor i64 %128, %131
  %133 = zext i64 %130 to i128
  %134 = zext i64 %132 to i128
  %135 = mul nuw i128 %134, %133
  %136 = lshr i128 %135, 64
  %137 = xor i128 %136, %135
  %138 = trunc i128 %137 to i64
  %139 = add i64 %124, %138
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %141 = getelementptr inbounds i8, ptr %140, i64 -48
  %142 = load i64, ptr %141, align 1
  %143 = getelementptr inbounds i8, ptr %140, i64 -40
  %144 = load i64, ptr %143, align 1
  %145 = add i64 %2, 5690594596133299313
  %146 = xor i64 %142, %145
  %147 = sub i64 -2833645246901970632, %2
  %148 = xor i64 %144, %147
  %149 = zext i64 %146 to i128
  %150 = zext i64 %148 to i128
  %151 = mul nuw i128 %150, %149
  %152 = lshr i128 %151, 64
  %153 = xor i128 %152, %151
  %154 = trunc i128 %153 to i64
  %155 = add i64 %139, %154
  br label %156

156:                                              ; preds = %123, %87
  %157 = phi i64 [ %155, %123 ], [ %85, %87 ]
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %159 = load i64, ptr %158, align 1
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %161 = load i64, ptr %160, align 1
  %162 = add i64 %2, 8711581037947681227
  %163 = xor i64 %159, %162
  %164 = sub i64 2410270004345854594, %2
  %165 = xor i64 %161, %164
  %166 = zext i64 %163 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %157, %171
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %174 = getelementptr inbounds i8, ptr %173, i64 -32
  %175 = load i64, ptr %174, align 1
  %176 = getelementptr inbounds i8, ptr %173, i64 -24
  %177 = load i64, ptr %176, align 1
  %178 = add i64 %2, -8204357891075471176
  %179 = xor i64 %175, %178
  %180 = sub i64 5487137525590930912, %2
  %181 = xor i64 %177, %180
  %182 = zext i64 %179 to i128
  %183 = zext i64 %181 to i128
  %184 = mul nuw i128 %183, %182
  %185 = lshr i128 %184, 64
  %186 = xor i128 %185, %184
  %187 = trunc i128 %186 to i64
  %188 = add i64 %172, %187
  br label %189

189:                                              ; preds = %84, %156
  %190 = phi i64 [ %188, %156 ], [ %85, %84 ]
  %191 = load i64, ptr %0, align 1
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %193 = load i64, ptr %192, align 1
  %194 = add i64 %2, -4734510112055689544
  %195 = xor i64 %191, %194
  %196 = sub i64 2066345149520216444, %2
  %197 = xor i64 %193, %196
  %198 = zext i64 %195 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %190, %203
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %206 = getelementptr inbounds i8, ptr %205, i64 -16
  %207 = load i64, ptr %206, align 1
  %208 = getelementptr inbounds i8, ptr %205, i64 -8
  %209 = load i64, ptr %208, align 1
  %210 = add i64 %2, -2623469361688619810
  %211 = xor i64 %207, %210
  %212 = sub i64 2262974939099578482, %2
  %213 = xor i64 %209, %212
  %214 = zext i64 %211 to i128
  %215 = zext i64 %213 to i128
  %216 = mul nuw i128 %215, %214
  %217 = lshr i128 %216, 64
  %218 = xor i128 %217, %216
  %219 = trunc i128 %218 to i64
  %220 = add i64 %204, %219
  %221 = lshr i64 %220, 37
  %222 = xor i64 %221, %220
  %223 = mul i64 %222, 1609587929392839161
  %224 = lshr i64 %223, 32
  %225 = xor i64 %224, %223
  br label %232

226:                                              ; preds = %82
  %227 = icmp ult i64 %1, 241
  br i1 %227, label %228, label %230

228:                                              ; preds = %226
  %229 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef %2)
  br label %232

230:                                              ; preds = %226
  %231 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %232

232:                                              ; preds = %57, %55, %32, %7, %230, %228, %189
  %233 = phi i64 [ %225, %189 ], [ %229, %228 ], [ %231, %230 ], [ %29, %7 ], [ %54, %32 ], [ %81, %57 ], [ 0, %55 ]
  ret i64 %233
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, i64 noundef %2) unnamed_addr #15 {
  %4 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #28
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = insertelement <4 x i64> poison, i64 %2, i64 0
  %8 = shufflevector <4 x i64> %7, <4 x i64> poison, <4 x i32> zeroinitializer
  %9 = add <4 x i64> %8, <i64 -4734510112055689544, i64 poison, i64 -2623469361688619810, i64 poison>
  %10 = sub <4 x i64> <i64 poison, i64 2066345149520216444, i64 poison, i64 2262974939099578482>, %8
  %11 = shufflevector <4 x i64> %9, <4 x i64> %10, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %11, ptr %4, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %13 = add <4 x i64> %8, <i64 8711581037947681227, i64 poison, i64 -8204357891075471176, i64 poison>
  %14 = sub <4 x i64> <i64 poison, i64 2410270004345854594, i64 poison, i64 5487137525590930912>, %8
  %15 = shufflevector <4 x i64> %13, <4 x i64> %14, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %15, ptr %12, align 8
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %17 = add <4 x i64> %8, <i64 -3818837453329782724, i64 poison, i64 5690594596133299313, i64 poison>
  %18 = sub <4 x i64> <i64 poison, i64 -6688317018830679928, i64 poison, i64 -2833645246901970632>, %8
  %19 = shufflevector <4 x i64> %17, <4 x i64> %18, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %19, ptr %16, align 8
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %21 = add <4 x i64> %8, <i64 4554437623014685352, i64 poison, i64 3556072174620004746, i64 poison>
  %22 = sub <4 x i64> <i64 poison, i64 2111919702937427193, i64 poison, i64 7238261902898274248>, %8
  %23 = shufflevector <4 x i64> %21, <4 x i64> %22, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %23, ptr %20, align 8
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %25 = add <4 x i64> %8, <i64 -4329134394285701654, i64 poison, i64 5321830579834785047, i64 poison>
  %26 = sub <4 x i64> <i64 poison, i64 -1485321483350670907, i64 poison, i64 -7032137544937171245>, %8
  %27 = shufflevector <4 x i64> %25, <4 x i64> %26, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %27, ptr %24, align 8
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %29 = add <4 x i64> %8, <i64 -242834301215959509, i64 poison, i64 2883454493032893253, i64 poison>
  %30 = sub <4 x i64> <i64 poison, i64 -3588858202114426737, i64 poison, i64 9097354517224871855>, %8
  %31 = shufflevector <4 x i64> %29, <4 x i64> %30, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %31, ptr %28, align 8
  %32 = lshr i64 %1, 10
  %33 = icmp ult i64 %1, 1024
  br i1 %33, label %456, label %36

34:                                               ; preds = %3
  %35 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %556

36:                                               ; preds = %6
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %39 = load <4 x i64>, ptr %4, align 8
  %40 = load <4 x i64>, ptr %12, align 8
  %41 = load <4 x i64>, ptr %38, align 8
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %43 = load <4 x i64>, ptr %42, align 8
  %44 = load <4 x i64>, ptr %37, align 8
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %46 = load <4 x i64>, ptr %45, align 8
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %48 = load <4 x i64>, ptr %47, align 8
  %49 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %50 = load <4 x i64>, ptr %49, align 8
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %52 = load <4 x i64>, ptr %51, align 8
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %54 = load <4 x i64>, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %56 = load <4 x i64>, ptr %55, align 8
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %58 = load <4 x i64>, ptr %57, align 8
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %60 = load <4 x i64>, ptr %59, align 8
  %61 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %62 = load <4 x i64>, ptr %61, align 8
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %64 = load <4 x i64>, ptr %63, align 8
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %66 = load <4 x i64>, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %68 = load <4 x i64>, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %70 = load <4 x i64>, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %72 = load <4 x i64>, ptr %71, align 8
  %73 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %74 = load <4 x i64>, ptr %73, align 8
  %75 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %76 = load <4 x i64>, ptr %75, align 8
  br label %77

77:                                               ; preds = %36, %77
  %78 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %36 ], [ %453, %77 ]
  %79 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %36 ], [ %443, %77 ]
  %80 = phi i64 [ 0, %36 ], [ %454, %77 ]
  %81 = shl i64 %80, 10
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 %81
  %83 = load <4 x i64>, ptr %82, align 1
  %84 = xor <4 x i64> %39, %83
  %85 = bitcast <4 x i64> %84 to <8 x i32>
  %86 = shufflevector <8 x i32> %85, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %87 = bitcast <8 x i32> %86 to <4 x i64>
  %88 = and <4 x i64> %84, splat (i64 4294967295)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = add <4 x i64> %79, %83
  %92 = add <4 x i64> %91, %90
  %93 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %94 = load <4 x i64>, ptr %93, align 1
  %95 = xor <4 x i64> %40, %94
  %96 = bitcast <4 x i64> %95 to <8 x i32>
  %97 = shufflevector <8 x i32> %96, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %98 = bitcast <8 x i32> %97 to <4 x i64>
  %99 = and <4 x i64> %95, splat (i64 4294967295)
  %100 = and <4 x i64> %98, splat (i64 4294967295)
  %101 = mul nuw <4 x i64> %100, %99
  %102 = add <4 x i64> %78, %94
  %103 = add <4 x i64> %102, %101
  %104 = getelementptr inbounds nuw i8, ptr %82, i64 64
  %105 = load <4 x i64>, ptr %104, align 1
  %106 = xor <4 x i64> %41, %105
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = add <4 x i64> %92, %105
  %114 = add <4 x i64> %113, %112
  %115 = getelementptr inbounds nuw i8, ptr %82, i64 96
  %116 = load <4 x i64>, ptr %115, align 1
  %117 = xor <4 x i64> %43, %116
  %118 = bitcast <4 x i64> %117 to <8 x i32>
  %119 = shufflevector <8 x i32> %118, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %120 = bitcast <8 x i32> %119 to <4 x i64>
  %121 = and <4 x i64> %117, splat (i64 4294967295)
  %122 = and <4 x i64> %120, splat (i64 4294967295)
  %123 = mul nuw <4 x i64> %122, %121
  %124 = add <4 x i64> %103, %116
  %125 = add <4 x i64> %124, %123
  %126 = getelementptr inbounds nuw i8, ptr %82, i64 128
  %127 = load <4 x i64>, ptr %126, align 1
  %128 = xor <4 x i64> %44, %127
  %129 = bitcast <4 x i64> %128 to <8 x i32>
  %130 = shufflevector <8 x i32> %129, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %131 = bitcast <8 x i32> %130 to <4 x i64>
  %132 = and <4 x i64> %128, splat (i64 4294967295)
  %133 = and <4 x i64> %131, splat (i64 4294967295)
  %134 = mul nuw <4 x i64> %133, %132
  %135 = add <4 x i64> %114, %127
  %136 = add <4 x i64> %135, %134
  %137 = getelementptr inbounds nuw i8, ptr %82, i64 160
  %138 = load <4 x i64>, ptr %137, align 1
  %139 = xor <4 x i64> %46, %138
  %140 = bitcast <4 x i64> %139 to <8 x i32>
  %141 = shufflevector <8 x i32> %140, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %142 = bitcast <8 x i32> %141 to <4 x i64>
  %143 = and <4 x i64> %139, splat (i64 4294967295)
  %144 = and <4 x i64> %142, splat (i64 4294967295)
  %145 = mul nuw <4 x i64> %144, %143
  %146 = add <4 x i64> %125, %138
  %147 = add <4 x i64> %146, %145
  %148 = getelementptr inbounds nuw i8, ptr %82, i64 192
  %149 = load <4 x i64>, ptr %148, align 1
  %150 = xor <4 x i64> %48, %149
  %151 = bitcast <4 x i64> %150 to <8 x i32>
  %152 = shufflevector <8 x i32> %151, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %153 = bitcast <8 x i32> %152 to <4 x i64>
  %154 = and <4 x i64> %150, splat (i64 4294967295)
  %155 = and <4 x i64> %153, splat (i64 4294967295)
  %156 = mul nuw <4 x i64> %155, %154
  %157 = add <4 x i64> %136, %149
  %158 = add <4 x i64> %157, %156
  %159 = getelementptr inbounds nuw i8, ptr %82, i64 224
  %160 = load <4 x i64>, ptr %159, align 1
  %161 = xor <4 x i64> %50, %160
  %162 = bitcast <4 x i64> %161 to <8 x i32>
  %163 = shufflevector <8 x i32> %162, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %164 = bitcast <8 x i32> %163 to <4 x i64>
  %165 = and <4 x i64> %161, splat (i64 4294967295)
  %166 = and <4 x i64> %164, splat (i64 4294967295)
  %167 = mul nuw <4 x i64> %166, %165
  %168 = add <4 x i64> %147, %160
  %169 = add <4 x i64> %168, %167
  %170 = getelementptr inbounds nuw i8, ptr %82, i64 256
  %171 = load <4 x i64>, ptr %170, align 1
  %172 = xor <4 x i64> %40, %171
  %173 = bitcast <4 x i64> %172 to <8 x i32>
  %174 = shufflevector <8 x i32> %173, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %175 = bitcast <8 x i32> %174 to <4 x i64>
  %176 = and <4 x i64> %172, splat (i64 4294967295)
  %177 = and <4 x i64> %175, splat (i64 4294967295)
  %178 = mul nuw <4 x i64> %177, %176
  %179 = add <4 x i64> %158, %171
  %180 = add <4 x i64> %179, %178
  %181 = getelementptr inbounds nuw i8, ptr %82, i64 288
  %182 = load <4 x i64>, ptr %181, align 1
  %183 = xor <4 x i64> %52, %182
  %184 = bitcast <4 x i64> %183 to <8 x i32>
  %185 = shufflevector <8 x i32> %184, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %186 = bitcast <8 x i32> %185 to <4 x i64>
  %187 = and <4 x i64> %183, splat (i64 4294967295)
  %188 = and <4 x i64> %186, splat (i64 4294967295)
  %189 = mul nuw <4 x i64> %188, %187
  %190 = add <4 x i64> %169, %182
  %191 = add <4 x i64> %190, %189
  %192 = getelementptr inbounds nuw i8, ptr %82, i64 320
  %193 = load <4 x i64>, ptr %192, align 1
  %194 = xor <4 x i64> %43, %193
  %195 = bitcast <4 x i64> %194 to <8 x i32>
  %196 = shufflevector <8 x i32> %195, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %197 = bitcast <8 x i32> %196 to <4 x i64>
  %198 = and <4 x i64> %194, splat (i64 4294967295)
  %199 = and <4 x i64> %197, splat (i64 4294967295)
  %200 = mul nuw <4 x i64> %199, %198
  %201 = add <4 x i64> %180, %193
  %202 = add <4 x i64> %201, %200
  %203 = getelementptr inbounds nuw i8, ptr %82, i64 352
  %204 = load <4 x i64>, ptr %203, align 1
  %205 = xor <4 x i64> %54, %204
  %206 = bitcast <4 x i64> %205 to <8 x i32>
  %207 = shufflevector <8 x i32> %206, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %208 = bitcast <8 x i32> %207 to <4 x i64>
  %209 = and <4 x i64> %205, splat (i64 4294967295)
  %210 = and <4 x i64> %208, splat (i64 4294967295)
  %211 = mul nuw <4 x i64> %210, %209
  %212 = add <4 x i64> %191, %204
  %213 = add <4 x i64> %212, %211
  %214 = getelementptr inbounds nuw i8, ptr %82, i64 384
  %215 = load <4 x i64>, ptr %214, align 1
  %216 = xor <4 x i64> %46, %215
  %217 = bitcast <4 x i64> %216 to <8 x i32>
  %218 = shufflevector <8 x i32> %217, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %219 = bitcast <8 x i32> %218 to <4 x i64>
  %220 = and <4 x i64> %216, splat (i64 4294967295)
  %221 = and <4 x i64> %219, splat (i64 4294967295)
  %222 = mul nuw <4 x i64> %221, %220
  %223 = add <4 x i64> %202, %215
  %224 = add <4 x i64> %223, %222
  %225 = getelementptr inbounds nuw i8, ptr %82, i64 416
  %226 = load <4 x i64>, ptr %225, align 1
  %227 = xor <4 x i64> %56, %226
  %228 = bitcast <4 x i64> %227 to <8 x i32>
  %229 = shufflevector <8 x i32> %228, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %230 = bitcast <8 x i32> %229 to <4 x i64>
  %231 = and <4 x i64> %227, splat (i64 4294967295)
  %232 = and <4 x i64> %230, splat (i64 4294967295)
  %233 = mul nuw <4 x i64> %232, %231
  %234 = add <4 x i64> %213, %226
  %235 = add <4 x i64> %234, %233
  %236 = getelementptr inbounds nuw i8, ptr %82, i64 448
  %237 = load <4 x i64>, ptr %236, align 1
  %238 = xor <4 x i64> %50, %237
  %239 = bitcast <4 x i64> %238 to <8 x i32>
  %240 = shufflevector <8 x i32> %239, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %241 = bitcast <8 x i32> %240 to <4 x i64>
  %242 = and <4 x i64> %238, splat (i64 4294967295)
  %243 = and <4 x i64> %241, splat (i64 4294967295)
  %244 = mul nuw <4 x i64> %243, %242
  %245 = add <4 x i64> %224, %237
  %246 = add <4 x i64> %245, %244
  %247 = getelementptr inbounds nuw i8, ptr %82, i64 480
  %248 = load <4 x i64>, ptr %247, align 1
  %249 = xor <4 x i64> %58, %248
  %250 = bitcast <4 x i64> %249 to <8 x i32>
  %251 = shufflevector <8 x i32> %250, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %252 = bitcast <8 x i32> %251 to <4 x i64>
  %253 = and <4 x i64> %249, splat (i64 4294967295)
  %254 = and <4 x i64> %252, splat (i64 4294967295)
  %255 = mul nuw <4 x i64> %254, %253
  %256 = add <4 x i64> %235, %248
  %257 = add <4 x i64> %256, %255
  %258 = getelementptr inbounds nuw i8, ptr %82, i64 512
  %259 = load <4 x i64>, ptr %258, align 1
  %260 = xor <4 x i64> %52, %259
  %261 = bitcast <4 x i64> %260 to <8 x i32>
  %262 = shufflevector <8 x i32> %261, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %263 = bitcast <8 x i32> %262 to <4 x i64>
  %264 = and <4 x i64> %260, splat (i64 4294967295)
  %265 = and <4 x i64> %263, splat (i64 4294967295)
  %266 = mul nuw <4 x i64> %265, %264
  %267 = add <4 x i64> %246, %259
  %268 = add <4 x i64> %267, %266
  %269 = getelementptr inbounds nuw i8, ptr %82, i64 544
  %270 = load <4 x i64>, ptr %269, align 1
  %271 = xor <4 x i64> %60, %270
  %272 = bitcast <4 x i64> %271 to <8 x i32>
  %273 = shufflevector <8 x i32> %272, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %274 = bitcast <8 x i32> %273 to <4 x i64>
  %275 = and <4 x i64> %271, splat (i64 4294967295)
  %276 = and <4 x i64> %274, splat (i64 4294967295)
  %277 = mul nuw <4 x i64> %276, %275
  %278 = add <4 x i64> %257, %270
  %279 = add <4 x i64> %278, %277
  %280 = getelementptr inbounds nuw i8, ptr %82, i64 576
  %281 = load <4 x i64>, ptr %280, align 1
  %282 = xor <4 x i64> %54, %281
  %283 = bitcast <4 x i64> %282 to <8 x i32>
  %284 = shufflevector <8 x i32> %283, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %285 = bitcast <8 x i32> %284 to <4 x i64>
  %286 = and <4 x i64> %282, splat (i64 4294967295)
  %287 = and <4 x i64> %285, splat (i64 4294967295)
  %288 = mul nuw <4 x i64> %287, %286
  %289 = add <4 x i64> %268, %281
  %290 = add <4 x i64> %289, %288
  %291 = getelementptr inbounds nuw i8, ptr %82, i64 608
  %292 = load <4 x i64>, ptr %291, align 1
  %293 = xor <4 x i64> %62, %292
  %294 = bitcast <4 x i64> %293 to <8 x i32>
  %295 = shufflevector <8 x i32> %294, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %296 = bitcast <8 x i32> %295 to <4 x i64>
  %297 = and <4 x i64> %293, splat (i64 4294967295)
  %298 = and <4 x i64> %296, splat (i64 4294967295)
  %299 = mul nuw <4 x i64> %298, %297
  %300 = add <4 x i64> %279, %292
  %301 = add <4 x i64> %300, %299
  %302 = getelementptr inbounds nuw i8, ptr %82, i64 640
  %303 = load <4 x i64>, ptr %302, align 1
  %304 = xor <4 x i64> %56, %303
  %305 = bitcast <4 x i64> %304 to <8 x i32>
  %306 = shufflevector <8 x i32> %305, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %307 = bitcast <8 x i32> %306 to <4 x i64>
  %308 = and <4 x i64> %304, splat (i64 4294967295)
  %309 = and <4 x i64> %307, splat (i64 4294967295)
  %310 = mul nuw <4 x i64> %309, %308
  %311 = add <4 x i64> %290, %303
  %312 = add <4 x i64> %311, %310
  %313 = getelementptr inbounds nuw i8, ptr %82, i64 672
  %314 = load <4 x i64>, ptr %313, align 1
  %315 = xor <4 x i64> %64, %314
  %316 = bitcast <4 x i64> %315 to <8 x i32>
  %317 = shufflevector <8 x i32> %316, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %318 = bitcast <8 x i32> %317 to <4 x i64>
  %319 = and <4 x i64> %315, splat (i64 4294967295)
  %320 = and <4 x i64> %318, splat (i64 4294967295)
  %321 = mul nuw <4 x i64> %320, %319
  %322 = add <4 x i64> %301, %314
  %323 = add <4 x i64> %322, %321
  %324 = getelementptr inbounds nuw i8, ptr %82, i64 704
  %325 = load <4 x i64>, ptr %324, align 1
  %326 = xor <4 x i64> %58, %325
  %327 = bitcast <4 x i64> %326 to <8 x i32>
  %328 = shufflevector <8 x i32> %327, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %329 = bitcast <8 x i32> %328 to <4 x i64>
  %330 = and <4 x i64> %326, splat (i64 4294967295)
  %331 = and <4 x i64> %329, splat (i64 4294967295)
  %332 = mul nuw <4 x i64> %331, %330
  %333 = add <4 x i64> %312, %325
  %334 = add <4 x i64> %333, %332
  %335 = getelementptr inbounds nuw i8, ptr %82, i64 736
  %336 = load <4 x i64>, ptr %335, align 1
  %337 = xor <4 x i64> %66, %336
  %338 = bitcast <4 x i64> %337 to <8 x i32>
  %339 = shufflevector <8 x i32> %338, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %340 = bitcast <8 x i32> %339 to <4 x i64>
  %341 = and <4 x i64> %337, splat (i64 4294967295)
  %342 = and <4 x i64> %340, splat (i64 4294967295)
  %343 = mul nuw <4 x i64> %342, %341
  %344 = add <4 x i64> %323, %336
  %345 = add <4 x i64> %344, %343
  %346 = getelementptr inbounds nuw i8, ptr %82, i64 768
  %347 = load <4 x i64>, ptr %346, align 1
  %348 = xor <4 x i64> %60, %347
  %349 = bitcast <4 x i64> %348 to <8 x i32>
  %350 = shufflevector <8 x i32> %349, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %351 = bitcast <8 x i32> %350 to <4 x i64>
  %352 = and <4 x i64> %348, splat (i64 4294967295)
  %353 = and <4 x i64> %351, splat (i64 4294967295)
  %354 = mul nuw <4 x i64> %353, %352
  %355 = add <4 x i64> %334, %347
  %356 = add <4 x i64> %355, %354
  %357 = getelementptr inbounds nuw i8, ptr %82, i64 800
  %358 = load <4 x i64>, ptr %357, align 1
  %359 = xor <4 x i64> %68, %358
  %360 = bitcast <4 x i64> %359 to <8 x i32>
  %361 = shufflevector <8 x i32> %360, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %362 = bitcast <8 x i32> %361 to <4 x i64>
  %363 = and <4 x i64> %359, splat (i64 4294967295)
  %364 = and <4 x i64> %362, splat (i64 4294967295)
  %365 = mul nuw <4 x i64> %364, %363
  %366 = add <4 x i64> %345, %358
  %367 = add <4 x i64> %366, %365
  %368 = getelementptr inbounds nuw i8, ptr %82, i64 832
  %369 = load <4 x i64>, ptr %368, align 1
  %370 = xor <4 x i64> %62, %369
  %371 = bitcast <4 x i64> %370 to <8 x i32>
  %372 = shufflevector <8 x i32> %371, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %373 = bitcast <8 x i32> %372 to <4 x i64>
  %374 = and <4 x i64> %370, splat (i64 4294967295)
  %375 = and <4 x i64> %373, splat (i64 4294967295)
  %376 = mul nuw <4 x i64> %375, %374
  %377 = add <4 x i64> %356, %369
  %378 = add <4 x i64> %377, %376
  %379 = getelementptr inbounds nuw i8, ptr %82, i64 864
  %380 = load <4 x i64>, ptr %379, align 1
  %381 = xor <4 x i64> %70, %380
  %382 = bitcast <4 x i64> %381 to <8 x i32>
  %383 = shufflevector <8 x i32> %382, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %384 = bitcast <8 x i32> %383 to <4 x i64>
  %385 = and <4 x i64> %381, splat (i64 4294967295)
  %386 = and <4 x i64> %384, splat (i64 4294967295)
  %387 = mul nuw <4 x i64> %386, %385
  %388 = add <4 x i64> %367, %380
  %389 = add <4 x i64> %388, %387
  %390 = getelementptr inbounds nuw i8, ptr %82, i64 896
  %391 = load <4 x i64>, ptr %390, align 1
  %392 = xor <4 x i64> %64, %391
  %393 = bitcast <4 x i64> %392 to <8 x i32>
  %394 = shufflevector <8 x i32> %393, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %395 = bitcast <8 x i32> %394 to <4 x i64>
  %396 = and <4 x i64> %392, splat (i64 4294967295)
  %397 = and <4 x i64> %395, splat (i64 4294967295)
  %398 = mul nuw <4 x i64> %397, %396
  %399 = add <4 x i64> %378, %391
  %400 = add <4 x i64> %399, %398
  %401 = getelementptr inbounds nuw i8, ptr %82, i64 928
  %402 = load <4 x i64>, ptr %401, align 1
  %403 = xor <4 x i64> %72, %402
  %404 = bitcast <4 x i64> %403 to <8 x i32>
  %405 = shufflevector <8 x i32> %404, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %406 = bitcast <8 x i32> %405 to <4 x i64>
  %407 = and <4 x i64> %403, splat (i64 4294967295)
  %408 = and <4 x i64> %406, splat (i64 4294967295)
  %409 = mul nuw <4 x i64> %408, %407
  %410 = add <4 x i64> %389, %402
  %411 = add <4 x i64> %410, %409
  %412 = getelementptr inbounds nuw i8, ptr %82, i64 960
  %413 = load <4 x i64>, ptr %412, align 1
  %414 = xor <4 x i64> %66, %413
  %415 = bitcast <4 x i64> %414 to <8 x i32>
  %416 = shufflevector <8 x i32> %415, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %417 = bitcast <8 x i32> %416 to <4 x i64>
  %418 = and <4 x i64> %414, splat (i64 4294967295)
  %419 = and <4 x i64> %417, splat (i64 4294967295)
  %420 = mul nuw <4 x i64> %419, %418
  %421 = add <4 x i64> %400, %413
  %422 = add <4 x i64> %421, %420
  %423 = getelementptr inbounds nuw i8, ptr %82, i64 992
  %424 = load <4 x i64>, ptr %423, align 1
  %425 = xor <4 x i64> %74, %424
  %426 = bitcast <4 x i64> %425 to <8 x i32>
  %427 = shufflevector <8 x i32> %426, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %428 = bitcast <8 x i32> %427 to <4 x i64>
  %429 = and <4 x i64> %425, splat (i64 4294967295)
  %430 = and <4 x i64> %428, splat (i64 4294967295)
  %431 = mul nuw <4 x i64> %430, %429
  %432 = add <4 x i64> %411, %424
  %433 = add <4 x i64> %432, %431
  %434 = lshr <4 x i64> %422, splat (i64 47)
  %435 = xor <4 x i64> %68, %434
  %436 = xor <4 x i64> %435, %422
  %437 = and <4 x i64> %436, splat (i64 4294967295)
  %438 = mul nuw <4 x i64> %437, splat (i64 2654435761)
  %439 = bitcast <4 x i64> %436 to <8 x i32>
  %440 = shufflevector <8 x i32> %439, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %441 = bitcast <8 x i32> %440 to <4 x i64>
  %442 = mul <4 x i64> %441, splat (i64 -7046029290881679360)
  %443 = add <4 x i64> %442, %438
  %444 = lshr <4 x i64> %433, splat (i64 47)
  %445 = xor <4 x i64> %76, %444
  %446 = xor <4 x i64> %445, %433
  %447 = and <4 x i64> %446, splat (i64 4294967295)
  %448 = mul nuw <4 x i64> %447, splat (i64 2654435761)
  %449 = bitcast <4 x i64> %446 to <8 x i32>
  %450 = shufflevector <8 x i32> %449, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %451 = bitcast <8 x i32> %450 to <4 x i64>
  %452 = mul <4 x i64> %451, splat (i64 -7046029290881679360)
  %453 = add <4 x i64> %452, %448
  %454 = add nuw nsw i64 %80, 1
  %455 = icmp eq i64 %454, %32
  br i1 %455, label %456, label %77

456:                                              ; preds = %77, %6
  %457 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %453, %77 ]
  %458 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %443, %77 ]
  %459 = and i64 %1, -1024
  %460 = lshr i64 %1, 6
  %461 = and i64 %460, 15
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 %459
  %463 = icmp eq i64 %461, 0
  br i1 %463, label %498, label %464

464:                                              ; preds = %456, %464
  %465 = phi <4 x i64> [ %495, %464 ], [ %457, %456 ]
  %466 = phi <4 x i64> [ %482, %464 ], [ %458, %456 ]
  %467 = phi i64 [ %496, %464 ], [ 0, %456 ]
  %468 = shl i64 %467, 6
  %469 = getelementptr inbounds nuw i8, ptr %462, i64 %468
  %470 = shl i64 %467, 3
  %471 = getelementptr inbounds nuw i8, ptr %4, i64 %470
  %472 = load <4 x i64>, ptr %469, align 1
  %473 = load <4 x i64>, ptr %471, align 8
  %474 = xor <4 x i64> %473, %472
  %475 = bitcast <4 x i64> %474 to <8 x i32>
  %476 = shufflevector <8 x i32> %475, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %477 = bitcast <8 x i32> %476 to <4 x i64>
  %478 = and <4 x i64> %474, splat (i64 4294967295)
  %479 = and <4 x i64> %477, splat (i64 4294967295)
  %480 = mul nuw <4 x i64> %479, %478
  %481 = add <4 x i64> %466, %472
  %482 = add <4 x i64> %481, %480
  %483 = getelementptr inbounds nuw i8, ptr %469, i64 32
  %484 = load <4 x i64>, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %471, i64 32
  %486 = load <4 x i64>, ptr %485, align 8
  %487 = xor <4 x i64> %486, %484
  %488 = bitcast <4 x i64> %487 to <8 x i32>
  %489 = shufflevector <8 x i32> %488, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %490 = bitcast <8 x i32> %489 to <4 x i64>
  %491 = and <4 x i64> %487, splat (i64 4294967295)
  %492 = and <4 x i64> %490, splat (i64 4294967295)
  %493 = mul nuw <4 x i64> %492, %491
  %494 = add <4 x i64> %465, %484
  %495 = add <4 x i64> %494, %493
  %496 = add nuw nsw i64 %467, 1
  %497 = icmp eq i64 %496, %461
  br i1 %497, label %498, label %464

498:                                              ; preds = %464, %456
  %499 = phi <4 x i64> [ %457, %456 ], [ %495, %464 ]
  %500 = phi <4 x i64> [ %458, %456 ], [ %482, %464 ]
  %501 = and i64 %1, 63
  %502 = icmp eq i64 %501, 0
  br i1 %502, label %531, label %503

503:                                              ; preds = %498
  %504 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %505 = getelementptr inbounds i8, ptr %504, i64 -64
  %506 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %507 = load <4 x i64>, ptr %505, align 1
  %508 = load <4 x i64>, ptr %506, align 1
  %509 = xor <4 x i64> %508, %507
  %510 = bitcast <4 x i64> %509 to <8 x i32>
  %511 = shufflevector <8 x i32> %510, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %512 = bitcast <8 x i32> %511 to <4 x i64>
  %513 = and <4 x i64> %509, splat (i64 4294967295)
  %514 = and <4 x i64> %512, splat (i64 4294967295)
  %515 = mul nuw <4 x i64> %514, %513
  %516 = add <4 x i64> %500, %507
  %517 = add <4 x i64> %516, %515
  %518 = getelementptr inbounds i8, ptr %504, i64 -32
  %519 = load <4 x i64>, ptr %518, align 1
  %520 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %521 = load <4 x i64>, ptr %520, align 1
  %522 = xor <4 x i64> %521, %519
  %523 = bitcast <4 x i64> %522 to <8 x i32>
  %524 = shufflevector <8 x i32> %523, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %525 = bitcast <8 x i32> %524 to <4 x i64>
  %526 = and <4 x i64> %522, splat (i64 4294967295)
  %527 = and <4 x i64> %525, splat (i64 4294967295)
  %528 = mul nuw <4 x i64> %527, %526
  %529 = add <4 x i64> %499, %519
  %530 = add <4 x i64> %529, %528
  br label %531

531:                                              ; preds = %503, %498
  %532 = phi <4 x i64> [ %499, %498 ], [ %530, %503 ]
  %533 = phi <4 x i64> [ %500, %498 ], [ %517, %503 ]
  %534 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %535 = mul i64 %1, -7046029288634856825
  %536 = load <8 x i64>, ptr %534, align 1
  %537 = shufflevector <8 x i64> %536, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %538 = shufflevector <4 x i64> %533, <4 x i64> %532, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %539 = xor <4 x i64> %537, %538
  %540 = shufflevector <8 x i64> %536, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %541 = shufflevector <4 x i64> %533, <4 x i64> %532, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %542 = xor <4 x i64> %540, %541
  %543 = zext <4 x i64> %539 to <4 x i128>
  %544 = zext <4 x i64> %542 to <4 x i128>
  %545 = mul nuw <4 x i128> %544, %543
  %546 = lshr <4 x i128> %545, splat (i128 64)
  %547 = xor <4 x i128> %546, %545
  %548 = trunc <4 x i128> %547 to <4 x i64>
  %549 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %548)
  %550 = add i64 %549, %535
  %551 = lshr i64 %550, 37
  %552 = xor i64 %551, %550
  %553 = mul i64 %552, 1609587929392839161
  %554 = lshr i64 %553, 32
  %555 = xor i64 %554, %553
  br label %556

556:                                              ; preds = %531, %34
  %557 = phi i64 [ %35, %34 ], [ %555, %531 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #28
  ret i64 %557
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH3_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(576) ptr @malloc(i64 noundef 576) #27
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH3_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH3_copyState(ptr noundef writeonly initializes((0, 576)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %0, ptr noundef nonnull align 64 dereferenceable(576) %1, i64 576, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 512, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %5, align 32
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr @kSecret, ptr %6, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 128, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 16, ptr %8, align 4
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 512, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %7, align 32
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %1, ptr %8, align 64
  %9 = trunc i64 %2 to i32
  %10 = add i32 %9, -64
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 %10, ptr %11, align 4
  %12 = lshr i32 %10, 3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 %12, ptr %13, align 4
  %14 = icmp eq ptr %1, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = icmp ult i64 %2, 136
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %15, %5, %3
  %19 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %17, %15 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 320, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %7, align 32
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 128, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 16, ptr %11, align 4
  %12 = insertelement <4 x i64> poison, i64 %1, i64 0
  %13 = shufflevector <4 x i64> %12, <4 x i64> poison, <4 x i32> zeroinitializer
  %14 = add <4 x i64> %13, <i64 -4734510112055689544, i64 poison, i64 -2623469361688619810, i64 poison>
  %15 = sub <4 x i64> <i64 poison, i64 2066345149520216444, i64 poison, i64 2262974939099578482>, %13
  %16 = shufflevector <4 x i64> %14, <4 x i64> %15, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %16, ptr %5, align 1
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %18 = add <4 x i64> %13, <i64 8711581037947681227, i64 poison, i64 -8204357891075471176, i64 poison>
  %19 = sub <4 x i64> <i64 poison, i64 2410270004345854594, i64 poison, i64 5487137525590930912>, %13
  %20 = shufflevector <4 x i64> %18, <4 x i64> %19, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %20, ptr %17, align 1
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %22 = add <4 x i64> %13, <i64 -3818837453329782724, i64 poison, i64 5690594596133299313, i64 poison>
  %23 = sub <4 x i64> <i64 poison, i64 -6688317018830679928, i64 poison, i64 -2833645246901970632>, %13
  %24 = shufflevector <4 x i64> %22, <4 x i64> %23, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %24, ptr %21, align 1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %26 = add <4 x i64> %13, <i64 4554437623014685352, i64 poison, i64 3556072174620004746, i64 poison>
  %27 = sub <4 x i64> <i64 poison, i64 2111919702937427193, i64 poison, i64 7238261902898274248>, %13
  %28 = shufflevector <4 x i64> %26, <4 x i64> %27, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %28, ptr %25, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %30 = add <4 x i64> %13, <i64 -4329134394285701654, i64 poison, i64 5321830579834785047, i64 poison>
  %31 = sub <4 x i64> <i64 poison, i64 -1485321483350670907, i64 poison, i64 -7032137544937171245>, %13
  %32 = shufflevector <4 x i64> %30, <4 x i64> %31, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %32, ptr %29, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %34 = add <4 x i64> %13, <i64 -242834301215959509, i64 poison, i64 2883454493032893253, i64 poison>
  %35 = sub <4 x i64> <i64 poison, i64 -3588858202114426737, i64 poison, i64 9097354517224871855>, %13
  %36 = shufflevector <4 x i64> %34, <4 x i64> %35, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %36, ptr %33, align 1
  store ptr %5, ptr %9, align 64
  br label %37

37:                                               ; preds = %2, %4
  %38 = phi i32 [ 0, %4 ], [ 1, %2 ]
  ret i32 %38
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #16 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %529, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %8 = load i64, ptr %7, align 32
  %9 = add i64 %8, %2
  store i64 %9, ptr %7, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %11 = load i32, ptr %10, align 8
  %12 = zext i32 %11 to i64
  %13 = add i64 %2, %12
  %14 = icmp ult i64 %13, 257
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %18 = trunc i64 %2 to i32
  %19 = load i32, ptr %10, align 8
  %20 = add i32 %19, %18
  br label %527

21:                                               ; preds = %5
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %268, label %23

23:                                               ; preds = %21
  %24 = sub i32 256, %11
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull readonly align 1 %1, i64 %25, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %33 = load ptr, ptr %32, align 64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, ptr %29, align 4
  %38 = sub i32 %31, %37
  %39 = zext i32 %38 to i64
  %40 = icmp ugt i32 %38, 4
  %41 = shl i32 %37, 3
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %33, i64 %42
  br i1 %40, label %158, label %44

44:                                               ; preds = %23
  %45 = icmp eq i32 %31, %37
  %46 = load <4 x i64>, ptr %0, align 32
  br i1 %45, label %47, label %50

47:                                               ; preds = %44
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %49 = load <4 x i64>, ptr %48, align 32
  br label %89

50:                                               ; preds = %44
  %51 = tail call i64 @llvm.umax.i64(i64 %39, i64 1)
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %53 = load <4 x i64>, ptr %52, align 32
  br label %54

54:                                               ; preds = %50, %54
  %55 = phi <4 x i64> [ %85, %54 ], [ %53, %50 ]
  %56 = phi <4 x i64> [ %72, %54 ], [ %46, %50 ]
  %57 = phi i64 [ %86, %54 ], [ 0, %50 ]
  %58 = shl i64 %57, 6
  %59 = getelementptr inbounds nuw i8, ptr %26, i64 %58
  %60 = shl i64 %57, 3
  %61 = getelementptr inbounds nuw i8, ptr %43, i64 %60
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %62 = load <4 x i64>, ptr %59, align 1
  %63 = load <4 x i64>, ptr %61, align 1
  %64 = xor <4 x i64> %63, %62
  %65 = bitcast <4 x i64> %64 to <8 x i32>
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = and <4 x i64> %64, splat (i64 4294967295)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, %68
  %71 = add <4 x i64> %56, %62
  %72 = add <4 x i64> %71, %70
  %73 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %74 = load <4 x i64>, ptr %73, align 1
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %76 = load <4 x i64>, ptr %75, align 1
  %77 = xor <4 x i64> %76, %74
  %78 = bitcast <4 x i64> %77 to <8 x i32>
  %79 = shufflevector <8 x i32> %78, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %80 = bitcast <8 x i32> %79 to <4 x i64>
  %81 = and <4 x i64> %77, splat (i64 4294967295)
  %82 = and <4 x i64> %80, splat (i64 4294967295)
  %83 = mul nuw <4 x i64> %82, %81
  %84 = add <4 x i64> %55, %74
  %85 = add <4 x i64> %84, %83
  %86 = add nuw nsw i64 %57, 1
  %87 = icmp eq i64 %86, %51
  br i1 %87, label %88, label %54

88:                                               ; preds = %54
  store <4 x i64> %72, ptr %0, align 32
  store <4 x i64> %85, ptr %52, align 32
  br label %89

89:                                               ; preds = %88, %47
  %90 = phi <4 x i64> [ %49, %47 ], [ %85, %88 ]
  %91 = phi <4 x i64> [ %46, %47 ], [ %72, %88 ]
  %92 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %93 = lshr <4 x i64> %91, splat (i64 47)
  %94 = load <4 x i64>, ptr %92, align 1
  %95 = xor <4 x i64> %94, %93
  %96 = xor <4 x i64> %95, %91
  %97 = and <4 x i64> %96, splat (i64 4294967295)
  %98 = mul nuw <4 x i64> %97, splat (i64 2654435761)
  %99 = bitcast <4 x i64> %96 to <8 x i32>
  %100 = shufflevector <8 x i32> %99, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %101 = bitcast <8 x i32> %100 to <4 x i64>
  %102 = mul <4 x i64> %101, splat (i64 -7046029290881679360)
  %103 = add <4 x i64> %102, %98
  store <4 x i64> %103, ptr %0, align 32
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %105 = lshr <4 x i64> %90, splat (i64 47)
  %106 = getelementptr inbounds nuw i8, ptr %92, i64 32
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = xor <4 x i64> %107, %105
  %109 = xor <4 x i64> %108, %90
  %110 = and <4 x i64> %109, splat (i64 4294967295)
  %111 = mul nuw <4 x i64> %110, splat (i64 2654435761)
  %112 = bitcast <4 x i64> %109 to <8 x i32>
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %114 = bitcast <8 x i32> %113 to <4 x i64>
  %115 = mul <4 x i64> %114, splat (i64 -7046029290881679360)
  %116 = add <4 x i64> %115, %111
  store <4 x i64> %116, ptr %104, align 32
  %117 = shl nuw nsw i64 %39, 6
  %118 = getelementptr inbounds nuw i8, ptr %26, i64 %117
  %119 = sub nsw i64 4, %39
  %120 = icmp eq i32 %38, 4
  br i1 %120, label %156, label %121

121:                                              ; preds = %89, %121
  %122 = phi <4 x i64> [ %152, %121 ], [ %116, %89 ]
  %123 = phi <4 x i64> [ %139, %121 ], [ %103, %89 ]
  %124 = phi i64 [ %153, %121 ], [ 0, %89 ]
  %125 = shl i64 %124, 6
  %126 = getelementptr inbounds nuw i8, ptr %118, i64 %125
  %127 = shl i64 %124, 3
  %128 = getelementptr inbounds nuw i8, ptr %33, i64 %127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %129 = load <4 x i64>, ptr %126, align 1
  %130 = load <4 x i64>, ptr %128, align 1
  %131 = xor <4 x i64> %130, %129
  %132 = bitcast <4 x i64> %131 to <8 x i32>
  %133 = shufflevector <8 x i32> %132, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %134 = bitcast <8 x i32> %133 to <4 x i64>
  %135 = and <4 x i64> %131, splat (i64 4294967295)
  %136 = and <4 x i64> %134, splat (i64 4294967295)
  %137 = mul nuw <4 x i64> %136, %135
  %138 = add <4 x i64> %123, %129
  %139 = add <4 x i64> %138, %137
  %140 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %141 = load <4 x i64>, ptr %140, align 1
  %142 = getelementptr inbounds nuw i8, ptr %128, i64 32
  %143 = load <4 x i64>, ptr %142, align 1
  %144 = xor <4 x i64> %143, %141
  %145 = bitcast <4 x i64> %144 to <8 x i32>
  %146 = shufflevector <8 x i32> %145, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %147 = bitcast <8 x i32> %146 to <4 x i64>
  %148 = and <4 x i64> %144, splat (i64 4294967295)
  %149 = and <4 x i64> %147, splat (i64 4294967295)
  %150 = mul nuw <4 x i64> %149, %148
  %151 = add <4 x i64> %122, %141
  %152 = add <4 x i64> %151, %150
  %153 = add nuw i64 %124, 1
  %154 = icmp eq i64 %153, %119
  br i1 %154, label %155, label %121

155:                                              ; preds = %121
  store <4 x i64> %139, ptr %0, align 32
  store <4 x i64> %152, ptr %104, align 32
  br label %156

156:                                              ; preds = %155, %89
  %157 = trunc nuw nsw i64 %119 to i32
  br label %266

158:                                              ; preds = %23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %159 = load <4 x i64>, ptr %26, align 1
  %160 = load <4 x i64>, ptr %43, align 1
  %161 = xor <4 x i64> %160, %159
  %162 = bitcast <4 x i64> %161 to <8 x i32>
  %163 = shufflevector <8 x i32> %162, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %164 = bitcast <8 x i32> %163 to <4 x i64>
  %165 = and <4 x i64> %161, splat (i64 4294967295)
  %166 = and <4 x i64> %164, splat (i64 4294967295)
  %167 = mul nuw <4 x i64> %166, %165
  %168 = load <4 x i64>, ptr %0, align 32
  %169 = add <4 x i64> %168, %159
  %170 = add <4 x i64> %169, %167
  store <4 x i64> %170, ptr %0, align 32
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %172 = load <4 x i64>, ptr %171, align 1
  %173 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %174 = load <4 x i64>, ptr %173, align 1
  %175 = xor <4 x i64> %174, %172
  %176 = bitcast <4 x i64> %175 to <8 x i32>
  %177 = shufflevector <8 x i32> %176, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %178 = bitcast <8 x i32> %177 to <4 x i64>
  %179 = and <4 x i64> %175, splat (i64 4294967295)
  %180 = and <4 x i64> %178, splat (i64 4294967295)
  %181 = mul nuw <4 x i64> %180, %179
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %183 = load <4 x i64>, ptr %182, align 32
  %184 = add <4 x i64> %183, %172
  %185 = add <4 x i64> %184, %181
  store <4 x i64> %185, ptr %182, align 32
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %187 = getelementptr inbounds nuw i8, ptr %43, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %188 = load <4 x i64>, ptr %186, align 1
  %189 = load <4 x i64>, ptr %187, align 1
  %190 = xor <4 x i64> %189, %188
  %191 = bitcast <4 x i64> %190 to <8 x i32>
  %192 = shufflevector <8 x i32> %191, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %193 = bitcast <8 x i32> %192 to <4 x i64>
  %194 = and <4 x i64> %190, splat (i64 4294967295)
  %195 = and <4 x i64> %193, splat (i64 4294967295)
  %196 = mul nuw <4 x i64> %195, %194
  %197 = add <4 x i64> %170, %188
  %198 = add <4 x i64> %197, %196
  store <4 x i64> %198, ptr %0, align 32
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %200 = load <4 x i64>, ptr %199, align 1
  %201 = getelementptr inbounds nuw i8, ptr %43, i64 40
  %202 = load <4 x i64>, ptr %201, align 1
  %203 = xor <4 x i64> %202, %200
  %204 = bitcast <4 x i64> %203 to <8 x i32>
  %205 = shufflevector <8 x i32> %204, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %206 = bitcast <8 x i32> %205 to <4 x i64>
  %207 = and <4 x i64> %203, splat (i64 4294967295)
  %208 = and <4 x i64> %206, splat (i64 4294967295)
  %209 = mul nuw <4 x i64> %208, %207
  %210 = add <4 x i64> %185, %200
  %211 = add <4 x i64> %210, %209
  store <4 x i64> %211, ptr %182, align 32
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %213 = getelementptr inbounds nuw i8, ptr %43, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %214 = load <4 x i64>, ptr %212, align 1
  %215 = load <4 x i64>, ptr %213, align 1
  %216 = xor <4 x i64> %215, %214
  %217 = bitcast <4 x i64> %216 to <8 x i32>
  %218 = shufflevector <8 x i32> %217, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %219 = bitcast <8 x i32> %218 to <4 x i64>
  %220 = and <4 x i64> %216, splat (i64 4294967295)
  %221 = and <4 x i64> %219, splat (i64 4294967295)
  %222 = mul nuw <4 x i64> %221, %220
  %223 = add <4 x i64> %198, %214
  %224 = add <4 x i64> %223, %222
  store <4 x i64> %224, ptr %0, align 32
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %226 = load <4 x i64>, ptr %225, align 1
  %227 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %228 = load <4 x i64>, ptr %227, align 1
  %229 = xor <4 x i64> %228, %226
  %230 = bitcast <4 x i64> %229 to <8 x i32>
  %231 = shufflevector <8 x i32> %230, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %232 = bitcast <8 x i32> %231 to <4 x i64>
  %233 = and <4 x i64> %229, splat (i64 4294967295)
  %234 = and <4 x i64> %232, splat (i64 4294967295)
  %235 = mul nuw <4 x i64> %234, %233
  %236 = add <4 x i64> %211, %226
  %237 = add <4 x i64> %236, %235
  store <4 x i64> %237, ptr %182, align 32
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %239 = getelementptr inbounds nuw i8, ptr %43, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %240 = load <4 x i64>, ptr %238, align 1
  %241 = load <4 x i64>, ptr %239, align 1
  %242 = xor <4 x i64> %241, %240
  %243 = bitcast <4 x i64> %242 to <8 x i32>
  %244 = shufflevector <8 x i32> %243, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %245 = bitcast <8 x i32> %244 to <4 x i64>
  %246 = and <4 x i64> %242, splat (i64 4294967295)
  %247 = and <4 x i64> %245, splat (i64 4294967295)
  %248 = mul nuw <4 x i64> %247, %246
  %249 = add <4 x i64> %224, %240
  %250 = add <4 x i64> %249, %248
  store <4 x i64> %250, ptr %0, align 32
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %252 = load <4 x i64>, ptr %251, align 1
  %253 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %254 = load <4 x i64>, ptr %253, align 1
  %255 = xor <4 x i64> %254, %252
  %256 = bitcast <4 x i64> %255 to <8 x i32>
  %257 = shufflevector <8 x i32> %256, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %258 = bitcast <8 x i32> %257 to <4 x i64>
  %259 = and <4 x i64> %255, splat (i64 4294967295)
  %260 = and <4 x i64> %258, splat (i64 4294967295)
  %261 = mul nuw <4 x i64> %260, %259
  %262 = add <4 x i64> %237, %252
  %263 = add <4 x i64> %262, %261
  store <4 x i64> %263, ptr %182, align 32
  %264 = load i32, ptr %29, align 4
  %265 = add i32 %264, 4
  br label %266

266:                                              ; preds = %156, %158
  %267 = phi i32 [ %265, %158 ], [ %157, %156 ]
  store i32 %267, ptr %29, align 4
  store i32 0, ptr %10, align 8
  br label %268

268:                                              ; preds = %266, %21
  %269 = phi ptr [ %28, %266 ], [ %1, %21 ]
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 256
  %271 = icmp ugt ptr %270, %6
  br i1 %271, label %518, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds i8, ptr %6, i64 -256
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %275 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %278 = load i32, ptr %274, align 4
  %279 = load i32, ptr %275, align 4
  %280 = load ptr, ptr %276, align 64
  %281 = load i32, ptr %277, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %285 = getelementptr inbounds nuw i8, ptr %280, i64 %282
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %287 = getelementptr inbounds nuw i8, ptr %285, i64 32
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %289

289:                                              ; preds = %514, %272
  %290 = phi i32 [ %278, %272 ], [ %515, %514 ]
  %291 = phi ptr [ %269, %272 ], [ %516, %514 ]
  %292 = sub i32 %279, %290
  %293 = zext i32 %292 to i64
  %294 = icmp ugt i32 %292, 4
  %295 = shl i32 %290, 3
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds nuw i8, ptr %280, i64 %296
  br i1 %294, label %407, label %298

298:                                              ; preds = %289
  %299 = icmp eq i32 %279, %290
  %300 = load <4 x i64>, ptr %0, align 32
  br i1 %299, label %301, label %303

301:                                              ; preds = %298
  %302 = load <4 x i64>, ptr %284, align 32
  br label %341

303:                                              ; preds = %298
  %304 = tail call i64 @llvm.umax.i64(i64 %293, i64 1)
  %305 = load <4 x i64>, ptr %283, align 32
  br label %306

306:                                              ; preds = %303, %306
  %307 = phi <4 x i64> [ %337, %306 ], [ %305, %303 ]
  %308 = phi <4 x i64> [ %324, %306 ], [ %300, %303 ]
  %309 = phi i64 [ %338, %306 ], [ 0, %303 ]
  %310 = shl i64 %309, 6
  %311 = getelementptr inbounds nuw i8, ptr %291, i64 %310
  %312 = shl i64 %309, 3
  %313 = getelementptr inbounds nuw i8, ptr %297, i64 %312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %314 = load <4 x i64>, ptr %311, align 1
  %315 = load <4 x i64>, ptr %313, align 1
  %316 = xor <4 x i64> %315, %314
  %317 = bitcast <4 x i64> %316 to <8 x i32>
  %318 = shufflevector <8 x i32> %317, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %319 = bitcast <8 x i32> %318 to <4 x i64>
  %320 = and <4 x i64> %316, splat (i64 4294967295)
  %321 = and <4 x i64> %319, splat (i64 4294967295)
  %322 = mul nuw <4 x i64> %321, %320
  %323 = add <4 x i64> %308, %314
  %324 = add <4 x i64> %323, %322
  %325 = getelementptr inbounds nuw i8, ptr %311, i64 32
  %326 = load <4 x i64>, ptr %325, align 1
  %327 = getelementptr inbounds nuw i8, ptr %313, i64 32
  %328 = load <4 x i64>, ptr %327, align 1
  %329 = xor <4 x i64> %328, %326
  %330 = bitcast <4 x i64> %329 to <8 x i32>
  %331 = shufflevector <8 x i32> %330, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %332 = bitcast <8 x i32> %331 to <4 x i64>
  %333 = and <4 x i64> %329, splat (i64 4294967295)
  %334 = and <4 x i64> %332, splat (i64 4294967295)
  %335 = mul nuw <4 x i64> %334, %333
  %336 = add <4 x i64> %307, %326
  %337 = add <4 x i64> %336, %335
  %338 = add nuw nsw i64 %309, 1
  %339 = icmp eq i64 %338, %304
  br i1 %339, label %340, label %306

340:                                              ; preds = %306
  store <4 x i64> %324, ptr %0, align 32
  store <4 x i64> %337, ptr %283, align 32
  br label %341

341:                                              ; preds = %340, %301
  %342 = phi <4 x i64> [ %302, %301 ], [ %337, %340 ]
  %343 = phi <4 x i64> [ %300, %301 ], [ %324, %340 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %344 = lshr <4 x i64> %343, splat (i64 47)
  %345 = load <4 x i64>, ptr %285, align 1
  %346 = xor <4 x i64> %345, %344
  %347 = xor <4 x i64> %346, %343
  %348 = and <4 x i64> %347, splat (i64 4294967295)
  %349 = mul nuw <4 x i64> %348, splat (i64 2654435761)
  %350 = bitcast <4 x i64> %347 to <8 x i32>
  %351 = shufflevector <8 x i32> %350, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %352 = bitcast <8 x i32> %351 to <4 x i64>
  %353 = mul <4 x i64> %352, splat (i64 -7046029290881679360)
  %354 = add <4 x i64> %353, %349
  store <4 x i64> %354, ptr %0, align 32
  %355 = lshr <4 x i64> %342, splat (i64 47)
  %356 = load <4 x i64>, ptr %287, align 1
  %357 = xor <4 x i64> %356, %355
  %358 = xor <4 x i64> %357, %342
  %359 = and <4 x i64> %358, splat (i64 4294967295)
  %360 = mul nuw <4 x i64> %359, splat (i64 2654435761)
  %361 = bitcast <4 x i64> %358 to <8 x i32>
  %362 = shufflevector <8 x i32> %361, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %363 = bitcast <8 x i32> %362 to <4 x i64>
  %364 = mul <4 x i64> %363, splat (i64 -7046029290881679360)
  %365 = add <4 x i64> %364, %360
  store <4 x i64> %365, ptr %286, align 32
  %366 = shl nuw nsw i64 %293, 6
  %367 = getelementptr inbounds nuw i8, ptr %291, i64 %366
  %368 = sub nsw i64 4, %293
  %369 = icmp eq i32 %292, 4
  br i1 %369, label %405, label %370

370:                                              ; preds = %341, %370
  %371 = phi <4 x i64> [ %401, %370 ], [ %365, %341 ]
  %372 = phi <4 x i64> [ %388, %370 ], [ %354, %341 ]
  %373 = phi i64 [ %402, %370 ], [ 0, %341 ]
  %374 = shl i64 %373, 6
  %375 = getelementptr inbounds nuw i8, ptr %367, i64 %374
  %376 = shl i64 %373, 3
  %377 = getelementptr inbounds nuw i8, ptr %280, i64 %376
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %378 = load <4 x i64>, ptr %375, align 1
  %379 = load <4 x i64>, ptr %377, align 1
  %380 = xor <4 x i64> %379, %378
  %381 = bitcast <4 x i64> %380 to <8 x i32>
  %382 = shufflevector <8 x i32> %381, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %383 = bitcast <8 x i32> %382 to <4 x i64>
  %384 = and <4 x i64> %380, splat (i64 4294967295)
  %385 = and <4 x i64> %383, splat (i64 4294967295)
  %386 = mul nuw <4 x i64> %385, %384
  %387 = add <4 x i64> %372, %378
  %388 = add <4 x i64> %387, %386
  %389 = getelementptr inbounds nuw i8, ptr %375, i64 32
  %390 = load <4 x i64>, ptr %389, align 1
  %391 = getelementptr inbounds nuw i8, ptr %377, i64 32
  %392 = load <4 x i64>, ptr %391, align 1
  %393 = xor <4 x i64> %392, %390
  %394 = bitcast <4 x i64> %393 to <8 x i32>
  %395 = shufflevector <8 x i32> %394, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %396 = bitcast <8 x i32> %395 to <4 x i64>
  %397 = and <4 x i64> %393, splat (i64 4294967295)
  %398 = and <4 x i64> %396, splat (i64 4294967295)
  %399 = mul nuw <4 x i64> %398, %397
  %400 = add <4 x i64> %371, %390
  %401 = add <4 x i64> %400, %399
  %402 = add nuw i64 %373, 1
  %403 = icmp eq i64 %402, %368
  br i1 %403, label %404, label %370

404:                                              ; preds = %370
  store <4 x i64> %388, ptr %0, align 32
  store <4 x i64> %401, ptr %286, align 32
  br label %405

405:                                              ; preds = %404, %341
  %406 = trunc nuw nsw i64 %368 to i32
  br label %514

407:                                              ; preds = %289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %408 = load <4 x i64>, ptr %291, align 1
  %409 = load <4 x i64>, ptr %297, align 1
  %410 = xor <4 x i64> %409, %408
  %411 = bitcast <4 x i64> %410 to <8 x i32>
  %412 = shufflevector <8 x i32> %411, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %413 = bitcast <8 x i32> %412 to <4 x i64>
  %414 = and <4 x i64> %410, splat (i64 4294967295)
  %415 = and <4 x i64> %413, splat (i64 4294967295)
  %416 = mul nuw <4 x i64> %415, %414
  %417 = load <4 x i64>, ptr %0, align 32
  %418 = add <4 x i64> %417, %408
  %419 = add <4 x i64> %418, %416
  store <4 x i64> %419, ptr %0, align 32
  %420 = getelementptr inbounds nuw i8, ptr %291, i64 32
  %421 = load <4 x i64>, ptr %420, align 1
  %422 = getelementptr inbounds nuw i8, ptr %297, i64 32
  %423 = load <4 x i64>, ptr %422, align 1
  %424 = xor <4 x i64> %423, %421
  %425 = bitcast <4 x i64> %424 to <8 x i32>
  %426 = shufflevector <8 x i32> %425, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %427 = bitcast <8 x i32> %426 to <4 x i64>
  %428 = and <4 x i64> %424, splat (i64 4294967295)
  %429 = and <4 x i64> %427, splat (i64 4294967295)
  %430 = mul nuw <4 x i64> %429, %428
  %431 = load <4 x i64>, ptr %288, align 32
  %432 = add <4 x i64> %431, %421
  %433 = add <4 x i64> %432, %430
  store <4 x i64> %433, ptr %288, align 32
  %434 = getelementptr inbounds nuw i8, ptr %291, i64 64
  %435 = getelementptr inbounds nuw i8, ptr %297, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %436 = load <4 x i64>, ptr %434, align 1
  %437 = load <4 x i64>, ptr %435, align 1
  %438 = xor <4 x i64> %437, %436
  %439 = bitcast <4 x i64> %438 to <8 x i32>
  %440 = shufflevector <8 x i32> %439, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %441 = bitcast <8 x i32> %440 to <4 x i64>
  %442 = and <4 x i64> %438, splat (i64 4294967295)
  %443 = and <4 x i64> %441, splat (i64 4294967295)
  %444 = mul nuw <4 x i64> %443, %442
  %445 = add <4 x i64> %419, %436
  %446 = add <4 x i64> %445, %444
  store <4 x i64> %446, ptr %0, align 32
  %447 = getelementptr inbounds nuw i8, ptr %291, i64 96
  %448 = load <4 x i64>, ptr %447, align 1
  %449 = getelementptr inbounds nuw i8, ptr %297, i64 40
  %450 = load <4 x i64>, ptr %449, align 1
  %451 = xor <4 x i64> %450, %448
  %452 = bitcast <4 x i64> %451 to <8 x i32>
  %453 = shufflevector <8 x i32> %452, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %454 = bitcast <8 x i32> %453 to <4 x i64>
  %455 = and <4 x i64> %451, splat (i64 4294967295)
  %456 = and <4 x i64> %454, splat (i64 4294967295)
  %457 = mul nuw <4 x i64> %456, %455
  %458 = add <4 x i64> %433, %448
  %459 = add <4 x i64> %458, %457
  store <4 x i64> %459, ptr %288, align 32
  %460 = getelementptr inbounds nuw i8, ptr %291, i64 128
  %461 = getelementptr inbounds nuw i8, ptr %297, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %462 = load <4 x i64>, ptr %460, align 1
  %463 = load <4 x i64>, ptr %461, align 1
  %464 = xor <4 x i64> %463, %462
  %465 = bitcast <4 x i64> %464 to <8 x i32>
  %466 = shufflevector <8 x i32> %465, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %467 = bitcast <8 x i32> %466 to <4 x i64>
  %468 = and <4 x i64> %464, splat (i64 4294967295)
  %469 = and <4 x i64> %467, splat (i64 4294967295)
  %470 = mul nuw <4 x i64> %469, %468
  %471 = add <4 x i64> %446, %462
  %472 = add <4 x i64> %471, %470
  store <4 x i64> %472, ptr %0, align 32
  %473 = getelementptr inbounds nuw i8, ptr %291, i64 160
  %474 = load <4 x i64>, ptr %473, align 1
  %475 = getelementptr inbounds nuw i8, ptr %297, i64 48
  %476 = load <4 x i64>, ptr %475, align 1
  %477 = xor <4 x i64> %476, %474
  %478 = bitcast <4 x i64> %477 to <8 x i32>
  %479 = shufflevector <8 x i32> %478, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %480 = bitcast <8 x i32> %479 to <4 x i64>
  %481 = and <4 x i64> %477, splat (i64 4294967295)
  %482 = and <4 x i64> %480, splat (i64 4294967295)
  %483 = mul nuw <4 x i64> %482, %481
  %484 = add <4 x i64> %459, %474
  %485 = add <4 x i64> %484, %483
  store <4 x i64> %485, ptr %288, align 32
  %486 = getelementptr inbounds nuw i8, ptr %291, i64 192
  %487 = getelementptr inbounds nuw i8, ptr %297, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %488 = load <4 x i64>, ptr %486, align 1
  %489 = load <4 x i64>, ptr %487, align 1
  %490 = xor <4 x i64> %489, %488
  %491 = bitcast <4 x i64> %490 to <8 x i32>
  %492 = shufflevector <8 x i32> %491, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %493 = bitcast <8 x i32> %492 to <4 x i64>
  %494 = and <4 x i64> %490, splat (i64 4294967295)
  %495 = and <4 x i64> %493, splat (i64 4294967295)
  %496 = mul nuw <4 x i64> %495, %494
  %497 = add <4 x i64> %472, %488
  %498 = add <4 x i64> %497, %496
  store <4 x i64> %498, ptr %0, align 32
  %499 = getelementptr inbounds nuw i8, ptr %291, i64 224
  %500 = load <4 x i64>, ptr %499, align 1
  %501 = getelementptr inbounds nuw i8, ptr %297, i64 56
  %502 = load <4 x i64>, ptr %501, align 1
  %503 = xor <4 x i64> %502, %500
  %504 = bitcast <4 x i64> %503 to <8 x i32>
  %505 = shufflevector <8 x i32> %504, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %506 = bitcast <8 x i32> %505 to <4 x i64>
  %507 = and <4 x i64> %503, splat (i64 4294967295)
  %508 = and <4 x i64> %506, splat (i64 4294967295)
  %509 = mul nuw <4 x i64> %508, %507
  %510 = add <4 x i64> %485, %500
  %511 = add <4 x i64> %510, %509
  store <4 x i64> %511, ptr %288, align 32
  %512 = load i32, ptr %274, align 4
  %513 = add i32 %512, 4
  br label %514

514:                                              ; preds = %405, %407
  %515 = phi i32 [ %513, %407 ], [ %406, %405 ]
  store i32 %515, ptr %274, align 4
  %516 = getelementptr inbounds nuw i8, ptr %291, i64 256
  %517 = icmp ugt ptr %516, %273
  br i1 %517, label %518, label %289

518:                                              ; preds = %514, %268
  %519 = phi ptr [ %269, %268 ], [ %516, %514 ]
  %520 = icmp ult ptr %519, %6
  br i1 %520, label %521, label %529

521:                                              ; preds = %518
  %522 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %523 = ptrtoint ptr %6 to i64
  %524 = ptrtoint ptr %519 to i64
  %525 = sub i64 %523, %524
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %522, ptr nonnull readonly align 1 %519, i64 %525, i1 false)
  %526 = trunc i64 %525 to i32
  br label %527

527:                                              ; preds = %521, %15
  %528 = phi i32 [ %20, %15 ], [ %526, %521 ]
  store i32 %528, ptr %10, align 8
  br label %529

529:                                              ; preds = %527, %3, %518
  %530 = phi i32 [ 1, %3 ], [ 0, %518 ], [ 0, %527 ]
  ret i32 %530
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @XXH3_64bits_digest(ptr noundef readonly %0) local_unnamed_addr #17 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %4 = load i64, ptr %3, align 32
  %5 = icmp ugt i64 %4, 240
  br i1 %5, label %6, label %274

6:                                                ; preds = %1
  %7 = load <4 x i64>, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 63
  br i1 %12, label %13, label %204

13:                                               ; preds = %6
  %14 = lshr i32 %11, 6
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %17 = load i32, ptr %16, align 16
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = sub i32 %19, %17
  %27 = zext i32 %26 to i64
  %28 = icmp ult i32 %14, %26
  %29 = shl i32 %17, 3
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %22, i64 %30
  br i1 %28, label %135, label %32

32:                                               ; preds = %13
  %33 = icmp eq i32 %19, %17
  br i1 %33, label %70, label %34

34:                                               ; preds = %32
  %35 = tail call i64 @llvm.umax.i64(i64 %27, i64 1)
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi <4 x i64> [ %9, %34 ], [ %67, %36 ]
  %38 = phi <4 x i64> [ %7, %34 ], [ %54, %36 ]
  %39 = phi i64 [ 0, %34 ], [ %68, %36 ]
  %40 = shl i64 %39, 6
  %41 = getelementptr inbounds nuw i8, ptr %20, i64 %40
  %42 = shl i64 %39, 3
  %43 = getelementptr inbounds nuw i8, ptr %31, i64 %42
  %44 = load <4 x i64>, ptr %41, align 1
  %45 = load <4 x i64>, ptr %43, align 1
  %46 = xor <4 x i64> %45, %44
  %47 = bitcast <4 x i64> %46 to <8 x i32>
  %48 = shufflevector <8 x i32> %47, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %49 = bitcast <8 x i32> %48 to <4 x i64>
  %50 = and <4 x i64> %46, splat (i64 4294967295)
  %51 = and <4 x i64> %49, splat (i64 4294967295)
  %52 = mul nuw <4 x i64> %51, %50
  %53 = add <4 x i64> %38, %44
  %54 = add <4 x i64> %53, %52
  %55 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %56 = load <4 x i64>, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %58 = load <4 x i64>, ptr %57, align 1
  %59 = xor <4 x i64> %58, %56
  %60 = bitcast <4 x i64> %59 to <8 x i32>
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %62 = bitcast <8 x i32> %61 to <4 x i64>
  %63 = and <4 x i64> %59, splat (i64 4294967295)
  %64 = and <4 x i64> %62, splat (i64 4294967295)
  %65 = mul nuw <4 x i64> %64, %63
  %66 = add <4 x i64> %37, %56
  %67 = add <4 x i64> %66, %65
  %68 = add nuw nsw i64 %39, 1
  %69 = icmp eq i64 %68, %35
  br i1 %69, label %70, label %36

70:                                               ; preds = %36, %32
  %71 = phi <4 x i64> [ %9, %32 ], [ %67, %36 ]
  %72 = phi <4 x i64> [ %7, %32 ], [ %54, %36 ]
  %73 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %74 = lshr <4 x i64> %72, splat (i64 47)
  %75 = load <4 x i64>, ptr %73, align 1
  %76 = xor <4 x i64> %75, %74
  %77 = xor <4 x i64> %76, %72
  %78 = and <4 x i64> %77, splat (i64 4294967295)
  %79 = mul nuw <4 x i64> %78, splat (i64 2654435761)
  %80 = bitcast <4 x i64> %77 to <8 x i32>
  %81 = shufflevector <8 x i32> %80, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %82 = bitcast <8 x i32> %81 to <4 x i64>
  %83 = mul <4 x i64> %82, splat (i64 -7046029290881679360)
  %84 = add <4 x i64> %83, %79
  %85 = lshr <4 x i64> %71, splat (i64 47)
  %86 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %87 = load <4 x i64>, ptr %86, align 1
  %88 = xor <4 x i64> %87, %85
  %89 = xor <4 x i64> %88, %71
  %90 = and <4 x i64> %89, splat (i64 4294967295)
  %91 = mul nuw <4 x i64> %90, splat (i64 2654435761)
  %92 = bitcast <4 x i64> %89 to <8 x i32>
  %93 = shufflevector <8 x i32> %92, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %94 = bitcast <8 x i32> %93 to <4 x i64>
  %95 = mul <4 x i64> %94, splat (i64 -7046029290881679360)
  %96 = add <4 x i64> %95, %91
  %97 = shl nuw nsw i64 %27, 6
  %98 = getelementptr inbounds nuw i8, ptr %20, i64 %97
  %99 = sub nsw i64 %15, %27
  %100 = icmp eq i32 %14, %26
  br i1 %100, label %169, label %101

101:                                              ; preds = %70, %101
  %102 = phi <4 x i64> [ %132, %101 ], [ %96, %70 ]
  %103 = phi <4 x i64> [ %119, %101 ], [ %84, %70 ]
  %104 = phi i64 [ %133, %101 ], [ 0, %70 ]
  %105 = shl i64 %104, 6
  %106 = getelementptr inbounds nuw i8, ptr %98, i64 %105
  %107 = shl i64 %104, 3
  %108 = getelementptr inbounds nuw i8, ptr %22, i64 %107
  %109 = load <4 x i64>, ptr %106, align 1
  %110 = load <4 x i64>, ptr %108, align 1
  %111 = xor <4 x i64> %110, %109
  %112 = bitcast <4 x i64> %111 to <8 x i32>
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %114 = bitcast <8 x i32> %113 to <4 x i64>
  %115 = and <4 x i64> %111, splat (i64 4294967295)
  %116 = and <4 x i64> %114, splat (i64 4294967295)
  %117 = mul nuw <4 x i64> %116, %115
  %118 = add <4 x i64> %103, %109
  %119 = add <4 x i64> %118, %117
  %120 = getelementptr inbounds nuw i8, ptr %106, i64 32
  %121 = load <4 x i64>, ptr %120, align 1
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %123 = load <4 x i64>, ptr %122, align 1
  %124 = xor <4 x i64> %123, %121
  %125 = bitcast <4 x i64> %124 to <8 x i32>
  %126 = shufflevector <8 x i32> %125, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %127 = bitcast <8 x i32> %126 to <4 x i64>
  %128 = and <4 x i64> %124, splat (i64 4294967295)
  %129 = and <4 x i64> %127, splat (i64 4294967295)
  %130 = mul nuw <4 x i64> %129, %128
  %131 = add <4 x i64> %102, %121
  %132 = add <4 x i64> %131, %130
  %133 = add nuw i64 %104, 1
  %134 = icmp eq i64 %133, %99
  br i1 %134, label %169, label %101

135:                                              ; preds = %13, %135
  %136 = phi <4 x i64> [ %166, %135 ], [ %9, %13 ]
  %137 = phi <4 x i64> [ %153, %135 ], [ %7, %13 ]
  %138 = phi i64 [ %167, %135 ], [ 0, %13 ]
  %139 = shl i64 %138, 6
  %140 = getelementptr inbounds nuw i8, ptr %20, i64 %139
  %141 = shl i64 %138, 3
  %142 = getelementptr inbounds nuw i8, ptr %31, i64 %141
  %143 = load <4 x i64>, ptr %140, align 1
  %144 = load <4 x i64>, ptr %142, align 1
  %145 = xor <4 x i64> %144, %143
  %146 = bitcast <4 x i64> %145 to <8 x i32>
  %147 = shufflevector <8 x i32> %146, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %148 = bitcast <8 x i32> %147 to <4 x i64>
  %149 = and <4 x i64> %145, splat (i64 4294967295)
  %150 = and <4 x i64> %148, splat (i64 4294967295)
  %151 = mul nuw <4 x i64> %150, %149
  %152 = add <4 x i64> %137, %143
  %153 = add <4 x i64> %152, %151
  %154 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %155 = load <4 x i64>, ptr %154, align 1
  %156 = getelementptr inbounds nuw i8, ptr %142, i64 32
  %157 = load <4 x i64>, ptr %156, align 1
  %158 = xor <4 x i64> %157, %155
  %159 = bitcast <4 x i64> %158 to <8 x i32>
  %160 = shufflevector <8 x i32> %159, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %161 = bitcast <8 x i32> %160 to <4 x i64>
  %162 = and <4 x i64> %158, splat (i64 4294967295)
  %163 = and <4 x i64> %161, splat (i64 4294967295)
  %164 = mul nuw <4 x i64> %163, %162
  %165 = add <4 x i64> %136, %155
  %166 = add <4 x i64> %165, %164
  %167 = add nuw nsw i64 %138, 1
  %168 = icmp eq i64 %167, %15
  br i1 %168, label %169, label %135

169:                                              ; preds = %101, %135, %70
  %170 = phi <4 x i64> [ %96, %70 ], [ %166, %135 ], [ %132, %101 ]
  %171 = phi <4 x i64> [ %84, %70 ], [ %153, %135 ], [ %119, %101 ]
  %172 = and i32 %11, 63
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %248, label %174

174:                                              ; preds = %169
  %175 = zext i32 %11 to i64
  %176 = getelementptr inbounds nuw i8, ptr %20, i64 %175
  %177 = getelementptr inbounds i8, ptr %176, i64 -64
  %178 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %179 = getelementptr inbounds i8, ptr %178, i64 -7
  %180 = load <4 x i64>, ptr %177, align 1
  %181 = load <4 x i64>, ptr %179, align 1
  %182 = xor <4 x i64> %181, %180
  %183 = bitcast <4 x i64> %182 to <8 x i32>
  %184 = shufflevector <8 x i32> %183, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %185 = bitcast <8 x i32> %184 to <4 x i64>
  %186 = and <4 x i64> %182, splat (i64 4294967295)
  %187 = and <4 x i64> %185, splat (i64 4294967295)
  %188 = mul nuw <4 x i64> %187, %186
  %189 = add <4 x i64> %171, %180
  %190 = add <4 x i64> %189, %188
  %191 = getelementptr inbounds i8, ptr %176, i64 -32
  %192 = load <4 x i64>, ptr %191, align 1
  %193 = getelementptr inbounds nuw i8, ptr %178, i64 25
  %194 = load <4 x i64>, ptr %193, align 1
  %195 = xor <4 x i64> %194, %192
  %196 = bitcast <4 x i64> %195 to <8 x i32>
  %197 = shufflevector <8 x i32> %196, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %198 = bitcast <8 x i32> %197 to <4 x i64>
  %199 = and <4 x i64> %195, splat (i64 4294967295)
  %200 = and <4 x i64> %198, splat (i64 4294967295)
  %201 = mul nuw <4 x i64> %200, %199
  %202 = add <4 x i64> %170, %192
  %203 = add <4 x i64> %202, %201
  br label %248

204:                                              ; preds = %6
  %205 = icmp eq i32 %11, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %204
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %208 = load ptr, ptr %207, align 64
  br label %248

209:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #28
  %210 = sub nuw nsw i32 64, %11
  %211 = zext nneg i32 %210 to i64
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %214 = sub nsw i64 0, %211
  %215 = getelementptr inbounds i8, ptr %213, i64 %214
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %215, i64 %211, i1 false)
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 %211
  %217 = zext nneg i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %216, ptr nonnull align 64 %212, i64 %217, i1 false)
  %218 = load ptr, ptr %213, align 64
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %220 = load i32, ptr %219, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds nuw i8, ptr %218, i64 %221
  %223 = getelementptr inbounds i8, ptr %222, i64 -7
  %224 = load <4 x i64>, ptr %2, align 16
  %225 = load <4 x i64>, ptr %223, align 1
  %226 = xor <4 x i64> %225, %224
  %227 = bitcast <4 x i64> %226 to <8 x i32>
  %228 = shufflevector <8 x i32> %227, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %229 = bitcast <8 x i32> %228 to <4 x i64>
  %230 = and <4 x i64> %226, splat (i64 4294967295)
  %231 = and <4 x i64> %229, splat (i64 4294967295)
  %232 = mul nuw <4 x i64> %231, %230
  %233 = add <4 x i64> %7, %224
  %234 = add <4 x i64> %233, %232
  %235 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %236 = load <4 x i64>, ptr %235, align 16
  %237 = getelementptr inbounds nuw i8, ptr %222, i64 25
  %238 = load <4 x i64>, ptr %237, align 1
  %239 = xor <4 x i64> %238, %236
  %240 = bitcast <4 x i64> %239 to <8 x i32>
  %241 = shufflevector <8 x i32> %240, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %242 = bitcast <8 x i32> %241 to <4 x i64>
  %243 = and <4 x i64> %239, splat (i64 4294967295)
  %244 = and <4 x i64> %242, splat (i64 4294967295)
  %245 = mul nuw <4 x i64> %244, %243
  %246 = add <4 x i64> %9, %236
  %247 = add <4 x i64> %246, %245
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #28
  br label %248

248:                                              ; preds = %206, %174, %169, %209
  %249 = phi ptr [ %22, %169 ], [ %22, %174 ], [ %208, %206 ], [ %218, %209 ]
  %250 = phi <4 x i64> [ %170, %169 ], [ %203, %174 ], [ %9, %206 ], [ %247, %209 ]
  %251 = phi <4 x i64> [ %171, %169 ], [ %190, %174 ], [ %7, %206 ], [ %234, %209 ]
  %252 = getelementptr inbounds nuw i8, ptr %249, i64 11
  %253 = mul i64 %4, -7046029288634856825
  %254 = load <8 x i64>, ptr %252, align 1
  %255 = shufflevector <8 x i64> %254, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %256 = shufflevector <4 x i64> %251, <4 x i64> %250, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %257 = xor <4 x i64> %255, %256
  %258 = shufflevector <8 x i64> %254, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %259 = shufflevector <4 x i64> %251, <4 x i64> %250, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %260 = xor <4 x i64> %258, %259
  %261 = zext <4 x i64> %257 to <4 x i128>
  %262 = zext <4 x i64> %260 to <4 x i128>
  %263 = mul nuw <4 x i128> %262, %261
  %264 = lshr <4 x i128> %263, splat (i128 64)
  %265 = xor <4 x i128> %264, %263
  %266 = trunc <4 x i128> %265 to <4 x i64>
  %267 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %266)
  %268 = add i64 %267, %253
  %269 = lshr i64 %268, 37
  %270 = xor i64 %269, %268
  %271 = mul i64 %270, 1609587929392839161
  %272 = lshr i64 %271, 32
  %273 = xor i64 %272, %271
  br label %289

274:                                              ; preds = %1
  %275 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %276 = load i64, ptr %275, align 8
  %277 = icmp eq i64 %276, 0
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %277, label %281, label %279

279:                                              ; preds = %274
  %280 = tail call i64 @XXH3_64bits_withSeed(ptr noundef nonnull %278, i64 noundef %4, i64 noundef %276)
  br label %289

281:                                              ; preds = %274
  %282 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %283 = load ptr, ptr %282, align 64
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %285 = load i32, ptr %284, align 4
  %286 = add i32 %285, 64
  %287 = zext i32 %286 to i64
  %288 = tail call i64 @XXH3_64bits_withSecret(ptr noundef nonnull %278, i64 noundef %4, ptr noundef %283, i64 noundef %287)
  br label %289

289:                                              ; preds = %281, %279, %248
  %290 = phi i64 [ %273, %248 ], [ %280, %279 ], [ %288, %281 ]
  ret i64 %290
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #18 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %120

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %40

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -8
  %10 = load i64, ptr %9, align 1
  %11 = xor i64 %10, 2066345149520216444
  %12 = xor i64 %7, %11
  %13 = xor i64 %12, -4734510112055689544
  %14 = zext i64 %13 to i128
  %15 = mul nuw i128 %14, 11400714785074694791
  %16 = trunc i128 %15 to i64
  %17 = lshr i128 %15, 64
  %18 = trunc nuw i128 %17 to i64
  %19 = mul i64 %11, -7046029288634856825
  %20 = add i64 %19, %18
  %21 = lshr i64 %20, 32
  %22 = xor i64 %21, %16
  %23 = zext i64 %22 to i128
  %24 = mul nuw i128 %23, 14029467366897019727
  %25 = trunc i128 %24 to i64
  %26 = lshr i128 %24, 64
  %27 = trunc nuw i128 %26 to i64
  %28 = mul i64 %20, -4417276706812531889
  %29 = add i64 %28, %27
  %30 = lshr i64 %25, 37
  %31 = xor i64 %30, %25
  %32 = mul i64 %31, 1609587929392839161
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  %35 = lshr i64 %29, 37
  %36 = xor i64 %35, %29
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %115

40:                                               ; preds = %4
  %41 = icmp samesign ugt i64 %1, 3
  br i1 %41, label %42, label %78

42:                                               ; preds = %40
  %43 = load i32, ptr %0, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %45 = getelementptr inbounds i8, ptr %44, i64 -4
  %46 = load i32, ptr %45, align 1
  %47 = zext i32 %43 to i64
  %48 = zext i32 %46 to i64
  %49 = shl nuw i64 %48, 32
  %50 = or disjoint i64 %49, %47
  %51 = xor i64 %50, -4734510112055689544
  %52 = xor i64 %50, 8935565165804498204
  %53 = tail call i64 @llvm.bswap.i64(i64 %52)
  %54 = lshr i64 %51, 51
  %55 = xor i64 %54, %51
  %56 = mul i64 %55, 2654435761
  %57 = add i64 %56, %1
  %58 = lshr i64 %57, 47
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, -4417276706812531889
  %61 = lshr i64 %53, 47
  %62 = xor i64 %61, %53
  %63 = mul i64 %62, -7046029288634856825
  %64 = sub i64 %63, %1
  %65 = lshr i64 %64, 43
  %66 = xor i64 %65, %64
  %67 = mul i64 %66, -8796714831421723037
  %68 = lshr i64 %60, 37
  %69 = xor i64 %68, %60
  %70 = mul i64 %69, 1609587929392839161
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  %73 = lshr i64 %67, 37
  %74 = xor i64 %73, %67
  %75 = mul i64 %74, 1609587929392839161
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  br label %115

78:                                               ; preds = %40
  %79 = icmp eq i64 %1, 0
  br i1 %79, label %115, label %80

80:                                               ; preds = %78
  %81 = load i8, ptr %0, align 1
  %82 = lshr i64 %1, 1
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %82
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr i8, ptr %0, i64 %1
  %86 = getelementptr i8, ptr %85, i64 -1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %81 to i32
  %89 = zext i8 %84 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = or disjoint i32 %90, %88
  %92 = zext i8 %87 to i32
  %93 = shl nuw nsw i32 %92, 16
  %94 = or disjoint i32 %91, %93
  %95 = trunc nuw nsw i64 %1 to i32
  %96 = shl nuw nsw i32 %95, 24
  %97 = or disjoint i32 %94, %96
  %98 = xor i32 %97, 963444408
  %99 = zext nneg i32 %98 to i64
  %100 = xor i32 %97, 597969854
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %102 = zext i32 %101 to i64
  %103 = mul i64 %99, -7046029288634856825
  %104 = mul i64 %102, -4417276706812531889
  %105 = lshr i64 %103, 37
  %106 = xor i64 %105, %103
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  %110 = lshr i64 %104, 37
  %111 = xor i64 %110, %104
  %112 = mul i64 %111, 1609587929392839161
  %113 = lshr i64 %112, 32
  %114 = xor i64 %113, %112
  br label %115

115:                                              ; preds = %6, %42, %78, %80
  %116 = phi i64 [ %39, %6 ], [ %77, %42 ], [ %114, %80 ], [ 0, %78 ]
  %117 = phi i64 [ %34, %6 ], [ %72, %42 ], [ %109, %80 ], [ 0, %78 ]
  %118 = insertvalue { i64, i64 } poison, i64 %117, 0
  %119 = insertvalue { i64, i64 } %118, i64 %116, 1
  br label %270

120:                                              ; preds = %2
  %121 = icmp ult i64 %1, 129
  br i1 %121, label %122, label %264

122:                                              ; preds = %120
  %123 = mul i64 %1, -7046029288634856825
  %124 = icmp samesign ugt i64 %1, 32
  br i1 %124, label %125, label %216

125:                                              ; preds = %122
  %126 = icmp samesign ugt i64 %1, 64
  br i1 %126, label %127, label %186

127:                                              ; preds = %125
  %128 = icmp samesign ugt i64 %1, 96
  br i1 %128, label %129, label %156

129:                                              ; preds = %127
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %131 = load i64, ptr %130, align 1
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %133 = load i64, ptr %132, align 1
  %134 = xor i64 %131, 4554437623014685352
  %135 = xor i64 %133, 2111919702937427193
  %136 = zext i64 %134 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %123, %141
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %144 = getelementptr inbounds i8, ptr %143, i64 -64
  %145 = load i64, ptr %144, align 1
  %146 = getelementptr inbounds i8, ptr %143, i64 -56
  %147 = load i64, ptr %146, align 1
  %148 = xor i64 %145, 3556072174620004746
  %149 = xor i64 %147, 7238261902898274248
  %150 = zext i64 %148 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  br label %156

156:                                              ; preds = %129, %127
  %157 = phi i64 [ %155, %129 ], [ 0, %127 ]
  %158 = phi i64 [ %142, %129 ], [ %123, %127 ]
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %162 = load i64, ptr %161, align 1
  %163 = xor i64 %160, -3818837453329782724
  %164 = xor i64 %162, -6688317018830679928
  %165 = zext i64 %163 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %158, %170
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %173 = getelementptr inbounds i8, ptr %172, i64 -48
  %174 = load i64, ptr %173, align 1
  %175 = getelementptr inbounds i8, ptr %172, i64 -40
  %176 = load i64, ptr %175, align 1
  %177 = xor i64 %174, 5690594596133299313
  %178 = xor i64 %176, -2833645246901970632
  %179 = zext i64 %177 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %157, %184
  br label %186

186:                                              ; preds = %156, %125
  %187 = phi i64 [ %185, %156 ], [ 0, %125 ]
  %188 = phi i64 [ %171, %156 ], [ %123, %125 ]
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %190 = load i64, ptr %189, align 1
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %192 = load i64, ptr %191, align 1
  %193 = xor i64 %190, 8711581037947681227
  %194 = xor i64 %192, 2410270004345854594
  %195 = zext i64 %193 to i128
  %196 = zext i64 %194 to i128
  %197 = mul nuw i128 %196, %195
  %198 = lshr i128 %197, 64
  %199 = xor i128 %198, %197
  %200 = trunc i128 %199 to i64
  %201 = add i64 %188, %200
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %203 = getelementptr inbounds i8, ptr %202, i64 -32
  %204 = load i64, ptr %203, align 1
  %205 = getelementptr inbounds i8, ptr %202, i64 -24
  %206 = load i64, ptr %205, align 1
  %207 = xor i64 %204, -8204357891075471176
  %208 = xor i64 %206, 5487137525590930912
  %209 = zext i64 %207 to i128
  %210 = zext i64 %208 to i128
  %211 = mul nuw i128 %210, %209
  %212 = lshr i128 %211, 64
  %213 = xor i128 %212, %211
  %214 = trunc i128 %213 to i64
  %215 = add i64 %187, %214
  br label %216

216:                                              ; preds = %122, %186
  %217 = phi i64 [ %215, %186 ], [ 0, %122 ]
  %218 = phi i64 [ %201, %186 ], [ %123, %122 ]
  %219 = load i64, ptr %0, align 1
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %221 = load i64, ptr %220, align 1
  %222 = xor i64 %219, -4734510112055689544
  %223 = xor i64 %221, 2066345149520216444
  %224 = zext i64 %222 to i128
  %225 = zext i64 %223 to i128
  %226 = mul nuw i128 %225, %224
  %227 = lshr i128 %226, 64
  %228 = xor i128 %227, %226
  %229 = trunc i128 %228 to i64
  %230 = add i64 %218, %229
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %232 = getelementptr inbounds i8, ptr %231, i64 -16
  %233 = load i64, ptr %232, align 1
  %234 = getelementptr inbounds i8, ptr %231, i64 -8
  %235 = load i64, ptr %234, align 1
  %236 = xor i64 %233, -2623469361688619810
  %237 = xor i64 %235, 2262974939099578482
  %238 = zext i64 %236 to i128
  %239 = zext i64 %237 to i128
  %240 = mul nuw i128 %239, %238
  %241 = lshr i128 %240, 64
  %242 = xor i128 %241, %240
  %243 = trunc i128 %242 to i64
  %244 = add i64 %217, %243
  %245 = add i64 %244, %230
  %246 = mul i64 %230, -7046029288634856825
  %247 = mul i64 %244, -8796714831421723037
  %248 = mul i64 %1, -4417276706812531889
  %249 = add i64 %246, %248
  %250 = add i64 %249, %247
  %251 = lshr i64 %245, 37
  %252 = xor i64 %251, %245
  %253 = mul i64 %252, 1609587929392839161
  %254 = lshr i64 %253, 32
  %255 = xor i64 %254, %253
  %256 = lshr i64 %250, 37
  %257 = xor i64 %256, %250
  %258 = mul i64 %257, 1609587929392839161
  %259 = lshr i64 %258, 32
  %260 = xor i64 %259, %258
  %261 = sub i64 0, %260
  %262 = insertvalue { i64, i64 } poison, i64 %255, 0
  %263 = insertvalue { i64, i64 } %262, i64 %261, 1
  br label %270

264:                                              ; preds = %120
  %265 = icmp ult i64 %1, 241
  br i1 %265, label %266, label %268

266:                                              ; preds = %264
  %267 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %270

268:                                              ; preds = %264
  %269 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %270

270:                                              ; preds = %268, %266, %216, %115
  %271 = phi { i64, i64 } [ %119, %115 ], [ %263, %216 ], [ %267, %266 ], [ %269, %268 ]
  ret { i64, i64 } %271
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noalias noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #14 {
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
  %30 = sub i64 %29, %3
  %31 = xor i64 %30, %26
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = add i64 %33, %3
  %35 = xor i64 %34, %28
  %36 = zext i64 %31 to i128
  %37 = zext i64 %35 to i128
  %38 = mul nuw i128 %37, %36
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %44 = load i64, ptr %42, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %46 = load i64, ptr %45, align 1
  %47 = load i64, ptr %43, align 1
  %48 = add i64 %47, %3
  %49 = xor i64 %48, %44
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %51 = load i64, ptr %50, align 1
  %52 = sub i64 %51, %3
  %53 = xor i64 %52, %46
  %54 = zext i64 %49 to i128
  %55 = zext i64 %53 to i128
  %56 = mul nuw i128 %55, %54
  %57 = lshr i128 %56, 64
  %58 = xor i128 %57, %56
  %59 = trunc i128 %58 to i64
  %60 = add i64 %23, %59
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %63 = load i64, ptr %61, align 1
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %65 = load i64, ptr %64, align 1
  %66 = load i64, ptr %62, align 1
  %67 = sub i64 %66, %3
  %68 = xor i64 %67, %63
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %70 = load i64, ptr %69, align 1
  %71 = add i64 %70, %3
  %72 = xor i64 %71, %65
  %73 = zext i64 %68 to i128
  %74 = zext i64 %72 to i128
  %75 = mul nuw i128 %74, %73
  %76 = lshr i128 %75, 64
  %77 = xor i128 %76, %75
  %78 = trunc i128 %77 to i64
  %79 = add i64 %41, %78
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %82 = load i64, ptr %80, align 1
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %84 = load i64, ptr %83, align 1
  %85 = load i64, ptr %81, align 1
  %86 = add i64 %85, %3
  %87 = xor i64 %86, %82
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %89 = load i64, ptr %88, align 1
  %90 = sub i64 %89, %3
  %91 = xor i64 %90, %84
  %92 = zext i64 %87 to i128
  %93 = zext i64 %91 to i128
  %94 = mul nuw i128 %93, %92
  %95 = lshr i128 %94, 64
  %96 = xor i128 %95, %94
  %97 = trunc i128 %96 to i64
  %98 = add i64 %60, %97
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %101 = load i64, ptr %99, align 1
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %103 = load i64, ptr %102, align 1
  %104 = load i64, ptr %100, align 1
  %105 = sub i64 %104, %3
  %106 = xor i64 %105, %101
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %108 = load i64, ptr %107, align 1
  %109 = add i64 %108, %3
  %110 = xor i64 %109, %103
  %111 = zext i64 %106 to i128
  %112 = zext i64 %110 to i128
  %113 = mul nuw i128 %112, %111
  %114 = lshr i128 %113, 64
  %115 = xor i128 %114, %113
  %116 = trunc i128 %115 to i64
  %117 = add i64 %79, %116
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %120 = load i64, ptr %118, align 1
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %122 = load i64, ptr %121, align 1
  %123 = load i64, ptr %119, align 1
  %124 = add i64 %123, %3
  %125 = xor i64 %124, %120
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %127 = load i64, ptr %126, align 1
  %128 = sub i64 %127, %3
  %129 = xor i64 %128, %122
  %130 = zext i64 %125 to i128
  %131 = zext i64 %129 to i128
  %132 = mul nuw i128 %131, %130
  %133 = lshr i128 %132, 64
  %134 = xor i128 %133, %132
  %135 = trunc i128 %134 to i64
  %136 = add i64 %98, %135
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %139 = load i64, ptr %137, align 1
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %141 = load i64, ptr %140, align 1
  %142 = load i64, ptr %138, align 1
  %143 = sub i64 %142, %3
  %144 = xor i64 %143, %139
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %146 = load i64, ptr %145, align 1
  %147 = add i64 %146, %3
  %148 = xor i64 %147, %141
  %149 = zext i64 %144 to i128
  %150 = zext i64 %148 to i128
  %151 = mul nuw i128 %150, %149
  %152 = lshr i128 %151, 64
  %153 = xor i128 %152, %151
  %154 = trunc i128 %153 to i64
  %155 = add i64 %117, %154
  %156 = lshr i32 %6, 5
  %157 = lshr i64 %136, 37
  %158 = xor i64 %157, %136
  %159 = mul i64 %158, 1609587929392839161
  %160 = lshr i64 %159, 32
  %161 = xor i64 %160, %159
  %162 = lshr i64 %155, 37
  %163 = xor i64 %162, %155
  %164 = mul i64 %163, 1609587929392839161
  %165 = lshr i64 %164, 32
  %166 = xor i64 %165, %164
  %167 = icmp eq i32 %156, 4
  br i1 %167, label %287, label %168

168:                                              ; preds = %4
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %170 = getelementptr i8, ptr %2, i64 3
  %171 = load i64, ptr %169, align 1
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %173 = load i64, ptr %172, align 1
  %174 = load i64, ptr %170, align 1
  %175 = add i64 %174, %3
  %176 = xor i64 %175, %171
  %177 = getelementptr i8, ptr %2, i64 11
  %178 = load i64, ptr %177, align 1
  %179 = sub i64 %178, %3
  %180 = xor i64 %179, %173
  %181 = zext i64 %176 to i128
  %182 = zext i64 %180 to i128
  %183 = mul nuw i128 %182, %181
  %184 = lshr i128 %183, 64
  %185 = xor i128 %184, %183
  %186 = trunc i128 %185 to i64
  %187 = add i64 %161, %186
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %189 = getelementptr i8, ptr %2, i64 19
  %190 = load i64, ptr %188, align 1
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %192 = load i64, ptr %191, align 1
  %193 = load i64, ptr %189, align 1
  %194 = sub i64 %193, %3
  %195 = xor i64 %194, %190
  %196 = getelementptr i8, ptr %2, i64 27
  %197 = load i64, ptr %196, align 1
  %198 = add i64 %197, %3
  %199 = xor i64 %198, %192
  %200 = zext i64 %195 to i128
  %201 = zext i64 %199 to i128
  %202 = mul nuw i128 %201, %200
  %203 = lshr i128 %202, 64
  %204 = xor i128 %203, %202
  %205 = trunc i128 %204 to i64
  %206 = add i64 %166, %205
  %207 = icmp eq i32 %156, 5
  br i1 %207, label %287, label %208

208:                                              ; preds = %168
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %210 = getelementptr i8, ptr %2, i64 35
  %211 = load i64, ptr %209, align 1
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %213 = load i64, ptr %212, align 1
  %214 = load i64, ptr %210, align 1
  %215 = add i64 %214, %3
  %216 = xor i64 %215, %211
  %217 = getelementptr i8, ptr %2, i64 43
  %218 = load i64, ptr %217, align 1
  %219 = sub i64 %218, %3
  %220 = xor i64 %219, %213
  %221 = zext i64 %216 to i128
  %222 = zext i64 %220 to i128
  %223 = mul nuw i128 %222, %221
  %224 = lshr i128 %223, 64
  %225 = xor i128 %224, %223
  %226 = trunc i128 %225 to i64
  %227 = add i64 %187, %226
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %229 = getelementptr i8, ptr %2, i64 51
  %230 = load i64, ptr %228, align 1
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = sub i64 %233, %3
  %235 = xor i64 %234, %230
  %236 = getelementptr i8, ptr %2, i64 59
  %237 = load i64, ptr %236, align 1
  %238 = add i64 %237, %3
  %239 = xor i64 %238, %232
  %240 = zext i64 %235 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %206, %245
  %247 = icmp eq i32 %156, 6
  br i1 %247, label %287, label %248

248:                                              ; preds = %208
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
  %267 = add i64 %227, %266
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %269 = getelementptr i8, ptr %2, i64 83
  %270 = load i64, ptr %268, align 1
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %272 = load i64, ptr %271, align 1
  %273 = load i64, ptr %269, align 1
  %274 = sub i64 %273, %3
  %275 = xor i64 %274, %270
  %276 = getelementptr i8, ptr %2, i64 91
  %277 = load i64, ptr %276, align 1
  %278 = add i64 %277, %3
  %279 = xor i64 %278, %272
  %280 = zext i64 %275 to i128
  %281 = zext i64 %279 to i128
  %282 = mul nuw i128 %281, %280
  %283 = lshr i128 %282, 64
  %284 = xor i128 %283, %282
  %285 = trunc i128 %284 to i64
  %286 = add i64 %246, %285
  br label %287

287:                                              ; preds = %168, %208, %248, %4
  %288 = phi i64 [ %166, %4 ], [ %206, %168 ], [ %246, %208 ], [ %286, %248 ]
  %289 = phi i64 [ %161, %4 ], [ %187, %168 ], [ %227, %208 ], [ %267, %248 ]
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %291 = getelementptr inbounds i8, ptr %290, i64 -16
  %292 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %293 = load i64, ptr %291, align 1
  %294 = getelementptr inbounds i8, ptr %290, i64 -8
  %295 = load i64, ptr %294, align 1
  %296 = load i64, ptr %292, align 1
  %297 = add i64 %296, %3
  %298 = xor i64 %297, %293
  %299 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %300 = load i64, ptr %299, align 1
  %301 = sub i64 %300, %3
  %302 = xor i64 %301, %295
  %303 = zext i64 %298 to i128
  %304 = zext i64 %302 to i128
  %305 = mul nuw i128 %304, %303
  %306 = lshr i128 %305, 64
  %307 = xor i128 %306, %305
  %308 = trunc i128 %307 to i64
  %309 = add i64 %289, %308
  %310 = getelementptr inbounds i8, ptr %290, i64 -32
  %311 = getelementptr inbounds nuw i8, ptr %2, i64 103
  %312 = load i64, ptr %310, align 1
  %313 = getelementptr inbounds i8, ptr %290, i64 -24
  %314 = load i64, ptr %313, align 1
  %315 = load i64, ptr %311, align 1
  %316 = sub i64 %315, %3
  %317 = xor i64 %316, %312
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 111
  %319 = load i64, ptr %318, align 1
  %320 = add i64 %319, %3
  %321 = xor i64 %320, %314
  %322 = zext i64 %317 to i128
  %323 = zext i64 %321 to i128
  %324 = mul nuw i128 %323, %322
  %325 = lshr i128 %324, 64
  %326 = xor i128 %325, %324
  %327 = trunc i128 %326 to i64
  %328 = add i64 %288, %327
  %329 = add i64 %328, %309
  %330 = mul i64 %309, -7046029288634856825
  %331 = mul i64 %328, -8796714831421723037
  %332 = sub i64 %1, %3
  %333 = mul i64 %332, -4417276706812531889
  %334 = add i64 %330, %333
  %335 = add i64 %334, %331
  %336 = lshr i64 %329, 37
  %337 = xor i64 %336, %329
  %338 = mul i64 %337, 1609587929392839161
  %339 = lshr i64 %338, 32
  %340 = xor i64 %339, %338
  %341 = lshr i64 %335, 37
  %342 = xor i64 %341, %335
  %343 = mul i64 %342, 1609587929392839161
  %344 = lshr i64 %343, 32
  %345 = xor i64 %344, %343
  %346 = sub i64 0, %345
  %347 = insertvalue { i64, i64 } poison, i64 %340, 0
  %348 = insertvalue { i64, i64 } %347, i64 %346, 1
  ret { i64, i64 } %348
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1) unnamed_addr #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %416, label %5

5:                                                ; preds = %2, %5
  %6 = phi <4 x i64> [ %413, %5 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %7 = phi <4 x i64> [ %403, %5 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %8 = phi i64 [ %414, %5 ], [ 0, %2 ]
  %9 = shl i64 %8, 10
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = load <4 x i64>, ptr %10, align 1
  %12 = xor <4 x i64> %11, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %13 = bitcast <4 x i64> %12 to <8 x i32>
  %14 = shufflevector <8 x i32> %13, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %15 = bitcast <8 x i32> %14 to <4 x i64>
  %16 = and <4 x i64> %12, splat (i64 4294967295)
  %17 = and <4 x i64> %15, splat (i64 4294967295)
  %18 = mul nuw <4 x i64> %17, %16
  %19 = shufflevector <4 x i64> %11, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %20 = add <4 x i64> %7, %19
  %21 = add <4 x i64> %20, %18
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %23 = load <4 x i64>, ptr %22, align 1
  %24 = xor <4 x i64> %23, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %25 = bitcast <4 x i64> %24 to <8 x i32>
  %26 = shufflevector <8 x i32> %25, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %27 = bitcast <8 x i32> %26 to <4 x i64>
  %28 = and <4 x i64> %24, splat (i64 4294967295)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = shufflevector <4 x i64> %23, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %32 = add <4 x i64> %6, %31
  %33 = add <4 x i64> %32, %30
  %34 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %35 = load <4 x i64>, ptr %34, align 1
  %36 = xor <4 x i64> %35, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %37 = bitcast <4 x i64> %36 to <8 x i32>
  %38 = shufflevector <8 x i32> %37, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %36, splat (i64 4294967295)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %44 = add <4 x i64> %21, %43
  %45 = add <4 x i64> %44, %42
  %46 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %47 = load <4 x i64>, ptr %46, align 1
  %48 = xor <4 x i64> %47, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %49 = bitcast <4 x i64> %48 to <8 x i32>
  %50 = shufflevector <8 x i32> %49, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %51 = bitcast <8 x i32> %50 to <4 x i64>
  %52 = and <4 x i64> %48, splat (i64 4294967295)
  %53 = and <4 x i64> %51, splat (i64 4294967295)
  %54 = mul nuw <4 x i64> %53, %52
  %55 = shufflevector <4 x i64> %47, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %56 = add <4 x i64> %33, %55
  %57 = add <4 x i64> %56, %54
  %58 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %59 = load <4 x i64>, ptr %58, align 1
  %60 = xor <4 x i64> %59, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %61 = bitcast <4 x i64> %60 to <8 x i32>
  %62 = shufflevector <8 x i32> %61, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %63 = bitcast <8 x i32> %62 to <4 x i64>
  %64 = and <4 x i64> %60, splat (i64 4294967295)
  %65 = and <4 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, %64
  %67 = shufflevector <4 x i64> %59, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %68 = add <4 x i64> %45, %67
  %69 = add <4 x i64> %68, %66
  %70 = getelementptr inbounds nuw i8, ptr %10, i64 160
  %71 = load <4 x i64>, ptr %70, align 1
  %72 = xor <4 x i64> %71, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %73 = bitcast <4 x i64> %72 to <8 x i32>
  %74 = shufflevector <8 x i32> %73, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %75 = bitcast <8 x i32> %74 to <4 x i64>
  %76 = and <4 x i64> %72, splat (i64 4294967295)
  %77 = and <4 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <4 x i64> %77, %76
  %79 = shufflevector <4 x i64> %71, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %80 = add <4 x i64> %57, %79
  %81 = add <4 x i64> %80, %78
  %82 = getelementptr inbounds nuw i8, ptr %10, i64 192
  %83 = load <4 x i64>, ptr %82, align 1
  %84 = xor <4 x i64> %83, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %85 = bitcast <4 x i64> %84 to <8 x i32>
  %86 = shufflevector <8 x i32> %85, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %87 = bitcast <8 x i32> %86 to <4 x i64>
  %88 = and <4 x i64> %84, splat (i64 4294967295)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = shufflevector <4 x i64> %83, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %92 = add <4 x i64> %69, %91
  %93 = add <4 x i64> %92, %90
  %94 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %95 = load <4 x i64>, ptr %94, align 1
  %96 = xor <4 x i64> %95, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %97 = bitcast <4 x i64> %96 to <8 x i32>
  %98 = shufflevector <8 x i32> %97, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %99 = bitcast <8 x i32> %98 to <4 x i64>
  %100 = and <4 x i64> %96, splat (i64 4294967295)
  %101 = and <4 x i64> %99, splat (i64 4294967295)
  %102 = mul nuw <4 x i64> %101, %100
  %103 = shufflevector <4 x i64> %95, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %104 = add <4 x i64> %81, %103
  %105 = add <4 x i64> %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %10, i64 256
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = xor <4 x i64> %107, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %109 = bitcast <4 x i64> %108 to <8 x i32>
  %110 = shufflevector <8 x i32> %109, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %111 = bitcast <8 x i32> %110 to <4 x i64>
  %112 = and <4 x i64> %108, splat (i64 4294967295)
  %113 = and <4 x i64> %111, splat (i64 4294967295)
  %114 = mul nuw <4 x i64> %113, %112
  %115 = shufflevector <4 x i64> %107, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %116 = add <4 x i64> %93, %115
  %117 = add <4 x i64> %116, %114
  %118 = getelementptr inbounds nuw i8, ptr %10, i64 288
  %119 = load <4 x i64>, ptr %118, align 1
  %120 = xor <4 x i64> %119, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %121 = bitcast <4 x i64> %120 to <8 x i32>
  %122 = shufflevector <8 x i32> %121, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %123 = bitcast <8 x i32> %122 to <4 x i64>
  %124 = and <4 x i64> %120, splat (i64 4294967295)
  %125 = and <4 x i64> %123, splat (i64 4294967295)
  %126 = mul nuw <4 x i64> %125, %124
  %127 = shufflevector <4 x i64> %119, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %128 = add <4 x i64> %105, %127
  %129 = add <4 x i64> %128, %126
  %130 = getelementptr inbounds nuw i8, ptr %10, i64 320
  %131 = load <4 x i64>, ptr %130, align 1
  %132 = xor <4 x i64> %131, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %133 = bitcast <4 x i64> %132 to <8 x i32>
  %134 = shufflevector <8 x i32> %133, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %135 = bitcast <8 x i32> %134 to <4 x i64>
  %136 = and <4 x i64> %132, splat (i64 4294967295)
  %137 = and <4 x i64> %135, splat (i64 4294967295)
  %138 = mul nuw <4 x i64> %137, %136
  %139 = shufflevector <4 x i64> %131, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %140 = add <4 x i64> %117, %139
  %141 = add <4 x i64> %140, %138
  %142 = getelementptr inbounds nuw i8, ptr %10, i64 352
  %143 = load <4 x i64>, ptr %142, align 1
  %144 = xor <4 x i64> %143, <i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352>
  %145 = bitcast <4 x i64> %144 to <8 x i32>
  %146 = shufflevector <8 x i32> %145, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %147 = bitcast <8 x i32> %146 to <4 x i64>
  %148 = and <4 x i64> %144, splat (i64 4294967295)
  %149 = and <4 x i64> %147, splat (i64 4294967295)
  %150 = mul nuw <4 x i64> %149, %148
  %151 = shufflevector <4 x i64> %143, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %152 = add <4 x i64> %129, %151
  %153 = add <4 x i64> %152, %150
  %154 = getelementptr inbounds nuw i8, ptr %10, i64 384
  %155 = load <4 x i64>, ptr %154, align 1
  %156 = xor <4 x i64> %155, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %157 = bitcast <4 x i64> %156 to <8 x i32>
  %158 = shufflevector <8 x i32> %157, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %159 = bitcast <8 x i32> %158 to <4 x i64>
  %160 = and <4 x i64> %156, splat (i64 4294967295)
  %161 = and <4 x i64> %159, splat (i64 4294967295)
  %162 = mul nuw <4 x i64> %161, %160
  %163 = shufflevector <4 x i64> %155, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %164 = add <4 x i64> %141, %163
  %165 = add <4 x i64> %164, %162
  %166 = getelementptr inbounds nuw i8, ptr %10, i64 416
  %167 = load <4 x i64>, ptr %166, align 1
  %168 = xor <4 x i64> %167, <i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193>
  %169 = bitcast <4 x i64> %168 to <8 x i32>
  %170 = shufflevector <8 x i32> %169, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %171 = bitcast <8 x i32> %170 to <4 x i64>
  %172 = and <4 x i64> %168, splat (i64 4294967295)
  %173 = and <4 x i64> %171, splat (i64 4294967295)
  %174 = mul nuw <4 x i64> %173, %172
  %175 = shufflevector <4 x i64> %167, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %176 = add <4 x i64> %153, %175
  %177 = add <4 x i64> %176, %174
  %178 = getelementptr inbounds nuw i8, ptr %10, i64 448
  %179 = load <4 x i64>, ptr %178, align 1
  %180 = xor <4 x i64> %179, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %181 = bitcast <4 x i64> %180 to <8 x i32>
  %182 = shufflevector <8 x i32> %181, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %183 = bitcast <8 x i32> %182 to <4 x i64>
  %184 = and <4 x i64> %180, splat (i64 4294967295)
  %185 = and <4 x i64> %183, splat (i64 4294967295)
  %186 = mul nuw <4 x i64> %185, %184
  %187 = shufflevector <4 x i64> %179, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %188 = add <4 x i64> %165, %187
  %189 = add <4 x i64> %188, %186
  %190 = getelementptr inbounds nuw i8, ptr %10, i64 480
  %191 = load <4 x i64>, ptr %190, align 1
  %192 = xor <4 x i64> %191, <i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746>
  %193 = bitcast <4 x i64> %192 to <8 x i32>
  %194 = shufflevector <8 x i32> %193, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %195 = bitcast <8 x i32> %194 to <4 x i64>
  %196 = and <4 x i64> %192, splat (i64 4294967295)
  %197 = and <4 x i64> %195, splat (i64 4294967295)
  %198 = mul nuw <4 x i64> %197, %196
  %199 = shufflevector <4 x i64> %191, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %200 = add <4 x i64> %177, %199
  %201 = add <4 x i64> %200, %198
  %202 = getelementptr inbounds nuw i8, ptr %10, i64 512
  %203 = load <4 x i64>, ptr %202, align 1
  %204 = xor <4 x i64> %203, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %205 = bitcast <4 x i64> %204 to <8 x i32>
  %206 = shufflevector <8 x i32> %205, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %207 = bitcast <8 x i32> %206 to <4 x i64>
  %208 = and <4 x i64> %204, splat (i64 4294967295)
  %209 = and <4 x i64> %207, splat (i64 4294967295)
  %210 = mul nuw <4 x i64> %209, %208
  %211 = shufflevector <4 x i64> %203, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %212 = add <4 x i64> %189, %211
  %213 = add <4 x i64> %212, %210
  %214 = getelementptr inbounds nuw i8, ptr %10, i64 544
  %215 = load <4 x i64>, ptr %214, align 1
  %216 = xor <4 x i64> %215, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %217 = bitcast <4 x i64> %216 to <8 x i32>
  %218 = shufflevector <8 x i32> %217, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %219 = bitcast <8 x i32> %218 to <4 x i64>
  %220 = and <4 x i64> %216, splat (i64 4294967295)
  %221 = and <4 x i64> %219, splat (i64 4294967295)
  %222 = mul nuw <4 x i64> %221, %220
  %223 = shufflevector <4 x i64> %215, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %224 = add <4 x i64> %201, %223
  %225 = add <4 x i64> %224, %222
  %226 = getelementptr inbounds nuw i8, ptr %10, i64 576
  %227 = load <4 x i64>, ptr %226, align 1
  %228 = xor <4 x i64> %227, <i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352>
  %229 = bitcast <4 x i64> %228 to <8 x i32>
  %230 = shufflevector <8 x i32> %229, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %231 = bitcast <8 x i32> %230 to <4 x i64>
  %232 = and <4 x i64> %228, splat (i64 4294967295)
  %233 = and <4 x i64> %231, splat (i64 4294967295)
  %234 = mul nuw <4 x i64> %233, %232
  %235 = shufflevector <4 x i64> %227, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %236 = add <4 x i64> %213, %235
  %237 = add <4 x i64> %236, %234
  %238 = getelementptr inbounds nuw i8, ptr %10, i64 608
  %239 = load <4 x i64>, ptr %238, align 1
  %240 = xor <4 x i64> %239, <i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654>
  %241 = bitcast <4 x i64> %240 to <8 x i32>
  %242 = shufflevector <8 x i32> %241, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %243 = bitcast <8 x i32> %242 to <4 x i64>
  %244 = and <4 x i64> %240, splat (i64 4294967295)
  %245 = and <4 x i64> %243, splat (i64 4294967295)
  %246 = mul nuw <4 x i64> %245, %244
  %247 = shufflevector <4 x i64> %239, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %248 = add <4 x i64> %225, %247
  %249 = add <4 x i64> %248, %246
  %250 = getelementptr inbounds nuw i8, ptr %10, i64 640
  %251 = load <4 x i64>, ptr %250, align 1
  %252 = xor <4 x i64> %251, <i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193>
  %253 = bitcast <4 x i64> %252 to <8 x i32>
  %254 = shufflevector <8 x i32> %253, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %255 = bitcast <8 x i32> %254 to <4 x i64>
  %256 = and <4 x i64> %252, splat (i64 4294967295)
  %257 = and <4 x i64> %255, splat (i64 4294967295)
  %258 = mul nuw <4 x i64> %257, %256
  %259 = shufflevector <4 x i64> %251, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %260 = add <4 x i64> %237, %259
  %261 = add <4 x i64> %260, %258
  %262 = getelementptr inbounds nuw i8, ptr %10, i64 672
  %263 = load <4 x i64>, ptr %262, align 1
  %264 = xor <4 x i64> %263, <i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907>
  %265 = bitcast <4 x i64> %264 to <8 x i32>
  %266 = shufflevector <8 x i32> %265, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %267 = bitcast <8 x i32> %266 to <4 x i64>
  %268 = and <4 x i64> %264, splat (i64 4294967295)
  %269 = and <4 x i64> %267, splat (i64 4294967295)
  %270 = mul nuw <4 x i64> %269, %268
  %271 = shufflevector <4 x i64> %263, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %272 = add <4 x i64> %249, %271
  %273 = add <4 x i64> %272, %270
  %274 = getelementptr inbounds nuw i8, ptr %10, i64 704
  %275 = load <4 x i64>, ptr %274, align 1
  %276 = xor <4 x i64> %275, <i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746>
  %277 = bitcast <4 x i64> %276 to <8 x i32>
  %278 = shufflevector <8 x i32> %277, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %279 = bitcast <8 x i32> %278 to <4 x i64>
  %280 = and <4 x i64> %276, splat (i64 4294967295)
  %281 = and <4 x i64> %279, splat (i64 4294967295)
  %282 = mul nuw <4 x i64> %281, %280
  %283 = shufflevector <4 x i64> %275, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %284 = add <4 x i64> %261, %283
  %285 = add <4 x i64> %284, %282
  %286 = getelementptr inbounds nuw i8, ptr %10, i64 736
  %287 = load <4 x i64>, ptr %286, align 1
  %288 = xor <4 x i64> %287, <i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047>
  %289 = bitcast <4 x i64> %288 to <8 x i32>
  %290 = shufflevector <8 x i32> %289, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %291 = bitcast <8 x i32> %290 to <4 x i64>
  %292 = and <4 x i64> %288, splat (i64 4294967295)
  %293 = and <4 x i64> %291, splat (i64 4294967295)
  %294 = mul nuw <4 x i64> %293, %292
  %295 = shufflevector <4 x i64> %287, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %296 = add <4 x i64> %273, %295
  %297 = add <4 x i64> %296, %294
  %298 = getelementptr inbounds nuw i8, ptr %10, i64 768
  %299 = load <4 x i64>, ptr %298, align 1
  %300 = xor <4 x i64> %299, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %301 = bitcast <4 x i64> %300 to <8 x i32>
  %302 = shufflevector <8 x i32> %301, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %303 = bitcast <8 x i32> %302 to <4 x i64>
  %304 = and <4 x i64> %300, splat (i64 4294967295)
  %305 = and <4 x i64> %303, splat (i64 4294967295)
  %306 = mul nuw <4 x i64> %305, %304
  %307 = shufflevector <4 x i64> %299, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %308 = add <4 x i64> %285, %307
  %309 = add <4 x i64> %308, %306
  %310 = getelementptr inbounds nuw i8, ptr %10, i64 800
  %311 = load <4 x i64>, ptr %310, align 1
  %312 = xor <4 x i64> %311, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %313 = bitcast <4 x i64> %312 to <8 x i32>
  %314 = shufflevector <8 x i32> %313, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %315 = bitcast <8 x i32> %314 to <4 x i64>
  %316 = and <4 x i64> %312, splat (i64 4294967295)
  %317 = and <4 x i64> %315, splat (i64 4294967295)
  %318 = mul nuw <4 x i64> %317, %316
  %319 = shufflevector <4 x i64> %311, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %320 = add <4 x i64> %297, %319
  %321 = add <4 x i64> %320, %318
  %322 = getelementptr inbounds nuw i8, ptr %10, i64 832
  %323 = load <4 x i64>, ptr %322, align 1
  %324 = xor <4 x i64> %323, <i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654>
  %325 = bitcast <4 x i64> %324 to <8 x i32>
  %326 = shufflevector <8 x i32> %325, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %327 = bitcast <8 x i32> %326 to <4 x i64>
  %328 = and <4 x i64> %324, splat (i64 4294967295)
  %329 = and <4 x i64> %327, splat (i64 4294967295)
  %330 = mul nuw <4 x i64> %329, %328
  %331 = shufflevector <4 x i64> %323, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %332 = add <4 x i64> %309, %331
  %333 = add <4 x i64> %332, %330
  %334 = getelementptr inbounds nuw i8, ptr %10, i64 864
  %335 = load <4 x i64>, ptr %334, align 1
  %336 = xor <4 x i64> %335, <i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509>
  %337 = bitcast <4 x i64> %336 to <8 x i32>
  %338 = shufflevector <8 x i32> %337, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %339 = bitcast <8 x i32> %338 to <4 x i64>
  %340 = and <4 x i64> %336, splat (i64 4294967295)
  %341 = and <4 x i64> %339, splat (i64 4294967295)
  %342 = mul nuw <4 x i64> %341, %340
  %343 = shufflevector <4 x i64> %335, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %344 = add <4 x i64> %321, %343
  %345 = add <4 x i64> %344, %342
  %346 = getelementptr inbounds nuw i8, ptr %10, i64 896
  %347 = load <4 x i64>, ptr %346, align 1
  %348 = xor <4 x i64> %347, <i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907>
  %349 = bitcast <4 x i64> %348 to <8 x i32>
  %350 = shufflevector <8 x i32> %349, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %351 = bitcast <8 x i32> %350 to <4 x i64>
  %352 = and <4 x i64> %348, splat (i64 4294967295)
  %353 = and <4 x i64> %351, splat (i64 4294967295)
  %354 = mul nuw <4 x i64> %353, %352
  %355 = shufflevector <4 x i64> %347, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %356 = add <4 x i64> %333, %355
  %357 = add <4 x i64> %356, %354
  %358 = getelementptr inbounds nuw i8, ptr %10, i64 928
  %359 = load <4 x i64>, ptr %358, align 1
  %360 = xor <4 x i64> %359, <i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737>
  %361 = bitcast <4 x i64> %360 to <8 x i32>
  %362 = shufflevector <8 x i32> %361, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %363 = bitcast <8 x i32> %362 to <4 x i64>
  %364 = and <4 x i64> %360, splat (i64 4294967295)
  %365 = and <4 x i64> %363, splat (i64 4294967295)
  %366 = mul nuw <4 x i64> %365, %364
  %367 = shufflevector <4 x i64> %359, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %368 = add <4 x i64> %345, %367
  %369 = add <4 x i64> %368, %366
  %370 = getelementptr inbounds nuw i8, ptr %10, i64 960
  %371 = load <4 x i64>, ptr %370, align 1
  %372 = xor <4 x i64> %371, <i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047>
  %373 = bitcast <4 x i64> %372 to <8 x i32>
  %374 = shufflevector <8 x i32> %373, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %375 = bitcast <8 x i32> %374 to <4 x i64>
  %376 = and <4 x i64> %372, splat (i64 4294967295)
  %377 = and <4 x i64> %375, splat (i64 4294967295)
  %378 = mul nuw <4 x i64> %377, %376
  %379 = shufflevector <4 x i64> %371, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %380 = add <4 x i64> %357, %379
  %381 = add <4 x i64> %380, %378
  %382 = getelementptr inbounds nuw i8, ptr %10, i64 992
  %383 = load <4 x i64>, ptr %382, align 1
  %384 = xor <4 x i64> %383, <i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253>
  %385 = bitcast <4 x i64> %384 to <8 x i32>
  %386 = shufflevector <8 x i32> %385, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %387 = bitcast <8 x i32> %386 to <4 x i64>
  %388 = and <4 x i64> %384, splat (i64 4294967295)
  %389 = and <4 x i64> %387, splat (i64 4294967295)
  %390 = mul nuw <4 x i64> %389, %388
  %391 = shufflevector <4 x i64> %383, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %392 = add <4 x i64> %369, %391
  %393 = add <4 x i64> %392, %390
  %394 = lshr <4 x i64> %381, splat (i64 47)
  %395 = xor <4 x i64> %394, %381
  %396 = xor <4 x i64> %395, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %397 = and <4 x i64> %396, splat (i64 4294967295)
  %398 = mul nuw <4 x i64> %397, splat (i64 2654435761)
  %399 = bitcast <4 x i64> %396 to <8 x i32>
  %400 = shufflevector <8 x i32> %399, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %401 = bitcast <8 x i32> %400 to <4 x i64>
  %402 = mul <4 x i64> %401, splat (i64 -7046029290881679360)
  %403 = add <4 x i64> %402, %398
  %404 = lshr <4 x i64> %393, splat (i64 47)
  %405 = xor <4 x i64> %404, %393
  %406 = xor <4 x i64> %405, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %407 = and <4 x i64> %406, splat (i64 4294967295)
  %408 = mul nuw <4 x i64> %407, splat (i64 2654435761)
  %409 = bitcast <4 x i64> %406 to <8 x i32>
  %410 = shufflevector <8 x i32> %409, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %411 = bitcast <8 x i32> %410 to <4 x i64>
  %412 = mul <4 x i64> %411, splat (i64 -7046029290881679360)
  %413 = add <4 x i64> %412, %408
  %414 = add nuw nsw i64 %8, 1
  %415 = icmp eq i64 %414, %3
  br i1 %415, label %416, label %5

416:                                              ; preds = %5, %2
  %417 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %413, %5 ]
  %418 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %403, %5 ]
  %419 = and i64 %1, -1024
  %420 = lshr i64 %1, 6
  %421 = and i64 %420, 15
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 %419
  %423 = icmp eq i64 %421, 0
  br i1 %423, label %460, label %424

424:                                              ; preds = %416, %424
  %425 = phi <4 x i64> [ %457, %424 ], [ %417, %416 ]
  %426 = phi <4 x i64> [ %443, %424 ], [ %418, %416 ]
  %427 = phi i64 [ %458, %424 ], [ 0, %416 ]
  %428 = shl i64 %427, 6
  %429 = getelementptr inbounds nuw i8, ptr %422, i64 %428
  %430 = shl i64 %427, 3
  %431 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %430
  %432 = load <4 x i64>, ptr %429, align 1
  %433 = load <4 x i64>, ptr %431, align 8
  %434 = xor <4 x i64> %433, %432
  %435 = bitcast <4 x i64> %434 to <8 x i32>
  %436 = shufflevector <8 x i32> %435, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %437 = bitcast <8 x i32> %436 to <4 x i64>
  %438 = and <4 x i64> %434, splat (i64 4294967295)
  %439 = and <4 x i64> %437, splat (i64 4294967295)
  %440 = mul nuw <4 x i64> %439, %438
  %441 = shufflevector <4 x i64> %432, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %442 = add <4 x i64> %426, %441
  %443 = add <4 x i64> %442, %440
  %444 = getelementptr inbounds nuw i8, ptr %429, i64 32
  %445 = load <4 x i64>, ptr %444, align 1
  %446 = getelementptr inbounds nuw i8, ptr %431, i64 32
  %447 = load <4 x i64>, ptr %446, align 8
  %448 = xor <4 x i64> %447, %445
  %449 = bitcast <4 x i64> %448 to <8 x i32>
  %450 = shufflevector <8 x i32> %449, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %451 = bitcast <8 x i32> %450 to <4 x i64>
  %452 = and <4 x i64> %448, splat (i64 4294967295)
  %453 = and <4 x i64> %451, splat (i64 4294967295)
  %454 = mul nuw <4 x i64> %453, %452
  %455 = shufflevector <4 x i64> %445, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %456 = add <4 x i64> %425, %455
  %457 = add <4 x i64> %456, %454
  %458 = add nuw nsw i64 %427, 1
  %459 = icmp eq i64 %458, %421
  br i1 %459, label %460, label %424

460:                                              ; preds = %424, %416
  %461 = phi <4 x i64> [ %417, %416 ], [ %457, %424 ]
  %462 = phi <4 x i64> [ %418, %416 ], [ %443, %424 ]
  %463 = and i64 %1, 63
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %491, label %465

465:                                              ; preds = %460
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %467 = getelementptr inbounds i8, ptr %466, i64 -64
  %468 = load <4 x i64>, ptr %467, align 1
  %469 = xor <4 x i64> %468, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %470 = bitcast <4 x i64> %469 to <8 x i32>
  %471 = shufflevector <8 x i32> %470, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %472 = bitcast <8 x i32> %471 to <4 x i64>
  %473 = and <4 x i64> %469, splat (i64 4294967295)
  %474 = and <4 x i64> %472, splat (i64 4294967295)
  %475 = mul nuw <4 x i64> %474, %473
  %476 = shufflevector <4 x i64> %468, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %477 = add <4 x i64> %462, %476
  %478 = add <4 x i64> %477, %475
  %479 = getelementptr inbounds i8, ptr %466, i64 -32
  %480 = load <4 x i64>, ptr %479, align 1
  %481 = xor <4 x i64> %480, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %482 = bitcast <4 x i64> %481 to <8 x i32>
  %483 = shufflevector <8 x i32> %482, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %484 = bitcast <8 x i32> %483 to <4 x i64>
  %485 = and <4 x i64> %481, splat (i64 4294967295)
  %486 = and <4 x i64> %484, splat (i64 4294967295)
  %487 = mul nuw <4 x i64> %486, %485
  %488 = shufflevector <4 x i64> %480, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %489 = add <4 x i64> %461, %488
  %490 = add <4 x i64> %489, %487
  br label %491

491:                                              ; preds = %465, %460
  %492 = phi <4 x i64> [ %461, %460 ], [ %490, %465 ]
  %493 = phi <4 x i64> [ %462, %460 ], [ %478, %465 ]
  %494 = mul i64 %1, -7046029288634856825
  %495 = extractelement <4 x i64> %493, i64 0
  %496 = xor i64 %495, 7914194659941938988
  %497 = extractelement <4 x i64> %493, i64 1
  %498 = xor i64 %497, -6611157965513653271
  %499 = zext i64 %496 to i128
  %500 = zext i64 %498 to i128
  %501 = mul nuw i128 %500, %499
  %502 = lshr i128 %501, 64
  %503 = xor i128 %502, %501
  %504 = trunc i128 %503 to i64
  %505 = add i64 %494, %504
  %506 = extractelement <4 x i64> %493, i64 2
  %507 = xor i64 %506, -1839215637059881052
  %508 = extractelement <4 x i64> %493, i64 3
  %509 = xor i64 %508, -3433288310154277810
  %510 = zext i64 %507 to i128
  %511 = zext i64 %509 to i128
  %512 = mul nuw i128 %511, %510
  %513 = lshr i128 %512, 64
  %514 = xor i128 %513, %512
  %515 = trunc i128 %514 to i64
  %516 = add i64 %505, %515
  %517 = extractelement <4 x i64> %492, i64 0
  %518 = xor i64 %517, 5046485836271438973
  %519 = extractelement <4 x i64> %492, i64 1
  %520 = xor i64 %519, -8055285457383852172
  %521 = zext i64 %518 to i128
  %522 = zext i64 %520 to i128
  %523 = mul nuw i128 %522, %521
  %524 = lshr i128 %523, 64
  %525 = xor i128 %524, %523
  %526 = trunc i128 %525 to i64
  %527 = add i64 %516, %526
  %528 = extractelement <4 x i64> %492, i64 2
  %529 = xor i64 %528, 5920048007935066598
  %530 = extractelement <4 x i64> %492, i64 3
  %531 = xor i64 %530, 7336514198459093435
  %532 = zext i64 %529 to i128
  %533 = zext i64 %531 to i128
  %534 = mul nuw i128 %533, %532
  %535 = lshr i128 %534, 64
  %536 = xor i128 %535, %534
  %537 = trunc i128 %536 to i64
  %538 = add i64 %527, %537
  %539 = lshr i64 %538, 37
  %540 = xor i64 %539, %538
  %541 = mul i64 %540, 1609587929392839161
  %542 = lshr i64 %541, 32
  %543 = xor i64 %542, %541
  %544 = mul i64 %1, -4417276706812531889
  %545 = xor i64 %544, -1
  %546 = xor i64 %495, -2753530472436770380
  %547 = xor i64 %497, 3784058077962335096
  %548 = zext i64 %546 to i128
  %549 = zext i64 %547 to i128
  %550 = mul nuw i128 %549, %548
  %551 = lshr i128 %550, 64
  %552 = xor i128 %551, %550
  %553 = trunc i128 %552 to i64
  %554 = add i64 %553, %545
  %555 = xor i64 %506, -360392965937173549
  %556 = xor i64 %508, -5237161843349560557
  %557 = zext i64 %555 to i128
  %558 = zext i64 %556 to i128
  %559 = mul nuw i128 %558, %557
  %560 = lshr i128 %559, 64
  %561 = xor i128 %560, %559
  %562 = trunc i128 %561 to i64
  %563 = add i64 %554, %562
  %564 = xor i64 %517, 2965150961192524528
  %565 = xor i64 %519, 9032178055121889492
  %566 = zext i64 %564 to i128
  %567 = zext i64 %565 to i128
  %568 = mul nuw i128 %567, %566
  %569 = lshr i128 %568, 64
  %570 = xor i128 %569, %568
  %571 = trunc i128 %570 to i64
  %572 = add i64 %563, %571
  %573 = xor i64 %528, 8850058120466833735
  %574 = xor i64 %530, -7669846995664752176
  %575 = zext i64 %573 to i128
  %576 = zext i64 %574 to i128
  %577 = mul nuw i128 %576, %575
  %578 = lshr i128 %577, 64
  %579 = xor i128 %578, %577
  %580 = trunc i128 %579 to i64
  %581 = add i64 %572, %580
  %582 = lshr i64 %581, 37
  %583 = xor i64 %582, %581
  %584 = mul i64 %583, 1609587929392839161
  %585 = lshr i64 %584, 32
  %586 = xor i64 %585, %584
  %587 = insertvalue { i64, i64 } poison, i64 %543, 0
  %588 = insertvalue { i64, i64 } %587, i64 %586, 1
  ret { i64, i64 } %588
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSecret(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #18 {
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %131

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %45

8:                                                ; preds = %6
  %9 = load i64, ptr %0, align 1
  %10 = load i64, ptr %2, align 1
  %11 = xor i64 %10, %9
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %14
  %18 = xor i64 %11, %17
  %19 = zext i64 %18 to i128
  %20 = mul nuw i128 %19, 11400714785074694791
  %21 = trunc i128 %20 to i64
  %22 = lshr i128 %20, 64
  %23 = trunc nuw i128 %22 to i64
  %24 = mul i64 %17, -7046029288634856825
  %25 = add i64 %24, %23
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %21
  %28 = zext i64 %27 to i128
  %29 = mul nuw i128 %28, 14029467366897019727
  %30 = trunc i128 %29 to i64
  %31 = lshr i128 %29, 64
  %32 = trunc nuw i128 %31 to i64
  %33 = mul i64 %25, -4417276706812531889
  %34 = add i64 %33, %32
  %35 = lshr i64 %30, 37
  %36 = xor i64 %35, %30
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  %40 = lshr i64 %34, 37
  %41 = xor i64 %40, %34
  %42 = mul i64 %41, 1609587929392839161
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  br label %126

45:                                               ; preds = %6
  %46 = icmp samesign ugt i64 %1, 3
  br i1 %46, label %47, label %86

47:                                               ; preds = %45
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %50 = getelementptr inbounds i8, ptr %49, i64 -4
  %51 = load i32, ptr %50, align 1
  %52 = zext i32 %48 to i64
  %53 = zext i32 %51 to i64
  %54 = shl nuw i64 %53, 32
  %55 = or disjoint i64 %54, %52
  %56 = tail call noundef i64 @llvm.bswap.i64(i64 %55)
  %57 = load i64, ptr %2, align 1
  %58 = xor i64 %55, %57
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %56, %60
  %62 = lshr i64 %58, 51
  %63 = xor i64 %62, %58
  %64 = mul i64 %63, 2654435761
  %65 = add i64 %64, %1
  %66 = lshr i64 %65, 47
  %67 = xor i64 %66, %65
  %68 = mul i64 %67, -4417276706812531889
  %69 = lshr i64 %61, 47
  %70 = xor i64 %69, %61
  %71 = mul i64 %70, -7046029288634856825
  %72 = sub i64 %71, %1
  %73 = lshr i64 %72, 43
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, -8796714831421723037
  %76 = lshr i64 %68, 37
  %77 = xor i64 %76, %68
  %78 = mul i64 %77, 1609587929392839161
  %79 = lshr i64 %78, 32
  %80 = xor i64 %79, %78
  %81 = lshr i64 %75, 37
  %82 = xor i64 %81, %75
  %83 = mul i64 %82, 1609587929392839161
  %84 = lshr i64 %83, 32
  %85 = xor i64 %84, %83
  br label %126

86:                                               ; preds = %45
  %87 = icmp eq i64 %1, 0
  br i1 %87, label %126, label %88

88:                                               ; preds = %86
  %89 = load i8, ptr %0, align 1
  %90 = lshr i64 %1, 1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr i8, ptr %0, i64 %1
  %94 = getelementptr i8, ptr %93, i64 -1
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %89 to i32
  %97 = zext i8 %92 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = or disjoint i32 %98, %96
  %100 = zext i8 %95 to i32
  %101 = shl nuw nsw i32 %100, 16
  %102 = or disjoint i32 %99, %101
  %103 = trunc nuw nsw i64 %1 to i32
  %104 = shl nuw nsw i32 %103, 24
  %105 = or disjoint i32 %102, %104
  %106 = tail call noundef i32 @llvm.bswap.i32(i32 %105)
  %107 = load i32, ptr %2, align 1
  %108 = xor i32 %105, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %111 = load i32, ptr %110, align 1
  %112 = xor i32 %106, %111
  %113 = zext i32 %112 to i64
  %114 = mul i64 %109, -7046029288634856825
  %115 = mul i64 %113, -4417276706812531889
  %116 = lshr i64 %114, 37
  %117 = xor i64 %116, %114
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  %121 = lshr i64 %115, 37
  %122 = xor i64 %121, %115
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %126

126:                                              ; preds = %8, %47, %86, %88
  %127 = phi i64 [ %44, %8 ], [ %85, %47 ], [ %125, %88 ], [ 0, %86 ]
  %128 = phi i64 [ %39, %8 ], [ %80, %47 ], [ %120, %88 ], [ 0, %86 ]
  %129 = insertvalue { i64, i64 } poison, i64 %128, 0
  %130 = insertvalue { i64, i64 } %129, i64 %127, 1
  br label %288

131:                                              ; preds = %4
  %132 = icmp ult i64 %1, 129
  br i1 %132, label %133, label %282

133:                                              ; preds = %131
  %134 = mul i64 %1, -7046029288634856825
  %135 = icmp samesign ugt i64 %1, 32
  br i1 %135, label %136, label %233

136:                                              ; preds = %133
  %137 = icmp samesign ugt i64 %1, 64
  br i1 %137, label %138, label %201

138:                                              ; preds = %136
  %139 = icmp samesign ugt i64 %1, 96
  br i1 %139, label %140, label %169

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %143 = load <2 x i64>, ptr %141, align 1
  %144 = load <2 x i64>, ptr %142, align 1
  %145 = xor <2 x i64> %144, %143
  %146 = extractelement <2 x i64> %145, i64 0
  %147 = zext i64 %146 to i128
  %148 = extractelement <2 x i64> %145, i64 1
  %149 = zext i64 %148 to i128
  %150 = mul nuw i128 %149, %147
  %151 = lshr i128 %150, 64
  %152 = xor i128 %151, %150
  %153 = trunc i128 %152 to i64
  %154 = add i64 %134, %153
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %156 = getelementptr inbounds i8, ptr %155, i64 -64
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %158 = load <2 x i64>, ptr %156, align 1
  %159 = load <2 x i64>, ptr %157, align 1
  %160 = xor <2 x i64> %159, %158
  %161 = extractelement <2 x i64> %160, i64 0
  %162 = zext i64 %161 to i128
  %163 = extractelement <2 x i64> %160, i64 1
  %164 = zext i64 %163 to i128
  %165 = mul nuw i128 %164, %162
  %166 = lshr i128 %165, 64
  %167 = xor i128 %166, %165
  %168 = trunc i128 %167 to i64
  br label %169

169:                                              ; preds = %140, %138
  %170 = phi i64 [ %168, %140 ], [ 0, %138 ]
  %171 = phi i64 [ %154, %140 ], [ %134, %138 ]
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %173 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %174 = load <2 x i64>, ptr %172, align 1
  %175 = load <2 x i64>, ptr %173, align 1
  %176 = xor <2 x i64> %175, %174
  %177 = extractelement <2 x i64> %176, i64 0
  %178 = zext i64 %177 to i128
  %179 = extractelement <2 x i64> %176, i64 1
  %180 = zext i64 %179 to i128
  %181 = mul nuw i128 %180, %178
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %171, %184
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %187 = getelementptr inbounds i8, ptr %186, i64 -48
  %188 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %189 = load <2 x i64>, ptr %187, align 1
  %190 = load <2 x i64>, ptr %188, align 1
  %191 = xor <2 x i64> %190, %189
  %192 = extractelement <2 x i64> %191, i64 0
  %193 = zext i64 %192 to i128
  %194 = extractelement <2 x i64> %191, i64 1
  %195 = zext i64 %194 to i128
  %196 = mul nuw i128 %195, %193
  %197 = lshr i128 %196, 64
  %198 = xor i128 %197, %196
  %199 = trunc i128 %198 to i64
  %200 = add i64 %170, %199
  br label %201

201:                                              ; preds = %169, %136
  %202 = phi i64 [ %200, %169 ], [ 0, %136 ]
  %203 = phi i64 [ %185, %169 ], [ %134, %136 ]
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %206 = load <2 x i64>, ptr %204, align 1
  %207 = load <2 x i64>, ptr %205, align 1
  %208 = xor <2 x i64> %207, %206
  %209 = extractelement <2 x i64> %208, i64 0
  %210 = zext i64 %209 to i128
  %211 = extractelement <2 x i64> %208, i64 1
  %212 = zext i64 %211 to i128
  %213 = mul nuw i128 %212, %210
  %214 = lshr i128 %213, 64
  %215 = xor i128 %214, %213
  %216 = trunc i128 %215 to i64
  %217 = add i64 %203, %216
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %219 = getelementptr inbounds i8, ptr %218, i64 -32
  %220 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %221 = load <2 x i64>, ptr %219, align 1
  %222 = load <2 x i64>, ptr %220, align 1
  %223 = xor <2 x i64> %222, %221
  %224 = extractelement <2 x i64> %223, i64 0
  %225 = zext i64 %224 to i128
  %226 = extractelement <2 x i64> %223, i64 1
  %227 = zext i64 %226 to i128
  %228 = mul nuw i128 %227, %225
  %229 = lshr i128 %228, 64
  %230 = xor i128 %229, %228
  %231 = trunc i128 %230 to i64
  %232 = add i64 %202, %231
  br label %233

233:                                              ; preds = %133, %201
  %234 = phi i64 [ %232, %201 ], [ 0, %133 ]
  %235 = phi i64 [ %217, %201 ], [ %134, %133 ]
  %236 = load <2 x i64>, ptr %0, align 1
  %237 = load <2 x i64>, ptr %2, align 1
  %238 = xor <2 x i64> %237, %236
  %239 = extractelement <2 x i64> %238, i64 0
  %240 = zext i64 %239 to i128
  %241 = extractelement <2 x i64> %238, i64 1
  %242 = zext i64 %241 to i128
  %243 = mul nuw i128 %242, %240
  %244 = lshr i128 %243, 64
  %245 = xor i128 %244, %243
  %246 = trunc i128 %245 to i64
  %247 = add i64 %235, %246
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %249 = getelementptr inbounds i8, ptr %248, i64 -16
  %250 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %251 = load <2 x i64>, ptr %249, align 1
  %252 = load <2 x i64>, ptr %250, align 1
  %253 = xor <2 x i64> %252, %251
  %254 = extractelement <2 x i64> %253, i64 0
  %255 = zext i64 %254 to i128
  %256 = extractelement <2 x i64> %253, i64 1
  %257 = zext i64 %256 to i128
  %258 = mul nuw i128 %257, %255
  %259 = lshr i128 %258, 64
  %260 = xor i128 %259, %258
  %261 = trunc i128 %260 to i64
  %262 = add i64 %234, %261
  %263 = add i64 %262, %247
  %264 = mul i64 %247, -7046029288634856825
  %265 = mul i64 %262, -8796714831421723037
  %266 = mul i64 %1, -4417276706812531889
  %267 = add i64 %264, %266
  %268 = add i64 %267, %265
  %269 = lshr i64 %263, 37
  %270 = xor i64 %269, %263
  %271 = mul i64 %270, 1609587929392839161
  %272 = lshr i64 %271, 32
  %273 = xor i64 %272, %271
  %274 = lshr i64 %268, 37
  %275 = xor i64 %274, %268
  %276 = mul i64 %275, 1609587929392839161
  %277 = lshr i64 %276, 32
  %278 = xor i64 %277, %276
  %279 = sub i64 0, %278
  %280 = insertvalue { i64, i64 } poison, i64 %273, 0
  %281 = insertvalue { i64, i64 } %280, i64 %279, 1
  br label %288

282:                                              ; preds = %131
  %283 = icmp ult i64 %1, 241
  br i1 %283, label %284, label %286

284:                                              ; preds = %282
  %285 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0)
  br label %288

286:                                              ; preds = %282
  %287 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %288

288:                                              ; preds = %286, %284, %233, %126
  %289 = phi { i64, i64 } [ %130, %126 ], [ %281, %233 ], [ %285, %284 ], [ %287, %286 ]
  ret { i64, i64 } %289
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = udiv i64 %1, %7
  %9 = urem i64 %1, %7
  %10 = icmp ugt i64 %7, %1
  br i1 %10, label %86, label %11

11:                                               ; preds = %4
  %12 = icmp ult i64 %5, 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %14 = getelementptr inbounds i8, ptr %13, i64 -64
  %15 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %16 = load <4 x i64>, ptr %14, align 1
  %17 = getelementptr inbounds i8, ptr %13, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1
  br label %19

19:                                               ; preds = %11, %61
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %11 ], [ %83, %61 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %11 ], [ %73, %61 ]
  %22 = phi i64 [ 0, %11 ], [ %84, %61 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  br i1 %12, label %61, label %25

25:                                               ; preds = %19, %25
  %26 = phi <4 x i64> [ %58, %25 ], [ %20, %19 ]
  %27 = phi <4 x i64> [ %44, %25 ], [ %21, %19 ]
  %28 = phi i64 [ %59, %25 ], [ 0, %19 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = shl i64 %28, 3
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %33 = load <4 x i64>, ptr %30, align 1
  %34 = load <4 x i64>, ptr %32, align 1
  %35 = xor <4 x i64> %34, %33
  %36 = bitcast <4 x i64> %35 to <8 x i32>
  %37 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %38 = bitcast <8 x i32> %37 to <4 x i64>
  %39 = and <4 x i64> %35, splat (i64 4294967295)
  %40 = and <4 x i64> %38, splat (i64 4294967295)
  %41 = mul nuw <4 x i64> %40, %39
  %42 = shufflevector <4 x i64> %33, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %43 = add <4 x i64> %27, %42
  %44 = add <4 x i64> %43, %41
  %45 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %46 = load <4 x i64>, ptr %45, align 1
  %47 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %48 = load <4 x i64>, ptr %47, align 1
  %49 = xor <4 x i64> %48, %46
  %50 = bitcast <4 x i64> %49 to <8 x i32>
  %51 = shufflevector <8 x i32> %50, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %52 = bitcast <8 x i32> %51 to <4 x i64>
  %53 = and <4 x i64> %49, splat (i64 4294967295)
  %54 = and <4 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, %53
  %56 = shufflevector <4 x i64> %46, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %57 = add <4 x i64> %26, %56
  %58 = add <4 x i64> %57, %55
  %59 = add nuw nsw i64 %28, 1
  %60 = icmp eq i64 %59, %15
  br i1 %60, label %61, label %25

61:                                               ; preds = %25, %19
  %62 = phi <4 x i64> [ %20, %19 ], [ %58, %25 ]
  %63 = phi <4 x i64> [ %21, %19 ], [ %44, %25 ]
  %64 = lshr <4 x i64> %63, splat (i64 47)
  %65 = xor <4 x i64> %16, %64
  %66 = xor <4 x i64> %65, %63
  %67 = and <4 x i64> %66, splat (i64 4294967295)
  %68 = mul nuw <4 x i64> %67, splat (i64 2654435761)
  %69 = bitcast <4 x i64> %66 to <8 x i32>
  %70 = shufflevector <8 x i32> %69, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %71 = bitcast <8 x i32> %70 to <4 x i64>
  %72 = mul <4 x i64> %71, splat (i64 -7046029290881679360)
  %73 = add <4 x i64> %72, %68
  %74 = lshr <4 x i64> %62, splat (i64 47)
  %75 = xor <4 x i64> %18, %74
  %76 = xor <4 x i64> %75, %62
  %77 = and <4 x i64> %76, splat (i64 4294967295)
  %78 = mul nuw <4 x i64> %77, splat (i64 2654435761)
  %79 = bitcast <4 x i64> %76 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = mul <4 x i64> %81, splat (i64 -7046029290881679360)
  %83 = add <4 x i64> %82, %78
  %84 = add nuw i64 %22, 1
  %85 = icmp ult i64 %84, %8
  br i1 %85, label %19, label %86

86:                                               ; preds = %61, %4
  %87 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %83, %61 ]
  %88 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %73, %61 ]
  %89 = mul i64 %8, %7
  %90 = lshr i64 %9, 6
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 %89
  %92 = icmp ult i64 %9, 64
  br i1 %92, label %129, label %93

93:                                               ; preds = %86, %93
  %94 = phi <4 x i64> [ %126, %93 ], [ %87, %86 ]
  %95 = phi <4 x i64> [ %112, %93 ], [ %88, %86 ]
  %96 = phi i64 [ %127, %93 ], [ 0, %86 ]
  %97 = shl i64 %96, 6
  %98 = getelementptr inbounds nuw i8, ptr %91, i64 %97
  %99 = shl i64 %96, 3
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %99
  %101 = load <4 x i64>, ptr %98, align 1
  %102 = load <4 x i64>, ptr %100, align 1
  %103 = xor <4 x i64> %102, %101
  %104 = bitcast <4 x i64> %103 to <8 x i32>
  %105 = shufflevector <8 x i32> %104, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %106 = bitcast <8 x i32> %105 to <4 x i64>
  %107 = and <4 x i64> %103, splat (i64 4294967295)
  %108 = and <4 x i64> %106, splat (i64 4294967295)
  %109 = mul nuw <4 x i64> %108, %107
  %110 = shufflevector <4 x i64> %101, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %111 = add <4 x i64> %95, %110
  %112 = add <4 x i64> %111, %109
  %113 = getelementptr inbounds nuw i8, ptr %98, i64 32
  %114 = load <4 x i64>, ptr %113, align 1
  %115 = getelementptr inbounds nuw i8, ptr %100, i64 32
  %116 = load <4 x i64>, ptr %115, align 1
  %117 = xor <4 x i64> %116, %114
  %118 = bitcast <4 x i64> %117 to <8 x i32>
  %119 = shufflevector <8 x i32> %118, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %120 = bitcast <8 x i32> %119 to <4 x i64>
  %121 = and <4 x i64> %117, splat (i64 4294967295)
  %122 = and <4 x i64> %120, splat (i64 4294967295)
  %123 = mul nuw <4 x i64> %122, %121
  %124 = shufflevector <4 x i64> %114, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %125 = add <4 x i64> %94, %124
  %126 = add <4 x i64> %125, %123
  %127 = add nuw nsw i64 %96, 1
  %128 = icmp samesign ult i64 %127, %90
  br i1 %128, label %93, label %129

129:                                              ; preds = %93, %86
  %130 = phi <4 x i64> [ %87, %86 ], [ %126, %93 ]
  %131 = phi <4 x i64> [ %88, %86 ], [ %112, %93 ]
  %132 = and i64 %1, 63
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %136 = getelementptr inbounds i8, ptr %135, i64 -67
  %137 = load i64, ptr %136, align 1
  %138 = getelementptr inbounds i8, ptr %135, i64 -59
  %139 = load i64, ptr %138, align 1
  %140 = getelementptr inbounds i8, ptr %135, i64 -51
  %141 = load i64, ptr %140, align 1
  br label %180

142:                                              ; preds = %129
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %144 = getelementptr inbounds i8, ptr %143, i64 -64
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %146 = getelementptr inbounds i8, ptr %145, i64 -71
  %147 = load <4 x i64>, ptr %144, align 1
  %148 = load <4 x i64>, ptr %146, align 1
  %149 = xor <4 x i64> %148, %147
  %150 = bitcast <4 x i64> %149 to <8 x i32>
  %151 = shufflevector <8 x i32> %150, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %152 = bitcast <8 x i32> %151 to <4 x i64>
  %153 = and <4 x i64> %149, splat (i64 4294967295)
  %154 = and <4 x i64> %152, splat (i64 4294967295)
  %155 = mul nuw <4 x i64> %154, %153
  %156 = shufflevector <4 x i64> %147, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %157 = add <4 x i64> %131, %156
  %158 = add <4 x i64> %157, %155
  %159 = getelementptr inbounds i8, ptr %143, i64 -32
  %160 = load <4 x i64>, ptr %159, align 1
  %161 = getelementptr inbounds i8, ptr %145, i64 -39
  %162 = load <4 x i64>, ptr %161, align 1
  %163 = xor <4 x i64> %162, %160
  %164 = bitcast <4 x i64> %163 to <8 x i32>
  %165 = shufflevector <8 x i32> %164, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %166 = bitcast <8 x i32> %165 to <4 x i64>
  %167 = and <4 x i64> %163, splat (i64 4294967295)
  %168 = and <4 x i64> %166, splat (i64 4294967295)
  %169 = mul nuw <4 x i64> %168, %167
  %170 = shufflevector <4 x i64> %160, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %171 = add <4 x i64> %130, %170
  %172 = add <4 x i64> %171, %169
  %173 = bitcast <4 x i64> %148 to i256
  %174 = lshr i256 %173, 32
  %175 = trunc i256 %174 to i64
  %176 = lshr i256 %173, 96
  %177 = trunc i256 %176 to i64
  %178 = lshr i256 %173, 160
  %179 = trunc i256 %178 to i64
  br label %180

180:                                              ; preds = %134, %142
  %181 = phi i64 [ %141, %134 ], [ %179, %142 ]
  %182 = phi i64 [ %139, %134 ], [ %177, %142 ]
  %183 = phi i64 [ %137, %134 ], [ %175, %142 ]
  %184 = phi <4 x i64> [ %130, %134 ], [ %172, %142 ]
  %185 = phi <4 x i64> [ %131, %134 ], [ %158, %142 ]
  %186 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %187 = mul i64 %1, -7046029288634856825
  %188 = extractelement <4 x i64> %185, i64 0
  %189 = load i64, ptr %186, align 1
  %190 = xor i64 %189, %188
  %191 = extractelement <4 x i64> %185, i64 1
  %192 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %193 = load i64, ptr %192, align 1
  %194 = xor i64 %193, %191
  %195 = zext i64 %190 to i128
  %196 = zext i64 %194 to i128
  %197 = mul nuw i128 %196, %195
  %198 = lshr i128 %197, 64
  %199 = xor i128 %198, %197
  %200 = trunc i128 %199 to i64
  %201 = add i64 %187, %200
  %202 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %203 = extractelement <4 x i64> %185, i64 2
  %204 = load i64, ptr %202, align 1
  %205 = xor i64 %204, %203
  %206 = extractelement <4 x i64> %185, i64 3
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = zext i64 %205 to i128
  %211 = zext i64 %209 to i128
  %212 = mul nuw i128 %211, %210
  %213 = lshr i128 %212, 64
  %214 = xor i128 %213, %212
  %215 = trunc i128 %214 to i64
  %216 = add i64 %201, %215
  %217 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %218 = extractelement <4 x i64> %184, i64 0
  %219 = load i64, ptr %217, align 1
  %220 = xor i64 %219, %218
  %221 = extractelement <4 x i64> %184, i64 1
  %222 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %223 = load i64, ptr %222, align 1
  %224 = xor i64 %223, %221
  %225 = zext i64 %220 to i128
  %226 = zext i64 %224 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %216, %230
  %232 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %233 = extractelement <4 x i64> %184, i64 2
  %234 = load i64, ptr %232, align 1
  %235 = xor i64 %234, %233
  %236 = extractelement <4 x i64> %184, i64 3
  %237 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %238 = load i64, ptr %237, align 1
  %239 = xor i64 %238, %236
  %240 = zext i64 %235 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %231, %245
  %247 = lshr i64 %246, 37
  %248 = xor i64 %247, %246
  %249 = mul i64 %248, 1609587929392839161
  %250 = lshr i64 %249, 32
  %251 = xor i64 %250, %249
  %252 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %253 = getelementptr inbounds i8, ptr %252, i64 -75
  %254 = mul i64 %1, -4417276706812531889
  %255 = xor i64 %254, -1
  %256 = load i64, ptr %253, align 1
  %257 = xor i64 %256, %188
  %258 = xor i64 %183, %191
  %259 = zext i64 %257 to i128
  %260 = zext i64 %258 to i128
  %261 = mul nuw i128 %260, %259
  %262 = lshr i128 %261, 64
  %263 = xor i128 %262, %261
  %264 = trunc i128 %263 to i64
  %265 = add i64 %264, %255
  %266 = xor i64 %182, %203
  %267 = xor i64 %181, %206
  %268 = zext i64 %266 to i128
  %269 = zext i64 %267 to i128
  %270 = mul nuw i128 %269, %268
  %271 = lshr i128 %270, 64
  %272 = xor i128 %271, %270
  %273 = trunc i128 %272 to i64
  %274 = add i64 %265, %273
  %275 = getelementptr inbounds i8, ptr %252, i64 -43
  %276 = load i64, ptr %275, align 1
  %277 = xor i64 %276, %218
  %278 = getelementptr inbounds i8, ptr %252, i64 -35
  %279 = load i64, ptr %278, align 1
  %280 = xor i64 %279, %221
  %281 = zext i64 %277 to i128
  %282 = zext i64 %280 to i128
  %283 = mul nuw i128 %282, %281
  %284 = lshr i128 %283, 64
  %285 = xor i128 %284, %283
  %286 = trunc i128 %285 to i64
  %287 = add i64 %274, %286
  %288 = getelementptr inbounds i8, ptr %252, i64 -27
  %289 = load i64, ptr %288, align 1
  %290 = xor i64 %289, %233
  %291 = getelementptr inbounds i8, ptr %252, i64 -19
  %292 = load i64, ptr %291, align 1
  %293 = xor i64 %292, %236
  %294 = zext i64 %290 to i128
  %295 = zext i64 %293 to i128
  %296 = mul nuw i128 %295, %294
  %297 = lshr i128 %296, 64
  %298 = xor i128 %297, %296
  %299 = trunc i128 %298 to i64
  %300 = add i64 %287, %299
  %301 = lshr i64 %300, 37
  %302 = xor i64 %301, %300
  %303 = mul i64 %302, 1609587929392839161
  %304 = lshr i64 %303, 32
  %305 = xor i64 %304, %303
  %306 = insertvalue { i64, i64 } poison, i64 %251, 0
  %307 = insertvalue { i64, i64 } %306, i64 %305, 1
  ret { i64, i64 } %307
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #18 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %127

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %43

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = add i64 %2, -4734510112055689544
  %10 = xor i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 2066345149520216444, %2
  %15 = xor i64 %13, %14
  %16 = xor i64 %10, %15
  %17 = zext i64 %16 to i128
  %18 = mul nuw i128 %17, 11400714785074694791
  %19 = trunc i128 %18 to i64
  %20 = lshr i128 %18, 64
  %21 = trunc nuw i128 %20 to i64
  %22 = mul i64 %15, -7046029288634856825
  %23 = add i64 %22, %21
  %24 = lshr i64 %23, 32
  %25 = xor i64 %24, %19
  %26 = zext i64 %25 to i128
  %27 = mul nuw i128 %26, 14029467366897019727
  %28 = trunc i128 %27 to i64
  %29 = lshr i128 %27, 64
  %30 = trunc nuw i128 %29 to i64
  %31 = mul i64 %23, -4417276706812531889
  %32 = add i64 %31, %30
  %33 = lshr i64 %28, 37
  %34 = xor i64 %33, %28
  %35 = mul i64 %34, 1609587929392839161
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  %38 = lshr i64 %32, 37
  %39 = xor i64 %38, %32
  %40 = mul i64 %39, 1609587929392839161
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  br label %122

43:                                               ; preds = %5
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %83

45:                                               ; preds = %43
  %46 = load i32, ptr %0, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %48 = getelementptr inbounds i8, ptr %47, i64 -4
  %49 = load i32, ptr %48, align 1
  %50 = zext i32 %46 to i64
  %51 = zext i32 %49 to i64
  %52 = shl nuw i64 %51, 32
  %53 = or disjoint i64 %52, %50
  %54 = tail call noundef i64 @llvm.bswap.i64(i64 %53)
  %55 = add i64 %2, -4734510112055689544
  %56 = xor i64 %53, %55
  %57 = sub i64 2066345149520216444, %2
  %58 = xor i64 %54, %57
  %59 = lshr i64 %56, 51
  %60 = xor i64 %59, %56
  %61 = mul i64 %60, 2654435761
  %62 = add i64 %61, %1
  %63 = lshr i64 %62, 47
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, -4417276706812531889
  %66 = lshr i64 %58, 47
  %67 = xor i64 %66, %58
  %68 = mul i64 %67, -7046029288634856825
  %69 = sub i64 %68, %1
  %70 = lshr i64 %69, 43
  %71 = xor i64 %70, %69
  %72 = mul i64 %71, -8796714831421723037
  %73 = lshr i64 %65, 37
  %74 = xor i64 %73, %65
  %75 = mul i64 %74, 1609587929392839161
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  %78 = lshr i64 %72, 37
  %79 = xor i64 %78, %72
  %80 = mul i64 %79, 1609587929392839161
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  br label %122

83:                                               ; preds = %43
  %84 = icmp eq i64 %1, 0
  br i1 %84, label %122, label %85

85:                                               ; preds = %83
  %86 = load i8, ptr %0, align 1
  %87 = lshr i64 %1, 1
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr i8, ptr %0, i64 %1
  %91 = getelementptr i8, ptr %90, i64 -1
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %86 to i32
  %94 = zext i8 %89 to i32
  %95 = shl nuw nsw i32 %94, 8
  %96 = or disjoint i32 %95, %93
  %97 = zext i8 %92 to i32
  %98 = shl nuw nsw i32 %97, 16
  %99 = or disjoint i32 %96, %98
  %100 = trunc nuw nsw i64 %1 to i32
  %101 = shl nuw nsw i32 %100, 24
  %102 = or disjoint i32 %99, %101
  %103 = tail call noundef i32 @llvm.bswap.i32(i32 %102)
  %104 = zext nneg i32 %102 to i64
  %105 = add i64 %2, 963444408
  %106 = xor i64 %105, %104
  %107 = zext i32 %103 to i64
  %108 = sub i64 3192628259, %2
  %109 = xor i64 %108, %107
  %110 = mul i64 %106, -7046029288634856825
  %111 = mul i64 %109, -4417276706812531889
  %112 = lshr i64 %110, 37
  %113 = xor i64 %112, %110
  %114 = mul i64 %113, 1609587929392839161
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  %117 = lshr i64 %111, 37
  %118 = xor i64 %117, %111
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %122

122:                                              ; preds = %7, %45, %83, %85
  %123 = phi i64 [ %42, %7 ], [ %82, %45 ], [ %121, %85 ], [ 0, %83 ]
  %124 = phi i64 [ %37, %7 ], [ %77, %45 ], [ %116, %85 ], [ 0, %83 ]
  %125 = insertvalue { i64, i64 } poison, i64 %124, 0
  %126 = insertvalue { i64, i64 } %125, i64 %123, 1
  br label %294

127:                                              ; preds = %3
  %128 = icmp ult i64 %1, 129
  br i1 %128, label %129, label %288

129:                                              ; preds = %127
  %130 = mul i64 %1, -7046029288634856825
  %131 = icmp samesign ugt i64 %1, 32
  br i1 %131, label %132, label %235

132:                                              ; preds = %129
  %133 = icmp samesign ugt i64 %1, 64
  br i1 %133, label %134, label %201

134:                                              ; preds = %132
  %135 = icmp samesign ugt i64 %1, 96
  br i1 %135, label %136, label %167

136:                                              ; preds = %134
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %138 = load i64, ptr %137, align 1
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %140 = load i64, ptr %139, align 1
  %141 = add i64 %2, 4554437623014685352
  %142 = xor i64 %138, %141
  %143 = sub i64 2111919702937427193, %2
  %144 = xor i64 %140, %143
  %145 = zext i64 %142 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %130, %150
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %153 = getelementptr inbounds i8, ptr %152, i64 -64
  %154 = load i64, ptr %153, align 1
  %155 = getelementptr inbounds i8, ptr %152, i64 -56
  %156 = load i64, ptr %155, align 1
  %157 = add i64 %2, 3556072174620004746
  %158 = xor i64 %154, %157
  %159 = sub i64 7238261902898274248, %2
  %160 = xor i64 %156, %159
  %161 = zext i64 %158 to i128
  %162 = zext i64 %160 to i128
  %163 = mul nuw i128 %162, %161
  %164 = lshr i128 %163, 64
  %165 = xor i128 %164, %163
  %166 = trunc i128 %165 to i64
  br label %167

167:                                              ; preds = %136, %134
  %168 = phi i64 [ %166, %136 ], [ 0, %134 ]
  %169 = phi i64 [ %151, %136 ], [ %130, %134 ]
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %171 = load i64, ptr %170, align 1
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %173 = load i64, ptr %172, align 1
  %174 = add i64 %2, -3818837453329782724
  %175 = xor i64 %171, %174
  %176 = sub i64 -6688317018830679928, %2
  %177 = xor i64 %173, %176
  %178 = zext i64 %175 to i128
  %179 = zext i64 %177 to i128
  %180 = mul nuw i128 %179, %178
  %181 = lshr i128 %180, 64
  %182 = xor i128 %181, %180
  %183 = trunc i128 %182 to i64
  %184 = add i64 %169, %183
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %186 = getelementptr inbounds i8, ptr %185, i64 -48
  %187 = load i64, ptr %186, align 1
  %188 = getelementptr inbounds i8, ptr %185, i64 -40
  %189 = load i64, ptr %188, align 1
  %190 = add i64 %2, 5690594596133299313
  %191 = xor i64 %187, %190
  %192 = sub i64 -2833645246901970632, %2
  %193 = xor i64 %189, %192
  %194 = zext i64 %191 to i128
  %195 = zext i64 %193 to i128
  %196 = mul nuw i128 %195, %194
  %197 = lshr i128 %196, 64
  %198 = xor i128 %197, %196
  %199 = trunc i128 %198 to i64
  %200 = add i64 %168, %199
  br label %201

201:                                              ; preds = %167, %132
  %202 = phi i64 [ %200, %167 ], [ 0, %132 ]
  %203 = phi i64 [ %184, %167 ], [ %130, %132 ]
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %205 = load i64, ptr %204, align 1
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %207 = load i64, ptr %206, align 1
  %208 = add i64 %2, 8711581037947681227
  %209 = xor i64 %205, %208
  %210 = sub i64 2410270004345854594, %2
  %211 = xor i64 %207, %210
  %212 = zext i64 %209 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %203, %217
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %220 = getelementptr inbounds i8, ptr %219, i64 -32
  %221 = load i64, ptr %220, align 1
  %222 = getelementptr inbounds i8, ptr %219, i64 -24
  %223 = load i64, ptr %222, align 1
  %224 = add i64 %2, -8204357891075471176
  %225 = xor i64 %221, %224
  %226 = sub i64 5487137525590930912, %2
  %227 = xor i64 %223, %226
  %228 = zext i64 %225 to i128
  %229 = zext i64 %227 to i128
  %230 = mul nuw i128 %229, %228
  %231 = lshr i128 %230, 64
  %232 = xor i128 %231, %230
  %233 = trunc i128 %232 to i64
  %234 = add i64 %202, %233
  br label %235

235:                                              ; preds = %129, %201
  %236 = phi i64 [ %234, %201 ], [ 0, %129 ]
  %237 = phi i64 [ %218, %201 ], [ %130, %129 ]
  %238 = load i64, ptr %0, align 1
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %240 = load i64, ptr %239, align 1
  %241 = add i64 %2, -4734510112055689544
  %242 = xor i64 %238, %241
  %243 = sub i64 2066345149520216444, %2
  %244 = xor i64 %240, %243
  %245 = zext i64 %242 to i128
  %246 = zext i64 %244 to i128
  %247 = mul nuw i128 %246, %245
  %248 = lshr i128 %247, 64
  %249 = xor i128 %248, %247
  %250 = trunc i128 %249 to i64
  %251 = add i64 %237, %250
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %253 = getelementptr inbounds i8, ptr %252, i64 -16
  %254 = load i64, ptr %253, align 1
  %255 = getelementptr inbounds i8, ptr %252, i64 -8
  %256 = load i64, ptr %255, align 1
  %257 = add i64 %2, -2623469361688619810
  %258 = xor i64 %254, %257
  %259 = sub i64 2262974939099578482, %2
  %260 = xor i64 %256, %259
  %261 = zext i64 %258 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %236, %266
  %268 = add i64 %267, %251
  %269 = mul i64 %251, -7046029288634856825
  %270 = mul i64 %267, -8796714831421723037
  %271 = sub i64 %1, %2
  %272 = mul i64 %271, -4417276706812531889
  %273 = add i64 %269, %272
  %274 = add i64 %273, %270
  %275 = lshr i64 %268, 37
  %276 = xor i64 %275, %268
  %277 = mul i64 %276, 1609587929392839161
  %278 = lshr i64 %277, 32
  %279 = xor i64 %278, %277
  %280 = lshr i64 %274, 37
  %281 = xor i64 %280, %274
  %282 = mul i64 %281, 1609587929392839161
  %283 = lshr i64 %282, 32
  %284 = xor i64 %283, %282
  %285 = sub i64 0, %284
  %286 = insertvalue { i64, i64 } poison, i64 %279, 0
  %287 = insertvalue { i64, i64 } %286, i64 %285, 1
  br label %294

288:                                              ; preds = %127
  %289 = icmp ult i64 %1, 241
  br i1 %289, label %290, label %292

290:                                              ; preds = %288
  %291 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef %2)
  br label %294

292:                                              ; preds = %288
  %293 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %294

294:                                              ; preds = %292, %290, %235, %122
  %295 = phi { i64, i64 } [ %126, %122 ], [ %287, %235 ], [ %291, %290 ], [ %293, %292 ]
  ret { i64, i64 } %295
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, i64 noundef %2) unnamed_addr #19 {
  %4 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #28
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = insertelement <4 x i64> poison, i64 %2, i64 0
  %8 = shufflevector <4 x i64> %7, <4 x i64> poison, <4 x i32> zeroinitializer
  %9 = add <4 x i64> %8, <i64 -4734510112055689544, i64 poison, i64 -2623469361688619810, i64 poison>
  %10 = sub <4 x i64> <i64 poison, i64 2066345149520216444, i64 poison, i64 2262974939099578482>, %8
  %11 = shufflevector <4 x i64> %9, <4 x i64> %10, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %11, ptr %4, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %13 = add <4 x i64> %8, <i64 8711581037947681227, i64 poison, i64 -8204357891075471176, i64 poison>
  %14 = sub <4 x i64> <i64 poison, i64 2410270004345854594, i64 poison, i64 5487137525590930912>, %8
  %15 = shufflevector <4 x i64> %13, <4 x i64> %14, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %15, ptr %12, align 8
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %17 = add <4 x i64> %8, <i64 -3818837453329782724, i64 poison, i64 5690594596133299313, i64 poison>
  %18 = sub <4 x i64> <i64 poison, i64 -6688317018830679928, i64 poison, i64 -2833645246901970632>, %8
  %19 = shufflevector <4 x i64> %17, <4 x i64> %18, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %19, ptr %16, align 8
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %21 = add <4 x i64> %8, <i64 4554437623014685352, i64 poison, i64 3556072174620004746, i64 poison>
  %22 = sub <4 x i64> <i64 poison, i64 2111919702937427193, i64 poison, i64 7238261902898274248>, %8
  %23 = shufflevector <4 x i64> %21, <4 x i64> %22, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %23, ptr %20, align 8
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %25 = add <4 x i64> %8, <i64 -4329134394285701654, i64 poison, i64 5321830579834785047, i64 poison>
  %26 = sub <4 x i64> <i64 poison, i64 -1485321483350670907, i64 poison, i64 -7032137544937171245>, %8
  %27 = shufflevector <4 x i64> %25, <4 x i64> %26, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %27, ptr %24, align 8
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %29 = add <4 x i64> %8, <i64 -242834301215959509, i64 poison, i64 2883454493032893253, i64 poison>
  %30 = sub <4 x i64> <i64 poison, i64 -3588858202114426737, i64 poison, i64 9097354517224871855>, %8
  %31 = shufflevector <4 x i64> %29, <4 x i64> %30, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %31, ptr %28, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %32 = lshr i64 %1, 10
  %33 = icmp ult i64 %1, 1024
  br i1 %33, label %510, label %36

34:                                               ; preds = %3
  %35 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %730

36:                                               ; preds = %6
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %42 = load <4 x i64>, ptr %4, align 8
  %43 = load <4 x i64>, ptr %12, align 8
  %44 = load <4 x i64>, ptr %41, align 8
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %46 = load <4 x i64>, ptr %45, align 8
  %47 = load <4 x i64>, ptr %40, align 8
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %49 = load <4 x i64>, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %51 = load <4 x i64>, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %53 = load <4 x i64>, ptr %52, align 8
  %54 = load <4 x i64>, ptr %12, align 8
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %56 = load <4 x i64>, ptr %55, align 8
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %58 = load <4 x i64>, ptr %57, align 8
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %60 = load <4 x i64>, ptr %59, align 8
  %61 = load <4 x i64>, ptr %39, align 8
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %63 = load <4 x i64>, ptr %62, align 8
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %65 = load <4 x i64>, ptr %64, align 8
  %66 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %67 = load <4 x i64>, ptr %66, align 8
  %68 = load <4 x i64>, ptr %16, align 8
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %70 = load <4 x i64>, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %72 = load <4 x i64>, ptr %71, align 8
  %73 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %74 = load <4 x i64>, ptr %73, align 8
  %75 = load <4 x i64>, ptr %38, align 8
  %76 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %77 = load <4 x i64>, ptr %76, align 8
  %78 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %79 = load <4 x i64>, ptr %78, align 8
  %80 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %81 = load <4 x i64>, ptr %80, align 8
  %82 = load <4 x i64>, ptr %20, align 8
  %83 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %84 = load <4 x i64>, ptr %83, align 8
  %85 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %86 = load <4 x i64>, ptr %85, align 8
  %87 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %88 = load <4 x i64>, ptr %87, align 8
  %89 = load <4 x i64>, ptr %37, align 8
  %90 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %91 = load <4 x i64>, ptr %90, align 8
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %93 = load <4 x i64>, ptr %92, align 8
  %94 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %95 = load <4 x i64>, ptr %94, align 8
  %96 = load <4 x i64>, ptr %24, align 8
  %97 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %98 = load <4 x i64>, ptr %97, align 8
  br label %99

99:                                               ; preds = %36, %99
  %100 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %36 ], [ %507, %99 ]
  %101 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %36 ], [ %497, %99 ]
  %102 = phi i64 [ 0, %36 ], [ %508, %99 ]
  %103 = shl i64 %102, 10
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 %103
  %105 = load <4 x i64>, ptr %104, align 1
  %106 = xor <4 x i64> %42, %105
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %105, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %101, %113
  %115 = add <4 x i64> %114, %112
  %116 = getelementptr inbounds nuw i8, ptr %104, i64 32
  %117 = load <4 x i64>, ptr %116, align 1
  %118 = xor <4 x i64> %43, %117
  %119 = bitcast <4 x i64> %118 to <8 x i32>
  %120 = shufflevector <8 x i32> %119, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %121 = bitcast <8 x i32> %120 to <4 x i64>
  %122 = and <4 x i64> %118, splat (i64 4294967295)
  %123 = and <4 x i64> %121, splat (i64 4294967295)
  %124 = mul nuw <4 x i64> %123, %122
  %125 = shufflevector <4 x i64> %117, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %126 = add <4 x i64> %100, %125
  %127 = add <4 x i64> %126, %124
  %128 = getelementptr inbounds nuw i8, ptr %104, i64 64
  %129 = load <4 x i64>, ptr %128, align 1
  %130 = xor <4 x i64> %44, %129
  %131 = bitcast <4 x i64> %130 to <8 x i32>
  %132 = shufflevector <8 x i32> %131, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %133 = bitcast <8 x i32> %132 to <4 x i64>
  %134 = and <4 x i64> %130, splat (i64 4294967295)
  %135 = and <4 x i64> %133, splat (i64 4294967295)
  %136 = mul nuw <4 x i64> %135, %134
  %137 = shufflevector <4 x i64> %129, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %138 = add <4 x i64> %115, %137
  %139 = add <4 x i64> %138, %136
  %140 = getelementptr inbounds nuw i8, ptr %104, i64 96
  %141 = load <4 x i64>, ptr %140, align 1
  %142 = xor <4 x i64> %46, %141
  %143 = bitcast <4 x i64> %142 to <8 x i32>
  %144 = shufflevector <8 x i32> %143, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %145 = bitcast <8 x i32> %144 to <4 x i64>
  %146 = and <4 x i64> %142, splat (i64 4294967295)
  %147 = and <4 x i64> %145, splat (i64 4294967295)
  %148 = mul nuw <4 x i64> %147, %146
  %149 = shufflevector <4 x i64> %141, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %150 = add <4 x i64> %127, %149
  %151 = add <4 x i64> %150, %148
  %152 = getelementptr inbounds nuw i8, ptr %104, i64 128
  %153 = load <4 x i64>, ptr %152, align 1
  %154 = xor <4 x i64> %47, %153
  %155 = bitcast <4 x i64> %154 to <8 x i32>
  %156 = shufflevector <8 x i32> %155, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %157 = bitcast <8 x i32> %156 to <4 x i64>
  %158 = and <4 x i64> %154, splat (i64 4294967295)
  %159 = and <4 x i64> %157, splat (i64 4294967295)
  %160 = mul nuw <4 x i64> %159, %158
  %161 = shufflevector <4 x i64> %153, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %162 = add <4 x i64> %139, %161
  %163 = add <4 x i64> %162, %160
  %164 = getelementptr inbounds nuw i8, ptr %104, i64 160
  %165 = load <4 x i64>, ptr %164, align 1
  %166 = xor <4 x i64> %49, %165
  %167 = bitcast <4 x i64> %166 to <8 x i32>
  %168 = shufflevector <8 x i32> %167, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %169 = bitcast <8 x i32> %168 to <4 x i64>
  %170 = and <4 x i64> %166, splat (i64 4294967295)
  %171 = and <4 x i64> %169, splat (i64 4294967295)
  %172 = mul nuw <4 x i64> %171, %170
  %173 = shufflevector <4 x i64> %165, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %174 = add <4 x i64> %151, %173
  %175 = add <4 x i64> %174, %172
  %176 = getelementptr inbounds nuw i8, ptr %104, i64 192
  %177 = load <4 x i64>, ptr %176, align 1
  %178 = xor <4 x i64> %51, %177
  %179 = bitcast <4 x i64> %178 to <8 x i32>
  %180 = shufflevector <8 x i32> %179, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %181 = bitcast <8 x i32> %180 to <4 x i64>
  %182 = and <4 x i64> %178, splat (i64 4294967295)
  %183 = and <4 x i64> %181, splat (i64 4294967295)
  %184 = mul nuw <4 x i64> %183, %182
  %185 = shufflevector <4 x i64> %177, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %186 = add <4 x i64> %163, %185
  %187 = add <4 x i64> %186, %184
  %188 = getelementptr inbounds nuw i8, ptr %104, i64 224
  %189 = load <4 x i64>, ptr %188, align 1
  %190 = xor <4 x i64> %53, %189
  %191 = bitcast <4 x i64> %190 to <8 x i32>
  %192 = shufflevector <8 x i32> %191, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %193 = bitcast <8 x i32> %192 to <4 x i64>
  %194 = and <4 x i64> %190, splat (i64 4294967295)
  %195 = and <4 x i64> %193, splat (i64 4294967295)
  %196 = mul nuw <4 x i64> %195, %194
  %197 = shufflevector <4 x i64> %189, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %198 = add <4 x i64> %175, %197
  %199 = add <4 x i64> %198, %196
  %200 = getelementptr inbounds nuw i8, ptr %104, i64 256
  %201 = load <4 x i64>, ptr %200, align 1
  %202 = xor <4 x i64> %54, %201
  %203 = bitcast <4 x i64> %202 to <8 x i32>
  %204 = shufflevector <8 x i32> %203, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %205 = bitcast <8 x i32> %204 to <4 x i64>
  %206 = and <4 x i64> %202, splat (i64 4294967295)
  %207 = and <4 x i64> %205, splat (i64 4294967295)
  %208 = mul nuw <4 x i64> %207, %206
  %209 = shufflevector <4 x i64> %201, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %210 = add <4 x i64> %187, %209
  %211 = add <4 x i64> %210, %208
  %212 = getelementptr inbounds nuw i8, ptr %104, i64 288
  %213 = load <4 x i64>, ptr %212, align 1
  %214 = xor <4 x i64> %56, %213
  %215 = bitcast <4 x i64> %214 to <8 x i32>
  %216 = shufflevector <8 x i32> %215, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %217 = bitcast <8 x i32> %216 to <4 x i64>
  %218 = and <4 x i64> %214, splat (i64 4294967295)
  %219 = and <4 x i64> %217, splat (i64 4294967295)
  %220 = mul nuw <4 x i64> %219, %218
  %221 = shufflevector <4 x i64> %213, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %222 = add <4 x i64> %199, %221
  %223 = add <4 x i64> %222, %220
  %224 = getelementptr inbounds nuw i8, ptr %104, i64 320
  %225 = load <4 x i64>, ptr %224, align 1
  %226 = xor <4 x i64> %58, %225
  %227 = bitcast <4 x i64> %226 to <8 x i32>
  %228 = shufflevector <8 x i32> %227, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %229 = bitcast <8 x i32> %228 to <4 x i64>
  %230 = and <4 x i64> %226, splat (i64 4294967295)
  %231 = and <4 x i64> %229, splat (i64 4294967295)
  %232 = mul nuw <4 x i64> %231, %230
  %233 = shufflevector <4 x i64> %225, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %234 = add <4 x i64> %211, %233
  %235 = add <4 x i64> %234, %232
  %236 = getelementptr inbounds nuw i8, ptr %104, i64 352
  %237 = load <4 x i64>, ptr %236, align 1
  %238 = xor <4 x i64> %60, %237
  %239 = bitcast <4 x i64> %238 to <8 x i32>
  %240 = shufflevector <8 x i32> %239, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %241 = bitcast <8 x i32> %240 to <4 x i64>
  %242 = and <4 x i64> %238, splat (i64 4294967295)
  %243 = and <4 x i64> %241, splat (i64 4294967295)
  %244 = mul nuw <4 x i64> %243, %242
  %245 = shufflevector <4 x i64> %237, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %246 = add <4 x i64> %223, %245
  %247 = add <4 x i64> %246, %244
  %248 = getelementptr inbounds nuw i8, ptr %104, i64 384
  %249 = load <4 x i64>, ptr %248, align 1
  %250 = xor <4 x i64> %61, %249
  %251 = bitcast <4 x i64> %250 to <8 x i32>
  %252 = shufflevector <8 x i32> %251, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %253 = bitcast <8 x i32> %252 to <4 x i64>
  %254 = and <4 x i64> %250, splat (i64 4294967295)
  %255 = and <4 x i64> %253, splat (i64 4294967295)
  %256 = mul nuw <4 x i64> %255, %254
  %257 = shufflevector <4 x i64> %249, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %258 = add <4 x i64> %235, %257
  %259 = add <4 x i64> %258, %256
  %260 = getelementptr inbounds nuw i8, ptr %104, i64 416
  %261 = load <4 x i64>, ptr %260, align 1
  %262 = xor <4 x i64> %63, %261
  %263 = bitcast <4 x i64> %262 to <8 x i32>
  %264 = shufflevector <8 x i32> %263, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %265 = bitcast <8 x i32> %264 to <4 x i64>
  %266 = and <4 x i64> %262, splat (i64 4294967295)
  %267 = and <4 x i64> %265, splat (i64 4294967295)
  %268 = mul nuw <4 x i64> %267, %266
  %269 = shufflevector <4 x i64> %261, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %270 = add <4 x i64> %247, %269
  %271 = add <4 x i64> %270, %268
  %272 = getelementptr inbounds nuw i8, ptr %104, i64 448
  %273 = load <4 x i64>, ptr %272, align 1
  %274 = xor <4 x i64> %65, %273
  %275 = bitcast <4 x i64> %274 to <8 x i32>
  %276 = shufflevector <8 x i32> %275, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %277 = bitcast <8 x i32> %276 to <4 x i64>
  %278 = and <4 x i64> %274, splat (i64 4294967295)
  %279 = and <4 x i64> %277, splat (i64 4294967295)
  %280 = mul nuw <4 x i64> %279, %278
  %281 = shufflevector <4 x i64> %273, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %282 = add <4 x i64> %259, %281
  %283 = add <4 x i64> %282, %280
  %284 = getelementptr inbounds nuw i8, ptr %104, i64 480
  %285 = load <4 x i64>, ptr %284, align 1
  %286 = xor <4 x i64> %67, %285
  %287 = bitcast <4 x i64> %286 to <8 x i32>
  %288 = shufflevector <8 x i32> %287, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %289 = bitcast <8 x i32> %288 to <4 x i64>
  %290 = and <4 x i64> %286, splat (i64 4294967295)
  %291 = and <4 x i64> %289, splat (i64 4294967295)
  %292 = mul nuw <4 x i64> %291, %290
  %293 = shufflevector <4 x i64> %285, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %294 = add <4 x i64> %271, %293
  %295 = add <4 x i64> %294, %292
  %296 = getelementptr inbounds nuw i8, ptr %104, i64 512
  %297 = load <4 x i64>, ptr %296, align 1
  %298 = xor <4 x i64> %68, %297
  %299 = bitcast <4 x i64> %298 to <8 x i32>
  %300 = shufflevector <8 x i32> %299, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %301 = bitcast <8 x i32> %300 to <4 x i64>
  %302 = and <4 x i64> %298, splat (i64 4294967295)
  %303 = and <4 x i64> %301, splat (i64 4294967295)
  %304 = mul nuw <4 x i64> %303, %302
  %305 = shufflevector <4 x i64> %297, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %306 = add <4 x i64> %283, %305
  %307 = add <4 x i64> %306, %304
  %308 = getelementptr inbounds nuw i8, ptr %104, i64 544
  %309 = load <4 x i64>, ptr %308, align 1
  %310 = xor <4 x i64> %70, %309
  %311 = bitcast <4 x i64> %310 to <8 x i32>
  %312 = shufflevector <8 x i32> %311, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %313 = bitcast <8 x i32> %312 to <4 x i64>
  %314 = and <4 x i64> %310, splat (i64 4294967295)
  %315 = and <4 x i64> %313, splat (i64 4294967295)
  %316 = mul nuw <4 x i64> %315, %314
  %317 = shufflevector <4 x i64> %309, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %318 = add <4 x i64> %295, %317
  %319 = add <4 x i64> %318, %316
  %320 = getelementptr inbounds nuw i8, ptr %104, i64 576
  %321 = load <4 x i64>, ptr %320, align 1
  %322 = xor <4 x i64> %72, %321
  %323 = bitcast <4 x i64> %322 to <8 x i32>
  %324 = shufflevector <8 x i32> %323, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %325 = bitcast <8 x i32> %324 to <4 x i64>
  %326 = and <4 x i64> %322, splat (i64 4294967295)
  %327 = and <4 x i64> %325, splat (i64 4294967295)
  %328 = mul nuw <4 x i64> %327, %326
  %329 = shufflevector <4 x i64> %321, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %330 = add <4 x i64> %307, %329
  %331 = add <4 x i64> %330, %328
  %332 = getelementptr inbounds nuw i8, ptr %104, i64 608
  %333 = load <4 x i64>, ptr %332, align 1
  %334 = xor <4 x i64> %74, %333
  %335 = bitcast <4 x i64> %334 to <8 x i32>
  %336 = shufflevector <8 x i32> %335, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %337 = bitcast <8 x i32> %336 to <4 x i64>
  %338 = and <4 x i64> %334, splat (i64 4294967295)
  %339 = and <4 x i64> %337, splat (i64 4294967295)
  %340 = mul nuw <4 x i64> %339, %338
  %341 = shufflevector <4 x i64> %333, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %342 = add <4 x i64> %319, %341
  %343 = add <4 x i64> %342, %340
  %344 = getelementptr inbounds nuw i8, ptr %104, i64 640
  %345 = load <4 x i64>, ptr %344, align 1
  %346 = xor <4 x i64> %75, %345
  %347 = bitcast <4 x i64> %346 to <8 x i32>
  %348 = shufflevector <8 x i32> %347, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %349 = bitcast <8 x i32> %348 to <4 x i64>
  %350 = and <4 x i64> %346, splat (i64 4294967295)
  %351 = and <4 x i64> %349, splat (i64 4294967295)
  %352 = mul nuw <4 x i64> %351, %350
  %353 = shufflevector <4 x i64> %345, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %354 = add <4 x i64> %331, %353
  %355 = add <4 x i64> %354, %352
  %356 = getelementptr inbounds nuw i8, ptr %104, i64 672
  %357 = load <4 x i64>, ptr %356, align 1
  %358 = xor <4 x i64> %77, %357
  %359 = bitcast <4 x i64> %358 to <8 x i32>
  %360 = shufflevector <8 x i32> %359, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %361 = bitcast <8 x i32> %360 to <4 x i64>
  %362 = and <4 x i64> %358, splat (i64 4294967295)
  %363 = and <4 x i64> %361, splat (i64 4294967295)
  %364 = mul nuw <4 x i64> %363, %362
  %365 = shufflevector <4 x i64> %357, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %366 = add <4 x i64> %343, %365
  %367 = add <4 x i64> %366, %364
  %368 = getelementptr inbounds nuw i8, ptr %104, i64 704
  %369 = load <4 x i64>, ptr %368, align 1
  %370 = xor <4 x i64> %79, %369
  %371 = bitcast <4 x i64> %370 to <8 x i32>
  %372 = shufflevector <8 x i32> %371, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %373 = bitcast <8 x i32> %372 to <4 x i64>
  %374 = and <4 x i64> %370, splat (i64 4294967295)
  %375 = and <4 x i64> %373, splat (i64 4294967295)
  %376 = mul nuw <4 x i64> %375, %374
  %377 = shufflevector <4 x i64> %369, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %378 = add <4 x i64> %355, %377
  %379 = add <4 x i64> %378, %376
  %380 = getelementptr inbounds nuw i8, ptr %104, i64 736
  %381 = load <4 x i64>, ptr %380, align 1
  %382 = xor <4 x i64> %81, %381
  %383 = bitcast <4 x i64> %382 to <8 x i32>
  %384 = shufflevector <8 x i32> %383, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %385 = bitcast <8 x i32> %384 to <4 x i64>
  %386 = and <4 x i64> %382, splat (i64 4294967295)
  %387 = and <4 x i64> %385, splat (i64 4294967295)
  %388 = mul nuw <4 x i64> %387, %386
  %389 = shufflevector <4 x i64> %381, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %390 = add <4 x i64> %367, %389
  %391 = add <4 x i64> %390, %388
  %392 = getelementptr inbounds nuw i8, ptr %104, i64 768
  %393 = load <4 x i64>, ptr %392, align 1
  %394 = xor <4 x i64> %82, %393
  %395 = bitcast <4 x i64> %394 to <8 x i32>
  %396 = shufflevector <8 x i32> %395, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %397 = bitcast <8 x i32> %396 to <4 x i64>
  %398 = and <4 x i64> %394, splat (i64 4294967295)
  %399 = and <4 x i64> %397, splat (i64 4294967295)
  %400 = mul nuw <4 x i64> %399, %398
  %401 = shufflevector <4 x i64> %393, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %402 = add <4 x i64> %379, %401
  %403 = add <4 x i64> %402, %400
  %404 = getelementptr inbounds nuw i8, ptr %104, i64 800
  %405 = load <4 x i64>, ptr %404, align 1
  %406 = xor <4 x i64> %84, %405
  %407 = bitcast <4 x i64> %406 to <8 x i32>
  %408 = shufflevector <8 x i32> %407, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %409 = bitcast <8 x i32> %408 to <4 x i64>
  %410 = and <4 x i64> %406, splat (i64 4294967295)
  %411 = and <4 x i64> %409, splat (i64 4294967295)
  %412 = mul nuw <4 x i64> %411, %410
  %413 = shufflevector <4 x i64> %405, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %414 = add <4 x i64> %391, %413
  %415 = add <4 x i64> %414, %412
  %416 = getelementptr inbounds nuw i8, ptr %104, i64 832
  %417 = load <4 x i64>, ptr %416, align 1
  %418 = xor <4 x i64> %86, %417
  %419 = bitcast <4 x i64> %418 to <8 x i32>
  %420 = shufflevector <8 x i32> %419, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %421 = bitcast <8 x i32> %420 to <4 x i64>
  %422 = and <4 x i64> %418, splat (i64 4294967295)
  %423 = and <4 x i64> %421, splat (i64 4294967295)
  %424 = mul nuw <4 x i64> %423, %422
  %425 = shufflevector <4 x i64> %417, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %426 = add <4 x i64> %403, %425
  %427 = add <4 x i64> %426, %424
  %428 = getelementptr inbounds nuw i8, ptr %104, i64 864
  %429 = load <4 x i64>, ptr %428, align 1
  %430 = xor <4 x i64> %88, %429
  %431 = bitcast <4 x i64> %430 to <8 x i32>
  %432 = shufflevector <8 x i32> %431, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %433 = bitcast <8 x i32> %432 to <4 x i64>
  %434 = and <4 x i64> %430, splat (i64 4294967295)
  %435 = and <4 x i64> %433, splat (i64 4294967295)
  %436 = mul nuw <4 x i64> %435, %434
  %437 = shufflevector <4 x i64> %429, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %438 = add <4 x i64> %415, %437
  %439 = add <4 x i64> %438, %436
  %440 = getelementptr inbounds nuw i8, ptr %104, i64 896
  %441 = load <4 x i64>, ptr %440, align 1
  %442 = xor <4 x i64> %89, %441
  %443 = bitcast <4 x i64> %442 to <8 x i32>
  %444 = shufflevector <8 x i32> %443, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %445 = bitcast <8 x i32> %444 to <4 x i64>
  %446 = and <4 x i64> %442, splat (i64 4294967295)
  %447 = and <4 x i64> %445, splat (i64 4294967295)
  %448 = mul nuw <4 x i64> %447, %446
  %449 = shufflevector <4 x i64> %441, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %450 = add <4 x i64> %427, %449
  %451 = add <4 x i64> %450, %448
  %452 = getelementptr inbounds nuw i8, ptr %104, i64 928
  %453 = load <4 x i64>, ptr %452, align 1
  %454 = xor <4 x i64> %91, %453
  %455 = bitcast <4 x i64> %454 to <8 x i32>
  %456 = shufflevector <8 x i32> %455, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %457 = bitcast <8 x i32> %456 to <4 x i64>
  %458 = and <4 x i64> %454, splat (i64 4294967295)
  %459 = and <4 x i64> %457, splat (i64 4294967295)
  %460 = mul nuw <4 x i64> %459, %458
  %461 = shufflevector <4 x i64> %453, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %462 = add <4 x i64> %439, %461
  %463 = add <4 x i64> %462, %460
  %464 = getelementptr inbounds nuw i8, ptr %104, i64 960
  %465 = load <4 x i64>, ptr %464, align 1
  %466 = xor <4 x i64> %93, %465
  %467 = bitcast <4 x i64> %466 to <8 x i32>
  %468 = shufflevector <8 x i32> %467, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %469 = bitcast <8 x i32> %468 to <4 x i64>
  %470 = and <4 x i64> %466, splat (i64 4294967295)
  %471 = and <4 x i64> %469, splat (i64 4294967295)
  %472 = mul nuw <4 x i64> %471, %470
  %473 = shufflevector <4 x i64> %465, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %474 = add <4 x i64> %451, %473
  %475 = add <4 x i64> %474, %472
  %476 = getelementptr inbounds nuw i8, ptr %104, i64 992
  %477 = load <4 x i64>, ptr %476, align 1
  %478 = xor <4 x i64> %95, %477
  %479 = bitcast <4 x i64> %478 to <8 x i32>
  %480 = shufflevector <8 x i32> %479, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %481 = bitcast <8 x i32> %480 to <4 x i64>
  %482 = and <4 x i64> %478, splat (i64 4294967295)
  %483 = and <4 x i64> %481, splat (i64 4294967295)
  %484 = mul nuw <4 x i64> %483, %482
  %485 = shufflevector <4 x i64> %477, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %486 = add <4 x i64> %463, %485
  %487 = add <4 x i64> %486, %484
  %488 = lshr <4 x i64> %475, splat (i64 47)
  %489 = xor <4 x i64> %96, %488
  %490 = xor <4 x i64> %489, %475
  %491 = and <4 x i64> %490, splat (i64 4294967295)
  %492 = mul nuw <4 x i64> %491, splat (i64 2654435761)
  %493 = bitcast <4 x i64> %490 to <8 x i32>
  %494 = shufflevector <8 x i32> %493, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %495 = bitcast <8 x i32> %494 to <4 x i64>
  %496 = mul <4 x i64> %495, splat (i64 -7046029290881679360)
  %497 = add <4 x i64> %496, %492
  %498 = lshr <4 x i64> %487, splat (i64 47)
  %499 = xor <4 x i64> %98, %498
  %500 = xor <4 x i64> %499, %487
  %501 = and <4 x i64> %500, splat (i64 4294967295)
  %502 = mul nuw <4 x i64> %501, splat (i64 2654435761)
  %503 = bitcast <4 x i64> %500 to <8 x i32>
  %504 = shufflevector <8 x i32> %503, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %505 = bitcast <8 x i32> %504 to <4 x i64>
  %506 = mul <4 x i64> %505, splat (i64 -7046029290881679360)
  %507 = add <4 x i64> %506, %502
  %508 = add nuw nsw i64 %102, 1
  %509 = icmp eq i64 %508, %32
  br i1 %509, label %510, label %99

510:                                              ; preds = %99, %6
  %511 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %507, %99 ]
  %512 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %497, %99 ]
  %513 = and i64 %1, -1024
  %514 = lshr i64 %1, 6
  %515 = and i64 %514, 15
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 %513
  %517 = icmp eq i64 %515, 0
  br i1 %517, label %554, label %518

518:                                              ; preds = %510, %518
  %519 = phi <4 x i64> [ %551, %518 ], [ %511, %510 ]
  %520 = phi <4 x i64> [ %537, %518 ], [ %512, %510 ]
  %521 = phi i64 [ %552, %518 ], [ 0, %510 ]
  %522 = shl i64 %521, 6
  %523 = getelementptr inbounds nuw i8, ptr %516, i64 %522
  %524 = shl i64 %521, 3
  %525 = getelementptr inbounds nuw i8, ptr %4, i64 %524
  %526 = load <4 x i64>, ptr %523, align 1
  %527 = load <4 x i64>, ptr %525, align 8
  %528 = xor <4 x i64> %527, %526
  %529 = bitcast <4 x i64> %528 to <8 x i32>
  %530 = shufflevector <8 x i32> %529, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %531 = bitcast <8 x i32> %530 to <4 x i64>
  %532 = and <4 x i64> %528, splat (i64 4294967295)
  %533 = and <4 x i64> %531, splat (i64 4294967295)
  %534 = mul nuw <4 x i64> %533, %532
  %535 = shufflevector <4 x i64> %526, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %536 = add <4 x i64> %520, %535
  %537 = add <4 x i64> %536, %534
  %538 = getelementptr inbounds nuw i8, ptr %523, i64 32
  %539 = load <4 x i64>, ptr %538, align 1
  %540 = getelementptr inbounds nuw i8, ptr %525, i64 32
  %541 = load <4 x i64>, ptr %540, align 8
  %542 = xor <4 x i64> %541, %539
  %543 = bitcast <4 x i64> %542 to <8 x i32>
  %544 = shufflevector <8 x i32> %543, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %545 = bitcast <8 x i32> %544 to <4 x i64>
  %546 = and <4 x i64> %542, splat (i64 4294967295)
  %547 = and <4 x i64> %545, splat (i64 4294967295)
  %548 = mul nuw <4 x i64> %547, %546
  %549 = shufflevector <4 x i64> %539, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %550 = add <4 x i64> %519, %549
  %551 = add <4 x i64> %550, %548
  %552 = add nuw nsw i64 %521, 1
  %553 = icmp eq i64 %552, %515
  br i1 %553, label %554, label %518

554:                                              ; preds = %518, %510
  %555 = phi <4 x i64> [ %511, %510 ], [ %551, %518 ]
  %556 = phi <4 x i64> [ %512, %510 ], [ %537, %518 ]
  %557 = and i64 %1, 63
  %558 = icmp eq i64 %557, 0
  br i1 %558, label %559, label %566

559:                                              ; preds = %554
  %560 = getelementptr inbounds nuw i8, ptr %4, i64 125
  %561 = load i64, ptr %560, align 1
  %562 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %563 = load i64, ptr %562, align 1
  %564 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %565 = load i64, ptr %564, align 1
  br label %603

566:                                              ; preds = %554
  %567 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %568 = getelementptr inbounds i8, ptr %567, i64 -64
  %569 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %570 = load <4 x i64>, ptr %568, align 1
  %571 = load <4 x i64>, ptr %569, align 1
  %572 = xor <4 x i64> %571, %570
  %573 = bitcast <4 x i64> %572 to <8 x i32>
  %574 = shufflevector <8 x i32> %573, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %575 = bitcast <8 x i32> %574 to <4 x i64>
  %576 = and <4 x i64> %572, splat (i64 4294967295)
  %577 = and <4 x i64> %575, splat (i64 4294967295)
  %578 = mul nuw <4 x i64> %577, %576
  %579 = shufflevector <4 x i64> %570, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %580 = add <4 x i64> %556, %579
  %581 = add <4 x i64> %580, %578
  %582 = getelementptr inbounds i8, ptr %567, i64 -32
  %583 = load <4 x i64>, ptr %582, align 1
  %584 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %585 = load <4 x i64>, ptr %584, align 1
  %586 = xor <4 x i64> %585, %583
  %587 = bitcast <4 x i64> %586 to <8 x i32>
  %588 = shufflevector <8 x i32> %587, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %589 = bitcast <8 x i32> %588 to <4 x i64>
  %590 = and <4 x i64> %586, splat (i64 4294967295)
  %591 = and <4 x i64> %589, splat (i64 4294967295)
  %592 = mul nuw <4 x i64> %591, %590
  %593 = shufflevector <4 x i64> %583, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %594 = add <4 x i64> %555, %593
  %595 = add <4 x i64> %594, %592
  %596 = bitcast <4 x i64> %571 to i256
  %597 = lshr i256 %596, 32
  %598 = trunc i256 %597 to i64
  %599 = lshr i256 %596, 96
  %600 = trunc i256 %599 to i64
  %601 = lshr i256 %596, 160
  %602 = trunc i256 %601 to i64
  br label %603

603:                                              ; preds = %559, %566
  %604 = phi i64 [ %565, %559 ], [ %602, %566 ]
  %605 = phi i64 [ %563, %559 ], [ %600, %566 ]
  %606 = phi i64 [ %561, %559 ], [ %598, %566 ]
  %607 = phi <4 x i64> [ %555, %559 ], [ %595, %566 ]
  %608 = phi <4 x i64> [ %556, %559 ], [ %581, %566 ]
  %609 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %610 = mul i64 %1, -7046029288634856825
  %611 = extractelement <4 x i64> %608, i64 0
  %612 = load i64, ptr %609, align 1
  %613 = xor i64 %612, %611
  %614 = extractelement <4 x i64> %608, i64 1
  %615 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %616 = load i64, ptr %615, align 1
  %617 = xor i64 %616, %614
  %618 = zext i64 %613 to i128
  %619 = zext i64 %617 to i128
  %620 = mul nuw i128 %619, %618
  %621 = lshr i128 %620, 64
  %622 = xor i128 %621, %620
  %623 = trunc i128 %622 to i64
  %624 = add i64 %610, %623
  %625 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %626 = extractelement <4 x i64> %608, i64 2
  %627 = load i64, ptr %625, align 1
  %628 = xor i64 %627, %626
  %629 = extractelement <4 x i64> %608, i64 3
  %630 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %631 = load i64, ptr %630, align 1
  %632 = xor i64 %631, %629
  %633 = zext i64 %628 to i128
  %634 = zext i64 %632 to i128
  %635 = mul nuw i128 %634, %633
  %636 = lshr i128 %635, 64
  %637 = xor i128 %636, %635
  %638 = trunc i128 %637 to i64
  %639 = add i64 %624, %638
  %640 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %641 = extractelement <4 x i64> %607, i64 0
  %642 = load i64, ptr %640, align 1
  %643 = xor i64 %642, %641
  %644 = extractelement <4 x i64> %607, i64 1
  %645 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %646 = load i64, ptr %645, align 1
  %647 = xor i64 %646, %644
  %648 = zext i64 %643 to i128
  %649 = zext i64 %647 to i128
  %650 = mul nuw i128 %649, %648
  %651 = lshr i128 %650, 64
  %652 = xor i128 %651, %650
  %653 = trunc i128 %652 to i64
  %654 = add i64 %639, %653
  %655 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %656 = extractelement <4 x i64> %607, i64 2
  %657 = load i64, ptr %655, align 1
  %658 = xor i64 %657, %656
  %659 = extractelement <4 x i64> %607, i64 3
  %660 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %661 = load i64, ptr %660, align 1
  %662 = xor i64 %661, %659
  %663 = zext i64 %658 to i128
  %664 = zext i64 %662 to i128
  %665 = mul nuw i128 %664, %663
  %666 = lshr i128 %665, 64
  %667 = xor i128 %666, %665
  %668 = trunc i128 %667 to i64
  %669 = add i64 %654, %668
  %670 = lshr i64 %669, 37
  %671 = xor i64 %670, %669
  %672 = mul i64 %671, 1609587929392839161
  %673 = lshr i64 %672, 32
  %674 = xor i64 %673, %672
  %675 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %676 = mul i64 %1, -4417276706812531889
  %677 = xor i64 %676, -1
  %678 = load i64, ptr %675, align 1
  %679 = xor i64 %678, %611
  %680 = xor i64 %606, %614
  %681 = zext i64 %679 to i128
  %682 = zext i64 %680 to i128
  %683 = mul nuw i128 %682, %681
  %684 = lshr i128 %683, 64
  %685 = xor i128 %684, %683
  %686 = trunc i128 %685 to i64
  %687 = add i64 %686, %677
  %688 = xor i64 %605, %626
  %689 = xor i64 %604, %629
  %690 = zext i64 %688 to i128
  %691 = zext i64 %689 to i128
  %692 = mul nuw i128 %691, %690
  %693 = lshr i128 %692, 64
  %694 = xor i128 %693, %692
  %695 = trunc i128 %694 to i64
  %696 = add i64 %687, %695
  %697 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %698 = load i64, ptr %697, align 1
  %699 = xor i64 %698, %641
  %700 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %701 = load i64, ptr %700, align 1
  %702 = xor i64 %701, %644
  %703 = zext i64 %699 to i128
  %704 = zext i64 %702 to i128
  %705 = mul nuw i128 %704, %703
  %706 = lshr i128 %705, 64
  %707 = xor i128 %706, %705
  %708 = trunc i128 %707 to i64
  %709 = add i64 %696, %708
  %710 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %711 = load i64, ptr %710, align 1
  %712 = xor i64 %711, %656
  %713 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %714 = load i64, ptr %713, align 1
  %715 = xor i64 %714, %659
  %716 = zext i64 %712 to i128
  %717 = zext i64 %715 to i128
  %718 = mul nuw i128 %717, %716
  %719 = lshr i128 %718, 64
  %720 = xor i128 %719, %718
  %721 = trunc i128 %720 to i64
  %722 = add i64 %709, %721
  %723 = lshr i64 %722, 37
  %724 = xor i64 %723, %722
  %725 = mul i64 %724, 1609587929392839161
  %726 = lshr i64 %725, 32
  %727 = xor i64 %726, %725
  %728 = insertvalue { i64, i64 } poison, i64 %674, 0
  %729 = insertvalue { i64, i64 } %728, i64 %727, 1
  br label %730

730:                                              ; preds = %603, %34
  %731 = phi { i64, i64 } [ %35, %34 ], [ %729, %603 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #28
  ret { i64, i64 } %731
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #18 {
  %4 = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  ret { i64, i64 } %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 512, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %5, align 32
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr @kSecret, ptr %6, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 128, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 16, ptr %8, align 4
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 512, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %7, align 32
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %1, ptr %8, align 64
  %9 = trunc i64 %2 to i32
  %10 = add i32 %9, -64
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 %10, ptr %11, align 4
  %12 = lshr i32 %10, 3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 %12, ptr %13, align 4
  %14 = icmp eq ptr %1, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = icmp ult i64 %2, 136
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %15, %5, %3
  %19 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %17, %15 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 320, i1 false)
  store <4 x i64> <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, ptr %7, align 32
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 128, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 16, ptr %11, align 4
  %12 = insertelement <4 x i64> poison, i64 %1, i64 0
  %13 = shufflevector <4 x i64> %12, <4 x i64> poison, <4 x i32> zeroinitializer
  %14 = add <4 x i64> %13, <i64 -4734510112055689544, i64 poison, i64 -2623469361688619810, i64 poison>
  %15 = sub <4 x i64> <i64 poison, i64 2066345149520216444, i64 poison, i64 2262974939099578482>, %13
  %16 = shufflevector <4 x i64> %14, <4 x i64> %15, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %16, ptr %5, align 1
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %18 = add <4 x i64> %13, <i64 8711581037947681227, i64 poison, i64 -8204357891075471176, i64 poison>
  %19 = sub <4 x i64> <i64 poison, i64 2410270004345854594, i64 poison, i64 5487137525590930912>, %13
  %20 = shufflevector <4 x i64> %18, <4 x i64> %19, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %20, ptr %17, align 1
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %22 = add <4 x i64> %13, <i64 -3818837453329782724, i64 poison, i64 5690594596133299313, i64 poison>
  %23 = sub <4 x i64> <i64 poison, i64 -6688317018830679928, i64 poison, i64 -2833645246901970632>, %13
  %24 = shufflevector <4 x i64> %22, <4 x i64> %23, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %24, ptr %21, align 1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %26 = add <4 x i64> %13, <i64 4554437623014685352, i64 poison, i64 3556072174620004746, i64 poison>
  %27 = sub <4 x i64> <i64 poison, i64 2111919702937427193, i64 poison, i64 7238261902898274248>, %13
  %28 = shufflevector <4 x i64> %26, <4 x i64> %27, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %28, ptr %25, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %30 = add <4 x i64> %13, <i64 -4329134394285701654, i64 poison, i64 5321830579834785047, i64 poison>
  %31 = sub <4 x i64> <i64 poison, i64 -1485321483350670907, i64 poison, i64 -7032137544937171245>, %13
  %32 = shufflevector <4 x i64> %30, <4 x i64> %31, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %32, ptr %29, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %34 = add <4 x i64> %13, <i64 -242834301215959509, i64 poison, i64 2883454493032893253, i64 poison>
  %35 = sub <4 x i64> <i64 poison, i64 -3588858202114426737, i64 poison, i64 9097354517224871855>, %13
  %36 = shufflevector <4 x i64> %34, <4 x i64> %35, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i64> %36, ptr %33, align 1
  store ptr %5, ptr %9, align 64
  br label %37

37:                                               ; preds = %2, %4
  %38 = phi i32 [ 0, %4 ], [ 1, %2 ]
  ret i32 %38
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #16 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %553, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %8 = load i64, ptr %7, align 32
  %9 = add i64 %8, %2
  store i64 %9, ptr %7, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %11 = load i32, ptr %10, align 8
  %12 = zext i32 %11 to i64
  %13 = add i64 %2, %12
  %14 = icmp ult i64 %13, 257
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %18 = trunc i64 %2 to i32
  %19 = load i32, ptr %10, align 8
  %20 = add i32 %19, %18
  br label %551

21:                                               ; preds = %5
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %280, label %23

23:                                               ; preds = %21
  %24 = sub i32 256, %11
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull readonly align 1 %1, i64 %25, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %33 = load ptr, ptr %32, align 64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, ptr %29, align 4
  %38 = sub i32 %31, %37
  %39 = zext i32 %38 to i64
  %40 = icmp ugt i32 %38, 4
  %41 = shl i32 %37, 3
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %33, i64 %42
  br i1 %40, label %162, label %44

44:                                               ; preds = %23
  %45 = icmp eq i32 %31, %37
  %46 = load <4 x i64>, ptr %0, align 32
  br i1 %45, label %47, label %50

47:                                               ; preds = %44
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %49 = load <4 x i64>, ptr %48, align 32
  br label %91

50:                                               ; preds = %44
  %51 = tail call i64 @llvm.umax.i64(i64 %39, i64 1)
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %53 = load <4 x i64>, ptr %52, align 32
  br label %54

54:                                               ; preds = %50, %54
  %55 = phi <4 x i64> [ %87, %54 ], [ %53, %50 ]
  %56 = phi <4 x i64> [ %73, %54 ], [ %46, %50 ]
  %57 = phi i64 [ %88, %54 ], [ 0, %50 ]
  %58 = shl i64 %57, 6
  %59 = getelementptr inbounds nuw i8, ptr %26, i64 %58
  %60 = shl i64 %57, 3
  %61 = getelementptr inbounds nuw i8, ptr %43, i64 %60
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %62 = load <4 x i64>, ptr %59, align 1
  %63 = load <4 x i64>, ptr %61, align 1
  %64 = xor <4 x i64> %63, %62
  %65 = bitcast <4 x i64> %64 to <8 x i32>
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = and <4 x i64> %64, splat (i64 4294967295)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, %68
  %71 = shufflevector <4 x i64> %62, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %72 = add <4 x i64> %56, %71
  %73 = add <4 x i64> %72, %70
  %74 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %75 = load <4 x i64>, ptr %74, align 1
  %76 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %77 = load <4 x i64>, ptr %76, align 1
  %78 = xor <4 x i64> %77, %75
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = shufflevector <4 x i64> %75, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %86 = add <4 x i64> %55, %85
  %87 = add <4 x i64> %86, %84
  %88 = add nuw nsw i64 %57, 1
  %89 = icmp eq i64 %88, %51
  br i1 %89, label %90, label %54

90:                                               ; preds = %54
  store <4 x i64> %73, ptr %0, align 32
  store <4 x i64> %87, ptr %52, align 32
  br label %91

91:                                               ; preds = %90, %47
  %92 = phi <4 x i64> [ %49, %47 ], [ %87, %90 ]
  %93 = phi <4 x i64> [ %46, %47 ], [ %73, %90 ]
  %94 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %95 = lshr <4 x i64> %93, splat (i64 47)
  %96 = load <4 x i64>, ptr %94, align 1
  %97 = xor <4 x i64> %96, %95
  %98 = xor <4 x i64> %97, %93
  %99 = and <4 x i64> %98, splat (i64 4294967295)
  %100 = mul nuw <4 x i64> %99, splat (i64 2654435761)
  %101 = bitcast <4 x i64> %98 to <8 x i32>
  %102 = shufflevector <8 x i32> %101, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %103 = bitcast <8 x i32> %102 to <4 x i64>
  %104 = mul <4 x i64> %103, splat (i64 -7046029290881679360)
  %105 = add <4 x i64> %104, %100
  store <4 x i64> %105, ptr %0, align 32
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %107 = lshr <4 x i64> %92, splat (i64 47)
  %108 = getelementptr inbounds nuw i8, ptr %94, i64 32
  %109 = load <4 x i64>, ptr %108, align 1
  %110 = xor <4 x i64> %109, %107
  %111 = xor <4 x i64> %110, %92
  %112 = and <4 x i64> %111, splat (i64 4294967295)
  %113 = mul nuw <4 x i64> %112, splat (i64 2654435761)
  %114 = bitcast <4 x i64> %111 to <8 x i32>
  %115 = shufflevector <8 x i32> %114, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %116 = bitcast <8 x i32> %115 to <4 x i64>
  %117 = mul <4 x i64> %116, splat (i64 -7046029290881679360)
  %118 = add <4 x i64> %117, %113
  store <4 x i64> %118, ptr %106, align 32
  %119 = shl nuw nsw i64 %39, 6
  %120 = getelementptr inbounds nuw i8, ptr %26, i64 %119
  %121 = sub nsw i64 4, %39
  %122 = icmp eq i32 %38, 4
  br i1 %122, label %160, label %123

123:                                              ; preds = %91, %123
  %124 = phi <4 x i64> [ %156, %123 ], [ %118, %91 ]
  %125 = phi <4 x i64> [ %142, %123 ], [ %105, %91 ]
  %126 = phi i64 [ %157, %123 ], [ 0, %91 ]
  %127 = shl i64 %126, 6
  %128 = getelementptr inbounds nuw i8, ptr %120, i64 %127
  %129 = shl i64 %126, 3
  %130 = getelementptr inbounds nuw i8, ptr %33, i64 %129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %131 = load <4 x i64>, ptr %128, align 1
  %132 = load <4 x i64>, ptr %130, align 1
  %133 = xor <4 x i64> %132, %131
  %134 = bitcast <4 x i64> %133 to <8 x i32>
  %135 = shufflevector <8 x i32> %134, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %136 = bitcast <8 x i32> %135 to <4 x i64>
  %137 = and <4 x i64> %133, splat (i64 4294967295)
  %138 = and <4 x i64> %136, splat (i64 4294967295)
  %139 = mul nuw <4 x i64> %138, %137
  %140 = shufflevector <4 x i64> %131, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %141 = add <4 x i64> %125, %140
  %142 = add <4 x i64> %141, %139
  %143 = getelementptr inbounds nuw i8, ptr %128, i64 32
  %144 = load <4 x i64>, ptr %143, align 1
  %145 = getelementptr inbounds nuw i8, ptr %130, i64 32
  %146 = load <4 x i64>, ptr %145, align 1
  %147 = xor <4 x i64> %146, %144
  %148 = bitcast <4 x i64> %147 to <8 x i32>
  %149 = shufflevector <8 x i32> %148, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %150 = bitcast <8 x i32> %149 to <4 x i64>
  %151 = and <4 x i64> %147, splat (i64 4294967295)
  %152 = and <4 x i64> %150, splat (i64 4294967295)
  %153 = mul nuw <4 x i64> %152, %151
  %154 = shufflevector <4 x i64> %144, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %155 = add <4 x i64> %124, %154
  %156 = add <4 x i64> %155, %153
  %157 = add nuw i64 %126, 1
  %158 = icmp eq i64 %157, %121
  br i1 %158, label %159, label %123

159:                                              ; preds = %123
  store <4 x i64> %142, ptr %0, align 32
  store <4 x i64> %156, ptr %106, align 32
  br label %160

160:                                              ; preds = %159, %91
  %161 = trunc nuw nsw i64 %121 to i32
  br label %278

162:                                              ; preds = %23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %163 = load <4 x i64>, ptr %26, align 1
  %164 = load <4 x i64>, ptr %43, align 1
  %165 = xor <4 x i64> %164, %163
  %166 = bitcast <4 x i64> %165 to <8 x i32>
  %167 = shufflevector <8 x i32> %166, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %168 = bitcast <8 x i32> %167 to <4 x i64>
  %169 = and <4 x i64> %165, splat (i64 4294967295)
  %170 = and <4 x i64> %168, splat (i64 4294967295)
  %171 = mul nuw <4 x i64> %170, %169
  %172 = shufflevector <4 x i64> %163, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %173 = load <4 x i64>, ptr %0, align 32
  %174 = add <4 x i64> %173, %172
  %175 = add <4 x i64> %174, %171
  store <4 x i64> %175, ptr %0, align 32
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %177 = load <4 x i64>, ptr %176, align 1
  %178 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %179 = load <4 x i64>, ptr %178, align 1
  %180 = xor <4 x i64> %179, %177
  %181 = bitcast <4 x i64> %180 to <8 x i32>
  %182 = shufflevector <8 x i32> %181, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %183 = bitcast <8 x i32> %182 to <4 x i64>
  %184 = and <4 x i64> %180, splat (i64 4294967295)
  %185 = and <4 x i64> %183, splat (i64 4294967295)
  %186 = mul nuw <4 x i64> %185, %184
  %187 = shufflevector <4 x i64> %177, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %189 = load <4 x i64>, ptr %188, align 32
  %190 = add <4 x i64> %189, %187
  %191 = add <4 x i64> %190, %186
  store <4 x i64> %191, ptr %188, align 32
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %193 = getelementptr inbounds nuw i8, ptr %43, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %194 = load <4 x i64>, ptr %192, align 1
  %195 = load <4 x i64>, ptr %193, align 1
  %196 = xor <4 x i64> %195, %194
  %197 = bitcast <4 x i64> %196 to <8 x i32>
  %198 = shufflevector <8 x i32> %197, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %199 = bitcast <8 x i32> %198 to <4 x i64>
  %200 = and <4 x i64> %196, splat (i64 4294967295)
  %201 = and <4 x i64> %199, splat (i64 4294967295)
  %202 = mul nuw <4 x i64> %201, %200
  %203 = shufflevector <4 x i64> %194, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %204 = add <4 x i64> %175, %203
  %205 = add <4 x i64> %204, %202
  store <4 x i64> %205, ptr %0, align 32
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %207 = load <4 x i64>, ptr %206, align 1
  %208 = getelementptr inbounds nuw i8, ptr %43, i64 40
  %209 = load <4 x i64>, ptr %208, align 1
  %210 = xor <4 x i64> %209, %207
  %211 = bitcast <4 x i64> %210 to <8 x i32>
  %212 = shufflevector <8 x i32> %211, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %213 = bitcast <8 x i32> %212 to <4 x i64>
  %214 = and <4 x i64> %210, splat (i64 4294967295)
  %215 = and <4 x i64> %213, splat (i64 4294967295)
  %216 = mul nuw <4 x i64> %215, %214
  %217 = shufflevector <4 x i64> %207, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %218 = add <4 x i64> %191, %217
  %219 = add <4 x i64> %218, %216
  store <4 x i64> %219, ptr %188, align 32
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %221 = getelementptr inbounds nuw i8, ptr %43, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %222 = load <4 x i64>, ptr %220, align 1
  %223 = load <4 x i64>, ptr %221, align 1
  %224 = xor <4 x i64> %223, %222
  %225 = bitcast <4 x i64> %224 to <8 x i32>
  %226 = shufflevector <8 x i32> %225, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %227 = bitcast <8 x i32> %226 to <4 x i64>
  %228 = and <4 x i64> %224, splat (i64 4294967295)
  %229 = and <4 x i64> %227, splat (i64 4294967295)
  %230 = mul nuw <4 x i64> %229, %228
  %231 = shufflevector <4 x i64> %222, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %232 = add <4 x i64> %205, %231
  %233 = add <4 x i64> %232, %230
  store <4 x i64> %233, ptr %0, align 32
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %235 = load <4 x i64>, ptr %234, align 1
  %236 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %237 = load <4 x i64>, ptr %236, align 1
  %238 = xor <4 x i64> %237, %235
  %239 = bitcast <4 x i64> %238 to <8 x i32>
  %240 = shufflevector <8 x i32> %239, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %241 = bitcast <8 x i32> %240 to <4 x i64>
  %242 = and <4 x i64> %238, splat (i64 4294967295)
  %243 = and <4 x i64> %241, splat (i64 4294967295)
  %244 = mul nuw <4 x i64> %243, %242
  %245 = shufflevector <4 x i64> %235, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %246 = add <4 x i64> %219, %245
  %247 = add <4 x i64> %246, %244
  store <4 x i64> %247, ptr %188, align 32
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %249 = getelementptr inbounds nuw i8, ptr %43, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %250 = load <4 x i64>, ptr %248, align 1
  %251 = load <4 x i64>, ptr %249, align 1
  %252 = xor <4 x i64> %251, %250
  %253 = bitcast <4 x i64> %252 to <8 x i32>
  %254 = shufflevector <8 x i32> %253, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %255 = bitcast <8 x i32> %254 to <4 x i64>
  %256 = and <4 x i64> %252, splat (i64 4294967295)
  %257 = and <4 x i64> %255, splat (i64 4294967295)
  %258 = mul nuw <4 x i64> %257, %256
  %259 = shufflevector <4 x i64> %250, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %260 = add <4 x i64> %233, %259
  %261 = add <4 x i64> %260, %258
  store <4 x i64> %261, ptr %0, align 32
  %262 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %263 = load <4 x i64>, ptr %262, align 1
  %264 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %265 = load <4 x i64>, ptr %264, align 1
  %266 = xor <4 x i64> %265, %263
  %267 = bitcast <4 x i64> %266 to <8 x i32>
  %268 = shufflevector <8 x i32> %267, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %269 = bitcast <8 x i32> %268 to <4 x i64>
  %270 = and <4 x i64> %266, splat (i64 4294967295)
  %271 = and <4 x i64> %269, splat (i64 4294967295)
  %272 = mul nuw <4 x i64> %271, %270
  %273 = shufflevector <4 x i64> %263, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %274 = add <4 x i64> %247, %273
  %275 = add <4 x i64> %274, %272
  store <4 x i64> %275, ptr %188, align 32
  %276 = load i32, ptr %29, align 4
  %277 = add i32 %276, 4
  br label %278

278:                                              ; preds = %160, %162
  %279 = phi i32 [ %277, %162 ], [ %161, %160 ]
  store i32 %279, ptr %29, align 4
  store i32 0, ptr %10, align 8
  br label %280

280:                                              ; preds = %278, %21
  %281 = phi ptr [ %28, %278 ], [ %1, %21 ]
  %282 = getelementptr inbounds nuw i8, ptr %281, i64 256
  %283 = icmp ugt ptr %282, %6
  br i1 %283, label %542, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds i8, ptr %6, i64 -256
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %290 = load i32, ptr %286, align 4
  %291 = load i32, ptr %287, align 4
  %292 = load ptr, ptr %288, align 64
  %293 = load i32, ptr %289, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %296 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %297 = getelementptr inbounds nuw i8, ptr %292, i64 %294
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %299 = getelementptr inbounds nuw i8, ptr %297, i64 32
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %301

301:                                              ; preds = %538, %284
  %302 = phi i32 [ %290, %284 ], [ %539, %538 ]
  %303 = phi ptr [ %281, %284 ], [ %540, %538 ]
  %304 = sub i32 %291, %302
  %305 = zext i32 %304 to i64
  %306 = icmp ugt i32 %304, 4
  %307 = shl i32 %302, 3
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds nuw i8, ptr %292, i64 %308
  br i1 %306, label %423, label %310

310:                                              ; preds = %301
  %311 = icmp eq i32 %291, %302
  %312 = load <4 x i64>, ptr %0, align 32
  br i1 %311, label %313, label %315

313:                                              ; preds = %310
  %314 = load <4 x i64>, ptr %296, align 32
  br label %355

315:                                              ; preds = %310
  %316 = tail call i64 @llvm.umax.i64(i64 %305, i64 1)
  %317 = load <4 x i64>, ptr %295, align 32
  br label %318

318:                                              ; preds = %315, %318
  %319 = phi <4 x i64> [ %351, %318 ], [ %317, %315 ]
  %320 = phi <4 x i64> [ %337, %318 ], [ %312, %315 ]
  %321 = phi i64 [ %352, %318 ], [ 0, %315 ]
  %322 = shl i64 %321, 6
  %323 = getelementptr inbounds nuw i8, ptr %303, i64 %322
  %324 = shl i64 %321, 3
  %325 = getelementptr inbounds nuw i8, ptr %309, i64 %324
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %326 = load <4 x i64>, ptr %323, align 1
  %327 = load <4 x i64>, ptr %325, align 1
  %328 = xor <4 x i64> %327, %326
  %329 = bitcast <4 x i64> %328 to <8 x i32>
  %330 = shufflevector <8 x i32> %329, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %331 = bitcast <8 x i32> %330 to <4 x i64>
  %332 = and <4 x i64> %328, splat (i64 4294967295)
  %333 = and <4 x i64> %331, splat (i64 4294967295)
  %334 = mul nuw <4 x i64> %333, %332
  %335 = shufflevector <4 x i64> %326, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %336 = add <4 x i64> %320, %335
  %337 = add <4 x i64> %336, %334
  %338 = getelementptr inbounds nuw i8, ptr %323, i64 32
  %339 = load <4 x i64>, ptr %338, align 1
  %340 = getelementptr inbounds nuw i8, ptr %325, i64 32
  %341 = load <4 x i64>, ptr %340, align 1
  %342 = xor <4 x i64> %341, %339
  %343 = bitcast <4 x i64> %342 to <8 x i32>
  %344 = shufflevector <8 x i32> %343, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %345 = bitcast <8 x i32> %344 to <4 x i64>
  %346 = and <4 x i64> %342, splat (i64 4294967295)
  %347 = and <4 x i64> %345, splat (i64 4294967295)
  %348 = mul nuw <4 x i64> %347, %346
  %349 = shufflevector <4 x i64> %339, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %350 = add <4 x i64> %319, %349
  %351 = add <4 x i64> %350, %348
  %352 = add nuw nsw i64 %321, 1
  %353 = icmp eq i64 %352, %316
  br i1 %353, label %354, label %318

354:                                              ; preds = %318
  store <4 x i64> %337, ptr %0, align 32
  store <4 x i64> %351, ptr %295, align 32
  br label %355

355:                                              ; preds = %354, %313
  %356 = phi <4 x i64> [ %314, %313 ], [ %351, %354 ]
  %357 = phi <4 x i64> [ %312, %313 ], [ %337, %354 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %358 = lshr <4 x i64> %357, splat (i64 47)
  %359 = load <4 x i64>, ptr %297, align 1
  %360 = xor <4 x i64> %359, %358
  %361 = xor <4 x i64> %360, %357
  %362 = and <4 x i64> %361, splat (i64 4294967295)
  %363 = mul nuw <4 x i64> %362, splat (i64 2654435761)
  %364 = bitcast <4 x i64> %361 to <8 x i32>
  %365 = shufflevector <8 x i32> %364, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %366 = bitcast <8 x i32> %365 to <4 x i64>
  %367 = mul <4 x i64> %366, splat (i64 -7046029290881679360)
  %368 = add <4 x i64> %367, %363
  store <4 x i64> %368, ptr %0, align 32
  %369 = lshr <4 x i64> %356, splat (i64 47)
  %370 = load <4 x i64>, ptr %299, align 1
  %371 = xor <4 x i64> %370, %369
  %372 = xor <4 x i64> %371, %356
  %373 = and <4 x i64> %372, splat (i64 4294967295)
  %374 = mul nuw <4 x i64> %373, splat (i64 2654435761)
  %375 = bitcast <4 x i64> %372 to <8 x i32>
  %376 = shufflevector <8 x i32> %375, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %377 = bitcast <8 x i32> %376 to <4 x i64>
  %378 = mul <4 x i64> %377, splat (i64 -7046029290881679360)
  %379 = add <4 x i64> %378, %374
  store <4 x i64> %379, ptr %298, align 32
  %380 = shl nuw nsw i64 %305, 6
  %381 = getelementptr inbounds nuw i8, ptr %303, i64 %380
  %382 = sub nsw i64 4, %305
  %383 = icmp eq i32 %304, 4
  br i1 %383, label %421, label %384

384:                                              ; preds = %355, %384
  %385 = phi <4 x i64> [ %417, %384 ], [ %379, %355 ]
  %386 = phi <4 x i64> [ %403, %384 ], [ %368, %355 ]
  %387 = phi i64 [ %418, %384 ], [ 0, %355 ]
  %388 = shl i64 %387, 6
  %389 = getelementptr inbounds nuw i8, ptr %381, i64 %388
  %390 = shl i64 %387, 3
  %391 = getelementptr inbounds nuw i8, ptr %292, i64 %390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %392 = load <4 x i64>, ptr %389, align 1
  %393 = load <4 x i64>, ptr %391, align 1
  %394 = xor <4 x i64> %393, %392
  %395 = bitcast <4 x i64> %394 to <8 x i32>
  %396 = shufflevector <8 x i32> %395, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %397 = bitcast <8 x i32> %396 to <4 x i64>
  %398 = and <4 x i64> %394, splat (i64 4294967295)
  %399 = and <4 x i64> %397, splat (i64 4294967295)
  %400 = mul nuw <4 x i64> %399, %398
  %401 = shufflevector <4 x i64> %392, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %402 = add <4 x i64> %386, %401
  %403 = add <4 x i64> %402, %400
  %404 = getelementptr inbounds nuw i8, ptr %389, i64 32
  %405 = load <4 x i64>, ptr %404, align 1
  %406 = getelementptr inbounds nuw i8, ptr %391, i64 32
  %407 = load <4 x i64>, ptr %406, align 1
  %408 = xor <4 x i64> %407, %405
  %409 = bitcast <4 x i64> %408 to <8 x i32>
  %410 = shufflevector <8 x i32> %409, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %411 = bitcast <8 x i32> %410 to <4 x i64>
  %412 = and <4 x i64> %408, splat (i64 4294967295)
  %413 = and <4 x i64> %411, splat (i64 4294967295)
  %414 = mul nuw <4 x i64> %413, %412
  %415 = shufflevector <4 x i64> %405, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %416 = add <4 x i64> %385, %415
  %417 = add <4 x i64> %416, %414
  %418 = add nuw i64 %387, 1
  %419 = icmp eq i64 %418, %382
  br i1 %419, label %420, label %384

420:                                              ; preds = %384
  store <4 x i64> %403, ptr %0, align 32
  store <4 x i64> %417, ptr %298, align 32
  br label %421

421:                                              ; preds = %420, %355
  %422 = trunc nuw nsw i64 %382 to i32
  br label %538

423:                                              ; preds = %301
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %424 = load <4 x i64>, ptr %303, align 1
  %425 = load <4 x i64>, ptr %309, align 1
  %426 = xor <4 x i64> %425, %424
  %427 = bitcast <4 x i64> %426 to <8 x i32>
  %428 = shufflevector <8 x i32> %427, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %429 = bitcast <8 x i32> %428 to <4 x i64>
  %430 = and <4 x i64> %426, splat (i64 4294967295)
  %431 = and <4 x i64> %429, splat (i64 4294967295)
  %432 = mul nuw <4 x i64> %431, %430
  %433 = shufflevector <4 x i64> %424, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %434 = load <4 x i64>, ptr %0, align 32
  %435 = add <4 x i64> %434, %433
  %436 = add <4 x i64> %435, %432
  store <4 x i64> %436, ptr %0, align 32
  %437 = getelementptr inbounds nuw i8, ptr %303, i64 32
  %438 = load <4 x i64>, ptr %437, align 1
  %439 = getelementptr inbounds nuw i8, ptr %309, i64 32
  %440 = load <4 x i64>, ptr %439, align 1
  %441 = xor <4 x i64> %440, %438
  %442 = bitcast <4 x i64> %441 to <8 x i32>
  %443 = shufflevector <8 x i32> %442, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %444 = bitcast <8 x i32> %443 to <4 x i64>
  %445 = and <4 x i64> %441, splat (i64 4294967295)
  %446 = and <4 x i64> %444, splat (i64 4294967295)
  %447 = mul nuw <4 x i64> %446, %445
  %448 = shufflevector <4 x i64> %438, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %449 = load <4 x i64>, ptr %300, align 32
  %450 = add <4 x i64> %449, %448
  %451 = add <4 x i64> %450, %447
  store <4 x i64> %451, ptr %300, align 32
  %452 = getelementptr inbounds nuw i8, ptr %303, i64 64
  %453 = getelementptr inbounds nuw i8, ptr %309, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %454 = load <4 x i64>, ptr %452, align 1
  %455 = load <4 x i64>, ptr %453, align 1
  %456 = xor <4 x i64> %455, %454
  %457 = bitcast <4 x i64> %456 to <8 x i32>
  %458 = shufflevector <8 x i32> %457, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %459 = bitcast <8 x i32> %458 to <4 x i64>
  %460 = and <4 x i64> %456, splat (i64 4294967295)
  %461 = and <4 x i64> %459, splat (i64 4294967295)
  %462 = mul nuw <4 x i64> %461, %460
  %463 = shufflevector <4 x i64> %454, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %464 = add <4 x i64> %436, %463
  %465 = add <4 x i64> %464, %462
  store <4 x i64> %465, ptr %0, align 32
  %466 = getelementptr inbounds nuw i8, ptr %303, i64 96
  %467 = load <4 x i64>, ptr %466, align 1
  %468 = getelementptr inbounds nuw i8, ptr %309, i64 40
  %469 = load <4 x i64>, ptr %468, align 1
  %470 = xor <4 x i64> %469, %467
  %471 = bitcast <4 x i64> %470 to <8 x i32>
  %472 = shufflevector <8 x i32> %471, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %473 = bitcast <8 x i32> %472 to <4 x i64>
  %474 = and <4 x i64> %470, splat (i64 4294967295)
  %475 = and <4 x i64> %473, splat (i64 4294967295)
  %476 = mul nuw <4 x i64> %475, %474
  %477 = shufflevector <4 x i64> %467, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %478 = add <4 x i64> %451, %477
  %479 = add <4 x i64> %478, %476
  store <4 x i64> %479, ptr %300, align 32
  %480 = getelementptr inbounds nuw i8, ptr %303, i64 128
  %481 = getelementptr inbounds nuw i8, ptr %309, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %482 = load <4 x i64>, ptr %480, align 1
  %483 = load <4 x i64>, ptr %481, align 1
  %484 = xor <4 x i64> %483, %482
  %485 = bitcast <4 x i64> %484 to <8 x i32>
  %486 = shufflevector <8 x i32> %485, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %487 = bitcast <8 x i32> %486 to <4 x i64>
  %488 = and <4 x i64> %484, splat (i64 4294967295)
  %489 = and <4 x i64> %487, splat (i64 4294967295)
  %490 = mul nuw <4 x i64> %489, %488
  %491 = shufflevector <4 x i64> %482, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %492 = add <4 x i64> %465, %491
  %493 = add <4 x i64> %492, %490
  store <4 x i64> %493, ptr %0, align 32
  %494 = getelementptr inbounds nuw i8, ptr %303, i64 160
  %495 = load <4 x i64>, ptr %494, align 1
  %496 = getelementptr inbounds nuw i8, ptr %309, i64 48
  %497 = load <4 x i64>, ptr %496, align 1
  %498 = xor <4 x i64> %497, %495
  %499 = bitcast <4 x i64> %498 to <8 x i32>
  %500 = shufflevector <8 x i32> %499, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %501 = bitcast <8 x i32> %500 to <4 x i64>
  %502 = and <4 x i64> %498, splat (i64 4294967295)
  %503 = and <4 x i64> %501, splat (i64 4294967295)
  %504 = mul nuw <4 x i64> %503, %502
  %505 = shufflevector <4 x i64> %495, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %506 = add <4 x i64> %479, %505
  %507 = add <4 x i64> %506, %504
  store <4 x i64> %507, ptr %300, align 32
  %508 = getelementptr inbounds nuw i8, ptr %303, i64 192
  %509 = getelementptr inbounds nuw i8, ptr %309, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %510 = load <4 x i64>, ptr %508, align 1
  %511 = load <4 x i64>, ptr %509, align 1
  %512 = xor <4 x i64> %511, %510
  %513 = bitcast <4 x i64> %512 to <8 x i32>
  %514 = shufflevector <8 x i32> %513, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %515 = bitcast <8 x i32> %514 to <4 x i64>
  %516 = and <4 x i64> %512, splat (i64 4294967295)
  %517 = and <4 x i64> %515, splat (i64 4294967295)
  %518 = mul nuw <4 x i64> %517, %516
  %519 = shufflevector <4 x i64> %510, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %520 = add <4 x i64> %493, %519
  %521 = add <4 x i64> %520, %518
  store <4 x i64> %521, ptr %0, align 32
  %522 = getelementptr inbounds nuw i8, ptr %303, i64 224
  %523 = load <4 x i64>, ptr %522, align 1
  %524 = getelementptr inbounds nuw i8, ptr %309, i64 56
  %525 = load <4 x i64>, ptr %524, align 1
  %526 = xor <4 x i64> %525, %523
  %527 = bitcast <4 x i64> %526 to <8 x i32>
  %528 = shufflevector <8 x i32> %527, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %529 = bitcast <8 x i32> %528 to <4 x i64>
  %530 = and <4 x i64> %526, splat (i64 4294967295)
  %531 = and <4 x i64> %529, splat (i64 4294967295)
  %532 = mul nuw <4 x i64> %531, %530
  %533 = shufflevector <4 x i64> %523, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %534 = add <4 x i64> %507, %533
  %535 = add <4 x i64> %534, %532
  store <4 x i64> %535, ptr %300, align 32
  %536 = load i32, ptr %286, align 4
  %537 = add i32 %536, 4
  br label %538

538:                                              ; preds = %421, %423
  %539 = phi i32 [ %537, %423 ], [ %422, %421 ]
  store i32 %539, ptr %286, align 4
  %540 = getelementptr inbounds nuw i8, ptr %303, i64 256
  %541 = icmp ugt ptr %540, %285
  br i1 %541, label %542, label %301

542:                                              ; preds = %538, %280
  %543 = phi ptr [ %281, %280 ], [ %540, %538 ]
  %544 = icmp ult ptr %543, %6
  br i1 %544, label %545, label %553

545:                                              ; preds = %542
  %546 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %547 = ptrtoint ptr %6 to i64
  %548 = ptrtoint ptr %543 to i64
  %549 = sub i64 %547, %548
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %546, ptr nonnull readonly align 1 %543, i64 %549, i1 false)
  %550 = trunc i64 %549 to i32
  br label %551

551:                                              ; preds = %545, %15
  %552 = phi i32 [ %20, %15 ], [ %550, %545 ]
  store i32 %552, ptr %10, align 8
  br label %553

553:                                              ; preds = %551, %3, %542
  %554 = phi i32 [ 1, %3 ], [ 0, %542 ], [ 0, %551 ]
  ret i32 %554
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits_digest(ptr noundef readonly %0) local_unnamed_addr #16 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %4 = load i64, ptr %3, align 32
  %5 = icmp ugt i64 %4, 240
  br i1 %5, label %6, label %394

6:                                                ; preds = %1
  %7 = load <4 x i64>, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 63
  br i1 %12, label %13, label %212

13:                                               ; preds = %6
  %14 = lshr i32 %11, 6
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %17 = load i32, ptr %16, align 16
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = sub i32 %19, %17
  %27 = zext i32 %26 to i64
  %28 = icmp ult i32 %14, %26
  %29 = shl i32 %17, 3
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %22, i64 %30
  br i1 %28, label %139, label %32

32:                                               ; preds = %13
  %33 = icmp eq i32 %19, %17
  br i1 %33, label %72, label %34

34:                                               ; preds = %32
  %35 = tail call i64 @llvm.umax.i64(i64 %27, i64 1)
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi <4 x i64> [ %9, %34 ], [ %69, %36 ]
  %38 = phi <4 x i64> [ %7, %34 ], [ %55, %36 ]
  %39 = phi i64 [ 0, %34 ], [ %70, %36 ]
  %40 = shl i64 %39, 6
  %41 = getelementptr inbounds nuw i8, ptr %20, i64 %40
  %42 = shl i64 %39, 3
  %43 = getelementptr inbounds nuw i8, ptr %31, i64 %42
  %44 = load <4 x i64>, ptr %41, align 1
  %45 = load <4 x i64>, ptr %43, align 1
  %46 = xor <4 x i64> %45, %44
  %47 = bitcast <4 x i64> %46 to <8 x i32>
  %48 = shufflevector <8 x i32> %47, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %49 = bitcast <8 x i32> %48 to <4 x i64>
  %50 = and <4 x i64> %46, splat (i64 4294967295)
  %51 = and <4 x i64> %49, splat (i64 4294967295)
  %52 = mul nuw <4 x i64> %51, %50
  %53 = shufflevector <4 x i64> %44, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %54 = add <4 x i64> %38, %53
  %55 = add <4 x i64> %54, %52
  %56 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %57 = load <4 x i64>, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %59 = load <4 x i64>, ptr %58, align 1
  %60 = xor <4 x i64> %59, %57
  %61 = bitcast <4 x i64> %60 to <8 x i32>
  %62 = shufflevector <8 x i32> %61, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %63 = bitcast <8 x i32> %62 to <4 x i64>
  %64 = and <4 x i64> %60, splat (i64 4294967295)
  %65 = and <4 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, %64
  %67 = shufflevector <4 x i64> %57, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %68 = add <4 x i64> %37, %67
  %69 = add <4 x i64> %68, %66
  %70 = add nuw nsw i64 %39, 1
  %71 = icmp eq i64 %70, %35
  br i1 %71, label %72, label %36

72:                                               ; preds = %36, %32
  %73 = phi <4 x i64> [ %9, %32 ], [ %69, %36 ]
  %74 = phi <4 x i64> [ %7, %32 ], [ %55, %36 ]
  %75 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %76 = lshr <4 x i64> %74, splat (i64 47)
  %77 = load <4 x i64>, ptr %75, align 1
  %78 = xor <4 x i64> %77, %76
  %79 = xor <4 x i64> %78, %74
  %80 = and <4 x i64> %79, splat (i64 4294967295)
  %81 = mul nuw <4 x i64> %80, splat (i64 2654435761)
  %82 = bitcast <4 x i64> %79 to <8 x i32>
  %83 = shufflevector <8 x i32> %82, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %84 = bitcast <8 x i32> %83 to <4 x i64>
  %85 = mul <4 x i64> %84, splat (i64 -7046029290881679360)
  %86 = add <4 x i64> %85, %81
  %87 = lshr <4 x i64> %73, splat (i64 47)
  %88 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %89 = load <4 x i64>, ptr %88, align 1
  %90 = xor <4 x i64> %89, %87
  %91 = xor <4 x i64> %90, %73
  %92 = and <4 x i64> %91, splat (i64 4294967295)
  %93 = mul nuw <4 x i64> %92, splat (i64 2654435761)
  %94 = bitcast <4 x i64> %91 to <8 x i32>
  %95 = shufflevector <8 x i32> %94, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %96 = bitcast <8 x i32> %95 to <4 x i64>
  %97 = mul <4 x i64> %96, splat (i64 -7046029290881679360)
  %98 = add <4 x i64> %97, %93
  %99 = shl nuw nsw i64 %27, 6
  %100 = getelementptr inbounds nuw i8, ptr %20, i64 %99
  %101 = sub nsw i64 %15, %27
  %102 = icmp eq i32 %14, %26
  br i1 %102, label %175, label %103

103:                                              ; preds = %72, %103
  %104 = phi <4 x i64> [ %136, %103 ], [ %98, %72 ]
  %105 = phi <4 x i64> [ %122, %103 ], [ %86, %72 ]
  %106 = phi i64 [ %137, %103 ], [ 0, %72 ]
  %107 = shl i64 %106, 6
  %108 = getelementptr inbounds nuw i8, ptr %100, i64 %107
  %109 = shl i64 %106, 3
  %110 = getelementptr inbounds nuw i8, ptr %22, i64 %109
  %111 = load <4 x i64>, ptr %108, align 1
  %112 = load <4 x i64>, ptr %110, align 1
  %113 = xor <4 x i64> %112, %111
  %114 = bitcast <4 x i64> %113 to <8 x i32>
  %115 = shufflevector <8 x i32> %114, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %116 = bitcast <8 x i32> %115 to <4 x i64>
  %117 = and <4 x i64> %113, splat (i64 4294967295)
  %118 = and <4 x i64> %116, splat (i64 4294967295)
  %119 = mul nuw <4 x i64> %118, %117
  %120 = shufflevector <4 x i64> %111, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %121 = add <4 x i64> %105, %120
  %122 = add <4 x i64> %121, %119
  %123 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %124 = load <4 x i64>, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %110, i64 32
  %126 = load <4 x i64>, ptr %125, align 1
  %127 = xor <4 x i64> %126, %124
  %128 = bitcast <4 x i64> %127 to <8 x i32>
  %129 = shufflevector <8 x i32> %128, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %130 = bitcast <8 x i32> %129 to <4 x i64>
  %131 = and <4 x i64> %127, splat (i64 4294967295)
  %132 = and <4 x i64> %130, splat (i64 4294967295)
  %133 = mul nuw <4 x i64> %132, %131
  %134 = shufflevector <4 x i64> %124, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %135 = add <4 x i64> %104, %134
  %136 = add <4 x i64> %135, %133
  %137 = add nuw i64 %106, 1
  %138 = icmp eq i64 %137, %101
  br i1 %138, label %175, label %103

139:                                              ; preds = %13, %139
  %140 = phi <4 x i64> [ %172, %139 ], [ %9, %13 ]
  %141 = phi <4 x i64> [ %158, %139 ], [ %7, %13 ]
  %142 = phi i64 [ %173, %139 ], [ 0, %13 ]
  %143 = shl i64 %142, 6
  %144 = getelementptr inbounds nuw i8, ptr %20, i64 %143
  %145 = shl i64 %142, 3
  %146 = getelementptr inbounds nuw i8, ptr %31, i64 %145
  %147 = load <4 x i64>, ptr %144, align 1
  %148 = load <4 x i64>, ptr %146, align 1
  %149 = xor <4 x i64> %148, %147
  %150 = bitcast <4 x i64> %149 to <8 x i32>
  %151 = shufflevector <8 x i32> %150, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %152 = bitcast <8 x i32> %151 to <4 x i64>
  %153 = and <4 x i64> %149, splat (i64 4294967295)
  %154 = and <4 x i64> %152, splat (i64 4294967295)
  %155 = mul nuw <4 x i64> %154, %153
  %156 = shufflevector <4 x i64> %147, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %157 = add <4 x i64> %141, %156
  %158 = add <4 x i64> %157, %155
  %159 = getelementptr inbounds nuw i8, ptr %144, i64 32
  %160 = load <4 x i64>, ptr %159, align 1
  %161 = getelementptr inbounds nuw i8, ptr %146, i64 32
  %162 = load <4 x i64>, ptr %161, align 1
  %163 = xor <4 x i64> %162, %160
  %164 = bitcast <4 x i64> %163 to <8 x i32>
  %165 = shufflevector <8 x i32> %164, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %166 = bitcast <8 x i32> %165 to <4 x i64>
  %167 = and <4 x i64> %163, splat (i64 4294967295)
  %168 = and <4 x i64> %166, splat (i64 4294967295)
  %169 = mul nuw <4 x i64> %168, %167
  %170 = shufflevector <4 x i64> %160, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %171 = add <4 x i64> %140, %170
  %172 = add <4 x i64> %171, %169
  %173 = add nuw nsw i64 %142, 1
  %174 = icmp eq i64 %173, %15
  br i1 %174, label %175, label %139

175:                                              ; preds = %103, %139, %72
  %176 = phi <4 x i64> [ %98, %72 ], [ %172, %139 ], [ %136, %103 ]
  %177 = phi <4 x i64> [ %86, %72 ], [ %158, %139 ], [ %122, %103 ]
  %178 = and i32 %11, 63
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %261, label %180

180:                                              ; preds = %175
  %181 = zext i32 %11 to i64
  %182 = getelementptr inbounds nuw i8, ptr %20, i64 %181
  %183 = getelementptr inbounds i8, ptr %182, i64 -64
  %184 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %185 = getelementptr inbounds i8, ptr %184, i64 -7
  %186 = load <4 x i64>, ptr %183, align 1
  %187 = load <4 x i64>, ptr %185, align 1
  %188 = xor <4 x i64> %187, %186
  %189 = bitcast <4 x i64> %188 to <8 x i32>
  %190 = shufflevector <8 x i32> %189, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %191 = bitcast <8 x i32> %190 to <4 x i64>
  %192 = and <4 x i64> %188, splat (i64 4294967295)
  %193 = and <4 x i64> %191, splat (i64 4294967295)
  %194 = mul nuw <4 x i64> %193, %192
  %195 = shufflevector <4 x i64> %186, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %196 = add <4 x i64> %177, %195
  %197 = add <4 x i64> %196, %194
  %198 = getelementptr inbounds i8, ptr %182, i64 -32
  %199 = load <4 x i64>, ptr %198, align 1
  %200 = getelementptr inbounds nuw i8, ptr %184, i64 25
  %201 = load <4 x i64>, ptr %200, align 1
  %202 = xor <4 x i64> %201, %199
  %203 = bitcast <4 x i64> %202 to <8 x i32>
  %204 = shufflevector <8 x i32> %203, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %205 = bitcast <8 x i32> %204 to <4 x i64>
  %206 = and <4 x i64> %202, splat (i64 4294967295)
  %207 = and <4 x i64> %205, splat (i64 4294967295)
  %208 = mul nuw <4 x i64> %207, %206
  %209 = shufflevector <4 x i64> %199, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %210 = add <4 x i64> %176, %209
  %211 = add <4 x i64> %210, %208
  br label %261

212:                                              ; preds = %6
  %213 = icmp eq i32 %11, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %212
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %216 = load ptr, ptr %215, align 64
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %218 = load i32, ptr %217, align 4
  %219 = zext i32 %218 to i64
  br label %261

220:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #28
  %221 = sub nuw nsw i32 64, %11
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %225 = sub nsw i64 0, %222
  %226 = getelementptr inbounds i8, ptr %224, i64 %225
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %226, i64 %222, i1 false)
  %227 = getelementptr inbounds nuw i8, ptr %2, i64 %222
  %228 = zext nneg i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %227, ptr nonnull align 64 %223, i64 %228, i1 false)
  %229 = load ptr, ptr %224, align 64
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %231 = load i32, ptr %230, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds nuw i8, ptr %229, i64 %232
  %234 = getelementptr inbounds i8, ptr %233, i64 -7
  %235 = load <4 x i64>, ptr %2, align 16
  %236 = load <4 x i64>, ptr %234, align 1
  %237 = xor <4 x i64> %236, %235
  %238 = bitcast <4 x i64> %237 to <8 x i32>
  %239 = shufflevector <8 x i32> %238, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %240 = bitcast <8 x i32> %239 to <4 x i64>
  %241 = and <4 x i64> %237, splat (i64 4294967295)
  %242 = and <4 x i64> %240, splat (i64 4294967295)
  %243 = mul nuw <4 x i64> %242, %241
  %244 = shufflevector <4 x i64> %235, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %245 = add <4 x i64> %7, %244
  %246 = add <4 x i64> %245, %243
  %247 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %248 = load <4 x i64>, ptr %247, align 16
  %249 = getelementptr inbounds nuw i8, ptr %233, i64 25
  %250 = load <4 x i64>, ptr %249, align 1
  %251 = xor <4 x i64> %250, %248
  %252 = bitcast <4 x i64> %251 to <8 x i32>
  %253 = shufflevector <8 x i32> %252, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %254 = bitcast <8 x i32> %253 to <4 x i64>
  %255 = and <4 x i64> %251, splat (i64 4294967295)
  %256 = and <4 x i64> %254, splat (i64 4294967295)
  %257 = mul nuw <4 x i64> %256, %255
  %258 = shufflevector <4 x i64> %248, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %259 = add <4 x i64> %9, %258
  %260 = add <4 x i64> %259, %257
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #28
  br label %261

261:                                              ; preds = %214, %180, %175, %220
  %262 = phi i64 [ %219, %214 ], [ %25, %180 ], [ %25, %175 ], [ %232, %220 ]
  %263 = phi ptr [ %216, %214 ], [ %22, %180 ], [ %22, %175 ], [ %229, %220 ]
  %264 = phi <4 x i64> [ %9, %214 ], [ %211, %180 ], [ %176, %175 ], [ %260, %220 ]
  %265 = phi <4 x i64> [ %7, %214 ], [ %197, %180 ], [ %177, %175 ], [ %246, %220 ]
  %266 = getelementptr inbounds nuw i8, ptr %263, i64 11
  %267 = mul i64 %4, -7046029288634856825
  %268 = extractelement <4 x i64> %265, i64 0
  %269 = load i64, ptr %266, align 1
  %270 = xor i64 %269, %268
  %271 = extractelement <4 x i64> %265, i64 1
  %272 = getelementptr inbounds nuw i8, ptr %263, i64 19
  %273 = load i64, ptr %272, align 1
  %274 = xor i64 %273, %271
  %275 = zext i64 %270 to i128
  %276 = zext i64 %274 to i128
  %277 = mul nuw i128 %276, %275
  %278 = lshr i128 %277, 64
  %279 = xor i128 %278, %277
  %280 = trunc i128 %279 to i64
  %281 = add i64 %267, %280
  %282 = getelementptr inbounds nuw i8, ptr %263, i64 27
  %283 = extractelement <4 x i64> %265, i64 2
  %284 = load i64, ptr %282, align 1
  %285 = xor i64 %284, %283
  %286 = extractelement <4 x i64> %265, i64 3
  %287 = getelementptr inbounds nuw i8, ptr %263, i64 35
  %288 = load i64, ptr %287, align 1
  %289 = xor i64 %288, %286
  %290 = zext i64 %285 to i128
  %291 = zext i64 %289 to i128
  %292 = mul nuw i128 %291, %290
  %293 = lshr i128 %292, 64
  %294 = xor i128 %293, %292
  %295 = trunc i128 %294 to i64
  %296 = add i64 %281, %295
  %297 = getelementptr inbounds nuw i8, ptr %263, i64 43
  %298 = extractelement <4 x i64> %264, i64 0
  %299 = load i64, ptr %297, align 1
  %300 = xor i64 %299, %298
  %301 = extractelement <4 x i64> %264, i64 1
  %302 = getelementptr inbounds nuw i8, ptr %263, i64 51
  %303 = load i64, ptr %302, align 1
  %304 = xor i64 %303, %301
  %305 = zext i64 %300 to i128
  %306 = zext i64 %304 to i128
  %307 = mul nuw i128 %306, %305
  %308 = lshr i128 %307, 64
  %309 = xor i128 %308, %307
  %310 = trunc i128 %309 to i64
  %311 = add i64 %296, %310
  %312 = getelementptr inbounds nuw i8, ptr %263, i64 59
  %313 = extractelement <4 x i64> %264, i64 2
  %314 = load i64, ptr %312, align 1
  %315 = xor i64 %314, %313
  %316 = extractelement <4 x i64> %264, i64 3
  %317 = getelementptr inbounds nuw i8, ptr %263, i64 67
  %318 = load i64, ptr %317, align 1
  %319 = xor i64 %318, %316
  %320 = zext i64 %315 to i128
  %321 = zext i64 %319 to i128
  %322 = mul nuw i128 %321, %320
  %323 = lshr i128 %322, 64
  %324 = xor i128 %323, %322
  %325 = trunc i128 %324 to i64
  %326 = add i64 %311, %325
  %327 = lshr i64 %326, 37
  %328 = xor i64 %327, %326
  %329 = mul i64 %328, 1609587929392839161
  %330 = lshr i64 %329, 32
  %331 = xor i64 %330, %329
  %332 = getelementptr inbounds nuw i8, ptr %263, i64 %262
  %333 = getelementptr inbounds i8, ptr %332, i64 -11
  %334 = mul i64 %4, -4417276706812531889
  %335 = xor i64 %334, -1
  %336 = load i64, ptr %333, align 1
  %337 = xor i64 %336, %268
  %338 = getelementptr inbounds i8, ptr %332, i64 -3
  %339 = load i64, ptr %338, align 1
  %340 = xor i64 %339, %271
  %341 = zext i64 %337 to i128
  %342 = zext i64 %340 to i128
  %343 = mul nuw i128 %342, %341
  %344 = lshr i128 %343, 64
  %345 = xor i128 %344, %343
  %346 = trunc i128 %345 to i64
  %347 = add i64 %346, %335
  %348 = getelementptr inbounds nuw i8, ptr %332, i64 5
  %349 = load i64, ptr %348, align 1
  %350 = xor i64 %349, %283
  %351 = getelementptr inbounds nuw i8, ptr %332, i64 13
  %352 = load i64, ptr %351, align 1
  %353 = xor i64 %352, %286
  %354 = zext i64 %350 to i128
  %355 = zext i64 %353 to i128
  %356 = mul nuw i128 %355, %354
  %357 = lshr i128 %356, 64
  %358 = xor i128 %357, %356
  %359 = trunc i128 %358 to i64
  %360 = add i64 %347, %359
  %361 = getelementptr inbounds nuw i8, ptr %332, i64 21
  %362 = load i64, ptr %361, align 1
  %363 = xor i64 %362, %298
  %364 = getelementptr inbounds nuw i8, ptr %332, i64 29
  %365 = load i64, ptr %364, align 1
  %366 = xor i64 %365, %301
  %367 = zext i64 %363 to i128
  %368 = zext i64 %366 to i128
  %369 = mul nuw i128 %368, %367
  %370 = lshr i128 %369, 64
  %371 = xor i128 %370, %369
  %372 = trunc i128 %371 to i64
  %373 = add i64 %360, %372
  %374 = getelementptr inbounds nuw i8, ptr %332, i64 37
  %375 = load i64, ptr %374, align 1
  %376 = xor i64 %375, %313
  %377 = getelementptr inbounds nuw i8, ptr %332, i64 45
  %378 = load i64, ptr %377, align 1
  %379 = xor i64 %378, %316
  %380 = zext i64 %376 to i128
  %381 = zext i64 %379 to i128
  %382 = mul nuw i128 %381, %380
  %383 = lshr i128 %382, 64
  %384 = xor i128 %383, %382
  %385 = trunc i128 %384 to i64
  %386 = add i64 %373, %385
  %387 = lshr i64 %386, 37
  %388 = xor i64 %387, %386
  %389 = mul i64 %388, 1609587929392839161
  %390 = lshr i64 %389, 32
  %391 = xor i64 %390, %389
  %392 = insertvalue { i64, i64 } poison, i64 %331, 0
  %393 = insertvalue { i64, i64 } %392, i64 %391, 1
  br label %409

394:                                              ; preds = %1
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %396 = load i64, ptr %395, align 8
  %397 = icmp eq i64 %396, 0
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %397, label %401, label %399

399:                                              ; preds = %394
  %400 = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef nonnull %398, i64 noundef %4, i64 noundef %396)
  br label %409

401:                                              ; preds = %394
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %403 = load ptr, ptr %402, align 64
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %405 = load i32, ptr %404, align 4
  %406 = add i32 %405, 64
  %407 = zext i32 %406 to i64
  %408 = tail call { i64, i64 } @XXH3_128bits_withSecret(ptr noundef nonnull %398, i64 noundef %4, ptr noundef %403, i64 noundef %407)
  br label %409

409:                                              ; preds = %401, %399, %261
  %410 = phi { i64, i64 } [ %393, %261 ], [ %400, %399 ], [ %408, %401 ]
  ret { i64, i64 } %410
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @XXH128_isEqual(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #20 {
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
define dso_local range(i32 -1, 2) i32 @XXH128_cmp(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #10 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH128_canonicalFromHash(ptr noundef writeonly initializes((0, 16)) %0, i64 %1, i64 %2) local_unnamed_addr #6 {
  %4 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %5 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %4, ptr %0, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH128_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #10 {
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
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #23

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr, ptr, i64) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ucmp.i32.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.fshl.v4i64(<4 x i64>, <4 x i64>, <4 x i64>) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #18 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #19 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind memory(none) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 13619}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH3_mix16B: argument 1"}
!13 = distinct !{!13, !"XXH3_mix16B"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_mix16B: argument 1"}
!16 = distinct !{!16, !"XXH3_mix16B"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_mix16B: argument 1"}
!19 = distinct !{!19, !"XXH3_mix16B"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_mix16B: argument 1"}
!22 = distinct !{!22, !"XXH3_mix16B"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH3_mix16B: argument 1"}
!25 = distinct !{!25, !"XXH3_mix16B"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_mix16B: argument 1"}
!28 = distinct !{!28, !"XXH3_mix16B"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_mix16B: argument 1"}
!31 = distinct !{!31, !"XXH3_mix16B"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"XXH3_mix16B: argument 1"}
!34 = distinct !{!34, !"XXH3_mix16B"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"XXH3_mix16B: argument 1"}
!37 = distinct !{!37, !"XXH3_mix16B"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"XXH3_mix16B: argument 1"}
!40 = distinct !{!40, !"XXH3_mix16B"}
!41 = distinct !{!41, !7}
!42 = !{!43}
!43 = distinct !{!43, !44, !"XXH3_mix16B: argument 1"}
!44 = distinct !{!44, !"XXH3_mix16B"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"XXH3_accumulate_512: argument 0"}
!47 = distinct !{!47, !"XXH3_accumulate_512"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"XXH3_accumulate_512: argument 0:It1"}
!50 = !{!51}
!51 = distinct !{!51, !47, !"XXH3_accumulate_512: argument 0:It2"}
!52 = !{!53}
!53 = distinct !{!53, !47, !"XXH3_accumulate_512: argument 0:It3"}
!54 = !{!55}
!55 = distinct !{!55, !47, !"XXH3_accumulate_512: argument 0:It4"}
!56 = !{!57}
!57 = distinct !{!57, !47, !"XXH3_accumulate_512: argument 0:It5"}
!58 = !{!59}
!59 = distinct !{!59, !47, !"XXH3_accumulate_512: argument 0:It6"}
!60 = !{!61}
!61 = distinct !{!61, !47, !"XXH3_accumulate_512: argument 0:It7"}
!62 = !{!63}
!63 = distinct !{!63, !47, !"XXH3_accumulate_512: argument 0:It8"}
!64 = !{!65}
!65 = distinct !{!65, !47, !"XXH3_accumulate_512: argument 0:It9"}
!66 = !{!67}
!67 = distinct !{!67, !47, !"XXH3_accumulate_512: argument 0:It10"}
!68 = !{!69}
!69 = distinct !{!69, !47, !"XXH3_accumulate_512: argument 0:It11"}
!70 = !{!71}
!71 = distinct !{!71, !47, !"XXH3_accumulate_512: argument 0:It12"}
!72 = !{!73}
!73 = distinct !{!73, !47, !"XXH3_accumulate_512: argument 0:It13"}
!74 = !{!75}
!75 = distinct !{!75, !47, !"XXH3_accumulate_512: argument 0:It14"}
!76 = !{!77}
!77 = distinct !{!77, !47, !"XXH3_accumulate_512: argument 0:It15"}
!78 = distinct !{!78, !7}
!79 = !{!80}
!80 = distinct !{!80, !81, !"XXH3_accumulate_512: argument 0"}
!81 = distinct !{!81, !"XXH3_accumulate_512"}
!82 = distinct !{!82, !7, !83}
!83 = !{!"llvm.loop.unroll.enable"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"XXH3_accumulate_512: argument 0"}
!86 = distinct !{!86, !"XXH3_accumulate_512"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"XXH3_mix16B: argument 1"}
!89 = distinct !{!89, !"XXH3_mix16B"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"XXH3_mix16B: argument 1"}
!92 = distinct !{!92, !"XXH3_mix16B"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"XXH3_mix16B: argument 1"}
!95 = distinct !{!95, !"XXH3_mix16B"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"XXH3_mix16B: argument 1"}
!98 = distinct !{!98, !"XXH3_mix16B"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"XXH3_mix16B: argument 1"}
!101 = distinct !{!101, !"XXH3_mix16B"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"XXH3_mix16B: argument 1"}
!104 = distinct !{!104, !"XXH3_mix16B"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"XXH3_mix16B: argument 1"}
!107 = distinct !{!107, !"XXH3_mix16B"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"XXH3_mix16B: argument 1"}
!110 = distinct !{!110, !"XXH3_mix16B"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"XXH3_scrambleAcc: argument 0"}
!113 = distinct !{!113, !"XXH3_scrambleAcc"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"XXH3_accumulate_512: argument 0"}
!116 = distinct !{!116, !"XXH3_accumulate_512"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"XXH3_accumulate_512: argument 0"}
!119 = distinct !{!119, !"XXH3_accumulate_512"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"XXH3_accumulate_512: argument 0"}
!122 = distinct !{!122, !"XXH3_accumulate_512"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"XXH3_mergeAccs: argument 1"}
!125 = distinct !{!125, !"XXH3_mergeAccs"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"XXH3_mergeAccs: argument 0"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"XXH3_mix16B: argument 1"}
!130 = distinct !{!130, !"XXH3_mix16B"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"XXH3_mix16B: argument 1"}
!133 = distinct !{!133, !"XXH3_mix16B"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"XXH3_mix16B: argument 1"}
!136 = distinct !{!136, !"XXH3_mix16B"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"XXH3_mix16B: argument 1"}
!139 = distinct !{!139, !"XXH3_mix16B"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"XXH3_mix16B: argument 1"}
!142 = distinct !{!142, !"XXH3_mix16B"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"XXH3_mix16B: argument 1"}
!145 = distinct !{!145, !"XXH3_mix16B"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"XXH3_mix16B: argument 1"}
!148 = distinct !{!148, !"XXH3_mix16B"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"XXH3_mix16B: argument 1"}
!151 = distinct !{!151, !"XXH3_mix16B"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"XXH3_accumulate_512: argument 0"}
!154 = distinct !{!154, !"XXH3_accumulate_512"}
!155 = !{!156}
!156 = distinct !{!156, !154, !"XXH3_accumulate_512: argument 0:It1"}
!157 = !{!158}
!158 = distinct !{!158, !154, !"XXH3_accumulate_512: argument 0:It2"}
!159 = !{!160}
!160 = distinct !{!160, !154, !"XXH3_accumulate_512: argument 0:It3"}
!161 = !{!162}
!162 = distinct !{!162, !154, !"XXH3_accumulate_512: argument 0:It4"}
!163 = !{!164}
!164 = distinct !{!164, !154, !"XXH3_accumulate_512: argument 0:It5"}
!165 = !{!166}
!166 = distinct !{!166, !154, !"XXH3_accumulate_512: argument 0:It6"}
!167 = !{!168}
!168 = distinct !{!168, !154, !"XXH3_accumulate_512: argument 0:It7"}
!169 = !{!170}
!170 = distinct !{!170, !154, !"XXH3_accumulate_512: argument 0:It8"}
!171 = !{!172}
!172 = distinct !{!172, !154, !"XXH3_accumulate_512: argument 0:It9"}
!173 = !{!174}
!174 = distinct !{!174, !154, !"XXH3_accumulate_512: argument 0:It10"}
!175 = !{!176}
!176 = distinct !{!176, !154, !"XXH3_accumulate_512: argument 0:It11"}
!177 = !{!178}
!178 = distinct !{!178, !154, !"XXH3_accumulate_512: argument 0:It12"}
!179 = !{!180}
!180 = distinct !{!180, !154, !"XXH3_accumulate_512: argument 0:It13"}
!181 = !{!182}
!182 = distinct !{!182, !154, !"XXH3_accumulate_512: argument 0:It14"}
!183 = !{!184}
!184 = distinct !{!184, !154, !"XXH3_accumulate_512: argument 0:It15"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"XXH3_scrambleAcc: argument 0"}
!187 = distinct !{!187, !"XXH3_scrambleAcc"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"XXH3_accumulate_512: argument 0"}
!190 = distinct !{!190, !"XXH3_accumulate_512"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"XXH3_accumulate_512: argument 0"}
!193 = distinct !{!193, !"XXH3_accumulate_512"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"XXH3_mergeAccs: argument 1"}
!196 = distinct !{!196, !"XXH3_mergeAccs"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"XXH3_mergeAccs: argument 0"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"XXH3_scrambleAcc: argument 0"}
!201 = distinct !{!201, !"XXH3_scrambleAcc"}
!202 = !{!203}
!203 = distinct !{!203, !201, !"XXH3_scrambleAcc: argument 1"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"XXH3_accumulate_512: argument 0"}
!206 = distinct !{!206, !"XXH3_accumulate_512"}
!207 = !{!208, !209}
!208 = distinct !{!208, !206, !"XXH3_accumulate_512: argument 1"}
!209 = distinct !{!209, !206, !"XXH3_accumulate_512: argument 2"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"XXH3_accumulate_512: argument 0"}
!212 = distinct !{!212, !"XXH3_accumulate_512"}
!213 = !{!214, !215}
!214 = distinct !{!214, !212, !"XXH3_accumulate_512: argument 1"}
!215 = distinct !{!215, !212, !"XXH3_accumulate_512: argument 2"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"XXH3_accumulate_512: argument 0"}
!218 = distinct !{!218, !"XXH3_accumulate_512"}
!219 = !{!220, !221}
!220 = distinct !{!220, !218, !"XXH3_accumulate_512: argument 1"}
!221 = distinct !{!221, !218, !"XXH3_accumulate_512: argument 2"}
!222 = !{!223}
!223 = distinct !{!223, !218, !"XXH3_accumulate_512: argument 0:It1"}
!224 = !{!225}
!225 = distinct !{!225, !218, !"XXH3_accumulate_512: argument 0:It2"}
!226 = !{!227}
!227 = distinct !{!227, !218, !"XXH3_accumulate_512: argument 0:It3"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"XXH3_scrambleAcc: argument 0"}
!230 = distinct !{!230, !"XXH3_scrambleAcc"}
!231 = !{!232}
!232 = distinct !{!232, !230, !"XXH3_scrambleAcc: argument 1"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"XXH3_accumulate_512: argument 0"}
!235 = distinct !{!235, !"XXH3_accumulate_512"}
!236 = !{!237, !238}
!237 = distinct !{!237, !235, !"XXH3_accumulate_512: argument 1"}
!238 = distinct !{!238, !235, !"XXH3_accumulate_512: argument 2"}
!239 = !{!240}
!240 = distinct !{!240, !241, !"XXH3_accumulate_512: argument 0"}
!241 = distinct !{!241, !"XXH3_accumulate_512"}
!242 = !{!243, !244}
!243 = distinct !{!243, !241, !"XXH3_accumulate_512: argument 1"}
!244 = distinct !{!244, !241, !"XXH3_accumulate_512: argument 2"}
!245 = !{!246}
!246 = distinct !{!246, !247, !"XXH3_accumulate_512: argument 0"}
!247 = distinct !{!247, !"XXH3_accumulate_512"}
!248 = !{!249, !250}
!249 = distinct !{!249, !247, !"XXH3_accumulate_512: argument 1"}
!250 = distinct !{!250, !247, !"XXH3_accumulate_512: argument 2"}
!251 = !{!252}
!252 = distinct !{!252, !247, !"XXH3_accumulate_512: argument 0:It1"}
!253 = !{!254}
!254 = distinct !{!254, !247, !"XXH3_accumulate_512: argument 0:It2"}
!255 = !{!256}
!256 = distinct !{!256, !247, !"XXH3_accumulate_512: argument 0:It3"}
!257 = distinct !{!257, !7}
!258 = !{!259}
!259 = distinct !{!259, !260, !"XXH3_accumulate_512: argument 0"}
!260 = distinct !{!260, !"XXH3_accumulate_512"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"XXH3_scrambleAcc: argument 0"}
!263 = distinct !{!263, !"XXH3_scrambleAcc"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"XXH3_accumulate_512: argument 0"}
!266 = distinct !{!266, !"XXH3_accumulate_512"}
!267 = !{!268}
!268 = distinct !{!268, !269, !"XXH3_accumulate_512: argument 0"}
!269 = distinct !{!269, !"XXH3_accumulate_512"}
!270 = !{!271}
!271 = distinct !{!271, !272, !"XXH3_accumulate_512: argument 0"}
!272 = distinct !{!272, !"XXH3_accumulate_512"}
!273 = !{!274}
!274 = distinct !{!274, !275, !"XXH3_accumulate_512: argument 0"}
!275 = distinct !{!275, !"XXH3_accumulate_512"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"XXH3_mergeAccs: argument 1"}
!278 = distinct !{!278, !"XXH3_mergeAccs"}
!279 = !{!280}
!280 = distinct !{!280, !278, !"XXH3_mergeAccs: argument 0"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"XXH3_mix16B: argument 1"}
!283 = distinct !{!283, !"XXH3_mix16B"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"XXH3_mix16B: argument 1"}
!286 = distinct !{!286, !"XXH3_mix16B"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"XXH3_mix16B: argument 1"}
!289 = distinct !{!289, !"XXH3_mix16B"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"XXH3_mix16B: argument 1"}
!292 = distinct !{!292, !"XXH3_mix16B"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"XXH3_mix16B: argument 1"}
!295 = distinct !{!295, !"XXH3_mix16B"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"XXH3_mix16B: argument 1"}
!298 = distinct !{!298, !"XXH3_mix16B"}
!299 = !{!300}
!300 = distinct !{!300, !301, !"XXH3_mix16B: argument 1"}
!301 = distinct !{!301, !"XXH3_mix16B"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"XXH3_mix16B: argument 1"}
!304 = distinct !{!304, !"XXH3_mix16B"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"XXH3_mix16B: argument 1"}
!307 = distinct !{!307, !"XXH3_mix16B"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"XXH3_mix16B: argument 1"}
!310 = distinct !{!310, !"XXH3_mix16B"}
!311 = !{!312}
!312 = distinct !{!312, !313, !"XXH3_mix16B: argument 1"}
!313 = distinct !{!313, !"XXH3_mix16B"}
!314 = !{!315}
!315 = distinct !{!315, !316, !"XXH3_mix16B: argument 1"}
!316 = distinct !{!316, !"XXH3_mix16B"}
!317 = distinct !{!317, !7}
!318 = !{!319}
!319 = distinct !{!319, !320, !"XXH3_mix16B: argument 1"}
!320 = distinct !{!320, !"XXH3_mix16B"}
!321 = !{!322}
!322 = distinct !{!322, !323, !"XXH3_mix16B: argument 1"}
!323 = distinct !{!323, !"XXH3_mix16B"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"XXH3_hashLong_128b_internal: argument 0"}
!326 = distinct !{!326, !"XXH3_hashLong_128b_internal"}
!327 = !{!328}
!328 = distinct !{!328, !326, !"XXH3_hashLong_128b_internal: argument 1"}
!329 = !{!330, !328}
!330 = distinct !{!330, !331, !"XXH3_accumulate_512: argument 0"}
!331 = distinct !{!331, !"XXH3_accumulate_512"}
!332 = !{!333, !328}
!333 = distinct !{!333, !331, !"XXH3_accumulate_512: argument 0:It1"}
!334 = !{!335, !328}
!335 = distinct !{!335, !331, !"XXH3_accumulate_512: argument 0:It2"}
!336 = !{!337, !328}
!337 = distinct !{!337, !331, !"XXH3_accumulate_512: argument 0:It3"}
!338 = !{!339, !328}
!339 = distinct !{!339, !331, !"XXH3_accumulate_512: argument 0:It4"}
!340 = !{!341, !328}
!341 = distinct !{!341, !331, !"XXH3_accumulate_512: argument 0:It5"}
!342 = !{!343, !328}
!343 = distinct !{!343, !331, !"XXH3_accumulate_512: argument 0:It6"}
!344 = !{!345, !328}
!345 = distinct !{!345, !331, !"XXH3_accumulate_512: argument 0:It7"}
!346 = !{!347, !328}
!347 = distinct !{!347, !331, !"XXH3_accumulate_512: argument 0:It8"}
!348 = !{!349, !328}
!349 = distinct !{!349, !331, !"XXH3_accumulate_512: argument 0:It9"}
!350 = !{!351, !328}
!351 = distinct !{!351, !331, !"XXH3_accumulate_512: argument 0:It10"}
!352 = !{!353, !328}
!353 = distinct !{!353, !331, !"XXH3_accumulate_512: argument 0:It11"}
!354 = !{!355, !328}
!355 = distinct !{!355, !331, !"XXH3_accumulate_512: argument 0:It12"}
!356 = !{!357, !328}
!357 = distinct !{!357, !331, !"XXH3_accumulate_512: argument 0:It13"}
!358 = !{!359, !328}
!359 = distinct !{!359, !331, !"XXH3_accumulate_512: argument 0:It14"}
!360 = !{!361, !328}
!361 = distinct !{!361, !331, !"XXH3_accumulate_512: argument 0:It15"}
!362 = !{!363, !328}
!363 = distinct !{!363, !364, !"XXH3_accumulate_512: argument 0"}
!364 = distinct !{!364, !"XXH3_accumulate_512"}
!365 = !{!363, !325}
!366 = !{!367, !328}
!367 = distinct !{!367, !368, !"XXH3_accumulate_512: argument 0"}
!368 = distinct !{!368, !"XXH3_accumulate_512"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"XXH3_mix16B: argument 1"}
!371 = distinct !{!371, !"XXH3_mix16B"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"XXH3_mix16B: argument 1"}
!374 = distinct !{!374, !"XXH3_mix16B"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"XXH3_mix16B: argument 1"}
!377 = distinct !{!377, !"XXH3_mix16B"}
!378 = !{!379}
!379 = distinct !{!379, !380, !"XXH3_mix16B: argument 1"}
!380 = distinct !{!380, !"XXH3_mix16B"}
!381 = !{!382}
!382 = distinct !{!382, !383, !"XXH3_mix16B: argument 1"}
!383 = distinct !{!383, !"XXH3_mix16B"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"XXH3_mix16B: argument 1"}
!386 = distinct !{!386, !"XXH3_mix16B"}
!387 = !{!388}
!388 = distinct !{!388, !389, !"XXH3_mix16B: argument 1"}
!389 = distinct !{!389, !"XXH3_mix16B"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"XXH3_mix16B: argument 1"}
!392 = distinct !{!392, !"XXH3_mix16B"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"XXH3_hashLong_128b_internal: argument 0"}
!395 = distinct !{!395, !"XXH3_hashLong_128b_internal"}
!396 = !{!397}
!397 = distinct !{!397, !395, !"XXH3_hashLong_128b_internal: argument 1"}
!398 = !{!399, !394}
!399 = distinct !{!399, !400, !"XXH3_scrambleAcc: argument 0"}
!400 = distinct !{!400, !"XXH3_scrambleAcc"}
!401 = !{!402, !397}
!402 = distinct !{!402, !403, !"XXH3_accumulate_512: argument 0"}
!403 = distinct !{!403, !"XXH3_accumulate_512"}
!404 = !{!402, !394}
!405 = !{!406, !397}
!406 = distinct !{!406, !407, !"XXH3_accumulate_512: argument 0"}
!407 = distinct !{!407, !"XXH3_accumulate_512"}
!408 = !{!406, !394}
!409 = !{!410}
!410 = distinct !{!410, !411, !"XXH3_mergeAccs: argument 1"}
!411 = distinct !{!411, !"XXH3_mergeAccs"}
!412 = !{!413, !415, !394}
!413 = distinct !{!413, !414, !"XXH3_mix2Accs: argument 0"}
!414 = distinct !{!414, !"XXH3_mix2Accs"}
!415 = distinct !{!415, !411, !"XXH3_mergeAccs: argument 0"}
!416 = !{!417, !415, !394}
!417 = distinct !{!417, !418, !"XXH3_mix2Accs: argument 0"}
!418 = distinct !{!418, !"XXH3_mix2Accs"}
!419 = !{!420, !397}
!420 = distinct !{!420, !421, !"XXH3_accumulate_512: argument 0"}
!421 = distinct !{!421, !"XXH3_accumulate_512"}
!422 = !{!420, !394}
!423 = !{!424}
!424 = distinct !{!424, !425, !"XXH3_mergeAccs: argument 1"}
!425 = distinct !{!425, !"XXH3_mergeAccs"}
!426 = !{!427, !429, !394}
!427 = distinct !{!427, !428, !"XXH3_mix2Accs: argument 0"}
!428 = distinct !{!428, !"XXH3_mix2Accs"}
!429 = distinct !{!429, !425, !"XXH3_mergeAccs: argument 0"}
!430 = !{!431, !429, !394}
!431 = distinct !{!431, !432, !"XXH3_mix2Accs: argument 0"}
!432 = distinct !{!432, !"XXH3_mix2Accs"}
!433 = !{!434, !429, !394}
!434 = distinct !{!434, !435, !"XXH3_mix2Accs: argument 0"}
!435 = distinct !{!435, !"XXH3_mix2Accs"}
!436 = !{!437, !429, !394}
!437 = distinct !{!437, !438, !"XXH3_mix2Accs: argument 0"}
!438 = distinct !{!438, !"XXH3_mix2Accs"}
!439 = !{!440, !415, !394}
!440 = distinct !{!440, !441, !"XXH3_mix2Accs: argument 0"}
!441 = distinct !{!441, !"XXH3_mix2Accs"}
!442 = !{!443, !415, !394}
!443 = distinct !{!443, !444, !"XXH3_mix2Accs: argument 0"}
!444 = distinct !{!444, !"XXH3_mix2Accs"}
!445 = !{!446}
!446 = distinct !{!446, !447, !"XXH3_mix16B: argument 1"}
!447 = distinct !{!447, !"XXH3_mix16B"}
!448 = !{!449}
!449 = distinct !{!449, !450, !"XXH3_mix16B: argument 1"}
!450 = distinct !{!450, !"XXH3_mix16B"}
!451 = !{!452}
!452 = distinct !{!452, !453, !"XXH3_mix16B: argument 1"}
!453 = distinct !{!453, !"XXH3_mix16B"}
!454 = !{!455}
!455 = distinct !{!455, !456, !"XXH3_mix16B: argument 1"}
!456 = distinct !{!456, !"XXH3_mix16B"}
!457 = !{!458}
!458 = distinct !{!458, !459, !"XXH3_mix16B: argument 1"}
!459 = distinct !{!459, !"XXH3_mix16B"}
!460 = !{!461}
!461 = distinct !{!461, !462, !"XXH3_mix16B: argument 1"}
!462 = distinct !{!462, !"XXH3_mix16B"}
!463 = !{!464}
!464 = distinct !{!464, !465, !"XXH3_mix16B: argument 1"}
!465 = distinct !{!465, !"XXH3_mix16B"}
!466 = !{!467}
!467 = distinct !{!467, !468, !"XXH3_mix16B: argument 1"}
!468 = distinct !{!468, !"XXH3_mix16B"}
!469 = !{!470}
!470 = distinct !{!470, !471, !"XXH3_hashLong_128b_internal: argument 0"}
!471 = distinct !{!471, !"XXH3_hashLong_128b_internal"}
!472 = !{!473}
!473 = distinct !{!473, !471, !"XXH3_hashLong_128b_internal: argument 1"}
!474 = !{!475, !470}
!475 = distinct !{!475, !476, !"XXH3_accumulate_512: argument 0"}
!476 = distinct !{!476, !"XXH3_accumulate_512"}
!477 = !{!478, !470}
!478 = distinct !{!478, !476, !"XXH3_accumulate_512: argument 0:It1"}
!479 = !{!480, !470}
!480 = distinct !{!480, !476, !"XXH3_accumulate_512: argument 0:It2"}
!481 = !{!482, !470}
!482 = distinct !{!482, !476, !"XXH3_accumulate_512: argument 0:It3"}
!483 = !{!484, !470}
!484 = distinct !{!484, !476, !"XXH3_accumulate_512: argument 0:It4"}
!485 = !{!486, !470}
!486 = distinct !{!486, !476, !"XXH3_accumulate_512: argument 0:It5"}
!487 = !{!488, !470}
!488 = distinct !{!488, !476, !"XXH3_accumulate_512: argument 0:It6"}
!489 = !{!490, !470}
!490 = distinct !{!490, !476, !"XXH3_accumulate_512: argument 0:It7"}
!491 = !{!492, !470}
!492 = distinct !{!492, !476, !"XXH3_accumulate_512: argument 0:It8"}
!493 = !{!494, !470}
!494 = distinct !{!494, !476, !"XXH3_accumulate_512: argument 0:It9"}
!495 = !{!496, !470}
!496 = distinct !{!496, !476, !"XXH3_accumulate_512: argument 0:It10"}
!497 = !{!498, !470}
!498 = distinct !{!498, !476, !"XXH3_accumulate_512: argument 0:It11"}
!499 = !{!500, !470}
!500 = distinct !{!500, !476, !"XXH3_accumulate_512: argument 0:It12"}
!501 = !{!502, !470}
!502 = distinct !{!502, !476, !"XXH3_accumulate_512: argument 0:It13"}
!503 = !{!504, !470}
!504 = distinct !{!504, !476, !"XXH3_accumulate_512: argument 0:It14"}
!505 = !{!506, !470}
!506 = distinct !{!506, !476, !"XXH3_accumulate_512: argument 0:It15"}
!507 = !{!508, !470}
!508 = distinct !{!508, !509, !"XXH3_scrambleAcc: argument 0"}
!509 = distinct !{!509, !"XXH3_scrambleAcc"}
!510 = !{!475, !473}
!511 = !{!478, !473}
!512 = !{!480, !473}
!513 = !{!482, !473}
!514 = !{!484, !473}
!515 = !{!486, !473}
!516 = !{!488, !473}
!517 = !{!490, !473}
!518 = !{!492, !473}
!519 = !{!494, !473}
!520 = !{!496, !473}
!521 = !{!498, !473}
!522 = !{!500, !473}
!523 = !{!502, !473}
!524 = !{!504, !473}
!525 = !{!506, !473}
!526 = !{!527, !473}
!527 = distinct !{!527, !528, !"XXH3_accumulate_512: argument 0"}
!528 = distinct !{!528, !"XXH3_accumulate_512"}
!529 = !{!527, !470}
!530 = !{!531}
!531 = distinct !{!531, !532, !"XXH3_mergeAccs: argument 1"}
!532 = distinct !{!532, !"XXH3_mergeAccs"}
!533 = !{!534, !536, !470}
!534 = distinct !{!534, !535, !"XXH3_mix2Accs: argument 0"}
!535 = distinct !{!535, !"XXH3_mix2Accs"}
!536 = distinct !{!536, !532, !"XXH3_mergeAccs: argument 0"}
!537 = !{!538, !536, !470}
!538 = distinct !{!538, !539, !"XXH3_mix2Accs: argument 0"}
!539 = distinct !{!539, !"XXH3_mix2Accs"}
!540 = !{!541, !473}
!541 = distinct !{!541, !542, !"XXH3_accumulate_512: argument 0"}
!542 = distinct !{!542, !"XXH3_accumulate_512"}
!543 = !{!541, !470}
!544 = !{!545}
!545 = distinct !{!545, !546, !"XXH3_mergeAccs: argument 1"}
!546 = distinct !{!546, !"XXH3_mergeAccs"}
!547 = !{!548, !550, !470}
!548 = distinct !{!548, !549, !"XXH3_mix2Accs: argument 0"}
!549 = distinct !{!549, !"XXH3_mix2Accs"}
!550 = distinct !{!550, !546, !"XXH3_mergeAccs: argument 0"}
!551 = !{!552, !550, !470}
!552 = distinct !{!552, !553, !"XXH3_mix2Accs: argument 0"}
!553 = distinct !{!553, !"XXH3_mix2Accs"}
!554 = !{!555, !550, !470}
!555 = distinct !{!555, !556, !"XXH3_mix2Accs: argument 0"}
!556 = distinct !{!556, !"XXH3_mix2Accs"}
!557 = !{!558, !550, !470}
!558 = distinct !{!558, !559, !"XXH3_mix2Accs: argument 0"}
!559 = distinct !{!559, !"XXH3_mix2Accs"}
!560 = !{!561, !536, !470}
!561 = distinct !{!561, !562, !"XXH3_mix2Accs: argument 0"}
!562 = distinct !{!562, !"XXH3_mix2Accs"}
!563 = !{!564, !536, !470}
!564 = distinct !{!564, !565, !"XXH3_mix2Accs: argument 0"}
!565 = distinct !{!565, !"XXH3_mix2Accs"}
!566 = !{!567}
!567 = distinct !{!567, !568, !"XXH3_scrambleAcc: argument 0"}
!568 = distinct !{!568, !"XXH3_scrambleAcc"}
!569 = !{!570}
!570 = distinct !{!570, !568, !"XXH3_scrambleAcc: argument 1"}
!571 = !{!572}
!572 = distinct !{!572, !573, !"XXH3_accumulate_512: argument 0"}
!573 = distinct !{!573, !"XXH3_accumulate_512"}
!574 = !{!575, !576}
!575 = distinct !{!575, !573, !"XXH3_accumulate_512: argument 1"}
!576 = distinct !{!576, !573, !"XXH3_accumulate_512: argument 2"}
!577 = !{!578}
!578 = distinct !{!578, !579, !"XXH3_accumulate_512: argument 0"}
!579 = distinct !{!579, !"XXH3_accumulate_512"}
!580 = !{!581, !582}
!581 = distinct !{!581, !579, !"XXH3_accumulate_512: argument 1"}
!582 = distinct !{!582, !579, !"XXH3_accumulate_512: argument 2"}
!583 = !{!584}
!584 = distinct !{!584, !585, !"XXH3_accumulate_512: argument 0"}
!585 = distinct !{!585, !"XXH3_accumulate_512"}
!586 = !{!587, !588}
!587 = distinct !{!587, !585, !"XXH3_accumulate_512: argument 1"}
!588 = distinct !{!588, !585, !"XXH3_accumulate_512: argument 2"}
!589 = !{!590}
!590 = distinct !{!590, !585, !"XXH3_accumulate_512: argument 0:It1"}
!591 = !{!592}
!592 = distinct !{!592, !585, !"XXH3_accumulate_512: argument 0:It2"}
!593 = !{!594}
!594 = distinct !{!594, !585, !"XXH3_accumulate_512: argument 0:It3"}
!595 = !{!596}
!596 = distinct !{!596, !597, !"XXH3_scrambleAcc: argument 0"}
!597 = distinct !{!597, !"XXH3_scrambleAcc"}
!598 = !{!599}
!599 = distinct !{!599, !597, !"XXH3_scrambleAcc: argument 1"}
!600 = !{!601}
!601 = distinct !{!601, !602, !"XXH3_accumulate_512: argument 0"}
!602 = distinct !{!602, !"XXH3_accumulate_512"}
!603 = !{!604, !605}
!604 = distinct !{!604, !602, !"XXH3_accumulate_512: argument 1"}
!605 = distinct !{!605, !602, !"XXH3_accumulate_512: argument 2"}
!606 = !{!607}
!607 = distinct !{!607, !608, !"XXH3_accumulate_512: argument 0"}
!608 = distinct !{!608, !"XXH3_accumulate_512"}
!609 = !{!610, !611}
!610 = distinct !{!610, !608, !"XXH3_accumulate_512: argument 1"}
!611 = distinct !{!611, !608, !"XXH3_accumulate_512: argument 2"}
!612 = !{!613}
!613 = distinct !{!613, !614, !"XXH3_accumulate_512: argument 0"}
!614 = distinct !{!614, !"XXH3_accumulate_512"}
!615 = !{!616, !617}
!616 = distinct !{!616, !614, !"XXH3_accumulate_512: argument 1"}
!617 = distinct !{!617, !614, !"XXH3_accumulate_512: argument 2"}
!618 = !{!619}
!619 = distinct !{!619, !614, !"XXH3_accumulate_512: argument 0:It1"}
!620 = !{!621}
!621 = distinct !{!621, !614, !"XXH3_accumulate_512: argument 0:It2"}
!622 = !{!623}
!623 = distinct !{!623, !614, !"XXH3_accumulate_512: argument 0:It3"}
!624 = !{!625}
!625 = distinct !{!625, !626, !"XXH3_accumulate_512: argument 0"}
!626 = distinct !{!626, !"XXH3_accumulate_512"}
!627 = !{!628}
!628 = distinct !{!628, !629, !"XXH3_scrambleAcc: argument 0"}
!629 = distinct !{!629, !"XXH3_scrambleAcc"}
!630 = !{!631}
!631 = distinct !{!631, !632, !"XXH3_accumulate_512: argument 0"}
!632 = distinct !{!632, !"XXH3_accumulate_512"}
!633 = !{!634}
!634 = distinct !{!634, !635, !"XXH3_accumulate_512: argument 0"}
!635 = distinct !{!635, !"XXH3_accumulate_512"}
!636 = !{!637}
!637 = distinct !{!637, !638, !"XXH3_accumulate_512: argument 0"}
!638 = distinct !{!638, !"XXH3_accumulate_512"}
!639 = !{!640}
!640 = distinct !{!640, !641, !"XXH3_accumulate_512: argument 0"}
!641 = distinct !{!641, !"XXH3_accumulate_512"}
!642 = !{!643}
!643 = distinct !{!643, !644, !"XXH3_mergeAccs: argument 1"}
!644 = distinct !{!644, !"XXH3_mergeAccs"}
!645 = !{!646, !648}
!646 = distinct !{!646, !647, !"XXH3_mix2Accs: argument 0"}
!647 = distinct !{!647, !"XXH3_mix2Accs"}
!648 = distinct !{!648, !644, !"XXH3_mergeAccs: argument 0"}
!649 = !{!650, !648}
!650 = distinct !{!650, !651, !"XXH3_mix2Accs: argument 0"}
!651 = distinct !{!651, !"XXH3_mix2Accs"}
!652 = !{!653, !648}
!653 = distinct !{!653, !654, !"XXH3_mix2Accs: argument 0"}
!654 = distinct !{!654, !"XXH3_mix2Accs"}
!655 = !{!656, !648}
!656 = distinct !{!656, !657, !"XXH3_mix2Accs: argument 0"}
!657 = distinct !{!657, !"XXH3_mix2Accs"}
!658 = !{!659}
!659 = distinct !{!659, !660, !"XXH3_mergeAccs: argument 1"}
!660 = distinct !{!660, !"XXH3_mergeAccs"}
!661 = !{!662, !664}
!662 = distinct !{!662, !663, !"XXH3_mix2Accs: argument 0"}
!663 = distinct !{!663, !"XXH3_mix2Accs"}
!664 = distinct !{!664, !660, !"XXH3_mergeAccs: argument 0"}
!665 = !{!666, !664}
!666 = distinct !{!666, !667, !"XXH3_mix2Accs: argument 0"}
!667 = distinct !{!667, !"XXH3_mix2Accs"}
!668 = !{!669, !664}
!669 = distinct !{!669, !670, !"XXH3_mix2Accs: argument 0"}
!670 = distinct !{!670, !"XXH3_mix2Accs"}
!671 = !{!672, !664}
!672 = distinct !{!672, !673, !"XXH3_mix2Accs: argument 0"}
!673 = distinct !{!673, !"XXH3_mix2Accs"}
