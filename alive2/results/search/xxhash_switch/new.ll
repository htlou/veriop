; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_switch/xxhash_switch.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_switch/xxhash_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 %1, label %524 [
    i64 1, label %6
    i64 2, label %28
    i64 3, label %56
    i64 4, label %82
    i64 5, label %112
    i64 6, label %145
    i64 7, label %178
    i64 8, label %211
    i64 9, label %244
    i64 10, label %279
    i64 11, label %314
    i64 12, label %349
    i64 13, label %384
    i64 14, label %419
    i64 15, label %454
    i64 16, label %489
  ]

6:                                                ; preds = %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = zext i8 %9 to i64
  %11 = mul nuw nsw i64 %10, 16842753
  %12 = or disjoint i64 %11, 256
  %13 = load i32, ptr %2, align 1
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %15 = load i32, ptr %14, align 1
  %16 = xor i32 %15, %13
  %17 = zext i32 %16 to i64
  %18 = add i64 %3, %17
  %19 = lshr i64 %18, 33
  %20 = xor i64 %12, %19
  %21 = xor i64 %20, %18
  %22 = mul i64 %21, -4417276706812531889
  %23 = lshr i64 %22, 29
  %24 = xor i64 %23, %22
  %25 = mul i64 %24, 1609587929392839161
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %25
  br label %539

28:                                               ; preds = %4
  %29 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %29)
  %30 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %30)
  %31 = load i8, ptr %0, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %31 to i64
  %35 = shl nuw nsw i64 %34, 16
  %36 = zext i8 %33 to i64
  %37 = shl nuw nsw i64 %36, 24
  %38 = or disjoint i64 %35, %37
  %39 = or disjoint i64 %38, %36
  %40 = or disjoint i64 %39, 512
  %41 = load i32, ptr %2, align 1
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %43 = load i32, ptr %42, align 1
  %44 = xor i32 %43, %41
  %45 = zext i32 %44 to i64
  %46 = add i64 %3, %45
  %47 = xor i64 %40, %46
  %48 = lshr i64 %47, 33
  %49 = xor i64 %48, %47
  %50 = mul i64 %49, -4417276706812531889
  %51 = lshr i64 %50, 29
  %52 = xor i64 %51, %50
  %53 = mul i64 %52, 1609587929392839161
  %54 = lshr i64 %53, 32
  %55 = xor i64 %54, %53
  br label %539

56:                                               ; preds = %4
  %57 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %57)
  %58 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %58)
  %59 = load i16, ptr %0, align 1
  %60 = zext i16 %59 to i64
  %61 = shl nuw nsw i64 %60, 16
  %62 = getelementptr i8, ptr %0, i64 2
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i64
  %65 = or disjoint i64 %61, %64
  %66 = or disjoint i64 %65, 768
  %67 = load i32, ptr %2, align 1
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %69 = load i32, ptr %68, align 1
  %70 = xor i32 %69, %67
  %71 = zext i32 %70 to i64
  %72 = add i64 %3, %71
  %73 = lshr i64 %72, 33
  %74 = xor i64 %66, %73
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -4417276706812531889
  %77 = lshr i64 %76, 29
  %78 = xor i64 %77, %76
  %79 = mul i64 %78, 1609587929392839161
  %80 = lshr i64 %79, 32
  %81 = xor i64 %80, %79
  br label %539

82:                                               ; preds = %4
  %83 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %84)
  %85 = trunc i64 %3 to i32
  %86 = tail call noundef i32 @llvm.bswap.i32(i32 %85)
  %87 = zext i32 %86 to i64
  %88 = shl nuw i64 %87, 32
  %89 = xor i64 %88, %3
  %90 = load i32, ptr %0, align 1
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %92 = load i64, ptr %91, align 1
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %94 = load i64, ptr %93, align 1
  %95 = xor i64 %94, %92
  %96 = sub i64 %95, %89
  %97 = zext i32 %90 to i64
  %98 = shl nuw i64 %97, 32
  %99 = or disjoint i64 %98, %97
  %100 = xor i64 %96, %99
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 49)
  %102 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 24)
  %103 = xor i64 %101, %102
  %104 = xor i64 %103, %100
  %105 = mul i64 %104, -6939452855193903323
  %106 = lshr i64 %105, 35
  %107 = add nuw nsw i64 %106, 4
  %108 = xor i64 %107, %105
  %109 = mul i64 %108, -6939452855193903323
  %110 = lshr i64 %109, 28
  %111 = xor i64 %110, %109
  br label %539

