; ModuleID = 'history-eq/c/fast_float/fc0c8680/wrap.cpp'
source_filename = "history-eq/c/fast_float/fc0c8680/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.fast_float::parse_options" = type { i8, i8 }
%"struct.fast_float::parsed_number_string" = type { i64, i64, ptr, i8, i8, i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZN10fast_floatanENS_12chars_formatES0_ = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

@__const.target_exponent.input = private unnamed_addr constant [10 x i8] c"1e1000000\00", align 1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local i64 @target_exponent() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca %"struct.fast_float::parse_options", align 1
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca ptr, align 8
  %36 = alloca i64, align 8
  %37 = alloca ptr, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i8, align 1
  %41 = alloca i64, align 8
  %42 = alloca ptr, align 8
  %43 = alloca i8, align 1
  %44 = alloca i8, align 1
  %45 = alloca ptr, align 8
  %46 = alloca i64, align 8
  %47 = alloca ptr, align 8
  %48 = alloca [10 x i8], align 1
  %49 = alloca %"struct.fast_float::parsed_number_string", align 8
  %50 = alloca %"struct.fast_float::parse_options", align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr align 1 @__const.target_exponent.input, i64 10, i1 false)
  %51 = getelementptr inbounds [10 x i8], ptr %48, i64 0, i64 0
  %52 = getelementptr inbounds [10 x i8], ptr %48, i64 0, i64 0
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 10
  %54 = getelementptr inbounds i8, ptr %53, i64 -1
  %55 = getelementptr inbounds nuw %"struct.fast_float::parse_options", ptr %50, i32 0, i32 0
  store i8 5, ptr %55, align 1
  %56 = getelementptr inbounds nuw %"struct.fast_float::parse_options", ptr %50, i32 0, i32 1
  store i8 46, ptr %56, align 1
  %57 = load i16, ptr %50, align 1
  store i16 %57, ptr %30, align 1
  store ptr %51, ptr %31, align 8
  store ptr %54, ptr %32, align 8
  %58 = load i8, ptr %30, align 1
  store i8 %58, ptr %33, align 1
  %59 = getelementptr inbounds nuw %"struct.fast_float::parse_options", ptr %30, i32 0, i32 1
  %60 = load i8, ptr %59, align 1
  store i8 %60, ptr %34, align 1
  %61 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %49, i32 0, i32 4
  store i8 0, ptr %61, align 1
  %62 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %49, i32 0, i32 5
  store i8 0, ptr %62, align 2
  %63 = load ptr, ptr %31, align 8
  %64 = load i8, ptr %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 45
  %67 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %49, i32 0, i32 3
  %68 = zext i1 %66 to i8
  store i8 %68, ptr %67, align 8
  %69 = load ptr, ptr %31, align 8
  %70 = load i8, ptr %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 45
  br i1 %72, label %73, label %101

73:                                               ; preds = %0
  %74 = load ptr, ptr %31, align 8
  %75 = getelementptr inbounds nuw i8, ptr %74, i32 1
  store ptr %75, ptr %31, align 8
  %76 = load ptr, ptr %31, align 8
  %77 = load ptr, ptr %32, align 8
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %551

80:                                               ; preds = %73
  %81 = load ptr, ptr %31, align 8
  %82 = load i8, ptr %81, align 1
  store i8 %82, ptr %29, align 1
  %83 = load i8, ptr %29, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sge i32 %84, 48
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i8, ptr %29, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sle i32 %88, 57
  br label %90

90:                                               ; preds = %80, %86
  %91 = phi i1 [ false, %80 ], [ %89, %86 ]
  br i1 %91, label %100, label %92

92:                                               ; preds = %90
  %93 = load ptr, ptr %31, align 8
  %94 = load i8, ptr %93, align 1
  %95 = sext i8 %94 to i32
  %96 = load i8, ptr %34, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %551

100:                                              ; preds = %92, %90
  br label %101

101:                                              ; preds = %100, %0
  %102 = load ptr, ptr %31, align 8
  store ptr %102, ptr %35, align 8
  store i64 0, ptr %36, align 8
  br label %103

103:                                              ; preds = %121, %101
  %104 = load ptr, ptr %31, align 8
  %105 = load ptr, ptr %32, align 8
  %106 = icmp ne ptr %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load ptr, ptr %31, align 8
  %109 = load i8, ptr %108, align 1
  store i8 %109, ptr %28, align 1
  %110 = load i8, ptr %28, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sge i32 %111, 48
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i8, ptr %28, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp sle i32 %115, 57
  br label %117

