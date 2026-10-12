; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/681ea2a/api_armv5_len47/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/681ea2a/api_armv5_len47/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv5e-unknown-linux-gnueabi"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i32 @XXH32(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i32 %1
  %5 = ptrtoint ptr %0 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  %8 = icmp sgt i32 %1, 15
  br i1 %7, label %9, label %100

9:                                                ; preds = %3
  br i1 %8, label %10, label %62

10:                                               ; preds = %9
  %11 = getelementptr inbounds i8, ptr %4, i32 -16
  %12 = add i32 %2, 606290984
  %13 = add i32 %2, -2048144777
  %14 = add i32 %2, 1640531535
  br label %15

15:                                               ; preds = %15, %10
  %16 = phi ptr [ %0, %10 ], [ %44, %15 ]
  %17 = phi i32 [ %12, %10 ], [ %25, %15 ]
  %18 = phi i32 [ %13, %10 ], [ %31, %15 ]
  %19 = phi i32 [ %2, %10 ], [ %37, %15 ]
  %20 = phi i32 [ %14, %10 ], [ %43, %15 ]
  %21 = load i32, ptr %16, align 4
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %17
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = getelementptr inbounds nuw i8, ptr %16, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %18
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = getelementptr inbounds nuw i8, ptr %16, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %19
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = getelementptr inbounds nuw i8, ptr %16, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, -2048144777
  %41 = add i32 %40, %20
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 13)
  %43 = mul i32 %42, -1640531535
  %44 = getelementptr inbounds nuw i8, ptr %16, i32 16
  %45 = icmp ugt ptr %44, %11
  br i1 %45, label %46, label %15

46:                                               ; preds = %15
  %47 = mul i32 %24, 1013904226
  %48 = lshr i32 %25, 31
  %49 = mul i32 %30, 465361024
  %50 = lshr i32 %31, 25
  %51 = mul i32 %36, 2006650880
  %52 = lshr i32 %37, 20
  %53 = mul i32 %42, -423362560
  %54 = lshr i32 %43, 14
  %55 = or disjoint i32 %48, %47
  %56 = add i32 %55, %49
  %57 = add i32 %56, %50
  %58 = add i32 %57, %51
  %59 = add i32 %58, %52
  %60 = add i32 %59, %53
  %61 = add i32 %60, %54
  br label %64

62:                                               ; preds = %9
  %63 = add i32 %2, 374761393
  br label %64

64:                                               ; preds = %62, %46
  %65 = phi i32 [ %61, %46 ], [ %63, %62 ]
  %66 = phi ptr [ %44, %46 ], [ %0, %62 ]
  %67 = add i32 %65, %1
  %68 = getelementptr inbounds i8, ptr %4, i32 -4
  %69 = icmp ugt ptr %66, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %79, %64
  %71 = phi i32 [ %67, %64 ], [ %86, %79 ]
  %72 = phi ptr [ %66, %64 ], [ %87, %79 ]
  %73 = icmp ult ptr %72, %4
  br i1 %73, label %74, label %191

74:                                               ; preds = %70
  %75 = ptrtoint ptr %72 to i32
  %76 = add i32 %1, %5
  %77 = sub i32 %76, %75
  %78 = getelementptr i8, ptr %72, i32 %77
  br label %89

79:                                               ; preds = %64, %79
  %80 = phi ptr [ %87, %79 ], [ %66, %64 ]
  %81 = phi i32 [ %86, %79 ], [ %67, %64 ]
  %82 = load i32, ptr %80, align 4
  %83 = mul i32 %82, -1028477379
  %84 = add i32 %83, %81
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 17)
  %86 = mul i32 %85, 668265263
  %87 = getelementptr inbounds nuw i8, ptr %80, i32 4
  %88 = icmp ugt ptr %87, %68
  br i1 %88, label %70, label %79

89:                                               ; preds = %89, %74
  %90 = phi ptr [ %98, %89 ], [ %72, %74 ]
  %91 = phi i32 [ %97, %89 ], [ %71, %74 ]
  %92 = load i8, ptr %90, align 1
  %93 = zext i8 %92 to i32
  %94 = mul i32 %93, 374761393
  %95 = add i32 %94, %91
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 11)
  %97 = mul i32 %96, -1640531535
  %98 = getelementptr inbounds nuw i8, ptr %90, i32 1
  %99 = icmp eq ptr %98, %78
  br i1 %99, label %191, label %89

100:                                              ; preds = %3
  br i1 %8, label %101, label %153

