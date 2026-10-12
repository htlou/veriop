; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/681ea2a/api_mingw_len33/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/681ea2a/api_mingw_len33/wrapper.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %0 to i64
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = icmp sgt i32 %1, 15
  br i1 %7, label %8, label %52

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %6, i64 -16
  %10 = add i32 %2, 606290984
  %11 = add i32 %2, -2048144777
  %12 = add i32 %2, 1640531535
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi ptr [ %0, %8 ], [ %42, %13 ]
  %15 = phi i32 [ %10, %8 ], [ %23, %13 ]
  %16 = phi i32 [ %11, %8 ], [ %29, %13 ]
  %17 = phi i32 [ %2, %8 ], [ %35, %13 ]
  %18 = phi i32 [ %12, %8 ], [ %41, %13 ]
  %19 = load i32, ptr %14, align 4
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %15
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %26, %16
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %17
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %18
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %43 = icmp ugt ptr %42, %9
  br i1 %43, label %44, label %13

44:                                               ; preds = %13
  %45 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 1)
  %46 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 7)
  %47 = add i32 %46, %45
  %48 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 12)
  %49 = add i32 %47, %48
  %50 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 18)
  %51 = add i32 %49, %50
  br label %54

52:                                               ; preds = %3
  %53 = add i32 %2, 374761393
  br label %54

54:                                               ; preds = %52, %44
  %55 = phi i32 [ %51, %44 ], [ %53, %52 ]
  %56 = phi ptr [ %42, %44 ], [ %0, %52 ]
  %57 = add i32 %55, %1
  %58 = getelementptr inbounds i8, ptr %6, i64 -4
  %59 = icmp ugt ptr %56, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %89, %54
  %61 = phi i32 [ %57, %54 ], [ %96, %89 ]
  %62 = phi ptr [ %56, %54 ], [ %97, %89 ]
  %63 = icmp ult ptr %62, %6
  br i1 %63, label %64, label %131

64:                                               ; preds = %60
  %65 = ptrtoint ptr %62 to i64
  %66 = add i64 %4, %5
  %67 = sub i64 %66, %65
  %68 = and i64 %67, 3
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %64, %70
  %71 = phi ptr [ %80, %70 ], [ %62, %64 ]
  %72 = phi i32 [ %79, %70 ], [ %61, %64 ]
  %73 = phi i64 [ %81, %70 ], [ 0, %64 ]
  %74 = load i8, ptr %71, align 1
  %75 = zext i8 %74 to i32
  %76 = mul i32 %75, 374761393
  %77 = add i32 %76, %72
  %78 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 11)
  %79 = mul i32 %78, -1640531535
  %80 = getelementptr inbounds nuw i8, ptr %71, i64 1
  %81 = add i64 %73, 1
  %82 = icmp eq i64 %81, %68
  br i1 %82, label %83, label %70

83:                                               ; preds = %70, %64
  %84 = phi ptr [ %62, %64 ], [ %80, %70 ]
  %85 = phi i32 [ %61, %64 ], [ %79, %70 ]
  %86 = phi i32 [ poison, %64 ], [ %79, %70 ]
  %87 = sub i64 %65, %66
  %88 = icmp ugt i64 %87, -4
  br i1 %88, label %131, label %99

89:                                               ; preds = %54, %89
  %90 = phi ptr [ %97, %89 ], [ %56, %54 ]
  %91 = phi i32 [ %96, %89 ], [ %57, %54 ]
  %92 = load i32, ptr %90, align 4
  %93 = mul i32 %92, -1028477379
  %94 = add i32 %93, %91
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 17)
  %96 = mul i32 %95, 668265263
  %97 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %98 = icmp ugt ptr %97, %58
  br i1 %98, label %60, label %89

99:                                               ; preds = %83, %99
  %100 = phi ptr [ %129, %99 ], [ %84, %83 ]
  %101 = phi i32 [ %128, %99 ], [ %85, %83 ]
  %102 = load i8, ptr %100, align 1
  %103 = zext i8 %102 to i32
  %104 = mul i32 %103, 374761393
  %105 = add i32 %104, %101
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 11)
  %107 = mul i32 %106, -1640531535
  %108 = getelementptr inbounds nuw i8, ptr %100, i64 1
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = mul i32 %110, 374761393
  %112 = add i32 %111, %107
  %113 = tail call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 11)
  %114 = mul i32 %113, -1640531535
  %115 = getelementptr inbounds nuw i8, ptr %100, i64 2
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = mul i32 %117, 374761393
  %119 = add i32 %118, %114
  %120 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 11)
  %121 = mul i32 %120, -1640531535
  %122 = getelementptr inbounds nuw i8, ptr %100, i64 3
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = mul i32 %124, 374761393
  %126 = add i32 %125, %121
  %127 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 11)
  %128 = mul i32 %127, -1640531535
  %129 = getelementptr inbounds nuw i8, ptr %100, i64 4
  %130 = icmp ult ptr %129, %6
  br i1 %130, label %99, label %131

