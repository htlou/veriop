; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d14b293/wrapv_s32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d14b293/wrapv_s32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH32_state_s = type { i32, i32, [4 x i32], [4 x i32], i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_0_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 374761393
  %19 = lshr i32 %18, 15
  %20 = xor i32 %19, %18
  %21 = mul i32 %20, -2048144777
  %22 = lshr i32 %21, 13
  %23 = xor i32 %22, %21
  %24 = mul i32 %23, -1028477379
  %25 = lshr i32 %24, 16
  %26 = xor i32 %25, %24
  ret i32 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @target_s32_7_8(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [16 x i8], align 16
  %19 = alloca [11 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18)
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %19)
  %21 = load i32, ptr %18, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %19, ptr noundef nonnull align 4 dereferenceable(3) %22, i64 3, i1 false)
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 7
  %24 = load i64, ptr %23, align 1
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 3
  store i64 %24, ptr %25, align 1
  %26 = getelementptr inbounds nuw i8, ptr %19, i64 10
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = mul i32 %28, 374761393
  %30 = getelementptr inbounds nuw i8, ptr %19, i64 9
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = mul i32 %32, 374761393
  %34 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = mul i32 %36, 374761393
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, -1028477379
  %41 = load i32, ptr %19, align 4
  %42 = mul i32 %41, -1028477379
  %43 = mul i32 %21, -1028477379
  %44 = add i32 %16, 374761408
  %45 = add i32 %43, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %47 = mul i32 %46, 668265263
  %48 = add i32 %42, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 17)
  %50 = mul i32 %49, 668265263
  %51 = add i32 %40, %50
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 17)
  %53 = mul i32 %52, 668265263
  %54 = add i32 %37, %53
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 11)
  %56 = mul i32 %55, -1640531535
  %57 = add i32 %33, %56
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11)
  %59 = mul i32 %58, -1640531535
  %60 = add i32 %29, %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 11)
  %62 = mul i32 %61, -1640531535
  %63 = lshr i32 %62, 15
  %64 = xor i32 %63, %62
  %65 = mul i32 %64, -2048144777
  %66 = lshr i32 %65, 13
  %67 = xor i32 %66, %65
  %68 = mul i32 %67, -1028477379
  %69 = lshr i32 %68, 16
  %70 = xor i32 %69, %68
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %19)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18)
  ret i32 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @target_s32_5_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = trunc i64 %0 to i32
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = and i32 %20, 255
  %22 = lshr i64 %0, 32
  %23 = trunc nuw i64 %22 to i32
  %24 = and i32 %23, -256
  %25 = or disjoint i32 %21, %24
  %26 = trunc i64 %1 to i32
  %27 = lshr i64 %1, 32
  %28 = trunc nuw i64 %27 to i32
  %29 = lshr i64 %1, 40
  %30 = trunc nuw nsw i64 %29 to i32
  %31 = lshr i64 %1, 48
  %32 = trunc nuw nsw i64 %31 to i32
  %33 = and i32 %32, 255
  %34 = mul i32 %33, 374761393
  %35 = and i32 %30, 255
  %36 = mul i32 %35, 374761393
  %37 = and i32 %28, 255
  %38 = mul i32 %37, 374761393
  %39 = mul i32 %26, -1028477379
  %40 = mul i32 %25, -1028477379
  %41 = mul i32 %18, -1028477379
  %42 = add i32 %16, 374761408
  %43 = add i32 %41, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %45 = mul i32 %44, 668265263
  %46 = add i32 %40, %45
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 17)
  %48 = mul i32 %47, 668265263
  %49 = add i32 %39, %48
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = add i32 %38, %51
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 11)
  %54 = mul i32 %53, -1640531535
  %55 = add i32 %36, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 11)
  %57 = mul i32 %56, -1640531535
  %58 = add i32 %34, %57
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 11)
  %60 = mul i32 %59, -1640531535
  %61 = lshr i32 %60, 15
  %62 = xor i32 %61, %60
  %63 = mul i32 %62, -2048144777
  %64 = lshr i32 %63, 13
  %65 = xor i32 %64, %63
  %66 = mul i32 %65, -1028477379
  %67 = lshr i32 %66, 16
  %68 = xor i32 %67, %66
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #7
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #7
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967316, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %35, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %36, ptr %39, align 4
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %16, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 10
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %42, ptr noundef nonnull readonly align 16 dereferenceable(10) %18, i64 10, i1 false)
  store i32 10, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %19, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %46, ptr noundef nonnull readonly align 2 dereferenceable(6) %43, i64 6, i1 false)
  %47 = load i32, ptr %42, align 8
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %35
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  store i32 %52, ptr %38, align 8
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %54 = load i32, ptr %39, align 4
  %55 = load i32, ptr %53, align 4
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %54
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  store i32 %60, ptr %39, align 4
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %62 = load i32, ptr %40, align 8
  %63 = load i32, ptr %61, align 8
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %70 = load i32, ptr %41, align 4
  %71 = load i32, ptr %69, align 4
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %70
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = freeze i32 %75
  store i32 %76, ptr %41, align 4
  %77 = load i32, ptr %45, align 8
  %78 = sub i32 16, %77
  store i32 0, ptr %45, align 8
  %79 = icmp ult i32 %78, 10
  br i1 %79, label %80, label %90

80:                                               ; preds = %17
  %81 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %82 = zext nneg i32 %78 to i64
  %83 = getelementptr inbounds nuw i8, ptr %18, i64 %82
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 10
  %85 = ptrtoint ptr %81 to i64
  %86 = ptrtoint ptr %84 to i64
  %87 = sub i64 %85, %86
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %84, i64 %87, i1 false)
  %88 = trunc i64 %87 to i32
  store i32 %88, ptr %45, align 8
  %89 = and i32 %88, 15
  br label %90

90:                                               ; preds = %17, %80
  %91 = phi i32 [ 0, %17 ], [ %89, %80 ]
  %92 = load i32, ptr %44, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %90
  %95 = load i32, ptr %38, align 8
  %96 = call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 1)
  %97 = load i32, ptr %39, align 4
  %98 = call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 7)
  %99 = add i32 %98, %96
  %100 = load i32, ptr %40, align 8
  %101 = call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 12)
  %102 = add i32 %99, %101
  %103 = call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 18)
  %104 = add i32 %102, %103
  br label %108

105:                                              ; preds = %90
  %106 = load i32, ptr %40, align 8
  %107 = add i32 %106, 374761393
  br label %108

108:                                              ; preds = %105, %94
  %109 = phi i32 [ %104, %94 ], [ %107, %105 ]
  %110 = load i32, ptr %19, align 8
  %111 = add i32 %110, %109
  switch i32 %91, label %259 [
    i32 12, label %112
    i32 8, label %119
    i32 4, label %128
    i32 13, label %136
    i32 9, label %143
    i32 5, label %152
    i32 14, label %167
    i32 10, label %174
    i32 6, label %183
    i32 15, label %205
    i32 11, label %212
    i32 7, label %221
    i32 3, label %230
    i32 2, label %240
    i32 1, label %250
    i32 0, label %260
  ]

112:                                              ; preds = %108
  %113 = load i32, ptr %42, align 8
  %114 = mul i32 %113, -1028477379
  %115 = add i32 %114, %111
  %116 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %117 = call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 17)
  %118 = mul i32 %117, 668265263
  br label %119

119:                                              ; preds = %112, %108
  %120 = phi ptr [ %42, %108 ], [ %116, %112 ]
  %121 = phi i32 [ %111, %108 ], [ %118, %112 ]
  %122 = load i32, ptr %120, align 4
  %123 = mul i32 %122, -1028477379
  %124 = add i32 %123, %121
  %125 = getelementptr inbounds nuw i8, ptr %120, i64 4
  %126 = call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 17)
  %127 = mul i32 %126, 668265263
  br label %128

128:                                              ; preds = %119, %108
  %129 = phi ptr [ %42, %108 ], [ %125, %119 ]
  %130 = phi i32 [ %111, %108 ], [ %127, %119 ]
  %131 = load i32, ptr %129, align 4
  %132 = mul i32 %131, -1028477379
  %133 = add i32 %132, %130
  %134 = call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 17)
  %135 = mul i32 %134, 668265263
  br label %260

136:                                              ; preds = %108
  %137 = load i32, ptr %42, align 8
  %138 = mul i32 %137, -1028477379
  %139 = add i32 %138, %111
  %140 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %141 = call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 17)
  %142 = mul i32 %141, 668265263
  br label %143

143:                                              ; preds = %136, %108
  %144 = phi ptr [ %42, %108 ], [ %140, %136 ]
  %145 = phi i32 [ %111, %108 ], [ %142, %136 ]
  %146 = load i32, ptr %144, align 4
  %147 = mul i32 %146, -1028477379
  %148 = add i32 %147, %145
  %149 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %150 = call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 17)
  %151 = mul i32 %150, 668265263
  br label %152

152:                                              ; preds = %143, %108
  %153 = phi ptr [ %42, %108 ], [ %149, %143 ]
  %154 = phi i32 [ %111, %108 ], [ %151, %143 ]
  %155 = load i32, ptr %153, align 4
  %156 = mul i32 %155, -1028477379
  %157 = add i32 %156, %154
  %158 = getelementptr inbounds nuw i8, ptr %153, i64 4
  %159 = call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 17)
  %160 = mul i32 %159, 668265263
  %161 = load i8, ptr %158, align 1
  %162 = zext i8 %161 to i32
  %163 = mul i32 %162, 374761393
  %164 = add i32 %160, %163
  %165 = call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 11)
  %166 = mul i32 %165, -1640531535
  br label %260

167:                                              ; preds = %108
  %168 = load i32, ptr %42, align 8
  %169 = mul i32 %168, -1028477379
  %170 = add i32 %169, %111
  %171 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %172 = call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 17)
  %173 = mul i32 %172, 668265263
  br label %174

174:                                              ; preds = %167, %108
  %175 = phi ptr [ %42, %108 ], [ %171, %167 ]
  %176 = phi i32 [ %111, %108 ], [ %173, %167 ]
  %177 = load i32, ptr %175, align 4
  %178 = mul i32 %177, -1028477379
  %179 = add i32 %178, %176
  %180 = getelementptr inbounds nuw i8, ptr %175, i64 4
  %181 = call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 17)
  %182 = mul i32 %181, 668265263
  br label %183

183:                                              ; preds = %174, %108
  %184 = phi ptr [ %42, %108 ], [ %180, %174 ]
  %185 = phi i32 [ %111, %108 ], [ %182, %174 ]
  %186 = load i32, ptr %184, align 4
  %187 = mul i32 %186, -1028477379
  %188 = add i32 %187, %185
  %189 = getelementptr inbounds nuw i8, ptr %184, i64 4
  %190 = call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 17)
  %191 = mul i32 %190, 668265263
  %192 = getelementptr inbounds nuw i8, ptr %184, i64 5
  %193 = load i8, ptr %189, align 1
  %194 = zext i8 %193 to i32
  %195 = mul i32 %194, 374761393
  %196 = add i32 %191, %195
  %197 = call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 11)
  %198 = mul i32 %197, -1640531535
  %199 = load i8, ptr %192, align 1
  %200 = zext i8 %199 to i32
  %201 = mul i32 %200, 374761393
  %202 = add i32 %198, %201
  %203 = call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 11)
  %204 = mul i32 %203, -1640531535
  br label %260

205:                                              ; preds = %108
  %206 = load i32, ptr %42, align 8
  %207 = mul i32 %206, -1028477379
  %208 = add i32 %207, %111
  %209 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %210 = call i32 @llvm.fshl.i32(i32 %208, i32 %208, i32 17)
  %211 = mul i32 %210, 668265263
  br label %212

212:                                              ; preds = %205, %108
  %213 = phi ptr [ %42, %108 ], [ %209, %205 ]
  %214 = phi i32 [ %111, %108 ], [ %211, %205 ]
  %215 = load i32, ptr %213, align 4
  %216 = mul i32 %215, -1028477379
  %217 = add i32 %216, %214
  %218 = getelementptr inbounds nuw i8, ptr %213, i64 4
  %219 = call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 17)
  %220 = mul i32 %219, 668265263
  br label %221

