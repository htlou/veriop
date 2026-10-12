; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d14b293/wrapv_s32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d14b293/wrapv_s32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }

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
  br i1 %81, label %115, label %82

82:                                               ; preds = %17
  %83 = load i32, ptr %40, align 8
  %84 = load i32, ptr %39, align 4
  %85 = load i32, ptr %38, align 8
  %86 = getelementptr inbounds nuw i8, ptr %18, i64 %80
  %87 = load i32, ptr %86, align 1
  %88 = mul i32 %87, -2048144777
  %89 = add i32 %88, %85
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = mul i32 %90, -1640531535
  %92 = freeze i32 %91
  %93 = getelementptr inbounds nuw i8, ptr %86, i64 4
  %94 = load i32, ptr %93, align 1
  %95 = mul i32 %94, -2048144777
  %96 = add i32 %95, %84
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 13)
  %98 = mul i32 %97, -1640531535
  %99 = freeze i32 %98
  %100 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %101 = load i32, ptr %100, align 1
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %83
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = freeze i32 %105
  %107 = getelementptr inbounds nuw i8, ptr %86, i64 12
  %108 = load i32, ptr %107, align 1
  %109 = mul i32 %108, -2048144777
  %110 = add i32 %109, %76
  %111 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 13)
  %112 = mul i32 %111, -1640531535
  %113 = freeze i32 %112
  %114 = add nuw nsw i64 %79, 19
  store i32 %92, ptr %38, align 8
  store i32 %99, ptr %39, align 4
  store i32 %106, ptr %40, align 8
  store i32 %113, ptr %41, align 4
  br label %115

115:                                              ; preds = %82, %17
  %116 = phi i32 [ %113, %82 ], [ %76, %17 ]
  %117 = phi i64 [ %114, %82 ], [ %80, %17 ]
  %118 = icmp samesign ult i64 %117, 23
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = getelementptr inbounds nuw i8, ptr %18, i64 %117
  %121 = sub nuw nsw i64 23, %117
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %120, i64 %121, i1 false)
  %122 = trunc nuw i64 %121 to i32
  store i32 %122, ptr %45, align 8
  br label %123

123:                                              ; preds = %115, %119
  %124 = load i32, ptr %44, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = load i32, ptr %38, align 8
  %128 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 1)
  %129 = load i32, ptr %39, align 4
  %130 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 7)
  %131 = add i32 %130, %128
  %132 = load i32, ptr %40, align 8
  %133 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 12)
  %134 = add i32 %131, %133
  %135 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 18)
  %136 = add i32 %134, %135
  br label %140

137:                                              ; preds = %123
  %138 = load i32, ptr %40, align 8
  %139 = add i32 %138, 374761393
  br label %140

140:                                              ; preds = %137, %126
  %141 = phi i32 [ %136, %126 ], [ %139, %137 ]
  %142 = load i32, ptr %19, align 8
  %143 = add i32 %142, %141
  %144 = load i32, ptr %45, align 8
  %145 = and i32 %144, 15
  switch i32 %145, label %293 [
    i32 12, label %146
    i32 8, label %153
    i32 4, label %162
    i32 13, label %170
    i32 9, label %177
    i32 5, label %186
    i32 14, label %201
    i32 10, label %208
    i32 6, label %217
    i32 15, label %239
    i32 11, label %246
    i32 7, label %255
    i32 3, label %264
    i32 2, label %274
    i32 1, label %284
    i32 0, label %294
  ]

146:                                              ; preds = %140
  %147 = load i32, ptr %42, align 8
  %148 = mul i32 %147, -1028477379
  %149 = add i32 %148, %143
  %150 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %151 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 17)
  %152 = mul i32 %151, 668265263
  br label %153

153:                                              ; preds = %146, %140
  %154 = phi ptr [ %42, %140 ], [ %150, %146 ]
  %155 = phi i32 [ %143, %140 ], [ %152, %146 ]
  %156 = load i32, ptr %154, align 4
  %157 = mul i32 %156, -1028477379
  %158 = add i32 %157, %155
  %159 = getelementptr inbounds nuw i8, ptr %154, i64 4
  %160 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 17)
  %161 = mul i32 %160, 668265263
  br label %162

162:                                              ; preds = %153, %140
  %163 = phi ptr [ %42, %140 ], [ %159, %153 ]
  %164 = phi i32 [ %143, %140 ], [ %161, %153 ]
  %165 = load i32, ptr %163, align 4
  %166 = mul i32 %165, -1028477379
  %167 = add i32 %166, %164
  %168 = tail call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 17)
  %169 = mul i32 %168, 668265263
  br label %294

170:                                              ; preds = %140
  %171 = load i32, ptr %42, align 8
  %172 = mul i32 %171, -1028477379
  %173 = add i32 %172, %143
  %174 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %175 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 17)
  %176 = mul i32 %175, 668265263
  br label %177

177:                                              ; preds = %170, %140
  %178 = phi ptr [ %42, %140 ], [ %174, %170 ]
  %179 = phi i32 [ %143, %140 ], [ %176, %170 ]
  %180 = load i32, ptr %178, align 4
  %181 = mul i32 %180, -1028477379
  %182 = add i32 %181, %179
  %183 = getelementptr inbounds nuw i8, ptr %178, i64 4
  %184 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 17)
  %185 = mul i32 %184, 668265263
  br label %186

186:                                              ; preds = %177, %140
  %187 = phi ptr [ %42, %140 ], [ %183, %177 ]
  %188 = phi i32 [ %143, %140 ], [ %185, %177 ]
  %189 = load i32, ptr %187, align 4
  %190 = mul i32 %189, -1028477379
  %191 = add i32 %190, %188
  %192 = getelementptr inbounds nuw i8, ptr %187, i64 4
  %193 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 17)
  %194 = mul i32 %193, 668265263
  %195 = load i8, ptr %192, align 1
  %196 = zext i8 %195 to i32
  %197 = mul i32 %196, 374761393
  %198 = add i32 %194, %197
  %199 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 11)
  %200 = mul i32 %199, -1640531535
  br label %294

201:                                              ; preds = %140
  %202 = load i32, ptr %42, align 8
  %203 = mul i32 %202, -1028477379
  %204 = add i32 %203, %143
  %205 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %206 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 17)
  %207 = mul i32 %206, 668265263
  br label %208

208:                                              ; preds = %201, %140
  %209 = phi ptr [ %42, %140 ], [ %205, %201 ]
  %210 = phi i32 [ %143, %140 ], [ %207, %201 ]
  %211 = load i32, ptr %209, align 4
  %212 = mul i32 %211, -1028477379
  %213 = add i32 %212, %210
  %214 = getelementptr inbounds nuw i8, ptr %209, i64 4
  %215 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 17)
  %216 = mul i32 %215, 668265263
  br label %217

217:                                              ; preds = %208, %140
  %218 = phi ptr [ %42, %140 ], [ %214, %208 ]
  %219 = phi i32 [ %143, %140 ], [ %216, %208 ]
  %220 = load i32, ptr %218, align 4
  %221 = mul i32 %220, -1028477379
  %222 = add i32 %221, %219
  %223 = getelementptr inbounds nuw i8, ptr %218, i64 4
  %224 = tail call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 17)
  %225 = mul i32 %224, 668265263
  %226 = getelementptr inbounds nuw i8, ptr %218, i64 5
  %227 = load i8, ptr %223, align 1
  %228 = zext i8 %227 to i32
  %229 = mul i32 %228, 374761393
  %230 = add i32 %225, %229
  %231 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 11)
  %232 = mul i32 %231, -1640531535
  %233 = load i8, ptr %226, align 1
  %234 = zext i8 %233 to i32
  %235 = mul i32 %234, 374761393
  %236 = add i32 %232, %235
  %237 = tail call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 11)
  %238 = mul i32 %237, -1640531535
  br label %294

239:                                              ; preds = %140
  %240 = load i32, ptr %42, align 8
  %241 = mul i32 %240, -1028477379
  %242 = add i32 %241, %143
  %243 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %244 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 17)
  %245 = mul i32 %244, 668265263
  br label %246

246:                                              ; preds = %239, %140
  %247 = phi ptr [ %42, %140 ], [ %243, %239 ]
  %248 = phi i32 [ %143, %140 ], [ %245, %239 ]
  %249 = load i32, ptr %247, align 4
  %250 = mul i32 %249, -1028477379
  %251 = add i32 %250, %248
  %252 = getelementptr inbounds nuw i8, ptr %247, i64 4
  %253 = tail call i32 @llvm.fshl.i32(i32 %251, i32 %251, i32 17)
  %254 = mul i32 %253, 668265263
  br label %255

255:                                              ; preds = %246, %140
  %256 = phi ptr [ %42, %140 ], [ %252, %246 ]
  %257 = phi i32 [ %143, %140 ], [ %254, %246 ]
  %258 = load i32, ptr %256, align 4
  %259 = mul i32 %258, -1028477379
  %260 = add i32 %259, %257
  %261 = getelementptr inbounds nuw i8, ptr %256, i64 4
  %262 = tail call i32 @llvm.fshl.i32(i32 %260, i32 %260, i32 17)
  %263 = mul i32 %262, 668265263
  br label %264

