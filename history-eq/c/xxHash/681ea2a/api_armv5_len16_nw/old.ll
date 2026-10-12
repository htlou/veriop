; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/681ea2a/api_armv5_len16_nw/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/681ea2a/api_armv5_len16_nw/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv5e-unknown-linux-gnueabi"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i32 @XXH32(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %0 to i32
  %5 = getelementptr inbounds i8, ptr %0, i32 %1
  %6 = icmp sgt i32 %1, 15
  br i1 %6, label %7, label %59

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i32 -16
  %9 = add i32 %2, 606290984
  %10 = add i32 %2, -2048144777
  %11 = add i32 %2, 1640531535
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi ptr [ %0, %7 ], [ %41, %12 ]
  %14 = phi i32 [ %9, %7 ], [ %22, %12 ]
  %15 = phi i32 [ %10, %7 ], [ %28, %12 ]
  %16 = phi i32 [ %2, %7 ], [ %34, %12 ]
  %17 = phi i32 [ %11, %7 ], [ %40, %12 ]
  %18 = load i32, ptr %13, align 4
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %14
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13)
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr inbounds nuw i8, ptr %13, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %15
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %13, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %16
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = getelementptr inbounds nuw i8, ptr %13, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %17
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr inbounds nuw i8, ptr %13, i32 16
  %42 = icmp ugt ptr %41, %8
  br i1 %42, label %43, label %12

43:                                               ; preds = %12
  %44 = mul i32 %21, 1013904226
  %45 = lshr i32 %22, 31
  %46 = mul i32 %27, 465361024
  %47 = lshr i32 %28, 25
  %48 = mul i32 %33, 2006650880
  %49 = lshr i32 %34, 20
  %50 = mul i32 %39, -423362560
  %51 = lshr i32 %40, 14
  %52 = or disjoint i32 %45, %44
  %53 = add i32 %52, %46
  %54 = add i32 %53, %47
  %55 = add i32 %54, %48
  %56 = add i32 %55, %49
  %57 = add i32 %56, %50
  %58 = add i32 %57, %51
  br label %61

59:                                               ; preds = %3
  %60 = add i32 %2, 374761393
  br label %61

61:                                               ; preds = %59, %43
  %62 = phi i32 [ %58, %43 ], [ %60, %59 ]
  %63 = phi ptr [ %41, %43 ], [ %0, %59 ]
  %64 = add i32 %62, %1
  %65 = getelementptr inbounds i8, ptr %5, i32 -4
  %66 = icmp ugt ptr %63, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %76, %61
  %68 = phi i32 [ %64, %61 ], [ %83, %76 ]
  %69 = phi ptr [ %63, %61 ], [ %84, %76 ]
  %70 = icmp ult ptr %69, %5
  br i1 %70, label %71, label %97

71:                                               ; preds = %67
  %72 = ptrtoint ptr %69 to i32
  %73 = add i32 %1, %4
  %74 = sub i32 %73, %72
  %75 = getelementptr i8, ptr %69, i32 %74
  br label %86

76:                                               ; preds = %61, %76
  %77 = phi ptr [ %84, %76 ], [ %63, %61 ]
  %78 = phi i32 [ %83, %76 ], [ %64, %61 ]
  %79 = load i32, ptr %77, align 4
  %80 = mul i32 %79, -1028477379
  %81 = add i32 %80, %78
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 17)
  %83 = mul i32 %82, 668265263
  %84 = getelementptr inbounds nuw i8, ptr %77, i32 4
  %85 = icmp ugt ptr %84, %65
  br i1 %85, label %67, label %76

86:                                               ; preds = %71, %86
  %87 = phi ptr [ %95, %86 ], [ %69, %71 ]
  %88 = phi i32 [ %94, %86 ], [ %68, %71 ]
  %89 = load i8, ptr %87, align 1
  %90 = zext i8 %89 to i32
  %91 = mul i32 %90, 374761393
  %92 = add i32 %91, %88
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 11)
  %94 = mul i32 %93, -1640531535
  %95 = getelementptr inbounds nuw i8, ptr %87, i32 1
  %96 = icmp eq ptr %95, %75
  br i1 %96, label %97, label %86

