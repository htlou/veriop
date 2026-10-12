; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a1da6e2/api_xxh64_len16_armv6ua_nw/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a1da6e2/api_xxh64_len16_armv6ua_nw/wrapper.c"
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
  br i1 %3, label %4, label %94

4:                                                ; preds = %2
  %5 = icmp samesign ugt i32 %1, 8
  br i1 %5, label %6, label %42

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, -4734510112055689544
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %10 = getelementptr inbounds i8, ptr %9, i32 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, 2066345149520216444
  %13 = zext nneg i32 %1 to i64
  %14 = and i64 %8, 4294967295
  %15 = and i64 %12, 4294967295
  %16 = mul nuw i64 %15, %14
  %17 = lshr i64 %8, 32
  %18 = mul nuw i64 %15, %17
  %19 = lshr i64 %12, 32
  %20 = mul nuw i64 %19, %14
  %21 = mul nuw i64 %19, %17
  %22 = lshr i64 %16, 32
  %23 = and i64 %18, 4294967295
  %24 = add nuw i64 %23, %20
  %25 = add nuw i64 %24, %22
  %26 = lshr i64 %18, 32
  %27 = lshr i64 %25, 32
  %28 = add nuw i64 %26, %21
  %29 = add nuw i64 %28, %27
  %30 = shl i64 %25, 32
  %31 = and i64 %16, 4294967295
  %32 = or disjoint i64 %30, %31
  %33 = xor i64 %32, %29
  %34 = add i64 %8, %13
  %35 = add i64 %34, %12
  %36 = add i64 %35, %33
  %37 = lshr i64 %36, 37
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, 1609587929392839161
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  br label %341

42:                                               ; preds = %4
  %43 = icmp samesign ugt i32 %1, 3
  br i1 %43, label %44, label %67

44:                                               ; preds = %42
  %45 = load i32, ptr %0, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %47 = getelementptr inbounds i8, ptr %46, i32 -4
  %48 = load i32, ptr %47, align 1
  %49 = zext i32 %45 to i64
  %50 = zext i32 %48 to i64
  %51 = shl nuw i64 %50, 32
  %52 = or disjoint i64 %51, %49
  %53 = xor i64 %52, -4734510112055689544
  %54 = zext nneg i32 %1 to i64
  %55 = lshr i64 %53, 51
  %56 = xor i64 %55, %53
  %57 = mul i64 %56, 2654435761
  %58 = add i64 %57, %54
  %59 = lshr i64 %58, 47
  %60 = xor i64 %59, %58
  %61 = mul i64 %60, -4417276706812531889
  %62 = lshr i64 %61, 37
  %63 = xor i64 %62, %61
  %64 = mul i64 %63, 1609587929392839161
  %65 = lshr i64 %64, 32
  %66 = xor i64 %65, %64
  br label %341

67:                                               ; preds = %42
  %68 = icmp eq i32 %1, 0
  br i1 %68, label %341, label %69

69:                                               ; preds = %67
  %70 = load i8, ptr %0, align 1
  %71 = lshr i32 %1, 1
  %72 = getelementptr inbounds nuw i8, ptr %0, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr i8, ptr %0, i32 %1
  %75 = getelementptr i8, ptr %74, i32 -1
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %70 to i32
  %78 = zext i8 %73 to i32
  %79 = shl nuw nsw i32 %78, 8
  %80 = or disjoint i32 %79, %77
  %81 = zext i8 %76 to i32
  %82 = shl nuw nsw i32 %81, 16
  %83 = or disjoint i32 %80, %82
  %84 = shl nuw nsw i32 %1, 24
  %85 = or disjoint i32 %83, %84
  %86 = xor i32 %85, 963444408
  %87 = zext nneg i32 %86 to i64
  %88 = mul i64 %87, -7046029288634856825
  %89 = lshr i64 %88, 37
  %90 = xor i64 %89, %88
  %91 = mul i64 %90, 1609587929392839161
  %92 = lshr i64 %91, 32
  %93 = xor i64 %92, %91
  br label %341

94:                                               ; preds = %2
  %95 = icmp ult i32 %1, 129
  br i1 %95, label %96, label %335

96:                                               ; preds = %94
  %97 = zext nneg i32 %1 to i64
  %98 = mul i64 %97, -7046029288634856825
  %99 = icmp samesign ugt i32 %1, 32
  br i1 %99, label %100, label %274

100:                                              ; preds = %96
  %101 = icmp samesign ugt i32 %1, 64
  br i1 %101, label %102, label %217

102:                                              ; preds = %100
  %103 = icmp samesign ugt i32 %1, 96
  br i1 %103, label %104, label %160

104:                                              ; preds = %102
  %105 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %106 = load i64, ptr %105, align 1
  %107 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %108 = load i64, ptr %107, align 1
  %109 = xor i64 %106, 4554437623014685352
  %110 = xor i64 %108, 2111919702937427193
  %111 = and i64 %109, 4294967295
  %112 = and i64 %110, 4294967295
  %113 = mul nuw i64 %112, %111
  %114 = lshr i64 %109, 32
  %115 = mul nuw i64 %112, %114
  %116 = lshr i64 %110, 32
  %117 = mul nuw i64 %116, %111
  %118 = mul nuw i64 %116, %114
  %119 = lshr i64 %113, 32
  %120 = and i64 %115, 4294967295
  %121 = add nuw i64 %120, %117
  %122 = add nuw i64 %121, %119
  %123 = lshr i64 %115, 32
  %124 = lshr i64 %122, 32
  %125 = add nuw i64 %123, %118
  %126 = add nuw i64 %125, %124
  %127 = shl i64 %122, 32
  %128 = and i64 %113, 4294967295
  %129 = or disjoint i64 %127, %128
  %130 = xor i64 %129, %126
  %131 = add i64 %130, %98
  %132 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %133 = getelementptr inbounds i8, ptr %132, i32 -64
  %134 = load i64, ptr %133, align 1
  %135 = getelementptr inbounds i8, ptr %132, i32 -56
  %136 = load i64, ptr %135, align 1
  %137 = xor i64 %134, 3556072174620004746
  %138 = xor i64 %136, 7238261902898274248
  %139 = and i64 %137, 4294967295
  %140 = and i64 %138, 4294967295
  %141 = mul nuw i64 %140, %139
  %142 = lshr i64 %137, 32
  %143 = mul nuw i64 %140, %142
  %144 = lshr i64 %138, 32
  %145 = mul nuw i64 %144, %139
  %146 = mul nuw i64 %144, %142
  %147 = lshr i64 %141, 32
  %148 = and i64 %143, 4294967295
  %149 = add nuw i64 %148, %145
  %150 = add nuw i64 %149, %147
  %151 = lshr i64 %143, 32
  %152 = lshr i64 %150, 32
  %153 = add nuw i64 %151, %146
  %154 = add nuw i64 %153, %152
  %155 = shl i64 %150, 32
  %156 = and i64 %141, 4294967295
  %157 = or disjoint i64 %155, %156
  %158 = xor i64 %157, %154
  %159 = add i64 %131, %158
  br label %160

160:                                              ; preds = %104, %102
  %161 = phi i64 [ %159, %104 ], [ %98, %102 ]
  %162 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %163 = load i64, ptr %162, align 1
  %164 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %165 = load i64, ptr %164, align 1
  %166 = xor i64 %163, -3818837453329782724
  %167 = xor i64 %165, -6688317018830679928
  %168 = and i64 %166, 4294967295
  %169 = and i64 %167, 4294967295
  %170 = mul nuw i64 %169, %168
  %171 = lshr i64 %166, 32
  %172 = mul nuw i64 %169, %171
  %173 = lshr i64 %167, 32
  %174 = mul nuw i64 %173, %168
  %175 = mul nuw i64 %173, %171
  %176 = lshr i64 %170, 32
  %177 = and i64 %172, 4294967295
  %178 = add nuw i64 %177, %174
  %179 = add nuw i64 %178, %176
  %180 = lshr i64 %172, 32
  %181 = lshr i64 %179, 32
  %182 = add nuw i64 %180, %175
  %183 = add nuw i64 %182, %181
  %184 = shl i64 %179, 32
  %185 = and i64 %170, 4294967295
  %186 = or disjoint i64 %184, %185
  %187 = xor i64 %186, %183
  %188 = add i64 %187, %161
  %189 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %190 = getelementptr inbounds i8, ptr %189, i32 -48
  %191 = load i64, ptr %190, align 1
  %192 = getelementptr inbounds i8, ptr %189, i32 -40
  %193 = load i64, ptr %192, align 1
  %194 = xor i64 %191, 5690594596133299313
  %195 = xor i64 %193, -2833645246901970632
  %196 = and i64 %194, 4294967295
  %197 = and i64 %195, 4294967295
  %198 = mul nuw i64 %197, %196
  %199 = lshr i64 %194, 32
  %200 = mul nuw i64 %197, %199
  %201 = lshr i64 %195, 32
  %202 = mul nuw i64 %201, %196
  %203 = mul nuw i64 %201, %199
  %204 = lshr i64 %198, 32
  %205 = and i64 %200, 4294967295
  %206 = add nuw i64 %205, %202
  %207 = add nuw i64 %206, %204
  %208 = lshr i64 %200, 32
  %209 = lshr i64 %207, 32
  %210 = add nuw i64 %208, %203
  %211 = add nuw i64 %210, %209
  %212 = shl i64 %207, 32
  %213 = and i64 %198, 4294967295
  %214 = or disjoint i64 %212, %213
  %215 = xor i64 %214, %211
  %216 = add i64 %188, %215
  br label %217

217:                                              ; preds = %160, %100
  %218 = phi i64 [ %216, %160 ], [ %98, %100 ]
  %219 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %220 = load i64, ptr %219, align 1
  %221 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %222 = load i64, ptr %221, align 1
  %223 = xor i64 %220, 8711581037947681227
  %224 = xor i64 %222, 2410270004345854594
  %225 = and i64 %223, 4294967295
  %226 = and i64 %224, 4294967295
  %227 = mul nuw i64 %226, %225
  %228 = lshr i64 %223, 32
  %229 = mul nuw i64 %226, %228
  %230 = lshr i64 %224, 32
  %231 = mul nuw i64 %230, %225
  %232 = mul nuw i64 %230, %228
  %233 = lshr i64 %227, 32
  %234 = and i64 %229, 4294967295
  %235 = add nuw i64 %234, %231
  %236 = add nuw i64 %235, %233
  %237 = lshr i64 %229, 32
  %238 = lshr i64 %236, 32
  %239 = add nuw i64 %237, %232
  %240 = add nuw i64 %239, %238
  %241 = shl i64 %236, 32
  %242 = and i64 %227, 4294967295
  %243 = or disjoint i64 %241, %242
  %244 = xor i64 %243, %240
  %245 = add i64 %244, %218
  %246 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %247 = getelementptr inbounds i8, ptr %246, i32 -32
  %248 = load i64, ptr %247, align 1
  %249 = getelementptr inbounds i8, ptr %246, i32 -24
  %250 = load i64, ptr %249, align 1
  %251 = xor i64 %248, -8204357891075471176
  %252 = xor i64 %250, 5487137525590930912
  %253 = and i64 %251, 4294967295
  %254 = and i64 %252, 4294967295
  %255 = mul nuw i64 %254, %253
  %256 = lshr i64 %251, 32
  %257 = mul nuw i64 %254, %256
  %258 = lshr i64 %252, 32
  %259 = mul nuw i64 %258, %253
  %260 = mul nuw i64 %258, %256
  %261 = lshr i64 %255, 32
  %262 = and i64 %257, 4294967295
  %263 = add nuw i64 %262, %259
  %264 = add nuw i64 %263, %261
  %265 = lshr i64 %257, 32
  %266 = lshr i64 %264, 32
  %267 = add nuw i64 %265, %260
  %268 = add nuw i64 %267, %266
  %269 = shl i64 %264, 32
  %270 = and i64 %255, 4294967295
  %271 = or disjoint i64 %269, %270
  %272 = xor i64 %271, %268
  %273 = add i64 %245, %272
  br label %274

274:                                              ; preds = %96, %217
  %275 = phi i64 [ %273, %217 ], [ %98, %96 ]
  %276 = load i64, ptr %0, align 1
  %277 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %276, -4734510112055689544
  %280 = xor i64 %278, 2066345149520216444
  %281 = and i64 %279, 4294967295
  %282 = and i64 %280, 4294967295
  %283 = mul nuw i64 %282, %281
  %284 = lshr i64 %279, 32
  %285 = mul nuw i64 %282, %284
  %286 = lshr i64 %280, 32
  %287 = mul nuw i64 %286, %281
  %288 = mul nuw i64 %286, %284
  %289 = lshr i64 %283, 32
  %290 = and i64 %285, 4294967295
  %291 = add nuw i64 %290, %287
  %292 = add nuw i64 %291, %289
  %293 = lshr i64 %285, 32
  %294 = lshr i64 %292, 32
  %295 = add nuw i64 %293, %288
  %296 = add nuw i64 %295, %294
  %297 = shl i64 %292, 32
  %298 = and i64 %283, 4294967295
  %299 = or disjoint i64 %297, %298
  %300 = xor i64 %299, %296
  %301 = add i64 %300, %275
  %302 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %303 = getelementptr inbounds i8, ptr %302, i32 -16
  %304 = load i64, ptr %303, align 1
  %305 = getelementptr inbounds i8, ptr %302, i32 -8
  %306 = load i64, ptr %305, align 1
  %307 = xor i64 %304, -2623469361688619810
  %308 = xor i64 %306, 2262974939099578482
  %309 = and i64 %307, 4294967295
  %310 = and i64 %308, 4294967295
  %311 = mul nuw i64 %310, %309
  %312 = lshr i64 %307, 32
  %313 = mul nuw i64 %310, %312
  %314 = lshr i64 %308, 32
  %315 = mul nuw i64 %314, %309
  %316 = mul nuw i64 %314, %312
  %317 = lshr i64 %311, 32
  %318 = and i64 %313, 4294967295
  %319 = add nuw i64 %318, %315
  %320 = add nuw i64 %319, %317
  %321 = lshr i64 %313, 32
  %322 = lshr i64 %320, 32
  %323 = add nuw i64 %321, %316
  %324 = add nuw i64 %323, %322
  %325 = shl i64 %320, 32
  %326 = and i64 %311, 4294967295
  %327 = or disjoint i64 %325, %326
  %328 = xor i64 %327, %324
  %329 = add i64 %301, %328
  %330 = lshr i64 %329, 37
  %331 = xor i64 %330, %329
  %332 = mul i64 %331, 1609587929392839161
  %333 = lshr i64 %332, 32
  %334 = xor i64 %333, %332
  br label %341

335:                                              ; preds = %94
  %336 = icmp ult i32 %1, 241
  br i1 %336, label %337, label %339

337:                                              ; preds = %335
  %338 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %341

339:                                              ; preds = %335
  %340 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i32 noundef %1)
  br label %341

341:                                              ; preds = %69, %67, %44, %6, %339, %337, %274
  %342 = phi i64 [ %334, %274 ], [ %338, %337 ], [ %340, %339 ], [ %41, %6 ], [ %66, %44 ], [ %93, %69 ], [ 0, %67 ]
  ret i64 %342
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read)
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i32 noundef range(i32 129, 241) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #13 {
  %5 = zext nneg i32 %1 to i64
  %6 = mul i64 %5, -7046029288634856825
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ 0, %4 ], [ %44, %7 ]
  %9 = phi i64 [ %6, %4 ], [ %43, %7 ]
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
  %23 = and i64 %18, 4294967295
  %24 = and i64 %22, 4294967295
  %25 = mul nuw i64 %24, %23
  %26 = lshr i64 %18, 32
  %27 = mul nuw i64 %24, %26
  %28 = lshr i64 %22, 32
  %29 = mul nuw i64 %28, %23
  %30 = mul nuw i64 %28, %26
  %31 = lshr i64 %25, 32
  %32 = and i64 %27, 4294967295
  %33 = add nuw i64 %32, %29
  %34 = add nuw i64 %33, %31
  %35 = lshr i64 %27, 32
  %36 = lshr i64 %34, 32
  %37 = add nuw i64 %35, %30
  %38 = add nuw i64 %37, %36
  %39 = shl i64 %34, 32
  %40 = and i64 %25, 4294967295
  %41 = or disjoint i64 %39, %40
  %42 = xor i64 %41, %38
  %43 = add i64 %42, %9
  %44 = add nuw nsw i32 %8, 1
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %7

46:                                               ; preds = %7
  %47 = lshr i32 %1, 4
  %48 = lshr i64 %43, 37
  %49 = xor i64 %48, %43
  %50 = mul i64 %49, 1609587929392839161
  %51 = lshr i64 %50, 32
  %52 = xor i64 %51, %50
  %53 = icmp eq i32 %47, 8
  br i1 %53, label %94, label %54

54:                                               ; preds = %46, %54
  %55 = phi i32 [ %92, %54 ], [ 8, %46 ]
  %56 = phi i64 [ %91, %54 ], [ %52, %46 ]
  %57 = shl nsw i32 %55, 4
  %58 = getelementptr inbounds nuw i8, ptr %0, i32 %57
  %59 = getelementptr i8, ptr %2, i32 %57
  %60 = getelementptr i8, ptr %59, i32 -125
  %61 = load i64, ptr %58, align 1
  %62 = getelementptr inbounds nuw i8, ptr %58, i32 8
  %63 = load i64, ptr %62, align 1
  %64 = load i64, ptr %60, align 1
  %65 = add i64 %64, %3
  %66 = xor i64 %65, %61
  %67 = getelementptr i8, ptr %59, i32 -117
  %68 = load i64, ptr %67, align 1
  %69 = sub i64 %68, %3
  %70 = xor i64 %69, %63
  %71 = and i64 %66, 4294967295
  %72 = and i64 %70, 4294967295
  %73 = mul nuw i64 %72, %71
  %74 = lshr i64 %66, 32
  %75 = mul nuw i64 %72, %74
  %76 = lshr i64 %70, 32
  %77 = mul nuw i64 %76, %71
  %78 = mul nuw i64 %76, %74
  %79 = lshr i64 %73, 32
  %80 = and i64 %75, 4294967295
  %81 = add nuw i64 %80, %77
  %82 = add nuw i64 %81, %79
  %83 = lshr i64 %75, 32
  %84 = lshr i64 %82, 32
  %85 = add nuw i64 %83, %78
  %86 = add nuw i64 %85, %84
  %87 = shl i64 %82, 32
  %88 = and i64 %73, 4294967295
  %89 = or disjoint i64 %87, %88
  %90 = xor i64 %89, %86
  %91 = add i64 %90, %56
  %92 = add nuw nsw i32 %55, 1
  %93 = icmp eq i32 %92, %47
  br i1 %93, label %94, label %54

94:                                               ; preds = %54, %46
  %95 = phi i64 [ %52, %46 ], [ %91, %54 ]
  %96 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %97 = getelementptr inbounds i8, ptr %96, i32 -16
  %98 = getelementptr inbounds nuw i8, ptr %2, i32 119
  %99 = load i64, ptr %97, align 1
  %100 = getelementptr inbounds i8, ptr %96, i32 -8
  %101 = load i64, ptr %100, align 1
  %102 = load i64, ptr %98, align 1
  %103 = add i64 %102, %3
  %104 = xor i64 %103, %99
  %105 = getelementptr inbounds nuw i8, ptr %2, i32 127
  %106 = load i64, ptr %105, align 1
  %107 = sub i64 %106, %3
  %108 = xor i64 %107, %101
  %109 = and i64 %104, 4294967295
  %110 = and i64 %108, 4294967295
  %111 = mul nuw i64 %110, %109
  %112 = lshr i64 %104, 32
  %113 = mul nuw i64 %110, %112
  %114 = lshr i64 %108, 32
  %115 = mul nuw i64 %114, %109
  %116 = mul nuw i64 %114, %112
  %117 = lshr i64 %111, 32
  %118 = and i64 %113, 4294967295
  %119 = add nuw i64 %118, %115
  %120 = add nuw i64 %119, %117
  %121 = lshr i64 %113, 32
  %122 = lshr i64 %120, 32
  %123 = add nuw i64 %121, %116
  %124 = add nuw i64 %123, %122
  %125 = shl i64 %120, 32
  %126 = and i64 %111, 4294967295
  %127 = or disjoint i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = add i64 %128, %95
  %130 = lshr i64 %129, 37
  %131 = xor i64 %130, %129
  %132 = mul i64 %131, 1609587929392839161
  %133 = lshr i64 %132, 32
  %134 = xor i64 %133, %132
  ret i64 %134
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
  %344 = and i64 %342, 4294967295
  %345 = and i64 %343, 4294967295
  %346 = mul nuw i64 %344, %345
  %347 = lshr i64 %342, 32
  %348 = mul nuw i64 %347, %345
  %349 = lshr i64 %343, 32
  %350 = mul nuw i64 %344, %349
  %351 = mul nuw i64 %347, %349
  %352 = lshr i64 %346, 32
  %353 = and i64 %348, 4294967295
  %354 = add nuw i64 %353, %350
  %355 = add nuw i64 %354, %352
  %356 = lshr i64 %348, 32
  %357 = lshr i64 %355, 32
  %358 = add nuw i64 %356, %351
  %359 = add nuw i64 %358, %357
  %360 = shl i64 %355, 32
  %361 = and i64 %346, 4294967295
  %362 = or disjoint i64 %360, %361
  %363 = xor i64 %362, %359
  %364 = xor i64 %337, -1839215637059881052
  %365 = xor i64 %336, -3433288310154277810
  %366 = and i64 %364, 4294967295
  %367 = and i64 %365, 4294967295
  %368 = mul nuw i64 %366, %367
  %369 = lshr i64 %364, 32
  %370 = mul nuw i64 %369, %367
  %371 = lshr i64 %365, 32
  %372 = mul nuw i64 %366, %371
  %373 = mul nuw i64 %369, %371
  %374 = lshr i64 %368, 32
  %375 = and i64 %370, 4294967295
  %376 = add nuw i64 %375, %372
  %377 = add nuw i64 %376, %374
  %378 = lshr i64 %370, 32
  %379 = lshr i64 %377, 32
  %380 = add nuw i64 %378, %373
  %381 = add nuw i64 %380, %379
  %382 = shl i64 %377, 32
  %383 = and i64 %368, 4294967295
  %384 = or disjoint i64 %382, %383
  %385 = xor i64 %384, %381
  %386 = xor i64 %335, 5046485836271438973
  %387 = xor i64 %334, -8055285457383852172
  %388 = and i64 %386, 4294967295
  %389 = and i64 %387, 4294967295
  %390 = mul nuw i64 %388, %389
  %391 = lshr i64 %386, 32
  %392 = mul nuw i64 %391, %389
  %393 = lshr i64 %387, 32
  %394 = mul nuw i64 %388, %393
  %395 = mul nuw i64 %391, %393
  %396 = lshr i64 %390, 32
  %397 = and i64 %392, 4294967295
  %398 = add nuw i64 %397, %394
  %399 = add nuw i64 %398, %396
  %400 = lshr i64 %392, 32
  %401 = lshr i64 %399, 32
  %402 = add nuw i64 %400, %395
  %403 = add nuw i64 %402, %401
  %404 = shl i64 %399, 32
  %405 = and i64 %390, 4294967295
  %406 = or disjoint i64 %404, %405
  %407 = xor i64 %406, %403
  %408 = xor i64 %333, 5920048007935066598
  %409 = xor i64 %332, 7336514198459093435
  %410 = and i64 %408, 4294967295
  %411 = and i64 %409, 4294967295
  %412 = mul nuw i64 %410, %411
  %413 = lshr i64 %408, 32
  %414 = mul nuw i64 %413, %411
  %415 = lshr i64 %409, 32
  %416 = mul nuw i64 %410, %415
  %417 = mul nuw i64 %413, %415
  %418 = lshr i64 %412, 32
  %419 = and i64 %414, 4294967295
  %420 = add nuw i64 %419, %416
  %421 = add nuw i64 %420, %418
  %422 = lshr i64 %414, 32
  %423 = lshr i64 %421, 32
  %424 = add nuw i64 %422, %417
  %425 = add nuw i64 %424, %423
  %426 = shl i64 %421, 32
  %427 = and i64 %412, 4294967295
  %428 = or disjoint i64 %426, %427
  %429 = xor i64 %428, %425
  %430 = add i64 %429, %341
  %431 = add i64 %430, %407
  %432 = add i64 %431, %385
  %433 = add i64 %432, %363
  %434 = lshr i64 %433, 37
  %435 = xor i64 %434, %433
  %436 = mul i64 %435, 1609587929392839161
  %437 = lshr i64 %436, 32
  %438 = xor i64 %437, %436
  ret i64 %438
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @XXH3_64bits_withSecret(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #12 {
  %5 = icmp ult i32 %1, 17
  br i1 %5, label %6, label %101

6:                                                ; preds = %4
  %7 = icmp samesign ugt i32 %1, 8
  br i1 %7, label %8, label %47

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
  %19 = and i64 %11, 4294967295
  %20 = and i64 %17, 4294967295
  %21 = mul nuw i64 %20, %19
  %22 = lshr i64 %11, 32
  %23 = mul nuw i64 %20, %22
  %24 = lshr i64 %17, 32
  %25 = mul nuw i64 %24, %19
  %26 = mul nuw i64 %24, %22
  %27 = lshr i64 %21, 32
  %28 = and i64 %23, 4294967295
  %29 = add nuw i64 %28, %25
  %30 = add nuw i64 %29, %27
  %31 = lshr i64 %23, 32
  %32 = lshr i64 %30, 32
  %33 = add nuw i64 %31, %26
  %34 = add nuw i64 %33, %32
  %35 = shl i64 %30, 32
  %36 = and i64 %21, 4294967295
  %37 = or disjoint i64 %35, %36
  %38 = xor i64 %37, %34
  %39 = add i64 %11, %18
  %40 = add i64 %39, %17
  %41 = add i64 %40, %38
  %42 = lshr i64 %41, 37
  %43 = xor i64 %42, %41
  %44 = mul i64 %43, 1609587929392839161
  %45 = lshr i64 %44, 32
  %46 = xor i64 %45, %44
  br label %379

47:                                               ; preds = %6
  %48 = icmp samesign ugt i32 %1, 3
  br i1 %48, label %49, label %73

49:                                               ; preds = %47
  %50 = load i32, ptr %0, align 1
  %51 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %52 = getelementptr inbounds i8, ptr %51, i32 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %50 to i64
  %55 = zext i32 %53 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %54
  %58 = load i64, ptr %2, align 1
  %59 = xor i64 %57, %58
  %60 = zext nneg i32 %1 to i64
  %61 = lshr i64 %59, 51
  %62 = xor i64 %61, %59
  %63 = mul i64 %62, 2654435761
  %64 = add i64 %63, %60
  %65 = lshr i64 %64, 47
  %66 = xor i64 %65, %64
  %67 = mul i64 %66, -4417276706812531889
  %68 = lshr i64 %67, 37
  %69 = xor i64 %68, %67
  %70 = mul i64 %69, 1609587929392839161
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  br label %379

73:                                               ; preds = %47
  %74 = icmp eq i32 %1, 0
  br i1 %74, label %379, label %75

75:                                               ; preds = %73
  %76 = load i8, ptr %0, align 1
  %77 = lshr i32 %1, 1
  %78 = getelementptr inbounds nuw i8, ptr %0, i32 %77
  %79 = load i8, ptr %78, align 1
  %80 = getelementptr i8, ptr %0, i32 %1
  %81 = getelementptr i8, ptr %80, i32 -1
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %76 to i32
  %84 = zext i8 %79 to i32
  %85 = shl nuw nsw i32 %84, 8
  %86 = or disjoint i32 %85, %83
  %87 = zext i8 %82 to i32
  %88 = shl nuw nsw i32 %87, 16
  %89 = or disjoint i32 %86, %88
  %90 = shl nuw nsw i32 %1, 24
  %91 = or disjoint i32 %89, %90
  %92 = load i32, ptr %2, align 1
  %93 = xor i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = mul i64 %94, -7046029288634856825
  %96 = lshr i64 %95, 37
  %97 = xor i64 %96, %95
  %98 = mul i64 %97, 1609587929392839161
  %99 = lshr i64 %98, 32
  %100 = xor i64 %99, %98
  br label %379

101:                                              ; preds = %4
  %102 = icmp ult i32 %1, 129
  br i1 %102, label %103, label %373

103:                                              ; preds = %101
  %104 = zext nneg i32 %1 to i64
  %105 = mul i64 %104, -7046029288634856825
  %106 = icmp samesign ugt i32 %1, 32
  br i1 %106, label %107, label %305

107:                                              ; preds = %103
  %108 = icmp samesign ugt i32 %1, 64
  br i1 %108, label %109, label %240

109:                                              ; preds = %107
  %110 = icmp samesign ugt i32 %1, 96
  br i1 %110, label %111, label %175

111:                                              ; preds = %109
  %112 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %113 = getelementptr inbounds nuw i8, ptr %2, i32 96
  %114 = load i64, ptr %112, align 1
  %115 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %116 = load i64, ptr %115, align 1
  %117 = load i64, ptr %113, align 1
  %118 = xor i64 %117, %114
  %119 = getelementptr inbounds nuw i8, ptr %2, i32 104
  %120 = load i64, ptr %119, align 1
  %121 = xor i64 %120, %116
  %122 = and i64 %118, 4294967295
  %123 = and i64 %121, 4294967295
  %124 = mul nuw i64 %123, %122
  %125 = lshr i64 %118, 32
  %126 = mul nuw i64 %123, %125
  %127 = lshr i64 %121, 32
  %128 = mul nuw i64 %127, %122
  %129 = mul nuw i64 %127, %125
  %130 = lshr i64 %124, 32
  %131 = and i64 %126, 4294967295
  %132 = add nuw i64 %131, %128
  %133 = add nuw i64 %132, %130
  %134 = lshr i64 %126, 32
  %135 = lshr i64 %133, 32
  %136 = add nuw i64 %134, %129
  %137 = add nuw i64 %136, %135
  %138 = shl i64 %133, 32
  %139 = and i64 %124, 4294967295
  %140 = or disjoint i64 %138, %139
  %141 = xor i64 %140, %137
  %142 = add i64 %141, %105
  %143 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %144 = getelementptr inbounds i8, ptr %143, i32 -64
  %145 = getelementptr inbounds nuw i8, ptr %2, i32 112
  %146 = load i64, ptr %144, align 1
  %147 = getelementptr inbounds i8, ptr %143, i32 -56
  %148 = load i64, ptr %147, align 1
  %149 = load i64, ptr %145, align 1
  %150 = xor i64 %149, %146
  %151 = getelementptr inbounds nuw i8, ptr %2, i32 120
  %152 = load i64, ptr %151, align 1
  %153 = xor i64 %152, %148
  %154 = and i64 %150, 4294967295
  %155 = and i64 %153, 4294967295
  %156 = mul nuw i64 %155, %154
  %157 = lshr i64 %150, 32
  %158 = mul nuw i64 %155, %157
  %159 = lshr i64 %153, 32
  %160 = mul nuw i64 %159, %154
  %161 = mul nuw i64 %159, %157
  %162 = lshr i64 %156, 32
  %163 = and i64 %158, 4294967295
  %164 = add nuw i64 %163, %160
  %165 = add nuw i64 %164, %162
  %166 = lshr i64 %158, 32
  %167 = lshr i64 %165, 32
  %168 = add nuw i64 %166, %161
  %169 = add nuw i64 %168, %167
  %170 = shl i64 %165, 32
  %171 = and i64 %156, 4294967295
  %172 = or disjoint i64 %170, %171
  %173 = xor i64 %172, %169
  %174 = add i64 %142, %173
  br label %175

175:                                              ; preds = %111, %109
  %176 = phi i64 [ %174, %111 ], [ %105, %109 ]
  %177 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %178 = getelementptr inbounds nuw i8, ptr %2, i32 64
  %179 = load i64, ptr %177, align 1
  %180 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %181 = load i64, ptr %180, align 1
  %182 = load i64, ptr %178, align 1
  %183 = xor i64 %182, %179
  %184 = getelementptr inbounds nuw i8, ptr %2, i32 72
  %185 = load i64, ptr %184, align 1
  %186 = xor i64 %185, %181
  %187 = and i64 %183, 4294967295
  %188 = and i64 %186, 4294967295
  %189 = mul nuw i64 %188, %187
  %190 = lshr i64 %183, 32
  %191 = mul nuw i64 %188, %190
  %192 = lshr i64 %186, 32
  %193 = mul nuw i64 %192, %187
  %194 = mul nuw i64 %192, %190
  %195 = lshr i64 %189, 32
  %196 = and i64 %191, 4294967295
  %197 = add nuw i64 %196, %193
  %198 = add nuw i64 %197, %195
  %199 = lshr i64 %191, 32
  %200 = lshr i64 %198, 32
  %201 = add nuw i64 %199, %194
  %202 = add nuw i64 %201, %200
  %203 = shl i64 %198, 32
  %204 = and i64 %189, 4294967295
  %205 = or disjoint i64 %203, %204
  %206 = xor i64 %205, %202
  %207 = add i64 %206, %176
  %208 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %209 = getelementptr inbounds i8, ptr %208, i32 -48
  %210 = getelementptr inbounds nuw i8, ptr %2, i32 80
  %211 = load i64, ptr %209, align 1
  %212 = getelementptr inbounds i8, ptr %208, i32 -40
  %213 = load i64, ptr %212, align 1
  %214 = load i64, ptr %210, align 1
  %215 = xor i64 %214, %211
  %216 = getelementptr inbounds nuw i8, ptr %2, i32 88
  %217 = load i64, ptr %216, align 1
  %218 = xor i64 %217, %213
  %219 = and i64 %215, 4294967295
  %220 = and i64 %218, 4294967295
  %221 = mul nuw i64 %220, %219
  %222 = lshr i64 %215, 32
  %223 = mul nuw i64 %220, %222
  %224 = lshr i64 %218, 32
  %225 = mul nuw i64 %224, %219
  %226 = mul nuw i64 %224, %222
  %227 = lshr i64 %221, 32
  %228 = and i64 %223, 4294967295
  %229 = add nuw i64 %228, %225
  %230 = add nuw i64 %229, %227
  %231 = lshr i64 %223, 32
  %232 = lshr i64 %230, 32
  %233 = add nuw i64 %231, %226
  %234 = add nuw i64 %233, %232
  %235 = shl i64 %230, 32
  %236 = and i64 %221, 4294967295
  %237 = or disjoint i64 %235, %236
  %238 = xor i64 %237, %234
  %239 = add i64 %207, %238
  br label %240

240:                                              ; preds = %175, %107
  %241 = phi i64 [ %239, %175 ], [ %105, %107 ]
  %242 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %243 = getelementptr inbounds nuw i8, ptr %2, i32 32
  %244 = load i64, ptr %242, align 1
  %245 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %246 = load i64, ptr %245, align 1
  %247 = load i64, ptr %243, align 1
  %248 = xor i64 %247, %244
  %249 = getelementptr inbounds nuw i8, ptr %2, i32 40
  %250 = load i64, ptr %249, align 1
  %251 = xor i64 %250, %246
  %252 = and i64 %248, 4294967295
  %253 = and i64 %251, 4294967295
  %254 = mul nuw i64 %253, %252
  %255 = lshr i64 %248, 32
  %256 = mul nuw i64 %253, %255
  %257 = lshr i64 %251, 32
  %258 = mul nuw i64 %257, %252
  %259 = mul nuw i64 %257, %255
  %260 = lshr i64 %254, 32
  %261 = and i64 %256, 4294967295
  %262 = add nuw i64 %261, %258
  %263 = add nuw i64 %262, %260
  %264 = lshr i64 %256, 32
  %265 = lshr i64 %263, 32
  %266 = add nuw i64 %264, %259
  %267 = add nuw i64 %266, %265
  %268 = shl i64 %263, 32
  %269 = and i64 %254, 4294967295
  %270 = or disjoint i64 %268, %269
  %271 = xor i64 %270, %267
  %272 = add i64 %271, %241
  %273 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %274 = getelementptr inbounds i8, ptr %273, i32 -32
  %275 = getelementptr inbounds nuw i8, ptr %2, i32 48
  %276 = load i64, ptr %274, align 1
  %277 = getelementptr inbounds i8, ptr %273, i32 -24
  %278 = load i64, ptr %277, align 1
  %279 = load i64, ptr %275, align 1
  %280 = xor i64 %279, %276
  %281 = getelementptr inbounds nuw i8, ptr %2, i32 56
  %282 = load i64, ptr %281, align 1
  %283 = xor i64 %282, %278
  %284 = and i64 %280, 4294967295
  %285 = and i64 %283, 4294967295
  %286 = mul nuw i64 %285, %284
  %287 = lshr i64 %280, 32
  %288 = mul nuw i64 %285, %287
  %289 = lshr i64 %283, 32
  %290 = mul nuw i64 %289, %284
  %291 = mul nuw i64 %289, %287
  %292 = lshr i64 %286, 32
  %293 = and i64 %288, 4294967295
  %294 = add nuw i64 %293, %290
  %295 = add nuw i64 %294, %292
  %296 = lshr i64 %288, 32
  %297 = lshr i64 %295, 32
  %298 = add nuw i64 %296, %291
  %299 = add nuw i64 %298, %297
  %300 = shl i64 %295, 32
  %301 = and i64 %286, 4294967295
  %302 = or disjoint i64 %300, %301
  %303 = xor i64 %302, %299
  %304 = add i64 %272, %303
  br label %305

305:                                              ; preds = %103, %240
  %306 = phi i64 [ %304, %240 ], [ %105, %103 ]
  %307 = load i64, ptr %0, align 1
  %308 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %309 = load i64, ptr %308, align 1
  %310 = load i64, ptr %2, align 1
  %311 = xor i64 %310, %307
  %312 = getelementptr inbounds nuw i8, ptr %2, i32 8
  %313 = load i64, ptr %312, align 1
  %314 = xor i64 %313, %309
  %315 = and i64 %311, 4294967295
  %316 = and i64 %314, 4294967295
  %317 = mul nuw i64 %316, %315
  %318 = lshr i64 %311, 32
  %319 = mul nuw i64 %316, %318
  %320 = lshr i64 %314, 32
  %321 = mul nuw i64 %320, %315
  %322 = mul nuw i64 %320, %318
  %323 = lshr i64 %317, 32
  %324 = and i64 %319, 4294967295
  %325 = add nuw i64 %324, %321
  %326 = add nuw i64 %325, %323
  %327 = lshr i64 %319, 32
  %328 = lshr i64 %326, 32
  %329 = add nuw i64 %327, %322
  %330 = add nuw i64 %329, %328
  %331 = shl i64 %326, 32
  %332 = and i64 %317, 4294967295
  %333 = or disjoint i64 %331, %332
  %334 = xor i64 %333, %330
  %335 = add i64 %334, %306
  %336 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %337 = getelementptr inbounds i8, ptr %336, i32 -16
  %338 = getelementptr inbounds nuw i8, ptr %2, i32 16
  %339 = load i64, ptr %337, align 1
  %340 = getelementptr inbounds i8, ptr %336, i32 -8
  %341 = load i64, ptr %340, align 1
  %342 = load i64, ptr %338, align 1
  %343 = xor i64 %342, %339
  %344 = getelementptr inbounds nuw i8, ptr %2, i32 24
  %345 = load i64, ptr %344, align 1
  %346 = xor i64 %345, %341
  %347 = and i64 %343, 4294967295
  %348 = and i64 %346, 4294967295
  %349 = mul nuw i64 %348, %347
  %350 = lshr i64 %343, 32
  %351 = mul nuw i64 %348, %350
  %352 = lshr i64 %346, 32
  %353 = mul nuw i64 %352, %347
  %354 = mul nuw i64 %352, %350
  %355 = lshr i64 %349, 32
  %356 = and i64 %351, 4294967295
  %357 = add nuw i64 %356, %353
  %358 = add nuw i64 %357, %355
  %359 = lshr i64 %351, 32
  %360 = lshr i64 %358, 32
  %361 = add nuw i64 %359, %354
  %362 = add nuw i64 %361, %360
  %363 = shl i64 %358, 32
  %364 = and i64 %349, 4294967295
  %365 = or disjoint i64 %363, %364
  %366 = xor i64 %365, %362
  %367 = add i64 %335, %366
  %368 = lshr i64 %367, 37
  %369 = xor i64 %368, %367
  %370 = mul i64 %369, 1609587929392839161
  %371 = lshr i64 %370, 32
  %372 = xor i64 %371, %370
  br label %379

373:                                              ; preds = %101
  %374 = icmp ult i32 %1, 241
  br i1 %374, label %375, label %377

375:                                              ; preds = %373
  %376 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef 0)
  br label %379

