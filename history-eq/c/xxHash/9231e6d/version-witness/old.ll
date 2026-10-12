; ModuleID = '-'
source_filename = "-"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 604
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
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
  %17 = load i32, ptr %12, align 1
  %18 = mul i32 %17, -2048144777
  %19 = add i32 %18, %13
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 13)
  %21 = mul i32 %20, -1640531535
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %23 = load i32, ptr %22, align 1
  %24 = mul i32 %23, -2048144777
  %25 = add i32 %24, %14
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13)
  %27 = mul i32 %26, -1640531535
  %28 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %15
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %35 = load i32, ptr %34, align 1
  %36 = mul i32 %35, -2048144777
  %37 = add i32 %36, %16
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 13)
  %39 = mul i32 %38, -1640531535
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %41 = icmp ult ptr %40, %7
  br i1 %41, label %11, label %42, !llvm.loop !5

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
  %58 = tail call fastcc i32 @XXH32_finalize(i32 noundef %56, ptr noundef %54, i64 noundef %57)
  ret i32 %58
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #13
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr nocapture noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #14
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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH32_update(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %74, label %6

6:                                                ; preds = %3
  %7 = trunc i64 %2 to i32
  %8 = load i32, ptr %0, align 4, !tbaa !7
  %9 = add i32 %8, %7
  store i32 %9, ptr %0, align 4, !tbaa !7
  %10 = icmp ugt i64 %2, 15
  %11 = icmp ugt i32 %9, 15
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 4, !tbaa !12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i32, ptr %17, align 4, !tbaa !13
  %19 = zext i32 %18 to i64
  %20 = add i64 %2, %19
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %25 = load i32, ptr %17, align 4, !tbaa !13
  %26 = add i32 %25, %7
  br label %72

27:                                               ; preds = %6
  %28 = icmp eq i32 %18, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 %19
  %32 = sub i32 16, %18
  %33 = zext i32 %32 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr nonnull readonly align 1 %1, i64 %33, i1 false)
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load <4 x i32>, ptr %34, align 4, !tbaa !14
  %36 = load <4 x i32>, ptr %30, align 1
  %37 = mul <4 x i32> %36, splat (i32 -2048144777)
  %38 = add <4 x i32> %37, %35
  %39 = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %38, <4 x i32> %38, <4 x i32> splat (i32 13))
  %40 = mul <4 x i32> %39, splat (i32 -1640531535)
  store <4 x i32> %40, ptr %34, align 4, !tbaa !14
  %41 = load i32, ptr %17, align 4, !tbaa !13
  %42 = sub i32 16, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 %43
  store i32 0, ptr %17, align 4, !tbaa !13
  br label %45

45:                                               ; preds = %29, %27
  %46 = phi ptr [ %44, %29 ], [ %1, %27 ]
  %47 = getelementptr inbounds i8, ptr %4, i64 -16
  %48 = icmp ugt ptr %46, %47
  br i1 %48, label %63, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %51 = load <4 x i32>, ptr %50, align 4, !tbaa !14
  br label %52

52:                                               ; preds = %52, %49
  %53 = phi ptr [ %46, %49 ], [ %60, %52 ]
  %54 = phi <4 x i32> [ %51, %49 ], [ %59, %52 ]
  %55 = load <4 x i32>, ptr %53, align 1
  %56 = mul <4 x i32> %55, splat (i32 -2048144777)
  %57 = add <4 x i32> %56, %54
  %58 = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %57, <4 x i32> %57, <4 x i32> splat (i32 13))
  %59 = mul <4 x i32> %58, splat (i32 -1640531535)
  %60 = getelementptr inbounds nuw i8, ptr %53, i64 16
  %61 = icmp ugt ptr %60, %47
  br i1 %61, label %62, label %52, !llvm.loop !15

62:                                               ; preds = %52
  store <4 x i32> %59, ptr %50, align 4, !tbaa !14
  br label %63

63:                                               ; preds = %62, %45
  %64 = phi ptr [ %60, %62 ], [ %46, %45 ]
  %65 = icmp ult ptr %64, %4
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %68 = ptrtoint ptr %4 to i64
  %69 = ptrtoint ptr %64 to i64
  %70 = sub i64 %68, %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %67, ptr nonnull readonly align 1 %64, i64 %70, i1 false)
  %71 = trunc i64 %70 to i32
  br label %72

72:                                               ; preds = %66, %22
  %73 = phi i32 [ %26, %22 ], [ %71, %66 ]
  store i32 %73, ptr %17, align 4, !tbaa !13
  br label %74

74:                                               ; preds = %72, %3, %63
  %75 = phi i32 [ 1, %3 ], [ 0, %63 ], [ 0, %72 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XXH32_digest(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 4, !tbaa !16
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 1)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !17
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 7)
  %12 = add i32 %11, %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i32, ptr %13, align 4, !tbaa !18
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 12)
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %18 = load i32, ptr %17, align 4, !tbaa !19
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 18)
  %20 = add i32 %16, %19
  br label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = load i32, ptr %22, align 4, !tbaa !18
  %24 = add i32 %23, 374761393
  br label %25

