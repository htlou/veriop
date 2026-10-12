; ModuleID = 'history-eq/c/fast_float/fc0c8680/wrap.cpp'
source_filename = "history-eq/c/fast_float/fc0c8680/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.fast_float::parse_options" = type { i8, i8 }
%"struct.fast_float::span" = type { ptr, i64 }
%"struct.fast_float::parsed_number_string" = type { i64, i64, ptr, i8, i8, i8, %"struct.fast_float::span", %"struct.fast_float::span" }
%"struct.std::random_access_iterator_tag" = type { i8 }

$_ZN10fast_float20parsed_number_stringC2Ev = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZN10fast_float4spanIKcEC2EPS1_m = comdat any

$_ZN10fast_floatanENS_12chars_formatES0_ = comdat any

$_ZN10fast_float4spanIKcE3lenEv = comdat any

$_ZN10fast_float4spanIKcEC2Ev = comdat any

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
  %28 = alloca %"struct.fast_float::parse_options", align 1
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca i8, align 1
  %32 = alloca i8, align 1
  %33 = alloca ptr, align 8
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  %36 = alloca i64, align 8
  %37 = alloca %"struct.fast_float::span", align 8
  %38 = alloca i64, align 8
  %39 = alloca ptr, align 8
  %40 = alloca i8, align 1
  %41 = alloca %"struct.fast_float::span", align 8
  %42 = alloca i64, align 8
  %43 = alloca ptr, align 8
  %44 = alloca i8, align 1
  %45 = alloca i8, align 1
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca i64, align 8
  %49 = alloca ptr, align 8
  %50 = alloca [10 x i8], align 1
  %51 = alloca %"struct.fast_float::parsed_number_string", align 8
  %52 = alloca %"struct.fast_float::parse_options", align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 @__const.target_exponent.input, i64 10, i1 false)
  %53 = getelementptr inbounds [10 x i8], ptr %50, i64 0, i64 0
  %54 = getelementptr inbounds [10 x i8], ptr %50, i64 0, i64 0
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 10
  %56 = getelementptr inbounds i8, ptr %55, i64 -1
  %57 = getelementptr inbounds nuw %"struct.fast_float::parse_options", ptr %52, i32 0, i32 0
  store i8 5, ptr %57, align 1
  %58 = getelementptr inbounds nuw %"struct.fast_float::parse_options", ptr %52, i32 0, i32 1
  store i8 46, ptr %58, align 1
  %59 = load i16, ptr %52, align 1
  store i16 %59, ptr %28, align 1
  store ptr %53, ptr %29, align 8
  store ptr %56, ptr %30, align 8
  %60 = load i8, ptr %28, align 1
  store i8 %60, ptr %31, align 1
  %61 = getelementptr inbounds nuw %"struct.fast_float::parse_options", ptr %28, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  store i8 %62, ptr %32, align 1
  call void @_ZN10fast_float20parsed_number_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %51)
  %63 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 4
  store i8 0, ptr %63, align 1
  %64 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 5
  store i8 0, ptr %64, align 2
  %65 = load ptr, ptr %29, align 8
  %66 = load i8, ptr %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 45
  %69 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 3
  %70 = zext i1 %68 to i8
  store i8 %70, ptr %69, align 8
  %71 = load ptr, ptr %29, align 8
  %72 = load i8, ptr %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 45
  br i1 %74, label %75, label %103

75:                                               ; preds = %0
  %76 = load ptr, ptr %29, align 8
  %77 = getelementptr inbounds nuw i8, ptr %76, i32 1
  store ptr %77, ptr %29, align 8
  %78 = load ptr, ptr %29, align 8
  %79 = load ptr, ptr %30, align 8
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %554

82:                                               ; preds = %75
  %83 = load ptr, ptr %29, align 8
  %84 = load i8, ptr %83, align 1
  store i8 %84, ptr %27, align 1
  %85 = load i8, ptr %27, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sge i32 %86, 48
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i8, ptr %27, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sle i32 %90, 57
  br label %92

92:                                               ; preds = %82, %88
  %93 = phi i1 [ false, %82 ], [ %91, %88 ]
  br i1 %93, label %102, label %94