377:                                              ; preds = %373
  %378 = tail call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %379

379:                                              ; preds = %75, %73, %49, %8, %377, %375, %305
  %380 = phi i64 [ %372, %305 ], [ %376, %375 ], [ %378, %377 ], [ %46, %8 ], [ %72, %49 ], [ %100, %75 ], [ 0, %73 ]
  ret i64 %380
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
  %451 = and i64 %447, 4294967295
  %452 = and i64 %450, 4294967295
  %453 = mul nuw i64 %452, %451
  %454 = lshr i64 %447, 32
  %455 = mul nuw i64 %452, %454
  %456 = lshr i64 %450, 32
  %457 = mul nuw i64 %456, %451
  %458 = mul nuw i64 %456, %454
  %459 = lshr i64 %453, 32
  %460 = and i64 %455, 4294967295
  %461 = add nuw i64 %460, %457
  %462 = add nuw i64 %461, %459
  %463 = lshr i64 %455, 32
  %464 = lshr i64 %462, 32
  %465 = add nuw i64 %463, %458
  %466 = add nuw i64 %465, %464
  %467 = shl i64 %462, 32
  %468 = and i64 %453, 4294967295
  %469 = or disjoint i64 %467, %468
  %470 = xor i64 %469, %466
  %471 = add i64 %470, %445
  %472 = getelementptr inbounds nuw i8, ptr %2, i32 27
  %473 = load i64, ptr %472, align 1
  %474 = xor i64 %473, %440
  %475 = getelementptr inbounds nuw i8, ptr %2, i32 35
  %476 = load i64, ptr %475, align 1
  %477 = xor i64 %476, %439
  %478 = and i64 %474, 4294967295
  %479 = and i64 %477, 4294967295
  %480 = mul nuw i64 %479, %478
  %481 = lshr i64 %474, 32
  %482 = mul nuw i64 %479, %481
  %483 = lshr i64 %477, 32
  %484 = mul nuw i64 %483, %478
  %485 = mul nuw i64 %483, %481
  %486 = lshr i64 %480, 32
  %487 = and i64 %482, 4294967295
  %488 = add nuw i64 %487, %484
  %489 = add nuw i64 %488, %486
  %490 = lshr i64 %482, 32
  %491 = lshr i64 %489, 32
  %492 = add nuw i64 %490, %485
  %493 = add nuw i64 %492, %491
  %494 = shl i64 %489, 32
  %495 = and i64 %480, 4294967295
  %496 = or disjoint i64 %494, %495
  %497 = xor i64 %496, %493
  %498 = add i64 %471, %497
  %499 = getelementptr inbounds nuw i8, ptr %2, i32 43
  %500 = load i64, ptr %499, align 1
  %501 = xor i64 %500, %438
  %502 = getelementptr inbounds nuw i8, ptr %2, i32 51
  %503 = load i64, ptr %502, align 1
  %504 = xor i64 %503, %437
  %505 = and i64 %501, 4294967295
  %506 = and i64 %504, 4294967295
  %507 = mul nuw i64 %506, %505
  %508 = lshr i64 %501, 32
  %509 = mul nuw i64 %506, %508
  %510 = lshr i64 %504, 32
  %511 = mul nuw i64 %510, %505
  %512 = mul nuw i64 %510, %508
  %513 = lshr i64 %507, 32
  %514 = and i64 %509, 4294967295
  %515 = add nuw i64 %514, %511
  %516 = add nuw i64 %515, %513
  %517 = lshr i64 %509, 32
  %518 = lshr i64 %516, 32
  %519 = add nuw i64 %517, %512
  %520 = add nuw i64 %519, %518
  %521 = shl i64 %516, 32
  %522 = and i64 %507, 4294967295
  %523 = or disjoint i64 %521, %522
  %524 = xor i64 %523, %520
  %525 = add i64 %498, %524
  %526 = getelementptr inbounds nuw i8, ptr %2, i32 59
  %527 = load i64, ptr %526, align 1
  %528 = xor i64 %527, %436
  %529 = getelementptr inbounds nuw i8, ptr %2, i32 67
  %530 = load i64, ptr %529, align 1
  %531 = xor i64 %530, %435
  %532 = and i64 %528, 4294967295
  %533 = and i64 %531, 4294967295
  %534 = mul nuw i64 %533, %532
  %535 = lshr i64 %528, 32
  %536 = mul nuw i64 %533, %535
  %537 = lshr i64 %531, 32
  %538 = mul nuw i64 %537, %532
  %539 = mul nuw i64 %537, %535
  %540 = lshr i64 %534, 32
  %541 = and i64 %536, 4294967295
  %542 = add nuw i64 %541, %538
  %543 = add nuw i64 %542, %540
  %544 = lshr i64 %536, 32
  %545 = lshr i64 %543, 32
  %546 = add nuw i64 %544, %539
  %547 = add nuw i64 %546, %545
  %548 = shl i64 %543, 32
  %549 = and i64 %534, 4294967295
  %550 = or disjoint i64 %548, %549
  %551 = xor i64 %550, %547
  %552 = add i64 %525, %551
  %553 = lshr i64 %552, 37
  %554 = xor i64 %553, %552
  %555 = mul i64 %554, 1609587929392839161
  %556 = lshr i64 %555, 32
  %557 = xor i64 %556, %555
  ret i64 %557
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = icmp ult i32 %1, 17
  br i1 %4, label %5, label %99

5:                                                ; preds = %3
  %6 = icmp samesign ugt i32 %1, 8
  br i1 %6, label %7, label %45

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
  %17 = and i64 %10, 4294967295
  %18 = and i64 %15, 4294967295
  %19 = mul nuw i64 %18, %17
  %20 = lshr i64 %10, 32
  %21 = mul nuw i64 %18, %20
  %22 = lshr i64 %15, 32
  %23 = mul nuw i64 %22, %17
  %24 = mul nuw i64 %22, %20
  %25 = lshr i64 %19, 32
  %26 = and i64 %21, 4294967295
  %27 = add nuw i64 %26, %23
  %28 = add nuw i64 %27, %25
  %29 = lshr i64 %21, 32
  %30 = lshr i64 %28, 32
  %31 = add nuw i64 %29, %24
  %32 = add nuw i64 %31, %30
  %33 = shl i64 %28, 32
  %34 = and i64 %19, 4294967295
  %35 = or disjoint i64 %33, %34
  %36 = xor i64 %35, %32
  %37 = add i64 %10, %16
  %38 = add i64 %37, %15
  %39 = add i64 %38, %36
  %40 = lshr i64 %39, 37
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, 1609587929392839161
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  br label %362

45:                                               ; preds = %5
  %46 = icmp samesign ugt i32 %1, 3
  br i1 %46, label %47, label %71

47:                                               ; preds = %45
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %50 = getelementptr inbounds i8, ptr %49, i32 -4
  %51 = load i32, ptr %50, align 1
  %52 = zext i32 %48 to i64
  %53 = zext i32 %51 to i64
  %54 = shl nuw i64 %53, 32
  %55 = or disjoint i64 %54, %52
  %56 = add i64 %2, -4734510112055689544
  %57 = xor i64 %55, %56
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
  br label %362

71:                                               ; preds = %45
  %72 = icmp eq i32 %1, 0
  br i1 %72, label %362, label %73

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
  %90 = zext nneg i32 %89 to i64
  %91 = add i64 %2, 963444408
  %92 = xor i64 %91, %90
  %93 = mul i64 %92, -7046029288634856825
  %94 = lshr i64 %93, 37
  %95 = xor i64 %94, %93
  %96 = mul i64 %95, 1609587929392839161
  %97 = lshr i64 %96, 32
  %98 = xor i64 %97, %96
  br label %362

99:                                               ; preds = %3
  %100 = icmp ult i32 %1, 129
  br i1 %100, label %101, label %356

101:                                              ; preds = %99
  %102 = zext nneg i32 %1 to i64
  %103 = mul i64 %102, -7046029288634856825
  %104 = icmp samesign ugt i32 %1, 32
  br i1 %104, label %105, label %291

105:                                              ; preds = %101
  %106 = icmp samesign ugt i32 %1, 64
  br i1 %106, label %107, label %230

107:                                              ; preds = %105
  %108 = icmp samesign ugt i32 %1, 96
  br i1 %108, label %109, label %169

109:                                              ; preds = %107
  %110 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %111 = load i64, ptr %110, align 1
  %112 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %113 = load i64, ptr %112, align 1
  %114 = add i64 %2, 4554437623014685352
  %115 = xor i64 %111, %114
  %116 = sub i64 2111919702937427193, %2
  %117 = xor i64 %113, %116
  %118 = and i64 %115, 4294967295
  %119 = and i64 %117, 4294967295
  %120 = mul nuw i64 %119, %118
  %121 = lshr i64 %115, 32
  %122 = mul nuw i64 %119, %121
  %123 = lshr i64 %117, 32
  %124 = mul nuw i64 %123, %118
  %125 = mul nuw i64 %123, %121
  %126 = lshr i64 %120, 32
  %127 = and i64 %122, 4294967295
  %128 = add nuw i64 %127, %124
  %129 = add nuw i64 %128, %126
  %130 = lshr i64 %122, 32
  %131 = lshr i64 %129, 32
  %132 = add nuw i64 %130, %125
  %133 = add nuw i64 %132, %131
  %134 = shl i64 %129, 32
  %135 = and i64 %120, 4294967295
  %136 = or disjoint i64 %134, %135
  %137 = xor i64 %136, %133
  %138 = add i64 %137, %103
  %139 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %140 = getelementptr inbounds i8, ptr %139, i32 -64
  %141 = load i64, ptr %140, align 1
  %142 = getelementptr inbounds i8, ptr %139, i32 -56
  %143 = load i64, ptr %142, align 1
  %144 = add i64 %2, 3556072174620004746
  %145 = xor i64 %141, %144
  %146 = sub i64 7238261902898274248, %2
  %147 = xor i64 %143, %146
  %148 = and i64 %145, 4294967295
  %149 = and i64 %147, 4294967295
  %150 = mul nuw i64 %149, %148
  %151 = lshr i64 %145, 32
  %152 = mul nuw i64 %149, %151
  %153 = lshr i64 %147, 32
  %154 = mul nuw i64 %153, %148
  %155 = mul nuw i64 %153, %151
  %156 = lshr i64 %150, 32
  %157 = and i64 %152, 4294967295
  %158 = add nuw i64 %157, %154
  %159 = add nuw i64 %158, %156
  %160 = lshr i64 %152, 32
  %161 = lshr i64 %159, 32
  %162 = add nuw i64 %160, %155
  %163 = add nuw i64 %162, %161
  %164 = shl i64 %159, 32
  %165 = and i64 %150, 4294967295
  %166 = or disjoint i64 %164, %165
  %167 = xor i64 %166, %163
  %168 = add i64 %138, %167
  br label %169

169:                                              ; preds = %109, %107
  %170 = phi i64 [ %168, %109 ], [ %103, %107 ]
  %171 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %172 = load i64, ptr %171, align 1
  %173 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %174 = load i64, ptr %173, align 1
  %175 = add i64 %2, -3818837453329782724
  %176 = xor i64 %172, %175
  %177 = sub i64 -6688317018830679928, %2
  %178 = xor i64 %174, %177
  %179 = and i64 %176, 4294967295
  %180 = and i64 %178, 4294967295
  %181 = mul nuw i64 %180, %179
  %182 = lshr i64 %176, 32
  %183 = mul nuw i64 %180, %182
  %184 = lshr i64 %178, 32
  %185 = mul nuw i64 %184, %179
  %186 = mul nuw i64 %184, %182
  %187 = lshr i64 %181, 32
  %188 = and i64 %183, 4294967295
  %189 = add nuw i64 %188, %185
  %190 = add nuw i64 %189, %187
  %191 = lshr i64 %183, 32
  %192 = lshr i64 %190, 32
  %193 = add nuw i64 %191, %186
  %194 = add nuw i64 %193, %192
  %195 = shl i64 %190, 32
  %196 = and i64 %181, 4294967295
  %197 = or disjoint i64 %195, %196
  %198 = xor i64 %197, %194
  %199 = add i64 %198, %170
  %200 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %201 = getelementptr inbounds i8, ptr %200, i32 -48
  %202 = load i64, ptr %201, align 1
  %203 = getelementptr inbounds i8, ptr %200, i32 -40
  %204 = load i64, ptr %203, align 1
  %205 = add i64 %2, 5690594596133299313
  %206 = xor i64 %202, %205
  %207 = sub i64 -2833645246901970632, %2
  %208 = xor i64 %204, %207
  %209 = and i64 %206, 4294967295
  %210 = and i64 %208, 4294967295
  %211 = mul nuw i64 %210, %209
  %212 = lshr i64 %206, 32
  %213 = mul nuw i64 %210, %212
  %214 = lshr i64 %208, 32
  %215 = mul nuw i64 %214, %209
  %216 = mul nuw i64 %214, %212
  %217 = lshr i64 %211, 32
  %218 = and i64 %213, 4294967295
  %219 = add nuw i64 %218, %215
  %220 = add nuw i64 %219, %217
  %221 = lshr i64 %213, 32
  %222 = lshr i64 %220, 32
  %223 = add nuw i64 %221, %216
  %224 = add nuw i64 %223, %222
  %225 = shl i64 %220, 32
  %226 = and i64 %211, 4294967295
  %227 = or disjoint i64 %225, %226
  %228 = xor i64 %227, %224
  %229 = add i64 %199, %228
  br label %230

230:                                              ; preds = %169, %105
  %231 = phi i64 [ %229, %169 ], [ %103, %105 ]
  %232 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %233 = load i64, ptr %232, align 1
  %234 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %235 = load i64, ptr %234, align 1
  %236 = add i64 %2, 8711581037947681227
  %237 = xor i64 %233, %236
  %238 = sub i64 2410270004345854594, %2
  %239 = xor i64 %235, %238
  %240 = and i64 %237, 4294967295
  %241 = and i64 %239, 4294967295
  %242 = mul nuw i64 %241, %240
  %243 = lshr i64 %237, 32
  %244 = mul nuw i64 %241, %243
  %245 = lshr i64 %239, 32
  %246 = mul nuw i64 %245, %240
  %247 = mul nuw i64 %245, %243
  %248 = lshr i64 %242, 32
  %249 = and i64 %244, 4294967295
  %250 = add nuw i64 %249, %246
  %251 = add nuw i64 %250, %248
  %252 = lshr i64 %244, 32
  %253 = lshr i64 %251, 32
  %254 = add nuw i64 %252, %247
  %255 = add nuw i64 %254, %253
  %256 = shl i64 %251, 32
  %257 = and i64 %242, 4294967295
  %258 = or disjoint i64 %256, %257
  %259 = xor i64 %258, %255
  %260 = add i64 %259, %231
  %261 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %262 = getelementptr inbounds i8, ptr %261, i32 -32
  %263 = load i64, ptr %262, align 1
  %264 = getelementptr inbounds i8, ptr %261, i32 -24
  %265 = load i64, ptr %264, align 1
  %266 = add i64 %2, -8204357891075471176
  %267 = xor i64 %263, %266
  %268 = sub i64 5487137525590930912, %2
  %269 = xor i64 %265, %268
  %270 = and i64 %267, 4294967295
  %271 = and i64 %269, 4294967295
  %272 = mul nuw i64 %271, %270
  %273 = lshr i64 %267, 32
  %274 = mul nuw i64 %271, %273
  %275 = lshr i64 %269, 32
  %276 = mul nuw i64 %275, %270
  %277 = mul nuw i64 %275, %273
  %278 = lshr i64 %272, 32
  %279 = and i64 %274, 4294967295
  %280 = add nuw i64 %279, %276
  %281 = add nuw i64 %280, %278
  %282 = lshr i64 %274, 32
  %283 = lshr i64 %281, 32
  %284 = add nuw i64 %282, %277
  %285 = add nuw i64 %284, %283
  %286 = shl i64 %281, 32
  %287 = and i64 %272, 4294967295
  %288 = or disjoint i64 %286, %287
  %289 = xor i64 %288, %285
  %290 = add i64 %260, %289
  br label %291

291:                                              ; preds = %101, %230
  %292 = phi i64 [ %290, %230 ], [ %103, %101 ]
  %293 = load i64, ptr %0, align 1
  %294 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %295 = load i64, ptr %294, align 1
  %296 = add i64 %2, -4734510112055689544
  %297 = xor i64 %293, %296
  %298 = sub i64 2066345149520216444, %2
  %299 = xor i64 %295, %298
  %300 = and i64 %297, 4294967295
  %301 = and i64 %299, 4294967295
  %302 = mul nuw i64 %301, %300
  %303 = lshr i64 %297, 32
  %304 = mul nuw i64 %301, %303
  %305 = lshr i64 %299, 32
  %306 = mul nuw i64 %305, %300
  %307 = mul nuw i64 %305, %303
  %308 = lshr i64 %302, 32
  %309 = and i64 %304, 4294967295
  %310 = add nuw i64 %309, %306
  %311 = add nuw i64 %310, %308
  %312 = lshr i64 %304, 32
  %313 = lshr i64 %311, 32
  %314 = add nuw i64 %312, %307
  %315 = add nuw i64 %314, %313
  %316 = shl i64 %311, 32
  %317 = and i64 %302, 4294967295
  %318 = or disjoint i64 %316, %317
  %319 = xor i64 %318, %315
  %320 = add i64 %319, %292
  %321 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %322 = getelementptr inbounds i8, ptr %321, i32 -16
  %323 = load i64, ptr %322, align 1
  %324 = getelementptr inbounds i8, ptr %321, i32 -8
  %325 = load i64, ptr %324, align 1
  %326 = add i64 %2, -2623469361688619810
  %327 = xor i64 %323, %326
  %328 = sub i64 2262974939099578482, %2
  %329 = xor i64 %325, %328
  %330 = and i64 %327, 4294967295
  %331 = and i64 %329, 4294967295
  %332 = mul nuw i64 %331, %330
  %333 = lshr i64 %327, 32
  %334 = mul nuw i64 %331, %333
  %335 = lshr i64 %329, 32
  %336 = mul nuw i64 %335, %330
  %337 = mul nuw i64 %335, %333
  %338 = lshr i64 %332, 32
  %339 = and i64 %334, 4294967295
  %340 = add nuw i64 %339, %336
  %341 = add nuw i64 %340, %338
  %342 = lshr i64 %334, 32
  %343 = lshr i64 %341, 32
  %344 = add nuw i64 %342, %337
  %345 = add nuw i64 %344, %343
  %346 = shl i64 %341, 32
  %347 = and i64 %332, 4294967295
  %348 = or disjoint i64 %346, %347
  %349 = xor i64 %348, %345
  %350 = add i64 %320, %349
  %351 = lshr i64 %350, 37
  %352 = xor i64 %351, %350
  %353 = mul i64 %352, 1609587929392839161
  %354 = lshr i64 %353, 32
  %355 = xor i64 %354, %353
  br label %362

356:                                              ; preds = %99
  %357 = icmp ult i32 %1, 241
  br i1 %357, label %358, label %360

358:                                              ; preds = %356
  %359 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @kSecret, i64 noundef %2)
  br label %362

360:                                              ; preds = %356
  %361 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i32 noundef %1, i64 noundef %2)
  br label %362

362:                                              ; preds = %73, %71, %47, %7, %360, %358, %291
  %363 = phi i64 [ %355, %291 ], [ %359, %358 ], [ %361, %360 ], [ %44, %7 ], [ %70, %47 ], [ %98, %73 ], [ 0, %71 ]
  ret i64 %363
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
  br label %524

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
  %417 = and i64 %413, 4294967295
  %418 = and i64 %416, 4294967295
  %419 = mul nuw i64 %418, %417
  %420 = lshr i64 %413, 32
  %421 = mul nuw i64 %418, %420
  %422 = lshr i64 %416, 32
  %423 = mul nuw i64 %422, %417
  %424 = mul nuw i64 %422, %420
  %425 = lshr i64 %419, 32
  %426 = and i64 %421, 4294967295
  %427 = add nuw i64 %426, %423
  %428 = add nuw i64 %427, %425
  %429 = lshr i64 %421, 32
  %430 = lshr i64 %428, 32
  %431 = add nuw i64 %429, %424
  %432 = add nuw i64 %431, %430
  %433 = shl i64 %428, 32
  %434 = and i64 %419, 4294967295
  %435 = or disjoint i64 %433, %434
  %436 = xor i64 %435, %432
  %437 = add i64 %436, %411
  %438 = getelementptr inbounds nuw i8, ptr %4, i32 27
  %439 = load i64, ptr %438, align 1
  %440 = xor i64 %439, %406
  %441 = getelementptr inbounds nuw i8, ptr %4, i32 35
  %442 = load i64, ptr %441, align 1
  %443 = xor i64 %442, %405
  %444 = and i64 %440, 4294967295
  %445 = and i64 %443, 4294967295
  %446 = mul nuw i64 %445, %444
  %447 = lshr i64 %440, 32
  %448 = mul nuw i64 %445, %447
  %449 = lshr i64 %443, 32
  %450 = mul nuw i64 %449, %444
  %451 = mul nuw i64 %449, %447
  %452 = lshr i64 %446, 32
  %453 = and i64 %448, 4294967295
  %454 = add nuw i64 %453, %450
  %455 = add nuw i64 %454, %452
  %456 = lshr i64 %448, 32
  %457 = lshr i64 %455, 32
  %458 = add nuw i64 %456, %451
  %459 = add nuw i64 %458, %457
  %460 = shl i64 %455, 32
  %461 = and i64 %446, 4294967295
  %462 = or disjoint i64 %460, %461
  %463 = xor i64 %462, %459
  %464 = add i64 %437, %463
  %465 = getelementptr inbounds nuw i8, ptr %4, i32 43
  %466 = load i64, ptr %465, align 1
  %467 = xor i64 %466, %404
  %468 = getelementptr inbounds nuw i8, ptr %4, i32 51
  %469 = load i64, ptr %468, align 1
  %470 = xor i64 %469, %403
  %471 = and i64 %467, 4294967295
  %472 = and i64 %470, 4294967295
  %473 = mul nuw i64 %472, %471
  %474 = lshr i64 %467, 32
  %475 = mul nuw i64 %472, %474
  %476 = lshr i64 %470, 32
  %477 = mul nuw i64 %476, %471
  %478 = mul nuw i64 %476, %474
  %479 = lshr i64 %473, 32
  %480 = and i64 %475, 4294967295
  %481 = add nuw i64 %480, %477
  %482 = add nuw i64 %481, %479
  %483 = lshr i64 %475, 32
  %484 = lshr i64 %482, 32
  %485 = add nuw i64 %483, %478
  %486 = add nuw i64 %485, %484
  %487 = shl i64 %482, 32
  %488 = and i64 %473, 4294967295
  %489 = or disjoint i64 %487, %488
  %490 = xor i64 %489, %486
  %491 = add i64 %464, %490
  %492 = getelementptr inbounds nuw i8, ptr %4, i32 59
  %493 = load i64, ptr %492, align 1
  %494 = xor i64 %493, %402
  %495 = getelementptr inbounds nuw i8, ptr %4, i32 67
  %496 = load i64, ptr %495, align 1
  %497 = xor i64 %496, %401
  %498 = and i64 %494, 4294967295
  %499 = and i64 %497, 4294967295
  %500 = mul nuw i64 %499, %498
  %501 = lshr i64 %494, 32
  %502 = mul nuw i64 %499, %501
  %503 = lshr i64 %497, 32
  %504 = mul nuw i64 %503, %498
  %505 = mul nuw i64 %503, %501
  %506 = lshr i64 %500, 32
  %507 = and i64 %502, 4294967295
  %508 = add nuw i64 %507, %504
  %509 = add nuw i64 %508, %506
  %510 = lshr i64 %502, 32
  %511 = lshr i64 %509, 32
  %512 = add nuw i64 %510, %505
  %513 = add nuw i64 %512, %511
  %514 = shl i64 %509, 32
  %515 = and i64 %500, 4294967295
  %516 = or disjoint i64 %514, %515
  %517 = xor i64 %516, %513
  %518 = add i64 %491, %517
  %519 = lshr i64 %518, 37
  %520 = xor i64 %519, %518
  %521 = mul i64 %520, 1609587929392839161
  %522 = lshr i64 %521, 32
  %523 = xor i64 %522, %521
  br label %524

