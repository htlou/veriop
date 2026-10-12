; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/60c7cc7/api64_len1100_wasm/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/60c7cc7/api64_len1100_wasm/wrapper.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-i128:128-f128:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-emscripten"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define hidden i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #2
  %4 = add i64 %1, -4734510112055689544
  store i64 %4, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %3, i32 8
  %6 = sub i64 2066345149520216444, %1
  store i64 %6, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i32 16
  %8 = add i64 %1, -2623469361688619810
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i32 24
  %10 = sub i64 2262974939099578482, %1
  store i64 %10, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i32 32
  %12 = add i64 %1, 8711581037947681227
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i32 40
  %14 = sub i64 2410270004345854594, %1
  store i64 %14, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %3, i32 48
  %16 = add i64 %1, -8204357891075471176
  store i64 %16, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i32 56
  %18 = sub i64 5487137525590930912, %1
  store i64 %18, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %3, i32 64
  %20 = add i64 %1, -3818837453329782724
  store i64 %20, ptr %19, align 8
  %21 = getelementptr inbounds nuw i8, ptr %3, i32 72
  %22 = sub i64 -6688317018830679928, %1
  store i64 %22, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %3, i32 80
  %24 = add i64 %1, 5690594596133299313
  store i64 %24, ptr %23, align 8
  %25 = getelementptr inbounds nuw i8, ptr %3, i32 88
  %26 = sub i64 -2833645246901970632, %1
  store i64 %26, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %3, i32 96
  %28 = add i64 %1, 4554437623014685352
  store i64 %28, ptr %27, align 8
  %29 = getelementptr inbounds nuw i8, ptr %3, i32 104
  %30 = sub i64 2111919702937427193, %1
  store i64 %30, ptr %29, align 8
  %31 = getelementptr inbounds nuw i8, ptr %3, i32 112
  %32 = add i64 %1, 3556072174620004746
  store i64 %32, ptr %31, align 8
  %33 = getelementptr inbounds nuw i8, ptr %3, i32 120
  %34 = sub i64 7238261902898274248, %1
  store i64 %34, ptr %33, align 8
  %35 = getelementptr inbounds nuw i8, ptr %3, i32 128
  %36 = add i64 %1, -4329134394285701654
  store i64 %36, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %3, i32 136
  %38 = sub i64 -1485321483350670907, %1
  store i64 %38, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %3, i32 144
  %40 = add i64 %1, 5321830579834785047
  store i64 %40, ptr %39, align 8
  %41 = getelementptr inbounds nuw i8, ptr %3, i32 152
  %42 = sub i64 -7032137544937171245, %1
  store i64 %42, ptr %41, align 8
  %43 = getelementptr inbounds nuw i8, ptr %3, i32 160
  %44 = add i64 %1, -242834301215959509
  store i64 %44, ptr %43, align 8
  %45 = getelementptr inbounds nuw i8, ptr %3, i32 168
  %46 = sub i64 -3588858202114426737, %1
  store i64 %46, ptr %45, align 8
  %47 = getelementptr inbounds nuw i8, ptr %3, i32 176
  %48 = add i64 %1, 2883454493032893253
  store i64 %48, ptr %47, align 8
  %49 = getelementptr inbounds nuw i8, ptr %3, i32 184
  %50 = sub i64 9097354517224871855, %1
  store i64 %50, ptr %49, align 8
  br label %51

