; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api_xxh32_len16_armv6/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api_xxh32_len16_armv6/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv6-unknown-linux-gnueabihf"

%struct.XXH128_hash_t = type { i64, i64 }

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 701
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local i32 @XXH32(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = ptrtoint ptr %0 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  %7 = icmp ugt i32 %1, 15
  br i1 %6, label %8, label %209

8:                                                ; preds = %3
  br i1 %7, label %9, label %54

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %11 = getelementptr inbounds i8, ptr %10, i32 -15
  %12 = add i32 %2, 606290984
  %13 = add i32 %2, -2048144777
  %14 = add i32 %2, 1640531535
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %0, %9 ], [ %44, %15 ]
  %17 = phi i32 [ %12, %9 ], [ %25, %15 ]
  %18 = phi i32 [ %13, %9 ], [ %31, %15 ]
  %19 = phi i32 [ %2, %9 ], [ %37, %15 ]
  %20 = phi i32 [ %14, %9 ], [ %43, %15 ]
  %21 = load i32, ptr %16, align 4
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %17
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = getelementptr inbounds nuw i8, ptr %16, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %18
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = getelementptr inbounds nuw i8, ptr %16, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %19
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = getelementptr inbounds nuw i8, ptr %16, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, -2048144777
  %41 = add i32 %40, %20
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 13)
  %43 = mul i32 %42, -1640531535
  %44 = getelementptr inbounds nuw i8, ptr %16, i32 16
  %45 = icmp ult ptr %44, %11
  br i1 %45, label %15, label %46

46:                                               ; preds = %15
  %47 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 1)
  %48 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 7)
  %49 = add i32 %48, %47
  %50 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 12)
  %51 = add i32 %49, %50
  %52 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 18)
  %53 = add i32 %51, %52
  br label %56

54:                                               ; preds = %8
  %55 = add i32 %2, 374761393
  br label %56

56:                                               ; preds = %46, %54
  %57 = phi i32 [ %53, %46 ], [ %55, %54 ]
  %58 = phi ptr [ %44, %46 ], [ %0, %54 ]
  %59 = add i32 %57, %1
  %60 = and i32 %1, 15
  switch i32 %60, label %208 [
    i32 12, label %61
    i32 8, label %68
    i32 4, label %77
    i32 13, label %85
    i32 9, label %92
    i32 5, label %101
    i32 14, label %116
    i32 10, label %123
    i32 6, label %132
    i32 15, label %154
    i32 11, label %161
    i32 7, label %170
    i32 3, label %179
    i32 2, label %189
    i32 1, label %199
    i32 0, label %409
  ]

61:                                               ; preds = %56
  %62 = load i32, ptr %58, align 1
  %63 = mul i32 %62, -1028477379
  %64 = add i32 %63, %59
  %65 = getelementptr inbounds nuw i8, ptr %58, i32 4
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 17)
  %67 = mul i32 %66, 668265263
  br label %68

68:                                               ; preds = %61, %56
  %69 = phi i32 [ %59, %56 ], [ %67, %61 ]
  %70 = phi ptr [ %58, %56 ], [ %65, %61 ]
  %71 = load i32, ptr %70, align 1
  %72 = mul i32 %71, -1028477379
  %73 = add i32 %72, %69
  %74 = getelementptr inbounds nuw i8, ptr %70, i32 4
  %75 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 17)
  %76 = mul i32 %75, 668265263
  br label %77

77:                                               ; preds = %68, %56
  %78 = phi i32 [ %59, %56 ], [ %76, %68 ]
  %79 = phi ptr [ %58, %56 ], [ %74, %68 ]
  %80 = load i32, ptr %79, align 1
  %81 = mul i32 %80, -1028477379
  %82 = add i32 %81, %78
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 17)
  %84 = mul i32 %83, 668265263
  br label %409

85:                                               ; preds = %56
  %86 = load i32, ptr %58, align 1
  %87 = mul i32 %86, -1028477379
  %88 = add i32 %87, %59
  %89 = getelementptr inbounds nuw i8, ptr %58, i32 4
  %90 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 17)
  %91 = mul i32 %90, 668265263
  br label %92

92:                                               ; preds = %85, %56
  %93 = phi i32 [ %59, %56 ], [ %91, %85 ]
  %94 = phi ptr [ %58, %56 ], [ %89, %85 ]
  %95 = load i32, ptr %94, align 1
  %96 = mul i32 %95, -1028477379
  %97 = add i32 %96, %93
  %98 = getelementptr inbounds nuw i8, ptr %94, i32 4
  %99 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 17)
  %100 = mul i32 %99, 668265263
  br label %101

101:                                              ; preds = %92, %56
  %102 = phi i32 [ %59, %56 ], [ %100, %92 ]
  %103 = phi ptr [ %58, %56 ], [ %98, %92 ]
  %104 = load i32, ptr %103, align 1
  %105 = mul i32 %104, -1028477379
  %106 = add i32 %105, %102
  %107 = getelementptr inbounds nuw i8, ptr %103, i32 4
  %108 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 17)
  %109 = mul i32 %108, 668265263
  %110 = load i8, ptr %107, align 1
  %111 = zext i8 %110 to i32
  %112 = mul i32 %111, 374761393
  %113 = add i32 %109, %112
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 11)
  %115 = mul i32 %114, -1640531535
  br label %409

116:                                              ; preds = %56
  %117 = load i32, ptr %58, align 1
  %118 = mul i32 %117, -1028477379
  %119 = add i32 %118, %59
  %120 = getelementptr inbounds nuw i8, ptr %58, i32 4
  %121 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 17)
  %122 = mul i32 %121, 668265263
  br label %123

123:                                              ; preds = %116, %56
  %124 = phi i32 [ %59, %56 ], [ %122, %116 ]
  %125 = phi ptr [ %58, %56 ], [ %120, %116 ]
  %126 = load i32, ptr %125, align 1
  %127 = mul i32 %126, -1028477379
  %128 = add i32 %127, %124
  %129 = getelementptr inbounds nuw i8, ptr %125, i32 4
  %130 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 17)
  %131 = mul i32 %130, 668265263
  br label %132

132:                                              ; preds = %123, %56
  %133 = phi i32 [ %59, %56 ], [ %131, %123 ]
  %134 = phi ptr [ %58, %56 ], [ %129, %123 ]
  %135 = load i32, ptr %134, align 1
  %136 = mul i32 %135, -1028477379
  %137 = add i32 %136, %133
  %138 = getelementptr inbounds nuw i8, ptr %134, i32 4
  %139 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 17)
  %140 = mul i32 %139, 668265263
  %141 = getelementptr inbounds nuw i8, ptr %134, i32 5
  %142 = load i8, ptr %138, align 1
  %143 = zext i8 %142 to i32
  %144 = mul i32 %143, 374761393
  %145 = add i32 %140, %144
  %146 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 11)
  %147 = mul i32 %146, -1640531535
  %148 = load i8, ptr %141, align 1
  %149 = zext i8 %148 to i32
  %150 = mul i32 %149, 374761393
  %151 = add i32 %147, %150
  %152 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 11)
  %153 = mul i32 %152, -1640531535
  br label %409

154:                                              ; preds = %56
  %155 = load i32, ptr %58, align 1
  %156 = mul i32 %155, -1028477379
  %157 = add i32 %156, %59
  %158 = getelementptr inbounds nuw i8, ptr %58, i32 4
  %159 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 17)
  %160 = mul i32 %159, 668265263
  br label %161

161:                                              ; preds = %154, %56
  %162 = phi i32 [ %59, %56 ], [ %160, %154 ]
  %163 = phi ptr [ %58, %56 ], [ %158, %154 ]
  %164 = load i32, ptr %163, align 1
  %165 = mul i32 %164, -1028477379
  %166 = add i32 %165, %162
  %167 = getelementptr inbounds nuw i8, ptr %163, i32 4
  %168 = tail call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 17)
  %169 = mul i32 %168, 668265263
  br label %170

170:                                              ; preds = %161, %56
  %171 = phi i32 [ %59, %56 ], [ %169, %161 ]
  %172 = phi ptr [ %58, %56 ], [ %167, %161 ]
  %173 = load i32, ptr %172, align 1
  %174 = mul i32 %173, -1028477379
  %175 = add i32 %174, %171
  %176 = getelementptr inbounds nuw i8, ptr %172, i32 4
  %177 = tail call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 17)
  %178 = mul i32 %177, 668265263
  br label %179

179:                                              ; preds = %170, %56
  %180 = phi i32 [ %59, %56 ], [ %178, %170 ]
  %181 = phi ptr [ %58, %56 ], [ %176, %170 ]
  %182 = getelementptr inbounds nuw i8, ptr %181, i32 1
  %183 = load i8, ptr %181, align 1
  %184 = zext i8 %183 to i32
  %185 = mul i32 %184, 374761393
  %186 = add i32 %185, %180
  %187 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 11)
  %188 = mul i32 %187, -1640531535
  br label %189

189:                                              ; preds = %179, %56
  %190 = phi i32 [ %59, %56 ], [ %188, %179 ]
  %191 = phi ptr [ %58, %56 ], [ %182, %179 ]
  %192 = getelementptr inbounds nuw i8, ptr %191, i32 1
  %193 = load i8, ptr %191, align 1
  %194 = zext i8 %193 to i32
  %195 = mul i32 %194, 374761393
  %196 = add i32 %195, %190
  %197 = tail call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 11)
  %198 = mul i32 %197, -1640531535
  br label %199

199:                                              ; preds = %189, %56
  %200 = phi i32 [ %59, %56 ], [ %198, %189 ]
  %201 = phi ptr [ %58, %56 ], [ %192, %189 ]
  %202 = load i8, ptr %201, align 1
  %203 = zext i8 %202 to i32
  %204 = mul i32 %203, 374761393
  %205 = add i32 %204, %200
  %206 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 11)
  %207 = mul i32 %206, -1640531535
  br label %409

208:                                              ; preds = %257, %56
  unreachable

209:                                              ; preds = %3
  br i1 %7, label %210, label %255

210:                                              ; preds = %209
  %211 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %212 = getelementptr inbounds i8, ptr %211, i32 -15
  %213 = add i32 %2, 606290984
  %214 = add i32 %2, -2048144777
  %215 = add i32 %2, 1640531535
  br label %216

216:                                              ; preds = %216, %210
  %217 = phi ptr [ %0, %210 ], [ %245, %216 ]
  %218 = phi i32 [ %213, %210 ], [ %226, %216 ]
  %219 = phi i32 [ %214, %210 ], [ %232, %216 ]
  %220 = phi i32 [ %2, %210 ], [ %238, %216 ]
  %221 = phi i32 [ %215, %210 ], [ %244, %216 ]
  %222 = load i32, ptr %217, align 1
  %223 = mul i32 %222, -2048144777
  %224 = add i32 %223, %218
  %225 = tail call i32 @llvm.fshl.i32(i32 %224, i32 %224, i32 13)
  %226 = mul i32 %225, -1640531535
  %227 = getelementptr inbounds nuw i8, ptr %217, i32 4
  %228 = load i32, ptr %227, align 1
  %229 = mul i32 %228, -2048144777
  %230 = add i32 %229, %219
  %231 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 13)
  %232 = mul i32 %231, -1640531535
  %233 = getelementptr inbounds nuw i8, ptr %217, i32 8
  %234 = load i32, ptr %233, align 1
  %235 = mul i32 %234, -2048144777
  %236 = add i32 %235, %220
  %237 = tail call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 13)
  %238 = mul i32 %237, -1640531535
  %239 = getelementptr inbounds nuw i8, ptr %217, i32 12
  %240 = load i32, ptr %239, align 1
  %241 = mul i32 %240, -2048144777
  %242 = add i32 %241, %221
  %243 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 13)
  %244 = mul i32 %243, -1640531535
  %245 = getelementptr inbounds nuw i8, ptr %217, i32 16
  %246 = icmp ult ptr %245, %212
  br i1 %246, label %216, label %247

247:                                              ; preds = %216
  %248 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 1)
  %249 = tail call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 7)
  %250 = add i32 %249, %248
  %251 = tail call i32 @llvm.fshl.i32(i32 %238, i32 %238, i32 12)
  %252 = add i32 %250, %251
  %253 = tail call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 18)
  %254 = add i32 %252, %253
  br label %257

255:                                              ; preds = %209
  %256 = add i32 %2, 374761393
  br label %257

257:                                              ; preds = %247, %255
  %258 = phi i32 [ %254, %247 ], [ %256, %255 ]
  %259 = phi ptr [ %245, %247 ], [ %0, %255 ]
  %260 = add i32 %258, %1
  %261 = and i32 %1, 15
  switch i32 %261, label %208 [
    i32 12, label %262
    i32 8, label %269
    i32 4, label %278
    i32 13, label %286
    i32 9, label %293
    i32 5, label %302
    i32 14, label %317
    i32 10, label %324
    i32 6, label %333
    i32 15, label %355
    i32 11, label %362
    i32 7, label %371
    i32 3, label %380
    i32 2, label %390
    i32 1, label %400
    i32 0, label %409
  ]

262:                                              ; preds = %257
  %263 = load i32, ptr %259, align 1
  %264 = mul i32 %263, -1028477379
  %265 = add i32 %264, %260
  %266 = getelementptr inbounds nuw i8, ptr %259, i32 4
  %267 = tail call i32 @llvm.fshl.i32(i32 %265, i32 %265, i32 17)
  %268 = mul i32 %267, 668265263
  br label %269

269:                                              ; preds = %262, %257
  %270 = phi i32 [ %260, %257 ], [ %268, %262 ]
  %271 = phi ptr [ %259, %257 ], [ %266, %262 ]
  %272 = load i32, ptr %271, align 1
  %273 = mul i32 %272, -1028477379
  %274 = add i32 %273, %270
  %275 = getelementptr inbounds nuw i8, ptr %271, i32 4
  %276 = tail call i32 @llvm.fshl.i32(i32 %274, i32 %274, i32 17)
  %277 = mul i32 %276, 668265263
  br label %278

278:                                              ; preds = %269, %257
  %279 = phi i32 [ %260, %257 ], [ %277, %269 ]
  %280 = phi ptr [ %259, %257 ], [ %275, %269 ]
  %281 = load i32, ptr %280, align 1
  %282 = mul i32 %281, -1028477379
  %283 = add i32 %282, %279
  %284 = tail call i32 @llvm.fshl.i32(i32 %283, i32 %283, i32 17)
  %285 = mul i32 %284, 668265263
  br label %409

286:                                              ; preds = %257
  %287 = load i32, ptr %259, align 1
  %288 = mul i32 %287, -1028477379
  %289 = add i32 %288, %260
  %290 = getelementptr inbounds nuw i8, ptr %259, i32 4
  %291 = tail call i32 @llvm.fshl.i32(i32 %289, i32 %289, i32 17)
  %292 = mul i32 %291, 668265263
  br label %293

293:                                              ; preds = %286, %257
  %294 = phi i32 [ %260, %257 ], [ %292, %286 ]
  %295 = phi ptr [ %259, %257 ], [ %290, %286 ]
  %296 = load i32, ptr %295, align 1
  %297 = mul i32 %296, -1028477379
  %298 = add i32 %297, %294
  %299 = getelementptr inbounds nuw i8, ptr %295, i32 4
  %300 = tail call i32 @llvm.fshl.i32(i32 %298, i32 %298, i32 17)
  %301 = mul i32 %300, 668265263
  br label %302

302:                                              ; preds = %293, %257
  %303 = phi i32 [ %260, %257 ], [ %301, %293 ]
  %304 = phi ptr [ %259, %257 ], [ %299, %293 ]
  %305 = load i32, ptr %304, align 1
  %306 = mul i32 %305, -1028477379
  %307 = add i32 %306, %303
  %308 = getelementptr inbounds nuw i8, ptr %304, i32 4
  %309 = tail call i32 @llvm.fshl.i32(i32 %307, i32 %307, i32 17)
  %310 = mul i32 %309, 668265263
  %311 = load i8, ptr %308, align 1
  %312 = zext i8 %311 to i32
  %313 = mul i32 %312, 374761393
  %314 = add i32 %310, %313
  %315 = tail call i32 @llvm.fshl.i32(i32 %314, i32 %314, i32 11)
  %316 = mul i32 %315, -1640531535
  br label %409

317:                                              ; preds = %257
  %318 = load i32, ptr %259, align 1
  %319 = mul i32 %318, -1028477379
  %320 = add i32 %319, %260
  %321 = getelementptr inbounds nuw i8, ptr %259, i32 4
  %322 = tail call i32 @llvm.fshl.i32(i32 %320, i32 %320, i32 17)
  %323 = mul i32 %322, 668265263
  br label %324

324:                                              ; preds = %317, %257
  %325 = phi i32 [ %260, %257 ], [ %323, %317 ]
  %326 = phi ptr [ %259, %257 ], [ %321, %317 ]
  %327 = load i32, ptr %326, align 1
  %328 = mul i32 %327, -1028477379
  %329 = add i32 %328, %325
  %330 = getelementptr inbounds nuw i8, ptr %326, i32 4
  %331 = tail call i32 @llvm.fshl.i32(i32 %329, i32 %329, i32 17)
  %332 = mul i32 %331, 668265263
  br label %333

333:                                              ; preds = %324, %257
  %334 = phi i32 [ %260, %257 ], [ %332, %324 ]
  %335 = phi ptr [ %259, %257 ], [ %330, %324 ]
  %336 = load i32, ptr %335, align 1
  %337 = mul i32 %336, -1028477379
  %338 = add i32 %337, %334
  %339 = getelementptr inbounds nuw i8, ptr %335, i32 4
  %340 = tail call i32 @llvm.fshl.i32(i32 %338, i32 %338, i32 17)
  %341 = mul i32 %340, 668265263
  %342 = getelementptr inbounds nuw i8, ptr %335, i32 5
  %343 = load i8, ptr %339, align 1
  %344 = zext i8 %343 to i32
  %345 = mul i32 %344, 374761393
  %346 = add i32 %341, %345
  %347 = tail call i32 @llvm.fshl.i32(i32 %346, i32 %346, i32 11)
  %348 = mul i32 %347, -1640531535
  %349 = load i8, ptr %342, align 1
  %350 = zext i8 %349 to i32
  %351 = mul i32 %350, 374761393
  %352 = add i32 %348, %351
  %353 = tail call i32 @llvm.fshl.i32(i32 %352, i32 %352, i32 11)
  %354 = mul i32 %353, -1640531535
  br label %409

355:                                              ; preds = %257
  %356 = load i32, ptr %259, align 1
  %357 = mul i32 %356, -1028477379
  %358 = add i32 %357, %260
  %359 = getelementptr inbounds nuw i8, ptr %259, i32 4
  %360 = tail call i32 @llvm.fshl.i32(i32 %358, i32 %358, i32 17)
  %361 = mul i32 %360, 668265263
  br label %362

362:                                              ; preds = %355, %257
  %363 = phi i32 [ %260, %257 ], [ %361, %355 ]
  %364 = phi ptr [ %259, %257 ], [ %359, %355 ]
  %365 = load i32, ptr %364, align 1
  %366 = mul i32 %365, -1028477379
  %367 = add i32 %366, %363
  %368 = getelementptr inbounds nuw i8, ptr %364, i32 4
  %369 = tail call i32 @llvm.fshl.i32(i32 %367, i32 %367, i32 17)
  %370 = mul i32 %369, 668265263
  br label %371

371:                                              ; preds = %362, %257
  %372 = phi i32 [ %260, %257 ], [ %370, %362 ]
  %373 = phi ptr [ %259, %257 ], [ %368, %362 ]
  %374 = load i32, ptr %373, align 1
  %375 = mul i32 %374, -1028477379
  %376 = add i32 %375, %372
  %377 = getelementptr inbounds nuw i8, ptr %373, i32 4
  %378 = tail call i32 @llvm.fshl.i32(i32 %376, i32 %376, i32 17)
  %379 = mul i32 %378, 668265263
  br label %380

380:                                              ; preds = %371, %257
  %381 = phi i32 [ %260, %257 ], [ %379, %371 ]
  %382 = phi ptr [ %259, %257 ], [ %377, %371 ]
  %383 = getelementptr inbounds nuw i8, ptr %382, i32 1
  %384 = load i8, ptr %382, align 1
  %385 = zext i8 %384 to i32
  %386 = mul i32 %385, 374761393
  %387 = add i32 %386, %381
  %388 = tail call i32 @llvm.fshl.i32(i32 %387, i32 %387, i32 11)
  %389 = mul i32 %388, -1640531535
  br label %390

390:                                              ; preds = %380, %257
  %391 = phi i32 [ %260, %257 ], [ %389, %380 ]
  %392 = phi ptr [ %259, %257 ], [ %383, %380 ]
  %393 = getelementptr inbounds nuw i8, ptr %392, i32 1
  %394 = load i8, ptr %392, align 1
  %395 = zext i8 %394 to i32
  %396 = mul i32 %395, 374761393
  %397 = add i32 %396, %391
  %398 = tail call i32 @llvm.fshl.i32(i32 %397, i32 %397, i32 11)
  %399 = mul i32 %398, -1640531535
  br label %400

400:                                              ; preds = %390, %257
  %401 = phi i32 [ %260, %257 ], [ %399, %390 ]
  %402 = phi ptr [ %259, %257 ], [ %393, %390 ]
  %403 = load i8, ptr %402, align 1
  %404 = zext i8 %403 to i32
  %405 = mul i32 %404, 374761393
  %406 = add i32 %405, %401
  %407 = tail call i32 @llvm.fshl.i32(i32 %406, i32 %406, i32 11)
  %408 = mul i32 %407, -1640531535
  br label %409

409:                                              ; preds = %400, %333, %302, %278, %257, %199, %132, %101, %77, %56
  %410 = phi i32 [ %153, %132 ], [ %115, %101 ], [ %84, %77 ], [ %59, %56 ], [ %207, %199 ], [ %354, %333 ], [ %316, %302 ], [ %285, %278 ], [ %260, %257 ], [ %408, %400 ]
  %411 = lshr i32 %410, 15
  %412 = xor i32 %411, %410
  %413 = mul i32 %412, -2048144777
  %414 = lshr i32 %413, 13
  %415 = xor i32 %414, %413
  %416 = mul i32 %415, -1028477379
  %417 = lshr i32 %416, 16
  %418 = xor i32 %417, %416
  ret i32 %418
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite)
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i32 noundef 48) #25
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @XXH32_copyState(ptr noundef writeonly initializes((0, 48)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i32 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly, ptr noalias readonly, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local noundef i32 @XXH32_reset(ptr noundef writeonly initializes((0, 44)) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  store i64 0, ptr %0, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i32 %3, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 12
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 20
  store i32 %5, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 24
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly, i8, i32, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local range(i32 0, 2) i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %119, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %7 = load i32, ptr %0, align 4
  %8 = add i32 %7, %2
  store i32 %8, ptr %0, align 4
  %9 = or i32 %8, %2
  %10 = icmp ugt i32 %9, 15
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %11
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %2
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %21 = getelementptr inbounds nuw i8, ptr %20, i32 %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %21, ptr nonnull readonly align 1 %1, i32 %2, i1 false)
  %22 = load i32, ptr %15, align 4
  %23 = add i32 %22, %2
  br label %117

24:                                               ; preds = %5
  %25 = icmp eq i32 %16, 0
  br i1 %25, label %64, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %28 = getelementptr inbounds nuw i8, ptr %27, i32 %16
  %29 = sub i32 16, %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %28, ptr nonnull readonly align 1 %1, i32 %29, i1 false)
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %27, align 1
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %31
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  store i32 %36, ptr %30, align 4
  %37 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %38 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %37, align 1
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %39
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  store i32 %44, ptr %38, align 4
  %45 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %45, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %47
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  store i32 %52, ptr %46, align 4
  %53 = getelementptr inbounds nuw i8, ptr %0, i32 36
  %54 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %53, align 1
  %57 = mul i32 %56, -2048144777
  %58 = add i32 %57, %55
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13)
  %60 = mul i32 %59, -1640531535
  store i32 %60, ptr %54, align 4
  %61 = load i32, ptr %15, align 4
  %62 = sub i32 16, %61
  %63 = getelementptr inbounds nuw i8, ptr %1, i32 %62
  store i32 0, ptr %15, align 4
  br label %64

64:                                               ; preds = %26, %24
  %65 = phi ptr [ %63, %26 ], [ %1, %24 ]
  %66 = getelementptr inbounds i8, ptr %6, i32 -16
  %67 = icmp ugt ptr %65, %66
  br i1 %67, label %109, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %77, %68
  %78 = phi ptr [ %65, %68 ], [ %106, %77 ]
  %79 = phi i32 [ %70, %68 ], [ %87, %77 ]
  %80 = phi i32 [ %72, %68 ], [ %93, %77 ]
  %81 = phi i32 [ %74, %68 ], [ %99, %77 ]
  %82 = phi i32 [ %76, %68 ], [ %105, %77 ]
  %83 = load i32, ptr %78, align 1
  %84 = mul i32 %83, -2048144777
  %85 = add i32 %84, %79
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 13)
  %87 = mul i32 %86, -1640531535
  %88 = getelementptr inbounds nuw i8, ptr %78, i32 4
  %89 = load i32, ptr %88, align 1
  %90 = mul i32 %89, -2048144777
  %91 = add i32 %90, %80
  %92 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 13)
  %93 = mul i32 %92, -1640531535
  %94 = getelementptr inbounds nuw i8, ptr %78, i32 8
  %95 = load i32, ptr %94, align 1
  %96 = mul i32 %95, -2048144777
  %97 = add i32 %96, %81
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13)
  %99 = mul i32 %98, -1640531535
  %100 = getelementptr inbounds nuw i8, ptr %78, i32 12
  %101 = load i32, ptr %100, align 1
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %82
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = getelementptr inbounds nuw i8, ptr %78, i32 16
  %107 = icmp ugt ptr %106, %66
  br i1 %107, label %108, label %77

108:                                              ; preds = %77
  store i32 %87, ptr %69, align 4
  store i32 %93, ptr %71, align 4
  store i32 %99, ptr %73, align 4
  store i32 %105, ptr %75, align 4
  br label %109

109:                                              ; preds = %108, %64
  %110 = phi ptr [ %106, %108 ], [ %65, %64 ]
  %111 = icmp ult ptr %110, %6
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %114 = ptrtoint ptr %6 to i32
  %115 = ptrtoint ptr %110 to i32
  %116 = sub i32 %114, %115
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %113, ptr nonnull readonly align 1 %110, i32 %116, i1 false)
  br label %117

117:                                              ; preds = %112, %19
  %118 = phi i32 [ %23, %19 ], [ %116, %112 ]
  store i32 %118, ptr %15, align 4
  br label %119

119:                                              ; preds = %117, %109, %3
  %120 = phi i32 [ 1, %3 ], [ 0, %109 ], [ 0, %117 ]
  ret i32 %120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i32 @XXH32_digest(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 1)
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 7)
  %12 = add i32 %11, %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 12)
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 18)
  %20 = add i32 %16, %19
  br label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 374761393
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i32 [ %20, %5 ], [ %24, %21 ]
  %27 = load i32, ptr %0, align 4
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 15
  switch i32 %32, label %180 [
    i32 12, label %33
    i32 8, label %40
    i32 4, label %49
    i32 13, label %57
    i32 9, label %64
    i32 5, label %73
    i32 14, label %88
    i32 10, label %95
    i32 6, label %104
    i32 15, label %126
    i32 11, label %133
    i32 7, label %142
    i32 3, label %151
    i32 2, label %161
    i32 1, label %171
    i32 0, label %181
  ]

33:                                               ; preds = %25
  %34 = load i32, ptr %29, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %28
  %37 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  br label %40

40:                                               ; preds = %33, %25
  %41 = phi i32 [ %28, %25 ], [ %39, %33 ]
  %42 = phi ptr [ %29, %25 ], [ %37, %33 ]
  %43 = load i32, ptr %42, align 1
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %41
  %46 = getelementptr inbounds nuw i8, ptr %42, i32 4
  %47 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %48 = mul i32 %47, 668265263
  br label %49

49:                                               ; preds = %40, %25
  %50 = phi i32 [ %28, %25 ], [ %48, %40 ]
  %51 = phi ptr [ %29, %25 ], [ %46, %40 ]
  %52 = load i32, ptr %51, align 1
  %53 = mul i32 %52, -1028477379
  %54 = add i32 %53, %50
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 17)
  %56 = mul i32 %55, 668265263
  br label %181

57:                                               ; preds = %25
  %58 = load i32, ptr %29, align 1
  %59 = mul i32 %58, -1028477379
  %60 = add i32 %59, %28
  %61 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17)
  %63 = mul i32 %62, 668265263
  br label %64

64:                                               ; preds = %57, %25
  %65 = phi i32 [ %28, %25 ], [ %63, %57 ]
  %66 = phi ptr [ %29, %25 ], [ %61, %57 ]
  %67 = load i32, ptr %66, align 1
  %68 = mul i32 %67, -1028477379
  %69 = add i32 %68, %65
  %70 = getelementptr inbounds nuw i8, ptr %66, i32 4
  %71 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 17)
  %72 = mul i32 %71, 668265263
  br label %73

73:                                               ; preds = %64, %25
  %74 = phi i32 [ %28, %25 ], [ %72, %64 ]
  %75 = phi ptr [ %29, %25 ], [ %70, %64 ]
  %76 = load i32, ptr %75, align 1
  %77 = mul i32 %76, -1028477379
  %78 = add i32 %77, %74
  %79 = getelementptr inbounds nuw i8, ptr %75, i32 4
  %80 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 17)
  %81 = mul i32 %80, 668265263
  %82 = load i8, ptr %79, align 1
  %83 = zext i8 %82 to i32
  %84 = mul i32 %83, 374761393
  %85 = add i32 %81, %84
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 11)
  %87 = mul i32 %86, -1640531535
  br label %181

88:                                               ; preds = %25
  %89 = load i32, ptr %29, align 1
  %90 = mul i32 %89, -1028477379
  %91 = add i32 %90, %28
  %92 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %93 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 17)
  %94 = mul i32 %93, 668265263
  br label %95

95:                                               ; preds = %88, %25
  %96 = phi i32 [ %28, %25 ], [ %94, %88 ]
  %97 = phi ptr [ %29, %25 ], [ %92, %88 ]
  %98 = load i32, ptr %97, align 1
  %99 = mul i32 %98, -1028477379
  %100 = add i32 %99, %96
  %101 = getelementptr inbounds nuw i8, ptr %97, i32 4
  %102 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 17)
  %103 = mul i32 %102, 668265263
  br label %104

104:                                              ; preds = %95, %25
  %105 = phi i32 [ %28, %25 ], [ %103, %95 ]
  %106 = phi ptr [ %29, %25 ], [ %101, %95 ]
  %107 = load i32, ptr %106, align 1
  %108 = mul i32 %107, -1028477379
  %109 = add i32 %108, %105
  %110 = getelementptr inbounds nuw i8, ptr %106, i32 4
  %111 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 17)
  %112 = mul i32 %111, 668265263
  %113 = getelementptr inbounds nuw i8, ptr %106, i32 5
  %114 = load i8, ptr %110, align 1
  %115 = zext i8 %114 to i32
  %116 = mul i32 %115, 374761393
  %117 = add i32 %112, %116
  %118 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 11)
  %119 = mul i32 %118, -1640531535
  %120 = load i8, ptr %113, align 1
  %121 = zext i8 %120 to i32
  %122 = mul i32 %121, 374761393
  %123 = add i32 %119, %122
  %124 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 11)
  %125 = mul i32 %124, -1640531535
  br label %181

126:                                              ; preds = %25
  %127 = load i32, ptr %29, align 1
  %128 = mul i32 %127, -1028477379
  %129 = add i32 %128, %28
  %130 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %131 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 17)
  %132 = mul i32 %131, 668265263
  br label %133

133:                                              ; preds = %126, %25
  %134 = phi i32 [ %28, %25 ], [ %132, %126 ]
  %135 = phi ptr [ %29, %25 ], [ %130, %126 ]
  %136 = load i32, ptr %135, align 1
  %137 = mul i32 %136, -1028477379
  %138 = add i32 %137, %134
  %139 = getelementptr inbounds nuw i8, ptr %135, i32 4
  %140 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 17)
  %141 = mul i32 %140, 668265263
  br label %142

142:                                              ; preds = %133, %25
  %143 = phi i32 [ %28, %25 ], [ %141, %133 ]
  %144 = phi ptr [ %29, %25 ], [ %139, %133 ]
  %145 = load i32, ptr %144, align 1
  %146 = mul i32 %145, -1028477379
  %147 = add i32 %146, %143
  %148 = getelementptr inbounds nuw i8, ptr %144, i32 4
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 17)
  %150 = mul i32 %149, 668265263
  br label %151

151:                                              ; preds = %142, %25
  %152 = phi i32 [ %28, %25 ], [ %150, %142 ]
  %153 = phi ptr [ %29, %25 ], [ %148, %142 ]
  %154 = getelementptr inbounds nuw i8, ptr %153, i32 1
  %155 = load i8, ptr %153, align 1
  %156 = zext i8 %155 to i32
  %157 = mul i32 %156, 374761393
  %158 = add i32 %157, %152
  %159 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 11)
  %160 = mul i32 %159, -1640531535
  br label %161

161:                                              ; preds = %151, %25
  %162 = phi i32 [ %28, %25 ], [ %160, %151 ]
  %163 = phi ptr [ %29, %25 ], [ %154, %151 ]
  %164 = getelementptr inbounds nuw i8, ptr %163, i32 1
  %165 = load i8, ptr %163, align 1
  %166 = zext i8 %165 to i32
  %167 = mul i32 %166, 374761393
  %168 = add i32 %167, %162
  %169 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 11)
  %170 = mul i32 %169, -1640531535
  br label %171

171:                                              ; preds = %161, %25
  %172 = phi i32 [ %28, %25 ], [ %170, %161 ]
  %173 = phi ptr [ %29, %25 ], [ %164, %161 ]
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = mul i32 %175, 374761393
  %177 = add i32 %176, %172
  %178 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 11)
  %179 = mul i32 %178, -1640531535
  br label %181

180:                                              ; preds = %25
  unreachable

181:                                              ; preds = %25, %49, %73, %104, %171
  %182 = phi i32 [ %125, %104 ], [ %87, %73 ], [ %56, %49 ], [ %28, %25 ], [ %179, %171 ]
  %183 = lshr i32 %182, 15
  %184 = xor i32 %183, %182
  %185 = mul i32 %184, -2048144777
  %186 = lshr i32 %185, 13
  %187 = xor i32 %186, %185
  %188 = mul i32 %187, -1028477379
  %189 = lshr i32 %188, 16
  %190 = xor i32 %189, %188
  ret i32 %190
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @XXH32_canonicalFromHash(ptr noundef writeonly initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local noundef i32 @XXH32_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 1
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @XXH64(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = ptrtoint ptr %0 to i32
  %5 = and i32 %4, 7
  %6 = icmp eq i32 %5, 0
  %7 = icmp ugt i32 %1, 31
  br i1 %6, label %8, label %135

8:                                                ; preds = %3
  br i1 %7, label %9, label %78

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %11 = getelementptr inbounds i8, ptr %10, i32 -32
  %12 = add i64 %2, 6983438078262162902
  %13 = add i64 %2, -4417276706812531889
  %14 = add i64 %2, 7046029288634856825
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %0, %9 ], [ %44, %15 ]
  %17 = phi i64 [ %12, %9 ], [ %25, %15 ]
  %18 = phi i64 [ %13, %9 ], [ %31, %15 ]
  %19 = phi i64 [ %2, %9 ], [ %37, %15 ]
  %20 = phi i64 [ %14, %9 ], [ %43, %15 ]
  %21 = load i64, ptr %16, align 8
  %22 = mul i64 %21, -4417276706812531889
  %23 = add i64 %22, %17
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %16, i32 8
  %27 = load i64, ptr %26, align 8
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, %18
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = getelementptr inbounds nuw i8, ptr %16, i32 16
  %33 = load i64, ptr %32, align 8
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, %19
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  %38 = getelementptr inbounds nuw i8, ptr %16, i32 24
  %39 = load i64, ptr %38, align 8
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, %20
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %43 = mul i64 %42, -7046029288634856825
  %44 = getelementptr inbounds nuw i8, ptr %16, i32 32
  %45 = icmp ugt ptr %44, %11
  br i1 %45, label %46, label %15

46:                                               ; preds = %15
  %47 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 1)
  %48 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 7)
  %49 = add i64 %48, %47
  %50 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 12)
  %51 = add i64 %49, %50
  %52 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 18)
  %53 = add i64 %51, %52
  %54 = mul i64 %24, -2381459717836149591
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 31)
  %56 = mul i64 %55, -7046029288634856825
  %57 = xor i64 %53, %56
  %58 = mul i64 %57, -7046029288634856825
  %59 = add i64 %58, -8796714831421723037
  %60 = mul i64 %30, -2381459717836149591
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 31)
  %62 = mul i64 %61, -7046029288634856825
  %63 = xor i64 %59, %62
  %64 = mul i64 %63, -7046029288634856825
  %65 = add i64 %64, -8796714831421723037
  %66 = mul i64 %36, -2381459717836149591
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 31)
  %68 = mul i64 %67, -7046029288634856825
  %69 = xor i64 %65, %68
  %70 = mul i64 %69, -7046029288634856825
  %71 = add i64 %70, -8796714831421723037
  %72 = mul i64 %42, -2381459717836149591
  %73 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 31)
  %74 = mul i64 %73, -7046029288634856825
  %75 = xor i64 %71, %74
  %76 = mul i64 %75, -7046029288634856825
  %77 = add i64 %76, -8796714831421723037
  br label %80

78:                                               ; preds = %8
  %79 = add i64 %2, 2870177450012600261
  br label %80

80:                                               ; preds = %46, %78
  %81 = phi i64 [ %77, %46 ], [ %79, %78 ]
  %82 = phi ptr [ %44, %46 ], [ %0, %78 ]
  %83 = zext i32 %1 to i64
  %84 = add i64 %81, %83
  %85 = and i32 %1, 31
  %86 = icmp samesign ugt i32 %85, 7
  br i1 %86, label %87, label %102

87:                                               ; preds = %80, %87
  %88 = phi i64 [ %99, %87 ], [ %84, %80 ]
  %89 = phi ptr [ %95, %87 ], [ %82, %80 ]
  %90 = phi i32 [ %100, %87 ], [ %85, %80 ]
  %91 = load i64, ptr %89, align 1
  %92 = mul i64 %91, -4417276706812531889
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 31)
  %94 = mul i64 %93, -7046029288634856825
  %95 = getelementptr inbounds nuw i8, ptr %89, i32 8
  %96 = xor i64 %94, %88
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 27)
  %98 = mul i64 %97, -7046029288634856825
  %99 = add i64 %98, -8796714831421723037
  %100 = add nsw i32 %90, -8
  %101 = icmp ugt i32 %100, 7
  br i1 %101, label %87, label %102

102:                                              ; preds = %87, %80
  %103 = phi i32 [ %85, %80 ], [ %100, %87 ]
  %104 = phi ptr [ %82, %80 ], [ %95, %87 ]
  %105 = phi i64 [ %84, %80 ], [ %99, %87 ]
  %106 = icmp samesign ugt i32 %103, 3
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load i32, ptr %104, align 1
  %109 = zext i32 %108 to i64
  %110 = mul i64 %109, -7046029288634856825
  %111 = xor i64 %110, %105
  %112 = getelementptr inbounds nuw i8, ptr %104, i32 4
  %113 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 23)
  %114 = mul i64 %113, -4417276706812531889
  %115 = add i64 %114, 1609587929392839161
  %116 = add nsw i32 %103, -4
  br label %117

117:                                              ; preds = %107, %102
  %118 = phi i32 [ %116, %107 ], [ %103, %102 ]
  %119 = phi ptr [ %112, %107 ], [ %104, %102 ]
  %120 = phi i64 [ %115, %107 ], [ %105, %102 ]
  %121 = icmp eq i32 %118, 0
  br i1 %121, label %262, label %122

122:                                              ; preds = %117, %122
  %123 = phi i64 [ %132, %122 ], [ %120, %117 ]
  %124 = phi ptr [ %126, %122 ], [ %119, %117 ]
  %125 = phi i32 [ %133, %122 ], [ %118, %117 ]
  %126 = getelementptr inbounds nuw i8, ptr %124, i32 1
  %127 = load i8, ptr %124, align 1
  %128 = zext i8 %127 to i64
  %129 = mul i64 %128, 2870177450012600261
  %130 = xor i64 %129, %123
  %131 = tail call i64 @llvm.fshl.i64(i64 %130, i64 %130, i64 11)
  %132 = mul i64 %131, -7046029288634856825
  %133 = add nsw i32 %125, -1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %262, label %122

135:                                              ; preds = %3
  br i1 %7, label %136, label %205

136:                                              ; preds = %135
  %137 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %138 = getelementptr inbounds i8, ptr %137, i32 -32
  %139 = add i64 %2, 6983438078262162902
  %140 = add i64 %2, -4417276706812531889
  %141 = add i64 %2, 7046029288634856825
  br label %142

142:                                              ; preds = %142, %136
  %143 = phi ptr [ %0, %136 ], [ %171, %142 ]
  %144 = phi i64 [ %139, %136 ], [ %152, %142 ]
  %145 = phi i64 [ %140, %136 ], [ %158, %142 ]
  %146 = phi i64 [ %2, %136 ], [ %164, %142 ]
  %147 = phi i64 [ %141, %136 ], [ %170, %142 ]
  %148 = load i64, ptr %143, align 1
  %149 = mul i64 %148, -4417276706812531889
  %150 = add i64 %149, %144
  %151 = tail call i64 @llvm.fshl.i64(i64 %150, i64 %150, i64 31)
  %152 = mul i64 %151, -7046029288634856825
  %153 = getelementptr inbounds nuw i8, ptr %143, i32 8
  %154 = load i64, ptr %153, align 1
  %155 = mul i64 %154, -4417276706812531889
  %156 = add i64 %155, %145
  %157 = tail call i64 @llvm.fshl.i64(i64 %156, i64 %156, i64 31)
  %158 = mul i64 %157, -7046029288634856825
  %159 = getelementptr inbounds nuw i8, ptr %143, i32 16
  %160 = load i64, ptr %159, align 1
  %161 = mul i64 %160, -4417276706812531889
  %162 = add i64 %161, %146
  %163 = tail call i64 @llvm.fshl.i64(i64 %162, i64 %162, i64 31)
  %164 = mul i64 %163, -7046029288634856825
  %165 = getelementptr inbounds nuw i8, ptr %143, i32 24
  %166 = load i64, ptr %165, align 1
  %167 = mul i64 %166, -4417276706812531889
  %168 = add i64 %167, %147
  %169 = tail call i64 @llvm.fshl.i64(i64 %168, i64 %168, i64 31)
  %170 = mul i64 %169, -7046029288634856825
  %171 = getelementptr inbounds nuw i8, ptr %143, i32 32
  %172 = icmp ugt ptr %171, %138
  br i1 %172, label %173, label %142

173:                                              ; preds = %142
  %174 = tail call i64 @llvm.fshl.i64(i64 %152, i64 %152, i64 1)
  %175 = tail call i64 @llvm.fshl.i64(i64 %158, i64 %158, i64 7)
  %176 = add i64 %175, %174
  %177 = tail call i64 @llvm.fshl.i64(i64 %164, i64 %164, i64 12)
  %178 = add i64 %176, %177
  %179 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 18)
  %180 = add i64 %178, %179
  %181 = mul i64 %151, -2381459717836149591
  %182 = tail call i64 @llvm.fshl.i64(i64 %181, i64 %181, i64 31)
  %183 = mul i64 %182, -7046029288634856825
  %184 = xor i64 %180, %183
  %185 = mul i64 %184, -7046029288634856825
  %186 = add i64 %185, -8796714831421723037
  %187 = mul i64 %157, -2381459717836149591
  %188 = tail call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 31)
  %189 = mul i64 %188, -7046029288634856825
  %190 = xor i64 %186, %189
  %191 = mul i64 %190, -7046029288634856825
  %192 = add i64 %191, -8796714831421723037
  %193 = mul i64 %163, -2381459717836149591
  %194 = tail call i64 @llvm.fshl.i64(i64 %193, i64 %193, i64 31)
  %195 = mul i64 %194, -7046029288634856825
  %196 = xor i64 %192, %195
  %197 = mul i64 %196, -7046029288634856825
  %198 = add i64 %197, -8796714831421723037
  %199 = mul i64 %169, -2381459717836149591
  %200 = tail call i64 @llvm.fshl.i64(i64 %199, i64 %199, i64 31)
  %201 = mul i64 %200, -7046029288634856825
  %202 = xor i64 %198, %201
  %203 = mul i64 %202, -7046029288634856825
  %204 = add i64 %203, -8796714831421723037
  br label %207

205:                                              ; preds = %135
  %206 = add i64 %2, 2870177450012600261
  br label %207

207:                                              ; preds = %173, %205
  %208 = phi i64 [ %204, %173 ], [ %206, %205 ]
  %209 = phi ptr [ %171, %173 ], [ %0, %205 ]
  %210 = zext i32 %1 to i64
  %211 = add i64 %208, %210
  %212 = and i32 %1, 31
  %213 = icmp samesign ugt i32 %212, 7
  br i1 %213, label %214, label %229

214:                                              ; preds = %207, %214
  %215 = phi i64 [ %226, %214 ], [ %211, %207 ]
  %216 = phi ptr [ %222, %214 ], [ %209, %207 ]
  %217 = phi i32 [ %227, %214 ], [ %212, %207 ]
  %218 = load i64, ptr %216, align 1
  %219 = mul i64 %218, -4417276706812531889
  %220 = tail call i64 @llvm.fshl.i64(i64 %219, i64 %219, i64 31)
  %221 = mul i64 %220, -7046029288634856825
  %222 = getelementptr inbounds nuw i8, ptr %216, i32 8
  %223 = xor i64 %221, %215
  %224 = tail call i64 @llvm.fshl.i64(i64 %223, i64 %223, i64 27)
  %225 = mul i64 %224, -7046029288634856825
  %226 = add i64 %225, -8796714831421723037
  %227 = add nsw i32 %217, -8
  %228 = icmp ugt i32 %227, 7
  br i1 %228, label %214, label %229

229:                                              ; preds = %214, %207
  %230 = phi i32 [ %212, %207 ], [ %227, %214 ]
  %231 = phi ptr [ %209, %207 ], [ %222, %214 ]
  %232 = phi i64 [ %211, %207 ], [ %226, %214 ]
  %233 = icmp samesign ugt i32 %230, 3
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load i32, ptr %231, align 1
  %236 = zext i32 %235 to i64
  %237 = mul i64 %236, -7046029288634856825
  %238 = xor i64 %237, %232
  %239 = getelementptr inbounds nuw i8, ptr %231, i32 4
  %240 = tail call i64 @llvm.fshl.i64(i64 %238, i64 %238, i64 23)
  %241 = mul i64 %240, -4417276706812531889
  %242 = add i64 %241, 1609587929392839161
  %243 = add nsw i32 %230, -4
  br label %244

244:                                              ; preds = %234, %229
  %245 = phi i32 [ %243, %234 ], [ %230, %229 ]
  %246 = phi ptr [ %239, %234 ], [ %231, %229 ]
  %247 = phi i64 [ %242, %234 ], [ %232, %229 ]
  %248 = icmp eq i32 %245, 0
  br i1 %248, label %262, label %249

249:                                              ; preds = %244, %249
  %250 = phi i64 [ %259, %249 ], [ %247, %244 ]
  %251 = phi ptr [ %253, %249 ], [ %246, %244 ]
  %252 = phi i32 [ %260, %249 ], [ %245, %244 ]
  %253 = getelementptr inbounds nuw i8, ptr %251, i32 1
  %254 = load i8, ptr %251, align 1
  %255 = zext i8 %254 to i64
  %256 = mul i64 %255, 2870177450012600261
  %257 = xor i64 %256, %250
  %258 = tail call i64 @llvm.fshl.i64(i64 %257, i64 %257, i64 11)
  %259 = mul i64 %258, -7046029288634856825
  %260 = add nsw i32 %252, -1
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %249

262:                                              ; preds = %249, %122, %244, %117
  %263 = phi i64 [ %120, %117 ], [ %247, %244 ], [ %132, %122 ], [ %259, %249 ]
  %264 = lshr i64 %263, 33
  %265 = xor i64 %264, %263
  %266 = mul i64 %265, -4417276706812531889
  %267 = lshr i64 %266, 29
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587929392839161
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  ret i64 %271
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite)
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i32 noundef 88) #25
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @XXH64_copyState(ptr noundef writeonly initializes((0, 88)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local noundef i32 @XXH64_reset(ptr noundef writeonly initializes((0, 80)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  store i64 0, ptr %0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %3, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store i64 %5, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 40
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i32 40, i1 false)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local range(i32 0, 2) i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %115, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %7 = zext i32 %2 to i64
  %8 = load i64, ptr %0, align 8
  %9 = add i64 %8, %7
  store i64 %9, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 72
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, %2
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %16 = getelementptr inbounds nuw i8, ptr %15, i32 %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %16, ptr nonnull readonly align 1 %1, i32 %2, i1 false)
  %17 = load i32, ptr %10, align 8
  %18 = add i32 %17, %2
  br label %113

19:                                               ; preds = %5
  %20 = icmp eq i32 %11, 0
  br i1 %20, label %59, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %23 = getelementptr inbounds nuw i8, ptr %22, i32 %11
  %24 = sub i32 32, %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %23, ptr nonnull readonly align 1 %1, i32 %24, i1 false)
  %25 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %26 = load i64, ptr %25, align 8
  %27 = load i64, ptr %22, align 1
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, %26
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  store i64 %31, ptr %25, align 8
  %32 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %35 = load i64, ptr %34, align 1
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, %33
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  store i64 %39, ptr %32, align 8
  %40 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %43 = load i64, ptr %42, align 1
  %44 = mul i64 %43, -4417276706812531889
  %45 = add i64 %44, %41
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31)
  %47 = mul i64 %46, -7046029288634856825
  store i64 %47, ptr %40, align 8
  %48 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i32 64
  %51 = load i64, ptr %50, align 1
  %52 = mul i64 %51, -4417276706812531889
  %53 = add i64 %52, %49
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 31)
  %55 = mul i64 %54, -7046029288634856825
  store i64 %55, ptr %48, align 8
  %56 = load i32, ptr %10, align 8
  %57 = sub i32 32, %56
  %58 = getelementptr inbounds nuw i8, ptr %1, i32 %57
  store i32 0, ptr %10, align 8
  br label %59

59:                                               ; preds = %21, %19
  %60 = phi ptr [ %58, %21 ], [ %1, %19 ]
  %61 = getelementptr inbounds nuw i8, ptr %60, i32 32
  %62 = icmp ugt ptr %61, %6
  br i1 %62, label %105, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %6, i32 -32
  %65 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %72 = load i64, ptr %71, align 8
  br label %73

73:                                               ; preds = %73, %63
  %74 = phi ptr [ %60, %63 ], [ %102, %73 ]
  %75 = phi i64 [ %66, %63 ], [ %83, %73 ]
  %76 = phi i64 [ %68, %63 ], [ %89, %73 ]
  %77 = phi i64 [ %70, %63 ], [ %95, %73 ]
  %78 = phi i64 [ %72, %63 ], [ %101, %73 ]
  %79 = load i64, ptr %74, align 1
  %80 = mul i64 %79, -4417276706812531889
  %81 = add i64 %80, %75
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 31)
  %83 = mul i64 %82, -7046029288634856825
  %84 = getelementptr inbounds nuw i8, ptr %74, i32 8
  %85 = load i64, ptr %84, align 1
  %86 = mul i64 %85, -4417276706812531889
  %87 = add i64 %86, %76
  %88 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 31)
  %89 = mul i64 %88, -7046029288634856825
  %90 = getelementptr inbounds nuw i8, ptr %74, i32 16
  %91 = load i64, ptr %90, align 1
  %92 = mul i64 %91, -4417276706812531889
  %93 = add i64 %92, %77
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 31)
  %95 = mul i64 %94, -7046029288634856825
  %96 = getelementptr inbounds nuw i8, ptr %74, i32 24
  %97 = load i64, ptr %96, align 1
  %98 = mul i64 %97, -4417276706812531889
  %99 = add i64 %98, %78
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 31)
  %101 = mul i64 %100, -7046029288634856825
  %102 = getelementptr inbounds nuw i8, ptr %74, i32 32
  %103 = icmp ugt ptr %102, %64
  br i1 %103, label %104, label %73

104:                                              ; preds = %73
  store i64 %83, ptr %65, align 8
  store i64 %89, ptr %67, align 8
  store i64 %95, ptr %69, align 8
  store i64 %101, ptr %71, align 8
  br label %105

105:                                              ; preds = %104, %59
  %106 = phi ptr [ %102, %104 ], [ %60, %59 ]
  %107 = icmp ult ptr %106, %6
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %110 = ptrtoint ptr %6 to i32
  %111 = ptrtoint ptr %106 to i32
  %112 = sub i32 %110, %111
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %109, ptr nonnull readonly align 1 %106, i32 %112, i1 false)
  br label %113

113:                                              ; preds = %108, %14
  %114 = phi i32 [ %18, %14 ], [ %112, %108 ]
  store i32 %114, ptr %10, align 8
  br label %115

115:                                              ; preds = %113, %105, %3
  %116 = phi i32 [ 1, %3 ], [ 0, %105 ], [ 0, %113 ]
  ret i32 %116
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #12 {
  %2 = load i64, ptr %0, align 8
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %12 = load i64, ptr %11, align 8
  %13 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 1)
  %14 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 7)
  %15 = add i64 %14, %13
  %16 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 12)
  %17 = add i64 %15, %16
  %18 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 18)
  %19 = add i64 %17, %18
  %20 = mul i64 %6, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = xor i64 %19, %22
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = mul i64 %8, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %25, %28
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = mul i64 %10, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %31, %34
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = mul i64 %12, -4417276706812531889
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %37, %40
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  br label %48

44:                                               ; preds = %1
  %45 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %44, %4
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %52 = trunc i64 %2 to i32
  %53 = and i32 %52, 31
  %54 = icmp samesign ugt i32 %53, 7
  br i1 %54, label %55, label %70

55:                                               ; preds = %48, %55
  %56 = phi i64 [ %67, %55 ], [ %50, %48 ]
  %57 = phi ptr [ %63, %55 ], [ %51, %48 ]
  %58 = phi i32 [ %68, %55 ], [ %53, %48 ]
  %59 = load i64, ptr %57, align 1
  %60 = mul i64 %59, -4417276706812531889
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 31)
  %62 = mul i64 %61, -7046029288634856825
  %63 = getelementptr inbounds nuw i8, ptr %57, i32 8
  %64 = xor i64 %62, %56
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 27)
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723037
  %68 = add nsw i32 %58, -8
  %69 = icmp ugt i32 %68, 7
  br i1 %69, label %55, label %70

70:                                               ; preds = %55, %48
  %71 = phi i32 [ %53, %48 ], [ %68, %55 ]
  %72 = phi ptr [ %51, %48 ], [ %63, %55 ]
  %73 = phi i64 [ %50, %48 ], [ %67, %55 ]
  %74 = icmp samesign ugt i32 %71, 3
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load i32, ptr %72, align 1
  %77 = zext i32 %76 to i64
  %78 = mul i64 %77, -7046029288634856825
  %79 = xor i64 %78, %73
  %80 = getelementptr inbounds nuw i8, ptr %72, i32 4
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 23)
  %82 = mul i64 %81, -4417276706812531889
  %83 = add i64 %82, 1609587929392839161
  %84 = add nsw i32 %71, -4
  br label %85

85:                                               ; preds = %75, %70
  %86 = phi i32 [ %84, %75 ], [ %71, %70 ]
  %87 = phi ptr [ %80, %75 ], [ %72, %70 ]
  %88 = phi i64 [ %83, %75 ], [ %73, %70 ]
  %89 = icmp eq i32 %86, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %85, %90
  %91 = phi i64 [ %100, %90 ], [ %88, %85 ]
  %92 = phi ptr [ %94, %90 ], [ %87, %85 ]
  %93 = phi i32 [ %101, %90 ], [ %86, %85 ]
  %94 = getelementptr inbounds nuw i8, ptr %92, i32 1
  %95 = load i8, ptr %92, align 1
  %96 = zext i8 %95 to i64
  %97 = mul i64 %96, 2870177450012600261
  %98 = xor i64 %97, %91
  %99 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 11)
  %100 = mul i64 %99, -7046029288634856825
  %101 = add nsw i32 %93, -1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %90

103:                                              ; preds = %90, %85
  %104 = phi i64 [ %88, %85 ], [ %100, %90 ]
  %105 = lshr i64 %104, 33
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, -4417276706812531889
  %108 = lshr i64 %107, 29
  %109 = xor i64 %108, %107
  %110 = mul i64 %109, 1609587929392839161
  %111 = lshr i64 %110, 32
  %112 = xor i64 %111, %110
  ret i64 %112
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @XXH64_canonicalFromHash(ptr noundef writeonly initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local noundef i64 @XXH64_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i64, ptr %0, align 1
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @XXH3_64bits(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = icmp ult i32 %1, 17
  br i1 %3, label %4, label %98

4:                                                ; preds = %2
  %5 = icmp samesign ugt i32 %1, 8
  br i1 %5, label %6, label %46

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, -4734510112055689544
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %10 = getelementptr inbounds i8, ptr %9, i32 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, 2066345149520216444
  %13 = zext nneg i32 %1 to i64
  %14 = lshr i64 %8, 32
  %15 = lshr i64 %12, 32
  %16 = mul nuw i64 %15, %14
  %17 = and i64 %8, 4294967295
  %18 = mul nuw i64 %15, %17
  %19 = and i64 %12, 4294967295
  %20 = mul nuw i64 %19, %14
  %21 = mul nuw i64 %19, %17
  %22 = shl i64 %18, 32
  %23 = add i64 %22, %21
  %24 = icmp ult i64 %23, %21
  %25 = zext i1 %24 to i64
  %26 = add i64 %18, %20
  %27 = shl i64 %26, 32
  %28 = add i64 %27, %21
  %29 = icmp ult i64 %28, %23
  %30 = zext i1 %29 to i64
  %31 = lshr i64 %18, 32
  %32 = add nuw i64 %31, %16
  %33 = lshr i64 %20, 32
  %34 = add nuw i64 %32, %33
  %35 = add nuw i64 %34, %25
  %36 = add nuw i64 %35, %30
  %37 = xor i64 %36, %28
  %38 = add i64 %8, %13
  %39 = add i64 %38, %12
  %40 = add i64 %39, %37
  %41 = lshr i64 %40, 37
  %42 = xor i64 %41, %40
  %43 = mul i64 %42, 1609587929392839161
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  br label %377

46:                                               ; preds = %4
  %47 = icmp samesign ugt i32 %1, 3
  br i1 %47, label %48, label %71

48:                                               ; preds = %46
  %49 = load i32, ptr %0, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %51 = getelementptr inbounds i8, ptr %50, i32 -4
  %52 = load i32, ptr %51, align 1
  %53 = zext i32 %49 to i64
  %54 = zext i32 %52 to i64
  %55 = shl nuw i64 %54, 32
  %56 = or disjoint i64 %55, %53
  %57 = xor i64 %56, -4734510112055689544
  %58 = zext nneg i32 %1 to i64
  %59 = lshr i64 %57, 51
  %60 = xor i64 %59, %57
  %61 = mul i64 %60, 2654435761
  %62 = add i64 %61, %58
  %63 = lshr i64 %62, 47
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, -4417276706812531889
  %66 = lshr i64 %65, 37
  %67 = xor i64 %66, %65
  %68 = mul i64 %67, 1609587929392839161
  %69 = lshr i64 %68, 32
  %70 = xor i64 %69, %68
  br label %377

71:                                               ; preds = %46
  %72 = icmp eq i32 %1, 0
  br i1 %72, label %377, label %73

73:                                               ; preds = %71
  %74 = load i8, ptr %0, align 1
  %75 = lshr i32 %1, 1
  %76 = getelementptr inbounds nuw i8, ptr %0, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr i8, ptr %0, i32 %1
  %79 = getelementptr i8, ptr %78, i32 -1
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %74 to i32
  %82 = zext i8 %77 to i32
  %83 = shl nuw nsw i32 %82, 8
  %84 = or disjoint i32 %83, %81
  %85 = zext i8 %80 to i32
  %86 = shl nuw nsw i32 %85, 16
  %87 = or disjoint i32 %84, %86
  %88 = shl nuw nsw i32 %1, 24
  %89 = or disjoint i32 %87, %88
  %90 = xor i32 %89, 963444408
  %91 = zext nneg i32 %90 to i64
  %92 = mul i64 %91, -7046029288634856825
  %93 = lshr i64 %92, 37
  %94 = xor i64 %93, %92
  %95 = mul i64 %94, 1609587929392839161
  %96 = lshr i64 %95, 32
  %97 = xor i64 %96, %95
  br label %377

98:                                               ; preds = %2
  %99 = icmp ult i32 %1, 129
  br i1 %99, label %100, label %371

100:                                              ; preds = %98
  %101 = zext nneg i32 %1 to i64
  %102 = mul i64 %101, -7046029288634856825
  %103 = icmp samesign ugt i32 %1, 32
  br i1 %103, label %104, label %302

104:                                              ; preds = %100
  %105 = icmp samesign ugt i32 %1, 64
  br i1 %105, label %106, label %237

106:                                              ; preds = %104
  %107 = icmp samesign ugt i32 %1, 96
  br i1 %107, label %108, label %172

108:                                              ; preds = %106
  %109 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %110 = load i64, ptr %109, align 1
  %111 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %112 = load i64, ptr %111, align 1
  %113 = xor i64 %110, 4554437623014685352
  %114 = xor i64 %112, 2111919702937427193
  %115 = lshr i64 %113, 32
  %116 = lshr i64 %114, 32
  %117 = mul nuw i64 %116, %115
  %118 = and i64 %113, 4294967295
  %119 = mul nuw i64 %116, %118
  %120 = and i64 %114, 4294967295
  %121 = mul nuw i64 %120, %115
  %122 = mul nuw i64 %120, %118
  %123 = shl i64 %119, 32
  %124 = add i64 %123, %122
  %125 = icmp ult i64 %124, %122
  %126 = zext i1 %125 to i64
  %127 = add i64 %119, %121
  %128 = shl i64 %127, 32
  %129 = add i64 %128, %122
  %130 = icmp ult i64 %129, %124
  %131 = zext i1 %130 to i64
  %132 = lshr i64 %119, 32
  %133 = add nuw i64 %132, %117
  %134 = lshr i64 %121, 32
  %135 = add nuw i64 %133, %134
  %136 = add nuw i64 %135, %126
  %137 = add nuw i64 %136, %131
  %138 = xor i64 %137, %129
  %139 = add i64 %138, %102
  %140 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %141 = getelementptr inbounds i8, ptr %140, i32 -64
  %142 = load i64, ptr %141, align 1
  %143 = getelementptr inbounds i8, ptr %140, i32 -56
  %144 = load i64, ptr %143, align 1
  %145 = xor i64 %142, 3556072174620004746
  %146 = xor i64 %144, 7238261902898274248
  %147 = lshr i64 %145, 32
  %148 = lshr i64 %146, 32
  %149 = mul nuw i64 %148, %147
  %150 = and i64 %145, 4294967295
  %151 = mul nuw i64 %148, %150
  %152 = and i64 %146, 4294967295
  %153 = mul nuw i64 %152, %147
  %154 = mul nuw i64 %152, %150
  %155 = shl i64 %151, 32
  %156 = add i64 %155, %154
  %157 = icmp ult i64 %156, %154
  %158 = zext i1 %157 to i64
  %159 = add i64 %151, %153
  %160 = shl i64 %159, 32
  %161 = add i64 %160, %154
  %162 = icmp ult i64 %161, %156
  %163 = zext i1 %162 to i64
  %164 = lshr i64 %151, 32
  %165 = add nuw i64 %164, %149
  %166 = lshr i64 %153, 32
  %167 = add nuw i64 %165, %166
  %168 = add nuw i64 %167, %158
  %169 = add nuw i64 %168, %163
  %170 = xor i64 %169, %161
  %171 = add i64 %139, %170
  br label %172

172:                                              ; preds = %108, %106
  %173 = phi i64 [ %171, %108 ], [ %102, %106 ]
  %174 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %175 = load i64, ptr %174, align 1
  %176 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %177 = load i64, ptr %176, align 1
  %178 = xor i64 %175, -3818837453329782724
  %179 = xor i64 %177, -6688317018830679928
  %180 = lshr i64 %178, 32
  %181 = lshr i64 %179, 32
  %182 = mul nuw i64 %181, %180
  %183 = and i64 %178, 4294967295
  %184 = mul nuw i64 %181, %183
  %185 = and i64 %179, 4294967295
  %186 = mul nuw i64 %185, %180
  %187 = mul nuw i64 %185, %183
  %188 = shl i64 %184, 32
  %189 = add i64 %188, %187
  %190 = icmp ult i64 %189, %187
  %191 = zext i1 %190 to i64
  %192 = add i64 %184, %186
  %193 = shl i64 %192, 32
  %194 = add i64 %193, %187
  %195 = icmp ult i64 %194, %189
  %196 = zext i1 %195 to i64
  %197 = lshr i64 %184, 32
  %198 = add nuw i64 %197, %182
  %199 = lshr i64 %186, 32
  %200 = add nuw i64 %198, %199
  %201 = add nuw i64 %200, %191
  %202 = add nuw i64 %201, %196
  %203 = xor i64 %202, %194
  %204 = add i64 %203, %173
  %205 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %206 = getelementptr inbounds i8, ptr %205, i32 -48
  %207 = load i64, ptr %206, align 1
  %208 = getelementptr inbounds i8, ptr %205, i32 -40
  %209 = load i64, ptr %208, align 1
  %210 = xor i64 %207, 5690594596133299313
  %211 = xor i64 %209, -2833645246901970632
  %212 = lshr i64 %210, 32
  %213 = lshr i64 %211, 32
  %214 = mul nuw i64 %213, %212
  %215 = and i64 %210, 4294967295
  %216 = mul nuw i64 %213, %215
  %217 = and i64 %211, 4294967295
  %218 = mul nuw i64 %217, %212
  %219 = mul nuw i64 %217, %215
  %220 = shl i64 %216, 32
  %221 = add i64 %220, %219
  %222 = icmp ult i64 %221, %219
  %223 = zext i1 %222 to i64
  %224 = add i64 %216, %218
  %225 = shl i64 %224, 32
  %226 = add i64 %225, %219
  %227 = icmp ult i64 %226, %221
  %228 = zext i1 %227 to i64
  %229 = lshr i64 %216, 32
  %230 = add nuw i64 %229, %214
  %231 = lshr i64 %218, 32
  %232 = add nuw i64 %230, %231
  %233 = add nuw i64 %232, %223
  %234 = add nuw i64 %233, %228
  %235 = xor i64 %234, %226
  %236 = add i64 %204, %235
  br label %237

237:                                              ; preds = %172, %104
  %238 = phi i64 [ %236, %172 ], [ %102, %104 ]
  %239 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %240 = load i64, ptr %239, align 1
  %241 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %242 = load i64, ptr %241, align 1
  %243 = xor i64 %240, 8711581037947681227
  %244 = xor i64 %242, 2410270004345854594
  %245 = lshr i64 %243, 32
  %246 = lshr i64 %244, 32
  %247 = mul nuw i64 %246, %245
  %248 = and i64 %243, 4294967295
  %249 = mul nuw i64 %246, %248
  %250 = and i64 %244, 4294967295
  %251 = mul nuw i64 %250, %245
  %252 = mul nuw i64 %250, %248
  %253 = shl i64 %249, 32
  %254 = add i64 %253, %252
  %255 = icmp ult i64 %254, %252
  %256 = zext i1 %255 to i64
  %257 = add i64 %249, %251
  %258 = shl i64 %257, 32
  %259 = add i64 %258, %252
  %260 = icmp ult i64 %259, %254
  %261 = zext i1 %260 to i64
  %262 = lshr i64 %249, 32
  %263 = add nuw i64 %262, %247
  %264 = lshr i64 %251, 32
  %265 = add nuw i64 %263, %264
  %266 = add nuw i64 %265, %256
  %267 = add nuw i64 %266, %261
  %268 = xor i64 %267, %259
  %269 = add i64 %268, %238
  %270 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %271 = getelementptr inbounds i8, ptr %270, i32 -32
  %272 = load i64, ptr %271, align 1
  %273 = getelementptr inbounds i8, ptr %270, i32 -24
  %274 = load i64, ptr %273, align 1
  %275 = xor i64 %272, -8204357891075471176
  %276 = xor i64 %274, 5487137525590930912
  %277 = lshr i64 %275, 32
  %278 = lshr i64 %276, 32
  %279 = mul nuw i64 %278, %277
  %280 = and i64 %275, 4294967295
  %281 = mul nuw i64 %278, %280
  %282 = and i64 %276, 4294967295
  %283 = mul nuw i64 %282, %277
  %284 = mul nuw i64 %282, %280
  %285 = shl i64 %281, 32
  %286 = add i64 %285, %284
  %287 = icmp ult i64 %286, %284
  %288 = zext i1 %287 to i64
  %289 = add i64 %281, %283
  %290 = shl i64 %289, 32
  %291 = add i64 %290, %284
  %292 = icmp ult i64 %291, %286
  %293 = zext i1 %292 to i64
  %294 = lshr i64 %281, 32
  %295 = add nuw i64 %294, %279
  %296 = lshr i64 %283, 32
  %297 = add nuw i64 %295, %296
  %298 = add nuw i64 %297, %288
  %299 = add nuw i64 %298, %293
  %300 = xor i64 %299, %291
  %301 = add i64 %269, %300
  br label %302

302:                                              ; preds = %100, %237
  %303 = phi i64 [ %301, %237 ], [ %102, %100 ]
  %304 = load i64, ptr %0, align 1
  %305 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %306 = load i64, ptr %305, align 1
  %307 = xor i64 %304, -4734510112055689544
  %308 = xor i64 %306, 2066345149520216444
  %309 = lshr i64 %307, 32
  %310 = lshr i64 %308, 32
  %311 = mul nuw i64 %310, %309
  %312 = and i64 %307, 4294967295
  %313 = mul nuw i64 %310, %312
  %314 = and i64 %308, 4294967295
  %315 = mul nuw i64 %314, %309
  %316 = mul nuw i64 %314, %312
  %317 = shl i64 %313, 32
  %318 = add i64 %317, %316
  %319 = icmp ult i64 %318, %316
  %320 = zext i1 %319 to i64
  %321 = add i64 %313, %315
  %322 = shl i64 %321, 32
  %323 = add i64 %322, %316
  %324 = icmp ult i64 %323, %318
  %325 = zext i1 %324 to i64
  %326 = lshr i64 %313, 32
  %327 = add nuw i64 %326, %311
  %328 = lshr i64 %315, 32
  %329 = add nuw i64 %327, %328
  %330 = add nuw i64 %329, %320
  %331 = add nuw i64 %330, %325
  %332 = xor i64 %331, %323
  %333 = add i64 %332, %303
  %334 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %335 = getelementptr inbounds i8, ptr %334, i32 -16
  %336 = load i64, ptr %335, align 1
  %337 = getelementptr inbounds i8, ptr %334, i32 -8
  %338 = load i64, ptr %337, align 1
  %339 = xor i64 %336, -2623469361688619810
  %340 = xor i64 %338, 2262974939099578482
  %341 = lshr i64 %339, 32
  %342 = lshr i64 %340, 32
  %343 = mul nuw i64 %342, %341
  %344 = and i64 %339, 4294967295
  %345 = mul nuw i64 %342, %344
  %346 = and i64 %340, 4294967295
  %347 = mul nuw i64 %346, %341
  %348 = mul nuw i64 %346, %344
  %349 = shl i64 %345, 32
  %350 = add i64 %349, %348
  %351 = icmp ult i64 %350, %348
  %352 = zext i1 %351 to i64
  %353 = add i64 %345, %347
  %354 = shl i64 %353, 32
  %355 = add i64 %354, %348
  %356 = icmp ult i64 %355, %350
  %357 = zext i1 %356 to i64
  %358 = lshr i64 %345, 32
  %359 = add nuw i64 %358, %343
  %360 = lshr i64 %347, 32
  %361 = add nuw i64 %359, %360
  %362 = add nuw i64 %361, %352
  %363 = add nuw i64 %362, %357
  %364 = xor i64 %363, %355
  %365 = add i64 %333, %364
  %366 = lshr i64 %365, 37
  %367 = xor i64 %366, %365
  %368 = mul i64 %367, 1609587929392839161
  %369 = lshr i64 %368, 32
  %370 = xor i64 %369, %368
  br label %377

371:                                              ; preds = %98
  %372 = icmp ult i32 %1, 241
  br i1 %372, label %373, label %375

373:                                              ; preds = %371
  %374 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %377

375:                                              ; preds = %371
  %376 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i32 noundef %1)
  br label %377

377:                                              ; preds = %73, %71, %48, %6, %375, %373, %302
  %378 = phi i64 [ %370, %302 ], [ %374, %373 ], [ %376, %375 ], [ %45, %6 ], [ %70, %48 ], [ %97, %73 ], [ 0, %71 ]
  ret i64 %378
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read)
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i32 noundef range(i32 129, 241) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #13 {
  %5 = zext nneg i32 %1 to i64
  %6 = mul i64 %5, -7046029288634856825
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ 0, %4 ], [ %48, %7 ]
  %9 = phi i64 [ %6, %4 ], [ %47, %7 ]
  %10 = shl nuw nsw i32 %8, 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %2, i32 %10
  %13 = load i64, ptr %11, align 1
  %14 = getelementptr inbounds nuw i8, ptr %11, i32 8
  %15 = load i64, ptr %14, align 1
  %16 = load i64, ptr %12, align 1
  %17 = add i64 %16, %3
  %18 = xor i64 %17, %13
  %19 = getelementptr inbounds nuw i8, ptr %12, i32 8
  %20 = load i64, ptr %19, align 1
  %21 = sub i64 %20, %3
  %22 = xor i64 %21, %15
  %23 = lshr i64 %18, 32
  %24 = lshr i64 %22, 32
  %25 = mul nuw i64 %24, %23
  %26 = and i64 %18, 4294967295
  %27 = mul nuw i64 %24, %26
  %28 = and i64 %22, 4294967295
  %29 = mul nuw i64 %28, %23
  %30 = mul nuw i64 %28, %26
  %31 = shl i64 %27, 32
  %32 = add i64 %31, %30
  %33 = icmp ult i64 %32, %30
  %34 = zext i1 %33 to i64
  %35 = add i64 %27, %29
  %36 = shl i64 %35, 32
  %37 = add i64 %36, %30
  %38 = icmp ult i64 %37, %32
  %39 = zext i1 %38 to i64
  %40 = lshr i64 %27, 32
  %41 = add nuw i64 %40, %25
  %42 = lshr i64 %29, 32
  %43 = add nuw i64 %41, %42
  %44 = add nuw i64 %43, %34
  %45 = add nuw i64 %44, %39
  %46 = xor i64 %45, %37
  %47 = add i64 %46, %9
  %48 = add nuw nsw i32 %8, 1
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %7

50:                                               ; preds = %7
  %51 = lshr i32 %1, 4
  %52 = lshr i64 %47, 37
  %53 = xor i64 %52, %47
  %54 = mul i64 %53, 1609587929392839161
  %55 = lshr i64 %54, 32
  %56 = xor i64 %55, %54
  %57 = icmp eq i32 %51, 8
  br i1 %57, label %102, label %58

58:                                               ; preds = %50, %58
  %59 = phi i32 [ %100, %58 ], [ 8, %50 ]
  %60 = phi i64 [ %99, %58 ], [ %56, %50 ]
  %61 = shl nsw i32 %59, 4
  %62 = getelementptr inbounds nuw i8, ptr %0, i32 %61
  %63 = getelementptr i8, ptr %2, i32 %61
  %64 = getelementptr i8, ptr %63, i32 -125
  %65 = load i64, ptr %62, align 1
  %66 = getelementptr inbounds nuw i8, ptr %62, i32 8
  %67 = load i64, ptr %66, align 1
  %68 = load i64, ptr %64, align 1
  %69 = add i64 %68, %3
  %70 = xor i64 %69, %65
  %71 = getelementptr i8, ptr %63, i32 -117
  %72 = load i64, ptr %71, align 1
  %73 = sub i64 %72, %3
  %74 = xor i64 %73, %67
  %75 = lshr i64 %70, 32
  %76 = lshr i64 %74, 32
  %77 = mul nuw i64 %76, %75
  %78 = and i64 %70, 4294967295
  %79 = mul nuw i64 %76, %78
  %80 = and i64 %74, 4294967295
  %81 = mul nuw i64 %80, %75
  %82 = mul nuw i64 %80, %78
  %83 = shl i64 %79, 32
  %84 = add i64 %83, %82
  %85 = icmp ult i64 %84, %82
  %86 = zext i1 %85 to i64
  %87 = add i64 %79, %81
  %88 = shl i64 %87, 32
  %89 = add i64 %88, %82
  %90 = icmp ult i64 %89, %84
  %91 = zext i1 %90 to i64
  %92 = lshr i64 %79, 32
  %93 = add nuw i64 %92, %77
  %94 = lshr i64 %81, 32
  %95 = add nuw i64 %93, %94
  %96 = add nuw i64 %95, %86
  %97 = add nuw i64 %96, %91
  %98 = xor i64 %97, %89
  %99 = add i64 %98, %60
  %100 = add nuw nsw i32 %59, 1
  %101 = icmp eq i32 %100, %51
  br i1 %101, label %102, label %58

102:                                              ; preds = %58, %50
  %103 = phi i64 [ %56, %50 ], [ %99, %58 ]
  %104 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %105 = getelementptr inbounds i8, ptr %104, i32 -16
  %106 = getelementptr inbounds nuw i8, ptr %2, i32 119
  %107 = load i64, ptr %105, align 1
  %108 = getelementptr inbounds i8, ptr %104, i32 -8
  %109 = load i64, ptr %108, align 1
  %110 = load i64, ptr %106, align 1
  %111 = add i64 %110, %3
  %112 = xor i64 %111, %107
  %113 = getelementptr inbounds nuw i8, ptr %2, i32 127
  %114 = load i64, ptr %113, align 1
  %115 = sub i64 %114, %3
  %116 = xor i64 %115, %109
  %117 = lshr i64 %112, 32
  %118 = lshr i64 %116, 32
  %119 = mul nuw i64 %118, %117
  %120 = and i64 %112, 4294967295
  %121 = mul nuw i64 %118, %120
  %122 = and i64 %116, 4294967295
  %123 = mul nuw i64 %122, %117
  %124 = mul nuw i64 %122, %120
  %125 = shl i64 %121, 32
  %126 = add i64 %125, %124
  %127 = icmp ult i64 %126, %124
  %128 = zext i1 %127 to i64
  %129 = add i64 %121, %123
  %130 = shl i64 %129, 32
  %131 = add i64 %130, %124
  %132 = icmp ult i64 %131, %126
  %133 = zext i1 %132 to i64
  %134 = lshr i64 %121, 32
  %135 = add nuw i64 %134, %119
  %136 = lshr i64 %123, 32
  %137 = add nuw i64 %135, %136
  %138 = add nuw i64 %137, %128
  %139 = add nuw i64 %138, %133
  %140 = xor i64 %139, %131
  %141 = add i64 %140, %103
  %142 = lshr i64 %141, 37
  %143 = xor i64 %142, %141
  %144 = mul i64 %143, 1609587929392839161
  %145 = lshr i64 %144, 32
  %146 = xor i64 %145, %144
  ret i64 %146
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read)
define internal fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef readonly %0, i32 noundef range(i32 241, 0) %1) unnamed_addr #13 {
  %3 = lshr i32 %1, 10
  %4 = icmp ult i32 %1, 1024
  br i1 %4, label %146, label %5

5:                                                ; preds = %2, %111
  %6 = phi i64 [ %143, %111 ], [ 2654435761, %2 ]
  %7 = phi i64 [ %139, %111 ], [ 2870177450012600261, %2 ]
  %8 = phi i64 [ %135, %111 ], [ 2246822519, %2 ]
  %9 = phi i64 [ %131, %111 ], [ -8796714831421723037, %2 ]
  %10 = phi i64 [ %127, %111 ], [ 1609587929392839161, %2 ]
  %11 = phi i64 [ %123, %111 ], [ -4417276706812531889, %2 ]
  %12 = phi i64 [ %119, %111 ], [ -7046029288634856825, %2 ]
  %13 = phi i64 [ %115, %111 ], [ 3266489917, %2 ]
  %14 = phi i32 [ %144, %111 ], [ 0, %2 ]
  %15 = shl i32 %14, 10
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 %15
  br label %17

17:                                               ; preds = %17, %5
  %18 = phi i64 [ %6, %5 ], [ %108, %17 ]
  %19 = phi i64 [ %7, %5 ], [ %106, %17 ]
  %20 = phi i64 [ %8, %5 ], [ %88, %17 ]
  %21 = phi i64 [ %9, %5 ], [ %86, %17 ]
  %22 = phi i64 [ %10, %5 ], [ %68, %17 ]
  %23 = phi i64 [ %11, %5 ], [ %66, %17 ]
  %24 = phi i64 [ %12, %5 ], [ %48, %17 ]
  %25 = phi i64 [ %13, %5 ], [ %46, %17 ]
  %26 = phi i32 [ 0, %5 ], [ %109, %17 ]
  %27 = shl i32 %26, 6
  %28 = getelementptr inbounds nuw i8, ptr %16, i32 %27
  %29 = shl i32 %26, 3
  %30 = getelementptr inbounds nuw i8, ptr @kSecret, i32 %29
  %31 = load i64, ptr %28, align 1
  %32 = getelementptr inbounds nuw i8, ptr %28, i32 8
  %33 = load i64, ptr %32, align 1
  %34 = load i64, ptr %30, align 8
  %35 = getelementptr inbounds nuw i8, ptr %30, i32 8
  %36 = load i64, ptr %35, align 8
  %37 = xor i64 %34, %31
  %38 = xor i64 %36, %33
  %39 = and i64 %37, 4294967295
  %40 = lshr i64 %37, 32
  %41 = mul nuw i64 %39, %40
  %42 = and i64 %38, 4294967295
  %43 = lshr i64 %38, 32
  %44 = mul nuw i64 %42, %43
  %45 = add i64 %31, %25
  %46 = add i64 %45, %41
  %47 = add i64 %33, %24
  %48 = add i64 %47, %44
  %49 = getelementptr inbounds nuw i8, ptr %28, i32 16
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %28, i32 24
  %52 = load i64, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %30, i32 16
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %30, i32 24
  %56 = load i64, ptr %55, align 8
  %57 = xor i64 %54, %50
  %58 = xor i64 %56, %52
  %59 = and i64 %57, 4294967295
  %60 = lshr i64 %57, 32
  %61 = mul nuw i64 %59, %60
  %62 = and i64 %58, 4294967295
  %63 = lshr i64 %58, 32
  %64 = mul nuw i64 %62, %63
  %65 = add i64 %50, %23
  %66 = add i64 %65, %61
  %67 = add i64 %52, %22
  %68 = add i64 %67, %64
  %69 = getelementptr inbounds nuw i8, ptr %28, i32 32
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %28, i32 40
  %72 = load i64, ptr %71, align 1
  %73 = getelementptr inbounds nuw i8, ptr %30, i32 32
  %74 = load i64, ptr %73, align 8
  %75 = getelementptr inbounds nuw i8, ptr %30, i32 40
  %76 = load i64, ptr %75, align 8
  %77 = xor i64 %74, %70
  %78 = xor i64 %76, %72
  %79 = and i64 %77, 4294967295
  %80 = lshr i64 %77, 32
  %81 = mul nuw i64 %79, %80
  %82 = and i64 %78, 4294967295
  %83 = lshr i64 %78, 32
  %84 = mul nuw i64 %82, %83
  %85 = add i64 %70, %21
  %86 = add i64 %85, %81
  %87 = add i64 %72, %20
  %88 = add i64 %87, %84
  %89 = getelementptr inbounds nuw i8, ptr %28, i32 48
  %90 = load i64, ptr %89, align 1
  %91 = getelementptr inbounds nuw i8, ptr %28, i32 56
  %92 = load i64, ptr %91, align 1
  %93 = getelementptr inbounds nuw i8, ptr %30, i32 48
  %94 = load i64, ptr %93, align 8
  %95 = getelementptr inbounds nuw i8, ptr %30, i32 56
  %96 = load i64, ptr %95, align 8
  %97 = xor i64 %94, %90
  %98 = xor i64 %96, %92
  %99 = and i64 %97, 4294967295
  %100 = lshr i64 %97, 32
  %101 = mul nuw i64 %99, %100
  %102 = and i64 %98, 4294967295
  %103 = lshr i64 %98, 32
  %104 = mul nuw i64 %102, %103
  %105 = add i64 %90, %19
  %106 = add i64 %105, %101
  %107 = add i64 %92, %18
  %108 = add i64 %107, %104
  %109 = add nuw nsw i32 %26, 1
  %110 = icmp eq i32 %109, 16
  br i1 %110, label %111, label %17

111:                                              ; preds = %17
  %112 = lshr i64 %46, 47
  %113 = xor i64 %46, %112
  %114 = xor i64 %113, -4329134394285701654
  %115 = mul i64 %114, 2654435761
  %116 = lshr i64 %48, 47
  %117 = xor i64 %48, %116
  %118 = xor i64 %117, -1485321483350670907
  %119 = mul i64 %118, 2654435761
  %120 = lshr i64 %66, 47
  %121 = xor i64 %66, %120
  %122 = xor i64 %121, 5321830579834785047
  %123 = mul i64 %122, 2654435761
  %124 = lshr i64 %68, 47
  %125 = xor i64 %68, %124
  %126 = xor i64 %125, -7032137544937171245
  %127 = mul i64 %126, 2654435761
  %128 = lshr i64 %86, 47
  %129 = xor i64 %86, %128
  %130 = xor i64 %129, -242834301215959509
  %131 = mul i64 %130, 2654435761
  %132 = lshr i64 %88, 47
  %133 = xor i64 %88, %132
  %134 = xor i64 %133, -3588858202114426737
  %135 = mul i64 %134, 2654435761
  %136 = lshr i64 %106, 47
  %137 = xor i64 %106, %136
  %138 = xor i64 %137, 2883454493032893253
  %139 = mul i64 %138, 2654435761
  %140 = lshr i64 %108, 47
  %141 = xor i64 %108, %140
  %142 = xor i64 %141, 9097354517224871855
  %143 = mul i64 %142, 2654435761
  %144 = add nuw nsw i32 %14, 1
  %145 = icmp eq i32 %144, %3
  br i1 %145, label %146, label %5

146:                                              ; preds = %111, %2
  %147 = phi i64 [ 2654435761, %2 ], [ %143, %111 ]
  %148 = phi i64 [ 2870177450012600261, %2 ], [ %139, %111 ]
  %149 = phi i64 [ 2246822519, %2 ], [ %135, %111 ]
  %150 = phi i64 [ -8796714831421723037, %2 ], [ %131, %111 ]
  %151 = phi i64 [ 1609587929392839161, %2 ], [ %127, %111 ]
  %152 = phi i64 [ -4417276706812531889, %2 ], [ %123, %111 ]
  %153 = phi i64 [ -7046029288634856825, %2 ], [ %119, %111 ]
  %154 = phi i64 [ 3266489917, %2 ], [ %115, %111 ]
  %155 = and i32 %1, -1024
  %156 = and i32 %1, 1023
  %157 = lshr i32 %156, 6
  %158 = getelementptr inbounds nuw i8, ptr %0, i32 %155
  %159 = icmp samesign ult i32 %156, 64
  br i1 %159, label %254, label %160

160:                                              ; preds = %146, %160
  %161 = phi i64 [ %251, %160 ], [ %147, %146 ]
  %162 = phi i64 [ %249, %160 ], [ %148, %146 ]
  %163 = phi i64 [ %231, %160 ], [ %149, %146 ]
  %164 = phi i64 [ %229, %160 ], [ %150, %146 ]
  %165 = phi i64 [ %211, %160 ], [ %151, %146 ]
  %166 = phi i64 [ %209, %160 ], [ %152, %146 ]
  %167 = phi i64 [ %191, %160 ], [ %153, %146 ]
  %168 = phi i64 [ %189, %160 ], [ %154, %146 ]
  %169 = phi i32 [ %252, %160 ], [ 0, %146 ]
  %170 = shl i32 %169, 6
  %171 = getelementptr inbounds nuw i8, ptr %158, i32 %170
  %172 = shl i32 %169, 3
  %173 = getelementptr inbounds nuw i8, ptr @kSecret, i32 %172
  %174 = load i64, ptr %171, align 1
  %175 = getelementptr inbounds nuw i8, ptr %171, i32 8
  %176 = load i64, ptr %175, align 1
  %177 = load i64, ptr %173, align 8
  %178 = getelementptr inbounds nuw i8, ptr %173, i32 8
  %179 = load i64, ptr %178, align 8
  %180 = xor i64 %177, %174
  %181 = xor i64 %179, %176
  %182 = and i64 %180, 4294967295
  %183 = lshr i64 %180, 32
  %184 = mul nuw i64 %182, %183
  %185 = and i64 %181, 4294967295
  %186 = lshr i64 %181, 32
  %187 = mul nuw i64 %185, %186
  %188 = add i64 %174, %168
  %189 = add i64 %188, %184
  %190 = add i64 %176, %167
  %191 = add i64 %190, %187
  %192 = getelementptr inbounds nuw i8, ptr %171, i32 16
  %193 = load i64, ptr %192, align 1
  %194 = getelementptr inbounds nuw i8, ptr %171, i32 24
  %195 = load i64, ptr %194, align 1
  %196 = getelementptr inbounds nuw i8, ptr %173, i32 16
  %197 = load i64, ptr %196, align 8
  %198 = getelementptr inbounds nuw i8, ptr %173, i32 24
  %199 = load i64, ptr %198, align 8
  %200 = xor i64 %197, %193
  %201 = xor i64 %199, %195
  %202 = and i64 %200, 4294967295
  %203 = lshr i64 %200, 32
  %204 = mul nuw i64 %202, %203
  %205 = and i64 %201, 4294967295
  %206 = lshr i64 %201, 32
  %207 = mul nuw i64 %205, %206
  %208 = add i64 %193, %166
  %209 = add i64 %208, %204
  %210 = add i64 %195, %165
  %211 = add i64 %210, %207
  %212 = getelementptr inbounds nuw i8, ptr %171, i32 32
  %213 = load i64, ptr %212, align 1
  %214 = getelementptr inbounds nuw i8, ptr %171, i32 40
  %215 = load i64, ptr %214, align 1
  %216 = getelementptr inbounds nuw i8, ptr %173, i32 32
  %217 = load i64, ptr %216, align 8
  %218 = getelementptr inbounds nuw i8, ptr %173, i32 40
  %219 = load i64, ptr %218, align 8
  %220 = xor i64 %217, %213
  %221 = xor i64 %219, %215
  %222 = and i64 %220, 4294967295
  %223 = lshr i64 %220, 32
  %224 = mul nuw i64 %222, %223
  %225 = and i64 %221, 4294967295
  %226 = lshr i64 %221, 32
  %227 = mul nuw i64 %225, %226
  %228 = add i64 %213, %164
  %229 = add i64 %228, %224
  %230 = add i64 %215, %163
  %231 = add i64 %230, %227
  %232 = getelementptr inbounds nuw i8, ptr %171, i32 48
  %233 = load i64, ptr %232, align 1
  %234 = getelementptr inbounds nuw i8, ptr %171, i32 56
  %235 = load i64, ptr %234, align 1
  %236 = getelementptr inbounds nuw i8, ptr %173, i32 48
  %237 = load i64, ptr %236, align 8
  %238 = getelementptr inbounds nuw i8, ptr %173, i32 56
  %239 = load i64, ptr %238, align 8
  %240 = xor i64 %237, %233
  %241 = xor i64 %239, %235
  %242 = and i64 %240, 4294967295
  %243 = lshr i64 %240, 32
  %244 = mul nuw i64 %242, %243
  %245 = and i64 %241, 4294967295
  %246 = lshr i64 %241, 32
  %247 = mul nuw i64 %245, %246
  %248 = add i64 %233, %162
  %249 = add i64 %248, %244
  %250 = add i64 %235, %161
  %251 = add i64 %250, %247
  %252 = add nuw nsw i32 %169, 1
  %253 = icmp eq i32 %252, %157
  br i1 %253, label %254, label %160

254:                                              ; preds = %160, %146
  %255 = phi i64 [ %147, %146 ], [ %251, %160 ]
  %256 = phi i64 [ %148, %146 ], [ %249, %160 ]
  %257 = phi i64 [ %149, %146 ], [ %231, %160 ]
  %258 = phi i64 [ %150, %146 ], [ %229, %160 ]
  %259 = phi i64 [ %151, %146 ], [ %211, %160 ]
  %260 = phi i64 [ %152, %146 ], [ %209, %160 ]
  %261 = phi i64 [ %153, %146 ], [ %191, %160 ]
  %262 = phi i64 [ %154, %146 ], [ %189, %160 ]
  %263 = and i32 %1, 63
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %331, label %265

265:                                              ; preds = %254
  %266 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %267 = getelementptr inbounds i8, ptr %266, i32 -64
  %268 = load i64, ptr %267, align 1
  %269 = getelementptr inbounds i8, ptr %266, i32 -56
  %270 = load i64, ptr %269, align 1
  %271 = xor i64 %268, -1556992608276218209
  %272 = xor i64 %270, -4196251135427498811
  %273 = and i64 %271, 4294967295
  %274 = lshr i64 %271, 32
  %275 = mul nuw i64 %273, %274
  %276 = and i64 %272, 4294967295
  %277 = lshr i64 %272, 32
  %278 = mul nuw i64 %276, %277
  %279 = add i64 %268, %262
  %280 = add i64 %279, %275
  %281 = add i64 %270, %261
  %282 = add i64 %281, %278
  %283 = getelementptr inbounds i8, ptr %266, i32 -48
  %284 = load i64, ptr %283, align 1
  %285 = getelementptr inbounds i8, ptr %266, i32 -40
  %286 = load i64, ptr %285, align 1
  %287 = xor i64 %284, 1723580219865931905
  %288 = xor i64 %286, -3221803331004277491
  %289 = and i64 %287, 4294967295
  %290 = lshr i64 %287, 32
  %291 = mul nuw i64 %289, %290
  %292 = and i64 %288, 4294967295
  %293 = lshr i64 %288, 32
  %294 = mul nuw i64 %292, %293
  %295 = add i64 %284, %260
  %296 = add i64 %295, %291
  %297 = add i64 %286, %259
  %298 = add i64 %297, %294
  %299 = getelementptr inbounds i8, ptr %266, i32 -32
  %300 = load i64, ptr %299, align 1
  %301 = getelementptr inbounds i8, ptr %266, i32 -24
  %302 = load i64, ptr %301, align 1
  %303 = xor i64 %300, 3143064850383918358
  %304 = xor i64 %302, -8071399103737053674
  %305 = and i64 %303, 4294967295
  %306 = lshr i64 %303, 32
  %307 = mul nuw i64 %305, %306
  %308 = and i64 %304, 4294967295
  %309 = lshr i64 %304, 32
  %310 = mul nuw i64 %308, %309
  %311 = add i64 %300, %258
  %312 = add i64 %311, %307
  %313 = add i64 %302, %257
  %314 = add i64 %313, %310
  %315 = getelementptr inbounds i8, ptr %266, i32 -16
  %316 = load i64, ptr %315, align 1
  %317 = getelementptr inbounds i8, ptr %266, i32 -8
  %318 = load i64, ptr %317, align 1
  %319 = xor i64 %316, 5030012605302946040
  %320 = xor i64 %318, -5825401622958753077
  %321 = and i64 %319, 4294967295
  %322 = lshr i64 %319, 32
  %323 = mul nuw i64 %321, %322
  %324 = and i64 %320, 4294967295
  %325 = lshr i64 %320, 32
  %326 = mul nuw i64 %324, %325
  %327 = add i64 %316, %256
  %328 = add i64 %327, %323
  %329 = add i64 %318, %255
  %330 = add i64 %329, %326
  br label %331

331:                                              ; preds = %254, %265
  %332 = phi i64 [ %255, %254 ], [ %330, %265 ]
  %333 = phi i64 [ %256, %254 ], [ %328, %265 ]
  %334 = phi i64 [ %257, %254 ], [ %314, %265 ]
  %335 = phi i64 [ %258, %254 ], [ %312, %265 ]
  %336 = phi i64 [ %259, %254 ], [ %298, %265 ]
  %337 = phi i64 [ %260, %254 ], [ %296, %265 ]
  %338 = phi i64 [ %261, %254 ], [ %282, %265 ]
  %339 = phi i64 [ %262, %254 ], [ %280, %265 ]
  %340 = zext i32 %1 to i64
  %341 = mul i64 %340, -7046029288634856825
  %342 = xor i64 %339, 7914194659941938988
  %343 = xor i64 %338, -6611157965513653271
  %344 = lshr i64 %342, 32
  %345 = lshr i64 %343, 32
  %346 = mul nuw i64 %344, %345
  %347 = and i64 %342, 4294967295
  %348 = mul nuw i64 %347, %345
  %349 = and i64 %343, 4294967295
  %350 = mul nuw i64 %344, %349
  %351 = mul nuw i64 %347, %349
  %352 = shl i64 %348, 32
  %353 = add i64 %352, %351
  %354 = icmp ult i64 %353, %351
  %355 = zext i1 %354 to i64
  %356 = add i64 %348, %350
  %357 = shl i64 %356, 32
  %358 = add i64 %357, %351
  %359 = icmp ult i64 %358, %353
  %360 = zext i1 %359 to i64
  %361 = lshr i64 %348, 32
  %362 = add nuw i64 %361, %346
  %363 = lshr i64 %350, 32
  %364 = add nuw i64 %362, %363
  %365 = add nuw i64 %364, %355
  %366 = add nuw i64 %365, %360
  %367 = xor i64 %366, %358
  %368 = xor i64 %337, -1839215637059881052
  %369 = xor i64 %336, -3433288310154277810
  %370 = lshr i64 %368, 32
  %371 = lshr i64 %369, 32
  %372 = mul nuw i64 %370, %371
  %373 = and i64 %368, 4294967295
  %374 = mul nuw i64 %373, %371
  %375 = and i64 %369, 4294967295
  %376 = mul nuw i64 %370, %375
  %377 = mul nuw i64 %373, %375
  %378 = shl i64 %374, 32
  %379 = add i64 %378, %377
  %380 = icmp ult i64 %379, %377
  %381 = zext i1 %380 to i64
  %382 = add i64 %374, %376
  %383 = shl i64 %382, 32
  %384 = add i64 %383, %377
  %385 = icmp ult i64 %384, %379
  %386 = zext i1 %385 to i64
  %387 = lshr i64 %374, 32
  %388 = add nuw i64 %387, %372
  %389 = lshr i64 %376, 32
  %390 = add nuw i64 %388, %389
  %391 = add nuw i64 %390, %381
  %392 = add nuw i64 %391, %386
  %393 = xor i64 %392, %384
  %394 = xor i64 %335, 5046485836271438973
  %395 = xor i64 %334, -8055285457383852172
  %396 = lshr i64 %394, 32
  %397 = lshr i64 %395, 32
  %398 = mul nuw i64 %396, %397
  %399 = and i64 %394, 4294967295
  %400 = mul nuw i64 %399, %397
  %401 = and i64 %395, 4294967295
  %402 = mul nuw i64 %396, %401
  %403 = mul nuw i64 %399, %401
  %404 = shl i64 %400, 32
  %405 = add i64 %404, %403
  %406 = icmp ult i64 %405, %403
  %407 = zext i1 %406 to i64
  %408 = add i64 %400, %402
  %409 = shl i64 %408, 32
  %410 = add i64 %409, %403
  %411 = icmp ult i64 %410, %405
  %412 = zext i1 %411 to i64
  %413 = lshr i64 %400, 32
  %414 = add nuw i64 %413, %398
  %415 = lshr i64 %402, 32
  %416 = add nuw i64 %414, %415
  %417 = add nuw i64 %416, %407
  %418 = add nuw i64 %417, %412
  %419 = xor i64 %418, %410
  %420 = xor i64 %333, 5920048007935066598
  %421 = xor i64 %332, 7336514198459093435
  %422 = lshr i64 %420, 32
  %423 = lshr i64 %421, 32
  %424 = mul nuw i64 %422, %423
  %425 = and i64 %420, 4294967295
  %426 = mul nuw i64 %425, %423
  %427 = and i64 %421, 4294967295
  %428 = mul nuw i64 %422, %427
  %429 = mul nuw i64 %425, %427
  %430 = shl i64 %426, 32
  %431 = add i64 %430, %429
  %432 = icmp ult i64 %431, %429
  %433 = zext i1 %432 to i64
  %434 = add i64 %426, %428
  %435 = shl i64 %434, 32
  %436 = add i64 %435, %429
  %437 = icmp ult i64 %436, %431
  %438 = zext i1 %437 to i64
  %439 = lshr i64 %426, 32
  %440 = add nuw i64 %439, %424
  %441 = lshr i64 %428, 32
  %442 = add nuw i64 %440, %441
  %443 = add nuw i64 %442, %433
  %444 = add nuw i64 %443, %438
  %445 = xor i64 %444, %436
  %446 = add i64 %445, %341
  %447 = add i64 %446, %419
  %448 = add i64 %447, %393
  %449 = add i64 %448, %367
  %450 = lshr i64 %449, 37
  %451 = xor i64 %450, %449
  %452 = mul i64 %451, 1609587929392839161
  %453 = lshr i64 %452, 32
  %454 = xor i64 %453, %452
  ret i64 %454
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @XXH3_64bits_withSecret(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #12 {
  %5 = icmp ult i32 %1, 17
  br i1 %5, label %6, label %105

6:                                                ; preds = %4
  %7 = icmp samesign ugt i32 %1, 8
  br i1 %7, label %8, label %51

8:                                                ; preds = %6
  %9 = load i64, ptr %0, align 1
  %10 = load i64, ptr %2, align 1
  %11 = xor i64 %10, %9
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %13 = getelementptr inbounds i8, ptr %12, i32 -8
  %14 = load i64, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %2, i32 8
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %14
  %18 = zext nneg i32 %1 to i64
  %19 = lshr i64 %11, 32
  %20 = lshr i64 %17, 32
  %21 = mul nuw i64 %20, %19
  %22 = and i64 %11, 4294967295
  %23 = mul nuw i64 %20, %22
  %24 = and i64 %17, 4294967295
  %25 = mul nuw i64 %24, %19
  %26 = mul nuw i64 %24, %22
  %27 = shl i64 %23, 32
  %28 = add i64 %27, %26
  %29 = icmp ult i64 %28, %26
  %30 = zext i1 %29 to i64
  %31 = add i64 %23, %25
  %32 = shl i64 %31, 32
  %33 = add i64 %32, %26
  %34 = icmp ult i64 %33, %28
  %35 = zext i1 %34 to i64
  %36 = lshr i64 %23, 32
  %37 = add nuw i64 %36, %21
  %38 = lshr i64 %25, 32
  %39 = add nuw i64 %37, %38
  %40 = add nuw i64 %39, %30
  %41 = add nuw i64 %40, %35
  %42 = xor i64 %41, %33
  %43 = add i64 %11, %18
  %44 = add i64 %43, %17
  %45 = add i64 %44, %42
  %46 = lshr i64 %45, 37
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, 1609587929392839161
  %49 = lshr i64 %48, 32
  %50 = xor i64 %49, %48
  br label %415

51:                                               ; preds = %6
  %52 = icmp samesign ugt i32 %1, 3
  br i1 %52, label %53, label %77

53:                                               ; preds = %51
  %54 = load i32, ptr %0, align 1
  %55 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %56 = getelementptr inbounds i8, ptr %55, i32 -4
  %57 = load i32, ptr %56, align 1
  %58 = zext i32 %54 to i64
  %59 = zext i32 %57 to i64
  %60 = shl nuw i64 %59, 32
  %61 = or disjoint i64 %60, %58
  %62 = load i64, ptr %2, align 1
  %63 = xor i64 %61, %62
  %64 = zext nneg i32 %1 to i64
  %65 = lshr i64 %63, 51
  %66 = xor i64 %65, %63
  %67 = mul i64 %66, 2654435761
  %68 = add i64 %67, %64
  %69 = lshr i64 %68, 47
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, -4417276706812531889
  %72 = lshr i64 %71, 37
  %73 = xor i64 %72, %71
  %74 = mul i64 %73, 1609587929392839161
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  br label %415

77:                                               ; preds = %51
  %78 = icmp eq i32 %1, 0
  br i1 %78, label %415, label %79

79:                                               ; preds = %77
  %80 = load i8, ptr %0, align 1
  %81 = lshr i32 %1, 1
  %82 = getelementptr inbounds nuw i8, ptr %0, i32 %81
  %83 = load i8, ptr %82, align 1
  %84 = getelementptr i8, ptr %0, i32 %1
  %85 = getelementptr i8, ptr %84, i32 -1
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %80 to i32
  %88 = zext i8 %83 to i32
  %89 = shl nuw nsw i32 %88, 8
  %90 = or disjoint i32 %89, %87
  %91 = zext i8 %86 to i32
  %92 = shl nuw nsw i32 %91, 16
  %93 = or disjoint i32 %90, %92
  %94 = shl nuw nsw i32 %1, 24
  %95 = or disjoint i32 %93, %94
  %96 = load i32, ptr %2, align 1
  %97 = xor i32 %95, %96
  %98 = zext i32 %97 to i64
  %99 = mul i64 %98, -7046029288634856825
  %100 = lshr i64 %99, 37
  %101 = xor i64 %100, %99
  %102 = mul i64 %101, 1609587929392839161
  %103 = lshr i64 %102, 32
  %104 = xor i64 %103, %102
  br label %415

105:                                              ; preds = %4
  %106 = icmp ult i32 %1, 129
  br i1 %106, label %107, label %409

107:                                              ; preds = %105
  %108 = zext nneg i32 %1 to i64
  %109 = mul i64 %108, -7046029288634856825
  %110 = icmp samesign ugt i32 %1, 32
  br i1 %110, label %111, label %333

111:                                              ; preds = %107
  %112 = icmp samesign ugt i32 %1, 64
  br i1 %112, label %113, label %260

113:                                              ; preds = %111
  %114 = icmp samesign ugt i32 %1, 96
  br i1 %114, label %115, label %187

115:                                              ; preds = %113
  %116 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %117 = getelementptr inbounds nuw i8, ptr %2, i32 96
  %118 = load i64, ptr %116, align 1
  %119 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %120 = load i64, ptr %119, align 1
  %121 = load i64, ptr %117, align 1
  %122 = xor i64 %121, %118
  %123 = getelementptr inbounds nuw i8, ptr %2, i32 104
  %124 = load i64, ptr %123, align 1
  %125 = xor i64 %124, %120
  %126 = lshr i64 %122, 32
  %127 = lshr i64 %125, 32
  %128 = mul nuw i64 %127, %126
  %129 = and i64 %122, 4294967295
  %130 = mul nuw i64 %127, %129
  %131 = and i64 %125, 4294967295
  %132 = mul nuw i64 %131, %126
  %133 = mul nuw i64 %131, %129
  %134 = shl i64 %130, 32
  %135 = add i64 %134, %133
  %136 = icmp ult i64 %135, %133
  %137 = zext i1 %136 to i64
  %138 = add i64 %130, %132
  %139 = shl i64 %138, 32
  %140 = add i64 %139, %133
  %141 = icmp ult i64 %140, %135
  %142 = zext i1 %141 to i64
  %143 = lshr i64 %130, 32
  %144 = add nuw i64 %143, %128
  %145 = lshr i64 %132, 32
  %146 = add nuw i64 %144, %145
  %147 = add nuw i64 %146, %137
  %148 = add nuw i64 %147, %142
  %149 = xor i64 %148, %140
  %150 = add i64 %149, %109
  %151 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %152 = getelementptr inbounds i8, ptr %151, i32 -64
  %153 = getelementptr inbounds nuw i8, ptr %2, i32 112
  %154 = load i64, ptr %152, align 1
  %155 = getelementptr inbounds i8, ptr %151, i32 -56
  %156 = load i64, ptr %155, align 1
  %157 = load i64, ptr %153, align 1
  %158 = xor i64 %157, %154
  %159 = getelementptr inbounds nuw i8, ptr %2, i32 120
  %160 = load i64, ptr %159, align 1
  %161 = xor i64 %160, %156
  %162 = lshr i64 %158, 32
  %163 = lshr i64 %161, 32
  %164 = mul nuw i64 %163, %162
  %165 = and i64 %158, 4294967295
  %166 = mul nuw i64 %163, %165
  %167 = and i64 %161, 4294967295
  %168 = mul nuw i64 %167, %162
  %169 = mul nuw i64 %167, %165
  %170 = shl i64 %166, 32
  %171 = add i64 %170, %169
  %172 = icmp ult i64 %171, %169
  %173 = zext i1 %172 to i64
  %174 = add i64 %166, %168
  %175 = shl i64 %174, 32
  %176 = add i64 %175, %169
  %177 = icmp ult i64 %176, %171
  %178 = zext i1 %177 to i64
  %179 = lshr i64 %166, 32
  %180 = add nuw i64 %179, %164
  %181 = lshr i64 %168, 32
  %182 = add nuw i64 %180, %181
  %183 = add nuw i64 %182, %173
  %184 = add nuw i64 %183, %178
  %185 = xor i64 %184, %176
  %186 = add i64 %150, %185
  br label %187

187:                                              ; preds = %115, %113
  %188 = phi i64 [ %186, %115 ], [ %109, %113 ]
  %189 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %190 = getelementptr inbounds nuw i8, ptr %2, i32 64
  %191 = load i64, ptr %189, align 1
  %192 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %193 = load i64, ptr %192, align 1
  %194 = load i64, ptr %190, align 1
  %195 = xor i64 %194, %191
  %196 = getelementptr inbounds nuw i8, ptr %2, i32 72
  %197 = load i64, ptr %196, align 1
  %198 = xor i64 %197, %193
  %199 = lshr i64 %195, 32
  %200 = lshr i64 %198, 32
  %201 = mul nuw i64 %200, %199
  %202 = and i64 %195, 4294967295
  %203 = mul nuw i64 %200, %202
  %204 = and i64 %198, 4294967295
  %205 = mul nuw i64 %204, %199
  %206 = mul nuw i64 %204, %202
  %207 = shl i64 %203, 32
  %208 = add i64 %207, %206
  %209 = icmp ult i64 %208, %206
  %210 = zext i1 %209 to i64
  %211 = add i64 %203, %205
  %212 = shl i64 %211, 32
  %213 = add i64 %212, %206
  %214 = icmp ult i64 %213, %208
  %215 = zext i1 %214 to i64
  %216 = lshr i64 %203, 32
  %217 = add nuw i64 %216, %201
  %218 = lshr i64 %205, 32
  %219 = add nuw i64 %217, %218
  %220 = add nuw i64 %219, %210
  %221 = add nuw i64 %220, %215
  %222 = xor i64 %221, %213
  %223 = add i64 %222, %188
  %224 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %225 = getelementptr inbounds i8, ptr %224, i32 -48
  %226 = getelementptr inbounds nuw i8, ptr %2, i32 80
  %227 = load i64, ptr %225, align 1
  %228 = getelementptr inbounds i8, ptr %224, i32 -40
  %229 = load i64, ptr %228, align 1
  %230 = load i64, ptr %226, align 1
  %231 = xor i64 %230, %227
  %232 = getelementptr inbounds nuw i8, ptr %2, i32 88
  %233 = load i64, ptr %232, align 1
  %234 = xor i64 %233, %229
  %235 = lshr i64 %231, 32
  %236 = lshr i64 %234, 32
  %237 = mul nuw i64 %236, %235
  %238 = and i64 %231, 4294967295
  %239 = mul nuw i64 %236, %238
  %240 = and i64 %234, 4294967295
  %241 = mul nuw i64 %240, %235
  %242 = mul nuw i64 %240, %238
  %243 = shl i64 %239, 32
  %244 = add i64 %243, %242
  %245 = icmp ult i64 %244, %242
  %246 = zext i1 %245 to i64
  %247 = add i64 %239, %241
  %248 = shl i64 %247, 32
  %249 = add i64 %248, %242
  %250 = icmp ult i64 %249, %244
  %251 = zext i1 %250 to i64
  %252 = lshr i64 %239, 32
  %253 = add nuw i64 %252, %237
  %254 = lshr i64 %241, 32
  %255 = add nuw i64 %253, %254
  %256 = add nuw i64 %255, %246
  %257 = add nuw i64 %256, %251
  %258 = xor i64 %257, %249
  %259 = add i64 %223, %258
  br label %260

260:                                              ; preds = %187, %111
  %261 = phi i64 [ %259, %187 ], [ %109, %111 ]
  %262 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %263 = getelementptr inbounds nuw i8, ptr %2, i32 32
  %264 = load i64, ptr %262, align 1
  %265 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %266 = load i64, ptr %265, align 1
  %267 = load i64, ptr %263, align 1
  %268 = xor i64 %267, %264
  %269 = getelementptr inbounds nuw i8, ptr %2, i32 40
  %270 = load i64, ptr %269, align 1
  %271 = xor i64 %270, %266
  %272 = lshr i64 %268, 32
  %273 = lshr i64 %271, 32
  %274 = mul nuw i64 %273, %272
  %275 = and i64 %268, 4294967295
  %276 = mul nuw i64 %273, %275
  %277 = and i64 %271, 4294967295
  %278 = mul nuw i64 %277, %272
  %279 = mul nuw i64 %277, %275
  %280 = shl i64 %276, 32
  %281 = add i64 %280, %279
  %282 = icmp ult i64 %281, %279
  %283 = zext i1 %282 to i64
  %284 = add i64 %276, %278
  %285 = shl i64 %284, 32
  %286 = add i64 %285, %279
  %287 = icmp ult i64 %286, %281
  %288 = zext i1 %287 to i64
  %289 = lshr i64 %276, 32
  %290 = add nuw i64 %289, %274
  %291 = lshr i64 %278, 32
  %292 = add nuw i64 %290, %291
  %293 = add nuw i64 %292, %283
  %294 = add nuw i64 %293, %288
  %295 = xor i64 %294, %286
  %296 = add i64 %295, %261
  %297 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %298 = getelementptr inbounds i8, ptr %297, i32 -32
  %299 = getelementptr inbounds nuw i8, ptr %2, i32 48
  %300 = load i64, ptr %298, align 1
  %301 = getelementptr inbounds i8, ptr %297, i32 -24
  %302 = load i64, ptr %301, align 1
  %303 = load i64, ptr %299, align 1
  %304 = xor i64 %303, %300
  %305 = getelementptr inbounds nuw i8, ptr %2, i32 56
  %306 = load i64, ptr %305, align 1
  %307 = xor i64 %306, %302
  %308 = lshr i64 %304, 32
  %309 = lshr i64 %307, 32
  %310 = mul nuw i64 %309, %308
  %311 = and i64 %304, 4294967295
  %312 = mul nuw i64 %309, %311
  %313 = and i64 %307, 4294967295
  %314 = mul nuw i64 %313, %308
  %315 = mul nuw i64 %313, %311
  %316 = shl i64 %312, 32
  %317 = add i64 %316, %315
  %318 = icmp ult i64 %317, %315
  %319 = zext i1 %318 to i64
  %320 = add i64 %312, %314
  %321 = shl i64 %320, 32
  %322 = add i64 %321, %315
  %323 = icmp ult i64 %322, %317
  %324 = zext i1 %323 to i64
  %325 = lshr i64 %312, 32
  %326 = add nuw i64 %325, %310
  %327 = lshr i64 %314, 32
  %328 = add nuw i64 %326, %327
  %329 = add nuw i64 %328, %319
  %330 = add nuw i64 %329, %324
  %331 = xor i64 %330, %322
  %332 = add i64 %296, %331
  br label %333

333:                                              ; preds = %107, %260
  %334 = phi i64 [ %332, %260 ], [ %109, %107 ]
  %335 = load i64, ptr %0, align 1
  %336 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %337 = load i64, ptr %336, align 1
  %338 = load i64, ptr %2, align 1
  %339 = xor i64 %338, %335
  %340 = getelementptr inbounds nuw i8, ptr %2, i32 8
  %341 = load i64, ptr %340, align 1
  %342 = xor i64 %341, %337
  %343 = lshr i64 %339, 32
  %344 = lshr i64 %342, 32
  %345 = mul nuw i64 %344, %343
  %346 = and i64 %339, 4294967295
  %347 = mul nuw i64 %344, %346
  %348 = and i64 %342, 4294967295
  %349 = mul nuw i64 %348, %343
  %350 = mul nuw i64 %348, %346
  %351 = shl i64 %347, 32
  %352 = add i64 %351, %350
  %353 = icmp ult i64 %352, %350
  %354 = zext i1 %353 to i64
  %355 = add i64 %347, %349
  %356 = shl i64 %355, 32
  %357 = add i64 %356, %350
  %358 = icmp ult i64 %357, %352
  %359 = zext i1 %358 to i64
  %360 = lshr i64 %347, 32
  %361 = add nuw i64 %360, %345
  %362 = lshr i64 %349, 32
  %363 = add nuw i64 %361, %362
  %364 = add nuw i64 %363, %354
  %365 = add nuw i64 %364, %359
  %366 = xor i64 %365, %357
  %367 = add i64 %366, %334
  %368 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %369 = getelementptr inbounds i8, ptr %368, i32 -16
  %370 = getelementptr inbounds nuw i8, ptr %2, i32 16
  %371 = load i64, ptr %369, align 1
  %372 = getelementptr inbounds i8, ptr %368, i32 -8
  %373 = load i64, ptr %372, align 1
  %374 = load i64, ptr %370, align 1
  %375 = xor i64 %374, %371
  %376 = getelementptr inbounds nuw i8, ptr %2, i32 24
  %377 = load i64, ptr %376, align 1
  %378 = xor i64 %377, %373
  %379 = lshr i64 %375, 32
  %380 = lshr i64 %378, 32
  %381 = mul nuw i64 %380, %379
  %382 = and i64 %375, 4294967295
  %383 = mul nuw i64 %380, %382
  %384 = and i64 %378, 4294967295
  %385 = mul nuw i64 %384, %379
  %386 = mul nuw i64 %384, %382
  %387 = shl i64 %383, 32
  %388 = add i64 %387, %386
  %389 = icmp ult i64 %388, %386
  %390 = zext i1 %389 to i64
  %391 = add i64 %383, %385
  %392 = shl i64 %391, 32
  %393 = add i64 %392, %386
  %394 = icmp ult i64 %393, %388
  %395 = zext i1 %394 to i64
  %396 = lshr i64 %383, 32
  %397 = add nuw i64 %396, %381
  %398 = lshr i64 %385, 32
  %399 = add nuw i64 %397, %398
  %400 = add nuw i64 %399, %390
  %401 = add nuw i64 %400, %395
  %402 = xor i64 %401, %393
  %403 = add i64 %367, %402
  %404 = lshr i64 %403, 37
  %405 = xor i64 %404, %403
  %406 = mul i64 %405, 1609587929392839161
  %407 = lshr i64 %406, 32
  %408 = xor i64 %407, %406
  br label %415

409:                                              ; preds = %105
  %410 = icmp ult i32 %1, 241
  br i1 %410, label %411, label %413

411:                                              ; preds = %409
  %412 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef 0)
  br label %415

413:                                              ; preds = %409
  %414 = tail call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %415

415:                                              ; preds = %79, %77, %53, %8, %413, %411, %333
  %416 = phi i64 [ %408, %333 ], [ %412, %411 ], [ %414, %413 ], [ %50, %8 ], [ %76, %53 ], [ %104, %79 ], [ 0, %77 ]
  ret i64 %416
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read)
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef readonly %0, i32 noundef range(i32 241, 0) %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #13 {
  %5 = add i32 %3, -64
  %6 = lshr i32 %5, 3
  %7 = shl i32 %6, 6
  %8 = udiv i32 %1, %7
  %9 = icmp ugt i32 %7, %1
  br i1 %9, label %232, label %10

10:                                               ; preds = %4
  %11 = icmp ult i32 %5, 8
  %12 = getelementptr inbounds nuw i8, ptr %2, i32 %3
  %13 = getelementptr inbounds i8, ptr %12, i32 -64
  br i1 %11, label %14, label %30

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %12, i32 -56
  %16 = getelementptr inbounds i8, ptr %12, i32 -48
  %17 = getelementptr inbounds i8, ptr %12, i32 -40
  %18 = getelementptr inbounds i8, ptr %12, i32 -32
  %19 = getelementptr inbounds i8, ptr %12, i32 -24
  %20 = getelementptr inbounds i8, ptr %12, i32 -16
  %21 = getelementptr inbounds i8, ptr %12, i32 -8
  %22 = load i64, ptr %13, align 1
  %23 = load i64, ptr %15, align 1
  %24 = load i64, ptr %16, align 1
  %25 = load i64, ptr %17, align 1
  %26 = load i64, ptr %18, align 1
  %27 = load i64, ptr %19, align 1
  %28 = load i64, ptr %20, align 1
  %29 = load i64, ptr %21, align 1
  br label %188

30:                                               ; preds = %10
  %31 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %32 = getelementptr inbounds i8, ptr %12, i32 -56
  %33 = getelementptr inbounds i8, ptr %12, i32 -48
  %34 = getelementptr inbounds i8, ptr %12, i32 -40
  %35 = getelementptr inbounds i8, ptr %12, i32 -32
  %36 = getelementptr inbounds i8, ptr %12, i32 -24
  %37 = getelementptr inbounds i8, ptr %12, i32 -16
  %38 = getelementptr inbounds i8, ptr %12, i32 -8
  %39 = load i64, ptr %13, align 1
  %40 = load i64, ptr %32, align 1
  %41 = load i64, ptr %33, align 1
  %42 = load i64, ptr %34, align 1
  %43 = load i64, ptr %35, align 1
  %44 = load i64, ptr %36, align 1
  %45 = load i64, ptr %37, align 1
  %46 = load i64, ptr %38, align 1
  br label %47

47:                                               ; preds = %153, %30
  %48 = phi i64 [ 2654435761, %30 ], [ %185, %153 ]
  %49 = phi i64 [ 2870177450012600261, %30 ], [ %181, %153 ]
  %50 = phi i64 [ 2246822519, %30 ], [ %177, %153 ]
  %51 = phi i64 [ -8796714831421723037, %30 ], [ %173, %153 ]
  %52 = phi i64 [ 1609587929392839161, %30 ], [ %169, %153 ]
  %53 = phi i64 [ -4417276706812531889, %30 ], [ %165, %153 ]
  %54 = phi i64 [ -7046029288634856825, %30 ], [ %161, %153 ]
  %55 = phi i64 [ 3266489917, %30 ], [ %157, %153 ]
  %56 = phi i32 [ 0, %30 ], [ %186, %153 ]
  %57 = mul i32 %56, %7
  %58 = getelementptr inbounds nuw i8, ptr %0, i32 %57
  br label %59

59:                                               ; preds = %59, %47
  %60 = phi i64 [ %48, %47 ], [ %150, %59 ]
  %61 = phi i64 [ %49, %47 ], [ %148, %59 ]
  %62 = phi i64 [ %50, %47 ], [ %130, %59 ]
  %63 = phi i64 [ %51, %47 ], [ %128, %59 ]
  %64 = phi i64 [ %52, %47 ], [ %110, %59 ]
  %65 = phi i64 [ %53, %47 ], [ %108, %59 ]
  %66 = phi i64 [ %54, %47 ], [ %90, %59 ]
  %67 = phi i64 [ %55, %47 ], [ %88, %59 ]
  %68 = phi i32 [ 0, %47 ], [ %151, %59 ]
  %69 = shl i32 %68, 6
  %70 = getelementptr inbounds nuw i8, ptr %58, i32 %69
  %71 = shl i32 %68, 3
  %72 = getelementptr inbounds nuw i8, ptr %2, i32 %71
  %73 = load i64, ptr %70, align 1
  %74 = getelementptr inbounds nuw i8, ptr %70, i32 8
  %75 = load i64, ptr %74, align 1
  %76 = load i64, ptr %72, align 1
  %77 = getelementptr inbounds nuw i8, ptr %72, i32 8
  %78 = load i64, ptr %77, align 1
  %79 = xor i64 %76, %73
  %80 = xor i64 %78, %75
  %81 = and i64 %79, 4294967295
  %82 = lshr i64 %79, 32
  %83 = mul nuw i64 %81, %82
  %84 = and i64 %80, 4294967295
  %85 = lshr i64 %80, 32
  %86 = mul nuw i64 %84, %85
  %87 = add i64 %73, %67
  %88 = add i64 %87, %83
  %89 = add i64 %75, %66
  %90 = add i64 %89, %86
  %91 = getelementptr inbounds nuw i8, ptr %70, i32 16
  %92 = load i64, ptr %91, align 1
  %93 = getelementptr inbounds nuw i8, ptr %70, i32 24
  %94 = load i64, ptr %93, align 1
  %95 = getelementptr inbounds nuw i8, ptr %72, i32 16
  %96 = load i64, ptr %95, align 1
  %97 = getelementptr inbounds nuw i8, ptr %72, i32 24
  %98 = load i64, ptr %97, align 1
  %99 = xor i64 %96, %92
  %100 = xor i64 %98, %94
  %101 = and i64 %99, 4294967295
  %102 = lshr i64 %99, 32
  %103 = mul nuw i64 %101, %102
  %104 = and i64 %100, 4294967295
  %105 = lshr i64 %100, 32
  %106 = mul nuw i64 %104, %105
  %107 = add i64 %92, %65
  %108 = add i64 %107, %103
  %109 = add i64 %94, %64
  %110 = add i64 %109, %106
  %111 = getelementptr inbounds nuw i8, ptr %70, i32 32
  %112 = load i64, ptr %111, align 1
  %113 = getelementptr inbounds nuw i8, ptr %70, i32 40
  %114 = load i64, ptr %113, align 1
  %115 = getelementptr inbounds nuw i8, ptr %72, i32 32
  %116 = load i64, ptr %115, align 1
  %117 = getelementptr inbounds nuw i8, ptr %72, i32 40
  %118 = load i64, ptr %117, align 1
  %119 = xor i64 %116, %112
  %120 = xor i64 %118, %114
  %121 = and i64 %119, 4294967295
  %122 = lshr i64 %119, 32
  %123 = mul nuw i64 %121, %122
  %124 = and i64 %120, 4294967295
  %125 = lshr i64 %120, 32
  %126 = mul nuw i64 %124, %125
  %127 = add i64 %112, %63
  %128 = add i64 %127, %123
  %129 = add i64 %114, %62
  %130 = add i64 %129, %126
  %131 = getelementptr inbounds nuw i8, ptr %70, i32 48
  %132 = load i64, ptr %131, align 1
  %133 = getelementptr inbounds nuw i8, ptr %70, i32 56
  %134 = load i64, ptr %133, align 1
  %135 = getelementptr inbounds nuw i8, ptr %72, i32 48
  %136 = load i64, ptr %135, align 1
  %137 = getelementptr inbounds nuw i8, ptr %72, i32 56
  %138 = load i64, ptr %137, align 1
  %139 = xor i64 %136, %132
  %140 = xor i64 %138, %134
  %141 = and i64 %139, 4294967295
  %142 = lshr i64 %139, 32
  %143 = mul nuw i64 %141, %142
  %144 = and i64 %140, 4294967295
  %145 = lshr i64 %140, 32
  %146 = mul nuw i64 %144, %145
  %147 = add i64 %132, %61
  %148 = add i64 %147, %143
  %149 = add i64 %134, %60
  %150 = add i64 %149, %146
  %151 = add nuw nsw i32 %68, 1
  %152 = icmp eq i32 %151, %31
  br i1 %152, label %153, label %59

153:                                              ; preds = %59
  %154 = lshr i64 %88, 47
  %155 = xor i64 %154, %39
  %156 = xor i64 %155, %88
  %157 = mul i64 %156, 2654435761
  %158 = lshr i64 %90, 47
  %159 = xor i64 %158, %40
  %160 = xor i64 %159, %90
  %161 = mul i64 %160, 2654435761
  %162 = lshr i64 %108, 47
  %163 = xor i64 %162, %41
  %164 = xor i64 %163, %108
  %165 = mul i64 %164, 2654435761
  %166 = lshr i64 %110, 47
  %167 = xor i64 %166, %42
  %168 = xor i64 %167, %110
  %169 = mul i64 %168, 2654435761
  %170 = lshr i64 %128, 47
  %171 = xor i64 %170, %43
  %172 = xor i64 %171, %128
  %173 = mul i64 %172, 2654435761
  %174 = lshr i64 %130, 47
  %175 = xor i64 %174, %44
  %176 = xor i64 %175, %130
  %177 = mul i64 %176, 2654435761
  %178 = lshr i64 %148, 47
  %179 = xor i64 %178, %45
  %180 = xor i64 %179, %148
  %181 = mul i64 %180, 2654435761
  %182 = lshr i64 %150, 47
  %183 = xor i64 %182, %46
  %184 = xor i64 %183, %150
  %185 = mul i64 %184, 2654435761
  %186 = add nuw i32 %56, 1
  %187 = icmp ult i32 %186, %8
  br i1 %187, label %47, label %232

188:                                              ; preds = %188, %14
  %189 = phi i64 [ %229, %188 ], [ 2654435761, %14 ]
  %190 = phi i64 [ %225, %188 ], [ 2870177450012600261, %14 ]
  %191 = phi i64 [ %221, %188 ], [ 2246822519, %14 ]
  %192 = phi i64 [ %217, %188 ], [ -8796714831421723037, %14 ]
  %193 = phi i64 [ %213, %188 ], [ 1609587929392839161, %14 ]
  %194 = phi i64 [ %209, %188 ], [ -4417276706812531889, %14 ]
  %195 = phi i64 [ %205, %188 ], [ -7046029288634856825, %14 ]
  %196 = phi i64 [ %201, %188 ], [ 3266489917, %14 ]
  %197 = phi i32 [ %230, %188 ], [ 0, %14 ]
  %198 = lshr i64 %196, 47
  %199 = xor i64 %198, %22
  %200 = xor i64 %199, %196
  %201 = mul i64 %200, 2654435761
  %202 = lshr i64 %195, 47
  %203 = xor i64 %202, %23
  %204 = xor i64 %203, %195
  %205 = mul i64 %204, 2654435761
  %206 = lshr i64 %194, 47
  %207 = xor i64 %206, %24
  %208 = xor i64 %207, %194
  %209 = mul i64 %208, 2654435761
  %210 = lshr i64 %193, 47
  %211 = xor i64 %210, %25
  %212 = xor i64 %211, %193
  %213 = mul i64 %212, 2654435761
  %214 = lshr i64 %192, 47
  %215 = xor i64 %214, %26
  %216 = xor i64 %215, %192
  %217 = mul i64 %216, 2654435761
  %218 = lshr i64 %191, 47
  %219 = xor i64 %218, %27
  %220 = xor i64 %219, %191
  %221 = mul i64 %220, 2654435761
  %222 = lshr i64 %190, 47
  %223 = xor i64 %222, %28
  %224 = xor i64 %223, %190
  %225 = mul i64 %224, 2654435761
  %226 = lshr i64 %189, 47
  %227 = xor i64 %226, %29
  %228 = xor i64 %227, %189
  %229 = mul i64 %228, 2654435761
  %230 = add nuw i32 %197, 1
  %231 = icmp ult i32 %230, %8
  br i1 %231, label %188, label %232

232:                                              ; preds = %153, %188, %4
  %233 = phi i64 [ 2654435761, %4 ], [ %229, %188 ], [ %185, %153 ]
  %234 = phi i64 [ 2870177450012600261, %4 ], [ %225, %188 ], [ %181, %153 ]
  %235 = phi i64 [ 2246822519, %4 ], [ %221, %188 ], [ %177, %153 ]
  %236 = phi i64 [ -8796714831421723037, %4 ], [ %217, %188 ], [ %173, %153 ]
  %237 = phi i64 [ 1609587929392839161, %4 ], [ %213, %188 ], [ %169, %153 ]
  %238 = phi i64 [ -4417276706812531889, %4 ], [ %209, %188 ], [ %165, %153 ]
  %239 = phi i64 [ -7046029288634856825, %4 ], [ %205, %188 ], [ %161, %153 ]
  %240 = phi i64 [ 3266489917, %4 ], [ %201, %188 ], [ %157, %153 ]
  %241 = mul i32 %8, %7
  %242 = sub i32 %1, %241
  %243 = lshr i32 %242, 6
  %244 = getelementptr inbounds nuw i8, ptr %0, i32 %241
  %245 = icmp ult i32 %242, 64
  br i1 %245, label %340, label %246

246:                                              ; preds = %232, %246
  %247 = phi i64 [ %337, %246 ], [ %233, %232 ]
  %248 = phi i64 [ %335, %246 ], [ %234, %232 ]
  %249 = phi i64 [ %317, %246 ], [ %235, %232 ]
  %250 = phi i64 [ %315, %246 ], [ %236, %232 ]
  %251 = phi i64 [ %297, %246 ], [ %237, %232 ]
  %252 = phi i64 [ %295, %246 ], [ %238, %232 ]
  %253 = phi i64 [ %277, %246 ], [ %239, %232 ]
  %254 = phi i64 [ %275, %246 ], [ %240, %232 ]
  %255 = phi i32 [ %338, %246 ], [ 0, %232 ]
  %256 = shl i32 %255, 6
  %257 = getelementptr inbounds nuw i8, ptr %244, i32 %256
  %258 = shl i32 %255, 3
  %259 = getelementptr inbounds nuw i8, ptr %2, i32 %258
  %260 = load i64, ptr %257, align 1
  %261 = getelementptr inbounds nuw i8, ptr %257, i32 8
  %262 = load i64, ptr %261, align 1
  %263 = load i64, ptr %259, align 1
  %264 = getelementptr inbounds nuw i8, ptr %259, i32 8
  %265 = load i64, ptr %264, align 1
  %266 = xor i64 %263, %260
  %267 = xor i64 %265, %262
  %268 = and i64 %266, 4294967295
  %269 = lshr i64 %266, 32
  %270 = mul nuw i64 %268, %269
  %271 = and i64 %267, 4294967295
  %272 = lshr i64 %267, 32
  %273 = mul nuw i64 %271, %272
  %274 = add i64 %260, %254
  %275 = add i64 %274, %270
  %276 = add i64 %262, %253
  %277 = add i64 %276, %273
  %278 = getelementptr inbounds nuw i8, ptr %257, i32 16
  %279 = load i64, ptr %278, align 1
  %280 = getelementptr inbounds nuw i8, ptr %257, i32 24
  %281 = load i64, ptr %280, align 1
  %282 = getelementptr inbounds nuw i8, ptr %259, i32 16
  %283 = load i64, ptr %282, align 1
  %284 = getelementptr inbounds nuw i8, ptr %259, i32 24
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %283, %279
  %287 = xor i64 %285, %281
  %288 = and i64 %286, 4294967295
  %289 = lshr i64 %286, 32
  %290 = mul nuw i64 %288, %289
  %291 = and i64 %287, 4294967295
  %292 = lshr i64 %287, 32
  %293 = mul nuw i64 %291, %292
  %294 = add i64 %279, %252
  %295 = add i64 %294, %290
  %296 = add i64 %281, %251
  %297 = add i64 %296, %293
  %298 = getelementptr inbounds nuw i8, ptr %257, i32 32
  %299 = load i64, ptr %298, align 1
  %300 = getelementptr inbounds nuw i8, ptr %257, i32 40
  %301 = load i64, ptr %300, align 1
  %302 = getelementptr inbounds nuw i8, ptr %259, i32 32
  %303 = load i64, ptr %302, align 1
  %304 = getelementptr inbounds nuw i8, ptr %259, i32 40
  %305 = load i64, ptr %304, align 1
  %306 = xor i64 %303, %299
  %307 = xor i64 %305, %301
  %308 = and i64 %306, 4294967295
  %309 = lshr i64 %306, 32
  %310 = mul nuw i64 %308, %309
  %311 = and i64 %307, 4294967295
  %312 = lshr i64 %307, 32
  %313 = mul nuw i64 %311, %312
  %314 = add i64 %299, %250
  %315 = add i64 %314, %310
  %316 = add i64 %301, %249
  %317 = add i64 %316, %313
  %318 = getelementptr inbounds nuw i8, ptr %257, i32 48
  %319 = load i64, ptr %318, align 1
  %320 = getelementptr inbounds nuw i8, ptr %257, i32 56
  %321 = load i64, ptr %320, align 1
  %322 = getelementptr inbounds nuw i8, ptr %259, i32 48
  %323 = load i64, ptr %322, align 1
  %324 = getelementptr inbounds nuw i8, ptr %259, i32 56
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %323, %319
  %327 = xor i64 %325, %321
  %328 = and i64 %326, 4294967295
  %329 = lshr i64 %326, 32
  %330 = mul nuw i64 %328, %329
  %331 = and i64 %327, 4294967295
  %332 = lshr i64 %327, 32
  %333 = mul nuw i64 %331, %332
  %334 = add i64 %319, %248
  %335 = add i64 %334, %330
  %336 = add i64 %321, %247
  %337 = add i64 %336, %333
  %338 = add nuw nsw i32 %255, 1
  %339 = icmp samesign ult i32 %338, %243
  br i1 %339, label %246, label %340

340:                                              ; preds = %246, %232
  %341 = phi i64 [ %233, %232 ], [ %337, %246 ]
  %342 = phi i64 [ %234, %232 ], [ %335, %246 ]
  %343 = phi i64 [ %235, %232 ], [ %317, %246 ]
  %344 = phi i64 [ %236, %232 ], [ %315, %246 ]
  %345 = phi i64 [ %237, %232 ], [ %297, %246 ]
  %346 = phi i64 [ %238, %232 ], [ %295, %246 ]
  %347 = phi i64 [ %239, %232 ], [ %277, %246 ]
  %348 = phi i64 [ %240, %232 ], [ %275, %246 ]
  %349 = and i32 %1, 63
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %434, label %351

351:                                              ; preds = %340
  %352 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %353 = getelementptr inbounds i8, ptr %352, i32 -64
  %354 = getelementptr inbounds nuw i8, ptr %2, i32 %3
  %355 = getelementptr inbounds i8, ptr %354, i32 -71
  %356 = load i64, ptr %353, align 1
  %357 = getelementptr inbounds i8, ptr %352, i32 -56
  %358 = load i64, ptr %357, align 1
  %359 = load i64, ptr %355, align 1
  %360 = getelementptr inbounds i8, ptr %354, i32 -63
  %361 = load i64, ptr %360, align 1
  %362 = xor i64 %359, %356
  %363 = xor i64 %361, %358
  %364 = and i64 %362, 4294967295
  %365 = lshr i64 %362, 32
  %366 = mul nuw i64 %364, %365
  %367 = and i64 %363, 4294967295
  %368 = lshr i64 %363, 32
  %369 = mul nuw i64 %367, %368
  %370 = add i64 %356, %348
  %371 = add i64 %370, %366
  %372 = add i64 %358, %347
  %373 = add i64 %372, %369
  %374 = getelementptr inbounds i8, ptr %352, i32 -48
  %375 = load i64, ptr %374, align 1
  %376 = getelementptr inbounds i8, ptr %352, i32 -40
  %377 = load i64, ptr %376, align 1
  %378 = getelementptr inbounds i8, ptr %354, i32 -55
  %379 = load i64, ptr %378, align 1
  %380 = getelementptr inbounds i8, ptr %354, i32 -47
  %381 = load i64, ptr %380, align 1
  %382 = xor i64 %379, %375
  %383 = xor i64 %381, %377
  %384 = and i64 %382, 4294967295
  %385 = lshr i64 %382, 32
  %386 = mul nuw i64 %384, %385
  %387 = and i64 %383, 4294967295
  %388 = lshr i64 %383, 32
  %389 = mul nuw i64 %387, %388
  %390 = add i64 %375, %346
  %391 = add i64 %390, %386
  %392 = add i64 %377, %345
  %393 = add i64 %392, %389
  %394 = getelementptr inbounds i8, ptr %352, i32 -32
  %395 = load i64, ptr %394, align 1
  %396 = getelementptr inbounds i8, ptr %352, i32 -24
  %397 = load i64, ptr %396, align 1
  %398 = getelementptr inbounds i8, ptr %354, i32 -39
  %399 = load i64, ptr %398, align 1
  %400 = getelementptr inbounds i8, ptr %354, i32 -31
  %401 = load i64, ptr %400, align 1
  %402 = xor i64 %399, %395
  %403 = xor i64 %401, %397
  %404 = and i64 %402, 4294967295
  %405 = lshr i64 %402, 32
  %406 = mul nuw i64 %404, %405
  %407 = and i64 %403, 4294967295
  %408 = lshr i64 %403, 32
  %409 = mul nuw i64 %407, %408
  %410 = add i64 %395, %344
  %411 = add i64 %410, %406
  %412 = add i64 %397, %343
  %413 = add i64 %412, %409
  %414 = getelementptr inbounds i8, ptr %352, i32 -16
  %415 = load i64, ptr %414, align 1
  %416 = getelementptr inbounds i8, ptr %352, i32 -8
  %417 = load i64, ptr %416, align 1
  %418 = getelementptr inbounds i8, ptr %354, i32 -23
  %419 = load i64, ptr %418, align 1
  %420 = getelementptr inbounds i8, ptr %354, i32 -15
  %421 = load i64, ptr %420, align 1
  %422 = xor i64 %419, %415
  %423 = xor i64 %421, %417
  %424 = and i64 %422, 4294967295
  %425 = lshr i64 %422, 32
  %426 = mul nuw i64 %424, %425
  %427 = and i64 %423, 4294967295
  %428 = lshr i64 %423, 32
  %429 = mul nuw i64 %427, %428
  %430 = add i64 %415, %342
  %431 = add i64 %430, %426
  %432 = add i64 %417, %341
  %433 = add i64 %432, %429
  br label %434

434:                                              ; preds = %340, %351
  %435 = phi i64 [ %341, %340 ], [ %433, %351 ]
  %436 = phi i64 [ %342, %340 ], [ %431, %351 ]
  %437 = phi i64 [ %343, %340 ], [ %413, %351 ]
  %438 = phi i64 [ %344, %340 ], [ %411, %351 ]
  %439 = phi i64 [ %345, %340 ], [ %393, %351 ]
  %440 = phi i64 [ %346, %340 ], [ %391, %351 ]
  %441 = phi i64 [ %347, %340 ], [ %373, %351 ]
  %442 = phi i64 [ %348, %340 ], [ %371, %351 ]
  %443 = getelementptr inbounds nuw i8, ptr %2, i32 11
  %444 = zext i32 %1 to i64
  %445 = mul i64 %444, -7046029288634856825
  %446 = load i64, ptr %443, align 1
  %447 = xor i64 %446, %442
  %448 = getelementptr inbounds nuw i8, ptr %2, i32 19
  %449 = load i64, ptr %448, align 1
  %450 = xor i64 %449, %441
  %451 = lshr i64 %447, 32
  %452 = lshr i64 %450, 32
  %453 = mul nuw i64 %452, %451
  %454 = and i64 %447, 4294967295
  %455 = mul nuw i64 %452, %454
  %456 = and i64 %450, 4294967295
  %457 = mul nuw i64 %456, %451
  %458 = mul nuw i64 %456, %454
  %459 = shl i64 %455, 32
  %460 = add i64 %459, %458
  %461 = icmp ult i64 %460, %458
  %462 = zext i1 %461 to i64
  %463 = add i64 %455, %457
  %464 = shl i64 %463, 32
  %465 = add i64 %464, %458
  %466 = icmp ult i64 %465, %460
  %467 = zext i1 %466 to i64
  %468 = lshr i64 %455, 32
  %469 = add nuw i64 %468, %453
  %470 = lshr i64 %457, 32
  %471 = add nuw i64 %469, %470
  %472 = add nuw i64 %471, %462
  %473 = add nuw i64 %472, %467
  %474 = xor i64 %473, %465
  %475 = add i64 %474, %445
  %476 = getelementptr inbounds nuw i8, ptr %2, i32 27
  %477 = load i64, ptr %476, align 1
  %478 = xor i64 %477, %440
  %479 = getelementptr inbounds nuw i8, ptr %2, i32 35
  %480 = load i64, ptr %479, align 1
  %481 = xor i64 %480, %439
  %482 = lshr i64 %478, 32
  %483 = lshr i64 %481, 32
  %484 = mul nuw i64 %483, %482
  %485 = and i64 %478, 4294967295
  %486 = mul nuw i64 %483, %485
  %487 = and i64 %481, 4294967295
  %488 = mul nuw i64 %487, %482
  %489 = mul nuw i64 %487, %485
  %490 = shl i64 %486, 32
  %491 = add i64 %490, %489
  %492 = icmp ult i64 %491, %489
  %493 = zext i1 %492 to i64
  %494 = add i64 %486, %488
  %495 = shl i64 %494, 32
  %496 = add i64 %495, %489
  %497 = icmp ult i64 %496, %491
  %498 = zext i1 %497 to i64
  %499 = lshr i64 %486, 32
  %500 = add nuw i64 %499, %484
  %501 = lshr i64 %488, 32
  %502 = add nuw i64 %500, %501
  %503 = add nuw i64 %502, %493
  %504 = add nuw i64 %503, %498
  %505 = xor i64 %504, %496
  %506 = add i64 %475, %505
  %507 = getelementptr inbounds nuw i8, ptr %2, i32 43
  %508 = load i64, ptr %507, align 1
  %509 = xor i64 %508, %438
  %510 = getelementptr inbounds nuw i8, ptr %2, i32 51
  %511 = load i64, ptr %510, align 1
  %512 = xor i64 %511, %437
  %513 = lshr i64 %509, 32
  %514 = lshr i64 %512, 32
  %515 = mul nuw i64 %514, %513
  %516 = and i64 %509, 4294967295
  %517 = mul nuw i64 %514, %516
  %518 = and i64 %512, 4294967295
  %519 = mul nuw i64 %518, %513
  %520 = mul nuw i64 %518, %516
  %521 = shl i64 %517, 32
  %522 = add i64 %521, %520
  %523 = icmp ult i64 %522, %520
  %524 = zext i1 %523 to i64
  %525 = add i64 %517, %519
  %526 = shl i64 %525, 32
  %527 = add i64 %526, %520
  %528 = icmp ult i64 %527, %522
  %529 = zext i1 %528 to i64
  %530 = lshr i64 %517, 32
  %531 = add nuw i64 %530, %515
  %532 = lshr i64 %519, 32
  %533 = add nuw i64 %531, %532
  %534 = add nuw i64 %533, %524
  %535 = add nuw i64 %534, %529
  %536 = xor i64 %535, %527
  %537 = add i64 %506, %536
  %538 = getelementptr inbounds nuw i8, ptr %2, i32 59
  %539 = load i64, ptr %538, align 1
  %540 = xor i64 %539, %436
  %541 = getelementptr inbounds nuw i8, ptr %2, i32 67
  %542 = load i64, ptr %541, align 1
  %543 = xor i64 %542, %435
  %544 = lshr i64 %540, 32
  %545 = lshr i64 %543, 32
  %546 = mul nuw i64 %545, %544
  %547 = and i64 %540, 4294967295
  %548 = mul nuw i64 %545, %547
  %549 = and i64 %543, 4294967295
  %550 = mul nuw i64 %549, %544
  %551 = mul nuw i64 %549, %547
  %552 = shl i64 %548, 32
  %553 = add i64 %552, %551
  %554 = icmp ult i64 %553, %551
  %555 = zext i1 %554 to i64
  %556 = add i64 %548, %550
  %557 = shl i64 %556, 32
  %558 = add i64 %557, %551
  %559 = icmp ult i64 %558, %553
  %560 = zext i1 %559 to i64
  %561 = lshr i64 %548, 32
  %562 = add nuw i64 %561, %546
  %563 = lshr i64 %550, 32
  %564 = add nuw i64 %562, %563
  %565 = add nuw i64 %564, %555
  %566 = add nuw i64 %565, %560
  %567 = xor i64 %566, %558
  %568 = add i64 %537, %567
  %569 = lshr i64 %568, 37
  %570 = xor i64 %569, %568
  %571 = mul i64 %570, 1609587929392839161
  %572 = lshr i64 %571, 32
  %573 = xor i64 %572, %571
  ret i64 %573
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = icmp ult i32 %1, 17
  br i1 %4, label %5, label %103

5:                                                ; preds = %3
  %6 = icmp samesign ugt i32 %1, 8
  br i1 %6, label %7, label %49

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = add i64 %2, -4734510112055689544
  %10 = xor i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %12 = getelementptr inbounds i8, ptr %11, i32 -8
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 2066345149520216444, %2
  %15 = xor i64 %13, %14
  %16 = zext nneg i32 %1 to i64
  %17 = lshr i64 %10, 32
  %18 = lshr i64 %15, 32
  %19 = mul nuw i64 %18, %17
  %20 = and i64 %10, 4294967295
  %21 = mul nuw i64 %18, %20
  %22 = and i64 %15, 4294967295
  %23 = mul nuw i64 %22, %17
  %24 = mul nuw i64 %22, %20
  %25 = shl i64 %21, 32
  %26 = add i64 %25, %24
  %27 = icmp ult i64 %26, %24
  %28 = zext i1 %27 to i64
  %29 = add i64 %21, %23
  %30 = shl i64 %29, 32
  %31 = add i64 %30, %24
  %32 = icmp ult i64 %31, %26
  %33 = zext i1 %32 to i64
  %34 = lshr i64 %21, 32
  %35 = add nuw i64 %34, %19
  %36 = lshr i64 %23, 32
  %37 = add nuw i64 %35, %36
  %38 = add nuw i64 %37, %28
  %39 = add nuw i64 %38, %33
  %40 = xor i64 %39, %31
  %41 = add i64 %10, %16
  %42 = add i64 %41, %15
  %43 = add i64 %42, %40
  %44 = lshr i64 %43, 37
  %45 = xor i64 %44, %43
  %46 = mul i64 %45, 1609587929392839161
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  br label %398

49:                                               ; preds = %5
  %50 = icmp samesign ugt i32 %1, 3
  br i1 %50, label %51, label %75

51:                                               ; preds = %49
  %52 = load i32, ptr %0, align 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %54 = getelementptr inbounds i8, ptr %53, i32 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %52 to i64
  %57 = zext i32 %55 to i64
  %58 = shl nuw i64 %57, 32
  %59 = or disjoint i64 %58, %56
  %60 = add i64 %2, -4734510112055689544
  %61 = xor i64 %59, %60
  %62 = zext nneg i32 %1 to i64
  %63 = lshr i64 %61, 51
  %64 = xor i64 %63, %61
  %65 = mul i64 %64, 2654435761
  %66 = add i64 %65, %62
  %67 = lshr i64 %66, 47
  %68 = xor i64 %67, %66
  %69 = mul i64 %68, -4417276706812531889
  %70 = lshr i64 %69, 37
  %71 = xor i64 %70, %69
  %72 = mul i64 %71, 1609587929392839161
  %73 = lshr i64 %72, 32
  %74 = xor i64 %73, %72
  br label %398

75:                                               ; preds = %49
  %76 = icmp eq i32 %1, 0
  br i1 %76, label %398, label %77

77:                                               ; preds = %75
  %78 = load i8, ptr %0, align 1
  %79 = lshr i32 %1, 1
  %80 = getelementptr inbounds nuw i8, ptr %0, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr i8, ptr %0, i32 %1
  %83 = getelementptr i8, ptr %82, i32 -1
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %78 to i32
  %86 = zext i8 %81 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = or disjoint i32 %87, %85
  %89 = zext i8 %84 to i32
  %90 = shl nuw nsw i32 %89, 16
  %91 = or disjoint i32 %88, %90
  %92 = shl nuw nsw i32 %1, 24
  %93 = or disjoint i32 %91, %92
  %94 = zext nneg i32 %93 to i64
  %95 = add i64 %2, 963444408
  %96 = xor i64 %95, %94
  %97 = mul i64 %96, -7046029288634856825
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587929392839161
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %398

103:                                              ; preds = %3
  %104 = icmp ult i32 %1, 129
  br i1 %104, label %105, label %392

105:                                              ; preds = %103
  %106 = zext nneg i32 %1 to i64
  %107 = mul i64 %106, -7046029288634856825
  %108 = icmp samesign ugt i32 %1, 32
  br i1 %108, label %109, label %319

109:                                              ; preds = %105
  %110 = icmp samesign ugt i32 %1, 64
  br i1 %110, label %111, label %250

111:                                              ; preds = %109
  %112 = icmp samesign ugt i32 %1, 96
  br i1 %112, label %113, label %181

113:                                              ; preds = %111
  %114 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %117 = load i64, ptr %116, align 1
  %118 = add i64 %2, 4554437623014685352
  %119 = xor i64 %115, %118
  %120 = sub i64 2111919702937427193, %2
  %121 = xor i64 %117, %120
  %122 = lshr i64 %119, 32
  %123 = lshr i64 %121, 32
  %124 = mul nuw i64 %123, %122
  %125 = and i64 %119, 4294967295
  %126 = mul nuw i64 %123, %125
  %127 = and i64 %121, 4294967295
  %128 = mul nuw i64 %127, %122
  %129 = mul nuw i64 %127, %125
  %130 = shl i64 %126, 32
  %131 = add i64 %130, %129
  %132 = icmp ult i64 %131, %129
  %133 = zext i1 %132 to i64
  %134 = add i64 %126, %128
  %135 = shl i64 %134, 32
  %136 = add i64 %135, %129
  %137 = icmp ult i64 %136, %131
  %138 = zext i1 %137 to i64
  %139 = lshr i64 %126, 32
  %140 = add nuw i64 %139, %124
  %141 = lshr i64 %128, 32
  %142 = add nuw i64 %140, %141
  %143 = add nuw i64 %142, %133
  %144 = add nuw i64 %143, %138
  %145 = xor i64 %144, %136
  %146 = add i64 %145, %107
  %147 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %148 = getelementptr inbounds i8, ptr %147, i32 -64
  %149 = load i64, ptr %148, align 1
  %150 = getelementptr inbounds i8, ptr %147, i32 -56
  %151 = load i64, ptr %150, align 1
  %152 = add i64 %2, 3556072174620004746
  %153 = xor i64 %149, %152
  %154 = sub i64 7238261902898274248, %2
  %155 = xor i64 %151, %154
  %156 = lshr i64 %153, 32
  %157 = lshr i64 %155, 32
  %158 = mul nuw i64 %157, %156
  %159 = and i64 %153, 4294967295
  %160 = mul nuw i64 %157, %159
  %161 = and i64 %155, 4294967295
  %162 = mul nuw i64 %161, %156
  %163 = mul nuw i64 %161, %159
  %164 = shl i64 %160, 32
  %165 = add i64 %164, %163
  %166 = icmp ult i64 %165, %163
  %167 = zext i1 %166 to i64
  %168 = add i64 %160, %162
  %169 = shl i64 %168, 32
  %170 = add i64 %169, %163
  %171 = icmp ult i64 %170, %165
  %172 = zext i1 %171 to i64
  %173 = lshr i64 %160, 32
  %174 = add nuw i64 %173, %158
  %175 = lshr i64 %162, 32
  %176 = add nuw i64 %174, %175
  %177 = add nuw i64 %176, %167
  %178 = add nuw i64 %177, %172
  %179 = xor i64 %178, %170
  %180 = add i64 %146, %179
  br label %181

181:                                              ; preds = %113, %111
  %182 = phi i64 [ %180, %113 ], [ %107, %111 ]
  %183 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %184 = load i64, ptr %183, align 1
  %185 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %186 = load i64, ptr %185, align 1
  %187 = add i64 %2, -3818837453329782724
  %188 = xor i64 %184, %187
  %189 = sub i64 -6688317018830679928, %2
  %190 = xor i64 %186, %189
  %191 = lshr i64 %188, 32
  %192 = lshr i64 %190, 32
  %193 = mul nuw i64 %192, %191
  %194 = and i64 %188, 4294967295
  %195 = mul nuw i64 %192, %194
  %196 = and i64 %190, 4294967295
  %197 = mul nuw i64 %196, %191
  %198 = mul nuw i64 %196, %194
  %199 = shl i64 %195, 32
  %200 = add i64 %199, %198
  %201 = icmp ult i64 %200, %198
  %202 = zext i1 %201 to i64
  %203 = add i64 %195, %197
  %204 = shl i64 %203, 32
  %205 = add i64 %204, %198
  %206 = icmp ult i64 %205, %200
  %207 = zext i1 %206 to i64
  %208 = lshr i64 %195, 32
  %209 = add nuw i64 %208, %193
  %210 = lshr i64 %197, 32
  %211 = add nuw i64 %209, %210
  %212 = add nuw i64 %211, %202
  %213 = add nuw i64 %212, %207
  %214 = xor i64 %213, %205
  %215 = add i64 %214, %182
  %216 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %217 = getelementptr inbounds i8, ptr %216, i32 -48
  %218 = load i64, ptr %217, align 1
  %219 = getelementptr inbounds i8, ptr %216, i32 -40
  %220 = load i64, ptr %219, align 1
  %221 = add i64 %2, 5690594596133299313
  %222 = xor i64 %218, %221
  %223 = sub i64 -2833645246901970632, %2
  %224 = xor i64 %220, %223
  %225 = lshr i64 %222, 32
  %226 = lshr i64 %224, 32
  %227 = mul nuw i64 %226, %225
  %228 = and i64 %222, 4294967295
  %229 = mul nuw i64 %226, %228
  %230 = and i64 %224, 4294967295
  %231 = mul nuw i64 %230, %225
  %232 = mul nuw i64 %230, %228
  %233 = shl i64 %229, 32
  %234 = add i64 %233, %232
  %235 = icmp ult i64 %234, %232
  %236 = zext i1 %235 to i64
  %237 = add i64 %229, %231
  %238 = shl i64 %237, 32
  %239 = add i64 %238, %232
  %240 = icmp ult i64 %239, %234
  %241 = zext i1 %240 to i64
  %242 = lshr i64 %229, 32
  %243 = add nuw i64 %242, %227
  %244 = lshr i64 %231, 32
  %245 = add nuw i64 %243, %244
  %246 = add nuw i64 %245, %236
  %247 = add nuw i64 %246, %241
  %248 = xor i64 %247, %239
  %249 = add i64 %215, %248
  br label %250

250:                                              ; preds = %181, %109
  %251 = phi i64 [ %249, %181 ], [ %107, %109 ]
  %252 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %253 = load i64, ptr %252, align 1
  %254 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %255 = load i64, ptr %254, align 1
  %256 = add i64 %2, 8711581037947681227
  %257 = xor i64 %253, %256
  %258 = sub i64 2410270004345854594, %2
  %259 = xor i64 %255, %258
  %260 = lshr i64 %257, 32
  %261 = lshr i64 %259, 32
  %262 = mul nuw i64 %261, %260
  %263 = and i64 %257, 4294967295
  %264 = mul nuw i64 %261, %263
  %265 = and i64 %259, 4294967295
  %266 = mul nuw i64 %265, %260
  %267 = mul nuw i64 %265, %263
  %268 = shl i64 %264, 32
  %269 = add i64 %268, %267
  %270 = icmp ult i64 %269, %267
  %271 = zext i1 %270 to i64
  %272 = add i64 %264, %266
  %273 = shl i64 %272, 32
  %274 = add i64 %273, %267
  %275 = icmp ult i64 %274, %269
  %276 = zext i1 %275 to i64
  %277 = lshr i64 %264, 32
  %278 = add nuw i64 %277, %262
  %279 = lshr i64 %266, 32
  %280 = add nuw i64 %278, %279
  %281 = add nuw i64 %280, %271
  %282 = add nuw i64 %281, %276
  %283 = xor i64 %282, %274
  %284 = add i64 %283, %251
  %285 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %286 = getelementptr inbounds i8, ptr %285, i32 -32
  %287 = load i64, ptr %286, align 1
  %288 = getelementptr inbounds i8, ptr %285, i32 -24
  %289 = load i64, ptr %288, align 1
  %290 = add i64 %2, -8204357891075471176
  %291 = xor i64 %287, %290
  %292 = sub i64 5487137525590930912, %2
  %293 = xor i64 %289, %292
  %294 = lshr i64 %291, 32
  %295 = lshr i64 %293, 32
  %296 = mul nuw i64 %295, %294
  %297 = and i64 %291, 4294967295
  %298 = mul nuw i64 %295, %297
  %299 = and i64 %293, 4294967295
  %300 = mul nuw i64 %299, %294
  %301 = mul nuw i64 %299, %297
  %302 = shl i64 %298, 32
  %303 = add i64 %302, %301
  %304 = icmp ult i64 %303, %301
  %305 = zext i1 %304 to i64
  %306 = add i64 %298, %300
  %307 = shl i64 %306, 32
  %308 = add i64 %307, %301
  %309 = icmp ult i64 %308, %303
  %310 = zext i1 %309 to i64
  %311 = lshr i64 %298, 32
  %312 = add nuw i64 %311, %296
  %313 = lshr i64 %300, 32
  %314 = add nuw i64 %312, %313
  %315 = add nuw i64 %314, %305
  %316 = add nuw i64 %315, %310
  %317 = xor i64 %316, %308
  %318 = add i64 %284, %317
  br label %319

319:                                              ; preds = %105, %250
  %320 = phi i64 [ %318, %250 ], [ %107, %105 ]
  %321 = load i64, ptr %0, align 1
  %322 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %323 = load i64, ptr %322, align 1
  %324 = add i64 %2, -4734510112055689544
  %325 = xor i64 %321, %324
  %326 = sub i64 2066345149520216444, %2
  %327 = xor i64 %323, %326
  %328 = lshr i64 %325, 32
  %329 = lshr i64 %327, 32
  %330 = mul nuw i64 %329, %328
  %331 = and i64 %325, 4294967295
  %332 = mul nuw i64 %329, %331
  %333 = and i64 %327, 4294967295
  %334 = mul nuw i64 %333, %328
  %335 = mul nuw i64 %333, %331
  %336 = shl i64 %332, 32
  %337 = add i64 %336, %335
  %338 = icmp ult i64 %337, %335
  %339 = zext i1 %338 to i64
  %340 = add i64 %332, %334
  %341 = shl i64 %340, 32
  %342 = add i64 %341, %335
  %343 = icmp ult i64 %342, %337
  %344 = zext i1 %343 to i64
  %345 = lshr i64 %332, 32
  %346 = add nuw i64 %345, %330
  %347 = lshr i64 %334, 32
  %348 = add nuw i64 %346, %347
  %349 = add nuw i64 %348, %339
  %350 = add nuw i64 %349, %344
  %351 = xor i64 %350, %342
  %352 = add i64 %351, %320
  %353 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %354 = getelementptr inbounds i8, ptr %353, i32 -16
  %355 = load i64, ptr %354, align 1
  %356 = getelementptr inbounds i8, ptr %353, i32 -8
  %357 = load i64, ptr %356, align 1
  %358 = add i64 %2, -2623469361688619810
  %359 = xor i64 %355, %358
  %360 = sub i64 2262974939099578482, %2
  %361 = xor i64 %357, %360
  %362 = lshr i64 %359, 32
  %363 = lshr i64 %361, 32
  %364 = mul nuw i64 %363, %362
  %365 = and i64 %359, 4294967295
  %366 = mul nuw i64 %363, %365
  %367 = and i64 %361, 4294967295
  %368 = mul nuw i64 %367, %362
  %369 = mul nuw i64 %367, %365
  %370 = shl i64 %366, 32
  %371 = add i64 %370, %369
  %372 = icmp ult i64 %371, %369
  %373 = zext i1 %372 to i64
  %374 = add i64 %366, %368
  %375 = shl i64 %374, 32
  %376 = add i64 %375, %369
  %377 = icmp ult i64 %376, %371
  %378 = zext i1 %377 to i64
  %379 = lshr i64 %366, 32
  %380 = add nuw i64 %379, %364
  %381 = lshr i64 %368, 32
  %382 = add nuw i64 %380, %381
  %383 = add nuw i64 %382, %373
  %384 = add nuw i64 %383, %378
  %385 = xor i64 %384, %376
  %386 = add i64 %352, %385
  %387 = lshr i64 %386, 37
  %388 = xor i64 %387, %386
  %389 = mul i64 %388, 1609587929392839161
  %390 = lshr i64 %389, 32
  %391 = xor i64 %390, %389
  br label %398

392:                                              ; preds = %103
  %393 = icmp ult i32 %1, 241
  br i1 %393, label %394, label %396

394:                                              ; preds = %392
  %395 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @kSecret, i64 noundef %2)
  br label %398

396:                                              ; preds = %392
  %397 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i32 noundef %1, i64 noundef %2)
  br label %398

398:                                              ; preds = %77, %75, %51, %7, %396, %394, %319
  %399 = phi i64 [ %391, %319 ], [ %395, %394 ], [ %397, %396 ], [ %48, %7 ], [ %74, %51 ], [ %102, %77 ], [ 0, %75 ]
  ret i64 %399
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read)
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i32 noundef range(i32 241, 0) %1, i64 noundef %2) unnamed_addr #13 {
  %4 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #26
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %56, label %6

6:                                                ; preds = %3
  %7 = add i64 %2, -4734510112055689544
  store i64 %7, ptr %4, align 8
  %8 = getelementptr inbounds nuw i8, ptr %4, i32 8
  %9 = sub i64 2066345149520216444, %2
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %4, i32 16
  %11 = add i64 %2, -2623469361688619810
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i32 24
  %13 = sub i64 2262974939099578482, %2
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i32 32
  %15 = add i64 %2, 8711581037947681227
  store i64 %15, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %4, i32 40
  %17 = sub i64 2410270004345854594, %2
  store i64 %17, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %4, i32 48
  %19 = add i64 %2, -8204357891075471176
  store i64 %19, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %4, i32 56
  %21 = sub i64 5487137525590930912, %2
  store i64 %21, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %4, i32 64
  %23 = add i64 %2, -3818837453329782724
  store i64 %23, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %4, i32 72
  %25 = sub i64 -6688317018830679928, %2
  store i64 %25, ptr %24, align 8
  %26 = getelementptr inbounds nuw i8, ptr %4, i32 80
  %27 = add i64 %2, 5690594596133299313
  store i64 %27, ptr %26, align 8
  %28 = getelementptr inbounds nuw i8, ptr %4, i32 88
  %29 = sub i64 -2833645246901970632, %2
  store i64 %29, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %4, i32 96
  %31 = add i64 %2, 4554437623014685352
  store i64 %31, ptr %30, align 8
  %32 = getelementptr inbounds nuw i8, ptr %4, i32 104
  %33 = sub i64 2111919702937427193, %2
  store i64 %33, ptr %32, align 8
  %34 = getelementptr inbounds nuw i8, ptr %4, i32 112
  %35 = add i64 %2, 3556072174620004746
  store i64 %35, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %4, i32 120
  %37 = sub i64 7238261902898274248, %2
  store i64 %37, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %4, i32 128
  %39 = add i64 %2, -4329134394285701654
  store i64 %39, ptr %38, align 8
  %40 = getelementptr inbounds nuw i8, ptr %4, i32 136
  %41 = sub i64 -1485321483350670907, %2
  store i64 %41, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %4, i32 144
  %43 = add i64 %2, 5321830579834785047
  store i64 %43, ptr %42, align 8
  %44 = getelementptr inbounds nuw i8, ptr %4, i32 152
  %45 = sub i64 -7032137544937171245, %2
  store i64 %45, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %4, i32 160
  %47 = add i64 %2, -242834301215959509
  store i64 %47, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %4, i32 168
  %49 = sub i64 -3588858202114426737, %2
  store i64 %49, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %4, i32 176
  %51 = add i64 %2, 2883454493032893253
  store i64 %51, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %4, i32 184
  %53 = sub i64 9097354517224871855, %2
  store i64 %53, ptr %52, align 8
  %54 = lshr i32 %1, 10
  %55 = icmp ult i32 %1, 1024
  br i1 %55, label %199, label %58

56:                                               ; preds = %3
  %57 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i32 noundef %1)
  br label %540

58:                                               ; preds = %6, %164
  %59 = phi i64 [ %196, %164 ], [ 2654435761, %6 ]
  %60 = phi i64 [ %192, %164 ], [ 2870177450012600261, %6 ]
  %61 = phi i64 [ %188, %164 ], [ 2246822519, %6 ]
  %62 = phi i64 [ %184, %164 ], [ -8796714831421723037, %6 ]
  %63 = phi i64 [ %180, %164 ], [ 1609587929392839161, %6 ]
  %64 = phi i64 [ %176, %164 ], [ -4417276706812531889, %6 ]
  %65 = phi i64 [ %172, %164 ], [ -7046029288634856825, %6 ]
  %66 = phi i64 [ %168, %164 ], [ 3266489917, %6 ]
  %67 = phi i32 [ %197, %164 ], [ 0, %6 ]
  %68 = shl i32 %67, 10
  %69 = getelementptr inbounds nuw i8, ptr %0, i32 %68
  br label %70

70:                                               ; preds = %70, %58
  %71 = phi i64 [ %59, %58 ], [ %161, %70 ]
  %72 = phi i64 [ %60, %58 ], [ %159, %70 ]
  %73 = phi i64 [ %61, %58 ], [ %141, %70 ]
  %74 = phi i64 [ %62, %58 ], [ %139, %70 ]
  %75 = phi i64 [ %63, %58 ], [ %121, %70 ]
  %76 = phi i64 [ %64, %58 ], [ %119, %70 ]
  %77 = phi i64 [ %65, %58 ], [ %101, %70 ]
  %78 = phi i64 [ %66, %58 ], [ %99, %70 ]
  %79 = phi i32 [ 0, %58 ], [ %162, %70 ]
  %80 = shl i32 %79, 6
  %81 = getelementptr inbounds nuw i8, ptr %69, i32 %80
  %82 = shl i32 %79, 3
  %83 = getelementptr inbounds nuw i8, ptr %4, i32 %82
  %84 = load i64, ptr %81, align 1
  %85 = getelementptr inbounds nuw i8, ptr %81, i32 8
  %86 = load i64, ptr %85, align 1
  %87 = load i64, ptr %83, align 8
  %88 = getelementptr inbounds nuw i8, ptr %83, i32 8
  %89 = load i64, ptr %88, align 8
  %90 = xor i64 %87, %84
  %91 = xor i64 %89, %86
  %92 = and i64 %90, 4294967295
  %93 = lshr i64 %90, 32
  %94 = mul nuw i64 %92, %93
  %95 = and i64 %91, 4294967295
  %96 = lshr i64 %91, 32
  %97 = mul nuw i64 %95, %96
  %98 = add i64 %84, %78
  %99 = add i64 %98, %94
  %100 = add i64 %86, %77
  %101 = add i64 %100, %97
  %102 = getelementptr inbounds nuw i8, ptr %81, i32 16
  %103 = load i64, ptr %102, align 1
  %104 = getelementptr inbounds nuw i8, ptr %81, i32 24
  %105 = load i64, ptr %104, align 1
  %106 = getelementptr inbounds nuw i8, ptr %83, i32 16
  %107 = load i64, ptr %106, align 8
  %108 = getelementptr inbounds nuw i8, ptr %83, i32 24
  %109 = load i64, ptr %108, align 8
  %110 = xor i64 %107, %103
  %111 = xor i64 %109, %105
  %112 = and i64 %110, 4294967295
  %113 = lshr i64 %110, 32
  %114 = mul nuw i64 %112, %113
  %115 = and i64 %111, 4294967295
  %116 = lshr i64 %111, 32
  %117 = mul nuw i64 %115, %116
  %118 = add i64 %103, %76
  %119 = add i64 %118, %114
  %120 = add i64 %105, %75
  %121 = add i64 %120, %117
  %122 = getelementptr inbounds nuw i8, ptr %81, i32 32
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %81, i32 40
  %125 = load i64, ptr %124, align 1
  %126 = getelementptr inbounds nuw i8, ptr %83, i32 32
  %127 = load i64, ptr %126, align 8
  %128 = getelementptr inbounds nuw i8, ptr %83, i32 40
  %129 = load i64, ptr %128, align 8
  %130 = xor i64 %127, %123
  %131 = xor i64 %129, %125
  %132 = and i64 %130, 4294967295
  %133 = lshr i64 %130, 32
  %134 = mul nuw i64 %132, %133
  %135 = and i64 %131, 4294967295
  %136 = lshr i64 %131, 32
  %137 = mul nuw i64 %135, %136
  %138 = add i64 %123, %74
  %139 = add i64 %138, %134
  %140 = add i64 %125, %73
  %141 = add i64 %140, %137
  %142 = getelementptr inbounds nuw i8, ptr %81, i32 48
  %143 = load i64, ptr %142, align 1
  %144 = getelementptr inbounds nuw i8, ptr %81, i32 56
  %145 = load i64, ptr %144, align 1
  %146 = getelementptr inbounds nuw i8, ptr %83, i32 48
  %147 = load i64, ptr %146, align 8
  %148 = getelementptr inbounds nuw i8, ptr %83, i32 56
  %149 = load i64, ptr %148, align 8
  %150 = xor i64 %147, %143
  %151 = xor i64 %149, %145
  %152 = and i64 %150, 4294967295
  %153 = lshr i64 %150, 32
  %154 = mul nuw i64 %152, %153
  %155 = and i64 %151, 4294967295
  %156 = lshr i64 %151, 32
  %157 = mul nuw i64 %155, %156
  %158 = add i64 %143, %72
  %159 = add i64 %158, %154
  %160 = add i64 %145, %71
  %161 = add i64 %160, %157
  %162 = add nuw nsw i32 %79, 1
  %163 = icmp eq i32 %162, 16
  br i1 %163, label %164, label %70

164:                                              ; preds = %70
  %165 = lshr i64 %99, 47
  %166 = xor i64 %165, %39
  %167 = xor i64 %166, %99
  %168 = mul i64 %167, 2654435761
  %169 = lshr i64 %101, 47
  %170 = xor i64 %169, %41
  %171 = xor i64 %170, %101
  %172 = mul i64 %171, 2654435761
  %173 = lshr i64 %119, 47
  %174 = xor i64 %173, %43
  %175 = xor i64 %174, %119
  %176 = mul i64 %175, 2654435761
  %177 = lshr i64 %121, 47
  %178 = xor i64 %177, %45
  %179 = xor i64 %178, %121
  %180 = mul i64 %179, 2654435761
  %181 = lshr i64 %139, 47
  %182 = xor i64 %181, %47
  %183 = xor i64 %182, %139
  %184 = mul i64 %183, 2654435761
  %185 = lshr i64 %141, 47
  %186 = xor i64 %185, %49
  %187 = xor i64 %186, %141
  %188 = mul i64 %187, 2654435761
  %189 = lshr i64 %159, 47
  %190 = xor i64 %189, %51
  %191 = xor i64 %190, %159
  %192 = mul i64 %191, 2654435761
  %193 = lshr i64 %161, 47
  %194 = xor i64 %193, %53
  %195 = xor i64 %194, %161
  %196 = mul i64 %195, 2654435761
  %197 = add nuw nsw i32 %67, 1
  %198 = icmp eq i32 %197, %54
  br i1 %198, label %199, label %58

199:                                              ; preds = %164, %6
  %200 = phi i64 [ 2654435761, %6 ], [ %196, %164 ]
  %201 = phi i64 [ 2870177450012600261, %6 ], [ %192, %164 ]
  %202 = phi i64 [ 2246822519, %6 ], [ %188, %164 ]
  %203 = phi i64 [ -8796714831421723037, %6 ], [ %184, %164 ]
  %204 = phi i64 [ 1609587929392839161, %6 ], [ %180, %164 ]
  %205 = phi i64 [ -4417276706812531889, %6 ], [ %176, %164 ]
  %206 = phi i64 [ -7046029288634856825, %6 ], [ %172, %164 ]
  %207 = phi i64 [ 3266489917, %6 ], [ %168, %164 ]
  %208 = and i32 %1, -1024
  %209 = and i32 %1, 1023
  %210 = lshr i32 %209, 6
  %211 = getelementptr inbounds nuw i8, ptr %0, i32 %208
  %212 = icmp samesign ult i32 %209, 64
  br i1 %212, label %307, label %213

213:                                              ; preds = %199, %213
  %214 = phi i64 [ %304, %213 ], [ %200, %199 ]
  %215 = phi i64 [ %302, %213 ], [ %201, %199 ]
  %216 = phi i64 [ %284, %213 ], [ %202, %199 ]
  %217 = phi i64 [ %282, %213 ], [ %203, %199 ]
  %218 = phi i64 [ %264, %213 ], [ %204, %199 ]
  %219 = phi i64 [ %262, %213 ], [ %205, %199 ]
  %220 = phi i64 [ %244, %213 ], [ %206, %199 ]
  %221 = phi i64 [ %242, %213 ], [ %207, %199 ]
  %222 = phi i32 [ %305, %213 ], [ 0, %199 ]
  %223 = shl i32 %222, 6
  %224 = getelementptr inbounds nuw i8, ptr %211, i32 %223
  %225 = shl i32 %222, 3
  %226 = getelementptr inbounds nuw i8, ptr %4, i32 %225
  %227 = load i64, ptr %224, align 1
  %228 = getelementptr inbounds nuw i8, ptr %224, i32 8
  %229 = load i64, ptr %228, align 1
  %230 = load i64, ptr %226, align 8
  %231 = getelementptr inbounds nuw i8, ptr %226, i32 8
  %232 = load i64, ptr %231, align 8
  %233 = xor i64 %230, %227
  %234 = xor i64 %232, %229
  %235 = and i64 %233, 4294967295
  %236 = lshr i64 %233, 32
  %237 = mul nuw i64 %235, %236
  %238 = and i64 %234, 4294967295
  %239 = lshr i64 %234, 32
  %240 = mul nuw i64 %238, %239
  %241 = add i64 %227, %221
  %242 = add i64 %241, %237
  %243 = add i64 %229, %220
  %244 = add i64 %243, %240
  %245 = getelementptr inbounds nuw i8, ptr %224, i32 16
  %246 = load i64, ptr %245, align 1
  %247 = getelementptr inbounds nuw i8, ptr %224, i32 24
  %248 = load i64, ptr %247, align 1
  %249 = getelementptr inbounds nuw i8, ptr %226, i32 16
  %250 = load i64, ptr %249, align 8
  %251 = getelementptr inbounds nuw i8, ptr %226, i32 24
  %252 = load i64, ptr %251, align 8
  %253 = xor i64 %250, %246
  %254 = xor i64 %252, %248
  %255 = and i64 %253, 4294967295
  %256 = lshr i64 %253, 32
  %257 = mul nuw i64 %255, %256
  %258 = and i64 %254, 4294967295
  %259 = lshr i64 %254, 32
  %260 = mul nuw i64 %258, %259
  %261 = add i64 %246, %219
  %262 = add i64 %261, %257
  %263 = add i64 %248, %218
  %264 = add i64 %263, %260
  %265 = getelementptr inbounds nuw i8, ptr %224, i32 32
  %266 = load i64, ptr %265, align 1
  %267 = getelementptr inbounds nuw i8, ptr %224, i32 40
  %268 = load i64, ptr %267, align 1
  %269 = getelementptr inbounds nuw i8, ptr %226, i32 32
  %270 = load i64, ptr %269, align 8
  %271 = getelementptr inbounds nuw i8, ptr %226, i32 40
  %272 = load i64, ptr %271, align 8
  %273 = xor i64 %270, %266
  %274 = xor i64 %272, %268
  %275 = and i64 %273, 4294967295
  %276 = lshr i64 %273, 32
  %277 = mul nuw i64 %275, %276
  %278 = and i64 %274, 4294967295
  %279 = lshr i64 %274, 32
  %280 = mul nuw i64 %278, %279
  %281 = add i64 %266, %217
  %282 = add i64 %281, %277
  %283 = add i64 %268, %216
  %284 = add i64 %283, %280
  %285 = getelementptr inbounds nuw i8, ptr %224, i32 48
  %286 = load i64, ptr %285, align 1
  %287 = getelementptr inbounds nuw i8, ptr %224, i32 56
  %288 = load i64, ptr %287, align 1
  %289 = getelementptr inbounds nuw i8, ptr %226, i32 48
  %290 = load i64, ptr %289, align 8
  %291 = getelementptr inbounds nuw i8, ptr %226, i32 56
  %292 = load i64, ptr %291, align 8
  %293 = xor i64 %290, %286
  %294 = xor i64 %292, %288
  %295 = and i64 %293, 4294967295
  %296 = lshr i64 %293, 32
  %297 = mul nuw i64 %295, %296
  %298 = and i64 %294, 4294967295
  %299 = lshr i64 %294, 32
  %300 = mul nuw i64 %298, %299
  %301 = add i64 %286, %215
  %302 = add i64 %301, %297
  %303 = add i64 %288, %214
  %304 = add i64 %303, %300
  %305 = add nuw nsw i32 %222, 1
  %306 = icmp eq i32 %305, %210
  br i1 %306, label %307, label %213

307:                                              ; preds = %213, %199
  %308 = phi i64 [ %200, %199 ], [ %304, %213 ]
  %309 = phi i64 [ %201, %199 ], [ %302, %213 ]
  %310 = phi i64 [ %202, %199 ], [ %284, %213 ]
  %311 = phi i64 [ %203, %199 ], [ %282, %213 ]
  %312 = phi i64 [ %204, %199 ], [ %264, %213 ]
  %313 = phi i64 [ %205, %199 ], [ %262, %213 ]
  %314 = phi i64 [ %206, %199 ], [ %244, %213 ]
  %315 = phi i64 [ %207, %199 ], [ %242, %213 ]
  %316 = and i32 %1, 63
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %400, label %318

318:                                              ; preds = %307
  %319 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %320 = getelementptr inbounds i8, ptr %319, i32 -64
  %321 = getelementptr inbounds nuw i8, ptr %4, i32 121
  %322 = load i64, ptr %320, align 1
  %323 = getelementptr inbounds i8, ptr %319, i32 -56
  %324 = load i64, ptr %323, align 1
  %325 = load i64, ptr %321, align 1
  %326 = getelementptr inbounds nuw i8, ptr %4, i32 129
  %327 = load i64, ptr %326, align 1
  %328 = xor i64 %325, %322
  %329 = xor i64 %327, %324
  %330 = and i64 %328, 4294967295
  %331 = lshr i64 %328, 32
  %332 = mul nuw i64 %330, %331
  %333 = and i64 %329, 4294967295
  %334 = lshr i64 %329, 32
  %335 = mul nuw i64 %333, %334
  %336 = add i64 %322, %315
  %337 = add i64 %336, %332
  %338 = add i64 %324, %314
  %339 = add i64 %338, %335
  %340 = getelementptr inbounds i8, ptr %319, i32 -48
  %341 = load i64, ptr %340, align 1
  %342 = getelementptr inbounds i8, ptr %319, i32 -40
  %343 = load i64, ptr %342, align 1
  %344 = getelementptr inbounds nuw i8, ptr %4, i32 137
  %345 = load i64, ptr %344, align 1
  %346 = getelementptr inbounds nuw i8, ptr %4, i32 145
  %347 = load i64, ptr %346, align 1
  %348 = xor i64 %345, %341
  %349 = xor i64 %347, %343
  %350 = and i64 %348, 4294967295
  %351 = lshr i64 %348, 32
  %352 = mul nuw i64 %350, %351
  %353 = and i64 %349, 4294967295
  %354 = lshr i64 %349, 32
  %355 = mul nuw i64 %353, %354
  %356 = add i64 %341, %313
  %357 = add i64 %356, %352
  %358 = add i64 %343, %312
  %359 = add i64 %358, %355
  %360 = getelementptr inbounds i8, ptr %319, i32 -32
  %361 = load i64, ptr %360, align 1
  %362 = getelementptr inbounds i8, ptr %319, i32 -24
  %363 = load i64, ptr %362, align 1
  %364 = getelementptr inbounds nuw i8, ptr %4, i32 153
  %365 = load i64, ptr %364, align 1
  %366 = getelementptr inbounds nuw i8, ptr %4, i32 161
  %367 = load i64, ptr %366, align 1
  %368 = xor i64 %365, %361
  %369 = xor i64 %367, %363
  %370 = and i64 %368, 4294967295
  %371 = lshr i64 %368, 32
  %372 = mul nuw i64 %370, %371
  %373 = and i64 %369, 4294967295
  %374 = lshr i64 %369, 32
  %375 = mul nuw i64 %373, %374
  %376 = add i64 %361, %311
  %377 = add i64 %376, %372
  %378 = add i64 %363, %310
  %379 = add i64 %378, %375
  %380 = getelementptr inbounds i8, ptr %319, i32 -16
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr inbounds i8, ptr %319, i32 -8
  %383 = load i64, ptr %382, align 1
  %384 = getelementptr inbounds nuw i8, ptr %4, i32 169
  %385 = load i64, ptr %384, align 1
  %386 = getelementptr inbounds nuw i8, ptr %4, i32 177
  %387 = load i64, ptr %386, align 1
  %388 = xor i64 %385, %381
  %389 = xor i64 %387, %383
  %390 = and i64 %388, 4294967295
  %391 = lshr i64 %388, 32
  %392 = mul nuw i64 %390, %391
  %393 = and i64 %389, 4294967295
  %394 = lshr i64 %389, 32
  %395 = mul nuw i64 %393, %394
  %396 = add i64 %381, %309
  %397 = add i64 %396, %392
  %398 = add i64 %383, %308
  %399 = add i64 %398, %395
  br label %400

400:                                              ; preds = %307, %318
  %401 = phi i64 [ %308, %307 ], [ %399, %318 ]
  %402 = phi i64 [ %309, %307 ], [ %397, %318 ]
  %403 = phi i64 [ %310, %307 ], [ %379, %318 ]
  %404 = phi i64 [ %311, %307 ], [ %377, %318 ]
  %405 = phi i64 [ %312, %307 ], [ %359, %318 ]
  %406 = phi i64 [ %313, %307 ], [ %357, %318 ]
  %407 = phi i64 [ %314, %307 ], [ %339, %318 ]
  %408 = phi i64 [ %315, %307 ], [ %337, %318 ]
  %409 = getelementptr inbounds nuw i8, ptr %4, i32 11
  %410 = zext i32 %1 to i64
  %411 = mul i64 %410, -7046029288634856825
  %412 = load i64, ptr %409, align 1
  %413 = xor i64 %412, %408
  %414 = getelementptr inbounds nuw i8, ptr %4, i32 19
  %415 = load i64, ptr %414, align 1
  %416 = xor i64 %415, %407
  %417 = lshr i64 %413, 32
  %418 = lshr i64 %416, 32
  %419 = mul nuw i64 %418, %417
  %420 = and i64 %413, 4294967295
  %421 = mul nuw i64 %418, %420
  %422 = and i64 %416, 4294967295
  %423 = mul nuw i64 %422, %417
  %424 = mul nuw i64 %422, %420
  %425 = shl i64 %421, 32
  %426 = add i64 %425, %424
  %427 = icmp ult i64 %426, %424
  %428 = zext i1 %427 to i64
  %429 = add i64 %421, %423
  %430 = shl i64 %429, 32
  %431 = add i64 %430, %424
  %432 = icmp ult i64 %431, %426
  %433 = zext i1 %432 to i64
  %434 = lshr i64 %421, 32
  %435 = add nuw i64 %434, %419
  %436 = lshr i64 %423, 32
  %437 = add nuw i64 %435, %436
  %438 = add nuw i64 %437, %428
  %439 = add nuw i64 %438, %433
  %440 = xor i64 %439, %431
  %441 = add i64 %440, %411
  %442 = getelementptr inbounds nuw i8, ptr %4, i32 27
  %443 = load i64, ptr %442, align 1
  %444 = xor i64 %443, %406
  %445 = getelementptr inbounds nuw i8, ptr %4, i32 35
  %446 = load i64, ptr %445, align 1
  %447 = xor i64 %446, %405
  %448 = lshr i64 %444, 32
  %449 = lshr i64 %447, 32
  %450 = mul nuw i64 %449, %448
  %451 = and i64 %444, 4294967295
  %452 = mul nuw i64 %449, %451
  %453 = and i64 %447, 4294967295
  %454 = mul nuw i64 %453, %448
  %455 = mul nuw i64 %453, %451
  %456 = shl i64 %452, 32
  %457 = add i64 %456, %455
  %458 = icmp ult i64 %457, %455
  %459 = zext i1 %458 to i64
  %460 = add i64 %452, %454
  %461 = shl i64 %460, 32
  %462 = add i64 %461, %455
  %463 = icmp ult i64 %462, %457
  %464 = zext i1 %463 to i64
  %465 = lshr i64 %452, 32
  %466 = add nuw i64 %465, %450
  %467 = lshr i64 %454, 32
  %468 = add nuw i64 %466, %467
  %469 = add nuw i64 %468, %459
  %470 = add nuw i64 %469, %464
  %471 = xor i64 %470, %462
  %472 = add i64 %441, %471
  %473 = getelementptr inbounds nuw i8, ptr %4, i32 43
  %474 = load i64, ptr %473, align 1
  %475 = xor i64 %474, %404
  %476 = getelementptr inbounds nuw i8, ptr %4, i32 51
  %477 = load i64, ptr %476, align 1
  %478 = xor i64 %477, %403
  %479 = lshr i64 %475, 32
  %480 = lshr i64 %478, 32
  %481 = mul nuw i64 %480, %479
  %482 = and i64 %475, 4294967295
  %483 = mul nuw i64 %480, %482
  %484 = and i64 %478, 4294967295
  %485 = mul nuw i64 %484, %479
  %486 = mul nuw i64 %484, %482
  %487 = shl i64 %483, 32
  %488 = add i64 %487, %486
  %489 = icmp ult i64 %488, %486
  %490 = zext i1 %489 to i64
  %491 = add i64 %483, %485
  %492 = shl i64 %491, 32
  %493 = add i64 %492, %486
  %494 = icmp ult i64 %493, %488
  %495 = zext i1 %494 to i64
  %496 = lshr i64 %483, 32
  %497 = add nuw i64 %496, %481
  %498 = lshr i64 %485, 32
  %499 = add nuw i64 %497, %498
  %500 = add nuw i64 %499, %490
  %501 = add nuw i64 %500, %495
  %502 = xor i64 %501, %493
  %503 = add i64 %472, %502
  %504 = getelementptr inbounds nuw i8, ptr %4, i32 59
  %505 = load i64, ptr %504, align 1
  %506 = xor i64 %505, %402
  %507 = getelementptr inbounds nuw i8, ptr %4, i32 67
  %508 = load i64, ptr %507, align 1
  %509 = xor i64 %508, %401
  %510 = lshr i64 %506, 32
  %511 = lshr i64 %509, 32
  %512 = mul nuw i64 %511, %510
  %513 = and i64 %506, 4294967295
  %514 = mul nuw i64 %511, %513
  %515 = and i64 %509, 4294967295
  %516 = mul nuw i64 %515, %510
  %517 = mul nuw i64 %515, %513
  %518 = shl i64 %514, 32
  %519 = add i64 %518, %517
  %520 = icmp ult i64 %519, %517
  %521 = zext i1 %520 to i64
  %522 = add i64 %514, %516
  %523 = shl i64 %522, 32
  %524 = add i64 %523, %517
  %525 = icmp ult i64 %524, %519
  %526 = zext i1 %525 to i64
  %527 = lshr i64 %514, 32
  %528 = add nuw i64 %527, %512
  %529 = lshr i64 %516, 32
  %530 = add nuw i64 %528, %529
  %531 = add nuw i64 %530, %521
  %532 = add nuw i64 %531, %526
  %533 = xor i64 %532, %524
  %534 = add i64 %503, %533
  %535 = lshr i64 %534, 37
  %536 = xor i64 %535, %534
  %537 = mul i64 %536, 1609587929392839161
  %538 = lshr i64 %537, 32
  %539 = xor i64 %538, %537
  br label %540

540:                                              ; preds = %400, %56
  %541 = phi i64 [ %57, %56 ], [ %539, %400 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #26
  ret i64 %541
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite)
define dso_local noalias noundef ptr @XXH3_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(576) ptr @malloc(i32 noundef 576) #25
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local noundef i32 @XXH3_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @XXH3_copyState(ptr noundef writeonly initializes((0, 576)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(576) %0, ptr noundef nonnull align 64 dereferenceable(576) %1, i32 576, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i32 64
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i32 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 -7046029288634856825, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i64 -4417276706812531889, ptr %6, align 16
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 1609587929392839161, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store i64 -8796714831421723037, ptr %8, align 32
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 40
  store i64 2246822519, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store i64 2870177450012600261, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 56
  store i64 2654435761, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 560
  store ptr @kSecret, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 524
  store i32 128, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 516
  store i32 16, ptr %14, align 4
  br label %15

15:                                               ; preds = %1, %3
  %16 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 64
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i32 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 560
  store ptr %1, ptr %14, align 16
  %15 = add i32 %2, -64
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 524
  store i32 %15, ptr %16, align 4
  %17 = lshr i32 %15, 3
  %18 = getelementptr inbounds nuw i8, ptr %0, i32 516
  store i32 %17, ptr %18, align 4
  %19 = icmp eq ptr %1, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = icmp ult i32 %2, 136
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %20, %5, %3
  %24 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %22, %20 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 64
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 256
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i32 320, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 544
  store i64 %1, ptr %14, align 32
  %15 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 524
  store i32 128, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i32 516
  store i32 16, ptr %17, align 4
  %18 = add i64 %1, -4734510112055689544
  store i64 %18, ptr %5, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i32 72
  %20 = sub i64 2066345149520216444, %1
  store i64 %20, ptr %19, align 1
  %21 = getelementptr inbounds nuw i8, ptr %0, i32 80
  %22 = add i64 %1, -2623469361688619810
  store i64 %22, ptr %21, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i32 88
  %24 = sub i64 2262974939099578482, %1
  store i64 %24, ptr %23, align 1
  %25 = getelementptr inbounds nuw i8, ptr %0, i32 96
  %26 = add i64 %1, 8711581037947681227
  store i64 %26, ptr %25, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 104
  %28 = sub i64 2410270004345854594, %1
  store i64 %28, ptr %27, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i32 112
  %30 = add i64 %1, -8204357891075471176
  store i64 %30, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i32 120
  %32 = sub i64 5487137525590930912, %1
  store i64 %32, ptr %31, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i32 128
  %34 = add i64 %1, -3818837453329782724
  store i64 %34, ptr %33, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i32 136
  %36 = sub i64 -6688317018830679928, %1
  store i64 %36, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i32 144
  %38 = add i64 %1, 5690594596133299313
  store i64 %38, ptr %37, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i32 152
  %40 = sub i64 -2833645246901970632, %1
  store i64 %40, ptr %39, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i32 160
  %42 = add i64 %1, 4554437623014685352
  store i64 %42, ptr %41, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i32 168
  %44 = sub i64 2111919702937427193, %1
  store i64 %44, ptr %43, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i32 176
  %46 = add i64 %1, 3556072174620004746
  store i64 %46, ptr %45, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i32 184
  %48 = sub i64 7238261902898274248, %1
  store i64 %48, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i32 192
  %50 = add i64 %1, -4329134394285701654
  store i64 %50, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %0, i32 200
  %52 = sub i64 -1485321483350670907, %1
  store i64 %52, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i32 208
  %54 = add i64 %1, 5321830579834785047
  store i64 %54, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %0, i32 216
  %56 = sub i64 -7032137544937171245, %1
  store i64 %56, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %0, i32 224
  %58 = add i64 %1, -242834301215959509
  store i64 %58, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i32 232
  %60 = sub i64 -3588858202114426737, %1
  store i64 %60, ptr %59, align 1
  %61 = getelementptr inbounds nuw i8, ptr %0, i32 240
  %62 = add i64 %1, 2883454493032893253
  store i64 %62, ptr %61, align 1
  %63 = getelementptr inbounds nuw i8, ptr %0, i32 248
  %64 = sub i64 9097354517224871855, %1
  store i64 %64, ptr %63, align 1
  store ptr %5, ptr %15, align 16
  br label %65

65:                                               ; preds = %2, %4
  %66 = phi i32 [ 0, %4 ], [ 1, %2 ]
  ret i32 %66
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local range(i32 0, 2) i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #14 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %875, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 536
  %9 = load i64, ptr %8, align 8
  %10 = add i64 %9, %7
  store i64 %10, ptr %8, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 512
  %12 = load i32, ptr %11, align 64
  %13 = add i32 %12, %2
  %14 = icmp ult i32 %13, 257
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 256
  %17 = getelementptr inbounds nuw i8, ptr %16, i32 %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %17, ptr nonnull readonly align 1 %1, i32 %2, i1 false)
  %18 = load i32, ptr %11, align 64
  %19 = add i32 %18, %2
  br label %873

20:                                               ; preds = %5
  %21 = icmp eq i32 %12, 0
  br i1 %21, label %435, label %22

22:                                               ; preds = %20
  %23 = sub i32 256, %12
  %24 = getelementptr inbounds nuw i8, ptr %0, i32 256
  %25 = getelementptr inbounds nuw i8, ptr %24, i32 %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %25, ptr nonnull readonly align 1 %1, i32 %23, i1 false)
  %26 = getelementptr inbounds nuw i8, ptr %1, i32 %23
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 520
  %28 = getelementptr inbounds nuw i8, ptr %0, i32 516
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr inbounds nuw i8, ptr %0, i32 524
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %27, align 4
  %35 = sub i32 %29, %34
  %36 = icmp ugt i32 %35, 4
  %37 = shl i32 %34, 3
  %38 = getelementptr inbounds nuw i8, ptr %31, i32 %37
  br i1 %36, label %320, label %39

39:                                               ; preds = %22
  %40 = icmp eq i32 %29, %34
  %41 = load i64, ptr %0, align 8
  %42 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i32 48
  br i1 %40, label %53, label %57

53:                                               ; preds = %39
  %54 = load i64, ptr %52, align 8
  %55 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %56 = load i64, ptr %55, align 8
  br label %155

57:                                               ; preds = %39
  %58 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %59 = load i64, ptr %52, align 8
  %60 = load i64, ptr %58, align 8
  br label %61

61:                                               ; preds = %57, %61
  %62 = phi i64 [ %152, %61 ], [ %60, %57 ]
  %63 = phi i64 [ %151, %61 ], [ %59, %57 ]
  %64 = phi i64 [ %132, %61 ], [ %51, %57 ]
  %65 = phi i64 [ %131, %61 ], [ %49, %57 ]
  %66 = phi i64 [ %112, %61 ], [ %47, %57 ]
  %67 = phi i64 [ %111, %61 ], [ %45, %57 ]
  %68 = phi i64 [ %92, %61 ], [ %43, %57 ]
  %69 = phi i64 [ %91, %61 ], [ %41, %57 ]
  %70 = phi i32 [ %153, %61 ], [ 0, %57 ]
  %71 = shl i32 %70, 6
  %72 = getelementptr inbounds nuw i8, ptr %24, i32 %71
  %73 = shl i32 %70, 3
  %74 = getelementptr inbounds nuw i8, ptr %38, i32 %73
  %75 = load i64, ptr %72, align 1
  %76 = getelementptr inbounds nuw i8, ptr %72, i32 8
  %77 = load i64, ptr %76, align 1
  %78 = load i64, ptr %74, align 1
  %79 = getelementptr inbounds nuw i8, ptr %74, i32 8
  %80 = load i64, ptr %79, align 1
  %81 = xor i64 %78, %75
  %82 = xor i64 %80, %77
  %83 = and i64 %81, 4294967295
  %84 = lshr i64 %81, 32
  %85 = mul nuw i64 %83, %84
  %86 = add i64 %85, %69
  %87 = and i64 %82, 4294967295
  %88 = lshr i64 %82, 32
  %89 = mul nuw i64 %87, %88
  %90 = add i64 %68, %89
  %91 = add i64 %86, %75
  store i64 %91, ptr %0, align 8
  %92 = add i64 %90, %77
  store i64 %92, ptr %42, align 8
  %93 = getelementptr inbounds nuw i8, ptr %72, i32 16
  %94 = load i64, ptr %93, align 1
  %95 = getelementptr inbounds nuw i8, ptr %72, i32 24
  %96 = load i64, ptr %95, align 1
  %97 = getelementptr inbounds nuw i8, ptr %74, i32 16
  %98 = load i64, ptr %97, align 1
  %99 = getelementptr inbounds nuw i8, ptr %74, i32 24
  %100 = load i64, ptr %99, align 1
  %101 = xor i64 %98, %94
  %102 = xor i64 %100, %96
  %103 = and i64 %101, 4294967295
  %104 = lshr i64 %101, 32
  %105 = mul nuw i64 %103, %104
  %106 = add i64 %105, %67
  %107 = and i64 %102, 4294967295
  %108 = lshr i64 %102, 32
  %109 = mul nuw i64 %107, %108
  %110 = add i64 %66, %109
  %111 = add i64 %106, %94
  store i64 %111, ptr %44, align 8
  %112 = add i64 %110, %96
  store i64 %112, ptr %46, align 8
  %113 = getelementptr inbounds nuw i8, ptr %72, i32 32
  %114 = load i64, ptr %113, align 1
  %115 = getelementptr inbounds nuw i8, ptr %72, i32 40
  %116 = load i64, ptr %115, align 1
  %117 = getelementptr inbounds nuw i8, ptr %74, i32 32
  %118 = load i64, ptr %117, align 1
  %119 = getelementptr inbounds nuw i8, ptr %74, i32 40
  %120 = load i64, ptr %119, align 1
  %121 = xor i64 %118, %114
  %122 = xor i64 %120, %116
  %123 = and i64 %121, 4294967295
  %124 = lshr i64 %121, 32
  %125 = mul nuw i64 %123, %124
  %126 = add i64 %125, %65
  %127 = and i64 %122, 4294967295
  %128 = lshr i64 %122, 32
  %129 = mul nuw i64 %127, %128
  %130 = add i64 %64, %129
  %131 = add i64 %126, %114
  store i64 %131, ptr %48, align 8
  %132 = add i64 %130, %116
  store i64 %132, ptr %50, align 8
  %133 = getelementptr inbounds nuw i8, ptr %72, i32 48
  %134 = load i64, ptr %133, align 1
  %135 = getelementptr inbounds nuw i8, ptr %72, i32 56
  %136 = load i64, ptr %135, align 1
  %137 = getelementptr inbounds nuw i8, ptr %74, i32 48
  %138 = load i64, ptr %137, align 1
  %139 = getelementptr inbounds nuw i8, ptr %74, i32 56
  %140 = load i64, ptr %139, align 1
  %141 = xor i64 %138, %134
  %142 = xor i64 %140, %136
  %143 = and i64 %141, 4294967295
  %144 = lshr i64 %141, 32
  %145 = mul nuw i64 %143, %144
  %146 = add i64 %145, %63
  %147 = and i64 %142, 4294967295
  %148 = lshr i64 %142, 32
  %149 = mul nuw i64 %147, %148
  %150 = add i64 %62, %149
  %151 = add i64 %146, %134
  store i64 %151, ptr %52, align 8
  %152 = add i64 %150, %136
  store i64 %152, ptr %58, align 8
  %153 = add nuw i32 %70, 1
  %154 = icmp eq i32 %153, %35
  br i1 %154, label %155, label %61

155:                                              ; preds = %61, %53
  %156 = phi i64 [ %56, %53 ], [ %152, %61 ]
  %157 = phi i64 [ %54, %53 ], [ %151, %61 ]
  %158 = phi i64 [ %51, %53 ], [ %132, %61 ]
  %159 = phi i64 [ %49, %53 ], [ %131, %61 ]
  %160 = phi i64 [ %47, %53 ], [ %112, %61 ]
  %161 = phi i64 [ %45, %53 ], [ %111, %61 ]
  %162 = phi i64 [ %43, %53 ], [ %92, %61 ]
  %163 = phi i64 [ %41, %53 ], [ %91, %61 ]
  %164 = getelementptr inbounds nuw i8, ptr %31, i32 %33
  %165 = load i64, ptr %164, align 1
  %166 = lshr i64 %163, 47
  %167 = xor i64 %165, %166
  %168 = xor i64 %167, %163
  %169 = mul i64 %168, 2654435761
  store i64 %169, ptr %0, align 8
  %170 = getelementptr inbounds nuw i8, ptr %164, i32 8
  %171 = load i64, ptr %170, align 1
  %172 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %173 = lshr i64 %162, 47
  %174 = xor i64 %171, %173
  %175 = xor i64 %174, %162
  %176 = mul i64 %175, 2654435761
  store i64 %176, ptr %172, align 8
  %177 = getelementptr inbounds nuw i8, ptr %164, i32 16
  %178 = load i64, ptr %177, align 1
  %179 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %180 = lshr i64 %161, 47
  %181 = xor i64 %178, %180
  %182 = xor i64 %181, %161
  %183 = mul i64 %182, 2654435761
  store i64 %183, ptr %179, align 8
  %184 = getelementptr inbounds nuw i8, ptr %164, i32 24
  %185 = load i64, ptr %184, align 1
  %186 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %187 = lshr i64 %160, 47
  %188 = xor i64 %185, %187
  %189 = xor i64 %188, %160
  %190 = mul i64 %189, 2654435761
  store i64 %190, ptr %186, align 8
  %191 = getelementptr inbounds nuw i8, ptr %164, i32 32
  %192 = load i64, ptr %191, align 1
  %193 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %194 = lshr i64 %159, 47
  %195 = xor i64 %192, %194
  %196 = xor i64 %195, %159
  %197 = mul i64 %196, 2654435761
  store i64 %197, ptr %193, align 8
  %198 = getelementptr inbounds nuw i8, ptr %164, i32 40
  %199 = load i64, ptr %198, align 1
  %200 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %201 = lshr i64 %158, 47
  %202 = xor i64 %199, %201
  %203 = xor i64 %202, %158
  %204 = mul i64 %203, 2654435761
  store i64 %204, ptr %200, align 8
  %205 = getelementptr inbounds nuw i8, ptr %164, i32 48
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %208 = lshr i64 %157, 47
  %209 = xor i64 %206, %208
  %210 = xor i64 %209, %157
  %211 = mul i64 %210, 2654435761
  store i64 %211, ptr %207, align 8
  %212 = getelementptr inbounds nuw i8, ptr %164, i32 56
  %213 = load i64, ptr %212, align 1
  %214 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %215 = lshr i64 %156, 47
  %216 = xor i64 %213, %215
  %217 = xor i64 %216, %156
  %218 = mul i64 %217, 2654435761
  store i64 %218, ptr %214, align 8
  %219 = shl nuw nsw i32 %35, 6
  %220 = getelementptr inbounds nuw i8, ptr %24, i32 %219
  %221 = sub nsw i32 4, %35
  %222 = icmp eq i32 %35, 4
  br i1 %222, label %433, label %223

223:                                              ; preds = %155
  %224 = tail call i32 @llvm.umax.i32(i32 %221, i32 1)
  %225 = load i64, ptr %214, align 8
  br label %226

226:                                              ; preds = %223, %226
  %227 = phi i64 [ %317, %226 ], [ %225, %223 ]
  %228 = phi i64 [ %316, %226 ], [ %211, %223 ]
  %229 = phi i64 [ %297, %226 ], [ %204, %223 ]
  %230 = phi i64 [ %296, %226 ], [ %197, %223 ]
  %231 = phi i64 [ %277, %226 ], [ %190, %223 ]
  %232 = phi i64 [ %276, %226 ], [ %183, %223 ]
  %233 = phi i64 [ %257, %226 ], [ %176, %223 ]
  %234 = phi i64 [ %256, %226 ], [ %169, %223 ]
  %235 = phi i32 [ %318, %226 ], [ 0, %223 ]
  %236 = shl i32 %235, 6
  %237 = getelementptr inbounds nuw i8, ptr %220, i32 %236
  %238 = shl i32 %235, 3
  %239 = getelementptr inbounds nuw i8, ptr %31, i32 %238
  %240 = load i64, ptr %237, align 1
  %241 = getelementptr inbounds nuw i8, ptr %237, i32 8
  %242 = load i64, ptr %241, align 1
  %243 = load i64, ptr %239, align 1
  %244 = getelementptr inbounds nuw i8, ptr %239, i32 8
  %245 = load i64, ptr %244, align 1
  %246 = xor i64 %243, %240
  %247 = xor i64 %245, %242
  %248 = and i64 %246, 4294967295
  %249 = lshr i64 %246, 32
  %250 = mul nuw i64 %248, %249
  %251 = add i64 %250, %234
  %252 = and i64 %247, 4294967295
  %253 = lshr i64 %247, 32
  %254 = mul nuw i64 %252, %253
  %255 = add i64 %233, %254
  %256 = add i64 %251, %240
  store i64 %256, ptr %0, align 8
  %257 = add i64 %255, %242
  store i64 %257, ptr %172, align 8
  %258 = getelementptr inbounds nuw i8, ptr %237, i32 16
  %259 = load i64, ptr %258, align 1
  %260 = getelementptr inbounds nuw i8, ptr %237, i32 24
  %261 = load i64, ptr %260, align 1
  %262 = getelementptr inbounds nuw i8, ptr %239, i32 16
  %263 = load i64, ptr %262, align 1
  %264 = getelementptr inbounds nuw i8, ptr %239, i32 24
  %265 = load i64, ptr %264, align 1
  %266 = xor i64 %263, %259
  %267 = xor i64 %265, %261
  %268 = and i64 %266, 4294967295
  %269 = lshr i64 %266, 32
  %270 = mul nuw i64 %268, %269
  %271 = add i64 %270, %232
  %272 = and i64 %267, 4294967295
  %273 = lshr i64 %267, 32
  %274 = mul nuw i64 %272, %273
  %275 = add i64 %231, %274
  %276 = add i64 %271, %259
  store i64 %276, ptr %179, align 8
  %277 = add i64 %275, %261
  store i64 %277, ptr %186, align 8
  %278 = getelementptr inbounds nuw i8, ptr %237, i32 32
  %279 = load i64, ptr %278, align 1
  %280 = getelementptr inbounds nuw i8, ptr %237, i32 40
  %281 = load i64, ptr %280, align 1
  %282 = getelementptr inbounds nuw i8, ptr %239, i32 32
  %283 = load i64, ptr %282, align 1
  %284 = getelementptr inbounds nuw i8, ptr %239, i32 40
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %283, %279
  %287 = xor i64 %285, %281
  %288 = and i64 %286, 4294967295
  %289 = lshr i64 %286, 32
  %290 = mul nuw i64 %288, %289
  %291 = add i64 %290, %230
  %292 = and i64 %287, 4294967295
  %293 = lshr i64 %287, 32
  %294 = mul nuw i64 %292, %293
  %295 = add i64 %229, %294
  %296 = add i64 %291, %279
  store i64 %296, ptr %193, align 8
  %297 = add i64 %295, %281
  store i64 %297, ptr %200, align 8
  %298 = getelementptr inbounds nuw i8, ptr %237, i32 48
  %299 = load i64, ptr %298, align 1
  %300 = getelementptr inbounds nuw i8, ptr %237, i32 56
  %301 = load i64, ptr %300, align 1
  %302 = getelementptr inbounds nuw i8, ptr %239, i32 48
  %303 = load i64, ptr %302, align 1
  %304 = getelementptr inbounds nuw i8, ptr %239, i32 56
  %305 = load i64, ptr %304, align 1
  %306 = xor i64 %303, %299
  %307 = xor i64 %305, %301
  %308 = and i64 %306, 4294967295
  %309 = lshr i64 %306, 32
  %310 = mul nuw i64 %308, %309
  %311 = add i64 %310, %228
  %312 = and i64 %307, 4294967295
  %313 = lshr i64 %307, 32
  %314 = mul nuw i64 %312, %313
  %315 = add i64 %227, %314
  %316 = add i64 %311, %299
  store i64 %316, ptr %207, align 8
  %317 = add i64 %315, %301
  store i64 %317, ptr %214, align 8
  %318 = add nuw i32 %235, 1
  %319 = icmp eq i32 %318, %224
  br i1 %319, label %433, label %226

320:                                              ; preds = %22
  %321 = load i64, ptr %0, align 8
  %322 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %323 = load i64, ptr %322, align 8
  %324 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %325 = load i64, ptr %324, align 8
  %326 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %327 = load i64, ptr %326, align 8
  %328 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %329 = load i64, ptr %328, align 8
  %330 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %331 = load i64, ptr %330, align 8
  %332 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %333 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %334 = load i64, ptr %332, align 8
  %335 = load i64, ptr %333, align 8
  br label %336

336:                                              ; preds = %320, %336
  %337 = phi i64 [ %335, %320 ], [ %427, %336 ]
  %338 = phi i64 [ %334, %320 ], [ %426, %336 ]
  %339 = phi i64 [ %331, %320 ], [ %407, %336 ]
  %340 = phi i64 [ %329, %320 ], [ %406, %336 ]
  %341 = phi i64 [ %327, %320 ], [ %387, %336 ]
  %342 = phi i64 [ %325, %320 ], [ %386, %336 ]
  %343 = phi i64 [ %323, %320 ], [ %367, %336 ]
  %344 = phi i64 [ %321, %320 ], [ %366, %336 ]
  %345 = phi i32 [ 0, %320 ], [ %428, %336 ]
  %346 = shl nuw nsw i32 %345, 6
  %347 = getelementptr inbounds nuw i8, ptr %24, i32 %346
  %348 = shl nuw nsw i32 %345, 3
  %349 = getelementptr inbounds nuw i8, ptr %38, i32 %348
  %350 = load i64, ptr %347, align 1
  %351 = getelementptr inbounds nuw i8, ptr %347, i32 8
  %352 = load i64, ptr %351, align 1
  %353 = load i64, ptr %349, align 1
  %354 = getelementptr inbounds nuw i8, ptr %349, i32 8
  %355 = load i64, ptr %354, align 1
  %356 = xor i64 %353, %350
  %357 = xor i64 %355, %352
  %358 = and i64 %356, 4294967295
  %359 = lshr i64 %356, 32
  %360 = mul nuw i64 %358, %359
  %361 = add i64 %360, %344
  %362 = and i64 %357, 4294967295
  %363 = lshr i64 %357, 32
  %364 = mul nuw i64 %362, %363
  %365 = add i64 %343, %364
  %366 = add i64 %361, %350
  store i64 %366, ptr %0, align 8
  %367 = add i64 %365, %352
  store i64 %367, ptr %322, align 8
  %368 = getelementptr inbounds nuw i8, ptr %347, i32 16
  %369 = load i64, ptr %368, align 1
  %370 = getelementptr inbounds nuw i8, ptr %347, i32 24
  %371 = load i64, ptr %370, align 1
  %372 = getelementptr inbounds nuw i8, ptr %349, i32 16
  %373 = load i64, ptr %372, align 1
  %374 = getelementptr inbounds nuw i8, ptr %349, i32 24
  %375 = load i64, ptr %374, align 1
  %376 = xor i64 %373, %369
  %377 = xor i64 %375, %371
  %378 = and i64 %376, 4294967295
  %379 = lshr i64 %376, 32
  %380 = mul nuw i64 %378, %379
  %381 = add i64 %380, %342
  %382 = and i64 %377, 4294967295
  %383 = lshr i64 %377, 32
  %384 = mul nuw i64 %382, %383
  %385 = add i64 %341, %384
  %386 = add i64 %381, %369
  store i64 %386, ptr %324, align 8
  %387 = add i64 %385, %371
  store i64 %387, ptr %326, align 8
  %388 = getelementptr inbounds nuw i8, ptr %347, i32 32
  %389 = load i64, ptr %388, align 1
  %390 = getelementptr inbounds nuw i8, ptr %347, i32 40
  %391 = load i64, ptr %390, align 1
  %392 = getelementptr inbounds nuw i8, ptr %349, i32 32
  %393 = load i64, ptr %392, align 1
  %394 = getelementptr inbounds nuw i8, ptr %349, i32 40
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %393, %389
  %397 = xor i64 %395, %391
  %398 = and i64 %396, 4294967295
  %399 = lshr i64 %396, 32
  %400 = mul nuw i64 %398, %399
  %401 = add i64 %400, %340
  %402 = and i64 %397, 4294967295
  %403 = lshr i64 %397, 32
  %404 = mul nuw i64 %402, %403
  %405 = add i64 %339, %404
  %406 = add i64 %401, %389
  store i64 %406, ptr %328, align 8
  %407 = add i64 %405, %391
  store i64 %407, ptr %330, align 8
  %408 = getelementptr inbounds nuw i8, ptr %347, i32 48
  %409 = load i64, ptr %408, align 1
  %410 = getelementptr inbounds nuw i8, ptr %347, i32 56
  %411 = load i64, ptr %410, align 1
  %412 = getelementptr inbounds nuw i8, ptr %349, i32 48
  %413 = load i64, ptr %412, align 1
  %414 = getelementptr inbounds nuw i8, ptr %349, i32 56
  %415 = load i64, ptr %414, align 1
  %416 = xor i64 %413, %409
  %417 = xor i64 %415, %411
  %418 = and i64 %416, 4294967295
  %419 = lshr i64 %416, 32
  %420 = mul nuw i64 %418, %419
  %421 = add i64 %420, %338
  %422 = and i64 %417, 4294967295
  %423 = lshr i64 %417, 32
  %424 = mul nuw i64 %422, %423
  %425 = add i64 %337, %424
  %426 = add i64 %421, %409
  store i64 %426, ptr %332, align 8
  %427 = add i64 %425, %411
  store i64 %427, ptr %333, align 8
  %428 = add nuw nsw i32 %345, 1
  %429 = icmp eq i32 %428, 4
  br i1 %429, label %430, label %336

430:                                              ; preds = %336
  %431 = load i32, ptr %27, align 4
  %432 = add i32 %431, 4
  br label %433

433:                                              ; preds = %226, %155, %430
  %434 = phi i32 [ %432, %430 ], [ 0, %155 ], [ %221, %226 ]
  store i32 %434, ptr %27, align 4
  store i32 0, ptr %11, align 64
  br label %435

435:                                              ; preds = %433, %20
  %436 = phi ptr [ %26, %433 ], [ %1, %20 ]
  %437 = getelementptr inbounds nuw i8, ptr %436, i32 256
  %438 = icmp ugt ptr %437, %6
  br i1 %438, label %865, label %439

439:                                              ; preds = %435
  %440 = getelementptr inbounds i8, ptr %6, i32 -256
  %441 = getelementptr inbounds nuw i8, ptr %0, i32 520
  %442 = getelementptr inbounds nuw i8, ptr %0, i32 516
  %443 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %444 = getelementptr inbounds nuw i8, ptr %0, i32 524
  %445 = load i32, ptr %441, align 4
  %446 = load i32, ptr %442, align 4
  %447 = load ptr, ptr %443, align 16
  %448 = load i32, ptr %444, align 4
  %449 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %450 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %451 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %452 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %453 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %454 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %455 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %456 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %457 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %458 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %459 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %460 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %461 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %462 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %463 = getelementptr inbounds nuw i8, ptr %447, i32 %448
  %464 = getelementptr inbounds nuw i8, ptr %463, i32 8
  %465 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %466 = getelementptr inbounds nuw i8, ptr %463, i32 16
  %467 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %468 = getelementptr inbounds nuw i8, ptr %463, i32 24
  %469 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %470 = getelementptr inbounds nuw i8, ptr %463, i32 32
  %471 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %472 = getelementptr inbounds nuw i8, ptr %463, i32 40
  %473 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %474 = getelementptr inbounds nuw i8, ptr %463, i32 48
  %475 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %476 = getelementptr inbounds nuw i8, ptr %463, i32 56
  %477 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %478 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %479 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %480 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %481 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %482 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %483 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %484 = getelementptr inbounds nuw i8, ptr %0, i32 56
  br label %485

485:                                              ; preds = %861, %439
  %486 = phi i32 [ %445, %439 ], [ %862, %861 ]
  %487 = phi ptr [ %436, %439 ], [ %863, %861 ]
  %488 = sub i32 %446, %486
  %489 = icmp ugt i32 %488, 4
  %490 = shl i32 %486, 3
  %491 = getelementptr inbounds nuw i8, ptr %447, i32 %490
  br i1 %489, label %755, label %492

492:                                              ; preds = %485
  %493 = icmp eq i32 %446, %486
  %494 = load i64, ptr %0, align 8
  br i1 %493, label %495, label %503

495:                                              ; preds = %492
  %496 = load i64, ptr %456, align 8
  %497 = load i64, ptr %457, align 8
  %498 = load i64, ptr %458, align 8
  %499 = load i64, ptr %459, align 8
  %500 = load i64, ptr %460, align 8
  %501 = load i64, ptr %461, align 8
  %502 = load i64, ptr %462, align 8
  br label %605

503:                                              ; preds = %492
  %504 = load i64, ptr %449, align 8
  %505 = load i64, ptr %450, align 8
  %506 = load i64, ptr %451, align 8
  %507 = load i64, ptr %452, align 8
  %508 = load i64, ptr %453, align 8
  %509 = load i64, ptr %454, align 8
  %510 = load i64, ptr %455, align 8
  br label %511

511:                                              ; preds = %503, %511
  %512 = phi i64 [ %602, %511 ], [ %510, %503 ]
  %513 = phi i64 [ %601, %511 ], [ %509, %503 ]
  %514 = phi i64 [ %582, %511 ], [ %508, %503 ]
  %515 = phi i64 [ %581, %511 ], [ %507, %503 ]
  %516 = phi i64 [ %562, %511 ], [ %506, %503 ]
  %517 = phi i64 [ %561, %511 ], [ %505, %503 ]
  %518 = phi i64 [ %542, %511 ], [ %504, %503 ]
  %519 = phi i64 [ %541, %511 ], [ %494, %503 ]
  %520 = phi i32 [ %603, %511 ], [ 0, %503 ]
  %521 = shl i32 %520, 6
  %522 = getelementptr inbounds nuw i8, ptr %487, i32 %521
  %523 = shl i32 %520, 3
  %524 = getelementptr inbounds nuw i8, ptr %491, i32 %523
  %525 = load i64, ptr %522, align 1
  %526 = getelementptr inbounds nuw i8, ptr %522, i32 8
  %527 = load i64, ptr %526, align 1
  %528 = load i64, ptr %524, align 1
  %529 = getelementptr inbounds nuw i8, ptr %524, i32 8
  %530 = load i64, ptr %529, align 1
  %531 = xor i64 %528, %525
  %532 = xor i64 %530, %527
  %533 = and i64 %531, 4294967295
  %534 = lshr i64 %531, 32
  %535 = mul nuw i64 %533, %534
  %536 = add i64 %535, %519
  %537 = and i64 %532, 4294967295
  %538 = lshr i64 %532, 32
  %539 = mul nuw i64 %537, %538
  %540 = add i64 %518, %539
  %541 = add i64 %536, %525
  store i64 %541, ptr %0, align 8
  %542 = add i64 %540, %527
  store i64 %542, ptr %449, align 8
  %543 = getelementptr inbounds nuw i8, ptr %522, i32 16
  %544 = load i64, ptr %543, align 1
  %545 = getelementptr inbounds nuw i8, ptr %522, i32 24
  %546 = load i64, ptr %545, align 1
  %547 = getelementptr inbounds nuw i8, ptr %524, i32 16
  %548 = load i64, ptr %547, align 1
  %549 = getelementptr inbounds nuw i8, ptr %524, i32 24
  %550 = load i64, ptr %549, align 1
  %551 = xor i64 %548, %544
  %552 = xor i64 %550, %546
  %553 = and i64 %551, 4294967295
  %554 = lshr i64 %551, 32
  %555 = mul nuw i64 %553, %554
  %556 = add i64 %555, %517
  %557 = and i64 %552, 4294967295
  %558 = lshr i64 %552, 32
  %559 = mul nuw i64 %557, %558
  %560 = add i64 %516, %559
  %561 = add i64 %556, %544
  store i64 %561, ptr %450, align 8
  %562 = add i64 %560, %546
  store i64 %562, ptr %451, align 8
  %563 = getelementptr inbounds nuw i8, ptr %522, i32 32
  %564 = load i64, ptr %563, align 1
  %565 = getelementptr inbounds nuw i8, ptr %522, i32 40
  %566 = load i64, ptr %565, align 1
  %567 = getelementptr inbounds nuw i8, ptr %524, i32 32
  %568 = load i64, ptr %567, align 1
  %569 = getelementptr inbounds nuw i8, ptr %524, i32 40
  %570 = load i64, ptr %569, align 1
  %571 = xor i64 %568, %564
  %572 = xor i64 %570, %566
  %573 = and i64 %571, 4294967295
  %574 = lshr i64 %571, 32
  %575 = mul nuw i64 %573, %574
  %576 = add i64 %575, %515
  %577 = and i64 %572, 4294967295
  %578 = lshr i64 %572, 32
  %579 = mul nuw i64 %577, %578
  %580 = add i64 %514, %579
  %581 = add i64 %576, %564
  store i64 %581, ptr %452, align 8
  %582 = add i64 %580, %566
  store i64 %582, ptr %453, align 8
  %583 = getelementptr inbounds nuw i8, ptr %522, i32 48
  %584 = load i64, ptr %583, align 1
  %585 = getelementptr inbounds nuw i8, ptr %522, i32 56
  %586 = load i64, ptr %585, align 1
  %587 = getelementptr inbounds nuw i8, ptr %524, i32 48
  %588 = load i64, ptr %587, align 1
  %589 = getelementptr inbounds nuw i8, ptr %524, i32 56
  %590 = load i64, ptr %589, align 1
  %591 = xor i64 %588, %584
  %592 = xor i64 %590, %586
  %593 = and i64 %591, 4294967295
  %594 = lshr i64 %591, 32
  %595 = mul nuw i64 %593, %594
  %596 = add i64 %595, %513
  %597 = and i64 %592, 4294967295
  %598 = lshr i64 %592, 32
  %599 = mul nuw i64 %597, %598
  %600 = add i64 %512, %599
  %601 = add i64 %596, %584
  store i64 %601, ptr %454, align 8
  %602 = add i64 %600, %586
  store i64 %602, ptr %455, align 8
  %603 = add nuw i32 %520, 1
  %604 = icmp eq i32 %603, %488
  br i1 %604, label %605, label %511

605:                                              ; preds = %511, %495
  %606 = phi i64 [ %502, %495 ], [ %602, %511 ]
  %607 = phi i64 [ %501, %495 ], [ %601, %511 ]
  %608 = phi i64 [ %500, %495 ], [ %582, %511 ]
  %609 = phi i64 [ %499, %495 ], [ %581, %511 ]
  %610 = phi i64 [ %498, %495 ], [ %562, %511 ]
  %611 = phi i64 [ %497, %495 ], [ %561, %511 ]
  %612 = phi i64 [ %496, %495 ], [ %542, %511 ]
  %613 = phi i64 [ %494, %495 ], [ %541, %511 ]
  %614 = load i64, ptr %463, align 1
  %615 = lshr i64 %613, 47
  %616 = xor i64 %614, %615
  %617 = xor i64 %616, %613
  %618 = mul i64 %617, 2654435761
  store i64 %618, ptr %0, align 8
  %619 = load i64, ptr %464, align 1
  %620 = lshr i64 %612, 47
  %621 = xor i64 %619, %620
  %622 = xor i64 %621, %612
  %623 = mul i64 %622, 2654435761
  store i64 %623, ptr %465, align 8
  %624 = load i64, ptr %466, align 1
  %625 = lshr i64 %611, 47
  %626 = xor i64 %624, %625
  %627 = xor i64 %626, %611
  %628 = mul i64 %627, 2654435761
  store i64 %628, ptr %467, align 8
  %629 = load i64, ptr %468, align 1
  %630 = lshr i64 %610, 47
  %631 = xor i64 %629, %630
  %632 = xor i64 %631, %610
  %633 = mul i64 %632, 2654435761
  store i64 %633, ptr %469, align 8
  %634 = load i64, ptr %470, align 1
  %635 = lshr i64 %609, 47
  %636 = xor i64 %634, %635
  %637 = xor i64 %636, %609
  %638 = mul i64 %637, 2654435761
  store i64 %638, ptr %471, align 8
  %639 = load i64, ptr %472, align 1
  %640 = lshr i64 %608, 47
  %641 = xor i64 %639, %640
  %642 = xor i64 %641, %608
  %643 = mul i64 %642, 2654435761
  store i64 %643, ptr %473, align 8
  %644 = load i64, ptr %474, align 1
  %645 = lshr i64 %607, 47
  %646 = xor i64 %644, %645
  %647 = xor i64 %646, %607
  %648 = mul i64 %647, 2654435761
  store i64 %648, ptr %475, align 8
  %649 = load i64, ptr %476, align 1
  %650 = lshr i64 %606, 47
  %651 = xor i64 %649, %650
  %652 = xor i64 %651, %606
  %653 = mul i64 %652, 2654435761
  store i64 %653, ptr %477, align 8
  %654 = shl nuw nsw i32 %488, 6
  %655 = getelementptr inbounds nuw i8, ptr %487, i32 %654
  %656 = sub nsw i32 4, %488
  %657 = icmp eq i32 %488, 4
  br i1 %657, label %861, label %658

658:                                              ; preds = %605
  %659 = tail call i32 @llvm.umax.i32(i32 %656, i32 1)
  %660 = load i64, ptr %477, align 8
  br label %661

661:                                              ; preds = %658, %661
  %662 = phi i64 [ %752, %661 ], [ %660, %658 ]
  %663 = phi i64 [ %751, %661 ], [ %648, %658 ]
  %664 = phi i64 [ %732, %661 ], [ %643, %658 ]
  %665 = phi i64 [ %731, %661 ], [ %638, %658 ]
  %666 = phi i64 [ %712, %661 ], [ %633, %658 ]
  %667 = phi i64 [ %711, %661 ], [ %628, %658 ]
  %668 = phi i64 [ %692, %661 ], [ %623, %658 ]
  %669 = phi i64 [ %691, %661 ], [ %618, %658 ]
  %670 = phi i32 [ %753, %661 ], [ 0, %658 ]
  %671 = shl i32 %670, 6
  %672 = getelementptr inbounds nuw i8, ptr %655, i32 %671
  %673 = shl i32 %670, 3
  %674 = getelementptr inbounds nuw i8, ptr %447, i32 %673
  %675 = load i64, ptr %672, align 1
  %676 = getelementptr inbounds nuw i8, ptr %672, i32 8
  %677 = load i64, ptr %676, align 1
  %678 = load i64, ptr %674, align 1
  %679 = getelementptr inbounds nuw i8, ptr %674, i32 8
  %680 = load i64, ptr %679, align 1
  %681 = xor i64 %678, %675
  %682 = xor i64 %680, %677
  %683 = and i64 %681, 4294967295
  %684 = lshr i64 %681, 32
  %685 = mul nuw i64 %683, %684
  %686 = add i64 %685, %669
  %687 = and i64 %682, 4294967295
  %688 = lshr i64 %682, 32
  %689 = mul nuw i64 %687, %688
  %690 = add i64 %668, %689
  %691 = add i64 %686, %675
  store i64 %691, ptr %0, align 8
  %692 = add i64 %690, %677
  store i64 %692, ptr %465, align 8
  %693 = getelementptr inbounds nuw i8, ptr %672, i32 16
  %694 = load i64, ptr %693, align 1
  %695 = getelementptr inbounds nuw i8, ptr %672, i32 24
  %696 = load i64, ptr %695, align 1
  %697 = getelementptr inbounds nuw i8, ptr %674, i32 16
  %698 = load i64, ptr %697, align 1
  %699 = getelementptr inbounds nuw i8, ptr %674, i32 24
  %700 = load i64, ptr %699, align 1
  %701 = xor i64 %698, %694
  %702 = xor i64 %700, %696
  %703 = and i64 %701, 4294967295
  %704 = lshr i64 %701, 32
  %705 = mul nuw i64 %703, %704
  %706 = add i64 %705, %667
  %707 = and i64 %702, 4294967295
  %708 = lshr i64 %702, 32
  %709 = mul nuw i64 %707, %708
  %710 = add i64 %666, %709
  %711 = add i64 %706, %694
  store i64 %711, ptr %467, align 8
  %712 = add i64 %710, %696
  store i64 %712, ptr %469, align 8
  %713 = getelementptr inbounds nuw i8, ptr %672, i32 32
  %714 = load i64, ptr %713, align 1
  %715 = getelementptr inbounds nuw i8, ptr %672, i32 40
  %716 = load i64, ptr %715, align 1
  %717 = getelementptr inbounds nuw i8, ptr %674, i32 32
  %718 = load i64, ptr %717, align 1
  %719 = getelementptr inbounds nuw i8, ptr %674, i32 40
  %720 = load i64, ptr %719, align 1
  %721 = xor i64 %718, %714
  %722 = xor i64 %720, %716
  %723 = and i64 %721, 4294967295
  %724 = lshr i64 %721, 32
  %725 = mul nuw i64 %723, %724
  %726 = add i64 %725, %665
  %727 = and i64 %722, 4294967295
  %728 = lshr i64 %722, 32
  %729 = mul nuw i64 %727, %728
  %730 = add i64 %664, %729
  %731 = add i64 %726, %714
  store i64 %731, ptr %471, align 8
  %732 = add i64 %730, %716
  store i64 %732, ptr %473, align 8
  %733 = getelementptr inbounds nuw i8, ptr %672, i32 48
  %734 = load i64, ptr %733, align 1
  %735 = getelementptr inbounds nuw i8, ptr %672, i32 56
  %736 = load i64, ptr %735, align 1
  %737 = getelementptr inbounds nuw i8, ptr %674, i32 48
  %738 = load i64, ptr %737, align 1
  %739 = getelementptr inbounds nuw i8, ptr %674, i32 56
  %740 = load i64, ptr %739, align 1
  %741 = xor i64 %738, %734
  %742 = xor i64 %740, %736
  %743 = and i64 %741, 4294967295
  %744 = lshr i64 %741, 32
  %745 = mul nuw i64 %743, %744
  %746 = add i64 %745, %663
  %747 = and i64 %742, 4294967295
  %748 = lshr i64 %742, 32
  %749 = mul nuw i64 %747, %748
  %750 = add i64 %662, %749
  %751 = add i64 %746, %734
  store i64 %751, ptr %475, align 8
  %752 = add i64 %750, %736
  store i64 %752, ptr %477, align 8
  %753 = add nuw i32 %670, 1
  %754 = icmp eq i32 %753, %659
  br i1 %754, label %861, label %661

755:                                              ; preds = %485
  %756 = load i64, ptr %0, align 8
  %757 = load i64, ptr %478, align 8
  %758 = load i64, ptr %479, align 8
  %759 = load i64, ptr %480, align 8
  %760 = load i64, ptr %481, align 8
  %761 = load i64, ptr %482, align 8
  %762 = load i64, ptr %483, align 8
  %763 = load i64, ptr %484, align 8
  br label %764

764:                                              ; preds = %755, %764
  %765 = phi i64 [ %763, %755 ], [ %855, %764 ]
  %766 = phi i64 [ %762, %755 ], [ %854, %764 ]
  %767 = phi i64 [ %761, %755 ], [ %835, %764 ]
  %768 = phi i64 [ %760, %755 ], [ %834, %764 ]
  %769 = phi i64 [ %759, %755 ], [ %815, %764 ]
  %770 = phi i64 [ %758, %755 ], [ %814, %764 ]
  %771 = phi i64 [ %757, %755 ], [ %795, %764 ]
  %772 = phi i64 [ %756, %755 ], [ %794, %764 ]
  %773 = phi i32 [ 0, %755 ], [ %856, %764 ]
  %774 = shl nuw nsw i32 %773, 6
  %775 = getelementptr inbounds nuw i8, ptr %487, i32 %774
  %776 = shl nuw nsw i32 %773, 3
  %777 = getelementptr inbounds nuw i8, ptr %491, i32 %776
  %778 = load i64, ptr %775, align 1
  %779 = getelementptr inbounds nuw i8, ptr %775, i32 8
  %780 = load i64, ptr %779, align 1
  %781 = load i64, ptr %777, align 1
  %782 = getelementptr inbounds nuw i8, ptr %777, i32 8
  %783 = load i64, ptr %782, align 1
  %784 = xor i64 %781, %778
  %785 = xor i64 %783, %780
  %786 = and i64 %784, 4294967295
  %787 = lshr i64 %784, 32
  %788 = mul nuw i64 %786, %787
  %789 = add i64 %788, %772
  %790 = and i64 %785, 4294967295
  %791 = lshr i64 %785, 32
  %792 = mul nuw i64 %790, %791
  %793 = add i64 %771, %792
  %794 = add i64 %789, %778
  store i64 %794, ptr %0, align 8
  %795 = add i64 %793, %780
  store i64 %795, ptr %478, align 8
  %796 = getelementptr inbounds nuw i8, ptr %775, i32 16
  %797 = load i64, ptr %796, align 1
  %798 = getelementptr inbounds nuw i8, ptr %775, i32 24
  %799 = load i64, ptr %798, align 1
  %800 = getelementptr inbounds nuw i8, ptr %777, i32 16
  %801 = load i64, ptr %800, align 1
  %802 = getelementptr inbounds nuw i8, ptr %777, i32 24
  %803 = load i64, ptr %802, align 1
  %804 = xor i64 %801, %797
  %805 = xor i64 %803, %799
  %806 = and i64 %804, 4294967295
  %807 = lshr i64 %804, 32
  %808 = mul nuw i64 %806, %807
  %809 = add i64 %808, %770
  %810 = and i64 %805, 4294967295
  %811 = lshr i64 %805, 32
  %812 = mul nuw i64 %810, %811
  %813 = add i64 %769, %812
  %814 = add i64 %809, %797
  store i64 %814, ptr %479, align 8
  %815 = add i64 %813, %799
  store i64 %815, ptr %480, align 8
  %816 = getelementptr inbounds nuw i8, ptr %775, i32 32
  %817 = load i64, ptr %816, align 1
  %818 = getelementptr inbounds nuw i8, ptr %775, i32 40
  %819 = load i64, ptr %818, align 1
  %820 = getelementptr inbounds nuw i8, ptr %777, i32 32
  %821 = load i64, ptr %820, align 1
  %822 = getelementptr inbounds nuw i8, ptr %777, i32 40
  %823 = load i64, ptr %822, align 1
  %824 = xor i64 %821, %817
  %825 = xor i64 %823, %819
  %826 = and i64 %824, 4294967295
  %827 = lshr i64 %824, 32
  %828 = mul nuw i64 %826, %827
  %829 = add i64 %828, %768
  %830 = and i64 %825, 4294967295
  %831 = lshr i64 %825, 32
  %832 = mul nuw i64 %830, %831
  %833 = add i64 %767, %832
  %834 = add i64 %829, %817
  store i64 %834, ptr %481, align 8
  %835 = add i64 %833, %819
  store i64 %835, ptr %482, align 8
  %836 = getelementptr inbounds nuw i8, ptr %775, i32 48
  %837 = load i64, ptr %836, align 1
  %838 = getelementptr inbounds nuw i8, ptr %775, i32 56
  %839 = load i64, ptr %838, align 1
  %840 = getelementptr inbounds nuw i8, ptr %777, i32 48
  %841 = load i64, ptr %840, align 1
  %842 = getelementptr inbounds nuw i8, ptr %777, i32 56
  %843 = load i64, ptr %842, align 1
  %844 = xor i64 %841, %837
  %845 = xor i64 %843, %839
  %846 = and i64 %844, 4294967295
  %847 = lshr i64 %844, 32
  %848 = mul nuw i64 %846, %847
  %849 = add i64 %848, %766
  %850 = and i64 %845, 4294967295
  %851 = lshr i64 %845, 32
  %852 = mul nuw i64 %850, %851
  %853 = add i64 %765, %852
  %854 = add i64 %849, %837
  store i64 %854, ptr %483, align 8
  %855 = add i64 %853, %839
  store i64 %855, ptr %484, align 8
  %856 = add nuw nsw i32 %773, 1
  %857 = icmp eq i32 %856, 4
  br i1 %857, label %858, label %764

858:                                              ; preds = %764
  %859 = load i32, ptr %441, align 4
  %860 = add i32 %859, 4
  br label %861

861:                                              ; preds = %661, %605, %858
  %862 = phi i32 [ %860, %858 ], [ 0, %605 ], [ %656, %661 ]
  store i32 %862, ptr %441, align 4
  %863 = getelementptr inbounds nuw i8, ptr %487, i32 256
  %864 = icmp ugt ptr %863, %440
  br i1 %864, label %865, label %485

865:                                              ; preds = %861, %435
  %866 = phi ptr [ %436, %435 ], [ %863, %861 ]
  %867 = icmp ult ptr %866, %6
  br i1 %867, label %868, label %875

868:                                              ; preds = %865
  %869 = getelementptr inbounds nuw i8, ptr %0, i32 256
  %870 = ptrtoint ptr %6 to i32
  %871 = ptrtoint ptr %866 to i32
  %872 = sub i32 %870, %871
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %869, ptr nonnull readonly align 1 %866, i32 %872, i1 false)
  br label %873

873:                                              ; preds = %868, %15
  %874 = phi i32 [ %19, %15 ], [ %872, %868 ]
  store i32 %874, ptr %11, align 64
  br label %875

875:                                              ; preds = %873, %3, %865
  %876 = phi i32 [ 1, %3 ], [ 0, %865 ], [ 0, %873 ]
  ret i32 %876
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local i64 @XXH3_64bits_digest(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = alloca [64 x i8], align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 536
  %4 = load i64, ptr %3, align 8
  %5 = icmp ugt i64 %4, 240
  br i1 %5, label %6, label %716

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %11 = load i64, ptr %10, align 16
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %15 = load i64, ptr %14, align 32
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %19 = load i64, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i32 512
  %23 = load i32, ptr %22, align 64
  %24 = icmp ugt i32 %23, 63
  br i1 %24, label %25, label %481

25:                                               ; preds = %6
  %26 = lshr i32 %23, 6
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 520
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds nuw i8, ptr %0, i32 516
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds nuw i8, ptr %0, i32 256
  %32 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr inbounds nuw i8, ptr %0, i32 524
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %30, %28
  %37 = icmp ugt i32 %36, %26
  %38 = shl i32 %28, 3
  %39 = getelementptr inbounds nuw i8, ptr %33, i32 %38
  br i1 %37, label %293, label %40

40:                                               ; preds = %25
  %41 = icmp eq i32 %30, %28
  br i1 %41, label %136, label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ %133, %42 ], [ %21, %40 ]
  %44 = phi i64 [ %132, %42 ], [ %19, %40 ]
  %45 = phi i64 [ %113, %42 ], [ %17, %40 ]
  %46 = phi i64 [ %112, %42 ], [ %15, %40 ]
  %47 = phi i64 [ %93, %42 ], [ %13, %40 ]
  %48 = phi i64 [ %92, %42 ], [ %11, %40 ]
  %49 = phi i64 [ %73, %42 ], [ %9, %40 ]
  %50 = phi i64 [ %72, %42 ], [ %7, %40 ]
  %51 = phi i32 [ %134, %42 ], [ 0, %40 ]
  %52 = shl i32 %51, 6
  %53 = getelementptr inbounds nuw i8, ptr %31, i32 %52
  %54 = shl i32 %51, 3
  %55 = getelementptr inbounds nuw i8, ptr %39, i32 %54
  %56 = load i64, ptr %53, align 1
  %57 = getelementptr inbounds nuw i8, ptr %53, i32 8
  %58 = load i64, ptr %57, align 1
  %59 = load i64, ptr %55, align 1
  %60 = getelementptr inbounds nuw i8, ptr %55, i32 8
  %61 = load i64, ptr %60, align 1
  %62 = xor i64 %59, %56
  %63 = xor i64 %61, %58
  %64 = and i64 %62, 4294967295
  %65 = lshr i64 %62, 32
  %66 = mul nuw i64 %64, %65
  %67 = add i64 %66, %50
  %68 = and i64 %63, 4294967295
  %69 = lshr i64 %63, 32
  %70 = mul nuw i64 %68, %69
  %71 = add i64 %49, %70
  %72 = add i64 %67, %56
  %73 = add i64 %71, %58
  %74 = getelementptr inbounds nuw i8, ptr %53, i32 16
  %75 = load i64, ptr %74, align 1
  %76 = getelementptr inbounds nuw i8, ptr %53, i32 24
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %55, i32 16
  %79 = load i64, ptr %78, align 1
  %80 = getelementptr inbounds nuw i8, ptr %55, i32 24
  %81 = load i64, ptr %80, align 1
  %82 = xor i64 %79, %75
  %83 = xor i64 %81, %77
  %84 = and i64 %82, 4294967295
  %85 = lshr i64 %82, 32
  %86 = mul nuw i64 %84, %85
  %87 = add i64 %86, %48
  %88 = and i64 %83, 4294967295
  %89 = lshr i64 %83, 32
  %90 = mul nuw i64 %88, %89
  %91 = add i64 %47, %90
  %92 = add i64 %87, %75
  %93 = add i64 %91, %77
  %94 = getelementptr inbounds nuw i8, ptr %53, i32 32
  %95 = load i64, ptr %94, align 1
  %96 = getelementptr inbounds nuw i8, ptr %53, i32 40
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %55, i32 32
  %99 = load i64, ptr %98, align 1
  %100 = getelementptr inbounds nuw i8, ptr %55, i32 40
  %101 = load i64, ptr %100, align 1
  %102 = xor i64 %99, %95
  %103 = xor i64 %101, %97
  %104 = and i64 %102, 4294967295
  %105 = lshr i64 %102, 32
  %106 = mul nuw i64 %104, %105
  %107 = add i64 %106, %46
  %108 = and i64 %103, 4294967295
  %109 = lshr i64 %103, 32
  %110 = mul nuw i64 %108, %109
  %111 = add i64 %45, %110
  %112 = add i64 %107, %95
  %113 = add i64 %111, %97
  %114 = getelementptr inbounds nuw i8, ptr %53, i32 48
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %53, i32 56
  %117 = load i64, ptr %116, align 1
  %118 = getelementptr inbounds nuw i8, ptr %55, i32 48
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %55, i32 56
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %119, %115
  %123 = xor i64 %121, %117
  %124 = and i64 %122, 4294967295
  %125 = lshr i64 %122, 32
  %126 = mul nuw i64 %124, %125
  %127 = add i64 %126, %44
  %128 = and i64 %123, 4294967295
  %129 = lshr i64 %123, 32
  %130 = mul nuw i64 %128, %129
  %131 = add i64 %43, %130
  %132 = add i64 %127, %115
  %133 = add i64 %131, %117
  %134 = add nuw i32 %51, 1
  %135 = icmp eq i32 %134, %36
  br i1 %135, label %136, label %42

136:                                              ; preds = %42, %40
  %137 = phi i64 [ %21, %40 ], [ %133, %42 ]
  %138 = phi i64 [ %19, %40 ], [ %132, %42 ]
  %139 = phi i64 [ %17, %40 ], [ %113, %42 ]
  %140 = phi i64 [ %15, %40 ], [ %112, %42 ]
  %141 = phi i64 [ %13, %40 ], [ %93, %42 ]
  %142 = phi i64 [ %11, %40 ], [ %92, %42 ]
  %143 = phi i64 [ %9, %40 ], [ %73, %42 ]
  %144 = phi i64 [ %7, %40 ], [ %72, %42 ]
  %145 = getelementptr inbounds nuw i8, ptr %33, i32 %35
  %146 = load i64, ptr %145, align 1
  %147 = lshr i64 %144, 47
  %148 = xor i64 %146, %147
  %149 = xor i64 %148, %144
  %150 = mul i64 %149, 2654435761
  %151 = getelementptr inbounds nuw i8, ptr %145, i32 8
  %152 = load i64, ptr %151, align 1
  %153 = lshr i64 %143, 47
  %154 = xor i64 %152, %153
  %155 = xor i64 %154, %143
  %156 = mul i64 %155, 2654435761
  %157 = getelementptr inbounds nuw i8, ptr %145, i32 16
  %158 = load i64, ptr %157, align 1
  %159 = lshr i64 %142, 47
  %160 = xor i64 %158, %159
  %161 = xor i64 %160, %142
  %162 = mul i64 %161, 2654435761
  %163 = getelementptr inbounds nuw i8, ptr %145, i32 24
  %164 = load i64, ptr %163, align 1
  %165 = lshr i64 %141, 47
  %166 = xor i64 %164, %165
  %167 = xor i64 %166, %141
  %168 = mul i64 %167, 2654435761
  %169 = getelementptr inbounds nuw i8, ptr %145, i32 32
  %170 = load i64, ptr %169, align 1
  %171 = lshr i64 %140, 47
  %172 = xor i64 %170, %171
  %173 = xor i64 %172, %140
  %174 = mul i64 %173, 2654435761
  %175 = getelementptr inbounds nuw i8, ptr %145, i32 40
  %176 = load i64, ptr %175, align 1
  %177 = lshr i64 %139, 47
  %178 = xor i64 %176, %177
  %179 = xor i64 %178, %139
  %180 = mul i64 %179, 2654435761
  %181 = getelementptr inbounds nuw i8, ptr %145, i32 48
  %182 = load i64, ptr %181, align 1
  %183 = lshr i64 %138, 47
  %184 = xor i64 %182, %183
  %185 = xor i64 %184, %138
  %186 = mul i64 %185, 2654435761
  %187 = getelementptr inbounds nuw i8, ptr %145, i32 56
  %188 = load i64, ptr %187, align 1
  %189 = lshr i64 %137, 47
  %190 = xor i64 %188, %189
  %191 = xor i64 %190, %137
  %192 = mul i64 %191, 2654435761
  %193 = shl nuw i32 %36, 6
  %194 = getelementptr inbounds nuw i8, ptr %31, i32 %193
  %195 = icmp eq i32 %26, %36
  br i1 %195, label %387, label %196

196:                                              ; preds = %136
  %197 = sub i32 %26, %36
  %198 = tail call i32 @llvm.umax.i32(i32 %197, i32 1)
  br label %199

199:                                              ; preds = %196, %199
  %200 = phi i64 [ %192, %196 ], [ %290, %199 ]
  %201 = phi i64 [ %186, %196 ], [ %289, %199 ]
  %202 = phi i64 [ %180, %196 ], [ %270, %199 ]
  %203 = phi i64 [ %174, %196 ], [ %269, %199 ]
  %204 = phi i64 [ %168, %196 ], [ %250, %199 ]
  %205 = phi i64 [ %162, %196 ], [ %249, %199 ]
  %206 = phi i64 [ %156, %196 ], [ %230, %199 ]
  %207 = phi i64 [ %150, %196 ], [ %229, %199 ]
  %208 = phi i32 [ 0, %196 ], [ %291, %199 ]
  %209 = shl i32 %208, 6
  %210 = getelementptr inbounds nuw i8, ptr %194, i32 %209
  %211 = shl i32 %208, 3
  %212 = getelementptr inbounds nuw i8, ptr %33, i32 %211
  %213 = load i64, ptr %210, align 1
  %214 = getelementptr inbounds nuw i8, ptr %210, i32 8
  %215 = load i64, ptr %214, align 1
  %216 = load i64, ptr %212, align 1
  %217 = getelementptr inbounds nuw i8, ptr %212, i32 8
  %218 = load i64, ptr %217, align 1
  %219 = xor i64 %216, %213
  %220 = xor i64 %218, %215
  %221 = and i64 %219, 4294967295
  %222 = lshr i64 %219, 32
  %223 = mul nuw i64 %221, %222
  %224 = add i64 %223, %207
  %225 = and i64 %220, 4294967295
  %226 = lshr i64 %220, 32
  %227 = mul nuw i64 %225, %226
  %228 = add i64 %206, %227
  %229 = add i64 %224, %213
  %230 = add i64 %228, %215
  %231 = getelementptr inbounds nuw i8, ptr %210, i32 16
  %232 = load i64, ptr %231, align 1
  %233 = getelementptr inbounds nuw i8, ptr %210, i32 24
  %234 = load i64, ptr %233, align 1
  %235 = getelementptr inbounds nuw i8, ptr %212, i32 16
  %236 = load i64, ptr %235, align 1
  %237 = getelementptr inbounds nuw i8, ptr %212, i32 24
  %238 = load i64, ptr %237, align 1
  %239 = xor i64 %236, %232
  %240 = xor i64 %238, %234
  %241 = and i64 %239, 4294967295
  %242 = lshr i64 %239, 32
  %243 = mul nuw i64 %241, %242
  %244 = add i64 %243, %205
  %245 = and i64 %240, 4294967295
  %246 = lshr i64 %240, 32
  %247 = mul nuw i64 %245, %246
  %248 = add i64 %204, %247
  %249 = add i64 %244, %232
  %250 = add i64 %248, %234
  %251 = getelementptr inbounds nuw i8, ptr %210, i32 32
  %252 = load i64, ptr %251, align 1
  %253 = getelementptr inbounds nuw i8, ptr %210, i32 40
  %254 = load i64, ptr %253, align 1
  %255 = getelementptr inbounds nuw i8, ptr %212, i32 32
  %256 = load i64, ptr %255, align 1
  %257 = getelementptr inbounds nuw i8, ptr %212, i32 40
  %258 = load i64, ptr %257, align 1
  %259 = xor i64 %256, %252
  %260 = xor i64 %258, %254
  %261 = and i64 %259, 4294967295
  %262 = lshr i64 %259, 32
  %263 = mul nuw i64 %261, %262
  %264 = add i64 %263, %203
  %265 = and i64 %260, 4294967295
  %266 = lshr i64 %260, 32
  %267 = mul nuw i64 %265, %266
  %268 = add i64 %202, %267
  %269 = add i64 %264, %252
  %270 = add i64 %268, %254
  %271 = getelementptr inbounds nuw i8, ptr %210, i32 48
  %272 = load i64, ptr %271, align 1
  %273 = getelementptr inbounds nuw i8, ptr %210, i32 56
  %274 = load i64, ptr %273, align 1
  %275 = getelementptr inbounds nuw i8, ptr %212, i32 48
  %276 = load i64, ptr %275, align 1
  %277 = getelementptr inbounds nuw i8, ptr %212, i32 56
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %276, %272
  %280 = xor i64 %278, %274
  %281 = and i64 %279, 4294967295
  %282 = lshr i64 %279, 32
  %283 = mul nuw i64 %281, %282
  %284 = add i64 %283, %201
  %285 = and i64 %280, 4294967295
  %286 = lshr i64 %280, 32
  %287 = mul nuw i64 %285, %286
  %288 = add i64 %200, %287
  %289 = add i64 %284, %272
  %290 = add i64 %288, %274
  %291 = add nuw i32 %208, 1
  %292 = icmp eq i32 %291, %198
  br i1 %292, label %387, label %199

293:                                              ; preds = %25, %293
  %294 = phi i64 [ %384, %293 ], [ %21, %25 ]
  %295 = phi i64 [ %383, %293 ], [ %19, %25 ]
  %296 = phi i64 [ %364, %293 ], [ %17, %25 ]
  %297 = phi i64 [ %363, %293 ], [ %15, %25 ]
  %298 = phi i64 [ %344, %293 ], [ %13, %25 ]
  %299 = phi i64 [ %343, %293 ], [ %11, %25 ]
  %300 = phi i64 [ %324, %293 ], [ %9, %25 ]
  %301 = phi i64 [ %323, %293 ], [ %7, %25 ]
  %302 = phi i32 [ %385, %293 ], [ 0, %25 ]
  %303 = shl i32 %302, 6
  %304 = getelementptr inbounds nuw i8, ptr %31, i32 %303
  %305 = shl i32 %302, 3
  %306 = getelementptr inbounds nuw i8, ptr %39, i32 %305
  %307 = load i64, ptr %304, align 1
  %308 = getelementptr inbounds nuw i8, ptr %304, i32 8
  %309 = load i64, ptr %308, align 1
  %310 = load i64, ptr %306, align 1
  %311 = getelementptr inbounds nuw i8, ptr %306, i32 8
  %312 = load i64, ptr %311, align 1
  %313 = xor i64 %310, %307
  %314 = xor i64 %312, %309
  %315 = and i64 %313, 4294967295
  %316 = lshr i64 %313, 32
  %317 = mul nuw i64 %315, %316
  %318 = add i64 %317, %301
  %319 = and i64 %314, 4294967295
  %320 = lshr i64 %314, 32
  %321 = mul nuw i64 %319, %320
  %322 = add i64 %300, %321
  %323 = add i64 %318, %307
  %324 = add i64 %322, %309
  %325 = getelementptr inbounds nuw i8, ptr %304, i32 16
  %326 = load i64, ptr %325, align 1
  %327 = getelementptr inbounds nuw i8, ptr %304, i32 24
  %328 = load i64, ptr %327, align 1
  %329 = getelementptr inbounds nuw i8, ptr %306, i32 16
  %330 = load i64, ptr %329, align 1
  %331 = getelementptr inbounds nuw i8, ptr %306, i32 24
  %332 = load i64, ptr %331, align 1
  %333 = xor i64 %330, %326
  %334 = xor i64 %332, %328
  %335 = and i64 %333, 4294967295
  %336 = lshr i64 %333, 32
  %337 = mul nuw i64 %335, %336
  %338 = add i64 %337, %299
  %339 = and i64 %334, 4294967295
  %340 = lshr i64 %334, 32
  %341 = mul nuw i64 %339, %340
  %342 = add i64 %298, %341
  %343 = add i64 %338, %326
  %344 = add i64 %342, %328
  %345 = getelementptr inbounds nuw i8, ptr %304, i32 32
  %346 = load i64, ptr %345, align 1
  %347 = getelementptr inbounds nuw i8, ptr %304, i32 40
  %348 = load i64, ptr %347, align 1
  %349 = getelementptr inbounds nuw i8, ptr %306, i32 32
  %350 = load i64, ptr %349, align 1
  %351 = getelementptr inbounds nuw i8, ptr %306, i32 40
  %352 = load i64, ptr %351, align 1
  %353 = xor i64 %350, %346
  %354 = xor i64 %352, %348
  %355 = and i64 %353, 4294967295
  %356 = lshr i64 %353, 32
  %357 = mul nuw i64 %355, %356
  %358 = add i64 %357, %297
  %359 = and i64 %354, 4294967295
  %360 = lshr i64 %354, 32
  %361 = mul nuw i64 %359, %360
  %362 = add i64 %296, %361
  %363 = add i64 %358, %346
  %364 = add i64 %362, %348
  %365 = getelementptr inbounds nuw i8, ptr %304, i32 48
  %366 = load i64, ptr %365, align 1
  %367 = getelementptr inbounds nuw i8, ptr %304, i32 56
  %368 = load i64, ptr %367, align 1
  %369 = getelementptr inbounds nuw i8, ptr %306, i32 48
  %370 = load i64, ptr %369, align 1
  %371 = getelementptr inbounds nuw i8, ptr %306, i32 56
  %372 = load i64, ptr %371, align 1
  %373 = xor i64 %370, %366
  %374 = xor i64 %372, %368
  %375 = and i64 %373, 4294967295
  %376 = lshr i64 %373, 32
  %377 = mul nuw i64 %375, %376
  %378 = add i64 %377, %295
  %379 = and i64 %374, 4294967295
  %380 = lshr i64 %374, 32
  %381 = mul nuw i64 %379, %380
  %382 = add i64 %294, %381
  %383 = add i64 %378, %366
  %384 = add i64 %382, %368
  %385 = add nuw nsw i32 %302, 1
  %386 = icmp eq i32 %385, %26
  br i1 %386, label %387, label %293

387:                                              ; preds = %199, %293, %136
  %388 = phi i64 [ %192, %136 ], [ %384, %293 ], [ %290, %199 ]
  %389 = phi i64 [ %186, %136 ], [ %383, %293 ], [ %289, %199 ]
  %390 = phi i64 [ %180, %136 ], [ %364, %293 ], [ %270, %199 ]
  %391 = phi i64 [ %174, %136 ], [ %363, %293 ], [ %269, %199 ]
  %392 = phi i64 [ %168, %136 ], [ %344, %293 ], [ %250, %199 ]
  %393 = phi i64 [ %162, %136 ], [ %343, %293 ], [ %249, %199 ]
  %394 = phi i64 [ %156, %136 ], [ %324, %293 ], [ %230, %199 ]
  %395 = phi i64 [ %150, %136 ], [ %323, %293 ], [ %229, %199 ]
  %396 = and i32 %23, 63
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %576, label %398

398:                                              ; preds = %387
  %399 = getelementptr inbounds nuw i8, ptr %31, i32 %23
  %400 = getelementptr inbounds i8, ptr %399, i32 -64
  %401 = getelementptr inbounds nuw i8, ptr %33, i32 %35
  %402 = getelementptr inbounds i8, ptr %401, i32 -7
  %403 = load i64, ptr %400, align 1
  %404 = getelementptr inbounds i8, ptr %399, i32 -56
  %405 = load i64, ptr %404, align 1
  %406 = load i64, ptr %402, align 1
  %407 = getelementptr inbounds nuw i8, ptr %401, i32 1
  %408 = load i64, ptr %407, align 1
  %409 = xor i64 %406, %403
  %410 = xor i64 %408, %405
  %411 = and i64 %409, 4294967295
  %412 = lshr i64 %409, 32
  %413 = mul nuw i64 %411, %412
  %414 = add i64 %413, %395
  %415 = and i64 %410, 4294967295
  %416 = lshr i64 %410, 32
  %417 = mul nuw i64 %415, %416
  %418 = add i64 %394, %417
  %419 = add i64 %414, %403
  %420 = add i64 %418, %405
  %421 = getelementptr inbounds i8, ptr %399, i32 -48
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds i8, ptr %399, i32 -40
  %424 = load i64, ptr %423, align 1
  %425 = getelementptr inbounds nuw i8, ptr %401, i32 9
  %426 = load i64, ptr %425, align 1
  %427 = getelementptr inbounds nuw i8, ptr %401, i32 17
  %428 = load i64, ptr %427, align 1
  %429 = xor i64 %426, %422
  %430 = xor i64 %428, %424
  %431 = and i64 %429, 4294967295
  %432 = lshr i64 %429, 32
  %433 = mul nuw i64 %431, %432
  %434 = add i64 %433, %393
  %435 = and i64 %430, 4294967295
  %436 = lshr i64 %430, 32
  %437 = mul nuw i64 %435, %436
  %438 = add i64 %392, %437
  %439 = add i64 %434, %422
  %440 = add i64 %438, %424
  %441 = getelementptr inbounds i8, ptr %399, i32 -32
  %442 = load i64, ptr %441, align 1
  %443 = getelementptr inbounds i8, ptr %399, i32 -24
  %444 = load i64, ptr %443, align 1
  %445 = getelementptr inbounds nuw i8, ptr %401, i32 25
  %446 = load i64, ptr %445, align 1
  %447 = getelementptr inbounds nuw i8, ptr %401, i32 33
  %448 = load i64, ptr %447, align 1
  %449 = xor i64 %446, %442
  %450 = xor i64 %448, %444
  %451 = and i64 %449, 4294967295
  %452 = lshr i64 %449, 32
  %453 = mul nuw i64 %451, %452
  %454 = add i64 %453, %391
  %455 = and i64 %450, 4294967295
  %456 = lshr i64 %450, 32
  %457 = mul nuw i64 %455, %456
  %458 = add i64 %390, %457
  %459 = add i64 %454, %442
  %460 = add i64 %458, %444
  %461 = getelementptr inbounds i8, ptr %399, i32 -16
  %462 = load i64, ptr %461, align 1
  %463 = getelementptr inbounds i8, ptr %399, i32 -8
  %464 = load i64, ptr %463, align 1
  %465 = getelementptr inbounds nuw i8, ptr %401, i32 41
  %466 = load i64, ptr %465, align 1
  %467 = getelementptr inbounds nuw i8, ptr %401, i32 49
  %468 = load i64, ptr %467, align 1
  %469 = xor i64 %466, %462
  %470 = xor i64 %468, %464
  %471 = and i64 %469, 4294967295
  %472 = lshr i64 %469, 32
  %473 = mul nuw i64 %471, %472
  %474 = add i64 %473, %389
  %475 = and i64 %470, 4294967295
  %476 = lshr i64 %470, 32
  %477 = mul nuw i64 %475, %476
  %478 = add i64 %388, %477
  %479 = add i64 %474, %462
  %480 = add i64 %478, %464
  br label %576

481:                                              ; preds = %6
  %482 = icmp eq i32 %23, 0
  br i1 %482, label %483, label %486

483:                                              ; preds = %481
  %484 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %485 = load ptr, ptr %484, align 16
  br label %576

486:                                              ; preds = %481
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #26
  %487 = sub nuw nsw i32 64, %23
  %488 = getelementptr inbounds nuw i8, ptr %0, i32 256
  %489 = getelementptr i8, ptr %0, i32 448
  %490 = getelementptr i8, ptr %489, i32 %23
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %2, ptr align 1 %490, i32 %487, i1 false)
  %491 = getelementptr inbounds nuw i8, ptr %2, i32 %487
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %491, ptr nonnull align 64 %488, i32 %23, i1 false)
  %492 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %493 = load ptr, ptr %492, align 16
  %494 = getelementptr inbounds nuw i8, ptr %0, i32 524
  %495 = load i32, ptr %494, align 4
  %496 = getelementptr inbounds nuw i8, ptr %493, i32 %495
  %497 = getelementptr inbounds i8, ptr %496, i32 -7
  %498 = load i64, ptr %2, align 8
  %499 = getelementptr inbounds nuw i8, ptr %2, i32 8
  %500 = load i64, ptr %499, align 8
  %501 = load i64, ptr %497, align 1
  %502 = getelementptr inbounds nuw i8, ptr %496, i32 1
  %503 = load i64, ptr %502, align 1
  %504 = xor i64 %501, %498
  %505 = xor i64 %503, %500
  %506 = and i64 %504, 4294967295
  %507 = lshr i64 %504, 32
  %508 = mul nuw i64 %506, %507
  %509 = add i64 %508, %7
  %510 = and i64 %505, 4294967295
  %511 = lshr i64 %505, 32
  %512 = mul nuw i64 %510, %511
  %513 = add i64 %9, %512
  %514 = add i64 %509, %498
  %515 = add i64 %513, %500
  %516 = getelementptr inbounds nuw i8, ptr %2, i32 16
  %517 = load i64, ptr %516, align 8
  %518 = getelementptr inbounds nuw i8, ptr %2, i32 24
  %519 = load i64, ptr %518, align 8
  %520 = getelementptr inbounds nuw i8, ptr %496, i32 9
  %521 = load i64, ptr %520, align 1
  %522 = getelementptr inbounds nuw i8, ptr %496, i32 17
  %523 = load i64, ptr %522, align 1
  %524 = xor i64 %521, %517
  %525 = xor i64 %523, %519
  %526 = and i64 %524, 4294967295
  %527 = lshr i64 %524, 32
  %528 = mul nuw i64 %526, %527
  %529 = add i64 %528, %11
  %530 = and i64 %525, 4294967295
  %531 = lshr i64 %525, 32
  %532 = mul nuw i64 %530, %531
  %533 = add i64 %13, %532
  %534 = add i64 %529, %517
  %535 = add i64 %533, %519
  %536 = getelementptr inbounds nuw i8, ptr %2, i32 32
  %537 = load i64, ptr %536, align 8
  %538 = getelementptr inbounds nuw i8, ptr %2, i32 40
  %539 = load i64, ptr %538, align 8
  %540 = getelementptr inbounds nuw i8, ptr %496, i32 25
  %541 = load i64, ptr %540, align 1
  %542 = getelementptr inbounds nuw i8, ptr %496, i32 33
  %543 = load i64, ptr %542, align 1
  %544 = xor i64 %541, %537
  %545 = xor i64 %543, %539
  %546 = and i64 %544, 4294967295
  %547 = lshr i64 %544, 32
  %548 = mul nuw i64 %546, %547
  %549 = add i64 %548, %15
  %550 = and i64 %545, 4294967295
  %551 = lshr i64 %545, 32
  %552 = mul nuw i64 %550, %551
  %553 = add i64 %17, %552
  %554 = add i64 %549, %537
  %555 = add i64 %553, %539
  %556 = getelementptr inbounds nuw i8, ptr %2, i32 48
  %557 = load i64, ptr %556, align 8
  %558 = getelementptr inbounds nuw i8, ptr %2, i32 56
  %559 = load i64, ptr %558, align 8
  %560 = getelementptr inbounds nuw i8, ptr %496, i32 41
  %561 = load i64, ptr %560, align 1
  %562 = getelementptr inbounds nuw i8, ptr %496, i32 49
  %563 = load i64, ptr %562, align 1
  %564 = xor i64 %561, %557
  %565 = xor i64 %563, %559
  %566 = and i64 %564, 4294967295
  %567 = lshr i64 %564, 32
  %568 = mul nuw i64 %566, %567
  %569 = add i64 %568, %19
  %570 = and i64 %565, 4294967295
  %571 = lshr i64 %565, 32
  %572 = mul nuw i64 %570, %571
  %573 = add i64 %21, %572
  %574 = add i64 %569, %557
  %575 = add i64 %573, %559
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #26
  br label %576

576:                                              ; preds = %483, %398, %387, %486
  %577 = phi ptr [ %33, %387 ], [ %33, %398 ], [ %485, %483 ], [ %493, %486 ]
  %578 = phi i64 [ %388, %387 ], [ %480, %398 ], [ %21, %483 ], [ %575, %486 ]
  %579 = phi i64 [ %389, %387 ], [ %479, %398 ], [ %19, %483 ], [ %574, %486 ]
  %580 = phi i64 [ %390, %387 ], [ %460, %398 ], [ %17, %483 ], [ %555, %486 ]
  %581 = phi i64 [ %391, %387 ], [ %459, %398 ], [ %15, %483 ], [ %554, %486 ]
  %582 = phi i64 [ %392, %387 ], [ %440, %398 ], [ %13, %483 ], [ %535, %486 ]
  %583 = phi i64 [ %393, %387 ], [ %439, %398 ], [ %11, %483 ], [ %534, %486 ]
  %584 = phi i64 [ %394, %387 ], [ %420, %398 ], [ %9, %483 ], [ %515, %486 ]
  %585 = phi i64 [ %395, %387 ], [ %419, %398 ], [ %7, %483 ], [ %514, %486 ]
  %586 = getelementptr inbounds nuw i8, ptr %577, i32 11
  %587 = mul i64 %4, -7046029288634856825
  %588 = load i64, ptr %586, align 1
  %589 = xor i64 %588, %585
  %590 = getelementptr inbounds nuw i8, ptr %577, i32 19
  %591 = load i64, ptr %590, align 1
  %592 = xor i64 %591, %584
  %593 = lshr i64 %589, 32
  %594 = lshr i64 %592, 32
  %595 = mul nuw i64 %594, %593
  %596 = and i64 %589, 4294967295
  %597 = mul nuw i64 %594, %596
  %598 = and i64 %592, 4294967295
  %599 = mul nuw i64 %598, %593
  %600 = mul nuw i64 %598, %596
  %601 = shl i64 %597, 32
  %602 = add i64 %601, %600
  %603 = icmp ult i64 %602, %600
  %604 = zext i1 %603 to i64
  %605 = add i64 %597, %599
  %606 = shl i64 %605, 32
  %607 = add i64 %606, %600
  %608 = icmp ult i64 %607, %602
  %609 = zext i1 %608 to i64
  %610 = lshr i64 %597, 32
  %611 = add nuw i64 %610, %595
  %612 = lshr i64 %599, 32
  %613 = add nuw i64 %611, %612
  %614 = add nuw i64 %613, %604
  %615 = add nuw i64 %614, %609
  %616 = xor i64 %615, %607
  %617 = add i64 %616, %587
  %618 = getelementptr inbounds nuw i8, ptr %577, i32 27
  %619 = load i64, ptr %618, align 1
  %620 = xor i64 %619, %583
  %621 = getelementptr inbounds nuw i8, ptr %577, i32 35
  %622 = load i64, ptr %621, align 1
  %623 = xor i64 %622, %582
  %624 = lshr i64 %620, 32
  %625 = lshr i64 %623, 32
  %626 = mul nuw i64 %625, %624
  %627 = and i64 %620, 4294967295
  %628 = mul nuw i64 %625, %627
  %629 = and i64 %623, 4294967295
  %630 = mul nuw i64 %629, %624
  %631 = mul nuw i64 %629, %627
  %632 = shl i64 %628, 32
  %633 = add i64 %632, %631
  %634 = icmp ult i64 %633, %631
  %635 = zext i1 %634 to i64
  %636 = add i64 %628, %630
  %637 = shl i64 %636, 32
  %638 = add i64 %637, %631
  %639 = icmp ult i64 %638, %633
  %640 = zext i1 %639 to i64
  %641 = lshr i64 %628, 32
  %642 = add nuw i64 %641, %626
  %643 = lshr i64 %630, 32
  %644 = add nuw i64 %642, %643
  %645 = add nuw i64 %644, %635
  %646 = add nuw i64 %645, %640
  %647 = xor i64 %646, %638
  %648 = add i64 %617, %647
  %649 = getelementptr inbounds nuw i8, ptr %577, i32 43
  %650 = load i64, ptr %649, align 1
  %651 = xor i64 %650, %581
  %652 = getelementptr inbounds nuw i8, ptr %577, i32 51
  %653 = load i64, ptr %652, align 1
  %654 = xor i64 %653, %580
  %655 = lshr i64 %651, 32
  %656 = lshr i64 %654, 32
  %657 = mul nuw i64 %656, %655
  %658 = and i64 %651, 4294967295
  %659 = mul nuw i64 %656, %658
  %660 = and i64 %654, 4294967295
  %661 = mul nuw i64 %660, %655
  %662 = mul nuw i64 %660, %658
  %663 = shl i64 %659, 32
  %664 = add i64 %663, %662
  %665 = icmp ult i64 %664, %662
  %666 = zext i1 %665 to i64
  %667 = add i64 %659, %661
  %668 = shl i64 %667, 32
  %669 = add i64 %668, %662
  %670 = icmp ult i64 %669, %664
  %671 = zext i1 %670 to i64
  %672 = lshr i64 %659, 32
  %673 = add nuw i64 %672, %657
  %674 = lshr i64 %661, 32
  %675 = add nuw i64 %673, %674
  %676 = add nuw i64 %675, %666
  %677 = add nuw i64 %676, %671
  %678 = xor i64 %677, %669
  %679 = add i64 %648, %678
  %680 = getelementptr inbounds nuw i8, ptr %577, i32 59
  %681 = load i64, ptr %680, align 1
  %682 = xor i64 %681, %579
  %683 = getelementptr inbounds nuw i8, ptr %577, i32 67
  %684 = load i64, ptr %683, align 1
  %685 = xor i64 %684, %578
  %686 = lshr i64 %682, 32
  %687 = lshr i64 %685, 32
  %688 = mul nuw i64 %687, %686
  %689 = and i64 %682, 4294967295
  %690 = mul nuw i64 %687, %689
  %691 = and i64 %685, 4294967295
  %692 = mul nuw i64 %691, %686
  %693 = mul nuw i64 %691, %689
  %694 = shl i64 %690, 32
  %695 = add i64 %694, %693
  %696 = icmp ult i64 %695, %693
  %697 = zext i1 %696 to i64
  %698 = add i64 %690, %692
  %699 = shl i64 %698, 32
  %700 = add i64 %699, %693
  %701 = icmp ult i64 %700, %695
  %702 = zext i1 %701 to i64
  %703 = lshr i64 %690, 32
  %704 = add nuw i64 %703, %688
  %705 = lshr i64 %692, 32
  %706 = add nuw i64 %704, %705
  %707 = add nuw i64 %706, %697
  %708 = add nuw i64 %707, %702
  %709 = xor i64 %708, %700
  %710 = add i64 %679, %709
  %711 = lshr i64 %710, 37
  %712 = xor i64 %711, %710
  %713 = mul i64 %712, 1609587929392839161
  %714 = lshr i64 %713, 32
  %715 = xor i64 %714, %713
  br label %1516

716:                                              ; preds = %1
  %717 = getelementptr inbounds nuw i8, ptr %0, i32 544
  %718 = load i64, ptr %717, align 32
  %719 = icmp eq i64 %718, 0
  %720 = getelementptr inbounds nuw i8, ptr %0, i32 256
  %721 = trunc nuw nsw i64 %4 to i32
  br i1 %719, label %1110, label %722

722:                                              ; preds = %716
  %723 = icmp samesign ult i32 %721, 17
  br i1 %723, label %724, label %820

724:                                              ; preds = %722
  %725 = icmp samesign ugt i32 %721, 8
  br i1 %725, label %726, label %767

726:                                              ; preds = %724
  %727 = load i64, ptr %720, align 1
  %728 = add i64 %718, -4734510112055689544
  %729 = xor i64 %727, %728
  %730 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %731 = getelementptr inbounds i8, ptr %730, i32 -8
  %732 = load i64, ptr %731, align 1
  %733 = sub i64 2066345149520216444, %718
  %734 = xor i64 %732, %733
  %735 = lshr i64 %729, 32
  %736 = lshr i64 %734, 32
  %737 = mul nuw i64 %736, %735
  %738 = and i64 %729, 4294967295
  %739 = mul nuw i64 %736, %738
  %740 = and i64 %734, 4294967295
  %741 = mul nuw i64 %740, %735
  %742 = mul nuw i64 %740, %738
  %743 = shl i64 %739, 32
  %744 = add i64 %743, %742
  %745 = icmp ult i64 %744, %742
  %746 = zext i1 %745 to i64
  %747 = add i64 %739, %741
  %748 = shl i64 %747, 32
  %749 = add i64 %748, %742
  %750 = icmp ult i64 %749, %744
  %751 = zext i1 %750 to i64
  %752 = lshr i64 %739, 32
  %753 = add nuw i64 %752, %737
  %754 = lshr i64 %741, 32
  %755 = add nuw i64 %753, %754
  %756 = add nuw i64 %755, %746
  %757 = add nuw i64 %756, %751
  %758 = xor i64 %757, %749
  %759 = add i64 %729, %4
  %760 = add i64 %759, %734
  %761 = add i64 %760, %758
  %762 = lshr i64 %761, 37
  %763 = xor i64 %762, %761
  %764 = mul i64 %763, 1609587929392839161
  %765 = lshr i64 %764, 32
  %766 = xor i64 %765, %764
  br label %1516

767:                                              ; preds = %724
  %768 = icmp samesign ugt i32 %721, 3
  br i1 %768, label %769, label %792

769:                                              ; preds = %767
  %770 = load i32, ptr %720, align 1
  %771 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %772 = getelementptr inbounds i8, ptr %771, i32 -4
  %773 = load i32, ptr %772, align 1
  %774 = zext i32 %770 to i64
  %775 = zext i32 %773 to i64
  %776 = shl nuw i64 %775, 32
  %777 = or disjoint i64 %776, %774
  %778 = add i64 %718, -4734510112055689544
  %779 = xor i64 %777, %778
  %780 = lshr i64 %779, 51
  %781 = xor i64 %780, %779
  %782 = mul i64 %781, 2654435761
  %783 = add i64 %782, %4
  %784 = lshr i64 %783, 47
  %785 = xor i64 %784, %783
  %786 = mul i64 %785, -4417276706812531889
  %787 = lshr i64 %786, 37
  %788 = xor i64 %787, %786
  %789 = mul i64 %788, 1609587929392839161
  %790 = lshr i64 %789, 32
  %791 = xor i64 %790, %789
  br label %1516

792:                                              ; preds = %767
  %793 = icmp eq i32 %721, 0
  br i1 %793, label %1516, label %794

794:                                              ; preds = %792
  %795 = load i8, ptr %720, align 1
  %796 = lshr i32 %721, 1
  %797 = getelementptr inbounds nuw i8, ptr %720, i32 %796
  %798 = load i8, ptr %797, align 1
  %799 = getelementptr i8, ptr %720, i32 %721
  %800 = getelementptr i8, ptr %799, i32 -1
  %801 = load i8, ptr %800, align 1
  %802 = zext i8 %795 to i32
  %803 = zext i8 %798 to i32
  %804 = shl nuw nsw i32 %803, 8
  %805 = or disjoint i32 %804, %802
  %806 = zext i8 %801 to i32
  %807 = shl nuw nsw i32 %806, 16
  %808 = or disjoint i32 %805, %807
  %809 = shl nuw nsw i32 %721, 24
  %810 = or disjoint i32 %808, %809
  %811 = zext nneg i32 %810 to i64
  %812 = add i64 %718, 963444408
  %813 = xor i64 %812, %811
  %814 = mul i64 %813, -7046029288634856825
  %815 = lshr i64 %814, 37
  %816 = xor i64 %815, %814
  %817 = mul i64 %816, 1609587929392839161
  %818 = lshr i64 %817, 32
  %819 = xor i64 %818, %817
  br label %1516

820:                                              ; preds = %722
  %821 = icmp samesign ult i32 %721, 129
  br i1 %821, label %822, label %1108

822:                                              ; preds = %820
  %823 = mul i64 %4, -7046029288634856825
  %824 = icmp samesign ugt i32 %721, 32
  br i1 %824, label %825, label %1035

825:                                              ; preds = %822
  %826 = icmp samesign ugt i32 %721, 64
  br i1 %826, label %827, label %966

827:                                              ; preds = %825
  %828 = icmp samesign ugt i32 %721, 96
  br i1 %828, label %829, label %897

829:                                              ; preds = %827
  %830 = getelementptr inbounds nuw i8, ptr %0, i32 304
  %831 = load i64, ptr %830, align 1
  %832 = getelementptr inbounds nuw i8, ptr %0, i32 312
  %833 = load i64, ptr %832, align 1
  %834 = add i64 %718, 4554437623014685352
  %835 = xor i64 %831, %834
  %836 = sub i64 2111919702937427193, %718
  %837 = xor i64 %833, %836
  %838 = lshr i64 %835, 32
  %839 = lshr i64 %837, 32
  %840 = mul nuw i64 %839, %838
  %841 = and i64 %835, 4294967295
  %842 = mul nuw i64 %839, %841
  %843 = and i64 %837, 4294967295
  %844 = mul nuw i64 %843, %838
  %845 = mul nuw i64 %843, %841
  %846 = shl i64 %842, 32
  %847 = add i64 %846, %845
  %848 = icmp ult i64 %847, %845
  %849 = zext i1 %848 to i64
  %850 = add i64 %842, %844
  %851 = shl i64 %850, 32
  %852 = add i64 %851, %845
  %853 = icmp ult i64 %852, %847
  %854 = zext i1 %853 to i64
  %855 = lshr i64 %842, 32
  %856 = add nuw i64 %855, %840
  %857 = lshr i64 %844, 32
  %858 = add nuw i64 %856, %857
  %859 = add nuw i64 %858, %849
  %860 = add nuw i64 %859, %854
  %861 = xor i64 %860, %852
  %862 = add i64 %861, %823
  %863 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %864 = getelementptr inbounds i8, ptr %863, i32 -64
  %865 = load i64, ptr %864, align 1
  %866 = getelementptr inbounds i8, ptr %863, i32 -56
  %867 = load i64, ptr %866, align 1
  %868 = add i64 %718, 3556072174620004746
  %869 = xor i64 %865, %868
  %870 = sub i64 7238261902898274248, %718
  %871 = xor i64 %867, %870
  %872 = lshr i64 %869, 32
  %873 = lshr i64 %871, 32
  %874 = mul nuw i64 %873, %872
  %875 = and i64 %869, 4294967295
  %876 = mul nuw i64 %873, %875
  %877 = and i64 %871, 4294967295
  %878 = mul nuw i64 %877, %872
  %879 = mul nuw i64 %877, %875
  %880 = shl i64 %876, 32
  %881 = add i64 %880, %879
  %882 = icmp ult i64 %881, %879
  %883 = zext i1 %882 to i64
  %884 = add i64 %876, %878
  %885 = shl i64 %884, 32
  %886 = add i64 %885, %879
  %887 = icmp ult i64 %886, %881
  %888 = zext i1 %887 to i64
  %889 = lshr i64 %876, 32
  %890 = add nuw i64 %889, %874
  %891 = lshr i64 %878, 32
  %892 = add nuw i64 %890, %891
  %893 = add nuw i64 %892, %883
  %894 = add nuw i64 %893, %888
  %895 = xor i64 %894, %886
  %896 = add i64 %862, %895
  br label %897

897:                                              ; preds = %829, %827
  %898 = phi i64 [ %896, %829 ], [ %823, %827 ]
  %899 = getelementptr inbounds nuw i8, ptr %0, i32 288
  %900 = load i64, ptr %899, align 1
  %901 = getelementptr inbounds nuw i8, ptr %0, i32 296
  %902 = load i64, ptr %901, align 1
  %903 = add i64 %718, -3818837453329782724
  %904 = xor i64 %900, %903
  %905 = sub i64 -6688317018830679928, %718
  %906 = xor i64 %902, %905
  %907 = lshr i64 %904, 32
  %908 = lshr i64 %906, 32
  %909 = mul nuw i64 %908, %907
  %910 = and i64 %904, 4294967295
  %911 = mul nuw i64 %908, %910
  %912 = and i64 %906, 4294967295
  %913 = mul nuw i64 %912, %907
  %914 = mul nuw i64 %912, %910
  %915 = shl i64 %911, 32
  %916 = add i64 %915, %914
  %917 = icmp ult i64 %916, %914
  %918 = zext i1 %917 to i64
  %919 = add i64 %911, %913
  %920 = shl i64 %919, 32
  %921 = add i64 %920, %914
  %922 = icmp ult i64 %921, %916
  %923 = zext i1 %922 to i64
  %924 = lshr i64 %911, 32
  %925 = add nuw i64 %924, %909
  %926 = lshr i64 %913, 32
  %927 = add nuw i64 %925, %926
  %928 = add nuw i64 %927, %918
  %929 = add nuw i64 %928, %923
  %930 = xor i64 %929, %921
  %931 = add i64 %930, %898
  %932 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %933 = getelementptr inbounds i8, ptr %932, i32 -48
  %934 = load i64, ptr %933, align 1
  %935 = getelementptr inbounds i8, ptr %932, i32 -40
  %936 = load i64, ptr %935, align 1
  %937 = add i64 %718, 5690594596133299313
  %938 = xor i64 %934, %937
  %939 = sub i64 -2833645246901970632, %718
  %940 = xor i64 %936, %939
  %941 = lshr i64 %938, 32
  %942 = lshr i64 %940, 32
  %943 = mul nuw i64 %942, %941
  %944 = and i64 %938, 4294967295
  %945 = mul nuw i64 %942, %944
  %946 = and i64 %940, 4294967295
  %947 = mul nuw i64 %946, %941
  %948 = mul nuw i64 %946, %944
  %949 = shl i64 %945, 32
  %950 = add i64 %949, %948
  %951 = icmp ult i64 %950, %948
  %952 = zext i1 %951 to i64
  %953 = add i64 %945, %947
  %954 = shl i64 %953, 32
  %955 = add i64 %954, %948
  %956 = icmp ult i64 %955, %950
  %957 = zext i1 %956 to i64
  %958 = lshr i64 %945, 32
  %959 = add nuw i64 %958, %943
  %960 = lshr i64 %947, 32
  %961 = add nuw i64 %959, %960
  %962 = add nuw i64 %961, %952
  %963 = add nuw i64 %962, %957
  %964 = xor i64 %963, %955
  %965 = add i64 %931, %964
  br label %966

966:                                              ; preds = %897, %825
  %967 = phi i64 [ %965, %897 ], [ %823, %825 ]
  %968 = getelementptr inbounds nuw i8, ptr %0, i32 272
  %969 = load i64, ptr %968, align 1
  %970 = getelementptr inbounds nuw i8, ptr %0, i32 280
  %971 = load i64, ptr %970, align 1
  %972 = add i64 %718, 8711581037947681227
  %973 = xor i64 %969, %972
  %974 = sub i64 2410270004345854594, %718
  %975 = xor i64 %971, %974
  %976 = lshr i64 %973, 32
  %977 = lshr i64 %975, 32
  %978 = mul nuw i64 %977, %976
  %979 = and i64 %973, 4294967295
  %980 = mul nuw i64 %977, %979
  %981 = and i64 %975, 4294967295
  %982 = mul nuw i64 %981, %976
  %983 = mul nuw i64 %981, %979
  %984 = shl i64 %980, 32
  %985 = add i64 %984, %983
  %986 = icmp ult i64 %985, %983
  %987 = zext i1 %986 to i64
  %988 = add i64 %980, %982
  %989 = shl i64 %988, 32
  %990 = add i64 %989, %983
  %991 = icmp ult i64 %990, %985
  %992 = zext i1 %991 to i64
  %993 = lshr i64 %980, 32
  %994 = add nuw i64 %993, %978
  %995 = lshr i64 %982, 32
  %996 = add nuw i64 %994, %995
  %997 = add nuw i64 %996, %987
  %998 = add nuw i64 %997, %992
  %999 = xor i64 %998, %990
  %1000 = add i64 %999, %967
  %1001 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %1002 = getelementptr inbounds i8, ptr %1001, i32 -32
  %1003 = load i64, ptr %1002, align 1
  %1004 = getelementptr inbounds i8, ptr %1001, i32 -24
  %1005 = load i64, ptr %1004, align 1
  %1006 = add i64 %718, -8204357891075471176
  %1007 = xor i64 %1003, %1006
  %1008 = sub i64 5487137525590930912, %718
  %1009 = xor i64 %1005, %1008
  %1010 = lshr i64 %1007, 32
  %1011 = lshr i64 %1009, 32
  %1012 = mul nuw i64 %1011, %1010
  %1013 = and i64 %1007, 4294967295
  %1014 = mul nuw i64 %1011, %1013
  %1015 = and i64 %1009, 4294967295
  %1016 = mul nuw i64 %1015, %1010
  %1017 = mul nuw i64 %1015, %1013
  %1018 = shl i64 %1014, 32
  %1019 = add i64 %1018, %1017
  %1020 = icmp ult i64 %1019, %1017
  %1021 = zext i1 %1020 to i64
  %1022 = add i64 %1014, %1016
  %1023 = shl i64 %1022, 32
  %1024 = add i64 %1023, %1017
  %1025 = icmp ult i64 %1024, %1019
  %1026 = zext i1 %1025 to i64
  %1027 = lshr i64 %1014, 32
  %1028 = add nuw i64 %1027, %1012
  %1029 = lshr i64 %1016, 32
  %1030 = add nuw i64 %1028, %1029
  %1031 = add nuw i64 %1030, %1021
  %1032 = add nuw i64 %1031, %1026
  %1033 = xor i64 %1032, %1024
  %1034 = add i64 %1000, %1033
  br label %1035

1035:                                             ; preds = %966, %822
  %1036 = phi i64 [ %1034, %966 ], [ %823, %822 ]
  %1037 = load i64, ptr %720, align 1
  %1038 = getelementptr inbounds nuw i8, ptr %0, i32 264
  %1039 = load i64, ptr %1038, align 1
  %1040 = add i64 %718, -4734510112055689544
  %1041 = xor i64 %1037, %1040
  %1042 = sub i64 2066345149520216444, %718
  %1043 = xor i64 %1039, %1042
  %1044 = lshr i64 %1041, 32
  %1045 = lshr i64 %1043, 32
  %1046 = mul nuw i64 %1045, %1044
  %1047 = and i64 %1041, 4294967295
  %1048 = mul nuw i64 %1045, %1047
  %1049 = and i64 %1043, 4294967295
  %1050 = mul nuw i64 %1049, %1044
  %1051 = mul nuw i64 %1049, %1047
  %1052 = shl i64 %1048, 32
  %1053 = add i64 %1052, %1051
  %1054 = icmp ult i64 %1053, %1051
  %1055 = zext i1 %1054 to i64
  %1056 = add i64 %1048, %1050
  %1057 = shl i64 %1056, 32
  %1058 = add i64 %1057, %1051
  %1059 = icmp ult i64 %1058, %1053
  %1060 = zext i1 %1059 to i64
  %1061 = lshr i64 %1048, 32
  %1062 = add nuw i64 %1061, %1046
  %1063 = lshr i64 %1050, 32
  %1064 = add nuw i64 %1062, %1063
  %1065 = add nuw i64 %1064, %1055
  %1066 = add nuw i64 %1065, %1060
  %1067 = xor i64 %1066, %1058
  %1068 = add i64 %1067, %1036
  %1069 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %1070 = getelementptr inbounds i8, ptr %1069, i32 -16
  %1071 = load i64, ptr %1070, align 1
  %1072 = getelementptr inbounds i8, ptr %1069, i32 -8
  %1073 = load i64, ptr %1072, align 1
  %1074 = add i64 %718, -2623469361688619810
  %1075 = xor i64 %1071, %1074
  %1076 = sub i64 2262974939099578482, %718
  %1077 = xor i64 %1073, %1076
  %1078 = lshr i64 %1075, 32
  %1079 = lshr i64 %1077, 32
  %1080 = mul nuw i64 %1079, %1078
  %1081 = and i64 %1075, 4294967295
  %1082 = mul nuw i64 %1079, %1081
  %1083 = and i64 %1077, 4294967295
  %1084 = mul nuw i64 %1083, %1078
  %1085 = mul nuw i64 %1083, %1081
  %1086 = shl i64 %1082, 32
  %1087 = add i64 %1086, %1085
  %1088 = icmp ult i64 %1087, %1085
  %1089 = zext i1 %1088 to i64
  %1090 = add i64 %1082, %1084
  %1091 = shl i64 %1090, 32
  %1092 = add i64 %1091, %1085
  %1093 = icmp ult i64 %1092, %1087
  %1094 = zext i1 %1093 to i64
  %1095 = lshr i64 %1082, 32
  %1096 = add nuw i64 %1095, %1080
  %1097 = lshr i64 %1084, 32
  %1098 = add nuw i64 %1096, %1097
  %1099 = add nuw i64 %1098, %1089
  %1100 = add nuw i64 %1099, %1094
  %1101 = xor i64 %1100, %1092
  %1102 = add i64 %1068, %1101
  %1103 = lshr i64 %1102, 37
  %1104 = xor i64 %1103, %1102
  %1105 = mul i64 %1104, 1609587929392839161
  %1106 = lshr i64 %1105, 32
  %1107 = xor i64 %1106, %1105
  br label %1516

1108:                                             ; preds = %820
  %1109 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %720, i32 noundef %721, ptr noundef nonnull @kSecret, i64 noundef %718)
  br label %1516

1110:                                             ; preds = %716
  %1111 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %1112 = load ptr, ptr %1111, align 16
  %1113 = icmp samesign ult i32 %721, 17
  br i1 %1113, label %1114, label %1211

1114:                                             ; preds = %1110
  %1115 = icmp samesign ugt i32 %721, 8
  br i1 %1115, label %1116, label %1158

1116:                                             ; preds = %1114
  %1117 = load i64, ptr %720, align 1
  %1118 = load i64, ptr %1112, align 1
  %1119 = xor i64 %1118, %1117
  %1120 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %1121 = getelementptr inbounds i8, ptr %1120, i32 -8
  %1122 = load i64, ptr %1121, align 1
  %1123 = getelementptr inbounds nuw i8, ptr %1112, i32 8
  %1124 = load i64, ptr %1123, align 1
  %1125 = xor i64 %1124, %1122
  %1126 = lshr i64 %1119, 32
  %1127 = lshr i64 %1125, 32
  %1128 = mul nuw i64 %1127, %1126
  %1129 = and i64 %1119, 4294967295
  %1130 = mul nuw i64 %1127, %1129
  %1131 = and i64 %1125, 4294967295
  %1132 = mul nuw i64 %1131, %1126
  %1133 = mul nuw i64 %1131, %1129
  %1134 = shl i64 %1130, 32
  %1135 = add i64 %1134, %1133
  %1136 = icmp ult i64 %1135, %1133
  %1137 = zext i1 %1136 to i64
  %1138 = add i64 %1130, %1132
  %1139 = shl i64 %1138, 32
  %1140 = add i64 %1139, %1133
  %1141 = icmp ult i64 %1140, %1135
  %1142 = zext i1 %1141 to i64
  %1143 = lshr i64 %1130, 32
  %1144 = add nuw i64 %1143, %1128
  %1145 = lshr i64 %1132, 32
  %1146 = add nuw i64 %1144, %1145
  %1147 = add nuw i64 %1146, %1137
  %1148 = add nuw i64 %1147, %1142
  %1149 = xor i64 %1148, %1140
  %1150 = add i64 %1119, %4
  %1151 = add i64 %1150, %1125
  %1152 = add i64 %1151, %1149
  %1153 = lshr i64 %1152, 37
  %1154 = xor i64 %1153, %1152
  %1155 = mul i64 %1154, 1609587929392839161
  %1156 = lshr i64 %1155, 32
  %1157 = xor i64 %1156, %1155
  br label %1516

1158:                                             ; preds = %1114
  %1159 = icmp samesign ugt i32 %721, 3
  br i1 %1159, label %1160, label %1183

1160:                                             ; preds = %1158
  %1161 = load i32, ptr %720, align 1
  %1162 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %1163 = getelementptr inbounds i8, ptr %1162, i32 -4
  %1164 = load i32, ptr %1163, align 1
  %1165 = zext i32 %1161 to i64
  %1166 = zext i32 %1164 to i64
  %1167 = shl nuw i64 %1166, 32
  %1168 = or disjoint i64 %1167, %1165
  %1169 = load i64, ptr %1112, align 1
  %1170 = xor i64 %1168, %1169
  %1171 = lshr i64 %1170, 51
  %1172 = xor i64 %1171, %1170
  %1173 = mul i64 %1172, 2654435761
  %1174 = add i64 %1173, %4
  %1175 = lshr i64 %1174, 47
  %1176 = xor i64 %1175, %1174
  %1177 = mul i64 %1176, -4417276706812531889
  %1178 = lshr i64 %1177, 37
  %1179 = xor i64 %1178, %1177
  %1180 = mul i64 %1179, 1609587929392839161
  %1181 = lshr i64 %1180, 32
  %1182 = xor i64 %1181, %1180
  br label %1516

1183:                                             ; preds = %1158
  %1184 = icmp eq i32 %721, 0
  br i1 %1184, label %1516, label %1185

1185:                                             ; preds = %1183
  %1186 = load i8, ptr %720, align 1
  %1187 = lshr i32 %721, 1
  %1188 = getelementptr inbounds nuw i8, ptr %720, i32 %1187
  %1189 = load i8, ptr %1188, align 1
  %1190 = getelementptr i8, ptr %720, i32 %721
  %1191 = getelementptr i8, ptr %1190, i32 -1
  %1192 = load i8, ptr %1191, align 1
  %1193 = zext i8 %1186 to i32
  %1194 = zext i8 %1189 to i32
  %1195 = shl nuw nsw i32 %1194, 8
  %1196 = or disjoint i32 %1195, %1193
  %1197 = zext i8 %1192 to i32
  %1198 = shl nuw nsw i32 %1197, 16
  %1199 = or disjoint i32 %1196, %1198
  %1200 = shl nuw nsw i32 %721, 24
  %1201 = or disjoint i32 %1199, %1200
  %1202 = load i32, ptr %1112, align 1
  %1203 = xor i32 %1201, %1202
  %1204 = zext i32 %1203 to i64
  %1205 = mul i64 %1204, -7046029288634856825
  %1206 = lshr i64 %1205, 37
  %1207 = xor i64 %1206, %1205
  %1208 = mul i64 %1207, 1609587929392839161
  %1209 = lshr i64 %1208, 32
  %1210 = xor i64 %1209, %1208
  br label %1516

1211:                                             ; preds = %1110
  %1212 = icmp samesign ult i32 %721, 129
  br i1 %1212, label %1213, label %1514

1213:                                             ; preds = %1211
  %1214 = mul i64 %4, -7046029288634856825
  %1215 = icmp samesign ugt i32 %721, 32
  br i1 %1215, label %1216, label %1438

1216:                                             ; preds = %1213
  %1217 = icmp samesign ugt i32 %721, 64
  br i1 %1217, label %1218, label %1365

1218:                                             ; preds = %1216
  %1219 = icmp samesign ugt i32 %721, 96
  br i1 %1219, label %1220, label %1292

1220:                                             ; preds = %1218
  %1221 = getelementptr inbounds nuw i8, ptr %0, i32 304
  %1222 = getelementptr inbounds nuw i8, ptr %1112, i32 96
  %1223 = load i64, ptr %1221, align 1
  %1224 = getelementptr inbounds nuw i8, ptr %0, i32 312
  %1225 = load i64, ptr %1224, align 1
  %1226 = load i64, ptr %1222, align 1
  %1227 = xor i64 %1226, %1223
  %1228 = getelementptr inbounds nuw i8, ptr %1112, i32 104
  %1229 = load i64, ptr %1228, align 1
  %1230 = xor i64 %1229, %1225
  %1231 = lshr i64 %1227, 32
  %1232 = lshr i64 %1230, 32
  %1233 = mul nuw i64 %1232, %1231
  %1234 = and i64 %1227, 4294967295
  %1235 = mul nuw i64 %1232, %1234
  %1236 = and i64 %1230, 4294967295
  %1237 = mul nuw i64 %1236, %1231
  %1238 = mul nuw i64 %1236, %1234
  %1239 = shl i64 %1235, 32
  %1240 = add i64 %1239, %1238
  %1241 = icmp ult i64 %1240, %1238
  %1242 = zext i1 %1241 to i64
  %1243 = add i64 %1235, %1237
  %1244 = shl i64 %1243, 32
  %1245 = add i64 %1244, %1238
  %1246 = icmp ult i64 %1245, %1240
  %1247 = zext i1 %1246 to i64
  %1248 = lshr i64 %1235, 32
  %1249 = add nuw i64 %1248, %1233
  %1250 = lshr i64 %1237, 32
  %1251 = add nuw i64 %1249, %1250
  %1252 = add nuw i64 %1251, %1242
  %1253 = add nuw i64 %1252, %1247
  %1254 = xor i64 %1253, %1245
  %1255 = add i64 %1254, %1214
  %1256 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %1257 = getelementptr inbounds i8, ptr %1256, i32 -64
  %1258 = getelementptr inbounds nuw i8, ptr %1112, i32 112
  %1259 = load i64, ptr %1257, align 1
  %1260 = getelementptr inbounds i8, ptr %1256, i32 -56
  %1261 = load i64, ptr %1260, align 1
  %1262 = load i64, ptr %1258, align 1
  %1263 = xor i64 %1262, %1259
  %1264 = getelementptr inbounds nuw i8, ptr %1112, i32 120
  %1265 = load i64, ptr %1264, align 1
  %1266 = xor i64 %1265, %1261
  %1267 = lshr i64 %1263, 32
  %1268 = lshr i64 %1266, 32
  %1269 = mul nuw i64 %1268, %1267
  %1270 = and i64 %1263, 4294967295
  %1271 = mul nuw i64 %1268, %1270
  %1272 = and i64 %1266, 4294967295
  %1273 = mul nuw i64 %1272, %1267
  %1274 = mul nuw i64 %1272, %1270
  %1275 = shl i64 %1271, 32
  %1276 = add i64 %1275, %1274
  %1277 = icmp ult i64 %1276, %1274
  %1278 = zext i1 %1277 to i64
  %1279 = add i64 %1271, %1273
  %1280 = shl i64 %1279, 32
  %1281 = add i64 %1280, %1274
  %1282 = icmp ult i64 %1281, %1276
  %1283 = zext i1 %1282 to i64
  %1284 = lshr i64 %1271, 32
  %1285 = add nuw i64 %1284, %1269
  %1286 = lshr i64 %1273, 32
  %1287 = add nuw i64 %1285, %1286
  %1288 = add nuw i64 %1287, %1278
  %1289 = add nuw i64 %1288, %1283
  %1290 = xor i64 %1289, %1281
  %1291 = add i64 %1255, %1290
  br label %1292

1292:                                             ; preds = %1220, %1218
  %1293 = phi i64 [ %1291, %1220 ], [ %1214, %1218 ]
  %1294 = getelementptr inbounds nuw i8, ptr %0, i32 288
  %1295 = getelementptr inbounds nuw i8, ptr %1112, i32 64
  %1296 = load i64, ptr %1294, align 1
  %1297 = getelementptr inbounds nuw i8, ptr %0, i32 296
  %1298 = load i64, ptr %1297, align 1
  %1299 = load i64, ptr %1295, align 1
  %1300 = xor i64 %1299, %1296
  %1301 = getelementptr inbounds nuw i8, ptr %1112, i32 72
  %1302 = load i64, ptr %1301, align 1
  %1303 = xor i64 %1302, %1298
  %1304 = lshr i64 %1300, 32
  %1305 = lshr i64 %1303, 32
  %1306 = mul nuw i64 %1305, %1304
  %1307 = and i64 %1300, 4294967295
  %1308 = mul nuw i64 %1305, %1307
  %1309 = and i64 %1303, 4294967295
  %1310 = mul nuw i64 %1309, %1304
  %1311 = mul nuw i64 %1309, %1307
  %1312 = shl i64 %1308, 32
  %1313 = add i64 %1312, %1311
  %1314 = icmp ult i64 %1313, %1311
  %1315 = zext i1 %1314 to i64
  %1316 = add i64 %1308, %1310
  %1317 = shl i64 %1316, 32
  %1318 = add i64 %1317, %1311
  %1319 = icmp ult i64 %1318, %1313
  %1320 = zext i1 %1319 to i64
  %1321 = lshr i64 %1308, 32
  %1322 = add nuw i64 %1321, %1306
  %1323 = lshr i64 %1310, 32
  %1324 = add nuw i64 %1322, %1323
  %1325 = add nuw i64 %1324, %1315
  %1326 = add nuw i64 %1325, %1320
  %1327 = xor i64 %1326, %1318
  %1328 = add i64 %1327, %1293
  %1329 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %1330 = getelementptr inbounds i8, ptr %1329, i32 -48
  %1331 = getelementptr inbounds nuw i8, ptr %1112, i32 80
  %1332 = load i64, ptr %1330, align 1
  %1333 = getelementptr inbounds i8, ptr %1329, i32 -40
  %1334 = load i64, ptr %1333, align 1
  %1335 = load i64, ptr %1331, align 1
  %1336 = xor i64 %1335, %1332
  %1337 = getelementptr inbounds nuw i8, ptr %1112, i32 88
  %1338 = load i64, ptr %1337, align 1
  %1339 = xor i64 %1338, %1334
  %1340 = lshr i64 %1336, 32
  %1341 = lshr i64 %1339, 32
  %1342 = mul nuw i64 %1341, %1340
  %1343 = and i64 %1336, 4294967295
  %1344 = mul nuw i64 %1341, %1343
  %1345 = and i64 %1339, 4294967295
  %1346 = mul nuw i64 %1345, %1340
  %1347 = mul nuw i64 %1345, %1343
  %1348 = shl i64 %1344, 32
  %1349 = add i64 %1348, %1347
  %1350 = icmp ult i64 %1349, %1347
  %1351 = zext i1 %1350 to i64
  %1352 = add i64 %1344, %1346
  %1353 = shl i64 %1352, 32
  %1354 = add i64 %1353, %1347
  %1355 = icmp ult i64 %1354, %1349
  %1356 = zext i1 %1355 to i64
  %1357 = lshr i64 %1344, 32
  %1358 = add nuw i64 %1357, %1342
  %1359 = lshr i64 %1346, 32
  %1360 = add nuw i64 %1358, %1359
  %1361 = add nuw i64 %1360, %1351
  %1362 = add nuw i64 %1361, %1356
  %1363 = xor i64 %1362, %1354
  %1364 = add i64 %1328, %1363
  br label %1365

1365:                                             ; preds = %1292, %1216
  %1366 = phi i64 [ %1364, %1292 ], [ %1214, %1216 ]
  %1367 = getelementptr inbounds nuw i8, ptr %0, i32 272
  %1368 = getelementptr inbounds nuw i8, ptr %1112, i32 32
  %1369 = load i64, ptr %1367, align 1
  %1370 = getelementptr inbounds nuw i8, ptr %0, i32 280
  %1371 = load i64, ptr %1370, align 1
  %1372 = load i64, ptr %1368, align 1
  %1373 = xor i64 %1372, %1369
  %1374 = getelementptr inbounds nuw i8, ptr %1112, i32 40
  %1375 = load i64, ptr %1374, align 1
  %1376 = xor i64 %1375, %1371
  %1377 = lshr i64 %1373, 32
  %1378 = lshr i64 %1376, 32
  %1379 = mul nuw i64 %1378, %1377
  %1380 = and i64 %1373, 4294967295
  %1381 = mul nuw i64 %1378, %1380
  %1382 = and i64 %1376, 4294967295
  %1383 = mul nuw i64 %1382, %1377
  %1384 = mul nuw i64 %1382, %1380
  %1385 = shl i64 %1381, 32
  %1386 = add i64 %1385, %1384
  %1387 = icmp ult i64 %1386, %1384
  %1388 = zext i1 %1387 to i64
  %1389 = add i64 %1381, %1383
  %1390 = shl i64 %1389, 32
  %1391 = add i64 %1390, %1384
  %1392 = icmp ult i64 %1391, %1386
  %1393 = zext i1 %1392 to i64
  %1394 = lshr i64 %1381, 32
  %1395 = add nuw i64 %1394, %1379
  %1396 = lshr i64 %1383, 32
  %1397 = add nuw i64 %1395, %1396
  %1398 = add nuw i64 %1397, %1388
  %1399 = add nuw i64 %1398, %1393
  %1400 = xor i64 %1399, %1391
  %1401 = add i64 %1400, %1366
  %1402 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %1403 = getelementptr inbounds i8, ptr %1402, i32 -32
  %1404 = getelementptr inbounds nuw i8, ptr %1112, i32 48
  %1405 = load i64, ptr %1403, align 1
  %1406 = getelementptr inbounds i8, ptr %1402, i32 -24
  %1407 = load i64, ptr %1406, align 1
  %1408 = load i64, ptr %1404, align 1
  %1409 = xor i64 %1408, %1405
  %1410 = getelementptr inbounds nuw i8, ptr %1112, i32 56
  %1411 = load i64, ptr %1410, align 1
  %1412 = xor i64 %1411, %1407
  %1413 = lshr i64 %1409, 32
  %1414 = lshr i64 %1412, 32
  %1415 = mul nuw i64 %1414, %1413
  %1416 = and i64 %1409, 4294967295
  %1417 = mul nuw i64 %1414, %1416
  %1418 = and i64 %1412, 4294967295
  %1419 = mul nuw i64 %1418, %1413
  %1420 = mul nuw i64 %1418, %1416
  %1421 = shl i64 %1417, 32
  %1422 = add i64 %1421, %1420
  %1423 = icmp ult i64 %1422, %1420
  %1424 = zext i1 %1423 to i64
  %1425 = add i64 %1417, %1419
  %1426 = shl i64 %1425, 32
  %1427 = add i64 %1426, %1420
  %1428 = icmp ult i64 %1427, %1422
  %1429 = zext i1 %1428 to i64
  %1430 = lshr i64 %1417, 32
  %1431 = add nuw i64 %1430, %1415
  %1432 = lshr i64 %1419, 32
  %1433 = add nuw i64 %1431, %1432
  %1434 = add nuw i64 %1433, %1424
  %1435 = add nuw i64 %1434, %1429
  %1436 = xor i64 %1435, %1427
  %1437 = add i64 %1401, %1436
  br label %1438

1438:                                             ; preds = %1365, %1213
  %1439 = phi i64 [ %1437, %1365 ], [ %1214, %1213 ]
  %1440 = load i64, ptr %720, align 1
  %1441 = getelementptr inbounds nuw i8, ptr %0, i32 264
  %1442 = load i64, ptr %1441, align 1
  %1443 = load i64, ptr %1112, align 1
  %1444 = xor i64 %1443, %1440
  %1445 = getelementptr inbounds nuw i8, ptr %1112, i32 8
  %1446 = load i64, ptr %1445, align 1
  %1447 = xor i64 %1446, %1442
  %1448 = lshr i64 %1444, 32
  %1449 = lshr i64 %1447, 32
  %1450 = mul nuw i64 %1449, %1448
  %1451 = and i64 %1444, 4294967295
  %1452 = mul nuw i64 %1449, %1451
  %1453 = and i64 %1447, 4294967295
  %1454 = mul nuw i64 %1453, %1448
  %1455 = mul nuw i64 %1453, %1451
  %1456 = shl i64 %1452, 32
  %1457 = add i64 %1456, %1455
  %1458 = icmp ult i64 %1457, %1455
  %1459 = zext i1 %1458 to i64
  %1460 = add i64 %1452, %1454
  %1461 = shl i64 %1460, 32
  %1462 = add i64 %1461, %1455
  %1463 = icmp ult i64 %1462, %1457
  %1464 = zext i1 %1463 to i64
  %1465 = lshr i64 %1452, 32
  %1466 = add nuw i64 %1465, %1450
  %1467 = lshr i64 %1454, 32
  %1468 = add nuw i64 %1466, %1467
  %1469 = add nuw i64 %1468, %1459
  %1470 = add nuw i64 %1469, %1464
  %1471 = xor i64 %1470, %1462
  %1472 = add i64 %1471, %1439
  %1473 = getelementptr inbounds nuw i8, ptr %720, i32 %721
  %1474 = getelementptr inbounds i8, ptr %1473, i32 -16
  %1475 = getelementptr inbounds nuw i8, ptr %1112, i32 16
  %1476 = load i64, ptr %1474, align 1
  %1477 = getelementptr inbounds i8, ptr %1473, i32 -8
  %1478 = load i64, ptr %1477, align 1
  %1479 = load i64, ptr %1475, align 1
  %1480 = xor i64 %1479, %1476
  %1481 = getelementptr inbounds nuw i8, ptr %1112, i32 24
  %1482 = load i64, ptr %1481, align 1
  %1483 = xor i64 %1482, %1478
  %1484 = lshr i64 %1480, 32
  %1485 = lshr i64 %1483, 32
  %1486 = mul nuw i64 %1485, %1484
  %1487 = and i64 %1480, 4294967295
  %1488 = mul nuw i64 %1485, %1487
  %1489 = and i64 %1483, 4294967295
  %1490 = mul nuw i64 %1489, %1484
  %1491 = mul nuw i64 %1489, %1487
  %1492 = shl i64 %1488, 32
  %1493 = add i64 %1492, %1491
  %1494 = icmp ult i64 %1493, %1491
  %1495 = zext i1 %1494 to i64
  %1496 = add i64 %1488, %1490
  %1497 = shl i64 %1496, 32
  %1498 = add i64 %1497, %1491
  %1499 = icmp ult i64 %1498, %1493
  %1500 = zext i1 %1499 to i64
  %1501 = lshr i64 %1488, 32
  %1502 = add nuw i64 %1501, %1486
  %1503 = lshr i64 %1490, 32
  %1504 = add nuw i64 %1502, %1503
  %1505 = add nuw i64 %1504, %1495
  %1506 = add nuw i64 %1505, %1500
  %1507 = xor i64 %1506, %1498
  %1508 = add i64 %1472, %1507
  %1509 = lshr i64 %1508, 37
  %1510 = xor i64 %1509, %1508
  %1511 = mul i64 %1510, 1609587929392839161
  %1512 = lshr i64 %1511, 32
  %1513 = xor i64 %1512, %1511
  br label %1516

1514:                                             ; preds = %1211
  %1515 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %720, i32 noundef %721, ptr noundef readonly %1112, i64 noundef 0)
  br label %1516

1516:                                             ; preds = %1514, %1438, %1185, %1183, %1160, %1116, %1108, %1035, %794, %792, %769, %726, %576
  %1517 = phi i64 [ %715, %576 ], [ %1107, %1035 ], [ %1109, %1108 ], [ %766, %726 ], [ %791, %769 ], [ %819, %794 ], [ 0, %792 ], [ %1513, %1438 ], [ %1515, %1514 ], [ %1157, %1116 ], [ %1182, %1160 ], [ %1210, %1185 ], [ 0, %1183 ]
  ret i64 %1517
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH3_128bits(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #15 {
  %4 = icmp ult i32 %2, 17
  br i1 %4, label %5, label %150

5:                                                ; preds = %3
  %6 = icmp samesign ugt i32 %2, 8
  br i1 %6, label %7, label %72

7:                                                ; preds = %5
  %8 = load i64, ptr %1, align 1
  %9 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %10 = getelementptr inbounds i8, ptr %9, i32 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, 2066345149520216444
  %13 = xor i64 %8, %12
  %14 = xor i64 %13, -4734510112055689544
  %15 = lshr i64 %14, 32
  %16 = mul nuw i64 %15, 2654435761
  %17 = and i64 %14, 4294967295
  %18 = mul nuw i64 %17, 2654435761
  %19 = mul nuw i64 %15, 2246822535
  %20 = mul nuw i64 %17, 2246822535
  %21 = mul i64 %17, -7046029288634856825
  %22 = icmp ult i64 %21, %20
  %23 = zext i1 %22 to i64
  %24 = add i64 %18, %19
  %25 = shl i64 %24, 32
  %26 = add i64 %25, %20
  %27 = icmp ult i64 %26, %21
  %28 = zext i1 %27 to i64
  %29 = lshr i64 %18, 32
  %30 = lshr i64 %19, 32
  %31 = mul i64 %12, -7046029288634856825
  %32 = add i64 %16, %31
  %33 = add i64 %32, %29
  %34 = add i64 %33, %30
  %35 = add i64 %34, %23
  %36 = add i64 %35, %28
  %37 = lshr i64 %36, 32
  %38 = lshr i64 %26, 32
  %39 = mul nuw i64 %38, 3266489917
  %40 = and i64 %20, 4294967295
  %41 = xor i64 %37, %40
  %42 = mul nuw i64 %41, 3266489917
  %43 = mul nuw nsw i64 %38, 668265295
  %44 = mul nuw nsw i64 %41, 668265295
  %45 = mul i64 %41, -4417276706812531889
  %46 = icmp ult i64 %45, %44
  %47 = zext i1 %46 to i64
  %48 = add nuw i64 %42, %43
  %49 = shl i64 %48, 32
  %50 = add i64 %49, %44
  %51 = icmp ult i64 %50, %45
  %52 = zext i1 %51 to i64
  %53 = lshr i64 %42, 32
  %54 = lshr i64 %43, 32
  %55 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %56 = mul i64 %36, -4417276706812531889
  %57 = add nuw i64 %54, %39
  %58 = add i64 %57, %56
  %59 = add i64 %58, %53
  %60 = add i64 %59, %47
  %61 = add i64 %60, %52
  %62 = lshr i64 %50, 37
  %63 = xor i64 %62, %50
  %64 = mul i64 %63, 1609587929392839161
  %65 = lshr i64 %64, 32
  %66 = xor i64 %65, %64
  store i64 %66, ptr %0, align 8, !alias.scope !17
  %67 = lshr i64 %61, 37
  %68 = xor i64 %67, %61
  %69 = mul i64 %68, 1609587929392839161
  %70 = lshr i64 %69, 32
  %71 = xor i64 %70, %69
  store i64 %71, ptr %55, align 8, !alias.scope !17
  br label %442

72:                                               ; preds = %5
  %73 = icmp samesign ugt i32 %2, 3
  br i1 %73, label %74, label %112

74:                                               ; preds = %72
  %75 = load i32, ptr %1, align 1
  %76 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %77 = getelementptr inbounds i8, ptr %76, i32 -4
  %78 = load i32, ptr %77, align 1
  %79 = zext i32 %75 to i64
  %80 = zext i32 %78 to i64
  %81 = shl nuw i64 %80, 32
  %82 = or disjoint i64 %81, %79
  %83 = xor i64 %82, -4734510112055689544
  %84 = xor i64 %82, 8935565165804498204
  %85 = tail call i64 @llvm.bswap.i64(i64 %84)
  %86 = zext nneg i32 %2 to i64
  %87 = lshr i64 %83, 51
  %88 = xor i64 %87, %83
  %89 = mul i64 %88, 2654435761
  %90 = add i64 %89, %86
  %91 = lshr i64 %90, 47
  %92 = xor i64 %91, %90
  %93 = mul i64 %92, -4417276706812531889
  %94 = lshr i64 %85, 47
  %95 = xor i64 %94, %85
  %96 = mul i64 %95, -7046029288634856825
  %97 = sub i64 %96, %86
  %98 = lshr i64 %97, 43
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, -8796714831421723037
  %101 = lshr i64 %93, 37
  %102 = xor i64 %101, %93
  %103 = mul i64 %102, 1609587929392839161
  %104 = lshr i64 %103, 32
  %105 = xor i64 %104, %103
  store i64 %105, ptr %0, align 8, !alias.scope !20
  %106 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %107 = lshr i64 %100, 37
  %108 = xor i64 %107, %100
  %109 = mul i64 %108, 1609587929392839161
  %110 = lshr i64 %109, 32
  %111 = xor i64 %110, %109
  store i64 %111, ptr %106, align 8, !alias.scope !20
  br label %442

112:                                              ; preds = %72
  %113 = icmp eq i32 %2, 0
  br i1 %113, label %149, label %114

114:                                              ; preds = %112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %115 = load i8, ptr %1, align 1, !noalias !23
  %116 = lshr i32 %2, 1
  %117 = getelementptr inbounds nuw i8, ptr %1, i32 %116
  %118 = load i8, ptr %117, align 1, !noalias !23
  %119 = getelementptr i8, ptr %1, i32 %2
  %120 = getelementptr i8, ptr %119, i32 -1
  %121 = load i8, ptr %120, align 1, !noalias !23
  %122 = zext i8 %115 to i32
  %123 = zext i8 %118 to i32
  %124 = shl nuw nsw i32 %123, 8
  %125 = or disjoint i32 %124, %122
  %126 = zext i8 %121 to i32
  %127 = shl nuw nsw i32 %126, 16
  %128 = or disjoint i32 %125, %127
  %129 = shl nuw nsw i32 %2, 24
  %130 = or disjoint i32 %128, %129
  %131 = xor i32 %130, 963444408
  %132 = zext nneg i32 %131 to i64
  %133 = xor i32 %130, 597969854
  %134 = tail call i32 @llvm.bswap.i32(i32 %133)
  %135 = zext i32 %134 to i64
  %136 = mul i64 %132, -7046029288634856825
  %137 = mul i64 %135, -4417276706812531889
  %138 = lshr i64 %136, 37
  %139 = xor i64 %138, %136
  %140 = mul i64 %139, 1609587929392839161
  %141 = lshr i64 %140, 32
  %142 = xor i64 %141, %140
  store i64 %142, ptr %0, align 8, !alias.scope !23
  %143 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %144 = lshr i64 %137, 37
  %145 = xor i64 %144, %137
  %146 = mul i64 %145, 1609587929392839161
  %147 = lshr i64 %146, 32
  %148 = xor i64 %147, %146
  store i64 %148, ptr %143, align 8, !alias.scope !23
  br label %442

149:                                              ; preds = %112
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !26
  br label %442

150:                                              ; preds = %3
  %151 = icmp ult i32 %2, 129
  br i1 %151, label %152, label %438

152:                                              ; preds = %150
  %153 = zext nneg i32 %2 to i64
  %154 = mul i64 %153, -7046029288634856825
  %155 = icmp samesign ugt i32 %2, 32
  br i1 %155, label %156, label %355

156:                                              ; preds = %152
  %157 = icmp samesign ugt i32 %2, 64
  br i1 %157, label %158, label %289

158:                                              ; preds = %156
  %159 = icmp samesign ugt i32 %2, 96
  br i1 %159, label %160, label %223

160:                                              ; preds = %158
  %161 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %162 = load i64, ptr %161, align 1
  %163 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %164 = load i64, ptr %163, align 1
  %165 = xor i64 %162, 4554437623014685352
  %166 = xor i64 %164, 2111919702937427193
  %167 = lshr i64 %165, 32
  %168 = lshr i64 %166, 32
  %169 = mul nuw i64 %168, %167
  %170 = and i64 %165, 4294967295
  %171 = mul nuw i64 %168, %170
  %172 = and i64 %166, 4294967295
  %173 = mul nuw i64 %172, %167
  %174 = mul nuw i64 %172, %170
  %175 = shl i64 %171, 32
  %176 = add i64 %175, %174
  %177 = icmp ult i64 %176, %174
  %178 = zext i1 %177 to i64
  %179 = add i64 %171, %173
  %180 = shl i64 %179, 32
  %181 = add i64 %180, %174
  %182 = icmp ult i64 %181, %176
  %183 = zext i1 %182 to i64
  %184 = lshr i64 %171, 32
  %185 = add nuw i64 %184, %169
  %186 = lshr i64 %173, 32
  %187 = add nuw i64 %185, %186
  %188 = add nuw i64 %187, %178
  %189 = add nuw i64 %188, %183
  %190 = xor i64 %189, %181
  %191 = add i64 %190, %154
  %192 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %193 = getelementptr inbounds i8, ptr %192, i32 -64
  %194 = load i64, ptr %193, align 1
  %195 = getelementptr inbounds i8, ptr %192, i32 -56
  %196 = load i64, ptr %195, align 1
  %197 = xor i64 %194, 3556072174620004746
  %198 = xor i64 %196, 7238261902898274248
  %199 = lshr i64 %197, 32
  %200 = lshr i64 %198, 32
  %201 = mul nuw i64 %200, %199
  %202 = and i64 %197, 4294967295
  %203 = mul nuw i64 %200, %202
  %204 = and i64 %198, 4294967295
  %205 = mul nuw i64 %204, %199
  %206 = mul nuw i64 %204, %202
  %207 = shl i64 %203, 32
  %208 = add i64 %207, %206
  %209 = icmp ult i64 %208, %206
  %210 = zext i1 %209 to i64
  %211 = add i64 %203, %205
  %212 = shl i64 %211, 32
  %213 = add i64 %212, %206
  %214 = icmp ult i64 %213, %208
  %215 = zext i1 %214 to i64
  %216 = lshr i64 %203, 32
  %217 = add nuw i64 %216, %201
  %218 = lshr i64 %205, 32
  %219 = add nuw i64 %217, %218
  %220 = add nuw i64 %219, %210
  %221 = add nuw i64 %220, %215
  %222 = xor i64 %221, %213
  br label %223

223:                                              ; preds = %160, %158
  %224 = phi i64 [ %222, %160 ], [ 0, %158 ]
  %225 = phi i64 [ %191, %160 ], [ %154, %158 ]
  %226 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %227 = load i64, ptr %226, align 1
  %228 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %229 = load i64, ptr %228, align 1
  %230 = xor i64 %227, -3818837453329782724
  %231 = xor i64 %229, -6688317018830679928
  %232 = lshr i64 %230, 32
  %233 = lshr i64 %231, 32
  %234 = mul nuw i64 %233, %232
  %235 = and i64 %230, 4294967295
  %236 = mul nuw i64 %233, %235
  %237 = and i64 %231, 4294967295
  %238 = mul nuw i64 %237, %232
  %239 = mul nuw i64 %237, %235
  %240 = shl i64 %236, 32
  %241 = add i64 %240, %239
  %242 = icmp ult i64 %241, %239
  %243 = zext i1 %242 to i64
  %244 = add i64 %236, %238
  %245 = shl i64 %244, 32
  %246 = add i64 %245, %239
  %247 = icmp ult i64 %246, %241
  %248 = zext i1 %247 to i64
  %249 = lshr i64 %236, 32
  %250 = add nuw i64 %249, %234
  %251 = lshr i64 %238, 32
  %252 = add nuw i64 %250, %251
  %253 = add nuw i64 %252, %243
  %254 = add nuw i64 %253, %248
  %255 = xor i64 %254, %246
  %256 = add i64 %255, %225
  %257 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %258 = getelementptr inbounds i8, ptr %257, i32 -48
  %259 = load i64, ptr %258, align 1
  %260 = getelementptr inbounds i8, ptr %257, i32 -40
  %261 = load i64, ptr %260, align 1
  %262 = xor i64 %259, 5690594596133299313
  %263 = xor i64 %261, -2833645246901970632
  %264 = lshr i64 %262, 32
  %265 = lshr i64 %263, 32
  %266 = mul nuw i64 %265, %264
  %267 = and i64 %262, 4294967295
  %268 = mul nuw i64 %265, %267
  %269 = and i64 %263, 4294967295
  %270 = mul nuw i64 %269, %264
  %271 = mul nuw i64 %269, %267
  %272 = shl i64 %268, 32
  %273 = add i64 %272, %271
  %274 = icmp ult i64 %273, %271
  %275 = zext i1 %274 to i64
  %276 = add i64 %268, %270
  %277 = shl i64 %276, 32
  %278 = add i64 %277, %271
  %279 = icmp ult i64 %278, %273
  %280 = zext i1 %279 to i64
  %281 = lshr i64 %268, 32
  %282 = add nuw i64 %281, %266
  %283 = lshr i64 %270, 32
  %284 = add nuw i64 %282, %283
  %285 = add nuw i64 %284, %275
  %286 = add nuw i64 %285, %280
  %287 = xor i64 %286, %278
  %288 = add i64 %287, %224
  br label %289

289:                                              ; preds = %223, %156
  %290 = phi i64 [ %288, %223 ], [ 0, %156 ]
  %291 = phi i64 [ %256, %223 ], [ %154, %156 ]
  %292 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %293 = load i64, ptr %292, align 1
  %294 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %295 = load i64, ptr %294, align 1
  %296 = xor i64 %293, 8711581037947681227
  %297 = xor i64 %295, 2410270004345854594
  %298 = lshr i64 %296, 32
  %299 = lshr i64 %297, 32
  %300 = mul nuw i64 %299, %298
  %301 = and i64 %296, 4294967295
  %302 = mul nuw i64 %299, %301
  %303 = and i64 %297, 4294967295
  %304 = mul nuw i64 %303, %298
  %305 = mul nuw i64 %303, %301
  %306 = shl i64 %302, 32
  %307 = add i64 %306, %305
  %308 = icmp ult i64 %307, %305
  %309 = zext i1 %308 to i64
  %310 = add i64 %302, %304
  %311 = shl i64 %310, 32
  %312 = add i64 %311, %305
  %313 = icmp ult i64 %312, %307
  %314 = zext i1 %313 to i64
  %315 = lshr i64 %302, 32
  %316 = add nuw i64 %315, %300
  %317 = lshr i64 %304, 32
  %318 = add nuw i64 %316, %317
  %319 = add nuw i64 %318, %309
  %320 = add nuw i64 %319, %314
  %321 = xor i64 %320, %312
  %322 = add i64 %321, %291
  %323 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %324 = getelementptr inbounds i8, ptr %323, i32 -32
  %325 = load i64, ptr %324, align 1
  %326 = getelementptr inbounds i8, ptr %323, i32 -24
  %327 = load i64, ptr %326, align 1
  %328 = xor i64 %325, -8204357891075471176
  %329 = xor i64 %327, 5487137525590930912
  %330 = lshr i64 %328, 32
  %331 = lshr i64 %329, 32
  %332 = mul nuw i64 %331, %330
  %333 = and i64 %328, 4294967295
  %334 = mul nuw i64 %331, %333
  %335 = and i64 %329, 4294967295
  %336 = mul nuw i64 %335, %330
  %337 = mul nuw i64 %335, %333
  %338 = shl i64 %334, 32
  %339 = add i64 %338, %337
  %340 = icmp ult i64 %339, %337
  %341 = zext i1 %340 to i64
  %342 = add i64 %334, %336
  %343 = shl i64 %342, 32
  %344 = add i64 %343, %337
  %345 = icmp ult i64 %344, %339
  %346 = zext i1 %345 to i64
  %347 = lshr i64 %334, 32
  %348 = add nuw i64 %347, %332
  %349 = lshr i64 %336, 32
  %350 = add nuw i64 %348, %349
  %351 = add nuw i64 %350, %341
  %352 = add nuw i64 %351, %346
  %353 = xor i64 %352, %344
  %354 = add i64 %353, %290
  br label %355

355:                                              ; preds = %152, %289
  %356 = phi i64 [ %354, %289 ], [ 0, %152 ]
  %357 = phi i64 [ %322, %289 ], [ %154, %152 ]
  %358 = load i64, ptr %1, align 1
  %359 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %358, -4734510112055689544
  %362 = xor i64 %360, 2066345149520216444
  %363 = lshr i64 %361, 32
  %364 = lshr i64 %362, 32
  %365 = mul nuw i64 %364, %363
  %366 = and i64 %361, 4294967295
  %367 = mul nuw i64 %364, %366
  %368 = and i64 %362, 4294967295
  %369 = mul nuw i64 %368, %363
  %370 = mul nuw i64 %368, %366
  %371 = shl i64 %367, 32
  %372 = add i64 %371, %370
  %373 = icmp ult i64 %372, %370
  %374 = zext i1 %373 to i64
  %375 = add i64 %367, %369
  %376 = shl i64 %375, 32
  %377 = add i64 %376, %370
  %378 = icmp ult i64 %377, %372
  %379 = zext i1 %378 to i64
  %380 = lshr i64 %367, 32
  %381 = add nuw i64 %380, %365
  %382 = lshr i64 %369, 32
  %383 = add nuw i64 %381, %382
  %384 = add nuw i64 %383, %374
  %385 = add nuw i64 %384, %379
  %386 = xor i64 %385, %377
  %387 = add i64 %386, %357
  %388 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %389 = getelementptr inbounds i8, ptr %388, i32 -16
  %390 = load i64, ptr %389, align 1
  %391 = getelementptr inbounds i8, ptr %388, i32 -8
  %392 = load i64, ptr %391, align 1
  %393 = xor i64 %390, -2623469361688619810
  %394 = xor i64 %392, 2262974939099578482
  %395 = lshr i64 %393, 32
  %396 = lshr i64 %394, 32
  %397 = mul nuw i64 %396, %395
  %398 = and i64 %393, 4294967295
  %399 = mul nuw i64 %396, %398
  %400 = and i64 %394, 4294967295
  %401 = mul nuw i64 %400, %395
  %402 = mul nuw i64 %400, %398
  %403 = shl i64 %399, 32
  %404 = add i64 %403, %402
  %405 = icmp ult i64 %404, %402
  %406 = zext i1 %405 to i64
  %407 = add i64 %399, %401
  %408 = shl i64 %407, 32
  %409 = add i64 %408, %402
  %410 = icmp ult i64 %409, %404
  %411 = zext i1 %410 to i64
  %412 = lshr i64 %399, 32
  %413 = add nuw i64 %412, %397
  %414 = lshr i64 %401, 32
  %415 = add nuw i64 %413, %414
  %416 = add nuw i64 %415, %406
  %417 = add nuw i64 %416, %411
  %418 = xor i64 %417, %409
  %419 = add i64 %418, %356
  %420 = add i64 %419, %387
  %421 = mul i64 %387, -7046029288634856825
  %422 = mul i64 %419, -8796714831421723037
  %423 = mul i64 %153, -4417276706812531889
  %424 = add i64 %421, %423
  %425 = add i64 %424, %422
  %426 = lshr i64 %420, 37
  %427 = xor i64 %426, %420
  %428 = mul i64 %427, 1609587929392839161
  %429 = lshr i64 %428, 32
  %430 = xor i64 %429, %428
  store i64 %430, ptr %0, align 8, !alias.scope !29
  %431 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %432 = lshr i64 %425, 37
  %433 = xor i64 %432, %425
  %434 = mul i64 %433, 1609587929392839161
  %435 = lshr i64 %434, 32
  %436 = xor i64 %435, %434
  %437 = sub i64 0, %436
  store i64 %437, ptr %431, align 8, !alias.scope !29
  br label %442

438:                                              ; preds = %150
  %439 = icmp ult i32 %2, 241
  br i1 %439, label %440, label %441

440:                                              ; preds = %438
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %442

441:                                              ; preds = %438
  tail call fastcc void @XXH3_hashLong_128b_defaultSecret(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2)
  br label %442

442:                                              ; preds = %149, %114, %74, %7, %441, %440, %355
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite)
define internal fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i32 noundef range(i32 129, 241) %2, ptr noundef readonly %3, i64 noundef %4) unnamed_addr #16 {
  %6 = zext nneg i32 %2 to i64
  %7 = mul i64 %6, -7046029288634856825
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ %7, %5 ], [ %49, %8 ]
  %10 = phi i64 [ 0, %5 ], [ %86, %8 ]
  %11 = phi i32 [ 0, %5 ], [ %87, %8 ]
  %12 = shl nuw nsw i32 %11, 5
  %13 = getelementptr inbounds nuw i8, ptr %1, i32 %12
  %14 = getelementptr inbounds nuw i8, ptr %3, i32 %12
  %15 = load i64, ptr %13, align 1
  %16 = getelementptr inbounds nuw i8, ptr %13, i32 8
  %17 = load i64, ptr %16, align 1
  %18 = load i64, ptr %14, align 1
  %19 = add i64 %18, %4
  %20 = xor i64 %19, %15
  %21 = getelementptr inbounds nuw i8, ptr %14, i32 8
  %22 = load i64, ptr %21, align 1
  %23 = sub i64 %22, %4
  %24 = xor i64 %23, %17
  %25 = lshr i64 %20, 32
  %26 = lshr i64 %24, 32
  %27 = mul nuw i64 %26, %25
  %28 = and i64 %20, 4294967295
  %29 = mul nuw i64 %26, %28
  %30 = and i64 %24, 4294967295
  %31 = mul nuw i64 %30, %25
  %32 = mul nuw i64 %30, %28
  %33 = shl i64 %29, 32
  %34 = add i64 %33, %32
  %35 = icmp ult i64 %34, %32
  %36 = zext i1 %35 to i64
  %37 = add i64 %29, %31
  %38 = shl i64 %37, 32
  %39 = add i64 %38, %32
  %40 = icmp ult i64 %39, %34
  %41 = zext i1 %40 to i64
  %42 = lshr i64 %29, 32
  %43 = add nuw i64 %42, %27
  %44 = lshr i64 %31, 32
  %45 = add nuw i64 %43, %44
  %46 = add nuw i64 %45, %36
  %47 = add nuw i64 %46, %41
  %48 = xor i64 %47, %39
  %49 = add i64 %48, %9
  %50 = getelementptr inbounds nuw i8, ptr %13, i32 16
  %51 = getelementptr inbounds nuw i8, ptr %14, i32 16
  %52 = load i64, ptr %50, align 1
  %53 = getelementptr inbounds nuw i8, ptr %13, i32 24
  %54 = load i64, ptr %53, align 1
  %55 = load i64, ptr %51, align 1
  %56 = sub i64 %55, %4
  %57 = xor i64 %56, %52
  %58 = getelementptr inbounds nuw i8, ptr %14, i32 24
  %59 = load i64, ptr %58, align 1
  %60 = add i64 %59, %4
  %61 = xor i64 %60, %54
  %62 = lshr i64 %57, 32
  %63 = lshr i64 %61, 32
  %64 = mul nuw i64 %63, %62
  %65 = and i64 %57, 4294967295
  %66 = mul nuw i64 %63, %65
  %67 = and i64 %61, 4294967295
  %68 = mul nuw i64 %67, %62
  %69 = mul nuw i64 %67, %65
  %70 = shl i64 %66, 32
  %71 = add i64 %70, %69
  %72 = icmp ult i64 %71, %69
  %73 = zext i1 %72 to i64
  %74 = add i64 %66, %68
  %75 = shl i64 %74, 32
  %76 = add i64 %75, %69
  %77 = icmp ult i64 %76, %71
  %78 = zext i1 %77 to i64
  %79 = lshr i64 %66, 32
  %80 = add nuw i64 %79, %64
  %81 = lshr i64 %68, 32
  %82 = add nuw i64 %80, %81
  %83 = add nuw i64 %82, %73
  %84 = add nuw i64 %83, %78
  %85 = xor i64 %84, %76
  %86 = add i64 %85, %10
  %87 = add nuw nsw i32 %11, 1
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %8

89:                                               ; preds = %8
  %90 = lshr i32 %2, 5
  %91 = lshr i64 %49, 37
  %92 = xor i64 %91, %49
  %93 = mul i64 %92, 1609587929392839161
  %94 = lshr i64 %93, 32
  %95 = xor i64 %94, %93
  %96 = lshr i64 %86, 37
  %97 = xor i64 %96, %86
  %98 = mul i64 %97, 1609587929392839161
  %99 = lshr i64 %98, 32
  %100 = xor i64 %99, %98
  %101 = icmp eq i32 %90, 4
  br i1 %101, label %184, label %102

102:                                              ; preds = %89, %102
  %103 = phi i64 [ %144, %102 ], [ %95, %89 ]
  %104 = phi i64 [ %181, %102 ], [ %100, %89 ]
  %105 = phi i32 [ %182, %102 ], [ 4, %89 ]
  %106 = shl nsw i32 %105, 5
  %107 = getelementptr inbounds nuw i8, ptr %1, i32 %106
  %108 = getelementptr i8, ptr %3, i32 %106
  %109 = getelementptr i8, ptr %108, i32 -125
  %110 = load i64, ptr %107, align 1
  %111 = getelementptr inbounds nuw i8, ptr %107, i32 8
  %112 = load i64, ptr %111, align 1
  %113 = load i64, ptr %109, align 1
  %114 = add i64 %113, %4
  %115 = xor i64 %114, %110
  %116 = getelementptr i8, ptr %108, i32 -117
  %117 = load i64, ptr %116, align 1
  %118 = sub i64 %117, %4
  %119 = xor i64 %118, %112
  %120 = lshr i64 %115, 32
  %121 = lshr i64 %119, 32
  %122 = mul nuw i64 %121, %120
  %123 = and i64 %115, 4294967295
  %124 = mul nuw i64 %121, %123
  %125 = and i64 %119, 4294967295
  %126 = mul nuw i64 %125, %120
  %127 = mul nuw i64 %125, %123
  %128 = shl i64 %124, 32
  %129 = add i64 %128, %127
  %130 = icmp ult i64 %129, %127
  %131 = zext i1 %130 to i64
  %132 = add i64 %124, %126
  %133 = shl i64 %132, 32
  %134 = add i64 %133, %127
  %135 = icmp ult i64 %134, %129
  %136 = zext i1 %135 to i64
  %137 = lshr i64 %124, 32
  %138 = add nuw i64 %137, %122
  %139 = lshr i64 %126, 32
  %140 = add nuw i64 %138, %139
  %141 = add nuw i64 %140, %131
  %142 = add nuw i64 %141, %136
  %143 = xor i64 %142, %134
  %144 = add i64 %143, %103
  %145 = getelementptr inbounds nuw i8, ptr %107, i32 16
  %146 = getelementptr i8, ptr %108, i32 -109
  %147 = load i64, ptr %145, align 1
  %148 = getelementptr inbounds nuw i8, ptr %107, i32 24
  %149 = load i64, ptr %148, align 1
  %150 = load i64, ptr %146, align 1
  %151 = sub i64 %150, %4
  %152 = xor i64 %151, %147
  %153 = getelementptr i8, ptr %108, i32 -101
  %154 = load i64, ptr %153, align 1
  %155 = add i64 %154, %4
  %156 = xor i64 %155, %149
  %157 = lshr i64 %152, 32
  %158 = lshr i64 %156, 32
  %159 = mul nuw i64 %158, %157
  %160 = and i64 %152, 4294967295
  %161 = mul nuw i64 %158, %160
  %162 = and i64 %156, 4294967295
  %163 = mul nuw i64 %162, %157
  %164 = mul nuw i64 %162, %160
  %165 = shl i64 %161, 32
  %166 = add i64 %165, %164
  %167 = icmp ult i64 %166, %164
  %168 = zext i1 %167 to i64
  %169 = add i64 %161, %163
  %170 = shl i64 %169, 32
  %171 = add i64 %170, %164
  %172 = icmp ult i64 %171, %166
  %173 = zext i1 %172 to i64
  %174 = lshr i64 %161, 32
  %175 = add nuw i64 %174, %159
  %176 = lshr i64 %163, 32
  %177 = add nuw i64 %175, %176
  %178 = add nuw i64 %177, %168
  %179 = add nuw i64 %178, %173
  %180 = xor i64 %179, %171
  %181 = add i64 %180, %104
  %182 = add nuw nsw i32 %105, 1
  %183 = icmp eq i32 %182, %90
  br i1 %183, label %184, label %102

184:                                              ; preds = %102, %89
  %185 = phi i64 [ %100, %89 ], [ %181, %102 ]
  %186 = phi i64 [ %95, %89 ], [ %144, %102 ]
  %187 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %188 = getelementptr inbounds i8, ptr %187, i32 -16
  %189 = getelementptr inbounds nuw i8, ptr %3, i32 119
  %190 = load i64, ptr %188, align 1
  %191 = getelementptr inbounds i8, ptr %187, i32 -8
  %192 = load i64, ptr %191, align 1
  %193 = load i64, ptr %189, align 1
  %194 = add i64 %193, %4
  %195 = xor i64 %194, %190
  %196 = getelementptr inbounds nuw i8, ptr %3, i32 127
  %197 = load i64, ptr %196, align 1
  %198 = sub i64 %197, %4
  %199 = xor i64 %198, %192
  %200 = lshr i64 %195, 32
  %201 = lshr i64 %199, 32
  %202 = mul nuw i64 %201, %200
  %203 = and i64 %195, 4294967295
  %204 = mul nuw i64 %201, %203
  %205 = and i64 %199, 4294967295
  %206 = mul nuw i64 %205, %200
  %207 = mul nuw i64 %205, %203
  %208 = shl i64 %204, 32
  %209 = add i64 %208, %207
  %210 = icmp ult i64 %209, %207
  %211 = zext i1 %210 to i64
  %212 = add i64 %204, %206
  %213 = shl i64 %212, 32
  %214 = add i64 %213, %207
  %215 = icmp ult i64 %214, %209
  %216 = zext i1 %215 to i64
  %217 = lshr i64 %204, 32
  %218 = add nuw i64 %217, %202
  %219 = lshr i64 %206, 32
  %220 = add nuw i64 %218, %219
  %221 = add nuw i64 %220, %211
  %222 = add nuw i64 %221, %216
  %223 = xor i64 %222, %214
  %224 = add i64 %223, %186
  %225 = getelementptr inbounds i8, ptr %187, i32 -32
  %226 = getelementptr inbounds nuw i8, ptr %3, i32 103
  %227 = load i64, ptr %225, align 1
  %228 = getelementptr inbounds i8, ptr %187, i32 -24
  %229 = load i64, ptr %228, align 1
  %230 = load i64, ptr %226, align 1
  %231 = sub i64 %230, %4
  %232 = xor i64 %231, %227
  %233 = getelementptr inbounds nuw i8, ptr %3, i32 111
  %234 = load i64, ptr %233, align 1
  %235 = add i64 %234, %4
  %236 = xor i64 %235, %229
  %237 = lshr i64 %232, 32
  %238 = lshr i64 %236, 32
  %239 = mul nuw i64 %238, %237
  %240 = and i64 %232, 4294967295
  %241 = mul nuw i64 %238, %240
  %242 = and i64 %236, 4294967295
  %243 = mul nuw i64 %242, %237
  %244 = mul nuw i64 %242, %240
  %245 = shl i64 %241, 32
  %246 = add i64 %245, %244
  %247 = icmp ult i64 %246, %244
  %248 = zext i1 %247 to i64
  %249 = add i64 %241, %243
  %250 = shl i64 %249, 32
  %251 = add i64 %250, %244
  %252 = icmp ult i64 %251, %246
  %253 = zext i1 %252 to i64
  %254 = lshr i64 %241, 32
  %255 = add nuw i64 %254, %239
  %256 = lshr i64 %243, 32
  %257 = add nuw i64 %255, %256
  %258 = add nuw i64 %257, %248
  %259 = add nuw i64 %258, %253
  %260 = xor i64 %259, %251
  %261 = add i64 %260, %185
  %262 = add i64 %261, %224
  %263 = mul i64 %224, -7046029288634856825
  %264 = mul i64 %261, -8796714831421723037
  %265 = sub i64 %6, %4
  %266 = mul i64 %265, -4417276706812531889
  %267 = add i64 %263, %266
  %268 = add i64 %267, %264
  %269 = lshr i64 %262, 37
  %270 = xor i64 %269, %262
  %271 = mul i64 %270, 1609587929392839161
  %272 = lshr i64 %271, 32
  %273 = xor i64 %272, %271
  store i64 %273, ptr %0, align 8
  %274 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %275 = lshr i64 %268, 37
  %276 = xor i64 %275, %268
  %277 = mul i64 %276, 1609587929392839161
  %278 = lshr i64 %277, 32
  %279 = xor i64 %278, %277
  %280 = sub i64 0, %279
  store i64 %280, ptr %274, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal fastcc void @XXH3_hashLong_128b_defaultSecret(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i32 noundef range(i32 241, 0) %2) unnamed_addr #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %4 = lshr i32 %2, 10
  %5 = icmp ult i32 %2, 1024
  br i1 %5, label %147, label %6

6:                                                ; preds = %3, %112
  %7 = phi i64 [ %144, %112 ], [ 2654435761, %3 ]
  %8 = phi i64 [ %140, %112 ], [ 2870177450012600261, %3 ]
  %9 = phi i64 [ %136, %112 ], [ 2246822519, %3 ]
  %10 = phi i64 [ %132, %112 ], [ -8796714831421723037, %3 ]
  %11 = phi i64 [ %128, %112 ], [ 1609587929392839161, %3 ]
  %12 = phi i64 [ %124, %112 ], [ -4417276706812531889, %3 ]
  %13 = phi i64 [ %120, %112 ], [ -7046029288634856825, %3 ]
  %14 = phi i64 [ %116, %112 ], [ 3266489917, %3 ]
  %15 = phi i32 [ %145, %112 ], [ 0, %3 ]
  %16 = shl i32 %15, 10
  %17 = getelementptr inbounds nuw i8, ptr %1, i32 %16
  br label %18

18:                                               ; preds = %18, %6
  %19 = phi i64 [ %7, %6 ], [ %109, %18 ]
  %20 = phi i64 [ %8, %6 ], [ %107, %18 ]
  %21 = phi i64 [ %9, %6 ], [ %89, %18 ]
  %22 = phi i64 [ %10, %6 ], [ %87, %18 ]
  %23 = phi i64 [ %11, %6 ], [ %69, %18 ]
  %24 = phi i64 [ %12, %6 ], [ %67, %18 ]
  %25 = phi i64 [ %13, %6 ], [ %49, %18 ]
  %26 = phi i64 [ %14, %6 ], [ %47, %18 ]
  %27 = phi i32 [ 0, %6 ], [ %110, %18 ]
  %28 = shl i32 %27, 6
  %29 = getelementptr inbounds nuw i8, ptr %17, i32 %28
  %30 = shl i32 %27, 3
  %31 = getelementptr inbounds nuw i8, ptr @kSecret, i32 %30
  %32 = load i64, ptr %29, align 1, !noalias !34
  %33 = getelementptr inbounds nuw i8, ptr %29, i32 8
  %34 = load i64, ptr %33, align 1, !noalias !34
  %35 = load i64, ptr %31, align 8, !noalias !34
  %36 = getelementptr inbounds nuw i8, ptr %31, i32 8
  %37 = load i64, ptr %36, align 8, !noalias !34
  %38 = xor i64 %35, %32
  %39 = xor i64 %37, %34
  %40 = and i64 %38, 4294967295
  %41 = lshr i64 %38, 32
  %42 = mul nuw i64 %40, %41
  %43 = and i64 %39, 4294967295
  %44 = lshr i64 %39, 32
  %45 = mul nuw i64 %43, %44
  %46 = add i64 %34, %26
  %47 = add i64 %46, %42
  %48 = add i64 %32, %25
  %49 = add i64 %48, %45
  %50 = getelementptr inbounds nuw i8, ptr %29, i32 16
  %51 = load i64, ptr %50, align 1, !noalias !34
  %52 = getelementptr inbounds nuw i8, ptr %29, i32 24
  %53 = load i64, ptr %52, align 1, !noalias !34
  %54 = getelementptr inbounds nuw i8, ptr %31, i32 16
  %55 = load i64, ptr %54, align 8, !noalias !34
  %56 = getelementptr inbounds nuw i8, ptr %31, i32 24
  %57 = load i64, ptr %56, align 8, !noalias !34
  %58 = xor i64 %55, %51
  %59 = xor i64 %57, %53
  %60 = and i64 %58, 4294967295
  %61 = lshr i64 %58, 32
  %62 = mul nuw i64 %60, %61
  %63 = and i64 %59, 4294967295
  %64 = lshr i64 %59, 32
  %65 = mul nuw i64 %63, %64
  %66 = add i64 %53, %24
  %67 = add i64 %66, %62
  %68 = add i64 %51, %23
  %69 = add i64 %68, %65
  %70 = getelementptr inbounds nuw i8, ptr %29, i32 32
  %71 = load i64, ptr %70, align 1, !noalias !34
  %72 = getelementptr inbounds nuw i8, ptr %29, i32 40
  %73 = load i64, ptr %72, align 1, !noalias !34
  %74 = getelementptr inbounds nuw i8, ptr %31, i32 32
  %75 = load i64, ptr %74, align 8, !noalias !34
  %76 = getelementptr inbounds nuw i8, ptr %31, i32 40
  %77 = load i64, ptr %76, align 8, !noalias !34
  %78 = xor i64 %75, %71
  %79 = xor i64 %77, %73
  %80 = and i64 %78, 4294967295
  %81 = lshr i64 %78, 32
  %82 = mul nuw i64 %80, %81
  %83 = and i64 %79, 4294967295
  %84 = lshr i64 %79, 32
  %85 = mul nuw i64 %83, %84
  %86 = add i64 %73, %22
  %87 = add i64 %86, %82
  %88 = add i64 %71, %21
  %89 = add i64 %88, %85
  %90 = getelementptr inbounds nuw i8, ptr %29, i32 48
  %91 = load i64, ptr %90, align 1, !noalias !34
  %92 = getelementptr inbounds nuw i8, ptr %29, i32 56
  %93 = load i64, ptr %92, align 1, !noalias !34
  %94 = getelementptr inbounds nuw i8, ptr %31, i32 48
  %95 = load i64, ptr %94, align 8, !noalias !34
  %96 = getelementptr inbounds nuw i8, ptr %31, i32 56
  %97 = load i64, ptr %96, align 8, !noalias !34
  %98 = xor i64 %95, %91
  %99 = xor i64 %97, %93
  %100 = and i64 %98, 4294967295
  %101 = lshr i64 %98, 32
  %102 = mul nuw i64 %100, %101
  %103 = and i64 %99, 4294967295
  %104 = lshr i64 %99, 32
  %105 = mul nuw i64 %103, %104
  %106 = add i64 %93, %20
  %107 = add i64 %106, %102
  %108 = add i64 %91, %19
  %109 = add i64 %108, %105
  %110 = add nuw nsw i32 %27, 1
  %111 = icmp eq i32 %110, 16
  br i1 %111, label %112, label %18

112:                                              ; preds = %18
  %113 = lshr i64 %47, 47
  %114 = xor i64 %47, %113
  %115 = xor i64 %114, -4329134394285701654
  %116 = mul i64 %115, 2654435761
  %117 = lshr i64 %49, 47
  %118 = xor i64 %49, %117
  %119 = xor i64 %118, -1485321483350670907
  %120 = mul i64 %119, 2654435761
  %121 = lshr i64 %67, 47
  %122 = xor i64 %67, %121
  %123 = xor i64 %122, 5321830579834785047
  %124 = mul i64 %123, 2654435761
  %125 = lshr i64 %69, 47
  %126 = xor i64 %69, %125
  %127 = xor i64 %126, -7032137544937171245
  %128 = mul i64 %127, 2654435761
  %129 = lshr i64 %87, 47
  %130 = xor i64 %87, %129
  %131 = xor i64 %130, -242834301215959509
  %132 = mul i64 %131, 2654435761
  %133 = lshr i64 %89, 47
  %134 = xor i64 %89, %133
  %135 = xor i64 %134, -3588858202114426737
  %136 = mul i64 %135, 2654435761
  %137 = lshr i64 %107, 47
  %138 = xor i64 %107, %137
  %139 = xor i64 %138, 2883454493032893253
  %140 = mul i64 %139, 2654435761
  %141 = lshr i64 %109, 47
  %142 = xor i64 %109, %141
  %143 = xor i64 %142, 9097354517224871855
  %144 = mul i64 %143, 2654435761
  %145 = add nuw nsw i32 %15, 1
  %146 = icmp eq i32 %145, %4
  br i1 %146, label %147, label %6

147:                                              ; preds = %112, %3
  %148 = phi i64 [ 2654435761, %3 ], [ %144, %112 ]
  %149 = phi i64 [ 2870177450012600261, %3 ], [ %140, %112 ]
  %150 = phi i64 [ 2246822519, %3 ], [ %136, %112 ]
  %151 = phi i64 [ -8796714831421723037, %3 ], [ %132, %112 ]
  %152 = phi i64 [ 1609587929392839161, %3 ], [ %128, %112 ]
  %153 = phi i64 [ -4417276706812531889, %3 ], [ %124, %112 ]
  %154 = phi i64 [ -7046029288634856825, %3 ], [ %120, %112 ]
  %155 = phi i64 [ 3266489917, %3 ], [ %116, %112 ]
  %156 = and i32 %2, -1024
  %157 = and i32 %2, 1023
  %158 = lshr i32 %157, 6
  %159 = getelementptr inbounds nuw i8, ptr %1, i32 %156
  %160 = icmp samesign ult i32 %157, 64
  br i1 %160, label %255, label %161

161:                                              ; preds = %147, %161
  %162 = phi i64 [ %252, %161 ], [ %148, %147 ]
  %163 = phi i64 [ %250, %161 ], [ %149, %147 ]
  %164 = phi i64 [ %232, %161 ], [ %150, %147 ]
  %165 = phi i64 [ %230, %161 ], [ %151, %147 ]
  %166 = phi i64 [ %212, %161 ], [ %152, %147 ]
  %167 = phi i64 [ %210, %161 ], [ %153, %147 ]
  %168 = phi i64 [ %192, %161 ], [ %154, %147 ]
  %169 = phi i64 [ %190, %161 ], [ %155, %147 ]
  %170 = phi i32 [ %253, %161 ], [ 0, %147 ]
  %171 = shl i32 %170, 6
  %172 = getelementptr inbounds nuw i8, ptr %159, i32 %171
  %173 = shl i32 %170, 3
  %174 = getelementptr inbounds nuw i8, ptr @kSecret, i32 %173
  %175 = load i64, ptr %172, align 1, !noalias !34
  %176 = getelementptr inbounds nuw i8, ptr %172, i32 8
  %177 = load i64, ptr %176, align 1, !noalias !34
  %178 = load i64, ptr %174, align 8, !noalias !34
  %179 = getelementptr inbounds nuw i8, ptr %174, i32 8
  %180 = load i64, ptr %179, align 8, !noalias !34
  %181 = xor i64 %178, %175
  %182 = xor i64 %180, %177
  %183 = and i64 %181, 4294967295
  %184 = lshr i64 %181, 32
  %185 = mul nuw i64 %183, %184
  %186 = and i64 %182, 4294967295
  %187 = lshr i64 %182, 32
  %188 = mul nuw i64 %186, %187
  %189 = add i64 %177, %169
  %190 = add i64 %189, %185
  %191 = add i64 %175, %168
  %192 = add i64 %191, %188
  %193 = getelementptr inbounds nuw i8, ptr %172, i32 16
  %194 = load i64, ptr %193, align 1, !noalias !34
  %195 = getelementptr inbounds nuw i8, ptr %172, i32 24
  %196 = load i64, ptr %195, align 1, !noalias !34
  %197 = getelementptr inbounds nuw i8, ptr %174, i32 16
  %198 = load i64, ptr %197, align 8, !noalias !34
  %199 = getelementptr inbounds nuw i8, ptr %174, i32 24
  %200 = load i64, ptr %199, align 8, !noalias !34
  %201 = xor i64 %198, %194
  %202 = xor i64 %200, %196
  %203 = and i64 %201, 4294967295
  %204 = lshr i64 %201, 32
  %205 = mul nuw i64 %203, %204
  %206 = and i64 %202, 4294967295
  %207 = lshr i64 %202, 32
  %208 = mul nuw i64 %206, %207
  %209 = add i64 %196, %167
  %210 = add i64 %209, %205
  %211 = add i64 %194, %166
  %212 = add i64 %211, %208
  %213 = getelementptr inbounds nuw i8, ptr %172, i32 32
  %214 = load i64, ptr %213, align 1, !noalias !34
  %215 = getelementptr inbounds nuw i8, ptr %172, i32 40
  %216 = load i64, ptr %215, align 1, !noalias !34
  %217 = getelementptr inbounds nuw i8, ptr %174, i32 32
  %218 = load i64, ptr %217, align 8, !noalias !34
  %219 = getelementptr inbounds nuw i8, ptr %174, i32 40
  %220 = load i64, ptr %219, align 8, !noalias !34
  %221 = xor i64 %218, %214
  %222 = xor i64 %220, %216
  %223 = and i64 %221, 4294967295
  %224 = lshr i64 %221, 32
  %225 = mul nuw i64 %223, %224
  %226 = and i64 %222, 4294967295
  %227 = lshr i64 %222, 32
  %228 = mul nuw i64 %226, %227
  %229 = add i64 %216, %165
  %230 = add i64 %229, %225
  %231 = add i64 %214, %164
  %232 = add i64 %231, %228
  %233 = getelementptr inbounds nuw i8, ptr %172, i32 48
  %234 = load i64, ptr %233, align 1, !noalias !34
  %235 = getelementptr inbounds nuw i8, ptr %172, i32 56
  %236 = load i64, ptr %235, align 1, !noalias !34
  %237 = getelementptr inbounds nuw i8, ptr %174, i32 48
  %238 = load i64, ptr %237, align 8, !noalias !34
  %239 = getelementptr inbounds nuw i8, ptr %174, i32 56
  %240 = load i64, ptr %239, align 8, !noalias !34
  %241 = xor i64 %238, %234
  %242 = xor i64 %240, %236
  %243 = and i64 %241, 4294967295
  %244 = lshr i64 %241, 32
  %245 = mul nuw i64 %243, %244
  %246 = and i64 %242, 4294967295
  %247 = lshr i64 %242, 32
  %248 = mul nuw i64 %246, %247
  %249 = add i64 %236, %163
  %250 = add i64 %249, %245
  %251 = add i64 %234, %162
  %252 = add i64 %251, %248
  %253 = add nuw nsw i32 %170, 1
  %254 = icmp eq i32 %253, %158
  br i1 %254, label %255, label %161

255:                                              ; preds = %161, %147
  %256 = phi i64 [ %148, %147 ], [ %252, %161 ]
  %257 = phi i64 [ %149, %147 ], [ %250, %161 ]
  %258 = phi i64 [ %150, %147 ], [ %232, %161 ]
  %259 = phi i64 [ %151, %147 ], [ %230, %161 ]
  %260 = phi i64 [ %152, %147 ], [ %212, %161 ]
  %261 = phi i64 [ %153, %147 ], [ %210, %161 ]
  %262 = phi i64 [ %154, %147 ], [ %192, %161 ]
  %263 = phi i64 [ %155, %147 ], [ %190, %161 ]
  %264 = and i32 %2, 63
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %332, label %266

266:                                              ; preds = %255
  %267 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %268 = getelementptr inbounds i8, ptr %267, i32 -64
  %269 = load i64, ptr %268, align 1, !noalias !34
  %270 = getelementptr inbounds i8, ptr %267, i32 -56
  %271 = load i64, ptr %270, align 1, !noalias !34
  %272 = xor i64 %269, -1556992608276218209
  %273 = xor i64 %271, -4196251135427498811
  %274 = and i64 %272, 4294967295
  %275 = lshr i64 %272, 32
  %276 = mul nuw i64 %274, %275
  %277 = and i64 %273, 4294967295
  %278 = lshr i64 %273, 32
  %279 = mul nuw i64 %277, %278
  %280 = add i64 %271, %263
  %281 = add i64 %280, %276
  %282 = add i64 %269, %262
  %283 = add i64 %282, %279
  %284 = getelementptr inbounds i8, ptr %267, i32 -48
  %285 = load i64, ptr %284, align 1, !noalias !34
  %286 = getelementptr inbounds i8, ptr %267, i32 -40
  %287 = load i64, ptr %286, align 1, !noalias !34
  %288 = xor i64 %285, 1723580219865931905
  %289 = xor i64 %287, -3221803331004277491
  %290 = and i64 %288, 4294967295
  %291 = lshr i64 %288, 32
  %292 = mul nuw i64 %290, %291
  %293 = and i64 %289, 4294967295
  %294 = lshr i64 %289, 32
  %295 = mul nuw i64 %293, %294
  %296 = add i64 %287, %261
  %297 = add i64 %296, %292
  %298 = add i64 %285, %260
  %299 = add i64 %298, %295
  %300 = getelementptr inbounds i8, ptr %267, i32 -32
  %301 = load i64, ptr %300, align 1, !noalias !34
  %302 = getelementptr inbounds i8, ptr %267, i32 -24
  %303 = load i64, ptr %302, align 1, !noalias !34
  %304 = xor i64 %301, 3143064850383918358
  %305 = xor i64 %303, -8071399103737053674
  %306 = and i64 %304, 4294967295
  %307 = lshr i64 %304, 32
  %308 = mul nuw i64 %306, %307
  %309 = and i64 %305, 4294967295
  %310 = lshr i64 %305, 32
  %311 = mul nuw i64 %309, %310
  %312 = add i64 %303, %259
  %313 = add i64 %312, %308
  %314 = add i64 %301, %258
  %315 = add i64 %314, %311
  %316 = getelementptr inbounds i8, ptr %267, i32 -16
  %317 = load i64, ptr %316, align 1, !noalias !34
  %318 = getelementptr inbounds i8, ptr %267, i32 -8
  %319 = load i64, ptr %318, align 1, !noalias !34
  %320 = xor i64 %317, 5030012605302946040
  %321 = xor i64 %319, -5825401622958753077
  %322 = and i64 %320, 4294967295
  %323 = lshr i64 %320, 32
  %324 = mul nuw i64 %322, %323
  %325 = and i64 %321, 4294967295
  %326 = lshr i64 %321, 32
  %327 = mul nuw i64 %325, %326
  %328 = add i64 %319, %257
  %329 = add i64 %328, %324
  %330 = add i64 %317, %256
  %331 = add i64 %330, %327
  br label %332

332:                                              ; preds = %255, %266
  %333 = phi i64 [ %256, %255 ], [ %331, %266 ]
  %334 = phi i64 [ %257, %255 ], [ %329, %266 ]
  %335 = phi i64 [ %258, %255 ], [ %315, %266 ]
  %336 = phi i64 [ %259, %255 ], [ %313, %266 ]
  %337 = phi i64 [ %260, %255 ], [ %299, %266 ]
  %338 = phi i64 [ %261, %255 ], [ %297, %266 ]
  %339 = phi i64 [ %262, %255 ], [ %283, %266 ]
  %340 = phi i64 [ %263, %255 ], [ %281, %266 ]
  %341 = zext i32 %2 to i64
  %342 = mul i64 %341, -7046029288634856825
  %343 = xor i64 %340, 7914194659941938988
  %344 = xor i64 %339, -6611157965513653271
  %345 = lshr i64 %343, 32
  %346 = lshr i64 %344, 32
  %347 = mul nuw i64 %345, %346
  %348 = and i64 %343, 4294967295
  %349 = mul nuw i64 %348, %346
  %350 = and i64 %344, 4294967295
  %351 = mul nuw i64 %345, %350
  %352 = mul nuw i64 %348, %350
  %353 = shl i64 %349, 32
  %354 = add i64 %353, %352
  %355 = icmp ult i64 %354, %352
  %356 = zext i1 %355 to i64
  %357 = add i64 %349, %351
  %358 = shl i64 %357, 32
  %359 = add i64 %358, %352
  %360 = icmp ult i64 %359, %354
  %361 = zext i1 %360 to i64
  %362 = lshr i64 %349, 32
  %363 = add nuw i64 %362, %347
  %364 = lshr i64 %351, 32
  %365 = add nuw i64 %363, %364
  %366 = add nuw i64 %365, %356
  %367 = add nuw i64 %366, %361
  %368 = xor i64 %367, %359
  %369 = xor i64 %338, -1839215637059881052
  %370 = xor i64 %337, -3433288310154277810
  %371 = lshr i64 %369, 32
  %372 = lshr i64 %370, 32
  %373 = mul nuw i64 %371, %372
  %374 = and i64 %369, 4294967295
  %375 = mul nuw i64 %374, %372
  %376 = and i64 %370, 4294967295
  %377 = mul nuw i64 %371, %376
  %378 = mul nuw i64 %374, %376
  %379 = shl i64 %375, 32
  %380 = add i64 %379, %378
  %381 = icmp ult i64 %380, %378
  %382 = zext i1 %381 to i64
  %383 = add i64 %375, %377
  %384 = shl i64 %383, 32
  %385 = add i64 %384, %378
  %386 = icmp ult i64 %385, %380
  %387 = zext i1 %386 to i64
  %388 = lshr i64 %375, 32
  %389 = add nuw i64 %388, %373
  %390 = lshr i64 %377, 32
  %391 = add nuw i64 %389, %390
  %392 = add nuw i64 %391, %382
  %393 = add nuw i64 %392, %387
  %394 = xor i64 %393, %385
  %395 = xor i64 %336, 5046485836271438973
  %396 = xor i64 %335, -8055285457383852172
  %397 = lshr i64 %395, 32
  %398 = lshr i64 %396, 32
  %399 = mul nuw i64 %397, %398
  %400 = and i64 %395, 4294967295
  %401 = mul nuw i64 %400, %398
  %402 = and i64 %396, 4294967295
  %403 = mul nuw i64 %397, %402
  %404 = mul nuw i64 %400, %402
  %405 = shl i64 %401, 32
  %406 = add i64 %405, %404
  %407 = icmp ult i64 %406, %404
  %408 = zext i1 %407 to i64
  %409 = add i64 %401, %403
  %410 = shl i64 %409, 32
  %411 = add i64 %410, %404
  %412 = icmp ult i64 %411, %406
  %413 = zext i1 %412 to i64
  %414 = lshr i64 %401, 32
  %415 = add nuw i64 %414, %399
  %416 = lshr i64 %403, 32
  %417 = add nuw i64 %415, %416
  %418 = add nuw i64 %417, %408
  %419 = add nuw i64 %418, %413
  %420 = xor i64 %419, %411
  %421 = xor i64 %334, 5920048007935066598
  %422 = xor i64 %333, 7336514198459093435
  %423 = lshr i64 %421, 32
  %424 = lshr i64 %422, 32
  %425 = mul nuw i64 %423, %424
  %426 = and i64 %421, 4294967295
  %427 = mul nuw i64 %426, %424
  %428 = and i64 %422, 4294967295
  %429 = mul nuw i64 %423, %428
  %430 = mul nuw i64 %426, %428
  %431 = shl i64 %427, 32
  %432 = add i64 %431, %430
  %433 = icmp ult i64 %432, %430
  %434 = zext i1 %433 to i64
  %435 = add i64 %427, %429
  %436 = shl i64 %435, 32
  %437 = add i64 %436, %430
  %438 = icmp ult i64 %437, %432
  %439 = zext i1 %438 to i64
  %440 = lshr i64 %427, 32
  %441 = add nuw i64 %440, %425
  %442 = lshr i64 %429, 32
  %443 = add nuw i64 %441, %442
  %444 = add nuw i64 %443, %434
  %445 = add nuw i64 %444, %439
  %446 = xor i64 %445, %437
  %447 = add i64 %446, %342
  %448 = add i64 %447, %420
  %449 = add i64 %448, %394
  %450 = add i64 %449, %368
  %451 = lshr i64 %450, 37
  %452 = xor i64 %451, %450
  %453 = mul i64 %452, 1609587929392839161
  %454 = lshr i64 %453, 32
  %455 = xor i64 %454, %453
  %456 = mul i64 %341, -4417276706812531889
  %457 = xor i64 %456, -1
  %458 = xor i64 %340, -2753530472436770380
  %459 = xor i64 %339, 3784058077962335096
  %460 = lshr i64 %458, 32
  %461 = lshr i64 %459, 32
  %462 = mul nuw i64 %460, %461
  %463 = and i64 %458, 4294967295
  %464 = mul nuw i64 %463, %461
  %465 = and i64 %459, 4294967295
  %466 = mul nuw i64 %460, %465
  %467 = mul nuw i64 %463, %465
  %468 = shl i64 %464, 32
  %469 = add i64 %468, %467
  %470 = icmp ult i64 %469, %467
  %471 = zext i1 %470 to i64
  %472 = add i64 %464, %466
  %473 = shl i64 %472, 32
  %474 = add i64 %473, %467
  %475 = icmp ult i64 %474, %469
  %476 = zext i1 %475 to i64
  %477 = lshr i64 %464, 32
  %478 = add nuw i64 %477, %462
  %479 = lshr i64 %466, 32
  %480 = add nuw i64 %478, %479
  %481 = add nuw i64 %480, %471
  %482 = add nuw i64 %481, %476
  %483 = xor i64 %482, %474
  %484 = xor i64 %338, -360392965937173549
  %485 = xor i64 %337, -5237161843349560557
  %486 = lshr i64 %484, 32
  %487 = lshr i64 %485, 32
  %488 = mul nuw i64 %486, %487
  %489 = and i64 %484, 4294967295
  %490 = mul nuw i64 %489, %487
  %491 = and i64 %485, 4294967295
  %492 = mul nuw i64 %486, %491
  %493 = mul nuw i64 %489, %491
  %494 = shl i64 %490, 32
  %495 = add i64 %494, %493
  %496 = icmp ult i64 %495, %493
  %497 = zext i1 %496 to i64
  %498 = add i64 %490, %492
  %499 = shl i64 %498, 32
  %500 = add i64 %499, %493
  %501 = icmp ult i64 %500, %495
  %502 = zext i1 %501 to i64
  %503 = lshr i64 %490, 32
  %504 = add nuw i64 %503, %488
  %505 = lshr i64 %492, 32
  %506 = add nuw i64 %504, %505
  %507 = add nuw i64 %506, %497
  %508 = add nuw i64 %507, %502
  %509 = xor i64 %508, %500
  %510 = xor i64 %336, 2965150961192524528
  %511 = xor i64 %335, 9032178055121889492
  %512 = lshr i64 %510, 32
  %513 = lshr i64 %511, 32
  %514 = mul nuw i64 %512, %513
  %515 = and i64 %510, 4294967295
  %516 = mul nuw i64 %515, %513
  %517 = and i64 %511, 4294967295
  %518 = mul nuw i64 %512, %517
  %519 = mul nuw i64 %515, %517
  %520 = shl i64 %516, 32
  %521 = add i64 %520, %519
  %522 = icmp ult i64 %521, %519
  %523 = zext i1 %522 to i64
  %524 = add i64 %516, %518
  %525 = shl i64 %524, 32
  %526 = add i64 %525, %519
  %527 = icmp ult i64 %526, %521
  %528 = zext i1 %527 to i64
  %529 = lshr i64 %516, 32
  %530 = add nuw i64 %529, %514
  %531 = lshr i64 %518, 32
  %532 = add nuw i64 %530, %531
  %533 = add nuw i64 %532, %523
  %534 = add nuw i64 %533, %528
  %535 = xor i64 %534, %526
  %536 = xor i64 %334, 8850058120466833735
  %537 = xor i64 %333, -7669846995664752176
  %538 = lshr i64 %536, 32
  %539 = lshr i64 %537, 32
  %540 = mul nuw i64 %538, %539
  %541 = and i64 %536, 4294967295
  %542 = mul nuw i64 %541, %539
  %543 = and i64 %537, 4294967295
  %544 = mul nuw i64 %538, %543
  %545 = mul nuw i64 %541, %543
  %546 = shl i64 %542, 32
  %547 = add i64 %546, %545
  %548 = icmp ult i64 %547, %545
  %549 = zext i1 %548 to i64
  %550 = add i64 %542, %544
  %551 = shl i64 %550, 32
  %552 = add i64 %551, %545
  %553 = icmp ult i64 %552, %547
  %554 = zext i1 %553 to i64
  %555 = lshr i64 %542, 32
  %556 = add nuw i64 %555, %540
  %557 = lshr i64 %544, 32
  %558 = add nuw i64 %556, %557
  %559 = add nuw i64 %558, %549
  %560 = add nuw i64 %559, %554
  %561 = xor i64 %560, %552
  %562 = add i64 %561, %457
  %563 = add i64 %562, %535
  %564 = add i64 %563, %509
  %565 = add i64 %564, %483
  %566 = lshr i64 %565, 37
  %567 = xor i64 %566, %565
  %568 = mul i64 %567, 1609587929392839161
  %569 = lshr i64 %568, 32
  %570 = xor i64 %569, %568
  store i64 %455, ptr %0, align 8, !alias.scope !34
  %571 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %570, ptr %571, align 8, !alias.scope !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH3_128bits_withSecret(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #15 {
  %6 = icmp ult i32 %2, 17
  br i1 %6, label %7, label %161

7:                                                ; preds = %5
  %8 = icmp samesign ugt i32 %2, 8
  br i1 %8, label %9, label %77

9:                                                ; preds = %7
  %10 = load i64, ptr %1, align 1
  %11 = load i64, ptr %3, align 1
  %12 = xor i64 %11, %10
  %13 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %14 = getelementptr inbounds i8, ptr %13, i32 -8
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %3, i32 8
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %17, %15
  %19 = xor i64 %12, %18
  %20 = lshr i64 %19, 32
  %21 = mul nuw i64 %20, 2654435761
  %22 = and i64 %19, 4294967295
  %23 = mul nuw i64 %22, 2654435761
  %24 = mul nuw i64 %20, 2246822535
  %25 = mul nuw i64 %22, 2246822535
  %26 = mul i64 %22, -7046029288634856825
  %27 = icmp ult i64 %26, %25
  %28 = zext i1 %27 to i64
  %29 = add i64 %23, %24
  %30 = shl i64 %29, 32
  %31 = add i64 %30, %25
  %32 = icmp ult i64 %31, %26
  %33 = zext i1 %32 to i64
  %34 = lshr i64 %23, 32
  %35 = lshr i64 %24, 32
  %36 = mul i64 %18, -7046029288634856825
  %37 = add i64 %21, %36
  %38 = add i64 %37, %34
  %39 = add i64 %38, %35
  %40 = add i64 %39, %28
  %41 = add i64 %40, %33
  %42 = lshr i64 %41, 32
  %43 = lshr i64 %31, 32
  %44 = mul nuw i64 %43, 3266489917
  %45 = and i64 %25, 4294967295
  %46 = xor i64 %42, %45
  %47 = mul nuw i64 %46, 3266489917
  %48 = mul nuw nsw i64 %43, 668265295
  %49 = mul nuw nsw i64 %46, 668265295
  %50 = mul i64 %46, -4417276706812531889
  %51 = icmp ult i64 %50, %49
  %52 = zext i1 %51 to i64
  %53 = add nuw i64 %47, %48
  %54 = shl i64 %53, 32
  %55 = add i64 %54, %49
  %56 = icmp ult i64 %55, %50
  %57 = zext i1 %56 to i64
  %58 = lshr i64 %47, 32
  %59 = lshr i64 %48, 32
  %60 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %61 = mul i64 %41, -4417276706812531889
  %62 = add nuw i64 %59, %44
  %63 = add i64 %62, %61
  %64 = add i64 %63, %58
  %65 = add i64 %64, %52
  %66 = add i64 %65, %57
  %67 = lshr i64 %55, 37
  %68 = xor i64 %67, %55
  %69 = mul i64 %68, 1609587929392839161
  %70 = lshr i64 %69, 32
  %71 = xor i64 %70, %69
  store i64 %71, ptr %0, align 8, !alias.scope !37
  %72 = lshr i64 %66, 37
  %73 = xor i64 %72, %66
  %74 = mul i64 %73, 1609587929392839161
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  store i64 %76, ptr %60, align 8, !alias.scope !37
  br label %484

77:                                               ; preds = %7
  %78 = icmp samesign ugt i32 %2, 3
  br i1 %78, label %79, label %120

79:                                               ; preds = %77
  %80 = load i32, ptr %1, align 1
  %81 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %82 = getelementptr inbounds i8, ptr %81, i32 -4
  %83 = load i32, ptr %82, align 1
  %84 = zext i32 %80 to i64
  %85 = zext i32 %83 to i64
  %86 = shl nuw i64 %85, 32
  %87 = or disjoint i64 %86, %84
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %87)
  %89 = load i64, ptr %3, align 1
  %90 = xor i64 %87, %89
  %91 = getelementptr inbounds nuw i8, ptr %3, i32 8
  %92 = load i64, ptr %91, align 1
  %93 = xor i64 %88, %92
  %94 = zext nneg i32 %2 to i64
  %95 = lshr i64 %90, 51
  %96 = xor i64 %95, %90
  %97 = mul i64 %96, 2654435761
  %98 = add i64 %97, %94
  %99 = lshr i64 %98, 47
  %100 = xor i64 %99, %98
  %101 = mul i64 %100, -4417276706812531889
  %102 = lshr i64 %93, 47
  %103 = xor i64 %102, %93
  %104 = mul i64 %103, -7046029288634856825
  %105 = sub i64 %104, %94
  %106 = lshr i64 %105, 43
  %107 = xor i64 %106, %105
  %108 = mul i64 %107, -8796714831421723037
  %109 = lshr i64 %101, 37
  %110 = xor i64 %109, %101
  %111 = mul i64 %110, 1609587929392839161
  %112 = lshr i64 %111, 32
  %113 = xor i64 %112, %111
  store i64 %113, ptr %0, align 8, !alias.scope !40
  %114 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %115 = lshr i64 %108, 37
  %116 = xor i64 %115, %108
  %117 = mul i64 %116, 1609587929392839161
  %118 = lshr i64 %117, 32
  %119 = xor i64 %118, %117
  store i64 %119, ptr %114, align 8, !alias.scope !40
  br label %484

120:                                              ; preds = %77
  %121 = icmp eq i32 %2, 0
  br i1 %121, label %160, label %122

122:                                              ; preds = %120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %123 = load i8, ptr %1, align 1, !noalias !43
  %124 = lshr i32 %2, 1
  %125 = getelementptr inbounds nuw i8, ptr %1, i32 %124
  %126 = load i8, ptr %125, align 1, !noalias !43
  %127 = getelementptr i8, ptr %1, i32 %2
  %128 = getelementptr i8, ptr %127, i32 -1
  %129 = load i8, ptr %128, align 1, !noalias !43
  %130 = zext i8 %123 to i32
  %131 = zext i8 %126 to i32
  %132 = shl nuw nsw i32 %131, 8
  %133 = or disjoint i32 %132, %130
  %134 = zext i8 %129 to i32
  %135 = shl nuw nsw i32 %134, 16
  %136 = or disjoint i32 %133, %135
  %137 = shl nuw nsw i32 %2, 24
  %138 = or disjoint i32 %136, %137
  %139 = tail call noundef i32 @llvm.bswap.i32(i32 %138)
  %140 = load i32, ptr %3, align 1
  %141 = xor i32 %138, %140
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds nuw i8, ptr %3, i32 4
  %144 = load i32, ptr %143, align 1
  %145 = xor i32 %139, %144
  %146 = zext i32 %145 to i64
  %147 = mul i64 %142, -7046029288634856825
  %148 = mul i64 %146, -4417276706812531889
  %149 = lshr i64 %147, 37
  %150 = xor i64 %149, %147
  %151 = mul i64 %150, 1609587929392839161
  %152 = lshr i64 %151, 32
  %153 = xor i64 %152, %151
  store i64 %153, ptr %0, align 8, !alias.scope !43
  %154 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %155 = lshr i64 %148, 37
  %156 = xor i64 %155, %148
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  store i64 %159, ptr %154, align 8, !alias.scope !43
  br label %484

160:                                              ; preds = %120
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !46
  br label %484

161:                                              ; preds = %5
  %162 = icmp ult i32 %2, 129
  br i1 %162, label %163, label %480

163:                                              ; preds = %161
  %164 = zext nneg i32 %2 to i64
  %165 = mul i64 %164, -7046029288634856825
  %166 = icmp samesign ugt i32 %2, 32
  br i1 %166, label %167, label %390

167:                                              ; preds = %163
  %168 = icmp samesign ugt i32 %2, 64
  br i1 %168, label %169, label %316

169:                                              ; preds = %167
  %170 = icmp samesign ugt i32 %2, 96
  br i1 %170, label %171, label %242

171:                                              ; preds = %169
  %172 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %173 = getelementptr inbounds nuw i8, ptr %3, i32 96
  %174 = load i64, ptr %172, align 1
  %175 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %176 = load i64, ptr %175, align 1
  %177 = load i64, ptr %173, align 1
  %178 = xor i64 %177, %174
  %179 = getelementptr inbounds nuw i8, ptr %3, i32 104
  %180 = load i64, ptr %179, align 1
  %181 = xor i64 %180, %176
  %182 = lshr i64 %178, 32
  %183 = lshr i64 %181, 32
  %184 = mul nuw i64 %183, %182
  %185 = and i64 %178, 4294967295
  %186 = mul nuw i64 %183, %185
  %187 = and i64 %181, 4294967295
  %188 = mul nuw i64 %187, %182
  %189 = mul nuw i64 %187, %185
  %190 = shl i64 %186, 32
  %191 = add i64 %190, %189
  %192 = icmp ult i64 %191, %189
  %193 = zext i1 %192 to i64
  %194 = add i64 %186, %188
  %195 = shl i64 %194, 32
  %196 = add i64 %195, %189
  %197 = icmp ult i64 %196, %191
  %198 = zext i1 %197 to i64
  %199 = lshr i64 %186, 32
  %200 = add nuw i64 %199, %184
  %201 = lshr i64 %188, 32
  %202 = add nuw i64 %200, %201
  %203 = add nuw i64 %202, %193
  %204 = add nuw i64 %203, %198
  %205 = xor i64 %204, %196
  %206 = add i64 %205, %165
  %207 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %208 = getelementptr inbounds i8, ptr %207, i32 -64
  %209 = getelementptr inbounds nuw i8, ptr %3, i32 112
  %210 = load i64, ptr %208, align 1
  %211 = getelementptr inbounds i8, ptr %207, i32 -56
  %212 = load i64, ptr %211, align 1
  %213 = load i64, ptr %209, align 1
  %214 = xor i64 %213, %210
  %215 = getelementptr inbounds nuw i8, ptr %3, i32 120
  %216 = load i64, ptr %215, align 1
  %217 = xor i64 %216, %212
  %218 = lshr i64 %214, 32
  %219 = lshr i64 %217, 32
  %220 = mul nuw i64 %219, %218
  %221 = and i64 %214, 4294967295
  %222 = mul nuw i64 %219, %221
  %223 = and i64 %217, 4294967295
  %224 = mul nuw i64 %223, %218
  %225 = mul nuw i64 %223, %221
  %226 = shl i64 %222, 32
  %227 = add i64 %226, %225
  %228 = icmp ult i64 %227, %225
  %229 = zext i1 %228 to i64
  %230 = add i64 %222, %224
  %231 = shl i64 %230, 32
  %232 = add i64 %231, %225
  %233 = icmp ult i64 %232, %227
  %234 = zext i1 %233 to i64
  %235 = lshr i64 %222, 32
  %236 = add nuw i64 %235, %220
  %237 = lshr i64 %224, 32
  %238 = add nuw i64 %236, %237
  %239 = add nuw i64 %238, %229
  %240 = add nuw i64 %239, %234
  %241 = xor i64 %240, %232
  br label %242

242:                                              ; preds = %171, %169
  %243 = phi i64 [ %241, %171 ], [ 0, %169 ]
  %244 = phi i64 [ %206, %171 ], [ %165, %169 ]
  %245 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %246 = getelementptr inbounds nuw i8, ptr %3, i32 64
  %247 = load i64, ptr %245, align 1
  %248 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %249 = load i64, ptr %248, align 1
  %250 = load i64, ptr %246, align 1
  %251 = xor i64 %250, %247
  %252 = getelementptr inbounds nuw i8, ptr %3, i32 72
  %253 = load i64, ptr %252, align 1
  %254 = xor i64 %253, %249
  %255 = lshr i64 %251, 32
  %256 = lshr i64 %254, 32
  %257 = mul nuw i64 %256, %255
  %258 = and i64 %251, 4294967295
  %259 = mul nuw i64 %256, %258
  %260 = and i64 %254, 4294967295
  %261 = mul nuw i64 %260, %255
  %262 = mul nuw i64 %260, %258
  %263 = shl i64 %259, 32
  %264 = add i64 %263, %262
  %265 = icmp ult i64 %264, %262
  %266 = zext i1 %265 to i64
  %267 = add i64 %259, %261
  %268 = shl i64 %267, 32
  %269 = add i64 %268, %262
  %270 = icmp ult i64 %269, %264
  %271 = zext i1 %270 to i64
  %272 = lshr i64 %259, 32
  %273 = add nuw i64 %272, %257
  %274 = lshr i64 %261, 32
  %275 = add nuw i64 %273, %274
  %276 = add nuw i64 %275, %266
  %277 = add nuw i64 %276, %271
  %278 = xor i64 %277, %269
  %279 = add i64 %278, %244
  %280 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %281 = getelementptr inbounds i8, ptr %280, i32 -48
  %282 = getelementptr inbounds nuw i8, ptr %3, i32 80
  %283 = load i64, ptr %281, align 1
  %284 = getelementptr inbounds i8, ptr %280, i32 -40
  %285 = load i64, ptr %284, align 1
  %286 = load i64, ptr %282, align 1
  %287 = xor i64 %286, %283
  %288 = getelementptr inbounds nuw i8, ptr %3, i32 88
  %289 = load i64, ptr %288, align 1
  %290 = xor i64 %289, %285
  %291 = lshr i64 %287, 32
  %292 = lshr i64 %290, 32
  %293 = mul nuw i64 %292, %291
  %294 = and i64 %287, 4294967295
  %295 = mul nuw i64 %292, %294
  %296 = and i64 %290, 4294967295
  %297 = mul nuw i64 %296, %291
  %298 = mul nuw i64 %296, %294
  %299 = shl i64 %295, 32
  %300 = add i64 %299, %298
  %301 = icmp ult i64 %300, %298
  %302 = zext i1 %301 to i64
  %303 = add i64 %295, %297
  %304 = shl i64 %303, 32
  %305 = add i64 %304, %298
  %306 = icmp ult i64 %305, %300
  %307 = zext i1 %306 to i64
  %308 = lshr i64 %295, 32
  %309 = add nuw i64 %308, %293
  %310 = lshr i64 %297, 32
  %311 = add nuw i64 %309, %310
  %312 = add nuw i64 %311, %302
  %313 = add nuw i64 %312, %307
  %314 = xor i64 %313, %305
  %315 = add i64 %314, %243
  br label %316

316:                                              ; preds = %242, %167
  %317 = phi i64 [ %315, %242 ], [ 0, %167 ]
  %318 = phi i64 [ %279, %242 ], [ %165, %167 ]
  %319 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %320 = getelementptr inbounds nuw i8, ptr %3, i32 32
  %321 = load i64, ptr %319, align 1
  %322 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %323 = load i64, ptr %322, align 1
  %324 = load i64, ptr %320, align 1
  %325 = xor i64 %324, %321
  %326 = getelementptr inbounds nuw i8, ptr %3, i32 40
  %327 = load i64, ptr %326, align 1
  %328 = xor i64 %327, %323
  %329 = lshr i64 %325, 32
  %330 = lshr i64 %328, 32
  %331 = mul nuw i64 %330, %329
  %332 = and i64 %325, 4294967295
  %333 = mul nuw i64 %330, %332
  %334 = and i64 %328, 4294967295
  %335 = mul nuw i64 %334, %329
  %336 = mul nuw i64 %334, %332
  %337 = shl i64 %333, 32
  %338 = add i64 %337, %336
  %339 = icmp ult i64 %338, %336
  %340 = zext i1 %339 to i64
  %341 = add i64 %333, %335
  %342 = shl i64 %341, 32
  %343 = add i64 %342, %336
  %344 = icmp ult i64 %343, %338
  %345 = zext i1 %344 to i64
  %346 = lshr i64 %333, 32
  %347 = add nuw i64 %346, %331
  %348 = lshr i64 %335, 32
  %349 = add nuw i64 %347, %348
  %350 = add nuw i64 %349, %340
  %351 = add nuw i64 %350, %345
  %352 = xor i64 %351, %343
  %353 = add i64 %352, %318
  %354 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %355 = getelementptr inbounds i8, ptr %354, i32 -32
  %356 = getelementptr inbounds nuw i8, ptr %3, i32 48
  %357 = load i64, ptr %355, align 1
  %358 = getelementptr inbounds i8, ptr %354, i32 -24
  %359 = load i64, ptr %358, align 1
  %360 = load i64, ptr %356, align 1
  %361 = xor i64 %360, %357
  %362 = getelementptr inbounds nuw i8, ptr %3, i32 56
  %363 = load i64, ptr %362, align 1
  %364 = xor i64 %363, %359
  %365 = lshr i64 %361, 32
  %366 = lshr i64 %364, 32
  %367 = mul nuw i64 %366, %365
  %368 = and i64 %361, 4294967295
  %369 = mul nuw i64 %366, %368
  %370 = and i64 %364, 4294967295
  %371 = mul nuw i64 %370, %365
  %372 = mul nuw i64 %370, %368
  %373 = shl i64 %369, 32
  %374 = add i64 %373, %372
  %375 = icmp ult i64 %374, %372
  %376 = zext i1 %375 to i64
  %377 = add i64 %369, %371
  %378 = shl i64 %377, 32
  %379 = add i64 %378, %372
  %380 = icmp ult i64 %379, %374
  %381 = zext i1 %380 to i64
  %382 = lshr i64 %369, 32
  %383 = add nuw i64 %382, %367
  %384 = lshr i64 %371, 32
  %385 = add nuw i64 %383, %384
  %386 = add nuw i64 %385, %376
  %387 = add nuw i64 %386, %381
  %388 = xor i64 %387, %379
  %389 = add i64 %388, %317
  br label %390

390:                                              ; preds = %163, %316
  %391 = phi i64 [ %389, %316 ], [ 0, %163 ]
  %392 = phi i64 [ %353, %316 ], [ %165, %163 ]
  %393 = load i64, ptr %1, align 1
  %394 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %395 = load i64, ptr %394, align 1
  %396 = load i64, ptr %3, align 1
  %397 = xor i64 %396, %393
  %398 = getelementptr inbounds nuw i8, ptr %3, i32 8
  %399 = load i64, ptr %398, align 1
  %400 = xor i64 %399, %395
  %401 = lshr i64 %397, 32
  %402 = lshr i64 %400, 32
  %403 = mul nuw i64 %402, %401
  %404 = and i64 %397, 4294967295
  %405 = mul nuw i64 %402, %404
  %406 = and i64 %400, 4294967295
  %407 = mul nuw i64 %406, %401
  %408 = mul nuw i64 %406, %404
  %409 = shl i64 %405, 32
  %410 = add i64 %409, %408
  %411 = icmp ult i64 %410, %408
  %412 = zext i1 %411 to i64
  %413 = add i64 %405, %407
  %414 = shl i64 %413, 32
  %415 = add i64 %414, %408
  %416 = icmp ult i64 %415, %410
  %417 = zext i1 %416 to i64
  %418 = lshr i64 %405, 32
  %419 = add nuw i64 %418, %403
  %420 = lshr i64 %407, 32
  %421 = add nuw i64 %419, %420
  %422 = add nuw i64 %421, %412
  %423 = add nuw i64 %422, %417
  %424 = xor i64 %423, %415
  %425 = add i64 %424, %392
  %426 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %427 = getelementptr inbounds i8, ptr %426, i32 -16
  %428 = getelementptr inbounds nuw i8, ptr %3, i32 16
  %429 = load i64, ptr %427, align 1
  %430 = getelementptr inbounds i8, ptr %426, i32 -8
  %431 = load i64, ptr %430, align 1
  %432 = load i64, ptr %428, align 1
  %433 = xor i64 %432, %429
  %434 = getelementptr inbounds nuw i8, ptr %3, i32 24
  %435 = load i64, ptr %434, align 1
  %436 = xor i64 %435, %431
  %437 = lshr i64 %433, 32
  %438 = lshr i64 %436, 32
  %439 = mul nuw i64 %438, %437
  %440 = and i64 %433, 4294967295
  %441 = mul nuw i64 %438, %440
  %442 = and i64 %436, 4294967295
  %443 = mul nuw i64 %442, %437
  %444 = mul nuw i64 %442, %440
  %445 = shl i64 %441, 32
  %446 = add i64 %445, %444
  %447 = icmp ult i64 %446, %444
  %448 = zext i1 %447 to i64
  %449 = add i64 %441, %443
  %450 = shl i64 %449, 32
  %451 = add i64 %450, %444
  %452 = icmp ult i64 %451, %446
  %453 = zext i1 %452 to i64
  %454 = lshr i64 %441, 32
  %455 = add nuw i64 %454, %439
  %456 = lshr i64 %443, 32
  %457 = add nuw i64 %455, %456
  %458 = add nuw i64 %457, %448
  %459 = add nuw i64 %458, %453
  %460 = xor i64 %459, %451
  %461 = add i64 %460, %391
  %462 = add i64 %461, %425
  %463 = mul i64 %425, -7046029288634856825
  %464 = mul i64 %461, -8796714831421723037
  %465 = mul i64 %164, -4417276706812531889
  %466 = add i64 %463, %465
  %467 = add i64 %466, %464
  %468 = lshr i64 %462, 37
  %469 = xor i64 %468, %462
  %470 = mul i64 %469, 1609587929392839161
  %471 = lshr i64 %470, 32
  %472 = xor i64 %471, %470
  store i64 %472, ptr %0, align 8, !alias.scope !49
  %473 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %474 = lshr i64 %467, 37
  %475 = xor i64 %474, %467
  %476 = mul i64 %475, 1609587929392839161
  %477 = lshr i64 %476, 32
  %478 = xor i64 %477, %476
  %479 = sub i64 0, %478
  store i64 %479, ptr %473, align 8, !alias.scope !49
  br label %484

480:                                              ; preds = %161
  %481 = icmp ult i32 %2, 241
  br i1 %481, label %482, label %483

482:                                              ; preds = %480
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef 0)
  br label %484

483:                                              ; preds = %480
  tail call fastcc void @XXH3_hashLong_128b_withSecret(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %484

484:                                              ; preds = %160, %122, %79, %9, %483, %482, %390
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal fastcc void @XXH3_hashLong_128b_withSecret(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i32 noundef range(i32 241, 0) %2, ptr noundef readonly %3, i32 noundef %4) unnamed_addr #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %6 = add i32 %4, -64
  %7 = lshr i32 %6, 3
  %8 = shl i32 %7, 6
  %9 = udiv i32 %2, %8
  %10 = icmp ugt i32 %8, %2
  br i1 %10, label %233, label %11

11:                                               ; preds = %5
  %12 = icmp ult i32 %6, 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i32 %4
  %14 = getelementptr inbounds i8, ptr %13, i32 -64
  br i1 %12, label %15, label %31

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %13, i32 -56
  %17 = getelementptr inbounds i8, ptr %13, i32 -48
  %18 = getelementptr inbounds i8, ptr %13, i32 -40
  %19 = getelementptr inbounds i8, ptr %13, i32 -32
  %20 = getelementptr inbounds i8, ptr %13, i32 -24
  %21 = getelementptr inbounds i8, ptr %13, i32 -16
  %22 = getelementptr inbounds i8, ptr %13, i32 -8
  %23 = load i64, ptr %14, align 1, !noalias !52
  %24 = load i64, ptr %16, align 1, !noalias !52
  %25 = load i64, ptr %17, align 1, !noalias !52
  %26 = load i64, ptr %18, align 1, !noalias !52
  %27 = load i64, ptr %19, align 1, !noalias !52
  %28 = load i64, ptr %20, align 1, !noalias !52
  %29 = load i64, ptr %21, align 1, !noalias !52
  %30 = load i64, ptr %22, align 1, !noalias !52
  br label %189

31:                                               ; preds = %11
  %32 = tail call i32 @llvm.umax.i32(i32 %7, i32 1)
  %33 = getelementptr inbounds i8, ptr %13, i32 -56
  %34 = getelementptr inbounds i8, ptr %13, i32 -48
  %35 = getelementptr inbounds i8, ptr %13, i32 -40
  %36 = getelementptr inbounds i8, ptr %13, i32 -32
  %37 = getelementptr inbounds i8, ptr %13, i32 -24
  %38 = getelementptr inbounds i8, ptr %13, i32 -16
  %39 = getelementptr inbounds i8, ptr %13, i32 -8
  %40 = load i64, ptr %14, align 1, !noalias !52
  %41 = load i64, ptr %33, align 1, !noalias !52
  %42 = load i64, ptr %34, align 1, !noalias !52
  %43 = load i64, ptr %35, align 1, !noalias !52
  %44 = load i64, ptr %36, align 1, !noalias !52
  %45 = load i64, ptr %37, align 1, !noalias !52
  %46 = load i64, ptr %38, align 1, !noalias !52
  %47 = load i64, ptr %39, align 1, !noalias !52
  br label %48

48:                                               ; preds = %154, %31
  %49 = phi i64 [ 2654435761, %31 ], [ %186, %154 ]
  %50 = phi i64 [ 2870177450012600261, %31 ], [ %182, %154 ]
  %51 = phi i64 [ 2246822519, %31 ], [ %178, %154 ]
  %52 = phi i64 [ -8796714831421723037, %31 ], [ %174, %154 ]
  %53 = phi i64 [ 1609587929392839161, %31 ], [ %170, %154 ]
  %54 = phi i64 [ -4417276706812531889, %31 ], [ %166, %154 ]
  %55 = phi i64 [ -7046029288634856825, %31 ], [ %162, %154 ]
  %56 = phi i64 [ 3266489917, %31 ], [ %158, %154 ]
  %57 = phi i32 [ 0, %31 ], [ %187, %154 ]
  %58 = mul i32 %57, %8
  %59 = getelementptr inbounds nuw i8, ptr %1, i32 %58
  br label %60

60:                                               ; preds = %60, %48
  %61 = phi i64 [ %49, %48 ], [ %151, %60 ]
  %62 = phi i64 [ %50, %48 ], [ %149, %60 ]
  %63 = phi i64 [ %51, %48 ], [ %131, %60 ]
  %64 = phi i64 [ %52, %48 ], [ %129, %60 ]
  %65 = phi i64 [ %53, %48 ], [ %111, %60 ]
  %66 = phi i64 [ %54, %48 ], [ %109, %60 ]
  %67 = phi i64 [ %55, %48 ], [ %91, %60 ]
  %68 = phi i64 [ %56, %48 ], [ %89, %60 ]
  %69 = phi i32 [ 0, %48 ], [ %152, %60 ]
  %70 = shl i32 %69, 6
  %71 = getelementptr inbounds nuw i8, ptr %59, i32 %70
  %72 = shl i32 %69, 3
  %73 = getelementptr inbounds nuw i8, ptr %3, i32 %72
  %74 = load i64, ptr %71, align 1, !noalias !52
  %75 = getelementptr inbounds nuw i8, ptr %71, i32 8
  %76 = load i64, ptr %75, align 1, !noalias !52
  %77 = load i64, ptr %73, align 1, !noalias !52
  %78 = getelementptr inbounds nuw i8, ptr %73, i32 8
  %79 = load i64, ptr %78, align 1, !noalias !52
  %80 = xor i64 %77, %74
  %81 = xor i64 %79, %76
  %82 = and i64 %80, 4294967295
  %83 = lshr i64 %80, 32
  %84 = mul nuw i64 %82, %83
  %85 = and i64 %81, 4294967295
  %86 = lshr i64 %81, 32
  %87 = mul nuw i64 %85, %86
  %88 = add i64 %76, %68
  %89 = add i64 %88, %84
  %90 = add i64 %74, %67
  %91 = add i64 %90, %87
  %92 = getelementptr inbounds nuw i8, ptr %71, i32 16
  %93 = load i64, ptr %92, align 1, !noalias !52
  %94 = getelementptr inbounds nuw i8, ptr %71, i32 24
  %95 = load i64, ptr %94, align 1, !noalias !52
  %96 = getelementptr inbounds nuw i8, ptr %73, i32 16
  %97 = load i64, ptr %96, align 1, !noalias !52
  %98 = getelementptr inbounds nuw i8, ptr %73, i32 24
  %99 = load i64, ptr %98, align 1, !noalias !52
  %100 = xor i64 %97, %93
  %101 = xor i64 %99, %95
  %102 = and i64 %100, 4294967295
  %103 = lshr i64 %100, 32
  %104 = mul nuw i64 %102, %103
  %105 = and i64 %101, 4294967295
  %106 = lshr i64 %101, 32
  %107 = mul nuw i64 %105, %106
  %108 = add i64 %95, %66
  %109 = add i64 %108, %104
  %110 = add i64 %93, %65
  %111 = add i64 %110, %107
  %112 = getelementptr inbounds nuw i8, ptr %71, i32 32
  %113 = load i64, ptr %112, align 1, !noalias !52
  %114 = getelementptr inbounds nuw i8, ptr %71, i32 40
  %115 = load i64, ptr %114, align 1, !noalias !52
  %116 = getelementptr inbounds nuw i8, ptr %73, i32 32
  %117 = load i64, ptr %116, align 1, !noalias !52
  %118 = getelementptr inbounds nuw i8, ptr %73, i32 40
  %119 = load i64, ptr %118, align 1, !noalias !52
  %120 = xor i64 %117, %113
  %121 = xor i64 %119, %115
  %122 = and i64 %120, 4294967295
  %123 = lshr i64 %120, 32
  %124 = mul nuw i64 %122, %123
  %125 = and i64 %121, 4294967295
  %126 = lshr i64 %121, 32
  %127 = mul nuw i64 %125, %126
  %128 = add i64 %115, %64
  %129 = add i64 %128, %124
  %130 = add i64 %113, %63
  %131 = add i64 %130, %127
  %132 = getelementptr inbounds nuw i8, ptr %71, i32 48
  %133 = load i64, ptr %132, align 1, !noalias !52
  %134 = getelementptr inbounds nuw i8, ptr %71, i32 56
  %135 = load i64, ptr %134, align 1, !noalias !52
  %136 = getelementptr inbounds nuw i8, ptr %73, i32 48
  %137 = load i64, ptr %136, align 1, !noalias !52
  %138 = getelementptr inbounds nuw i8, ptr %73, i32 56
  %139 = load i64, ptr %138, align 1, !noalias !52
  %140 = xor i64 %137, %133
  %141 = xor i64 %139, %135
  %142 = and i64 %140, 4294967295
  %143 = lshr i64 %140, 32
  %144 = mul nuw i64 %142, %143
  %145 = and i64 %141, 4294967295
  %146 = lshr i64 %141, 32
  %147 = mul nuw i64 %145, %146
  %148 = add i64 %135, %62
  %149 = add i64 %148, %144
  %150 = add i64 %133, %61
  %151 = add i64 %150, %147
  %152 = add nuw nsw i32 %69, 1
  %153 = icmp eq i32 %152, %32
  br i1 %153, label %154, label %60

154:                                              ; preds = %60
  %155 = lshr i64 %89, 47
  %156 = xor i64 %155, %40
  %157 = xor i64 %156, %89
  %158 = mul i64 %157, 2654435761
  %159 = lshr i64 %91, 47
  %160 = xor i64 %159, %41
  %161 = xor i64 %160, %91
  %162 = mul i64 %161, 2654435761
  %163 = lshr i64 %109, 47
  %164 = xor i64 %163, %42
  %165 = xor i64 %164, %109
  %166 = mul i64 %165, 2654435761
  %167 = lshr i64 %111, 47
  %168 = xor i64 %167, %43
  %169 = xor i64 %168, %111
  %170 = mul i64 %169, 2654435761
  %171 = lshr i64 %129, 47
  %172 = xor i64 %171, %44
  %173 = xor i64 %172, %129
  %174 = mul i64 %173, 2654435761
  %175 = lshr i64 %131, 47
  %176 = xor i64 %175, %45
  %177 = xor i64 %176, %131
  %178 = mul i64 %177, 2654435761
  %179 = lshr i64 %149, 47
  %180 = xor i64 %179, %46
  %181 = xor i64 %180, %149
  %182 = mul i64 %181, 2654435761
  %183 = lshr i64 %151, 47
  %184 = xor i64 %183, %47
  %185 = xor i64 %184, %151
  %186 = mul i64 %185, 2654435761
  %187 = add nuw i32 %57, 1
  %188 = icmp ult i32 %187, %9
  br i1 %188, label %48, label %233

189:                                              ; preds = %189, %15
  %190 = phi i64 [ %230, %189 ], [ 2654435761, %15 ]
  %191 = phi i64 [ %226, %189 ], [ 2870177450012600261, %15 ]
  %192 = phi i64 [ %222, %189 ], [ 2246822519, %15 ]
  %193 = phi i64 [ %218, %189 ], [ -8796714831421723037, %15 ]
  %194 = phi i64 [ %214, %189 ], [ 1609587929392839161, %15 ]
  %195 = phi i64 [ %210, %189 ], [ -4417276706812531889, %15 ]
  %196 = phi i64 [ %206, %189 ], [ -7046029288634856825, %15 ]
  %197 = phi i64 [ %202, %189 ], [ 3266489917, %15 ]
  %198 = phi i32 [ %231, %189 ], [ 0, %15 ]
  %199 = lshr i64 %197, 47
  %200 = xor i64 %199, %23
  %201 = xor i64 %200, %197
  %202 = mul i64 %201, 2654435761
  %203 = lshr i64 %196, 47
  %204 = xor i64 %203, %24
  %205 = xor i64 %204, %196
  %206 = mul i64 %205, 2654435761
  %207 = lshr i64 %195, 47
  %208 = xor i64 %207, %25
  %209 = xor i64 %208, %195
  %210 = mul i64 %209, 2654435761
  %211 = lshr i64 %194, 47
  %212 = xor i64 %211, %26
  %213 = xor i64 %212, %194
  %214 = mul i64 %213, 2654435761
  %215 = lshr i64 %193, 47
  %216 = xor i64 %215, %27
  %217 = xor i64 %216, %193
  %218 = mul i64 %217, 2654435761
  %219 = lshr i64 %192, 47
  %220 = xor i64 %219, %28
  %221 = xor i64 %220, %192
  %222 = mul i64 %221, 2654435761
  %223 = lshr i64 %191, 47
  %224 = xor i64 %223, %29
  %225 = xor i64 %224, %191
  %226 = mul i64 %225, 2654435761
  %227 = lshr i64 %190, 47
  %228 = xor i64 %227, %30
  %229 = xor i64 %228, %190
  %230 = mul i64 %229, 2654435761
  %231 = add nuw i32 %198, 1
  %232 = icmp ult i32 %231, %9
  br i1 %232, label %189, label %233

233:                                              ; preds = %154, %189, %5
  %234 = phi i64 [ 2654435761, %5 ], [ %230, %189 ], [ %186, %154 ]
  %235 = phi i64 [ 2870177450012600261, %5 ], [ %226, %189 ], [ %182, %154 ]
  %236 = phi i64 [ 2246822519, %5 ], [ %222, %189 ], [ %178, %154 ]
  %237 = phi i64 [ -8796714831421723037, %5 ], [ %218, %189 ], [ %174, %154 ]
  %238 = phi i64 [ 1609587929392839161, %5 ], [ %214, %189 ], [ %170, %154 ]
  %239 = phi i64 [ -4417276706812531889, %5 ], [ %210, %189 ], [ %166, %154 ]
  %240 = phi i64 [ -7046029288634856825, %5 ], [ %206, %189 ], [ %162, %154 ]
  %241 = phi i64 [ 3266489917, %5 ], [ %202, %189 ], [ %158, %154 ]
  %242 = mul i32 %9, %8
  %243 = sub i32 %2, %242
  %244 = lshr i32 %243, 6
  %245 = getelementptr inbounds nuw i8, ptr %1, i32 %242
  %246 = icmp ult i32 %243, 64
  br i1 %246, label %341, label %247

247:                                              ; preds = %233, %247
  %248 = phi i64 [ %338, %247 ], [ %234, %233 ]
  %249 = phi i64 [ %336, %247 ], [ %235, %233 ]
  %250 = phi i64 [ %318, %247 ], [ %236, %233 ]
  %251 = phi i64 [ %316, %247 ], [ %237, %233 ]
  %252 = phi i64 [ %298, %247 ], [ %238, %233 ]
  %253 = phi i64 [ %296, %247 ], [ %239, %233 ]
  %254 = phi i64 [ %278, %247 ], [ %240, %233 ]
  %255 = phi i64 [ %276, %247 ], [ %241, %233 ]
  %256 = phi i32 [ %339, %247 ], [ 0, %233 ]
  %257 = shl i32 %256, 6
  %258 = getelementptr inbounds nuw i8, ptr %245, i32 %257
  %259 = shl i32 %256, 3
  %260 = getelementptr inbounds nuw i8, ptr %3, i32 %259
  %261 = load i64, ptr %258, align 1, !noalias !52
  %262 = getelementptr inbounds nuw i8, ptr %258, i32 8
  %263 = load i64, ptr %262, align 1, !noalias !52
  %264 = load i64, ptr %260, align 1, !noalias !52
  %265 = getelementptr inbounds nuw i8, ptr %260, i32 8
  %266 = load i64, ptr %265, align 1, !noalias !52
  %267 = xor i64 %264, %261
  %268 = xor i64 %266, %263
  %269 = and i64 %267, 4294967295
  %270 = lshr i64 %267, 32
  %271 = mul nuw i64 %269, %270
  %272 = and i64 %268, 4294967295
  %273 = lshr i64 %268, 32
  %274 = mul nuw i64 %272, %273
  %275 = add i64 %263, %255
  %276 = add i64 %275, %271
  %277 = add i64 %261, %254
  %278 = add i64 %277, %274
  %279 = getelementptr inbounds nuw i8, ptr %258, i32 16
  %280 = load i64, ptr %279, align 1, !noalias !52
  %281 = getelementptr inbounds nuw i8, ptr %258, i32 24
  %282 = load i64, ptr %281, align 1, !noalias !52
  %283 = getelementptr inbounds nuw i8, ptr %260, i32 16
  %284 = load i64, ptr %283, align 1, !noalias !52
  %285 = getelementptr inbounds nuw i8, ptr %260, i32 24
  %286 = load i64, ptr %285, align 1, !noalias !52
  %287 = xor i64 %284, %280
  %288 = xor i64 %286, %282
  %289 = and i64 %287, 4294967295
  %290 = lshr i64 %287, 32
  %291 = mul nuw i64 %289, %290
  %292 = and i64 %288, 4294967295
  %293 = lshr i64 %288, 32
  %294 = mul nuw i64 %292, %293
  %295 = add i64 %282, %253
  %296 = add i64 %295, %291
  %297 = add i64 %280, %252
  %298 = add i64 %297, %294
  %299 = getelementptr inbounds nuw i8, ptr %258, i32 32
  %300 = load i64, ptr %299, align 1, !noalias !52
  %301 = getelementptr inbounds nuw i8, ptr %258, i32 40
  %302 = load i64, ptr %301, align 1, !noalias !52
  %303 = getelementptr inbounds nuw i8, ptr %260, i32 32
  %304 = load i64, ptr %303, align 1, !noalias !52
  %305 = getelementptr inbounds nuw i8, ptr %260, i32 40
  %306 = load i64, ptr %305, align 1, !noalias !52
  %307 = xor i64 %304, %300
  %308 = xor i64 %306, %302
  %309 = and i64 %307, 4294967295
  %310 = lshr i64 %307, 32
  %311 = mul nuw i64 %309, %310
  %312 = and i64 %308, 4294967295
  %313 = lshr i64 %308, 32
  %314 = mul nuw i64 %312, %313
  %315 = add i64 %302, %251
  %316 = add i64 %315, %311
  %317 = add i64 %300, %250
  %318 = add i64 %317, %314
  %319 = getelementptr inbounds nuw i8, ptr %258, i32 48
  %320 = load i64, ptr %319, align 1, !noalias !52
  %321 = getelementptr inbounds nuw i8, ptr %258, i32 56
  %322 = load i64, ptr %321, align 1, !noalias !52
  %323 = getelementptr inbounds nuw i8, ptr %260, i32 48
  %324 = load i64, ptr %323, align 1, !noalias !52
  %325 = getelementptr inbounds nuw i8, ptr %260, i32 56
  %326 = load i64, ptr %325, align 1, !noalias !52
  %327 = xor i64 %324, %320
  %328 = xor i64 %326, %322
  %329 = and i64 %327, 4294967295
  %330 = lshr i64 %327, 32
  %331 = mul nuw i64 %329, %330
  %332 = and i64 %328, 4294967295
  %333 = lshr i64 %328, 32
  %334 = mul nuw i64 %332, %333
  %335 = add i64 %322, %249
  %336 = add i64 %335, %331
  %337 = add i64 %320, %248
  %338 = add i64 %337, %334
  %339 = add nuw nsw i32 %256, 1
  %340 = icmp samesign ult i32 %339, %244
  br i1 %340, label %247, label %341

341:                                              ; preds = %247, %233
  %342 = phi i64 [ %234, %233 ], [ %338, %247 ]
  %343 = phi i64 [ %235, %233 ], [ %336, %247 ]
  %344 = phi i64 [ %236, %233 ], [ %318, %247 ]
  %345 = phi i64 [ %237, %233 ], [ %316, %247 ]
  %346 = phi i64 [ %238, %233 ], [ %298, %247 ]
  %347 = phi i64 [ %239, %233 ], [ %296, %247 ]
  %348 = phi i64 [ %240, %233 ], [ %278, %247 ]
  %349 = phi i64 [ %241, %233 ], [ %276, %247 ]
  %350 = and i32 %2, 63
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %435, label %352

352:                                              ; preds = %341
  %353 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %354 = getelementptr inbounds i8, ptr %353, i32 -64
  %355 = getelementptr inbounds nuw i8, ptr %3, i32 %4
  %356 = getelementptr inbounds i8, ptr %355, i32 -71
  %357 = load i64, ptr %354, align 1, !noalias !52
  %358 = getelementptr inbounds i8, ptr %353, i32 -56
  %359 = load i64, ptr %358, align 1, !noalias !52
  %360 = load i64, ptr %356, align 1, !noalias !52
  %361 = getelementptr inbounds i8, ptr %355, i32 -63
  %362 = load i64, ptr %361, align 1, !noalias !52
  %363 = xor i64 %360, %357
  %364 = xor i64 %362, %359
  %365 = and i64 %363, 4294967295
  %366 = lshr i64 %363, 32
  %367 = mul nuw i64 %365, %366
  %368 = and i64 %364, 4294967295
  %369 = lshr i64 %364, 32
  %370 = mul nuw i64 %368, %369
  %371 = add i64 %359, %349
  %372 = add i64 %371, %367
  %373 = add i64 %357, %348
  %374 = add i64 %373, %370
  %375 = getelementptr inbounds i8, ptr %353, i32 -48
  %376 = load i64, ptr %375, align 1, !noalias !52
  %377 = getelementptr inbounds i8, ptr %353, i32 -40
  %378 = load i64, ptr %377, align 1, !noalias !52
  %379 = getelementptr inbounds i8, ptr %355, i32 -55
  %380 = load i64, ptr %379, align 1, !noalias !52
  %381 = getelementptr inbounds i8, ptr %355, i32 -47
  %382 = load i64, ptr %381, align 1, !noalias !52
  %383 = xor i64 %380, %376
  %384 = xor i64 %382, %378
  %385 = and i64 %383, 4294967295
  %386 = lshr i64 %383, 32
  %387 = mul nuw i64 %385, %386
  %388 = and i64 %384, 4294967295
  %389 = lshr i64 %384, 32
  %390 = mul nuw i64 %388, %389
  %391 = add i64 %378, %347
  %392 = add i64 %391, %387
  %393 = add i64 %376, %346
  %394 = add i64 %393, %390
  %395 = getelementptr inbounds i8, ptr %353, i32 -32
  %396 = load i64, ptr %395, align 1, !noalias !52
  %397 = getelementptr inbounds i8, ptr %353, i32 -24
  %398 = load i64, ptr %397, align 1, !noalias !52
  %399 = getelementptr inbounds i8, ptr %355, i32 -39
  %400 = load i64, ptr %399, align 1, !noalias !52
  %401 = getelementptr inbounds i8, ptr %355, i32 -31
  %402 = load i64, ptr %401, align 1, !noalias !52
  %403 = xor i64 %400, %396
  %404 = xor i64 %402, %398
  %405 = and i64 %403, 4294967295
  %406 = lshr i64 %403, 32
  %407 = mul nuw i64 %405, %406
  %408 = and i64 %404, 4294967295
  %409 = lshr i64 %404, 32
  %410 = mul nuw i64 %408, %409
  %411 = add i64 %398, %345
  %412 = add i64 %411, %407
  %413 = add i64 %396, %344
  %414 = add i64 %413, %410
  %415 = getelementptr inbounds i8, ptr %353, i32 -16
  %416 = load i64, ptr %415, align 1, !noalias !52
  %417 = getelementptr inbounds i8, ptr %353, i32 -8
  %418 = load i64, ptr %417, align 1, !noalias !52
  %419 = getelementptr inbounds i8, ptr %355, i32 -23
  %420 = load i64, ptr %419, align 1, !noalias !52
  %421 = getelementptr inbounds i8, ptr %355, i32 -15
  %422 = load i64, ptr %421, align 1, !noalias !52
  %423 = xor i64 %420, %416
  %424 = xor i64 %422, %418
  %425 = and i64 %423, 4294967295
  %426 = lshr i64 %423, 32
  %427 = mul nuw i64 %425, %426
  %428 = and i64 %424, 4294967295
  %429 = lshr i64 %424, 32
  %430 = mul nuw i64 %428, %429
  %431 = add i64 %418, %343
  %432 = add i64 %431, %427
  %433 = add i64 %416, %342
  %434 = add i64 %433, %430
  br label %435

435:                                              ; preds = %341, %352
  %436 = phi i64 [ %342, %341 ], [ %434, %352 ]
  %437 = phi i64 [ %343, %341 ], [ %432, %352 ]
  %438 = phi i64 [ %344, %341 ], [ %414, %352 ]
  %439 = phi i64 [ %345, %341 ], [ %412, %352 ]
  %440 = phi i64 [ %346, %341 ], [ %394, %352 ]
  %441 = phi i64 [ %347, %341 ], [ %392, %352 ]
  %442 = phi i64 [ %348, %341 ], [ %374, %352 ]
  %443 = phi i64 [ %349, %341 ], [ %372, %352 ]
  %444 = getelementptr inbounds nuw i8, ptr %3, i32 11
  %445 = zext i32 %2 to i64
  %446 = mul i64 %445, -7046029288634856825
  %447 = load i64, ptr %444, align 1, !noalias !52
  %448 = xor i64 %447, %443
  %449 = getelementptr inbounds nuw i8, ptr %3, i32 19
  %450 = load i64, ptr %449, align 1, !noalias !52
  %451 = xor i64 %450, %442
  %452 = lshr i64 %448, 32
  %453 = lshr i64 %451, 32
  %454 = mul nuw i64 %453, %452
  %455 = and i64 %448, 4294967295
  %456 = mul nuw i64 %453, %455
  %457 = and i64 %451, 4294967295
  %458 = mul nuw i64 %457, %452
  %459 = mul nuw i64 %457, %455
  %460 = shl i64 %456, 32
  %461 = add i64 %460, %459
  %462 = icmp ult i64 %461, %459
  %463 = zext i1 %462 to i64
  %464 = add i64 %456, %458
  %465 = shl i64 %464, 32
  %466 = add i64 %465, %459
  %467 = icmp ult i64 %466, %461
  %468 = zext i1 %467 to i64
  %469 = lshr i64 %456, 32
  %470 = add nuw i64 %469, %454
  %471 = lshr i64 %458, 32
  %472 = add nuw i64 %470, %471
  %473 = add nuw i64 %472, %463
  %474 = add nuw i64 %473, %468
  %475 = xor i64 %474, %466
  %476 = add i64 %475, %446
  %477 = getelementptr inbounds nuw i8, ptr %3, i32 27
  %478 = load i64, ptr %477, align 1, !noalias !52
  %479 = xor i64 %478, %441
  %480 = getelementptr inbounds nuw i8, ptr %3, i32 35
  %481 = load i64, ptr %480, align 1, !noalias !52
  %482 = xor i64 %481, %440
  %483 = lshr i64 %479, 32
  %484 = lshr i64 %482, 32
  %485 = mul nuw i64 %484, %483
  %486 = and i64 %479, 4294967295
  %487 = mul nuw i64 %484, %486
  %488 = and i64 %482, 4294967295
  %489 = mul nuw i64 %488, %483
  %490 = mul nuw i64 %488, %486
  %491 = shl i64 %487, 32
  %492 = add i64 %491, %490
  %493 = icmp ult i64 %492, %490
  %494 = zext i1 %493 to i64
  %495 = add i64 %487, %489
  %496 = shl i64 %495, 32
  %497 = add i64 %496, %490
  %498 = icmp ult i64 %497, %492
  %499 = zext i1 %498 to i64
  %500 = lshr i64 %487, 32
  %501 = add nuw i64 %500, %485
  %502 = lshr i64 %489, 32
  %503 = add nuw i64 %501, %502
  %504 = add nuw i64 %503, %494
  %505 = add nuw i64 %504, %499
  %506 = xor i64 %505, %497
  %507 = add i64 %476, %506
  %508 = getelementptr inbounds nuw i8, ptr %3, i32 43
  %509 = load i64, ptr %508, align 1, !noalias !52
  %510 = xor i64 %509, %439
  %511 = getelementptr inbounds nuw i8, ptr %3, i32 51
  %512 = load i64, ptr %511, align 1, !noalias !52
  %513 = xor i64 %512, %438
  %514 = lshr i64 %510, 32
  %515 = lshr i64 %513, 32
  %516 = mul nuw i64 %515, %514
  %517 = and i64 %510, 4294967295
  %518 = mul nuw i64 %515, %517
  %519 = and i64 %513, 4294967295
  %520 = mul nuw i64 %519, %514
  %521 = mul nuw i64 %519, %517
  %522 = shl i64 %518, 32
  %523 = add i64 %522, %521
  %524 = icmp ult i64 %523, %521
  %525 = zext i1 %524 to i64
  %526 = add i64 %518, %520
  %527 = shl i64 %526, 32
  %528 = add i64 %527, %521
  %529 = icmp ult i64 %528, %523
  %530 = zext i1 %529 to i64
  %531 = lshr i64 %518, 32
  %532 = add nuw i64 %531, %516
  %533 = lshr i64 %520, 32
  %534 = add nuw i64 %532, %533
  %535 = add nuw i64 %534, %525
  %536 = add nuw i64 %535, %530
  %537 = xor i64 %536, %528
  %538 = add i64 %507, %537
  %539 = getelementptr inbounds nuw i8, ptr %3, i32 59
  %540 = load i64, ptr %539, align 1, !noalias !52
  %541 = xor i64 %540, %437
  %542 = getelementptr inbounds nuw i8, ptr %3, i32 67
  %543 = load i64, ptr %542, align 1, !noalias !52
  %544 = xor i64 %543, %436
  %545 = lshr i64 %541, 32
  %546 = lshr i64 %544, 32
  %547 = mul nuw i64 %546, %545
  %548 = and i64 %541, 4294967295
  %549 = mul nuw i64 %546, %548
  %550 = and i64 %544, 4294967295
  %551 = mul nuw i64 %550, %545
  %552 = mul nuw i64 %550, %548
  %553 = shl i64 %549, 32
  %554 = add i64 %553, %552
  %555 = icmp ult i64 %554, %552
  %556 = zext i1 %555 to i64
  %557 = add i64 %549, %551
  %558 = shl i64 %557, 32
  %559 = add i64 %558, %552
  %560 = icmp ult i64 %559, %554
  %561 = zext i1 %560 to i64
  %562 = lshr i64 %549, 32
  %563 = add nuw i64 %562, %547
  %564 = lshr i64 %551, 32
  %565 = add nuw i64 %563, %564
  %566 = add nuw i64 %565, %556
  %567 = add nuw i64 %566, %561
  %568 = xor i64 %567, %559
  %569 = add i64 %538, %568
  %570 = lshr i64 %569, 37
  %571 = xor i64 %570, %569
  %572 = mul i64 %571, 1609587929392839161
  %573 = lshr i64 %572, 32
  %574 = xor i64 %573, %572
  %575 = getelementptr inbounds nuw i8, ptr %3, i32 %4
  %576 = getelementptr inbounds i8, ptr %575, i32 -75
  %577 = mul i64 %445, -4417276706812531889
  %578 = xor i64 %577, -1
  %579 = load i64, ptr %576, align 1, !noalias !52
  %580 = xor i64 %579, %443
  %581 = getelementptr inbounds i8, ptr %575, i32 -67
  %582 = load i64, ptr %581, align 1, !noalias !52
  %583 = xor i64 %582, %442
  %584 = lshr i64 %580, 32
  %585 = lshr i64 %583, 32
  %586 = mul nuw i64 %585, %584
  %587 = and i64 %580, 4294967295
  %588 = mul nuw i64 %585, %587
  %589 = and i64 %583, 4294967295
  %590 = mul nuw i64 %589, %584
  %591 = mul nuw i64 %589, %587
  %592 = shl i64 %588, 32
  %593 = add i64 %592, %591
  %594 = icmp ult i64 %593, %591
  %595 = zext i1 %594 to i64
  %596 = add i64 %588, %590
  %597 = shl i64 %596, 32
  %598 = add i64 %597, %591
  %599 = icmp ult i64 %598, %593
  %600 = zext i1 %599 to i64
  %601 = lshr i64 %588, 32
  %602 = add nuw i64 %601, %586
  %603 = lshr i64 %590, 32
  %604 = add nuw i64 %602, %603
  %605 = add nuw i64 %604, %595
  %606 = add nuw i64 %605, %600
  %607 = xor i64 %606, %598
  %608 = add i64 %607, %578
  %609 = getelementptr inbounds i8, ptr %575, i32 -59
  %610 = load i64, ptr %609, align 1, !noalias !52
  %611 = xor i64 %610, %441
  %612 = getelementptr inbounds i8, ptr %575, i32 -51
  %613 = load i64, ptr %612, align 1, !noalias !52
  %614 = xor i64 %613, %440
  %615 = lshr i64 %611, 32
  %616 = lshr i64 %614, 32
  %617 = mul nuw i64 %616, %615
  %618 = and i64 %611, 4294967295
  %619 = mul nuw i64 %616, %618
  %620 = and i64 %614, 4294967295
  %621 = mul nuw i64 %620, %615
  %622 = mul nuw i64 %620, %618
  %623 = shl i64 %619, 32
  %624 = add i64 %623, %622
  %625 = icmp ult i64 %624, %622
  %626 = zext i1 %625 to i64
  %627 = add i64 %619, %621
  %628 = shl i64 %627, 32
  %629 = add i64 %628, %622
  %630 = icmp ult i64 %629, %624
  %631 = zext i1 %630 to i64
  %632 = lshr i64 %619, 32
  %633 = add nuw i64 %632, %617
  %634 = lshr i64 %621, 32
  %635 = add nuw i64 %633, %634
  %636 = add nuw i64 %635, %626
  %637 = add nuw i64 %636, %631
  %638 = xor i64 %637, %629
  %639 = add i64 %608, %638
  %640 = getelementptr inbounds i8, ptr %575, i32 -43
  %641 = load i64, ptr %640, align 1, !noalias !52
  %642 = xor i64 %641, %439
  %643 = getelementptr inbounds i8, ptr %575, i32 -35
  %644 = load i64, ptr %643, align 1, !noalias !52
  %645 = xor i64 %644, %438
  %646 = lshr i64 %642, 32
  %647 = lshr i64 %645, 32
  %648 = mul nuw i64 %647, %646
  %649 = and i64 %642, 4294967295
  %650 = mul nuw i64 %647, %649
  %651 = and i64 %645, 4294967295
  %652 = mul nuw i64 %651, %646
  %653 = mul nuw i64 %651, %649
  %654 = shl i64 %650, 32
  %655 = add i64 %654, %653
  %656 = icmp ult i64 %655, %653
  %657 = zext i1 %656 to i64
  %658 = add i64 %650, %652
  %659 = shl i64 %658, 32
  %660 = add i64 %659, %653
  %661 = icmp ult i64 %660, %655
  %662 = zext i1 %661 to i64
  %663 = lshr i64 %650, 32
  %664 = add nuw i64 %663, %648
  %665 = lshr i64 %652, 32
  %666 = add nuw i64 %664, %665
  %667 = add nuw i64 %666, %657
  %668 = add nuw i64 %667, %662
  %669 = xor i64 %668, %660
  %670 = add i64 %639, %669
  %671 = getelementptr inbounds i8, ptr %575, i32 -27
  %672 = load i64, ptr %671, align 1, !noalias !52
  %673 = xor i64 %672, %437
  %674 = getelementptr inbounds i8, ptr %575, i32 -19
  %675 = load i64, ptr %674, align 1, !noalias !52
  %676 = xor i64 %675, %436
  %677 = lshr i64 %673, 32
  %678 = lshr i64 %676, 32
  %679 = mul nuw i64 %678, %677
  %680 = and i64 %673, 4294967295
  %681 = mul nuw i64 %678, %680
  %682 = and i64 %676, 4294967295
  %683 = mul nuw i64 %682, %677
  %684 = mul nuw i64 %682, %680
  %685 = shl i64 %681, 32
  %686 = add i64 %685, %684
  %687 = icmp ult i64 %686, %684
  %688 = zext i1 %687 to i64
  %689 = add i64 %681, %683
  %690 = shl i64 %689, 32
  %691 = add i64 %690, %684
  %692 = icmp ult i64 %691, %686
  %693 = zext i1 %692 to i64
  %694 = lshr i64 %681, 32
  %695 = add nuw i64 %694, %679
  %696 = lshr i64 %683, 32
  %697 = add nuw i64 %695, %696
  %698 = add nuw i64 %697, %688
  %699 = add nuw i64 %698, %693
  %700 = xor i64 %699, %691
  %701 = add i64 %670, %700
  %702 = lshr i64 %701, 37
  %703 = xor i64 %702, %701
  %704 = mul i64 %703, 1609587929392839161
  %705 = lshr i64 %704, 32
  %706 = xor i64 %705, %704
  store i64 %574, ptr %0, align 8, !alias.scope !52
  %707 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %706, ptr %707, align 8, !alias.scope !52
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH3_128bits_withSeed(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  %5 = icmp ult i32 %2, 17
  br i1 %5, label %6, label %157

6:                                                ; preds = %4
  %7 = icmp samesign ugt i32 %2, 8
  br i1 %7, label %8, label %75

8:                                                ; preds = %6
  %9 = load i64, ptr %1, align 1
  %10 = add i64 %3, -4734510112055689544
  %11 = xor i64 %9, %10
  %12 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %13 = getelementptr inbounds i8, ptr %12, i32 -8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 2066345149520216444, %3
  %16 = xor i64 %14, %15
  %17 = xor i64 %11, %16
  %18 = lshr i64 %17, 32
  %19 = mul nuw i64 %18, 2654435761
  %20 = and i64 %17, 4294967295
  %21 = mul nuw i64 %20, 2654435761
  %22 = mul nuw i64 %18, 2246822535
  %23 = mul nuw i64 %20, 2246822535
  %24 = mul i64 %20, -7046029288634856825
  %25 = icmp ult i64 %24, %23
  %26 = zext i1 %25 to i64
  %27 = add i64 %21, %22
  %28 = shl i64 %27, 32
  %29 = add i64 %28, %23
  %30 = icmp ult i64 %29, %24
  %31 = zext i1 %30 to i64
  %32 = lshr i64 %21, 32
  %33 = lshr i64 %22, 32
  %34 = mul i64 %16, -7046029288634856825
  %35 = add i64 %19, %34
  %36 = add i64 %35, %32
  %37 = add i64 %36, %33
  %38 = add i64 %37, %26
  %39 = add i64 %38, %31
  %40 = lshr i64 %39, 32
  %41 = lshr i64 %29, 32
  %42 = mul nuw i64 %41, 3266489917
  %43 = and i64 %23, 4294967295
  %44 = xor i64 %40, %43
  %45 = mul nuw i64 %44, 3266489917
  %46 = mul nuw nsw i64 %41, 668265295
  %47 = mul nuw nsw i64 %44, 668265295
  %48 = mul i64 %44, -4417276706812531889
  %49 = icmp ult i64 %48, %47
  %50 = zext i1 %49 to i64
  %51 = add nuw i64 %45, %46
  %52 = shl i64 %51, 32
  %53 = add i64 %52, %47
  %54 = icmp ult i64 %53, %48
  %55 = zext i1 %54 to i64
  %56 = lshr i64 %45, 32
  %57 = lshr i64 %46, 32
  %58 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %59 = mul i64 %39, -4417276706812531889
  %60 = add nuw i64 %57, %42
  %61 = add i64 %60, %59
  %62 = add i64 %61, %56
  %63 = add i64 %62, %50
  %64 = add i64 %63, %55
  %65 = lshr i64 %53, 37
  %66 = xor i64 %65, %53
  %67 = mul i64 %66, 1609587929392839161
  %68 = lshr i64 %67, 32
  %69 = xor i64 %68, %67
  store i64 %69, ptr %0, align 8, !alias.scope !55
  %70 = lshr i64 %64, 37
  %71 = xor i64 %70, %64
  %72 = mul i64 %71, 1609587929392839161
  %73 = lshr i64 %72, 32
  %74 = xor i64 %73, %72
  store i64 %74, ptr %58, align 8, !alias.scope !55
  br label %466

75:                                               ; preds = %6
  %76 = icmp samesign ugt i32 %2, 3
  br i1 %76, label %77, label %117

77:                                               ; preds = %75
  %78 = load i32, ptr %1, align 1
  %79 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %80 = getelementptr inbounds i8, ptr %79, i32 -4
  %81 = load i32, ptr %80, align 1
  %82 = zext i32 %78 to i64
  %83 = zext i32 %81 to i64
  %84 = shl nuw i64 %83, 32
  %85 = or disjoint i64 %84, %82
  %86 = tail call noundef i64 @llvm.bswap.i64(i64 %85)
  %87 = add i64 %3, -4734510112055689544
  %88 = xor i64 %85, %87
  %89 = sub i64 2066345149520216444, %3
  %90 = xor i64 %86, %89
  %91 = zext nneg i32 %2 to i64
  %92 = lshr i64 %88, 51
  %93 = xor i64 %92, %88
  %94 = mul i64 %93, 2654435761
  %95 = add i64 %94, %91
  %96 = lshr i64 %95, 47
  %97 = xor i64 %96, %95
  %98 = mul i64 %97, -4417276706812531889
  %99 = lshr i64 %90, 47
  %100 = xor i64 %99, %90
  %101 = mul i64 %100, -7046029288634856825
  %102 = sub i64 %101, %91
  %103 = lshr i64 %102, 43
  %104 = xor i64 %103, %102
  %105 = mul i64 %104, -8796714831421723037
  %106 = lshr i64 %98, 37
  %107 = xor i64 %106, %98
  %108 = mul i64 %107, 1609587929392839161
  %109 = lshr i64 %108, 32
  %110 = xor i64 %109, %108
  store i64 %110, ptr %0, align 8, !alias.scope !58
  %111 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %112 = lshr i64 %105, 37
  %113 = xor i64 %112, %105
  %114 = mul i64 %113, 1609587929392839161
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  store i64 %116, ptr %111, align 8, !alias.scope !58
  br label %466

117:                                              ; preds = %75
  %118 = icmp eq i32 %2, 0
  br i1 %118, label %156, label %119

119:                                              ; preds = %117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %120 = load i8, ptr %1, align 1, !noalias !61
  %121 = lshr i32 %2, 1
  %122 = getelementptr inbounds nuw i8, ptr %1, i32 %121
  %123 = load i8, ptr %122, align 1, !noalias !61
  %124 = getelementptr i8, ptr %1, i32 %2
  %125 = getelementptr i8, ptr %124, i32 -1
  %126 = load i8, ptr %125, align 1, !noalias !61
  %127 = zext i8 %120 to i32
  %128 = zext i8 %123 to i32
  %129 = shl nuw nsw i32 %128, 8
  %130 = or disjoint i32 %129, %127
  %131 = zext i8 %126 to i32
  %132 = shl nuw nsw i32 %131, 16
  %133 = or disjoint i32 %130, %132
  %134 = shl nuw nsw i32 %2, 24
  %135 = or disjoint i32 %133, %134
  %136 = tail call noundef i32 @llvm.bswap.i32(i32 %135)
  %137 = zext nneg i32 %135 to i64
  %138 = add i64 %3, 963444408
  %139 = xor i64 %138, %137
  %140 = zext i32 %136 to i64
  %141 = sub i64 3192628259, %3
  %142 = xor i64 %141, %140
  %143 = mul i64 %139, -7046029288634856825
  %144 = mul i64 %142, -4417276706812531889
  %145 = lshr i64 %143, 37
  %146 = xor i64 %145, %143
  %147 = mul i64 %146, 1609587929392839161
  %148 = lshr i64 %147, 32
  %149 = xor i64 %148, %147
  store i64 %149, ptr %0, align 8, !alias.scope !61
  %150 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %151 = lshr i64 %144, 37
  %152 = xor i64 %151, %144
  %153 = mul i64 %152, 1609587929392839161
  %154 = lshr i64 %153, 32
  %155 = xor i64 %154, %153
  store i64 %155, ptr %150, align 8, !alias.scope !61
  br label %466

156:                                              ; preds = %117
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !64
  br label %466

157:                                              ; preds = %4
  %158 = icmp ult i32 %2, 129
  br i1 %158, label %159, label %462

159:                                              ; preds = %157
  %160 = zext nneg i32 %2 to i64
  %161 = mul i64 %160, -7046029288634856825
  %162 = icmp samesign ugt i32 %2, 32
  br i1 %162, label %163, label %374

163:                                              ; preds = %159
  %164 = icmp samesign ugt i32 %2, 64
  br i1 %164, label %165, label %304

165:                                              ; preds = %163
  %166 = icmp samesign ugt i32 %2, 96
  br i1 %166, label %167, label %234

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %169 = load i64, ptr %168, align 1
  %170 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %171 = load i64, ptr %170, align 1
  %172 = add i64 %3, 4554437623014685352
  %173 = xor i64 %169, %172
  %174 = sub i64 2111919702937427193, %3
  %175 = xor i64 %171, %174
  %176 = lshr i64 %173, 32
  %177 = lshr i64 %175, 32
  %178 = mul nuw i64 %177, %176
  %179 = and i64 %173, 4294967295
  %180 = mul nuw i64 %177, %179
  %181 = and i64 %175, 4294967295
  %182 = mul nuw i64 %181, %176
  %183 = mul nuw i64 %181, %179
  %184 = shl i64 %180, 32
  %185 = add i64 %184, %183
  %186 = icmp ult i64 %185, %183
  %187 = zext i1 %186 to i64
  %188 = add i64 %180, %182
  %189 = shl i64 %188, 32
  %190 = add i64 %189, %183
  %191 = icmp ult i64 %190, %185
  %192 = zext i1 %191 to i64
  %193 = lshr i64 %180, 32
  %194 = add nuw i64 %193, %178
  %195 = lshr i64 %182, 32
  %196 = add nuw i64 %194, %195
  %197 = add nuw i64 %196, %187
  %198 = add nuw i64 %197, %192
  %199 = xor i64 %198, %190
  %200 = add i64 %199, %161
  %201 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %202 = getelementptr inbounds i8, ptr %201, i32 -64
  %203 = load i64, ptr %202, align 1
  %204 = getelementptr inbounds i8, ptr %201, i32 -56
  %205 = load i64, ptr %204, align 1
  %206 = add i64 %3, 3556072174620004746
  %207 = xor i64 %203, %206
  %208 = sub i64 7238261902898274248, %3
  %209 = xor i64 %205, %208
  %210 = lshr i64 %207, 32
  %211 = lshr i64 %209, 32
  %212 = mul nuw i64 %211, %210
  %213 = and i64 %207, 4294967295
  %214 = mul nuw i64 %211, %213
  %215 = and i64 %209, 4294967295
  %216 = mul nuw i64 %215, %210
  %217 = mul nuw i64 %215, %213
  %218 = shl i64 %214, 32
  %219 = add i64 %218, %217
  %220 = icmp ult i64 %219, %217
  %221 = zext i1 %220 to i64
  %222 = add i64 %214, %216
  %223 = shl i64 %222, 32
  %224 = add i64 %223, %217
  %225 = icmp ult i64 %224, %219
  %226 = zext i1 %225 to i64
  %227 = lshr i64 %214, 32
  %228 = add nuw i64 %227, %212
  %229 = lshr i64 %216, 32
  %230 = add nuw i64 %228, %229
  %231 = add nuw i64 %230, %221
  %232 = add nuw i64 %231, %226
  %233 = xor i64 %232, %224
  br label %234

234:                                              ; preds = %167, %165
  %235 = phi i64 [ %233, %167 ], [ 0, %165 ]
  %236 = phi i64 [ %200, %167 ], [ %161, %165 ]
  %237 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %238 = load i64, ptr %237, align 1
  %239 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %240 = load i64, ptr %239, align 1
  %241 = add i64 %3, -3818837453329782724
  %242 = xor i64 %238, %241
  %243 = sub i64 -6688317018830679928, %3
  %244 = xor i64 %240, %243
  %245 = lshr i64 %242, 32
  %246 = lshr i64 %244, 32
  %247 = mul nuw i64 %246, %245
  %248 = and i64 %242, 4294967295
  %249 = mul nuw i64 %246, %248
  %250 = and i64 %244, 4294967295
  %251 = mul nuw i64 %250, %245
  %252 = mul nuw i64 %250, %248
  %253 = shl i64 %249, 32
  %254 = add i64 %253, %252
  %255 = icmp ult i64 %254, %252
  %256 = zext i1 %255 to i64
  %257 = add i64 %249, %251
  %258 = shl i64 %257, 32
  %259 = add i64 %258, %252
  %260 = icmp ult i64 %259, %254
  %261 = zext i1 %260 to i64
  %262 = lshr i64 %249, 32
  %263 = add nuw i64 %262, %247
  %264 = lshr i64 %251, 32
  %265 = add nuw i64 %263, %264
  %266 = add nuw i64 %265, %256
  %267 = add nuw i64 %266, %261
  %268 = xor i64 %267, %259
  %269 = add i64 %268, %236
  %270 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %271 = getelementptr inbounds i8, ptr %270, i32 -48
  %272 = load i64, ptr %271, align 1
  %273 = getelementptr inbounds i8, ptr %270, i32 -40
  %274 = load i64, ptr %273, align 1
  %275 = add i64 %3, 5690594596133299313
  %276 = xor i64 %272, %275
  %277 = sub i64 -2833645246901970632, %3
  %278 = xor i64 %274, %277
  %279 = lshr i64 %276, 32
  %280 = lshr i64 %278, 32
  %281 = mul nuw i64 %280, %279
  %282 = and i64 %276, 4294967295
  %283 = mul nuw i64 %280, %282
  %284 = and i64 %278, 4294967295
  %285 = mul nuw i64 %284, %279
  %286 = mul nuw i64 %284, %282
  %287 = shl i64 %283, 32
  %288 = add i64 %287, %286
  %289 = icmp ult i64 %288, %286
  %290 = zext i1 %289 to i64
  %291 = add i64 %283, %285
  %292 = shl i64 %291, 32
  %293 = add i64 %292, %286
  %294 = icmp ult i64 %293, %288
  %295 = zext i1 %294 to i64
  %296 = lshr i64 %283, 32
  %297 = add nuw i64 %296, %281
  %298 = lshr i64 %285, 32
  %299 = add nuw i64 %297, %298
  %300 = add nuw i64 %299, %290
  %301 = add nuw i64 %300, %295
  %302 = xor i64 %301, %293
  %303 = add i64 %302, %235
  br label %304

304:                                              ; preds = %234, %163
  %305 = phi i64 [ %303, %234 ], [ 0, %163 ]
  %306 = phi i64 [ %269, %234 ], [ %161, %163 ]
  %307 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %308 = load i64, ptr %307, align 1
  %309 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %310 = load i64, ptr %309, align 1
  %311 = add i64 %3, 8711581037947681227
  %312 = xor i64 %308, %311
  %313 = sub i64 2410270004345854594, %3
  %314 = xor i64 %310, %313
  %315 = lshr i64 %312, 32
  %316 = lshr i64 %314, 32
  %317 = mul nuw i64 %316, %315
  %318 = and i64 %312, 4294967295
  %319 = mul nuw i64 %316, %318
  %320 = and i64 %314, 4294967295
  %321 = mul nuw i64 %320, %315
  %322 = mul nuw i64 %320, %318
  %323 = shl i64 %319, 32
  %324 = add i64 %323, %322
  %325 = icmp ult i64 %324, %322
  %326 = zext i1 %325 to i64
  %327 = add i64 %319, %321
  %328 = shl i64 %327, 32
  %329 = add i64 %328, %322
  %330 = icmp ult i64 %329, %324
  %331 = zext i1 %330 to i64
  %332 = lshr i64 %319, 32
  %333 = add nuw i64 %332, %317
  %334 = lshr i64 %321, 32
  %335 = add nuw i64 %333, %334
  %336 = add nuw i64 %335, %326
  %337 = add nuw i64 %336, %331
  %338 = xor i64 %337, %329
  %339 = add i64 %338, %306
  %340 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %341 = getelementptr inbounds i8, ptr %340, i32 -32
  %342 = load i64, ptr %341, align 1
  %343 = getelementptr inbounds i8, ptr %340, i32 -24
  %344 = load i64, ptr %343, align 1
  %345 = add i64 %3, -8204357891075471176
  %346 = xor i64 %342, %345
  %347 = sub i64 5487137525590930912, %3
  %348 = xor i64 %344, %347
  %349 = lshr i64 %346, 32
  %350 = lshr i64 %348, 32
  %351 = mul nuw i64 %350, %349
  %352 = and i64 %346, 4294967295
  %353 = mul nuw i64 %350, %352
  %354 = and i64 %348, 4294967295
  %355 = mul nuw i64 %354, %349
  %356 = mul nuw i64 %354, %352
  %357 = shl i64 %353, 32
  %358 = add i64 %357, %356
  %359 = icmp ult i64 %358, %356
  %360 = zext i1 %359 to i64
  %361 = add i64 %353, %355
  %362 = shl i64 %361, 32
  %363 = add i64 %362, %356
  %364 = icmp ult i64 %363, %358
  %365 = zext i1 %364 to i64
  %366 = lshr i64 %353, 32
  %367 = add nuw i64 %366, %351
  %368 = lshr i64 %355, 32
  %369 = add nuw i64 %367, %368
  %370 = add nuw i64 %369, %360
  %371 = add nuw i64 %370, %365
  %372 = xor i64 %371, %363
  %373 = add i64 %372, %305
  br label %374

374:                                              ; preds = %159, %304
  %375 = phi i64 [ %373, %304 ], [ 0, %159 ]
  %376 = phi i64 [ %339, %304 ], [ %161, %159 ]
  %377 = load i64, ptr %1, align 1
  %378 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %379 = load i64, ptr %378, align 1
  %380 = add i64 %3, -4734510112055689544
  %381 = xor i64 %377, %380
  %382 = sub i64 2066345149520216444, %3
  %383 = xor i64 %379, %382
  %384 = lshr i64 %381, 32
  %385 = lshr i64 %383, 32
  %386 = mul nuw i64 %385, %384
  %387 = and i64 %381, 4294967295
  %388 = mul nuw i64 %385, %387
  %389 = and i64 %383, 4294967295
  %390 = mul nuw i64 %389, %384
  %391 = mul nuw i64 %389, %387
  %392 = shl i64 %388, 32
  %393 = add i64 %392, %391
  %394 = icmp ult i64 %393, %391
  %395 = zext i1 %394 to i64
  %396 = add i64 %388, %390
  %397 = shl i64 %396, 32
  %398 = add i64 %397, %391
  %399 = icmp ult i64 %398, %393
  %400 = zext i1 %399 to i64
  %401 = lshr i64 %388, 32
  %402 = add nuw i64 %401, %386
  %403 = lshr i64 %390, 32
  %404 = add nuw i64 %402, %403
  %405 = add nuw i64 %404, %395
  %406 = add nuw i64 %405, %400
  %407 = xor i64 %406, %398
  %408 = add i64 %407, %376
  %409 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %410 = getelementptr inbounds i8, ptr %409, i32 -16
  %411 = load i64, ptr %410, align 1
  %412 = getelementptr inbounds i8, ptr %409, i32 -8
  %413 = load i64, ptr %412, align 1
  %414 = add i64 %3, -2623469361688619810
  %415 = xor i64 %411, %414
  %416 = sub i64 2262974939099578482, %3
  %417 = xor i64 %413, %416
  %418 = lshr i64 %415, 32
  %419 = lshr i64 %417, 32
  %420 = mul nuw i64 %419, %418
  %421 = and i64 %415, 4294967295
  %422 = mul nuw i64 %419, %421
  %423 = and i64 %417, 4294967295
  %424 = mul nuw i64 %423, %418
  %425 = mul nuw i64 %423, %421
  %426 = shl i64 %422, 32
  %427 = add i64 %426, %425
  %428 = icmp ult i64 %427, %425
  %429 = zext i1 %428 to i64
  %430 = add i64 %422, %424
  %431 = shl i64 %430, 32
  %432 = add i64 %431, %425
  %433 = icmp ult i64 %432, %427
  %434 = zext i1 %433 to i64
  %435 = lshr i64 %422, 32
  %436 = add nuw i64 %435, %420
  %437 = lshr i64 %424, 32
  %438 = add nuw i64 %436, %437
  %439 = add nuw i64 %438, %429
  %440 = add nuw i64 %439, %434
  %441 = xor i64 %440, %432
  %442 = add i64 %441, %375
  %443 = add i64 %442, %408
  %444 = mul i64 %408, -7046029288634856825
  %445 = mul i64 %442, -8796714831421723037
  %446 = sub i64 %160, %3
  %447 = mul i64 %446, -4417276706812531889
  %448 = add i64 %444, %447
  %449 = add i64 %448, %445
  %450 = lshr i64 %443, 37
  %451 = xor i64 %450, %443
  %452 = mul i64 %451, 1609587929392839161
  %453 = lshr i64 %452, 32
  %454 = xor i64 %453, %452
  store i64 %454, ptr %0, align 8, !alias.scope !67
  %455 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %456 = lshr i64 %449, 37
  %457 = xor i64 %456, %449
  %458 = mul i64 %457, 1609587929392839161
  %459 = lshr i64 %458, 32
  %460 = xor i64 %459, %458
  %461 = sub i64 0, %460
  store i64 %461, ptr %455, align 8, !alias.scope !67
  br label %466

462:                                              ; preds = %157
  %463 = icmp ult i32 %2, 241
  br i1 %463, label %464, label %465

464:                                              ; preds = %462
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @kSecret, i64 noundef %3)
  br label %466

465:                                              ; preds = %462
  tail call fastcc void @XXH3_hashLong_128b_withSeed(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, i64 noundef %3)
  br label %466

466:                                              ; preds = %156, %119, %77, %8, %465, %464, %374
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal fastcc void @XXH3_hashLong_128b_withSeed(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i32 noundef range(i32 241, 0) %2, i64 noundef %3) unnamed_addr #17 {
  %5 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #26
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %57, label %7

7:                                                ; preds = %4
  %8 = add i64 %3, -4734510112055689544
  store i64 %8, ptr %5, align 8
  %9 = getelementptr inbounds nuw i8, ptr %5, i32 8
  %10 = sub i64 2066345149520216444, %3
  store i64 %10, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %5, i32 16
  %12 = add i64 %3, -2623469361688619810
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %5, i32 24
  %14 = sub i64 2262974939099578482, %3
  store i64 %14, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %5, i32 32
  %16 = add i64 %3, 8711581037947681227
  store i64 %16, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %5, i32 40
  %18 = sub i64 2410270004345854594, %3
  store i64 %18, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %5, i32 48
  %20 = add i64 %3, -8204357891075471176
  store i64 %20, ptr %19, align 8
  %21 = getelementptr inbounds nuw i8, ptr %5, i32 56
  %22 = sub i64 5487137525590930912, %3
  store i64 %22, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %5, i32 64
  %24 = add i64 %3, -3818837453329782724
  store i64 %24, ptr %23, align 8
  %25 = getelementptr inbounds nuw i8, ptr %5, i32 72
  %26 = sub i64 -6688317018830679928, %3
  store i64 %26, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %5, i32 80
  %28 = add i64 %3, 5690594596133299313
  store i64 %28, ptr %27, align 8
  %29 = getelementptr inbounds nuw i8, ptr %5, i32 88
  %30 = sub i64 -2833645246901970632, %3
  store i64 %30, ptr %29, align 8
  %31 = getelementptr inbounds nuw i8, ptr %5, i32 96
  %32 = add i64 %3, 4554437623014685352
  store i64 %32, ptr %31, align 8
  %33 = getelementptr inbounds nuw i8, ptr %5, i32 104
  %34 = sub i64 2111919702937427193, %3
  store i64 %34, ptr %33, align 8
  %35 = getelementptr inbounds nuw i8, ptr %5, i32 112
  %36 = add i64 %3, 3556072174620004746
  store i64 %36, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %5, i32 120
  %38 = sub i64 7238261902898274248, %3
  store i64 %38, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %5, i32 128
  %40 = add i64 %3, -4329134394285701654
  store i64 %40, ptr %39, align 8
  %41 = getelementptr inbounds nuw i8, ptr %5, i32 136
  %42 = sub i64 -1485321483350670907, %3
  store i64 %42, ptr %41, align 8
  %43 = getelementptr inbounds nuw i8, ptr %5, i32 144
  %44 = add i64 %3, 5321830579834785047
  store i64 %44, ptr %43, align 8
  %45 = getelementptr inbounds nuw i8, ptr %5, i32 152
  %46 = sub i64 -7032137544937171245, %3
  store i64 %46, ptr %45, align 8
  %47 = getelementptr inbounds nuw i8, ptr %5, i32 160
  %48 = add i64 %3, -242834301215959509
  store i64 %48, ptr %47, align 8
  %49 = getelementptr inbounds nuw i8, ptr %5, i32 168
  %50 = sub i64 -3588858202114426737, %3
  store i64 %50, ptr %49, align 8
  %51 = getelementptr inbounds nuw i8, ptr %5, i32 176
  %52 = add i64 %3, 2883454493032893253
  store i64 %52, ptr %51, align 8
  %53 = getelementptr inbounds nuw i8, ptr %5, i32 184
  %54 = sub i64 9097354517224871855, %3
  store i64 %54, ptr %53, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %55 = lshr i32 %2, 10
  %56 = icmp ult i32 %2, 1024
  br i1 %56, label %199, label %58

57:                                               ; preds = %4
  tail call fastcc void @XXH3_hashLong_128b_defaultSecret(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2)
  br label %672

58:                                               ; preds = %7, %164
  %59 = phi i64 [ %196, %164 ], [ 2654435761, %7 ]
  %60 = phi i64 [ %192, %164 ], [ 2870177450012600261, %7 ]
  %61 = phi i64 [ %188, %164 ], [ 2246822519, %7 ]
  %62 = phi i64 [ %184, %164 ], [ -8796714831421723037, %7 ]
  %63 = phi i64 [ %180, %164 ], [ 1609587929392839161, %7 ]
  %64 = phi i64 [ %176, %164 ], [ -4417276706812531889, %7 ]
  %65 = phi i64 [ %172, %164 ], [ -7046029288634856825, %7 ]
  %66 = phi i64 [ %168, %164 ], [ 3266489917, %7 ]
  %67 = phi i32 [ %197, %164 ], [ 0, %7 ]
  %68 = shl i32 %67, 10
  %69 = getelementptr inbounds nuw i8, ptr %1, i32 %68
  br label %70

70:                                               ; preds = %70, %58
  %71 = phi i64 [ %59, %58 ], [ %161, %70 ]
  %72 = phi i64 [ %60, %58 ], [ %159, %70 ]
  %73 = phi i64 [ %61, %58 ], [ %141, %70 ]
  %74 = phi i64 [ %62, %58 ], [ %139, %70 ]
  %75 = phi i64 [ %63, %58 ], [ %121, %70 ]
  %76 = phi i64 [ %64, %58 ], [ %119, %70 ]
  %77 = phi i64 [ %65, %58 ], [ %101, %70 ]
  %78 = phi i64 [ %66, %58 ], [ %99, %70 ]
  %79 = phi i32 [ 0, %58 ], [ %162, %70 ]
  %80 = shl i32 %79, 6
  %81 = getelementptr inbounds nuw i8, ptr %69, i32 %80
  %82 = shl i32 %79, 3
  %83 = getelementptr inbounds nuw i8, ptr %5, i32 %82
  %84 = load i64, ptr %81, align 1, !noalias !70
  %85 = getelementptr inbounds nuw i8, ptr %81, i32 8
  %86 = load i64, ptr %85, align 1, !noalias !70
  %87 = load i64, ptr %83, align 8, !noalias !70
  %88 = getelementptr inbounds nuw i8, ptr %83, i32 8
  %89 = load i64, ptr %88, align 8, !noalias !70
  %90 = xor i64 %87, %84
  %91 = xor i64 %89, %86
  %92 = and i64 %90, 4294967295
  %93 = lshr i64 %90, 32
  %94 = mul nuw i64 %92, %93
  %95 = and i64 %91, 4294967295
  %96 = lshr i64 %91, 32
  %97 = mul nuw i64 %95, %96
  %98 = add i64 %86, %78
  %99 = add i64 %98, %94
  %100 = add i64 %84, %77
  %101 = add i64 %100, %97
  %102 = getelementptr inbounds nuw i8, ptr %81, i32 16
  %103 = load i64, ptr %102, align 1, !noalias !70
  %104 = getelementptr inbounds nuw i8, ptr %81, i32 24
  %105 = load i64, ptr %104, align 1, !noalias !70
  %106 = getelementptr inbounds nuw i8, ptr %83, i32 16
  %107 = load i64, ptr %106, align 8, !noalias !70
  %108 = getelementptr inbounds nuw i8, ptr %83, i32 24
  %109 = load i64, ptr %108, align 8, !noalias !70
  %110 = xor i64 %107, %103
  %111 = xor i64 %109, %105
  %112 = and i64 %110, 4294967295
  %113 = lshr i64 %110, 32
  %114 = mul nuw i64 %112, %113
  %115 = and i64 %111, 4294967295
  %116 = lshr i64 %111, 32
  %117 = mul nuw i64 %115, %116
  %118 = add i64 %105, %76
  %119 = add i64 %118, %114
  %120 = add i64 %103, %75
  %121 = add i64 %120, %117
  %122 = getelementptr inbounds nuw i8, ptr %81, i32 32
  %123 = load i64, ptr %122, align 1, !noalias !70
  %124 = getelementptr inbounds nuw i8, ptr %81, i32 40
  %125 = load i64, ptr %124, align 1, !noalias !70
  %126 = getelementptr inbounds nuw i8, ptr %83, i32 32
  %127 = load i64, ptr %126, align 8, !noalias !70
  %128 = getelementptr inbounds nuw i8, ptr %83, i32 40
  %129 = load i64, ptr %128, align 8, !noalias !70
  %130 = xor i64 %127, %123
  %131 = xor i64 %129, %125
  %132 = and i64 %130, 4294967295
  %133 = lshr i64 %130, 32
  %134 = mul nuw i64 %132, %133
  %135 = and i64 %131, 4294967295
  %136 = lshr i64 %131, 32
  %137 = mul nuw i64 %135, %136
  %138 = add i64 %125, %74
  %139 = add i64 %138, %134
  %140 = add i64 %123, %73
  %141 = add i64 %140, %137
  %142 = getelementptr inbounds nuw i8, ptr %81, i32 48
  %143 = load i64, ptr %142, align 1, !noalias !70
  %144 = getelementptr inbounds nuw i8, ptr %81, i32 56
  %145 = load i64, ptr %144, align 1, !noalias !70
  %146 = getelementptr inbounds nuw i8, ptr %83, i32 48
  %147 = load i64, ptr %146, align 8, !noalias !70
  %148 = getelementptr inbounds nuw i8, ptr %83, i32 56
  %149 = load i64, ptr %148, align 8, !noalias !70
  %150 = xor i64 %147, %143
  %151 = xor i64 %149, %145
  %152 = and i64 %150, 4294967295
  %153 = lshr i64 %150, 32
  %154 = mul nuw i64 %152, %153
  %155 = and i64 %151, 4294967295
  %156 = lshr i64 %151, 32
  %157 = mul nuw i64 %155, %156
  %158 = add i64 %145, %72
  %159 = add i64 %158, %154
  %160 = add i64 %143, %71
  %161 = add i64 %160, %157
  %162 = add nuw nsw i32 %79, 1
  %163 = icmp eq i32 %162, 16
  br i1 %163, label %164, label %70

164:                                              ; preds = %70
  %165 = lshr i64 %99, 47
  %166 = xor i64 %165, %40
  %167 = xor i64 %166, %99
  %168 = mul i64 %167, 2654435761
  %169 = lshr i64 %101, 47
  %170 = xor i64 %169, %42
  %171 = xor i64 %170, %101
  %172 = mul i64 %171, 2654435761
  %173 = lshr i64 %119, 47
  %174 = xor i64 %173, %44
  %175 = xor i64 %174, %119
  %176 = mul i64 %175, 2654435761
  %177 = lshr i64 %121, 47
  %178 = xor i64 %177, %46
  %179 = xor i64 %178, %121
  %180 = mul i64 %179, 2654435761
  %181 = lshr i64 %139, 47
  %182 = xor i64 %181, %48
  %183 = xor i64 %182, %139
  %184 = mul i64 %183, 2654435761
  %185 = lshr i64 %141, 47
  %186 = xor i64 %185, %50
  %187 = xor i64 %186, %141
  %188 = mul i64 %187, 2654435761
  %189 = lshr i64 %159, 47
  %190 = xor i64 %189, %52
  %191 = xor i64 %190, %159
  %192 = mul i64 %191, 2654435761
  %193 = lshr i64 %161, 47
  %194 = xor i64 %193, %54
  %195 = xor i64 %194, %161
  %196 = mul i64 %195, 2654435761
  %197 = add nuw nsw i32 %67, 1
  %198 = icmp eq i32 %197, %55
  br i1 %198, label %199, label %58

199:                                              ; preds = %164, %7
  %200 = phi i64 [ 2654435761, %7 ], [ %196, %164 ]
  %201 = phi i64 [ 2870177450012600261, %7 ], [ %192, %164 ]
  %202 = phi i64 [ 2246822519, %7 ], [ %188, %164 ]
  %203 = phi i64 [ -8796714831421723037, %7 ], [ %184, %164 ]
  %204 = phi i64 [ 1609587929392839161, %7 ], [ %180, %164 ]
  %205 = phi i64 [ -4417276706812531889, %7 ], [ %176, %164 ]
  %206 = phi i64 [ -7046029288634856825, %7 ], [ %172, %164 ]
  %207 = phi i64 [ 3266489917, %7 ], [ %168, %164 ]
  %208 = and i32 %2, -1024
  %209 = and i32 %2, 1023
  %210 = lshr i32 %209, 6
  %211 = getelementptr inbounds nuw i8, ptr %1, i32 %208
  %212 = icmp samesign ult i32 %209, 64
  br i1 %212, label %307, label %213

213:                                              ; preds = %199, %213
  %214 = phi i64 [ %304, %213 ], [ %200, %199 ]
  %215 = phi i64 [ %302, %213 ], [ %201, %199 ]
  %216 = phi i64 [ %284, %213 ], [ %202, %199 ]
  %217 = phi i64 [ %282, %213 ], [ %203, %199 ]
  %218 = phi i64 [ %264, %213 ], [ %204, %199 ]
  %219 = phi i64 [ %262, %213 ], [ %205, %199 ]
  %220 = phi i64 [ %244, %213 ], [ %206, %199 ]
  %221 = phi i64 [ %242, %213 ], [ %207, %199 ]
  %222 = phi i32 [ %305, %213 ], [ 0, %199 ]
  %223 = shl i32 %222, 6
  %224 = getelementptr inbounds nuw i8, ptr %211, i32 %223
  %225 = shl i32 %222, 3
  %226 = getelementptr inbounds nuw i8, ptr %5, i32 %225
  %227 = load i64, ptr %224, align 1, !noalias !70
  %228 = getelementptr inbounds nuw i8, ptr %224, i32 8
  %229 = load i64, ptr %228, align 1, !noalias !70
  %230 = load i64, ptr %226, align 8, !noalias !70
  %231 = getelementptr inbounds nuw i8, ptr %226, i32 8
  %232 = load i64, ptr %231, align 8, !noalias !70
  %233 = xor i64 %230, %227
  %234 = xor i64 %232, %229
  %235 = and i64 %233, 4294967295
  %236 = lshr i64 %233, 32
  %237 = mul nuw i64 %235, %236
  %238 = and i64 %234, 4294967295
  %239 = lshr i64 %234, 32
  %240 = mul nuw i64 %238, %239
  %241 = add i64 %229, %221
  %242 = add i64 %241, %237
  %243 = add i64 %227, %220
  %244 = add i64 %243, %240
  %245 = getelementptr inbounds nuw i8, ptr %224, i32 16
  %246 = load i64, ptr %245, align 1, !noalias !70
  %247 = getelementptr inbounds nuw i8, ptr %224, i32 24
  %248 = load i64, ptr %247, align 1, !noalias !70
  %249 = getelementptr inbounds nuw i8, ptr %226, i32 16
  %250 = load i64, ptr %249, align 8, !noalias !70
  %251 = getelementptr inbounds nuw i8, ptr %226, i32 24
  %252 = load i64, ptr %251, align 8, !noalias !70
  %253 = xor i64 %250, %246
  %254 = xor i64 %252, %248
  %255 = and i64 %253, 4294967295
  %256 = lshr i64 %253, 32
  %257 = mul nuw i64 %255, %256
  %258 = and i64 %254, 4294967295
  %259 = lshr i64 %254, 32
  %260 = mul nuw i64 %258, %259
  %261 = add i64 %248, %219
  %262 = add i64 %261, %257
  %263 = add i64 %246, %218
  %264 = add i64 %263, %260
  %265 = getelementptr inbounds nuw i8, ptr %224, i32 32
  %266 = load i64, ptr %265, align 1, !noalias !70
  %267 = getelementptr inbounds nuw i8, ptr %224, i32 40
  %268 = load i64, ptr %267, align 1, !noalias !70
  %269 = getelementptr inbounds nuw i8, ptr %226, i32 32
  %270 = load i64, ptr %269, align 8, !noalias !70
  %271 = getelementptr inbounds nuw i8, ptr %226, i32 40
  %272 = load i64, ptr %271, align 8, !noalias !70
  %273 = xor i64 %270, %266
  %274 = xor i64 %272, %268
  %275 = and i64 %273, 4294967295
  %276 = lshr i64 %273, 32
  %277 = mul nuw i64 %275, %276
  %278 = and i64 %274, 4294967295
  %279 = lshr i64 %274, 32
  %280 = mul nuw i64 %278, %279
  %281 = add i64 %268, %217
  %282 = add i64 %281, %277
  %283 = add i64 %266, %216
  %284 = add i64 %283, %280
  %285 = getelementptr inbounds nuw i8, ptr %224, i32 48
  %286 = load i64, ptr %285, align 1, !noalias !70
  %287 = getelementptr inbounds nuw i8, ptr %224, i32 56
  %288 = load i64, ptr %287, align 1, !noalias !70
  %289 = getelementptr inbounds nuw i8, ptr %226, i32 48
  %290 = load i64, ptr %289, align 8, !noalias !70
  %291 = getelementptr inbounds nuw i8, ptr %226, i32 56
  %292 = load i64, ptr %291, align 8, !noalias !70
  %293 = xor i64 %290, %286
  %294 = xor i64 %292, %288
  %295 = and i64 %293, 4294967295
  %296 = lshr i64 %293, 32
  %297 = mul nuw i64 %295, %296
  %298 = and i64 %294, 4294967295
  %299 = lshr i64 %294, 32
  %300 = mul nuw i64 %298, %299
  %301 = add i64 %288, %215
  %302 = add i64 %301, %297
  %303 = add i64 %286, %214
  %304 = add i64 %303, %300
  %305 = add nuw nsw i32 %222, 1
  %306 = icmp eq i32 %305, %210
  br i1 %306, label %307, label %213

307:                                              ; preds = %213, %199
  %308 = phi i64 [ %200, %199 ], [ %304, %213 ]
  %309 = phi i64 [ %201, %199 ], [ %302, %213 ]
  %310 = phi i64 [ %202, %199 ], [ %284, %213 ]
  %311 = phi i64 [ %203, %199 ], [ %282, %213 ]
  %312 = phi i64 [ %204, %199 ], [ %264, %213 ]
  %313 = phi i64 [ %205, %199 ], [ %262, %213 ]
  %314 = phi i64 [ %206, %199 ], [ %244, %213 ]
  %315 = phi i64 [ %207, %199 ], [ %242, %213 ]
  %316 = and i32 %2, 63
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %400, label %318

318:                                              ; preds = %307
  %319 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %320 = getelementptr inbounds i8, ptr %319, i32 -64
  %321 = getelementptr inbounds nuw i8, ptr %5, i32 121
  %322 = load i64, ptr %320, align 1, !noalias !70
  %323 = getelementptr inbounds i8, ptr %319, i32 -56
  %324 = load i64, ptr %323, align 1, !noalias !70
  %325 = load i64, ptr %321, align 1, !noalias !70
  %326 = getelementptr inbounds nuw i8, ptr %5, i32 129
  %327 = load i64, ptr %326, align 1, !noalias !70
  %328 = xor i64 %325, %322
  %329 = xor i64 %327, %324
  %330 = and i64 %328, 4294967295
  %331 = lshr i64 %328, 32
  %332 = mul nuw i64 %330, %331
  %333 = and i64 %329, 4294967295
  %334 = lshr i64 %329, 32
  %335 = mul nuw i64 %333, %334
  %336 = add i64 %324, %315
  %337 = add i64 %336, %332
  %338 = add i64 %322, %314
  %339 = add i64 %338, %335
  %340 = getelementptr inbounds i8, ptr %319, i32 -48
  %341 = load i64, ptr %340, align 1, !noalias !70
  %342 = getelementptr inbounds i8, ptr %319, i32 -40
  %343 = load i64, ptr %342, align 1, !noalias !70
  %344 = getelementptr inbounds nuw i8, ptr %5, i32 137
  %345 = load i64, ptr %344, align 1, !noalias !70
  %346 = getelementptr inbounds nuw i8, ptr %5, i32 145
  %347 = load i64, ptr %346, align 1, !noalias !70
  %348 = xor i64 %345, %341
  %349 = xor i64 %347, %343
  %350 = and i64 %348, 4294967295
  %351 = lshr i64 %348, 32
  %352 = mul nuw i64 %350, %351
  %353 = and i64 %349, 4294967295
  %354 = lshr i64 %349, 32
  %355 = mul nuw i64 %353, %354
  %356 = add i64 %343, %313
  %357 = add i64 %356, %352
  %358 = add i64 %341, %312
  %359 = add i64 %358, %355
  %360 = getelementptr inbounds i8, ptr %319, i32 -32
  %361 = load i64, ptr %360, align 1, !noalias !70
  %362 = getelementptr inbounds i8, ptr %319, i32 -24
  %363 = load i64, ptr %362, align 1, !noalias !70
  %364 = getelementptr inbounds nuw i8, ptr %5, i32 153
  %365 = load i64, ptr %364, align 1, !noalias !70
  %366 = getelementptr inbounds nuw i8, ptr %5, i32 161
  %367 = load i64, ptr %366, align 1, !noalias !70
  %368 = xor i64 %365, %361
  %369 = xor i64 %367, %363
  %370 = and i64 %368, 4294967295
  %371 = lshr i64 %368, 32
  %372 = mul nuw i64 %370, %371
  %373 = and i64 %369, 4294967295
  %374 = lshr i64 %369, 32
  %375 = mul nuw i64 %373, %374
  %376 = add i64 %363, %311
  %377 = add i64 %376, %372
  %378 = add i64 %361, %310
  %379 = add i64 %378, %375
  %380 = getelementptr inbounds i8, ptr %319, i32 -16
  %381 = load i64, ptr %380, align 1, !noalias !70
  %382 = getelementptr inbounds i8, ptr %319, i32 -8
  %383 = load i64, ptr %382, align 1, !noalias !70
  %384 = getelementptr inbounds nuw i8, ptr %5, i32 169
  %385 = load i64, ptr %384, align 1, !noalias !70
  %386 = getelementptr inbounds nuw i8, ptr %5, i32 177
  %387 = load i64, ptr %386, align 1, !noalias !70
  %388 = xor i64 %385, %381
  %389 = xor i64 %387, %383
  %390 = and i64 %388, 4294967295
  %391 = lshr i64 %388, 32
  %392 = mul nuw i64 %390, %391
  %393 = and i64 %389, 4294967295
  %394 = lshr i64 %389, 32
  %395 = mul nuw i64 %393, %394
  %396 = add i64 %383, %309
  %397 = add i64 %396, %392
  %398 = add i64 %381, %308
  %399 = add i64 %398, %395
  br label %400

400:                                              ; preds = %307, %318
  %401 = phi i64 [ %308, %307 ], [ %399, %318 ]
  %402 = phi i64 [ %309, %307 ], [ %397, %318 ]
  %403 = phi i64 [ %310, %307 ], [ %379, %318 ]
  %404 = phi i64 [ %311, %307 ], [ %377, %318 ]
  %405 = phi i64 [ %312, %307 ], [ %359, %318 ]
  %406 = phi i64 [ %313, %307 ], [ %357, %318 ]
  %407 = phi i64 [ %314, %307 ], [ %339, %318 ]
  %408 = phi i64 [ %315, %307 ], [ %337, %318 ]
  %409 = getelementptr inbounds nuw i8, ptr %5, i32 11
  %410 = zext i32 %2 to i64
  %411 = mul i64 %410, -7046029288634856825
  %412 = load i64, ptr %409, align 1, !noalias !70
  %413 = xor i64 %412, %408
  %414 = getelementptr inbounds nuw i8, ptr %5, i32 19
  %415 = load i64, ptr %414, align 1, !noalias !70
  %416 = xor i64 %415, %407
  %417 = lshr i64 %413, 32
  %418 = lshr i64 %416, 32
  %419 = mul nuw i64 %418, %417
  %420 = and i64 %413, 4294967295
  %421 = mul nuw i64 %418, %420
  %422 = and i64 %416, 4294967295
  %423 = mul nuw i64 %422, %417
  %424 = mul nuw i64 %422, %420
  %425 = shl i64 %421, 32
  %426 = add i64 %425, %424
  %427 = icmp ult i64 %426, %424
  %428 = zext i1 %427 to i64
  %429 = add i64 %421, %423
  %430 = shl i64 %429, 32
  %431 = add i64 %430, %424
  %432 = icmp ult i64 %431, %426
  %433 = zext i1 %432 to i64
  %434 = lshr i64 %421, 32
  %435 = add nuw i64 %434, %419
  %436 = lshr i64 %423, 32
  %437 = add nuw i64 %435, %436
  %438 = add nuw i64 %437, %428
  %439 = add nuw i64 %438, %433
  %440 = xor i64 %439, %431
  %441 = add i64 %440, %411
  %442 = getelementptr inbounds nuw i8, ptr %5, i32 27
  %443 = load i64, ptr %442, align 1, !noalias !70
  %444 = xor i64 %443, %406
  %445 = getelementptr inbounds nuw i8, ptr %5, i32 35
  %446 = load i64, ptr %445, align 1, !noalias !70
  %447 = xor i64 %446, %405
  %448 = lshr i64 %444, 32
  %449 = lshr i64 %447, 32
  %450 = mul nuw i64 %449, %448
  %451 = and i64 %444, 4294967295
  %452 = mul nuw i64 %449, %451
  %453 = and i64 %447, 4294967295
  %454 = mul nuw i64 %453, %448
  %455 = mul nuw i64 %453, %451
  %456 = shl i64 %452, 32
  %457 = add i64 %456, %455
  %458 = icmp ult i64 %457, %455
  %459 = zext i1 %458 to i64
  %460 = add i64 %452, %454
  %461 = shl i64 %460, 32
  %462 = add i64 %461, %455
  %463 = icmp ult i64 %462, %457
  %464 = zext i1 %463 to i64
  %465 = lshr i64 %452, 32
  %466 = add nuw i64 %465, %450
  %467 = lshr i64 %454, 32
  %468 = add nuw i64 %466, %467
  %469 = add nuw i64 %468, %459
  %470 = add nuw i64 %469, %464
  %471 = xor i64 %470, %462
  %472 = add i64 %441, %471
  %473 = getelementptr inbounds nuw i8, ptr %5, i32 43
  %474 = load i64, ptr %473, align 1, !noalias !70
  %475 = xor i64 %474, %404
  %476 = getelementptr inbounds nuw i8, ptr %5, i32 51
  %477 = load i64, ptr %476, align 1, !noalias !70
  %478 = xor i64 %477, %403
  %479 = lshr i64 %475, 32
  %480 = lshr i64 %478, 32
  %481 = mul nuw i64 %480, %479
  %482 = and i64 %475, 4294967295
  %483 = mul nuw i64 %480, %482
  %484 = and i64 %478, 4294967295
  %485 = mul nuw i64 %484, %479
  %486 = mul nuw i64 %484, %482
  %487 = shl i64 %483, 32
  %488 = add i64 %487, %486
  %489 = icmp ult i64 %488, %486
  %490 = zext i1 %489 to i64
  %491 = add i64 %483, %485
  %492 = shl i64 %491, 32
  %493 = add i64 %492, %486
  %494 = icmp ult i64 %493, %488
  %495 = zext i1 %494 to i64
  %496 = lshr i64 %483, 32
  %497 = add nuw i64 %496, %481
  %498 = lshr i64 %485, 32
  %499 = add nuw i64 %497, %498
  %500 = add nuw i64 %499, %490
  %501 = add nuw i64 %500, %495
  %502 = xor i64 %501, %493
  %503 = add i64 %472, %502
  %504 = getelementptr inbounds nuw i8, ptr %5, i32 59
  %505 = load i64, ptr %504, align 1, !noalias !70
  %506 = xor i64 %505, %402
  %507 = getelementptr inbounds nuw i8, ptr %5, i32 67
  %508 = load i64, ptr %507, align 1, !noalias !70
  %509 = xor i64 %508, %401
  %510 = lshr i64 %506, 32
  %511 = lshr i64 %509, 32
  %512 = mul nuw i64 %511, %510
  %513 = and i64 %506, 4294967295
  %514 = mul nuw i64 %511, %513
  %515 = and i64 %509, 4294967295
  %516 = mul nuw i64 %515, %510
  %517 = mul nuw i64 %515, %513
  %518 = shl i64 %514, 32
  %519 = add i64 %518, %517
  %520 = icmp ult i64 %519, %517
  %521 = zext i1 %520 to i64
  %522 = add i64 %514, %516
  %523 = shl i64 %522, 32
  %524 = add i64 %523, %517
  %525 = icmp ult i64 %524, %519
  %526 = zext i1 %525 to i64
  %527 = lshr i64 %514, 32
  %528 = add nuw i64 %527, %512
  %529 = lshr i64 %516, 32
  %530 = add nuw i64 %528, %529
  %531 = add nuw i64 %530, %521
  %532 = add nuw i64 %531, %526
  %533 = xor i64 %532, %524
  %534 = add i64 %503, %533
  %535 = lshr i64 %534, 37
  %536 = xor i64 %535, %534
  %537 = mul i64 %536, 1609587929392839161
  %538 = lshr i64 %537, 32
  %539 = xor i64 %538, %537
  %540 = getelementptr inbounds nuw i8, ptr %5, i32 117
  %541 = mul i64 %410, -4417276706812531889
  %542 = xor i64 %541, -1
  %543 = load i64, ptr %540, align 1, !noalias !70
  %544 = xor i64 %543, %408
  %545 = getelementptr inbounds nuw i8, ptr %5, i32 125
  %546 = load i64, ptr %545, align 1, !noalias !70
  %547 = xor i64 %546, %407
  %548 = lshr i64 %544, 32
  %549 = lshr i64 %547, 32
  %550 = mul nuw i64 %549, %548
  %551 = and i64 %544, 4294967295
  %552 = mul nuw i64 %549, %551
  %553 = and i64 %547, 4294967295
  %554 = mul nuw i64 %553, %548
  %555 = mul nuw i64 %553, %551
  %556 = shl i64 %552, 32
  %557 = add i64 %556, %555
  %558 = icmp ult i64 %557, %555
  %559 = zext i1 %558 to i64
  %560 = add i64 %552, %554
  %561 = shl i64 %560, 32
  %562 = add i64 %561, %555
  %563 = icmp ult i64 %562, %557
  %564 = zext i1 %563 to i64
  %565 = lshr i64 %552, 32
  %566 = add nuw i64 %565, %550
  %567 = lshr i64 %554, 32
  %568 = add nuw i64 %566, %567
  %569 = add nuw i64 %568, %559
  %570 = add nuw i64 %569, %564
  %571 = xor i64 %570, %562
  %572 = add i64 %571, %542
  %573 = getelementptr inbounds nuw i8, ptr %5, i32 133
  %574 = load i64, ptr %573, align 1, !noalias !70
  %575 = xor i64 %574, %406
  %576 = getelementptr inbounds nuw i8, ptr %5, i32 141
  %577 = load i64, ptr %576, align 1, !noalias !70
  %578 = xor i64 %577, %405
  %579 = lshr i64 %575, 32
  %580 = lshr i64 %578, 32
  %581 = mul nuw i64 %580, %579
  %582 = and i64 %575, 4294967295
  %583 = mul nuw i64 %580, %582
  %584 = and i64 %578, 4294967295
  %585 = mul nuw i64 %584, %579
  %586 = mul nuw i64 %584, %582
  %587 = shl i64 %583, 32
  %588 = add i64 %587, %586
  %589 = icmp ult i64 %588, %586
  %590 = zext i1 %589 to i64
  %591 = add i64 %583, %585
  %592 = shl i64 %591, 32
  %593 = add i64 %592, %586
  %594 = icmp ult i64 %593, %588
  %595 = zext i1 %594 to i64
  %596 = lshr i64 %583, 32
  %597 = add nuw i64 %596, %581
  %598 = lshr i64 %585, 32
  %599 = add nuw i64 %597, %598
  %600 = add nuw i64 %599, %590
  %601 = add nuw i64 %600, %595
  %602 = xor i64 %601, %593
  %603 = add i64 %572, %602
  %604 = getelementptr inbounds nuw i8, ptr %5, i32 149
  %605 = load i64, ptr %604, align 1, !noalias !70
  %606 = xor i64 %605, %404
  %607 = getelementptr inbounds nuw i8, ptr %5, i32 157
  %608 = load i64, ptr %607, align 1, !noalias !70
  %609 = xor i64 %608, %403
  %610 = lshr i64 %606, 32
  %611 = lshr i64 %609, 32
  %612 = mul nuw i64 %611, %610
  %613 = and i64 %606, 4294967295
  %614 = mul nuw i64 %611, %613
  %615 = and i64 %609, 4294967295
  %616 = mul nuw i64 %615, %610
  %617 = mul nuw i64 %615, %613
  %618 = shl i64 %614, 32
  %619 = add i64 %618, %617
  %620 = icmp ult i64 %619, %617
  %621 = zext i1 %620 to i64
  %622 = add i64 %614, %616
  %623 = shl i64 %622, 32
  %624 = add i64 %623, %617
  %625 = icmp ult i64 %624, %619
  %626 = zext i1 %625 to i64
  %627 = lshr i64 %614, 32
  %628 = add nuw i64 %627, %612
  %629 = lshr i64 %616, 32
  %630 = add nuw i64 %628, %629
  %631 = add nuw i64 %630, %621
  %632 = add nuw i64 %631, %626
  %633 = xor i64 %632, %624
  %634 = add i64 %603, %633
  %635 = getelementptr inbounds nuw i8, ptr %5, i32 165
  %636 = load i64, ptr %635, align 1, !noalias !70
  %637 = xor i64 %636, %402
  %638 = getelementptr inbounds nuw i8, ptr %5, i32 173
  %639 = load i64, ptr %638, align 1, !noalias !70
  %640 = xor i64 %639, %401
  %641 = lshr i64 %637, 32
  %642 = lshr i64 %640, 32
  %643 = mul nuw i64 %642, %641
  %644 = and i64 %637, 4294967295
  %645 = mul nuw i64 %642, %644
  %646 = and i64 %640, 4294967295
  %647 = mul nuw i64 %646, %641
  %648 = mul nuw i64 %646, %644
  %649 = shl i64 %645, 32
  %650 = add i64 %649, %648
  %651 = icmp ult i64 %650, %648
  %652 = zext i1 %651 to i64
  %653 = add i64 %645, %647
  %654 = shl i64 %653, 32
  %655 = add i64 %654, %648
  %656 = icmp ult i64 %655, %650
  %657 = zext i1 %656 to i64
  %658 = lshr i64 %645, 32
  %659 = add nuw i64 %658, %643
  %660 = lshr i64 %647, 32
  %661 = add nuw i64 %659, %660
  %662 = add nuw i64 %661, %652
  %663 = add nuw i64 %662, %657
  %664 = xor i64 %663, %655
  %665 = add i64 %634, %664
  %666 = lshr i64 %665, 37
  %667 = xor i64 %666, %665
  %668 = mul i64 %667, 1609587929392839161
  %669 = lshr i64 %668, 32
  %670 = xor i64 %669, %668
  store i64 %539, ptr %0, align 8, !alias.scope !70
  %671 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %670, ptr %671, align 8, !alias.scope !70
  br label %672

672:                                              ; preds = %400, %57
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH128(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %5 = icmp ult i32 %2, 17
  br i1 %5, label %6, label %157

6:                                                ; preds = %4
  %7 = icmp samesign ugt i32 %2, 8
  br i1 %7, label %8, label %75

8:                                                ; preds = %6
  %9 = load i64, ptr %1, align 1, !noalias !73
  %10 = add i64 %3, -4734510112055689544
  %11 = xor i64 %9, %10
  %12 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %13 = getelementptr inbounds i8, ptr %12, i32 -8
  %14 = load i64, ptr %13, align 1, !noalias !73
  %15 = sub i64 2066345149520216444, %3
  %16 = xor i64 %14, %15
  %17 = xor i64 %11, %16
  %18 = lshr i64 %17, 32
  %19 = mul nuw i64 %18, 2654435761
  %20 = and i64 %17, 4294967295
  %21 = mul nuw i64 %20, 2654435761
  %22 = mul nuw i64 %18, 2246822535
  %23 = mul nuw i64 %20, 2246822535
  %24 = mul i64 %20, -7046029288634856825
  %25 = icmp ult i64 %24, %23
  %26 = zext i1 %25 to i64
  %27 = add i64 %21, %22
  %28 = shl i64 %27, 32
  %29 = add i64 %28, %23
  %30 = icmp ult i64 %29, %24
  %31 = zext i1 %30 to i64
  %32 = lshr i64 %21, 32
  %33 = lshr i64 %22, 32
  %34 = mul i64 %16, -7046029288634856825
  %35 = add i64 %19, %34
  %36 = add i64 %35, %32
  %37 = add i64 %36, %33
  %38 = add i64 %37, %26
  %39 = add i64 %38, %31
  %40 = lshr i64 %39, 32
  %41 = lshr i64 %29, 32
  %42 = mul nuw i64 %41, 3266489917
  %43 = and i64 %23, 4294967295
  %44 = xor i64 %40, %43
  %45 = mul nuw i64 %44, 3266489917
  %46 = mul nuw nsw i64 %41, 668265295
  %47 = mul nuw nsw i64 %44, 668265295
  %48 = mul i64 %44, -4417276706812531889
  %49 = icmp ult i64 %48, %47
  %50 = zext i1 %49 to i64
  %51 = add nuw i64 %45, %46
  %52 = shl i64 %51, 32
  %53 = add i64 %52, %47
  %54 = icmp ult i64 %53, %48
  %55 = zext i1 %54 to i64
  %56 = lshr i64 %45, 32
  %57 = lshr i64 %46, 32
  %58 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %59 = mul i64 %39, -4417276706812531889
  %60 = add nuw i64 %57, %42
  %61 = add i64 %60, %59
  %62 = add i64 %61, %56
  %63 = add i64 %62, %50
  %64 = add i64 %63, %55
  %65 = lshr i64 %53, 37
  %66 = xor i64 %65, %53
  %67 = mul i64 %66, 1609587929392839161
  %68 = lshr i64 %67, 32
  %69 = xor i64 %68, %67
  store i64 %69, ptr %0, align 8, !alias.scope !76
  %70 = lshr i64 %64, 37
  %71 = xor i64 %70, %64
  %72 = mul i64 %71, 1609587929392839161
  %73 = lshr i64 %72, 32
  %74 = xor i64 %73, %72
  store i64 %74, ptr %58, align 8, !alias.scope !76
  br label %466

75:                                               ; preds = %6
  %76 = icmp samesign ugt i32 %2, 3
  br i1 %76, label %77, label %117

77:                                               ; preds = %75
  %78 = load i32, ptr %1, align 1, !noalias !73
  %79 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %80 = getelementptr inbounds i8, ptr %79, i32 -4
  %81 = load i32, ptr %80, align 1, !noalias !73
  %82 = zext i32 %78 to i64
  %83 = zext i32 %81 to i64
  %84 = shl nuw i64 %83, 32
  %85 = or disjoint i64 %84, %82
  %86 = tail call noundef i64 @llvm.bswap.i64(i64 %85)
  %87 = add i64 %3, -4734510112055689544
  %88 = xor i64 %85, %87
  %89 = sub i64 2066345149520216444, %3
  %90 = xor i64 %86, %89
  %91 = zext nneg i32 %2 to i64
  %92 = lshr i64 %88, 51
  %93 = xor i64 %92, %88
  %94 = mul i64 %93, 2654435761
  %95 = add i64 %94, %91
  %96 = lshr i64 %95, 47
  %97 = xor i64 %96, %95
  %98 = mul i64 %97, -4417276706812531889
  %99 = lshr i64 %90, 47
  %100 = xor i64 %99, %90
  %101 = mul i64 %100, -7046029288634856825
  %102 = sub i64 %101, %91
  %103 = lshr i64 %102, 43
  %104 = xor i64 %103, %102
  %105 = mul i64 %104, -8796714831421723037
  %106 = lshr i64 %98, 37
  %107 = xor i64 %106, %98
  %108 = mul i64 %107, 1609587929392839161
  %109 = lshr i64 %108, 32
  %110 = xor i64 %109, %108
  store i64 %110, ptr %0, align 8, !alias.scope !79
  %111 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %112 = lshr i64 %105, 37
  %113 = xor i64 %112, %105
  %114 = mul i64 %113, 1609587929392839161
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  store i64 %116, ptr %111, align 8, !alias.scope !79
  br label %466

117:                                              ; preds = %75
  %118 = icmp eq i32 %2, 0
  br i1 %118, label %156, label %119

119:                                              ; preds = %117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %120 = load i8, ptr %1, align 1, !noalias !85
  %121 = lshr i32 %2, 1
  %122 = getelementptr inbounds nuw i8, ptr %1, i32 %121
  %123 = load i8, ptr %122, align 1, !noalias !85
  %124 = getelementptr i8, ptr %1, i32 %2
  %125 = getelementptr i8, ptr %124, i32 -1
  %126 = load i8, ptr %125, align 1, !noalias !85
  %127 = zext i8 %120 to i32
  %128 = zext i8 %123 to i32
  %129 = shl nuw nsw i32 %128, 8
  %130 = or disjoint i32 %129, %127
  %131 = zext i8 %126 to i32
  %132 = shl nuw nsw i32 %131, 16
  %133 = or disjoint i32 %130, %132
  %134 = shl nuw nsw i32 %2, 24
  %135 = or disjoint i32 %133, %134
  %136 = tail call noundef i32 @llvm.bswap.i32(i32 %135)
  %137 = zext nneg i32 %135 to i64
  %138 = add i64 %3, 963444408
  %139 = xor i64 %138, %137
  %140 = zext i32 %136 to i64
  %141 = sub i64 3192628259, %3
  %142 = xor i64 %141, %140
  %143 = mul i64 %139, -7046029288634856825
  %144 = mul i64 %142, -4417276706812531889
  %145 = lshr i64 %143, 37
  %146 = xor i64 %145, %143
  %147 = mul i64 %146, 1609587929392839161
  %148 = lshr i64 %147, 32
  %149 = xor i64 %148, %147
  store i64 %149, ptr %0, align 8, !alias.scope !85
  %150 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %151 = lshr i64 %144, 37
  %152 = xor i64 %151, %144
  %153 = mul i64 %152, 1609587929392839161
  %154 = lshr i64 %153, 32
  %155 = xor i64 %154, %153
  store i64 %155, ptr %150, align 8, !alias.scope !85
  br label %466

156:                                              ; preds = %117
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !86
  br label %466

157:                                              ; preds = %4
  %158 = icmp ult i32 %2, 129
  br i1 %158, label %159, label %462

159:                                              ; preds = %157
  %160 = zext nneg i32 %2 to i64
  %161 = mul i64 %160, -7046029288634856825
  %162 = icmp samesign ugt i32 %2, 32
  br i1 %162, label %163, label %374

163:                                              ; preds = %159
  %164 = icmp samesign ugt i32 %2, 64
  br i1 %164, label %165, label %304

165:                                              ; preds = %163
  %166 = icmp samesign ugt i32 %2, 96
  br i1 %166, label %167, label %234

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %169 = load i64, ptr %168, align 1, !noalias !73
  %170 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %171 = load i64, ptr %170, align 1, !noalias !73
  %172 = add i64 %3, 4554437623014685352
  %173 = xor i64 %169, %172
  %174 = sub i64 2111919702937427193, %3
  %175 = xor i64 %171, %174
  %176 = lshr i64 %173, 32
  %177 = lshr i64 %175, 32
  %178 = mul nuw i64 %177, %176
  %179 = and i64 %173, 4294967295
  %180 = mul nuw i64 %177, %179
  %181 = and i64 %175, 4294967295
  %182 = mul nuw i64 %181, %176
  %183 = mul nuw i64 %181, %179
  %184 = shl i64 %180, 32
  %185 = add i64 %184, %183
  %186 = icmp ult i64 %185, %183
  %187 = zext i1 %186 to i64
  %188 = add i64 %180, %182
  %189 = shl i64 %188, 32
  %190 = add i64 %189, %183
  %191 = icmp ult i64 %190, %185
  %192 = zext i1 %191 to i64
  %193 = lshr i64 %180, 32
  %194 = add nuw i64 %193, %178
  %195 = lshr i64 %182, 32
  %196 = add nuw i64 %194, %195
  %197 = add nuw i64 %196, %187
  %198 = add nuw i64 %197, %192
  %199 = xor i64 %198, %190
  %200 = add i64 %199, %161
  %201 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %202 = getelementptr inbounds i8, ptr %201, i32 -64
  %203 = load i64, ptr %202, align 1, !noalias !73
  %204 = getelementptr inbounds i8, ptr %201, i32 -56
  %205 = load i64, ptr %204, align 1, !noalias !73
  %206 = add i64 %3, 3556072174620004746
  %207 = xor i64 %203, %206
  %208 = sub i64 7238261902898274248, %3
  %209 = xor i64 %205, %208
  %210 = lshr i64 %207, 32
  %211 = lshr i64 %209, 32
  %212 = mul nuw i64 %211, %210
  %213 = and i64 %207, 4294967295
  %214 = mul nuw i64 %211, %213
  %215 = and i64 %209, 4294967295
  %216 = mul nuw i64 %215, %210
  %217 = mul nuw i64 %215, %213
  %218 = shl i64 %214, 32
  %219 = add i64 %218, %217
  %220 = icmp ult i64 %219, %217
  %221 = zext i1 %220 to i64
  %222 = add i64 %214, %216
  %223 = shl i64 %222, 32
  %224 = add i64 %223, %217
  %225 = icmp ult i64 %224, %219
  %226 = zext i1 %225 to i64
  %227 = lshr i64 %214, 32
  %228 = add nuw i64 %227, %212
  %229 = lshr i64 %216, 32
  %230 = add nuw i64 %228, %229
  %231 = add nuw i64 %230, %221
  %232 = add nuw i64 %231, %226
  %233 = xor i64 %232, %224
  br label %234

234:                                              ; preds = %167, %165
  %235 = phi i64 [ %233, %167 ], [ 0, %165 ]
  %236 = phi i64 [ %200, %167 ], [ %161, %165 ]
  %237 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %238 = load i64, ptr %237, align 1, !noalias !73
  %239 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %240 = load i64, ptr %239, align 1, !noalias !73
  %241 = add i64 %3, -3818837453329782724
  %242 = xor i64 %238, %241
  %243 = sub i64 -6688317018830679928, %3
  %244 = xor i64 %240, %243
  %245 = lshr i64 %242, 32
  %246 = lshr i64 %244, 32
  %247 = mul nuw i64 %246, %245
  %248 = and i64 %242, 4294967295
  %249 = mul nuw i64 %246, %248
  %250 = and i64 %244, 4294967295
  %251 = mul nuw i64 %250, %245
  %252 = mul nuw i64 %250, %248
  %253 = shl i64 %249, 32
  %254 = add i64 %253, %252
  %255 = icmp ult i64 %254, %252
  %256 = zext i1 %255 to i64
  %257 = add i64 %249, %251
  %258 = shl i64 %257, 32
  %259 = add i64 %258, %252
  %260 = icmp ult i64 %259, %254
  %261 = zext i1 %260 to i64
  %262 = lshr i64 %249, 32
  %263 = add nuw i64 %262, %247
  %264 = lshr i64 %251, 32
  %265 = add nuw i64 %263, %264
  %266 = add nuw i64 %265, %256
  %267 = add nuw i64 %266, %261
  %268 = xor i64 %267, %259
  %269 = add i64 %268, %236
  %270 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %271 = getelementptr inbounds i8, ptr %270, i32 -48
  %272 = load i64, ptr %271, align 1, !noalias !73
  %273 = getelementptr inbounds i8, ptr %270, i32 -40
  %274 = load i64, ptr %273, align 1, !noalias !73
  %275 = add i64 %3, 5690594596133299313
  %276 = xor i64 %272, %275
  %277 = sub i64 -2833645246901970632, %3
  %278 = xor i64 %274, %277
  %279 = lshr i64 %276, 32
  %280 = lshr i64 %278, 32
  %281 = mul nuw i64 %280, %279
  %282 = and i64 %276, 4294967295
  %283 = mul nuw i64 %280, %282
  %284 = and i64 %278, 4294967295
  %285 = mul nuw i64 %284, %279
  %286 = mul nuw i64 %284, %282
  %287 = shl i64 %283, 32
  %288 = add i64 %287, %286
  %289 = icmp ult i64 %288, %286
  %290 = zext i1 %289 to i64
  %291 = add i64 %283, %285
  %292 = shl i64 %291, 32
  %293 = add i64 %292, %286
  %294 = icmp ult i64 %293, %288
  %295 = zext i1 %294 to i64
  %296 = lshr i64 %283, 32
  %297 = add nuw i64 %296, %281
  %298 = lshr i64 %285, 32
  %299 = add nuw i64 %297, %298
  %300 = add nuw i64 %299, %290
  %301 = add nuw i64 %300, %295
  %302 = xor i64 %301, %293
  %303 = add i64 %302, %235
  br label %304

304:                                              ; preds = %234, %163
  %305 = phi i64 [ %303, %234 ], [ 0, %163 ]
  %306 = phi i64 [ %269, %234 ], [ %161, %163 ]
  %307 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %308 = load i64, ptr %307, align 1, !noalias !73
  %309 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %310 = load i64, ptr %309, align 1, !noalias !73
  %311 = add i64 %3, 8711581037947681227
  %312 = xor i64 %308, %311
  %313 = sub i64 2410270004345854594, %3
  %314 = xor i64 %310, %313
  %315 = lshr i64 %312, 32
  %316 = lshr i64 %314, 32
  %317 = mul nuw i64 %316, %315
  %318 = and i64 %312, 4294967295
  %319 = mul nuw i64 %316, %318
  %320 = and i64 %314, 4294967295
  %321 = mul nuw i64 %320, %315
  %322 = mul nuw i64 %320, %318
  %323 = shl i64 %319, 32
  %324 = add i64 %323, %322
  %325 = icmp ult i64 %324, %322
  %326 = zext i1 %325 to i64
  %327 = add i64 %319, %321
  %328 = shl i64 %327, 32
  %329 = add i64 %328, %322
  %330 = icmp ult i64 %329, %324
  %331 = zext i1 %330 to i64
  %332 = lshr i64 %319, 32
  %333 = add nuw i64 %332, %317
  %334 = lshr i64 %321, 32
  %335 = add nuw i64 %333, %334
  %336 = add nuw i64 %335, %326
  %337 = add nuw i64 %336, %331
  %338 = xor i64 %337, %329
  %339 = add i64 %338, %306
  %340 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %341 = getelementptr inbounds i8, ptr %340, i32 -32
  %342 = load i64, ptr %341, align 1, !noalias !73
  %343 = getelementptr inbounds i8, ptr %340, i32 -24
  %344 = load i64, ptr %343, align 1, !noalias !73
  %345 = add i64 %3, -8204357891075471176
  %346 = xor i64 %342, %345
  %347 = sub i64 5487137525590930912, %3
  %348 = xor i64 %344, %347
  %349 = lshr i64 %346, 32
  %350 = lshr i64 %348, 32
  %351 = mul nuw i64 %350, %349
  %352 = and i64 %346, 4294967295
  %353 = mul nuw i64 %350, %352
  %354 = and i64 %348, 4294967295
  %355 = mul nuw i64 %354, %349
  %356 = mul nuw i64 %354, %352
  %357 = shl i64 %353, 32
  %358 = add i64 %357, %356
  %359 = icmp ult i64 %358, %356
  %360 = zext i1 %359 to i64
  %361 = add i64 %353, %355
  %362 = shl i64 %361, 32
  %363 = add i64 %362, %356
  %364 = icmp ult i64 %363, %358
  %365 = zext i1 %364 to i64
  %366 = lshr i64 %353, 32
  %367 = add nuw i64 %366, %351
  %368 = lshr i64 %355, 32
  %369 = add nuw i64 %367, %368
  %370 = add nuw i64 %369, %360
  %371 = add nuw i64 %370, %365
  %372 = xor i64 %371, %363
  %373 = add i64 %372, %305
  br label %374

374:                                              ; preds = %304, %159
  %375 = phi i64 [ %373, %304 ], [ 0, %159 ]
  %376 = phi i64 [ %339, %304 ], [ %161, %159 ]
  %377 = load i64, ptr %1, align 1, !noalias !73
  %378 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %379 = load i64, ptr %378, align 1, !noalias !73
  %380 = add i64 %3, -4734510112055689544
  %381 = xor i64 %377, %380
  %382 = sub i64 2066345149520216444, %3
  %383 = xor i64 %379, %382
  %384 = lshr i64 %381, 32
  %385 = lshr i64 %383, 32
  %386 = mul nuw i64 %385, %384
  %387 = and i64 %381, 4294967295
  %388 = mul nuw i64 %385, %387
  %389 = and i64 %383, 4294967295
  %390 = mul nuw i64 %389, %384
  %391 = mul nuw i64 %389, %387
  %392 = shl i64 %388, 32
  %393 = add i64 %392, %391
  %394 = icmp ult i64 %393, %391
  %395 = zext i1 %394 to i64
  %396 = add i64 %388, %390
  %397 = shl i64 %396, 32
  %398 = add i64 %397, %391
  %399 = icmp ult i64 %398, %393
  %400 = zext i1 %399 to i64
  %401 = lshr i64 %388, 32
  %402 = add nuw i64 %401, %386
  %403 = lshr i64 %390, 32
  %404 = add nuw i64 %402, %403
  %405 = add nuw i64 %404, %395
  %406 = add nuw i64 %405, %400
  %407 = xor i64 %406, %398
  %408 = add i64 %407, %376
  %409 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %410 = getelementptr inbounds i8, ptr %409, i32 -16
  %411 = load i64, ptr %410, align 1, !noalias !73
  %412 = getelementptr inbounds i8, ptr %409, i32 -8
  %413 = load i64, ptr %412, align 1, !noalias !73
  %414 = add i64 %3, -2623469361688619810
  %415 = xor i64 %411, %414
  %416 = sub i64 2262974939099578482, %3
  %417 = xor i64 %413, %416
  %418 = lshr i64 %415, 32
  %419 = lshr i64 %417, 32
  %420 = mul nuw i64 %419, %418
  %421 = and i64 %415, 4294967295
  %422 = mul nuw i64 %419, %421
  %423 = and i64 %417, 4294967295
  %424 = mul nuw i64 %423, %418
  %425 = mul nuw i64 %423, %421
  %426 = shl i64 %422, 32
  %427 = add i64 %426, %425
  %428 = icmp ult i64 %427, %425
  %429 = zext i1 %428 to i64
  %430 = add i64 %422, %424
  %431 = shl i64 %430, 32
  %432 = add i64 %431, %425
  %433 = icmp ult i64 %432, %427
  %434 = zext i1 %433 to i64
  %435 = lshr i64 %422, 32
  %436 = add nuw i64 %435, %420
  %437 = lshr i64 %424, 32
  %438 = add nuw i64 %436, %437
  %439 = add nuw i64 %438, %429
  %440 = add nuw i64 %439, %434
  %441 = xor i64 %440, %432
  %442 = add i64 %441, %375
  %443 = add i64 %442, %408
  %444 = mul i64 %408, -7046029288634856825
  %445 = mul i64 %442, -8796714831421723037
  %446 = sub i64 %160, %3
  %447 = mul i64 %446, -4417276706812531889
  %448 = add i64 %444, %447
  %449 = add i64 %448, %445
  %450 = lshr i64 %443, 37
  %451 = xor i64 %450, %443
  %452 = mul i64 %451, 1609587929392839161
  %453 = lshr i64 %452, 32
  %454 = xor i64 %453, %452
  store i64 %454, ptr %0, align 8, !alias.scope !89
  %455 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %456 = lshr i64 %449, 37
  %457 = xor i64 %456, %449
  %458 = mul i64 %457, 1609587929392839161
  %459 = lshr i64 %458, 32
  %460 = xor i64 %459, %458
  %461 = sub i64 0, %460
  store i64 %461, ptr %455, align 8, !alias.scope !89
  br label %466

462:                                              ; preds = %157
  %463 = icmp ult i32 %2, 241
  br i1 %463, label %464, label %465

464:                                              ; preds = %462
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef nonnull @kSecret, i64 noundef %3)
  br label %466

465:                                              ; preds = %462
  tail call fastcc void @XXH3_hashLong_128b_withSeed(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef readonly %1, i32 noundef %2, i64 noundef %3)
  br label %466

466:                                              ; preds = %8, %77, %119, %156, %374, %464, %465
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i32 64
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i32 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 -7046029288634856825, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i64 -4417276706812531889, ptr %6, align 16
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 1609587929392839161, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store i64 -8796714831421723037, ptr %8, align 32
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 40
  store i64 2246822519, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store i64 2870177450012600261, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 56
  store i64 2654435761, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 560
  store ptr @kSecret, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 524
  store i32 128, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 516
  store i32 16, ptr %14, align 4
  br label %15

15:                                               ; preds = %1, %3
  %16 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 64
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i32 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 560
  store ptr %1, ptr %14, align 16
  %15 = add i32 %2, -64
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 524
  store i32 %15, ptr %16, align 4
  %17 = lshr i32 %15, 3
  %18 = getelementptr inbounds nuw i8, ptr %0, i32 516
  store i32 %17, ptr %18, align 4
  %19 = icmp eq ptr %1, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = icmp ult i32 %2, 136
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %20, %5, %3
  %24 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %22, %20 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 64
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 256
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i32 320, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 544
  store i64 %1, ptr %14, align 32
  %15 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 524
  store i32 128, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i32 516
  store i32 16, ptr %17, align 4
  %18 = add i64 %1, -4734510112055689544
  store i64 %18, ptr %5, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i32 72
  %20 = sub i64 2066345149520216444, %1
  store i64 %20, ptr %19, align 1
  %21 = getelementptr inbounds nuw i8, ptr %0, i32 80
  %22 = add i64 %1, -2623469361688619810
  store i64 %22, ptr %21, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i32 88
  %24 = sub i64 2262974939099578482, %1
  store i64 %24, ptr %23, align 1
  %25 = getelementptr inbounds nuw i8, ptr %0, i32 96
  %26 = add i64 %1, 8711581037947681227
  store i64 %26, ptr %25, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 104
  %28 = sub i64 2410270004345854594, %1
  store i64 %28, ptr %27, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i32 112
  %30 = add i64 %1, -8204357891075471176
  store i64 %30, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i32 120
  %32 = sub i64 5487137525590930912, %1
  store i64 %32, ptr %31, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i32 128
  %34 = add i64 %1, -3818837453329782724
  store i64 %34, ptr %33, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i32 136
  %36 = sub i64 -6688317018830679928, %1
  store i64 %36, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i32 144
  %38 = add i64 %1, 5690594596133299313
  store i64 %38, ptr %37, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i32 152
  %40 = sub i64 -2833645246901970632, %1
  store i64 %40, ptr %39, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i32 160
  %42 = add i64 %1, 4554437623014685352
  store i64 %42, ptr %41, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i32 168
  %44 = sub i64 2111919702937427193, %1
  store i64 %44, ptr %43, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i32 176
  %46 = add i64 %1, 3556072174620004746
  store i64 %46, ptr %45, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i32 184
  %48 = sub i64 7238261902898274248, %1
  store i64 %48, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i32 192
  %50 = add i64 %1, -4329134394285701654
  store i64 %50, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %0, i32 200
  %52 = sub i64 -1485321483350670907, %1
  store i64 %52, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i32 208
  %54 = add i64 %1, 5321830579834785047
  store i64 %54, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %0, i32 216
  %56 = sub i64 -7032137544937171245, %1
  store i64 %56, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %0, i32 224
  %58 = add i64 %1, -242834301215959509
  store i64 %58, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i32 232
  %60 = sub i64 -3588858202114426737, %1
  store i64 %60, ptr %59, align 1
  %61 = getelementptr inbounds nuw i8, ptr %0, i32 240
  %62 = add i64 %1, 2883454493032893253
  store i64 %62, ptr %61, align 1
  %63 = getelementptr inbounds nuw i8, ptr %0, i32 248
  %64 = sub i64 9097354517224871855, %1
  store i64 %64, ptr %63, align 1
  store ptr %5, ptr %15, align 16
  br label %65

65:                                               ; preds = %2, %4
  %66 = phi i32 [ 0, %4 ], [ 1, %2 ]
  ret i32 %66
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local range(i32 0, 2) i32 @XXH3_128bits_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #14 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %875, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 536
  %9 = load i64, ptr %8, align 8
  %10 = add i64 %9, %7
  store i64 %10, ptr %8, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 512
  %12 = load i32, ptr %11, align 64
  %13 = add i32 %12, %2
  %14 = icmp ult i32 %13, 257
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 256
  %17 = getelementptr inbounds nuw i8, ptr %16, i32 %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %17, ptr nonnull readonly align 1 %1, i32 %2, i1 false)
  %18 = load i32, ptr %11, align 64
  %19 = add i32 %18, %2
  br label %873

20:                                               ; preds = %5
  %21 = icmp eq i32 %12, 0
  br i1 %21, label %435, label %22

22:                                               ; preds = %20
  %23 = sub i32 256, %12
  %24 = getelementptr inbounds nuw i8, ptr %0, i32 256
  %25 = getelementptr inbounds nuw i8, ptr %24, i32 %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %25, ptr nonnull readonly align 1 %1, i32 %23, i1 false)
  %26 = getelementptr inbounds nuw i8, ptr %1, i32 %23
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 520
  %28 = getelementptr inbounds nuw i8, ptr %0, i32 516
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr inbounds nuw i8, ptr %0, i32 524
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %27, align 4
  %35 = sub i32 %29, %34
  %36 = icmp ugt i32 %35, 4
  %37 = shl i32 %34, 3
  %38 = getelementptr inbounds nuw i8, ptr %31, i32 %37
  br i1 %36, label %320, label %39

39:                                               ; preds = %22
  %40 = icmp eq i32 %29, %34
  %41 = load i64, ptr %0, align 8
  %42 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i32 48
  br i1 %40, label %53, label %57

53:                                               ; preds = %39
  %54 = load i64, ptr %52, align 8
  %55 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %56 = load i64, ptr %55, align 8
  br label %155

57:                                               ; preds = %39
  %58 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %59 = load i64, ptr %52, align 8
  %60 = load i64, ptr %58, align 8
  br label %61

61:                                               ; preds = %57, %61
  %62 = phi i64 [ %152, %61 ], [ %60, %57 ]
  %63 = phi i64 [ %151, %61 ], [ %59, %57 ]
  %64 = phi i64 [ %132, %61 ], [ %51, %57 ]
  %65 = phi i64 [ %131, %61 ], [ %49, %57 ]
  %66 = phi i64 [ %112, %61 ], [ %47, %57 ]
  %67 = phi i64 [ %111, %61 ], [ %45, %57 ]
  %68 = phi i64 [ %92, %61 ], [ %43, %57 ]
  %69 = phi i64 [ %91, %61 ], [ %41, %57 ]
  %70 = phi i32 [ %153, %61 ], [ 0, %57 ]
  %71 = shl i32 %70, 6
  %72 = getelementptr inbounds nuw i8, ptr %24, i32 %71
  %73 = shl i32 %70, 3
  %74 = getelementptr inbounds nuw i8, ptr %38, i32 %73
  %75 = load i64, ptr %72, align 1
  %76 = getelementptr inbounds nuw i8, ptr %72, i32 8
  %77 = load i64, ptr %76, align 1
  %78 = load i64, ptr %74, align 1
  %79 = getelementptr inbounds nuw i8, ptr %74, i32 8
  %80 = load i64, ptr %79, align 1
  %81 = xor i64 %78, %75
  %82 = xor i64 %80, %77
  %83 = and i64 %81, 4294967295
  %84 = lshr i64 %81, 32
  %85 = mul nuw i64 %83, %84
  %86 = add i64 %85, %69
  %87 = and i64 %82, 4294967295
  %88 = lshr i64 %82, 32
  %89 = mul nuw i64 %87, %88
  %90 = add i64 %68, %89
  %91 = add i64 %86, %77
  store i64 %91, ptr %0, align 8
  %92 = add i64 %90, %75
  store i64 %92, ptr %42, align 8
  %93 = getelementptr inbounds nuw i8, ptr %72, i32 16
  %94 = load i64, ptr %93, align 1
  %95 = getelementptr inbounds nuw i8, ptr %72, i32 24
  %96 = load i64, ptr %95, align 1
  %97 = getelementptr inbounds nuw i8, ptr %74, i32 16
  %98 = load i64, ptr %97, align 1
  %99 = getelementptr inbounds nuw i8, ptr %74, i32 24
  %100 = load i64, ptr %99, align 1
  %101 = xor i64 %98, %94
  %102 = xor i64 %100, %96
  %103 = and i64 %101, 4294967295
  %104 = lshr i64 %101, 32
  %105 = mul nuw i64 %103, %104
  %106 = add i64 %105, %67
  %107 = and i64 %102, 4294967295
  %108 = lshr i64 %102, 32
  %109 = mul nuw i64 %107, %108
  %110 = add i64 %66, %109
  %111 = add i64 %106, %96
  store i64 %111, ptr %44, align 8
  %112 = add i64 %110, %94
  store i64 %112, ptr %46, align 8
  %113 = getelementptr inbounds nuw i8, ptr %72, i32 32
  %114 = load i64, ptr %113, align 1
  %115 = getelementptr inbounds nuw i8, ptr %72, i32 40
  %116 = load i64, ptr %115, align 1
  %117 = getelementptr inbounds nuw i8, ptr %74, i32 32
  %118 = load i64, ptr %117, align 1
  %119 = getelementptr inbounds nuw i8, ptr %74, i32 40
  %120 = load i64, ptr %119, align 1
  %121 = xor i64 %118, %114
  %122 = xor i64 %120, %116
  %123 = and i64 %121, 4294967295
  %124 = lshr i64 %121, 32
  %125 = mul nuw i64 %123, %124
  %126 = add i64 %125, %65
  %127 = and i64 %122, 4294967295
  %128 = lshr i64 %122, 32
  %129 = mul nuw i64 %127, %128
  %130 = add i64 %64, %129
  %131 = add i64 %126, %116
  store i64 %131, ptr %48, align 8
  %132 = add i64 %130, %114
  store i64 %132, ptr %50, align 8
  %133 = getelementptr inbounds nuw i8, ptr %72, i32 48
  %134 = load i64, ptr %133, align 1
  %135 = getelementptr inbounds nuw i8, ptr %72, i32 56
  %136 = load i64, ptr %135, align 1
  %137 = getelementptr inbounds nuw i8, ptr %74, i32 48
  %138 = load i64, ptr %137, align 1
  %139 = getelementptr inbounds nuw i8, ptr %74, i32 56
  %140 = load i64, ptr %139, align 1
  %141 = xor i64 %138, %134
  %142 = xor i64 %140, %136
  %143 = and i64 %141, 4294967295
  %144 = lshr i64 %141, 32
  %145 = mul nuw i64 %143, %144
  %146 = add i64 %145, %63
  %147 = and i64 %142, 4294967295
  %148 = lshr i64 %142, 32
  %149 = mul nuw i64 %147, %148
  %150 = add i64 %62, %149
  %151 = add i64 %146, %136
  store i64 %151, ptr %52, align 8
  %152 = add i64 %150, %134
  store i64 %152, ptr %58, align 8
  %153 = add nuw i32 %70, 1
  %154 = icmp eq i32 %153, %35
  br i1 %154, label %155, label %61

155:                                              ; preds = %61, %53
  %156 = phi i64 [ %56, %53 ], [ %152, %61 ]
  %157 = phi i64 [ %54, %53 ], [ %151, %61 ]
  %158 = phi i64 [ %51, %53 ], [ %132, %61 ]
  %159 = phi i64 [ %49, %53 ], [ %131, %61 ]
  %160 = phi i64 [ %47, %53 ], [ %112, %61 ]
  %161 = phi i64 [ %45, %53 ], [ %111, %61 ]
  %162 = phi i64 [ %43, %53 ], [ %92, %61 ]
  %163 = phi i64 [ %41, %53 ], [ %91, %61 ]
  %164 = getelementptr inbounds nuw i8, ptr %31, i32 %33
  %165 = load i64, ptr %164, align 1
  %166 = lshr i64 %163, 47
  %167 = xor i64 %165, %166
  %168 = xor i64 %167, %163
  %169 = mul i64 %168, 2654435761
  store i64 %169, ptr %0, align 8
  %170 = getelementptr inbounds nuw i8, ptr %164, i32 8
  %171 = load i64, ptr %170, align 1
  %172 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %173 = lshr i64 %162, 47
  %174 = xor i64 %171, %173
  %175 = xor i64 %174, %162
  %176 = mul i64 %175, 2654435761
  store i64 %176, ptr %172, align 8
  %177 = getelementptr inbounds nuw i8, ptr %164, i32 16
  %178 = load i64, ptr %177, align 1
  %179 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %180 = lshr i64 %161, 47
  %181 = xor i64 %178, %180
  %182 = xor i64 %181, %161
  %183 = mul i64 %182, 2654435761
  store i64 %183, ptr %179, align 8
  %184 = getelementptr inbounds nuw i8, ptr %164, i32 24
  %185 = load i64, ptr %184, align 1
  %186 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %187 = lshr i64 %160, 47
  %188 = xor i64 %185, %187
  %189 = xor i64 %188, %160
  %190 = mul i64 %189, 2654435761
  store i64 %190, ptr %186, align 8
  %191 = getelementptr inbounds nuw i8, ptr %164, i32 32
  %192 = load i64, ptr %191, align 1
  %193 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %194 = lshr i64 %159, 47
  %195 = xor i64 %192, %194
  %196 = xor i64 %195, %159
  %197 = mul i64 %196, 2654435761
  store i64 %197, ptr %193, align 8
  %198 = getelementptr inbounds nuw i8, ptr %164, i32 40
  %199 = load i64, ptr %198, align 1
  %200 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %201 = lshr i64 %158, 47
  %202 = xor i64 %199, %201
  %203 = xor i64 %202, %158
  %204 = mul i64 %203, 2654435761
  store i64 %204, ptr %200, align 8
  %205 = getelementptr inbounds nuw i8, ptr %164, i32 48
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %208 = lshr i64 %157, 47
  %209 = xor i64 %206, %208
  %210 = xor i64 %209, %157
  %211 = mul i64 %210, 2654435761
  store i64 %211, ptr %207, align 8
  %212 = getelementptr inbounds nuw i8, ptr %164, i32 56
  %213 = load i64, ptr %212, align 1
  %214 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %215 = lshr i64 %156, 47
  %216 = xor i64 %213, %215
  %217 = xor i64 %216, %156
  %218 = mul i64 %217, 2654435761
  store i64 %218, ptr %214, align 8
  %219 = shl nuw nsw i32 %35, 6
  %220 = getelementptr inbounds nuw i8, ptr %24, i32 %219
  %221 = sub nsw i32 4, %35
  %222 = icmp eq i32 %35, 4
  br i1 %222, label %433, label %223

223:                                              ; preds = %155
  %224 = tail call i32 @llvm.umax.i32(i32 %221, i32 1)
  %225 = load i64, ptr %214, align 8
  br label %226

226:                                              ; preds = %223, %226
  %227 = phi i64 [ %317, %226 ], [ %225, %223 ]
  %228 = phi i64 [ %316, %226 ], [ %211, %223 ]
  %229 = phi i64 [ %297, %226 ], [ %204, %223 ]
  %230 = phi i64 [ %296, %226 ], [ %197, %223 ]
  %231 = phi i64 [ %277, %226 ], [ %190, %223 ]
  %232 = phi i64 [ %276, %226 ], [ %183, %223 ]
  %233 = phi i64 [ %257, %226 ], [ %176, %223 ]
  %234 = phi i64 [ %256, %226 ], [ %169, %223 ]
  %235 = phi i32 [ %318, %226 ], [ 0, %223 ]
  %236 = shl i32 %235, 6
  %237 = getelementptr inbounds nuw i8, ptr %220, i32 %236
  %238 = shl i32 %235, 3
  %239 = getelementptr inbounds nuw i8, ptr %31, i32 %238
  %240 = load i64, ptr %237, align 1
  %241 = getelementptr inbounds nuw i8, ptr %237, i32 8
  %242 = load i64, ptr %241, align 1
  %243 = load i64, ptr %239, align 1
  %244 = getelementptr inbounds nuw i8, ptr %239, i32 8
  %245 = load i64, ptr %244, align 1
  %246 = xor i64 %243, %240
  %247 = xor i64 %245, %242
  %248 = and i64 %246, 4294967295
  %249 = lshr i64 %246, 32
  %250 = mul nuw i64 %248, %249
  %251 = add i64 %250, %234
  %252 = and i64 %247, 4294967295
  %253 = lshr i64 %247, 32
  %254 = mul nuw i64 %252, %253
  %255 = add i64 %233, %254
  %256 = add i64 %251, %242
  store i64 %256, ptr %0, align 8
  %257 = add i64 %255, %240
  store i64 %257, ptr %172, align 8
  %258 = getelementptr inbounds nuw i8, ptr %237, i32 16
  %259 = load i64, ptr %258, align 1
  %260 = getelementptr inbounds nuw i8, ptr %237, i32 24
  %261 = load i64, ptr %260, align 1
  %262 = getelementptr inbounds nuw i8, ptr %239, i32 16
  %263 = load i64, ptr %262, align 1
  %264 = getelementptr inbounds nuw i8, ptr %239, i32 24
  %265 = load i64, ptr %264, align 1
  %266 = xor i64 %263, %259
  %267 = xor i64 %265, %261
  %268 = and i64 %266, 4294967295
  %269 = lshr i64 %266, 32
  %270 = mul nuw i64 %268, %269
  %271 = add i64 %270, %232
  %272 = and i64 %267, 4294967295
  %273 = lshr i64 %267, 32
  %274 = mul nuw i64 %272, %273
  %275 = add i64 %231, %274
  %276 = add i64 %271, %261
  store i64 %276, ptr %179, align 8
  %277 = add i64 %275, %259
  store i64 %277, ptr %186, align 8
  %278 = getelementptr inbounds nuw i8, ptr %237, i32 32
  %279 = load i64, ptr %278, align 1
  %280 = getelementptr inbounds nuw i8, ptr %237, i32 40
  %281 = load i64, ptr %280, align 1
  %282 = getelementptr inbounds nuw i8, ptr %239, i32 32
  %283 = load i64, ptr %282, align 1
  %284 = getelementptr inbounds nuw i8, ptr %239, i32 40
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %283, %279
  %287 = xor i64 %285, %281
  %288 = and i64 %286, 4294967295
  %289 = lshr i64 %286, 32
  %290 = mul nuw i64 %288, %289
  %291 = add i64 %290, %230
  %292 = and i64 %287, 4294967295
  %293 = lshr i64 %287, 32
  %294 = mul nuw i64 %292, %293
  %295 = add i64 %229, %294
  %296 = add i64 %291, %281
  store i64 %296, ptr %193, align 8
  %297 = add i64 %295, %279
  store i64 %297, ptr %200, align 8
  %298 = getelementptr inbounds nuw i8, ptr %237, i32 48
  %299 = load i64, ptr %298, align 1
  %300 = getelementptr inbounds nuw i8, ptr %237, i32 56
  %301 = load i64, ptr %300, align 1
  %302 = getelementptr inbounds nuw i8, ptr %239, i32 48
  %303 = load i64, ptr %302, align 1
  %304 = getelementptr inbounds nuw i8, ptr %239, i32 56
  %305 = load i64, ptr %304, align 1
  %306 = xor i64 %303, %299
  %307 = xor i64 %305, %301
  %308 = and i64 %306, 4294967295
  %309 = lshr i64 %306, 32
  %310 = mul nuw i64 %308, %309
  %311 = add i64 %310, %228
  %312 = and i64 %307, 4294967295
  %313 = lshr i64 %307, 32
  %314 = mul nuw i64 %312, %313
  %315 = add i64 %227, %314
  %316 = add i64 %311, %301
  store i64 %316, ptr %207, align 8
  %317 = add i64 %315, %299
  store i64 %317, ptr %214, align 8
  %318 = add nuw i32 %235, 1
  %319 = icmp eq i32 %318, %224
  br i1 %319, label %433, label %226

320:                                              ; preds = %22
  %321 = load i64, ptr %0, align 8
  %322 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %323 = load i64, ptr %322, align 8
  %324 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %325 = load i64, ptr %324, align 8
  %326 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %327 = load i64, ptr %326, align 8
  %328 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %329 = load i64, ptr %328, align 8
  %330 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %331 = load i64, ptr %330, align 8
  %332 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %333 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %334 = load i64, ptr %332, align 8
  %335 = load i64, ptr %333, align 8
  br label %336

336:                                              ; preds = %320, %336
  %337 = phi i64 [ %335, %320 ], [ %427, %336 ]
  %338 = phi i64 [ %334, %320 ], [ %426, %336 ]
  %339 = phi i64 [ %331, %320 ], [ %407, %336 ]
  %340 = phi i64 [ %329, %320 ], [ %406, %336 ]
  %341 = phi i64 [ %327, %320 ], [ %387, %336 ]
  %342 = phi i64 [ %325, %320 ], [ %386, %336 ]
  %343 = phi i64 [ %323, %320 ], [ %367, %336 ]
  %344 = phi i64 [ %321, %320 ], [ %366, %336 ]
  %345 = phi i32 [ 0, %320 ], [ %428, %336 ]
  %346 = shl nuw nsw i32 %345, 6
  %347 = getelementptr inbounds nuw i8, ptr %24, i32 %346
  %348 = shl nuw nsw i32 %345, 3
  %349 = getelementptr inbounds nuw i8, ptr %38, i32 %348
  %350 = load i64, ptr %347, align 1
  %351 = getelementptr inbounds nuw i8, ptr %347, i32 8
  %352 = load i64, ptr %351, align 1
  %353 = load i64, ptr %349, align 1
  %354 = getelementptr inbounds nuw i8, ptr %349, i32 8
  %355 = load i64, ptr %354, align 1
  %356 = xor i64 %353, %350
  %357 = xor i64 %355, %352
  %358 = and i64 %356, 4294967295
  %359 = lshr i64 %356, 32
  %360 = mul nuw i64 %358, %359
  %361 = add i64 %360, %344
  %362 = and i64 %357, 4294967295
  %363 = lshr i64 %357, 32
  %364 = mul nuw i64 %362, %363
  %365 = add i64 %343, %364
  %366 = add i64 %361, %352
  store i64 %366, ptr %0, align 8
  %367 = add i64 %365, %350
  store i64 %367, ptr %322, align 8
  %368 = getelementptr inbounds nuw i8, ptr %347, i32 16
  %369 = load i64, ptr %368, align 1
  %370 = getelementptr inbounds nuw i8, ptr %347, i32 24
  %371 = load i64, ptr %370, align 1
  %372 = getelementptr inbounds nuw i8, ptr %349, i32 16
  %373 = load i64, ptr %372, align 1
  %374 = getelementptr inbounds nuw i8, ptr %349, i32 24
  %375 = load i64, ptr %374, align 1
  %376 = xor i64 %373, %369
  %377 = xor i64 %375, %371
  %378 = and i64 %376, 4294967295
  %379 = lshr i64 %376, 32
  %380 = mul nuw i64 %378, %379
  %381 = add i64 %380, %342
  %382 = and i64 %377, 4294967295
  %383 = lshr i64 %377, 32
  %384 = mul nuw i64 %382, %383
  %385 = add i64 %341, %384
  %386 = add i64 %381, %371
  store i64 %386, ptr %324, align 8
  %387 = add i64 %385, %369
  store i64 %387, ptr %326, align 8
  %388 = getelementptr inbounds nuw i8, ptr %347, i32 32
  %389 = load i64, ptr %388, align 1
  %390 = getelementptr inbounds nuw i8, ptr %347, i32 40
  %391 = load i64, ptr %390, align 1
  %392 = getelementptr inbounds nuw i8, ptr %349, i32 32
  %393 = load i64, ptr %392, align 1
  %394 = getelementptr inbounds nuw i8, ptr %349, i32 40
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %393, %389
  %397 = xor i64 %395, %391
  %398 = and i64 %396, 4294967295
  %399 = lshr i64 %396, 32
  %400 = mul nuw i64 %398, %399
  %401 = add i64 %400, %340
  %402 = and i64 %397, 4294967295
  %403 = lshr i64 %397, 32
  %404 = mul nuw i64 %402, %403
  %405 = add i64 %339, %404
  %406 = add i64 %401, %391
  store i64 %406, ptr %328, align 8
  %407 = add i64 %405, %389
  store i64 %407, ptr %330, align 8
  %408 = getelementptr inbounds nuw i8, ptr %347, i32 48
  %409 = load i64, ptr %408, align 1
  %410 = getelementptr inbounds nuw i8, ptr %347, i32 56
  %411 = load i64, ptr %410, align 1
  %412 = getelementptr inbounds nuw i8, ptr %349, i32 48
  %413 = load i64, ptr %412, align 1
  %414 = getelementptr inbounds nuw i8, ptr %349, i32 56
  %415 = load i64, ptr %414, align 1
  %416 = xor i64 %413, %409
  %417 = xor i64 %415, %411
  %418 = and i64 %416, 4294967295
  %419 = lshr i64 %416, 32
  %420 = mul nuw i64 %418, %419
  %421 = add i64 %420, %338
  %422 = and i64 %417, 4294967295
  %423 = lshr i64 %417, 32
  %424 = mul nuw i64 %422, %423
  %425 = add i64 %337, %424
  %426 = add i64 %421, %411
  store i64 %426, ptr %332, align 8
  %427 = add i64 %425, %409
  store i64 %427, ptr %333, align 8
  %428 = add nuw nsw i32 %345, 1
  %429 = icmp eq i32 %428, 4
  br i1 %429, label %430, label %336

430:                                              ; preds = %336
  %431 = load i32, ptr %27, align 4
  %432 = add i32 %431, 4
  br label %433

433:                                              ; preds = %226, %155, %430
  %434 = phi i32 [ %432, %430 ], [ 0, %155 ], [ %221, %226 ]
  store i32 %434, ptr %27, align 4
  store i32 0, ptr %11, align 64
  br label %435

435:                                              ; preds = %433, %20
  %436 = phi ptr [ %26, %433 ], [ %1, %20 ]
  %437 = getelementptr inbounds nuw i8, ptr %436, i32 256
  %438 = icmp ugt ptr %437, %6
  br i1 %438, label %865, label %439

439:                                              ; preds = %435
  %440 = getelementptr inbounds i8, ptr %6, i32 -256
  %441 = getelementptr inbounds nuw i8, ptr %0, i32 520
  %442 = getelementptr inbounds nuw i8, ptr %0, i32 516
  %443 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %444 = getelementptr inbounds nuw i8, ptr %0, i32 524
  %445 = load i32, ptr %441, align 4
  %446 = load i32, ptr %442, align 4
  %447 = load ptr, ptr %443, align 16
  %448 = load i32, ptr %444, align 4
  %449 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %450 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %451 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %452 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %453 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %454 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %455 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %456 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %457 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %458 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %459 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %460 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %461 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %462 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %463 = getelementptr inbounds nuw i8, ptr %447, i32 %448
  %464 = getelementptr inbounds nuw i8, ptr %463, i32 8
  %465 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %466 = getelementptr inbounds nuw i8, ptr %463, i32 16
  %467 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %468 = getelementptr inbounds nuw i8, ptr %463, i32 24
  %469 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %470 = getelementptr inbounds nuw i8, ptr %463, i32 32
  %471 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %472 = getelementptr inbounds nuw i8, ptr %463, i32 40
  %473 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %474 = getelementptr inbounds nuw i8, ptr %463, i32 48
  %475 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %476 = getelementptr inbounds nuw i8, ptr %463, i32 56
  %477 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %478 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %479 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %480 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %481 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %482 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %483 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %484 = getelementptr inbounds nuw i8, ptr %0, i32 56
  br label %485

485:                                              ; preds = %861, %439
  %486 = phi i32 [ %445, %439 ], [ %862, %861 ]
  %487 = phi ptr [ %436, %439 ], [ %863, %861 ]
  %488 = sub i32 %446, %486
  %489 = icmp ugt i32 %488, 4
  %490 = shl i32 %486, 3
  %491 = getelementptr inbounds nuw i8, ptr %447, i32 %490
  br i1 %489, label %755, label %492

492:                                              ; preds = %485
  %493 = icmp eq i32 %446, %486
  %494 = load i64, ptr %0, align 8
  br i1 %493, label %495, label %503

495:                                              ; preds = %492
  %496 = load i64, ptr %456, align 8
  %497 = load i64, ptr %457, align 8
  %498 = load i64, ptr %458, align 8
  %499 = load i64, ptr %459, align 8
  %500 = load i64, ptr %460, align 8
  %501 = load i64, ptr %461, align 8
  %502 = load i64, ptr %462, align 8
  br label %605

503:                                              ; preds = %492
  %504 = load i64, ptr %449, align 8
  %505 = load i64, ptr %450, align 8
  %506 = load i64, ptr %451, align 8
  %507 = load i64, ptr %452, align 8
  %508 = load i64, ptr %453, align 8
  %509 = load i64, ptr %454, align 8
  %510 = load i64, ptr %455, align 8
  br label %511

511:                                              ; preds = %503, %511
  %512 = phi i64 [ %602, %511 ], [ %510, %503 ]
  %513 = phi i64 [ %601, %511 ], [ %509, %503 ]
  %514 = phi i64 [ %582, %511 ], [ %508, %503 ]
  %515 = phi i64 [ %581, %511 ], [ %507, %503 ]
  %516 = phi i64 [ %562, %511 ], [ %506, %503 ]
  %517 = phi i64 [ %561, %511 ], [ %505, %503 ]
  %518 = phi i64 [ %542, %511 ], [ %504, %503 ]
  %519 = phi i64 [ %541, %511 ], [ %494, %503 ]
  %520 = phi i32 [ %603, %511 ], [ 0, %503 ]
  %521 = shl i32 %520, 6
  %522 = getelementptr inbounds nuw i8, ptr %487, i32 %521
  %523 = shl i32 %520, 3
  %524 = getelementptr inbounds nuw i8, ptr %491, i32 %523
  %525 = load i64, ptr %522, align 1
  %526 = getelementptr inbounds nuw i8, ptr %522, i32 8
  %527 = load i64, ptr %526, align 1
  %528 = load i64, ptr %524, align 1
  %529 = getelementptr inbounds nuw i8, ptr %524, i32 8
  %530 = load i64, ptr %529, align 1
  %531 = xor i64 %528, %525
  %532 = xor i64 %530, %527
  %533 = and i64 %531, 4294967295
  %534 = lshr i64 %531, 32
  %535 = mul nuw i64 %533, %534
  %536 = add i64 %535, %519
  %537 = and i64 %532, 4294967295
  %538 = lshr i64 %532, 32
  %539 = mul nuw i64 %537, %538
  %540 = add i64 %518, %539
  %541 = add i64 %536, %527
  store i64 %541, ptr %0, align 8
  %542 = add i64 %540, %525
  store i64 %542, ptr %449, align 8
  %543 = getelementptr inbounds nuw i8, ptr %522, i32 16
  %544 = load i64, ptr %543, align 1
  %545 = getelementptr inbounds nuw i8, ptr %522, i32 24
  %546 = load i64, ptr %545, align 1
  %547 = getelementptr inbounds nuw i8, ptr %524, i32 16
  %548 = load i64, ptr %547, align 1
  %549 = getelementptr inbounds nuw i8, ptr %524, i32 24
  %550 = load i64, ptr %549, align 1
  %551 = xor i64 %548, %544
  %552 = xor i64 %550, %546
  %553 = and i64 %551, 4294967295
  %554 = lshr i64 %551, 32
  %555 = mul nuw i64 %553, %554
  %556 = add i64 %555, %517
  %557 = and i64 %552, 4294967295
  %558 = lshr i64 %552, 32
  %559 = mul nuw i64 %557, %558
  %560 = add i64 %516, %559
  %561 = add i64 %556, %546
  store i64 %561, ptr %450, align 8
  %562 = add i64 %560, %544
  store i64 %562, ptr %451, align 8
  %563 = getelementptr inbounds nuw i8, ptr %522, i32 32
  %564 = load i64, ptr %563, align 1
  %565 = getelementptr inbounds nuw i8, ptr %522, i32 40
  %566 = load i64, ptr %565, align 1
  %567 = getelementptr inbounds nuw i8, ptr %524, i32 32
  %568 = load i64, ptr %567, align 1
  %569 = getelementptr inbounds nuw i8, ptr %524, i32 40
  %570 = load i64, ptr %569, align 1
  %571 = xor i64 %568, %564
  %572 = xor i64 %570, %566
  %573 = and i64 %571, 4294967295
  %574 = lshr i64 %571, 32
  %575 = mul nuw i64 %573, %574
  %576 = add i64 %575, %515
  %577 = and i64 %572, 4294967295
  %578 = lshr i64 %572, 32
  %579 = mul nuw i64 %577, %578
  %580 = add i64 %514, %579
  %581 = add i64 %576, %566
  store i64 %581, ptr %452, align 8
  %582 = add i64 %580, %564
  store i64 %582, ptr %453, align 8
  %583 = getelementptr inbounds nuw i8, ptr %522, i32 48
  %584 = load i64, ptr %583, align 1
  %585 = getelementptr inbounds nuw i8, ptr %522, i32 56
  %586 = load i64, ptr %585, align 1
  %587 = getelementptr inbounds nuw i8, ptr %524, i32 48
  %588 = load i64, ptr %587, align 1
  %589 = getelementptr inbounds nuw i8, ptr %524, i32 56
  %590 = load i64, ptr %589, align 1
  %591 = xor i64 %588, %584
  %592 = xor i64 %590, %586
  %593 = and i64 %591, 4294967295
  %594 = lshr i64 %591, 32
  %595 = mul nuw i64 %593, %594
  %596 = add i64 %595, %513
  %597 = and i64 %592, 4294967295
  %598 = lshr i64 %592, 32
  %599 = mul nuw i64 %597, %598
  %600 = add i64 %512, %599
  %601 = add i64 %596, %586
  store i64 %601, ptr %454, align 8
  %602 = add i64 %600, %584
  store i64 %602, ptr %455, align 8
  %603 = add nuw i32 %520, 1
  %604 = icmp eq i32 %603, %488
  br i1 %604, label %605, label %511

605:                                              ; preds = %511, %495
  %606 = phi i64 [ %502, %495 ], [ %602, %511 ]
  %607 = phi i64 [ %501, %495 ], [ %601, %511 ]
  %608 = phi i64 [ %500, %495 ], [ %582, %511 ]
  %609 = phi i64 [ %499, %495 ], [ %581, %511 ]
  %610 = phi i64 [ %498, %495 ], [ %562, %511 ]
  %611 = phi i64 [ %497, %495 ], [ %561, %511 ]
  %612 = phi i64 [ %496, %495 ], [ %542, %511 ]
  %613 = phi i64 [ %494, %495 ], [ %541, %511 ]
  %614 = load i64, ptr %463, align 1
  %615 = lshr i64 %613, 47
  %616 = xor i64 %614, %615
  %617 = xor i64 %616, %613
  %618 = mul i64 %617, 2654435761
  store i64 %618, ptr %0, align 8
  %619 = load i64, ptr %464, align 1
  %620 = lshr i64 %612, 47
  %621 = xor i64 %619, %620
  %622 = xor i64 %621, %612
  %623 = mul i64 %622, 2654435761
  store i64 %623, ptr %465, align 8
  %624 = load i64, ptr %466, align 1
  %625 = lshr i64 %611, 47
  %626 = xor i64 %624, %625
  %627 = xor i64 %626, %611
  %628 = mul i64 %627, 2654435761
  store i64 %628, ptr %467, align 8
  %629 = load i64, ptr %468, align 1
  %630 = lshr i64 %610, 47
  %631 = xor i64 %629, %630
  %632 = xor i64 %631, %610
  %633 = mul i64 %632, 2654435761
  store i64 %633, ptr %469, align 8
  %634 = load i64, ptr %470, align 1
  %635 = lshr i64 %609, 47
  %636 = xor i64 %634, %635
  %637 = xor i64 %636, %609
  %638 = mul i64 %637, 2654435761
  store i64 %638, ptr %471, align 8
  %639 = load i64, ptr %472, align 1
  %640 = lshr i64 %608, 47
  %641 = xor i64 %639, %640
  %642 = xor i64 %641, %608
  %643 = mul i64 %642, 2654435761
  store i64 %643, ptr %473, align 8
  %644 = load i64, ptr %474, align 1
  %645 = lshr i64 %607, 47
  %646 = xor i64 %644, %645
  %647 = xor i64 %646, %607
  %648 = mul i64 %647, 2654435761
  store i64 %648, ptr %475, align 8
  %649 = load i64, ptr %476, align 1
  %650 = lshr i64 %606, 47
  %651 = xor i64 %649, %650
  %652 = xor i64 %651, %606
  %653 = mul i64 %652, 2654435761
  store i64 %653, ptr %477, align 8
  %654 = shl nuw nsw i32 %488, 6
  %655 = getelementptr inbounds nuw i8, ptr %487, i32 %654
  %656 = sub nsw i32 4, %488
  %657 = icmp eq i32 %488, 4
  br i1 %657, label %861, label %658

658:                                              ; preds = %605
  %659 = tail call i32 @llvm.umax.i32(i32 %656, i32 1)
  %660 = load i64, ptr %477, align 8
  br label %661

661:                                              ; preds = %658, %661
  %662 = phi i64 [ %752, %661 ], [ %660, %658 ]
  %663 = phi i64 [ %751, %661 ], [ %648, %658 ]
  %664 = phi i64 [ %732, %661 ], [ %643, %658 ]
  %665 = phi i64 [ %731, %661 ], [ %638, %658 ]
  %666 = phi i64 [ %712, %661 ], [ %633, %658 ]
  %667 = phi i64 [ %711, %661 ], [ %628, %658 ]
  %668 = phi i64 [ %692, %661 ], [ %623, %658 ]
  %669 = phi i64 [ %691, %661 ], [ %618, %658 ]
  %670 = phi i32 [ %753, %661 ], [ 0, %658 ]
  %671 = shl i32 %670, 6
  %672 = getelementptr inbounds nuw i8, ptr %655, i32 %671
  %673 = shl i32 %670, 3
  %674 = getelementptr inbounds nuw i8, ptr %447, i32 %673
  %675 = load i64, ptr %672, align 1
  %676 = getelementptr inbounds nuw i8, ptr %672, i32 8
  %677 = load i64, ptr %676, align 1
  %678 = load i64, ptr %674, align 1
  %679 = getelementptr inbounds nuw i8, ptr %674, i32 8
  %680 = load i64, ptr %679, align 1
  %681 = xor i64 %678, %675
  %682 = xor i64 %680, %677
  %683 = and i64 %681, 4294967295
  %684 = lshr i64 %681, 32
  %685 = mul nuw i64 %683, %684
  %686 = add i64 %685, %669
  %687 = and i64 %682, 4294967295
  %688 = lshr i64 %682, 32
  %689 = mul nuw i64 %687, %688
  %690 = add i64 %668, %689
  %691 = add i64 %686, %677
  store i64 %691, ptr %0, align 8
  %692 = add i64 %690, %675
  store i64 %692, ptr %465, align 8
  %693 = getelementptr inbounds nuw i8, ptr %672, i32 16
  %694 = load i64, ptr %693, align 1
  %695 = getelementptr inbounds nuw i8, ptr %672, i32 24
  %696 = load i64, ptr %695, align 1
  %697 = getelementptr inbounds nuw i8, ptr %674, i32 16
  %698 = load i64, ptr %697, align 1
  %699 = getelementptr inbounds nuw i8, ptr %674, i32 24
  %700 = load i64, ptr %699, align 1
  %701 = xor i64 %698, %694
  %702 = xor i64 %700, %696
  %703 = and i64 %701, 4294967295
  %704 = lshr i64 %701, 32
  %705 = mul nuw i64 %703, %704
  %706 = add i64 %705, %667
  %707 = and i64 %702, 4294967295
  %708 = lshr i64 %702, 32
  %709 = mul nuw i64 %707, %708
  %710 = add i64 %666, %709
  %711 = add i64 %706, %696
  store i64 %711, ptr %467, align 8
  %712 = add i64 %710, %694
  store i64 %712, ptr %469, align 8
  %713 = getelementptr inbounds nuw i8, ptr %672, i32 32
  %714 = load i64, ptr %713, align 1
  %715 = getelementptr inbounds nuw i8, ptr %672, i32 40
  %716 = load i64, ptr %715, align 1
  %717 = getelementptr inbounds nuw i8, ptr %674, i32 32
  %718 = load i64, ptr %717, align 1
  %719 = getelementptr inbounds nuw i8, ptr %674, i32 40
  %720 = load i64, ptr %719, align 1
  %721 = xor i64 %718, %714
  %722 = xor i64 %720, %716
  %723 = and i64 %721, 4294967295
  %724 = lshr i64 %721, 32
  %725 = mul nuw i64 %723, %724
  %726 = add i64 %725, %665
  %727 = and i64 %722, 4294967295
  %728 = lshr i64 %722, 32
  %729 = mul nuw i64 %727, %728
  %730 = add i64 %664, %729
  %731 = add i64 %726, %716
  store i64 %731, ptr %471, align 8
  %732 = add i64 %730, %714
  store i64 %732, ptr %473, align 8
  %733 = getelementptr inbounds nuw i8, ptr %672, i32 48
  %734 = load i64, ptr %733, align 1
  %735 = getelementptr inbounds nuw i8, ptr %672, i32 56
  %736 = load i64, ptr %735, align 1
  %737 = getelementptr inbounds nuw i8, ptr %674, i32 48
  %738 = load i64, ptr %737, align 1
  %739 = getelementptr inbounds nuw i8, ptr %674, i32 56
  %740 = load i64, ptr %739, align 1
  %741 = xor i64 %738, %734
  %742 = xor i64 %740, %736
  %743 = and i64 %741, 4294967295
  %744 = lshr i64 %741, 32
  %745 = mul nuw i64 %743, %744
  %746 = add i64 %745, %663
  %747 = and i64 %742, 4294967295
  %748 = lshr i64 %742, 32
  %749 = mul nuw i64 %747, %748
  %750 = add i64 %662, %749
  %751 = add i64 %746, %736
  store i64 %751, ptr %475, align 8
  %752 = add i64 %750, %734
  store i64 %752, ptr %477, align 8
  %753 = add nuw i32 %670, 1
  %754 = icmp eq i32 %753, %659
  br i1 %754, label %861, label %661

755:                                              ; preds = %485
  %756 = load i64, ptr %0, align 8
  %757 = load i64, ptr %478, align 8
  %758 = load i64, ptr %479, align 8
  %759 = load i64, ptr %480, align 8
  %760 = load i64, ptr %481, align 8
  %761 = load i64, ptr %482, align 8
  %762 = load i64, ptr %483, align 8
  %763 = load i64, ptr %484, align 8
  br label %764

764:                                              ; preds = %755, %764
  %765 = phi i64 [ %763, %755 ], [ %855, %764 ]
  %766 = phi i64 [ %762, %755 ], [ %854, %764 ]
  %767 = phi i64 [ %761, %755 ], [ %835, %764 ]
  %768 = phi i64 [ %760, %755 ], [ %834, %764 ]
  %769 = phi i64 [ %759, %755 ], [ %815, %764 ]
  %770 = phi i64 [ %758, %755 ], [ %814, %764 ]
  %771 = phi i64 [ %757, %755 ], [ %795, %764 ]
  %772 = phi i64 [ %756, %755 ], [ %794, %764 ]
  %773 = phi i32 [ 0, %755 ], [ %856, %764 ]
  %774 = shl nuw nsw i32 %773, 6
  %775 = getelementptr inbounds nuw i8, ptr %487, i32 %774
  %776 = shl nuw nsw i32 %773, 3
  %777 = getelementptr inbounds nuw i8, ptr %491, i32 %776
  %778 = load i64, ptr %775, align 1
  %779 = getelementptr inbounds nuw i8, ptr %775, i32 8
  %780 = load i64, ptr %779, align 1
  %781 = load i64, ptr %777, align 1
  %782 = getelementptr inbounds nuw i8, ptr %777, i32 8
  %783 = load i64, ptr %782, align 1
  %784 = xor i64 %781, %778
  %785 = xor i64 %783, %780
  %786 = and i64 %784, 4294967295
  %787 = lshr i64 %784, 32
  %788 = mul nuw i64 %786, %787
  %789 = add i64 %788, %772
  %790 = and i64 %785, 4294967295
  %791 = lshr i64 %785, 32
  %792 = mul nuw i64 %790, %791
  %793 = add i64 %771, %792
  %794 = add i64 %789, %780
  store i64 %794, ptr %0, align 8
  %795 = add i64 %793, %778
  store i64 %795, ptr %478, align 8
  %796 = getelementptr inbounds nuw i8, ptr %775, i32 16
  %797 = load i64, ptr %796, align 1
  %798 = getelementptr inbounds nuw i8, ptr %775, i32 24
  %799 = load i64, ptr %798, align 1
  %800 = getelementptr inbounds nuw i8, ptr %777, i32 16
  %801 = load i64, ptr %800, align 1
  %802 = getelementptr inbounds nuw i8, ptr %777, i32 24
  %803 = load i64, ptr %802, align 1
  %804 = xor i64 %801, %797
  %805 = xor i64 %803, %799
  %806 = and i64 %804, 4294967295
  %807 = lshr i64 %804, 32
  %808 = mul nuw i64 %806, %807
  %809 = add i64 %808, %770
  %810 = and i64 %805, 4294967295
  %811 = lshr i64 %805, 32
  %812 = mul nuw i64 %810, %811
  %813 = add i64 %769, %812
  %814 = add i64 %809, %799
  store i64 %814, ptr %479, align 8
  %815 = add i64 %813, %797
  store i64 %815, ptr %480, align 8
  %816 = getelementptr inbounds nuw i8, ptr %775, i32 32
  %817 = load i64, ptr %816, align 1
  %818 = getelementptr inbounds nuw i8, ptr %775, i32 40
  %819 = load i64, ptr %818, align 1
  %820 = getelementptr inbounds nuw i8, ptr %777, i32 32
  %821 = load i64, ptr %820, align 1
  %822 = getelementptr inbounds nuw i8, ptr %777, i32 40
  %823 = load i64, ptr %822, align 1
  %824 = xor i64 %821, %817
  %825 = xor i64 %823, %819
  %826 = and i64 %824, 4294967295
  %827 = lshr i64 %824, 32
  %828 = mul nuw i64 %826, %827
  %829 = add i64 %828, %768
  %830 = and i64 %825, 4294967295
  %831 = lshr i64 %825, 32
  %832 = mul nuw i64 %830, %831
  %833 = add i64 %767, %832
  %834 = add i64 %829, %819
  store i64 %834, ptr %481, align 8
  %835 = add i64 %833, %817
  store i64 %835, ptr %482, align 8
  %836 = getelementptr inbounds nuw i8, ptr %775, i32 48
  %837 = load i64, ptr %836, align 1
  %838 = getelementptr inbounds nuw i8, ptr %775, i32 56
  %839 = load i64, ptr %838, align 1
  %840 = getelementptr inbounds nuw i8, ptr %777, i32 48
  %841 = load i64, ptr %840, align 1
  %842 = getelementptr inbounds nuw i8, ptr %777, i32 56
  %843 = load i64, ptr %842, align 1
  %844 = xor i64 %841, %837
  %845 = xor i64 %843, %839
  %846 = and i64 %844, 4294967295
  %847 = lshr i64 %844, 32
  %848 = mul nuw i64 %846, %847
  %849 = add i64 %848, %766
  %850 = and i64 %845, 4294967295
  %851 = lshr i64 %845, 32
  %852 = mul nuw i64 %850, %851
  %853 = add i64 %765, %852
  %854 = add i64 %849, %839
  store i64 %854, ptr %483, align 8
  %855 = add i64 %853, %837
  store i64 %855, ptr %484, align 8
  %856 = add nuw nsw i32 %773, 1
  %857 = icmp eq i32 %856, 4
  br i1 %857, label %858, label %764

858:                                              ; preds = %764
  %859 = load i32, ptr %441, align 4
  %860 = add i32 %859, 4
  br label %861

861:                                              ; preds = %661, %605, %858
  %862 = phi i32 [ %860, %858 ], [ 0, %605 ], [ %656, %661 ]
  store i32 %862, ptr %441, align 4
  %863 = getelementptr inbounds nuw i8, ptr %487, i32 256
  %864 = icmp ugt ptr %863, %440
  br i1 %864, label %865, label %485

865:                                              ; preds = %861, %435
  %866 = phi ptr [ %436, %435 ], [ %863, %861 ]
  %867 = icmp ult ptr %866, %6
  br i1 %867, label %868, label %875

868:                                              ; preds = %865
  %869 = getelementptr inbounds nuw i8, ptr %0, i32 256
  %870 = ptrtoint ptr %6 to i32
  %871 = ptrtoint ptr %866 to i32
  %872 = sub i32 %870, %871
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %869, ptr nonnull readonly align 1 %866, i32 %872, i1 false)
  br label %873

873:                                              ; preds = %868, %15
  %874 = phi i32 [ %19, %15 ], [ %872, %868 ]
  store i32 %874, ptr %11, align 64
  br label %875

875:                                              ; preds = %873, %3, %865
  %876 = phi i32 [ 1, %3 ], [ 0, %865 ], [ 0, %873 ]
  ret i32 %876
}

; Function Attrs: nofree norecurse nosync nounwind
define dso_local void @XXH3_128bits_digest(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1) local_unnamed_addr #18 {
  %3 = alloca [64 x i8], align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i32 536
  %5 = load i64, ptr %4, align 8
  %6 = icmp ugt i64 %5, 240
  br i1 %6, label %7, label %852

7:                                                ; preds = %2
  %8 = load i64, ptr %1, align 64
  %9 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %12 = load i64, ptr %11, align 16
  %13 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %16 = load i64, ptr %15, align 32
  %17 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %20 = load i64, ptr %19, align 16
  %21 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %1, i32 512
  %24 = load i32, ptr %23, align 64
  %25 = icmp ugt i32 %24, 63
  br i1 %25, label %26, label %482

26:                                               ; preds = %7
  %27 = lshr i32 %24, 6
  %28 = getelementptr inbounds nuw i8, ptr %1, i32 520
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %1, i32 516
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw i8, ptr %1, i32 256
  %33 = getelementptr inbounds nuw i8, ptr %1, i32 560
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr inbounds nuw i8, ptr %1, i32 524
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %31, %29
  %38 = icmp ugt i32 %37, %27
  %39 = shl i32 %29, 3
  %40 = getelementptr inbounds nuw i8, ptr %34, i32 %39
  br i1 %38, label %294, label %41

41:                                               ; preds = %26
  %42 = icmp eq i32 %31, %29
  br i1 %42, label %137, label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ %134, %43 ], [ %22, %41 ]
  %45 = phi i64 [ %133, %43 ], [ %20, %41 ]
  %46 = phi i64 [ %114, %43 ], [ %18, %41 ]
  %47 = phi i64 [ %113, %43 ], [ %16, %41 ]
  %48 = phi i64 [ %94, %43 ], [ %14, %41 ]
  %49 = phi i64 [ %93, %43 ], [ %12, %41 ]
  %50 = phi i64 [ %74, %43 ], [ %10, %41 ]
  %51 = phi i64 [ %73, %43 ], [ %8, %41 ]
  %52 = phi i32 [ %135, %43 ], [ 0, %41 ]
  %53 = shl i32 %52, 6
  %54 = getelementptr inbounds nuw i8, ptr %32, i32 %53
  %55 = shl i32 %52, 3
  %56 = getelementptr inbounds nuw i8, ptr %40, i32 %55
  %57 = load i64, ptr %54, align 1
  %58 = getelementptr inbounds nuw i8, ptr %54, i32 8
  %59 = load i64, ptr %58, align 1
  %60 = load i64, ptr %56, align 1
  %61 = getelementptr inbounds nuw i8, ptr %56, i32 8
  %62 = load i64, ptr %61, align 1
  %63 = xor i64 %60, %57
  %64 = xor i64 %62, %59
  %65 = and i64 %63, 4294967295
  %66 = lshr i64 %63, 32
  %67 = mul nuw i64 %65, %66
  %68 = add i64 %67, %51
  %69 = and i64 %64, 4294967295
  %70 = lshr i64 %64, 32
  %71 = mul nuw i64 %69, %70
  %72 = add i64 %50, %71
  %73 = add i64 %68, %59
  %74 = add i64 %72, %57
  %75 = getelementptr inbounds nuw i8, ptr %54, i32 16
  %76 = load i64, ptr %75, align 1
  %77 = getelementptr inbounds nuw i8, ptr %54, i32 24
  %78 = load i64, ptr %77, align 1
  %79 = getelementptr inbounds nuw i8, ptr %56, i32 16
  %80 = load i64, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %56, i32 24
  %82 = load i64, ptr %81, align 1
  %83 = xor i64 %80, %76
  %84 = xor i64 %82, %78
  %85 = and i64 %83, 4294967295
  %86 = lshr i64 %83, 32
  %87 = mul nuw i64 %85, %86
  %88 = add i64 %87, %49
  %89 = and i64 %84, 4294967295
  %90 = lshr i64 %84, 32
  %91 = mul nuw i64 %89, %90
  %92 = add i64 %48, %91
  %93 = add i64 %88, %78
  %94 = add i64 %92, %76
  %95 = getelementptr inbounds nuw i8, ptr %54, i32 32
  %96 = load i64, ptr %95, align 1
  %97 = getelementptr inbounds nuw i8, ptr %54, i32 40
  %98 = load i64, ptr %97, align 1
  %99 = getelementptr inbounds nuw i8, ptr %56, i32 32
  %100 = load i64, ptr %99, align 1
  %101 = getelementptr inbounds nuw i8, ptr %56, i32 40
  %102 = load i64, ptr %101, align 1
  %103 = xor i64 %100, %96
  %104 = xor i64 %102, %98
  %105 = and i64 %103, 4294967295
  %106 = lshr i64 %103, 32
  %107 = mul nuw i64 %105, %106
  %108 = add i64 %107, %47
  %109 = and i64 %104, 4294967295
  %110 = lshr i64 %104, 32
  %111 = mul nuw i64 %109, %110
  %112 = add i64 %46, %111
  %113 = add i64 %108, %98
  %114 = add i64 %112, %96
  %115 = getelementptr inbounds nuw i8, ptr %54, i32 48
  %116 = load i64, ptr %115, align 1
  %117 = getelementptr inbounds nuw i8, ptr %54, i32 56
  %118 = load i64, ptr %117, align 1
  %119 = getelementptr inbounds nuw i8, ptr %56, i32 48
  %120 = load i64, ptr %119, align 1
  %121 = getelementptr inbounds nuw i8, ptr %56, i32 56
  %122 = load i64, ptr %121, align 1
  %123 = xor i64 %120, %116
  %124 = xor i64 %122, %118
  %125 = and i64 %123, 4294967295
  %126 = lshr i64 %123, 32
  %127 = mul nuw i64 %125, %126
  %128 = add i64 %127, %45
  %129 = and i64 %124, 4294967295
  %130 = lshr i64 %124, 32
  %131 = mul nuw i64 %129, %130
  %132 = add i64 %44, %131
  %133 = add i64 %128, %118
  %134 = add i64 %132, %116
  %135 = add nuw i32 %52, 1
  %136 = icmp eq i32 %135, %37
  br i1 %136, label %137, label %43

137:                                              ; preds = %43, %41
  %138 = phi i64 [ %22, %41 ], [ %134, %43 ]
  %139 = phi i64 [ %20, %41 ], [ %133, %43 ]
  %140 = phi i64 [ %18, %41 ], [ %114, %43 ]
  %141 = phi i64 [ %16, %41 ], [ %113, %43 ]
  %142 = phi i64 [ %14, %41 ], [ %94, %43 ]
  %143 = phi i64 [ %12, %41 ], [ %93, %43 ]
  %144 = phi i64 [ %10, %41 ], [ %74, %43 ]
  %145 = phi i64 [ %8, %41 ], [ %73, %43 ]
  %146 = getelementptr inbounds nuw i8, ptr %34, i32 %36
  %147 = load i64, ptr %146, align 1
  %148 = lshr i64 %145, 47
  %149 = xor i64 %147, %148
  %150 = xor i64 %149, %145
  %151 = mul i64 %150, 2654435761
  %152 = getelementptr inbounds nuw i8, ptr %146, i32 8
  %153 = load i64, ptr %152, align 1
  %154 = lshr i64 %144, 47
  %155 = xor i64 %153, %154
  %156 = xor i64 %155, %144
  %157 = mul i64 %156, 2654435761
  %158 = getelementptr inbounds nuw i8, ptr %146, i32 16
  %159 = load i64, ptr %158, align 1
  %160 = lshr i64 %143, 47
  %161 = xor i64 %159, %160
  %162 = xor i64 %161, %143
  %163 = mul i64 %162, 2654435761
  %164 = getelementptr inbounds nuw i8, ptr %146, i32 24
  %165 = load i64, ptr %164, align 1
  %166 = lshr i64 %142, 47
  %167 = xor i64 %165, %166
  %168 = xor i64 %167, %142
  %169 = mul i64 %168, 2654435761
  %170 = getelementptr inbounds nuw i8, ptr %146, i32 32
  %171 = load i64, ptr %170, align 1
  %172 = lshr i64 %141, 47
  %173 = xor i64 %171, %172
  %174 = xor i64 %173, %141
  %175 = mul i64 %174, 2654435761
  %176 = getelementptr inbounds nuw i8, ptr %146, i32 40
  %177 = load i64, ptr %176, align 1
  %178 = lshr i64 %140, 47
  %179 = xor i64 %177, %178
  %180 = xor i64 %179, %140
  %181 = mul i64 %180, 2654435761
  %182 = getelementptr inbounds nuw i8, ptr %146, i32 48
  %183 = load i64, ptr %182, align 1
  %184 = lshr i64 %139, 47
  %185 = xor i64 %183, %184
  %186 = xor i64 %185, %139
  %187 = mul i64 %186, 2654435761
  %188 = getelementptr inbounds nuw i8, ptr %146, i32 56
  %189 = load i64, ptr %188, align 1
  %190 = lshr i64 %138, 47
  %191 = xor i64 %189, %190
  %192 = xor i64 %191, %138
  %193 = mul i64 %192, 2654435761
  %194 = shl nuw i32 %37, 6
  %195 = getelementptr inbounds nuw i8, ptr %32, i32 %194
  %196 = icmp eq i32 %27, %37
  br i1 %196, label %388, label %197

197:                                              ; preds = %137
  %198 = sub i32 %27, %37
  %199 = tail call i32 @llvm.umax.i32(i32 %198, i32 1)
  br label %200

200:                                              ; preds = %197, %200
  %201 = phi i64 [ %193, %197 ], [ %291, %200 ]
  %202 = phi i64 [ %187, %197 ], [ %290, %200 ]
  %203 = phi i64 [ %181, %197 ], [ %271, %200 ]
  %204 = phi i64 [ %175, %197 ], [ %270, %200 ]
  %205 = phi i64 [ %169, %197 ], [ %251, %200 ]
  %206 = phi i64 [ %163, %197 ], [ %250, %200 ]
  %207 = phi i64 [ %157, %197 ], [ %231, %200 ]
  %208 = phi i64 [ %151, %197 ], [ %230, %200 ]
  %209 = phi i32 [ 0, %197 ], [ %292, %200 ]
  %210 = shl i32 %209, 6
  %211 = getelementptr inbounds nuw i8, ptr %195, i32 %210
  %212 = shl i32 %209, 3
  %213 = getelementptr inbounds nuw i8, ptr %34, i32 %212
  %214 = load i64, ptr %211, align 1
  %215 = getelementptr inbounds nuw i8, ptr %211, i32 8
  %216 = load i64, ptr %215, align 1
  %217 = load i64, ptr %213, align 1
  %218 = getelementptr inbounds nuw i8, ptr %213, i32 8
  %219 = load i64, ptr %218, align 1
  %220 = xor i64 %217, %214
  %221 = xor i64 %219, %216
  %222 = and i64 %220, 4294967295
  %223 = lshr i64 %220, 32
  %224 = mul nuw i64 %222, %223
  %225 = add i64 %224, %208
  %226 = and i64 %221, 4294967295
  %227 = lshr i64 %221, 32
  %228 = mul nuw i64 %226, %227
  %229 = add i64 %207, %228
  %230 = add i64 %225, %216
  %231 = add i64 %229, %214
  %232 = getelementptr inbounds nuw i8, ptr %211, i32 16
  %233 = load i64, ptr %232, align 1
  %234 = getelementptr inbounds nuw i8, ptr %211, i32 24
  %235 = load i64, ptr %234, align 1
  %236 = getelementptr inbounds nuw i8, ptr %213, i32 16
  %237 = load i64, ptr %236, align 1
  %238 = getelementptr inbounds nuw i8, ptr %213, i32 24
  %239 = load i64, ptr %238, align 1
  %240 = xor i64 %237, %233
  %241 = xor i64 %239, %235
  %242 = and i64 %240, 4294967295
  %243 = lshr i64 %240, 32
  %244 = mul nuw i64 %242, %243
  %245 = add i64 %244, %206
  %246 = and i64 %241, 4294967295
  %247 = lshr i64 %241, 32
  %248 = mul nuw i64 %246, %247
  %249 = add i64 %205, %248
  %250 = add i64 %245, %235
  %251 = add i64 %249, %233
  %252 = getelementptr inbounds nuw i8, ptr %211, i32 32
  %253 = load i64, ptr %252, align 1
  %254 = getelementptr inbounds nuw i8, ptr %211, i32 40
  %255 = load i64, ptr %254, align 1
  %256 = getelementptr inbounds nuw i8, ptr %213, i32 32
  %257 = load i64, ptr %256, align 1
  %258 = getelementptr inbounds nuw i8, ptr %213, i32 40
  %259 = load i64, ptr %258, align 1
  %260 = xor i64 %257, %253
  %261 = xor i64 %259, %255
  %262 = and i64 %260, 4294967295
  %263 = lshr i64 %260, 32
  %264 = mul nuw i64 %262, %263
  %265 = add i64 %264, %204
  %266 = and i64 %261, 4294967295
  %267 = lshr i64 %261, 32
  %268 = mul nuw i64 %266, %267
  %269 = add i64 %203, %268
  %270 = add i64 %265, %255
  %271 = add i64 %269, %253
  %272 = getelementptr inbounds nuw i8, ptr %211, i32 48
  %273 = load i64, ptr %272, align 1
  %274 = getelementptr inbounds nuw i8, ptr %211, i32 56
  %275 = load i64, ptr %274, align 1
  %276 = getelementptr inbounds nuw i8, ptr %213, i32 48
  %277 = load i64, ptr %276, align 1
  %278 = getelementptr inbounds nuw i8, ptr %213, i32 56
  %279 = load i64, ptr %278, align 1
  %280 = xor i64 %277, %273
  %281 = xor i64 %279, %275
  %282 = and i64 %280, 4294967295
  %283 = lshr i64 %280, 32
  %284 = mul nuw i64 %282, %283
  %285 = add i64 %284, %202
  %286 = and i64 %281, 4294967295
  %287 = lshr i64 %281, 32
  %288 = mul nuw i64 %286, %287
  %289 = add i64 %201, %288
  %290 = add i64 %285, %275
  %291 = add i64 %289, %273
  %292 = add nuw i32 %209, 1
  %293 = icmp eq i32 %292, %199
  br i1 %293, label %388, label %200

294:                                              ; preds = %26, %294
  %295 = phi i64 [ %385, %294 ], [ %22, %26 ]
  %296 = phi i64 [ %384, %294 ], [ %20, %26 ]
  %297 = phi i64 [ %365, %294 ], [ %18, %26 ]
  %298 = phi i64 [ %364, %294 ], [ %16, %26 ]
  %299 = phi i64 [ %345, %294 ], [ %14, %26 ]
  %300 = phi i64 [ %344, %294 ], [ %12, %26 ]
  %301 = phi i64 [ %325, %294 ], [ %10, %26 ]
  %302 = phi i64 [ %324, %294 ], [ %8, %26 ]
  %303 = phi i32 [ %386, %294 ], [ 0, %26 ]
  %304 = shl i32 %303, 6
  %305 = getelementptr inbounds nuw i8, ptr %32, i32 %304
  %306 = shl i32 %303, 3
  %307 = getelementptr inbounds nuw i8, ptr %40, i32 %306
  %308 = load i64, ptr %305, align 1
  %309 = getelementptr inbounds nuw i8, ptr %305, i32 8
  %310 = load i64, ptr %309, align 1
  %311 = load i64, ptr %307, align 1
  %312 = getelementptr inbounds nuw i8, ptr %307, i32 8
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %311, %308
  %315 = xor i64 %313, %310
  %316 = and i64 %314, 4294967295
  %317 = lshr i64 %314, 32
  %318 = mul nuw i64 %316, %317
  %319 = add i64 %318, %302
  %320 = and i64 %315, 4294967295
  %321 = lshr i64 %315, 32
  %322 = mul nuw i64 %320, %321
  %323 = add i64 %301, %322
  %324 = add i64 %319, %310
  %325 = add i64 %323, %308
  %326 = getelementptr inbounds nuw i8, ptr %305, i32 16
  %327 = load i64, ptr %326, align 1
  %328 = getelementptr inbounds nuw i8, ptr %305, i32 24
  %329 = load i64, ptr %328, align 1
  %330 = getelementptr inbounds nuw i8, ptr %307, i32 16
  %331 = load i64, ptr %330, align 1
  %332 = getelementptr inbounds nuw i8, ptr %307, i32 24
  %333 = load i64, ptr %332, align 1
  %334 = xor i64 %331, %327
  %335 = xor i64 %333, %329
  %336 = and i64 %334, 4294967295
  %337 = lshr i64 %334, 32
  %338 = mul nuw i64 %336, %337
  %339 = add i64 %338, %300
  %340 = and i64 %335, 4294967295
  %341 = lshr i64 %335, 32
  %342 = mul nuw i64 %340, %341
  %343 = add i64 %299, %342
  %344 = add i64 %339, %329
  %345 = add i64 %343, %327
  %346 = getelementptr inbounds nuw i8, ptr %305, i32 32
  %347 = load i64, ptr %346, align 1
  %348 = getelementptr inbounds nuw i8, ptr %305, i32 40
  %349 = load i64, ptr %348, align 1
  %350 = getelementptr inbounds nuw i8, ptr %307, i32 32
  %351 = load i64, ptr %350, align 1
  %352 = getelementptr inbounds nuw i8, ptr %307, i32 40
  %353 = load i64, ptr %352, align 1
  %354 = xor i64 %351, %347
  %355 = xor i64 %353, %349
  %356 = and i64 %354, 4294967295
  %357 = lshr i64 %354, 32
  %358 = mul nuw i64 %356, %357
  %359 = add i64 %358, %298
  %360 = and i64 %355, 4294967295
  %361 = lshr i64 %355, 32
  %362 = mul nuw i64 %360, %361
  %363 = add i64 %297, %362
  %364 = add i64 %359, %349
  %365 = add i64 %363, %347
  %366 = getelementptr inbounds nuw i8, ptr %305, i32 48
  %367 = load i64, ptr %366, align 1
  %368 = getelementptr inbounds nuw i8, ptr %305, i32 56
  %369 = load i64, ptr %368, align 1
  %370 = getelementptr inbounds nuw i8, ptr %307, i32 48
  %371 = load i64, ptr %370, align 1
  %372 = getelementptr inbounds nuw i8, ptr %307, i32 56
  %373 = load i64, ptr %372, align 1
  %374 = xor i64 %371, %367
  %375 = xor i64 %373, %369
  %376 = and i64 %374, 4294967295
  %377 = lshr i64 %374, 32
  %378 = mul nuw i64 %376, %377
  %379 = add i64 %378, %296
  %380 = and i64 %375, 4294967295
  %381 = lshr i64 %375, 32
  %382 = mul nuw i64 %380, %381
  %383 = add i64 %295, %382
  %384 = add i64 %379, %369
  %385 = add i64 %383, %367
  %386 = add nuw nsw i32 %303, 1
  %387 = icmp eq i32 %386, %27
  br i1 %387, label %388, label %294

388:                                              ; preds = %200, %294, %137
  %389 = phi i64 [ %193, %137 ], [ %385, %294 ], [ %291, %200 ]
  %390 = phi i64 [ %187, %137 ], [ %384, %294 ], [ %290, %200 ]
  %391 = phi i64 [ %181, %137 ], [ %365, %294 ], [ %271, %200 ]
  %392 = phi i64 [ %175, %137 ], [ %364, %294 ], [ %270, %200 ]
  %393 = phi i64 [ %169, %137 ], [ %345, %294 ], [ %251, %200 ]
  %394 = phi i64 [ %163, %137 ], [ %344, %294 ], [ %250, %200 ]
  %395 = phi i64 [ %157, %137 ], [ %325, %294 ], [ %231, %200 ]
  %396 = phi i64 [ %151, %137 ], [ %324, %294 ], [ %230, %200 ]
  %397 = and i32 %24, 63
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %577, label %399

399:                                              ; preds = %388
  %400 = getelementptr inbounds nuw i8, ptr %32, i32 %24
  %401 = getelementptr inbounds i8, ptr %400, i32 -64
  %402 = getelementptr inbounds nuw i8, ptr %34, i32 %36
  %403 = getelementptr inbounds i8, ptr %402, i32 -7
  %404 = load i64, ptr %401, align 1
  %405 = getelementptr inbounds i8, ptr %400, i32 -56
  %406 = load i64, ptr %405, align 1
  %407 = load i64, ptr %403, align 1
  %408 = getelementptr inbounds nuw i8, ptr %402, i32 1
  %409 = load i64, ptr %408, align 1
  %410 = xor i64 %407, %404
  %411 = xor i64 %409, %406
  %412 = and i64 %410, 4294967295
  %413 = lshr i64 %410, 32
  %414 = mul nuw i64 %412, %413
  %415 = add i64 %414, %396
  %416 = and i64 %411, 4294967295
  %417 = lshr i64 %411, 32
  %418 = mul nuw i64 %416, %417
  %419 = add i64 %395, %418
  %420 = add i64 %415, %406
  %421 = add i64 %419, %404
  %422 = getelementptr inbounds i8, ptr %400, i32 -48
  %423 = load i64, ptr %422, align 1
  %424 = getelementptr inbounds i8, ptr %400, i32 -40
  %425 = load i64, ptr %424, align 1
  %426 = getelementptr inbounds nuw i8, ptr %402, i32 9
  %427 = load i64, ptr %426, align 1
  %428 = getelementptr inbounds nuw i8, ptr %402, i32 17
  %429 = load i64, ptr %428, align 1
  %430 = xor i64 %427, %423
  %431 = xor i64 %429, %425
  %432 = and i64 %430, 4294967295
  %433 = lshr i64 %430, 32
  %434 = mul nuw i64 %432, %433
  %435 = add i64 %434, %394
  %436 = and i64 %431, 4294967295
  %437 = lshr i64 %431, 32
  %438 = mul nuw i64 %436, %437
  %439 = add i64 %393, %438
  %440 = add i64 %435, %425
  %441 = add i64 %439, %423
  %442 = getelementptr inbounds i8, ptr %400, i32 -32
  %443 = load i64, ptr %442, align 1
  %444 = getelementptr inbounds i8, ptr %400, i32 -24
  %445 = load i64, ptr %444, align 1
  %446 = getelementptr inbounds nuw i8, ptr %402, i32 25
  %447 = load i64, ptr %446, align 1
  %448 = getelementptr inbounds nuw i8, ptr %402, i32 33
  %449 = load i64, ptr %448, align 1
  %450 = xor i64 %447, %443
  %451 = xor i64 %449, %445
  %452 = and i64 %450, 4294967295
  %453 = lshr i64 %450, 32
  %454 = mul nuw i64 %452, %453
  %455 = add i64 %454, %392
  %456 = and i64 %451, 4294967295
  %457 = lshr i64 %451, 32
  %458 = mul nuw i64 %456, %457
  %459 = add i64 %391, %458
  %460 = add i64 %455, %445
  %461 = add i64 %459, %443
  %462 = getelementptr inbounds i8, ptr %400, i32 -16
  %463 = load i64, ptr %462, align 1
  %464 = getelementptr inbounds i8, ptr %400, i32 -8
  %465 = load i64, ptr %464, align 1
  %466 = getelementptr inbounds nuw i8, ptr %402, i32 41
  %467 = load i64, ptr %466, align 1
  %468 = getelementptr inbounds nuw i8, ptr %402, i32 49
  %469 = load i64, ptr %468, align 1
  %470 = xor i64 %467, %463
  %471 = xor i64 %469, %465
  %472 = and i64 %470, 4294967295
  %473 = lshr i64 %470, 32
  %474 = mul nuw i64 %472, %473
  %475 = add i64 %474, %390
  %476 = and i64 %471, 4294967295
  %477 = lshr i64 %471, 32
  %478 = mul nuw i64 %476, %477
  %479 = add i64 %389, %478
  %480 = add i64 %475, %465
  %481 = add i64 %479, %463
  br label %577

482:                                              ; preds = %7
  %483 = icmp eq i32 %24, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %482
  %485 = getelementptr inbounds nuw i8, ptr %1, i32 560
  %486 = load ptr, ptr %485, align 16
  br label %577

487:                                              ; preds = %482
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #26
  %488 = sub nuw nsw i32 64, %24
  %489 = getelementptr inbounds nuw i8, ptr %1, i32 256
  %490 = getelementptr i8, ptr %1, i32 448
  %491 = getelementptr i8, ptr %490, i32 %24
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %3, ptr align 1 %491, i32 %488, i1 false)
  %492 = getelementptr inbounds nuw i8, ptr %3, i32 %488
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %492, ptr nonnull align 64 %489, i32 %24, i1 false)
  %493 = getelementptr inbounds nuw i8, ptr %1, i32 560
  %494 = load ptr, ptr %493, align 16
  %495 = getelementptr inbounds nuw i8, ptr %1, i32 524
  %496 = load i32, ptr %495, align 4
  %497 = getelementptr inbounds nuw i8, ptr %494, i32 %496
  %498 = getelementptr inbounds i8, ptr %497, i32 -7
  %499 = load i64, ptr %3, align 8
  %500 = getelementptr inbounds nuw i8, ptr %3, i32 8
  %501 = load i64, ptr %500, align 8
  %502 = load i64, ptr %498, align 1
  %503 = getelementptr inbounds nuw i8, ptr %497, i32 1
  %504 = load i64, ptr %503, align 1
  %505 = xor i64 %502, %499
  %506 = xor i64 %504, %501
  %507 = and i64 %505, 4294967295
  %508 = lshr i64 %505, 32
  %509 = mul nuw i64 %507, %508
  %510 = add i64 %509, %8
  %511 = and i64 %506, 4294967295
  %512 = lshr i64 %506, 32
  %513 = mul nuw i64 %511, %512
  %514 = add i64 %10, %513
  %515 = add i64 %510, %501
  %516 = add i64 %514, %499
  %517 = getelementptr inbounds nuw i8, ptr %3, i32 16
  %518 = load i64, ptr %517, align 8
  %519 = getelementptr inbounds nuw i8, ptr %3, i32 24
  %520 = load i64, ptr %519, align 8
  %521 = getelementptr inbounds nuw i8, ptr %497, i32 9
  %522 = load i64, ptr %521, align 1
  %523 = getelementptr inbounds nuw i8, ptr %497, i32 17
  %524 = load i64, ptr %523, align 1
  %525 = xor i64 %522, %518
  %526 = xor i64 %524, %520
  %527 = and i64 %525, 4294967295
  %528 = lshr i64 %525, 32
  %529 = mul nuw i64 %527, %528
  %530 = add i64 %529, %12
  %531 = and i64 %526, 4294967295
  %532 = lshr i64 %526, 32
  %533 = mul nuw i64 %531, %532
  %534 = add i64 %14, %533
  %535 = add i64 %530, %520
  %536 = add i64 %534, %518
  %537 = getelementptr inbounds nuw i8, ptr %3, i32 32
  %538 = load i64, ptr %537, align 8
  %539 = getelementptr inbounds nuw i8, ptr %3, i32 40
  %540 = load i64, ptr %539, align 8
  %541 = getelementptr inbounds nuw i8, ptr %497, i32 25
  %542 = load i64, ptr %541, align 1
  %543 = getelementptr inbounds nuw i8, ptr %497, i32 33
  %544 = load i64, ptr %543, align 1
  %545 = xor i64 %542, %538
  %546 = xor i64 %544, %540
  %547 = and i64 %545, 4294967295
  %548 = lshr i64 %545, 32
  %549 = mul nuw i64 %547, %548
  %550 = add i64 %549, %16
  %551 = and i64 %546, 4294967295
  %552 = lshr i64 %546, 32
  %553 = mul nuw i64 %551, %552
  %554 = add i64 %18, %553
  %555 = add i64 %550, %540
  %556 = add i64 %554, %538
  %557 = getelementptr inbounds nuw i8, ptr %3, i32 48
  %558 = load i64, ptr %557, align 8
  %559 = getelementptr inbounds nuw i8, ptr %3, i32 56
  %560 = load i64, ptr %559, align 8
  %561 = getelementptr inbounds nuw i8, ptr %497, i32 41
  %562 = load i64, ptr %561, align 1
  %563 = getelementptr inbounds nuw i8, ptr %497, i32 49
  %564 = load i64, ptr %563, align 1
  %565 = xor i64 %562, %558
  %566 = xor i64 %564, %560
  %567 = and i64 %565, 4294967295
  %568 = lshr i64 %565, 32
  %569 = mul nuw i64 %567, %568
  %570 = add i64 %569, %20
  %571 = and i64 %566, 4294967295
  %572 = lshr i64 %566, 32
  %573 = mul nuw i64 %571, %572
  %574 = add i64 %22, %573
  %575 = add i64 %570, %560
  %576 = add i64 %574, %558
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #26
  br label %577

577:                                              ; preds = %484, %399, %388, %487
  %578 = phi ptr [ %34, %388 ], [ %34, %399 ], [ %486, %484 ], [ %494, %487 ]
  %579 = phi i64 [ %389, %388 ], [ %481, %399 ], [ %22, %484 ], [ %576, %487 ]
  %580 = phi i64 [ %390, %388 ], [ %480, %399 ], [ %20, %484 ], [ %575, %487 ]
  %581 = phi i64 [ %391, %388 ], [ %461, %399 ], [ %18, %484 ], [ %556, %487 ]
  %582 = phi i64 [ %392, %388 ], [ %460, %399 ], [ %16, %484 ], [ %555, %487 ]
  %583 = phi i64 [ %393, %388 ], [ %441, %399 ], [ %14, %484 ], [ %536, %487 ]
  %584 = phi i64 [ %394, %388 ], [ %440, %399 ], [ %12, %484 ], [ %535, %487 ]
  %585 = phi i64 [ %395, %388 ], [ %421, %399 ], [ %10, %484 ], [ %516, %487 ]
  %586 = phi i64 [ %396, %388 ], [ %420, %399 ], [ %8, %484 ], [ %515, %487 ]
  %587 = getelementptr inbounds nuw i8, ptr %578, i32 11
  %588 = mul i64 %5, -7046029288634856825
  %589 = load i64, ptr %587, align 1
  %590 = xor i64 %589, %586
  %591 = getelementptr inbounds nuw i8, ptr %578, i32 19
  %592 = load i64, ptr %591, align 1
  %593 = xor i64 %592, %585
  %594 = lshr i64 %590, 32
  %595 = lshr i64 %593, 32
  %596 = mul nuw i64 %595, %594
  %597 = and i64 %590, 4294967295
  %598 = mul nuw i64 %595, %597
  %599 = and i64 %593, 4294967295
  %600 = mul nuw i64 %599, %594
  %601 = mul nuw i64 %599, %597
  %602 = shl i64 %598, 32
  %603 = add i64 %602, %601
  %604 = icmp ult i64 %603, %601
  %605 = zext i1 %604 to i64
  %606 = add i64 %598, %600
  %607 = shl i64 %606, 32
  %608 = add i64 %607, %601
  %609 = icmp ult i64 %608, %603
  %610 = zext i1 %609 to i64
  %611 = lshr i64 %598, 32
  %612 = add nuw i64 %611, %596
  %613 = lshr i64 %600, 32
  %614 = add nuw i64 %612, %613
  %615 = add nuw i64 %614, %605
  %616 = add nuw i64 %615, %610
  %617 = xor i64 %616, %608
  %618 = add i64 %617, %588
  %619 = getelementptr inbounds nuw i8, ptr %578, i32 27
  %620 = load i64, ptr %619, align 1
  %621 = xor i64 %620, %584
  %622 = getelementptr inbounds nuw i8, ptr %578, i32 35
  %623 = load i64, ptr %622, align 1
  %624 = xor i64 %623, %583
  %625 = lshr i64 %621, 32
  %626 = lshr i64 %624, 32
  %627 = mul nuw i64 %626, %625
  %628 = and i64 %621, 4294967295
  %629 = mul nuw i64 %626, %628
  %630 = and i64 %624, 4294967295
  %631 = mul nuw i64 %630, %625
  %632 = mul nuw i64 %630, %628
  %633 = shl i64 %629, 32
  %634 = add i64 %633, %632
  %635 = icmp ult i64 %634, %632
  %636 = zext i1 %635 to i64
  %637 = add i64 %629, %631
  %638 = shl i64 %637, 32
  %639 = add i64 %638, %632
  %640 = icmp ult i64 %639, %634
  %641 = zext i1 %640 to i64
  %642 = lshr i64 %629, 32
  %643 = add nuw i64 %642, %627
  %644 = lshr i64 %631, 32
  %645 = add nuw i64 %643, %644
  %646 = add nuw i64 %645, %636
  %647 = add nuw i64 %646, %641
  %648 = xor i64 %647, %639
  %649 = add i64 %618, %648
  %650 = getelementptr inbounds nuw i8, ptr %578, i32 43
  %651 = load i64, ptr %650, align 1
  %652 = xor i64 %651, %582
  %653 = getelementptr inbounds nuw i8, ptr %578, i32 51
  %654 = load i64, ptr %653, align 1
  %655 = xor i64 %654, %581
  %656 = lshr i64 %652, 32
  %657 = lshr i64 %655, 32
  %658 = mul nuw i64 %657, %656
  %659 = and i64 %652, 4294967295
  %660 = mul nuw i64 %657, %659
  %661 = and i64 %655, 4294967295
  %662 = mul nuw i64 %661, %656
  %663 = mul nuw i64 %661, %659
  %664 = shl i64 %660, 32
  %665 = add i64 %664, %663
  %666 = icmp ult i64 %665, %663
  %667 = zext i1 %666 to i64
  %668 = add i64 %660, %662
  %669 = shl i64 %668, 32
  %670 = add i64 %669, %663
  %671 = icmp ult i64 %670, %665
  %672 = zext i1 %671 to i64
  %673 = lshr i64 %660, 32
  %674 = add nuw i64 %673, %658
  %675 = lshr i64 %662, 32
  %676 = add nuw i64 %674, %675
  %677 = add nuw i64 %676, %667
  %678 = add nuw i64 %677, %672
  %679 = xor i64 %678, %670
  %680 = add i64 %649, %679
  %681 = getelementptr inbounds nuw i8, ptr %578, i32 59
  %682 = load i64, ptr %681, align 1
  %683 = xor i64 %682, %580
  %684 = getelementptr inbounds nuw i8, ptr %578, i32 67
  %685 = load i64, ptr %684, align 1
  %686 = xor i64 %685, %579
  %687 = lshr i64 %683, 32
  %688 = lshr i64 %686, 32
  %689 = mul nuw i64 %688, %687
  %690 = and i64 %683, 4294967295
  %691 = mul nuw i64 %688, %690
  %692 = and i64 %686, 4294967295
  %693 = mul nuw i64 %692, %687
  %694 = mul nuw i64 %692, %690
  %695 = shl i64 %691, 32
  %696 = add i64 %695, %694
  %697 = icmp ult i64 %696, %694
  %698 = zext i1 %697 to i64
  %699 = add i64 %691, %693
  %700 = shl i64 %699, 32
  %701 = add i64 %700, %694
  %702 = icmp ult i64 %701, %696
  %703 = zext i1 %702 to i64
  %704 = lshr i64 %691, 32
  %705 = add nuw i64 %704, %689
  %706 = lshr i64 %693, 32
  %707 = add nuw i64 %705, %706
  %708 = add nuw i64 %707, %698
  %709 = add nuw i64 %708, %703
  %710 = xor i64 %709, %701
  %711 = add i64 %680, %710
  %712 = lshr i64 %711, 37
  %713 = xor i64 %712, %711
  %714 = mul i64 %713, 1609587929392839161
  %715 = lshr i64 %714, 32
  %716 = xor i64 %715, %714
  %717 = getelementptr inbounds nuw i8, ptr %1, i32 524
  %718 = load i32, ptr %717, align 4
  %719 = getelementptr inbounds nuw i8, ptr %578, i32 %718
  %720 = getelementptr inbounds i8, ptr %719, i32 -11
  %721 = mul i64 %5, -4417276706812531889
  %722 = xor i64 %721, -1
  %723 = load i64, ptr %720, align 1
  %724 = xor i64 %723, %586
  %725 = getelementptr inbounds i8, ptr %719, i32 -3
  %726 = load i64, ptr %725, align 1
  %727 = xor i64 %726, %585
  %728 = lshr i64 %724, 32
  %729 = lshr i64 %727, 32
  %730 = mul nuw i64 %729, %728
  %731 = and i64 %724, 4294967295
  %732 = mul nuw i64 %729, %731
  %733 = and i64 %727, 4294967295
  %734 = mul nuw i64 %733, %728
  %735 = mul nuw i64 %733, %731
  %736 = shl i64 %732, 32
  %737 = add i64 %736, %735
  %738 = icmp ult i64 %737, %735
  %739 = zext i1 %738 to i64
  %740 = add i64 %732, %734
  %741 = shl i64 %740, 32
  %742 = add i64 %741, %735
  %743 = icmp ult i64 %742, %737
  %744 = zext i1 %743 to i64
  %745 = lshr i64 %732, 32
  %746 = add nuw i64 %745, %730
  %747 = lshr i64 %734, 32
  %748 = add nuw i64 %746, %747
  %749 = add nuw i64 %748, %739
  %750 = add nuw i64 %749, %744
  %751 = xor i64 %750, %742
  %752 = add i64 %751, %722
  %753 = getelementptr inbounds nuw i8, ptr %719, i32 5
  %754 = load i64, ptr %753, align 1
  %755 = xor i64 %754, %584
  %756 = getelementptr inbounds nuw i8, ptr %719, i32 13
  %757 = load i64, ptr %756, align 1
  %758 = xor i64 %757, %583
  %759 = lshr i64 %755, 32
  %760 = lshr i64 %758, 32
  %761 = mul nuw i64 %760, %759
  %762 = and i64 %755, 4294967295
  %763 = mul nuw i64 %760, %762
  %764 = and i64 %758, 4294967295
  %765 = mul nuw i64 %764, %759
  %766 = mul nuw i64 %764, %762
  %767 = shl i64 %763, 32
  %768 = add i64 %767, %766
  %769 = icmp ult i64 %768, %766
  %770 = zext i1 %769 to i64
  %771 = add i64 %763, %765
  %772 = shl i64 %771, 32
  %773 = add i64 %772, %766
  %774 = icmp ult i64 %773, %768
  %775 = zext i1 %774 to i64
  %776 = lshr i64 %763, 32
  %777 = add nuw i64 %776, %761
  %778 = lshr i64 %765, 32
  %779 = add nuw i64 %777, %778
  %780 = add nuw i64 %779, %770
  %781 = add nuw i64 %780, %775
  %782 = xor i64 %781, %773
  %783 = add i64 %752, %782
  %784 = getelementptr inbounds nuw i8, ptr %719, i32 21
  %785 = load i64, ptr %784, align 1
  %786 = xor i64 %785, %582
  %787 = getelementptr inbounds nuw i8, ptr %719, i32 29
  %788 = load i64, ptr %787, align 1
  %789 = xor i64 %788, %581
  %790 = lshr i64 %786, 32
  %791 = lshr i64 %789, 32
  %792 = mul nuw i64 %791, %790
  %793 = and i64 %786, 4294967295
  %794 = mul nuw i64 %791, %793
  %795 = and i64 %789, 4294967295
  %796 = mul nuw i64 %795, %790
  %797 = mul nuw i64 %795, %793
  %798 = shl i64 %794, 32
  %799 = add i64 %798, %797
  %800 = icmp ult i64 %799, %797
  %801 = zext i1 %800 to i64
  %802 = add i64 %794, %796
  %803 = shl i64 %802, 32
  %804 = add i64 %803, %797
  %805 = icmp ult i64 %804, %799
  %806 = zext i1 %805 to i64
  %807 = lshr i64 %794, 32
  %808 = add nuw i64 %807, %792
  %809 = lshr i64 %796, 32
  %810 = add nuw i64 %808, %809
  %811 = add nuw i64 %810, %801
  %812 = add nuw i64 %811, %806
  %813 = xor i64 %812, %804
  %814 = add i64 %783, %813
  %815 = getelementptr inbounds nuw i8, ptr %719, i32 37
  %816 = load i64, ptr %815, align 1
  %817 = xor i64 %816, %580
  %818 = getelementptr inbounds nuw i8, ptr %719, i32 45
  %819 = load i64, ptr %818, align 1
  %820 = xor i64 %819, %579
  %821 = lshr i64 %817, 32
  %822 = lshr i64 %820, 32
  %823 = mul nuw i64 %822, %821
  %824 = and i64 %817, 4294967295
  %825 = mul nuw i64 %822, %824
  %826 = and i64 %820, 4294967295
  %827 = mul nuw i64 %826, %821
  %828 = mul nuw i64 %826, %824
  %829 = shl i64 %825, 32
  %830 = add i64 %829, %828
  %831 = icmp ult i64 %830, %828
  %832 = zext i1 %831 to i64
  %833 = add i64 %825, %827
  %834 = shl i64 %833, 32
  %835 = add i64 %834, %828
  %836 = icmp ult i64 %835, %830
  %837 = zext i1 %836 to i64
  %838 = lshr i64 %825, 32
  %839 = add nuw i64 %838, %823
  %840 = lshr i64 %827, 32
  %841 = add nuw i64 %839, %840
  %842 = add nuw i64 %841, %832
  %843 = add nuw i64 %842, %837
  %844 = xor i64 %843, %835
  %845 = add i64 %814, %844
  %846 = lshr i64 %845, 37
  %847 = xor i64 %846, %845
  %848 = mul i64 %847, 1609587929392839161
  %849 = lshr i64 %848, 32
  %850 = xor i64 %849, %848
  store i64 %716, ptr %0, align 8
  %851 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %850, ptr %851, align 8
  br label %1791

852:                                              ; preds = %2
  %853 = getelementptr inbounds nuw i8, ptr %1, i32 544
  %854 = load i64, ptr %853, align 32
  %855 = icmp eq i64 %854, 0
  %856 = getelementptr inbounds nuw i8, ptr %1, i32 256
  %857 = trunc nuw nsw i64 %5 to i32
  br i1 %855, label %1315, label %858

858:                                              ; preds = %852
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %859 = icmp samesign ult i32 %857, 17
  br i1 %859, label %860, label %1010

860:                                              ; preds = %858
  %861 = icmp samesign ugt i32 %857, 8
  br i1 %861, label %862, label %929

862:                                              ; preds = %860
  %863 = load i64, ptr %856, align 1, !noalias !92
  %864 = add i64 %854, -4734510112055689544
  %865 = xor i64 %863, %864
  %866 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %867 = getelementptr inbounds i8, ptr %866, i32 -8
  %868 = load i64, ptr %867, align 1, !noalias !92
  %869 = sub i64 2066345149520216444, %854
  %870 = xor i64 %868, %869
  %871 = xor i64 %865, %870
  %872 = lshr i64 %871, 32
  %873 = mul nuw i64 %872, 2654435761
  %874 = and i64 %871, 4294967295
  %875 = mul nuw i64 %874, 2654435761
  %876 = mul nuw i64 %872, 2246822535
  %877 = mul nuw i64 %874, 2246822535
  %878 = mul i64 %874, -7046029288634856825
  %879 = icmp ult i64 %878, %877
  %880 = zext i1 %879 to i64
  %881 = add i64 %875, %876
  %882 = shl i64 %881, 32
  %883 = add i64 %882, %877
  %884 = icmp ult i64 %883, %878
  %885 = zext i1 %884 to i64
  %886 = lshr i64 %875, 32
  %887 = lshr i64 %876, 32
  %888 = mul i64 %870, -7046029288634856825
  %889 = add i64 %873, %888
  %890 = add i64 %889, %886
  %891 = add i64 %890, %887
  %892 = add i64 %891, %880
  %893 = add i64 %892, %885
  %894 = lshr i64 %893, 32
  %895 = lshr i64 %883, 32
  %896 = mul nuw i64 %895, 3266489917
  %897 = and i64 %877, 4294967295
  %898 = xor i64 %894, %897
  %899 = mul nuw i64 %898, 3266489917
  %900 = mul nuw nsw i64 %895, 668265295
  %901 = mul nuw nsw i64 %898, 668265295
  %902 = mul i64 %898, -4417276706812531889
  %903 = icmp ult i64 %902, %901
  %904 = zext i1 %903 to i64
  %905 = add nuw i64 %899, %900
  %906 = shl i64 %905, 32
  %907 = add i64 %906, %901
  %908 = icmp ult i64 %907, %902
  %909 = zext i1 %908 to i64
  %910 = lshr i64 %899, 32
  %911 = lshr i64 %900, 32
  %912 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %913 = mul i64 %893, -4417276706812531889
  %914 = add nuw i64 %911, %896
  %915 = add i64 %914, %913
  %916 = add i64 %915, %910
  %917 = add i64 %916, %904
  %918 = add i64 %917, %909
  %919 = lshr i64 %907, 37
  %920 = xor i64 %919, %907
  %921 = mul i64 %920, 1609587929392839161
  %922 = lshr i64 %921, 32
  %923 = xor i64 %922, %921
  store i64 %923, ptr %0, align 8, !alias.scope !95
  %924 = lshr i64 %918, 37
  %925 = xor i64 %924, %918
  %926 = mul i64 %925, 1609587929392839161
  %927 = lshr i64 %926, 32
  %928 = xor i64 %927, %926
  store i64 %928, ptr %912, align 8, !alias.scope !95
  br label %1791

929:                                              ; preds = %860
  %930 = icmp samesign ugt i32 %857, 3
  br i1 %930, label %931, label %970

931:                                              ; preds = %929
  %932 = load i32, ptr %856, align 1, !noalias !92
  %933 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %934 = getelementptr inbounds i8, ptr %933, i32 -4
  %935 = load i32, ptr %934, align 1, !noalias !92
  %936 = zext i32 %932 to i64
  %937 = zext i32 %935 to i64
  %938 = shl nuw i64 %937, 32
  %939 = or disjoint i64 %938, %936
  %940 = tail call noundef i64 @llvm.bswap.i64(i64 %939)
  %941 = add i64 %854, -4734510112055689544
  %942 = xor i64 %939, %941
  %943 = sub i64 2066345149520216444, %854
  %944 = xor i64 %940, %943
  %945 = lshr i64 %942, 51
  %946 = xor i64 %945, %942
  %947 = mul i64 %946, 2654435761
  %948 = add i64 %947, %5
  %949 = lshr i64 %948, 47
  %950 = xor i64 %949, %948
  %951 = mul i64 %950, -4417276706812531889
  %952 = lshr i64 %944, 47
  %953 = xor i64 %952, %944
  %954 = mul i64 %953, -7046029288634856825
  %955 = sub i64 %954, %5
  %956 = lshr i64 %955, 43
  %957 = xor i64 %956, %955
  %958 = mul i64 %957, -8796714831421723037
  %959 = lshr i64 %951, 37
  %960 = xor i64 %959, %951
  %961 = mul i64 %960, 1609587929392839161
  %962 = lshr i64 %961, 32
  %963 = xor i64 %962, %961
  store i64 %963, ptr %0, align 8, !alias.scope !98
  %964 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %965 = lshr i64 %958, 37
  %966 = xor i64 %965, %958
  %967 = mul i64 %966, 1609587929392839161
  %968 = lshr i64 %967, 32
  %969 = xor i64 %968, %967
  store i64 %969, ptr %964, align 8, !alias.scope !98
  br label %1791

970:                                              ; preds = %929
  %971 = icmp eq i32 %857, 0
  br i1 %971, label %1009, label %972

972:                                              ; preds = %970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %973 = load i8, ptr %856, align 1, !noalias !104
  %974 = lshr i32 %857, 1
  %975 = getelementptr inbounds nuw i8, ptr %856, i32 %974
  %976 = load i8, ptr %975, align 1, !noalias !104
  %977 = getelementptr i8, ptr %856, i32 %857
  %978 = getelementptr i8, ptr %977, i32 -1
  %979 = load i8, ptr %978, align 1, !noalias !104
  %980 = zext i8 %973 to i32
  %981 = zext i8 %976 to i32
  %982 = shl nuw nsw i32 %981, 8
  %983 = or disjoint i32 %982, %980
  %984 = zext i8 %979 to i32
  %985 = shl nuw nsw i32 %984, 16
  %986 = or disjoint i32 %983, %985
  %987 = shl nuw nsw i32 %857, 24
  %988 = or disjoint i32 %986, %987
  %989 = tail call noundef i32 @llvm.bswap.i32(i32 %988)
  %990 = zext nneg i32 %988 to i64
  %991 = add i64 %854, 963444408
  %992 = xor i64 %991, %990
  %993 = zext i32 %989 to i64
  %994 = sub i64 3192628259, %854
  %995 = xor i64 %994, %993
  %996 = mul i64 %992, -7046029288634856825
  %997 = mul i64 %995, -4417276706812531889
  %998 = lshr i64 %996, 37
  %999 = xor i64 %998, %996
  %1000 = mul i64 %999, 1609587929392839161
  %1001 = lshr i64 %1000, 32
  %1002 = xor i64 %1001, %1000
  store i64 %1002, ptr %0, align 8, !alias.scope !104
  %1003 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1004 = lshr i64 %997, 37
  %1005 = xor i64 %1004, %997
  %1006 = mul i64 %1005, 1609587929392839161
  %1007 = lshr i64 %1006, 32
  %1008 = xor i64 %1007, %1006
  store i64 %1008, ptr %1003, align 8, !alias.scope !104
  br label %1791

1009:                                             ; preds = %970
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !105
  br label %1791

1010:                                             ; preds = %858
  %1011 = icmp samesign ult i32 %857, 129
  br i1 %1011, label %1012, label %1314

1012:                                             ; preds = %1010
  %1013 = mul i64 %5, -7046029288634856825
  %1014 = icmp samesign ugt i32 %857, 32
  br i1 %1014, label %1015, label %1226

1015:                                             ; preds = %1012
  %1016 = icmp samesign ugt i32 %857, 64
  br i1 %1016, label %1017, label %1156

1017:                                             ; preds = %1015
  %1018 = icmp samesign ugt i32 %857, 96
  br i1 %1018, label %1019, label %1086

1019:                                             ; preds = %1017
  %1020 = getelementptr inbounds nuw i8, ptr %1, i32 304
  %1021 = load i64, ptr %1020, align 1, !noalias !92
  %1022 = getelementptr inbounds nuw i8, ptr %1, i32 312
  %1023 = load i64, ptr %1022, align 1, !noalias !92
  %1024 = add i64 %854, 4554437623014685352
  %1025 = xor i64 %1021, %1024
  %1026 = sub i64 2111919702937427193, %854
  %1027 = xor i64 %1023, %1026
  %1028 = lshr i64 %1025, 32
  %1029 = lshr i64 %1027, 32
  %1030 = mul nuw i64 %1029, %1028
  %1031 = and i64 %1025, 4294967295
  %1032 = mul nuw i64 %1029, %1031
  %1033 = and i64 %1027, 4294967295
  %1034 = mul nuw i64 %1033, %1028
  %1035 = mul nuw i64 %1033, %1031
  %1036 = shl i64 %1032, 32
  %1037 = add i64 %1036, %1035
  %1038 = icmp ult i64 %1037, %1035
  %1039 = zext i1 %1038 to i64
  %1040 = add i64 %1032, %1034
  %1041 = shl i64 %1040, 32
  %1042 = add i64 %1041, %1035
  %1043 = icmp ult i64 %1042, %1037
  %1044 = zext i1 %1043 to i64
  %1045 = lshr i64 %1032, 32
  %1046 = add nuw i64 %1045, %1030
  %1047 = lshr i64 %1034, 32
  %1048 = add nuw i64 %1046, %1047
  %1049 = add nuw i64 %1048, %1039
  %1050 = add nuw i64 %1049, %1044
  %1051 = xor i64 %1050, %1042
  %1052 = add i64 %1051, %1013
  %1053 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %1054 = getelementptr inbounds i8, ptr %1053, i32 -64
  %1055 = load i64, ptr %1054, align 1, !noalias !92
  %1056 = getelementptr inbounds i8, ptr %1053, i32 -56
  %1057 = load i64, ptr %1056, align 1, !noalias !92
  %1058 = add i64 %854, 3556072174620004746
  %1059 = xor i64 %1055, %1058
  %1060 = sub i64 7238261902898274248, %854
  %1061 = xor i64 %1057, %1060
  %1062 = lshr i64 %1059, 32
  %1063 = lshr i64 %1061, 32
  %1064 = mul nuw i64 %1063, %1062
  %1065 = and i64 %1059, 4294967295
  %1066 = mul nuw i64 %1063, %1065
  %1067 = and i64 %1061, 4294967295
  %1068 = mul nuw i64 %1067, %1062
  %1069 = mul nuw i64 %1067, %1065
  %1070 = shl i64 %1066, 32
  %1071 = add i64 %1070, %1069
  %1072 = icmp ult i64 %1071, %1069
  %1073 = zext i1 %1072 to i64
  %1074 = add i64 %1066, %1068
  %1075 = shl i64 %1074, 32
  %1076 = add i64 %1075, %1069
  %1077 = icmp ult i64 %1076, %1071
  %1078 = zext i1 %1077 to i64
  %1079 = lshr i64 %1066, 32
  %1080 = add nuw i64 %1079, %1064
  %1081 = lshr i64 %1068, 32
  %1082 = add nuw i64 %1080, %1081
  %1083 = add nuw i64 %1082, %1073
  %1084 = add nuw i64 %1083, %1078
  %1085 = xor i64 %1084, %1076
  br label %1086

1086:                                             ; preds = %1019, %1017
  %1087 = phi i64 [ %1085, %1019 ], [ 0, %1017 ]
  %1088 = phi i64 [ %1052, %1019 ], [ %1013, %1017 ]
  %1089 = getelementptr inbounds nuw i8, ptr %1, i32 288
  %1090 = load i64, ptr %1089, align 1, !noalias !92
  %1091 = getelementptr inbounds nuw i8, ptr %1, i32 296
  %1092 = load i64, ptr %1091, align 1, !noalias !92
  %1093 = add i64 %854, -3818837453329782724
  %1094 = xor i64 %1090, %1093
  %1095 = sub i64 -6688317018830679928, %854
  %1096 = xor i64 %1092, %1095
  %1097 = lshr i64 %1094, 32
  %1098 = lshr i64 %1096, 32
  %1099 = mul nuw i64 %1098, %1097
  %1100 = and i64 %1094, 4294967295
  %1101 = mul nuw i64 %1098, %1100
  %1102 = and i64 %1096, 4294967295
  %1103 = mul nuw i64 %1102, %1097
  %1104 = mul nuw i64 %1102, %1100
  %1105 = shl i64 %1101, 32
  %1106 = add i64 %1105, %1104
  %1107 = icmp ult i64 %1106, %1104
  %1108 = zext i1 %1107 to i64
  %1109 = add i64 %1101, %1103
  %1110 = shl i64 %1109, 32
  %1111 = add i64 %1110, %1104
  %1112 = icmp ult i64 %1111, %1106
  %1113 = zext i1 %1112 to i64
  %1114 = lshr i64 %1101, 32
  %1115 = add nuw i64 %1114, %1099
  %1116 = lshr i64 %1103, 32
  %1117 = add nuw i64 %1115, %1116
  %1118 = add nuw i64 %1117, %1108
  %1119 = add nuw i64 %1118, %1113
  %1120 = xor i64 %1119, %1111
  %1121 = add i64 %1120, %1088
  %1122 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %1123 = getelementptr inbounds i8, ptr %1122, i32 -48
  %1124 = load i64, ptr %1123, align 1, !noalias !92
  %1125 = getelementptr inbounds i8, ptr %1122, i32 -40
  %1126 = load i64, ptr %1125, align 1, !noalias !92
  %1127 = add i64 %854, 5690594596133299313
  %1128 = xor i64 %1124, %1127
  %1129 = sub i64 -2833645246901970632, %854
  %1130 = xor i64 %1126, %1129
  %1131 = lshr i64 %1128, 32
  %1132 = lshr i64 %1130, 32
  %1133 = mul nuw i64 %1132, %1131
  %1134 = and i64 %1128, 4294967295
  %1135 = mul nuw i64 %1132, %1134
  %1136 = and i64 %1130, 4294967295
  %1137 = mul nuw i64 %1136, %1131
  %1138 = mul nuw i64 %1136, %1134
  %1139 = shl i64 %1135, 32
  %1140 = add i64 %1139, %1138
  %1141 = icmp ult i64 %1140, %1138
  %1142 = zext i1 %1141 to i64
  %1143 = add i64 %1135, %1137
  %1144 = shl i64 %1143, 32
  %1145 = add i64 %1144, %1138
  %1146 = icmp ult i64 %1145, %1140
  %1147 = zext i1 %1146 to i64
  %1148 = lshr i64 %1135, 32
  %1149 = add nuw i64 %1148, %1133
  %1150 = lshr i64 %1137, 32
  %1151 = add nuw i64 %1149, %1150
  %1152 = add nuw i64 %1151, %1142
  %1153 = add nuw i64 %1152, %1147
  %1154 = xor i64 %1153, %1145
  %1155 = add i64 %1154, %1087
  br label %1156

1156:                                             ; preds = %1086, %1015
  %1157 = phi i64 [ %1155, %1086 ], [ 0, %1015 ]
  %1158 = phi i64 [ %1121, %1086 ], [ %1013, %1015 ]
  %1159 = getelementptr inbounds nuw i8, ptr %1, i32 272
  %1160 = load i64, ptr %1159, align 1, !noalias !92
  %1161 = getelementptr inbounds nuw i8, ptr %1, i32 280
  %1162 = load i64, ptr %1161, align 1, !noalias !92
  %1163 = add i64 %854, 8711581037947681227
  %1164 = xor i64 %1160, %1163
  %1165 = sub i64 2410270004345854594, %854
  %1166 = xor i64 %1162, %1165
  %1167 = lshr i64 %1164, 32
  %1168 = lshr i64 %1166, 32
  %1169 = mul nuw i64 %1168, %1167
  %1170 = and i64 %1164, 4294967295
  %1171 = mul nuw i64 %1168, %1170
  %1172 = and i64 %1166, 4294967295
  %1173 = mul nuw i64 %1172, %1167
  %1174 = mul nuw i64 %1172, %1170
  %1175 = shl i64 %1171, 32
  %1176 = add i64 %1175, %1174
  %1177 = icmp ult i64 %1176, %1174
  %1178 = zext i1 %1177 to i64
  %1179 = add i64 %1171, %1173
  %1180 = shl i64 %1179, 32
  %1181 = add i64 %1180, %1174
  %1182 = icmp ult i64 %1181, %1176
  %1183 = zext i1 %1182 to i64
  %1184 = lshr i64 %1171, 32
  %1185 = add nuw i64 %1184, %1169
  %1186 = lshr i64 %1173, 32
  %1187 = add nuw i64 %1185, %1186
  %1188 = add nuw i64 %1187, %1178
  %1189 = add nuw i64 %1188, %1183
  %1190 = xor i64 %1189, %1181
  %1191 = add i64 %1190, %1158
  %1192 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %1193 = getelementptr inbounds i8, ptr %1192, i32 -32
  %1194 = load i64, ptr %1193, align 1, !noalias !92
  %1195 = getelementptr inbounds i8, ptr %1192, i32 -24
  %1196 = load i64, ptr %1195, align 1, !noalias !92
  %1197 = add i64 %854, -8204357891075471176
  %1198 = xor i64 %1194, %1197
  %1199 = sub i64 5487137525590930912, %854
  %1200 = xor i64 %1196, %1199
  %1201 = lshr i64 %1198, 32
  %1202 = lshr i64 %1200, 32
  %1203 = mul nuw i64 %1202, %1201
  %1204 = and i64 %1198, 4294967295
  %1205 = mul nuw i64 %1202, %1204
  %1206 = and i64 %1200, 4294967295
  %1207 = mul nuw i64 %1206, %1201
  %1208 = mul nuw i64 %1206, %1204
  %1209 = shl i64 %1205, 32
  %1210 = add i64 %1209, %1208
  %1211 = icmp ult i64 %1210, %1208
  %1212 = zext i1 %1211 to i64
  %1213 = add i64 %1205, %1207
  %1214 = shl i64 %1213, 32
  %1215 = add i64 %1214, %1208
  %1216 = icmp ult i64 %1215, %1210
  %1217 = zext i1 %1216 to i64
  %1218 = lshr i64 %1205, 32
  %1219 = add nuw i64 %1218, %1203
  %1220 = lshr i64 %1207, 32
  %1221 = add nuw i64 %1219, %1220
  %1222 = add nuw i64 %1221, %1212
  %1223 = add nuw i64 %1222, %1217
  %1224 = xor i64 %1223, %1215
  %1225 = add i64 %1224, %1157
  br label %1226

1226:                                             ; preds = %1156, %1012
  %1227 = phi i64 [ %1225, %1156 ], [ 0, %1012 ]
  %1228 = phi i64 [ %1191, %1156 ], [ %1013, %1012 ]
  %1229 = load i64, ptr %856, align 1, !noalias !92
  %1230 = getelementptr inbounds nuw i8, ptr %1, i32 264
  %1231 = load i64, ptr %1230, align 1, !noalias !92
  %1232 = add i64 %854, -4734510112055689544
  %1233 = xor i64 %1229, %1232
  %1234 = sub i64 2066345149520216444, %854
  %1235 = xor i64 %1231, %1234
  %1236 = lshr i64 %1233, 32
  %1237 = lshr i64 %1235, 32
  %1238 = mul nuw i64 %1237, %1236
  %1239 = and i64 %1233, 4294967295
  %1240 = mul nuw i64 %1237, %1239
  %1241 = and i64 %1235, 4294967295
  %1242 = mul nuw i64 %1241, %1236
  %1243 = mul nuw i64 %1241, %1239
  %1244 = shl i64 %1240, 32
  %1245 = add i64 %1244, %1243
  %1246 = icmp ult i64 %1245, %1243
  %1247 = zext i1 %1246 to i64
  %1248 = add i64 %1240, %1242
  %1249 = shl i64 %1248, 32
  %1250 = add i64 %1249, %1243
  %1251 = icmp ult i64 %1250, %1245
  %1252 = zext i1 %1251 to i64
  %1253 = lshr i64 %1240, 32
  %1254 = add nuw i64 %1253, %1238
  %1255 = lshr i64 %1242, 32
  %1256 = add nuw i64 %1254, %1255
  %1257 = add nuw i64 %1256, %1247
  %1258 = add nuw i64 %1257, %1252
  %1259 = xor i64 %1258, %1250
  %1260 = add i64 %1259, %1228
  %1261 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %1262 = getelementptr inbounds i8, ptr %1261, i32 -16
  %1263 = load i64, ptr %1262, align 1, !noalias !92
  %1264 = getelementptr inbounds i8, ptr %1261, i32 -8
  %1265 = load i64, ptr %1264, align 1, !noalias !92
  %1266 = add i64 %854, -2623469361688619810
  %1267 = xor i64 %1263, %1266
  %1268 = sub i64 2262974939099578482, %854
  %1269 = xor i64 %1265, %1268
  %1270 = lshr i64 %1267, 32
  %1271 = lshr i64 %1269, 32
  %1272 = mul nuw i64 %1271, %1270
  %1273 = and i64 %1267, 4294967295
  %1274 = mul nuw i64 %1271, %1273
  %1275 = and i64 %1269, 4294967295
  %1276 = mul nuw i64 %1275, %1270
  %1277 = mul nuw i64 %1275, %1273
  %1278 = shl i64 %1274, 32
  %1279 = add i64 %1278, %1277
  %1280 = icmp ult i64 %1279, %1277
  %1281 = zext i1 %1280 to i64
  %1282 = add i64 %1274, %1276
  %1283 = shl i64 %1282, 32
  %1284 = add i64 %1283, %1277
  %1285 = icmp ult i64 %1284, %1279
  %1286 = zext i1 %1285 to i64
  %1287 = lshr i64 %1274, 32
  %1288 = add nuw i64 %1287, %1272
  %1289 = lshr i64 %1276, 32
  %1290 = add nuw i64 %1288, %1289
  %1291 = add nuw i64 %1290, %1281
  %1292 = add nuw i64 %1291, %1286
  %1293 = xor i64 %1292, %1284
  %1294 = add i64 %1293, %1227
  %1295 = add i64 %1294, %1260
  %1296 = mul i64 %1260, -7046029288634856825
  %1297 = mul i64 %1294, -8796714831421723037
  %1298 = sub i64 %5, %854
  %1299 = mul i64 %1298, -4417276706812531889
  %1300 = add i64 %1296, %1299
  %1301 = add i64 %1300, %1297
  %1302 = lshr i64 %1295, 37
  %1303 = xor i64 %1302, %1295
  %1304 = mul i64 %1303, 1609587929392839161
  %1305 = lshr i64 %1304, 32
  %1306 = xor i64 %1305, %1304
  store i64 %1306, ptr %0, align 8, !alias.scope !108
  %1307 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1308 = lshr i64 %1301, 37
  %1309 = xor i64 %1308, %1301
  %1310 = mul i64 %1309, 1609587929392839161
  %1311 = lshr i64 %1310, 32
  %1312 = xor i64 %1311, %1310
  %1313 = sub i64 0, %1312
  store i64 %1313, ptr %1307, align 8, !alias.scope !108
  br label %1791

1314:                                             ; preds = %1010
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull readonly %856, i32 noundef %857, ptr noundef nonnull @kSecret, i64 noundef %854)
  br label %1791

1315:                                             ; preds = %852
  %1316 = getelementptr inbounds nuw i8, ptr %1, i32 560
  %1317 = load ptr, ptr %1316, align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %1318 = icmp samesign ult i32 %857, 17
  br i1 %1318, label %1319, label %1472

1319:                                             ; preds = %1315
  %1320 = icmp samesign ugt i32 %857, 8
  br i1 %1320, label %1321, label %1389

1321:                                             ; preds = %1319
  %1322 = load i64, ptr %856, align 1, !noalias !111
  %1323 = load i64, ptr %1317, align 1, !noalias !111
  %1324 = xor i64 %1323, %1322
  %1325 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %1326 = getelementptr inbounds i8, ptr %1325, i32 -8
  %1327 = load i64, ptr %1326, align 1, !noalias !111
  %1328 = getelementptr inbounds nuw i8, ptr %1317, i32 8
  %1329 = load i64, ptr %1328, align 1, !noalias !111
  %1330 = xor i64 %1329, %1327
  %1331 = xor i64 %1324, %1330
  %1332 = lshr i64 %1331, 32
  %1333 = mul nuw i64 %1332, 2654435761
  %1334 = and i64 %1331, 4294967295
  %1335 = mul nuw i64 %1334, 2654435761
  %1336 = mul nuw i64 %1332, 2246822535
  %1337 = mul nuw i64 %1334, 2246822535
  %1338 = mul i64 %1334, -7046029288634856825
  %1339 = icmp ult i64 %1338, %1337
  %1340 = zext i1 %1339 to i64
  %1341 = add i64 %1335, %1336
  %1342 = shl i64 %1341, 32
  %1343 = add i64 %1342, %1337
  %1344 = icmp ult i64 %1343, %1338
  %1345 = zext i1 %1344 to i64
  %1346 = lshr i64 %1335, 32
  %1347 = lshr i64 %1336, 32
  %1348 = mul i64 %1330, -7046029288634856825
  %1349 = add i64 %1333, %1348
  %1350 = add i64 %1349, %1346
  %1351 = add i64 %1350, %1347
  %1352 = add i64 %1351, %1340
  %1353 = add i64 %1352, %1345
  %1354 = lshr i64 %1353, 32
  %1355 = lshr i64 %1343, 32
  %1356 = mul nuw i64 %1355, 3266489917
  %1357 = and i64 %1337, 4294967295
  %1358 = xor i64 %1354, %1357
  %1359 = mul nuw i64 %1358, 3266489917
  %1360 = mul nuw nsw i64 %1355, 668265295
  %1361 = mul nuw nsw i64 %1358, 668265295
  %1362 = mul i64 %1358, -4417276706812531889
  %1363 = icmp ult i64 %1362, %1361
  %1364 = zext i1 %1363 to i64
  %1365 = add nuw i64 %1359, %1360
  %1366 = shl i64 %1365, 32
  %1367 = add i64 %1366, %1361
  %1368 = icmp ult i64 %1367, %1362
  %1369 = zext i1 %1368 to i64
  %1370 = lshr i64 %1359, 32
  %1371 = lshr i64 %1360, 32
  %1372 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1373 = mul i64 %1353, -4417276706812531889
  %1374 = add nuw i64 %1371, %1356
  %1375 = add i64 %1374, %1373
  %1376 = add i64 %1375, %1370
  %1377 = add i64 %1376, %1364
  %1378 = add i64 %1377, %1369
  %1379 = lshr i64 %1367, 37
  %1380 = xor i64 %1379, %1367
  %1381 = mul i64 %1380, 1609587929392839161
  %1382 = lshr i64 %1381, 32
  %1383 = xor i64 %1382, %1381
  store i64 %1383, ptr %0, align 8, !alias.scope !114
  %1384 = lshr i64 %1378, 37
  %1385 = xor i64 %1384, %1378
  %1386 = mul i64 %1385, 1609587929392839161
  %1387 = lshr i64 %1386, 32
  %1388 = xor i64 %1387, %1386
  store i64 %1388, ptr %1372, align 8, !alias.scope !114
  br label %1791

1389:                                             ; preds = %1319
  %1390 = icmp samesign ugt i32 %857, 3
  br i1 %1390, label %1391, label %1431

1391:                                             ; preds = %1389
  %1392 = load i32, ptr %856, align 1, !noalias !111
  %1393 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %1394 = getelementptr inbounds i8, ptr %1393, i32 -4
  %1395 = load i32, ptr %1394, align 1, !noalias !111
  %1396 = zext i32 %1392 to i64
  %1397 = zext i32 %1395 to i64
  %1398 = shl nuw i64 %1397, 32
  %1399 = or disjoint i64 %1398, %1396
  %1400 = tail call noundef i64 @llvm.bswap.i64(i64 %1399)
  %1401 = load i64, ptr %1317, align 1, !noalias !111
  %1402 = xor i64 %1399, %1401
  %1403 = getelementptr inbounds nuw i8, ptr %1317, i32 8
  %1404 = load i64, ptr %1403, align 1, !noalias !111
  %1405 = xor i64 %1400, %1404
  %1406 = lshr i64 %1402, 51
  %1407 = xor i64 %1406, %1402
  %1408 = mul i64 %1407, 2654435761
  %1409 = add i64 %1408, %5
  %1410 = lshr i64 %1409, 47
  %1411 = xor i64 %1410, %1409
  %1412 = mul i64 %1411, -4417276706812531889
  %1413 = lshr i64 %1405, 47
  %1414 = xor i64 %1413, %1405
  %1415 = mul i64 %1414, -7046029288634856825
  %1416 = sub i64 %1415, %5
  %1417 = lshr i64 %1416, 43
  %1418 = xor i64 %1417, %1416
  %1419 = mul i64 %1418, -8796714831421723037
  %1420 = lshr i64 %1412, 37
  %1421 = xor i64 %1420, %1412
  %1422 = mul i64 %1421, 1609587929392839161
  %1423 = lshr i64 %1422, 32
  %1424 = xor i64 %1423, %1422
  store i64 %1424, ptr %0, align 8, !alias.scope !117
  %1425 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1426 = lshr i64 %1419, 37
  %1427 = xor i64 %1426, %1419
  %1428 = mul i64 %1427, 1609587929392839161
  %1429 = lshr i64 %1428, 32
  %1430 = xor i64 %1429, %1428
  store i64 %1430, ptr %1425, align 8, !alias.scope !117
  br label %1791

1431:                                             ; preds = %1389
  %1432 = icmp eq i32 %857, 0
  br i1 %1432, label %1471, label %1433

1433:                                             ; preds = %1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %1434 = load i8, ptr %856, align 1, !noalias !123
  %1435 = lshr i32 %857, 1
  %1436 = getelementptr inbounds nuw i8, ptr %856, i32 %1435
  %1437 = load i8, ptr %1436, align 1, !noalias !123
  %1438 = getelementptr i8, ptr %856, i32 %857
  %1439 = getelementptr i8, ptr %1438, i32 -1
  %1440 = load i8, ptr %1439, align 1, !noalias !123
  %1441 = zext i8 %1434 to i32
  %1442 = zext i8 %1437 to i32
  %1443 = shl nuw nsw i32 %1442, 8
  %1444 = or disjoint i32 %1443, %1441
  %1445 = zext i8 %1440 to i32
  %1446 = shl nuw nsw i32 %1445, 16
  %1447 = or disjoint i32 %1444, %1446
  %1448 = shl nuw nsw i32 %857, 24
  %1449 = or disjoint i32 %1447, %1448
  %1450 = tail call noundef i32 @llvm.bswap.i32(i32 %1449)
  %1451 = load i32, ptr %1317, align 1, !noalias !111
  %1452 = xor i32 %1449, %1451
  %1453 = zext i32 %1452 to i64
  %1454 = getelementptr inbounds nuw i8, ptr %1317, i32 4
  %1455 = load i32, ptr %1454, align 1, !noalias !111
  %1456 = xor i32 %1450, %1455
  %1457 = zext i32 %1456 to i64
  %1458 = mul i64 %1453, -7046029288634856825
  %1459 = mul i64 %1457, -4417276706812531889
  %1460 = lshr i64 %1458, 37
  %1461 = xor i64 %1460, %1458
  %1462 = mul i64 %1461, 1609587929392839161
  %1463 = lshr i64 %1462, 32
  %1464 = xor i64 %1463, %1462
  store i64 %1464, ptr %0, align 8, !alias.scope !123
  %1465 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1466 = lshr i64 %1459, 37
  %1467 = xor i64 %1466, %1459
  %1468 = mul i64 %1467, 1609587929392839161
  %1469 = lshr i64 %1468, 32
  %1470 = xor i64 %1469, %1468
  store i64 %1470, ptr %1465, align 8, !alias.scope !123
  br label %1791

1471:                                             ; preds = %1431
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !124
  br label %1791

1472:                                             ; preds = %1315
  %1473 = icmp samesign ult i32 %857, 129
  br i1 %1473, label %1474, label %1790

1474:                                             ; preds = %1472
  %1475 = mul i64 %5, -7046029288634856825
  %1476 = icmp samesign ugt i32 %857, 32
  br i1 %1476, label %1477, label %1700

1477:                                             ; preds = %1474
  %1478 = icmp samesign ugt i32 %857, 64
  br i1 %1478, label %1479, label %1626

1479:                                             ; preds = %1477
  %1480 = icmp samesign ugt i32 %857, 96
  br i1 %1480, label %1481, label %1552

1481:                                             ; preds = %1479
  %1482 = getelementptr inbounds nuw i8, ptr %1, i32 304
  %1483 = getelementptr inbounds nuw i8, ptr %1317, i32 96
  %1484 = load i64, ptr %1482, align 1, !noalias !111
  %1485 = getelementptr inbounds nuw i8, ptr %1, i32 312
  %1486 = load i64, ptr %1485, align 1, !noalias !111
  %1487 = load i64, ptr %1483, align 1, !noalias !111
  %1488 = xor i64 %1487, %1484
  %1489 = getelementptr inbounds nuw i8, ptr %1317, i32 104
  %1490 = load i64, ptr %1489, align 1, !noalias !111
  %1491 = xor i64 %1490, %1486
  %1492 = lshr i64 %1488, 32
  %1493 = lshr i64 %1491, 32
  %1494 = mul nuw i64 %1493, %1492
  %1495 = and i64 %1488, 4294967295
  %1496 = mul nuw i64 %1493, %1495
  %1497 = and i64 %1491, 4294967295
  %1498 = mul nuw i64 %1497, %1492
  %1499 = mul nuw i64 %1497, %1495
  %1500 = shl i64 %1496, 32
  %1501 = add i64 %1500, %1499
  %1502 = icmp ult i64 %1501, %1499
  %1503 = zext i1 %1502 to i64
  %1504 = add i64 %1496, %1498
  %1505 = shl i64 %1504, 32
  %1506 = add i64 %1505, %1499
  %1507 = icmp ult i64 %1506, %1501
  %1508 = zext i1 %1507 to i64
  %1509 = lshr i64 %1496, 32
  %1510 = add nuw i64 %1509, %1494
  %1511 = lshr i64 %1498, 32
  %1512 = add nuw i64 %1510, %1511
  %1513 = add nuw i64 %1512, %1503
  %1514 = add nuw i64 %1513, %1508
  %1515 = xor i64 %1514, %1506
  %1516 = add i64 %1515, %1475
  %1517 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %1518 = getelementptr inbounds i8, ptr %1517, i32 -64
  %1519 = getelementptr inbounds nuw i8, ptr %1317, i32 112
  %1520 = load i64, ptr %1518, align 1, !noalias !111
  %1521 = getelementptr inbounds i8, ptr %1517, i32 -56
  %1522 = load i64, ptr %1521, align 1, !noalias !111
  %1523 = load i64, ptr %1519, align 1, !noalias !111
  %1524 = xor i64 %1523, %1520
  %1525 = getelementptr inbounds nuw i8, ptr %1317, i32 120
  %1526 = load i64, ptr %1525, align 1, !noalias !111
  %1527 = xor i64 %1526, %1522
  %1528 = lshr i64 %1524, 32
  %1529 = lshr i64 %1527, 32
  %1530 = mul nuw i64 %1529, %1528
  %1531 = and i64 %1524, 4294967295
  %1532 = mul nuw i64 %1529, %1531
  %1533 = and i64 %1527, 4294967295
  %1534 = mul nuw i64 %1533, %1528
  %1535 = mul nuw i64 %1533, %1531
  %1536 = shl i64 %1532, 32
  %1537 = add i64 %1536, %1535
  %1538 = icmp ult i64 %1537, %1535
  %1539 = zext i1 %1538 to i64
  %1540 = add i64 %1532, %1534
  %1541 = shl i64 %1540, 32
  %1542 = add i64 %1541, %1535
  %1543 = icmp ult i64 %1542, %1537
  %1544 = zext i1 %1543 to i64
  %1545 = lshr i64 %1532, 32
  %1546 = add nuw i64 %1545, %1530
  %1547 = lshr i64 %1534, 32
  %1548 = add nuw i64 %1546, %1547
  %1549 = add nuw i64 %1548, %1539
  %1550 = add nuw i64 %1549, %1544
  %1551 = xor i64 %1550, %1542
  br label %1552

1552:                                             ; preds = %1481, %1479
  %1553 = phi i64 [ %1551, %1481 ], [ 0, %1479 ]
  %1554 = phi i64 [ %1516, %1481 ], [ %1475, %1479 ]
  %1555 = getelementptr inbounds nuw i8, ptr %1, i32 288
  %1556 = getelementptr inbounds nuw i8, ptr %1317, i32 64
  %1557 = load i64, ptr %1555, align 1, !noalias !111
  %1558 = getelementptr inbounds nuw i8, ptr %1, i32 296
  %1559 = load i64, ptr %1558, align 1, !noalias !111
  %1560 = load i64, ptr %1556, align 1, !noalias !111
  %1561 = xor i64 %1560, %1557
  %1562 = getelementptr inbounds nuw i8, ptr %1317, i32 72
  %1563 = load i64, ptr %1562, align 1, !noalias !111
  %1564 = xor i64 %1563, %1559
  %1565 = lshr i64 %1561, 32
  %1566 = lshr i64 %1564, 32
  %1567 = mul nuw i64 %1566, %1565
  %1568 = and i64 %1561, 4294967295
  %1569 = mul nuw i64 %1566, %1568
  %1570 = and i64 %1564, 4294967295
  %1571 = mul nuw i64 %1570, %1565
  %1572 = mul nuw i64 %1570, %1568
  %1573 = shl i64 %1569, 32
  %1574 = add i64 %1573, %1572
  %1575 = icmp ult i64 %1574, %1572
  %1576 = zext i1 %1575 to i64
  %1577 = add i64 %1569, %1571
  %1578 = shl i64 %1577, 32
  %1579 = add i64 %1578, %1572
  %1580 = icmp ult i64 %1579, %1574
  %1581 = zext i1 %1580 to i64
  %1582 = lshr i64 %1569, 32
  %1583 = add nuw i64 %1582, %1567
  %1584 = lshr i64 %1571, 32
  %1585 = add nuw i64 %1583, %1584
  %1586 = add nuw i64 %1585, %1576
  %1587 = add nuw i64 %1586, %1581
  %1588 = xor i64 %1587, %1579
  %1589 = add i64 %1588, %1554
  %1590 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %1591 = getelementptr inbounds i8, ptr %1590, i32 -48
  %1592 = getelementptr inbounds nuw i8, ptr %1317, i32 80
  %1593 = load i64, ptr %1591, align 1, !noalias !111
  %1594 = getelementptr inbounds i8, ptr %1590, i32 -40
  %1595 = load i64, ptr %1594, align 1, !noalias !111
  %1596 = load i64, ptr %1592, align 1, !noalias !111
  %1597 = xor i64 %1596, %1593
  %1598 = getelementptr inbounds nuw i8, ptr %1317, i32 88
  %1599 = load i64, ptr %1598, align 1, !noalias !111
  %1600 = xor i64 %1599, %1595
  %1601 = lshr i64 %1597, 32
  %1602 = lshr i64 %1600, 32
  %1603 = mul nuw i64 %1602, %1601
  %1604 = and i64 %1597, 4294967295
  %1605 = mul nuw i64 %1602, %1604
  %1606 = and i64 %1600, 4294967295
  %1607 = mul nuw i64 %1606, %1601
  %1608 = mul nuw i64 %1606, %1604
  %1609 = shl i64 %1605, 32
  %1610 = add i64 %1609, %1608
  %1611 = icmp ult i64 %1610, %1608
  %1612 = zext i1 %1611 to i64
  %1613 = add i64 %1605, %1607
  %1614 = shl i64 %1613, 32
  %1615 = add i64 %1614, %1608
  %1616 = icmp ult i64 %1615, %1610
  %1617 = zext i1 %1616 to i64
  %1618 = lshr i64 %1605, 32
  %1619 = add nuw i64 %1618, %1603
  %1620 = lshr i64 %1607, 32
  %1621 = add nuw i64 %1619, %1620
  %1622 = add nuw i64 %1621, %1612
  %1623 = add nuw i64 %1622, %1617
  %1624 = xor i64 %1623, %1615
  %1625 = add i64 %1624, %1553
  br label %1626

1626:                                             ; preds = %1552, %1477
  %1627 = phi i64 [ %1625, %1552 ], [ 0, %1477 ]
  %1628 = phi i64 [ %1589, %1552 ], [ %1475, %1477 ]
  %1629 = getelementptr inbounds nuw i8, ptr %1, i32 272
  %1630 = getelementptr inbounds nuw i8, ptr %1317, i32 32
  %1631 = load i64, ptr %1629, align 1, !noalias !111
  %1632 = getelementptr inbounds nuw i8, ptr %1, i32 280
  %1633 = load i64, ptr %1632, align 1, !noalias !111
  %1634 = load i64, ptr %1630, align 1, !noalias !111
  %1635 = xor i64 %1634, %1631
  %1636 = getelementptr inbounds nuw i8, ptr %1317, i32 40
  %1637 = load i64, ptr %1636, align 1, !noalias !111
  %1638 = xor i64 %1637, %1633
  %1639 = lshr i64 %1635, 32
  %1640 = lshr i64 %1638, 32
  %1641 = mul nuw i64 %1640, %1639
  %1642 = and i64 %1635, 4294967295
  %1643 = mul nuw i64 %1640, %1642
  %1644 = and i64 %1638, 4294967295
  %1645 = mul nuw i64 %1644, %1639
  %1646 = mul nuw i64 %1644, %1642
  %1647 = shl i64 %1643, 32
  %1648 = add i64 %1647, %1646
  %1649 = icmp ult i64 %1648, %1646
  %1650 = zext i1 %1649 to i64
  %1651 = add i64 %1643, %1645
  %1652 = shl i64 %1651, 32
  %1653 = add i64 %1652, %1646
  %1654 = icmp ult i64 %1653, %1648
  %1655 = zext i1 %1654 to i64
  %1656 = lshr i64 %1643, 32
  %1657 = add nuw i64 %1656, %1641
  %1658 = lshr i64 %1645, 32
  %1659 = add nuw i64 %1657, %1658
  %1660 = add nuw i64 %1659, %1650
  %1661 = add nuw i64 %1660, %1655
  %1662 = xor i64 %1661, %1653
  %1663 = add i64 %1662, %1628
  %1664 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %1665 = getelementptr inbounds i8, ptr %1664, i32 -32
  %1666 = getelementptr inbounds nuw i8, ptr %1317, i32 48
  %1667 = load i64, ptr %1665, align 1, !noalias !111
  %1668 = getelementptr inbounds i8, ptr %1664, i32 -24
  %1669 = load i64, ptr %1668, align 1, !noalias !111
  %1670 = load i64, ptr %1666, align 1, !noalias !111
  %1671 = xor i64 %1670, %1667
  %1672 = getelementptr inbounds nuw i8, ptr %1317, i32 56
  %1673 = load i64, ptr %1672, align 1, !noalias !111
  %1674 = xor i64 %1673, %1669
  %1675 = lshr i64 %1671, 32
  %1676 = lshr i64 %1674, 32
  %1677 = mul nuw i64 %1676, %1675
  %1678 = and i64 %1671, 4294967295
  %1679 = mul nuw i64 %1676, %1678
  %1680 = and i64 %1674, 4294967295
  %1681 = mul nuw i64 %1680, %1675
  %1682 = mul nuw i64 %1680, %1678
  %1683 = shl i64 %1679, 32
  %1684 = add i64 %1683, %1682
  %1685 = icmp ult i64 %1684, %1682
  %1686 = zext i1 %1685 to i64
  %1687 = add i64 %1679, %1681
  %1688 = shl i64 %1687, 32
  %1689 = add i64 %1688, %1682
  %1690 = icmp ult i64 %1689, %1684
  %1691 = zext i1 %1690 to i64
  %1692 = lshr i64 %1679, 32
  %1693 = add nuw i64 %1692, %1677
  %1694 = lshr i64 %1681, 32
  %1695 = add nuw i64 %1693, %1694
  %1696 = add nuw i64 %1695, %1686
  %1697 = add nuw i64 %1696, %1691
  %1698 = xor i64 %1697, %1689
  %1699 = add i64 %1698, %1627
  br label %1700

1700:                                             ; preds = %1626, %1474
  %1701 = phi i64 [ %1699, %1626 ], [ 0, %1474 ]
  %1702 = phi i64 [ %1663, %1626 ], [ %1475, %1474 ]
  %1703 = load i64, ptr %856, align 1, !noalias !111
  %1704 = getelementptr inbounds nuw i8, ptr %1, i32 264
  %1705 = load i64, ptr %1704, align 1, !noalias !111
  %1706 = load i64, ptr %1317, align 1, !noalias !111
  %1707 = xor i64 %1706, %1703
  %1708 = getelementptr inbounds nuw i8, ptr %1317, i32 8
  %1709 = load i64, ptr %1708, align 1, !noalias !111
  %1710 = xor i64 %1709, %1705
  %1711 = lshr i64 %1707, 32
  %1712 = lshr i64 %1710, 32
  %1713 = mul nuw i64 %1712, %1711
  %1714 = and i64 %1707, 4294967295
  %1715 = mul nuw i64 %1712, %1714
  %1716 = and i64 %1710, 4294967295
  %1717 = mul nuw i64 %1716, %1711
  %1718 = mul nuw i64 %1716, %1714
  %1719 = shl i64 %1715, 32
  %1720 = add i64 %1719, %1718
  %1721 = icmp ult i64 %1720, %1718
  %1722 = zext i1 %1721 to i64
  %1723 = add i64 %1715, %1717
  %1724 = shl i64 %1723, 32
  %1725 = add i64 %1724, %1718
  %1726 = icmp ult i64 %1725, %1720
  %1727 = zext i1 %1726 to i64
  %1728 = lshr i64 %1715, 32
  %1729 = add nuw i64 %1728, %1713
  %1730 = lshr i64 %1717, 32
  %1731 = add nuw i64 %1729, %1730
  %1732 = add nuw i64 %1731, %1722
  %1733 = add nuw i64 %1732, %1727
  %1734 = xor i64 %1733, %1725
  %1735 = add i64 %1734, %1702
  %1736 = getelementptr inbounds nuw i8, ptr %856, i32 %857
  %1737 = getelementptr inbounds i8, ptr %1736, i32 -16
  %1738 = getelementptr inbounds nuw i8, ptr %1317, i32 16
  %1739 = load i64, ptr %1737, align 1, !noalias !111
  %1740 = getelementptr inbounds i8, ptr %1736, i32 -8
  %1741 = load i64, ptr %1740, align 1, !noalias !111
  %1742 = load i64, ptr %1738, align 1, !noalias !111
  %1743 = xor i64 %1742, %1739
  %1744 = getelementptr inbounds nuw i8, ptr %1317, i32 24
  %1745 = load i64, ptr %1744, align 1, !noalias !111
  %1746 = xor i64 %1745, %1741
  %1747 = lshr i64 %1743, 32
  %1748 = lshr i64 %1746, 32
  %1749 = mul nuw i64 %1748, %1747
  %1750 = and i64 %1743, 4294967295
  %1751 = mul nuw i64 %1748, %1750
  %1752 = and i64 %1746, 4294967295
  %1753 = mul nuw i64 %1752, %1747
  %1754 = mul nuw i64 %1752, %1750
  %1755 = shl i64 %1751, 32
  %1756 = add i64 %1755, %1754
  %1757 = icmp ult i64 %1756, %1754
  %1758 = zext i1 %1757 to i64
  %1759 = add i64 %1751, %1753
  %1760 = shl i64 %1759, 32
  %1761 = add i64 %1760, %1754
  %1762 = icmp ult i64 %1761, %1756
  %1763 = zext i1 %1762 to i64
  %1764 = lshr i64 %1751, 32
  %1765 = add nuw i64 %1764, %1749
  %1766 = lshr i64 %1753, 32
  %1767 = add nuw i64 %1765, %1766
  %1768 = add nuw i64 %1767, %1758
  %1769 = add nuw i64 %1768, %1763
  %1770 = xor i64 %1769, %1761
  %1771 = add i64 %1770, %1701
  %1772 = add i64 %1771, %1735
  %1773 = mul i64 %1735, -7046029288634856825
  %1774 = mul i64 %1771, -8796714831421723037
  %1775 = mul i64 %5, -4417276706812531889
  %1776 = add i64 %1773, %1775
  %1777 = add i64 %1776, %1774
  %1778 = lshr i64 %1772, 37
  %1779 = xor i64 %1778, %1772
  %1780 = mul i64 %1779, 1609587929392839161
  %1781 = lshr i64 %1780, 32
  %1782 = xor i64 %1781, %1780
  store i64 %1782, ptr %0, align 8, !alias.scope !127
  %1783 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1784 = lshr i64 %1777, 37
  %1785 = xor i64 %1784, %1777
  %1786 = mul i64 %1785, 1609587929392839161
  %1787 = lshr i64 %1786, 32
  %1788 = xor i64 %1787, %1786
  %1789 = sub i64 0, %1788
  store i64 %1789, ptr %1783, align 8, !alias.scope !127
  br label %1791

1790:                                             ; preds = %1472
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull readonly %856, i32 noundef %857, ptr noundef %1317, i64 noundef 0)
  br label %1791

1791:                                             ; preds = %1790, %1700, %1471, %1433, %1391, %1321, %1314, %1226, %1009, %972, %931, %862, %577
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
define dso_local range(i32 0, 2) i32 @XXH128_isEqual([2 x i64] %0, [2 x i64] %1) local_unnamed_addr #19 {
  %3 = alloca %struct.XXH128_hash_t, align 8
  %4 = alloca %struct.XXH128_hash_t, align 8
  %5 = extractvalue [2 x i64] %0, 0
  store i64 %5, ptr %3, align 8
  %6 = extractvalue [2 x i64] %0, 1
  %7 = getelementptr inbounds nuw i8, ptr %3, i32 8
  store i64 %6, ptr %7, align 8
  %8 = extractvalue [2 x i64] %1, 0
  store i64 %8, ptr %4, align 8
  %9 = extractvalue [2 x i64] %1, 1
  %10 = getelementptr inbounds nuw i8, ptr %4, i32 8
  store i64 %9, ptr %10, align 8
  %11 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %3, ptr noundef nonnull dereferenceable(16) %4, i32 16)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local range(i32 -1, 2) i32 @XXH128_cmp(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @llvm.ucmp.i32.i64(i64 %4, i64 %6)
  br label %14

10:                                               ; preds = %2
  %11 = load i64, ptr %1, align 8
  %12 = load i64, ptr %0, align 8
  %13 = tail call i32 @llvm.ucmp.i32.i64(i64 %12, i64 %11)
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %9, %8 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @XXH128_canonicalFromHash(ptr noundef writeonly initializes((0, 16)) %0, [2 x i64] %1) local_unnamed_addr #6 {
  %3 = extractvalue [2 x i64] %1, 1
  %4 = extractvalue [2 x i64] %1, 0
  %5 = tail call noundef i64 @llvm.bswap.i64(i64 %3)
  %6 = tail call noundef i64 @llvm.bswap.i64(i64 %4)
  store i64 %5, ptr %0, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %6, ptr %7, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @XXH128_hashFromCanonical(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 initializes((0, 16)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = load i64, ptr %1, align 1
  %4 = tail call noundef i64 @llvm.bswap.i64(i64 %3)
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %4, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %7 = load i64, ptr %6, align 1
  %8 = tail call noundef i64 @llvm.bswap.i64(i64 %7)
  store i64 %8, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i32 @target_oneshot(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, 3
  %5 = icmp eq i32 %4, 0
  %6 = add i32 %1, 606290984
  %7 = add i32 %1, -2048144777
  %8 = add i32 %1, 1640531535
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 4
  br i1 %5, label %12, label %40

12:                                               ; preds = %2
  %13 = load i32, ptr %9, align 4
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %8, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = load i32, ptr %10, align 4
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %1
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13)
  %22 = mul i32 %21, -1640531535
  %23 = load i32, ptr %11, align 4
  %24 = mul i32 %23, -2048144777
  %25 = add i32 %7, %24
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13)
  %27 = mul i32 %26, -1640531535
  %28 = load i32, ptr %0, align 4
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %6, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13)
  %32 = mul i32 %31, -1640531535
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 1)
  %34 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 7)
  %35 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 12)
  %36 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 18)
  %37 = add i32 %35, %36
  %38 = add i32 %37, %34
  %39 = add i32 %38, %33
  br label %68

40:                                               ; preds = %2
  %41 = load i32, ptr %9, align 1
  %42 = mul i32 %41, -2048144777
  %43 = add i32 %8, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = load i32, ptr %10, align 1
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %1
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = load i32, ptr %11, align 1
  %52 = mul i32 %51, -2048144777
  %53 = add i32 %7, %52
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13)
  %55 = mul i32 %54, -1640531535
  %56 = load i32, ptr %0, align 1
  %57 = mul i32 %56, -2048144777
  %58 = add i32 %6, %57
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13)
  %60 = mul i32 %59, -1640531535
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 1)
  %62 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 7)
  %63 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 12)
  %64 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 18)
  %65 = add i32 %63, %64
  %66 = add i32 %65, %62
  %67 = add i32 %66, %61
  br label %68

68:                                               ; preds = %12, %40
  %69 = phi i32 [ %39, %12 ], [ %67, %40 ]
  %70 = add i32 %69, 16
  %71 = lshr i32 %70, 15
  %72 = xor i32 %71, %70
  %73 = mul i32 %72, -2048144777
  %74 = lshr i32 %73, 13
  %75 = xor i32 %74, %73
  %76 = mul i32 %75, -1028477379
  %77 = lshr i32 %76, 16
  %78 = xor i32 %77, %76
  ret i32 %78
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #22

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr, ptr, i32) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ucmp.i32.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #13 = { nofree noinline norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #16 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #17 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #18 = { nofree norecurse nosync nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { allocsize(0) }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_len_9to16_128b: argument 0"}
!19 = distinct !{!19, !"XXH3_len_9to16_128b"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_len_4to8_128b: argument 0"}
!22 = distinct !{!22, !"XXH3_len_4to8_128b"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH3_len_1to3_128b: argument 0"}
!25 = distinct !{!25, !"XXH3_len_1to3_128b"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_len_0to16_128b: argument 0"}
!28 = distinct !{!28, !"XXH3_len_0to16_128b"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_len_17to128_128b: argument 0"}
!31 = distinct !{!31, !"XXH3_len_17to128_128b"}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = !{!35}
!35 = distinct !{!35, !36, !"XXH3_hashLong_128b_internal: argument 0"}
!36 = distinct !{!36, !"XXH3_hashLong_128b_internal"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"XXH3_len_9to16_128b: argument 0"}
!39 = distinct !{!39, !"XXH3_len_9to16_128b"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"XXH3_len_4to8_128b: argument 0"}
!42 = distinct !{!42, !"XXH3_len_4to8_128b"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"XXH3_len_1to3_128b: argument 0"}
!45 = distinct !{!45, !"XXH3_len_1to3_128b"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"XXH3_len_0to16_128b: argument 0"}
!48 = distinct !{!48, !"XXH3_len_0to16_128b"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"XXH3_len_17to128_128b: argument 0"}
!51 = distinct !{!51, !"XXH3_len_17to128_128b"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"XXH3_hashLong_128b_internal: argument 0"}
!54 = distinct !{!54, !"XXH3_hashLong_128b_internal"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"XXH3_len_9to16_128b: argument 0"}
!57 = distinct !{!57, !"XXH3_len_9to16_128b"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"XXH3_len_4to8_128b: argument 0"}
!60 = distinct !{!60, !"XXH3_len_4to8_128b"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"XXH3_len_1to3_128b: argument 0"}
!63 = distinct !{!63, !"XXH3_len_1to3_128b"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"XXH3_len_0to16_128b: argument 0"}
!66 = distinct !{!66, !"XXH3_len_0to16_128b"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"XXH3_len_17to128_128b: argument 0"}
!69 = distinct !{!69, !"XXH3_len_17to128_128b"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"XXH3_hashLong_128b_internal: argument 0"}
!72 = distinct !{!72, !"XXH3_hashLong_128b_internal"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"XXH3_128bits_withSeed: argument 0"}
!75 = distinct !{!75, !"XXH3_128bits_withSeed"}
!76 = !{!77, !74}
!77 = distinct !{!77, !78, !"XXH3_len_9to16_128b: argument 0"}
!78 = distinct !{!78, !"XXH3_len_9to16_128b"}
!79 = !{!80, !74}
!80 = distinct !{!80, !81, !"XXH3_len_4to8_128b: argument 0"}
!81 = distinct !{!81, !"XXH3_len_4to8_128b"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"XXH3_len_1to3_128b: argument 0"}
!84 = distinct !{!84, !"XXH3_len_1to3_128b"}
!85 = !{!83, !74}
!86 = !{!87, !74}
!87 = distinct !{!87, !88, !"XXH3_len_0to16_128b: argument 0"}
!88 = distinct !{!88, !"XXH3_len_0to16_128b"}
!89 = !{!90, !74}
!90 = distinct !{!90, !91, !"XXH3_len_17to128_128b: argument 0"}
!91 = distinct !{!91, !"XXH3_len_17to128_128b"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"XXH3_128bits_withSeed: argument 0"}
!94 = distinct !{!94, !"XXH3_128bits_withSeed"}
!95 = !{!96, !93}
!96 = distinct !{!96, !97, !"XXH3_len_9to16_128b: argument 0"}
!97 = distinct !{!97, !"XXH3_len_9to16_128b"}
!98 = !{!99, !93}
!99 = distinct !{!99, !100, !"XXH3_len_4to8_128b: argument 0"}
!100 = distinct !{!100, !"XXH3_len_4to8_128b"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"XXH3_len_1to3_128b: argument 0"}
!103 = distinct !{!103, !"XXH3_len_1to3_128b"}
!104 = !{!102, !93}
!105 = !{!106, !93}
!106 = distinct !{!106, !107, !"XXH3_len_0to16_128b: argument 0"}
!107 = distinct !{!107, !"XXH3_len_0to16_128b"}
!108 = !{!109, !93}
!109 = distinct !{!109, !110, !"XXH3_len_17to128_128b: argument 0"}
!110 = distinct !{!110, !"XXH3_len_17to128_128b"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"XXH3_128bits_withSecret: argument 0"}
!113 = distinct !{!113, !"XXH3_128bits_withSecret"}
!114 = !{!115, !112}
!115 = distinct !{!115, !116, !"XXH3_len_9to16_128b: argument 0"}
!116 = distinct !{!116, !"XXH3_len_9to16_128b"}
!117 = !{!118, !112}
!118 = distinct !{!118, !119, !"XXH3_len_4to8_128b: argument 0"}
!119 = distinct !{!119, !"XXH3_len_4to8_128b"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"XXH3_len_1to3_128b: argument 0"}
!122 = distinct !{!122, !"XXH3_len_1to3_128b"}
!123 = !{!121, !112}
!124 = !{!125, !112}
!125 = distinct !{!125, !126, !"XXH3_len_0to16_128b: argument 0"}
!126 = distinct !{!126, !"XXH3_len_0to16_128b"}
!127 = !{!128, !112}
!128 = distinct !{!128, !129, !"XXH3_len_17to128_128b: argument 0"}
!129 = distinct !{!129, !"XXH3_len_17to128_128b"}