524:                                              ; preds = %400, %56
  %525 = phi i64 [ %57, %56 ], [ %523, %400 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #26
  ret i64 %525
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
  br i1 %5, label %6, label %700

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
  %593 = and i64 %589, 4294967295
  %594 = and i64 %592, 4294967295
  %595 = mul nuw i64 %594, %593
  %596 = lshr i64 %589, 32
  %597 = mul nuw i64 %594, %596
  %598 = lshr i64 %592, 32
  %599 = mul nuw i64 %598, %593
  %600 = mul nuw i64 %598, %596
  %601 = lshr i64 %595, 32
  %602 = and i64 %597, 4294967295
  %603 = add nuw i64 %602, %599
  %604 = add nuw i64 %603, %601
  %605 = lshr i64 %597, 32
  %606 = lshr i64 %604, 32
  %607 = add nuw i64 %605, %600
  %608 = add nuw i64 %607, %606
  %609 = shl i64 %604, 32
  %610 = and i64 %595, 4294967295
  %611 = or disjoint i64 %609, %610
  %612 = xor i64 %611, %608
  %613 = add i64 %612, %587
  %614 = getelementptr inbounds nuw i8, ptr %577, i32 27
  %615 = load i64, ptr %614, align 1
  %616 = xor i64 %615, %583
  %617 = getelementptr inbounds nuw i8, ptr %577, i32 35
  %618 = load i64, ptr %617, align 1
  %619 = xor i64 %618, %582
  %620 = and i64 %616, 4294967295
  %621 = and i64 %619, 4294967295
  %622 = mul nuw i64 %621, %620
  %623 = lshr i64 %616, 32
  %624 = mul nuw i64 %621, %623
  %625 = lshr i64 %619, 32
  %626 = mul nuw i64 %625, %620
  %627 = mul nuw i64 %625, %623
  %628 = lshr i64 %622, 32
  %629 = and i64 %624, 4294967295
  %630 = add nuw i64 %629, %626
  %631 = add nuw i64 %630, %628
  %632 = lshr i64 %624, 32
  %633 = lshr i64 %631, 32
  %634 = add nuw i64 %632, %627
  %635 = add nuw i64 %634, %633
  %636 = shl i64 %631, 32
  %637 = and i64 %622, 4294967295
  %638 = or disjoint i64 %636, %637
  %639 = xor i64 %638, %635
  %640 = add i64 %613, %639
  %641 = getelementptr inbounds nuw i8, ptr %577, i32 43
  %642 = load i64, ptr %641, align 1
  %643 = xor i64 %642, %581
  %644 = getelementptr inbounds nuw i8, ptr %577, i32 51
  %645 = load i64, ptr %644, align 1
  %646 = xor i64 %645, %580
  %647 = and i64 %643, 4294967295
  %648 = and i64 %646, 4294967295
  %649 = mul nuw i64 %648, %647
  %650 = lshr i64 %643, 32
  %651 = mul nuw i64 %648, %650
  %652 = lshr i64 %646, 32
  %653 = mul nuw i64 %652, %647
  %654 = mul nuw i64 %652, %650
  %655 = lshr i64 %649, 32
  %656 = and i64 %651, 4294967295
  %657 = add nuw i64 %656, %653
  %658 = add nuw i64 %657, %655
  %659 = lshr i64 %651, 32
  %660 = lshr i64 %658, 32
  %661 = add nuw i64 %659, %654
  %662 = add nuw i64 %661, %660
  %663 = shl i64 %658, 32
  %664 = and i64 %649, 4294967295
  %665 = or disjoint i64 %663, %664
  %666 = xor i64 %665, %662
  %667 = add i64 %640, %666
  %668 = getelementptr inbounds nuw i8, ptr %577, i32 59
  %669 = load i64, ptr %668, align 1
  %670 = xor i64 %669, %579
  %671 = getelementptr inbounds nuw i8, ptr %577, i32 67
  %672 = load i64, ptr %671, align 1
  %673 = xor i64 %672, %578
  %674 = and i64 %670, 4294967295
  %675 = and i64 %673, 4294967295
  %676 = mul nuw i64 %675, %674
  %677 = lshr i64 %670, 32
  %678 = mul nuw i64 %675, %677
  %679 = lshr i64 %673, 32
  %680 = mul nuw i64 %679, %674
  %681 = mul nuw i64 %679, %677
  %682 = lshr i64 %676, 32
  %683 = and i64 %678, 4294967295
  %684 = add nuw i64 %683, %680
  %685 = add nuw i64 %684, %682
  %686 = lshr i64 %678, 32
  %687 = lshr i64 %685, 32
  %688 = add nuw i64 %686, %681
  %689 = add nuw i64 %688, %687
  %690 = shl i64 %685, 32
  %691 = and i64 %676, 4294967295
  %692 = or disjoint i64 %690, %691
  %693 = xor i64 %692, %689
  %694 = add i64 %667, %693
  %695 = lshr i64 %694, 37
  %696 = xor i64 %695, %694
  %697 = mul i64 %696, 1609587929392839161
  %698 = lshr i64 %697, 32
  %699 = xor i64 %698, %697
  br label %1428

700:                                              ; preds = %1
  %701 = getelementptr inbounds nuw i8, ptr %0, i32 544
  %702 = load i64, ptr %701, align 32
  %703 = icmp eq i64 %702, 0
  %704 = getelementptr inbounds nuw i8, ptr %0, i32 256
  %705 = trunc nuw nsw i64 %4 to i32
  br i1 %703, label %1058, label %706

706:                                              ; preds = %700
  %707 = icmp samesign ult i32 %705, 17
  br i1 %707, label %708, label %800

708:                                              ; preds = %706
  %709 = icmp samesign ugt i32 %705, 8
  br i1 %709, label %710, label %747

710:                                              ; preds = %708
  %711 = load i64, ptr %704, align 1
  %712 = add i64 %702, -4734510112055689544
  %713 = xor i64 %711, %712
  %714 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %715 = getelementptr inbounds i8, ptr %714, i32 -8
  %716 = load i64, ptr %715, align 1
  %717 = sub i64 2066345149520216444, %702
  %718 = xor i64 %716, %717
  %719 = and i64 %713, 4294967295
  %720 = and i64 %718, 4294967295
  %721 = mul nuw i64 %720, %719
  %722 = lshr i64 %713, 32
  %723 = mul nuw i64 %720, %722
  %724 = lshr i64 %718, 32
  %725 = mul nuw i64 %724, %719
  %726 = mul nuw i64 %724, %722
  %727 = lshr i64 %721, 32
  %728 = and i64 %723, 4294967295
  %729 = add nuw i64 %728, %725
  %730 = add nuw i64 %729, %727
  %731 = lshr i64 %723, 32
  %732 = lshr i64 %730, 32
  %733 = add nuw i64 %731, %726
  %734 = add nuw i64 %733, %732
  %735 = shl i64 %730, 32
  %736 = and i64 %721, 4294967295
  %737 = or disjoint i64 %735, %736
  %738 = xor i64 %737, %734
  %739 = add i64 %713, %4
  %740 = add i64 %739, %718
  %741 = add i64 %740, %738
  %742 = lshr i64 %741, 37
  %743 = xor i64 %742, %741
  %744 = mul i64 %743, 1609587929392839161
  %745 = lshr i64 %744, 32
  %746 = xor i64 %745, %744
  br label %1428

747:                                              ; preds = %708
  %748 = icmp samesign ugt i32 %705, 3
  br i1 %748, label %749, label %772

749:                                              ; preds = %747
  %750 = load i32, ptr %704, align 1
  %751 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %752 = getelementptr inbounds i8, ptr %751, i32 -4
  %753 = load i32, ptr %752, align 1
  %754 = zext i32 %750 to i64
  %755 = zext i32 %753 to i64
  %756 = shl nuw i64 %755, 32
  %757 = or disjoint i64 %756, %754
  %758 = add i64 %702, -4734510112055689544
  %759 = xor i64 %757, %758
  %760 = lshr i64 %759, 51
  %761 = xor i64 %760, %759
  %762 = mul i64 %761, 2654435761
  %763 = add i64 %762, %4
  %764 = lshr i64 %763, 47
  %765 = xor i64 %764, %763
  %766 = mul i64 %765, -4417276706812531889
  %767 = lshr i64 %766, 37
  %768 = xor i64 %767, %766
  %769 = mul i64 %768, 1609587929392839161
  %770 = lshr i64 %769, 32
  %771 = xor i64 %770, %769
  br label %1428

772:                                              ; preds = %747
  %773 = icmp eq i32 %705, 0
  br i1 %773, label %1428, label %774

774:                                              ; preds = %772
  %775 = load i8, ptr %704, align 1
  %776 = lshr i32 %705, 1
  %777 = getelementptr inbounds nuw i8, ptr %704, i32 %776
  %778 = load i8, ptr %777, align 1
  %779 = getelementptr i8, ptr %704, i32 %705
  %780 = getelementptr i8, ptr %779, i32 -1
  %781 = load i8, ptr %780, align 1
  %782 = zext i8 %775 to i32
  %783 = zext i8 %778 to i32
  %784 = shl nuw nsw i32 %783, 8
  %785 = or disjoint i32 %784, %782
  %786 = zext i8 %781 to i32
  %787 = shl nuw nsw i32 %786, 16
  %788 = or disjoint i32 %785, %787
  %789 = shl nuw nsw i32 %705, 24
  %790 = or disjoint i32 %788, %789
  %791 = zext nneg i32 %790 to i64
  %792 = add i64 %702, 963444408
  %793 = xor i64 %792, %791
  %794 = mul i64 %793, -7046029288634856825
  %795 = lshr i64 %794, 37
  %796 = xor i64 %795, %794
  %797 = mul i64 %796, 1609587929392839161
  %798 = lshr i64 %797, 32
  %799 = xor i64 %798, %797
  br label %1428

800:                                              ; preds = %706
  %801 = icmp samesign ult i32 %705, 129
  br i1 %801, label %802, label %1056

802:                                              ; preds = %800
  %803 = mul i64 %4, -7046029288634856825
  %804 = icmp samesign ugt i32 %705, 32
  br i1 %804, label %805, label %991

805:                                              ; preds = %802
  %806 = icmp samesign ugt i32 %705, 64
  br i1 %806, label %807, label %930

807:                                              ; preds = %805
  %808 = icmp samesign ugt i32 %705, 96
  br i1 %808, label %809, label %869

809:                                              ; preds = %807
  %810 = getelementptr inbounds nuw i8, ptr %0, i32 304
  %811 = load i64, ptr %810, align 1
  %812 = getelementptr inbounds nuw i8, ptr %0, i32 312
  %813 = load i64, ptr %812, align 1
  %814 = add i64 %702, 4554437623014685352
  %815 = xor i64 %811, %814
  %816 = sub i64 2111919702937427193, %702
  %817 = xor i64 %813, %816
  %818 = and i64 %815, 4294967295
  %819 = and i64 %817, 4294967295
  %820 = mul nuw i64 %819, %818
  %821 = lshr i64 %815, 32
  %822 = mul nuw i64 %819, %821
  %823 = lshr i64 %817, 32
  %824 = mul nuw i64 %823, %818
  %825 = mul nuw i64 %823, %821
  %826 = lshr i64 %820, 32
  %827 = and i64 %822, 4294967295
  %828 = add nuw i64 %827, %824
  %829 = add nuw i64 %828, %826
  %830 = lshr i64 %822, 32
  %831 = lshr i64 %829, 32
  %832 = add nuw i64 %830, %825
  %833 = add nuw i64 %832, %831
  %834 = shl i64 %829, 32
  %835 = and i64 %820, 4294967295
  %836 = or disjoint i64 %834, %835
  %837 = xor i64 %836, %833
  %838 = add i64 %837, %803
  %839 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %840 = getelementptr inbounds i8, ptr %839, i32 -64
  %841 = load i64, ptr %840, align 1
  %842 = getelementptr inbounds i8, ptr %839, i32 -56
  %843 = load i64, ptr %842, align 1
  %844 = add i64 %702, 3556072174620004746
  %845 = xor i64 %841, %844
  %846 = sub i64 7238261902898274248, %702
  %847 = xor i64 %843, %846
  %848 = and i64 %845, 4294967295
  %849 = and i64 %847, 4294967295
  %850 = mul nuw i64 %849, %848
  %851 = lshr i64 %845, 32
  %852 = mul nuw i64 %849, %851
  %853 = lshr i64 %847, 32
  %854 = mul nuw i64 %853, %848
  %855 = mul nuw i64 %853, %851
  %856 = lshr i64 %850, 32
  %857 = and i64 %852, 4294967295
  %858 = add nuw i64 %857, %854
  %859 = add nuw i64 %858, %856
  %860 = lshr i64 %852, 32
  %861 = lshr i64 %859, 32
  %862 = add nuw i64 %860, %855
  %863 = add nuw i64 %862, %861
  %864 = shl i64 %859, 32
  %865 = and i64 %850, 4294967295
  %866 = or disjoint i64 %864, %865
  %867 = xor i64 %866, %863
  %868 = add i64 %838, %867
  br label %869

869:                                              ; preds = %809, %807
  %870 = phi i64 [ %868, %809 ], [ %803, %807 ]
  %871 = getelementptr inbounds nuw i8, ptr %0, i32 288
  %872 = load i64, ptr %871, align 1
  %873 = getelementptr inbounds nuw i8, ptr %0, i32 296
  %874 = load i64, ptr %873, align 1
  %875 = add i64 %702, -3818837453329782724
  %876 = xor i64 %872, %875
  %877 = sub i64 -6688317018830679928, %702
  %878 = xor i64 %874, %877
  %879 = and i64 %876, 4294967295
  %880 = and i64 %878, 4294967295
  %881 = mul nuw i64 %880, %879
  %882 = lshr i64 %876, 32
  %883 = mul nuw i64 %880, %882
  %884 = lshr i64 %878, 32
  %885 = mul nuw i64 %884, %879
  %886 = mul nuw i64 %884, %882
  %887 = lshr i64 %881, 32
  %888 = and i64 %883, 4294967295
  %889 = add nuw i64 %888, %885
  %890 = add nuw i64 %889, %887
  %891 = lshr i64 %883, 32
  %892 = lshr i64 %890, 32
  %893 = add nuw i64 %891, %886
  %894 = add nuw i64 %893, %892
  %895 = shl i64 %890, 32
  %896 = and i64 %881, 4294967295
  %897 = or disjoint i64 %895, %896
  %898 = xor i64 %897, %894
  %899 = add i64 %898, %870
  %900 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %901 = getelementptr inbounds i8, ptr %900, i32 -48
  %902 = load i64, ptr %901, align 1
  %903 = getelementptr inbounds i8, ptr %900, i32 -40
  %904 = load i64, ptr %903, align 1
  %905 = add i64 %702, 5690594596133299313
  %906 = xor i64 %902, %905
  %907 = sub i64 -2833645246901970632, %702
  %908 = xor i64 %904, %907
  %909 = and i64 %906, 4294967295
  %910 = and i64 %908, 4294967295
  %911 = mul nuw i64 %910, %909
  %912 = lshr i64 %906, 32
  %913 = mul nuw i64 %910, %912
  %914 = lshr i64 %908, 32
  %915 = mul nuw i64 %914, %909
  %916 = mul nuw i64 %914, %912
  %917 = lshr i64 %911, 32
  %918 = and i64 %913, 4294967295
  %919 = add nuw i64 %918, %915
  %920 = add nuw i64 %919, %917
  %921 = lshr i64 %913, 32
  %922 = lshr i64 %920, 32
  %923 = add nuw i64 %921, %916
  %924 = add nuw i64 %923, %922
  %925 = shl i64 %920, 32
  %926 = and i64 %911, 4294967295
  %927 = or disjoint i64 %925, %926
  %928 = xor i64 %927, %924
  %929 = add i64 %899, %928
  br label %930

930:                                              ; preds = %869, %805
  %931 = phi i64 [ %929, %869 ], [ %803, %805 ]
  %932 = getelementptr inbounds nuw i8, ptr %0, i32 272
  %933 = load i64, ptr %932, align 1
  %934 = getelementptr inbounds nuw i8, ptr %0, i32 280
  %935 = load i64, ptr %934, align 1
  %936 = add i64 %702, 8711581037947681227
  %937 = xor i64 %933, %936
  %938 = sub i64 2410270004345854594, %702
  %939 = xor i64 %935, %938
  %940 = and i64 %937, 4294967295
  %941 = and i64 %939, 4294967295
  %942 = mul nuw i64 %941, %940
  %943 = lshr i64 %937, 32
  %944 = mul nuw i64 %941, %943
  %945 = lshr i64 %939, 32
  %946 = mul nuw i64 %945, %940
  %947 = mul nuw i64 %945, %943
  %948 = lshr i64 %942, 32
  %949 = and i64 %944, 4294967295
  %950 = add nuw i64 %949, %946
  %951 = add nuw i64 %950, %948
  %952 = lshr i64 %944, 32
  %953 = lshr i64 %951, 32
  %954 = add nuw i64 %952, %947
  %955 = add nuw i64 %954, %953
  %956 = shl i64 %951, 32
  %957 = and i64 %942, 4294967295
  %958 = or disjoint i64 %956, %957
  %959 = xor i64 %958, %955
  %960 = add i64 %959, %931
  %961 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %962 = getelementptr inbounds i8, ptr %961, i32 -32
  %963 = load i64, ptr %962, align 1
  %964 = getelementptr inbounds i8, ptr %961, i32 -24
  %965 = load i64, ptr %964, align 1
  %966 = add i64 %702, -8204357891075471176
  %967 = xor i64 %963, %966
  %968 = sub i64 5487137525590930912, %702
  %969 = xor i64 %965, %968
  %970 = and i64 %967, 4294967295
  %971 = and i64 %969, 4294967295
  %972 = mul nuw i64 %971, %970
  %973 = lshr i64 %967, 32
  %974 = mul nuw i64 %971, %973
  %975 = lshr i64 %969, 32
  %976 = mul nuw i64 %975, %970
  %977 = mul nuw i64 %975, %973
  %978 = lshr i64 %972, 32
  %979 = and i64 %974, 4294967295
  %980 = add nuw i64 %979, %976
  %981 = add nuw i64 %980, %978
  %982 = lshr i64 %974, 32
  %983 = lshr i64 %981, 32
  %984 = add nuw i64 %982, %977
  %985 = add nuw i64 %984, %983
  %986 = shl i64 %981, 32
  %987 = and i64 %972, 4294967295
  %988 = or disjoint i64 %986, %987
  %989 = xor i64 %988, %985
  %990 = add i64 %960, %989
  br label %991

991:                                              ; preds = %930, %802
  %992 = phi i64 [ %990, %930 ], [ %803, %802 ]
  %993 = load i64, ptr %704, align 1
  %994 = getelementptr inbounds nuw i8, ptr %0, i32 264
  %995 = load i64, ptr %994, align 1
  %996 = add i64 %702, -4734510112055689544
  %997 = xor i64 %993, %996
  %998 = sub i64 2066345149520216444, %702
  %999 = xor i64 %995, %998
  %1000 = and i64 %997, 4294967295
  %1001 = and i64 %999, 4294967295
  %1002 = mul nuw i64 %1001, %1000
  %1003 = lshr i64 %997, 32
  %1004 = mul nuw i64 %1001, %1003
  %1005 = lshr i64 %999, 32
  %1006 = mul nuw i64 %1005, %1000
  %1007 = mul nuw i64 %1005, %1003
  %1008 = lshr i64 %1002, 32
  %1009 = and i64 %1004, 4294967295
  %1010 = add nuw i64 %1009, %1006
  %1011 = add nuw i64 %1010, %1008
  %1012 = lshr i64 %1004, 32
  %1013 = lshr i64 %1011, 32
  %1014 = add nuw i64 %1012, %1007
  %1015 = add nuw i64 %1014, %1013
  %1016 = shl i64 %1011, 32
  %1017 = and i64 %1002, 4294967295
  %1018 = or disjoint i64 %1016, %1017
  %1019 = xor i64 %1018, %1015
  %1020 = add i64 %1019, %992
  %1021 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %1022 = getelementptr inbounds i8, ptr %1021, i32 -16
  %1023 = load i64, ptr %1022, align 1
  %1024 = getelementptr inbounds i8, ptr %1021, i32 -8
  %1025 = load i64, ptr %1024, align 1
  %1026 = add i64 %702, -2623469361688619810
  %1027 = xor i64 %1023, %1026
  %1028 = sub i64 2262974939099578482, %702
  %1029 = xor i64 %1025, %1028
  %1030 = and i64 %1027, 4294967295
  %1031 = and i64 %1029, 4294967295
  %1032 = mul nuw i64 %1031, %1030
  %1033 = lshr i64 %1027, 32
  %1034 = mul nuw i64 %1031, %1033
  %1035 = lshr i64 %1029, 32
  %1036 = mul nuw i64 %1035, %1030
  %1037 = mul nuw i64 %1035, %1033
  %1038 = lshr i64 %1032, 32
  %1039 = and i64 %1034, 4294967295
  %1040 = add nuw i64 %1039, %1036
  %1041 = add nuw i64 %1040, %1038
  %1042 = lshr i64 %1034, 32
  %1043 = lshr i64 %1041, 32
  %1044 = add nuw i64 %1042, %1037
  %1045 = add nuw i64 %1044, %1043
  %1046 = shl i64 %1041, 32
  %1047 = and i64 %1032, 4294967295
  %1048 = or disjoint i64 %1046, %1047
  %1049 = xor i64 %1048, %1045
  %1050 = add i64 %1020, %1049
  %1051 = lshr i64 %1050, 37
  %1052 = xor i64 %1051, %1050
  %1053 = mul i64 %1052, 1609587929392839161
  %1054 = lshr i64 %1053, 32
  %1055 = xor i64 %1054, %1053
  br label %1428

1056:                                             ; preds = %800
  %1057 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %704, i32 noundef %705, ptr noundef nonnull @kSecret, i64 noundef %702)
  br label %1428

1058:                                             ; preds = %700
  %1059 = getelementptr inbounds nuw i8, ptr %0, i32 560
  %1060 = load ptr, ptr %1059, align 16
  %1061 = icmp samesign ult i32 %705, 17
  br i1 %1061, label %1062, label %1155

1062:                                             ; preds = %1058
  %1063 = icmp samesign ugt i32 %705, 8
  br i1 %1063, label %1064, label %1102

1064:                                             ; preds = %1062
  %1065 = load i64, ptr %704, align 1
  %1066 = load i64, ptr %1060, align 1
  %1067 = xor i64 %1066, %1065
  %1068 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %1069 = getelementptr inbounds i8, ptr %1068, i32 -8
  %1070 = load i64, ptr %1069, align 1
  %1071 = getelementptr inbounds nuw i8, ptr %1060, i32 8
  %1072 = load i64, ptr %1071, align 1
  %1073 = xor i64 %1072, %1070
  %1074 = and i64 %1067, 4294967295
  %1075 = and i64 %1073, 4294967295
  %1076 = mul nuw i64 %1075, %1074
  %1077 = lshr i64 %1067, 32
  %1078 = mul nuw i64 %1075, %1077
  %1079 = lshr i64 %1073, 32
  %1080 = mul nuw i64 %1079, %1074
  %1081 = mul nuw i64 %1079, %1077
  %1082 = lshr i64 %1076, 32
  %1083 = and i64 %1078, 4294967295
  %1084 = add nuw i64 %1083, %1080
  %1085 = add nuw i64 %1084, %1082
  %1086 = lshr i64 %1078, 32
  %1087 = lshr i64 %1085, 32
  %1088 = add nuw i64 %1086, %1081
  %1089 = add nuw i64 %1088, %1087
  %1090 = shl i64 %1085, 32
  %1091 = and i64 %1076, 4294967295
  %1092 = or disjoint i64 %1090, %1091
  %1093 = xor i64 %1092, %1089
  %1094 = add i64 %1067, %4
  %1095 = add i64 %1094, %1073
  %1096 = add i64 %1095, %1093
  %1097 = lshr i64 %1096, 37
  %1098 = xor i64 %1097, %1096
  %1099 = mul i64 %1098, 1609587929392839161
  %1100 = lshr i64 %1099, 32
  %1101 = xor i64 %1100, %1099
  br label %1428

1102:                                             ; preds = %1062
  %1103 = icmp samesign ugt i32 %705, 3
  br i1 %1103, label %1104, label %1127

1104:                                             ; preds = %1102
  %1105 = load i32, ptr %704, align 1
  %1106 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %1107 = getelementptr inbounds i8, ptr %1106, i32 -4
  %1108 = load i32, ptr %1107, align 1
  %1109 = zext i32 %1105 to i64
  %1110 = zext i32 %1108 to i64
  %1111 = shl nuw i64 %1110, 32
  %1112 = or disjoint i64 %1111, %1109
  %1113 = load i64, ptr %1060, align 1
  %1114 = xor i64 %1112, %1113
  %1115 = lshr i64 %1114, 51
  %1116 = xor i64 %1115, %1114
  %1117 = mul i64 %1116, 2654435761
  %1118 = add i64 %1117, %4
  %1119 = lshr i64 %1118, 47
  %1120 = xor i64 %1119, %1118
  %1121 = mul i64 %1120, -4417276706812531889
  %1122 = lshr i64 %1121, 37
  %1123 = xor i64 %1122, %1121
  %1124 = mul i64 %1123, 1609587929392839161
  %1125 = lshr i64 %1124, 32
  %1126 = xor i64 %1125, %1124
  br label %1428

1127:                                             ; preds = %1102
  %1128 = icmp eq i32 %705, 0
  br i1 %1128, label %1428, label %1129

1129:                                             ; preds = %1127
  %1130 = load i8, ptr %704, align 1
  %1131 = lshr i32 %705, 1
  %1132 = getelementptr inbounds nuw i8, ptr %704, i32 %1131
  %1133 = load i8, ptr %1132, align 1
  %1134 = getelementptr i8, ptr %704, i32 %705
  %1135 = getelementptr i8, ptr %1134, i32 -1
  %1136 = load i8, ptr %1135, align 1
  %1137 = zext i8 %1130 to i32
  %1138 = zext i8 %1133 to i32
  %1139 = shl nuw nsw i32 %1138, 8
  %1140 = or disjoint i32 %1139, %1137
  %1141 = zext i8 %1136 to i32
  %1142 = shl nuw nsw i32 %1141, 16
  %1143 = or disjoint i32 %1140, %1142
  %1144 = shl nuw nsw i32 %705, 24
  %1145 = or disjoint i32 %1143, %1144
  %1146 = load i32, ptr %1060, align 1
  %1147 = xor i32 %1145, %1146
  %1148 = zext i32 %1147 to i64
  %1149 = mul i64 %1148, -7046029288634856825
  %1150 = lshr i64 %1149, 37
  %1151 = xor i64 %1150, %1149
  %1152 = mul i64 %1151, 1609587929392839161
  %1153 = lshr i64 %1152, 32
  %1154 = xor i64 %1153, %1152
  br label %1428

1155:                                             ; preds = %1058
  %1156 = icmp samesign ult i32 %705, 129
  br i1 %1156, label %1157, label %1426

1157:                                             ; preds = %1155
  %1158 = mul i64 %4, -7046029288634856825
  %1159 = icmp samesign ugt i32 %705, 32
  br i1 %1159, label %1160, label %1358

1160:                                             ; preds = %1157
  %1161 = icmp samesign ugt i32 %705, 64
  br i1 %1161, label %1162, label %1293

1162:                                             ; preds = %1160
  %1163 = icmp samesign ugt i32 %705, 96
  br i1 %1163, label %1164, label %1228

1164:                                             ; preds = %1162
  %1165 = getelementptr inbounds nuw i8, ptr %0, i32 304
  %1166 = getelementptr inbounds nuw i8, ptr %1060, i32 96
  %1167 = load i64, ptr %1165, align 1
  %1168 = getelementptr inbounds nuw i8, ptr %0, i32 312
  %1169 = load i64, ptr %1168, align 1
  %1170 = load i64, ptr %1166, align 1
  %1171 = xor i64 %1170, %1167
  %1172 = getelementptr inbounds nuw i8, ptr %1060, i32 104
  %1173 = load i64, ptr %1172, align 1
  %1174 = xor i64 %1173, %1169
  %1175 = and i64 %1171, 4294967295
  %1176 = and i64 %1174, 4294967295
  %1177 = mul nuw i64 %1176, %1175
  %1178 = lshr i64 %1171, 32
  %1179 = mul nuw i64 %1176, %1178
  %1180 = lshr i64 %1174, 32
  %1181 = mul nuw i64 %1180, %1175
  %1182 = mul nuw i64 %1180, %1178
  %1183 = lshr i64 %1177, 32
  %1184 = and i64 %1179, 4294967295
  %1185 = add nuw i64 %1184, %1181
  %1186 = add nuw i64 %1185, %1183
  %1187 = lshr i64 %1179, 32
  %1188 = lshr i64 %1186, 32
  %1189 = add nuw i64 %1187, %1182
  %1190 = add nuw i64 %1189, %1188
  %1191 = shl i64 %1186, 32
  %1192 = and i64 %1177, 4294967295
  %1193 = or disjoint i64 %1191, %1192
  %1194 = xor i64 %1193, %1190
  %1195 = add i64 %1194, %1158
  %1196 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %1197 = getelementptr inbounds i8, ptr %1196, i32 -64
  %1198 = getelementptr inbounds nuw i8, ptr %1060, i32 112
  %1199 = load i64, ptr %1197, align 1
  %1200 = getelementptr inbounds i8, ptr %1196, i32 -56
  %1201 = load i64, ptr %1200, align 1
  %1202 = load i64, ptr %1198, align 1
  %1203 = xor i64 %1202, %1199
  %1204 = getelementptr inbounds nuw i8, ptr %1060, i32 120
  %1205 = load i64, ptr %1204, align 1
  %1206 = xor i64 %1205, %1201
  %1207 = and i64 %1203, 4294967295
  %1208 = and i64 %1206, 4294967295
  %1209 = mul nuw i64 %1208, %1207
  %1210 = lshr i64 %1203, 32
  %1211 = mul nuw i64 %1208, %1210
  %1212 = lshr i64 %1206, 32
  %1213 = mul nuw i64 %1212, %1207
  %1214 = mul nuw i64 %1212, %1210
  %1215 = lshr i64 %1209, 32
  %1216 = and i64 %1211, 4294967295
  %1217 = add nuw i64 %1216, %1213
  %1218 = add nuw i64 %1217, %1215
  %1219 = lshr i64 %1211, 32
  %1220 = lshr i64 %1218, 32
  %1221 = add nuw i64 %1219, %1214
  %1222 = add nuw i64 %1221, %1220
  %1223 = shl i64 %1218, 32
  %1224 = and i64 %1209, 4294967295
  %1225 = or disjoint i64 %1223, %1224
  %1226 = xor i64 %1225, %1222
  %1227 = add i64 %1195, %1226
  br label %1228

1228:                                             ; preds = %1164, %1162
  %1229 = phi i64 [ %1227, %1164 ], [ %1158, %1162 ]
  %1230 = getelementptr inbounds nuw i8, ptr %0, i32 288
  %1231 = getelementptr inbounds nuw i8, ptr %1060, i32 64
  %1232 = load i64, ptr %1230, align 1
  %1233 = getelementptr inbounds nuw i8, ptr %0, i32 296
  %1234 = load i64, ptr %1233, align 1
  %1235 = load i64, ptr %1231, align 1
  %1236 = xor i64 %1235, %1232
  %1237 = getelementptr inbounds nuw i8, ptr %1060, i32 72
  %1238 = load i64, ptr %1237, align 1
  %1239 = xor i64 %1238, %1234
  %1240 = and i64 %1236, 4294967295
  %1241 = and i64 %1239, 4294967295
  %1242 = mul nuw i64 %1241, %1240
  %1243 = lshr i64 %1236, 32
  %1244 = mul nuw i64 %1241, %1243
  %1245 = lshr i64 %1239, 32
  %1246 = mul nuw i64 %1245, %1240
  %1247 = mul nuw i64 %1245, %1243
  %1248 = lshr i64 %1242, 32
  %1249 = and i64 %1244, 4294967295
  %1250 = add nuw i64 %1249, %1246
  %1251 = add nuw i64 %1250, %1248
  %1252 = lshr i64 %1244, 32
  %1253 = lshr i64 %1251, 32
  %1254 = add nuw i64 %1252, %1247
  %1255 = add nuw i64 %1254, %1253
  %1256 = shl i64 %1251, 32
  %1257 = and i64 %1242, 4294967295
  %1258 = or disjoint i64 %1256, %1257
  %1259 = xor i64 %1258, %1255
  %1260 = add i64 %1259, %1229
  %1261 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %1262 = getelementptr inbounds i8, ptr %1261, i32 -48
  %1263 = getelementptr inbounds nuw i8, ptr %1060, i32 80
  %1264 = load i64, ptr %1262, align 1
  %1265 = getelementptr inbounds i8, ptr %1261, i32 -40
  %1266 = load i64, ptr %1265, align 1
  %1267 = load i64, ptr %1263, align 1
  %1268 = xor i64 %1267, %1264
  %1269 = getelementptr inbounds nuw i8, ptr %1060, i32 88
  %1270 = load i64, ptr %1269, align 1
  %1271 = xor i64 %1270, %1266
  %1272 = and i64 %1268, 4294967295
  %1273 = and i64 %1271, 4294967295
  %1274 = mul nuw i64 %1273, %1272
  %1275 = lshr i64 %1268, 32
  %1276 = mul nuw i64 %1273, %1275
  %1277 = lshr i64 %1271, 32
  %1278 = mul nuw i64 %1277, %1272
  %1279 = mul nuw i64 %1277, %1275
  %1280 = lshr i64 %1274, 32
  %1281 = and i64 %1276, 4294967295
  %1282 = add nuw i64 %1281, %1278
  %1283 = add nuw i64 %1282, %1280
  %1284 = lshr i64 %1276, 32
  %1285 = lshr i64 %1283, 32
  %1286 = add nuw i64 %1284, %1279
  %1287 = add nuw i64 %1286, %1285
  %1288 = shl i64 %1283, 32
  %1289 = and i64 %1274, 4294967295
  %1290 = or disjoint i64 %1288, %1289
  %1291 = xor i64 %1290, %1287
  %1292 = add i64 %1260, %1291
  br label %1293

1293:                                             ; preds = %1228, %1160
  %1294 = phi i64 [ %1292, %1228 ], [ %1158, %1160 ]
  %1295 = getelementptr inbounds nuw i8, ptr %0, i32 272
  %1296 = getelementptr inbounds nuw i8, ptr %1060, i32 32
  %1297 = load i64, ptr %1295, align 1
  %1298 = getelementptr inbounds nuw i8, ptr %0, i32 280
  %1299 = load i64, ptr %1298, align 1
  %1300 = load i64, ptr %1296, align 1
  %1301 = xor i64 %1300, %1297
  %1302 = getelementptr inbounds nuw i8, ptr %1060, i32 40
  %1303 = load i64, ptr %1302, align 1
  %1304 = xor i64 %1303, %1299
  %1305 = and i64 %1301, 4294967295
  %1306 = and i64 %1304, 4294967295
  %1307 = mul nuw i64 %1306, %1305
  %1308 = lshr i64 %1301, 32
  %1309 = mul nuw i64 %1306, %1308
  %1310 = lshr i64 %1304, 32
  %1311 = mul nuw i64 %1310, %1305
  %1312 = mul nuw i64 %1310, %1308
  %1313 = lshr i64 %1307, 32
  %1314 = and i64 %1309, 4294967295
  %1315 = add nuw i64 %1314, %1311
  %1316 = add nuw i64 %1315, %1313
  %1317 = lshr i64 %1309, 32
  %1318 = lshr i64 %1316, 32
  %1319 = add nuw i64 %1317, %1312
  %1320 = add nuw i64 %1319, %1318
  %1321 = shl i64 %1316, 32
  %1322 = and i64 %1307, 4294967295
  %1323 = or disjoint i64 %1321, %1322
  %1324 = xor i64 %1323, %1320
  %1325 = add i64 %1324, %1294
  %1326 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %1327 = getelementptr inbounds i8, ptr %1326, i32 -32
  %1328 = getelementptr inbounds nuw i8, ptr %1060, i32 48
  %1329 = load i64, ptr %1327, align 1
  %1330 = getelementptr inbounds i8, ptr %1326, i32 -24
  %1331 = load i64, ptr %1330, align 1
  %1332 = load i64, ptr %1328, align 1
  %1333 = xor i64 %1332, %1329
  %1334 = getelementptr inbounds nuw i8, ptr %1060, i32 56
  %1335 = load i64, ptr %1334, align 1
  %1336 = xor i64 %1335, %1331
  %1337 = and i64 %1333, 4294967295
  %1338 = and i64 %1336, 4294967295
  %1339 = mul nuw i64 %1338, %1337
  %1340 = lshr i64 %1333, 32
  %1341 = mul nuw i64 %1338, %1340
  %1342 = lshr i64 %1336, 32
  %1343 = mul nuw i64 %1342, %1337
  %1344 = mul nuw i64 %1342, %1340
  %1345 = lshr i64 %1339, 32
  %1346 = and i64 %1341, 4294967295
  %1347 = add nuw i64 %1346, %1343
  %1348 = add nuw i64 %1347, %1345
  %1349 = lshr i64 %1341, 32
  %1350 = lshr i64 %1348, 32
  %1351 = add nuw i64 %1349, %1344
  %1352 = add nuw i64 %1351, %1350
  %1353 = shl i64 %1348, 32
  %1354 = and i64 %1339, 4294967295
  %1355 = or disjoint i64 %1353, %1354
  %1356 = xor i64 %1355, %1352
  %1357 = add i64 %1325, %1356
  br label %1358

1358:                                             ; preds = %1293, %1157
  %1359 = phi i64 [ %1357, %1293 ], [ %1158, %1157 ]
  %1360 = load i64, ptr %704, align 1
  %1361 = getelementptr inbounds nuw i8, ptr %0, i32 264
  %1362 = load i64, ptr %1361, align 1
  %1363 = load i64, ptr %1060, align 1
  %1364 = xor i64 %1363, %1360
  %1365 = getelementptr inbounds nuw i8, ptr %1060, i32 8
  %1366 = load i64, ptr %1365, align 1
  %1367 = xor i64 %1366, %1362
  %1368 = and i64 %1364, 4294967295
  %1369 = and i64 %1367, 4294967295
  %1370 = mul nuw i64 %1369, %1368
  %1371 = lshr i64 %1364, 32
  %1372 = mul nuw i64 %1369, %1371
  %1373 = lshr i64 %1367, 32
  %1374 = mul nuw i64 %1373, %1368
  %1375 = mul nuw i64 %1373, %1371
  %1376 = lshr i64 %1370, 32
  %1377 = and i64 %1372, 4294967295
  %1378 = add nuw i64 %1377, %1374
  %1379 = add nuw i64 %1378, %1376
  %1380 = lshr i64 %1372, 32
  %1381 = lshr i64 %1379, 32
  %1382 = add nuw i64 %1380, %1375
  %1383 = add nuw i64 %1382, %1381
  %1384 = shl i64 %1379, 32
  %1385 = and i64 %1370, 4294967295
  %1386 = or disjoint i64 %1384, %1385
  %1387 = xor i64 %1386, %1383
  %1388 = add i64 %1387, %1359
  %1389 = getelementptr inbounds nuw i8, ptr %704, i32 %705
  %1390 = getelementptr inbounds i8, ptr %1389, i32 -16
  %1391 = getelementptr inbounds nuw i8, ptr %1060, i32 16
  %1392 = load i64, ptr %1390, align 1
  %1393 = getelementptr inbounds i8, ptr %1389, i32 -8
  %1394 = load i64, ptr %1393, align 1
  %1395 = load i64, ptr %1391, align 1
  %1396 = xor i64 %1395, %1392
  %1397 = getelementptr inbounds nuw i8, ptr %1060, i32 24
  %1398 = load i64, ptr %1397, align 1
  %1399 = xor i64 %1398, %1394
  %1400 = and i64 %1396, 4294967295
  %1401 = and i64 %1399, 4294967295
  %1402 = mul nuw i64 %1401, %1400
  %1403 = lshr i64 %1396, 32
  %1404 = mul nuw i64 %1401, %1403
  %1405 = lshr i64 %1399, 32
  %1406 = mul nuw i64 %1405, %1400
  %1407 = mul nuw i64 %1405, %1403
  %1408 = lshr i64 %1402, 32
  %1409 = and i64 %1404, 4294967295
  %1410 = add nuw i64 %1409, %1406
  %1411 = add nuw i64 %1410, %1408
  %1412 = lshr i64 %1404, 32
  %1413 = lshr i64 %1411, 32
  %1414 = add nuw i64 %1412, %1407
  %1415 = add nuw i64 %1414, %1413
  %1416 = shl i64 %1411, 32
  %1417 = and i64 %1402, 4294967295
  %1418 = or disjoint i64 %1416, %1417
  %1419 = xor i64 %1418, %1415
  %1420 = add i64 %1388, %1419
  %1421 = lshr i64 %1420, 37
  %1422 = xor i64 %1421, %1420
  %1423 = mul i64 %1422, 1609587929392839161
  %1424 = lshr i64 %1423, 32
  %1425 = xor i64 %1424, %1423
  br label %1428

