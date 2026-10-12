; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/028c0fd/api64_len256_ppc64be/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/028c0fd/api64_len256_ppc64be/wrapper.c"
target datalayout = "E-m:e-Fi64-i64:64-i128:128-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64-unknown-linux-gnu"

@kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #3
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %77, label %5

5:                                                ; preds = %2
  %6 = add i64 %1, -4734510112055689544
  %7 = tail call noundef i64 @llvm.bswap.i64(i64 %6)
  store i64 %7, ptr %3, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = sub i64 2066345149520216444, %1
  %10 = tail call noundef i64 @llvm.bswap.i64(i64 %9)
  store i64 %10, ptr %8, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %12 = add i64 %1, -2623469361688619810
  %13 = tail call noundef i64 @llvm.bswap.i64(i64 %12)
  store i64 %13, ptr %11, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %15 = sub i64 2262974939099578482, %1
  %16 = tail call noundef i64 @llvm.bswap.i64(i64 %15)
  store i64 %16, ptr %14, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %18 = add i64 %1, 8711581037947681227
  %19 = tail call noundef i64 @llvm.bswap.i64(i64 %18)
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %21 = sub i64 2410270004345854594, %1
  %22 = tail call noundef i64 @llvm.bswap.i64(i64 %21)
  store i64 %22, ptr %20, align 8
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %24 = add i64 %1, -8204357891075471176
  %25 = tail call noundef i64 @llvm.bswap.i64(i64 %24)
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %27 = sub i64 5487137525590930912, %1
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %27)
  store i64 %28, ptr %26, align 8
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %30 = add i64 %1, -3818837453329782724
  %31 = tail call noundef i64 @llvm.bswap.i64(i64 %30)
  store i64 %31, ptr %29, align 8
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %33 = sub i64 -6688317018830679928, %1
  %34 = tail call noundef i64 @llvm.bswap.i64(i64 %33)
  store i64 %34, ptr %32, align 8
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %36 = add i64 %1, 5690594596133299313
  %37 = tail call noundef i64 @llvm.bswap.i64(i64 %36)
  store i64 %37, ptr %35, align 8
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %39 = sub i64 -2833645246901970632, %1
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  store i64 %40, ptr %38, align 8
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %42 = add i64 %1, 4554437623014685352
  %43 = tail call noundef i64 @llvm.bswap.i64(i64 %42)
  store i64 %43, ptr %41, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %45 = sub i64 2111919702937427193, %1
  %46 = tail call noundef i64 @llvm.bswap.i64(i64 %45)
  store i64 %46, ptr %44, align 8
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %48 = add i64 %1, 3556072174620004746
  %49 = tail call noundef i64 @llvm.bswap.i64(i64 %48)
  store i64 %49, ptr %47, align 8
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %51 = sub i64 7238261902898274248, %1
  %52 = tail call noundef i64 @llvm.bswap.i64(i64 %51)
  store i64 %52, ptr %50, align 8
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %54 = add i64 %1, -4329134394285701654
  %55 = tail call noundef i64 @llvm.bswap.i64(i64 %54)
  store i64 %55, ptr %53, align 8
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %57 = sub i64 -1485321483350670907, %1
  %58 = tail call noundef i64 @llvm.bswap.i64(i64 %57)
  store i64 %58, ptr %56, align 8
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %60 = add i64 %1, 5321830579834785047
  %61 = tail call noundef i64 @llvm.bswap.i64(i64 %60)
  store i64 %61, ptr %59, align 8
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %63 = sub i64 -7032137544937171245, %1
  %64 = tail call noundef i64 @llvm.bswap.i64(i64 %63)
  store i64 %64, ptr %62, align 8
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %66 = add i64 %1, -242834301215959509
  %67 = tail call noundef i64 @llvm.bswap.i64(i64 %66)
  store i64 %67, ptr %65, align 8
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %69 = sub i64 -3588858202114426737, %1
  %70 = tail call noundef i64 @llvm.bswap.i64(i64 %69)
  store i64 %70, ptr %68, align 8
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %72 = add i64 %1, 2883454493032893253
  %73 = tail call noundef i64 @llvm.bswap.i64(i64 %72)
  store i64 %73, ptr %71, align 8
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %75 = sub i64 9097354517224871855, %1
  %76 = tail call noundef i64 @llvm.bswap.i64(i64 %75)
  store i64 %76, ptr %74, align 8
  br label %217

