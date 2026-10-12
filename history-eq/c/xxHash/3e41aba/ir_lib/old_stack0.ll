; ModuleID = '3e41aba/old/xxhash.c'
source_filename = "3e41aba/old/xxhash.c"
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
  %22 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %21) #27, !srcloc !5
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %14
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %28) #27, !srcloc !5
  %30 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %15
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %35) #27, !srcloc !5
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %38 = load i32, ptr %37, align 1
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %16
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %42) #27, !srcloc !5
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %45 = icmp ult ptr %44, %7
  br i1 %45, label %11, label %46, !llvm.loop !6

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %0, ptr noundef nonnull readonly align 1 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_reset(ptr nocapture noundef writeonly initializes((0, 44)) %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  store i64 0, ptr %0, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %6, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %7, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %8, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %5, ptr %9, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %10, i8 0, i64 20, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @XXH32_update(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %128, label %5

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
  br label %126

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
  br i1 %76, label %117, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %82

82:                                               ; preds = %77, %82
  %83 = phi ptr [ %115, %82 ], [ %74, %77 ]
  %84 = load i32, ptr %78, align 4
  %85 = load i32, ptr %83, align 1
  %86 = mul i32 %85, -2048144777
  %87 = add i32 %86, %84
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 13)
  %89 = mul i32 %88, -1640531535
  %90 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %89) #27, !srcloc !5
  store i32 %90, ptr %78, align 4
  %91 = getelementptr inbounds nuw i8, ptr %83, i64 4
  %92 = load i32, ptr %79, align 4
  %93 = load i32, ptr %91, align 1
  %94 = mul i32 %93, -2048144777
  %95 = add i32 %94, %92
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %97) #27, !srcloc !5
  store i32 %98, ptr %79, align 4
  %99 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %100 = load i32, ptr %80, align 4
  %101 = load i32, ptr %99, align 1
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %100
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %105) #27, !srcloc !5
  store i32 %106, ptr %80, align 4
  %107 = getelementptr inbounds nuw i8, ptr %83, i64 12
  %108 = load i32, ptr %81, align 4
  %109 = load i32, ptr %107, align 1
  %110 = mul i32 %109, -2048144777
  %111 = add i32 %110, %108
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 13)
  %113 = mul i32 %112, -1640531535
  %114 = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %113) #27, !srcloc !5
  store i32 %114, ptr %81, align 4
  %115 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %116 = icmp ugt ptr %115, %75
  br i1 %116, label %117, label %82, !llvm.loop !8

117:                                              ; preds = %82, %73
  %118 = phi ptr [ %74, %73 ], [ %115, %82 ]
  %119 = icmp ult ptr %118, %6
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %122 = ptrtoint ptr %6 to i64
  %123 = ptrtoint ptr %118 to i64
  %124 = sub i64 %122, %123
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %121, ptr nonnull readonly align 1 %118, i64 %124, i1 false)
  %125 = trunc i64 %124 to i32
  br label %126

126:                                              ; preds = %120, %22
  %127 = phi i32 [ %26, %22 ], [ %125, %120 ]
  store i32 %127, ptr %17, align 4
  br label %128

128:                                              ; preds = %126, %117, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XXH32_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
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
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @XXH32_finalize(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #8 {
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
define dso_local void @XXH32_canonicalFromHash(ptr nocapture noundef writeonly initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @XXH32_hashFromCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load i32, ptr %0, align 1
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #10 {
  %4 = icmp ugt i64 %1, 31
  br i1 %4, label %5, label %74

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %7 = getelementptr inbounds i8, ptr %6, i64 -31
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
  %41 = icmp ult ptr %40, %7
  br i1 %41, label %11, label %42, !llvm.loop !9

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
  %80 = and i64 %1, 31
  %81 = icmp samesign ugt i64 %80, 7
  br i1 %81, label %82, label %156

82:                                               ; preds = %76
  %83 = add nsw i64 %80, -8
  %84 = lshr i64 %83, 3
  %85 = add nuw nsw i64 %84, 1
  %86 = and i64 %85, 3
  %87 = and i64 %83, 24
  %88 = icmp eq i64 %87, 24
  br i1 %88, label %106, label %89

89:                                               ; preds = %82, %89
  %90 = phi i64 [ %102, %89 ], [ %79, %82 ]
  %91 = phi ptr [ %98, %89 ], [ %78, %82 ]
  %92 = phi i64 [ %103, %89 ], [ %80, %82 ]
  %93 = phi i64 [ %104, %89 ], [ 0, %82 ]
  %94 = load i64, ptr %91, align 1
  %95 = mul i64 %94, -4417276706812531889
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 31)
  %97 = mul i64 %96, -7046029288634856825
  %98 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %99 = xor i64 %97, %90
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 27)
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  %103 = add nsw i64 %92, -8
  %104 = add i64 %93, 1
  %105 = icmp eq i64 %104, %86
  br i1 %105, label %106, label %89, !llvm.loop !10

106:                                              ; preds = %89, %82
  %107 = phi i64 [ %79, %82 ], [ %102, %89 ]
  %108 = phi ptr [ %78, %82 ], [ %98, %89 ]
  %109 = phi i64 [ %80, %82 ], [ %103, %89 ]
  %110 = phi ptr [ poison, %82 ], [ %98, %89 ]
  %111 = phi i64 [ poison, %82 ], [ %102, %89 ]
  %112 = phi i64 [ poison, %82 ], [ %103, %89 ]
  %113 = icmp ult i64 %83, 24
  br i1 %113, label %156, label %114

114:                                              ; preds = %106, %114
  %115 = phi i64 [ %153, %114 ], [ %107, %106 ]
  %116 = phi ptr [ %149, %114 ], [ %108, %106 ]
  %117 = phi i64 [ %154, %114 ], [ %109, %106 ]
  %118 = load i64, ptr %116, align 1
  %119 = mul i64 %118, -4417276706812531889
  %120 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 31)
  %121 = mul i64 %120, -7046029288634856825
  %122 = getelementptr inbounds nuw i8, ptr %116, i64 8
  %123 = xor i64 %121, %115
  %124 = tail call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 27)
  %125 = mul i64 %124, -7046029288634856825
  %126 = add i64 %125, -8796714831421723037
  %127 = load i64, ptr %122, align 1
  %128 = mul i64 %127, -4417276706812531889
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 31)
  %130 = mul i64 %129, -7046029288634856825
  %131 = getelementptr inbounds nuw i8, ptr %116, i64 16
  %132 = xor i64 %130, %126
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 27)
  %134 = mul i64 %133, -7046029288634856825
  %135 = add i64 %134, -8796714831421723037
  %136 = load i64, ptr %131, align 1
  %137 = mul i64 %136, -4417276706812531889
  %138 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 31)
  %139 = mul i64 %138, -7046029288634856825
  %140 = getelementptr inbounds nuw i8, ptr %116, i64 24
  %141 = xor i64 %139, %135
  %142 = tail call i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 27)
  %143 = mul i64 %142, -7046029288634856825
  %144 = add i64 %143, -8796714831421723037
  %145 = load i64, ptr %140, align 1
  %146 = mul i64 %145, -4417276706812531889
  %147 = tail call i64 @llvm.fshl.i64(i64 %146, i64 %146, i64 31)
  %148 = mul i64 %147, -7046029288634856825
  %149 = getelementptr inbounds nuw i8, ptr %116, i64 32
  %150 = xor i64 %148, %144
  %151 = tail call i64 @llvm.fshl.i64(i64 %150, i64 %150, i64 27)
  %152 = mul i64 %151, -7046029288634856825
  %153 = add i64 %152, -8796714831421723037
  %154 = add nsw i64 %117, -32
  %155 = icmp ugt i64 %154, 7
  br i1 %155, label %114, label %156, !llvm.loop !12

156:                                              ; preds = %106, %114, %76
  %157 = phi i64 [ %80, %76 ], [ %112, %106 ], [ %154, %114 ]
  %158 = phi ptr [ %78, %76 ], [ %110, %106 ], [ %149, %114 ]
  %159 = phi i64 [ %79, %76 ], [ %111, %106 ], [ %153, %114 ]
  %160 = icmp samesign ugt i64 %157, 3
  br i1 %160, label %161, label %171

161:                                              ; preds = %156
  %162 = load i32, ptr %158, align 1
  %163 = zext i32 %162 to i64
  %164 = mul i64 %163, -7046029288634856825
  %165 = xor i64 %164, %159
  %166 = getelementptr inbounds nuw i8, ptr %158, i64 4
  %167 = tail call i64 @llvm.fshl.i64(i64 %165, i64 %165, i64 23)
  %168 = mul i64 %167, -4417276706812531889
  %169 = add i64 %168, 1609587929392839161
  %170 = add nsw i64 %157, -4
  br label %171

171:                                              ; preds = %161, %156
  %172 = phi i64 [ %170, %161 ], [ %157, %156 ]
  %173 = phi ptr [ %166, %161 ], [ %158, %156 ]
  %174 = phi i64 [ %169, %161 ], [ %159, %156 ]
  %175 = icmp eq i64 %172, 0
  br i1 %175, label %262, label %176

176:                                              ; preds = %171
  %177 = and i64 %172, 7
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %194, label %179

179:                                              ; preds = %176, %179
  %180 = phi i64 [ %190, %179 ], [ %174, %176 ]
  %181 = phi ptr [ %184, %179 ], [ %173, %176 ]
  %182 = phi i64 [ %191, %179 ], [ %172, %176 ]
  %183 = phi i64 [ %192, %179 ], [ 0, %176 ]
  %184 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %185 = load i8, ptr %181, align 1
  %186 = zext i8 %185 to i64
  %187 = mul i64 %186, 2870177450012600261
  %188 = xor i64 %187, %180
  %189 = tail call i64 @llvm.fshl.i64(i64 %188, i64 %188, i64 11)
  %190 = mul i64 %189, -7046029288634856825
  %191 = add nsw i64 %182, -1
  %192 = add i64 %183, 1
  %193 = icmp eq i64 %192, %177
  br i1 %193, label %194, label %179, !llvm.loop !13

194:                                              ; preds = %179, %176
  %195 = phi i64 [ poison, %176 ], [ %190, %179 ]
  %196 = phi i64 [ %174, %176 ], [ %190, %179 ]
  %197 = phi ptr [ %173, %176 ], [ %184, %179 ]
  %198 = phi i64 [ %172, %176 ], [ %191, %179 ]
  %199 = icmp ult i64 %172, 8
  br i1 %199, label %262, label %200

200:                                              ; preds = %194, %200
  %201 = phi i64 [ %259, %200 ], [ %196, %194 ]
  %202 = phi ptr [ %253, %200 ], [ %197, %194 ]
  %203 = phi i64 [ %260, %200 ], [ %198, %194 ]
  %204 = getelementptr inbounds nuw i8, ptr %202, i64 1
  %205 = load i8, ptr %202, align 1
  %206 = zext i8 %205 to i64
  %207 = mul i64 %206, 2870177450012600261
  %208 = xor i64 %207, %201
  %209 = tail call i64 @llvm.fshl.i64(i64 %208, i64 %208, i64 11)
  %210 = mul i64 %209, -7046029288634856825
  %211 = getelementptr inbounds nuw i8, ptr %202, i64 2
  %212 = load i8, ptr %204, align 1
  %213 = zext i8 %212 to i64
  %214 = mul i64 %213, 2870177450012600261
  %215 = xor i64 %214, %210
  %216 = tail call i64 @llvm.fshl.i64(i64 %215, i64 %215, i64 11)
  %217 = mul i64 %216, -7046029288634856825
  %218 = getelementptr inbounds nuw i8, ptr %202, i64 3
  %219 = load i8, ptr %211, align 1
  %220 = zext i8 %219 to i64
  %221 = mul i64 %220, 2870177450012600261
  %222 = xor i64 %221, %217
  %223 = tail call i64 @llvm.fshl.i64(i64 %222, i64 %222, i64 11)
  %224 = mul i64 %223, -7046029288634856825
  %225 = getelementptr inbounds nuw i8, ptr %202, i64 4
  %226 = load i8, ptr %218, align 1
  %227 = zext i8 %226 to i64
  %228 = mul i64 %227, 2870177450012600261
  %229 = xor i64 %228, %224
  %230 = tail call i64 @llvm.fshl.i64(i64 %229, i64 %229, i64 11)
  %231 = mul i64 %230, -7046029288634856825
  %232 = getelementptr inbounds nuw i8, ptr %202, i64 5
  %233 = load i8, ptr %225, align 1
  %234 = zext i8 %233 to i64
  %235 = mul i64 %234, 2870177450012600261
  %236 = xor i64 %235, %231
  %237 = tail call i64 @llvm.fshl.i64(i64 %236, i64 %236, i64 11)
  %238 = mul i64 %237, -7046029288634856825
  %239 = getelementptr inbounds nuw i8, ptr %202, i64 6
  %240 = load i8, ptr %232, align 1
  %241 = zext i8 %240 to i64
  %242 = mul i64 %241, 2870177450012600261
  %243 = xor i64 %242, %238
  %244 = tail call i64 @llvm.fshl.i64(i64 %243, i64 %243, i64 11)
  %245 = mul i64 %244, -7046029288634856825
  %246 = getelementptr inbounds nuw i8, ptr %202, i64 7
  %247 = load i8, ptr %239, align 1
  %248 = zext i8 %247 to i64
  %249 = mul i64 %248, 2870177450012600261
  %250 = xor i64 %249, %245
  %251 = tail call i64 @llvm.fshl.i64(i64 %250, i64 %250, i64 11)
  %252 = mul i64 %251, -7046029288634856825
  %253 = getelementptr inbounds nuw i8, ptr %202, i64 8
  %254 = load i8, ptr %246, align 1
  %255 = zext i8 %254 to i64
  %256 = mul i64 %255, 2870177450012600261
  %257 = xor i64 %256, %252
  %258 = tail call i64 @llvm.fshl.i64(i64 %257, i64 %257, i64 11)
  %259 = mul i64 %258, -7046029288634856825
  %260 = add nsw i64 %203, -8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %200, !llvm.loop !14

262:                                              ; preds = %194, %200, %171
  %263 = phi i64 [ %174, %171 ], [ %195, %194 ], [ %259, %200 ]
  %264 = lshr i64 %263, 33
  %265 = xor i64 %264, %263
  %266 = mul i64 %265, -4417276706812531889
  %267 = lshr i64 %266, 29
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587929392839161
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  ret i64 %271
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %0, ptr noundef nonnull readonly align 1 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH64_reset(ptr nocapture noundef writeonly initializes((0, 80)) %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  store i64 0, ptr %0, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %6, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %7, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %8, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %5, ptr %9, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH64_update(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %118, label %5

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
  br label %116

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
  br i1 %65, label %107, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %6, i64 -32
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %72 = load i64, ptr %68, align 8
  %73 = load i64, ptr %69, align 8
  %74 = load i64, ptr %70, align 8
  %75 = load i64, ptr %71, align 8
  br label %76

76:                                               ; preds = %76, %66
  %77 = phi i64 [ %75, %66 ], [ %104, %76 ]
  %78 = phi i64 [ %74, %66 ], [ %98, %76 ]
  %79 = phi i64 [ %73, %66 ], [ %92, %76 ]
  %80 = phi i64 [ %72, %66 ], [ %86, %76 ]
  %81 = phi ptr [ %63, %66 ], [ %105, %76 ]
  %82 = load i64, ptr %81, align 1
  %83 = mul i64 %82, -4417276706812531889
  %84 = add i64 %83, %80
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 31)
  %86 = mul i64 %85, -7046029288634856825
  store i64 %86, ptr %68, align 8
  %87 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = mul i64 %88, -4417276706812531889
  %90 = add i64 %89, %79
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 31)
  %92 = mul i64 %91, -7046029288634856825
  store i64 %92, ptr %69, align 8
  %93 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %94 = load i64, ptr %93, align 1
  %95 = mul i64 %94, -4417276706812531889
  %96 = add i64 %95, %78
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 31)
  %98 = mul i64 %97, -7046029288634856825
  store i64 %98, ptr %70, align 8
  %99 = getelementptr inbounds nuw i8, ptr %81, i64 24
  %100 = load i64, ptr %99, align 1
  %101 = mul i64 %100, -4417276706812531889
  %102 = add i64 %101, %77
  %103 = tail call i64 @llvm.fshl.i64(i64 %102, i64 %102, i64 31)
  %104 = mul i64 %103, -7046029288634856825
  store i64 %104, ptr %71, align 8
  %105 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %106 = icmp ugt ptr %105, %67
  br i1 %106, label %107, label %76, !llvm.loop !15

107:                                              ; preds = %76, %62
  %108 = phi ptr [ %63, %62 ], [ %105, %76 ]
  %109 = icmp ult ptr %108, %6
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %112 = ptrtoint ptr %6 to i64
  %113 = ptrtoint ptr %108 to i64
  %114 = sub i64 %112, %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %111, ptr readonly align 1 %108, i64 %114, i1 false)
  %115 = trunc i64 %114 to i32
  br label %116

116:                                              ; preds = %110, %14
  %117 = phi i32 [ %19, %14 ], [ %115, %110 ]
  store i32 %117, ptr %9, align 8
  br label %118

118:                                              ; preds = %116, %107, %3
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i64, ptr %0, align 8
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 1)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 7)
  %11 = add i64 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 12)
  %15 = add i64 %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load i64, ptr %16, align 8
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 18)
  %19 = add i64 %15, %18
  %20 = mul i64 %6, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = xor i64 %19, %22
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = mul i64 %9, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %25, %28
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = mul i64 %13, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %31, %34
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = mul i64 %17, -4417276706812531889
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
  br i1 %77, label %78, label %61, !llvm.loop !16

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
  br i1 %127, label %86, label %128, !llvm.loop !12

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
  br i1 %165, label %166, label %151, !llvm.loop !17

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
  br i1 %233, label %234, label %172, !llvm.loop !14

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
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH64_canonicalFromHash(ptr nocapture noundef writeonly initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @XXH64_hashFromCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load i64, ptr %0, align 1
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @XXH3_64bits(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %77

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %28, !prof !18

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
  br i1 %29, label %30, label %51, !prof !18

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
  %88 = load i64, ptr %87, align 1, !noalias !19
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %90 = load i64, ptr %89, align 1, !noalias !19
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
  %102 = load i64, ptr %101, align 1, !noalias !22
  %103 = getelementptr inbounds i8, ptr %100, i64 -56
  %104 = load i64, ptr %103, align 1, !noalias !22
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
  %117 = load i64, ptr %116, align 1, !noalias !25
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %119 = load i64, ptr %118, align 1, !noalias !25
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
  %131 = load i64, ptr %130, align 1, !noalias !28
  %132 = getelementptr inbounds i8, ptr %129, i64 -40
  %133 = load i64, ptr %132, align 1, !noalias !28
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
  %146 = load i64, ptr %145, align 1, !noalias !31
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %148 = load i64, ptr %147, align 1, !noalias !31
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
  %160 = load i64, ptr %159, align 1, !noalias !34
  %161 = getelementptr inbounds i8, ptr %158, i64 -24
  %162 = load i64, ptr %161, align 1, !noalias !34
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
  %174 = load i64, ptr %0, align 1, !noalias !37
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %176 = load i64, ptr %175, align 1, !noalias !37
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
  %188 = load i64, ptr %187, align 1, !noalias !40
  %189 = getelementptr inbounds i8, ptr %186, i64 -8
  %190 = load i64, ptr %189, align 1, !noalias !40
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
define internal fastcc i64 @XXH3_hashLong_64b_default(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #13 {
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %50
  %8 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %5 ], [ %70, %50 ]
  %9 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %5 ], [ %60, %50 ]
  %10 = phi i64 [ 0, %5 ], [ %71, %50 ]
  %11 = shl i64 %10, 10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi <4 x i64> [ %8, %7 ], [ %47, %13 ]
  %15 = phi <4 x i64> [ %9, %7 ], [ %33, %13 ]
  %16 = phi i64 [ 0, %7 ], [ %48, %13 ]
  %17 = shl nuw nsw i64 %16, 6
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 0, i32 3, i32 1), !noalias !43
  %20 = shl nuw nsw i64 %16, 3
  %21 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %20
  %22 = load <4 x i64>, ptr %18, align 1, !noalias !46
  %23 = load <4 x i64>, ptr %21, align 8, !noalias !46
  %24 = xor <4 x i64> %23, %22
  %25 = bitcast <4 x i64> %24 to <8 x i32>
  %26 = shufflevector <8 x i32> %25, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %27 = bitcast <8 x i32> %26 to <4 x i64>
  %28 = and <4 x i64> %24, splat (i64 4294967295)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = shufflevector <4 x i64> %22, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %32 = add <4 x i64> %15, %31
  %33 = add <4 x i64> %32, %30
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %35 = load <4 x i64>, ptr %34, align 1, !noalias !46
  %36 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %37 = load <4 x i64>, ptr %36, align 8, !noalias !46
  %38 = xor <4 x i64> %37, %35
  %39 = bitcast <4 x i64> %38 to <8 x i32>
  %40 = shufflevector <8 x i32> %39, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %41 = bitcast <8 x i32> %40 to <4 x i64>
  %42 = and <4 x i64> %38, splat (i64 4294967295)
  %43 = and <4 x i64> %41, splat (i64 4294967295)
  %44 = mul nuw <4 x i64> %43, %42
  %45 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %46 = add <4 x i64> %14, %45
  %47 = add <4 x i64> %46, %44
  %48 = add nuw nsw i64 %16, 1
  %49 = icmp eq i64 %48, 16
  br i1 %49, label %50, label %13, !llvm.loop !49

50:                                               ; preds = %13
  %51 = lshr <4 x i64> %33, splat (i64 47)
  %52 = xor <4 x i64> %51, %33
  %53 = xor <4 x i64> %52, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %54 = bitcast <4 x i64> %53 to <8 x i32>
  %55 = shufflevector <8 x i32> %54, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %56 = bitcast <8 x i32> %55 to <4 x i64>
  %57 = and <4 x i64> %53, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, splat (i64 2654435761)
  %59 = mul <4 x i64> %56, splat (i64 -7046029290881679360)
  %60 = add <4 x i64> %59, %58
  %61 = lshr <4 x i64> %47, splat (i64 47)
  %62 = xor <4 x i64> %61, %47
  %63 = xor <4 x i64> %62, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %64 = bitcast <4 x i64> %63 to <8 x i32>
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %66 = bitcast <8 x i32> %65 to <4 x i64>
  %67 = and <4 x i64> %63, splat (i64 4294967295)
  %68 = mul nuw <4 x i64> %67, splat (i64 2654435761)
  %69 = mul <4 x i64> %66, splat (i64 -7046029290881679360)
  %70 = add <4 x i64> %69, %68
  %71 = add nuw nsw i64 %10, 1
  %72 = icmp eq i64 %71, %6
  br i1 %72, label %73, label %7, !llvm.loop !50

73:                                               ; preds = %50, %2
  %74 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %70, %50 ]
  %75 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %60, %50 ]
  %76 = and i64 %3, -1024
  %77 = lshr i64 %3, 6
  %78 = and i64 %77, 15
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 %76
  %80 = icmp eq i64 %78, 0
  br i1 %80, label %118, label %81

81:                                               ; preds = %73, %81
  %82 = phi <4 x i64> [ %115, %81 ], [ %74, %73 ]
  %83 = phi <4 x i64> [ %101, %81 ], [ %75, %73 ]
  %84 = phi i64 [ %116, %81 ], [ 0, %73 ]
  %85 = shl i64 %84, 6
  %86 = getelementptr inbounds nuw i8, ptr %79, i64 %85
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %87, i32 0, i32 3, i32 1), !noalias !51
  %88 = shl i64 %84, 3
  %89 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %88
  %90 = load <4 x i64>, ptr %86, align 1, !noalias !54
  %91 = load <4 x i64>, ptr %89, align 8, !noalias !54
  %92 = xor <4 x i64> %91, %90
  %93 = bitcast <4 x i64> %92 to <8 x i32>
  %94 = shufflevector <8 x i32> %93, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %95 = bitcast <8 x i32> %94 to <4 x i64>
  %96 = and <4 x i64> %92, splat (i64 4294967295)
  %97 = and <4 x i64> %95, splat (i64 4294967295)
  %98 = mul nuw <4 x i64> %97, %96
  %99 = shufflevector <4 x i64> %90, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %100 = add <4 x i64> %83, %99
  %101 = add <4 x i64> %100, %98
  %102 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %103 = load <4 x i64>, ptr %102, align 1, !noalias !54
  %104 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %105 = load <4 x i64>, ptr %104, align 8, !noalias !54
  %106 = xor <4 x i64> %105, %103
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %103, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %82, %113
  %115 = add <4 x i64> %114, %112
  %116 = add nuw nsw i64 %84, 1
  %117 = icmp eq i64 %116, %78
  br i1 %117, label %118, label %81, !llvm.loop !49

118:                                              ; preds = %81, %73
  %119 = phi <4 x i64> [ %74, %73 ], [ %115, %81 ]
  %120 = phi <4 x i64> [ %75, %73 ], [ %101, %81 ]
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %122 = getelementptr inbounds i8, ptr %121, i64 -64
  %123 = load <4 x i64>, ptr %122, align 1, !noalias !57
  %124 = xor <4 x i64> %123, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %125 = bitcast <4 x i64> %124 to <8 x i32>
  %126 = shufflevector <8 x i32> %125, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %127 = bitcast <8 x i32> %126 to <4 x i64>
  %128 = and <4 x i64> %124, splat (i64 4294967295)
  %129 = and <4 x i64> %127, splat (i64 4294967295)
  %130 = mul nuw <4 x i64> %129, %128
  %131 = shufflevector <4 x i64> %123, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %132 = add <4 x i64> %120, %131
  %133 = add <4 x i64> %132, %130
  %134 = getelementptr inbounds i8, ptr %121, i64 -32
  %135 = load <4 x i64>, ptr %134, align 1, !noalias !57
  %136 = xor <4 x i64> %135, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %137 = bitcast <4 x i64> %136 to <8 x i32>
  %138 = shufflevector <8 x i32> %137, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %139 = bitcast <8 x i32> %138 to <4 x i64>
  %140 = and <4 x i64> %136, splat (i64 4294967295)
  %141 = and <4 x i64> %139, splat (i64 4294967295)
  %142 = mul nuw <4 x i64> %141, %140
  %143 = shufflevector <4 x i64> %135, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %144 = add <4 x i64> %119, %143
  %145 = add <4 x i64> %144, %142
  %146 = mul i64 %1, -7046029288634856825
  %147 = extractelement <4 x i64> %133, i64 0
  %148 = xor i64 %147, 7914194659941938988
  %149 = extractelement <4 x i64> %133, i64 1
  %150 = xor i64 %149, -6611157965513653271
  %151 = zext i64 %148 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %146, %156
  %158 = extractelement <4 x i64> %133, i64 2
  %159 = xor i64 %158, -1839215637059881052
  %160 = extractelement <4 x i64> %133, i64 3
  %161 = xor i64 %160, -3433288310154277810
  %162 = zext i64 %159 to i128
  %163 = zext i64 %161 to i128
  %164 = mul nuw i128 %163, %162
  %165 = lshr i128 %164, 64
  %166 = xor i128 %165, %164
  %167 = trunc i128 %166 to i64
  %168 = add i64 %157, %167
  %169 = extractelement <4 x i64> %145, i64 0
  %170 = xor i64 %169, 5046485836271438973
  %171 = extractelement <4 x i64> %145, i64 1
  %172 = xor i64 %171, -8055285457383852172
  %173 = zext i64 %170 to i128
  %174 = zext i64 %172 to i128
  %175 = mul nuw i128 %174, %173
  %176 = lshr i128 %175, 64
  %177 = xor i128 %176, %175
  %178 = trunc i128 %177 to i64
  %179 = add i64 %168, %178
  %180 = extractelement <4 x i64> %145, i64 2
  %181 = xor i64 %180, 5920048007935066598
  %182 = extractelement <4 x i64> %145, i64 3
  %183 = xor i64 %182, 7336514198459093435
  %184 = zext i64 %181 to i128
  %185 = zext i64 %183 to i128
  %186 = mul nuw i128 %185, %184
  %187 = lshr i128 %186, 64
  %188 = xor i128 %187, %186
  %189 = trunc i128 %188 to i64
  %190 = add i64 %179, %189
  %191 = lshr i64 %190, 37
  %192 = xor i64 %191, %190
  %193 = mul i64 %192, 1609587791953885689
  %194 = lshr i64 %193, 32
  %195 = xor i64 %194, %193
  ret i64 %195
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @XXH3_64bits_withSecret(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %113

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %40, !prof !18

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
  br i1 %41, label %42, label %68, !prof !18

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
  %125 = load i64, ptr %123, align 1, !noalias !60
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %127 = load i64, ptr %126, align 1, !noalias !60
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
  %143 = load i64, ptr %141, align 1, !noalias !63
  %144 = getelementptr inbounds i8, ptr %140, i64 -56
  %145 = load i64, ptr %144, align 1, !noalias !63
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
  %162 = load i64, ptr %160, align 1, !noalias !66
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %164 = load i64, ptr %163, align 1, !noalias !66
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
  %180 = load i64, ptr %178, align 1, !noalias !69
  %181 = getelementptr inbounds i8, ptr %177, i64 -40
  %182 = load i64, ptr %181, align 1, !noalias !69
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
  %199 = load i64, ptr %197, align 1, !noalias !72
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %201 = load i64, ptr %200, align 1, !noalias !72
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
  %217 = load i64, ptr %215, align 1, !noalias !75
  %218 = getelementptr inbounds i8, ptr %214, i64 -24
  %219 = load i64, ptr %218, align 1, !noalias !75
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
  %234 = load i64, ptr %0, align 1, !noalias !78
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %236 = load i64, ptr %235, align 1, !noalias !78
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
  %252 = load i64, ptr %250, align 1, !noalias !81
  %253 = getelementptr inbounds i8, ptr %249, i64 -8
  %254 = load i64, ptr %253, align 1, !noalias !81
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
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #13 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %7, %8
  br i1 %11, label %88, label %12

12:                                               ; preds = %4
  %13 = icmp ult i64 %5, 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  %16 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %17 = load <4 x i64>, ptr %15, align 1, !noalias !84
  %18 = getelementptr inbounds i8, ptr %14, i64 -32
  %19 = load <4 x i64>, ptr %18, align 1, !noalias !84
  br label %20

20:                                               ; preds = %12, %63
  %21 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %12 ], [ %85, %63 ]
  %22 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %12 ], [ %75, %63 ]
  %23 = phi i64 [ 0, %12 ], [ %86, %63 ]
  %24 = mul i64 %23, %7
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %24
  br i1 %13, label %63, label %26

26:                                               ; preds = %20, %26
  %27 = phi <4 x i64> [ %60, %26 ], [ %21, %20 ]
  %28 = phi <4 x i64> [ %46, %26 ], [ %22, %20 ]
  %29 = phi i64 [ %61, %26 ], [ 0, %20 ]
  %30 = shl i64 %29, 6
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %32, i32 0, i32 3, i32 1), !noalias !87
  %33 = shl i64 %29, 3
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load <4 x i64>, ptr %31, align 1, !noalias !90
  %36 = load <4 x i64>, ptr %34, align 1, !noalias !90
  %37 = xor <4 x i64> %36, %35
  %38 = bitcast <4 x i64> %37 to <8 x i32>
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  %41 = and <4 x i64> %37, splat (i64 4294967295)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %45 = add <4 x i64> %28, %44
  %46 = add <4 x i64> %45, %43
  %47 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %48 = load <4 x i64>, ptr %47, align 1, !noalias !90
  %49 = getelementptr inbounds nuw i8, ptr %34, i64 32
  %50 = load <4 x i64>, ptr %49, align 1, !noalias !90
  %51 = xor <4 x i64> %50, %48
  %52 = bitcast <4 x i64> %51 to <8 x i32>
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %54 = bitcast <8 x i32> %53 to <4 x i64>
  %55 = and <4 x i64> %51, splat (i64 4294967295)
  %56 = and <4 x i64> %54, splat (i64 4294967295)
  %57 = mul nuw <4 x i64> %56, %55
  %58 = shufflevector <4 x i64> %48, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %59 = add <4 x i64> %27, %58
  %60 = add <4 x i64> %59, %57
  %61 = add nuw nsw i64 %29, 1
  %62 = icmp eq i64 %61, %16
  br i1 %62, label %63, label %26, !llvm.loop !49

63:                                               ; preds = %26, %20
  %64 = phi <4 x i64> [ %21, %20 ], [ %60, %26 ]
  %65 = phi <4 x i64> [ %22, %20 ], [ %46, %26 ]
  %66 = lshr <4 x i64> %65, splat (i64 47)
  %67 = xor <4 x i64> %17, %66
  %68 = xor <4 x i64> %67, %65
  %69 = bitcast <4 x i64> %68 to <8 x i32>
  %70 = shufflevector <8 x i32> %69, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %71 = bitcast <8 x i32> %70 to <4 x i64>
  %72 = and <4 x i64> %68, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, splat (i64 2654435761)
  %74 = mul <4 x i64> %71, splat (i64 -7046029290881679360)
  %75 = add <4 x i64> %74, %73
  %76 = lshr <4 x i64> %64, splat (i64 47)
  %77 = xor <4 x i64> %19, %76
  %78 = xor <4 x i64> %77, %64
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = mul nuw <4 x i64> %82, splat (i64 2654435761)
  %84 = mul <4 x i64> %81, splat (i64 -7046029290881679360)
  %85 = add <4 x i64> %84, %83
  %86 = add nuw i64 %23, 1
  %87 = icmp ult i64 %86, %9
  br i1 %87, label %20, label %88, !llvm.loop !50

88:                                               ; preds = %63, %4
  %89 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %85, %63 ]
  %90 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %75, %63 ]
  %91 = mul i64 %9, %7
  %92 = lshr i64 %10, 6
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %94 = icmp ult i64 %10, 64
  br i1 %94, label %132, label %95

95:                                               ; preds = %88, %95
  %96 = phi <4 x i64> [ %129, %95 ], [ %89, %88 ]
  %97 = phi <4 x i64> [ %115, %95 ], [ %90, %88 ]
  %98 = phi i64 [ %130, %95 ], [ 0, %88 ]
  %99 = shl i64 %98, 6
  %100 = getelementptr inbounds nuw i8, ptr %93, i64 %99
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %101, i32 0, i32 3, i32 1), !noalias !93
  %102 = shl i64 %98, 3
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %102
  %104 = load <4 x i64>, ptr %100, align 1, !noalias !96
  %105 = load <4 x i64>, ptr %103, align 1, !noalias !96
  %106 = xor <4 x i64> %105, %104
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %97, %113
  %115 = add <4 x i64> %114, %112
  %116 = getelementptr inbounds nuw i8, ptr %100, i64 32
  %117 = load <4 x i64>, ptr %116, align 1, !noalias !96
  %118 = getelementptr inbounds nuw i8, ptr %103, i64 32
  %119 = load <4 x i64>, ptr %118, align 1, !noalias !96
  %120 = xor <4 x i64> %119, %117
  %121 = bitcast <4 x i64> %120 to <8 x i32>
  %122 = shufflevector <8 x i32> %121, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %123 = bitcast <8 x i32> %122 to <4 x i64>
  %124 = and <4 x i64> %120, splat (i64 4294967295)
  %125 = and <4 x i64> %123, splat (i64 4294967295)
  %126 = mul nuw <4 x i64> %125, %124
  %127 = shufflevector <4 x i64> %117, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %128 = add <4 x i64> %96, %127
  %129 = add <4 x i64> %128, %126
  %130 = add nuw nsw i64 %98, 1
  %131 = icmp samesign ult i64 %130, %92
  br i1 %131, label %95, label %132, !llvm.loop !49

132:                                              ; preds = %95, %88
  %133 = phi <4 x i64> [ %89, %88 ], [ %129, %95 ]
  %134 = phi <4 x i64> [ %90, %88 ], [ %115, %95 ]
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %136 = getelementptr inbounds i8, ptr %135, i64 -64
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %138 = getelementptr inbounds i8, ptr %137, i64 -71
  %139 = load <4 x i64>, ptr %136, align 1, !noalias !99
  %140 = load <4 x i64>, ptr %138, align 1, !noalias !99
  %141 = xor <4 x i64> %140, %139
  %142 = bitcast <4 x i64> %141 to <8 x i32>
  %143 = shufflevector <8 x i32> %142, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %144 = bitcast <8 x i32> %143 to <4 x i64>
  %145 = and <4 x i64> %141, splat (i64 4294967295)
  %146 = and <4 x i64> %144, splat (i64 4294967295)
  %147 = mul nuw <4 x i64> %146, %145
  %148 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %149 = add <4 x i64> %134, %148
  %150 = add <4 x i64> %149, %147
  %151 = getelementptr inbounds i8, ptr %135, i64 -32
  %152 = load <4 x i64>, ptr %151, align 1, !noalias !99
  %153 = getelementptr inbounds i8, ptr %137, i64 -39
  %154 = load <4 x i64>, ptr %153, align 1, !noalias !99
  %155 = xor <4 x i64> %154, %152
  %156 = bitcast <4 x i64> %155 to <8 x i32>
  %157 = shufflevector <8 x i32> %156, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %158 = bitcast <8 x i32> %157 to <4 x i64>
  %159 = and <4 x i64> %155, splat (i64 4294967295)
  %160 = and <4 x i64> %158, splat (i64 4294967295)
  %161 = mul nuw <4 x i64> %160, %159
  %162 = shufflevector <4 x i64> %152, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %163 = add <4 x i64> %133, %162
  %164 = add <4 x i64> %163, %161
  %165 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %166 = mul i64 %1, -7046029288634856825
  %167 = extractelement <4 x i64> %150, i64 0
  %168 = load i64, ptr %165, align 1, !alias.scope !102, !noalias !105
  %169 = xor i64 %168, %167
  %170 = extractelement <4 x i64> %150, i64 1
  %171 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %172 = load i64, ptr %171, align 1, !alias.scope !102, !noalias !105
  %173 = xor i64 %172, %170
  %174 = zext i64 %169 to i128
  %175 = zext i64 %173 to i128
  %176 = mul nuw i128 %175, %174
  %177 = lshr i128 %176, 64
  %178 = xor i128 %177, %176
  %179 = trunc i128 %178 to i64
  %180 = add i64 %166, %179
  %181 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %182 = extractelement <4 x i64> %150, i64 2
  %183 = load i64, ptr %181, align 1, !alias.scope !102, !noalias !109
  %184 = xor i64 %183, %182
  %185 = extractelement <4 x i64> %150, i64 3
  %186 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %187 = load i64, ptr %186, align 1, !alias.scope !102, !noalias !109
  %188 = xor i64 %187, %185
  %189 = zext i64 %184 to i128
  %190 = zext i64 %188 to i128
  %191 = mul nuw i128 %190, %189
  %192 = lshr i128 %191, 64
  %193 = xor i128 %192, %191
  %194 = trunc i128 %193 to i64
  %195 = add i64 %180, %194
  %196 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %197 = extractelement <4 x i64> %164, i64 0
  %198 = load i64, ptr %196, align 1, !alias.scope !102, !noalias !111
  %199 = xor i64 %198, %197
  %200 = extractelement <4 x i64> %164, i64 1
  %201 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %202 = load i64, ptr %201, align 1, !alias.scope !102, !noalias !111
  %203 = xor i64 %202, %200
  %204 = zext i64 %199 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %195, %209
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %212 = extractelement <4 x i64> %164, i64 2
  %213 = load i64, ptr %211, align 1, !alias.scope !102, !noalias !113
  %214 = xor i64 %213, %212
  %215 = extractelement <4 x i64> %164, i64 3
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %217 = load i64, ptr %216, align 1, !alias.scope !102, !noalias !113
  %218 = xor i64 %217, %215
  %219 = zext i64 %214 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %210, %224
  %226 = lshr i64 %225, 37
  %227 = xor i64 %226, %225
  %228 = mul i64 %227, 1609587791953885689
  %229 = lshr i64 %228, 32
  %230 = xor i64 %229, %228
  ret i64 %230
}