117:                                              ; preds = %107, %113
  %118 = phi i1 [ false, %107 ], [ %116, %113 ]
  br label %119

119:                                              ; preds = %117, %103
  %120 = phi i1 [ false, %103 ], [ %118, %117 ]
  br i1 %120, label %121, label %132

121:                                              ; preds = %119
  %122 = load i64, ptr %36, align 8
  %123 = mul i64 10, %122
  %124 = load ptr, ptr %31, align 8
  %125 = load i8, ptr %124, align 1
  %126 = sext i8 %125 to i32
  %127 = sub nsw i32 %126, 48
  %128 = sext i32 %127 to i64
  %129 = add i64 %123, %128
  store i64 %129, ptr %36, align 8
  %130 = load ptr, ptr %31, align 8
  %131 = getelementptr inbounds nuw i8, ptr %130, i32 1
  store ptr %131, ptr %31, align 8
  br label %103

132:                                              ; preds = %119
  %133 = load ptr, ptr %31, align 8
  store ptr %133, ptr %37, align 8
  %134 = load ptr, ptr %37, align 8
  %135 = load ptr, ptr %35, align 8
  %136 = ptrtoint ptr %134 to i64
  %137 = ptrtoint ptr %135 to i64
  %138 = sub i64 %136, %137
  store i64 %138, ptr %38, align 8
  store i64 0, ptr %39, align 8
  %139 = load ptr, ptr %31, align 8
  %140 = load ptr, ptr %32, align 8
  %141 = icmp ne ptr %139, %140
  br i1 %141, label %142, label %287

142:                                              ; preds = %132
  %143 = load ptr, ptr %31, align 8
  %144 = load i8, ptr %143, align 1
  %145 = sext i8 %144 to i32
  %146 = load i8, ptr %34, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %287

149:                                              ; preds = %142
  %150 = load ptr, ptr %31, align 8
  %151 = getelementptr inbounds nuw i8, ptr %150, i32 1
  store ptr %151, ptr %31, align 8
  %152 = load ptr, ptr %31, align 8
  %153 = load ptr, ptr %32, align 8
  %154 = call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %152, ptr noundef %153)
  %155 = icmp sge i64 %154, 8
  br i1 %155, label %156, label %245

156:                                              ; preds = %149
  %157 = load ptr, ptr %31, align 8
  store ptr %157, ptr %21, align 8
  %158 = load ptr, ptr %21, align 8
  store ptr %158, ptr %11, align 8
  %159 = load ptr, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 1 %159, i64 8, i1 false)
  %160 = load i64, ptr %12, align 8
  store i64 %160, ptr %18, align 8
  %161 = load i64, ptr %18, align 8
  %162 = add i64 %161, 5063812098665367110
  %163 = load i64, ptr %18, align 8
  %164 = sub i64 %163, 3472328296227680304
  %165 = or i64 %162, %164
  %166 = and i64 %165, -9187201950435737472
  %167 = icmp ne i64 %166, 0
  %168 = xor i1 %167, true
  br i1 %168, label %169, label %245

169:                                              ; preds = %156
  %170 = load i64, ptr %36, align 8
  %171 = mul i64 %170, 100000000
  %172 = load ptr, ptr %31, align 8
  store ptr %172, ptr %19, align 8
  %173 = load ptr, ptr %19, align 8
  store ptr %173, ptr %15, align 8
  %174 = load ptr, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 1 %174, i64 8, i1 false)
  %175 = load i64, ptr %16, align 8
  store i64 %175, ptr %5, align 8
  store i64 1095216660735, ptr %6, align 8
  store i64 4294967296000100, ptr %7, align 8
  store i64 42949672960001, ptr %8, align 8
  %176 = load i64, ptr %5, align 8
  %177 = sub i64 %176, 3472328296227680304
  store i64 %177, ptr %5, align 8
  %178 = load i64, ptr %5, align 8
  %179 = mul i64 %178, 10
  %180 = load i64, ptr %5, align 8
  %181 = lshr i64 %180, 8
  %182 = add i64 %179, %181
  store i64 %182, ptr %5, align 8
  %183 = load i64, ptr %5, align 8
  %184 = and i64 %183, 1095216660735
  %185 = mul i64 %184, 4294967296000100
  %186 = load i64, ptr %5, align 8
  %187 = lshr i64 %186, 16
  %188 = and i64 %187, 1095216660735
  %189 = mul i64 %188, 42949672960001
  %190 = add i64 %185, %189
  %191 = lshr i64 %190, 32
  store i64 %191, ptr %5, align 8
  %192 = load i64, ptr %5, align 8
  %193 = trunc i64 %192 to i32
  %194 = zext i32 %193 to i64
  %195 = add i64 %171, %194
  store i64 %195, ptr %36, align 8
  %196 = load ptr, ptr %31, align 8
  %197 = getelementptr inbounds i8, ptr %196, i64 8
  store ptr %197, ptr %31, align 8
  %198 = load ptr, ptr %31, align 8
  %199 = load ptr, ptr %32, align 8
  %200 = call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %198, ptr noundef %199)
  %201 = icmp sge i64 %200, 8
  br i1 %201, label %202, label %244