1426:                                             ; preds = %1155
  %1427 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %704, i32 noundef %705, ptr noundef readonly %1060, i64 noundef 0)
  br label %1428

1428:                                             ; preds = %1426, %1358, %1129, %1127, %1104, %1064, %1056, %991, %774, %772, %749, %710, %576
  %1429 = phi i64 [ %699, %576 ], [ %1055, %991 ], [ %1057, %1056 ], [ %746, %710 ], [ %771, %749 ], [ %799, %774 ], [ 0, %772 ], [ %1425, %1358 ], [ %1427, %1426 ], [ %1101, %1064 ], [ %1126, %1104 ], [ %1154, %1129 ], [ 0, %1127 ]
  ret i64 %1429
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH3_128bits(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #15 {
  %4 = icmp ult i32 %2, 17
  br i1 %4, label %5, label %141

5:                                                ; preds = %3
  %6 = icmp samesign ugt i32 %2, 8
  br i1 %6, label %7, label %63

7:                                                ; preds = %5
  %8 = load i64, ptr %1, align 1
  %9 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %10 = getelementptr inbounds i8, ptr %9, i32 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, 2066345149520216444
  %13 = xor i64 %8, %12
  %14 = xor i64 %13, -4734510112055689544
  %15 = and i64 %14, 4294967295
  %16 = mul nuw i64 %15, 2246822535
  %17 = lshr i64 %14, 32
  %18 = mul nuw i64 %17, 2246822535
  %19 = mul nuw i64 %15, 2654435761
  %20 = mul nuw i64 %17, 2654435761
  %21 = lshr i64 %16, 32
  %22 = and i64 %18, 4294967295
  %23 = add nuw i64 %22, %19
  %24 = add nuw i64 %23, %21
  %25 = lshr i64 %18, 32
  %26 = lshr i64 %24, 32
  %27 = and i64 %24, 4294967295
  %28 = and i64 %16, 4294967295
  %29 = mul i64 %12, -7046029288634856825
  %30 = add i64 %20, %29
  %31 = add i64 %30, %25
  %32 = add i64 %31, %26
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %28
  %35 = mul nuw nsw i64 %34, 668265295
  %36 = mul nuw nsw i64 %27, 668265295
  %37 = mul nuw i64 %34, 3266489917
  %38 = mul nuw i64 %27, 3266489917
  %39 = lshr i64 %35, 32
  %40 = and i64 %36, 4294967295
  %41 = add nuw i64 %37, %40
  %42 = add nuw i64 %41, %39
  %43 = lshr i64 %36, 32
  %44 = lshr i64 %42, 32
  %45 = add nuw i64 %43, %38
  %46 = shl i64 %42, 32
  %47 = and i64 %35, 4294967295
  %48 = or disjoint i64 %46, %47
  %49 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %50 = mul i64 %32, -4417276706812531889
  %51 = add i64 %45, %50
  %52 = add i64 %51, %44
  %53 = lshr i64 %46, 37
  %54 = xor i64 %53, %48
  %55 = mul i64 %54, 1609587929392839161
  %56 = lshr i64 %55, 32
  %57 = xor i64 %56, %55
  store i64 %57, ptr %0, align 8, !alias.scope !17
  %58 = lshr i64 %52, 37
  %59 = xor i64 %58, %52
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  store i64 %62, ptr %49, align 8, !alias.scope !17
  br label %401

63:                                               ; preds = %5
  %64 = icmp samesign ugt i32 %2, 3
  br i1 %64, label %65, label %103

65:                                               ; preds = %63
  %66 = load i32, ptr %1, align 1
  %67 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %68 = getelementptr inbounds i8, ptr %67, i32 -4
  %69 = load i32, ptr %68, align 1
  %70 = zext i32 %66 to i64
  %71 = zext i32 %69 to i64
  %72 = shl nuw i64 %71, 32
  %73 = or disjoint i64 %72, %70
  %74 = xor i64 %73, -4734510112055689544
  %75 = xor i64 %73, 8935565165804498204
  %76 = tail call i64 @llvm.bswap.i64(i64 %75)
  %77 = zext nneg i32 %2 to i64
  %78 = lshr i64 %74, 51
  %79 = xor i64 %78, %74
  %80 = mul i64 %79, 2654435761
  %81 = add i64 %80, %77
  %82 = lshr i64 %81, 47
  %83 = xor i64 %82, %81
  %84 = mul i64 %83, -4417276706812531889
  %85 = lshr i64 %76, 47
  %86 = xor i64 %85, %76
  %87 = mul i64 %86, -7046029288634856825
  %88 = sub i64 %87, %77
  %89 = lshr i64 %88, 43
  %90 = xor i64 %89, %88
  %91 = mul i64 %90, -8796714831421723037
  %92 = lshr i64 %84, 37
  %93 = xor i64 %92, %84
  %94 = mul i64 %93, 1609587929392839161
  %95 = lshr i64 %94, 32
  %96 = xor i64 %95, %94
  store i64 %96, ptr %0, align 8, !alias.scope !20
  %97 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %98 = lshr i64 %91, 37
  %99 = xor i64 %98, %91
  %100 = mul i64 %99, 1609587929392839161
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  store i64 %102, ptr %97, align 8, !alias.scope !20
  br label %401

103:                                              ; preds = %63
  %104 = icmp eq i32 %2, 0
  br i1 %104, label %140, label %105

105:                                              ; preds = %103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %106 = load i8, ptr %1, align 1, !noalias !23
  %107 = lshr i32 %2, 1
  %108 = getelementptr inbounds nuw i8, ptr %1, i32 %107
  %109 = load i8, ptr %108, align 1, !noalias !23
  %110 = getelementptr i8, ptr %1, i32 %2
  %111 = getelementptr i8, ptr %110, i32 -1
  %112 = load i8, ptr %111, align 1, !noalias !23
  %113 = zext i8 %106 to i32
  %114 = zext i8 %109 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = or disjoint i32 %115, %113
  %117 = zext i8 %112 to i32
  %118 = shl nuw nsw i32 %117, 16
  %119 = or disjoint i32 %116, %118
  %120 = shl nuw nsw i32 %2, 24
  %121 = or disjoint i32 %119, %120
  %122 = xor i32 %121, 963444408
  %123 = zext nneg i32 %122 to i64
  %124 = xor i32 %121, 597969854
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  %126 = zext i32 %125 to i64
  %127 = mul i64 %123, -7046029288634856825
  %128 = mul i64 %126, -4417276706812531889
  %129 = lshr i64 %127, 37
  %130 = xor i64 %129, %127
  %131 = mul i64 %130, 1609587929392839161
  %132 = lshr i64 %131, 32
  %133 = xor i64 %132, %131
  store i64 %133, ptr %0, align 8, !alias.scope !23
  %134 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %135 = lshr i64 %128, 37
  %136 = xor i64 %135, %128
  %137 = mul i64 %136, 1609587929392839161
  %138 = lshr i64 %137, 32
  %139 = xor i64 %138, %137
  store i64 %139, ptr %134, align 8, !alias.scope !23
  br label %401

140:                                              ; preds = %103
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !26
  br label %401

141:                                              ; preds = %3
  %142 = icmp ult i32 %2, 129
  br i1 %142, label %143, label %397

143:                                              ; preds = %141
  %144 = zext nneg i32 %2 to i64
  %145 = mul i64 %144, -7046029288634856825
  %146 = icmp samesign ugt i32 %2, 32
  br i1 %146, label %147, label %322

147:                                              ; preds = %143
  %148 = icmp samesign ugt i32 %2, 64
  br i1 %148, label %149, label %264

149:                                              ; preds = %147
  %150 = icmp samesign ugt i32 %2, 96
  br i1 %150, label %151, label %206

151:                                              ; preds = %149
  %152 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %153 = load i64, ptr %152, align 1
  %154 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %155 = load i64, ptr %154, align 1
  %156 = xor i64 %153, 4554437623014685352
  %157 = xor i64 %155, 2111919702937427193
  %158 = and i64 %156, 4294967295
  %159 = and i64 %157, 4294967295
  %160 = mul nuw i64 %159, %158
  %161 = lshr i64 %156, 32
  %162 = mul nuw i64 %159, %161
  %163 = lshr i64 %157, 32
  %164 = mul nuw i64 %163, %158
  %165 = mul nuw i64 %163, %161
  %166 = lshr i64 %160, 32
  %167 = and i64 %162, 4294967295
  %168 = add nuw i64 %167, %164
  %169 = add nuw i64 %168, %166
  %170 = lshr i64 %162, 32
  %171 = lshr i64 %169, 32
  %172 = add nuw i64 %170, %165
  %173 = add nuw i64 %172, %171
  %174 = shl i64 %169, 32
  %175 = and i64 %160, 4294967295
  %176 = or disjoint i64 %174, %175
  %177 = xor i64 %176, %173
  %178 = add i64 %177, %145
  %179 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %180 = getelementptr inbounds i8, ptr %179, i32 -64
  %181 = load i64, ptr %180, align 1
  %182 = getelementptr inbounds i8, ptr %179, i32 -56
  %183 = load i64, ptr %182, align 1
  %184 = xor i64 %181, 3556072174620004746
  %185 = xor i64 %183, 7238261902898274248
  %186 = and i64 %184, 4294967295
  %187 = and i64 %185, 4294967295
  %188 = mul nuw i64 %187, %186
  %189 = lshr i64 %184, 32
  %190 = mul nuw i64 %187, %189
  %191 = lshr i64 %185, 32
  %192 = mul nuw i64 %191, %186
  %193 = mul nuw i64 %191, %189
  %194 = lshr i64 %188, 32
  %195 = and i64 %190, 4294967295
  %196 = add nuw i64 %195, %192
  %197 = add nuw i64 %196, %194
  %198 = lshr i64 %190, 32
  %199 = lshr i64 %197, 32
  %200 = add nuw i64 %198, %193
  %201 = add nuw i64 %200, %199
  %202 = shl i64 %197, 32
  %203 = and i64 %188, 4294967295
  %204 = or disjoint i64 %202, %203
  %205 = xor i64 %204, %201
  br label %206

206:                                              ; preds = %151, %149
  %207 = phi i64 [ %205, %151 ], [ 0, %149 ]
  %208 = phi i64 [ %178, %151 ], [ %145, %149 ]
  %209 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %210 = load i64, ptr %209, align 1
  %211 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %212 = load i64, ptr %211, align 1
  %213 = xor i64 %210, -3818837453329782724
  %214 = xor i64 %212, -6688317018830679928
  %215 = and i64 %213, 4294967295
  %216 = and i64 %214, 4294967295
  %217 = mul nuw i64 %216, %215
  %218 = lshr i64 %213, 32
  %219 = mul nuw i64 %216, %218
  %220 = lshr i64 %214, 32
  %221 = mul nuw i64 %220, %215
  %222 = mul nuw i64 %220, %218
  %223 = lshr i64 %217, 32
  %224 = and i64 %219, 4294967295
  %225 = add nuw i64 %224, %221
  %226 = add nuw i64 %225, %223
  %227 = lshr i64 %219, 32
  %228 = lshr i64 %226, 32
  %229 = add nuw i64 %227, %222
  %230 = add nuw i64 %229, %228
  %231 = shl i64 %226, 32
  %232 = and i64 %217, 4294967295
  %233 = or disjoint i64 %231, %232
  %234 = xor i64 %233, %230
  %235 = add i64 %234, %208
  %236 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %237 = getelementptr inbounds i8, ptr %236, i32 -48
  %238 = load i64, ptr %237, align 1
  %239 = getelementptr inbounds i8, ptr %236, i32 -40
  %240 = load i64, ptr %239, align 1
  %241 = xor i64 %238, 5690594596133299313
  %242 = xor i64 %240, -2833645246901970632
  %243 = and i64 %241, 4294967295
  %244 = and i64 %242, 4294967295
  %245 = mul nuw i64 %244, %243
  %246 = lshr i64 %241, 32
  %247 = mul nuw i64 %244, %246
  %248 = lshr i64 %242, 32
  %249 = mul nuw i64 %248, %243
  %250 = mul nuw i64 %248, %246
  %251 = lshr i64 %245, 32
  %252 = and i64 %247, 4294967295
  %253 = add nuw i64 %252, %249
  %254 = add nuw i64 %253, %251
  %255 = lshr i64 %247, 32
  %256 = lshr i64 %254, 32
  %257 = add nuw i64 %255, %250
  %258 = add nuw i64 %257, %256
  %259 = shl i64 %254, 32
  %260 = and i64 %245, 4294967295
  %261 = or disjoint i64 %259, %260
  %262 = xor i64 %261, %258
  %263 = add i64 %262, %207
  br label %264

264:                                              ; preds = %206, %147
  %265 = phi i64 [ %263, %206 ], [ 0, %147 ]
  %266 = phi i64 [ %235, %206 ], [ %145, %147 ]
  %267 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %268 = load i64, ptr %267, align 1
  %269 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %270 = load i64, ptr %269, align 1
  %271 = xor i64 %268, 8711581037947681227
  %272 = xor i64 %270, 2410270004345854594
  %273 = and i64 %271, 4294967295
  %274 = and i64 %272, 4294967295
  %275 = mul nuw i64 %274, %273
  %276 = lshr i64 %271, 32
  %277 = mul nuw i64 %274, %276
  %278 = lshr i64 %272, 32
  %279 = mul nuw i64 %278, %273
  %280 = mul nuw i64 %278, %276
  %281 = lshr i64 %275, 32
  %282 = and i64 %277, 4294967295
  %283 = add nuw i64 %282, %279
  %284 = add nuw i64 %283, %281
  %285 = lshr i64 %277, 32
  %286 = lshr i64 %284, 32
  %287 = add nuw i64 %285, %280
  %288 = add nuw i64 %287, %286
  %289 = shl i64 %284, 32
  %290 = and i64 %275, 4294967295
  %291 = or disjoint i64 %289, %290
  %292 = xor i64 %291, %288
  %293 = add i64 %292, %266
  %294 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %295 = getelementptr inbounds i8, ptr %294, i32 -32
  %296 = load i64, ptr %295, align 1
  %297 = getelementptr inbounds i8, ptr %294, i32 -24
  %298 = load i64, ptr %297, align 1
  %299 = xor i64 %296, -8204357891075471176
  %300 = xor i64 %298, 5487137525590930912
  %301 = and i64 %299, 4294967295
  %302 = and i64 %300, 4294967295
  %303 = mul nuw i64 %302, %301
  %304 = lshr i64 %299, 32
  %305 = mul nuw i64 %302, %304
  %306 = lshr i64 %300, 32
  %307 = mul nuw i64 %306, %301
  %308 = mul nuw i64 %306, %304
  %309 = lshr i64 %303, 32
  %310 = and i64 %305, 4294967295
  %311 = add nuw i64 %310, %307
  %312 = add nuw i64 %311, %309
  %313 = lshr i64 %305, 32
  %314 = lshr i64 %312, 32
  %315 = add nuw i64 %313, %308
  %316 = add nuw i64 %315, %314
  %317 = shl i64 %312, 32
  %318 = and i64 %303, 4294967295
  %319 = or disjoint i64 %317, %318
  %320 = xor i64 %319, %316
  %321 = add i64 %320, %265
  br label %322

322:                                              ; preds = %143, %264
  %323 = phi i64 [ %321, %264 ], [ 0, %143 ]
  %324 = phi i64 [ %293, %264 ], [ %145, %143 ]
  %325 = load i64, ptr %1, align 1
  %326 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %327 = load i64, ptr %326, align 1
  %328 = xor i64 %325, -4734510112055689544
  %329 = xor i64 %327, 2066345149520216444
  %330 = and i64 %328, 4294967295
  %331 = and i64 %329, 4294967295
  %332 = mul nuw i64 %331, %330
  %333 = lshr i64 %328, 32
  %334 = mul nuw i64 %331, %333
  %335 = lshr i64 %329, 32
  %336 = mul nuw i64 %335, %330
  %337 = mul nuw i64 %335, %333
  %338 = lshr i64 %332, 32
  %339 = and i64 %334, 4294967295
  %340 = add nuw i64 %339, %336
  %341 = add nuw i64 %340, %338
  %342 = lshr i64 %334, 32
  %343 = lshr i64 %341, 32
  %344 = add nuw i64 %342, %337
  %345 = add nuw i64 %344, %343
  %346 = shl i64 %341, 32
  %347 = and i64 %332, 4294967295
  %348 = or disjoint i64 %346, %347
  %349 = xor i64 %348, %345
  %350 = add i64 %349, %324
  %351 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %352 = getelementptr inbounds i8, ptr %351, i32 -16
  %353 = load i64, ptr %352, align 1
  %354 = getelementptr inbounds i8, ptr %351, i32 -8
  %355 = load i64, ptr %354, align 1
  %356 = xor i64 %353, -2623469361688619810
  %357 = xor i64 %355, 2262974939099578482
  %358 = and i64 %356, 4294967295
  %359 = and i64 %357, 4294967295
  %360 = mul nuw i64 %359, %358
  %361 = lshr i64 %356, 32
  %362 = mul nuw i64 %359, %361
  %363 = lshr i64 %357, 32
  %364 = mul nuw i64 %363, %358
  %365 = mul nuw i64 %363, %361
  %366 = lshr i64 %360, 32
  %367 = and i64 %362, 4294967295
  %368 = add nuw i64 %367, %364
  %369 = add nuw i64 %368, %366
  %370 = lshr i64 %362, 32
  %371 = lshr i64 %369, 32
  %372 = add nuw i64 %370, %365
  %373 = add nuw i64 %372, %371
  %374 = shl i64 %369, 32
  %375 = and i64 %360, 4294967295
  %376 = or disjoint i64 %374, %375
  %377 = xor i64 %376, %373
  %378 = add i64 %377, %323
  %379 = add i64 %378, %350
  %380 = mul i64 %350, -7046029288634856825
  %381 = mul i64 %378, -8796714831421723037
  %382 = mul i64 %144, -4417276706812531889
  %383 = add i64 %380, %382
  %384 = add i64 %383, %381
  %385 = lshr i64 %379, 37
  %386 = xor i64 %385, %379
  %387 = mul i64 %386, 1609587929392839161
  %388 = lshr i64 %387, 32
  %389 = xor i64 %388, %387
  store i64 %389, ptr %0, align 8, !alias.scope !29
  %390 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %391 = lshr i64 %384, 37
  %392 = xor i64 %391, %384
  %393 = mul i64 %392, 1609587929392839161
  %394 = lshr i64 %393, 32
  %395 = xor i64 %394, %393
  %396 = sub i64 0, %395
  store i64 %396, ptr %390, align 8, !alias.scope !29
  br label %401

397:                                              ; preds = %141
  %398 = icmp ult i32 %2, 241
  br i1 %398, label %399, label %400

399:                                              ; preds = %397
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %401

400:                                              ; preds = %397
  tail call fastcc void @XXH3_hashLong_128b_defaultSecret(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2)
  br label %401

401:                                              ; preds = %140, %105, %65, %7, %400, %399, %322
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite)
define internal fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i32 noundef range(i32 129, 241) %2, ptr noundef readonly %3, i64 noundef %4) unnamed_addr #16 {
  %6 = zext nneg i32 %2 to i64
  %7 = mul i64 %6, -7046029288634856825
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ %7, %5 ], [ %45, %8 ]
  %10 = phi i64 [ 0, %5 ], [ %78, %8 ]
  %11 = phi i32 [ 0, %5 ], [ %79, %8 ]
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
  %25 = and i64 %20, 4294967295
  %26 = and i64 %24, 4294967295
  %27 = mul nuw i64 %26, %25
  %28 = lshr i64 %20, 32
  %29 = mul nuw i64 %26, %28
  %30 = lshr i64 %24, 32
  %31 = mul nuw i64 %30, %25
  %32 = mul nuw i64 %30, %28
  %33 = lshr i64 %27, 32
  %34 = and i64 %29, 4294967295
  %35 = add nuw i64 %34, %31
  %36 = add nuw i64 %35, %33
  %37 = lshr i64 %29, 32
  %38 = lshr i64 %36, 32
  %39 = add nuw i64 %37, %32
  %40 = add nuw i64 %39, %38
  %41 = shl i64 %36, 32
  %42 = and i64 %27, 4294967295
  %43 = or disjoint i64 %41, %42
  %44 = xor i64 %43, %40
  %45 = add i64 %44, %9
  %46 = getelementptr inbounds nuw i8, ptr %13, i32 16
  %47 = getelementptr inbounds nuw i8, ptr %14, i32 16
  %48 = load i64, ptr %46, align 1
  %49 = getelementptr inbounds nuw i8, ptr %13, i32 24
  %50 = load i64, ptr %49, align 1
  %51 = load i64, ptr %47, align 1
  %52 = sub i64 %51, %4
  %53 = xor i64 %52, %48
  %54 = getelementptr inbounds nuw i8, ptr %14, i32 24
  %55 = load i64, ptr %54, align 1
  %56 = add i64 %55, %4
  %57 = xor i64 %56, %50
  %58 = and i64 %53, 4294967295
  %59 = and i64 %57, 4294967295
  %60 = mul nuw i64 %59, %58
  %61 = lshr i64 %53, 32
  %62 = mul nuw i64 %59, %61
  %63 = lshr i64 %57, 32
  %64 = mul nuw i64 %63, %58
  %65 = mul nuw i64 %63, %61
  %66 = lshr i64 %60, 32
  %67 = and i64 %62, 4294967295
  %68 = add nuw i64 %67, %64
  %69 = add nuw i64 %68, %66
  %70 = lshr i64 %62, 32
  %71 = lshr i64 %69, 32
  %72 = add nuw i64 %70, %65
  %73 = add nuw i64 %72, %71
  %74 = shl i64 %69, 32
  %75 = and i64 %60, 4294967295
  %76 = or disjoint i64 %74, %75
  %77 = xor i64 %76, %73
  %78 = add i64 %77, %10
  %79 = add nuw nsw i32 %11, 1
  %80 = icmp eq i32 %79, 4
  br i1 %80, label %81, label %8

81:                                               ; preds = %8
  %82 = lshr i32 %2, 5
  %83 = lshr i64 %45, 37
  %84 = xor i64 %83, %45
  %85 = mul i64 %84, 1609587929392839161
  %86 = lshr i64 %85, 32
  %87 = xor i64 %86, %85
  %88 = lshr i64 %78, 37
  %89 = xor i64 %88, %78
  %90 = mul i64 %89, 1609587929392839161
  %91 = lshr i64 %90, 32
  %92 = xor i64 %91, %90
  %93 = icmp eq i32 %82, 4
  br i1 %93, label %168, label %94

94:                                               ; preds = %81, %94
  %95 = phi i64 [ %132, %94 ], [ %87, %81 ]
  %96 = phi i64 [ %165, %94 ], [ %92, %81 ]
  %97 = phi i32 [ %166, %94 ], [ 4, %81 ]
  %98 = shl nsw i32 %97, 5
  %99 = getelementptr inbounds nuw i8, ptr %1, i32 %98
  %100 = getelementptr i8, ptr %3, i32 %98
  %101 = getelementptr i8, ptr %100, i32 -125
  %102 = load i64, ptr %99, align 1
  %103 = getelementptr inbounds nuw i8, ptr %99, i32 8
  %104 = load i64, ptr %103, align 1
  %105 = load i64, ptr %101, align 1
  %106 = add i64 %105, %4
  %107 = xor i64 %106, %102
  %108 = getelementptr i8, ptr %100, i32 -117
  %109 = load i64, ptr %108, align 1
  %110 = sub i64 %109, %4
  %111 = xor i64 %110, %104
  %112 = and i64 %107, 4294967295
  %113 = and i64 %111, 4294967295
  %114 = mul nuw i64 %113, %112
  %115 = lshr i64 %107, 32
  %116 = mul nuw i64 %113, %115
  %117 = lshr i64 %111, 32
  %118 = mul nuw i64 %117, %112
  %119 = mul nuw i64 %117, %115
  %120 = lshr i64 %114, 32
  %121 = and i64 %116, 4294967295
  %122 = add nuw i64 %121, %118
  %123 = add nuw i64 %122, %120
  %124 = lshr i64 %116, 32
  %125 = lshr i64 %123, 32
  %126 = add nuw i64 %124, %119
  %127 = add nuw i64 %126, %125
  %128 = shl i64 %123, 32
  %129 = and i64 %114, 4294967295
  %130 = or disjoint i64 %128, %129
  %131 = xor i64 %130, %127
  %132 = add i64 %131, %95
  %133 = getelementptr inbounds nuw i8, ptr %99, i32 16
  %134 = getelementptr i8, ptr %100, i32 -109
  %135 = load i64, ptr %133, align 1
  %136 = getelementptr inbounds nuw i8, ptr %99, i32 24
  %137 = load i64, ptr %136, align 1
  %138 = load i64, ptr %134, align 1
  %139 = sub i64 %138, %4
  %140 = xor i64 %139, %135
  %141 = getelementptr i8, ptr %100, i32 -101
  %142 = load i64, ptr %141, align 1
  %143 = add i64 %142, %4
  %144 = xor i64 %143, %137
  %145 = and i64 %140, 4294967295
  %146 = and i64 %144, 4294967295
  %147 = mul nuw i64 %146, %145
  %148 = lshr i64 %140, 32
  %149 = mul nuw i64 %146, %148
  %150 = lshr i64 %144, 32
  %151 = mul nuw i64 %150, %145
  %152 = mul nuw i64 %150, %148
  %153 = lshr i64 %147, 32
  %154 = and i64 %149, 4294967295
  %155 = add nuw i64 %154, %151
  %156 = add nuw i64 %155, %153
  %157 = lshr i64 %149, 32
  %158 = lshr i64 %156, 32
  %159 = add nuw i64 %157, %152
  %160 = add nuw i64 %159, %158
  %161 = shl i64 %156, 32
  %162 = and i64 %147, 4294967295
  %163 = or disjoint i64 %161, %162
  %164 = xor i64 %163, %160
  %165 = add i64 %164, %96
  %166 = add nuw nsw i32 %97, 1
  %167 = icmp eq i32 %166, %82
  br i1 %167, label %168, label %94