131:                                              ; preds = %83, %99, %60
  %132 = phi i32 [ %61, %60 ], [ %86, %83 ], [ %128, %99 ]
  %133 = lshr i32 %132, 15
  %134 = xor i32 %133, %132
  %135 = mul i32 %134, -2048144777
  %136 = lshr i32 %135, 13
  %137 = xor i32 %136, %135
  %138 = mul i32 %137, -1028477379
  %139 = lshr i32 %138, 16
  %140 = xor i32 %139, %138
  ret i32 %140
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH32_sizeofState() local_unnamed_addr #2 {
  ret i32 56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_resetState(ptr noundef writeonly initializes((0, 20), (24, 32), (48, 52)) %0, i32 noundef %1) local_unnamed_addr #3 {
  store i32 %1, ptr %0, align 8
  %3 = add i32 %1, 606290984
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %4, align 4
  %5 = add i32 %1, -2048144777
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %7, align 4
  %8 = add i32 %1, 1640531535
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %11, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_init(i32 noundef %0) local_unnamed_addr #4 {
  %2 = tail call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #11
  store i32 %0, ptr %2, align 8
  %3 = add i32 %0, 606290984
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %3, ptr %4, align 4
  %5 = add i32 %0, -2048144777
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %5, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %0, ptr %7, align 4
  %8 = add i32 %0, 1640531535
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %11, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, %4
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %10 = load i32, ptr %9, align 8
  %11 = add nsw i32 %10, %2
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr align 1 %1, i64 %4, i1 false)
  %17 = load i32, ptr %9, align 8
  %18 = add nsw i32 %17, %2
  br label %116

19:                                               ; preds = %3
  %20 = icmp eq i32 %10, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %23 = sext i32 %10 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = sub nsw i32 16, %10
  %26 = sext i32 %25 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr align 1 %1, i64 %26, i1 false)
  %27 = load i32, ptr %22, align 4
  %28 = mul i32 %27, -2048144777
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %28
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  store i32 %33, ptr %29, align 4
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, -2048144777
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, %36
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  store i32 %41, ptr %37, align 8
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, -2048144777
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  store i32 %49, ptr %45, align 4
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, -2048144777
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %54 = load i32, ptr %53, align 8
  %55 = add i32 %54, %52
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  store i32 %57, ptr %53, align 8
  %58 = load i32, ptr %9, align 8
  %59 = sub nsw i32 16, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %1, i64 %60
  store i32 0, ptr %9, align 8
  br label %62

62:                                               ; preds = %21, %19
  %63 = phi ptr [ %61, %21 ], [ %1, %19 ]
  %64 = getelementptr inbounds i8, ptr %5, i64 -16
  %65 = icmp ugt ptr %63, %64
  br i1 %65, label %107, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %74 = load i32, ptr %73, align 8
  br label %75

75:                                               ; preds = %75, %66
  %76 = phi ptr [ %63, %66 ], [ %104, %75 ]
  %77 = phi i32 [ %68, %66 ], [ %85, %75 ]
  %78 = phi i32 [ %70, %66 ], [ %91, %75 ]
  %79 = phi i32 [ %72, %66 ], [ %97, %75 ]
  %80 = phi i32 [ %74, %66 ], [ %103, %75 ]
  %81 = load i32, ptr %76, align 4
  %82 = mul i32 %81, -2048144777
  %83 = add i32 %82, %77
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 13)
  %85 = mul i32 %84, -1640531535
  %86 = getelementptr inbounds nuw i8, ptr %76, i64 4
  %87 = load i32, ptr %86, align 4
  %88 = mul i32 %87, -2048144777
  %89 = add i32 %88, %78
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = mul i32 %90, -1640531535
  %92 = getelementptr inbounds nuw i8, ptr %76, i64 8
  %93 = load i32, ptr %92, align 4
  %94 = mul i32 %93, -2048144777
  %95 = add i32 %94, %79
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = getelementptr inbounds nuw i8, ptr %76, i64 12
  %99 = load i32, ptr %98, align 4
  %100 = mul i32 %99, -2048144777
  %101 = add i32 %100, %80
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = getelementptr inbounds nuw i8, ptr %76, i64 16
  %105 = icmp ugt ptr %104, %64
  br i1 %105, label %106, label %75

106:                                              ; preds = %75
  store i32 %85, ptr %67, align 4
  store i32 %91, ptr %69, align 8
  store i32 %97, ptr %71, align 4
  store i32 %103, ptr %73, align 8
  br label %107

107:                                              ; preds = %106, %62
  %108 = phi ptr [ %104, %106 ], [ %63, %62 ]
  %109 = icmp ult ptr %108, %5
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %112 = ptrtoint ptr %5 to i64
  %113 = ptrtoint ptr %108 to i64
  %114 = sub i64 %112, %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %111, ptr nonnull align 1 %108, i64 %114, i1 false)
  %115 = trunc i64 %114 to i32
  br label %116

116:                                              ; preds = %13, %110
  %117 = phi i32 [ %115, %110 ], [ %18, %13 ]
  store i32 %117, ptr %9, align 8
  br label %118