202:                                              ; preds = %169
  %203 = load ptr, ptr %31, align 8
  store ptr %203, ptr %22, align 8
  %204 = load ptr, ptr %22, align 8
  store ptr %204, ptr %9, align 8
  %205 = load ptr, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 1 %205, i64 8, i1 false)
  %206 = load i64, ptr %10, align 8
  store i64 %206, ptr %17, align 8
  %207 = load i64, ptr %17, align 8
  %208 = add i64 %207, 5063812098665367110
  %209 = load i64, ptr %17, align 8
  %210 = sub i64 %209, 3472328296227680304
  %211 = or i64 %208, %210
  %212 = and i64 %211, -9187201950435737472
  %213 = icmp ne i64 %212, 0
  %214 = xor i1 %213, true
  br i1 %214, label %215, label %244

215:                                              ; preds = %202
  %216 = load i64, ptr %36, align 8
  %217 = mul i64 %216, 100000000
  %218 = load ptr, ptr %31, align 8
  store ptr %218, ptr %20, align 8
  %219 = load ptr, ptr %20, align 8
  store ptr %219, ptr %13, align 8
  %220 = load ptr, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 1 %220, i64 8, i1 false)
  %221 = load i64, ptr %14, align 8
  store i64 %221, ptr %1, align 8
  store i64 1095216660735, ptr %2, align 8
  store i64 4294967296000100, ptr %3, align 8
  store i64 42949672960001, ptr %4, align 8
  %222 = load i64, ptr %1, align 8
  %223 = sub i64 %222, 3472328296227680304
  store i64 %223, ptr %1, align 8
  %224 = load i64, ptr %1, align 8
  %225 = mul i64 %224, 10
  %226 = load i64, ptr %1, align 8
  %227 = lshr i64 %226, 8
  %228 = add i64 %225, %227
  store i64 %228, ptr %1, align 8
  %229 = load i64, ptr %1, align 8
  %230 = and i64 %229, 1095216660735
  %231 = mul i64 %230, 4294967296000100
  %232 = load i64, ptr %1, align 8
  %233 = lshr i64 %232, 16
  %234 = and i64 %233, 1095216660735
  %235 = mul i64 %234, 42949672960001
  %236 = add i64 %231, %235
  %237 = lshr i64 %236, 32
  store i64 %237, ptr %1, align 8
  %238 = load i64, ptr %1, align 8
  %239 = trunc i64 %238 to i32
  %240 = zext i32 %239 to i64
  %241 = add i64 %217, %240
  store i64 %241, ptr %36, align 8
  %242 = load ptr, ptr %31, align 8
  %243 = getelementptr inbounds i8, ptr %242, i64 8
  store ptr %243, ptr %31, align 8
  br label %244

244:                                              ; preds = %215, %202, %169
  br label %245

245:                                              ; preds = %244, %156, %149
  br label %246

246:                                              ; preds = %264, %245
  %247 = load ptr, ptr %31, align 8
  %248 = load ptr, ptr %32, align 8
  %249 = icmp ne ptr %247, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %246
  %251 = load ptr, ptr %31, align 8
  %252 = load i8, ptr %251, align 1
  store i8 %252, ptr %27, align 1
  %253 = load i8, ptr %27, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp sge i32 %254, 48
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load i8, ptr %27, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp sle i32 %258, 57
  br label %260