168:                                              ; preds = %94, %81
  %169 = phi i64 [ %92, %81 ], [ %165, %94 ]
  %170 = phi i64 [ %87, %81 ], [ %132, %94 ]
  %171 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %172 = getelementptr inbounds i8, ptr %171, i32 -16
  %173 = getelementptr inbounds nuw i8, ptr %3, i32 119
  %174 = load i64, ptr %172, align 1
  %175 = getelementptr inbounds i8, ptr %171, i32 -8
  %176 = load i64, ptr %175, align 1
  %177 = load i64, ptr %173, align 1
  %178 = add i64 %177, %4
  %179 = xor i64 %178, %174
  %180 = getelementptr inbounds nuw i8, ptr %3, i32 127
  %181 = load i64, ptr %180, align 1
  %182 = sub i64 %181, %4
  %183 = xor i64 %182, %176
  %184 = and i64 %179, 4294967295
  %185 = and i64 %183, 4294967295
  %186 = mul nuw i64 %185, %184
  %187 = lshr i64 %179, 32
  %188 = mul nuw i64 %185, %187
  %189 = lshr i64 %183, 32
  %190 = mul nuw i64 %189, %184
  %191 = mul nuw i64 %189, %187
  %192 = lshr i64 %186, 32
  %193 = and i64 %188, 4294967295
  %194 = add nuw i64 %193, %190
  %195 = add nuw i64 %194, %192
  %196 = lshr i64 %188, 32
  %197 = lshr i64 %195, 32
  %198 = add nuw i64 %196, %191
  %199 = add nuw i64 %198, %197
  %200 = shl i64 %195, 32
  %201 = and i64 %186, 4294967295
  %202 = or disjoint i64 %200, %201
  %203 = xor i64 %202, %199
  %204 = add i64 %203, %170
  %205 = getelementptr inbounds i8, ptr %171, i32 -32
  %206 = getelementptr inbounds nuw i8, ptr %3, i32 103
  %207 = load i64, ptr %205, align 1
  %208 = getelementptr inbounds i8, ptr %171, i32 -24
  %209 = load i64, ptr %208, align 1
  %210 = load i64, ptr %206, align 1
  %211 = sub i64 %210, %4
  %212 = xor i64 %211, %207
  %213 = getelementptr inbounds nuw i8, ptr %3, i32 111
  %214 = load i64, ptr %213, align 1
  %215 = add i64 %214, %4
  %216 = xor i64 %215, %209
  %217 = and i64 %212, 4294967295
  %218 = and i64 %216, 4294967295
  %219 = mul nuw i64 %218, %217
  %220 = lshr i64 %212, 32
  %221 = mul nuw i64 %218, %220
  %222 = lshr i64 %216, 32
  %223 = mul nuw i64 %222, %217
  %224 = mul nuw i64 %222, %220
  %225 = lshr i64 %219, 32
  %226 = and i64 %221, 4294967295
  %227 = add nuw i64 %226, %223
  %228 = add nuw i64 %227, %225
  %229 = lshr i64 %221, 32
  %230 = lshr i64 %228, 32
  %231 = add nuw i64 %229, %224
  %232 = add nuw i64 %231, %230
  %233 = shl i64 %228, 32
  %234 = and i64 %219, 4294967295
  %235 = or disjoint i64 %233, %234
  %236 = xor i64 %235, %232
  %237 = add i64 %236, %169
  %238 = add i64 %237, %204
  %239 = mul i64 %204, -7046029288634856825
  %240 = mul i64 %237, -8796714831421723037
  %241 = sub i64 %6, %4
  %242 = mul i64 %241, -4417276706812531889
  %243 = add i64 %239, %242
  %244 = add i64 %243, %240
  %245 = lshr i64 %238, 37
  %246 = xor i64 %245, %238
  %247 = mul i64 %246, 1609587929392839161
  %248 = lshr i64 %247, 32
  %249 = xor i64 %248, %247
  store i64 %249, ptr %0, align 8
  %250 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %251 = lshr i64 %244, 37
  %252 = xor i64 %251, %244
  %253 = mul i64 %252, 1609587929392839161
  %254 = lshr i64 %253, 32
  %255 = xor i64 %254, %253
  %256 = sub i64 0, %255
  store i64 %256, ptr %250, align 8
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
  %345 = and i64 %343, 4294967295
  %346 = and i64 %344, 4294967295
  %347 = mul nuw i64 %345, %346
  %348 = lshr i64 %343, 32
  %349 = mul nuw i64 %348, %346
  %350 = lshr i64 %344, 32
  %351 = mul nuw i64 %345, %350
  %352 = mul nuw i64 %348, %350
  %353 = lshr i64 %347, 32
  %354 = and i64 %349, 4294967295
  %355 = add nuw i64 %354, %351
  %356 = add nuw i64 %355, %353
  %357 = lshr i64 %349, 32
  %358 = lshr i64 %356, 32
  %359 = add nuw i64 %357, %352
  %360 = add nuw i64 %359, %358
  %361 = shl i64 %356, 32
  %362 = and i64 %347, 4294967295
  %363 = or disjoint i64 %361, %362
  %364 = xor i64 %363, %360
  %365 = xor i64 %338, -1839215637059881052
  %366 = xor i64 %337, -3433288310154277810
  %367 = and i64 %365, 4294967295
  %368 = and i64 %366, 4294967295
  %369 = mul nuw i64 %367, %368
  %370 = lshr i64 %365, 32
  %371 = mul nuw i64 %370, %368
  %372 = lshr i64 %366, 32
  %373 = mul nuw i64 %367, %372
  %374 = mul nuw i64 %370, %372
  %375 = lshr i64 %369, 32
  %376 = and i64 %371, 4294967295
  %377 = add nuw i64 %376, %373
  %378 = add nuw i64 %377, %375
  %379 = lshr i64 %371, 32
  %380 = lshr i64 %378, 32
  %381 = add nuw i64 %379, %374
  %382 = add nuw i64 %381, %380
  %383 = shl i64 %378, 32
  %384 = and i64 %369, 4294967295
  %385 = or disjoint i64 %383, %384
  %386 = xor i64 %385, %382
  %387 = xor i64 %336, 5046485836271438973
  %388 = xor i64 %335, -8055285457383852172
  %389 = and i64 %387, 4294967295
  %390 = and i64 %388, 4294967295
  %391 = mul nuw i64 %389, %390
  %392 = lshr i64 %387, 32
  %393 = mul nuw i64 %392, %390
  %394 = lshr i64 %388, 32
  %395 = mul nuw i64 %389, %394
  %396 = mul nuw i64 %392, %394
  %397 = lshr i64 %391, 32
  %398 = and i64 %393, 4294967295
  %399 = add nuw i64 %398, %395
  %400 = add nuw i64 %399, %397
  %401 = lshr i64 %393, 32
  %402 = lshr i64 %400, 32
  %403 = add nuw i64 %401, %396
  %404 = add nuw i64 %403, %402
  %405 = shl i64 %400, 32
  %406 = and i64 %391, 4294967295
  %407 = or disjoint i64 %405, %406
  %408 = xor i64 %407, %404
  %409 = xor i64 %334, 5920048007935066598
  %410 = xor i64 %333, 7336514198459093435
  %411 = and i64 %409, 4294967295
  %412 = and i64 %410, 4294967295
  %413 = mul nuw i64 %411, %412
  %414 = lshr i64 %409, 32
  %415 = mul nuw i64 %414, %412
  %416 = lshr i64 %410, 32
  %417 = mul nuw i64 %411, %416
  %418 = mul nuw i64 %414, %416
  %419 = lshr i64 %413, 32
  %420 = and i64 %415, 4294967295
  %421 = add nuw i64 %420, %417
  %422 = add nuw i64 %421, %419
  %423 = lshr i64 %415, 32
  %424 = lshr i64 %422, 32
  %425 = add nuw i64 %423, %418
  %426 = add nuw i64 %425, %424
  %427 = shl i64 %422, 32
  %428 = and i64 %413, 4294967295
  %429 = or disjoint i64 %427, %428
  %430 = xor i64 %429, %426
  %431 = add i64 %430, %342
  %432 = add i64 %431, %408
  %433 = add i64 %432, %386
  %434 = add i64 %433, %364
  %435 = lshr i64 %434, 37
  %436 = xor i64 %435, %434
  %437 = mul i64 %436, 1609587929392839161
  %438 = lshr i64 %437, 32
  %439 = xor i64 %438, %437
  %440 = mul i64 %341, -4417276706812531889
  %441 = xor i64 %440, -1
  %442 = xor i64 %340, -2753530472436770380
  %443 = xor i64 %339, 3784058077962335096
  %444 = and i64 %442, 4294967295
  %445 = and i64 %443, 4294967295
  %446 = mul nuw i64 %444, %445
  %447 = lshr i64 %442, 32
  %448 = mul nuw i64 %447, %445
  %449 = lshr i64 %443, 32
  %450 = mul nuw i64 %444, %449
  %451 = mul nuw i64 %447, %449
  %452 = lshr i64 %446, 32
  %453 = and i64 %448, 4294967295
  %454 = add nuw i64 %453, %450
  %455 = add nuw i64 %454, %452
  %456 = lshr i64 %448, 32
  %457 = lshr i64 %455, 32
  %458 = add nuw i64 %456, %451
  %459 = add nuw i64 %458, %457
  %460 = shl i64 %455, 32
  %461 = and i64 %446, 4294967295
  %462 = or disjoint i64 %460, %461
  %463 = xor i64 %462, %459
  %464 = xor i64 %338, -360392965937173549
  %465 = xor i64 %337, -5237161843349560557
  %466 = and i64 %464, 4294967295
  %467 = and i64 %465, 4294967295
  %468 = mul nuw i64 %466, %467
  %469 = lshr i64 %464, 32
  %470 = mul nuw i64 %469, %467
  %471 = lshr i64 %465, 32
  %472 = mul nuw i64 %466, %471
  %473 = mul nuw i64 %469, %471
  %474 = lshr i64 %468, 32
  %475 = and i64 %470, 4294967295
  %476 = add nuw i64 %475, %472
  %477 = add nuw i64 %476, %474
  %478 = lshr i64 %470, 32
  %479 = lshr i64 %477, 32
  %480 = add nuw i64 %478, %473
  %481 = add nuw i64 %480, %479
  %482 = shl i64 %477, 32
  %483 = and i64 %468, 4294967295
  %484 = or disjoint i64 %482, %483
  %485 = xor i64 %484, %481
  %486 = xor i64 %336, 2965150961192524528
  %487 = xor i64 %335, 9032178055121889492
  %488 = and i64 %486, 4294967295
  %489 = and i64 %487, 4294967295
  %490 = mul nuw i64 %488, %489
  %491 = lshr i64 %486, 32
  %492 = mul nuw i64 %491, %489
  %493 = lshr i64 %487, 32
  %494 = mul nuw i64 %488, %493
  %495 = mul nuw i64 %491, %493
  %496 = lshr i64 %490, 32
  %497 = and i64 %492, 4294967295
  %498 = add nuw i64 %497, %494
  %499 = add nuw i64 %498, %496
  %500 = lshr i64 %492, 32
  %501 = lshr i64 %499, 32
  %502 = add nuw i64 %500, %495
  %503 = add nuw i64 %502, %501
  %504 = shl i64 %499, 32
  %505 = and i64 %490, 4294967295
  %506 = or disjoint i64 %504, %505
  %507 = xor i64 %506, %503
  %508 = xor i64 %334, 8850058120466833735
  %509 = xor i64 %333, -7669846995664752176
  %510 = and i64 %508, 4294967295
  %511 = and i64 %509, 4294967295
  %512 = mul nuw i64 %510, %511
  %513 = lshr i64 %508, 32
  %514 = mul nuw i64 %513, %511
  %515 = lshr i64 %509, 32
  %516 = mul nuw i64 %510, %515
  %517 = mul nuw i64 %513, %515
  %518 = lshr i64 %512, 32
  %519 = and i64 %514, 4294967295
  %520 = add nuw i64 %519, %516
  %521 = add nuw i64 %520, %518
  %522 = lshr i64 %514, 32
  %523 = lshr i64 %521, 32
  %524 = add nuw i64 %522, %517
  %525 = add nuw i64 %524, %523
  %526 = shl i64 %521, 32
  %527 = and i64 %512, 4294967295
  %528 = or disjoint i64 %526, %527
  %529 = xor i64 %528, %525
  %530 = add i64 %529, %441
  %531 = add i64 %530, %507
  %532 = add i64 %531, %485
  %533 = add i64 %532, %463
  %534 = lshr i64 %533, 37
  %535 = xor i64 %534, %533
  %536 = mul i64 %535, 1609587929392839161
  %537 = lshr i64 %536, 32
  %538 = xor i64 %537, %536
  store i64 %439, ptr %0, align 8, !alias.scope !34
  %539 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %538, ptr %539, align 8, !alias.scope !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH3_128bits_withSecret(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #15 {
  %6 = icmp ult i32 %2, 17
  br i1 %6, label %7, label %152

7:                                                ; preds = %5
  %8 = icmp samesign ugt i32 %2, 8
  br i1 %8, label %9, label %68

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
  %20 = and i64 %19, 4294967295
  %21 = mul nuw i64 %20, 2246822535
  %22 = lshr i64 %19, 32
  %23 = mul nuw i64 %22, 2246822535
  %24 = mul nuw i64 %20, 2654435761
  %25 = mul nuw i64 %22, 2654435761
  %26 = lshr i64 %21, 32
  %27 = and i64 %23, 4294967295
  %28 = add nuw i64 %27, %24
  %29 = add nuw i64 %28, %26
  %30 = lshr i64 %23, 32
  %31 = lshr i64 %29, 32
  %32 = and i64 %29, 4294967295
  %33 = and i64 %21, 4294967295
  %34 = mul i64 %18, -7046029288634856825
  %35 = add i64 %25, %34
  %36 = add i64 %35, %30
  %37 = add i64 %36, %31
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %33
  %40 = mul nuw nsw i64 %39, 668265295
  %41 = mul nuw nsw i64 %32, 668265295
  %42 = mul nuw i64 %39, 3266489917
  %43 = mul nuw i64 %32, 3266489917
  %44 = lshr i64 %40, 32
  %45 = and i64 %41, 4294967295
  %46 = add nuw i64 %42, %45
  %47 = add nuw i64 %46, %44
  %48 = lshr i64 %41, 32
  %49 = lshr i64 %47, 32
  %50 = add nuw i64 %48, %43
  %51 = shl i64 %47, 32
  %52 = and i64 %40, 4294967295
  %53 = or disjoint i64 %51, %52
  %54 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %55 = mul i64 %37, -4417276706812531889
  %56 = add i64 %50, %55
  %57 = add i64 %56, %49
  %58 = lshr i64 %51, 37
  %59 = xor i64 %58, %53
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  store i64 %62, ptr %0, align 8, !alias.scope !37
  %63 = lshr i64 %57, 37
  %64 = xor i64 %63, %57
  %65 = mul i64 %64, 1609587929392839161
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  store i64 %67, ptr %54, align 8, !alias.scope !37
  br label %443

68:                                               ; preds = %7
  %69 = icmp samesign ugt i32 %2, 3
  br i1 %69, label %70, label %111

70:                                               ; preds = %68
  %71 = load i32, ptr %1, align 1
  %72 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %73 = getelementptr inbounds i8, ptr %72, i32 -4
  %74 = load i32, ptr %73, align 1
  %75 = zext i32 %71 to i64
  %76 = zext i32 %74 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = tail call noundef i64 @llvm.bswap.i64(i64 %78)
  %80 = load i64, ptr %3, align 1
  %81 = xor i64 %78, %80
  %82 = getelementptr inbounds nuw i8, ptr %3, i32 8
  %83 = load i64, ptr %82, align 1
  %84 = xor i64 %79, %83
  %85 = zext nneg i32 %2 to i64
  %86 = lshr i64 %81, 51
  %87 = xor i64 %86, %81
  %88 = mul i64 %87, 2654435761
  %89 = add i64 %88, %85
  %90 = lshr i64 %89, 47
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, -4417276706812531889
  %93 = lshr i64 %84, 47
  %94 = xor i64 %93, %84
  %95 = mul i64 %94, -7046029288634856825
  %96 = sub i64 %95, %85
  %97 = lshr i64 %96, 43
  %98 = xor i64 %97, %96
  %99 = mul i64 %98, -8796714831421723037
  %100 = lshr i64 %92, 37
  %101 = xor i64 %100, %92
  %102 = mul i64 %101, 1609587929392839161
  %103 = lshr i64 %102, 32
  %104 = xor i64 %103, %102
  store i64 %104, ptr %0, align 8, !alias.scope !40
  %105 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %106 = lshr i64 %99, 37
  %107 = xor i64 %106, %99
  %108 = mul i64 %107, 1609587929392839161
  %109 = lshr i64 %108, 32
  %110 = xor i64 %109, %108
  store i64 %110, ptr %105, align 8, !alias.scope !40
  br label %443

111:                                              ; preds = %68
  %112 = icmp eq i32 %2, 0
  br i1 %112, label %151, label %113

113:                                              ; preds = %111
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %114 = load i8, ptr %1, align 1, !noalias !43
  %115 = lshr i32 %2, 1
  %116 = getelementptr inbounds nuw i8, ptr %1, i32 %115
  %117 = load i8, ptr %116, align 1, !noalias !43
  %118 = getelementptr i8, ptr %1, i32 %2
  %119 = getelementptr i8, ptr %118, i32 -1
  %120 = load i8, ptr %119, align 1, !noalias !43
  %121 = zext i8 %114 to i32
  %122 = zext i8 %117 to i32
  %123 = shl nuw nsw i32 %122, 8
  %124 = or disjoint i32 %123, %121
  %125 = zext i8 %120 to i32
  %126 = shl nuw nsw i32 %125, 16
  %127 = or disjoint i32 %124, %126
  %128 = shl nuw nsw i32 %2, 24
  %129 = or disjoint i32 %127, %128
  %130 = tail call noundef i32 @llvm.bswap.i32(i32 %129)
  %131 = load i32, ptr %3, align 1
  %132 = xor i32 %129, %131
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds nuw i8, ptr %3, i32 4
  %135 = load i32, ptr %134, align 1
  %136 = xor i32 %130, %135
  %137 = zext i32 %136 to i64
  %138 = mul i64 %133, -7046029288634856825
  %139 = mul i64 %137, -4417276706812531889
  %140 = lshr i64 %138, 37
  %141 = xor i64 %140, %138
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  store i64 %144, ptr %0, align 8, !alias.scope !43
  %145 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %146 = lshr i64 %139, 37
  %147 = xor i64 %146, %139
  %148 = mul i64 %147, 1609587929392839161
  %149 = lshr i64 %148, 32
  %150 = xor i64 %149, %148
  store i64 %150, ptr %145, align 8, !alias.scope !43
  br label %443

151:                                              ; preds = %111
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !46
  br label %443

152:                                              ; preds = %5
  %153 = icmp ult i32 %2, 129
  br i1 %153, label %154, label %439

154:                                              ; preds = %152
  %155 = zext nneg i32 %2 to i64
  %156 = mul i64 %155, -7046029288634856825
  %157 = icmp samesign ugt i32 %2, 32
  br i1 %157, label %158, label %357

158:                                              ; preds = %154
  %159 = icmp samesign ugt i32 %2, 64
  br i1 %159, label %160, label %291

160:                                              ; preds = %158
  %161 = icmp samesign ugt i32 %2, 96
  br i1 %161, label %162, label %225

162:                                              ; preds = %160
  %163 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %164 = getelementptr inbounds nuw i8, ptr %3, i32 96
  %165 = load i64, ptr %163, align 1
  %166 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %167 = load i64, ptr %166, align 1
  %168 = load i64, ptr %164, align 1
  %169 = xor i64 %168, %165
  %170 = getelementptr inbounds nuw i8, ptr %3, i32 104
  %171 = load i64, ptr %170, align 1
  %172 = xor i64 %171, %167
  %173 = and i64 %169, 4294967295
  %174 = and i64 %172, 4294967295
  %175 = mul nuw i64 %174, %173
  %176 = lshr i64 %169, 32
  %177 = mul nuw i64 %174, %176
  %178 = lshr i64 %172, 32
  %179 = mul nuw i64 %178, %173
  %180 = mul nuw i64 %178, %176
  %181 = lshr i64 %175, 32
  %182 = and i64 %177, 4294967295
  %183 = add nuw i64 %182, %179
  %184 = add nuw i64 %183, %181
  %185 = lshr i64 %177, 32
  %186 = lshr i64 %184, 32
  %187 = add nuw i64 %185, %180
  %188 = add nuw i64 %187, %186
  %189 = shl i64 %184, 32
  %190 = and i64 %175, 4294967295
  %191 = or disjoint i64 %189, %190
  %192 = xor i64 %191, %188
  %193 = add i64 %192, %156
  %194 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %195 = getelementptr inbounds i8, ptr %194, i32 -64
  %196 = getelementptr inbounds nuw i8, ptr %3, i32 112
  %197 = load i64, ptr %195, align 1
  %198 = getelementptr inbounds i8, ptr %194, i32 -56
  %199 = load i64, ptr %198, align 1
  %200 = load i64, ptr %196, align 1
  %201 = xor i64 %200, %197
  %202 = getelementptr inbounds nuw i8, ptr %3, i32 120
  %203 = load i64, ptr %202, align 1
  %204 = xor i64 %203, %199
  %205 = and i64 %201, 4294967295
  %206 = and i64 %204, 4294967295
  %207 = mul nuw i64 %206, %205
  %208 = lshr i64 %201, 32
  %209 = mul nuw i64 %206, %208
  %210 = lshr i64 %204, 32
  %211 = mul nuw i64 %210, %205
  %212 = mul nuw i64 %210, %208
  %213 = lshr i64 %207, 32
  %214 = and i64 %209, 4294967295
  %215 = add nuw i64 %214, %211
  %216 = add nuw i64 %215, %213
  %217 = lshr i64 %209, 32
  %218 = lshr i64 %216, 32
  %219 = add nuw i64 %217, %212
  %220 = add nuw i64 %219, %218
  %221 = shl i64 %216, 32
  %222 = and i64 %207, 4294967295
  %223 = or disjoint i64 %221, %222
  %224 = xor i64 %223, %220
  br label %225

225:                                              ; preds = %162, %160
  %226 = phi i64 [ %224, %162 ], [ 0, %160 ]
  %227 = phi i64 [ %193, %162 ], [ %156, %160 ]
  %228 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %229 = getelementptr inbounds nuw i8, ptr %3, i32 64
  %230 = load i64, ptr %228, align 1
  %231 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = xor i64 %233, %230
  %235 = getelementptr inbounds nuw i8, ptr %3, i32 72
  %236 = load i64, ptr %235, align 1
  %237 = xor i64 %236, %232
  %238 = and i64 %234, 4294967295
  %239 = and i64 %237, 4294967295
  %240 = mul nuw i64 %239, %238
  %241 = lshr i64 %234, 32
  %242 = mul nuw i64 %239, %241
  %243 = lshr i64 %237, 32
  %244 = mul nuw i64 %243, %238
  %245 = mul nuw i64 %243, %241
  %246 = lshr i64 %240, 32
  %247 = and i64 %242, 4294967295
  %248 = add nuw i64 %247, %244
  %249 = add nuw i64 %248, %246
  %250 = lshr i64 %242, 32
  %251 = lshr i64 %249, 32
  %252 = add nuw i64 %250, %245
  %253 = add nuw i64 %252, %251
  %254 = shl i64 %249, 32
  %255 = and i64 %240, 4294967295
  %256 = or disjoint i64 %254, %255
  %257 = xor i64 %256, %253
  %258 = add i64 %257, %227
  %259 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %260 = getelementptr inbounds i8, ptr %259, i32 -48
  %261 = getelementptr inbounds nuw i8, ptr %3, i32 80
  %262 = load i64, ptr %260, align 1
  %263 = getelementptr inbounds i8, ptr %259, i32 -40
  %264 = load i64, ptr %263, align 1
  %265 = load i64, ptr %261, align 1
  %266 = xor i64 %265, %262
  %267 = getelementptr inbounds nuw i8, ptr %3, i32 88
  %268 = load i64, ptr %267, align 1
  %269 = xor i64 %268, %264
  %270 = and i64 %266, 4294967295
  %271 = and i64 %269, 4294967295
  %272 = mul nuw i64 %271, %270
  %273 = lshr i64 %266, 32
  %274 = mul nuw i64 %271, %273
  %275 = lshr i64 %269, 32
  %276 = mul nuw i64 %275, %270
  %277 = mul nuw i64 %275, %273
  %278 = lshr i64 %272, 32
  %279 = and i64 %274, 4294967295
  %280 = add nuw i64 %279, %276
  %281 = add nuw i64 %280, %278
  %282 = lshr i64 %274, 32
  %283 = lshr i64 %281, 32
  %284 = add nuw i64 %282, %277
  %285 = add nuw i64 %284, %283
  %286 = shl i64 %281, 32
  %287 = and i64 %272, 4294967295
  %288 = or disjoint i64 %286, %287
  %289 = xor i64 %288, %285
  %290 = add i64 %289, %226
  br label %291

291:                                              ; preds = %225, %158
  %292 = phi i64 [ %290, %225 ], [ 0, %158 ]
  %293 = phi i64 [ %258, %225 ], [ %156, %158 ]
  %294 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %295 = getelementptr inbounds nuw i8, ptr %3, i32 32
  %296 = load i64, ptr %294, align 1
  %297 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %298 = load i64, ptr %297, align 1
  %299 = load i64, ptr %295, align 1
  %300 = xor i64 %299, %296
  %301 = getelementptr inbounds nuw i8, ptr %3, i32 40
  %302 = load i64, ptr %301, align 1
  %303 = xor i64 %302, %298
  %304 = and i64 %300, 4294967295
  %305 = and i64 %303, 4294967295
  %306 = mul nuw i64 %305, %304
  %307 = lshr i64 %300, 32
  %308 = mul nuw i64 %305, %307
  %309 = lshr i64 %303, 32
  %310 = mul nuw i64 %309, %304
  %311 = mul nuw i64 %309, %307
  %312 = lshr i64 %306, 32
  %313 = and i64 %308, 4294967295
  %314 = add nuw i64 %313, %310
  %315 = add nuw i64 %314, %312
  %316 = lshr i64 %308, 32
  %317 = lshr i64 %315, 32
  %318 = add nuw i64 %316, %311
  %319 = add nuw i64 %318, %317
  %320 = shl i64 %315, 32
  %321 = and i64 %306, 4294967295
  %322 = or disjoint i64 %320, %321
  %323 = xor i64 %322, %319
  %324 = add i64 %323, %293
  %325 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %326 = getelementptr inbounds i8, ptr %325, i32 -32
  %327 = getelementptr inbounds nuw i8, ptr %3, i32 48
  %328 = load i64, ptr %326, align 1
  %329 = getelementptr inbounds i8, ptr %325, i32 -24
  %330 = load i64, ptr %329, align 1
  %331 = load i64, ptr %327, align 1
  %332 = xor i64 %331, %328
  %333 = getelementptr inbounds nuw i8, ptr %3, i32 56
  %334 = load i64, ptr %333, align 1
  %335 = xor i64 %334, %330
  %336 = and i64 %332, 4294967295
  %337 = and i64 %335, 4294967295
  %338 = mul nuw i64 %337, %336
  %339 = lshr i64 %332, 32
  %340 = mul nuw i64 %337, %339
  %341 = lshr i64 %335, 32
  %342 = mul nuw i64 %341, %336
  %343 = mul nuw i64 %341, %339
  %344 = lshr i64 %338, 32
  %345 = and i64 %340, 4294967295
  %346 = add nuw i64 %345, %342
  %347 = add nuw i64 %346, %344
  %348 = lshr i64 %340, 32
  %349 = lshr i64 %347, 32
  %350 = add nuw i64 %348, %343
  %351 = add nuw i64 %350, %349
  %352 = shl i64 %347, 32
  %353 = and i64 %338, 4294967295
  %354 = or disjoint i64 %352, %353
  %355 = xor i64 %354, %351
  %356 = add i64 %355, %292
  br label %357

357:                                              ; preds = %154, %291
  %358 = phi i64 [ %356, %291 ], [ 0, %154 ]
  %359 = phi i64 [ %324, %291 ], [ %156, %154 ]
  %360 = load i64, ptr %1, align 1
  %361 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %362 = load i64, ptr %361, align 1
  %363 = load i64, ptr %3, align 1
  %364 = xor i64 %363, %360
  %365 = getelementptr inbounds nuw i8, ptr %3, i32 8
  %366 = load i64, ptr %365, align 1
  %367 = xor i64 %366, %362
  %368 = and i64 %364, 4294967295
  %369 = and i64 %367, 4294967295
  %370 = mul nuw i64 %369, %368
  %371 = lshr i64 %364, 32
  %372 = mul nuw i64 %369, %371
  %373 = lshr i64 %367, 32
  %374 = mul nuw i64 %373, %368
  %375 = mul nuw i64 %373, %371
  %376 = lshr i64 %370, 32
  %377 = and i64 %372, 4294967295
  %378 = add nuw i64 %377, %374
  %379 = add nuw i64 %378, %376
  %380 = lshr i64 %372, 32
  %381 = lshr i64 %379, 32
  %382 = add nuw i64 %380, %375
  %383 = add nuw i64 %382, %381
  %384 = shl i64 %379, 32
  %385 = and i64 %370, 4294967295
  %386 = or disjoint i64 %384, %385
  %387 = xor i64 %386, %383
  %388 = add i64 %387, %359
  %389 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %390 = getelementptr inbounds i8, ptr %389, i32 -16
  %391 = getelementptr inbounds nuw i8, ptr %3, i32 16
  %392 = load i64, ptr %390, align 1
  %393 = getelementptr inbounds i8, ptr %389, i32 -8
  %394 = load i64, ptr %393, align 1
  %395 = load i64, ptr %391, align 1
  %396 = xor i64 %395, %392
  %397 = getelementptr inbounds nuw i8, ptr %3, i32 24
  %398 = load i64, ptr %397, align 1
  %399 = xor i64 %398, %394
  %400 = and i64 %396, 4294967295
  %401 = and i64 %399, 4294967295
  %402 = mul nuw i64 %401, %400
  %403 = lshr i64 %396, 32
  %404 = mul nuw i64 %401, %403
  %405 = lshr i64 %399, 32
  %406 = mul nuw i64 %405, %400
  %407 = mul nuw i64 %405, %403
  %408 = lshr i64 %402, 32
  %409 = and i64 %404, 4294967295
  %410 = add nuw i64 %409, %406
  %411 = add nuw i64 %410, %408
  %412 = lshr i64 %404, 32
  %413 = lshr i64 %411, 32
  %414 = add nuw i64 %412, %407
  %415 = add nuw i64 %414, %413
  %416 = shl i64 %411, 32
  %417 = and i64 %402, 4294967295
  %418 = or disjoint i64 %416, %417
  %419 = xor i64 %418, %415
  %420 = add i64 %419, %358
  %421 = add i64 %420, %388
  %422 = mul i64 %388, -7046029288634856825
  %423 = mul i64 %420, -8796714831421723037
  %424 = mul i64 %155, -4417276706812531889
  %425 = add i64 %422, %424
  %426 = add i64 %425, %423
  %427 = lshr i64 %421, 37
  %428 = xor i64 %427, %421
  %429 = mul i64 %428, 1609587929392839161
  %430 = lshr i64 %429, 32
  %431 = xor i64 %430, %429
  store i64 %431, ptr %0, align 8, !alias.scope !49
  %432 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %433 = lshr i64 %426, 37
  %434 = xor i64 %433, %426
  %435 = mul i64 %434, 1609587929392839161
  %436 = lshr i64 %435, 32
  %437 = xor i64 %436, %435
  %438 = sub i64 0, %437
  store i64 %438, ptr %432, align 8, !alias.scope !49
  br label %443

439:                                              ; preds = %152
  %440 = icmp ult i32 %2, 241
  br i1 %440, label %441, label %442

441:                                              ; preds = %439
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef 0)
  br label %443