51:                                               ; preds = %51, %2
  %52 = phi i64 [ %142, %51 ], [ 2654435761, %2 ]
  %53 = phi i64 [ %132, %51 ], [ 2870177450012600261, %2 ]
  %54 = phi i64 [ %122, %51 ], [ 2246822519, %2 ]
  %55 = phi i64 [ %112, %51 ], [ -8796714831421723037, %2 ]
  %56 = phi i64 [ %102, %51 ], [ 1609587929392839161, %2 ]
  %57 = phi i64 [ %92, %51 ], [ -4417276706812531889, %2 ]
  %58 = phi i64 [ %82, %51 ], [ -7046029288634856825, %2 ]
  %59 = phi i64 [ %72, %51 ], [ 3266489917, %2 ]
  %60 = phi i32 [ %143, %51 ], [ 0, %2 ]
  %61 = shl nuw nsw i32 %60, 6
  %62 = getelementptr inbounds nuw i8, ptr %0, i32 %61
  %63 = shl nuw nsw i32 %60, 3
  %64 = getelementptr inbounds nuw i8, ptr %3, i32 %63
  %65 = load i64, ptr %62, align 1
  %66 = load i64, ptr %64, align 8
  %67 = xor i64 %66, %65
  %68 = and i64 %67, 4294967295
  %69 = lshr i64 %67, 32
  %70 = mul nuw i64 %68, %69
  %71 = add i64 %65, %59
  %72 = add i64 %71, %70
  %73 = getelementptr inbounds nuw i8, ptr %62, i32 8
  %74 = load i64, ptr %73, align 1
  %75 = getelementptr inbounds nuw i8, ptr %64, i32 8
  %76 = load i64, ptr %75, align 8
  %77 = xor i64 %76, %74
  %78 = and i64 %77, 4294967295
  %79 = lshr i64 %77, 32
  %80 = mul nuw i64 %78, %79
  %81 = add i64 %74, %58
  %82 = add i64 %81, %80
  %83 = getelementptr inbounds nuw i8, ptr %62, i32 16
  %84 = load i64, ptr %83, align 1
  %85 = getelementptr inbounds nuw i8, ptr %64, i32 16
  %86 = load i64, ptr %85, align 8
  %87 = xor i64 %86, %84
  %88 = and i64 %87, 4294967295
  %89 = lshr i64 %87, 32
  %90 = mul nuw i64 %88, %89
  %91 = add i64 %84, %57
  %92 = add i64 %91, %90
  %93 = getelementptr inbounds nuw i8, ptr %62, i32 24
  %94 = load i64, ptr %93, align 1
  %95 = getelementptr inbounds nuw i8, ptr %64, i32 24
  %96 = load i64, ptr %95, align 8
  %97 = xor i64 %96, %94
  %98 = and i64 %97, 4294967295
  %99 = lshr i64 %97, 32
  %100 = mul nuw i64 %98, %99
  %101 = add i64 %94, %56
  %102 = add i64 %101, %100
  %103 = getelementptr inbounds nuw i8, ptr %62, i32 32
  %104 = load i64, ptr %103, align 1
  %105 = getelementptr inbounds nuw i8, ptr %64, i32 32
  %106 = load i64, ptr %105, align 8
  %107 = xor i64 %106, %104
  %108 = and i64 %107, 4294967295
  %109 = lshr i64 %107, 32
  %110 = mul nuw i64 %108, %109
  %111 = add i64 %104, %55
  %112 = add i64 %111, %110
  %113 = getelementptr inbounds nuw i8, ptr %62, i32 40
  %114 = load i64, ptr %113, align 1
  %115 = getelementptr inbounds nuw i8, ptr %64, i32 40
  %116 = load i64, ptr %115, align 8
  %117 = xor i64 %116, %114
  %118 = and i64 %117, 4294967295
  %119 = lshr i64 %117, 32
  %120 = mul nuw i64 %118, %119
  %121 = add i64 %114, %54
  %122 = add i64 %121, %120
  %123 = getelementptr inbounds nuw i8, ptr %62, i32 48
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %64, i32 48
  %126 = load i64, ptr %125, align 8
  %127 = xor i64 %126, %124
  %128 = and i64 %127, 4294967295
  %129 = lshr i64 %127, 32
  %130 = mul nuw i64 %128, %129
  %131 = add i64 %124, %53
  %132 = add i64 %131, %130
  %133 = getelementptr inbounds nuw i8, ptr %62, i32 56
  %134 = load i64, ptr %133, align 1
  %135 = getelementptr inbounds nuw i8, ptr %64, i32 56
  %136 = load i64, ptr %135, align 8
  %137 = xor i64 %136, %134
  %138 = and i64 %137, 4294967295
  %139 = lshr i64 %137, 32
  %140 = mul nuw i64 %138, %139
  %141 = add i64 %134, %52
  %142 = add i64 %141, %140
  %143 = add nuw nsw i32 %60, 1
  %144 = icmp eq i32 %143, 16
  br i1 %144, label %145, label %51

