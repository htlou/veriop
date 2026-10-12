; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1cc9634/api128_len300_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1cc9634/api128_len300_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly initializes((0, 16)) %2) local_unnamed_addr #0 {
  %4 = alloca [88 x i8], align 8
  %5 = alloca [80 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %303, label %7

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
  %46 = sub i64 9097354517224871855, %1
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %46, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %48, i32 0, i32 3, i32 1)
  %49 = load <4 x i64>, ptr %0, align 1
  %50 = load <4 x i64>, ptr %4, align 8
  %51 = xor <4 x i64> %50, %49
  %52 = bitcast <4 x i64> %51 to <8 x i32>
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %54 = bitcast <8 x i32> %53 to <4 x i64>
  %55 = and <4 x i64> %51, splat (i64 4294967295)
  %56 = and <4 x i64> %54, splat (i64 4294967295)
  %57 = mul nuw <4 x i64> %56, %55
  %58 = add <4 x i64> %49, <i64 -7046029288634856825, i64 3266489917, i64 1609587929392839161, i64 -4417276706812531889>
  %59 = shufflevector <4 x i64> %58, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %60 = add <4 x i64> %59, %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %62 = load <4 x i64>, ptr %61, align 1
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %64 = load <4 x i64>, ptr %63, align 8
  %65 = xor <4 x i64> %64, %62
  %66 = bitcast <4 x i64> %65 to <8 x i32>
  %67 = shufflevector <8 x i32> %66, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %68 = bitcast <8 x i32> %67 to <4 x i64>
  %69 = and <4 x i64> %65, splat (i64 4294967295)
  %70 = and <4 x i64> %68, splat (i64 4294967295)
  %71 = mul nuw <4 x i64> %70, %69
  %72 = add <4 x i64> %62, <i64 2246822519, i64 -8796714831421723037, i64 2654435761, i64 2870177450012600261>
  %73 = shufflevector <4 x i64> %72, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %74 = add <4 x i64> %73, %71
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %76, i32 0, i32 3, i32 1)
  %77 = load <4 x i64>, ptr %75, align 1
  %78 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %79 = load <4 x i64>, ptr %78, align 8
  %80 = xor <4 x i64> %79, %77
  %81 = bitcast <4 x i64> %80 to <8 x i32>
  %82 = shufflevector <8 x i32> %81, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %83 = bitcast <8 x i32> %82 to <4 x i64>
  %84 = and <4 x i64> %80, splat (i64 4294967295)
  %85 = and <4 x i64> %83, splat (i64 4294967295)
  %86 = mul nuw <4 x i64> %85, %84
  %87 = shufflevector <4 x i64> %77, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %88 = add <4 x i64> %60, %87
  %89 = add <4 x i64> %88, %86
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %91 = load <4 x i64>, ptr %90, align 1
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %93 = load <4 x i64>, ptr %92, align 8
  %94 = xor <4 x i64> %93, %91
  %95 = bitcast <4 x i64> %94 to <8 x i32>
  %96 = shufflevector <8 x i32> %95, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %97 = bitcast <8 x i32> %96 to <4 x i64>
  %98 = and <4 x i64> %94, splat (i64 4294967295)
  %99 = and <4 x i64> %97, splat (i64 4294967295)
  %100 = mul nuw <4 x i64> %99, %98
  %101 = shufflevector <4 x i64> %91, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %102 = add <4 x i64> %74, %101
  %103 = add <4 x i64> %102, %100
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %105, i32 0, i32 3, i32 1)
  %106 = load <4 x i64>, ptr %104, align 1
  %107 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %108 = load <4 x i64>, ptr %107, align 8
  %109 = xor <4 x i64> %108, %106
  %110 = bitcast <4 x i64> %109 to <8 x i32>
  %111 = shufflevector <8 x i32> %110, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %112 = bitcast <8 x i32> %111 to <4 x i64>
  %113 = and <4 x i64> %109, splat (i64 4294967295)
  %114 = and <4 x i64> %112, splat (i64 4294967295)
  %115 = mul nuw <4 x i64> %114, %113
  %116 = shufflevector <4 x i64> %106, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %117 = add <4 x i64> %89, %116
  %118 = add <4 x i64> %117, %115
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %120 = load <4 x i64>, ptr %119, align 1
  %121 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %122 = load <4 x i64>, ptr %121, align 8
  %123 = xor <4 x i64> %122, %120
  %124 = bitcast <4 x i64> %123 to <8 x i32>
  %125 = shufflevector <8 x i32> %124, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %126 = bitcast <8 x i32> %125 to <4 x i64>
  %127 = and <4 x i64> %123, splat (i64 4294967295)
  %128 = and <4 x i64> %126, splat (i64 4294967295)
  %129 = mul nuw <4 x i64> %128, %127
  %130 = shufflevector <4 x i64> %120, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %131 = add <4 x i64> %103, %130
  %132 = add <4 x i64> %131, %129
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %134, i32 0, i32 3, i32 1)
  %135 = load <4 x i64>, ptr %133, align 1
  %136 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %137 = load <4 x i64>, ptr %136, align 8
  %138 = xor <4 x i64> %137, %135
  %139 = bitcast <4 x i64> %138 to <8 x i32>
  %140 = shufflevector <8 x i32> %139, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %141 = bitcast <8 x i32> %140 to <4 x i64>
  %142 = and <4 x i64> %138, splat (i64 4294967295)
  %143 = and <4 x i64> %141, splat (i64 4294967295)
  %144 = mul nuw <4 x i64> %143, %142
  %145 = shufflevector <4 x i64> %135, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %146 = add <4 x i64> %118, %145
  %147 = add <4 x i64> %146, %144
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %149 = load <4 x i64>, ptr %148, align 1
  %150 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %151 = load <4 x i64>, ptr %150, align 8
  %152 = xor <4 x i64> %151, %149
  %153 = bitcast <4 x i64> %152 to <8 x i32>
  %154 = shufflevector <8 x i32> %153, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %155 = bitcast <8 x i32> %154 to <4 x i64>
  %156 = and <4 x i64> %152, splat (i64 4294967295)
  %157 = and <4 x i64> %155, splat (i64 4294967295)
  %158 = mul nuw <4 x i64> %157, %156
  %159 = shufflevector <4 x i64> %149, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %160 = add <4 x i64> %132, %159
  %161 = add <4 x i64> %160, %158
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %163 = load <4 x i64>, ptr %162, align 1
  %164 = getelementptr inbounds nuw i8, ptr %5, i64 9
  %165 = load <4 x i64>, ptr %164, align 1
  %166 = xor <4 x i64> %165, %163
  %167 = bitcast <4 x i64> %166 to <8 x i32>
  %168 = shufflevector <8 x i32> %167, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %169 = bitcast <8 x i32> %168 to <4 x i64>
  %170 = and <4 x i64> %166, splat (i64 4294967295)
  %171 = and <4 x i64> %169, splat (i64 4294967295)
  %172 = mul nuw <4 x i64> %171, %170
  %173 = shufflevector <4 x i64> %163, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %174 = add <4 x i64> %147, %173
  %175 = add <4 x i64> %174, %172
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %177 = load <4 x i64>, ptr %176, align 1
  %178 = getelementptr inbounds nuw i8, ptr %5, i64 41
  %179 = load <4 x i64>, ptr %178, align 1
  %180 = xor <4 x i64> %179, %177
  %181 = bitcast <4 x i64> %180 to <8 x i32>
  %182 = shufflevector <8 x i32> %181, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %183 = bitcast <8 x i32> %182 to <4 x i64>
  %184 = and <4 x i64> %180, splat (i64 4294967295)
  %185 = and <4 x i64> %183, splat (i64 4294967295)
  %186 = mul nuw <4 x i64> %185, %184
  %187 = shufflevector <4 x i64> %177, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %188 = add <4 x i64> %161, %187
  %189 = add <4 x i64> %188, %186
  %190 = extractelement <4 x i64> %175, i64 0
  %191 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %192 = load i64, ptr %191, align 1
  %193 = xor i64 %190, %192
  %194 = extractelement <4 x i64> %175, i64 1
  %195 = bitcast <4 x i64> %108 to i256
  %196 = lshr i256 %195, 24
  %197 = trunc i256 %196 to i64
  %198 = xor i64 %194, %197
  %199 = zext i64 %193 to i128
  %200 = zext i64 %198 to i128
  %201 = mul nuw i128 %200, %199
  %202 = lshr i128 %201, 64
  %203 = xor i128 %202, %201
  %204 = trunc i128 %203 to i64
  %205 = add i64 %204, 7566781886141388340
  %206 = extractelement <4 x i64> %175, i64 2
  %207 = bitcast <4 x i64> %137 to i256
  %208 = lshr i256 %207, 24
  %209 = trunc i256 %208 to i64
  %210 = xor i64 %206, %209
  %211 = extractelement <4 x i64> %175, i64 3
  %212 = lshr i256 %207, 88
  %213 = trunc i256 %212 to i64
  %214 = xor i64 %211, %213
  %215 = zext i64 %210 to i128
  %216 = zext i64 %214 to i128
  %217 = mul nuw i128 %216, %215
  %218 = lshr i128 %217, 64
  %219 = xor i128 %218, %217
  %220 = trunc i128 %219 to i64
  %221 = add i64 %205, %220
  %222 = extractelement <4 x i64> %189, i64 0
  %223 = lshr i256 %207, 152
  %224 = trunc i256 %223 to i64
  %225 = xor i64 %222, %224
  %226 = extractelement <4 x i64> %189, i64 1
  %227 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %228 = load i64, ptr %227, align 1
  %229 = xor i64 %226, %228
  %230 = zext i64 %225 to i128
  %231 = zext i64 %229 to i128
  %232 = mul nuw i128 %231, %230
  %233 = lshr i128 %232, 64
  %234 = xor i128 %233, %232
  %235 = trunc i128 %234 to i64
  %236 = add i64 %221, %235
  %237 = extractelement <4 x i64> %189, i64 2
  %238 = bitcast <4 x i64> %151 to i256
  %239 = lshr i256 %238, 24
  %240 = trunc i256 %239 to i64
  %241 = xor i64 %237, %240
  %242 = extractelement <4 x i64> %189, i64 3
  %243 = lshr i256 %238, 88
  %244 = trunc i256 %243 to i64
  %245 = xor i64 %242, %244
  %246 = zext i64 %241 to i128
  %247 = zext i64 %245 to i128
  %248 = mul nuw i128 %247, %246
  %249 = lshr i128 %248, 64
  %250 = xor i128 %249, %248
  %251 = trunc i128 %250 to i64
  %252 = add i64 %236, %251
  %253 = lshr i64 %252, 37
  %254 = xor i64 %253, %252
  %255 = mul i64 %254, 1609587929392839161
  %256 = lshr i64 %255, 32
  %257 = xor i64 %256, %255
  %258 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %259 = load i64, ptr %258, align 1
  %260 = xor i64 %190, %259
  %261 = getelementptr inbounds nuw i8, ptr %5, i64 13
  %262 = load i64, ptr %261, align 1
  %263 = xor i64 %194, %262
  %264 = zext i64 %260 to i128
  %265 = zext i64 %263 to i128
  %266 = mul nuw i128 %265, %264
  %267 = lshr i128 %266, 64
  %268 = xor i128 %267, %266
  %269 = trunc i128 %268 to i64
  %270 = add i64 %269, -2982561263328149653
  %271 = getelementptr inbounds nuw i8, ptr %5, i64 21
  %272 = load i64, ptr %271, align 1
  %273 = xor i64 %272, %206
  %274 = getelementptr inbounds nuw i8, ptr %5, i64 29
  %275 = load i64, ptr %274, align 1
  %276 = xor i64 %275, %211
  %277 = zext i64 %273 to i128
  %278 = zext i64 %276 to i128
  %279 = mul nuw i128 %278, %277
  %280 = lshr i128 %279, 64
  %281 = xor i128 %280, %279
  %282 = trunc i128 %281 to i64
  %283 = add i64 %270, %282
  %284 = getelementptr inbounds nuw i8, ptr %5, i64 37
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %285, %222
  %287 = getelementptr inbounds nuw i8, ptr %5, i64 45
  %288 = load i64, ptr %287, align 1
  %289 = xor i64 %288, %226
  %290 = zext i64 %286 to i128
  %291 = zext i64 %289 to i128
  %292 = mul nuw i128 %291, %290
  %293 = lshr i128 %292, 64
  %294 = xor i128 %293, %292
  %295 = trunc i128 %294 to i64
  %296 = add i64 %283, %295
  %297 = getelementptr inbounds nuw i8, ptr %5, i64 53
  %298 = load i64, ptr %297, align 1
  %299 = xor i64 %298, %237
  %300 = getelementptr inbounds nuw i8, ptr %5, i64 61
  %301 = load i64, ptr %300, align 1
  %302 = xor i64 %301, %242
  br label %505