264:                                              ; preds = %255, %140
  %265 = phi ptr [ %42, %140 ], [ %261, %255 ]
  %266 = phi i32 [ %143, %140 ], [ %263, %255 ]
  %267 = getelementptr inbounds nuw i8, ptr %265, i64 1
  %268 = load i8, ptr %265, align 1
  %269 = zext i8 %268 to i32
  %270 = mul i32 %269, 374761393
  %271 = add i32 %270, %266
  %272 = tail call i32 @llvm.fshl.i32(i32 %271, i32 %271, i32 11)
  %273 = mul i32 %272, -1640531535
  br label %274

274:                                              ; preds = %264, %140
  %275 = phi ptr [ %42, %140 ], [ %267, %264 ]
  %276 = phi i32 [ %143, %140 ], [ %273, %264 ]
  %277 = getelementptr inbounds nuw i8, ptr %275, i64 1
  %278 = load i8, ptr %275, align 1
  %279 = zext i8 %278 to i32
  %280 = mul i32 %279, 374761393
  %281 = add i32 %280, %276
  %282 = tail call i32 @llvm.fshl.i32(i32 %281, i32 %281, i32 11)
  %283 = mul i32 %282, -1640531535
  br label %284

284:                                              ; preds = %274, %140
  %285 = phi ptr [ %42, %140 ], [ %277, %274 ]
  %286 = phi i32 [ %143, %140 ], [ %283, %274 ]
  %287 = load i8, ptr %285, align 1
  %288 = zext i8 %287 to i32
  %289 = mul i32 %288, 374761393
  %290 = add i32 %289, %286
  %291 = tail call i32 @llvm.fshl.i32(i32 %290, i32 %290, i32 11)
  %292 = mul i32 %291, -1640531535
  br label %294

293:                                              ; preds = %140
  unreachable

294:                                              ; preds = %140, %162, %186, %217, %284
  %295 = phi i32 [ %238, %217 ], [ %200, %186 ], [ %169, %162 ], [ %143, %140 ], [ %292, %284 ]
  %296 = lshr i32 %295, 15
  %297 = xor i32 %296, %295
  %298 = mul i32 %297, -2048144777
  %299 = lshr i32 %298, 13
  %300 = xor i32 %299, %298
  %301 = mul i32 %300, -1028477379
  %302 = lshr i32 %301, 16
  %303 = xor i32 %302, %301
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %303
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
  %46 = load i32, ptr %18, align 16
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %35
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = freeze i32 %50
  %52 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %36
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  %59 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %60 = load i32, ptr %59, align 8
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %16
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  %66 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %37
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  store i32 %51, ptr %38, align 8
  store i32 %58, ptr %39, align 4
  store i32 %65, ptr %40, align 8
  store i32 %72, ptr %41, align 4
  %73 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %74 = load i32, ptr %73, align 16
  store i32 %74, ptr %42, align 8
  store i32 4, ptr %45, align 8
  %75 = load i32, ptr %19, align 8
  %76 = add i32 %75, 13
  store i32 %76, ptr %19, align 8
  %77 = icmp ugt i32 %76, 15
  %78 = zext i1 %77 to i32
  %79 = load i32, ptr %44, align 4
  %80 = or i32 %79, %78
  store i32 %80, ptr %44, align 4
  %81 = getelementptr inbounds nuw i8, ptr %19, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %81, ptr noundef nonnull readonly align 4 dereferenceable(12) %43, i64 12, i1 false)
  %82 = load i32, ptr %42, align 8
  %83 = mul i32 %82, -2048144777
  %84 = add i32 %83, %51
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 13)
  %86 = mul i32 %85, -1640531535
  %87 = freeze i32 %86
  store i32 %87, ptr %38, align 8
  %88 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %89 = load i32, ptr %39, align 4
  %90 = load i32, ptr %88, align 4
  %91 = mul i32 %90, -2048144777
  %92 = add i32 %91, %89
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 13)
  %94 = mul i32 %93, -1640531535
  %95 = freeze i32 %94
  store i32 %95, ptr %39, align 4
  %96 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %97 = load i32, ptr %40, align 8
  %98 = load i32, ptr %96, align 8
  %99 = mul i32 %98, -2048144777
  %100 = add i32 %99, %97
  %101 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 13)
  %102 = mul i32 %101, -1640531535
  %103 = freeze i32 %102
  store i32 %103, ptr %40, align 8
  %104 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %105 = load i32, ptr %41, align 4
  %106 = load i32, ptr %104, align 4
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %105
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = freeze i32 %110
  store i32 %111, ptr %41, align 4
  %112 = load i32, ptr %45, align 8
  %113 = sub i32 16, %112
  store i32 0, ptr %45, align 8
  %114 = icmp ult i32 %113, 13
  br i1 %114, label %115, label %125

115:                                              ; preds = %17
  %116 = getelementptr inbounds nuw i8, ptr %18, i64 33
  %117 = zext nneg i32 %113 to i64
  %118 = getelementptr inbounds nuw i8, ptr %18, i64 %117
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 20
  %120 = ptrtoint ptr %116 to i64
  %121 = ptrtoint ptr %119 to i64
  %122 = sub i64 %120, %121
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %119, i64 %122, i1 false)
  %123 = trunc i64 %122 to i32
  store i32 %123, ptr %45, align 8
  %124 = and i32 %123, 15
  br label %125

125:                                              ; preds = %17, %115
  %126 = phi i32 [ 0, %17 ], [ %124, %115 ]
  %127 = load i32, ptr %44, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %38, align 8
  %131 = call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 1)
  %132 = load i32, ptr %39, align 4
  %133 = call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 7)
  %134 = add i32 %133, %131
  %135 = load i32, ptr %40, align 8
  %136 = call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 12)
  %137 = add i32 %134, %136
  %138 = call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 18)
  %139 = add i32 %137, %138
  br label %143

140:                                              ; preds = %125
  %141 = load i32, ptr %40, align 8
  %142 = add i32 %141, 374761393
  br label %143

143:                                              ; preds = %140, %129
  %144 = phi i32 [ %139, %129 ], [ %142, %140 ]
  %145 = load i32, ptr %19, align 8
  %146 = add i32 %145, %144
  switch i32 %126, label %294 [
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

147:                                              ; preds = %143
  %148 = load i32, ptr %42, align 8
  %149 = mul i32 %148, -1028477379
  %150 = add i32 %149, %146
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %152 = call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 17)
  %153 = mul i32 %152, 668265263
  br label %154

154:                                              ; preds = %147, %143
  %155 = phi ptr [ %42, %143 ], [ %151, %147 ]
  %156 = phi i32 [ %146, %143 ], [ %153, %147 ]
  %157 = load i32, ptr %155, align 4
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %155, i64 4
  %161 = call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  br label %163

163:                                              ; preds = %154, %143
  %164 = phi ptr [ %42, %143 ], [ %160, %154 ]
  %165 = phi i32 [ %146, %143 ], [ %162, %154 ]
  %166 = load i32, ptr %164, align 4
  %167 = mul i32 %166, -1028477379
  %168 = add i32 %167, %165
  %169 = call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 17)
  %170 = mul i32 %169, 668265263
  br label %295

171:                                              ; preds = %143
  %172 = load i32, ptr %42, align 8
  %173 = mul i32 %172, -1028477379
  %174 = add i32 %173, %146
  %175 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %176 = call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 17)
  %177 = mul i32 %176, 668265263
  br label %178

178:                                              ; preds = %171, %143
  %179 = phi ptr [ %42, %143 ], [ %175, %171 ]
  %180 = phi i32 [ %146, %143 ], [ %177, %171 ]
  %181 = load i32, ptr %179, align 4
  %182 = mul i32 %181, -1028477379
  %183 = add i32 %182, %180
  %184 = getelementptr inbounds nuw i8, ptr %179, i64 4
  %185 = call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 17)
  %186 = mul i32 %185, 668265263
  br label %187

187:                                              ; preds = %178, %143
  %188 = phi ptr [ %42, %143 ], [ %184, %178 ]
  %189 = phi i32 [ %146, %143 ], [ %186, %178 ]
  %190 = load i32, ptr %188, align 4
  %191 = mul i32 %190, -1028477379
  %192 = add i32 %191, %189
  %193 = getelementptr inbounds nuw i8, ptr %188, i64 4
  %194 = call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 17)
  %195 = mul i32 %194, 668265263
  %196 = load i8, ptr %193, align 1
  %197 = zext i8 %196 to i32
  %198 = mul i32 %197, 374761393
  %199 = add i32 %195, %198
  %200 = call i32 @llvm.fshl.i32(i32 %199, i32 %199, i32 11)
  %201 = mul i32 %200, -1640531535
  br label %295

202:                                              ; preds = %143
  %203 = load i32, ptr %42, align 8
  %204 = mul i32 %203, -1028477379
  %205 = add i32 %204, %146
  %206 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %207 = call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 17)
  %208 = mul i32 %207, 668265263
  br label %209

209:                                              ; preds = %202, %143
  %210 = phi ptr [ %42, %143 ], [ %206, %202 ]
  %211 = phi i32 [ %146, %143 ], [ %208, %202 ]
  %212 = load i32, ptr %210, align 4
  %213 = mul i32 %212, -1028477379
  %214 = add i32 %213, %211
  %215 = getelementptr inbounds nuw i8, ptr %210, i64 4
  %216 = call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 17)
  %217 = mul i32 %216, 668265263
  br label %218