97:                                               ; preds = %86, %67
  %98 = phi i32 [ %68, %67 ], [ %94, %86 ]
  %99 = lshr i32 %98, 15
  %100 = xor i32 %99, %98
  %101 = mul i32 %100, -2048144777
  %102 = lshr i32 %101, 13
  %103 = xor i32 %102, %101
  %104 = mul i32 %103, -1028477379
  %105 = lshr i32 %104, 16
  %106 = xor i32 %105, %104
  ret i32 %106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef i32 @XXH32_sizeofState() local_unnamed_addr #1 {
  ret i32 56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local noundef i32 @XXH32_resetState(ptr noundef writeonly initializes((0, 20), (24, 32), (48, 52)) %0, i32 noundef %1) local_unnamed_addr #2 {
  store i32 %1, ptr %0, align 8
  %3 = add i32 %1, 606290984
  %4 = getelementptr inbounds nuw i8, ptr %0, i32 4
  store i32 %3, ptr %4, align 4
  %5 = add i32 %1, -2048144777
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i32 %5, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 12
  store i32 %1, ptr %7, align 4
  %8 = add i32 %1, 1640531535
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store i32 0, ptr %11, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite)
define dso_local noalias noundef ptr @XXH32_init(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call dereferenceable_or_null(56) ptr @malloc(i32 noundef 56) #11
  store i32 %0, ptr %2, align 8
  %3 = add i32 %0, 606290984
  %4 = getelementptr inbounds nuw i8, ptr %2, i32 4
  store i32 %3, ptr %4, align 4
  %5 = add i32 %0, -2048144777
  %6 = getelementptr inbounds nuw i8, ptr %2, i32 8
  store i32 %5, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %2, i32 12
  store i32 %0, ptr %7, align 4
  %8 = add i32 %0, 1640531535
  %9 = getelementptr inbounds nuw i8, ptr %2, i32 16
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %2, i32 24
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i32 48
  store i32 0, ptr %11, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local noundef i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds i8, ptr %1, i32 %2
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, %5
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %10 = load i32, ptr %9, align 8
  %11 = add nsw i32 %10, %2
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %15 = getelementptr inbounds i8, ptr %14, i32 %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %15, ptr align 1 %1, i32 %2, i1 false)
  %16 = load i32, ptr %9, align 8
  %17 = add nsw i32 %16, %2
  br label %111

18:                                               ; preds = %3
  %19 = icmp eq i32 %10, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %22 = getelementptr inbounds i8, ptr %21, i32 %10
  %23 = sub nsw i32 16, %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %22, ptr align 1 %1, i32 %23, i1 false)
  %24 = load i32, ptr %21, align 4
  %25 = mul i32 %24, -2048144777
  %26 = getelementptr inbounds nuw i8, ptr %0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  store i32 %30, ptr %26, align 4
  %31 = getelementptr inbounds nuw i8, ptr %0, i32 36
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, -2048144777
  %34 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, %33
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  store i32 %38, ptr %34, align 8
  %39 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, -2048144777
  %42 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13)
  %46 = mul i32 %45, -1640531535
  store i32 %46, ptr %42, align 4
  %47 = getelementptr inbounds nuw i8, ptr %0, i32 44
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, -2048144777
  %50 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, %49
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 13)
  %54 = mul i32 %53, -1640531535
  store i32 %54, ptr %50, align 8
  %55 = load i32, ptr %9, align 8
  %56 = sub nsw i32 16, %55
  %57 = getelementptr inbounds i8, ptr %1, i32 %56
  store i32 0, ptr %9, align 8
  br label %58

58:                                               ; preds = %20, %18
  %59 = phi ptr [ %57, %20 ], [ %1, %18 ]
  %60 = getelementptr inbounds i8, ptr %4, i32 -16
  %61 = icmp ugt ptr %59, %60
  br i1 %61, label %103, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %66 = load i32, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %70 = load i32, ptr %69, align 8
  br label %71

71:                                               ; preds = %71, %62
  %72 = phi ptr [ %59, %62 ], [ %100, %71 ]
  %73 = phi i32 [ %64, %62 ], [ %81, %71 ]
  %74 = phi i32 [ %66, %62 ], [ %87, %71 ]
  %75 = phi i32 [ %68, %62 ], [ %93, %71 ]
  %76 = phi i32 [ %70, %62 ], [ %99, %71 ]
  %77 = load i32, ptr %72, align 4
  %78 = mul i32 %77, -2048144777
  %79 = add i32 %78, %73
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 13)
  %81 = mul i32 %80, -1640531535
  %82 = getelementptr inbounds nuw i8, ptr %72, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = mul i32 %83, -2048144777
  %85 = add i32 %84, %74
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 13)
  %87 = mul i32 %86, -1640531535
  %88 = getelementptr inbounds nuw i8, ptr %72, i32 8
  %89 = load i32, ptr %88, align 4
  %90 = mul i32 %89, -2048144777
  %91 = add i32 %90, %75
  %92 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 13)
  %93 = mul i32 %92, -1640531535
  %94 = getelementptr inbounds nuw i8, ptr %72, i32 12
  %95 = load i32, ptr %94, align 4
  %96 = mul i32 %95, -2048144777
  %97 = add i32 %96, %76
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13)
  %99 = mul i32 %98, -1640531535
  %100 = getelementptr inbounds nuw i8, ptr %72, i32 16
  %101 = icmp ugt ptr %100, %60
  br i1 %101, label %102, label %71