260:                                              ; preds = %250, %256
  %261 = phi i1 [ false, %250 ], [ %259, %256 ]
  br label %262

262:                                              ; preds = %260, %246
  %263 = phi i1 [ false, %246 ], [ %261, %260 ]
  br i1 %263, label %264, label %277

264:                                              ; preds = %262
  %265 = load ptr, ptr %31, align 8
  %266 = load i8, ptr %265, align 1
  %267 = sext i8 %266 to i32
  %268 = sub nsw i32 %267, 48
  %269 = trunc i32 %268 to i8
  store i8 %269, ptr %40, align 1
  %270 = load ptr, ptr %31, align 8
  %271 = getelementptr inbounds nuw i8, ptr %270, i32 1
  store ptr %271, ptr %31, align 8
  %272 = load i64, ptr %36, align 8
  %273 = mul i64 %272, 10
  %274 = load i8, ptr %40, align 1
  %275 = zext i8 %274 to i64
  %276 = add i64 %273, %275
  store i64 %276, ptr %36, align 8
  br label %246

277:                                              ; preds = %262
  %278 = load ptr, ptr %37, align 8
  %279 = getelementptr inbounds i8, ptr %278, i64 1
  %280 = load ptr, ptr %31, align 8
  %281 = ptrtoint ptr %279 to i64
  %282 = ptrtoint ptr %280 to i64
  %283 = sub i64 %281, %282
  store i64 %283, ptr %39, align 8
  %284 = load i64, ptr %39, align 8
  %285 = load i64, ptr %38, align 8
  %286 = sub nsw i64 %285, %284
  store i64 %286, ptr %38, align 8
  br label %287

287:                                              ; preds = %277, %142, %132
  %288 = load i64, ptr %38, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  br label %551

291:                                              ; preds = %287
  store i64 0, ptr %41, align 8
  %292 = load i8, ptr %33, align 1
  %293 = call noundef zeroext i1 @_ZN10fast_floatanENS_12chars_formatES0_(i8 noundef zeroext %292, i8 noundef zeroext 1)
  br i1 %293, label %294, label %405

294:                                              ; preds = %291
  %295 = load ptr, ptr %31, align 8
  %296 = load ptr, ptr %32, align 8
  %297 = icmp ne ptr %295, %296
  br i1 %297, label %298, label %405

298:                                              ; preds = %294
  %299 = load ptr, ptr %31, align 8
  %300 = load i8, ptr %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 101, %301
  br i1 %302, label %308, label %303

303:                                              ; preds = %298
  %304 = load ptr, ptr %31, align 8
  %305 = load i8, ptr %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp eq i32 69, %306
  br i1 %307, label %308, label %405

308:                                              ; preds = %303, %298
  %309 = load ptr, ptr %31, align 8
  store ptr %309, ptr %42, align 8
  %310 = load ptr, ptr %31, align 8
  %311 = getelementptr inbounds nuw i8, ptr %310, i32 1
  store ptr %311, ptr %31, align 8
  store i8 0, ptr %43, align 1
  %312 = load ptr, ptr %31, align 8
  %313 = load ptr, ptr %32, align 8
  %314 = icmp ne ptr %312, %313
  br i1 %314, label %315, label %323

315:                                              ; preds = %308
  %316 = load ptr, ptr %31, align 8
  %317 = load i8, ptr %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 45, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %315
  store i8 1, ptr %43, align 1
  %321 = load ptr, ptr %31, align 8
  %322 = getelementptr inbounds nuw i8, ptr %321, i32 1
  store ptr %322, ptr %31, align 8
  br label %336

323:                                              ; preds = %315, %308
  %324 = load ptr, ptr %31, align 8
  %325 = load ptr, ptr %32, align 8
  %326 = icmp ne ptr %324, %325
  br i1 %326, label %327, label %335

327:                                              ; preds = %323
  %328 = load ptr, ptr %31, align 8
  %329 = load i8, ptr %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 43, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load ptr, ptr %31, align 8
  %334 = getelementptr inbounds nuw i8, ptr %333, i32 1
  store ptr %334, ptr %31, align 8
  br label %335

335:                                              ; preds = %332, %327, %323
  br label %336

336:                                              ; preds = %335, %320
  %337 = load ptr, ptr %31, align 8
  %338 = load ptr, ptr %32, align 8
  %339 = icmp eq ptr %337, %338
  br i1 %339, label %352, label %340