218:                                              ; preds = %209, %143
  %219 = phi ptr [ %42, %143 ], [ %215, %209 ]
  %220 = phi i32 [ %146, %143 ], [ %217, %209 ]
  %221 = load i32, ptr %219, align 4
  %222 = mul i32 %221, -1028477379
  %223 = add i32 %222, %220
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 4
  %225 = call i32 @llvm.fshl.i32(i32 %223, i32 %223, i32 17)
  %226 = mul i32 %225, 668265263
  %227 = getelementptr inbounds nuw i8, ptr %219, i64 5
  %228 = load i8, ptr %224, align 1
  %229 = zext i8 %228 to i32
  %230 = mul i32 %229, 374761393
  %231 = add i32 %226, %230
  %232 = call i32 @llvm.fshl.i32(i32 %231, i32 %231, i32 11)
  %233 = mul i32 %232, -1640531535
  %234 = load i8, ptr %227, align 1
  %235 = zext i8 %234 to i32
  %236 = mul i32 %235, 374761393
  %237 = add i32 %233, %236
  %238 = call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 11)
  %239 = mul i32 %238, -1640531535
  br label %295

240:                                              ; preds = %143
  %241 = load i32, ptr %42, align 8
  %242 = mul i32 %241, -1028477379
  %243 = add i32 %242, %146
  %244 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %245 = call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 17)
  %246 = mul i32 %245, 668265263
  br label %247

247:                                              ; preds = %240, %143
  %248 = phi ptr [ %42, %143 ], [ %244, %240 ]
  %249 = phi i32 [ %146, %143 ], [ %246, %240 ]
  %250 = load i32, ptr %248, align 4
  %251 = mul i32 %250, -1028477379
  %252 = add i32 %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %248, i64 4
  %254 = call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 17)
  %255 = mul i32 %254, 668265263
  br label %256

256:                                              ; preds = %247, %143
  %257 = phi ptr [ %42, %143 ], [ %253, %247 ]
  %258 = phi i32 [ %146, %143 ], [ %255, %247 ]
  %259 = load i32, ptr %257, align 4
  %260 = mul i32 %259, -1028477379
  %261 = add i32 %260, %258
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 4
  %263 = call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 17)
  %264 = mul i32 %263, 668265263
  br label %265

265:                                              ; preds = %256, %143
  %266 = phi ptr [ %42, %143 ], [ %262, %256 ]
  %267 = phi i32 [ %146, %143 ], [ %264, %256 ]
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 1
  %269 = load i8, ptr %266, align 1
  %270 = zext i8 %269 to i32
  %271 = mul i32 %270, 374761393
  %272 = add i32 %271, %267
  %273 = call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 11)
  %274 = mul i32 %273, -1640531535
  br label %275

275:                                              ; preds = %265, %143
  %276 = phi ptr [ %42, %143 ], [ %268, %265 ]
  %277 = phi i32 [ %146, %143 ], [ %274, %265 ]
  %278 = getelementptr inbounds nuw i8, ptr %276, i64 1
  %279 = load i8, ptr %276, align 1
  %280 = zext i8 %279 to i32
  %281 = mul i32 %280, 374761393
  %282 = add i32 %281, %277
  %283 = call i32 @llvm.fshl.i32(i32 %282, i32 %282, i32 11)
  %284 = mul i32 %283, -1640531535
  br label %285

285:                                              ; preds = %275, %143
  %286 = phi ptr [ %42, %143 ], [ %278, %275 ]
  %287 = phi i32 [ %146, %143 ], [ %284, %275 ]
  %288 = load i8, ptr %286, align 1
  %289 = zext i8 %288 to i32
  %290 = mul i32 %289, 374761393
  %291 = add i32 %290, %287
  %292 = call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 11)
  %293 = mul i32 %292, -1640531535
  br label %295

294:                                              ; preds = %143
  unreachable

295:                                              ; preds = %143, %163, %187, %218, %285
  %296 = phi i32 [ %239, %218 ], [ %201, %187 ], [ %170, %163 ], [ %146, %143 ], [ %293, %285 ]
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
  %46 = load i32, ptr %18, align 16
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %35
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = freeze i32 %50
  %52 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %36
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  %59 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %60 = load i32, ptr %59, align 8
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %16
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  %66 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %37
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  store i32 %51, ptr %38, align 8
  store i32 %58, ptr %39, align 4
  store i32 %65, ptr %40, align 8
  store i32 %72, ptr %41, align 4
  %73 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %74 = load i8, ptr %73, align 16
  store i8 %74, ptr %42, align 8
  store i32 1, ptr %45, align 8
  %75 = load i32, ptr %19, align 8
  %76 = add i32 %75, 30
  store i32 %76, ptr %19, align 8
  %77 = load i32, ptr %44, align 4
  %78 = or i32 %77, 1
  store i32 %78, ptr %44, align 4
  %79 = getelementptr inbounds nuw i8, ptr %19, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %79, ptr noundef nonnull readonly align 1 dereferenceable(15) %43, i64 15, i1 false)
  %80 = load i32, ptr %42, align 8
  %81 = mul i32 %80, -2048144777
  %82 = add i32 %81, %51
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %84 = mul i32 %83, -1640531535
  %85 = freeze i32 %84
  store i32 %85, ptr %38, align 8
  %86 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %87 = load i32, ptr %39, align 4
  %88 = load i32, ptr %86, align 4
  %89 = mul i32 %88, -2048144777
  %90 = add i32 %89, %87
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 13)
  %92 = mul i32 %91, -1640531535
  %93 = freeze i32 %92
  store i32 %93, ptr %39, align 4
  %94 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %95 = load i32, ptr %40, align 8
  %96 = load i32, ptr %94, align 8
  %97 = mul i32 %96, -2048144777
  %98 = add i32 %97, %95
  %99 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 13)
  %100 = mul i32 %99, -1640531535
  %101 = freeze i32 %100
  store i32 %101, ptr %40, align 8
  %102 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %103 = load i32, ptr %41, align 4
  %104 = load i32, ptr %102, align 4
  %105 = mul i32 %104, -2048144777
  %106 = add i32 %105, %103
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 13)
  %108 = mul i32 %107, -1640531535
  %109 = freeze i32 %108
  store i32 %109, ptr %41, align 4
  %110 = load i32, ptr %45, align 8
  %111 = sub i32 16, %110
  %112 = zext i32 %111 to i64
  %113 = add nuw nsw i64 %112, 17
  store i32 0, ptr %45, align 8
  %114 = icmp ugt i32 %111, 14
  br i1 %114, label %148, label %115

115:                                              ; preds = %17
  %116 = load i32, ptr %40, align 8
  %117 = load i32, ptr %39, align 4
  %118 = load i32, ptr %38, align 8
  %119 = getelementptr inbounds nuw i8, ptr %18, i64 %113
  %120 = load i32, ptr %119, align 1
  %121 = mul i32 %120, -2048144777
  %122 = add i32 %121, %118
  %123 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 13)
  %124 = mul i32 %123, -1640531535
  %125 = freeze i32 %124
  %126 = getelementptr inbounds nuw i8, ptr %119, i64 4
  %127 = load i32, ptr %126, align 1
  %128 = mul i32 %127, -2048144777
  %129 = add i32 %128, %117
  %130 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 13)
  %131 = mul i32 %130, -1640531535
  %132 = freeze i32 %131
  %133 = getelementptr inbounds nuw i8, ptr %119, i64 8
  %134 = load i32, ptr %133, align 1
  %135 = mul i32 %134, -2048144777
  %136 = add i32 %135, %116
  %137 = tail call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 13)
  %138 = mul i32 %137, -1640531535
  %139 = freeze i32 %138
  %140 = getelementptr inbounds nuw i8, ptr %119, i64 12
  %141 = load i32, ptr %140, align 1
  %142 = mul i32 %141, -2048144777
  %143 = add i32 %142, %109
  %144 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 13)
  %145 = mul i32 %144, -1640531535
  %146 = freeze i32 %145
  %147 = add nuw nsw i64 %112, 33
  store i32 %125, ptr %38, align 8
  store i32 %132, ptr %39, align 4
  store i32 %139, ptr %40, align 8
  store i32 %146, ptr %41, align 4
  br label %148

148:                                              ; preds = %115, %17
  %149 = phi i32 [ %146, %115 ], [ %109, %17 ]
  %150 = phi i64 [ %147, %115 ], [ %113, %17 ]
  %151 = icmp slt i64 %150, 47
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = getelementptr inbounds nuw i8, ptr %18, i64 %150
  %154 = sub nsw i64 47, %150
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %153, i64 %154, i1 false)
  %155 = trunc i64 %154 to i32
  store i32 %155, ptr %45, align 8
  br label %156

156:                                              ; preds = %148, %152
  %157 = load i32, ptr %44, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %156
  %160 = load i32, ptr %38, align 8
  %161 = tail call i32 @llvm.fshl.i32(i32 %160, i32 %160, i32 1)
  %162 = load i32, ptr %39, align 4
  %163 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 7)
  %164 = add i32 %163, %161
  %165 = load i32, ptr %40, align 8
  %166 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 12)
  %167 = add i32 %164, %166
  %168 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 18)
  %169 = add i32 %167, %168
  br label %173

170:                                              ; preds = %156
  %171 = load i32, ptr %40, align 8
  %172 = add i32 %171, 374761393
  br label %173

173:                                              ; preds = %170, %159
  %174 = phi i32 [ %169, %159 ], [ %172, %170 ]
  %175 = load i32, ptr %19, align 8
  %176 = add i32 %175, %174
  %177 = load i32, ptr %45, align 8
  %178 = and i32 %177, 15
  switch i32 %178, label %326 [
    i32 12, label %179
    i32 8, label %186
    i32 4, label %195
    i32 13, label %203
    i32 9, label %210
    i32 5, label %219
    i32 14, label %234
    i32 10, label %241
    i32 6, label %250
    i32 15, label %272
    i32 11, label %279
    i32 7, label %288
    i32 3, label %297
    i32 2, label %307
    i32 1, label %317
    i32 0, label %327
  ]