102:                                              ; preds = %71
  store i32 %81, ptr %63, align 4
  store i32 %87, ptr %65, align 8
  store i32 %93, ptr %67, align 4
  store i32 %99, ptr %69, align 8
  br label %103

103:                                              ; preds = %102, %58
  %104 = phi ptr [ %100, %102 ], [ %59, %58 ]
  %105 = icmp ult ptr %104, %4
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %108 = ptrtoint ptr %4 to i32
  %109 = ptrtoint ptr %104 to i32
  %110 = sub i32 %108, %109
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %107, ptr nonnull align 1 %104, i32 %110, i1 false)
  br label %111

111:                                              ; preds = %13, %106
  %112 = phi i32 [ %110, %106 ], [ %17, %13 ]
  store i32 %112, ptr %9, align 8
  br label %113

113:                                              ; preds = %111, %103
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly, ptr noalias readonly, i32, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i32 @XXH32_intermediateDigest(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i32
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %4 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %9 = load i64, ptr %8, align 8
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %15 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7)
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 12)
  %22 = add i32 %18, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 18)
  %26 = add i32 %22, %25
  br label %30

27:                                               ; preds = %1
  %28 = load i32, ptr %0, align 8
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %27, %11
  %31 = phi i32 [ %26, %11 ], [ %29, %27 ]
  %32 = trunc i64 %9 to i32
  %33 = add i32 %31, %32
  %34 = getelementptr i8, ptr %6, i32 28
  %35 = icmp slt i32 %5, 4
  br i1 %35, label %36, label %46

36:                                               ; preds = %46, %30
  %37 = phi ptr [ %3, %30 ], [ %54, %46 ]
  %38 = phi i32 [ %33, %30 ], [ %53, %46 ]
  %39 = icmp ult ptr %37, %7
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = ptrtoint ptr %37 to i32
  %42 = add i32 %5, %2
  %43 = add i32 %42, 32
  %44 = sub i32 %43, %41
  %45 = getelementptr i8, ptr %37, i32 %44
  br label %56

46:                                               ; preds = %30, %46
  %47 = phi i32 [ %53, %46 ], [ %33, %30 ]
  %48 = phi ptr [ %54, %46 ], [ %3, %30 ]
  %49 = load i32, ptr %48, align 4
  %50 = mul i32 %49, -1028477379
  %51 = add i32 %50, %47
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 17)
  %53 = mul i32 %52, 668265263
  %54 = getelementptr inbounds nuw i8, ptr %48, i32 4
  %55 = icmp ugt ptr %54, %34
  br i1 %55, label %36, label %46

56:                                               ; preds = %40, %56
  %57 = phi i32 [ %64, %56 ], [ %38, %40 ]
  %58 = phi ptr [ %65, %56 ], [ %37, %40 ]
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = mul i32 %60, 374761393
  %62 = add i32 %61, %57
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 11)
  %64 = mul i32 %63, -1640531535
  %65 = getelementptr inbounds nuw i8, ptr %58, i32 1
  %66 = icmp eq ptr %65, %45
  br i1 %66, label %67, label %56

67:                                               ; preds = %56, %36
  %68 = phi i32 [ %38, %36 ], [ %64, %56 ]
  %69 = lshr i32 %68, 15
  %70 = xor i32 %69, %68
  %71 = mul i32 %70, -2048144777
  %72 = lshr i32 %71, 13
  %73 = xor i32 %72, %71
  %74 = mul i32 %73, -1028477379
  %75 = lshr i32 %74, 16
  %76 = xor i32 %75, %74
  ret i32 %76
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local i32 @XXH32_digest(ptr noundef %0) local_unnamed_addr #7 {
  %2 = ptrtoint ptr %0 to i32
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %4 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %9 = load i64, ptr %8, align 8
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %15 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7)
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 12)
  %22 = add i32 %18, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 18)
  %26 = add i32 %22, %25
  br label %30

