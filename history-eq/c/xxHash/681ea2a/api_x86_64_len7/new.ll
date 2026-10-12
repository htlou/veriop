; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/681ea2a/api_x86_64_len7/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/681ea2a/api_x86_64_len7/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %0 to i64
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = icmp sgt i32 %1, 15
  br i1 %7, label %8, label %60

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
  %45 = mul i32 %22, 1013904226
  %46 = lshr i32 %23, 31
  %47 = mul i32 %28, 465361024
  %48 = lshr i32 %29, 25
  %49 = mul i32 %34, 2006650880
  %50 = lshr i32 %35, 20
  %51 = mul i32 %40, -423362560
  %52 = lshr i32 %41, 14
  %53 = or disjoint i32 %46, %45
  %54 = add i32 %53, %47
  %55 = add i32 %54, %48
  %56 = add i32 %55, %49
  %57 = add i32 %56, %50
  %58 = add i32 %57, %51
  %59 = add i32 %58, %52
  br label %62

60:                                               ; preds = %3
  %61 = add i32 %2, 374761393
  br label %62

62:                                               ; preds = %60, %44
  %63 = phi i32 [ %59, %44 ], [ %61, %60 ]
  %64 = phi ptr [ %42, %44 ], [ %0, %60 ]
  %65 = add i32 %63, %1
  %66 = getelementptr inbounds i8, ptr %6, i64 -4
  %67 = icmp ugt ptr %64, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %97, %62
  %69 = phi i32 [ %65, %62 ], [ %104, %97 ]
  %70 = phi ptr [ %64, %62 ], [ %105, %97 ]
  %71 = icmp ult ptr %70, %6
  br i1 %71, label %72, label %167

72:                                               ; preds = %68
  %73 = ptrtoint ptr %70 to i64
  %74 = add i64 %4, %5
  %75 = sub i64 %74, %73
  %76 = and i64 %75, 7
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %72, %78
  %79 = phi ptr [ %88, %78 ], [ %70, %72 ]
  %80 = phi i32 [ %87, %78 ], [ %69, %72 ]
  %81 = phi i64 [ %89, %78 ], [ 0, %72 ]
  %82 = load i8, ptr %79, align 1
  %83 = zext i8 %82 to i32
  %84 = mul i32 %83, 374761393
  %85 = add i32 %84, %80
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 11)
  %87 = mul i32 %86, -1640531535
  %88 = getelementptr inbounds nuw i8, ptr %79, i64 1
  %89 = add i64 %81, 1
  %90 = icmp eq i64 %89, %76
  br i1 %90, label %91, label %78

91:                                               ; preds = %78, %72
  %92 = phi ptr [ %70, %72 ], [ %88, %78 ]
  %93 = phi i32 [ %69, %72 ], [ %87, %78 ]
  %94 = phi i32 [ poison, %72 ], [ %87, %78 ]
  %95 = sub i64 %73, %74
  %96 = icmp ugt i64 %95, -8
  br i1 %96, label %167, label %107

97:                                               ; preds = %62, %97
  %98 = phi ptr [ %105, %97 ], [ %64, %62 ]
  %99 = phi i32 [ %104, %97 ], [ %65, %62 ]
  %100 = load i32, ptr %98, align 4
  %101 = mul i32 %100, -1028477379
  %102 = add i32 %101, %99
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 17)
  %104 = mul i32 %103, 668265263
  %105 = getelementptr inbounds nuw i8, ptr %98, i64 4
  %106 = icmp ugt ptr %105, %66
  br i1 %106, label %68, label %97