179:                                              ; preds = %173
  %180 = load i32, ptr %42, align 8
  %181 = mul i32 %180, -1028477379
  %182 = add i32 %181, %176
  %183 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %184 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 17)
  %185 = mul i32 %184, 668265263
  br label %186

186:                                              ; preds = %179, %173
  %187 = phi ptr [ %42, %173 ], [ %183, %179 ]
  %188 = phi i32 [ %176, %173 ], [ %185, %179 ]
  %189 = load i32, ptr %187, align 4
  %190 = mul i32 %189, -1028477379
  %191 = add i32 %190, %188
  %192 = getelementptr inbounds nuw i8, ptr %187, i64 4
  %193 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 17)
  %194 = mul i32 %193, 668265263
  br label %195

195:                                              ; preds = %186, %173
  %196 = phi ptr [ %42, %173 ], [ %192, %186 ]
  %197 = phi i32 [ %176, %173 ], [ %194, %186 ]
  %198 = load i32, ptr %196, align 4
  %199 = mul i32 %198, -1028477379
  %200 = add i32 %199, %197
  %201 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 17)
  %202 = mul i32 %201, 668265263
  br label %327

203:                                              ; preds = %173
  %204 = load i32, ptr %42, align 8
  %205 = mul i32 %204, -1028477379
  %206 = add i32 %205, %176
  %207 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %208 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 17)
  %209 = mul i32 %208, 668265263
  br label %210

210:                                              ; preds = %203, %173
  %211 = phi ptr [ %42, %173 ], [ %207, %203 ]
  %212 = phi i32 [ %176, %173 ], [ %209, %203 ]
  %213 = load i32, ptr %211, align 4
  %214 = mul i32 %213, -1028477379
  %215 = add i32 %214, %212
  %216 = getelementptr inbounds nuw i8, ptr %211, i64 4
  %217 = tail call i32 @llvm.fshl.i32(i32 %215, i32 %215, i32 17)
  %218 = mul i32 %217, 668265263
  br label %219

219:                                              ; preds = %210, %173
  %220 = phi ptr [ %42, %173 ], [ %216, %210 ]
  %221 = phi i32 [ %176, %173 ], [ %218, %210 ]
  %222 = load i32, ptr %220, align 4
  %223 = mul i32 %222, -1028477379
  %224 = add i32 %223, %221
  %225 = getelementptr inbounds nuw i8, ptr %220, i64 4
  %226 = tail call i32 @llvm.fshl.i32(i32 %224, i32 %224, i32 17)
  %227 = mul i32 %226, 668265263
  %228 = load i8, ptr %225, align 1
  %229 = zext i8 %228 to i32
  %230 = mul i32 %229, 374761393
  %231 = add i32 %227, %230
  %232 = tail call i32 @llvm.fshl.i32(i32 %231, i32 %231, i32 11)
  %233 = mul i32 %232, -1640531535
  br label %327

234:                                              ; preds = %173
  %235 = load i32, ptr %42, align 8
  %236 = mul i32 %235, -1028477379
  %237 = add i32 %236, %176
  %238 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %239 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 17)
  %240 = mul i32 %239, 668265263
  br label %241

241:                                              ; preds = %234, %173
  %242 = phi ptr [ %42, %173 ], [ %238, %234 ]
  %243 = phi i32 [ %176, %173 ], [ %240, %234 ]
  %244 = load i32, ptr %242, align 4
  %245 = mul i32 %244, -1028477379
  %246 = add i32 %245, %243
  %247 = getelementptr inbounds nuw i8, ptr %242, i64 4
  %248 = tail call i32 @llvm.fshl.i32(i32 %246, i32 %246, i32 17)
  %249 = mul i32 %248, 668265263
  br label %250

250:                                              ; preds = %241, %173
  %251 = phi ptr [ %42, %173 ], [ %247, %241 ]
  %252 = phi i32 [ %176, %173 ], [ %249, %241 ]
  %253 = load i32, ptr %251, align 4
  %254 = mul i32 %253, -1028477379
  %255 = add i32 %254, %252
  %256 = getelementptr inbounds nuw i8, ptr %251, i64 4
  %257 = tail call i32 @llvm.fshl.i32(i32 %255, i32 %255, i32 17)
  %258 = mul i32 %257, 668265263
  %259 = getelementptr inbounds nuw i8, ptr %251, i64 5
  %260 = load i8, ptr %256, align 1
  %261 = zext i8 %260 to i32
  %262 = mul i32 %261, 374761393
  %263 = add i32 %258, %262
  %264 = tail call i32 @llvm.fshl.i32(i32 %263, i32 %263, i32 11)
  %265 = mul i32 %264, -1640531535
  %266 = load i8, ptr %259, align 1
  %267 = zext i8 %266 to i32
  %268 = mul i32 %267, 374761393
  %269 = add i32 %265, %268
  %270 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 11)
  %271 = mul i32 %270, -1640531535
  br label %327

272:                                              ; preds = %173
  %273 = load i32, ptr %42, align 8
  %274 = mul i32 %273, -1028477379
  %275 = add i32 %274, %176
  %276 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %277 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 17)
  %278 = mul i32 %277, 668265263
  br label %279

279:                                              ; preds = %272, %173
  %280 = phi ptr [ %42, %173 ], [ %276, %272 ]
  %281 = phi i32 [ %176, %173 ], [ %278, %272 ]
  %282 = load i32, ptr %280, align 4
  %283 = mul i32 %282, -1028477379
  %284 = add i32 %283, %281
  %285 = getelementptr inbounds nuw i8, ptr %280, i64 4
  %286 = tail call i32 @llvm.fshl.i32(i32 %284, i32 %284, i32 17)
  %287 = mul i32 %286, 668265263
  br label %288

288:                                              ; preds = %279, %173
  %289 = phi ptr [ %42, %173 ], [ %285, %279 ]
  %290 = phi i32 [ %176, %173 ], [ %287, %279 ]
  %291 = load i32, ptr %289, align 4
  %292 = mul i32 %291, -1028477379
  %293 = add i32 %292, %290
  %294 = getelementptr inbounds nuw i8, ptr %289, i64 4
  %295 = tail call i32 @llvm.fshl.i32(i32 %293, i32 %293, i32 17)
  %296 = mul i32 %295, 668265263
  br label %297

297:                                              ; preds = %288, %173
  %298 = phi ptr [ %42, %173 ], [ %294, %288 ]
  %299 = phi i32 [ %176, %173 ], [ %296, %288 ]
  %300 = getelementptr inbounds nuw i8, ptr %298, i64 1
  %301 = load i8, ptr %298, align 1
  %302 = zext i8 %301 to i32
  %303 = mul i32 %302, 374761393
  %304 = add i32 %303, %299
  %305 = tail call i32 @llvm.fshl.i32(i32 %304, i32 %304, i32 11)
  %306 = mul i32 %305, -1640531535
  br label %307

307:                                              ; preds = %297, %173
  %308 = phi ptr [ %42, %173 ], [ %300, %297 ]
  %309 = phi i32 [ %176, %173 ], [ %306, %297 ]
  %310 = getelementptr inbounds nuw i8, ptr %308, i64 1
  %311 = load i8, ptr %308, align 1
  %312 = zext i8 %311 to i32
  %313 = mul i32 %312, 374761393
  %314 = add i32 %313, %309
  %315 = tail call i32 @llvm.fshl.i32(i32 %314, i32 %314, i32 11)
  %316 = mul i32 %315, -1640531535
  br label %317

317:                                              ; preds = %307, %173
  %318 = phi ptr [ %42, %173 ], [ %310, %307 ]
  %319 = phi i32 [ %176, %173 ], [ %316, %307 ]
  %320 = load i8, ptr %318, align 1
  %321 = zext i8 %320 to i32
  %322 = mul i32 %321, 374761393
  %323 = add i32 %322, %319
  %324 = tail call i32 @llvm.fshl.i32(i32 %323, i32 %323, i32 11)
  %325 = mul i32 %324, -1640531535
  br label %327

326:                                              ; preds = %173
  unreachable