221:                                              ; preds = %212, %108
  %222 = phi ptr [ %42, %108 ], [ %218, %212 ]
  %223 = phi i32 [ %111, %108 ], [ %220, %212 ]
  %224 = load i32, ptr %222, align 4
  %225 = mul i32 %224, -1028477379
  %226 = add i32 %225, %223
  %227 = getelementptr inbounds nuw i8, ptr %222, i64 4
  %228 = call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 17)
  %229 = mul i32 %228, 668265263
  br label %230

230:                                              ; preds = %221, %108
  %231 = phi ptr [ %42, %108 ], [ %227, %221 ]
  %232 = phi i32 [ %111, %108 ], [ %229, %221 ]
  %233 = getelementptr inbounds nuw i8, ptr %231, i64 1
  %234 = load i8, ptr %231, align 1
  %235 = zext i8 %234 to i32
  %236 = mul i32 %235, 374761393
  %237 = add i32 %236, %232
  %238 = call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 11)
  %239 = mul i32 %238, -1640531535
  br label %240

240:                                              ; preds = %230, %108
  %241 = phi ptr [ %42, %108 ], [ %233, %230 ]
  %242 = phi i32 [ %111, %108 ], [ %239, %230 ]
  %243 = getelementptr inbounds nuw i8, ptr %241, i64 1
  %244 = load i8, ptr %241, align 1
  %245 = zext i8 %244 to i32
  %246 = mul i32 %245, 374761393
  %247 = add i32 %246, %242
  %248 = call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 11)
  %249 = mul i32 %248, -1640531535
  br label %250

250:                                              ; preds = %240, %108
  %251 = phi ptr [ %42, %108 ], [ %243, %240 ]
  %252 = phi i32 [ %111, %108 ], [ %249, %240 ]
  %253 = load i8, ptr %251, align 1
  %254 = zext i8 %253 to i32
  %255 = mul i32 %254, 374761393
  %256 = add i32 %255, %252
  %257 = call i32 @llvm.fshl.i32(i32 %256, i32 %256, i32 11)
  %258 = mul i32 %257, -1640531535
  br label %260

259:                                              ; preds = %108
  unreachable

260:                                              ; preds = %108, %128, %152, %183, %250
  %261 = phi i32 [ %204, %183 ], [ %166, %152 ], [ %135, %128 ], [ %111, %108 ], [ %258, %250 ]
  %262 = lshr i32 %261, 15
  %263 = xor i32 %262, %261
  %264 = mul i32 %263, -2048144777
  %265 = lshr i32 %264, 13
  %266 = xor i32 %265, %264
  %267 = mul i32 %266, -1028477379
  %268 = lshr i32 %267, 16
  %269 = xor i32 %268, %267
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %269
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_3_20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #7
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #7
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967319, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %35, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %36, ptr %39, align 4
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %16, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 3
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %42, ptr noundef nonnull readonly align 16 dereferenceable(3) %18, i64 3, i1 false)
  store i32 3, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %19, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %46, ptr noundef nonnull readonly align 1 dereferenceable(13) %43, i64 13, i1 false)
  %47 = load i32, ptr %42, align 8
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %35
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  store i32 %52, ptr %38, align 8
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %54 = load i32, ptr %39, align 4
  %55 = load i32, ptr %53, align 4
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %54
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  store i32 %60, ptr %39, align 4
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %62 = load i32, ptr %40, align 8
  %63 = load i32, ptr %61, align 8
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %70 = load i32, ptr %41, align 4
  %71 = load i32, ptr %69, align 4
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %70
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = freeze i32 %75
  store i32 %76, ptr %41, align 4
  %77 = load i32, ptr %45, align 8
  %78 = sub i32 16, %77
  %79 = zext i32 %78 to i64
  %80 = add nuw nsw i64 %79, 3
  store i32 0, ptr %45, align 8
  %81 = icmp ugt i32 %78, 4
  br i1 %81, label %116, label %82

82:                                               ; preds = %17
  %83 = getelementptr inbounds nuw i8, ptr %18, i64 %80
  %84 = load i32, ptr %38, align 8
  %85 = load i32, ptr %83, align 1
  %86 = mul i32 %85, -2048144777
  %87 = add i32 %86, %84
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 13)
  %89 = mul i32 %88, -1640531535
  %90 = freeze i32 %89
  store i32 %90, ptr %38, align 8
  %91 = getelementptr inbounds nuw i8, ptr %83, i64 4
  %92 = load i32, ptr %39, align 4
  %93 = load i32, ptr %91, align 1
  %94 = mul i32 %93, -2048144777
  %95 = add i32 %94, %92
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = freeze i32 %97
  store i32 %98, ptr %39, align 4
  %99 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %100 = load i32, ptr %40, align 8
  %101 = load i32, ptr %99, align 1
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %100
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = freeze i32 %105
  store i32 %106, ptr %40, align 8
  %107 = getelementptr inbounds nuw i8, ptr %83, i64 12
  %108 = load i32, ptr %41, align 4
  %109 = load i32, ptr %107, align 1
  %110 = mul i32 %109, -2048144777
  %111 = add i32 %110, %108
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 13)
  %113 = mul i32 %112, -1640531535
  %114 = freeze i32 %113
  store i32 %114, ptr %41, align 4
  %115 = add nuw nsw i64 %79, 19
  br label %116

116:                                              ; preds = %82, %17
  %117 = phi i32 [ %76, %17 ], [ %114, %82 ]
  %118 = phi i64 [ %80, %17 ], [ %115, %82 ]
  %119 = icmp samesign ult i64 %118, 23
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = getelementptr inbounds nuw i8, ptr %18, i64 %118
  %122 = sub nuw nsw i64 23, %118
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %121, i64 %122, i1 false)
  %123 = trunc nuw i64 %122 to i32
  store i32 %123, ptr %45, align 8
  br label %124

124:                                              ; preds = %116, %120
  %125 = load i32, ptr %44, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr %38, align 8
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 1)
  %130 = load i32, ptr %39, align 4
  %131 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 7)
  %132 = add i32 %131, %129
  %133 = load i32, ptr %40, align 8
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 12)
  %135 = add i32 %132, %134
  %136 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 18)
  %137 = add i32 %135, %136
  br label %141

138:                                              ; preds = %124
  %139 = load i32, ptr %40, align 8
  %140 = add i32 %139, 374761393
  br label %141

141:                                              ; preds = %138, %127
  %142 = phi i32 [ %137, %127 ], [ %140, %138 ]
  %143 = load i32, ptr %19, align 8
  %144 = add i32 %143, %142
  %145 = load i32, ptr %45, align 8
  %146 = and i32 %145, 15
  switch i32 %146, label %294 [
    i32 12, label %147
    i32 8, label %154
    i32 4, label %163
    i32 13, label %171
    i32 9, label %178
    i32 5, label %187
    i32 14, label %202
    i32 10, label %209
    i32 6, label %218
    i32 15, label %240
    i32 11, label %247
    i32 7, label %256
    i32 3, label %265
    i32 2, label %275
    i32 1, label %285
    i32 0, label %295
  ]

147:                                              ; preds = %141
  %148 = load i32, ptr %42, align 8
  %149 = mul i32 %148, -1028477379
  %150 = add i32 %149, %144
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %152 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 17)
  %153 = mul i32 %152, 668265263
  br label %154

154:                                              ; preds = %147, %141
  %155 = phi ptr [ %42, %141 ], [ %151, %147 ]
  %156 = phi i32 [ %144, %141 ], [ %153, %147 ]
  %157 = load i32, ptr %155, align 4
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %155, i64 4
  %161 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  br label %163

163:                                              ; preds = %154, %141
  %164 = phi ptr [ %42, %141 ], [ %160, %154 ]
  %165 = phi i32 [ %144, %141 ], [ %162, %154 ]
  %166 = load i32, ptr %164, align 4
  %167 = mul i32 %166, -1028477379
  %168 = add i32 %167, %165
  %169 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 17)
  %170 = mul i32 %169, 668265263
  br label %295

171:                                              ; preds = %141
  %172 = load i32, ptr %42, align 8
  %173 = mul i32 %172, -1028477379
  %174 = add i32 %173, %144
  %175 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %176 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 17)
  %177 = mul i32 %176, 668265263
  br label %178

178:                                              ; preds = %171, %141
  %179 = phi ptr [ %42, %141 ], [ %175, %171 ]
  %180 = phi i32 [ %144, %141 ], [ %177, %171 ]
  %181 = load i32, ptr %179, align 4
  %182 = mul i32 %181, -1028477379
  %183 = add i32 %182, %180
  %184 = getelementptr inbounds nuw i8, ptr %179, i64 4
  %185 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 17)
  %186 = mul i32 %185, 668265263
  br label %187

187:                                              ; preds = %178, %141
  %188 = phi ptr [ %42, %141 ], [ %184, %178 ]
  %189 = phi i32 [ %144, %141 ], [ %186, %178 ]
  %190 = load i32, ptr %188, align 4
  %191 = mul i32 %190, -1028477379
  %192 = add i32 %191, %189
  %193 = getelementptr inbounds nuw i8, ptr %188, i64 4
  %194 = tail call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 17)
  %195 = mul i32 %194, 668265263
  %196 = load i8, ptr %193, align 1
  %197 = zext i8 %196 to i32
  %198 = mul i32 %197, 374761393
  %199 = add i32 %195, %198
  %200 = tail call i32 @llvm.fshl.i32(i32 %199, i32 %199, i32 11)
  %201 = mul i32 %200, -1640531535
  br label %295

202:                                              ; preds = %141
  %203 = load i32, ptr %42, align 8
  %204 = mul i32 %203, -1028477379
  %205 = add i32 %204, %144
  %206 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %207 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 17)
  %208 = mul i32 %207, 668265263
  br label %209

209:                                              ; preds = %202, %141
  %210 = phi ptr [ %42, %141 ], [ %206, %202 ]
  %211 = phi i32 [ %144, %141 ], [ %208, %202 ]
  %212 = load i32, ptr %210, align 4
  %213 = mul i32 %212, -1028477379
  %214 = add i32 %213, %211
  %215 = getelementptr inbounds nuw i8, ptr %210, i64 4
  %216 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 17)
  %217 = mul i32 %216, 668265263
  br label %218

218:                                              ; preds = %209, %141
  %219 = phi ptr [ %42, %141 ], [ %215, %209 ]
  %220 = phi i32 [ %144, %141 ], [ %217, %209 ]
  %221 = load i32, ptr %219, align 4
  %222 = mul i32 %221, -1028477379
  %223 = add i32 %222, %220
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 4
  %225 = tail call i32 @llvm.fshl.i32(i32 %223, i32 %223, i32 17)
  %226 = mul i32 %225, 668265263
  %227 = getelementptr inbounds nuw i8, ptr %219, i64 5
  %228 = load i8, ptr %224, align 1
  %229 = zext i8 %228 to i32
  %230 = mul i32 %229, 374761393
  %231 = add i32 %226, %230
  %232 = tail call i32 @llvm.fshl.i32(i32 %231, i32 %231, i32 11)
  %233 = mul i32 %232, -1640531535
  %234 = load i8, ptr %227, align 1
  %235 = zext i8 %234 to i32
  %236 = mul i32 %235, 374761393
  %237 = add i32 %233, %236
  %238 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 11)
  %239 = mul i32 %238, -1640531535
  br label %295

240:                                              ; preds = %141
  %241 = load i32, ptr %42, align 8
  %242 = mul i32 %241, -1028477379
  %243 = add i32 %242, %144
  %244 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %245 = tail call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 17)
  %246 = mul i32 %245, 668265263
  br label %247

247:                                              ; preds = %240, %141
  %248 = phi ptr [ %42, %141 ], [ %244, %240 ]
  %249 = phi i32 [ %144, %141 ], [ %246, %240 ]
  %250 = load i32, ptr %248, align 4
  %251 = mul i32 %250, -1028477379
  %252 = add i32 %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %248, i64 4
  %254 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 17)
  %255 = mul i32 %254, 668265263
  br label %256