; Function Attrs: nounwind uwtable
define dso_local i64 @XXH3_64bits_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %99

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %31, !prof !18

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
  br i1 %32, label %33, label %60, !prof !18

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
  %110 = load i64, ptr %109, align 1, !noalias !115
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %112 = load i64, ptr %111, align 1, !noalias !115
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
  %126 = load i64, ptr %125, align 1, !noalias !118
  %127 = getelementptr inbounds i8, ptr %124, i64 -56
  %128 = load i64, ptr %127, align 1, !noalias !118
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
  %143 = load i64, ptr %142, align 1, !noalias !121
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %145 = load i64, ptr %144, align 1, !noalias !121
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
  %159 = load i64, ptr %158, align 1, !noalias !124
  %160 = getelementptr inbounds i8, ptr %157, i64 -40
  %161 = load i64, ptr %160, align 1, !noalias !124
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
  %176 = load i64, ptr %175, align 1, !noalias !127
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %178 = load i64, ptr %177, align 1, !noalias !127
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
  %192 = load i64, ptr %191, align 1, !noalias !130
  %193 = getelementptr inbounds i8, ptr %190, i64 -24
  %194 = load i64, ptr %193, align 1, !noalias !130
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
  %208 = load i64, ptr %0, align 1, !noalias !133
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %210 = load i64, ptr %209, align 1, !noalias !133
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
  %224 = load i64, ptr %223, align 1, !noalias !136
  %225 = getelementptr inbounds i8, ptr %222, i64 -8
  %226 = load i64, ptr %225, align 1, !noalias !136
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

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #14 {
  %4 = alloca [192 x i8], align 32
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %200

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %77, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %54
  %12 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %9 ], [ %74, %54 ]
  %13 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %9 ], [ %64, %54 ]
  %14 = phi i64 [ 0, %9 ], [ %75, %54 ]
  %15 = shl i64 %14, 10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  br label %17

17:                                               ; preds = %11, %17
  %18 = phi <4 x i64> [ %12, %11 ], [ %51, %17 ]
  %19 = phi <4 x i64> [ %13, %11 ], [ %37, %17 ]
  %20 = phi i64 [ 0, %11 ], [ %52, %17 ]
  %21 = shl nuw nsw i64 %20, 6
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 0, i32 3, i32 1), !noalias !139
  %24 = shl nuw nsw i64 %20, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <4 x i64>, ptr %22, align 1, !noalias !142
  %27 = load <4 x i64>, ptr %25, align 8, !noalias !142
  %28 = xor <4 x i64> %27, %26
  %29 = bitcast <4 x i64> %28 to <8 x i32>
  %30 = shufflevector <8 x i32> %29, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %31 = bitcast <8 x i32> %30 to <4 x i64>
  %32 = and <4 x i64> %28, splat (i64 4294967295)
  %33 = and <4 x i64> %31, splat (i64 4294967295)
  %34 = mul nuw <4 x i64> %33, %32
  %35 = shufflevector <4 x i64> %26, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %36 = add <4 x i64> %19, %35
  %37 = add <4 x i64> %36, %34
  %38 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %39 = load <4 x i64>, ptr %38, align 1, !noalias !142
  %40 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %41 = load <4 x i64>, ptr %40, align 8, !noalias !142
  %42 = xor <4 x i64> %41, %39
  %43 = bitcast <4 x i64> %42 to <8 x i32>
  %44 = shufflevector <8 x i32> %43, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %45 = bitcast <8 x i32> %44 to <4 x i64>
  %46 = and <4 x i64> %42, splat (i64 4294967295)
  %47 = and <4 x i64> %45, splat (i64 4294967295)
  %48 = mul nuw <4 x i64> %47, %46
  %49 = shufflevector <4 x i64> %39, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %50 = add <4 x i64> %18, %49
  %51 = add <4 x i64> %50, %48
  %52 = add nuw nsw i64 %20, 1
  %53 = icmp eq i64 %52, 16
  br i1 %53, label %54, label %17, !llvm.loop !49

54:                                               ; preds = %17
  %55 = lshr <4 x i64> %37, splat (i64 47)
  %56 = xor <4 x i64> %55, %37
  %57 = xor <4 x i64> %56, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %58 = bitcast <4 x i64> %57 to <8 x i32>
  %59 = shufflevector <8 x i32> %58, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = and <4 x i64> %57, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, splat (i64 2654435761)
  %63 = mul <4 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <4 x i64> %63, %62
  %65 = lshr <4 x i64> %51, splat (i64 47)
  %66 = xor <4 x i64> %65, %51
  %67 = xor <4 x i64> %66, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, splat (i64 2654435761)
  %73 = mul <4 x i64> %70, splat (i64 -7046029290881679360)
  %74 = add <4 x i64> %73, %72
  %75 = add nuw nsw i64 %14, 1
  %76 = icmp eq i64 %75, %10
  br i1 %76, label %77, label %11, !llvm.loop !50

77:                                               ; preds = %54, %6
  %78 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %74, %54 ]
  %79 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %64, %54 ]
  %80 = and i64 %7, -1024
  %81 = lshr i64 %7, 6
  %82 = and i64 %81, 15
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %84 = icmp eq i64 %82, 0
  br i1 %84, label %122, label %85

85:                                               ; preds = %77, %85
  %86 = phi <4 x i64> [ %119, %85 ], [ %78, %77 ]
  %87 = phi <4 x i64> [ %105, %85 ], [ %79, %77 ]
  %88 = phi i64 [ %120, %85 ], [ 0, %77 ]
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1), !noalias !145
  %92 = shl i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %92
  %94 = load <4 x i64>, ptr %90, align 1, !noalias !148
  %95 = load <4 x i64>, ptr %93, align 8, !noalias !148
  %96 = xor <4 x i64> %95, %94
  %97 = bitcast <4 x i64> %96 to <8 x i32>
  %98 = shufflevector <8 x i32> %97, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %99 = bitcast <8 x i32> %98 to <4 x i64>
  %100 = and <4 x i64> %96, splat (i64 4294967295)
  %101 = and <4 x i64> %99, splat (i64 4294967295)
  %102 = mul nuw <4 x i64> %101, %100
  %103 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %104 = add <4 x i64> %87, %103
  %105 = add <4 x i64> %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %107 = load <4 x i64>, ptr %106, align 1, !noalias !148
  %108 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %109 = load <4 x i64>, ptr %108, align 8, !noalias !148
  %110 = xor <4 x i64> %109, %107
  %111 = bitcast <4 x i64> %110 to <8 x i32>
  %112 = shufflevector <8 x i32> %111, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %113 = bitcast <8 x i32> %112 to <4 x i64>
  %114 = and <4 x i64> %110, splat (i64 4294967295)
  %115 = and <4 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <4 x i64> %115, %114
  %117 = shufflevector <4 x i64> %107, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %118 = add <4 x i64> %86, %117
  %119 = add <4 x i64> %118, %116
  %120 = add nuw nsw i64 %88, 1
  %121 = icmp eq i64 %120, %82
  br i1 %121, label %122, label %85, !llvm.loop !49

122:                                              ; preds = %85, %77
  %123 = phi <4 x i64> [ %78, %77 ], [ %119, %85 ]
  %124 = phi <4 x i64> [ %79, %77 ], [ %105, %85 ]
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %126 = getelementptr inbounds i8, ptr %125, i64 -64
  %127 = load <4 x i64>, ptr %126, align 1, !noalias !151
  %128 = xor <4 x i64> %127, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %129 = bitcast <4 x i64> %128 to <8 x i32>
  %130 = shufflevector <8 x i32> %129, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %131 = bitcast <8 x i32> %130 to <4 x i64>
  %132 = and <4 x i64> %128, splat (i64 4294967295)
  %133 = and <4 x i64> %131, splat (i64 4294967295)
  %134 = mul nuw <4 x i64> %133, %132
  %135 = shufflevector <4 x i64> %127, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %136 = add <4 x i64> %124, %135
  %137 = add <4 x i64> %136, %134
  %138 = getelementptr inbounds i8, ptr %125, i64 -32
  %139 = load <4 x i64>, ptr %138, align 1, !noalias !151
  %140 = xor <4 x i64> %139, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %141 = bitcast <4 x i64> %140 to <8 x i32>
  %142 = shufflevector <8 x i32> %141, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %143 = bitcast <8 x i32> %142 to <4 x i64>
  %144 = and <4 x i64> %140, splat (i64 4294967295)
  %145 = and <4 x i64> %143, splat (i64 4294967295)
  %146 = mul nuw <4 x i64> %145, %144
  %147 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %148 = add <4 x i64> %123, %147
  %149 = add <4 x i64> %148, %146
  %150 = mul i64 %1, -7046029288634856825
  %151 = extractelement <4 x i64> %137, i64 0
  %152 = xor i64 %151, 7914194659941938988
  %153 = extractelement <4 x i64> %137, i64 1
  %154 = xor i64 %153, -6611157965513653271
  %155 = zext i64 %152 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %150, %160
  %162 = extractelement <4 x i64> %137, i64 2
  %163 = xor i64 %162, -1839215637059881052
  %164 = extractelement <4 x i64> %137, i64 3
  %165 = xor i64 %164, -3433288310154277810
  %166 = zext i64 %163 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %161, %171
  %173 = extractelement <4 x i64> %149, i64 0
  %174 = xor i64 %173, 5046485836271438973
  %175 = extractelement <4 x i64> %149, i64 1
  %176 = xor i64 %175, -8055285457383852172
  %177 = zext i64 %174 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %172, %182
  %184 = extractelement <4 x i64> %149, i64 2
  %185 = xor i64 %184, 5920048007935066598
  %186 = extractelement <4 x i64> %149, i64 3
  %187 = xor i64 %186, 7336514198459093435
  %188 = zext i64 %185 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %183, %193
  %195 = lshr i64 %194, 37
  %196 = xor i64 %195, %194
  %197 = mul i64 %196, 1609587791953885689
  %198 = lshr i64 %197, 32
  %199 = xor i64 %198, %197
  br label %435

200:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #27
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 0, i32 3, i32 1)
  %201 = sub i64 0, %2
  %202 = insertelement <4 x i64> poison, i64 %2, i64 0
  %203 = insertelement <4 x i64> %202, i64 %201, i64 1
  %204 = insertelement <4 x i64> %203, i64 %2, i64 2
  %205 = insertelement <4 x i64> %204, i64 %201, i64 3
  %206 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %4) #27, !srcloc !154
  %207 = add <4 x i64> %205, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %207, ptr %206, align 32
  %208 = add <4 x i64> %205, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %209 = getelementptr inbounds nuw i8, ptr %206, i64 32
  store <4 x i64> %208, ptr %209, align 32
  %210 = add <4 x i64> %205, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %211 = getelementptr inbounds nuw i8, ptr %206, i64 64
  store <4 x i64> %210, ptr %211, align 32
  %212 = add <4 x i64> %205, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %213 = getelementptr inbounds nuw i8, ptr %206, i64 96
  store <4 x i64> %212, ptr %213, align 32
  %214 = add <4 x i64> %205, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %215 = getelementptr inbounds nuw i8, ptr %206, i64 128
  store <4 x i64> %214, ptr %215, align 32
  %216 = add <4 x i64> %205, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %217 = getelementptr inbounds nuw i8, ptr %206, i64 160
  store <4 x i64> %216, ptr %217, align 32
  %218 = add i64 %1, -1
  %219 = icmp ult i64 %218, 1024
  br i1 %219, label %292, label %220

220:                                              ; preds = %200
  %221 = lshr i64 %218, 10
  %222 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %223 = load <4 x i64>, ptr %222, align 32, !noalias !155
  %224 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %225 = load <4 x i64>, ptr %224, align 32, !noalias !155
  br label %226

226:                                              ; preds = %220, %269
  %227 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %220 ], [ %289, %269 ]
  %228 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %220 ], [ %279, %269 ]
  %229 = phi i64 [ 0, %220 ], [ %290, %269 ]
  %230 = shl i64 %229, 10
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 %230
  br label %232

232:                                              ; preds = %226, %232
  %233 = phi <4 x i64> [ %227, %226 ], [ %266, %232 ]
  %234 = phi <4 x i64> [ %228, %226 ], [ %252, %232 ]
  %235 = phi i64 [ 0, %226 ], [ %267, %232 ]
  %236 = shl nuw nsw i64 %235, 6
  %237 = getelementptr inbounds nuw i8, ptr %231, i64 %236
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %238, i32 0, i32 3, i32 1), !noalias !158
  %239 = shl nuw nsw i64 %235, 3
  %240 = getelementptr inbounds nuw i8, ptr %4, i64 %239
  %241 = load <4 x i64>, ptr %237, align 1, !noalias !161
  %242 = load <4 x i64>, ptr %240, align 8, !noalias !161
  %243 = xor <4 x i64> %242, %241
  %244 = bitcast <4 x i64> %243 to <8 x i32>
  %245 = shufflevector <8 x i32> %244, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %246 = bitcast <8 x i32> %245 to <4 x i64>
  %247 = and <4 x i64> %243, splat (i64 4294967295)
  %248 = and <4 x i64> %246, splat (i64 4294967295)
  %249 = mul nuw <4 x i64> %248, %247
  %250 = shufflevector <4 x i64> %241, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %251 = add <4 x i64> %234, %250
  %252 = add <4 x i64> %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %237, i64 32
  %254 = load <4 x i64>, ptr %253, align 1, !noalias !161
  %255 = getelementptr inbounds nuw i8, ptr %240, i64 32
  %256 = load <4 x i64>, ptr %255, align 8, !noalias !161
  %257 = xor <4 x i64> %256, %254
  %258 = bitcast <4 x i64> %257 to <8 x i32>
  %259 = shufflevector <8 x i32> %258, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %260 = bitcast <8 x i32> %259 to <4 x i64>
  %261 = and <4 x i64> %257, splat (i64 4294967295)
  %262 = and <4 x i64> %260, splat (i64 4294967295)
  %263 = mul nuw <4 x i64> %262, %261
  %264 = shufflevector <4 x i64> %254, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %265 = add <4 x i64> %233, %264
  %266 = add <4 x i64> %265, %263
  %267 = add nuw nsw i64 %235, 1
  %268 = icmp eq i64 %267, 16
  br i1 %268, label %269, label %232, !llvm.loop !49

269:                                              ; preds = %232
  %270 = lshr <4 x i64> %252, splat (i64 47)
  %271 = xor <4 x i64> %223, %270
  %272 = xor <4 x i64> %271, %252
  %273 = bitcast <4 x i64> %272 to <8 x i32>
  %274 = shufflevector <8 x i32> %273, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %275 = bitcast <8 x i32> %274 to <4 x i64>
  %276 = and <4 x i64> %272, splat (i64 4294967295)
  %277 = mul nuw <4 x i64> %276, splat (i64 2654435761)
  %278 = mul <4 x i64> %275, splat (i64 -7046029290881679360)
  %279 = add <4 x i64> %278, %277
  %280 = lshr <4 x i64> %266, splat (i64 47)
  %281 = xor <4 x i64> %225, %280
  %282 = xor <4 x i64> %281, %266
  %283 = bitcast <4 x i64> %282 to <8 x i32>
  %284 = shufflevector <8 x i32> %283, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %285 = bitcast <8 x i32> %284 to <4 x i64>
  %286 = and <4 x i64> %282, splat (i64 4294967295)
  %287 = mul nuw <4 x i64> %286, splat (i64 2654435761)
  %288 = mul <4 x i64> %285, splat (i64 -7046029290881679360)
  %289 = add <4 x i64> %288, %287
  %290 = add nuw nsw i64 %229, 1
  %291 = icmp eq i64 %290, %221
  br i1 %291, label %292, label %226, !llvm.loop !50

292:                                              ; preds = %269, %200
  %293 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %200 ], [ %289, %269 ]
  %294 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %200 ], [ %279, %269 ]
  %295 = and i64 %218, -1024
  %296 = lshr i64 %218, 6
  %297 = and i64 %296, 15
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 %295
  %299 = icmp eq i64 %297, 0
  br i1 %299, label %337, label %300

300:                                              ; preds = %292, %300
  %301 = phi <4 x i64> [ %334, %300 ], [ %293, %292 ]
  %302 = phi <4 x i64> [ %320, %300 ], [ %294, %292 ]
  %303 = phi i64 [ %335, %300 ], [ 0, %292 ]
  %304 = shl i64 %303, 6
  %305 = getelementptr inbounds nuw i8, ptr %298, i64 %304
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %306, i32 0, i32 3, i32 1), !noalias !164
  %307 = shl i64 %303, 3
  %308 = getelementptr inbounds nuw i8, ptr %4, i64 %307
  %309 = load <4 x i64>, ptr %305, align 1, !noalias !167
  %310 = load <4 x i64>, ptr %308, align 8, !noalias !167
  %311 = xor <4 x i64> %310, %309
  %312 = bitcast <4 x i64> %311 to <8 x i32>
  %313 = shufflevector <8 x i32> %312, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %314 = bitcast <8 x i32> %313 to <4 x i64>
  %315 = and <4 x i64> %311, splat (i64 4294967295)
  %316 = and <4 x i64> %314, splat (i64 4294967295)
  %317 = mul nuw <4 x i64> %316, %315
  %318 = shufflevector <4 x i64> %309, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %319 = add <4 x i64> %302, %318
  %320 = add <4 x i64> %319, %317
  %321 = getelementptr inbounds nuw i8, ptr %305, i64 32
  %322 = load <4 x i64>, ptr %321, align 1, !noalias !167
  %323 = getelementptr inbounds nuw i8, ptr %308, i64 32
  %324 = load <4 x i64>, ptr %323, align 8, !noalias !167
  %325 = xor <4 x i64> %324, %322
  %326 = bitcast <4 x i64> %325 to <8 x i32>
  %327 = shufflevector <8 x i32> %326, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %328 = bitcast <8 x i32> %327 to <4 x i64>
  %329 = and <4 x i64> %325, splat (i64 4294967295)
  %330 = and <4 x i64> %328, splat (i64 4294967295)
  %331 = mul nuw <4 x i64> %330, %329
  %332 = shufflevector <4 x i64> %322, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %333 = add <4 x i64> %301, %332
  %334 = add <4 x i64> %333, %331
  %335 = add nuw nsw i64 %303, 1
  %336 = icmp eq i64 %335, %297
  br i1 %336, label %337, label %300, !llvm.loop !49

337:                                              ; preds = %300, %292
  %338 = phi <4 x i64> [ %293, %292 ], [ %334, %300 ]
  %339 = phi <4 x i64> [ %294, %292 ], [ %320, %300 ]
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %341 = getelementptr inbounds i8, ptr %340, i64 -64
  %342 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %343 = load <4 x i64>, ptr %341, align 1, !noalias !170
  %344 = load <4 x i64>, ptr %342, align 1, !noalias !170
  %345 = xor <4 x i64> %344, %343
  %346 = bitcast <4 x i64> %345 to <8 x i32>
  %347 = shufflevector <8 x i32> %346, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %348 = bitcast <8 x i32> %347 to <4 x i64>
  %349 = and <4 x i64> %345, splat (i64 4294967295)
  %350 = and <4 x i64> %348, splat (i64 4294967295)
  %351 = mul nuw <4 x i64> %350, %349
  %352 = shufflevector <4 x i64> %343, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %353 = add <4 x i64> %339, %352
  %354 = add <4 x i64> %353, %351
  %355 = getelementptr inbounds i8, ptr %340, i64 -32
  %356 = load <4 x i64>, ptr %355, align 1, !noalias !170
  %357 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %358 = load <4 x i64>, ptr %357, align 1, !noalias !170
  %359 = xor <4 x i64> %358, %356
  %360 = bitcast <4 x i64> %359 to <8 x i32>
  %361 = shufflevector <8 x i32> %360, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %362 = bitcast <8 x i32> %361 to <4 x i64>
  %363 = and <4 x i64> %359, splat (i64 4294967295)
  %364 = and <4 x i64> %362, splat (i64 4294967295)
  %365 = mul nuw <4 x i64> %364, %363
  %366 = shufflevector <4 x i64> %356, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %367 = add <4 x i64> %338, %366
  %368 = add <4 x i64> %367, %365
  %369 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %370 = mul i64 %1, -7046029288634856825
  %371 = extractelement <4 x i64> %354, i64 0
  %372 = load i64, ptr %369, align 1, !alias.scope !173, !noalias !176
  %373 = xor i64 %372, %371
  %374 = extractelement <4 x i64> %354, i64 1
  %375 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %376 = load i64, ptr %375, align 1, !alias.scope !173, !noalias !176
  %377 = xor i64 %376, %374
  %378 = zext i64 %373 to i128
  %379 = zext i64 %377 to i128
  %380 = mul nuw i128 %379, %378
  %381 = lshr i128 %380, 64
  %382 = xor i128 %381, %380
  %383 = trunc i128 %382 to i64
  %384 = add i64 %370, %383
  %385 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %386 = extractelement <4 x i64> %354, i64 2
  %387 = load i64, ptr %385, align 1, !alias.scope !173, !noalias !180
  %388 = xor i64 %387, %386
  %389 = extractelement <4 x i64> %354, i64 3
  %390 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %391 = load i64, ptr %390, align 1, !alias.scope !173, !noalias !180
  %392 = xor i64 %391, %389
  %393 = zext i64 %388 to i128
  %394 = zext i64 %392 to i128
  %395 = mul nuw i128 %394, %393
  %396 = lshr i128 %395, 64
  %397 = xor i128 %396, %395
  %398 = trunc i128 %397 to i64
  %399 = add i64 %384, %398
  %400 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %401 = extractelement <4 x i64> %368, i64 0
  %402 = load i64, ptr %400, align 1, !alias.scope !173, !noalias !182
  %403 = xor i64 %402, %401
  %404 = extractelement <4 x i64> %368, i64 1
  %405 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %406 = load i64, ptr %405, align 1, !alias.scope !173, !noalias !182
  %407 = xor i64 %406, %404
  %408 = zext i64 %403 to i128
  %409 = zext i64 %407 to i128
  %410 = mul nuw i128 %409, %408
  %411 = lshr i128 %410, 64
  %412 = xor i128 %411, %410
  %413 = trunc i128 %412 to i64
  %414 = add i64 %399, %413
  %415 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %416 = extractelement <4 x i64> %368, i64 2
  %417 = load i64, ptr %415, align 1, !alias.scope !173, !noalias !184
  %418 = xor i64 %417, %416
  %419 = extractelement <4 x i64> %368, i64 3
  %420 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %421 = load i64, ptr %420, align 1, !alias.scope !173, !noalias !184
  %422 = xor i64 %421, %419
  %423 = zext i64 %418 to i128
  %424 = zext i64 %422 to i128
  %425 = mul nuw i128 %424, %423
  %426 = lshr i128 %425, 64
  %427 = xor i128 %426, %425
  %428 = trunc i128 %427 to i64
  %429 = add i64 %414, %428
  %430 = lshr i64 %429, 37
  %431 = xor i64 %430, %429
  %432 = mul i64 %431, 1609587791953885689
  %433 = lshr i64 %432, 32
  %434 = xor i64 %433, %432
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #27
  br label %435

435:                                              ; preds = %122, %337
  %436 = phi i64 [ %199, %122 ], [ %434, %337 ]
  ret i64 %436
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local ptr @XXH3_createState() local_unnamed_addr #15 {
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(576) %0, ptr noundef nonnull readonly align 1 dereferenceable(576) %1, i64 576, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset(ptr noundef writeonly %0) local_unnamed_addr #5 {
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
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 {
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

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %53, label %4

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
  br label %48

16:                                               ; preds = %4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %21, i32 0, i32 3, i32 1)
  %22 = sub i64 0, %1
  %23 = insertelement <4 x i64> poison, i64 %1, i64 0
  %24 = insertelement <4 x i64> %23, i64 %22, i64 1
  %25 = insertelement <4 x i64> %24, i64 %1, i64 2
  %26 = insertelement <4 x i64> %25, i64 %22, i64 3
  %27 = tail call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %21) #27, !srcloc !154
  %28 = add <4 x i64> %26, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %28, ptr %27, align 32
  %29 = add <4 x i64> %26, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 32
  store <4 x i64> %29, ptr %30, align 32
  %31 = add <4 x i64> %26, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %32 = getelementptr inbounds nuw i8, ptr %27, i64 64
  store <4 x i64> %31, ptr %32, align 32
  %33 = add <4 x i64> %26, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %34 = getelementptr inbounds nuw i8, ptr %27, i64 96
  store <4 x i64> %33, ptr %34, align 32
  %35 = add <4 x i64> %26, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %36 = getelementptr inbounds nuw i8, ptr %27, i64 128
  store <4 x i64> %35, ptr %36, align 32
  %37 = add <4 x i64> %26, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %38 = getelementptr inbounds nuw i8, ptr %27, i64 160
  store <4 x i64> %37, ptr %38, align 32
  br label %39

39:                                               ; preds = %20, %16
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %42, align 16
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %44, align 32
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %46, align 16
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %47, align 8
  store i64 %1, ptr %17, align 8
  br label %48

48:                                               ; preds = %6, %39
  %49 = phi ptr [ null, %39 ], [ @XXH3_kSecret, %6 ]
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %49, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %51, align 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %52, align 8
  br label %53

53:                                               ; preds = %48, %2
  %54 = phi i32 [ 1, %2 ], [ 0, %48 ]
  ret i32 %54
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %764, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %8 = load ptr, ptr %7, align 8, !alias.scope !186, !noalias !189
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %11 = select i1 %9, ptr %10, ptr %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %13 = load i64, ptr %12, align 16, !alias.scope !186, !noalias !189
  %14 = add i64 %13, %2
  store i64 %14, ptr %12, align 16, !alias.scope !186, !noalias !189
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %16 = load i32, ptr %15, align 64, !alias.scope !186, !noalias !189
  %17 = zext i32 %16 to i64
  %18 = add i64 %2, %17
  %19 = icmp ult i64 %18, 257
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %23 = trunc i64 %2 to i32
  %24 = load i32, ptr %15, align 64, !alias.scope !186, !noalias !189
  %25 = add i32 %24, %23
  br label %762

26:                                               ; preds = %5
  %27 = icmp eq i32 %16, 0
  br i1 %27, label %279, label %28

28:                                               ; preds = %26
  %29 = sub i32 256, %16
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull readonly align 1 %1, i64 %30, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %36 = load i64, ptr %35, align 8, !alias.scope !186, !noalias !189
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %38 = load i64, ptr %37, align 32, !alias.scope !186, !noalias !189
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %39 = load i64, ptr %34, align 8, !alias.scope !194, !noalias !196
  %40 = sub i64 %36, %39
  %41 = icmp ugt i64 %40, 4
  br i1 %41, label %155, label %42

42:                                               ; preds = %28
  %43 = sub nuw nsw i64 4, %40
  %44 = shl i64 %39, 3
  %45 = getelementptr inbounds nuw i8, ptr %11, i64 %44
  %46 = icmp eq i64 %36, %39
  %47 = load <4 x i64>, ptr %0, align 32, !alias.scope !199, !noalias !202
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %49 = load <4 x i64>, ptr %48, align 32, !alias.scope !191, !noalias !204
  br i1 %46, label %87, label %50

50:                                               ; preds = %42, %50
  %51 = phi <4 x i64> [ %84, %50 ], [ %49, %42 ]
  %52 = phi <4 x i64> [ %70, %50 ], [ %47, %42 ]
  %53 = phi i64 [ %85, %50 ], [ 0, %42 ]
  %54 = shl i64 %53, 6
  %55 = getelementptr inbounds nuw i8, ptr %31, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %56, i32 0, i32 3, i32 1), !noalias !205
  %57 = shl i64 %53, 3
  %58 = getelementptr inbounds nuw i8, ptr %45, i64 %57
  %59 = load <4 x i64>, ptr %55, align 1, !noalias !208
  %60 = load <4 x i64>, ptr %58, align 1, !noalias !208
  %61 = xor <4 x i64> %60, %59
  %62 = bitcast <4 x i64> %61 to <8 x i32>
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %64 = bitcast <8 x i32> %63 to <4 x i64>
  %65 = and <4 x i64> %61, splat (i64 4294967295)
  %66 = and <4 x i64> %64, splat (i64 4294967295)
  %67 = mul nuw <4 x i64> %66, %65
  %68 = shufflevector <4 x i64> %59, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %69 = add <4 x i64> %52, %68
  %70 = add <4 x i64> %69, %67
  %71 = getelementptr inbounds nuw i8, ptr %55, i64 32
  %72 = load <4 x i64>, ptr %71, align 1, !noalias !208
  %73 = getelementptr inbounds nuw i8, ptr %58, i64 32
  %74 = load <4 x i64>, ptr %73, align 1, !noalias !208
  %75 = xor <4 x i64> %74, %72
  %76 = bitcast <4 x i64> %75 to <8 x i32>
  %77 = shufflevector <8 x i32> %76, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %78 = bitcast <8 x i32> %77 to <4 x i64>
  %79 = and <4 x i64> %75, splat (i64 4294967295)
  %80 = and <4 x i64> %78, splat (i64 4294967295)
  %81 = mul nuw <4 x i64> %80, %79
  %82 = shufflevector <4 x i64> %72, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %83 = add <4 x i64> %51, %82
  %84 = add <4 x i64> %83, %81
  %85 = add nuw i64 %53, 1
  %86 = icmp eq i64 %85, %40
  br i1 %86, label %87, label %50, !llvm.loop !49

87:                                               ; preds = %50, %42
  %88 = phi <4 x i64> [ %49, %42 ], [ %84, %50 ]
  %89 = phi <4 x i64> [ %47, %42 ], [ %70, %50 ]
  %90 = getelementptr inbounds nuw i8, ptr %11, i64 %38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %91 = lshr <4 x i64> %89, splat (i64 47)
  %92 = load <4 x i64>, ptr %90, align 1, !noalias !212
  %93 = xor <4 x i64> %92, %91
  %94 = xor <4 x i64> %93, %89
  %95 = bitcast <4 x i64> %94 to <8 x i32>
  %96 = shufflevector <8 x i32> %95, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %97 = bitcast <8 x i32> %96 to <4 x i64>
  %98 = and <4 x i64> %94, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, splat (i64 2654435761)
  %100 = mul <4 x i64> %97, splat (i64 -7046029290881679360)
  %101 = add <4 x i64> %100, %99
  store <4 x i64> %101, ptr %0, align 32, !alias.scope !199, !noalias !202
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %103 = lshr <4 x i64> %88, splat (i64 47)
  %104 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %105 = load <4 x i64>, ptr %104, align 1, !noalias !212
  %106 = xor <4 x i64> %105, %103
  %107 = xor <4 x i64> %106, %88
  %108 = bitcast <4 x i64> %107 to <8 x i32>
  %109 = shufflevector <8 x i32> %108, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %110 = bitcast <8 x i32> %109 to <4 x i64>
  %111 = and <4 x i64> %107, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, splat (i64 2654435761)
  %113 = mul <4 x i64> %110, splat (i64 -7046029290881679360)
  %114 = add <4 x i64> %113, %112
  store <4 x i64> %114, ptr %102, align 32, !alias.scope !199, !noalias !202
  %115 = shl nuw nsw i64 %40, 6
  %116 = getelementptr inbounds nuw i8, ptr %31, i64 %115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %117 = icmp eq i64 %40, 4
  br i1 %117, label %277, label %118

118:                                              ; preds = %87, %118
  %119 = phi <4 x i64> [ %152, %118 ], [ %114, %87 ]
  %120 = phi <4 x i64> [ %138, %118 ], [ %101, %87 ]
  %121 = phi i64 [ %153, %118 ], [ 0, %87 ]
  %122 = shl i64 %121, 6
  %123 = getelementptr inbounds nuw i8, ptr %116, i64 %122
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %124, i32 0, i32 3, i32 1), !noalias !216
  %125 = shl i64 %121, 3
  %126 = getelementptr inbounds nuw i8, ptr %11, i64 %125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %127 = load <4 x i64>, ptr %123, align 1, !noalias !220
  %128 = load <4 x i64>, ptr %126, align 1, !noalias !220
  %129 = xor <4 x i64> %128, %127
  %130 = bitcast <4 x i64> %129 to <8 x i32>
  %131 = shufflevector <8 x i32> %130, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %132 = bitcast <8 x i32> %131 to <4 x i64>
  %133 = and <4 x i64> %129, splat (i64 4294967295)
  %134 = and <4 x i64> %132, splat (i64 4294967295)
  %135 = mul nuw <4 x i64> %134, %133
  %136 = shufflevector <4 x i64> %127, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %137 = add <4 x i64> %120, %136
  %138 = add <4 x i64> %137, %135
  %139 = getelementptr inbounds nuw i8, ptr %123, i64 32
  %140 = load <4 x i64>, ptr %139, align 1, !noalias !220
  %141 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %142 = load <4 x i64>, ptr %141, align 1, !noalias !220
  %143 = xor <4 x i64> %142, %140
  %144 = bitcast <4 x i64> %143 to <8 x i32>
  %145 = shufflevector <8 x i32> %144, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %146 = bitcast <8 x i32> %145 to <4 x i64>
  %147 = and <4 x i64> %143, splat (i64 4294967295)
  %148 = and <4 x i64> %146, splat (i64 4294967295)
  %149 = mul nuw <4 x i64> %148, %147
  %150 = shufflevector <4 x i64> %140, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %151 = add <4 x i64> %119, %150
  %152 = add <4 x i64> %151, %149
  %153 = add nuw i64 %121, 1
  %154 = icmp eq i64 %153, %43
  br i1 %154, label %276, label %118, !llvm.loop !49

155:                                              ; preds = %28
  %156 = shl i64 %39, 3
  %157 = getelementptr inbounds nuw i8, ptr %11, i64 %156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %158, i32 0, i32 3, i32 1), !noalias !224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %159 = load <4 x i64>, ptr %31, align 1, !noalias !228
  %160 = load <4 x i64>, ptr %157, align 1, !noalias !228
  %161 = xor <4 x i64> %160, %159
  %162 = bitcast <4 x i64> %161 to <8 x i32>
  %163 = shufflevector <8 x i32> %162, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %164 = bitcast <8 x i32> %163 to <4 x i64>
  %165 = and <4 x i64> %161, splat (i64 4294967295)
  %166 = and <4 x i64> %164, splat (i64 4294967295)
  %167 = mul nuw <4 x i64> %166, %165
  %168 = shufflevector <4 x i64> %159, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %169 = load <4 x i64>, ptr %0, align 32, !alias.scope !229, !noalias !230
  %170 = add <4 x i64> %169, %168
  %171 = add <4 x i64> %170, %167
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %173 = load <4 x i64>, ptr %172, align 1, !noalias !228
  %174 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %175 = load <4 x i64>, ptr %174, align 1, !noalias !228
  %176 = xor <4 x i64> %175, %173
  %177 = bitcast <4 x i64> %176 to <8 x i32>
  %178 = shufflevector <8 x i32> %177, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %179 = bitcast <8 x i32> %178 to <4 x i64>
  %180 = and <4 x i64> %176, splat (i64 4294967295)
  %181 = and <4 x i64> %179, splat (i64 4294967295)
  %182 = mul nuw <4 x i64> %181, %180
  %183 = shufflevector <4 x i64> %173, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %185 = load <4 x i64>, ptr %184, align 32, !alias.scope !229, !noalias !230
  %186 = add <4 x i64> %185, %183
  %187 = add <4 x i64> %186, %182
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %189, i32 0, i32 3, i32 1), !noalias !224
  %190 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %191 = load <4 x i64>, ptr %188, align 1, !noalias !235
  %192 = load <4 x i64>, ptr %190, align 1, !noalias !235
  %193 = xor <4 x i64> %192, %191
  %194 = bitcast <4 x i64> %193 to <8 x i32>
  %195 = shufflevector <8 x i32> %194, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %196 = bitcast <8 x i32> %195 to <4 x i64>
  %197 = and <4 x i64> %193, splat (i64 4294967295)
  %198 = and <4 x i64> %196, splat (i64 4294967295)
  %199 = mul nuw <4 x i64> %198, %197
  %200 = shufflevector <4 x i64> %191, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %201 = add <4 x i64> %171, %200
  %202 = add <4 x i64> %201, %199
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %204 = load <4 x i64>, ptr %203, align 1, !noalias !235
  %205 = getelementptr inbounds nuw i8, ptr %157, i64 40
  %206 = load <4 x i64>, ptr %205, align 1, !noalias !235
  %207 = xor <4 x i64> %206, %204
  %208 = bitcast <4 x i64> %207 to <8 x i32>
  %209 = shufflevector <8 x i32> %208, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %210 = bitcast <8 x i32> %209 to <4 x i64>
  %211 = and <4 x i64> %207, splat (i64 4294967295)
  %212 = and <4 x i64> %210, splat (i64 4294967295)
  %213 = mul nuw <4 x i64> %212, %211
  %214 = shufflevector <4 x i64> %204, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %215 = add <4 x i64> %187, %214
  %216 = add <4 x i64> %215, %213
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %218, i32 0, i32 3, i32 1), !noalias !224
  %219 = getelementptr inbounds nuw i8, ptr %157, i64 16
  %220 = load <4 x i64>, ptr %217, align 1, !noalias !237
  %221 = load <4 x i64>, ptr %219, align 1, !noalias !237
  %222 = xor <4 x i64> %221, %220
  %223 = bitcast <4 x i64> %222 to <8 x i32>
  %224 = shufflevector <8 x i32> %223, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %225 = bitcast <8 x i32> %224 to <4 x i64>
  %226 = and <4 x i64> %222, splat (i64 4294967295)
  %227 = and <4 x i64> %225, splat (i64 4294967295)
  %228 = mul nuw <4 x i64> %227, %226
  %229 = shufflevector <4 x i64> %220, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %230 = add <4 x i64> %202, %229
  %231 = add <4 x i64> %230, %228
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %233 = load <4 x i64>, ptr %232, align 1, !noalias !237
  %234 = getelementptr inbounds nuw i8, ptr %157, i64 48
  %235 = load <4 x i64>, ptr %234, align 1, !noalias !237
  %236 = xor <4 x i64> %235, %233
  %237 = bitcast <4 x i64> %236 to <8 x i32>
  %238 = shufflevector <8 x i32> %237, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %239 = bitcast <8 x i32> %238 to <4 x i64>
  %240 = and <4 x i64> %236, splat (i64 4294967295)
  %241 = and <4 x i64> %239, splat (i64 4294967295)
  %242 = mul nuw <4 x i64> %241, %240
  %243 = shufflevector <4 x i64> %233, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %244 = add <4 x i64> %216, %243
  %245 = add <4 x i64> %244, %242
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %247 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %247, i32 0, i32 3, i32 1), !noalias !224
  %248 = getelementptr inbounds nuw i8, ptr %157, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %249 = load <4 x i64>, ptr %246, align 1, !noalias !241
  %250 = load <4 x i64>, ptr %248, align 1, !noalias !241
  %251 = xor <4 x i64> %250, %249
  %252 = bitcast <4 x i64> %251 to <8 x i32>
  %253 = shufflevector <8 x i32> %252, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %254 = bitcast <8 x i32> %253 to <4 x i64>
  %255 = and <4 x i64> %251, splat (i64 4294967295)
  %256 = and <4 x i64> %254, splat (i64 4294967295)
  %257 = mul nuw <4 x i64> %256, %255
  %258 = shufflevector <4 x i64> %249, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %259 = add <4 x i64> %231, %258
  %260 = add <4 x i64> %259, %257
  store <4 x i64> %260, ptr %0, align 32, !alias.scope !242, !noalias !230
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %262 = load <4 x i64>, ptr %261, align 1, !noalias !241
  %263 = getelementptr inbounds nuw i8, ptr %157, i64 56
  %264 = load <4 x i64>, ptr %263, align 1, !noalias !241
  %265 = xor <4 x i64> %264, %262
  %266 = bitcast <4 x i64> %265 to <8 x i32>
  %267 = shufflevector <8 x i32> %266, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %268 = bitcast <8 x i32> %267 to <4 x i64>
  %269 = and <4 x i64> %265, splat (i64 4294967295)
  %270 = and <4 x i64> %268, splat (i64 4294967295)
  %271 = mul nuw <4 x i64> %270, %269
  %272 = shufflevector <4 x i64> %262, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %273 = add <4 x i64> %245, %272
  %274 = add <4 x i64> %273, %271
  store <4 x i64> %274, ptr %184, align 32, !alias.scope !242, !noalias !230
  %275 = add i64 %39, 4
  br label %277