442:                                              ; preds = %439
  tail call fastcc void @XXH3_hashLong_128b_withSecret(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %443

443:                                              ; preds = %151, %113, %70, %9, %442, %441, %357
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
  %452 = and i64 %448, 4294967295
  %453 = and i64 %451, 4294967295
  %454 = mul nuw i64 %453, %452
  %455 = lshr i64 %448, 32
  %456 = mul nuw i64 %453, %455
  %457 = lshr i64 %451, 32
  %458 = mul nuw i64 %457, %452
  %459 = mul nuw i64 %457, %455
  %460 = lshr i64 %454, 32
  %461 = and i64 %456, 4294967295
  %462 = add nuw i64 %461, %458
  %463 = add nuw i64 %462, %460
  %464 = lshr i64 %456, 32
  %465 = lshr i64 %463, 32
  %466 = add nuw i64 %464, %459
  %467 = add nuw i64 %466, %465
  %468 = shl i64 %463, 32
  %469 = and i64 %454, 4294967295
  %470 = or disjoint i64 %468, %469
  %471 = xor i64 %470, %467
  %472 = add i64 %471, %446
  %473 = getelementptr inbounds nuw i8, ptr %3, i32 27
  %474 = load i64, ptr %473, align 1, !noalias !52
  %475 = xor i64 %474, %441
  %476 = getelementptr inbounds nuw i8, ptr %3, i32 35
  %477 = load i64, ptr %476, align 1, !noalias !52
  %478 = xor i64 %477, %440
  %479 = and i64 %475, 4294967295
  %480 = and i64 %478, 4294967295
  %481 = mul nuw i64 %480, %479
  %482 = lshr i64 %475, 32
  %483 = mul nuw i64 %480, %482
  %484 = lshr i64 %478, 32
  %485 = mul nuw i64 %484, %479
  %486 = mul nuw i64 %484, %482
  %487 = lshr i64 %481, 32
  %488 = and i64 %483, 4294967295
  %489 = add nuw i64 %488, %485
  %490 = add nuw i64 %489, %487
  %491 = lshr i64 %483, 32
  %492 = lshr i64 %490, 32
  %493 = add nuw i64 %491, %486
  %494 = add nuw i64 %493, %492
  %495 = shl i64 %490, 32
  %496 = and i64 %481, 4294967295
  %497 = or disjoint i64 %495, %496
  %498 = xor i64 %497, %494
  %499 = add i64 %472, %498
  %500 = getelementptr inbounds nuw i8, ptr %3, i32 43
  %501 = load i64, ptr %500, align 1, !noalias !52
  %502 = xor i64 %501, %439
  %503 = getelementptr inbounds nuw i8, ptr %3, i32 51
  %504 = load i64, ptr %503, align 1, !noalias !52
  %505 = xor i64 %504, %438
  %506 = and i64 %502, 4294967295
  %507 = and i64 %505, 4294967295
  %508 = mul nuw i64 %507, %506
  %509 = lshr i64 %502, 32
  %510 = mul nuw i64 %507, %509
  %511 = lshr i64 %505, 32
  %512 = mul nuw i64 %511, %506
  %513 = mul nuw i64 %511, %509
  %514 = lshr i64 %508, 32
  %515 = and i64 %510, 4294967295
  %516 = add nuw i64 %515, %512
  %517 = add nuw i64 %516, %514
  %518 = lshr i64 %510, 32
  %519 = lshr i64 %517, 32
  %520 = add nuw i64 %518, %513
  %521 = add nuw i64 %520, %519
  %522 = shl i64 %517, 32
  %523 = and i64 %508, 4294967295
  %524 = or disjoint i64 %522, %523
  %525 = xor i64 %524, %521
  %526 = add i64 %499, %525
  %527 = getelementptr inbounds nuw i8, ptr %3, i32 59
  %528 = load i64, ptr %527, align 1, !noalias !52
  %529 = xor i64 %528, %437
  %530 = getelementptr inbounds nuw i8, ptr %3, i32 67
  %531 = load i64, ptr %530, align 1, !noalias !52
  %532 = xor i64 %531, %436
  %533 = and i64 %529, 4294967295
  %534 = and i64 %532, 4294967295
  %535 = mul nuw i64 %534, %533
  %536 = lshr i64 %529, 32
  %537 = mul nuw i64 %534, %536
  %538 = lshr i64 %532, 32
  %539 = mul nuw i64 %538, %533
  %540 = mul nuw i64 %538, %536
  %541 = lshr i64 %535, 32
  %542 = and i64 %537, 4294967295
  %543 = add nuw i64 %542, %539
  %544 = add nuw i64 %543, %541
  %545 = lshr i64 %537, 32
  %546 = lshr i64 %544, 32
  %547 = add nuw i64 %545, %540
  %548 = add nuw i64 %547, %546
  %549 = shl i64 %544, 32
  %550 = and i64 %535, 4294967295
  %551 = or disjoint i64 %549, %550
  %552 = xor i64 %551, %548
  %553 = add i64 %526, %552
  %554 = lshr i64 %553, 37
  %555 = xor i64 %554, %553
  %556 = mul i64 %555, 1609587929392839161
  %557 = lshr i64 %556, 32
  %558 = xor i64 %557, %556
  %559 = getelementptr inbounds nuw i8, ptr %3, i32 %4
  %560 = getelementptr inbounds i8, ptr %559, i32 -75
  %561 = mul i64 %445, -4417276706812531889
  %562 = xor i64 %561, -1
  %563 = load i64, ptr %560, align 1, !noalias !52
  %564 = xor i64 %563, %443
  %565 = getelementptr inbounds i8, ptr %559, i32 -67
  %566 = load i64, ptr %565, align 1, !noalias !52
  %567 = xor i64 %566, %442
  %568 = and i64 %564, 4294967295
  %569 = and i64 %567, 4294967295
  %570 = mul nuw i64 %569, %568
  %571 = lshr i64 %564, 32
  %572 = mul nuw i64 %569, %571
  %573 = lshr i64 %567, 32
  %574 = mul nuw i64 %573, %568
  %575 = mul nuw i64 %573, %571
  %576 = lshr i64 %570, 32
  %577 = and i64 %572, 4294967295
  %578 = add nuw i64 %577, %574
  %579 = add nuw i64 %578, %576
  %580 = lshr i64 %572, 32
  %581 = lshr i64 %579, 32
  %582 = add nuw i64 %580, %575
  %583 = add nuw i64 %582, %581
  %584 = shl i64 %579, 32
  %585 = and i64 %570, 4294967295
  %586 = or disjoint i64 %584, %585
  %587 = xor i64 %586, %583
  %588 = add i64 %587, %562
  %589 = getelementptr inbounds i8, ptr %559, i32 -59
  %590 = load i64, ptr %589, align 1, !noalias !52
  %591 = xor i64 %590, %441
  %592 = getelementptr inbounds i8, ptr %559, i32 -51
  %593 = load i64, ptr %592, align 1, !noalias !52
  %594 = xor i64 %593, %440
  %595 = and i64 %591, 4294967295
  %596 = and i64 %594, 4294967295
  %597 = mul nuw i64 %596, %595
  %598 = lshr i64 %591, 32
  %599 = mul nuw i64 %596, %598
  %600 = lshr i64 %594, 32
  %601 = mul nuw i64 %600, %595
  %602 = mul nuw i64 %600, %598
  %603 = lshr i64 %597, 32
  %604 = and i64 %599, 4294967295
  %605 = add nuw i64 %604, %601
  %606 = add nuw i64 %605, %603
  %607 = lshr i64 %599, 32
  %608 = lshr i64 %606, 32
  %609 = add nuw i64 %607, %602
  %610 = add nuw i64 %609, %608
  %611 = shl i64 %606, 32
  %612 = and i64 %597, 4294967295
  %613 = or disjoint i64 %611, %612
  %614 = xor i64 %613, %610
  %615 = add i64 %588, %614
  %616 = getelementptr inbounds i8, ptr %559, i32 -43
  %617 = load i64, ptr %616, align 1, !noalias !52
  %618 = xor i64 %617, %439
  %619 = getelementptr inbounds i8, ptr %559, i32 -35
  %620 = load i64, ptr %619, align 1, !noalias !52
  %621 = xor i64 %620, %438
  %622 = and i64 %618, 4294967295
  %623 = and i64 %621, 4294967295
  %624 = mul nuw i64 %623, %622
  %625 = lshr i64 %618, 32
  %626 = mul nuw i64 %623, %625
  %627 = lshr i64 %621, 32
  %628 = mul nuw i64 %627, %622
  %629 = mul nuw i64 %627, %625
  %630 = lshr i64 %624, 32
  %631 = and i64 %626, 4294967295
  %632 = add nuw i64 %631, %628
  %633 = add nuw i64 %632, %630
  %634 = lshr i64 %626, 32
  %635 = lshr i64 %633, 32
  %636 = add nuw i64 %634, %629
  %637 = add nuw i64 %636, %635
  %638 = shl i64 %633, 32
  %639 = and i64 %624, 4294967295
  %640 = or disjoint i64 %638, %639
  %641 = xor i64 %640, %637
  %642 = add i64 %615, %641
  %643 = getelementptr inbounds i8, ptr %559, i32 -27
  %644 = load i64, ptr %643, align 1, !noalias !52
  %645 = xor i64 %644, %437
  %646 = getelementptr inbounds i8, ptr %559, i32 -19
  %647 = load i64, ptr %646, align 1, !noalias !52
  %648 = xor i64 %647, %436
  %649 = and i64 %645, 4294967295
  %650 = and i64 %648, 4294967295
  %651 = mul nuw i64 %650, %649
  %652 = lshr i64 %645, 32
  %653 = mul nuw i64 %650, %652
  %654 = lshr i64 %648, 32
  %655 = mul nuw i64 %654, %649
  %656 = mul nuw i64 %654, %652
  %657 = lshr i64 %651, 32
  %658 = and i64 %653, 4294967295
  %659 = add nuw i64 %658, %655
  %660 = add nuw i64 %659, %657
  %661 = lshr i64 %653, 32
  %662 = lshr i64 %660, 32
  %663 = add nuw i64 %661, %656
  %664 = add nuw i64 %663, %662
  %665 = shl i64 %660, 32
  %666 = and i64 %651, 4294967295
  %667 = or disjoint i64 %665, %666
  %668 = xor i64 %667, %664
  %669 = add i64 %642, %668
  %670 = lshr i64 %669, 37
  %671 = xor i64 %670, %669
  %672 = mul i64 %671, 1609587929392839161
  %673 = lshr i64 %672, 32
  %674 = xor i64 %673, %672
  store i64 %558, ptr %0, align 8, !alias.scope !52
  %675 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %674, ptr %675, align 8, !alias.scope !52
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH3_128bits_withSeed(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  %5 = icmp ult i32 %2, 17
  br i1 %5, label %6, label %148

6:                                                ; preds = %4
  %7 = icmp samesign ugt i32 %2, 8
  br i1 %7, label %8, label %66

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
  %18 = and i64 %17, 4294967295
  %19 = mul nuw i64 %18, 2246822535
  %20 = lshr i64 %17, 32
  %21 = mul nuw i64 %20, 2246822535
  %22 = mul nuw i64 %18, 2654435761
  %23 = mul nuw i64 %20, 2654435761
  %24 = lshr i64 %19, 32
  %25 = and i64 %21, 4294967295
  %26 = add nuw i64 %25, %22
  %27 = add nuw i64 %26, %24
  %28 = lshr i64 %21, 32
  %29 = lshr i64 %27, 32
  %30 = and i64 %27, 4294967295
  %31 = and i64 %19, 4294967295
  %32 = mul i64 %16, -7046029288634856825
  %33 = add i64 %23, %32
  %34 = add i64 %33, %28
  %35 = add i64 %34, %29
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %31
  %38 = mul nuw nsw i64 %37, 668265295
  %39 = mul nuw nsw i64 %30, 668265295
  %40 = mul nuw i64 %37, 3266489917
  %41 = mul nuw i64 %30, 3266489917
  %42 = lshr i64 %38, 32
  %43 = and i64 %39, 4294967295
  %44 = add nuw i64 %40, %43
  %45 = add nuw i64 %44, %42
  %46 = lshr i64 %39, 32
  %47 = lshr i64 %45, 32
  %48 = add nuw i64 %46, %41
  %49 = shl i64 %45, 32
  %50 = and i64 %38, 4294967295
  %51 = or disjoint i64 %49, %50
  %52 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %53 = mul i64 %35, -4417276706812531889
  %54 = add i64 %48, %53
  %55 = add i64 %54, %47
  %56 = lshr i64 %49, 37
  %57 = xor i64 %56, %51
  %58 = mul i64 %57, 1609587929392839161
  %59 = lshr i64 %58, 32
  %60 = xor i64 %59, %58
  store i64 %60, ptr %0, align 8, !alias.scope !55
  %61 = lshr i64 %55, 37
  %62 = xor i64 %61, %55
  %63 = mul i64 %62, 1609587929392839161
  %64 = lshr i64 %63, 32
  %65 = xor i64 %64, %63
  store i64 %65, ptr %52, align 8, !alias.scope !55
  br label %425

66:                                               ; preds = %6
  %67 = icmp samesign ugt i32 %2, 3
  br i1 %67, label %68, label %108

68:                                               ; preds = %66
  %69 = load i32, ptr %1, align 1
  %70 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %71 = getelementptr inbounds i8, ptr %70, i32 -4
  %72 = load i32, ptr %71, align 1
  %73 = zext i32 %69 to i64
  %74 = zext i32 %72 to i64
  %75 = shl nuw i64 %74, 32
  %76 = or disjoint i64 %75, %73
  %77 = tail call noundef i64 @llvm.bswap.i64(i64 %76)
  %78 = add i64 %3, -4734510112055689544
  %79 = xor i64 %76, %78
  %80 = sub i64 2066345149520216444, %3
  %81 = xor i64 %77, %80
  %82 = zext nneg i32 %2 to i64
  %83 = lshr i64 %79, 51
  %84 = xor i64 %83, %79
  %85 = mul i64 %84, 2654435761
  %86 = add i64 %85, %82
  %87 = lshr i64 %86, 47
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %81, 47
  %91 = xor i64 %90, %81
  %92 = mul i64 %91, -7046029288634856825
  %93 = sub i64 %92, %82
  %94 = lshr i64 %93, 43
  %95 = xor i64 %94, %93
  %96 = mul i64 %95, -8796714831421723037
  %97 = lshr i64 %89, 37
  %98 = xor i64 %97, %89
  %99 = mul i64 %98, 1609587929392839161
  %100 = lshr i64 %99, 32
  %101 = xor i64 %100, %99
  store i64 %101, ptr %0, align 8, !alias.scope !58
  %102 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %103 = lshr i64 %96, 37
  %104 = xor i64 %103, %96
  %105 = mul i64 %104, 1609587929392839161
  %106 = lshr i64 %105, 32
  %107 = xor i64 %106, %105
  store i64 %107, ptr %102, align 8, !alias.scope !58
  br label %425

108:                                              ; preds = %66
  %109 = icmp eq i32 %2, 0
  br i1 %109, label %147, label %110

110:                                              ; preds = %108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %111 = load i8, ptr %1, align 1, !noalias !61
  %112 = lshr i32 %2, 1
  %113 = getelementptr inbounds nuw i8, ptr %1, i32 %112
  %114 = load i8, ptr %113, align 1, !noalias !61
  %115 = getelementptr i8, ptr %1, i32 %2
  %116 = getelementptr i8, ptr %115, i32 -1
  %117 = load i8, ptr %116, align 1, !noalias !61
  %118 = zext i8 %111 to i32
  %119 = zext i8 %114 to i32
  %120 = shl nuw nsw i32 %119, 8
  %121 = or disjoint i32 %120, %118
  %122 = zext i8 %117 to i32
  %123 = shl nuw nsw i32 %122, 16
  %124 = or disjoint i32 %121, %123
  %125 = shl nuw nsw i32 %2, 24
  %126 = or disjoint i32 %124, %125
  %127 = tail call noundef i32 @llvm.bswap.i32(i32 %126)
  %128 = zext nneg i32 %126 to i64
  %129 = add i64 %3, 963444408
  %130 = xor i64 %129, %128
  %131 = zext i32 %127 to i64
  %132 = sub i64 3192628259, %3
  %133 = xor i64 %132, %131
  %134 = mul i64 %130, -7046029288634856825
  %135 = mul i64 %133, -4417276706812531889
  %136 = lshr i64 %134, 37
  %137 = xor i64 %136, %134
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  store i64 %140, ptr %0, align 8, !alias.scope !61
  %141 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %142 = lshr i64 %135, 37
  %143 = xor i64 %142, %135
  %144 = mul i64 %143, 1609587929392839161
  %145 = lshr i64 %144, 32
  %146 = xor i64 %145, %144
  store i64 %146, ptr %141, align 8, !alias.scope !61
  br label %425

147:                                              ; preds = %108
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !64
  br label %425

148:                                              ; preds = %4
  %149 = icmp ult i32 %2, 129
  br i1 %149, label %150, label %421

150:                                              ; preds = %148
  %151 = zext nneg i32 %2 to i64
  %152 = mul i64 %151, -7046029288634856825
  %153 = icmp samesign ugt i32 %2, 32
  br i1 %153, label %154, label %341

154:                                              ; preds = %150
  %155 = icmp samesign ugt i32 %2, 64
  br i1 %155, label %156, label %279

156:                                              ; preds = %154
  %157 = icmp samesign ugt i32 %2, 96
  br i1 %157, label %158, label %217

158:                                              ; preds = %156
  %159 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %162 = load i64, ptr %161, align 1
  %163 = add i64 %3, 4554437623014685352
  %164 = xor i64 %160, %163
  %165 = sub i64 2111919702937427193, %3
  %166 = xor i64 %162, %165
  %167 = and i64 %164, 4294967295
  %168 = and i64 %166, 4294967295
  %169 = mul nuw i64 %168, %167
  %170 = lshr i64 %164, 32
  %171 = mul nuw i64 %168, %170
  %172 = lshr i64 %166, 32
  %173 = mul nuw i64 %172, %167
  %174 = mul nuw i64 %172, %170
  %175 = lshr i64 %169, 32
  %176 = and i64 %171, 4294967295
  %177 = add nuw i64 %176, %173
  %178 = add nuw i64 %177, %175
  %179 = lshr i64 %171, 32
  %180 = lshr i64 %178, 32
  %181 = add nuw i64 %179, %174
  %182 = add nuw i64 %181, %180
  %183 = shl i64 %178, 32
  %184 = and i64 %169, 4294967295
  %185 = or disjoint i64 %183, %184
  %186 = xor i64 %185, %182
  %187 = add i64 %186, %152
  %188 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %189 = getelementptr inbounds i8, ptr %188, i32 -64
  %190 = load i64, ptr %189, align 1
  %191 = getelementptr inbounds i8, ptr %188, i32 -56
  %192 = load i64, ptr %191, align 1
  %193 = add i64 %3, 3556072174620004746
  %194 = xor i64 %190, %193
  %195 = sub i64 7238261902898274248, %3
  %196 = xor i64 %192, %195
  %197 = and i64 %194, 4294967295
  %198 = and i64 %196, 4294967295
  %199 = mul nuw i64 %198, %197
  %200 = lshr i64 %194, 32
  %201 = mul nuw i64 %198, %200
  %202 = lshr i64 %196, 32
  %203 = mul nuw i64 %202, %197
  %204 = mul nuw i64 %202, %200
  %205 = lshr i64 %199, 32
  %206 = and i64 %201, 4294967295
  %207 = add nuw i64 %206, %203
  %208 = add nuw i64 %207, %205
  %209 = lshr i64 %201, 32
  %210 = lshr i64 %208, 32
  %211 = add nuw i64 %209, %204
  %212 = add nuw i64 %211, %210
  %213 = shl i64 %208, 32
  %214 = and i64 %199, 4294967295
  %215 = or disjoint i64 %213, %214
  %216 = xor i64 %215, %212
  br label %217

217:                                              ; preds = %158, %156
  %218 = phi i64 [ %216, %158 ], [ 0, %156 ]
  %219 = phi i64 [ %187, %158 ], [ %152, %156 ]
  %220 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %221 = load i64, ptr %220, align 1
  %222 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %223 = load i64, ptr %222, align 1
  %224 = add i64 %3, -3818837453329782724
  %225 = xor i64 %221, %224
  %226 = sub i64 -6688317018830679928, %3
  %227 = xor i64 %223, %226
  %228 = and i64 %225, 4294967295
  %229 = and i64 %227, 4294967295
  %230 = mul nuw i64 %229, %228
  %231 = lshr i64 %225, 32
  %232 = mul nuw i64 %229, %231
  %233 = lshr i64 %227, 32
  %234 = mul nuw i64 %233, %228
  %235 = mul nuw i64 %233, %231
  %236 = lshr i64 %230, 32
  %237 = and i64 %232, 4294967295
  %238 = add nuw i64 %237, %234
  %239 = add nuw i64 %238, %236
  %240 = lshr i64 %232, 32
  %241 = lshr i64 %239, 32
  %242 = add nuw i64 %240, %235
  %243 = add nuw i64 %242, %241
  %244 = shl i64 %239, 32
  %245 = and i64 %230, 4294967295
  %246 = or disjoint i64 %244, %245
  %247 = xor i64 %246, %243
  %248 = add i64 %247, %219
  %249 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %250 = getelementptr inbounds i8, ptr %249, i32 -48
  %251 = load i64, ptr %250, align 1
  %252 = getelementptr inbounds i8, ptr %249, i32 -40
  %253 = load i64, ptr %252, align 1
  %254 = add i64 %3, 5690594596133299313
  %255 = xor i64 %251, %254
  %256 = sub i64 -2833645246901970632, %3
  %257 = xor i64 %253, %256
  %258 = and i64 %255, 4294967295
  %259 = and i64 %257, 4294967295
  %260 = mul nuw i64 %259, %258
  %261 = lshr i64 %255, 32
  %262 = mul nuw i64 %259, %261
  %263 = lshr i64 %257, 32
  %264 = mul nuw i64 %263, %258
  %265 = mul nuw i64 %263, %261
  %266 = lshr i64 %260, 32
  %267 = and i64 %262, 4294967295
  %268 = add nuw i64 %267, %264
  %269 = add nuw i64 %268, %266
  %270 = lshr i64 %262, 32
  %271 = lshr i64 %269, 32
  %272 = add nuw i64 %270, %265
  %273 = add nuw i64 %272, %271
  %274 = shl i64 %269, 32
  %275 = and i64 %260, 4294967295
  %276 = or disjoint i64 %274, %275
  %277 = xor i64 %276, %273
  %278 = add i64 %277, %218
  br label %279

279:                                              ; preds = %217, %154
  %280 = phi i64 [ %278, %217 ], [ 0, %154 ]
  %281 = phi i64 [ %248, %217 ], [ %152, %154 ]
  %282 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %283 = load i64, ptr %282, align 1
  %284 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %285 = load i64, ptr %284, align 1
  %286 = add i64 %3, 8711581037947681227
  %287 = xor i64 %283, %286
  %288 = sub i64 2410270004345854594, %3
  %289 = xor i64 %285, %288
  %290 = and i64 %287, 4294967295
  %291 = and i64 %289, 4294967295
  %292 = mul nuw i64 %291, %290
  %293 = lshr i64 %287, 32
  %294 = mul nuw i64 %291, %293
  %295 = lshr i64 %289, 32
  %296 = mul nuw i64 %295, %290
  %297 = mul nuw i64 %295, %293
  %298 = lshr i64 %292, 32
  %299 = and i64 %294, 4294967295
  %300 = add nuw i64 %299, %296
  %301 = add nuw i64 %300, %298
  %302 = lshr i64 %294, 32
  %303 = lshr i64 %301, 32
  %304 = add nuw i64 %302, %297
  %305 = add nuw i64 %304, %303
  %306 = shl i64 %301, 32
  %307 = and i64 %292, 4294967295
  %308 = or disjoint i64 %306, %307
  %309 = xor i64 %308, %305
  %310 = add i64 %309, %281
  %311 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %312 = getelementptr inbounds i8, ptr %311, i32 -32
  %313 = load i64, ptr %312, align 1
  %314 = getelementptr inbounds i8, ptr %311, i32 -24
  %315 = load i64, ptr %314, align 1
  %316 = add i64 %3, -8204357891075471176
  %317 = xor i64 %313, %316
  %318 = sub i64 5487137525590930912, %3
  %319 = xor i64 %315, %318
  %320 = and i64 %317, 4294967295
  %321 = and i64 %319, 4294967295
  %322 = mul nuw i64 %321, %320
  %323 = lshr i64 %317, 32
  %324 = mul nuw i64 %321, %323
  %325 = lshr i64 %319, 32
  %326 = mul nuw i64 %325, %320
  %327 = mul nuw i64 %325, %323
  %328 = lshr i64 %322, 32
  %329 = and i64 %324, 4294967295
  %330 = add nuw i64 %329, %326
  %331 = add nuw i64 %330, %328
  %332 = lshr i64 %324, 32
  %333 = lshr i64 %331, 32
  %334 = add nuw i64 %332, %327
  %335 = add nuw i64 %334, %333
  %336 = shl i64 %331, 32
  %337 = and i64 %322, 4294967295
  %338 = or disjoint i64 %336, %337
  %339 = xor i64 %338, %335
  %340 = add i64 %339, %280
  br label %341

341:                                              ; preds = %150, %279
  %342 = phi i64 [ %340, %279 ], [ 0, %150 ]
  %343 = phi i64 [ %310, %279 ], [ %152, %150 ]
  %344 = load i64, ptr %1, align 1
  %345 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %346 = load i64, ptr %345, align 1
  %347 = add i64 %3, -4734510112055689544
  %348 = xor i64 %344, %347
  %349 = sub i64 2066345149520216444, %3
  %350 = xor i64 %346, %349
  %351 = and i64 %348, 4294967295
  %352 = and i64 %350, 4294967295
  %353 = mul nuw i64 %352, %351
  %354 = lshr i64 %348, 32
  %355 = mul nuw i64 %352, %354
  %356 = lshr i64 %350, 32
  %357 = mul nuw i64 %356, %351
  %358 = mul nuw i64 %356, %354
  %359 = lshr i64 %353, 32
  %360 = and i64 %355, 4294967295
  %361 = add nuw i64 %360, %357
  %362 = add nuw i64 %361, %359
  %363 = lshr i64 %355, 32
  %364 = lshr i64 %362, 32
  %365 = add nuw i64 %363, %358
  %366 = add nuw i64 %365, %364
  %367 = shl i64 %362, 32
  %368 = and i64 %353, 4294967295
  %369 = or disjoint i64 %367, %368
  %370 = xor i64 %369, %366
  %371 = add i64 %370, %343
  %372 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %373 = getelementptr inbounds i8, ptr %372, i32 -16
  %374 = load i64, ptr %373, align 1
  %375 = getelementptr inbounds i8, ptr %372, i32 -8
  %376 = load i64, ptr %375, align 1
  %377 = add i64 %3, -2623469361688619810
  %378 = xor i64 %374, %377
  %379 = sub i64 2262974939099578482, %3
  %380 = xor i64 %376, %379
  %381 = and i64 %378, 4294967295
  %382 = and i64 %380, 4294967295
  %383 = mul nuw i64 %382, %381
  %384 = lshr i64 %378, 32
  %385 = mul nuw i64 %382, %384
  %386 = lshr i64 %380, 32
  %387 = mul nuw i64 %386, %381
  %388 = mul nuw i64 %386, %384
  %389 = lshr i64 %383, 32
  %390 = and i64 %385, 4294967295
  %391 = add nuw i64 %390, %387
  %392 = add nuw i64 %391, %389
  %393 = lshr i64 %385, 32
  %394 = lshr i64 %392, 32
  %395 = add nuw i64 %393, %388
  %396 = add nuw i64 %395, %394
  %397 = shl i64 %392, 32
  %398 = and i64 %383, 4294967295
  %399 = or disjoint i64 %397, %398
  %400 = xor i64 %399, %396
  %401 = add i64 %400, %342
  %402 = add i64 %401, %371
  %403 = mul i64 %371, -7046029288634856825
  %404 = mul i64 %401, -8796714831421723037
  %405 = sub i64 %151, %3
  %406 = mul i64 %405, -4417276706812531889
  %407 = add i64 %403, %406
  %408 = add i64 %407, %404
  %409 = lshr i64 %402, 37
  %410 = xor i64 %409, %402
  %411 = mul i64 %410, 1609587929392839161
  %412 = lshr i64 %411, 32
  %413 = xor i64 %412, %411
  store i64 %413, ptr %0, align 8, !alias.scope !67
  %414 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %415 = lshr i64 %408, 37
  %416 = xor i64 %415, %408
  %417 = mul i64 %416, 1609587929392839161
  %418 = lshr i64 %417, 32
  %419 = xor i64 %418, %417
  %420 = sub i64 0, %419
  store i64 %420, ptr %414, align 8, !alias.scope !67
  br label %425

421:                                              ; preds = %148
  %422 = icmp ult i32 %2, 241
  br i1 %422, label %423, label %424

423:                                              ; preds = %421
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @kSecret, i64 noundef %3)
  br label %425

424:                                              ; preds = %421
  tail call fastcc void @XXH3_hashLong_128b_withSeed(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef %2, i64 noundef %3)
  br label %425

425:                                              ; preds = %147, %110, %68, %8, %424, %423, %341
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
  br label %640

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
  %417 = and i64 %413, 4294967295
  %418 = and i64 %416, 4294967295
  %419 = mul nuw i64 %418, %417
  %420 = lshr i64 %413, 32
  %421 = mul nuw i64 %418, %420
  %422 = lshr i64 %416, 32
  %423 = mul nuw i64 %422, %417
  %424 = mul nuw i64 %422, %420
  %425 = lshr i64 %419, 32
  %426 = and i64 %421, 4294967295
  %427 = add nuw i64 %426, %423
  %428 = add nuw i64 %427, %425
  %429 = lshr i64 %421, 32
  %430 = lshr i64 %428, 32
  %431 = add nuw i64 %429, %424
  %432 = add nuw i64 %431, %430
  %433 = shl i64 %428, 32
  %434 = and i64 %419, 4294967295
  %435 = or disjoint i64 %433, %434
  %436 = xor i64 %435, %432
  %437 = add i64 %436, %411
  %438 = getelementptr inbounds nuw i8, ptr %5, i32 27
  %439 = load i64, ptr %438, align 1, !noalias !70
  %440 = xor i64 %439, %406
  %441 = getelementptr inbounds nuw i8, ptr %5, i32 35
  %442 = load i64, ptr %441, align 1, !noalias !70
  %443 = xor i64 %442, %405
  %444 = and i64 %440, 4294967295
  %445 = and i64 %443, 4294967295
  %446 = mul nuw i64 %445, %444
  %447 = lshr i64 %440, 32
  %448 = mul nuw i64 %445, %447
  %449 = lshr i64 %443, 32
  %450 = mul nuw i64 %449, %444
  %451 = mul nuw i64 %449, %447
  %452 = lshr i64 %446, 32
  %453 = and i64 %448, 4294967295
  %454 = add nuw i64 %453, %450
  %455 = add nuw i64 %454, %452
  %456 = lshr i64 %448, 32
  %457 = lshr i64 %455, 32
  %458 = add nuw i64 %456, %451
  %459 = add nuw i64 %458, %457
  %460 = shl i64 %455, 32
  %461 = and i64 %446, 4294967295
  %462 = or disjoint i64 %460, %461
  %463 = xor i64 %462, %459
  %464 = add i64 %437, %463
  %465 = getelementptr inbounds nuw i8, ptr %5, i32 43
  %466 = load i64, ptr %465, align 1, !noalias !70
  %467 = xor i64 %466, %404
  %468 = getelementptr inbounds nuw i8, ptr %5, i32 51
  %469 = load i64, ptr %468, align 1, !noalias !70
  %470 = xor i64 %469, %403
  %471 = and i64 %467, 4294967295
  %472 = and i64 %470, 4294967295
  %473 = mul nuw i64 %472, %471
  %474 = lshr i64 %467, 32
  %475 = mul nuw i64 %472, %474
  %476 = lshr i64 %470, 32
  %477 = mul nuw i64 %476, %471
  %478 = mul nuw i64 %476, %474
  %479 = lshr i64 %473, 32
  %480 = and i64 %475, 4294967295
  %481 = add nuw i64 %480, %477
  %482 = add nuw i64 %481, %479
  %483 = lshr i64 %475, 32
  %484 = lshr i64 %482, 32
  %485 = add nuw i64 %483, %478
  %486 = add nuw i64 %485, %484
  %487 = shl i64 %482, 32
  %488 = and i64 %473, 4294967295
  %489 = or disjoint i64 %487, %488
  %490 = xor i64 %489, %486
  %491 = add i64 %464, %490
  %492 = getelementptr inbounds nuw i8, ptr %5, i32 59
  %493 = load i64, ptr %492, align 1, !noalias !70
  %494 = xor i64 %493, %402
  %495 = getelementptr inbounds nuw i8, ptr %5, i32 67
  %496 = load i64, ptr %495, align 1, !noalias !70
  %497 = xor i64 %496, %401
  %498 = and i64 %494, 4294967295
  %499 = and i64 %497, 4294967295
  %500 = mul nuw i64 %499, %498
  %501 = lshr i64 %494, 32
  %502 = mul nuw i64 %499, %501
  %503 = lshr i64 %497, 32
  %504 = mul nuw i64 %503, %498
  %505 = mul nuw i64 %503, %501
  %506 = lshr i64 %500, 32
  %507 = and i64 %502, 4294967295
  %508 = add nuw i64 %507, %504
  %509 = add nuw i64 %508, %506
  %510 = lshr i64 %502, 32
  %511 = lshr i64 %509, 32
  %512 = add nuw i64 %510, %505
  %513 = add nuw i64 %512, %511
  %514 = shl i64 %509, 32
  %515 = and i64 %500, 4294967295
  %516 = or disjoint i64 %514, %515
  %517 = xor i64 %516, %513
  %518 = add i64 %491, %517
  %519 = lshr i64 %518, 37
  %520 = xor i64 %519, %518
  %521 = mul i64 %520, 1609587929392839161
  %522 = lshr i64 %521, 32
  %523 = xor i64 %522, %521
  %524 = getelementptr inbounds nuw i8, ptr %5, i32 117
  %525 = mul i64 %410, -4417276706812531889
  %526 = xor i64 %525, -1
  %527 = load i64, ptr %524, align 1, !noalias !70
  %528 = xor i64 %527, %408
  %529 = getelementptr inbounds nuw i8, ptr %5, i32 125
  %530 = load i64, ptr %529, align 1, !noalias !70
  %531 = xor i64 %530, %407
  %532 = and i64 %528, 4294967295
  %533 = and i64 %531, 4294967295
  %534 = mul nuw i64 %533, %532
  %535 = lshr i64 %528, 32
  %536 = mul nuw i64 %533, %535
  %537 = lshr i64 %531, 32
  %538 = mul nuw i64 %537, %532
  %539 = mul nuw i64 %537, %535
  %540 = lshr i64 %534, 32
  %541 = and i64 %536, 4294967295
  %542 = add nuw i64 %541, %538
  %543 = add nuw i64 %542, %540
  %544 = lshr i64 %536, 32
  %545 = lshr i64 %543, 32
  %546 = add nuw i64 %544, %539
  %547 = add nuw i64 %546, %545
  %548 = shl i64 %543, 32
  %549 = and i64 %534, 4294967295
  %550 = or disjoint i64 %548, %549
  %551 = xor i64 %550, %547
  %552 = add i64 %551, %526
  %553 = getelementptr inbounds nuw i8, ptr %5, i32 133
  %554 = load i64, ptr %553, align 1, !noalias !70
  %555 = xor i64 %554, %406
  %556 = getelementptr inbounds nuw i8, ptr %5, i32 141
  %557 = load i64, ptr %556, align 1, !noalias !70
  %558 = xor i64 %557, %405
  %559 = and i64 %555, 4294967295
  %560 = and i64 %558, 4294967295
  %561 = mul nuw i64 %560, %559
  %562 = lshr i64 %555, 32
  %563 = mul nuw i64 %560, %562
  %564 = lshr i64 %558, 32
  %565 = mul nuw i64 %564, %559
  %566 = mul nuw i64 %564, %562
  %567 = lshr i64 %561, 32
  %568 = and i64 %563, 4294967295
  %569 = add nuw i64 %568, %565
  %570 = add nuw i64 %569, %567
  %571 = lshr i64 %563, 32
  %572 = lshr i64 %570, 32
  %573 = add nuw i64 %571, %566
  %574 = add nuw i64 %573, %572
  %575 = shl i64 %570, 32
  %576 = and i64 %561, 4294967295
  %577 = or disjoint i64 %575, %576
  %578 = xor i64 %577, %574
  %579 = add i64 %552, %578
  %580 = getelementptr inbounds nuw i8, ptr %5, i32 149
  %581 = load i64, ptr %580, align 1, !noalias !70
  %582 = xor i64 %581, %404
  %583 = getelementptr inbounds nuw i8, ptr %5, i32 157
  %584 = load i64, ptr %583, align 1, !noalias !70
  %585 = xor i64 %584, %403
  %586 = and i64 %582, 4294967295
  %587 = and i64 %585, 4294967295
  %588 = mul nuw i64 %587, %586
  %589 = lshr i64 %582, 32
  %590 = mul nuw i64 %587, %589
  %591 = lshr i64 %585, 32
  %592 = mul nuw i64 %591, %586
  %593 = mul nuw i64 %591, %589
  %594 = lshr i64 %588, 32
  %595 = and i64 %590, 4294967295
  %596 = add nuw i64 %595, %592
  %597 = add nuw i64 %596, %594
  %598 = lshr i64 %590, 32
  %599 = lshr i64 %597, 32
  %600 = add nuw i64 %598, %593
  %601 = add nuw i64 %600, %599
  %602 = shl i64 %597, 32
  %603 = and i64 %588, 4294967295
  %604 = or disjoint i64 %602, %603
  %605 = xor i64 %604, %601
  %606 = add i64 %579, %605
  %607 = getelementptr inbounds nuw i8, ptr %5, i32 165
  %608 = load i64, ptr %607, align 1, !noalias !70
  %609 = xor i64 %608, %402
  %610 = getelementptr inbounds nuw i8, ptr %5, i32 173
  %611 = load i64, ptr %610, align 1, !noalias !70
  %612 = xor i64 %611, %401
  %613 = and i64 %609, 4294967295
  %614 = and i64 %612, 4294967295
  %615 = mul nuw i64 %614, %613
  %616 = lshr i64 %609, 32
  %617 = mul nuw i64 %614, %616
  %618 = lshr i64 %612, 32
  %619 = mul nuw i64 %618, %613
  %620 = mul nuw i64 %618, %616
  %621 = lshr i64 %615, 32
  %622 = and i64 %617, 4294967295
  %623 = add nuw i64 %622, %619
  %624 = add nuw i64 %623, %621
  %625 = lshr i64 %617, 32
  %626 = lshr i64 %624, 32
  %627 = add nuw i64 %625, %620
  %628 = add nuw i64 %627, %626
  %629 = shl i64 %624, 32
  %630 = and i64 %615, 4294967295
  %631 = or disjoint i64 %629, %630
  %632 = xor i64 %631, %628
  %633 = add i64 %606, %632
  %634 = lshr i64 %633, 37
  %635 = xor i64 %634, %633
  %636 = mul i64 %635, 1609587929392839161
  %637 = lshr i64 %636, 32
  %638 = xor i64 %637, %636
  store i64 %523, ptr %0, align 8, !alias.scope !70
  %639 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %638, ptr %639, align 8, !alias.scope !70
  br label %640

640:                                              ; preds = %400, %57
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @XXH128(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %5 = icmp ult i32 %2, 17
  br i1 %5, label %6, label %148

6:                                                ; preds = %4
  %7 = icmp samesign ugt i32 %2, 8
  br i1 %7, label %8, label %66

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
  %18 = and i64 %17, 4294967295
  %19 = mul nuw i64 %18, 2246822535
  %20 = lshr i64 %17, 32
  %21 = mul nuw i64 %20, 2246822535
  %22 = mul nuw i64 %18, 2654435761
  %23 = mul nuw i64 %20, 2654435761
  %24 = lshr i64 %19, 32
  %25 = and i64 %21, 4294967295
  %26 = add nuw i64 %25, %22
  %27 = add nuw i64 %26, %24
  %28 = lshr i64 %21, 32
  %29 = lshr i64 %27, 32
  %30 = and i64 %27, 4294967295
  %31 = and i64 %19, 4294967295
  %32 = mul i64 %16, -7046029288634856825
  %33 = add i64 %23, %32
  %34 = add i64 %33, %28
  %35 = add i64 %34, %29
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %31
  %38 = mul nuw nsw i64 %37, 668265295
  %39 = mul nuw nsw i64 %30, 668265295
  %40 = mul nuw i64 %37, 3266489917
  %41 = mul nuw i64 %30, 3266489917
  %42 = lshr i64 %38, 32
  %43 = and i64 %39, 4294967295
  %44 = add nuw i64 %40, %43
  %45 = add nuw i64 %44, %42
  %46 = lshr i64 %39, 32
  %47 = lshr i64 %45, 32
  %48 = add nuw i64 %46, %41
  %49 = shl i64 %45, 32
  %50 = and i64 %38, 4294967295
  %51 = or disjoint i64 %49, %50
  %52 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %53 = mul i64 %35, -4417276706812531889
  %54 = add i64 %48, %53
  %55 = add i64 %54, %47
  %56 = lshr i64 %49, 37
  %57 = xor i64 %56, %51
  %58 = mul i64 %57, 1609587929392839161
  %59 = lshr i64 %58, 32
  %60 = xor i64 %59, %58
  store i64 %60, ptr %0, align 8, !alias.scope !76
  %61 = lshr i64 %55, 37
  %62 = xor i64 %61, %55
  %63 = mul i64 %62, 1609587929392839161
  %64 = lshr i64 %63, 32
  %65 = xor i64 %64, %63
  store i64 %65, ptr %52, align 8, !alias.scope !76
  br label %425

66:                                               ; preds = %6
  %67 = icmp samesign ugt i32 %2, 3
  br i1 %67, label %68, label %108

68:                                               ; preds = %66
  %69 = load i32, ptr %1, align 1, !noalias !73
  %70 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %71 = getelementptr inbounds i8, ptr %70, i32 -4
  %72 = load i32, ptr %71, align 1, !noalias !73
  %73 = zext i32 %69 to i64
  %74 = zext i32 %72 to i64
  %75 = shl nuw i64 %74, 32
  %76 = or disjoint i64 %75, %73
  %77 = tail call noundef i64 @llvm.bswap.i64(i64 %76)
  %78 = add i64 %3, -4734510112055689544
  %79 = xor i64 %76, %78
  %80 = sub i64 2066345149520216444, %3
  %81 = xor i64 %77, %80
  %82 = zext nneg i32 %2 to i64
  %83 = lshr i64 %79, 51
  %84 = xor i64 %83, %79
  %85 = mul i64 %84, 2654435761
  %86 = add i64 %85, %82
  %87 = lshr i64 %86, 47
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %81, 47
  %91 = xor i64 %90, %81
  %92 = mul i64 %91, -7046029288634856825
  %93 = sub i64 %92, %82
  %94 = lshr i64 %93, 43
  %95 = xor i64 %94, %93
  %96 = mul i64 %95, -8796714831421723037
  %97 = lshr i64 %89, 37
  %98 = xor i64 %97, %89
  %99 = mul i64 %98, 1609587929392839161
  %100 = lshr i64 %99, 32
  %101 = xor i64 %100, %99
  store i64 %101, ptr %0, align 8, !alias.scope !79
  %102 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %103 = lshr i64 %96, 37
  %104 = xor i64 %103, %96
  %105 = mul i64 %104, 1609587929392839161
  %106 = lshr i64 %105, 32
  %107 = xor i64 %106, %105
  store i64 %107, ptr %102, align 8, !alias.scope !79
  br label %425

108:                                              ; preds = %66
  %109 = icmp eq i32 %2, 0
  br i1 %109, label %147, label %110

110:                                              ; preds = %108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %111 = load i8, ptr %1, align 1, !noalias !85
  %112 = lshr i32 %2, 1
  %113 = getelementptr inbounds nuw i8, ptr %1, i32 %112
  %114 = load i8, ptr %113, align 1, !noalias !85
  %115 = getelementptr i8, ptr %1, i32 %2
  %116 = getelementptr i8, ptr %115, i32 -1
  %117 = load i8, ptr %116, align 1, !noalias !85
  %118 = zext i8 %111 to i32
  %119 = zext i8 %114 to i32
  %120 = shl nuw nsw i32 %119, 8
  %121 = or disjoint i32 %120, %118
  %122 = zext i8 %117 to i32
  %123 = shl nuw nsw i32 %122, 16
  %124 = or disjoint i32 %121, %123
  %125 = shl nuw nsw i32 %2, 24
  %126 = or disjoint i32 %124, %125
  %127 = tail call noundef i32 @llvm.bswap.i32(i32 %126)
  %128 = zext nneg i32 %126 to i64
  %129 = add i64 %3, 963444408
  %130 = xor i64 %129, %128
  %131 = zext i32 %127 to i64
  %132 = sub i64 3192628259, %3
  %133 = xor i64 %132, %131
  %134 = mul i64 %130, -7046029288634856825
  %135 = mul i64 %133, -4417276706812531889
  %136 = lshr i64 %134, 37
  %137 = xor i64 %136, %134
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  store i64 %140, ptr %0, align 8, !alias.scope !85
  %141 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %142 = lshr i64 %135, 37
  %143 = xor i64 %142, %135
  %144 = mul i64 %143, 1609587929392839161
  %145 = lshr i64 %144, 32
  %146 = xor i64 %145, %144
  store i64 %146, ptr %141, align 8, !alias.scope !85
  br label %425

147:                                              ; preds = %108
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !86
  br label %425

148:                                              ; preds = %4
  %149 = icmp ult i32 %2, 129
  br i1 %149, label %150, label %421

150:                                              ; preds = %148
  %151 = zext nneg i32 %2 to i64
  %152 = mul i64 %151, -7046029288634856825
  %153 = icmp samesign ugt i32 %2, 32
  br i1 %153, label %154, label %341

154:                                              ; preds = %150
  %155 = icmp samesign ugt i32 %2, 64
  br i1 %155, label %156, label %279

156:                                              ; preds = %154
  %157 = icmp samesign ugt i32 %2, 96
  br i1 %157, label %158, label %217

158:                                              ; preds = %156
  %159 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %160 = load i64, ptr %159, align 1, !noalias !73
  %161 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %162 = load i64, ptr %161, align 1, !noalias !73
  %163 = add i64 %3, 4554437623014685352
  %164 = xor i64 %160, %163
  %165 = sub i64 2111919702937427193, %3
  %166 = xor i64 %162, %165
  %167 = and i64 %164, 4294967295
  %168 = and i64 %166, 4294967295
  %169 = mul nuw i64 %168, %167
  %170 = lshr i64 %164, 32
  %171 = mul nuw i64 %168, %170
  %172 = lshr i64 %166, 32
  %173 = mul nuw i64 %172, %167
  %174 = mul nuw i64 %172, %170
  %175 = lshr i64 %169, 32
  %176 = and i64 %171, 4294967295
  %177 = add nuw i64 %176, %173
  %178 = add nuw i64 %177, %175
  %179 = lshr i64 %171, 32
  %180 = lshr i64 %178, 32
  %181 = add nuw i64 %179, %174
  %182 = add nuw i64 %181, %180
  %183 = shl i64 %178, 32
  %184 = and i64 %169, 4294967295
  %185 = or disjoint i64 %183, %184
  %186 = xor i64 %185, %182
  %187 = add i64 %186, %152
  %188 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %189 = getelementptr inbounds i8, ptr %188, i32 -64
  %190 = load i64, ptr %189, align 1, !noalias !73
  %191 = getelementptr inbounds i8, ptr %188, i32 -56
  %192 = load i64, ptr %191, align 1, !noalias !73
  %193 = add i64 %3, 3556072174620004746
  %194 = xor i64 %190, %193
  %195 = sub i64 7238261902898274248, %3
  %196 = xor i64 %192, %195
  %197 = and i64 %194, 4294967295
  %198 = and i64 %196, 4294967295
  %199 = mul nuw i64 %198, %197
  %200 = lshr i64 %194, 32
  %201 = mul nuw i64 %198, %200
  %202 = lshr i64 %196, 32
  %203 = mul nuw i64 %202, %197
  %204 = mul nuw i64 %202, %200
  %205 = lshr i64 %199, 32
  %206 = and i64 %201, 4294967295
  %207 = add nuw i64 %206, %203
  %208 = add nuw i64 %207, %205
  %209 = lshr i64 %201, 32
  %210 = lshr i64 %208, 32
  %211 = add nuw i64 %209, %204
  %212 = add nuw i64 %211, %210
  %213 = shl i64 %208, 32
  %214 = and i64 %199, 4294967295
  %215 = or disjoint i64 %213, %214
  %216 = xor i64 %215, %212
  br label %217

217:                                              ; preds = %158, %156
  %218 = phi i64 [ %216, %158 ], [ 0, %156 ]
  %219 = phi i64 [ %187, %158 ], [ %152, %156 ]
  %220 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %221 = load i64, ptr %220, align 1, !noalias !73
  %222 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %223 = load i64, ptr %222, align 1, !noalias !73
  %224 = add i64 %3, -3818837453329782724
  %225 = xor i64 %221, %224
  %226 = sub i64 -6688317018830679928, %3
  %227 = xor i64 %223, %226
  %228 = and i64 %225, 4294967295
  %229 = and i64 %227, 4294967295
  %230 = mul nuw i64 %229, %228
  %231 = lshr i64 %225, 32
  %232 = mul nuw i64 %229, %231
  %233 = lshr i64 %227, 32
  %234 = mul nuw i64 %233, %228
  %235 = mul nuw i64 %233, %231
  %236 = lshr i64 %230, 32
  %237 = and i64 %232, 4294967295
  %238 = add nuw i64 %237, %234
  %239 = add nuw i64 %238, %236
  %240 = lshr i64 %232, 32
  %241 = lshr i64 %239, 32
  %242 = add nuw i64 %240, %235
  %243 = add nuw i64 %242, %241
  %244 = shl i64 %239, 32
  %245 = and i64 %230, 4294967295
  %246 = or disjoint i64 %244, %245
  %247 = xor i64 %246, %243
  %248 = add i64 %247, %219
  %249 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %250 = getelementptr inbounds i8, ptr %249, i32 -48
  %251 = load i64, ptr %250, align 1, !noalias !73
  %252 = getelementptr inbounds i8, ptr %249, i32 -40
  %253 = load i64, ptr %252, align 1, !noalias !73
  %254 = add i64 %3, 5690594596133299313
  %255 = xor i64 %251, %254
  %256 = sub i64 -2833645246901970632, %3
  %257 = xor i64 %253, %256
  %258 = and i64 %255, 4294967295
  %259 = and i64 %257, 4294967295
  %260 = mul nuw i64 %259, %258
  %261 = lshr i64 %255, 32
  %262 = mul nuw i64 %259, %261
  %263 = lshr i64 %257, 32
  %264 = mul nuw i64 %263, %258
  %265 = mul nuw i64 %263, %261
  %266 = lshr i64 %260, 32
  %267 = and i64 %262, 4294967295
  %268 = add nuw i64 %267, %264
  %269 = add nuw i64 %268, %266
  %270 = lshr i64 %262, 32
  %271 = lshr i64 %269, 32
  %272 = add nuw i64 %270, %265
  %273 = add nuw i64 %272, %271
  %274 = shl i64 %269, 32
  %275 = and i64 %260, 4294967295
  %276 = or disjoint i64 %274, %275
  %277 = xor i64 %276, %273
  %278 = add i64 %277, %218
  br label %279

279:                                              ; preds = %217, %154
  %280 = phi i64 [ %278, %217 ], [ 0, %154 ]
  %281 = phi i64 [ %248, %217 ], [ %152, %154 ]
  %282 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %283 = load i64, ptr %282, align 1, !noalias !73
  %284 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %285 = load i64, ptr %284, align 1, !noalias !73
  %286 = add i64 %3, 8711581037947681227
  %287 = xor i64 %283, %286
  %288 = sub i64 2410270004345854594, %3
  %289 = xor i64 %285, %288
  %290 = and i64 %287, 4294967295
  %291 = and i64 %289, 4294967295
  %292 = mul nuw i64 %291, %290
  %293 = lshr i64 %287, 32
  %294 = mul nuw i64 %291, %293
  %295 = lshr i64 %289, 32
  %296 = mul nuw i64 %295, %290
  %297 = mul nuw i64 %295, %293
  %298 = lshr i64 %292, 32
  %299 = and i64 %294, 4294967295
  %300 = add nuw i64 %299, %296
  %301 = add nuw i64 %300, %298
  %302 = lshr i64 %294, 32
  %303 = lshr i64 %301, 32
  %304 = add nuw i64 %302, %297
  %305 = add nuw i64 %304, %303
  %306 = shl i64 %301, 32
  %307 = and i64 %292, 4294967295
  %308 = or disjoint i64 %306, %307
  %309 = xor i64 %308, %305
  %310 = add i64 %309, %281
  %311 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %312 = getelementptr inbounds i8, ptr %311, i32 -32
  %313 = load i64, ptr %312, align 1, !noalias !73
  %314 = getelementptr inbounds i8, ptr %311, i32 -24
  %315 = load i64, ptr %314, align 1, !noalias !73
  %316 = add i64 %3, -8204357891075471176
  %317 = xor i64 %313, %316
  %318 = sub i64 5487137525590930912, %3
  %319 = xor i64 %315, %318
  %320 = and i64 %317, 4294967295
  %321 = and i64 %319, 4294967295
  %322 = mul nuw i64 %321, %320
  %323 = lshr i64 %317, 32
  %324 = mul nuw i64 %321, %323
  %325 = lshr i64 %319, 32
  %326 = mul nuw i64 %325, %320
  %327 = mul nuw i64 %325, %323
  %328 = lshr i64 %322, 32
  %329 = and i64 %324, 4294967295
  %330 = add nuw i64 %329, %326
  %331 = add nuw i64 %330, %328
  %332 = lshr i64 %324, 32
  %333 = lshr i64 %331, 32
  %334 = add nuw i64 %332, %327
  %335 = add nuw i64 %334, %333
  %336 = shl i64 %331, 32
  %337 = and i64 %322, 4294967295
  %338 = or disjoint i64 %336, %337
  %339 = xor i64 %338, %335
  %340 = add i64 %339, %280
  br label %341

341:                                              ; preds = %279, %150
  %342 = phi i64 [ %340, %279 ], [ 0, %150 ]
  %343 = phi i64 [ %310, %279 ], [ %152, %150 ]
  %344 = load i64, ptr %1, align 1, !noalias !73
  %345 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %346 = load i64, ptr %345, align 1, !noalias !73
  %347 = add i64 %3, -4734510112055689544
  %348 = xor i64 %344, %347
  %349 = sub i64 2066345149520216444, %3
  %350 = xor i64 %346, %349
  %351 = and i64 %348, 4294967295
  %352 = and i64 %350, 4294967295
  %353 = mul nuw i64 %352, %351
  %354 = lshr i64 %348, 32
  %355 = mul nuw i64 %352, %354
  %356 = lshr i64 %350, 32
  %357 = mul nuw i64 %356, %351
  %358 = mul nuw i64 %356, %354
  %359 = lshr i64 %353, 32
  %360 = and i64 %355, 4294967295
  %361 = add nuw i64 %360, %357
  %362 = add nuw i64 %361, %359
  %363 = lshr i64 %355, 32
  %364 = lshr i64 %362, 32
  %365 = add nuw i64 %363, %358
  %366 = add nuw i64 %365, %364
  %367 = shl i64 %362, 32
  %368 = and i64 %353, 4294967295
  %369 = or disjoint i64 %367, %368
  %370 = xor i64 %369, %366
  %371 = add i64 %370, %343
  %372 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %373 = getelementptr inbounds i8, ptr %372, i32 -16
  %374 = load i64, ptr %373, align 1, !noalias !73
  %375 = getelementptr inbounds i8, ptr %372, i32 -8
  %376 = load i64, ptr %375, align 1, !noalias !73
  %377 = add i64 %3, -2623469361688619810
  %378 = xor i64 %374, %377
  %379 = sub i64 2262974939099578482, %3
  %380 = xor i64 %376, %379
  %381 = and i64 %378, 4294967295
  %382 = and i64 %380, 4294967295
  %383 = mul nuw i64 %382, %381
  %384 = lshr i64 %378, 32
  %385 = mul nuw i64 %382, %384
  %386 = lshr i64 %380, 32
  %387 = mul nuw i64 %386, %381
  %388 = mul nuw i64 %386, %384
  %389 = lshr i64 %383, 32
  %390 = and i64 %385, 4294967295
  %391 = add nuw i64 %390, %387
  %392 = add nuw i64 %391, %389
  %393 = lshr i64 %385, 32
  %394 = lshr i64 %392, 32
  %395 = add nuw i64 %393, %388
  %396 = add nuw i64 %395, %394
  %397 = shl i64 %392, 32
  %398 = and i64 %383, 4294967295
  %399 = or disjoint i64 %397, %398
  %400 = xor i64 %399, %396
  %401 = add i64 %400, %342
  %402 = add i64 %401, %371
  %403 = mul i64 %371, -7046029288634856825
  %404 = mul i64 %401, -8796714831421723037
  %405 = sub i64 %151, %3
  %406 = mul i64 %405, -4417276706812531889
  %407 = add i64 %403, %406
  %408 = add i64 %407, %404
  %409 = lshr i64 %402, 37
  %410 = xor i64 %409, %402
  %411 = mul i64 %410, 1609587929392839161
  %412 = lshr i64 %411, 32
  %413 = xor i64 %412, %411
  store i64 %413, ptr %0, align 8, !alias.scope !89
  %414 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %415 = lshr i64 %408, 37
  %416 = xor i64 %415, %408
  %417 = mul i64 %416, 1609587929392839161
  %418 = lshr i64 %417, 32
  %419 = xor i64 %418, %417
  %420 = sub i64 0, %419
  store i64 %420, ptr %414, align 8, !alias.scope !89
  br label %425

421:                                              ; preds = %148
  %422 = icmp ult i32 %2, 241
  br i1 %422, label %423, label %424

423:                                              ; preds = %421
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef nonnull @kSecret, i64 noundef %3)
  br label %425

424:                                              ; preds = %421
  tail call fastcc void @XXH3_hashLong_128b_withSeed(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef readonly %1, i32 noundef %2, i64 noundef %3)
  br label %425

425:                                              ; preds = %8, %68, %110, %147, %341, %423, %424
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
  br i1 %6, label %7, label %820

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
  %594 = and i64 %590, 4294967295
  %595 = and i64 %593, 4294967295
  %596 = mul nuw i64 %595, %594
  %597 = lshr i64 %590, 32
  %598 = mul nuw i64 %595, %597
  %599 = lshr i64 %593, 32
  %600 = mul nuw i64 %599, %594
  %601 = mul nuw i64 %599, %597
  %602 = lshr i64 %596, 32
  %603 = and i64 %598, 4294967295
  %604 = add nuw i64 %603, %600
  %605 = add nuw i64 %604, %602
  %606 = lshr i64 %598, 32
  %607 = lshr i64 %605, 32
  %608 = add nuw i64 %606, %601
  %609 = add nuw i64 %608, %607
  %610 = shl i64 %605, 32
  %611 = and i64 %596, 4294967295
  %612 = or disjoint i64 %610, %611
  %613 = xor i64 %612, %609
  %614 = add i64 %613, %588
  %615 = getelementptr inbounds nuw i8, ptr %578, i32 27
  %616 = load i64, ptr %615, align 1
  %617 = xor i64 %616, %584
  %618 = getelementptr inbounds nuw i8, ptr %578, i32 35
  %619 = load i64, ptr %618, align 1
  %620 = xor i64 %619, %583
  %621 = and i64 %617, 4294967295
  %622 = and i64 %620, 4294967295
  %623 = mul nuw i64 %622, %621
  %624 = lshr i64 %617, 32
  %625 = mul nuw i64 %622, %624
  %626 = lshr i64 %620, 32
  %627 = mul nuw i64 %626, %621
  %628 = mul nuw i64 %626, %624
  %629 = lshr i64 %623, 32
  %630 = and i64 %625, 4294967295
  %631 = add nuw i64 %630, %627
  %632 = add nuw i64 %631, %629
  %633 = lshr i64 %625, 32
  %634 = lshr i64 %632, 32
  %635 = add nuw i64 %633, %628
  %636 = add nuw i64 %635, %634
  %637 = shl i64 %632, 32
  %638 = and i64 %623, 4294967295
  %639 = or disjoint i64 %637, %638
  %640 = xor i64 %639, %636
  %641 = add i64 %614, %640
  %642 = getelementptr inbounds nuw i8, ptr %578, i32 43
  %643 = load i64, ptr %642, align 1
  %644 = xor i64 %643, %582
  %645 = getelementptr inbounds nuw i8, ptr %578, i32 51
  %646 = load i64, ptr %645, align 1
  %647 = xor i64 %646, %581
  %648 = and i64 %644, 4294967295
  %649 = and i64 %647, 4294967295
  %650 = mul nuw i64 %649, %648
  %651 = lshr i64 %644, 32
  %652 = mul nuw i64 %649, %651
  %653 = lshr i64 %647, 32
  %654 = mul nuw i64 %653, %648
  %655 = mul nuw i64 %653, %651
  %656 = lshr i64 %650, 32
  %657 = and i64 %652, 4294967295
  %658 = add nuw i64 %657, %654
  %659 = add nuw i64 %658, %656
  %660 = lshr i64 %652, 32
  %661 = lshr i64 %659, 32
  %662 = add nuw i64 %660, %655
  %663 = add nuw i64 %662, %661
  %664 = shl i64 %659, 32
  %665 = and i64 %650, 4294967295
  %666 = or disjoint i64 %664, %665
  %667 = xor i64 %666, %663
  %668 = add i64 %641, %667
  %669 = getelementptr inbounds nuw i8, ptr %578, i32 59
  %670 = load i64, ptr %669, align 1
  %671 = xor i64 %670, %580
  %672 = getelementptr inbounds nuw i8, ptr %578, i32 67
  %673 = load i64, ptr %672, align 1
  %674 = xor i64 %673, %579
  %675 = and i64 %671, 4294967295
  %676 = and i64 %674, 4294967295
  %677 = mul nuw i64 %676, %675
  %678 = lshr i64 %671, 32
  %679 = mul nuw i64 %676, %678
  %680 = lshr i64 %674, 32
  %681 = mul nuw i64 %680, %675
  %682 = mul nuw i64 %680, %678
  %683 = lshr i64 %677, 32
  %684 = and i64 %679, 4294967295
  %685 = add nuw i64 %684, %681
  %686 = add nuw i64 %685, %683
  %687 = lshr i64 %679, 32
  %688 = lshr i64 %686, 32
  %689 = add nuw i64 %687, %682
  %690 = add nuw i64 %689, %688
  %691 = shl i64 %686, 32
  %692 = and i64 %677, 4294967295
  %693 = or disjoint i64 %691, %692
  %694 = xor i64 %693, %690
  %695 = add i64 %668, %694
  %696 = lshr i64 %695, 37
  %697 = xor i64 %696, %695
  %698 = mul i64 %697, 1609587929392839161
  %699 = lshr i64 %698, 32
  %700 = xor i64 %699, %698
  %701 = getelementptr inbounds nuw i8, ptr %1, i32 524
  %702 = load i32, ptr %701, align 4
  %703 = getelementptr inbounds nuw i8, ptr %578, i32 %702
  %704 = getelementptr inbounds i8, ptr %703, i32 -11
  %705 = mul i64 %5, -4417276706812531889
  %706 = xor i64 %705, -1
  %707 = load i64, ptr %704, align 1
  %708 = xor i64 %707, %586
  %709 = getelementptr inbounds i8, ptr %703, i32 -3
  %710 = load i64, ptr %709, align 1
  %711 = xor i64 %710, %585
  %712 = and i64 %708, 4294967295
  %713 = and i64 %711, 4294967295
  %714 = mul nuw i64 %713, %712
  %715 = lshr i64 %708, 32
  %716 = mul nuw i64 %713, %715
  %717 = lshr i64 %711, 32
  %718 = mul nuw i64 %717, %712
  %719 = mul nuw i64 %717, %715
  %720 = lshr i64 %714, 32
  %721 = and i64 %716, 4294967295
  %722 = add nuw i64 %721, %718
  %723 = add nuw i64 %722, %720
  %724 = lshr i64 %716, 32
  %725 = lshr i64 %723, 32
  %726 = add nuw i64 %724, %719
  %727 = add nuw i64 %726, %725
  %728 = shl i64 %723, 32
  %729 = and i64 %714, 4294967295
  %730 = or disjoint i64 %728, %729
  %731 = xor i64 %730, %727
  %732 = add i64 %731, %706
  %733 = getelementptr inbounds nuw i8, ptr %703, i32 5
  %734 = load i64, ptr %733, align 1
  %735 = xor i64 %734, %584
  %736 = getelementptr inbounds nuw i8, ptr %703, i32 13
  %737 = load i64, ptr %736, align 1
  %738 = xor i64 %737, %583
  %739 = and i64 %735, 4294967295
  %740 = and i64 %738, 4294967295
  %741 = mul nuw i64 %740, %739
  %742 = lshr i64 %735, 32
  %743 = mul nuw i64 %740, %742
  %744 = lshr i64 %738, 32
  %745 = mul nuw i64 %744, %739
  %746 = mul nuw i64 %744, %742
  %747 = lshr i64 %741, 32
  %748 = and i64 %743, 4294967295
  %749 = add nuw i64 %748, %745
  %750 = add nuw i64 %749, %747
  %751 = lshr i64 %743, 32
  %752 = lshr i64 %750, 32
  %753 = add nuw i64 %751, %746
  %754 = add nuw i64 %753, %752
  %755 = shl i64 %750, 32
  %756 = and i64 %741, 4294967295
  %757 = or disjoint i64 %755, %756
  %758 = xor i64 %757, %754
  %759 = add i64 %732, %758
  %760 = getelementptr inbounds nuw i8, ptr %703, i32 21
  %761 = load i64, ptr %760, align 1
  %762 = xor i64 %761, %582
  %763 = getelementptr inbounds nuw i8, ptr %703, i32 29
  %764 = load i64, ptr %763, align 1
  %765 = xor i64 %764, %581
  %766 = and i64 %762, 4294967295
  %767 = and i64 %765, 4294967295
  %768 = mul nuw i64 %767, %766
  %769 = lshr i64 %762, 32
  %770 = mul nuw i64 %767, %769
  %771 = lshr i64 %765, 32
  %772 = mul nuw i64 %771, %766
  %773 = mul nuw i64 %771, %769
  %774 = lshr i64 %768, 32
  %775 = and i64 %770, 4294967295
  %776 = add nuw i64 %775, %772
  %777 = add nuw i64 %776, %774
  %778 = lshr i64 %770, 32
  %779 = lshr i64 %777, 32
  %780 = add nuw i64 %778, %773
  %781 = add nuw i64 %780, %779
  %782 = shl i64 %777, 32
  %783 = and i64 %768, 4294967295
  %784 = or disjoint i64 %782, %783
  %785 = xor i64 %784, %781
  %786 = add i64 %759, %785
  %787 = getelementptr inbounds nuw i8, ptr %703, i32 37
  %788 = load i64, ptr %787, align 1
  %789 = xor i64 %788, %580
  %790 = getelementptr inbounds nuw i8, ptr %703, i32 45
  %791 = load i64, ptr %790, align 1
  %792 = xor i64 %791, %579
  %793 = and i64 %789, 4294967295
  %794 = and i64 %792, 4294967295
  %795 = mul nuw i64 %794, %793
  %796 = lshr i64 %789, 32
  %797 = mul nuw i64 %794, %796
  %798 = lshr i64 %792, 32
  %799 = mul nuw i64 %798, %793
  %800 = mul nuw i64 %798, %796
  %801 = lshr i64 %795, 32
  %802 = and i64 %797, 4294967295
  %803 = add nuw i64 %802, %799
  %804 = add nuw i64 %803, %801
  %805 = lshr i64 %797, 32
  %806 = lshr i64 %804, 32
  %807 = add nuw i64 %805, %800
  %808 = add nuw i64 %807, %806
  %809 = shl i64 %804, 32
  %810 = and i64 %795, 4294967295
  %811 = or disjoint i64 %809, %810
  %812 = xor i64 %811, %808
  %813 = add i64 %786, %812
  %814 = lshr i64 %813, 37
  %815 = xor i64 %814, %813
  %816 = mul i64 %815, 1609587929392839161
  %817 = lshr i64 %816, 32
  %818 = xor i64 %817, %816
  store i64 %700, ptr %0, align 8
  %819 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %818, ptr %819, align 8
  br label %1677

820:                                              ; preds = %2
  %821 = getelementptr inbounds nuw i8, ptr %1, i32 544
  %822 = load i64, ptr %821, align 32
  %823 = icmp eq i64 %822, 0
  %824 = getelementptr inbounds nuw i8, ptr %1, i32 256
  %825 = trunc nuw nsw i64 %5 to i32
  br i1 %823, label %1242, label %826

826:                                              ; preds = %820
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %827 = icmp samesign ult i32 %825, 17
  br i1 %827, label %828, label %969

828:                                              ; preds = %826
  %829 = icmp samesign ugt i32 %825, 8
  br i1 %829, label %830, label %888

830:                                              ; preds = %828
  %831 = load i64, ptr %824, align 1, !noalias !92
  %832 = add i64 %822, -4734510112055689544
  %833 = xor i64 %831, %832
  %834 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %835 = getelementptr inbounds i8, ptr %834, i32 -8
  %836 = load i64, ptr %835, align 1, !noalias !92
  %837 = sub i64 2066345149520216444, %822
  %838 = xor i64 %836, %837
  %839 = xor i64 %833, %838
  %840 = and i64 %839, 4294967295
  %841 = mul nuw i64 %840, 2246822535
  %842 = lshr i64 %839, 32
  %843 = mul nuw i64 %842, 2246822535
  %844 = mul nuw i64 %840, 2654435761
  %845 = mul nuw i64 %842, 2654435761
  %846 = lshr i64 %841, 32
  %847 = and i64 %843, 4294967295
  %848 = add nuw i64 %847, %844
  %849 = add nuw i64 %848, %846
  %850 = lshr i64 %843, 32
  %851 = lshr i64 %849, 32
  %852 = and i64 %849, 4294967295
  %853 = and i64 %841, 4294967295
  %854 = mul i64 %838, -7046029288634856825
  %855 = add i64 %845, %854
  %856 = add i64 %855, %850
  %857 = add i64 %856, %851
  %858 = lshr i64 %857, 32
  %859 = xor i64 %858, %853
  %860 = mul nuw nsw i64 %859, 668265295
  %861 = mul nuw nsw i64 %852, 668265295
  %862 = mul nuw i64 %859, 3266489917
  %863 = mul nuw i64 %852, 3266489917
  %864 = lshr i64 %860, 32
  %865 = and i64 %861, 4294967295
  %866 = add nuw i64 %862, %865
  %867 = add nuw i64 %866, %864
  %868 = lshr i64 %861, 32
  %869 = lshr i64 %867, 32
  %870 = add nuw i64 %868, %863
  %871 = shl i64 %867, 32
  %872 = and i64 %860, 4294967295
  %873 = or disjoint i64 %871, %872
  %874 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %875 = mul i64 %857, -4417276706812531889
  %876 = add i64 %870, %875
  %877 = add i64 %876, %869
  %878 = lshr i64 %871, 37
  %879 = xor i64 %878, %873
  %880 = mul i64 %879, 1609587929392839161
  %881 = lshr i64 %880, 32
  %882 = xor i64 %881, %880
  store i64 %882, ptr %0, align 8, !alias.scope !95
  %883 = lshr i64 %877, 37
  %884 = xor i64 %883, %877
  %885 = mul i64 %884, 1609587929392839161
  %886 = lshr i64 %885, 32
  %887 = xor i64 %886, %885
  store i64 %887, ptr %874, align 8, !alias.scope !95
  br label %1677

888:                                              ; preds = %828
  %889 = icmp samesign ugt i32 %825, 3
  br i1 %889, label %890, label %929

890:                                              ; preds = %888
  %891 = load i32, ptr %824, align 1, !noalias !92
  %892 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %893 = getelementptr inbounds i8, ptr %892, i32 -4
  %894 = load i32, ptr %893, align 1, !noalias !92
  %895 = zext i32 %891 to i64
  %896 = zext i32 %894 to i64
  %897 = shl nuw i64 %896, 32
  %898 = or disjoint i64 %897, %895
  %899 = tail call noundef i64 @llvm.bswap.i64(i64 %898)
  %900 = add i64 %822, -4734510112055689544
  %901 = xor i64 %898, %900
  %902 = sub i64 2066345149520216444, %822
  %903 = xor i64 %899, %902
  %904 = lshr i64 %901, 51
  %905 = xor i64 %904, %901
  %906 = mul i64 %905, 2654435761
  %907 = add i64 %906, %5
  %908 = lshr i64 %907, 47
  %909 = xor i64 %908, %907
  %910 = mul i64 %909, -4417276706812531889
  %911 = lshr i64 %903, 47
  %912 = xor i64 %911, %903
  %913 = mul i64 %912, -7046029288634856825
  %914 = sub i64 %913, %5
  %915 = lshr i64 %914, 43
  %916 = xor i64 %915, %914
  %917 = mul i64 %916, -8796714831421723037
  %918 = lshr i64 %910, 37
  %919 = xor i64 %918, %910
  %920 = mul i64 %919, 1609587929392839161
  %921 = lshr i64 %920, 32
  %922 = xor i64 %921, %920
  store i64 %922, ptr %0, align 8, !alias.scope !98
  %923 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %924 = lshr i64 %917, 37
  %925 = xor i64 %924, %917
  %926 = mul i64 %925, 1609587929392839161
  %927 = lshr i64 %926, 32
  %928 = xor i64 %927, %926
  store i64 %928, ptr %923, align 8, !alias.scope !98
  br label %1677

929:                                              ; preds = %888
  %930 = icmp eq i32 %825, 0
  br i1 %930, label %968, label %931

931:                                              ; preds = %929
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %932 = load i8, ptr %824, align 1, !noalias !104
  %933 = lshr i32 %825, 1
  %934 = getelementptr inbounds nuw i8, ptr %824, i32 %933
  %935 = load i8, ptr %934, align 1, !noalias !104
  %936 = getelementptr i8, ptr %824, i32 %825
  %937 = getelementptr i8, ptr %936, i32 -1
  %938 = load i8, ptr %937, align 1, !noalias !104
  %939 = zext i8 %932 to i32
  %940 = zext i8 %935 to i32
  %941 = shl nuw nsw i32 %940, 8
  %942 = or disjoint i32 %941, %939
  %943 = zext i8 %938 to i32
  %944 = shl nuw nsw i32 %943, 16
  %945 = or disjoint i32 %942, %944
  %946 = shl nuw nsw i32 %825, 24
  %947 = or disjoint i32 %945, %946
  %948 = tail call noundef i32 @llvm.bswap.i32(i32 %947)
  %949 = zext nneg i32 %947 to i64
  %950 = add i64 %822, 963444408
  %951 = xor i64 %950, %949
  %952 = zext i32 %948 to i64
  %953 = sub i64 3192628259, %822
  %954 = xor i64 %953, %952
  %955 = mul i64 %951, -7046029288634856825
  %956 = mul i64 %954, -4417276706812531889
  %957 = lshr i64 %955, 37
  %958 = xor i64 %957, %955
  %959 = mul i64 %958, 1609587929392839161
  %960 = lshr i64 %959, 32
  %961 = xor i64 %960, %959
  store i64 %961, ptr %0, align 8, !alias.scope !104
  %962 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %963 = lshr i64 %956, 37
  %964 = xor i64 %963, %956
  %965 = mul i64 %964, 1609587929392839161
  %966 = lshr i64 %965, 32
  %967 = xor i64 %966, %965
  store i64 %967, ptr %962, align 8, !alias.scope !104
  br label %1677

968:                                              ; preds = %929
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !105
  br label %1677

969:                                              ; preds = %826
  %970 = icmp samesign ult i32 %825, 129
  br i1 %970, label %971, label %1241

971:                                              ; preds = %969
  %972 = mul i64 %5, -7046029288634856825
  %973 = icmp samesign ugt i32 %825, 32
  br i1 %973, label %974, label %1161

974:                                              ; preds = %971
  %975 = icmp samesign ugt i32 %825, 64
  br i1 %975, label %976, label %1099

976:                                              ; preds = %974
  %977 = icmp samesign ugt i32 %825, 96
  br i1 %977, label %978, label %1037

978:                                              ; preds = %976
  %979 = getelementptr inbounds nuw i8, ptr %1, i32 304
  %980 = load i64, ptr %979, align 1, !noalias !92
  %981 = getelementptr inbounds nuw i8, ptr %1, i32 312
  %982 = load i64, ptr %981, align 1, !noalias !92
  %983 = add i64 %822, 4554437623014685352
  %984 = xor i64 %980, %983
  %985 = sub i64 2111919702937427193, %822
  %986 = xor i64 %982, %985
  %987 = and i64 %984, 4294967295
  %988 = and i64 %986, 4294967295
  %989 = mul nuw i64 %988, %987
  %990 = lshr i64 %984, 32
  %991 = mul nuw i64 %988, %990
  %992 = lshr i64 %986, 32
  %993 = mul nuw i64 %992, %987
  %994 = mul nuw i64 %992, %990
  %995 = lshr i64 %989, 32
  %996 = and i64 %991, 4294967295
  %997 = add nuw i64 %996, %993
  %998 = add nuw i64 %997, %995
  %999 = lshr i64 %991, 32
  %1000 = lshr i64 %998, 32
  %1001 = add nuw i64 %999, %994
  %1002 = add nuw i64 %1001, %1000
  %1003 = shl i64 %998, 32
  %1004 = and i64 %989, 4294967295
  %1005 = or disjoint i64 %1003, %1004
  %1006 = xor i64 %1005, %1002
  %1007 = add i64 %1006, %972
  %1008 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %1009 = getelementptr inbounds i8, ptr %1008, i32 -64
  %1010 = load i64, ptr %1009, align 1, !noalias !92
  %1011 = getelementptr inbounds i8, ptr %1008, i32 -56
  %1012 = load i64, ptr %1011, align 1, !noalias !92
  %1013 = add i64 %822, 3556072174620004746
  %1014 = xor i64 %1010, %1013
  %1015 = sub i64 7238261902898274248, %822
  %1016 = xor i64 %1012, %1015
  %1017 = and i64 %1014, 4294967295
  %1018 = and i64 %1016, 4294967295
  %1019 = mul nuw i64 %1018, %1017
  %1020 = lshr i64 %1014, 32
  %1021 = mul nuw i64 %1018, %1020
  %1022 = lshr i64 %1016, 32
  %1023 = mul nuw i64 %1022, %1017
  %1024 = mul nuw i64 %1022, %1020
  %1025 = lshr i64 %1019, 32
  %1026 = and i64 %1021, 4294967295
  %1027 = add nuw i64 %1026, %1023
  %1028 = add nuw i64 %1027, %1025
  %1029 = lshr i64 %1021, 32
  %1030 = lshr i64 %1028, 32
  %1031 = add nuw i64 %1029, %1024
  %1032 = add nuw i64 %1031, %1030
  %1033 = shl i64 %1028, 32
  %1034 = and i64 %1019, 4294967295
  %1035 = or disjoint i64 %1033, %1034
  %1036 = xor i64 %1035, %1032
  br label %1037

1037:                                             ; preds = %978, %976
  %1038 = phi i64 [ %1036, %978 ], [ 0, %976 ]
  %1039 = phi i64 [ %1007, %978 ], [ %972, %976 ]
  %1040 = getelementptr inbounds nuw i8, ptr %1, i32 288
  %1041 = load i64, ptr %1040, align 1, !noalias !92
  %1042 = getelementptr inbounds nuw i8, ptr %1, i32 296
  %1043 = load i64, ptr %1042, align 1, !noalias !92
  %1044 = add i64 %822, -3818837453329782724
  %1045 = xor i64 %1041, %1044
  %1046 = sub i64 -6688317018830679928, %822
  %1047 = xor i64 %1043, %1046
  %1048 = and i64 %1045, 4294967295
  %1049 = and i64 %1047, 4294967295
  %1050 = mul nuw i64 %1049, %1048
  %1051 = lshr i64 %1045, 32
  %1052 = mul nuw i64 %1049, %1051
  %1053 = lshr i64 %1047, 32
  %1054 = mul nuw i64 %1053, %1048
  %1055 = mul nuw i64 %1053, %1051
  %1056 = lshr i64 %1050, 32
  %1057 = and i64 %1052, 4294967295
  %1058 = add nuw i64 %1057, %1054
  %1059 = add nuw i64 %1058, %1056
  %1060 = lshr i64 %1052, 32
  %1061 = lshr i64 %1059, 32
  %1062 = add nuw i64 %1060, %1055
  %1063 = add nuw i64 %1062, %1061
  %1064 = shl i64 %1059, 32
  %1065 = and i64 %1050, 4294967295
  %1066 = or disjoint i64 %1064, %1065
  %1067 = xor i64 %1066, %1063
  %1068 = add i64 %1067, %1039
  %1069 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %1070 = getelementptr inbounds i8, ptr %1069, i32 -48
  %1071 = load i64, ptr %1070, align 1, !noalias !92
  %1072 = getelementptr inbounds i8, ptr %1069, i32 -40
  %1073 = load i64, ptr %1072, align 1, !noalias !92
  %1074 = add i64 %822, 5690594596133299313
  %1075 = xor i64 %1071, %1074
  %1076 = sub i64 -2833645246901970632, %822
  %1077 = xor i64 %1073, %1076
  %1078 = and i64 %1075, 4294967295
  %1079 = and i64 %1077, 4294967295
  %1080 = mul nuw i64 %1079, %1078
  %1081 = lshr i64 %1075, 32
  %1082 = mul nuw i64 %1079, %1081
  %1083 = lshr i64 %1077, 32
  %1084 = mul nuw i64 %1083, %1078
  %1085 = mul nuw i64 %1083, %1081
  %1086 = lshr i64 %1080, 32
  %1087 = and i64 %1082, 4294967295
  %1088 = add nuw i64 %1087, %1084
  %1089 = add nuw i64 %1088, %1086
  %1090 = lshr i64 %1082, 32
  %1091 = lshr i64 %1089, 32
  %1092 = add nuw i64 %1090, %1085
  %1093 = add nuw i64 %1092, %1091
  %1094 = shl i64 %1089, 32
  %1095 = and i64 %1080, 4294967295
  %1096 = or disjoint i64 %1094, %1095
  %1097 = xor i64 %1096, %1093
  %1098 = add i64 %1097, %1038
  br label %1099

1099:                                             ; preds = %1037, %974
  %1100 = phi i64 [ %1098, %1037 ], [ 0, %974 ]
  %1101 = phi i64 [ %1068, %1037 ], [ %972, %974 ]
  %1102 = getelementptr inbounds nuw i8, ptr %1, i32 272
  %1103 = load i64, ptr %1102, align 1, !noalias !92
  %1104 = getelementptr inbounds nuw i8, ptr %1, i32 280
  %1105 = load i64, ptr %1104, align 1, !noalias !92
  %1106 = add i64 %822, 8711581037947681227
  %1107 = xor i64 %1103, %1106
  %1108 = sub i64 2410270004345854594, %822
  %1109 = xor i64 %1105, %1108
  %1110 = and i64 %1107, 4294967295
  %1111 = and i64 %1109, 4294967295
  %1112 = mul nuw i64 %1111, %1110
  %1113 = lshr i64 %1107, 32
  %1114 = mul nuw i64 %1111, %1113
  %1115 = lshr i64 %1109, 32
  %1116 = mul nuw i64 %1115, %1110
  %1117 = mul nuw i64 %1115, %1113
  %1118 = lshr i64 %1112, 32
  %1119 = and i64 %1114, 4294967295
  %1120 = add nuw i64 %1119, %1116
  %1121 = add nuw i64 %1120, %1118
  %1122 = lshr i64 %1114, 32
  %1123 = lshr i64 %1121, 32
  %1124 = add nuw i64 %1122, %1117
  %1125 = add nuw i64 %1124, %1123
  %1126 = shl i64 %1121, 32
  %1127 = and i64 %1112, 4294967295
  %1128 = or disjoint i64 %1126, %1127
  %1129 = xor i64 %1128, %1125
  %1130 = add i64 %1129, %1101
  %1131 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %1132 = getelementptr inbounds i8, ptr %1131, i32 -32
  %1133 = load i64, ptr %1132, align 1, !noalias !92
  %1134 = getelementptr inbounds i8, ptr %1131, i32 -24
  %1135 = load i64, ptr %1134, align 1, !noalias !92
  %1136 = add i64 %822, -8204357891075471176
  %1137 = xor i64 %1133, %1136
  %1138 = sub i64 5487137525590930912, %822
  %1139 = xor i64 %1135, %1138
  %1140 = and i64 %1137, 4294967295
  %1141 = and i64 %1139, 4294967295
  %1142 = mul nuw i64 %1141, %1140
  %1143 = lshr i64 %1137, 32
  %1144 = mul nuw i64 %1141, %1143
  %1145 = lshr i64 %1139, 32
  %1146 = mul nuw i64 %1145, %1140
  %1147 = mul nuw i64 %1145, %1143
  %1148 = lshr i64 %1142, 32
  %1149 = and i64 %1144, 4294967295
  %1150 = add nuw i64 %1149, %1146
  %1151 = add nuw i64 %1150, %1148
  %1152 = lshr i64 %1144, 32
  %1153 = lshr i64 %1151, 32
  %1154 = add nuw i64 %1152, %1147
  %1155 = add nuw i64 %1154, %1153
  %1156 = shl i64 %1151, 32
  %1157 = and i64 %1142, 4294967295
  %1158 = or disjoint i64 %1156, %1157
  %1159 = xor i64 %1158, %1155
  %1160 = add i64 %1159, %1100
  br label %1161

1161:                                             ; preds = %1099, %971
  %1162 = phi i64 [ %1160, %1099 ], [ 0, %971 ]
  %1163 = phi i64 [ %1130, %1099 ], [ %972, %971 ]
  %1164 = load i64, ptr %824, align 1, !noalias !92
  %1165 = getelementptr inbounds nuw i8, ptr %1, i32 264
  %1166 = load i64, ptr %1165, align 1, !noalias !92
  %1167 = add i64 %822, -4734510112055689544
  %1168 = xor i64 %1164, %1167
  %1169 = sub i64 2066345149520216444, %822
  %1170 = xor i64 %1166, %1169
  %1171 = and i64 %1168, 4294967295
  %1172 = and i64 %1170, 4294967295
  %1173 = mul nuw i64 %1172, %1171
  %1174 = lshr i64 %1168, 32
  %1175 = mul nuw i64 %1172, %1174
  %1176 = lshr i64 %1170, 32
  %1177 = mul nuw i64 %1176, %1171
  %1178 = mul nuw i64 %1176, %1174
  %1179 = lshr i64 %1173, 32
  %1180 = and i64 %1175, 4294967295
  %1181 = add nuw i64 %1180, %1177
  %1182 = add nuw i64 %1181, %1179
  %1183 = lshr i64 %1175, 32
  %1184 = lshr i64 %1182, 32
  %1185 = add nuw i64 %1183, %1178
  %1186 = add nuw i64 %1185, %1184
  %1187 = shl i64 %1182, 32
  %1188 = and i64 %1173, 4294967295
  %1189 = or disjoint i64 %1187, %1188
  %1190 = xor i64 %1189, %1186
  %1191 = add i64 %1190, %1163
  %1192 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %1193 = getelementptr inbounds i8, ptr %1192, i32 -16
  %1194 = load i64, ptr %1193, align 1, !noalias !92
  %1195 = getelementptr inbounds i8, ptr %1192, i32 -8
  %1196 = load i64, ptr %1195, align 1, !noalias !92
  %1197 = add i64 %822, -2623469361688619810
  %1198 = xor i64 %1194, %1197
  %1199 = sub i64 2262974939099578482, %822
  %1200 = xor i64 %1196, %1199
  %1201 = and i64 %1198, 4294967295
  %1202 = and i64 %1200, 4294967295
  %1203 = mul nuw i64 %1202, %1201
  %1204 = lshr i64 %1198, 32
  %1205 = mul nuw i64 %1202, %1204
  %1206 = lshr i64 %1200, 32
  %1207 = mul nuw i64 %1206, %1201
  %1208 = mul nuw i64 %1206, %1204
  %1209 = lshr i64 %1203, 32
  %1210 = and i64 %1205, 4294967295
  %1211 = add nuw i64 %1210, %1207
  %1212 = add nuw i64 %1211, %1209
  %1213 = lshr i64 %1205, 32
  %1214 = lshr i64 %1212, 32
  %1215 = add nuw i64 %1213, %1208
  %1216 = add nuw i64 %1215, %1214
  %1217 = shl i64 %1212, 32
  %1218 = and i64 %1203, 4294967295
  %1219 = or disjoint i64 %1217, %1218
  %1220 = xor i64 %1219, %1216
  %1221 = add i64 %1220, %1162
  %1222 = add i64 %1221, %1191
  %1223 = mul i64 %1191, -7046029288634856825
  %1224 = mul i64 %1221, -8796714831421723037
  %1225 = sub i64 %5, %822
  %1226 = mul i64 %1225, -4417276706812531889
  %1227 = add i64 %1223, %1226
  %1228 = add i64 %1227, %1224
  %1229 = lshr i64 %1222, 37
  %1230 = xor i64 %1229, %1222
  %1231 = mul i64 %1230, 1609587929392839161
  %1232 = lshr i64 %1231, 32
  %1233 = xor i64 %1232, %1231
  store i64 %1233, ptr %0, align 8, !alias.scope !108
  %1234 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1235 = lshr i64 %1228, 37
  %1236 = xor i64 %1235, %1228
  %1237 = mul i64 %1236, 1609587929392839161
  %1238 = lshr i64 %1237, 32
  %1239 = xor i64 %1238, %1237
  %1240 = sub i64 0, %1239
  store i64 %1240, ptr %1234, align 8, !alias.scope !108
  br label %1677

1241:                                             ; preds = %969
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull readonly %824, i32 noundef %825, ptr noundef nonnull @kSecret, i64 noundef %822)
  br label %1677