77:                                               ; preds = %2, %77
  %78 = phi i64 [ %184, %77 ], [ 2654435761, %2 ]
  %79 = phi i64 [ %172, %77 ], [ 2870177450012600261, %2 ]
  %80 = phi i64 [ %100, %77 ], [ 3266489917, %2 ]
  %81 = phi i64 [ %160, %77 ], [ 2246822519, %2 ]
  %82 = phi i64 [ %148, %77 ], [ -8796714831421723037, %2 ]
  %83 = phi i64 [ %136, %77 ], [ 1609587929392839161, %2 ]
  %84 = phi i64 [ %124, %77 ], [ -4417276706812531889, %2 ]
  %85 = phi i64 [ %112, %77 ], [ -7046029288634856825, %2 ]
  %86 = phi i64 [ %185, %77 ], [ 0, %2 ]
  %87 = shl nuw nsw i64 %86, 6
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = shl nuw nsw i64 %86, 3
  %90 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %89
  %91 = load i64, ptr %88, align 1
  %92 = tail call noundef i64 @llvm.bswap.i64(i64 %91)
  %93 = load i64, ptr %90, align 8
  %94 = tail call noundef i64 @llvm.bswap.i64(i64 %93)
  %95 = xor i64 %94, %92
  %96 = add i64 %92, %80
  %97 = and i64 %95, 4294967295
  %98 = lshr i64 %95, 32
  %99 = mul nuw i64 %97, %98
  %100 = add i64 %96, %99
  %101 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %102 = load i64, ptr %101, align 1
  %103 = tail call noundef i64 @llvm.bswap.i64(i64 %102)
  %104 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %105 = load i64, ptr %104, align 8
  %106 = tail call noundef i64 @llvm.bswap.i64(i64 %105)
  %107 = xor i64 %106, %103
  %108 = add i64 %103, %85
  %109 = and i64 %107, 4294967295
  %110 = lshr i64 %107, 32
  %111 = mul nuw i64 %109, %110
  %112 = add i64 %108, %111
  %113 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %114 = load i64, ptr %113, align 1
  %115 = tail call noundef i64 @llvm.bswap.i64(i64 %114)
  %116 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %117 = load i64, ptr %116, align 8
  %118 = tail call noundef i64 @llvm.bswap.i64(i64 %117)
  %119 = xor i64 %118, %115
  %120 = add i64 %115, %84
  %121 = and i64 %119, 4294967295
  %122 = lshr i64 %119, 32
  %123 = mul nuw i64 %121, %122
  %124 = add i64 %120, %123
  %125 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %126 = load i64, ptr %125, align 1
  %127 = tail call noundef i64 @llvm.bswap.i64(i64 %126)
  %128 = getelementptr inbounds nuw i8, ptr %90, i64 24
  %129 = load i64, ptr %128, align 8
  %130 = tail call noundef i64 @llvm.bswap.i64(i64 %129)
  %131 = xor i64 %130, %127
  %132 = add i64 %127, %83
  %133 = and i64 %131, 4294967295
  %134 = lshr i64 %131, 32
  %135 = mul nuw i64 %133, %134
  %136 = add i64 %132, %135
  %137 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %138 = load i64, ptr %137, align 1
  %139 = tail call noundef i64 @llvm.bswap.i64(i64 %138)
  %140 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %141 = load i64, ptr %140, align 8
  %142 = tail call noundef i64 @llvm.bswap.i64(i64 %141)
  %143 = xor i64 %142, %139
  %144 = add i64 %139, %82
  %145 = and i64 %143, 4294967295
  %146 = lshr i64 %143, 32
  %147 = mul nuw i64 %145, %146
  %148 = add i64 %144, %147
  %149 = getelementptr inbounds nuw i8, ptr %88, i64 40
  %150 = load i64, ptr %149, align 1
  %151 = tail call noundef i64 @llvm.bswap.i64(i64 %150)
  %152 = getelementptr inbounds nuw i8, ptr %90, i64 40
  %153 = load i64, ptr %152, align 8
  %154 = tail call noundef i64 @llvm.bswap.i64(i64 %153)
  %155 = xor i64 %154, %151
  %156 = add i64 %151, %81
  %157 = and i64 %155, 4294967295
  %158 = lshr i64 %155, 32
  %159 = mul nuw i64 %157, %158
  %160 = add i64 %156, %159
  %161 = getelementptr inbounds nuw i8, ptr %88, i64 48
  %162 = load i64, ptr %161, align 1
  %163 = tail call noundef i64 @llvm.bswap.i64(i64 %162)
  %164 = getelementptr inbounds nuw i8, ptr %90, i64 48
  %165 = load i64, ptr %164, align 8
  %166 = tail call noundef i64 @llvm.bswap.i64(i64 %165)
  %167 = xor i64 %166, %163
  %168 = add i64 %163, %79
  %169 = and i64 %167, 4294967295
  %170 = lshr i64 %167, 32
  %171 = mul nuw i64 %169, %170
  %172 = add i64 %168, %171
  %173 = getelementptr inbounds nuw i8, ptr %88, i64 56
  %174 = load i64, ptr %173, align 1
  %175 = tail call noundef i64 @llvm.bswap.i64(i64 %174)
  %176 = getelementptr inbounds nuw i8, ptr %90, i64 56
  %177 = load i64, ptr %176, align 8
  %178 = tail call noundef i64 @llvm.bswap.i64(i64 %177)
  %179 = xor i64 %178, %175
  %180 = add i64 %175, %78
  %181 = and i64 %179, 4294967295
  %182 = lshr i64 %179, 32
  %183 = mul nuw i64 %181, %182
  %184 = add i64 %180, %183
  %185 = add nuw nsw i64 %86, 1
  %186 = icmp eq i64 %185, 4
  br i1 %186, label %187, label %77