340:                                              ; preds = %336
  %341 = load ptr, ptr %31, align 8
  %342 = load i8, ptr %341, align 1
  store i8 %342, ptr %25, align 1
  %343 = load i8, ptr %25, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp sge i32 %344, 48
  br i1 %345, label %346, label %350

346:                                              ; preds = %340
  %347 = load i8, ptr %25, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp sle i32 %348, 57
  br label %350

350:                                              ; preds = %340, %346
  %351 = phi i1 [ false, %340 ], [ %349, %346 ]
  br i1 %351, label %358, label %352

352:                                              ; preds = %350, %336
  %353 = load i8, ptr %33, align 1
  %354 = call noundef zeroext i1 @_ZN10fast_floatanENS_12chars_formatES0_(i8 noundef zeroext %353, i8 noundef zeroext 4)
  br i1 %354, label %356, label %355

355:                                              ; preds = %352
  br label %551

356:                                              ; preds = %352
  %357 = load ptr, ptr %42, align 8
  store ptr %357, ptr %31, align 8
  br label %404

358:                                              ; preds = %350
  br label %359

359:                                              ; preds = %391, %358
  %360 = load ptr, ptr %31, align 8
  %361 = load ptr, ptr %32, align 8
  %362 = icmp ne ptr %360, %361
  br i1 %362, label %363, label %375

363:                                              ; preds = %359
  %364 = load ptr, ptr %31, align 8
  %365 = load i8, ptr %364, align 1
  store i8 %365, ptr %26, align 1
  %366 = load i8, ptr %26, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp sge i32 %367, 48
  br i1 %368, label %369, label %373

369:                                              ; preds = %363
  %370 = load i8, ptr %26, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp sle i32 %371, 57
  br label %373

373:                                              ; preds = %363, %369
  %374 = phi i1 [ false, %363 ], [ %372, %369 ]
  br label %375

375:                                              ; preds = %373, %359
  %376 = phi i1 [ false, %359 ], [ %374, %373 ]
  br i1 %376, label %377, label %394

377:                                              ; preds = %375
  %378 = load ptr, ptr %31, align 8
  %379 = load i8, ptr %378, align 1
  %380 = sext i8 %379 to i32
  %381 = sub nsw i32 %380, 48
  %382 = trunc i32 %381 to i8
  store i8 %382, ptr %44, align 1
  %383 = load i64, ptr %41, align 8
  %384 = icmp slt i64 %383, 65536
  br i1 %384, label %385, label %391

385:                                              ; preds = %377
  %386 = load i64, ptr %41, align 8
  %387 = mul nsw i64 10, %386
  %388 = load i8, ptr %44, align 1
  %389 = zext i8 %388 to i64
  %390 = add nsw i64 %387, %389
  store i64 %390, ptr %41, align 8
  br label %391

391:                                              ; preds = %385, %377
  %392 = load ptr, ptr %31, align 8
  %393 = getelementptr inbounds nuw i8, ptr %392, i32 1
  store ptr %393, ptr %31, align 8
  br label %359

394:                                              ; preds = %375
  %395 = load i8, ptr %43, align 1
  %396 = trunc i8 %395 to i1
  br i1 %396, label %397, label %400

397:                                              ; preds = %394
  %398 = load i64, ptr %41, align 8
  %399 = sub nsw i64 0, %398
  store i64 %399, ptr %41, align 8
  br label %400

400:                                              ; preds = %397, %394
  %401 = load i64, ptr %41, align 8
  %402 = load i64, ptr %39, align 8
  %403 = add nsw i64 %402, %401
  store i64 %403, ptr %39, align 8
  br label %404

404:                                              ; preds = %400, %356
  br label %413

405:                                              ; preds = %303, %294, %291
  %406 = load i8, ptr %33, align 1
  %407 = call noundef zeroext i1 @_ZN10fast_floatanENS_12chars_formatES0_(i8 noundef zeroext %406, i8 noundef zeroext 1)
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = load i8, ptr %33, align 1
  %410 = call noundef zeroext i1 @_ZN10fast_floatanENS_12chars_formatES0_(i8 noundef zeroext %409, i8 noundef zeroext 4)
  br i1 %410, label %412, label %411

411:                                              ; preds = %408
  br label %551

412:                                              ; preds = %408, %405
  br label %413

