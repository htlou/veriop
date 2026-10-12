; ModuleID = 'history-eq/c/fast_float/cb5d9cd9/wrap.cpp'
source_filename = "history-eq/c/fast_float/cb5d9cd9/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @target_mantissa(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1, !tbaa !5
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1, !tbaa !5
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1, !tbaa !5
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %37

30:                                               ; preds = %1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %32 = sext i8 %6 to i32
  %33 = add nsw i32 %32, -48
  %34 = icmp ult i32 %33, 10
  %35 = icmp eq i8 %6, 46
  %36 = or i1 %35, %34
  br i1 %36, label %37, label %298

37:                                               ; preds = %30, %27
  %38 = phi i32 [ %29, %27 ], [ %33, %30 ]
  %39 = phi i64 [ %0, %27 ], [ %5, %30 ]
  %40 = phi ptr [ %2, %27 ], [ %3, %30 ]
  %41 = phi ptr [ %2, %27 ], [ %31, %30 ]
  %42 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %43 = icmp ult i32 %38, 10
  br i1 %43, label %44, label %131

44:                                               ; preds = %37
  %45 = shl i64 %39, 56
  %46 = ashr exact i64 %45, 56
  %47 = add nsw i64 %46, -48
  %48 = add nuw nsw i64 %42, 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !8
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %131

54:                                               ; preds = %44
  %55 = mul nsw i64 %47, 10
  %56 = sext i8 %50 to i64
  %57 = add nsw i64 %55, -48
  %58 = add nsw i64 %57, %56
  %59 = or disjoint i64 %42, 2
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !5, !noalias !8
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %62, -48
  %64 = icmp ult i32 %63, 10
  br i1 %64, label %65, label %131

65:                                               ; preds = %54
  %66 = mul nsw i64 %58, 10
  %67 = sext i8 %61 to i64
  %68 = add nsw i64 %66, -48
  %69 = add nsw i64 %68, %67
  %70 = add nuw nsw i64 %42, 3
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !5, !noalias !8
  %73 = sext i8 %72 to i32
  %74 = add nsw i32 %73, -48
  %75 = icmp ult i32 %74, 10
  br i1 %75, label %76, label %131

76:                                               ; preds = %65
  %77 = mul nsw i64 %69, 10
  %78 = sext i8 %72 to i64
  %79 = add nsw i64 %77, -48
  %80 = add nsw i64 %79, %78
  %81 = or disjoint i64 %42, 4
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !5, !noalias !8
  %84 = sext i8 %83 to i32
  %85 = add nsw i32 %84, -48
  %86 = icmp ult i32 %85, 10
  br i1 %86, label %87, label %131

87:                                               ; preds = %76
  %88 = mul nsw i64 %80, 10
  %89 = sext i8 %83 to i64
  %90 = add nsw i64 %88, -48
  %91 = add nsw i64 %90, %89
  %92 = add nuw nsw i64 %42, 5
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !5, !noalias !8
  %95 = sext i8 %94 to i32
  %96 = add nsw i32 %95, -48
  %97 = icmp ult i32 %96, 10
  br i1 %97, label %98, label %131

98:                                               ; preds = %87
  %99 = mul i64 %91, 10
  %100 = sext i8 %94 to i64
  %101 = add i64 %99, -48
  %102 = add i64 %101, %100
  %103 = or disjoint i64 %42, 6
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !5, !noalias !8
  %106 = sext i8 %105 to i32
  %107 = add nsw i32 %106, -48
  %108 = icmp ult i32 %107, 10
  br i1 %108, label %109, label %131

109:                                              ; preds = %98
  %110 = mul i64 %102, 10
  %111 = sext i8 %105 to i64
  %112 = add i64 %110, -48
  %113 = add i64 %112, %111
  %114 = add nuw nsw i64 %42, 7
  %115 = icmp eq i64 %114, 8
  br i1 %115, label %127, label %116, !llvm.loop !11

116:                                              ; preds = %109
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 %114
  %118 = load i8, ptr %117, align 1, !tbaa !5, !noalias !8
  %119 = sext i8 %118 to i32
  %120 = add nsw i32 %119, -48
  %121 = icmp ult i32 %120, 10
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = mul i64 %113, 10
  %124 = sext i8 %118 to i64
  %125 = add i64 %123, -48
  %126 = add i64 %125, %124
  br label %127

127:                                              ; preds = %122, %109
  %128 = phi i64 [ %113, %109 ], [ %126, %122 ]
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %130 = sub nuw nsw i64 8, %42
  br label %198

131:                                              ; preds = %87, %98, %116, %37, %44, %54, %65, %76
  %132 = phi i64 [ %42, %37 ], [ %48, %44 ], [ %59, %54 ], [ %70, %65 ], [ %81, %76 ], [ %92, %87 ], [ %103, %98 ], [ %114, %116 ]
  %133 = phi i64 [ 0, %37 ], [ %47, %44 ], [ %58, %54 ], [ %69, %65 ], [ %80, %76 ], [ %91, %87 ], [ %102, %98 ], [ %113, %116 ]
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 %132
  %135 = sub nsw i64 %132, %42
  %136 = load i8, ptr %134, align 1, !tbaa !5, !noalias !8
  %137 = icmp eq i8 %136, 46
  br i1 %137, label %138, label %192

138:                                              ; preds = %131
  %139 = add nuw nsw i64 %132, 1
  %140 = getelementptr inbounds nuw i8, ptr %2, i64 %139
  %141 = ptrtoint ptr %140 to i64
  %142 = icmp slt i64 %132, 4
  br i1 %142, label %143, label %162

143:                                              ; preds = %138
  %144 = getelementptr inbounds nuw i8, ptr %2, i64 %139
  %145 = load i32, ptr %144, align 1, !noalias !8
  %146 = add i32 %145, 1179010630
  %147 = add i32 %145, -808464432
  %148 = or i32 %146, %147
  %149 = and i32 %148, -2139062144
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %143
  %152 = mul i64 %133, 10000
  %153 = mul i32 %147, 10
  %154 = lshr i32 %147, 8
  %155 = add i32 %153, %154
  %156 = and i32 %155, 16711935
  %157 = mul i32 %156, 6553601
  %158 = lshr i32 %157, 16
  %159 = zext nneg i32 %158 to i64
  %160 = add i64 %152, %159
  %161 = add nuw nsw i64 %132, 5
  br label %162

162:                                              ; preds = %138, %151
  %163 = phi i64 [ %160, %151 ], [ %133, %138 ]
  %164 = phi i64 [ %161, %151 ], [ %139, %138 ]
  %165 = icmp eq i64 %164, 8
  br i1 %165, label %184, label %166

166:                                              ; preds = %143, %162
  %167 = phi i64 [ %139, %143 ], [ %164, %162 ]
  %168 = phi i64 [ %133, %143 ], [ %163, %162 ]
  br label %169

169:                                              ; preds = %166, %177
  %170 = phi i64 [ %179, %177 ], [ %167, %166 ]
  %171 = phi i64 [ %182, %177 ], [ %168, %166 ]
  %172 = getelementptr inbounds nuw i8, ptr %2, i64 %170
  %173 = load i8, ptr %172, align 1, !tbaa !5, !noalias !8
  %174 = sext i8 %173 to i32
  %175 = add nsw i32 %174, -48
  %176 = icmp ult i32 %175, 10
  br i1 %176, label %177, label %184