256:                                              ; preds = %247, %141
  %257 = phi ptr [ %42, %141 ], [ %253, %247 ]
  %258 = phi i32 [ %144, %141 ], [ %255, %247 ]
  %259 = load i32, ptr %257, align 4
  %260 = mul i32 %259, -1028477379
  %261 = add i32 %260, %258
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 4
  %263 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 17)
  %264 = mul i32 %263, 668265263
  br label %265

265:                                              ; preds = %256, %141
  %266 = phi ptr [ %42, %141 ], [ %262, %256 ]
  %267 = phi i32 [ %144, %141 ], [ %264, %256 ]
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 1
  %269 = load i8, ptr %266, align 1
  %270 = zext i8 %269 to i32
  %271 = mul i32 %270, 374761393
  %272 = add i32 %271, %267
  %273 = tail call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 11)
  %274 = mul i32 %273, -1640531535
  br label %275

275:                                              ; preds = %265, %141
  %276 = phi ptr [ %42, %141 ], [ %268, %265 ]
  %277 = phi i32 [ %144, %141 ], [ %274, %265 ]
  %278 = getelementptr inbounds nuw i8, ptr %276, i64 1
  %279 = load i8, ptr %276, align 1
  %280 = zext i8 %279 to i32
  %281 = mul i32 %280, 374761393
  %282 = add i32 %281, %277
  %283 = tail call i32 @llvm.fshl.i32(i32 %282, i32 %282, i32 11)
  %284 = mul i32 %283, -1640531535
  br label %285

285:                                              ; preds = %275, %141
  %286 = phi ptr [ %42, %141 ], [ %278, %275 ]
  %287 = phi i32 [ %144, %141 ], [ %284, %275 ]
  %288 = load i8, ptr %286, align 1
  %289 = zext i8 %288 to i32
  %290 = mul i32 %289, 374761393
  %291 = add i32 %290, %287
  %292 = tail call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 11)
  %293 = mul i32 %292, -1640531535
  br label %295

294:                                              ; preds = %141
  unreachable

295:                                              ; preds = %141, %163, %187, %218, %285
  %296 = phi i32 [ %239, %218 ], [ %201, %187 ], [ %170, %163 ], [ %144, %141 ], [ %293, %285 ]
  %297 = lshr i32 %296, 15
  %298 = xor i32 %297, %296
  %299 = mul i32 %298, -2048144777
  %300 = lshr i32 %299, 13
  %301 = xor i32 %300, %299
  %302 = mul i32 %301, -1028477379
  %303 = lshr i32 %302, 16
  %304 = xor i32 %303, %302
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %304
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_16_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = lshr i64 %1, 32
  %19 = trunc nuw i64 %18 to i32
  %20 = trunc i64 %1 to i32
  %21 = lshr i64 %0, 32
  %22 = trunc nuw i64 %21 to i32
  %23 = trunc i64 %0 to i32
  %24 = add i32 %16, 1640531535
  %25 = add i32 %16, -2048144777
  %26 = add i32 %16, 606290984
  %27 = mul i32 %23, -2048144777
  %28 = add i32 %27, %26
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = mul i32 %22, -2048144777
  %33 = add i32 %32, %25
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = freeze i32 %35
  %37 = mul i32 %20, -2048144777
  %38 = add i32 %37, %16
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  %42 = mul i32 %19, -2048144777
  %43 = add i32 %42, %24
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 7)
  %48 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 1)
  %49 = add i32 %47, %48
  %50 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 12)
  %51 = add i32 %49, %50
  %52 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 18)
  %53 = add i32 %51, %52
  %54 = add i32 %53, 16
  %55 = lshr i32 %54, 15
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, -2048144777
  %58 = lshr i32 %57, 13
  %59 = xor i32 %58, %57
  %60 = mul i32 %59, -1028477379
  %61 = lshr i32 %60, 16
  %62 = xor i32 %61, %60
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #7
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #7
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967316, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %35, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %36, ptr %39, align 4
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %16, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %42, i8 0, i64 20, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %46 = load i32, ptr %38, align 8
  %47 = load i32, ptr %18, align 16
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %46
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  store i32 %52, ptr %38, align 8
  %53 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %54 = load i32, ptr %39, align 4
  %55 = load i32, ptr %53, align 4
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %54
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  store i32 %60, ptr %39, align 4
  %61 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %62 = load i32, ptr %40, align 8
  %63 = load i32, ptr %61, align 8
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %70 = load i32, ptr %41, align 4
  %71 = load i32, ptr %69, align 4
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %70
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = freeze i32 %75
  store i32 %76, ptr %41, align 4
  %77 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %78 = load i32, ptr %77, align 16
  store i32 %78, ptr %42, align 8
  store i32 4, ptr %45, align 8
  %79 = load i32, ptr %19, align 8
  %80 = add i32 %79, 13
  store i32 %80, ptr %19, align 8
  %81 = icmp ugt i32 %80, 15
  %82 = zext i1 %81 to i32
  %83 = load i32, ptr %44, align 4
  %84 = or i32 %83, %82
  store i32 %84, ptr %44, align 4
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %85, ptr noundef nonnull readonly align 4 dereferenceable(12) %43, i64 12, i1 false)
  %86 = load i32, ptr %38, align 8
  %87 = load i32, ptr %42, align 8
  %88 = mul i32 %87, -2048144777
  %89 = add i32 %88, %86
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = mul i32 %90, -1640531535
  %92 = freeze i32 %91
  store i32 %92, ptr %38, align 8
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %94 = load i32, ptr %39, align 4
  %95 = load i32, ptr %93, align 4
  %96 = mul i32 %95, -2048144777
  %97 = add i32 %96, %94
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13)
  %99 = mul i32 %98, -1640531535
  %100 = freeze i32 %99
  store i32 %100, ptr %39, align 4
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %102 = load i32, ptr %40, align 8
  %103 = load i32, ptr %101, align 8
  %104 = mul i32 %103, -2048144777
  %105 = add i32 %104, %102
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 13)
  %107 = mul i32 %106, -1640531535
  %108 = freeze i32 %107
  store i32 %108, ptr %40, align 8
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %110 = load i32, ptr %41, align 4
  %111 = load i32, ptr %109, align 4
  %112 = mul i32 %111, -2048144777
  %113 = add i32 %112, %110
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 13)
  %115 = mul i32 %114, -1640531535
  %116 = freeze i32 %115
  store i32 %116, ptr %41, align 4
  %117 = load i32, ptr %45, align 8
  %118 = sub i32 16, %117
  store i32 0, ptr %45, align 8
  %119 = icmp ult i32 %118, 13
  br i1 %119, label %120, label %130

120:                                              ; preds = %17
  %121 = getelementptr inbounds nuw i8, ptr %18, i64 33
  %122 = zext nneg i32 %118 to i64
  %123 = getelementptr inbounds nuw i8, ptr %18, i64 %122
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 20
  %125 = ptrtoint ptr %121 to i64
  %126 = ptrtoint ptr %124 to i64
  %127 = sub i64 %125, %126
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %124, i64 %127, i1 false)
  %128 = trunc i64 %127 to i32
  store i32 %128, ptr %45, align 8
  %129 = and i32 %128, 15
  br label %130

130:                                              ; preds = %17, %120
  %131 = phi i32 [ 0, %17 ], [ %129, %120 ]
  %132 = load i32, ptr %44, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %38, align 8
  %136 = call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 1)
  %137 = load i32, ptr %39, align 4
  %138 = call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 7)
  %139 = add i32 %138, %136
  %140 = load i32, ptr %40, align 8
  %141 = call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 12)
  %142 = add i32 %139, %141
  %143 = call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 18)
  %144 = add i32 %142, %143
  br label %148

145:                                              ; preds = %130
  %146 = load i32, ptr %40, align 8
  %147 = add i32 %146, 374761393
  br label %148

148:                                              ; preds = %145, %134
  %149 = phi i32 [ %144, %134 ], [ %147, %145 ]
  %150 = load i32, ptr %19, align 8
  %151 = add i32 %150, %149
  switch i32 %131, label %299 [
    i32 12, label %152
    i32 8, label %159
    i32 4, label %168
    i32 13, label %176
    i32 9, label %183
    i32 5, label %192
    i32 14, label %207
    i32 10, label %214
    i32 6, label %223
    i32 15, label %245
    i32 11, label %252
    i32 7, label %261
    i32 3, label %270
    i32 2, label %280
    i32 1, label %290
    i32 0, label %300
  ]

152:                                              ; preds = %148
  %153 = load i32, ptr %42, align 8
  %154 = mul i32 %153, -1028477379
  %155 = add i32 %154, %151
  %156 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %157 = call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 17)
  %158 = mul i32 %157, 668265263
  br label %159

159:                                              ; preds = %152, %148
  %160 = phi ptr [ %42, %148 ], [ %156, %152 ]
  %161 = phi i32 [ %151, %148 ], [ %158, %152 ]
  %162 = load i32, ptr %160, align 4
  %163 = mul i32 %162, -1028477379
  %164 = add i32 %163, %161
  %165 = getelementptr inbounds nuw i8, ptr %160, i64 4
  %166 = call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 17)
  %167 = mul i32 %166, 668265263
  br label %168

168:                                              ; preds = %159, %148
  %169 = phi ptr [ %42, %148 ], [ %165, %159 ]
  %170 = phi i32 [ %151, %148 ], [ %167, %159 ]
  %171 = load i32, ptr %169, align 4
  %172 = mul i32 %171, -1028477379
  %173 = add i32 %172, %170
  %174 = call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 17)
  %175 = mul i32 %174, 668265263
  br label %300

176:                                              ; preds = %148
  %177 = load i32, ptr %42, align 8
  %178 = mul i32 %177, -1028477379
  %179 = add i32 %178, %151
  %180 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %181 = call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 17)
  %182 = mul i32 %181, 668265263
  br label %183

183:                                              ; preds = %176, %148
  %184 = phi ptr [ %42, %148 ], [ %180, %176 ]
  %185 = phi i32 [ %151, %148 ], [ %182, %176 ]
  %186 = load i32, ptr %184, align 4
  %187 = mul i32 %186, -1028477379
  %188 = add i32 %187, %185
  %189 = getelementptr inbounds nuw i8, ptr %184, i64 4
  %190 = call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 17)
  %191 = mul i32 %190, 668265263
  br label %192

192:                                              ; preds = %183, %148
  %193 = phi ptr [ %42, %148 ], [ %189, %183 ]
  %194 = phi i32 [ %151, %148 ], [ %191, %183 ]
  %195 = load i32, ptr %193, align 4
  %196 = mul i32 %195, -1028477379
  %197 = add i32 %196, %194
  %198 = getelementptr inbounds nuw i8, ptr %193, i64 4
  %199 = call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 17)
  %200 = mul i32 %199, 668265263
  %201 = load i8, ptr %198, align 1
  %202 = zext i8 %201 to i32
  %203 = mul i32 %202, 374761393
  %204 = add i32 %200, %203
  %205 = call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 11)
  %206 = mul i32 %205, -1640531535
  br label %300

207:                                              ; preds = %148
  %208 = load i32, ptr %42, align 8
  %209 = mul i32 %208, -1028477379
  %210 = add i32 %209, %151
  %211 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %212 = call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 17)
  %213 = mul i32 %212, 668265263
  br label %214

214:                                              ; preds = %207, %148
  %215 = phi ptr [ %42, %148 ], [ %211, %207 ]
  %216 = phi i32 [ %151, %148 ], [ %213, %207 ]
  %217 = load i32, ptr %215, align 4
  %218 = mul i32 %217, -1028477379
  %219 = add i32 %218, %216
  %220 = getelementptr inbounds nuw i8, ptr %215, i64 4
  %221 = call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 17)
  %222 = mul i32 %221, 668265263
  br label %223