107:                                              ; preds = %91, %107
  %108 = phi ptr [ %165, %107 ], [ %92, %91 ]
  %109 = phi i32 [ %164, %107 ], [ %93, %91 ]
  %110 = load i8, ptr %108, align 1
  %111 = zext i8 %110 to i32
  %112 = mul i32 %111, 374761393
  %113 = add i32 %112, %109
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 11)
  %115 = mul i32 %114, -1640531535
  %116 = getelementptr inbounds nuw i8, ptr %108, i64 1
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = mul i32 %118, 374761393
  %120 = add i32 %119, %115
  %121 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 11)
  %122 = mul i32 %121, -1640531535
  %123 = getelementptr inbounds nuw i8, ptr %108, i64 2
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = mul i32 %125, 374761393
  %127 = add i32 %126, %122
  %128 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 11)
  %129 = mul i32 %128, -1640531535
  %130 = getelementptr inbounds nuw i8, ptr %108, i64 3
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = mul i32 %132, 374761393
  %134 = add i32 %133, %129
  %135 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 11)
  %136 = mul i32 %135, -1640531535
  %137 = getelementptr inbounds nuw i8, ptr %108, i64 4
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = mul i32 %139, 374761393
  %141 = add i32 %140, %136
  %142 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 11)
  %143 = mul i32 %142, -1640531535
  %144 = getelementptr inbounds nuw i8, ptr %108, i64 5
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = mul i32 %146, 374761393
  %148 = add i32 %147, %143
  %149 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 11)
  %150 = mul i32 %149, -1640531535
  %151 = getelementptr inbounds nuw i8, ptr %108, i64 6
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = mul i32 %153, 374761393
  %155 = add i32 %154, %150
  %156 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 11)
  %157 = mul i32 %156, -1640531535
  %158 = getelementptr inbounds nuw i8, ptr %108, i64 7
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = mul i32 %160, 374761393
  %162 = add i32 %161, %157
  %163 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 11)
  %164 = mul i32 %163, -1640531535
  %165 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %166 = icmp ult ptr %165, %6
  br i1 %166, label %107, label %167

167:                                              ; preds = %91, %107, %68
  %168 = phi i32 [ %69, %68 ], [ %94, %91 ], [ %164, %107 ]
  %169 = lshr i32 %168, 15
  %170 = xor i32 %169, %168
  %171 = mul i32 %170, -2048144777
  %172 = lshr i32 %171, 13
  %173 = xor i32 %172, %171
  %174 = mul i32 %173, -1028477379
  %175 = lshr i32 %174, 16
  %176 = xor i32 %175, %174
  ret i32 %176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH32_sizeofState() local_unnamed_addr #1 {
  ret i32 48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_resetState(ptr noundef writeonly initializes((0, 32)) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %3, align 8
  %4 = add i32 %1, 606290984
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %5, align 4
  %6 = add i32 %1, -2048144777
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %1, ptr %8, align 4
  %9 = add i32 %1, 1640531535
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %9, ptr %10, align 8
  store i64 0, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %11, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_init(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #11
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %0, ptr %3, align 8
  %4 = add i32 %0, 606290984
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %4, ptr %5, align 4
  %6 = add i32 %0, -2048144777
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %0, ptr %8, align 4
  %9 = add i32 %0, 1640531535
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %9, ptr %10, align 8
  store i64 0, ptr %2, align 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %11, align 4
  ret ptr %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  %6 = load i64, ptr %0, align 8
  %7 = add i64 %6, %4
  store i64 %7, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %9, %2
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %15, ptr readonly align 1 %1, i64 %4, i1 false)
  %16 = load i32, ptr %8, align 4
  %17 = add nsw i32 %16, %2
  br label %115

18:                                               ; preds = %3
  %19 = icmp eq i32 %9, 0
  br i1 %19, label %61, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  %24 = sub nsw i32 16, %9
  %25 = sext i32 %24 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr readonly align 1 %1, i64 %25, i1 false)
  %26 = load i32, ptr %21, align 4
  %27 = mul i32 %26, -2048144777
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13)
  %32 = mul i32 %31, -1640531535
  store i32 %32, ptr %28, align 4
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %34 = load i32, ptr %33, align 4
  %35 = mul i32 %34, -2048144777
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, %35
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  store i32 %40, ptr %36, align 8
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %42, -2048144777
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 13)
  %48 = mul i32 %47, -1640531535
  store i32 %48, ptr %44, align 4
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %50, -2048144777
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %53 = load i32, ptr %52, align 8
  %54 = add i32 %53, %51
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 13)
  %56 = mul i32 %55, -1640531535
  store i32 %56, ptr %52, align 8
  %57 = load i32, ptr %8, align 4
  %58 = sub nsw i32 16, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %1, i64 %59
  store i32 0, ptr %8, align 4
  br label %61

61:                                               ; preds = %20, %18
  %62 = phi ptr [ %60, %20 ], [ %1, %18 ]
  %63 = getelementptr inbounds i8, ptr %5, i64 -16
  %64 = icmp ugt ptr %62, %63
  br i1 %64, label %106, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %73 = load i32, ptr %72, align 8
  br label %74

