; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api_xxh64_len16_armv7a/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api_xxh64_len16_armv7a/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

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
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i32 noundef 48) #27
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
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i32 noundef 88) #27
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

; Function Attrs: nofree nounwind memory(argmem: read)
define dso_local i64 @XXH3_64bits(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = icmp ult i32 %1, 17
  br i1 %3, label %4, label %101

4:                                                ; preds = %2
  %5 = icmp samesign ugt i32 %1, 8
  br i1 %5, label %6, label %49

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, -4734510112055689544
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %10 = getelementptr inbounds i8, ptr %9, i32 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, 2066345149520216444
  %13 = zext nneg i32 %1 to i64
  %14 = lshr i64 %8, 32
  %15 = trunc nuw i64 %14 to i32
  %16 = trunc i64 %8 to i32
  %17 = lshr i64 %12, 32
  %18 = trunc nuw i64 %17 to i32
  %19 = trunc i64 %12 to i32
  %20 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %16, i32 %19) #28
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  %23 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %15, i32 %19, i32 0, i32 %22) #28
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = extractvalue { i32, i32 } %23, 1
  %26 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %16, i32 %18, i32 %24, i32 0) #28
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = extractvalue { i32, i32 } %26, 1
  %29 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %15, i32 %18, i32 %25, i32 %28) #28
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  %32 = zext i32 %30 to i64
  %33 = zext i32 %31 to i64
  %34 = shl nuw i64 %33, 32
  %35 = or disjoint i64 %34, %32
  %36 = zext i32 %21 to i64
  %37 = zext i32 %27 to i64
  %38 = shl nuw i64 %37, 32
  %39 = or disjoint i64 %38, %36
  %40 = xor i64 %35, %39
  %41 = add i64 %8, %13
  %42 = add i64 %41, %12
  %43 = add i64 %42, %40
  %44 = lshr i64 %43, 37
  %45 = xor i64 %44, %43
  %46 = mul i64 %45, 1609587929392839161
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  br label %404

49:                                               ; preds = %4
  %50 = icmp samesign ugt i32 %1, 3
  br i1 %50, label %51, label %74

51:                                               ; preds = %49
  %52 = load i32, ptr %0, align 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %54 = getelementptr inbounds i8, ptr %53, i32 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %52 to i64
  %57 = zext i32 %55 to i64
  %58 = shl nuw i64 %57, 32
  %59 = or disjoint i64 %58, %56
  %60 = xor i64 %59, -4734510112055689544
  %61 = zext nneg i32 %1 to i64
  %62 = lshr i64 %60, 51
  %63 = xor i64 %62, %60
  %64 = mul i64 %63, 2654435761
  %65 = add i64 %64, %61
  %66 = lshr i64 %65, 47
  %67 = xor i64 %66, %65
  %68 = mul i64 %67, -4417276706812531889
  %69 = lshr i64 %68, 37
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, 1609587929392839161
  %72 = lshr i64 %71, 32
  %73 = xor i64 %72, %71
  br label %404

74:                                               ; preds = %49
  %75 = icmp eq i32 %1, 0
  br i1 %75, label %404, label %76

76:                                               ; preds = %74
  %77 = load i8, ptr %0, align 1
  %78 = lshr i32 %1, 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i32 %78
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr i8, ptr %0, i32 %1
  %82 = getelementptr i8, ptr %81, i32 -1
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %77 to i32
  %85 = zext i8 %80 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = or disjoint i32 %86, %84
  %88 = zext i8 %83 to i32
  %89 = shl nuw nsw i32 %88, 16
  %90 = or disjoint i32 %87, %89
  %91 = shl nuw nsw i32 %1, 24
  %92 = or disjoint i32 %90, %91
  %93 = xor i32 %92, 963444408
  %94 = zext nneg i32 %93 to i64
  %95 = mul i64 %94, -7046029288634856825
  %96 = lshr i64 %95, 37
  %97 = xor i64 %96, %95
  %98 = mul i64 %97, 1609587929392839161
  %99 = lshr i64 %98, 32
  %100 = xor i64 %99, %98
  br label %404

101:                                              ; preds = %2
  %102 = icmp ult i32 %1, 129
  br i1 %102, label %103, label %398

103:                                              ; preds = %101
  %104 = zext nneg i32 %1 to i64
  %105 = mul i64 %104, -7046029288634856825
  %106 = icmp samesign ugt i32 %1, 32
  br i1 %106, label %107, label %323

107:                                              ; preds = %103
  %108 = icmp samesign ugt i32 %1, 64
  br i1 %108, label %109, label %252

109:                                              ; preds = %107
  %110 = icmp samesign ugt i32 %1, 96
  br i1 %110, label %111, label %181

111:                                              ; preds = %109
  %112 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %113 = load i64, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %115 = load i64, ptr %114, align 1
  %116 = xor i64 %113, 4554437623014685352
  %117 = xor i64 %115, 2111919702937427193
  %118 = lshr i64 %116, 32
  %119 = trunc nuw i64 %118 to i32
  %120 = trunc i64 %116 to i32
  %121 = lshr i64 %117, 32
  %122 = trunc nuw i64 %121 to i32
  %123 = trunc i64 %117 to i32
  %124 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %120, i32 %123) #28
  %125 = extractvalue { i32, i32 } %124, 0
  %126 = extractvalue { i32, i32 } %124, 1
  %127 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %119, i32 %123, i32 0, i32 %126) #28
  %128 = extractvalue { i32, i32 } %127, 0
  %129 = extractvalue { i32, i32 } %127, 1
  %130 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %120, i32 %122, i32 %128, i32 0) #28
  %131 = extractvalue { i32, i32 } %130, 0
  %132 = extractvalue { i32, i32 } %130, 1
  %133 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %119, i32 %122, i32 %129, i32 %132) #28
  %134 = extractvalue { i32, i32 } %133, 0
  %135 = extractvalue { i32, i32 } %133, 1
  %136 = zext i32 %134 to i64
  %137 = zext i32 %135 to i64
  %138 = shl nuw i64 %137, 32
  %139 = or disjoint i64 %138, %136
  %140 = zext i32 %125 to i64
  %141 = zext i32 %131 to i64
  %142 = shl nuw i64 %141, 32
  %143 = or disjoint i64 %142, %140
  %144 = xor i64 %139, %143
  %145 = add i64 %144, %105
  %146 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %147 = getelementptr inbounds i8, ptr %146, i32 -64
  %148 = load i64, ptr %147, align 1
  %149 = getelementptr inbounds i8, ptr %146, i32 -56
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %148, 3556072174620004746
  %152 = xor i64 %150, 7238261902898274248
  %153 = lshr i64 %151, 32
  %154 = trunc nuw i64 %153 to i32
  %155 = trunc i64 %151 to i32
  %156 = lshr i64 %152, 32
  %157 = trunc nuw i64 %156 to i32
  %158 = trunc i64 %152 to i32
  %159 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %155, i32 %158) #28
  %160 = extractvalue { i32, i32 } %159, 0
  %161 = extractvalue { i32, i32 } %159, 1
  %162 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %154, i32 %158, i32 0, i32 %161) #28
  %163 = extractvalue { i32, i32 } %162, 0
  %164 = extractvalue { i32, i32 } %162, 1
  %165 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %155, i32 %157, i32 %163, i32 0) #28
  %166 = extractvalue { i32, i32 } %165, 0
  %167 = extractvalue { i32, i32 } %165, 1
  %168 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %154, i32 %157, i32 %164, i32 %167) #28
  %169 = extractvalue { i32, i32 } %168, 0
  %170 = extractvalue { i32, i32 } %168, 1
  %171 = zext i32 %169 to i64
  %172 = zext i32 %170 to i64
  %173 = shl nuw i64 %172, 32
  %174 = or disjoint i64 %173, %171
  %175 = zext i32 %160 to i64
  %176 = zext i32 %166 to i64
  %177 = shl nuw i64 %176, 32
  %178 = or disjoint i64 %177, %175
  %179 = xor i64 %174, %178
  %180 = add i64 %145, %179
  br label %181

181:                                              ; preds = %111, %109
  %182 = phi i64 [ %180, %111 ], [ %105, %109 ]
  %183 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %184 = load i64, ptr %183, align 1
  %185 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %186 = load i64, ptr %185, align 1
  %187 = xor i64 %184, -3818837453329782724
  %188 = xor i64 %186, -6688317018830679928
  %189 = lshr i64 %187, 32
  %190 = trunc nuw i64 %189 to i32
  %191 = trunc i64 %187 to i32
  %192 = lshr i64 %188, 32
  %193 = trunc nuw i64 %192 to i32
  %194 = trunc i64 %188 to i32
  %195 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %191, i32 %194) #28
  %196 = extractvalue { i32, i32 } %195, 0
  %197 = extractvalue { i32, i32 } %195, 1
  %198 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %190, i32 %194, i32 0, i32 %197) #28
  %199 = extractvalue { i32, i32 } %198, 0
  %200 = extractvalue { i32, i32 } %198, 1
  %201 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %191, i32 %193, i32 %199, i32 0) #28
  %202 = extractvalue { i32, i32 } %201, 0
  %203 = extractvalue { i32, i32 } %201, 1
  %204 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %190, i32 %193, i32 %200, i32 %203) #28
  %205 = extractvalue { i32, i32 } %204, 0
  %206 = extractvalue { i32, i32 } %204, 1
  %207 = zext i32 %205 to i64
  %208 = zext i32 %206 to i64
  %209 = shl nuw i64 %208, 32
  %210 = or disjoint i64 %209, %207
  %211 = zext i32 %196 to i64
  %212 = zext i32 %202 to i64
  %213 = shl nuw i64 %212, 32
  %214 = or disjoint i64 %213, %211
  %215 = xor i64 %210, %214
  %216 = add i64 %215, %182
  %217 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %218 = getelementptr inbounds i8, ptr %217, i32 -48
  %219 = load i64, ptr %218, align 1
  %220 = getelementptr inbounds i8, ptr %217, i32 -40
  %221 = load i64, ptr %220, align 1
  %222 = xor i64 %219, 5690594596133299313
  %223 = xor i64 %221, -2833645246901970632
  %224 = lshr i64 %222, 32
  %225 = trunc nuw i64 %224 to i32
  %226 = trunc i64 %222 to i32
  %227 = lshr i64 %223, 32
  %228 = trunc nuw i64 %227 to i32
  %229 = trunc i64 %223 to i32
  %230 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %226, i32 %229) #28
  %231 = extractvalue { i32, i32 } %230, 0
  %232 = extractvalue { i32, i32 } %230, 1
  %233 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %225, i32 %229, i32 0, i32 %232) #28
  %234 = extractvalue { i32, i32 } %233, 0
  %235 = extractvalue { i32, i32 } %233, 1
  %236 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %226, i32 %228, i32 %234, i32 0) #28
  %237 = extractvalue { i32, i32 } %236, 0
  %238 = extractvalue { i32, i32 } %236, 1
  %239 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %225, i32 %228, i32 %235, i32 %238) #28
  %240 = extractvalue { i32, i32 } %239, 0
  %241 = extractvalue { i32, i32 } %239, 1
  %242 = zext i32 %240 to i64
  %243 = zext i32 %241 to i64
  %244 = shl nuw i64 %243, 32
  %245 = or disjoint i64 %244, %242
  %246 = zext i32 %231 to i64
  %247 = zext i32 %237 to i64
  %248 = shl nuw i64 %247, 32
  %249 = or disjoint i64 %248, %246
  %250 = xor i64 %245, %249
  %251 = add i64 %216, %250
  br label %252

252:                                              ; preds = %181, %107
  %253 = phi i64 [ %251, %181 ], [ %105, %107 ]
  %254 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %255 = load i64, ptr %254, align 1
  %256 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %257 = load i64, ptr %256, align 1
  %258 = xor i64 %255, 8711581037947681227
  %259 = xor i64 %257, 2410270004345854594
  %260 = lshr i64 %258, 32
  %261 = trunc nuw i64 %260 to i32
  %262 = trunc i64 %258 to i32
  %263 = lshr i64 %259, 32
  %264 = trunc nuw i64 %263 to i32
  %265 = trunc i64 %259 to i32
  %266 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %262, i32 %265) #28
  %267 = extractvalue { i32, i32 } %266, 0
  %268 = extractvalue { i32, i32 } %266, 1
  %269 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %261, i32 %265, i32 0, i32 %268) #28
  %270 = extractvalue { i32, i32 } %269, 0
  %271 = extractvalue { i32, i32 } %269, 1
  %272 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %262, i32 %264, i32 %270, i32 0) #28
  %273 = extractvalue { i32, i32 } %272, 0
  %274 = extractvalue { i32, i32 } %272, 1
  %275 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %261, i32 %264, i32 %271, i32 %274) #28
  %276 = extractvalue { i32, i32 } %275, 0
  %277 = extractvalue { i32, i32 } %275, 1
  %278 = zext i32 %276 to i64
  %279 = zext i32 %277 to i64
  %280 = shl nuw i64 %279, 32
  %281 = or disjoint i64 %280, %278
  %282 = zext i32 %267 to i64
  %283 = zext i32 %273 to i64
  %284 = shl nuw i64 %283, 32
  %285 = or disjoint i64 %284, %282
  %286 = xor i64 %281, %285
  %287 = add i64 %286, %253
  %288 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %289 = getelementptr inbounds i8, ptr %288, i32 -32
  %290 = load i64, ptr %289, align 1
  %291 = getelementptr inbounds i8, ptr %288, i32 -24
  %292 = load i64, ptr %291, align 1
  %293 = xor i64 %290, -8204357891075471176
  %294 = xor i64 %292, 5487137525590930912
  %295 = lshr i64 %293, 32
  %296 = trunc nuw i64 %295 to i32
  %297 = trunc i64 %293 to i32
  %298 = lshr i64 %294, 32
  %299 = trunc nuw i64 %298 to i32
  %300 = trunc i64 %294 to i32
  %301 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %297, i32 %300) #28
  %302 = extractvalue { i32, i32 } %301, 0
  %303 = extractvalue { i32, i32 } %301, 1
  %304 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %296, i32 %300, i32 0, i32 %303) #28
  %305 = extractvalue { i32, i32 } %304, 0
  %306 = extractvalue { i32, i32 } %304, 1
  %307 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %297, i32 %299, i32 %305, i32 0) #28
  %308 = extractvalue { i32, i32 } %307, 0
  %309 = extractvalue { i32, i32 } %307, 1
  %310 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %296, i32 %299, i32 %306, i32 %309) #28
  %311 = extractvalue { i32, i32 } %310, 0
  %312 = extractvalue { i32, i32 } %310, 1
  %313 = zext i32 %311 to i64
  %314 = zext i32 %312 to i64
  %315 = shl nuw i64 %314, 32
  %316 = or disjoint i64 %315, %313
  %317 = zext i32 %302 to i64
  %318 = zext i32 %308 to i64
  %319 = shl nuw i64 %318, 32
  %320 = or disjoint i64 %319, %317
  %321 = xor i64 %316, %320
  %322 = add i64 %287, %321
  br label %323

323:                                              ; preds = %103, %252
  %324 = phi i64 [ %322, %252 ], [ %105, %103 ]
  %325 = load i64, ptr %0, align 1
  %326 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %327 = load i64, ptr %326, align 1
  %328 = xor i64 %325, -4734510112055689544
  %329 = xor i64 %327, 2066345149520216444
  %330 = lshr i64 %328, 32
  %331 = trunc nuw i64 %330 to i32
  %332 = trunc i64 %328 to i32
  %333 = lshr i64 %329, 32
  %334 = trunc nuw i64 %333 to i32
  %335 = trunc i64 %329 to i32
  %336 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %332, i32 %335) #28
  %337 = extractvalue { i32, i32 } %336, 0
  %338 = extractvalue { i32, i32 } %336, 1
  %339 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %331, i32 %335, i32 0, i32 %338) #28
  %340 = extractvalue { i32, i32 } %339, 0
  %341 = extractvalue { i32, i32 } %339, 1
  %342 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %332, i32 %334, i32 %340, i32 0) #28
  %343 = extractvalue { i32, i32 } %342, 0
  %344 = extractvalue { i32, i32 } %342, 1
  %345 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %331, i32 %334, i32 %341, i32 %344) #28
  %346 = extractvalue { i32, i32 } %345, 0
  %347 = extractvalue { i32, i32 } %345, 1
  %348 = zext i32 %346 to i64
  %349 = zext i32 %347 to i64
  %350 = shl nuw i64 %349, 32
  %351 = or disjoint i64 %350, %348
  %352 = zext i32 %337 to i64
  %353 = zext i32 %343 to i64
  %354 = shl nuw i64 %353, 32
  %355 = or disjoint i64 %354, %352
  %356 = xor i64 %351, %355
  %357 = add i64 %356, %324
  %358 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %359 = getelementptr inbounds i8, ptr %358, i32 -16
  %360 = load i64, ptr %359, align 1
  %361 = getelementptr inbounds i8, ptr %358, i32 -8
  %362 = load i64, ptr %361, align 1
  %363 = xor i64 %360, -2623469361688619810
  %364 = xor i64 %362, 2262974939099578482
  %365 = lshr i64 %363, 32
  %366 = trunc nuw i64 %365 to i32
  %367 = trunc i64 %363 to i32
  %368 = lshr i64 %364, 32
  %369 = trunc nuw i64 %368 to i32
  %370 = trunc i64 %364 to i32
  %371 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %367, i32 %370) #28
  %372 = extractvalue { i32, i32 } %371, 0
  %373 = extractvalue { i32, i32 } %371, 1
  %374 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %366, i32 %370, i32 0, i32 %373) #28
  %375 = extractvalue { i32, i32 } %374, 0
  %376 = extractvalue { i32, i32 } %374, 1
  %377 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %367, i32 %369, i32 %375, i32 0) #28
  %378 = extractvalue { i32, i32 } %377, 0
  %379 = extractvalue { i32, i32 } %377, 1
  %380 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %366, i32 %369, i32 %376, i32 %379) #28
  %381 = extractvalue { i32, i32 } %380, 0
  %382 = extractvalue { i32, i32 } %380, 1
  %383 = zext i32 %381 to i64
  %384 = zext i32 %382 to i64
  %385 = shl nuw i64 %384, 32
  %386 = or disjoint i64 %385, %383
  %387 = zext i32 %372 to i64
  %388 = zext i32 %378 to i64
  %389 = shl nuw i64 %388, 32
  %390 = or disjoint i64 %389, %387
  %391 = xor i64 %386, %390
  %392 = add i64 %357, %391
  %393 = lshr i64 %392, 37
  %394 = xor i64 %393, %392
  %395 = mul i64 %394, 1609587929392839161
  %396 = lshr i64 %395, 32
  %397 = xor i64 %396, %395
  br label %404

398:                                              ; preds = %101
  %399 = icmp ult i32 %1, 241
  br i1 %399, label %400, label %402

400:                                              ; preds = %398
  %401 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %404

402:                                              ; preds = %398
  %403 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i32 noundef %1)
  br label %404

404:                                              ; preds = %76, %74, %51, %6, %402, %400, %323
  %405 = phi i64 [ %397, %323 ], [ %401, %400 ], [ %403, %402 ], [ %48, %6 ], [ %73, %51 ], [ %100, %76 ], [ 0, %74 ]
  ret i64 %405
}

; Function Attrs: nofree noinline nounwind memory(argmem: read)
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i32 noundef range(i32 129, 241) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #14 {
  %5 = zext nneg i32 %1 to i64
  %6 = mul i64 %5, -7046029288634856825
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ 0, %4 ], [ %51, %7 ]
  %9 = phi i64 [ %6, %4 ], [ %50, %7 ]
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
  %24 = trunc nuw i64 %23 to i32
  %25 = trunc i64 %18 to i32
  %26 = lshr i64 %22, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = trunc i64 %22 to i32
  %29 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %25, i32 %28) #28
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  %32 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %24, i32 %28, i32 0, i32 %31) #28
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = extractvalue { i32, i32 } %32, 1
  %35 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %25, i32 %27, i32 %33, i32 0) #28
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = extractvalue { i32, i32 } %35, 1
  %38 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %24, i32 %27, i32 %34, i32 %37) #28
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = extractvalue { i32, i32 } %38, 1
  %41 = zext i32 %39 to i64
  %42 = zext i32 %40 to i64
  %43 = shl nuw i64 %42, 32
  %44 = or disjoint i64 %43, %41
  %45 = zext i32 %30 to i64
  %46 = zext i32 %36 to i64
  %47 = shl nuw i64 %46, 32
  %48 = or disjoint i64 %47, %45
  %49 = xor i64 %44, %48
  %50 = add i64 %49, %9
  %51 = add nuw nsw i32 %8, 1
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %7

53:                                               ; preds = %7
  %54 = lshr i32 %1, 4
  %55 = lshr i64 %50, 37
  %56 = xor i64 %55, %50
  %57 = mul i64 %56, 1609587929392839161
  %58 = lshr i64 %57, 32
  %59 = xor i64 %58, %57
  %60 = icmp eq i32 %54, 8
  br i1 %60, label %108, label %61

61:                                               ; preds = %53, %61
  %62 = phi i32 [ %106, %61 ], [ 8, %53 ]
  %63 = phi i64 [ %105, %61 ], [ %59, %53 ]
  %64 = shl nsw i32 %62, 4
  %65 = getelementptr inbounds nuw i8, ptr %0, i32 %64
  %66 = getelementptr i8, ptr %2, i32 %64
  %67 = getelementptr i8, ptr %66, i32 -125
  %68 = load i64, ptr %65, align 1
  %69 = getelementptr inbounds nuw i8, ptr %65, i32 8
  %70 = load i64, ptr %69, align 1
  %71 = load i64, ptr %67, align 1
  %72 = add i64 %71, %3
  %73 = xor i64 %72, %68
  %74 = getelementptr i8, ptr %66, i32 -117
  %75 = load i64, ptr %74, align 1
  %76 = sub i64 %75, %3
  %77 = xor i64 %76, %70
  %78 = lshr i64 %73, 32
  %79 = trunc nuw i64 %78 to i32
  %80 = trunc i64 %73 to i32
  %81 = lshr i64 %77, 32
  %82 = trunc nuw i64 %81 to i32
  %83 = trunc i64 %77 to i32
  %84 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %80, i32 %83) #28
  %85 = extractvalue { i32, i32 } %84, 0
  %86 = extractvalue { i32, i32 } %84, 1
  %87 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %79, i32 %83, i32 0, i32 %86) #28
  %88 = extractvalue { i32, i32 } %87, 0
  %89 = extractvalue { i32, i32 } %87, 1
  %90 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %80, i32 %82, i32 %88, i32 0) #28
  %91 = extractvalue { i32, i32 } %90, 0
  %92 = extractvalue { i32, i32 } %90, 1
  %93 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %79, i32 %82, i32 %89, i32 %92) #28
  %94 = extractvalue { i32, i32 } %93, 0
  %95 = extractvalue { i32, i32 } %93, 1
  %96 = zext i32 %94 to i64
  %97 = zext i32 %95 to i64
  %98 = shl nuw i64 %97, 32
  %99 = or disjoint i64 %98, %96
  %100 = zext i32 %85 to i64
  %101 = zext i32 %91 to i64
  %102 = shl nuw i64 %101, 32
  %103 = or disjoint i64 %102, %100
  %104 = xor i64 %99, %103
  %105 = add i64 %104, %63
  %106 = add nuw nsw i32 %62, 1
  %107 = icmp eq i32 %106, %54
  br i1 %107, label %108, label %61

108:                                              ; preds = %61, %53
  %109 = phi i64 [ %59, %53 ], [ %105, %61 ]
  %110 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %111 = getelementptr inbounds i8, ptr %110, i32 -16
  %112 = getelementptr inbounds nuw i8, ptr %2, i32 119
  %113 = load i64, ptr %111, align 1
  %114 = getelementptr inbounds i8, ptr %110, i32 -8
  %115 = load i64, ptr %114, align 1
  %116 = load i64, ptr %112, align 1
  %117 = add i64 %116, %3
  %118 = xor i64 %117, %113
  %119 = getelementptr inbounds nuw i8, ptr %2, i32 127
  %120 = load i64, ptr %119, align 1
  %121 = sub i64 %120, %3
  %122 = xor i64 %121, %115
  %123 = lshr i64 %118, 32
  %124 = trunc nuw i64 %123 to i32
  %125 = trunc i64 %118 to i32
  %126 = lshr i64 %122, 32
  %127 = trunc nuw i64 %126 to i32
  %128 = trunc i64 %122 to i32
  %129 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %125, i32 %128) #28
  %130 = extractvalue { i32, i32 } %129, 0
  %131 = extractvalue { i32, i32 } %129, 1
  %132 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %124, i32 %128, i32 0, i32 %131) #28
  %133 = extractvalue { i32, i32 } %132, 0
  %134 = extractvalue { i32, i32 } %132, 1
  %135 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %125, i32 %127, i32 %133, i32 0) #28
  %136 = extractvalue { i32, i32 } %135, 0
  %137 = extractvalue { i32, i32 } %135, 1
  %138 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %124, i32 %127, i32 %134, i32 %137) #28
  %139 = extractvalue { i32, i32 } %138, 0
  %140 = extractvalue { i32, i32 } %138, 1
  %141 = zext i32 %139 to i64
  %142 = zext i32 %140 to i64
  %143 = shl nuw i64 %142, 32
  %144 = or disjoint i64 %143, %141
  %145 = zext i32 %130 to i64
  %146 = zext i32 %136 to i64
  %147 = shl nuw i64 %146, 32
  %148 = or disjoint i64 %147, %145
  %149 = xor i64 %144, %148
  %150 = add i64 %149, %109
  %151 = lshr i64 %150, 37
  %152 = xor i64 %151, %150
  %153 = mul i64 %152, 1609587929392839161
  %154 = lshr i64 %153, 32
  %155 = xor i64 %154, %153
  ret i64 %155
}

; Function Attrs: nofree noinline nounwind memory(argmem: read)
define internal fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef readonly %0, i32 noundef range(i32 241, 0) %1) unnamed_addr #14 {
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
  %345 = trunc nuw i64 %344 to i32
  %346 = trunc i64 %342 to i32
  %347 = lshr i64 %343, 32
  %348 = trunc nuw i64 %347 to i32
  %349 = trunc i64 %343 to i32
  %350 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %346, i32 %349) #28
  %351 = extractvalue { i32, i32 } %350, 0
  %352 = extractvalue { i32, i32 } %350, 1
  %353 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %345, i32 %349, i32 0, i32 %352) #28
  %354 = extractvalue { i32, i32 } %353, 0
  %355 = extractvalue { i32, i32 } %353, 1
  %356 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %346, i32 %348, i32 %354, i32 0) #28
  %357 = extractvalue { i32, i32 } %356, 0
  %358 = extractvalue { i32, i32 } %356, 1
  %359 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %345, i32 %348, i32 %355, i32 %358) #28
  %360 = extractvalue { i32, i32 } %359, 0
  %361 = extractvalue { i32, i32 } %359, 1
  %362 = zext i32 %360 to i64
  %363 = zext i32 %361 to i64
  %364 = shl nuw i64 %363, 32
  %365 = or disjoint i64 %364, %362
  %366 = zext i32 %351 to i64
  %367 = zext i32 %357 to i64
  %368 = shl nuw i64 %367, 32
  %369 = or disjoint i64 %368, %366
  %370 = xor i64 %365, %369
  %371 = add i64 %370, %341
  %372 = xor i64 %337, -1839215637059881052
  %373 = xor i64 %336, -3433288310154277810
  %374 = lshr i64 %372, 32
  %375 = trunc nuw i64 %374 to i32
  %376 = trunc i64 %372 to i32
  %377 = lshr i64 %373, 32
  %378 = trunc nuw i64 %377 to i32
  %379 = trunc i64 %373 to i32
  %380 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %376, i32 %379) #28
  %381 = extractvalue { i32, i32 } %380, 0
  %382 = extractvalue { i32, i32 } %380, 1
  %383 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %375, i32 %379, i32 0, i32 %382) #28
  %384 = extractvalue { i32, i32 } %383, 0
  %385 = extractvalue { i32, i32 } %383, 1
  %386 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %376, i32 %378, i32 %384, i32 0) #28
  %387 = extractvalue { i32, i32 } %386, 0
  %388 = extractvalue { i32, i32 } %386, 1
  %389 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %375, i32 %378, i32 %385, i32 %388) #28
  %390 = extractvalue { i32, i32 } %389, 0
  %391 = extractvalue { i32, i32 } %389, 1
  %392 = zext i32 %390 to i64
  %393 = zext i32 %391 to i64
  %394 = shl nuw i64 %393, 32
  %395 = or disjoint i64 %394, %392
  %396 = zext i32 %381 to i64
  %397 = zext i32 %387 to i64
  %398 = shl nuw i64 %397, 32
  %399 = or disjoint i64 %398, %396
  %400 = xor i64 %395, %399
  %401 = add i64 %371, %400
  %402 = xor i64 %335, 5046485836271438973
  %403 = xor i64 %334, -8055285457383852172
  %404 = lshr i64 %402, 32
  %405 = trunc nuw i64 %404 to i32
  %406 = trunc i64 %402 to i32
  %407 = lshr i64 %403, 32
  %408 = trunc nuw i64 %407 to i32
  %409 = trunc i64 %403 to i32
  %410 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %406, i32 %409) #28
  %411 = extractvalue { i32, i32 } %410, 0
  %412 = extractvalue { i32, i32 } %410, 1
  %413 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %405, i32 %409, i32 0, i32 %412) #28
  %414 = extractvalue { i32, i32 } %413, 0
  %415 = extractvalue { i32, i32 } %413, 1
  %416 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %406, i32 %408, i32 %414, i32 0) #28
  %417 = extractvalue { i32, i32 } %416, 0
  %418 = extractvalue { i32, i32 } %416, 1
  %419 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %405, i32 %408, i32 %415, i32 %418) #28
  %420 = extractvalue { i32, i32 } %419, 0
  %421 = extractvalue { i32, i32 } %419, 1
  %422 = zext i32 %420 to i64
  %423 = zext i32 %421 to i64
  %424 = shl nuw i64 %423, 32
  %425 = or disjoint i64 %424, %422
  %426 = zext i32 %411 to i64
  %427 = zext i32 %417 to i64
  %428 = shl nuw i64 %427, 32
  %429 = or disjoint i64 %428, %426
  %430 = xor i64 %425, %429
  %431 = add i64 %401, %430
  %432 = xor i64 %333, 5920048007935066598
  %433 = xor i64 %332, 7336514198459093435
  %434 = lshr i64 %432, 32
  %435 = trunc nuw i64 %434 to i32
  %436 = trunc i64 %432 to i32
  %437 = lshr i64 %433, 32
  %438 = trunc nuw i64 %437 to i32
  %439 = trunc i64 %433 to i32
  %440 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %436, i32 %439) #28
  %441 = extractvalue { i32, i32 } %440, 0
  %442 = extractvalue { i32, i32 } %440, 1
  %443 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %435, i32 %439, i32 0, i32 %442) #28
  %444 = extractvalue { i32, i32 } %443, 0
  %445 = extractvalue { i32, i32 } %443, 1
  %446 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %436, i32 %438, i32 %444, i32 0) #28
  %447 = extractvalue { i32, i32 } %446, 0
  %448 = extractvalue { i32, i32 } %446, 1
  %449 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %435, i32 %438, i32 %445, i32 %448) #28
  %450 = extractvalue { i32, i32 } %449, 0
  %451 = extractvalue { i32, i32 } %449, 1
  %452 = zext i32 %450 to i64
  %453 = zext i32 %451 to i64
  %454 = shl nuw i64 %453, 32
  %455 = or disjoint i64 %454, %452
  %456 = zext i32 %441 to i64
  %457 = zext i32 %447 to i64
  %458 = shl nuw i64 %457, 32
  %459 = or disjoint i64 %458, %456
  %460 = xor i64 %455, %459
  %461 = add i64 %431, %460
  %462 = lshr i64 %461, 37
  %463 = xor i64 %462, %461
  %464 = mul i64 %463, 1609587929392839161
  %465 = lshr i64 %464, 32
  %466 = xor i64 %465, %464
  ret i64 %466
}

; Function Attrs: nofree nounwind memory(argmem: read)
define dso_local i64 @XXH3_64bits_withSecret(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #13 {
  %5 = icmp ult i32 %1, 17
  br i1 %5, label %6, label %108

6:                                                ; preds = %4
  %7 = icmp samesign ugt i32 %1, 8
  br i1 %7, label %8, label %54

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
  %20 = trunc nuw i64 %19 to i32
  %21 = trunc i64 %11 to i32
  %22 = lshr i64 %17, 32
  %23 = trunc nuw i64 %22 to i32
  %24 = trunc i64 %17 to i32
  %25 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %21, i32 %24) #28
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = extractvalue { i32, i32 } %25, 1
  %28 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %20, i32 %24, i32 0, i32 %27) #28
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = extractvalue { i32, i32 } %28, 1
  %31 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %21, i32 %23, i32 %29, i32 0) #28
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = extractvalue { i32, i32 } %31, 1
  %34 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %20, i32 %23, i32 %30, i32 %33) #28
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = extractvalue { i32, i32 } %34, 1
  %37 = zext i32 %35 to i64
  %38 = zext i32 %36 to i64
  %39 = shl nuw i64 %38, 32
  %40 = or disjoint i64 %39, %37
  %41 = zext i32 %26 to i64
  %42 = zext i32 %32 to i64
  %43 = shl nuw i64 %42, 32
  %44 = or disjoint i64 %43, %41
  %45 = xor i64 %40, %44
  %46 = add i64 %11, %18
  %47 = add i64 %46, %17
  %48 = add i64 %47, %45
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587929392839161
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  br label %442

54:                                               ; preds = %6
  %55 = icmp samesign ugt i32 %1, 3
  br i1 %55, label %56, label %80

56:                                               ; preds = %54
  %57 = load i32, ptr %0, align 1
  %58 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %59 = getelementptr inbounds i8, ptr %58, i32 -4
  %60 = load i32, ptr %59, align 1
  %61 = zext i32 %57 to i64
  %62 = zext i32 %60 to i64
  %63 = shl nuw i64 %62, 32
  %64 = or disjoint i64 %63, %61
  %65 = load i64, ptr %2, align 1
  %66 = xor i64 %64, %65
  %67 = zext nneg i32 %1 to i64
  %68 = lshr i64 %66, 51
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, 2654435761
  %71 = add i64 %70, %67
  %72 = lshr i64 %71, 47
  %73 = xor i64 %72, %71
  %74 = mul i64 %73, -4417276706812531889
  %75 = lshr i64 %74, 37
  %76 = xor i64 %75, %74
  %77 = mul i64 %76, 1609587929392839161
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  br label %442

80:                                               ; preds = %54
  %81 = icmp eq i32 %1, 0
  br i1 %81, label %442, label %82

82:                                               ; preds = %80
  %83 = load i8, ptr %0, align 1
  %84 = lshr i32 %1, 1
  %85 = getelementptr inbounds nuw i8, ptr %0, i32 %84
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr i8, ptr %0, i32 %1
  %88 = getelementptr i8, ptr %87, i32 -1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %83 to i32
  %91 = zext i8 %86 to i32
  %92 = shl nuw nsw i32 %91, 8
  %93 = or disjoint i32 %92, %90
  %94 = zext i8 %89 to i32
  %95 = shl nuw nsw i32 %94, 16
  %96 = or disjoint i32 %93, %95
  %97 = shl nuw nsw i32 %1, 24
  %98 = or disjoint i32 %96, %97
  %99 = load i32, ptr %2, align 1
  %100 = xor i32 %98, %99
  %101 = zext i32 %100 to i64
  %102 = mul i64 %101, -7046029288634856825
  %103 = lshr i64 %102, 37
  %104 = xor i64 %103, %102
  %105 = mul i64 %104, 1609587929392839161
  %106 = lshr i64 %105, 32
  %107 = xor i64 %106, %105
  br label %442

108:                                              ; preds = %4
  %109 = icmp ult i32 %1, 129
  br i1 %109, label %110, label %436

110:                                              ; preds = %108
  %111 = zext nneg i32 %1 to i64
  %112 = mul i64 %111, -7046029288634856825
  %113 = icmp samesign ugt i32 %1, 32
  br i1 %113, label %114, label %354

114:                                              ; preds = %110
  %115 = icmp samesign ugt i32 %1, 64
  br i1 %115, label %116, label %275

116:                                              ; preds = %114
  %117 = icmp samesign ugt i32 %1, 96
  br i1 %117, label %118, label %196

118:                                              ; preds = %116
  %119 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %120 = getelementptr inbounds nuw i8, ptr %2, i32 96
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 1
  %125 = xor i64 %124, %121
  %126 = getelementptr inbounds nuw i8, ptr %2, i32 104
  %127 = load i64, ptr %126, align 1
  %128 = xor i64 %127, %123
  %129 = lshr i64 %125, 32
  %130 = trunc nuw i64 %129 to i32
  %131 = trunc i64 %125 to i32
  %132 = lshr i64 %128, 32
  %133 = trunc nuw i64 %132 to i32
  %134 = trunc i64 %128 to i32
  %135 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %131, i32 %134) #28
  %136 = extractvalue { i32, i32 } %135, 0
  %137 = extractvalue { i32, i32 } %135, 1
  %138 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %130, i32 %134, i32 0, i32 %137) #28
  %139 = extractvalue { i32, i32 } %138, 0
  %140 = extractvalue { i32, i32 } %138, 1
  %141 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %131, i32 %133, i32 %139, i32 0) #28
  %142 = extractvalue { i32, i32 } %141, 0
  %143 = extractvalue { i32, i32 } %141, 1
  %144 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %130, i32 %133, i32 %140, i32 %143) #28
  %145 = extractvalue { i32, i32 } %144, 0
  %146 = extractvalue { i32, i32 } %144, 1
  %147 = zext i32 %145 to i64
  %148 = zext i32 %146 to i64
  %149 = shl nuw i64 %148, 32
  %150 = or disjoint i64 %149, %147
  %151 = zext i32 %136 to i64
  %152 = zext i32 %142 to i64
  %153 = shl nuw i64 %152, 32
  %154 = or disjoint i64 %153, %151
  %155 = xor i64 %150, %154
  %156 = add i64 %155, %112
  %157 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %158 = getelementptr inbounds i8, ptr %157, i32 -64
  %159 = getelementptr inbounds nuw i8, ptr %2, i32 112
  %160 = load i64, ptr %158, align 1
  %161 = getelementptr inbounds i8, ptr %157, i32 -56
  %162 = load i64, ptr %161, align 1
  %163 = load i64, ptr %159, align 1
  %164 = xor i64 %163, %160
  %165 = getelementptr inbounds nuw i8, ptr %2, i32 120
  %166 = load i64, ptr %165, align 1
  %167 = xor i64 %166, %162
  %168 = lshr i64 %164, 32
  %169 = trunc nuw i64 %168 to i32
  %170 = trunc i64 %164 to i32
  %171 = lshr i64 %167, 32
  %172 = trunc nuw i64 %171 to i32
  %173 = trunc i64 %167 to i32
  %174 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %170, i32 %173) #28
  %175 = extractvalue { i32, i32 } %174, 0
  %176 = extractvalue { i32, i32 } %174, 1
  %177 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %169, i32 %173, i32 0, i32 %176) #28
  %178 = extractvalue { i32, i32 } %177, 0
  %179 = extractvalue { i32, i32 } %177, 1
  %180 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %170, i32 %172, i32 %178, i32 0) #28
  %181 = extractvalue { i32, i32 } %180, 0
  %182 = extractvalue { i32, i32 } %180, 1
  %183 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %169, i32 %172, i32 %179, i32 %182) #28
  %184 = extractvalue { i32, i32 } %183, 0
  %185 = extractvalue { i32, i32 } %183, 1
  %186 = zext i32 %184 to i64
  %187 = zext i32 %185 to i64
  %188 = shl nuw i64 %187, 32
  %189 = or disjoint i64 %188, %186
  %190 = zext i32 %175 to i64
  %191 = zext i32 %181 to i64
  %192 = shl nuw i64 %191, 32
  %193 = or disjoint i64 %192, %190
  %194 = xor i64 %189, %193
  %195 = add i64 %156, %194
  br label %196

196:                                              ; preds = %118, %116
  %197 = phi i64 [ %195, %118 ], [ %112, %116 ]
  %198 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %199 = getelementptr inbounds nuw i8, ptr %2, i32 64
  %200 = load i64, ptr %198, align 1
  %201 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %202 = load i64, ptr %201, align 1
  %203 = load i64, ptr %199, align 1
  %204 = xor i64 %203, %200
  %205 = getelementptr inbounds nuw i8, ptr %2, i32 72
  %206 = load i64, ptr %205, align 1
  %207 = xor i64 %206, %202
  %208 = lshr i64 %204, 32
  %209 = trunc nuw i64 %208 to i32
  %210 = trunc i64 %204 to i32
  %211 = lshr i64 %207, 32
  %212 = trunc nuw i64 %211 to i32
  %213 = trunc i64 %207 to i32
  %214 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %210, i32 %213) #28
  %215 = extractvalue { i32, i32 } %214, 0
  %216 = extractvalue { i32, i32 } %214, 1
  %217 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %209, i32 %213, i32 0, i32 %216) #28
  %218 = extractvalue { i32, i32 } %217, 0
  %219 = extractvalue { i32, i32 } %217, 1
  %220 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %210, i32 %212, i32 %218, i32 0) #28
  %221 = extractvalue { i32, i32 } %220, 0
  %222 = extractvalue { i32, i32 } %220, 1
  %223 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %209, i32 %212, i32 %219, i32 %222) #28
  %224 = extractvalue { i32, i32 } %223, 0
  %225 = extractvalue { i32, i32 } %223, 1
  %226 = zext i32 %224 to i64
  %227 = zext i32 %225 to i64
  %228 = shl nuw i64 %227, 32
  %229 = or disjoint i64 %228, %226
  %230 = zext i32 %215 to i64
  %231 = zext i32 %221 to i64
  %232 = shl nuw i64 %231, 32
  %233 = or disjoint i64 %232, %230
  %234 = xor i64 %229, %233
  %235 = add i64 %234, %197
  %236 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %237 = getelementptr inbounds i8, ptr %236, i32 -48
  %238 = getelementptr inbounds nuw i8, ptr %2, i32 80
  %239 = load i64, ptr %237, align 1
  %240 = getelementptr inbounds i8, ptr %236, i32 -40
  %241 = load i64, ptr %240, align 1
  %242 = load i64, ptr %238, align 1
  %243 = xor i64 %242, %239
  %244 = getelementptr inbounds nuw i8, ptr %2, i32 88
  %245 = load i64, ptr %244, align 1
  %246 = xor i64 %245, %241
  %247 = lshr i64 %243, 32
  %248 = trunc nuw i64 %247 to i32
  %249 = trunc i64 %243 to i32
  %250 = lshr i64 %246, 32
  %251 = trunc nuw i64 %250 to i32
  %252 = trunc i64 %246 to i32
  %253 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %249, i32 %252) #28
  %254 = extractvalue { i32, i32 } %253, 0
  %255 = extractvalue { i32, i32 } %253, 1
  %256 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %248, i32 %252, i32 0, i32 %255) #28
  %257 = extractvalue { i32, i32 } %256, 0
  %258 = extractvalue { i32, i32 } %256, 1
  %259 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %249, i32 %251, i32 %257, i32 0) #28
  %260 = extractvalue { i32, i32 } %259, 0
  %261 = extractvalue { i32, i32 } %259, 1
  %262 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %248, i32 %251, i32 %258, i32 %261) #28
  %263 = extractvalue { i32, i32 } %262, 0
  %264 = extractvalue { i32, i32 } %262, 1
  %265 = zext i32 %263 to i64
  %266 = zext i32 %264 to i64
  %267 = shl nuw i64 %266, 32
  %268 = or disjoint i64 %267, %265
  %269 = zext i32 %254 to i64
  %270 = zext i32 %260 to i64
  %271 = shl nuw i64 %270, 32
  %272 = or disjoint i64 %271, %269
  %273 = xor i64 %268, %272
  %274 = add i64 %235, %273
  br label %275

275:                                              ; preds = %196, %114
  %276 = phi i64 [ %274, %196 ], [ %112, %114 ]
  %277 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %278 = getelementptr inbounds nuw i8, ptr %2, i32 32
  %279 = load i64, ptr %277, align 1
  %280 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %281 = load i64, ptr %280, align 1
  %282 = load i64, ptr %278, align 1
  %283 = xor i64 %282, %279
  %284 = getelementptr inbounds nuw i8, ptr %2, i32 40
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %285, %281
  %287 = lshr i64 %283, 32
  %288 = trunc nuw i64 %287 to i32
  %289 = trunc i64 %283 to i32
  %290 = lshr i64 %286, 32
  %291 = trunc nuw i64 %290 to i32
  %292 = trunc i64 %286 to i32
  %293 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %289, i32 %292) #28
  %294 = extractvalue { i32, i32 } %293, 0
  %295 = extractvalue { i32, i32 } %293, 1
  %296 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %288, i32 %292, i32 0, i32 %295) #28
  %297 = extractvalue { i32, i32 } %296, 0
  %298 = extractvalue { i32, i32 } %296, 1
  %299 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %289, i32 %291, i32 %297, i32 0) #28
  %300 = extractvalue { i32, i32 } %299, 0
  %301 = extractvalue { i32, i32 } %299, 1
  %302 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %288, i32 %291, i32 %298, i32 %301) #28
  %303 = extractvalue { i32, i32 } %302, 0
  %304 = extractvalue { i32, i32 } %302, 1
  %305 = zext i32 %303 to i64
  %306 = zext i32 %304 to i64
  %307 = shl nuw i64 %306, 32
  %308 = or disjoint i64 %307, %305
  %309 = zext i32 %294 to i64
  %310 = zext i32 %300 to i64
  %311 = shl nuw i64 %310, 32
  %312 = or disjoint i64 %311, %309
  %313 = xor i64 %308, %312
  %314 = add i64 %313, %276
  %315 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %316 = getelementptr inbounds i8, ptr %315, i32 -32
  %317 = getelementptr inbounds nuw i8, ptr %2, i32 48
  %318 = load i64, ptr %316, align 1
  %319 = getelementptr inbounds i8, ptr %315, i32 -24
  %320 = load i64, ptr %319, align 1
  %321 = load i64, ptr %317, align 1
  %322 = xor i64 %321, %318
  %323 = getelementptr inbounds nuw i8, ptr %2, i32 56
  %324 = load i64, ptr %323, align 1
  %325 = xor i64 %324, %320
  %326 = lshr i64 %322, 32
  %327 = trunc nuw i64 %326 to i32
  %328 = trunc i64 %322 to i32
  %329 = lshr i64 %325, 32
  %330 = trunc nuw i64 %329 to i32
  %331 = trunc i64 %325 to i32
  %332 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %328, i32 %331) #28
  %333 = extractvalue { i32, i32 } %332, 0
  %334 = extractvalue { i32, i32 } %332, 1
  %335 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %327, i32 %331, i32 0, i32 %334) #28
  %336 = extractvalue { i32, i32 } %335, 0
  %337 = extractvalue { i32, i32 } %335, 1
  %338 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %328, i32 %330, i32 %336, i32 0) #28
  %339 = extractvalue { i32, i32 } %338, 0
  %340 = extractvalue { i32, i32 } %338, 1
  %341 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %327, i32 %330, i32 %337, i32 %340) #28
  %342 = extractvalue { i32, i32 } %341, 0
  %343 = extractvalue { i32, i32 } %341, 1
  %344 = zext i32 %342 to i64
  %345 = zext i32 %343 to i64
  %346 = shl nuw i64 %345, 32
  %347 = or disjoint i64 %346, %344
  %348 = zext i32 %333 to i64
  %349 = zext i32 %339 to i64
  %350 = shl nuw i64 %349, 32
  %351 = or disjoint i64 %350, %348
  %352 = xor i64 %347, %351
  %353 = add i64 %314, %352
  br label %354

354:                                              ; preds = %110, %275
  %355 = phi i64 [ %353, %275 ], [ %112, %110 ]
  %356 = load i64, ptr %0, align 1
  %357 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %358 = load i64, ptr %357, align 1
  %359 = load i64, ptr %2, align 1
  %360 = xor i64 %359, %356
  %361 = getelementptr inbounds nuw i8, ptr %2, i32 8
  %362 = load i64, ptr %361, align 1
  %363 = xor i64 %362, %358
  %364 = lshr i64 %360, 32
  %365 = trunc nuw i64 %364 to i32
  %366 = trunc i64 %360 to i32
  %367 = lshr i64 %363, 32
  %368 = trunc nuw i64 %367 to i32
  %369 = trunc i64 %363 to i32
  %370 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %366, i32 %369) #28
  %371 = extractvalue { i32, i32 } %370, 0
  %372 = extractvalue { i32, i32 } %370, 1
  %373 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %365, i32 %369, i32 0, i32 %372) #28
  %374 = extractvalue { i32, i32 } %373, 0
  %375 = extractvalue { i32, i32 } %373, 1
  %376 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %366, i32 %368, i32 %374, i32 0) #28
  %377 = extractvalue { i32, i32 } %376, 0
  %378 = extractvalue { i32, i32 } %376, 1
  %379 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %365, i32 %368, i32 %375, i32 %378) #28
  %380 = extractvalue { i32, i32 } %379, 0
  %381 = extractvalue { i32, i32 } %379, 1
  %382 = zext i32 %380 to i64
  %383 = zext i32 %381 to i64
  %384 = shl nuw i64 %383, 32
  %385 = or disjoint i64 %384, %382
  %386 = zext i32 %371 to i64
  %387 = zext i32 %377 to i64
  %388 = shl nuw i64 %387, 32
  %389 = or disjoint i64 %388, %386
  %390 = xor i64 %385, %389
  %391 = add i64 %390, %355
  %392 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %393 = getelementptr inbounds i8, ptr %392, i32 -16
  %394 = getelementptr inbounds nuw i8, ptr %2, i32 16
  %395 = load i64, ptr %393, align 1
  %396 = getelementptr inbounds i8, ptr %392, i32 -8
  %397 = load i64, ptr %396, align 1
  %398 = load i64, ptr %394, align 1
  %399 = xor i64 %398, %395
  %400 = getelementptr inbounds nuw i8, ptr %2, i32 24
  %401 = load i64, ptr %400, align 1
  %402 = xor i64 %401, %397
  %403 = lshr i64 %399, 32
  %404 = trunc nuw i64 %403 to i32
  %405 = trunc i64 %399 to i32
  %406 = lshr i64 %402, 32
  %407 = trunc nuw i64 %406 to i32
  %408 = trunc i64 %402 to i32
  %409 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %405, i32 %408) #28
  %410 = extractvalue { i32, i32 } %409, 0
  %411 = extractvalue { i32, i32 } %409, 1
  %412 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %404, i32 %408, i32 0, i32 %411) #28
  %413 = extractvalue { i32, i32 } %412, 0
  %414 = extractvalue { i32, i32 } %412, 1
  %415 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %405, i32 %407, i32 %413, i32 0) #28
  %416 = extractvalue { i32, i32 } %415, 0
  %417 = extractvalue { i32, i32 } %415, 1
  %418 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %404, i32 %407, i32 %414, i32 %417) #28
  %419 = extractvalue { i32, i32 } %418, 0
  %420 = extractvalue { i32, i32 } %418, 1
  %421 = zext i32 %419 to i64
  %422 = zext i32 %420 to i64
  %423 = shl nuw i64 %422, 32
  %424 = or disjoint i64 %423, %421
  %425 = zext i32 %410 to i64
  %426 = zext i32 %416 to i64
  %427 = shl nuw i64 %426, 32
  %428 = or disjoint i64 %427, %425
  %429 = xor i64 %424, %428
  %430 = add i64 %391, %429
  %431 = lshr i64 %430, 37
  %432 = xor i64 %431, %430
  %433 = mul i64 %432, 1609587929392839161
  %434 = lshr i64 %433, 32
  %435 = xor i64 %434, %433
  br label %442

436:                                              ; preds = %108
  %437 = icmp ult i32 %1, 241
  br i1 %437, label %438, label %440

438:                                              ; preds = %436
  %439 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef 0)
  br label %442

440:                                              ; preds = %436
  %441 = tail call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %442

442:                                              ; preds = %82, %80, %56, %8, %440, %438, %354
  %443 = phi i64 [ %435, %354 ], [ %439, %438 ], [ %441, %440 ], [ %53, %8 ], [ %79, %56 ], [ %107, %82 ], [ 0, %80 ]
  ret i64 %443
}

; Function Attrs: nofree noinline nounwind memory(argmem: read)
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef readonly %0, i32 noundef range(i32 241, 0) %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #14 {
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
  %452 = trunc nuw i64 %451 to i32
  %453 = trunc i64 %447 to i32
  %454 = lshr i64 %450, 32
  %455 = trunc nuw i64 %454 to i32
  %456 = trunc i64 %450 to i32
  %457 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %453, i32 %456) #28
  %458 = extractvalue { i32, i32 } %457, 0
  %459 = extractvalue { i32, i32 } %457, 1
  %460 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %452, i32 %456, i32 0, i32 %459) #28
  %461 = extractvalue { i32, i32 } %460, 0
  %462 = extractvalue { i32, i32 } %460, 1
  %463 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %453, i32 %455, i32 %461, i32 0) #28
  %464 = extractvalue { i32, i32 } %463, 0
  %465 = extractvalue { i32, i32 } %463, 1
  %466 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %452, i32 %455, i32 %462, i32 %465) #28
  %467 = extractvalue { i32, i32 } %466, 0
  %468 = extractvalue { i32, i32 } %466, 1
  %469 = zext i32 %467 to i64
  %470 = zext i32 %468 to i64
  %471 = shl nuw i64 %470, 32
  %472 = or disjoint i64 %471, %469
  %473 = zext i32 %458 to i64
  %474 = zext i32 %464 to i64
  %475 = shl nuw i64 %474, 32
  %476 = or disjoint i64 %475, %473
  %477 = xor i64 %472, %476
  %478 = add i64 %477, %445
  %479 = getelementptr inbounds nuw i8, ptr %2, i32 27
  %480 = load i64, ptr %479, align 1
  %481 = xor i64 %480, %440
  %482 = getelementptr inbounds nuw i8, ptr %2, i32 35
  %483 = load i64, ptr %482, align 1
  %484 = xor i64 %483, %439
  %485 = lshr i64 %481, 32
  %486 = trunc nuw i64 %485 to i32
  %487 = trunc i64 %481 to i32
  %488 = lshr i64 %484, 32
  %489 = trunc nuw i64 %488 to i32
  %490 = trunc i64 %484 to i32
  %491 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %487, i32 %490) #28
  %492 = extractvalue { i32, i32 } %491, 0
  %493 = extractvalue { i32, i32 } %491, 1
  %494 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %486, i32 %490, i32 0, i32 %493) #28
  %495 = extractvalue { i32, i32 } %494, 0
  %496 = extractvalue { i32, i32 } %494, 1
  %497 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %487, i32 %489, i32 %495, i32 0) #28
  %498 = extractvalue { i32, i32 } %497, 0
  %499 = extractvalue { i32, i32 } %497, 1
  %500 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %486, i32 %489, i32 %496, i32 %499) #28
  %501 = extractvalue { i32, i32 } %500, 0
  %502 = extractvalue { i32, i32 } %500, 1
  %503 = zext i32 %501 to i64
  %504 = zext i32 %502 to i64
  %505 = shl nuw i64 %504, 32
  %506 = or disjoint i64 %505, %503
  %507 = zext i32 %492 to i64
  %508 = zext i32 %498 to i64
  %509 = shl nuw i64 %508, 32
  %510 = or disjoint i64 %509, %507
  %511 = xor i64 %506, %510
  %512 = add i64 %478, %511
  %513 = getelementptr inbounds nuw i8, ptr %2, i32 43
  %514 = load i64, ptr %513, align 1
  %515 = xor i64 %514, %438
  %516 = getelementptr inbounds nuw i8, ptr %2, i32 51
  %517 = load i64, ptr %516, align 1
  %518 = xor i64 %517, %437
  %519 = lshr i64 %515, 32
  %520 = trunc nuw i64 %519 to i32
  %521 = trunc i64 %515 to i32
  %522 = lshr i64 %518, 32
  %523 = trunc nuw i64 %522 to i32
  %524 = trunc i64 %518 to i32
  %525 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %521, i32 %524) #28
  %526 = extractvalue { i32, i32 } %525, 0
  %527 = extractvalue { i32, i32 } %525, 1
  %528 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %520, i32 %524, i32 0, i32 %527) #28
  %529 = extractvalue { i32, i32 } %528, 0
  %530 = extractvalue { i32, i32 } %528, 1
  %531 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %521, i32 %523, i32 %529, i32 0) #28
  %532 = extractvalue { i32, i32 } %531, 0
  %533 = extractvalue { i32, i32 } %531, 1
  %534 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %520, i32 %523, i32 %530, i32 %533) #28
  %535 = extractvalue { i32, i32 } %534, 0
  %536 = extractvalue { i32, i32 } %534, 1
  %537 = zext i32 %535 to i64
  %538 = zext i32 %536 to i64
  %539 = shl nuw i64 %538, 32
  %540 = or disjoint i64 %539, %537
  %541 = zext i32 %526 to i64
  %542 = zext i32 %532 to i64
  %543 = shl nuw i64 %542, 32
  %544 = or disjoint i64 %543, %541
  %545 = xor i64 %540, %544
  %546 = add i64 %512, %545
  %547 = getelementptr inbounds nuw i8, ptr %2, i32 59
  %548 = load i64, ptr %547, align 1
  %549 = xor i64 %548, %436
  %550 = getelementptr inbounds nuw i8, ptr %2, i32 67
  %551 = load i64, ptr %550, align 1
  %552 = xor i64 %551, %435
  %553 = lshr i64 %549, 32
  %554 = trunc nuw i64 %553 to i32
  %555 = trunc i64 %549 to i32
  %556 = lshr i64 %552, 32
  %557 = trunc nuw i64 %556 to i32
  %558 = trunc i64 %552 to i32
  %559 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %555, i32 %558) #28
  %560 = extractvalue { i32, i32 } %559, 0
  %561 = extractvalue { i32, i32 } %559, 1
  %562 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %554, i32 %558, i32 0, i32 %561) #28
  %563 = extractvalue { i32, i32 } %562, 0
  %564 = extractvalue { i32, i32 } %562, 1
  %565 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %555, i32 %557, i32 %563, i32 0) #28
  %566 = extractvalue { i32, i32 } %565, 0
  %567 = extractvalue { i32, i32 } %565, 1
  %568 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %554, i32 %557, i32 %564, i32 %567) #28
  %569 = extractvalue { i32, i32 } %568, 0
  %570 = extractvalue { i32, i32 } %568, 1
  %571 = zext i32 %569 to i64
  %572 = zext i32 %570 to i64
  %573 = shl nuw i64 %572, 32
  %574 = or disjoint i64 %573, %571
  %575 = zext i32 %560 to i64
  %576 = zext i32 %566 to i64
  %577 = shl nuw i64 %576, 32
  %578 = or disjoint i64 %577, %575
  %579 = xor i64 %574, %578
  %580 = add i64 %546, %579
  %581 = lshr i64 %580, 37
  %582 = xor i64 %581, %580
  %583 = mul i64 %582, 1609587929392839161
  %584 = lshr i64 %583, 32
  %585 = xor i64 %584, %583
  ret i64 %585
}

; Function Attrs: nofree nounwind memory(argmem: read)
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = icmp ult i32 %1, 17
  br i1 %4, label %5, label %106

5:                                                ; preds = %3
  %6 = icmp samesign ugt i32 %1, 8
  br i1 %6, label %7, label %52

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
  %18 = trunc nuw i64 %17 to i32
  %19 = trunc i64 %10 to i32
  %20 = lshr i64 %15, 32
  %21 = trunc nuw i64 %20 to i32
  %22 = trunc i64 %15 to i32
  %23 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %19, i32 %22) #28
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = extractvalue { i32, i32 } %23, 1
  %26 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %18, i32 %22, i32 0, i32 %25) #28
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = extractvalue { i32, i32 } %26, 1
  %29 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %19, i32 %21, i32 %27, i32 0) #28
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  %32 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %18, i32 %21, i32 %28, i32 %31) #28
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = extractvalue { i32, i32 } %32, 1
  %35 = zext i32 %33 to i64
  %36 = zext i32 %34 to i64
  %37 = shl nuw i64 %36, 32
  %38 = or disjoint i64 %37, %35
  %39 = zext i32 %24 to i64
  %40 = zext i32 %30 to i64
  %41 = shl nuw i64 %40, 32
  %42 = or disjoint i64 %41, %39
  %43 = xor i64 %38, %42
  %44 = add i64 %10, %16
  %45 = add i64 %44, %15
  %46 = add i64 %45, %43
  %47 = lshr i64 %46, 37
  %48 = xor i64 %47, %46
  %49 = mul i64 %48, 1609587929392839161
  %50 = lshr i64 %49, 32
  %51 = xor i64 %50, %49
  br label %425

52:                                               ; preds = %5
  %53 = icmp samesign ugt i32 %1, 3
  br i1 %53, label %54, label %78

54:                                               ; preds = %52
  %55 = load i32, ptr %0, align 1
  %56 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %57 = getelementptr inbounds i8, ptr %56, i32 -4
  %58 = load i32, ptr %57, align 1
  %59 = zext i32 %55 to i64
  %60 = zext i32 %58 to i64
  %61 = shl nuw i64 %60, 32
  %62 = or disjoint i64 %61, %59
  %63 = add i64 %2, -4734510112055689544
  %64 = xor i64 %62, %63
  %65 = zext nneg i32 %1 to i64
  %66 = lshr i64 %64, 51
  %67 = xor i64 %66, %64
  %68 = mul i64 %67, 2654435761
  %69 = add i64 %68, %65
  %70 = lshr i64 %69, 47
  %71 = xor i64 %70, %69
  %72 = mul i64 %71, -4417276706812531889
  %73 = lshr i64 %72, 37
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, 1609587929392839161
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  br label %425

78:                                               ; preds = %52
  %79 = icmp eq i32 %1, 0
  br i1 %79, label %425, label %80

80:                                               ; preds = %78
  %81 = load i8, ptr %0, align 1
  %82 = lshr i32 %1, 1
  %83 = getelementptr inbounds nuw i8, ptr %0, i32 %82
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr i8, ptr %0, i32 %1
  %86 = getelementptr i8, ptr %85, i32 -1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %81 to i32
  %89 = zext i8 %84 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = or disjoint i32 %90, %88
  %92 = zext i8 %87 to i32
  %93 = shl nuw nsw i32 %92, 16
  %94 = or disjoint i32 %91, %93
  %95 = shl nuw nsw i32 %1, 24
  %96 = or disjoint i32 %94, %95
  %97 = zext nneg i32 %96 to i64
  %98 = add i64 %2, 963444408
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, -7046029288634856825
  %101 = lshr i64 %100, 37
  %102 = xor i64 %101, %100
  %103 = mul i64 %102, 1609587929392839161
  %104 = lshr i64 %103, 32
  %105 = xor i64 %104, %103
  br label %425

106:                                              ; preds = %3
  %107 = icmp ult i32 %1, 129
  br i1 %107, label %108, label %419

108:                                              ; preds = %106
  %109 = zext nneg i32 %1 to i64
  %110 = mul i64 %109, -7046029288634856825
  %111 = icmp samesign ugt i32 %1, 32
  br i1 %111, label %112, label %340

112:                                              ; preds = %108
  %113 = icmp samesign ugt i32 %1, 64
  br i1 %113, label %114, label %265

114:                                              ; preds = %112
  %115 = icmp samesign ugt i32 %1, 96
  br i1 %115, label %116, label %190

116:                                              ; preds = %114
  %117 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %118 = load i64, ptr %117, align 1
  %119 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %120 = load i64, ptr %119, align 1
  %121 = add i64 %2, 4554437623014685352
  %122 = xor i64 %118, %121
  %123 = sub i64 2111919702937427193, %2
  %124 = xor i64 %120, %123
  %125 = lshr i64 %122, 32
  %126 = trunc nuw i64 %125 to i32
  %127 = trunc i64 %122 to i32
  %128 = lshr i64 %124, 32
  %129 = trunc nuw i64 %128 to i32
  %130 = trunc i64 %124 to i32
  %131 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %127, i32 %130) #28
  %132 = extractvalue { i32, i32 } %131, 0
  %133 = extractvalue { i32, i32 } %131, 1
  %134 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %126, i32 %130, i32 0, i32 %133) #28
  %135 = extractvalue { i32, i32 } %134, 0
  %136 = extractvalue { i32, i32 } %134, 1
  %137 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %127, i32 %129, i32 %135, i32 0) #28
  %138 = extractvalue { i32, i32 } %137, 0
  %139 = extractvalue { i32, i32 } %137, 1
  %140 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %126, i32 %129, i32 %136, i32 %139) #28
  %141 = extractvalue { i32, i32 } %140, 0
  %142 = extractvalue { i32, i32 } %140, 1
  %143 = zext i32 %141 to i64
  %144 = zext i32 %142 to i64
  %145 = shl nuw i64 %144, 32
  %146 = or disjoint i64 %145, %143
  %147 = zext i32 %132 to i64
  %148 = zext i32 %138 to i64
  %149 = shl nuw i64 %148, 32
  %150 = or disjoint i64 %149, %147
  %151 = xor i64 %146, %150
  %152 = add i64 %151, %110
  %153 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %154 = getelementptr inbounds i8, ptr %153, i32 -64
  %155 = load i64, ptr %154, align 1
  %156 = getelementptr inbounds i8, ptr %153, i32 -56
  %157 = load i64, ptr %156, align 1
  %158 = add i64 %2, 3556072174620004746
  %159 = xor i64 %155, %158
  %160 = sub i64 7238261902898274248, %2
  %161 = xor i64 %157, %160
  %162 = lshr i64 %159, 32
  %163 = trunc nuw i64 %162 to i32
  %164 = trunc i64 %159 to i32
  %165 = lshr i64 %161, 32
  %166 = trunc nuw i64 %165 to i32
  %167 = trunc i64 %161 to i32
  %168 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %164, i32 %167) #28
  %169 = extractvalue { i32, i32 } %168, 0
  %170 = extractvalue { i32, i32 } %168, 1
  %171 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %163, i32 %167, i32 0, i32 %170) #28
  %172 = extractvalue { i32, i32 } %171, 0
  %173 = extractvalue { i32, i32 } %171, 1
  %174 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %164, i32 %166, i32 %172, i32 0) #28
  %175 = extractvalue { i32, i32 } %174, 0
  %176 = extractvalue { i32, i32 } %174, 1
  %177 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %163, i32 %166, i32 %173, i32 %176) #28
  %178 = extractvalue { i32, i32 } %177, 0
  %179 = extractvalue { i32, i32 } %177, 1
  %180 = zext i32 %178 to i64
  %181 = zext i32 %179 to i64
  %182 = shl nuw i64 %181, 32
  %183 = or disjoint i64 %182, %180
  %184 = zext i32 %169 to i64
  %185 = zext i32 %175 to i64
  %186 = shl nuw i64 %185, 32
  %187 = or disjoint i64 %186, %184
  %188 = xor i64 %183, %187
  %189 = add i64 %152, %188
  br label %190

190:                                              ; preds = %116, %114
  %191 = phi i64 [ %189, %116 ], [ %110, %114 ]
  %192 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %193 = load i64, ptr %192, align 1
  %194 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %195 = load i64, ptr %194, align 1
  %196 = add i64 %2, -3818837453329782724
  %197 = xor i64 %193, %196
  %198 = sub i64 -6688317018830679928, %2
  %199 = xor i64 %195, %198
  %200 = lshr i64 %197, 32
  %201 = trunc nuw i64 %200 to i32
  %202 = trunc i64 %197 to i32
  %203 = lshr i64 %199, 32
  %204 = trunc nuw i64 %203 to i32
  %205 = trunc i64 %199 to i32
  %206 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %202, i32 %205) #28
  %207 = extractvalue { i32, i32 } %206, 0
  %208 = extractvalue { i32, i32 } %206, 1
  %209 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %201, i32 %205, i32 0, i32 %208) #28
  %210 = extractvalue { i32, i32 } %209, 0
  %211 = extractvalue { i32, i32 } %209, 1
  %212 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %202, i32 %204, i32 %210, i32 0) #28
  %213 = extractvalue { i32, i32 } %212, 0
  %214 = extractvalue { i32, i32 } %212, 1
  %215 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %201, i32 %204, i32 %211, i32 %214) #28
  %216 = extractvalue { i32, i32 } %215, 0
  %217 = extractvalue { i32, i32 } %215, 1
  %218 = zext i32 %216 to i64
  %219 = zext i32 %217 to i64
  %220 = shl nuw i64 %219, 32
  %221 = or disjoint i64 %220, %218
  %222 = zext i32 %207 to i64
  %223 = zext i32 %213 to i64
  %224 = shl nuw i64 %223, 32
  %225 = or disjoint i64 %224, %222
  %226 = xor i64 %221, %225
  %227 = add i64 %226, %191
  %228 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %229 = getelementptr inbounds i8, ptr %228, i32 -48
  %230 = load i64, ptr %229, align 1
  %231 = getelementptr inbounds i8, ptr %228, i32 -40
  %232 = load i64, ptr %231, align 1
  %233 = add i64 %2, 5690594596133299313
  %234 = xor i64 %230, %233
  %235 = sub i64 -2833645246901970632, %2
  %236 = xor i64 %232, %235
  %237 = lshr i64 %234, 32
  %238 = trunc nuw i64 %237 to i32
  %239 = trunc i64 %234 to i32
  %240 = lshr i64 %236, 32
  %241 = trunc nuw i64 %240 to i32
  %242 = trunc i64 %236 to i32
  %243 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %239, i32 %242) #28
  %244 = extractvalue { i32, i32 } %243, 0
  %245 = extractvalue { i32, i32 } %243, 1
  %246 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %238, i32 %242, i32 0, i32 %245) #28
  %247 = extractvalue { i32, i32 } %246, 0
  %248 = extractvalue { i32, i32 } %246, 1
  %249 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %239, i32 %241, i32 %247, i32 0) #28
  %250 = extractvalue { i32, i32 } %249, 0
  %251 = extractvalue { i32, i32 } %249, 1
  %252 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %238, i32 %241, i32 %248, i32 %251) #28
  %253 = extractvalue { i32, i32 } %252, 0
  %254 = extractvalue { i32, i32 } %252, 1
  %255 = zext i32 %253 to i64
  %256 = zext i32 %254 to i64
  %257 = shl nuw i64 %256, 32
  %258 = or disjoint i64 %257, %255
  %259 = zext i32 %244 to i64
  %260 = zext i32 %250 to i64
  %261 = shl nuw i64 %260, 32
  %262 = or disjoint i64 %261, %259
  %263 = xor i64 %258, %262
  %264 = add i64 %227, %263
  br label %265

265:                                              ; preds = %190, %112
  %266 = phi i64 [ %264, %190 ], [ %110, %112 ]
  %267 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %268 = load i64, ptr %267, align 1
  %269 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %270 = load i64, ptr %269, align 1
  %271 = add i64 %2, 8711581037947681227
  %272 = xor i64 %268, %271
  %273 = sub i64 2410270004345854594, %2
  %274 = xor i64 %270, %273
  %275 = lshr i64 %272, 32
  %276 = trunc nuw i64 %275 to i32
  %277 = trunc i64 %272 to i32
  %278 = lshr i64 %274, 32
  %279 = trunc nuw i64 %278 to i32
  %280 = trunc i64 %274 to i32
  %281 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %277, i32 %280) #28
  %282 = extractvalue { i32, i32 } %281, 0
  %283 = extractvalue { i32, i32 } %281, 1
  %284 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %276, i32 %280, i32 0, i32 %283) #28
  %285 = extractvalue { i32, i32 } %284, 0
  %286 = extractvalue { i32, i32 } %284, 1
  %287 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %277, i32 %279, i32 %285, i32 0) #28
  %288 = extractvalue { i32, i32 } %287, 0
  %289 = extractvalue { i32, i32 } %287, 1
  %290 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %276, i32 %279, i32 %286, i32 %289) #28
  %291 = extractvalue { i32, i32 } %290, 0
  %292 = extractvalue { i32, i32 } %290, 1
  %293 = zext i32 %291 to i64
  %294 = zext i32 %292 to i64
  %295 = shl nuw i64 %294, 32
  %296 = or disjoint i64 %295, %293
  %297 = zext i32 %282 to i64
  %298 = zext i32 %288 to i64
  %299 = shl nuw i64 %298, 32
  %300 = or disjoint i64 %299, %297
  %301 = xor i64 %296, %300
  %302 = add i64 %301, %266
  %303 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %304 = getelementptr inbounds i8, ptr %303, i32 -32
  %305 = load i64, ptr %304, align 1
  %306 = getelementptr inbounds i8, ptr %303, i32 -24
  %307 = load i64, ptr %306, align 1
  %308 = add i64 %2, -8204357891075471176
  %309 = xor i64 %305, %308
  %310 = sub i64 5487137525590930912, %2
  %311 = xor i64 %307, %310
  %312 = lshr i64 %309, 32
  %313 = trunc nuw i64 %312 to i32
  %314 = trunc i64 %309 to i32
  %315 = lshr i64 %311, 32
  %316 = trunc nuw i64 %315 to i32
  %317 = trunc i64 %311 to i32
  %318 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %314, i32 %317) #28
  %319 = extractvalue { i32, i32 } %318, 0
  %320 = extractvalue { i32, i32 } %318, 1
  %321 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %313, i32 %317, i32 0, i32 %320) #28
  %322 = extractvalue { i32, i32 } %321, 0
  %323 = extractvalue { i32, i32 } %321, 1
  %324 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %314, i32 %316, i32 %322, i32 0) #28
  %325 = extractvalue { i32, i32 } %324, 0
  %326 = extractvalue { i32, i32 } %324, 1
  %327 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %313, i32 %316, i32 %323, i32 %326) #28
  %328 = extractvalue { i32, i32 } %327, 0
  %329 = extractvalue { i32, i32 } %327, 1
  %330 = zext i32 %328 to i64
  %331 = zext i32 %329 to i64
  %332 = shl nuw i64 %331, 32
  %333 = or disjoint i64 %332, %330
  %334 = zext i32 %319 to i64
  %335 = zext i32 %325 to i64
  %336 = shl nuw i64 %335, 32
  %337 = or disjoint i64 %336, %334
  %338 = xor i64 %333, %337
  %339 = add i64 %302, %338
  br label %340

340:                                              ; preds = %108, %265
  %341 = phi i64 [ %339, %265 ], [ %110, %108 ]
  %342 = load i64, ptr %0, align 1
  %343 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %344 = load i64, ptr %343, align 1
  %345 = add i64 %2, -4734510112055689544
  %346 = xor i64 %342, %345
  %347 = sub i64 2066345149520216444, %2
  %348 = xor i64 %344, %347
  %349 = lshr i64 %346, 32
  %350 = trunc nuw i64 %349 to i32
  %351 = trunc i64 %346 to i32
  %352 = lshr i64 %348, 32
  %353 = trunc nuw i64 %352 to i32
  %354 = trunc i64 %348 to i32
  %355 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %351, i32 %354) #28
  %356 = extractvalue { i32, i32 } %355, 0
  %357 = extractvalue { i32, i32 } %355, 1
  %358 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %350, i32 %354, i32 0, i32 %357) #28
  %359 = extractvalue { i32, i32 } %358, 0
  %360 = extractvalue { i32, i32 } %358, 1
  %361 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %351, i32 %353, i32 %359, i32 0) #28
  %362 = extractvalue { i32, i32 } %361, 0
  %363 = extractvalue { i32, i32 } %361, 1
  %364 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %350, i32 %353, i32 %360, i32 %363) #28
  %365 = extractvalue { i32, i32 } %364, 0
  %366 = extractvalue { i32, i32 } %364, 1
  %367 = zext i32 %365 to i64
  %368 = zext i32 %366 to i64
  %369 = shl nuw i64 %368, 32
  %370 = or disjoint i64 %369, %367
  %371 = zext i32 %356 to i64
  %372 = zext i32 %362 to i64
  %373 = shl nuw i64 %372, 32
  %374 = or disjoint i64 %373, %371
  %375 = xor i64 %370, %374
  %376 = add i64 %375, %341
  %377 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %378 = getelementptr inbounds i8, ptr %377, i32 -16
  %379 = load i64, ptr %378, align 1
  %380 = getelementptr inbounds i8, ptr %377, i32 -8
  %381 = load i64, ptr %380, align 1
  %382 = add i64 %2, -2623469361688619810
  %383 = xor i64 %379, %382
  %384 = sub i64 2262974939099578482, %2
  %385 = xor i64 %381, %384
  %386 = lshr i64 %383, 32
  %387 = trunc nuw i64 %386 to i32
  %388 = trunc i64 %383 to i32
  %389 = lshr i64 %385, 32
  %390 = trunc nuw i64 %389 to i32
  %391 = trunc i64 %385 to i32
  %392 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %388, i32 %391) #28
  %393 = extractvalue { i32, i32 } %392, 0
  %394 = extractvalue { i32, i32 } %392, 1
  %395 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %387, i32 %391, i32 0, i32 %394) #28
  %396 = extractvalue { i32, i32 } %395, 0
  %397 = extractvalue { i32, i32 } %395, 1
  %398 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %388, i32 %390, i32 %396, i32 0) #28
  %399 = extractvalue { i32, i32 } %398, 0
  %400 = extractvalue { i32, i32 } %398, 1
  %401 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %387, i32 %390, i32 %397, i32 %400) #28
  %402 = extractvalue { i32, i32 } %401, 0
  %403 = extractvalue { i32, i32 } %401, 1
  %404 = zext i32 %402 to i64
  %405 = zext i32 %403 to i64
  %406 = shl nuw i64 %405, 32
  %407 = or disjoint i64 %406, %404
  %408 = zext i32 %393 to i64
  %409 = zext i32 %399 to i64
  %410 = shl nuw i64 %409, 32
  %411 = or disjoint i64 %410, %408
  %412 = xor i64 %407, %411
  %413 = add i64 %376, %412
  %414 = lshr i64 %413, 37
  %415 = xor i64 %414, %413
  %416 = mul i64 %415, 1609587929392839161
  %417 = lshr i64 %416, 32
  %418 = xor i64 %417, %416
  br label %425

419:                                              ; preds = %106
  %420 = icmp ult i32 %1, 241
  br i1 %420, label %421, label %423

421:                                              ; preds = %419
  %422 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @kSecret, i64 noundef %2)
  br label %425

423:                                              ; preds = %419
  %424 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i32 noundef %1, i64 noundef %2)
  br label %425

425:                                              ; preds = %80, %78, %54, %7, %423, %421, %340
  %426 = phi i64 [ %418, %340 ], [ %422, %421 ], [ %424, %423 ], [ %51, %7 ], [ %77, %54 ], [ %105, %80 ], [ 0, %78 ]
  ret i64 %426
}

; Function Attrs: nofree noinline nounwind memory(argmem: read)
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i32 noundef range(i32 241, 0) %1, i64 noundef %2) unnamed_addr #14 {
  %4 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #29
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
  br label %552

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
  %418 = trunc nuw i64 %417 to i32
  %419 = trunc i64 %413 to i32
  %420 = lshr i64 %416, 32
  %421 = trunc nuw i64 %420 to i32
  %422 = trunc i64 %416 to i32
  %423 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %419, i32 %422) #28
  %424 = extractvalue { i32, i32 } %423, 0
  %425 = extractvalue { i32, i32 } %423, 1
  %426 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %418, i32 %422, i32 0, i32 %425) #28
  %427 = extractvalue { i32, i32 } %426, 0
  %428 = extractvalue { i32, i32 } %426, 1
  %429 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %419, i32 %421, i32 %427, i32 0) #28
  %430 = extractvalue { i32, i32 } %429, 0
  %431 = extractvalue { i32, i32 } %429, 1
  %432 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %418, i32 %421, i32 %428, i32 %431) #28
  %433 = extractvalue { i32, i32 } %432, 0
  %434 = extractvalue { i32, i32 } %432, 1
  %435 = zext i32 %433 to i64
  %436 = zext i32 %434 to i64
  %437 = shl nuw i64 %436, 32
  %438 = or disjoint i64 %437, %435
  %439 = zext i32 %424 to i64
  %440 = zext i32 %430 to i64
  %441 = shl nuw i64 %440, 32
  %442 = or disjoint i64 %441, %439
  %443 = xor i64 %438, %442
  %444 = add i64 %443, %411
  %445 = getelementptr inbounds nuw i8, ptr %4, i32 27
  %446 = load i64, ptr %445, align 1
  %447 = xor i64 %446, %406
  %448 = getelementptr inbounds nuw i8, ptr %4, i32 35
  %449 = load i64, ptr %448, align 1
  %450 = xor i64 %449, %405
  %451 = lshr i64 %447, 32
  %452 = trunc nuw i64 %451 to i32
  %453 = trunc i64 %447 to i32
  %454 = lshr i64 %450, 32
  %455 = trunc nuw i64 %454 to i32
  %456 = trunc i64 %450 to i32
  %457 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %453, i32 %456) #28
  %458 = extractvalue { i32, i32 } %457, 0
  %459 = extractvalue { i32, i32 } %457, 1
  %460 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %452, i32 %456, i32 0, i32 %459) #28
  %461 = extractvalue { i32, i32 } %460, 0
  %462 = extractvalue { i32, i32 } %460, 1
  %463 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %453, i32 %455, i32 %461, i32 0) #28
  %464 = extractvalue { i32, i32 } %463, 0
  %465 = extractvalue { i32, i32 } %463, 1
  %466 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %452, i32 %455, i32 %462, i32 %465) #28
  %467 = extractvalue { i32, i32 } %466, 0
  %468 = extractvalue { i32, i32 } %466, 1
  %469 = zext i32 %467 to i64
  %470 = zext i32 %468 to i64
  %471 = shl nuw i64 %470, 32
  %472 = or disjoint i64 %471, %469
  %473 = zext i32 %458 to i64
  %474 = zext i32 %464 to i64
  %475 = shl nuw i64 %474, 32
  %476 = or disjoint i64 %475, %473
  %477 = xor i64 %472, %476
  %478 = add i64 %444, %477
  %479 = getelementptr inbounds nuw i8, ptr %4, i32 43
  %480 = load i64, ptr %479, align 1
  %481 = xor i64 %480, %404
  %482 = getelementptr inbounds nuw i8, ptr %4, i32 51
  %483 = load i64, ptr %482, align 1
  %484 = xor i64 %483, %403
  %485 = lshr i64 %481, 32
  %486 = trunc nuw i64 %485 to i32
  %487 = trunc i64 %481 to i32
  %488 = lshr i64 %484, 32
  %489 = trunc nuw i64 %488 to i32
  %490 = trunc i64 %484 to i32
  %491 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %487, i32 %490) #28
  %492 = extractvalue { i32, i32 } %491, 0
  %493 = extractvalue { i32, i32 } %491, 1
  %494 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %486, i32 %490, i32 0, i32 %493) #28
  %495 = extractvalue { i32, i32 } %494, 0
  %496 = extractvalue { i32, i32 } %494, 1
  %497 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %487, i32 %489, i32 %495, i32 0) #28
  %498 = extractvalue { i32, i32 } %497, 0
  %499 = extractvalue { i32, i32 } %497, 1
  %500 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %486, i32 %489, i32 %496, i32 %499) #28
  %501 = extractvalue { i32, i32 } %500, 0
  %502 = extractvalue { i32, i32 } %500, 1
  %503 = zext i32 %501 to i64
  %504 = zext i32 %502 to i64
  %505 = shl nuw i64 %504, 32
  %506 = or disjoint i64 %505, %503
  %507 = zext i32 %492 to i64
  %508 = zext i32 %498 to i64
  %509 = shl nuw i64 %508, 32
  %510 = or disjoint i64 %509, %507
  %511 = xor i64 %506, %510
  %512 = add i64 %478, %511
  %513 = getelementptr inbounds nuw i8, ptr %4, i32 59
  %514 = load i64, ptr %513, align 1
  %515 = xor i64 %514, %402
  %516 = getelementptr inbounds nuw i8, ptr %4, i32 67
  %517 = load i64, ptr %516, align 1
  %518 = xor i64 %517, %401
  %519 = lshr i64 %515, 32
  %520 = trunc nuw i64 %519 to i32
  %521 = trunc i64 %515 to i32
  %522 = lshr i64 %518, 32
  %523 = trunc nuw i64 %522 to i32
  %524 = trunc i64 %518 to i32
  %525 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %521, i32 %524) #28
  %526 = extractvalue { i32, i32 } %525, 0
  %527 = extractvalue { i32, i32 } %525, 1
  %528 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %520, i32 %524, i32 0, i32 %527) #28
  %529 = extractvalue { i32, i32 } %528, 0
  %530 = extractvalue { i32, i32 } %528, 1
  %531 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %521, i32 %523, i32 %529, i32 0) #28
  %532 = extractvalue { i32, i32 } %531, 0
  %533 = extractvalue { i32, i32 } %531, 1
  %534 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %520, i32 %523, i32 %530, i32 %533) #28
  %535 = extractvalue { i32, i32 } %534, 0
  %536 = extractvalue { i32, i32 } %534, 1
  %537 = zext i32 %535 to i64
  %538 = zext i32 %536 to i64
  %539 = shl nuw i64 %538, 32
  %540 = or disjoint i64 %539, %537
  %541 = zext i32 %526 to i64
  %542 = zext i32 %532 to i64
  %543 = shl nuw i64 %542, 32
  %544 = or disjoint i64 %543, %541
  %545 = xor i64 %540, %544
  %546 = add i64 %512, %545
  %547 = lshr i64 %546, 37
  %548 = xor i64 %547, %546
  %549 = mul i64 %548, 1609587929392839161
  %550 = lshr i64 %549, 32
  %551 = xor i64 %550, %549
  br label %552

552:                                              ; preds = %400, %56
  %553 = phi i64 [ %57, %56 ], [ %551, %400 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #29
  ret i64 %553
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite)
define dso_local noalias noundef ptr @XXH3_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(576) ptr @malloc(i32 noundef 576) #27
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
define dso_local range(i32 0, 2) i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #15 {
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

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local i64 @XXH3_64bits_digest(ptr noundef readonly %0) local_unnamed_addr #16 {
  %2 = alloca [64 x i8], align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 536
  %4 = load i64, ptr %3, align 8
  %5 = icmp ugt i64 %4, 240
  br i1 %5, label %6, label %728

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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #29
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #29
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
  %594 = trunc nuw i64 %593 to i32
  %595 = trunc i64 %589 to i32
  %596 = lshr i64 %592, 32
  %597 = trunc nuw i64 %596 to i32
  %598 = trunc i64 %592 to i32
  %599 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %595, i32 %598) #28
  %600 = extractvalue { i32, i32 } %599, 0
  %601 = extractvalue { i32, i32 } %599, 1
  %602 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %594, i32 %598, i32 0, i32 %601) #28
  %603 = extractvalue { i32, i32 } %602, 0
  %604 = extractvalue { i32, i32 } %602, 1
  %605 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %595, i32 %597, i32 %603, i32 0) #28
  %606 = extractvalue { i32, i32 } %605, 0
  %607 = extractvalue { i32, i32 } %605, 1
  %608 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %594, i32 %597, i32 %604, i32 %607) #28
  %609 = extractvalue { i32, i32 } %608, 0
  %610 = extractvalue { i32, i32 } %608, 1
  %611 = zext i32 %609 to i64
  %612 = zext i32 %610 to i64
  %613 = shl nuw i64 %612, 32
  %614 = or disjoint i64 %613, %611
  %615 = zext i32 %600 to i64
  %616 = zext i32 %606 to i64
  %617 = shl nuw i64 %616, 32
  %618 = or disjoint i64 %617, %615
  %619 = xor i64 %614, %618
  %620 = add i64 %619, %587
  %621 = getelementptr inbounds nuw i8, ptr %577, i32 27
  %622 = load i64, ptr %621, align 1
  %623 = xor i64 %622, %583
  %624 = getelementptr inbounds nuw i8, ptr %577, i32 35
  %625 = load i64, ptr %624, align 1
  %626 = xor i64 %625, %582
  %627 = lshr i64 %623, 32
  %628 = trunc nuw i64 %627 to i32
  %629 = trunc i64 %623 to i32
  %630 = lshr i64 %626, 32
  %631 = trunc nuw i64 %630 to i32
  %632 = trunc i64 %626 to i32
  %633 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %629, i32 %632) #28
  %634 = extractvalue { i32, i32 } %633, 0
  %635 = extractvalue { i32, i32 } %633, 1
  %636 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %628, i32 %632, i32 0, i32 %635) #28
  %637 = extractvalue { i32, i32 } %636, 0
  %638 = extractvalue { i32, i32 } %636, 1
  %639 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %629, i32 %631, i32 %637, i32 0) #28
  %640 = extractvalue { i32, i32 } %639, 0
  %641 = extractvalue { i32, i32 } %639, 1
  %642 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %628, i32 %631, i32 %638, i32 %641) #28
  %643 = extractvalue { i32, i32 } %642, 0
  %644 = extractvalue { i32, i32 } %642, 1
  %645 = zext i32 %643 to i64
  %646 = zext i32 %644 to i64
  %647 = shl nuw i64 %646, 32
  %648 = or disjoint i64 %647, %645
  %649 = zext i32 %634 to i64
  %650 = zext i32 %640 to i64
  %651 = shl nuw i64 %650, 32
  %652 = or disjoint i64 %651, %649
  %653 = xor i64 %648, %652
  %654 = add i64 %620, %653
  %655 = getelementptr inbounds nuw i8, ptr %577, i32 43
  %656 = load i64, ptr %655, align 1
  %657 = xor i64 %656, %581
  %658 = getelementptr inbounds nuw i8, ptr %577, i32 51
  %659 = load i64, ptr %658, align 1
  %660 = xor i64 %659, %580
  %661 = lshr i64 %657, 32
  %662 = trunc nuw i64 %661 to i32
  %663 = trunc i64 %657 to i32
  %664 = lshr i64 %660, 32
  %665 = trunc nuw i64 %664 to i32
  %666 = trunc i64 %660 to i32
  %667 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %663, i32 %666) #28
  %668 = extractvalue { i32, i32 } %667, 0
  %669 = extractvalue { i32, i32 } %667, 1
  %670 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %662, i32 %666, i32 0, i32 %669) #28
  %671 = extractvalue { i32, i32 } %670, 0
  %672 = extractvalue { i32, i32 } %670, 1
  %673 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %663, i32 %665, i32 %671, i32 0) #28
  %674 = extractvalue { i32, i32 } %673, 0
  %675 = extractvalue { i32, i32 } %673, 1
  %676 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %662, i32 %665, i32 %672, i32 %675) #28
  %677 = extractvalue { i32, i32 } %676, 0
  %678 = extractvalue { i32, i32 } %676, 1
  %679 = zext i32 %677 to i64
  %680 = zext i32 %678 to i64
  %681 = shl nuw i64 %680, 32
  %682 = or disjoint i64 %681, %679
  %683 = zext i32 %668 to i64
  %684 = zext i32 %674 to i64
  %685 = shl nuw i64 %684, 32
  %686 = or disjoint i64 %685, %683
  %687 = xor i64 %682, %686
  %688 = add i64 %654, %687
  %689 = getelementptr inbounds nuw i8, ptr %577, i32 59
  %690 = load i64, ptr %689, align 1
  %691 = xor i64 %690, %579
  %692 = getelementptr inbounds nuw i8, ptr %577, i32 67
  %693 = load i64, ptr %692, align 1
  %694 = xor i64 %693, %578
  %695 = lshr i64 %691, 32
  %696 = trunc nuw i64 %695 to i32
  %697 = trunc i64 %691 to i32
  %698 = lshr i64 %694, 32
  %699 = trunc nuw i64 %698 to i32
  %700 = trunc i64 %694 to i32
  %701 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %697, i32 %700) #28
  %702 = extractvalue { i32, i32 } %701, 0
  %703 = extractvalue { i32, i32 } %701, 1
  %704 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %696, i32 %700, i32 0, i32 %703) #28
  %705 = extractvalue { i32, i32 } %704, 0
  %706 = extractvalue { i32, i32 } %704, 1
  %707 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %697, i32 %699, i32 %705, i32 0) #28
  %708 = extractvalue { i32, i32 } %707, 0
  %709 = extractvalue { i32, i32 } %707, 1
  %710 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %696, i32 %699, i32 %706, i32 %709) #28
  %711 = extractvalue { i32, i32 } %710, 0
  %712 = extractvalue { i32, i32 } %710, 1
  %713 = zext i32 %711 to i64
  %714 = zext i32 %712 to i64
  %715 = shl nuw i64 %714, 32
  %716 = or disjoint i64 %715, %713
  %717 = zext i32 %702 to i64
  %718 = zext i32 %708 to i64
  %719 = shl nuw i64 %718, 32
  %720 = or disjoint i64 %719, %717
  %721 = xor i64 %716, %720
  %722 = add i64 %688, %721
  %723 = lshr i64 %722, 37
  %724 = xor i64 %723, %722
  %725 = mul i64 %724, 1609587929392839161
  %726 = lshr i64 %725, 32
  %727 = xor i64 %726, %725
  br label %1582

728:                                              ; preds = %1
  %729 = getelementptr inbounds nuw i8, ptr %0, i32 544
  %730 = load i64, ptr %729, align 32
  %731 = icmp eq i64 %730, 0
  %732 = getelementptr inbounds nuw i8, ptr %0, i32 256
  %733 = trunc nuw nsw i64 %4 to i32
  br i1 %731, label %1149, label %734

734:                                              ; preds = %728
  %735 = icmp samesign ult i32 %733, 17
  br i1 %735, label %736, label %835

736:                                              ; preds = %734
  %737 = icmp samesign ugt i32 %733, 8
  br i1 %737, label %738, label %782

738:                                              ; preds = %736
  %739 = load i64, ptr %732, align 1
  %740 = add i64 %730, -4734510112055689544
  %741 = xor i64 %739, %740
  %742 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %743 = getelementptr inbounds i8, ptr %742, i32 -8
  %744 = load i64, ptr %743, align 1
  %745 = sub i64 2066345149520216444, %730
  %746 = xor i64 %744, %745
  %747 = lshr i64 %741, 32
  %748 = trunc nuw i64 %747 to i32
  %749 = trunc i64 %741 to i32
  %750 = lshr i64 %746, 32
  %751 = trunc nuw i64 %750 to i32
  %752 = trunc i64 %746 to i32
  %753 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %749, i32 %752) #28
  %754 = extractvalue { i32, i32 } %753, 0
  %755 = extractvalue { i32, i32 } %753, 1
  %756 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %748, i32 %752, i32 0, i32 %755) #28
  %757 = extractvalue { i32, i32 } %756, 0
  %758 = extractvalue { i32, i32 } %756, 1
  %759 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %749, i32 %751, i32 %757, i32 0) #28
  %760 = extractvalue { i32, i32 } %759, 0
  %761 = extractvalue { i32, i32 } %759, 1
  %762 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %748, i32 %751, i32 %758, i32 %761) #28
  %763 = extractvalue { i32, i32 } %762, 0
  %764 = extractvalue { i32, i32 } %762, 1
  %765 = zext i32 %763 to i64
  %766 = zext i32 %764 to i64
  %767 = shl nuw i64 %766, 32
  %768 = or disjoint i64 %767, %765
  %769 = zext i32 %754 to i64
  %770 = zext i32 %760 to i64
  %771 = shl nuw i64 %770, 32
  %772 = or disjoint i64 %771, %769
  %773 = xor i64 %768, %772
  %774 = add i64 %741, %4
  %775 = add i64 %774, %746
  %776 = add i64 %775, %773
  %777 = lshr i64 %776, 37
  %778 = xor i64 %777, %776
  %779 = mul i64 %778, 1609587929392839161
  %780 = lshr i64 %779, 32
  %781 = xor i64 %780, %779
  br label %1582

782:                                              ; preds = %736
  %783 = icmp samesign ugt i32 %733, 3
  br i1 %783, label %784, label %807

784:                                              ; preds = %782
  %785 = load i32, ptr %732, align 1
  %786 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %787 = getelementptr inbounds i8, ptr %786, i32 -4
  %788 = load i32, ptr %787, align 1
  %789 = zext i32 %785 to i64
  %790 = zext i32 %788 to i64
  %791 = shl nuw i64 %790, 32
  %792 = or disjoint i64 %791, %789
  %793 = add i64 %730, -4734510112055689544
  %794 = xor i64 %792, %793
  %795 = lshr i64 %794, 51
  %796 = xor i64 %795, %794
  %797 = mul i64 %796, 2654435761
  %798 = add i64 %797, %4
  %799 = lshr i64 %798, 47
  %800 = xor i64 %799, %798
  %801 = mul i64 %800, -4417276706812531889
  %802 = lshr i64 %801, 37
  %803 = xor i64 %802, %801
  %804 = mul i64 %803, 1609587929392839161
  %805 = lshr i64 %804, 32
  %806 = xor i64 %805, %804
  br label %1582

807:                                              ; preds = %782
  %808 = icmp eq i32 %733, 0
  br i1 %808, label %1582, label %809

809:                                              ; preds = %807
  %810 = load i8, ptr %732, align 1
  %811 = lshr i32 %733, 1
  %812 = getelementptr inbounds nuw i8, ptr %732, i32 %811
  %813 = load i8, ptr %812, align 1
  %814 = getelementptr i8, ptr %732, i32 %733
  %815 = getelementptr i8, ptr %814, i32 -1
  %816 = load i8, ptr %815, align 1
  %817 = zext i8 %810 to i32
  %818 = zext i8 %813 to i32
  %819 = shl nuw nsw i32 %818, 8
  %820 = or disjoint i32 %819, %817
  %821 = zext i8 %816 to i32
  %822 = shl nuw nsw i32 %821, 16
  %823 = or disjoint i32 %820, %822
  %824 = shl nuw nsw i32 %733, 24
  %825 = or disjoint i32 %823, %824
  %826 = zext nneg i32 %825 to i64
  %827 = add i64 %730, 963444408
  %828 = xor i64 %827, %826
  %829 = mul i64 %828, -7046029288634856825
  %830 = lshr i64 %829, 37
  %831 = xor i64 %830, %829
  %832 = mul i64 %831, 1609587929392839161
  %833 = lshr i64 %832, 32
  %834 = xor i64 %833, %832
  br label %1582

835:                                              ; preds = %734
  %836 = icmp samesign ult i32 %733, 129
  br i1 %836, label %837, label %1147

837:                                              ; preds = %835
  %838 = mul i64 %4, -7046029288634856825
  %839 = icmp samesign ugt i32 %733, 32
  br i1 %839, label %840, label %1068

840:                                              ; preds = %837
  %841 = icmp samesign ugt i32 %733, 64
  br i1 %841, label %842, label %993

842:                                              ; preds = %840
  %843 = icmp samesign ugt i32 %733, 96
  br i1 %843, label %844, label %918

844:                                              ; preds = %842
  %845 = getelementptr inbounds nuw i8, ptr %0, i32 304
  %846 = load i64, ptr %845, align 1
  %847 = getelementptr inbounds nuw i8, ptr %0, i32 312
  %848 = load i64, ptr %847, align 1
  %849 = add i64 %730, 4554437623014685352
  %850 = xor i64 %846, %849
  %851 = sub i64 2111919702937427193, %730
  %852 = xor i64 %848, %851
  %853 = lshr i64 %850, 32
  %854 = trunc nuw i64 %853 to i32
  %855 = trunc i64 %850 to i32
  %856 = lshr i64 %852, 32
  %857 = trunc nuw i64 %856 to i32
  %858 = trunc i64 %852 to i32
  %859 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %855, i32 %858) #28
  %860 = extractvalue { i32, i32 } %859, 0
  %861 = extractvalue { i32, i32 } %859, 1
  %862 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %854, i32 %858, i32 0, i32 %861) #28
  %863 = extractvalue { i32, i32 } %862, 0
  %864 = extractvalue { i32, i32 } %862, 1
  %865 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %855, i32 %857, i32 %863, i32 0) #28
  %866 = extractvalue { i32, i32 } %865, 0
  %867 = extractvalue { i32, i32 } %865, 1
  %868 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %854, i32 %857, i32 %864, i32 %867) #28
  %869 = extractvalue { i32, i32 } %868, 0
  %870 = extractvalue { i32, i32 } %868, 1
  %871 = zext i32 %869 to i64
  %872 = zext i32 %870 to i64
  %873 = shl nuw i64 %872, 32
  %874 = or disjoint i64 %873, %871
  %875 = zext i32 %860 to i64
  %876 = zext i32 %866 to i64
  %877 = shl nuw i64 %876, 32
  %878 = or disjoint i64 %877, %875
  %879 = xor i64 %874, %878
  %880 = add i64 %879, %838
  %881 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %882 = getelementptr inbounds i8, ptr %881, i32 -64
  %883 = load i64, ptr %882, align 1
  %884 = getelementptr inbounds i8, ptr %881, i32 -56
  %885 = load i64, ptr %884, align 1
  %886 = add i64 %730, 3556072174620004746
  %887 = xor i64 %883, %886
  %888 = sub i64 7238261902898274248, %730
  %889 = xor i64 %885, %888
  %890 = lshr i64 %887, 32
  %891 = trunc nuw i64 %890 to i32
  %892 = trunc i64 %887 to i32
  %893 = lshr i64 %889, 32
  %894 = trunc nuw i64 %893 to i32
  %895 = trunc i64 %889 to i32
  %896 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %892, i32 %895) #28
  %897 = extractvalue { i32, i32 } %896, 0
  %898 = extractvalue { i32, i32 } %896, 1
  %899 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %891, i32 %895, i32 0, i32 %898) #28
  %900 = extractvalue { i32, i32 } %899, 0
  %901 = extractvalue { i32, i32 } %899, 1
  %902 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %892, i32 %894, i32 %900, i32 0) #28
  %903 = extractvalue { i32, i32 } %902, 0
  %904 = extractvalue { i32, i32 } %902, 1
  %905 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %891, i32 %894, i32 %901, i32 %904) #28
  %906 = extractvalue { i32, i32 } %905, 0
  %907 = extractvalue { i32, i32 } %905, 1
  %908 = zext i32 %906 to i64
  %909 = zext i32 %907 to i64
  %910 = shl nuw i64 %909, 32
  %911 = or disjoint i64 %910, %908
  %912 = zext i32 %897 to i64
  %913 = zext i32 %903 to i64
  %914 = shl nuw i64 %913, 32
  %915 = or disjoint i64 %914, %912
  %916 = xor i64 %911, %915
  %917 = add i64 %880, %916
  br label %918

918:                                              ; preds = %844, %842
  %919 = phi i64 [ %917, %844 ], [ %838, %842 ]
  %920 = getelementptr inbounds nuw i8, ptr %0, i32 288
  %921 = load i64, ptr %920, align 1
  %922 = getelementptr inbounds nuw i8, ptr %0, i32 296
  %923 = load i64, ptr %922, align 1
  %924 = add i64 %730, -3818837453329782724
  %925 = xor i64 %921, %924
  %926 = sub i64 -6688317018830679928, %730
  %927 = xor i64 %923, %926
  %928 = lshr i64 %925, 32
  %929 = trunc nuw i64 %928 to i32
  %930 = trunc i64 %925 to i32
  %931 = lshr i64 %927, 32
  %932 = trunc nuw i64 %931 to i32
  %933 = trunc i64 %927 to i32
  %934 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %930, i32 %933) #28
  %935 = extractvalue { i32, i32 } %934, 0
  %936 = extractvalue { i32, i32 } %934, 1
  %937 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %929, i32 %933, i32 0, i32 %936) #28
  %938 = extractvalue { i32, i32 } %937, 0
  %939 = extractvalue { i32, i32 } %937, 1
  %940 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %930, i32 %932, i32 %938, i32 0) #28
  %941 = extractvalue { i32, i32 } %940, 0
  %942 = extractvalue { i32, i32 } %940, 1
  %943 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %929, i32 %932, i32 %939, i32 %942) #28
  %944 = extractvalue { i32, i32 } %943, 0
  %945 = extractvalue { i32, i32 } %943, 1
  %946 = zext i32 %944 to i64
  %947 = zext i32 %945 to i64
  %948 = shl nuw i64 %947, 32
  %949 = or disjoint i64 %948, %946
  %950 = zext i32 %935 to i64
  %951 = zext i32 %941 to i64
  %952 = shl nuw i64 %951, 32
  %953 = or disjoint i64 %952, %950
  %954 = xor i64 %949, %953
  %955 = add i64 %954, %919
  %956 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %957 = getelementptr inbounds i8, ptr %956, i32 -48
  %958 = load i64, ptr %957, align 1
  %959 = getelementptr inbounds i8, ptr %956, i32 -40
  %960 = load i64, ptr %959, align 1
  %961 = add i64 %730, 5690594596133299313
  %962 = xor i64 %958, %961
  %963 = sub i64 -2833645246901970632, %730
  %964 = xor i64 %960, %963
  %965 = lshr i64 %962, 32
  %966 = trunc nuw i64 %965 to i32
  %967 = trunc i64 %962 to i32
  %968 = lshr i64 %964, 32
  %969 = trunc nuw i64 %968 to i32
  %970 = trunc i64 %964 to i32
  %971 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %967, i32 %970) #28
  %972 = extractvalue { i32, i32 } %971, 0
  %973 = extractvalue { i32, i32 } %971, 1
  %974 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %966, i32 %970, i32 0, i32 %973) #28
  %975 = extractvalue { i32, i32 } %974, 0
  %976 = extractvalue { i32, i32 } %974, 1
  %977 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %967, i32 %969, i32 %975, i32 0) #28
  %978 = extractvalue { i32, i32 } %977, 0
  %979 = extractvalue { i32, i32 } %977, 1
  %980 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %966, i32 %969, i32 %976, i32 %979) #28
  %981 = extractvalue { i32, i32 } %980, 0
  %982 = extractvalue { i32, i32 } %980, 1
  %983 = zext i32 %981 to i64
  %984 = zext i32 %982 to i64
  %985 = shl nuw i64 %984, 32
  %986 = or disjoint i64 %985, %983
  %987 = zext i32 %972 to i64
  %988 = zext i32 %978 to i64
  %989 = shl nuw i64 %988, 32
  %990 = or disjoint i64 %989, %987
  %991 = xor i64 %986, %990
  %992 = add i64 %955, %991
  br label %993

993:                                              ; preds = %918, %840
  %994 = phi i64 [ %992, %918 ], [ %838, %840 ]
  %995 = getelementptr inbounds nuw i8, ptr %0, i32 272
  %996 = load i64, ptr %995, align 1
  %997 = getelementptr inbounds nuw i8, ptr %0, i32 280
  %998 = load i64, ptr %997, align 1
  %999 = add i64 %730, 8711581037947681227
  %1000 = xor i64 %996, %999
  %1001 = sub i64 2410270004345854594, %730
  %1002 = xor i64 %998, %1001
  %1003 = lshr i64 %1000, 32
  %1004 = trunc nuw i64 %1003 to i32
  %1005 = trunc i64 %1000 to i32
  %1006 = lshr i64 %1002, 32
  %1007 = trunc nuw i64 %1006 to i32
  %1008 = trunc i64 %1002 to i32
  %1009 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1005, i32 %1008) #28
  %1010 = extractvalue { i32, i32 } %1009, 0
  %1011 = extractvalue { i32, i32 } %1009, 1
  %1012 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1004, i32 %1008, i32 0, i32 %1011) #28
  %1013 = extractvalue { i32, i32 } %1012, 0
  %1014 = extractvalue { i32, i32 } %1012, 1
  %1015 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1005, i32 %1007, i32 %1013, i32 0) #28
  %1016 = extractvalue { i32, i32 } %1015, 0
  %1017 = extractvalue { i32, i32 } %1015, 1
  %1018 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1004, i32 %1007, i32 %1014, i32 %1017) #28
  %1019 = extractvalue { i32, i32 } %1018, 0
  %1020 = extractvalue { i32, i32 } %1018, 1
  %1021 = zext i32 %1019 to i64
  %1022 = zext i32 %1020 to i64
  %1023 = shl nuw i64 %1022, 32
  %1024 = or disjoint i64 %1023, %1021
  %1025 = zext i32 %1010 to i64
  %1026 = zext i32 %1016 to i64
  %1027 = shl nuw i64 %1026, 32
  %1028 = or disjoint i64 %1027, %1025
  %1029 = xor i64 %1024, %1028
  %1030 = add i64 %1029, %994
  %1031 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %1032 = getelementptr inbounds i8, ptr %1031, i32 -32
  %1033 = load i64, ptr %1032, align 1
  %1034 = getelementptr inbounds i8, ptr %1031, i32 -24
  %1035 = load i64, ptr %1034, align 1
  %1036 = add i64 %730, -8204357891075471176
  %1037 = xor i64 %1033, %1036
  %1038 = sub i64 5487137525590930912, %730
  %1039 = xor i64 %1035, %1038
  %1040 = lshr i64 %1037, 32
  %1041 = trunc nuw i64 %1040 to i32
  %1042 = trunc i64 %1037 to i32
  %1043 = lshr i64 %1039, 32
  %1044 = trunc nuw i64 %1043 to i32
  %1045 = trunc i64 %1039 to i32
  %1046 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1042, i32 %1045) #28
  %1047 = extractvalue { i32, i32 } %1046, 0
  %1048 = extractvalue { i32, i32 } %1046, 1
  %1049 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1041, i32 %1045, i32 0, i32 %1048) #28
  %1050 = extractvalue { i32, i32 } %1049, 0
  %1051 = extractvalue { i32, i32 } %1049, 1
  %1052 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1042, i32 %1044, i32 %1050, i32 0) #28
  %1053 = extractvalue { i32, i32 } %1052, 0
  %1054 = extractvalue { i32, i32 } %1052, 1
  %1055 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1041, i32 %1044, i32 %1051, i32 %1054) #28
  %1056 = extractvalue { i32, i32 } %1055, 0
  %1057 = extractvalue { i32, i32 } %1055, 1
  %1058 = zext i32 %1056 to i64
  %1059 = zext i32 %1057 to i64
  %1060 = shl nuw i64 %1059, 32
  %1061 = or disjoint i64 %1060, %1058
  %1062 = zext i32 %1047 to i64
  %1063 = zext i32 %1053 to i64
  %1064 = shl nuw i64 %1063, 32
  %1065 = or disjoint i64 %1064, %1062
  %1066 = xor i64 %1061, %1065
  %1067 = add i64 %1030, %1066
  br label %1068

1068:                                             ; preds = %993, %837
  %1069 = phi i64 [ %1067, %993 ], [ %838, %837 ]
  %1070 = load i64, ptr %732, align 1
  %1071 = getelementptr inbounds nuw i8, ptr %0, i32 264
  %1072 = load i64, ptr %1071, align 1
  %1073 = add i64 %730, -4734510112055689544
  %1074 = xor i64 %1070, %1073
  %1075 = sub i64 2066345149520216444, %730
  %1076 = xor i64 %1072, %1075
  %1077 = lshr i64 %1074, 32
  %1078 = trunc nuw i64 %1077 to i32
  %1079 = trunc i64 %1074 to i32
  %1080 = lshr i64 %1076, 32
  %1081 = trunc nuw i64 %1080 to i32
  %1082 = trunc i64 %1076 to i32
  %1083 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1079, i32 %1082) #28
  %1084 = extractvalue { i32, i32 } %1083, 0
  %1085 = extractvalue { i32, i32 } %1083, 1
  %1086 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1078, i32 %1082, i32 0, i32 %1085) #28
  %1087 = extractvalue { i32, i32 } %1086, 0
  %1088 = extractvalue { i32, i32 } %1086, 1
  %1089 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1079, i32 %1081, i32 %1087, i32 0) #28
  %1090 = extractvalue { i32, i32 } %1089, 0
  %1091 = extractvalue { i32, i32 } %1089, 1
  %1092 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1078, i32 %1081, i32 %1088, i32 %1091) #28
  %1093 = extractvalue { i32, i32 } %1092, 0
  %1094 = extractvalue { i32, i32 } %1092, 1
  %1095 = zext i32 %1093 to i64
  %1096 = zext i32 %1094 to i64
  %1097 = shl nuw i64 %1096, 32
  %1098 = or disjoint i64 %1097, %1095
  %1099 = zext i32 %1084 to i64
  %1100 = zext i32 %1090 to i64
  %1101 = shl nuw i64 %1100, 32
  %1102 = or disjoint i64 %1101, %1099
  %1103 = xor i64 %1098, %1102
  %1104 = add i64 %1103, %1069
  %1105 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %1106 = getelementptr inbounds i8, ptr %1105, i32 -16
  %1107 = load i64, ptr %1106, align 1
  %1108 = getelementptr inbounds i8, ptr %1105, i32 -8
  %1109 = load i64, ptr %1108, align 1
  %1110 = add i64 %730, -2623469361688619810
  %1111 = xor i64 %1107, %1110
  %1112 = sub i64 2262974939099578482, %730
  %1113 = xor i64 %1109, %1112
  %1114 = lshr i64 %1111, 32
  %1115 = trunc nuw i64 %1114 to i32
  %1116 = trunc i64 %1111 to i32
  %1117 = lshr i64 %1113, 32
  %1118 = trunc nuw i64 %1117 to i32
  %1119 = trunc i64 %1113 to i32
  %1120 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1116, i32 %1119) #28
  %1121 = extractvalue { i32, i32 } %1120, 0
  %1122 = extractvalue { i32, i32 } %1120, 1
  %1123 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1115, i32 %1119, i32 0, i32 %1122) #28
  %1124 = extractvalue { i32, i32 } %1123, 0
  %1125 = extractvalue { i32, i32 } %1123, 1
  %1126 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1116, i32 %1118, i32 %1124, i32 0) #28
  %1127 = extractvalue { i32, i32 } %1126, 0
  %1128 = extractvalue { i32, i32 } %1126, 1
  %1129 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1115, i32 %1118, i32 %1125, i32 %1128) #28
  %1130 = extractvalue { i32, i32 } %1129, 0
  %1131 = extractvalue { i32, i32 } %1129, 1
  %1132 = zext i32 %1130 to i64
  %1133 = zext i32 %1131 to i64
  %1134 = shl nuw i64 %1133, 32
  %1135 = or disjoint i64 %1134, %1132
  %1136 = zext i32 %1121 to i64
  %1137 = zext i32 %1127 to i64
  %1138 = shl nuw i64 %1137, 32
  %1139 = or disjoint i64 %1138, %1136
  %1140 = xor i64 %1135, %1139
  %1141 = add i64 %1104, %1140
  %1142 = lshr i64 %1141, 37
  %1143 = xor i64 %1142, %1141
  %1144 = mul i64 %1143, 1609587929392839161
  %1145 = lshr i64 %1144, 32
  %1146 = xor i64 %1145, %1144
  br label %1582

1147:                                             ; preds = %835
  %1148 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %732, i32 noundef %733, ptr noundef nonnull @kSecret, i64 noundef %730)
  br label %1582

1149:                                             ; preds = %728
  %1150 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %1151 = load ptr, ptr %1150, align 16
  %1152 = icmp samesign ult i32 %733, 17
  br i1 %1152, label %1153, label %1253

1153:                                             ; preds = %1149
  %1154 = icmp samesign ugt i32 %733, 8
  br i1 %1154, label %1155, label %1200

1155:                                             ; preds = %1153
  %1156 = load i64, ptr %732, align 1
  %1157 = load i64, ptr %1151, align 1
  %1158 = xor i64 %1157, %1156
  %1159 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %1160 = getelementptr inbounds i8, ptr %1159, i32 -8
  %1161 = load i64, ptr %1160, align 1
  %1162 = getelementptr inbounds nuw i8, ptr %1151, i32 8
  %1163 = load i64, ptr %1162, align 1
  %1164 = xor i64 %1163, %1161
  %1165 = lshr i64 %1158, 32
  %1166 = trunc nuw i64 %1165 to i32
  %1167 = trunc i64 %1158 to i32
  %1168 = lshr i64 %1164, 32
  %1169 = trunc nuw i64 %1168 to i32
  %1170 = trunc i64 %1164 to i32
  %1171 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1167, i32 %1170) #28
  %1172 = extractvalue { i32, i32 } %1171, 0
  %1173 = extractvalue { i32, i32 } %1171, 1
  %1174 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1166, i32 %1170, i32 0, i32 %1173) #28
  %1175 = extractvalue { i32, i32 } %1174, 0
  %1176 = extractvalue { i32, i32 } %1174, 1
  %1177 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1167, i32 %1169, i32 %1175, i32 0) #28
  %1178 = extractvalue { i32, i32 } %1177, 0
  %1179 = extractvalue { i32, i32 } %1177, 1
  %1180 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1166, i32 %1169, i32 %1176, i32 %1179) #28
  %1181 = extractvalue { i32, i32 } %1180, 0
  %1182 = extractvalue { i32, i32 } %1180, 1
  %1183 = zext i32 %1181 to i64
  %1184 = zext i32 %1182 to i64
  %1185 = shl nuw i64 %1184, 32
  %1186 = or disjoint i64 %1185, %1183
  %1187 = zext i32 %1172 to i64
  %1188 = zext i32 %1178 to i64
  %1189 = shl nuw i64 %1188, 32
  %1190 = or disjoint i64 %1189, %1187
  %1191 = xor i64 %1186, %1190
  %1192 = add i64 %1158, %4
  %1193 = add i64 %1192, %1164
  %1194 = add i64 %1193, %1191
  %1195 = lshr i64 %1194, 37
  %1196 = xor i64 %1195, %1194
  %1197 = mul i64 %1196, 1609587929392839161
  %1198 = lshr i64 %1197, 32
  %1199 = xor i64 %1198, %1197
  br label %1582

1200:                                             ; preds = %1153
  %1201 = icmp samesign ugt i32 %733, 3
  br i1 %1201, label %1202, label %1225

1202:                                             ; preds = %1200
  %1203 = load i32, ptr %732, align 1
  %1204 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %1205 = getelementptr inbounds i8, ptr %1204, i32 -4
  %1206 = load i32, ptr %1205, align 1
  %1207 = zext i32 %1203 to i64
  %1208 = zext i32 %1206 to i64
  %1209 = shl nuw i64 %1208, 32
  %1210 = or disjoint i64 %1209, %1207
  %1211 = load i64, ptr %1151, align 1
  %1212 = xor i64 %1210, %1211
  %1213 = lshr i64 %1212, 51
  %1214 = xor i64 %1213, %1212
  %1215 = mul i64 %1214, 2654435761
  %1216 = add i64 %1215, %4
  %1217 = lshr i64 %1216, 47
  %1218 = xor i64 %1217, %1216
  %1219 = mul i64 %1218, -4417276706812531889
  %1220 = lshr i64 %1219, 37
  %1221 = xor i64 %1220, %1219
  %1222 = mul i64 %1221, 1609587929392839161
  %1223 = lshr i64 %1222, 32
  %1224 = xor i64 %1223, %1222
  br label %1582

1225:                                             ; preds = %1200
  %1226 = icmp eq i32 %733, 0
  br i1 %1226, label %1582, label %1227

1227:                                             ; preds = %1225
  %1228 = load i8, ptr %732, align 1
  %1229 = lshr i32 %733, 1
  %1230 = getelementptr inbounds nuw i8, ptr %732, i32 %1229
  %1231 = load i8, ptr %1230, align 1
  %1232 = getelementptr i8, ptr %732, i32 %733
  %1233 = getelementptr i8, ptr %1232, i32 -1
  %1234 = load i8, ptr %1233, align 1
  %1235 = zext i8 %1228 to i32
  %1236 = zext i8 %1231 to i32
  %1237 = shl nuw nsw i32 %1236, 8
  %1238 = or disjoint i32 %1237, %1235
  %1239 = zext i8 %1234 to i32
  %1240 = shl nuw nsw i32 %1239, 16
  %1241 = or disjoint i32 %1238, %1240
  %1242 = shl nuw nsw i32 %733, 24
  %1243 = or disjoint i32 %1241, %1242
  %1244 = load i32, ptr %1151, align 1
  %1245 = xor i32 %1243, %1244
  %1246 = zext i32 %1245 to i64
  %1247 = mul i64 %1246, -7046029288634856825
  %1248 = lshr i64 %1247, 37
  %1249 = xor i64 %1248, %1247
  %1250 = mul i64 %1249, 1609587929392839161
  %1251 = lshr i64 %1250, 32
  %1252 = xor i64 %1251, %1250
  br label %1582

1253:                                             ; preds = %1149
  %1254 = icmp samesign ult i32 %733, 129
  br i1 %1254, label %1255, label %1580

1255:                                             ; preds = %1253
  %1256 = mul i64 %4, -7046029288634856825
  %1257 = icmp samesign ugt i32 %733, 32
  br i1 %1257, label %1258, label %1498

1258:                                             ; preds = %1255
  %1259 = icmp samesign ugt i32 %733, 64
  br i1 %1259, label %1260, label %1419

1260:                                             ; preds = %1258
  %1261 = icmp samesign ugt i32 %733, 96
  br i1 %1261, label %1262, label %1340

1262:                                             ; preds = %1260
  %1263 = getelementptr inbounds nuw i8, ptr %0, i32 304
  %1264 = getelementptr inbounds nuw i8, ptr %1151, i32 96
  %1265 = load i64, ptr %1263, align 1
  %1266 = getelementptr inbounds nuw i8, ptr %0, i32 312
  %1267 = load i64, ptr %1266, align 1
  %1268 = load i64, ptr %1264, align 1
  %1269 = xor i64 %1268, %1265
  %1270 = getelementptr inbounds nuw i8, ptr %1151, i32 104
  %1271 = load i64, ptr %1270, align 1
  %1272 = xor i64 %1271, %1267
  %1273 = lshr i64 %1269, 32
  %1274 = trunc nuw i64 %1273 to i32
  %1275 = trunc i64 %1269 to i32
  %1276 = lshr i64 %1272, 32
  %1277 = trunc nuw i64 %1276 to i32
  %1278 = trunc i64 %1272 to i32
  %1279 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1275, i32 %1278) #28
  %1280 = extractvalue { i32, i32 } %1279, 0
  %1281 = extractvalue { i32, i32 } %1279, 1
  %1282 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1274, i32 %1278, i32 0, i32 %1281) #28
  %1283 = extractvalue { i32, i32 } %1282, 0
  %1284 = extractvalue { i32, i32 } %1282, 1
  %1285 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1275, i32 %1277, i32 %1283, i32 0) #28
  %1286 = extractvalue { i32, i32 } %1285, 0
  %1287 = extractvalue { i32, i32 } %1285, 1
  %1288 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1274, i32 %1277, i32 %1284, i32 %1287) #28
  %1289 = extractvalue { i32, i32 } %1288, 0
  %1290 = extractvalue { i32, i32 } %1288, 1
  %1291 = zext i32 %1289 to i64
  %1292 = zext i32 %1290 to i64
  %1293 = shl nuw i64 %1292, 32
  %1294 = or disjoint i64 %1293, %1291
  %1295 = zext i32 %1280 to i64
  %1296 = zext i32 %1286 to i64
  %1297 = shl nuw i64 %1296, 32
  %1298 = or disjoint i64 %1297, %1295
  %1299 = xor i64 %1294, %1298
  %1300 = add i64 %1299, %1256
  %1301 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %1302 = getelementptr inbounds i8, ptr %1301, i32 -64
  %1303 = getelementptr inbounds nuw i8, ptr %1151, i32 112
  %1304 = load i64, ptr %1302, align 1
  %1305 = getelementptr inbounds i8, ptr %1301, i32 -56
  %1306 = load i64, ptr %1305, align 1
  %1307 = load i64, ptr %1303, align 1
  %1308 = xor i64 %1307, %1304
  %1309 = getelementptr inbounds nuw i8, ptr %1151, i32 120
  %1310 = load i64, ptr %1309, align 1
  %1311 = xor i64 %1310, %1306
  %1312 = lshr i64 %1308, 32
  %1313 = trunc nuw i64 %1312 to i32
  %1314 = trunc i64 %1308 to i32
  %1315 = lshr i64 %1311, 32
  %1316 = trunc nuw i64 %1315 to i32
  %1317 = trunc i64 %1311 to i32
  %1318 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1314, i32 %1317) #28
  %1319 = extractvalue { i32, i32 } %1318, 0
  %1320 = extractvalue { i32, i32 } %1318, 1
  %1321 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1313, i32 %1317, i32 0, i32 %1320) #28
  %1322 = extractvalue { i32, i32 } %1321, 0
  %1323 = extractvalue { i32, i32 } %1321, 1
  %1324 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1314, i32 %1316, i32 %1322, i32 0) #28
  %1325 = extractvalue { i32, i32 } %1324, 0
  %1326 = extractvalue { i32, i32 } %1324, 1
  %1327 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1313, i32 %1316, i32 %1323, i32 %1326) #28
  %1328 = extractvalue { i32, i32 } %1327, 0
  %1329 = extractvalue { i32, i32 } %1327, 1
  %1330 = zext i32 %1328 to i64
  %1331 = zext i32 %1329 to i64
  %1332 = shl nuw i64 %1331, 32
  %1333 = or disjoint i64 %1332, %1330
  %1334 = zext i32 %1319 to i64
  %1335 = zext i32 %1325 to i64
  %1336 = shl nuw i64 %1335, 32
  %1337 = or disjoint i64 %1336, %1334
  %1338 = xor i64 %1333, %1337
  %1339 = add i64 %1300, %1338
  br label %1340

1340:                                             ; preds = %1262, %1260
  %1341 = phi i64 [ %1339, %1262 ], [ %1256, %1260 ]
  %1342 = getelementptr inbounds nuw i8, ptr %0, i32 288
  %1343 = getelementptr inbounds nuw i8, ptr %1151, i32 64
  %1344 = load i64, ptr %1342, align 1
  %1345 = getelementptr inbounds nuw i8, ptr %0, i32 296
  %1346 = load i64, ptr %1345, align 1
  %1347 = load i64, ptr %1343, align 1
  %1348 = xor i64 %1347, %1344
  %1349 = getelementptr inbounds nuw i8, ptr %1151, i32 72
  %1350 = load i64, ptr %1349, align 1
  %1351 = xor i64 %1350, %1346
  %1352 = lshr i64 %1348, 32
  %1353 = trunc nuw i64 %1352 to i32
  %1354 = trunc i64 %1348 to i32
  %1355 = lshr i64 %1351, 32
  %1356 = trunc nuw i64 %1355 to i32
  %1357 = trunc i64 %1351 to i32
  %1358 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1354, i32 %1357) #28
  %1359 = extractvalue { i32, i32 } %1358, 0
  %1360 = extractvalue { i32, i32 } %1358, 1
  %1361 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1353, i32 %1357, i32 0, i32 %1360) #28
  %1362 = extractvalue { i32, i32 } %1361, 0
  %1363 = extractvalue { i32, i32 } %1361, 1
  %1364 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1354, i32 %1356, i32 %1362, i32 0) #28
  %1365 = extractvalue { i32, i32 } %1364, 0
  %1366 = extractvalue { i32, i32 } %1364, 1
  %1367 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1353, i32 %1356, i32 %1363, i32 %1366) #28
  %1368 = extractvalue { i32, i32 } %1367, 0
  %1369 = extractvalue { i32, i32 } %1367, 1
  %1370 = zext i32 %1368 to i64
  %1371 = zext i32 %1369 to i64
  %1372 = shl nuw i64 %1371, 32
  %1373 = or disjoint i64 %1372, %1370
  %1374 = zext i32 %1359 to i64
  %1375 = zext i32 %1365 to i64
  %1376 = shl nuw i64 %1375, 32
  %1377 = or disjoint i64 %1376, %1374
  %1378 = xor i64 %1373, %1377
  %1379 = add i64 %1378, %1341
  %1380 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %1381 = getelementptr inbounds i8, ptr %1380, i32 -48
  %1382 = getelementptr inbounds nuw i8, ptr %1151, i32 80
  %1383 = load i64, ptr %1381, align 1
  %1384 = getelementptr inbounds i8, ptr %1380, i32 -40
  %1385 = load i64, ptr %1384, align 1
  %1386 = load i64, ptr %1382, align 1
  %1387 = xor i64 %1386, %1383
  %1388 = getelementptr inbounds nuw i8, ptr %1151, i32 88
  %1389 = load i64, ptr %1388, align 1
  %1390 = xor i64 %1389, %1385
  %1391 = lshr i64 %1387, 32
  %1392 = trunc nuw i64 %1391 to i32
  %1393 = trunc i64 %1387 to i32
  %1394 = lshr i64 %1390, 32
  %1395 = trunc nuw i64 %1394 to i32
  %1396 = trunc i64 %1390 to i32
  %1397 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1393, i32 %1396) #28
  %1398 = extractvalue { i32, i32 } %1397, 0
  %1399 = extractvalue { i32, i32 } %1397, 1
  %1400 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1392, i32 %1396, i32 0, i32 %1399) #28
  %1401 = extractvalue { i32, i32 } %1400, 0
  %1402 = extractvalue { i32, i32 } %1400, 1
  %1403 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1393, i32 %1395, i32 %1401, i32 0) #28
  %1404 = extractvalue { i32, i32 } %1403, 0
  %1405 = extractvalue { i32, i32 } %1403, 1
  %1406 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1392, i32 %1395, i32 %1402, i32 %1405) #28
  %1407 = extractvalue { i32, i32 } %1406, 0
  %1408 = extractvalue { i32, i32 } %1406, 1
  %1409 = zext i32 %1407 to i64
  %1410 = zext i32 %1408 to i64
  %1411 = shl nuw i64 %1410, 32
  %1412 = or disjoint i64 %1411, %1409
  %1413 = zext i32 %1398 to i64
  %1414 = zext i32 %1404 to i64
  %1415 = shl nuw i64 %1414, 32
  %1416 = or disjoint i64 %1415, %1413
  %1417 = xor i64 %1412, %1416
  %1418 = add i64 %1379, %1417
  br label %1419

1419:                                             ; preds = %1340, %1258
  %1420 = phi i64 [ %1418, %1340 ], [ %1256, %1258 ]
  %1421 = getelementptr inbounds nuw i8, ptr %0, i32 272
  %1422 = getelementptr inbounds nuw i8, ptr %1151, i32 32
  %1423 = load i64, ptr %1421, align 1
  %1424 = getelementptr inbounds nuw i8, ptr %0, i32 280
  %1425 = load i64, ptr %1424, align 1
  %1426 = load i64, ptr %1422, align 1
  %1427 = xor i64 %1426, %1423
  %1428 = getelementptr inbounds nuw i8, ptr %1151, i32 40
  %1429 = load i64, ptr %1428, align 1
  %1430 = xor i64 %1429, %1425
  %1431 = lshr i64 %1427, 32
  %1432 = trunc nuw i64 %1431 to i32
  %1433 = trunc i64 %1427 to i32
  %1434 = lshr i64 %1430, 32
  %1435 = trunc nuw i64 %1434 to i32
  %1436 = trunc i64 %1430 to i32
  %1437 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1433, i32 %1436) #28
  %1438 = extractvalue { i32, i32 } %1437, 0
  %1439 = extractvalue { i32, i32 } %1437, 1
  %1440 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1432, i32 %1436, i32 0, i32 %1439) #28
  %1441 = extractvalue { i32, i32 } %1440, 0
  %1442 = extractvalue { i32, i32 } %1440, 1
  %1443 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1433, i32 %1435, i32 %1441, i32 0) #28
  %1444 = extractvalue { i32, i32 } %1443, 0
  %1445 = extractvalue { i32, i32 } %1443, 1
  %1446 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1432, i32 %1435, i32 %1442, i32 %1445) #28
  %1447 = extractvalue { i32, i32 } %1446, 0
  %1448 = extractvalue { i32, i32 } %1446, 1
  %1449 = zext i32 %1447 to i64
  %1450 = zext i32 %1448 to i64
  %1451 = shl nuw i64 %1450, 32
  %1452 = or disjoint i64 %1451, %1449
  %1453 = zext i32 %1438 to i64
  %1454 = zext i32 %1444 to i64
  %1455 = shl nuw i64 %1454, 32
  %1456 = or disjoint i64 %1455, %1453
  %1457 = xor i64 %1452, %1456
  %1458 = add i64 %1457, %1420
  %1459 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %1460 = getelementptr inbounds i8, ptr %1459, i32 -32
  %1461 = getelementptr inbounds nuw i8, ptr %1151, i32 48
  %1462 = load i64, ptr %1460, align 1
  %1463 = getelementptr inbounds i8, ptr %1459, i32 -24
  %1464 = load i64, ptr %1463, align 1
  %1465 = load i64, ptr %1461, align 1
  %1466 = xor i64 %1465, %1462
  %1467 = getelementptr inbounds nuw i8, ptr %1151, i32 56
  %1468 = load i64, ptr %1467, align 1
  %1469 = xor i64 %1468, %1464
  %1470 = lshr i64 %1466, 32
  %1471 = trunc nuw i64 %1470 to i32
  %1472 = trunc i64 %1466 to i32
  %1473 = lshr i64 %1469, 32
  %1474 = trunc nuw i64 %1473 to i32
  %1475 = trunc i64 %1469 to i32
  %1476 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1472, i32 %1475) #28
  %1477 = extractvalue { i32, i32 } %1476, 0
  %1478 = extractvalue { i32, i32 } %1476, 1
  %1479 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1471, i32 %1475, i32 0, i32 %1478) #28
  %1480 = extractvalue { i32, i32 } %1479, 0
  %1481 = extractvalue { i32, i32 } %1479, 1
  %1482 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1472, i32 %1474, i32 %1480, i32 0) #28
  %1483 = extractvalue { i32, i32 } %1482, 0
  %1484 = extractvalue { i32, i32 } %1482, 1
  %1485 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1471, i32 %1474, i32 %1481, i32 %1484) #28
  %1486 = extractvalue { i32, i32 } %1485, 0
  %1487 = extractvalue { i32, i32 } %1485, 1
  %1488 = zext i32 %1486 to i64
  %1489 = zext i32 %1487 to i64
  %1490 = shl nuw i64 %1489, 32
  %1491 = or disjoint i64 %1490, %1488
  %1492 = zext i32 %1477 to i64
  %1493 = zext i32 %1483 to i64
  %1494 = shl nuw i64 %1493, 32
  %1495 = or disjoint i64 %1494, %1492
  %1496 = xor i64 %1491, %1495
  %1497 = add i64 %1458, %1496
  br label %1498

1498:                                             ; preds = %1419, %1255
  %1499 = phi i64 [ %1497, %1419 ], [ %1256, %1255 ]
  %1500 = load i64, ptr %732, align 1
  %1501 = getelementptr inbounds nuw i8, ptr %0, i32 264
  %1502 = load i64, ptr %1501, align 1
  %1503 = load i64, ptr %1151, align 1
  %1504 = xor i64 %1503, %1500
  %1505 = getelementptr inbounds nuw i8, ptr %1151, i32 8
  %1506 = load i64, ptr %1505, align 1
  %1507 = xor i64 %1506, %1502
  %1508 = lshr i64 %1504, 32
  %1509 = trunc nuw i64 %1508 to i32
  %1510 = trunc i64 %1504 to i32
  %1511 = lshr i64 %1507, 32
  %1512 = trunc nuw i64 %1511 to i32
  %1513 = trunc i64 %1507 to i32
  %1514 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1510, i32 %1513) #28
  %1515 = extractvalue { i32, i32 } %1514, 0
  %1516 = extractvalue { i32, i32 } %1514, 1
  %1517 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1509, i32 %1513, i32 0, i32 %1516) #28
  %1518 = extractvalue { i32, i32 } %1517, 0
  %1519 = extractvalue { i32, i32 } %1517, 1
  %1520 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1510, i32 %1512, i32 %1518, i32 0) #28
  %1521 = extractvalue { i32, i32 } %1520, 0
  %1522 = extractvalue { i32, i32 } %1520, 1
  %1523 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1509, i32 %1512, i32 %1519, i32 %1522) #28
  %1524 = extractvalue { i32, i32 } %1523, 0
  %1525 = extractvalue { i32, i32 } %1523, 1
  %1526 = zext i32 %1524 to i64
  %1527 = zext i32 %1525 to i64
  %1528 = shl nuw i64 %1527, 32
  %1529 = or disjoint i64 %1528, %1526
  %1530 = zext i32 %1515 to i64
  %1531 = zext i32 %1521 to i64
  %1532 = shl nuw i64 %1531, 32
  %1533 = or disjoint i64 %1532, %1530
  %1534 = xor i64 %1529, %1533
  %1535 = add i64 %1534, %1499
  %1536 = getelementptr inbounds nuw i8, ptr %732, i32 %733
  %1537 = getelementptr inbounds i8, ptr %1536, i32 -16
  %1538 = getelementptr inbounds nuw i8, ptr %1151, i32 16
  %1539 = load i64, ptr %1537, align 1
  %1540 = getelementptr inbounds i8, ptr %1536, i32 -8
  %1541 = load i64, ptr %1540, align 1
  %1542 = load i64, ptr %1538, align 1
  %1543 = xor i64 %1542, %1539
  %1544 = getelementptr inbounds nuw i8, ptr %1151, i32 24
  %1545 = load i64, ptr %1544, align 1
  %1546 = xor i64 %1545, %1541
  %1547 = lshr i64 %1543, 32
  %1548 = trunc nuw i64 %1547 to i32
  %1549 = trunc i64 %1543 to i32
  %1550 = lshr i64 %1546, 32
  %1551 = trunc nuw i64 %1550 to i32
  %1552 = trunc i64 %1546 to i32
  %1553 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1549, i32 %1552) #28
  %1554 = extractvalue { i32, i32 } %1553, 0
  %1555 = extractvalue { i32, i32 } %1553, 1
  %1556 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1548, i32 %1552, i32 0, i32 %1555) #28
  %1557 = extractvalue { i32, i32 } %1556, 0
  %1558 = extractvalue { i32, i32 } %1556, 1
  %1559 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1549, i32 %1551, i32 %1557, i32 0) #28
  %1560 = extractvalue { i32, i32 } %1559, 0
  %1561 = extractvalue { i32, i32 } %1559, 1
  %1562 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1548, i32 %1551, i32 %1558, i32 %1561) #28
  %1563 = extractvalue { i32, i32 } %1562, 0
  %1564 = extractvalue { i32, i32 } %1562, 1
  %1565 = zext i32 %1563 to i64
  %1566 = zext i32 %1564 to i64
  %1567 = shl nuw i64 %1566, 32
  %1568 = or disjoint i64 %1567, %1565
  %1569 = zext i32 %1554 to i64
  %1570 = zext i32 %1560 to i64
  %1571 = shl nuw i64 %1570, 32
  %1572 = or disjoint i64 %1571, %1569
  %1573 = xor i64 %1568, %1572
  %1574 = add i64 %1535, %1573
  %1575 = lshr i64 %1574, 37
  %1576 = xor i64 %1575, %1574
  %1577 = mul i64 %1576, 1609587929392839161
  %1578 = lshr i64 %1577, 32
  %1579 = xor i64 %1578, %1577
  br label %1582

1580:                                             ; preds = %1253
  %1581 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %732, i32 noundef %733, ptr noundef readonly %1151, i64 noundef 0)
  br label %1582

1582:                                             ; preds = %1580, %1498, %1227, %1225, %1202, %1155, %1147, %1068, %809, %807, %784, %738, %576
  %1583 = phi i64 [ %727, %576 ], [ %1146, %1068 ], [ %1148, %1147 ], [ %781, %738 ], [ %806, %784 ], [ %834, %809 ], [ 0, %807 ], [ %1579, %1498 ], [ %1581, %1580 ], [ %1199, %1155 ], [ %1224, %1202 ], [ %1252, %1227 ], [ 0, %1225 ]
  ret i64 %1583
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH3_128bits(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #17 {
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
  store i64 %66, ptr %0, align 8, !alias.scope !21
  %67 = lshr i64 %61, 37
  %68 = xor i64 %67, %61
  %69 = mul i64 %68, 1609587929392839161
  %70 = lshr i64 %69, 32
  %71 = xor i64 %70, %69
  store i64 %71, ptr %55, align 8, !alias.scope !21
  br label %466

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
  store i64 %105, ptr %0, align 8, !alias.scope !24
  %106 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %107 = lshr i64 %100, 37
  %108 = xor i64 %107, %100
  %109 = mul i64 %108, 1609587929392839161
  %110 = lshr i64 %109, 32
  %111 = xor i64 %110, %109
  store i64 %111, ptr %106, align 8, !alias.scope !24
  br label %466

112:                                              ; preds = %72
  %113 = icmp eq i32 %2, 0
  br i1 %113, label %149, label %114

114:                                              ; preds = %112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %115 = load i8, ptr %1, align 1, !noalias !27
  %116 = lshr i32 %2, 1
  %117 = getelementptr inbounds nuw i8, ptr %1, i32 %116
  %118 = load i8, ptr %117, align 1, !noalias !27
  %119 = getelementptr i8, ptr %1, i32 %2
  %120 = getelementptr i8, ptr %119, i32 -1
  %121 = load i8, ptr %120, align 1, !noalias !27
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
  store i64 %142, ptr %0, align 8, !alias.scope !27
  %143 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %144 = lshr i64 %137, 37
  %145 = xor i64 %144, %137
  %146 = mul i64 %145, 1609587929392839161
  %147 = lshr i64 %146, 32
  %148 = xor i64 %147, %146
  store i64 %148, ptr %143, align 8, !alias.scope !27
  br label %466

149:                                              ; preds = %112
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !30
  br label %466

150:                                              ; preds = %3
  %151 = icmp ult i32 %2, 129
  br i1 %151, label %152, label %462

152:                                              ; preds = %150
  %153 = zext nneg i32 %2 to i64
  %154 = mul i64 %153, -7046029288634856825
  %155 = icmp samesign ugt i32 %2, 32
  br i1 %155, label %156, label %373

156:                                              ; preds = %152
  %157 = icmp samesign ugt i32 %2, 64
  br i1 %157, label %158, label %301

158:                                              ; preds = %156
  %159 = icmp samesign ugt i32 %2, 96
  br i1 %159, label %160, label %229

160:                                              ; preds = %158
  %161 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %162 = load i64, ptr %161, align 1
  %163 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %164 = load i64, ptr %163, align 1
  %165 = xor i64 %162, 4554437623014685352
  %166 = xor i64 %164, 2111919702937427193
  %167 = lshr i64 %165, 32
  %168 = trunc nuw i64 %167 to i32
  %169 = trunc i64 %165 to i32
  %170 = lshr i64 %166, 32
  %171 = trunc nuw i64 %170 to i32
  %172 = trunc i64 %166 to i32
  %173 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %169, i32 %172) #28
  %174 = extractvalue { i32, i32 } %173, 0
  %175 = extractvalue { i32, i32 } %173, 1
  %176 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %168, i32 %172, i32 0, i32 %175) #28
  %177 = extractvalue { i32, i32 } %176, 0
  %178 = extractvalue { i32, i32 } %176, 1
  %179 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %169, i32 %171, i32 %177, i32 0) #28
  %180 = extractvalue { i32, i32 } %179, 0
  %181 = extractvalue { i32, i32 } %179, 1
  %182 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %168, i32 %171, i32 %178, i32 %181) #28
  %183 = extractvalue { i32, i32 } %182, 0
  %184 = extractvalue { i32, i32 } %182, 1
  %185 = zext i32 %183 to i64
  %186 = zext i32 %184 to i64
  %187 = shl nuw i64 %186, 32
  %188 = or disjoint i64 %187, %185
  %189 = zext i32 %174 to i64
  %190 = zext i32 %180 to i64
  %191 = shl nuw i64 %190, 32
  %192 = or disjoint i64 %191, %189
  %193 = xor i64 %188, %192
  %194 = add i64 %193, %154
  %195 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %196 = getelementptr inbounds i8, ptr %195, i32 -64
  %197 = load i64, ptr %196, align 1
  %198 = getelementptr inbounds i8, ptr %195, i32 -56
  %199 = load i64, ptr %198, align 1
  %200 = xor i64 %197, 3556072174620004746
  %201 = xor i64 %199, 7238261902898274248
  %202 = lshr i64 %200, 32
  %203 = trunc nuw i64 %202 to i32
  %204 = trunc i64 %200 to i32
  %205 = lshr i64 %201, 32
  %206 = trunc nuw i64 %205 to i32
  %207 = trunc i64 %201 to i32
  %208 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %204, i32 %207) #28
  %209 = extractvalue { i32, i32 } %208, 0
  %210 = extractvalue { i32, i32 } %208, 1
  %211 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %203, i32 %207, i32 0, i32 %210) #28
  %212 = extractvalue { i32, i32 } %211, 0
  %213 = extractvalue { i32, i32 } %211, 1
  %214 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %204, i32 %206, i32 %212, i32 0) #28
  %215 = extractvalue { i32, i32 } %214, 0
  %216 = extractvalue { i32, i32 } %214, 1
  %217 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %203, i32 %206, i32 %213, i32 %216) #28
  %218 = extractvalue { i32, i32 } %217, 0
  %219 = extractvalue { i32, i32 } %217, 1
  %220 = zext i32 %218 to i64
  %221 = zext i32 %219 to i64
  %222 = shl nuw i64 %221, 32
  %223 = or disjoint i64 %222, %220
  %224 = zext i32 %209 to i64
  %225 = zext i32 %215 to i64
  %226 = shl nuw i64 %225, 32
  %227 = or disjoint i64 %226, %224
  %228 = xor i64 %223, %227
  br label %229

229:                                              ; preds = %160, %158
  %230 = phi i64 [ %228, %160 ], [ 0, %158 ]
  %231 = phi i64 [ %194, %160 ], [ %154, %158 ]
  %232 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %233 = load i64, ptr %232, align 1
  %234 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %235 = load i64, ptr %234, align 1
  %236 = xor i64 %233, -3818837453329782724
  %237 = xor i64 %235, -6688317018830679928
  %238 = lshr i64 %236, 32
  %239 = trunc nuw i64 %238 to i32
  %240 = trunc i64 %236 to i32
  %241 = lshr i64 %237, 32
  %242 = trunc nuw i64 %241 to i32
  %243 = trunc i64 %237 to i32
  %244 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %240, i32 %243) #28
  %245 = extractvalue { i32, i32 } %244, 0
  %246 = extractvalue { i32, i32 } %244, 1
  %247 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %239, i32 %243, i32 0, i32 %246) #28
  %248 = extractvalue { i32, i32 } %247, 0
  %249 = extractvalue { i32, i32 } %247, 1
  %250 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %240, i32 %242, i32 %248, i32 0) #28
  %251 = extractvalue { i32, i32 } %250, 0
  %252 = extractvalue { i32, i32 } %250, 1
  %253 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %239, i32 %242, i32 %249, i32 %252) #28
  %254 = extractvalue { i32, i32 } %253, 0
  %255 = extractvalue { i32, i32 } %253, 1
  %256 = zext i32 %254 to i64
  %257 = zext i32 %255 to i64
  %258 = shl nuw i64 %257, 32
  %259 = or disjoint i64 %258, %256
  %260 = zext i32 %245 to i64
  %261 = zext i32 %251 to i64
  %262 = shl nuw i64 %261, 32
  %263 = or disjoint i64 %262, %260
  %264 = xor i64 %259, %263
  %265 = add i64 %264, %231
  %266 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %267 = getelementptr inbounds i8, ptr %266, i32 -48
  %268 = load i64, ptr %267, align 1
  %269 = getelementptr inbounds i8, ptr %266, i32 -40
  %270 = load i64, ptr %269, align 1
  %271 = xor i64 %268, 5690594596133299313
  %272 = xor i64 %270, -2833645246901970632
  %273 = lshr i64 %271, 32
  %274 = trunc nuw i64 %273 to i32
  %275 = trunc i64 %271 to i32
  %276 = lshr i64 %272, 32
  %277 = trunc nuw i64 %276 to i32
  %278 = trunc i64 %272 to i32
  %279 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %275, i32 %278) #28
  %280 = extractvalue { i32, i32 } %279, 0
  %281 = extractvalue { i32, i32 } %279, 1
  %282 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %274, i32 %278, i32 0, i32 %281) #28
  %283 = extractvalue { i32, i32 } %282, 0
  %284 = extractvalue { i32, i32 } %282, 1
  %285 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %275, i32 %277, i32 %283, i32 0) #28
  %286 = extractvalue { i32, i32 } %285, 0
  %287 = extractvalue { i32, i32 } %285, 1
  %288 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %274, i32 %277, i32 %284, i32 %287) #28
  %289 = extractvalue { i32, i32 } %288, 0
  %290 = extractvalue { i32, i32 } %288, 1
  %291 = zext i32 %289 to i64
  %292 = zext i32 %290 to i64
  %293 = shl nuw i64 %292, 32
  %294 = or disjoint i64 %293, %291
  %295 = zext i32 %280 to i64
  %296 = zext i32 %286 to i64
  %297 = shl nuw i64 %296, 32
  %298 = or disjoint i64 %297, %295
  %299 = xor i64 %294, %298
  %300 = add i64 %299, %230
  br label %301

301:                                              ; preds = %229, %156
  %302 = phi i64 [ %300, %229 ], [ 0, %156 ]
  %303 = phi i64 [ %265, %229 ], [ %154, %156 ]
  %304 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %305 = load i64, ptr %304, align 1
  %306 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %307 = load i64, ptr %306, align 1
  %308 = xor i64 %305, 8711581037947681227
  %309 = xor i64 %307, 2410270004345854594
  %310 = lshr i64 %308, 32
  %311 = trunc nuw i64 %310 to i32
  %312 = trunc i64 %308 to i32
  %313 = lshr i64 %309, 32
  %314 = trunc nuw i64 %313 to i32
  %315 = trunc i64 %309 to i32
  %316 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %312, i32 %315) #28
  %317 = extractvalue { i32, i32 } %316, 0
  %318 = extractvalue { i32, i32 } %316, 1
  %319 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %311, i32 %315, i32 0, i32 %318) #28
  %320 = extractvalue { i32, i32 } %319, 0
  %321 = extractvalue { i32, i32 } %319, 1
  %322 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %312, i32 %314, i32 %320, i32 0) #28
  %323 = extractvalue { i32, i32 } %322, 0
  %324 = extractvalue { i32, i32 } %322, 1
  %325 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %311, i32 %314, i32 %321, i32 %324) #28
  %326 = extractvalue { i32, i32 } %325, 0
  %327 = extractvalue { i32, i32 } %325, 1
  %328 = zext i32 %326 to i64
  %329 = zext i32 %327 to i64
  %330 = shl nuw i64 %329, 32
  %331 = or disjoint i64 %330, %328
  %332 = zext i32 %317 to i64
  %333 = zext i32 %323 to i64
  %334 = shl nuw i64 %333, 32
  %335 = or disjoint i64 %334, %332
  %336 = xor i64 %331, %335
  %337 = add i64 %336, %303
  %338 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %339 = getelementptr inbounds i8, ptr %338, i32 -32
  %340 = load i64, ptr %339, align 1
  %341 = getelementptr inbounds i8, ptr %338, i32 -24
  %342 = load i64, ptr %341, align 1
  %343 = xor i64 %340, -8204357891075471176
  %344 = xor i64 %342, 5487137525590930912
  %345 = lshr i64 %343, 32
  %346 = trunc nuw i64 %345 to i32
  %347 = trunc i64 %343 to i32
  %348 = lshr i64 %344, 32
  %349 = trunc nuw i64 %348 to i32
  %350 = trunc i64 %344 to i32
  %351 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %347, i32 %350) #28
  %352 = extractvalue { i32, i32 } %351, 0
  %353 = extractvalue { i32, i32 } %351, 1
  %354 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %346, i32 %350, i32 0, i32 %353) #28
  %355 = extractvalue { i32, i32 } %354, 0
  %356 = extractvalue { i32, i32 } %354, 1
  %357 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %347, i32 %349, i32 %355, i32 0) #28
  %358 = extractvalue { i32, i32 } %357, 0
  %359 = extractvalue { i32, i32 } %357, 1
  %360 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %346, i32 %349, i32 %356, i32 %359) #28
  %361 = extractvalue { i32, i32 } %360, 0
  %362 = extractvalue { i32, i32 } %360, 1
  %363 = zext i32 %361 to i64
  %364 = zext i32 %362 to i64
  %365 = shl nuw i64 %364, 32
  %366 = or disjoint i64 %365, %363
  %367 = zext i32 %352 to i64
  %368 = zext i32 %358 to i64
  %369 = shl nuw i64 %368, 32
  %370 = or disjoint i64 %369, %367
  %371 = xor i64 %366, %370
  %372 = add i64 %371, %302
  br label %373

373:                                              ; preds = %152, %301
  %374 = phi i64 [ %372, %301 ], [ 0, %152 ]
  %375 = phi i64 [ %337, %301 ], [ %154, %152 ]
  %376 = load i64, ptr %1, align 1
  %377 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %378 = load i64, ptr %377, align 1
  %379 = xor i64 %376, -4734510112055689544
  %380 = xor i64 %378, 2066345149520216444
  %381 = lshr i64 %379, 32
  %382 = trunc nuw i64 %381 to i32
  %383 = trunc i64 %379 to i32
  %384 = lshr i64 %380, 32
  %385 = trunc nuw i64 %384 to i32
  %386 = trunc i64 %380 to i32
  %387 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %383, i32 %386) #28
  %388 = extractvalue { i32, i32 } %387, 0
  %389 = extractvalue { i32, i32 } %387, 1
  %390 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %382, i32 %386, i32 0, i32 %389) #28
  %391 = extractvalue { i32, i32 } %390, 0
  %392 = extractvalue { i32, i32 } %390, 1
  %393 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %383, i32 %385, i32 %391, i32 0) #28
  %394 = extractvalue { i32, i32 } %393, 0
  %395 = extractvalue { i32, i32 } %393, 1
  %396 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %382, i32 %385, i32 %392, i32 %395) #28
  %397 = extractvalue { i32, i32 } %396, 0
  %398 = extractvalue { i32, i32 } %396, 1
  %399 = zext i32 %397 to i64
  %400 = zext i32 %398 to i64
  %401 = shl nuw i64 %400, 32
  %402 = or disjoint i64 %401, %399
  %403 = zext i32 %388 to i64
  %404 = zext i32 %394 to i64
  %405 = shl nuw i64 %404, 32
  %406 = or disjoint i64 %405, %403
  %407 = xor i64 %402, %406
  %408 = add i64 %407, %375
  %409 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %410 = getelementptr inbounds i8, ptr %409, i32 -16
  %411 = load i64, ptr %410, align 1
  %412 = getelementptr inbounds i8, ptr %409, i32 -8
  %413 = load i64, ptr %412, align 1
  %414 = xor i64 %411, -2623469361688619810
  %415 = xor i64 %413, 2262974939099578482
  %416 = lshr i64 %414, 32
  %417 = trunc nuw i64 %416 to i32
  %418 = trunc i64 %414 to i32
  %419 = lshr i64 %415, 32
  %420 = trunc nuw i64 %419 to i32
  %421 = trunc i64 %415 to i32
  %422 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %418, i32 %421) #28
  %423 = extractvalue { i32, i32 } %422, 0
  %424 = extractvalue { i32, i32 } %422, 1
  %425 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %417, i32 %421, i32 0, i32 %424) #28
  %426 = extractvalue { i32, i32 } %425, 0
  %427 = extractvalue { i32, i32 } %425, 1
  %428 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %418, i32 %420, i32 %426, i32 0) #28
  %429 = extractvalue { i32, i32 } %428, 0
  %430 = extractvalue { i32, i32 } %428, 1
  %431 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %417, i32 %420, i32 %427, i32 %430) #28
  %432 = extractvalue { i32, i32 } %431, 0
  %433 = extractvalue { i32, i32 } %431, 1
  %434 = zext i32 %432 to i64
  %435 = zext i32 %433 to i64
  %436 = shl nuw i64 %435, 32
  %437 = or disjoint i64 %436, %434
  %438 = zext i32 %423 to i64
  %439 = zext i32 %429 to i64
  %440 = shl nuw i64 %439, 32
  %441 = or disjoint i64 %440, %438
  %442 = xor i64 %437, %441
  %443 = add i64 %442, %374
  %444 = add i64 %443, %408
  %445 = mul i64 %408, -7046029288634856825
  %446 = mul i64 %443, -8796714831421723037
  %447 = mul i64 %153, -4417276706812531889
  %448 = add i64 %445, %447
  %449 = add i64 %448, %446
  %450 = lshr i64 %444, 37
  %451 = xor i64 %450, %444
  %452 = mul i64 %451, 1609587929392839161
  %453 = lshr i64 %452, 32
  %454 = xor i64 %453, %452
  store i64 %454, ptr %0, align 8, !alias.scope !33
  %455 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %456 = lshr i64 %449, 37
  %457 = xor i64 %456, %449
  %458 = mul i64 %457, 1609587929392839161
  %459 = lshr i64 %458, 32
  %460 = xor i64 %459, %458
  %461 = sub i64 0, %460
  store i64 %461, ptr %455, align 8, !alias.scope !33
  br label %466

462:                                              ; preds = %150
  %463 = icmp ult i32 %2, 241
  br i1 %463, label %464, label %465

464:                                              ; preds = %462
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %466

465:                                              ; preds = %462
  tail call fastcc void @XXH3_hashLong_128b_defaultSecret(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2)
  br label %466

466:                                              ; preds = %149, %114, %74, %7, %465, %464, %373
  ret void
}

; Function Attrs: noinline nounwind memory(argmem: readwrite)
define internal fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i32 noundef range(i32 129, 241) %2, ptr noundef readonly %3, i64 noundef %4) unnamed_addr #18 {
  %6 = zext nneg i32 %2 to i64
  %7 = mul i64 %6, -7046029288634856825
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ %7, %5 ], [ %52, %8 ]
  %10 = phi i64 [ 0, %5 ], [ %92, %8 ]
  %11 = phi i32 [ 0, %5 ], [ %93, %8 ]
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
  %26 = trunc nuw i64 %25 to i32
  %27 = trunc i64 %20 to i32
  %28 = lshr i64 %24, 32
  %29 = trunc nuw i64 %28 to i32
  %30 = trunc i64 %24 to i32
  %31 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %27, i32 %30) #28
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = extractvalue { i32, i32 } %31, 1
  %34 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %26, i32 %30, i32 0, i32 %33) #28
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = extractvalue { i32, i32 } %34, 1
  %37 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %27, i32 %29, i32 %35, i32 0) #28
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = extractvalue { i32, i32 } %37, 1
  %40 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %26, i32 %29, i32 %36, i32 %39) #28
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = extractvalue { i32, i32 } %40, 1
  %43 = zext i32 %41 to i64
  %44 = zext i32 %42 to i64
  %45 = shl nuw i64 %44, 32
  %46 = or disjoint i64 %45, %43
  %47 = zext i32 %32 to i64
  %48 = zext i32 %38 to i64
  %49 = shl nuw i64 %48, 32
  %50 = or disjoint i64 %49, %47
  %51 = xor i64 %46, %50
  %52 = add i64 %51, %9
  %53 = getelementptr inbounds nuw i8, ptr %13, i32 16
  %54 = getelementptr inbounds nuw i8, ptr %14, i32 16
  %55 = load i64, ptr %53, align 1
  %56 = getelementptr inbounds nuw i8, ptr %13, i32 24
  %57 = load i64, ptr %56, align 1
  %58 = load i64, ptr %54, align 1
  %59 = sub i64 %58, %4
  %60 = xor i64 %59, %55
  %61 = getelementptr inbounds nuw i8, ptr %14, i32 24
  %62 = load i64, ptr %61, align 1
  %63 = add i64 %62, %4
  %64 = xor i64 %63, %57
  %65 = lshr i64 %60, 32
  %66 = trunc nuw i64 %65 to i32
  %67 = trunc i64 %60 to i32
  %68 = lshr i64 %64, 32
  %69 = trunc nuw i64 %68 to i32
  %70 = trunc i64 %64 to i32
  %71 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %67, i32 %70) #28
  %72 = extractvalue { i32, i32 } %71, 0
  %73 = extractvalue { i32, i32 } %71, 1
  %74 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %66, i32 %70, i32 0, i32 %73) #28
  %75 = extractvalue { i32, i32 } %74, 0
  %76 = extractvalue { i32, i32 } %74, 1
  %77 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %67, i32 %69, i32 %75, i32 0) #28
  %78 = extractvalue { i32, i32 } %77, 0
  %79 = extractvalue { i32, i32 } %77, 1
  %80 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %66, i32 %69, i32 %76, i32 %79) #28
  %81 = extractvalue { i32, i32 } %80, 0
  %82 = extractvalue { i32, i32 } %80, 1
  %83 = zext i32 %81 to i64
  %84 = zext i32 %82 to i64
  %85 = shl nuw i64 %84, 32
  %86 = or disjoint i64 %85, %83
  %87 = zext i32 %72 to i64
  %88 = zext i32 %78 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %87
  %91 = xor i64 %86, %90
  %92 = add i64 %91, %10
  %93 = add nuw nsw i32 %11, 1
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %8

95:                                               ; preds = %8
  %96 = lshr i32 %2, 5
  %97 = lshr i64 %52, 37
  %98 = xor i64 %97, %52
  %99 = mul i64 %98, 1609587929392839161
  %100 = lshr i64 %99, 32
  %101 = xor i64 %100, %99
  %102 = lshr i64 %92, 37
  %103 = xor i64 %102, %92
  %104 = mul i64 %103, 1609587929392839161
  %105 = lshr i64 %104, 32
  %106 = xor i64 %105, %104
  %107 = icmp eq i32 %96, 4
  br i1 %107, label %196, label %108

108:                                              ; preds = %95, %108
  %109 = phi i64 [ %153, %108 ], [ %101, %95 ]
  %110 = phi i64 [ %193, %108 ], [ %106, %95 ]
  %111 = phi i32 [ %194, %108 ], [ 4, %95 ]
  %112 = shl nsw i32 %111, 5
  %113 = getelementptr inbounds nuw i8, ptr %1, i32 %112
  %114 = getelementptr i8, ptr %3, i32 %112
  %115 = getelementptr i8, ptr %114, i32 -125
  %116 = load i64, ptr %113, align 1
  %117 = getelementptr inbounds nuw i8, ptr %113, i32 8
  %118 = load i64, ptr %117, align 1
  %119 = load i64, ptr %115, align 1
  %120 = add i64 %119, %4
  %121 = xor i64 %120, %116
  %122 = getelementptr i8, ptr %114, i32 -117
  %123 = load i64, ptr %122, align 1
  %124 = sub i64 %123, %4
  %125 = xor i64 %124, %118
  %126 = lshr i64 %121, 32
  %127 = trunc nuw i64 %126 to i32
  %128 = trunc i64 %121 to i32
  %129 = lshr i64 %125, 32
  %130 = trunc nuw i64 %129 to i32
  %131 = trunc i64 %125 to i32
  %132 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %128, i32 %131) #28
  %133 = extractvalue { i32, i32 } %132, 0
  %134 = extractvalue { i32, i32 } %132, 1
  %135 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %127, i32 %131, i32 0, i32 %134) #28
  %136 = extractvalue { i32, i32 } %135, 0
  %137 = extractvalue { i32, i32 } %135, 1
  %138 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %128, i32 %130, i32 %136, i32 0) #28
  %139 = extractvalue { i32, i32 } %138, 0
  %140 = extractvalue { i32, i32 } %138, 1
  %141 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %127, i32 %130, i32 %137, i32 %140) #28
  %142 = extractvalue { i32, i32 } %141, 0
  %143 = extractvalue { i32, i32 } %141, 1
  %144 = zext i32 %142 to i64
  %145 = zext i32 %143 to i64
  %146 = shl nuw i64 %145, 32
  %147 = or disjoint i64 %146, %144
  %148 = zext i32 %133 to i64
  %149 = zext i32 %139 to i64
  %150 = shl nuw i64 %149, 32
  %151 = or disjoint i64 %150, %148
  %152 = xor i64 %147, %151
  %153 = add i64 %152, %109
  %154 = getelementptr inbounds nuw i8, ptr %113, i32 16
  %155 = getelementptr i8, ptr %114, i32 -109
  %156 = load i64, ptr %154, align 1
  %157 = getelementptr inbounds nuw i8, ptr %113, i32 24
  %158 = load i64, ptr %157, align 1
  %159 = load i64, ptr %155, align 1
  %160 = sub i64 %159, %4
  %161 = xor i64 %160, %156
  %162 = getelementptr i8, ptr %114, i32 -101
  %163 = load i64, ptr %162, align 1
  %164 = add i64 %163, %4
  %165 = xor i64 %164, %158
  %166 = lshr i64 %161, 32
  %167 = trunc nuw i64 %166 to i32
  %168 = trunc i64 %161 to i32
  %169 = lshr i64 %165, 32
  %170 = trunc nuw i64 %169 to i32
  %171 = trunc i64 %165 to i32
  %172 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %168, i32 %171) #28
  %173 = extractvalue { i32, i32 } %172, 0
  %174 = extractvalue { i32, i32 } %172, 1
  %175 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %167, i32 %171, i32 0, i32 %174) #28
  %176 = extractvalue { i32, i32 } %175, 0
  %177 = extractvalue { i32, i32 } %175, 1
  %178 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %168, i32 %170, i32 %176, i32 0) #28
  %179 = extractvalue { i32, i32 } %178, 0
  %180 = extractvalue { i32, i32 } %178, 1
  %181 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %167, i32 %170, i32 %177, i32 %180) #28
  %182 = extractvalue { i32, i32 } %181, 0
  %183 = extractvalue { i32, i32 } %181, 1
  %184 = zext i32 %182 to i64
  %185 = zext i32 %183 to i64
  %186 = shl nuw i64 %185, 32
  %187 = or disjoint i64 %186, %184
  %188 = zext i32 %173 to i64
  %189 = zext i32 %179 to i64
  %190 = shl nuw i64 %189, 32
  %191 = or disjoint i64 %190, %188
  %192 = xor i64 %187, %191
  %193 = add i64 %192, %110
  %194 = add nuw nsw i32 %111, 1
  %195 = icmp eq i32 %194, %96
  br i1 %195, label %196, label %108

196:                                              ; preds = %108, %95
  %197 = phi i64 [ %106, %95 ], [ %193, %108 ]
  %198 = phi i64 [ %101, %95 ], [ %153, %108 ]
  %199 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %200 = getelementptr inbounds i8, ptr %199, i32 -16
  %201 = getelementptr inbounds nuw i8, ptr %3, i32 119
  %202 = load i64, ptr %200, align 1
  %203 = getelementptr inbounds i8, ptr %199, i32 -8
  %204 = load i64, ptr %203, align 1
  %205 = load i64, ptr %201, align 1
  %206 = add i64 %205, %4
  %207 = xor i64 %206, %202
  %208 = getelementptr inbounds nuw i8, ptr %3, i32 127
  %209 = load i64, ptr %208, align 1
  %210 = sub i64 %209, %4
  %211 = xor i64 %210, %204
  %212 = lshr i64 %207, 32
  %213 = trunc nuw i64 %212 to i32
  %214 = trunc i64 %207 to i32
  %215 = lshr i64 %211, 32
  %216 = trunc nuw i64 %215 to i32
  %217 = trunc i64 %211 to i32
  %218 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %214, i32 %217) #28
  %219 = extractvalue { i32, i32 } %218, 0
  %220 = extractvalue { i32, i32 } %218, 1
  %221 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %213, i32 %217, i32 0, i32 %220) #28
  %222 = extractvalue { i32, i32 } %221, 0
  %223 = extractvalue { i32, i32 } %221, 1
  %224 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %214, i32 %216, i32 %222, i32 0) #28
  %225 = extractvalue { i32, i32 } %224, 0
  %226 = extractvalue { i32, i32 } %224, 1
  %227 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %213, i32 %216, i32 %223, i32 %226) #28
  %228 = extractvalue { i32, i32 } %227, 0
  %229 = extractvalue { i32, i32 } %227, 1
  %230 = zext i32 %228 to i64
  %231 = zext i32 %229 to i64
  %232 = shl nuw i64 %231, 32
  %233 = or disjoint i64 %232, %230
  %234 = zext i32 %219 to i64
  %235 = zext i32 %225 to i64
  %236 = shl nuw i64 %235, 32
  %237 = or disjoint i64 %236, %234
  %238 = xor i64 %233, %237
  %239 = add i64 %238, %198
  %240 = getelementptr inbounds i8, ptr %199, i32 -32
  %241 = getelementptr inbounds nuw i8, ptr %3, i32 103
  %242 = load i64, ptr %240, align 1
  %243 = getelementptr inbounds i8, ptr %199, i32 -24
  %244 = load i64, ptr %243, align 1
  %245 = load i64, ptr %241, align 1
  %246 = sub i64 %245, %4
  %247 = xor i64 %246, %242
  %248 = getelementptr inbounds nuw i8, ptr %3, i32 111
  %249 = load i64, ptr %248, align 1
  %250 = add i64 %249, %4
  %251 = xor i64 %250, %244
  %252 = lshr i64 %247, 32
  %253 = trunc nuw i64 %252 to i32
  %254 = trunc i64 %247 to i32
  %255 = lshr i64 %251, 32
  %256 = trunc nuw i64 %255 to i32
  %257 = trunc i64 %251 to i32
  %258 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %254, i32 %257) #28
  %259 = extractvalue { i32, i32 } %258, 0
  %260 = extractvalue { i32, i32 } %258, 1
  %261 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %253, i32 %257, i32 0, i32 %260) #28
  %262 = extractvalue { i32, i32 } %261, 0
  %263 = extractvalue { i32, i32 } %261, 1
  %264 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %254, i32 %256, i32 %262, i32 0) #28
  %265 = extractvalue { i32, i32 } %264, 0
  %266 = extractvalue { i32, i32 } %264, 1
  %267 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %253, i32 %256, i32 %263, i32 %266) #28
  %268 = extractvalue { i32, i32 } %267, 0
  %269 = extractvalue { i32, i32 } %267, 1
  %270 = zext i32 %268 to i64
  %271 = zext i32 %269 to i64
  %272 = shl nuw i64 %271, 32
  %273 = or disjoint i64 %272, %270
  %274 = zext i32 %259 to i64
  %275 = zext i32 %265 to i64
  %276 = shl nuw i64 %275, 32
  %277 = or disjoint i64 %276, %274
  %278 = xor i64 %273, %277
  %279 = add i64 %278, %197
  %280 = add i64 %279, %239
  %281 = mul i64 %239, -7046029288634856825
  %282 = mul i64 %279, -8796714831421723037
  %283 = sub i64 %6, %4
  %284 = mul i64 %283, -4417276706812531889
  %285 = add i64 %281, %284
  %286 = add i64 %285, %282
  %287 = lshr i64 %280, 37
  %288 = xor i64 %287, %280
  %289 = mul i64 %288, 1609587929392839161
  %290 = lshr i64 %289, 32
  %291 = xor i64 %290, %289
  store i64 %291, ptr %0, align 8
  %292 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %293 = lshr i64 %286, 37
  %294 = xor i64 %293, %286
  %295 = mul i64 %294, 1609587929392839161
  %296 = lshr i64 %295, 32
  %297 = xor i64 %296, %295
  %298 = sub i64 0, %297
  store i64 %298, ptr %292, align 8
  ret void
}

; Function Attrs: noinline nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal fastcc void @XXH3_hashLong_128b_defaultSecret(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i32 noundef range(i32 241, 0) %2) unnamed_addr #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
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
  %32 = load i64, ptr %29, align 1, !noalias !38
  %33 = getelementptr inbounds nuw i8, ptr %29, i32 8
  %34 = load i64, ptr %33, align 1, !noalias !38
  %35 = load i64, ptr %31, align 8, !noalias !38
  %36 = getelementptr inbounds nuw i8, ptr %31, i32 8
  %37 = load i64, ptr %36, align 8, !noalias !38
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
  %51 = load i64, ptr %50, align 1, !noalias !38
  %52 = getelementptr inbounds nuw i8, ptr %29, i32 24
  %53 = load i64, ptr %52, align 1, !noalias !38
  %54 = getelementptr inbounds nuw i8, ptr %31, i32 16
  %55 = load i64, ptr %54, align 8, !noalias !38
  %56 = getelementptr inbounds nuw i8, ptr %31, i32 24
  %57 = load i64, ptr %56, align 8, !noalias !38
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
  %71 = load i64, ptr %70, align 1, !noalias !38
  %72 = getelementptr inbounds nuw i8, ptr %29, i32 40
  %73 = load i64, ptr %72, align 1, !noalias !38
  %74 = getelementptr inbounds nuw i8, ptr %31, i32 32
  %75 = load i64, ptr %74, align 8, !noalias !38
  %76 = getelementptr inbounds nuw i8, ptr %31, i32 40
  %77 = load i64, ptr %76, align 8, !noalias !38
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
  %91 = load i64, ptr %90, align 1, !noalias !38
  %92 = getelementptr inbounds nuw i8, ptr %29, i32 56
  %93 = load i64, ptr %92, align 1, !noalias !38
  %94 = getelementptr inbounds nuw i8, ptr %31, i32 48
  %95 = load i64, ptr %94, align 8, !noalias !38
  %96 = getelementptr inbounds nuw i8, ptr %31, i32 56
  %97 = load i64, ptr %96, align 8, !noalias !38
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
  %175 = load i64, ptr %172, align 1, !noalias !38
  %176 = getelementptr inbounds nuw i8, ptr %172, i32 8
  %177 = load i64, ptr %176, align 1, !noalias !38
  %178 = load i64, ptr %174, align 8, !noalias !38
  %179 = getelementptr inbounds nuw i8, ptr %174, i32 8
  %180 = load i64, ptr %179, align 8, !noalias !38
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
  %194 = load i64, ptr %193, align 1, !noalias !38
  %195 = getelementptr inbounds nuw i8, ptr %172, i32 24
  %196 = load i64, ptr %195, align 1, !noalias !38
  %197 = getelementptr inbounds nuw i8, ptr %174, i32 16
  %198 = load i64, ptr %197, align 8, !noalias !38
  %199 = getelementptr inbounds nuw i8, ptr %174, i32 24
  %200 = load i64, ptr %199, align 8, !noalias !38
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
  %214 = load i64, ptr %213, align 1, !noalias !38
  %215 = getelementptr inbounds nuw i8, ptr %172, i32 40
  %216 = load i64, ptr %215, align 1, !noalias !38
  %217 = getelementptr inbounds nuw i8, ptr %174, i32 32
  %218 = load i64, ptr %217, align 8, !noalias !38
  %219 = getelementptr inbounds nuw i8, ptr %174, i32 40
  %220 = load i64, ptr %219, align 8, !noalias !38
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
  %234 = load i64, ptr %233, align 1, !noalias !38
  %235 = getelementptr inbounds nuw i8, ptr %172, i32 56
  %236 = load i64, ptr %235, align 1, !noalias !38
  %237 = getelementptr inbounds nuw i8, ptr %174, i32 48
  %238 = load i64, ptr %237, align 8, !noalias !38
  %239 = getelementptr inbounds nuw i8, ptr %174, i32 56
  %240 = load i64, ptr %239, align 8, !noalias !38
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
  %269 = load i64, ptr %268, align 1, !noalias !38
  %270 = getelementptr inbounds i8, ptr %267, i32 -56
  %271 = load i64, ptr %270, align 1, !noalias !38
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
  %285 = load i64, ptr %284, align 1, !noalias !38
  %286 = getelementptr inbounds i8, ptr %267, i32 -40
  %287 = load i64, ptr %286, align 1, !noalias !38
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
  %301 = load i64, ptr %300, align 1, !noalias !38
  %302 = getelementptr inbounds i8, ptr %267, i32 -24
  %303 = load i64, ptr %302, align 1, !noalias !38
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
  %317 = load i64, ptr %316, align 1, !noalias !38
  %318 = getelementptr inbounds i8, ptr %267, i32 -8
  %319 = load i64, ptr %318, align 1, !noalias !38
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
  %346 = trunc nuw i64 %345 to i32
  %347 = trunc i64 %343 to i32
  %348 = lshr i64 %344, 32
  %349 = trunc nuw i64 %348 to i32
  %350 = trunc i64 %344 to i32
  %351 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %347, i32 %350) #28
  %352 = extractvalue { i32, i32 } %351, 0
  %353 = extractvalue { i32, i32 } %351, 1
  %354 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %346, i32 %350, i32 0, i32 %353) #28
  %355 = extractvalue { i32, i32 } %354, 0
  %356 = extractvalue { i32, i32 } %354, 1
  %357 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %347, i32 %349, i32 %355, i32 0) #28
  %358 = extractvalue { i32, i32 } %357, 0
  %359 = extractvalue { i32, i32 } %357, 1
  %360 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %346, i32 %349, i32 %356, i32 %359) #28
  %361 = extractvalue { i32, i32 } %360, 0
  %362 = extractvalue { i32, i32 } %360, 1
  %363 = zext i32 %361 to i64
  %364 = zext i32 %362 to i64
  %365 = shl nuw i64 %364, 32
  %366 = or disjoint i64 %365, %363
  %367 = zext i32 %352 to i64
  %368 = zext i32 %358 to i64
  %369 = shl nuw i64 %368, 32
  %370 = or disjoint i64 %369, %367
  %371 = xor i64 %366, %370
  %372 = add i64 %371, %342
  %373 = xor i64 %338, -1839215637059881052
  %374 = xor i64 %337, -3433288310154277810
  %375 = lshr i64 %373, 32
  %376 = trunc nuw i64 %375 to i32
  %377 = trunc i64 %373 to i32
  %378 = lshr i64 %374, 32
  %379 = trunc nuw i64 %378 to i32
  %380 = trunc i64 %374 to i32
  %381 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %377, i32 %380) #28
  %382 = extractvalue { i32, i32 } %381, 0
  %383 = extractvalue { i32, i32 } %381, 1
  %384 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %376, i32 %380, i32 0, i32 %383) #28
  %385 = extractvalue { i32, i32 } %384, 0
  %386 = extractvalue { i32, i32 } %384, 1
  %387 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %377, i32 %379, i32 %385, i32 0) #28
  %388 = extractvalue { i32, i32 } %387, 0
  %389 = extractvalue { i32, i32 } %387, 1
  %390 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %376, i32 %379, i32 %386, i32 %389) #28
  %391 = extractvalue { i32, i32 } %390, 0
  %392 = extractvalue { i32, i32 } %390, 1
  %393 = zext i32 %391 to i64
  %394 = zext i32 %392 to i64
  %395 = shl nuw i64 %394, 32
  %396 = or disjoint i64 %395, %393
  %397 = zext i32 %382 to i64
  %398 = zext i32 %388 to i64
  %399 = shl nuw i64 %398, 32
  %400 = or disjoint i64 %399, %397
  %401 = xor i64 %396, %400
  %402 = add i64 %372, %401
  %403 = xor i64 %336, 5046485836271438973
  %404 = xor i64 %335, -8055285457383852172
  %405 = lshr i64 %403, 32
  %406 = trunc nuw i64 %405 to i32
  %407 = trunc i64 %403 to i32
  %408 = lshr i64 %404, 32
  %409 = trunc nuw i64 %408 to i32
  %410 = trunc i64 %404 to i32
  %411 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %407, i32 %410) #28
  %412 = extractvalue { i32, i32 } %411, 0
  %413 = extractvalue { i32, i32 } %411, 1
  %414 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %406, i32 %410, i32 0, i32 %413) #28
  %415 = extractvalue { i32, i32 } %414, 0
  %416 = extractvalue { i32, i32 } %414, 1
  %417 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %407, i32 %409, i32 %415, i32 0) #28
  %418 = extractvalue { i32, i32 } %417, 0
  %419 = extractvalue { i32, i32 } %417, 1
  %420 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %406, i32 %409, i32 %416, i32 %419) #28
  %421 = extractvalue { i32, i32 } %420, 0
  %422 = extractvalue { i32, i32 } %420, 1
  %423 = zext i32 %421 to i64
  %424 = zext i32 %422 to i64
  %425 = shl nuw i64 %424, 32
  %426 = or disjoint i64 %425, %423
  %427 = zext i32 %412 to i64
  %428 = zext i32 %418 to i64
  %429 = shl nuw i64 %428, 32
  %430 = or disjoint i64 %429, %427
  %431 = xor i64 %426, %430
  %432 = add i64 %402, %431
  %433 = xor i64 %334, 5920048007935066598
  %434 = xor i64 %333, 7336514198459093435
  %435 = lshr i64 %433, 32
  %436 = trunc nuw i64 %435 to i32
  %437 = trunc i64 %433 to i32
  %438 = lshr i64 %434, 32
  %439 = trunc nuw i64 %438 to i32
  %440 = trunc i64 %434 to i32
  %441 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %437, i32 %440) #28
  %442 = extractvalue { i32, i32 } %441, 0
  %443 = extractvalue { i32, i32 } %441, 1
  %444 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %436, i32 %440, i32 0, i32 %443) #28
  %445 = extractvalue { i32, i32 } %444, 0
  %446 = extractvalue { i32, i32 } %444, 1
  %447 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %437, i32 %439, i32 %445, i32 0) #28
  %448 = extractvalue { i32, i32 } %447, 0
  %449 = extractvalue { i32, i32 } %447, 1
  %450 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %436, i32 %439, i32 %446, i32 %449) #28
  %451 = extractvalue { i32, i32 } %450, 0
  %452 = extractvalue { i32, i32 } %450, 1
  %453 = zext i32 %451 to i64
  %454 = zext i32 %452 to i64
  %455 = shl nuw i64 %454, 32
  %456 = or disjoint i64 %455, %453
  %457 = zext i32 %442 to i64
  %458 = zext i32 %448 to i64
  %459 = shl nuw i64 %458, 32
  %460 = or disjoint i64 %459, %457
  %461 = xor i64 %456, %460
  %462 = add i64 %432, %461
  %463 = lshr i64 %462, 37
  %464 = xor i64 %463, %462
  %465 = mul i64 %464, 1609587929392839161
  %466 = lshr i64 %465, 32
  %467 = xor i64 %466, %465
  %468 = mul i64 %341, -4417276706812531889
  %469 = xor i64 %468, -1
  %470 = xor i64 %340, -2753530472436770380
  %471 = xor i64 %339, 3784058077962335096
  %472 = lshr i64 %470, 32
  %473 = trunc nuw i64 %472 to i32
  %474 = trunc i64 %470 to i32
  %475 = lshr i64 %471, 32
  %476 = trunc nuw i64 %475 to i32
  %477 = trunc i64 %471 to i32
  %478 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %474, i32 %477) #28
  %479 = extractvalue { i32, i32 } %478, 0
  %480 = extractvalue { i32, i32 } %478, 1
  %481 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %473, i32 %477, i32 0, i32 %480) #28
  %482 = extractvalue { i32, i32 } %481, 0
  %483 = extractvalue { i32, i32 } %481, 1
  %484 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %474, i32 %476, i32 %482, i32 0) #28
  %485 = extractvalue { i32, i32 } %484, 0
  %486 = extractvalue { i32, i32 } %484, 1
  %487 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %473, i32 %476, i32 %483, i32 %486) #28
  %488 = extractvalue { i32, i32 } %487, 0
  %489 = extractvalue { i32, i32 } %487, 1
  %490 = zext i32 %488 to i64
  %491 = zext i32 %489 to i64
  %492 = shl nuw i64 %491, 32
  %493 = or disjoint i64 %492, %490
  %494 = zext i32 %479 to i64
  %495 = zext i32 %485 to i64
  %496 = shl nuw i64 %495, 32
  %497 = or disjoint i64 %496, %494
  %498 = xor i64 %493, %497
  %499 = add i64 %498, %469
  %500 = xor i64 %338, -360392965937173549
  %501 = xor i64 %337, -5237161843349560557
  %502 = lshr i64 %500, 32
  %503 = trunc nuw i64 %502 to i32
  %504 = trunc i64 %500 to i32
  %505 = lshr i64 %501, 32
  %506 = trunc nuw i64 %505 to i32
  %507 = trunc i64 %501 to i32
  %508 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %504, i32 %507) #28
  %509 = extractvalue { i32, i32 } %508, 0
  %510 = extractvalue { i32, i32 } %508, 1
  %511 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %503, i32 %507, i32 0, i32 %510) #28
  %512 = extractvalue { i32, i32 } %511, 0
  %513 = extractvalue { i32, i32 } %511, 1
  %514 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %504, i32 %506, i32 %512, i32 0) #28
  %515 = extractvalue { i32, i32 } %514, 0
  %516 = extractvalue { i32, i32 } %514, 1
  %517 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %503, i32 %506, i32 %513, i32 %516) #28
  %518 = extractvalue { i32, i32 } %517, 0
  %519 = extractvalue { i32, i32 } %517, 1
  %520 = zext i32 %518 to i64
  %521 = zext i32 %519 to i64
  %522 = shl nuw i64 %521, 32
  %523 = or disjoint i64 %522, %520
  %524 = zext i32 %509 to i64
  %525 = zext i32 %515 to i64
  %526 = shl nuw i64 %525, 32
  %527 = or disjoint i64 %526, %524
  %528 = xor i64 %523, %527
  %529 = add i64 %499, %528
  %530 = xor i64 %336, 2965150961192524528
  %531 = xor i64 %335, 9032178055121889492
  %532 = lshr i64 %530, 32
  %533 = trunc nuw i64 %532 to i32
  %534 = trunc i64 %530 to i32
  %535 = lshr i64 %531, 32
  %536 = trunc nuw i64 %535 to i32
  %537 = trunc i64 %531 to i32
  %538 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %534, i32 %537) #28
  %539 = extractvalue { i32, i32 } %538, 0
  %540 = extractvalue { i32, i32 } %538, 1
  %541 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %533, i32 %537, i32 0, i32 %540) #28
  %542 = extractvalue { i32, i32 } %541, 0
  %543 = extractvalue { i32, i32 } %541, 1
  %544 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %534, i32 %536, i32 %542, i32 0) #28
  %545 = extractvalue { i32, i32 } %544, 0
  %546 = extractvalue { i32, i32 } %544, 1
  %547 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %533, i32 %536, i32 %543, i32 %546) #28
  %548 = extractvalue { i32, i32 } %547, 0
  %549 = extractvalue { i32, i32 } %547, 1
  %550 = zext i32 %548 to i64
  %551 = zext i32 %549 to i64
  %552 = shl nuw i64 %551, 32
  %553 = or disjoint i64 %552, %550
  %554 = zext i32 %539 to i64
  %555 = zext i32 %545 to i64
  %556 = shl nuw i64 %555, 32
  %557 = or disjoint i64 %556, %554
  %558 = xor i64 %553, %557
  %559 = add i64 %529, %558
  %560 = xor i64 %334, 8850058120466833735
  %561 = xor i64 %333, -7669846995664752176
  %562 = lshr i64 %560, 32
  %563 = trunc nuw i64 %562 to i32
  %564 = trunc i64 %560 to i32
  %565 = lshr i64 %561, 32
  %566 = trunc nuw i64 %565 to i32
  %567 = trunc i64 %561 to i32
  %568 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %564, i32 %567) #28
  %569 = extractvalue { i32, i32 } %568, 0
  %570 = extractvalue { i32, i32 } %568, 1
  %571 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %563, i32 %567, i32 0, i32 %570) #28
  %572 = extractvalue { i32, i32 } %571, 0
  %573 = extractvalue { i32, i32 } %571, 1
  %574 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %564, i32 %566, i32 %572, i32 0) #28
  %575 = extractvalue { i32, i32 } %574, 0
  %576 = extractvalue { i32, i32 } %574, 1
  %577 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %563, i32 %566, i32 %573, i32 %576) #28
  %578 = extractvalue { i32, i32 } %577, 0
  %579 = extractvalue { i32, i32 } %577, 1
  %580 = zext i32 %578 to i64
  %581 = zext i32 %579 to i64
  %582 = shl nuw i64 %581, 32
  %583 = or disjoint i64 %582, %580
  %584 = zext i32 %569 to i64
  %585 = zext i32 %575 to i64
  %586 = shl nuw i64 %585, 32
  %587 = or disjoint i64 %586, %584
  %588 = xor i64 %583, %587
  %589 = add i64 %559, %588
  %590 = lshr i64 %589, 37
  %591 = xor i64 %590, %589
  %592 = mul i64 %591, 1609587929392839161
  %593 = lshr i64 %592, 32
  %594 = xor i64 %593, %592
  store i64 %467, ptr %0, align 8, !alias.scope !38
  %595 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %594, ptr %595, align 8, !alias.scope !38
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH3_128bits_withSecret(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #17 {
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
  store i64 %71, ptr %0, align 8, !alias.scope !41
  %72 = lshr i64 %66, 37
  %73 = xor i64 %72, %66
  %74 = mul i64 %73, 1609587929392839161
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  store i64 %76, ptr %60, align 8, !alias.scope !41
  br label %508

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
  store i64 %113, ptr %0, align 8, !alias.scope !44
  %114 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %115 = lshr i64 %108, 37
  %116 = xor i64 %115, %108
  %117 = mul i64 %116, 1609587929392839161
  %118 = lshr i64 %117, 32
  %119 = xor i64 %118, %117
  store i64 %119, ptr %114, align 8, !alias.scope !44
  br label %508

120:                                              ; preds = %77
  %121 = icmp eq i32 %2, 0
  br i1 %121, label %160, label %122

122:                                              ; preds = %120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %123 = load i8, ptr %1, align 1, !noalias !47
  %124 = lshr i32 %2, 1
  %125 = getelementptr inbounds nuw i8, ptr %1, i32 %124
  %126 = load i8, ptr %125, align 1, !noalias !47
  %127 = getelementptr i8, ptr %1, i32 %2
  %128 = getelementptr i8, ptr %127, i32 -1
  %129 = load i8, ptr %128, align 1, !noalias !47
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
  store i64 %153, ptr %0, align 8, !alias.scope !47
  %154 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %155 = lshr i64 %148, 37
  %156 = xor i64 %155, %148
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  store i64 %159, ptr %154, align 8, !alias.scope !47
  br label %508

160:                                              ; preds = %120
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !50
  br label %508

161:                                              ; preds = %5
  %162 = icmp ult i32 %2, 129
  br i1 %162, label %163, label %504

163:                                              ; preds = %161
  %164 = zext nneg i32 %2 to i64
  %165 = mul i64 %164, -7046029288634856825
  %166 = icmp samesign ugt i32 %2, 32
  br i1 %166, label %167, label %408

167:                                              ; preds = %163
  %168 = icmp samesign ugt i32 %2, 64
  br i1 %168, label %169, label %328

169:                                              ; preds = %167
  %170 = icmp samesign ugt i32 %2, 96
  br i1 %170, label %171, label %248

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
  %183 = trunc nuw i64 %182 to i32
  %184 = trunc i64 %178 to i32
  %185 = lshr i64 %181, 32
  %186 = trunc nuw i64 %185 to i32
  %187 = trunc i64 %181 to i32
  %188 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %184, i32 %187) #28
  %189 = extractvalue { i32, i32 } %188, 0
  %190 = extractvalue { i32, i32 } %188, 1
  %191 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %183, i32 %187, i32 0, i32 %190) #28
  %192 = extractvalue { i32, i32 } %191, 0
  %193 = extractvalue { i32, i32 } %191, 1
  %194 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %184, i32 %186, i32 %192, i32 0) #28
  %195 = extractvalue { i32, i32 } %194, 0
  %196 = extractvalue { i32, i32 } %194, 1
  %197 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %183, i32 %186, i32 %193, i32 %196) #28
  %198 = extractvalue { i32, i32 } %197, 0
  %199 = extractvalue { i32, i32 } %197, 1
  %200 = zext i32 %198 to i64
  %201 = zext i32 %199 to i64
  %202 = shl nuw i64 %201, 32
  %203 = or disjoint i64 %202, %200
  %204 = zext i32 %189 to i64
  %205 = zext i32 %195 to i64
  %206 = shl nuw i64 %205, 32
  %207 = or disjoint i64 %206, %204
  %208 = xor i64 %203, %207
  %209 = add i64 %208, %165
  %210 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %211 = getelementptr inbounds i8, ptr %210, i32 -64
  %212 = getelementptr inbounds nuw i8, ptr %3, i32 112
  %213 = load i64, ptr %211, align 1
  %214 = getelementptr inbounds i8, ptr %210, i32 -56
  %215 = load i64, ptr %214, align 1
  %216 = load i64, ptr %212, align 1
  %217 = xor i64 %216, %213
  %218 = getelementptr inbounds nuw i8, ptr %3, i32 120
  %219 = load i64, ptr %218, align 1
  %220 = xor i64 %219, %215
  %221 = lshr i64 %217, 32
  %222 = trunc nuw i64 %221 to i32
  %223 = trunc i64 %217 to i32
  %224 = lshr i64 %220, 32
  %225 = trunc nuw i64 %224 to i32
  %226 = trunc i64 %220 to i32
  %227 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %223, i32 %226) #28
  %228 = extractvalue { i32, i32 } %227, 0
  %229 = extractvalue { i32, i32 } %227, 1
  %230 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %222, i32 %226, i32 0, i32 %229) #28
  %231 = extractvalue { i32, i32 } %230, 0
  %232 = extractvalue { i32, i32 } %230, 1
  %233 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %223, i32 %225, i32 %231, i32 0) #28
  %234 = extractvalue { i32, i32 } %233, 0
  %235 = extractvalue { i32, i32 } %233, 1
  %236 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %222, i32 %225, i32 %232, i32 %235) #28
  %237 = extractvalue { i32, i32 } %236, 0
  %238 = extractvalue { i32, i32 } %236, 1
  %239 = zext i32 %237 to i64
  %240 = zext i32 %238 to i64
  %241 = shl nuw i64 %240, 32
  %242 = or disjoint i64 %241, %239
  %243 = zext i32 %228 to i64
  %244 = zext i32 %234 to i64
  %245 = shl nuw i64 %244, 32
  %246 = or disjoint i64 %245, %243
  %247 = xor i64 %242, %246
  br label %248

248:                                              ; preds = %171, %169
  %249 = phi i64 [ %247, %171 ], [ 0, %169 ]
  %250 = phi i64 [ %209, %171 ], [ %165, %169 ]
  %251 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %252 = getelementptr inbounds nuw i8, ptr %3, i32 64
  %253 = load i64, ptr %251, align 1
  %254 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %255 = load i64, ptr %254, align 1
  %256 = load i64, ptr %252, align 1
  %257 = xor i64 %256, %253
  %258 = getelementptr inbounds nuw i8, ptr %3, i32 72
  %259 = load i64, ptr %258, align 1
  %260 = xor i64 %259, %255
  %261 = lshr i64 %257, 32
  %262 = trunc nuw i64 %261 to i32
  %263 = trunc i64 %257 to i32
  %264 = lshr i64 %260, 32
  %265 = trunc nuw i64 %264 to i32
  %266 = trunc i64 %260 to i32
  %267 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %263, i32 %266) #28
  %268 = extractvalue { i32, i32 } %267, 0
  %269 = extractvalue { i32, i32 } %267, 1
  %270 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %262, i32 %266, i32 0, i32 %269) #28
  %271 = extractvalue { i32, i32 } %270, 0
  %272 = extractvalue { i32, i32 } %270, 1
  %273 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %263, i32 %265, i32 %271, i32 0) #28
  %274 = extractvalue { i32, i32 } %273, 0
  %275 = extractvalue { i32, i32 } %273, 1
  %276 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %262, i32 %265, i32 %272, i32 %275) #28
  %277 = extractvalue { i32, i32 } %276, 0
  %278 = extractvalue { i32, i32 } %276, 1
  %279 = zext i32 %277 to i64
  %280 = zext i32 %278 to i64
  %281 = shl nuw i64 %280, 32
  %282 = or disjoint i64 %281, %279
  %283 = zext i32 %268 to i64
  %284 = zext i32 %274 to i64
  %285 = shl nuw i64 %284, 32
  %286 = or disjoint i64 %285, %283
  %287 = xor i64 %282, %286
  %288 = add i64 %287, %250
  %289 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %290 = getelementptr inbounds i8, ptr %289, i32 -48
  %291 = getelementptr inbounds nuw i8, ptr %3, i32 80
  %292 = load i64, ptr %290, align 1
  %293 = getelementptr inbounds i8, ptr %289, i32 -40
  %294 = load i64, ptr %293, align 1
  %295 = load i64, ptr %291, align 1
  %296 = xor i64 %295, %292
  %297 = getelementptr inbounds nuw i8, ptr %3, i32 88
  %298 = load i64, ptr %297, align 1
  %299 = xor i64 %298, %294
  %300 = lshr i64 %296, 32
  %301 = trunc nuw i64 %300 to i32
  %302 = trunc i64 %296 to i32
  %303 = lshr i64 %299, 32
  %304 = trunc nuw i64 %303 to i32
  %305 = trunc i64 %299 to i32
  %306 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %302, i32 %305) #28
  %307 = extractvalue { i32, i32 } %306, 0
  %308 = extractvalue { i32, i32 } %306, 1
  %309 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %301, i32 %305, i32 0, i32 %308) #28
  %310 = extractvalue { i32, i32 } %309, 0
  %311 = extractvalue { i32, i32 } %309, 1
  %312 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %302, i32 %304, i32 %310, i32 0) #28
  %313 = extractvalue { i32, i32 } %312, 0
  %314 = extractvalue { i32, i32 } %312, 1
  %315 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %301, i32 %304, i32 %311, i32 %314) #28
  %316 = extractvalue { i32, i32 } %315, 0
  %317 = extractvalue { i32, i32 } %315, 1
  %318 = zext i32 %316 to i64
  %319 = zext i32 %317 to i64
  %320 = shl nuw i64 %319, 32
  %321 = or disjoint i64 %320, %318
  %322 = zext i32 %307 to i64
  %323 = zext i32 %313 to i64
  %324 = shl nuw i64 %323, 32
  %325 = or disjoint i64 %324, %322
  %326 = xor i64 %321, %325
  %327 = add i64 %326, %249
  br label %328

328:                                              ; preds = %248, %167
  %329 = phi i64 [ %327, %248 ], [ 0, %167 ]
  %330 = phi i64 [ %288, %248 ], [ %165, %167 ]
  %331 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %332 = getelementptr inbounds nuw i8, ptr %3, i32 32
  %333 = load i64, ptr %331, align 1
  %334 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %335 = load i64, ptr %334, align 1
  %336 = load i64, ptr %332, align 1
  %337 = xor i64 %336, %333
  %338 = getelementptr inbounds nuw i8, ptr %3, i32 40
  %339 = load i64, ptr %338, align 1
  %340 = xor i64 %339, %335
  %341 = lshr i64 %337, 32
  %342 = trunc nuw i64 %341 to i32
  %343 = trunc i64 %337 to i32
  %344 = lshr i64 %340, 32
  %345 = trunc nuw i64 %344 to i32
  %346 = trunc i64 %340 to i32
  %347 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %343, i32 %346) #28
  %348 = extractvalue { i32, i32 } %347, 0
  %349 = extractvalue { i32, i32 } %347, 1
  %350 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %342, i32 %346, i32 0, i32 %349) #28
  %351 = extractvalue { i32, i32 } %350, 0
  %352 = extractvalue { i32, i32 } %350, 1
  %353 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %343, i32 %345, i32 %351, i32 0) #28
  %354 = extractvalue { i32, i32 } %353, 0
  %355 = extractvalue { i32, i32 } %353, 1
  %356 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %342, i32 %345, i32 %352, i32 %355) #28
  %357 = extractvalue { i32, i32 } %356, 0
  %358 = extractvalue { i32, i32 } %356, 1
  %359 = zext i32 %357 to i64
  %360 = zext i32 %358 to i64
  %361 = shl nuw i64 %360, 32
  %362 = or disjoint i64 %361, %359
  %363 = zext i32 %348 to i64
  %364 = zext i32 %354 to i64
  %365 = shl nuw i64 %364, 32
  %366 = or disjoint i64 %365, %363
  %367 = xor i64 %362, %366
  %368 = add i64 %367, %330
  %369 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %370 = getelementptr inbounds i8, ptr %369, i32 -32
  %371 = getelementptr inbounds nuw i8, ptr %3, i32 48
  %372 = load i64, ptr %370, align 1
  %373 = getelementptr inbounds i8, ptr %369, i32 -24
  %374 = load i64, ptr %373, align 1
  %375 = load i64, ptr %371, align 1
  %376 = xor i64 %375, %372
  %377 = getelementptr inbounds nuw i8, ptr %3, i32 56
  %378 = load i64, ptr %377, align 1
  %379 = xor i64 %378, %374
  %380 = lshr i64 %376, 32
  %381 = trunc nuw i64 %380 to i32
  %382 = trunc i64 %376 to i32
  %383 = lshr i64 %379, 32
  %384 = trunc nuw i64 %383 to i32
  %385 = trunc i64 %379 to i32
  %386 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %382, i32 %385) #28
  %387 = extractvalue { i32, i32 } %386, 0
  %388 = extractvalue { i32, i32 } %386, 1
  %389 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %381, i32 %385, i32 0, i32 %388) #28
  %390 = extractvalue { i32, i32 } %389, 0
  %391 = extractvalue { i32, i32 } %389, 1
  %392 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %382, i32 %384, i32 %390, i32 0) #28
  %393 = extractvalue { i32, i32 } %392, 0
  %394 = extractvalue { i32, i32 } %392, 1
  %395 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %381, i32 %384, i32 %391, i32 %394) #28
  %396 = extractvalue { i32, i32 } %395, 0
  %397 = extractvalue { i32, i32 } %395, 1
  %398 = zext i32 %396 to i64
  %399 = zext i32 %397 to i64
  %400 = shl nuw i64 %399, 32
  %401 = or disjoint i64 %400, %398
  %402 = zext i32 %387 to i64
  %403 = zext i32 %393 to i64
  %404 = shl nuw i64 %403, 32
  %405 = or disjoint i64 %404, %402
  %406 = xor i64 %401, %405
  %407 = add i64 %406, %329
  br label %408

408:                                              ; preds = %163, %328
  %409 = phi i64 [ %407, %328 ], [ 0, %163 ]
  %410 = phi i64 [ %368, %328 ], [ %165, %163 ]
  %411 = load i64, ptr %1, align 1
  %412 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %413 = load i64, ptr %412, align 1
  %414 = load i64, ptr %3, align 1
  %415 = xor i64 %414, %411
  %416 = getelementptr inbounds nuw i8, ptr %3, i32 8
  %417 = load i64, ptr %416, align 1
  %418 = xor i64 %417, %413
  %419 = lshr i64 %415, 32
  %420 = trunc nuw i64 %419 to i32
  %421 = trunc i64 %415 to i32
  %422 = lshr i64 %418, 32
  %423 = trunc nuw i64 %422 to i32
  %424 = trunc i64 %418 to i32
  %425 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %421, i32 %424) #28
  %426 = extractvalue { i32, i32 } %425, 0
  %427 = extractvalue { i32, i32 } %425, 1
  %428 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %420, i32 %424, i32 0, i32 %427) #28
  %429 = extractvalue { i32, i32 } %428, 0
  %430 = extractvalue { i32, i32 } %428, 1
  %431 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %421, i32 %423, i32 %429, i32 0) #28
  %432 = extractvalue { i32, i32 } %431, 0
  %433 = extractvalue { i32, i32 } %431, 1
  %434 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %420, i32 %423, i32 %430, i32 %433) #28
  %435 = extractvalue { i32, i32 } %434, 0
  %436 = extractvalue { i32, i32 } %434, 1
  %437 = zext i32 %435 to i64
  %438 = zext i32 %436 to i64
  %439 = shl nuw i64 %438, 32
  %440 = or disjoint i64 %439, %437
  %441 = zext i32 %426 to i64
  %442 = zext i32 %432 to i64
  %443 = shl nuw i64 %442, 32
  %444 = or disjoint i64 %443, %441
  %445 = xor i64 %440, %444
  %446 = add i64 %445, %410
  %447 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %448 = getelementptr inbounds i8, ptr %447, i32 -16
  %449 = getelementptr inbounds nuw i8, ptr %3, i32 16
  %450 = load i64, ptr %448, align 1
  %451 = getelementptr inbounds i8, ptr %447, i32 -8
  %452 = load i64, ptr %451, align 1
  %453 = load i64, ptr %449, align 1
  %454 = xor i64 %453, %450
  %455 = getelementptr inbounds nuw i8, ptr %3, i32 24
  %456 = load i64, ptr %455, align 1
  %457 = xor i64 %456, %452
  %458 = lshr i64 %454, 32
  %459 = trunc nuw i64 %458 to i32
  %460 = trunc i64 %454 to i32
  %461 = lshr i64 %457, 32
  %462 = trunc nuw i64 %461 to i32
  %463 = trunc i64 %457 to i32
  %464 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %460, i32 %463) #28
  %465 = extractvalue { i32, i32 } %464, 0
  %466 = extractvalue { i32, i32 } %464, 1
  %467 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %459, i32 %463, i32 0, i32 %466) #28
  %468 = extractvalue { i32, i32 } %467, 0
  %469 = extractvalue { i32, i32 } %467, 1
  %470 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %460, i32 %462, i32 %468, i32 0) #28
  %471 = extractvalue { i32, i32 } %470, 0
  %472 = extractvalue { i32, i32 } %470, 1
  %473 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %459, i32 %462, i32 %469, i32 %472) #28
  %474 = extractvalue { i32, i32 } %473, 0
  %475 = extractvalue { i32, i32 } %473, 1
  %476 = zext i32 %474 to i64
  %477 = zext i32 %475 to i64
  %478 = shl nuw i64 %477, 32
  %479 = or disjoint i64 %478, %476
  %480 = zext i32 %465 to i64
  %481 = zext i32 %471 to i64
  %482 = shl nuw i64 %481, 32
  %483 = or disjoint i64 %482, %480
  %484 = xor i64 %479, %483
  %485 = add i64 %484, %409
  %486 = add i64 %485, %446
  %487 = mul i64 %446, -7046029288634856825
  %488 = mul i64 %485, -8796714831421723037
  %489 = mul i64 %164, -4417276706812531889
  %490 = add i64 %487, %489
  %491 = add i64 %490, %488
  %492 = lshr i64 %486, 37
  %493 = xor i64 %492, %486
  %494 = mul i64 %493, 1609587929392839161
  %495 = lshr i64 %494, 32
  %496 = xor i64 %495, %494
  store i64 %496, ptr %0, align 8, !alias.scope !53
  %497 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %498 = lshr i64 %491, 37
  %499 = xor i64 %498, %491
  %500 = mul i64 %499, 1609587929392839161
  %501 = lshr i64 %500, 32
  %502 = xor i64 %501, %500
  %503 = sub i64 0, %502
  store i64 %503, ptr %497, align 8, !alias.scope !53
  br label %508

504:                                              ; preds = %161
  %505 = icmp ult i32 %2, 241
  br i1 %505, label %506, label %507

506:                                              ; preds = %504
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef 0)
  br label %508

507:                                              ; preds = %504
  tail call fastcc void @XXH3_hashLong_128b_withSecret(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %508

508:                                              ; preds = %160, %122, %79, %9, %507, %506, %408
  ret void
}

; Function Attrs: noinline nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal fastcc void @XXH3_hashLong_128b_withSecret(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i32 noundef range(i32 241, 0) %2, ptr noundef readonly %3, i32 noundef %4) unnamed_addr #19 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
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
  %23 = load i64, ptr %14, align 1, !noalias !56
  %24 = load i64, ptr %16, align 1, !noalias !56
  %25 = load i64, ptr %17, align 1, !noalias !56
  %26 = load i64, ptr %18, align 1, !noalias !56
  %27 = load i64, ptr %19, align 1, !noalias !56
  %28 = load i64, ptr %20, align 1, !noalias !56
  %29 = load i64, ptr %21, align 1, !noalias !56
  %30 = load i64, ptr %22, align 1, !noalias !56
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
  %40 = load i64, ptr %14, align 1, !noalias !56
  %41 = load i64, ptr %33, align 1, !noalias !56
  %42 = load i64, ptr %34, align 1, !noalias !56
  %43 = load i64, ptr %35, align 1, !noalias !56
  %44 = load i64, ptr %36, align 1, !noalias !56
  %45 = load i64, ptr %37, align 1, !noalias !56
  %46 = load i64, ptr %38, align 1, !noalias !56
  %47 = load i64, ptr %39, align 1, !noalias !56
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
  %74 = load i64, ptr %71, align 1, !noalias !56
  %75 = getelementptr inbounds nuw i8, ptr %71, i32 8
  %76 = load i64, ptr %75, align 1, !noalias !56
  %77 = load i64, ptr %73, align 1, !noalias !56
  %78 = getelementptr inbounds nuw i8, ptr %73, i32 8
  %79 = load i64, ptr %78, align 1, !noalias !56
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
  %93 = load i64, ptr %92, align 1, !noalias !56
  %94 = getelementptr inbounds nuw i8, ptr %71, i32 24
  %95 = load i64, ptr %94, align 1, !noalias !56
  %96 = getelementptr inbounds nuw i8, ptr %73, i32 16
  %97 = load i64, ptr %96, align 1, !noalias !56
  %98 = getelementptr inbounds nuw i8, ptr %73, i32 24
  %99 = load i64, ptr %98, align 1, !noalias !56
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
  %113 = load i64, ptr %112, align 1, !noalias !56
  %114 = getelementptr inbounds nuw i8, ptr %71, i32 40
  %115 = load i64, ptr %114, align 1, !noalias !56
  %116 = getelementptr inbounds nuw i8, ptr %73, i32 32
  %117 = load i64, ptr %116, align 1, !noalias !56
  %118 = getelementptr inbounds nuw i8, ptr %73, i32 40
  %119 = load i64, ptr %118, align 1, !noalias !56
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
  %133 = load i64, ptr %132, align 1, !noalias !56
  %134 = getelementptr inbounds nuw i8, ptr %71, i32 56
  %135 = load i64, ptr %134, align 1, !noalias !56
  %136 = getelementptr inbounds nuw i8, ptr %73, i32 48
  %137 = load i64, ptr %136, align 1, !noalias !56
  %138 = getelementptr inbounds nuw i8, ptr %73, i32 56
  %139 = load i64, ptr %138, align 1, !noalias !56
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
  %261 = load i64, ptr %258, align 1, !noalias !56
  %262 = getelementptr inbounds nuw i8, ptr %258, i32 8
  %263 = load i64, ptr %262, align 1, !noalias !56
  %264 = load i64, ptr %260, align 1, !noalias !56
  %265 = getelementptr inbounds nuw i8, ptr %260, i32 8
  %266 = load i64, ptr %265, align 1, !noalias !56
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
  %280 = load i64, ptr %279, align 1, !noalias !56
  %281 = getelementptr inbounds nuw i8, ptr %258, i32 24
  %282 = load i64, ptr %281, align 1, !noalias !56
  %283 = getelementptr inbounds nuw i8, ptr %260, i32 16
  %284 = load i64, ptr %283, align 1, !noalias !56
  %285 = getelementptr inbounds nuw i8, ptr %260, i32 24
  %286 = load i64, ptr %285, align 1, !noalias !56
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
  %300 = load i64, ptr %299, align 1, !noalias !56
  %301 = getelementptr inbounds nuw i8, ptr %258, i32 40
  %302 = load i64, ptr %301, align 1, !noalias !56
  %303 = getelementptr inbounds nuw i8, ptr %260, i32 32
  %304 = load i64, ptr %303, align 1, !noalias !56
  %305 = getelementptr inbounds nuw i8, ptr %260, i32 40
  %306 = load i64, ptr %305, align 1, !noalias !56
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
  %320 = load i64, ptr %319, align 1, !noalias !56
  %321 = getelementptr inbounds nuw i8, ptr %258, i32 56
  %322 = load i64, ptr %321, align 1, !noalias !56
  %323 = getelementptr inbounds nuw i8, ptr %260, i32 48
  %324 = load i64, ptr %323, align 1, !noalias !56
  %325 = getelementptr inbounds nuw i8, ptr %260, i32 56
  %326 = load i64, ptr %325, align 1, !noalias !56
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
  %357 = load i64, ptr %354, align 1, !noalias !56
  %358 = getelementptr inbounds i8, ptr %353, i32 -56
  %359 = load i64, ptr %358, align 1, !noalias !56
  %360 = load i64, ptr %356, align 1, !noalias !56
  %361 = getelementptr inbounds i8, ptr %355, i32 -63
  %362 = load i64, ptr %361, align 1, !noalias !56
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
  %376 = load i64, ptr %375, align 1, !noalias !56
  %377 = getelementptr inbounds i8, ptr %353, i32 -40
  %378 = load i64, ptr %377, align 1, !noalias !56
  %379 = getelementptr inbounds i8, ptr %355, i32 -55
  %380 = load i64, ptr %379, align 1, !noalias !56
  %381 = getelementptr inbounds i8, ptr %355, i32 -47
  %382 = load i64, ptr %381, align 1, !noalias !56
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
  %396 = load i64, ptr %395, align 1, !noalias !56
  %397 = getelementptr inbounds i8, ptr %353, i32 -24
  %398 = load i64, ptr %397, align 1, !noalias !56
  %399 = getelementptr inbounds i8, ptr %355, i32 -39
  %400 = load i64, ptr %399, align 1, !noalias !56
  %401 = getelementptr inbounds i8, ptr %355, i32 -31
  %402 = load i64, ptr %401, align 1, !noalias !56
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
  %416 = load i64, ptr %415, align 1, !noalias !56
  %417 = getelementptr inbounds i8, ptr %353, i32 -8
  %418 = load i64, ptr %417, align 1, !noalias !56
  %419 = getelementptr inbounds i8, ptr %355, i32 -23
  %420 = load i64, ptr %419, align 1, !noalias !56
  %421 = getelementptr inbounds i8, ptr %355, i32 -15
  %422 = load i64, ptr %421, align 1, !noalias !56
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
  %447 = load i64, ptr %444, align 1, !noalias !56
  %448 = xor i64 %447, %443
  %449 = getelementptr inbounds nuw i8, ptr %3, i32 19
  %450 = load i64, ptr %449, align 1, !noalias !56
  %451 = xor i64 %450, %442
  %452 = lshr i64 %448, 32
  %453 = trunc nuw i64 %452 to i32
  %454 = trunc i64 %448 to i32
  %455 = lshr i64 %451, 32
  %456 = trunc nuw i64 %455 to i32
  %457 = trunc i64 %451 to i32
  %458 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %454, i32 %457) #28
  %459 = extractvalue { i32, i32 } %458, 0
  %460 = extractvalue { i32, i32 } %458, 1
  %461 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %453, i32 %457, i32 0, i32 %460) #28
  %462 = extractvalue { i32, i32 } %461, 0
  %463 = extractvalue { i32, i32 } %461, 1
  %464 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %454, i32 %456, i32 %462, i32 0) #28
  %465 = extractvalue { i32, i32 } %464, 0
  %466 = extractvalue { i32, i32 } %464, 1
  %467 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %453, i32 %456, i32 %463, i32 %466) #28
  %468 = extractvalue { i32, i32 } %467, 0
  %469 = extractvalue { i32, i32 } %467, 1
  %470 = zext i32 %468 to i64
  %471 = zext i32 %469 to i64
  %472 = shl nuw i64 %471, 32
  %473 = or disjoint i64 %472, %470
  %474 = zext i32 %459 to i64
  %475 = zext i32 %465 to i64
  %476 = shl nuw i64 %475, 32
  %477 = or disjoint i64 %476, %474
  %478 = xor i64 %473, %477
  %479 = add i64 %478, %446
  %480 = getelementptr inbounds nuw i8, ptr %3, i32 27
  %481 = load i64, ptr %480, align 1, !noalias !56
  %482 = xor i64 %481, %441
  %483 = getelementptr inbounds nuw i8, ptr %3, i32 35
  %484 = load i64, ptr %483, align 1, !noalias !56
  %485 = xor i64 %484, %440
  %486 = lshr i64 %482, 32
  %487 = trunc nuw i64 %486 to i32
  %488 = trunc i64 %482 to i32
  %489 = lshr i64 %485, 32
  %490 = trunc nuw i64 %489 to i32
  %491 = trunc i64 %485 to i32
  %492 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %488, i32 %491) #28
  %493 = extractvalue { i32, i32 } %492, 0
  %494 = extractvalue { i32, i32 } %492, 1
  %495 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %487, i32 %491, i32 0, i32 %494) #28
  %496 = extractvalue { i32, i32 } %495, 0
  %497 = extractvalue { i32, i32 } %495, 1
  %498 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %488, i32 %490, i32 %496, i32 0) #28
  %499 = extractvalue { i32, i32 } %498, 0
  %500 = extractvalue { i32, i32 } %498, 1
  %501 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %487, i32 %490, i32 %497, i32 %500) #28
  %502 = extractvalue { i32, i32 } %501, 0
  %503 = extractvalue { i32, i32 } %501, 1
  %504 = zext i32 %502 to i64
  %505 = zext i32 %503 to i64
  %506 = shl nuw i64 %505, 32
  %507 = or disjoint i64 %506, %504
  %508 = zext i32 %493 to i64
  %509 = zext i32 %499 to i64
  %510 = shl nuw i64 %509, 32
  %511 = or disjoint i64 %510, %508
  %512 = xor i64 %507, %511
  %513 = add i64 %479, %512
  %514 = getelementptr inbounds nuw i8, ptr %3, i32 43
  %515 = load i64, ptr %514, align 1, !noalias !56
  %516 = xor i64 %515, %439
  %517 = getelementptr inbounds nuw i8, ptr %3, i32 51
  %518 = load i64, ptr %517, align 1, !noalias !56
  %519 = xor i64 %518, %438
  %520 = lshr i64 %516, 32
  %521 = trunc nuw i64 %520 to i32
  %522 = trunc i64 %516 to i32
  %523 = lshr i64 %519, 32
  %524 = trunc nuw i64 %523 to i32
  %525 = trunc i64 %519 to i32
  %526 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %522, i32 %525) #28
  %527 = extractvalue { i32, i32 } %526, 0
  %528 = extractvalue { i32, i32 } %526, 1
  %529 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %521, i32 %525, i32 0, i32 %528) #28
  %530 = extractvalue { i32, i32 } %529, 0
  %531 = extractvalue { i32, i32 } %529, 1
  %532 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %522, i32 %524, i32 %530, i32 0) #28
  %533 = extractvalue { i32, i32 } %532, 0
  %534 = extractvalue { i32, i32 } %532, 1
  %535 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %521, i32 %524, i32 %531, i32 %534) #28
  %536 = extractvalue { i32, i32 } %535, 0
  %537 = extractvalue { i32, i32 } %535, 1
  %538 = zext i32 %536 to i64
  %539 = zext i32 %537 to i64
  %540 = shl nuw i64 %539, 32
  %541 = or disjoint i64 %540, %538
  %542 = zext i32 %527 to i64
  %543 = zext i32 %533 to i64
  %544 = shl nuw i64 %543, 32
  %545 = or disjoint i64 %544, %542
  %546 = xor i64 %541, %545
  %547 = add i64 %513, %546
  %548 = getelementptr inbounds nuw i8, ptr %3, i32 59
  %549 = load i64, ptr %548, align 1, !noalias !56
  %550 = xor i64 %549, %437
  %551 = getelementptr inbounds nuw i8, ptr %3, i32 67
  %552 = load i64, ptr %551, align 1, !noalias !56
  %553 = xor i64 %552, %436
  %554 = lshr i64 %550, 32
  %555 = trunc nuw i64 %554 to i32
  %556 = trunc i64 %550 to i32
  %557 = lshr i64 %553, 32
  %558 = trunc nuw i64 %557 to i32
  %559 = trunc i64 %553 to i32
  %560 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %556, i32 %559) #28
  %561 = extractvalue { i32, i32 } %560, 0
  %562 = extractvalue { i32, i32 } %560, 1
  %563 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %555, i32 %559, i32 0, i32 %562) #28
  %564 = extractvalue { i32, i32 } %563, 0
  %565 = extractvalue { i32, i32 } %563, 1
  %566 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %556, i32 %558, i32 %564, i32 0) #28
  %567 = extractvalue { i32, i32 } %566, 0
  %568 = extractvalue { i32, i32 } %566, 1
  %569 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %555, i32 %558, i32 %565, i32 %568) #28
  %570 = extractvalue { i32, i32 } %569, 0
  %571 = extractvalue { i32, i32 } %569, 1
  %572 = zext i32 %570 to i64
  %573 = zext i32 %571 to i64
  %574 = shl nuw i64 %573, 32
  %575 = or disjoint i64 %574, %572
  %576 = zext i32 %561 to i64
  %577 = zext i32 %567 to i64
  %578 = shl nuw i64 %577, 32
  %579 = or disjoint i64 %578, %576
  %580 = xor i64 %575, %579
  %581 = add i64 %547, %580
  %582 = lshr i64 %581, 37
  %583 = xor i64 %582, %581
  %584 = mul i64 %583, 1609587929392839161
  %585 = lshr i64 %584, 32
  %586 = xor i64 %585, %584
  %587 = getelementptr inbounds nuw i8, ptr %3, i32 %4
  %588 = getelementptr inbounds i8, ptr %587, i32 -75
  %589 = mul i64 %445, -4417276706812531889
  %590 = xor i64 %589, -1
  %591 = load i64, ptr %588, align 1, !noalias !56
  %592 = xor i64 %591, %443
  %593 = getelementptr inbounds i8, ptr %587, i32 -67
  %594 = load i64, ptr %593, align 1, !noalias !56
  %595 = xor i64 %594, %442
  %596 = lshr i64 %592, 32
  %597 = trunc nuw i64 %596 to i32
  %598 = trunc i64 %592 to i32
  %599 = lshr i64 %595, 32
  %600 = trunc nuw i64 %599 to i32
  %601 = trunc i64 %595 to i32
  %602 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %598, i32 %601) #28
  %603 = extractvalue { i32, i32 } %602, 0
  %604 = extractvalue { i32, i32 } %602, 1
  %605 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %597, i32 %601, i32 0, i32 %604) #28
  %606 = extractvalue { i32, i32 } %605, 0
  %607 = extractvalue { i32, i32 } %605, 1
  %608 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %598, i32 %600, i32 %606, i32 0) #28
  %609 = extractvalue { i32, i32 } %608, 0
  %610 = extractvalue { i32, i32 } %608, 1
  %611 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %597, i32 %600, i32 %607, i32 %610) #28
  %612 = extractvalue { i32, i32 } %611, 0
  %613 = extractvalue { i32, i32 } %611, 1
  %614 = zext i32 %612 to i64
  %615 = zext i32 %613 to i64
  %616 = shl nuw i64 %615, 32
  %617 = or disjoint i64 %616, %614
  %618 = zext i32 %603 to i64
  %619 = zext i32 %609 to i64
  %620 = shl nuw i64 %619, 32
  %621 = or disjoint i64 %620, %618
  %622 = xor i64 %617, %621
  %623 = add i64 %622, %590
  %624 = getelementptr inbounds i8, ptr %587, i32 -59
  %625 = load i64, ptr %624, align 1, !noalias !56
  %626 = xor i64 %625, %441
  %627 = getelementptr inbounds i8, ptr %587, i32 -51
  %628 = load i64, ptr %627, align 1, !noalias !56
  %629 = xor i64 %628, %440
  %630 = lshr i64 %626, 32
  %631 = trunc nuw i64 %630 to i32
  %632 = trunc i64 %626 to i32
  %633 = lshr i64 %629, 32
  %634 = trunc nuw i64 %633 to i32
  %635 = trunc i64 %629 to i32
  %636 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %632, i32 %635) #28
  %637 = extractvalue { i32, i32 } %636, 0
  %638 = extractvalue { i32, i32 } %636, 1
  %639 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %631, i32 %635, i32 0, i32 %638) #28
  %640 = extractvalue { i32, i32 } %639, 0
  %641 = extractvalue { i32, i32 } %639, 1
  %642 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %632, i32 %634, i32 %640, i32 0) #28
  %643 = extractvalue { i32, i32 } %642, 0
  %644 = extractvalue { i32, i32 } %642, 1
  %645 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %631, i32 %634, i32 %641, i32 %644) #28
  %646 = extractvalue { i32, i32 } %645, 0
  %647 = extractvalue { i32, i32 } %645, 1
  %648 = zext i32 %646 to i64
  %649 = zext i32 %647 to i64
  %650 = shl nuw i64 %649, 32
  %651 = or disjoint i64 %650, %648
  %652 = zext i32 %637 to i64
  %653 = zext i32 %643 to i64
  %654 = shl nuw i64 %653, 32
  %655 = or disjoint i64 %654, %652
  %656 = xor i64 %651, %655
  %657 = add i64 %623, %656
  %658 = getelementptr inbounds i8, ptr %587, i32 -43
  %659 = load i64, ptr %658, align 1, !noalias !56
  %660 = xor i64 %659, %439
  %661 = getelementptr inbounds i8, ptr %587, i32 -35
  %662 = load i64, ptr %661, align 1, !noalias !56
  %663 = xor i64 %662, %438
  %664 = lshr i64 %660, 32
  %665 = trunc nuw i64 %664 to i32
  %666 = trunc i64 %660 to i32
  %667 = lshr i64 %663, 32
  %668 = trunc nuw i64 %667 to i32
  %669 = trunc i64 %663 to i32
  %670 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %666, i32 %669) #28
  %671 = extractvalue { i32, i32 } %670, 0
  %672 = extractvalue { i32, i32 } %670, 1
  %673 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %665, i32 %669, i32 0, i32 %672) #28
  %674 = extractvalue { i32, i32 } %673, 0
  %675 = extractvalue { i32, i32 } %673, 1
  %676 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %666, i32 %668, i32 %674, i32 0) #28
  %677 = extractvalue { i32, i32 } %676, 0
  %678 = extractvalue { i32, i32 } %676, 1
  %679 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %665, i32 %668, i32 %675, i32 %678) #28
  %680 = extractvalue { i32, i32 } %679, 0
  %681 = extractvalue { i32, i32 } %679, 1
  %682 = zext i32 %680 to i64
  %683 = zext i32 %681 to i64
  %684 = shl nuw i64 %683, 32
  %685 = or disjoint i64 %684, %682
  %686 = zext i32 %671 to i64
  %687 = zext i32 %677 to i64
  %688 = shl nuw i64 %687, 32
  %689 = or disjoint i64 %688, %686
  %690 = xor i64 %685, %689
  %691 = add i64 %657, %690
  %692 = getelementptr inbounds i8, ptr %587, i32 -27
  %693 = load i64, ptr %692, align 1, !noalias !56
  %694 = xor i64 %693, %437
  %695 = getelementptr inbounds i8, ptr %587, i32 -19
  %696 = load i64, ptr %695, align 1, !noalias !56
  %697 = xor i64 %696, %436
  %698 = lshr i64 %694, 32
  %699 = trunc nuw i64 %698 to i32
  %700 = trunc i64 %694 to i32
  %701 = lshr i64 %697, 32
  %702 = trunc nuw i64 %701 to i32
  %703 = trunc i64 %697 to i32
  %704 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %700, i32 %703) #28
  %705 = extractvalue { i32, i32 } %704, 0
  %706 = extractvalue { i32, i32 } %704, 1
  %707 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %699, i32 %703, i32 0, i32 %706) #28
  %708 = extractvalue { i32, i32 } %707, 0
  %709 = extractvalue { i32, i32 } %707, 1
  %710 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %700, i32 %702, i32 %708, i32 0) #28
  %711 = extractvalue { i32, i32 } %710, 0
  %712 = extractvalue { i32, i32 } %710, 1
  %713 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %699, i32 %702, i32 %709, i32 %712) #28
  %714 = extractvalue { i32, i32 } %713, 0
  %715 = extractvalue { i32, i32 } %713, 1
  %716 = zext i32 %714 to i64
  %717 = zext i32 %715 to i64
  %718 = shl nuw i64 %717, 32
  %719 = or disjoint i64 %718, %716
  %720 = zext i32 %705 to i64
  %721 = zext i32 %711 to i64
  %722 = shl nuw i64 %721, 32
  %723 = or disjoint i64 %722, %720
  %724 = xor i64 %719, %723
  %725 = add i64 %691, %724
  %726 = lshr i64 %725, 37
  %727 = xor i64 %726, %725
  %728 = mul i64 %727, 1609587929392839161
  %729 = lshr i64 %728, 32
  %730 = xor i64 %729, %728
  store i64 %586, ptr %0, align 8, !alias.scope !56
  %731 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %730, ptr %731, align 8, !alias.scope !56
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH3_128bits_withSeed(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #17 {
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
  store i64 %69, ptr %0, align 8, !alias.scope !59
  %70 = lshr i64 %64, 37
  %71 = xor i64 %70, %64
  %72 = mul i64 %71, 1609587929392839161
  %73 = lshr i64 %72, 32
  %74 = xor i64 %73, %72
  store i64 %74, ptr %58, align 8, !alias.scope !59
  br label %490

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
  store i64 %110, ptr %0, align 8, !alias.scope !62
  %111 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %112 = lshr i64 %105, 37
  %113 = xor i64 %112, %105
  %114 = mul i64 %113, 1609587929392839161
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  store i64 %116, ptr %111, align 8, !alias.scope !62
  br label %490

117:                                              ; preds = %75
  %118 = icmp eq i32 %2, 0
  br i1 %118, label %156, label %119

119:                                              ; preds = %117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %120 = load i8, ptr %1, align 1, !noalias !65
  %121 = lshr i32 %2, 1
  %122 = getelementptr inbounds nuw i8, ptr %1, i32 %121
  %123 = load i8, ptr %122, align 1, !noalias !65
  %124 = getelementptr i8, ptr %1, i32 %2
  %125 = getelementptr i8, ptr %124, i32 -1
  %126 = load i8, ptr %125, align 1, !noalias !65
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
  store i64 %149, ptr %0, align 8, !alias.scope !65
  %150 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %151 = lshr i64 %144, 37
  %152 = xor i64 %151, %144
  %153 = mul i64 %152, 1609587929392839161
  %154 = lshr i64 %153, 32
  %155 = xor i64 %154, %153
  store i64 %155, ptr %150, align 8, !alias.scope !65
  br label %490

156:                                              ; preds = %117
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !68
  br label %490

157:                                              ; preds = %4
  %158 = icmp ult i32 %2, 129
  br i1 %158, label %159, label %486

159:                                              ; preds = %157
  %160 = zext nneg i32 %2 to i64
  %161 = mul i64 %160, -7046029288634856825
  %162 = icmp samesign ugt i32 %2, 32
  br i1 %162, label %163, label %392

163:                                              ; preds = %159
  %164 = icmp samesign ugt i32 %2, 64
  br i1 %164, label %165, label %316

165:                                              ; preds = %163
  %166 = icmp samesign ugt i32 %2, 96
  br i1 %166, label %167, label %240

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
  %177 = trunc nuw i64 %176 to i32
  %178 = trunc i64 %173 to i32
  %179 = lshr i64 %175, 32
  %180 = trunc nuw i64 %179 to i32
  %181 = trunc i64 %175 to i32
  %182 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %178, i32 %181) #28
  %183 = extractvalue { i32, i32 } %182, 0
  %184 = extractvalue { i32, i32 } %182, 1
  %185 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %177, i32 %181, i32 0, i32 %184) #28
  %186 = extractvalue { i32, i32 } %185, 0
  %187 = extractvalue { i32, i32 } %185, 1
  %188 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %178, i32 %180, i32 %186, i32 0) #28
  %189 = extractvalue { i32, i32 } %188, 0
  %190 = extractvalue { i32, i32 } %188, 1
  %191 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %177, i32 %180, i32 %187, i32 %190) #28
  %192 = extractvalue { i32, i32 } %191, 0
  %193 = extractvalue { i32, i32 } %191, 1
  %194 = zext i32 %192 to i64
  %195 = zext i32 %193 to i64
  %196 = shl nuw i64 %195, 32
  %197 = or disjoint i64 %196, %194
  %198 = zext i32 %183 to i64
  %199 = zext i32 %189 to i64
  %200 = shl nuw i64 %199, 32
  %201 = or disjoint i64 %200, %198
  %202 = xor i64 %197, %201
  %203 = add i64 %202, %161
  %204 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %205 = getelementptr inbounds i8, ptr %204, i32 -64
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds i8, ptr %204, i32 -56
  %208 = load i64, ptr %207, align 1
  %209 = add i64 %3, 3556072174620004746
  %210 = xor i64 %206, %209
  %211 = sub i64 7238261902898274248, %3
  %212 = xor i64 %208, %211
  %213 = lshr i64 %210, 32
  %214 = trunc nuw i64 %213 to i32
  %215 = trunc i64 %210 to i32
  %216 = lshr i64 %212, 32
  %217 = trunc nuw i64 %216 to i32
  %218 = trunc i64 %212 to i32
  %219 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %215, i32 %218) #28
  %220 = extractvalue { i32, i32 } %219, 0
  %221 = extractvalue { i32, i32 } %219, 1
  %222 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %214, i32 %218, i32 0, i32 %221) #28
  %223 = extractvalue { i32, i32 } %222, 0
  %224 = extractvalue { i32, i32 } %222, 1
  %225 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %215, i32 %217, i32 %223, i32 0) #28
  %226 = extractvalue { i32, i32 } %225, 0
  %227 = extractvalue { i32, i32 } %225, 1
  %228 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %214, i32 %217, i32 %224, i32 %227) #28
  %229 = extractvalue { i32, i32 } %228, 0
  %230 = extractvalue { i32, i32 } %228, 1
  %231 = zext i32 %229 to i64
  %232 = zext i32 %230 to i64
  %233 = shl nuw i64 %232, 32
  %234 = or disjoint i64 %233, %231
  %235 = zext i32 %220 to i64
  %236 = zext i32 %226 to i64
  %237 = shl nuw i64 %236, 32
  %238 = or disjoint i64 %237, %235
  %239 = xor i64 %234, %238
  br label %240

240:                                              ; preds = %167, %165
  %241 = phi i64 [ %239, %167 ], [ 0, %165 ]
  %242 = phi i64 [ %203, %167 ], [ %161, %165 ]
  %243 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %244 = load i64, ptr %243, align 1
  %245 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %246 = load i64, ptr %245, align 1
  %247 = add i64 %3, -3818837453329782724
  %248 = xor i64 %244, %247
  %249 = sub i64 -6688317018830679928, %3
  %250 = xor i64 %246, %249
  %251 = lshr i64 %248, 32
  %252 = trunc nuw i64 %251 to i32
  %253 = trunc i64 %248 to i32
  %254 = lshr i64 %250, 32
  %255 = trunc nuw i64 %254 to i32
  %256 = trunc i64 %250 to i32
  %257 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %253, i32 %256) #28
  %258 = extractvalue { i32, i32 } %257, 0
  %259 = extractvalue { i32, i32 } %257, 1
  %260 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %252, i32 %256, i32 0, i32 %259) #28
  %261 = extractvalue { i32, i32 } %260, 0
  %262 = extractvalue { i32, i32 } %260, 1
  %263 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %253, i32 %255, i32 %261, i32 0) #28
  %264 = extractvalue { i32, i32 } %263, 0
  %265 = extractvalue { i32, i32 } %263, 1
  %266 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %252, i32 %255, i32 %262, i32 %265) #28
  %267 = extractvalue { i32, i32 } %266, 0
  %268 = extractvalue { i32, i32 } %266, 1
  %269 = zext i32 %267 to i64
  %270 = zext i32 %268 to i64
  %271 = shl nuw i64 %270, 32
  %272 = or disjoint i64 %271, %269
  %273 = zext i32 %258 to i64
  %274 = zext i32 %264 to i64
  %275 = shl nuw i64 %274, 32
  %276 = or disjoint i64 %275, %273
  %277 = xor i64 %272, %276
  %278 = add i64 %277, %242
  %279 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %280 = getelementptr inbounds i8, ptr %279, i32 -48
  %281 = load i64, ptr %280, align 1
  %282 = getelementptr inbounds i8, ptr %279, i32 -40
  %283 = load i64, ptr %282, align 1
  %284 = add i64 %3, 5690594596133299313
  %285 = xor i64 %281, %284
  %286 = sub i64 -2833645246901970632, %3
  %287 = xor i64 %283, %286
  %288 = lshr i64 %285, 32
  %289 = trunc nuw i64 %288 to i32
  %290 = trunc i64 %285 to i32
  %291 = lshr i64 %287, 32
  %292 = trunc nuw i64 %291 to i32
  %293 = trunc i64 %287 to i32
  %294 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %290, i32 %293) #28
  %295 = extractvalue { i32, i32 } %294, 0
  %296 = extractvalue { i32, i32 } %294, 1
  %297 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %289, i32 %293, i32 0, i32 %296) #28
  %298 = extractvalue { i32, i32 } %297, 0
  %299 = extractvalue { i32, i32 } %297, 1
  %300 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %290, i32 %292, i32 %298, i32 0) #28
  %301 = extractvalue { i32, i32 } %300, 0
  %302 = extractvalue { i32, i32 } %300, 1
  %303 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %289, i32 %292, i32 %299, i32 %302) #28
  %304 = extractvalue { i32, i32 } %303, 0
  %305 = extractvalue { i32, i32 } %303, 1
  %306 = zext i32 %304 to i64
  %307 = zext i32 %305 to i64
  %308 = shl nuw i64 %307, 32
  %309 = or disjoint i64 %308, %306
  %310 = zext i32 %295 to i64
  %311 = zext i32 %301 to i64
  %312 = shl nuw i64 %311, 32
  %313 = or disjoint i64 %312, %310
  %314 = xor i64 %309, %313
  %315 = add i64 %314, %241
  br label %316

316:                                              ; preds = %240, %163
  %317 = phi i64 [ %315, %240 ], [ 0, %163 ]
  %318 = phi i64 [ %278, %240 ], [ %161, %163 ]
  %319 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %320 = load i64, ptr %319, align 1
  %321 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %322 = load i64, ptr %321, align 1
  %323 = add i64 %3, 8711581037947681227
  %324 = xor i64 %320, %323
  %325 = sub i64 2410270004345854594, %3
  %326 = xor i64 %322, %325
  %327 = lshr i64 %324, 32
  %328 = trunc nuw i64 %327 to i32
  %329 = trunc i64 %324 to i32
  %330 = lshr i64 %326, 32
  %331 = trunc nuw i64 %330 to i32
  %332 = trunc i64 %326 to i32
  %333 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %329, i32 %332) #28
  %334 = extractvalue { i32, i32 } %333, 0
  %335 = extractvalue { i32, i32 } %333, 1
  %336 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %328, i32 %332, i32 0, i32 %335) #28
  %337 = extractvalue { i32, i32 } %336, 0
  %338 = extractvalue { i32, i32 } %336, 1
  %339 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %329, i32 %331, i32 %337, i32 0) #28
  %340 = extractvalue { i32, i32 } %339, 0
  %341 = extractvalue { i32, i32 } %339, 1
  %342 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %328, i32 %331, i32 %338, i32 %341) #28
  %343 = extractvalue { i32, i32 } %342, 0
  %344 = extractvalue { i32, i32 } %342, 1
  %345 = zext i32 %343 to i64
  %346 = zext i32 %344 to i64
  %347 = shl nuw i64 %346, 32
  %348 = or disjoint i64 %347, %345
  %349 = zext i32 %334 to i64
  %350 = zext i32 %340 to i64
  %351 = shl nuw i64 %350, 32
  %352 = or disjoint i64 %351, %349
  %353 = xor i64 %348, %352
  %354 = add i64 %353, %318
  %355 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %356 = getelementptr inbounds i8, ptr %355, i32 -32
  %357 = load i64, ptr %356, align 1
  %358 = getelementptr inbounds i8, ptr %355, i32 -24
  %359 = load i64, ptr %358, align 1
  %360 = add i64 %3, -8204357891075471176
  %361 = xor i64 %357, %360
  %362 = sub i64 5487137525590930912, %3
  %363 = xor i64 %359, %362
  %364 = lshr i64 %361, 32
  %365 = trunc nuw i64 %364 to i32
  %366 = trunc i64 %361 to i32
  %367 = lshr i64 %363, 32
  %368 = trunc nuw i64 %367 to i32
  %369 = trunc i64 %363 to i32
  %370 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %366, i32 %369) #28
  %371 = extractvalue { i32, i32 } %370, 0
  %372 = extractvalue { i32, i32 } %370, 1
  %373 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %365, i32 %369, i32 0, i32 %372) #28
  %374 = extractvalue { i32, i32 } %373, 0
  %375 = extractvalue { i32, i32 } %373, 1
  %376 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %366, i32 %368, i32 %374, i32 0) #28
  %377 = extractvalue { i32, i32 } %376, 0
  %378 = extractvalue { i32, i32 } %376, 1
  %379 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %365, i32 %368, i32 %375, i32 %378) #28
  %380 = extractvalue { i32, i32 } %379, 0
  %381 = extractvalue { i32, i32 } %379, 1
  %382 = zext i32 %380 to i64
  %383 = zext i32 %381 to i64
  %384 = shl nuw i64 %383, 32
  %385 = or disjoint i64 %384, %382
  %386 = zext i32 %371 to i64
  %387 = zext i32 %377 to i64
  %388 = shl nuw i64 %387, 32
  %389 = or disjoint i64 %388, %386
  %390 = xor i64 %385, %389
  %391 = add i64 %390, %317
  br label %392

392:                                              ; preds = %159, %316
  %393 = phi i64 [ %391, %316 ], [ 0, %159 ]
  %394 = phi i64 [ %354, %316 ], [ %161, %159 ]
  %395 = load i64, ptr %1, align 1
  %396 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %397 = load i64, ptr %396, align 1
  %398 = add i64 %3, -4734510112055689544
  %399 = xor i64 %395, %398
  %400 = sub i64 2066345149520216444, %3
  %401 = xor i64 %397, %400
  %402 = lshr i64 %399, 32
  %403 = trunc nuw i64 %402 to i32
  %404 = trunc i64 %399 to i32
  %405 = lshr i64 %401, 32
  %406 = trunc nuw i64 %405 to i32
  %407 = trunc i64 %401 to i32
  %408 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %404, i32 %407) #28
  %409 = extractvalue { i32, i32 } %408, 0
  %410 = extractvalue { i32, i32 } %408, 1
  %411 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %403, i32 %407, i32 0, i32 %410) #28
  %412 = extractvalue { i32, i32 } %411, 0
  %413 = extractvalue { i32, i32 } %411, 1
  %414 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %404, i32 %406, i32 %412, i32 0) #28
  %415 = extractvalue { i32, i32 } %414, 0
  %416 = extractvalue { i32, i32 } %414, 1
  %417 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %403, i32 %406, i32 %413, i32 %416) #28
  %418 = extractvalue { i32, i32 } %417, 0
  %419 = extractvalue { i32, i32 } %417, 1
  %420 = zext i32 %418 to i64
  %421 = zext i32 %419 to i64
  %422 = shl nuw i64 %421, 32
  %423 = or disjoint i64 %422, %420
  %424 = zext i32 %409 to i64
  %425 = zext i32 %415 to i64
  %426 = shl nuw i64 %425, 32
  %427 = or disjoint i64 %426, %424
  %428 = xor i64 %423, %427
  %429 = add i64 %428, %394
  %430 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %431 = getelementptr inbounds i8, ptr %430, i32 -16
  %432 = load i64, ptr %431, align 1
  %433 = getelementptr inbounds i8, ptr %430, i32 -8
  %434 = load i64, ptr %433, align 1
  %435 = add i64 %3, -2623469361688619810
  %436 = xor i64 %432, %435
  %437 = sub i64 2262974939099578482, %3
  %438 = xor i64 %434, %437
  %439 = lshr i64 %436, 32
  %440 = trunc nuw i64 %439 to i32
  %441 = trunc i64 %436 to i32
  %442 = lshr i64 %438, 32
  %443 = trunc nuw i64 %442 to i32
  %444 = trunc i64 %438 to i32
  %445 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %441, i32 %444) #28
  %446 = extractvalue { i32, i32 } %445, 0
  %447 = extractvalue { i32, i32 } %445, 1
  %448 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %440, i32 %444, i32 0, i32 %447) #28
  %449 = extractvalue { i32, i32 } %448, 0
  %450 = extractvalue { i32, i32 } %448, 1
  %451 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %441, i32 %443, i32 %449, i32 0) #28
  %452 = extractvalue { i32, i32 } %451, 0
  %453 = extractvalue { i32, i32 } %451, 1
  %454 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %440, i32 %443, i32 %450, i32 %453) #28
  %455 = extractvalue { i32, i32 } %454, 0
  %456 = extractvalue { i32, i32 } %454, 1
  %457 = zext i32 %455 to i64
  %458 = zext i32 %456 to i64
  %459 = shl nuw i64 %458, 32
  %460 = or disjoint i64 %459, %457
  %461 = zext i32 %446 to i64
  %462 = zext i32 %452 to i64
  %463 = shl nuw i64 %462, 32
  %464 = or disjoint i64 %463, %461
  %465 = xor i64 %460, %464
  %466 = add i64 %465, %393
  %467 = add i64 %466, %429
  %468 = mul i64 %429, -7046029288634856825
  %469 = mul i64 %466, -8796714831421723037
  %470 = sub i64 %160, %3
  %471 = mul i64 %470, -4417276706812531889
  %472 = add i64 %468, %471
  %473 = add i64 %472, %469
  %474 = lshr i64 %467, 37
  %475 = xor i64 %474, %467
  %476 = mul i64 %475, 1609587929392839161
  %477 = lshr i64 %476, 32
  %478 = xor i64 %477, %476
  store i64 %478, ptr %0, align 8, !alias.scope !71
  %479 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %480 = lshr i64 %473, 37
  %481 = xor i64 %480, %473
  %482 = mul i64 %481, 1609587929392839161
  %483 = lshr i64 %482, 32
  %484 = xor i64 %483, %482
  %485 = sub i64 0, %484
  store i64 %485, ptr %479, align 8, !alias.scope !71
  br label %490

486:                                              ; preds = %157
  %487 = icmp ult i32 %2, 241
  br i1 %487, label %488, label %489

488:                                              ; preds = %486
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @kSecret, i64 noundef %3)
  br label %490

489:                                              ; preds = %486
  tail call fastcc void @XXH3_hashLong_128b_withSeed(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, i64 noundef %3)
  br label %490

490:                                              ; preds = %156, %119, %77, %8, %489, %488, %392
  ret void
}

; Function Attrs: noinline nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal fastcc void @XXH3_hashLong_128b_withSeed(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i32 noundef range(i32 241, 0) %2, i64 noundef %3) unnamed_addr #19 {
  %5 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #29
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %55 = lshr i32 %2, 10
  %56 = icmp ult i32 %2, 1024
  br i1 %56, label %199, label %58

57:                                               ; preds = %4
  tail call fastcc void @XXH3_hashLong_128b_defaultSecret(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2)
  br label %696

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
  %84 = load i64, ptr %81, align 1, !noalias !74
  %85 = getelementptr inbounds nuw i8, ptr %81, i32 8
  %86 = load i64, ptr %85, align 1, !noalias !74
  %87 = load i64, ptr %83, align 8, !noalias !74
  %88 = getelementptr inbounds nuw i8, ptr %83, i32 8
  %89 = load i64, ptr %88, align 8, !noalias !74
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
  %103 = load i64, ptr %102, align 1, !noalias !74
  %104 = getelementptr inbounds nuw i8, ptr %81, i32 24
  %105 = load i64, ptr %104, align 1, !noalias !74
  %106 = getelementptr inbounds nuw i8, ptr %83, i32 16
  %107 = load i64, ptr %106, align 8, !noalias !74
  %108 = getelementptr inbounds nuw i8, ptr %83, i32 24
  %109 = load i64, ptr %108, align 8, !noalias !74
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
  %123 = load i64, ptr %122, align 1, !noalias !74
  %124 = getelementptr inbounds nuw i8, ptr %81, i32 40
  %125 = load i64, ptr %124, align 1, !noalias !74
  %126 = getelementptr inbounds nuw i8, ptr %83, i32 32
  %127 = load i64, ptr %126, align 8, !noalias !74
  %128 = getelementptr inbounds nuw i8, ptr %83, i32 40
  %129 = load i64, ptr %128, align 8, !noalias !74
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
  %143 = load i64, ptr %142, align 1, !noalias !74
  %144 = getelementptr inbounds nuw i8, ptr %81, i32 56
  %145 = load i64, ptr %144, align 1, !noalias !74
  %146 = getelementptr inbounds nuw i8, ptr %83, i32 48
  %147 = load i64, ptr %146, align 8, !noalias !74
  %148 = getelementptr inbounds nuw i8, ptr %83, i32 56
  %149 = load i64, ptr %148, align 8, !noalias !74
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
  %227 = load i64, ptr %224, align 1, !noalias !74
  %228 = getelementptr inbounds nuw i8, ptr %224, i32 8
  %229 = load i64, ptr %228, align 1, !noalias !74
  %230 = load i64, ptr %226, align 8, !noalias !74
  %231 = getelementptr inbounds nuw i8, ptr %226, i32 8
  %232 = load i64, ptr %231, align 8, !noalias !74
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
  %246 = load i64, ptr %245, align 1, !noalias !74
  %247 = getelementptr inbounds nuw i8, ptr %224, i32 24
  %248 = load i64, ptr %247, align 1, !noalias !74
  %249 = getelementptr inbounds nuw i8, ptr %226, i32 16
  %250 = load i64, ptr %249, align 8, !noalias !74
  %251 = getelementptr inbounds nuw i8, ptr %226, i32 24
  %252 = load i64, ptr %251, align 8, !noalias !74
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
  %266 = load i64, ptr %265, align 1, !noalias !74
  %267 = getelementptr inbounds nuw i8, ptr %224, i32 40
  %268 = load i64, ptr %267, align 1, !noalias !74
  %269 = getelementptr inbounds nuw i8, ptr %226, i32 32
  %270 = load i64, ptr %269, align 8, !noalias !74
  %271 = getelementptr inbounds nuw i8, ptr %226, i32 40
  %272 = load i64, ptr %271, align 8, !noalias !74
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
  %286 = load i64, ptr %285, align 1, !noalias !74
  %287 = getelementptr inbounds nuw i8, ptr %224, i32 56
  %288 = load i64, ptr %287, align 1, !noalias !74
  %289 = getelementptr inbounds nuw i8, ptr %226, i32 48
  %290 = load i64, ptr %289, align 8, !noalias !74
  %291 = getelementptr inbounds nuw i8, ptr %226, i32 56
  %292 = load i64, ptr %291, align 8, !noalias !74
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
  %322 = load i64, ptr %320, align 1, !noalias !74
  %323 = getelementptr inbounds i8, ptr %319, i32 -56
  %324 = load i64, ptr %323, align 1, !noalias !74
  %325 = load i64, ptr %321, align 1, !noalias !74
  %326 = getelementptr inbounds nuw i8, ptr %5, i32 129
  %327 = load i64, ptr %326, align 1, !noalias !74
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
  %341 = load i64, ptr %340, align 1, !noalias !74
  %342 = getelementptr inbounds i8, ptr %319, i32 -40
  %343 = load i64, ptr %342, align 1, !noalias !74
  %344 = getelementptr inbounds nuw i8, ptr %5, i32 137
  %345 = load i64, ptr %344, align 1, !noalias !74
  %346 = getelementptr inbounds nuw i8, ptr %5, i32 145
  %347 = load i64, ptr %346, align 1, !noalias !74
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
  %361 = load i64, ptr %360, align 1, !noalias !74
  %362 = getelementptr inbounds i8, ptr %319, i32 -24
  %363 = load i64, ptr %362, align 1, !noalias !74
  %364 = getelementptr inbounds nuw i8, ptr %5, i32 153
  %365 = load i64, ptr %364, align 1, !noalias !74
  %366 = getelementptr inbounds nuw i8, ptr %5, i32 161
  %367 = load i64, ptr %366, align 1, !noalias !74
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
  %381 = load i64, ptr %380, align 1, !noalias !74
  %382 = getelementptr inbounds i8, ptr %319, i32 -8
  %383 = load i64, ptr %382, align 1, !noalias !74
  %384 = getelementptr inbounds nuw i8, ptr %5, i32 169
  %385 = load i64, ptr %384, align 1, !noalias !74
  %386 = getelementptr inbounds nuw i8, ptr %5, i32 177
  %387 = load i64, ptr %386, align 1, !noalias !74
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
  %412 = load i64, ptr %409, align 1, !noalias !74
  %413 = xor i64 %412, %408
  %414 = getelementptr inbounds nuw i8, ptr %5, i32 19
  %415 = load i64, ptr %414, align 1, !noalias !74
  %416 = xor i64 %415, %407
  %417 = lshr i64 %413, 32
  %418 = trunc nuw i64 %417 to i32
  %419 = trunc i64 %413 to i32
  %420 = lshr i64 %416, 32
  %421 = trunc nuw i64 %420 to i32
  %422 = trunc i64 %416 to i32
  %423 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %419, i32 %422) #28
  %424 = extractvalue { i32, i32 } %423, 0
  %425 = extractvalue { i32, i32 } %423, 1
  %426 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %418, i32 %422, i32 0, i32 %425) #28
  %427 = extractvalue { i32, i32 } %426, 0
  %428 = extractvalue { i32, i32 } %426, 1
  %429 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %419, i32 %421, i32 %427, i32 0) #28
  %430 = extractvalue { i32, i32 } %429, 0
  %431 = extractvalue { i32, i32 } %429, 1
  %432 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %418, i32 %421, i32 %428, i32 %431) #28
  %433 = extractvalue { i32, i32 } %432, 0
  %434 = extractvalue { i32, i32 } %432, 1
  %435 = zext i32 %433 to i64
  %436 = zext i32 %434 to i64
  %437 = shl nuw i64 %436, 32
  %438 = or disjoint i64 %437, %435
  %439 = zext i32 %424 to i64
  %440 = zext i32 %430 to i64
  %441 = shl nuw i64 %440, 32
  %442 = or disjoint i64 %441, %439
  %443 = xor i64 %438, %442
  %444 = add i64 %443, %411
  %445 = getelementptr inbounds nuw i8, ptr %5, i32 27
  %446 = load i64, ptr %445, align 1, !noalias !74
  %447 = xor i64 %446, %406
  %448 = getelementptr inbounds nuw i8, ptr %5, i32 35
  %449 = load i64, ptr %448, align 1, !noalias !74
  %450 = xor i64 %449, %405
  %451 = lshr i64 %447, 32
  %452 = trunc nuw i64 %451 to i32
  %453 = trunc i64 %447 to i32
  %454 = lshr i64 %450, 32
  %455 = trunc nuw i64 %454 to i32
  %456 = trunc i64 %450 to i32
  %457 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %453, i32 %456) #28
  %458 = extractvalue { i32, i32 } %457, 0
  %459 = extractvalue { i32, i32 } %457, 1
  %460 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %452, i32 %456, i32 0, i32 %459) #28
  %461 = extractvalue { i32, i32 } %460, 0
  %462 = extractvalue { i32, i32 } %460, 1
  %463 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %453, i32 %455, i32 %461, i32 0) #28
  %464 = extractvalue { i32, i32 } %463, 0
  %465 = extractvalue { i32, i32 } %463, 1
  %466 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %452, i32 %455, i32 %462, i32 %465) #28
  %467 = extractvalue { i32, i32 } %466, 0
  %468 = extractvalue { i32, i32 } %466, 1
  %469 = zext i32 %467 to i64
  %470 = zext i32 %468 to i64
  %471 = shl nuw i64 %470, 32
  %472 = or disjoint i64 %471, %469
  %473 = zext i32 %458 to i64
  %474 = zext i32 %464 to i64
  %475 = shl nuw i64 %474, 32
  %476 = or disjoint i64 %475, %473
  %477 = xor i64 %472, %476
  %478 = add i64 %444, %477
  %479 = getelementptr inbounds nuw i8, ptr %5, i32 43
  %480 = load i64, ptr %479, align 1, !noalias !74
  %481 = xor i64 %480, %404
  %482 = getelementptr inbounds nuw i8, ptr %5, i32 51
  %483 = load i64, ptr %482, align 1, !noalias !74
  %484 = xor i64 %483, %403
  %485 = lshr i64 %481, 32
  %486 = trunc nuw i64 %485 to i32
  %487 = trunc i64 %481 to i32
  %488 = lshr i64 %484, 32
  %489 = trunc nuw i64 %488 to i32
  %490 = trunc i64 %484 to i32
  %491 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %487, i32 %490) #28
  %492 = extractvalue { i32, i32 } %491, 0
  %493 = extractvalue { i32, i32 } %491, 1
  %494 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %486, i32 %490, i32 0, i32 %493) #28
  %495 = extractvalue { i32, i32 } %494, 0
  %496 = extractvalue { i32, i32 } %494, 1
  %497 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %487, i32 %489, i32 %495, i32 0) #28
  %498 = extractvalue { i32, i32 } %497, 0
  %499 = extractvalue { i32, i32 } %497, 1
  %500 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %486, i32 %489, i32 %496, i32 %499) #28
  %501 = extractvalue { i32, i32 } %500, 0
  %502 = extractvalue { i32, i32 } %500, 1
  %503 = zext i32 %501 to i64
  %504 = zext i32 %502 to i64
  %505 = shl nuw i64 %504, 32
  %506 = or disjoint i64 %505, %503
  %507 = zext i32 %492 to i64
  %508 = zext i32 %498 to i64
  %509 = shl nuw i64 %508, 32
  %510 = or disjoint i64 %509, %507
  %511 = xor i64 %506, %510
  %512 = add i64 %478, %511
  %513 = getelementptr inbounds nuw i8, ptr %5, i32 59
  %514 = load i64, ptr %513, align 1, !noalias !74
  %515 = xor i64 %514, %402
  %516 = getelementptr inbounds nuw i8, ptr %5, i32 67
  %517 = load i64, ptr %516, align 1, !noalias !74
  %518 = xor i64 %517, %401
  %519 = lshr i64 %515, 32
  %520 = trunc nuw i64 %519 to i32
  %521 = trunc i64 %515 to i32
  %522 = lshr i64 %518, 32
  %523 = trunc nuw i64 %522 to i32
  %524 = trunc i64 %518 to i32
  %525 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %521, i32 %524) #28
  %526 = extractvalue { i32, i32 } %525, 0
  %527 = extractvalue { i32, i32 } %525, 1
  %528 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %520, i32 %524, i32 0, i32 %527) #28
  %529 = extractvalue { i32, i32 } %528, 0
  %530 = extractvalue { i32, i32 } %528, 1
  %531 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %521, i32 %523, i32 %529, i32 0) #28
  %532 = extractvalue { i32, i32 } %531, 0
  %533 = extractvalue { i32, i32 } %531, 1
  %534 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %520, i32 %523, i32 %530, i32 %533) #28
  %535 = extractvalue { i32, i32 } %534, 0
  %536 = extractvalue { i32, i32 } %534, 1
  %537 = zext i32 %535 to i64
  %538 = zext i32 %536 to i64
  %539 = shl nuw i64 %538, 32
  %540 = or disjoint i64 %539, %537
  %541 = zext i32 %526 to i64
  %542 = zext i32 %532 to i64
  %543 = shl nuw i64 %542, 32
  %544 = or disjoint i64 %543, %541
  %545 = xor i64 %540, %544
  %546 = add i64 %512, %545
  %547 = lshr i64 %546, 37
  %548 = xor i64 %547, %546
  %549 = mul i64 %548, 1609587929392839161
  %550 = lshr i64 %549, 32
  %551 = xor i64 %550, %549
  %552 = getelementptr inbounds nuw i8, ptr %5, i32 117
  %553 = mul i64 %410, -4417276706812531889
  %554 = xor i64 %553, -1
  %555 = load i64, ptr %552, align 1, !noalias !74
  %556 = xor i64 %555, %408
  %557 = getelementptr inbounds nuw i8, ptr %5, i32 125
  %558 = load i64, ptr %557, align 1, !noalias !74
  %559 = xor i64 %558, %407
  %560 = lshr i64 %556, 32
  %561 = trunc nuw i64 %560 to i32
  %562 = trunc i64 %556 to i32
  %563 = lshr i64 %559, 32
  %564 = trunc nuw i64 %563 to i32
  %565 = trunc i64 %559 to i32
  %566 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %562, i32 %565) #28
  %567 = extractvalue { i32, i32 } %566, 0
  %568 = extractvalue { i32, i32 } %566, 1
  %569 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %561, i32 %565, i32 0, i32 %568) #28
  %570 = extractvalue { i32, i32 } %569, 0
  %571 = extractvalue { i32, i32 } %569, 1
  %572 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %562, i32 %564, i32 %570, i32 0) #28
  %573 = extractvalue { i32, i32 } %572, 0
  %574 = extractvalue { i32, i32 } %572, 1
  %575 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %561, i32 %564, i32 %571, i32 %574) #28
  %576 = extractvalue { i32, i32 } %575, 0
  %577 = extractvalue { i32, i32 } %575, 1
  %578 = zext i32 %576 to i64
  %579 = zext i32 %577 to i64
  %580 = shl nuw i64 %579, 32
  %581 = or disjoint i64 %580, %578
  %582 = zext i32 %567 to i64
  %583 = zext i32 %573 to i64
  %584 = shl nuw i64 %583, 32
  %585 = or disjoint i64 %584, %582
  %586 = xor i64 %581, %585
  %587 = add i64 %586, %554
  %588 = getelementptr inbounds nuw i8, ptr %5, i32 133
  %589 = load i64, ptr %588, align 1, !noalias !74
  %590 = xor i64 %589, %406
  %591 = getelementptr inbounds nuw i8, ptr %5, i32 141
  %592 = load i64, ptr %591, align 1, !noalias !74
  %593 = xor i64 %592, %405
  %594 = lshr i64 %590, 32
  %595 = trunc nuw i64 %594 to i32
  %596 = trunc i64 %590 to i32
  %597 = lshr i64 %593, 32
  %598 = trunc nuw i64 %597 to i32
  %599 = trunc i64 %593 to i32
  %600 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %596, i32 %599) #28
  %601 = extractvalue { i32, i32 } %600, 0
  %602 = extractvalue { i32, i32 } %600, 1
  %603 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %595, i32 %599, i32 0, i32 %602) #28
  %604 = extractvalue { i32, i32 } %603, 0
  %605 = extractvalue { i32, i32 } %603, 1
  %606 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %596, i32 %598, i32 %604, i32 0) #28
  %607 = extractvalue { i32, i32 } %606, 0
  %608 = extractvalue { i32, i32 } %606, 1
  %609 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %595, i32 %598, i32 %605, i32 %608) #28
  %610 = extractvalue { i32, i32 } %609, 0
  %611 = extractvalue { i32, i32 } %609, 1
  %612 = zext i32 %610 to i64
  %613 = zext i32 %611 to i64
  %614 = shl nuw i64 %613, 32
  %615 = or disjoint i64 %614, %612
  %616 = zext i32 %601 to i64
  %617 = zext i32 %607 to i64
  %618 = shl nuw i64 %617, 32
  %619 = or disjoint i64 %618, %616
  %620 = xor i64 %615, %619
  %621 = add i64 %587, %620
  %622 = getelementptr inbounds nuw i8, ptr %5, i32 149
  %623 = load i64, ptr %622, align 1, !noalias !74
  %624 = xor i64 %623, %404
  %625 = getelementptr inbounds nuw i8, ptr %5, i32 157
  %626 = load i64, ptr %625, align 1, !noalias !74
  %627 = xor i64 %626, %403
  %628 = lshr i64 %624, 32
  %629 = trunc nuw i64 %628 to i32
  %630 = trunc i64 %624 to i32
  %631 = lshr i64 %627, 32
  %632 = trunc nuw i64 %631 to i32
  %633 = trunc i64 %627 to i32
  %634 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %630, i32 %633) #28
  %635 = extractvalue { i32, i32 } %634, 0
  %636 = extractvalue { i32, i32 } %634, 1
  %637 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %629, i32 %633, i32 0, i32 %636) #28
  %638 = extractvalue { i32, i32 } %637, 0
  %639 = extractvalue { i32, i32 } %637, 1
  %640 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %630, i32 %632, i32 %638, i32 0) #28
  %641 = extractvalue { i32, i32 } %640, 0
  %642 = extractvalue { i32, i32 } %640, 1
  %643 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %629, i32 %632, i32 %639, i32 %642) #28
  %644 = extractvalue { i32, i32 } %643, 0
  %645 = extractvalue { i32, i32 } %643, 1
  %646 = zext i32 %644 to i64
  %647 = zext i32 %645 to i64
  %648 = shl nuw i64 %647, 32
  %649 = or disjoint i64 %648, %646
  %650 = zext i32 %635 to i64
  %651 = zext i32 %641 to i64
  %652 = shl nuw i64 %651, 32
  %653 = or disjoint i64 %652, %650
  %654 = xor i64 %649, %653
  %655 = add i64 %621, %654
  %656 = getelementptr inbounds nuw i8, ptr %5, i32 165
  %657 = load i64, ptr %656, align 1, !noalias !74
  %658 = xor i64 %657, %402
  %659 = getelementptr inbounds nuw i8, ptr %5, i32 173
  %660 = load i64, ptr %659, align 1, !noalias !74
  %661 = xor i64 %660, %401
  %662 = lshr i64 %658, 32
  %663 = trunc nuw i64 %662 to i32
  %664 = trunc i64 %658 to i32
  %665 = lshr i64 %661, 32
  %666 = trunc nuw i64 %665 to i32
  %667 = trunc i64 %661 to i32
  %668 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %664, i32 %667) #28
  %669 = extractvalue { i32, i32 } %668, 0
  %670 = extractvalue { i32, i32 } %668, 1
  %671 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %663, i32 %667, i32 0, i32 %670) #28
  %672 = extractvalue { i32, i32 } %671, 0
  %673 = extractvalue { i32, i32 } %671, 1
  %674 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %664, i32 %666, i32 %672, i32 0) #28
  %675 = extractvalue { i32, i32 } %674, 0
  %676 = extractvalue { i32, i32 } %674, 1
  %677 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %663, i32 %666, i32 %673, i32 %676) #28
  %678 = extractvalue { i32, i32 } %677, 0
  %679 = extractvalue { i32, i32 } %677, 1
  %680 = zext i32 %678 to i64
  %681 = zext i32 %679 to i64
  %682 = shl nuw i64 %681, 32
  %683 = or disjoint i64 %682, %680
  %684 = zext i32 %669 to i64
  %685 = zext i32 %675 to i64
  %686 = shl nuw i64 %685, 32
  %687 = or disjoint i64 %686, %684
  %688 = xor i64 %683, %687
  %689 = add i64 %655, %688
  %690 = lshr i64 %689, 37
  %691 = xor i64 %690, %689
  %692 = mul i64 %691, 1609587929392839161
  %693 = lshr i64 %692, 32
  %694 = xor i64 %693, %692
  store i64 %551, ptr %0, align 8, !alias.scope !74
  %695 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %694, ptr %695, align 8, !alias.scope !74
  br label %696

696:                                              ; preds = %400, %57
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #29
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH128(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %5 = icmp ult i32 %2, 17
  br i1 %5, label %6, label %157

6:                                                ; preds = %4
  %7 = icmp samesign ugt i32 %2, 8
  br i1 %7, label %8, label %75

8:                                                ; preds = %6
  %9 = load i64, ptr %1, align 1, !noalias !77
  %10 = add i64 %3, -4734510112055689544
  %11 = xor i64 %9, %10
  %12 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %13 = getelementptr inbounds i8, ptr %12, i32 -8
  %14 = load i64, ptr %13, align 1, !noalias !77
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
  store i64 %69, ptr %0, align 8, !alias.scope !80
  %70 = lshr i64 %64, 37
  %71 = xor i64 %70, %64
  %72 = mul i64 %71, 1609587929392839161
  %73 = lshr i64 %72, 32
  %74 = xor i64 %73, %72
  store i64 %74, ptr %58, align 8, !alias.scope !80
  br label %490

75:                                               ; preds = %6
  %76 = icmp samesign ugt i32 %2, 3
  br i1 %76, label %77, label %117

77:                                               ; preds = %75
  %78 = load i32, ptr %1, align 1, !noalias !77
  %79 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %80 = getelementptr inbounds i8, ptr %79, i32 -4
  %81 = load i32, ptr %80, align 1, !noalias !77
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
  store i64 %110, ptr %0, align 8, !alias.scope !83
  %111 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %112 = lshr i64 %105, 37
  %113 = xor i64 %112, %105
  %114 = mul i64 %113, 1609587929392839161
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  store i64 %116, ptr %111, align 8, !alias.scope !83
  br label %490

117:                                              ; preds = %75
  %118 = icmp eq i32 %2, 0
  br i1 %118, label %156, label %119

119:                                              ; preds = %117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %120 = load i8, ptr %1, align 1, !noalias !89
  %121 = lshr i32 %2, 1
  %122 = getelementptr inbounds nuw i8, ptr %1, i32 %121
  %123 = load i8, ptr %122, align 1, !noalias !89
  %124 = getelementptr i8, ptr %1, i32 %2
  %125 = getelementptr i8, ptr %124, i32 -1
  %126 = load i8, ptr %125, align 1, !noalias !89
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
  store i64 %149, ptr %0, align 8, !alias.scope !89
  %150 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %151 = lshr i64 %144, 37
  %152 = xor i64 %151, %144
  %153 = mul i64 %152, 1609587929392839161
  %154 = lshr i64 %153, 32
  %155 = xor i64 %154, %153
  store i64 %155, ptr %150, align 8, !alias.scope !89
  br label %490

156:                                              ; preds = %117
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !90
  br label %490

157:                                              ; preds = %4
  %158 = icmp ult i32 %2, 129
  br i1 %158, label %159, label %486

159:                                              ; preds = %157
  %160 = zext nneg i32 %2 to i64
  %161 = mul i64 %160, -7046029288634856825
  %162 = icmp samesign ugt i32 %2, 32
  br i1 %162, label %163, label %392

163:                                              ; preds = %159
  %164 = icmp samesign ugt i32 %2, 64
  br i1 %164, label %165, label %316

165:                                              ; preds = %163
  %166 = icmp samesign ugt i32 %2, 96
  br i1 %166, label %167, label %240

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %169 = load i64, ptr %168, align 1, !noalias !77
  %170 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %171 = load i64, ptr %170, align 1, !noalias !77
  %172 = add i64 %3, 4554437623014685352
  %173 = xor i64 %169, %172
  %174 = sub i64 2111919702937427193, %3
  %175 = xor i64 %171, %174
  %176 = lshr i64 %173, 32
  %177 = trunc nuw i64 %176 to i32
  %178 = trunc i64 %173 to i32
  %179 = lshr i64 %175, 32
  %180 = trunc nuw i64 %179 to i32
  %181 = trunc i64 %175 to i32
  %182 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %178, i32 %181) #28
  %183 = extractvalue { i32, i32 } %182, 0
  %184 = extractvalue { i32, i32 } %182, 1
  %185 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %177, i32 %181, i32 0, i32 %184) #28
  %186 = extractvalue { i32, i32 } %185, 0
  %187 = extractvalue { i32, i32 } %185, 1
  %188 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %178, i32 %180, i32 %186, i32 0) #28
  %189 = extractvalue { i32, i32 } %188, 0
  %190 = extractvalue { i32, i32 } %188, 1
  %191 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %177, i32 %180, i32 %187, i32 %190) #28
  %192 = extractvalue { i32, i32 } %191, 0
  %193 = extractvalue { i32, i32 } %191, 1
  %194 = zext i32 %192 to i64
  %195 = zext i32 %193 to i64
  %196 = shl nuw i64 %195, 32
  %197 = or disjoint i64 %196, %194
  %198 = zext i32 %183 to i64
  %199 = zext i32 %189 to i64
  %200 = shl nuw i64 %199, 32
  %201 = or disjoint i64 %200, %198
  %202 = xor i64 %197, %201
  %203 = add i64 %202, %161
  %204 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %205 = getelementptr inbounds i8, ptr %204, i32 -64
  %206 = load i64, ptr %205, align 1, !noalias !77
  %207 = getelementptr inbounds i8, ptr %204, i32 -56
  %208 = load i64, ptr %207, align 1, !noalias !77
  %209 = add i64 %3, 3556072174620004746
  %210 = xor i64 %206, %209
  %211 = sub i64 7238261902898274248, %3
  %212 = xor i64 %208, %211
  %213 = lshr i64 %210, 32
  %214 = trunc nuw i64 %213 to i32
  %215 = trunc i64 %210 to i32
  %216 = lshr i64 %212, 32
  %217 = trunc nuw i64 %216 to i32
  %218 = trunc i64 %212 to i32
  %219 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %215, i32 %218) #28
  %220 = extractvalue { i32, i32 } %219, 0
  %221 = extractvalue { i32, i32 } %219, 1
  %222 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %214, i32 %218, i32 0, i32 %221) #28
  %223 = extractvalue { i32, i32 } %222, 0
  %224 = extractvalue { i32, i32 } %222, 1
  %225 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %215, i32 %217, i32 %223, i32 0) #28
  %226 = extractvalue { i32, i32 } %225, 0
  %227 = extractvalue { i32, i32 } %225, 1
  %228 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %214, i32 %217, i32 %224, i32 %227) #28
  %229 = extractvalue { i32, i32 } %228, 0
  %230 = extractvalue { i32, i32 } %228, 1
  %231 = zext i32 %229 to i64
  %232 = zext i32 %230 to i64
  %233 = shl nuw i64 %232, 32
  %234 = or disjoint i64 %233, %231
  %235 = zext i32 %220 to i64
  %236 = zext i32 %226 to i64
  %237 = shl nuw i64 %236, 32
  %238 = or disjoint i64 %237, %235
  %239 = xor i64 %234, %238
  br label %240

240:                                              ; preds = %167, %165
  %241 = phi i64 [ %239, %167 ], [ 0, %165 ]
  %242 = phi i64 [ %203, %167 ], [ %161, %165 ]
  %243 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %244 = load i64, ptr %243, align 1, !noalias !77
  %245 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %246 = load i64, ptr %245, align 1, !noalias !77
  %247 = add i64 %3, -3818837453329782724
  %248 = xor i64 %244, %247
  %249 = sub i64 -6688317018830679928, %3
  %250 = xor i64 %246, %249
  %251 = lshr i64 %248, 32
  %252 = trunc nuw i64 %251 to i32
  %253 = trunc i64 %248 to i32
  %254 = lshr i64 %250, 32
  %255 = trunc nuw i64 %254 to i32
  %256 = trunc i64 %250 to i32
  %257 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %253, i32 %256) #28
  %258 = extractvalue { i32, i32 } %257, 0
  %259 = extractvalue { i32, i32 } %257, 1
  %260 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %252, i32 %256, i32 0, i32 %259) #28
  %261 = extractvalue { i32, i32 } %260, 0
  %262 = extractvalue { i32, i32 } %260, 1
  %263 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %253, i32 %255, i32 %261, i32 0) #28
  %264 = extractvalue { i32, i32 } %263, 0
  %265 = extractvalue { i32, i32 } %263, 1
  %266 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %252, i32 %255, i32 %262, i32 %265) #28
  %267 = extractvalue { i32, i32 } %266, 0
  %268 = extractvalue { i32, i32 } %266, 1
  %269 = zext i32 %267 to i64
  %270 = zext i32 %268 to i64
  %271 = shl nuw i64 %270, 32
  %272 = or disjoint i64 %271, %269
  %273 = zext i32 %258 to i64
  %274 = zext i32 %264 to i64
  %275 = shl nuw i64 %274, 32
  %276 = or disjoint i64 %275, %273
  %277 = xor i64 %272, %276
  %278 = add i64 %277, %242
  %279 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %280 = getelementptr inbounds i8, ptr %279, i32 -48
  %281 = load i64, ptr %280, align 1, !noalias !77
  %282 = getelementptr inbounds i8, ptr %279, i32 -40
  %283 = load i64, ptr %282, align 1, !noalias !77
  %284 = add i64 %3, 5690594596133299313
  %285 = xor i64 %281, %284
  %286 = sub i64 -2833645246901970632, %3
  %287 = xor i64 %283, %286
  %288 = lshr i64 %285, 32
  %289 = trunc nuw i64 %288 to i32
  %290 = trunc i64 %285 to i32
  %291 = lshr i64 %287, 32
  %292 = trunc nuw i64 %291 to i32
  %293 = trunc i64 %287 to i32
  %294 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %290, i32 %293) #28
  %295 = extractvalue { i32, i32 } %294, 0
  %296 = extractvalue { i32, i32 } %294, 1
  %297 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %289, i32 %293, i32 0, i32 %296) #28
  %298 = extractvalue { i32, i32 } %297, 0
  %299 = extractvalue { i32, i32 } %297, 1
  %300 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %290, i32 %292, i32 %298, i32 0) #28
  %301 = extractvalue { i32, i32 } %300, 0
  %302 = extractvalue { i32, i32 } %300, 1
  %303 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %289, i32 %292, i32 %299, i32 %302) #28
  %304 = extractvalue { i32, i32 } %303, 0
  %305 = extractvalue { i32, i32 } %303, 1
  %306 = zext i32 %304 to i64
  %307 = zext i32 %305 to i64
  %308 = shl nuw i64 %307, 32
  %309 = or disjoint i64 %308, %306
  %310 = zext i32 %295 to i64
  %311 = zext i32 %301 to i64
  %312 = shl nuw i64 %311, 32
  %313 = or disjoint i64 %312, %310
  %314 = xor i64 %309, %313
  %315 = add i64 %314, %241
  br label %316

316:                                              ; preds = %240, %163
  %317 = phi i64 [ %315, %240 ], [ 0, %163 ]
  %318 = phi i64 [ %278, %240 ], [ %161, %163 ]
  %319 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %320 = load i64, ptr %319, align 1, !noalias !77
  %321 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %322 = load i64, ptr %321, align 1, !noalias !77
  %323 = add i64 %3, 8711581037947681227
  %324 = xor i64 %320, %323
  %325 = sub i64 2410270004345854594, %3
  %326 = xor i64 %322, %325
  %327 = lshr i64 %324, 32
  %328 = trunc nuw i64 %327 to i32
  %329 = trunc i64 %324 to i32
  %330 = lshr i64 %326, 32
  %331 = trunc nuw i64 %330 to i32
  %332 = trunc i64 %326 to i32
  %333 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %329, i32 %332) #28
  %334 = extractvalue { i32, i32 } %333, 0
  %335 = extractvalue { i32, i32 } %333, 1
  %336 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %328, i32 %332, i32 0, i32 %335) #28
  %337 = extractvalue { i32, i32 } %336, 0
  %338 = extractvalue { i32, i32 } %336, 1
  %339 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %329, i32 %331, i32 %337, i32 0) #28
  %340 = extractvalue { i32, i32 } %339, 0
  %341 = extractvalue { i32, i32 } %339, 1
  %342 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %328, i32 %331, i32 %338, i32 %341) #28
  %343 = extractvalue { i32, i32 } %342, 0
  %344 = extractvalue { i32, i32 } %342, 1
  %345 = zext i32 %343 to i64
  %346 = zext i32 %344 to i64
  %347 = shl nuw i64 %346, 32
  %348 = or disjoint i64 %347, %345
  %349 = zext i32 %334 to i64
  %350 = zext i32 %340 to i64
  %351 = shl nuw i64 %350, 32
  %352 = or disjoint i64 %351, %349
  %353 = xor i64 %348, %352
  %354 = add i64 %353, %318
  %355 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %356 = getelementptr inbounds i8, ptr %355, i32 -32
  %357 = load i64, ptr %356, align 1, !noalias !77
  %358 = getelementptr inbounds i8, ptr %355, i32 -24
  %359 = load i64, ptr %358, align 1, !noalias !77
  %360 = add i64 %3, -8204357891075471176
  %361 = xor i64 %357, %360
  %362 = sub i64 5487137525590930912, %3
  %363 = xor i64 %359, %362
  %364 = lshr i64 %361, 32
  %365 = trunc nuw i64 %364 to i32
  %366 = trunc i64 %361 to i32
  %367 = lshr i64 %363, 32
  %368 = trunc nuw i64 %367 to i32
  %369 = trunc i64 %363 to i32
  %370 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %366, i32 %369) #28
  %371 = extractvalue { i32, i32 } %370, 0
  %372 = extractvalue { i32, i32 } %370, 1
  %373 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %365, i32 %369, i32 0, i32 %372) #28
  %374 = extractvalue { i32, i32 } %373, 0
  %375 = extractvalue { i32, i32 } %373, 1
  %376 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %366, i32 %368, i32 %374, i32 0) #28
  %377 = extractvalue { i32, i32 } %376, 0
  %378 = extractvalue { i32, i32 } %376, 1
  %379 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %365, i32 %368, i32 %375, i32 %378) #28
  %380 = extractvalue { i32, i32 } %379, 0
  %381 = extractvalue { i32, i32 } %379, 1
  %382 = zext i32 %380 to i64
  %383 = zext i32 %381 to i64
  %384 = shl nuw i64 %383, 32
  %385 = or disjoint i64 %384, %382
  %386 = zext i32 %371 to i64
  %387 = zext i32 %377 to i64
  %388 = shl nuw i64 %387, 32
  %389 = or disjoint i64 %388, %386
  %390 = xor i64 %385, %389
  %391 = add i64 %390, %317
  br label %392

392:                                              ; preds = %316, %159
  %393 = phi i64 [ %391, %316 ], [ 0, %159 ]
  %394 = phi i64 [ %354, %316 ], [ %161, %159 ]
  %395 = load i64, ptr %1, align 1, !noalias !77
  %396 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %397 = load i64, ptr %396, align 1, !noalias !77
  %398 = add i64 %3, -4734510112055689544
  %399 = xor i64 %395, %398
  %400 = sub i64 2066345149520216444, %3
  %401 = xor i64 %397, %400
  %402 = lshr i64 %399, 32
  %403 = trunc nuw i64 %402 to i32
  %404 = trunc i64 %399 to i32
  %405 = lshr i64 %401, 32
  %406 = trunc nuw i64 %405 to i32
  %407 = trunc i64 %401 to i32
  %408 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %404, i32 %407) #28
  %409 = extractvalue { i32, i32 } %408, 0
  %410 = extractvalue { i32, i32 } %408, 1
  %411 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %403, i32 %407, i32 0, i32 %410) #28
  %412 = extractvalue { i32, i32 } %411, 0
  %413 = extractvalue { i32, i32 } %411, 1
  %414 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %404, i32 %406, i32 %412, i32 0) #28
  %415 = extractvalue { i32, i32 } %414, 0
  %416 = extractvalue { i32, i32 } %414, 1
  %417 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %403, i32 %406, i32 %413, i32 %416) #28
  %418 = extractvalue { i32, i32 } %417, 0
  %419 = extractvalue { i32, i32 } %417, 1
  %420 = zext i32 %418 to i64
  %421 = zext i32 %419 to i64
  %422 = shl nuw i64 %421, 32
  %423 = or disjoint i64 %422, %420
  %424 = zext i32 %409 to i64
  %425 = zext i32 %415 to i64
  %426 = shl nuw i64 %425, 32
  %427 = or disjoint i64 %426, %424
  %428 = xor i64 %423, %427
  %429 = add i64 %428, %394
  %430 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %431 = getelementptr inbounds i8, ptr %430, i32 -16
  %432 = load i64, ptr %431, align 1, !noalias !77
  %433 = getelementptr inbounds i8, ptr %430, i32 -8
  %434 = load i64, ptr %433, align 1, !noalias !77
  %435 = add i64 %3, -2623469361688619810
  %436 = xor i64 %432, %435
  %437 = sub i64 2262974939099578482, %3
  %438 = xor i64 %434, %437
  %439 = lshr i64 %436, 32
  %440 = trunc nuw i64 %439 to i32
  %441 = trunc i64 %436 to i32
  %442 = lshr i64 %438, 32
  %443 = trunc nuw i64 %442 to i32
  %444 = trunc i64 %438 to i32
  %445 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %441, i32 %444) #28
  %446 = extractvalue { i32, i32 } %445, 0
  %447 = extractvalue { i32, i32 } %445, 1
  %448 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %440, i32 %444, i32 0, i32 %447) #28
  %449 = extractvalue { i32, i32 } %448, 0
  %450 = extractvalue { i32, i32 } %448, 1
  %451 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %441, i32 %443, i32 %449, i32 0) #28
  %452 = extractvalue { i32, i32 } %451, 0
  %453 = extractvalue { i32, i32 } %451, 1
  %454 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %440, i32 %443, i32 %450, i32 %453) #28
  %455 = extractvalue { i32, i32 } %454, 0
  %456 = extractvalue { i32, i32 } %454, 1
  %457 = zext i32 %455 to i64
  %458 = zext i32 %456 to i64
  %459 = shl nuw i64 %458, 32
  %460 = or disjoint i64 %459, %457
  %461 = zext i32 %446 to i64
  %462 = zext i32 %452 to i64
  %463 = shl nuw i64 %462, 32
  %464 = or disjoint i64 %463, %461
  %465 = xor i64 %460, %464
  %466 = add i64 %465, %393
  %467 = add i64 %466, %429
  %468 = mul i64 %429, -7046029288634856825
  %469 = mul i64 %466, -8796714831421723037
  %470 = sub i64 %160, %3
  %471 = mul i64 %470, -4417276706812531889
  %472 = add i64 %468, %471
  %473 = add i64 %472, %469
  %474 = lshr i64 %467, 37
  %475 = xor i64 %474, %467
  %476 = mul i64 %475, 1609587929392839161
  %477 = lshr i64 %476, 32
  %478 = xor i64 %477, %476
  store i64 %478, ptr %0, align 8, !alias.scope !93
  %479 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %480 = lshr i64 %473, 37
  %481 = xor i64 %480, %473
  %482 = mul i64 %481, 1609587929392839161
  %483 = lshr i64 %482, 32
  %484 = xor i64 %483, %482
  %485 = sub i64 0, %484
  store i64 %485, ptr %479, align 8, !alias.scope !93
  br label %490

486:                                              ; preds = %157
  %487 = icmp ult i32 %2, 241
  br i1 %487, label %488, label %489

488:                                              ; preds = %486
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef nonnull @kSecret, i64 noundef %3)
  br label %490

489:                                              ; preds = %486
  tail call fastcc void @XXH3_hashLong_128b_withSeed(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef readonly %1, i32 noundef %2, i64 noundef %3)
  br label %490

490:                                              ; preds = %8, %77, %119, %156, %392, %488, %489
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
define dso_local range(i32 0, 2) i32 @XXH3_128bits_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #15 {
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

; Function Attrs: nounwind
define dso_local void @XXH3_128bits_digest(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1) local_unnamed_addr #20 {
  %3 = alloca [64 x i8], align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i32 536
  %5 = load i64, ptr %4, align 8
  %6 = icmp ugt i64 %5, 240
  br i1 %6, label %7, label %876

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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #29
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #29
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
  %595 = trunc nuw i64 %594 to i32
  %596 = trunc i64 %590 to i32
  %597 = lshr i64 %593, 32
  %598 = trunc nuw i64 %597 to i32
  %599 = trunc i64 %593 to i32
  %600 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %596, i32 %599) #28
  %601 = extractvalue { i32, i32 } %600, 0
  %602 = extractvalue { i32, i32 } %600, 1
  %603 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %595, i32 %599, i32 0, i32 %602) #28
  %604 = extractvalue { i32, i32 } %603, 0
  %605 = extractvalue { i32, i32 } %603, 1
  %606 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %596, i32 %598, i32 %604, i32 0) #28
  %607 = extractvalue { i32, i32 } %606, 0
  %608 = extractvalue { i32, i32 } %606, 1
  %609 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %595, i32 %598, i32 %605, i32 %608) #28
  %610 = extractvalue { i32, i32 } %609, 0
  %611 = extractvalue { i32, i32 } %609, 1
  %612 = zext i32 %610 to i64
  %613 = zext i32 %611 to i64
  %614 = shl nuw i64 %613, 32
  %615 = or disjoint i64 %614, %612
  %616 = zext i32 %601 to i64
  %617 = zext i32 %607 to i64
  %618 = shl nuw i64 %617, 32
  %619 = or disjoint i64 %618, %616
  %620 = xor i64 %615, %619
  %621 = add i64 %620, %588
  %622 = getelementptr inbounds nuw i8, ptr %578, i32 27
  %623 = load i64, ptr %622, align 1
  %624 = xor i64 %623, %584
  %625 = getelementptr inbounds nuw i8, ptr %578, i32 35
  %626 = load i64, ptr %625, align 1
  %627 = xor i64 %626, %583
  %628 = lshr i64 %624, 32
  %629 = trunc nuw i64 %628 to i32
  %630 = trunc i64 %624 to i32
  %631 = lshr i64 %627, 32
  %632 = trunc nuw i64 %631 to i32
  %633 = trunc i64 %627 to i32
  %634 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %630, i32 %633) #28
  %635 = extractvalue { i32, i32 } %634, 0
  %636 = extractvalue { i32, i32 } %634, 1
  %637 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %629, i32 %633, i32 0, i32 %636) #28
  %638 = extractvalue { i32, i32 } %637, 0
  %639 = extractvalue { i32, i32 } %637, 1
  %640 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %630, i32 %632, i32 %638, i32 0) #28
  %641 = extractvalue { i32, i32 } %640, 0
  %642 = extractvalue { i32, i32 } %640, 1
  %643 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %629, i32 %632, i32 %639, i32 %642) #28
  %644 = extractvalue { i32, i32 } %643, 0
  %645 = extractvalue { i32, i32 } %643, 1
  %646 = zext i32 %644 to i64
  %647 = zext i32 %645 to i64
  %648 = shl nuw i64 %647, 32
  %649 = or disjoint i64 %648, %646
  %650 = zext i32 %635 to i64
  %651 = zext i32 %641 to i64
  %652 = shl nuw i64 %651, 32
  %653 = or disjoint i64 %652, %650
  %654 = xor i64 %649, %653
  %655 = add i64 %621, %654
  %656 = getelementptr inbounds nuw i8, ptr %578, i32 43
  %657 = load i64, ptr %656, align 1
  %658 = xor i64 %657, %582
  %659 = getelementptr inbounds nuw i8, ptr %578, i32 51
  %660 = load i64, ptr %659, align 1
  %661 = xor i64 %660, %581
  %662 = lshr i64 %658, 32
  %663 = trunc nuw i64 %662 to i32
  %664 = trunc i64 %658 to i32
  %665 = lshr i64 %661, 32
  %666 = trunc nuw i64 %665 to i32
  %667 = trunc i64 %661 to i32
  %668 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %664, i32 %667) #28
  %669 = extractvalue { i32, i32 } %668, 0
  %670 = extractvalue { i32, i32 } %668, 1
  %671 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %663, i32 %667, i32 0, i32 %670) #28
  %672 = extractvalue { i32, i32 } %671, 0
  %673 = extractvalue { i32, i32 } %671, 1
  %674 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %664, i32 %666, i32 %672, i32 0) #28
  %675 = extractvalue { i32, i32 } %674, 0
  %676 = extractvalue { i32, i32 } %674, 1
  %677 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %663, i32 %666, i32 %673, i32 %676) #28
  %678 = extractvalue { i32, i32 } %677, 0
  %679 = extractvalue { i32, i32 } %677, 1
  %680 = zext i32 %678 to i64
  %681 = zext i32 %679 to i64
  %682 = shl nuw i64 %681, 32
  %683 = or disjoint i64 %682, %680
  %684 = zext i32 %669 to i64
  %685 = zext i32 %675 to i64
  %686 = shl nuw i64 %685, 32
  %687 = or disjoint i64 %686, %684
  %688 = xor i64 %683, %687
  %689 = add i64 %655, %688
  %690 = getelementptr inbounds nuw i8, ptr %578, i32 59
  %691 = load i64, ptr %690, align 1
  %692 = xor i64 %691, %580
  %693 = getelementptr inbounds nuw i8, ptr %578, i32 67
  %694 = load i64, ptr %693, align 1
  %695 = xor i64 %694, %579
  %696 = lshr i64 %692, 32
  %697 = trunc nuw i64 %696 to i32
  %698 = trunc i64 %692 to i32
  %699 = lshr i64 %695, 32
  %700 = trunc nuw i64 %699 to i32
  %701 = trunc i64 %695 to i32
  %702 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %698, i32 %701) #28
  %703 = extractvalue { i32, i32 } %702, 0
  %704 = extractvalue { i32, i32 } %702, 1
  %705 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %697, i32 %701, i32 0, i32 %704) #28
  %706 = extractvalue { i32, i32 } %705, 0
  %707 = extractvalue { i32, i32 } %705, 1
  %708 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %698, i32 %700, i32 %706, i32 0) #28
  %709 = extractvalue { i32, i32 } %708, 0
  %710 = extractvalue { i32, i32 } %708, 1
  %711 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %697, i32 %700, i32 %707, i32 %710) #28
  %712 = extractvalue { i32, i32 } %711, 0
  %713 = extractvalue { i32, i32 } %711, 1
  %714 = zext i32 %712 to i64
  %715 = zext i32 %713 to i64
  %716 = shl nuw i64 %715, 32
  %717 = or disjoint i64 %716, %714
  %718 = zext i32 %703 to i64
  %719 = zext i32 %709 to i64
  %720 = shl nuw i64 %719, 32
  %721 = or disjoint i64 %720, %718
  %722 = xor i64 %717, %721
  %723 = add i64 %689, %722
  %724 = lshr i64 %723, 37
  %725 = xor i64 %724, %723
  %726 = mul i64 %725, 1609587929392839161
  %727 = lshr i64 %726, 32
  %728 = xor i64 %727, %726
  %729 = getelementptr inbounds nuw i8, ptr %1, i32 524
  %730 = load i32, ptr %729, align 4
  %731 = getelementptr inbounds nuw i8, ptr %578, i32 %730
  %732 = getelementptr inbounds i8, ptr %731, i32 -11
  %733 = mul i64 %5, -4417276706812531889
  %734 = xor i64 %733, -1
  %735 = load i64, ptr %732, align 1
  %736 = xor i64 %735, %586
  %737 = getelementptr inbounds i8, ptr %731, i32 -3
  %738 = load i64, ptr %737, align 1
  %739 = xor i64 %738, %585
  %740 = lshr i64 %736, 32
  %741 = trunc nuw i64 %740 to i32
  %742 = trunc i64 %736 to i32
  %743 = lshr i64 %739, 32
  %744 = trunc nuw i64 %743 to i32
  %745 = trunc i64 %739 to i32
  %746 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %742, i32 %745) #28
  %747 = extractvalue { i32, i32 } %746, 0
  %748 = extractvalue { i32, i32 } %746, 1
  %749 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %741, i32 %745, i32 0, i32 %748) #28
  %750 = extractvalue { i32, i32 } %749, 0
  %751 = extractvalue { i32, i32 } %749, 1
  %752 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %742, i32 %744, i32 %750, i32 0) #28
  %753 = extractvalue { i32, i32 } %752, 0
  %754 = extractvalue { i32, i32 } %752, 1
  %755 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %741, i32 %744, i32 %751, i32 %754) #28
  %756 = extractvalue { i32, i32 } %755, 0
  %757 = extractvalue { i32, i32 } %755, 1
  %758 = zext i32 %756 to i64
  %759 = zext i32 %757 to i64
  %760 = shl nuw i64 %759, 32
  %761 = or disjoint i64 %760, %758
  %762 = zext i32 %747 to i64
  %763 = zext i32 %753 to i64
  %764 = shl nuw i64 %763, 32
  %765 = or disjoint i64 %764, %762
  %766 = xor i64 %761, %765
  %767 = add i64 %766, %734
  %768 = getelementptr inbounds nuw i8, ptr %731, i32 5
  %769 = load i64, ptr %768, align 1
  %770 = xor i64 %769, %584
  %771 = getelementptr inbounds nuw i8, ptr %731, i32 13
  %772 = load i64, ptr %771, align 1
  %773 = xor i64 %772, %583
  %774 = lshr i64 %770, 32
  %775 = trunc nuw i64 %774 to i32
  %776 = trunc i64 %770 to i32
  %777 = lshr i64 %773, 32
  %778 = trunc nuw i64 %777 to i32
  %779 = trunc i64 %773 to i32
  %780 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %776, i32 %779) #28
  %781 = extractvalue { i32, i32 } %780, 0
  %782 = extractvalue { i32, i32 } %780, 1
  %783 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %775, i32 %779, i32 0, i32 %782) #28
  %784 = extractvalue { i32, i32 } %783, 0
  %785 = extractvalue { i32, i32 } %783, 1
  %786 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %776, i32 %778, i32 %784, i32 0) #28
  %787 = extractvalue { i32, i32 } %786, 0
  %788 = extractvalue { i32, i32 } %786, 1
  %789 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %775, i32 %778, i32 %785, i32 %788) #28
  %790 = extractvalue { i32, i32 } %789, 0
  %791 = extractvalue { i32, i32 } %789, 1
  %792 = zext i32 %790 to i64
  %793 = zext i32 %791 to i64
  %794 = shl nuw i64 %793, 32
  %795 = or disjoint i64 %794, %792
  %796 = zext i32 %781 to i64
  %797 = zext i32 %787 to i64
  %798 = shl nuw i64 %797, 32
  %799 = or disjoint i64 %798, %796
  %800 = xor i64 %795, %799
  %801 = add i64 %767, %800
  %802 = getelementptr inbounds nuw i8, ptr %731, i32 21
  %803 = load i64, ptr %802, align 1
  %804 = xor i64 %803, %582
  %805 = getelementptr inbounds nuw i8, ptr %731, i32 29
  %806 = load i64, ptr %805, align 1
  %807 = xor i64 %806, %581
  %808 = lshr i64 %804, 32
  %809 = trunc nuw i64 %808 to i32
  %810 = trunc i64 %804 to i32
  %811 = lshr i64 %807, 32
  %812 = trunc nuw i64 %811 to i32
  %813 = trunc i64 %807 to i32
  %814 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %810, i32 %813) #28
  %815 = extractvalue { i32, i32 } %814, 0
  %816 = extractvalue { i32, i32 } %814, 1
  %817 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %809, i32 %813, i32 0, i32 %816) #28
  %818 = extractvalue { i32, i32 } %817, 0
  %819 = extractvalue { i32, i32 } %817, 1
  %820 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %810, i32 %812, i32 %818, i32 0) #28
  %821 = extractvalue { i32, i32 } %820, 0
  %822 = extractvalue { i32, i32 } %820, 1
  %823 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %809, i32 %812, i32 %819, i32 %822) #28
  %824 = extractvalue { i32, i32 } %823, 0
  %825 = extractvalue { i32, i32 } %823, 1
  %826 = zext i32 %824 to i64
  %827 = zext i32 %825 to i64
  %828 = shl nuw i64 %827, 32
  %829 = or disjoint i64 %828, %826
  %830 = zext i32 %815 to i64
  %831 = zext i32 %821 to i64
  %832 = shl nuw i64 %831, 32
  %833 = or disjoint i64 %832, %830
  %834 = xor i64 %829, %833
  %835 = add i64 %801, %834
  %836 = getelementptr inbounds nuw i8, ptr %731, i32 37
  %837 = load i64, ptr %836, align 1
  %838 = xor i64 %837, %580
  %839 = getelementptr inbounds nuw i8, ptr %731, i32 45
  %840 = load i64, ptr %839, align 1
  %841 = xor i64 %840, %579
  %842 = lshr i64 %838, 32
  %843 = trunc nuw i64 %842 to i32
  %844 = trunc i64 %838 to i32
  %845 = lshr i64 %841, 32
  %846 = trunc nuw i64 %845 to i32
  %847 = trunc i64 %841 to i32
  %848 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %844, i32 %847) #28
  %849 = extractvalue { i32, i32 } %848, 0
  %850 = extractvalue { i32, i32 } %848, 1
  %851 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %843, i32 %847, i32 0, i32 %850) #28
  %852 = extractvalue { i32, i32 } %851, 0
  %853 = extractvalue { i32, i32 } %851, 1
  %854 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %844, i32 %846, i32 %852, i32 0) #28
  %855 = extractvalue { i32, i32 } %854, 0
  %856 = extractvalue { i32, i32 } %854, 1
  %857 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %843, i32 %846, i32 %853, i32 %856) #28
  %858 = extractvalue { i32, i32 } %857, 0
  %859 = extractvalue { i32, i32 } %857, 1
  %860 = zext i32 %858 to i64
  %861 = zext i32 %859 to i64
  %862 = shl nuw i64 %861, 32
  %863 = or disjoint i64 %862, %860
  %864 = zext i32 %849 to i64
  %865 = zext i32 %855 to i64
  %866 = shl nuw i64 %865, 32
  %867 = or disjoint i64 %866, %864
  %868 = xor i64 %863, %867
  %869 = add i64 %835, %868
  %870 = lshr i64 %869, 37
  %871 = xor i64 %870, %869
  %872 = mul i64 %871, 1609587929392839161
  %873 = lshr i64 %872, 32
  %874 = xor i64 %873, %872
  store i64 %728, ptr %0, align 8
  %875 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %874, ptr %875, align 8
  br label %1863

876:                                              ; preds = %2
  %877 = getelementptr inbounds nuw i8, ptr %1, i32 544
  %878 = load i64, ptr %877, align 32
  %879 = icmp eq i64 %878, 0
  %880 = getelementptr inbounds nuw i8, ptr %1, i32 256
  %881 = trunc nuw nsw i64 %5 to i32
  br i1 %879, label %1363, label %882

882:                                              ; preds = %876
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %883 = icmp samesign ult i32 %881, 17
  br i1 %883, label %884, label %1034

884:                                              ; preds = %882
  %885 = icmp samesign ugt i32 %881, 8
  br i1 %885, label %886, label %953

886:                                              ; preds = %884
  %887 = load i64, ptr %880, align 1, !noalias !96
  %888 = add i64 %878, -4734510112055689544
  %889 = xor i64 %887, %888
  %890 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %891 = getelementptr inbounds i8, ptr %890, i32 -8
  %892 = load i64, ptr %891, align 1, !noalias !96
  %893 = sub i64 2066345149520216444, %878
  %894 = xor i64 %892, %893
  %895 = xor i64 %889, %894
  %896 = lshr i64 %895, 32
  %897 = mul nuw i64 %896, 2654435761
  %898 = and i64 %895, 4294967295
  %899 = mul nuw i64 %898, 2654435761
  %900 = mul nuw i64 %896, 2246822535
  %901 = mul nuw i64 %898, 2246822535
  %902 = mul i64 %898, -7046029288634856825
  %903 = icmp ult i64 %902, %901
  %904 = zext i1 %903 to i64
  %905 = add i64 %899, %900
  %906 = shl i64 %905, 32
  %907 = add i64 %906, %901
  %908 = icmp ult i64 %907, %902
  %909 = zext i1 %908 to i64
  %910 = lshr i64 %899, 32
  %911 = lshr i64 %900, 32
  %912 = mul i64 %894, -7046029288634856825
  %913 = add i64 %897, %912
  %914 = add i64 %913, %910
  %915 = add i64 %914, %911
  %916 = add i64 %915, %904
  %917 = add i64 %916, %909
  %918 = lshr i64 %917, 32
  %919 = lshr i64 %907, 32
  %920 = mul nuw i64 %919, 3266489917
  %921 = and i64 %901, 4294967295
  %922 = xor i64 %918, %921
  %923 = mul nuw i64 %922, 3266489917
  %924 = mul nuw nsw i64 %919, 668265295
  %925 = mul nuw nsw i64 %922, 668265295
  %926 = mul i64 %922, -4417276706812531889
  %927 = icmp ult i64 %926, %925
  %928 = zext i1 %927 to i64
  %929 = add nuw i64 %923, %924
  %930 = shl i64 %929, 32
  %931 = add i64 %930, %925
  %932 = icmp ult i64 %931, %926
  %933 = zext i1 %932 to i64
  %934 = lshr i64 %923, 32
  %935 = lshr i64 %924, 32
  %936 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %937 = mul i64 %917, -4417276706812531889
  %938 = add nuw i64 %935, %920
  %939 = add i64 %938, %937
  %940 = add i64 %939, %934
  %941 = add i64 %940, %928
  %942 = add i64 %941, %933
  %943 = lshr i64 %931, 37
  %944 = xor i64 %943, %931
  %945 = mul i64 %944, 1609587929392839161
  %946 = lshr i64 %945, 32
  %947 = xor i64 %946, %945
  store i64 %947, ptr %0, align 8, !alias.scope !99
  %948 = lshr i64 %942, 37
  %949 = xor i64 %948, %942
  %950 = mul i64 %949, 1609587929392839161
  %951 = lshr i64 %950, 32
  %952 = xor i64 %951, %950
  store i64 %952, ptr %936, align 8, !alias.scope !99
  br label %1863

953:                                              ; preds = %884
  %954 = icmp samesign ugt i32 %881, 3
  br i1 %954, label %955, label %994

955:                                              ; preds = %953
  %956 = load i32, ptr %880, align 1, !noalias !96
  %957 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %958 = getelementptr inbounds i8, ptr %957, i32 -4
  %959 = load i32, ptr %958, align 1, !noalias !96
  %960 = zext i32 %956 to i64
  %961 = zext i32 %959 to i64
  %962 = shl nuw i64 %961, 32
  %963 = or disjoint i64 %962, %960
  %964 = tail call noundef i64 @llvm.bswap.i64(i64 %963)
  %965 = add i64 %878, -4734510112055689544
  %966 = xor i64 %963, %965
  %967 = sub i64 2066345149520216444, %878
  %968 = xor i64 %964, %967
  %969 = lshr i64 %966, 51
  %970 = xor i64 %969, %966
  %971 = mul i64 %970, 2654435761
  %972 = add i64 %971, %5
  %973 = lshr i64 %972, 47
  %974 = xor i64 %973, %972
  %975 = mul i64 %974, -4417276706812531889
  %976 = lshr i64 %968, 47
  %977 = xor i64 %976, %968
  %978 = mul i64 %977, -7046029288634856825
  %979 = sub i64 %978, %5
  %980 = lshr i64 %979, 43
  %981 = xor i64 %980, %979
  %982 = mul i64 %981, -8796714831421723037
  %983 = lshr i64 %975, 37
  %984 = xor i64 %983, %975
  %985 = mul i64 %984, 1609587929392839161
  %986 = lshr i64 %985, 32
  %987 = xor i64 %986, %985
  store i64 %987, ptr %0, align 8, !alias.scope !102
  %988 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %989 = lshr i64 %982, 37
  %990 = xor i64 %989, %982
  %991 = mul i64 %990, 1609587929392839161
  %992 = lshr i64 %991, 32
  %993 = xor i64 %992, %991
  store i64 %993, ptr %988, align 8, !alias.scope !102
  br label %1863

994:                                              ; preds = %953
  %995 = icmp eq i32 %881, 0
  br i1 %995, label %1033, label %996

996:                                              ; preds = %994
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %997 = load i8, ptr %880, align 1, !noalias !108
  %998 = lshr i32 %881, 1
  %999 = getelementptr inbounds nuw i8, ptr %880, i32 %998
  %1000 = load i8, ptr %999, align 1, !noalias !108
  %1001 = getelementptr i8, ptr %880, i32 %881
  %1002 = getelementptr i8, ptr %1001, i32 -1
  %1003 = load i8, ptr %1002, align 1, !noalias !108
  %1004 = zext i8 %997 to i32
  %1005 = zext i8 %1000 to i32
  %1006 = shl nuw nsw i32 %1005, 8
  %1007 = or disjoint i32 %1006, %1004
  %1008 = zext i8 %1003 to i32
  %1009 = shl nuw nsw i32 %1008, 16
  %1010 = or disjoint i32 %1007, %1009
  %1011 = shl nuw nsw i32 %881, 24
  %1012 = or disjoint i32 %1010, %1011
  %1013 = tail call noundef i32 @llvm.bswap.i32(i32 %1012)
  %1014 = zext nneg i32 %1012 to i64
  %1015 = add i64 %878, 963444408
  %1016 = xor i64 %1015, %1014
  %1017 = zext i32 %1013 to i64
  %1018 = sub i64 3192628259, %878
  %1019 = xor i64 %1018, %1017
  %1020 = mul i64 %1016, -7046029288634856825
  %1021 = mul i64 %1019, -4417276706812531889
  %1022 = lshr i64 %1020, 37
  %1023 = xor i64 %1022, %1020
  %1024 = mul i64 %1023, 1609587929392839161
  %1025 = lshr i64 %1024, 32
  %1026 = xor i64 %1025, %1024
  store i64 %1026, ptr %0, align 8, !alias.scope !108
  %1027 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1028 = lshr i64 %1021, 37
  %1029 = xor i64 %1028, %1021
  %1030 = mul i64 %1029, 1609587929392839161
  %1031 = lshr i64 %1030, 32
  %1032 = xor i64 %1031, %1030
  store i64 %1032, ptr %1027, align 8, !alias.scope !108
  br label %1863

1033:                                             ; preds = %994
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !109
  br label %1863

1034:                                             ; preds = %882
  %1035 = icmp samesign ult i32 %881, 129
  br i1 %1035, label %1036, label %1362

1036:                                             ; preds = %1034
  %1037 = mul i64 %5, -7046029288634856825
  %1038 = icmp samesign ugt i32 %881, 32
  br i1 %1038, label %1039, label %1268

1039:                                             ; preds = %1036
  %1040 = icmp samesign ugt i32 %881, 64
  br i1 %1040, label %1041, label %1192

1041:                                             ; preds = %1039
  %1042 = icmp samesign ugt i32 %881, 96
  br i1 %1042, label %1043, label %1116

1043:                                             ; preds = %1041
  %1044 = getelementptr inbounds nuw i8, ptr %1, i32 304
  %1045 = load i64, ptr %1044, align 1, !noalias !96
  %1046 = getelementptr inbounds nuw i8, ptr %1, i32 312
  %1047 = load i64, ptr %1046, align 1, !noalias !96
  %1048 = add i64 %878, 4554437623014685352
  %1049 = xor i64 %1045, %1048
  %1050 = sub i64 2111919702937427193, %878
  %1051 = xor i64 %1047, %1050
  %1052 = lshr i64 %1049, 32
  %1053 = trunc nuw i64 %1052 to i32
  %1054 = trunc i64 %1049 to i32
  %1055 = lshr i64 %1051, 32
  %1056 = trunc nuw i64 %1055 to i32
  %1057 = trunc i64 %1051 to i32
  %1058 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1054, i32 %1057) #28
  %1059 = extractvalue { i32, i32 } %1058, 0
  %1060 = extractvalue { i32, i32 } %1058, 1
  %1061 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1053, i32 %1057, i32 0, i32 %1060) #28
  %1062 = extractvalue { i32, i32 } %1061, 0
  %1063 = extractvalue { i32, i32 } %1061, 1
  %1064 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1054, i32 %1056, i32 %1062, i32 0) #28
  %1065 = extractvalue { i32, i32 } %1064, 0
  %1066 = extractvalue { i32, i32 } %1064, 1
  %1067 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1053, i32 %1056, i32 %1063, i32 %1066) #28
  %1068 = extractvalue { i32, i32 } %1067, 0
  %1069 = extractvalue { i32, i32 } %1067, 1
  %1070 = zext i32 %1068 to i64
  %1071 = zext i32 %1069 to i64
  %1072 = shl nuw i64 %1071, 32
  %1073 = or disjoint i64 %1072, %1070
  %1074 = zext i32 %1059 to i64
  %1075 = zext i32 %1065 to i64
  %1076 = shl nuw i64 %1075, 32
  %1077 = or disjoint i64 %1076, %1074
  %1078 = xor i64 %1073, %1077
  %1079 = add i64 %1078, %1037
  %1080 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %1081 = getelementptr inbounds i8, ptr %1080, i32 -64
  %1082 = load i64, ptr %1081, align 1, !noalias !96
  %1083 = getelementptr inbounds i8, ptr %1080, i32 -56
  %1084 = load i64, ptr %1083, align 1, !noalias !96
  %1085 = add i64 %878, 3556072174620004746
  %1086 = xor i64 %1082, %1085
  %1087 = sub i64 7238261902898274248, %878
  %1088 = xor i64 %1084, %1087
  %1089 = lshr i64 %1086, 32
  %1090 = trunc nuw i64 %1089 to i32
  %1091 = trunc i64 %1086 to i32
  %1092 = lshr i64 %1088, 32
  %1093 = trunc nuw i64 %1092 to i32
  %1094 = trunc i64 %1088 to i32
  %1095 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1091, i32 %1094) #28
  %1096 = extractvalue { i32, i32 } %1095, 0
  %1097 = extractvalue { i32, i32 } %1095, 1
  %1098 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1090, i32 %1094, i32 0, i32 %1097) #28
  %1099 = extractvalue { i32, i32 } %1098, 0
  %1100 = extractvalue { i32, i32 } %1098, 1
  %1101 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1091, i32 %1093, i32 %1099, i32 0) #28
  %1102 = extractvalue { i32, i32 } %1101, 0
  %1103 = extractvalue { i32, i32 } %1101, 1
  %1104 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1090, i32 %1093, i32 %1100, i32 %1103) #28
  %1105 = extractvalue { i32, i32 } %1104, 0
  %1106 = extractvalue { i32, i32 } %1104, 1
  %1107 = zext i32 %1105 to i64
  %1108 = zext i32 %1106 to i64
  %1109 = shl nuw i64 %1108, 32
  %1110 = or disjoint i64 %1109, %1107
  %1111 = zext i32 %1096 to i64
  %1112 = zext i32 %1102 to i64
  %1113 = shl nuw i64 %1112, 32
  %1114 = or disjoint i64 %1113, %1111
  %1115 = xor i64 %1110, %1114
  br label %1116

1116:                                             ; preds = %1043, %1041
  %1117 = phi i64 [ %1115, %1043 ], [ 0, %1041 ]
  %1118 = phi i64 [ %1079, %1043 ], [ %1037, %1041 ]
  %1119 = getelementptr inbounds nuw i8, ptr %1, i32 288
  %1120 = load i64, ptr %1119, align 1, !noalias !96
  %1121 = getelementptr inbounds nuw i8, ptr %1, i32 296
  %1122 = load i64, ptr %1121, align 1, !noalias !96
  %1123 = add i64 %878, -3818837453329782724
  %1124 = xor i64 %1120, %1123
  %1125 = sub i64 -6688317018830679928, %878
  %1126 = xor i64 %1122, %1125
  %1127 = lshr i64 %1124, 32
  %1128 = trunc nuw i64 %1127 to i32
  %1129 = trunc i64 %1124 to i32
  %1130 = lshr i64 %1126, 32
  %1131 = trunc nuw i64 %1130 to i32
  %1132 = trunc i64 %1126 to i32
  %1133 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1129, i32 %1132) #28
  %1134 = extractvalue { i32, i32 } %1133, 0
  %1135 = extractvalue { i32, i32 } %1133, 1
  %1136 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1128, i32 %1132, i32 0, i32 %1135) #28
  %1137 = extractvalue { i32, i32 } %1136, 0
  %1138 = extractvalue { i32, i32 } %1136, 1
  %1139 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1129, i32 %1131, i32 %1137, i32 0) #28
  %1140 = extractvalue { i32, i32 } %1139, 0
  %1141 = extractvalue { i32, i32 } %1139, 1
  %1142 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1128, i32 %1131, i32 %1138, i32 %1141) #28
  %1143 = extractvalue { i32, i32 } %1142, 0
  %1144 = extractvalue { i32, i32 } %1142, 1
  %1145 = zext i32 %1143 to i64
  %1146 = zext i32 %1144 to i64
  %1147 = shl nuw i64 %1146, 32
  %1148 = or disjoint i64 %1147, %1145
  %1149 = zext i32 %1134 to i64
  %1150 = zext i32 %1140 to i64
  %1151 = shl nuw i64 %1150, 32
  %1152 = or disjoint i64 %1151, %1149
  %1153 = xor i64 %1148, %1152
  %1154 = add i64 %1153, %1118
  %1155 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %1156 = getelementptr inbounds i8, ptr %1155, i32 -48
  %1157 = load i64, ptr %1156, align 1, !noalias !96
  %1158 = getelementptr inbounds i8, ptr %1155, i32 -40
  %1159 = load i64, ptr %1158, align 1, !noalias !96
  %1160 = add i64 %878, 5690594596133299313
  %1161 = xor i64 %1157, %1160
  %1162 = sub i64 -2833645246901970632, %878
  %1163 = xor i64 %1159, %1162
  %1164 = lshr i64 %1161, 32
  %1165 = trunc nuw i64 %1164 to i32
  %1166 = trunc i64 %1161 to i32
  %1167 = lshr i64 %1163, 32
  %1168 = trunc nuw i64 %1167 to i32
  %1169 = trunc i64 %1163 to i32
  %1170 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1166, i32 %1169) #28
  %1171 = extractvalue { i32, i32 } %1170, 0
  %1172 = extractvalue { i32, i32 } %1170, 1
  %1173 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1165, i32 %1169, i32 0, i32 %1172) #28
  %1174 = extractvalue { i32, i32 } %1173, 0
  %1175 = extractvalue { i32, i32 } %1173, 1
  %1176 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1166, i32 %1168, i32 %1174, i32 0) #28
  %1177 = extractvalue { i32, i32 } %1176, 0
  %1178 = extractvalue { i32, i32 } %1176, 1
  %1179 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1165, i32 %1168, i32 %1175, i32 %1178) #28
  %1180 = extractvalue { i32, i32 } %1179, 0
  %1181 = extractvalue { i32, i32 } %1179, 1
  %1182 = zext i32 %1180 to i64
  %1183 = zext i32 %1181 to i64
  %1184 = shl nuw i64 %1183, 32
  %1185 = or disjoint i64 %1184, %1182
  %1186 = zext i32 %1171 to i64
  %1187 = zext i32 %1177 to i64
  %1188 = shl nuw i64 %1187, 32
  %1189 = or disjoint i64 %1188, %1186
  %1190 = xor i64 %1185, %1189
  %1191 = add i64 %1190, %1117
  br label %1192

1192:                                             ; preds = %1116, %1039
  %1193 = phi i64 [ %1191, %1116 ], [ 0, %1039 ]
  %1194 = phi i64 [ %1154, %1116 ], [ %1037, %1039 ]
  %1195 = getelementptr inbounds nuw i8, ptr %1, i32 272
  %1196 = load i64, ptr %1195, align 1, !noalias !96
  %1197 = getelementptr inbounds nuw i8, ptr %1, i32 280
  %1198 = load i64, ptr %1197, align 1, !noalias !96
  %1199 = add i64 %878, 8711581037947681227
  %1200 = xor i64 %1196, %1199
  %1201 = sub i64 2410270004345854594, %878
  %1202 = xor i64 %1198, %1201
  %1203 = lshr i64 %1200, 32
  %1204 = trunc nuw i64 %1203 to i32
  %1205 = trunc i64 %1200 to i32
  %1206 = lshr i64 %1202, 32
  %1207 = trunc nuw i64 %1206 to i32
  %1208 = trunc i64 %1202 to i32
  %1209 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1205, i32 %1208) #28
  %1210 = extractvalue { i32, i32 } %1209, 0
  %1211 = extractvalue { i32, i32 } %1209, 1
  %1212 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1204, i32 %1208, i32 0, i32 %1211) #28
  %1213 = extractvalue { i32, i32 } %1212, 0
  %1214 = extractvalue { i32, i32 } %1212, 1
  %1215 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1205, i32 %1207, i32 %1213, i32 0) #28
  %1216 = extractvalue { i32, i32 } %1215, 0
  %1217 = extractvalue { i32, i32 } %1215, 1
  %1218 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1204, i32 %1207, i32 %1214, i32 %1217) #28
  %1219 = extractvalue { i32, i32 } %1218, 0
  %1220 = extractvalue { i32, i32 } %1218, 1
  %1221 = zext i32 %1219 to i64
  %1222 = zext i32 %1220 to i64
  %1223 = shl nuw i64 %1222, 32
  %1224 = or disjoint i64 %1223, %1221
  %1225 = zext i32 %1210 to i64
  %1226 = zext i32 %1216 to i64
  %1227 = shl nuw i64 %1226, 32
  %1228 = or disjoint i64 %1227, %1225
  %1229 = xor i64 %1224, %1228
  %1230 = add i64 %1229, %1194
  %1231 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %1232 = getelementptr inbounds i8, ptr %1231, i32 -32
  %1233 = load i64, ptr %1232, align 1, !noalias !96
  %1234 = getelementptr inbounds i8, ptr %1231, i32 -24
  %1235 = load i64, ptr %1234, align 1, !noalias !96
  %1236 = add i64 %878, -8204357891075471176
  %1237 = xor i64 %1233, %1236
  %1238 = sub i64 5487137525590930912, %878
  %1239 = xor i64 %1235, %1238
  %1240 = lshr i64 %1237, 32
  %1241 = trunc nuw i64 %1240 to i32
  %1242 = trunc i64 %1237 to i32
  %1243 = lshr i64 %1239, 32
  %1244 = trunc nuw i64 %1243 to i32
  %1245 = trunc i64 %1239 to i32
  %1246 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1242, i32 %1245) #28
  %1247 = extractvalue { i32, i32 } %1246, 0
  %1248 = extractvalue { i32, i32 } %1246, 1
  %1249 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1241, i32 %1245, i32 0, i32 %1248) #28
  %1250 = extractvalue { i32, i32 } %1249, 0
  %1251 = extractvalue { i32, i32 } %1249, 1
  %1252 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1242, i32 %1244, i32 %1250, i32 0) #28
  %1253 = extractvalue { i32, i32 } %1252, 0
  %1254 = extractvalue { i32, i32 } %1252, 1
  %1255 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1241, i32 %1244, i32 %1251, i32 %1254) #28
  %1256 = extractvalue { i32, i32 } %1255, 0
  %1257 = extractvalue { i32, i32 } %1255, 1
  %1258 = zext i32 %1256 to i64
  %1259 = zext i32 %1257 to i64
  %1260 = shl nuw i64 %1259, 32
  %1261 = or disjoint i64 %1260, %1258
  %1262 = zext i32 %1247 to i64
  %1263 = zext i32 %1253 to i64
  %1264 = shl nuw i64 %1263, 32
  %1265 = or disjoint i64 %1264, %1262
  %1266 = xor i64 %1261, %1265
  %1267 = add i64 %1266, %1193
  br label %1268

1268:                                             ; preds = %1192, %1036
  %1269 = phi i64 [ %1267, %1192 ], [ 0, %1036 ]
  %1270 = phi i64 [ %1230, %1192 ], [ %1037, %1036 ]
  %1271 = load i64, ptr %880, align 1, !noalias !96
  %1272 = getelementptr inbounds nuw i8, ptr %1, i32 264
  %1273 = load i64, ptr %1272, align 1, !noalias !96
  %1274 = add i64 %878, -4734510112055689544
  %1275 = xor i64 %1271, %1274
  %1276 = sub i64 2066345149520216444, %878
  %1277 = xor i64 %1273, %1276
  %1278 = lshr i64 %1275, 32
  %1279 = trunc nuw i64 %1278 to i32
  %1280 = trunc i64 %1275 to i32
  %1281 = lshr i64 %1277, 32
  %1282 = trunc nuw i64 %1281 to i32
  %1283 = trunc i64 %1277 to i32
  %1284 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1280, i32 %1283) #28
  %1285 = extractvalue { i32, i32 } %1284, 0
  %1286 = extractvalue { i32, i32 } %1284, 1
  %1287 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1279, i32 %1283, i32 0, i32 %1286) #28
  %1288 = extractvalue { i32, i32 } %1287, 0
  %1289 = extractvalue { i32, i32 } %1287, 1
  %1290 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1280, i32 %1282, i32 %1288, i32 0) #28
  %1291 = extractvalue { i32, i32 } %1290, 0
  %1292 = extractvalue { i32, i32 } %1290, 1
  %1293 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1279, i32 %1282, i32 %1289, i32 %1292) #28
  %1294 = extractvalue { i32, i32 } %1293, 0
  %1295 = extractvalue { i32, i32 } %1293, 1
  %1296 = zext i32 %1294 to i64
  %1297 = zext i32 %1295 to i64
  %1298 = shl nuw i64 %1297, 32
  %1299 = or disjoint i64 %1298, %1296
  %1300 = zext i32 %1285 to i64
  %1301 = zext i32 %1291 to i64
  %1302 = shl nuw i64 %1301, 32
  %1303 = or disjoint i64 %1302, %1300
  %1304 = xor i64 %1299, %1303
  %1305 = add i64 %1304, %1270
  %1306 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %1307 = getelementptr inbounds i8, ptr %1306, i32 -16
  %1308 = load i64, ptr %1307, align 1, !noalias !96
  %1309 = getelementptr inbounds i8, ptr %1306, i32 -8
  %1310 = load i64, ptr %1309, align 1, !noalias !96
  %1311 = add i64 %878, -2623469361688619810
  %1312 = xor i64 %1308, %1311
  %1313 = sub i64 2262974939099578482, %878
  %1314 = xor i64 %1310, %1313
  %1315 = lshr i64 %1312, 32
  %1316 = trunc nuw i64 %1315 to i32
  %1317 = trunc i64 %1312 to i32
  %1318 = lshr i64 %1314, 32
  %1319 = trunc nuw i64 %1318 to i32
  %1320 = trunc i64 %1314 to i32
  %1321 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1317, i32 %1320) #28
  %1322 = extractvalue { i32, i32 } %1321, 0
  %1323 = extractvalue { i32, i32 } %1321, 1
  %1324 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1316, i32 %1320, i32 0, i32 %1323) #28
  %1325 = extractvalue { i32, i32 } %1324, 0
  %1326 = extractvalue { i32, i32 } %1324, 1
  %1327 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1317, i32 %1319, i32 %1325, i32 0) #28
  %1328 = extractvalue { i32, i32 } %1327, 0
  %1329 = extractvalue { i32, i32 } %1327, 1
  %1330 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1316, i32 %1319, i32 %1326, i32 %1329) #28
  %1331 = extractvalue { i32, i32 } %1330, 0
  %1332 = extractvalue { i32, i32 } %1330, 1
  %1333 = zext i32 %1331 to i64
  %1334 = zext i32 %1332 to i64
  %1335 = shl nuw i64 %1334, 32
  %1336 = or disjoint i64 %1335, %1333
  %1337 = zext i32 %1322 to i64
  %1338 = zext i32 %1328 to i64
  %1339 = shl nuw i64 %1338, 32
  %1340 = or disjoint i64 %1339, %1337
  %1341 = xor i64 %1336, %1340
  %1342 = add i64 %1341, %1269
  %1343 = add i64 %1342, %1305
  %1344 = mul i64 %1305, -7046029288634856825
  %1345 = mul i64 %1342, -8796714831421723037
  %1346 = sub i64 %5, %878
  %1347 = mul i64 %1346, -4417276706812531889
  %1348 = add i64 %1344, %1347
  %1349 = add i64 %1348, %1345
  %1350 = lshr i64 %1343, 37
  %1351 = xor i64 %1350, %1343
  %1352 = mul i64 %1351, 1609587929392839161
  %1353 = lshr i64 %1352, 32
  %1354 = xor i64 %1353, %1352
  store i64 %1354, ptr %0, align 8, !alias.scope !112
  %1355 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1356 = lshr i64 %1349, 37
  %1357 = xor i64 %1356, %1349
  %1358 = mul i64 %1357, 1609587929392839161
  %1359 = lshr i64 %1358, 32
  %1360 = xor i64 %1359, %1358
  %1361 = sub i64 0, %1360
  store i64 %1361, ptr %1355, align 8, !alias.scope !112
  br label %1863

1362:                                             ; preds = %1034
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull readonly %880, i32 noundef %881, ptr noundef nonnull @kSecret, i64 noundef %878)
  br label %1863

1363:                                             ; preds = %876
  %1364 = getelementptr inbounds nuw i8, ptr %1, i32 560
  %1365 = load ptr, ptr %1364, align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %1366 = icmp samesign ult i32 %881, 17
  br i1 %1366, label %1367, label %1520

1367:                                             ; preds = %1363
  %1368 = icmp samesign ugt i32 %881, 8
  br i1 %1368, label %1369, label %1437

1369:                                             ; preds = %1367
  %1370 = load i64, ptr %880, align 1, !noalias !115
  %1371 = load i64, ptr %1365, align 1, !noalias !115
  %1372 = xor i64 %1371, %1370
  %1373 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %1374 = getelementptr inbounds i8, ptr %1373, i32 -8
  %1375 = load i64, ptr %1374, align 1, !noalias !115
  %1376 = getelementptr inbounds nuw i8, ptr %1365, i32 8
  %1377 = load i64, ptr %1376, align 1, !noalias !115
  %1378 = xor i64 %1377, %1375
  %1379 = xor i64 %1372, %1378
  %1380 = lshr i64 %1379, 32
  %1381 = mul nuw i64 %1380, 2654435761
  %1382 = and i64 %1379, 4294967295
  %1383 = mul nuw i64 %1382, 2654435761
  %1384 = mul nuw i64 %1380, 2246822535
  %1385 = mul nuw i64 %1382, 2246822535
  %1386 = mul i64 %1382, -7046029288634856825
  %1387 = icmp ult i64 %1386, %1385
  %1388 = zext i1 %1387 to i64
  %1389 = add i64 %1383, %1384
  %1390 = shl i64 %1389, 32
  %1391 = add i64 %1390, %1385
  %1392 = icmp ult i64 %1391, %1386
  %1393 = zext i1 %1392 to i64
  %1394 = lshr i64 %1383, 32
  %1395 = lshr i64 %1384, 32
  %1396 = mul i64 %1378, -7046029288634856825
  %1397 = add i64 %1381, %1396
  %1398 = add i64 %1397, %1394
  %1399 = add i64 %1398, %1395
  %1400 = add i64 %1399, %1388
  %1401 = add i64 %1400, %1393
  %1402 = lshr i64 %1401, 32
  %1403 = lshr i64 %1391, 32
  %1404 = mul nuw i64 %1403, 3266489917
  %1405 = and i64 %1385, 4294967295
  %1406 = xor i64 %1402, %1405
  %1407 = mul nuw i64 %1406, 3266489917
  %1408 = mul nuw nsw i64 %1403, 668265295
  %1409 = mul nuw nsw i64 %1406, 668265295
  %1410 = mul i64 %1406, -4417276706812531889
  %1411 = icmp ult i64 %1410, %1409
  %1412 = zext i1 %1411 to i64
  %1413 = add nuw i64 %1407, %1408
  %1414 = shl i64 %1413, 32
  %1415 = add i64 %1414, %1409
  %1416 = icmp ult i64 %1415, %1410
  %1417 = zext i1 %1416 to i64
  %1418 = lshr i64 %1407, 32
  %1419 = lshr i64 %1408, 32
  %1420 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1421 = mul i64 %1401, -4417276706812531889
  %1422 = add nuw i64 %1419, %1404
  %1423 = add i64 %1422, %1421
  %1424 = add i64 %1423, %1418
  %1425 = add i64 %1424, %1412
  %1426 = add i64 %1425, %1417
  %1427 = lshr i64 %1415, 37
  %1428 = xor i64 %1427, %1415
  %1429 = mul i64 %1428, 1609587929392839161
  %1430 = lshr i64 %1429, 32
  %1431 = xor i64 %1430, %1429
  store i64 %1431, ptr %0, align 8, !alias.scope !118
  %1432 = lshr i64 %1426, 37
  %1433 = xor i64 %1432, %1426
  %1434 = mul i64 %1433, 1609587929392839161
  %1435 = lshr i64 %1434, 32
  %1436 = xor i64 %1435, %1434
  store i64 %1436, ptr %1420, align 8, !alias.scope !118
  br label %1863

1437:                                             ; preds = %1367
  %1438 = icmp samesign ugt i32 %881, 3
  br i1 %1438, label %1439, label %1479

1439:                                             ; preds = %1437
  %1440 = load i32, ptr %880, align 1, !noalias !115
  %1441 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %1442 = getelementptr inbounds i8, ptr %1441, i32 -4
  %1443 = load i32, ptr %1442, align 1, !noalias !115
  %1444 = zext i32 %1440 to i64
  %1445 = zext i32 %1443 to i64
  %1446 = shl nuw i64 %1445, 32
  %1447 = or disjoint i64 %1446, %1444
  %1448 = tail call noundef i64 @llvm.bswap.i64(i64 %1447)
  %1449 = load i64, ptr %1365, align 1, !noalias !115
  %1450 = xor i64 %1447, %1449
  %1451 = getelementptr inbounds nuw i8, ptr %1365, i32 8
  %1452 = load i64, ptr %1451, align 1, !noalias !115
  %1453 = xor i64 %1448, %1452
  %1454 = lshr i64 %1450, 51
  %1455 = xor i64 %1454, %1450
  %1456 = mul i64 %1455, 2654435761
  %1457 = add i64 %1456, %5
  %1458 = lshr i64 %1457, 47
  %1459 = xor i64 %1458, %1457
  %1460 = mul i64 %1459, -4417276706812531889
  %1461 = lshr i64 %1453, 47
  %1462 = xor i64 %1461, %1453
  %1463 = mul i64 %1462, -7046029288634856825
  %1464 = sub i64 %1463, %5
  %1465 = lshr i64 %1464, 43
  %1466 = xor i64 %1465, %1464
  %1467 = mul i64 %1466, -8796714831421723037
  %1468 = lshr i64 %1460, 37
  %1469 = xor i64 %1468, %1460
  %1470 = mul i64 %1469, 1609587929392839161
  %1471 = lshr i64 %1470, 32
  %1472 = xor i64 %1471, %1470
  store i64 %1472, ptr %0, align 8, !alias.scope !121
  %1473 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1474 = lshr i64 %1467, 37
  %1475 = xor i64 %1474, %1467
  %1476 = mul i64 %1475, 1609587929392839161
  %1477 = lshr i64 %1476, 32
  %1478 = xor i64 %1477, %1476
  store i64 %1478, ptr %1473, align 8, !alias.scope !121
  br label %1863

1479:                                             ; preds = %1437
  %1480 = icmp eq i32 %881, 0
  br i1 %1480, label %1519, label %1481

1481:                                             ; preds = %1479
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %1482 = load i8, ptr %880, align 1, !noalias !127
  %1483 = lshr i32 %881, 1
  %1484 = getelementptr inbounds nuw i8, ptr %880, i32 %1483
  %1485 = load i8, ptr %1484, align 1, !noalias !127
  %1486 = getelementptr i8, ptr %880, i32 %881
  %1487 = getelementptr i8, ptr %1486, i32 -1
  %1488 = load i8, ptr %1487, align 1, !noalias !127
  %1489 = zext i8 %1482 to i32
  %1490 = zext i8 %1485 to i32
  %1491 = shl nuw nsw i32 %1490, 8
  %1492 = or disjoint i32 %1491, %1489
  %1493 = zext i8 %1488 to i32
  %1494 = shl nuw nsw i32 %1493, 16
  %1495 = or disjoint i32 %1492, %1494
  %1496 = shl nuw nsw i32 %881, 24
  %1497 = or disjoint i32 %1495, %1496
  %1498 = tail call noundef i32 @llvm.bswap.i32(i32 %1497)
  %1499 = load i32, ptr %1365, align 1, !noalias !115
  %1500 = xor i32 %1497, %1499
  %1501 = zext i32 %1500 to i64
  %1502 = getelementptr inbounds nuw i8, ptr %1365, i32 4
  %1503 = load i32, ptr %1502, align 1, !noalias !115
  %1504 = xor i32 %1498, %1503
  %1505 = zext i32 %1504 to i64
  %1506 = mul i64 %1501, -7046029288634856825
  %1507 = mul i64 %1505, -4417276706812531889
  %1508 = lshr i64 %1506, 37
  %1509 = xor i64 %1508, %1506
  %1510 = mul i64 %1509, 1609587929392839161
  %1511 = lshr i64 %1510, 32
  %1512 = xor i64 %1511, %1510
  store i64 %1512, ptr %0, align 8, !alias.scope !127
  %1513 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1514 = lshr i64 %1507, 37
  %1515 = xor i64 %1514, %1507
  %1516 = mul i64 %1515, 1609587929392839161
  %1517 = lshr i64 %1516, 32
  %1518 = xor i64 %1517, %1516
  store i64 %1518, ptr %1513, align 8, !alias.scope !127
  br label %1863

1519:                                             ; preds = %1479
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !128
  br label %1863

1520:                                             ; preds = %1363
  %1521 = icmp samesign ult i32 %881, 129
  br i1 %1521, label %1522, label %1862

1522:                                             ; preds = %1520
  %1523 = mul i64 %5, -7046029288634856825
  %1524 = icmp samesign ugt i32 %881, 32
  br i1 %1524, label %1525, label %1766

1525:                                             ; preds = %1522
  %1526 = icmp samesign ugt i32 %881, 64
  br i1 %1526, label %1527, label %1686

1527:                                             ; preds = %1525
  %1528 = icmp samesign ugt i32 %881, 96
  br i1 %1528, label %1529, label %1606

1529:                                             ; preds = %1527
  %1530 = getelementptr inbounds nuw i8, ptr %1, i32 304
  %1531 = getelementptr inbounds nuw i8, ptr %1365, i32 96
  %1532 = load i64, ptr %1530, align 1, !noalias !115
  %1533 = getelementptr inbounds nuw i8, ptr %1, i32 312
  %1534 = load i64, ptr %1533, align 1, !noalias !115
  %1535 = load i64, ptr %1531, align 1, !noalias !115
  %1536 = xor i64 %1535, %1532
  %1537 = getelementptr inbounds nuw i8, ptr %1365, i32 104
  %1538 = load i64, ptr %1537, align 1, !noalias !115
  %1539 = xor i64 %1538, %1534
  %1540 = lshr i64 %1536, 32
  %1541 = trunc nuw i64 %1540 to i32
  %1542 = trunc i64 %1536 to i32
  %1543 = lshr i64 %1539, 32
  %1544 = trunc nuw i64 %1543 to i32
  %1545 = trunc i64 %1539 to i32
  %1546 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1542, i32 %1545) #28
  %1547 = extractvalue { i32, i32 } %1546, 0
  %1548 = extractvalue { i32, i32 } %1546, 1
  %1549 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1541, i32 %1545, i32 0, i32 %1548) #28
  %1550 = extractvalue { i32, i32 } %1549, 0
  %1551 = extractvalue { i32, i32 } %1549, 1
  %1552 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1542, i32 %1544, i32 %1550, i32 0) #28
  %1553 = extractvalue { i32, i32 } %1552, 0
  %1554 = extractvalue { i32, i32 } %1552, 1
  %1555 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1541, i32 %1544, i32 %1551, i32 %1554) #28
  %1556 = extractvalue { i32, i32 } %1555, 0
  %1557 = extractvalue { i32, i32 } %1555, 1
  %1558 = zext i32 %1556 to i64
  %1559 = zext i32 %1557 to i64
  %1560 = shl nuw i64 %1559, 32
  %1561 = or disjoint i64 %1560, %1558
  %1562 = zext i32 %1547 to i64
  %1563 = zext i32 %1553 to i64
  %1564 = shl nuw i64 %1563, 32
  %1565 = or disjoint i64 %1564, %1562
  %1566 = xor i64 %1561, %1565
  %1567 = add i64 %1566, %1523
  %1568 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %1569 = getelementptr inbounds i8, ptr %1568, i32 -64
  %1570 = getelementptr inbounds nuw i8, ptr %1365, i32 112
  %1571 = load i64, ptr %1569, align 1, !noalias !115
  %1572 = getelementptr inbounds i8, ptr %1568, i32 -56
  %1573 = load i64, ptr %1572, align 1, !noalias !115
  %1574 = load i64, ptr %1570, align 1, !noalias !115
  %1575 = xor i64 %1574, %1571
  %1576 = getelementptr inbounds nuw i8, ptr %1365, i32 120
  %1577 = load i64, ptr %1576, align 1, !noalias !115
  %1578 = xor i64 %1577, %1573
  %1579 = lshr i64 %1575, 32
  %1580 = trunc nuw i64 %1579 to i32
  %1581 = trunc i64 %1575 to i32
  %1582 = lshr i64 %1578, 32
  %1583 = trunc nuw i64 %1582 to i32
  %1584 = trunc i64 %1578 to i32
  %1585 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1581, i32 %1584) #28
  %1586 = extractvalue { i32, i32 } %1585, 0
  %1587 = extractvalue { i32, i32 } %1585, 1
  %1588 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1580, i32 %1584, i32 0, i32 %1587) #28
  %1589 = extractvalue { i32, i32 } %1588, 0
  %1590 = extractvalue { i32, i32 } %1588, 1
  %1591 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1581, i32 %1583, i32 %1589, i32 0) #28
  %1592 = extractvalue { i32, i32 } %1591, 0
  %1593 = extractvalue { i32, i32 } %1591, 1
  %1594 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1580, i32 %1583, i32 %1590, i32 %1593) #28
  %1595 = extractvalue { i32, i32 } %1594, 0
  %1596 = extractvalue { i32, i32 } %1594, 1
  %1597 = zext i32 %1595 to i64
  %1598 = zext i32 %1596 to i64
  %1599 = shl nuw i64 %1598, 32
  %1600 = or disjoint i64 %1599, %1597
  %1601 = zext i32 %1586 to i64
  %1602 = zext i32 %1592 to i64
  %1603 = shl nuw i64 %1602, 32
  %1604 = or disjoint i64 %1603, %1601
  %1605 = xor i64 %1600, %1604
  br label %1606

1606:                                             ; preds = %1529, %1527
  %1607 = phi i64 [ %1605, %1529 ], [ 0, %1527 ]
  %1608 = phi i64 [ %1567, %1529 ], [ %1523, %1527 ]
  %1609 = getelementptr inbounds nuw i8, ptr %1, i32 288
  %1610 = getelementptr inbounds nuw i8, ptr %1365, i32 64
  %1611 = load i64, ptr %1609, align 1, !noalias !115
  %1612 = getelementptr inbounds nuw i8, ptr %1, i32 296
  %1613 = load i64, ptr %1612, align 1, !noalias !115
  %1614 = load i64, ptr %1610, align 1, !noalias !115
  %1615 = xor i64 %1614, %1611
  %1616 = getelementptr inbounds nuw i8, ptr %1365, i32 72
  %1617 = load i64, ptr %1616, align 1, !noalias !115
  %1618 = xor i64 %1617, %1613
  %1619 = lshr i64 %1615, 32
  %1620 = trunc nuw i64 %1619 to i32
  %1621 = trunc i64 %1615 to i32
  %1622 = lshr i64 %1618, 32
  %1623 = trunc nuw i64 %1622 to i32
  %1624 = trunc i64 %1618 to i32
  %1625 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1621, i32 %1624) #28
  %1626 = extractvalue { i32, i32 } %1625, 0
  %1627 = extractvalue { i32, i32 } %1625, 1
  %1628 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1620, i32 %1624, i32 0, i32 %1627) #28
  %1629 = extractvalue { i32, i32 } %1628, 0
  %1630 = extractvalue { i32, i32 } %1628, 1
  %1631 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1621, i32 %1623, i32 %1629, i32 0) #28
  %1632 = extractvalue { i32, i32 } %1631, 0
  %1633 = extractvalue { i32, i32 } %1631, 1
  %1634 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1620, i32 %1623, i32 %1630, i32 %1633) #28
  %1635 = extractvalue { i32, i32 } %1634, 0
  %1636 = extractvalue { i32, i32 } %1634, 1
  %1637 = zext i32 %1635 to i64
  %1638 = zext i32 %1636 to i64
  %1639 = shl nuw i64 %1638, 32
  %1640 = or disjoint i64 %1639, %1637
  %1641 = zext i32 %1626 to i64
  %1642 = zext i32 %1632 to i64
  %1643 = shl nuw i64 %1642, 32
  %1644 = or disjoint i64 %1643, %1641
  %1645 = xor i64 %1640, %1644
  %1646 = add i64 %1645, %1608
  %1647 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %1648 = getelementptr inbounds i8, ptr %1647, i32 -48
  %1649 = getelementptr inbounds nuw i8, ptr %1365, i32 80
  %1650 = load i64, ptr %1648, align 1, !noalias !115
  %1651 = getelementptr inbounds i8, ptr %1647, i32 -40
  %1652 = load i64, ptr %1651, align 1, !noalias !115
  %1653 = load i64, ptr %1649, align 1, !noalias !115
  %1654 = xor i64 %1653, %1650
  %1655 = getelementptr inbounds nuw i8, ptr %1365, i32 88
  %1656 = load i64, ptr %1655, align 1, !noalias !115
  %1657 = xor i64 %1656, %1652
  %1658 = lshr i64 %1654, 32
  %1659 = trunc nuw i64 %1658 to i32
  %1660 = trunc i64 %1654 to i32
  %1661 = lshr i64 %1657, 32
  %1662 = trunc nuw i64 %1661 to i32
  %1663 = trunc i64 %1657 to i32
  %1664 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1660, i32 %1663) #28
  %1665 = extractvalue { i32, i32 } %1664, 0
  %1666 = extractvalue { i32, i32 } %1664, 1
  %1667 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1659, i32 %1663, i32 0, i32 %1666) #28
  %1668 = extractvalue { i32, i32 } %1667, 0
  %1669 = extractvalue { i32, i32 } %1667, 1
  %1670 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1660, i32 %1662, i32 %1668, i32 0) #28
  %1671 = extractvalue { i32, i32 } %1670, 0
  %1672 = extractvalue { i32, i32 } %1670, 1
  %1673 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1659, i32 %1662, i32 %1669, i32 %1672) #28
  %1674 = extractvalue { i32, i32 } %1673, 0
  %1675 = extractvalue { i32, i32 } %1673, 1
  %1676 = zext i32 %1674 to i64
  %1677 = zext i32 %1675 to i64
  %1678 = shl nuw i64 %1677, 32
  %1679 = or disjoint i64 %1678, %1676
  %1680 = zext i32 %1665 to i64
  %1681 = zext i32 %1671 to i64
  %1682 = shl nuw i64 %1681, 32
  %1683 = or disjoint i64 %1682, %1680
  %1684 = xor i64 %1679, %1683
  %1685 = add i64 %1684, %1607
  br label %1686

1686:                                             ; preds = %1606, %1525
  %1687 = phi i64 [ %1685, %1606 ], [ 0, %1525 ]
  %1688 = phi i64 [ %1646, %1606 ], [ %1523, %1525 ]
  %1689 = getelementptr inbounds nuw i8, ptr %1, i32 272
  %1690 = getelementptr inbounds nuw i8, ptr %1365, i32 32
  %1691 = load i64, ptr %1689, align 1, !noalias !115
  %1692 = getelementptr inbounds nuw i8, ptr %1, i32 280
  %1693 = load i64, ptr %1692, align 1, !noalias !115
  %1694 = load i64, ptr %1690, align 1, !noalias !115
  %1695 = xor i64 %1694, %1691
  %1696 = getelementptr inbounds nuw i8, ptr %1365, i32 40
  %1697 = load i64, ptr %1696, align 1, !noalias !115
  %1698 = xor i64 %1697, %1693
  %1699 = lshr i64 %1695, 32
  %1700 = trunc nuw i64 %1699 to i32
  %1701 = trunc i64 %1695 to i32
  %1702 = lshr i64 %1698, 32
  %1703 = trunc nuw i64 %1702 to i32
  %1704 = trunc i64 %1698 to i32
  %1705 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1701, i32 %1704) #28
  %1706 = extractvalue { i32, i32 } %1705, 0
  %1707 = extractvalue { i32, i32 } %1705, 1
  %1708 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1700, i32 %1704, i32 0, i32 %1707) #28
  %1709 = extractvalue { i32, i32 } %1708, 0
  %1710 = extractvalue { i32, i32 } %1708, 1
  %1711 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1701, i32 %1703, i32 %1709, i32 0) #28
  %1712 = extractvalue { i32, i32 } %1711, 0
  %1713 = extractvalue { i32, i32 } %1711, 1
  %1714 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1700, i32 %1703, i32 %1710, i32 %1713) #28
  %1715 = extractvalue { i32, i32 } %1714, 0
  %1716 = extractvalue { i32, i32 } %1714, 1
  %1717 = zext i32 %1715 to i64
  %1718 = zext i32 %1716 to i64
  %1719 = shl nuw i64 %1718, 32
  %1720 = or disjoint i64 %1719, %1717
  %1721 = zext i32 %1706 to i64
  %1722 = zext i32 %1712 to i64
  %1723 = shl nuw i64 %1722, 32
  %1724 = or disjoint i64 %1723, %1721
  %1725 = xor i64 %1720, %1724
  %1726 = add i64 %1725, %1688
  %1727 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %1728 = getelementptr inbounds i8, ptr %1727, i32 -32
  %1729 = getelementptr inbounds nuw i8, ptr %1365, i32 48
  %1730 = load i64, ptr %1728, align 1, !noalias !115
  %1731 = getelementptr inbounds i8, ptr %1727, i32 -24
  %1732 = load i64, ptr %1731, align 1, !noalias !115
  %1733 = load i64, ptr %1729, align 1, !noalias !115
  %1734 = xor i64 %1733, %1730
  %1735 = getelementptr inbounds nuw i8, ptr %1365, i32 56
  %1736 = load i64, ptr %1735, align 1, !noalias !115
  %1737 = xor i64 %1736, %1732
  %1738 = lshr i64 %1734, 32
  %1739 = trunc nuw i64 %1738 to i32
  %1740 = trunc i64 %1734 to i32
  %1741 = lshr i64 %1737, 32
  %1742 = trunc nuw i64 %1741 to i32
  %1743 = trunc i64 %1737 to i32
  %1744 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1740, i32 %1743) #28
  %1745 = extractvalue { i32, i32 } %1744, 0
  %1746 = extractvalue { i32, i32 } %1744, 1
  %1747 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1739, i32 %1743, i32 0, i32 %1746) #28
  %1748 = extractvalue { i32, i32 } %1747, 0
  %1749 = extractvalue { i32, i32 } %1747, 1
  %1750 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1740, i32 %1742, i32 %1748, i32 0) #28
  %1751 = extractvalue { i32, i32 } %1750, 0
  %1752 = extractvalue { i32, i32 } %1750, 1
  %1753 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1739, i32 %1742, i32 %1749, i32 %1752) #28
  %1754 = extractvalue { i32, i32 } %1753, 0
  %1755 = extractvalue { i32, i32 } %1753, 1
  %1756 = zext i32 %1754 to i64
  %1757 = zext i32 %1755 to i64
  %1758 = shl nuw i64 %1757, 32
  %1759 = or disjoint i64 %1758, %1756
  %1760 = zext i32 %1745 to i64
  %1761 = zext i32 %1751 to i64
  %1762 = shl nuw i64 %1761, 32
  %1763 = or disjoint i64 %1762, %1760
  %1764 = xor i64 %1759, %1763
  %1765 = add i64 %1764, %1687
  br label %1766

1766:                                             ; preds = %1686, %1522
  %1767 = phi i64 [ %1765, %1686 ], [ 0, %1522 ]
  %1768 = phi i64 [ %1726, %1686 ], [ %1523, %1522 ]
  %1769 = load i64, ptr %880, align 1, !noalias !115
  %1770 = getelementptr inbounds nuw i8, ptr %1, i32 264
  %1771 = load i64, ptr %1770, align 1, !noalias !115
  %1772 = load i64, ptr %1365, align 1, !noalias !115
  %1773 = xor i64 %1772, %1769
  %1774 = getelementptr inbounds nuw i8, ptr %1365, i32 8
  %1775 = load i64, ptr %1774, align 1, !noalias !115
  %1776 = xor i64 %1775, %1771
  %1777 = lshr i64 %1773, 32
  %1778 = trunc nuw i64 %1777 to i32
  %1779 = trunc i64 %1773 to i32
  %1780 = lshr i64 %1776, 32
  %1781 = trunc nuw i64 %1780 to i32
  %1782 = trunc i64 %1776 to i32
  %1783 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1779, i32 %1782) #28
  %1784 = extractvalue { i32, i32 } %1783, 0
  %1785 = extractvalue { i32, i32 } %1783, 1
  %1786 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1778, i32 %1782, i32 0, i32 %1785) #28
  %1787 = extractvalue { i32, i32 } %1786, 0
  %1788 = extractvalue { i32, i32 } %1786, 1
  %1789 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1779, i32 %1781, i32 %1787, i32 0) #28
  %1790 = extractvalue { i32, i32 } %1789, 0
  %1791 = extractvalue { i32, i32 } %1789, 1
  %1792 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1778, i32 %1781, i32 %1788, i32 %1791) #28
  %1793 = extractvalue { i32, i32 } %1792, 0
  %1794 = extractvalue { i32, i32 } %1792, 1
  %1795 = zext i32 %1793 to i64
  %1796 = zext i32 %1794 to i64
  %1797 = shl nuw i64 %1796, 32
  %1798 = or disjoint i64 %1797, %1795
  %1799 = zext i32 %1784 to i64
  %1800 = zext i32 %1790 to i64
  %1801 = shl nuw i64 %1800, 32
  %1802 = or disjoint i64 %1801, %1799
  %1803 = xor i64 %1798, %1802
  %1804 = add i64 %1803, %1768
  %1805 = getelementptr inbounds nuw i8, ptr %880, i32 %881
  %1806 = getelementptr inbounds i8, ptr %1805, i32 -16
  %1807 = getelementptr inbounds nuw i8, ptr %1365, i32 16
  %1808 = load i64, ptr %1806, align 1, !noalias !115
  %1809 = getelementptr inbounds i8, ptr %1805, i32 -8
  %1810 = load i64, ptr %1809, align 1, !noalias !115
  %1811 = load i64, ptr %1807, align 1, !noalias !115
  %1812 = xor i64 %1811, %1808
  %1813 = getelementptr inbounds nuw i8, ptr %1365, i32 24
  %1814 = load i64, ptr %1813, align 1, !noalias !115
  %1815 = xor i64 %1814, %1810
  %1816 = lshr i64 %1812, 32
  %1817 = trunc nuw i64 %1816 to i32
  %1818 = trunc i64 %1812 to i32
  %1819 = lshr i64 %1815, 32
  %1820 = trunc nuw i64 %1819 to i32
  %1821 = trunc i64 %1815 to i32
  %1822 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %1818, i32 %1821) #28
  %1823 = extractvalue { i32, i32 } %1822, 0
  %1824 = extractvalue { i32, i32 } %1822, 1
  %1825 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1817, i32 %1821, i32 0, i32 %1824) #28
  %1826 = extractvalue { i32, i32 } %1825, 0
  %1827 = extractvalue { i32, i32 } %1825, 1
  %1828 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1818, i32 %1820, i32 %1826, i32 0) #28
  %1829 = extractvalue { i32, i32 } %1828, 0
  %1830 = extractvalue { i32, i32 } %1828, 1
  %1831 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %1817, i32 %1820, i32 %1827, i32 %1830) #28
  %1832 = extractvalue { i32, i32 } %1831, 0
  %1833 = extractvalue { i32, i32 } %1831, 1
  %1834 = zext i32 %1832 to i64
  %1835 = zext i32 %1833 to i64
  %1836 = shl nuw i64 %1835, 32
  %1837 = or disjoint i64 %1836, %1834
  %1838 = zext i32 %1823 to i64
  %1839 = zext i32 %1829 to i64
  %1840 = shl nuw i64 %1839, 32
  %1841 = or disjoint i64 %1840, %1838
  %1842 = xor i64 %1837, %1841
  %1843 = add i64 %1842, %1767
  %1844 = add i64 %1843, %1804
  %1845 = mul i64 %1804, -7046029288634856825
  %1846 = mul i64 %1843, -8796714831421723037
  %1847 = mul i64 %5, -4417276706812531889
  %1848 = add i64 %1845, %1847
  %1849 = add i64 %1848, %1846
  %1850 = lshr i64 %1844, 37
  %1851 = xor i64 %1850, %1844
  %1852 = mul i64 %1851, 1609587929392839161
  %1853 = lshr i64 %1852, 32
  %1854 = xor i64 %1853, %1852
  store i64 %1854, ptr %0, align 8, !alias.scope !131
  %1855 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1856 = lshr i64 %1849, 37
  %1857 = xor i64 %1856, %1849
  %1858 = mul i64 %1857, 1609587929392839161
  %1859 = lshr i64 %1858, 32
  %1860 = xor i64 %1859, %1858
  %1861 = sub i64 0, %1860
  store i64 %1861, ptr %1855, align 8, !alias.scope !131
  br label %1863

1862:                                             ; preds = %1520
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull readonly %880, i32 noundef %881, ptr noundef %1365, i64 noundef 0)
  br label %1863

1863:                                             ; preds = %1862, %1766, %1519, %1481, %1439, %1369, %1362, %1268, %1033, %996, %955, %886, %577
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
define dso_local range(i32 0, 2) i32 @XXH128_isEqual([2 x i64] %0, [2 x i64] %1) local_unnamed_addr #21 {
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
define dso_local i64 @target_oneshot(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = add i64 %1, 2870177450012600277
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i64, ptr %8, align 1
  %14 = mul i64 %13, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = xor i64 %16, %12
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 27)
  %19 = mul i64 %18, -7046029288634856825
  %20 = add i64 %19, -8796714831421723037
  %21 = lshr i64 %20, 33
  %22 = xor i64 %21, %20
  %23 = mul i64 %22, -4417276706812531889
  %24 = lshr i64 %23, 29
  %25 = xor i64 %24, %23
  %26 = mul i64 %25, 1609587929392839161
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  ret i64 %28
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i32 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #24

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr, ptr, i32) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ucmp.i32.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #13 = { nofree nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #14 = { nofree noinline nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #16 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #17 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #18 = { noinline nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #19 = { noinline nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { allocsize(0) }
attributes #28 = { nounwind memory(none) }
attributes #29 = { nounwind }

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
!12 = !{i64 178678}
!13 = !{i64 178887}
!14 = !{i64 179121}
!15 = !{i64 179330}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_len_9to16_128b: argument 0"}
!23 = distinct !{!23, !"XXH3_len_9to16_128b"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_len_4to8_128b: argument 0"}
!26 = distinct !{!26, !"XXH3_len_4to8_128b"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"XXH3_len_1to3_128b: argument 0"}
!29 = distinct !{!29, !"XXH3_len_1to3_128b"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"XXH3_len_0to16_128b: argument 0"}
!32 = distinct !{!32, !"XXH3_len_0to16_128b"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH3_len_17to128_128b: argument 0"}
!35 = distinct !{!35, !"XXH3_len_17to128_128b"}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = !{!39}
!39 = distinct !{!39, !40, !"XXH3_hashLong_128b_internal: argument 0"}
!40 = distinct !{!40, !"XXH3_hashLong_128b_internal"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"XXH3_len_9to16_128b: argument 0"}
!43 = distinct !{!43, !"XXH3_len_9to16_128b"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"XXH3_len_4to8_128b: argument 0"}
!46 = distinct !{!46, !"XXH3_len_4to8_128b"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"XXH3_len_1to3_128b: argument 0"}
!49 = distinct !{!49, !"XXH3_len_1to3_128b"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"XXH3_len_0to16_128b: argument 0"}
!52 = distinct !{!52, !"XXH3_len_0to16_128b"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"XXH3_len_17to128_128b: argument 0"}
!55 = distinct !{!55, !"XXH3_len_17to128_128b"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"XXH3_hashLong_128b_internal: argument 0"}
!58 = distinct !{!58, !"XXH3_hashLong_128b_internal"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"XXH3_len_9to16_128b: argument 0"}
!61 = distinct !{!61, !"XXH3_len_9to16_128b"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"XXH3_len_4to8_128b: argument 0"}
!64 = distinct !{!64, !"XXH3_len_4to8_128b"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"XXH3_len_1to3_128b: argument 0"}
!67 = distinct !{!67, !"XXH3_len_1to3_128b"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"XXH3_len_0to16_128b: argument 0"}
!70 = distinct !{!70, !"XXH3_len_0to16_128b"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"XXH3_len_17to128_128b: argument 0"}
!73 = distinct !{!73, !"XXH3_len_17to128_128b"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"XXH3_hashLong_128b_internal: argument 0"}
!76 = distinct !{!76, !"XXH3_hashLong_128b_internal"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"XXH3_128bits_withSeed: argument 0"}
!79 = distinct !{!79, !"XXH3_128bits_withSeed"}
!80 = !{!81, !78}
!81 = distinct !{!81, !82, !"XXH3_len_9to16_128b: argument 0"}
!82 = distinct !{!82, !"XXH3_len_9to16_128b"}
!83 = !{!84, !78}
!84 = distinct !{!84, !85, !"XXH3_len_4to8_128b: argument 0"}
!85 = distinct !{!85, !"XXH3_len_4to8_128b"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"XXH3_len_1to3_128b: argument 0"}
!88 = distinct !{!88, !"XXH3_len_1to3_128b"}
!89 = !{!87, !78}
!90 = !{!91, !78}
!91 = distinct !{!91, !92, !"XXH3_len_0to16_128b: argument 0"}
!92 = distinct !{!92, !"XXH3_len_0to16_128b"}
!93 = !{!94, !78}
!94 = distinct !{!94, !95, !"XXH3_len_17to128_128b: argument 0"}
!95 = distinct !{!95, !"XXH3_len_17to128_128b"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"XXH3_128bits_withSeed: argument 0"}
!98 = distinct !{!98, !"XXH3_128bits_withSeed"}
!99 = !{!100, !97}
!100 = distinct !{!100, !101, !"XXH3_len_9to16_128b: argument 0"}
!101 = distinct !{!101, !"XXH3_len_9to16_128b"}
!102 = !{!103, !97}
!103 = distinct !{!103, !104, !"XXH3_len_4to8_128b: argument 0"}
!104 = distinct !{!104, !"XXH3_len_4to8_128b"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"XXH3_len_1to3_128b: argument 0"}
!107 = distinct !{!107, !"XXH3_len_1to3_128b"}
!108 = !{!106, !97}
!109 = !{!110, !97}
!110 = distinct !{!110, !111, !"XXH3_len_0to16_128b: argument 0"}
!111 = distinct !{!111, !"XXH3_len_0to16_128b"}
!112 = !{!113, !97}
!113 = distinct !{!113, !114, !"XXH3_len_17to128_128b: argument 0"}
!114 = distinct !{!114, !"XXH3_len_17to128_128b"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"XXH3_128bits_withSecret: argument 0"}
!117 = distinct !{!117, !"XXH3_128bits_withSecret"}
!118 = !{!119, !116}
!119 = distinct !{!119, !120, !"XXH3_len_9to16_128b: argument 0"}
!120 = distinct !{!120, !"XXH3_len_9to16_128b"}
!121 = !{!122, !116}
!122 = distinct !{!122, !123, !"XXH3_len_4to8_128b: argument 0"}
!123 = distinct !{!123, !"XXH3_len_4to8_128b"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"XXH3_len_1to3_128b: argument 0"}
!126 = distinct !{!126, !"XXH3_len_1to3_128b"}
!127 = !{!125, !116}
!128 = !{!129, !116}
!129 = distinct !{!129, !130, !"XXH3_len_0to16_128b: argument 0"}
!130 = distinct !{!130, !"XXH3_len_0to16_128b"}
!131 = !{!132, !116}
!132 = distinct !{!132, !133, !"XXH3_len_17to128_128b: argument 0"}
!133 = distinct !{!133, !"XXH3_len_17to128_128b"}