223:                                              ; preds = %214, %148
  %224 = phi ptr [ %42, %148 ], [ %220, %214 ]
  %225 = phi i32 [ %151, %148 ], [ %222, %214 ]
  %226 = load i32, ptr %224, align 4
  %227 = mul i32 %226, -1028477379
  %228 = add i32 %227, %225
  %229 = getelementptr inbounds nuw i8, ptr %224, i64 4
  %230 = call i32 @llvm.fshl.i32(i32 %228, i32 %228, i32 17)
  %231 = mul i32 %230, 668265263
  %232 = getelementptr inbounds nuw i8, ptr %224, i64 5
  %233 = load i8, ptr %229, align 1
  %234 = zext i8 %233 to i32
  %235 = mul i32 %234, 374761393
  %236 = add i32 %231, %235
  %237 = call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 11)
  %238 = mul i32 %237, -1640531535
  %239 = load i8, ptr %232, align 1
  %240 = zext i8 %239 to i32
  %241 = mul i32 %240, 374761393
  %242 = add i32 %238, %241
  %243 = call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 11)
  %244 = mul i32 %243, -1640531535
  br label %300

245:                                              ; preds = %148
  %246 = load i32, ptr %42, align 8
  %247 = mul i32 %246, -1028477379
  %248 = add i32 %247, %151
  %249 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %250 = call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 17)
  %251 = mul i32 %250, 668265263
  br label %252

252:                                              ; preds = %245, %148
  %253 = phi ptr [ %42, %148 ], [ %249, %245 ]
  %254 = phi i32 [ %151, %148 ], [ %251, %245 ]
  %255 = load i32, ptr %253, align 4
  %256 = mul i32 %255, -1028477379
  %257 = add i32 %256, %254
  %258 = getelementptr inbounds nuw i8, ptr %253, i64 4
  %259 = call i32 @llvm.fshl.i32(i32 %257, i32 %257, i32 17)
  %260 = mul i32 %259, 668265263
  br label %261

261:                                              ; preds = %252, %148
  %262 = phi ptr [ %42, %148 ], [ %258, %252 ]
  %263 = phi i32 [ %151, %148 ], [ %260, %252 ]
  %264 = load i32, ptr %262, align 4
  %265 = mul i32 %264, -1028477379
  %266 = add i32 %265, %263
  %267 = getelementptr inbounds nuw i8, ptr %262, i64 4
  %268 = call i32 @llvm.fshl.i32(i32 %266, i32 %266, i32 17)
  %269 = mul i32 %268, 668265263
  br label %270

270:                                              ; preds = %261, %148
  %271 = phi ptr [ %42, %148 ], [ %267, %261 ]
  %272 = phi i32 [ %151, %148 ], [ %269, %261 ]
  %273 = getelementptr inbounds nuw i8, ptr %271, i64 1
  %274 = load i8, ptr %271, align 1
  %275 = zext i8 %274 to i32
  %276 = mul i32 %275, 374761393
  %277 = add i32 %276, %272
  %278 = call i32 @llvm.fshl.i32(i32 %277, i32 %277, i32 11)
  %279 = mul i32 %278, -1640531535
  br label %280

280:                                              ; preds = %270, %148
  %281 = phi ptr [ %42, %148 ], [ %273, %270 ]
  %282 = phi i32 [ %151, %148 ], [ %279, %270 ]
  %283 = getelementptr inbounds nuw i8, ptr %281, i64 1
  %284 = load i8, ptr %281, align 1
  %285 = zext i8 %284 to i32
  %286 = mul i32 %285, 374761393
  %287 = add i32 %286, %282
  %288 = call i32 @llvm.fshl.i32(i32 %287, i32 %287, i32 11)
  %289 = mul i32 %288, -1640531535
  br label %290

290:                                              ; preds = %280, %148
  %291 = phi ptr [ %42, %148 ], [ %283, %280 ]
  %292 = phi i32 [ %151, %148 ], [ %289, %280 ]
  %293 = load i8, ptr %291, align 1
  %294 = zext i8 %293 to i32
  %295 = mul i32 %294, 374761393
  %296 = add i32 %295, %292
  %297 = call i32 @llvm.fshl.i32(i32 %296, i32 %296, i32 11)
  %298 = mul i32 %297, -1640531535
  br label %300

299:                                              ; preds = %148
  unreachable

300:                                              ; preds = %148, %168, %192, %223, %290
  %301 = phi i32 [ %244, %223 ], [ %206, %192 ], [ %175, %168 ], [ %151, %148 ], [ %298, %290 ]
  %302 = lshr i32 %301, 15
  %303 = xor i32 %302, %301
  %304 = mul i32 %303, -2048144777
  %305 = lshr i32 %304, 13
  %306 = xor i32 %305, %304
  %307 = mul i32 %306, -1028477379
  %308 = lshr i32 %307, 16
  %309 = xor i32 %308, %307
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %309
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_17_30(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #7
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #7
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967313, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %35, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %36, ptr %39, align 4
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %16, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %42, i8 0, i64 20, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 17
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %46 = load i32, ptr %38, align 8
  %47 = load i32, ptr %18, align 16
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %46
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  store i32 %52, ptr %38, align 8
  %53 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %54 = load i32, ptr %39, align 4
  %55 = load i32, ptr %53, align 4
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %54
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  store i32 %60, ptr %39, align 4
  %61 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %62 = load i32, ptr %40, align 8
  %63 = load i32, ptr %61, align 8
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %70 = load i32, ptr %41, align 4
  %71 = load i32, ptr %69, align 4
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %70
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = freeze i32 %75
  store i32 %76, ptr %41, align 4
  %77 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %78 = load i8, ptr %77, align 16
  store i8 %78, ptr %42, align 8
  store i32 1, ptr %45, align 8
  %79 = load i32, ptr %19, align 8
  %80 = add i32 %79, 30
  store i32 %80, ptr %19, align 8
  %81 = load i32, ptr %44, align 4
  %82 = or i32 %81, 1
  store i32 %82, ptr %44, align 4
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %83, ptr noundef nonnull readonly align 1 dereferenceable(15) %43, i64 15, i1 false)
  %84 = load i32, ptr %38, align 8
  %85 = load i32, ptr %42, align 8
  %86 = mul i32 %85, -2048144777
  %87 = add i32 %86, %84
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 13)
  %89 = mul i32 %88, -1640531535
  %90 = freeze i32 %89
  store i32 %90, ptr %38, align 8
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %92 = load i32, ptr %39, align 4
  %93 = load i32, ptr %91, align 4
  %94 = mul i32 %93, -2048144777
  %95 = add i32 %94, %92
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = freeze i32 %97
  store i32 %98, ptr %39, align 4
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %100 = load i32, ptr %40, align 8
  %101 = load i32, ptr %99, align 8
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %100
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = freeze i32 %105
  store i32 %106, ptr %40, align 8
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %108 = load i32, ptr %41, align 4
  %109 = load i32, ptr %107, align 4
  %110 = mul i32 %109, -2048144777
  %111 = add i32 %110, %108
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 13)
  %113 = mul i32 %112, -1640531535
  %114 = freeze i32 %113
  store i32 %114, ptr %41, align 4
  %115 = load i32, ptr %45, align 8
  %116 = sub i32 16, %115
  %117 = zext i32 %116 to i64
  %118 = add nuw nsw i64 %117, 17
  store i32 0, ptr %45, align 8
  %119 = icmp ugt i32 %116, 14
  br i1 %119, label %154, label %120

120:                                              ; preds = %17
  %121 = getelementptr inbounds nuw i8, ptr %18, i64 %118
  %122 = load i32, ptr %38, align 8
  %123 = load i32, ptr %121, align 1
  %124 = mul i32 %123, -2048144777
  %125 = add i32 %124, %122
  %126 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 13)
  %127 = mul i32 %126, -1640531535
  %128 = freeze i32 %127
  store i32 %128, ptr %38, align 8
  %129 = getelementptr inbounds nuw i8, ptr %121, i64 4
  %130 = load i32, ptr %39, align 4
  %131 = load i32, ptr %129, align 1
  %132 = mul i32 %131, -2048144777
  %133 = add i32 %132, %130
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 13)
  %135 = mul i32 %134, -1640531535
  %136 = freeze i32 %135
  store i32 %136, ptr %39, align 4
  %137 = getelementptr inbounds nuw i8, ptr %121, i64 8
  %138 = load i32, ptr %40, align 8
  %139 = load i32, ptr %137, align 1
  %140 = mul i32 %139, -2048144777
  %141 = add i32 %140, %138
  %142 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 13)
  %143 = mul i32 %142, -1640531535
  %144 = freeze i32 %143
  store i32 %144, ptr %40, align 8
  %145 = getelementptr inbounds nuw i8, ptr %121, i64 12
  %146 = load i32, ptr %41, align 4
  %147 = load i32, ptr %145, align 1
  %148 = mul i32 %147, -2048144777
  %149 = add i32 %148, %146
  %150 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 13)
  %151 = mul i32 %150, -1640531535
  %152 = freeze i32 %151
  store i32 %152, ptr %41, align 4
  %153 = add nuw nsw i64 %117, 33
  br label %154

154:                                              ; preds = %120, %17
  %155 = phi i32 [ %114, %17 ], [ %152, %120 ]
  %156 = phi i64 [ %118, %17 ], [ %153, %120 ]
  %157 = icmp slt i64 %156, 47
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr inbounds nuw i8, ptr %18, i64 %156
  %160 = sub nsw i64 47, %156
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %159, i64 %160, i1 false)
  %161 = trunc i64 %160 to i32
  store i32 %161, ptr %45, align 8
  br label %162

162:                                              ; preds = %154, %158
  %163 = load i32, ptr %44, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %162
  %166 = load i32, ptr %38, align 8
  %167 = tail call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 1)
  %168 = load i32, ptr %39, align 4
  %169 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 7)
  %170 = add i32 %169, %167
  %171 = load i32, ptr %40, align 8
  %172 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 12)
  %173 = add i32 %170, %172
  %174 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 18)
  %175 = add i32 %173, %174
  br label %179

176:                                              ; preds = %162
  %177 = load i32, ptr %40, align 8
  %178 = add i32 %177, 374761393
  br label %179

179:                                              ; preds = %176, %165
  %180 = phi i32 [ %175, %165 ], [ %178, %176 ]
  %181 = load i32, ptr %19, align 8
  %182 = add i32 %181, %180
  %183 = load i32, ptr %45, align 8
  %184 = and i32 %183, 15
  switch i32 %184, label %332 [
    i32 12, label %185
    i32 8, label %192
    i32 4, label %201
    i32 13, label %209
    i32 9, label %216
    i32 5, label %225
    i32 14, label %240
    i32 10, label %247
    i32 6, label %256
    i32 15, label %278
    i32 11, label %285
    i32 7, label %294
    i32 3, label %303
    i32 2, label %313
    i32 1, label %323
    i32 0, label %333
  ]

185:                                              ; preds = %179
  %186 = load i32, ptr %42, align 8
  %187 = mul i32 %186, -1028477379
  %188 = add i32 %187, %182
  %189 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %190 = tail call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 17)
  %191 = mul i32 %190, 668265263
  br label %192

192:                                              ; preds = %185, %179
  %193 = phi ptr [ %42, %179 ], [ %189, %185 ]
  %194 = phi i32 [ %182, %179 ], [ %191, %185 ]
  %195 = load i32, ptr %193, align 4
  %196 = mul i32 %195, -1028477379
  %197 = add i32 %196, %194
  %198 = getelementptr inbounds nuw i8, ptr %193, i64 4
  %199 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 17)
  %200 = mul i32 %199, 668265263
  br label %201

201:                                              ; preds = %192, %179
  %202 = phi ptr [ %42, %179 ], [ %198, %192 ]
  %203 = phi i32 [ %182, %179 ], [ %200, %192 ]
  %204 = load i32, ptr %202, align 4
  %205 = mul i32 %204, -1028477379
  %206 = add i32 %205, %203
  %207 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 17)
  %208 = mul i32 %207, 668265263
  br label %333