101:                                              ; preds = %100
  %102 = getelementptr inbounds i8, ptr %4, i32 -16
  %103 = add i32 %2, 606290984
  %104 = add i32 %2, -2048144777
  %105 = add i32 %2, 1640531535
  br label %106

106:                                              ; preds = %106, %101
  %107 = phi ptr [ %0, %101 ], [ %135, %106 ]
  %108 = phi i32 [ %103, %101 ], [ %116, %106 ]
  %109 = phi i32 [ %104, %101 ], [ %122, %106 ]
  %110 = phi i32 [ %2, %101 ], [ %128, %106 ]
  %111 = phi i32 [ %105, %101 ], [ %134, %106 ]
  %112 = load i32, ptr %107, align 1
  %113 = mul i32 %112, -2048144777
  %114 = add i32 %113, %108
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 13)
  %116 = mul i32 %115, -1640531535
  %117 = getelementptr inbounds nuw i8, ptr %107, i32 4
  %118 = load i32, ptr %117, align 1
  %119 = mul i32 %118, -2048144777
  %120 = add i32 %119, %109
  %121 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 13)
  %122 = mul i32 %121, -1640531535
  %123 = getelementptr inbounds nuw i8, ptr %107, i32 8
  %124 = load i32, ptr %123, align 1
  %125 = mul i32 %124, -2048144777
  %126 = add i32 %125, %110
  %127 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 13)
  %128 = mul i32 %127, -1640531535
  %129 = getelementptr inbounds nuw i8, ptr %107, i32 12
  %130 = load i32, ptr %129, align 1
  %131 = mul i32 %130, -2048144777
  %132 = add i32 %131, %111
  %133 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 13)
  %134 = mul i32 %133, -1640531535
  %135 = getelementptr inbounds nuw i8, ptr %107, i32 16
  %136 = icmp ugt ptr %135, %102
  br i1 %136, label %137, label %106

137:                                              ; preds = %106
  %138 = mul i32 %115, 1013904226
  %139 = lshr i32 %116, 31
  %140 = mul i32 %121, 465361024
  %141 = lshr i32 %122, 25
  %142 = mul i32 %127, 2006650880
  %143 = lshr i32 %128, 20
  %144 = mul i32 %133, -423362560
  %145 = lshr i32 %134, 14
  %146 = or disjoint i32 %139, %138
  %147 = add i32 %146, %140
  %148 = add i32 %147, %141
  %149 = add i32 %148, %142
  %150 = add i32 %149, %143
  %151 = add i32 %150, %144
  %152 = add i32 %151, %145
  br label %155

153:                                              ; preds = %100
  %154 = add i32 %2, 374761393
  br label %155

155:                                              ; preds = %153, %137
  %156 = phi ptr [ %135, %137 ], [ %0, %153 ]
  %157 = phi i32 [ %152, %137 ], [ %154, %153 ]
  %158 = add i32 %157, %1
  %159 = getelementptr inbounds i8, ptr %4, i32 -4
  %160 = icmp ugt ptr %156, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %170, %155
  %162 = phi ptr [ %156, %155 ], [ %178, %170 ]
  %163 = phi i32 [ %158, %155 ], [ %177, %170 ]
  %164 = icmp ult ptr %162, %4
  br i1 %164, label %165, label %191

165:                                              ; preds = %161
  %166 = ptrtoint ptr %162 to i32
  %167 = add i32 %1, %5
  %168 = sub i32 %167, %166
  %169 = getelementptr i8, ptr %162, i32 %168
  br label %180

170:                                              ; preds = %155, %170
  %171 = phi i32 [ %177, %170 ], [ %158, %155 ]
  %172 = phi ptr [ %178, %170 ], [ %156, %155 ]
  %173 = load i32, ptr %172, align 1
  %174 = mul i32 %173, -1028477379
  %175 = add i32 %174, %171
  %176 = tail call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 17)
  %177 = mul i32 %176, 668265263
  %178 = getelementptr inbounds nuw i8, ptr %172, i32 4
  %179 = icmp ugt ptr %178, %159
  br i1 %179, label %161, label %170

180:                                              ; preds = %165, %180
  %181 = phi i32 [ %188, %180 ], [ %163, %165 ]
  %182 = phi ptr [ %189, %180 ], [ %162, %165 ]
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = mul i32 %184, 374761393
  %186 = add i32 %185, %181
  %187 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 11)
  %188 = mul i32 %187, -1640531535
  %189 = getelementptr inbounds nuw i8, ptr %182, i32 1
  %190 = icmp eq ptr %189, %169
  br i1 %190, label %191, label %180