276:                                              ; preds = %118
  store <4 x i64> %138, ptr %0, align 32, !alias.scope !243, !noalias !244
  store <4 x i64> %152, ptr %102, align 32, !alias.scope !243, !noalias !244
  br label %277

277:                                              ; preds = %276, %87, %155
  %278 = phi i64 [ %275, %155 ], [ 0, %87 ], [ %43, %276 ]
  store i64 %278, ptr %34, align 8, !alias.scope !194, !noalias !196
  store i32 0, ptr %15, align 64, !alias.scope !186, !noalias !189
  br label %279

279:                                              ; preds = %277, %26
  %280 = phi ptr [ %33, %277 ], [ %1, %26 ]
  %281 = ptrtoint ptr %6 to i64
  %282 = ptrtoint ptr %280 to i64
  %283 = sub i64 %281, %282
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %285 = load i64, ptr %284, align 8, !alias.scope !186, !noalias !189
  %286 = shl i64 %285, 6
  %287 = icmp ugt i64 %283, %286
  br i1 %287, label %288, label %496

288:                                              ; preds = %279
  %289 = getelementptr inbounds i8, ptr %6, i64 -1
  %290 = ptrtoint ptr %289 to i64
  %291 = sub i64 %290, %282
  %292 = lshr i64 %291, 6
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %294 = load i64, ptr %293, align 8, !alias.scope !186, !noalias !189
  %295 = sub i64 %285, %294
  %296 = shl i64 %294, 3
  %297 = getelementptr inbounds nuw i8, ptr %11, i64 %296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %298 = icmp eq i64 %285, %294
  %299 = load <4 x i64>, ptr %0, align 32, !alias.scope !252, !noalias !255
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %301 = load <4 x i64>, ptr %300, align 32, !noalias !257
  br i1 %298, label %340, label %302

302:                                              ; preds = %288, %302
  %303 = phi <4 x i64> [ %336, %302 ], [ %301, %288 ]
  %304 = phi <4 x i64> [ %322, %302 ], [ %299, %288 ]
  %305 = phi i64 [ %337, %302 ], [ 0, %288 ]
  %306 = shl i64 %305, 6
  %307 = getelementptr inbounds nuw i8, ptr %280, i64 %306
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %308, i32 0, i32 3, i32 1), !noalias !249
  %309 = shl i64 %305, 3
  %310 = getelementptr inbounds nuw i8, ptr %297, i64 %309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %311 = load <4 x i64>, ptr %307, align 1, !noalias !261
  %312 = load <4 x i64>, ptr %310, align 1, !noalias !261
  %313 = xor <4 x i64> %312, %311
  %314 = bitcast <4 x i64> %313 to <8 x i32>
  %315 = shufflevector <8 x i32> %314, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %316 = bitcast <8 x i32> %315 to <4 x i64>
  %317 = and <4 x i64> %313, splat (i64 4294967295)
  %318 = and <4 x i64> %316, splat (i64 4294967295)
  %319 = mul nuw <4 x i64> %318, %317
  %320 = shufflevector <4 x i64> %311, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %321 = add <4 x i64> %304, %320
  %322 = add <4 x i64> %321, %319
  %323 = getelementptr inbounds nuw i8, ptr %307, i64 32
  %324 = load <4 x i64>, ptr %323, align 1, !noalias !261
  %325 = getelementptr inbounds nuw i8, ptr %310, i64 32
  %326 = load <4 x i64>, ptr %325, align 1, !noalias !261
  %327 = xor <4 x i64> %326, %324
  %328 = bitcast <4 x i64> %327 to <8 x i32>
  %329 = shufflevector <8 x i32> %328, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %330 = bitcast <8 x i32> %329 to <4 x i64>
  %331 = and <4 x i64> %327, splat (i64 4294967295)
  %332 = and <4 x i64> %330, splat (i64 4294967295)
  %333 = mul nuw <4 x i64> %332, %331
  %334 = shufflevector <4 x i64> %324, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %335 = add <4 x i64> %303, %334
  %336 = add <4 x i64> %335, %333
  %337 = add nuw i64 %305, 1
  %338 = icmp eq i64 %337, %295
  br i1 %338, label %339, label %302, !llvm.loop !49

339:                                              ; preds = %302
  store <4 x i64> %322, ptr %0, align 32, !alias.scope !261, !noalias !262
  store <4 x i64> %336, ptr %300, align 32, !alias.scope !261, !noalias !262
  br label %340

340:                                              ; preds = %288, %339
  %341 = phi <4 x i64> [ %336, %339 ], [ %301, %288 ]
  %342 = phi <4 x i64> [ %322, %339 ], [ %299, %288 ]
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %344 = load i64, ptr %343, align 32, !alias.scope !186, !noalias !189
  %345 = getelementptr inbounds nuw i8, ptr %11, i64 %344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %346 = lshr <4 x i64> %342, splat (i64 47)
  %347 = load <4 x i64>, ptr %345, align 1, !noalias !252
  %348 = xor <4 x i64> %347, %346
  %349 = xor <4 x i64> %348, %342
  %350 = bitcast <4 x i64> %349 to <8 x i32>
  %351 = shufflevector <8 x i32> %350, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %352 = bitcast <8 x i32> %351 to <4 x i64>
  %353 = and <4 x i64> %349, splat (i64 4294967295)
  %354 = mul nuw <4 x i64> %353, splat (i64 2654435761)
  %355 = mul <4 x i64> %352, splat (i64 -7046029290881679360)
  %356 = add <4 x i64> %355, %354
  store <4 x i64> %356, ptr %0, align 32, !alias.scope !252, !noalias !255
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %358 = lshr <4 x i64> %341, splat (i64 47)
  %359 = getelementptr inbounds nuw i8, ptr %345, i64 32
  %360 = load <4 x i64>, ptr %359, align 1, !noalias !252
  %361 = xor <4 x i64> %360, %358
  %362 = xor <4 x i64> %361, %341
  %363 = bitcast <4 x i64> %362 to <8 x i32>
  %364 = shufflevector <8 x i32> %363, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %365 = bitcast <8 x i32> %364 to <4 x i64>
  %366 = and <4 x i64> %362, splat (i64 4294967295)
  %367 = mul nuw <4 x i64> %366, splat (i64 2654435761)
  %368 = mul <4 x i64> %365, splat (i64 -7046029290881679360)
  %369 = add <4 x i64> %368, %367
  store <4 x i64> %369, ptr %357, align 32, !alias.scope !252, !noalias !255
  store i64 0, ptr %293, align 8, !alias.scope !186, !noalias !189
  %370 = shl i64 %295, 6
  %371 = getelementptr inbounds nuw i8, ptr %280, i64 %370
  %372 = sub i64 %292, %295
  %373 = icmp ult i64 %372, %285
  br i1 %373, label %447, label %374

374:                                              ; preds = %340
  %375 = icmp eq i64 %285, 0
  br label %376

376:                                              ; preds = %374, %419
  %377 = phi <4 x i64> [ %443, %419 ], [ %369, %374 ]
  %378 = phi <4 x i64> [ %432, %419 ], [ %356, %374 ]
  %379 = phi ptr [ %444, %419 ], [ %371, %374 ]
  %380 = phi i64 [ %445, %419 ], [ %372, %374 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  br i1 %375, label %419, label %381

381:                                              ; preds = %376, %381
  %382 = phi <4 x i64> [ %415, %381 ], [ %377, %376 ]
  %383 = phi <4 x i64> [ %401, %381 ], [ %378, %376 ]
  %384 = phi i64 [ %416, %381 ], [ 0, %376 ]
  %385 = shl i64 %384, 6
  %386 = getelementptr inbounds nuw i8, ptr %379, i64 %385
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %387, i32 0, i32 3, i32 1), !noalias !267
  %388 = shl i64 %384, 3
  %389 = getelementptr inbounds nuw i8, ptr %11, i64 %388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %390 = load <4 x i64>, ptr %386, align 1, !noalias !273
  %391 = load <4 x i64>, ptr %389, align 1, !noalias !273
  %392 = xor <4 x i64> %391, %390
  %393 = bitcast <4 x i64> %392 to <8 x i32>
  %394 = shufflevector <8 x i32> %393, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %395 = bitcast <8 x i32> %394 to <4 x i64>
  %396 = and <4 x i64> %392, splat (i64 4294967295)
  %397 = and <4 x i64> %395, splat (i64 4294967295)
  %398 = mul nuw <4 x i64> %397, %396
  %399 = shufflevector <4 x i64> %390, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %400 = add <4 x i64> %383, %399
  %401 = add <4 x i64> %400, %398
  %402 = getelementptr inbounds nuw i8, ptr %386, i64 32
  %403 = load <4 x i64>, ptr %402, align 1, !noalias !273
  %404 = getelementptr inbounds nuw i8, ptr %389, i64 32
  %405 = load <4 x i64>, ptr %404, align 1, !noalias !273
  %406 = xor <4 x i64> %405, %403
  %407 = bitcast <4 x i64> %406 to <8 x i32>
  %408 = shufflevector <8 x i32> %407, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %409 = bitcast <8 x i32> %408 to <4 x i64>
  %410 = and <4 x i64> %406, splat (i64 4294967295)
  %411 = and <4 x i64> %409, splat (i64 4294967295)
  %412 = mul nuw <4 x i64> %411, %410
  %413 = shufflevector <4 x i64> %403, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %414 = add <4 x i64> %382, %413
  %415 = add <4 x i64> %414, %412
  %416 = add nuw i64 %384, 1
  %417 = icmp eq i64 %416, %285
  br i1 %417, label %418, label %381, !llvm.loop !49

418:                                              ; preds = %381
  store <4 x i64> %401, ptr %0, align 32, !alias.scope !273, !noalias !274
  store <4 x i64> %415, ptr %357, align 32, !alias.scope !273, !noalias !274
  br label %419

419:                                              ; preds = %418, %376
  %420 = phi <4 x i64> [ %377, %376 ], [ %415, %418 ]
  %421 = phi <4 x i64> [ %378, %376 ], [ %401, %418 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %422 = lshr <4 x i64> %421, splat (i64 47)
  %423 = load <4 x i64>, ptr %345, align 1, !noalias !279
  %424 = xor <4 x i64> %423, %422
  %425 = xor <4 x i64> %424, %421
  %426 = bitcast <4 x i64> %425 to <8 x i32>
  %427 = shufflevector <8 x i32> %426, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %428 = bitcast <8 x i32> %427 to <4 x i64>
  %429 = and <4 x i64> %425, splat (i64 4294967295)
  %430 = mul nuw <4 x i64> %429, splat (i64 2654435761)
  %431 = mul <4 x i64> %428, splat (i64 -7046029290881679360)
  %432 = add <4 x i64> %431, %430
  store <4 x i64> %432, ptr %0, align 32, !alias.scope !279, !noalias !282
  %433 = lshr <4 x i64> %420, splat (i64 47)
  %434 = load <4 x i64>, ptr %359, align 1, !noalias !279
  %435 = xor <4 x i64> %434, %433
  %436 = xor <4 x i64> %435, %420
  %437 = bitcast <4 x i64> %436 to <8 x i32>
  %438 = shufflevector <8 x i32> %437, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %439 = bitcast <8 x i32> %438 to <4 x i64>
  %440 = and <4 x i64> %436, splat (i64 4294967295)
  %441 = mul nuw <4 x i64> %440, splat (i64 2654435761)
  %442 = mul <4 x i64> %439, splat (i64 -7046029290881679360)
  %443 = add <4 x i64> %442, %441
  store <4 x i64> %443, ptr %357, align 32, !alias.scope !279, !noalias !282
  %444 = getelementptr inbounds nuw i8, ptr %379, i64 %286
  %445 = sub i64 %380, %285
  %446 = icmp ult i64 %445, %285
  br i1 %446, label %447, label %376, !llvm.loop !284

447:                                              ; preds = %419, %340
  %448 = phi <4 x i64> [ %369, %340 ], [ %443, %419 ]
  %449 = phi <4 x i64> [ %356, %340 ], [ %432, %419 ]
  %450 = phi i64 [ %372, %340 ], [ %445, %419 ]
  %451 = phi ptr [ %371, %340 ], [ %444, %419 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %452 = icmp eq i64 %450, 0
  br i1 %452, label %491, label %453

453:                                              ; preds = %447, %453
  %454 = phi <4 x i64> [ %487, %453 ], [ %448, %447 ]
  %455 = phi <4 x i64> [ %473, %453 ], [ %449, %447 ]
  %456 = phi i64 [ %488, %453 ], [ 0, %447 ]
  %457 = shl i64 %456, 6
  %458 = getelementptr inbounds nuw i8, ptr %451, i64 %457
  %459 = getelementptr inbounds nuw i8, ptr %458, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %459, i32 0, i32 3, i32 1), !noalias !285
  %460 = shl i64 %456, 3
  %461 = getelementptr inbounds nuw i8, ptr %11, i64 %460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %462 = load <4 x i64>, ptr %458, align 1, !noalias !291
  %463 = load <4 x i64>, ptr %461, align 1, !noalias !291
  %464 = xor <4 x i64> %463, %462
  %465 = bitcast <4 x i64> %464 to <8 x i32>
  %466 = shufflevector <8 x i32> %465, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %467 = bitcast <8 x i32> %466 to <4 x i64>
  %468 = and <4 x i64> %464, splat (i64 4294967295)
  %469 = and <4 x i64> %467, splat (i64 4294967295)
  %470 = mul nuw <4 x i64> %469, %468
  %471 = shufflevector <4 x i64> %462, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %472 = add <4 x i64> %455, %471
  %473 = add <4 x i64> %472, %470
  %474 = getelementptr inbounds nuw i8, ptr %458, i64 32
  %475 = load <4 x i64>, ptr %474, align 1, !noalias !291
  %476 = getelementptr inbounds nuw i8, ptr %461, i64 32
  %477 = load <4 x i64>, ptr %476, align 1, !noalias !291
  %478 = xor <4 x i64> %477, %475
  %479 = bitcast <4 x i64> %478 to <8 x i32>
  %480 = shufflevector <8 x i32> %479, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %481 = bitcast <8 x i32> %480 to <4 x i64>
  %482 = and <4 x i64> %478, splat (i64 4294967295)
  %483 = and <4 x i64> %481, splat (i64 4294967295)
  %484 = mul nuw <4 x i64> %483, %482
  %485 = shufflevector <4 x i64> %475, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %486 = add <4 x i64> %454, %485
  %487 = add <4 x i64> %486, %484
  %488 = add nuw i64 %456, 1
  %489 = icmp eq i64 %488, %450
  br i1 %489, label %490, label %453, !llvm.loop !49

490:                                              ; preds = %453
  store <4 x i64> %473, ptr %0, align 32, !alias.scope !291, !noalias !292
  store <4 x i64> %487, ptr %357, align 32, !alias.scope !291, !noalias !292
  br label %491

491:                                              ; preds = %490, %447
  %492 = shl i64 %450, 6
  %493 = getelementptr inbounds nuw i8, ptr %451, i64 %492
  store i64 %450, ptr %293, align 8, !alias.scope !186, !noalias !189
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %495 = getelementptr inbounds i8, ptr %493, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %494, ptr noundef nonnull readonly align 1 dereferenceable(64) %495, i64 64, i1 false)
  br label %756

496:                                              ; preds = %279
  %497 = icmp sgt i64 %283, 256
  br i1 %497, label %498, label %756

498:                                              ; preds = %496
  %499 = getelementptr inbounds i8, ptr %6, i64 -256
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %502 = load i64, ptr %500, align 8, !alias.scope !297, !noalias !300
  %503 = load i64, ptr %284, align 8, !alias.scope !186, !noalias !189
  %504 = load i64, ptr %501, align 32, !alias.scope !186, !noalias !189
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %507 = getelementptr inbounds nuw i8, ptr %11, i64 %504
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %509 = getelementptr inbounds nuw i8, ptr %507, i64 32
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %511

511:                                              ; preds = %749, %498
  %512 = phi i64 [ %502, %498 ], [ %750, %749 ]
  %513 = phi ptr [ %280, %498 ], [ %751, %749 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %514 = sub i64 %503, %512
  %515 = icmp ugt i64 %514, 4
  br i1 %515, label %628, label %516

516:                                              ; preds = %511
  %517 = sub nuw nsw i64 4, %514
  %518 = shl i64 %512, 3
  %519 = getelementptr inbounds nuw i8, ptr %11, i64 %518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %520 = icmp eq i64 %503, %512
  %521 = load <4 x i64>, ptr %0, align 32, !alias.scope !308, !noalias !311
  br i1 %520, label %522, label %524

522:                                              ; preds = %516
  %523 = load <4 x i64>, ptr %506, align 32, !alias.scope !308, !noalias !311
  br label %563

524:                                              ; preds = %516
  %525 = load <4 x i64>, ptr %505, align 32, !alias.scope !313, !noalias !316
  br label %526

526:                                              ; preds = %524, %526
  %527 = phi <4 x i64> [ %560, %526 ], [ %525, %524 ]
  %528 = phi <4 x i64> [ %546, %526 ], [ %521, %524 ]
  %529 = phi i64 [ %561, %526 ], [ 0, %524 ]
  %530 = shl i64 %529, 6
  %531 = getelementptr inbounds nuw i8, ptr %513, i64 %530
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %532, i32 0, i32 3, i32 1), !noalias !321
  %533 = shl i64 %529, 3
  %534 = getelementptr inbounds nuw i8, ptr %519, i64 %533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %535 = load <4 x i64>, ptr %531, align 1, !noalias !323
  %536 = load <4 x i64>, ptr %534, align 1, !noalias !323
  %537 = xor <4 x i64> %536, %535
  %538 = bitcast <4 x i64> %537 to <8 x i32>
  %539 = shufflevector <8 x i32> %538, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %540 = bitcast <8 x i32> %539 to <4 x i64>
  %541 = and <4 x i64> %537, splat (i64 4294967295)
  %542 = and <4 x i64> %540, splat (i64 4294967295)
  %543 = mul nuw <4 x i64> %542, %541
  %544 = shufflevector <4 x i64> %535, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %545 = add <4 x i64> %528, %544
  %546 = add <4 x i64> %545, %543
  %547 = getelementptr inbounds nuw i8, ptr %531, i64 32
  %548 = load <4 x i64>, ptr %547, align 1, !noalias !323
  %549 = getelementptr inbounds nuw i8, ptr %534, i64 32
  %550 = load <4 x i64>, ptr %549, align 1, !noalias !323
  %551 = xor <4 x i64> %550, %548
  %552 = bitcast <4 x i64> %551 to <8 x i32>
  %553 = shufflevector <8 x i32> %552, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %554 = bitcast <8 x i32> %553 to <4 x i64>
  %555 = and <4 x i64> %551, splat (i64 4294967295)
  %556 = and <4 x i64> %554, splat (i64 4294967295)
  %557 = mul nuw <4 x i64> %556, %555
  %558 = shufflevector <4 x i64> %548, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %559 = add <4 x i64> %527, %558
  %560 = add <4 x i64> %559, %557
  %561 = add nuw i64 %529, 1
  %562 = icmp eq i64 %561, %514
  br i1 %562, label %563, label %526, !llvm.loop !49

563:                                              ; preds = %526, %522
  %564 = phi <4 x i64> [ %523, %522 ], [ %560, %526 ]
  %565 = phi <4 x i64> [ %521, %522 ], [ %546, %526 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %566 = lshr <4 x i64> %565, splat (i64 47)
  %567 = load <4 x i64>, ptr %507, align 1, !noalias !325
  %568 = xor <4 x i64> %567, %566
  %569 = xor <4 x i64> %568, %565
  %570 = bitcast <4 x i64> %569 to <8 x i32>
  %571 = shufflevector <8 x i32> %570, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %572 = bitcast <8 x i32> %571 to <4 x i64>
  %573 = and <4 x i64> %569, splat (i64 4294967295)
  %574 = mul nuw <4 x i64> %573, splat (i64 2654435761)
  %575 = mul <4 x i64> %572, splat (i64 -7046029290881679360)
  %576 = add <4 x i64> %575, %574
  store <4 x i64> %576, ptr %0, align 32, !alias.scope !308, !noalias !311
  %577 = lshr <4 x i64> %564, splat (i64 47)
  %578 = load <4 x i64>, ptr %509, align 1, !noalias !325
  %579 = xor <4 x i64> %578, %577
  %580 = xor <4 x i64> %579, %564
  %581 = bitcast <4 x i64> %580 to <8 x i32>
  %582 = shufflevector <8 x i32> %581, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %583 = bitcast <8 x i32> %582 to <4 x i64>
  %584 = and <4 x i64> %580, splat (i64 4294967295)
  %585 = mul nuw <4 x i64> %584, splat (i64 2654435761)
  %586 = mul <4 x i64> %583, splat (i64 -7046029290881679360)
  %587 = add <4 x i64> %586, %585
  store <4 x i64> %587, ptr %508, align 32, !alias.scope !308, !noalias !311
  %588 = shl nuw nsw i64 %514, 6
  %589 = getelementptr inbounds nuw i8, ptr %513, i64 %588
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %590 = icmp eq i64 %514, 4
  br i1 %590, label %749, label %591

591:                                              ; preds = %563, %591
  %592 = phi <4 x i64> [ %625, %591 ], [ %587, %563 ]
  %593 = phi <4 x i64> [ %611, %591 ], [ %576, %563 ]
  %594 = phi i64 [ %626, %591 ], [ 0, %563 ]
  %595 = shl i64 %594, 6
  %596 = getelementptr inbounds nuw i8, ptr %589, i64 %595
  %597 = getelementptr inbounds nuw i8, ptr %596, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %597, i32 0, i32 3, i32 1), !noalias !329
  %598 = shl i64 %594, 3
  %599 = getelementptr inbounds nuw i8, ptr %11, i64 %598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %600 = load <4 x i64>, ptr %596, align 1, !noalias !333
  %601 = load <4 x i64>, ptr %599, align 1, !noalias !333
  %602 = xor <4 x i64> %601, %600
  %603 = bitcast <4 x i64> %602 to <8 x i32>
  %604 = shufflevector <8 x i32> %603, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %605 = bitcast <8 x i32> %604 to <4 x i64>
  %606 = and <4 x i64> %602, splat (i64 4294967295)
  %607 = and <4 x i64> %605, splat (i64 4294967295)
  %608 = mul nuw <4 x i64> %607, %606
  %609 = shufflevector <4 x i64> %600, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %610 = add <4 x i64> %593, %609
  %611 = add <4 x i64> %610, %608
  %612 = getelementptr inbounds nuw i8, ptr %596, i64 32
  %613 = load <4 x i64>, ptr %612, align 1, !noalias !333
  %614 = getelementptr inbounds nuw i8, ptr %599, i64 32
  %615 = load <4 x i64>, ptr %614, align 1, !noalias !333
  %616 = xor <4 x i64> %615, %613
  %617 = bitcast <4 x i64> %616 to <8 x i32>
  %618 = shufflevector <8 x i32> %617, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %619 = bitcast <8 x i32> %618 to <4 x i64>
  %620 = and <4 x i64> %616, splat (i64 4294967295)
  %621 = and <4 x i64> %619, splat (i64 4294967295)
  %622 = mul nuw <4 x i64> %621, %620
  %623 = shufflevector <4 x i64> %613, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %624 = add <4 x i64> %592, %623
  %625 = add <4 x i64> %624, %622
  %626 = add nuw i64 %594, 1
  %627 = icmp eq i64 %626, %517
  br i1 %627, label %748, label %591, !llvm.loop !49

628:                                              ; preds = %511
  %629 = shl i64 %512, 3
  %630 = getelementptr inbounds nuw i8, ptr %11, i64 %629
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %631 = getelementptr inbounds nuw i8, ptr %513, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %631, i32 0, i32 3, i32 1), !noalias !337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %632 = load <4 x i64>, ptr %513, align 1, !noalias !341
  %633 = load <4 x i64>, ptr %630, align 1, !noalias !341
  %634 = xor <4 x i64> %633, %632
  %635 = bitcast <4 x i64> %634 to <8 x i32>
  %636 = shufflevector <8 x i32> %635, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %637 = bitcast <8 x i32> %636 to <4 x i64>
  %638 = and <4 x i64> %634, splat (i64 4294967295)
  %639 = and <4 x i64> %637, splat (i64 4294967295)
  %640 = mul nuw <4 x i64> %639, %638
  %641 = shufflevector <4 x i64> %632, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %642 = load <4 x i64>, ptr %0, align 32, !alias.scope !342, !noalias !343
  %643 = add <4 x i64> %642, %641
  %644 = add <4 x i64> %643, %640
  %645 = getelementptr inbounds nuw i8, ptr %513, i64 32
  %646 = load <4 x i64>, ptr %645, align 1, !noalias !341
  %647 = getelementptr inbounds nuw i8, ptr %630, i64 32
  %648 = load <4 x i64>, ptr %647, align 1, !noalias !341
  %649 = xor <4 x i64> %648, %646
  %650 = bitcast <4 x i64> %649 to <8 x i32>
  %651 = shufflevector <8 x i32> %650, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %652 = bitcast <8 x i32> %651 to <4 x i64>
  %653 = and <4 x i64> %649, splat (i64 4294967295)
  %654 = and <4 x i64> %652, splat (i64 4294967295)
  %655 = mul nuw <4 x i64> %654, %653
  %656 = shufflevector <4 x i64> %646, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %657 = load <4 x i64>, ptr %510, align 32, !alias.scope !342, !noalias !343
  %658 = add <4 x i64> %657, %656
  %659 = add <4 x i64> %658, %655
  %660 = getelementptr inbounds nuw i8, ptr %513, i64 64
  %661 = getelementptr inbounds nuw i8, ptr %513, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %661, i32 0, i32 3, i32 1), !noalias !337
  %662 = getelementptr inbounds nuw i8, ptr %630, i64 8
  %663 = load <4 x i64>, ptr %660, align 1, !noalias !348
  %664 = load <4 x i64>, ptr %662, align 1, !noalias !348
  %665 = xor <4 x i64> %664, %663
  %666 = bitcast <4 x i64> %665 to <8 x i32>
  %667 = shufflevector <8 x i32> %666, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %668 = bitcast <8 x i32> %667 to <4 x i64>
  %669 = and <4 x i64> %665, splat (i64 4294967295)
  %670 = and <4 x i64> %668, splat (i64 4294967295)
  %671 = mul nuw <4 x i64> %670, %669
  %672 = shufflevector <4 x i64> %663, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %673 = add <4 x i64> %644, %672
  %674 = add <4 x i64> %673, %671
  %675 = getelementptr inbounds nuw i8, ptr %513, i64 96
  %676 = load <4 x i64>, ptr %675, align 1, !noalias !348
  %677 = getelementptr inbounds nuw i8, ptr %630, i64 40
  %678 = load <4 x i64>, ptr %677, align 1, !noalias !348
  %679 = xor <4 x i64> %678, %676
  %680 = bitcast <4 x i64> %679 to <8 x i32>
  %681 = shufflevector <8 x i32> %680, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %682 = bitcast <8 x i32> %681 to <4 x i64>
  %683 = and <4 x i64> %679, splat (i64 4294967295)
  %684 = and <4 x i64> %682, splat (i64 4294967295)
  %685 = mul nuw <4 x i64> %684, %683
  %686 = shufflevector <4 x i64> %676, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %687 = add <4 x i64> %659, %686
  %688 = add <4 x i64> %687, %685
  %689 = getelementptr inbounds nuw i8, ptr %513, i64 128
  %690 = getelementptr inbounds nuw i8, ptr %513, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %690, i32 0, i32 3, i32 1), !noalias !337
  %691 = getelementptr inbounds nuw i8, ptr %630, i64 16
  %692 = load <4 x i64>, ptr %689, align 1, !noalias !350
  %693 = load <4 x i64>, ptr %691, align 1, !noalias !350
  %694 = xor <4 x i64> %693, %692
  %695 = bitcast <4 x i64> %694 to <8 x i32>
  %696 = shufflevector <8 x i32> %695, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %697 = bitcast <8 x i32> %696 to <4 x i64>
  %698 = and <4 x i64> %694, splat (i64 4294967295)
  %699 = and <4 x i64> %697, splat (i64 4294967295)
  %700 = mul nuw <4 x i64> %699, %698
  %701 = shufflevector <4 x i64> %692, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %702 = add <4 x i64> %674, %701
  %703 = add <4 x i64> %702, %700
  %704 = getelementptr inbounds nuw i8, ptr %513, i64 160
  %705 = load <4 x i64>, ptr %704, align 1, !noalias !350
  %706 = getelementptr inbounds nuw i8, ptr %630, i64 48
  %707 = load <4 x i64>, ptr %706, align 1, !noalias !350
  %708 = xor <4 x i64> %707, %705
  %709 = bitcast <4 x i64> %708 to <8 x i32>
  %710 = shufflevector <8 x i32> %709, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %711 = bitcast <8 x i32> %710 to <4 x i64>
  %712 = and <4 x i64> %708, splat (i64 4294967295)
  %713 = and <4 x i64> %711, splat (i64 4294967295)
  %714 = mul nuw <4 x i64> %713, %712
  %715 = shufflevector <4 x i64> %705, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %716 = add <4 x i64> %688, %715
  %717 = add <4 x i64> %716, %714
  %718 = getelementptr inbounds nuw i8, ptr %513, i64 192
  %719 = getelementptr inbounds nuw i8, ptr %513, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %719, i32 0, i32 3, i32 1), !noalias !337
  %720 = getelementptr inbounds nuw i8, ptr %630, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %721 = load <4 x i64>, ptr %718, align 1, !noalias !354
  %722 = load <4 x i64>, ptr %720, align 1, !noalias !354
  %723 = xor <4 x i64> %722, %721
  %724 = bitcast <4 x i64> %723 to <8 x i32>
  %725 = shufflevector <8 x i32> %724, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %726 = bitcast <8 x i32> %725 to <4 x i64>
  %727 = and <4 x i64> %723, splat (i64 4294967295)
  %728 = and <4 x i64> %726, splat (i64 4294967295)
  %729 = mul nuw <4 x i64> %728, %727
  %730 = shufflevector <4 x i64> %721, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %731 = add <4 x i64> %703, %730
  %732 = add <4 x i64> %731, %729
  store <4 x i64> %732, ptr %0, align 32, !alias.scope !355, !noalias !343
  %733 = getelementptr inbounds nuw i8, ptr %513, i64 224
  %734 = load <4 x i64>, ptr %733, align 1, !noalias !354
  %735 = getelementptr inbounds nuw i8, ptr %630, i64 56
  %736 = load <4 x i64>, ptr %735, align 1, !noalias !354
  %737 = xor <4 x i64> %736, %734
  %738 = bitcast <4 x i64> %737 to <8 x i32>
  %739 = shufflevector <8 x i32> %738, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %740 = bitcast <8 x i32> %739 to <4 x i64>
  %741 = and <4 x i64> %737, splat (i64 4294967295)
  %742 = and <4 x i64> %740, splat (i64 4294967295)
  %743 = mul nuw <4 x i64> %742, %741
  %744 = shufflevector <4 x i64> %734, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %745 = add <4 x i64> %717, %744
  %746 = add <4 x i64> %745, %743
  store <4 x i64> %746, ptr %510, align 32, !alias.scope !355, !noalias !343
  %747 = add i64 %512, 4
  br label %749

748:                                              ; preds = %591
  store <4 x i64> %611, ptr %0, align 32, !alias.scope !356, !noalias !357
  store <4 x i64> %625, ptr %508, align 32, !alias.scope !356, !noalias !357
  br label %749

749:                                              ; preds = %748, %563, %628
  %750 = phi i64 [ %747, %628 ], [ 0, %563 ], [ %517, %748 ]
  %751 = getelementptr inbounds nuw i8, ptr %513, i64 256
  %752 = icmp ult ptr %751, %499
  br i1 %752, label %511, label %753, !llvm.loop !362

753:                                              ; preds = %749
  store i64 %750, ptr %500, align 8, !alias.scope !297, !noalias !300
  %754 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %755 = getelementptr inbounds nuw i8, ptr %513, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %754, ptr noundef nonnull readonly align 1 dereferenceable(64) %755, i64 64, i1 false)
  br label %756

756:                                              ; preds = %753, %496, %491
  %757 = phi ptr [ %493, %491 ], [ %751, %753 ], [ %280, %496 ]
  %758 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %759 = ptrtoint ptr %757 to i64
  %760 = sub i64 %281, %759
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %758, ptr readonly align 1 %757, i64 %760, i1 false)
  %761 = trunc i64 %760 to i32
  br label %762

762:                                              ; preds = %756, %20
  %763 = phi i32 [ %761, %756 ], [ %25, %20 ]
  store i32 %763, ptr %15, align 64, !alias.scope !186, !noalias !189
  br label %764

764:                                              ; preds = %3, %762
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @XXH3_64bits_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = select i1 %5, ptr %6, ptr %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %9 = load i64, ptr %8, align 16
  %10 = icmp ugt i64 %9, 240
  br i1 %10, label %11, label %324

11:                                               ; preds = %1
  %12 = load <4 x i64>, ptr %0, align 1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x i64>, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %16 = load i32, ptr %15, align 64
  %17 = icmp ugt i32 %16, 63
  br i1 %17, label %18, label %217

18:                                               ; preds = %11
  %19 = add i32 %16, -1
  %20 = lshr i32 %19, 6
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %28 = load i64, ptr %27, align 32
  %29 = sub i64 %25, %23
  %30 = icmp ugt i64 %29, %21
  br i1 %30, label %140, label %31

31:                                               ; preds = %18
  %32 = sub nuw nsw i64 %21, %29
  %33 = shl i64 %23, 3
  %34 = getelementptr inbounds nuw i8, ptr %7, i64 %33
  %35 = icmp eq i64 %25, %23
  br i1 %35, label %73, label %36

36:                                               ; preds = %31, %36
  %37 = phi <4 x i64> [ %70, %36 ], [ %14, %31 ]
  %38 = phi <4 x i64> [ %56, %36 ], [ %12, %31 ]
  %39 = phi i64 [ %71, %36 ], [ 0, %31 ]
  %40 = shl i64 %39, 6
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %42, i32 0, i32 3, i32 1), !noalias !363
  %43 = shl i64 %39, 3
  %44 = getelementptr inbounds nuw i8, ptr %34, i64 %43
  %45 = load <4 x i64>, ptr %41, align 1, !noalias !369
  %46 = load <4 x i64>, ptr %44, align 1, !noalias !369
  %47 = xor <4 x i64> %46, %45
  %48 = bitcast <4 x i64> %47 to <8 x i32>
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %50 = bitcast <8 x i32> %49 to <4 x i64>
  %51 = and <4 x i64> %47, splat (i64 4294967295)
  %52 = and <4 x i64> %50, splat (i64 4294967295)
  %53 = mul nuw <4 x i64> %52, %51
  %54 = shufflevector <4 x i64> %45, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %55 = add <4 x i64> %38, %54
  %56 = add <4 x i64> %55, %53
  %57 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %58 = load <4 x i64>, ptr %57, align 1, !noalias !369
  %59 = getelementptr inbounds nuw i8, ptr %44, i64 32
  %60 = load <4 x i64>, ptr %59, align 1, !noalias !369
  %61 = xor <4 x i64> %60, %58
  %62 = bitcast <4 x i64> %61 to <8 x i32>
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %64 = bitcast <8 x i32> %63 to <4 x i64>
  %65 = and <4 x i64> %61, splat (i64 4294967295)
  %66 = and <4 x i64> %64, splat (i64 4294967295)
  %67 = mul nuw <4 x i64> %66, %65
  %68 = shufflevector <4 x i64> %58, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %69 = add <4 x i64> %37, %68
  %70 = add <4 x i64> %69, %67
  %71 = add nuw i64 %39, 1
  %72 = icmp eq i64 %71, %29
  br i1 %72, label %73, label %36, !llvm.loop !49