327:                                              ; preds = %173, %195, %219, %250, %317
  %328 = phi i32 [ %271, %250 ], [ %233, %219 ], [ %202, %195 ], [ %176, %173 ], [ %325, %317 ]
  %329 = lshr i32 %328, 15
  %330 = xor i32 %329, %328
  %331 = mul i32 %330, -2048144777
  %332 = lshr i32 %331, 13
  %333 = xor i32 %332, %331
  %334 = mul i32 %333, -1028477379
  %335 = lshr i32 %334, 16
  %336 = xor i32 %335, %334
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %336
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_40_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %18) #7
  store i64 4294967336, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %19, i8 0, i64 16, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 40
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %26 = add i32 %16, 1640531535
  %27 = add i32 %16, -2048144777
  %28 = add i32 %16, 606290984
  %29 = trunc i64 %0 to i32
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %28
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = freeze i32 %33
  %35 = lshr i64 %0, 32
  %36 = trunc nuw i64 %35 to i32
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %27
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  %42 = trunc i64 %1 to i32
  %43 = mul i32 %42, -2048144777
  %44 = add i32 %43, %16
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13)
  %46 = mul i32 %45, -1640531535
  %47 = freeze i32 %46
  %48 = lshr i64 %1, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = mul i32 %49, -2048144777
  %51 = add i32 %50, %26
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13)
  %53 = mul i32 %52, -1640531535
  %54 = freeze i32 %53
  %55 = trunc i64 %2 to i32
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %34
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  %61 = lshr i64 %2, 32
  %62 = trunc nuw i64 %61 to i32
  %63 = mul i32 %62, -2048144777
  %64 = add i32 %63, %41
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 13)
  %66 = mul i32 %65, -1640531535
  %67 = freeze i32 %66
  %68 = trunc i64 %3 to i32
  %69 = mul i32 %68, -2048144777
  %70 = add i32 %69, %47
  %71 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 13)
  %72 = mul i32 %71, -1640531535
  %73 = freeze i32 %72
  %74 = lshr i64 %3, 32
  %75 = trunc nuw i64 %74 to i32
  %76 = mul i32 %75, -2048144777
  %77 = add i32 %76, %54
  %78 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 13)
  %79 = mul i32 %78, -1640531535
  %80 = freeze i32 %79
  store i32 %60, ptr %25, align 8
  store i32 %67, ptr %24, align 4
  store i32 %73, ptr %23, align 8
  store i32 %80, ptr %22, align 4
  store i64 %4, ptr %19, align 8
  store i32 8, ptr %20, align 8
  %81 = load i32, ptr %21, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %17
  %84 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 1)
  %85 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 7)
  %86 = add i32 %85, %84
  %87 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 12)
  %88 = add i32 %86, %87
  %89 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 18)
  %90 = add i32 %88, %89
  br label %93

91:                                               ; preds = %17
  %92 = add i32 %73, 374761393
  br label %93

93:                                               ; preds = %91, %83
  %94 = phi i32 [ %90, %83 ], [ %92, %91 ]
  %95 = load i32, ptr %18, align 8
  %96 = add i32 %95, %94
  %97 = load i32, ptr %20, align 8
  %98 = and i32 %97, 15
  switch i32 %98, label %246 [
    i32 12, label %99
    i32 8, label %106
    i32 4, label %115
    i32 13, label %123
    i32 9, label %130
    i32 5, label %139
    i32 14, label %154
    i32 10, label %161
    i32 6, label %170
    i32 15, label %192
    i32 11, label %199
    i32 7, label %208
    i32 3, label %217
    i32 2, label %227
    i32 1, label %237
    i32 0, label %247
  ]

99:                                               ; preds = %93
  %100 = load i32, ptr %19, align 8
  %101 = mul i32 %100, -1028477379
  %102 = add i32 %101, %96
  %103 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %104 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 17)
  %105 = mul i32 %104, 668265263
  br label %106

106:                                              ; preds = %99, %93
  %107 = phi ptr [ %19, %93 ], [ %103, %99 ]
  %108 = phi i32 [ %96, %93 ], [ %105, %99 ]
  %109 = load i32, ptr %107, align 4
  %110 = mul i32 %109, -1028477379
  %111 = add i32 %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %107, i64 4
  %113 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 17)
  %114 = mul i32 %113, 668265263
  br label %115

115:                                              ; preds = %106, %93
  %116 = phi ptr [ %19, %93 ], [ %112, %106 ]
  %117 = phi i32 [ %96, %93 ], [ %114, %106 ]
  %118 = load i32, ptr %116, align 4
  %119 = mul i32 %118, -1028477379
  %120 = add i32 %119, %117
  %121 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 17)
  %122 = mul i32 %121, 668265263
  br label %247

123:                                              ; preds = %93
  %124 = load i32, ptr %19, align 8
  %125 = mul i32 %124, -1028477379
  %126 = add i32 %125, %96
  %127 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %128 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 17)
  %129 = mul i32 %128, 668265263
  br label %130

130:                                              ; preds = %123, %93
  %131 = phi ptr [ %19, %93 ], [ %127, %123 ]
  %132 = phi i32 [ %96, %93 ], [ %129, %123 ]
  %133 = load i32, ptr %131, align 4
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %132
  %136 = getelementptr inbounds nuw i8, ptr %131, i64 4
  %137 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  br label %139

139:                                              ; preds = %130, %93
  %140 = phi ptr [ %19, %93 ], [ %136, %130 ]
  %141 = phi i32 [ %96, %93 ], [ %138, %130 ]
  %142 = load i32, ptr %140, align 4
  %143 = mul i32 %142, -1028477379
  %144 = add i32 %143, %141
  %145 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %146 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 17)
  %147 = mul i32 %146, 668265263
  %148 = load i8, ptr %145, align 1
  %149 = zext i8 %148 to i32
  %150 = mul i32 %149, 374761393
  %151 = add i32 %147, %150
  %152 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 11)
  %153 = mul i32 %152, -1640531535
  br label %247

154:                                              ; preds = %93
  %155 = load i32, ptr %19, align 8
  %156 = mul i32 %155, -1028477379
  %157 = add i32 %156, %96
  %158 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %159 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 17)
  %160 = mul i32 %159, 668265263
  br label %161

161:                                              ; preds = %154, %93
  %162 = phi ptr [ %19, %93 ], [ %158, %154 ]
  %163 = phi i32 [ %96, %93 ], [ %160, %154 ]
  %164 = load i32, ptr %162, align 4
  %165 = mul i32 %164, -1028477379
  %166 = add i32 %165, %163
  %167 = getelementptr inbounds nuw i8, ptr %162, i64 4
  %168 = tail call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 17)
  %169 = mul i32 %168, 668265263
  br label %170

170:                                              ; preds = %161, %93
  %171 = phi ptr [ %19, %93 ], [ %167, %161 ]
  %172 = phi i32 [ %96, %93 ], [ %169, %161 ]
  %173 = load i32, ptr %171, align 4
  %174 = mul i32 %173, -1028477379
  %175 = add i32 %174, %172
  %176 = getelementptr inbounds nuw i8, ptr %171, i64 4
  %177 = tail call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 17)
  %178 = mul i32 %177, 668265263
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 5
  %180 = load i8, ptr %176, align 1
  %181 = zext i8 %180 to i32
  %182 = mul i32 %181, 374761393
  %183 = add i32 %178, %182
  %184 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 11)
  %185 = mul i32 %184, -1640531535
  %186 = load i8, ptr %179, align 1
  %187 = zext i8 %186 to i32
  %188 = mul i32 %187, 374761393
  %189 = add i32 %185, %188
  %190 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 11)
  %191 = mul i32 %190, -1640531535
  br label %247

192:                                              ; preds = %93
  %193 = load i32, ptr %19, align 8
  %194 = mul i32 %193, -1028477379
  %195 = add i32 %194, %96
  %196 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %197 = tail call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 17)
  %198 = mul i32 %197, 668265263
  br label %199

199:                                              ; preds = %192, %93
  %200 = phi ptr [ %19, %93 ], [ %196, %192 ]
  %201 = phi i32 [ %96, %93 ], [ %198, %192 ]
  %202 = load i32, ptr %200, align 4
  %203 = mul i32 %202, -1028477379
  %204 = add i32 %203, %201
  %205 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %206 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 17)
  %207 = mul i32 %206, 668265263
  br label %208

208:                                              ; preds = %199, %93
  %209 = phi ptr [ %19, %93 ], [ %205, %199 ]
  %210 = phi i32 [ %96, %93 ], [ %207, %199 ]
  %211 = load i32, ptr %209, align 4
  %212 = mul i32 %211, -1028477379
  %213 = add i32 %212, %210
  %214 = getelementptr inbounds nuw i8, ptr %209, i64 4
  %215 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 17)
  %216 = mul i32 %215, 668265263
  br label %217

217:                                              ; preds = %208, %93
  %218 = phi ptr [ %19, %93 ], [ %214, %208 ]
  %219 = phi i32 [ %96, %93 ], [ %216, %208 ]
  %220 = getelementptr inbounds nuw i8, ptr %218, i64 1
  %221 = load i8, ptr %218, align 1
  %222 = zext i8 %221 to i32
  %223 = mul i32 %222, 374761393
  %224 = add i32 %223, %219
  %225 = tail call i32 @llvm.fshl.i32(i32 %224, i32 %224, i32 11)
  %226 = mul i32 %225, -1640531535
  br label %227

227:                                              ; preds = %217, %93
  %228 = phi ptr [ %19, %93 ], [ %220, %217 ]
  %229 = phi i32 [ %96, %93 ], [ %226, %217 ]
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 1
  %231 = load i8, ptr %228, align 1
  %232 = zext i8 %231 to i32
  %233 = mul i32 %232, 374761393
  %234 = add i32 %233, %229
  %235 = tail call i32 @llvm.fshl.i32(i32 %234, i32 %234, i32 11)
  %236 = mul i32 %235, -1640531535
  br label %237

237:                                              ; preds = %227, %93
  %238 = phi ptr [ %19, %93 ], [ %230, %227 ]
  %239 = phi i32 [ %96, %93 ], [ %236, %227 ]
  %240 = load i8, ptr %238, align 1
  %241 = zext i8 %240 to i32
  %242 = mul i32 %241, 374761393
  %243 = add i32 %242, %239
  %244 = tail call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 11)
  %245 = mul i32 %244, -1640531535
  br label %247

246:                                              ; preds = %93
  unreachable