209:                                              ; preds = %179
  %210 = load i32, ptr %42, align 8
  %211 = mul i32 %210, -1028477379
  %212 = add i32 %211, %182
  %213 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %214 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 17)
  %215 = mul i32 %214, 668265263
  br label %216

216:                                              ; preds = %209, %179
  %217 = phi ptr [ %42, %179 ], [ %213, %209 ]
  %218 = phi i32 [ %182, %179 ], [ %215, %209 ]
  %219 = load i32, ptr %217, align 4
  %220 = mul i32 %219, -1028477379
  %221 = add i32 %220, %218
  %222 = getelementptr inbounds nuw i8, ptr %217, i64 4
  %223 = tail call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 17)
  %224 = mul i32 %223, 668265263
  br label %225

225:                                              ; preds = %216, %179
  %226 = phi ptr [ %42, %179 ], [ %222, %216 ]
  %227 = phi i32 [ %182, %179 ], [ %224, %216 ]
  %228 = load i32, ptr %226, align 4
  %229 = mul i32 %228, -1028477379
  %230 = add i32 %229, %227
  %231 = getelementptr inbounds nuw i8, ptr %226, i64 4
  %232 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 17)
  %233 = mul i32 %232, 668265263
  %234 = load i8, ptr %231, align 1
  %235 = zext i8 %234 to i32
  %236 = mul i32 %235, 374761393
  %237 = add i32 %233, %236
  %238 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 11)
  %239 = mul i32 %238, -1640531535
  br label %333

240:                                              ; preds = %179
  %241 = load i32, ptr %42, align 8
  %242 = mul i32 %241, -1028477379
  %243 = add i32 %242, %182
  %244 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %245 = tail call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 17)
  %246 = mul i32 %245, 668265263
  br label %247

247:                                              ; preds = %240, %179
  %248 = phi ptr [ %42, %179 ], [ %244, %240 ]
  %249 = phi i32 [ %182, %179 ], [ %246, %240 ]
  %250 = load i32, ptr %248, align 4
  %251 = mul i32 %250, -1028477379
  %252 = add i32 %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %248, i64 4
  %254 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 17)
  %255 = mul i32 %254, 668265263
  br label %256

256:                                              ; preds = %247, %179
  %257 = phi ptr [ %42, %179 ], [ %253, %247 ]
  %258 = phi i32 [ %182, %179 ], [ %255, %247 ]
  %259 = load i32, ptr %257, align 4
  %260 = mul i32 %259, -1028477379
  %261 = add i32 %260, %258
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 4
  %263 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 17)
  %264 = mul i32 %263, 668265263
  %265 = getelementptr inbounds nuw i8, ptr %257, i64 5
  %266 = load i8, ptr %262, align 1
  %267 = zext i8 %266 to i32
  %268 = mul i32 %267, 374761393
  %269 = add i32 %264, %268
  %270 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 11)
  %271 = mul i32 %270, -1640531535
  %272 = load i8, ptr %265, align 1
  %273 = zext i8 %272 to i32
  %274 = mul i32 %273, 374761393
  %275 = add i32 %271, %274
  %276 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 11)
  %277 = mul i32 %276, -1640531535
  br label %333

278:                                              ; preds = %179
  %279 = load i32, ptr %42, align 8
  %280 = mul i32 %279, -1028477379
  %281 = add i32 %280, %182
  %282 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %283 = tail call i32 @llvm.fshl.i32(i32 %281, i32 %281, i32 17)
  %284 = mul i32 %283, 668265263
  br label %285

285:                                              ; preds = %278, %179
  %286 = phi ptr [ %42, %179 ], [ %282, %278 ]
  %287 = phi i32 [ %182, %179 ], [ %284, %278 ]
  %288 = load i32, ptr %286, align 4
  %289 = mul i32 %288, -1028477379
  %290 = add i32 %289, %287
  %291 = getelementptr inbounds nuw i8, ptr %286, i64 4
  %292 = tail call i32 @llvm.fshl.i32(i32 %290, i32 %290, i32 17)
  %293 = mul i32 %292, 668265263
  br label %294

294:                                              ; preds = %285, %179
  %295 = phi ptr [ %42, %179 ], [ %291, %285 ]
  %296 = phi i32 [ %182, %179 ], [ %293, %285 ]
  %297 = load i32, ptr %295, align 4
  %298 = mul i32 %297, -1028477379
  %299 = add i32 %298, %296
  %300 = getelementptr inbounds nuw i8, ptr %295, i64 4
  %301 = tail call i32 @llvm.fshl.i32(i32 %299, i32 %299, i32 17)
  %302 = mul i32 %301, 668265263
  br label %303

303:                                              ; preds = %294, %179
  %304 = phi ptr [ %42, %179 ], [ %300, %294 ]
  %305 = phi i32 [ %182, %179 ], [ %302, %294 ]
  %306 = getelementptr inbounds nuw i8, ptr %304, i64 1
  %307 = load i8, ptr %304, align 1
  %308 = zext i8 %307 to i32
  %309 = mul i32 %308, 374761393
  %310 = add i32 %309, %305
  %311 = tail call i32 @llvm.fshl.i32(i32 %310, i32 %310, i32 11)
  %312 = mul i32 %311, -1640531535
  br label %313

313:                                              ; preds = %303, %179
  %314 = phi ptr [ %42, %179 ], [ %306, %303 ]
  %315 = phi i32 [ %182, %179 ], [ %312, %303 ]
  %316 = getelementptr inbounds nuw i8, ptr %314, i64 1
  %317 = load i8, ptr %314, align 1
  %318 = zext i8 %317 to i32
  %319 = mul i32 %318, 374761393
  %320 = add i32 %319, %315
  %321 = tail call i32 @llvm.fshl.i32(i32 %320, i32 %320, i32 11)
  %322 = mul i32 %321, -1640531535
  br label %323

323:                                              ; preds = %313, %179
  %324 = phi ptr [ %42, %179 ], [ %316, %313 ]
  %325 = phi i32 [ %182, %179 ], [ %322, %313 ]
  %326 = load i8, ptr %324, align 1
  %327 = zext i8 %326 to i32
  %328 = mul i32 %327, 374761393
  %329 = add i32 %328, %325
  %330 = tail call i32 @llvm.fshl.i32(i32 %329, i32 %329, i32 11)
  %331 = mul i32 %330, -1640531535
  br label %333

332:                                              ; preds = %179
  unreachable

333:                                              ; preds = %179, %201, %225, %256, %323
  %334 = phi i32 [ %277, %256 ], [ %239, %225 ], [ %208, %201 ], [ %182, %179 ], [ %331, %323 ]
  %335 = lshr i32 %334, 15
  %336 = xor i32 %335, %334
  %337 = mul i32 %336, -2048144777
  %338 = lshr i32 %337, 13
  %339 = xor i32 %338, %337
  %340 = mul i32 %339, -1028477379
  %341 = lshr i32 %340, 16
  %342 = xor i32 %341, %340
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %342
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_40_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %18) #7
  %19 = add i32 %16, 606290984
  %20 = add i32 %16, -2048144777
  %21 = add i32 %16, 1640531535
  store i64 4294967336, ptr %18, align 8
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %19, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 %20, ptr %23, align 4
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %16, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 %21, ptr %25, align 4
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %26, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 40
  %28 = load i32, ptr %25, align 4
  %29 = load i32, ptr %24, align 8
  %30 = load i32, ptr %23, align 4
  %31 = load i32, ptr %22, align 8
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %33 = trunc i64 %0 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %31
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = lshr i64 %0, 32
  %40 = trunc nuw i64 %39 to i32
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %30
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = freeze i32 %44
  %46 = trunc i64 %1 to i32
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %29
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = freeze i32 %50
  %52 = lshr i64 %1, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %28
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  %59 = trunc i64 %2 to i32
  %60 = mul i32 %59, -2048144777
  %61 = add i32 %60, %38
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 13)
  %63 = mul i32 %62, -1640531535
  %64 = freeze i32 %63
  %65 = lshr i64 %2, 32
  %66 = trunc nuw i64 %65 to i32
  %67 = mul i32 %66, -2048144777
  %68 = add i32 %67, %45
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 13)
  %70 = mul i32 %69, -1640531535
  %71 = freeze i32 %70
  %72 = trunc i64 %3 to i32
  %73 = mul i32 %72, -2048144777
  %74 = add i32 %73, %51
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 13)
  %76 = mul i32 %75, -1640531535
  %77 = freeze i32 %76
  %78 = lshr i64 %3, 32
  %79 = trunc nuw i64 %78 to i32
  %80 = mul i32 %79, -2048144777
  %81 = add i32 %80, %58
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 13)
  %83 = mul i32 %82, -1640531535
  %84 = freeze i32 %83
  store i32 %64, ptr %22, align 8
  store i32 %71, ptr %23, align 4
  store i32 %77, ptr %24, align 8
  store i32 %84, ptr %25, align 4
  store i64 %4, ptr %26, align 8
  store i32 8, ptr %27, align 8
  %85 = load i32, ptr %32, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %17
  %88 = load i32, ptr %22, align 8
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 1)
  %90 = load i32, ptr %23, align 4
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 7)
  %92 = add i32 %91, %89
  %93 = load i32, ptr %24, align 8
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 12)
  %95 = add i32 %92, %94
  %96 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 18)
  %97 = add i32 %95, %96
  br label %101

98:                                               ; preds = %17
  %99 = load i32, ptr %24, align 8
  %100 = add i32 %99, 374761393
  br label %101

101:                                              ; preds = %98, %87
  %102 = phi i32 [ %97, %87 ], [ %100, %98 ]
  %103 = load i32, ptr %18, align 8
  %104 = add i32 %103, %102
  %105 = load i32, ptr %27, align 8
  %106 = and i32 %105, 15
  switch i32 %106, label %254 [
    i32 12, label %107
    i32 8, label %114
    i32 4, label %123
    i32 13, label %131
    i32 9, label %138
    i32 5, label %147
    i32 14, label %162
    i32 10, label %169
    i32 6, label %178
    i32 15, label %200
    i32 11, label %207
    i32 7, label %216
    i32 3, label %225
    i32 2, label %235
    i32 1, label %245
    i32 0, label %255
  ]

107:                                              ; preds = %101
  %108 = load i32, ptr %26, align 8
  %109 = mul i32 %108, -1028477379
  %110 = add i32 %109, %104
  %111 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 17)
  %113 = mul i32 %112, 668265263
  br label %114

114:                                              ; preds = %107, %101
  %115 = phi ptr [ %26, %101 ], [ %111, %107 ]
  %116 = phi i32 [ %104, %101 ], [ %113, %107 ]
  %117 = load i32, ptr %115, align 4
  %118 = mul i32 %117, -1028477379
  %119 = add i32 %118, %116
  %120 = getelementptr inbounds nuw i8, ptr %115, i64 4
  %121 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 17)
  %122 = mul i32 %121, 668265263
  br label %123

123:                                              ; preds = %114, %101
  %124 = phi ptr [ %26, %101 ], [ %120, %114 ]
  %125 = phi i32 [ %104, %101 ], [ %122, %114 ]
  %126 = load i32, ptr %124, align 4
  %127 = mul i32 %126, -1028477379
  %128 = add i32 %127, %125
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 17)
  %130 = mul i32 %129, 668265263
  br label %255

131:                                              ; preds = %101
  %132 = load i32, ptr %26, align 8
  %133 = mul i32 %132, -1028477379
  %134 = add i32 %133, %104
  %135 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %136 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 17)
  %137 = mul i32 %136, 668265263
  br label %138

138:                                              ; preds = %131, %101
  %139 = phi ptr [ %26, %101 ], [ %135, %131 ]
  %140 = phi i32 [ %104, %101 ], [ %137, %131 ]
  %141 = load i32, ptr %139, align 4
  %142 = mul i32 %141, -1028477379
  %143 = add i32 %142, %140
  %144 = getelementptr inbounds nuw i8, ptr %139, i64 4
  %145 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 17)
  %146 = mul i32 %145, 668265263
  br label %147