118:                                              ; preds = %116, %107
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32_intermediateDigest(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load i32, ptr %3, align 8
  %5 = sext i32 %4 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  %7 = getelementptr i8, ptr %6, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i64, ptr %8, align 8
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7)
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 12)
  %22 = add i32 %18, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
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
  %34 = getelementptr i8, ptr %6, i64 28
  %35 = icmp slt i32 %4, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %40, %30
  %37 = phi ptr [ %2, %30 ], [ %48, %40 ]
  %38 = phi i32 [ %33, %30 ], [ %47, %40 ]
  %39 = icmp ult ptr %37, %7
  br i1 %39, label %50, label %61

40:                                               ; preds = %30, %40
  %41 = phi i32 [ %47, %40 ], [ %33, %30 ]
  %42 = phi ptr [ %48, %40 ], [ %2, %30 ]
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %41
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %47 = mul i32 %46, 668265263
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %49 = icmp ugt ptr %48, %34
  br i1 %49, label %36, label %40

50:                                               ; preds = %36, %50
  %51 = phi i32 [ %58, %50 ], [ %38, %36 ]
  %52 = phi ptr [ %59, %50 ], [ %37, %36 ]
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = mul i32 %54, 374761393
  %56 = add i32 %55, %51
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 11)
  %58 = mul i32 %57, -1640531535
  %59 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %60 = icmp ult ptr %59, %7
  br i1 %60, label %50, label %61

61:                                               ; preds = %50, %36
  %62 = phi i32 [ %38, %36 ], [ %58, %50 ]
  %63 = lshr i32 %62, 15
  %64 = xor i32 %63, %62
  %65 = mul i32 %64, -2048144777
  %66 = lshr i32 %65, 13
  %67 = xor i32 %66, %65
  %68 = mul i32 %67, -1028477379
  %69 = lshr i32 %68, 16
  %70 = xor i32 %69, %68
  ret i32 %70
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i32 @XXH32_digest(ptr noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load i32, ptr %3, align 8
  %5 = sext i32 %4 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  %7 = getelementptr i8, ptr %6, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i64, ptr %8, align 8
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7)
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 12)
  %22 = add i32 %18, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
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
  %34 = getelementptr i8, ptr %6, i64 28
  %35 = icmp slt i32 %4, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %40, %30
  %37 = phi ptr [ %2, %30 ], [ %48, %40 ]
  %38 = phi i32 [ %33, %30 ], [ %47, %40 ]
  %39 = icmp ult ptr %37, %7
  br i1 %39, label %50, label %61

40:                                               ; preds = %30, %40
  %41 = phi i32 [ %47, %40 ], [ %33, %30 ]
  %42 = phi ptr [ %48, %40 ], [ %2, %30 ]
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %41
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %47 = mul i32 %46, 668265263
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %49 = icmp ugt ptr %48, %34
  br i1 %49, label %36, label %40

50:                                               ; preds = %36, %50
  %51 = phi i32 [ %58, %50 ], [ %38, %36 ]
  %52 = phi ptr [ %59, %50 ], [ %37, %36 ]
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = mul i32 %54, 374761393
  %56 = add i32 %55, %51
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 11)
  %58 = mul i32 %57, -1640531535
  %59 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %60 = icmp ult ptr %59, %7
  br i1 %60, label %50, label %61

61:                                               ; preds = %50, %36
  %62 = phi i32 [ %38, %36 ], [ %58, %50 ]
  %63 = lshr i32 %62, 15
  %64 = xor i32 %63, %62
  %65 = mul i32 %64, -2048144777
  %66 = lshr i32 %65, 13
  %67 = xor i32 %66, %65
  %68 = mul i32 %67, -1028477379
  %69 = lshr i32 %68, 16
  %70 = xor i32 %69, %68
  tail call void @free(ptr noundef %0)
  ret i32 %70
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = mul i32 %5, 374761393
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, -2048144777
  %10 = load i32, ptr %0, align 4
  %11 = mul i32 %10, -2048144777
  %12 = add i32 %1, 606290984
  %13 = add i32 %11, %12
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 13)
  %15 = mul i32 %14, -1640531535
  %16 = add i32 %9, %15
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 13)
  %18 = mul i32 %17, -1640531535
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %20 = add i32 %19, 33
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %22, -2048144777
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %1, -2048144777
  %28 = add i32 %26, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = add i32 %23, %30
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 7)
  %35 = add i32 %20, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, -2048144777
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %1
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = add i32 %38, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 12)
  %49 = add i32 %35, %48
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, -2048144777
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %54 = load i32, ptr %53, align 4
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %1, 1640531535
  %57 = add i32 %55, %56
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = add i32 %52, %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 13)
  %62 = mul i32 %61, -1640531535
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 18)
  %64 = add i32 %49, %63
  %65 = add i32 %6, %64
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 11)
  %67 = mul i32 %66, -1640531535
  %68 = lshr i32 %67, 15
  %69 = xor i32 %68, %67
  %70 = mul i32 %69, -2048144777
  %71 = lshr i32 %70, 13
  %72 = xor i32 %71, %70
  %73 = mul i32 %72, -1028477379
  %74 = lshr i32 %73, 16
  %75 = xor i32 %74, %73
  ret i32 %75
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