112:                                              ; preds = %4
  %113 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %113)
  %114 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %114)
  %115 = trunc i64 %3 to i32
  %116 = tail call noundef i32 @llvm.bswap.i32(i32 %115)
  %117 = zext i32 %116 to i64
  %118 = shl nuw i64 %117, 32
  %119 = xor i64 %118, %3
  %120 = load i32, ptr %0, align 1
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %122 = load i32, ptr %121, align 1
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %126, %124
  %128 = sub i64 %127, %119
  %129 = zext i32 %122 to i64
  %130 = zext i32 %120 to i64
  %131 = shl nuw i64 %130, 32
  %132 = or disjoint i64 %131, %129
  %133 = xor i64 %128, %132
  %134 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 49)
  %135 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 24)
  %136 = xor i64 %134, %135
  %137 = xor i64 %136, %133
  %138 = mul i64 %137, -6939452855193903323
  %139 = lshr i64 %138, 35
  %140 = add nuw nsw i64 %139, 5
  %141 = xor i64 %140, %138
  %142 = mul i64 %141, -6939452855193903323
  %143 = lshr i64 %142, 28
  %144 = xor i64 %143, %142
  br label %539

145:                                              ; preds = %4
  %146 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %146)
  %147 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %147)
  %148 = trunc i64 %3 to i32
  %149 = tail call noundef i32 @llvm.bswap.i32(i32 %148)
  %150 = zext i32 %149 to i64
  %151 = shl nuw i64 %150, 32
  %152 = xor i64 %151, %3
  %153 = load i32, ptr %0, align 1
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %155 = load i32, ptr %154, align 1
  %156 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %157 = load i64, ptr %156, align 1
  %158 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %159 = load i64, ptr %158, align 1
  %160 = xor i64 %159, %157
  %161 = sub i64 %160, %152
  %162 = zext i32 %155 to i64
  %163 = zext i32 %153 to i64
  %164 = shl nuw i64 %163, 32
  %165 = or disjoint i64 %164, %162
  %166 = xor i64 %161, %165
  %167 = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 49)
  %168 = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 24)
  %169 = xor i64 %167, %168
  %170 = xor i64 %169, %166
  %171 = mul i64 %170, -6939452855193903323
  %172 = lshr i64 %171, 35
  %173 = add nuw nsw i64 %172, 6
  %174 = xor i64 %173, %171
  %175 = mul i64 %174, -6939452855193903323
  %176 = lshr i64 %175, 28
  %177 = xor i64 %176, %175
  br label %539

178:                                              ; preds = %4
  %179 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %179)
  %180 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %180)
  %181 = trunc i64 %3 to i32
  %182 = tail call noundef i32 @llvm.bswap.i32(i32 %181)
  %183 = zext i32 %182 to i64
  %184 = shl nuw i64 %183, 32
  %185 = xor i64 %184, %3
  %186 = load i32, ptr %0, align 1
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %188 = load i32, ptr %187, align 1
  %189 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %190 = load i64, ptr %189, align 1
  %191 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %192 = load i64, ptr %191, align 1
  %193 = xor i64 %192, %190
  %194 = sub i64 %193, %185
  %195 = zext i32 %188 to i64
  %196 = zext i32 %186 to i64
  %197 = shl nuw i64 %196, 32
  %198 = or disjoint i64 %197, %195
  %199 = xor i64 %194, %198
  %200 = tail call i64 @llvm.fshl.i64(i64 %199, i64 %199, i64 49)
  %201 = tail call i64 @llvm.fshl.i64(i64 %199, i64 %199, i64 24)
  %202 = xor i64 %200, %201
  %203 = xor i64 %202, %199
  %204 = mul i64 %203, -6939452855193903323
  %205 = lshr i64 %204, 35
  %206 = add nuw nsw i64 %205, 7
  %207 = xor i64 %206, %204
  %208 = mul i64 %207, -6939452855193903323
  %209 = lshr i64 %208, 28
  %210 = xor i64 %209, %208
  br label %539