74:                                               ; preds = %74, %65
  %75 = phi ptr [ %62, %65 ], [ %103, %74 ]
  %76 = phi i32 [ %67, %65 ], [ %84, %74 ]
  %77 = phi i32 [ %69, %65 ], [ %90, %74 ]
  %78 = phi i32 [ %71, %65 ], [ %96, %74 ]
  %79 = phi i32 [ %73, %65 ], [ %102, %74 ]
  %80 = load i32, ptr %75, align 4
  %81 = mul i32 %80, -2048144777
  %82 = add i32 %81, %76
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %84 = mul i32 %83, -1640531535
  %85 = getelementptr inbounds nuw i8, ptr %75, i64 4
  %86 = load i32, ptr %85, align 4
  %87 = mul i32 %86, -2048144777
  %88 = add i32 %87, %77
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 13)
  %90 = mul i32 %89, -1640531535
  %91 = getelementptr inbounds nuw i8, ptr %75, i64 8
  %92 = load i32, ptr %91, align 4
  %93 = mul i32 %92, -2048144777
  %94 = add i32 %93, %78
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 13)
  %96 = mul i32 %95, -1640531535
  %97 = getelementptr inbounds nuw i8, ptr %75, i64 12
  %98 = load i32, ptr %97, align 4
  %99 = mul i32 %98, -2048144777
  %100 = add i32 %99, %79
  %101 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 13)
  %102 = mul i32 %101, -1640531535
  %103 = getelementptr inbounds nuw i8, ptr %75, i64 16
  %104 = icmp ugt ptr %103, %63
  br i1 %104, label %105, label %74

105:                                              ; preds = %74
  store i32 %84, ptr %66, align 4
  store i32 %90, ptr %68, align 8
  store i32 %96, ptr %70, align 4
  store i32 %102, ptr %72, align 8
  br label %106

106:                                              ; preds = %105, %61
  %107 = phi ptr [ %103, %105 ], [ %62, %61 ]
  %108 = icmp ult ptr %107, %5
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %111 = ptrtoint ptr %5 to i64
  %112 = ptrtoint ptr %107 to i64
  %113 = sub i64 %111, %112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %110, ptr nonnull readonly align 1 %107, i64 %113, i1 false)
  %114 = trunc i64 %113 to i32
  br label %115

115:                                              ; preds = %12, %109
  %116 = phi i32 [ %114, %109 ], [ %17, %12 ]
  store i32 %116, ptr %8, align 4
  br label %117

117:                                              ; preds = %115, %106
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32_intermediateDigest(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %4 = load i32, ptr %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  %7 = getelementptr i8, ptr %6, i64 32
  %8 = load i64, ptr %0, align 8
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = trunc i64 %8 to i32
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
define dso_local i32 @XXH32_digest(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %4 = load i32, ptr %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  %7 = getelementptr i8, ptr %6, i64 32
  %8 = load i64, ptr %0, align 8
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = trunc i64 %8 to i32
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
  tail call void @free(ptr noundef %0) #12
  ret i32 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %4 = add i32 %1, 374761400
  %5 = load i32, ptr %0, align 4
  %6 = mul i32 %5, -1028477379
  %7 = add i32 %4, %6
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = getelementptr i8, ptr %0, i64 4
  %11 = icmp ult ptr %10, %3
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load i8, ptr %10, align 1
  %14 = zext i8 %13 to i32
  %15 = mul i32 %14, 374761393
  %16 = add i32 %15, %9
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 11)
  %18 = mul i32 %17, -1640531535
  %19 = getelementptr i8, ptr %0, i64 5
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = mul i32 %21, 374761393
  %23 = add i32 %22, %18
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 11)
  %25 = mul i32 %24, -1640531535
  %26 = getelementptr i8, ptr %0, i64 6
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = mul i32 %28, 374761393
  %30 = add i32 %29, %25
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 11)
  %32 = mul i32 %31, -1640531535
  br label %33

33:                                               ; preds = %12, %2
  %34 = phi i32 [ %9, %2 ], [ %32, %12 ]
  %35 = lshr i32 %34, 15
  %36 = xor i32 %35, %34
  %37 = mul i32 %36, -2048144777
  %38 = lshr i32 %37, 13
  %39 = xor i32 %38, %37
  %40 = mul i32 %39, -1028477379
  %41 = lshr i32 %40, 16
  %42 = xor i32 %41, %40
  ret i32 %42
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
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