73:                                               ; preds = %36, %31
  %74 = phi <4 x i64> [ %14, %31 ], [ %70, %36 ]
  %75 = phi <4 x i64> [ %12, %31 ], [ %56, %36 ]
  %76 = getelementptr inbounds nuw i8, ptr %7, i64 %28
  %77 = lshr <4 x i64> %75, splat (i64 47)
  %78 = load <4 x i64>, ptr %76, align 1, !noalias !372
  %79 = xor <4 x i64> %78, %77
  %80 = xor <4 x i64> %79, %75
  %81 = bitcast <4 x i64> %80 to <8 x i32>
  %82 = shufflevector <8 x i32> %81, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %83 = bitcast <8 x i32> %82 to <4 x i64>
  %84 = and <4 x i64> %80, splat (i64 4294967295)
  %85 = mul nuw <4 x i64> %84, splat (i64 2654435761)
  %86 = mul <4 x i64> %83, splat (i64 -7046029290881679360)
  %87 = add <4 x i64> %86, %85
  %88 = lshr <4 x i64> %74, splat (i64 47)
  %89 = getelementptr inbounds nuw i8, ptr %76, i64 32
  %90 = load <4 x i64>, ptr %89, align 1, !noalias !372
  %91 = xor <4 x i64> %90, %88
  %92 = xor <4 x i64> %91, %74
  %93 = bitcast <4 x i64> %92 to <8 x i32>
  %94 = shufflevector <8 x i32> %93, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %95 = bitcast <8 x i32> %94 to <4 x i64>
  %96 = and <4 x i64> %92, splat (i64 4294967295)
  %97 = mul nuw <4 x i64> %96, splat (i64 2654435761)
  %98 = mul <4 x i64> %95, splat (i64 -7046029290881679360)
  %99 = add <4 x i64> %98, %97
  %100 = shl nuw nsw i64 %29, 6
  %101 = getelementptr inbounds nuw i8, ptr %26, i64 %100
  %102 = icmp eq i64 %29, %21
  br i1 %102, label %183, label %103

103:                                              ; preds = %73, %103
  %104 = phi <4 x i64> [ %137, %103 ], [ %99, %73 ]
  %105 = phi <4 x i64> [ %123, %103 ], [ %87, %73 ]
  %106 = phi i64 [ %138, %103 ], [ 0, %73 ]
  %107 = shl i64 %106, 6
  %108 = getelementptr inbounds nuw i8, ptr %101, i64 %107
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %109, i32 0, i32 3, i32 1), !noalias !375
  %110 = shl i64 %106, 3
  %111 = getelementptr inbounds nuw i8, ptr %7, i64 %110
  %112 = load <4 x i64>, ptr %108, align 1, !noalias !378
  %113 = load <4 x i64>, ptr %111, align 1, !noalias !378
  %114 = xor <4 x i64> %113, %112
  %115 = bitcast <4 x i64> %114 to <8 x i32>
  %116 = shufflevector <8 x i32> %115, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %117 = bitcast <8 x i32> %116 to <4 x i64>
  %118 = and <4 x i64> %114, splat (i64 4294967295)
  %119 = and <4 x i64> %117, splat (i64 4294967295)
  %120 = mul nuw <4 x i64> %119, %118
  %121 = shufflevector <4 x i64> %112, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %122 = add <4 x i64> %105, %121
  %123 = add <4 x i64> %122, %120
  %124 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %125 = load <4 x i64>, ptr %124, align 1, !noalias !378
  %126 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %127 = load <4 x i64>, ptr %126, align 1, !noalias !378
  %128 = xor <4 x i64> %127, %125
  %129 = bitcast <4 x i64> %128 to <8 x i32>
  %130 = shufflevector <8 x i32> %129, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %131 = bitcast <8 x i32> %130 to <4 x i64>
  %132 = and <4 x i64> %128, splat (i64 4294967295)
  %133 = and <4 x i64> %131, splat (i64 4294967295)
  %134 = mul nuw <4 x i64> %133, %132
  %135 = shufflevector <4 x i64> %125, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %136 = add <4 x i64> %104, %135
  %137 = add <4 x i64> %136, %134
  %138 = add nuw i64 %106, 1
  %139 = icmp eq i64 %138, %32
  br i1 %139, label %183, label %103, !llvm.loop !49

140:                                              ; preds = %18
  %141 = shl i64 %23, 3
  %142 = getelementptr inbounds nuw i8, ptr %7, i64 %141
  %143 = icmp eq i32 %16, 64
  br i1 %143, label %183, label %144

144:                                              ; preds = %140
  %145 = tail call i64 @llvm.umax.i64(i64 %21, i64 1)
  br label %146

146:                                              ; preds = %144, %146
  %147 = phi <4 x i64> [ %14, %144 ], [ %180, %146 ]
  %148 = phi <4 x i64> [ %12, %144 ], [ %166, %146 ]
  %149 = phi i64 [ 0, %144 ], [ %181, %146 ]
  %150 = shl i64 %149, 6
  %151 = getelementptr inbounds nuw i8, ptr %26, i64 %150
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %152, i32 0, i32 3, i32 1), !noalias !381
  %153 = shl i64 %149, 3
  %154 = getelementptr inbounds nuw i8, ptr %142, i64 %153
  %155 = load <4 x i64>, ptr %151, align 1, !noalias !384
  %156 = load <4 x i64>, ptr %154, align 1, !noalias !384
  %157 = xor <4 x i64> %156, %155
  %158 = bitcast <4 x i64> %157 to <8 x i32>
  %159 = shufflevector <8 x i32> %158, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %160 = bitcast <8 x i32> %159 to <4 x i64>
  %161 = and <4 x i64> %157, splat (i64 4294967295)
  %162 = and <4 x i64> %160, splat (i64 4294967295)
  %163 = mul nuw <4 x i64> %162, %161
  %164 = shufflevector <4 x i64> %155, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %165 = add <4 x i64> %148, %164
  %166 = add <4 x i64> %165, %163
  %167 = getelementptr inbounds nuw i8, ptr %151, i64 32
  %168 = load <4 x i64>, ptr %167, align 1, !noalias !384
  %169 = getelementptr inbounds nuw i8, ptr %154, i64 32
  %170 = load <4 x i64>, ptr %169, align 1, !noalias !384
  %171 = xor <4 x i64> %170, %168
  %172 = bitcast <4 x i64> %171 to <8 x i32>
  %173 = shufflevector <8 x i32> %172, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %174 = bitcast <8 x i32> %173 to <4 x i64>
  %175 = and <4 x i64> %171, splat (i64 4294967295)
  %176 = and <4 x i64> %174, splat (i64 4294967295)
  %177 = mul nuw <4 x i64> %176, %175
  %178 = shufflevector <4 x i64> %168, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %179 = add <4 x i64> %147, %178
  %180 = add <4 x i64> %179, %177
  %181 = add nuw nsw i64 %149, 1
  %182 = icmp eq i64 %181, %145
  br i1 %182, label %183, label %146, !llvm.loop !49

183:                                              ; preds = %103, %146, %73, %140
  %184 = phi <4 x i64> [ %14, %140 ], [ %99, %73 ], [ %180, %146 ], [ %137, %103 ]
  %185 = phi <4 x i64> [ %12, %140 ], [ %87, %73 ], [ %166, %146 ], [ %123, %103 ]
  %186 = zext i32 %16 to i64
  %187 = getelementptr inbounds nuw i8, ptr %26, i64 %186
  %188 = getelementptr inbounds i8, ptr %187, i64 -64
  %189 = getelementptr inbounds nuw i8, ptr %7, i64 %28
  %190 = getelementptr inbounds i8, ptr %189, i64 -7
  %191 = load <4 x i64>, ptr %188, align 1, !noalias !387
  %192 = load <4 x i64>, ptr %190, align 1, !noalias !387
  %193 = xor <4 x i64> %192, %191
  %194 = bitcast <4 x i64> %193 to <8 x i32>
  %195 = shufflevector <8 x i32> %194, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %196 = bitcast <8 x i32> %195 to <4 x i64>
  %197 = and <4 x i64> %193, splat (i64 4294967295)
  %198 = and <4 x i64> %196, splat (i64 4294967295)
  %199 = mul nuw <4 x i64> %198, %197
  %200 = shufflevector <4 x i64> %191, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %201 = add <4 x i64> %185, %200
  %202 = add <4 x i64> %201, %199
  %203 = getelementptr inbounds i8, ptr %187, i64 -32
  %204 = load <4 x i64>, ptr %203, align 1, !noalias !387
  %205 = getelementptr inbounds nuw i8, ptr %189, i64 25
  %206 = load <4 x i64>, ptr %205, align 1, !noalias !387
  %207 = xor <4 x i64> %206, %204
  %208 = bitcast <4 x i64> %207 to <8 x i32>
  %209 = shufflevector <8 x i32> %208, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %210 = bitcast <8 x i32> %209 to <4 x i64>
  %211 = and <4 x i64> %207, splat (i64 4294967295)
  %212 = and <4 x i64> %210, splat (i64 4294967295)
  %213 = mul nuw <4 x i64> %212, %211
  %214 = shufflevector <4 x i64> %204, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %215 = add <4 x i64> %184, %214
  %216 = add <4 x i64> %215, %213
  br label %255

217:                                              ; preds = %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #27
  %218 = sub nuw nsw i32 64, %16
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %221 = sub nsw i64 0, %219
  %222 = getelementptr inbounds i8, ptr %15, i64 %221
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull readonly align 1 %222, i64 %219, i1 false)
  %223 = getelementptr inbounds nuw i8, ptr %2, i64 %219
  %224 = zext nneg i32 %16 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %223, ptr nonnull readonly align 1 %220, i64 %224, i1 false)
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %226 = load i64, ptr %225, align 32
  %227 = getelementptr inbounds nuw i8, ptr %7, i64 %226
  %228 = getelementptr inbounds i8, ptr %227, i64 -7
  %229 = load <4 x i64>, ptr %2, align 16, !noalias !390
  %230 = load <4 x i64>, ptr %228, align 1, !noalias !390
  %231 = xor <4 x i64> %230, %229
  %232 = bitcast <4 x i64> %231 to <8 x i32>
  %233 = shufflevector <8 x i32> %232, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %234 = bitcast <8 x i32> %233 to <4 x i64>
  %235 = and <4 x i64> %231, splat (i64 4294967295)
  %236 = and <4 x i64> %234, splat (i64 4294967295)
  %237 = mul nuw <4 x i64> %236, %235
  %238 = shufflevector <4 x i64> %229, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %239 = add <4 x i64> %12, %238
  %240 = add <4 x i64> %239, %237
  %241 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %242 = load <4 x i64>, ptr %241, align 16, !noalias !390
  %243 = getelementptr inbounds nuw i8, ptr %227, i64 25
  %244 = load <4 x i64>, ptr %243, align 1, !noalias !390
  %245 = xor <4 x i64> %244, %242
  %246 = bitcast <4 x i64> %245 to <8 x i32>
  %247 = shufflevector <8 x i32> %246, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %248 = bitcast <8 x i32> %247 to <4 x i64>
  %249 = and <4 x i64> %245, splat (i64 4294967295)
  %250 = and <4 x i64> %248, splat (i64 4294967295)
  %251 = mul nuw <4 x i64> %250, %249
  %252 = shufflevector <4 x i64> %242, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %253 = add <4 x i64> %14, %252
  %254 = add <4 x i64> %253, %251
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #27
  br label %255

255:                                              ; preds = %183, %217
  %256 = phi <4 x i64> [ %216, %183 ], [ %254, %217 ]
  %257 = phi <4 x i64> [ %202, %183 ], [ %240, %217 ]
  %258 = getelementptr inbounds nuw i8, ptr %7, i64 11
  %259 = mul i64 %9, -7046029288634856825
  %260 = extractelement <4 x i64> %257, i64 0
  %261 = load i64, ptr %258, align 1, !alias.scope !393, !noalias !396
  %262 = xor i64 %261, %260
  %263 = extractelement <4 x i64> %257, i64 1
  %264 = getelementptr inbounds nuw i8, ptr %7, i64 19
  %265 = load i64, ptr %264, align 1, !alias.scope !393, !noalias !396
  %266 = xor i64 %265, %263
  %267 = zext i64 %262 to i128
  %268 = zext i64 %266 to i128
  %269 = mul nuw i128 %268, %267
  %270 = lshr i128 %269, 64
  %271 = xor i128 %270, %269
  %272 = trunc i128 %271 to i64
  %273 = add i64 %259, %272
  %274 = getelementptr inbounds nuw i8, ptr %7, i64 27
  %275 = extractelement <4 x i64> %257, i64 2
  %276 = load i64, ptr %274, align 1, !alias.scope !393, !noalias !400
  %277 = xor i64 %276, %275
  %278 = extractelement <4 x i64> %257, i64 3
  %279 = getelementptr inbounds nuw i8, ptr %7, i64 35
  %280 = load i64, ptr %279, align 1, !alias.scope !393, !noalias !400
  %281 = xor i64 %280, %278
  %282 = zext i64 %277 to i128
  %283 = zext i64 %281 to i128
  %284 = mul nuw i128 %283, %282
  %285 = lshr i128 %284, 64
  %286 = xor i128 %285, %284
  %287 = trunc i128 %286 to i64
  %288 = add i64 %273, %287
  %289 = getelementptr inbounds nuw i8, ptr %7, i64 43
  %290 = extractelement <4 x i64> %256, i64 0
  %291 = load i64, ptr %289, align 1, !alias.scope !393, !noalias !402
  %292 = xor i64 %291, %290
  %293 = extractelement <4 x i64> %256, i64 1
  %294 = getelementptr inbounds nuw i8, ptr %7, i64 51
  %295 = load i64, ptr %294, align 1, !alias.scope !393, !noalias !402
  %296 = xor i64 %295, %293
  %297 = zext i64 %292 to i128
  %298 = zext i64 %296 to i128
  %299 = mul nuw i128 %298, %297
  %300 = lshr i128 %299, 64
  %301 = xor i128 %300, %299
  %302 = trunc i128 %301 to i64
  %303 = add i64 %288, %302
  %304 = getelementptr inbounds nuw i8, ptr %7, i64 59
  %305 = extractelement <4 x i64> %256, i64 2
  %306 = load i64, ptr %304, align 1, !alias.scope !393, !noalias !404
  %307 = xor i64 %306, %305
  %308 = extractelement <4 x i64> %256, i64 3
  %309 = getelementptr inbounds nuw i8, ptr %7, i64 67
  %310 = load i64, ptr %309, align 1, !alias.scope !393, !noalias !404
  %311 = xor i64 %310, %308
  %312 = zext i64 %307 to i128
  %313 = zext i64 %311 to i128
  %314 = mul nuw i128 %313, %312
  %315 = lshr i128 %314, 64
  %316 = xor i128 %315, %314
  %317 = trunc i128 %316 to i64
  %318 = add i64 %303, %317
  %319 = lshr i64 %318, 37
  %320 = xor i64 %319, %318
  %321 = mul i64 %320, 1609587791953885689
  %322 = lshr i64 %321, 32
  %323 = xor i64 %322, %321
  br label %336

324:                                              ; preds = %1
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %326 = load i64, ptr %325, align 8
  %327 = icmp eq i64 %326, 0
  %328 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %327, label %331, label %329

329:                                              ; preds = %324
  %330 = tail call i64 @XXH3_64bits_withSeed(ptr noundef nonnull %328, i64 noundef %9, i64 noundef %326)
  br label %336

331:                                              ; preds = %324
  %332 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %333 = load i64, ptr %332, align 32
  %334 = add i64 %333, 64
  %335 = tail call i64 @XXH3_64bits_withSecret(ptr noundef nonnull %328, i64 noundef %9, ptr noundef nonnull %7, i64 noundef %334)
  br label %336

336:                                              ; preds = %331, %329, %255
  %337 = phi i64 [ %323, %255 ], [ %330, %329 ], [ %335, %331 ]
  ret i64 %337
}

; Function Attrs: nounwind uwtable
define dso_local void @XXH3_generateSecret(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr readonly align 1 %1, i64 %13, i1 false)
  %14 = icmp ult i64 %2, 96
  br i1 %14, label %15, label %22

15:                                               ; preds = %7, %15
  %16 = phi i64 [ %20, %15 ], [ %13, %7 ]
  %17 = sub nuw nsw i64 96, %16
  %18 = tail call i64 @llvm.umin.i64(i64 %16, i64 %17)
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull readonly align 16 %4, i64 %18, i1 false)
  %20 = add nuw nsw i64 %18, %16
  %21 = icmp samesign ult i64 %20, 96
  br i1 %21, label %15, label %22, !llvm.loop !406

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
  br i1 %69, label %70, label %25, !llvm.loop !407

70:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #27
  br label %71

71:                                               ; preds = %70, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH128_canonicalFromHash(ptr nocapture noundef writeonly initializes((0, 16)) %0, i64 %1, i64 %2) local_unnamed_addr #5 {
  %4 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %5 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %4, ptr %0, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @XXH128(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  ret { i64, i64 } %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
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
  %136 = load i64, ptr %133, align 1, !noalias !408
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %138 = load i64, ptr %137, align 1, !noalias !408
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
  %169 = load i64, ptr %166, align 1, !noalias !411
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %171 = load i64, ptr %170, align 1, !noalias !411
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
  %203 = load i64, ptr %200, align 1, !noalias !414
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %205 = load i64, ptr %204, align 1, !noalias !414
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
  %236 = load i64, ptr %0, align 1, !noalias !417
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %238 = load i64, ptr %237, align 1, !noalias !417
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
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_default(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #13 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %50
  %8 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %5 ], [ %70, %50 ]
  %9 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %5 ], [ %60, %50 ]
  %10 = phi i64 [ 0, %5 ], [ %71, %50 ]
  %11 = shl i64 %10, 10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi <4 x i64> [ %8, %7 ], [ %47, %13 ]
  %15 = phi <4 x i64> [ %9, %7 ], [ %33, %13 ]
  %16 = phi i64 [ 0, %7 ], [ %48, %13 ]
  %17 = shl nuw nsw i64 %16, 6
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 0, i32 3, i32 1), !noalias !425
  %20 = shl nuw nsw i64 %16, 3
  %21 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %20
  %22 = load <4 x i64>, ptr %18, align 1, !alias.scope !420, !noalias !428
  %23 = load <4 x i64>, ptr %21, align 8, !alias.scope !423, !noalias !431
  %24 = xor <4 x i64> %23, %22
  %25 = bitcast <4 x i64> %24 to <8 x i32>
  %26 = shufflevector <8 x i32> %25, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %27 = bitcast <8 x i32> %26 to <4 x i64>
  %28 = and <4 x i64> %24, splat (i64 4294967295)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = shufflevector <4 x i64> %22, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %32 = add <4 x i64> %15, %31
  %33 = add <4 x i64> %32, %30
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %35 = load <4 x i64>, ptr %34, align 1, !alias.scope !420, !noalias !428
  %36 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %37 = load <4 x i64>, ptr %36, align 8, !alias.scope !423, !noalias !431
  %38 = xor <4 x i64> %37, %35
  %39 = bitcast <4 x i64> %38 to <8 x i32>
  %40 = shufflevector <8 x i32> %39, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %41 = bitcast <8 x i32> %40 to <4 x i64>
  %42 = and <4 x i64> %38, splat (i64 4294967295)
  %43 = and <4 x i64> %41, splat (i64 4294967295)
  %44 = mul nuw <4 x i64> %43, %42
  %45 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %46 = add <4 x i64> %14, %45
  %47 = add <4 x i64> %46, %44
  %48 = add nuw nsw i64 %16, 1
  %49 = icmp eq i64 %48, 16
  br i1 %49, label %50, label %13, !llvm.loop !49

50:                                               ; preds = %13
  %51 = lshr <4 x i64> %33, splat (i64 47)
  %52 = xor <4 x i64> %51, %33
  %53 = xor <4 x i64> %52, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %54 = bitcast <4 x i64> %53 to <8 x i32>
  %55 = shufflevector <8 x i32> %54, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %56 = bitcast <8 x i32> %55 to <4 x i64>
  %57 = and <4 x i64> %53, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, splat (i64 2654435761)
  %59 = mul <4 x i64> %56, splat (i64 -7046029290881679360)
  %60 = add <4 x i64> %59, %58
  %61 = lshr <4 x i64> %47, splat (i64 47)
  %62 = xor <4 x i64> %61, %47
  %63 = xor <4 x i64> %62, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %64 = bitcast <4 x i64> %63 to <8 x i32>
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %66 = bitcast <8 x i32> %65 to <4 x i64>
  %67 = and <4 x i64> %63, splat (i64 4294967295)
  %68 = mul nuw <4 x i64> %67, splat (i64 2654435761)
  %69 = mul <4 x i64> %66, splat (i64 -7046029290881679360)
  %70 = add <4 x i64> %69, %68
  %71 = add nuw nsw i64 %10, 1
  %72 = icmp eq i64 %71, %6
  br i1 %72, label %73, label %7, !llvm.loop !50

73:                                               ; preds = %50, %2
  %74 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %70, %50 ]
  %75 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %60, %50 ]
  %76 = and i64 %3, -1024
  %77 = lshr i64 %3, 6
  %78 = and i64 %77, 15
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 %76
  %80 = icmp eq i64 %78, 0
  br i1 %80, label %118, label %81

81:                                               ; preds = %73, %81
  %82 = phi <4 x i64> [ %115, %81 ], [ %74, %73 ]
  %83 = phi <4 x i64> [ %101, %81 ], [ %75, %73 ]
  %84 = phi i64 [ %116, %81 ], [ 0, %73 ]
  %85 = shl i64 %84, 6
  %86 = getelementptr inbounds nuw i8, ptr %79, i64 %85
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %87, i32 0, i32 3, i32 1), !noalias !432
  %88 = shl i64 %84, 3
  %89 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %88
  %90 = load <4 x i64>, ptr %86, align 1, !alias.scope !420, !noalias !435
  %91 = load <4 x i64>, ptr %89, align 8, !alias.scope !423, !noalias !438
  %92 = xor <4 x i64> %91, %90
  %93 = bitcast <4 x i64> %92 to <8 x i32>
  %94 = shufflevector <8 x i32> %93, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %95 = bitcast <8 x i32> %94 to <4 x i64>
  %96 = and <4 x i64> %92, splat (i64 4294967295)
  %97 = and <4 x i64> %95, splat (i64 4294967295)
  %98 = mul nuw <4 x i64> %97, %96
  %99 = shufflevector <4 x i64> %90, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %100 = add <4 x i64> %83, %99
  %101 = add <4 x i64> %100, %98
  %102 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %103 = load <4 x i64>, ptr %102, align 1, !alias.scope !420, !noalias !435
  %104 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %105 = load <4 x i64>, ptr %104, align 8, !alias.scope !423, !noalias !438
  %106 = xor <4 x i64> %105, %103
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %103, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %82, %113
  %115 = add <4 x i64> %114, %112
  %116 = add nuw nsw i64 %84, 1
  %117 = icmp eq i64 %116, %78
  br i1 %117, label %118, label %81, !llvm.loop !49

118:                                              ; preds = %81, %73
  %119 = phi <4 x i64> [ %74, %73 ], [ %115, %81 ]
  %120 = phi <4 x i64> [ %75, %73 ], [ %101, %81 ]
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %122 = getelementptr inbounds i8, ptr %121, i64 -64
  %123 = load <4 x i64>, ptr %122, align 1, !alias.scope !420, !noalias !439
  %124 = xor <4 x i64> %123, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %125 = bitcast <4 x i64> %124 to <8 x i32>
  %126 = shufflevector <8 x i32> %125, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %127 = bitcast <8 x i32> %126 to <4 x i64>
  %128 = and <4 x i64> %124, splat (i64 4294967295)
  %129 = and <4 x i64> %127, splat (i64 4294967295)
  %130 = mul nuw <4 x i64> %129, %128
  %131 = shufflevector <4 x i64> %123, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %132 = add <4 x i64> %120, %131
  %133 = add <4 x i64> %132, %130
  %134 = getelementptr inbounds i8, ptr %121, i64 -32
  %135 = load <4 x i64>, ptr %134, align 1, !alias.scope !420, !noalias !439
  %136 = xor <4 x i64> %135, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %137 = bitcast <4 x i64> %136 to <8 x i32>
  %138 = shufflevector <8 x i32> %137, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %139 = bitcast <8 x i32> %138 to <4 x i64>
  %140 = and <4 x i64> %136, splat (i64 4294967295)
  %141 = and <4 x i64> %139, splat (i64 4294967295)
  %142 = mul nuw <4 x i64> %141, %140
  %143 = shufflevector <4 x i64> %135, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %144 = add <4 x i64> %119, %143
  %145 = add <4 x i64> %144, %142
  %146 = mul i64 %1, -7046029288634856825
  %147 = extractelement <4 x i64> %133, i64 0
  %148 = xor i64 %147, 7914194659941938988
  %149 = extractelement <4 x i64> %133, i64 1
  %150 = xor i64 %149, -6611157965513653271
  %151 = zext i64 %148 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %146, %156
  %158 = extractelement <4 x i64> %133, i64 2
  %159 = xor i64 %158, -1839215637059881052
  %160 = extractelement <4 x i64> %133, i64 3
  %161 = xor i64 %160, -3433288310154277810
  %162 = zext i64 %159 to i128
  %163 = zext i64 %161 to i128
  %164 = mul nuw i128 %163, %162
  %165 = lshr i128 %164, 64
  %166 = xor i128 %165, %164
  %167 = trunc i128 %166 to i64
  %168 = add i64 %157, %167
  %169 = extractelement <4 x i64> %145, i64 0
  %170 = xor i64 %169, 5046485836271438973
  %171 = extractelement <4 x i64> %145, i64 1
  %172 = xor i64 %171, -8055285457383852172
  %173 = zext i64 %170 to i128
  %174 = zext i64 %172 to i128
  %175 = mul nuw i128 %174, %173
  %176 = lshr i128 %175, 64
  %177 = xor i128 %176, %175
  %178 = trunc i128 %177 to i64
  %179 = add i64 %168, %178
  %180 = extractelement <4 x i64> %145, i64 2
  %181 = xor i64 %180, 5920048007935066598
  %182 = extractelement <4 x i64> %145, i64 3
  %183 = xor i64 %182, 7336514198459093435
  %184 = zext i64 %181 to i128
  %185 = zext i64 %183 to i128
  %186 = mul nuw i128 %185, %184
  %187 = lshr i128 %186, 64
  %188 = xor i128 %187, %186
  %189 = trunc i128 %188 to i64
  %190 = add i64 %179, %189
  %191 = lshr i64 %190, 37
  %192 = xor i64 %191, %190
  %193 = mul i64 %192, 1609587791953885689
  %194 = lshr i64 %193, 32
  %195 = xor i64 %194, %193
  %196 = mul i64 %1, -4417276706812531889
  %197 = xor i64 %196, -1
  %198 = xor i64 %147, -2753530472436770380
  %199 = xor i64 %149, 3784058077962335096
  %200 = zext i64 %198 to i128
  %201 = zext i64 %199 to i128
  %202 = mul nuw i128 %201, %200
  %203 = lshr i128 %202, 64
  %204 = xor i128 %203, %202
  %205 = trunc i128 %204 to i64
  %206 = add i64 %205, %197
  %207 = xor i64 %158, -360392965937173549
  %208 = xor i64 %160, -5237161843349560557
  %209 = zext i64 %207 to i128
  %210 = zext i64 %208 to i128
  %211 = mul nuw i128 %210, %209
  %212 = lshr i128 %211, 64
  %213 = xor i128 %212, %211
  %214 = trunc i128 %213 to i64
  %215 = add i64 %206, %214
  %216 = xor i64 %169, 2965150961192524528
  %217 = xor i64 %171, 9032178055121889492
  %218 = zext i64 %216 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %215, %223
  %225 = xor i64 %180, 8850058120466833735
  %226 = xor i64 %182, -7669846995664752176
  %227 = zext i64 %225 to i128
  %228 = zext i64 %226 to i128
  %229 = mul nuw i128 %228, %227
  %230 = lshr i128 %229, 64
  %231 = xor i128 %230, %229
  %232 = trunc i128 %231 to i64
  %233 = add i64 %224, %232
  %234 = lshr i64 %233, 37
  %235 = xor i64 %234, %233
  %236 = mul i64 %235, 1609587791953885689
  %237 = lshr i64 %236, 32
  %238 = xor i64 %237, %236
  %239 = insertvalue { i64, i64 } poison, i64 %195, 0
  %240 = insertvalue { i64, i64 } %239, i64 %238, 1
  ret { i64, i64 } %240
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSecret(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #12 {
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
  %192 = load i64, ptr %188, align 1, !noalias !442
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %194 = load i64, ptr %193, align 1, !noalias !442
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
  %233 = load i64, ptr %229, align 1, !noalias !445
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %235 = load i64, ptr %234, align 1, !noalias !445
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
  %275 = load i64, ptr %271, align 1, !noalias !448
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %277 = load i64, ptr %276, align 1, !noalias !448
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
  %315 = load i64, ptr %0, align 1, !noalias !451
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %317 = load i64, ptr %316, align 1, !noalias !451
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
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #13 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = add i64 %1, -1
  %9 = udiv i64 %8, %7
  %10 = urem i64 %8, %7
  %11 = icmp ugt i64 %7, %8
  br i1 %11, label %88, label %12

12:                                               ; preds = %4
  %13 = icmp ult i64 %5, 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %15 = getelementptr inbounds i8, ptr %14, i64 -64
  %16 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %17 = load <4 x i64>, ptr %15, align 1, !alias.scope !457, !noalias !459
  %18 = getelementptr inbounds i8, ptr %14, i64 -32
  %19 = load <4 x i64>, ptr %18, align 1, !alias.scope !457, !noalias !459
  br label %20

20:                                               ; preds = %12, %63
  %21 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %12 ], [ %85, %63 ]
  %22 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %12 ], [ %75, %63 ]
  %23 = phi i64 [ 0, %12 ], [ %86, %63 ]
  %24 = mul i64 %23, %7
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %24
  br i1 %13, label %63, label %26

26:                                               ; preds = %20, %26
  %27 = phi <4 x i64> [ %60, %26 ], [ %21, %20 ]
  %28 = phi <4 x i64> [ %46, %26 ], [ %22, %20 ]
  %29 = phi i64 [ %61, %26 ], [ 0, %20 ]
  %30 = shl i64 %29, 6
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %32, i32 0, i32 3, i32 1), !noalias !462
  %33 = shl i64 %29, 3
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load <4 x i64>, ptr %31, align 1, !alias.scope !454, !noalias !465
  %36 = load <4 x i64>, ptr %34, align 1, !alias.scope !457, !noalias !468
  %37 = xor <4 x i64> %36, %35
  %38 = bitcast <4 x i64> %37 to <8 x i32>
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  %41 = and <4 x i64> %37, splat (i64 4294967295)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %45 = add <4 x i64> %28, %44
  %46 = add <4 x i64> %45, %43
  %47 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %48 = load <4 x i64>, ptr %47, align 1, !alias.scope !454, !noalias !465
  %49 = getelementptr inbounds nuw i8, ptr %34, i64 32
  %50 = load <4 x i64>, ptr %49, align 1, !alias.scope !457, !noalias !468
  %51 = xor <4 x i64> %50, %48
  %52 = bitcast <4 x i64> %51 to <8 x i32>
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %54 = bitcast <8 x i32> %53 to <4 x i64>
  %55 = and <4 x i64> %51, splat (i64 4294967295)
  %56 = and <4 x i64> %54, splat (i64 4294967295)
  %57 = mul nuw <4 x i64> %56, %55
  %58 = shufflevector <4 x i64> %48, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %59 = add <4 x i64> %27, %58
  %60 = add <4 x i64> %59, %57
  %61 = add nuw nsw i64 %29, 1
  %62 = icmp eq i64 %61, %16
  br i1 %62, label %63, label %26, !llvm.loop !49

63:                                               ; preds = %26, %20
  %64 = phi <4 x i64> [ %21, %20 ], [ %60, %26 ]
  %65 = phi <4 x i64> [ %22, %20 ], [ %46, %26 ]
  %66 = lshr <4 x i64> %65, splat (i64 47)
  %67 = xor <4 x i64> %17, %66
  %68 = xor <4 x i64> %67, %65
  %69 = bitcast <4 x i64> %68 to <8 x i32>
  %70 = shufflevector <8 x i32> %69, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %71 = bitcast <8 x i32> %70 to <4 x i64>
  %72 = and <4 x i64> %68, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, splat (i64 2654435761)
  %74 = mul <4 x i64> %71, splat (i64 -7046029290881679360)
  %75 = add <4 x i64> %74, %73
  %76 = lshr <4 x i64> %64, splat (i64 47)
  %77 = xor <4 x i64> %19, %76
  %78 = xor <4 x i64> %77, %64
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = mul nuw <4 x i64> %82, splat (i64 2654435761)
  %84 = mul <4 x i64> %81, splat (i64 -7046029290881679360)
  %85 = add <4 x i64> %84, %83
  %86 = add nuw i64 %23, 1
  %87 = icmp ult i64 %86, %9
  br i1 %87, label %20, label %88, !llvm.loop !50

88:                                               ; preds = %63, %4
  %89 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %85, %63 ]
  %90 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %75, %63 ]
  %91 = mul i64 %9, %7
  %92 = lshr i64 %10, 6
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %94 = icmp ult i64 %10, 64
  br i1 %94, label %132, label %95

95:                                               ; preds = %88, %95
  %96 = phi <4 x i64> [ %129, %95 ], [ %89, %88 ]
  %97 = phi <4 x i64> [ %115, %95 ], [ %90, %88 ]
  %98 = phi i64 [ %130, %95 ], [ 0, %88 ]
  %99 = shl i64 %98, 6
  %100 = getelementptr inbounds nuw i8, ptr %93, i64 %99
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %101, i32 0, i32 3, i32 1), !noalias !469
  %102 = shl i64 %98, 3
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %102
  %104 = load <4 x i64>, ptr %100, align 1, !alias.scope !454, !noalias !472
  %105 = load <4 x i64>, ptr %103, align 1, !alias.scope !457, !noalias !475
  %106 = xor <4 x i64> %105, %104
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %97, %113
  %115 = add <4 x i64> %114, %112
  %116 = getelementptr inbounds nuw i8, ptr %100, i64 32
  %117 = load <4 x i64>, ptr %116, align 1, !alias.scope !454, !noalias !472
  %118 = getelementptr inbounds nuw i8, ptr %103, i64 32
  %119 = load <4 x i64>, ptr %118, align 1, !alias.scope !457, !noalias !475
  %120 = xor <4 x i64> %119, %117
  %121 = bitcast <4 x i64> %120 to <8 x i32>
  %122 = shufflevector <8 x i32> %121, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %123 = bitcast <8 x i32> %122 to <4 x i64>
  %124 = and <4 x i64> %120, splat (i64 4294967295)
  %125 = and <4 x i64> %123, splat (i64 4294967295)
  %126 = mul nuw <4 x i64> %125, %124
  %127 = shufflevector <4 x i64> %117, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %128 = add <4 x i64> %96, %127
  %129 = add <4 x i64> %128, %126
  %130 = add nuw nsw i64 %98, 1
  %131 = icmp samesign ult i64 %130, %92
  br i1 %131, label %95, label %132, !llvm.loop !49

