; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c9a7470/wrap_wasm_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c9a7470/wrap_wasm_api.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-i128:128-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: readwrite)
define hidden i64 @target_xxh3_len256(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31) local_unnamed_addr #0 {
  %33 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %33) #3
  store i64 %0, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %33, i32 8
  store i64 %1, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %33, i32 16
  store i64 %2, ptr %35, align 16
  %36 = getelementptr inbounds nuw i8, ptr %33, i32 24
  store i64 %3, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %33, i32 32
  store i64 %4, ptr %37, align 16
  %38 = getelementptr inbounds nuw i8, ptr %33, i32 40
  store i64 %5, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %33, i32 48
  store i64 %6, ptr %39, align 16
  %40 = getelementptr inbounds nuw i8, ptr %33, i32 56
  store i64 %7, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %33, i32 64
  store i64 %8, ptr %41, align 16
  %42 = getelementptr inbounds nuw i8, ptr %33, i32 72
  store i64 %9, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %33, i32 80
  store i64 %10, ptr %43, align 16
  %44 = getelementptr inbounds nuw i8, ptr %33, i32 88
  store i64 %11, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %33, i32 96
  store i64 %12, ptr %45, align 16
  %46 = getelementptr inbounds nuw i8, ptr %33, i32 104
  store i64 %13, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %33, i32 112
  store i64 %14, ptr %47, align 16
  %48 = getelementptr inbounds nuw i8, ptr %33, i32 120
  store i64 %15, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %33, i32 128
  store i64 %16, ptr %49, align 16
  %50 = getelementptr inbounds nuw i8, ptr %33, i32 136
  store i64 %17, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %33, i32 144
  store i64 %18, ptr %51, align 16
  %52 = getelementptr inbounds nuw i8, ptr %33, i32 152
  store i64 %19, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %33, i32 160
  store i64 %20, ptr %53, align 16
  %54 = getelementptr inbounds nuw i8, ptr %33, i32 168
  store i64 %21, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %33, i32 176
  store i64 %22, ptr %55, align 16
  %56 = getelementptr inbounds nuw i8, ptr %33, i32 184
  store i64 %23, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %33, i32 192
  store i64 %24, ptr %57, align 16
  %58 = getelementptr inbounds nuw i8, ptr %33, i32 200
  store i64 %25, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %33, i32 208
  store i64 %26, ptr %59, align 16
  %60 = getelementptr inbounds nuw i8, ptr %33, i32 216
  store i64 %27, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %33, i32 224
  store i64 %28, ptr %61, align 16
  %62 = getelementptr inbounds nuw i8, ptr %33, i32 232
  store i64 %29, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %33, i32 240
  store i64 %30, ptr %63, align 16
  %64 = getelementptr inbounds nuw i8, ptr %33, i32 248
  store i64 %31, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %33, i32 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %65, i32 0, i32 3, i32 1)
  %66 = xor i64 %0, -4734510112055689544
  %67 = add i64 %0, -7046029288634856825
  %68 = lshr i64 %66, 32
  %69 = and i64 %66, 4294967295
  %70 = mul nuw i64 %69, %68
  %71 = xor i64 %1, 2066345149520216444
  %72 = lshr i64 %71, 32
  %73 = and i64 %71, 4294967295
  %74 = mul nuw i64 %73, %72
  %75 = add i64 %67, %74
  %76 = xor i64 %2, -2623469361688619810
  %77 = add i64 %2, 1609587929392839161
  %78 = lshr i64 %76, 32
  %79 = and i64 %76, 4294967295
  %80 = mul nuw i64 %79, %78
  %81 = xor i64 %3, 2262974939099578482
  %82 = lshr i64 %81, 32
  %83 = and i64 %81, 4294967295
  %84 = mul nuw i64 %83, %82
  %85 = add i64 %77, %84
  %86 = xor i64 %4, 8711581037947681227
  %87 = add i64 %4, 2246822519
  %88 = lshr i64 %86, 32
  %89 = and i64 %86, 4294967295
  %90 = mul nuw i64 %89, %88
  %91 = xor i64 %5, 2410270004345854594
  %92 = lshr i64 %91, 32
  %93 = and i64 %91, 4294967295
  %94 = mul nuw i64 %93, %92
  %95 = add i64 %87, %94
  %96 = xor i64 %6, -8204357891075471176
  %97 = add i64 %6, 2654435761
  %98 = lshr i64 %96, 32
  %99 = and i64 %96, 4294967295
  %100 = mul nuw i64 %99, %98
  %101 = xor i64 %7, 5487137525590930912
  %102 = lshr i64 %101, 32
  %103 = and i64 %101, 4294967295
  %104 = mul nuw i64 %103, %102
  %105 = add i64 %97, %104
  %106 = getelementptr inbounds nuw i8, ptr %33, i32 384
  call void @llvm.prefetch.p0(ptr nonnull readonly %106, i32 0, i32 3, i32 1)
  %107 = xor i64 %8, 2066345149520216444
  %108 = add i64 %75, %8
  %109 = lshr i64 %107, 32
  %110 = and i64 %107, 4294967295
  %111 = mul nuw i64 %110, %109
  %112 = xor i64 %9, -2623469361688619810
  %113 = lshr i64 %112, 32
  %114 = and i64 %112, 4294967295
  %115 = mul nuw i64 %114, %113
  %116 = add i64 %108, %115
  %117 = xor i64 %10, 2262974939099578482
  %118 = add i64 %85, %10
  %119 = lshr i64 %117, 32
  %120 = and i64 %117, 4294967295
  %121 = mul nuw i64 %120, %119
  %122 = xor i64 %11, 8711581037947681227
  %123 = lshr i64 %122, 32
  %124 = and i64 %122, 4294967295
  %125 = mul nuw i64 %124, %123
  %126 = add i64 %118, %125
  %127 = xor i64 %12, 2410270004345854594
  %128 = add i64 %95, %12
  %129 = lshr i64 %127, 32
  %130 = and i64 %127, 4294967295
  %131 = mul nuw i64 %130, %129
  %132 = xor i64 %13, -8204357891075471176
  %133 = lshr i64 %132, 32
  %134 = and i64 %132, 4294967295
  %135 = mul nuw i64 %134, %133
  %136 = add i64 %128, %135
  %137 = xor i64 %14, 5487137525590930912
  %138 = add i64 %105, %14
  %139 = lshr i64 %137, 32
  %140 = and i64 %137, 4294967295
  %141 = mul nuw i64 %140, %139
  %142 = xor i64 %15, -3818837453329782724
  %143 = lshr i64 %142, 32
  %144 = and i64 %142, 4294967295
  %145 = mul nuw i64 %144, %143
  %146 = add i64 %138, %145
  %147 = getelementptr inbounds nuw i8, ptr %33, i32 448
  call void @llvm.prefetch.p0(ptr nonnull readonly %147, i32 0, i32 3, i32 1)
  %148 = xor i64 %16, -2623469361688619810
  %149 = add i64 %116, %16
  %150 = lshr i64 %148, 32
  %151 = and i64 %148, 4294967295
  %152 = mul nuw i64 %151, %150
  %153 = xor i64 %17, 2262974939099578482
  %154 = lshr i64 %153, 32
  %155 = and i64 %153, 4294967295
  %156 = mul nuw i64 %155, %154
  %157 = add i64 %149, %156
  %158 = xor i64 %18, 8711581037947681227
  %159 = add i64 %126, %18
  %160 = lshr i64 %158, 32
  %161 = and i64 %158, 4294967295
  %162 = mul nuw i64 %161, %160
  %163 = xor i64 %19, 2410270004345854594
  %164 = lshr i64 %163, 32
  %165 = and i64 %163, 4294967295
  %166 = mul nuw i64 %165, %164
  %167 = add i64 %159, %166
  %168 = xor i64 %20, -8204357891075471176
  %169 = add i64 %136, %20
  %170 = lshr i64 %168, 32
  %171 = and i64 %168, 4294967295
  %172 = mul nuw i64 %171, %170
  %173 = xor i64 %21, 5487137525590930912
  %174 = lshr i64 %173, 32
  %175 = and i64 %173, 4294967295
  %176 = mul nuw i64 %175, %174
  %177 = add i64 %169, %176
  %178 = xor i64 %22, -3818837453329782724
  %179 = add i64 %146, %22
  %180 = lshr i64 %178, 32
  %181 = and i64 %178, 4294967295
  %182 = mul nuw i64 %181, %180
  %183 = xor i64 %23, -6688317018830679928
  %184 = lshr i64 %183, 32
  %185 = and i64 %183, 4294967295
  %186 = mul nuw i64 %185, %184
  %187 = add i64 %179, %186
  %188 = xor i64 %24, -1556992608276218209
  %189 = add i64 %157, %24
  %190 = lshr i64 %188, 32
  %191 = and i64 %188, 4294967295
  %192 = mul nuw i64 %191, %190
  %193 = xor i64 %25, -4196251135427498811
  %194 = add i64 %1, 3266489917
  %195 = add i64 %194, %70
  %196 = add i64 %195, %9
  %197 = add i64 %196, %111
  %198 = add i64 %197, %17
  %199 = add i64 %198, %152
  %200 = add i64 %199, %25
  %201 = add i64 %200, %192
  %202 = lshr i64 %193, 32
  %203 = and i64 %193, 4294967295
  %204 = mul nuw i64 %203, %202
  %205 = add i64 %189, %204
  %206 = xor i64 %26, 1723580219865931905
  %207 = add i64 %167, %26
  %208 = lshr i64 %206, 32
  %209 = and i64 %206, 4294967295
  %210 = mul nuw i64 %209, %208
  %211 = xor i64 %27, -3221803331004277491
  %212 = add i64 %3, -4417276706812531889
  %213 = add i64 %212, %80
  %214 = add i64 %213, %11
  %215 = add i64 %214, %121
  %216 = add i64 %215, %19
  %217 = add i64 %216, %162
  %218 = add i64 %217, %27
  %219 = add i64 %218, %210
  %220 = lshr i64 %211, 32
  %221 = and i64 %211, 4294967295
  %222 = mul nuw i64 %221, %220
  %223 = add i64 %207, %222
  %224 = xor i64 %28, 3143064850383918358
  %225 = add i64 %177, %28
  %226 = lshr i64 %224, 32
  %227 = and i64 %224, 4294967295
  %228 = mul nuw i64 %227, %226
  %229 = xor i64 %29, -8071399103737053674
  %230 = add i64 %5, -8796714831421723037
  %231 = add i64 %230, %90
  %232 = add i64 %231, %13
  %233 = add i64 %232, %131
  %234 = add i64 %233, %21
  %235 = add i64 %234, %172
  %236 = add i64 %235, %29
  %237 = add i64 %236, %228
  %238 = lshr i64 %229, 32
  %239 = and i64 %229, 4294967295
  %240 = mul nuw i64 %239, %238
  %241 = add i64 %225, %240
  %242 = xor i64 %30, 5030012605302946040
  %243 = add i64 %187, %30
  %244 = lshr i64 %242, 32
  %245 = and i64 %242, 4294967295
  %246 = mul nuw i64 %245, %244
  %247 = xor i64 %31, -5825401622958753077
  %248 = add i64 %7, 2870177450012600261
  %249 = add i64 %248, %100
  %250 = add i64 %249, %15
  %251 = add i64 %250, %141
  %252 = add i64 %251, %23
  %253 = add i64 %252, %182
  %254 = add i64 %253, %31
  %255 = add i64 %254, %246
  %256 = lshr i64 %247, 32
  %257 = and i64 %247, 4294967295
  %258 = mul nuw i64 %257, %256
  %259 = add i64 %243, %258
  %260 = xor i64 %201, 7914194659941938988
  %261 = xor i64 %205, -6611157965513653271
  %262 = and i64 %260, 4294967295
  %263 = and i64 %261, 4294967295
  %264 = mul nuw i64 %263, %262
  %265 = lshr i64 %260, 32
  %266 = mul nuw i64 %263, %265
  %267 = lshr i64 %261, 32
  %268 = mul nuw i64 %267, %262
  %269 = mul nuw i64 %267, %265
  %270 = lshr i64 %264, 32
  %271 = and i64 %266, 4294967295
  %272 = add nuw i64 %271, %268
  %273 = add nuw i64 %272, %270
  %274 = lshr i64 %266, 32
  %275 = lshr i64 %273, 32
  %276 = add nuw i64 %274, %269
  %277 = add nuw i64 %276, %275
  %278 = shl i64 %273, 32
  %279 = and i64 %264, 4294967295
  %280 = or disjoint i64 %278, %279
  %281 = xor i64 %280, %277
  %282 = add i64 %281, 3997421333012711168
  %283 = xor i64 %219, -1839215637059881052
  %284 = xor i64 %223, -3433288310154277810
  %285 = and i64 %283, 4294967295
  %286 = and i64 %284, 4294967295
  %287 = mul nuw i64 %286, %285
  %288 = lshr i64 %283, 32
  %289 = mul nuw i64 %286, %288
  %290 = lshr i64 %284, 32
  %291 = mul nuw i64 %290, %285
  %292 = mul nuw i64 %290, %288
  %293 = lshr i64 %287, 32
  %294 = and i64 %289, 4294967295
  %295 = add nuw i64 %294, %291
  %296 = add nuw i64 %295, %293
  %297 = lshr i64 %289, 32
  %298 = lshr i64 %296, 32
  %299 = add nuw i64 %297, %292
  %300 = add nuw i64 %299, %298
  %301 = shl i64 %296, 32
  %302 = and i64 %287, 4294967295
  %303 = or disjoint i64 %301, %302
  %304 = xor i64 %303, %300
  %305 = add i64 %282, %304
  %306 = xor i64 %237, 5046485836271438973
  %307 = xor i64 %241, -8055285457383852172
  %308 = and i64 %306, 4294967295
  %309 = and i64 %307, 4294967295
  %310 = mul nuw i64 %309, %308
  %311 = lshr i64 %306, 32
  %312 = mul nuw i64 %309, %311
  %313 = lshr i64 %307, 32
  %314 = mul nuw i64 %313, %308
  %315 = mul nuw i64 %313, %311
  %316 = lshr i64 %310, 32
  %317 = and i64 %312, 4294967295
  %318 = add nuw i64 %317, %314
  %319 = add nuw i64 %318, %316
  %320 = lshr i64 %312, 32
  %321 = lshr i64 %319, 32
  %322 = add nuw i64 %320, %315
  %323 = add nuw i64 %322, %321
  %324 = shl i64 %319, 32
  %325 = and i64 %310, 4294967295
  %326 = or disjoint i64 %324, %325
  %327 = xor i64 %326, %323
  %328 = add i64 %305, %327
  %329 = xor i64 %255, 5920048007935066598
  %330 = xor i64 %259, 7336514198459093435
  %331 = and i64 %329, 4294967295
  %332 = and i64 %330, 4294967295
  %333 = mul nuw i64 %332, %331
  %334 = lshr i64 %329, 32
  %335 = mul nuw i64 %332, %334
  %336 = lshr i64 %330, 32
  %337 = mul nuw i64 %336, %331
  %338 = mul nuw i64 %336, %334
  %339 = lshr i64 %333, 32
  %340 = and i64 %335, 4294967295
  %341 = add nuw i64 %340, %337
  %342 = add nuw i64 %341, %339
  %343 = lshr i64 %335, 32
  %344 = lshr i64 %342, 32
  %345 = add nuw i64 %343, %338
  %346 = add nuw i64 %345, %344
  %347 = shl i64 %342, 32
  %348 = and i64 %333, 4294967295
  %349 = or disjoint i64 %347, %348
  %350 = xor i64 %349, %346
  %351 = add i64 %328, %350
  %352 = lshr i64 %351, 37
  %353 = xor i64 %352, %351
  %354 = mul i64 %353, 1609587791953885689
  %355 = lshr i64 %354, 32
  %356 = xor i64 %355, %354
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %33) #3
  ret i64 %356
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+bulk-memory,+bulk-memory-opt,+call-indirect-overlong,+multivalue,+mutable-globals,+nontrapping-fptoint,+reference-types,+sign-ext,+simd128" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!2 = !{!3}
!3 = distinct !{!3, !4, !"XXH3_accumulate_scalar: argument 2"}
!4 = distinct !{!4, !"XXH3_accumulate_scalar"}