413:                                              ; preds = %412, %404
  %414 = load ptr, ptr %31, align 8
  %415 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %49, i32 0, i32 2
  store ptr %414, ptr %415, align 8
  %416 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %49, i32 0, i32 4
  store i8 1, ptr %416, align 1
  %417 = load i64, ptr %38, align 8
  %418 = icmp sgt i64 %417, 19
  br i1 %418, label %419, label %547

419:                                              ; preds = %413
  %420 = load ptr, ptr %35, align 8
  store ptr %420, ptr %45, align 8
  br label %421

421:                                              ; preds = %449, %419
  %422 = load ptr, ptr %45, align 8
  %423 = load ptr, ptr %32, align 8
  %424 = icmp ne ptr %422, %423
  br i1 %424, label %425, label %439

425:                                              ; preds = %421
  %426 = load ptr, ptr %45, align 8
  %427 = load i8, ptr %426, align 1
  %428 = sext i8 %427 to i32
  %429 = icmp eq i32 %428, 48
  br i1 %429, label %437, label %430

430:                                              ; preds = %425
  %431 = load ptr, ptr %45, align 8
  %432 = load i8, ptr %431, align 1
  %433 = sext i8 %432 to i32
  %434 = load i8, ptr %34, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp eq i32 %433, %435
  br label %437

437:                                              ; preds = %430, %425
  %438 = phi i1 [ true, %425 ], [ %436, %430 ]
  br label %439

439:                                              ; preds = %437, %421
  %440 = phi i1 [ false, %421 ], [ %438, %437 ]
  br i1 %440, label %441, label %452

441:                                              ; preds = %439
  %442 = load ptr, ptr %45, align 8
  %443 = load i8, ptr %442, align 1
  %444 = sext i8 %443 to i32
  %445 = icmp eq i32 %444, 48
  br i1 %445, label %446, label %449

446:                                              ; preds = %441
  %447 = load i64, ptr %38, align 8
  %448 = add nsw i64 %447, -1
  store i64 %448, ptr %38, align 8
  br label %449

449:                                              ; preds = %446, %441
  %450 = load ptr, ptr %45, align 8
  %451 = getelementptr inbounds nuw i8, ptr %450, i32 1
  store ptr %451, ptr %45, align 8
  br label %421

452:                                              ; preds = %439
  %453 = load i64, ptr %38, align 8
  %454 = icmp sgt i64 %453, 19
  br i1 %454, label %455, label %546

455:                                              ; preds = %452
  %456 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %49, i32 0, i32 5
  store i8 1, ptr %456, align 2
  store i64 0, ptr %36, align 8
  %457 = load ptr, ptr %35, align 8
  store ptr %457, ptr %31, align 8
  store i64 1000000000000000000, ptr %46, align 8
  br label %458

458:                                              ; preds = %479, %455
  %459 = load i64, ptr %36, align 8
  %460 = icmp ult i64 %459, 1000000000000000000
  br i1 %460, label %461, label %477

461:                                              ; preds = %458
  %462 = load ptr, ptr %31, align 8
  %463 = load ptr, ptr %32, align 8
  %464 = icmp ne ptr %462, %463
  br i1 %464, label %465, label %477

465:                                              ; preds = %461
  %466 = load ptr, ptr %31, align 8
  %467 = load i8, ptr %466, align 1
  store i8 %467, ptr %24, align 1
  %468 = load i8, ptr %24, align 1
  %469 = sext i8 %468 to i32
  %470 = icmp sge i32 %469, 48
  br i1 %470, label %471, label %475

471:                                              ; preds = %465
  %472 = load i8, ptr %24, align 1
  %473 = sext i8 %472 to i32
  %474 = icmp sle i32 %473, 57
  br label %475

475:                                              ; preds = %465, %471
  %476 = phi i1 [ false, %465 ], [ %474, %471 ]
  br label %477

477:                                              ; preds = %475, %461, %458
  %478 = phi i1 [ false, %461 ], [ false, %458 ], [ %476, %475 ]
  br i1 %478, label %479, label %490

479:                                              ; preds = %477
  %480 = load i64, ptr %36, align 8
  %481 = mul i64 %480, 10
  %482 = load ptr, ptr %31, align 8
  %483 = load i8, ptr %482, align 1
  %484 = sext i8 %483 to i32
  %485 = sub nsw i32 %484, 48
  %486 = sext i32 %485 to i64
  %487 = add i64 %481, %486
  store i64 %487, ptr %36, align 8
  %488 = load ptr, ptr %31, align 8
  %489 = getelementptr inbounds nuw i8, ptr %488, i32 1
  store ptr %489, ptr %31, align 8
  br label %458