132:                                              ; preds = %95, %88
  %133 = phi <4 x i64> [ %89, %88 ], [ %129, %95 ]
  %134 = phi <4 x i64> [ %90, %88 ], [ %115, %95 ]
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %136 = getelementptr inbounds i8, ptr %135, i64 -64
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %138 = getelementptr inbounds i8, ptr %137, i64 -71
  %139 = load <4 x i64>, ptr %136, align 1, !alias.scope !454, !noalias !476
  %140 = load <4 x i64>, ptr %138, align 1, !alias.scope !457, !noalias !479
  %141 = xor <4 x i64> %140, %139
  %142 = bitcast <4 x i64> %141 to <8 x i32>
  %143 = shufflevector <8 x i32> %142, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %144 = bitcast <8 x i32> %143 to <4 x i64>
  %145 = and <4 x i64> %141, splat (i64 4294967295)
  %146 = and <4 x i64> %144, splat (i64 4294967295)
  %147 = mul nuw <4 x i64> %146, %145
  %148 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %149 = add <4 x i64> %134, %148
  %150 = add <4 x i64> %149, %147
  %151 = getelementptr inbounds i8, ptr %135, i64 -32
  %152 = load <4 x i64>, ptr %151, align 1, !alias.scope !454, !noalias !476
  %153 = getelementptr inbounds i8, ptr %137, i64 -39
  %154 = load <4 x i64>, ptr %153, align 1, !alias.scope !457, !noalias !479
  %155 = xor <4 x i64> %154, %152
  %156 = bitcast <4 x i64> %155 to <8 x i32>
  %157 = shufflevector <8 x i32> %156, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %158 = bitcast <8 x i32> %157 to <4 x i64>
  %159 = and <4 x i64> %155, splat (i64 4294967295)
  %160 = and <4 x i64> %158, splat (i64 4294967295)
  %161 = mul nuw <4 x i64> %160, %159
  %162 = shufflevector <4 x i64> %152, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %163 = add <4 x i64> %133, %162
  %164 = add <4 x i64> %163, %161
  %165 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %166 = mul i64 %1, -7046029288634856825
  %167 = extractelement <4 x i64> %150, i64 0
  %168 = load i64, ptr %165, align 1, !alias.scope !480, !noalias !483
  %169 = xor i64 %168, %167
  %170 = extractelement <4 x i64> %150, i64 1
  %171 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %172 = load i64, ptr %171, align 1, !alias.scope !480, !noalias !483
  %173 = xor i64 %172, %170
  %174 = zext i64 %169 to i128
  %175 = zext i64 %173 to i128
  %176 = mul nuw i128 %175, %174
  %177 = lshr i128 %176, 64
  %178 = xor i128 %177, %176
  %179 = trunc i128 %178 to i64
  %180 = add i64 %166, %179
  %181 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %182 = extractelement <4 x i64> %150, i64 2
  %183 = load i64, ptr %181, align 1, !alias.scope !480, !noalias !487
  %184 = xor i64 %183, %182
  %185 = extractelement <4 x i64> %150, i64 3
  %186 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %187 = load i64, ptr %186, align 1, !alias.scope !480, !noalias !487
  %188 = xor i64 %187, %185
  %189 = zext i64 %184 to i128
  %190 = zext i64 %188 to i128
  %191 = mul nuw i128 %190, %189
  %192 = lshr i128 %191, 64
  %193 = xor i128 %192, %191
  %194 = trunc i128 %193 to i64
  %195 = add i64 %180, %194
  %196 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %197 = extractelement <4 x i64> %164, i64 0
  %198 = load i64, ptr %196, align 1, !alias.scope !480, !noalias !489
  %199 = xor i64 %198, %197
  %200 = extractelement <4 x i64> %164, i64 1
  %201 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %202 = load i64, ptr %201, align 1, !alias.scope !480, !noalias !489
  %203 = xor i64 %202, %200
  %204 = zext i64 %199 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %195, %209
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %212 = extractelement <4 x i64> %164, i64 2
  %213 = load i64, ptr %211, align 1, !alias.scope !480, !noalias !491
  %214 = xor i64 %213, %212
  %215 = extractelement <4 x i64> %164, i64 3
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %217 = load i64, ptr %216, align 1, !alias.scope !480, !noalias !491
  %218 = xor i64 %217, %215
  %219 = zext i64 %214 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %210, %224
  %226 = lshr i64 %225, 37
  %227 = xor i64 %226, %225
  %228 = mul i64 %227, 1609587791953885689
  %229 = lshr i64 %228, 32
  %230 = xor i64 %229, %228
  %231 = getelementptr inbounds i8, ptr %137, i64 -75
  %232 = mul i64 %1, -4417276706812531889
  %233 = xor i64 %232, -1
  %234 = load i64, ptr %231, align 1, !alias.scope !493, !noalias !496
  %235 = xor i64 %234, %167
  %236 = getelementptr inbounds i8, ptr %137, i64 -67
  %237 = load i64, ptr %236, align 1, !alias.scope !493, !noalias !496
  %238 = xor i64 %237, %170
  %239 = zext i64 %235 to i128
  %240 = zext i64 %238 to i128
  %241 = mul nuw i128 %240, %239
  %242 = lshr i128 %241, 64
  %243 = xor i128 %242, %241
  %244 = trunc i128 %243 to i64
  %245 = add i64 %244, %233
  %246 = getelementptr inbounds i8, ptr %137, i64 -59
  %247 = load i64, ptr %246, align 1, !alias.scope !493, !noalias !500
  %248 = xor i64 %247, %182
  %249 = getelementptr inbounds i8, ptr %137, i64 -51
  %250 = load i64, ptr %249, align 1, !alias.scope !493, !noalias !500
  %251 = xor i64 %250, %185
  %252 = zext i64 %248 to i128
  %253 = zext i64 %251 to i128
  %254 = mul nuw i128 %253, %252
  %255 = lshr i128 %254, 64
  %256 = xor i128 %255, %254
  %257 = trunc i128 %256 to i64
  %258 = add i64 %245, %257
  %259 = getelementptr inbounds i8, ptr %137, i64 -43
  %260 = load i64, ptr %259, align 1, !alias.scope !493, !noalias !502
  %261 = xor i64 %260, %197
  %262 = getelementptr inbounds i8, ptr %137, i64 -35
  %263 = load i64, ptr %262, align 1, !alias.scope !493, !noalias !502
  %264 = xor i64 %263, %200
  %265 = zext i64 %261 to i128
  %266 = zext i64 %264 to i128
  %267 = mul nuw i128 %266, %265
  %268 = lshr i128 %267, 64
  %269 = xor i128 %268, %267
  %270 = trunc i128 %269 to i64
  %271 = add i64 %258, %270
  %272 = getelementptr inbounds i8, ptr %137, i64 -27
  %273 = load i64, ptr %272, align 1, !alias.scope !493, !noalias !504
  %274 = xor i64 %273, %212
  %275 = getelementptr inbounds i8, ptr %137, i64 -19
  %276 = load i64, ptr %275, align 1, !alias.scope !493, !noalias !504
  %277 = xor i64 %276, %215
  %278 = zext i64 %274 to i128
  %279 = zext i64 %277 to i128
  %280 = mul nuw i128 %279, %278
  %281 = lshr i128 %280, 64
  %282 = xor i128 %281, %280
  %283 = trunc i128 %282 to i64
  %284 = add i64 %271, %283
  %285 = lshr i64 %284, 37
  %286 = xor i64 %285, %284
  %287 = mul i64 %286, 1609587791953885689
  %288 = lshr i64 %287, 32
  %289 = xor i64 %288, %287
  %290 = insertvalue { i64, i64 } poison, i64 %230, 0
  %291 = insertvalue { i64, i64 } %290, i64 %289, 1
  ret { i64, i64 } %291
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
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
  %172 = load i64, ptr %169, align 1, !noalias !506
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %174 = load i64, ptr %173, align 1, !noalias !506
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
  %209 = load i64, ptr %206, align 1, !noalias !509
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %211 = load i64, ptr %210, align 1, !noalias !509
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
  %247 = load i64, ptr %244, align 1, !noalias !512
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %249 = load i64, ptr %248, align 1, !noalias !512
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
  %284 = load i64, ptr %0, align 1, !noalias !515
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %286 = load i64, ptr %285, align 1, !noalias !515
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

; Function Attrs: noinline nounwind uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #14 {
  %4 = alloca [192 x i8], align 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %243

6:                                                ; preds = %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %77, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %54
  %12 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %9 ], [ %74, %54 ]
  %13 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %9 ], [ %64, %54 ]
  %14 = phi i64 [ 0, %9 ], [ %75, %54 ]
  %15 = shl i64 %14, 10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  br label %17

17:                                               ; preds = %11, %17
  %18 = phi <4 x i64> [ %12, %11 ], [ %51, %17 ]
  %19 = phi <4 x i64> [ %13, %11 ], [ %37, %17 ]
  %20 = phi i64 [ 0, %11 ], [ %52, %17 ]
  %21 = shl nuw nsw i64 %20, 6
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 0, i32 3, i32 1), !noalias !526
  %24 = shl nuw nsw i64 %20, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <4 x i64>, ptr %22, align 1, !alias.scope !529, !noalias !530
  %27 = load <4 x i64>, ptr %25, align 8, !alias.scope !524, !noalias !533
  %28 = xor <4 x i64> %27, %26
  %29 = bitcast <4 x i64> %28 to <8 x i32>
  %30 = shufflevector <8 x i32> %29, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %31 = bitcast <8 x i32> %30 to <4 x i64>
  %32 = and <4 x i64> %28, splat (i64 4294967295)
  %33 = and <4 x i64> %31, splat (i64 4294967295)
  %34 = mul nuw <4 x i64> %33, %32
  %35 = shufflevector <4 x i64> %26, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %36 = add <4 x i64> %19, %35
  %37 = add <4 x i64> %36, %34
  %38 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %39 = load <4 x i64>, ptr %38, align 1, !alias.scope !529, !noalias !530
  %40 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %41 = load <4 x i64>, ptr %40, align 8, !alias.scope !524, !noalias !533
  %42 = xor <4 x i64> %41, %39
  %43 = bitcast <4 x i64> %42 to <8 x i32>
  %44 = shufflevector <8 x i32> %43, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %45 = bitcast <8 x i32> %44 to <4 x i64>
  %46 = and <4 x i64> %42, splat (i64 4294967295)
  %47 = and <4 x i64> %45, splat (i64 4294967295)
  %48 = mul nuw <4 x i64> %47, %46
  %49 = shufflevector <4 x i64> %39, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %50 = add <4 x i64> %18, %49
  %51 = add <4 x i64> %50, %48
  %52 = add nuw nsw i64 %20, 1
  %53 = icmp eq i64 %52, 16
  br i1 %53, label %54, label %17, !llvm.loop !49

54:                                               ; preds = %17
  %55 = lshr <4 x i64> %37, splat (i64 47)
  %56 = xor <4 x i64> %55, %37
  %57 = xor <4 x i64> %56, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %58 = bitcast <4 x i64> %57 to <8 x i32>
  %59 = shufflevector <8 x i32> %58, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = and <4 x i64> %57, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, splat (i64 2654435761)
  %63 = mul <4 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <4 x i64> %63, %62
  %65 = lshr <4 x i64> %51, splat (i64 47)
  %66 = xor <4 x i64> %65, %51
  %67 = xor <4 x i64> %66, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, splat (i64 2654435761)
  %73 = mul <4 x i64> %70, splat (i64 -7046029290881679360)
  %74 = add <4 x i64> %73, %72
  %75 = add nuw nsw i64 %14, 1
  %76 = icmp eq i64 %75, %10
  br i1 %76, label %77, label %11, !llvm.loop !50

77:                                               ; preds = %54, %6
  %78 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %74, %54 ]
  %79 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %64, %54 ]
  %80 = and i64 %7, -1024
  %81 = lshr i64 %7, 6
  %82 = and i64 %81, 15
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %84 = icmp eq i64 %82, 0
  br i1 %84, label %122, label %85

85:                                               ; preds = %77, %85
  %86 = phi <4 x i64> [ %119, %85 ], [ %78, %77 ]
  %87 = phi <4 x i64> [ %105, %85 ], [ %79, %77 ]
  %88 = phi i64 [ %120, %85 ], [ 0, %77 ]
  %89 = shl i64 %88, 6
  %90 = getelementptr inbounds nuw i8, ptr %83, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %91, i32 0, i32 3, i32 1), !noalias !534
  %92 = shl i64 %88, 3
  %93 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %92
  %94 = load <4 x i64>, ptr %90, align 1, !alias.scope !529, !noalias !537
  %95 = load <4 x i64>, ptr %93, align 8, !alias.scope !524, !noalias !540
  %96 = xor <4 x i64> %95, %94
  %97 = bitcast <4 x i64> %96 to <8 x i32>
  %98 = shufflevector <8 x i32> %97, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %99 = bitcast <8 x i32> %98 to <4 x i64>
  %100 = and <4 x i64> %96, splat (i64 4294967295)
  %101 = and <4 x i64> %99, splat (i64 4294967295)
  %102 = mul nuw <4 x i64> %101, %100
  %103 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %104 = add <4 x i64> %87, %103
  %105 = add <4 x i64> %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %107 = load <4 x i64>, ptr %106, align 1, !alias.scope !529, !noalias !537
  %108 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %109 = load <4 x i64>, ptr %108, align 8, !alias.scope !524, !noalias !540
  %110 = xor <4 x i64> %109, %107
  %111 = bitcast <4 x i64> %110 to <8 x i32>
  %112 = shufflevector <8 x i32> %111, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %113 = bitcast <8 x i32> %112 to <4 x i64>
  %114 = and <4 x i64> %110, splat (i64 4294967295)
  %115 = and <4 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <4 x i64> %115, %114
  %117 = shufflevector <4 x i64> %107, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %118 = add <4 x i64> %86, %117
  %119 = add <4 x i64> %118, %116
  %120 = add nuw nsw i64 %88, 1
  %121 = icmp eq i64 %120, %82
  br i1 %121, label %122, label %85, !llvm.loop !49

122:                                              ; preds = %85, %77
  %123 = phi <4 x i64> [ %78, %77 ], [ %119, %85 ]
  %124 = phi <4 x i64> [ %79, %77 ], [ %105, %85 ]
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %126 = getelementptr inbounds i8, ptr %125, i64 -64
  %127 = load <4 x i64>, ptr %126, align 1, !alias.scope !529, !noalias !541
  %128 = xor <4 x i64> %127, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %129 = bitcast <4 x i64> %128 to <8 x i32>
  %130 = shufflevector <8 x i32> %129, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %131 = bitcast <8 x i32> %130 to <4 x i64>
  %132 = and <4 x i64> %128, splat (i64 4294967295)
  %133 = and <4 x i64> %131, splat (i64 4294967295)
  %134 = mul nuw <4 x i64> %133, %132
  %135 = shufflevector <4 x i64> %127, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %136 = add <4 x i64> %124, %135
  %137 = add <4 x i64> %136, %134
  %138 = getelementptr inbounds i8, ptr %125, i64 -32
  %139 = load <4 x i64>, ptr %138, align 1, !alias.scope !529, !noalias !541
  %140 = xor <4 x i64> %139, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %141 = bitcast <4 x i64> %140 to <8 x i32>
  %142 = shufflevector <8 x i32> %141, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %143 = bitcast <8 x i32> %142 to <4 x i64>
  %144 = and <4 x i64> %140, splat (i64 4294967295)
  %145 = and <4 x i64> %143, splat (i64 4294967295)
  %146 = mul nuw <4 x i64> %145, %144
  %147 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %148 = add <4 x i64> %123, %147
  %149 = add <4 x i64> %148, %146
  %150 = mul i64 %1, -7046029288634856825
  %151 = extractelement <4 x i64> %137, i64 0
  %152 = xor i64 %151, 7914194659941938988
  %153 = extractelement <4 x i64> %137, i64 1
  %154 = xor i64 %153, -6611157965513653271
  %155 = zext i64 %152 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %150, %160
  %162 = extractelement <4 x i64> %137, i64 2
  %163 = xor i64 %162, -1839215637059881052
  %164 = extractelement <4 x i64> %137, i64 3
  %165 = xor i64 %164, -3433288310154277810
  %166 = zext i64 %163 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %161, %171
  %173 = extractelement <4 x i64> %149, i64 0
  %174 = xor i64 %173, 5046485836271438973
  %175 = extractelement <4 x i64> %149, i64 1
  %176 = xor i64 %175, -8055285457383852172
  %177 = zext i64 %174 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %172, %182
  %184 = extractelement <4 x i64> %149, i64 2
  %185 = xor i64 %184, 5920048007935066598
  %186 = extractelement <4 x i64> %149, i64 3
  %187 = xor i64 %186, 7336514198459093435
  %188 = zext i64 %185 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %183, %193
  %195 = lshr i64 %194, 37
  %196 = xor i64 %195, %194
  %197 = mul i64 %196, 1609587791953885689
  %198 = lshr i64 %197, 32
  %199 = xor i64 %198, %197
  %200 = mul i64 %1, -4417276706812531889
  %201 = xor i64 %200, -1
  %202 = xor i64 %151, -2753530472436770380
  %203 = xor i64 %153, 3784058077962335096
  %204 = zext i64 %202 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %209, %201
  %211 = xor i64 %162, -360392965937173549
  %212 = xor i64 %164, -5237161843349560557
  %213 = zext i64 %211 to i128
  %214 = zext i64 %212 to i128
  %215 = mul nuw i128 %214, %213
  %216 = lshr i128 %215, 64
  %217 = xor i128 %216, %215
  %218 = trunc i128 %217 to i64
  %219 = add i64 %210, %218
  %220 = xor i64 %173, 2965150961192524528
  %221 = xor i64 %175, 9032178055121889492
  %222 = zext i64 %220 to i128
  %223 = zext i64 %221 to i128
  %224 = mul nuw i128 %223, %222
  %225 = lshr i128 %224, 64
  %226 = xor i128 %225, %224
  %227 = trunc i128 %226 to i64
  %228 = add i64 %219, %227
  %229 = xor i64 %184, 8850058120466833735
  %230 = xor i64 %186, -7669846995664752176
  %231 = zext i64 %229 to i128
  %232 = zext i64 %230 to i128
  %233 = mul nuw i128 %232, %231
  %234 = lshr i128 %233, 64
  %235 = xor i128 %234, %233
  %236 = trunc i128 %235 to i64
  %237 = add i64 %228, %236
  %238 = lshr i64 %237, 37
  %239 = xor i64 %238, %237
  %240 = mul i64 %239, 1609587791953885689
  %241 = lshr i64 %240, 32
  %242 = xor i64 %241, %240
  br label %537

243:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #27, !noalias !518
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 0, i32 3, i32 1), !noalias !518
  %244 = sub i64 0, %2
  %245 = insertelement <4 x i64> poison, i64 %2, i64 0
  %246 = insertelement <4 x i64> %245, i64 %244, i64 1
  %247 = insertelement <4 x i64> %246, i64 %2, i64 2
  %248 = insertelement <4 x i64> %247, i64 %244, i64 3
  %249 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %4) #27, !noalias !518, !srcloc !154
  %250 = add <4 x i64> %248, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %250, ptr %249, align 32, !noalias !518
  %251 = add <4 x i64> %248, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %252 = getelementptr inbounds nuw i8, ptr %249, i64 32
  store <4 x i64> %251, ptr %252, align 32, !noalias !518
  %253 = add <4 x i64> %248, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %254 = getelementptr inbounds nuw i8, ptr %249, i64 64
  store <4 x i64> %253, ptr %254, align 32, !noalias !518
  %255 = add <4 x i64> %248, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %256 = getelementptr inbounds nuw i8, ptr %249, i64 96
  store <4 x i64> %255, ptr %256, align 32, !noalias !518
  %257 = add <4 x i64> %248, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %258 = getelementptr inbounds nuw i8, ptr %249, i64 128
  store <4 x i64> %257, ptr %258, align 32, !noalias !518
  %259 = add <4 x i64> %248, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %260 = getelementptr inbounds nuw i8, ptr %249, i64 160
  store <4 x i64> %259, ptr %260, align 32, !noalias !518
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %261 = add i64 %1, -1
  %262 = icmp ult i64 %261, 1024
  br i1 %262, label %335, label %263

263:                                              ; preds = %243
  %264 = lshr i64 %261, 10
  %265 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %266 = load <4 x i64>, ptr %265, align 32, !alias.scope !547, !noalias !549
  %267 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %268 = load <4 x i64>, ptr %267, align 32, !alias.scope !547, !noalias !549
  br label %269

269:                                              ; preds = %263, %312
  %270 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %263 ], [ %332, %312 ]
  %271 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %263 ], [ %322, %312 ]
  %272 = phi i64 [ 0, %263 ], [ %333, %312 ]
  %273 = shl i64 %272, 10
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 %273
  br label %275

275:                                              ; preds = %269, %275
  %276 = phi <4 x i64> [ %270, %269 ], [ %309, %275 ]
  %277 = phi <4 x i64> [ %271, %269 ], [ %295, %275 ]
  %278 = phi i64 [ 0, %269 ], [ %310, %275 ]
  %279 = shl nuw nsw i64 %278, 6
  %280 = getelementptr inbounds nuw i8, ptr %274, i64 %279
  %281 = getelementptr inbounds nuw i8, ptr %280, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %281, i32 0, i32 3, i32 1), !noalias !552
  %282 = shl nuw nsw i64 %278, 3
  %283 = getelementptr inbounds nuw i8, ptr %4, i64 %282
  %284 = load <4 x i64>, ptr %280, align 1, !alias.scope !555, !noalias !556
  %285 = load <4 x i64>, ptr %283, align 8, !alias.scope !547, !noalias !559
  %286 = xor <4 x i64> %285, %284
  %287 = bitcast <4 x i64> %286 to <8 x i32>
  %288 = shufflevector <8 x i32> %287, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %289 = bitcast <8 x i32> %288 to <4 x i64>
  %290 = and <4 x i64> %286, splat (i64 4294967295)
  %291 = and <4 x i64> %289, splat (i64 4294967295)
  %292 = mul nuw <4 x i64> %291, %290
  %293 = shufflevector <4 x i64> %284, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %294 = add <4 x i64> %277, %293
  %295 = add <4 x i64> %294, %292
  %296 = getelementptr inbounds nuw i8, ptr %280, i64 32
  %297 = load <4 x i64>, ptr %296, align 1, !alias.scope !555, !noalias !556
  %298 = getelementptr inbounds nuw i8, ptr %283, i64 32
  %299 = load <4 x i64>, ptr %298, align 8, !alias.scope !547, !noalias !559
  %300 = xor <4 x i64> %299, %297
  %301 = bitcast <4 x i64> %300 to <8 x i32>
  %302 = shufflevector <8 x i32> %301, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %303 = bitcast <8 x i32> %302 to <4 x i64>
  %304 = and <4 x i64> %300, splat (i64 4294967295)
  %305 = and <4 x i64> %303, splat (i64 4294967295)
  %306 = mul nuw <4 x i64> %305, %304
  %307 = shufflevector <4 x i64> %297, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %308 = add <4 x i64> %276, %307
  %309 = add <4 x i64> %308, %306
  %310 = add nuw nsw i64 %278, 1
  %311 = icmp eq i64 %310, 16
  br i1 %311, label %312, label %275, !llvm.loop !49

312:                                              ; preds = %275
  %313 = lshr <4 x i64> %295, splat (i64 47)
  %314 = xor <4 x i64> %266, %313
  %315 = xor <4 x i64> %314, %295
  %316 = bitcast <4 x i64> %315 to <8 x i32>
  %317 = shufflevector <8 x i32> %316, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %318 = bitcast <8 x i32> %317 to <4 x i64>
  %319 = and <4 x i64> %315, splat (i64 4294967295)
  %320 = mul nuw <4 x i64> %319, splat (i64 2654435761)
  %321 = mul <4 x i64> %318, splat (i64 -7046029290881679360)
  %322 = add <4 x i64> %321, %320
  %323 = lshr <4 x i64> %309, splat (i64 47)
  %324 = xor <4 x i64> %268, %323
  %325 = xor <4 x i64> %324, %309
  %326 = bitcast <4 x i64> %325 to <8 x i32>
  %327 = shufflevector <8 x i32> %326, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %328 = bitcast <8 x i32> %327 to <4 x i64>
  %329 = and <4 x i64> %325, splat (i64 4294967295)
  %330 = mul nuw <4 x i64> %329, splat (i64 2654435761)
  %331 = mul <4 x i64> %328, splat (i64 -7046029290881679360)
  %332 = add <4 x i64> %331, %330
  %333 = add nuw nsw i64 %272, 1
  %334 = icmp eq i64 %333, %264
  br i1 %334, label %335, label %269, !llvm.loop !50

335:                                              ; preds = %312, %243
  %336 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %243 ], [ %332, %312 ]
  %337 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %243 ], [ %322, %312 ]
  %338 = and i64 %261, -1024
  %339 = lshr i64 %261, 6
  %340 = and i64 %339, 15
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 %338
  %342 = icmp eq i64 %340, 0
  br i1 %342, label %380, label %343

343:                                              ; preds = %335, %343
  %344 = phi <4 x i64> [ %377, %343 ], [ %336, %335 ]
  %345 = phi <4 x i64> [ %363, %343 ], [ %337, %335 ]
  %346 = phi i64 [ %378, %343 ], [ 0, %335 ]
  %347 = shl i64 %346, 6
  %348 = getelementptr inbounds nuw i8, ptr %341, i64 %347
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %349, i32 0, i32 3, i32 1), !noalias !560
  %350 = shl i64 %346, 3
  %351 = getelementptr inbounds nuw i8, ptr %4, i64 %350
  %352 = load <4 x i64>, ptr %348, align 1, !alias.scope !555, !noalias !563
  %353 = load <4 x i64>, ptr %351, align 8, !alias.scope !547, !noalias !566
  %354 = xor <4 x i64> %353, %352
  %355 = bitcast <4 x i64> %354 to <8 x i32>
  %356 = shufflevector <8 x i32> %355, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %357 = bitcast <8 x i32> %356 to <4 x i64>
  %358 = and <4 x i64> %354, splat (i64 4294967295)
  %359 = and <4 x i64> %357, splat (i64 4294967295)
  %360 = mul nuw <4 x i64> %359, %358
  %361 = shufflevector <4 x i64> %352, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %362 = add <4 x i64> %345, %361
  %363 = add <4 x i64> %362, %360
  %364 = getelementptr inbounds nuw i8, ptr %348, i64 32
  %365 = load <4 x i64>, ptr %364, align 1, !alias.scope !555, !noalias !563
  %366 = getelementptr inbounds nuw i8, ptr %351, i64 32
  %367 = load <4 x i64>, ptr %366, align 8, !alias.scope !547, !noalias !566
  %368 = xor <4 x i64> %367, %365
  %369 = bitcast <4 x i64> %368 to <8 x i32>
  %370 = shufflevector <8 x i32> %369, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %371 = bitcast <8 x i32> %370 to <4 x i64>
  %372 = and <4 x i64> %368, splat (i64 4294967295)
  %373 = and <4 x i64> %371, splat (i64 4294967295)
  %374 = mul nuw <4 x i64> %373, %372
  %375 = shufflevector <4 x i64> %365, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %376 = add <4 x i64> %344, %375
  %377 = add <4 x i64> %376, %374
  %378 = add nuw nsw i64 %346, 1
  %379 = icmp eq i64 %378, %340
  br i1 %379, label %380, label %343, !llvm.loop !49

380:                                              ; preds = %343, %335
  %381 = phi <4 x i64> [ %336, %335 ], [ %377, %343 ]
  %382 = phi <4 x i64> [ %337, %335 ], [ %363, %343 ]
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %384 = getelementptr inbounds i8, ptr %383, i64 -64
  %385 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %386 = load <4 x i64>, ptr %384, align 1, !alias.scope !555, !noalias !567
  %387 = load <4 x i64>, ptr %385, align 1, !alias.scope !547, !noalias !570
  %388 = xor <4 x i64> %387, %386
  %389 = bitcast <4 x i64> %388 to <8 x i32>
  %390 = shufflevector <8 x i32> %389, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %391 = bitcast <8 x i32> %390 to <4 x i64>
  %392 = and <4 x i64> %388, splat (i64 4294967295)
  %393 = and <4 x i64> %391, splat (i64 4294967295)
  %394 = mul nuw <4 x i64> %393, %392
  %395 = shufflevector <4 x i64> %386, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %396 = add <4 x i64> %382, %395
  %397 = add <4 x i64> %396, %394
  %398 = getelementptr inbounds i8, ptr %383, i64 -32
  %399 = load <4 x i64>, ptr %398, align 1, !alias.scope !555, !noalias !567
  %400 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %401 = load <4 x i64>, ptr %400, align 1, !alias.scope !547, !noalias !570
  %402 = xor <4 x i64> %401, %399
  %403 = bitcast <4 x i64> %402 to <8 x i32>
  %404 = shufflevector <8 x i32> %403, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %405 = bitcast <8 x i32> %404 to <4 x i64>
  %406 = and <4 x i64> %402, splat (i64 4294967295)
  %407 = and <4 x i64> %405, splat (i64 4294967295)
  %408 = mul nuw <4 x i64> %407, %406
  %409 = shufflevector <4 x i64> %399, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %410 = add <4 x i64> %381, %409
  %411 = add <4 x i64> %410, %408
  %412 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %413 = mul i64 %1, -7046029288634856825
  %414 = extractelement <4 x i64> %397, i64 0
  %415 = load i64, ptr %412, align 1, !alias.scope !571, !noalias !574
  %416 = xor i64 %415, %414
  %417 = extractelement <4 x i64> %397, i64 1
  %418 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %419 = load i64, ptr %418, align 1, !alias.scope !571, !noalias !574
  %420 = xor i64 %419, %417
  %421 = zext i64 %416 to i128
  %422 = zext i64 %420 to i128
  %423 = mul nuw i128 %422, %421
  %424 = lshr i128 %423, 64
  %425 = xor i128 %424, %423
  %426 = trunc i128 %425 to i64
  %427 = add i64 %413, %426
  %428 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %429 = extractelement <4 x i64> %397, i64 2
  %430 = load i64, ptr %428, align 1, !alias.scope !571, !noalias !578
  %431 = xor i64 %430, %429
  %432 = extractelement <4 x i64> %397, i64 3
  %433 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %434 = load i64, ptr %433, align 1, !alias.scope !571, !noalias !578
  %435 = xor i64 %434, %432
  %436 = zext i64 %431 to i128
  %437 = zext i64 %435 to i128
  %438 = mul nuw i128 %437, %436
  %439 = lshr i128 %438, 64
  %440 = xor i128 %439, %438
  %441 = trunc i128 %440 to i64
  %442 = add i64 %427, %441
  %443 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %444 = extractelement <4 x i64> %411, i64 0
  %445 = load i64, ptr %443, align 1, !alias.scope !571, !noalias !580
  %446 = xor i64 %445, %444
  %447 = extractelement <4 x i64> %411, i64 1
  %448 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %449 = load i64, ptr %448, align 1, !alias.scope !571, !noalias !580
  %450 = xor i64 %449, %447
  %451 = zext i64 %446 to i128
  %452 = zext i64 %450 to i128
  %453 = mul nuw i128 %452, %451
  %454 = lshr i128 %453, 64
  %455 = xor i128 %454, %453
  %456 = trunc i128 %455 to i64
  %457 = add i64 %442, %456
  %458 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %459 = extractelement <4 x i64> %411, i64 2
  %460 = load i64, ptr %458, align 1, !alias.scope !571, !noalias !582
  %461 = xor i64 %460, %459
  %462 = extractelement <4 x i64> %411, i64 3
  %463 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %464 = load i64, ptr %463, align 1, !alias.scope !571, !noalias !582
  %465 = xor i64 %464, %462
  %466 = zext i64 %461 to i128
  %467 = zext i64 %465 to i128
  %468 = mul nuw i128 %467, %466
  %469 = lshr i128 %468, 64
  %470 = xor i128 %469, %468
  %471 = trunc i128 %470 to i64
  %472 = add i64 %457, %471
  %473 = lshr i64 %472, 37
  %474 = xor i64 %473, %472
  %475 = mul i64 %474, 1609587791953885689
  %476 = lshr i64 %475, 32
  %477 = xor i64 %476, %475
  %478 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %479 = mul i64 %1, -4417276706812531889
  %480 = xor i64 %479, -1
  %481 = load i64, ptr %478, align 1, !alias.scope !584, !noalias !587
  %482 = xor i64 %481, %414
  %483 = getelementptr inbounds nuw i8, ptr %4, i64 125
  %484 = load i64, ptr %483, align 1, !alias.scope !584, !noalias !587
  %485 = xor i64 %484, %417
  %486 = zext i64 %482 to i128
  %487 = zext i64 %485 to i128
  %488 = mul nuw i128 %487, %486
  %489 = lshr i128 %488, 64
  %490 = xor i128 %489, %488
  %491 = trunc i128 %490 to i64
  %492 = add i64 %491, %480
  %493 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %494 = load i64, ptr %493, align 1, !alias.scope !584, !noalias !591
  %495 = xor i64 %494, %429
  %496 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %497 = load i64, ptr %496, align 1, !alias.scope !584, !noalias !591
  %498 = xor i64 %497, %432
  %499 = zext i64 %495 to i128
  %500 = zext i64 %498 to i128
  %501 = mul nuw i128 %500, %499
  %502 = lshr i128 %501, 64
  %503 = xor i128 %502, %501
  %504 = trunc i128 %503 to i64
  %505 = add i64 %492, %504
  %506 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %507 = load i64, ptr %506, align 1, !alias.scope !584, !noalias !593
  %508 = xor i64 %507, %444
  %509 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %510 = load i64, ptr %509, align 1, !alias.scope !584, !noalias !593
  %511 = xor i64 %510, %447
  %512 = zext i64 %508 to i128
  %513 = zext i64 %511 to i128
  %514 = mul nuw i128 %513, %512
  %515 = lshr i128 %514, 64
  %516 = xor i128 %515, %514
  %517 = trunc i128 %516 to i64
  %518 = add i64 %505, %517
  %519 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %520 = load i64, ptr %519, align 1, !alias.scope !584, !noalias !595
  %521 = xor i64 %520, %459
  %522 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %523 = load i64, ptr %522, align 1, !alias.scope !584, !noalias !595
  %524 = xor i64 %523, %462
  %525 = zext i64 %521 to i128
  %526 = zext i64 %524 to i128
  %527 = mul nuw i128 %526, %525
  %528 = lshr i128 %527, 64
  %529 = xor i128 %528, %527
  %530 = trunc i128 %529 to i64
  %531 = add i64 %518, %530
  %532 = lshr i64 %531, 37
  %533 = xor i64 %532, %531
  %534 = mul i64 %533, 1609587791953885689
  %535 = lshr i64 %534, 32
  %536 = xor i64 %535, %534
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #27, !noalias !518
  br label %537

537:                                              ; preds = %122, %380
  %538 = phi i64 [ %199, %122 ], [ %477, %380 ]
  %539 = phi i64 [ %242, %122 ], [ %536, %380 ]
  %540 = insertvalue { i64, i64 } poison, i64 %538, 0
  %541 = insertvalue { i64, i64 } %540, i64 %539, 1
  ret { i64, i64 } %541
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset(ptr noundef writeonly %0) local_unnamed_addr #5 {
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
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 {
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

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %53, label %4

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
  br label %48

16:                                               ; preds = %4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %21, i32 0, i32 3, i32 1)
  %22 = sub i64 0, %1
  %23 = insertelement <4 x i64> poison, i64 %1, i64 0
  %24 = insertelement <4 x i64> %23, i64 %22, i64 1
  %25 = insertelement <4 x i64> %24, i64 %1, i64 2
  %26 = insertelement <4 x i64> %25, i64 %22, i64 3
  %27 = tail call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %21) #27, !srcloc !154
  %28 = add <4 x i64> %26, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %28, ptr %27, align 32
  %29 = add <4 x i64> %26, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 32
  store <4 x i64> %29, ptr %30, align 32
  %31 = add <4 x i64> %26, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %32 = getelementptr inbounds nuw i8, ptr %27, i64 64
  store <4 x i64> %31, ptr %32, align 32
  %33 = add <4 x i64> %26, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %34 = getelementptr inbounds nuw i8, ptr %27, i64 96
  store <4 x i64> %33, ptr %34, align 32
  %35 = add <4 x i64> %26, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %36 = getelementptr inbounds nuw i8, ptr %27, i64 128
  store <4 x i64> %35, ptr %36, align 32
  %37 = add <4 x i64> %26, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %38 = getelementptr inbounds nuw i8, ptr %27, i64 160
  store <4 x i64> %37, ptr %38, align 32
  br label %39

39:                                               ; preds = %20, %16
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %42, align 16
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %44, align 32
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %46, align 16
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %47, align 8
  store i64 %1, ptr %17, align 8
  br label %48

48:                                               ; preds = %6, %39
  %49 = phi ptr [ null, %39 ], [ @XXH3_kSecret, %6 ]
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %49, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %51, align 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %52, align 8
  br label %53

53:                                               ; preds = %48, %2
  %54 = phi i32 [ 1, %2 ], [ 0, %48 ]
  ret i32 %54
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH3_128bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %764, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %8 = load ptr, ptr %7, align 8, !alias.scope !597, !noalias !600
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %11 = select i1 %9, ptr %10, ptr %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %13 = load i64, ptr %12, align 16, !alias.scope !597, !noalias !600
  %14 = add i64 %13, %2
  store i64 %14, ptr %12, align 16, !alias.scope !597, !noalias !600
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %16 = load i32, ptr %15, align 64, !alias.scope !597, !noalias !600
  %17 = zext i32 %16 to i64
  %18 = add i64 %2, %17
  %19 = icmp ult i64 %18, 257
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %23 = trunc i64 %2 to i32
  %24 = load i32, ptr %15, align 64, !alias.scope !597, !noalias !600
  %25 = add i32 %24, %23
  br label %762

26:                                               ; preds = %5
  %27 = icmp eq i32 %16, 0
  br i1 %27, label %279, label %28

28:                                               ; preds = %26
  %29 = sub i32 256, %16
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull readonly align 1 %1, i64 %30, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %36 = load i64, ptr %35, align 8, !alias.scope !597, !noalias !600
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %38 = load i64, ptr %37, align 32, !alias.scope !597, !noalias !600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %39 = load i64, ptr %34, align 8, !alias.scope !605, !noalias !607
  %40 = sub i64 %36, %39
  %41 = icmp ugt i64 %40, 4
  br i1 %41, label %155, label %42

42:                                               ; preds = %28
  %43 = sub nuw nsw i64 4, %40
  %44 = shl i64 %39, 3
  %45 = getelementptr inbounds nuw i8, ptr %11, i64 %44
  %46 = icmp eq i64 %36, %39
  %47 = load <4 x i64>, ptr %0, align 32, !alias.scope !610, !noalias !613
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %49 = load <4 x i64>, ptr %48, align 32, !alias.scope !602, !noalias !615
  br i1 %46, label %87, label %50

50:                                               ; preds = %42, %50
  %51 = phi <4 x i64> [ %84, %50 ], [ %49, %42 ]
  %52 = phi <4 x i64> [ %70, %50 ], [ %47, %42 ]
  %53 = phi i64 [ %85, %50 ], [ 0, %42 ]
  %54 = shl i64 %53, 6
  %55 = getelementptr inbounds nuw i8, ptr %31, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %56, i32 0, i32 3, i32 1), !noalias !616
  %57 = shl i64 %53, 3
  %58 = getelementptr inbounds nuw i8, ptr %45, i64 %57
  %59 = load <4 x i64>, ptr %55, align 1, !noalias !619
  %60 = load <4 x i64>, ptr %58, align 1, !noalias !619
  %61 = xor <4 x i64> %60, %59
  %62 = bitcast <4 x i64> %61 to <8 x i32>
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %64 = bitcast <8 x i32> %63 to <4 x i64>
  %65 = and <4 x i64> %61, splat (i64 4294967295)
  %66 = and <4 x i64> %64, splat (i64 4294967295)
  %67 = mul nuw <4 x i64> %66, %65
  %68 = shufflevector <4 x i64> %59, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %69 = add <4 x i64> %52, %68
  %70 = add <4 x i64> %69, %67
  %71 = getelementptr inbounds nuw i8, ptr %55, i64 32
  %72 = load <4 x i64>, ptr %71, align 1, !noalias !619
  %73 = getelementptr inbounds nuw i8, ptr %58, i64 32
  %74 = load <4 x i64>, ptr %73, align 1, !noalias !619
  %75 = xor <4 x i64> %74, %72
  %76 = bitcast <4 x i64> %75 to <8 x i32>
  %77 = shufflevector <8 x i32> %76, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %78 = bitcast <8 x i32> %77 to <4 x i64>
  %79 = and <4 x i64> %75, splat (i64 4294967295)
  %80 = and <4 x i64> %78, splat (i64 4294967295)
  %81 = mul nuw <4 x i64> %80, %79
  %82 = shufflevector <4 x i64> %72, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %83 = add <4 x i64> %51, %82
  %84 = add <4 x i64> %83, %81
  %85 = add nuw i64 %53, 1
  %86 = icmp eq i64 %85, %40
  br i1 %86, label %87, label %50, !llvm.loop !49

87:                                               ; preds = %50, %42
  %88 = phi <4 x i64> [ %49, %42 ], [ %84, %50 ]
  %89 = phi <4 x i64> [ %47, %42 ], [ %70, %50 ]
  %90 = getelementptr inbounds nuw i8, ptr %11, i64 %38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %91 = lshr <4 x i64> %89, splat (i64 47)
  %92 = load <4 x i64>, ptr %90, align 1, !noalias !623
  %93 = xor <4 x i64> %92, %91
  %94 = xor <4 x i64> %93, %89
  %95 = bitcast <4 x i64> %94 to <8 x i32>
  %96 = shufflevector <8 x i32> %95, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %97 = bitcast <8 x i32> %96 to <4 x i64>
  %98 = and <4 x i64> %94, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, splat (i64 2654435761)
  %100 = mul <4 x i64> %97, splat (i64 -7046029290881679360)
  %101 = add <4 x i64> %100, %99
  store <4 x i64> %101, ptr %0, align 32, !alias.scope !610, !noalias !613
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %103 = lshr <4 x i64> %88, splat (i64 47)
  %104 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %105 = load <4 x i64>, ptr %104, align 1, !noalias !623
  %106 = xor <4 x i64> %105, %103
  %107 = xor <4 x i64> %106, %88
  %108 = bitcast <4 x i64> %107 to <8 x i32>
  %109 = shufflevector <8 x i32> %108, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %110 = bitcast <8 x i32> %109 to <4 x i64>
  %111 = and <4 x i64> %107, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, splat (i64 2654435761)
  %113 = mul <4 x i64> %110, splat (i64 -7046029290881679360)
  %114 = add <4 x i64> %113, %112
  store <4 x i64> %114, ptr %102, align 32, !alias.scope !610, !noalias !613
  %115 = shl nuw nsw i64 %40, 6
  %116 = getelementptr inbounds nuw i8, ptr %31, i64 %115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %117 = icmp eq i64 %40, 4
  br i1 %117, label %277, label %118