94:                                               ; preds = %92
  %95 = load ptr, ptr %29, align 8
  %96 = load i8, ptr %95, align 1
  %97 = sext i8 %96 to i32
  %98 = load i8, ptr %32, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %554

102:                                              ; preds = %94, %92
  br label %103

103:                                              ; preds = %102, %0
  %104 = load ptr, ptr %29, align 8
  store ptr %104, ptr %33, align 8
  store i64 0, ptr %34, align 8
  br label %105

105:                                              ; preds = %125, %103
  %106 = load ptr, ptr %29, align 8
  %107 = load ptr, ptr %30, align 8
  %108 = call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %106, ptr noundef %107)
  %109 = icmp sge i64 %108, 8
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load ptr, ptr %29, align 8
  store ptr %111, ptr %22, align 8
  %112 = load ptr, ptr %22, align 8
  store ptr %112, ptr %9, align 8
  %113 = load ptr, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 1 %113, i64 8, i1 false)
  %114 = load i64, ptr %10, align 8
  store i64 %114, ptr %17, align 8
  %115 = load i64, ptr %17, align 8
  %116 = add i64 %115, 5063812098665367110
  %117 = load i64, ptr %17, align 8
  %118 = sub i64 %117, 3472328296227680304
  %119 = or i64 %116, %118
  %120 = and i64 %119, -9187201950435737472
  %121 = icmp ne i64 %120, 0
  %122 = xor i1 %121, true
  br label %123

123:                                              ; preds = %110, %105
  %124 = phi i1 [ false, %105 ], [ %122, %110 ]
  br i1 %124, label %125, label %154

125:                                              ; preds = %123
  %126 = load i64, ptr %34, align 8
  %127 = mul i64 %126, 100000000
  %128 = load ptr, ptr %29, align 8
  store ptr %128, ptr %20, align 8
  %129 = load ptr, ptr %20, align 8
  store ptr %129, ptr %13, align 8
  %130 = load ptr, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 1 %130, i64 8, i1 false)
  %131 = load i64, ptr %14, align 8
  store i64 %131, ptr %1, align 8
  store i64 1095216660735, ptr %2, align 8
  store i64 4294967296000100, ptr %3, align 8
  store i64 42949672960001, ptr %4, align 8
  %132 = load i64, ptr %1, align 8
  %133 = sub i64 %132, 3472328296227680304
  store i64 %133, ptr %1, align 8
  %134 = load i64, ptr %1, align 8
  %135 = mul i64 %134, 10
  %136 = load i64, ptr %1, align 8
  %137 = lshr i64 %136, 8
  %138 = add i64 %135, %137
  store i64 %138, ptr %1, align 8
  %139 = load i64, ptr %1, align 8
  %140 = and i64 %139, 1095216660735
  %141 = mul i64 %140, 4294967296000100
  %142 = load i64, ptr %1, align 8
  %143 = lshr i64 %142, 16
  %144 = and i64 %143, 1095216660735
  %145 = mul i64 %144, 42949672960001
  %146 = add i64 %141, %145
  %147 = lshr i64 %146, 32
  store i64 %147, ptr %1, align 8
  %148 = load i64, ptr %1, align 8
  %149 = trunc i64 %148 to i32
  %150 = zext i32 %149 to i64
  %151 = add i64 %127, %150
  store i64 %151, ptr %34, align 8
  %152 = load ptr, ptr %29, align 8
  %153 = getelementptr inbounds i8, ptr %152, i64 8
  store ptr %153, ptr %29, align 8
  br label %105

154:                                              ; preds = %123
  br label %155

155:                                              ; preds = %173, %154
  %156 = load ptr, ptr %29, align 8
  %157 = load ptr, ptr %30, align 8
  %158 = icmp ne ptr %156, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %155
  %160 = load ptr, ptr %29, align 8
  %161 = load i8, ptr %160, align 1
  store i8 %161, ptr %26, align 1
  %162 = load i8, ptr %26, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp sge i32 %163, 48
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load i8, ptr %26, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp sle i32 %167, 57
  br label %169

