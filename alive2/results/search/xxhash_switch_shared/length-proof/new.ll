; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_switch_shared/xxhash_switch_shared.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_switch_shared/xxhash_switch_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


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

define dso_local i64 @target_0to16_len0(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 0, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 0, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 0, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 0
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 0, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len1(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 1, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 1, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 1, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 1
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 1, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len2(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 2, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 2, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 2, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 2
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 2, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 3, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 3, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 3, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 3
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 3, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len4(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 4, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 4, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 4, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 4
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 4, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len5(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 5, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 5, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 5, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 5
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 5, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len6(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 6, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 6, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 6, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 6
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 6, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len7(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 7, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 7, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 7, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 7
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 7, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 8, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 8, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 8, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 8
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 8, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len9(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 9, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 9, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 9, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 9
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 9, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len10(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 10, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 10, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 10, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 10
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 10, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len11(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 11, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 11, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 11, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 11
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 11, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len12(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 12, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 12, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 12, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 12
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 12, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len13(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 13, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 13, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 13, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 13
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 13, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len14(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 14, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 14, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 14, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 14
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 14, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len15(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 15, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 15, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 15, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 15
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 15, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}

define dso_local i64 @target_0to16_len16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 16, 17
  tail call void @llvm.assume(i1 %5)
  switch i64 16, label %482 [
    i64 1, label %6
    i64 2, label %6
    i64 3, label %6
    i64 4, label %40
    i64 5, label %70
    i64 6, label %103
    i64 7, label %136
    i64 8, label %169
    i64 9, label %202
    i64 10, label %237
    i64 11, label %272
    i64 12, label %307
    i64 13, label %342
    i64 14, label %377
    i64 15, label %412
    i64 16, label %447
  ]

6:                                                ; preds = %4, %4, %4
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 16, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 16
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 16, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %497

40:                                               ; preds = %4
  %41 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %41)
  %42 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %42)
  %43 = trunc i64 %3 to i32
  %44 = tail call noundef i32 @llvm.bswap.i32(i32 %43)
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = xor i64 %46, %3
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = sub i64 %53, %47
  %55 = zext i32 %48 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = xor i64 %54, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %60 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %61 = xor i64 %59, %60
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, -6939452855193903323
  %64 = lshr i64 %63, 35
  %65 = add nuw nsw i64 %64, 4
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, -6939452855193903323
  %68 = lshr i64 %67, 28
  %69 = xor i64 %68, %67
  br label %497

70:                                               ; preds = %4
  %71 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %71)
  %72 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %72)
  %73 = trunc i64 %3 to i32
  %74 = tail call noundef i32 @llvm.bswap.i32(i32 %73)
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = xor i64 %76, %3
  %78 = load i32, ptr %0, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %80 = load i32, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %77
  %87 = zext i32 %80 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 49)
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 24)
  %94 = xor i64 %92, %93
  %95 = xor i64 %94, %91
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 35
  %98 = add nuw nsw i64 %97, 5
  %99 = xor i64 %98, %96
  %100 = mul i64 %99, -6939452855193903323
  %101 = lshr i64 %100, 28
  %102 = xor i64 %101, %100
  br label %497

103:                                              ; preds = %4
  %104 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %104)
  %105 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %105)
  %106 = trunc i64 %3 to i32
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = xor i64 %109, %3
  %111 = load i32, ptr %0, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %117, %115
  %119 = sub i64 %118, %110
  %120 = zext i32 %113 to i64
  %121 = zext i32 %111 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = xor i64 %119, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %497

136:                                              ; preds = %4
  %137 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %137)
  %138 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %138)
  %139 = trunc i64 %3 to i32
  %140 = tail call noundef i32 @llvm.bswap.i32(i32 %139)
  %141 = zext i32 %140 to i64
  %142 = shl nuw i64 %141, 32
  %143 = xor i64 %142, %3
  %144 = load i32, ptr %0, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %150, %148
  %152 = sub i64 %151, %143
  %153 = zext i32 %146 to i64
  %154 = zext i32 %144 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = xor i64 %152, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 49)
  %159 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 24)
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %157
  %162 = mul i64 %161, -6939452855193903323
  %163 = lshr i64 %162, 35
  %164 = add nuw nsw i64 %163, 7
  %165 = xor i64 %164, %162
  %166 = mul i64 %165, -6939452855193903323
  %167 = lshr i64 %166, 28
  %168 = xor i64 %167, %166
  br label %497

169:                                              ; preds = %4
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  %172 = trunc i64 %3 to i32
  %173 = tail call noundef i32 @llvm.bswap.i32(i32 %172)
  %174 = zext i32 %173 to i64
  %175 = shl nuw i64 %174, 32
  %176 = xor i64 %175, %3
  %177 = load i32, ptr %0, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %179 = load i32, ptr %178, align 1
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %183, %181
  %185 = sub i64 %184, %176
  %186 = zext i32 %179 to i64
  %187 = zext i32 %177 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = xor i64 %185, %189
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 49)
  %192 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 24)
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %190
  %195 = mul i64 %194, -6939452855193903323
  %196 = lshr i64 %195, 35
  %197 = add nuw nsw i64 %196, 8
  %198 = xor i64 %197, %195
  %199 = mul i64 %198, -6939452855193903323
  %200 = lshr i64 %199, 28
  %201 = xor i64 %200, %199
  br label %497