147:                                              ; preds = %138, %101
  %148 = phi ptr [ %26, %101 ], [ %144, %138 ]
  %149 = phi i32 [ %104, %101 ], [ %146, %138 ]
  %150 = load i32, ptr %148, align 4
  %151 = mul i32 %150, -1028477379
  %152 = add i32 %151, %149
  %153 = getelementptr inbounds nuw i8, ptr %148, i64 4
  %154 = tail call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 17)
  %155 = mul i32 %154, 668265263
  %156 = load i8, ptr %153, align 1
  %157 = zext i8 %156 to i32
  %158 = mul i32 %157, 374761393
  %159 = add i32 %155, %158
  %160 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 11)
  %161 = mul i32 %160, -1640531535
  br label %255

162:                                              ; preds = %101
  %163 = load i32, ptr %26, align 8
  %164 = mul i32 %163, -1028477379
  %165 = add i32 %164, %104
  %166 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %167 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 17)
  %168 = mul i32 %167, 668265263
  br label %169

169:                                              ; preds = %162, %101
  %170 = phi ptr [ %26, %101 ], [ %166, %162 ]
  %171 = phi i32 [ %104, %101 ], [ %168, %162 ]
  %172 = load i32, ptr %170, align 4
  %173 = mul i32 %172, -1028477379
  %174 = add i32 %173, %171
  %175 = getelementptr inbounds nuw i8, ptr %170, i64 4
  %176 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 17)
  %177 = mul i32 %176, 668265263
  br label %178

178:                                              ; preds = %169, %101
  %179 = phi ptr [ %26, %101 ], [ %175, %169 ]
  %180 = phi i32 [ %104, %101 ], [ %177, %169 ]
  %181 = load i32, ptr %179, align 4
  %182 = mul i32 %181, -1028477379
  %183 = add i32 %182, %180
  %184 = getelementptr inbounds nuw i8, ptr %179, i64 4
  %185 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 17)
  %186 = mul i32 %185, 668265263
  %187 = getelementptr inbounds nuw i8, ptr %179, i64 5
  %188 = load i8, ptr %184, align 1
  %189 = zext i8 %188 to i32
  %190 = mul i32 %189, 374761393
  %191 = add i32 %186, %190
  %192 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 11)
  %193 = mul i32 %192, -1640531535
  %194 = load i8, ptr %187, align 1
  %195 = zext i8 %194 to i32
  %196 = mul i32 %195, 374761393
  %197 = add i32 %193, %196
  %198 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 11)
  %199 = mul i32 %198, -1640531535
  br label %255

200:                                              ; preds = %101
  %201 = load i32, ptr %26, align 8
  %202 = mul i32 %201, -1028477379
  %203 = add i32 %202, %104
  %204 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %205 = tail call i32 @llvm.fshl.i32(i32 %203, i32 %203, i32 17)
  %206 = mul i32 %205, 668265263
  br label %207

207:                                              ; preds = %200, %101
  %208 = phi ptr [ %26, %101 ], [ %204, %200 ]
  %209 = phi i32 [ %104, %101 ], [ %206, %200 ]
  %210 = load i32, ptr %208, align 4
  %211 = mul i32 %210, -1028477379
  %212 = add i32 %211, %209
  %213 = getelementptr inbounds nuw i8, ptr %208, i64 4
  %214 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 17)
  %215 = mul i32 %214, 668265263
  br label %216

216:                                              ; preds = %207, %101
  %217 = phi ptr [ %26, %101 ], [ %213, %207 ]
  %218 = phi i32 [ %104, %101 ], [ %215, %207 ]
  %219 = load i32, ptr %217, align 4
  %220 = mul i32 %219, -1028477379
  %221 = add i32 %220, %218
  %222 = getelementptr inbounds nuw i8, ptr %217, i64 4
  %223 = tail call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 17)
  %224 = mul i32 %223, 668265263
  br label %225

225:                                              ; preds = %216, %101
  %226 = phi ptr [ %26, %101 ], [ %222, %216 ]
  %227 = phi i32 [ %104, %101 ], [ %224, %216 ]
  %228 = getelementptr inbounds nuw i8, ptr %226, i64 1
  %229 = load i8, ptr %226, align 1
  %230 = zext i8 %229 to i32
  %231 = mul i32 %230, 374761393
  %232 = add i32 %231, %227
  %233 = tail call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 11)
  %234 = mul i32 %233, -1640531535
  br label %235

235:                                              ; preds = %225, %101
  %236 = phi ptr [ %26, %101 ], [ %228, %225 ]
  %237 = phi i32 [ %104, %101 ], [ %234, %225 ]
  %238 = getelementptr inbounds nuw i8, ptr %236, i64 1
  %239 = load i8, ptr %236, align 1
  %240 = zext i8 %239 to i32
  %241 = mul i32 %240, 374761393
  %242 = add i32 %241, %237
  %243 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 11)
  %244 = mul i32 %243, -1640531535
  br label %245

245:                                              ; preds = %235, %101
  %246 = phi ptr [ %26, %101 ], [ %238, %235 ]
  %247 = phi i32 [ %104, %101 ], [ %244, %235 ]
  %248 = load i8, ptr %246, align 1
  %249 = zext i8 %248 to i32
  %250 = mul i32 %249, 374761393
  %251 = add i32 %250, %247
  %252 = tail call i32 @llvm.fshl.i32(i32 %251, i32 %251, i32 11)
  %253 = mul i32 %252, -1640531535
  br label %255

254:                                              ; preds = %101
  unreachable

255:                                              ; preds = %101, %123, %147, %178, %245
  %256 = phi i32 [ %199, %178 ], [ %161, %147 ], [ %130, %123 ], [ %104, %101 ], [ %253, %245 ]
  %257 = lshr i32 %256, 15
  %258 = xor i32 %257, %256
  %259 = mul i32 %258, -2048144777
  %260 = lshr i32 %259, 13
  %261 = xor i32 %260, %259
  %262 = mul i32 %261, -1028477379
  %263 = lshr i32 %262, 16
  %264 = xor i32 %263, %262
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %18) #7
  ret i32 %264
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_1_47(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #7
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #7
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967344, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %35, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %36, ptr %39, align 4
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %16, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %46 = trunc i64 %0 to i8
  store i8 %46, ptr %42, align 8
  store i32 1, ptr %45, align 8
  %47 = getelementptr inbounds nuw i8, ptr %19, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %47, ptr noundef nonnull readonly align 1 dereferenceable(15) %43, i64 15, i1 false)
  %48 = load i32, ptr %42, align 8
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %35
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = freeze i32 %52
  store i32 %53, ptr %38, align 8
  %54 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %55 = load i32, ptr %39, align 4
  %56 = load i32, ptr %54, align 4
  %57 = mul i32 %56, -2048144777
  %58 = add i32 %57, %55
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13)
  %60 = mul i32 %59, -1640531535
  %61 = freeze i32 %60
  store i32 %61, ptr %39, align 4
  %62 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %63 = load i32, ptr %40, align 8
  %64 = load i32, ptr %62, align 8
  %65 = mul i32 %64, -2048144777
  %66 = add i32 %65, %63
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 13)
  %68 = mul i32 %67, -1640531535
  %69 = freeze i32 %68
  store i32 %69, ptr %40, align 8
  %70 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %71 = load i32, ptr %41, align 4
  %72 = load i32, ptr %70, align 4
  %73 = mul i32 %72, -2048144777
  %74 = add i32 %73, %71
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 13)
  %76 = mul i32 %75, -1640531535
  %77 = freeze i32 %76
  store i32 %77, ptr %41, align 4
  %78 = load i32, ptr %45, align 8
  %79 = sub i32 16, %78
  %80 = zext i32 %79 to i64
  %81 = add nuw nsw i64 %80, 1
  store i32 0, ptr %45, align 8
  %82 = icmp ugt i32 %79, 31
  br i1 %82, label %119, label %83

83:                                               ; preds = %17, %83
  %84 = phi i64 [ %117, %83 ], [ %81, %17 ]
  %85 = getelementptr inbounds nuw i8, ptr %18, i64 %84
  %86 = load i32, ptr %38, align 8
  %87 = load i32, ptr %85, align 1
  %88 = mul i32 %87, -2048144777
  %89 = add i32 %88, %86
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = mul i32 %90, -1640531535
  %92 = freeze i32 %91
  store i32 %92, ptr %38, align 8
  %93 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %94 = load i32, ptr %39, align 4
  %95 = load i32, ptr %93, align 1
  %96 = mul i32 %95, -2048144777
  %97 = add i32 %96, %94
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13)
  %99 = mul i32 %98, -1640531535
  %100 = freeze i32 %99
  store i32 %100, ptr %39, align 4
  %101 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %102 = load i32, ptr %40, align 8
  %103 = load i32, ptr %101, align 1
  %104 = mul i32 %103, -2048144777
  %105 = add i32 %104, %102
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 13)
  %107 = mul i32 %106, -1640531535
  %108 = freeze i32 %107
  store i32 %108, ptr %40, align 8
  %109 = getelementptr inbounds nuw i8, ptr %85, i64 12
  %110 = load i32, ptr %41, align 4
  %111 = load i32, ptr %109, align 1
  %112 = mul i32 %111, -2048144777
  %113 = add i32 %112, %110
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 13)
  %115 = mul i32 %114, -1640531535
  %116 = freeze i32 %115
  store i32 %116, ptr %41, align 4
  %117 = add nuw nsw i64 %84, 16
  %118 = icmp samesign ugt i64 %84, 16
  br i1 %118, label %119, label %83

119:                                              ; preds = %83, %17
  %120 = phi i32 [ %77, %17 ], [ %116, %83 ]
  %121 = phi i64 [ %81, %17 ], [ %117, %83 ]
  %122 = icmp samesign ult i64 %121, 48
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = getelementptr inbounds nuw i8, ptr %18, i64 %121
  %125 = sub nuw nsw i64 48, %121
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %124, i64 %125, i1 false)
  %126 = trunc nuw nsw i64 %125 to i32
  store i32 %126, ptr %45, align 8
  br label %127

127:                                              ; preds = %119, %123
  %128 = load i32, ptr %44, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %127
  %131 = load i32, ptr %38, align 8
  %132 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 1)
  %133 = load i32, ptr %39, align 4
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 7)
  %135 = add i32 %134, %132
  %136 = load i32, ptr %40, align 8
  %137 = tail call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 12)
  %138 = add i32 %135, %137
  %139 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 18)
  %140 = add i32 %138, %139
  br label %144

141:                                              ; preds = %127
  %142 = load i32, ptr %40, align 8
  %143 = add i32 %142, 374761393
  br label %144

144:                                              ; preds = %141, %130
  %145 = phi i32 [ %140, %130 ], [ %143, %141 ]
  %146 = load i32, ptr %19, align 8
  %147 = add i32 %146, %145
  %148 = load i32, ptr %45, align 8
  %149 = and i32 %148, 15
  switch i32 %149, label %297 [
    i32 12, label %150
    i32 8, label %157
    i32 4, label %166
    i32 13, label %174
    i32 9, label %181
    i32 5, label %190
    i32 14, label %205
    i32 10, label %212
    i32 6, label %221
    i32 15, label %243
    i32 11, label %250
    i32 7, label %259
    i32 3, label %268
    i32 2, label %278
    i32 1, label %288
    i32 0, label %298
  ]

150:                                              ; preds = %144
  %151 = load i32, ptr %42, align 8
  %152 = mul i32 %151, -1028477379
  %153 = add i32 %152, %147
  %154 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %155 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 17)
  %156 = mul i32 %155, 668265263
  br label %157

157:                                              ; preds = %150, %144
  %158 = phi ptr [ %42, %144 ], [ %154, %150 ]
  %159 = phi i32 [ %147, %144 ], [ %156, %150 ]
  %160 = load i32, ptr %158, align 4
  %161 = mul i32 %160, -1028477379
  %162 = add i32 %161, %159
  %163 = getelementptr inbounds nuw i8, ptr %158, i64 4
  %164 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 17)
  %165 = mul i32 %164, 668265263
  br label %166