118:                                              ; preds = %87, %118
  %119 = phi <4 x i64> [ %152, %118 ], [ %114, %87 ]
  %120 = phi <4 x i64> [ %138, %118 ], [ %101, %87 ]
  %121 = phi i64 [ %153, %118 ], [ 0, %87 ]
  %122 = shl i64 %121, 6
  %123 = getelementptr inbounds nuw i8, ptr %116, i64 %122
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %124, i32 0, i32 3, i32 1), !noalias !627
  %125 = shl i64 %121, 3
  %126 = getelementptr inbounds nuw i8, ptr %11, i64 %125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %127 = load <4 x i64>, ptr %123, align 1, !noalias !631
  %128 = load <4 x i64>, ptr %126, align 1, !noalias !631
  %129 = xor <4 x i64> %128, %127
  %130 = bitcast <4 x i64> %129 to <8 x i32>
  %131 = shufflevector <8 x i32> %130, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %132 = bitcast <8 x i32> %131 to <4 x i64>
  %133 = and <4 x i64> %129, splat (i64 4294967295)
  %134 = and <4 x i64> %132, splat (i64 4294967295)
  %135 = mul nuw <4 x i64> %134, %133
  %136 = shufflevector <4 x i64> %127, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %137 = add <4 x i64> %120, %136
  %138 = add <4 x i64> %137, %135
  %139 = getelementptr inbounds nuw i8, ptr %123, i64 32
  %140 = load <4 x i64>, ptr %139, align 1, !noalias !631
  %141 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %142 = load <4 x i64>, ptr %141, align 1, !noalias !631
  %143 = xor <4 x i64> %142, %140
  %144 = bitcast <4 x i64> %143 to <8 x i32>
  %145 = shufflevector <8 x i32> %144, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %146 = bitcast <8 x i32> %145 to <4 x i64>
  %147 = and <4 x i64> %143, splat (i64 4294967295)
  %148 = and <4 x i64> %146, splat (i64 4294967295)
  %149 = mul nuw <4 x i64> %148, %147
  %150 = shufflevector <4 x i64> %140, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %151 = add <4 x i64> %119, %150
  %152 = add <4 x i64> %151, %149
  %153 = add nuw i64 %121, 1
  %154 = icmp eq i64 %153, %43
  br i1 %154, label %276, label %118, !llvm.loop !49

155:                                              ; preds = %28
  %156 = shl i64 %39, 3
  %157 = getelementptr inbounds nuw i8, ptr %11, i64 %156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull %158, i32 0, i32 3, i32 1), !noalias !635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %159 = load <4 x i64>, ptr %31, align 1, !noalias !639
  %160 = load <4 x i64>, ptr %157, align 1, !noalias !639
  %161 = xor <4 x i64> %160, %159
  %162 = bitcast <4 x i64> %161 to <8 x i32>
  %163 = shufflevector <8 x i32> %162, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %164 = bitcast <8 x i32> %163 to <4 x i64>
  %165 = and <4 x i64> %161, splat (i64 4294967295)
  %166 = and <4 x i64> %164, splat (i64 4294967295)
  %167 = mul nuw <4 x i64> %166, %165
  %168 = shufflevector <4 x i64> %159, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %169 = load <4 x i64>, ptr %0, align 32, !alias.scope !640, !noalias !641
  %170 = add <4 x i64> %169, %168
  %171 = add <4 x i64> %170, %167
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %173 = load <4 x i64>, ptr %172, align 1, !noalias !639
  %174 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %175 = load <4 x i64>, ptr %174, align 1, !noalias !639
  %176 = xor <4 x i64> %175, %173
  %177 = bitcast <4 x i64> %176 to <8 x i32>
  %178 = shufflevector <8 x i32> %177, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %179 = bitcast <8 x i32> %178 to <4 x i64>
  %180 = and <4 x i64> %176, splat (i64 4294967295)
  %181 = and <4 x i64> %179, splat (i64 4294967295)
  %182 = mul nuw <4 x i64> %181, %180
  %183 = shufflevector <4 x i64> %173, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %185 = load <4 x i64>, ptr %184, align 32, !alias.scope !640, !noalias !641
  %186 = add <4 x i64> %185, %183
  %187 = add <4 x i64> %186, %182
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull %189, i32 0, i32 3, i32 1), !noalias !635
  %190 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %191 = load <4 x i64>, ptr %188, align 1, !noalias !646
  %192 = load <4 x i64>, ptr %190, align 1, !noalias !646
  %193 = xor <4 x i64> %192, %191
  %194 = bitcast <4 x i64> %193 to <8 x i32>
  %195 = shufflevector <8 x i32> %194, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %196 = bitcast <8 x i32> %195 to <4 x i64>
  %197 = and <4 x i64> %193, splat (i64 4294967295)
  %198 = and <4 x i64> %196, splat (i64 4294967295)
  %199 = mul nuw <4 x i64> %198, %197
  %200 = shufflevector <4 x i64> %191, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %201 = add <4 x i64> %171, %200
  %202 = add <4 x i64> %201, %199
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %204 = load <4 x i64>, ptr %203, align 1, !noalias !646
  %205 = getelementptr inbounds nuw i8, ptr %157, i64 40
  %206 = load <4 x i64>, ptr %205, align 1, !noalias !646
  %207 = xor <4 x i64> %206, %204
  %208 = bitcast <4 x i64> %207 to <8 x i32>
  %209 = shufflevector <8 x i32> %208, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %210 = bitcast <8 x i32> %209 to <4 x i64>
  %211 = and <4 x i64> %207, splat (i64 4294967295)
  %212 = and <4 x i64> %210, splat (i64 4294967295)
  %213 = mul nuw <4 x i64> %212, %211
  %214 = shufflevector <4 x i64> %204, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %215 = add <4 x i64> %187, %214
  %216 = add <4 x i64> %215, %213
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull %218, i32 0, i32 3, i32 1), !noalias !635
  %219 = getelementptr inbounds nuw i8, ptr %157, i64 16
  %220 = load <4 x i64>, ptr %217, align 1, !noalias !648
  %221 = load <4 x i64>, ptr %219, align 1, !noalias !648
  %222 = xor <4 x i64> %221, %220
  %223 = bitcast <4 x i64> %222 to <8 x i32>
  %224 = shufflevector <8 x i32> %223, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %225 = bitcast <8 x i32> %224 to <4 x i64>
  %226 = and <4 x i64> %222, splat (i64 4294967295)
  %227 = and <4 x i64> %225, splat (i64 4294967295)
  %228 = mul nuw <4 x i64> %227, %226
  %229 = shufflevector <4 x i64> %220, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %230 = add <4 x i64> %202, %229
  %231 = add <4 x i64> %230, %228
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %233 = load <4 x i64>, ptr %232, align 1, !noalias !648
  %234 = getelementptr inbounds nuw i8, ptr %157, i64 48
  %235 = load <4 x i64>, ptr %234, align 1, !noalias !648
  %236 = xor <4 x i64> %235, %233
  %237 = bitcast <4 x i64> %236 to <8 x i32>
  %238 = shufflevector <8 x i32> %237, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %239 = bitcast <8 x i32> %238 to <4 x i64>
  %240 = and <4 x i64> %236, splat (i64 4294967295)
  %241 = and <4 x i64> %239, splat (i64 4294967295)
  %242 = mul nuw <4 x i64> %241, %240
  %243 = shufflevector <4 x i64> %233, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %244 = add <4 x i64> %216, %243
  %245 = add <4 x i64> %244, %242
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %247 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull %247, i32 0, i32 3, i32 1), !noalias !635
  %248 = getelementptr inbounds nuw i8, ptr %157, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %249 = load <4 x i64>, ptr %246, align 1, !noalias !652
  %250 = load <4 x i64>, ptr %248, align 1, !noalias !652
  %251 = xor <4 x i64> %250, %249
  %252 = bitcast <4 x i64> %251 to <8 x i32>
  %253 = shufflevector <8 x i32> %252, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %254 = bitcast <8 x i32> %253 to <4 x i64>
  %255 = and <4 x i64> %251, splat (i64 4294967295)
  %256 = and <4 x i64> %254, splat (i64 4294967295)
  %257 = mul nuw <4 x i64> %256, %255
  %258 = shufflevector <4 x i64> %249, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %259 = add <4 x i64> %231, %258
  %260 = add <4 x i64> %259, %257
  store <4 x i64> %260, ptr %0, align 32, !alias.scope !653, !noalias !641
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %262 = load <4 x i64>, ptr %261, align 1, !noalias !652
  %263 = getelementptr inbounds nuw i8, ptr %157, i64 56
  %264 = load <4 x i64>, ptr %263, align 1, !noalias !652
  %265 = xor <4 x i64> %264, %262
  %266 = bitcast <4 x i64> %265 to <8 x i32>
  %267 = shufflevector <8 x i32> %266, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %268 = bitcast <8 x i32> %267 to <4 x i64>
  %269 = and <4 x i64> %265, splat (i64 4294967295)
  %270 = and <4 x i64> %268, splat (i64 4294967295)
  %271 = mul nuw <4 x i64> %270, %269
  %272 = shufflevector <4 x i64> %262, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %273 = add <4 x i64> %245, %272
  %274 = add <4 x i64> %273, %271
  store <4 x i64> %274, ptr %184, align 32, !alias.scope !653, !noalias !641
  %275 = add i64 %39, 4
  br label %277

276:                                              ; preds = %118
  store <4 x i64> %138, ptr %0, align 32, !alias.scope !654, !noalias !655
  store <4 x i64> %152, ptr %102, align 32, !alias.scope !654, !noalias !655
  br label %277

277:                                              ; preds = %276, %87, %155
  %278 = phi i64 [ %275, %155 ], [ 0, %87 ], [ %43, %276 ]
  store i64 %278, ptr %34, align 8, !alias.scope !605, !noalias !607
  store i32 0, ptr %15, align 64, !alias.scope !597, !noalias !600
  br label %279

279:                                              ; preds = %277, %26
  %280 = phi ptr [ %33, %277 ], [ %1, %26 ]
  %281 = ptrtoint ptr %6 to i64
  %282 = ptrtoint ptr %280 to i64
  %283 = sub i64 %281, %282
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %285 = load i64, ptr %284, align 8, !alias.scope !597, !noalias !600
  %286 = shl i64 %285, 6
  %287 = icmp ugt i64 %283, %286
  br i1 %287, label %288, label %496

288:                                              ; preds = %279
  %289 = getelementptr inbounds i8, ptr %6, i64 -1
  %290 = ptrtoint ptr %289 to i64
  %291 = sub i64 %290, %282
  %292 = lshr i64 %291, 6
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %294 = load i64, ptr %293, align 8, !alias.scope !597, !noalias !600
  %295 = sub i64 %285, %294
  %296 = shl i64 %294, 3
  %297 = getelementptr inbounds nuw i8, ptr %11, i64 %296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %298 = icmp eq i64 %285, %294
  %299 = load <4 x i64>, ptr %0, align 32, !alias.scope !663, !noalias !666
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %301 = load <4 x i64>, ptr %300, align 32, !noalias !257
  br i1 %298, label %340, label %302

302:                                              ; preds = %288, %302
  %303 = phi <4 x i64> [ %336, %302 ], [ %301, %288 ]
  %304 = phi <4 x i64> [ %322, %302 ], [ %299, %288 ]
  %305 = phi i64 [ %337, %302 ], [ 0, %288 ]
  %306 = shl i64 %305, 6
  %307 = getelementptr inbounds nuw i8, ptr %280, i64 %306
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %308, i32 0, i32 3, i32 1), !noalias !660
  %309 = shl i64 %305, 3
  %310 = getelementptr inbounds nuw i8, ptr %297, i64 %309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %311 = load <4 x i64>, ptr %307, align 1, !noalias !671
  %312 = load <4 x i64>, ptr %310, align 1, !noalias !671
  %313 = xor <4 x i64> %312, %311
  %314 = bitcast <4 x i64> %313 to <8 x i32>
  %315 = shufflevector <8 x i32> %314, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %316 = bitcast <8 x i32> %315 to <4 x i64>
  %317 = and <4 x i64> %313, splat (i64 4294967295)
  %318 = and <4 x i64> %316, splat (i64 4294967295)
  %319 = mul nuw <4 x i64> %318, %317
  %320 = shufflevector <4 x i64> %311, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %321 = add <4 x i64> %304, %320
  %322 = add <4 x i64> %321, %319
  %323 = getelementptr inbounds nuw i8, ptr %307, i64 32
  %324 = load <4 x i64>, ptr %323, align 1, !noalias !671
  %325 = getelementptr inbounds nuw i8, ptr %310, i64 32
  %326 = load <4 x i64>, ptr %325, align 1, !noalias !671
  %327 = xor <4 x i64> %326, %324
  %328 = bitcast <4 x i64> %327 to <8 x i32>
  %329 = shufflevector <8 x i32> %328, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %330 = bitcast <8 x i32> %329 to <4 x i64>
  %331 = and <4 x i64> %327, splat (i64 4294967295)
  %332 = and <4 x i64> %330, splat (i64 4294967295)
  %333 = mul nuw <4 x i64> %332, %331
  %334 = shufflevector <4 x i64> %324, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %335 = add <4 x i64> %303, %334
  %336 = add <4 x i64> %335, %333
  %337 = add nuw i64 %305, 1
  %338 = icmp eq i64 %337, %295
  br i1 %338, label %339, label %302, !llvm.loop !49

339:                                              ; preds = %302
  store <4 x i64> %322, ptr %0, align 32, !alias.scope !671, !noalias !672
  store <4 x i64> %336, ptr %300, align 32, !alias.scope !671, !noalias !672
  br label %340

340:                                              ; preds = %288, %339
  %341 = phi <4 x i64> [ %336, %339 ], [ %301, %288 ]
  %342 = phi <4 x i64> [ %322, %339 ], [ %299, %288 ]
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %344 = load i64, ptr %343, align 32, !alias.scope !597, !noalias !600
  %345 = getelementptr inbounds nuw i8, ptr %11, i64 %344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %346 = lshr <4 x i64> %342, splat (i64 47)
  %347 = load <4 x i64>, ptr %345, align 1, !noalias !663
  %348 = xor <4 x i64> %347, %346
  %349 = xor <4 x i64> %348, %342
  %350 = bitcast <4 x i64> %349 to <8 x i32>
  %351 = shufflevector <8 x i32> %350, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %352 = bitcast <8 x i32> %351 to <4 x i64>
  %353 = and <4 x i64> %349, splat (i64 4294967295)
  %354 = mul nuw <4 x i64> %353, splat (i64 2654435761)
  %355 = mul <4 x i64> %352, splat (i64 -7046029290881679360)
  %356 = add <4 x i64> %355, %354
  store <4 x i64> %356, ptr %0, align 32, !alias.scope !663, !noalias !666
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %358 = lshr <4 x i64> %341, splat (i64 47)
  %359 = getelementptr inbounds nuw i8, ptr %345, i64 32
  %360 = load <4 x i64>, ptr %359, align 1, !noalias !663
  %361 = xor <4 x i64> %360, %358
  %362 = xor <4 x i64> %361, %341
  %363 = bitcast <4 x i64> %362 to <8 x i32>
  %364 = shufflevector <8 x i32> %363, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %365 = bitcast <8 x i32> %364 to <4 x i64>
  %366 = and <4 x i64> %362, splat (i64 4294967295)
  %367 = mul nuw <4 x i64> %366, splat (i64 2654435761)
  %368 = mul <4 x i64> %365, splat (i64 -7046029290881679360)
  %369 = add <4 x i64> %368, %367
  store <4 x i64> %369, ptr %357, align 32, !alias.scope !663, !noalias !666
  store i64 0, ptr %293, align 8, !alias.scope !597, !noalias !600
  %370 = shl i64 %295, 6
  %371 = getelementptr inbounds nuw i8, ptr %280, i64 %370
  %372 = sub i64 %292, %295
  %373 = icmp ult i64 %372, %285
  br i1 %373, label %447, label %374

374:                                              ; preds = %340
  %375 = icmp eq i64 %285, 0
  br label %376

376:                                              ; preds = %374, %419
  %377 = phi <4 x i64> [ %443, %419 ], [ %369, %374 ]
  %378 = phi <4 x i64> [ %432, %419 ], [ %356, %374 ]
  %379 = phi ptr [ %444, %419 ], [ %371, %374 ]
  %380 = phi i64 [ %445, %419 ], [ %372, %374 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  br i1 %375, label %419, label %381

381:                                              ; preds = %376, %381
  %382 = phi <4 x i64> [ %415, %381 ], [ %377, %376 ]
  %383 = phi <4 x i64> [ %401, %381 ], [ %378, %376 ]
  %384 = phi i64 [ %416, %381 ], [ 0, %376 ]
  %385 = shl i64 %384, 6
  %386 = getelementptr inbounds nuw i8, ptr %379, i64 %385
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %387, i32 0, i32 3, i32 1), !noalias !677
  %388 = shl i64 %384, 3
  %389 = getelementptr inbounds nuw i8, ptr %11, i64 %388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %390 = load <4 x i64>, ptr %386, align 1, !noalias !683
  %391 = load <4 x i64>, ptr %389, align 1, !noalias !683
  %392 = xor <4 x i64> %391, %390
  %393 = bitcast <4 x i64> %392 to <8 x i32>
  %394 = shufflevector <8 x i32> %393, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %395 = bitcast <8 x i32> %394 to <4 x i64>
  %396 = and <4 x i64> %392, splat (i64 4294967295)
  %397 = and <4 x i64> %395, splat (i64 4294967295)
  %398 = mul nuw <4 x i64> %397, %396
  %399 = shufflevector <4 x i64> %390, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %400 = add <4 x i64> %383, %399
  %401 = add <4 x i64> %400, %398
  %402 = getelementptr inbounds nuw i8, ptr %386, i64 32
  %403 = load <4 x i64>, ptr %402, align 1, !noalias !683
  %404 = getelementptr inbounds nuw i8, ptr %389, i64 32
  %405 = load <4 x i64>, ptr %404, align 1, !noalias !683
  %406 = xor <4 x i64> %405, %403
  %407 = bitcast <4 x i64> %406 to <8 x i32>
  %408 = shufflevector <8 x i32> %407, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %409 = bitcast <8 x i32> %408 to <4 x i64>
  %410 = and <4 x i64> %406, splat (i64 4294967295)
  %411 = and <4 x i64> %409, splat (i64 4294967295)
  %412 = mul nuw <4 x i64> %411, %410
  %413 = shufflevector <4 x i64> %403, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %414 = add <4 x i64> %382, %413
  %415 = add <4 x i64> %414, %412
  %416 = add nuw i64 %384, 1
  %417 = icmp eq i64 %416, %285
  br i1 %417, label %418, label %381, !llvm.loop !49

418:                                              ; preds = %381
  store <4 x i64> %401, ptr %0, align 32, !alias.scope !683, !noalias !684
  store <4 x i64> %415, ptr %357, align 32, !alias.scope !683, !noalias !684
  br label %419

419:                                              ; preds = %418, %376
  %420 = phi <4 x i64> [ %377, %376 ], [ %415, %418 ]
  %421 = phi <4 x i64> [ %378, %376 ], [ %401, %418 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %422 = lshr <4 x i64> %421, splat (i64 47)
  %423 = load <4 x i64>, ptr %345, align 1, !noalias !689
  %424 = xor <4 x i64> %423, %422
  %425 = xor <4 x i64> %424, %421
  %426 = bitcast <4 x i64> %425 to <8 x i32>
  %427 = shufflevector <8 x i32> %426, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %428 = bitcast <8 x i32> %427 to <4 x i64>
  %429 = and <4 x i64> %425, splat (i64 4294967295)
  %430 = mul nuw <4 x i64> %429, splat (i64 2654435761)
  %431 = mul <4 x i64> %428, splat (i64 -7046029290881679360)
  %432 = add <4 x i64> %431, %430
  store <4 x i64> %432, ptr %0, align 32, !alias.scope !689, !noalias !692
  %433 = lshr <4 x i64> %420, splat (i64 47)
  %434 = load <4 x i64>, ptr %359, align 1, !noalias !689
  %435 = xor <4 x i64> %434, %433
  %436 = xor <4 x i64> %435, %420
  %437 = bitcast <4 x i64> %436 to <8 x i32>
  %438 = shufflevector <8 x i32> %437, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %439 = bitcast <8 x i32> %438 to <4 x i64>
  %440 = and <4 x i64> %436, splat (i64 4294967295)
  %441 = mul nuw <4 x i64> %440, splat (i64 2654435761)
  %442 = mul <4 x i64> %439, splat (i64 -7046029290881679360)
  %443 = add <4 x i64> %442, %441
  store <4 x i64> %443, ptr %357, align 32, !alias.scope !689, !noalias !692
  %444 = getelementptr inbounds nuw i8, ptr %379, i64 %286
  %445 = sub i64 %380, %285
  %446 = icmp ult i64 %445, %285
  br i1 %446, label %447, label %376, !llvm.loop !284

447:                                              ; preds = %419, %340
  %448 = phi <4 x i64> [ %369, %340 ], [ %443, %419 ]
  %449 = phi <4 x i64> [ %356, %340 ], [ %432, %419 ]
  %450 = phi i64 [ %372, %340 ], [ %445, %419 ]
  %451 = phi ptr [ %371, %340 ], [ %444, %419 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %452 = icmp eq i64 %450, 0
  br i1 %452, label %491, label %453

453:                                              ; preds = %447, %453
  %454 = phi <4 x i64> [ %487, %453 ], [ %448, %447 ]
  %455 = phi <4 x i64> [ %473, %453 ], [ %449, %447 ]
  %456 = phi i64 [ %488, %453 ], [ 0, %447 ]
  %457 = shl i64 %456, 6
  %458 = getelementptr inbounds nuw i8, ptr %451, i64 %457
  %459 = getelementptr inbounds nuw i8, ptr %458, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %459, i32 0, i32 3, i32 1), !noalias !694
  %460 = shl i64 %456, 3
  %461 = getelementptr inbounds nuw i8, ptr %11, i64 %460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %462 = load <4 x i64>, ptr %458, align 1, !noalias !700
  %463 = load <4 x i64>, ptr %461, align 1, !noalias !700
  %464 = xor <4 x i64> %463, %462
  %465 = bitcast <4 x i64> %464 to <8 x i32>
  %466 = shufflevector <8 x i32> %465, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %467 = bitcast <8 x i32> %466 to <4 x i64>
  %468 = and <4 x i64> %464, splat (i64 4294967295)
  %469 = and <4 x i64> %467, splat (i64 4294967295)
  %470 = mul nuw <4 x i64> %469, %468
  %471 = shufflevector <4 x i64> %462, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %472 = add <4 x i64> %455, %471
  %473 = add <4 x i64> %472, %470
  %474 = getelementptr inbounds nuw i8, ptr %458, i64 32
  %475 = load <4 x i64>, ptr %474, align 1, !noalias !700
  %476 = getelementptr inbounds nuw i8, ptr %461, i64 32
  %477 = load <4 x i64>, ptr %476, align 1, !noalias !700
  %478 = xor <4 x i64> %477, %475
  %479 = bitcast <4 x i64> %478 to <8 x i32>
  %480 = shufflevector <8 x i32> %479, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %481 = bitcast <8 x i32> %480 to <4 x i64>
  %482 = and <4 x i64> %478, splat (i64 4294967295)
  %483 = and <4 x i64> %481, splat (i64 4294967295)
  %484 = mul nuw <4 x i64> %483, %482
  %485 = shufflevector <4 x i64> %475, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %486 = add <4 x i64> %454, %485
  %487 = add <4 x i64> %486, %484
  %488 = add nuw i64 %456, 1
  %489 = icmp eq i64 %488, %450
  br i1 %489, label %490, label %453, !llvm.loop !49

490:                                              ; preds = %453
  store <4 x i64> %473, ptr %0, align 32, !alias.scope !700, !noalias !701
  store <4 x i64> %487, ptr %357, align 32, !alias.scope !700, !noalias !701
  br label %491

491:                                              ; preds = %490, %447
  %492 = shl i64 %450, 6
  %493 = getelementptr inbounds nuw i8, ptr %451, i64 %492
  store i64 %450, ptr %293, align 8, !alias.scope !597, !noalias !600
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %495 = getelementptr inbounds i8, ptr %493, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %494, ptr noundef nonnull readonly align 1 dereferenceable(64) %495, i64 64, i1 false)
  br label %756

496:                                              ; preds = %279
  %497 = icmp sgt i64 %283, 256
  br i1 %497, label %498, label %756

498:                                              ; preds = %496
  %499 = getelementptr inbounds i8, ptr %6, i64 -256
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %502 = load i64, ptr %500, align 8, !alias.scope !706, !noalias !709
  %503 = load i64, ptr %284, align 8, !alias.scope !597, !noalias !600
  %504 = load i64, ptr %501, align 32, !alias.scope !597, !noalias !600
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %507 = getelementptr inbounds nuw i8, ptr %11, i64 %504
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %509 = getelementptr inbounds nuw i8, ptr %507, i64 32
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %511

511:                                              ; preds = %749, %498
  %512 = phi i64 [ %502, %498 ], [ %750, %749 ]
  %513 = phi ptr [ %280, %498 ], [ %751, %749 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %514 = sub i64 %503, %512
  %515 = icmp ugt i64 %514, 4
  br i1 %515, label %628, label %516

516:                                              ; preds = %511
  %517 = sub nuw nsw i64 4, %514
  %518 = shl i64 %512, 3
  %519 = getelementptr inbounds nuw i8, ptr %11, i64 %518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %520 = icmp eq i64 %503, %512
  %521 = load <4 x i64>, ptr %0, align 32, !alias.scope !717, !noalias !720
  br i1 %520, label %522, label %524

522:                                              ; preds = %516
  %523 = load <4 x i64>, ptr %506, align 32, !alias.scope !717, !noalias !720
  br label %563

524:                                              ; preds = %516
  %525 = load <4 x i64>, ptr %505, align 32, !alias.scope !722, !noalias !725
  br label %526

526:                                              ; preds = %524, %526
  %527 = phi <4 x i64> [ %560, %526 ], [ %525, %524 ]
  %528 = phi <4 x i64> [ %546, %526 ], [ %521, %524 ]
  %529 = phi i64 [ %561, %526 ], [ 0, %524 ]
  %530 = shl i64 %529, 6
  %531 = getelementptr inbounds nuw i8, ptr %513, i64 %530
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %532, i32 0, i32 3, i32 1), !noalias !730
  %533 = shl i64 %529, 3
  %534 = getelementptr inbounds nuw i8, ptr %519, i64 %533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %535 = load <4 x i64>, ptr %531, align 1, !noalias !732
  %536 = load <4 x i64>, ptr %534, align 1, !noalias !732
  %537 = xor <4 x i64> %536, %535
  %538 = bitcast <4 x i64> %537 to <8 x i32>
  %539 = shufflevector <8 x i32> %538, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %540 = bitcast <8 x i32> %539 to <4 x i64>
  %541 = and <4 x i64> %537, splat (i64 4294967295)
  %542 = and <4 x i64> %540, splat (i64 4294967295)
  %543 = mul nuw <4 x i64> %542, %541
  %544 = shufflevector <4 x i64> %535, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %545 = add <4 x i64> %528, %544
  %546 = add <4 x i64> %545, %543
  %547 = getelementptr inbounds nuw i8, ptr %531, i64 32
  %548 = load <4 x i64>, ptr %547, align 1, !noalias !732
  %549 = getelementptr inbounds nuw i8, ptr %534, i64 32
  %550 = load <4 x i64>, ptr %549, align 1, !noalias !732
  %551 = xor <4 x i64> %550, %548
  %552 = bitcast <4 x i64> %551 to <8 x i32>
  %553 = shufflevector <8 x i32> %552, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %554 = bitcast <8 x i32> %553 to <4 x i64>
  %555 = and <4 x i64> %551, splat (i64 4294967295)
  %556 = and <4 x i64> %554, splat (i64 4294967295)
  %557 = mul nuw <4 x i64> %556, %555
  %558 = shufflevector <4 x i64> %548, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %559 = add <4 x i64> %527, %558
  %560 = add <4 x i64> %559, %557
  %561 = add nuw i64 %529, 1
  %562 = icmp eq i64 %561, %514
  br i1 %562, label %563, label %526, !llvm.loop !49

563:                                              ; preds = %526, %522
  %564 = phi <4 x i64> [ %523, %522 ], [ %560, %526 ]
  %565 = phi <4 x i64> [ %521, %522 ], [ %546, %526 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %566 = lshr <4 x i64> %565, splat (i64 47)
  %567 = load <4 x i64>, ptr %507, align 1, !noalias !734
  %568 = xor <4 x i64> %567, %566
  %569 = xor <4 x i64> %568, %565
  %570 = bitcast <4 x i64> %569 to <8 x i32>
  %571 = shufflevector <8 x i32> %570, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %572 = bitcast <8 x i32> %571 to <4 x i64>
  %573 = and <4 x i64> %569, splat (i64 4294967295)
  %574 = mul nuw <4 x i64> %573, splat (i64 2654435761)
  %575 = mul <4 x i64> %572, splat (i64 -7046029290881679360)
  %576 = add <4 x i64> %575, %574
  store <4 x i64> %576, ptr %0, align 32, !alias.scope !717, !noalias !720
  %577 = lshr <4 x i64> %564, splat (i64 47)
  %578 = load <4 x i64>, ptr %509, align 1, !noalias !734
  %579 = xor <4 x i64> %578, %577
  %580 = xor <4 x i64> %579, %564
  %581 = bitcast <4 x i64> %580 to <8 x i32>
  %582 = shufflevector <8 x i32> %581, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %583 = bitcast <8 x i32> %582 to <4 x i64>
  %584 = and <4 x i64> %580, splat (i64 4294967295)
  %585 = mul nuw <4 x i64> %584, splat (i64 2654435761)
  %586 = mul <4 x i64> %583, splat (i64 -7046029290881679360)
  %587 = add <4 x i64> %586, %585
  store <4 x i64> %587, ptr %508, align 32, !alias.scope !717, !noalias !720
  %588 = shl nuw nsw i64 %514, 6
  %589 = getelementptr inbounds nuw i8, ptr %513, i64 %588
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %590 = icmp eq i64 %514, 4
  br i1 %590, label %749, label %591

591:                                              ; preds = %563, %591
  %592 = phi <4 x i64> [ %625, %591 ], [ %587, %563 ]
  %593 = phi <4 x i64> [ %611, %591 ], [ %576, %563 ]
  %594 = phi i64 [ %626, %591 ], [ 0, %563 ]
  %595 = shl i64 %594, 6
  %596 = getelementptr inbounds nuw i8, ptr %589, i64 %595
  %597 = getelementptr inbounds nuw i8, ptr %596, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %597, i32 0, i32 3, i32 1), !noalias !738
  %598 = shl i64 %594, 3
  %599 = getelementptr inbounds nuw i8, ptr %11, i64 %598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %600 = load <4 x i64>, ptr %596, align 1, !noalias !742
  %601 = load <4 x i64>, ptr %599, align 1, !noalias !742
  %602 = xor <4 x i64> %601, %600
  %603 = bitcast <4 x i64> %602 to <8 x i32>
  %604 = shufflevector <8 x i32> %603, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %605 = bitcast <8 x i32> %604 to <4 x i64>
  %606 = and <4 x i64> %602, splat (i64 4294967295)
  %607 = and <4 x i64> %605, splat (i64 4294967295)
  %608 = mul nuw <4 x i64> %607, %606
  %609 = shufflevector <4 x i64> %600, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %610 = add <4 x i64> %593, %609
  %611 = add <4 x i64> %610, %608
  %612 = getelementptr inbounds nuw i8, ptr %596, i64 32
  %613 = load <4 x i64>, ptr %612, align 1, !noalias !742
  %614 = getelementptr inbounds nuw i8, ptr %599, i64 32
  %615 = load <4 x i64>, ptr %614, align 1, !noalias !742
  %616 = xor <4 x i64> %615, %613
  %617 = bitcast <4 x i64> %616 to <8 x i32>
  %618 = shufflevector <8 x i32> %617, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %619 = bitcast <8 x i32> %618 to <4 x i64>
  %620 = and <4 x i64> %616, splat (i64 4294967295)
  %621 = and <4 x i64> %619, splat (i64 4294967295)
  %622 = mul nuw <4 x i64> %621, %620
  %623 = shufflevector <4 x i64> %613, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %624 = add <4 x i64> %592, %623
  %625 = add <4 x i64> %624, %622
  %626 = add nuw i64 %594, 1
  %627 = icmp eq i64 %626, %517
  br i1 %627, label %748, label %591, !llvm.loop !49

628:                                              ; preds = %511
  %629 = shl i64 %512, 3
  %630 = getelementptr inbounds nuw i8, ptr %11, i64 %629
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %631 = getelementptr inbounds nuw i8, ptr %513, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %631, i32 0, i32 3, i32 1), !noalias !746
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %632 = load <4 x i64>, ptr %513, align 1, !noalias !750
  %633 = load <4 x i64>, ptr %630, align 1, !noalias !750
  %634 = xor <4 x i64> %633, %632
  %635 = bitcast <4 x i64> %634 to <8 x i32>
  %636 = shufflevector <8 x i32> %635, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %637 = bitcast <8 x i32> %636 to <4 x i64>
  %638 = and <4 x i64> %634, splat (i64 4294967295)
  %639 = and <4 x i64> %637, splat (i64 4294967295)
  %640 = mul nuw <4 x i64> %639, %638
  %641 = shufflevector <4 x i64> %632, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %642 = load <4 x i64>, ptr %0, align 32, !alias.scope !751, !noalias !752
  %643 = add <4 x i64> %642, %641
  %644 = add <4 x i64> %643, %640
  %645 = getelementptr inbounds nuw i8, ptr %513, i64 32
  %646 = load <4 x i64>, ptr %645, align 1, !noalias !750
  %647 = getelementptr inbounds nuw i8, ptr %630, i64 32
  %648 = load <4 x i64>, ptr %647, align 1, !noalias !750
  %649 = xor <4 x i64> %648, %646
  %650 = bitcast <4 x i64> %649 to <8 x i32>
  %651 = shufflevector <8 x i32> %650, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %652 = bitcast <8 x i32> %651 to <4 x i64>
  %653 = and <4 x i64> %649, splat (i64 4294967295)
  %654 = and <4 x i64> %652, splat (i64 4294967295)
  %655 = mul nuw <4 x i64> %654, %653
  %656 = shufflevector <4 x i64> %646, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %657 = load <4 x i64>, ptr %510, align 32, !alias.scope !751, !noalias !752
  %658 = add <4 x i64> %657, %656
  %659 = add <4 x i64> %658, %655
  %660 = getelementptr inbounds nuw i8, ptr %513, i64 64
  %661 = getelementptr inbounds nuw i8, ptr %513, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %661, i32 0, i32 3, i32 1), !noalias !746
  %662 = getelementptr inbounds nuw i8, ptr %630, i64 8
  %663 = load <4 x i64>, ptr %660, align 1, !noalias !757
  %664 = load <4 x i64>, ptr %662, align 1, !noalias !757
  %665 = xor <4 x i64> %664, %663
  %666 = bitcast <4 x i64> %665 to <8 x i32>
  %667 = shufflevector <8 x i32> %666, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %668 = bitcast <8 x i32> %667 to <4 x i64>
  %669 = and <4 x i64> %665, splat (i64 4294967295)
  %670 = and <4 x i64> %668, splat (i64 4294967295)
  %671 = mul nuw <4 x i64> %670, %669
  %672 = shufflevector <4 x i64> %663, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %673 = add <4 x i64> %644, %672
  %674 = add <4 x i64> %673, %671
  %675 = getelementptr inbounds nuw i8, ptr %513, i64 96
  %676 = load <4 x i64>, ptr %675, align 1, !noalias !757
  %677 = getelementptr inbounds nuw i8, ptr %630, i64 40
  %678 = load <4 x i64>, ptr %677, align 1, !noalias !757
  %679 = xor <4 x i64> %678, %676
  %680 = bitcast <4 x i64> %679 to <8 x i32>
  %681 = shufflevector <8 x i32> %680, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %682 = bitcast <8 x i32> %681 to <4 x i64>
  %683 = and <4 x i64> %679, splat (i64 4294967295)
  %684 = and <4 x i64> %682, splat (i64 4294967295)
  %685 = mul nuw <4 x i64> %684, %683
  %686 = shufflevector <4 x i64> %676, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %687 = add <4 x i64> %659, %686
  %688 = add <4 x i64> %687, %685
  %689 = getelementptr inbounds nuw i8, ptr %513, i64 128
  %690 = getelementptr inbounds nuw i8, ptr %513, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %690, i32 0, i32 3, i32 1), !noalias !746
  %691 = getelementptr inbounds nuw i8, ptr %630, i64 16
  %692 = load <4 x i64>, ptr %689, align 1, !noalias !759
  %693 = load <4 x i64>, ptr %691, align 1, !noalias !759
  %694 = xor <4 x i64> %693, %692
  %695 = bitcast <4 x i64> %694 to <8 x i32>
  %696 = shufflevector <8 x i32> %695, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %697 = bitcast <8 x i32> %696 to <4 x i64>
  %698 = and <4 x i64> %694, splat (i64 4294967295)
  %699 = and <4 x i64> %697, splat (i64 4294967295)
  %700 = mul nuw <4 x i64> %699, %698
  %701 = shufflevector <4 x i64> %692, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %702 = add <4 x i64> %674, %701
  %703 = add <4 x i64> %702, %700
  %704 = getelementptr inbounds nuw i8, ptr %513, i64 160
  %705 = load <4 x i64>, ptr %704, align 1, !noalias !759
  %706 = getelementptr inbounds nuw i8, ptr %630, i64 48
  %707 = load <4 x i64>, ptr %706, align 1, !noalias !759
  %708 = xor <4 x i64> %707, %705
  %709 = bitcast <4 x i64> %708 to <8 x i32>
  %710 = shufflevector <8 x i32> %709, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %711 = bitcast <8 x i32> %710 to <4 x i64>
  %712 = and <4 x i64> %708, splat (i64 4294967295)
  %713 = and <4 x i64> %711, splat (i64 4294967295)
  %714 = mul nuw <4 x i64> %713, %712
  %715 = shufflevector <4 x i64> %705, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %716 = add <4 x i64> %688, %715
  %717 = add <4 x i64> %716, %714
  %718 = getelementptr inbounds nuw i8, ptr %513, i64 192
  %719 = getelementptr inbounds nuw i8, ptr %513, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull %719, i32 0, i32 3, i32 1), !noalias !746
  %720 = getelementptr inbounds nuw i8, ptr %630, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %721 = load <4 x i64>, ptr %718, align 1, !noalias !763
  %722 = load <4 x i64>, ptr %720, align 1, !noalias !763
  %723 = xor <4 x i64> %722, %721
  %724 = bitcast <4 x i64> %723 to <8 x i32>
  %725 = shufflevector <8 x i32> %724, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %726 = bitcast <8 x i32> %725 to <4 x i64>
  %727 = and <4 x i64> %723, splat (i64 4294967295)
  %728 = and <4 x i64> %726, splat (i64 4294967295)
  %729 = mul nuw <4 x i64> %728, %727
  %730 = shufflevector <4 x i64> %721, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %731 = add <4 x i64> %703, %730
  %732 = add <4 x i64> %731, %729
  store <4 x i64> %732, ptr %0, align 32, !alias.scope !764, !noalias !752
  %733 = getelementptr inbounds nuw i8, ptr %513, i64 224
  %734 = load <4 x i64>, ptr %733, align 1, !noalias !763
  %735 = getelementptr inbounds nuw i8, ptr %630, i64 56
  %736 = load <4 x i64>, ptr %735, align 1, !noalias !763
  %737 = xor <4 x i64> %736, %734
  %738 = bitcast <4 x i64> %737 to <8 x i32>
  %739 = shufflevector <8 x i32> %738, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %740 = bitcast <8 x i32> %739 to <4 x i64>
  %741 = and <4 x i64> %737, splat (i64 4294967295)
  %742 = and <4 x i64> %740, splat (i64 4294967295)
  %743 = mul nuw <4 x i64> %742, %741
  %744 = shufflevector <4 x i64> %734, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %745 = add <4 x i64> %717, %744
  %746 = add <4 x i64> %745, %743
  store <4 x i64> %746, ptr %510, align 32, !alias.scope !764, !noalias !752
  %747 = add i64 %512, 4
  br label %749