187:                                              ; preds = %77
  %188 = xor i64 %100, 7914194659941938988
  %189 = xor i64 %112, -6611157965513653271
  %190 = zext i64 %188 to i128
  %191 = zext i64 %189 to i128
  %192 = mul nuw i128 %191, %190
  %193 = lshr i128 %192, 64
  %194 = xor i128 %193, %192
  %195 = trunc i128 %194 to i64
  %196 = add i64 %195, 3997421333012711168
  %197 = xor i64 %124, -1839215637059881052
  %198 = xor i64 %136, -3433288310154277810
  %199 = zext i64 %197 to i128
  %200 = zext i64 %198 to i128
  %201 = mul nuw i128 %200, %199
  %202 = lshr i128 %201, 64
  %203 = xor i128 %202, %201
  %204 = trunc i128 %203 to i64
  %205 = add i64 %196, %204
  %206 = xor i64 %148, 5046485836271438973
  %207 = xor i64 %160, -8055285457383852172
  %208 = zext i64 %206 to i128
  %209 = zext i64 %207 to i128
  %210 = mul nuw i128 %209, %208
  %211 = lshr i128 %210, 64
  %212 = xor i128 %211, %210
  %213 = trunc i128 %212 to i64
  %214 = add i64 %205, %213
  %215 = xor i64 %172, 5920048007935066598
  %216 = xor i64 %184, 7336514198459093435
  br label %381

