; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrapv_s32only.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrapv_s32only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

%struct.XXH_INLINE_XXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [128 x i8], align 8
  %19 = alloca %struct.XXH_INLINE_XXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #5
  store i64 %0, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #5
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %42, ptr noundef nonnull readonly align 8 dereferenceable(10) %18, i64 10, i1 false)
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #5
  ret i32 %269
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_3_20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [128 x i8], align 8
  %19 = alloca %struct.XXH_INLINE_XXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #5
  store i64 %0, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #5
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %42, ptr noundef nonnull readonly align 8 dereferenceable(3) %18, i64 3, i1 false)
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #5
  ret i32 %303
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [128 x i8], align 8
  %19 = alloca %struct.XXH_INLINE_XXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #5
  store i64 %0, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #5
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
  %46 = load i32, ptr %18, align 8
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
  %74 = load i32, ptr %73, align 8
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #5
  ret i32 %304
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{i64 2147795114}