169:                                              ; preds = %159, %165
  %170 = phi i1 [ false, %159 ], [ %168, %165 ]
  br label %171

171:                                              ; preds = %169, %155
  %172 = phi i1 [ false, %155 ], [ %170, %169 ]
  br i1 %172, label %173, label %184

173:                                              ; preds = %171
  %174 = load i64, ptr %34, align 8
  %175 = mul i64 10, %174
  %176 = load ptr, ptr %29, align 8
  %177 = load i8, ptr %176, align 1
  %178 = sext i8 %177 to i32
  %179 = sub nsw i32 %178, 48
  %180 = sext i32 %179 to i64
  %181 = add i64 %175, %180
  store i64 %181, ptr %34, align 8
  %182 = load ptr, ptr %29, align 8
  %183 = getelementptr inbounds nuw i8, ptr %182, i32 1
  store ptr %183, ptr %29, align 8
  br label %155

184:                                              ; preds = %171
  %185 = load ptr, ptr %29, align 8
  store ptr %185, ptr %35, align 8
  %186 = load ptr, ptr %35, align 8
  %187 = load ptr, ptr %33, align 8
  %188 = ptrtoint ptr %186 to i64
  %189 = ptrtoint ptr %187 to i64
  %190 = sub i64 %188, %189
  store i64 %190, ptr %36, align 8
  %191 = load ptr, ptr %33, align 8
  %192 = load i64, ptr %36, align 8
  call void @_ZN10fast_float4spanIKcEC2EPS1_m(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef %191, i64 noundef %192)
  %193 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %193, ptr align 8 %37, i64 16, i1 false)
  store i64 0, ptr %38, align 8
  %194 = load ptr, ptr %29, align 8
  %195 = load ptr, ptr %30, align 8
  %196 = icmp ne ptr %194, %195
  br i1 %196, label %197, label %305

197:                                              ; preds = %184
  %198 = load ptr, ptr %29, align 8
  %199 = load i8, ptr %198, align 1
  %200 = sext i8 %199 to i32
  %201 = load i8, ptr %32, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %305

204:                                              ; preds = %197
  %205 = load ptr, ptr %29, align 8
  %206 = getelementptr inbounds nuw i8, ptr %205, i32 1
  store ptr %206, ptr %29, align 8
  %207 = load ptr, ptr %29, align 8
  store ptr %207, ptr %39, align 8
  br label %208

208:                                              ; preds = %228, %204
  %209 = load ptr, ptr %29, align 8
  %210 = load ptr, ptr %30, align 8
  %211 = call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %209, ptr noundef %210)
  %212 = icmp sge i64 %211, 8
  br i1 %212, label %213, label %226

213:                                              ; preds = %208
  %214 = load ptr, ptr %29, align 8
  store ptr %214, ptr %21, align 8
  %215 = load ptr, ptr %21, align 8
  store ptr %215, ptr %11, align 8
  %216 = load ptr, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 1 %216, i64 8, i1 false)
  %217 = load i64, ptr %12, align 8
  store i64 %217, ptr %18, align 8
  %218 = load i64, ptr %18, align 8
  %219 = add i64 %218, 5063812098665367110
  %220 = load i64, ptr %18, align 8
  %221 = sub i64 %220, 3472328296227680304
  %222 = or i64 %219, %221
  %223 = and i64 %222, -9187201950435737472
  %224 = icmp ne i64 %223, 0
  %225 = xor i1 %224, true
  br label %226

226:                                              ; preds = %213, %208
  %227 = phi i1 [ false, %208 ], [ %225, %213 ]
  br i1 %227, label %228, label %257