191:                                              ; preds = %180, %89, %161, %70
  %192 = phi i32 [ %71, %70 ], [ %163, %161 ], [ %97, %89 ], [ %188, %180 ]
  %193 = lshr i32 %192, 15
  %194 = xor i32 %193, %192
  %195 = mul i32 %194, -2048144777
  %196 = lshr i32 %195, 13
  %197 = xor i32 %196, %195
  %198 = mul i32 %197, -1028477379
  %199 = lshr i32 %198, 16
  %200 = xor i32 %199, %198
  ret i32 %200
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef i32 @XXH32_sizeofState() local_unnamed_addr #1 {
  ret i32 48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local noundef i32 @XXH32_resetState(ptr noundef writeonly initializes((0, 32)) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i32 %1, ptr %3, align 8
  %4 = add i32 %1, 606290984
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 12
  store i32 %4, ptr %5, align 4
  %6 = add i32 %1, -2048144777
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 20
  store i32 %1, ptr %8, align 4
  %9 = add i32 %1, 1640531535
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i32 %9, ptr %10, align 8
  store i64 0, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 28
  store i32 0, ptr %11, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite)
define dso_local noalias noundef ptr @XXH32_init(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i32 noundef 48) #11
  %3 = getelementptr inbounds nuw i8, ptr %2, i32 8
  store i32 %0, ptr %3, align 8
  %4 = add i32 %0, 606290984
  %5 = getelementptr inbounds nuw i8, ptr %2, i32 12
  store i32 %4, ptr %5, align 4
  %6 = add i32 %0, -2048144777
  %7 = getelementptr inbounds nuw i8, ptr %2, i32 16
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %2, i32 20
  store i32 %0, ptr %8, align 4
  %9 = add i32 %0, 1640531535
  %10 = getelementptr inbounds nuw i8, ptr %2, i32 24
  store i32 %9, ptr %10, align 8
  store i64 0, ptr %2, align 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i32 28
  store i32 0, ptr %11, align 4
  ret ptr %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local noundef i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds i8, ptr %1, i32 %2
  %5 = sext i32 %2 to i64
  %6 = load i64, ptr %0, align 8
  %7 = add i64 %6, %5
  store i64 %7, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %9, %2
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %14 = getelementptr inbounds i8, ptr %13, i32 %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %14, ptr readonly align 1 %1, i32 %2, i1 false)
  %15 = load i32, ptr %8, align 4
  %16 = add nsw i32 %15, %2
  br label %110

17:                                               ; preds = %3
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %57, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %21 = getelementptr inbounds i8, ptr %20, i32 %9
  %22 = sub nsw i32 16, %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %21, ptr readonly align 1 %1, i32 %22, i1 false)
  %23 = load i32, ptr %20, align 1
  %24 = mul i32 %23, -2048144777
  %25 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  store i32 %29, ptr %25, align 4
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 36
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, %32
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  store i32 %37, ptr %33, align 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %39 = load i32, ptr %38, align 1
  %40 = mul i32 %39, -2048144777
  %41 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %40
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  store i32 %45, ptr %41, align 4
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 44
  %47 = load i32, ptr %46, align 1
  %48 = mul i32 %47, -2048144777
  %49 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, %48
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13)
  %53 = mul i32 %52, -1640531535
  store i32 %53, ptr %49, align 8
  %54 = load i32, ptr %8, align 4
  %55 = sub nsw i32 16, %54
  %56 = getelementptr inbounds i8, ptr %1, i32 %55
  store i32 0, ptr %8, align 4
  br label %57

57:                                               ; preds = %19, %17
  %58 = phi ptr [ %56, %19 ], [ %1, %17 ]
  %59 = getelementptr inbounds i8, ptr %4, i32 -16
  %60 = icmp ugt ptr %58, %59
  br i1 %60, label %102, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %69 = load i32, ptr %68, align 8
  br label %70