211:                                              ; preds = %4
  %212 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %212)
  %213 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %213)
  %214 = trunc i64 %3 to i32
  %215 = tail call noundef i32 @llvm.bswap.i32(i32 %214)
  %216 = zext i32 %215 to i64
  %217 = shl nuw i64 %216, 32
  %218 = xor i64 %217, %3
  %219 = load i32, ptr %0, align 1
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %221 = load i32, ptr %220, align 1
  %222 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %223 = load i64, ptr %222, align 1
  %224 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %225 = load i64, ptr %224, align 1
  %226 = xor i64 %225, %223
  %227 = sub i64 %226, %218
  %228 = zext i32 %221 to i64
  %229 = zext i32 %219 to i64
  %230 = shl nuw i64 %229, 32
  %231 = or disjoint i64 %230, %228
  %232 = xor i64 %227, %231
  %233 = tail call i64 @llvm.fshl.i64(i64 %232, i64 %232, i64 49)
  %234 = tail call i64 @llvm.fshl.i64(i64 %232, i64 %232, i64 24)
  %235 = xor i64 %233, %234
  %236 = xor i64 %235, %232
  %237 = mul i64 %236, -6939452855193903323
  %238 = lshr i64 %237, 35
  %239 = add nuw nsw i64 %238, 8
  %240 = xor i64 %239, %237
  %241 = mul i64 %240, -6939452855193903323
  %242 = lshr i64 %241, 28
  %243 = xor i64 %242, %241
  br label %539

244:                                              ; preds = %4
  %245 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %245)
  %246 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %246)
  %247 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %248 = load i64, ptr %247, align 1
  %249 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %250 = load i64, ptr %249, align 1
  %251 = xor i64 %250, %248
  %252 = add i64 %251, %3
  %253 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %254 = load i64, ptr %253, align 1
  %255 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %256 = load i64, ptr %255, align 1
  %257 = xor i64 %256, %254
  %258 = sub i64 %257, %3
  %259 = load i64, ptr %0, align 1
  %260 = xor i64 %259, %252
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %262 = load i64, ptr %261, align 1
  %263 = xor i64 %262, %258
  %264 = tail call noundef i64 @llvm.bswap.i64(i64 %260)
  %265 = add i64 %264, 9
  %266 = add i64 %265, %263
  %267 = zext i64 %260 to i128
  %268 = zext i64 %263 to i128
  %269 = mul nuw i128 %268, %267
  %270 = lshr i128 %269, 64
  %271 = xor i128 %270, %269
  %272 = trunc i128 %271 to i64
  %273 = add i64 %266, %272
  %274 = lshr i64 %273, 37
  %275 = xor i64 %274, %273
  %276 = mul i64 %275, 1609587791953885689
  %277 = lshr i64 %276, 32
  %278 = xor i64 %277, %276
  br label %539

279:                                              ; preds = %4
  %280 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %280)
  %281 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %281)
  %282 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %283 = load i64, ptr %282, align 1
  %284 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %285, %283
  %287 = add i64 %286, %3
  %288 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %289 = load i64, ptr %288, align 1
  %290 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %291 = load i64, ptr %290, align 1
  %292 = xor i64 %291, %289
  %293 = sub i64 %292, %3
  %294 = load i64, ptr %0, align 1
  %295 = xor i64 %294, %287
  %296 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %297 = load i64, ptr %296, align 1
  %298 = xor i64 %297, %293
  %299 = tail call noundef i64 @llvm.bswap.i64(i64 %295)
  %300 = add i64 %299, 10
  %301 = add i64 %300, %298
  %302 = zext i64 %295 to i128
  %303 = zext i64 %298 to i128
  %304 = mul nuw i128 %303, %302
  %305 = lshr i128 %304, 64
  %306 = xor i128 %305, %304
  %307 = trunc i128 %306 to i64
  %308 = add i64 %301, %307
  %309 = lshr i64 %308, 37
  %310 = xor i64 %309, %308
  %311 = mul i64 %310, 1609587791953885689
  %312 = lshr i64 %311, 32
  %313 = xor i64 %312, %311
  br label %539