202:                                              ; preds = %4
  %203 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %203)
  %204 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %204)
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, %216
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %223 = add i64 %222, 9
  %224 = add i64 %223, %221
  %225 = zext i64 %218 to i128
  %226 = zext i64 %221 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %224, %230
  %232 = lshr i64 %231, 37
  %233 = xor i64 %232, %231
  %234 = mul i64 %233, 1609587791953885689
  %235 = lshr i64 %234, 32
  %236 = xor i64 %235, %234
  br label %497

237:                                              ; preds = %4
  %238 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %238)
  %239 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %239)
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %241 = load i64, ptr %240, align 1
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, %241
  %245 = add i64 %244, %3
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %247
  %251 = sub i64 %250, %3
  %252 = load i64, ptr %0, align 1
  %253 = xor i64 %252, %245
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %251
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %258 = add i64 %257, 10
  %259 = add i64 %258, %256
  %260 = zext i64 %253 to i128
  %261 = zext i64 %256 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %259, %265
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  br label %497

272:                                              ; preds = %4
  %273 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %273)
  %274 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %274)
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = add i64 %279, %3
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %282 = load i64, ptr %281, align 1
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, %282
  %286 = sub i64 %285, %3
  %287 = load i64, ptr %0, align 1
  %288 = xor i64 %287, %280
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %286
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %293 = add i64 %292, 11
  %294 = add i64 %293, %291
  %295 = zext i64 %288 to i128
  %296 = zext i64 %291 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %294, %300
  %302 = lshr i64 %301, 37
  %303 = xor i64 %302, %301
  %304 = mul i64 %303, 1609587791953885689
  %305 = lshr i64 %304, 32
  %306 = xor i64 %305, %304
  br label %497

307:                                              ; preds = %4
  %308 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %308)
  %309 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %311
  %315 = add i64 %314, %3
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %317 = load i64, ptr %316, align 1
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, %317
  %321 = sub i64 %320, %3
  %322 = load i64, ptr %0, align 1
  %323 = xor i64 %322, %315
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %321
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %323)
  %328 = add i64 %327, 12
  %329 = add i64 %328, %326
  %330 = zext i64 %323 to i128
  %331 = zext i64 %326 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %329, %335
  %337 = lshr i64 %336, 37
  %338 = xor i64 %337, %336
  %339 = mul i64 %338, 1609587791953885689
  %340 = lshr i64 %339, 32
  %341 = xor i64 %340, %339
  br label %497