303:                                              ; preds = %3
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %304, i32 0, i32 3, i32 1)
  %305 = load <4 x i64>, ptr %0, align 1
  %306 = xor <4 x i64> %305, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %307 = bitcast <4 x i64> %306 to <8 x i32>
  %308 = shufflevector <8 x i32> %307, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %309 = bitcast <8 x i32> %308 to <4 x i64>
  %310 = and <4 x i64> %306, splat (i64 4294967295)
  %311 = and <4 x i64> %309, splat (i64 4294967295)
  %312 = mul nuw <4 x i64> %311, %310
  %313 = add <4 x i64> %305, <i64 -7046029288634856825, i64 3266489917, i64 1609587929392839161, i64 -4417276706812531889>
  %314 = shufflevector <4 x i64> %313, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %315 = add <4 x i64> %314, %312
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %317 = load <4 x i64>, ptr %316, align 1
  %318 = xor <4 x i64> %317, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %319 = bitcast <4 x i64> %318 to <8 x i32>
  %320 = shufflevector <8 x i32> %319, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %321 = bitcast <8 x i32> %320 to <4 x i64>
  %322 = and <4 x i64> %318, splat (i64 4294967295)
  %323 = and <4 x i64> %321, splat (i64 4294967295)
  %324 = mul nuw <4 x i64> %323, %322
  %325 = add <4 x i64> %317, <i64 2246822519, i64 -8796714831421723037, i64 2654435761, i64 2870177450012600261>
  %326 = shufflevector <4 x i64> %325, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %327 = add <4 x i64> %326, %324
  %328 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %329 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %329, i32 0, i32 3, i32 1)
  %330 = load <4 x i64>, ptr %328, align 1
  %331 = xor <4 x i64> %330, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %332 = bitcast <4 x i64> %331 to <8 x i32>
  %333 = shufflevector <8 x i32> %332, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %334 = bitcast <8 x i32> %333 to <4 x i64>
  %335 = and <4 x i64> %331, splat (i64 4294967295)
  %336 = and <4 x i64> %334, splat (i64 4294967295)
  %337 = mul nuw <4 x i64> %336, %335
  %338 = shufflevector <4 x i64> %330, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %339 = add <4 x i64> %315, %338
  %340 = add <4 x i64> %339, %337
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %342 = load <4 x i64>, ptr %341, align 1
  %343 = xor <4 x i64> %342, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %344 = bitcast <4 x i64> %343 to <8 x i32>
  %345 = shufflevector <8 x i32> %344, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %346 = bitcast <8 x i32> %345 to <4 x i64>
  %347 = and <4 x i64> %343, splat (i64 4294967295)
  %348 = and <4 x i64> %346, splat (i64 4294967295)
  %349 = mul nuw <4 x i64> %348, %347
  %350 = shufflevector <4 x i64> %342, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %351 = add <4 x i64> %327, %350
  %352 = add <4 x i64> %351, %349
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %354, i32 0, i32 3, i32 1)
  %355 = load <4 x i64>, ptr %353, align 1
  %356 = xor <4 x i64> %355, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %357 = bitcast <4 x i64> %356 to <8 x i32>
  %358 = shufflevector <8 x i32> %357, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %359 = bitcast <8 x i32> %358 to <4 x i64>
  %360 = and <4 x i64> %356, splat (i64 4294967295)
  %361 = and <4 x i64> %359, splat (i64 4294967295)
  %362 = mul nuw <4 x i64> %361, %360
  %363 = shufflevector <4 x i64> %355, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %364 = add <4 x i64> %340, %363
  %365 = add <4 x i64> %364, %362
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %367 = load <4 x i64>, ptr %366, align 1
  %368 = xor <4 x i64> %367, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %369 = bitcast <4 x i64> %368 to <8 x i32>
  %370 = shufflevector <8 x i32> %369, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %371 = bitcast <8 x i32> %370 to <4 x i64>
  %372 = and <4 x i64> %368, splat (i64 4294967295)
  %373 = and <4 x i64> %371, splat (i64 4294967295)
  %374 = mul nuw <4 x i64> %373, %372
  %375 = shufflevector <4 x i64> %367, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %376 = add <4 x i64> %352, %375
  %377 = add <4 x i64> %376, %374
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %379, i32 0, i32 3, i32 1)
  %380 = load <4 x i64>, ptr %378, align 1
  %381 = xor <4 x i64> %380, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %382 = bitcast <4 x i64> %381 to <8 x i32>
  %383 = shufflevector <8 x i32> %382, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %384 = bitcast <8 x i32> %383 to <4 x i64>
  %385 = and <4 x i64> %381, splat (i64 4294967295)
  %386 = and <4 x i64> %384, splat (i64 4294967295)
  %387 = mul nuw <4 x i64> %386, %385
  %388 = shufflevector <4 x i64> %380, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %389 = add <4 x i64> %365, %388
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %391 = load <4 x i64>, ptr %390, align 1
  %392 = xor <4 x i64> %391, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %393 = bitcast <4 x i64> %392 to <8 x i32>
  %394 = shufflevector <8 x i32> %393, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %395 = bitcast <8 x i32> %394 to <4 x i64>
  %396 = and <4 x i64> %392, splat (i64 4294967295)
  %397 = and <4 x i64> %395, splat (i64 4294967295)
  %398 = mul nuw <4 x i64> %397, %396
  %399 = shufflevector <4 x i64> %391, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %400 = add <4 x i64> %377, %399
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %402 = load <4 x i64>, ptr %401, align 1
  %403 = xor <4 x i64> %402, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %404 = bitcast <4 x i64> %403 to <8 x i32>
  %405 = shufflevector <8 x i32> %404, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %406 = bitcast <8 x i32> %405 to <4 x i64>
  %407 = and <4 x i64> %403, splat (i64 4294967295)
  %408 = and <4 x i64> %406, splat (i64 4294967295)
  %409 = mul nuw <4 x i64> %408, %407
  %410 = shufflevector <4 x i64> %402, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %411 = add <4 x i64> %389, %410
  %412 = add <4 x i64> %411, %387
  %413 = add <4 x i64> %412, %409
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %415 = load <4 x i64>, ptr %414, align 1
  %416 = xor <4 x i64> %415, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %417 = bitcast <4 x i64> %416 to <8 x i32>
  %418 = shufflevector <8 x i32> %417, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %419 = bitcast <8 x i32> %418 to <4 x i64>
  %420 = and <4 x i64> %416, splat (i64 4294967295)
  %421 = and <4 x i64> %419, splat (i64 4294967295)
  %422 = mul nuw <4 x i64> %421, %420
  %423 = shufflevector <4 x i64> %415, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %424 = add <4 x i64> %400, %423
  %425 = add <4 x i64> %424, %398
  %426 = add <4 x i64> %425, %422
  %427 = extractelement <4 x i64> %413, i64 0
  %428 = xor i64 %427, 7914194659941938988
  %429 = extractelement <4 x i64> %413, i64 1
  %430 = xor i64 %429, -6611157965513653271
  %431 = zext i64 %428 to i128
  %432 = zext i64 %430 to i128
  %433 = mul nuw i128 %432, %431
  %434 = lshr i128 %433, 64
  %435 = xor i128 %434, %433
  %436 = trunc i128 %435 to i64
  %437 = add i64 %436, 7566781886141388340
  %438 = extractelement <4 x i64> %413, i64 2
  %439 = xor i64 %438, -1839215637059881052
  %440 = extractelement <4 x i64> %413, i64 3
  %441 = xor i64 %440, -3433288310154277810
  %442 = zext i64 %439 to i128
  %443 = zext i64 %441 to i128
  %444 = mul nuw i128 %443, %442
  %445 = lshr i128 %444, 64
  %446 = xor i128 %445, %444
  %447 = trunc i128 %446 to i64
  %448 = add i64 %437, %447
  %449 = extractelement <4 x i64> %426, i64 0
  %450 = xor i64 %449, 5046485836271438973
  %451 = extractelement <4 x i64> %426, i64 1
  %452 = xor i64 %451, -8055285457383852172
  %453 = zext i64 %450 to i128
  %454 = zext i64 %452 to i128
  %455 = mul nuw i128 %454, %453
  %456 = lshr i128 %455, 64
  %457 = xor i128 %456, %455
  %458 = trunc i128 %457 to i64
  %459 = add i64 %448, %458
  %460 = extractelement <4 x i64> %426, i64 2
  %461 = xor i64 %460, 5920048007935066598
  %462 = extractelement <4 x i64> %426, i64 3
  %463 = xor i64 %462, 7336514198459093435
  %464 = zext i64 %461 to i128
  %465 = zext i64 %463 to i128
  %466 = mul nuw i128 %465, %464
  %467 = lshr i128 %466, 64
  %468 = xor i128 %467, %466
  %469 = trunc i128 %468 to i64
  %470 = add i64 %459, %469
  %471 = lshr i64 %470, 37
  %472 = xor i64 %471, %470
  %473 = mul i64 %472, 1609587929392839161
  %474 = lshr i64 %473, 32
  %475 = xor i64 %474, %473
  %476 = xor i64 %427, -2753530472436770380
  %477 = xor i64 %429, 3784058077962335096
  %478 = zext i64 %476 to i128
  %479 = zext i64 %477 to i128
  %480 = mul nuw i128 %479, %478
  %481 = lshr i128 %480, 64
  %482 = xor i128 %481, %480
  %483 = trunc i128 %482 to i64
  %484 = add i64 %483, -2982561263328149653
  %485 = xor i64 %438, -360392965937173549
  %486 = xor i64 %440, -5237161843349560557
  %487 = zext i64 %485 to i128
  %488 = zext i64 %486 to i128
  %489 = mul nuw i128 %488, %487
  %490 = lshr i128 %489, 64
  %491 = xor i128 %490, %489
  %492 = trunc i128 %491 to i64
  %493 = add i64 %484, %492
  %494 = xor i64 %449, 2965150961192524528
  %495 = xor i64 %451, 9032178055121889492
  %496 = zext i64 %494 to i128
  %497 = zext i64 %495 to i128
  %498 = mul nuw i128 %497, %496
  %499 = lshr i128 %498, 64
  %500 = xor i128 %499, %498
  %501 = trunc i128 %500 to i64
  %502 = add i64 %493, %501
  %503 = xor i64 %460, 8850058120466833735
  %504 = xor i64 %462, -7669846995664752176
  br label %505

505:                                              ; preds = %7, %303
  %506 = phi i64 [ %299, %7 ], [ %503, %303 ]
  %507 = phi i64 [ %302, %7 ], [ %504, %303 ]
  %508 = phi i64 [ %296, %7 ], [ %502, %303 ]
  %509 = phi i64 [ %257, %7 ], [ %475, %303 ]
  %510 = zext i64 %506 to i128
  %511 = zext i64 %507 to i128
  %512 = mul nuw i128 %511, %510
  %513 = lshr i128 %512, 64
  %514 = xor i128 %513, %512
  %515 = trunc i128 %514 to i64
  %516 = add i64 %508, %515
  %517 = lshr i64 %516, 37
  %518 = xor i64 %517, %516
  %519 = mul i64 %518, 1609587929392839161
  %520 = lshr i64 %519, 32
  %521 = xor i64 %520, %519
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5)
  store i64 %509, ptr %2, align 8
  %522 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %521, ptr %522, align 8
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