177:                                              ; preds = %169
  %178 = add i8 %173, -48
  %179 = add nuw nsw i64 %170, 1
  %180 = mul i64 %171, 10
  %181 = zext i8 %178 to i64
  %182 = add i64 %180, %181
  %183 = icmp eq i64 %179, 8
  br i1 %183, label %184, label %169, !llvm.loop !13

184:                                              ; preds = %177, %169, %162
  %185 = phi i64 [ %163, %162 ], [ %171, %169 ], [ %182, %177 ]
  %186 = phi i64 [ 8, %162 ], [ %170, %169 ], [ 8, %177 ]
  %187 = getelementptr inbounds nuw i8, ptr %2, i64 %186
  %188 = ptrtoint ptr %187 to i64
  %189 = sub nsw i64 %186, %139
  %190 = sub i64 %135, %141
  %191 = add i64 %190, %188
  br label %192

192:                                              ; preds = %184, %131
  %193 = phi ptr [ %140, %184 ], [ null, %131 ]
  %194 = phi i64 [ %189, %184 ], [ 0, %131 ]
  %195 = phi i64 [ %185, %184 ], [ %133, %131 ]
  %196 = phi i64 [ %191, %184 ], [ %135, %131 ]
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %298, label %198

198:                                              ; preds = %192, %127
  %199 = phi ptr [ %129, %127 ], [ %134, %192 ]
  %200 = phi i64 [ 8, %127 ], [ %132, %192 ]
  %201 = phi ptr [ null, %127 ], [ %193, %192 ]
  %202 = phi i64 [ 0, %127 ], [ %194, %192 ]
  %203 = phi i64 [ %128, %127 ], [ %195, %192 ]
  %204 = phi i64 [ %130, %127 ], [ %196, %192 ]
  %205 = icmp sgt i64 %204, 19
  br i1 %205, label %206, label %298

206:                                              ; preds = %198
  %207 = load i8, ptr %41, align 1, !tbaa !5
  switch i8 %207, label %263 [
    i8 48, label %208
    i8 46, label %208
  ]

208:                                              ; preds = %206, %206
  %209 = icmp eq i8 %207, 48
  %210 = sext i1 %209 to i64
  %211 = add nsw i64 %204, %210
  %212 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 1
  %214 = load i8, ptr %213, align 1, !tbaa !5
  switch i8 %214, label %263 [
    i8 48, label %215
    i8 46, label %215
  ]

215:                                              ; preds = %208, %208
  %216 = icmp eq i8 %214, 48
  %217 = sext i1 %216 to i64
  %218 = add nsw i64 %211, %217
  %219 = or disjoint i64 %42, 2
  %220 = getelementptr inbounds nuw i8, ptr %2, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !5
  switch i8 %221, label %263 [
    i8 48, label %222
    i8 46, label %222
  ]

222:                                              ; preds = %215, %215
  %223 = icmp eq i8 %221, 48
  %224 = sext i1 %223 to i64
  %225 = add nsw i64 %218, %224
  %226 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 3
  %228 = load i8, ptr %227, align 1, !tbaa !5
  switch i8 %228, label %263 [
    i8 48, label %229
    i8 46, label %229
  ]

229:                                              ; preds = %222, %222
  %230 = icmp eq i8 %228, 48
  %231 = sext i1 %230 to i64
  %232 = add nsw i64 %225, %231
  %233 = or disjoint i64 %42, 4
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !5
  switch i8 %235, label %263 [
    i8 48, label %236
    i8 46, label %236
  ]

236:                                              ; preds = %229, %229
  %237 = icmp eq i8 %235, 48
  %238 = sext i1 %237 to i64
  %239 = add nsw i64 %232, %238
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 5
  %242 = load i8, ptr %241, align 1, !tbaa !5
  switch i8 %242, label %263 [
    i8 48, label %243
    i8 46, label %243
  ]

243:                                              ; preds = %236, %236
  %244 = icmp eq i8 %242, 48
  %245 = sext i1 %244 to i64
  %246 = add nsw i64 %239, %245
  %247 = or disjoint i64 %42, 6
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !5
  switch i8 %249, label %263 [
    i8 48, label %250
    i8 46, label %250
  ]

250:                                              ; preds = %243, %243
  %251 = icmp eq i8 %249, 48
  %252 = sext i1 %251 to i64
  %253 = add nsw i64 %246, %252
  %254 = add nuw nsw i64 %42, 7
  %255 = icmp eq i64 %254, 8
  br i1 %255, label %263, label %256, !llvm.loop !14

256:                                              ; preds = %250
  %257 = getelementptr inbounds nuw i8, ptr %2, i64 %254
  %258 = load i8, ptr %257, align 1, !tbaa !5
  switch i8 %258, label %263 [
    i8 48, label %259
    i8 46, label %259
  ]

259:                                              ; preds = %256, %256
  %260 = icmp eq i8 %258, 48
  %261 = sext i1 %260 to i64
  %262 = add nsw i64 %253, %261
  br label %263

263:                                              ; preds = %259, %256, %250, %243, %236, %229, %222, %215, %208, %206
  %264 = phi i64 [ %204, %206 ], [ %211, %208 ], [ %218, %215 ], [ %225, %222 ], [ %232, %229 ], [ %239, %236 ], [ %246, %243 ], [ %253, %250 ], [ %253, %256 ], [ %262, %259 ]
  %265 = icmp sgt i64 %264, 19
  br i1 %265, label %266, label %298

266:                                              ; preds = %263
  %267 = icmp samesign eq i64 %42, %200
  br i1 %267, label %282, label %268

268:                                              ; preds = %266, %268
  %269 = phi ptr [ %276, %268 ], [ %40, %266 ]
  %270 = phi i64 [ %275, %268 ], [ 0, %266 ]
  %271 = mul nuw i64 %270, 10
  %272 = load i8, ptr %269, align 1, !tbaa !5
  %273 = sext i8 %272 to i64
  %274 = add i64 %271, -48
  %275 = add i64 %274, %273
  %276 = getelementptr inbounds nuw i8, ptr %269, i64 1
  %277 = icmp ult i64 %275, 1000000000000000000
  %278 = icmp ne ptr %276, %199
  %279 = select i1 %277, i1 %278, i1 false
  br i1 %279, label %268, label %280, !llvm.loop !15

280:                                              ; preds = %268
  %281 = icmp ugt i64 %275, 999999999999999999
  br i1 %281, label %298, label %282

282:                                              ; preds = %266, %280
  %283 = phi i64 [ %275, %280 ], [ 0, %266 ]
  %284 = getelementptr inbounds nuw i8, ptr %201, i64 %202
  %285 = icmp samesign eq i64 %202, 0
  br i1 %285, label %298, label %286

286:                                              ; preds = %282, %286
  %287 = phi ptr [ %294, %286 ], [ %201, %282 ]
  %288 = phi i64 [ %293, %286 ], [ %283, %282 ]
  %289 = mul nuw i64 %288, 10
  %290 = load i8, ptr %287, align 1, !tbaa !5
  %291 = sext i8 %290 to i64
  %292 = add i64 %289, -48
  %293 = add i64 %292, %291
  %294 = getelementptr inbounds nuw i8, ptr %287, i64 1
  %295 = icmp ult i64 %293, 1000000000000000000
  %296 = icmp ne ptr %294, %284
  %297 = select i1 %295, i1 %296, i1 false
  br i1 %297, label %286, label %298, !llvm.loop !16