217:                                              ; preds = %217, %5
  %218 = phi i64 [ %324, %217 ], [ 2654435761, %5 ]
  %219 = phi i64 [ %312, %217 ], [ 2870177450012600261, %5 ]
  %220 = phi i64 [ %240, %217 ], [ 3266489917, %5 ]
  %221 = phi i64 [ %300, %217 ], [ 2246822519, %5 ]
  %222 = phi i64 [ %288, %217 ], [ -8796714831421723037, %5 ]
  %223 = phi i64 [ %276, %217 ], [ 1609587929392839161, %5 ]
  %224 = phi i64 [ %264, %217 ], [ -4417276706812531889, %5 ]
  %225 = phi i64 [ %252, %217 ], [ -7046029288634856825, %5 ]
  %226 = phi i64 [ %325, %217 ], [ 0, %5 ]
  %227 = shl nuw nsw i64 %226, 6
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 %227
  %229 = shl nuw nsw i64 %226, 3
  %230 = getelementptr inbounds nuw i8, ptr %3, i64 %229
  %231 = load i64, ptr %228, align 1
  %232 = tail call noundef i64 @llvm.bswap.i64(i64 %231)
  %233 = load i64, ptr %230, align 8
  %234 = tail call noundef i64 @llvm.bswap.i64(i64 %233)
  %235 = xor i64 %234, %232
  %236 = add i64 %232, %220
  %237 = and i64 %235, 4294967295
  %238 = lshr i64 %235, 32
  %239 = mul nuw i64 %237, %238
  %240 = add i64 %236, %239
  %241 = getelementptr inbounds nuw i8, ptr %228, i64 8
  %242 = load i64, ptr %241, align 1
  %243 = tail call noundef i64 @llvm.bswap.i64(i64 %242)
  %244 = getelementptr inbounds nuw i8, ptr %230, i64 8
  %245 = load i64, ptr %244, align 8
  %246 = tail call noundef i64 @llvm.bswap.i64(i64 %245)
  %247 = xor i64 %246, %243
  %248 = add i64 %243, %225
  %249 = and i64 %247, 4294967295
  %250 = lshr i64 %247, 32
  %251 = mul nuw i64 %249, %250
  %252 = add i64 %248, %251
  %253 = getelementptr inbounds nuw i8, ptr %228, i64 16
  %254 = load i64, ptr %253, align 1
  %255 = tail call noundef i64 @llvm.bswap.i64(i64 %254)
  %256 = getelementptr inbounds nuw i8, ptr %230, i64 16
  %257 = load i64, ptr %256, align 8
  %258 = tail call noundef i64 @llvm.bswap.i64(i64 %257)
  %259 = xor i64 %258, %255
  %260 = add i64 %255, %224
  %261 = and i64 %259, 4294967295
  %262 = lshr i64 %259, 32
  %263 = mul nuw i64 %261, %262
  %264 = add i64 %260, %263
  %265 = getelementptr inbounds nuw i8, ptr %228, i64 24
  %266 = load i64, ptr %265, align 1
  %267 = tail call noundef i64 @llvm.bswap.i64(i64 %266)
  %268 = getelementptr inbounds nuw i8, ptr %230, i64 24
  %269 = load i64, ptr %268, align 8
  %270 = tail call noundef i64 @llvm.bswap.i64(i64 %269)
  %271 = xor i64 %270, %267
  %272 = add i64 %267, %223
  %273 = and i64 %271, 4294967295
  %274 = lshr i64 %271, 32
  %275 = mul nuw i64 %273, %274
  %276 = add i64 %272, %275
  %277 = getelementptr inbounds nuw i8, ptr %228, i64 32
  %278 = load i64, ptr %277, align 1
  %279 = tail call noundef i64 @llvm.bswap.i64(i64 %278)
  %280 = getelementptr inbounds nuw i8, ptr %230, i64 32
  %281 = load i64, ptr %280, align 8
  %282 = tail call noundef i64 @llvm.bswap.i64(i64 %281)
  %283 = xor i64 %282, %279
  %284 = add i64 %279, %222
  %285 = and i64 %283, 4294967295
  %286 = lshr i64 %283, 32
  %287 = mul nuw i64 %285, %286
  %288 = add i64 %284, %287
  %289 = getelementptr inbounds nuw i8, ptr %228, i64 40
  %290 = load i64, ptr %289, align 1
  %291 = tail call noundef i64 @llvm.bswap.i64(i64 %290)
  %292 = getelementptr inbounds nuw i8, ptr %230, i64 40
  %293 = load i64, ptr %292, align 8
  %294 = tail call noundef i64 @llvm.bswap.i64(i64 %293)
  %295 = xor i64 %294, %291
  %296 = add i64 %291, %221
  %297 = and i64 %295, 4294967295
  %298 = lshr i64 %295, 32
  %299 = mul nuw i64 %297, %298
  %300 = add i64 %296, %299
  %301 = getelementptr inbounds nuw i8, ptr %228, i64 48
  %302 = load i64, ptr %301, align 1
  %303 = tail call noundef i64 @llvm.bswap.i64(i64 %302)
  %304 = getelementptr inbounds nuw i8, ptr %230, i64 48
  %305 = load i64, ptr %304, align 8
  %306 = tail call noundef i64 @llvm.bswap.i64(i64 %305)
  %307 = xor i64 %306, %303
  %308 = add i64 %303, %219
  %309 = and i64 %307, 4294967295
  %310 = lshr i64 %307, 32
  %311 = mul nuw i64 %309, %310
  %312 = add i64 %308, %311
  %313 = getelementptr inbounds nuw i8, ptr %228, i64 56
  %314 = load i64, ptr %313, align 1
  %315 = tail call noundef i64 @llvm.bswap.i64(i64 %314)
  %316 = getelementptr inbounds nuw i8, ptr %230, i64 56
  %317 = load i64, ptr %316, align 8
  %318 = tail call noundef i64 @llvm.bswap.i64(i64 %317)
  %319 = xor i64 %318, %315
  %320 = add i64 %315, %218
  %321 = and i64 %319, 4294967295
  %322 = lshr i64 %319, 32
  %323 = mul nuw i64 %321, %322
  %324 = add i64 %320, %323
  %325 = add nuw nsw i64 %226, 1
  %326 = icmp eq i64 %325, 4
  br i1 %326, label %327, label %217