748:                                              ; preds = %591
  store <4 x i64> %611, ptr %0, align 32, !alias.scope !765, !noalias !766
  store <4 x i64> %625, ptr %508, align 32, !alias.scope !765, !noalias !766
  br label %749

749:                                              ; preds = %748, %563, %628
  %750 = phi i64 [ %747, %628 ], [ 0, %563 ], [ %517, %748 ]
  %751 = getelementptr inbounds nuw i8, ptr %513, i64 256
  %752 = icmp ult ptr %751, %499
  br i1 %752, label %511, label %753, !llvm.loop !362

753:                                              ; preds = %749
  store i64 %750, ptr %500, align 8, !alias.scope !706, !noalias !709
  %754 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %755 = getelementptr inbounds nuw i8, ptr %513, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %754, ptr noundef nonnull readonly align 1 dereferenceable(64) %755, i64 64, i1 false)
  br label %756

756:                                              ; preds = %753, %496, %491
  %757 = phi ptr [ %493, %491 ], [ %751, %753 ], [ %280, %496 ]
  %758 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %759 = ptrtoint ptr %757 to i64
  %760 = sub i64 %281, %759
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %758, ptr readonly align 1 %757, i64 %760, i1 false)
  %761 = trunc i64 %760 to i32
  br label %762

762:                                              ; preds = %756, %20
  %763 = phi i32 [ %761, %756 ], [ %25, %20 ]
  store i32 %763, ptr %15, align 64, !alias.scope !597, !noalias !600
  br label %764

764:                                              ; preds = %3, %762
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @XXH3_128bits_digest(ptr noundef readonly %0) local_unnamed_addr #16 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = select i1 %5, ptr %6, ptr %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %9 = load i64, ptr %8, align 16
  %10 = icmp ugt i64 %9, 240
  br i1 %10, label %11, label %387

11:                                               ; preds = %1
  %12 = load <4 x i64>, ptr %0, align 1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x i64>, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %16 = load i32, ptr %15, align 64
  %17 = icmp ugt i32 %16, 63
  br i1 %17, label %18, label %217

18:                                               ; preds = %11
  %19 = add i32 %16, -1
  %20 = lshr i32 %19, 6
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %28 = load i64, ptr %27, align 32
  %29 = sub i64 %25, %23
  %30 = icmp ugt i64 %29, %21
  br i1 %30, label %140, label %31

31:                                               ; preds = %18
  %32 = sub nuw nsw i64 %21, %29
  %33 = shl i64 %23, 3
  %34 = getelementptr inbounds nuw i8, ptr %7, i64 %33
  %35 = icmp eq i64 %25, %23
  br i1 %35, label %73, label %36

36:                                               ; preds = %31, %36
  %37 = phi <4 x i64> [ %70, %36 ], [ %14, %31 ]
  %38 = phi <4 x i64> [ %56, %36 ], [ %12, %31 ]
  %39 = phi i64 [ %71, %36 ], [ 0, %31 ]
  %40 = shl i64 %39, 6
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %42, i32 0, i32 3, i32 1), !noalias !771
  %43 = shl i64 %39, 3
  %44 = getelementptr inbounds nuw i8, ptr %34, i64 %43
  %45 = load <4 x i64>, ptr %41, align 1, !noalias !777
  %46 = load <4 x i64>, ptr %44, align 1, !noalias !777
  %47 = xor <4 x i64> %46, %45
  %48 = bitcast <4 x i64> %47 to <8 x i32>
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %50 = bitcast <8 x i32> %49 to <4 x i64>
  %51 = and <4 x i64> %47, splat (i64 4294967295)
  %52 = and <4 x i64> %50, splat (i64 4294967295)
  %53 = mul nuw <4 x i64> %52, %51
  %54 = shufflevector <4 x i64> %45, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %55 = add <4 x i64> %38, %54
  %56 = add <4 x i64> %55, %53
  %57 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %58 = load <4 x i64>, ptr %57, align 1, !noalias !777
  %59 = getelementptr inbounds nuw i8, ptr %44, i64 32
  %60 = load <4 x i64>, ptr %59, align 1, !noalias !777
  %61 = xor <4 x i64> %60, %58
  %62 = bitcast <4 x i64> %61 to <8 x i32>
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %64 = bitcast <8 x i32> %63 to <4 x i64>
  %65 = and <4 x i64> %61, splat (i64 4294967295)
  %66 = and <4 x i64> %64, splat (i64 4294967295)
  %67 = mul nuw <4 x i64> %66, %65
  %68 = shufflevector <4 x i64> %58, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %69 = add <4 x i64> %37, %68
  %70 = add <4 x i64> %69, %67
  %71 = add nuw i64 %39, 1
  %72 = icmp eq i64 %71, %29
  br i1 %72, label %73, label %36, !llvm.loop !49

73:                                               ; preds = %36, %31
  %74 = phi <4 x i64> [ %14, %31 ], [ %70, %36 ]
  %75 = phi <4 x i64> [ %12, %31 ], [ %56, %36 ]
  %76 = getelementptr inbounds nuw i8, ptr %7, i64 %28
  %77 = lshr <4 x i64> %75, splat (i64 47)
  %78 = load <4 x i64>, ptr %76, align 1, !noalias !780
  %79 = xor <4 x i64> %78, %77
  %80 = xor <4 x i64> %79, %75
  %81 = bitcast <4 x i64> %80 to <8 x i32>
  %82 = shufflevector <8 x i32> %81, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %83 = bitcast <8 x i32> %82 to <4 x i64>
  %84 = and <4 x i64> %80, splat (i64 4294967295)
  %85 = mul nuw <4 x i64> %84, splat (i64 2654435761)
  %86 = mul <4 x i64> %83, splat (i64 -7046029290881679360)
  %87 = add <4 x i64> %86, %85
  %88 = lshr <4 x i64> %74, splat (i64 47)
  %89 = getelementptr inbounds nuw i8, ptr %76, i64 32
  %90 = load <4 x i64>, ptr %89, align 1, !noalias !780
  %91 = xor <4 x i64> %90, %88
  %92 = xor <4 x i64> %91, %74
  %93 = bitcast <4 x i64> %92 to <8 x i32>
  %94 = shufflevector <8 x i32> %93, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %95 = bitcast <8 x i32> %94 to <4 x i64>
  %96 = and <4 x i64> %92, splat (i64 4294967295)
  %97 = mul nuw <4 x i64> %96, splat (i64 2654435761)
  %98 = mul <4 x i64> %95, splat (i64 -7046029290881679360)
  %99 = add <4 x i64> %98, %97
  %100 = shl nuw nsw i64 %29, 6
  %101 = getelementptr inbounds nuw i8, ptr %26, i64 %100
  %102 = icmp eq i64 %29, %21
  br i1 %102, label %183, label %103

103:                                              ; preds = %73, %103
  %104 = phi <4 x i64> [ %137, %103 ], [ %99, %73 ]
  %105 = phi <4 x i64> [ %123, %103 ], [ %87, %73 ]
  %106 = phi i64 [ %138, %103 ], [ 0, %73 ]
  %107 = shl i64 %106, 6
  %108 = getelementptr inbounds nuw i8, ptr %101, i64 %107
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %109, i32 0, i32 3, i32 1), !noalias !783
  %110 = shl i64 %106, 3
  %111 = getelementptr inbounds nuw i8, ptr %7, i64 %110
  %112 = load <4 x i64>, ptr %108, align 1, !noalias !786
  %113 = load <4 x i64>, ptr %111, align 1, !noalias !786
  %114 = xor <4 x i64> %113, %112
  %115 = bitcast <4 x i64> %114 to <8 x i32>
  %116 = shufflevector <8 x i32> %115, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %117 = bitcast <8 x i32> %116 to <4 x i64>
  %118 = and <4 x i64> %114, splat (i64 4294967295)
  %119 = and <4 x i64> %117, splat (i64 4294967295)
  %120 = mul nuw <4 x i64> %119, %118
  %121 = shufflevector <4 x i64> %112, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %122 = add <4 x i64> %105, %121
  %123 = add <4 x i64> %122, %120
  %124 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %125 = load <4 x i64>, ptr %124, align 1, !noalias !786
  %126 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %127 = load <4 x i64>, ptr %126, align 1, !noalias !786
  %128 = xor <4 x i64> %127, %125
  %129 = bitcast <4 x i64> %128 to <8 x i32>
  %130 = shufflevector <8 x i32> %129, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %131 = bitcast <8 x i32> %130 to <4 x i64>
  %132 = and <4 x i64> %128, splat (i64 4294967295)
  %133 = and <4 x i64> %131, splat (i64 4294967295)
  %134 = mul nuw <4 x i64> %133, %132
  %135 = shufflevector <4 x i64> %125, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %136 = add <4 x i64> %104, %135
  %137 = add <4 x i64> %136, %134
  %138 = add nuw i64 %106, 1
  %139 = icmp eq i64 %138, %32
  br i1 %139, label %183, label %103, !llvm.loop !49

140:                                              ; preds = %18
  %141 = shl i64 %23, 3
  %142 = getelementptr inbounds nuw i8, ptr %7, i64 %141
  %143 = icmp eq i32 %16, 64
  br i1 %143, label %183, label %144

144:                                              ; preds = %140
  %145 = tail call i64 @llvm.umax.i64(i64 %21, i64 1)
  br label %146

146:                                              ; preds = %144, %146
  %147 = phi <4 x i64> [ %14, %144 ], [ %180, %146 ]
  %148 = phi <4 x i64> [ %12, %144 ], [ %166, %146 ]
  %149 = phi i64 [ 0, %144 ], [ %181, %146 ]
  %150 = shl i64 %149, 6
  %151 = getelementptr inbounds nuw i8, ptr %26, i64 %150
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %152, i32 0, i32 3, i32 1), !noalias !789
  %153 = shl i64 %149, 3
  %154 = getelementptr inbounds nuw i8, ptr %142, i64 %153
  %155 = load <4 x i64>, ptr %151, align 1, !noalias !792
  %156 = load <4 x i64>, ptr %154, align 1, !noalias !792
  %157 = xor <4 x i64> %156, %155
  %158 = bitcast <4 x i64> %157 to <8 x i32>
  %159 = shufflevector <8 x i32> %158, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %160 = bitcast <8 x i32> %159 to <4 x i64>
  %161 = and <4 x i64> %157, splat (i64 4294967295)
  %162 = and <4 x i64> %160, splat (i64 4294967295)
  %163 = mul nuw <4 x i64> %162, %161
  %164 = shufflevector <4 x i64> %155, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %165 = add <4 x i64> %148, %164
  %166 = add <4 x i64> %165, %163
  %167 = getelementptr inbounds nuw i8, ptr %151, i64 32
  %168 = load <4 x i64>, ptr %167, align 1, !noalias !792
  %169 = getelementptr inbounds nuw i8, ptr %154, i64 32
  %170 = load <4 x i64>, ptr %169, align 1, !noalias !792
  %171 = xor <4 x i64> %170, %168
  %172 = bitcast <4 x i64> %171 to <8 x i32>
  %173 = shufflevector <8 x i32> %172, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %174 = bitcast <8 x i32> %173 to <4 x i64>
  %175 = and <4 x i64> %171, splat (i64 4294967295)
  %176 = and <4 x i64> %174, splat (i64 4294967295)
  %177 = mul nuw <4 x i64> %176, %175
  %178 = shufflevector <4 x i64> %168, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %179 = add <4 x i64> %147, %178
  %180 = add <4 x i64> %179, %177
  %181 = add nuw nsw i64 %149, 1
  %182 = icmp eq i64 %181, %145
  br i1 %182, label %183, label %146, !llvm.loop !49

183:                                              ; preds = %103, %146, %73, %140
  %184 = phi <4 x i64> [ %14, %140 ], [ %99, %73 ], [ %180, %146 ], [ %137, %103 ]
  %185 = phi <4 x i64> [ %12, %140 ], [ %87, %73 ], [ %166, %146 ], [ %123, %103 ]
  %186 = zext i32 %16 to i64
  %187 = getelementptr inbounds nuw i8, ptr %26, i64 %186
  %188 = getelementptr inbounds i8, ptr %187, i64 -64
  %189 = getelementptr inbounds nuw i8, ptr %7, i64 %28
  %190 = getelementptr inbounds i8, ptr %189, i64 -7
  %191 = load <4 x i64>, ptr %188, align 1, !noalias !795
  %192 = load <4 x i64>, ptr %190, align 1, !noalias !795
  %193 = xor <4 x i64> %192, %191
  %194 = bitcast <4 x i64> %193 to <8 x i32>
  %195 = shufflevector <8 x i32> %194, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %196 = bitcast <8 x i32> %195 to <4 x i64>
  %197 = and <4 x i64> %193, splat (i64 4294967295)
  %198 = and <4 x i64> %196, splat (i64 4294967295)
  %199 = mul nuw <4 x i64> %198, %197
  %200 = shufflevector <4 x i64> %191, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %201 = add <4 x i64> %185, %200
  %202 = add <4 x i64> %201, %199
  %203 = getelementptr inbounds i8, ptr %187, i64 -32
  %204 = load <4 x i64>, ptr %203, align 1, !noalias !795
  %205 = getelementptr inbounds nuw i8, ptr %189, i64 25
  %206 = load <4 x i64>, ptr %205, align 1, !noalias !795
  %207 = xor <4 x i64> %206, %204
  %208 = bitcast <4 x i64> %207 to <8 x i32>
  %209 = shufflevector <8 x i32> %208, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %210 = bitcast <8 x i32> %209 to <4 x i64>
  %211 = and <4 x i64> %207, splat (i64 4294967295)
  %212 = and <4 x i64> %210, splat (i64 4294967295)
  %213 = mul nuw <4 x i64> %212, %211
  %214 = shufflevector <4 x i64> %204, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %215 = add <4 x i64> %184, %214
  %216 = add <4 x i64> %215, %213
  br label %255

217:                                              ; preds = %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #27
  %218 = sub nuw nsw i32 64, %16
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %221 = sub nsw i64 0, %219
  %222 = getelementptr inbounds i8, ptr %15, i64 %221
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull readonly align 1 %222, i64 %219, i1 false)
  %223 = getelementptr inbounds nuw i8, ptr %2, i64 %219
  %224 = zext nneg i32 %16 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %223, ptr nonnull readonly align 1 %220, i64 %224, i1 false)
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %226 = load i64, ptr %225, align 32
  %227 = getelementptr inbounds nuw i8, ptr %7, i64 %226
  %228 = getelementptr inbounds i8, ptr %227, i64 -7
  %229 = load <4 x i64>, ptr %2, align 16, !noalias !798
  %230 = load <4 x i64>, ptr %228, align 1, !noalias !798
  %231 = xor <4 x i64> %230, %229
  %232 = bitcast <4 x i64> %231 to <8 x i32>
  %233 = shufflevector <8 x i32> %232, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %234 = bitcast <8 x i32> %233 to <4 x i64>
  %235 = and <4 x i64> %231, splat (i64 4294967295)
  %236 = and <4 x i64> %234, splat (i64 4294967295)
  %237 = mul nuw <4 x i64> %236, %235
  %238 = shufflevector <4 x i64> %229, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %239 = add <4 x i64> %12, %238
  %240 = add <4 x i64> %239, %237
  %241 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %242 = load <4 x i64>, ptr %241, align 16, !noalias !798
  %243 = getelementptr inbounds nuw i8, ptr %227, i64 25
  %244 = load <4 x i64>, ptr %243, align 1, !noalias !798
  %245 = xor <4 x i64> %244, %242
  %246 = bitcast <4 x i64> %245 to <8 x i32>
  %247 = shufflevector <8 x i32> %246, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %248 = bitcast <8 x i32> %247 to <4 x i64>
  %249 = and <4 x i64> %245, splat (i64 4294967295)
  %250 = and <4 x i64> %248, splat (i64 4294967295)
  %251 = mul nuw <4 x i64> %250, %249
  %252 = shufflevector <4 x i64> %242, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %253 = add <4 x i64> %14, %252
  %254 = add <4 x i64> %253, %251
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #27
  br label %255

255:                                              ; preds = %183, %217
  %256 = phi i64 [ %28, %183 ], [ %226, %217 ]
  %257 = phi <4 x i64> [ %216, %183 ], [ %254, %217 ]
  %258 = phi <4 x i64> [ %202, %183 ], [ %240, %217 ]
  %259 = getelementptr inbounds nuw i8, ptr %7, i64 11
  %260 = mul i64 %9, -7046029288634856825
  %261 = extractelement <4 x i64> %258, i64 0
  %262 = load i64, ptr %259, align 1, !alias.scope !801, !noalias !804
  %263 = xor i64 %262, %261
  %264 = extractelement <4 x i64> %258, i64 1
  %265 = getelementptr inbounds nuw i8, ptr %7, i64 19
  %266 = load i64, ptr %265, align 1, !alias.scope !801, !noalias !804
  %267 = xor i64 %266, %264
  %268 = zext i64 %263 to i128
  %269 = zext i64 %267 to i128
  %270 = mul nuw i128 %269, %268
  %271 = lshr i128 %270, 64
  %272 = xor i128 %271, %270
  %273 = trunc i128 %272 to i64
  %274 = add i64 %260, %273
  %275 = getelementptr inbounds nuw i8, ptr %7, i64 27
  %276 = extractelement <4 x i64> %258, i64 2
  %277 = load i64, ptr %275, align 1, !alias.scope !801, !noalias !808
  %278 = xor i64 %277, %276
  %279 = extractelement <4 x i64> %258, i64 3
  %280 = getelementptr inbounds nuw i8, ptr %7, i64 35
  %281 = load i64, ptr %280, align 1, !alias.scope !801, !noalias !808
  %282 = xor i64 %281, %279
  %283 = zext i64 %278 to i128
  %284 = zext i64 %282 to i128
  %285 = mul nuw i128 %284, %283
  %286 = lshr i128 %285, 64
  %287 = xor i128 %286, %285
  %288 = trunc i128 %287 to i64
  %289 = add i64 %274, %288
  %290 = getelementptr inbounds nuw i8, ptr %7, i64 43
  %291 = extractelement <4 x i64> %257, i64 0
  %292 = load i64, ptr %290, align 1, !alias.scope !801, !noalias !810
  %293 = xor i64 %292, %291
  %294 = extractelement <4 x i64> %257, i64 1
  %295 = getelementptr inbounds nuw i8, ptr %7, i64 51
  %296 = load i64, ptr %295, align 1, !alias.scope !801, !noalias !810
  %297 = xor i64 %296, %294
  %298 = zext i64 %293 to i128
  %299 = zext i64 %297 to i128
  %300 = mul nuw i128 %299, %298
  %301 = lshr i128 %300, 64
  %302 = xor i128 %301, %300
  %303 = trunc i128 %302 to i64
  %304 = add i64 %289, %303
  %305 = getelementptr inbounds nuw i8, ptr %7, i64 59
  %306 = extractelement <4 x i64> %257, i64 2
  %307 = load i64, ptr %305, align 1, !alias.scope !801, !noalias !812
  %308 = xor i64 %307, %306
  %309 = extractelement <4 x i64> %257, i64 3
  %310 = getelementptr inbounds nuw i8, ptr %7, i64 67
  %311 = load i64, ptr %310, align 1, !alias.scope !801, !noalias !812
  %312 = xor i64 %311, %309
  %313 = zext i64 %308 to i128
  %314 = zext i64 %312 to i128
  %315 = mul nuw i128 %314, %313
  %316 = lshr i128 %315, 64
  %317 = xor i128 %316, %315
  %318 = trunc i128 %317 to i64
  %319 = add i64 %304, %318
  %320 = lshr i64 %319, 37
  %321 = xor i64 %320, %319
  %322 = mul i64 %321, 1609587791953885689
  %323 = lshr i64 %322, 32
  %324 = xor i64 %323, %322
  %325 = getelementptr inbounds nuw i8, ptr %7, i64 %256
  %326 = getelementptr inbounds i8, ptr %325, i64 -11
  %327 = mul i64 %9, -4417276706812531889
  %328 = xor i64 %327, -1
  %329 = load i64, ptr %326, align 1, !alias.scope !814, !noalias !817
  %330 = xor i64 %329, %261
  %331 = getelementptr inbounds i8, ptr %325, i64 -3
  %332 = load i64, ptr %331, align 1, !alias.scope !814, !noalias !817
  %333 = xor i64 %332, %264
  %334 = zext i64 %330 to i128
  %335 = zext i64 %333 to i128
  %336 = mul nuw i128 %335, %334
  %337 = lshr i128 %336, 64
  %338 = xor i128 %337, %336
  %339 = trunc i128 %338 to i64
  %340 = add i64 %339, %328
  %341 = getelementptr inbounds nuw i8, ptr %325, i64 5
  %342 = load i64, ptr %341, align 1, !alias.scope !814, !noalias !821
  %343 = xor i64 %342, %276
  %344 = getelementptr inbounds nuw i8, ptr %325, i64 13
  %345 = load i64, ptr %344, align 1, !alias.scope !814, !noalias !821
  %346 = xor i64 %345, %279
  %347 = zext i64 %343 to i128
  %348 = zext i64 %346 to i128
  %349 = mul nuw i128 %348, %347
  %350 = lshr i128 %349, 64
  %351 = xor i128 %350, %349
  %352 = trunc i128 %351 to i64
  %353 = add i64 %340, %352
  %354 = getelementptr inbounds nuw i8, ptr %325, i64 21
  %355 = load i64, ptr %354, align 1, !alias.scope !814, !noalias !823
  %356 = xor i64 %355, %291
  %357 = getelementptr inbounds nuw i8, ptr %325, i64 29
  %358 = load i64, ptr %357, align 1, !alias.scope !814, !noalias !823
  %359 = xor i64 %358, %294
  %360 = zext i64 %356 to i128
  %361 = zext i64 %359 to i128
  %362 = mul nuw i128 %361, %360
  %363 = lshr i128 %362, 64
  %364 = xor i128 %363, %362
  %365 = trunc i128 %364 to i64
  %366 = add i64 %353, %365
  %367 = getelementptr inbounds nuw i8, ptr %325, i64 37
  %368 = load i64, ptr %367, align 1, !alias.scope !814, !noalias !825
  %369 = xor i64 %368, %306
  %370 = getelementptr inbounds nuw i8, ptr %325, i64 45
  %371 = load i64, ptr %370, align 1, !alias.scope !814, !noalias !825
  %372 = xor i64 %371, %309
  %373 = zext i64 %369 to i128
  %374 = zext i64 %372 to i128
  %375 = mul nuw i128 %374, %373
  %376 = lshr i128 %375, 64
  %377 = xor i128 %376, %375
  %378 = trunc i128 %377 to i64
  %379 = add i64 %366, %378
  %380 = lshr i64 %379, 37
  %381 = xor i64 %380, %379
  %382 = mul i64 %381, 1609587791953885689
  %383 = lshr i64 %382, 32
  %384 = xor i64 %383, %382
  %385 = insertvalue { i64, i64 } poison, i64 %324, 0
  %386 = insertvalue { i64, i64 } %385, i64 %384, 1
  br label %399

387:                                              ; preds = %1
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %389 = load i64, ptr %388, align 8
  %390 = icmp eq i64 %389, 0
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %390, label %394, label %392

392:                                              ; preds = %387
  %393 = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef nonnull %391, i64 noundef %9, i64 noundef %389)
  br label %399

394:                                              ; preds = %387
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %396 = load i64, ptr %395, align 32
  %397 = add i64 %396, 64
  %398 = tail call { i64, i64 } @XXH3_128bits_withSecret(ptr noundef nonnull %391, i64 noundef %9, ptr noundef nonnull %7, i64 noundef %397)
  br label %399