25:                                               ; preds = %5, %21
  %26 = phi i32 [ %20, %5 ], [ %24, %21 ]
  %27 = load i32, ptr %0, align 4, !tbaa !7
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i32, ptr %30, align 4, !tbaa !13
  %32 = zext i32 %31 to i64
  %33 = tail call fastcc i32 @XXH32_finalize(i32 noundef %28, ptr noundef nonnull %29, i64 noundef %32)
  ret i32 %33
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
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
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
  br i1 %41, label %42, label %11, !llvm.loop !20

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
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #13
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr nocapture noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #14
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
define dso_local range(i32 0, 2) i32 @XXH64_update(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %68, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %0, align 8, !tbaa !21
  %8 = add i64 %7, %2
  store i64 %8, ptr %0, align 8, !tbaa !21
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !24
  %11 = zext i32 %10 to i64
  %12 = add i64 %2, %11
  %13 = icmp ult i64 %12, 32
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %17 = trunc i64 %2 to i32
  %18 = load i32, ptr %9, align 8, !tbaa !24
  %19 = add i32 %18, %17
  br label %66

20:                                               ; preds = %6
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %11
  %25 = sub i32 32, %10
  %26 = zext i32 %25 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %1, i64 %26, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load <4 x i64>, ptr %27, align 8, !tbaa !25
  %29 = load <4 x i64>, ptr %23, align 1
  %30 = mul <4 x i64> %29, splat (i64 -4417276706812531889)
  %31 = add <4 x i64> %30, %28
  %32 = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %31, <4 x i64> %31, <4 x i64> splat (i64 31))
  %33 = mul <4 x i64> %32, splat (i64 -7046029288634856825)
  store <4 x i64> %33, ptr %27, align 8, !tbaa !25
  %34 = load i32, ptr %9, align 8, !tbaa !24
  %35 = sub i32 32, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %36
  store i32 0, ptr %9, align 8, !tbaa !24
  br label %38

38:                                               ; preds = %22, %20
  %39 = phi ptr [ %37, %22 ], [ %1, %20 ]
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %41 = icmp ugt ptr %40, %4
  br i1 %41, label %57, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %4, i64 -32
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %45 = load <4 x i64>, ptr %44, align 8, !tbaa !25
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
  br i1 %55, label %56, label %46, !llvm.loop !26

56:                                               ; preds = %46
  store <4 x i64> %53, ptr %44, align 8, !tbaa !25
  br label %57

57:                                               ; preds = %56, %38
  %58 = phi ptr [ %54, %56 ], [ %39, %38 ]
  %59 = icmp ult ptr %58, %4
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %62 = ptrtoint ptr %4 to i64
  %63 = ptrtoint ptr %58 to i64
  %64 = sub i64 %62, %63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %61, ptr nonnull readonly align 1 %58, i64 %64, i1 false)
  %65 = trunc i64 %64 to i32
  br label %66

66:                                               ; preds = %60, %14
  %67 = phi i32 [ %19, %14 ], [ %65, %60 ]
  store i32 %67, ptr %9, align 8, !tbaa !24
  br label %68

68:                                               ; preds = %66, %3, %57
  %69 = phi i32 [ 1, %3 ], [ 0, %57 ], [ 0, %66 ]
  ret i32 %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i64, ptr %0, align 8, !tbaa !21
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !27
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !28
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load i64, ptr %9, align 8, !tbaa !29
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load i64, ptr %11, align 8, !tbaa !30
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
  %46 = load i64, ptr %45, align 8, !tbaa !29
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %4, %44
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = tail call fastcc i64 @XXH64_finalize(i64 noundef %50, ptr noundef nonnull %51, i64 noundef %2)
  ret i64 %52
}

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
  %54 = load i8, ptr %51, align 1, !tbaa !31
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
  %85 = load i8, ptr %82, align 1, !tbaa !31
  %86 = zext i8 %85 to i32
  %87 = mul i32 %86, 374761393
  %88 = add i32 %84, %87
  %89 = getelementptr inbounds nuw i8, ptr %78, i64 5
  %90 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 11)
  %91 = mul i32 %90, -1640531535
  %92 = load i8, ptr %89, align 1, !tbaa !31
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
  %126 = load i8, ptr %125, align 1, !tbaa !31
  %127 = zext i8 %126 to i32
  %128 = mul i32 %127, 374761393
  %129 = add i32 %128, %124
  %130 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %131 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 11)
  %132 = mul i32 %131, -1640531535
  br label %133

133:                                              ; preds = %3, %123
  %134 = phi i32 [ %0, %3 ], [ %132, %123 ]
  %135 = phi ptr [ %1, %3 ], [ %130, %123 ]
  %136 = load i8, ptr %135, align 1, !tbaa !31
  %137 = zext i8 %136 to i32
  %138 = mul i32 %137, 374761393
  %139 = add i32 %138, %134
  %140 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %141 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 11)
  %142 = mul i32 %141, -1640531535
  br label %143