247:                                              ; preds = %93, %115, %139, %170, %237
  %248 = phi i32 [ %191, %170 ], [ %153, %139 ], [ %122, %115 ], [ %96, %93 ], [ %245, %237 ]
  %249 = lshr i32 %248, 15
  %250 = xor i32 %249, %248
  %251 = mul i32 %250, -2048144777
  %252 = lshr i32 %251, 13
  %253 = xor i32 %252, %251
  %254 = mul i32 %253, -1028477379
  %255 = lshr i32 %254, 16
  %256 = xor i32 %255, %254
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %18) #7
  ret i32 %256
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
  br i1 %82, label %124, label %83

83:                                               ; preds = %17
  %84 = load i32, ptr %40, align 8
  %85 = load i32, ptr %39, align 4
  %86 = load i32, ptr %38, align 8
  br label %87

87:                                               ; preds = %87, %83
  %88 = phi i64 [ %81, %83 ], [ %121, %87 ]
  %89 = phi i32 [ %86, %83 ], [ %99, %87 ]
  %90 = phi i32 [ %85, %83 ], [ %106, %87 ]
  %91 = phi i32 [ %84, %83 ], [ %113, %87 ]
  %92 = phi i32 [ %77, %83 ], [ %120, %87 ]
  %93 = getelementptr inbounds nuw i8, ptr %18, i64 %88
  %94 = load i32, ptr %93, align 1
  %95 = mul i32 %94, -2048144777
  %96 = add i32 %95, %89
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 13)
  %98 = mul i32 %97, -1640531535
  %99 = freeze i32 %98
  %100 = getelementptr inbounds nuw i8, ptr %93, i64 4
  %101 = load i32, ptr %100, align 1
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %90
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = freeze i32 %105
  %107 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %108 = load i32, ptr %107, align 1
  %109 = mul i32 %108, -2048144777
  %110 = add i32 %109, %91
  %111 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 13)
  %112 = mul i32 %111, -1640531535
  %113 = freeze i32 %112
  %114 = getelementptr inbounds nuw i8, ptr %93, i64 12
  %115 = load i32, ptr %114, align 1
  %116 = mul i32 %115, -2048144777
  %117 = add i32 %116, %92
  %118 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 13)
  %119 = mul i32 %118, -1640531535
  %120 = freeze i32 %119
  %121 = add nuw nsw i64 %88, 16
  %122 = icmp samesign ugt i64 %88, 16
  br i1 %122, label %123, label %87

123:                                              ; preds = %87
  store i32 %99, ptr %38, align 8
  store i32 %106, ptr %39, align 4
  store i32 %113, ptr %40, align 8
  store i32 %120, ptr %41, align 4
  br label %124

124:                                              ; preds = %123, %17
  %125 = phi i32 [ %120, %123 ], [ %77, %17 ]
  %126 = phi i64 [ %121, %123 ], [ %81, %17 ]
  %127 = icmp samesign ult i64 %126, 48
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %18, i64 %126
  %130 = sub nuw nsw i64 48, %126
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %129, i64 %130, i1 false)
  %131 = trunc nuw nsw i64 %130 to i32
  store i32 %131, ptr %45, align 8
  br label %132

132:                                              ; preds = %124, %128
  %133 = load i32, ptr %44, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %146, label %135

135:                                              ; preds = %132
  %136 = load i32, ptr %38, align 8
  %137 = tail call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 1)
  %138 = load i32, ptr %39, align 4
  %139 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 7)
  %140 = add i32 %139, %137
  %141 = load i32, ptr %40, align 8
  %142 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 12)
  %143 = add i32 %140, %142
  %144 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 18)
  %145 = add i32 %143, %144
  br label %149

146:                                              ; preds = %132
  %147 = load i32, ptr %40, align 8
  %148 = add i32 %147, 374761393
  br label %149

149:                                              ; preds = %146, %135
  %150 = phi i32 [ %145, %135 ], [ %148, %146 ]
  %151 = load i32, ptr %19, align 8
  %152 = add i32 %151, %150
  %153 = load i32, ptr %45, align 8
  %154 = and i32 %153, 15
  switch i32 %154, label %302 [
    i32 12, label %155
    i32 8, label %162
    i32 4, label %171
    i32 13, label %179
    i32 9, label %186
    i32 5, label %195
    i32 14, label %210
    i32 10, label %217
    i32 6, label %226
    i32 15, label %248
    i32 11, label %255
    i32 7, label %264
    i32 3, label %273
    i32 2, label %283
    i32 1, label %293
    i32 0, label %303
  ]

155:                                              ; preds = %149
  %156 = load i32, ptr %42, align 8
  %157 = mul i32 %156, -1028477379
  %158 = add i32 %157, %152
  %159 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %160 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 17)
  %161 = mul i32 %160, 668265263
  br label %162

162:                                              ; preds = %155, %149
  %163 = phi ptr [ %42, %149 ], [ %159, %155 ]
  %164 = phi i32 [ %152, %149 ], [ %161, %155 ]
  %165 = load i32, ptr %163, align 4
  %166 = mul i32 %165, -1028477379
  %167 = add i32 %166, %164
  %168 = getelementptr inbounds nuw i8, ptr %163, i64 4
  %169 = tail call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 17)
  %170 = mul i32 %169, 668265263
  br label %171

171:                                              ; preds = %162, %149
  %172 = phi ptr [ %42, %149 ], [ %168, %162 ]
  %173 = phi i32 [ %152, %149 ], [ %170, %162 ]
  %174 = load i32, ptr %172, align 4
  %175 = mul i32 %174, -1028477379
  %176 = add i32 %175, %173
  %177 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 17)
  %178 = mul i32 %177, 668265263
  br label %303

179:                                              ; preds = %149
  %180 = load i32, ptr %42, align 8
  %181 = mul i32 %180, -1028477379
  %182 = add i32 %181, %152
  %183 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %184 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 17)
  %185 = mul i32 %184, 668265263
  br label %186

186:                                              ; preds = %179, %149
  %187 = phi ptr [ %42, %149 ], [ %183, %179 ]
  %188 = phi i32 [ %152, %149 ], [ %185, %179 ]
  %189 = load i32, ptr %187, align 4
  %190 = mul i32 %189, -1028477379
  %191 = add i32 %190, %188
  %192 = getelementptr inbounds nuw i8, ptr %187, i64 4
  %193 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 17)
  %194 = mul i32 %193, 668265263
  br label %195

195:                                              ; preds = %186, %149
  %196 = phi ptr [ %42, %149 ], [ %192, %186 ]
  %197 = phi i32 [ %152, %149 ], [ %194, %186 ]
  %198 = load i32, ptr %196, align 4
  %199 = mul i32 %198, -1028477379
  %200 = add i32 %199, %197
  %201 = getelementptr inbounds nuw i8, ptr %196, i64 4
  %202 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 17)
  %203 = mul i32 %202, 668265263
  %204 = load i8, ptr %201, align 1
  %205 = zext i8 %204 to i32
  %206 = mul i32 %205, 374761393
  %207 = add i32 %203, %206
  %208 = tail call i32 @llvm.fshl.i32(i32 %207, i32 %207, i32 11)
  %209 = mul i32 %208, -1640531535
  br label %303

210:                                              ; preds = %149
  %211 = load i32, ptr %42, align 8
  %212 = mul i32 %211, -1028477379
  %213 = add i32 %212, %152
  %214 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %215 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 17)
  %216 = mul i32 %215, 668265263
  br label %217

217:                                              ; preds = %210, %149
  %218 = phi ptr [ %42, %149 ], [ %214, %210 ]
  %219 = phi i32 [ %152, %149 ], [ %216, %210 ]
  %220 = load i32, ptr %218, align 4
  %221 = mul i32 %220, -1028477379
  %222 = add i32 %221, %219
  %223 = getelementptr inbounds nuw i8, ptr %218, i64 4
  %224 = tail call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 17)
  %225 = mul i32 %224, 668265263
  br label %226

226:                                              ; preds = %217, %149
  %227 = phi ptr [ %42, %149 ], [ %223, %217 ]
  %228 = phi i32 [ %152, %149 ], [ %225, %217 ]
  %229 = load i32, ptr %227, align 4
  %230 = mul i32 %229, -1028477379
  %231 = add i32 %230, %228
  %232 = getelementptr inbounds nuw i8, ptr %227, i64 4
  %233 = tail call i32 @llvm.fshl.i32(i32 %231, i32 %231, i32 17)
  %234 = mul i32 %233, 668265263
  %235 = getelementptr inbounds nuw i8, ptr %227, i64 5
  %236 = load i8, ptr %232, align 1
  %237 = zext i8 %236 to i32
  %238 = mul i32 %237, 374761393
  %239 = add i32 %234, %238
  %240 = tail call i32 @llvm.fshl.i32(i32 %239, i32 %239, i32 11)
  %241 = mul i32 %240, -1640531535
  %242 = load i8, ptr %235, align 1
  %243 = zext i8 %242 to i32
  %244 = mul i32 %243, 374761393
  %245 = add i32 %241, %244
  %246 = tail call i32 @llvm.fshl.i32(i32 %245, i32 %245, i32 11)
  %247 = mul i32 %246, -1640531535
  br label %303

248:                                              ; preds = %149
  %249 = load i32, ptr %42, align 8
  %250 = mul i32 %249, -1028477379
  %251 = add i32 %250, %152
  %252 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %253 = tail call i32 @llvm.fshl.i32(i32 %251, i32 %251, i32 17)
  %254 = mul i32 %253, 668265263
  br label %255