166:                                              ; preds = %157, %144
  %167 = phi ptr [ %42, %144 ], [ %163, %157 ]
  %168 = phi i32 [ %147, %144 ], [ %165, %157 ]
  %169 = load i32, ptr %167, align 4
  %170 = mul i32 %169, -1028477379
  %171 = add i32 %170, %168
  %172 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 17)
  %173 = mul i32 %172, 668265263
  br label %298

174:                                              ; preds = %144
  %175 = load i32, ptr %42, align 8
  %176 = mul i32 %175, -1028477379
  %177 = add i32 %176, %147
  %178 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %179 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 17)
  %180 = mul i32 %179, 668265263
  br label %181

181:                                              ; preds = %174, %144
  %182 = phi ptr [ %42, %144 ], [ %178, %174 ]
  %183 = phi i32 [ %147, %144 ], [ %180, %174 ]
  %184 = load i32, ptr %182, align 4
  %185 = mul i32 %184, -1028477379
  %186 = add i32 %185, %183
  %187 = getelementptr inbounds nuw i8, ptr %182, i64 4
  %188 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 17)
  %189 = mul i32 %188, 668265263
  br label %190

190:                                              ; preds = %181, %144
  %191 = phi ptr [ %42, %144 ], [ %187, %181 ]
  %192 = phi i32 [ %147, %144 ], [ %189, %181 ]
  %193 = load i32, ptr %191, align 4
  %194 = mul i32 %193, -1028477379
  %195 = add i32 %194, %192
  %196 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %197 = tail call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 17)
  %198 = mul i32 %197, 668265263
  %199 = load i8, ptr %196, align 1
  %200 = zext i8 %199 to i32
  %201 = mul i32 %200, 374761393
  %202 = add i32 %198, %201
  %203 = tail call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 11)
  %204 = mul i32 %203, -1640531535
  br label %298

205:                                              ; preds = %144
  %206 = load i32, ptr %42, align 8
  %207 = mul i32 %206, -1028477379
  %208 = add i32 %207, %147
  %209 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %210 = tail call i32 @llvm.fshl.i32(i32 %208, i32 %208, i32 17)
  %211 = mul i32 %210, 668265263
  br label %212

212:                                              ; preds = %205, %144
  %213 = phi ptr [ %42, %144 ], [ %209, %205 ]
  %214 = phi i32 [ %147, %144 ], [ %211, %205 ]
  %215 = load i32, ptr %213, align 4
  %216 = mul i32 %215, -1028477379
  %217 = add i32 %216, %214
  %218 = getelementptr inbounds nuw i8, ptr %213, i64 4
  %219 = tail call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 17)
  %220 = mul i32 %219, 668265263
  br label %221

221:                                              ; preds = %212, %144
  %222 = phi ptr [ %42, %144 ], [ %218, %212 ]
  %223 = phi i32 [ %147, %144 ], [ %220, %212 ]
  %224 = load i32, ptr %222, align 4
  %225 = mul i32 %224, -1028477379
  %226 = add i32 %225, %223
  %227 = getelementptr inbounds nuw i8, ptr %222, i64 4
  %228 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 17)
  %229 = mul i32 %228, 668265263
  %230 = getelementptr inbounds nuw i8, ptr %222, i64 5
  %231 = load i8, ptr %227, align 1
  %232 = zext i8 %231 to i32
  %233 = mul i32 %232, 374761393
  %234 = add i32 %229, %233
  %235 = tail call i32 @llvm.fshl.i32(i32 %234, i32 %234, i32 11)
  %236 = mul i32 %235, -1640531535
  %237 = load i8, ptr %230, align 1
  %238 = zext i8 %237 to i32
  %239 = mul i32 %238, 374761393
  %240 = add i32 %236, %239
  %241 = tail call i32 @llvm.fshl.i32(i32 %240, i32 %240, i32 11)
  %242 = mul i32 %241, -1640531535
  br label %298

243:                                              ; preds = %144
  %244 = load i32, ptr %42, align 8
  %245 = mul i32 %244, -1028477379
  %246 = add i32 %245, %147
  %247 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %248 = tail call i32 @llvm.fshl.i32(i32 %246, i32 %246, i32 17)
  %249 = mul i32 %248, 668265263
  br label %250

250:                                              ; preds = %243, %144
  %251 = phi ptr [ %42, %144 ], [ %247, %243 ]
  %252 = phi i32 [ %147, %144 ], [ %249, %243 ]
  %253 = load i32, ptr %251, align 4
  %254 = mul i32 %253, -1028477379
  %255 = add i32 %254, %252
  %256 = getelementptr inbounds nuw i8, ptr %251, i64 4
  %257 = tail call i32 @llvm.fshl.i32(i32 %255, i32 %255, i32 17)
  %258 = mul i32 %257, 668265263
  br label %259

259:                                              ; preds = %250, %144
  %260 = phi ptr [ %42, %144 ], [ %256, %250 ]
  %261 = phi i32 [ %147, %144 ], [ %258, %250 ]
  %262 = load i32, ptr %260, align 4
  %263 = mul i32 %262, -1028477379
  %264 = add i32 %263, %261
  %265 = getelementptr inbounds nuw i8, ptr %260, i64 4
  %266 = tail call i32 @llvm.fshl.i32(i32 %264, i32 %264, i32 17)
  %267 = mul i32 %266, 668265263
  br label %268

268:                                              ; preds = %259, %144
  %269 = phi ptr [ %42, %144 ], [ %265, %259 ]
  %270 = phi i32 [ %147, %144 ], [ %267, %259 ]
  %271 = getelementptr inbounds nuw i8, ptr %269, i64 1
  %272 = load i8, ptr %269, align 1
  %273 = zext i8 %272 to i32
  %274 = mul i32 %273, 374761393
  %275 = add i32 %274, %270
  %276 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 11)
  %277 = mul i32 %276, -1640531535
  br label %278

278:                                              ; preds = %268, %144
  %279 = phi ptr [ %42, %144 ], [ %271, %268 ]
  %280 = phi i32 [ %147, %144 ], [ %277, %268 ]
  %281 = getelementptr inbounds nuw i8, ptr %279, i64 1
  %282 = load i8, ptr %279, align 1
  %283 = zext i8 %282 to i32
  %284 = mul i32 %283, 374761393
  %285 = add i32 %284, %280
  %286 = tail call i32 @llvm.fshl.i32(i32 %285, i32 %285, i32 11)
  %287 = mul i32 %286, -1640531535
  br label %288

288:                                              ; preds = %278, %144
  %289 = phi ptr [ %42, %144 ], [ %281, %278 ]
  %290 = phi i32 [ %147, %144 ], [ %287, %278 ]
  %291 = load i8, ptr %289, align 1
  %292 = zext i8 %291 to i32
  %293 = mul i32 %292, 374761393
  %294 = add i32 %293, %290
  %295 = tail call i32 @llvm.fshl.i32(i32 %294, i32 %294, i32 11)
  %296 = mul i32 %295, -1640531535
  br label %298

297:                                              ; preds = %144
  unreachable

298:                                              ; preds = %144, %166, %190, %221, %288
  %299 = phi i32 [ %242, %221 ], [ %204, %190 ], [ %173, %166 ], [ %147, %144 ], [ %296, %288 ]
  %300 = lshr i32 %299, 15
  %301 = xor i32 %300, %299
  %302 = mul i32 %301, -2048144777
  %303 = lshr i32 %302, 13
  %304 = xor i32 %303, %302
  %305 = mul i32 %304, -1028477379
  %306 = lshr i32 %305, 16
  %307 = xor i32 %306, %305
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %307
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_33_31(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #7
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #7
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967329, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %35, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %36, ptr %39, align 4
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %16, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %42, i8 0, i64 20, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %45 = getelementptr inbounds nuw i8, ptr %18, i64 33
  %46 = load i32, ptr %38, align 8
  %47 = load i32, ptr %18, align 16
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %46
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  store i32 %52, ptr %38, align 8
  %53 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %54 = load i32, ptr %39, align 4
  %55 = load i32, ptr %53, align 4
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %54
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  store i32 %60, ptr %39, align 4
  %61 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %62 = load i32, ptr %40, align 8
  %63 = load i32, ptr %61, align 8
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %70 = load i32, ptr %41, align 4
  %71 = load i32, ptr %69, align 4
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %70
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = freeze i32 %75
  store i32 %76, ptr %41, align 4
  %77 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %78 = load i32, ptr %38, align 8
  %79 = load i32, ptr %77, align 16
  %80 = mul i32 %79, -2048144777
  %81 = add i32 %80, %78
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 13)
  %83 = mul i32 %82, -1640531535
  %84 = freeze i32 %83
  store i32 %84, ptr %38, align 8
  %85 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %86 = load i32, ptr %39, align 4
  %87 = load i32, ptr %85, align 4
  %88 = mul i32 %87, -2048144777
  %89 = add i32 %88, %86
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = mul i32 %90, -1640531535
  %92 = freeze i32 %91
  store i32 %92, ptr %39, align 4
  %93 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %94 = load i32, ptr %40, align 8
  %95 = load i32, ptr %93, align 8
  %96 = mul i32 %95, -2048144777
  %97 = add i32 %96, %94
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13)
  %99 = mul i32 %98, -1640531535
  %100 = freeze i32 %99
  store i32 %100, ptr %40, align 8
  %101 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %102 = load i32, ptr %41, align 4
  %103 = load i32, ptr %101, align 4
  %104 = mul i32 %103, -2048144777
  %105 = add i32 %104, %102
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 13)
  %107 = mul i32 %106, -1640531535
  %108 = freeze i32 %107
  store i32 %108, ptr %41, align 4
  %109 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %110 = load i8, ptr %109, align 16
  store i8 %110, ptr %42, align 8
  store i32 1, ptr %44, align 8
  %111 = load i32, ptr %19, align 8
  %112 = add i32 %111, 31
  store i32 %112, ptr %19, align 8
  %113 = load i32, ptr %43, align 4
  %114 = or i32 %113, 1
  store i32 %114, ptr %43, align 4
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %115, ptr noundef nonnull readonly align 1 dereferenceable(15) %45, i64 15, i1 false)
  %116 = load i32, ptr %38, align 8
  %117 = load i32, ptr %42, align 8
  %118 = mul i32 %117, -2048144777
  %119 = add i32 %118, %116
  %120 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 13)
  %121 = mul i32 %120, -1640531535
  %122 = freeze i32 %121
  store i32 %122, ptr %38, align 8
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %124 = load i32, ptr %39, align 4
  %125 = load i32, ptr %123, align 4
  %126 = mul i32 %125, -2048144777
  %127 = add i32 %126, %124
  %128 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 13)
  %129 = mul i32 %128, -1640531535
  %130 = freeze i32 %129
  store i32 %130, ptr %39, align 4
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %132 = load i32, ptr %40, align 8
  %133 = load i32, ptr %131, align 8
  %134 = mul i32 %133, -2048144777
  %135 = add i32 %134, %132
  %136 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 13)
  %137 = mul i32 %136, -1640531535
  %138 = freeze i32 %137
  store i32 %138, ptr %40, align 8
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %140 = load i32, ptr %41, align 4
  %141 = load i32, ptr %139, align 4
  %142 = mul i32 %141, -2048144777
  %143 = add i32 %142, %140
  %144 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 13)
  %145 = mul i32 %144, -1640531535
  %146 = freeze i32 %145
  store i32 %146, ptr %41, align 4
  %147 = load i32, ptr %44, align 8
  %148 = sub i32 16, %147
  %149 = zext i32 %148 to i64
  %150 = add nuw nsw i64 %149, 33
  store i32 0, ptr %44, align 8
  %151 = icmp ugt i32 %148, 15
  br i1 %151, label %186, label %152