27:                                               ; preds = %1
  %28 = load i32, ptr %0, align 8
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %27, %11
  %31 = phi i32 [ %26, %11 ], [ %29, %27 ]
  %32 = trunc i64 %9 to i32
  %33 = add i32 %31, %32
  %34 = getelementptr i8, ptr %6, i32 28
  %35 = icmp slt i32 %5, 4
  br i1 %35, label %36, label %46

36:                                               ; preds = %46, %30
  %37 = phi ptr [ %3, %30 ], [ %54, %46 ]
  %38 = phi i32 [ %33, %30 ], [ %53, %46 ]
  %39 = icmp ult ptr %37, %7
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = ptrtoint ptr %37 to i32
  %42 = add i32 %2, 32
  %43 = add i32 %42, %5
  %44 = sub i32 %43, %41
  %45 = getelementptr i8, ptr %37, i32 %44
  br label %56

46:                                               ; preds = %30, %46
  %47 = phi i32 [ %53, %46 ], [ %33, %30 ]
  %48 = phi ptr [ %54, %46 ], [ %3, %30 ]
  %49 = load i32, ptr %48, align 4
  %50 = mul i32 %49, -1028477379
  %51 = add i32 %50, %47
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 17)
  %53 = mul i32 %52, 668265263
  %54 = getelementptr inbounds nuw i8, ptr %48, i32 4
  %55 = icmp ugt ptr %54, %34
  br i1 %55, label %36, label %46

56:                                               ; preds = %56, %40
  %57 = phi i32 [ %64, %56 ], [ %38, %40 ]
  %58 = phi ptr [ %65, %56 ], [ %37, %40 ]
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = mul i32 %60, 374761393
  %62 = add i32 %61, %57
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 11)
  %64 = mul i32 %63, -1640531535
  %65 = getelementptr inbounds nuw i8, ptr %58, i32 1
  %66 = icmp eq ptr %65, %45
  br i1 %66, label %67, label %56

67:                                               ; preds = %56, %36
  %68 = phi i32 [ %38, %36 ], [ %64, %56 ]
  %69 = lshr i32 %68, 15
  %70 = xor i32 %69, %68
  %71 = mul i32 %70, -2048144777
  %72 = lshr i32 %71, 13
  %73 = xor i32 %72, %71
  %74 = mul i32 %73, -1028477379
  %75 = lshr i32 %74, 16
  %76 = xor i32 %75, %74
  tail call void @free(ptr noundef %0)
  ret i32 %76
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp ugt ptr %0, inttoptr (i32 -17 to ptr)
  br i1 %3, label %55, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, 606290984
  %6 = add i32 %1, -2048144777
  %7 = add i32 %1, 1640531535
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 4
  %11 = load i32, ptr %0, align 4
  %12 = load i32, ptr %8, align 4
  %13 = mul i32 %12, -2048144777
  %14 = add i32 %7, %13
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 13)
  %16 = mul i32 %15, -1640531535
  %17 = load i32, ptr %9, align 4
  %18 = mul i32 %17, -2048144777
  %19 = add i32 %18, %1
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 13)
  %21 = mul i32 %20, -1640531535
  %22 = load i32, ptr %10, align 4
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %6, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = mul i32 %11, -2048144777
  %28 = add i32 %5, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = mul i32 %29, 1013904226
  %32 = lshr i32 %30, 31
  %33 = mul i32 %25, 465361024
  %34 = lshr i32 %26, 25
  %35 = mul i32 %20, 2006650880
  %36 = lshr i32 %21, 20
  %37 = mul i32 %15, -423362560
  %38 = lshr i32 %16, 14
  %39 = add i32 %31, 16
  %40 = or disjoint i32 %39, %32
  %41 = add i32 %40, %37
  %42 = add i32 %41, %35
  %43 = add i32 %42, %38
  %44 = add i32 %43, %33
  %45 = add i32 %44, %36
  %46 = add i32 %45, %34
  %47 = lshr i32 %46, 15
  %48 = xor i32 %47, %46
  %49 = mul i32 %48, -2048144777
  %50 = lshr i32 %49, 13
  %51 = xor i32 %50, %49
  %52 = mul i32 %51, -1028477379
  %53 = lshr i32 %52, 16
  %54 = xor i32 %53, %52
  br label %55

55:                                               ; preds = %2, %4
  %56 = phi i32 [ %54, %4 ], [ 0, %2 ]
  ret i32 %56
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