255:                                              ; preds = %248, %149
  %256 = phi ptr [ %42, %149 ], [ %252, %248 ]
  %257 = phi i32 [ %152, %149 ], [ %254, %248 ]
  %258 = load i32, ptr %256, align 4
  %259 = mul i32 %258, -1028477379
  %260 = add i32 %259, %257
  %261 = getelementptr inbounds nuw i8, ptr %256, i64 4
  %262 = tail call i32 @llvm.fshl.i32(i32 %260, i32 %260, i32 17)
  %263 = mul i32 %262, 668265263
  br label %264

264:                                              ; preds = %255, %149
  %265 = phi ptr [ %42, %149 ], [ %261, %255 ]
  %266 = phi i32 [ %152, %149 ], [ %263, %255 ]
  %267 = load i32, ptr %265, align 4
  %268 = mul i32 %267, -1028477379
  %269 = add i32 %268, %266
  %270 = getelementptr inbounds nuw i8, ptr %265, i64 4
  %271 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 17)
  %272 = mul i32 %271, 668265263
  br label %273

273:                                              ; preds = %264, %149
  %274 = phi ptr [ %42, %149 ], [ %270, %264 ]
  %275 = phi i32 [ %152, %149 ], [ %272, %264 ]
  %276 = getelementptr inbounds nuw i8, ptr %274, i64 1
  %277 = load i8, ptr %274, align 1
  %278 = zext i8 %277 to i32
  %279 = mul i32 %278, 374761393
  %280 = add i32 %279, %275
  %281 = tail call i32 @llvm.fshl.i32(i32 %280, i32 %280, i32 11)
  %282 = mul i32 %281, -1640531535
  br label %283

283:                                              ; preds = %273, %149
  %284 = phi ptr [ %42, %149 ], [ %276, %273 ]
  %285 = phi i32 [ %152, %149 ], [ %282, %273 ]
  %286 = getelementptr inbounds nuw i8, ptr %284, i64 1
  %287 = load i8, ptr %284, align 1
  %288 = zext i8 %287 to i32
  %289 = mul i32 %288, 374761393
  %290 = add i32 %289, %285
  %291 = tail call i32 @llvm.fshl.i32(i32 %290, i32 %290, i32 11)
  %292 = mul i32 %291, -1640531535
  br label %293

293:                                              ; preds = %283, %149
  %294 = phi ptr [ %42, %149 ], [ %286, %283 ]
  %295 = phi i32 [ %152, %149 ], [ %292, %283 ]
  %296 = load i8, ptr %294, align 1
  %297 = zext i8 %296 to i32
  %298 = mul i32 %297, 374761393
  %299 = add i32 %298, %295
  %300 = tail call i32 @llvm.fshl.i32(i32 %299, i32 %299, i32 11)
  %301 = mul i32 %300, -1640531535
  br label %303

302:                                              ; preds = %149
  unreachable

303:                                              ; preds = %149, %171, %195, %226, %293
  %304 = phi i32 [ %247, %226 ], [ %209, %195 ], [ %178, %171 ], [ %152, %149 ], [ %301, %293 ]
  %305 = lshr i32 %304, 15
  %306 = xor i32 %305, %304
  %307 = mul i32 %306, -2048144777
  %308 = lshr i32 %307, 13
  %309 = xor i32 %308, %307
  %310 = mul i32 %309, -1028477379
  %311 = lshr i32 %310, 16
  %312 = xor i32 %311, %310
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %312
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
  %46 = load i32, ptr %18, align 16
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %35
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = freeze i32 %50
  %52 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %36
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  %59 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %60 = load i32, ptr %59, align 8
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %16
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  %66 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %37
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  %73 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %74 = load i32, ptr %73, align 16
  %75 = mul i32 %74, -2048144777
  %76 = add i32 %75, %51
  %77 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 13)
  %78 = mul i32 %77, -1640531535
  %79 = freeze i32 %78
  %80 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %81 = load i32, ptr %80, align 4
  %82 = mul i32 %81, -2048144777
  %83 = add i32 %82, %58
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 13)
  %85 = mul i32 %84, -1640531535
  %86 = freeze i32 %85
  %87 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %88 = load i32, ptr %87, align 8
  %89 = mul i32 %88, -2048144777
  %90 = add i32 %89, %65
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 13)
  %92 = mul i32 %91, -1640531535
  %93 = freeze i32 %92
  %94 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %95 = load i32, ptr %94, align 4
  %96 = mul i32 %95, -2048144777
  %97 = add i32 %96, %72
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13)
  %99 = mul i32 %98, -1640531535
  %100 = freeze i32 %99
  store i32 %79, ptr %38, align 8
  store i32 %86, ptr %39, align 4
  store i32 %93, ptr %40, align 8
  store i32 %100, ptr %41, align 4
  %101 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %102 = load i8, ptr %101, align 16
  store i8 %102, ptr %42, align 8
  store i32 1, ptr %44, align 8
  %103 = load i32, ptr %19, align 8
  %104 = add i32 %103, 31
  store i32 %104, ptr %19, align 8
  %105 = load i32, ptr %43, align 4
  %106 = or i32 %105, 1
  store i32 %106, ptr %43, align 4
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %107, ptr noundef nonnull readonly align 1 dereferenceable(15) %45, i64 15, i1 false)
  %108 = load i32, ptr %42, align 8
  %109 = mul i32 %108, -2048144777
  %110 = add i32 %109, %79
  %111 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 13)
  %112 = mul i32 %111, -1640531535
  %113 = freeze i32 %112
  store i32 %113, ptr %38, align 8
  %114 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %115 = load i32, ptr %39, align 4
  %116 = load i32, ptr %114, align 4
  %117 = mul i32 %116, -2048144777
  %118 = add i32 %117, %115
  %119 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 13)
  %120 = mul i32 %119, -1640531535
  %121 = freeze i32 %120
  store i32 %121, ptr %39, align 4
  %122 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %123 = load i32, ptr %40, align 8
  %124 = load i32, ptr %122, align 8
  %125 = mul i32 %124, -2048144777
  %126 = add i32 %125, %123
  %127 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 13)
  %128 = mul i32 %127, -1640531535
  %129 = freeze i32 %128
  store i32 %129, ptr %40, align 8
  %130 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %131 = load i32, ptr %41, align 4
  %132 = load i32, ptr %130, align 4
  %133 = mul i32 %132, -2048144777
  %134 = add i32 %133, %131
  %135 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 13)
  %136 = mul i32 %135, -1640531535
  %137 = freeze i32 %136
  store i32 %137, ptr %41, align 4
  %138 = load i32, ptr %44, align 8
  %139 = sub i32 16, %138
  %140 = zext i32 %139 to i64
  %141 = add nuw nsw i64 %140, 33
  store i32 0, ptr %44, align 8
  %142 = icmp ugt i32 %139, 15
  br i1 %142, label %176, label %143

143:                                              ; preds = %17
  %144 = load i32, ptr %40, align 8
  %145 = load i32, ptr %39, align 4
  %146 = load i32, ptr %38, align 8
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 %141
  %148 = load i32, ptr %147, align 1
  %149 = mul i32 %148, -2048144777
  %150 = add i32 %149, %146
  %151 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 13)
  %152 = mul i32 %151, -1640531535
  %153 = freeze i32 %152
  %154 = getelementptr inbounds nuw i8, ptr %147, i64 4
  %155 = load i32, ptr %154, align 1
  %156 = mul i32 %155, -2048144777
  %157 = add i32 %156, %145
  %158 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 13)
  %159 = mul i32 %158, -1640531535
  %160 = freeze i32 %159
  %161 = getelementptr inbounds nuw i8, ptr %147, i64 8
  %162 = load i32, ptr %161, align 1
  %163 = mul i32 %162, -2048144777
  %164 = add i32 %163, %144
  %165 = tail call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 13)
  %166 = mul i32 %165, -1640531535
  %167 = freeze i32 %166
  %168 = getelementptr inbounds nuw i8, ptr %147, i64 12
  %169 = load i32, ptr %168, align 1
  %170 = mul i32 %169, -2048144777
  %171 = add i32 %170, %137
  %172 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 13)
  %173 = mul i32 %172, -1640531535
  %174 = freeze i32 %173
  %175 = add nuw nsw i64 %140, 49
  store i32 %153, ptr %38, align 8
  store i32 %160, ptr %39, align 4
  store i32 %167, ptr %40, align 8
  store i32 %174, ptr %41, align 4
  br label %176

176:                                              ; preds = %143, %17
  %177 = phi i32 [ %174, %143 ], [ %137, %17 ]
  %178 = phi i64 [ %175, %143 ], [ %141, %17 ]
  %179 = icmp samesign ult i64 %178, 64
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = getelementptr inbounds nuw i8, ptr %18, i64 %178
  %182 = sub nuw nsw i64 64, %178
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %181, i64 %182, i1 false)
  %183 = trunc nuw nsw i64 %182 to i32
  store i32 %183, ptr %44, align 8
  br label %184

184:                                              ; preds = %176, %180
  %185 = load i32, ptr %43, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %184
  %188 = load i32, ptr %38, align 8
  %189 = tail call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 1)
  %190 = load i32, ptr %39, align 4
  %191 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 7)
  %192 = add i32 %191, %189
  %193 = load i32, ptr %40, align 8
  %194 = tail call i32 @llvm.fshl.i32(i32 %193, i32 %193, i32 12)
  %195 = add i32 %192, %194
  %196 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 18)
  %197 = add i32 %195, %196
  br label %201

