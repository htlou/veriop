; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/70e65c9/api_len15/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/70e65c9/api_len15/wrapper.c"
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_init(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #9
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
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %131, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i64, ptr %8, align 8
  %10 = add i64 %9, %4
  store i64 %10, ptr %8, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %12 = load i32, ptr %11, align 8
  %13 = add nsw i32 %12, %2
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds i8, ptr %16, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr nonnull align 1 %1, i64 %4, i1 false)
  %19 = load i32, ptr %11, align 8
  %20 = add nsw i32 %19, %2
  br label %129

21:                                               ; preds = %7
  %22 = icmp eq i32 %12, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %31 = load i32, ptr %30, align 8
  br label %73

32:                                               ; preds = %21
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %34 = sext i32 %12 to i64
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  %36 = sub nsw i32 16, %12
  %37 = sext i32 %36 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr nonnull align 1 %1, i64 %37, i1 false)
  %38 = load i32, ptr %33, align 4
  %39 = mul i32 %38, -2048144777
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  store i32 %44, ptr %40, align 4
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, -2048144777
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, %47
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  store i32 %52, ptr %48, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = load i32, ptr %53, align 4
  %55 = mul i32 %54, -2048144777
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %55
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13)
  %60 = mul i32 %59, -1640531535
  store i32 %60, ptr %56, align 4
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %62 = load i32, ptr %61, align 4
  %63 = mul i32 %62, -2048144777
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %65 = load i32, ptr %64, align 8
  %66 = add i32 %65, %63
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 13)
  %68 = mul i32 %67, -1640531535
  store i32 %68, ptr %64, align 8
  %69 = load i32, ptr %11, align 8
  %70 = sub nsw i32 16, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %1, i64 %71
  store i32 0, ptr %11, align 8
  br label %73

73:                                               ; preds = %23, %32
  %74 = phi i32 [ %68, %32 ], [ %31, %23 ]
  %75 = phi i32 [ %60, %32 ], [ %29, %23 ]
  %76 = phi i32 [ %52, %32 ], [ %27, %23 ]
  %77 = phi i32 [ %44, %32 ], [ %25, %23 ]
  %78 = phi ptr [ %72, %32 ], [ %1, %23 ]
  %79 = getelementptr inbounds i8, ptr %5, i64 -16
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %84 = icmp ugt ptr %78, %79
  br i1 %84, label %116, label %85

85:                                               ; preds = %73, %85
  %86 = phi i32 [ %113, %85 ], [ %74, %73 ]
  %87 = phi i32 [ %107, %85 ], [ %75, %73 ]
  %88 = phi i32 [ %101, %85 ], [ %76, %73 ]
  %89 = phi i32 [ %95, %85 ], [ %77, %73 ]
  %90 = phi ptr [ %114, %85 ], [ %78, %73 ]
  %91 = load i32, ptr %90, align 4
  %92 = mul i32 %91, -2048144777
  %93 = add i32 %92, %89
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 13)
  %95 = mul i32 %94, -1640531535
  %96 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %97 = load i32, ptr %96, align 4
  %98 = mul i32 %97, -2048144777
  %99 = add i32 %98, %88
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 13)
  %101 = mul i32 %100, -1640531535
  %102 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %103 = load i32, ptr %102, align 4
  %104 = mul i32 %103, -2048144777
  %105 = add i32 %104, %87
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 13)
  %107 = mul i32 %106, -1640531535
  %108 = getelementptr inbounds nuw i8, ptr %90, i64 12
  %109 = load i32, ptr %108, align 4
  %110 = mul i32 %109, -2048144777
  %111 = add i32 %110, %86
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 13)
  %113 = mul i32 %112, -1640531535
  %114 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %115 = icmp ugt ptr %114, %79
  br i1 %115, label %116, label %85

116:                                              ; preds = %85, %73
  %117 = phi ptr [ %78, %73 ], [ %114, %85 ]
  %118 = phi i32 [ %77, %73 ], [ %95, %85 ]
  %119 = phi i32 [ %76, %73 ], [ %101, %85 ]
  %120 = phi i32 [ %75, %73 ], [ %107, %85 ]
  %121 = phi i32 [ %74, %73 ], [ %113, %85 ]
  store i32 %118, ptr %80, align 4
  store i32 %119, ptr %81, align 8
  store i32 %120, ptr %82, align 4
  store i32 %121, ptr %83, align 8
  %122 = icmp ult ptr %117, %5
  br i1 %122, label %123, label %131

123:                                              ; preds = %116
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %125 = ptrtoint ptr %5 to i64
  %126 = ptrtoint ptr %117 to i64
  %127 = sub i64 %125, %126
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %124, ptr nonnull align 1 %117, i64 %127, i1 false)
  %128 = trunc i64 %127 to i32
  br label %129

129:                                              ; preds = %15, %123
  %130 = phi i32 [ %128, %123 ], [ %20, %15 ]
  store i32 %130, ptr %11, align 8
  br label %131

131:                                              ; preds = %129, %116, %3
  %132 = phi i32 [ 1, %3 ], [ 0, %116 ], [ 0, %129 ]
  ret i32 %132
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #4

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
define dso_local i32 @XXH32_digest(ptr noundef %0) local_unnamed_addr #5 {
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
  tail call void @free(ptr noundef %0) #10
  ret i32 %70
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = mul i32 %5, 374761393
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = mul i32 %9, 374761393
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = mul i32 %13, 374761393
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, -1028477379
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %19, -1028477379
  %21 = load i32, ptr %0, align 4
  %22 = mul i32 %21, -1028477379
  %23 = add i32 %1, 374761408
  %24 = add i32 %22, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 17)
  %26 = mul i32 %25, 668265263
  %27 = add i32 %20, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = add i32 %17, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = add i32 %14, %32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 11)
  %35 = mul i32 %34, -1640531535
  %36 = add i32 %10, %35
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 11)
  %38 = mul i32 %37, -1640531535
  %39 = add i32 %6, %38
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 11)
  %41 = mul i32 %40, -1640531535
  %42 = lshr i32 %41, 15
  %43 = xor i32 %42, %41
  %44 = mul i32 %43, -2048144777
  %45 = lshr i32 %44, 13
  %46 = xor i32 %45, %44
  %47 = mul i32 %46, -1028477379
  %48 = lshr i32 %47, 16
  %49 = xor i32 %48, %47
  ret i32 %49
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

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