1242:                                             ; preds = %820
  %1243 = getelementptr inbounds nuw i8, ptr %1, i32 560
  %1244 = load ptr, ptr %1243, align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %1245 = icmp samesign ult i32 %825, 17
  br i1 %1245, label %1246, label %1390

1246:                                             ; preds = %1242
  %1247 = icmp samesign ugt i32 %825, 8
  br i1 %1247, label %1248, label %1307

1248:                                             ; preds = %1246
  %1249 = load i64, ptr %824, align 1, !noalias !111
  %1250 = load i64, ptr %1244, align 1, !noalias !111
  %1251 = xor i64 %1250, %1249
  %1252 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %1253 = getelementptr inbounds i8, ptr %1252, i32 -8
  %1254 = load i64, ptr %1253, align 1, !noalias !111
  %1255 = getelementptr inbounds nuw i8, ptr %1244, i32 8
  %1256 = load i64, ptr %1255, align 1, !noalias !111
  %1257 = xor i64 %1256, %1254
  %1258 = xor i64 %1251, %1257
  %1259 = and i64 %1258, 4294967295
  %1260 = mul nuw i64 %1259, 2246822535
  %1261 = lshr i64 %1258, 32
  %1262 = mul nuw i64 %1261, 2246822535
  %1263 = mul nuw i64 %1259, 2654435761
  %1264 = mul nuw i64 %1261, 2654435761
  %1265 = lshr i64 %1260, 32
  %1266 = and i64 %1262, 4294967295
  %1267 = add nuw i64 %1266, %1263
  %1268 = add nuw i64 %1267, %1265
  %1269 = lshr i64 %1262, 32
  %1270 = lshr i64 %1268, 32
  %1271 = and i64 %1268, 4294967295
  %1272 = and i64 %1260, 4294967295
  %1273 = mul i64 %1257, -7046029288634856825
  %1274 = add i64 %1264, %1273
  %1275 = add i64 %1274, %1269
  %1276 = add i64 %1275, %1270
  %1277 = lshr i64 %1276, 32
  %1278 = xor i64 %1277, %1272
  %1279 = mul nuw nsw i64 %1278, 668265295
  %1280 = mul nuw nsw i64 %1271, 668265295
  %1281 = mul nuw i64 %1278, 3266489917
  %1282 = mul nuw i64 %1271, 3266489917
  %1283 = lshr i64 %1279, 32
  %1284 = and i64 %1280, 4294967295
  %1285 = add nuw i64 %1281, %1284
  %1286 = add nuw i64 %1285, %1283
  %1287 = lshr i64 %1280, 32
  %1288 = lshr i64 %1286, 32
  %1289 = add nuw i64 %1287, %1282
  %1290 = shl i64 %1286, 32
  %1291 = and i64 %1279, 4294967295
  %1292 = or disjoint i64 %1290, %1291
  %1293 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1294 = mul i64 %1276, -4417276706812531889
  %1295 = add i64 %1289, %1294
  %1296 = add i64 %1295, %1288
  %1297 = lshr i64 %1290, 37
  %1298 = xor i64 %1297, %1292
  %1299 = mul i64 %1298, 1609587929392839161
  %1300 = lshr i64 %1299, 32
  %1301 = xor i64 %1300, %1299
  store i64 %1301, ptr %0, align 8, !alias.scope !114
  %1302 = lshr i64 %1296, 37
  %1303 = xor i64 %1302, %1296
  %1304 = mul i64 %1303, 1609587929392839161
  %1305 = lshr i64 %1304, 32
  %1306 = xor i64 %1305, %1304
  store i64 %1306, ptr %1293, align 8, !alias.scope !114
  br label %1677