198:                                              ; preds = %184
  %199 = load i32, ptr %40, align 8
  %200 = add i32 %199, 374761393
  br label %201

201:                                              ; preds = %198, %187
  %202 = phi i32 [ %197, %187 ], [ %200, %198 ]
  %203 = load i32, ptr %19, align 8
  %204 = add i32 %203, %202
  %205 = load i32, ptr %44, align 8
  %206 = and i32 %205, 15
  switch i32 %206, label %354 [
    i32 12, label %207
    i32 8, label %214
    i32 4, label %223
    i32 13, label %231
    i32 9, label %238
    i32 5, label %247
    i32 14, label %262
    i32 10, label %269
    i32 6, label %278
    i32 15, label %300
    i32 11, label %307
    i32 7, label %316
    i32 3, label %325
    i32 2, label %335
    i32 1, label %345
    i32 0, label %355
  ]

207:                                              ; preds = %201
  %208 = load i32, ptr %42, align 8
  %209 = mul i32 %208, -1028477379
  %210 = add i32 %209, %204
  %211 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %212 = tail call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 17)
  %213 = mul i32 %212, 668265263
  br label %214

214:                                              ; preds = %207, %201
  %215 = phi ptr [ %42, %201 ], [ %211, %207 ]
  %216 = phi i32 [ %204, %201 ], [ %213, %207 ]
  %217 = load i32, ptr %215, align 4
  %218 = mul i32 %217, -1028477379
  %219 = add i32 %218, %216
  %220 = getelementptr inbounds nuw i8, ptr %215, i64 4
  %221 = tail call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 17)
  %222 = mul i32 %221, 668265263
  br label %223

223:                                              ; preds = %214, %201
  %224 = phi ptr [ %42, %201 ], [ %220, %214 ]
  %225 = phi i32 [ %204, %201 ], [ %222, %214 ]
  %226 = load i32, ptr %224, align 4
  %227 = mul i32 %226, -1028477379
  %228 = add i32 %227, %225
  %229 = tail call i32 @llvm.fshl.i32(i32 %228, i32 %228, i32 17)
  %230 = mul i32 %229, 668265263
  br label %355

231:                                              ; preds = %201
  %232 = load i32, ptr %42, align 8
  %233 = mul i32 %232, -1028477379
  %234 = add i32 %233, %204
  %235 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %236 = tail call i32 @llvm.fshl.i32(i32 %234, i32 %234, i32 17)
  %237 = mul i32 %236, 668265263
  br label %238

238:                                              ; preds = %231, %201
  %239 = phi ptr [ %42, %201 ], [ %235, %231 ]
  %240 = phi i32 [ %204, %201 ], [ %237, %231 ]
  %241 = load i32, ptr %239, align 4
  %242 = mul i32 %241, -1028477379
  %243 = add i32 %242, %240
  %244 = getelementptr inbounds nuw i8, ptr %239, i64 4
  %245 = tail call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 17)
  %246 = mul i32 %245, 668265263
  br label %247

247:                                              ; preds = %238, %201
  %248 = phi ptr [ %42, %201 ], [ %244, %238 ]
  %249 = phi i32 [ %204, %201 ], [ %246, %238 ]
  %250 = load i32, ptr %248, align 4
  %251 = mul i32 %250, -1028477379
  %252 = add i32 %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %248, i64 4
  %254 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 17)
  %255 = mul i32 %254, 668265263
  %256 = load i8, ptr %253, align 1
  %257 = zext i8 %256 to i32
  %258 = mul i32 %257, 374761393
  %259 = add i32 %255, %258
  %260 = tail call i32 @llvm.fshl.i32(i32 %259, i32 %259, i32 11)
  %261 = mul i32 %260, -1640531535
  br label %355

262:                                              ; preds = %201
  %263 = load i32, ptr %42, align 8
  %264 = mul i32 %263, -1028477379
  %265 = add i32 %264, %204
  %266 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %267 = tail call i32 @llvm.fshl.i32(i32 %265, i32 %265, i32 17)
  %268 = mul i32 %267, 668265263
  br label %269

269:                                              ; preds = %262, %201
  %270 = phi ptr [ %42, %201 ], [ %266, %262 ]
  %271 = phi i32 [ %204, %201 ], [ %268, %262 ]
  %272 = load i32, ptr %270, align 4
  %273 = mul i32 %272, -1028477379
  %274 = add i32 %273, %271
  %275 = getelementptr inbounds nuw i8, ptr %270, i64 4
  %276 = tail call i32 @llvm.fshl.i32(i32 %274, i32 %274, i32 17)
  %277 = mul i32 %276, 668265263
  br label %278

278:                                              ; preds = %269, %201
  %279 = phi ptr [ %42, %201 ], [ %275, %269 ]
  %280 = phi i32 [ %204, %201 ], [ %277, %269 ]
  %281 = load i32, ptr %279, align 4
  %282 = mul i32 %281, -1028477379
  %283 = add i32 %282, %280
  %284 = getelementptr inbounds nuw i8, ptr %279, i64 4
  %285 = tail call i32 @llvm.fshl.i32(i32 %283, i32 %283, i32 17)
  %286 = mul i32 %285, 668265263
  %287 = getelementptr inbounds nuw i8, ptr %279, i64 5
  %288 = load i8, ptr %284, align 1
  %289 = zext i8 %288 to i32
  %290 = mul i32 %289, 374761393
  %291 = add i32 %286, %290
  %292 = tail call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 11)
  %293 = mul i32 %292, -1640531535
  %294 = load i8, ptr %287, align 1
  %295 = zext i8 %294 to i32
  %296 = mul i32 %295, 374761393
  %297 = add i32 %293, %296
  %298 = tail call i32 @llvm.fshl.i32(i32 %297, i32 %297, i32 11)
  %299 = mul i32 %298, -1640531535
  br label %355

300:                                              ; preds = %201
  %301 = load i32, ptr %42, align 8
  %302 = mul i32 %301, -1028477379
  %303 = add i32 %302, %204
  %304 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %305 = tail call i32 @llvm.fshl.i32(i32 %303, i32 %303, i32 17)
  %306 = mul i32 %305, 668265263
  br label %307

307:                                              ; preds = %300, %201
  %308 = phi ptr [ %42, %201 ], [ %304, %300 ]
  %309 = phi i32 [ %204, %201 ], [ %306, %300 ]
  %310 = load i32, ptr %308, align 4
  %311 = mul i32 %310, -1028477379
  %312 = add i32 %311, %309
  %313 = getelementptr inbounds nuw i8, ptr %308, i64 4
  %314 = tail call i32 @llvm.fshl.i32(i32 %312, i32 %312, i32 17)
  %315 = mul i32 %314, 668265263
  br label %316

316:                                              ; preds = %307, %201
  %317 = phi ptr [ %42, %201 ], [ %313, %307 ]
  %318 = phi i32 [ %204, %201 ], [ %315, %307 ]
  %319 = load i32, ptr %317, align 4
  %320 = mul i32 %319, -1028477379
  %321 = add i32 %320, %318
  %322 = getelementptr inbounds nuw i8, ptr %317, i64 4
  %323 = tail call i32 @llvm.fshl.i32(i32 %321, i32 %321, i32 17)
  %324 = mul i32 %323, 668265263
  br label %325

325:                                              ; preds = %316, %201
  %326 = phi ptr [ %42, %201 ], [ %322, %316 ]
  %327 = phi i32 [ %204, %201 ], [ %324, %316 ]
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 1
  %329 = load i8, ptr %326, align 1
  %330 = zext i8 %329 to i32
  %331 = mul i32 %330, 374761393
  %332 = add i32 %331, %327
  %333 = tail call i32 @llvm.fshl.i32(i32 %332, i32 %332, i32 11)
  %334 = mul i32 %333, -1640531535
  br label %335

335:                                              ; preds = %325, %201
  %336 = phi ptr [ %42, %201 ], [ %328, %325 ]
  %337 = phi i32 [ %204, %201 ], [ %334, %325 ]
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 1
  %339 = load i8, ptr %336, align 1
  %340 = zext i8 %339 to i32
  %341 = mul i32 %340, 374761393
  %342 = add i32 %341, %337
  %343 = tail call i32 @llvm.fshl.i32(i32 %342, i32 %342, i32 11)
  %344 = mul i32 %343, -1640531535
  br label %345

345:                                              ; preds = %335, %201
  %346 = phi ptr [ %42, %201 ], [ %338, %335 ]
  %347 = phi i32 [ %204, %201 ], [ %344, %335 ]
  %348 = load i8, ptr %346, align 1
  %349 = zext i8 %348 to i32
  %350 = mul i32 %349, 374761393
  %351 = add i32 %350, %347
  %352 = tail call i32 @llvm.fshl.i32(i32 %351, i32 %351, i32 11)
  %353 = mul i32 %352, -1640531535
  br label %355

354:                                              ; preds = %201
  unreachable

355:                                              ; preds = %201, %223, %247, %278, %345
  %356 = phi i32 [ %299, %278 ], [ %261, %247 ], [ %230, %223 ], [ %204, %201 ], [ %353, %345 ]
  %357 = lshr i32 %356, 15
  %358 = xor i32 %357, %356
  %359 = mul i32 %358, -2048144777
  %360 = lshr i32 %359, 13
  %361 = xor i32 %360, %359
  %362 = mul i32 %361, -1028477379
  %363 = lshr i32 %362, 16
  %364 = xor i32 %363, %362
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %364
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
!5 = !{i64 2148087598}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