70:                                               ; preds = %70, %61
  %71 = phi ptr [ %58, %61 ], [ %99, %70 ]
  %72 = phi i32 [ %63, %61 ], [ %80, %70 ]
  %73 = phi i32 [ %65, %61 ], [ %86, %70 ]
  %74 = phi i32 [ %67, %61 ], [ %92, %70 ]
  %75 = phi i32 [ %69, %61 ], [ %98, %70 ]
  %76 = load i32, ptr %71, align 1
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %72
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = getelementptr inbounds nuw i8, ptr %71, i32 4
  %82 = load i32, ptr %81, align 1
  %83 = mul i32 %82, -2048144777
  %84 = add i32 %83, %73
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 13)
  %86 = mul i32 %85, -1640531535
  %87 = getelementptr inbounds nuw i8, ptr %71, i32 8
  %88 = load i32, ptr %87, align 1
  %89 = mul i32 %88, -2048144777
  %90 = add i32 %89, %74
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 13)
  %92 = mul i32 %91, -1640531535
  %93 = getelementptr inbounds nuw i8, ptr %71, i32 12
  %94 = load i32, ptr %93, align 1
  %95 = mul i32 %94, -2048144777
  %96 = add i32 %95, %75
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 13)
  %98 = mul i32 %97, -1640531535
  %99 = getelementptr inbounds nuw i8, ptr %71, i32 16
  %100 = icmp ugt ptr %99, %59
  br i1 %100, label %101, label %70

101:                                              ; preds = %70
  store i32 %80, ptr %62, align 4
  store i32 %86, ptr %64, align 8
  store i32 %92, ptr %66, align 4
  store i32 %98, ptr %68, align 8
  br label %102

102:                                              ; preds = %101, %57
  %103 = phi ptr [ %99, %101 ], [ %58, %57 ]
  %104 = icmp ult ptr %103, %4
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %107 = ptrtoint ptr %4 to i32
  %108 = ptrtoint ptr %103 to i32
  %109 = sub i32 %107, %108
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %106, ptr nonnull readonly align 1 %103, i32 %109, i1 false)
  br label %110

110:                                              ; preds = %12, %105
  %111 = phi i32 [ %109, %105 ], [ %16, %12 ]
  store i32 %111, ptr %8, align 4
  br label %112

112:                                              ; preds = %110, %102
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i32 @XXH32_intermediateDigest(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i32
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %4 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = load i64, ptr %0, align 8
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = trunc i64 %8 to i32
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
  %49 = load i32, ptr %48, align 1
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
define dso_local i32 @XXH32_digest(ptr noundef %0) local_unnamed_addr #5 {
  %2 = ptrtoint ptr %0 to i32
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %4 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = load i64, ptr %0, align 8
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = trunc i64 %8 to i32
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
  %49 = load i32, ptr %48, align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i32 @target_xxh32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, 3
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %7 = add i32 %1, 606290984
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 4
  %10 = add i32 %1, -2048144777
  br i1 %5, label %11, label %78

11:                                               ; preds = %2
  %12 = load i32, ptr %6, align 4
  %13 = mul i32 %12, -2048144777
  %14 = load i32, ptr %0, align 4
  %15 = mul i32 %14, -2048144777
  %16 = add i32 %15, %7
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 13)
  %18 = mul i32 %17, -1640531535
  %19 = add i32 %13, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 13)
  %21 = mul i32 %20, 1013904226
  %22 = add i32 %21, 47
  %23 = mul i32 %20, -1640531535
  %24 = lshr i32 %23, 31
  %25 = add i32 %22, %24
  %26 = load i32, ptr %8, align 4
  %27 = mul i32 %26, -2048144777
  %28 = load i32, ptr %9, align 4
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %29, %10
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13)
  %32 = mul i32 %31, -1640531535
  %33 = add i32 %27, %32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, 465361024
  %36 = add i32 %25, %35
  %37 = mul i32 %34, -1640531535
  %38 = lshr i32 %37, 25
  %39 = add i32 %36, %38
  %40 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %41 = load i32, ptr %40, align 4
  %42 = mul i32 %41, -2048144777
  %43 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = mul i32 %44, -2048144777
  %46 = add i32 %45, %1
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 13)
  %48 = mul i32 %47, -1640531535
  %49 = add i32 %42, %48
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, 2006650880
  %52 = add i32 %39, %51
  %53 = mul i32 %50, -1640531535
  %54 = lshr i32 %53, 20
  %55 = add i32 %52, %54
  %56 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %57 = load i32, ptr %56, align 4
  %58 = mul i32 %57, -2048144777
  %59 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %60 = load i32, ptr %59, align 4
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %1, 1640531535
  %63 = add i32 %61, %62
  %64 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 13)
  %65 = mul i32 %64, -1640531535
  %66 = add i32 %58, %65
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 13)
  %68 = mul i32 %67, -423362560
  %69 = add i32 %55, %68
  %70 = mul i32 %67, -1640531535
  %71 = lshr i32 %70, 14
  %72 = add i32 %69, %71
  %73 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %74 = load i32, ptr %73, align 4
  %75 = mul i32 %74, -1028477379
  %76 = add i32 %75, %72
  %77 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 17)
  br label %145