145:                                              ; preds = %51
  %146 = lshr i64 %72, 47
  %147 = xor i64 %36, %146
  %148 = xor i64 %147, %72
  %149 = mul i64 %148, 2654435761
  %150 = lshr i64 %82, 47
  %151 = xor i64 %38, %150
  %152 = xor i64 %151, %82
  %153 = mul i64 %152, 2654435761
  %154 = lshr i64 %92, 47
  %155 = xor i64 %40, %154
  %156 = xor i64 %155, %92
  %157 = mul i64 %156, 2654435761
  %158 = lshr i64 %102, 47
  %159 = xor i64 %42, %158
  %160 = xor i64 %159, %102
  %161 = mul i64 %160, 2654435761
  %162 = lshr i64 %112, 47
  %163 = xor i64 %44, %162
  %164 = xor i64 %163, %112
  %165 = mul i64 %164, 2654435761
  %166 = lshr i64 %122, 47
  %167 = xor i64 %46, %166
  %168 = xor i64 %167, %122
  %169 = mul i64 %168, 2654435761
  %170 = lshr i64 %132, 47
  %171 = xor i64 %48, %170
  %172 = xor i64 %171, %132
  %173 = mul i64 %172, 2654435761
  %174 = lshr i64 %142, 47
  %175 = xor i64 %50, %174
  %176 = xor i64 %175, %142
  %177 = mul i64 %176, 2654435761
  %178 = getelementptr inbounds nuw i8, ptr %0, i32 1024
  %179 = load i64, ptr %178, align 1
  %180 = xor i64 %179, %4
  %181 = and i64 %180, 4294967295
  %182 = lshr i64 %180, 32
  %183 = mul nuw i64 %181, %182
  %184 = add i64 %179, %149
  %185 = add i64 %184, %183
  %186 = getelementptr inbounds nuw i8, ptr %0, i32 1032
  %187 = load i64, ptr %186, align 1
  %188 = xor i64 %187, %6
  %189 = and i64 %188, 4294967295
  %190 = lshr i64 %188, 32
  %191 = mul nuw i64 %189, %190
  %192 = add i64 %187, %153
  %193 = add i64 %192, %191
  %194 = getelementptr inbounds nuw i8, ptr %0, i32 1040
  %195 = load i64, ptr %194, align 1
  %196 = xor i64 %195, %8
  %197 = and i64 %196, 4294967295
  %198 = lshr i64 %196, 32
  %199 = mul nuw i64 %197, %198
  %200 = add i64 %195, %157
  %201 = add i64 %200, %199
  %202 = getelementptr inbounds nuw i8, ptr %0, i32 1048
  %203 = load i64, ptr %202, align 1
  %204 = xor i64 %203, %10
  %205 = and i64 %204, 4294967295
  %206 = lshr i64 %204, 32
  %207 = mul nuw i64 %205, %206
  %208 = add i64 %203, %161
  %209 = add i64 %208, %207
  %210 = getelementptr inbounds nuw i8, ptr %0, i32 1056
  %211 = load i64, ptr %210, align 1
  %212 = xor i64 %211, %12
  %213 = and i64 %212, 4294967295
  %214 = lshr i64 %212, 32
  %215 = mul nuw i64 %213, %214
  %216 = add i64 %211, %165
  %217 = add i64 %216, %215
  %218 = getelementptr inbounds nuw i8, ptr %0, i32 1064
  %219 = load i64, ptr %218, align 1
  %220 = xor i64 %219, %14
  %221 = and i64 %220, 4294967295
  %222 = lshr i64 %220, 32
  %223 = mul nuw i64 %221, %222
  %224 = add i64 %219, %169
  %225 = add i64 %224, %223
  %226 = getelementptr inbounds nuw i8, ptr %0, i32 1072
  %227 = load i64, ptr %226, align 1
  %228 = xor i64 %227, %16
  %229 = and i64 %228, 4294967295
  %230 = lshr i64 %228, 32
  %231 = mul nuw i64 %229, %230
  %232 = add i64 %227, %173
  %233 = add i64 %232, %231
  %234 = getelementptr inbounds nuw i8, ptr %0, i32 1080
  %235 = load i64, ptr %234, align 1
  %236 = xor i64 %235, %18
  %237 = and i64 %236, 4294967295
  %238 = lshr i64 %236, 32
  %239 = mul nuw i64 %237, %238
  %240 = add i64 %235, %177
  %241 = add i64 %240, %239
  %242 = getelementptr inbounds nuw i8, ptr %0, i32 1036
  %243 = getelementptr inbounds nuw i8, ptr %3, i32 121
  %244 = load i64, ptr %242, align 1
  %245 = load i64, ptr %243, align 1
  %246 = xor i64 %245, %244
  %247 = and i64 %246, 4294967295
  %248 = lshr i64 %246, 32
  %249 = mul nuw i64 %247, %248
  %250 = add i64 %185, %244
  %251 = add i64 %250, %249
  %252 = getelementptr inbounds nuw i8, ptr %0, i32 1044
  %253 = load i64, ptr %252, align 1
  %254 = getelementptr inbounds nuw i8, ptr %3, i32 129
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %253
  %257 = and i64 %256, 4294967295
  %258 = lshr i64 %256, 32
  %259 = mul nuw i64 %257, %258
  %260 = add i64 %193, %253
  %261 = add i64 %260, %259
  %262 = getelementptr inbounds nuw i8, ptr %0, i32 1052
  %263 = load i64, ptr %262, align 1
  %264 = getelementptr inbounds nuw i8, ptr %3, i32 137
  %265 = load i64, ptr %264, align 1
  %266 = xor i64 %265, %263
  %267 = and i64 %266, 4294967295
  %268 = lshr i64 %266, 32
  %269 = mul nuw i64 %267, %268
  %270 = add i64 %201, %263
  %271 = add i64 %270, %269
  %272 = getelementptr inbounds nuw i8, ptr %0, i32 1060
  %273 = load i64, ptr %272, align 1
  %274 = getelementptr inbounds nuw i8, ptr %3, i32 145
  %275 = load i64, ptr %274, align 1
  %276 = xor i64 %275, %273
  %277 = and i64 %276, 4294967295
  %278 = lshr i64 %276, 32
  %279 = mul nuw i64 %277, %278
  %280 = add i64 %209, %273
  %281 = add i64 %280, %279
  %282 = getelementptr inbounds nuw i8, ptr %0, i32 1068
  %283 = load i64, ptr %282, align 1
  %284 = getelementptr inbounds nuw i8, ptr %3, i32 153
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %285, %283
  %287 = and i64 %286, 4294967295
  %288 = lshr i64 %286, 32
  %289 = mul nuw i64 %287, %288
  %290 = add i64 %217, %283
  %291 = add i64 %290, %289
  %292 = getelementptr inbounds nuw i8, ptr %0, i32 1076
  %293 = load i64, ptr %292, align 1
  %294 = getelementptr inbounds nuw i8, ptr %3, i32 161
  %295 = load i64, ptr %294, align 1
  %296 = xor i64 %295, %293
  %297 = and i64 %296, 4294967295
  %298 = lshr i64 %296, 32
  %299 = mul nuw i64 %297, %298
  %300 = add i64 %225, %293
  %301 = add i64 %300, %299
  %302 = getelementptr inbounds nuw i8, ptr %0, i32 1084
  %303 = load i64, ptr %302, align 1
  %304 = getelementptr inbounds nuw i8, ptr %3, i32 169
  %305 = load i64, ptr %304, align 1
  %306 = xor i64 %305, %303
  %307 = and i64 %306, 4294967295
  %308 = lshr i64 %306, 32
  %309 = mul nuw i64 %307, %308
  %310 = add i64 %233, %303
  %311 = add i64 %310, %309
  %312 = getelementptr inbounds nuw i8, ptr %0, i32 1092
  %313 = load i64, ptr %312, align 1
  %314 = getelementptr inbounds nuw i8, ptr %3, i32 177
  %315 = load i64, ptr %314, align 1
  %316 = xor i64 %315, %313
  %317 = and i64 %316, 4294967295
  %318 = lshr i64 %316, 32
  %319 = mul nuw i64 %317, %318
  %320 = add i64 %241, %313
  %321 = add i64 %320, %319
  %322 = getelementptr inbounds nuw i8, ptr %3, i32 11
  %323 = load i64, ptr %322, align 1
  %324 = xor i64 %323, %251
  %325 = getelementptr inbounds nuw i8, ptr %3, i32 19
  %326 = load i64, ptr %325, align 1
  %327 = xor i64 %326, %261
  %328 = zext i64 %324 to i128
  %329 = zext i64 %327 to i128
  %330 = mul nuw i128 %329, %328
  %331 = lshr i128 %330, 64
  %332 = xor i128 %331, %330
  %333 = trunc i128 %332 to i64
  %334 = add i64 %333, -2999706540330828780
  %335 = getelementptr inbounds nuw i8, ptr %3, i32 27
  %336 = load i64, ptr %335, align 1
  %337 = xor i64 %336, %271
  %338 = getelementptr inbounds nuw i8, ptr %3, i32 35
  %339 = load i64, ptr %338, align 1
  %340 = xor i64 %339, %281
  %341 = zext i64 %337 to i128
  %342 = zext i64 %340 to i128
  %343 = mul nuw i128 %342, %341
  %344 = lshr i128 %343, 64
  %345 = xor i128 %344, %343
  %346 = trunc i128 %345 to i64
  %347 = add i64 %334, %346
  %348 = getelementptr inbounds nuw i8, ptr %3, i32 43
  %349 = load i64, ptr %348, align 1
  %350 = xor i64 %349, %291
  %351 = getelementptr inbounds nuw i8, ptr %3, i32 51
  %352 = load i64, ptr %351, align 1
  %353 = xor i64 %352, %301
  %354 = zext i64 %350 to i128
  %355 = zext i64 %353 to i128
  %356 = mul nuw i128 %355, %354
  %357 = lshr i128 %356, 64
  %358 = xor i128 %357, %356
  %359 = trunc i128 %358 to i64
  %360 = add i64 %347, %359
  %361 = getelementptr inbounds nuw i8, ptr %3, i32 59
  %362 = load i64, ptr %361, align 1
  %363 = xor i64 %362, %311
  %364 = getelementptr inbounds nuw i8, ptr %3, i32 67
  %365 = load i64, ptr %364, align 1
  %366 = xor i64 %365, %321
  %367 = zext i64 %363 to i128
  %368 = zext i64 %366 to i128
  %369 = mul nuw i128 %368, %367
  %370 = lshr i128 %369, 64
  %371 = xor i128 %370, %369
  %372 = trunc i128 %371 to i64
  %373 = add i64 %360, %372
  %374 = lshr i64 %373, 37
  %375 = xor i64 %374, %373
  %376 = mul i64 %375, 1609587929392839161
  %377 = lshr i64 %376, 32
  %378 = xor i64 %377, %376
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #2
  ret i64 %378
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+bulk-memory,+bulk-memory-opt,+call-indirect-overlong,+multivalue,+mutable-globals,+nontrapping-fptoint,+reference-types,+sign-ext" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