1307:                                             ; preds = %1246
  %1308 = icmp samesign ugt i32 %825, 3
  br i1 %1308, label %1309, label %1349

1309:                                             ; preds = %1307
  %1310 = load i32, ptr %824, align 1, !noalias !111
  %1311 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %1312 = getelementptr inbounds i8, ptr %1311, i32 -4
  %1313 = load i32, ptr %1312, align 1, !noalias !111
  %1314 = zext i32 %1310 to i64
  %1315 = zext i32 %1313 to i64
  %1316 = shl nuw i64 %1315, 32
  %1317 = or disjoint i64 %1316, %1314
  %1318 = tail call noundef i64 @llvm.bswap.i64(i64 %1317)
  %1319 = load i64, ptr %1244, align 1, !noalias !111
  %1320 = xor i64 %1317, %1319
  %1321 = getelementptr inbounds nuw i8, ptr %1244, i32 8
  %1322 = load i64, ptr %1321, align 1, !noalias !111
  %1323 = xor i64 %1318, %1322
  %1324 = lshr i64 %1320, 51
  %1325 = xor i64 %1324, %1320
  %1326 = mul i64 %1325, 2654435761
  %1327 = add i64 %1326, %5
  %1328 = lshr i64 %1327, 47
  %1329 = xor i64 %1328, %1327
  %1330 = mul i64 %1329, -4417276706812531889
  %1331 = lshr i64 %1323, 47
  %1332 = xor i64 %1331, %1323
  %1333 = mul i64 %1332, -7046029288634856825
  %1334 = sub i64 %1333, %5
  %1335 = lshr i64 %1334, 43
  %1336 = xor i64 %1335, %1334
  %1337 = mul i64 %1336, -8796714831421723037
  %1338 = lshr i64 %1330, 37
  %1339 = xor i64 %1338, %1330
  %1340 = mul i64 %1339, 1609587929392839161
  %1341 = lshr i64 %1340, 32
  %1342 = xor i64 %1341, %1340
  store i64 %1342, ptr %0, align 8, !alias.scope !117
  %1343 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1344 = lshr i64 %1337, 37
  %1345 = xor i64 %1344, %1337
  %1346 = mul i64 %1345, 1609587929392839161
  %1347 = lshr i64 %1346, 32
  %1348 = xor i64 %1347, %1346
  store i64 %1348, ptr %1343, align 8, !alias.scope !117
  br label %1677

1349:                                             ; preds = %1307
  %1350 = icmp eq i32 %825, 0
  br i1 %1350, label %1389, label %1351

1351:                                             ; preds = %1349
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %1352 = load i8, ptr %824, align 1, !noalias !123
  %1353 = lshr i32 %825, 1
  %1354 = getelementptr inbounds nuw i8, ptr %824, i32 %1353
  %1355 = load i8, ptr %1354, align 1, !noalias !123
  %1356 = getelementptr i8, ptr %824, i32 %825
  %1357 = getelementptr i8, ptr %1356, i32 -1
  %1358 = load i8, ptr %1357, align 1, !noalias !123
  %1359 = zext i8 %1352 to i32
  %1360 = zext i8 %1355 to i32
  %1361 = shl nuw nsw i32 %1360, 8
  %1362 = or disjoint i32 %1361, %1359
  %1363 = zext i8 %1358 to i32
  %1364 = shl nuw nsw i32 %1363, 16
  %1365 = or disjoint i32 %1362, %1364
  %1366 = shl nuw nsw i32 %825, 24
  %1367 = or disjoint i32 %1365, %1366
  %1368 = tail call noundef i32 @llvm.bswap.i32(i32 %1367)
  %1369 = load i32, ptr %1244, align 1, !noalias !111
  %1370 = xor i32 %1367, %1369
  %1371 = zext i32 %1370 to i64
  %1372 = getelementptr inbounds nuw i8, ptr %1244, i32 4
  %1373 = load i32, ptr %1372, align 1, !noalias !111
  %1374 = xor i32 %1368, %1373
  %1375 = zext i32 %1374 to i64
  %1376 = mul i64 %1371, -7046029288634856825
  %1377 = mul i64 %1375, -4417276706812531889
  %1378 = lshr i64 %1376, 37
  %1379 = xor i64 %1378, %1376
  %1380 = mul i64 %1379, 1609587929392839161
  %1381 = lshr i64 %1380, 32
  %1382 = xor i64 %1381, %1380
  store i64 %1382, ptr %0, align 8, !alias.scope !123
  %1383 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1384 = lshr i64 %1377, 37
  %1385 = xor i64 %1384, %1377
  %1386 = mul i64 %1385, 1609587929392839161
  %1387 = lshr i64 %1386, 32
  %1388 = xor i64 %1387, %1386
  store i64 %1388, ptr %1383, align 8, !alias.scope !123
  br label %1677

1389:                                             ; preds = %1349
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !alias.scope !124
  br label %1677

1390:                                             ; preds = %1242
  %1391 = icmp samesign ult i32 %825, 129
  br i1 %1391, label %1392, label %1676

1392:                                             ; preds = %1390
  %1393 = mul i64 %5, -7046029288634856825
  %1394 = icmp samesign ugt i32 %825, 32
  br i1 %1394, label %1395, label %1594

1395:                                             ; preds = %1392
  %1396 = icmp samesign ugt i32 %825, 64
  br i1 %1396, label %1397, label %1528

1397:                                             ; preds = %1395
  %1398 = icmp samesign ugt i32 %825, 96
  br i1 %1398, label %1399, label %1462

1399:                                             ; preds = %1397
  %1400 = getelementptr inbounds nuw i8, ptr %1, i32 304
  %1401 = getelementptr inbounds nuw i8, ptr %1244, i32 96
  %1402 = load i64, ptr %1400, align 1, !noalias !111
  %1403 = getelementptr inbounds nuw i8, ptr %1, i32 312
  %1404 = load i64, ptr %1403, align 1, !noalias !111
  %1405 = load i64, ptr %1401, align 1, !noalias !111
  %1406 = xor i64 %1405, %1402
  %1407 = getelementptr inbounds nuw i8, ptr %1244, i32 104
  %1408 = load i64, ptr %1407, align 1, !noalias !111
  %1409 = xor i64 %1408, %1404
  %1410 = and i64 %1406, 4294967295
  %1411 = and i64 %1409, 4294967295
  %1412 = mul nuw i64 %1411, %1410
  %1413 = lshr i64 %1406, 32
  %1414 = mul nuw i64 %1411, %1413
  %1415 = lshr i64 %1409, 32
  %1416 = mul nuw i64 %1415, %1410
  %1417 = mul nuw i64 %1415, %1413
  %1418 = lshr i64 %1412, 32
  %1419 = and i64 %1414, 4294967295
  %1420 = add nuw i64 %1419, %1416
  %1421 = add nuw i64 %1420, %1418
  %1422 = lshr i64 %1414, 32
  %1423 = lshr i64 %1421, 32
  %1424 = add nuw i64 %1422, %1417
  %1425 = add nuw i64 %1424, %1423
  %1426 = shl i64 %1421, 32
  %1427 = and i64 %1412, 4294967295
  %1428 = or disjoint i64 %1426, %1427
  %1429 = xor i64 %1428, %1425
  %1430 = add i64 %1429, %1393
  %1431 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %1432 = getelementptr inbounds i8, ptr %1431, i32 -64
  %1433 = getelementptr inbounds nuw i8, ptr %1244, i32 112
  %1434 = load i64, ptr %1432, align 1, !noalias !111
  %1435 = getelementptr inbounds i8, ptr %1431, i32 -56
  %1436 = load i64, ptr %1435, align 1, !noalias !111
  %1437 = load i64, ptr %1433, align 1, !noalias !111
  %1438 = xor i64 %1437, %1434
  %1439 = getelementptr inbounds nuw i8, ptr %1244, i32 120
  %1440 = load i64, ptr %1439, align 1, !noalias !111
  %1441 = xor i64 %1440, %1436
  %1442 = and i64 %1438, 4294967295
  %1443 = and i64 %1441, 4294967295
  %1444 = mul nuw i64 %1443, %1442
  %1445 = lshr i64 %1438, 32
  %1446 = mul nuw i64 %1443, %1445
  %1447 = lshr i64 %1441, 32
  %1448 = mul nuw i64 %1447, %1442
  %1449 = mul nuw i64 %1447, %1445
  %1450 = lshr i64 %1444, 32
  %1451 = and i64 %1446, 4294967295
  %1452 = add nuw i64 %1451, %1448
  %1453 = add nuw i64 %1452, %1450
  %1454 = lshr i64 %1446, 32
  %1455 = lshr i64 %1453, 32
  %1456 = add nuw i64 %1454, %1449
  %1457 = add nuw i64 %1456, %1455
  %1458 = shl i64 %1453, 32
  %1459 = and i64 %1444, 4294967295
  %1460 = or disjoint i64 %1458, %1459
  %1461 = xor i64 %1460, %1457
  br label %1462

1462:                                             ; preds = %1399, %1397
  %1463 = phi i64 [ %1461, %1399 ], [ 0, %1397 ]
  %1464 = phi i64 [ %1430, %1399 ], [ %1393, %1397 ]
  %1465 = getelementptr inbounds nuw i8, ptr %1, i32 288
  %1466 = getelementptr inbounds nuw i8, ptr %1244, i32 64
  %1467 = load i64, ptr %1465, align 1, !noalias !111
  %1468 = getelementptr inbounds nuw i8, ptr %1, i32 296
  %1469 = load i64, ptr %1468, align 1, !noalias !111
  %1470 = load i64, ptr %1466, align 1, !noalias !111
  %1471 = xor i64 %1470, %1467
  %1472 = getelementptr inbounds nuw i8, ptr %1244, i32 72
  %1473 = load i64, ptr %1472, align 1, !noalias !111
  %1474 = xor i64 %1473, %1469
  %1475 = and i64 %1471, 4294967295
  %1476 = and i64 %1474, 4294967295
  %1477 = mul nuw i64 %1476, %1475
  %1478 = lshr i64 %1471, 32
  %1479 = mul nuw i64 %1476, %1478
  %1480 = lshr i64 %1474, 32
  %1481 = mul nuw i64 %1480, %1475
  %1482 = mul nuw i64 %1480, %1478
  %1483 = lshr i64 %1477, 32
  %1484 = and i64 %1479, 4294967295
  %1485 = add nuw i64 %1484, %1481
  %1486 = add nuw i64 %1485, %1483
  %1487 = lshr i64 %1479, 32
  %1488 = lshr i64 %1486, 32
  %1489 = add nuw i64 %1487, %1482
  %1490 = add nuw i64 %1489, %1488
  %1491 = shl i64 %1486, 32
  %1492 = and i64 %1477, 4294967295
  %1493 = or disjoint i64 %1491, %1492
  %1494 = xor i64 %1493, %1490
  %1495 = add i64 %1494, %1464
  %1496 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %1497 = getelementptr inbounds i8, ptr %1496, i32 -48
  %1498 = getelementptr inbounds nuw i8, ptr %1244, i32 80
  %1499 = load i64, ptr %1497, align 1, !noalias !111
  %1500 = getelementptr inbounds i8, ptr %1496, i32 -40
  %1501 = load i64, ptr %1500, align 1, !noalias !111
  %1502 = load i64, ptr %1498, align 1, !noalias !111
  %1503 = xor i64 %1502, %1499
  %1504 = getelementptr inbounds nuw i8, ptr %1244, i32 88
  %1505 = load i64, ptr %1504, align 1, !noalias !111
  %1506 = xor i64 %1505, %1501
  %1507 = and i64 %1503, 4294967295
  %1508 = and i64 %1506, 4294967295
  %1509 = mul nuw i64 %1508, %1507
  %1510 = lshr i64 %1503, 32
  %1511 = mul nuw i64 %1508, %1510
  %1512 = lshr i64 %1506, 32
  %1513 = mul nuw i64 %1512, %1507
  %1514 = mul nuw i64 %1512, %1510
  %1515 = lshr i64 %1509, 32
  %1516 = and i64 %1511, 4294967295
  %1517 = add nuw i64 %1516, %1513
  %1518 = add nuw i64 %1517, %1515
  %1519 = lshr i64 %1511, 32
  %1520 = lshr i64 %1518, 32
  %1521 = add nuw i64 %1519, %1514
  %1522 = add nuw i64 %1521, %1520
  %1523 = shl i64 %1518, 32
  %1524 = and i64 %1509, 4294967295
  %1525 = or disjoint i64 %1523, %1524
  %1526 = xor i64 %1525, %1522
  %1527 = add i64 %1526, %1463
  br label %1528

1528:                                             ; preds = %1462, %1395
  %1529 = phi i64 [ %1527, %1462 ], [ 0, %1395 ]
  %1530 = phi i64 [ %1495, %1462 ], [ %1393, %1395 ]
  %1531 = getelementptr inbounds nuw i8, ptr %1, i32 272
  %1532 = getelementptr inbounds nuw i8, ptr %1244, i32 32
  %1533 = load i64, ptr %1531, align 1, !noalias !111
  %1534 = getelementptr inbounds nuw i8, ptr %1, i32 280
  %1535 = load i64, ptr %1534, align 1, !noalias !111
  %1536 = load i64, ptr %1532, align 1, !noalias !111
  %1537 = xor i64 %1536, %1533
  %1538 = getelementptr inbounds nuw i8, ptr %1244, i32 40
  %1539 = load i64, ptr %1538, align 1, !noalias !111
  %1540 = xor i64 %1539, %1535
  %1541 = and i64 %1537, 4294967295
  %1542 = and i64 %1540, 4294967295
  %1543 = mul nuw i64 %1542, %1541
  %1544 = lshr i64 %1537, 32
  %1545 = mul nuw i64 %1542, %1544
  %1546 = lshr i64 %1540, 32
  %1547 = mul nuw i64 %1546, %1541
  %1548 = mul nuw i64 %1546, %1544
  %1549 = lshr i64 %1543, 32
  %1550 = and i64 %1545, 4294967295
  %1551 = add nuw i64 %1550, %1547
  %1552 = add nuw i64 %1551, %1549
  %1553 = lshr i64 %1545, 32
  %1554 = lshr i64 %1552, 32
  %1555 = add nuw i64 %1553, %1548
  %1556 = add nuw i64 %1555, %1554
  %1557 = shl i64 %1552, 32
  %1558 = and i64 %1543, 4294967295
  %1559 = or disjoint i64 %1557, %1558
  %1560 = xor i64 %1559, %1556
  %1561 = add i64 %1560, %1530
  %1562 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %1563 = getelementptr inbounds i8, ptr %1562, i32 -32
  %1564 = getelementptr inbounds nuw i8, ptr %1244, i32 48
  %1565 = load i64, ptr %1563, align 1, !noalias !111
  %1566 = getelementptr inbounds i8, ptr %1562, i32 -24
  %1567 = load i64, ptr %1566, align 1, !noalias !111
  %1568 = load i64, ptr %1564, align 1, !noalias !111
  %1569 = xor i64 %1568, %1565
  %1570 = getelementptr inbounds nuw i8, ptr %1244, i32 56
  %1571 = load i64, ptr %1570, align 1, !noalias !111
  %1572 = xor i64 %1571, %1567
  %1573 = and i64 %1569, 4294967295
  %1574 = and i64 %1572, 4294967295
  %1575 = mul nuw i64 %1574, %1573
  %1576 = lshr i64 %1569, 32
  %1577 = mul nuw i64 %1574, %1576
  %1578 = lshr i64 %1572, 32
  %1579 = mul nuw i64 %1578, %1573
  %1580 = mul nuw i64 %1578, %1576
  %1581 = lshr i64 %1575, 32
  %1582 = and i64 %1577, 4294967295
  %1583 = add nuw i64 %1582, %1579
  %1584 = add nuw i64 %1583, %1581
  %1585 = lshr i64 %1577, 32
  %1586 = lshr i64 %1584, 32
  %1587 = add nuw i64 %1585, %1580
  %1588 = add nuw i64 %1587, %1586
  %1589 = shl i64 %1584, 32
  %1590 = and i64 %1575, 4294967295
  %1591 = or disjoint i64 %1589, %1590
  %1592 = xor i64 %1591, %1588
  %1593 = add i64 %1592, %1529
  br label %1594

1594:                                             ; preds = %1528, %1392
  %1595 = phi i64 [ %1593, %1528 ], [ 0, %1392 ]
  %1596 = phi i64 [ %1561, %1528 ], [ %1393, %1392 ]
  %1597 = load i64, ptr %824, align 1, !noalias !111
  %1598 = getelementptr inbounds nuw i8, ptr %1, i32 264
  %1599 = load i64, ptr %1598, align 1, !noalias !111
  %1600 = load i64, ptr %1244, align 1, !noalias !111
  %1601 = xor i64 %1600, %1597
  %1602 = getelementptr inbounds nuw i8, ptr %1244, i32 8
  %1603 = load i64, ptr %1602, align 1, !noalias !111
  %1604 = xor i64 %1603, %1599
  %1605 = and i64 %1601, 4294967295
  %1606 = and i64 %1604, 4294967295
  %1607 = mul nuw i64 %1606, %1605
  %1608 = lshr i64 %1601, 32
  %1609 = mul nuw i64 %1606, %1608
  %1610 = lshr i64 %1604, 32
  %1611 = mul nuw i64 %1610, %1605
  %1612 = mul nuw i64 %1610, %1608
  %1613 = lshr i64 %1607, 32
  %1614 = and i64 %1609, 4294967295
  %1615 = add nuw i64 %1614, %1611
  %1616 = add nuw i64 %1615, %1613
  %1617 = lshr i64 %1609, 32
  %1618 = lshr i64 %1616, 32
  %1619 = add nuw i64 %1617, %1612
  %1620 = add nuw i64 %1619, %1618
  %1621 = shl i64 %1616, 32
  %1622 = and i64 %1607, 4294967295
  %1623 = or disjoint i64 %1621, %1622
  %1624 = xor i64 %1623, %1620
  %1625 = add i64 %1624, %1596
  %1626 = getelementptr inbounds nuw i8, ptr %824, i32 %825
  %1627 = getelementptr inbounds i8, ptr %1626, i32 -16
  %1628 = getelementptr inbounds nuw i8, ptr %1244, i32 16
  %1629 = load i64, ptr %1627, align 1, !noalias !111
  %1630 = getelementptr inbounds i8, ptr %1626, i32 -8
  %1631 = load i64, ptr %1630, align 1, !noalias !111
  %1632 = load i64, ptr %1628, align 1, !noalias !111
  %1633 = xor i64 %1632, %1629
  %1634 = getelementptr inbounds nuw i8, ptr %1244, i32 24
  %1635 = load i64, ptr %1634, align 1, !noalias !111
  %1636 = xor i64 %1635, %1631
  %1637 = and i64 %1633, 4294967295
  %1638 = and i64 %1636, 4294967295
  %1639 = mul nuw i64 %1638, %1637
  %1640 = lshr i64 %1633, 32
  %1641 = mul nuw i64 %1638, %1640
  %1642 = lshr i64 %1636, 32
  %1643 = mul nuw i64 %1642, %1637
  %1644 = mul nuw i64 %1642, %1640
  %1645 = lshr i64 %1639, 32
  %1646 = and i64 %1641, 4294967295
  %1647 = add nuw i64 %1646, %1643
  %1648 = add nuw i64 %1647, %1645
  %1649 = lshr i64 %1641, 32
  %1650 = lshr i64 %1648, 32
  %1651 = add nuw i64 %1649, %1644
  %1652 = add nuw i64 %1651, %1650
  %1653 = shl i64 %1648, 32
  %1654 = and i64 %1639, 4294967295
  %1655 = or disjoint i64 %1653, %1654
  %1656 = xor i64 %1655, %1652
  %1657 = add i64 %1656, %1595
  %1658 = add i64 %1657, %1625
  %1659 = mul i64 %1625, -7046029288634856825
  %1660 = mul i64 %1657, -8796714831421723037
  %1661 = mul i64 %5, -4417276706812531889
  %1662 = add i64 %1659, %1661
  %1663 = add i64 %1662, %1660
  %1664 = lshr i64 %1658, 37
  %1665 = xor i64 %1664, %1658
  %1666 = mul i64 %1665, 1609587929392839161
  %1667 = lshr i64 %1666, 32
  %1668 = xor i64 %1667, %1666
  store i64 %1668, ptr %0, align 8, !alias.scope !127
  %1669 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %1670 = lshr i64 %1663, 37
  %1671 = xor i64 %1670, %1663
  %1672 = mul i64 %1671, 1609587929392839161
  %1673 = lshr i64 %1672, 32
  %1674 = xor i64 %1673, %1672
  %1675 = sub i64 0, %1674
  store i64 %1675, ptr %1669, align 8, !alias.scope !127
  br label %1677

1676:                                             ; preds = %1390
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull readonly %824, i32 noundef %825, ptr noundef %1244, i64 noundef 0)
  br label %1677

1677:                                             ; preds = %1676, %1594, %1389, %1351, %1309, %1248, %1241, %1161, %968, %931, %890, %830, %577
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
define dso_local i64 @target_oneshot(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = icmp ugt ptr %0, inttoptr (i32 -17 to ptr)
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, 2870177450012600277
  %6 = load i64, ptr %0, align 1
  %7 = mul i64 %6, -4417276706812531889
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 31)
  %9 = mul i64 %8, -7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %11 = xor i64 %9, %5
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 27)
  %13 = mul i64 %12, -7046029288634856825
  %14 = add i64 %13, -8796714831421723037
  %15 = load i64, ptr %10, align 1
  %16 = mul i64 %15, -4417276706812531889
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = xor i64 %18, %14
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 27)
  %21 = mul i64 %20, -7046029288634856825
  %22 = add i64 %21, -8796714831421723037
  %23 = lshr i64 %22, 33
  %24 = xor i64 %23, %22
  %25 = mul i64 %24, -4417276706812531889
  %26 = lshr i64 %25, 29
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, 1609587929392839161
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %28
  br label %31

31:                                               ; preds = %2, %4
  %32 = phi i64 [ %30, %4 ], [ 0, %2 ]
  ret i64 %32
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #13 = { nofree noinline norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #16 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #17 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #18 = { nofree norecurse nosync nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1136jf-s" "target-features"="+armv6,+dsp,+fp64,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
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