314:                                              ; preds = %4
  %315 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %315)
  %316 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %316)
  %317 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %318 = load i64, ptr %317, align 1
  %319 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %320 = load i64, ptr %319, align 1
  %321 = xor i64 %320, %318
  %322 = add i64 %321, %3
  %323 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %324 = load i64, ptr %323, align 1
  %325 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %326 = load i64, ptr %325, align 1
  %327 = xor i64 %326, %324
  %328 = sub i64 %327, %3
  %329 = load i64, ptr %0, align 1
  %330 = xor i64 %329, %322
  %331 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %332 = load i64, ptr %331, align 1
  %333 = xor i64 %332, %328
  %334 = tail call noundef i64 @llvm.bswap.i64(i64 %330)
  %335 = add i64 %334, 11
  %336 = add i64 %335, %333
  %337 = zext i64 %330 to i128
  %338 = zext i64 %333 to i128
  %339 = mul nuw i128 %338, %337
  %340 = lshr i128 %339, 64
  %341 = xor i128 %340, %339
  %342 = trunc i128 %341 to i64
  %343 = add i64 %336, %342
  %344 = lshr i64 %343, 37
  %345 = xor i64 %344, %343
  %346 = mul i64 %345, 1609587791953885689
  %347 = lshr i64 %346, 32
  %348 = xor i64 %347, %346
  br label %539

349:                                              ; preds = %4
  %350 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %350)
  %351 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %351)
  %352 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %353 = load i64, ptr %352, align 1
  %354 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %355 = load i64, ptr %354, align 1
  %356 = xor i64 %355, %353
  %357 = add i64 %356, %3
  %358 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %359 = load i64, ptr %358, align 1
  %360 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %361 = load i64, ptr %360, align 1
  %362 = xor i64 %361, %359
  %363 = sub i64 %362, %3
  %364 = load i64, ptr %0, align 1
  %365 = xor i64 %364, %357
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %367 = load i64, ptr %366, align 1
  %368 = xor i64 %367, %363
  %369 = tail call noundef i64 @llvm.bswap.i64(i64 %365)
  %370 = add i64 %369, 12
  %371 = add i64 %370, %368
  %372 = zext i64 %365 to i128
  %373 = zext i64 %368 to i128
  %374 = mul nuw i128 %373, %372
  %375 = lshr i128 %374, 64
  %376 = xor i128 %375, %374
  %377 = trunc i128 %376 to i64
  %378 = add i64 %371, %377
  %379 = lshr i64 %378, 37
  %380 = xor i64 %379, %378
  %381 = mul i64 %380, 1609587791953885689
  %382 = lshr i64 %381, 32
  %383 = xor i64 %382, %381
  br label %539

384:                                              ; preds = %4
  %385 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %385)
  %386 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %386)
  %387 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %388 = load i64, ptr %387, align 1
  %389 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %390 = load i64, ptr %389, align 1
  %391 = xor i64 %390, %388
  %392 = add i64 %391, %3
  %393 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %394 = load i64, ptr %393, align 1
  %395 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %396 = load i64, ptr %395, align 1
  %397 = xor i64 %396, %394
  %398 = sub i64 %397, %3
  %399 = load i64, ptr %0, align 1
  %400 = xor i64 %399, %392
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %402 = load i64, ptr %401, align 1
  %403 = xor i64 %402, %398
  %404 = tail call noundef i64 @llvm.bswap.i64(i64 %400)
  %405 = add i64 %404, 13
  %406 = add i64 %405, %403
  %407 = zext i64 %400 to i128
  %408 = zext i64 %403 to i128
  %409 = mul nuw i128 %408, %407
  %410 = lshr i128 %409, 64
  %411 = xor i128 %410, %409
  %412 = trunc i128 %411 to i64
  %413 = add i64 %406, %412
  %414 = lshr i64 %413, 37
  %415 = xor i64 %414, %413
  %416 = mul i64 %415, 1609587791953885689
  %417 = lshr i64 %416, 32
  %418 = xor i64 %417, %416
  br label %539

419:                                              ; preds = %4
  %420 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %420)
  %421 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %421)
  %422 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %423 = load i64, ptr %422, align 1
  %424 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %425 = load i64, ptr %424, align 1
  %426 = xor i64 %425, %423
  %427 = add i64 %426, %3
  %428 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %429 = load i64, ptr %428, align 1
  %430 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %431 = load i64, ptr %430, align 1
  %432 = xor i64 %431, %429
  %433 = sub i64 %432, %3
  %434 = load i64, ptr %0, align 1
  %435 = xor i64 %434, %427
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %437 = load i64, ptr %436, align 1
  %438 = xor i64 %437, %433
  %439 = tail call noundef i64 @llvm.bswap.i64(i64 %435)
  %440 = add i64 %439, 14
  %441 = add i64 %440, %438
  %442 = zext i64 %435 to i128
  %443 = zext i64 %438 to i128
  %444 = mul nuw i128 %443, %442
  %445 = lshr i128 %444, 64
  %446 = xor i128 %445, %444
  %447 = trunc i128 %446 to i64
  %448 = add i64 %441, %447
  %449 = lshr i64 %448, 37
  %450 = xor i64 %449, %448
  %451 = mul i64 %450, 1609587791953885689
  %452 = lshr i64 %451, 32
  %453 = xor i64 %452, %451
  br label %539