327:                                              ; preds = %217
  %328 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %329 = load i64, ptr %328, align 1
  %330 = tail call noundef i64 @llvm.bswap.i64(i64 %329)
  %331 = xor i64 %330, %240
  %332 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %333 = load i64, ptr %332, align 1
  %334 = tail call noundef i64 @llvm.bswap.i64(i64 %333)
  %335 = xor i64 %334, %252
  %336 = zext i64 %331 to i128
  %337 = zext i64 %335 to i128
  %338 = mul nuw i128 %337, %336
  %339 = lshr i128 %338, 64
  %340 = xor i128 %339, %338
  %341 = trunc i128 %340 to i64
  %342 = add i64 %341, 3997421333012711168
  %343 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %344 = load i64, ptr %343, align 1
  %345 = tail call noundef i64 @llvm.bswap.i64(i64 %344)
  %346 = xor i64 %345, %264
  %347 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %348 = load i64, ptr %347, align 1
  %349 = tail call noundef i64 @llvm.bswap.i64(i64 %348)
  %350 = xor i64 %349, %276
  %351 = zext i64 %346 to i128
  %352 = zext i64 %350 to i128
  %353 = mul nuw i128 %352, %351
  %354 = lshr i128 %353, 64
  %355 = xor i128 %354, %353
  %356 = trunc i128 %355 to i64
  %357 = add i64 %342, %356
  %358 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %359 = load i64, ptr %358, align 1
  %360 = tail call noundef i64 @llvm.bswap.i64(i64 %359)
  %361 = xor i64 %360, %288
  %362 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %363 = load i64, ptr %362, align 1
  %364 = tail call noundef i64 @llvm.bswap.i64(i64 %363)
  %365 = xor i64 %364, %300
  %366 = zext i64 %361 to i128
  %367 = zext i64 %365 to i128
  %368 = mul nuw i128 %367, %366
  %369 = lshr i128 %368, 64
  %370 = xor i128 %369, %368
  %371 = trunc i128 %370 to i64
  %372 = add i64 %357, %371
  %373 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %374 = load i64, ptr %373, align 1
  %375 = tail call noundef i64 @llvm.bswap.i64(i64 %374)
  %376 = xor i64 %375, %312
  %377 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %378 = load i64, ptr %377, align 1
  %379 = tail call noundef i64 @llvm.bswap.i64(i64 %378)
  %380 = xor i64 %379, %324
  br label %381

381:                                              ; preds = %187, %327
  %382 = phi i64 [ %376, %327 ], [ %215, %187 ]
  %383 = phi i64 [ %380, %327 ], [ %216, %187 ]
  %384 = phi i64 [ %372, %327 ], [ %214, %187 ]
  %385 = zext i64 %382 to i128
  %386 = zext i64 %383 to i128
  %387 = mul nuw i128 %386, %385
  %388 = lshr i128 %387, 64
  %389 = xor i128 %388, %387
  %390 = trunc i128 %389 to i64
  %391 = add i64 %384, %390
  %392 = lshr i64 %391, 37
  %393 = xor i64 %392, %391
  %394 = mul i64 %393, 1609587929392839161
  %395 = lshr i64 %394, 32
  %396 = xor i64 %395, %394
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #3
  ret i64 %396
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