298:                                              ; preds = %286, %282, %198, %263, %280, %192, %30
  %299 = phi i64 [ 0, %30 ], [ 0, %192 ], [ %203, %263 ], [ %203, %198 ], [ %275, %280 ], [ %283, %282 ], [ %293, %286 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #3
  ret i64 %299
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @target_exponent(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1, !tbaa !5
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1, !tbaa !5
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1, !tbaa !5
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %37

30:                                               ; preds = %1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %32 = sext i8 %6 to i32
  %33 = add nsw i32 %32, -48
  %34 = icmp ult i32 %33, 10
  %35 = icmp eq i8 %6, 46
  %36 = or i1 %35, %34
  br i1 %36, label %37, label %317

37:                                               ; preds = %30, %27
  %38 = phi i32 [ %29, %27 ], [ %33, %30 ]
  %39 = phi ptr [ %2, %27 ], [ %3, %30 ]
  %40 = phi ptr [ %2, %27 ], [ %31, %30 ]
  %41 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %42 = icmp ult i32 %38, 10
  br i1 %42, label %43, label %99

43:                                               ; preds = %37
  %44 = add nuw nsw i64 %41, 1
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !5, !noalias !17
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, -48
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %99

50:                                               ; preds = %43
  %51 = or disjoint i64 %41, 2
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !5, !noalias !17
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %99

57:                                               ; preds = %50
  %58 = add nuw nsw i64 %41, 3
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5, !noalias !17
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %64, label %99

64:                                               ; preds = %57
  %65 = or disjoint i64 %41, 4
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !5, !noalias !17
  %68 = sext i8 %67 to i32
  %69 = add nsw i32 %68, -48
  %70 = icmp ult i32 %69, 10
  br i1 %70, label %71, label %99

71:                                               ; preds = %64
  %72 = add nuw nsw i64 %41, 5
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !5, !noalias !17
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, -48
  %77 = icmp ult i32 %76, 10
  br i1 %77, label %78, label %105

78:                                               ; preds = %71
  %79 = or disjoint i64 %41, 6
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !5, !noalias !17
  %82 = sext i8 %81 to i32
  %83 = add nsw i32 %82, -48
  %84 = icmp ult i32 %83, 10
  br i1 %84, label %85, label %105

85:                                               ; preds = %78
  %86 = add nuw nsw i64 %41, 7
  %87 = icmp eq i64 %86, 8
  br i1 %87, label %94, label %88, !llvm.loop !11

88:                                               ; preds = %85
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 %86
  %90 = load i8, ptr %89, align 1, !tbaa !5, !noalias !17
  %91 = sext i8 %90 to i32
  %92 = add nsw i32 %91, -48
  %93 = icmp ult i32 %92, 10
  br i1 %93, label %94, label %105

94:                                               ; preds = %88, %85
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %96 = ptrtoint ptr %95 to i64
  %97 = ptrtoint ptr %39 to i64
  %98 = sub i64 %96, %97
  br label %152

99:                                               ; preds = %64, %57, %50, %43, %37
  %100 = phi i64 [ %41, %37 ], [ %44, %43 ], [ %51, %50 ], [ %58, %57 ], [ %65, %64 ]
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = ptrtoint ptr %101 to i64
  %103 = ptrtoint ptr %39 to i64
  %104 = sub i64 %102, %103
  br label %111

105:                                              ; preds = %88, %78, %71
  %106 = phi i64 [ %72, %71 ], [ %79, %78 ], [ %86, %88 ]
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %106
  %108 = ptrtoint ptr %107 to i64
  %109 = ptrtoint ptr %39 to i64
  %110 = sub i64 %108, %109
  br label %111

111:                                              ; preds = %105, %99
  %112 = phi i64 [ %104, %99 ], [ %110, %105 ]
  %113 = phi i64 [ %102, %99 ], [ %108, %105 ]
  %114 = phi ptr [ %101, %99 ], [ %107, %105 ]
  %115 = phi i64 [ %100, %99 ], [ %106, %105 ]
  %116 = load i8, ptr %114, align 1, !tbaa !5, !noalias !17
  %117 = icmp eq i8 %116, 46
  br i1 %117, label %118, label %152

118:                                              ; preds = %111
  %119 = add nuw nsw i64 %115, 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 %119
  %121 = icmp slt i64 %115, 4
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 %119
  %124 = load i32, ptr %123, align 1, !noalias !17
  %125 = add i32 %124, 1179010630
  %126 = add i32 %124, -808464432
  %127 = or i32 %125, %126
  %128 = and i32 %127, -2139062144
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = add nuw nsw i64 %115, 5
  br label %132

132:                                              ; preds = %118, %130
  %133 = phi i64 [ %131, %130 ], [ %119, %118 ]
  %134 = icmp eq i64 %133, 8
  br i1 %134, label %147, label %135

135:                                              ; preds = %122, %132
  %136 = phi i64 [ %119, %122 ], [ %133, %132 ]
  br label %137

137:                                              ; preds = %135, %144
  %138 = phi i64 [ %145, %144 ], [ %136, %135 ]
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !5, !noalias !17
  %141 = sext i8 %140 to i32
  %142 = add nsw i32 %141, -48
  %143 = icmp ult i32 %142, 10
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = add nuw nsw i64 %138, 1
  %146 = icmp eq i64 %145, 8
  br i1 %146, label %147, label %137, !llvm.loop !13

147:                                              ; preds = %144, %137, %132
  %148 = phi i64 [ 8, %132 ], [ %138, %137 ], [ 8, %144 ]
  %149 = sub nsw i64 %119, %148
  %150 = sub nsw i64 %148, %119
  %151 = sub nsw i64 %112, %149
  br label %152

152:                                              ; preds = %94, %147, %111
  %153 = phi i64 [ %113, %147 ], [ %113, %111 ], [ %96, %94 ]
  %154 = phi ptr [ %114, %147 ], [ %114, %111 ], [ %95, %94 ]
  %155 = phi i64 [ %115, %147 ], [ %115, %111 ], [ 8, %94 ]
  %156 = phi ptr [ %120, %147 ], [ null, %111 ], [ null, %94 ]
  %157 = phi i64 [ %150, %147 ], [ 0, %111 ], [ 0, %94 ]
  %158 = phi i64 [ %148, %147 ], [ %115, %111 ], [ 8, %94 ]
  %159 = phi i64 [ %149, %147 ], [ 0, %111 ], [ 0, %94 ]
  %160 = phi i64 [ %151, %147 ], [ %112, %111 ], [ %98, %94 ]
  %161 = getelementptr inbounds nuw i8, ptr %2, i64 %158
  %162 = icmp eq i64 %160, 0
  br i1 %162, label %317, label %163

163:                                              ; preds = %152
  %164 = icmp eq i64 %158, 8
  br i1 %164, label %212, label %165

165:                                              ; preds = %163
  %166 = load i8, ptr %161, align 1, !tbaa !5, !noalias !17
  switch i8 %166, label %212 [
    i8 101, label %167
    i8 69, label %167
  ]

167:                                              ; preds = %165, %165
  %168 = add nuw nsw i64 %158, 1
  %169 = getelementptr inbounds nuw i8, ptr %2, i64 %168
  %170 = icmp eq i64 %168, 8
  br i1 %170, label %180, label %171

171:                                              ; preds = %167
  %172 = load i8, ptr %169, align 1, !tbaa !5, !noalias !17
  %173 = icmp eq i8 %172, 45
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = getelementptr inbounds nuw i8, ptr %161, i64 2
  br label %180

176:                                              ; preds = %171
  %177 = icmp eq i8 %172, 43
  %178 = getelementptr inbounds nuw i8, ptr %161, i64 2
  %179 = select i1 %177, ptr %178, ptr %169
  br label %180

180:                                              ; preds = %176, %167, %174
  %181 = phi ptr [ %175, %174 ], [ %169, %167 ], [ %179, %176 ]
  %182 = phi i1 [ true, %174 ], [ false, %167 ], [ false, %176 ]
  %183 = icmp eq ptr %181, %25
  br i1 %183, label %212, label %184

184:                                              ; preds = %180
  %185 = load i8, ptr %181, align 1, !tbaa !5, !noalias !17
  %186 = sext i8 %185 to i32
  %187 = add nsw i32 %186, -48
  %188 = icmp ult i32 %187, 10
  br i1 %188, label %189, label %212

189:                                              ; preds = %184, %203
  %190 = phi i64 [ %204, %203 ], [ 0, %184 ]
  %191 = phi ptr [ %205, %203 ], [ %181, %184 ]
  %192 = load i8, ptr %191, align 1, !tbaa !5, !noalias !17
  %193 = sext i8 %192 to i32
  %194 = add nsw i32 %193, -48
  %195 = icmp ult i32 %194, 10
  br i1 %195, label %196, label %207

196:                                              ; preds = %189
  %197 = icmp slt i64 %190, 268435456
  br i1 %197, label %198, label %203

198:                                              ; preds = %196
  %199 = add i8 %192, -48
  %200 = mul nsw i64 %190, 10
  %201 = zext i8 %199 to i64
  %202 = add nsw i64 %200, %201
  br label %203

203:                                              ; preds = %198, %196
  %204 = phi i64 [ %202, %198 ], [ %190, %196 ]
  %205 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %206 = icmp eq ptr %205, %25
  br i1 %206, label %207, label %189, !llvm.loop !20

207:                                              ; preds = %203, %189
  %208 = phi i64 [ %204, %203 ], [ %190, %189 ]
  %209 = sub nsw i64 0, %208
  %210 = select i1 %182, i64 %209, i64 %208
  %211 = add nsw i64 %210, %159
  br label %212

212:                                              ; preds = %165, %163, %207, %180, %184
  %213 = phi i64 [ %210, %207 ], [ 0, %180 ], [ 0, %184 ], [ 0, %165 ], [ 0, %163 ]
  %214 = phi i64 [ %211, %207 ], [ %159, %180 ], [ %159, %184 ], [ %159, %165 ], [ %159, %163 ]
  %215 = icmp sgt i64 %160, 19
  br i1 %215, label %216, label %317

216:                                              ; preds = %212
  %217 = load i8, ptr %40, align 1, !tbaa !5
  switch i8 %217, label %273 [
    i8 48, label %218
    i8 46, label %218
  ]

218:                                              ; preds = %216, %216
  %219 = icmp eq i8 %217, 48
  %220 = sext i1 %219 to i64
  %221 = add nsw i64 %160, %220
  %222 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 1
  %224 = load i8, ptr %223, align 1, !tbaa !5
  switch i8 %224, label %273 [
    i8 48, label %225
    i8 46, label %225
  ]

225:                                              ; preds = %218, %218
  %226 = icmp eq i8 %224, 48
  %227 = sext i1 %226 to i64
  %228 = add nsw i64 %221, %227
  %229 = or disjoint i64 %41, 2
  %230 = getelementptr inbounds nuw i8, ptr %2, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !5
  switch i8 %231, label %273 [
    i8 48, label %232
    i8 46, label %232
  ]

232:                                              ; preds = %225, %225
  %233 = icmp eq i8 %231, 48
  %234 = sext i1 %233 to i64
  %235 = add nsw i64 %228, %234
  %236 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 3
  %238 = load i8, ptr %237, align 1, !tbaa !5
  switch i8 %238, label %273 [
    i8 48, label %239
    i8 46, label %239
  ]

239:                                              ; preds = %232, %232
  %240 = icmp eq i8 %238, 48
  %241 = sext i1 %240 to i64
  %242 = add nsw i64 %235, %241
  %243 = or disjoint i64 %41, 4
  %244 = getelementptr inbounds nuw i8, ptr %2, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !5
  switch i8 %245, label %273 [
    i8 48, label %246
    i8 46, label %246
  ]

246:                                              ; preds = %239, %239
  %247 = icmp eq i8 %245, 48
  %248 = sext i1 %247 to i64
  %249 = add nsw i64 %242, %248
  %250 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 5
  %252 = load i8, ptr %251, align 1, !tbaa !5
  switch i8 %252, label %273 [
    i8 48, label %253
    i8 46, label %253
  ]

253:                                              ; preds = %246, %246
  %254 = icmp eq i8 %252, 48
  %255 = sext i1 %254 to i64
  %256 = add nsw i64 %249, %255
  %257 = or disjoint i64 %41, 6
  %258 = getelementptr inbounds nuw i8, ptr %2, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !5
  switch i8 %259, label %273 [
    i8 48, label %260
    i8 46, label %260
  ]

260:                                              ; preds = %253, %253
  %261 = icmp eq i8 %259, 48
  %262 = sext i1 %261 to i64
  %263 = add nsw i64 %256, %262
  %264 = add nuw nsw i64 %41, 7
  %265 = icmp eq i64 %264, 8
  br i1 %265, label %273, label %266, !llvm.loop !14

266:                                              ; preds = %260
  %267 = getelementptr inbounds nuw i8, ptr %2, i64 %264
  %268 = load i8, ptr %267, align 1, !tbaa !5
  switch i8 %268, label %273 [
    i8 48, label %269
    i8 46, label %269
  ]

269:                                              ; preds = %266, %266
  %270 = icmp eq i8 %268, 48
  %271 = sext i1 %270 to i64
  %272 = add nsw i64 %263, %271
  br label %273

273:                                              ; preds = %269, %266, %260, %253, %246, %239, %232, %225, %218, %216
  %274 = phi i64 [ %160, %216 ], [ %221, %218 ], [ %228, %225 ], [ %235, %232 ], [ %242, %239 ], [ %249, %246 ], [ %256, %253 ], [ %263, %260 ], [ %263, %266 ], [ %272, %269 ]
  %275 = icmp sgt i64 %274, 19
  br i1 %275, label %276, label %317

276:                                              ; preds = %273
  %277 = icmp samesign eq i64 %41, %155
  br i1 %277, label %292, label %278

278:                                              ; preds = %276, %278
  %279 = phi ptr [ %286, %278 ], [ %39, %276 ]
  %280 = phi i64 [ %285, %278 ], [ 0, %276 ]
  %281 = mul nuw i64 %280, 10
  %282 = load i8, ptr %279, align 1, !tbaa !5
  %283 = sext i8 %282 to i64
  %284 = add i64 %281, -48
  %285 = add i64 %284, %283
  %286 = getelementptr inbounds nuw i8, ptr %279, i64 1
  %287 = icmp ult i64 %285, 1000000000000000000
  %288 = icmp ne ptr %286, %154
  %289 = select i1 %287, i1 %288, i1 false
  br i1 %289, label %278, label %290, !llvm.loop !15

290:                                              ; preds = %278
  %291 = icmp ugt i64 %285, 999999999999999999
  br i1 %291, label %311, label %292

292:                                              ; preds = %276, %290
  %293 = phi i64 [ %285, %290 ], [ 0, %276 ]
  %294 = getelementptr inbounds nuw i8, ptr %156, i64 %157
  %295 = icmp samesign eq i64 %157, 0
  br i1 %295, label %308, label %296

296:                                              ; preds = %292, %296
  %297 = phi ptr [ %304, %296 ], [ %156, %292 ]
  %298 = phi i64 [ %303, %296 ], [ %293, %292 ]
  %299 = mul nuw i64 %298, 10
  %300 = load i8, ptr %297, align 1, !tbaa !5
  %301 = sext i8 %300 to i64
  %302 = add i64 %299, -48
  %303 = add i64 %302, %301
  %304 = getelementptr inbounds nuw i8, ptr %297, i64 1
  %305 = icmp ult i64 %303, 1000000000000000000
  %306 = icmp ne ptr %304, %294
  %307 = select i1 %305, i1 %306, i1 false
  br i1 %307, label %296, label %308, !llvm.loop !16

308:                                              ; preds = %296, %292
  %309 = phi ptr [ %156, %292 ], [ %304, %296 ]
  %310 = ptrtoint ptr %156 to i64
  br label %311

311:                                              ; preds = %290, %308
  %312 = phi ptr [ %309, %308 ], [ %286, %290 ]
  %313 = phi i64 [ %310, %308 ], [ %153, %290 ]
  %314 = ptrtoint ptr %312 to i64
  %315 = sub i64 %313, %314
  %316 = add nsw i64 %315, %213
  br label %317

317:                                              ; preds = %212, %273, %311, %152, %30
  %318 = phi i64 [ 0, %30 ], [ 0, %152 ], [ %214, %212 ], [ %316, %311 ], [ %214, %273 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #3
  ret i64 %318
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_consumed(i64 noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1, !tbaa !5
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1, !tbaa !5
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1, !tbaa !5
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %36

30:                                               ; preds = %1
  %31 = sext i8 %6 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  %34 = icmp eq i8 %6, 46
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %174

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %38 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %39 = icmp ult i32 %37, 10
  br i1 %39, label %40, label %93

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %38, 1
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !21
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %93

47:                                               ; preds = %40
  %48 = or disjoint i64 %38, 2
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !21
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %93

54:                                               ; preds = %47
  %55 = add nuw nsw i64 %38, 3
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !5, !noalias !21
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %61, label %93

61:                                               ; preds = %54
  %62 = or disjoint i64 %38, 4
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !5, !noalias !21
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, -48
  %67 = icmp ult i32 %66, 10
  br i1 %67, label %68, label %93

68:                                               ; preds = %61
  %69 = add nuw nsw i64 %38, 5
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !5, !noalias !21
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %75, label %93

75:                                               ; preds = %68
  %76 = or disjoint i64 %38, 6
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !5, !noalias !21
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %79, -48
  %81 = icmp ult i32 %80, 10
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = add nuw nsw i64 %38, 7
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %91, label %85, !llvm.loop !11

85:                                               ; preds = %82
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %83
  %87 = load i8, ptr %86, align 1, !tbaa !5, !noalias !21
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %91, label %93

91:                                               ; preds = %85, %82
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %174

93:                                               ; preds = %68, %75, %85, %36, %40, %47, %54, %61
  %94 = phi i64 [ %38, %36 ], [ %41, %40 ], [ %48, %47 ], [ %55, %54 ], [ %62, %61 ], [ %69, %68 ], [ %76, %75 ], [ %83, %85 ]
  %95 = sub nsw i64 %94, %38
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 %94
  %97 = load i8, ptr %96, align 1, !tbaa !5, !noalias !21
  %98 = icmp eq i8 %97, 46
  br i1 %98, label %99, label %135

99:                                               ; preds = %93
  %100 = add nuw nsw i64 %94, 1
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = ptrtoint ptr %101 to i64
  %103 = icmp slt i64 %94, 4
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %106 = load i32, ptr %105, align 1, !noalias !21
  %107 = add i32 %106, 1179010630
  %108 = add i32 %106, -808464432
  %109 = or i32 %107, %108
  %110 = and i32 %109, -2139062144
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = add nuw nsw i64 %94, 5
  br label %114

114:                                              ; preds = %99, %112
  %115 = phi i64 [ %113, %112 ], [ %100, %99 ]
  %116 = icmp eq i64 %115, 8
  br i1 %116, label %129, label %117

117:                                              ; preds = %104, %114
  %118 = phi i64 [ %100, %104 ], [ %115, %114 ]
  br label %119

119:                                              ; preds = %117, %126
  %120 = phi i64 [ %127, %126 ], [ %118, %117 ]
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !5, !noalias !21
  %123 = sext i8 %122 to i32
  %124 = add nsw i32 %123, -48
  %125 = icmp ult i32 %124, 10
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = add nuw nsw i64 %120, 1
  %128 = icmp eq i64 %127, 8
  br i1 %128, label %129, label %119, !llvm.loop !13

129:                                              ; preds = %126, %119, %114
  %130 = phi i64 [ 8, %114 ], [ %120, %119 ], [ 8, %126 ]
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 %130
  %132 = ptrtoint ptr %131 to i64
  %133 = sub i64 %95, %102
  %134 = add i64 %133, %132
  br label %135

135:                                              ; preds = %129, %93
  %136 = phi i64 [ %130, %129 ], [ %94, %93 ]
  %137 = phi i64 [ %134, %129 ], [ %95, %93 ]
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 %136
  %139 = icmp eq i64 %137, 0
  %140 = icmp eq i64 %136, 8
  %141 = or i1 %139, %140
  br i1 %141, label %174, label %142

142:                                              ; preds = %135
  %143 = load i8, ptr %138, align 1, !tbaa !5, !noalias !21
  switch i8 %143, label %174 [
    i8 101, label %144
    i8 69, label %144
  ]

144:                                              ; preds = %142, %142
  %145 = add nuw nsw i64 %136, 1
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 %145
  %147 = icmp eq i64 %145, 8
  br i1 %147, label %157, label %148

148:                                              ; preds = %144
  %149 = load i8, ptr %146, align 1, !tbaa !5, !noalias !21
  %150 = icmp eq i8 %149, 45
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = getelementptr inbounds nuw i8, ptr %138, i64 2
  br label %157

153:                                              ; preds = %148
  %154 = icmp eq i8 %149, 43
  %155 = getelementptr inbounds nuw i8, ptr %138, i64 2
  %156 = select i1 %154, ptr %155, ptr %146
  br label %157

157:                                              ; preds = %153, %144, %151
  %158 = phi ptr [ %152, %151 ], [ %146, %144 ], [ %156, %153 ]
  %159 = icmp eq ptr %158, %25
  br i1 %159, label %174, label %160

160:                                              ; preds = %157
  %161 = load i8, ptr %158, align 1, !tbaa !5, !noalias !21
  %162 = sext i8 %161 to i32
  %163 = add nsw i32 %162, -48
  %164 = icmp ult i32 %163, 10
  br i1 %164, label %165, label %174

165:                                              ; preds = %160, %171
  %166 = phi ptr [ %172, %171 ], [ %158, %160 ]
  %167 = load i8, ptr %166, align 1, !tbaa !5, !noalias !21
  %168 = sext i8 %167 to i32
  %169 = add nsw i32 %168, -48
  %170 = icmp ult i32 %169, 10
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = getelementptr inbounds nuw i8, ptr %166, i64 1
  %173 = icmp eq ptr %172, %25
  br i1 %173, label %174, label %165, !llvm.loop !20

174:                                              ; preds = %160, %157, %142, %91, %171, %165, %135, %30
  %175 = phi ptr [ %3, %30 ], [ %138, %135 ], [ %138, %157 ], [ %138, %160 ], [ %138, %142 ], [ %92, %91 ], [ %166, %165 ], [ %25, %171 ]
  %176 = ptrtoint ptr %175 to i64
  %177 = ptrtoint ptr %2 to i64
  %178 = sub i64 %176, %177
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #3
  ret i64 %178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 2) i64 @target_negative(i64 noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1, !tbaa !5
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1, !tbaa !5
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1, !tbaa !5
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %36

30:                                               ; preds = %1
  %31 = sext i8 %6 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  %34 = icmp eq i8 %6, 46
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %142

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %38 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %39 = icmp ult i32 %37, 10
  br i1 %39, label %40, label %93

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %38, 1
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !24
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %93

47:                                               ; preds = %40
  %48 = or disjoint i64 %38, 2
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !24
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %93

54:                                               ; preds = %47
  %55 = add nuw nsw i64 %38, 3
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !5, !noalias !24
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %61, label %93

61:                                               ; preds = %54
  %62 = or disjoint i64 %38, 4
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !5, !noalias !24
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, -48
  %67 = icmp ult i32 %66, 10
  br i1 %67, label %68, label %93

68:                                               ; preds = %61
  %69 = add nuw nsw i64 %38, 5
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !5, !noalias !24
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %75, label %93

75:                                               ; preds = %68
  %76 = or disjoint i64 %38, 6
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !5, !noalias !24
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %79, -48
  %81 = icmp ult i32 %80, 10
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = add nuw nsw i64 %38, 7
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %91, label %85, !llvm.loop !11

85:                                               ; preds = %82
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %83
  %87 = load i8, ptr %86, align 1, !tbaa !5, !noalias !24
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %91, label %93

91:                                               ; preds = %85, %82
  %92 = sub nuw nsw i64 8, %38
  br label %138

93:                                               ; preds = %68, %75, %85, %36, %40, %47, %54, %61
  %94 = phi i64 [ %38, %36 ], [ %41, %40 ], [ %48, %47 ], [ %55, %54 ], [ %62, %61 ], [ %69, %68 ], [ %76, %75 ], [ %83, %85 ]
  %95 = sub nsw i64 %94, %38
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 %94
  %97 = load i8, ptr %96, align 1, !tbaa !5, !noalias !24
  %98 = icmp eq i8 %97, 46
  br i1 %98, label %99, label %135

99:                                               ; preds = %93
  %100 = add nuw nsw i64 %94, 1
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %102 = ptrtoint ptr %101 to i64
  %103 = icmp slt i64 %94, 4
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %106 = load i32, ptr %105, align 1, !noalias !24
  %107 = add i32 %106, 1179010630
  %108 = add i32 %106, -808464432
  %109 = or i32 %107, %108
  %110 = and i32 %109, -2139062144
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = add nuw nsw i64 %94, 5
  br label %114

114:                                              ; preds = %99, %112
  %115 = phi i64 [ %113, %112 ], [ %100, %99 ]
  %116 = icmp eq i64 %115, 8
  br i1 %116, label %129, label %117

117:                                              ; preds = %104, %114
  %118 = phi i64 [ %100, %104 ], [ %115, %114 ]
  br label %119

119:                                              ; preds = %117, %126
  %120 = phi i64 [ %127, %126 ], [ %118, %117 ]
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !5, !noalias !24
  %123 = sext i8 %122 to i32
  %124 = add nsw i32 %123, -48
  %125 = icmp ult i32 %124, 10
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = add nuw nsw i64 %120, 1
  %128 = icmp eq i64 %127, 8
  br i1 %128, label %129, label %119, !llvm.loop !13

129:                                              ; preds = %126, %119, %114
  %130 = phi i64 [ 8, %114 ], [ %120, %119 ], [ 8, %126 ]
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 %130
  %132 = ptrtoint ptr %131 to i64
  %133 = sub i64 %95, %102
  %134 = add i64 %133, %132
  br label %135

135:                                              ; preds = %129, %93
  %136 = phi i64 [ %134, %129 ], [ %95, %93 ]
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135, %91
  %139 = phi i64 [ %92, %91 ], [ %136, %135 ]
  %140 = icmp sgt i64 %139, 19
  %141 = zext i1 %26 to i64
  br label %142

142:                                              ; preds = %135, %30, %138
  %143 = phi i64 [ %141, %138 ], [ 0, %30 ], [ 0, %135 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #3
  ret i64 %143
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 2) i64 @target_valid(i64 noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1, !tbaa !5
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1, !tbaa !5
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1, !tbaa !5
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %36

30:                                               ; preds = %1
  %31 = sext i8 %6 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  %34 = icmp eq i8 %6, 46
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %137

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %38 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %39 = icmp ult i32 %37, 10
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %38, 1
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !27
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %91

47:                                               ; preds = %40
  %48 = or disjoint i64 %38, 2
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !27
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %91

54:                                               ; preds = %47
  %55 = add nuw nsw i64 %38, 3
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !5, !noalias !27
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %61, label %91

61:                                               ; preds = %54
  %62 = or disjoint i64 %38, 4
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !5, !noalias !27
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, -48
  %67 = icmp ult i32 %66, 10
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = add nuw nsw i64 %38, 5
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !5, !noalias !27
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = or disjoint i64 %38, 6
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !5, !noalias !27
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %79, -48
  %81 = icmp ult i32 %80, 10
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = add nuw nsw i64 %38, 7
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %136, label %85, !llvm.loop !11

85:                                               ; preds = %82
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %83
  %87 = load i8, ptr %86, align 1, !tbaa !5, !noalias !27
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %136, label %91

91:                                               ; preds = %68, %75, %85, %36, %40, %47, %54, %61
  %92 = phi i64 [ %38, %36 ], [ %41, %40 ], [ %48, %47 ], [ %55, %54 ], [ %62, %61 ], [ %69, %68 ], [ %76, %75 ], [ %83, %85 ]
  %93 = sub nsw i64 %92, %38
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  %95 = load i8, ptr %94, align 1, !tbaa !5, !noalias !27
  %96 = icmp eq i8 %95, 46
  br i1 %96, label %97, label %133

97:                                               ; preds = %91
  %98 = add nuw nsw i64 %92, 1
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %100 = ptrtoint ptr %99 to i64
  %101 = icmp slt i64 %92, 4
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %104 = load i32, ptr %103, align 1, !noalias !27
  %105 = add i32 %104, 1179010630
  %106 = add i32 %104, -808464432
  %107 = or i32 %105, %106
  %108 = and i32 %107, -2139062144
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = add nuw nsw i64 %92, 5
  br label %112

112:                                              ; preds = %97, %110
  %113 = phi i64 [ %111, %110 ], [ %98, %97 ]
  %114 = icmp eq i64 %113, 8
  br i1 %114, label %127, label %115

115:                                              ; preds = %102, %112
  %116 = phi i64 [ %98, %102 ], [ %113, %112 ]
  br label %117

117:                                              ; preds = %115, %124
  %118 = phi i64 [ %125, %124 ], [ %116, %115 ]
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !5, !noalias !27
  %121 = sext i8 %120 to i32
  %122 = add nsw i32 %121, -48
  %123 = icmp ult i32 %122, 10
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = add nuw nsw i64 %118, 1
  %126 = icmp eq i64 %125, 8
  br i1 %126, label %127, label %117, !llvm.loop !13

127:                                              ; preds = %124, %117, %112
  %128 = phi i64 [ 8, %112 ], [ %118, %117 ], [ 8, %124 ]
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %128
  %130 = ptrtoint ptr %129 to i64
  %131 = sub i64 %93, %100
  %132 = add i64 %131, %130
  br label %133

133:                                              ; preds = %127, %91
  %134 = phi i64 [ %132, %127 ], [ %93, %91 ]
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %82, %85, %133
  br label %137

137:                                              ; preds = %136, %133, %30
  %138 = phi i64 [ 0, %30 ], [ 0, %133 ], [ 1, %136 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #3
  ret i64 %138
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 2) i64 @target_too_many_digits(i64 noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1, !tbaa !5
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1, !tbaa !5
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1, !tbaa !5
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %37

30:                                               ; preds = %1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %32 = sext i8 %6 to i32
  %33 = add nsw i32 %32, -48
  %34 = icmp ult i32 %33, 10
  %35 = icmp eq i8 %6, 46
  %36 = or i1 %35, %34
  br i1 %36, label %37, label %204

37:                                               ; preds = %30, %27
  %38 = phi i32 [ %29, %27 ], [ %33, %30 ]
  %39 = phi ptr [ %2, %27 ], [ %31, %30 ]
  %40 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %41 = icmp ult i32 %38, 10
  br i1 %41, label %42, label %95

42:                                               ; preds = %37
  %43 = add nuw nsw i64 %40, 1
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !5, !noalias !30
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, -48
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %95

49:                                               ; preds = %42
  %50 = or disjoint i64 %40, 2
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !5, !noalias !30
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %53, -48
  %55 = icmp ult i32 %54, 10
  br i1 %55, label %56, label %95

56:                                               ; preds = %49
  %57 = add nuw nsw i64 %40, 3
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !5, !noalias !30
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %60, -48
  %62 = icmp ult i32 %61, 10
  br i1 %62, label %63, label %95

63:                                               ; preds = %56
  %64 = or disjoint i64 %40, 4
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !5, !noalias !30
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %67, -48
  %69 = icmp ult i32 %68, 10
  br i1 %69, label %70, label %95

70:                                               ; preds = %63
  %71 = add nuw nsw i64 %40, 5
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !5, !noalias !30
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, -48
  %76 = icmp ult i32 %75, 10
  br i1 %76, label %77, label %95

77:                                               ; preds = %70
  %78 = or disjoint i64 %40, 6
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !5, !noalias !30
  %81 = sext i8 %80 to i32
  %82 = add nsw i32 %81, -48
  %83 = icmp ult i32 %82, 10
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = add nuw nsw i64 %40, 7
  %86 = icmp eq i64 %85, 8
  br i1 %86, label %93, label %87, !llvm.loop !11

87:                                               ; preds = %84
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 %85
  %89 = load i8, ptr %88, align 1, !tbaa !5, !noalias !30
  %90 = sext i8 %89 to i32
  %91 = add nsw i32 %90, -48
  %92 = icmp ult i32 %91, 10
  br i1 %92, label %93, label %95

93:                                               ; preds = %87, %84
  %94 = sub nuw nsw i64 8, %40
  br label %140

95:                                               ; preds = %70, %77, %87, %37, %42, %49, %56, %63
  %96 = phi i64 [ %40, %37 ], [ %43, %42 ], [ %50, %49 ], [ %57, %56 ], [ %64, %63 ], [ %71, %70 ], [ %78, %77 ], [ %85, %87 ]
  %97 = sub nsw i64 %96, %40
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 %96
  %99 = load i8, ptr %98, align 1, !tbaa !5, !noalias !30
  %100 = icmp eq i8 %99, 46
  br i1 %100, label %101, label %137

101:                                              ; preds = %95
  %102 = add nuw nsw i64 %96, 1
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %102
  %104 = ptrtoint ptr %103 to i64
  %105 = icmp slt i64 %96, 4
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %102
  %108 = load i32, ptr %107, align 1, !noalias !30
  %109 = add i32 %108, 1179010630
  %110 = add i32 %108, -808464432
  %111 = or i32 %109, %110
  %112 = and i32 %111, -2139062144
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = add nuw nsw i64 %96, 5
  br label %116

116:                                              ; preds = %101, %114
  %117 = phi i64 [ %115, %114 ], [ %102, %101 ]
  %118 = icmp eq i64 %117, 8
  br i1 %118, label %131, label %119

119:                                              ; preds = %106, %116
  %120 = phi i64 [ %102, %106 ], [ %117, %116 ]
  br label %121

121:                                              ; preds = %119, %128
  %122 = phi i64 [ %129, %128 ], [ %120, %119 ]
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !5, !noalias !30
  %125 = sext i8 %124 to i32
  %126 = add nsw i32 %125, -48
  %127 = icmp ult i32 %126, 10
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = add nuw nsw i64 %122, 1
  %130 = icmp eq i64 %129, 8
  br i1 %130, label %131, label %121, !llvm.loop !13

131:                                              ; preds = %128, %121, %116
  %132 = phi i64 [ 8, %116 ], [ %122, %121 ], [ 8, %128 ]
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 %132
  %134 = ptrtoint ptr %133 to i64
  %135 = sub i64 %97, %104
  %136 = add i64 %135, %134
  br label %137

137:                                              ; preds = %131, %95
  %138 = phi i64 [ %136, %131 ], [ %97, %95 ]
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %204, label %140

140:                                              ; preds = %137, %93
  %141 = phi i64 [ %94, %93 ], [ %138, %137 ]
  %142 = icmp sgt i64 %141, 19
  br i1 %142, label %143, label %204

143:                                              ; preds = %140
  %144 = load i8, ptr %39, align 1, !tbaa !5
  switch i8 %144, label %200 [
    i8 48, label %145
    i8 46, label %145
  ]

145:                                              ; preds = %143, %143
  %146 = icmp eq i8 %144, 48
  %147 = sext i1 %146 to i64
  %148 = add nsw i64 %141, %147
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %150 = getelementptr inbounds nuw i8, ptr %149, i64 1
  %151 = load i8, ptr %150, align 1, !tbaa !5
  switch i8 %151, label %200 [
    i8 48, label %152
    i8 46, label %152
  ]

152:                                              ; preds = %145, %145
  %153 = icmp eq i8 %151, 48
  %154 = sext i1 %153 to i64
  %155 = add nsw i64 %148, %154
  %156 = or disjoint i64 %40, 2
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !5
  switch i8 %158, label %200 [
    i8 48, label %159
    i8 46, label %159
  ]

159:                                              ; preds = %152, %152
  %160 = icmp eq i8 %158, 48
  %161 = sext i1 %160 to i64
  %162 = add nsw i64 %155, %161
  %163 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 3
  %165 = load i8, ptr %164, align 1, !tbaa !5
  switch i8 %165, label %200 [
    i8 48, label %166
    i8 46, label %166
  ]

166:                                              ; preds = %159, %159
  %167 = icmp eq i8 %165, 48
  %168 = sext i1 %167 to i64
  %169 = add nsw i64 %162, %168
  %170 = or disjoint i64 %40, 4
  %171 = getelementptr inbounds nuw i8, ptr %2, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !5
  switch i8 %172, label %200 [
    i8 48, label %173
    i8 46, label %173
  ]

173:                                              ; preds = %166, %166
  %174 = icmp eq i8 %172, 48
  %175 = sext i1 %174 to i64
  %176 = add nsw i64 %169, %175
  %177 = getelementptr inbounds nuw i8, ptr %2, i64 %40
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 5
  %179 = load i8, ptr %178, align 1, !tbaa !5
  switch i8 %179, label %200 [
    i8 48, label %180
    i8 46, label %180
  ]

180:                                              ; preds = %173, %173
  %181 = icmp eq i8 %179, 48
  %182 = sext i1 %181 to i64
  %183 = add nsw i64 %176, %182
  %184 = or disjoint i64 %40, 6
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !5
  switch i8 %186, label %200 [
    i8 48, label %187
    i8 46, label %187
  ]

187:                                              ; preds = %180, %180
  %188 = icmp eq i8 %186, 48
  %189 = sext i1 %188 to i64
  %190 = add nsw i64 %183, %189
  %191 = add nuw nsw i64 %40, 7
  %192 = icmp eq i64 %191, 8
  br i1 %192, label %200, label %193, !llvm.loop !14

193:                                              ; preds = %187
  %194 = getelementptr inbounds nuw i8, ptr %2, i64 %191
  %195 = load i8, ptr %194, align 1, !tbaa !5
  switch i8 %195, label %200 [
    i8 48, label %196
    i8 46, label %196
  ]

196:                                              ; preds = %193, %193
  %197 = icmp eq i8 %195, 48
  %198 = sext i1 %197 to i64
  %199 = add nsw i64 %190, %198
  br label %200

200:                                              ; preds = %196, %193, %187, %180, %173, %166, %159, %152, %145, %143
  %201 = phi i64 [ %141, %143 ], [ %148, %145 ], [ %155, %152 ], [ %162, %159 ], [ %169, %166 ], [ %176, %173 ], [ %183, %180 ], [ %190, %187 ], [ %190, %193 ], [ %199, %196 ]
  %202 = icmp sgt i64 %201, 19
  %203 = zext i1 %202 to i64
  br label %204

204:                                              ; preds = %200, %140, %137, %30
  %205 = phi i64 [ 0, %30 ], [ 0, %137 ], [ 0, %140 ], [ %203, %200 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #3
  ret i64 %205
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 7) i64 @target_error(i64 noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = trunc i64 %0 to i8
  store i8 %4, ptr %2, align 1, !tbaa !5
  %5 = lshr i64 %0, 8
  %6 = trunc i64 %5 to i8
  store i8 %6, ptr %3, align 1, !tbaa !5
  %7 = lshr i64 %0, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !5
  %10 = lshr i64 %0, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !5
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !5
  %16 = lshr i64 %0, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !5
  %19 = lshr i64 %0, 48
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %20, ptr %21, align 1, !tbaa !5
  %22 = lshr i64 %0, 56
  %23 = trunc nuw i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %23, ptr %24, align 1, !tbaa !5
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %25, align 1, !tbaa !5
  %26 = icmp eq i8 %4, 45
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = sext i8 %4 to i32
  %29 = add nsw i32 %28, -48
  br label %36

30:                                               ; preds = %1
  %31 = sext i8 %6 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  %34 = icmp eq i8 %6, 46
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %137

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %38 = phi i64 [ 0, %27 ], [ 1, %30 ]
  %39 = icmp ult i32 %37, 10
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %38, 1
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !33
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -48
  %46 = icmp ult i32 %45, 10
  br i1 %46, label %47, label %91

47:                                               ; preds = %40
  %48 = or disjoint i64 %38, 2
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5, !noalias !33
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %91

54:                                               ; preds = %47
  %55 = add nuw nsw i64 %38, 3
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !5, !noalias !33
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ult i32 %59, 10
  br i1 %60, label %61, label %91

61:                                               ; preds = %54
  %62 = or disjoint i64 %38, 4
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !5, !noalias !33
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, -48
  %67 = icmp ult i32 %66, 10
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = add nuw nsw i64 %38, 5
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !5, !noalias !33
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = or disjoint i64 %38, 6
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !5, !noalias !33
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %79, -48
  %81 = icmp ult i32 %80, 10
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = add nuw nsw i64 %38, 7
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %136, label %85, !llvm.loop !11

85:                                               ; preds = %82
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 %83
  %87 = load i8, ptr %86, align 1, !tbaa !5, !noalias !33
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %136, label %91

91:                                               ; preds = %68, %75, %85, %36, %40, %47, %54, %61
  %92 = phi i64 [ %38, %36 ], [ %41, %40 ], [ %48, %47 ], [ %55, %54 ], [ %62, %61 ], [ %69, %68 ], [ %76, %75 ], [ %83, %85 ]
  %93 = sub nsw i64 %92, %38
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 %92
  %95 = load i8, ptr %94, align 1, !tbaa !5, !noalias !33
  %96 = icmp eq i8 %95, 46
  br i1 %96, label %97, label %133

97:                                               ; preds = %91
  %98 = add nuw nsw i64 %92, 1
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %100 = ptrtoint ptr %99 to i64
  %101 = icmp slt i64 %92, 4
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %104 = load i32, ptr %103, align 1, !noalias !33
  %105 = add i32 %104, 1179010630
  %106 = add i32 %104, -808464432
  %107 = or i32 %105, %106
  %108 = and i32 %107, -2139062144
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = add nuw nsw i64 %92, 5
  br label %112

112:                                              ; preds = %97, %110
  %113 = phi i64 [ %111, %110 ], [ %98, %97 ]
  %114 = icmp eq i64 %113, 8
  br i1 %114, label %127, label %115

115:                                              ; preds = %102, %112
  %116 = phi i64 [ %98, %102 ], [ %113, %112 ]
  br label %117

117:                                              ; preds = %115, %124
  %118 = phi i64 [ %125, %124 ], [ %116, %115 ]
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !5, !noalias !33
  %121 = sext i8 %120 to i32
  %122 = add nsw i32 %121, -48
  %123 = icmp ult i32 %122, 10
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = add nuw nsw i64 %118, 1
  %126 = icmp eq i64 %125, 8
  br i1 %126, label %127, label %117, !llvm.loop !13

127:                                              ; preds = %124, %117, %112
  %128 = phi i64 [ 8, %112 ], [ %118, %117 ], [ 8, %124 ]
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 %128
  %130 = ptrtoint ptr %129 to i64
  %131 = sub i64 %93, %100
  %132 = add i64 %131, %130
  br label %133

133:                                              ; preds = %127, %91
  %134 = phi i64 [ %132, %127 ], [ %93, %91 ]
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %82, %85, %133
  br label %137

137:                                              ; preds = %136, %133, %30
  %138 = phi i64 [ 2, %30 ], [ 6, %133 ], [ 0, %136 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #3
  ret i64 %138
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!10 = distinct !{!10, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!19 = distinct !{!19, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!20 = distinct !{!20, !12}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!23 = distinct !{!23, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!26 = distinct !{!26, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!29 = distinct !{!29, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!32 = distinct !{!32, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!35 = distinct !{!35, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