152:                                              ; preds = %17
  %153 = getelementptr inbounds nuw i8, ptr %18, i64 %150
  %154 = load i32, ptr %38, align 8
  %155 = load i32, ptr %153, align 1
  %156 = mul i32 %155, -2048144777
  %157 = add i32 %156, %154
  %158 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 13)
  %159 = mul i32 %158, -1640531535
  %160 = freeze i32 %159
  store i32 %160, ptr %38, align 8
  %161 = getelementptr inbounds nuw i8, ptr %153, i64 4
  %162 = load i32, ptr %39, align 4
  %163 = load i32, ptr %161, align 1
  %164 = mul i32 %163, -2048144777
  %165 = add i32 %164, %162
  %166 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 13)
  %167 = mul i32 %166, -1640531535
  %168 = freeze i32 %167
  store i32 %168, ptr %39, align 4
  %169 = getelementptr inbounds nuw i8, ptr %153, i64 8
  %170 = load i32, ptr %40, align 8
  %171 = load i32, ptr %169, align 1
  %172 = mul i32 %171, -2048144777
  %173 = add i32 %172, %170
  %174 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 13)
  %175 = mul i32 %174, -1640531535
  %176 = freeze i32 %175
  store i32 %176, ptr %40, align 8
  %177 = getelementptr inbounds nuw i8, ptr %153, i64 12
  %178 = load i32, ptr %41, align 4
  %179 = load i32, ptr %177, align 1
  %180 = mul i32 %179, -2048144777
  %181 = add i32 %180, %178
  %182 = tail call i32 @llvm.fshl.i32(i32 %181, i32 %181, i32 13)
  %183 = mul i32 %182, -1640531535
  %184 = freeze i32 %183
  store i32 %184, ptr %41, align 4
  %185 = add nuw nsw i64 %149, 49
  br label %186

186:                                              ; preds = %152, %17
  %187 = phi i32 [ %146, %17 ], [ %184, %152 ]
  %188 = phi i64 [ %150, %17 ], [ %185, %152 ]
  %189 = icmp samesign ult i64 %188, 64
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = getelementptr inbounds nuw i8, ptr %18, i64 %188
  %192 = sub nuw nsw i64 64, %188
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %191, i64 %192, i1 false)
  %193 = trunc nuw nsw i64 %192 to i32
  store i32 %193, ptr %44, align 8
  br label %194

194:                                              ; preds = %186, %190
  %195 = load i32, ptr %43, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %194
  %198 = load i32, ptr %38, align 8
  %199 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 1)
  %200 = load i32, ptr %39, align 4
  %201 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 7)
  %202 = add i32 %201, %199
  %203 = load i32, ptr %40, align 8
  %204 = tail call i32 @llvm.fshl.i32(i32 %203, i32 %203, i32 12)
  %205 = add i32 %202, %204
  %206 = tail call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 18)
  %207 = add i32 %205, %206
  br label %211

208:                                              ; preds = %194
  %209 = load i32, ptr %40, align 8
  %210 = add i32 %209, 374761393
  br label %211

211:                                              ; preds = %208, %197
  %212 = phi i32 [ %207, %197 ], [ %210, %208 ]
  %213 = load i32, ptr %19, align 8
  %214 = add i32 %213, %212
  %215 = load i32, ptr %44, align 8
  %216 = and i32 %215, 15
  switch i32 %216, label %364 [
    i32 12, label %217
    i32 8, label %224
    i32 4, label %233
    i32 13, label %241
    i32 9, label %248
    i32 5, label %257
    i32 14, label %272
    i32 10, label %279
    i32 6, label %288
    i32 15, label %310
    i32 11, label %317
    i32 7, label %326
    i32 3, label %335
    i32 2, label %345
    i32 1, label %355
    i32 0, label %365
  ]

217:                                              ; preds = %211
  %218 = load i32, ptr %42, align 8
  %219 = mul i32 %218, -1028477379
  %220 = add i32 %219, %214
  %221 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %222 = tail call i32 @llvm.fshl.i32(i32 %220, i32 %220, i32 17)
  %223 = mul i32 %222, 668265263
  br label %224

224:                                              ; preds = %217, %211
  %225 = phi ptr [ %42, %211 ], [ %221, %217 ]
  %226 = phi i32 [ %214, %211 ], [ %223, %217 ]
  %227 = load i32, ptr %225, align 4
  %228 = mul i32 %227, -1028477379
  %229 = add i32 %228, %226
  %230 = getelementptr inbounds nuw i8, ptr %225, i64 4
  %231 = tail call i32 @llvm.fshl.i32(i32 %229, i32 %229, i32 17)
  %232 = mul i32 %231, 668265263
  br label %233

233:                                              ; preds = %224, %211
  %234 = phi ptr [ %42, %211 ], [ %230, %224 ]
  %235 = phi i32 [ %214, %211 ], [ %232, %224 ]
  %236 = load i32, ptr %234, align 4
  %237 = mul i32 %236, -1028477379
  %238 = add i32 %237, %235
  %239 = tail call i32 @llvm.fshl.i32(i32 %238, i32 %238, i32 17)
  %240 = mul i32 %239, 668265263
  br label %365

241:                                              ; preds = %211
  %242 = load i32, ptr %42, align 8
  %243 = mul i32 %242, -1028477379
  %244 = add i32 %243, %214
  %245 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %246 = tail call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 17)
  %247 = mul i32 %246, 668265263
  br label %248

248:                                              ; preds = %241, %211
  %249 = phi ptr [ %42, %211 ], [ %245, %241 ]
  %250 = phi i32 [ %214, %211 ], [ %247, %241 ]
  %251 = load i32, ptr %249, align 4
  %252 = mul i32 %251, -1028477379
  %253 = add i32 %252, %250
  %254 = getelementptr inbounds nuw i8, ptr %249, i64 4
  %255 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 17)
  %256 = mul i32 %255, 668265263
  br label %257

257:                                              ; preds = %248, %211
  %258 = phi ptr [ %42, %211 ], [ %254, %248 ]
  %259 = phi i32 [ %214, %211 ], [ %256, %248 ]
  %260 = load i32, ptr %258, align 4
  %261 = mul i32 %260, -1028477379
  %262 = add i32 %261, %259
  %263 = getelementptr inbounds nuw i8, ptr %258, i64 4
  %264 = tail call i32 @llvm.fshl.i32(i32 %262, i32 %262, i32 17)
  %265 = mul i32 %264, 668265263
  %266 = load i8, ptr %263, align 1
  %267 = zext i8 %266 to i32
  %268 = mul i32 %267, 374761393
  %269 = add i32 %265, %268
  %270 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 11)
  %271 = mul i32 %270, -1640531535
  br label %365

272:                                              ; preds = %211
  %273 = load i32, ptr %42, align 8
  %274 = mul i32 %273, -1028477379
  %275 = add i32 %274, %214
  %276 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %277 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 17)
  %278 = mul i32 %277, 668265263
  br label %279

279:                                              ; preds = %272, %211
  %280 = phi ptr [ %42, %211 ], [ %276, %272 ]
  %281 = phi i32 [ %214, %211 ], [ %278, %272 ]
  %282 = load i32, ptr %280, align 4
  %283 = mul i32 %282, -1028477379
  %284 = add i32 %283, %281
  %285 = getelementptr inbounds nuw i8, ptr %280, i64 4
  %286 = tail call i32 @llvm.fshl.i32(i32 %284, i32 %284, i32 17)
  %287 = mul i32 %286, 668265263
  br label %288

288:                                              ; preds = %279, %211
  %289 = phi ptr [ %42, %211 ], [ %285, %279 ]
  %290 = phi i32 [ %214, %211 ], [ %287, %279 ]
  %291 = load i32, ptr %289, align 4
  %292 = mul i32 %291, -1028477379
  %293 = add i32 %292, %290
  %294 = getelementptr inbounds nuw i8, ptr %289, i64 4
  %295 = tail call i32 @llvm.fshl.i32(i32 %293, i32 %293, i32 17)
  %296 = mul i32 %295, 668265263
  %297 = getelementptr inbounds nuw i8, ptr %289, i64 5
  %298 = load i8, ptr %294, align 1
  %299 = zext i8 %298 to i32
  %300 = mul i32 %299, 374761393
  %301 = add i32 %296, %300
  %302 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 11)
  %303 = mul i32 %302, -1640531535
  %304 = load i8, ptr %297, align 1
  %305 = zext i8 %304 to i32
  %306 = mul i32 %305, 374761393
  %307 = add i32 %303, %306
  %308 = tail call i32 @llvm.fshl.i32(i32 %307, i32 %307, i32 11)
  %309 = mul i32 %308, -1640531535
  br label %365

310:                                              ; preds = %211
  %311 = load i32, ptr %42, align 8
  %312 = mul i32 %311, -1028477379
  %313 = add i32 %312, %214
  %314 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %315 = tail call i32 @llvm.fshl.i32(i32 %313, i32 %313, i32 17)
  %316 = mul i32 %315, 668265263
  br label %317

317:                                              ; preds = %310, %211
  %318 = phi ptr [ %42, %211 ], [ %314, %310 ]
  %319 = phi i32 [ %214, %211 ], [ %316, %310 ]
  %320 = load i32, ptr %318, align 4
  %321 = mul i32 %320, -1028477379
  %322 = add i32 %321, %319
  %323 = getelementptr inbounds nuw i8, ptr %318, i64 4
  %324 = tail call i32 @llvm.fshl.i32(i32 %322, i32 %322, i32 17)
  %325 = mul i32 %324, 668265263
  br label %326

326:                                              ; preds = %317, %211
  %327 = phi ptr [ %42, %211 ], [ %323, %317 ]
  %328 = phi i32 [ %214, %211 ], [ %325, %317 ]
  %329 = load i32, ptr %327, align 4
  %330 = mul i32 %329, -1028477379
  %331 = add i32 %330, %328
  %332 = getelementptr inbounds nuw i8, ptr %327, i64 4
  %333 = tail call i32 @llvm.fshl.i32(i32 %331, i32 %331, i32 17)
  %334 = mul i32 %333, 668265263
  br label %335

335:                                              ; preds = %326, %211
  %336 = phi ptr [ %42, %211 ], [ %332, %326 ]
  %337 = phi i32 [ %214, %211 ], [ %334, %326 ]
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 1
  %339 = load i8, ptr %336, align 1
  %340 = zext i8 %339 to i32
  %341 = mul i32 %340, 374761393
  %342 = add i32 %341, %337
  %343 = tail call i32 @llvm.fshl.i32(i32 %342, i32 %342, i32 11)
  %344 = mul i32 %343, -1640531535
  br label %345

345:                                              ; preds = %335, %211
  %346 = phi ptr [ %42, %211 ], [ %338, %335 ]
  %347 = phi i32 [ %214, %211 ], [ %344, %335 ]
  %348 = getelementptr inbounds nuw i8, ptr %346, i64 1
  %349 = load i8, ptr %346, align 1
  %350 = zext i8 %349 to i32
  %351 = mul i32 %350, 374761393
  %352 = add i32 %351, %347
  %353 = tail call i32 @llvm.fshl.i32(i32 %352, i32 %352, i32 11)
  %354 = mul i32 %353, -1640531535
  br label %355

355:                                              ; preds = %345, %211
  %356 = phi ptr [ %42, %211 ], [ %348, %345 ]
  %357 = phi i32 [ %214, %211 ], [ %354, %345 ]
  %358 = load i8, ptr %356, align 1
  %359 = zext i8 %358 to i32
  %360 = mul i32 %359, 374761393
  %361 = add i32 %360, %357
  %362 = tail call i32 @llvm.fshl.i32(i32 %361, i32 %361, i32 11)
  %363 = mul i32 %362, -1640531535
  br label %365

364:                                              ; preds = %211
  unreachable

365:                                              ; preds = %211, %233, %257, %288, %355
  %366 = phi i32 [ %309, %288 ], [ %271, %257 ], [ %240, %233 ], [ %214, %211 ], [ %363, %355 ]
  %367 = lshr i32 %366, 15
  %368 = xor i32 %367, %366
  %369 = mul i32 %368, -2048144777
  %370 = lshr i32 %369, 13
  %371 = xor i32 %370, %369
  %372 = mul i32 %371, -1028477379
  %373 = lshr i32 %372, 16
  %374 = xor i32 %373, %372
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %374
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148087258}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