228:                                              ; preds = %226
  %229 = load i64, ptr %34, align 8
  %230 = mul i64 %229, 100000000
  %231 = load ptr, ptr %29, align 8
  store ptr %231, ptr %19, align 8
  %232 = load ptr, ptr %19, align 8
  store ptr %232, ptr %15, align 8
  %233 = load ptr, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 1 %233, i64 8, i1 false)
  %234 = load i64, ptr %16, align 8
  store i64 %234, ptr %5, align 8
  store i64 1095216660735, ptr %6, align 8
  store i64 4294967296000100, ptr %7, align 8
  store i64 42949672960001, ptr %8, align 8
  %235 = load i64, ptr %5, align 8
  %236 = sub i64 %235, 3472328296227680304
  store i64 %236, ptr %5, align 8
  %237 = load i64, ptr %5, align 8
  %238 = mul i64 %237, 10
  %239 = load i64, ptr %5, align 8
  %240 = lshr i64 %239, 8
  %241 = add i64 %238, %240
  store i64 %241, ptr %5, align 8
  %242 = load i64, ptr %5, align 8
  %243 = and i64 %242, 1095216660735
  %244 = mul i64 %243, 4294967296000100
  %245 = load i64, ptr %5, align 8
  %246 = lshr i64 %245, 16
  %247 = and i64 %246, 1095216660735
  %248 = mul i64 %247, 42949672960001
  %249 = add i64 %244, %248
  %250 = lshr i64 %249, 32
  store i64 %250, ptr %5, align 8
  %251 = load i64, ptr %5, align 8
  %252 = trunc i64 %251 to i32
  %253 = zext i32 %252 to i64
  %254 = add i64 %230, %253
  store i64 %254, ptr %34, align 8
  %255 = load ptr, ptr %29, align 8
  %256 = getelementptr inbounds i8, ptr %255, i64 8
  store ptr %256, ptr %29, align 8
  br label %208

257:                                              ; preds = %226
  br label %258

258:                                              ; preds = %276, %257
  %259 = load ptr, ptr %29, align 8
  %260 = load ptr, ptr %30, align 8
  %261 = icmp ne ptr %259, %260
  br i1 %261, label %262, label %274

262:                                              ; preds = %258
  %263 = load ptr, ptr %29, align 8
  %264 = load i8, ptr %263, align 1
  store i8 %264, ptr %25, align 1
  %265 = load i8, ptr %25, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp sge i32 %266, 48
  br i1 %267, label %268, label %272

268:                                              ; preds = %262
  %269 = load i8, ptr %25, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp sle i32 %270, 57
  br label %272

272:                                              ; preds = %262, %268
  %273 = phi i1 [ false, %262 ], [ %271, %268 ]
  br label %274

274:                                              ; preds = %272, %258
  %275 = phi i1 [ false, %258 ], [ %273, %272 ]
  br i1 %275, label %276, label %289

276:                                              ; preds = %274
  %277 = load ptr, ptr %29, align 8
  %278 = load i8, ptr %277, align 1
  %279 = sext i8 %278 to i32
  %280 = sub nsw i32 %279, 48
  %281 = trunc i32 %280 to i8
  store i8 %281, ptr %40, align 1
  %282 = load ptr, ptr %29, align 8
  %283 = getelementptr inbounds nuw i8, ptr %282, i32 1
  store ptr %283, ptr %29, align 8
  %284 = load i64, ptr %34, align 8
  %285 = mul i64 %284, 10
  %286 = load i8, ptr %40, align 1
  %287 = zext i8 %286 to i64
  %288 = add i64 %285, %287
  store i64 %288, ptr %34, align 8
  br label %258

289:                                              ; preds = %274
  %290 = load ptr, ptr %39, align 8
  %291 = load ptr, ptr %29, align 8
  %292 = ptrtoint ptr %290 to i64
  %293 = ptrtoint ptr %291 to i64
  %294 = sub i64 %292, %293
  store i64 %294, ptr %38, align 8
  %295 = load ptr, ptr %39, align 8
  %296 = load ptr, ptr %29, align 8
  %297 = load ptr, ptr %39, align 8
  %298 = ptrtoint ptr %296 to i64
  %299 = ptrtoint ptr %297 to i64
  %300 = sub i64 %298, %299
  call void @_ZN10fast_float4spanIKcEC2EPS1_m(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef %295, i64 noundef %300)
  %301 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %301, ptr align 8 %41, i64 16, i1 false)
  %302 = load i64, ptr %38, align 8
  %303 = load i64, ptr %36, align 8
  %304 = sub nsw i64 %303, %302
  store i64 %304, ptr %36, align 8
  br label %305