399:                                              ; preds = %394, %392, %255
  %400 = phi { i64, i64 } [ %386, %255 ], [ %393, %392 ], [ %398, %394 ]
  ret { i64, i64 } %400
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @XXH128_isEqual(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #18 {
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
define dso_local range(i32 -1, 2) i32 @XXH128_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH128_hashFromCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
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
  %7 = load i64, ptr %0, align 1, !noalias !827
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1, !noalias !827
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
  %26 = load i64, ptr %24, align 1, !noalias !827
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 1, !noalias !827
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
  %45 = load i64, ptr %43, align 1, !noalias !827
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %47 = load i64, ptr %46, align 1, !noalias !827
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
  %64 = load i64, ptr %62, align 1, !noalias !827
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %66 = load i64, ptr %65, align 1, !noalias !827
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
  %83 = load i64, ptr %81, align 1, !noalias !827
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %85 = load i64, ptr %84, align 1, !noalias !827
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
  %102 = load i64, ptr %100, align 1, !noalias !827
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %104 = load i64, ptr %103, align 1, !noalias !827
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
  %121 = load i64, ptr %119, align 1, !noalias !827
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %123 = load i64, ptr %122, align 1, !noalias !827
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
  %140 = load i64, ptr %138, align 1, !noalias !827
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %142 = load i64, ptr %141, align 1, !noalias !827
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
  %167 = load i64, ptr %165, align 1, !noalias !830
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %169 = load i64, ptr %168, align 1, !noalias !830
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
  br i1 %184, label %310, label %185, !llvm.loop !833

185:                                              ; preds = %164
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %187 = getelementptr i8, ptr %2, i64 19
  %188 = load i64, ptr %186, align 1, !noalias !830
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %190 = load i64, ptr %189, align 1, !noalias !830
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
  br i1 %205, label %310, label %206, !llvm.loop !833

206:                                              ; preds = %185
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %208 = getelementptr i8, ptr %2, i64 35
  %209 = load i64, ptr %207, align 1, !noalias !830
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %211 = load i64, ptr %210, align 1, !noalias !830
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
  br i1 %226, label %310, label %227, !llvm.loop !833

227:                                              ; preds = %206
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %229 = getelementptr i8, ptr %2, i64 51
  %230 = load i64, ptr %228, align 1, !noalias !830
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %232 = load i64, ptr %231, align 1, !noalias !830
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
  br i1 %247, label %310, label %248, !llvm.loop !833

248:                                              ; preds = %227
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %250 = getelementptr i8, ptr %2, i64 67
  %251 = load i64, ptr %249, align 1, !noalias !830
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %253 = load i64, ptr %252, align 1, !noalias !830
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
  br i1 %268, label %310, label %269, !llvm.loop !833

269:                                              ; preds = %248
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %271 = getelementptr i8, ptr %2, i64 83
  %272 = load i64, ptr %270, align 1, !noalias !830
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %274 = load i64, ptr %273, align 1, !noalias !830
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
  br i1 %289, label %310, label %290, !llvm.loop !833

290:                                              ; preds = %269
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %292 = getelementptr i8, ptr %2, i64 99
  %293 = load i64, ptr %291, align 1, !noalias !830
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %295 = load i64, ptr %294, align 1, !noalias !830
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
  %315 = load i64, ptr %313, align 1, !noalias !834
  %316 = getelementptr inbounds i8, ptr %312, i64 -8
  %317 = load i64, ptr %316, align 1, !noalias !834
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
  %8 = load i64, ptr %0, align 1, !noalias !837
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 1, !noalias !837
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
  %49 = load i64, ptr %46, align 1, !noalias !837
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %51 = load i64, ptr %50, align 1, !noalias !837
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
  %91 = load i64, ptr %88, align 1, !noalias !837
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %93 = load i64, ptr %92, align 1, !noalias !837
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
  %133 = load i64, ptr %130, align 1, !noalias !837
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %135 = load i64, ptr %134, align 1, !noalias !837
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
  %188 = load i64, ptr %185, align 1, !noalias !840
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %190 = load i64, ptr %189, align 1, !noalias !840
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
  br i1 %227, label %315, label %228, !llvm.loop !843

228:                                              ; preds = %184
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %231 = getelementptr i8, ptr %2, i64 35
  %232 = load i64, ptr %229, align 1, !noalias !840
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %234 = load i64, ptr %233, align 1, !noalias !840
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
  br i1 %271, label %315, label %272, !llvm.loop !843

272:                                              ; preds = %228
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %275 = getelementptr i8, ptr %2, i64 67
  %276 = load i64, ptr %273, align 1, !noalias !840
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %278 = load i64, ptr %277, align 1, !noalias !840
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
  %322 = load i64, ptr %319, align 1, !noalias !844
  %323 = getelementptr inbounds i8, ptr %318, i64 -8
  %324 = load i64, ptr %323, align 1, !noalias !844
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
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { noinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!5 = !{i64 2148060293}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!20}
!20 = distinct !{!20, !21, !"XXH3_mix16B: argument 1"}
!21 = distinct !{!21, !"XXH3_mix16B"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"XXH3_mix16B: argument 1"}
!24 = distinct !{!24, !"XXH3_mix16B"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"XXH3_mix16B: argument 1"}
!27 = distinct !{!27, !"XXH3_mix16B"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"XXH3_mix16B: argument 1"}
!30 = distinct !{!30, !"XXH3_mix16B"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"XXH3_mix16B: argument 1"}
!33 = distinct !{!33, !"XXH3_mix16B"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"XXH3_mix16B: argument 1"}
!36 = distinct !{!36, !"XXH3_mix16B"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"XXH3_mix16B: argument 1"}
!39 = distinct !{!39, !"XXH3_mix16B"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"XXH3_mix16B: argument 1"}
!42 = distinct !{!42, !"XXH3_mix16B"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"XXH3_accumulate: argument 0"}
!45 = distinct !{!45, !"XXH3_accumulate"}
!46 = !{!47, !44}
!47 = distinct !{!47, !48, !"XXH3_accumulate_512_avx2: argument 0"}
!48 = distinct !{!48, !"XXH3_accumulate_512_avx2"}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = !{!52}
!52 = distinct !{!52, !53, !"XXH3_accumulate: argument 0"}
!53 = distinct !{!53, !"XXH3_accumulate"}
!54 = !{!55, !52}
!55 = distinct !{!55, !56, !"XXH3_accumulate_512_avx2: argument 0"}
!56 = distinct !{!56, !"XXH3_accumulate_512_avx2"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"XXH3_accumulate_512_avx2: argument 0"}
!59 = distinct !{!59, !"XXH3_accumulate_512_avx2"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"XXH3_mix16B: argument 1"}
!62 = distinct !{!62, !"XXH3_mix16B"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"XXH3_mix16B: argument 1"}
!65 = distinct !{!65, !"XXH3_mix16B"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"XXH3_mix16B: argument 1"}
!68 = distinct !{!68, !"XXH3_mix16B"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"XXH3_mix16B: argument 1"}
!71 = distinct !{!71, !"XXH3_mix16B"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"XXH3_mix16B: argument 1"}
!74 = distinct !{!74, !"XXH3_mix16B"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"XXH3_mix16B: argument 1"}
!77 = distinct !{!77, !"XXH3_mix16B"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"XXH3_mix16B: argument 1"}
!80 = distinct !{!80, !"XXH3_mix16B"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"XXH3_mix16B: argument 1"}
!83 = distinct !{!83, !"XXH3_mix16B"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"XXH3_scrambleAcc_avx2: argument 0"}
!86 = distinct !{!86, !"XXH3_scrambleAcc_avx2"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"XXH3_accumulate: argument 0"}
!89 = distinct !{!89, !"XXH3_accumulate"}
!90 = !{!91, !88}
!91 = distinct !{!91, !92, !"XXH3_accumulate_512_avx2: argument 0"}
!92 = distinct !{!92, !"XXH3_accumulate_512_avx2"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"XXH3_accumulate: argument 0"}
!95 = distinct !{!95, !"XXH3_accumulate"}
!96 = !{!97, !94}
!97 = distinct !{!97, !98, !"XXH3_accumulate_512_avx2: argument 0"}
!98 = distinct !{!98, !"XXH3_accumulate_512_avx2"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"XXH3_accumulate_512_avx2: argument 0"}
!101 = distinct !{!101, !"XXH3_accumulate_512_avx2"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"XXH3_mergeAccs: argument 1"}
!104 = distinct !{!104, !"XXH3_mergeAccs"}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"XXH3_mix2Accs: argument 0"}
!107 = distinct !{!107, !"XXH3_mix2Accs"}
!108 = distinct !{!108, !104, !"XXH3_mergeAccs: argument 0"}
!109 = !{!110, !108}
!110 = distinct !{!110, !107, !"XXH3_mix2Accs: argument 0:It1"}
!111 = !{!112, !108}
!112 = distinct !{!112, !107, !"XXH3_mix2Accs: argument 0:It2"}
!113 = !{!114, !108}
!114 = distinct !{!114, !107, !"XXH3_mix2Accs: argument 0:It3"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"XXH3_mix16B: argument 1"}
!117 = distinct !{!117, !"XXH3_mix16B"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"XXH3_mix16B: argument 1"}
!120 = distinct !{!120, !"XXH3_mix16B"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"XXH3_mix16B: argument 1"}
!123 = distinct !{!123, !"XXH3_mix16B"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"XXH3_mix16B: argument 1"}
!126 = distinct !{!126, !"XXH3_mix16B"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"XXH3_mix16B: argument 1"}
!129 = distinct !{!129, !"XXH3_mix16B"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"XXH3_mix16B: argument 1"}
!132 = distinct !{!132, !"XXH3_mix16B"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"XXH3_mix16B: argument 1"}
!135 = distinct !{!135, !"XXH3_mix16B"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"XXH3_mix16B: argument 1"}
!138 = distinct !{!138, !"XXH3_mix16B"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"XXH3_accumulate: argument 0"}
!141 = distinct !{!141, !"XXH3_accumulate"}
!142 = !{!143, !140}
!143 = distinct !{!143, !144, !"XXH3_accumulate_512_avx2: argument 0"}
!144 = distinct !{!144, !"XXH3_accumulate_512_avx2"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"XXH3_accumulate: argument 0"}
!147 = distinct !{!147, !"XXH3_accumulate"}
!148 = !{!149, !146}
!149 = distinct !{!149, !150, !"XXH3_accumulate_512_avx2: argument 0"}
!150 = distinct !{!150, !"XXH3_accumulate_512_avx2"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"XXH3_accumulate_512_avx2: argument 0"}
!153 = distinct !{!153, !"XXH3_accumulate_512_avx2"}
!154 = !{i64 2152035743}
!155 = !{!156}
!156 = distinct !{!156, !157, !"XXH3_scrambleAcc_avx2: argument 0"}
!157 = distinct !{!157, !"XXH3_scrambleAcc_avx2"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"XXH3_accumulate: argument 0"}
!160 = distinct !{!160, !"XXH3_accumulate"}
!161 = !{!162, !159}
!162 = distinct !{!162, !163, !"XXH3_accumulate_512_avx2: argument 0"}
!163 = distinct !{!163, !"XXH3_accumulate_512_avx2"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"XXH3_accumulate: argument 0"}
!166 = distinct !{!166, !"XXH3_accumulate"}
!167 = !{!168, !165}
!168 = distinct !{!168, !169, !"XXH3_accumulate_512_avx2: argument 0"}
!169 = distinct !{!169, !"XXH3_accumulate_512_avx2"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"XXH3_accumulate_512_avx2: argument 0"}
!172 = distinct !{!172, !"XXH3_accumulate_512_avx2"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"XXH3_mergeAccs: argument 1"}
!175 = distinct !{!175, !"XXH3_mergeAccs"}
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"XXH3_mix2Accs: argument 0"}
!178 = distinct !{!178, !"XXH3_mix2Accs"}
!179 = distinct !{!179, !175, !"XXH3_mergeAccs: argument 0"}
!180 = !{!181, !179}
!181 = distinct !{!181, !178, !"XXH3_mix2Accs: argument 0:It1"}
!182 = !{!183, !179}
!183 = distinct !{!183, !178, !"XXH3_mix2Accs: argument 0:It2"}
!184 = !{!185, !179}
!185 = distinct !{!185, !178, !"XXH3_mix2Accs: argument 0:It3"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"XXH3_update: argument 0"}
!188 = distinct !{!188, !"XXH3_update"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"XXH3_update: argument 1"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"XXH3_consumeStripes: argument 0"}
!193 = distinct !{!193, !"XXH3_consumeStripes"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"XXH3_consumeStripes: argument 1"}
!196 = !{!192, !197, !198}
!197 = distinct !{!197, !193, !"XXH3_consumeStripes: argument 2"}
!198 = distinct !{!198, !193, !"XXH3_consumeStripes: argument 3"}
!199 = !{!200, !192}
!200 = distinct !{!200, !201, !"XXH3_scrambleAcc_avx2: argument 0"}
!201 = distinct !{!201, !"XXH3_scrambleAcc_avx2"}
!202 = !{!203, !195, !197, !198}
!203 = distinct !{!203, !201, !"XXH3_scrambleAcc_avx2: argument 1"}
!204 = !{!195, !197, !198}
!205 = !{!206, !192, !195}
!206 = distinct !{!206, !207, !"XXH3_accumulate: argument 0"}
!207 = distinct !{!207, !"XXH3_accumulate"}
!208 = !{!209, !206, !192, !195}
!209 = distinct !{!209, !210, !"XXH3_accumulate_512_avx2: argument 0"}
!210 = distinct !{!210, !"XXH3_accumulate_512_avx2"}
!211 = !{!200}
!212 = !{!200, !192, !195}
!213 = !{!214}
!214 = distinct !{!214, !215, !"XXH3_accumulate: argument 0"}
!215 = distinct !{!215, !"XXH3_accumulate"}
!216 = !{!214, !192, !195}
!217 = !{!218}
!218 = distinct !{!218, !219, !"XXH3_accumulate_512_avx2: argument 0"}
!219 = distinct !{!219, !"XXH3_accumulate_512_avx2"}
!220 = !{!218, !214, !192, !195}
!221 = !{!222}
!222 = distinct !{!222, !223, !"XXH3_accumulate: argument 0"}
!223 = distinct !{!223, !"XXH3_accumulate"}
!224 = !{!222, !192, !195}
!225 = !{!226}
!226 = distinct !{!226, !227, !"XXH3_accumulate_512_avx2: argument 0"}
!227 = distinct !{!227, !"XXH3_accumulate_512_avx2"}
!228 = !{!226, !222, !192, !195}
!229 = !{!226, !222, !192}
!230 = !{!231, !232, !233, !234, !195, !197, !198}
!231 = distinct !{!231, !227, !"XXH3_accumulate_512_avx2: argument 1"}
!232 = distinct !{!232, !227, !"XXH3_accumulate_512_avx2: argument 2"}
!233 = distinct !{!233, !223, !"XXH3_accumulate: argument 1"}
!234 = distinct !{!234, !223, !"XXH3_accumulate: argument 2"}
!235 = !{!236, !222, !192, !195}
!236 = distinct !{!236, !227, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!237 = !{!238, !222, !192, !195}
!238 = distinct !{!238, !227, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!239 = !{!240}
!240 = distinct !{!240, !227, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!241 = !{!240, !222, !192, !195}
!242 = !{!240, !222, !192}
!243 = !{!218, !214, !192}
!244 = !{!245, !246, !247, !248, !195, !197, !198}
!245 = distinct !{!245, !219, !"XXH3_accumulate_512_avx2: argument 1"}
!246 = distinct !{!246, !219, !"XXH3_accumulate_512_avx2: argument 2"}
!247 = distinct !{!247, !215, !"XXH3_accumulate: argument 1"}
!248 = distinct !{!248, !215, !"XXH3_accumulate: argument 2"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"XXH3_accumulate: argument 0"}
!251 = distinct !{!251, !"XXH3_accumulate"}
!252 = !{!253}
!253 = distinct !{!253, !254, !"XXH3_scrambleAcc_avx2: argument 0"}
!254 = distinct !{!254, !"XXH3_scrambleAcc_avx2"}
!255 = !{!256}
!256 = distinct !{!256, !254, !"XXH3_scrambleAcc_avx2: argument 1"}
!257 = !{}
!258 = !{!259}
!259 = distinct !{!259, !260, !"XXH3_accumulate_512_avx2: argument 0"}
!260 = distinct !{!260, !"XXH3_accumulate_512_avx2"}
!261 = !{!259, !250}
!262 = !{!263, !264, !265, !266}
!263 = distinct !{!263, !260, !"XXH3_accumulate_512_avx2: argument 1"}
!264 = distinct !{!264, !260, !"XXH3_accumulate_512_avx2: argument 2"}
!265 = distinct !{!265, !251, !"XXH3_accumulate: argument 1"}
!266 = distinct !{!266, !251, !"XXH3_accumulate: argument 2"}
!267 = !{!268}
!268 = distinct !{!268, !269, !"XXH3_accumulate: argument 0"}
!269 = distinct !{!269, !"XXH3_accumulate"}
!270 = !{!271}
!271 = distinct !{!271, !272, !"XXH3_accumulate_512_avx2: argument 0"}
!272 = distinct !{!272, !"XXH3_accumulate_512_avx2"}
!273 = !{!271, !268}
!274 = !{!275, !276, !277, !278}
!275 = distinct !{!275, !272, !"XXH3_accumulate_512_avx2: argument 1"}
!276 = distinct !{!276, !272, !"XXH3_accumulate_512_avx2: argument 2"}
!277 = distinct !{!277, !269, !"XXH3_accumulate: argument 1"}
!278 = distinct !{!278, !269, !"XXH3_accumulate: argument 2"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"XXH3_scrambleAcc_avx2: argument 0"}
!281 = distinct !{!281, !"XXH3_scrambleAcc_avx2"}
!282 = !{!283}
!283 = distinct !{!283, !281, !"XXH3_scrambleAcc_avx2: argument 1"}
!284 = distinct !{!284, !7}
!285 = !{!286}
!286 = distinct !{!286, !287, !"XXH3_accumulate: argument 0"}
!287 = distinct !{!287, !"XXH3_accumulate"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"XXH3_accumulate_512_avx2: argument 0"}
!290 = distinct !{!290, !"XXH3_accumulate_512_avx2"}
!291 = !{!289, !286}
!292 = !{!293, !294, !295, !296}
!293 = distinct !{!293, !290, !"XXH3_accumulate_512_avx2: argument 1"}
!294 = distinct !{!294, !290, !"XXH3_accumulate_512_avx2: argument 2"}
!295 = distinct !{!295, !287, !"XXH3_accumulate: argument 1"}
!296 = distinct !{!296, !287, !"XXH3_accumulate: argument 2"}
!297 = !{!298}
!298 = distinct !{!298, !299, !"XXH3_consumeStripes: argument 1"}
!299 = distinct !{!299, !"XXH3_consumeStripes"}
!300 = !{!301, !302, !303}
!301 = distinct !{!301, !299, !"XXH3_consumeStripes: argument 0"}
!302 = distinct !{!302, !299, !"XXH3_consumeStripes: argument 2"}
!303 = distinct !{!303, !299, !"XXH3_consumeStripes: argument 3"}
!304 = !{!301}
!305 = !{!306}
!306 = distinct !{!306, !307, !"XXH3_accumulate: argument 0"}
!307 = distinct !{!307, !"XXH3_accumulate"}
!308 = !{!309, !301}
!309 = distinct !{!309, !310, !"XXH3_scrambleAcc_avx2: argument 0"}
!310 = distinct !{!310, !"XXH3_scrambleAcc_avx2"}
!311 = !{!312, !298, !302, !303}
!312 = distinct !{!312, !310, !"XXH3_scrambleAcc_avx2: argument 1"}
!313 = !{!314, !306, !301}
!314 = distinct !{!314, !315, !"XXH3_accumulate_512_avx2: argument 0"}
!315 = distinct !{!315, !"XXH3_accumulate_512_avx2"}
!316 = !{!317, !318, !319, !320, !298, !302, !303}
!317 = distinct !{!317, !315, !"XXH3_accumulate_512_avx2: argument 1"}
!318 = distinct !{!318, !315, !"XXH3_accumulate_512_avx2: argument 2"}
!319 = distinct !{!319, !307, !"XXH3_accumulate: argument 1"}
!320 = distinct !{!320, !307, !"XXH3_accumulate: argument 2"}
!321 = !{!306, !301, !298}
!322 = !{!314}
!323 = !{!314, !306, !301, !298}
!324 = !{!309}
!325 = !{!309, !301, !298}
!326 = !{!327}
!327 = distinct !{!327, !328, !"XXH3_accumulate: argument 0"}
!328 = distinct !{!328, !"XXH3_accumulate"}
!329 = !{!327, !301, !298}
!330 = !{!331}
!331 = distinct !{!331, !332, !"XXH3_accumulate_512_avx2: argument 0"}
!332 = distinct !{!332, !"XXH3_accumulate_512_avx2"}
!333 = !{!331, !327, !301, !298}
!334 = !{!335}
!335 = distinct !{!335, !336, !"XXH3_accumulate: argument 0"}
!336 = distinct !{!336, !"XXH3_accumulate"}
!337 = !{!335, !301, !298}
!338 = !{!339}
!339 = distinct !{!339, !340, !"XXH3_accumulate_512_avx2: argument 0"}
!340 = distinct !{!340, !"XXH3_accumulate_512_avx2"}
!341 = !{!339, !335, !301, !298}
!342 = !{!339, !335, !301}
!343 = !{!344, !345, !346, !347, !298, !302, !303}
!344 = distinct !{!344, !340, !"XXH3_accumulate_512_avx2: argument 1"}
!345 = distinct !{!345, !340, !"XXH3_accumulate_512_avx2: argument 2"}
!346 = distinct !{!346, !336, !"XXH3_accumulate: argument 1"}
!347 = distinct !{!347, !336, !"XXH3_accumulate: argument 2"}
!348 = !{!349, !335, !301, !298}
!349 = distinct !{!349, !340, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!350 = !{!351, !335, !301, !298}
!351 = distinct !{!351, !340, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!352 = !{!353}
!353 = distinct !{!353, !340, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!354 = !{!353, !335, !301, !298}
!355 = !{!353, !335, !301}
!356 = !{!331, !327, !301}
!357 = !{!358, !359, !360, !361, !298, !302, !303}
!358 = distinct !{!358, !332, !"XXH3_accumulate_512_avx2: argument 1"}
!359 = distinct !{!359, !332, !"XXH3_accumulate_512_avx2: argument 2"}
!360 = distinct !{!360, !328, !"XXH3_accumulate: argument 1"}
!361 = distinct !{!361, !328, !"XXH3_accumulate: argument 2"}
!362 = distinct !{!362, !7}
!363 = !{!364, !366, !368}
!364 = distinct !{!364, !365, !"XXH3_accumulate: argument 0"}
!365 = distinct !{!365, !"XXH3_accumulate"}
!366 = distinct !{!366, !367, !"XXH3_consumeStripes: argument 0"}
!367 = distinct !{!367, !"XXH3_consumeStripes"}
!368 = distinct !{!368, !367, !"XXH3_consumeStripes: argument 1"}
!369 = !{!370, !364, !366, !368}
!370 = distinct !{!370, !371, !"XXH3_accumulate_512_avx2: argument 0"}
!371 = distinct !{!371, !"XXH3_accumulate_512_avx2"}
!372 = !{!373, !366, !368}
!373 = distinct !{!373, !374, !"XXH3_scrambleAcc_avx2: argument 0"}
!374 = distinct !{!374, !"XXH3_scrambleAcc_avx2"}
!375 = !{!376, !366, !368}
!376 = distinct !{!376, !377, !"XXH3_accumulate: argument 0"}
!377 = distinct !{!377, !"XXH3_accumulate"}
!378 = !{!379, !376, !366, !368}
!379 = distinct !{!379, !380, !"XXH3_accumulate_512_avx2: argument 0"}
!380 = distinct !{!380, !"XXH3_accumulate_512_avx2"}
!381 = !{!382, !366, !368}
!382 = distinct !{!382, !383, !"XXH3_accumulate: argument 0"}
!383 = distinct !{!383, !"XXH3_accumulate"}
!384 = !{!385, !382, !366, !368}
!385 = distinct !{!385, !386, !"XXH3_accumulate_512_avx2: argument 0"}
!386 = distinct !{!386, !"XXH3_accumulate_512_avx2"}
!387 = !{!388}
!388 = distinct !{!388, !389, !"XXH3_accumulate_512_avx2: argument 0"}
!389 = distinct !{!389, !"XXH3_accumulate_512_avx2"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"XXH3_accumulate_512_avx2: argument 0"}
!392 = distinct !{!392, !"XXH3_accumulate_512_avx2"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"XXH3_mergeAccs: argument 1"}
!395 = distinct !{!395, !"XXH3_mergeAccs"}
!396 = !{!397, !399}
!397 = distinct !{!397, !398, !"XXH3_mix2Accs: argument 0"}
!398 = distinct !{!398, !"XXH3_mix2Accs"}
!399 = distinct !{!399, !395, !"XXH3_mergeAccs: argument 0"}
!400 = !{!401, !399}
!401 = distinct !{!401, !398, !"XXH3_mix2Accs: argument 0:It1"}
!402 = !{!403, !399}
!403 = distinct !{!403, !398, !"XXH3_mix2Accs: argument 0:It2"}
!404 = !{!405, !399}
!405 = distinct !{!405, !398, !"XXH3_mix2Accs: argument 0:It3"}
!406 = distinct !{!406, !7}
!407 = distinct !{!407, !7}
!408 = !{!409}
!409 = distinct !{!409, !410, !"XXH3_mix16B: argument 1"}
!410 = distinct !{!410, !"XXH3_mix16B"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"XXH3_mix16B: argument 1"}
!413 = distinct !{!413, !"XXH3_mix16B"}
!414 = !{!415}
!415 = distinct !{!415, !416, !"XXH3_mix16B: argument 1"}
!416 = distinct !{!416, !"XXH3_mix16B"}
!417 = !{!418}
!418 = distinct !{!418, !419, !"XXH3_mix16B: argument 1"}
!419 = distinct !{!419, !"XXH3_mix16B"}
!420 = !{!421}
!421 = distinct !{!421, !422, !"XXH3_hashLong_128b_internal: argument 0"}
!422 = distinct !{!422, !"XXH3_hashLong_128b_internal"}
!423 = !{!424}
!424 = distinct !{!424, !422, !"XXH3_hashLong_128b_internal: argument 1"}
!425 = !{!426, !424}
!426 = distinct !{!426, !427, !"XXH3_accumulate: argument 0"}
!427 = distinct !{!427, !"XXH3_accumulate"}
!428 = !{!429, !426, !424}
!429 = distinct !{!429, !430, !"XXH3_accumulate_512_avx2: argument 0"}
!430 = distinct !{!430, !"XXH3_accumulate_512_avx2"}
!431 = !{!429, !426, !421}
!432 = !{!433, !424}
!433 = distinct !{!433, !434, !"XXH3_accumulate: argument 0"}
!434 = distinct !{!434, !"XXH3_accumulate"}
!435 = !{!436, !433, !424}
!436 = distinct !{!436, !437, !"XXH3_accumulate_512_avx2: argument 0"}
!437 = distinct !{!437, !"XXH3_accumulate_512_avx2"}
!438 = !{!436, !433, !421}
!439 = !{!440, !424}
!440 = distinct !{!440, !441, !"XXH3_accumulate_512_avx2: argument 0"}
!441 = distinct !{!441, !"XXH3_accumulate_512_avx2"}
!442 = !{!443}
!443 = distinct !{!443, !444, !"XXH3_mix16B: argument 1"}
!444 = distinct !{!444, !"XXH3_mix16B"}
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
!455 = distinct !{!455, !456, !"XXH3_hashLong_128b_internal: argument 0"}
!456 = distinct !{!456, !"XXH3_hashLong_128b_internal"}
!457 = !{!458}
!458 = distinct !{!458, !456, !"XXH3_hashLong_128b_internal: argument 1"}
!459 = !{!460, !455}
!460 = distinct !{!460, !461, !"XXH3_scrambleAcc_avx2: argument 0"}
!461 = distinct !{!461, !"XXH3_scrambleAcc_avx2"}
!462 = !{!463, !458}
!463 = distinct !{!463, !464, !"XXH3_accumulate: argument 0"}
!464 = distinct !{!464, !"XXH3_accumulate"}
!465 = !{!466, !463, !458}
!466 = distinct !{!466, !467, !"XXH3_accumulate_512_avx2: argument 0"}
!467 = distinct !{!467, !"XXH3_accumulate_512_avx2"}
!468 = !{!466, !463, !455}
!469 = !{!470, !458}
!470 = distinct !{!470, !471, !"XXH3_accumulate: argument 0"}
!471 = distinct !{!471, !"XXH3_accumulate"}
!472 = !{!473, !470, !458}
!473 = distinct !{!473, !474, !"XXH3_accumulate_512_avx2: argument 0"}
!474 = distinct !{!474, !"XXH3_accumulate_512_avx2"}
!475 = !{!473, !470, !455}
!476 = !{!477, !458}
!477 = distinct !{!477, !478, !"XXH3_accumulate_512_avx2: argument 0"}
!478 = distinct !{!478, !"XXH3_accumulate_512_avx2"}
!479 = !{!477, !455}
!480 = !{!481}
!481 = distinct !{!481, !482, !"XXH3_mergeAccs: argument 1"}
!482 = distinct !{!482, !"XXH3_mergeAccs"}
!483 = !{!484, !486, !455}
!484 = distinct !{!484, !485, !"XXH3_mix2Accs: argument 0"}
!485 = distinct !{!485, !"XXH3_mix2Accs"}
!486 = distinct !{!486, !482, !"XXH3_mergeAccs: argument 0"}
!487 = !{!488, !486, !455}
!488 = distinct !{!488, !485, !"XXH3_mix2Accs: argument 0:It1"}
!489 = !{!490, !486, !455}
!490 = distinct !{!490, !485, !"XXH3_mix2Accs: argument 0:It2"}
!491 = !{!492, !486, !455}
!492 = distinct !{!492, !485, !"XXH3_mix2Accs: argument 0:It3"}
!493 = !{!494}
!494 = distinct !{!494, !495, !"XXH3_mergeAccs: argument 1"}
!495 = distinct !{!495, !"XXH3_mergeAccs"}
!496 = !{!497, !499, !455}
!497 = distinct !{!497, !498, !"XXH3_mix2Accs: argument 0"}
!498 = distinct !{!498, !"XXH3_mix2Accs"}
!499 = distinct !{!499, !495, !"XXH3_mergeAccs: argument 0"}
!500 = !{!501, !499, !455}
!501 = distinct !{!501, !498, !"XXH3_mix2Accs: argument 0:It1"}
!502 = !{!503, !499, !455}
!503 = distinct !{!503, !498, !"XXH3_mix2Accs: argument 0:It2"}
!504 = !{!505, !499, !455}
!505 = distinct !{!505, !498, !"XXH3_mix2Accs: argument 0:It3"}
!506 = !{!507}
!507 = distinct !{!507, !508, !"XXH3_mix16B: argument 1"}
!508 = distinct !{!508, !"XXH3_mix16B"}
!509 = !{!510}
!510 = distinct !{!510, !511, !"XXH3_mix16B: argument 1"}
!511 = distinct !{!511, !"XXH3_mix16B"}
!512 = !{!513}
!513 = distinct !{!513, !514, !"XXH3_mix16B: argument 1"}
!514 = distinct !{!514, !"XXH3_mix16B"}
!515 = !{!516}
!516 = distinct !{!516, !517, !"XXH3_mix16B: argument 1"}
!517 = distinct !{!517, !"XXH3_mix16B"}
!518 = !{!519}
!519 = distinct !{!519, !520, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!520 = distinct !{!520, !"XXH3_hashLong_128b_withSeed_internal"}
!521 = !{!522}
!522 = distinct !{!522, !523, !"XXH3_hashLong_128b_internal: argument 0"}
!523 = distinct !{!523, !"XXH3_hashLong_128b_internal"}
!524 = !{!525}
!525 = distinct !{!525, !523, !"XXH3_hashLong_128b_internal: argument 1"}
!526 = !{!527, !525}
!527 = distinct !{!527, !528, !"XXH3_accumulate: argument 0"}
!528 = distinct !{!528, !"XXH3_accumulate"}
!529 = !{!522, !519}
!530 = !{!531, !527, !525}
!531 = distinct !{!531, !532, !"XXH3_accumulate_512_avx2: argument 0"}
!532 = distinct !{!532, !"XXH3_accumulate_512_avx2"}
!533 = !{!531, !527, !522, !519}
!534 = !{!535, !525}
!535 = distinct !{!535, !536, !"XXH3_accumulate: argument 0"}
!536 = distinct !{!536, !"XXH3_accumulate"}
!537 = !{!538, !535, !525}
!538 = distinct !{!538, !539, !"XXH3_accumulate_512_avx2: argument 0"}
!539 = distinct !{!539, !"XXH3_accumulate_512_avx2"}
!540 = !{!538, !535, !522, !519}
!541 = !{!542, !525}
!542 = distinct !{!542, !543, !"XXH3_accumulate_512_avx2: argument 0"}
!543 = distinct !{!543, !"XXH3_accumulate_512_avx2"}
!544 = !{!545}
!545 = distinct !{!545, !546, !"XXH3_hashLong_128b_internal: argument 0"}
!546 = distinct !{!546, !"XXH3_hashLong_128b_internal"}
!547 = !{!548}
!548 = distinct !{!548, !546, !"XXH3_hashLong_128b_internal: argument 1"}
!549 = !{!550, !545, !519}
!550 = distinct !{!550, !551, !"XXH3_scrambleAcc_avx2: argument 0"}
!551 = distinct !{!551, !"XXH3_scrambleAcc_avx2"}
!552 = !{!553, !548}
!553 = distinct !{!553, !554, !"XXH3_accumulate: argument 0"}
!554 = distinct !{!554, !"XXH3_accumulate"}
!555 = !{!545, !519}
!556 = !{!557, !553, !548}
!557 = distinct !{!557, !558, !"XXH3_accumulate_512_avx2: argument 0"}
!558 = distinct !{!558, !"XXH3_accumulate_512_avx2"}
!559 = !{!557, !553, !545, !519}
!560 = !{!561, !548}
!561 = distinct !{!561, !562, !"XXH3_accumulate: argument 0"}
!562 = distinct !{!562, !"XXH3_accumulate"}
!563 = !{!564, !561, !548}
!564 = distinct !{!564, !565, !"XXH3_accumulate_512_avx2: argument 0"}
!565 = distinct !{!565, !"XXH3_accumulate_512_avx2"}
!566 = !{!564, !561, !545, !519}
!567 = !{!568, !548}
!568 = distinct !{!568, !569, !"XXH3_accumulate_512_avx2: argument 0"}
!569 = distinct !{!569, !"XXH3_accumulate_512_avx2"}
!570 = !{!568, !545, !519}
!571 = !{!572}
!572 = distinct !{!572, !573, !"XXH3_mergeAccs: argument 1"}
!573 = distinct !{!573, !"XXH3_mergeAccs"}
!574 = !{!575, !577, !545, !519}
!575 = distinct !{!575, !576, !"XXH3_mix2Accs: argument 0"}
!576 = distinct !{!576, !"XXH3_mix2Accs"}
!577 = distinct !{!577, !573, !"XXH3_mergeAccs: argument 0"}
!578 = !{!579, !577, !545, !519}
!579 = distinct !{!579, !576, !"XXH3_mix2Accs: argument 0:It1"}
!580 = !{!581, !577, !545, !519}
!581 = distinct !{!581, !576, !"XXH3_mix2Accs: argument 0:It2"}
!582 = !{!583, !577, !545, !519}
!583 = distinct !{!583, !576, !"XXH3_mix2Accs: argument 0:It3"}
!584 = !{!585}
!585 = distinct !{!585, !586, !"XXH3_mergeAccs: argument 1"}
!586 = distinct !{!586, !"XXH3_mergeAccs"}
!587 = !{!588, !590, !545, !519}
!588 = distinct !{!588, !589, !"XXH3_mix2Accs: argument 0"}
!589 = distinct !{!589, !"XXH3_mix2Accs"}
!590 = distinct !{!590, !586, !"XXH3_mergeAccs: argument 0"}
!591 = !{!592, !590, !545, !519}
!592 = distinct !{!592, !589, !"XXH3_mix2Accs: argument 0:It1"}
!593 = !{!594, !590, !545, !519}
!594 = distinct !{!594, !589, !"XXH3_mix2Accs: argument 0:It2"}
!595 = !{!596, !590, !545, !519}
!596 = distinct !{!596, !589, !"XXH3_mix2Accs: argument 0:It3"}
!597 = !{!598}
!598 = distinct !{!598, !599, !"XXH3_update: argument 0"}
!599 = distinct !{!599, !"XXH3_update"}
!600 = !{!601}
!601 = distinct !{!601, !599, !"XXH3_update: argument 1"}
!602 = !{!603}
!603 = distinct !{!603, !604, !"XXH3_consumeStripes: argument 0"}
!604 = distinct !{!604, !"XXH3_consumeStripes"}
!605 = !{!606}
!606 = distinct !{!606, !604, !"XXH3_consumeStripes: argument 1"}
!607 = !{!603, !608, !609}
!608 = distinct !{!608, !604, !"XXH3_consumeStripes: argument 2"}
!609 = distinct !{!609, !604, !"XXH3_consumeStripes: argument 3"}
!610 = !{!611, !603}
!611 = distinct !{!611, !612, !"XXH3_scrambleAcc_avx2: argument 0"}
!612 = distinct !{!612, !"XXH3_scrambleAcc_avx2"}
!613 = !{!614, !606, !608, !609}
!614 = distinct !{!614, !612, !"XXH3_scrambleAcc_avx2: argument 1"}
!615 = !{!606, !608, !609}
!616 = !{!617, !603, !606}
!617 = distinct !{!617, !618, !"XXH3_accumulate: argument 0"}
!618 = distinct !{!618, !"XXH3_accumulate"}
!619 = !{!620, !617, !603, !606}
!620 = distinct !{!620, !621, !"XXH3_accumulate_512_avx2: argument 0"}
!621 = distinct !{!621, !"XXH3_accumulate_512_avx2"}
!622 = !{!611}
!623 = !{!611, !603, !606}
!624 = !{!625}
!625 = distinct !{!625, !626, !"XXH3_accumulate: argument 0"}
!626 = distinct !{!626, !"XXH3_accumulate"}
!627 = !{!625, !603, !606}
!628 = !{!629}
!629 = distinct !{!629, !630, !"XXH3_accumulate_512_avx2: argument 0"}
!630 = distinct !{!630, !"XXH3_accumulate_512_avx2"}
!631 = !{!629, !625, !603, !606}
!632 = !{!633}
!633 = distinct !{!633, !634, !"XXH3_accumulate: argument 0"}
!634 = distinct !{!634, !"XXH3_accumulate"}
!635 = !{!633, !603, !606}
!636 = !{!637}
!637 = distinct !{!637, !638, !"XXH3_accumulate_512_avx2: argument 0"}
!638 = distinct !{!638, !"XXH3_accumulate_512_avx2"}
!639 = !{!637, !633, !603, !606}
!640 = !{!637, !633, !603}
!641 = !{!642, !643, !644, !645, !606, !608, !609}
!642 = distinct !{!642, !638, !"XXH3_accumulate_512_avx2: argument 1"}
!643 = distinct !{!643, !638, !"XXH3_accumulate_512_avx2: argument 2"}
!644 = distinct !{!644, !634, !"XXH3_accumulate: argument 1"}
!645 = distinct !{!645, !634, !"XXH3_accumulate: argument 2"}
!646 = !{!647, !633, !603, !606}
!647 = distinct !{!647, !638, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!648 = !{!649, !633, !603, !606}
!649 = distinct !{!649, !638, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!650 = !{!651}
!651 = distinct !{!651, !638, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!652 = !{!651, !633, !603, !606}
!653 = !{!651, !633, !603}
!654 = !{!629, !625, !603}
!655 = !{!656, !657, !658, !659, !606, !608, !609}
!656 = distinct !{!656, !630, !"XXH3_accumulate_512_avx2: argument 1"}
!657 = distinct !{!657, !630, !"XXH3_accumulate_512_avx2: argument 2"}
!658 = distinct !{!658, !626, !"XXH3_accumulate: argument 1"}
!659 = distinct !{!659, !626, !"XXH3_accumulate: argument 2"}
!660 = !{!661}
!661 = distinct !{!661, !662, !"XXH3_accumulate: argument 0"}
!662 = distinct !{!662, !"XXH3_accumulate"}
!663 = !{!664}
!664 = distinct !{!664, !665, !"XXH3_scrambleAcc_avx2: argument 0"}
!665 = distinct !{!665, !"XXH3_scrambleAcc_avx2"}
!666 = !{!667}
!667 = distinct !{!667, !665, !"XXH3_scrambleAcc_avx2: argument 1"}
!668 = !{!669}
!669 = distinct !{!669, !670, !"XXH3_accumulate_512_avx2: argument 0"}
!670 = distinct !{!670, !"XXH3_accumulate_512_avx2"}
!671 = !{!669, !661}
!672 = !{!673, !674, !675, !676}
!673 = distinct !{!673, !670, !"XXH3_accumulate_512_avx2: argument 1"}
!674 = distinct !{!674, !670, !"XXH3_accumulate_512_avx2: argument 2"}
!675 = distinct !{!675, !662, !"XXH3_accumulate: argument 1"}
!676 = distinct !{!676, !662, !"XXH3_accumulate: argument 2"}
!677 = !{!678}
!678 = distinct !{!678, !679, !"XXH3_accumulate: argument 0"}
!679 = distinct !{!679, !"XXH3_accumulate"}
!680 = !{!681}
!681 = distinct !{!681, !682, !"XXH3_accumulate_512_avx2: argument 0"}
!682 = distinct !{!682, !"XXH3_accumulate_512_avx2"}
!683 = !{!681, !678}
!684 = !{!685, !686, !687, !688}
!685 = distinct !{!685, !682, !"XXH3_accumulate_512_avx2: argument 1"}
!686 = distinct !{!686, !682, !"XXH3_accumulate_512_avx2: argument 2"}
!687 = distinct !{!687, !679, !"XXH3_accumulate: argument 1"}
!688 = distinct !{!688, !679, !"XXH3_accumulate: argument 2"}
!689 = !{!690}
!690 = distinct !{!690, !691, !"XXH3_scrambleAcc_avx2: argument 0"}
!691 = distinct !{!691, !"XXH3_scrambleAcc_avx2"}
!692 = !{!693}
!693 = distinct !{!693, !691, !"XXH3_scrambleAcc_avx2: argument 1"}
!694 = !{!695}
!695 = distinct !{!695, !696, !"XXH3_accumulate: argument 0"}
!696 = distinct !{!696, !"XXH3_accumulate"}
!697 = !{!698}
!698 = distinct !{!698, !699, !"XXH3_accumulate_512_avx2: argument 0"}
!699 = distinct !{!699, !"XXH3_accumulate_512_avx2"}
!700 = !{!698, !695}
!701 = !{!702, !703, !704, !705}
!702 = distinct !{!702, !699, !"XXH3_accumulate_512_avx2: argument 1"}
!703 = distinct !{!703, !699, !"XXH3_accumulate_512_avx2: argument 2"}
!704 = distinct !{!704, !696, !"XXH3_accumulate: argument 1"}
!705 = distinct !{!705, !696, !"XXH3_accumulate: argument 2"}
!706 = !{!707}
!707 = distinct !{!707, !708, !"XXH3_consumeStripes: argument 1"}
!708 = distinct !{!708, !"XXH3_consumeStripes"}
!709 = !{!710, !711, !712}
!710 = distinct !{!710, !708, !"XXH3_consumeStripes: argument 0"}
!711 = distinct !{!711, !708, !"XXH3_consumeStripes: argument 2"}
!712 = distinct !{!712, !708, !"XXH3_consumeStripes: argument 3"}
!713 = !{!710}
!714 = !{!715}
!715 = distinct !{!715, !716, !"XXH3_accumulate: argument 0"}
!716 = distinct !{!716, !"XXH3_accumulate"}
!717 = !{!718, !710}
!718 = distinct !{!718, !719, !"XXH3_scrambleAcc_avx2: argument 0"}
!719 = distinct !{!719, !"XXH3_scrambleAcc_avx2"}
!720 = !{!721, !707, !711, !712}
!721 = distinct !{!721, !719, !"XXH3_scrambleAcc_avx2: argument 1"}
!722 = !{!723, !715, !710}
!723 = distinct !{!723, !724, !"XXH3_accumulate_512_avx2: argument 0"}
!724 = distinct !{!724, !"XXH3_accumulate_512_avx2"}
!725 = !{!726, !727, !728, !729, !707, !711, !712}
!726 = distinct !{!726, !724, !"XXH3_accumulate_512_avx2: argument 1"}
!727 = distinct !{!727, !724, !"XXH3_accumulate_512_avx2: argument 2"}
!728 = distinct !{!728, !716, !"XXH3_accumulate: argument 1"}
!729 = distinct !{!729, !716, !"XXH3_accumulate: argument 2"}
!730 = !{!715, !710, !707}
!731 = !{!723}
!732 = !{!723, !715, !710, !707}
!733 = !{!718}
!734 = !{!718, !710, !707}
!735 = !{!736}
!736 = distinct !{!736, !737, !"XXH3_accumulate: argument 0"}
!737 = distinct !{!737, !"XXH3_accumulate"}
!738 = !{!736, !710, !707}
!739 = !{!740}
!740 = distinct !{!740, !741, !"XXH3_accumulate_512_avx2: argument 0"}
!741 = distinct !{!741, !"XXH3_accumulate_512_avx2"}
!742 = !{!740, !736, !710, !707}
!743 = !{!744}
!744 = distinct !{!744, !745, !"XXH3_accumulate: argument 0"}
!745 = distinct !{!745, !"XXH3_accumulate"}
!746 = !{!744, !710, !707}
!747 = !{!748}
!748 = distinct !{!748, !749, !"XXH3_accumulate_512_avx2: argument 0"}
!749 = distinct !{!749, !"XXH3_accumulate_512_avx2"}
!750 = !{!748, !744, !710, !707}
!751 = !{!748, !744, !710}
!752 = !{!753, !754, !755, !756, !707, !711, !712}
!753 = distinct !{!753, !749, !"XXH3_accumulate_512_avx2: argument 1"}
!754 = distinct !{!754, !749, !"XXH3_accumulate_512_avx2: argument 2"}
!755 = distinct !{!755, !745, !"XXH3_accumulate: argument 1"}
!756 = distinct !{!756, !745, !"XXH3_accumulate: argument 2"}
!757 = !{!758, !744, !710, !707}
!758 = distinct !{!758, !749, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!759 = !{!760, !744, !710, !707}
!760 = distinct !{!760, !749, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!761 = !{!762}
!762 = distinct !{!762, !749, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!763 = !{!762, !744, !710, !707}
!764 = !{!762, !744, !710}
!765 = !{!740, !736, !710}
!766 = !{!767, !768, !769, !770, !707, !711, !712}
!767 = distinct !{!767, !741, !"XXH3_accumulate_512_avx2: argument 1"}
!768 = distinct !{!768, !741, !"XXH3_accumulate_512_avx2: argument 2"}
!769 = distinct !{!769, !737, !"XXH3_accumulate: argument 1"}
!770 = distinct !{!770, !737, !"XXH3_accumulate: argument 2"}
!771 = !{!772, !774, !776}
!772 = distinct !{!772, !773, !"XXH3_accumulate: argument 0"}
!773 = distinct !{!773, !"XXH3_accumulate"}
!774 = distinct !{!774, !775, !"XXH3_consumeStripes: argument 0"}
!775 = distinct !{!775, !"XXH3_consumeStripes"}
!776 = distinct !{!776, !775, !"XXH3_consumeStripes: argument 1"}
!777 = !{!778, !772, !774, !776}
!778 = distinct !{!778, !779, !"XXH3_accumulate_512_avx2: argument 0"}
!779 = distinct !{!779, !"XXH3_accumulate_512_avx2"}
!780 = !{!781, !774, !776}
!781 = distinct !{!781, !782, !"XXH3_scrambleAcc_avx2: argument 0"}
!782 = distinct !{!782, !"XXH3_scrambleAcc_avx2"}
!783 = !{!784, !774, !776}
!784 = distinct !{!784, !785, !"XXH3_accumulate: argument 0"}
!785 = distinct !{!785, !"XXH3_accumulate"}
!786 = !{!787, !784, !774, !776}
!787 = distinct !{!787, !788, !"XXH3_accumulate_512_avx2: argument 0"}
!788 = distinct !{!788, !"XXH3_accumulate_512_avx2"}
!789 = !{!790, !774, !776}
!790 = distinct !{!790, !791, !"XXH3_accumulate: argument 0"}
!791 = distinct !{!791, !"XXH3_accumulate"}
!792 = !{!793, !790, !774, !776}
!793 = distinct !{!793, !794, !"XXH3_accumulate_512_avx2: argument 0"}
!794 = distinct !{!794, !"XXH3_accumulate_512_avx2"}
!795 = !{!796}
!796 = distinct !{!796, !797, !"XXH3_accumulate_512_avx2: argument 0"}
!797 = distinct !{!797, !"XXH3_accumulate_512_avx2"}
!798 = !{!799}
!799 = distinct !{!799, !800, !"XXH3_accumulate_512_avx2: argument 0"}
!800 = distinct !{!800, !"XXH3_accumulate_512_avx2"}
!801 = !{!802}
!802 = distinct !{!802, !803, !"XXH3_mergeAccs: argument 1"}
!803 = distinct !{!803, !"XXH3_mergeAccs"}
!804 = !{!805, !807}
!805 = distinct !{!805, !806, !"XXH3_mix2Accs: argument 0"}
!806 = distinct !{!806, !"XXH3_mix2Accs"}
!807 = distinct !{!807, !803, !"XXH3_mergeAccs: argument 0"}
!808 = !{!809, !807}
!809 = distinct !{!809, !806, !"XXH3_mix2Accs: argument 0:It1"}
!810 = !{!811, !807}
!811 = distinct !{!811, !806, !"XXH3_mix2Accs: argument 0:It2"}
!812 = !{!813, !807}
!813 = distinct !{!813, !806, !"XXH3_mix2Accs: argument 0:It3"}
!814 = !{!815}
!815 = distinct !{!815, !816, !"XXH3_mergeAccs: argument 1"}
!816 = distinct !{!816, !"XXH3_mergeAccs"}
!817 = !{!818, !820}
!818 = distinct !{!818, !819, !"XXH3_mix2Accs: argument 0"}
!819 = distinct !{!819, !"XXH3_mix2Accs"}
!820 = distinct !{!820, !816, !"XXH3_mergeAccs: argument 0"}
!821 = !{!822, !820}
!822 = distinct !{!822, !819, !"XXH3_mix2Accs: argument 0:It1"}
!823 = !{!824, !820}
!824 = distinct !{!824, !819, !"XXH3_mix2Accs: argument 0:It2"}
!825 = !{!826, !820}
!826 = distinct !{!826, !819, !"XXH3_mix2Accs: argument 0:It3"}
!827 = !{!828}
!828 = distinct !{!828, !829, !"XXH3_mix16B: argument 1"}
!829 = distinct !{!829, !"XXH3_mix16B"}
!830 = !{!831}
!831 = distinct !{!831, !832, !"XXH3_mix16B: argument 1"}
!832 = distinct !{!832, !"XXH3_mix16B"}
!833 = distinct !{!833, !7}
!834 = !{!835}
!835 = distinct !{!835, !836, !"XXH3_mix16B: argument 1"}
!836 = distinct !{!836, !"XXH3_mix16B"}
!837 = !{!838}
!838 = distinct !{!838, !839, !"XXH3_mix16B: argument 1"}
!839 = distinct !{!839, !"XXH3_mix16B"}
!840 = !{!841}
!841 = distinct !{!841, !842, !"XXH3_mix16B: argument 1"}
!842 = distinct !{!842, !"XXH3_mix16B"}
!843 = distinct !{!843, !7}
!844 = !{!845}
!845 = distinct !{!845, !846, !"XXH3_mix16B: argument 1"}
!846 = distinct !{!846, !"XXH3_mix16B"}