342:                                              ; preds = %4
  %343 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %343)
  %344 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %344)
  %345 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, %346
  %350 = add i64 %349, %3
  %351 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %352 = load i64, ptr %351, align 1
  %353 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = xor i64 %354, %352
  %356 = sub i64 %355, %3
  %357 = load i64, ptr %0, align 1
  %358 = xor i64 %357, %350
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %360, %356
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %358)
  %363 = add i64 %362, 13
  %364 = add i64 %363, %361
  %365 = zext i64 %358 to i128
  %366 = zext i64 %361 to i128
  %367 = mul nuw i128 %366, %365
  %368 = lshr i128 %367, 64
  %369 = xor i128 %368, %367
  %370 = trunc i128 %369 to i64
  %371 = add i64 %364, %370
  %372 = lshr i64 %371, 37
  %373 = xor i64 %372, %371
  %374 = mul i64 %373, 1609587791953885689
  %375 = lshr i64 %374, 32
  %376 = xor i64 %375, %374
  br label %497

377:                                              ; preds = %4
  %378 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %378)
  %379 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %379)
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %383, %381
  %385 = add i64 %384, %3
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %387 = load i64, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %389, %387
  %391 = sub i64 %390, %3
  %392 = load i64, ptr %0, align 1
  %393 = xor i64 %392, %385
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, %391
  %397 = tail call noundef i64 @llvm.bswap.i64(i64 %393)
  %398 = add i64 %397, 14
  %399 = add i64 %398, %396
  %400 = zext i64 %393 to i128
  %401 = zext i64 %396 to i128
  %402 = mul nuw i128 %401, %400
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = add i64 %399, %405
  %407 = lshr i64 %406, 37
  %408 = xor i64 %407, %406
  %409 = mul i64 %408, 1609587791953885689
  %410 = lshr i64 %409, 32
  %411 = xor i64 %410, %409
  br label %497

412:                                              ; preds = %4
  %413 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %413)
  %414 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %416 = load i64, ptr %415, align 1
  %417 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %418 = load i64, ptr %417, align 1
  %419 = xor i64 %418, %416
  %420 = add i64 %419, %3
  %421 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %424 = load i64, ptr %423, align 1
  %425 = xor i64 %424, %422
  %426 = sub i64 %425, %3
  %427 = load i64, ptr %0, align 1
  %428 = xor i64 %427, %420
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %426
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %433 = add i64 %432, 15
  %434 = add i64 %433, %431
  %435 = zext i64 %428 to i128
  %436 = zext i64 %431 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %434, %440
  %442 = lshr i64 %441, 37
  %443 = xor i64 %442, %441
  %444 = mul i64 %443, 1609587791953885689
  %445 = lshr i64 %444, 32
  %446 = xor i64 %445, %444
  br label %497

447:                                              ; preds = %4
  %448 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %448)
  %449 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %449)
  %450 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %453 = load i64, ptr %452, align 1
  %454 = xor i64 %453, %451
  %455 = add i64 %454, %3
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, %457
  %461 = sub i64 %460, %3
  %462 = load i64, ptr %0, align 1
  %463 = xor i64 %462, %455
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = load i64, ptr %464, align 1
  %466 = xor i64 %465, %461
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %468 = add i64 %467, 16
  %469 = add i64 %468, %466
  %470 = zext i64 %463 to i128
  %471 = zext i64 %466 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %469, %475
  %477 = lshr i64 %476, 37
  %478 = xor i64 %477, %476
  %479 = mul i64 %478, 1609587791953885689
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  br label %497

482:                                              ; preds = %4
  %483 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %484 = load i64, ptr %483, align 1
  %485 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %486 = load i64, ptr %485, align 1
  %487 = xor i64 %484, %486
  %488 = xor i64 %487, %3
  %489 = lshr i64 %488, 33
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, -4417276706812531889
  %492 = lshr i64 %491, 29
  %493 = xor i64 %492, %491
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  br label %497

497:                                              ; preds = %482, %447, %412, %377, %342, %307, %272, %237, %202, %169, %136, %103, %70, %40, %6
  %498 = phi i64 [ %496, %482 ], [ %481, %447 ], [ %446, %412 ], [ %411, %377 ], [ %376, %342 ], [ %341, %307 ], [ %306, %272 ], [ %271, %237 ], [ %236, %202 ], [ %201, %169 ], [ %168, %136 ], [ %135, %103 ], [ %102, %70 ], [ %69, %40 ], [ %39, %6 ]
  ret i64 %498
}