305:                                              ; preds = %289, %197, %184
  %306 = load i64, ptr %36, align 8
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  br label %554

309:                                              ; preds = %305
  store i64 0, ptr %42, align 8
  %310 = load i8, ptr %31, align 1
  %311 = call noundef zeroext i1 @_ZN10fast_floatanENS_12chars_formatES0_(i8 noundef zeroext %310, i8 noundef zeroext 1)
  br i1 %311, label %312, label %423

312:                                              ; preds = %309
  %313 = load ptr, ptr %29, align 8
  %314 = load ptr, ptr %30, align 8
  %315 = icmp ne ptr %313, %314
  br i1 %315, label %316, label %423

316:                                              ; preds = %312
  %317 = load ptr, ptr %29, align 8
  %318 = load i8, ptr %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp eq i32 101, %319
  br i1 %320, label %326, label %321

321:                                              ; preds = %316
  %322 = load ptr, ptr %29, align 8
  %323 = load i8, ptr %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 69, %324
  br i1 %325, label %326, label %423

326:                                              ; preds = %321, %316
  %327 = load ptr, ptr %29, align 8
  store ptr %327, ptr %43, align 8
  %328 = load ptr, ptr %29, align 8
  %329 = getelementptr inbounds nuw i8, ptr %328, i32 1
  store ptr %329, ptr %29, align 8
  store i8 0, ptr %44, align 1
  %330 = load ptr, ptr %29, align 8
  %331 = load ptr, ptr %30, align 8
  %332 = icmp ne ptr %330, %331
  br i1 %332, label %333, label %341

333:                                              ; preds = %326
  %334 = load ptr, ptr %29, align 8
  %335 = load i8, ptr %334, align 1
  %336 = sext i8 %335 to i32
  %337 = icmp eq i32 45, %336
  br i1 %337, label %338, label %341

338:                                              ; preds = %333
  store i8 1, ptr %44, align 1
  %339 = load ptr, ptr %29, align 8
  %340 = getelementptr inbounds nuw i8, ptr %339, i32 1
  store ptr %340, ptr %29, align 8
  br label %354

341:                                              ; preds = %333, %326
  %342 = load ptr, ptr %29, align 8
  %343 = load ptr, ptr %30, align 8
  %344 = icmp ne ptr %342, %343
  br i1 %344, label %345, label %353

345:                                              ; preds = %341
  %346 = load ptr, ptr %29, align 8
  %347 = load i8, ptr %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 43, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %345
  %351 = load ptr, ptr %29, align 8
  %352 = getelementptr inbounds nuw i8, ptr %351, i32 1
  store ptr %352, ptr %29, align 8
  br label %353

353:                                              ; preds = %350, %345, %341
  br label %354

354:                                              ; preds = %353, %338
  %355 = load ptr, ptr %29, align 8
  %356 = load ptr, ptr %30, align 8
  %357 = icmp eq ptr %355, %356
  br i1 %357, label %370, label %358

358:                                              ; preds = %354
  %359 = load ptr, ptr %29, align 8
  %360 = load i8, ptr %359, align 1
  store i8 %360, ptr %23, align 1
  %361 = load i8, ptr %23, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp sge i32 %362, 48
  br i1 %363, label %364, label %368

364:                                              ; preds = %358
  %365 = load i8, ptr %23, align 1
  %366 = sext i8 %365 to i32
  %367 = icmp sle i32 %366, 57
  br label %368

368:                                              ; preds = %358, %364
  %369 = phi i1 [ false, %358 ], [ %367, %364 ]
  br i1 %369, label %376, label %370

370:                                              ; preds = %368, %354
  %371 = load i8, ptr %31, align 1
  %372 = call noundef zeroext i1 @_ZN10fast_floatanENS_12chars_formatES0_(i8 noundef zeroext %371, i8 noundef zeroext 4)
  br i1 %372, label %374, label %373

373:                                              ; preds = %370
  br label %554

374:                                              ; preds = %370
  %375 = load ptr, ptr %43, align 8
  store ptr %375, ptr %29, align 8
  br label %422