490:                                              ; preds = %477
  %491 = load i64, ptr %36, align 8
  %492 = icmp uge i64 %491, 1000000000000000000
  br i1 %492, label %493, label %501

493:                                              ; preds = %490
  %494 = load ptr, ptr %37, align 8
  %495 = load ptr, ptr %31, align 8
  %496 = ptrtoint ptr %494 to i64
  %497 = ptrtoint ptr %495 to i64
  %498 = sub i64 %496, %497
  %499 = load i64, ptr %41, align 8
  %500 = add nsw i64 %498, %499
  store i64 %500, ptr %39, align 8
  br label %545

501:                                              ; preds = %490
  %502 = load ptr, ptr %31, align 8
  %503 = getelementptr inbounds nuw i8, ptr %502, i32 1
  store ptr %503, ptr %31, align 8
  %504 = load ptr, ptr %31, align 8
  store ptr %504, ptr %47, align 8
  br label %505

505:                                              ; preds = %526, %501
  %506 = load i64, ptr %36, align 8
  %507 = icmp ult i64 %506, 1000000000000000000
  br i1 %507, label %508, label %524

508:                                              ; preds = %505
  %509 = load ptr, ptr %31, align 8
  %510 = load ptr, ptr %32, align 8
  %511 = icmp ne ptr %509, %510
  br i1 %511, label %512, label %524

512:                                              ; preds = %508
  %513 = load ptr, ptr %31, align 8
  %514 = load i8, ptr %513, align 1
  store i8 %514, ptr %23, align 1
  %515 = load i8, ptr %23, align 1
  %516 = sext i8 %515 to i32
  %517 = icmp sge i32 %516, 48
  br i1 %517, label %518, label %522

518:                                              ; preds = %512
  %519 = load i8, ptr %23, align 1
  %520 = sext i8 %519 to i32
  %521 = icmp sle i32 %520, 57
  br label %522

522:                                              ; preds = %512, %518
  %523 = phi i1 [ false, %512 ], [ %521, %518 ]
  br label %524

524:                                              ; preds = %522, %508, %505
  %525 = phi i1 [ false, %508 ], [ false, %505 ], [ %523, %522 ]
  br i1 %525, label %526, label %537

526:                                              ; preds = %524
  %527 = load i64, ptr %36, align 8
  %528 = mul i64 %527, 10
  %529 = load ptr, ptr %31, align 8
  %530 = load i8, ptr %529, align 1
  %531 = sext i8 %530 to i32
  %532 = sub nsw i32 %531, 48
  %533 = sext i32 %532 to i64
  %534 = add i64 %528, %533
  store i64 %534, ptr %36, align 8
  %535 = load ptr, ptr %31, align 8
  %536 = getelementptr inbounds nuw i8, ptr %535, i32 1
  store ptr %536, ptr %31, align 8
  br label %505

537:                                              ; preds = %524
  %538 = load ptr, ptr %47, align 8
  %539 = load ptr, ptr %31, align 8
  %540 = ptrtoint ptr %538 to i64
  %541 = ptrtoint ptr %539 to i64
  %542 = sub i64 %540, %541
  %543 = load i64, ptr %41, align 8
  %544 = add nsw i64 %542, %543
  store i64 %544, ptr %39, align 8
  br label %545

545:                                              ; preds = %537, %493
  br label %546

546:                                              ; preds = %545, %452
  br label %547

547:                                              ; preds = %546, %413
  %548 = load i64, ptr %39, align 8
  store i64 %548, ptr %49, align 8
  %549 = load i64, ptr %36, align 8
  %550 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %49, i32 0, i32 1
  store i64 %549, ptr %550, align 8
  br label %551

551:                                              ; preds = %79, %99, %290, %355, %411, %547
  %552 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %49, i32 0, i32 0
  %553 = load i64, ptr %552, align 8
  ret i64 %553
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1
  %6 = alloca %"struct.std::random_access_iterator_tag", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %4, align 8
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %9 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %7, ptr noundef %8)
  ret i64 %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10fast_floatanENS_12chars_formatES0_(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 comdat {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr %4, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca %"struct.std::random_access_iterator_tag", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!8 = distinct !{!8, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
