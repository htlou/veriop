; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1cc9634/api128_len256_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1cc9634/api128_len256_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly initializes((0, 16)) %2) local_unnamed_addr #0 {
  %4 = alloca [88 x i8], align 8
  %5 = alloca [72 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %275, label %7

7:                                                ; preds = %3
  %8 = add i64 %1, -4734510112055689544
  store i64 %8, ptr %4, align 8
  %9 = sub i64 2066345149520216444, %1
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %9, ptr %10, align 8
  %11 = add i64 %1, -2623469361688619810
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %11, ptr %12, align 8
  %13 = sub i64 2262974939099578482, %1
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %13, ptr %14, align 8
  %15 = add i64 %1, 8711581037947681227
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %15, ptr %16, align 8
  %17 = sub i64 2410270004345854594, %1
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %17, ptr %18, align 8
  %19 = add i64 %1, -8204357891075471176
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %19, ptr %20, align 8
  %21 = sub i64 5487137525590930912, %1
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %21, ptr %22, align 8
  %23 = add i64 %1, -3818837453329782724
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %23, ptr %24, align 8
  %25 = sub i64 -6688317018830679928, %1
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %25, ptr %26, align 8
  %27 = add i64 %1, 5690594596133299313
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %27, ptr %28, align 8
  %29 = add i64 %1, 3556072174620004746
  store i64 %29, ptr %5, align 8
  %30 = sub i64 7238261902898274248, %1
  %31 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %30, ptr %31, align 8
  %32 = add i64 %1, -4329134394285701654
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %32, ptr %33, align 8
  %34 = sub i64 -1485321483350670907, %1
  %35 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %34, ptr %35, align 8
  %36 = add i64 %1, 5321830579834785047
  %37 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %36, ptr %37, align 8
  %38 = sub i64 -7032137544937171245, %1
  %39 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %38, ptr %39, align 8
  %40 = add i64 %1, -242834301215959509
  %41 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %40, ptr %41, align 8
  %42 = sub i64 -3588858202114426737, %1
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %42, ptr %43, align 8
  %44 = add i64 %1, 2883454493032893253
  %45 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %44, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %46, i32 0, i32 3, i32 1)
  %47 = load <4 x i64>, ptr %0, align 1
  %48 = load <4 x i64>, ptr %4, align 8
  %49 = xor <4 x i64> %48, %47
  %50 = bitcast <4 x i64> %49 to <8 x i32>
  %51 = shufflevector <8 x i32> %50, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %52 = bitcast <8 x i32> %51 to <4 x i64>
  %53 = and <4 x i64> %49, splat (i64 4294967295)
  %54 = and <4 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, %53
  %56 = add <4 x i64> %47, <i64 -7046029288634856825, i64 3266489917, i64 1609587929392839161, i64 -4417276706812531889>
  %57 = shufflevector <4 x i64> %56, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %58 = add <4 x i64> %57, %55
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %60 = load <4 x i64>, ptr %59, align 1
  %61 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %62 = load <4 x i64>, ptr %61, align 8
  %63 = xor <4 x i64> %62, %60
  %64 = bitcast <4 x i64> %63 to <8 x i32>
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %66 = bitcast <8 x i32> %65 to <4 x i64>
  %67 = and <4 x i64> %63, splat (i64 4294967295)
  %68 = and <4 x i64> %66, splat (i64 4294967295)
  %69 = mul nuw <4 x i64> %68, %67
  %70 = add <4 x i64> %60, <i64 2246822519, i64 -8796714831421723037, i64 2654435761, i64 2870177450012600261>
  %71 = shufflevector <4 x i64> %70, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %72 = add <4 x i64> %71, %69
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %74, i32 0, i32 3, i32 1)
  %75 = load <4 x i64>, ptr %73, align 1
  %76 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %77 = load <4 x i64>, ptr %76, align 8
  %78 = xor <4 x i64> %77, %75
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = shufflevector <4 x i64> %75, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %86 = add <4 x i64> %58, %85
  %87 = add <4 x i64> %86, %84
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %89 = load <4 x i64>, ptr %88, align 1
  %90 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %91 = load <4 x i64>, ptr %90, align 8
  %92 = xor <4 x i64> %91, %89
  %93 = bitcast <4 x i64> %92 to <8 x i32>
  %94 = shufflevector <8 x i32> %93, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %95 = bitcast <8 x i32> %94 to <4 x i64>
  %96 = and <4 x i64> %92, splat (i64 4294967295)
  %97 = and <4 x i64> %95, splat (i64 4294967295)
  %98 = mul nuw <4 x i64> %97, %96
  %99 = shufflevector <4 x i64> %89, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %100 = add <4 x i64> %72, %99
  %101 = add <4 x i64> %100, %98
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %103, i32 0, i32 3, i32 1)
  %104 = load <4 x i64>, ptr %102, align 1
  %105 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %106 = load <4 x i64>, ptr %105, align 8
  %107 = xor <4 x i64> %106, %104
  %108 = bitcast <4 x i64> %107 to <8 x i32>
  %109 = shufflevector <8 x i32> %108, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %110 = bitcast <8 x i32> %109 to <4 x i64>
  %111 = and <4 x i64> %107, splat (i64 4294967295)
  %112 = and <4 x i64> %110, splat (i64 4294967295)
  %113 = mul nuw <4 x i64> %112, %111
  %114 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %115 = add <4 x i64> %87, %114
  %116 = add <4 x i64> %115, %113
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %118 = load <4 x i64>, ptr %117, align 1
  %119 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %120 = load <4 x i64>, ptr %119, align 8
  %121 = xor <4 x i64> %120, %118
  %122 = bitcast <4 x i64> %121 to <8 x i32>
  %123 = shufflevector <8 x i32> %122, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %124 = bitcast <8 x i32> %123 to <4 x i64>
  %125 = and <4 x i64> %121, splat (i64 4294967295)
  %126 = and <4 x i64> %124, splat (i64 4294967295)
  %127 = mul nuw <4 x i64> %126, %125
  %128 = shufflevector <4 x i64> %118, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %129 = add <4 x i64> %101, %128
  %130 = add <4 x i64> %129, %127
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %132, i32 0, i32 3, i32 1)
  %133 = load <4 x i64>, ptr %131, align 1
  %134 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %135 = load <4 x i64>, ptr %134, align 8
  %136 = xor <4 x i64> %135, %133
  %137 = bitcast <4 x i64> %136 to <8 x i32>
  %138 = shufflevector <8 x i32> %137, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %139 = bitcast <8 x i32> %138 to <4 x i64>
  %140 = and <4 x i64> %136, splat (i64 4294967295)
  %141 = and <4 x i64> %139, splat (i64 4294967295)
  %142 = mul nuw <4 x i64> %141, %140
  %143 = shufflevector <4 x i64> %133, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %144 = add <4 x i64> %116, %143
  %145 = add <4 x i64> %144, %142
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %147 = load <4 x i64>, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %149 = load <4 x i64>, ptr %148, align 8
  %150 = xor <4 x i64> %149, %147
  %151 = bitcast <4 x i64> %150 to <8 x i32>
  %152 = shufflevector <8 x i32> %151, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %153 = bitcast <8 x i32> %152 to <4 x i64>
  %154 = and <4 x i64> %150, splat (i64 4294967295)
  %155 = and <4 x i64> %153, splat (i64 4294967295)
  %156 = mul nuw <4 x i64> %155, %154
  %157 = shufflevector <4 x i64> %147, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %158 = add <4 x i64> %130, %157
  %159 = add <4 x i64> %158, %156
  %160 = extractelement <4 x i64> %145, i64 0
  %161 = bitcast <4 x i64> %77 to i256
  %162 = lshr i256 %161, 24
  %163 = trunc i256 %162 to i64
  %164 = xor i64 %160, %163
  %165 = extractelement <4 x i64> %145, i64 1
  %166 = bitcast <4 x i64> %106 to i256
  %167 = lshr i256 %166, 24
  %168 = trunc i256 %167 to i64
  %169 = xor i64 %165, %168
  %170 = zext i64 %164 to i128
  %171 = zext i64 %169 to i128
  %172 = mul nuw i128 %171, %170
  %173 = lshr i128 %172, 64
  %174 = xor i128 %173, %172
  %175 = trunc i128 %174 to i64
  %176 = add i64 %175, 3997421333012711168
  %177 = extractelement <4 x i64> %145, i64 2
  %178 = bitcast <4 x i64> %135 to i256
  %179 = lshr i256 %178, 24
  %180 = trunc i256 %179 to i64
  %181 = xor i64 %177, %180
  %182 = extractelement <4 x i64> %145, i64 3
  %183 = lshr i256 %178, 88
  %184 = trunc i256 %183 to i64
  %185 = xor i64 %182, %184
  %186 = zext i64 %181 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %176, %191
  %193 = extractelement <4 x i64> %159, i64 0
  %194 = lshr i256 %178, 152
  %195 = trunc i256 %194 to i64
  %196 = xor i64 %193, %195
  %197 = extractelement <4 x i64> %159, i64 1
  %198 = bitcast <4 x i64> %120 to i256
  %199 = lshr i256 %198, 24
  %200 = trunc i256 %199 to i64
  %201 = xor i64 %197, %200
  %202 = zext i64 %196 to i128
  %203 = zext i64 %201 to i128
  %204 = mul nuw i128 %203, %202
  %205 = lshr i128 %204, 64
  %206 = xor i128 %205, %204
  %207 = trunc i128 %206 to i64
  %208 = add i64 %192, %207
  %209 = extractelement <4 x i64> %159, i64 2
  %210 = bitcast <4 x i64> %149 to i256
  %211 = lshr i256 %210, 24
  %212 = trunc i256 %211 to i64
  %213 = xor i64 %209, %212
  %214 = extractelement <4 x i64> %159, i64 3
  %215 = lshr i256 %210, 88
  %216 = trunc i256 %215 to i64
  %217 = xor i64 %214, %216
  %218 = zext i64 %213 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %208, %223
  %225 = lshr i64 %224, 37
  %226 = xor i64 %225, %224
  %227 = mul i64 %226, 1609587929392839161
  %228 = lshr i64 %227, 32
  %229 = xor i64 %228, %227
  %230 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %231 = load i64, ptr %230, align 1
  %232 = xor i64 %160, %231
  %233 = getelementptr inbounds nuw i8, ptr %5, i64 13
  %234 = load i64, ptr %233, align 1
  %235 = xor i64 %165, %234
  %236 = zext i64 %232 to i128
  %237 = zext i64 %235 to i128
  %238 = mul nuw i128 %237, %236
  %239 = lshr i128 %238, 64
  %240 = xor i128 %239, %238
  %241 = trunc i128 %240 to i64
  %242 = add i64 %241, 5571448447725515007
  %243 = getelementptr inbounds nuw i8, ptr %5, i64 21
  %244 = load i64, ptr %243, align 1
  %245 = xor i64 %177, %244
  %246 = getelementptr inbounds nuw i8, ptr %5, i64 29
  %247 = load i64, ptr %246, align 1
  %248 = xor i64 %182, %247
  %249 = zext i64 %245 to i128
  %250 = zext i64 %248 to i128
  %251 = mul nuw i128 %250, %249
  %252 = lshr i128 %251, 64
  %253 = xor i128 %252, %251
  %254 = trunc i128 %253 to i64
  %255 = add i64 %242, %254
  %256 = getelementptr inbounds nuw i8, ptr %5, i64 37
  %257 = load i64, ptr %256, align 1
  %258 = xor i64 %193, %257
  %259 = getelementptr inbounds nuw i8, ptr %5, i64 45
  %260 = load i64, ptr %259, align 1
  %261 = xor i64 %197, %260
  %262 = zext i64 %258 to i128
  %263 = zext i64 %261 to i128
  %264 = mul nuw i128 %263, %262
  %265 = lshr i128 %264, 64
  %266 = xor i128 %265, %264
  %267 = trunc i128 %266 to i64
  %268 = add i64 %255, %267
  %269 = getelementptr inbounds nuw i8, ptr %5, i64 53
  %270 = load i64, ptr %269, align 1
  %271 = xor i64 %209, %270
  %272 = getelementptr inbounds nuw i8, ptr %5, i64 61
  %273 = load i64, ptr %272, align 1
  %274 = xor i64 %273, %214
  br label %453