376:                                              ; preds = %368
  br label %377

377:                                              ; preds = %409, %376
  %378 = load ptr, ptr %29, align 8
  %379 = load ptr, ptr %30, align 8
  %380 = icmp ne ptr %378, %379
  br i1 %380, label %381, label %393

381:                                              ; preds = %377
  %382 = load ptr, ptr %29, align 8
  %383 = load i8, ptr %382, align 1
  store i8 %383, ptr %24, align 1
  %384 = load i8, ptr %24, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp sge i32 %385, 48
  br i1 %386, label %387, label %391

387:                                              ; preds = %381
  %388 = load i8, ptr %24, align 1
  %389 = sext i8 %388 to i32
  %390 = icmp sle i32 %389, 57
  br label %391

391:                                              ; preds = %381, %387
  %392 = phi i1 [ false, %381 ], [ %390, %387 ]
  br label %393

393:                                              ; preds = %391, %377
  %394 = phi i1 [ false, %377 ], [ %392, %391 ]
  br i1 %394, label %395, label %412

395:                                              ; preds = %393
  %396 = load ptr, ptr %29, align 8
  %397 = load i8, ptr %396, align 1
  %398 = sext i8 %397 to i32
  %399 = sub nsw i32 %398, 48
  %400 = trunc i32 %399 to i8
  store i8 %400, ptr %45, align 1
  %401 = load i64, ptr %42, align 8
  %402 = icmp slt i64 %401, 268435456
  br i1 %402, label %403, label %409

403:                                              ; preds = %395
  %404 = load i64, ptr %42, align 8
  %405 = mul nsw i64 10, %404
  %406 = load i8, ptr %45, align 1
  %407 = zext i8 %406 to i64
  %408 = add nsw i64 %405, %407
  store i64 %408, ptr %42, align 8
  br label %409

409:                                              ; preds = %403, %395
  %410 = load ptr, ptr %29, align 8
  %411 = getelementptr inbounds nuw i8, ptr %410, i32 1
  store ptr %411, ptr %29, align 8
  br label %377

412:                                              ; preds = %393
  %413 = load i8, ptr %44, align 1
  %414 = trunc i8 %413 to i1
  br i1 %414, label %415, label %418

415:                                              ; preds = %412
  %416 = load i64, ptr %42, align 8
  %417 = sub nsw i64 0, %416
  store i64 %417, ptr %42, align 8
  br label %418

418:                                              ; preds = %415, %412
  %419 = load i64, ptr %42, align 8
  %420 = load i64, ptr %38, align 8
  %421 = add nsw i64 %420, %419
  store i64 %421, ptr %38, align 8
  br label %422

422:                                              ; preds = %418, %374
  br label %431

423:                                              ; preds = %321, %312, %309
  %424 = load i8, ptr %31, align 1
  %425 = call noundef zeroext i1 @_ZN10fast_floatanENS_12chars_formatES0_(i8 noundef zeroext %424, i8 noundef zeroext 1)
  br i1 %425, label %426, label %430

426:                                              ; preds = %423
  %427 = load i8, ptr %31, align 1
  %428 = call noundef zeroext i1 @_ZN10fast_floatanENS_12chars_formatES0_(i8 noundef zeroext %427, i8 noundef zeroext 4)
  br i1 %428, label %430, label %429

429:                                              ; preds = %426
  br label %554

430:                                              ; preds = %426, %423
  br label %431

431:                                              ; preds = %430, %422
  %432 = load ptr, ptr %29, align 8
  %433 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 2
  store ptr %432, ptr %433, align 8
  %434 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 4
  store i8 1, ptr %434, align 1
  %435 = load i64, ptr %36, align 8
  %436 = icmp sgt i64 %435, 19
  br i1 %436, label %437, label %550

437:                                              ; preds = %431
  %438 = load ptr, ptr %33, align 8
  store ptr %438, ptr %46, align 8
  br label %439

439:                                              ; preds = %467, %437
  %440 = load ptr, ptr %46, align 8
  %441 = load ptr, ptr %30, align 8
  %442 = icmp ne ptr %440, %441
  br i1 %442, label %443, label %457