78:                                               ; preds = %2
  %79 = load i32, ptr %6, align 1
  %80 = mul i32 %79, -2048144777
  %81 = load i32, ptr %0, align 1
  %82 = mul i32 %81, -2048144777
  %83 = add i32 %82, %7
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 13)
  %85 = mul i32 %84, -1640531535
  %86 = add i32 %80, %85
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 13)
  %88 = mul i32 %87, 1013904226
  %89 = add i32 %88, 47
  %90 = mul i32 %87, -1640531535
  %91 = lshr i32 %90, 31
  %92 = add i32 %89, %91
  %93 = load i32, ptr %8, align 1
  %94 = mul i32 %93, -2048144777
  %95 = load i32, ptr %9, align 1
  %96 = mul i32 %95, -2048144777
  %97 = add i32 %96, %10
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13)
  %99 = mul i32 %98, -1640531535
  %100 = add i32 %94, %99
  %101 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 13)
  %102 = mul i32 %101, 465361024
  %103 = add i32 %92, %102
  %104 = mul i32 %101, -1640531535
  %105 = lshr i32 %104, 25
  %106 = add i32 %103, %105
  %107 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %108 = load i32, ptr %107, align 1
  %109 = mul i32 %108, -2048144777
  %110 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %111 = load i32, ptr %110, align 1
  %112 = mul i32 %111, -2048144777
  %113 = add i32 %112, %1
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 13)
  %115 = mul i32 %114, -1640531535
  %116 = add i32 %109, %115
  %117 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 13)
  %118 = mul i32 %117, 2006650880
  %119 = add i32 %106, %118
  %120 = mul i32 %117, -1640531535
  %121 = lshr i32 %120, 20
  %122 = add i32 %119, %121
  %123 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %124 = load i32, ptr %123, align 1
  %125 = mul i32 %124, -2048144777
  %126 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %127 = load i32, ptr %126, align 1
  %128 = mul i32 %127, -2048144777
  %129 = add i32 %1, 1640531535
  %130 = add i32 %128, %129
  %131 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 13)
  %132 = mul i32 %131, -1640531535
  %133 = add i32 %125, %132
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 13)
  %135 = mul i32 %134, -423362560
  %136 = add i32 %122, %135
  %137 = mul i32 %134, -1640531535
  %138 = lshr i32 %137, 14
  %139 = add i32 %136, %138
  %140 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %141 = load i32, ptr %140, align 1
  %142 = mul i32 %141, -1028477379
  %143 = add i32 %142, %139
  %144 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 17)
  br label %145

145:                                              ; preds = %78, %11
  %146 = phi i32 [ %144, %78 ], [ %77, %11 ]
  %147 = mul i32 %146, 668265263
  %148 = getelementptr inbounds nuw i8, ptr %0, i32 36
  %149 = load i32, ptr %148, align 1
  %150 = mul i32 %149, -1028477379
  %151 = add i32 %150, %147
  %152 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 17)
  %153 = mul i32 %152, 668265263
  %154 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %155 = load i32, ptr %154, align 1
  %156 = mul i32 %155, -1028477379
  %157 = add i32 %156, %153
  %158 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 17)
  %159 = mul i32 %158, 668265263
  %160 = getelementptr inbounds nuw i8, ptr %0, i32 44
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = mul i32 %162, 374761393
  %164 = add i32 %163, %159
  %165 = tail call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 11)
  %166 = mul i32 %165, -1640531535
  %167 = getelementptr inbounds nuw i8, ptr %0, i32 45
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = mul i32 %169, 374761393
  %171 = add i32 %170, %166
  %172 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 11)
  %173 = mul i32 %172, -1640531535
  %174 = getelementptr inbounds nuw i8, ptr %0, i32 46
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = mul i32 %176, 374761393
  %178 = add i32 %177, %173
  %179 = tail call i32 @llvm.fshl.i32(i32 %178, i32 %178, i32 11)
  %180 = mul i32 %179, -1640531535
  %181 = lshr i32 %180, 15
  %182 = xor i32 %181, %180
  %183 = mul i32 %182, -2048144777
  %184 = lshr i32 %183, 13
  %185 = xor i32 %184, %183
  %186 = mul i32 %185, -1028477379
  %187 = lshr i32 %186, 16
  %188 = xor i32 %187, %186
  ret i32 %188
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly, ptr noalias readonly, i32, i1 immarg) #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