275:                                              ; preds = %3
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %276, i32 0, i32 3, i32 1)
  %277 = load <4 x i64>, ptr %0, align 1
  %278 = xor <4 x i64> %277, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %279 = bitcast <4 x i64> %278 to <8 x i32>
  %280 = shufflevector <8 x i32> %279, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %281 = bitcast <8 x i32> %280 to <4 x i64>
  %282 = and <4 x i64> %278, splat (i64 4294967295)
  %283 = and <4 x i64> %281, splat (i64 4294967295)
  %284 = mul nuw <4 x i64> %283, %282
  %285 = add <4 x i64> %277, <i64 -7046029288634856825, i64 3266489917, i64 1609587929392839161, i64 -4417276706812531889>
  %286 = shufflevector <4 x i64> %285, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %287 = add <4 x i64> %286, %284
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %289 = load <4 x i64>, ptr %288, align 1
  %290 = xor <4 x i64> %289, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %291 = bitcast <4 x i64> %290 to <8 x i32>
  %292 = shufflevector <8 x i32> %291, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %293 = bitcast <8 x i32> %292 to <4 x i64>
  %294 = and <4 x i64> %290, splat (i64 4294967295)
  %295 = and <4 x i64> %293, splat (i64 4294967295)
  %296 = mul nuw <4 x i64> %295, %294
  %297 = add <4 x i64> %289, <i64 2246822519, i64 -8796714831421723037, i64 2654435761, i64 2870177450012600261>
  %298 = shufflevector <4 x i64> %297, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %299 = add <4 x i64> %298, %296
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %301 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %301, i32 0, i32 3, i32 1)
  %302 = load <4 x i64>, ptr %300, align 1
  %303 = xor <4 x i64> %302, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %304 = bitcast <4 x i64> %303 to <8 x i32>
  %305 = shufflevector <8 x i32> %304, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %306 = bitcast <8 x i32> %305 to <4 x i64>
  %307 = and <4 x i64> %303, splat (i64 4294967295)
  %308 = and <4 x i64> %306, splat (i64 4294967295)
  %309 = mul nuw <4 x i64> %308, %307
  %310 = shufflevector <4 x i64> %302, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %311 = add <4 x i64> %287, %310
  %312 = add <4 x i64> %311, %309
  %313 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %314 = load <4 x i64>, ptr %313, align 1
  %315 = xor <4 x i64> %314, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %316 = bitcast <4 x i64> %315 to <8 x i32>
  %317 = shufflevector <8 x i32> %316, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %318 = bitcast <8 x i32> %317 to <4 x i64>
  %319 = and <4 x i64> %315, splat (i64 4294967295)
  %320 = and <4 x i64> %318, splat (i64 4294967295)
  %321 = mul nuw <4 x i64> %320, %319
  %322 = shufflevector <4 x i64> %314, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %323 = add <4 x i64> %299, %322
  %324 = add <4 x i64> %323, %321
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %326 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %326, i32 0, i32 3, i32 1)
  %327 = load <4 x i64>, ptr %325, align 1
  %328 = xor <4 x i64> %327, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %329 = bitcast <4 x i64> %328 to <8 x i32>
  %330 = shufflevector <8 x i32> %329, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %331 = bitcast <8 x i32> %330 to <4 x i64>
  %332 = and <4 x i64> %328, splat (i64 4294967295)
  %333 = and <4 x i64> %331, splat (i64 4294967295)
  %334 = mul nuw <4 x i64> %333, %332
  %335 = shufflevector <4 x i64> %327, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %336 = add <4 x i64> %312, %335
  %337 = add <4 x i64> %336, %334
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %339 = load <4 x i64>, ptr %338, align 1
  %340 = xor <4 x i64> %339, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %341 = bitcast <4 x i64> %340 to <8 x i32>
  %342 = shufflevector <8 x i32> %341, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %343 = bitcast <8 x i32> %342 to <4 x i64>
  %344 = and <4 x i64> %340, splat (i64 4294967295)
  %345 = and <4 x i64> %343, splat (i64 4294967295)
  %346 = mul nuw <4 x i64> %345, %344
  %347 = shufflevector <4 x i64> %339, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %348 = add <4 x i64> %324, %347
  %349 = add <4 x i64> %348, %346
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %351 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %351, i32 0, i32 3, i32 1)
  %352 = load <4 x i64>, ptr %350, align 1
  %353 = xor <4 x i64> %352, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %354 = bitcast <4 x i64> %353 to <8 x i32>
  %355 = shufflevector <8 x i32> %354, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %356 = bitcast <8 x i32> %355 to <4 x i64>
  %357 = and <4 x i64> %353, splat (i64 4294967295)
  %358 = and <4 x i64> %356, splat (i64 4294967295)
  %359 = mul nuw <4 x i64> %358, %357
  %360 = shufflevector <4 x i64> %352, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %361 = add <4 x i64> %337, %360
  %362 = add <4 x i64> %361, %359
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %364 = load <4 x i64>, ptr %363, align 1
  %365 = xor <4 x i64> %364, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %366 = bitcast <4 x i64> %365 to <8 x i32>
  %367 = shufflevector <8 x i32> %366, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %368 = bitcast <8 x i32> %367 to <4 x i64>
  %369 = and <4 x i64> %365, splat (i64 4294967295)
  %370 = and <4 x i64> %368, splat (i64 4294967295)
  %371 = mul nuw <4 x i64> %370, %369
  %372 = shufflevector <4 x i64> %364, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %373 = add <4 x i64> %349, %372
  %374 = add <4 x i64> %373, %371
  %375 = extractelement <4 x i64> %362, i64 0
  %376 = xor i64 %375, 7914194659941938988
  %377 = extractelement <4 x i64> %362, i64 1
  %378 = xor i64 %377, -6611157965513653271
  %379 = zext i64 %376 to i128
  %380 = zext i64 %378 to i128
  %381 = mul nuw i128 %380, %379
  %382 = lshr i128 %381, 64
  %383 = xor i128 %382, %381
  %384 = trunc i128 %383 to i64
  %385 = add i64 %384, 3997421333012711168
  %386 = extractelement <4 x i64> %362, i64 2
  %387 = xor i64 %386, -1839215637059881052
  %388 = extractelement <4 x i64> %362, i64 3
  %389 = xor i64 %388, -3433288310154277810
  %390 = zext i64 %387 to i128
  %391 = zext i64 %389 to i128
  %392 = mul nuw i128 %391, %390
  %393 = lshr i128 %392, 64
  %394 = xor i128 %393, %392
  %395 = trunc i128 %394 to i64
  %396 = add i64 %385, %395
  %397 = extractelement <4 x i64> %374, i64 0
  %398 = xor i64 %397, 5046485836271438973
  %399 = extractelement <4 x i64> %374, i64 1
  %400 = xor i64 %399, -8055285457383852172
  %401 = zext i64 %398 to i128
  %402 = zext i64 %400 to i128
  %403 = mul nuw i128 %402, %401
  %404 = lshr i128 %403, 64
  %405 = xor i128 %404, %403
  %406 = trunc i128 %405 to i64
  %407 = add i64 %396, %406
  %408 = extractelement <4 x i64> %374, i64 2
  %409 = xor i64 %408, 5920048007935066598
  %410 = extractelement <4 x i64> %374, i64 3
  %411 = xor i64 %410, 7336514198459093435
  %412 = zext i64 %409 to i128
  %413 = zext i64 %411 to i128
  %414 = mul nuw i128 %413, %412
  %415 = lshr i128 %414, 64
  %416 = xor i128 %415, %414
  %417 = trunc i128 %416 to i64
  %418 = add i64 %407, %417
  %419 = lshr i64 %418, 37
  %420 = xor i64 %419, %418
  %421 = mul i64 %420, 1609587929392839161
  %422 = lshr i64 %421, 32
  %423 = xor i64 %422, %421
  %424 = xor i64 %375, -2753530472436770380
  %425 = xor i64 %377, 3784058077962335096
  %426 = zext i64 %424 to i128
  %427 = zext i64 %425 to i128
  %428 = mul nuw i128 %427, %426
  %429 = lshr i128 %428, 64
  %430 = xor i128 %429, %428
  %431 = trunc i128 %430 to i64
  %432 = add i64 %431, 5571448447725515007
  %433 = xor i64 %386, -360392965937173549
  %434 = xor i64 %388, -5237161843349560557
  %435 = zext i64 %433 to i128
  %436 = zext i64 %434 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %432, %440
  %442 = xor i64 %397, 2965150961192524528
  %443 = xor i64 %399, 9032178055121889492
  %444 = zext i64 %442 to i128
  %445 = zext i64 %443 to i128
  %446 = mul nuw i128 %445, %444
  %447 = lshr i128 %446, 64
  %448 = xor i128 %447, %446
  %449 = trunc i128 %448 to i64
  %450 = add i64 %441, %449
  %451 = xor i64 %408, 8850058120466833735
  %452 = xor i64 %410, -7669846995664752176
  br label %453

453:                                              ; preds = %7, %275
  %454 = phi i64 [ %271, %7 ], [ %451, %275 ]
  %455 = phi i64 [ %274, %7 ], [ %452, %275 ]
  %456 = phi i64 [ %268, %7 ], [ %450, %275 ]
  %457 = phi i64 [ %229, %7 ], [ %423, %275 ]
  %458 = zext i64 %454 to i128
  %459 = zext i64 %455 to i128
  %460 = mul nuw i128 %459, %458
  %461 = lshr i128 %460, 64
  %462 = xor i128 %461, %460
  %463 = trunc i128 %462 to i64
  %464 = add i64 %456, %463
  %465 = lshr i64 %464, 37
  %466 = xor i64 %465, %464
  %467 = mul i64 %466, 1609587929392839161
  %468 = lshr i64 %467, 32
  %469 = xor i64 %468, %467
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5)
  store i64 %457, ptr %2, align 8
  %470 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %469, ptr %470, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