454:                                              ; preds = %4
  %455 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %455)
  %456 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %456)
  %457 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %458 = load i64, ptr %457, align 1
  %459 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %460 = load i64, ptr %459, align 1
  %461 = xor i64 %460, %458
  %462 = add i64 %461, %3
  %463 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %464 = load i64, ptr %463, align 1
  %465 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %466 = load i64, ptr %465, align 1
  %467 = xor i64 %466, %464
  %468 = sub i64 %467, %3
  %469 = load i64, ptr %0, align 1
  %470 = xor i64 %469, %462
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %472 = load i64, ptr %471, align 1
  %473 = xor i64 %472, %468
  %474 = tail call noundef i64 @llvm.bswap.i64(i64 %470)
  %475 = add i64 %474, 15
  %476 = add i64 %475, %473
  %477 = zext i64 %470 to i128
  %478 = zext i64 %473 to i128
  %479 = mul nuw i128 %478, %477
  %480 = lshr i128 %479, 64
  %481 = xor i128 %480, %479
  %482 = trunc i128 %481 to i64
  %483 = add i64 %476, %482
  %484 = lshr i64 %483, 37
  %485 = xor i64 %484, %483
  %486 = mul i64 %485, 1609587791953885689
  %487 = lshr i64 %486, 32
  %488 = xor i64 %487, %486
  br label %539

489:                                              ; preds = %4
  %490 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %490)
  %491 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %491)
  %492 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %493 = load i64, ptr %492, align 1
  %494 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %495 = load i64, ptr %494, align 1
  %496 = xor i64 %495, %493
  %497 = add i64 %496, %3
  %498 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %499 = load i64, ptr %498, align 1
  %500 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %501 = load i64, ptr %500, align 1
  %502 = xor i64 %501, %499
  %503 = sub i64 %502, %3
  %504 = load i64, ptr %0, align 1
  %505 = xor i64 %504, %497
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %507 = load i64, ptr %506, align 1
  %508 = xor i64 %507, %503
  %509 = tail call noundef i64 @llvm.bswap.i64(i64 %505)
  %510 = add i64 %509, 16
  %511 = add i64 %510, %508
  %512 = zext i64 %505 to i128
  %513 = zext i64 %508 to i128
  %514 = mul nuw i128 %513, %512
  %515 = lshr i128 %514, 64
  %516 = xor i128 %515, %514
  %517 = trunc i128 %516 to i64
  %518 = add i64 %511, %517
  %519 = lshr i64 %518, 37
  %520 = xor i64 %519, %518
  %521 = mul i64 %520, 1609587791953885689
  %522 = lshr i64 %521, 32
  %523 = xor i64 %522, %521
  br label %539

524:                                              ; preds = %4
  %525 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %526 = load i64, ptr %525, align 1
  %527 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %528 = load i64, ptr %527, align 1
  %529 = xor i64 %526, %528
  %530 = xor i64 %529, %3
  %531 = lshr i64 %530, 33
  %532 = xor i64 %531, %530
  %533 = mul i64 %532, -4417276706812531889
  %534 = lshr i64 %533, 29
  %535 = xor i64 %534, %533
  %536 = mul i64 %535, 1609587929392839161
  %537 = lshr i64 %536, 32
  %538 = xor i64 %537, %536
  br label %539

539:                                              ; preds = %524, %489, %454, %419, %384, %349, %314, %279, %244, %211, %178, %145, %112, %82, %56, %28, %6
  %540 = phi i64 [ %538, %524 ], [ %523, %489 ], [ %488, %454 ], [ %453, %419 ], [ %418, %384 ], [ %383, %349 ], [ %348, %314 ], [ %313, %279 ], [ %278, %244 ], [ %243, %211 ], [ %210, %178 ], [ %177, %145 ], [ %144, %112 ], [ %111, %82 ], [ %81, %56 ], [ %55, %28 ], [ %27, %6 ]
  ret i64 %540
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