443:                                              ; preds = %439
  %444 = load ptr, ptr %46, align 8
  %445 = load i8, ptr %444, align 1
  %446 = sext i8 %445 to i32
  %447 = icmp eq i32 %446, 48
  br i1 %447, label %455, label %448

448:                                              ; preds = %443
  %449 = load ptr, ptr %46, align 8
  %450 = load i8, ptr %449, align 1
  %451 = sext i8 %450 to i32
  %452 = load i8, ptr %32, align 1
  %453 = sext i8 %452 to i32
  %454 = icmp eq i32 %451, %453
  br label %455

455:                                              ; preds = %448, %443
  %456 = phi i1 [ true, %443 ], [ %454, %448 ]
  br label %457

457:                                              ; preds = %455, %439
  %458 = phi i1 [ false, %439 ], [ %456, %455 ]
  br i1 %458, label %459, label %470

459:                                              ; preds = %457
  %460 = load ptr, ptr %46, align 8
  %461 = load i8, ptr %460, align 1
  %462 = sext i8 %461 to i32
  %463 = icmp eq i32 %462, 48
  br i1 %463, label %464, label %467

464:                                              ; preds = %459
  %465 = load i64, ptr %36, align 8
  %466 = add nsw i64 %465, -1
  store i64 %466, ptr %36, align 8
  br label %467

467:                                              ; preds = %464, %459
  %468 = load ptr, ptr %46, align 8
  %469 = getelementptr inbounds nuw i8, ptr %468, i32 1
  store ptr %469, ptr %46, align 8
  br label %439

470:                                              ; preds = %457
  %471 = load i64, ptr %36, align 8
  %472 = icmp sgt i64 %471, 19
  br i1 %472, label %473, label %549

473:                                              ; preds = %470
  %474 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 5
  store i8 1, ptr %474, align 2
  store i64 0, ptr %34, align 8
  %475 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 6
  %476 = load ptr, ptr %475, align 8
  store ptr %476, ptr %29, align 8
  %477 = load ptr, ptr %29, align 8
  %478 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 6
  %479 = call noundef i64 @_ZN10fast_float4spanIKcE3lenEv(ptr noundef nonnull align 8 dereferenceable(16) %478) #3
  %480 = getelementptr inbounds nuw i8, ptr %477, i64 %479
  store ptr %480, ptr %47, align 8
  store i64 1000000000000000000, ptr %48, align 8
  br label %481

481:                                              ; preds = %490, %473
  %482 = load i64, ptr %34, align 8
  %483 = icmp ult i64 %482, 1000000000000000000
  br i1 %483, label %484, label %488

484:                                              ; preds = %481
  %485 = load ptr, ptr %29, align 8
  %486 = load ptr, ptr %47, align 8
  %487 = icmp ne ptr %485, %486
  br label %488

488:                                              ; preds = %484, %481
  %489 = phi i1 [ false, %481 ], [ %487, %484 ]
  br i1 %489, label %490, label %501

490:                                              ; preds = %488
  %491 = load i64, ptr %34, align 8
  %492 = mul i64 %491, 10
  %493 = load ptr, ptr %29, align 8
  %494 = load i8, ptr %493, align 1
  %495 = sext i8 %494 to i32
  %496 = sub nsw i32 %495, 48
  %497 = sext i32 %496 to i64
  %498 = add i64 %492, %497
  store i64 %498, ptr %34, align 8
  %499 = load ptr, ptr %29, align 8
  %500 = getelementptr inbounds nuw i8, ptr %499, i32 1
  store ptr %500, ptr %29, align 8
  br label %481

501:                                              ; preds = %488
  %502 = load i64, ptr %34, align 8
  %503 = icmp uge i64 %502, 1000000000000000000
  br i1 %503, label %504, label %512

504:                                              ; preds = %501
  %505 = load ptr, ptr %35, align 8
  %506 = load ptr, ptr %29, align 8
  %507 = ptrtoint ptr %505 to i64
  %508 = ptrtoint ptr %506 to i64
  %509 = sub i64 %507, %508
  %510 = load i64, ptr %42, align 8
  %511 = add nsw i64 %509, %510
  store i64 %511, ptr %38, align 8
  br label %548