143:                                              ; preds = %3, %133
  %144 = phi i32 [ %0, %3 ], [ %142, %133 ]
  %145 = phi ptr [ %1, %3 ], [ %140, %133 ]
  %146 = load i8, ptr %145, align 1, !tbaa !31
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

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH64_finalize(i64 noundef %0, ptr noundef readonly %1, i64 noundef %2) unnamed_addr #9 {
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
  %116 = load i8, ptr %111, align 1, !tbaa !31
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
  %167 = load i8, ptr %163, align 1, !tbaa !31
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
  %207 = load i8, ptr %202, align 1, !tbaa !31
  %208 = zext i8 %207 to i64
  %209 = mul i64 %208, 2870177450012600261
  %210 = xor i64 %206, %209
  %211 = getelementptr inbounds nuw i8, ptr %196, i64 9
  %212 = tail call i64 @llvm.fshl.i64(i64 %210, i64 %210, i64 11)
  %213 = mul i64 %212, -7046029288634856825
  %214 = load i8, ptr %211, align 1, !tbaa !31
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
  %265 = load i8, ptr %261, align 1, !tbaa !31
  %266 = zext i8 %265 to i64
  %267 = mul i64 %266, 2870177450012600261
  %268 = xor i64 %264, %267
  %269 = getelementptr inbounds nuw i8, ptr %255, i64 5
  %270 = tail call i64 @llvm.fshl.i64(i64 %268, i64 %268, i64 11)
  %271 = mul i64 %270, -7046029288634856825
  %272 = load i8, ptr %269, align 1, !tbaa !31
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
  %312 = load i8, ptr %307, align 1, !tbaa !31
  %313 = zext i8 %312 to i64
  %314 = mul i64 %313, 2870177450012600261
  %315 = xor i64 %311, %314
  %316 = getelementptr inbounds nuw i8, ptr %301, i64 9
  %317 = tail call i64 @llvm.fshl.i64(i64 %315, i64 %315, i64 11)
  %318 = mul i64 %317, -7046029288634856825
  %319 = load i8, ptr %316, align 1, !tbaa !31
  %320 = zext i8 %319 to i64
  %321 = mul i64 %320, 2870177450012600261
  %322 = xor i64 %318, %321
  %323 = getelementptr inbounds nuw i8, ptr %301, i64 10
  %324 = tail call i64 @llvm.fshl.i64(i64 %322, i64 %322, i64 11)
  %325 = mul i64 %324, -7046029288634856825
  %326 = load i8, ptr %323, align 1, !tbaa !31
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
  %380 = load i8, ptr %378, align 1, !tbaa !31
  %381 = zext i8 %380 to i64
  %382 = mul i64 %381, 2870177450012600261
  %383 = xor i64 %382, %379
  %384 = getelementptr inbounds nuw i8, ptr %378, i64 1
  %385 = tail call i64 @llvm.fshl.i64(i64 %383, i64 %383, i64 11)
  %386 = mul i64 %385, -7046029288634856825
  br label %387

387:                                              ; preds = %3, %377
  %388 = phi ptr [ %1, %3 ], [ %384, %377 ]
  %389 = phi i64 [ %0, %3 ], [ %386, %377 ]
  %390 = load i8, ptr %388, align 1, !tbaa !31
  %391 = zext i8 %390 to i64
  %392 = mul i64 %391, 2870177450012600261
  %393 = xor i64 %392, %389
  %394 = getelementptr inbounds nuw i8, ptr %388, i64 1
  %395 = tail call i64 @llvm.fshl.i64(i64 %393, i64 %393, i64 11)
  %396 = mul i64 %395, -7046029288634856825
  br label %397

397:                                              ; preds = %3, %387
  %398 = phi ptr [ %1, %3 ], [ %394, %387 ]
  %399 = phi i64 [ %0, %3 ], [ %396, %387 ]
  %400 = load i8, ptr %398, align 1, !tbaa !31
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.fshl.v4i64(<4 x i64>, <4 x i64>, <4 x i64>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !9, i64 0}
!8 = !{!"XXH32_state_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !10, i64 24, !9, i64 40, !9, i64 44}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!8, !9, i64 4}
!13 = !{!8, !9, i64 40}
!14 = !{!9, !9, i64 0}
!15 = distinct !{!15, !6}
!16 = !{!8, !9, i64 8}
!17 = !{!8, !9, i64 12}
!18 = !{!8, !9, i64 16}
!19 = !{!8, !9, i64 20}
!20 = distinct !{!20, !6}
!21 = !{!22, !23, i64 0}
!22 = !{!"XXH64_state_s", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !10, i64 40, !9, i64 72, !10, i64 76}
!23 = !{!"long long", !10, i64 0}
!24 = !{!22, !9, i64 72}
!25 = !{!23, !23, i64 0}
!26 = distinct !{!26, !6}
!27 = !{!22, !23, i64 8}
!28 = !{!22, !23, i64 16}
!29 = !{!22, !23, i64 24}
!30 = !{!22, !23, i64 32}
!31 = !{!10, !10, i64 0}
