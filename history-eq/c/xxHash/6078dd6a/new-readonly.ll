; ModuleID = '/tmp/xxh-restrict-readonly-evujx1jw/wrapper.c'
source_filename = "/tmp/xxh-restrict-readonly-evujx1jw/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH128_hash_t = type { i64, i64 }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 801
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XXH32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %5, label %50

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %7 = getelementptr inbounds i8, ptr %6, i64 -15
  %8 = add i32 %2, 606290984
  %9 = add i32 %2, -2048144777
  %10 = add i32 %2, 1640531535
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %0, %5 ], [ %40, %11 ]
  %13 = phi i32 [ %8, %5 ], [ %21, %11 ]
  %14 = phi i32 [ %9, %5 ], [ %27, %11 ]
  %15 = phi i32 [ %2, %5 ], [ %33, %11 ]
  %16 = phi i32 [ %10, %5 ], [ %39, %11 ]
  %17 = load i32, ptr %12, align 1, !tbaa !5
  %18 = mul i32 %17, -2048144777
  %19 = add i32 %18, %13
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 13)
  %21 = mul i32 %20, -1640531535
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %23 = load i32, ptr %22, align 1, !tbaa !5
  %24 = mul i32 %23, -2048144777
  %25 = add i32 %24, %14
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13)
  %27 = mul i32 %26, -1640531535
  %28 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %29 = load i32, ptr %28, align 1, !tbaa !5
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %15
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %35 = load i32, ptr %34, align 1, !tbaa !5
  %36 = mul i32 %35, -2048144777
  %37 = add i32 %36, %16
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 13)
  %39 = mul i32 %38, -1640531535
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %41 = icmp ult ptr %40, %7
  br i1 %41, label %11, label %42, !llvm.loop !9

42:                                               ; preds = %11
  %43 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 1)
  %44 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 7)
  %45 = add i32 %44, %43
  %46 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 12)
  %47 = add i32 %45, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 18)
  %49 = add i32 %47, %48
  br label %52

50:                                               ; preds = %3
  %51 = add i32 %2, 374761393
  br label %52

52:                                               ; preds = %42, %50
  %53 = phi i32 [ %49, %42 ], [ %51, %50 ]
  %54 = phi ptr [ %40, %42 ], [ %0, %50 ]
  %55 = trunc i64 %1 to i32
  %56 = add i32 %53, %55
  %57 = and i64 %1, 15
  %58 = icmp samesign ugt i64 %57, 3
  br i1 %58, label %64, label %59

59:                                               ; preds = %64, %52
  %60 = phi ptr [ %54, %52 ], [ %71, %64 ]
  %61 = phi i64 [ %57, %52 ], [ %74, %64 ]
  %62 = phi i32 [ %56, %52 ], [ %73, %64 ]
  %63 = icmp eq i64 %61, 0
  br i1 %63, label %89, label %76

64:                                               ; preds = %52, %64
  %65 = phi i32 [ %73, %64 ], [ %56, %52 ]
  %66 = phi i64 [ %74, %64 ], [ %57, %52 ]
  %67 = phi ptr [ %71, %64 ], [ %54, %52 ]
  %68 = load i32, ptr %67, align 1, !tbaa !5
  %69 = mul i32 %68, -1028477379
  %70 = add i32 %69, %65
  %71 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 17)
  %73 = mul i32 %72, 668265263
  %74 = add nsw i64 %66, -4
  %75 = icmp ugt i64 %74, 3
  br i1 %75, label %64, label %59, !llvm.loop !11

76:                                               ; preds = %59, %76
  %77 = phi i32 [ %86, %76 ], [ %62, %59 ]
  %78 = phi i64 [ %87, %76 ], [ %61, %59 ]
  %79 = phi ptr [ %80, %76 ], [ %60, %59 ]
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 1
  %81 = load i8, ptr %79, align 1, !tbaa !12
  %82 = zext i8 %81 to i32
  %83 = mul i32 %82, 374761393
  %84 = add i32 %83, %77
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 11)
  %86 = mul i32 %85, -1640531535
  %87 = add nsw i64 %78, -1
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %76, !llvm.loop !13

89:                                               ; preds = %76, %59
  %90 = phi i32 [ %62, %59 ], [ %86, %76 ]
  %91 = lshr i32 %90, 15
  %92 = xor i32 %91, %90
  %93 = mul i32 %92, -2048144777
  %94 = lshr i32 %93, 13
  %95 = xor i32 %94, %93
  %96 = mul i32 %95, -1028477379
  %97 = lshr i32 %96, 16
  %98 = xor i32 %97, %96
  ret i32 %98
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #30
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr nocapture noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #31
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH32_copyState(ptr nocapture noundef writeonly initializes((0, 48)) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %0, ptr noundef nonnull readonly align 1 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_reset(ptr nocapture noundef writeonly initializes((0, 48)) %0, i32 noundef %1) local_unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %3 = add i32 %1, 606290984
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 4, !tbaa !5
  %5 = add i32 %1, -2048144777
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %7, align 4, !tbaa !5
  %8 = add i32 %1, 1640531535
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %8, ptr %9, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH32_update(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %124, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = trunc i64 %2 to i32
  %8 = load i32, ptr %0, align 4, !tbaa !14
  %9 = add i32 %8, %7
  store i32 %9, ptr %0, align 4, !tbaa !14
  %10 = icmp ugt i64 %2, 15
  %11 = icmp ugt i32 %9, 15
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !16
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 4, !tbaa !16
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i32, ptr %17, align 4, !tbaa !17
  %19 = zext i32 %18 to i64
  %20 = add i64 %2, %19
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %25 = load i32, ptr %17, align 4, !tbaa !17
  %26 = add i32 %25, %7
  br label %122

27:                                               ; preds = %5
  %28 = icmp eq i32 %18, 0
  br i1 %28, label %69, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 %19
  %32 = sub i32 16, %18
  %33 = zext i32 %32 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr nonnull readonly align 1 %1, i64 %33, i1 false)
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 4, !tbaa !5
  %36 = load i32, ptr %30, align 1, !tbaa !5
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %35
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  store i32 %40, ptr %34, align 4, !tbaa !5
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %43 = load i32, ptr %42, align 4, !tbaa !5
  %44 = load i32, ptr %41, align 1, !tbaa !5
  %45 = mul i32 %44, -2048144777
  %46 = add i32 %45, %43
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 13)
  %48 = mul i32 %47, -1640531535
  store i32 %48, ptr %42, align 4, !tbaa !5
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %51 = load i32, ptr %50, align 4, !tbaa !5
  %52 = load i32, ptr %49, align 1, !tbaa !5
  %53 = mul i32 %52, -2048144777
  %54 = add i32 %53, %51
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 13)
  %56 = mul i32 %55, -1640531535
  store i32 %56, ptr %50, align 4, !tbaa !5
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %59 = load i32, ptr %58, align 4, !tbaa !5
  %60 = load i32, ptr %57, align 1, !tbaa !5
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %59
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  store i32 %64, ptr %58, align 4, !tbaa !5
  %65 = load i32, ptr %17, align 4, !tbaa !17
  %66 = sub i32 16, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 %67
  store i32 0, ptr %17, align 4, !tbaa !17
  br label %69

69:                                               ; preds = %29, %27
  %70 = phi ptr [ %68, %29 ], [ %1, %27 ]
  %71 = getelementptr inbounds i8, ptr %6, i64 -16
  %72 = icmp ugt ptr %70, %71
  br i1 %72, label %113, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %78 = load i32, ptr %74, align 4, !tbaa !5
  %79 = load i32, ptr %75, align 4, !tbaa !5
  %80 = load i32, ptr %76, align 4, !tbaa !5
  %81 = load i32, ptr %77, align 4, !tbaa !5
  br label %82

82:                                               ; preds = %73, %82
  %83 = phi i32 [ %110, %82 ], [ %81, %73 ]
  %84 = phi i32 [ %104, %82 ], [ %80, %73 ]
  %85 = phi i32 [ %98, %82 ], [ %79, %73 ]
  %86 = phi i32 [ %92, %82 ], [ %78, %73 ]
  %87 = phi ptr [ %111, %82 ], [ %70, %73 ]
  %88 = load i32, ptr %87, align 1, !tbaa !5
  %89 = mul i32 %88, -2048144777
  %90 = add i32 %89, %86
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 13)
  %92 = mul i32 %91, -1640531535
  store i32 %92, ptr %74, align 4, !tbaa !5
  %93 = getelementptr inbounds nuw i8, ptr %87, i64 4
  %94 = load i32, ptr %93, align 1, !tbaa !5
  %95 = mul i32 %94, -2048144777
  %96 = add i32 %95, %85
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 13)
  %98 = mul i32 %97, -1640531535
  store i32 %98, ptr %75, align 4, !tbaa !5
  %99 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %100 = load i32, ptr %99, align 1, !tbaa !5
  %101 = mul i32 %100, -2048144777
  %102 = add i32 %101, %84
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 13)
  %104 = mul i32 %103, -1640531535
  store i32 %104, ptr %76, align 4, !tbaa !5
  %105 = getelementptr inbounds nuw i8, ptr %87, i64 12
  %106 = load i32, ptr %105, align 1, !tbaa !5
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %83
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  store i32 %110, ptr %77, align 4, !tbaa !5
  %111 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %112 = icmp ugt ptr %111, %71
  br i1 %112, label %113, label %82, !llvm.loop !18

113:                                              ; preds = %82, %69
  %114 = phi ptr [ %70, %69 ], [ %111, %82 ]
  %115 = icmp ult ptr %114, %6
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %118 = ptrtoint ptr %6 to i64
  %119 = ptrtoint ptr %114 to i64
  %120 = sub i64 %118, %119
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %117, ptr nonnull readonly align 1 %114, i64 %120, i1 false)
  %121 = trunc i64 %120 to i32
  br label %122

122:                                              ; preds = %116, %22
  %123 = phi i32 [ %26, %22 ], [ %121, %116 ]
  store i32 %123, ptr %17, align 4, !tbaa !17
  br label %124

124:                                              ; preds = %122, %113, %3
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XXH32_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 1)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 7)
  %12 = add i32 %11, %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 12)
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 18)
  %20 = add i32 %16, %19
  br label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = add i32 %23, 374761393
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i32 [ %20, %5 ], [ %24, %21 ]
  %27 = load i32, ptr %0, align 4, !tbaa !14
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i32, ptr %30, align 4, !tbaa !17
  %32 = and i32 %31, 15
  %33 = zext nneg i32 %32 to i64
  %34 = icmp samesign ugt i32 %32, 3
  br i1 %34, label %40, label %35

35:                                               ; preds = %40, %25
  %36 = phi ptr [ %29, %25 ], [ %47, %40 ]
  %37 = phi i64 [ %33, %25 ], [ %50, %40 ]
  %38 = phi i32 [ %28, %25 ], [ %49, %40 ]
  %39 = icmp eq i64 %37, 0
  br i1 %39, label %65, label %52

40:                                               ; preds = %25, %40
  %41 = phi i32 [ %49, %40 ], [ %28, %25 ]
  %42 = phi i64 [ %50, %40 ], [ %33, %25 ]
  %43 = phi ptr [ %47, %40 ], [ %29, %25 ]
  %44 = load i32, ptr %43, align 1, !tbaa !5
  %45 = mul i32 %44, -1028477379
  %46 = add i32 %45, %41
  %47 = getelementptr inbounds nuw i8, ptr %43, i64 4
  %48 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 17)
  %49 = mul i32 %48, 668265263
  %50 = add nsw i64 %42, -4
  %51 = icmp ugt i64 %50, 3
  br i1 %51, label %40, label %35, !llvm.loop !11

52:                                               ; preds = %35, %52
  %53 = phi i32 [ %62, %52 ], [ %38, %35 ]
  %54 = phi i64 [ %63, %52 ], [ %37, %35 ]
  %55 = phi ptr [ %56, %52 ], [ %36, %35 ]
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 1
  %57 = load i8, ptr %55, align 1, !tbaa !12
  %58 = zext i8 %57 to i32
  %59 = mul i32 %58, 374761393
  %60 = add i32 %59, %53
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 11)
  %62 = mul i32 %61, -1640531535
  %63 = add nsw i64 %54, -1
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %52, !llvm.loop !13

65:                                               ; preds = %52, %35
  %66 = phi i32 [ %38, %35 ], [ %62, %52 ]
  %67 = lshr i32 %66, 15
  %68 = xor i32 %67, %66
  %69 = mul i32 %68, -2048144777
  %70 = lshr i32 %69, 13
  %71 = xor i32 %70, %69
  %72 = mul i32 %71, -1028477379
  %73 = lshr i32 %72, 16
  %74 = xor i32 %73, %72
  ret i32 %74
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH32_canonicalFromHash(ptr nocapture noundef writeonly initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @XXH32_hashFromCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 1, !tbaa !5
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
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
  %17 = load i64, ptr %12, align 1, !tbaa !19
  %18 = mul i64 %17, -4417276706812531889
  %19 = add i64 %18, %13
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %23 = load i64, ptr %22, align 1, !tbaa !19
  %24 = mul i64 %23, -4417276706812531889
  %25 = add i64 %24, %14
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %29 = load i64, ptr %28, align 1, !tbaa !19
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, %15
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %35 = load i64, ptr %34, align 1, !tbaa !19
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, %16
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %41 = icmp ult ptr %40, %7
  br i1 %41, label %11, label %42, !llvm.loop !21

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
  br i1 %81, label %82, label %97

82:                                               ; preds = %76, %82
  %83 = phi i64 [ %94, %82 ], [ %79, %76 ]
  %84 = phi ptr [ %90, %82 ], [ %78, %76 ]
  %85 = phi i64 [ %95, %82 ], [ %80, %76 ]
  %86 = load i64, ptr %84, align 1, !tbaa !19
  %87 = mul i64 %86, -4417276706812531889
  %88 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 31)
  %89 = mul i64 %88, -7046029288634856825
  %90 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %91 = xor i64 %89, %83
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 27)
  %93 = mul i64 %92, -7046029288634856825
  %94 = add i64 %93, -8796714831421723037
  %95 = add nsw i64 %85, -8
  %96 = icmp ugt i64 %95, 7
  br i1 %96, label %82, label %97, !llvm.loop !22

97:                                               ; preds = %82, %76
  %98 = phi i64 [ %80, %76 ], [ %95, %82 ]
  %99 = phi ptr [ %78, %76 ], [ %90, %82 ]
  %100 = phi i64 [ %79, %76 ], [ %94, %82 ]
  %101 = icmp samesign ugt i64 %98, 3
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i32, ptr %99, align 1, !tbaa !5
  %104 = zext i32 %103 to i64
  %105 = mul i64 %104, -7046029288634856825
  %106 = xor i64 %105, %100
  %107 = getelementptr inbounds nuw i8, ptr %99, i64 4
  %108 = tail call i64 @llvm.fshl.i64(i64 %106, i64 %106, i64 23)
  %109 = mul i64 %108, -4417276706812531889
  %110 = add i64 %109, 1609587929392839161
  %111 = add nsw i64 %98, -4
  br label %112

112:                                              ; preds = %102, %97
  %113 = phi i64 [ %111, %102 ], [ %98, %97 ]
  %114 = phi ptr [ %107, %102 ], [ %99, %97 ]
  %115 = phi i64 [ %110, %102 ], [ %100, %97 ]
  %116 = icmp eq i64 %113, 0
  br i1 %116, label %130, label %117

117:                                              ; preds = %112, %117
  %118 = phi i64 [ %127, %117 ], [ %115, %112 ]
  %119 = phi ptr [ %121, %117 ], [ %114, %112 ]
  %120 = phi i64 [ %128, %117 ], [ %113, %112 ]
  %121 = getelementptr inbounds nuw i8, ptr %119, i64 1
  %122 = load i8, ptr %119, align 1, !tbaa !12
  %123 = zext i8 %122 to i64
  %124 = mul i64 %123, 2870177450012600261
  %125 = xor i64 %124, %118
  %126 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 11)
  %127 = mul i64 %126, -7046029288634856825
  %128 = add nsw i64 %120, -1
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %117, !llvm.loop !23

130:                                              ; preds = %117, %112
  %131 = phi i64 [ %115, %112 ], [ %127, %117 ]
  %132 = lshr i64 %131, 33
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, -4417276706812531889
  %135 = lshr i64 %134, 29
  %136 = xor i64 %135, %134
  %137 = mul i64 %136, 1609587929392839161
  %138 = lshr i64 %137, 32
  %139 = xor i64 %138, %137
  ret i64 %139
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #30
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr nocapture noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #31
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH64_copyState(ptr nocapture noundef writeonly initializes((0, 88)) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %0, ptr noundef nonnull readonly align 1 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH64_reset(ptr nocapture noundef writeonly initializes((0, 88)) %0, i64 noundef %1) local_unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %3 = add i64 %1, 6983438078262162902
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %4, align 8, !tbaa !19
  %5 = add i64 %1, -4417276706812531889
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %6, align 8, !tbaa !19
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %7, align 8, !tbaa !19
  %8 = add i64 %1, 7046029288634856825
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %8, ptr %9, align 8, !tbaa !19
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH64_update(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %118, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = load i64, ptr %0, align 8, !tbaa !24
  %8 = add i64 %7, %2
  store i64 %8, ptr %0, align 8, !tbaa !24
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = zext i32 %10 to i64
  %12 = add i64 %2, %11
  %13 = icmp ult i64 %12, 32
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %17 = trunc i64 %2 to i32
  %18 = load i32, ptr %9, align 8, !tbaa !26
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
  %28 = load i64, ptr %27, align 8, !tbaa !19
  %29 = load i64, ptr %23, align 1, !tbaa !19
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, %28
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  store i64 %33, ptr %27, align 8, !tbaa !19
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = load i64, ptr %34, align 8, !tbaa !19
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %37 = load i64, ptr %36, align 1, !tbaa !19
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %35
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  store i64 %41, ptr %34, align 8, !tbaa !19
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %43 = load i64, ptr %42, align 8, !tbaa !19
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %45 = load i64, ptr %44, align 1, !tbaa !19
  %46 = mul i64 %45, -4417276706812531889
  %47 = add i64 %46, %43
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 31)
  %49 = mul i64 %48, -7046029288634856825
  store i64 %49, ptr %42, align 8, !tbaa !19
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %51 = load i64, ptr %50, align 8, !tbaa !19
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %53 = load i64, ptr %52, align 1, !tbaa !19
  %54 = mul i64 %53, -4417276706812531889
  %55 = add i64 %54, %51
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  store i64 %57, ptr %50, align 8, !tbaa !19
  %58 = load i32, ptr %9, align 8, !tbaa !26
  %59 = sub i32 32, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 %60
  store i32 0, ptr %9, align 8, !tbaa !26
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
  %72 = load i64, ptr %68, align 8, !tbaa !19
  %73 = load i64, ptr %69, align 8, !tbaa !19
  %74 = load i64, ptr %70, align 8, !tbaa !19
  %75 = load i64, ptr %71, align 8, !tbaa !19
  br label %76

76:                                               ; preds = %76, %66
  %77 = phi i64 [ %75, %66 ], [ %104, %76 ]
  %78 = phi i64 [ %74, %66 ], [ %98, %76 ]
  %79 = phi i64 [ %73, %66 ], [ %92, %76 ]
  %80 = phi i64 [ %72, %66 ], [ %86, %76 ]
  %81 = phi ptr [ %63, %66 ], [ %105, %76 ]
  %82 = load i64, ptr %81, align 1, !tbaa !19
  %83 = mul i64 %82, -4417276706812531889
  %84 = add i64 %83, %80
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 31)
  %86 = mul i64 %85, -7046029288634856825
  store i64 %86, ptr %68, align 8, !tbaa !19
  %87 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %88 = load i64, ptr %87, align 1, !tbaa !19
  %89 = mul i64 %88, -4417276706812531889
  %90 = add i64 %89, %79
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 31)
  %92 = mul i64 %91, -7046029288634856825
  store i64 %92, ptr %69, align 8, !tbaa !19
  %93 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %94 = load i64, ptr %93, align 1, !tbaa !19
  %95 = mul i64 %94, -4417276706812531889
  %96 = add i64 %95, %78
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 31)
  %98 = mul i64 %97, -7046029288634856825
  store i64 %98, ptr %70, align 8, !tbaa !19
  %99 = getelementptr inbounds nuw i8, ptr %81, i64 24
  %100 = load i64, ptr %99, align 1, !tbaa !19
  %101 = mul i64 %100, -4417276706812531889
  %102 = add i64 %101, %77
  %103 = tail call i64 @llvm.fshl.i64(i64 %102, i64 %102, i64 31)
  %104 = mul i64 %103, -7046029288634856825
  store i64 %104, ptr %71, align 8, !tbaa !19
  %105 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %106 = icmp ugt ptr %105, %67
  br i1 %106, label %107, label %76, !llvm.loop !27

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
  store i32 %117, ptr %9, align 8, !tbaa !26
  br label %118

118:                                              ; preds = %116, %107, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8, !tbaa !24
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !19
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 1)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8, !tbaa !19
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 7)
  %11 = add i64 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8, !tbaa !19
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 12)
  %15 = add i64 %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load i64, ptr %16, align 8, !tbaa !19
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
  %46 = load i64, ptr %45, align 8, !tbaa !19
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %44, %4
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = and i64 %2, 31
  %53 = icmp samesign ugt i64 %52, 7
  br i1 %53, label %54, label %69

54:                                               ; preds = %48, %54
  %55 = phi i64 [ %66, %54 ], [ %50, %48 ]
  %56 = phi ptr [ %62, %54 ], [ %51, %48 ]
  %57 = phi i64 [ %67, %54 ], [ %52, %48 ]
  %58 = load i64, ptr %56, align 1, !tbaa !19
  %59 = mul i64 %58, -4417276706812531889
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 31)
  %61 = mul i64 %60, -7046029288634856825
  %62 = getelementptr inbounds nuw i8, ptr %56, i64 8
  %63 = xor i64 %61, %55
  %64 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 27)
  %65 = mul i64 %64, -7046029288634856825
  %66 = add i64 %65, -8796714831421723037
  %67 = add nsw i64 %57, -8
  %68 = icmp ugt i64 %67, 7
  br i1 %68, label %54, label %69, !llvm.loop !22

69:                                               ; preds = %54, %48
  %70 = phi i64 [ %52, %48 ], [ %67, %54 ]
  %71 = phi ptr [ %51, %48 ], [ %62, %54 ]
  %72 = phi i64 [ %50, %48 ], [ %66, %54 ]
  %73 = icmp samesign ugt i64 %70, 3
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i32, ptr %71, align 1, !tbaa !5
  %76 = zext i32 %75 to i64
  %77 = mul i64 %76, -7046029288634856825
  %78 = xor i64 %77, %72
  %79 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %80 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 23)
  %81 = mul i64 %80, -4417276706812531889
  %82 = add i64 %81, 1609587929392839161
  %83 = add nsw i64 %70, -4
  br label %84

84:                                               ; preds = %74, %69
  %85 = phi i64 [ %83, %74 ], [ %70, %69 ]
  %86 = phi ptr [ %79, %74 ], [ %71, %69 ]
  %87 = phi i64 [ %82, %74 ], [ %72, %69 ]
  %88 = icmp eq i64 %85, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %84, %89
  %90 = phi i64 [ %99, %89 ], [ %87, %84 ]
  %91 = phi ptr [ %93, %89 ], [ %86, %84 ]
  %92 = phi i64 [ %100, %89 ], [ %85, %84 ]
  %93 = getelementptr inbounds nuw i8, ptr %91, i64 1
  %94 = load i8, ptr %91, align 1, !tbaa !12
  %95 = zext i8 %94 to i64
  %96 = mul i64 %95, 2870177450012600261
  %97 = xor i64 %96, %90
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 11)
  %99 = mul i64 %98, -7046029288634856825
  %100 = add nsw i64 %92, -1
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %89, !llvm.loop !23

102:                                              ; preds = %89, %84
  %103 = phi i64 [ %87, %84 ], [ %99, %89 ]
  %104 = lshr i64 %103, 33
  %105 = xor i64 %104, %103
  %106 = mul i64 %105, -4417276706812531889
  %107 = lshr i64 %106, 29
  %108 = xor i64 %107, %106
  %109 = mul i64 %108, 1609587929392839161
  %110 = lshr i64 %109, 32
  %111 = xor i64 %110, %109
  ret i64 %111
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
define dso_local noundef i64 @XXH64_hashFromCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i64, ptr %0, align 1, !tbaa !19
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local i64 @XXH3_64bits(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %77

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %28, !prof !28

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1, !tbaa !19
  %8 = xor i64 %7, 7458650908927343033
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -8
  %11 = load i64, ptr %10, align 1, !tbaa !19
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
  br i1 %29, label %30, label %51, !prof !28

30:                                               ; preds = %28
  %31 = load i32, ptr %0, align 1, !tbaa !5
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %33 = getelementptr inbounds i8, ptr %32, i64 -4
  %34 = load i32, ptr %33, align 1, !tbaa !5
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
  %54 = load i8, ptr %0, align 1, !tbaa !12
  %55 = lshr i64 %1, 1
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !12
  %58 = getelementptr i8, ptr %0, i64 %1
  %59 = getelementptr i8, ptr %58, i64 -1
  %60 = load i8, ptr %59, align 1, !tbaa !12
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
  %88 = load i64, ptr %87, align 1, !tbaa !19, !noalias !29
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %90 = load i64, ptr %89, align 1, !tbaa !19, !noalias !29
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
  %102 = load i64, ptr %101, align 1, !tbaa !19, !noalias !32
  %103 = getelementptr inbounds i8, ptr %100, i64 -56
  %104 = load i64, ptr %103, align 1, !tbaa !19, !noalias !32
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
  %117 = load i64, ptr %116, align 1, !tbaa !19, !noalias !35
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %119 = load i64, ptr %118, align 1, !tbaa !19, !noalias !35
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
  %131 = load i64, ptr %130, align 1, !tbaa !19, !noalias !38
  %132 = getelementptr inbounds i8, ptr %129, i64 -40
  %133 = load i64, ptr %132, align 1, !tbaa !19, !noalias !38
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
  %146 = load i64, ptr %145, align 1, !tbaa !19, !noalias !41
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %148 = load i64, ptr %147, align 1, !tbaa !19, !noalias !41
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
  %160 = load i64, ptr %159, align 1, !tbaa !19, !noalias !44
  %161 = getelementptr inbounds i8, ptr %158, i64 -24
  %162 = load i64, ptr %161, align 1, !tbaa !19, !noalias !44
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
  %174 = load i64, ptr %0, align 1, !tbaa !19, !noalias !47
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %176 = load i64, ptr %175, align 1, !tbaa !19, !noalias !47
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
  %188 = load i64, ptr %187, align 1, !tbaa !19, !noalias !50
  %189 = getelementptr inbounds i8, ptr %186, i64 -8
  %190 = load i64, ptr %189, align 1, !tbaa !19, !noalias !50
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
  %208 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #32
  br label %211

209:                                              ; preds = %205
  %210 = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef %0, i64 noundef %1) #31
  br label %211

211:                                              ; preds = %53, %30, %6, %51, %172, %207, %209
  %212 = phi i64 [ %204, %172 ], [ %208, %207 ], [ %210, %209 ], [ %27, %6 ], [ %50, %30 ], [ %76, %53 ], [ 3244421341483603138, %51 ]
  ret i64 %212
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_default(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #11 {
  %3 = alloca [8 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #31, !noalias !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !53
  %4 = add i64 %1, -1
  %5 = icmp ult i64 %4, 1024
  br i1 %5, label %65, label %6

6:                                                ; preds = %2
  %7 = lshr i64 %4, 10
  %8 = tail call i64 @llvm.umax.i64(i64 %7, i64 1)
  br label %9

9:                                                ; preds = %6, %62
  %10 = phi i64 [ %63, %62 ], [ 0, %6 ]
  %11 = shl i64 %10, 10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  br label %13

13:                                               ; preds = %9, %40
  %14 = phi i64 [ 0, %9 ], [ %41, %40 ]
  %15 = shl nuw nsw i64 %14, 6
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 0, i32 3, i32 1), !noalias !57
  %18 = shl nuw nsw i64 %14, 3
  %19 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  br label %20

20:                                               ; preds = %13, %20
  %21 = phi i64 [ 0, %13 ], [ %38, %20 ]
  %22 = getelementptr inbounds nuw <2 x i64>, ptr %16, i64 %21
  %23 = load <2 x i64>, ptr %22, align 1, !tbaa !12, !noalias !63
  %24 = getelementptr inbounds nuw <2 x i64>, ptr %19, i64 %21
  %25 = load <2 x i64>, ptr %24, align 8, !tbaa !12, !noalias !63
  %26 = xor <2 x i64> %25, %23
  %27 = bitcast <2 x i64> %26 to <4 x i32>
  %28 = shufflevector <4 x i32> %27, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %29 = bitcast <4 x i32> %28 to <2 x i64>
  %30 = and <2 x i64> %26, splat (i64 4294967295)
  %31 = and <2 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <2 x i64> %31, %30
  %33 = shufflevector <2 x i64> %23, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %34 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %21
  %35 = load <2 x i64>, ptr %34, align 16, !tbaa !12, !alias.scope !63, !noalias !64
  %36 = add <2 x i64> %35, %33
  %37 = add <2 x i64> %36, %32
  store <2 x i64> %37, ptr %34, align 16, !tbaa !12, !alias.scope !63, !noalias !64
  %38 = add nuw nsw i64 %21, 1
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %20, !llvm.loop !69

40:                                               ; preds = %20
  %41 = add nuw nsw i64 %14, 1
  %42 = icmp eq i64 %41, 16
  br i1 %42, label %43, label %13, !llvm.loop !70

43:                                               ; preds = %40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  br label %44

44:                                               ; preds = %43, %44
  %45 = phi i64 [ 0, %43 ], [ %60, %44 ]
  %46 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %45
  %47 = load <2 x i64>, ptr %46, align 16, !tbaa !12, !alias.scope !74, !noalias !77
  %48 = lshr <2 x i64> %47, splat (i64 47)
  %49 = getelementptr inbounds nuw <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), i64 %45
  %50 = load <2 x i64>, ptr %49, align 16, !tbaa !12, !noalias !71
  %51 = xor <2 x i64> %50, %48
  %52 = xor <2 x i64> %51, %47
  %53 = bitcast <2 x i64> %52 to <4 x i32>
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %55 = bitcast <4 x i32> %54 to <2 x i64>
  %56 = and <2 x i64> %52, splat (i64 4294967295)
  %57 = mul nuw <2 x i64> %56, splat (i64 2654435761)
  %58 = mul <2 x i64> %55, splat (i64 -7046029290881679360)
  %59 = add <2 x i64> %58, %57
  store <2 x i64> %59, ptr %46, align 16, !tbaa !12, !alias.scope !74, !noalias !77
  %60 = add nuw nsw i64 %45, 1
  %61 = icmp eq i64 %60, 4
  br i1 %61, label %62, label %44, !llvm.loop !81

62:                                               ; preds = %44
  %63 = add nuw nsw i64 %10, 1
  %64 = icmp eq i64 %63, %8
  br i1 %64, label %65, label %9, !llvm.loop !82

65:                                               ; preds = %62, %2
  %66 = and i64 %4, -1024
  %67 = lshr i64 %4, 6
  %68 = and i64 %67, 15
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 %66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %70 = icmp eq i64 %68, 0
  br i1 %70, label %101, label %71

71:                                               ; preds = %65, %98
  %72 = phi i64 [ %99, %98 ], [ 0, %65 ]
  %73 = shl i64 %72, 6
  %74 = getelementptr inbounds nuw i8, ptr %69, i64 %73
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %75, i32 0, i32 3, i32 1), !noalias !83
  %76 = shl i64 %72, 3
  %77 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  br label %78

78:                                               ; preds = %71, %78
  %79 = phi i64 [ 0, %71 ], [ %96, %78 ]
  %80 = getelementptr inbounds nuw <2 x i64>, ptr %74, i64 %79
  %81 = load <2 x i64>, ptr %80, align 1, !tbaa !12, !noalias !89
  %82 = getelementptr inbounds nuw <2 x i64>, ptr %77, i64 %79
  %83 = load <2 x i64>, ptr %82, align 8, !tbaa !12, !noalias !89
  %84 = xor <2 x i64> %83, %81
  %85 = bitcast <2 x i64> %84 to <4 x i32>
  %86 = shufflevector <4 x i32> %85, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %87 = bitcast <4 x i32> %86 to <2 x i64>
  %88 = and <2 x i64> %84, splat (i64 4294967295)
  %89 = and <2 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <2 x i64> %89, %88
  %91 = shufflevector <2 x i64> %81, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %92 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %79
  %93 = load <2 x i64>, ptr %92, align 16, !tbaa !12, !alias.scope !89, !noalias !90
  %94 = add <2 x i64> %93, %91
  %95 = add <2 x i64> %94, %90
  store <2 x i64> %95, ptr %92, align 16, !tbaa !12, !alias.scope !89, !noalias !90
  %96 = add nuw nsw i64 %79, 1
  %97 = icmp eq i64 %96, 4
  br i1 %97, label %98, label %78, !llvm.loop !69

98:                                               ; preds = %78
  %99 = add nuw nsw i64 %72, 1
  %100 = icmp eq i64 %99, %68
  br i1 %100, label %101, label %71, !llvm.loop !70

101:                                              ; preds = %98, %65
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %103 = getelementptr inbounds i8, ptr %102, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  br label %104

104:                                              ; preds = %101, %104
  %105 = phi i64 [ 0, %101 ], [ %122, %104 ]
  %106 = getelementptr inbounds nuw <2 x i64>, ptr %103, i64 %105
  %107 = load <2 x i64>, ptr %106, align 1, !tbaa !12, !noalias !95
  %108 = getelementptr inbounds nuw <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i64 %105
  %109 = load <2 x i64>, ptr %108, align 1, !tbaa !12, !noalias !95
  %110 = xor <2 x i64> %109, %107
  %111 = bitcast <2 x i64> %110 to <4 x i32>
  %112 = shufflevector <4 x i32> %111, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %113 = bitcast <4 x i32> %112 to <2 x i64>
  %114 = and <2 x i64> %110, splat (i64 4294967295)
  %115 = and <2 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <2 x i64> %115, %114
  %117 = shufflevector <2 x i64> %107, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %118 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %105
  %119 = load <2 x i64>, ptr %118, align 16, !tbaa !12, !alias.scope !98, !noalias !99
  %120 = add <2 x i64> %119, %117
  %121 = add <2 x i64> %120, %116
  store <2 x i64> %121, ptr %118, align 16, !tbaa !12, !alias.scope !98, !noalias !99
  %122 = add nuw nsw i64 %105, 1
  %123 = icmp eq i64 %122, 4
  br i1 %123, label %124, label %104, !llvm.loop !69

124:                                              ; preds = %104
  %125 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi i64 [ 0, %124 ], [ %147, %126 ]
  %128 = phi i64 [ %125, %124 ], [ %146, %126 ]
  %129 = shl nuw nsw i64 %127, 4
  %130 = getelementptr inbounds nuw i8, ptr %3, i64 %129
  %131 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 11), i64 %129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %132 = load i64, ptr %130, align 16, !tbaa !19, !alias.scope !110, !noalias !111
  %133 = load i64, ptr %131, align 1, !tbaa !19, !alias.scope !105, !noalias !110
  %134 = xor i64 %133, %132
  %135 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %136 = load i64, ptr %135, align 8, !tbaa !19, !alias.scope !110, !noalias !111
  %137 = getelementptr inbounds nuw i8, ptr %131, i64 8
  %138 = load i64, ptr %137, align 1, !tbaa !19, !alias.scope !105, !noalias !110
  %139 = xor i64 %138, %136
  %140 = zext i64 %134 to i128
  %141 = zext i64 %139 to i128
  %142 = mul nuw i128 %141, %140
  %143 = lshr i128 %142, 64
  %144 = xor i128 %143, %142
  %145 = trunc i128 %144 to i64
  %146 = add i64 %128, %145
  %147 = add nuw nsw i64 %127, 1
  %148 = icmp eq i64 %147, 4
  br i1 %148, label %149, label %126, !llvm.loop !113

149:                                              ; preds = %126
  %150 = lshr i64 %146, 37
  %151 = xor i64 %150, %146
  %152 = mul i64 %151, 1609587791953885689
  %153 = lshr i64 %152, 32
  %154 = xor i64 %153, %152
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #31, !noalias !53
  ret i64 %154
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local i64 @XXH3_64bits_withSecret(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca [8 x i64], align 16
  %6 = icmp ult i64 %1, 17
  br i1 %6, label %7, label %114

7:                                                ; preds = %4
  %8 = icmp samesign ugt i64 %1, 8
  br i1 %8, label %9, label %41, !prof !28

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1, !tbaa !19
  %14 = xor i64 %13, %11
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i64, ptr %15, align 1, !tbaa !19
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1, !tbaa !19
  %19 = xor i64 %18, %16
  %20 = load i64, ptr %0, align 1, !tbaa !19
  %21 = xor i64 %14, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %23 = getelementptr inbounds i8, ptr %22, i64 -8
  %24 = load i64, ptr %23, align 1, !tbaa !19
  %25 = xor i64 %19, %24
  %26 = tail call noundef i64 @llvm.bswap.i64(i64 %21)
  %27 = add i64 %26, %1
  %28 = add i64 %27, %25
  %29 = zext i64 %21 to i128
  %30 = zext i64 %25 to i128
  %31 = mul nuw i128 %30, %29
  %32 = lshr i128 %31, 64
  %33 = xor i128 %32, %31
  %34 = trunc i128 %33 to i64
  %35 = add i64 %28, %34
  %36 = lshr i64 %35, 37
  %37 = xor i64 %36, %35
  %38 = mul i64 %37, 1609587791953885689
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  br label %438

41:                                               ; preds = %7
  %42 = icmp samesign ugt i64 %1, 3
  br i1 %42, label %43, label %69, !prof !28

43:                                               ; preds = %41
  %44 = load i32, ptr %0, align 1, !tbaa !5
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %46 = getelementptr inbounds i8, ptr %45, i64 -4
  %47 = load i32, ptr %46, align 1, !tbaa !5
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %49 = load i64, ptr %48, align 1, !tbaa !19
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = load i64, ptr %50, align 1, !tbaa !19
  %52 = xor i64 %51, %49
  %53 = zext i32 %47 to i64
  %54 = zext i32 %44 to i64
  %55 = shl nuw i64 %54, 32
  %56 = or disjoint i64 %55, %53
  %57 = xor i64 %52, %56
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 49)
  %59 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 24)
  %60 = xor i64 %58, %59
  %61 = xor i64 %60, %57
  %62 = mul i64 %61, -6939452855193903323
  %63 = lshr i64 %62, 35
  %64 = add nuw nsw i64 %63, %1
  %65 = xor i64 %64, %62
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 28
  %68 = xor i64 %67, %66
  br label %438

69:                                               ; preds = %41
  %70 = icmp eq i64 %1, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %69
  %72 = load i8, ptr %0, align 1, !tbaa !12
  %73 = lshr i64 %1, 1
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !12
  %76 = getelementptr i8, ptr %0, i64 %1
  %77 = getelementptr i8, ptr %76, i64 -1
  %78 = load i8, ptr %77, align 1, !tbaa !12
  %79 = zext i8 %72 to i64
  %80 = shl nuw nsw i64 %79, 16
  %81 = zext i8 %75 to i64
  %82 = shl nuw nsw i64 %81, 24
  %83 = or disjoint i64 %82, %80
  %84 = zext i8 %78 to i64
  %85 = or disjoint i64 %83, %84
  %86 = shl nuw nsw i64 %1, 8
  %87 = or disjoint i64 %85, %86
  %88 = load i32, ptr %2, align 1, !tbaa !5
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %90 = load i32, ptr %89, align 1, !tbaa !5
  %91 = xor i32 %90, %88
  %92 = zext i32 %91 to i64
  %93 = xor i64 %87, %92
  %94 = mul i64 %93, -4417276706812531889
  %95 = lshr i64 %94, 29
  %96 = xor i64 %95, %94
  %97 = mul i64 %96, 1609587929392839161
  %98 = lshr i64 %97, 32
  %99 = xor i64 %98, %97
  br label %438

100:                                              ; preds = %69
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %102 = load i64, ptr %101, align 1, !tbaa !19
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %104 = load i64, ptr %103, align 1, !tbaa !19
  %105 = xor i64 %104, %102
  %106 = lshr i64 %105, 33
  %107 = xor i64 %106, %105
  %108 = mul i64 %107, -4417276706812531889
  %109 = lshr i64 %108, 29
  %110 = xor i64 %109, %108
  %111 = mul i64 %110, 1609587929392839161
  %112 = lshr i64 %111, 32
  %113 = xor i64 %112, %111
  br label %438

114:                                              ; preds = %4
  %115 = icmp ult i64 %1, 129
  br i1 %115, label %116, label %273

116:                                              ; preds = %114
  %117 = mul i64 %1, -7046029288634856825
  %118 = icmp samesign ugt i64 %1, 32
  br i1 %118, label %119, label %233

119:                                              ; preds = %116
  %120 = icmp samesign ugt i64 %1, 64
  br i1 %120, label %121, label %196

121:                                              ; preds = %119
  %122 = icmp samesign ugt i64 %1, 96
  br i1 %122, label %123, label %159

123:                                              ; preds = %121
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %126 = load i64, ptr %124, align 1, !tbaa !19, !noalias !114
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %128 = load i64, ptr %127, align 1, !tbaa !19, !noalias !114
  %129 = load i64, ptr %125, align 1, !tbaa !19
  %130 = xor i64 %129, %126
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %132 = load i64, ptr %131, align 1, !tbaa !19
  %133 = xor i64 %132, %128
  %134 = zext i64 %130 to i128
  %135 = zext i64 %133 to i128
  %136 = mul nuw i128 %135, %134
  %137 = lshr i128 %136, 64
  %138 = xor i128 %137, %136
  %139 = trunc i128 %138 to i64
  %140 = add i64 %117, %139
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %142 = getelementptr inbounds i8, ptr %141, i64 -64
  %143 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %144 = load i64, ptr %142, align 1, !tbaa !19, !noalias !117
  %145 = getelementptr inbounds i8, ptr %141, i64 -56
  %146 = load i64, ptr %145, align 1, !tbaa !19, !noalias !117
  %147 = load i64, ptr %143, align 1, !tbaa !19
  %148 = xor i64 %147, %144
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %150 = load i64, ptr %149, align 1, !tbaa !19
  %151 = xor i64 %150, %146
  %152 = zext i64 %148 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %140, %157
  br label %159

159:                                              ; preds = %123, %121
  %160 = phi i64 [ %158, %123 ], [ %117, %121 ]
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %162 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %163 = load i64, ptr %161, align 1, !tbaa !19, !noalias !120
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %165 = load i64, ptr %164, align 1, !tbaa !19, !noalias !120
  %166 = load i64, ptr %162, align 1, !tbaa !19
  %167 = xor i64 %166, %163
  %168 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %169 = load i64, ptr %168, align 1, !tbaa !19
  %170 = xor i64 %169, %165
  %171 = zext i64 %167 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = add i64 %160, %176
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %179 = getelementptr inbounds i8, ptr %178, i64 -48
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %181 = load i64, ptr %179, align 1, !tbaa !19, !noalias !123
  %182 = getelementptr inbounds i8, ptr %178, i64 -40
  %183 = load i64, ptr %182, align 1, !tbaa !19, !noalias !123
  %184 = load i64, ptr %180, align 1, !tbaa !19
  %185 = xor i64 %184, %181
  %186 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %187 = load i64, ptr %186, align 1, !tbaa !19
  %188 = xor i64 %187, %183
  %189 = zext i64 %185 to i128
  %190 = zext i64 %188 to i128
  %191 = mul nuw i128 %190, %189
  %192 = lshr i128 %191, 64
  %193 = xor i128 %192, %191
  %194 = trunc i128 %193 to i64
  %195 = add i64 %177, %194
  br label %196

196:                                              ; preds = %159, %119
  %197 = phi i64 [ %195, %159 ], [ %117, %119 ]
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %199 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %200 = load i64, ptr %198, align 1, !tbaa !19, !noalias !126
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %202 = load i64, ptr %201, align 1, !tbaa !19, !noalias !126
  %203 = load i64, ptr %199, align 1, !tbaa !19
  %204 = xor i64 %203, %200
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %206 = load i64, ptr %205, align 1, !tbaa !19
  %207 = xor i64 %206, %202
  %208 = zext i64 %204 to i128
  %209 = zext i64 %207 to i128
  %210 = mul nuw i128 %209, %208
  %211 = lshr i128 %210, 64
  %212 = xor i128 %211, %210
  %213 = trunc i128 %212 to i64
  %214 = add i64 %197, %213
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %216 = getelementptr inbounds i8, ptr %215, i64 -32
  %217 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %218 = load i64, ptr %216, align 1, !tbaa !19, !noalias !129
  %219 = getelementptr inbounds i8, ptr %215, i64 -24
  %220 = load i64, ptr %219, align 1, !tbaa !19, !noalias !129
  %221 = load i64, ptr %217, align 1, !tbaa !19
  %222 = xor i64 %221, %218
  %223 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %224 = load i64, ptr %223, align 1, !tbaa !19
  %225 = xor i64 %224, %220
  %226 = zext i64 %222 to i128
  %227 = zext i64 %225 to i128
  %228 = mul nuw i128 %227, %226
  %229 = lshr i128 %228, 64
  %230 = xor i128 %229, %228
  %231 = trunc i128 %230 to i64
  %232 = add i64 %214, %231
  br label %233

233:                                              ; preds = %116, %196
  %234 = phi i64 [ %232, %196 ], [ %117, %116 ]
  %235 = load i64, ptr %0, align 1, !tbaa !19, !noalias !132
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %237 = load i64, ptr %236, align 1, !tbaa !19, !noalias !132
  %238 = load i64, ptr %2, align 1, !tbaa !19
  %239 = xor i64 %238, %235
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %241 = load i64, ptr %240, align 1, !tbaa !19
  %242 = xor i64 %241, %237
  %243 = zext i64 %239 to i128
  %244 = zext i64 %242 to i128
  %245 = mul nuw i128 %244, %243
  %246 = lshr i128 %245, 64
  %247 = xor i128 %246, %245
  %248 = trunc i128 %247 to i64
  %249 = add i64 %234, %248
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %251 = getelementptr inbounds i8, ptr %250, i64 -16
  %252 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %253 = load i64, ptr %251, align 1, !tbaa !19, !noalias !135
  %254 = getelementptr inbounds i8, ptr %250, i64 -8
  %255 = load i64, ptr %254, align 1, !tbaa !19, !noalias !135
  %256 = load i64, ptr %252, align 1, !tbaa !19
  %257 = xor i64 %256, %253
  %258 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %259 = load i64, ptr %258, align 1, !tbaa !19
  %260 = xor i64 %259, %255
  %261 = zext i64 %257 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %249, %266
  %268 = lshr i64 %267, 37
  %269 = xor i64 %268, %267
  %270 = mul i64 %269, 1609587791953885689
  %271 = lshr i64 %270, 32
  %272 = xor i64 %271, %270
  br label %438

273:                                              ; preds = %114
  %274 = icmp ult i64 %1, 241
  br i1 %274, label %275, label %277

275:                                              ; preds = %273
  %276 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0) #32
  br label %438

277:                                              ; preds = %273
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #31, !noalias !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !138
  %278 = add i64 %3, -64
  %279 = lshr i64 %278, 3
  %280 = shl i64 %279, 6
  %281 = add i64 %1, -1
  %282 = udiv i64 %281, %280
  %283 = urem i64 %281, %280
  %284 = icmp ugt i64 %280, %281
  br i1 %284, label %346, label %285

285:                                              ; preds = %277
  %286 = icmp ult i64 %278, 8
  %287 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %288 = getelementptr inbounds i8, ptr %287, i64 -64
  %289 = tail call i64 @llvm.umax.i64(i64 %279, i64 1)
  br label %290

290:                                              ; preds = %285, %343
  %291 = phi i64 [ 0, %285 ], [ %344, %343 ]
  %292 = mul i64 %291, %280
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 %292
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  br i1 %286, label %324, label %294

294:                                              ; preds = %290, %321
  %295 = phi i64 [ %322, %321 ], [ 0, %290 ]
  %296 = shl i64 %295, 6
  %297 = getelementptr inbounds nuw i8, ptr %293, i64 %296
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %298, i32 0, i32 3, i32 1), !noalias !142
  %299 = shl i64 %295, 3
  %300 = getelementptr inbounds nuw i8, ptr %2, i64 %299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  br label %301

301:                                              ; preds = %294, %301
  %302 = phi i64 [ 0, %294 ], [ %319, %301 ]
  %303 = getelementptr inbounds nuw <2 x i64>, ptr %297, i64 %302
  %304 = load <2 x i64>, ptr %303, align 1, !tbaa !12, !noalias !148
  %305 = getelementptr inbounds nuw <2 x i64>, ptr %300, i64 %302
  %306 = load <2 x i64>, ptr %305, align 1, !tbaa !12, !noalias !148
  %307 = xor <2 x i64> %306, %304
  %308 = bitcast <2 x i64> %307 to <4 x i32>
  %309 = shufflevector <4 x i32> %308, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %310 = bitcast <4 x i32> %309 to <2 x i64>
  %311 = and <2 x i64> %307, splat (i64 4294967295)
  %312 = and <2 x i64> %310, splat (i64 4294967295)
  %313 = mul nuw <2 x i64> %312, %311
  %314 = shufflevector <2 x i64> %304, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %315 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %302
  %316 = load <2 x i64>, ptr %315, align 16, !tbaa !12, !alias.scope !148, !noalias !149
  %317 = add <2 x i64> %316, %314
  %318 = add <2 x i64> %317, %313
  store <2 x i64> %318, ptr %315, align 16, !tbaa !12, !alias.scope !148, !noalias !149
  %319 = add nuw nsw i64 %302, 1
  %320 = icmp eq i64 %319, 4
  br i1 %320, label %321, label %301, !llvm.loop !69

321:                                              ; preds = %301
  %322 = add nuw nsw i64 %295, 1
  %323 = icmp eq i64 %322, %289
  br i1 %323, label %324, label %294, !llvm.loop !70

324:                                              ; preds = %321, %290
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  br label %325

325:                                              ; preds = %324, %325
  %326 = phi i64 [ 0, %324 ], [ %341, %325 ]
  %327 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %326
  %328 = load <2 x i64>, ptr %327, align 16, !tbaa !12, !alias.scope !157, !noalias !160
  %329 = lshr <2 x i64> %328, splat (i64 47)
  %330 = getelementptr inbounds nuw <2 x i64>, ptr %288, i64 %326
  %331 = load <2 x i64>, ptr %330, align 1, !tbaa !12, !noalias !154
  %332 = xor <2 x i64> %331, %329
  %333 = xor <2 x i64> %332, %328
  %334 = bitcast <2 x i64> %333 to <4 x i32>
  %335 = shufflevector <4 x i32> %334, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %336 = bitcast <4 x i32> %335 to <2 x i64>
  %337 = and <2 x i64> %333, splat (i64 4294967295)
  %338 = mul nuw <2 x i64> %337, splat (i64 2654435761)
  %339 = mul <2 x i64> %336, splat (i64 -7046029290881679360)
  %340 = add <2 x i64> %339, %338
  store <2 x i64> %340, ptr %327, align 16, !tbaa !12, !alias.scope !157, !noalias !160
  %341 = add nuw nsw i64 %326, 1
  %342 = icmp eq i64 %341, 4
  br i1 %342, label %343, label %325, !llvm.loop !81

343:                                              ; preds = %325
  %344 = add nuw i64 %291, 1
  %345 = icmp ult i64 %344, %282
  br i1 %345, label %290, label %346, !llvm.loop !82

346:                                              ; preds = %343, %277
  %347 = mul i64 %282, %280
  %348 = lshr i64 %283, 6
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 %347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %350 = icmp ult i64 %283, 64
  br i1 %350, label %381, label %351

351:                                              ; preds = %346, %378
  %352 = phi i64 [ %379, %378 ], [ 0, %346 ]
  %353 = shl i64 %352, 6
  %354 = getelementptr inbounds nuw i8, ptr %349, i64 %353
  %355 = getelementptr inbounds nuw i8, ptr %354, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %355, i32 0, i32 3, i32 1), !noalias !164
  %356 = shl i64 %352, 3
  %357 = getelementptr inbounds nuw i8, ptr %2, i64 %356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  br label %358

358:                                              ; preds = %351, %358
  %359 = phi i64 [ 0, %351 ], [ %376, %358 ]
  %360 = getelementptr inbounds nuw <2 x i64>, ptr %354, i64 %359
  %361 = load <2 x i64>, ptr %360, align 1, !tbaa !12, !noalias !170
  %362 = getelementptr inbounds nuw <2 x i64>, ptr %357, i64 %359
  %363 = load <2 x i64>, ptr %362, align 1, !tbaa !12, !noalias !170
  %364 = xor <2 x i64> %363, %361
  %365 = bitcast <2 x i64> %364 to <4 x i32>
  %366 = shufflevector <4 x i32> %365, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %367 = bitcast <4 x i32> %366 to <2 x i64>
  %368 = and <2 x i64> %364, splat (i64 4294967295)
  %369 = and <2 x i64> %367, splat (i64 4294967295)
  %370 = mul nuw <2 x i64> %369, %368
  %371 = shufflevector <2 x i64> %361, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %372 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %359
  %373 = load <2 x i64>, ptr %372, align 16, !tbaa !12, !alias.scope !170, !noalias !171
  %374 = add <2 x i64> %373, %371
  %375 = add <2 x i64> %374, %370
  store <2 x i64> %375, ptr %372, align 16, !tbaa !12, !alias.scope !170, !noalias !171
  %376 = add nuw nsw i64 %359, 1
  %377 = icmp eq i64 %376, 4
  br i1 %377, label %378, label %358, !llvm.loop !69

378:                                              ; preds = %358
  %379 = add nuw nsw i64 %352, 1
  %380 = icmp samesign ult i64 %379, %348
  br i1 %380, label %351, label %381, !llvm.loop !70

381:                                              ; preds = %378, %346
  %382 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %383 = getelementptr inbounds i8, ptr %382, i64 -64
  %384 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %385 = getelementptr inbounds i8, ptr %384, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  br label %386

386:                                              ; preds = %381, %386
  %387 = phi i64 [ 0, %381 ], [ %404, %386 ]
  %388 = getelementptr inbounds nuw <2 x i64>, ptr %383, i64 %387
  %389 = load <2 x i64>, ptr %388, align 1, !tbaa !12, !noalias !176
  %390 = getelementptr inbounds nuw <2 x i64>, ptr %385, i64 %387
  %391 = load <2 x i64>, ptr %390, align 1, !tbaa !12, !noalias !176
  %392 = xor <2 x i64> %391, %389
  %393 = bitcast <2 x i64> %392 to <4 x i32>
  %394 = shufflevector <4 x i32> %393, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %395 = bitcast <4 x i32> %394 to <2 x i64>
  %396 = and <2 x i64> %392, splat (i64 4294967295)
  %397 = and <2 x i64> %395, splat (i64 4294967295)
  %398 = mul nuw <2 x i64> %397, %396
  %399 = shufflevector <2 x i64> %389, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %400 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %387
  %401 = load <2 x i64>, ptr %400, align 16, !tbaa !12, !alias.scope !179, !noalias !180
  %402 = add <2 x i64> %401, %399
  %403 = add <2 x i64> %402, %398
  store <2 x i64> %403, ptr %400, align 16, !tbaa !12, !alias.scope !179, !noalias !180
  %404 = add nuw nsw i64 %387, 1
  %405 = icmp eq i64 %404, 4
  br i1 %405, label %406, label %386, !llvm.loop !69

406:                                              ; preds = %386
  %407 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %408 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  br label %409

409:                                              ; preds = %409, %406
  %410 = phi i64 [ 0, %406 ], [ %430, %409 ]
  %411 = phi i64 [ %408, %406 ], [ %429, %409 ]
  %412 = shl nuw nsw i64 %410, 4
  %413 = getelementptr inbounds nuw i8, ptr %5, i64 %412
  %414 = getelementptr inbounds nuw i8, ptr %407, i64 %412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %415 = load i64, ptr %413, align 16, !tbaa !19, !alias.scope !191, !noalias !192
  %416 = load i64, ptr %414, align 1, !tbaa !19, !alias.scope !186, !noalias !191
  %417 = xor i64 %416, %415
  %418 = getelementptr inbounds nuw i8, ptr %413, i64 8
  %419 = load i64, ptr %418, align 8, !tbaa !19, !alias.scope !191, !noalias !192
  %420 = getelementptr inbounds nuw i8, ptr %414, i64 8
  %421 = load i64, ptr %420, align 1, !tbaa !19, !alias.scope !186, !noalias !191
  %422 = xor i64 %421, %419
  %423 = zext i64 %417 to i128
  %424 = zext i64 %422 to i128
  %425 = mul nuw i128 %424, %423
  %426 = lshr i128 %425, 64
  %427 = xor i128 %426, %425
  %428 = trunc i128 %427 to i64
  %429 = add i64 %411, %428
  %430 = add nuw nsw i64 %410, 1
  %431 = icmp eq i64 %430, 4
  br i1 %431, label %432, label %409, !llvm.loop !113

432:                                              ; preds = %409
  %433 = lshr i64 %429, 37
  %434 = xor i64 %433, %429
  %435 = mul i64 %434, 1609587791953885689
  %436 = lshr i64 %435, 32
  %437 = xor i64 %436, %435
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #31, !noalias !138
  br label %438

438:                                              ; preds = %100, %71, %43, %9, %233, %275, %432
  %439 = phi i64 [ %272, %233 ], [ %276, %275 ], [ %437, %432 ], [ %40, %9 ], [ %68, %43 ], [ %99, %71 ], [ %113, %100 ]
  ret i64 %439
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i64 @XXH3_64bits_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %99

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %31, !prof !28

7:                                                ; preds = %5
  %8 = add i64 %2, 7458650908927343033
  %9 = sub i64 -5812251307325107654, %2
  %10 = load i64, ptr %0, align 1, !tbaa !19
  %11 = xor i64 %10, %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1, !tbaa !19
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
  br i1 %32, label %33, label %60, !prof !28

33:                                               ; preds = %31
  %34 = trunc i64 %2 to i32
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = zext i32 %35 to i64
  %37 = shl nuw i64 %36, 32
  %38 = xor i64 %37, %2
  %39 = load i32, ptr %0, align 1, !tbaa !5
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %41 = getelementptr inbounds i8, ptr %40, i64 -4
  %42 = load i32, ptr %41, align 1, !tbaa !5
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
  %63 = load i8, ptr %0, align 1, !tbaa !12
  %64 = lshr i64 %1, 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !12
  %67 = getelementptr i8, ptr %0, i64 %1
  %68 = getelementptr i8, ptr %67, i64 -1
  %69 = load i8, ptr %68, align 1, !tbaa !12
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
  %110 = load i64, ptr %109, align 1, !tbaa !19, !noalias !194
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %112 = load i64, ptr %111, align 1, !tbaa !19, !noalias !194
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
  %126 = load i64, ptr %125, align 1, !tbaa !19, !noalias !197
  %127 = getelementptr inbounds i8, ptr %124, i64 -56
  %128 = load i64, ptr %127, align 1, !tbaa !19, !noalias !197
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
  %143 = load i64, ptr %142, align 1, !tbaa !19, !noalias !200
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %145 = load i64, ptr %144, align 1, !tbaa !19, !noalias !200
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
  %159 = load i64, ptr %158, align 1, !tbaa !19, !noalias !203
  %160 = getelementptr inbounds i8, ptr %157, i64 -40
  %161 = load i64, ptr %160, align 1, !tbaa !19, !noalias !203
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
  %176 = load i64, ptr %175, align 1, !tbaa !19, !noalias !206
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %178 = load i64, ptr %177, align 1, !tbaa !19, !noalias !206
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
  %192 = load i64, ptr %191, align 1, !tbaa !19, !noalias !209
  %193 = getelementptr inbounds i8, ptr %190, i64 -24
  %194 = load i64, ptr %193, align 1, !tbaa !19, !noalias !209
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
  %208 = load i64, ptr %0, align 1, !tbaa !19, !noalias !212
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %210 = load i64, ptr %209, align 1, !tbaa !19, !noalias !212
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
  %224 = load i64, ptr %223, align 1, !tbaa !19, !noalias !215
  %225 = getelementptr inbounds i8, ptr %222, i64 -8
  %226 = load i64, ptr %225, align 1, !tbaa !19, !noalias !215
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
  %246 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2) #32
  br label %249

247:                                              ; preds = %243
  %248 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #31
  br label %249

249:                                              ; preds = %89, %62, %33, %7, %206, %245, %247
  %250 = phi i64 [ %242, %206 ], [ %246, %245 ], [ %248, %247 ], [ %30, %7 ], [ %59, %33 ], [ %88, %62 ], [ %98, %89 ]
  ret i64 %250
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #14 {
  %4 = alloca [8 x i64], align 16
  %5 = alloca [8 x i64], align 16
  %6 = alloca [192 x i8], align 16
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %160

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #31, !noalias !218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !218
  %9 = add i64 %1, -1
  %10 = icmp ult i64 %9, 1024
  br i1 %10, label %70, label %11

11:                                               ; preds = %8
  %12 = lshr i64 %9, 10
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 1)
  br label %14

14:                                               ; preds = %11, %67
  %15 = phi i64 [ %68, %67 ], [ 0, %11 ]
  %16 = shl i64 %15, 10
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  br label %18

18:                                               ; preds = %14, %45
  %19 = phi i64 [ 0, %14 ], [ %46, %45 ]
  %20 = shl nuw nsw i64 %19, 6
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %22, i32 0, i32 3, i32 1), !noalias !222
  %23 = shl nuw nsw i64 %19, 3
  %24 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  br label %25

25:                                               ; preds = %18, %25
  %26 = phi i64 [ 0, %18 ], [ %43, %25 ]
  %27 = getelementptr inbounds nuw <2 x i64>, ptr %21, i64 %26
  %28 = load <2 x i64>, ptr %27, align 1, !tbaa !12, !noalias !228
  %29 = getelementptr inbounds nuw <2 x i64>, ptr %24, i64 %26
  %30 = load <2 x i64>, ptr %29, align 8, !tbaa !12, !noalias !228
  %31 = xor <2 x i64> %30, %28
  %32 = bitcast <2 x i64> %31 to <4 x i32>
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %34 = bitcast <4 x i32> %33 to <2 x i64>
  %35 = and <2 x i64> %31, splat (i64 4294967295)
  %36 = and <2 x i64> %34, splat (i64 4294967295)
  %37 = mul nuw <2 x i64> %36, %35
  %38 = shufflevector <2 x i64> %28, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %39 = getelementptr inbounds nuw <2 x i64>, ptr %4, i64 %26
  %40 = load <2 x i64>, ptr %39, align 16, !tbaa !12, !alias.scope !228, !noalias !229
  %41 = add <2 x i64> %40, %38
  %42 = add <2 x i64> %41, %37
  store <2 x i64> %42, ptr %39, align 16, !tbaa !12, !alias.scope !228, !noalias !229
  %43 = add nuw nsw i64 %26, 1
  %44 = icmp eq i64 %43, 4
  br i1 %44, label %45, label %25, !llvm.loop !69

45:                                               ; preds = %25
  %46 = add nuw nsw i64 %19, 1
  %47 = icmp eq i64 %46, 16
  br i1 %47, label %48, label %18, !llvm.loop !70

48:                                               ; preds = %45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  br label %49

49:                                               ; preds = %48, %49
  %50 = phi i64 [ 0, %48 ], [ %65, %49 ]
  %51 = getelementptr inbounds nuw <2 x i64>, ptr %4, i64 %50
  %52 = load <2 x i64>, ptr %51, align 16, !tbaa !12, !alias.scope !237, !noalias !240
  %53 = lshr <2 x i64> %52, splat (i64 47)
  %54 = getelementptr inbounds nuw <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), i64 %50
  %55 = load <2 x i64>, ptr %54, align 16, !tbaa !12, !noalias !234
  %56 = xor <2 x i64> %55, %53
  %57 = xor <2 x i64> %56, %52
  %58 = bitcast <2 x i64> %57 to <4 x i32>
  %59 = shufflevector <4 x i32> %58, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %60 = bitcast <4 x i32> %59 to <2 x i64>
  %61 = and <2 x i64> %57, splat (i64 4294967295)
  %62 = mul nuw <2 x i64> %61, splat (i64 2654435761)
  %63 = mul <2 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <2 x i64> %63, %62
  store <2 x i64> %64, ptr %51, align 16, !tbaa !12, !alias.scope !237, !noalias !240
  %65 = add nuw nsw i64 %50, 1
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %49, !llvm.loop !81

67:                                               ; preds = %49
  %68 = add nuw nsw i64 %15, 1
  %69 = icmp eq i64 %68, %13
  br i1 %69, label %70, label %14, !llvm.loop !82

70:                                               ; preds = %67, %8
  %71 = and i64 %9, -1024
  %72 = lshr i64 %9, 6
  %73 = and i64 %72, 15
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %75 = icmp eq i64 %73, 0
  br i1 %75, label %106, label %76

76:                                               ; preds = %70, %103
  %77 = phi i64 [ %104, %103 ], [ 0, %70 ]
  %78 = shl i64 %77, 6
  %79 = getelementptr inbounds nuw i8, ptr %74, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %80, i32 0, i32 3, i32 1), !noalias !244
  %81 = shl i64 %77, 3
  %82 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %81
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  br label %83

83:                                               ; preds = %76, %83
  %84 = phi i64 [ 0, %76 ], [ %101, %83 ]
  %85 = getelementptr inbounds nuw <2 x i64>, ptr %79, i64 %84
  %86 = load <2 x i64>, ptr %85, align 1, !tbaa !12, !noalias !250
  %87 = getelementptr inbounds nuw <2 x i64>, ptr %82, i64 %84
  %88 = load <2 x i64>, ptr %87, align 8, !tbaa !12, !noalias !250
  %89 = xor <2 x i64> %88, %86
  %90 = bitcast <2 x i64> %89 to <4 x i32>
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %92 = bitcast <4 x i32> %91 to <2 x i64>
  %93 = and <2 x i64> %89, splat (i64 4294967295)
  %94 = and <2 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <2 x i64> %94, %93
  %96 = shufflevector <2 x i64> %86, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %97 = getelementptr inbounds nuw <2 x i64>, ptr %4, i64 %84
  %98 = load <2 x i64>, ptr %97, align 16, !tbaa !12, !alias.scope !250, !noalias !251
  %99 = add <2 x i64> %98, %96
  %100 = add <2 x i64> %99, %95
  store <2 x i64> %100, ptr %97, align 16, !tbaa !12, !alias.scope !250, !noalias !251
  %101 = add nuw nsw i64 %84, 1
  %102 = icmp eq i64 %101, 4
  br i1 %102, label %103, label %83, !llvm.loop !69

103:                                              ; preds = %83
  %104 = add nuw nsw i64 %77, 1
  %105 = icmp eq i64 %104, %73
  br i1 %105, label %106, label %76, !llvm.loop !70

106:                                              ; preds = %103, %70
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %108 = getelementptr inbounds i8, ptr %107, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  br label %109

109:                                              ; preds = %106, %109
  %110 = phi i64 [ 0, %106 ], [ %127, %109 ]
  %111 = getelementptr inbounds nuw <2 x i64>, ptr %108, i64 %110
  %112 = load <2 x i64>, ptr %111, align 1, !tbaa !12, !noalias !256
  %113 = getelementptr inbounds nuw <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i64 %110
  %114 = load <2 x i64>, ptr %113, align 1, !tbaa !12, !noalias !256
  %115 = xor <2 x i64> %114, %112
  %116 = bitcast <2 x i64> %115 to <4 x i32>
  %117 = shufflevector <4 x i32> %116, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %118 = bitcast <4 x i32> %117 to <2 x i64>
  %119 = and <2 x i64> %115, splat (i64 4294967295)
  %120 = and <2 x i64> %118, splat (i64 4294967295)
  %121 = mul nuw <2 x i64> %120, %119
  %122 = shufflevector <2 x i64> %112, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %123 = getelementptr inbounds nuw <2 x i64>, ptr %4, i64 %110
  %124 = load <2 x i64>, ptr %123, align 16, !tbaa !12, !alias.scope !259, !noalias !260
  %125 = add <2 x i64> %124, %122
  %126 = add <2 x i64> %125, %121
  store <2 x i64> %126, ptr %123, align 16, !tbaa !12, !alias.scope !259, !noalias !260
  %127 = add nuw nsw i64 %110, 1
  %128 = icmp eq i64 %127, 4
  br i1 %128, label %129, label %109, !llvm.loop !69

129:                                              ; preds = %109
  %130 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi i64 [ 0, %129 ], [ %152, %131 ]
  %133 = phi i64 [ %130, %129 ], [ %151, %131 ]
  %134 = shl nuw nsw i64 %132, 4
  %135 = getelementptr inbounds nuw i8, ptr %4, i64 %134
  %136 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 11), i64 %134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %137 = load i64, ptr %135, align 16, !tbaa !19, !alias.scope !271, !noalias !272
  %138 = load i64, ptr %136, align 1, !tbaa !19, !alias.scope !266, !noalias !271
  %139 = xor i64 %138, %137
  %140 = getelementptr inbounds nuw i8, ptr %135, i64 8
  %141 = load i64, ptr %140, align 8, !tbaa !19, !alias.scope !271, !noalias !272
  %142 = getelementptr inbounds nuw i8, ptr %136, i64 8
  %143 = load i64, ptr %142, align 1, !tbaa !19, !alias.scope !266, !noalias !271
  %144 = xor i64 %143, %141
  %145 = zext i64 %139 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %133, %150
  %152 = add nuw nsw i64 %132, 1
  %153 = icmp eq i64 %152, 4
  br i1 %153, label %154, label %131, !llvm.loop !113

154:                                              ; preds = %131
  %155 = lshr i64 %151, 37
  %156 = xor i64 %155, %151
  %157 = mul i64 %156, 1609587791953885689
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #31, !noalias !218
  br label %328

160:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #31
  %161 = sub i64 0, %2
  %162 = insertelement <2 x i64> poison, i64 %2, i64 0
  %163 = insertelement <2 x i64> %162, i64 %161, i64 1
  %164 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %6) #31, !srcloc !274
  br label %165

165:                                              ; preds = %160, %165
  %166 = phi i64 [ 0, %160 ], [ %171, %165 ]
  %167 = getelementptr inbounds nuw <2 x i64>, ptr @XXH3_kSecret, i64 %166
  %168 = load <2 x i64>, ptr %167, align 16, !tbaa !12
  %169 = add <2 x i64> %168, %163
  %170 = getelementptr inbounds nuw <2 x i64>, ptr %164, i64 %166
  store <2 x i64> %169, ptr %170, align 16, !tbaa !12
  %171 = add nuw nsw i64 %166, 1
  %172 = icmp eq i64 %171, 12
  br i1 %172, label %173, label %165, !llvm.loop !275

173:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #31, !noalias !276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !276
  %174 = add i64 %1, -1
  %175 = icmp ult i64 %174, 1024
  br i1 %175, label %236, label %176

176:                                              ; preds = %173
  %177 = lshr i64 %174, 10
  %178 = getelementptr inbounds nuw i8, ptr %6, i64 128
  %179 = call i64 @llvm.umax.i64(i64 %177, i64 1)
  br label %180

180:                                              ; preds = %176, %233
  %181 = phi i64 [ 0, %176 ], [ %234, %233 ]
  %182 = shl i64 %181, 10
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 %182
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  br label %184

184:                                              ; preds = %180, %211
  %185 = phi i64 [ 0, %180 ], [ %212, %211 ]
  %186 = shl nuw nsw i64 %185, 6
  %187 = getelementptr inbounds nuw i8, ptr %183, i64 %186
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %188, i32 0, i32 3, i32 1), !noalias !280
  %189 = shl nuw nsw i64 %185, 3
  %190 = getelementptr inbounds nuw i8, ptr %6, i64 %189
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  br label %191

191:                                              ; preds = %184, %191
  %192 = phi i64 [ 0, %184 ], [ %209, %191 ]
  %193 = getelementptr inbounds nuw <2 x i64>, ptr %187, i64 %192
  %194 = load <2 x i64>, ptr %193, align 1, !tbaa !12, !noalias !286
  %195 = getelementptr inbounds nuw <2 x i64>, ptr %190, i64 %192
  %196 = load <2 x i64>, ptr %195, align 8, !tbaa !12, !noalias !286
  %197 = xor <2 x i64> %196, %194
  %198 = bitcast <2 x i64> %197 to <4 x i32>
  %199 = shufflevector <4 x i32> %198, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %200 = bitcast <4 x i32> %199 to <2 x i64>
  %201 = and <2 x i64> %197, splat (i64 4294967295)
  %202 = and <2 x i64> %200, splat (i64 4294967295)
  %203 = mul nuw <2 x i64> %202, %201
  %204 = shufflevector <2 x i64> %194, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %205 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %192
  %206 = load <2 x i64>, ptr %205, align 16, !tbaa !12, !alias.scope !286, !noalias !287
  %207 = add <2 x i64> %206, %204
  %208 = add <2 x i64> %207, %203
  store <2 x i64> %208, ptr %205, align 16, !tbaa !12, !alias.scope !286, !noalias !287
  %209 = add nuw nsw i64 %192, 1
  %210 = icmp eq i64 %209, 4
  br i1 %210, label %211, label %191, !llvm.loop !69

211:                                              ; preds = %191
  %212 = add nuw nsw i64 %185, 1
  %213 = icmp eq i64 %212, 16
  br i1 %213, label %214, label %184, !llvm.loop !70

214:                                              ; preds = %211
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  br label %215

215:                                              ; preds = %214, %215
  %216 = phi i64 [ 0, %214 ], [ %231, %215 ]
  %217 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %216
  %218 = load <2 x i64>, ptr %217, align 16, !tbaa !12, !alias.scope !295, !noalias !298
  %219 = lshr <2 x i64> %218, splat (i64 47)
  %220 = getelementptr inbounds nuw <2 x i64>, ptr %178, i64 %216
  %221 = load <2 x i64>, ptr %220, align 16, !tbaa !12, !noalias !292
  %222 = xor <2 x i64> %221, %219
  %223 = xor <2 x i64> %222, %218
  %224 = bitcast <2 x i64> %223 to <4 x i32>
  %225 = shufflevector <4 x i32> %224, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %226 = bitcast <4 x i32> %225 to <2 x i64>
  %227 = and <2 x i64> %223, splat (i64 4294967295)
  %228 = mul nuw <2 x i64> %227, splat (i64 2654435761)
  %229 = mul <2 x i64> %226, splat (i64 -7046029290881679360)
  %230 = add <2 x i64> %229, %228
  store <2 x i64> %230, ptr %217, align 16, !tbaa !12, !alias.scope !295, !noalias !298
  %231 = add nuw nsw i64 %216, 1
  %232 = icmp eq i64 %231, 4
  br i1 %232, label %233, label %215, !llvm.loop !81

233:                                              ; preds = %215
  %234 = add nuw nsw i64 %181, 1
  %235 = icmp eq i64 %234, %179
  br i1 %235, label %236, label %180, !llvm.loop !82

236:                                              ; preds = %233, %173
  %237 = and i64 %174, -1024
  %238 = lshr i64 %174, 6
  %239 = and i64 %238, 15
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 %237
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %241 = icmp eq i64 %239, 0
  br i1 %241, label %272, label %242

242:                                              ; preds = %236, %269
  %243 = phi i64 [ %270, %269 ], [ 0, %236 ]
  %244 = shl i64 %243, 6
  %245 = getelementptr inbounds nuw i8, ptr %240, i64 %244
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %246, i32 0, i32 3, i32 1), !noalias !302
  %247 = shl i64 %243, 3
  %248 = getelementptr inbounds nuw i8, ptr %6, i64 %247
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  br label %249

249:                                              ; preds = %242, %249
  %250 = phi i64 [ 0, %242 ], [ %267, %249 ]
  %251 = getelementptr inbounds nuw <2 x i64>, ptr %245, i64 %250
  %252 = load <2 x i64>, ptr %251, align 1, !tbaa !12, !noalias !308
  %253 = getelementptr inbounds nuw <2 x i64>, ptr %248, i64 %250
  %254 = load <2 x i64>, ptr %253, align 8, !tbaa !12, !noalias !308
  %255 = xor <2 x i64> %254, %252
  %256 = bitcast <2 x i64> %255 to <4 x i32>
  %257 = shufflevector <4 x i32> %256, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %258 = bitcast <4 x i32> %257 to <2 x i64>
  %259 = and <2 x i64> %255, splat (i64 4294967295)
  %260 = and <2 x i64> %258, splat (i64 4294967295)
  %261 = mul nuw <2 x i64> %260, %259
  %262 = shufflevector <2 x i64> %252, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %263 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %250
  %264 = load <2 x i64>, ptr %263, align 16, !tbaa !12, !alias.scope !308, !noalias !309
  %265 = add <2 x i64> %264, %262
  %266 = add <2 x i64> %265, %261
  store <2 x i64> %266, ptr %263, align 16, !tbaa !12, !alias.scope !308, !noalias !309
  %267 = add nuw nsw i64 %250, 1
  %268 = icmp eq i64 %267, 4
  br i1 %268, label %269, label %249, !llvm.loop !69

269:                                              ; preds = %249
  %270 = add nuw nsw i64 %243, 1
  %271 = icmp eq i64 %270, %239
  br i1 %271, label %272, label %242, !llvm.loop !70

272:                                              ; preds = %269, %236
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %274 = getelementptr inbounds i8, ptr %273, i64 -64
  %275 = getelementptr inbounds nuw i8, ptr %6, i64 121
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  br label %276

276:                                              ; preds = %272, %276
  %277 = phi i64 [ 0, %272 ], [ %294, %276 ]
  %278 = getelementptr inbounds nuw <2 x i64>, ptr %274, i64 %277
  %279 = load <2 x i64>, ptr %278, align 1, !tbaa !12, !noalias !314
  %280 = getelementptr inbounds nuw <2 x i64>, ptr %275, i64 %277
  %281 = load <2 x i64>, ptr %280, align 1, !tbaa !12, !noalias !314
  %282 = xor <2 x i64> %281, %279
  %283 = bitcast <2 x i64> %282 to <4 x i32>
  %284 = shufflevector <4 x i32> %283, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %285 = bitcast <4 x i32> %284 to <2 x i64>
  %286 = and <2 x i64> %282, splat (i64 4294967295)
  %287 = and <2 x i64> %285, splat (i64 4294967295)
  %288 = mul nuw <2 x i64> %287, %286
  %289 = shufflevector <2 x i64> %279, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %290 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %277
  %291 = load <2 x i64>, ptr %290, align 16, !tbaa !12, !alias.scope !317, !noalias !318
  %292 = add <2 x i64> %291, %289
  %293 = add <2 x i64> %292, %288
  store <2 x i64> %293, ptr %290, align 16, !tbaa !12, !alias.scope !317, !noalias !318
  %294 = add nuw nsw i64 %277, 1
  %295 = icmp eq i64 %294, 4
  br i1 %295, label %296, label %276, !llvm.loop !69

296:                                              ; preds = %276
  %297 = getelementptr inbounds nuw i8, ptr %6, i64 11
  %298 = mul i64 %1, -7046029288634856825
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  br label %299

299:                                              ; preds = %299, %296
  %300 = phi i64 [ 0, %296 ], [ %320, %299 ]
  %301 = phi i64 [ %298, %296 ], [ %319, %299 ]
  %302 = shl nuw nsw i64 %300, 4
  %303 = getelementptr inbounds nuw i8, ptr %5, i64 %302
  %304 = getelementptr inbounds nuw i8, ptr %297, i64 %302
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %305 = load i64, ptr %303, align 16, !tbaa !19, !alias.scope !329, !noalias !330
  %306 = load i64, ptr %304, align 1, !tbaa !19, !alias.scope !324, !noalias !329
  %307 = xor i64 %306, %305
  %308 = getelementptr inbounds nuw i8, ptr %303, i64 8
  %309 = load i64, ptr %308, align 8, !tbaa !19, !alias.scope !329, !noalias !330
  %310 = getelementptr inbounds nuw i8, ptr %304, i64 8
  %311 = load i64, ptr %310, align 1, !tbaa !19, !alias.scope !324, !noalias !329
  %312 = xor i64 %311, %309
  %313 = zext i64 %307 to i128
  %314 = zext i64 %312 to i128
  %315 = mul nuw i128 %314, %313
  %316 = lshr i128 %315, 64
  %317 = xor i128 %316, %315
  %318 = trunc i128 %317 to i64
  %319 = add i64 %301, %318
  %320 = add nuw nsw i64 %300, 1
  %321 = icmp eq i64 %320, 4
  br i1 %321, label %322, label %299, !llvm.loop !113

322:                                              ; preds = %299
  %323 = lshr i64 %319, 37
  %324 = xor i64 %323, %319
  %325 = mul i64 %324, 1609587791953885689
  %326 = lshr i64 %325, 32
  %327 = xor i64 %326, %325
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #31, !noalias !276
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #31
  br label %328

328:                                              ; preds = %154, %322
  %329 = phi i64 [ %159, %154 ], [ %327, %322 ]
  ret i64 %329
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local i64 @XXH3_64bits_withSecretandSeed(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = alloca [8 x i64], align 16
  %7 = icmp ult i64 %1, 241
  br i1 %7, label %8, label %250

8:                                                ; preds = %5
  %9 = icmp ult i64 %1, 17
  br i1 %9, label %10, label %104

10:                                               ; preds = %8
  %11 = icmp samesign ugt i64 %1, 8
  br i1 %11, label %12, label %36, !prof !28

12:                                               ; preds = %10
  %13 = add i64 %4, 7458650908927343033
  %14 = sub i64 -5812251307325107654, %4
  %15 = load i64, ptr %0, align 1, !tbaa !19
  %16 = xor i64 %15, %13
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %18 = getelementptr inbounds i8, ptr %17, i64 -8
  %19 = load i64, ptr %18, align 1, !tbaa !19
  %20 = xor i64 %19, %14
  %21 = tail call noundef i64 @llvm.bswap.i64(i64 %16)
  %22 = add i64 %21, %1
  %23 = add i64 %22, %20
  %24 = zext i64 %16 to i128
  %25 = zext i64 %20 to i128
  %26 = mul nuw i128 %25, %24
  %27 = lshr i128 %26, 64
  %28 = xor i128 %27, %26
  %29 = trunc i128 %28 to i64
  %30 = add i64 %23, %29
  %31 = lshr i64 %30, 37
  %32 = xor i64 %31, %30
  %33 = mul i64 %32, 1609587791953885689
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  br label %411

36:                                               ; preds = %10
  %37 = icmp samesign ugt i64 %1, 3
  br i1 %37, label %38, label %65, !prof !28

38:                                               ; preds = %36
  %39 = trunc i64 %4 to i32
  %40 = tail call noundef i32 @llvm.bswap.i32(i32 %39)
  %41 = zext i32 %40 to i64
  %42 = shl nuw i64 %41, 32
  %43 = xor i64 %42, %4
  %44 = load i32, ptr %0, align 1, !tbaa !5
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %46 = getelementptr inbounds i8, ptr %45, i64 -4
  %47 = load i32, ptr %46, align 1, !tbaa !5
  %48 = sub i64 -4090762196417718878, %43
  %49 = zext i32 %47 to i64
  %50 = zext i32 %44 to i64
  %51 = shl nuw i64 %50, 32
  %52 = or disjoint i64 %51, %49
  %53 = xor i64 %52, %48
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 49)
  %55 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 24)
  %56 = xor i64 %54, %55
  %57 = xor i64 %56, %53
  %58 = mul i64 %57, -6939452855193903323
  %59 = lshr i64 %58, 35
  %60 = add nuw nsw i64 %59, %1
  %61 = xor i64 %60, %58
  %62 = mul i64 %61, -6939452855193903323
  %63 = lshr i64 %62, 28
  %64 = xor i64 %63, %62
  br label %411

65:                                               ; preds = %36
  %66 = icmp eq i64 %1, 0
  br i1 %66, label %94, label %67

67:                                               ; preds = %65
  %68 = load i8, ptr %0, align 1, !tbaa !12
  %69 = lshr i64 %1, 1
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !12
  %72 = getelementptr i8, ptr %0, i64 %1
  %73 = getelementptr i8, ptr %72, i64 -1
  %74 = load i8, ptr %73, align 1, !tbaa !12
  %75 = zext i8 %68 to i64
  %76 = shl nuw nsw i64 %75, 16
  %77 = zext i8 %71 to i64
  %78 = shl nuw nsw i64 %77, 24
  %79 = or disjoint i64 %78, %76
  %80 = zext i8 %74 to i64
  %81 = or disjoint i64 %79, %80
  %82 = shl nuw nsw i64 %1, 8
  %83 = or disjoint i64 %81, %82
  %84 = add i64 %4, 2267503259
  %85 = xor i64 %83, %84
  %86 = lshr i64 %85, 33
  %87 = xor i64 %86, %85
  %88 = mul i64 %87, -4417276706812531889
  %89 = lshr i64 %88, 29
  %90 = xor i64 %89, %88
  %91 = mul i64 %90, 1609587929392839161
  %92 = lshr i64 %91, 32
  %93 = xor i64 %92, %91
  br label %411

94:                                               ; preds = %65
  %95 = xor i64 %4, -8707998980786479652
  %96 = lshr i64 %95, 33
  %97 = xor i64 %96, %95
  %98 = mul i64 %97, -4417276706812531889
  %99 = lshr i64 %98, 29
  %100 = xor i64 %99, %98
  %101 = mul i64 %100, 1609587929392839161
  %102 = lshr i64 %101, 32
  %103 = xor i64 %102, %101
  br label %411

104:                                              ; preds = %8
  %105 = icmp ult i64 %1, 129
  br i1 %105, label %106, label %248

106:                                              ; preds = %104
  %107 = mul i64 %1, -7046029288634856825
  %108 = icmp samesign ugt i64 %1, 32
  br i1 %108, label %109, label %211

109:                                              ; preds = %106
  %110 = icmp samesign ugt i64 %1, 64
  br i1 %110, label %111, label %178

111:                                              ; preds = %109
  %112 = icmp samesign ugt i64 %1, 96
  br i1 %112, label %113, label %145

113:                                              ; preds = %111
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %115 = load i64, ptr %114, align 1, !tbaa !19, !noalias !332
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %117 = load i64, ptr %116, align 1, !tbaa !19, !noalias !332
  %118 = add i64 %4, 4554437623014685352
  %119 = xor i64 %115, %118
  %120 = sub i64 2111919702937427193, %4
  %121 = xor i64 %117, %120
  %122 = zext i64 %119 to i128
  %123 = zext i64 %121 to i128
  %124 = mul nuw i128 %123, %122
  %125 = lshr i128 %124, 64
  %126 = xor i128 %125, %124
  %127 = trunc i128 %126 to i64
  %128 = add i64 %107, %127
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %130 = getelementptr inbounds i8, ptr %129, i64 -64
  %131 = load i64, ptr %130, align 1, !tbaa !19, !noalias !335
  %132 = getelementptr inbounds i8, ptr %129, i64 -56
  %133 = load i64, ptr %132, align 1, !tbaa !19, !noalias !335
  %134 = add i64 %4, 3556072174620004746
  %135 = xor i64 %131, %134
  %136 = sub i64 7238261902898274248, %4
  %137 = xor i64 %133, %136
  %138 = zext i64 %135 to i128
  %139 = zext i64 %137 to i128
  %140 = mul nuw i128 %139, %138
  %141 = lshr i128 %140, 64
  %142 = xor i128 %141, %140
  %143 = trunc i128 %142 to i64
  %144 = add i64 %128, %143
  br label %145

145:                                              ; preds = %113, %111
  %146 = phi i64 [ %144, %113 ], [ %107, %111 ]
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %148 = load i64, ptr %147, align 1, !tbaa !19, !noalias !338
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %150 = load i64, ptr %149, align 1, !tbaa !19, !noalias !338
  %151 = add i64 %4, -3818837453329782724
  %152 = xor i64 %148, %151
  %153 = sub i64 -6688317018830679928, %4
  %154 = xor i64 %150, %153
  %155 = zext i64 %152 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %146, %160
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %163 = getelementptr inbounds i8, ptr %162, i64 -48
  %164 = load i64, ptr %163, align 1, !tbaa !19, !noalias !341
  %165 = getelementptr inbounds i8, ptr %162, i64 -40
  %166 = load i64, ptr %165, align 1, !tbaa !19, !noalias !341
  %167 = add i64 %4, 5690594596133299313
  %168 = xor i64 %164, %167
  %169 = sub i64 -2833645246901970632, %4
  %170 = xor i64 %166, %169
  %171 = zext i64 %168 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = add i64 %161, %176
  br label %178

178:                                              ; preds = %145, %109
  %179 = phi i64 [ %177, %145 ], [ %107, %109 ]
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %181 = load i64, ptr %180, align 1, !tbaa !19, !noalias !344
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %183 = load i64, ptr %182, align 1, !tbaa !19, !noalias !344
  %184 = add i64 %4, 8711581037947681227
  %185 = xor i64 %181, %184
  %186 = sub i64 2410270004345854594, %4
  %187 = xor i64 %183, %186
  %188 = zext i64 %185 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %179, %193
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %196 = getelementptr inbounds i8, ptr %195, i64 -32
  %197 = load i64, ptr %196, align 1, !tbaa !19, !noalias !347
  %198 = getelementptr inbounds i8, ptr %195, i64 -24
  %199 = load i64, ptr %198, align 1, !tbaa !19, !noalias !347
  %200 = add i64 %4, -8204357891075471176
  %201 = xor i64 %197, %200
  %202 = sub i64 5487137525590930912, %4
  %203 = xor i64 %199, %202
  %204 = zext i64 %201 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %194, %209
  br label %211

211:                                              ; preds = %106, %178
  %212 = phi i64 [ %210, %178 ], [ %107, %106 ]
  %213 = load i64, ptr %0, align 1, !tbaa !19, !noalias !350
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %215 = load i64, ptr %214, align 1, !tbaa !19, !noalias !350
  %216 = add i64 %4, -4734510112055689544
  %217 = xor i64 %213, %216
  %218 = sub i64 2066345149520216444, %4
  %219 = xor i64 %215, %218
  %220 = zext i64 %217 to i128
  %221 = zext i64 %219 to i128
  %222 = mul nuw i128 %221, %220
  %223 = lshr i128 %222, 64
  %224 = xor i128 %223, %222
  %225 = trunc i128 %224 to i64
  %226 = add i64 %212, %225
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %228 = getelementptr inbounds i8, ptr %227, i64 -16
  %229 = load i64, ptr %228, align 1, !tbaa !19, !noalias !353
  %230 = getelementptr inbounds i8, ptr %227, i64 -8
  %231 = load i64, ptr %230, align 1, !tbaa !19, !noalias !353
  %232 = add i64 %4, -2623469361688619810
  %233 = xor i64 %229, %232
  %234 = sub i64 2262974939099578482, %4
  %235 = xor i64 %231, %234
  %236 = zext i64 %233 to i128
  %237 = zext i64 %235 to i128
  %238 = mul nuw i128 %237, %236
  %239 = lshr i128 %238, 64
  %240 = xor i128 %239, %238
  %241 = trunc i128 %240 to i64
  %242 = add i64 %226, %241
  %243 = lshr i64 %242, 37
  %244 = xor i64 %243, %242
  %245 = mul i64 %244, 1609587791953885689
  %246 = lshr i64 %245, 32
  %247 = xor i64 %246, %245
  br label %411

248:                                              ; preds = %104
  %249 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %4) #32
  br label %411

250:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #31, !noalias !356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !356
  %251 = add i64 %3, -64
  %252 = lshr i64 %251, 3
  %253 = shl i64 %252, 6
  %254 = add i64 %1, -1
  %255 = udiv i64 %254, %253
  %256 = urem i64 %254, %253
  %257 = icmp ugt i64 %253, %254
  br i1 %257, label %319, label %258

258:                                              ; preds = %250
  %259 = icmp ult i64 %251, 8
  %260 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %261 = getelementptr inbounds i8, ptr %260, i64 -64
  %262 = tail call i64 @llvm.umax.i64(i64 %252, i64 1)
  br label %263

263:                                              ; preds = %258, %316
  %264 = phi i64 [ 0, %258 ], [ %317, %316 ]
  %265 = mul i64 %264, %253
  %266 = getelementptr inbounds nuw i8, ptr %0, i64 %265
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  br i1 %259, label %297, label %267

267:                                              ; preds = %263, %294
  %268 = phi i64 [ %295, %294 ], [ 0, %263 ]
  %269 = shl i64 %268, 6
  %270 = getelementptr inbounds nuw i8, ptr %266, i64 %269
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %271, i32 0, i32 3, i32 1), !noalias !360
  %272 = shl i64 %268, 3
  %273 = getelementptr inbounds nuw i8, ptr %2, i64 %272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  br label %274

274:                                              ; preds = %267, %274
  %275 = phi i64 [ 0, %267 ], [ %292, %274 ]
  %276 = getelementptr inbounds nuw <2 x i64>, ptr %270, i64 %275
  %277 = load <2 x i64>, ptr %276, align 1, !tbaa !12, !noalias !366
  %278 = getelementptr inbounds nuw <2 x i64>, ptr %273, i64 %275
  %279 = load <2 x i64>, ptr %278, align 1, !tbaa !12, !noalias !366
  %280 = xor <2 x i64> %279, %277
  %281 = bitcast <2 x i64> %280 to <4 x i32>
  %282 = shufflevector <4 x i32> %281, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %283 = bitcast <4 x i32> %282 to <2 x i64>
  %284 = and <2 x i64> %280, splat (i64 4294967295)
  %285 = and <2 x i64> %283, splat (i64 4294967295)
  %286 = mul nuw <2 x i64> %285, %284
  %287 = shufflevector <2 x i64> %277, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %288 = getelementptr inbounds nuw <2 x i64>, ptr %6, i64 %275
  %289 = load <2 x i64>, ptr %288, align 16, !tbaa !12, !alias.scope !366, !noalias !367
  %290 = add <2 x i64> %289, %287
  %291 = add <2 x i64> %290, %286
  store <2 x i64> %291, ptr %288, align 16, !tbaa !12, !alias.scope !366, !noalias !367
  %292 = add nuw nsw i64 %275, 1
  %293 = icmp eq i64 %292, 4
  br i1 %293, label %294, label %274, !llvm.loop !69

294:                                              ; preds = %274
  %295 = add nuw nsw i64 %268, 1
  %296 = icmp eq i64 %295, %262
  br i1 %296, label %297, label %267, !llvm.loop !70

297:                                              ; preds = %294, %263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  br label %298

298:                                              ; preds = %297, %298
  %299 = phi i64 [ 0, %297 ], [ %314, %298 ]
  %300 = getelementptr inbounds nuw <2 x i64>, ptr %6, i64 %299
  %301 = load <2 x i64>, ptr %300, align 16, !tbaa !12, !alias.scope !375, !noalias !378
  %302 = lshr <2 x i64> %301, splat (i64 47)
  %303 = getelementptr inbounds nuw <2 x i64>, ptr %261, i64 %299
  %304 = load <2 x i64>, ptr %303, align 1, !tbaa !12, !noalias !372
  %305 = xor <2 x i64> %304, %302
  %306 = xor <2 x i64> %305, %301
  %307 = bitcast <2 x i64> %306 to <4 x i32>
  %308 = shufflevector <4 x i32> %307, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %309 = bitcast <4 x i32> %308 to <2 x i64>
  %310 = and <2 x i64> %306, splat (i64 4294967295)
  %311 = mul nuw <2 x i64> %310, splat (i64 2654435761)
  %312 = mul <2 x i64> %309, splat (i64 -7046029290881679360)
  %313 = add <2 x i64> %312, %311
  store <2 x i64> %313, ptr %300, align 16, !tbaa !12, !alias.scope !375, !noalias !378
  %314 = add nuw nsw i64 %299, 1
  %315 = icmp eq i64 %314, 4
  br i1 %315, label %316, label %298, !llvm.loop !81

316:                                              ; preds = %298
  %317 = add nuw i64 %264, 1
  %318 = icmp ult i64 %317, %255
  br i1 %318, label %263, label %319, !llvm.loop !82

319:                                              ; preds = %316, %250
  %320 = mul i64 %255, %253
  %321 = lshr i64 %256, 6
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 %320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %323 = icmp ult i64 %256, 64
  br i1 %323, label %354, label %324

324:                                              ; preds = %319, %351
  %325 = phi i64 [ %352, %351 ], [ 0, %319 ]
  %326 = shl i64 %325, 6
  %327 = getelementptr inbounds nuw i8, ptr %322, i64 %326
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %328, i32 0, i32 3, i32 1), !noalias !382
  %329 = shl i64 %325, 3
  %330 = getelementptr inbounds nuw i8, ptr %2, i64 %329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  br label %331

331:                                              ; preds = %324, %331
  %332 = phi i64 [ 0, %324 ], [ %349, %331 ]
  %333 = getelementptr inbounds nuw <2 x i64>, ptr %327, i64 %332
  %334 = load <2 x i64>, ptr %333, align 1, !tbaa !12, !noalias !388
  %335 = getelementptr inbounds nuw <2 x i64>, ptr %330, i64 %332
  %336 = load <2 x i64>, ptr %335, align 1, !tbaa !12, !noalias !388
  %337 = xor <2 x i64> %336, %334
  %338 = bitcast <2 x i64> %337 to <4 x i32>
  %339 = shufflevector <4 x i32> %338, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %340 = bitcast <4 x i32> %339 to <2 x i64>
  %341 = and <2 x i64> %337, splat (i64 4294967295)
  %342 = and <2 x i64> %340, splat (i64 4294967295)
  %343 = mul nuw <2 x i64> %342, %341
  %344 = shufflevector <2 x i64> %334, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %345 = getelementptr inbounds nuw <2 x i64>, ptr %6, i64 %332
  %346 = load <2 x i64>, ptr %345, align 16, !tbaa !12, !alias.scope !388, !noalias !389
  %347 = add <2 x i64> %346, %344
  %348 = add <2 x i64> %347, %343
  store <2 x i64> %348, ptr %345, align 16, !tbaa !12, !alias.scope !388, !noalias !389
  %349 = add nuw nsw i64 %332, 1
  %350 = icmp eq i64 %349, 4
  br i1 %350, label %351, label %331, !llvm.loop !69

351:                                              ; preds = %331
  %352 = add nuw nsw i64 %325, 1
  %353 = icmp samesign ult i64 %352, %321
  br i1 %353, label %324, label %354, !llvm.loop !70

354:                                              ; preds = %351, %319
  %355 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %356 = getelementptr inbounds i8, ptr %355, i64 -64
  %357 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %358 = getelementptr inbounds i8, ptr %357, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  br label %359

359:                                              ; preds = %354, %359
  %360 = phi i64 [ 0, %354 ], [ %377, %359 ]
  %361 = getelementptr inbounds nuw <2 x i64>, ptr %356, i64 %360
  %362 = load <2 x i64>, ptr %361, align 1, !tbaa !12, !noalias !394
  %363 = getelementptr inbounds nuw <2 x i64>, ptr %358, i64 %360
  %364 = load <2 x i64>, ptr %363, align 1, !tbaa !12, !noalias !394
  %365 = xor <2 x i64> %364, %362
  %366 = bitcast <2 x i64> %365 to <4 x i32>
  %367 = shufflevector <4 x i32> %366, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %368 = bitcast <4 x i32> %367 to <2 x i64>
  %369 = and <2 x i64> %365, splat (i64 4294967295)
  %370 = and <2 x i64> %368, splat (i64 4294967295)
  %371 = mul nuw <2 x i64> %370, %369
  %372 = shufflevector <2 x i64> %362, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %373 = getelementptr inbounds nuw <2 x i64>, ptr %6, i64 %360
  %374 = load <2 x i64>, ptr %373, align 16, !tbaa !12, !alias.scope !397, !noalias !398
  %375 = add <2 x i64> %374, %372
  %376 = add <2 x i64> %375, %371
  store <2 x i64> %376, ptr %373, align 16, !tbaa !12, !alias.scope !397, !noalias !398
  %377 = add nuw nsw i64 %360, 1
  %378 = icmp eq i64 %377, 4
  br i1 %378, label %379, label %359, !llvm.loop !69

379:                                              ; preds = %359
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %381 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  br label %382

382:                                              ; preds = %382, %379
  %383 = phi i64 [ 0, %379 ], [ %403, %382 ]
  %384 = phi i64 [ %381, %379 ], [ %402, %382 ]
  %385 = shl nuw nsw i64 %383, 4
  %386 = getelementptr inbounds nuw i8, ptr %6, i64 %385
  %387 = getelementptr inbounds nuw i8, ptr %380, i64 %385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %388 = load i64, ptr %386, align 16, !tbaa !19, !alias.scope !409, !noalias !410
  %389 = load i64, ptr %387, align 1, !tbaa !19, !alias.scope !404, !noalias !409
  %390 = xor i64 %389, %388
  %391 = getelementptr inbounds nuw i8, ptr %386, i64 8
  %392 = load i64, ptr %391, align 8, !tbaa !19, !alias.scope !409, !noalias !410
  %393 = getelementptr inbounds nuw i8, ptr %387, i64 8
  %394 = load i64, ptr %393, align 1, !tbaa !19, !alias.scope !404, !noalias !409
  %395 = xor i64 %394, %392
  %396 = zext i64 %390 to i128
  %397 = zext i64 %395 to i128
  %398 = mul nuw i128 %397, %396
  %399 = lshr i128 %398, 64
  %400 = xor i128 %399, %398
  %401 = trunc i128 %400 to i64
  %402 = add i64 %384, %401
  %403 = add nuw nsw i64 %383, 1
  %404 = icmp eq i64 %403, 4
  br i1 %404, label %405, label %382, !llvm.loop !113

405:                                              ; preds = %382
  %406 = lshr i64 %402, 37
  %407 = xor i64 %406, %402
  %408 = mul i64 %407, 1609587791953885689
  %409 = lshr i64 %408, 32
  %410 = xor i64 %409, %408
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #31, !noalias !356
  br label %411

411:                                              ; preds = %248, %211, %12, %38, %67, %94, %405
  %412 = phi i64 [ %410, %405 ], [ %247, %211 ], [ %249, %248 ], [ %35, %12 ], [ %64, %38 ], [ %93, %67 ], [ %103, %94 ]
  ret i64 %412
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @XXH3_createState() local_unnamed_addr #15 {
  %1 = tail call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #30
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i64
  %5 = and i64 %4, 63
  %6 = sub nuw nsw i64 64, %5
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = trunc nuw nsw i64 %6 to i8
  %9 = getelementptr inbounds i8, ptr %7, i64 -1
  store i8 %8, ptr %9, align 1, !tbaa !12
  br label %10

10:                                               ; preds = %0, %3
  %11 = phi ptr [ %7, %3 ], [ null, %0 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 552
  store i64 0, ptr %14, align 8, !tbaa !412
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi ptr [ %11, %13 ], [ null, %10 ]
  ret ptr %16
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH3_freeState(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 -1
  %5 = load i8, ptr %4, align 1, !tbaa !12
  %6 = zext i8 %5 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  tail call void @free(ptr noundef nonnull %8) #31
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
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !19
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %6, align 16, !tbaa !19
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %7, align 8, !tbaa !19
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %8, align 32, !tbaa !19
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %9, align 8, !tbaa !19
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %10, align 16, !tbaa !19
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %12, align 8, !tbaa !412
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 0, ptr %13, align 4, !tbaa !416
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @XXH3_kSecret, ptr %14, align 8, !tbaa !417
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %15, align 32, !tbaa !418
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %16, align 8, !tbaa !419
  br label %17

17:                                               ; preds = %1, %3
  %18 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !19
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8, !tbaa !19
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16, !tbaa !19
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8, !tbaa !19
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32, !tbaa !19
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16, !tbaa !19
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8, !tbaa !19
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %14, align 8, !tbaa !412
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 0, ptr %15, align 4, !tbaa !416
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %16, align 8, !tbaa !417
  %17 = add i64 %2, -64
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %17, ptr %18, align 32, !tbaa !418
  %19 = lshr i64 %17, 3
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %19, ptr %20, align 8, !tbaa !419
  %21 = icmp eq ptr %1, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = icmp ult i64 %2, 136
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %22, %5, %3
  %26 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %54, label %4

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !19
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %9, align 16, !tbaa !19
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %10, align 8, !tbaa !19
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %11, align 32, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %12, align 8, !tbaa !19
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %13, align 16, !tbaa !19
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %15, align 8, !tbaa !412
  br label %47

16:                                               ; preds = %4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %18 = load i64, ptr %17, align 8, !tbaa !412
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %22 = load ptr, ptr %21, align 8, !tbaa !417
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %26 = sub i64 0, %1
  %27 = insertelement <2 x i64> poison, i64 %1, i64 0
  %28 = insertelement <2 x i64> %27, i64 %26, i64 1
  %29 = tail call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %25) #31, !srcloc !274
  br label %30

30:                                               ; preds = %24, %30
  %31 = phi i64 [ 0, %24 ], [ %36, %30 ]
  %32 = getelementptr inbounds nuw <2 x i64>, ptr @XXH3_kSecret, i64 %31
  %33 = load <2 x i64>, ptr %32, align 16, !tbaa !12
  %34 = add <2 x i64> %33, %28
  %35 = getelementptr inbounds nuw <2 x i64>, ptr %29, i64 %31
  store <2 x i64> %34, ptr %35, align 16, !tbaa !12
  %36 = add nuw nsw i64 %31, 1
  %37 = icmp eq i64 %36, 12
  br i1 %37, label %38, label %30, !llvm.loop !275

38:                                               ; preds = %30, %20
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !19
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %40, align 8, !tbaa !19
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %41, align 16, !tbaa !19
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %42, align 8, !tbaa !19
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %43, align 32, !tbaa !19
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %44, align 8, !tbaa !19
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %45, align 16, !tbaa !19
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %46, align 8, !tbaa !19
  store i64 %1, ptr %17, align 8, !tbaa !412
  br label %47

47:                                               ; preds = %6, %38
  %48 = phi i32 [ 1, %38 ], [ 0, %6 ]
  %49 = phi ptr [ null, %38 ], [ @XXH3_kSecret, %6 ]
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %48, ptr %50, align 4, !tbaa !416
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %49, ptr %51, align 8, !tbaa !417
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %52, align 32, !tbaa !418
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %53, align 8, !tbaa !419
  br label %54

54:                                               ; preds = %47, %2
  %55 = phi i32 [ 1, %2 ], [ 0, %47 ]
  ret i32 %55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSecretandSeed(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  %8 = icmp ult i64 %2, 136
  %9 = or i1 %7, %8
  br i1 %9, label %28, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %12, align 8, !tbaa !19
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %13, align 16, !tbaa !19
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %15, align 32, !tbaa !19
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %16, align 8, !tbaa !19
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %17, align 16, !tbaa !19
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %18, align 8, !tbaa !19
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %3, ptr %19, align 8, !tbaa !412
  %20 = icmp ne i64 %3, 0
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %21, ptr %22, align 4, !tbaa !416
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %23, align 8, !tbaa !417
  %24 = add i64 %2, -64
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %24, ptr %25, align 32, !tbaa !418
  %26 = lshr i64 %24, 3
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %26, ptr %27, align 8, !tbaa !419
  store i32 1, ptr %22, align 4, !tbaa !416
  br label %28

28:                                               ; preds = %4, %10
  %29 = phi i32 [ 0, %10 ], [ 1, %4 ]
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %504, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %8 = load ptr, ptr %7, align 8, !tbaa !417, !alias.scope !420, !noalias !423
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %11 = select i1 %9, ptr %10, ptr %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %13 = load i64, ptr %12, align 16, !tbaa !425, !alias.scope !420, !noalias !423
  %14 = add i64 %13, %2
  store i64 %14, ptr %12, align 16, !tbaa !425, !alias.scope !420, !noalias !423
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %16 = load i32, ptr %15, align 64, !tbaa !426, !alias.scope !420, !noalias !423
  %17 = zext i32 %16 to i64
  %18 = add i64 %2, %17
  %19 = icmp ult i64 %18, 257
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %23 = trunc i64 %2 to i32
  %24 = load i32, ptr %15, align 64, !tbaa !426, !alias.scope !420, !noalias !423
  %25 = add i32 %24, %23
  br label %502

26:                                               ; preds = %5
  %27 = icmp eq i32 %16, 0
  br i1 %27, label %170, label %28

28:                                               ; preds = %26
  %29 = sub i32 256, %16
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull readonly align 1 %1, i64 %30, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %36 = load i64, ptr %35, align 8, !tbaa !419, !alias.scope !420, !noalias !423
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %38 = load i64, ptr %37, align 32, !tbaa !418, !alias.scope !420, !noalias !423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %39 = load i64, ptr %34, align 8, !tbaa !19, !alias.scope !430, !noalias !432
  %40 = sub i64 %36, %39
  %41 = icmp ugt i64 %40, 4
  br i1 %41, label %133, label %42

42:                                               ; preds = %28
  %43 = sub nuw nsw i64 4, %40
  %44 = shl i64 %39, 3
  %45 = getelementptr inbounds nuw i8, ptr %11, i64 %44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %46 = icmp eq i64 %36, %39
  br i1 %46, label %77, label %47

47:                                               ; preds = %42, %74
  %48 = phi i64 [ %75, %74 ], [ 0, %42 ]
  %49 = shl i64 %48, 6
  %50 = getelementptr inbounds nuw i8, ptr %31, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %51, i32 0, i32 3, i32 1), !noalias !438
  %52 = shl i64 %48, 3
  %53 = getelementptr inbounds nuw i8, ptr %45, i64 %52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  br label %54

54:                                               ; preds = %47, %54
  %55 = phi i64 [ 0, %47 ], [ %72, %54 ]
  %56 = getelementptr inbounds nuw <2 x i64>, ptr %50, i64 %55
  %57 = load <2 x i64>, ptr %56, align 1, !tbaa !12, !noalias !442
  %58 = getelementptr inbounds nuw <2 x i64>, ptr %53, i64 %55
  %59 = load <2 x i64>, ptr %58, align 1, !tbaa !12, !noalias !442
  %60 = xor <2 x i64> %59, %57
  %61 = bitcast <2 x i64> %60 to <4 x i32>
  %62 = shufflevector <4 x i32> %61, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %63 = bitcast <4 x i32> %62 to <2 x i64>
  %64 = and <2 x i64> %60, splat (i64 4294967295)
  %65 = and <2 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <2 x i64> %65, %64
  %67 = shufflevector <2 x i64> %57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %68 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %55
  %69 = load <2 x i64>, ptr %68, align 16, !tbaa !12, !alias.scope !443, !noalias !444
  %70 = add <2 x i64> %69, %67
  %71 = add <2 x i64> %70, %66
  store <2 x i64> %71, ptr %68, align 16, !tbaa !12, !alias.scope !443, !noalias !444
  %72 = add nuw nsw i64 %55, 1
  %73 = icmp eq i64 %72, 4
  br i1 %73, label %74, label %54, !llvm.loop !69

74:                                               ; preds = %54
  %75 = add nuw i64 %48, 1
  %76 = icmp eq i64 %75, %40
  br i1 %76, label %77, label %47, !llvm.loop !70

77:                                               ; preds = %74, %42
  %78 = getelementptr inbounds nuw i8, ptr %11, i64 %38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  br label %79

79:                                               ; preds = %77, %79
  %80 = phi i64 [ 0, %77 ], [ %95, %79 ]
  %81 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %80
  %82 = load <2 x i64>, ptr %81, align 16, !tbaa !12, !alias.scope !452, !noalias !453
  %83 = lshr <2 x i64> %82, splat (i64 47)
  %84 = getelementptr inbounds nuw <2 x i64>, ptr %78, i64 %80
  %85 = load <2 x i64>, ptr %84, align 1, !tbaa !12, !noalias !455
  %86 = xor <2 x i64> %85, %83
  %87 = xor <2 x i64> %86, %82
  %88 = bitcast <2 x i64> %87 to <4 x i32>
  %89 = shufflevector <4 x i32> %88, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %90 = bitcast <4 x i32> %89 to <2 x i64>
  %91 = and <2 x i64> %87, splat (i64 4294967295)
  %92 = mul nuw <2 x i64> %91, splat (i64 2654435761)
  %93 = mul <2 x i64> %90, splat (i64 -7046029290881679360)
  %94 = add <2 x i64> %93, %92
  store <2 x i64> %94, ptr %81, align 16, !tbaa !12, !alias.scope !452, !noalias !453
  %95 = add nuw nsw i64 %80, 1
  %96 = icmp eq i64 %95, 4
  br i1 %96, label %97, label %79, !llvm.loop !81

97:                                               ; preds = %79
  %98 = shl nuw nsw i64 %40, 6
  %99 = getelementptr inbounds nuw i8, ptr %31, i64 %98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %100 = icmp eq i64 %40, 4
  br i1 %100, label %168, label %101

101:                                              ; preds = %97
  %102 = tail call i64 @llvm.umax.i64(i64 %43, i64 1)
  br label %103

103:                                              ; preds = %101, %130
  %104 = phi i64 [ %131, %130 ], [ 0, %101 ]
  %105 = shl i64 %104, 6
  %106 = getelementptr inbounds nuw i8, ptr %99, i64 %105
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %107, i32 0, i32 3, i32 1), !noalias !459
  %108 = shl i64 %104, 3
  %109 = getelementptr inbounds nuw i8, ptr %11, i64 %108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  br label %110

110:                                              ; preds = %103, %110
  %111 = phi i64 [ 0, %103 ], [ %128, %110 ]
  %112 = getelementptr inbounds nuw <2 x i64>, ptr %106, i64 %111
  %113 = load <2 x i64>, ptr %112, align 1, !tbaa !12, !noalias !463
  %114 = getelementptr inbounds nuw <2 x i64>, ptr %109, i64 %111
  %115 = load <2 x i64>, ptr %114, align 1, !tbaa !12, !noalias !463
  %116 = xor <2 x i64> %115, %113
  %117 = bitcast <2 x i64> %116 to <4 x i32>
  %118 = shufflevector <4 x i32> %117, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %119 = bitcast <4 x i32> %118 to <2 x i64>
  %120 = and <2 x i64> %116, splat (i64 4294967295)
  %121 = and <2 x i64> %119, splat (i64 4294967295)
  %122 = mul nuw <2 x i64> %121, %120
  %123 = shufflevector <2 x i64> %113, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %124 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %111
  %125 = load <2 x i64>, ptr %124, align 16, !tbaa !12, !alias.scope !464, !noalias !465
  %126 = add <2 x i64> %125, %123
  %127 = add <2 x i64> %126, %122
  store <2 x i64> %127, ptr %124, align 16, !tbaa !12, !alias.scope !464, !noalias !465
  %128 = add nuw nsw i64 %111, 1
  %129 = icmp eq i64 %128, 4
  br i1 %129, label %130, label %110, !llvm.loop !69

130:                                              ; preds = %110
  %131 = add nuw i64 %104, 1
  %132 = icmp eq i64 %131, %102
  br i1 %132, label %168, label %103, !llvm.loop !70

133:                                              ; preds = %28
  %134 = shl i64 %39, 3
  %135 = getelementptr inbounds nuw i8, ptr %11, i64 %134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  br label %136

136:                                              ; preds = %133, %163
  %137 = phi i64 [ 0, %133 ], [ %164, %163 ]
  %138 = shl nuw nsw i64 %137, 6
  %139 = getelementptr inbounds nuw i8, ptr %31, i64 %138
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %140, i32 0, i32 3, i32 1), !noalias !473
  %141 = shl nuw nsw i64 %137, 3
  %142 = getelementptr inbounds nuw i8, ptr %135, i64 %141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  br label %143

143:                                              ; preds = %136, %143
  %144 = phi i64 [ 0, %136 ], [ %161, %143 ]
  %145 = getelementptr inbounds nuw <2 x i64>, ptr %139, i64 %144
  %146 = load <2 x i64>, ptr %145, align 1, !tbaa !12, !noalias !477
  %147 = getelementptr inbounds nuw <2 x i64>, ptr %142, i64 %144
  %148 = load <2 x i64>, ptr %147, align 1, !tbaa !12, !noalias !477
  %149 = xor <2 x i64> %148, %146
  %150 = bitcast <2 x i64> %149 to <4 x i32>
  %151 = shufflevector <4 x i32> %150, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %152 = bitcast <4 x i32> %151 to <2 x i64>
  %153 = and <2 x i64> %149, splat (i64 4294967295)
  %154 = and <2 x i64> %152, splat (i64 4294967295)
  %155 = mul nuw <2 x i64> %154, %153
  %156 = shufflevector <2 x i64> %146, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %157 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %144
  %158 = load <2 x i64>, ptr %157, align 16, !tbaa !12, !alias.scope !478, !noalias !479
  %159 = add <2 x i64> %158, %156
  %160 = add <2 x i64> %159, %155
  store <2 x i64> %160, ptr %157, align 16, !tbaa !12, !alias.scope !478, !noalias !479
  %161 = add nuw nsw i64 %144, 1
  %162 = icmp eq i64 %161, 4
  br i1 %162, label %163, label %143, !llvm.loop !69

163:                                              ; preds = %143
  %164 = add nuw nsw i64 %137, 1
  %165 = icmp eq i64 %164, 4
  br i1 %165, label %166, label %136, !llvm.loop !70

166:                                              ; preds = %163
  %167 = add i64 %39, 4
  br label %168

168:                                              ; preds = %130, %97, %166
  %169 = phi i64 [ %167, %166 ], [ %43, %97 ], [ %43, %130 ]
  store i64 %169, ptr %34, align 8, !tbaa !19, !alias.scope !430, !noalias !432
  store i32 0, ptr %15, align 64, !tbaa !426, !alias.scope !420, !noalias !423
  br label %170

170:                                              ; preds = %168, %26
  %171 = phi ptr [ %33, %168 ], [ %1, %26 ]
  %172 = ptrtoint ptr %6 to i64
  %173 = ptrtoint ptr %171 to i64
  %174 = sub i64 %172, %173
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %176 = load i64, ptr %175, align 8, !tbaa !419, !alias.scope !420, !noalias !423
  %177 = shl i64 %176, 6
  %178 = icmp ugt i64 %174, %177
  br i1 %178, label %179, label %349

179:                                              ; preds = %170
  %180 = getelementptr inbounds i8, ptr %6, i64 -1
  %181 = ptrtoint ptr %180 to i64
  %182 = sub i64 %181, %173
  %183 = lshr i64 %182, 6
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %185 = load i64, ptr %184, align 8, !tbaa !484, !alias.scope !420, !noalias !423
  %186 = sub i64 %176, %185
  %187 = shl i64 %185, 3
  %188 = getelementptr inbounds nuw i8, ptr %11, i64 %187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %189 = icmp eq i64 %176, %185
  br i1 %189, label %220, label %190

190:                                              ; preds = %179, %217
  %191 = phi i64 [ %218, %217 ], [ 0, %179 ]
  %192 = shl i64 %191, 6
  %193 = getelementptr inbounds nuw i8, ptr %171, i64 %192
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %194, i32 0, i32 3, i32 1), !noalias !485
  %195 = shl i64 %191, 3
  %196 = getelementptr inbounds nuw i8, ptr %188, i64 %195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  br label %197

197:                                              ; preds = %190, %197
  %198 = phi i64 [ 0, %190 ], [ %215, %197 ]
  %199 = getelementptr inbounds nuw <2 x i64>, ptr %193, i64 %198
  %200 = load <2 x i64>, ptr %199, align 1, !tbaa !12, !noalias !491
  %201 = getelementptr inbounds nuw <2 x i64>, ptr %196, i64 %198
  %202 = load <2 x i64>, ptr %201, align 1, !tbaa !12, !noalias !491
  %203 = xor <2 x i64> %202, %200
  %204 = bitcast <2 x i64> %203 to <4 x i32>
  %205 = shufflevector <4 x i32> %204, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %206 = bitcast <4 x i32> %205 to <2 x i64>
  %207 = and <2 x i64> %203, splat (i64 4294967295)
  %208 = and <2 x i64> %206, splat (i64 4294967295)
  %209 = mul nuw <2 x i64> %208, %207
  %210 = shufflevector <2 x i64> %200, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %211 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %198
  %212 = load <2 x i64>, ptr %211, align 16, !tbaa !12, !alias.scope !491, !noalias !492
  %213 = add <2 x i64> %212, %210
  %214 = add <2 x i64> %213, %209
  store <2 x i64> %214, ptr %211, align 16, !tbaa !12, !alias.scope !491, !noalias !492
  %215 = add nuw nsw i64 %198, 1
  %216 = icmp eq i64 %215, 4
  br i1 %216, label %217, label %197, !llvm.loop !69

217:                                              ; preds = %197
  %218 = add nuw i64 %191, 1
  %219 = icmp eq i64 %218, %186
  br i1 %219, label %220, label %190, !llvm.loop !70

220:                                              ; preds = %217, %179
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %222 = load i64, ptr %221, align 32, !tbaa !418, !alias.scope !420, !noalias !423
  %223 = getelementptr inbounds nuw i8, ptr %11, i64 %222
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  br label %224

224:                                              ; preds = %220, %224
  %225 = phi i64 [ 0, %220 ], [ %240, %224 ]
  %226 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %225
  %227 = load <2 x i64>, ptr %226, align 16, !tbaa !12, !alias.scope !497, !noalias !500
  %228 = lshr <2 x i64> %227, splat (i64 47)
  %229 = getelementptr inbounds nuw <2 x i64>, ptr %223, i64 %225
  %230 = load <2 x i64>, ptr %229, align 1, !tbaa !12, !noalias !497
  %231 = xor <2 x i64> %230, %228
  %232 = xor <2 x i64> %231, %227
  %233 = bitcast <2 x i64> %232 to <4 x i32>
  %234 = shufflevector <4 x i32> %233, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %235 = bitcast <4 x i32> %234 to <2 x i64>
  %236 = and <2 x i64> %232, splat (i64 4294967295)
  %237 = mul nuw <2 x i64> %236, splat (i64 2654435761)
  %238 = mul <2 x i64> %235, splat (i64 -7046029290881679360)
  %239 = add <2 x i64> %238, %237
  store <2 x i64> %239, ptr %226, align 16, !tbaa !12, !alias.scope !497, !noalias !500
  %240 = add nuw nsw i64 %225, 1
  %241 = icmp eq i64 %240, 4
  br i1 %241, label %242, label %224, !llvm.loop !81

242:                                              ; preds = %224
  store i64 0, ptr %184, align 8, !tbaa !484, !alias.scope !420, !noalias !423
  %243 = shl i64 %186, 6
  %244 = getelementptr inbounds nuw i8, ptr %171, i64 %243
  %245 = sub i64 %183, %186
  %246 = load i64, ptr %175, align 8, !tbaa !419, !alias.scope !420, !noalias !423
  %247 = icmp ult i64 %245, %246
  br i1 %247, label %310, label %248

248:                                              ; preds = %242, %304
  %249 = phi i64 [ %305, %304 ], [ %246, %242 ]
  %250 = phi ptr [ %307, %304 ], [ %244, %242 ]
  %251 = phi i64 [ %308, %304 ], [ %245, %242 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %252 = icmp eq i64 %249, 0
  br i1 %252, label %283, label %253

253:                                              ; preds = %248, %280
  %254 = phi i64 [ %281, %280 ], [ 0, %248 ]
  %255 = shl i64 %254, 6
  %256 = getelementptr inbounds nuw i8, ptr %250, i64 %255
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %257, i32 0, i32 3, i32 1), !noalias !502
  %258 = shl i64 %254, 3
  %259 = getelementptr inbounds nuw i8, ptr %11, i64 %258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  br label %260

260:                                              ; preds = %253, %260
  %261 = phi i64 [ 0, %253 ], [ %278, %260 ]
  %262 = getelementptr inbounds nuw <2 x i64>, ptr %256, i64 %261
  %263 = load <2 x i64>, ptr %262, align 1, !tbaa !12, !noalias !508
  %264 = getelementptr inbounds nuw <2 x i64>, ptr %259, i64 %261
  %265 = load <2 x i64>, ptr %264, align 1, !tbaa !12, !noalias !508
  %266 = xor <2 x i64> %265, %263
  %267 = bitcast <2 x i64> %266 to <4 x i32>
  %268 = shufflevector <4 x i32> %267, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %269 = bitcast <4 x i32> %268 to <2 x i64>
  %270 = and <2 x i64> %266, splat (i64 4294967295)
  %271 = and <2 x i64> %269, splat (i64 4294967295)
  %272 = mul nuw <2 x i64> %271, %270
  %273 = shufflevector <2 x i64> %263, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %274 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %261
  %275 = load <2 x i64>, ptr %274, align 16, !tbaa !12, !alias.scope !508, !noalias !509
  %276 = add <2 x i64> %275, %273
  %277 = add <2 x i64> %276, %272
  store <2 x i64> %277, ptr %274, align 16, !tbaa !12, !alias.scope !508, !noalias !509
  %278 = add nuw nsw i64 %261, 1
  %279 = icmp eq i64 %278, 4
  br i1 %279, label %280, label %260, !llvm.loop !69

280:                                              ; preds = %260
  %281 = add nuw i64 %254, 1
  %282 = icmp eq i64 %281, %249
  br i1 %282, label %283, label %253, !llvm.loop !70

283:                                              ; preds = %280, %248
  %284 = load i64, ptr %221, align 32, !tbaa !418, !alias.scope !420, !noalias !423
  %285 = getelementptr inbounds nuw i8, ptr %11, i64 %284
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  br label %286

286:                                              ; preds = %283, %286
  %287 = phi i64 [ 0, %283 ], [ %302, %286 ]
  %288 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %287
  %289 = load <2 x i64>, ptr %288, align 16, !tbaa !12, !alias.scope !514, !noalias !517
  %290 = lshr <2 x i64> %289, splat (i64 47)
  %291 = getelementptr inbounds nuw <2 x i64>, ptr %285, i64 %287
  %292 = load <2 x i64>, ptr %291, align 1, !tbaa !12, !noalias !514
  %293 = xor <2 x i64> %292, %290
  %294 = xor <2 x i64> %293, %289
  %295 = bitcast <2 x i64> %294 to <4 x i32>
  %296 = shufflevector <4 x i32> %295, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %297 = bitcast <4 x i32> %296 to <2 x i64>
  %298 = and <2 x i64> %294, splat (i64 4294967295)
  %299 = mul nuw <2 x i64> %298, splat (i64 2654435761)
  %300 = mul <2 x i64> %297, splat (i64 -7046029290881679360)
  %301 = add <2 x i64> %300, %299
  store <2 x i64> %301, ptr %288, align 16, !tbaa !12, !alias.scope !514, !noalias !517
  %302 = add nuw nsw i64 %287, 1
  %303 = icmp eq i64 %302, 4
  br i1 %303, label %304, label %286, !llvm.loop !81

304:                                              ; preds = %286
  %305 = load i64, ptr %175, align 8, !tbaa !419, !alias.scope !420, !noalias !423
  %306 = shl i64 %305, 6
  %307 = getelementptr inbounds nuw i8, ptr %250, i64 %306
  %308 = sub i64 %251, %305
  %309 = icmp ult i64 %308, %305
  br i1 %309, label %310, label %248, !llvm.loop !519

310:                                              ; preds = %304, %242
  %311 = phi i64 [ %245, %242 ], [ %308, %304 ]
  %312 = phi ptr [ %244, %242 ], [ %307, %304 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %313 = icmp eq i64 %311, 0
  br i1 %313, label %344, label %314

314:                                              ; preds = %310, %341
  %315 = phi i64 [ %342, %341 ], [ 0, %310 ]
  %316 = shl i64 %315, 6
  %317 = getelementptr inbounds nuw i8, ptr %312, i64 %316
  %318 = getelementptr inbounds nuw i8, ptr %317, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %318, i32 0, i32 3, i32 1), !noalias !520
  %319 = shl i64 %315, 3
  %320 = getelementptr inbounds nuw i8, ptr %11, i64 %319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  br label %321

321:                                              ; preds = %314, %321
  %322 = phi i64 [ 0, %314 ], [ %339, %321 ]
  %323 = getelementptr inbounds nuw <2 x i64>, ptr %317, i64 %322
  %324 = load <2 x i64>, ptr %323, align 1, !tbaa !12, !noalias !526
  %325 = getelementptr inbounds nuw <2 x i64>, ptr %320, i64 %322
  %326 = load <2 x i64>, ptr %325, align 1, !tbaa !12, !noalias !526
  %327 = xor <2 x i64> %326, %324
  %328 = bitcast <2 x i64> %327 to <4 x i32>
  %329 = shufflevector <4 x i32> %328, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %330 = bitcast <4 x i32> %329 to <2 x i64>
  %331 = and <2 x i64> %327, splat (i64 4294967295)
  %332 = and <2 x i64> %330, splat (i64 4294967295)
  %333 = mul nuw <2 x i64> %332, %331
  %334 = shufflevector <2 x i64> %324, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %335 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %322
  %336 = load <2 x i64>, ptr %335, align 16, !tbaa !12, !alias.scope !526, !noalias !527
  %337 = add <2 x i64> %336, %334
  %338 = add <2 x i64> %337, %333
  store <2 x i64> %338, ptr %335, align 16, !tbaa !12, !alias.scope !526, !noalias !527
  %339 = add nuw nsw i64 %322, 1
  %340 = icmp eq i64 %339, 4
  br i1 %340, label %341, label %321, !llvm.loop !69

341:                                              ; preds = %321
  %342 = add nuw i64 %315, 1
  %343 = icmp eq i64 %342, %311
  br i1 %343, label %344, label %314, !llvm.loop !70

344:                                              ; preds = %341, %310
  %345 = shl i64 %311, 6
  %346 = getelementptr inbounds nuw i8, ptr %312, i64 %345
  store i64 %311, ptr %184, align 8, !tbaa !484, !alias.scope !420, !noalias !423
  %347 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %348 = getelementptr inbounds i8, ptr %346, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %347, ptr noundef nonnull readonly align 1 dereferenceable(64) %348, i64 64, i1 false)
  br label %496

349:                                              ; preds = %170
  %350 = icmp sgt i64 %174, 256
  br i1 %350, label %351, label %496

351:                                              ; preds = %349
  %352 = getelementptr inbounds i8, ptr %6, i64 -256
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %355 = load i64, ptr %353, align 8, !tbaa !19, !alias.scope !532, !noalias !535
  br label %356

356:                                              ; preds = %489, %351
  %357 = phi i64 [ %355, %351 ], [ %490, %489 ]
  %358 = phi ptr [ %171, %351 ], [ %491, %489 ]
  %359 = load i64, ptr %175, align 8, !tbaa !419, !alias.scope !420, !noalias !423
  %360 = load i64, ptr %354, align 32, !tbaa !418, !alias.scope !420, !noalias !423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %361 = sub i64 %359, %357
  %362 = icmp ugt i64 %361, 4
  br i1 %362, label %454, label %363

363:                                              ; preds = %356
  %364 = sub nuw nsw i64 4, %361
  %365 = shl i64 %357, 3
  %366 = getelementptr inbounds nuw i8, ptr %11, i64 %365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %367 = icmp eq i64 %359, %357
  br i1 %367, label %398, label %368

368:                                              ; preds = %363, %395
  %369 = phi i64 [ %396, %395 ], [ 0, %363 ]
  %370 = shl i64 %369, 6
  %371 = getelementptr inbounds nuw i8, ptr %358, i64 %370
  %372 = getelementptr inbounds nuw i8, ptr %371, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %372, i32 0, i32 3, i32 1), !noalias !543
  %373 = shl i64 %369, 3
  %374 = getelementptr inbounds nuw i8, ptr %366, i64 %373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  br label %375

375:                                              ; preds = %368, %375
  %376 = phi i64 [ 0, %368 ], [ %393, %375 ]
  %377 = getelementptr inbounds nuw <2 x i64>, ptr %371, i64 %376
  %378 = load <2 x i64>, ptr %377, align 1, !tbaa !12, !noalias !547
  %379 = getelementptr inbounds nuw <2 x i64>, ptr %374, i64 %376
  %380 = load <2 x i64>, ptr %379, align 1, !tbaa !12, !noalias !547
  %381 = xor <2 x i64> %380, %378
  %382 = bitcast <2 x i64> %381 to <4 x i32>
  %383 = shufflevector <4 x i32> %382, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %384 = bitcast <4 x i32> %383 to <2 x i64>
  %385 = and <2 x i64> %381, splat (i64 4294967295)
  %386 = and <2 x i64> %384, splat (i64 4294967295)
  %387 = mul nuw <2 x i64> %386, %385
  %388 = shufflevector <2 x i64> %378, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %389 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %376
  %390 = load <2 x i64>, ptr %389, align 16, !tbaa !12, !alias.scope !548, !noalias !549
  %391 = add <2 x i64> %390, %388
  %392 = add <2 x i64> %391, %387
  store <2 x i64> %392, ptr %389, align 16, !tbaa !12, !alias.scope !548, !noalias !549
  %393 = add nuw nsw i64 %376, 1
  %394 = icmp eq i64 %393, 4
  br i1 %394, label %395, label %375, !llvm.loop !69

395:                                              ; preds = %375
  %396 = add nuw i64 %369, 1
  %397 = icmp eq i64 %396, %361
  br i1 %397, label %398, label %368, !llvm.loop !70

398:                                              ; preds = %395, %363
  %399 = getelementptr inbounds nuw i8, ptr %11, i64 %360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  br label %400

400:                                              ; preds = %398, %400
  %401 = phi i64 [ 0, %398 ], [ %416, %400 ]
  %402 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %401
  %403 = load <2 x i64>, ptr %402, align 16, !tbaa !12, !alias.scope !557, !noalias !558
  %404 = lshr <2 x i64> %403, splat (i64 47)
  %405 = getelementptr inbounds nuw <2 x i64>, ptr %399, i64 %401
  %406 = load <2 x i64>, ptr %405, align 1, !tbaa !12, !noalias !560
  %407 = xor <2 x i64> %406, %404
  %408 = xor <2 x i64> %407, %403
  %409 = bitcast <2 x i64> %408 to <4 x i32>
  %410 = shufflevector <4 x i32> %409, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %411 = bitcast <4 x i32> %410 to <2 x i64>
  %412 = and <2 x i64> %408, splat (i64 4294967295)
  %413 = mul nuw <2 x i64> %412, splat (i64 2654435761)
  %414 = mul <2 x i64> %411, splat (i64 -7046029290881679360)
  %415 = add <2 x i64> %414, %413
  store <2 x i64> %415, ptr %402, align 16, !tbaa !12, !alias.scope !557, !noalias !558
  %416 = add nuw nsw i64 %401, 1
  %417 = icmp eq i64 %416, 4
  br i1 %417, label %418, label %400, !llvm.loop !81

418:                                              ; preds = %400
  %419 = shl nuw nsw i64 %361, 6
  %420 = getelementptr inbounds nuw i8, ptr %358, i64 %419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %421 = icmp eq i64 %361, 4
  br i1 %421, label %489, label %422

422:                                              ; preds = %418
  %423 = tail call i64 @llvm.umax.i64(i64 %364, i64 1)
  br label %424

424:                                              ; preds = %422, %451
  %425 = phi i64 [ %452, %451 ], [ 0, %422 ]
  %426 = shl i64 %425, 6
  %427 = getelementptr inbounds nuw i8, ptr %420, i64 %426
  %428 = getelementptr inbounds nuw i8, ptr %427, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %428, i32 0, i32 3, i32 1), !noalias !564
  %429 = shl i64 %425, 3
  %430 = getelementptr inbounds nuw i8, ptr %11, i64 %429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  br label %431

431:                                              ; preds = %424, %431
  %432 = phi i64 [ 0, %424 ], [ %449, %431 ]
  %433 = getelementptr inbounds nuw <2 x i64>, ptr %427, i64 %432
  %434 = load <2 x i64>, ptr %433, align 1, !tbaa !12, !noalias !568
  %435 = getelementptr inbounds nuw <2 x i64>, ptr %430, i64 %432
  %436 = load <2 x i64>, ptr %435, align 1, !tbaa !12, !noalias !568
  %437 = xor <2 x i64> %436, %434
  %438 = bitcast <2 x i64> %437 to <4 x i32>
  %439 = shufflevector <4 x i32> %438, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %440 = bitcast <4 x i32> %439 to <2 x i64>
  %441 = and <2 x i64> %437, splat (i64 4294967295)
  %442 = and <2 x i64> %440, splat (i64 4294967295)
  %443 = mul nuw <2 x i64> %442, %441
  %444 = shufflevector <2 x i64> %434, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %445 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %432
  %446 = load <2 x i64>, ptr %445, align 16, !tbaa !12, !alias.scope !569, !noalias !570
  %447 = add <2 x i64> %446, %444
  %448 = add <2 x i64> %447, %443
  store <2 x i64> %448, ptr %445, align 16, !tbaa !12, !alias.scope !569, !noalias !570
  %449 = add nuw nsw i64 %432, 1
  %450 = icmp eq i64 %449, 4
  br i1 %450, label %451, label %431, !llvm.loop !69

451:                                              ; preds = %431
  %452 = add nuw i64 %425, 1
  %453 = icmp eq i64 %452, %423
  br i1 %453, label %489, label %424, !llvm.loop !70

454:                                              ; preds = %356
  %455 = shl i64 %357, 3
  %456 = getelementptr inbounds nuw i8, ptr %11, i64 %455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  br label %457

457:                                              ; preds = %454, %484
  %458 = phi i64 [ 0, %454 ], [ %485, %484 ]
  %459 = shl nuw nsw i64 %458, 6
  %460 = getelementptr inbounds nuw i8, ptr %358, i64 %459
  %461 = getelementptr inbounds nuw i8, ptr %460, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %461, i32 0, i32 3, i32 1), !noalias !578
  %462 = shl nuw nsw i64 %458, 3
  %463 = getelementptr inbounds nuw i8, ptr %456, i64 %462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  br label %464

464:                                              ; preds = %457, %464
  %465 = phi i64 [ 0, %457 ], [ %482, %464 ]
  %466 = getelementptr inbounds nuw <2 x i64>, ptr %460, i64 %465
  %467 = load <2 x i64>, ptr %466, align 1, !tbaa !12, !noalias !582
  %468 = getelementptr inbounds nuw <2 x i64>, ptr %463, i64 %465
  %469 = load <2 x i64>, ptr %468, align 1, !tbaa !12, !noalias !582
  %470 = xor <2 x i64> %469, %467
  %471 = bitcast <2 x i64> %470 to <4 x i32>
  %472 = shufflevector <4 x i32> %471, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %473 = bitcast <4 x i32> %472 to <2 x i64>
  %474 = and <2 x i64> %470, splat (i64 4294967295)
  %475 = and <2 x i64> %473, splat (i64 4294967295)
  %476 = mul nuw <2 x i64> %475, %474
  %477 = shufflevector <2 x i64> %467, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %478 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %465
  %479 = load <2 x i64>, ptr %478, align 16, !tbaa !12, !alias.scope !583, !noalias !584
  %480 = add <2 x i64> %479, %477
  %481 = add <2 x i64> %480, %476
  store <2 x i64> %481, ptr %478, align 16, !tbaa !12, !alias.scope !583, !noalias !584
  %482 = add nuw nsw i64 %465, 1
  %483 = icmp eq i64 %482, 4
  br i1 %483, label %484, label %464, !llvm.loop !69

484:                                              ; preds = %464
  %485 = add nuw nsw i64 %458, 1
  %486 = icmp eq i64 %485, 4
  br i1 %486, label %487, label %457, !llvm.loop !70

487:                                              ; preds = %484
  %488 = add i64 %357, 4
  br label %489

489:                                              ; preds = %451, %418, %487
  %490 = phi i64 [ %488, %487 ], [ %364, %418 ], [ %364, %451 ]
  %491 = getelementptr inbounds nuw i8, ptr %358, i64 256
  %492 = icmp ult ptr %491, %352
  br i1 %492, label %356, label %493, !llvm.loop !589

493:                                              ; preds = %489
  store i64 %490, ptr %353, align 8, !tbaa !19, !alias.scope !532, !noalias !535
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %495 = getelementptr inbounds nuw i8, ptr %358, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %494, ptr noundef nonnull readonly align 1 dereferenceable(64) %495, i64 64, i1 false)
  br label %496

496:                                              ; preds = %493, %349, %344
  %497 = phi ptr [ %346, %344 ], [ %491, %493 ], [ %171, %349 ]
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %499 = ptrtoint ptr %497 to i64
  %500 = sub i64 %172, %499
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %498, ptr readonly align 1 %497, i64 %500, i1 false)
  %501 = trunc i64 %500 to i32
  br label %502

502:                                              ; preds = %496, %20
  %503 = phi i32 [ %501, %496 ], [ %25, %20 ]
  store i32 %503, ptr %15, align 64, !tbaa !426, !alias.scope !420, !noalias !423
  br label %504

504:                                              ; preds = %3, %502
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i64 @XXH3_64bits_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #18 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca [8 x i64], align 16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %5 = load ptr, ptr %4, align 8, !tbaa !417
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %8 = select i1 %6, ptr %7, ptr %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %10 = load i64, ptr %9, align 16, !tbaa !425
  %11 = icmp ugt i64 %10, 240
  br i1 %11, label %12, label %247

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull readonly align 1 dereferenceable(64) %0, i64 64, i1 false)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %14 = load i32, ptr %13, align 64, !tbaa !426
  %15 = icmp ugt i32 %14, 63
  br i1 %15, label %16, label %182

16:                                               ; preds = %12
  %17 = add i32 %14, -1
  %18 = lshr i32 %17, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %21 = load i64, ptr %20, align 8, !tbaa !484
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %23 = load i64, ptr %22, align 8, !tbaa !419
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %26 = load i64, ptr %25, align 32, !tbaa !418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %27 = sub i64 %23, %21
  %28 = icmp ugt i64 %27, %19
  br i1 %28, label %120, label %29

29:                                               ; preds = %16
  %30 = sub nuw i64 %19, %27
  %31 = shl i64 %21, 3
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 %31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %33 = icmp eq i64 %23, %21
  br i1 %33, label %64, label %34

34:                                               ; preds = %29, %61
  %35 = phi i64 [ %62, %61 ], [ 0, %29 ]
  %36 = shl i64 %35, 6
  %37 = getelementptr inbounds nuw i8, ptr %24, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %38, i32 0, i32 3, i32 1), !noalias !596
  %39 = shl i64 %35, 3
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 %39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  br label %41

41:                                               ; preds = %34, %41
  %42 = phi i64 [ 0, %34 ], [ %59, %41 ]
  %43 = getelementptr inbounds nuw <2 x i64>, ptr %37, i64 %42
  %44 = load <2 x i64>, ptr %43, align 1, !tbaa !12, !noalias !601
  %45 = getelementptr inbounds nuw <2 x i64>, ptr %40, i64 %42
  %46 = load <2 x i64>, ptr %45, align 1, !tbaa !12, !noalias !601
  %47 = xor <2 x i64> %46, %44
  %48 = bitcast <2 x i64> %47 to <4 x i32>
  %49 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %50 = bitcast <4 x i32> %49 to <2 x i64>
  %51 = and <2 x i64> %47, splat (i64 4294967295)
  %52 = and <2 x i64> %50, splat (i64 4294967295)
  %53 = mul nuw <2 x i64> %52, %51
  %54 = shufflevector <2 x i64> %44, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %55 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %42
  %56 = load <2 x i64>, ptr %55, align 16, !tbaa !12, !alias.scope !602, !noalias !603
  %57 = add <2 x i64> %56, %54
  %58 = add <2 x i64> %57, %53
  store <2 x i64> %58, ptr %55, align 16, !tbaa !12, !alias.scope !602, !noalias !603
  %59 = add nuw nsw i64 %42, 1
  %60 = icmp eq i64 %59, 4
  br i1 %60, label %61, label %41, !llvm.loop !69

61:                                               ; preds = %41
  %62 = add nuw i64 %35, 1
  %63 = icmp eq i64 %62, %27
  br i1 %63, label %64, label %34, !llvm.loop !70

64:                                               ; preds = %61, %29
  %65 = getelementptr inbounds nuw i8, ptr %8, i64 %26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ 0, %64 ], [ %82, %66 ]
  %68 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %67
  %69 = load <2 x i64>, ptr %68, align 16, !tbaa !12, !alias.scope !613, !noalias !614
  %70 = lshr <2 x i64> %69, splat (i64 47)
  %71 = getelementptr inbounds nuw <2 x i64>, ptr %65, i64 %67
  %72 = load <2 x i64>, ptr %71, align 1, !tbaa !12, !noalias !616
  %73 = xor <2 x i64> %72, %70
  %74 = xor <2 x i64> %73, %69
  %75 = bitcast <2 x i64> %74 to <4 x i32>
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %77 = bitcast <4 x i32> %76 to <2 x i64>
  %78 = and <2 x i64> %74, splat (i64 4294967295)
  %79 = mul nuw <2 x i64> %78, splat (i64 2654435761)
  %80 = mul <2 x i64> %77, splat (i64 -7046029290881679360)
  %81 = add <2 x i64> %80, %79
  store <2 x i64> %81, ptr %68, align 16, !tbaa !12, !alias.scope !613, !noalias !614
  %82 = add nuw nsw i64 %67, 1
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %84, label %66, !llvm.loop !81

84:                                               ; preds = %66
  %85 = shl nuw nsw i64 %27, 6
  %86 = getelementptr inbounds nuw i8, ptr %24, i64 %85
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %87 = icmp eq i64 %27, %19
  br i1 %87, label %156, label %88

88:                                               ; preds = %84
  %89 = tail call i64 @llvm.umax.i64(i64 %30, i64 1)
  br label %90

90:                                               ; preds = %88, %117
  %91 = phi i64 [ %118, %117 ], [ 0, %88 ]
  %92 = shl i64 %91, 6
  %93 = getelementptr inbounds nuw i8, ptr %86, i64 %92
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %94, i32 0, i32 3, i32 1), !noalias !620
  %95 = shl i64 %91, 3
  %96 = getelementptr inbounds nuw i8, ptr %8, i64 %95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  br label %97

97:                                               ; preds = %90, %97
  %98 = phi i64 [ 0, %90 ], [ %115, %97 ]
  %99 = getelementptr inbounds nuw <2 x i64>, ptr %93, i64 %98
  %100 = load <2 x i64>, ptr %99, align 1, !tbaa !12, !noalias !624
  %101 = getelementptr inbounds nuw <2 x i64>, ptr %96, i64 %98
  %102 = load <2 x i64>, ptr %101, align 1, !tbaa !12, !noalias !624
  %103 = xor <2 x i64> %102, %100
  %104 = bitcast <2 x i64> %103 to <4 x i32>
  %105 = shufflevector <4 x i32> %104, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %106 = bitcast <4 x i32> %105 to <2 x i64>
  %107 = and <2 x i64> %103, splat (i64 4294967295)
  %108 = and <2 x i64> %106, splat (i64 4294967295)
  %109 = mul nuw <2 x i64> %108, %107
  %110 = shufflevector <2 x i64> %100, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %111 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %98
  %112 = load <2 x i64>, ptr %111, align 16, !tbaa !12, !alias.scope !625, !noalias !626
  %113 = add <2 x i64> %112, %110
  %114 = add <2 x i64> %113, %109
  store <2 x i64> %114, ptr %111, align 16, !tbaa !12, !alias.scope !625, !noalias !626
  %115 = add nuw nsw i64 %98, 1
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %117, label %97, !llvm.loop !69

117:                                              ; preds = %97
  %118 = add nuw i64 %91, 1
  %119 = icmp eq i64 %118, %89
  br i1 %119, label %156, label %90, !llvm.loop !70

120:                                              ; preds = %16
  %121 = shl i64 %21, 3
  %122 = getelementptr inbounds nuw i8, ptr %8, i64 %121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %123 = icmp eq i32 %14, 64
  br i1 %123, label %156, label %124

124:                                              ; preds = %120
  %125 = tail call i64 @llvm.umax.i64(i64 %19, i64 1)
  br label %126

126:                                              ; preds = %124, %153
  %127 = phi i64 [ %154, %153 ], [ 0, %124 ]
  %128 = shl i64 %127, 6
  %129 = getelementptr inbounds nuw i8, ptr %24, i64 %128
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %130, i32 0, i32 3, i32 1), !noalias !634
  %131 = shl i64 %127, 3
  %132 = getelementptr inbounds nuw i8, ptr %122, i64 %131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  br label %133

133:                                              ; preds = %126, %133
  %134 = phi i64 [ 0, %126 ], [ %151, %133 ]
  %135 = getelementptr inbounds nuw <2 x i64>, ptr %129, i64 %134
  %136 = load <2 x i64>, ptr %135, align 1, !tbaa !12, !noalias !638
  %137 = getelementptr inbounds nuw <2 x i64>, ptr %132, i64 %134
  %138 = load <2 x i64>, ptr %137, align 1, !tbaa !12, !noalias !638
  %139 = xor <2 x i64> %138, %136
  %140 = bitcast <2 x i64> %139 to <4 x i32>
  %141 = shufflevector <4 x i32> %140, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %142 = bitcast <4 x i32> %141 to <2 x i64>
  %143 = and <2 x i64> %139, splat (i64 4294967295)
  %144 = and <2 x i64> %142, splat (i64 4294967295)
  %145 = mul nuw <2 x i64> %144, %143
  %146 = shufflevector <2 x i64> %136, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %147 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %134
  %148 = load <2 x i64>, ptr %147, align 16, !tbaa !12, !alias.scope !639, !noalias !640
  %149 = add <2 x i64> %148, %146
  %150 = add <2 x i64> %149, %145
  store <2 x i64> %150, ptr %147, align 16, !tbaa !12, !alias.scope !639, !noalias !640
  %151 = add nuw nsw i64 %134, 1
  %152 = icmp eq i64 %151, 4
  br i1 %152, label %153, label %133, !llvm.loop !69

153:                                              ; preds = %133
  %154 = add nuw nsw i64 %127, 1
  %155 = icmp eq i64 %154, %125
  br i1 %155, label %156, label %126, !llvm.loop !70

156:                                              ; preds = %117, %153, %84, %120
  %157 = zext i32 %14 to i64
  %158 = getelementptr inbounds nuw i8, ptr %24, i64 %157
  %159 = getelementptr inbounds i8, ptr %158, i64 -64
  %160 = getelementptr inbounds nuw i8, ptr %8, i64 %26
  %161 = getelementptr inbounds i8, ptr %160, i64 -7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  br label %162

162:                                              ; preds = %156, %162
  %163 = phi i64 [ 0, %156 ], [ %180, %162 ]
  %164 = getelementptr inbounds nuw <2 x i64>, ptr %159, i64 %163
  %165 = load <2 x i64>, ptr %164, align 1, !tbaa !12, !noalias !645
  %166 = getelementptr inbounds nuw <2 x i64>, ptr %161, i64 %163
  %167 = load <2 x i64>, ptr %166, align 1, !tbaa !12, !noalias !645
  %168 = xor <2 x i64> %167, %165
  %169 = bitcast <2 x i64> %168 to <4 x i32>
  %170 = shufflevector <4 x i32> %169, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %171 = bitcast <4 x i32> %170 to <2 x i64>
  %172 = and <2 x i64> %168, splat (i64 4294967295)
  %173 = and <2 x i64> %171, splat (i64 4294967295)
  %174 = mul nuw <2 x i64> %173, %172
  %175 = shufflevector <2 x i64> %165, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %176 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %163
  %177 = load <2 x i64>, ptr %176, align 16, !tbaa !12, !alias.scope !645, !noalias !648
  %178 = add <2 x i64> %177, %175
  %179 = add <2 x i64> %178, %174
  store <2 x i64> %179, ptr %176, align 16, !tbaa !12, !alias.scope !645, !noalias !648
  %180 = add nuw nsw i64 %163, 1
  %181 = icmp eq i64 %180, 4
  br i1 %181, label %215, label %162, !llvm.loop !69

182:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #31
  %183 = sub nuw nsw i32 64, %14
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %186 = sub nsw i64 0, %184
  %187 = getelementptr inbounds i8, ptr %13, i64 %186
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull readonly align 1 %187, i64 %184, i1 false)
  %188 = getelementptr inbounds nuw i8, ptr %2, i64 %184
  %189 = zext nneg i32 %14 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %188, ptr nonnull readonly align 1 %185, i64 %189, i1 false)
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %191 = load i64, ptr %190, align 32, !tbaa !418
  %192 = getelementptr inbounds nuw i8, ptr %8, i64 %191
  %193 = getelementptr inbounds i8, ptr %192, i64 -7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  br label %194

194:                                              ; preds = %182, %194
  %195 = phi i64 [ 0, %182 ], [ %212, %194 ]
  %196 = getelementptr inbounds nuw <2 x i64>, ptr %2, i64 %195
  %197 = load <2 x i64>, ptr %196, align 16, !tbaa !12, !noalias !651
  %198 = getelementptr inbounds nuw <2 x i64>, ptr %193, i64 %195
  %199 = load <2 x i64>, ptr %198, align 1, !tbaa !12, !noalias !651
  %200 = xor <2 x i64> %199, %197
  %201 = bitcast <2 x i64> %200 to <4 x i32>
  %202 = shufflevector <4 x i32> %201, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %203 = bitcast <4 x i32> %202 to <2 x i64>
  %204 = and <2 x i64> %200, splat (i64 4294967295)
  %205 = and <2 x i64> %203, splat (i64 4294967295)
  %206 = mul nuw <2 x i64> %205, %204
  %207 = shufflevector <2 x i64> %197, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %208 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %195
  %209 = load <2 x i64>, ptr %208, align 16, !tbaa !12, !alias.scope !651, !noalias !654
  %210 = add <2 x i64> %209, %207
  %211 = add <2 x i64> %210, %206
  store <2 x i64> %211, ptr %208, align 16, !tbaa !12, !alias.scope !651, !noalias !654
  %212 = add nuw nsw i64 %195, 1
  %213 = icmp eq i64 %212, 4
  br i1 %213, label %214, label %194, !llvm.loop !69

214:                                              ; preds = %194
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #31
  br label %215

215:                                              ; preds = %162, %214
  %216 = getelementptr inbounds nuw i8, ptr %8, i64 11
  %217 = mul i64 %10, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  br label %218

218:                                              ; preds = %218, %215
  %219 = phi i64 [ 0, %215 ], [ %239, %218 ]
  %220 = phi i64 [ %217, %215 ], [ %238, %218 ]
  %221 = shl nuw nsw i64 %219, 4
  %222 = getelementptr inbounds nuw i8, ptr %3, i64 %221
  %223 = getelementptr inbounds nuw i8, ptr %216, i64 %221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %224 = load i64, ptr %222, align 16, !tbaa !19, !alias.scope !665, !noalias !666
  %225 = load i64, ptr %223, align 1, !tbaa !19, !alias.scope !660, !noalias !665
  %226 = xor i64 %225, %224
  %227 = getelementptr inbounds nuw i8, ptr %222, i64 8
  %228 = load i64, ptr %227, align 8, !tbaa !19, !alias.scope !665, !noalias !666
  %229 = getelementptr inbounds nuw i8, ptr %223, i64 8
  %230 = load i64, ptr %229, align 1, !tbaa !19, !alias.scope !660, !noalias !665
  %231 = xor i64 %230, %228
  %232 = zext i64 %226 to i128
  %233 = zext i64 %231 to i128
  %234 = mul nuw i128 %233, %232
  %235 = lshr i128 %234, 64
  %236 = xor i128 %235, %234
  %237 = trunc i128 %236 to i64
  %238 = add i64 %220, %237
  %239 = add nuw nsw i64 %219, 1
  %240 = icmp eq i64 %239, 4
  br i1 %240, label %241, label %218, !llvm.loop !113

241:                                              ; preds = %218
  %242 = lshr i64 %238, 37
  %243 = xor i64 %242, %238
  %244 = mul i64 %243, 1609587791953885689
  %245 = lshr i64 %244, 32
  %246 = xor i64 %245, %244
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #31
  br label %261

247:                                              ; preds = %1
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %249 = load i32, ptr %248, align 4, !tbaa !416
  %250 = icmp eq i32 %249, 0
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %250, label %256, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %254 = load i64, ptr %253, align 8, !tbaa !412
  %255 = tail call i64 @XXH3_64bits_withSeed(ptr noundef nonnull %251, i64 noundef %10, i64 noundef %254) #32
  br label %261

256:                                              ; preds = %247
  %257 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %258 = load i64, ptr %257, align 32, !tbaa !418
  %259 = add i64 %258, 64
  %260 = tail call i64 @XXH3_64bits_withSecret(ptr noundef nonnull %251, i64 noundef %10, ptr noundef nonnull %8, i64 noundef %259) #32
  br label %261

261:                                              ; preds = %256, %252, %241
  %262 = phi i64 [ %246, %241 ], [ %255, %252 ], [ %260, %256 ]
  ret i64 %262
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local { i64, i64 } @XXH3_128bits(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %123

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %47

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1, !tbaa !19
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -8
  %10 = load i64, ptr %9, align 1, !tbaa !19
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
  %50 = load i32, ptr %0, align 1, !tbaa !5
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1, !tbaa !5
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
  %86 = load i8, ptr %0, align 1, !tbaa !12
  %87 = lshr i64 %1, 1
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !12
  %90 = getelementptr i8, ptr %0, i64 %1
  %91 = getelementptr i8, ptr %90, i64 -1
  %92 = load i8, ptr %91, align 1, !tbaa !12
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
  %136 = load i64, ptr %133, align 1, !tbaa !19, !noalias !668
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %138 = load i64, ptr %137, align 1, !tbaa !19, !noalias !668
  %139 = xor i64 %136, 4554437623014685352
  %140 = xor i64 %138, 2111919702937427193
  %141 = zext i64 %139 to i128
  %142 = zext i64 %140 to i128
  %143 = mul nuw i128 %142, %141
  %144 = lshr i128 %143, 64
  %145 = xor i128 %144, %143
  %146 = trunc i128 %145 to i64
  %147 = add i64 %126, %146
  %148 = load i64, ptr %135, align 1, !tbaa !19
  %149 = getelementptr inbounds i8, ptr %134, i64 -56
  %150 = load i64, ptr %149, align 1, !tbaa !19
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
  %169 = load i64, ptr %166, align 1, !tbaa !19, !noalias !671
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %171 = load i64, ptr %170, align 1, !tbaa !19, !noalias !671
  %172 = xor i64 %169, -3818837453329782724
  %173 = xor i64 %171, -6688317018830679928
  %174 = zext i64 %172 to i128
  %175 = zext i64 %173 to i128
  %176 = mul nuw i128 %175, %174
  %177 = lshr i128 %176, 64
  %178 = xor i128 %177, %176
  %179 = trunc i128 %178 to i64
  %180 = add i64 %164, %179
  %181 = load i64, ptr %168, align 1, !tbaa !19
  %182 = getelementptr inbounds i8, ptr %167, i64 -40
  %183 = load i64, ptr %182, align 1, !tbaa !19
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
  %203 = load i64, ptr %200, align 1, !tbaa !19, !noalias !674
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %205 = load i64, ptr %204, align 1, !tbaa !19, !noalias !674
  %206 = xor i64 %203, 8711581037947681227
  %207 = xor i64 %205, 2410270004345854594
  %208 = zext i64 %206 to i128
  %209 = zext i64 %207 to i128
  %210 = mul nuw i128 %209, %208
  %211 = lshr i128 %210, 64
  %212 = xor i128 %211, %210
  %213 = trunc i128 %212 to i64
  %214 = add i64 %198, %213
  %215 = load i64, ptr %202, align 1, !tbaa !19
  %216 = getelementptr inbounds i8, ptr %201, i64 -24
  %217 = load i64, ptr %216, align 1, !tbaa !19
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
  %236 = load i64, ptr %0, align 1, !tbaa !19, !noalias !677
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %238 = load i64, ptr %237, align 1, !tbaa !19, !noalias !677
  %239 = xor i64 %236, -4734510112055689544
  %240 = xor i64 %238, 2066345149520216444
  %241 = zext i64 %239 to i128
  %242 = zext i64 %240 to i128
  %243 = mul nuw i128 %242, %241
  %244 = lshr i128 %243, 64
  %245 = xor i128 %244, %243
  %246 = trunc i128 %245 to i64
  %247 = add i64 %232, %246
  %248 = load i64, ptr %235, align 1, !tbaa !19
  %249 = getelementptr inbounds i8, ptr %234, i64 -8
  %250 = load i64, ptr %249, align 1, !tbaa !19
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
  %286 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #32
  br label %289

287:                                              ; preds = %283
  %288 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_default(ptr noundef %0, i64 noundef %1) #31
  br label %289

289:                                              ; preds = %85, %49, %6, %83, %231, %285, %287
  %290 = phi { i64, i64 } [ %282, %231 ], [ %286, %285 ], [ %288, %287 ], [ %46, %6 ], [ %82, %49 ], [ %122, %85 ], [ { i64 6918025063187695999, i64 -7374073936536430376 }, %83 ]
  ret { i64, i64 } %290
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_default(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #11 {
  %3 = alloca [8 x i64], align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #31, !noalias !685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !685
  %4 = add i64 %1, -1
  %5 = icmp ult i64 %4, 1024
  br i1 %5, label %65, label %6

6:                                                ; preds = %2
  %7 = lshr i64 %4, 10
  %8 = tail call i64 @llvm.umax.i64(i64 %7, i64 1)
  br label %9

9:                                                ; preds = %6, %62
  %10 = phi i64 [ %63, %62 ], [ 0, %6 ]
  %11 = shl i64 %10, 10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  br label %13

13:                                               ; preds = %9, %40
  %14 = phi i64 [ 0, %9 ], [ %41, %40 ]
  %15 = shl nuw nsw i64 %14, 6
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 0, i32 3, i32 1), !noalias !689
  %18 = shl nuw nsw i64 %14, 3
  %19 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  br label %20

20:                                               ; preds = %13, %20
  %21 = phi i64 [ 0, %13 ], [ %38, %20 ]
  %22 = getelementptr inbounds nuw <2 x i64>, ptr %16, i64 %21
  %23 = load <2 x i64>, ptr %22, align 1, !tbaa !12, !alias.scope !680, !noalias !693
  %24 = getelementptr inbounds nuw <2 x i64>, ptr %19, i64 %21
  %25 = load <2 x i64>, ptr %24, align 8, !tbaa !12, !alias.scope !683, !noalias !694
  %26 = xor <2 x i64> %25, %23
  %27 = bitcast <2 x i64> %26 to <4 x i32>
  %28 = shufflevector <4 x i32> %27, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %29 = bitcast <4 x i32> %28 to <2 x i64>
  %30 = and <2 x i64> %26, splat (i64 4294967295)
  %31 = and <2 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <2 x i64> %31, %30
  %33 = shufflevector <2 x i64> %23, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %34 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %21
  %35 = load <2 x i64>, ptr %34, align 16, !tbaa !12, !alias.scope !695, !noalias !696
  %36 = add <2 x i64> %35, %33
  %37 = add <2 x i64> %36, %32
  store <2 x i64> %37, ptr %34, align 16, !tbaa !12, !alias.scope !695, !noalias !696
  %38 = add nuw nsw i64 %21, 1
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %20, !llvm.loop !69

40:                                               ; preds = %20
  %41 = add nuw nsw i64 %14, 1
  %42 = icmp eq i64 %41, 16
  br i1 %42, label %43, label %13, !llvm.loop !70

43:                                               ; preds = %40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  br label %44

44:                                               ; preds = %43, %44
  %45 = phi i64 [ 0, %43 ], [ %60, %44 ]
  %46 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %45
  %47 = load <2 x i64>, ptr %46, align 16, !tbaa !12, !alias.scope !704, !noalias !707
  %48 = lshr <2 x i64> %47, splat (i64 47)
  %49 = getelementptr inbounds nuw <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), i64 %45
  %50 = load <2 x i64>, ptr %49, align 16, !tbaa !12, !alias.scope !683, !noalias !711
  %51 = xor <2 x i64> %50, %48
  %52 = xor <2 x i64> %51, %47
  %53 = bitcast <2 x i64> %52 to <4 x i32>
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %55 = bitcast <4 x i32> %54 to <2 x i64>
  %56 = and <2 x i64> %52, splat (i64 4294967295)
  %57 = mul nuw <2 x i64> %56, splat (i64 2654435761)
  %58 = mul <2 x i64> %55, splat (i64 -7046029290881679360)
  %59 = add <2 x i64> %58, %57
  store <2 x i64> %59, ptr %46, align 16, !tbaa !12, !alias.scope !704, !noalias !707
  %60 = add nuw nsw i64 %45, 1
  %61 = icmp eq i64 %60, 4
  br i1 %61, label %62, label %44, !llvm.loop !81

62:                                               ; preds = %44
  %63 = add nuw nsw i64 %10, 1
  %64 = icmp eq i64 %63, %8
  br i1 %64, label %65, label %9, !llvm.loop !82

65:                                               ; preds = %62, %2
  %66 = and i64 %4, -1024
  %67 = lshr i64 %4, 6
  %68 = and i64 %67, 15
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 %66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %70 = icmp eq i64 %68, 0
  br i1 %70, label %101, label %71

71:                                               ; preds = %65, %98
  %72 = phi i64 [ %99, %98 ], [ 0, %65 ]
  %73 = shl i64 %72, 6
  %74 = getelementptr inbounds nuw i8, ptr %69, i64 %73
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %75, i32 0, i32 3, i32 1), !noalias !715
  %76 = shl i64 %72, 3
  %77 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  br label %78

78:                                               ; preds = %71, %78
  %79 = phi i64 [ 0, %71 ], [ %96, %78 ]
  %80 = getelementptr inbounds nuw <2 x i64>, ptr %74, i64 %79
  %81 = load <2 x i64>, ptr %80, align 1, !tbaa !12, !alias.scope !680, !noalias !719
  %82 = getelementptr inbounds nuw <2 x i64>, ptr %77, i64 %79
  %83 = load <2 x i64>, ptr %82, align 8, !tbaa !12, !alias.scope !683, !noalias !720
  %84 = xor <2 x i64> %83, %81
  %85 = bitcast <2 x i64> %84 to <4 x i32>
  %86 = shufflevector <4 x i32> %85, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %87 = bitcast <4 x i32> %86 to <2 x i64>
  %88 = and <2 x i64> %84, splat (i64 4294967295)
  %89 = and <2 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <2 x i64> %89, %88
  %91 = shufflevector <2 x i64> %81, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %92 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %79
  %93 = load <2 x i64>, ptr %92, align 16, !tbaa !12, !alias.scope !721, !noalias !722
  %94 = add <2 x i64> %93, %91
  %95 = add <2 x i64> %94, %90
  store <2 x i64> %95, ptr %92, align 16, !tbaa !12, !alias.scope !721, !noalias !722
  %96 = add nuw nsw i64 %79, 1
  %97 = icmp eq i64 %96, 4
  br i1 %97, label %98, label %78, !llvm.loop !69

98:                                               ; preds = %78
  %99 = add nuw nsw i64 %72, 1
  %100 = icmp eq i64 %99, %68
  br i1 %100, label %101, label %71, !llvm.loop !70

101:                                              ; preds = %98, %65
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %103 = getelementptr inbounds i8, ptr %102, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  br label %104

104:                                              ; preds = %101, %104
  %105 = phi i64 [ 0, %101 ], [ %122, %104 ]
  %106 = getelementptr inbounds nuw <2 x i64>, ptr %103, i64 %105
  %107 = load <2 x i64>, ptr %106, align 1, !tbaa !12, !alias.scope !680, !noalias !730
  %108 = getelementptr inbounds nuw <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i64 %105
  %109 = load <2 x i64>, ptr %108, align 1, !tbaa !12, !alias.scope !683, !noalias !731
  %110 = xor <2 x i64> %109, %107
  %111 = bitcast <2 x i64> %110 to <4 x i32>
  %112 = shufflevector <4 x i32> %111, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %113 = bitcast <4 x i32> %112 to <2 x i64>
  %114 = and <2 x i64> %110, splat (i64 4294967295)
  %115 = and <2 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <2 x i64> %115, %114
  %117 = shufflevector <2 x i64> %107, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %118 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %105
  %119 = load <2 x i64>, ptr %118, align 16, !tbaa !12, !alias.scope !732, !noalias !733
  %120 = add <2 x i64> %119, %117
  %121 = add <2 x i64> %120, %116
  store <2 x i64> %121, ptr %118, align 16, !tbaa !12, !alias.scope !732, !noalias !733
  %122 = add nuw nsw i64 %105, 1
  %123 = icmp eq i64 %122, 4
  br i1 %123, label %124, label %104, !llvm.loop !69

124:                                              ; preds = %104
  %125 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi i64 [ 0, %124 ], [ %147, %126 ]
  %128 = phi i64 [ %125, %124 ], [ %146, %126 ]
  %129 = shl nuw nsw i64 %127, 4
  %130 = getelementptr inbounds nuw i8, ptr %3, i64 %129
  %131 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 11), i64 %129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741), !noalias !680
  %132 = load i64, ptr %130, align 16, !tbaa !19, !alias.scope !744, !noalias !745
  %133 = load i64, ptr %131, align 1, !tbaa !19, !alias.scope !739, !noalias !747
  %134 = xor i64 %133, %132
  %135 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %136 = load i64, ptr %135, align 8, !tbaa !19, !alias.scope !744, !noalias !745
  %137 = getelementptr inbounds nuw i8, ptr %131, i64 8
  %138 = load i64, ptr %137, align 1, !tbaa !19, !alias.scope !739, !noalias !747
  %139 = xor i64 %138, %136
  %140 = zext i64 %134 to i128
  %141 = zext i64 %139 to i128
  %142 = mul nuw i128 %141, %140
  %143 = lshr i128 %142, 64
  %144 = xor i128 %143, %142
  %145 = trunc i128 %144 to i64
  %146 = add i64 %128, %145
  %147 = add nuw nsw i64 %127, 1
  %148 = icmp eq i64 %147, 4
  br i1 %148, label %149, label %126, !llvm.loop !113

149:                                              ; preds = %126
  %150 = mul i64 %1, -4417276706812531889
  %151 = xor i64 %150, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  br label %152

152:                                              ; preds = %152, %149
  %153 = phi i64 [ 0, %149 ], [ %173, %152 ]
  %154 = phi i64 [ %151, %149 ], [ %172, %152 ]
  %155 = shl nuw nsw i64 %153, 4
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 %155
  %157 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 117), i64 %155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753), !noalias !680
  %158 = load i64, ptr %156, align 16, !tbaa !19, !alias.scope !756, !noalias !757
  %159 = load i64, ptr %157, align 1, !tbaa !19, !alias.scope !751, !noalias !759
  %160 = xor i64 %159, %158
  %161 = getelementptr inbounds nuw i8, ptr %156, i64 8
  %162 = load i64, ptr %161, align 8, !tbaa !19, !alias.scope !756, !noalias !757
  %163 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %164 = load i64, ptr %163, align 1, !tbaa !19, !alias.scope !751, !noalias !759
  %165 = xor i64 %164, %162
  %166 = zext i64 %160 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %154, %171
  %173 = add nuw nsw i64 %153, 1
  %174 = icmp eq i64 %173, 4
  br i1 %174, label %175, label %152, !llvm.loop !113

175:                                              ; preds = %152
  %176 = lshr i64 %146, 37
  %177 = xor i64 %176, %146
  %178 = mul i64 %177, 1609587791953885689
  %179 = lshr i64 %178, 32
  %180 = xor i64 %179, %178
  %181 = lshr i64 %172, 37
  %182 = xor i64 %181, %172
  %183 = mul i64 %182, 1609587791953885689
  %184 = lshr i64 %183, 32
  %185 = xor i64 %184, %183
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #31, !noalias !685
  %186 = insertvalue { i64, i64 } poison, i64 %180, 0
  %187 = insertvalue { i64, i64 } %186, i64 %185, 1
  ret { i64, i64 } %187
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSecret(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca [8 x i64], align 16
  %6 = icmp ult i64 %1, 17
  br i1 %6, label %7, label %179

7:                                                ; preds = %4
  %8 = icmp samesign ugt i64 %1, 8
  br i1 %8, label %9, label %60

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %11 = load i64, ptr %10, align 1, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %13 = load i64, ptr %12, align 1, !tbaa !19
  %14 = xor i64 %13, %11
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %16 = load i64, ptr %15, align 1, !tbaa !19
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %18 = load i64, ptr %17, align 1, !tbaa !19
  %19 = xor i64 %18, %16
  %20 = load i64, ptr %0, align 1, !tbaa !19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %22 = getelementptr inbounds i8, ptr %21, i64 -8
  %23 = load i64, ptr %22, align 1, !tbaa !19
  %24 = xor i64 %14, %20
  %25 = xor i64 %24, %23
  %26 = zext i64 %25 to i128
  %27 = mul nuw i128 %26, 11400714785074694791
  %28 = trunc i128 %27 to i64
  %29 = lshr i128 %27, 64
  %30 = trunc nuw i128 %29 to i64
  %31 = shl nuw nsw i64 %1, 54
  %32 = add nsw i64 %31, -18014398509481984
  %33 = add i64 %32, %28
  %34 = xor i64 %19, %23
  %35 = and i64 %34, 4294967295
  %36 = mul nuw i64 %35, 2246822518
  %37 = add i64 %36, %34
  %38 = add i64 %37, %30
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = xor i64 %39, %33
  %41 = zext i64 %40 to i128
  %42 = mul nuw i128 %41, 14029467366897019727
  %43 = trunc i128 %42 to i64
  %44 = lshr i128 %42, 64
  %45 = trunc nuw i128 %44 to i64
  %46 = mul i64 %38, -4417276706812531889
  %47 = add i64 %46, %45
  %48 = lshr i64 %43, 37
  %49 = xor i64 %48, %43
  %50 = mul i64 %49, 1609587791953885689
  %51 = lshr i64 %50, 32
  %52 = xor i64 %51, %50
  %53 = lshr i64 %47, 37
  %54 = xor i64 %53, %47
  %55 = mul i64 %54, 1609587791953885689
  %56 = lshr i64 %55, 32
  %57 = xor i64 %56, %55
  %58 = insertvalue { i64, i64 } poison, i64 %52, 0
  %59 = insertvalue { i64, i64 } %58, i64 %57, 1
  br label %569

60:                                               ; preds = %7
  %61 = icmp samesign ugt i64 %1, 3
  br i1 %61, label %62, label %101

62:                                               ; preds = %60
  %63 = load i32, ptr %0, align 1, !tbaa !5
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %65 = getelementptr inbounds i8, ptr %64, i64 -4
  %66 = load i32, ptr %65, align 1, !tbaa !5
  %67 = zext i32 %63 to i64
  %68 = zext i32 %66 to i64
  %69 = shl nuw i64 %68, 32
  %70 = or disjoint i64 %69, %67
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1, !tbaa !19
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %74 = load i64, ptr %73, align 1, !tbaa !19
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %70
  %77 = shl nuw nsw i64 %1, 2
  %78 = add nuw nsw i64 %77, -7046029288634856825
  %79 = zext i64 %76 to i128
  %80 = zext i64 %78 to i128
  %81 = mul nuw i128 %79, %80
  %82 = trunc i128 %81 to i64
  %83 = lshr i128 %81, 64
  %84 = trunc nuw i128 %83 to i64
  %85 = shl i64 %82, 1
  %86 = add i64 %85, %84
  %87 = lshr i64 %86, 3
  %88 = xor i64 %87, %82
  %89 = lshr i64 %88, 35
  %90 = xor i64 %89, %88
  %91 = mul i64 %90, -6939452855193903323
  %92 = lshr i64 %91, 28
  %93 = xor i64 %92, %91
  %94 = lshr i64 %86, 37
  %95 = xor i64 %94, %86
  %96 = mul i64 %95, 1609587791953885689
  %97 = lshr i64 %96, 32
  %98 = xor i64 %97, %96
  %99 = insertvalue { i64, i64 } poison, i64 %93, 0
  %100 = insertvalue { i64, i64 } %99, i64 %98, 1
  br label %569

101:                                              ; preds = %60
  %102 = icmp eq i64 %1, 0
  br i1 %102, label %150, label %103

103:                                              ; preds = %101
  %104 = load i8, ptr %0, align 1, !tbaa !12
  %105 = lshr i64 %1, 1
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !12
  %108 = getelementptr i8, ptr %0, i64 %1
  %109 = getelementptr i8, ptr %108, i64 -1
  %110 = load i8, ptr %109, align 1, !tbaa !12
  %111 = zext i8 %104 to i32
  %112 = shl nuw nsw i32 %111, 16
  %113 = zext i8 %107 to i32
  %114 = shl nuw i32 %113, 24
  %115 = or disjoint i32 %114, %112
  %116 = zext i8 %110 to i32
  %117 = or disjoint i32 %115, %116
  %118 = trunc nuw nsw i64 %1 to i32
  %119 = shl nuw nsw i32 %118, 8
  %120 = or disjoint i32 %117, %119
  %121 = tail call noundef i32 @llvm.bswap.i32(i32 %120)
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 13)
  %123 = load i32, ptr %2, align 1, !tbaa !5
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %125 = load i32, ptr %124, align 1, !tbaa !5
  %126 = xor i32 %125, %123
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %128 = load i32, ptr %127, align 1, !tbaa !5
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %130 = load i32, ptr %129, align 1, !tbaa !5
  %131 = xor i32 %130, %128
  %132 = xor i32 %126, %120
  %133 = zext i32 %132 to i64
  %134 = xor i32 %131, %122
  %135 = zext i32 %134 to i64
  %136 = mul i64 %133, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  %142 = mul i64 %135, -4417276706812531889
  %143 = lshr i64 %142, 29
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587929392839161
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  %148 = insertvalue { i64, i64 } poison, i64 %141, 0
  %149 = insertvalue { i64, i64 } %148, i64 %147, 1
  br label %569

150:                                              ; preds = %101
  %151 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %152 = load i64, ptr %151, align 1, !tbaa !19
  %153 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %154 = load i64, ptr %153, align 1, !tbaa !19
  %155 = xor i64 %154, %152
  %156 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %157 = load i64, ptr %156, align 1, !tbaa !19
  %158 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %159 = load i64, ptr %158, align 1, !tbaa !19
  %160 = xor i64 %159, %157
  %161 = lshr i64 %155, 33
  %162 = xor i64 %161, %155
  %163 = mul i64 %162, -4417276706812531889
  %164 = lshr i64 %163, 29
  %165 = xor i64 %164, %163
  %166 = mul i64 %165, 1609587929392839161
  %167 = lshr i64 %166, 32
  %168 = xor i64 %167, %166
  %169 = lshr i64 %160, 33
  %170 = xor i64 %169, %160
  %171 = mul i64 %170, -4417276706812531889
  %172 = lshr i64 %171, 29
  %173 = xor i64 %172, %171
  %174 = mul i64 %173, 1609587929392839161
  %175 = lshr i64 %174, 32
  %176 = xor i64 %175, %174
  %177 = insertvalue { i64, i64 } poison, i64 %168, 0
  %178 = insertvalue { i64, i64 } %177, i64 %176, 1
  br label %569

179:                                              ; preds = %4
  %180 = icmp ult i64 %1, 129
  br i1 %180, label %181, label %370

181:                                              ; preds = %179
  %182 = mul i64 %1, -7046029288634856825
  %183 = icmp samesign ugt i64 %1, 32
  br i1 %183, label %184, label %311

184:                                              ; preds = %181
  %185 = icmp samesign ugt i64 %1, 64
  br i1 %185, label %186, label %269

186:                                              ; preds = %184
  %187 = icmp samesign ugt i64 %1, 96
  br i1 %187, label %188, label %227

188:                                              ; preds = %186
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %191 = getelementptr inbounds i8, ptr %190, i64 -64
  %192 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %193 = load i64, ptr %189, align 1, !tbaa !19, !noalias !760
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %195 = load i64, ptr %194, align 1, !tbaa !19, !noalias !760
  %196 = load i64, ptr %192, align 1, !tbaa !19
  %197 = xor i64 %196, %193
  %198 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %199 = load i64, ptr %198, align 1, !tbaa !19
  %200 = xor i64 %199, %195
  %201 = zext i64 %197 to i128
  %202 = zext i64 %200 to i128
  %203 = mul nuw i128 %202, %201
  %204 = lshr i128 %203, 64
  %205 = xor i128 %204, %203
  %206 = trunc i128 %205 to i64
  %207 = add i64 %182, %206
  %208 = load i64, ptr %191, align 1, !tbaa !19
  %209 = getelementptr inbounds i8, ptr %190, i64 -56
  %210 = load i64, ptr %209, align 1, !tbaa !19
  %211 = add i64 %210, %208
  %212 = xor i64 %207, %211
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %214 = load i64, ptr %213, align 1, !tbaa !19
  %215 = xor i64 %214, %208
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %217 = load i64, ptr %216, align 1, !tbaa !19
  %218 = xor i64 %217, %210
  %219 = zext i64 %215 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %195, %193
  %226 = xor i64 %225, %224
  br label %227

227:                                              ; preds = %188, %186
  %228 = phi i64 [ %212, %188 ], [ %182, %186 ]
  %229 = phi i64 [ %226, %188 ], [ 0, %186 ]
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %232 = getelementptr inbounds i8, ptr %231, i64 -48
  %233 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %234 = load i64, ptr %230, align 1, !tbaa !19, !noalias !763
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %236 = load i64, ptr %235, align 1, !tbaa !19, !noalias !763
  %237 = load i64, ptr %233, align 1, !tbaa !19
  %238 = xor i64 %237, %234
  %239 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %240 = load i64, ptr %239, align 1, !tbaa !19
  %241 = xor i64 %240, %236
  %242 = zext i64 %238 to i128
  %243 = zext i64 %241 to i128
  %244 = mul nuw i128 %243, %242
  %245 = lshr i128 %244, 64
  %246 = xor i128 %245, %244
  %247 = trunc i128 %246 to i64
  %248 = add i64 %228, %247
  %249 = load i64, ptr %232, align 1, !tbaa !19
  %250 = getelementptr inbounds i8, ptr %231, i64 -40
  %251 = load i64, ptr %250, align 1, !tbaa !19
  %252 = add i64 %251, %249
  %253 = xor i64 %248, %252
  %254 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %255 = load i64, ptr %254, align 1, !tbaa !19
  %256 = xor i64 %255, %249
  %257 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %258 = load i64, ptr %257, align 1, !tbaa !19
  %259 = xor i64 %258, %251
  %260 = zext i64 %256 to i128
  %261 = zext i64 %259 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %229, %265
  %267 = add i64 %236, %234
  %268 = xor i64 %266, %267
  br label %269

269:                                              ; preds = %227, %184
  %270 = phi i64 [ %253, %227 ], [ %182, %184 ]
  %271 = phi i64 [ %268, %227 ], [ 0, %184 ]
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %274 = getelementptr inbounds i8, ptr %273, i64 -32
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %276 = load i64, ptr %272, align 1, !tbaa !19, !noalias !766
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %278 = load i64, ptr %277, align 1, !tbaa !19, !noalias !766
  %279 = load i64, ptr %275, align 1, !tbaa !19
  %280 = xor i64 %279, %276
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1, !tbaa !19
  %283 = xor i64 %282, %278
  %284 = zext i64 %280 to i128
  %285 = zext i64 %283 to i128
  %286 = mul nuw i128 %285, %284
  %287 = lshr i128 %286, 64
  %288 = xor i128 %287, %286
  %289 = trunc i128 %288 to i64
  %290 = add i64 %270, %289
  %291 = load i64, ptr %274, align 1, !tbaa !19
  %292 = getelementptr inbounds i8, ptr %273, i64 -24
  %293 = load i64, ptr %292, align 1, !tbaa !19
  %294 = add i64 %293, %291
  %295 = xor i64 %290, %294
  %296 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %297 = load i64, ptr %296, align 1, !tbaa !19
  %298 = xor i64 %297, %291
  %299 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %300 = load i64, ptr %299, align 1, !tbaa !19
  %301 = xor i64 %300, %293
  %302 = zext i64 %298 to i128
  %303 = zext i64 %301 to i128
  %304 = mul nuw i128 %303, %302
  %305 = lshr i128 %304, 64
  %306 = xor i128 %305, %304
  %307 = trunc i128 %306 to i64
  %308 = add i64 %271, %307
  %309 = add i64 %278, %276
  %310 = xor i64 %308, %309
  br label %311

311:                                              ; preds = %181, %269
  %312 = phi i64 [ %295, %269 ], [ %182, %181 ]
  %313 = phi i64 [ %310, %269 ], [ 0, %181 ]
  %314 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %315 = getelementptr inbounds i8, ptr %314, i64 -16
  %316 = load i64, ptr %0, align 1, !tbaa !19, !noalias !769
  %317 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %318 = load i64, ptr %317, align 1, !tbaa !19, !noalias !769
  %319 = load i64, ptr %2, align 1, !tbaa !19
  %320 = xor i64 %319, %316
  %321 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %322 = load i64, ptr %321, align 1, !tbaa !19
  %323 = xor i64 %322, %318
  %324 = zext i64 %320 to i128
  %325 = zext i64 %323 to i128
  %326 = mul nuw i128 %325, %324
  %327 = lshr i128 %326, 64
  %328 = xor i128 %327, %326
  %329 = trunc i128 %328 to i64
  %330 = add i64 %312, %329
  %331 = load i64, ptr %315, align 1, !tbaa !19
  %332 = getelementptr inbounds i8, ptr %314, i64 -8
  %333 = load i64, ptr %332, align 1, !tbaa !19
  %334 = add i64 %333, %331
  %335 = xor i64 %330, %334
  %336 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %337 = load i64, ptr %336, align 1, !tbaa !19
  %338 = xor i64 %337, %331
  %339 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %340 = load i64, ptr %339, align 1, !tbaa !19
  %341 = xor i64 %340, %333
  %342 = zext i64 %338 to i128
  %343 = zext i64 %341 to i128
  %344 = mul nuw i128 %343, %342
  %345 = lshr i128 %344, 64
  %346 = xor i128 %345, %344
  %347 = trunc i128 %346 to i64
  %348 = add i64 %313, %347
  %349 = add i64 %318, %316
  %350 = xor i64 %348, %349
  %351 = add i64 %350, %335
  %352 = mul i64 %335, -7046029288634856825
  %353 = mul i64 %350, -8796714831421723037
  %354 = mul i64 %1, -4417276706812531889
  %355 = add i64 %352, %354
  %356 = add i64 %355, %353
  %357 = lshr i64 %351, 37
  %358 = xor i64 %357, %351
  %359 = mul i64 %358, 1609587791953885689
  %360 = lshr i64 %359, 32
  %361 = xor i64 %360, %359
  %362 = lshr i64 %356, 37
  %363 = xor i64 %362, %356
  %364 = mul i64 %363, 1609587791953885689
  %365 = lshr i64 %364, 32
  %366 = xor i64 %365, %364
  %367 = sub i64 0, %366
  %368 = insertvalue { i64, i64 } poison, i64 %361, 0
  %369 = insertvalue { i64, i64 } %368, i64 %367, 1
  br label %569

370:                                              ; preds = %179
  %371 = icmp ult i64 %1, 241
  br i1 %371, label %372, label %374

372:                                              ; preds = %370
  %373 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0) #32
  br label %569

374:                                              ; preds = %370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #31, !noalias !777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !777
  %375 = add i64 %3, -64
  %376 = lshr i64 %375, 3
  %377 = shl i64 %376, 6
  %378 = add i64 %1, -1
  %379 = udiv i64 %378, %377
  %380 = urem i64 %378, %377
  %381 = icmp ugt i64 %377, %378
  br i1 %381, label %443, label %382

382:                                              ; preds = %374
  %383 = icmp ult i64 %375, 8
  %384 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %385 = getelementptr inbounds i8, ptr %384, i64 -64
  %386 = tail call i64 @llvm.umax.i64(i64 %376, i64 1)
  br label %387

387:                                              ; preds = %382, %440
  %388 = phi i64 [ 0, %382 ], [ %441, %440 ]
  %389 = mul i64 %388, %377
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 %389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  br i1 %383, label %421, label %391

391:                                              ; preds = %387, %418
  %392 = phi i64 [ %419, %418 ], [ 0, %387 ]
  %393 = shl i64 %392, 6
  %394 = getelementptr inbounds nuw i8, ptr %390, i64 %393
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %395, i32 0, i32 3, i32 1), !noalias !781
  %396 = shl i64 %392, 3
  %397 = getelementptr inbounds nuw i8, ptr %2, i64 %396
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  br label %398

398:                                              ; preds = %391, %398
  %399 = phi i64 [ 0, %391 ], [ %416, %398 ]
  %400 = getelementptr inbounds nuw <2 x i64>, ptr %394, i64 %399
  %401 = load <2 x i64>, ptr %400, align 1, !tbaa !12, !alias.scope !772, !noalias !785
  %402 = getelementptr inbounds nuw <2 x i64>, ptr %397, i64 %399
  %403 = load <2 x i64>, ptr %402, align 1, !tbaa !12, !alias.scope !775, !noalias !786
  %404 = xor <2 x i64> %403, %401
  %405 = bitcast <2 x i64> %404 to <4 x i32>
  %406 = shufflevector <4 x i32> %405, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %407 = bitcast <4 x i32> %406 to <2 x i64>
  %408 = and <2 x i64> %404, splat (i64 4294967295)
  %409 = and <2 x i64> %407, splat (i64 4294967295)
  %410 = mul nuw <2 x i64> %409, %408
  %411 = shufflevector <2 x i64> %401, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %412 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %399
  %413 = load <2 x i64>, ptr %412, align 16, !tbaa !12, !alias.scope !787, !noalias !788
  %414 = add <2 x i64> %413, %411
  %415 = add <2 x i64> %414, %410
  store <2 x i64> %415, ptr %412, align 16, !tbaa !12, !alias.scope !787, !noalias !788
  %416 = add nuw nsw i64 %399, 1
  %417 = icmp eq i64 %416, 4
  br i1 %417, label %418, label %398, !llvm.loop !69

418:                                              ; preds = %398
  %419 = add nuw nsw i64 %392, 1
  %420 = icmp eq i64 %419, %386
  br i1 %420, label %421, label %391, !llvm.loop !70

421:                                              ; preds = %418, %387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  br label %422

422:                                              ; preds = %421, %422
  %423 = phi i64 [ 0, %421 ], [ %438, %422 ]
  %424 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %423
  %425 = load <2 x i64>, ptr %424, align 16, !tbaa !12, !alias.scope !796, !noalias !799
  %426 = lshr <2 x i64> %425, splat (i64 47)
  %427 = getelementptr inbounds nuw <2 x i64>, ptr %385, i64 %423
  %428 = load <2 x i64>, ptr %427, align 1, !tbaa !12, !alias.scope !775, !noalias !803
  %429 = xor <2 x i64> %428, %426
  %430 = xor <2 x i64> %429, %425
  %431 = bitcast <2 x i64> %430 to <4 x i32>
  %432 = shufflevector <4 x i32> %431, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %433 = bitcast <4 x i32> %432 to <2 x i64>
  %434 = and <2 x i64> %430, splat (i64 4294967295)
  %435 = mul nuw <2 x i64> %434, splat (i64 2654435761)
  %436 = mul <2 x i64> %433, splat (i64 -7046029290881679360)
  %437 = add <2 x i64> %436, %435
  store <2 x i64> %437, ptr %424, align 16, !tbaa !12, !alias.scope !796, !noalias !799
  %438 = add nuw nsw i64 %423, 1
  %439 = icmp eq i64 %438, 4
  br i1 %439, label %440, label %422, !llvm.loop !81

440:                                              ; preds = %422
  %441 = add nuw i64 %388, 1
  %442 = icmp ult i64 %441, %379
  br i1 %442, label %387, label %443, !llvm.loop !82

443:                                              ; preds = %440, %374
  %444 = mul i64 %379, %377
  %445 = lshr i64 %380, 6
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 %444
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %447 = icmp ult i64 %380, 64
  br i1 %447, label %478, label %448

448:                                              ; preds = %443, %475
  %449 = phi i64 [ %476, %475 ], [ 0, %443 ]
  %450 = shl i64 %449, 6
  %451 = getelementptr inbounds nuw i8, ptr %446, i64 %450
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %452, i32 0, i32 3, i32 1), !noalias !807
  %453 = shl i64 %449, 3
  %454 = getelementptr inbounds nuw i8, ptr %2, i64 %453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  br label %455

455:                                              ; preds = %448, %455
  %456 = phi i64 [ 0, %448 ], [ %473, %455 ]
  %457 = getelementptr inbounds nuw <2 x i64>, ptr %451, i64 %456
  %458 = load <2 x i64>, ptr %457, align 1, !tbaa !12, !alias.scope !772, !noalias !811
  %459 = getelementptr inbounds nuw <2 x i64>, ptr %454, i64 %456
  %460 = load <2 x i64>, ptr %459, align 1, !tbaa !12, !alias.scope !775, !noalias !812
  %461 = xor <2 x i64> %460, %458
  %462 = bitcast <2 x i64> %461 to <4 x i32>
  %463 = shufflevector <4 x i32> %462, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %464 = bitcast <4 x i32> %463 to <2 x i64>
  %465 = and <2 x i64> %461, splat (i64 4294967295)
  %466 = and <2 x i64> %464, splat (i64 4294967295)
  %467 = mul nuw <2 x i64> %466, %465
  %468 = shufflevector <2 x i64> %458, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %469 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %456
  %470 = load <2 x i64>, ptr %469, align 16, !tbaa !12, !alias.scope !813, !noalias !814
  %471 = add <2 x i64> %470, %468
  %472 = add <2 x i64> %471, %467
  store <2 x i64> %472, ptr %469, align 16, !tbaa !12, !alias.scope !813, !noalias !814
  %473 = add nuw nsw i64 %456, 1
  %474 = icmp eq i64 %473, 4
  br i1 %474, label %475, label %455, !llvm.loop !69

475:                                              ; preds = %455
  %476 = add nuw nsw i64 %449, 1
  %477 = icmp samesign ult i64 %476, %445
  br i1 %477, label %448, label %478, !llvm.loop !70

478:                                              ; preds = %475, %443
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %480 = getelementptr inbounds i8, ptr %479, i64 -64
  %481 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %482 = getelementptr inbounds i8, ptr %481, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  br label %483

483:                                              ; preds = %478, %483
  %484 = phi i64 [ 0, %478 ], [ %501, %483 ]
  %485 = getelementptr inbounds nuw <2 x i64>, ptr %480, i64 %484
  %486 = load <2 x i64>, ptr %485, align 1, !tbaa !12, !alias.scope !772, !noalias !822
  %487 = getelementptr inbounds nuw <2 x i64>, ptr %482, i64 %484
  %488 = load <2 x i64>, ptr %487, align 1, !tbaa !12, !alias.scope !775, !noalias !823
  %489 = xor <2 x i64> %488, %486
  %490 = bitcast <2 x i64> %489 to <4 x i32>
  %491 = shufflevector <4 x i32> %490, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %492 = bitcast <4 x i32> %491 to <2 x i64>
  %493 = and <2 x i64> %489, splat (i64 4294967295)
  %494 = and <2 x i64> %492, splat (i64 4294967295)
  %495 = mul nuw <2 x i64> %494, %493
  %496 = shufflevector <2 x i64> %486, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %497 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %484
  %498 = load <2 x i64>, ptr %497, align 16, !tbaa !12, !alias.scope !824, !noalias !825
  %499 = add <2 x i64> %498, %496
  %500 = add <2 x i64> %499, %495
  store <2 x i64> %500, ptr %497, align 16, !tbaa !12, !alias.scope !824, !noalias !825
  %501 = add nuw nsw i64 %484, 1
  %502 = icmp eq i64 %501, 4
  br i1 %502, label %503, label %483, !llvm.loop !69

503:                                              ; preds = %483
  %504 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %505 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  br label %506

506:                                              ; preds = %506, %503
  %507 = phi i64 [ 0, %503 ], [ %527, %506 ]
  %508 = phi i64 [ %505, %503 ], [ %526, %506 ]
  %509 = shl nuw nsw i64 %507, 4
  %510 = getelementptr inbounds nuw i8, ptr %5, i64 %509
  %511 = getelementptr inbounds nuw i8, ptr %504, i64 %509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833), !noalias !772
  %512 = load i64, ptr %510, align 16, !tbaa !19, !alias.scope !836, !noalias !837
  %513 = load i64, ptr %511, align 1, !tbaa !19, !alias.scope !831, !noalias !839
  %514 = xor i64 %513, %512
  %515 = getelementptr inbounds nuw i8, ptr %510, i64 8
  %516 = load i64, ptr %515, align 8, !tbaa !19, !alias.scope !836, !noalias !837
  %517 = getelementptr inbounds nuw i8, ptr %511, i64 8
  %518 = load i64, ptr %517, align 1, !tbaa !19, !alias.scope !831, !noalias !839
  %519 = xor i64 %518, %516
  %520 = zext i64 %514 to i128
  %521 = zext i64 %519 to i128
  %522 = mul nuw i128 %521, %520
  %523 = lshr i128 %522, 64
  %524 = xor i128 %523, %522
  %525 = trunc i128 %524 to i64
  %526 = add i64 %508, %525
  %527 = add nuw nsw i64 %507, 1
  %528 = icmp eq i64 %527, 4
  br i1 %528, label %529, label %506, !llvm.loop !113

529:                                              ; preds = %506
  %530 = lshr i64 %526, 37
  %531 = xor i64 %530, %526
  %532 = mul i64 %531, 1609587791953885689
  %533 = lshr i64 %532, 32
  %534 = getelementptr inbounds i8, ptr %481, i64 -75
  %535 = mul i64 %1, -4417276706812531889
  %536 = xor i64 %535, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  br label %537

537:                                              ; preds = %537, %529
  %538 = phi i64 [ 0, %529 ], [ %558, %537 ]
  %539 = phi i64 [ %536, %529 ], [ %557, %537 ]
  %540 = shl nuw nsw i64 %538, 4
  %541 = getelementptr inbounds nuw i8, ptr %5, i64 %540
  %542 = getelementptr inbounds nuw i8, ptr %534, i64 %540
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845), !noalias !772
  %543 = load i64, ptr %541, align 16, !tbaa !19, !alias.scope !848, !noalias !849
  %544 = load i64, ptr %542, align 1, !tbaa !19, !alias.scope !843, !noalias !851
  %545 = xor i64 %544, %543
  %546 = getelementptr inbounds nuw i8, ptr %541, i64 8
  %547 = load i64, ptr %546, align 8, !tbaa !19, !alias.scope !848, !noalias !849
  %548 = getelementptr inbounds nuw i8, ptr %542, i64 8
  %549 = load i64, ptr %548, align 1, !tbaa !19, !alias.scope !843, !noalias !851
  %550 = xor i64 %549, %547
  %551 = zext i64 %545 to i128
  %552 = zext i64 %550 to i128
  %553 = mul nuw i128 %552, %551
  %554 = lshr i128 %553, 64
  %555 = xor i128 %554, %553
  %556 = trunc i128 %555 to i64
  %557 = add i64 %539, %556
  %558 = add nuw nsw i64 %538, 1
  %559 = icmp eq i64 %558, 4
  br i1 %559, label %560, label %537, !llvm.loop !113

560:                                              ; preds = %537
  %561 = xor i64 %533, %532
  %562 = lshr i64 %557, 37
  %563 = xor i64 %562, %557
  %564 = mul i64 %563, 1609587791953885689
  %565 = lshr i64 %564, 32
  %566 = xor i64 %565, %564
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #31, !noalias !777
  %567 = insertvalue { i64, i64 } poison, i64 %561, 0
  %568 = insertvalue { i64, i64 } %567, i64 %566, 1
  br label %569

569:                                              ; preds = %150, %103, %62, %9, %311, %372, %560
  %570 = phi { i64, i64 } [ %369, %311 ], [ %373, %372 ], [ %568, %560 ], [ %59, %9 ], [ %100, %62 ], [ %149, %103 ], [ %178, %150 ]
  ret { i64, i64 } %570
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %159

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %50

7:                                                ; preds = %5
  %8 = sub i64 6455697860950631241, %2
  %9 = add i64 %2, -4466874330221494952
  %10 = load i64, ptr %0, align 1, !tbaa !19
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  %13 = load i64, ptr %12, align 1, !tbaa !19
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
  %58 = load i32, ptr %0, align 1, !tbaa !5
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %60 = getelementptr inbounds i8, ptr %59, i64 -4
  %61 = load i32, ptr %60, align 1, !tbaa !5
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
  %95 = load i8, ptr %0, align 1, !tbaa !12
  %96 = lshr i64 %1, 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !12
  %99 = getelementptr i8, ptr %0, i64 %1
  %100 = getelementptr i8, ptr %99, i64 -1
  %101 = load i8, ptr %100, align 1, !tbaa !12
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
  %172 = load i64, ptr %169, align 1, !tbaa !19, !noalias !852
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %174 = load i64, ptr %173, align 1, !tbaa !19, !noalias !852
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
  %186 = load i64, ptr %171, align 1, !tbaa !19
  %187 = getelementptr inbounds i8, ptr %170, i64 -56
  %188 = load i64, ptr %187, align 1, !tbaa !19
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
  %209 = load i64, ptr %206, align 1, !tbaa !19, !noalias !855
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %211 = load i64, ptr %210, align 1, !tbaa !19, !noalias !855
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
  %223 = load i64, ptr %208, align 1, !tbaa !19
  %224 = getelementptr inbounds i8, ptr %207, i64 -40
  %225 = load i64, ptr %224, align 1, !tbaa !19
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
  %247 = load i64, ptr %244, align 1, !tbaa !19, !noalias !858
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %249 = load i64, ptr %248, align 1, !tbaa !19, !noalias !858
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
  %261 = load i64, ptr %246, align 1, !tbaa !19
  %262 = getelementptr inbounds i8, ptr %245, i64 -24
  %263 = load i64, ptr %262, align 1, !tbaa !19
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
  %284 = load i64, ptr %0, align 1, !tbaa !19, !noalias !861
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %286 = load i64, ptr %285, align 1, !tbaa !19, !noalias !861
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
  %298 = load i64, ptr %283, align 1, !tbaa !19
  %299 = getelementptr inbounds i8, ptr %282, i64 -8
  %300 = load i64, ptr %299, align 1, !tbaa !19
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
  %339 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2) #32
  br label %342

340:                                              ; preds = %336
  %341 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #31
  br label %342

342:                                              ; preds = %138, %94, %52, %7, %279, %338, %340
  %343 = phi { i64, i64 } [ %335, %279 ], [ %339, %338 ], [ %341, %340 ], [ %49, %7 ], [ %91, %52 ], [ %137, %94 ], [ %158, %138 ]
  ret { i64, i64 } %343
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #14 {
  %4 = alloca [8 x i64], align 16
  %5 = alloca [8 x i64], align 16
  %6 = alloca [192 x i8], align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %191

8:                                                ; preds = %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #31, !noalias !872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !872
  %9 = add i64 %1, -1
  %10 = icmp ult i64 %9, 1024
  br i1 %10, label %70, label %11

11:                                               ; preds = %8
  %12 = lshr i64 %9, 10
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 1)
  br label %14

14:                                               ; preds = %11, %67
  %15 = phi i64 [ %68, %67 ], [ 0, %11 ]
  %16 = shl i64 %15, 10
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  br label %18

18:                                               ; preds = %14, %45
  %19 = phi i64 [ 0, %14 ], [ %46, %45 ]
  %20 = shl nuw nsw i64 %19, 6
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %22, i32 0, i32 3, i32 1), !noalias !876
  %23 = shl nuw nsw i64 %19, 3
  %24 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  br label %25

25:                                               ; preds = %18, %25
  %26 = phi i64 [ 0, %18 ], [ %43, %25 ]
  %27 = getelementptr inbounds nuw <2 x i64>, ptr %21, i64 %26
  %28 = load <2 x i64>, ptr %27, align 1, !tbaa !12, !alias.scope !880, !noalias !881
  %29 = getelementptr inbounds nuw <2 x i64>, ptr %24, i64 %26
  %30 = load <2 x i64>, ptr %29, align 8, !tbaa !12, !alias.scope !870, !noalias !882
  %31 = xor <2 x i64> %30, %28
  %32 = bitcast <2 x i64> %31 to <4 x i32>
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %34 = bitcast <4 x i32> %33 to <2 x i64>
  %35 = and <2 x i64> %31, splat (i64 4294967295)
  %36 = and <2 x i64> %34, splat (i64 4294967295)
  %37 = mul nuw <2 x i64> %36, %35
  %38 = shufflevector <2 x i64> %28, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %39 = getelementptr inbounds nuw <2 x i64>, ptr %4, i64 %26
  %40 = load <2 x i64>, ptr %39, align 16, !tbaa !12, !alias.scope !883, !noalias !884
  %41 = add <2 x i64> %40, %38
  %42 = add <2 x i64> %41, %37
  store <2 x i64> %42, ptr %39, align 16, !tbaa !12, !alias.scope !883, !noalias !884
  %43 = add nuw nsw i64 %26, 1
  %44 = icmp eq i64 %43, 4
  br i1 %44, label %45, label %25, !llvm.loop !69

45:                                               ; preds = %25
  %46 = add nuw nsw i64 %19, 1
  %47 = icmp eq i64 %46, 16
  br i1 %47, label %48, label %18, !llvm.loop !70

48:                                               ; preds = %45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  br label %49

49:                                               ; preds = %48, %49
  %50 = phi i64 [ 0, %48 ], [ %65, %49 ]
  %51 = getelementptr inbounds nuw <2 x i64>, ptr %4, i64 %50
  %52 = load <2 x i64>, ptr %51, align 16, !tbaa !12, !alias.scope !892, !noalias !895
  %53 = lshr <2 x i64> %52, splat (i64 47)
  %54 = getelementptr inbounds nuw <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), i64 %50
  %55 = load <2 x i64>, ptr %54, align 16, !tbaa !12, !alias.scope !870, !noalias !899
  %56 = xor <2 x i64> %55, %53
  %57 = xor <2 x i64> %56, %52
  %58 = bitcast <2 x i64> %57 to <4 x i32>
  %59 = shufflevector <4 x i32> %58, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %60 = bitcast <4 x i32> %59 to <2 x i64>
  %61 = and <2 x i64> %57, splat (i64 4294967295)
  %62 = mul nuw <2 x i64> %61, splat (i64 2654435761)
  %63 = mul <2 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <2 x i64> %63, %62
  store <2 x i64> %64, ptr %51, align 16, !tbaa !12, !alias.scope !892, !noalias !895
  %65 = add nuw nsw i64 %50, 1
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %49, !llvm.loop !81

67:                                               ; preds = %49
  %68 = add nuw nsw i64 %15, 1
  %69 = icmp eq i64 %68, %13
  br i1 %69, label %70, label %14, !llvm.loop !82

70:                                               ; preds = %67, %8
  %71 = and i64 %9, -1024
  %72 = lshr i64 %9, 6
  %73 = and i64 %72, 15
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %75 = icmp eq i64 %73, 0
  br i1 %75, label %106, label %76

76:                                               ; preds = %70, %103
  %77 = phi i64 [ %104, %103 ], [ 0, %70 ]
  %78 = shl i64 %77, 6
  %79 = getelementptr inbounds nuw i8, ptr %74, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %80, i32 0, i32 3, i32 1), !noalias !903
  %81 = shl i64 %77, 3
  %82 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %81
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  br label %83

83:                                               ; preds = %76, %83
  %84 = phi i64 [ 0, %76 ], [ %101, %83 ]
  %85 = getelementptr inbounds nuw <2 x i64>, ptr %79, i64 %84
  %86 = load <2 x i64>, ptr %85, align 1, !tbaa !12, !alias.scope !880, !noalias !907
  %87 = getelementptr inbounds nuw <2 x i64>, ptr %82, i64 %84
  %88 = load <2 x i64>, ptr %87, align 8, !tbaa !12, !alias.scope !870, !noalias !908
  %89 = xor <2 x i64> %88, %86
  %90 = bitcast <2 x i64> %89 to <4 x i32>
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %92 = bitcast <4 x i32> %91 to <2 x i64>
  %93 = and <2 x i64> %89, splat (i64 4294967295)
  %94 = and <2 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <2 x i64> %94, %93
  %96 = shufflevector <2 x i64> %86, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %97 = getelementptr inbounds nuw <2 x i64>, ptr %4, i64 %84
  %98 = load <2 x i64>, ptr %97, align 16, !tbaa !12, !alias.scope !909, !noalias !910
  %99 = add <2 x i64> %98, %96
  %100 = add <2 x i64> %99, %95
  store <2 x i64> %100, ptr %97, align 16, !tbaa !12, !alias.scope !909, !noalias !910
  %101 = add nuw nsw i64 %84, 1
  %102 = icmp eq i64 %101, 4
  br i1 %102, label %103, label %83, !llvm.loop !69

103:                                              ; preds = %83
  %104 = add nuw nsw i64 %77, 1
  %105 = icmp eq i64 %104, %73
  br i1 %105, label %106, label %76, !llvm.loop !70

106:                                              ; preds = %103, %70
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %108 = getelementptr inbounds i8, ptr %107, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  br label %109

109:                                              ; preds = %106, %109
  %110 = phi i64 [ 0, %106 ], [ %127, %109 ]
  %111 = getelementptr inbounds nuw <2 x i64>, ptr %108, i64 %110
  %112 = load <2 x i64>, ptr %111, align 1, !tbaa !12, !alias.scope !880, !noalias !918
  %113 = getelementptr inbounds nuw <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i64 %110
  %114 = load <2 x i64>, ptr %113, align 1, !tbaa !12, !alias.scope !870, !noalias !919
  %115 = xor <2 x i64> %114, %112
  %116 = bitcast <2 x i64> %115 to <4 x i32>
  %117 = shufflevector <4 x i32> %116, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %118 = bitcast <4 x i32> %117 to <2 x i64>
  %119 = and <2 x i64> %115, splat (i64 4294967295)
  %120 = and <2 x i64> %118, splat (i64 4294967295)
  %121 = mul nuw <2 x i64> %120, %119
  %122 = shufflevector <2 x i64> %112, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %123 = getelementptr inbounds nuw <2 x i64>, ptr %4, i64 %110
  %124 = load <2 x i64>, ptr %123, align 16, !tbaa !12, !alias.scope !920, !noalias !921
  %125 = add <2 x i64> %124, %122
  %126 = add <2 x i64> %125, %121
  store <2 x i64> %126, ptr %123, align 16, !tbaa !12, !alias.scope !920, !noalias !921
  %127 = add nuw nsw i64 %110, 1
  %128 = icmp eq i64 %127, 4
  br i1 %128, label %129, label %109, !llvm.loop !69

129:                                              ; preds = %109
  %130 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi i64 [ 0, %129 ], [ %152, %131 ]
  %133 = phi i64 [ %130, %129 ], [ %151, %131 ]
  %134 = shl nuw nsw i64 %132, 4
  %135 = getelementptr inbounds nuw i8, ptr %4, i64 %134
  %136 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 11), i64 %134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929), !noalias !880
  %137 = load i64, ptr %135, align 16, !tbaa !19, !alias.scope !932, !noalias !933
  %138 = load i64, ptr %136, align 1, !tbaa !19, !alias.scope !927, !noalias !935
  %139 = xor i64 %138, %137
  %140 = getelementptr inbounds nuw i8, ptr %135, i64 8
  %141 = load i64, ptr %140, align 8, !tbaa !19, !alias.scope !932, !noalias !933
  %142 = getelementptr inbounds nuw i8, ptr %136, i64 8
  %143 = load i64, ptr %142, align 1, !tbaa !19, !alias.scope !927, !noalias !935
  %144 = xor i64 %143, %141
  %145 = zext i64 %139 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %133, %150
  %152 = add nuw nsw i64 %132, 1
  %153 = icmp eq i64 %152, 4
  br i1 %153, label %154, label %131, !llvm.loop !113

154:                                              ; preds = %131
  %155 = lshr i64 %151, 37
  %156 = xor i64 %155, %151
  %157 = mul i64 %156, 1609587791953885689
  %158 = lshr i64 %157, 32
  %159 = mul i64 %1, -4417276706812531889
  %160 = xor i64 %159, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  br label %161

161:                                              ; preds = %161, %154
  %162 = phi i64 [ 0, %154 ], [ %182, %161 ]
  %163 = phi i64 [ %160, %154 ], [ %181, %161 ]
  %164 = shl nuw nsw i64 %162, 4
  %165 = getelementptr inbounds nuw i8, ptr %4, i64 %164
  %166 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 117), i64 %164
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941), !noalias !880
  %167 = load i64, ptr %165, align 16, !tbaa !19, !alias.scope !944, !noalias !945
  %168 = load i64, ptr %166, align 1, !tbaa !19, !alias.scope !939, !noalias !947
  %169 = xor i64 %168, %167
  %170 = getelementptr inbounds nuw i8, ptr %165, i64 8
  %171 = load i64, ptr %170, align 8, !tbaa !19, !alias.scope !944, !noalias !945
  %172 = getelementptr inbounds nuw i8, ptr %166, i64 8
  %173 = load i64, ptr %172, align 1, !tbaa !19, !alias.scope !939, !noalias !947
  %174 = xor i64 %173, %171
  %175 = zext i64 %169 to i128
  %176 = zext i64 %174 to i128
  %177 = mul nuw i128 %176, %175
  %178 = lshr i128 %177, 64
  %179 = xor i128 %178, %177
  %180 = trunc i128 %179 to i64
  %181 = add i64 %163, %180
  %182 = add nuw nsw i64 %162, 1
  %183 = icmp eq i64 %182, 4
  br i1 %183, label %184, label %161, !llvm.loop !113

184:                                              ; preds = %161
  %185 = xor i64 %158, %157
  %186 = lshr i64 %181, 37
  %187 = xor i64 %186, %181
  %188 = mul i64 %187, 1609587791953885689
  %189 = lshr i64 %188, 32
  %190 = xor i64 %189, %188
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #31, !noalias !872
  br label %391

191:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #31, !noalias !864
  %192 = sub i64 0, %2
  %193 = insertelement <2 x i64> poison, i64 %2, i64 0
  %194 = insertelement <2 x i64> %193, i64 %192, i64 1
  %195 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %6) #31, !noalias !864, !srcloc !274
  br label %196

196:                                              ; preds = %191, %196
  %197 = phi i64 [ 0, %191 ], [ %202, %196 ]
  %198 = getelementptr inbounds nuw <2 x i64>, ptr @XXH3_kSecret, i64 %197
  %199 = load <2 x i64>, ptr %198, align 16, !tbaa !12, !noalias !864
  %200 = add <2 x i64> %199, %194
  %201 = getelementptr inbounds nuw <2 x i64>, ptr %195, i64 %197
  store <2 x i64> %200, ptr %201, align 16, !tbaa !12, !noalias !864
  %202 = add nuw nsw i64 %197, 1
  %203 = icmp eq i64 %202, 12
  br i1 %203, label %204, label %196, !llvm.loop !275

204:                                              ; preds = %196
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #31, !noalias !953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !953
  %205 = add i64 %1, -1
  %206 = icmp ult i64 %205, 1024
  br i1 %206, label %267, label %207

207:                                              ; preds = %204
  %208 = lshr i64 %205, 10
  %209 = getelementptr inbounds nuw i8, ptr %6, i64 128
  %210 = call i64 @llvm.umax.i64(i64 %208, i64 1)
  br label %211

211:                                              ; preds = %207, %264
  %212 = phi i64 [ 0, %207 ], [ %265, %264 ]
  %213 = shl i64 %212, 10
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 %213
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  br label %215

215:                                              ; preds = %211, %242
  %216 = phi i64 [ 0, %211 ], [ %243, %242 ]
  %217 = shl nuw nsw i64 %216, 6
  %218 = getelementptr inbounds nuw i8, ptr %214, i64 %217
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %219, i32 0, i32 3, i32 1), !noalias !957
  %220 = shl nuw nsw i64 %216, 3
  %221 = getelementptr inbounds nuw i8, ptr %6, i64 %220
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  br label %222

222:                                              ; preds = %215, %222
  %223 = phi i64 [ 0, %215 ], [ %240, %222 ]
  %224 = getelementptr inbounds nuw <2 x i64>, ptr %218, i64 %223
  %225 = load <2 x i64>, ptr %224, align 1, !tbaa !12, !alias.scope !961, !noalias !962
  %226 = getelementptr inbounds nuw <2 x i64>, ptr %221, i64 %223
  %227 = load <2 x i64>, ptr %226, align 8, !tbaa !12, !alias.scope !951, !noalias !963
  %228 = xor <2 x i64> %227, %225
  %229 = bitcast <2 x i64> %228 to <4 x i32>
  %230 = shufflevector <4 x i32> %229, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %231 = bitcast <4 x i32> %230 to <2 x i64>
  %232 = and <2 x i64> %228, splat (i64 4294967295)
  %233 = and <2 x i64> %231, splat (i64 4294967295)
  %234 = mul nuw <2 x i64> %233, %232
  %235 = shufflevector <2 x i64> %225, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %236 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %223
  %237 = load <2 x i64>, ptr %236, align 16, !tbaa !12, !alias.scope !964, !noalias !965
  %238 = add <2 x i64> %237, %235
  %239 = add <2 x i64> %238, %234
  store <2 x i64> %239, ptr %236, align 16, !tbaa !12, !alias.scope !964, !noalias !965
  %240 = add nuw nsw i64 %223, 1
  %241 = icmp eq i64 %240, 4
  br i1 %241, label %242, label %222, !llvm.loop !69

242:                                              ; preds = %222
  %243 = add nuw nsw i64 %216, 1
  %244 = icmp eq i64 %243, 16
  br i1 %244, label %245, label %215, !llvm.loop !70

245:                                              ; preds = %242
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  br label %246

246:                                              ; preds = %245, %246
  %247 = phi i64 [ 0, %245 ], [ %262, %246 ]
  %248 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %247
  %249 = load <2 x i64>, ptr %248, align 16, !tbaa !12, !alias.scope !973, !noalias !976
  %250 = lshr <2 x i64> %249, splat (i64 47)
  %251 = getelementptr inbounds nuw <2 x i64>, ptr %209, i64 %247
  %252 = load <2 x i64>, ptr %251, align 16, !tbaa !12, !alias.scope !951, !noalias !980
  %253 = xor <2 x i64> %252, %250
  %254 = xor <2 x i64> %253, %249
  %255 = bitcast <2 x i64> %254 to <4 x i32>
  %256 = shufflevector <4 x i32> %255, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %257 = bitcast <4 x i32> %256 to <2 x i64>
  %258 = and <2 x i64> %254, splat (i64 4294967295)
  %259 = mul nuw <2 x i64> %258, splat (i64 2654435761)
  %260 = mul <2 x i64> %257, splat (i64 -7046029290881679360)
  %261 = add <2 x i64> %260, %259
  store <2 x i64> %261, ptr %248, align 16, !tbaa !12, !alias.scope !973, !noalias !976
  %262 = add nuw nsw i64 %247, 1
  %263 = icmp eq i64 %262, 4
  br i1 %263, label %264, label %246, !llvm.loop !81

264:                                              ; preds = %246
  %265 = add nuw nsw i64 %212, 1
  %266 = icmp eq i64 %265, %210
  br i1 %266, label %267, label %211, !llvm.loop !82

267:                                              ; preds = %264, %204
  %268 = and i64 %205, -1024
  %269 = lshr i64 %205, 6
  %270 = and i64 %269, 15
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 %268
  call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %272 = icmp eq i64 %270, 0
  br i1 %272, label %303, label %273

273:                                              ; preds = %267, %300
  %274 = phi i64 [ %301, %300 ], [ 0, %267 ]
  %275 = shl i64 %274, 6
  %276 = getelementptr inbounds nuw i8, ptr %271, i64 %275
  %277 = getelementptr inbounds nuw i8, ptr %276, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %277, i32 0, i32 3, i32 1), !noalias !984
  %278 = shl i64 %274, 3
  %279 = getelementptr inbounds nuw i8, ptr %6, i64 %278
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  br label %280

280:                                              ; preds = %273, %280
  %281 = phi i64 [ 0, %273 ], [ %298, %280 ]
  %282 = getelementptr inbounds nuw <2 x i64>, ptr %276, i64 %281
  %283 = load <2 x i64>, ptr %282, align 1, !tbaa !12, !alias.scope !961, !noalias !988
  %284 = getelementptr inbounds nuw <2 x i64>, ptr %279, i64 %281
  %285 = load <2 x i64>, ptr %284, align 8, !tbaa !12, !alias.scope !951, !noalias !989
  %286 = xor <2 x i64> %285, %283
  %287 = bitcast <2 x i64> %286 to <4 x i32>
  %288 = shufflevector <4 x i32> %287, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %289 = bitcast <4 x i32> %288 to <2 x i64>
  %290 = and <2 x i64> %286, splat (i64 4294967295)
  %291 = and <2 x i64> %289, splat (i64 4294967295)
  %292 = mul nuw <2 x i64> %291, %290
  %293 = shufflevector <2 x i64> %283, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %294 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %281
  %295 = load <2 x i64>, ptr %294, align 16, !tbaa !12, !alias.scope !990, !noalias !991
  %296 = add <2 x i64> %295, %293
  %297 = add <2 x i64> %296, %292
  store <2 x i64> %297, ptr %294, align 16, !tbaa !12, !alias.scope !990, !noalias !991
  %298 = add nuw nsw i64 %281, 1
  %299 = icmp eq i64 %298, 4
  br i1 %299, label %300, label %280, !llvm.loop !69

300:                                              ; preds = %280
  %301 = add nuw nsw i64 %274, 1
  %302 = icmp eq i64 %301, %270
  br i1 %302, label %303, label %273, !llvm.loop !70

303:                                              ; preds = %300, %267
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %305 = getelementptr inbounds i8, ptr %304, i64 -64
  %306 = getelementptr inbounds nuw i8, ptr %6, i64 121
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  br label %307

307:                                              ; preds = %303, %307
  %308 = phi i64 [ 0, %303 ], [ %325, %307 ]
  %309 = getelementptr inbounds nuw <2 x i64>, ptr %305, i64 %308
  %310 = load <2 x i64>, ptr %309, align 1, !tbaa !12, !alias.scope !961, !noalias !999
  %311 = getelementptr inbounds nuw <2 x i64>, ptr %306, i64 %308
  %312 = load <2 x i64>, ptr %311, align 1, !tbaa !12, !alias.scope !951, !noalias !1000
  %313 = xor <2 x i64> %312, %310
  %314 = bitcast <2 x i64> %313 to <4 x i32>
  %315 = shufflevector <4 x i32> %314, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %316 = bitcast <4 x i32> %315 to <2 x i64>
  %317 = and <2 x i64> %313, splat (i64 4294967295)
  %318 = and <2 x i64> %316, splat (i64 4294967295)
  %319 = mul nuw <2 x i64> %318, %317
  %320 = shufflevector <2 x i64> %310, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %321 = getelementptr inbounds nuw <2 x i64>, ptr %5, i64 %308
  %322 = load <2 x i64>, ptr %321, align 16, !tbaa !12, !alias.scope !1001, !noalias !1002
  %323 = add <2 x i64> %322, %320
  %324 = add <2 x i64> %323, %319
  store <2 x i64> %324, ptr %321, align 16, !tbaa !12, !alias.scope !1001, !noalias !1002
  %325 = add nuw nsw i64 %308, 1
  %326 = icmp eq i64 %325, 4
  br i1 %326, label %327, label %307, !llvm.loop !69

327:                                              ; preds = %307
  %328 = getelementptr inbounds nuw i8, ptr %6, i64 11
  %329 = mul i64 %1, -7046029288634856825
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  br label %330

330:                                              ; preds = %330, %327
  %331 = phi i64 [ 0, %327 ], [ %351, %330 ]
  %332 = phi i64 [ %329, %327 ], [ %350, %330 ]
  %333 = shl nuw nsw i64 %331, 4
  %334 = getelementptr inbounds nuw i8, ptr %5, i64 %333
  %335 = getelementptr inbounds nuw i8, ptr %328, i64 %333
  call void @llvm.experimental.noalias.scope.decl(metadata !1010), !noalias !961
  %336 = load i64, ptr %334, align 16, !tbaa !19, !alias.scope !1013, !noalias !1014
  %337 = load i64, ptr %335, align 1, !tbaa !19, !alias.scope !1008, !noalias !1016
  %338 = xor i64 %337, %336
  %339 = getelementptr inbounds nuw i8, ptr %334, i64 8
  %340 = load i64, ptr %339, align 8, !tbaa !19, !alias.scope !1013, !noalias !1014
  %341 = getelementptr inbounds nuw i8, ptr %335, i64 8
  %342 = load i64, ptr %341, align 1, !tbaa !19, !alias.scope !1008, !noalias !1016
  %343 = xor i64 %342, %340
  %344 = zext i64 %338 to i128
  %345 = zext i64 %343 to i128
  %346 = mul nuw i128 %345, %344
  %347 = lshr i128 %346, 64
  %348 = xor i128 %347, %346
  %349 = trunc i128 %348 to i64
  %350 = add i64 %332, %349
  %351 = add nuw nsw i64 %331, 1
  %352 = icmp eq i64 %351, 4
  br i1 %352, label %353, label %330, !llvm.loop !113

353:                                              ; preds = %330
  %354 = lshr i64 %350, 37
  %355 = xor i64 %354, %350
  %356 = mul i64 %355, 1609587791953885689
  %357 = lshr i64 %356, 32
  %358 = getelementptr inbounds nuw i8, ptr %6, i64 117
  %359 = mul i64 %1, -4417276706812531889
  %360 = xor i64 %359, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  br label %361

361:                                              ; preds = %361, %353
  %362 = phi i64 [ 0, %353 ], [ %382, %361 ]
  %363 = phi i64 [ %360, %353 ], [ %381, %361 ]
  %364 = shl nuw nsw i64 %362, 4
  %365 = getelementptr inbounds nuw i8, ptr %5, i64 %364
  %366 = getelementptr inbounds nuw i8, ptr %358, i64 %364
  call void @llvm.experimental.noalias.scope.decl(metadata !1022), !noalias !961
  %367 = load i64, ptr %365, align 16, !tbaa !19, !alias.scope !1025, !noalias !1026
  %368 = load i64, ptr %366, align 1, !tbaa !19, !alias.scope !1020, !noalias !1028
  %369 = xor i64 %368, %367
  %370 = getelementptr inbounds nuw i8, ptr %365, i64 8
  %371 = load i64, ptr %370, align 8, !tbaa !19, !alias.scope !1025, !noalias !1026
  %372 = getelementptr inbounds nuw i8, ptr %366, i64 8
  %373 = load i64, ptr %372, align 1, !tbaa !19, !alias.scope !1020, !noalias !1028
  %374 = xor i64 %373, %371
  %375 = zext i64 %369 to i128
  %376 = zext i64 %374 to i128
  %377 = mul nuw i128 %376, %375
  %378 = lshr i128 %377, 64
  %379 = xor i128 %378, %377
  %380 = trunc i128 %379 to i64
  %381 = add i64 %363, %380
  %382 = add nuw nsw i64 %362, 1
  %383 = icmp eq i64 %382, 4
  br i1 %383, label %384, label %361, !llvm.loop !113

384:                                              ; preds = %361
  %385 = xor i64 %357, %356
  %386 = lshr i64 %381, 37
  %387 = xor i64 %386, %381
  %388 = mul i64 %387, 1609587791953885689
  %389 = lshr i64 %388, 32
  %390 = xor i64 %389, %388
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #31, !noalias !953
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #31, !noalias !864
  br label %391

391:                                              ; preds = %184, %384
  %392 = phi i64 [ %185, %184 ], [ %385, %384 ]
  %393 = phi i64 [ %190, %184 ], [ %390, %384 ]
  %394 = insertvalue { i64, i64 } poison, i64 %392, 0
  %395 = insertvalue { i64, i64 } %394, i64 %393, 1
  ret { i64, i64 } %395
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSecretandSeed(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = alloca [8 x i64], align 16
  %7 = icmp ult i64 %1, 241
  br i1 %7, label %8, label %343

8:                                                ; preds = %5
  %9 = icmp ult i64 %1, 17
  br i1 %9, label %10, label %164

10:                                               ; preds = %8
  %11 = icmp samesign ugt i64 %1, 8
  br i1 %11, label %12, label %55

12:                                               ; preds = %10
  %13 = sub i64 6455697860950631241, %4
  %14 = add i64 %4, -4466874330221494952
  %15 = load i64, ptr %0, align 1, !tbaa !19
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %17 = getelementptr inbounds i8, ptr %16, i64 -8
  %18 = load i64, ptr %17, align 1, !tbaa !19
  %19 = xor i64 %15, %13
  %20 = xor i64 %19, %18
  %21 = zext i64 %20 to i128
  %22 = mul nuw i128 %21, 11400714785074694791
  %23 = trunc i128 %22 to i64
  %24 = lshr i128 %22, 64
  %25 = trunc nuw i128 %24 to i64
  %26 = shl nuw nsw i64 %1, 54
  %27 = add nsw i64 %26, -18014398509481984
  %28 = add i64 %27, %23
  %29 = xor i64 %18, %14
  %30 = and i64 %29, 4294967295
  %31 = mul nuw i64 %30, 2246822518
  %32 = add i64 %31, %29
  %33 = add i64 %32, %25
  %34 = tail call noundef i64 @llvm.bswap.i64(i64 %33)
  %35 = xor i64 %34, %28
  %36 = zext i64 %35 to i128
  %37 = mul nuw i128 %36, 14029467366897019727
  %38 = trunc i128 %37 to i64
  %39 = lshr i128 %37, 64
  %40 = trunc nuw i128 %39 to i64
  %41 = mul i64 %33, -4417276706812531889
  %42 = add i64 %41, %40
  %43 = lshr i64 %38, 37
  %44 = xor i64 %43, %38
  %45 = mul i64 %44, 1609587791953885689
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  %48 = lshr i64 %42, 37
  %49 = xor i64 %48, %42
  %50 = mul i64 %49, 1609587791953885689
  %51 = lshr i64 %50, 32
  %52 = xor i64 %51, %50
  %53 = insertvalue { i64, i64 } poison, i64 %47, 0
  %54 = insertvalue { i64, i64 } %53, i64 %52, 1
  br label %538

55:                                               ; preds = %10
  %56 = icmp samesign ugt i64 %1, 3
  br i1 %56, label %57, label %97

57:                                               ; preds = %55
  %58 = trunc i64 %4 to i32
  %59 = tail call noundef i32 @llvm.bswap.i32(i32 %58)
  %60 = zext i32 %59 to i64
  %61 = shl nuw i64 %60, 32
  %62 = xor i64 %61, %4
  %63 = load i32, ptr %0, align 1, !tbaa !5
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %65 = getelementptr inbounds i8, ptr %64, i64 -4
  %66 = load i32, ptr %65, align 1, !tbaa !5
  %67 = zext i32 %63 to i64
  %68 = zext i32 %66 to i64
  %69 = shl nuw i64 %68, 32
  %70 = or disjoint i64 %69, %67
  %71 = add i64 %62, -4255862940314790740
  %72 = xor i64 %70, %71
  %73 = shl nuw nsw i64 %1, 2
  %74 = add nuw nsw i64 %73, -7046029288634856825
  %75 = zext i64 %72 to i128
  %76 = zext i64 %74 to i128
  %77 = mul nuw i128 %75, %76
  %78 = trunc i128 %77 to i64
  %79 = lshr i128 %77, 64
  %80 = trunc nuw i128 %79 to i64
  %81 = shl i64 %78, 1
  %82 = add i64 %81, %80
  %83 = lshr i64 %82, 3
  %84 = xor i64 %83, %78
  %85 = lshr i64 %84, 35
  %86 = xor i64 %85, %84
  %87 = mul i64 %86, -6939452855193903323
  %88 = lshr i64 %87, 28
  %89 = xor i64 %88, %87
  %90 = lshr i64 %82, 37
  %91 = xor i64 %90, %82
  %92 = mul i64 %91, 1609587791953885689
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  %95 = insertvalue { i64, i64 } poison, i64 %89, 0
  %96 = insertvalue { i64, i64 } %95, i64 %94, 1
  br label %538

97:                                               ; preds = %55
  %98 = icmp eq i64 %1, 0
  br i1 %98, label %143, label %99

99:                                               ; preds = %97
  %100 = load i8, ptr %0, align 1, !tbaa !12
  %101 = lshr i64 %1, 1
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !12
  %104 = getelementptr i8, ptr %0, i64 %1
  %105 = getelementptr i8, ptr %104, i64 -1
  %106 = load i8, ptr %105, align 1, !tbaa !12
  %107 = zext i8 %100 to i32
  %108 = shl nuw nsw i32 %107, 16
  %109 = zext i8 %103 to i32
  %110 = shl nuw i32 %109, 24
  %111 = or disjoint i32 %110, %108
  %112 = zext i8 %106 to i32
  %113 = or disjoint i32 %111, %112
  %114 = trunc nuw nsw i64 %1 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = or disjoint i32 %113, %115
  %117 = tail call noundef i32 @llvm.bswap.i32(i32 %116)
  %118 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 13)
  %119 = add i64 %4, 2267503259
  %120 = sub i64 808198283, %4
  %121 = zext i32 %116 to i64
  %122 = zext nneg i32 %118 to i64
  %123 = lshr i64 %119, 33
  %124 = xor i64 %123, %121
  %125 = xor i64 %124, %119
  %126 = mul i64 %125, -4417276706812531889
  %127 = lshr i64 %126, 29
  %128 = xor i64 %127, %126
  %129 = mul i64 %128, 1609587929392839161
  %130 = lshr i64 %129, 32
  %131 = xor i64 %130, %129
  %132 = lshr i64 %120, 33
  %133 = xor i64 %132, %122
  %134 = xor i64 %133, %120
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  %141 = insertvalue { i64, i64 } poison, i64 %131, 0
  %142 = insertvalue { i64, i64 } %141, i64 %140, 1
  br label %538

143:                                              ; preds = %97
  %144 = xor i64 %4, 7507096552062056628
  %145 = lshr i64 %144, 33
  %146 = xor i64 %145, %144
  %147 = mul i64 %146, -4417276706812531889
  %148 = lshr i64 %147, 29
  %149 = xor i64 %148, %147
  %150 = mul i64 %149, 1609587929392839161
  %151 = lshr i64 %150, 32
  %152 = xor i64 %151, %150
  %153 = xor i64 %4, -7613947547284439735
  %154 = lshr i64 %153, 33
  %155 = xor i64 %154, %153
  %156 = mul i64 %155, -4417276706812531889
  %157 = lshr i64 %156, 29
  %158 = xor i64 %157, %156
  %159 = mul i64 %158, 1609587929392839161
  %160 = lshr i64 %159, 32
  %161 = xor i64 %160, %159
  %162 = insertvalue { i64, i64 } poison, i64 %152, 0
  %163 = insertvalue { i64, i64 } %162, i64 %161, 1
  br label %538

164:                                              ; preds = %8
  %165 = icmp ult i64 %1, 129
  br i1 %165, label %166, label %341

166:                                              ; preds = %164
  %167 = mul i64 %1, -7046029288634856825
  %168 = icmp samesign ugt i64 %1, 32
  br i1 %168, label %169, label %284

169:                                              ; preds = %166
  %170 = icmp samesign ugt i64 %1, 64
  br i1 %170, label %171, label %246

171:                                              ; preds = %169
  %172 = icmp samesign ugt i64 %1, 96
  br i1 %172, label %173, label %208

173:                                              ; preds = %171
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %176 = getelementptr inbounds i8, ptr %175, i64 -64
  %177 = load i64, ptr %174, align 1, !tbaa !19, !noalias !1029
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %179 = load i64, ptr %178, align 1, !tbaa !19, !noalias !1029
  %180 = add i64 %4, 4554437623014685352
  %181 = xor i64 %177, %180
  %182 = sub i64 2111919702937427193, %4
  %183 = xor i64 %179, %182
  %184 = zext i64 %181 to i128
  %185 = zext i64 %183 to i128
  %186 = mul nuw i128 %185, %184
  %187 = lshr i128 %186, 64
  %188 = xor i128 %187, %186
  %189 = trunc i128 %188 to i64
  %190 = add i64 %167, %189
  %191 = load i64, ptr %176, align 1, !tbaa !19
  %192 = getelementptr inbounds i8, ptr %175, i64 -56
  %193 = load i64, ptr %192, align 1, !tbaa !19
  %194 = add i64 %193, %191
  %195 = xor i64 %190, %194
  %196 = add i64 %4, 3556072174620004746
  %197 = xor i64 %191, %196
  %198 = sub i64 7238261902898274248, %4
  %199 = xor i64 %193, %198
  %200 = zext i64 %197 to i128
  %201 = zext i64 %199 to i128
  %202 = mul nuw i128 %201, %200
  %203 = lshr i128 %202, 64
  %204 = xor i128 %203, %202
  %205 = trunc i128 %204 to i64
  %206 = add i64 %179, %177
  %207 = xor i64 %206, %205
  br label %208

208:                                              ; preds = %173, %171
  %209 = phi i64 [ %195, %173 ], [ %167, %171 ]
  %210 = phi i64 [ %207, %173 ], [ 0, %171 ]
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %213 = getelementptr inbounds i8, ptr %212, i64 -48
  %214 = load i64, ptr %211, align 1, !tbaa !19, !noalias !1032
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %216 = load i64, ptr %215, align 1, !tbaa !19, !noalias !1032
  %217 = add i64 %4, -3818837453329782724
  %218 = xor i64 %214, %217
  %219 = sub i64 -6688317018830679928, %4
  %220 = xor i64 %216, %219
  %221 = zext i64 %218 to i128
  %222 = zext i64 %220 to i128
  %223 = mul nuw i128 %222, %221
  %224 = lshr i128 %223, 64
  %225 = xor i128 %224, %223
  %226 = trunc i128 %225 to i64
  %227 = add i64 %209, %226
  %228 = load i64, ptr %213, align 1, !tbaa !19
  %229 = getelementptr inbounds i8, ptr %212, i64 -40
  %230 = load i64, ptr %229, align 1, !tbaa !19
  %231 = add i64 %230, %228
  %232 = xor i64 %227, %231
  %233 = add i64 %4, 5690594596133299313
  %234 = xor i64 %228, %233
  %235 = sub i64 -2833645246901970632, %4
  %236 = xor i64 %230, %235
  %237 = zext i64 %234 to i128
  %238 = zext i64 %236 to i128
  %239 = mul nuw i128 %238, %237
  %240 = lshr i128 %239, 64
  %241 = xor i128 %240, %239
  %242 = trunc i128 %241 to i64
  %243 = add i64 %210, %242
  %244 = add i64 %216, %214
  %245 = xor i64 %243, %244
  br label %246

246:                                              ; preds = %208, %169
  %247 = phi i64 [ %232, %208 ], [ %167, %169 ]
  %248 = phi i64 [ %245, %208 ], [ 0, %169 ]
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %251 = getelementptr inbounds i8, ptr %250, i64 -32
  %252 = load i64, ptr %249, align 1, !tbaa !19, !noalias !1035
  %253 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %254 = load i64, ptr %253, align 1, !tbaa !19, !noalias !1035
  %255 = add i64 %4, 8711581037947681227
  %256 = xor i64 %252, %255
  %257 = sub i64 2410270004345854594, %4
  %258 = xor i64 %254, %257
  %259 = zext i64 %256 to i128
  %260 = zext i64 %258 to i128
  %261 = mul nuw i128 %260, %259
  %262 = lshr i128 %261, 64
  %263 = xor i128 %262, %261
  %264 = trunc i128 %263 to i64
  %265 = add i64 %247, %264
  %266 = load i64, ptr %251, align 1, !tbaa !19
  %267 = getelementptr inbounds i8, ptr %250, i64 -24
  %268 = load i64, ptr %267, align 1, !tbaa !19
  %269 = add i64 %268, %266
  %270 = xor i64 %265, %269
  %271 = add i64 %4, -8204357891075471176
  %272 = xor i64 %266, %271
  %273 = sub i64 5487137525590930912, %4
  %274 = xor i64 %268, %273
  %275 = zext i64 %272 to i128
  %276 = zext i64 %274 to i128
  %277 = mul nuw i128 %276, %275
  %278 = lshr i128 %277, 64
  %279 = xor i128 %278, %277
  %280 = trunc i128 %279 to i64
  %281 = add i64 %248, %280
  %282 = add i64 %254, %252
  %283 = xor i64 %281, %282
  br label %284

284:                                              ; preds = %166, %246
  %285 = phi i64 [ %270, %246 ], [ %167, %166 ]
  %286 = phi i64 [ %283, %246 ], [ 0, %166 ]
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %288 = getelementptr inbounds i8, ptr %287, i64 -16
  %289 = load i64, ptr %0, align 1, !tbaa !19, !noalias !1038
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %291 = load i64, ptr %290, align 1, !tbaa !19, !noalias !1038
  %292 = add i64 %4, -4734510112055689544
  %293 = xor i64 %289, %292
  %294 = sub i64 2066345149520216444, %4
  %295 = xor i64 %291, %294
  %296 = zext i64 %293 to i128
  %297 = zext i64 %295 to i128
  %298 = mul nuw i128 %297, %296
  %299 = lshr i128 %298, 64
  %300 = xor i128 %299, %298
  %301 = trunc i128 %300 to i64
  %302 = add i64 %285, %301
  %303 = load i64, ptr %288, align 1, !tbaa !19
  %304 = getelementptr inbounds i8, ptr %287, i64 -8
  %305 = load i64, ptr %304, align 1, !tbaa !19
  %306 = add i64 %305, %303
  %307 = xor i64 %302, %306
  %308 = add i64 %4, -2623469361688619810
  %309 = xor i64 %303, %308
  %310 = sub i64 2262974939099578482, %4
  %311 = xor i64 %305, %310
  %312 = zext i64 %309 to i128
  %313 = zext i64 %311 to i128
  %314 = mul nuw i128 %313, %312
  %315 = lshr i128 %314, 64
  %316 = xor i128 %315, %314
  %317 = trunc i128 %316 to i64
  %318 = add i64 %286, %317
  %319 = add i64 %291, %289
  %320 = xor i64 %318, %319
  %321 = add i64 %320, %307
  %322 = mul i64 %307, -7046029288634856825
  %323 = mul i64 %320, -8796714831421723037
  %324 = sub i64 %1, %4
  %325 = mul i64 %324, -4417276706812531889
  %326 = add i64 %322, %325
  %327 = add i64 %326, %323
  %328 = lshr i64 %321, 37
  %329 = xor i64 %328, %321
  %330 = mul i64 %329, 1609587791953885689
  %331 = lshr i64 %330, 32
  %332 = xor i64 %331, %330
  %333 = lshr i64 %327, 37
  %334 = xor i64 %333, %327
  %335 = mul i64 %334, 1609587791953885689
  %336 = lshr i64 %335, 32
  %337 = xor i64 %336, %335
  %338 = sub i64 0, %337
  %339 = insertvalue { i64, i64 } poison, i64 %332, 0
  %340 = insertvalue { i64, i64 } %339, i64 %338, 1
  br label %538

341:                                              ; preds = %164
  %342 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %4) #32
  br label %538

343:                                              ; preds = %5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #31, !noalias !1046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !1046
  %344 = add i64 %3, -64
  %345 = lshr i64 %344, 3
  %346 = shl i64 %345, 6
  %347 = add i64 %1, -1
  %348 = udiv i64 %347, %346
  %349 = urem i64 %347, %346
  %350 = icmp ugt i64 %346, %347
  br i1 %350, label %412, label %351

351:                                              ; preds = %343
  %352 = icmp ult i64 %344, 8
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %354 = getelementptr inbounds i8, ptr %353, i64 -64
  %355 = tail call i64 @llvm.umax.i64(i64 %345, i64 1)
  br label %356

356:                                              ; preds = %351, %409
  %357 = phi i64 [ 0, %351 ], [ %410, %409 ]
  %358 = mul i64 %357, %346
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 %358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  br i1 %352, label %390, label %360

360:                                              ; preds = %356, %387
  %361 = phi i64 [ %388, %387 ], [ 0, %356 ]
  %362 = shl i64 %361, 6
  %363 = getelementptr inbounds nuw i8, ptr %359, i64 %362
  %364 = getelementptr inbounds nuw i8, ptr %363, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %364, i32 0, i32 3, i32 1), !noalias !1050
  %365 = shl i64 %361, 3
  %366 = getelementptr inbounds nuw i8, ptr %2, i64 %365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  br label %367

367:                                              ; preds = %360, %367
  %368 = phi i64 [ 0, %360 ], [ %385, %367 ]
  %369 = getelementptr inbounds nuw <2 x i64>, ptr %363, i64 %368
  %370 = load <2 x i64>, ptr %369, align 1, !tbaa !12, !alias.scope !1041, !noalias !1054
  %371 = getelementptr inbounds nuw <2 x i64>, ptr %366, i64 %368
  %372 = load <2 x i64>, ptr %371, align 1, !tbaa !12, !alias.scope !1044, !noalias !1055
  %373 = xor <2 x i64> %372, %370
  %374 = bitcast <2 x i64> %373 to <4 x i32>
  %375 = shufflevector <4 x i32> %374, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %376 = bitcast <4 x i32> %375 to <2 x i64>
  %377 = and <2 x i64> %373, splat (i64 4294967295)
  %378 = and <2 x i64> %376, splat (i64 4294967295)
  %379 = mul nuw <2 x i64> %378, %377
  %380 = shufflevector <2 x i64> %370, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %381 = getelementptr inbounds nuw <2 x i64>, ptr %6, i64 %368
  %382 = load <2 x i64>, ptr %381, align 16, !tbaa !12, !alias.scope !1056, !noalias !1057
  %383 = add <2 x i64> %382, %380
  %384 = add <2 x i64> %383, %379
  store <2 x i64> %384, ptr %381, align 16, !tbaa !12, !alias.scope !1056, !noalias !1057
  %385 = add nuw nsw i64 %368, 1
  %386 = icmp eq i64 %385, 4
  br i1 %386, label %387, label %367, !llvm.loop !69

387:                                              ; preds = %367
  %388 = add nuw nsw i64 %361, 1
  %389 = icmp eq i64 %388, %355
  br i1 %389, label %390, label %360, !llvm.loop !70

390:                                              ; preds = %387, %356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  br label %391

391:                                              ; preds = %390, %391
  %392 = phi i64 [ 0, %390 ], [ %407, %391 ]
  %393 = getelementptr inbounds nuw <2 x i64>, ptr %6, i64 %392
  %394 = load <2 x i64>, ptr %393, align 16, !tbaa !12, !alias.scope !1065, !noalias !1068
  %395 = lshr <2 x i64> %394, splat (i64 47)
  %396 = getelementptr inbounds nuw <2 x i64>, ptr %354, i64 %392
  %397 = load <2 x i64>, ptr %396, align 1, !tbaa !12, !alias.scope !1044, !noalias !1072
  %398 = xor <2 x i64> %397, %395
  %399 = xor <2 x i64> %398, %394
  %400 = bitcast <2 x i64> %399 to <4 x i32>
  %401 = shufflevector <4 x i32> %400, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %402 = bitcast <4 x i32> %401 to <2 x i64>
  %403 = and <2 x i64> %399, splat (i64 4294967295)
  %404 = mul nuw <2 x i64> %403, splat (i64 2654435761)
  %405 = mul <2 x i64> %402, splat (i64 -7046029290881679360)
  %406 = add <2 x i64> %405, %404
  store <2 x i64> %406, ptr %393, align 16, !tbaa !12, !alias.scope !1065, !noalias !1068
  %407 = add nuw nsw i64 %392, 1
  %408 = icmp eq i64 %407, 4
  br i1 %408, label %409, label %391, !llvm.loop !81

409:                                              ; preds = %391
  %410 = add nuw i64 %357, 1
  %411 = icmp ult i64 %410, %348
  br i1 %411, label %356, label %412, !llvm.loop !82

412:                                              ; preds = %409, %343
  %413 = mul i64 %348, %346
  %414 = lshr i64 %349, 6
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 %413
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %416 = icmp ult i64 %349, 64
  br i1 %416, label %447, label %417

417:                                              ; preds = %412, %444
  %418 = phi i64 [ %445, %444 ], [ 0, %412 ]
  %419 = shl i64 %418, 6
  %420 = getelementptr inbounds nuw i8, ptr %415, i64 %419
  %421 = getelementptr inbounds nuw i8, ptr %420, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %421, i32 0, i32 3, i32 1), !noalias !1076
  %422 = shl i64 %418, 3
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 %422
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  br label %424

424:                                              ; preds = %417, %424
  %425 = phi i64 [ 0, %417 ], [ %442, %424 ]
  %426 = getelementptr inbounds nuw <2 x i64>, ptr %420, i64 %425
  %427 = load <2 x i64>, ptr %426, align 1, !tbaa !12, !alias.scope !1041, !noalias !1080
  %428 = getelementptr inbounds nuw <2 x i64>, ptr %423, i64 %425
  %429 = load <2 x i64>, ptr %428, align 1, !tbaa !12, !alias.scope !1044, !noalias !1081
  %430 = xor <2 x i64> %429, %427
  %431 = bitcast <2 x i64> %430 to <4 x i32>
  %432 = shufflevector <4 x i32> %431, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %433 = bitcast <4 x i32> %432 to <2 x i64>
  %434 = and <2 x i64> %430, splat (i64 4294967295)
  %435 = and <2 x i64> %433, splat (i64 4294967295)
  %436 = mul nuw <2 x i64> %435, %434
  %437 = shufflevector <2 x i64> %427, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %438 = getelementptr inbounds nuw <2 x i64>, ptr %6, i64 %425
  %439 = load <2 x i64>, ptr %438, align 16, !tbaa !12, !alias.scope !1082, !noalias !1083
  %440 = add <2 x i64> %439, %437
  %441 = add <2 x i64> %440, %436
  store <2 x i64> %441, ptr %438, align 16, !tbaa !12, !alias.scope !1082, !noalias !1083
  %442 = add nuw nsw i64 %425, 1
  %443 = icmp eq i64 %442, 4
  br i1 %443, label %444, label %424, !llvm.loop !69

444:                                              ; preds = %424
  %445 = add nuw nsw i64 %418, 1
  %446 = icmp samesign ult i64 %445, %414
  br i1 %446, label %417, label %447, !llvm.loop !70

447:                                              ; preds = %444, %412
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %449 = getelementptr inbounds i8, ptr %448, i64 -64
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %451 = getelementptr inbounds i8, ptr %450, i64 -71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  br label %452

452:                                              ; preds = %447, %452
  %453 = phi i64 [ 0, %447 ], [ %470, %452 ]
  %454 = getelementptr inbounds nuw <2 x i64>, ptr %449, i64 %453
  %455 = load <2 x i64>, ptr %454, align 1, !tbaa !12, !alias.scope !1041, !noalias !1091
  %456 = getelementptr inbounds nuw <2 x i64>, ptr %451, i64 %453
  %457 = load <2 x i64>, ptr %456, align 1, !tbaa !12, !alias.scope !1044, !noalias !1092
  %458 = xor <2 x i64> %457, %455
  %459 = bitcast <2 x i64> %458 to <4 x i32>
  %460 = shufflevector <4 x i32> %459, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %461 = bitcast <4 x i32> %460 to <2 x i64>
  %462 = and <2 x i64> %458, splat (i64 4294967295)
  %463 = and <2 x i64> %461, splat (i64 4294967295)
  %464 = mul nuw <2 x i64> %463, %462
  %465 = shufflevector <2 x i64> %455, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %466 = getelementptr inbounds nuw <2 x i64>, ptr %6, i64 %453
  %467 = load <2 x i64>, ptr %466, align 16, !tbaa !12, !alias.scope !1093, !noalias !1094
  %468 = add <2 x i64> %467, %465
  %469 = add <2 x i64> %468, %464
  store <2 x i64> %469, ptr %466, align 16, !tbaa !12, !alias.scope !1093, !noalias !1094
  %470 = add nuw nsw i64 %453, 1
  %471 = icmp eq i64 %470, 4
  br i1 %471, label %472, label %452, !llvm.loop !69

472:                                              ; preds = %452
  %473 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %474 = mul i64 %1, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  br label %475

475:                                              ; preds = %475, %472
  %476 = phi i64 [ 0, %472 ], [ %496, %475 ]
  %477 = phi i64 [ %474, %472 ], [ %495, %475 ]
  %478 = shl nuw nsw i64 %476, 4
  %479 = getelementptr inbounds nuw i8, ptr %6, i64 %478
  %480 = getelementptr inbounds nuw i8, ptr %473, i64 %478
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102), !noalias !1041
  %481 = load i64, ptr %479, align 16, !tbaa !19, !alias.scope !1105, !noalias !1106
  %482 = load i64, ptr %480, align 1, !tbaa !19, !alias.scope !1100, !noalias !1108
  %483 = xor i64 %482, %481
  %484 = getelementptr inbounds nuw i8, ptr %479, i64 8
  %485 = load i64, ptr %484, align 8, !tbaa !19, !alias.scope !1105, !noalias !1106
  %486 = getelementptr inbounds nuw i8, ptr %480, i64 8
  %487 = load i64, ptr %486, align 1, !tbaa !19, !alias.scope !1100, !noalias !1108
  %488 = xor i64 %487, %485
  %489 = zext i64 %483 to i128
  %490 = zext i64 %488 to i128
  %491 = mul nuw i128 %490, %489
  %492 = lshr i128 %491, 64
  %493 = xor i128 %492, %491
  %494 = trunc i128 %493 to i64
  %495 = add i64 %477, %494
  %496 = add nuw nsw i64 %476, 1
  %497 = icmp eq i64 %496, 4
  br i1 %497, label %498, label %475, !llvm.loop !113

498:                                              ; preds = %475
  %499 = lshr i64 %495, 37
  %500 = xor i64 %499, %495
  %501 = mul i64 %500, 1609587791953885689
  %502 = lshr i64 %501, 32
  %503 = getelementptr inbounds i8, ptr %450, i64 -75
  %504 = mul i64 %1, -4417276706812531889
  %505 = xor i64 %504, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  br label %506

506:                                              ; preds = %506, %498
  %507 = phi i64 [ 0, %498 ], [ %527, %506 ]
  %508 = phi i64 [ %505, %498 ], [ %526, %506 ]
  %509 = shl nuw nsw i64 %507, 4
  %510 = getelementptr inbounds nuw i8, ptr %6, i64 %509
  %511 = getelementptr inbounds nuw i8, ptr %503, i64 %509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114), !noalias !1041
  %512 = load i64, ptr %510, align 16, !tbaa !19, !alias.scope !1117, !noalias !1118
  %513 = load i64, ptr %511, align 1, !tbaa !19, !alias.scope !1112, !noalias !1120
  %514 = xor i64 %513, %512
  %515 = getelementptr inbounds nuw i8, ptr %510, i64 8
  %516 = load i64, ptr %515, align 8, !tbaa !19, !alias.scope !1117, !noalias !1118
  %517 = getelementptr inbounds nuw i8, ptr %511, i64 8
  %518 = load i64, ptr %517, align 1, !tbaa !19, !alias.scope !1112, !noalias !1120
  %519 = xor i64 %518, %516
  %520 = zext i64 %514 to i128
  %521 = zext i64 %519 to i128
  %522 = mul nuw i128 %521, %520
  %523 = lshr i128 %522, 64
  %524 = xor i128 %523, %522
  %525 = trunc i128 %524 to i64
  %526 = add i64 %508, %525
  %527 = add nuw nsw i64 %507, 1
  %528 = icmp eq i64 %527, 4
  br i1 %528, label %529, label %506, !llvm.loop !113

529:                                              ; preds = %506
  %530 = xor i64 %502, %501
  %531 = lshr i64 %526, 37
  %532 = xor i64 %531, %526
  %533 = mul i64 %532, 1609587791953885689
  %534 = lshr i64 %533, 32
  %535 = xor i64 %534, %533
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #31, !noalias !1046
  %536 = insertvalue { i64, i64 } poison, i64 %530, 0
  %537 = insertvalue { i64, i64 } %536, i64 %535, 1
  br label %538

538:                                              ; preds = %341, %284, %12, %57, %99, %143, %529
  %539 = phi { i64, i64 } [ %537, %529 ], [ %340, %284 ], [ %342, %341 ], [ %54, %12 ], [ %96, %57 ], [ %142, %99 ], [ %163, %143 ]
  ret { i64, i64 } %539
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local { i64, i64 } @XXH128(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #32
  ret { i64, i64 } %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset(ptr noundef writeonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !19
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %6, align 16, !tbaa !19
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %7, align 8, !tbaa !19
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %8, align 32, !tbaa !19
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %9, align 8, !tbaa !19
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %10, align 16, !tbaa !19
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %12, align 8, !tbaa !412
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 0, ptr %13, align 4, !tbaa !416
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @XXH3_kSecret, ptr %14, align 8, !tbaa !417
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %15, align 32, !tbaa !418
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %16, align 8, !tbaa !419
  br label %17

17:                                               ; preds = %1, %3
  %18 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !19
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8, !tbaa !19
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16, !tbaa !19
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8, !tbaa !19
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32, !tbaa !19
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16, !tbaa !19
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8, !tbaa !19
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %14, align 8, !tbaa !412
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 0, ptr %15, align 4, !tbaa !416
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %16, align 8, !tbaa !417
  %17 = add i64 %2, -64
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %17, ptr %18, align 32, !tbaa !418
  %19 = lshr i64 %17, 3
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %19, ptr %20, align 8, !tbaa !419
  %21 = icmp eq ptr %1, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = icmp ult i64 %2, 136
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %3, %5, %22
  %26 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %54, label %4

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !19
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %9, align 16, !tbaa !19
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %10, align 8, !tbaa !19
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %11, align 32, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %12, align 8, !tbaa !19
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %13, align 16, !tbaa !19
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %15, align 8, !tbaa !412
  br label %47

16:                                               ; preds = %4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %18 = load i64, ptr %17, align 8, !tbaa !412
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %22 = load ptr, ptr %21, align 8, !tbaa !417
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %26 = sub i64 0, %1
  %27 = insertelement <2 x i64> poison, i64 %1, i64 0
  %28 = insertelement <2 x i64> %27, i64 %26, i64 1
  %29 = tail call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %25) #31, !srcloc !274
  br label %30

30:                                               ; preds = %30, %24
  %31 = phi i64 [ 0, %24 ], [ %36, %30 ]
  %32 = getelementptr inbounds nuw <2 x i64>, ptr @XXH3_kSecret, i64 %31
  %33 = load <2 x i64>, ptr %32, align 16, !tbaa !12
  %34 = add <2 x i64> %33, %28
  %35 = getelementptr inbounds nuw <2 x i64>, ptr %29, i64 %31
  store <2 x i64> %34, ptr %35, align 16, !tbaa !12
  %36 = add nuw nsw i64 %31, 1
  %37 = icmp eq i64 %36, 12
  br i1 %37, label %38, label %30, !llvm.loop !275

38:                                               ; preds = %30, %20
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !19
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %40, align 8, !tbaa !19
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %41, align 16, !tbaa !19
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %42, align 8, !tbaa !19
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %43, align 32, !tbaa !19
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %44, align 8, !tbaa !19
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %45, align 16, !tbaa !19
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %46, align 8, !tbaa !19
  store i64 %1, ptr %17, align 8, !tbaa !412
  br label %47

47:                                               ; preds = %38, %6
  %48 = phi i32 [ 0, %6 ], [ 1, %38 ]
  %49 = phi ptr [ @XXH3_kSecret, %6 ], [ null, %38 ]
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %48, ptr %50, align 4, !tbaa !416
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %49, ptr %51, align 8, !tbaa !417
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %52, align 32, !tbaa !418
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %53, align 8, !tbaa !419
  br label %54

54:                                               ; preds = %47, %2
  %55 = phi i32 [ 1, %2 ], [ 0, %47 ]
  ret i32 %55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSecretandSeed(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  %8 = icmp ult i64 %2, 136
  %9 = or i1 %7, %8
  br i1 %9, label %28, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %12, align 8, !tbaa !19
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %13, align 16, !tbaa !19
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %15, align 32, !tbaa !19
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %16, align 8, !tbaa !19
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %17, align 16, !tbaa !19
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %18, align 8, !tbaa !19
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %3, ptr %19, align 8, !tbaa !412
  %20 = icmp ne i64 %3, 0
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %21, ptr %22, align 4, !tbaa !416
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %1, ptr %23, align 8, !tbaa !417
  %24 = add i64 %2, -64
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %24, ptr %25, align 32, !tbaa !418
  %26 = lshr i64 %24, 3
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %26, ptr %27, align 8, !tbaa !419
  store i32 1, ptr %22, align 4, !tbaa !416
  br label %28

28:                                               ; preds = %4, %10
  %29 = phi i32 [ 0, %10 ], [ 1, %4 ]
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH3_128bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %504, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %8 = load ptr, ptr %7, align 8, !tbaa !417, !alias.scope !1121, !noalias !1124
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %11 = select i1 %9, ptr %10, ptr %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %13 = load i64, ptr %12, align 16, !tbaa !425, !alias.scope !1121, !noalias !1124
  %14 = add i64 %13, %2
  store i64 %14, ptr %12, align 16, !tbaa !425, !alias.scope !1121, !noalias !1124
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %16 = load i32, ptr %15, align 64, !tbaa !426, !alias.scope !1121, !noalias !1124
  %17 = zext i32 %16 to i64
  %18 = add i64 %2, %17
  %19 = icmp ult i64 %18, 257
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %23 = trunc i64 %2 to i32
  %24 = load i32, ptr %15, align 64, !tbaa !426, !alias.scope !1121, !noalias !1124
  %25 = add i32 %24, %23
  br label %502

26:                                               ; preds = %5
  %27 = icmp eq i32 %16, 0
  br i1 %27, label %170, label %28

28:                                               ; preds = %26
  %29 = sub i32 256, %16
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull readonly align 1 %1, i64 %30, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %36 = load i64, ptr %35, align 8, !tbaa !419, !alias.scope !1121, !noalias !1124
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %38 = load i64, ptr %37, align 32, !tbaa !418, !alias.scope !1121, !noalias !1124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %39 = load i64, ptr %34, align 8, !tbaa !19, !alias.scope !1129, !noalias !1131
  %40 = sub i64 %36, %39
  %41 = icmp ugt i64 %40, 4
  br i1 %41, label %133, label %42

42:                                               ; preds = %28
  %43 = sub nuw nsw i64 4, %40
  %44 = shl i64 %39, 3
  %45 = getelementptr inbounds nuw i8, ptr %11, i64 %44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %46 = icmp eq i64 %36, %39
  br i1 %46, label %77, label %47

47:                                               ; preds = %42, %74
  %48 = phi i64 [ %75, %74 ], [ 0, %42 ]
  %49 = shl i64 %48, 6
  %50 = getelementptr inbounds nuw i8, ptr %31, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %51, i32 0, i32 3, i32 1), !noalias !1137
  %52 = shl i64 %48, 3
  %53 = getelementptr inbounds nuw i8, ptr %45, i64 %52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  br label %54

54:                                               ; preds = %47, %54
  %55 = phi i64 [ 0, %47 ], [ %72, %54 ]
  %56 = getelementptr inbounds nuw <2 x i64>, ptr %50, i64 %55
  %57 = load <2 x i64>, ptr %56, align 1, !tbaa !12, !noalias !1141
  %58 = getelementptr inbounds nuw <2 x i64>, ptr %53, i64 %55
  %59 = load <2 x i64>, ptr %58, align 1, !tbaa !12, !noalias !1141
  %60 = xor <2 x i64> %59, %57
  %61 = bitcast <2 x i64> %60 to <4 x i32>
  %62 = shufflevector <4 x i32> %61, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %63 = bitcast <4 x i32> %62 to <2 x i64>
  %64 = and <2 x i64> %60, splat (i64 4294967295)
  %65 = and <2 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <2 x i64> %65, %64
  %67 = shufflevector <2 x i64> %57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %68 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %55
  %69 = load <2 x i64>, ptr %68, align 16, !tbaa !12, !alias.scope !1142, !noalias !1143
  %70 = add <2 x i64> %69, %67
  %71 = add <2 x i64> %70, %66
  store <2 x i64> %71, ptr %68, align 16, !tbaa !12, !alias.scope !1142, !noalias !1143
  %72 = add nuw nsw i64 %55, 1
  %73 = icmp eq i64 %72, 4
  br i1 %73, label %74, label %54, !llvm.loop !69

74:                                               ; preds = %54
  %75 = add nuw i64 %48, 1
  %76 = icmp eq i64 %75, %40
  br i1 %76, label %77, label %47, !llvm.loop !70

77:                                               ; preds = %74, %42
  %78 = getelementptr inbounds nuw i8, ptr %11, i64 %38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  br label %79

79:                                               ; preds = %77, %79
  %80 = phi i64 [ 0, %77 ], [ %95, %79 ]
  %81 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %80
  %82 = load <2 x i64>, ptr %81, align 16, !tbaa !12, !alias.scope !1151, !noalias !1152
  %83 = lshr <2 x i64> %82, splat (i64 47)
  %84 = getelementptr inbounds nuw <2 x i64>, ptr %78, i64 %80
  %85 = load <2 x i64>, ptr %84, align 1, !tbaa !12, !noalias !1154
  %86 = xor <2 x i64> %85, %83
  %87 = xor <2 x i64> %86, %82
  %88 = bitcast <2 x i64> %87 to <4 x i32>
  %89 = shufflevector <4 x i32> %88, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %90 = bitcast <4 x i32> %89 to <2 x i64>
  %91 = and <2 x i64> %87, splat (i64 4294967295)
  %92 = mul nuw <2 x i64> %91, splat (i64 2654435761)
  %93 = mul <2 x i64> %90, splat (i64 -7046029290881679360)
  %94 = add <2 x i64> %93, %92
  store <2 x i64> %94, ptr %81, align 16, !tbaa !12, !alias.scope !1151, !noalias !1152
  %95 = add nuw nsw i64 %80, 1
  %96 = icmp eq i64 %95, 4
  br i1 %96, label %97, label %79, !llvm.loop !81

97:                                               ; preds = %79
  %98 = shl nuw nsw i64 %40, 6
  %99 = getelementptr inbounds nuw i8, ptr %31, i64 %98
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %100 = icmp eq i64 %40, 4
  br i1 %100, label %168, label %101

101:                                              ; preds = %97
  %102 = tail call i64 @llvm.umax.i64(i64 %43, i64 1)
  br label %103

103:                                              ; preds = %101, %130
  %104 = phi i64 [ %131, %130 ], [ 0, %101 ]
  %105 = shl i64 %104, 6
  %106 = getelementptr inbounds nuw i8, ptr %99, i64 %105
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %107, i32 0, i32 3, i32 1), !noalias !1158
  %108 = shl i64 %104, 3
  %109 = getelementptr inbounds nuw i8, ptr %11, i64 %108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  br label %110

110:                                              ; preds = %103, %110
  %111 = phi i64 [ 0, %103 ], [ %128, %110 ]
  %112 = getelementptr inbounds nuw <2 x i64>, ptr %106, i64 %111
  %113 = load <2 x i64>, ptr %112, align 1, !tbaa !12, !noalias !1162
  %114 = getelementptr inbounds nuw <2 x i64>, ptr %109, i64 %111
  %115 = load <2 x i64>, ptr %114, align 1, !tbaa !12, !noalias !1162
  %116 = xor <2 x i64> %115, %113
  %117 = bitcast <2 x i64> %116 to <4 x i32>
  %118 = shufflevector <4 x i32> %117, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %119 = bitcast <4 x i32> %118 to <2 x i64>
  %120 = and <2 x i64> %116, splat (i64 4294967295)
  %121 = and <2 x i64> %119, splat (i64 4294967295)
  %122 = mul nuw <2 x i64> %121, %120
  %123 = shufflevector <2 x i64> %113, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %124 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %111
  %125 = load <2 x i64>, ptr %124, align 16, !tbaa !12, !alias.scope !1163, !noalias !1164
  %126 = add <2 x i64> %125, %123
  %127 = add <2 x i64> %126, %122
  store <2 x i64> %127, ptr %124, align 16, !tbaa !12, !alias.scope !1163, !noalias !1164
  %128 = add nuw nsw i64 %111, 1
  %129 = icmp eq i64 %128, 4
  br i1 %129, label %130, label %110, !llvm.loop !69

130:                                              ; preds = %110
  %131 = add nuw i64 %104, 1
  %132 = icmp eq i64 %131, %102
  br i1 %132, label %168, label %103, !llvm.loop !70

133:                                              ; preds = %28
  %134 = shl i64 %39, 3
  %135 = getelementptr inbounds nuw i8, ptr %11, i64 %134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  br label %136

136:                                              ; preds = %133, %163
  %137 = phi i64 [ 0, %133 ], [ %164, %163 ]
  %138 = shl nuw nsw i64 %137, 6
  %139 = getelementptr inbounds nuw i8, ptr %31, i64 %138
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %140, i32 0, i32 3, i32 1), !noalias !1172
  %141 = shl nuw nsw i64 %137, 3
  %142 = getelementptr inbounds nuw i8, ptr %135, i64 %141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  br label %143

143:                                              ; preds = %136, %143
  %144 = phi i64 [ 0, %136 ], [ %161, %143 ]
  %145 = getelementptr inbounds nuw <2 x i64>, ptr %139, i64 %144
  %146 = load <2 x i64>, ptr %145, align 1, !tbaa !12, !noalias !1176
  %147 = getelementptr inbounds nuw <2 x i64>, ptr %142, i64 %144
  %148 = load <2 x i64>, ptr %147, align 1, !tbaa !12, !noalias !1176
  %149 = xor <2 x i64> %148, %146
  %150 = bitcast <2 x i64> %149 to <4 x i32>
  %151 = shufflevector <4 x i32> %150, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %152 = bitcast <4 x i32> %151 to <2 x i64>
  %153 = and <2 x i64> %149, splat (i64 4294967295)
  %154 = and <2 x i64> %152, splat (i64 4294967295)
  %155 = mul nuw <2 x i64> %154, %153
  %156 = shufflevector <2 x i64> %146, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %157 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %144
  %158 = load <2 x i64>, ptr %157, align 16, !tbaa !12, !alias.scope !1177, !noalias !1178
  %159 = add <2 x i64> %158, %156
  %160 = add <2 x i64> %159, %155
  store <2 x i64> %160, ptr %157, align 16, !tbaa !12, !alias.scope !1177, !noalias !1178
  %161 = add nuw nsw i64 %144, 1
  %162 = icmp eq i64 %161, 4
  br i1 %162, label %163, label %143, !llvm.loop !69

163:                                              ; preds = %143
  %164 = add nuw nsw i64 %137, 1
  %165 = icmp eq i64 %164, 4
  br i1 %165, label %166, label %136, !llvm.loop !70

166:                                              ; preds = %163
  %167 = add i64 %39, 4
  br label %168

168:                                              ; preds = %130, %97, %166
  %169 = phi i64 [ %167, %166 ], [ %43, %97 ], [ %43, %130 ]
  store i64 %169, ptr %34, align 8, !tbaa !19, !alias.scope !1129, !noalias !1131
  store i32 0, ptr %15, align 64, !tbaa !426, !alias.scope !1121, !noalias !1124
  br label %170

170:                                              ; preds = %168, %26
  %171 = phi ptr [ %33, %168 ], [ %1, %26 ]
  %172 = ptrtoint ptr %6 to i64
  %173 = ptrtoint ptr %171 to i64
  %174 = sub i64 %172, %173
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %176 = load i64, ptr %175, align 8, !tbaa !419, !alias.scope !1121, !noalias !1124
  %177 = shl i64 %176, 6
  %178 = icmp ugt i64 %174, %177
  br i1 %178, label %179, label %349

179:                                              ; preds = %170
  %180 = getelementptr inbounds i8, ptr %6, i64 -1
  %181 = ptrtoint ptr %180 to i64
  %182 = sub i64 %181, %173
  %183 = lshr i64 %182, 6
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %185 = load i64, ptr %184, align 8, !tbaa !484, !alias.scope !1121, !noalias !1124
  %186 = sub i64 %176, %185
  %187 = shl i64 %185, 3
  %188 = getelementptr inbounds nuw i8, ptr %11, i64 %187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %189 = icmp eq i64 %176, %185
  br i1 %189, label %220, label %190

190:                                              ; preds = %179, %217
  %191 = phi i64 [ %218, %217 ], [ 0, %179 ]
  %192 = shl i64 %191, 6
  %193 = getelementptr inbounds nuw i8, ptr %171, i64 %192
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %194, i32 0, i32 3, i32 1), !noalias !1183
  %195 = shl i64 %191, 3
  %196 = getelementptr inbounds nuw i8, ptr %188, i64 %195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  br label %197

197:                                              ; preds = %190, %197
  %198 = phi i64 [ 0, %190 ], [ %215, %197 ]
  %199 = getelementptr inbounds nuw <2 x i64>, ptr %193, i64 %198
  %200 = load <2 x i64>, ptr %199, align 1, !tbaa !12, !noalias !1189
  %201 = getelementptr inbounds nuw <2 x i64>, ptr %196, i64 %198
  %202 = load <2 x i64>, ptr %201, align 1, !tbaa !12, !noalias !1189
  %203 = xor <2 x i64> %202, %200
  %204 = bitcast <2 x i64> %203 to <4 x i32>
  %205 = shufflevector <4 x i32> %204, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %206 = bitcast <4 x i32> %205 to <2 x i64>
  %207 = and <2 x i64> %203, splat (i64 4294967295)
  %208 = and <2 x i64> %206, splat (i64 4294967295)
  %209 = mul nuw <2 x i64> %208, %207
  %210 = shufflevector <2 x i64> %200, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %211 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %198
  %212 = load <2 x i64>, ptr %211, align 16, !tbaa !12, !alias.scope !1189, !noalias !1190
  %213 = add <2 x i64> %212, %210
  %214 = add <2 x i64> %213, %209
  store <2 x i64> %214, ptr %211, align 16, !tbaa !12, !alias.scope !1189, !noalias !1190
  %215 = add nuw nsw i64 %198, 1
  %216 = icmp eq i64 %215, 4
  br i1 %216, label %217, label %197, !llvm.loop !69

217:                                              ; preds = %197
  %218 = add nuw i64 %191, 1
  %219 = icmp eq i64 %218, %186
  br i1 %219, label %220, label %190, !llvm.loop !70

220:                                              ; preds = %217, %179
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %222 = load i64, ptr %221, align 32, !tbaa !418, !alias.scope !1121, !noalias !1124
  %223 = getelementptr inbounds nuw i8, ptr %11, i64 %222
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  br label %224

224:                                              ; preds = %220, %224
  %225 = phi i64 [ 0, %220 ], [ %240, %224 ]
  %226 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %225
  %227 = load <2 x i64>, ptr %226, align 16, !tbaa !12, !alias.scope !1195, !noalias !1198
  %228 = lshr <2 x i64> %227, splat (i64 47)
  %229 = getelementptr inbounds nuw <2 x i64>, ptr %223, i64 %225
  %230 = load <2 x i64>, ptr %229, align 1, !tbaa !12, !noalias !1195
  %231 = xor <2 x i64> %230, %228
  %232 = xor <2 x i64> %231, %227
  %233 = bitcast <2 x i64> %232 to <4 x i32>
  %234 = shufflevector <4 x i32> %233, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %235 = bitcast <4 x i32> %234 to <2 x i64>
  %236 = and <2 x i64> %232, splat (i64 4294967295)
  %237 = mul nuw <2 x i64> %236, splat (i64 2654435761)
  %238 = mul <2 x i64> %235, splat (i64 -7046029290881679360)
  %239 = add <2 x i64> %238, %237
  store <2 x i64> %239, ptr %226, align 16, !tbaa !12, !alias.scope !1195, !noalias !1198
  %240 = add nuw nsw i64 %225, 1
  %241 = icmp eq i64 %240, 4
  br i1 %241, label %242, label %224, !llvm.loop !81

242:                                              ; preds = %224
  store i64 0, ptr %184, align 8, !tbaa !484, !alias.scope !1121, !noalias !1124
  %243 = shl i64 %186, 6
  %244 = getelementptr inbounds nuw i8, ptr %171, i64 %243
  %245 = sub i64 %183, %186
  %246 = load i64, ptr %175, align 8, !tbaa !419, !alias.scope !1121, !noalias !1124
  %247 = icmp ult i64 %245, %246
  br i1 %247, label %310, label %248

248:                                              ; preds = %242, %304
  %249 = phi i64 [ %305, %304 ], [ %246, %242 ]
  %250 = phi ptr [ %307, %304 ], [ %244, %242 ]
  %251 = phi i64 [ %308, %304 ], [ %245, %242 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %252 = icmp eq i64 %249, 0
  br i1 %252, label %283, label %253

253:                                              ; preds = %248, %280
  %254 = phi i64 [ %281, %280 ], [ 0, %248 ]
  %255 = shl i64 %254, 6
  %256 = getelementptr inbounds nuw i8, ptr %250, i64 %255
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %257, i32 0, i32 3, i32 1), !noalias !1200
  %258 = shl i64 %254, 3
  %259 = getelementptr inbounds nuw i8, ptr %11, i64 %258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  br label %260

260:                                              ; preds = %253, %260
  %261 = phi i64 [ 0, %253 ], [ %278, %260 ]
  %262 = getelementptr inbounds nuw <2 x i64>, ptr %256, i64 %261
  %263 = load <2 x i64>, ptr %262, align 1, !tbaa !12, !noalias !1206
  %264 = getelementptr inbounds nuw <2 x i64>, ptr %259, i64 %261
  %265 = load <2 x i64>, ptr %264, align 1, !tbaa !12, !noalias !1206
  %266 = xor <2 x i64> %265, %263
  %267 = bitcast <2 x i64> %266 to <4 x i32>
  %268 = shufflevector <4 x i32> %267, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %269 = bitcast <4 x i32> %268 to <2 x i64>
  %270 = and <2 x i64> %266, splat (i64 4294967295)
  %271 = and <2 x i64> %269, splat (i64 4294967295)
  %272 = mul nuw <2 x i64> %271, %270
  %273 = shufflevector <2 x i64> %263, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %274 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %261
  %275 = load <2 x i64>, ptr %274, align 16, !tbaa !12, !alias.scope !1206, !noalias !1207
  %276 = add <2 x i64> %275, %273
  %277 = add <2 x i64> %276, %272
  store <2 x i64> %277, ptr %274, align 16, !tbaa !12, !alias.scope !1206, !noalias !1207
  %278 = add nuw nsw i64 %261, 1
  %279 = icmp eq i64 %278, 4
  br i1 %279, label %280, label %260, !llvm.loop !69

280:                                              ; preds = %260
  %281 = add nuw i64 %254, 1
  %282 = icmp eq i64 %281, %249
  br i1 %282, label %283, label %253, !llvm.loop !70

283:                                              ; preds = %280, %248
  %284 = load i64, ptr %221, align 32, !tbaa !418, !alias.scope !1121, !noalias !1124
  %285 = getelementptr inbounds nuw i8, ptr %11, i64 %284
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  br label %286

286:                                              ; preds = %283, %286
  %287 = phi i64 [ 0, %283 ], [ %302, %286 ]
  %288 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %287
  %289 = load <2 x i64>, ptr %288, align 16, !tbaa !12, !alias.scope !1212, !noalias !1215
  %290 = lshr <2 x i64> %289, splat (i64 47)
  %291 = getelementptr inbounds nuw <2 x i64>, ptr %285, i64 %287
  %292 = load <2 x i64>, ptr %291, align 1, !tbaa !12, !noalias !1212
  %293 = xor <2 x i64> %292, %290
  %294 = xor <2 x i64> %293, %289
  %295 = bitcast <2 x i64> %294 to <4 x i32>
  %296 = shufflevector <4 x i32> %295, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %297 = bitcast <4 x i32> %296 to <2 x i64>
  %298 = and <2 x i64> %294, splat (i64 4294967295)
  %299 = mul nuw <2 x i64> %298, splat (i64 2654435761)
  %300 = mul <2 x i64> %297, splat (i64 -7046029290881679360)
  %301 = add <2 x i64> %300, %299
  store <2 x i64> %301, ptr %288, align 16, !tbaa !12, !alias.scope !1212, !noalias !1215
  %302 = add nuw nsw i64 %287, 1
  %303 = icmp eq i64 %302, 4
  br i1 %303, label %304, label %286, !llvm.loop !81

304:                                              ; preds = %286
  %305 = load i64, ptr %175, align 8, !tbaa !419, !alias.scope !1121, !noalias !1124
  %306 = shl i64 %305, 6
  %307 = getelementptr inbounds nuw i8, ptr %250, i64 %306
  %308 = sub i64 %251, %305
  %309 = icmp ult i64 %308, %305
  br i1 %309, label %310, label %248, !llvm.loop !519

310:                                              ; preds = %304, %242
  %311 = phi i64 [ %245, %242 ], [ %308, %304 ]
  %312 = phi ptr [ %244, %242 ], [ %307, %304 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %313 = icmp eq i64 %311, 0
  br i1 %313, label %344, label %314

314:                                              ; preds = %310, %341
  %315 = phi i64 [ %342, %341 ], [ 0, %310 ]
  %316 = shl i64 %315, 6
  %317 = getelementptr inbounds nuw i8, ptr %312, i64 %316
  %318 = getelementptr inbounds nuw i8, ptr %317, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %318, i32 0, i32 3, i32 1), !noalias !1217
  %319 = shl i64 %315, 3
  %320 = getelementptr inbounds nuw i8, ptr %11, i64 %319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  br label %321

321:                                              ; preds = %314, %321
  %322 = phi i64 [ 0, %314 ], [ %339, %321 ]
  %323 = getelementptr inbounds nuw <2 x i64>, ptr %317, i64 %322
  %324 = load <2 x i64>, ptr %323, align 1, !tbaa !12, !noalias !1223
  %325 = getelementptr inbounds nuw <2 x i64>, ptr %320, i64 %322
  %326 = load <2 x i64>, ptr %325, align 1, !tbaa !12, !noalias !1223
  %327 = xor <2 x i64> %326, %324
  %328 = bitcast <2 x i64> %327 to <4 x i32>
  %329 = shufflevector <4 x i32> %328, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %330 = bitcast <4 x i32> %329 to <2 x i64>
  %331 = and <2 x i64> %327, splat (i64 4294967295)
  %332 = and <2 x i64> %330, splat (i64 4294967295)
  %333 = mul nuw <2 x i64> %332, %331
  %334 = shufflevector <2 x i64> %324, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %335 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %322
  %336 = load <2 x i64>, ptr %335, align 16, !tbaa !12, !alias.scope !1223, !noalias !1224
  %337 = add <2 x i64> %336, %334
  %338 = add <2 x i64> %337, %333
  store <2 x i64> %338, ptr %335, align 16, !tbaa !12, !alias.scope !1223, !noalias !1224
  %339 = add nuw nsw i64 %322, 1
  %340 = icmp eq i64 %339, 4
  br i1 %340, label %341, label %321, !llvm.loop !69

341:                                              ; preds = %321
  %342 = add nuw i64 %315, 1
  %343 = icmp eq i64 %342, %311
  br i1 %343, label %344, label %314, !llvm.loop !70

344:                                              ; preds = %341, %310
  %345 = shl i64 %311, 6
  %346 = getelementptr inbounds nuw i8, ptr %312, i64 %345
  store i64 %311, ptr %184, align 8, !tbaa !484, !alias.scope !1121, !noalias !1124
  %347 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %348 = getelementptr inbounds i8, ptr %346, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %347, ptr noundef nonnull readonly align 1 dereferenceable(64) %348, i64 64, i1 false)
  br label %496

349:                                              ; preds = %170
  %350 = icmp sgt i64 %174, 256
  br i1 %350, label %351, label %496

351:                                              ; preds = %349
  %352 = getelementptr inbounds i8, ptr %6, i64 -256
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %355 = load i64, ptr %353, align 8, !tbaa !19, !alias.scope !1229, !noalias !1232
  br label %356

356:                                              ; preds = %489, %351
  %357 = phi i64 [ %355, %351 ], [ %490, %489 ]
  %358 = phi ptr [ %171, %351 ], [ %491, %489 ]
  %359 = load i64, ptr %175, align 8, !tbaa !419, !alias.scope !1121, !noalias !1124
  %360 = load i64, ptr %354, align 32, !tbaa !418, !alias.scope !1121, !noalias !1124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %361 = sub i64 %359, %357
  %362 = icmp ugt i64 %361, 4
  br i1 %362, label %454, label %363

363:                                              ; preds = %356
  %364 = sub nuw nsw i64 4, %361
  %365 = shl i64 %357, 3
  %366 = getelementptr inbounds nuw i8, ptr %11, i64 %365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %367 = icmp eq i64 %359, %357
  br i1 %367, label %398, label %368

368:                                              ; preds = %363, %395
  %369 = phi i64 [ %396, %395 ], [ 0, %363 ]
  %370 = shl i64 %369, 6
  %371 = getelementptr inbounds nuw i8, ptr %358, i64 %370
  %372 = getelementptr inbounds nuw i8, ptr %371, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %372, i32 0, i32 3, i32 1), !noalias !1240
  %373 = shl i64 %369, 3
  %374 = getelementptr inbounds nuw i8, ptr %366, i64 %373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  br label %375

375:                                              ; preds = %368, %375
  %376 = phi i64 [ 0, %368 ], [ %393, %375 ]
  %377 = getelementptr inbounds nuw <2 x i64>, ptr %371, i64 %376
  %378 = load <2 x i64>, ptr %377, align 1, !tbaa !12, !noalias !1244
  %379 = getelementptr inbounds nuw <2 x i64>, ptr %374, i64 %376
  %380 = load <2 x i64>, ptr %379, align 1, !tbaa !12, !noalias !1244
  %381 = xor <2 x i64> %380, %378
  %382 = bitcast <2 x i64> %381 to <4 x i32>
  %383 = shufflevector <4 x i32> %382, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %384 = bitcast <4 x i32> %383 to <2 x i64>
  %385 = and <2 x i64> %381, splat (i64 4294967295)
  %386 = and <2 x i64> %384, splat (i64 4294967295)
  %387 = mul nuw <2 x i64> %386, %385
  %388 = shufflevector <2 x i64> %378, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %389 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %376
  %390 = load <2 x i64>, ptr %389, align 16, !tbaa !12, !alias.scope !1245, !noalias !1246
  %391 = add <2 x i64> %390, %388
  %392 = add <2 x i64> %391, %387
  store <2 x i64> %392, ptr %389, align 16, !tbaa !12, !alias.scope !1245, !noalias !1246
  %393 = add nuw nsw i64 %376, 1
  %394 = icmp eq i64 %393, 4
  br i1 %394, label %395, label %375, !llvm.loop !69

395:                                              ; preds = %375
  %396 = add nuw i64 %369, 1
  %397 = icmp eq i64 %396, %361
  br i1 %397, label %398, label %368, !llvm.loop !70

398:                                              ; preds = %395, %363
  %399 = getelementptr inbounds nuw i8, ptr %11, i64 %360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  br label %400

400:                                              ; preds = %398, %400
  %401 = phi i64 [ 0, %398 ], [ %416, %400 ]
  %402 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %401
  %403 = load <2 x i64>, ptr %402, align 16, !tbaa !12, !alias.scope !1254, !noalias !1255
  %404 = lshr <2 x i64> %403, splat (i64 47)
  %405 = getelementptr inbounds nuw <2 x i64>, ptr %399, i64 %401
  %406 = load <2 x i64>, ptr %405, align 1, !tbaa !12, !noalias !1257
  %407 = xor <2 x i64> %406, %404
  %408 = xor <2 x i64> %407, %403
  %409 = bitcast <2 x i64> %408 to <4 x i32>
  %410 = shufflevector <4 x i32> %409, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %411 = bitcast <4 x i32> %410 to <2 x i64>
  %412 = and <2 x i64> %408, splat (i64 4294967295)
  %413 = mul nuw <2 x i64> %412, splat (i64 2654435761)
  %414 = mul <2 x i64> %411, splat (i64 -7046029290881679360)
  %415 = add <2 x i64> %414, %413
  store <2 x i64> %415, ptr %402, align 16, !tbaa !12, !alias.scope !1254, !noalias !1255
  %416 = add nuw nsw i64 %401, 1
  %417 = icmp eq i64 %416, 4
  br i1 %417, label %418, label %400, !llvm.loop !81

418:                                              ; preds = %400
  %419 = shl nuw nsw i64 %361, 6
  %420 = getelementptr inbounds nuw i8, ptr %358, i64 %419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %421 = icmp eq i64 %361, 4
  br i1 %421, label %489, label %422

422:                                              ; preds = %418
  %423 = tail call i64 @llvm.umax.i64(i64 %364, i64 1)
  br label %424

424:                                              ; preds = %422, %451
  %425 = phi i64 [ %452, %451 ], [ 0, %422 ]
  %426 = shl i64 %425, 6
  %427 = getelementptr inbounds nuw i8, ptr %420, i64 %426
  %428 = getelementptr inbounds nuw i8, ptr %427, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %428, i32 0, i32 3, i32 1), !noalias !1261
  %429 = shl i64 %425, 3
  %430 = getelementptr inbounds nuw i8, ptr %11, i64 %429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  br label %431

431:                                              ; preds = %424, %431
  %432 = phi i64 [ 0, %424 ], [ %449, %431 ]
  %433 = getelementptr inbounds nuw <2 x i64>, ptr %427, i64 %432
  %434 = load <2 x i64>, ptr %433, align 1, !tbaa !12, !noalias !1265
  %435 = getelementptr inbounds nuw <2 x i64>, ptr %430, i64 %432
  %436 = load <2 x i64>, ptr %435, align 1, !tbaa !12, !noalias !1265
  %437 = xor <2 x i64> %436, %434
  %438 = bitcast <2 x i64> %437 to <4 x i32>
  %439 = shufflevector <4 x i32> %438, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %440 = bitcast <4 x i32> %439 to <2 x i64>
  %441 = and <2 x i64> %437, splat (i64 4294967295)
  %442 = and <2 x i64> %440, splat (i64 4294967295)
  %443 = mul nuw <2 x i64> %442, %441
  %444 = shufflevector <2 x i64> %434, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %445 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %432
  %446 = load <2 x i64>, ptr %445, align 16, !tbaa !12, !alias.scope !1266, !noalias !1267
  %447 = add <2 x i64> %446, %444
  %448 = add <2 x i64> %447, %443
  store <2 x i64> %448, ptr %445, align 16, !tbaa !12, !alias.scope !1266, !noalias !1267
  %449 = add nuw nsw i64 %432, 1
  %450 = icmp eq i64 %449, 4
  br i1 %450, label %451, label %431, !llvm.loop !69

451:                                              ; preds = %431
  %452 = add nuw i64 %425, 1
  %453 = icmp eq i64 %452, %423
  br i1 %453, label %489, label %424, !llvm.loop !70

454:                                              ; preds = %356
  %455 = shl i64 %357, 3
  %456 = getelementptr inbounds nuw i8, ptr %11, i64 %455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  br label %457

457:                                              ; preds = %454, %484
  %458 = phi i64 [ 0, %454 ], [ %485, %484 ]
  %459 = shl nuw nsw i64 %458, 6
  %460 = getelementptr inbounds nuw i8, ptr %358, i64 %459
  %461 = getelementptr inbounds nuw i8, ptr %460, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %461, i32 0, i32 3, i32 1), !noalias !1275
  %462 = shl nuw nsw i64 %458, 3
  %463 = getelementptr inbounds nuw i8, ptr %456, i64 %462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  br label %464

464:                                              ; preds = %457, %464
  %465 = phi i64 [ 0, %457 ], [ %482, %464 ]
  %466 = getelementptr inbounds nuw <2 x i64>, ptr %460, i64 %465
  %467 = load <2 x i64>, ptr %466, align 1, !tbaa !12, !noalias !1279
  %468 = getelementptr inbounds nuw <2 x i64>, ptr %463, i64 %465
  %469 = load <2 x i64>, ptr %468, align 1, !tbaa !12, !noalias !1279
  %470 = xor <2 x i64> %469, %467
  %471 = bitcast <2 x i64> %470 to <4 x i32>
  %472 = shufflevector <4 x i32> %471, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %473 = bitcast <4 x i32> %472 to <2 x i64>
  %474 = and <2 x i64> %470, splat (i64 4294967295)
  %475 = and <2 x i64> %473, splat (i64 4294967295)
  %476 = mul nuw <2 x i64> %475, %474
  %477 = shufflevector <2 x i64> %467, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %478 = getelementptr inbounds nuw <2 x i64>, ptr %0, i64 %465
  %479 = load <2 x i64>, ptr %478, align 16, !tbaa !12, !alias.scope !1280, !noalias !1281
  %480 = add <2 x i64> %479, %477
  %481 = add <2 x i64> %480, %476
  store <2 x i64> %481, ptr %478, align 16, !tbaa !12, !alias.scope !1280, !noalias !1281
  %482 = add nuw nsw i64 %465, 1
  %483 = icmp eq i64 %482, 4
  br i1 %483, label %484, label %464, !llvm.loop !69

484:                                              ; preds = %464
  %485 = add nuw nsw i64 %458, 1
  %486 = icmp eq i64 %485, 4
  br i1 %486, label %487, label %457, !llvm.loop !70

487:                                              ; preds = %484
  %488 = add i64 %357, 4
  br label %489

489:                                              ; preds = %451, %418, %487
  %490 = phi i64 [ %488, %487 ], [ %364, %418 ], [ %364, %451 ]
  %491 = getelementptr inbounds nuw i8, ptr %358, i64 256
  %492 = icmp ult ptr %491, %352
  br i1 %492, label %356, label %493, !llvm.loop !589

493:                                              ; preds = %489
  store i64 %490, ptr %353, align 8, !tbaa !19, !alias.scope !1229, !noalias !1232
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %495 = getelementptr inbounds nuw i8, ptr %358, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %494, ptr noundef nonnull readonly align 1 dereferenceable(64) %495, i64 64, i1 false)
  br label %496

496:                                              ; preds = %493, %349, %344
  %497 = phi ptr [ %346, %344 ], [ %491, %493 ], [ %171, %349 ]
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %499 = ptrtoint ptr %497 to i64
  %500 = sub i64 %172, %499
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %498, ptr readonly align 1 %497, i64 %500, i1 false)
  %501 = trunc i64 %500 to i32
  br label %502

502:                                              ; preds = %496, %20
  %503 = phi i32 [ %501, %496 ], [ %25, %20 ]
  store i32 %503, ptr %15, align 64, !tbaa !426, !alias.scope !1121, !noalias !1124
  br label %504

504:                                              ; preds = %3, %502
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local { i64, i64 } @XXH3_128bits_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #18 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca [8 x i64], align 16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %5 = load ptr, ptr %4, align 8, !tbaa !417
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %8 = select i1 %6, ptr %7, ptr %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %10 = load i64, ptr %9, align 16, !tbaa !425
  %11 = icmp ugt i64 %10, 240
  br i1 %11, label %12, label %284

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull readonly align 1 dereferenceable(64) %0, i64 64, i1 false)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %14 = load i32, ptr %13, align 64, !tbaa !426
  %15 = icmp ugt i32 %14, 63
  br i1 %15, label %16, label %182

16:                                               ; preds = %12
  %17 = add i32 %14, -1
  %18 = lshr i32 %17, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %21 = load i64, ptr %20, align 8, !tbaa !484
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %23 = load i64, ptr %22, align 8, !tbaa !419
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %26 = load i64, ptr %25, align 32, !tbaa !418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  %27 = sub i64 %23, %21
  %28 = icmp ugt i64 %27, %19
  br i1 %28, label %120, label %29

29:                                               ; preds = %16
  %30 = sub nuw i64 %19, %27
  %31 = shl i64 %21, 3
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 %31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %33 = icmp eq i64 %23, %21
  br i1 %33, label %64, label %34

34:                                               ; preds = %29, %61
  %35 = phi i64 [ %62, %61 ], [ 0, %29 ]
  %36 = shl i64 %35, 6
  %37 = getelementptr inbounds nuw i8, ptr %24, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %38, i32 0, i32 3, i32 1), !noalias !1292
  %39 = shl i64 %35, 3
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 %39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  br label %41

41:                                               ; preds = %34, %41
  %42 = phi i64 [ 0, %34 ], [ %59, %41 ]
  %43 = getelementptr inbounds nuw <2 x i64>, ptr %37, i64 %42
  %44 = load <2 x i64>, ptr %43, align 1, !tbaa !12, !noalias !1297
  %45 = getelementptr inbounds nuw <2 x i64>, ptr %40, i64 %42
  %46 = load <2 x i64>, ptr %45, align 1, !tbaa !12, !noalias !1297
  %47 = xor <2 x i64> %46, %44
  %48 = bitcast <2 x i64> %47 to <4 x i32>
  %49 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %50 = bitcast <4 x i32> %49 to <2 x i64>
  %51 = and <2 x i64> %47, splat (i64 4294967295)
  %52 = and <2 x i64> %50, splat (i64 4294967295)
  %53 = mul nuw <2 x i64> %52, %51
  %54 = shufflevector <2 x i64> %44, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %55 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %42
  %56 = load <2 x i64>, ptr %55, align 16, !tbaa !12, !alias.scope !1298, !noalias !1299
  %57 = add <2 x i64> %56, %54
  %58 = add <2 x i64> %57, %53
  store <2 x i64> %58, ptr %55, align 16, !tbaa !12, !alias.scope !1298, !noalias !1299
  %59 = add nuw nsw i64 %42, 1
  %60 = icmp eq i64 %59, 4
  br i1 %60, label %61, label %41, !llvm.loop !69

61:                                               ; preds = %41
  %62 = add nuw i64 %35, 1
  %63 = icmp eq i64 %62, %27
  br i1 %63, label %64, label %34, !llvm.loop !70

64:                                               ; preds = %61, %29
  %65 = getelementptr inbounds nuw i8, ptr %8, i64 %26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ 0, %64 ], [ %82, %66 ]
  %68 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %67
  %69 = load <2 x i64>, ptr %68, align 16, !tbaa !12, !alias.scope !1309, !noalias !1310
  %70 = lshr <2 x i64> %69, splat (i64 47)
  %71 = getelementptr inbounds nuw <2 x i64>, ptr %65, i64 %67
  %72 = load <2 x i64>, ptr %71, align 1, !tbaa !12, !noalias !1312
  %73 = xor <2 x i64> %72, %70
  %74 = xor <2 x i64> %73, %69
  %75 = bitcast <2 x i64> %74 to <4 x i32>
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %77 = bitcast <4 x i32> %76 to <2 x i64>
  %78 = and <2 x i64> %74, splat (i64 4294967295)
  %79 = mul nuw <2 x i64> %78, splat (i64 2654435761)
  %80 = mul <2 x i64> %77, splat (i64 -7046029290881679360)
  %81 = add <2 x i64> %80, %79
  store <2 x i64> %81, ptr %68, align 16, !tbaa !12, !alias.scope !1309, !noalias !1310
  %82 = add nuw nsw i64 %67, 1
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %84, label %66, !llvm.loop !81

84:                                               ; preds = %66
  %85 = shl nuw nsw i64 %27, 6
  %86 = getelementptr inbounds nuw i8, ptr %24, i64 %85
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %87 = icmp eq i64 %27, %19
  br i1 %87, label %156, label %88

88:                                               ; preds = %84
  %89 = tail call i64 @llvm.umax.i64(i64 %30, i64 1)
  br label %90

90:                                               ; preds = %88, %117
  %91 = phi i64 [ %118, %117 ], [ 0, %88 ]
  %92 = shl i64 %91, 6
  %93 = getelementptr inbounds nuw i8, ptr %86, i64 %92
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %94, i32 0, i32 3, i32 1), !noalias !1316
  %95 = shl i64 %91, 3
  %96 = getelementptr inbounds nuw i8, ptr %8, i64 %95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  br label %97

97:                                               ; preds = %90, %97
  %98 = phi i64 [ 0, %90 ], [ %115, %97 ]
  %99 = getelementptr inbounds nuw <2 x i64>, ptr %93, i64 %98
  %100 = load <2 x i64>, ptr %99, align 1, !tbaa !12, !noalias !1320
  %101 = getelementptr inbounds nuw <2 x i64>, ptr %96, i64 %98
  %102 = load <2 x i64>, ptr %101, align 1, !tbaa !12, !noalias !1320
  %103 = xor <2 x i64> %102, %100
  %104 = bitcast <2 x i64> %103 to <4 x i32>
  %105 = shufflevector <4 x i32> %104, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %106 = bitcast <4 x i32> %105 to <2 x i64>
  %107 = and <2 x i64> %103, splat (i64 4294967295)
  %108 = and <2 x i64> %106, splat (i64 4294967295)
  %109 = mul nuw <2 x i64> %108, %107
  %110 = shufflevector <2 x i64> %100, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %111 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %98
  %112 = load <2 x i64>, ptr %111, align 16, !tbaa !12, !alias.scope !1321, !noalias !1322
  %113 = add <2 x i64> %112, %110
  %114 = add <2 x i64> %113, %109
  store <2 x i64> %114, ptr %111, align 16, !tbaa !12, !alias.scope !1321, !noalias !1322
  %115 = add nuw nsw i64 %98, 1
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %117, label %97, !llvm.loop !69

117:                                              ; preds = %97
  %118 = add nuw i64 %91, 1
  %119 = icmp eq i64 %118, %89
  br i1 %119, label %156, label %90, !llvm.loop !70

120:                                              ; preds = %16
  %121 = shl i64 %21, 3
  %122 = getelementptr inbounds nuw i8, ptr %8, i64 %121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %123 = icmp eq i32 %14, 64
  br i1 %123, label %156, label %124

124:                                              ; preds = %120
  %125 = tail call i64 @llvm.umax.i64(i64 %19, i64 1)
  br label %126

126:                                              ; preds = %124, %153
  %127 = phi i64 [ %154, %153 ], [ 0, %124 ]
  %128 = shl i64 %127, 6
  %129 = getelementptr inbounds nuw i8, ptr %24, i64 %128
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %130, i32 0, i32 3, i32 1), !noalias !1330
  %131 = shl i64 %127, 3
  %132 = getelementptr inbounds nuw i8, ptr %122, i64 %131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  br label %133

133:                                              ; preds = %126, %133
  %134 = phi i64 [ 0, %126 ], [ %151, %133 ]
  %135 = getelementptr inbounds nuw <2 x i64>, ptr %129, i64 %134
  %136 = load <2 x i64>, ptr %135, align 1, !tbaa !12, !noalias !1334
  %137 = getelementptr inbounds nuw <2 x i64>, ptr %132, i64 %134
  %138 = load <2 x i64>, ptr %137, align 1, !tbaa !12, !noalias !1334
  %139 = xor <2 x i64> %138, %136
  %140 = bitcast <2 x i64> %139 to <4 x i32>
  %141 = shufflevector <4 x i32> %140, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %142 = bitcast <4 x i32> %141 to <2 x i64>
  %143 = and <2 x i64> %139, splat (i64 4294967295)
  %144 = and <2 x i64> %142, splat (i64 4294967295)
  %145 = mul nuw <2 x i64> %144, %143
  %146 = shufflevector <2 x i64> %136, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %147 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %134
  %148 = load <2 x i64>, ptr %147, align 16, !tbaa !12, !alias.scope !1335, !noalias !1336
  %149 = add <2 x i64> %148, %146
  %150 = add <2 x i64> %149, %145
  store <2 x i64> %150, ptr %147, align 16, !tbaa !12, !alias.scope !1335, !noalias !1336
  %151 = add nuw nsw i64 %134, 1
  %152 = icmp eq i64 %151, 4
  br i1 %152, label %153, label %133, !llvm.loop !69

153:                                              ; preds = %133
  %154 = add nuw nsw i64 %127, 1
  %155 = icmp eq i64 %154, %125
  br i1 %155, label %156, label %126, !llvm.loop !70

156:                                              ; preds = %117, %153, %84, %120
  %157 = zext i32 %14 to i64
  %158 = getelementptr inbounds nuw i8, ptr %24, i64 %157
  %159 = getelementptr inbounds i8, ptr %158, i64 -64
  %160 = getelementptr inbounds nuw i8, ptr %8, i64 %26
  %161 = getelementptr inbounds i8, ptr %160, i64 -7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  br label %162

162:                                              ; preds = %156, %162
  %163 = phi i64 [ 0, %156 ], [ %180, %162 ]
  %164 = getelementptr inbounds nuw <2 x i64>, ptr %159, i64 %163
  %165 = load <2 x i64>, ptr %164, align 1, !tbaa !12, !noalias !1341
  %166 = getelementptr inbounds nuw <2 x i64>, ptr %161, i64 %163
  %167 = load <2 x i64>, ptr %166, align 1, !tbaa !12, !noalias !1341
  %168 = xor <2 x i64> %167, %165
  %169 = bitcast <2 x i64> %168 to <4 x i32>
  %170 = shufflevector <4 x i32> %169, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %171 = bitcast <4 x i32> %170 to <2 x i64>
  %172 = and <2 x i64> %168, splat (i64 4294967295)
  %173 = and <2 x i64> %171, splat (i64 4294967295)
  %174 = mul nuw <2 x i64> %173, %172
  %175 = shufflevector <2 x i64> %165, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %176 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %163
  %177 = load <2 x i64>, ptr %176, align 16, !tbaa !12, !alias.scope !1341, !noalias !1344
  %178 = add <2 x i64> %177, %175
  %179 = add <2 x i64> %178, %174
  store <2 x i64> %179, ptr %176, align 16, !tbaa !12, !alias.scope !1341, !noalias !1344
  %180 = add nuw nsw i64 %163, 1
  %181 = icmp eq i64 %180, 4
  br i1 %181, label %215, label %162, !llvm.loop !69

182:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #31
  %183 = sub nuw nsw i32 64, %14
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %186 = sub nsw i64 0, %184
  %187 = getelementptr inbounds i8, ptr %13, i64 %186
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull readonly align 1 %187, i64 %184, i1 false)
  %188 = getelementptr inbounds nuw i8, ptr %2, i64 %184
  %189 = zext nneg i32 %14 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %188, ptr nonnull readonly align 1 %185, i64 %189, i1 false)
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %191 = load i64, ptr %190, align 32, !tbaa !418
  %192 = getelementptr inbounds nuw i8, ptr %8, i64 %191
  %193 = getelementptr inbounds i8, ptr %192, i64 -7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  br label %194

194:                                              ; preds = %182, %194
  %195 = phi i64 [ 0, %182 ], [ %212, %194 ]
  %196 = getelementptr inbounds nuw <2 x i64>, ptr %2, i64 %195
  %197 = load <2 x i64>, ptr %196, align 16, !tbaa !12, !noalias !1347
  %198 = getelementptr inbounds nuw <2 x i64>, ptr %193, i64 %195
  %199 = load <2 x i64>, ptr %198, align 1, !tbaa !12, !noalias !1347
  %200 = xor <2 x i64> %199, %197
  %201 = bitcast <2 x i64> %200 to <4 x i32>
  %202 = shufflevector <4 x i32> %201, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %203 = bitcast <4 x i32> %202 to <2 x i64>
  %204 = and <2 x i64> %200, splat (i64 4294967295)
  %205 = and <2 x i64> %203, splat (i64 4294967295)
  %206 = mul nuw <2 x i64> %205, %204
  %207 = shufflevector <2 x i64> %197, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %208 = getelementptr inbounds nuw <2 x i64>, ptr %3, i64 %195
  %209 = load <2 x i64>, ptr %208, align 16, !tbaa !12, !alias.scope !1347, !noalias !1350
  %210 = add <2 x i64> %209, %207
  %211 = add <2 x i64> %210, %206
  store <2 x i64> %211, ptr %208, align 16, !tbaa !12, !alias.scope !1347, !noalias !1350
  %212 = add nuw nsw i64 %195, 1
  %213 = icmp eq i64 %212, 4
  br i1 %213, label %214, label %194, !llvm.loop !69

214:                                              ; preds = %194
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #31
  br label %215

215:                                              ; preds = %162, %214
  %216 = getelementptr inbounds nuw i8, ptr %8, i64 11
  %217 = mul i64 %10, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  br label %218

218:                                              ; preds = %218, %215
  %219 = phi i64 [ 0, %215 ], [ %239, %218 ]
  %220 = phi i64 [ %217, %215 ], [ %238, %218 ]
  %221 = shl nuw nsw i64 %219, 4
  %222 = getelementptr inbounds nuw i8, ptr %3, i64 %221
  %223 = getelementptr inbounds nuw i8, ptr %216, i64 %221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %224 = load i64, ptr %222, align 16, !tbaa !19, !alias.scope !1361, !noalias !1362
  %225 = load i64, ptr %223, align 1, !tbaa !19, !alias.scope !1356, !noalias !1361
  %226 = xor i64 %225, %224
  %227 = getelementptr inbounds nuw i8, ptr %222, i64 8
  %228 = load i64, ptr %227, align 8, !tbaa !19, !alias.scope !1361, !noalias !1362
  %229 = getelementptr inbounds nuw i8, ptr %223, i64 8
  %230 = load i64, ptr %229, align 1, !tbaa !19, !alias.scope !1356, !noalias !1361
  %231 = xor i64 %230, %228
  %232 = zext i64 %226 to i128
  %233 = zext i64 %231 to i128
  %234 = mul nuw i128 %233, %232
  %235 = lshr i128 %234, 64
  %236 = xor i128 %235, %234
  %237 = trunc i128 %236 to i64
  %238 = add i64 %220, %237
  %239 = add nuw nsw i64 %219, 1
  %240 = icmp eq i64 %239, 4
  br i1 %240, label %241, label %218, !llvm.loop !113

241:                                              ; preds = %218
  %242 = lshr i64 %238, 37
  %243 = xor i64 %242, %238
  %244 = mul i64 %243, 1609587791953885689
  %245 = lshr i64 %244, 32
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %247 = load i64, ptr %246, align 32, !tbaa !418
  %248 = getelementptr inbounds nuw i8, ptr %8, i64 %247
  %249 = getelementptr inbounds i8, ptr %248, i64 -11
  %250 = mul i64 %10, -4417276706812531889
  %251 = xor i64 %250, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  br label %252

252:                                              ; preds = %252, %241
  %253 = phi i64 [ 0, %241 ], [ %273, %252 ]
  %254 = phi i64 [ %251, %241 ], [ %272, %252 ]
  %255 = shl nuw nsw i64 %253, 4
  %256 = getelementptr inbounds nuw i8, ptr %3, i64 %255
  %257 = getelementptr inbounds nuw i8, ptr %249, i64 %255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %258 = load i64, ptr %256, align 16, !tbaa !19, !alias.scope !1372, !noalias !1373
  %259 = load i64, ptr %257, align 1, !tbaa !19, !alias.scope !1367, !noalias !1372
  %260 = xor i64 %259, %258
  %261 = getelementptr inbounds nuw i8, ptr %256, i64 8
  %262 = load i64, ptr %261, align 8, !tbaa !19, !alias.scope !1372, !noalias !1373
  %263 = getelementptr inbounds nuw i8, ptr %257, i64 8
  %264 = load i64, ptr %263, align 1, !tbaa !19, !alias.scope !1367, !noalias !1372
  %265 = xor i64 %264, %262
  %266 = zext i64 %260 to i128
  %267 = zext i64 %265 to i128
  %268 = mul nuw i128 %267, %266
  %269 = lshr i128 %268, 64
  %270 = xor i128 %269, %268
  %271 = trunc i128 %270 to i64
  %272 = add i64 %254, %271
  %273 = add nuw nsw i64 %253, 1
  %274 = icmp eq i64 %273, 4
  br i1 %274, label %275, label %252, !llvm.loop !113

275:                                              ; preds = %252
  %276 = xor i64 %245, %244
  %277 = lshr i64 %272, 37
  %278 = xor i64 %277, %272
  %279 = mul i64 %278, 1609587791953885689
  %280 = lshr i64 %279, 32
  %281 = xor i64 %280, %279
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #31
  %282 = insertvalue { i64, i64 } poison, i64 %276, 0
  %283 = insertvalue { i64, i64 } %282, i64 %281, 1
  br label %296

284:                                              ; preds = %1
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %286 = load i64, ptr %285, align 8, !tbaa !412
  %287 = icmp eq i64 %286, 0
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %287, label %291, label %289

289:                                              ; preds = %284
  %290 = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef nonnull %288, i64 noundef %10, i64 noundef %286) #32
  br label %296

291:                                              ; preds = %284
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %293 = load i64, ptr %292, align 32, !tbaa !418
  %294 = add i64 %293, 64
  %295 = tail call { i64, i64 } @XXH3_128bits_withSecret(ptr noundef nonnull %288, i64 noundef %10, ptr noundef nonnull %8, i64 noundef %294) #32
  br label %296

296:                                              ; preds = %291, %289, %275
  %297 = phi { i64, i64 } [ %283, %275 ], [ %290, %289 ], [ %295, %291 ]
  ret { i64, i64 } %297
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
define dso_local range(i32 -1, 2) i32 @XXH128_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !19
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @llvm.ucmp.i32.i64(i64 %4, i64 %6)
  br label %14

10:                                               ; preds = %2
  %11 = load i64, ptr %1, align 8, !tbaa !19
  %12 = load i64, ptr %0, align 8, !tbaa !19
  %13 = tail call i32 @llvm.ucmp.i32.i64(i64 %12, i64 %11)
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %9, %8 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH128_canonicalFromHash(ptr nocapture noundef writeonly initializes((0, 16)) %0, i64 %1, i64 %2) local_unnamed_addr #5 {
  %4 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %5 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %4, ptr %0, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH128_hashFromCanonical(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i64, ptr %0, align 1, !tbaa !19
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1, !tbaa !19
  %6 = tail call noundef i64 @llvm.bswap.i64(i64 %5)
  %7 = insertvalue { i64, i64 } poison, i64 %6, 0
  %8 = insertvalue { i64, i64 } %7, i64 %3, 1
  ret { i64, i64 } %8
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_generateSecret(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #21 {
  %5 = icmp eq ptr %0, null
  %6 = icmp ult i64 %1, 136
  %7 = or i1 %5, %6
  br i1 %7, label %84, label %8

8:                                                ; preds = %4
  %9 = icmp eq i64 %3, 0
  %10 = select i1 %9, i64 192, i64 %3
  %11 = select i1 %9, ptr @XXH3_kSecret, ptr %2
  %12 = icmp eq ptr %11, null
  br i1 %12, label %84, label %13

13:                                               ; preds = %8
  %14 = icmp eq i64 %1, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ %20, %15 ], [ 0, %13 ]
  %17 = sub nuw i64 %1, %16
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 %10)
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %11, i64 %18, i1 false)
  %20 = add i64 %18, %16
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %15, label %22, !llvm.loop !1375

22:                                               ; preds = %15, %13
  %23 = lshr i64 %1, 4
  %24 = tail call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef nonnull readonly %11, i64 noundef %10, i64 noundef 0) #32
  %25 = extractvalue { i64, i64 } %24, 0
  %26 = extractvalue { i64, i64 } %24, 1
  %27 = tail call noundef i64 @llvm.bswap.i64(i64 %25)
  %28 = icmp ult i64 %1, 16
  br i1 %28, label %76, label %29

29:                                               ; preds = %22
  %30 = tail call noundef i64 @llvm.bswap.i64(i64 %26)
  %31 = xor i64 %30, %27
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ 0, %29 ], [ %74, %32 ]
  %34 = sub nuw nsw i64 6455697860950631241, %33
  %35 = add nuw nsw i64 %33, -4466874330221494952
  %36 = xor i64 %34, %31
  %37 = zext i64 %36 to i128
  %38 = mul nuw i128 %37, 11400714785074694791
  %39 = trunc i128 %38 to i64
  %40 = lshr i128 %38, 64
  %41 = trunc nuw i128 %40 to i64
  %42 = add i64 %39, 270215977642229760
  %43 = xor i64 %35, %27
  %44 = and i64 %43, 4294967295
  %45 = mul nuw i64 %44, 2246822518
  %46 = add i64 %45, %43
  %47 = add i64 %46, %41
  %48 = tail call noundef i64 @llvm.bswap.i64(i64 %47)
  %49 = xor i64 %48, %42
  %50 = zext i64 %49 to i128
  %51 = mul nuw i128 %50, 14029467366897019727
  %52 = trunc i128 %51 to i64
  %53 = lshr i128 %51, 64
  %54 = trunc nuw i128 %53 to i64
  %55 = mul i64 %47, -4417276706812531889
  %56 = add i64 %55, %54
  %57 = lshr i64 %52, 37
  %58 = xor i64 %57, %52
  %59 = mul i64 %58, 1609587791953885689
  %60 = lshr i64 %59, 32
  %61 = lshr i64 %56, 37
  %62 = xor i64 %61, %56
  %63 = mul i64 %62, 1609587791953885689
  %64 = lshr i64 %63, 32
  %65 = shl nuw i64 %33, 4
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i64, ptr %66, align 1, !tbaa !19
  %68 = xor i64 %60, %67
  %69 = xor i64 %68, %59
  store i64 %69, ptr %66, align 1
  %70 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %71 = load i64, ptr %70, align 1, !tbaa !19
  %72 = xor i64 %64, %71
  %73 = xor i64 %72, %63
  store i64 %73, ptr %70, align 1
  %74 = add nuw nsw i64 %33, 1
  %75 = icmp eq i64 %74, %23
  br i1 %75, label %76, label %32, !llvm.loop !1376

76:                                               ; preds = %32, %22
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %78 = getelementptr inbounds i8, ptr %77, i64 -16
  %79 = load i64, ptr %78, align 1, !tbaa !19
  %80 = xor i64 %79, %25
  store i64 %80, ptr %78, align 1
  %81 = getelementptr inbounds i8, ptr %77, i64 -8
  %82 = load i64, ptr %81, align 1, !tbaa !19
  %83 = xor i64 %82, %26
  store i64 %83, ptr %81, align 1
  br label %84

84:                                               ; preds = %8, %4, %76
  %85 = phi i32 [ 0, %76 ], [ 1, %4 ], [ 1, %8 ]
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define dso_local void @XXH3_generateSecret_fromSeed(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = alloca [192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #31
  %4 = sub i64 0, %1
  %5 = insertelement <2 x i64> poison, i64 %1, i64 0
  %6 = insertelement <2 x i64> %5, i64 %4, i64 1
  %7 = call ptr asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %3) #31, !srcloc !274
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %14, %8 ]
  %10 = getelementptr inbounds nuw <2 x i64>, ptr @XXH3_kSecret, i64 %9
  %11 = load <2 x i64>, ptr %10, align 16, !tbaa !12
  %12 = add <2 x i64> %11, %6
  %13 = getelementptr inbounds nuw <2 x i64>, ptr %7, i64 %9
  store <2 x i64> %12, ptr %13, align 16, !tbaa !12
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 12
  br i1 %15, label %16, label %8, !llvm.loop !275

16:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %0, ptr noundef nonnull align 16 dereferenceable(192) %3, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #22 {
  %3 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef 256, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias nocapture noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #25 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = trunc nuw nsw i64 %1 to i32
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %30, %7 ]
  %9 = phi i64 [ %5, %4 ], [ %29, %7 ]
  %10 = shl nuw nsw i64 %8, 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 %10
  %13 = load i64, ptr %11, align 1, !tbaa !19, !noalias !1377
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %15 = load i64, ptr %14, align 1, !tbaa !19, !noalias !1377
  %16 = load i64, ptr %12, align 1, !tbaa !19
  %17 = add i64 %16, %3
  %18 = xor i64 %17, %13
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %20 = load i64, ptr %19, align 1, !tbaa !19
  %21 = sub i64 %20, %3
  %22 = xor i64 %21, %15
  %23 = zext i64 %18 to i128
  %24 = zext i64 %22 to i128
  %25 = mul nuw i128 %24, %23
  %26 = lshr i128 %25, 64
  %27 = xor i128 %26, %25
  %28 = trunc i128 %27 to i64
  %29 = add i64 %9, %28
  %30 = add nuw nsw i64 %8, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %7, !llvm.loop !1380

32:                                               ; preds = %7
  %33 = lshr i32 %6, 4
  %34 = lshr i64 %29, 37
  %35 = xor i64 %34, %29
  %36 = mul i64 %35, 1609587791953885689
  %37 = lshr i64 %36, 32
  %38 = xor i64 %37, %36
  %39 = icmp eq i32 %33, 8
  br i1 %39, label %68, label %40

40:                                               ; preds = %32
  %41 = zext nneg i32 %33 to i64
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 8, %40 ], [ %66, %42 ]
  %44 = phi i64 [ %38, %40 ], [ %65, %42 ]
  %45 = shl nsw i64 %43, 4
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 %45
  %47 = getelementptr i8, ptr %2, i64 %45
  %48 = getelementptr i8, ptr %47, i64 -125
  %49 = load i64, ptr %46, align 1, !tbaa !19, !noalias !1381
  %50 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %51 = load i64, ptr %50, align 1, !tbaa !19, !noalias !1381
  %52 = load i64, ptr %48, align 1, !tbaa !19
  %53 = add i64 %52, %3
  %54 = xor i64 %53, %49
  %55 = getelementptr i8, ptr %47, i64 -117
  %56 = load i64, ptr %55, align 1, !tbaa !19
  %57 = sub i64 %56, %3
  %58 = xor i64 %57, %51
  %59 = zext i64 %54 to i128
  %60 = zext i64 %58 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = xor i128 %62, %61
  %64 = trunc i128 %63 to i64
  %65 = add i64 %44, %64
  %66 = add nuw nsw i64 %43, 1
  %67 = icmp eq i64 %66, %41
  br i1 %67, label %68, label %42, !llvm.loop !1384

68:                                               ; preds = %42, %32
  %69 = phi i64 [ %38, %32 ], [ %65, %42 ]
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %71 = getelementptr inbounds i8, ptr %70, i64 -16
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %73 = load i64, ptr %71, align 1, !tbaa !19, !noalias !1385
  %74 = getelementptr inbounds i8, ptr %70, i64 -8
  %75 = load i64, ptr %74, align 1, !tbaa !19, !noalias !1385
  %76 = load i64, ptr %72, align 1, !tbaa !19
  %77 = add i64 %76, %3
  %78 = xor i64 %77, %73
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %80 = load i64, ptr %79, align 1, !tbaa !19
  %81 = sub i64 %80, %3
  %82 = xor i64 %81, %75
  %83 = zext i64 %78 to i128
  %84 = zext i64 %82 to i128
  %85 = mul nuw i128 %84, %83
  %86 = lshr i128 %85, 64
  %87 = xor i128 %86, %85
  %88 = trunc i128 %87 to i64
  %89 = add i64 %69, %88
  %90 = lshr i64 %89, 37
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587791953885689
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  ret i64 %94
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #26

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noalias nocapture noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #25 {
  %5 = trunc nuw nsw i64 %1 to i32
  %6 = mul i64 %1, -7046029288634856825
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %54, %7 ]
  %9 = phi i64 [ 0, %4 ], [ %53, %7 ]
  %10 = phi i64 [ %6, %4 ], [ %36, %7 ]
  %11 = shl nuw nsw i64 %8, 5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %11
  %15 = load i64, ptr %12, align 1, !tbaa !19, !noalias !1388
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %17 = load i64, ptr %16, align 1, !tbaa !19, !noalias !1388
  %18 = load i64, ptr %14, align 1, !tbaa !19
  %19 = add i64 %18, %3
  %20 = xor i64 %19, %15
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %22 = load i64, ptr %21, align 1, !tbaa !19
  %23 = sub i64 %22, %3
  %24 = xor i64 %23, %17
  %25 = zext i64 %20 to i128
  %26 = zext i64 %24 to i128
  %27 = mul nuw i128 %26, %25
  %28 = lshr i128 %27, 64
  %29 = xor i128 %28, %27
  %30 = trunc i128 %29 to i64
  %31 = add i64 %10, %30
  %32 = load i64, ptr %13, align 1, !tbaa !19
  %33 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %34 = load i64, ptr %33, align 1, !tbaa !19
  %35 = add i64 %34, %32
  %36 = xor i64 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %38 = load i64, ptr %37, align 1, !tbaa !19
  %39 = add i64 %38, %3
  %40 = xor i64 %39, %32
  %41 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %42 = load i64, ptr %41, align 1, !tbaa !19
  %43 = sub i64 %42, %3
  %44 = xor i64 %43, %34
  %45 = zext i64 %40 to i128
  %46 = zext i64 %44 to i128
  %47 = mul nuw i128 %46, %45
  %48 = lshr i128 %47, 64
  %49 = xor i128 %48, %47
  %50 = trunc i128 %49 to i64
  %51 = add i64 %9, %50
  %52 = add i64 %17, %15
  %53 = xor i64 %51, %52
  %54 = add nuw nsw i64 %8, 1
  %55 = icmp eq i64 %54, 4
  br i1 %55, label %56, label %7, !llvm.loop !1391

56:                                               ; preds = %7
  %57 = lshr i32 %5, 5
  %58 = lshr i64 %36, 37
  %59 = xor i64 %58, %36
  %60 = mul i64 %59, 1609587791953885689
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  %63 = lshr i64 %53, 37
  %64 = xor i64 %63, %53
  %65 = mul i64 %64, 1609587791953885689
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  %68 = icmp eq i32 %57, 4
  br i1 %68, label %122, label %69

69:                                               ; preds = %56
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %71 = zext nneg i32 %57 to i64
  br label %72

72:                                               ; preds = %69, %72
  %73 = phi i64 [ 4, %69 ], [ %120, %72 ]
  %74 = phi i64 [ %67, %69 ], [ %119, %72 ]
  %75 = phi i64 [ %62, %69 ], [ %102, %72 ]
  %76 = shl nsw i64 %73, 5
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 16
  %79 = getelementptr i8, ptr %70, i64 %76
  %80 = getelementptr i8, ptr %79, i64 -128
  %81 = load i64, ptr %77, align 1, !tbaa !19, !noalias !1392
  %82 = getelementptr inbounds nuw i8, ptr %77, i64 8
  %83 = load i64, ptr %82, align 1, !tbaa !19, !noalias !1392
  %84 = load i64, ptr %80, align 1, !tbaa !19
  %85 = add i64 %84, %3
  %86 = xor i64 %85, %81
  %87 = getelementptr i8, ptr %79, i64 -120
  %88 = load i64, ptr %87, align 1, !tbaa !19
  %89 = sub i64 %88, %3
  %90 = xor i64 %89, %83
  %91 = zext i64 %86 to i128
  %92 = zext i64 %90 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %75, %96
  %98 = load i64, ptr %78, align 1, !tbaa !19
  %99 = getelementptr inbounds nuw i8, ptr %77, i64 24
  %100 = load i64, ptr %99, align 1, !tbaa !19
  %101 = add i64 %100, %98
  %102 = xor i64 %97, %101
  %103 = getelementptr i8, ptr %79, i64 -112
  %104 = load i64, ptr %103, align 1, !tbaa !19
  %105 = add i64 %104, %3
  %106 = xor i64 %105, %98
  %107 = getelementptr i8, ptr %79, i64 -104
  %108 = load i64, ptr %107, align 1, !tbaa !19
  %109 = sub i64 %108, %3
  %110 = xor i64 %109, %100
  %111 = zext i64 %106 to i128
  %112 = zext i64 %110 to i128
  %113 = mul nuw i128 %112, %111
  %114 = lshr i128 %113, 64
  %115 = xor i128 %114, %113
  %116 = trunc i128 %115 to i64
  %117 = add i64 %74, %116
  %118 = add i64 %83, %81
  %119 = xor i64 %117, %118
  %120 = add nuw nsw i64 %73, 1
  %121 = icmp eq i64 %120, %71
  br i1 %121, label %122, label %72, !llvm.loop !1395

122:                                              ; preds = %72, %56
  %123 = phi i64 [ %62, %56 ], [ %102, %72 ]
  %124 = phi i64 [ %67, %56 ], [ %119, %72 ]
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %126 = getelementptr inbounds i8, ptr %125, i64 -16
  %127 = getelementptr inbounds i8, ptr %125, i64 -32
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 103
  %129 = load i64, ptr %126, align 1, !tbaa !19, !noalias !1396
  %130 = getelementptr inbounds i8, ptr %125, i64 -8
  %131 = load i64, ptr %130, align 1, !tbaa !19, !noalias !1396
  %132 = load i64, ptr %128, align 1, !tbaa !19
  %133 = sub i64 %132, %3
  %134 = xor i64 %133, %129
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 111
  %136 = load i64, ptr %135, align 1, !tbaa !19
  %137 = add i64 %136, %3
  %138 = xor i64 %137, %131
  %139 = zext i64 %134 to i128
  %140 = zext i64 %138 to i128
  %141 = mul nuw i128 %140, %139
  %142 = lshr i128 %141, 64
  %143 = xor i128 %142, %141
  %144 = trunc i128 %143 to i64
  %145 = add i64 %123, %144
  %146 = load i64, ptr %127, align 1, !tbaa !19
  %147 = getelementptr inbounds i8, ptr %125, i64 -24
  %148 = load i64, ptr %147, align 1, !tbaa !19
  %149 = add i64 %148, %146
  %150 = xor i64 %145, %149
  %151 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %152 = load i64, ptr %151, align 1, !tbaa !19
  %153 = sub i64 %152, %3
  %154 = xor i64 %153, %146
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %156 = load i64, ptr %155, align 1, !tbaa !19
  %157 = add i64 %156, %3
  %158 = xor i64 %157, %148
  %159 = zext i64 %154 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %124, %164
  %166 = add i64 %131, %129
  %167 = xor i64 %165, %166
  %168 = add i64 %167, %150
  %169 = mul i64 %150, -7046029288634856825
  %170 = mul i64 %167, -8796714831421723037
  %171 = sub i64 %1, %3
  %172 = mul i64 %171, -4417276706812531889
  %173 = add i64 %169, %172
  %174 = add i64 %173, %170
  %175 = lshr i64 %168, 37
  %176 = xor i64 %175, %168
  %177 = mul i64 %176, 1609587791953885689
  %178 = lshr i64 %177, 32
  %179 = xor i64 %178, %177
  %180 = lshr i64 %174, 37
  %181 = xor i64 %180, %174
  %182 = mul i64 %181, 1609587791953885689
  %183 = lshr i64 %182, 32
  %184 = xor i64 %183, %182
  %185 = sub i64 0, %184
  %186 = insertvalue { i64, i64 } poison, i64 %179, 0
  %187 = insertvalue { i64, i64 } %186, i64 %185, 1
  ret { i64, i64 } %187
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #27

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ucmp.i32.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nofree nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10}
!14 = !{!15, !6, i64 0}
!15 = !{!"XXH32_state_s", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 24, !6, i64 40, !6, i64 44}
!16 = !{!15, !6, i64 4}
!17 = !{!15, !6, i64 40}
!18 = distinct !{!18, !10}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = !{!25, !20, i64 0}
!25 = !{!"XXH64_state_s", !20, i64 0, !7, i64 8, !7, i64 40, !6, i64 72, !6, i64 76, !20, i64 80}
!26 = !{!25, !6, i64 72}
!27 = distinct !{!27, !10}
!28 = !{!"branch_weights", !"expected", i32 2000, i32 1}
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
!41 = !{!42}
!42 = distinct !{!42, !43, !"XXH3_mix16B: argument 1"}
!43 = distinct !{!43, !"XXH3_mix16B"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"XXH3_mix16B: argument 1"}
!46 = distinct !{!46, !"XXH3_mix16B"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"XXH3_mix16B: argument 1"}
!49 = distinct !{!49, !"XXH3_mix16B"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"XXH3_mix16B: argument 1"}
!52 = distinct !{!52, !"XXH3_mix16B"}
!53 = !{!54, !56}
!54 = distinct !{!54, !55, !"XXH3_hashLong_64b_internal: argument 0"}
!55 = distinct !{!55, !"XXH3_hashLong_64b_internal"}
!56 = distinct !{!56, !55, !"XXH3_hashLong_64b_internal: argument 1"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"XXH3_accumulate: argument 0"}
!59 = distinct !{!59, !"XXH3_accumulate"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"XXH3_accumulate_512_sse2: argument 0"}
!62 = distinct !{!62, !"XXH3_accumulate_512_sse2"}
!63 = !{!61, !58}
!64 = !{!65, !66, !67, !68}
!65 = distinct !{!65, !62, !"XXH3_accumulate_512_sse2: argument 1"}
!66 = distinct !{!66, !62, !"XXH3_accumulate_512_sse2: argument 2"}
!67 = distinct !{!67, !59, !"XXH3_accumulate: argument 1"}
!68 = distinct !{!68, !59, !"XXH3_accumulate: argument 2"}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = !{!72}
!72 = distinct !{!72, !73, !"XXH3_scrambleAcc_sse2: argument 0"}
!73 = distinct !{!73, !"XXH3_scrambleAcc_sse2"}
!74 = !{!72, !75}
!75 = distinct !{!75, !76, !"XXH3_hashLong_internal_loop: argument 0"}
!76 = distinct !{!76, !"XXH3_hashLong_internal_loop"}
!77 = !{!78, !79, !80}
!78 = distinct !{!78, !73, !"XXH3_scrambleAcc_sse2: argument 1"}
!79 = distinct !{!79, !76, !"XXH3_hashLong_internal_loop: argument 1"}
!80 = distinct !{!80, !76, !"XXH3_hashLong_internal_loop: argument 2"}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = !{!84}
!84 = distinct !{!84, !85, !"XXH3_accumulate: argument 0"}
!85 = distinct !{!85, !"XXH3_accumulate"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"XXH3_accumulate_512_sse2: argument 0"}
!88 = distinct !{!88, !"XXH3_accumulate_512_sse2"}
!89 = !{!87, !84}
!90 = !{!91, !92, !93, !94}
!91 = distinct !{!91, !88, !"XXH3_accumulate_512_sse2: argument 1"}
!92 = distinct !{!92, !88, !"XXH3_accumulate_512_sse2: argument 2"}
!93 = distinct !{!93, !85, !"XXH3_accumulate: argument 1"}
!94 = distinct !{!94, !85, !"XXH3_accumulate: argument 2"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"XXH3_accumulate_512_sse2: argument 0"}
!97 = distinct !{!97, !"XXH3_accumulate_512_sse2"}
!98 = !{!96, !75}
!99 = !{!100, !101, !79, !80}
!100 = distinct !{!100, !97, !"XXH3_accumulate_512_sse2: argument 1"}
!101 = distinct !{!101, !97, !"XXH3_accumulate_512_sse2: argument 2"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"XXH3_mergeAccs: argument 0"}
!104 = distinct !{!104, !"XXH3_mergeAccs"}
!105 = !{!106}
!106 = distinct !{!106, !104, !"XXH3_mergeAccs: argument 1"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"XXH3_mix2Accs: argument 0"}
!109 = distinct !{!109, !"XXH3_mix2Accs"}
!110 = !{!108, !103}
!111 = !{!112, !106}
!112 = distinct !{!112, !109, !"XXH3_mix2Accs: argument 1"}
!113 = distinct !{!113, !10}
!114 = !{!115}
!115 = distinct !{!115, !116, !"XXH3_mix16B: argument 1"}
!116 = distinct !{!116, !"XXH3_mix16B"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"XXH3_mix16B: argument 1"}
!119 = distinct !{!119, !"XXH3_mix16B"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"XXH3_mix16B: argument 1"}
!122 = distinct !{!122, !"XXH3_mix16B"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"XXH3_mix16B: argument 1"}
!125 = distinct !{!125, !"XXH3_mix16B"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"XXH3_mix16B: argument 1"}
!128 = distinct !{!128, !"XXH3_mix16B"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"XXH3_mix16B: argument 1"}
!131 = distinct !{!131, !"XXH3_mix16B"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"XXH3_mix16B: argument 1"}
!134 = distinct !{!134, !"XXH3_mix16B"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"XXH3_mix16B: argument 1"}
!137 = distinct !{!137, !"XXH3_mix16B"}
!138 = !{!139, !141}
!139 = distinct !{!139, !140, !"XXH3_hashLong_64b_internal: argument 0"}
!140 = distinct !{!140, !"XXH3_hashLong_64b_internal"}
!141 = distinct !{!141, !140, !"XXH3_hashLong_64b_internal: argument 1"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"XXH3_accumulate: argument 0"}
!144 = distinct !{!144, !"XXH3_accumulate"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"XXH3_accumulate_512_sse2: argument 0"}
!147 = distinct !{!147, !"XXH3_accumulate_512_sse2"}
!148 = !{!146, !143}
!149 = !{!150, !151, !152, !153}
!150 = distinct !{!150, !147, !"XXH3_accumulate_512_sse2: argument 1"}
!151 = distinct !{!151, !147, !"XXH3_accumulate_512_sse2: argument 2"}
!152 = distinct !{!152, !144, !"XXH3_accumulate: argument 1"}
!153 = distinct !{!153, !144, !"XXH3_accumulate: argument 2"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"XXH3_scrambleAcc_sse2: argument 0"}
!156 = distinct !{!156, !"XXH3_scrambleAcc_sse2"}
!157 = !{!155, !158}
!158 = distinct !{!158, !159, !"XXH3_hashLong_internal_loop: argument 0"}
!159 = distinct !{!159, !"XXH3_hashLong_internal_loop"}
!160 = !{!161, !162, !163}
!161 = distinct !{!161, !156, !"XXH3_scrambleAcc_sse2: argument 1"}
!162 = distinct !{!162, !159, !"XXH3_hashLong_internal_loop: argument 1"}
!163 = distinct !{!163, !159, !"XXH3_hashLong_internal_loop: argument 2"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"XXH3_accumulate: argument 0"}
!166 = distinct !{!166, !"XXH3_accumulate"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"XXH3_accumulate_512_sse2: argument 0"}
!169 = distinct !{!169, !"XXH3_accumulate_512_sse2"}
!170 = !{!168, !165}
!171 = !{!172, !173, !174, !175}
!172 = distinct !{!172, !169, !"XXH3_accumulate_512_sse2: argument 1"}
!173 = distinct !{!173, !169, !"XXH3_accumulate_512_sse2: argument 2"}
!174 = distinct !{!174, !166, !"XXH3_accumulate: argument 1"}
!175 = distinct !{!175, !166, !"XXH3_accumulate: argument 2"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"XXH3_accumulate_512_sse2: argument 0"}
!178 = distinct !{!178, !"XXH3_accumulate_512_sse2"}
!179 = !{!177, !158}
!180 = !{!181, !182, !162, !163}
!181 = distinct !{!181, !178, !"XXH3_accumulate_512_sse2: argument 1"}
!182 = distinct !{!182, !178, !"XXH3_accumulate_512_sse2: argument 2"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"XXH3_mergeAccs: argument 0"}
!185 = distinct !{!185, !"XXH3_mergeAccs"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"XXH3_mergeAccs: argument 1"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"XXH3_mix2Accs: argument 0"}
!190 = distinct !{!190, !"XXH3_mix2Accs"}
!191 = !{!189, !184}
!192 = !{!193, !187}
!193 = distinct !{!193, !190, !"XXH3_mix2Accs: argument 1"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"XXH3_mix16B: argument 1"}
!196 = distinct !{!196, !"XXH3_mix16B"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"XXH3_mix16B: argument 1"}
!199 = distinct !{!199, !"XXH3_mix16B"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"XXH3_mix16B: argument 1"}
!202 = distinct !{!202, !"XXH3_mix16B"}
!203 = !{!204}
!204 = distinct !{!204, !205, !"XXH3_mix16B: argument 1"}
!205 = distinct !{!205, !"XXH3_mix16B"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"XXH3_mix16B: argument 1"}
!208 = distinct !{!208, !"XXH3_mix16B"}
!209 = !{!210}
!210 = distinct !{!210, !211, !"XXH3_mix16B: argument 1"}
!211 = distinct !{!211, !"XXH3_mix16B"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"XXH3_mix16B: argument 1"}
!214 = distinct !{!214, !"XXH3_mix16B"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"XXH3_mix16B: argument 1"}
!217 = distinct !{!217, !"XXH3_mix16B"}
!218 = !{!219, !221}
!219 = distinct !{!219, !220, !"XXH3_hashLong_64b_internal: argument 0"}
!220 = distinct !{!220, !"XXH3_hashLong_64b_internal"}
!221 = distinct !{!221, !220, !"XXH3_hashLong_64b_internal: argument 1"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"XXH3_accumulate: argument 0"}
!224 = distinct !{!224, !"XXH3_accumulate"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"XXH3_accumulate_512_sse2: argument 0"}
!227 = distinct !{!227, !"XXH3_accumulate_512_sse2"}
!228 = !{!226, !223}
!229 = !{!230, !231, !232, !233}
!230 = distinct !{!230, !227, !"XXH3_accumulate_512_sse2: argument 1"}
!231 = distinct !{!231, !227, !"XXH3_accumulate_512_sse2: argument 2"}
!232 = distinct !{!232, !224, !"XXH3_accumulate: argument 1"}
!233 = distinct !{!233, !224, !"XXH3_accumulate: argument 2"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"XXH3_scrambleAcc_sse2: argument 0"}
!236 = distinct !{!236, !"XXH3_scrambleAcc_sse2"}
!237 = !{!235, !238}
!238 = distinct !{!238, !239, !"XXH3_hashLong_internal_loop: argument 0"}
!239 = distinct !{!239, !"XXH3_hashLong_internal_loop"}
!240 = !{!241, !242, !243}
!241 = distinct !{!241, !236, !"XXH3_scrambleAcc_sse2: argument 1"}
!242 = distinct !{!242, !239, !"XXH3_hashLong_internal_loop: argument 1"}
!243 = distinct !{!243, !239, !"XXH3_hashLong_internal_loop: argument 2"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"XXH3_accumulate: argument 0"}
!246 = distinct !{!246, !"XXH3_accumulate"}
!247 = !{!248}
!248 = distinct !{!248, !249, !"XXH3_accumulate_512_sse2: argument 0"}
!249 = distinct !{!249, !"XXH3_accumulate_512_sse2"}
!250 = !{!248, !245}
!251 = !{!252, !253, !254, !255}
!252 = distinct !{!252, !249, !"XXH3_accumulate_512_sse2: argument 1"}
!253 = distinct !{!253, !249, !"XXH3_accumulate_512_sse2: argument 2"}
!254 = distinct !{!254, !246, !"XXH3_accumulate: argument 1"}
!255 = distinct !{!255, !246, !"XXH3_accumulate: argument 2"}
!256 = !{!257}
!257 = distinct !{!257, !258, !"XXH3_accumulate_512_sse2: argument 0"}
!258 = distinct !{!258, !"XXH3_accumulate_512_sse2"}
!259 = !{!257, !238}
!260 = !{!261, !262, !242, !243}
!261 = distinct !{!261, !258, !"XXH3_accumulate_512_sse2: argument 1"}
!262 = distinct !{!262, !258, !"XXH3_accumulate_512_sse2: argument 2"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"XXH3_mergeAccs: argument 0"}
!265 = distinct !{!265, !"XXH3_mergeAccs"}
!266 = !{!267}
!267 = distinct !{!267, !265, !"XXH3_mergeAccs: argument 1"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"XXH3_mix2Accs: argument 0"}
!270 = distinct !{!270, !"XXH3_mix2Accs"}
!271 = !{!269, !264}
!272 = !{!273, !267}
!273 = distinct !{!273, !270, !"XXH3_mix2Accs: argument 1"}
!274 = !{i64 2148647786}
!275 = distinct !{!275, !10}
!276 = !{!277, !279}
!277 = distinct !{!277, !278, !"XXH3_hashLong_64b_internal: argument 0"}
!278 = distinct !{!278, !"XXH3_hashLong_64b_internal"}
!279 = distinct !{!279, !278, !"XXH3_hashLong_64b_internal: argument 1"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"XXH3_accumulate: argument 0"}
!282 = distinct !{!282, !"XXH3_accumulate"}
!283 = !{!284}
!284 = distinct !{!284, !285, !"XXH3_accumulate_512_sse2: argument 0"}
!285 = distinct !{!285, !"XXH3_accumulate_512_sse2"}
!286 = !{!284, !281}
!287 = !{!288, !289, !290, !291}
!288 = distinct !{!288, !285, !"XXH3_accumulate_512_sse2: argument 1"}
!289 = distinct !{!289, !285, !"XXH3_accumulate_512_sse2: argument 2"}
!290 = distinct !{!290, !282, !"XXH3_accumulate: argument 1"}
!291 = distinct !{!291, !282, !"XXH3_accumulate: argument 2"}
!292 = !{!293}
!293 = distinct !{!293, !294, !"XXH3_scrambleAcc_sse2: argument 0"}
!294 = distinct !{!294, !"XXH3_scrambleAcc_sse2"}
!295 = !{!293, !296}
!296 = distinct !{!296, !297, !"XXH3_hashLong_internal_loop: argument 0"}
!297 = distinct !{!297, !"XXH3_hashLong_internal_loop"}
!298 = !{!299, !300, !301}
!299 = distinct !{!299, !294, !"XXH3_scrambleAcc_sse2: argument 1"}
!300 = distinct !{!300, !297, !"XXH3_hashLong_internal_loop: argument 1"}
!301 = distinct !{!301, !297, !"XXH3_hashLong_internal_loop: argument 2"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"XXH3_accumulate: argument 0"}
!304 = distinct !{!304, !"XXH3_accumulate"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"XXH3_accumulate_512_sse2: argument 0"}
!307 = distinct !{!307, !"XXH3_accumulate_512_sse2"}
!308 = !{!306, !303}
!309 = !{!310, !311, !312, !313}
!310 = distinct !{!310, !307, !"XXH3_accumulate_512_sse2: argument 1"}
!311 = distinct !{!311, !307, !"XXH3_accumulate_512_sse2: argument 2"}
!312 = distinct !{!312, !304, !"XXH3_accumulate: argument 1"}
!313 = distinct !{!313, !304, !"XXH3_accumulate: argument 2"}
!314 = !{!315}
!315 = distinct !{!315, !316, !"XXH3_accumulate_512_sse2: argument 0"}
!316 = distinct !{!316, !"XXH3_accumulate_512_sse2"}
!317 = !{!315, !296}
!318 = !{!319, !320, !300, !301}
!319 = distinct !{!319, !316, !"XXH3_accumulate_512_sse2: argument 1"}
!320 = distinct !{!320, !316, !"XXH3_accumulate_512_sse2: argument 2"}
!321 = !{!322}
!322 = distinct !{!322, !323, !"XXH3_mergeAccs: argument 0"}
!323 = distinct !{!323, !"XXH3_mergeAccs"}
!324 = !{!325}
!325 = distinct !{!325, !323, !"XXH3_mergeAccs: argument 1"}
!326 = !{!327}
!327 = distinct !{!327, !328, !"XXH3_mix2Accs: argument 0"}
!328 = distinct !{!328, !"XXH3_mix2Accs"}
!329 = !{!327, !322}
!330 = !{!331, !325}
!331 = distinct !{!331, !328, !"XXH3_mix2Accs: argument 1"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"XXH3_mix16B: argument 1"}
!334 = distinct !{!334, !"XXH3_mix16B"}
!335 = !{!336}
!336 = distinct !{!336, !337, !"XXH3_mix16B: argument 1"}
!337 = distinct !{!337, !"XXH3_mix16B"}
!338 = !{!339}
!339 = distinct !{!339, !340, !"XXH3_mix16B: argument 1"}
!340 = distinct !{!340, !"XXH3_mix16B"}
!341 = !{!342}
!342 = distinct !{!342, !343, !"XXH3_mix16B: argument 1"}
!343 = distinct !{!343, !"XXH3_mix16B"}
!344 = !{!345}
!345 = distinct !{!345, !346, !"XXH3_mix16B: argument 1"}
!346 = distinct !{!346, !"XXH3_mix16B"}
!347 = !{!348}
!348 = distinct !{!348, !349, !"XXH3_mix16B: argument 1"}
!349 = distinct !{!349, !"XXH3_mix16B"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"XXH3_mix16B: argument 1"}
!352 = distinct !{!352, !"XXH3_mix16B"}
!353 = !{!354}
!354 = distinct !{!354, !355, !"XXH3_mix16B: argument 1"}
!355 = distinct !{!355, !"XXH3_mix16B"}
!356 = !{!357, !359}
!357 = distinct !{!357, !358, !"XXH3_hashLong_64b_internal: argument 0"}
!358 = distinct !{!358, !"XXH3_hashLong_64b_internal"}
!359 = distinct !{!359, !358, !"XXH3_hashLong_64b_internal: argument 1"}
!360 = !{!361}
!361 = distinct !{!361, !362, !"XXH3_accumulate: argument 0"}
!362 = distinct !{!362, !"XXH3_accumulate"}
!363 = !{!364}
!364 = distinct !{!364, !365, !"XXH3_accumulate_512_sse2: argument 0"}
!365 = distinct !{!365, !"XXH3_accumulate_512_sse2"}
!366 = !{!364, !361}
!367 = !{!368, !369, !370, !371}
!368 = distinct !{!368, !365, !"XXH3_accumulate_512_sse2: argument 1"}
!369 = distinct !{!369, !365, !"XXH3_accumulate_512_sse2: argument 2"}
!370 = distinct !{!370, !362, !"XXH3_accumulate: argument 1"}
!371 = distinct !{!371, !362, !"XXH3_accumulate: argument 2"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"XXH3_scrambleAcc_sse2: argument 0"}
!374 = distinct !{!374, !"XXH3_scrambleAcc_sse2"}
!375 = !{!373, !376}
!376 = distinct !{!376, !377, !"XXH3_hashLong_internal_loop: argument 0"}
!377 = distinct !{!377, !"XXH3_hashLong_internal_loop"}
!378 = !{!379, !380, !381}
!379 = distinct !{!379, !374, !"XXH3_scrambleAcc_sse2: argument 1"}
!380 = distinct !{!380, !377, !"XXH3_hashLong_internal_loop: argument 1"}
!381 = distinct !{!381, !377, !"XXH3_hashLong_internal_loop: argument 2"}
!382 = !{!383}
!383 = distinct !{!383, !384, !"XXH3_accumulate: argument 0"}
!384 = distinct !{!384, !"XXH3_accumulate"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"XXH3_accumulate_512_sse2: argument 0"}
!387 = distinct !{!387, !"XXH3_accumulate_512_sse2"}
!388 = !{!386, !383}
!389 = !{!390, !391, !392, !393}
!390 = distinct !{!390, !387, !"XXH3_accumulate_512_sse2: argument 1"}
!391 = distinct !{!391, !387, !"XXH3_accumulate_512_sse2: argument 2"}
!392 = distinct !{!392, !384, !"XXH3_accumulate: argument 1"}
!393 = distinct !{!393, !384, !"XXH3_accumulate: argument 2"}
!394 = !{!395}
!395 = distinct !{!395, !396, !"XXH3_accumulate_512_sse2: argument 0"}
!396 = distinct !{!396, !"XXH3_accumulate_512_sse2"}
!397 = !{!395, !376}
!398 = !{!399, !400, !380, !381}
!399 = distinct !{!399, !396, !"XXH3_accumulate_512_sse2: argument 1"}
!400 = distinct !{!400, !396, !"XXH3_accumulate_512_sse2: argument 2"}
!401 = !{!402}
!402 = distinct !{!402, !403, !"XXH3_mergeAccs: argument 0"}
!403 = distinct !{!403, !"XXH3_mergeAccs"}
!404 = !{!405}
!405 = distinct !{!405, !403, !"XXH3_mergeAccs: argument 1"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"XXH3_mix2Accs: argument 0"}
!408 = distinct !{!408, !"XXH3_mix2Accs"}
!409 = !{!407, !402}
!410 = !{!411, !405}
!411 = distinct !{!411, !408, !"XXH3_mix2Accs: argument 1"}
!412 = !{!413, !20, i64 552}
!413 = !{!"XXH3_state_s", !7, i64 0, !7, i64 64, !7, i64 256, !6, i64 512, !6, i64 516, !20, i64 520, !20, i64 528, !20, i64 536, !20, i64 544, !20, i64 552, !20, i64 560, !414, i64 568}
!414 = !{!"p1 omnipotent char", !415, i64 0}
!415 = !{!"any pointer", !7, i64 0}
!416 = !{!413, !6, i64 516}
!417 = !{!413, !414, i64 568}
!418 = !{!413, !20, i64 544}
!419 = !{!413, !20, i64 536}
!420 = !{!421}
!421 = distinct !{!421, !422, !"XXH3_update: argument 0"}
!422 = distinct !{!422, !"XXH3_update"}
!423 = !{!424}
!424 = distinct !{!424, !422, !"XXH3_update: argument 1"}
!425 = !{!413, !20, i64 528}
!426 = !{!413, !6, i64 512}
!427 = !{!428}
!428 = distinct !{!428, !429, !"XXH3_consumeStripes: argument 0"}
!429 = distinct !{!429, !"XXH3_consumeStripes"}
!430 = !{!431}
!431 = distinct !{!431, !429, !"XXH3_consumeStripes: argument 1"}
!432 = !{!428, !433, !434}
!433 = distinct !{!433, !429, !"XXH3_consumeStripes: argument 2"}
!434 = distinct !{!434, !429, !"XXH3_consumeStripes: argument 3"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"XXH3_accumulate: argument 0"}
!437 = distinct !{!437, !"XXH3_accumulate"}
!438 = !{!436, !428, !431}
!439 = !{!440}
!440 = distinct !{!440, !441, !"XXH3_accumulate_512_sse2: argument 0"}
!441 = distinct !{!441, !"XXH3_accumulate_512_sse2"}
!442 = !{!440, !436, !428, !431}
!443 = !{!440, !436, !428}
!444 = !{!445, !446, !447, !448, !431, !433, !434}
!445 = distinct !{!445, !441, !"XXH3_accumulate_512_sse2: argument 1"}
!446 = distinct !{!446, !441, !"XXH3_accumulate_512_sse2: argument 2"}
!447 = distinct !{!447, !437, !"XXH3_accumulate: argument 1"}
!448 = distinct !{!448, !437, !"XXH3_accumulate: argument 2"}
!449 = !{!450}
!450 = distinct !{!450, !451, !"XXH3_scrambleAcc_sse2: argument 0"}
!451 = distinct !{!451, !"XXH3_scrambleAcc_sse2"}
!452 = !{!450, !428}
!453 = !{!454, !431, !433, !434}
!454 = distinct !{!454, !451, !"XXH3_scrambleAcc_sse2: argument 1"}
!455 = !{!450, !428, !431}
!456 = !{!457}
!457 = distinct !{!457, !458, !"XXH3_accumulate: argument 0"}
!458 = distinct !{!458, !"XXH3_accumulate"}
!459 = !{!457, !428, !431}
!460 = !{!461}
!461 = distinct !{!461, !462, !"XXH3_accumulate_512_sse2: argument 0"}
!462 = distinct !{!462, !"XXH3_accumulate_512_sse2"}
!463 = !{!461, !457, !428, !431}
!464 = !{!461, !457, !428}
!465 = !{!466, !467, !468, !469, !431, !433, !434}
!466 = distinct !{!466, !462, !"XXH3_accumulate_512_sse2: argument 1"}
!467 = distinct !{!467, !462, !"XXH3_accumulate_512_sse2: argument 2"}
!468 = distinct !{!468, !458, !"XXH3_accumulate: argument 1"}
!469 = distinct !{!469, !458, !"XXH3_accumulate: argument 2"}
!470 = !{!471}
!471 = distinct !{!471, !472, !"XXH3_accumulate: argument 0"}
!472 = distinct !{!472, !"XXH3_accumulate"}
!473 = !{!471, !428, !431}
!474 = !{!475}
!475 = distinct !{!475, !476, !"XXH3_accumulate_512_sse2: argument 0"}
!476 = distinct !{!476, !"XXH3_accumulate_512_sse2"}
!477 = !{!475, !471, !428, !431}
!478 = !{!475, !471, !428}
!479 = !{!480, !481, !482, !483, !431, !433, !434}
!480 = distinct !{!480, !476, !"XXH3_accumulate_512_sse2: argument 1"}
!481 = distinct !{!481, !476, !"XXH3_accumulate_512_sse2: argument 2"}
!482 = distinct !{!482, !472, !"XXH3_accumulate: argument 1"}
!483 = distinct !{!483, !472, !"XXH3_accumulate: argument 2"}
!484 = !{!413, !20, i64 520}
!485 = !{!486}
!486 = distinct !{!486, !487, !"XXH3_accumulate: argument 0"}
!487 = distinct !{!487, !"XXH3_accumulate"}
!488 = !{!489}
!489 = distinct !{!489, !490, !"XXH3_accumulate_512_sse2: argument 0"}
!490 = distinct !{!490, !"XXH3_accumulate_512_sse2"}
!491 = !{!489, !486}
!492 = !{!493, !494, !495, !496}
!493 = distinct !{!493, !490, !"XXH3_accumulate_512_sse2: argument 1"}
!494 = distinct !{!494, !490, !"XXH3_accumulate_512_sse2: argument 2"}
!495 = distinct !{!495, !487, !"XXH3_accumulate: argument 1"}
!496 = distinct !{!496, !487, !"XXH3_accumulate: argument 2"}
!497 = !{!498}
!498 = distinct !{!498, !499, !"XXH3_scrambleAcc_sse2: argument 0"}
!499 = distinct !{!499, !"XXH3_scrambleAcc_sse2"}
!500 = !{!501}
!501 = distinct !{!501, !499, !"XXH3_scrambleAcc_sse2: argument 1"}
!502 = !{!503}
!503 = distinct !{!503, !504, !"XXH3_accumulate: argument 0"}
!504 = distinct !{!504, !"XXH3_accumulate"}
!505 = !{!506}
!506 = distinct !{!506, !507, !"XXH3_accumulate_512_sse2: argument 0"}
!507 = distinct !{!507, !"XXH3_accumulate_512_sse2"}
!508 = !{!506, !503}
!509 = !{!510, !511, !512, !513}
!510 = distinct !{!510, !507, !"XXH3_accumulate_512_sse2: argument 1"}
!511 = distinct !{!511, !507, !"XXH3_accumulate_512_sse2: argument 2"}
!512 = distinct !{!512, !504, !"XXH3_accumulate: argument 1"}
!513 = distinct !{!513, !504, !"XXH3_accumulate: argument 2"}
!514 = !{!515}
!515 = distinct !{!515, !516, !"XXH3_scrambleAcc_sse2: argument 0"}
!516 = distinct !{!516, !"XXH3_scrambleAcc_sse2"}
!517 = !{!518}
!518 = distinct !{!518, !516, !"XXH3_scrambleAcc_sse2: argument 1"}
!519 = distinct !{!519, !10}
!520 = !{!521}
!521 = distinct !{!521, !522, !"XXH3_accumulate: argument 0"}
!522 = distinct !{!522, !"XXH3_accumulate"}
!523 = !{!524}
!524 = distinct !{!524, !525, !"XXH3_accumulate_512_sse2: argument 0"}
!525 = distinct !{!525, !"XXH3_accumulate_512_sse2"}
!526 = !{!524, !521}
!527 = !{!528, !529, !530, !531}
!528 = distinct !{!528, !525, !"XXH3_accumulate_512_sse2: argument 1"}
!529 = distinct !{!529, !525, !"XXH3_accumulate_512_sse2: argument 2"}
!530 = distinct !{!530, !522, !"XXH3_accumulate: argument 1"}
!531 = distinct !{!531, !522, !"XXH3_accumulate: argument 2"}
!532 = !{!533}
!533 = distinct !{!533, !534, !"XXH3_consumeStripes: argument 1"}
!534 = distinct !{!534, !"XXH3_consumeStripes"}
!535 = !{!536, !537, !538}
!536 = distinct !{!536, !534, !"XXH3_consumeStripes: argument 0"}
!537 = distinct !{!537, !534, !"XXH3_consumeStripes: argument 2"}
!538 = distinct !{!538, !534, !"XXH3_consumeStripes: argument 3"}
!539 = !{!536}
!540 = !{!541}
!541 = distinct !{!541, !542, !"XXH3_accumulate: argument 0"}
!542 = distinct !{!542, !"XXH3_accumulate"}
!543 = !{!541, !536, !533}
!544 = !{!545}
!545 = distinct !{!545, !546, !"XXH3_accumulate_512_sse2: argument 0"}
!546 = distinct !{!546, !"XXH3_accumulate_512_sse2"}
!547 = !{!545, !541, !536, !533}
!548 = !{!545, !541, !536}
!549 = !{!550, !551, !552, !553, !533, !537, !538}
!550 = distinct !{!550, !546, !"XXH3_accumulate_512_sse2: argument 1"}
!551 = distinct !{!551, !546, !"XXH3_accumulate_512_sse2: argument 2"}
!552 = distinct !{!552, !542, !"XXH3_accumulate: argument 1"}
!553 = distinct !{!553, !542, !"XXH3_accumulate: argument 2"}
!554 = !{!555}
!555 = distinct !{!555, !556, !"XXH3_scrambleAcc_sse2: argument 0"}
!556 = distinct !{!556, !"XXH3_scrambleAcc_sse2"}
!557 = !{!555, !536}
!558 = !{!559, !533, !537, !538}
!559 = distinct !{!559, !556, !"XXH3_scrambleAcc_sse2: argument 1"}
!560 = !{!555, !536, !533}
!561 = !{!562}
!562 = distinct !{!562, !563, !"XXH3_accumulate: argument 0"}
!563 = distinct !{!563, !"XXH3_accumulate"}
!564 = !{!562, !536, !533}
!565 = !{!566}
!566 = distinct !{!566, !567, !"XXH3_accumulate_512_sse2: argument 0"}
!567 = distinct !{!567, !"XXH3_accumulate_512_sse2"}
!568 = !{!566, !562, !536, !533}
!569 = !{!566, !562, !536}
!570 = !{!571, !572, !573, !574, !533, !537, !538}
!571 = distinct !{!571, !567, !"XXH3_accumulate_512_sse2: argument 1"}
!572 = distinct !{!572, !567, !"XXH3_accumulate_512_sse2: argument 2"}
!573 = distinct !{!573, !563, !"XXH3_accumulate: argument 1"}
!574 = distinct !{!574, !563, !"XXH3_accumulate: argument 2"}
!575 = !{!576}
!576 = distinct !{!576, !577, !"XXH3_accumulate: argument 0"}
!577 = distinct !{!577, !"XXH3_accumulate"}
!578 = !{!576, !536, !533}
!579 = !{!580}
!580 = distinct !{!580, !581, !"XXH3_accumulate_512_sse2: argument 0"}
!581 = distinct !{!581, !"XXH3_accumulate_512_sse2"}
!582 = !{!580, !576, !536, !533}
!583 = !{!580, !576, !536}
!584 = !{!585, !586, !587, !588, !533, !537, !538}
!585 = distinct !{!585, !581, !"XXH3_accumulate_512_sse2: argument 1"}
!586 = distinct !{!586, !581, !"XXH3_accumulate_512_sse2: argument 2"}
!587 = distinct !{!587, !577, !"XXH3_accumulate: argument 1"}
!588 = distinct !{!588, !577, !"XXH3_accumulate: argument 2"}
!589 = distinct !{!589, !10}
!590 = !{!591}
!591 = distinct !{!591, !592, !"XXH3_consumeStripes: argument 0"}
!592 = distinct !{!592, !"XXH3_consumeStripes"}
!593 = !{!594}
!594 = distinct !{!594, !595, !"XXH3_accumulate: argument 0"}
!595 = distinct !{!595, !"XXH3_accumulate"}
!596 = !{!594, !591, !597}
!597 = distinct !{!597, !592, !"XXH3_consumeStripes: argument 1"}
!598 = !{!599}
!599 = distinct !{!599, !600, !"XXH3_accumulate_512_sse2: argument 0"}
!600 = distinct !{!600, !"XXH3_accumulate_512_sse2"}
!601 = !{!599, !594, !591, !597}
!602 = !{!599, !594, !591}
!603 = !{!604, !605, !606, !607, !597, !608, !609}
!604 = distinct !{!604, !600, !"XXH3_accumulate_512_sse2: argument 1"}
!605 = distinct !{!605, !600, !"XXH3_accumulate_512_sse2: argument 2"}
!606 = distinct !{!606, !595, !"XXH3_accumulate: argument 1"}
!607 = distinct !{!607, !595, !"XXH3_accumulate: argument 2"}
!608 = distinct !{!608, !592, !"XXH3_consumeStripes: argument 2"}
!609 = distinct !{!609, !592, !"XXH3_consumeStripes: argument 3"}
!610 = !{!611}
!611 = distinct !{!611, !612, !"XXH3_scrambleAcc_sse2: argument 0"}
!612 = distinct !{!612, !"XXH3_scrambleAcc_sse2"}
!613 = !{!611, !591}
!614 = !{!615, !597, !608, !609}
!615 = distinct !{!615, !612, !"XXH3_scrambleAcc_sse2: argument 1"}
!616 = !{!611, !591, !597}
!617 = !{!618}
!618 = distinct !{!618, !619, !"XXH3_accumulate: argument 0"}
!619 = distinct !{!619, !"XXH3_accumulate"}
!620 = !{!618, !591, !597}
!621 = !{!622}
!622 = distinct !{!622, !623, !"XXH3_accumulate_512_sse2: argument 0"}
!623 = distinct !{!623, !"XXH3_accumulate_512_sse2"}
!624 = !{!622, !618, !591, !597}
!625 = !{!622, !618, !591}
!626 = !{!627, !628, !629, !630, !597, !608, !609}
!627 = distinct !{!627, !623, !"XXH3_accumulate_512_sse2: argument 1"}
!628 = distinct !{!628, !623, !"XXH3_accumulate_512_sse2: argument 2"}
!629 = distinct !{!629, !619, !"XXH3_accumulate: argument 1"}
!630 = distinct !{!630, !619, !"XXH3_accumulate: argument 2"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"XXH3_accumulate: argument 0"}
!633 = distinct !{!633, !"XXH3_accumulate"}
!634 = !{!632, !591, !597}
!635 = !{!636}
!636 = distinct !{!636, !637, !"XXH3_accumulate_512_sse2: argument 0"}
!637 = distinct !{!637, !"XXH3_accumulate_512_sse2"}
!638 = !{!636, !632, !591, !597}
!639 = !{!636, !632, !591}
!640 = !{!641, !642, !643, !644, !597, !608, !609}
!641 = distinct !{!641, !637, !"XXH3_accumulate_512_sse2: argument 1"}
!642 = distinct !{!642, !637, !"XXH3_accumulate_512_sse2: argument 2"}
!643 = distinct !{!643, !633, !"XXH3_accumulate: argument 1"}
!644 = distinct !{!644, !633, !"XXH3_accumulate: argument 2"}
!645 = !{!646}
!646 = distinct !{!646, !647, !"XXH3_accumulate_512_sse2: argument 0"}
!647 = distinct !{!647, !"XXH3_accumulate_512_sse2"}
!648 = !{!649, !650}
!649 = distinct !{!649, !647, !"XXH3_accumulate_512_sse2: argument 1"}
!650 = distinct !{!650, !647, !"XXH3_accumulate_512_sse2: argument 2"}
!651 = !{!652}
!652 = distinct !{!652, !653, !"XXH3_accumulate_512_sse2: argument 0"}
!653 = distinct !{!653, !"XXH3_accumulate_512_sse2"}
!654 = !{!655, !656}
!655 = distinct !{!655, !653, !"XXH3_accumulate_512_sse2: argument 1"}
!656 = distinct !{!656, !653, !"XXH3_accumulate_512_sse2: argument 2"}
!657 = !{!658}
!658 = distinct !{!658, !659, !"XXH3_mergeAccs: argument 0"}
!659 = distinct !{!659, !"XXH3_mergeAccs"}
!660 = !{!661}
!661 = distinct !{!661, !659, !"XXH3_mergeAccs: argument 1"}
!662 = !{!663}
!663 = distinct !{!663, !664, !"XXH3_mix2Accs: argument 0"}
!664 = distinct !{!664, !"XXH3_mix2Accs"}
!665 = !{!663, !658}
!666 = !{!667, !661}
!667 = distinct !{!667, !664, !"XXH3_mix2Accs: argument 1"}
!668 = !{!669}
!669 = distinct !{!669, !670, !"XXH3_mix16B: argument 1"}
!670 = distinct !{!670, !"XXH3_mix16B"}
!671 = !{!672}
!672 = distinct !{!672, !673, !"XXH3_mix16B: argument 1"}
!673 = distinct !{!673, !"XXH3_mix16B"}
!674 = !{!675}
!675 = distinct !{!675, !676, !"XXH3_mix16B: argument 1"}
!676 = distinct !{!676, !"XXH3_mix16B"}
!677 = !{!678}
!678 = distinct !{!678, !679, !"XXH3_mix16B: argument 1"}
!679 = distinct !{!679, !"XXH3_mix16B"}
!680 = !{!681}
!681 = distinct !{!681, !682, !"XXH3_hashLong_128b_internal: argument 0"}
!682 = distinct !{!682, !"XXH3_hashLong_128b_internal"}
!683 = !{!684}
!684 = distinct !{!684, !682, !"XXH3_hashLong_128b_internal: argument 1"}
!685 = !{!681, !684}
!686 = !{!687}
!687 = distinct !{!687, !688, !"XXH3_accumulate: argument 0"}
!688 = distinct !{!688, !"XXH3_accumulate"}
!689 = !{!687, !684}
!690 = !{!691}
!691 = distinct !{!691, !692, !"XXH3_accumulate_512_sse2: argument 0"}
!692 = distinct !{!692, !"XXH3_accumulate_512_sse2"}
!693 = !{!691, !687, !684}
!694 = !{!691, !687, !681}
!695 = !{!691, !687}
!696 = !{!697, !698, !699, !700, !681, !684}
!697 = distinct !{!697, !692, !"XXH3_accumulate_512_sse2: argument 1"}
!698 = distinct !{!698, !692, !"XXH3_accumulate_512_sse2: argument 2"}
!699 = distinct !{!699, !688, !"XXH3_accumulate: argument 1"}
!700 = distinct !{!700, !688, !"XXH3_accumulate: argument 2"}
!701 = !{!702}
!702 = distinct !{!702, !703, !"XXH3_scrambleAcc_sse2: argument 0"}
!703 = distinct !{!703, !"XXH3_scrambleAcc_sse2"}
!704 = !{!702, !705}
!705 = distinct !{!705, !706, !"XXH3_hashLong_internal_loop: argument 0"}
!706 = distinct !{!706, !"XXH3_hashLong_internal_loop"}
!707 = !{!708, !709, !710, !681, !684}
!708 = distinct !{!708, !703, !"XXH3_scrambleAcc_sse2: argument 1"}
!709 = distinct !{!709, !706, !"XXH3_hashLong_internal_loop: argument 1"}
!710 = distinct !{!710, !706, !"XXH3_hashLong_internal_loop: argument 2"}
!711 = !{!702, !681}
!712 = !{!713}
!713 = distinct !{!713, !714, !"XXH3_accumulate: argument 0"}
!714 = distinct !{!714, !"XXH3_accumulate"}
!715 = !{!713, !684}
!716 = !{!717}
!717 = distinct !{!717, !718, !"XXH3_accumulate_512_sse2: argument 0"}
!718 = distinct !{!718, !"XXH3_accumulate_512_sse2"}
!719 = !{!717, !713, !684}
!720 = !{!717, !713, !681}
!721 = !{!717, !713}
!722 = !{!723, !724, !725, !726, !681, !684}
!723 = distinct !{!723, !718, !"XXH3_accumulate_512_sse2: argument 1"}
!724 = distinct !{!724, !718, !"XXH3_accumulate_512_sse2: argument 2"}
!725 = distinct !{!725, !714, !"XXH3_accumulate: argument 1"}
!726 = distinct !{!726, !714, !"XXH3_accumulate: argument 2"}
!727 = !{!728}
!728 = distinct !{!728, !729, !"XXH3_accumulate_512_sse2: argument 0"}
!729 = distinct !{!729, !"XXH3_accumulate_512_sse2"}
!730 = !{!728, !684}
!731 = !{!728, !681}
!732 = !{!728, !705}
!733 = !{!734, !735, !709, !710, !681, !684}
!734 = distinct !{!734, !729, !"XXH3_accumulate_512_sse2: argument 1"}
!735 = distinct !{!735, !729, !"XXH3_accumulate_512_sse2: argument 2"}
!736 = !{!737}
!737 = distinct !{!737, !738, !"XXH3_mergeAccs: argument 0"}
!738 = distinct !{!738, !"XXH3_mergeAccs"}
!739 = !{!740}
!740 = distinct !{!740, !738, !"XXH3_mergeAccs: argument 1"}
!741 = !{!742}
!742 = distinct !{!742, !743, !"XXH3_mix2Accs: argument 0"}
!743 = distinct !{!743, !"XXH3_mix2Accs"}
!744 = !{!742, !737}
!745 = !{!746, !740, !681}
!746 = distinct !{!746, !743, !"XXH3_mix2Accs: argument 1"}
!747 = !{!742, !737, !681}
!748 = !{!749}
!749 = distinct !{!749, !750, !"XXH3_mergeAccs: argument 0"}
!750 = distinct !{!750, !"XXH3_mergeAccs"}
!751 = !{!752}
!752 = distinct !{!752, !750, !"XXH3_mergeAccs: argument 1"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"XXH3_mix2Accs: argument 0"}
!755 = distinct !{!755, !"XXH3_mix2Accs"}
!756 = !{!754, !749}
!757 = !{!758, !752, !681}
!758 = distinct !{!758, !755, !"XXH3_mix2Accs: argument 1"}
!759 = !{!754, !749, !681}
!760 = !{!761}
!761 = distinct !{!761, !762, !"XXH3_mix16B: argument 1"}
!762 = distinct !{!762, !"XXH3_mix16B"}
!763 = !{!764}
!764 = distinct !{!764, !765, !"XXH3_mix16B: argument 1"}
!765 = distinct !{!765, !"XXH3_mix16B"}
!766 = !{!767}
!767 = distinct !{!767, !768, !"XXH3_mix16B: argument 1"}
!768 = distinct !{!768, !"XXH3_mix16B"}
!769 = !{!770}
!770 = distinct !{!770, !771, !"XXH3_mix16B: argument 1"}
!771 = distinct !{!771, !"XXH3_mix16B"}
!772 = !{!773}
!773 = distinct !{!773, !774, !"XXH3_hashLong_128b_internal: argument 0"}
!774 = distinct !{!774, !"XXH3_hashLong_128b_internal"}
!775 = !{!776}
!776 = distinct !{!776, !774, !"XXH3_hashLong_128b_internal: argument 1"}
!777 = !{!773, !776}
!778 = !{!779}
!779 = distinct !{!779, !780, !"XXH3_accumulate: argument 0"}
!780 = distinct !{!780, !"XXH3_accumulate"}
!781 = !{!779, !776}
!782 = !{!783}
!783 = distinct !{!783, !784, !"XXH3_accumulate_512_sse2: argument 0"}
!784 = distinct !{!784, !"XXH3_accumulate_512_sse2"}
!785 = !{!783, !779, !776}
!786 = !{!783, !779, !773}
!787 = !{!783, !779}
!788 = !{!789, !790, !791, !792, !773, !776}
!789 = distinct !{!789, !784, !"XXH3_accumulate_512_sse2: argument 1"}
!790 = distinct !{!790, !784, !"XXH3_accumulate_512_sse2: argument 2"}
!791 = distinct !{!791, !780, !"XXH3_accumulate: argument 1"}
!792 = distinct !{!792, !780, !"XXH3_accumulate: argument 2"}
!793 = !{!794}
!794 = distinct !{!794, !795, !"XXH3_scrambleAcc_sse2: argument 0"}
!795 = distinct !{!795, !"XXH3_scrambleAcc_sse2"}
!796 = !{!794, !797}
!797 = distinct !{!797, !798, !"XXH3_hashLong_internal_loop: argument 0"}
!798 = distinct !{!798, !"XXH3_hashLong_internal_loop"}
!799 = !{!800, !801, !802, !773, !776}
!800 = distinct !{!800, !795, !"XXH3_scrambleAcc_sse2: argument 1"}
!801 = distinct !{!801, !798, !"XXH3_hashLong_internal_loop: argument 1"}
!802 = distinct !{!802, !798, !"XXH3_hashLong_internal_loop: argument 2"}
!803 = !{!794, !773}
!804 = !{!805}
!805 = distinct !{!805, !806, !"XXH3_accumulate: argument 0"}
!806 = distinct !{!806, !"XXH3_accumulate"}
!807 = !{!805, !776}
!808 = !{!809}
!809 = distinct !{!809, !810, !"XXH3_accumulate_512_sse2: argument 0"}
!810 = distinct !{!810, !"XXH3_accumulate_512_sse2"}
!811 = !{!809, !805, !776}
!812 = !{!809, !805, !773}
!813 = !{!809, !805}
!814 = !{!815, !816, !817, !818, !773, !776}
!815 = distinct !{!815, !810, !"XXH3_accumulate_512_sse2: argument 1"}
!816 = distinct !{!816, !810, !"XXH3_accumulate_512_sse2: argument 2"}
!817 = distinct !{!817, !806, !"XXH3_accumulate: argument 1"}
!818 = distinct !{!818, !806, !"XXH3_accumulate: argument 2"}
!819 = !{!820}
!820 = distinct !{!820, !821, !"XXH3_accumulate_512_sse2: argument 0"}
!821 = distinct !{!821, !"XXH3_accumulate_512_sse2"}
!822 = !{!820, !776}
!823 = !{!820, !773}
!824 = !{!820, !797}
!825 = !{!826, !827, !801, !802, !773, !776}
!826 = distinct !{!826, !821, !"XXH3_accumulate_512_sse2: argument 1"}
!827 = distinct !{!827, !821, !"XXH3_accumulate_512_sse2: argument 2"}
!828 = !{!829}
!829 = distinct !{!829, !830, !"XXH3_mergeAccs: argument 0"}
!830 = distinct !{!830, !"XXH3_mergeAccs"}
!831 = !{!832}
!832 = distinct !{!832, !830, !"XXH3_mergeAccs: argument 1"}
!833 = !{!834}
!834 = distinct !{!834, !835, !"XXH3_mix2Accs: argument 0"}
!835 = distinct !{!835, !"XXH3_mix2Accs"}
!836 = !{!834, !829}
!837 = !{!838, !832, !773}
!838 = distinct !{!838, !835, !"XXH3_mix2Accs: argument 1"}
!839 = !{!834, !829, !773}
!840 = !{!841}
!841 = distinct !{!841, !842, !"XXH3_mergeAccs: argument 0"}
!842 = distinct !{!842, !"XXH3_mergeAccs"}
!843 = !{!844}
!844 = distinct !{!844, !842, !"XXH3_mergeAccs: argument 1"}
!845 = !{!846}
!846 = distinct !{!846, !847, !"XXH3_mix2Accs: argument 0"}
!847 = distinct !{!847, !"XXH3_mix2Accs"}
!848 = !{!846, !841}
!849 = !{!850, !844, !773}
!850 = distinct !{!850, !847, !"XXH3_mix2Accs: argument 1"}
!851 = !{!846, !841, !773}
!852 = !{!853}
!853 = distinct !{!853, !854, !"XXH3_mix16B: argument 1"}
!854 = distinct !{!854, !"XXH3_mix16B"}
!855 = !{!856}
!856 = distinct !{!856, !857, !"XXH3_mix16B: argument 1"}
!857 = distinct !{!857, !"XXH3_mix16B"}
!858 = !{!859}
!859 = distinct !{!859, !860, !"XXH3_mix16B: argument 1"}
!860 = distinct !{!860, !"XXH3_mix16B"}
!861 = !{!862}
!862 = distinct !{!862, !863, !"XXH3_mix16B: argument 1"}
!863 = distinct !{!863, !"XXH3_mix16B"}
!864 = !{!865}
!865 = distinct !{!865, !866, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!866 = distinct !{!866, !"XXH3_hashLong_128b_withSeed_internal"}
!867 = !{!868}
!868 = distinct !{!868, !869, !"XXH3_hashLong_128b_internal: argument 0"}
!869 = distinct !{!869, !"XXH3_hashLong_128b_internal"}
!870 = !{!871}
!871 = distinct !{!871, !869, !"XXH3_hashLong_128b_internal: argument 1"}
!872 = !{!868, !871, !865}
!873 = !{!874}
!874 = distinct !{!874, !875, !"XXH3_accumulate: argument 0"}
!875 = distinct !{!875, !"XXH3_accumulate"}
!876 = !{!874, !871}
!877 = !{!878}
!878 = distinct !{!878, !879, !"XXH3_accumulate_512_sse2: argument 0"}
!879 = distinct !{!879, !"XXH3_accumulate_512_sse2"}
!880 = !{!868, !865}
!881 = !{!878, !874, !871}
!882 = !{!878, !874, !868, !865}
!883 = !{!878, !874}
!884 = !{!885, !886, !887, !888, !868, !871, !865}
!885 = distinct !{!885, !879, !"XXH3_accumulate_512_sse2: argument 1"}
!886 = distinct !{!886, !879, !"XXH3_accumulate_512_sse2: argument 2"}
!887 = distinct !{!887, !875, !"XXH3_accumulate: argument 1"}
!888 = distinct !{!888, !875, !"XXH3_accumulate: argument 2"}
!889 = !{!890}
!890 = distinct !{!890, !891, !"XXH3_scrambleAcc_sse2: argument 0"}
!891 = distinct !{!891, !"XXH3_scrambleAcc_sse2"}
!892 = !{!890, !893}
!893 = distinct !{!893, !894, !"XXH3_hashLong_internal_loop: argument 0"}
!894 = distinct !{!894, !"XXH3_hashLong_internal_loop"}
!895 = !{!896, !897, !898, !868, !871, !865}
!896 = distinct !{!896, !891, !"XXH3_scrambleAcc_sse2: argument 1"}
!897 = distinct !{!897, !894, !"XXH3_hashLong_internal_loop: argument 1"}
!898 = distinct !{!898, !894, !"XXH3_hashLong_internal_loop: argument 2"}
!899 = !{!890, !868, !865}
!900 = !{!901}
!901 = distinct !{!901, !902, !"XXH3_accumulate: argument 0"}
!902 = distinct !{!902, !"XXH3_accumulate"}
!903 = !{!901, !871}
!904 = !{!905}
!905 = distinct !{!905, !906, !"XXH3_accumulate_512_sse2: argument 0"}
!906 = distinct !{!906, !"XXH3_accumulate_512_sse2"}
!907 = !{!905, !901, !871}
!908 = !{!905, !901, !868, !865}
!909 = !{!905, !901}
!910 = !{!911, !912, !913, !914, !868, !871, !865}
!911 = distinct !{!911, !906, !"XXH3_accumulate_512_sse2: argument 1"}
!912 = distinct !{!912, !906, !"XXH3_accumulate_512_sse2: argument 2"}
!913 = distinct !{!913, !902, !"XXH3_accumulate: argument 1"}
!914 = distinct !{!914, !902, !"XXH3_accumulate: argument 2"}
!915 = !{!916}
!916 = distinct !{!916, !917, !"XXH3_accumulate_512_sse2: argument 0"}
!917 = distinct !{!917, !"XXH3_accumulate_512_sse2"}
!918 = !{!916, !871}
!919 = !{!916, !868, !865}
!920 = !{!916, !893}
!921 = !{!922, !923, !897, !898, !868, !871, !865}
!922 = distinct !{!922, !917, !"XXH3_accumulate_512_sse2: argument 1"}
!923 = distinct !{!923, !917, !"XXH3_accumulate_512_sse2: argument 2"}
!924 = !{!925}
!925 = distinct !{!925, !926, !"XXH3_mergeAccs: argument 0"}
!926 = distinct !{!926, !"XXH3_mergeAccs"}
!927 = !{!928}
!928 = distinct !{!928, !926, !"XXH3_mergeAccs: argument 1"}
!929 = !{!930}
!930 = distinct !{!930, !931, !"XXH3_mix2Accs: argument 0"}
!931 = distinct !{!931, !"XXH3_mix2Accs"}
!932 = !{!930, !925}
!933 = !{!934, !928, !868, !865}
!934 = distinct !{!934, !931, !"XXH3_mix2Accs: argument 1"}
!935 = !{!930, !925, !868, !865}
!936 = !{!937}
!937 = distinct !{!937, !938, !"XXH3_mergeAccs: argument 0"}
!938 = distinct !{!938, !"XXH3_mergeAccs"}
!939 = !{!940}
!940 = distinct !{!940, !938, !"XXH3_mergeAccs: argument 1"}
!941 = !{!942}
!942 = distinct !{!942, !943, !"XXH3_mix2Accs: argument 0"}
!943 = distinct !{!943, !"XXH3_mix2Accs"}
!944 = !{!942, !937}
!945 = !{!946, !940, !868, !865}
!946 = distinct !{!946, !943, !"XXH3_mix2Accs: argument 1"}
!947 = !{!942, !937, !868, !865}
!948 = !{!949}
!949 = distinct !{!949, !950, !"XXH3_hashLong_128b_internal: argument 0"}
!950 = distinct !{!950, !"XXH3_hashLong_128b_internal"}
!951 = !{!952}
!952 = distinct !{!952, !950, !"XXH3_hashLong_128b_internal: argument 1"}
!953 = !{!949, !952, !865}
!954 = !{!955}
!955 = distinct !{!955, !956, !"XXH3_accumulate: argument 0"}
!956 = distinct !{!956, !"XXH3_accumulate"}
!957 = !{!955, !952}
!958 = !{!959}
!959 = distinct !{!959, !960, !"XXH3_accumulate_512_sse2: argument 0"}
!960 = distinct !{!960, !"XXH3_accumulate_512_sse2"}
!961 = !{!949, !865}
!962 = !{!959, !955, !952}
!963 = !{!959, !955, !949, !865}
!964 = !{!959, !955}
!965 = !{!966, !967, !968, !969, !949, !952, !865}
!966 = distinct !{!966, !960, !"XXH3_accumulate_512_sse2: argument 1"}
!967 = distinct !{!967, !960, !"XXH3_accumulate_512_sse2: argument 2"}
!968 = distinct !{!968, !956, !"XXH3_accumulate: argument 1"}
!969 = distinct !{!969, !956, !"XXH3_accumulate: argument 2"}
!970 = !{!971}
!971 = distinct !{!971, !972, !"XXH3_scrambleAcc_sse2: argument 0"}
!972 = distinct !{!972, !"XXH3_scrambleAcc_sse2"}
!973 = !{!971, !974}
!974 = distinct !{!974, !975, !"XXH3_hashLong_internal_loop: argument 0"}
!975 = distinct !{!975, !"XXH3_hashLong_internal_loop"}
!976 = !{!977, !978, !979, !949, !952, !865}
!977 = distinct !{!977, !972, !"XXH3_scrambleAcc_sse2: argument 1"}
!978 = distinct !{!978, !975, !"XXH3_hashLong_internal_loop: argument 1"}
!979 = distinct !{!979, !975, !"XXH3_hashLong_internal_loop: argument 2"}
!980 = !{!971, !949, !865}
!981 = !{!982}
!982 = distinct !{!982, !983, !"XXH3_accumulate: argument 0"}
!983 = distinct !{!983, !"XXH3_accumulate"}
!984 = !{!982, !952}
!985 = !{!986}
!986 = distinct !{!986, !987, !"XXH3_accumulate_512_sse2: argument 0"}
!987 = distinct !{!987, !"XXH3_accumulate_512_sse2"}
!988 = !{!986, !982, !952}
!989 = !{!986, !982, !949, !865}
!990 = !{!986, !982}
!991 = !{!992, !993, !994, !995, !949, !952, !865}
!992 = distinct !{!992, !987, !"XXH3_accumulate_512_sse2: argument 1"}
!993 = distinct !{!993, !987, !"XXH3_accumulate_512_sse2: argument 2"}
!994 = distinct !{!994, !983, !"XXH3_accumulate: argument 1"}
!995 = distinct !{!995, !983, !"XXH3_accumulate: argument 2"}
!996 = !{!997}
!997 = distinct !{!997, !998, !"XXH3_accumulate_512_sse2: argument 0"}
!998 = distinct !{!998, !"XXH3_accumulate_512_sse2"}
!999 = !{!997, !952}
!1000 = !{!997, !949, !865}
!1001 = !{!997, !974}
!1002 = !{!1003, !1004, !978, !979, !949, !952, !865}
!1003 = distinct !{!1003, !998, !"XXH3_accumulate_512_sse2: argument 1"}
!1004 = distinct !{!1004, !998, !"XXH3_accumulate_512_sse2: argument 2"}
!1005 = !{!1006}
!1006 = distinct !{!1006, !1007, !"XXH3_mergeAccs: argument 0"}
!1007 = distinct !{!1007, !"XXH3_mergeAccs"}
!1008 = !{!1009}
!1009 = distinct !{!1009, !1007, !"XXH3_mergeAccs: argument 1"}
!1010 = !{!1011}
!1011 = distinct !{!1011, !1012, !"XXH3_mix2Accs: argument 0"}
!1012 = distinct !{!1012, !"XXH3_mix2Accs"}
!1013 = !{!1011, !1006}
!1014 = !{!1015, !1009, !949, !865}
!1015 = distinct !{!1015, !1012, !"XXH3_mix2Accs: argument 1"}
!1016 = !{!1011, !1006, !949, !865}
!1017 = !{!1018}
!1018 = distinct !{!1018, !1019, !"XXH3_mergeAccs: argument 0"}
!1019 = distinct !{!1019, !"XXH3_mergeAccs"}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1019, !"XXH3_mergeAccs: argument 1"}
!1022 = !{!1023}
!1023 = distinct !{!1023, !1024, !"XXH3_mix2Accs: argument 0"}
!1024 = distinct !{!1024, !"XXH3_mix2Accs"}
!1025 = !{!1023, !1018}
!1026 = !{!1027, !1021, !949, !865}
!1027 = distinct !{!1027, !1024, !"XXH3_mix2Accs: argument 1"}
!1028 = !{!1023, !1018, !949, !865}
!1029 = !{!1030}
!1030 = distinct !{!1030, !1031, !"XXH3_mix16B: argument 1"}
!1031 = distinct !{!1031, !"XXH3_mix16B"}
!1032 = !{!1033}
!1033 = distinct !{!1033, !1034, !"XXH3_mix16B: argument 1"}
!1034 = distinct !{!1034, !"XXH3_mix16B"}
!1035 = !{!1036}
!1036 = distinct !{!1036, !1037, !"XXH3_mix16B: argument 1"}
!1037 = distinct !{!1037, !"XXH3_mix16B"}
!1038 = !{!1039}
!1039 = distinct !{!1039, !1040, !"XXH3_mix16B: argument 1"}
!1040 = distinct !{!1040, !"XXH3_mix16B"}
!1041 = !{!1042}
!1042 = distinct !{!1042, !1043, !"XXH3_hashLong_128b_internal: argument 0"}
!1043 = distinct !{!1043, !"XXH3_hashLong_128b_internal"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1043, !"XXH3_hashLong_128b_internal: argument 1"}
!1046 = !{!1042, !1045}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1049, !"XXH3_accumulate: argument 0"}
!1049 = distinct !{!1049, !"XXH3_accumulate"}
!1050 = !{!1048, !1045}
!1051 = !{!1052}
!1052 = distinct !{!1052, !1053, !"XXH3_accumulate_512_sse2: argument 0"}
!1053 = distinct !{!1053, !"XXH3_accumulate_512_sse2"}
!1054 = !{!1052, !1048, !1045}
!1055 = !{!1052, !1048, !1042}
!1056 = !{!1052, !1048}
!1057 = !{!1058, !1059, !1060, !1061, !1042, !1045}
!1058 = distinct !{!1058, !1053, !"XXH3_accumulate_512_sse2: argument 1"}
!1059 = distinct !{!1059, !1053, !"XXH3_accumulate_512_sse2: argument 2"}
!1060 = distinct !{!1060, !1049, !"XXH3_accumulate: argument 1"}
!1061 = distinct !{!1061, !1049, !"XXH3_accumulate: argument 2"}
!1062 = !{!1063}
!1063 = distinct !{!1063, !1064, !"XXH3_scrambleAcc_sse2: argument 0"}
!1064 = distinct !{!1064, !"XXH3_scrambleAcc_sse2"}
!1065 = !{!1063, !1066}
!1066 = distinct !{!1066, !1067, !"XXH3_hashLong_internal_loop: argument 0"}
!1067 = distinct !{!1067, !"XXH3_hashLong_internal_loop"}
!1068 = !{!1069, !1070, !1071, !1042, !1045}
!1069 = distinct !{!1069, !1064, !"XXH3_scrambleAcc_sse2: argument 1"}
!1070 = distinct !{!1070, !1067, !"XXH3_hashLong_internal_loop: argument 1"}
!1071 = distinct !{!1071, !1067, !"XXH3_hashLong_internal_loop: argument 2"}
!1072 = !{!1063, !1042}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1075, !"XXH3_accumulate: argument 0"}
!1075 = distinct !{!1075, !"XXH3_accumulate"}
!1076 = !{!1074, !1045}
!1077 = !{!1078}
!1078 = distinct !{!1078, !1079, !"XXH3_accumulate_512_sse2: argument 0"}
!1079 = distinct !{!1079, !"XXH3_accumulate_512_sse2"}
!1080 = !{!1078, !1074, !1045}
!1081 = !{!1078, !1074, !1042}
!1082 = !{!1078, !1074}
!1083 = !{!1084, !1085, !1086, !1087, !1042, !1045}
!1084 = distinct !{!1084, !1079, !"XXH3_accumulate_512_sse2: argument 1"}
!1085 = distinct !{!1085, !1079, !"XXH3_accumulate_512_sse2: argument 2"}
!1086 = distinct !{!1086, !1075, !"XXH3_accumulate: argument 1"}
!1087 = distinct !{!1087, !1075, !"XXH3_accumulate: argument 2"}
!1088 = !{!1089}
!1089 = distinct !{!1089, !1090, !"XXH3_accumulate_512_sse2: argument 0"}
!1090 = distinct !{!1090, !"XXH3_accumulate_512_sse2"}
!1091 = !{!1089, !1045}
!1092 = !{!1089, !1042}
!1093 = !{!1089, !1066}
!1094 = !{!1095, !1096, !1070, !1071, !1042, !1045}
!1095 = distinct !{!1095, !1090, !"XXH3_accumulate_512_sse2: argument 1"}
!1096 = distinct !{!1096, !1090, !"XXH3_accumulate_512_sse2: argument 2"}
!1097 = !{!1098}
!1098 = distinct !{!1098, !1099, !"XXH3_mergeAccs: argument 0"}
!1099 = distinct !{!1099, !"XXH3_mergeAccs"}
!1100 = !{!1101}
!1101 = distinct !{!1101, !1099, !"XXH3_mergeAccs: argument 1"}
!1102 = !{!1103}
!1103 = distinct !{!1103, !1104, !"XXH3_mix2Accs: argument 0"}
!1104 = distinct !{!1104, !"XXH3_mix2Accs"}
!1105 = !{!1103, !1098}
!1106 = !{!1107, !1101, !1042}
!1107 = distinct !{!1107, !1104, !"XXH3_mix2Accs: argument 1"}
!1108 = !{!1103, !1098, !1042}
!1109 = !{!1110}
!1110 = distinct !{!1110, !1111, !"XXH3_mergeAccs: argument 0"}
!1111 = distinct !{!1111, !"XXH3_mergeAccs"}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1111, !"XXH3_mergeAccs: argument 1"}
!1114 = !{!1115}
!1115 = distinct !{!1115, !1116, !"XXH3_mix2Accs: argument 0"}
!1116 = distinct !{!1116, !"XXH3_mix2Accs"}
!1117 = !{!1115, !1110}
!1118 = !{!1119, !1113, !1042}
!1119 = distinct !{!1119, !1116, !"XXH3_mix2Accs: argument 1"}
!1120 = !{!1115, !1110, !1042}
!1121 = !{!1122}
!1122 = distinct !{!1122, !1123, !"XXH3_update: argument 0"}
!1123 = distinct !{!1123, !"XXH3_update"}
!1124 = !{!1125}
!1125 = distinct !{!1125, !1123, !"XXH3_update: argument 1"}
!1126 = !{!1127}
!1127 = distinct !{!1127, !1128, !"XXH3_consumeStripes: argument 0"}
!1128 = distinct !{!1128, !"XXH3_consumeStripes"}
!1129 = !{!1130}
!1130 = distinct !{!1130, !1128, !"XXH3_consumeStripes: argument 1"}
!1131 = !{!1127, !1132, !1133}
!1132 = distinct !{!1132, !1128, !"XXH3_consumeStripes: argument 2"}
!1133 = distinct !{!1133, !1128, !"XXH3_consumeStripes: argument 3"}
!1134 = !{!1135}
!1135 = distinct !{!1135, !1136, !"XXH3_accumulate: argument 0"}
!1136 = distinct !{!1136, !"XXH3_accumulate"}
!1137 = !{!1135, !1127, !1130}
!1138 = !{!1139}
!1139 = distinct !{!1139, !1140, !"XXH3_accumulate_512_sse2: argument 0"}
!1140 = distinct !{!1140, !"XXH3_accumulate_512_sse2"}
!1141 = !{!1139, !1135, !1127, !1130}
!1142 = !{!1139, !1135, !1127}
!1143 = !{!1144, !1145, !1146, !1147, !1130, !1132, !1133}
!1144 = distinct !{!1144, !1140, !"XXH3_accumulate_512_sse2: argument 1"}
!1145 = distinct !{!1145, !1140, !"XXH3_accumulate_512_sse2: argument 2"}
!1146 = distinct !{!1146, !1136, !"XXH3_accumulate: argument 1"}
!1147 = distinct !{!1147, !1136, !"XXH3_accumulate: argument 2"}
!1148 = !{!1149}
!1149 = distinct !{!1149, !1150, !"XXH3_scrambleAcc_sse2: argument 0"}
!1150 = distinct !{!1150, !"XXH3_scrambleAcc_sse2"}
!1151 = !{!1149, !1127}
!1152 = !{!1153, !1130, !1132, !1133}
!1153 = distinct !{!1153, !1150, !"XXH3_scrambleAcc_sse2: argument 1"}
!1154 = !{!1149, !1127, !1130}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1157, !"XXH3_accumulate: argument 0"}
!1157 = distinct !{!1157, !"XXH3_accumulate"}
!1158 = !{!1156, !1127, !1130}
!1159 = !{!1160}
!1160 = distinct !{!1160, !1161, !"XXH3_accumulate_512_sse2: argument 0"}
!1161 = distinct !{!1161, !"XXH3_accumulate_512_sse2"}
!1162 = !{!1160, !1156, !1127, !1130}
!1163 = !{!1160, !1156, !1127}
!1164 = !{!1165, !1166, !1167, !1168, !1130, !1132, !1133}
!1165 = distinct !{!1165, !1161, !"XXH3_accumulate_512_sse2: argument 1"}
!1166 = distinct !{!1166, !1161, !"XXH3_accumulate_512_sse2: argument 2"}
!1167 = distinct !{!1167, !1157, !"XXH3_accumulate: argument 1"}
!1168 = distinct !{!1168, !1157, !"XXH3_accumulate: argument 2"}
!1169 = !{!1170}
!1170 = distinct !{!1170, !1171, !"XXH3_accumulate: argument 0"}
!1171 = distinct !{!1171, !"XXH3_accumulate"}
!1172 = !{!1170, !1127, !1130}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1175, !"XXH3_accumulate_512_sse2: argument 0"}
!1175 = distinct !{!1175, !"XXH3_accumulate_512_sse2"}
!1176 = !{!1174, !1170, !1127, !1130}
!1177 = !{!1174, !1170, !1127}
!1178 = !{!1179, !1180, !1181, !1182, !1130, !1132, !1133}
!1179 = distinct !{!1179, !1175, !"XXH3_accumulate_512_sse2: argument 1"}
!1180 = distinct !{!1180, !1175, !"XXH3_accumulate_512_sse2: argument 2"}
!1181 = distinct !{!1181, !1171, !"XXH3_accumulate: argument 1"}
!1182 = distinct !{!1182, !1171, !"XXH3_accumulate: argument 2"}
!1183 = !{!1184}
!1184 = distinct !{!1184, !1185, !"XXH3_accumulate: argument 0"}
!1185 = distinct !{!1185, !"XXH3_accumulate"}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1188, !"XXH3_accumulate_512_sse2: argument 0"}
!1188 = distinct !{!1188, !"XXH3_accumulate_512_sse2"}
!1189 = !{!1187, !1184}
!1190 = !{!1191, !1192, !1193, !1194}
!1191 = distinct !{!1191, !1188, !"XXH3_accumulate_512_sse2: argument 1"}
!1192 = distinct !{!1192, !1188, !"XXH3_accumulate_512_sse2: argument 2"}
!1193 = distinct !{!1193, !1185, !"XXH3_accumulate: argument 1"}
!1194 = distinct !{!1194, !1185, !"XXH3_accumulate: argument 2"}
!1195 = !{!1196}
!1196 = distinct !{!1196, !1197, !"XXH3_scrambleAcc_sse2: argument 0"}
!1197 = distinct !{!1197, !"XXH3_scrambleAcc_sse2"}
!1198 = !{!1199}
!1199 = distinct !{!1199, !1197, !"XXH3_scrambleAcc_sse2: argument 1"}
!1200 = !{!1201}
!1201 = distinct !{!1201, !1202, !"XXH3_accumulate: argument 0"}
!1202 = distinct !{!1202, !"XXH3_accumulate"}
!1203 = !{!1204}
!1204 = distinct !{!1204, !1205, !"XXH3_accumulate_512_sse2: argument 0"}
!1205 = distinct !{!1205, !"XXH3_accumulate_512_sse2"}
!1206 = !{!1204, !1201}
!1207 = !{!1208, !1209, !1210, !1211}
!1208 = distinct !{!1208, !1205, !"XXH3_accumulate_512_sse2: argument 1"}
!1209 = distinct !{!1209, !1205, !"XXH3_accumulate_512_sse2: argument 2"}
!1210 = distinct !{!1210, !1202, !"XXH3_accumulate: argument 1"}
!1211 = distinct !{!1211, !1202, !"XXH3_accumulate: argument 2"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1214, !"XXH3_scrambleAcc_sse2: argument 0"}
!1214 = distinct !{!1214, !"XXH3_scrambleAcc_sse2"}
!1215 = !{!1216}
!1216 = distinct !{!1216, !1214, !"XXH3_scrambleAcc_sse2: argument 1"}
!1217 = !{!1218}
!1218 = distinct !{!1218, !1219, !"XXH3_accumulate: argument 0"}
!1219 = distinct !{!1219, !"XXH3_accumulate"}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1222, !"XXH3_accumulate_512_sse2: argument 0"}
!1222 = distinct !{!1222, !"XXH3_accumulate_512_sse2"}
!1223 = !{!1221, !1218}
!1224 = !{!1225, !1226, !1227, !1228}
!1225 = distinct !{!1225, !1222, !"XXH3_accumulate_512_sse2: argument 1"}
!1226 = distinct !{!1226, !1222, !"XXH3_accumulate_512_sse2: argument 2"}
!1227 = distinct !{!1227, !1219, !"XXH3_accumulate: argument 1"}
!1228 = distinct !{!1228, !1219, !"XXH3_accumulate: argument 2"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1231, !"XXH3_consumeStripes: argument 1"}
!1231 = distinct !{!1231, !"XXH3_consumeStripes"}
!1232 = !{!1233, !1234, !1235}
!1233 = distinct !{!1233, !1231, !"XXH3_consumeStripes: argument 0"}
!1234 = distinct !{!1234, !1231, !"XXH3_consumeStripes: argument 2"}
!1235 = distinct !{!1235, !1231, !"XXH3_consumeStripes: argument 3"}
!1236 = !{!1233}
!1237 = !{!1238}
!1238 = distinct !{!1238, !1239, !"XXH3_accumulate: argument 0"}
!1239 = distinct !{!1239, !"XXH3_accumulate"}
!1240 = !{!1238, !1233, !1230}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1243, !"XXH3_accumulate_512_sse2: argument 0"}
!1243 = distinct !{!1243, !"XXH3_accumulate_512_sse2"}
!1244 = !{!1242, !1238, !1233, !1230}
!1245 = !{!1242, !1238, !1233}
!1246 = !{!1247, !1248, !1249, !1250, !1230, !1234, !1235}
!1247 = distinct !{!1247, !1243, !"XXH3_accumulate_512_sse2: argument 1"}
!1248 = distinct !{!1248, !1243, !"XXH3_accumulate_512_sse2: argument 2"}
!1249 = distinct !{!1249, !1239, !"XXH3_accumulate: argument 1"}
!1250 = distinct !{!1250, !1239, !"XXH3_accumulate: argument 2"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1253, !"XXH3_scrambleAcc_sse2: argument 0"}
!1253 = distinct !{!1253, !"XXH3_scrambleAcc_sse2"}
!1254 = !{!1252, !1233}
!1255 = !{!1256, !1230, !1234, !1235}
!1256 = distinct !{!1256, !1253, !"XXH3_scrambleAcc_sse2: argument 1"}
!1257 = !{!1252, !1233, !1230}
!1258 = !{!1259}
!1259 = distinct !{!1259, !1260, !"XXH3_accumulate: argument 0"}
!1260 = distinct !{!1260, !"XXH3_accumulate"}
!1261 = !{!1259, !1233, !1230}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1264, !"XXH3_accumulate_512_sse2: argument 0"}
!1264 = distinct !{!1264, !"XXH3_accumulate_512_sse2"}
!1265 = !{!1263, !1259, !1233, !1230}
!1266 = !{!1263, !1259, !1233}
!1267 = !{!1268, !1269, !1270, !1271, !1230, !1234, !1235}
!1268 = distinct !{!1268, !1264, !"XXH3_accumulate_512_sse2: argument 1"}
!1269 = distinct !{!1269, !1264, !"XXH3_accumulate_512_sse2: argument 2"}
!1270 = distinct !{!1270, !1260, !"XXH3_accumulate: argument 1"}
!1271 = distinct !{!1271, !1260, !"XXH3_accumulate: argument 2"}
!1272 = !{!1273}
!1273 = distinct !{!1273, !1274, !"XXH3_accumulate: argument 0"}
!1274 = distinct !{!1274, !"XXH3_accumulate"}
!1275 = !{!1273, !1233, !1230}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1278, !"XXH3_accumulate_512_sse2: argument 0"}
!1278 = distinct !{!1278, !"XXH3_accumulate_512_sse2"}
!1279 = !{!1277, !1273, !1233, !1230}
!1280 = !{!1277, !1273, !1233}
!1281 = !{!1282, !1283, !1284, !1285, !1230, !1234, !1235}
!1282 = distinct !{!1282, !1278, !"XXH3_accumulate_512_sse2: argument 1"}
!1283 = distinct !{!1283, !1278, !"XXH3_accumulate_512_sse2: argument 2"}
!1284 = distinct !{!1284, !1274, !"XXH3_accumulate: argument 1"}
!1285 = distinct !{!1285, !1274, !"XXH3_accumulate: argument 2"}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1288, !"XXH3_consumeStripes: argument 0"}
!1288 = distinct !{!1288, !"XXH3_consumeStripes"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"XXH3_accumulate: argument 0"}
!1291 = distinct !{!1291, !"XXH3_accumulate"}
!1292 = !{!1290, !1287, !1293}
!1293 = distinct !{!1293, !1288, !"XXH3_consumeStripes: argument 1"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1296, !"XXH3_accumulate_512_sse2: argument 0"}
!1296 = distinct !{!1296, !"XXH3_accumulate_512_sse2"}
!1297 = !{!1295, !1290, !1287, !1293}
!1298 = !{!1295, !1290, !1287}
!1299 = !{!1300, !1301, !1302, !1303, !1293, !1304, !1305}
!1300 = distinct !{!1300, !1296, !"XXH3_accumulate_512_sse2: argument 1"}
!1301 = distinct !{!1301, !1296, !"XXH3_accumulate_512_sse2: argument 2"}
!1302 = distinct !{!1302, !1291, !"XXH3_accumulate: argument 1"}
!1303 = distinct !{!1303, !1291, !"XXH3_accumulate: argument 2"}
!1304 = distinct !{!1304, !1288, !"XXH3_consumeStripes: argument 2"}
!1305 = distinct !{!1305, !1288, !"XXH3_consumeStripes: argument 3"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1308, !"XXH3_scrambleAcc_sse2: argument 0"}
!1308 = distinct !{!1308, !"XXH3_scrambleAcc_sse2"}
!1309 = !{!1307, !1287}
!1310 = !{!1311, !1293, !1304, !1305}
!1311 = distinct !{!1311, !1308, !"XXH3_scrambleAcc_sse2: argument 1"}
!1312 = !{!1307, !1287, !1293}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1315, !"XXH3_accumulate: argument 0"}
!1315 = distinct !{!1315, !"XXH3_accumulate"}
!1316 = !{!1314, !1287, !1293}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1319, !"XXH3_accumulate_512_sse2: argument 0"}
!1319 = distinct !{!1319, !"XXH3_accumulate_512_sse2"}
!1320 = !{!1318, !1314, !1287, !1293}
!1321 = !{!1318, !1314, !1287}
!1322 = !{!1323, !1324, !1325, !1326, !1293, !1304, !1305}
!1323 = distinct !{!1323, !1319, !"XXH3_accumulate_512_sse2: argument 1"}
!1324 = distinct !{!1324, !1319, !"XXH3_accumulate_512_sse2: argument 2"}
!1325 = distinct !{!1325, !1315, !"XXH3_accumulate: argument 1"}
!1326 = distinct !{!1326, !1315, !"XXH3_accumulate: argument 2"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1329, !"XXH3_accumulate: argument 0"}
!1329 = distinct !{!1329, !"XXH3_accumulate"}
!1330 = !{!1328, !1287, !1293}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1333, !"XXH3_accumulate_512_sse2: argument 0"}
!1333 = distinct !{!1333, !"XXH3_accumulate_512_sse2"}
!1334 = !{!1332, !1328, !1287, !1293}
!1335 = !{!1332, !1328, !1287}
!1336 = !{!1337, !1338, !1339, !1340, !1293, !1304, !1305}
!1337 = distinct !{!1337, !1333, !"XXH3_accumulate_512_sse2: argument 1"}
!1338 = distinct !{!1338, !1333, !"XXH3_accumulate_512_sse2: argument 2"}
!1339 = distinct !{!1339, !1329, !"XXH3_accumulate: argument 1"}
!1340 = distinct !{!1340, !1329, !"XXH3_accumulate: argument 2"}
!1341 = !{!1342}
!1342 = distinct !{!1342, !1343, !"XXH3_accumulate_512_sse2: argument 0"}
!1343 = distinct !{!1343, !"XXH3_accumulate_512_sse2"}
!1344 = !{!1345, !1346}
!1345 = distinct !{!1345, !1343, !"XXH3_accumulate_512_sse2: argument 1"}
!1346 = distinct !{!1346, !1343, !"XXH3_accumulate_512_sse2: argument 2"}
!1347 = !{!1348}
!1348 = distinct !{!1348, !1349, !"XXH3_accumulate_512_sse2: argument 0"}
!1349 = distinct !{!1349, !"XXH3_accumulate_512_sse2"}
!1350 = !{!1351, !1352}
!1351 = distinct !{!1351, !1349, !"XXH3_accumulate_512_sse2: argument 1"}
!1352 = distinct !{!1352, !1349, !"XXH3_accumulate_512_sse2: argument 2"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1355, !"XXH3_mergeAccs: argument 0"}
!1355 = distinct !{!1355, !"XXH3_mergeAccs"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1355, !"XXH3_mergeAccs: argument 1"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1360, !"XXH3_mix2Accs: argument 0"}
!1360 = distinct !{!1360, !"XXH3_mix2Accs"}
!1361 = !{!1359, !1354}
!1362 = !{!1363, !1357}
!1363 = distinct !{!1363, !1360, !"XXH3_mix2Accs: argument 1"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1366, !"XXH3_mergeAccs: argument 0"}
!1366 = distinct !{!1366, !"XXH3_mergeAccs"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1366, !"XXH3_mergeAccs: argument 1"}
!1369 = !{!1370}
!1370 = distinct !{!1370, !1371, !"XXH3_mix2Accs: argument 0"}
!1371 = distinct !{!1371, !"XXH3_mix2Accs"}
!1372 = !{!1370, !1365}
!1373 = !{!1374, !1368}
!1374 = distinct !{!1374, !1371, !"XXH3_mix2Accs: argument 1"}
!1375 = distinct !{!1375, !10}
!1376 = distinct !{!1376, !10}
!1377 = !{!1378}
!1378 = distinct !{!1378, !1379, !"XXH3_mix16B: argument 1"}
!1379 = distinct !{!1379, !"XXH3_mix16B"}
!1380 = distinct !{!1380, !10}
!1381 = !{!1382}
!1382 = distinct !{!1382, !1383, !"XXH3_mix16B: argument 1"}
!1383 = distinct !{!1383, !"XXH3_mix16B"}
!1384 = distinct !{!1384, !10}
!1385 = !{!1386}
!1386 = distinct !{!1386, !1387, !"XXH3_mix16B: argument 1"}
!1387 = distinct !{!1387, !"XXH3_mix16B"}
!1388 = !{!1389}
!1389 = distinct !{!1389, !1390, !"XXH3_mix16B: argument 1"}
!1390 = distinct !{!1390, !"XXH3_mix16B"}
!1391 = distinct !{!1391, !10}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"XXH3_mix16B: argument 1"}
!1394 = distinct !{!1394, !"XXH3_mix16B"}
!1395 = distinct !{!1395, !10}
!1396 = !{!1397}
!1397 = distinct !{!1397, !1398, !"XXH3_mix16B: argument 1"}
!1398 = distinct !{!1398, !"XXH3_mix16B"}