512:                                              ; preds = %501
  %513 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 7
  %514 = load ptr, ptr %513, align 8
  store ptr %514, ptr %29, align 8
  %515 = load ptr, ptr %29, align 8
  %516 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 7
  %517 = call noundef i64 @_ZN10fast_float4spanIKcE3lenEv(ptr noundef nonnull align 8 dereferenceable(16) %516) #3
  %518 = getelementptr inbounds nuw i8, ptr %515, i64 %517
  store ptr %518, ptr %49, align 8
  br label %519

519:                                              ; preds = %528, %512
  %520 = load i64, ptr %34, align 8
  %521 = icmp ult i64 %520, 1000000000000000000
  br i1 %521, label %522, label %526

522:                                              ; preds = %519
  %523 = load ptr, ptr %29, align 8
  %524 = load ptr, ptr %49, align 8
  %525 = icmp ne ptr %523, %524
  br label %526

526:                                              ; preds = %522, %519
  %527 = phi i1 [ false, %519 ], [ %525, %522 ]
  br i1 %527, label %528, label %539

528:                                              ; preds = %526
  %529 = load i64, ptr %34, align 8
  %530 = mul i64 %529, 10
  %531 = load ptr, ptr %29, align 8
  %532 = load i8, ptr %531, align 1
  %533 = sext i8 %532 to i32
  %534 = sub nsw i32 %533, 48
  %535 = sext i32 %534 to i64
  %536 = add i64 %530, %535
  store i64 %536, ptr %34, align 8
  %537 = load ptr, ptr %29, align 8
  %538 = getelementptr inbounds nuw i8, ptr %537, i32 1
  store ptr %538, ptr %29, align 8
  br label %519

539:                                              ; preds = %526
  %540 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 7
  %541 = load ptr, ptr %540, align 8
  %542 = load ptr, ptr %29, align 8
  %543 = ptrtoint ptr %541 to i64
  %544 = ptrtoint ptr %542 to i64
  %545 = sub i64 %543, %544
  %546 = load i64, ptr %42, align 8
  %547 = add nsw i64 %545, %546
  store i64 %547, ptr %38, align 8
  br label %548

548:                                              ; preds = %539, %504
  br label %549

549:                                              ; preds = %548, %470
  br label %550

550:                                              ; preds = %549, %431
  %551 = load i64, ptr %38, align 8
  store i64 %551, ptr %51, align 8
  %552 = load i64, ptr %34, align 8
  %553 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 1
  store i64 %552, ptr %553, align 8
  br label %554

554:                                              ; preds = %81, %101, %308, %373, %429, %550
  %555 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %51, i32 0, i32 0
  %556 = load i64, ptr %555, align 8
  ret i64 %556
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10fast_float20parsed_number_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %3, i32 0, i32 0
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %3, i32 0, i32 1
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %3, i32 0, i32 2
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %3, i32 0, i32 3
  store i8 0, ptr %7, align 8
  %8 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %3, i32 0, i32 4
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %3, i32 0, i32 5
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %3, i32 0, i32 6
  call void @_ZN10fast_float4spanIKcEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10)
  %11 = getelementptr inbounds nuw %"struct.fast_float::parsed_number_string", ptr %3, i32 0, i32 7
  call void @_ZN10fast_float4spanIKcEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11)
  ret void
}

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
define linkonce_odr dso_local void @_ZN10fast_float4spanIKcEC2EPS1_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds nuw %"struct.fast_float::span", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw %"struct.fast_float::span", ptr %7, i32 0, i32 1
  %11 = load i64, ptr %6, align 8
  store i64 %11, ptr %10, align 8
  ret void
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
define linkonce_odr dso_local noundef i64 @_ZN10fast_float4spanIKcE3lenEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.fast_float::span", ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10fast_float4spanIKcEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.fast_float::span", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds nuw %"struct.fast_float::span", ptr %3, i32 0, i32 1
  store i64 0, ptr %5, align 8
  ret void
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
attributes #3 = { nounwind }

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
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
