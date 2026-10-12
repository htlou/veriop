; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/028c0fd/api_xxh32_len16_ppc64be/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/028c0fd/api_xxh32_len16_ppc64be/wrapper.c"
target datalayout = "E-m:e-Fi64-i64:64-i128:128-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64-unknown-linux-gnu"

%struct.XXH128_hash_t = type { i64, i64 }

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 702
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i32 @XXH32(ptr noundef %0, i64 noundef %1, i32 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 3
  %6 = icmp eq i64 %5, 0
  %7 = icmp ugt i64 %1, 15
  br i1 %6, label %8, label %226

8:                                                ; preds = %3
  br i1 %7, label %9, label %58

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -15
  %12 = add i32 %2, 606290984
  %13 = add i32 %2, -2048144777
  %14 = add i32 %2, 1640531535
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %0, %9 ], [ %48, %15 ]
  %17 = phi i32 [ %12, %9 ], [ %26, %15 ]
  %18 = phi i32 [ %13, %9 ], [ %33, %15 ]
  %19 = phi i32 [ %2, %9 ], [ %40, %15 ]
  %20 = phi i32 [ %14, %9 ], [ %47, %15 ]
  %21 = load i32, ptr %16, align 4
  %22 = tail call noundef i32 @llvm.bswap.i32(i32 %21)
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %17
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %28 = load i32, ptr %27, align 4
  %29 = tail call noundef i32 @llvm.bswap.i32(i32 %28)
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %18
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %35 = load i32, ptr %34, align 4
  %36 = tail call noundef i32 @llvm.bswap.i32(i32 %35)
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %19
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr inbounds nuw i8, ptr %16, i64 12
  %42 = load i32, ptr %41, align 4
  %43 = tail call noundef i32 @llvm.bswap.i32(i32 %42)
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %20
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %49 = icmp ult ptr %48, %11
  br i1 %49, label %15, label %50

50:                                               ; preds = %15
  %51 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 1)
  %52 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 7)
  %53 = add i32 %52, %51
  %54 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 12)
  %55 = add i32 %53, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 18)
  %57 = add i32 %55, %56
  br label %60

58:                                               ; preds = %8
  %59 = add i32 %2, 374761393
  br label %60

60:                                               ; preds = %50, %58
  %61 = phi i32 [ %57, %50 ], [ %59, %58 ]
  %62 = phi ptr [ %48, %50 ], [ %0, %58 ]
  %63 = trunc i64 %1 to i32
  %64 = add i32 %61, %63
  %65 = and i64 %1, 15
  switch i64 %65, label %225 [
    i64 12, label %66
    i64 8, label %74
    i64 4, label %84
    i64 13, label %93
    i64 9, label %101
    i64 5, label %111
    i64 14, label %127
    i64 10, label %135
    i64 6, label %145
    i64 15, label %168
    i64 11, label %176
    i64 7, label %186
    i64 3, label %196
    i64 2, label %206
    i64 1, label %216
    i64 0, label %443
  ]

66:                                               ; preds = %60
  %67 = load i32, ptr %62, align 1
  %68 = tail call noundef i32 @llvm.bswap.i32(i32 %67)
  %69 = mul i32 %68, -1028477379
  %70 = add i32 %69, %64
  %71 = getelementptr inbounds nuw i8, ptr %62, i64 4
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 17)
  %73 = mul i32 %72, 668265263
  br label %74

74:                                               ; preds = %66, %60
  %75 = phi ptr [ %62, %60 ], [ %71, %66 ]
  %76 = phi i32 [ %64, %60 ], [ %73, %66 ]
  %77 = load i32, ptr %75, align 1
  %78 = tail call noundef i32 @llvm.bswap.i32(i32 %77)
  %79 = mul i32 %78, -1028477379
  %80 = add i32 %79, %76
  %81 = getelementptr inbounds nuw i8, ptr %75, i64 4
  %82 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 17)
  %83 = mul i32 %82, 668265263
  br label %84

84:                                               ; preds = %74, %60
  %85 = phi ptr [ %62, %60 ], [ %81, %74 ]
  %86 = phi i32 [ %64, %60 ], [ %83, %74 ]
  %87 = load i32, ptr %85, align 1
  %88 = tail call noundef i32 @llvm.bswap.i32(i32 %87)
  %89 = mul i32 %88, -1028477379
  %90 = add i32 %89, %86
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 17)
  %92 = mul i32 %91, 668265263
  br label %443

93:                                               ; preds = %60
  %94 = load i32, ptr %62, align 1
  %95 = tail call noundef i32 @llvm.bswap.i32(i32 %94)
  %96 = mul i32 %95, -1028477379
  %97 = add i32 %96, %64
  %98 = getelementptr inbounds nuw i8, ptr %62, i64 4
  %99 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 17)
  %100 = mul i32 %99, 668265263
  br label %101

101:                                              ; preds = %93, %60
  %102 = phi ptr [ %62, %60 ], [ %98, %93 ]
  %103 = phi i32 [ %64, %60 ], [ %100, %93 ]
  %104 = load i32, ptr %102, align 1
  %105 = tail call noundef i32 @llvm.bswap.i32(i32 %104)
  %106 = mul i32 %105, -1028477379
  %107 = add i32 %106, %103
  %108 = getelementptr inbounds nuw i8, ptr %102, i64 4
  %109 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 17)
  %110 = mul i32 %109, 668265263
  br label %111

111:                                              ; preds = %101, %60
  %112 = phi ptr [ %62, %60 ], [ %108, %101 ]
  %113 = phi i32 [ %64, %60 ], [ %110, %101 ]
  %114 = load i32, ptr %112, align 1
  %115 = tail call noundef i32 @llvm.bswap.i32(i32 %114)
  %116 = mul i32 %115, -1028477379
  %117 = add i32 %116, %113
  %118 = getelementptr inbounds nuw i8, ptr %112, i64 4
  %119 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 17)
  %120 = mul i32 %119, 668265263
  %121 = load i8, ptr %118, align 1
  %122 = zext i8 %121 to i32
  %123 = mul i32 %122, 374761393
  %124 = add i32 %120, %123
  %125 = tail call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 11)
  %126 = mul i32 %125, -1640531535
  br label %443

127:                                              ; preds = %60
  %128 = load i32, ptr %62, align 1
  %129 = tail call noundef i32 @llvm.bswap.i32(i32 %128)
  %130 = mul i32 %129, -1028477379
  %131 = add i32 %130, %64
  %132 = getelementptr inbounds nuw i8, ptr %62, i64 4
  %133 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 17)
  %134 = mul i32 %133, 668265263
  br label %135

135:                                              ; preds = %127, %60
  %136 = phi ptr [ %62, %60 ], [ %132, %127 ]
  %137 = phi i32 [ %64, %60 ], [ %134, %127 ]
  %138 = load i32, ptr %136, align 1
  %139 = tail call noundef i32 @llvm.bswap.i32(i32 %138)
  %140 = mul i32 %139, -1028477379
  %141 = add i32 %140, %137
  %142 = getelementptr inbounds nuw i8, ptr %136, i64 4
  %143 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 17)
  %144 = mul i32 %143, 668265263
  br label %145

145:                                              ; preds = %135, %60
  %146 = phi ptr [ %62, %60 ], [ %142, %135 ]
  %147 = phi i32 [ %64, %60 ], [ %144, %135 ]
  %148 = load i32, ptr %146, align 1
  %149 = tail call noundef i32 @llvm.bswap.i32(i32 %148)
  %150 = mul i32 %149, -1028477379
  %151 = add i32 %150, %147
  %152 = getelementptr inbounds nuw i8, ptr %146, i64 4
  %153 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 17)
  %154 = mul i32 %153, 668265263
  %155 = getelementptr inbounds nuw i8, ptr %146, i64 5
  %156 = load i8, ptr %152, align 1
  %157 = zext i8 %156 to i32
  %158 = mul i32 %157, 374761393
  %159 = add i32 %154, %158
  %160 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 11)
  %161 = mul i32 %160, -1640531535
  %162 = load i8, ptr %155, align 1
  %163 = zext i8 %162 to i32
  %164 = mul i32 %163, 374761393
  %165 = add i32 %161, %164
  %166 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 11)
  %167 = mul i32 %166, -1640531535
  br label %443

168:                                              ; preds = %60
  %169 = load i32, ptr %62, align 1
  %170 = tail call noundef i32 @llvm.bswap.i32(i32 %169)
  %171 = mul i32 %170, -1028477379
  %172 = add i32 %171, %64
  %173 = getelementptr inbounds nuw i8, ptr %62, i64 4
  %174 = tail call i32 @llvm.fshl.i32(i32 %172, i32 %172, i32 17)
  %175 = mul i32 %174, 668265263
  br label %176

176:                                              ; preds = %168, %60
  %177 = phi ptr [ %62, %60 ], [ %173, %168 ]
  %178 = phi i32 [ %64, %60 ], [ %175, %168 ]
  %179 = load i32, ptr %177, align 1
  %180 = tail call noundef i32 @llvm.bswap.i32(i32 %179)
  %181 = mul i32 %180, -1028477379
  %182 = add i32 %181, %178
  %183 = getelementptr inbounds nuw i8, ptr %177, i64 4
  %184 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 17)
  %185 = mul i32 %184, 668265263
  br label %186

186:                                              ; preds = %176, %60
  %187 = phi ptr [ %62, %60 ], [ %183, %176 ]
  %188 = phi i32 [ %64, %60 ], [ %185, %176 ]
  %189 = load i32, ptr %187, align 1
  %190 = tail call noundef i32 @llvm.bswap.i32(i32 %189)
  %191 = mul i32 %190, -1028477379
  %192 = add i32 %191, %188
  %193 = getelementptr inbounds nuw i8, ptr %187, i64 4
  %194 = tail call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 17)
  %195 = mul i32 %194, 668265263
  br label %196

196:                                              ; preds = %186, %60
  %197 = phi ptr [ %62, %60 ], [ %193, %186 ]
  %198 = phi i32 [ %64, %60 ], [ %195, %186 ]
  %199 = getelementptr inbounds nuw i8, ptr %197, i64 1
  %200 = load i8, ptr %197, align 1
  %201 = zext i8 %200 to i32
  %202 = mul i32 %201, 374761393
  %203 = add i32 %202, %198
  %204 = tail call i32 @llvm.fshl.i32(i32 %203, i32 %203, i32 11)
  %205 = mul i32 %204, -1640531535
  br label %206

206:                                              ; preds = %196, %60
  %207 = phi ptr [ %62, %60 ], [ %199, %196 ]
  %208 = phi i32 [ %64, %60 ], [ %205, %196 ]
  %209 = getelementptr inbounds nuw i8, ptr %207, i64 1
  %210 = load i8, ptr %207, align 1
  %211 = zext i8 %210 to i32
  %212 = mul i32 %211, 374761393
  %213 = add i32 %212, %208
  %214 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 11)
  %215 = mul i32 %214, -1640531535
  br label %216

216:                                              ; preds = %206, %60
  %217 = phi ptr [ %62, %60 ], [ %209, %206 ]
  %218 = phi i32 [ %64, %60 ], [ %215, %206 ]
  %219 = load i8, ptr %217, align 1
  %220 = zext i8 %219 to i32
  %221 = mul i32 %220, 374761393
  %222 = add i32 %221, %218
  %223 = tail call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 11)
  %224 = mul i32 %223, -1640531535
  br label %443

225:                                              ; preds = %278, %60
  unreachable

226:                                              ; preds = %3
  br i1 %7, label %227, label %276

227:                                              ; preds = %226
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %229 = getelementptr inbounds i8, ptr %228, i64 -15
  %230 = add i32 %2, 606290984
  %231 = add i32 %2, -2048144777
  %232 = add i32 %2, 1640531535
  br label %233

233:                                              ; preds = %233, %227
  %234 = phi ptr [ %0, %227 ], [ %266, %233 ]
  %235 = phi i32 [ %230, %227 ], [ %244, %233 ]
  %236 = phi i32 [ %231, %227 ], [ %251, %233 ]
  %237 = phi i32 [ %2, %227 ], [ %258, %233 ]
  %238 = phi i32 [ %232, %227 ], [ %265, %233 ]
  %239 = load i32, ptr %234, align 1
  %240 = tail call noundef i32 @llvm.bswap.i32(i32 %239)
  %241 = mul i32 %240, -2048144777
  %242 = add i32 %241, %235
  %243 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 13)
  %244 = mul i32 %243, -1640531535
  %245 = getelementptr inbounds nuw i8, ptr %234, i64 4
  %246 = load i32, ptr %245, align 1
  %247 = tail call noundef i32 @llvm.bswap.i32(i32 %246)
  %248 = mul i32 %247, -2048144777
  %249 = add i32 %248, %236
  %250 = tail call i32 @llvm.fshl.i32(i32 %249, i32 %249, i32 13)
  %251 = mul i32 %250, -1640531535
  %252 = getelementptr inbounds nuw i8, ptr %234, i64 8
  %253 = load i32, ptr %252, align 1
  %254 = tail call noundef i32 @llvm.bswap.i32(i32 %253)
  %255 = mul i32 %254, -2048144777
  %256 = add i32 %255, %237
  %257 = tail call i32 @llvm.fshl.i32(i32 %256, i32 %256, i32 13)
  %258 = mul i32 %257, -1640531535
  %259 = getelementptr inbounds nuw i8, ptr %234, i64 12
  %260 = load i32, ptr %259, align 1
  %261 = tail call noundef i32 @llvm.bswap.i32(i32 %260)
  %262 = mul i32 %261, -2048144777
  %263 = add i32 %262, %238
  %264 = tail call i32 @llvm.fshl.i32(i32 %263, i32 %263, i32 13)
  %265 = mul i32 %264, -1640531535
  %266 = getelementptr inbounds nuw i8, ptr %234, i64 16
  %267 = icmp ult ptr %266, %229
  br i1 %267, label %233, label %268

268:                                              ; preds = %233
  %269 = tail call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 1)
  %270 = tail call i32 @llvm.fshl.i32(i32 %251, i32 %251, i32 7)
  %271 = add i32 %270, %269
  %272 = tail call i32 @llvm.fshl.i32(i32 %258, i32 %258, i32 12)
  %273 = add i32 %271, %272
  %274 = tail call i32 @llvm.fshl.i32(i32 %265, i32 %265, i32 18)
  %275 = add i32 %273, %274
  br label %278

276:                                              ; preds = %226
  %277 = add i32 %2, 374761393
  br label %278

278:                                              ; preds = %268, %276
  %279 = phi i32 [ %275, %268 ], [ %277, %276 ]
  %280 = phi ptr [ %266, %268 ], [ %0, %276 ]
  %281 = trunc i64 %1 to i32
  %282 = add i32 %279, %281
  %283 = and i64 %1, 15
  switch i64 %283, label %225 [
    i64 12, label %284
    i64 8, label %292
    i64 4, label %302
    i64 13, label %311
    i64 9, label %319
    i64 5, label %329
    i64 14, label %345
    i64 10, label %353
    i64 6, label %363
    i64 15, label %386
    i64 11, label %394
    i64 7, label %404
    i64 3, label %414
    i64 2, label %424
    i64 1, label %434
    i64 0, label %443
  ]

284:                                              ; preds = %278
  %285 = load i32, ptr %280, align 1
  %286 = tail call noundef i32 @llvm.bswap.i32(i32 %285)
  %287 = mul i32 %286, -1028477379
  %288 = add i32 %287, %282
  %289 = getelementptr inbounds nuw i8, ptr %280, i64 4
  %290 = tail call i32 @llvm.fshl.i32(i32 %288, i32 %288, i32 17)
  %291 = mul i32 %290, 668265263
  br label %292

292:                                              ; preds = %284, %278
  %293 = phi ptr [ %280, %278 ], [ %289, %284 ]
  %294 = phi i32 [ %282, %278 ], [ %291, %284 ]
  %295 = load i32, ptr %293, align 1
  %296 = tail call noundef i32 @llvm.bswap.i32(i32 %295)
  %297 = mul i32 %296, -1028477379
  %298 = add i32 %297, %294
  %299 = getelementptr inbounds nuw i8, ptr %293, i64 4
  %300 = tail call i32 @llvm.fshl.i32(i32 %298, i32 %298, i32 17)
  %301 = mul i32 %300, 668265263
  br label %302

302:                                              ; preds = %292, %278
  %303 = phi ptr [ %280, %278 ], [ %299, %292 ]
  %304 = phi i32 [ %282, %278 ], [ %301, %292 ]
  %305 = load i32, ptr %303, align 1
  %306 = tail call noundef i32 @llvm.bswap.i32(i32 %305)
  %307 = mul i32 %306, -1028477379
  %308 = add i32 %307, %304
  %309 = tail call i32 @llvm.fshl.i32(i32 %308, i32 %308, i32 17)
  %310 = mul i32 %309, 668265263
  br label %443

311:                                              ; preds = %278
  %312 = load i32, ptr %280, align 1
  %313 = tail call noundef i32 @llvm.bswap.i32(i32 %312)
  %314 = mul i32 %313, -1028477379
  %315 = add i32 %314, %282
  %316 = getelementptr inbounds nuw i8, ptr %280, i64 4
  %317 = tail call i32 @llvm.fshl.i32(i32 %315, i32 %315, i32 17)
  %318 = mul i32 %317, 668265263
  br label %319

319:                                              ; preds = %311, %278
  %320 = phi ptr [ %280, %278 ], [ %316, %311 ]
  %321 = phi i32 [ %282, %278 ], [ %318, %311 ]
  %322 = load i32, ptr %320, align 1
  %323 = tail call noundef i32 @llvm.bswap.i32(i32 %322)
  %324 = mul i32 %323, -1028477379
  %325 = add i32 %324, %321
  %326 = getelementptr inbounds nuw i8, ptr %320, i64 4
  %327 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 17)
  %328 = mul i32 %327, 668265263
  br label %329

329:                                              ; preds = %319, %278
  %330 = phi ptr [ %280, %278 ], [ %326, %319 ]
  %331 = phi i32 [ %282, %278 ], [ %328, %319 ]
  %332 = load i32, ptr %330, align 1
  %333 = tail call noundef i32 @llvm.bswap.i32(i32 %332)
  %334 = mul i32 %333, -1028477379
  %335 = add i32 %334, %331
  %336 = getelementptr inbounds nuw i8, ptr %330, i64 4
  %337 = tail call i32 @llvm.fshl.i32(i32 %335, i32 %335, i32 17)
  %338 = mul i32 %337, 668265263
  %339 = load i8, ptr %336, align 1
  %340 = zext i8 %339 to i32
  %341 = mul i32 %340, 374761393
  %342 = add i32 %338, %341
  %343 = tail call i32 @llvm.fshl.i32(i32 %342, i32 %342, i32 11)
  %344 = mul i32 %343, -1640531535
  br label %443

345:                                              ; preds = %278
  %346 = load i32, ptr %280, align 1
  %347 = tail call noundef i32 @llvm.bswap.i32(i32 %346)
  %348 = mul i32 %347, -1028477379
  %349 = add i32 %348, %282
  %350 = getelementptr inbounds nuw i8, ptr %280, i64 4
  %351 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 17)
  %352 = mul i32 %351, 668265263
  br label %353

353:                                              ; preds = %345, %278
  %354 = phi ptr [ %280, %278 ], [ %350, %345 ]
  %355 = phi i32 [ %282, %278 ], [ %352, %345 ]
  %356 = load i32, ptr %354, align 1
  %357 = tail call noundef i32 @llvm.bswap.i32(i32 %356)
  %358 = mul i32 %357, -1028477379
  %359 = add i32 %358, %355
  %360 = getelementptr inbounds nuw i8, ptr %354, i64 4
  %361 = tail call i32 @llvm.fshl.i32(i32 %359, i32 %359, i32 17)
  %362 = mul i32 %361, 668265263
  br label %363

363:                                              ; preds = %353, %278
  %364 = phi ptr [ %280, %278 ], [ %360, %353 ]
  %365 = phi i32 [ %282, %278 ], [ %362, %353 ]
  %366 = load i32, ptr %364, align 1
  %367 = tail call noundef i32 @llvm.bswap.i32(i32 %366)
  %368 = mul i32 %367, -1028477379
  %369 = add i32 %368, %365
  %370 = getelementptr inbounds nuw i8, ptr %364, i64 4
  %371 = tail call i32 @llvm.fshl.i32(i32 %369, i32 %369, i32 17)
  %372 = mul i32 %371, 668265263
  %373 = getelementptr inbounds nuw i8, ptr %364, i64 5
  %374 = load i8, ptr %370, align 1
  %375 = zext i8 %374 to i32
  %376 = mul i32 %375, 374761393
  %377 = add i32 %372, %376
  %378 = tail call i32 @llvm.fshl.i32(i32 %377, i32 %377, i32 11)
  %379 = mul i32 %378, -1640531535
  %380 = load i8, ptr %373, align 1
  %381 = zext i8 %380 to i32
  %382 = mul i32 %381, 374761393
  %383 = add i32 %379, %382
  %384 = tail call i32 @llvm.fshl.i32(i32 %383, i32 %383, i32 11)
  %385 = mul i32 %384, -1640531535
  br label %443

386:                                              ; preds = %278
  %387 = load i32, ptr %280, align 1
  %388 = tail call noundef i32 @llvm.bswap.i32(i32 %387)
  %389 = mul i32 %388, -1028477379
  %390 = add i32 %389, %282
  %391 = getelementptr inbounds nuw i8, ptr %280, i64 4
  %392 = tail call i32 @llvm.fshl.i32(i32 %390, i32 %390, i32 17)
  %393 = mul i32 %392, 668265263
  br label %394

394:                                              ; preds = %386, %278
  %395 = phi ptr [ %280, %278 ], [ %391, %386 ]
  %396 = phi i32 [ %282, %278 ], [ %393, %386 ]
  %397 = load i32, ptr %395, align 1
  %398 = tail call noundef i32 @llvm.bswap.i32(i32 %397)
  %399 = mul i32 %398, -1028477379
  %400 = add i32 %399, %396
  %401 = getelementptr inbounds nuw i8, ptr %395, i64 4
  %402 = tail call i32 @llvm.fshl.i32(i32 %400, i32 %400, i32 17)
  %403 = mul i32 %402, 668265263
  br label %404

404:                                              ; preds = %394, %278
  %405 = phi ptr [ %280, %278 ], [ %401, %394 ]
  %406 = phi i32 [ %282, %278 ], [ %403, %394 ]
  %407 = load i32, ptr %405, align 1
  %408 = tail call noundef i32 @llvm.bswap.i32(i32 %407)
  %409 = mul i32 %408, -1028477379
  %410 = add i32 %409, %406
  %411 = getelementptr inbounds nuw i8, ptr %405, i64 4
  %412 = tail call i32 @llvm.fshl.i32(i32 %410, i32 %410, i32 17)
  %413 = mul i32 %412, 668265263
  br label %414

414:                                              ; preds = %404, %278
  %415 = phi ptr [ %280, %278 ], [ %411, %404 ]
  %416 = phi i32 [ %282, %278 ], [ %413, %404 ]
  %417 = getelementptr inbounds nuw i8, ptr %415, i64 1
  %418 = load i8, ptr %415, align 1
  %419 = zext i8 %418 to i32
  %420 = mul i32 %419, 374761393
  %421 = add i32 %420, %416
  %422 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 11)
  %423 = mul i32 %422, -1640531535
  br label %424

424:                                              ; preds = %414, %278
  %425 = phi ptr [ %280, %278 ], [ %417, %414 ]
  %426 = phi i32 [ %282, %278 ], [ %423, %414 ]
  %427 = getelementptr inbounds nuw i8, ptr %425, i64 1
  %428 = load i8, ptr %425, align 1
  %429 = zext i8 %428 to i32
  %430 = mul i32 %429, 374761393
  %431 = add i32 %430, %426
  %432 = tail call i32 @llvm.fshl.i32(i32 %431, i32 %431, i32 11)
  %433 = mul i32 %432, -1640531535
  br label %434

434:                                              ; preds = %424, %278
  %435 = phi ptr [ %280, %278 ], [ %427, %424 ]
  %436 = phi i32 [ %282, %278 ], [ %433, %424 ]
  %437 = load i8, ptr %435, align 1
  %438 = zext i8 %437 to i32
  %439 = mul i32 %438, 374761393
  %440 = add i32 %439, %436
  %441 = tail call i32 @llvm.fshl.i32(i32 %440, i32 %440, i32 11)
  %442 = mul i32 %441, -1640531535
  br label %443

443:                                              ; preds = %434, %363, %329, %302, %278, %216, %145, %111, %84, %60
  %444 = phi i32 [ %167, %145 ], [ %126, %111 ], [ %92, %84 ], [ %64, %60 ], [ %224, %216 ], [ %385, %363 ], [ %344, %329 ], [ %310, %302 ], [ %282, %278 ], [ %442, %434 ]
  %445 = lshr i32 %444, 15
  %446 = xor i32 %445, %444
  %447 = mul i32 %446, -2048144777
  %448 = lshr i32 %447, 13
  %449 = xor i32 %448, %447
  %450 = mul i32 %449, -1028477379
  %451 = lshr i32 %450, 16
  %452 = xor i32 %451, %450
  ret i32 %452
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #25
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef zeroext i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH32_copyState(ptr noundef writeonly initializes((0, 48)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef zeroext i32 @XXH32_reset(ptr noundef writeonly initializes((0, 44)) %0, i32 noundef zeroext %1) local_unnamed_addr #6 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  store i64 0, ptr %0, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %5, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i64 20, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local zeroext range(i32 0, 2) i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %133, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = trunc i64 %2 to i32
  %8 = load i32, ptr %0, align 4
  %9 = add i32 %8, %7
  store i32 %9, ptr %0, align 4
  %10 = icmp ugt i64 %2, 15
  %11 = icmp ugt i32 %9, 15
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 %2, %19
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %25 = load i32, ptr %17, align 4
  %26 = add i32 %25, %7
  br label %131

27:                                               ; preds = %5
  %28 = icmp eq i32 %18, 0
  br i1 %28, label %73, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 %19
  %32 = sub i32 16, %18
  %33 = zext i32 %32 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr nonnull readonly align 1 %1, i64 %33, i1 false)
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %30, align 1
  %37 = tail call noundef i32 @llvm.bswap.i32(i32 %36)
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %35
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  store i32 %41, ptr %34, align 4
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 1
  %46 = tail call noundef i32 @llvm.bswap.i32(i32 %45)
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %44
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  store i32 %50, ptr %43, align 4
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %51, align 1
  %55 = tail call noundef i32 @llvm.bswap.i32(i32 %54)
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %53
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  store i32 %59, ptr %52, align 4
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %60, align 1
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = mul i32 %64, -2048144777
  %66 = add i32 %65, %62
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 13)
  %68 = mul i32 %67, -1640531535
  store i32 %68, ptr %61, align 4
  %69 = load i32, ptr %17, align 4
  %70 = sub i32 16, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 %71
  store i32 0, ptr %17, align 4
  br label %73

73:                                               ; preds = %29, %27
  %74 = phi ptr [ %72, %29 ], [ %1, %27 ]
  %75 = getelementptr inbounds i8, ptr %6, i64 -16
  %76 = icmp ugt ptr %74, %75
  br i1 %76, label %122, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %85 = load i32, ptr %84, align 4
  br label %86

86:                                               ; preds = %86, %77
  %87 = phi ptr [ %74, %77 ], [ %119, %86 ]
  %88 = phi i32 [ %79, %77 ], [ %97, %86 ]
  %89 = phi i32 [ %81, %77 ], [ %104, %86 ]
  %90 = phi i32 [ %83, %77 ], [ %111, %86 ]
  %91 = phi i32 [ %85, %77 ], [ %118, %86 ]
  %92 = load i32, ptr %87, align 1
  %93 = tail call noundef i32 @llvm.bswap.i32(i32 %92)
  %94 = mul i32 %93, -2048144777
  %95 = add i32 %94, %88
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = getelementptr inbounds nuw i8, ptr %87, i64 4
  %99 = load i32, ptr %98, align 1
  %100 = tail call noundef i32 @llvm.bswap.i32(i32 %99)
  %101 = mul i32 %100, -2048144777
  %102 = add i32 %101, %89
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 13)
  %104 = mul i32 %103, -1640531535
  %105 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %106 = load i32, ptr %105, align 1
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = mul i32 %107, -2048144777
  %109 = add i32 %108, %90
  %110 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 13)
  %111 = mul i32 %110, -1640531535
  %112 = getelementptr inbounds nuw i8, ptr %87, i64 12
  %113 = load i32, ptr %112, align 1
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = mul i32 %114, -2048144777
  %116 = add i32 %115, %91
  %117 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 13)
  %118 = mul i32 %117, -1640531535
  %119 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %120 = icmp ugt ptr %119, %75
  br i1 %120, label %121, label %86

121:                                              ; preds = %86
  store i32 %97, ptr %78, align 4
  store i32 %104, ptr %80, align 4
  store i32 %111, ptr %82, align 4
  store i32 %118, ptr %84, align 4
  br label %122

122:                                              ; preds = %121, %73
  %123 = phi ptr [ %119, %121 ], [ %74, %73 ]
  %124 = icmp ult ptr %123, %6
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %127 = ptrtoint ptr %6 to i64
  %128 = ptrtoint ptr %123 to i64
  %129 = sub i64 %127, %128
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %126, ptr nonnull readonly align 1 %123, i64 %129, i1 false)
  %130 = trunc i64 %129 to i32
  br label %131

131:                                              ; preds = %125, %22
  %132 = phi i32 [ %26, %22 ], [ %130, %125 ]
  store i32 %132, ptr %17, align 4
  br label %133

133:                                              ; preds = %131, %122, %3
  %134 = phi i32 [ 1, %3 ], [ 0, %122 ], [ 0, %131 ]
  ret i32 %134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i32 @XXH32_digest(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 1)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 7)
  %12 = add i32 %11, %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 12)
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 18)
  %20 = add i32 %16, %19
  br label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 374761393
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i32 [ %20, %5 ], [ %24, %21 ]
  %27 = load i32, ptr %0, align 4
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 15
  switch i32 %32, label %192 [
    i32 12, label %33
    i32 8, label %41
    i32 4, label %51
    i32 13, label %60
    i32 9, label %68
    i32 5, label %78
    i32 14, label %94
    i32 10, label %102
    i32 6, label %112
    i32 15, label %135
    i32 11, label %143
    i32 7, label %153
    i32 3, label %163
    i32 2, label %173
    i32 1, label %183
    i32 0, label %193
  ]

33:                                               ; preds = %25
  %34 = load i32, ptr %29, align 1
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = mul i32 %35, -1028477379
  %37 = add i32 %36, %28
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %39 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 17)
  %40 = mul i32 %39, 668265263
  br label %41

41:                                               ; preds = %33, %25
  %42 = phi ptr [ %29, %25 ], [ %38, %33 ]
  %43 = phi i32 [ %28, %25 ], [ %40, %33 ]
  %44 = load i32, ptr %42, align 1
  %45 = tail call noundef i32 @llvm.bswap.i32(i32 %44)
  %46 = mul i32 %45, -1028477379
  %47 = add i32 %46, %43
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %49 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %50 = mul i32 %49, 668265263
  br label %51

51:                                               ; preds = %41, %25
  %52 = phi ptr [ %29, %25 ], [ %48, %41 ]
  %53 = phi i32 [ %28, %25 ], [ %50, %41 ]
  %54 = load i32, ptr %52, align 1
  %55 = tail call noundef i32 @llvm.bswap.i32(i32 %54)
  %56 = mul i32 %55, -1028477379
  %57 = add i32 %56, %53
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 17)
  %59 = mul i32 %58, 668265263
  br label %193

60:                                               ; preds = %25
  %61 = load i32, ptr %29, align 1
  %62 = tail call noundef i32 @llvm.bswap.i32(i32 %61)
  %63 = mul i32 %62, -1028477379
  %64 = add i32 %63, %28
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 17)
  %67 = mul i32 %66, 668265263
  br label %68

68:                                               ; preds = %60, %25
  %69 = phi ptr [ %29, %25 ], [ %65, %60 ]
  %70 = phi i32 [ %28, %25 ], [ %67, %60 ]
  %71 = load i32, ptr %69, align 1
  %72 = tail call noundef i32 @llvm.bswap.i32(i32 %71)
  %73 = mul i32 %72, -1028477379
  %74 = add i32 %73, %70
  %75 = getelementptr inbounds nuw i8, ptr %69, i64 4
  %76 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 17)
  %77 = mul i32 %76, 668265263
  br label %78

78:                                               ; preds = %68, %25
  %79 = phi ptr [ %29, %25 ], [ %75, %68 ]
  %80 = phi i32 [ %28, %25 ], [ %77, %68 ]
  %81 = load i32, ptr %79, align 1
  %82 = tail call noundef i32 @llvm.bswap.i32(i32 %81)
  %83 = mul i32 %82, -1028477379
  %84 = add i32 %83, %80
  %85 = getelementptr inbounds nuw i8, ptr %79, i64 4
  %86 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 17)
  %87 = mul i32 %86, 668265263
  %88 = load i8, ptr %85, align 1
  %89 = zext i8 %88 to i32
  %90 = mul i32 %89, 374761393
  %91 = add i32 %87, %90
  %92 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 11)
  %93 = mul i32 %92, -1640531535
  br label %193

94:                                               ; preds = %25
  %95 = load i32, ptr %29, align 1
  %96 = tail call noundef i32 @llvm.bswap.i32(i32 %95)
  %97 = mul i32 %96, -1028477379
  %98 = add i32 %97, %28
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 17)
  %101 = mul i32 %100, 668265263
  br label %102

102:                                              ; preds = %94, %25
  %103 = phi ptr [ %29, %25 ], [ %99, %94 ]
  %104 = phi i32 [ %28, %25 ], [ %101, %94 ]
  %105 = load i32, ptr %103, align 1
  %106 = tail call noundef i32 @llvm.bswap.i32(i32 %105)
  %107 = mul i32 %106, -1028477379
  %108 = add i32 %107, %104
  %109 = getelementptr inbounds nuw i8, ptr %103, i64 4
  %110 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 17)
  %111 = mul i32 %110, 668265263
  br label %112

112:                                              ; preds = %102, %25
  %113 = phi ptr [ %29, %25 ], [ %109, %102 ]
  %114 = phi i32 [ %28, %25 ], [ %111, %102 ]
  %115 = load i32, ptr %113, align 1
  %116 = tail call noundef i32 @llvm.bswap.i32(i32 %115)
  %117 = mul i32 %116, -1028477379
  %118 = add i32 %117, %114
  %119 = getelementptr inbounds nuw i8, ptr %113, i64 4
  %120 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 17)
  %121 = mul i32 %120, 668265263
  %122 = getelementptr inbounds nuw i8, ptr %113, i64 5
  %123 = load i8, ptr %119, align 1
  %124 = zext i8 %123 to i32
  %125 = mul i32 %124, 374761393
  %126 = add i32 %121, %125
  %127 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 11)
  %128 = mul i32 %127, -1640531535
  %129 = load i8, ptr %122, align 1
  %130 = zext i8 %129 to i32
  %131 = mul i32 %130, 374761393
  %132 = add i32 %128, %131
  %133 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 11)
  %134 = mul i32 %133, -1640531535
  br label %193

135:                                              ; preds = %25
  %136 = load i32, ptr %29, align 1
  %137 = tail call noundef i32 @llvm.bswap.i32(i32 %136)
  %138 = mul i32 %137, -1028477379
  %139 = add i32 %138, %28
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %141 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 17)
  %142 = mul i32 %141, 668265263
  br label %143

143:                                              ; preds = %135, %25
  %144 = phi ptr [ %29, %25 ], [ %140, %135 ]
  %145 = phi i32 [ %28, %25 ], [ %142, %135 ]
  %146 = load i32, ptr %144, align 1
  %147 = tail call noundef i32 @llvm.bswap.i32(i32 %146)
  %148 = mul i32 %147, -1028477379
  %149 = add i32 %148, %145
  %150 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %151 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 17)
  %152 = mul i32 %151, 668265263
  br label %153

153:                                              ; preds = %143, %25
  %154 = phi ptr [ %29, %25 ], [ %150, %143 ]
  %155 = phi i32 [ %28, %25 ], [ %152, %143 ]
  %156 = load i32, ptr %154, align 1
  %157 = tail call noundef i32 @llvm.bswap.i32(i32 %156)
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %155
  %160 = getelementptr inbounds nuw i8, ptr %154, i64 4
  %161 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  br label %163

163:                                              ; preds = %153, %25
  %164 = phi ptr [ %29, %25 ], [ %160, %153 ]
  %165 = phi i32 [ %28, %25 ], [ %162, %153 ]
  %166 = getelementptr inbounds nuw i8, ptr %164, i64 1
  %167 = load i8, ptr %164, align 1
  %168 = zext i8 %167 to i32
  %169 = mul i32 %168, 374761393
  %170 = add i32 %169, %165
  %171 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 11)
  %172 = mul i32 %171, -1640531535
  br label %173

173:                                              ; preds = %163, %25
  %174 = phi ptr [ %29, %25 ], [ %166, %163 ]
  %175 = phi i32 [ %28, %25 ], [ %172, %163 ]
  %176 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %177 = load i8, ptr %174, align 1
  %178 = zext i8 %177 to i32
  %179 = mul i32 %178, 374761393
  %180 = add i32 %179, %175
  %181 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 11)
  %182 = mul i32 %181, -1640531535
  br label %183

183:                                              ; preds = %173, %25
  %184 = phi ptr [ %29, %25 ], [ %176, %173 ]
  %185 = phi i32 [ %28, %25 ], [ %182, %173 ]
  %186 = load i8, ptr %184, align 1
  %187 = zext i8 %186 to i32
  %188 = mul i32 %187, 374761393
  %189 = add i32 %188, %185
  %190 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 11)
  %191 = mul i32 %190, -1640531535
  br label %193

192:                                              ; preds = %25
  unreachable

193:                                              ; preds = %25, %51, %78, %112, %183
  %194 = phi i32 [ %134, %112 ], [ %93, %78 ], [ %59, %51 ], [ %28, %25 ], [ %191, %183 ]
  %195 = lshr i32 %194, 15
  %196 = xor i32 %195, %194
  %197 = mul i32 %196, -2048144777
  %198 = lshr i32 %197, 13
  %199 = xor i32 %198, %197
  %200 = mul i32 %199, -1028477379
  %201 = lshr i32 %200, 16
  %202 = xor i32 %201, %200
  ret i32 %202
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH32_canonicalFromHash(ptr noundef writeonly initializes((0, 4)) %0, i32 noundef zeroext %1) local_unnamed_addr #6 {
  store i32 %1, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i32 @XXH32_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 1
  ret i32 %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @XXH64(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  %7 = icmp ugt i64 %1, 31
  br i1 %6, label %8, label %519

8:                                                ; preds = %3
  br i1 %7, label %9, label %82

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -32
  %12 = add i64 %2, 6983438078262162902
  %13 = add i64 %2, -4417276706812531889
  %14 = add i64 %2, 7046029288634856825
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %0, %9 ], [ %48, %15 ]
  %17 = phi i64 [ %12, %9 ], [ %26, %15 ]
  %18 = phi i64 [ %13, %9 ], [ %33, %15 ]
  %19 = phi i64 [ %2, %9 ], [ %40, %15 ]
  %20 = phi i64 [ %14, %9 ], [ %47, %15 ]
  %21 = load i64, ptr %16, align 8
  %22 = tail call noundef i64 @llvm.bswap.i64(i64 %21)
  %23 = mul i64 %22, -4417276706812531889
  %24 = add i64 %23, %17
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %28 = load i64, ptr %27, align 8
  %29 = tail call noundef i64 @llvm.bswap.i64(i64 %28)
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, %18
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %35 = load i64, ptr %34, align 8
  %36 = tail call noundef i64 @llvm.bswap.i64(i64 %35)
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, %19
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %42 = load i64, ptr %41, align 8
  %43 = tail call noundef i64 @llvm.bswap.i64(i64 %42)
  %44 = mul i64 %43, -4417276706812531889
  %45 = add i64 %44, %20
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31)
  %47 = mul i64 %46, -7046029288634856825
  %48 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %49 = icmp ugt ptr %48, %11
  br i1 %49, label %50, label %15

50:                                               ; preds = %15
  %51 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 1)
  %52 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 7)
  %53 = add i64 %52, %51
  %54 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 12)
  %55 = add i64 %53, %54
  %56 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 18)
  %57 = add i64 %55, %56
  %58 = mul i64 %25, -2381459717836149591
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = xor i64 %57, %60
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = mul i64 %32, -2381459717836149591
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = xor i64 %63, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = mul i64 %39, -2381459717836149591
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %69, %72
  %74 = mul i64 %73, -7046029288634856825
  %75 = add i64 %74, -8796714831421723037
  %76 = mul i64 %46, -2381459717836149591
  %77 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 31)
  %78 = mul i64 %77, -7046029288634856825
  %79 = xor i64 %75, %78
  %80 = mul i64 %79, -7046029288634856825
  %81 = add i64 %80, -8796714831421723037
  br label %84

82:                                               ; preds = %8
  %83 = add i64 %2, 2870177450012600261
  br label %84

84:                                               ; preds = %50, %82
  %85 = phi i64 [ %81, %50 ], [ %83, %82 ]
  %86 = phi ptr [ %48, %50 ], [ %0, %82 ]
  %87 = add i64 %85, %1
  %88 = and i64 %1, 31
  switch i64 %88, label %518 [
    i64 24, label %89
    i64 16, label %100
    i64 8, label %113
    i64 28, label %125
    i64 20, label %136
    i64 12, label %149
    i64 4, label %162
    i64 25, label %173
    i64 17, label %184
    i64 9, label %197
    i64 29, label %216
    i64 21, label %227
    i64 13, label %240
    i64 5, label %253
    i64 26, label %271
    i64 18, label %282
    i64 10, label %295
    i64 30, label %321
    i64 22, label %332
    i64 14, label %345
    i64 6, label %358
    i64 27, label %383
    i64 19, label %394
    i64 11, label %407
    i64 31, label %440
    i64 23, label %451
    i64 15, label %464
    i64 7, label %477
    i64 3, label %489
    i64 2, label %499
    i64 1, label %509
    i64 0, label %1029
  ]

89:                                               ; preds = %84
  %90 = load i64, ptr %86, align 1
  %91 = tail call noundef i64 @llvm.bswap.i64(i64 %90)
  %92 = mul i64 %91, -4417276706812531889
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 31)
  %94 = mul i64 %93, -7046029288634856825
  %95 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %96 = xor i64 %94, %87
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 27)
  %98 = mul i64 %97, -7046029288634856825
  %99 = add i64 %98, -8796714831421723037
  br label %100

100:                                              ; preds = %89, %84
  %101 = phi ptr [ %86, %84 ], [ %95, %89 ]
  %102 = phi i64 [ %87, %84 ], [ %99, %89 ]
  %103 = load i64, ptr %101, align 1
  %104 = tail call noundef i64 @llvm.bswap.i64(i64 %103)
  %105 = mul i64 %104, -4417276706812531889
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 31)
  %107 = mul i64 %106, -7046029288634856825
  %108 = getelementptr inbounds nuw i8, ptr %101, i64 8
  %109 = xor i64 %107, %102
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 27)
  %111 = mul i64 %110, -7046029288634856825
  %112 = add i64 %111, -8796714831421723037
  br label %113

113:                                              ; preds = %100, %84
  %114 = phi ptr [ %86, %84 ], [ %108, %100 ]
  %115 = phi i64 [ %87, %84 ], [ %112, %100 ]
  %116 = load i64, ptr %114, align 1
  %117 = tail call noundef i64 @llvm.bswap.i64(i64 %116)
  %118 = mul i64 %117, -4417276706812531889
  %119 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 31)
  %120 = mul i64 %119, -7046029288634856825
  %121 = xor i64 %120, %115
  %122 = tail call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 27)
  %123 = mul i64 %122, -7046029288634856825
  %124 = add i64 %123, -8796714831421723037
  br label %1029

125:                                              ; preds = %84
  %126 = load i64, ptr %86, align 1
  %127 = tail call noundef i64 @llvm.bswap.i64(i64 %126)
  %128 = mul i64 %127, -4417276706812531889
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 31)
  %130 = mul i64 %129, -7046029288634856825
  %131 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %132 = xor i64 %130, %87
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 27)
  %134 = mul i64 %133, -7046029288634856825
  %135 = add i64 %134, -8796714831421723037
  br label %136

136:                                              ; preds = %125, %84
  %137 = phi ptr [ %86, %84 ], [ %131, %125 ]
  %138 = phi i64 [ %87, %84 ], [ %135, %125 ]
  %139 = load i64, ptr %137, align 1
  %140 = tail call noundef i64 @llvm.bswap.i64(i64 %139)
  %141 = mul i64 %140, -4417276706812531889
  %142 = tail call i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 31)
  %143 = mul i64 %142, -7046029288634856825
  %144 = getelementptr inbounds nuw i8, ptr %137, i64 8
  %145 = xor i64 %143, %138
  %146 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 27)
  %147 = mul i64 %146, -7046029288634856825
  %148 = add i64 %147, -8796714831421723037
  br label %149

149:                                              ; preds = %136, %84
  %150 = phi ptr [ %86, %84 ], [ %144, %136 ]
  %151 = phi i64 [ %87, %84 ], [ %148, %136 ]
  %152 = load i64, ptr %150, align 1
  %153 = tail call noundef i64 @llvm.bswap.i64(i64 %152)
  %154 = mul i64 %153, -4417276706812531889
  %155 = tail call i64 @llvm.fshl.i64(i64 %154, i64 %154, i64 31)
  %156 = mul i64 %155, -7046029288634856825
  %157 = getelementptr inbounds nuw i8, ptr %150, i64 8
  %158 = xor i64 %156, %151
  %159 = tail call i64 @llvm.fshl.i64(i64 %158, i64 %158, i64 27)
  %160 = mul i64 %159, -7046029288634856825
  %161 = add i64 %160, -8796714831421723037
  br label %162

162:                                              ; preds = %149, %84
  %163 = phi ptr [ %86, %84 ], [ %157, %149 ]
  %164 = phi i64 [ %87, %84 ], [ %161, %149 ]
  %165 = load i32, ptr %163, align 1
  %166 = tail call noundef i32 @llvm.bswap.i32(i32 %165)
  %167 = zext i32 %166 to i64
  %168 = mul i64 %167, -7046029288634856825
  %169 = xor i64 %168, %164
  %170 = tail call i64 @llvm.fshl.i64(i64 %169, i64 %169, i64 23)
  %171 = mul i64 %170, -4417276706812531889
  %172 = add i64 %171, 1609587929392839161
  br label %1029

173:                                              ; preds = %84
  %174 = load i64, ptr %86, align 1
  %175 = tail call noundef i64 @llvm.bswap.i64(i64 %174)
  %176 = mul i64 %175, -4417276706812531889
  %177 = tail call i64 @llvm.fshl.i64(i64 %176, i64 %176, i64 31)
  %178 = mul i64 %177, -7046029288634856825
  %179 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %180 = xor i64 %178, %87
  %181 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 27)
  %182 = mul i64 %181, -7046029288634856825
  %183 = add i64 %182, -8796714831421723037
  br label %184

184:                                              ; preds = %173, %84
  %185 = phi ptr [ %86, %84 ], [ %179, %173 ]
  %186 = phi i64 [ %87, %84 ], [ %183, %173 ]
  %187 = load i64, ptr %185, align 1
  %188 = tail call noundef i64 @llvm.bswap.i64(i64 %187)
  %189 = mul i64 %188, -4417276706812531889
  %190 = tail call i64 @llvm.fshl.i64(i64 %189, i64 %189, i64 31)
  %191 = mul i64 %190, -7046029288634856825
  %192 = getelementptr inbounds nuw i8, ptr %185, i64 8
  %193 = xor i64 %191, %186
  %194 = tail call i64 @llvm.fshl.i64(i64 %193, i64 %193, i64 27)
  %195 = mul i64 %194, -7046029288634856825
  %196 = add i64 %195, -8796714831421723037
  br label %197

197:                                              ; preds = %184, %84
  %198 = phi ptr [ %86, %84 ], [ %192, %184 ]
  %199 = phi i64 [ %87, %84 ], [ %196, %184 ]
  %200 = load i64, ptr %198, align 1
  %201 = tail call noundef i64 @llvm.bswap.i64(i64 %200)
  %202 = mul i64 %201, -4417276706812531889
  %203 = tail call i64 @llvm.fshl.i64(i64 %202, i64 %202, i64 31)
  %204 = mul i64 %203, -7046029288634856825
  %205 = getelementptr inbounds nuw i8, ptr %198, i64 8
  %206 = xor i64 %204, %199
  %207 = tail call i64 @llvm.fshl.i64(i64 %206, i64 %206, i64 27)
  %208 = mul i64 %207, -7046029288634856825
  %209 = add i64 %208, -8796714831421723037
  %210 = load i8, ptr %205, align 1
  %211 = zext i8 %210 to i64
  %212 = mul i64 %211, 2870177450012600261
  %213 = xor i64 %209, %212
  %214 = tail call i64 @llvm.fshl.i64(i64 %213, i64 %213, i64 11)
  %215 = mul i64 %214, -7046029288634856825
  br label %1029

216:                                              ; preds = %84
  %217 = load i64, ptr %86, align 1
  %218 = tail call noundef i64 @llvm.bswap.i64(i64 %217)
  %219 = mul i64 %218, -4417276706812531889
  %220 = tail call i64 @llvm.fshl.i64(i64 %219, i64 %219, i64 31)
  %221 = mul i64 %220, -7046029288634856825
  %222 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %223 = xor i64 %221, %87
  %224 = tail call i64 @llvm.fshl.i64(i64 %223, i64 %223, i64 27)
  %225 = mul i64 %224, -7046029288634856825
  %226 = add i64 %225, -8796714831421723037
  br label %227

227:                                              ; preds = %216, %84
  %228 = phi ptr [ %86, %84 ], [ %222, %216 ]
  %229 = phi i64 [ %87, %84 ], [ %226, %216 ]
  %230 = load i64, ptr %228, align 1
  %231 = tail call noundef i64 @llvm.bswap.i64(i64 %230)
  %232 = mul i64 %231, -4417276706812531889
  %233 = tail call i64 @llvm.fshl.i64(i64 %232, i64 %232, i64 31)
  %234 = mul i64 %233, -7046029288634856825
  %235 = getelementptr inbounds nuw i8, ptr %228, i64 8
  %236 = xor i64 %234, %229
  %237 = tail call i64 @llvm.fshl.i64(i64 %236, i64 %236, i64 27)
  %238 = mul i64 %237, -7046029288634856825
  %239 = add i64 %238, -8796714831421723037
  br label %240

240:                                              ; preds = %227, %84
  %241 = phi ptr [ %86, %84 ], [ %235, %227 ]
  %242 = phi i64 [ %87, %84 ], [ %239, %227 ]
  %243 = load i64, ptr %241, align 1
  %244 = tail call noundef i64 @llvm.bswap.i64(i64 %243)
  %245 = mul i64 %244, -4417276706812531889
  %246 = tail call i64 @llvm.fshl.i64(i64 %245, i64 %245, i64 31)
  %247 = mul i64 %246, -7046029288634856825
  %248 = getelementptr inbounds nuw i8, ptr %241, i64 8
  %249 = xor i64 %247, %242
  %250 = tail call i64 @llvm.fshl.i64(i64 %249, i64 %249, i64 27)
  %251 = mul i64 %250, -7046029288634856825
  %252 = add i64 %251, -8796714831421723037
  br label %253

253:                                              ; preds = %240, %84
  %254 = phi ptr [ %86, %84 ], [ %248, %240 ]
  %255 = phi i64 [ %87, %84 ], [ %252, %240 ]
  %256 = load i32, ptr %254, align 1
  %257 = tail call noundef i32 @llvm.bswap.i32(i32 %256)
  %258 = zext i32 %257 to i64
  %259 = mul i64 %258, -7046029288634856825
  %260 = xor i64 %259, %255
  %261 = getelementptr inbounds nuw i8, ptr %254, i64 4
  %262 = tail call i64 @llvm.fshl.i64(i64 %260, i64 %260, i64 23)
  %263 = mul i64 %262, -4417276706812531889
  %264 = add i64 %263, 1609587929392839161
  %265 = load i8, ptr %261, align 1
  %266 = zext i8 %265 to i64
  %267 = mul i64 %266, 2870177450012600261
  %268 = xor i64 %264, %267
  %269 = tail call i64 @llvm.fshl.i64(i64 %268, i64 %268, i64 11)
  %270 = mul i64 %269, -7046029288634856825
  br label %1029

271:                                              ; preds = %84
  %272 = load i64, ptr %86, align 1
  %273 = tail call noundef i64 @llvm.bswap.i64(i64 %272)
  %274 = mul i64 %273, -4417276706812531889
  %275 = tail call i64 @llvm.fshl.i64(i64 %274, i64 %274, i64 31)
  %276 = mul i64 %275, -7046029288634856825
  %277 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %278 = xor i64 %276, %87
  %279 = tail call i64 @llvm.fshl.i64(i64 %278, i64 %278, i64 27)
  %280 = mul i64 %279, -7046029288634856825
  %281 = add i64 %280, -8796714831421723037
  br label %282

282:                                              ; preds = %271, %84
  %283 = phi ptr [ %86, %84 ], [ %277, %271 ]
  %284 = phi i64 [ %87, %84 ], [ %281, %271 ]
  %285 = load i64, ptr %283, align 1
  %286 = tail call noundef i64 @llvm.bswap.i64(i64 %285)
  %287 = mul i64 %286, -4417276706812531889
  %288 = tail call i64 @llvm.fshl.i64(i64 %287, i64 %287, i64 31)
  %289 = mul i64 %288, -7046029288634856825
  %290 = getelementptr inbounds nuw i8, ptr %283, i64 8
  %291 = xor i64 %289, %284
  %292 = tail call i64 @llvm.fshl.i64(i64 %291, i64 %291, i64 27)
  %293 = mul i64 %292, -7046029288634856825
  %294 = add i64 %293, -8796714831421723037
  br label %295

295:                                              ; preds = %282, %84
  %296 = phi ptr [ %86, %84 ], [ %290, %282 ]
  %297 = phi i64 [ %87, %84 ], [ %294, %282 ]
  %298 = load i64, ptr %296, align 1
  %299 = tail call noundef i64 @llvm.bswap.i64(i64 %298)
  %300 = mul i64 %299, -4417276706812531889
  %301 = tail call i64 @llvm.fshl.i64(i64 %300, i64 %300, i64 31)
  %302 = mul i64 %301, -7046029288634856825
  %303 = getelementptr inbounds nuw i8, ptr %296, i64 8
  %304 = xor i64 %302, %297
  %305 = tail call i64 @llvm.fshl.i64(i64 %304, i64 %304, i64 27)
  %306 = mul i64 %305, -7046029288634856825
  %307 = add i64 %306, -8796714831421723037
  %308 = getelementptr inbounds nuw i8, ptr %296, i64 9
  %309 = load i8, ptr %303, align 1
  %310 = zext i8 %309 to i64
  %311 = mul i64 %310, 2870177450012600261
  %312 = xor i64 %307, %311
  %313 = tail call i64 @llvm.fshl.i64(i64 %312, i64 %312, i64 11)
  %314 = mul i64 %313, -7046029288634856825
  %315 = load i8, ptr %308, align 1
  %316 = zext i8 %315 to i64
  %317 = mul i64 %316, 2870177450012600261
  %318 = xor i64 %314, %317
  %319 = tail call i64 @llvm.fshl.i64(i64 %318, i64 %318, i64 11)
  %320 = mul i64 %319, -7046029288634856825
  br label %1029

321:                                              ; preds = %84
  %322 = load i64, ptr %86, align 1
  %323 = tail call noundef i64 @llvm.bswap.i64(i64 %322)
  %324 = mul i64 %323, -4417276706812531889
  %325 = tail call i64 @llvm.fshl.i64(i64 %324, i64 %324, i64 31)
  %326 = mul i64 %325, -7046029288634856825
  %327 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %328 = xor i64 %326, %87
  %329 = tail call i64 @llvm.fshl.i64(i64 %328, i64 %328, i64 27)
  %330 = mul i64 %329, -7046029288634856825
  %331 = add i64 %330, -8796714831421723037
  br label %332

332:                                              ; preds = %321, %84
  %333 = phi ptr [ %86, %84 ], [ %327, %321 ]
  %334 = phi i64 [ %87, %84 ], [ %331, %321 ]
  %335 = load i64, ptr %333, align 1
  %336 = tail call noundef i64 @llvm.bswap.i64(i64 %335)
  %337 = mul i64 %336, -4417276706812531889
  %338 = tail call i64 @llvm.fshl.i64(i64 %337, i64 %337, i64 31)
  %339 = mul i64 %338, -7046029288634856825
  %340 = getelementptr inbounds nuw i8, ptr %333, i64 8
  %341 = xor i64 %339, %334
  %342 = tail call i64 @llvm.fshl.i64(i64 %341, i64 %341, i64 27)
  %343 = mul i64 %342, -7046029288634856825
  %344 = add i64 %343, -8796714831421723037
  br label %345

345:                                              ; preds = %332, %84
  %346 = phi ptr [ %86, %84 ], [ %340, %332 ]
  %347 = phi i64 [ %87, %84 ], [ %344, %332 ]
  %348 = load i64, ptr %346, align 1
  %349 = tail call noundef i64 @llvm.bswap.i64(i64 %348)
  %350 = mul i64 %349, -4417276706812531889
  %351 = tail call i64 @llvm.fshl.i64(i64 %350, i64 %350, i64 31)
  %352 = mul i64 %351, -7046029288634856825
  %353 = getelementptr inbounds nuw i8, ptr %346, i64 8
  %354 = xor i64 %352, %347
  %355 = tail call i64 @llvm.fshl.i64(i64 %354, i64 %354, i64 27)
  %356 = mul i64 %355, -7046029288634856825
  %357 = add i64 %356, -8796714831421723037
  br label %358

358:                                              ; preds = %345, %84
  %359 = phi ptr [ %86, %84 ], [ %353, %345 ]
  %360 = phi i64 [ %87, %84 ], [ %357, %345 ]
  %361 = load i32, ptr %359, align 1
  %362 = tail call noundef i32 @llvm.bswap.i32(i32 %361)
  %363 = zext i32 %362 to i64
  %364 = mul i64 %363, -7046029288634856825
  %365 = xor i64 %364, %360
  %366 = getelementptr inbounds nuw i8, ptr %359, i64 4
  %367 = tail call i64 @llvm.fshl.i64(i64 %365, i64 %365, i64 23)
  %368 = mul i64 %367, -4417276706812531889
  %369 = add i64 %368, 1609587929392839161
  %370 = getelementptr inbounds nuw i8, ptr %359, i64 5
  %371 = load i8, ptr %366, align 1
  %372 = zext i8 %371 to i64
  %373 = mul i64 %372, 2870177450012600261
  %374 = xor i64 %369, %373
  %375 = tail call i64 @llvm.fshl.i64(i64 %374, i64 %374, i64 11)
  %376 = mul i64 %375, -7046029288634856825
  %377 = load i8, ptr %370, align 1
  %378 = zext i8 %377 to i64
  %379 = mul i64 %378, 2870177450012600261
  %380 = xor i64 %376, %379
  %381 = tail call i64 @llvm.fshl.i64(i64 %380, i64 %380, i64 11)
  %382 = mul i64 %381, -7046029288634856825
  br label %1029

383:                                              ; preds = %84
  %384 = load i64, ptr %86, align 1
  %385 = tail call noundef i64 @llvm.bswap.i64(i64 %384)
  %386 = mul i64 %385, -4417276706812531889
  %387 = tail call i64 @llvm.fshl.i64(i64 %386, i64 %386, i64 31)
  %388 = mul i64 %387, -7046029288634856825
  %389 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %390 = xor i64 %388, %87
  %391 = tail call i64 @llvm.fshl.i64(i64 %390, i64 %390, i64 27)
  %392 = mul i64 %391, -7046029288634856825
  %393 = add i64 %392, -8796714831421723037
  br label %394

394:                                              ; preds = %383, %84
  %395 = phi ptr [ %86, %84 ], [ %389, %383 ]
  %396 = phi i64 [ %87, %84 ], [ %393, %383 ]
  %397 = load i64, ptr %395, align 1
  %398 = tail call noundef i64 @llvm.bswap.i64(i64 %397)
  %399 = mul i64 %398, -4417276706812531889
  %400 = tail call i64 @llvm.fshl.i64(i64 %399, i64 %399, i64 31)
  %401 = mul i64 %400, -7046029288634856825
  %402 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %403 = xor i64 %401, %396
  %404 = tail call i64 @llvm.fshl.i64(i64 %403, i64 %403, i64 27)
  %405 = mul i64 %404, -7046029288634856825
  %406 = add i64 %405, -8796714831421723037
  br label %407

407:                                              ; preds = %394, %84
  %408 = phi ptr [ %86, %84 ], [ %402, %394 ]
  %409 = phi i64 [ %87, %84 ], [ %406, %394 ]
  %410 = load i64, ptr %408, align 1
  %411 = tail call noundef i64 @llvm.bswap.i64(i64 %410)
  %412 = mul i64 %411, -4417276706812531889
  %413 = tail call i64 @llvm.fshl.i64(i64 %412, i64 %412, i64 31)
  %414 = mul i64 %413, -7046029288634856825
  %415 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %416 = xor i64 %414, %409
  %417 = tail call i64 @llvm.fshl.i64(i64 %416, i64 %416, i64 27)
  %418 = mul i64 %417, -7046029288634856825
  %419 = add i64 %418, -8796714831421723037
  %420 = getelementptr inbounds nuw i8, ptr %408, i64 9
  %421 = load i8, ptr %415, align 1
  %422 = zext i8 %421 to i64
  %423 = mul i64 %422, 2870177450012600261
  %424 = xor i64 %419, %423
  %425 = tail call i64 @llvm.fshl.i64(i64 %424, i64 %424, i64 11)
  %426 = mul i64 %425, -7046029288634856825
  %427 = getelementptr inbounds nuw i8, ptr %408, i64 10
  %428 = load i8, ptr %420, align 1
  %429 = zext i8 %428 to i64
  %430 = mul i64 %429, 2870177450012600261
  %431 = xor i64 %426, %430
  %432 = tail call i64 @llvm.fshl.i64(i64 %431, i64 %431, i64 11)
  %433 = mul i64 %432, -7046029288634856825
  %434 = load i8, ptr %427, align 1
  %435 = zext i8 %434 to i64
  %436 = mul i64 %435, 2870177450012600261
  %437 = xor i64 %433, %436
  %438 = tail call i64 @llvm.fshl.i64(i64 %437, i64 %437, i64 11)
  %439 = mul i64 %438, -7046029288634856825
  br label %1029

440:                                              ; preds = %84
  %441 = load i64, ptr %86, align 1
  %442 = tail call noundef i64 @llvm.bswap.i64(i64 %441)
  %443 = mul i64 %442, -4417276706812531889
  %444 = tail call i64 @llvm.fshl.i64(i64 %443, i64 %443, i64 31)
  %445 = mul i64 %444, -7046029288634856825
  %446 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %447 = xor i64 %445, %87
  %448 = tail call i64 @llvm.fshl.i64(i64 %447, i64 %447, i64 27)
  %449 = mul i64 %448, -7046029288634856825
  %450 = add i64 %449, -8796714831421723037
  br label %451

451:                                              ; preds = %440, %84
  %452 = phi ptr [ %86, %84 ], [ %446, %440 ]
  %453 = phi i64 [ %87, %84 ], [ %450, %440 ]
  %454 = load i64, ptr %452, align 1
  %455 = tail call noundef i64 @llvm.bswap.i64(i64 %454)
  %456 = mul i64 %455, -4417276706812531889
  %457 = tail call i64 @llvm.fshl.i64(i64 %456, i64 %456, i64 31)
  %458 = mul i64 %457, -7046029288634856825
  %459 = getelementptr inbounds nuw i8, ptr %452, i64 8
  %460 = xor i64 %458, %453
  %461 = tail call i64 @llvm.fshl.i64(i64 %460, i64 %460, i64 27)
  %462 = mul i64 %461, -7046029288634856825
  %463 = add i64 %462, -8796714831421723037
  br label %464

464:                                              ; preds = %451, %84
  %465 = phi ptr [ %86, %84 ], [ %459, %451 ]
  %466 = phi i64 [ %87, %84 ], [ %463, %451 ]
  %467 = load i64, ptr %465, align 1
  %468 = tail call noundef i64 @llvm.bswap.i64(i64 %467)
  %469 = mul i64 %468, -4417276706812531889
  %470 = tail call i64 @llvm.fshl.i64(i64 %469, i64 %469, i64 31)
  %471 = mul i64 %470, -7046029288634856825
  %472 = getelementptr inbounds nuw i8, ptr %465, i64 8
  %473 = xor i64 %471, %466
  %474 = tail call i64 @llvm.fshl.i64(i64 %473, i64 %473, i64 27)
  %475 = mul i64 %474, -7046029288634856825
  %476 = add i64 %475, -8796714831421723037
  br label %477

477:                                              ; preds = %464, %84
  %478 = phi ptr [ %86, %84 ], [ %472, %464 ]
  %479 = phi i64 [ %87, %84 ], [ %476, %464 ]
  %480 = load i32, ptr %478, align 1
  %481 = tail call noundef i32 @llvm.bswap.i32(i32 %480)
  %482 = zext i32 %481 to i64
  %483 = mul i64 %482, -7046029288634856825
  %484 = xor i64 %483, %479
  %485 = getelementptr inbounds nuw i8, ptr %478, i64 4
  %486 = tail call i64 @llvm.fshl.i64(i64 %484, i64 %484, i64 23)
  %487 = mul i64 %486, -4417276706812531889
  %488 = add i64 %487, 1609587929392839161
  br label %489

489:                                              ; preds = %477, %84
  %490 = phi ptr [ %86, %84 ], [ %485, %477 ]
  %491 = phi i64 [ %87, %84 ], [ %488, %477 ]
  %492 = getelementptr inbounds nuw i8, ptr %490, i64 1
  %493 = load i8, ptr %490, align 1
  %494 = zext i8 %493 to i64
  %495 = mul i64 %494, 2870177450012600261
  %496 = xor i64 %495, %491
  %497 = tail call i64 @llvm.fshl.i64(i64 %496, i64 %496, i64 11)
  %498 = mul i64 %497, -7046029288634856825
  br label %499

499:                                              ; preds = %489, %84
  %500 = phi ptr [ %86, %84 ], [ %492, %489 ]
  %501 = phi i64 [ %87, %84 ], [ %498, %489 ]
  %502 = getelementptr inbounds nuw i8, ptr %500, i64 1
  %503 = load i8, ptr %500, align 1
  %504 = zext i8 %503 to i64
  %505 = mul i64 %504, 2870177450012600261
  %506 = xor i64 %505, %501
  %507 = tail call i64 @llvm.fshl.i64(i64 %506, i64 %506, i64 11)
  %508 = mul i64 %507, -7046029288634856825
  br label %509

509:                                              ; preds = %499, %84
  %510 = phi ptr [ %86, %84 ], [ %502, %499 ]
  %511 = phi i64 [ %87, %84 ], [ %508, %499 ]
  %512 = load i8, ptr %510, align 1
  %513 = zext i8 %512 to i64
  %514 = mul i64 %513, 2870177450012600261
  %515 = xor i64 %514, %511
  %516 = tail call i64 @llvm.fshl.i64(i64 %515, i64 %515, i64 11)
  %517 = mul i64 %516, -7046029288634856825
  br label %1029

518:                                              ; preds = %595, %84
  unreachable

519:                                              ; preds = %3
  br i1 %7, label %520, label %593

520:                                              ; preds = %519
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %522 = getelementptr inbounds i8, ptr %521, i64 -32
  %523 = add i64 %2, 6983438078262162902
  %524 = add i64 %2, -4417276706812531889
  %525 = add i64 %2, 7046029288634856825
  br label %526

526:                                              ; preds = %526, %520
  %527 = phi ptr [ %0, %520 ], [ %559, %526 ]
  %528 = phi i64 [ %523, %520 ], [ %537, %526 ]
  %529 = phi i64 [ %524, %520 ], [ %544, %526 ]
  %530 = phi i64 [ %2, %520 ], [ %551, %526 ]
  %531 = phi i64 [ %525, %520 ], [ %558, %526 ]
  %532 = load i64, ptr %527, align 1
  %533 = tail call noundef i64 @llvm.bswap.i64(i64 %532)
  %534 = mul i64 %533, -4417276706812531889
  %535 = add i64 %534, %528
  %536 = tail call i64 @llvm.fshl.i64(i64 %535, i64 %535, i64 31)
  %537 = mul i64 %536, -7046029288634856825
  %538 = getelementptr inbounds nuw i8, ptr %527, i64 8
  %539 = load i64, ptr %538, align 1
  %540 = tail call noundef i64 @llvm.bswap.i64(i64 %539)
  %541 = mul i64 %540, -4417276706812531889
  %542 = add i64 %541, %529
  %543 = tail call i64 @llvm.fshl.i64(i64 %542, i64 %542, i64 31)
  %544 = mul i64 %543, -7046029288634856825
  %545 = getelementptr inbounds nuw i8, ptr %527, i64 16
  %546 = load i64, ptr %545, align 1
  %547 = tail call noundef i64 @llvm.bswap.i64(i64 %546)
  %548 = mul i64 %547, -4417276706812531889
  %549 = add i64 %548, %530
  %550 = tail call i64 @llvm.fshl.i64(i64 %549, i64 %549, i64 31)
  %551 = mul i64 %550, -7046029288634856825
  %552 = getelementptr inbounds nuw i8, ptr %527, i64 24
  %553 = load i64, ptr %552, align 1
  %554 = tail call noundef i64 @llvm.bswap.i64(i64 %553)
  %555 = mul i64 %554, -4417276706812531889
  %556 = add i64 %555, %531
  %557 = tail call i64 @llvm.fshl.i64(i64 %556, i64 %556, i64 31)
  %558 = mul i64 %557, -7046029288634856825
  %559 = getelementptr inbounds nuw i8, ptr %527, i64 32
  %560 = icmp ugt ptr %559, %522
  br i1 %560, label %561, label %526

561:                                              ; preds = %526
  %562 = tail call i64 @llvm.fshl.i64(i64 %537, i64 %537, i64 1)
  %563 = tail call i64 @llvm.fshl.i64(i64 %544, i64 %544, i64 7)
  %564 = add i64 %563, %562
  %565 = tail call i64 @llvm.fshl.i64(i64 %551, i64 %551, i64 12)
  %566 = add i64 %564, %565
  %567 = tail call i64 @llvm.fshl.i64(i64 %558, i64 %558, i64 18)
  %568 = add i64 %566, %567
  %569 = mul i64 %536, -2381459717836149591
  %570 = tail call i64 @llvm.fshl.i64(i64 %569, i64 %569, i64 31)
  %571 = mul i64 %570, -7046029288634856825
  %572 = xor i64 %568, %571
  %573 = mul i64 %572, -7046029288634856825
  %574 = add i64 %573, -8796714831421723037
  %575 = mul i64 %543, -2381459717836149591
  %576 = tail call i64 @llvm.fshl.i64(i64 %575, i64 %575, i64 31)
  %577 = mul i64 %576, -7046029288634856825
  %578 = xor i64 %574, %577
  %579 = mul i64 %578, -7046029288634856825
  %580 = add i64 %579, -8796714831421723037
  %581 = mul i64 %550, -2381459717836149591
  %582 = tail call i64 @llvm.fshl.i64(i64 %581, i64 %581, i64 31)
  %583 = mul i64 %582, -7046029288634856825
  %584 = xor i64 %580, %583
  %585 = mul i64 %584, -7046029288634856825
  %586 = add i64 %585, -8796714831421723037
  %587 = mul i64 %557, -2381459717836149591
  %588 = tail call i64 @llvm.fshl.i64(i64 %587, i64 %587, i64 31)
  %589 = mul i64 %588, -7046029288634856825
  %590 = xor i64 %586, %589
  %591 = mul i64 %590, -7046029288634856825
  %592 = add i64 %591, -8796714831421723037
  br label %595

593:                                              ; preds = %519
  %594 = add i64 %2, 2870177450012600261
  br label %595

595:                                              ; preds = %561, %593
  %596 = phi i64 [ %592, %561 ], [ %594, %593 ]
  %597 = phi ptr [ %559, %561 ], [ %0, %593 ]
  %598 = add i64 %596, %1
  %599 = and i64 %1, 31
  switch i64 %599, label %518 [
    i64 24, label %600
    i64 16, label %611
    i64 8, label %624
    i64 28, label %636
    i64 20, label %647
    i64 12, label %660
    i64 4, label %673
    i64 25, label %684
    i64 17, label %695
    i64 9, label %708
    i64 29, label %727
    i64 21, label %738
    i64 13, label %751
    i64 5, label %764
    i64 26, label %782
    i64 18, label %793
    i64 10, label %806
    i64 30, label %832
    i64 22, label %843
    i64 14, label %856
    i64 6, label %869
    i64 27, label %894
    i64 19, label %905
    i64 11, label %918
    i64 31, label %951
    i64 23, label %962
    i64 15, label %975
    i64 7, label %988
    i64 3, label %1000
    i64 2, label %1010
    i64 1, label %1020
    i64 0, label %1029
  ]

600:                                              ; preds = %595
  %601 = load i64, ptr %597, align 1
  %602 = tail call noundef i64 @llvm.bswap.i64(i64 %601)
  %603 = mul i64 %602, -4417276706812531889
  %604 = tail call i64 @llvm.fshl.i64(i64 %603, i64 %603, i64 31)
  %605 = mul i64 %604, -7046029288634856825
  %606 = getelementptr inbounds nuw i8, ptr %597, i64 8
  %607 = xor i64 %605, %598
  %608 = tail call i64 @llvm.fshl.i64(i64 %607, i64 %607, i64 27)
  %609 = mul i64 %608, -7046029288634856825
  %610 = add i64 %609, -8796714831421723037
  br label %611

611:                                              ; preds = %600, %595
  %612 = phi ptr [ %597, %595 ], [ %606, %600 ]
  %613 = phi i64 [ %598, %595 ], [ %610, %600 ]
  %614 = load i64, ptr %612, align 1
  %615 = tail call noundef i64 @llvm.bswap.i64(i64 %614)
  %616 = mul i64 %615, -4417276706812531889
  %617 = tail call i64 @llvm.fshl.i64(i64 %616, i64 %616, i64 31)
  %618 = mul i64 %617, -7046029288634856825
  %619 = getelementptr inbounds nuw i8, ptr %612, i64 8
  %620 = xor i64 %618, %613
  %621 = tail call i64 @llvm.fshl.i64(i64 %620, i64 %620, i64 27)
  %622 = mul i64 %621, -7046029288634856825
  %623 = add i64 %622, -8796714831421723037
  br label %624

624:                                              ; preds = %611, %595
  %625 = phi ptr [ %597, %595 ], [ %619, %611 ]
  %626 = phi i64 [ %598, %595 ], [ %623, %611 ]
  %627 = load i64, ptr %625, align 1
  %628 = tail call noundef i64 @llvm.bswap.i64(i64 %627)
  %629 = mul i64 %628, -4417276706812531889
  %630 = tail call i64 @llvm.fshl.i64(i64 %629, i64 %629, i64 31)
  %631 = mul i64 %630, -7046029288634856825
  %632 = xor i64 %631, %626
  %633 = tail call i64 @llvm.fshl.i64(i64 %632, i64 %632, i64 27)
  %634 = mul i64 %633, -7046029288634856825
  %635 = add i64 %634, -8796714831421723037
  br label %1029

636:                                              ; preds = %595
  %637 = load i64, ptr %597, align 1
  %638 = tail call noundef i64 @llvm.bswap.i64(i64 %637)
  %639 = mul i64 %638, -4417276706812531889
  %640 = tail call i64 @llvm.fshl.i64(i64 %639, i64 %639, i64 31)
  %641 = mul i64 %640, -7046029288634856825
  %642 = getelementptr inbounds nuw i8, ptr %597, i64 8
  %643 = xor i64 %641, %598
  %644 = tail call i64 @llvm.fshl.i64(i64 %643, i64 %643, i64 27)
  %645 = mul i64 %644, -7046029288634856825
  %646 = add i64 %645, -8796714831421723037
  br label %647

647:                                              ; preds = %636, %595
  %648 = phi ptr [ %597, %595 ], [ %642, %636 ]
  %649 = phi i64 [ %598, %595 ], [ %646, %636 ]
  %650 = load i64, ptr %648, align 1
  %651 = tail call noundef i64 @llvm.bswap.i64(i64 %650)
  %652 = mul i64 %651, -4417276706812531889
  %653 = tail call i64 @llvm.fshl.i64(i64 %652, i64 %652, i64 31)
  %654 = mul i64 %653, -7046029288634856825
  %655 = getelementptr inbounds nuw i8, ptr %648, i64 8
  %656 = xor i64 %654, %649
  %657 = tail call i64 @llvm.fshl.i64(i64 %656, i64 %656, i64 27)
  %658 = mul i64 %657, -7046029288634856825
  %659 = add i64 %658, -8796714831421723037
  br label %660

660:                                              ; preds = %647, %595
  %661 = phi ptr [ %597, %595 ], [ %655, %647 ]
  %662 = phi i64 [ %598, %595 ], [ %659, %647 ]
  %663 = load i64, ptr %661, align 1
  %664 = tail call noundef i64 @llvm.bswap.i64(i64 %663)
  %665 = mul i64 %664, -4417276706812531889
  %666 = tail call i64 @llvm.fshl.i64(i64 %665, i64 %665, i64 31)
  %667 = mul i64 %666, -7046029288634856825
  %668 = getelementptr inbounds nuw i8, ptr %661, i64 8
  %669 = xor i64 %667, %662
  %670 = tail call i64 @llvm.fshl.i64(i64 %669, i64 %669, i64 27)
  %671 = mul i64 %670, -7046029288634856825
  %672 = add i64 %671, -8796714831421723037
  br label %673

673:                                              ; preds = %660, %595
  %674 = phi ptr [ %597, %595 ], [ %668, %660 ]
  %675 = phi i64 [ %598, %595 ], [ %672, %660 ]
  %676 = load i32, ptr %674, align 1
  %677 = tail call noundef i32 @llvm.bswap.i32(i32 %676)
  %678 = zext i32 %677 to i64
  %679 = mul i64 %678, -7046029288634856825
  %680 = xor i64 %679, %675
  %681 = tail call i64 @llvm.fshl.i64(i64 %680, i64 %680, i64 23)
  %682 = mul i64 %681, -4417276706812531889
  %683 = add i64 %682, 1609587929392839161
  br label %1029

684:                                              ; preds = %595
  %685 = load i64, ptr %597, align 1
  %686 = tail call noundef i64 @llvm.bswap.i64(i64 %685)
  %687 = mul i64 %686, -4417276706812531889
  %688 = tail call i64 @llvm.fshl.i64(i64 %687, i64 %687, i64 31)
  %689 = mul i64 %688, -7046029288634856825
  %690 = getelementptr inbounds nuw i8, ptr %597, i64 8
  %691 = xor i64 %689, %598
  %692 = tail call i64 @llvm.fshl.i64(i64 %691, i64 %691, i64 27)
  %693 = mul i64 %692, -7046029288634856825
  %694 = add i64 %693, -8796714831421723037
  br label %695

695:                                              ; preds = %684, %595
  %696 = phi ptr [ %597, %595 ], [ %690, %684 ]
  %697 = phi i64 [ %598, %595 ], [ %694, %684 ]
  %698 = load i64, ptr %696, align 1
  %699 = tail call noundef i64 @llvm.bswap.i64(i64 %698)
  %700 = mul i64 %699, -4417276706812531889
  %701 = tail call i64 @llvm.fshl.i64(i64 %700, i64 %700, i64 31)
  %702 = mul i64 %701, -7046029288634856825
  %703 = getelementptr inbounds nuw i8, ptr %696, i64 8
  %704 = xor i64 %702, %697
  %705 = tail call i64 @llvm.fshl.i64(i64 %704, i64 %704, i64 27)
  %706 = mul i64 %705, -7046029288634856825
  %707 = add i64 %706, -8796714831421723037
  br label %708

708:                                              ; preds = %695, %595
  %709 = phi ptr [ %597, %595 ], [ %703, %695 ]
  %710 = phi i64 [ %598, %595 ], [ %707, %695 ]
  %711 = load i64, ptr %709, align 1
  %712 = tail call noundef i64 @llvm.bswap.i64(i64 %711)
  %713 = mul i64 %712, -4417276706812531889
  %714 = tail call i64 @llvm.fshl.i64(i64 %713, i64 %713, i64 31)
  %715 = mul i64 %714, -7046029288634856825
  %716 = getelementptr inbounds nuw i8, ptr %709, i64 8
  %717 = xor i64 %715, %710
  %718 = tail call i64 @llvm.fshl.i64(i64 %717, i64 %717, i64 27)
  %719 = mul i64 %718, -7046029288634856825
  %720 = add i64 %719, -8796714831421723037
  %721 = load i8, ptr %716, align 1
  %722 = zext i8 %721 to i64
  %723 = mul i64 %722, 2870177450012600261
  %724 = xor i64 %720, %723
  %725 = tail call i64 @llvm.fshl.i64(i64 %724, i64 %724, i64 11)
  %726 = mul i64 %725, -7046029288634856825
  br label %1029

727:                                              ; preds = %595
  %728 = load i64, ptr %597, align 1
  %729 = tail call noundef i64 @llvm.bswap.i64(i64 %728)
  %730 = mul i64 %729, -4417276706812531889
  %731 = tail call i64 @llvm.fshl.i64(i64 %730, i64 %730, i64 31)
  %732 = mul i64 %731, -7046029288634856825
  %733 = getelementptr inbounds nuw i8, ptr %597, i64 8
  %734 = xor i64 %732, %598
  %735 = tail call i64 @llvm.fshl.i64(i64 %734, i64 %734, i64 27)
  %736 = mul i64 %735, -7046029288634856825
  %737 = add i64 %736, -8796714831421723037
  br label %738

738:                                              ; preds = %727, %595
  %739 = phi ptr [ %597, %595 ], [ %733, %727 ]
  %740 = phi i64 [ %598, %595 ], [ %737, %727 ]
  %741 = load i64, ptr %739, align 1
  %742 = tail call noundef i64 @llvm.bswap.i64(i64 %741)
  %743 = mul i64 %742, -4417276706812531889
  %744 = tail call i64 @llvm.fshl.i64(i64 %743, i64 %743, i64 31)
  %745 = mul i64 %744, -7046029288634856825
  %746 = getelementptr inbounds nuw i8, ptr %739, i64 8
  %747 = xor i64 %745, %740
  %748 = tail call i64 @llvm.fshl.i64(i64 %747, i64 %747, i64 27)
  %749 = mul i64 %748, -7046029288634856825
  %750 = add i64 %749, -8796714831421723037
  br label %751

751:                                              ; preds = %738, %595
  %752 = phi ptr [ %597, %595 ], [ %746, %738 ]
  %753 = phi i64 [ %598, %595 ], [ %750, %738 ]
  %754 = load i64, ptr %752, align 1
  %755 = tail call noundef i64 @llvm.bswap.i64(i64 %754)
  %756 = mul i64 %755, -4417276706812531889
  %757 = tail call i64 @llvm.fshl.i64(i64 %756, i64 %756, i64 31)
  %758 = mul i64 %757, -7046029288634856825
  %759 = getelementptr inbounds nuw i8, ptr %752, i64 8
  %760 = xor i64 %758, %753
  %761 = tail call i64 @llvm.fshl.i64(i64 %760, i64 %760, i64 27)
  %762 = mul i64 %761, -7046029288634856825
  %763 = add i64 %762, -8796714831421723037
  br label %764

764:                                              ; preds = %751, %595
  %765 = phi ptr [ %597, %595 ], [ %759, %751 ]
  %766 = phi i64 [ %598, %595 ], [ %763, %751 ]
  %767 = load i32, ptr %765, align 1
  %768 = tail call noundef i32 @llvm.bswap.i32(i32 %767)
  %769 = zext i32 %768 to i64
  %770 = mul i64 %769, -7046029288634856825
  %771 = xor i64 %770, %766
  %772 = getelementptr inbounds nuw i8, ptr %765, i64 4
  %773 = tail call i64 @llvm.fshl.i64(i64 %771, i64 %771, i64 23)
  %774 = mul i64 %773, -4417276706812531889
  %775 = add i64 %774, 1609587929392839161
  %776 = load i8, ptr %772, align 1
  %777 = zext i8 %776 to i64
  %778 = mul i64 %777, 2870177450012600261
  %779 = xor i64 %775, %778
  %780 = tail call i64 @llvm.fshl.i64(i64 %779, i64 %779, i64 11)
  %781 = mul i64 %780, -7046029288634856825
  br label %1029

782:                                              ; preds = %595
  %783 = load i64, ptr %597, align 1
  %784 = tail call noundef i64 @llvm.bswap.i64(i64 %783)
  %785 = mul i64 %784, -4417276706812531889
  %786 = tail call i64 @llvm.fshl.i64(i64 %785, i64 %785, i64 31)
  %787 = mul i64 %786, -7046029288634856825
  %788 = getelementptr inbounds nuw i8, ptr %597, i64 8
  %789 = xor i64 %787, %598
  %790 = tail call i64 @llvm.fshl.i64(i64 %789, i64 %789, i64 27)
  %791 = mul i64 %790, -7046029288634856825
  %792 = add i64 %791, -8796714831421723037
  br label %793

793:                                              ; preds = %782, %595
  %794 = phi ptr [ %597, %595 ], [ %788, %782 ]
  %795 = phi i64 [ %598, %595 ], [ %792, %782 ]
  %796 = load i64, ptr %794, align 1
  %797 = tail call noundef i64 @llvm.bswap.i64(i64 %796)
  %798 = mul i64 %797, -4417276706812531889
  %799 = tail call i64 @llvm.fshl.i64(i64 %798, i64 %798, i64 31)
  %800 = mul i64 %799, -7046029288634856825
  %801 = getelementptr inbounds nuw i8, ptr %794, i64 8
  %802 = xor i64 %800, %795
  %803 = tail call i64 @llvm.fshl.i64(i64 %802, i64 %802, i64 27)
  %804 = mul i64 %803, -7046029288634856825
  %805 = add i64 %804, -8796714831421723037
  br label %806

806:                                              ; preds = %793, %595
  %807 = phi ptr [ %597, %595 ], [ %801, %793 ]
  %808 = phi i64 [ %598, %595 ], [ %805, %793 ]
  %809 = load i64, ptr %807, align 1
  %810 = tail call noundef i64 @llvm.bswap.i64(i64 %809)
  %811 = mul i64 %810, -4417276706812531889
  %812 = tail call i64 @llvm.fshl.i64(i64 %811, i64 %811, i64 31)
  %813 = mul i64 %812, -7046029288634856825
  %814 = getelementptr inbounds nuw i8, ptr %807, i64 8
  %815 = xor i64 %813, %808
  %816 = tail call i64 @llvm.fshl.i64(i64 %815, i64 %815, i64 27)
  %817 = mul i64 %816, -7046029288634856825
  %818 = add i64 %817, -8796714831421723037
  %819 = getelementptr inbounds nuw i8, ptr %807, i64 9
  %820 = load i8, ptr %814, align 1
  %821 = zext i8 %820 to i64
  %822 = mul i64 %821, 2870177450012600261
  %823 = xor i64 %818, %822
  %824 = tail call i64 @llvm.fshl.i64(i64 %823, i64 %823, i64 11)
  %825 = mul i64 %824, -7046029288634856825
  %826 = load i8, ptr %819, align 1
  %827 = zext i8 %826 to i64
  %828 = mul i64 %827, 2870177450012600261
  %829 = xor i64 %825, %828
  %830 = tail call i64 @llvm.fshl.i64(i64 %829, i64 %829, i64 11)
  %831 = mul i64 %830, -7046029288634856825
  br label %1029

832:                                              ; preds = %595
  %833 = load i64, ptr %597, align 1
  %834 = tail call noundef i64 @llvm.bswap.i64(i64 %833)
  %835 = mul i64 %834, -4417276706812531889
  %836 = tail call i64 @llvm.fshl.i64(i64 %835, i64 %835, i64 31)
  %837 = mul i64 %836, -7046029288634856825
  %838 = getelementptr inbounds nuw i8, ptr %597, i64 8
  %839 = xor i64 %837, %598
  %840 = tail call i64 @llvm.fshl.i64(i64 %839, i64 %839, i64 27)
  %841 = mul i64 %840, -7046029288634856825
  %842 = add i64 %841, -8796714831421723037
  br label %843

843:                                              ; preds = %832, %595
  %844 = phi ptr [ %597, %595 ], [ %838, %832 ]
  %845 = phi i64 [ %598, %595 ], [ %842, %832 ]
  %846 = load i64, ptr %844, align 1
  %847 = tail call noundef i64 @llvm.bswap.i64(i64 %846)
  %848 = mul i64 %847, -4417276706812531889
  %849 = tail call i64 @llvm.fshl.i64(i64 %848, i64 %848, i64 31)
  %850 = mul i64 %849, -7046029288634856825
  %851 = getelementptr inbounds nuw i8, ptr %844, i64 8
  %852 = xor i64 %850, %845
  %853 = tail call i64 @llvm.fshl.i64(i64 %852, i64 %852, i64 27)
  %854 = mul i64 %853, -7046029288634856825
  %855 = add i64 %854, -8796714831421723037
  br label %856

856:                                              ; preds = %843, %595
  %857 = phi ptr [ %597, %595 ], [ %851, %843 ]
  %858 = phi i64 [ %598, %595 ], [ %855, %843 ]
  %859 = load i64, ptr %857, align 1
  %860 = tail call noundef i64 @llvm.bswap.i64(i64 %859)
  %861 = mul i64 %860, -4417276706812531889
  %862 = tail call i64 @llvm.fshl.i64(i64 %861, i64 %861, i64 31)
  %863 = mul i64 %862, -7046029288634856825
  %864 = getelementptr inbounds nuw i8, ptr %857, i64 8
  %865 = xor i64 %863, %858
  %866 = tail call i64 @llvm.fshl.i64(i64 %865, i64 %865, i64 27)
  %867 = mul i64 %866, -7046029288634856825
  %868 = add i64 %867, -8796714831421723037
  br label %869

869:                                              ; preds = %856, %595
  %870 = phi ptr [ %597, %595 ], [ %864, %856 ]
  %871 = phi i64 [ %598, %595 ], [ %868, %856 ]
  %872 = load i32, ptr %870, align 1
  %873 = tail call noundef i32 @llvm.bswap.i32(i32 %872)
  %874 = zext i32 %873 to i64
  %875 = mul i64 %874, -7046029288634856825
  %876 = xor i64 %875, %871
  %877 = getelementptr inbounds nuw i8, ptr %870, i64 4
  %878 = tail call i64 @llvm.fshl.i64(i64 %876, i64 %876, i64 23)
  %879 = mul i64 %878, -4417276706812531889
  %880 = add i64 %879, 1609587929392839161
  %881 = getelementptr inbounds nuw i8, ptr %870, i64 5
  %882 = load i8, ptr %877, align 1
  %883 = zext i8 %882 to i64
  %884 = mul i64 %883, 2870177450012600261
  %885 = xor i64 %880, %884
  %886 = tail call i64 @llvm.fshl.i64(i64 %885, i64 %885, i64 11)
  %887 = mul i64 %886, -7046029288634856825
  %888 = load i8, ptr %881, align 1
  %889 = zext i8 %888 to i64
  %890 = mul i64 %889, 2870177450012600261
  %891 = xor i64 %887, %890
  %892 = tail call i64 @llvm.fshl.i64(i64 %891, i64 %891, i64 11)
  %893 = mul i64 %892, -7046029288634856825
  br label %1029

894:                                              ; preds = %595
  %895 = load i64, ptr %597, align 1
  %896 = tail call noundef i64 @llvm.bswap.i64(i64 %895)
  %897 = mul i64 %896, -4417276706812531889
  %898 = tail call i64 @llvm.fshl.i64(i64 %897, i64 %897, i64 31)
  %899 = mul i64 %898, -7046029288634856825
  %900 = getelementptr inbounds nuw i8, ptr %597, i64 8
  %901 = xor i64 %899, %598
  %902 = tail call i64 @llvm.fshl.i64(i64 %901, i64 %901, i64 27)
  %903 = mul i64 %902, -7046029288634856825
  %904 = add i64 %903, -8796714831421723037
  br label %905

905:                                              ; preds = %894, %595
  %906 = phi ptr [ %597, %595 ], [ %900, %894 ]
  %907 = phi i64 [ %598, %595 ], [ %904, %894 ]
  %908 = load i64, ptr %906, align 1
  %909 = tail call noundef i64 @llvm.bswap.i64(i64 %908)
  %910 = mul i64 %909, -4417276706812531889
  %911 = tail call i64 @llvm.fshl.i64(i64 %910, i64 %910, i64 31)
  %912 = mul i64 %911, -7046029288634856825
  %913 = getelementptr inbounds nuw i8, ptr %906, i64 8
  %914 = xor i64 %912, %907
  %915 = tail call i64 @llvm.fshl.i64(i64 %914, i64 %914, i64 27)
  %916 = mul i64 %915, -7046029288634856825
  %917 = add i64 %916, -8796714831421723037
  br label %918

918:                                              ; preds = %905, %595
  %919 = phi ptr [ %597, %595 ], [ %913, %905 ]
  %920 = phi i64 [ %598, %595 ], [ %917, %905 ]
  %921 = load i64, ptr %919, align 1
  %922 = tail call noundef i64 @llvm.bswap.i64(i64 %921)
  %923 = mul i64 %922, -4417276706812531889
  %924 = tail call i64 @llvm.fshl.i64(i64 %923, i64 %923, i64 31)
  %925 = mul i64 %924, -7046029288634856825
  %926 = getelementptr inbounds nuw i8, ptr %919, i64 8
  %927 = xor i64 %925, %920
  %928 = tail call i64 @llvm.fshl.i64(i64 %927, i64 %927, i64 27)
  %929 = mul i64 %928, -7046029288634856825
  %930 = add i64 %929, -8796714831421723037
  %931 = getelementptr inbounds nuw i8, ptr %919, i64 9
  %932 = load i8, ptr %926, align 1
  %933 = zext i8 %932 to i64
  %934 = mul i64 %933, 2870177450012600261
  %935 = xor i64 %930, %934
  %936 = tail call i64 @llvm.fshl.i64(i64 %935, i64 %935, i64 11)
  %937 = mul i64 %936, -7046029288634856825
  %938 = getelementptr inbounds nuw i8, ptr %919, i64 10
  %939 = load i8, ptr %931, align 1
  %940 = zext i8 %939 to i64
  %941 = mul i64 %940, 2870177450012600261
  %942 = xor i64 %937, %941
  %943 = tail call i64 @llvm.fshl.i64(i64 %942, i64 %942, i64 11)
  %944 = mul i64 %943, -7046029288634856825
  %945 = load i8, ptr %938, align 1
  %946 = zext i8 %945 to i64
  %947 = mul i64 %946, 2870177450012600261
  %948 = xor i64 %944, %947
  %949 = tail call i64 @llvm.fshl.i64(i64 %948, i64 %948, i64 11)
  %950 = mul i64 %949, -7046029288634856825
  br label %1029

951:                                              ; preds = %595
  %952 = load i64, ptr %597, align 1
  %953 = tail call noundef i64 @llvm.bswap.i64(i64 %952)
  %954 = mul i64 %953, -4417276706812531889
  %955 = tail call i64 @llvm.fshl.i64(i64 %954, i64 %954, i64 31)
  %956 = mul i64 %955, -7046029288634856825
  %957 = getelementptr inbounds nuw i8, ptr %597, i64 8
  %958 = xor i64 %956, %598
  %959 = tail call i64 @llvm.fshl.i64(i64 %958, i64 %958, i64 27)
  %960 = mul i64 %959, -7046029288634856825
  %961 = add i64 %960, -8796714831421723037
  br label %962

962:                                              ; preds = %951, %595
  %963 = phi ptr [ %597, %595 ], [ %957, %951 ]
  %964 = phi i64 [ %598, %595 ], [ %961, %951 ]
  %965 = load i64, ptr %963, align 1
  %966 = tail call noundef i64 @llvm.bswap.i64(i64 %965)
  %967 = mul i64 %966, -4417276706812531889
  %968 = tail call i64 @llvm.fshl.i64(i64 %967, i64 %967, i64 31)
  %969 = mul i64 %968, -7046029288634856825
  %970 = getelementptr inbounds nuw i8, ptr %963, i64 8
  %971 = xor i64 %969, %964
  %972 = tail call i64 @llvm.fshl.i64(i64 %971, i64 %971, i64 27)
  %973 = mul i64 %972, -7046029288634856825
  %974 = add i64 %973, -8796714831421723037
  br label %975

975:                                              ; preds = %962, %595
  %976 = phi ptr [ %597, %595 ], [ %970, %962 ]
  %977 = phi i64 [ %598, %595 ], [ %974, %962 ]
  %978 = load i64, ptr %976, align 1
  %979 = tail call noundef i64 @llvm.bswap.i64(i64 %978)
  %980 = mul i64 %979, -4417276706812531889
  %981 = tail call i64 @llvm.fshl.i64(i64 %980, i64 %980, i64 31)
  %982 = mul i64 %981, -7046029288634856825
  %983 = getelementptr inbounds nuw i8, ptr %976, i64 8
  %984 = xor i64 %982, %977
  %985 = tail call i64 @llvm.fshl.i64(i64 %984, i64 %984, i64 27)
  %986 = mul i64 %985, -7046029288634856825
  %987 = add i64 %986, -8796714831421723037
  br label %988

988:                                              ; preds = %975, %595
  %989 = phi ptr [ %597, %595 ], [ %983, %975 ]
  %990 = phi i64 [ %598, %595 ], [ %987, %975 ]
  %991 = load i32, ptr %989, align 1
  %992 = tail call noundef i32 @llvm.bswap.i32(i32 %991)
  %993 = zext i32 %992 to i64
  %994 = mul i64 %993, -7046029288634856825
  %995 = xor i64 %994, %990
  %996 = getelementptr inbounds nuw i8, ptr %989, i64 4
  %997 = tail call i64 @llvm.fshl.i64(i64 %995, i64 %995, i64 23)
  %998 = mul i64 %997, -4417276706812531889
  %999 = add i64 %998, 1609587929392839161
  br label %1000

1000:                                             ; preds = %988, %595
  %1001 = phi ptr [ %597, %595 ], [ %996, %988 ]
  %1002 = phi i64 [ %598, %595 ], [ %999, %988 ]
  %1003 = getelementptr inbounds nuw i8, ptr %1001, i64 1
  %1004 = load i8, ptr %1001, align 1
  %1005 = zext i8 %1004 to i64
  %1006 = mul i64 %1005, 2870177450012600261
  %1007 = xor i64 %1006, %1002
  %1008 = tail call i64 @llvm.fshl.i64(i64 %1007, i64 %1007, i64 11)
  %1009 = mul i64 %1008, -7046029288634856825
  br label %1010

1010:                                             ; preds = %1000, %595
  %1011 = phi ptr [ %597, %595 ], [ %1003, %1000 ]
  %1012 = phi i64 [ %598, %595 ], [ %1009, %1000 ]
  %1013 = getelementptr inbounds nuw i8, ptr %1011, i64 1
  %1014 = load i8, ptr %1011, align 1
  %1015 = zext i8 %1014 to i64
  %1016 = mul i64 %1015, 2870177450012600261
  %1017 = xor i64 %1016, %1012
  %1018 = tail call i64 @llvm.fshl.i64(i64 %1017, i64 %1017, i64 11)
  %1019 = mul i64 %1018, -7046029288634856825
  br label %1020

1020:                                             ; preds = %1010, %595
  %1021 = phi ptr [ %597, %595 ], [ %1013, %1010 ]
  %1022 = phi i64 [ %598, %595 ], [ %1019, %1010 ]
  %1023 = load i8, ptr %1021, align 1
  %1024 = zext i8 %1023 to i64
  %1025 = mul i64 %1024, 2870177450012600261
  %1026 = xor i64 %1025, %1022
  %1027 = tail call i64 @llvm.fshl.i64(i64 %1026, i64 %1026, i64 11)
  %1028 = mul i64 %1027, -7046029288634856825
  br label %1029

1029:                                             ; preds = %1020, %918, %869, %806, %764, %708, %673, %624, %595, %509, %407, %358, %295, %253, %197, %162, %113, %84
  %1030 = phi i64 [ %439, %407 ], [ %382, %358 ], [ %320, %295 ], [ %270, %253 ], [ %215, %197 ], [ %172, %162 ], [ %124, %113 ], [ %87, %84 ], [ %517, %509 ], [ %950, %918 ], [ %893, %869 ], [ %831, %806 ], [ %781, %764 ], [ %726, %708 ], [ %683, %673 ], [ %635, %624 ], [ %598, %595 ], [ %1028, %1020 ]
  %1031 = lshr i64 %1030, 33
  %1032 = xor i64 %1031, %1030
  %1033 = mul i64 %1032, -4417276706812531889
  %1034 = lshr i64 %1033, 29
  %1035 = xor i64 %1034, %1033
  %1036 = mul i64 %1035, 1609587929392839161
  %1037 = lshr i64 %1036, 32
  %1038 = xor i64 %1037, %1036
  ret i64 %1038
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #25
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef zeroext i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH64_copyState(ptr noundef writeonly initializes((0, 88)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef zeroext i32 @XXH64_reset(ptr noundef writeonly initializes((0, 80)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  store i64 0, ptr %0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %5, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local zeroext range(i32 0, 2) i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %127, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = load i64, ptr %0, align 8
  %8 = add i64 %7, %2
  store i64 %8, ptr %0, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load i32, ptr %9, align 8
  %11 = zext i32 %10 to i64
  %12 = add i64 %2, %11
  %13 = icmp ult i64 %12, 32
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %17 = trunc i64 %2 to i32
  %18 = load i32, ptr %9, align 8
  %19 = add i32 %18, %17
  br label %125

20:                                               ; preds = %5
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %11
  %25 = sub i32 32, %10
  %26 = zext i32 %25 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %1, i64 %26, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i64, ptr %27, align 8
  %29 = load i64, ptr %23, align 1
  %30 = tail call noundef i64 @llvm.bswap.i64(i64 %29)
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %28
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  store i64 %34, ptr %27, align 8
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %38 = load i64, ptr %37, align 1
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, %36
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %43 = mul i64 %42, -7046029288634856825
  store i64 %43, ptr %35, align 8
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %47 = load i64, ptr %46, align 1
  %48 = tail call noundef i64 @llvm.bswap.i64(i64 %47)
  %49 = mul i64 %48, -4417276706812531889
  %50 = add i64 %49, %45
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  store i64 %52, ptr %44, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %56 = load i64, ptr %55, align 1
  %57 = tail call noundef i64 @llvm.bswap.i64(i64 %56)
  %58 = mul i64 %57, -4417276706812531889
  %59 = add i64 %58, %54
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 31)
  %61 = mul i64 %60, -7046029288634856825
  store i64 %61, ptr %53, align 8
  %62 = load i32, ptr %9, align 8
  %63 = sub i32 32, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 %64
  store i32 0, ptr %9, align 8
  br label %66

66:                                               ; preds = %22, %20
  %67 = phi ptr [ %65, %22 ], [ %1, %20 ]
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 32
  %69 = icmp ugt ptr %68, %6
  br i1 %69, label %116, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %6, i64 -32
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %79 = load i64, ptr %78, align 8
  br label %80

80:                                               ; preds = %80, %70
  %81 = phi ptr [ %67, %70 ], [ %113, %80 ]
  %82 = phi i64 [ %73, %70 ], [ %91, %80 ]
  %83 = phi i64 [ %75, %70 ], [ %98, %80 ]
  %84 = phi i64 [ %77, %70 ], [ %105, %80 ]
  %85 = phi i64 [ %79, %70 ], [ %112, %80 ]
  %86 = load i64, ptr %81, align 1
  %87 = tail call noundef i64 @llvm.bswap.i64(i64 %86)
  %88 = mul i64 %87, -4417276706812531889
  %89 = add i64 %88, %82
  %90 = tail call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 31)
  %91 = mul i64 %90, -7046029288634856825
  %92 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %93 = load i64, ptr %92, align 1
  %94 = tail call noundef i64 @llvm.bswap.i64(i64 %93)
  %95 = mul i64 %94, -4417276706812531889
  %96 = add i64 %95, %83
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 31)
  %98 = mul i64 %97, -7046029288634856825
  %99 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %100 = load i64, ptr %99, align 1
  %101 = tail call noundef i64 @llvm.bswap.i64(i64 %100)
  %102 = mul i64 %101, -4417276706812531889
  %103 = add i64 %102, %84
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 31)
  %105 = mul i64 %104, -7046029288634856825
  %106 = getelementptr inbounds nuw i8, ptr %81, i64 24
  %107 = load i64, ptr %106, align 1
  %108 = tail call noundef i64 @llvm.bswap.i64(i64 %107)
  %109 = mul i64 %108, -4417276706812531889
  %110 = add i64 %109, %85
  %111 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 31)
  %112 = mul i64 %111, -7046029288634856825
  %113 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %114 = icmp ugt ptr %113, %71
  br i1 %114, label %115, label %80

115:                                              ; preds = %80
  store i64 %91, ptr %72, align 8
  store i64 %98, ptr %74, align 8
  store i64 %105, ptr %76, align 8
  store i64 %112, ptr %78, align 8
  br label %116

116:                                              ; preds = %115, %66
  %117 = phi ptr [ %113, %115 ], [ %67, %66 ]
  %118 = icmp ult ptr %117, %6
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %121 = ptrtoint ptr %6 to i64
  %122 = ptrtoint ptr %117 to i64
  %123 = sub i64 %121, %122
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %120, ptr nonnull readonly align 1 %117, i64 %123, i1 false)
  %124 = trunc i64 %123 to i32
  br label %125

125:                                              ; preds = %119, %14
  %126 = phi i32 [ %19, %14 ], [ %124, %119 ]
  store i32 %126, ptr %9, align 8
  br label %127

127:                                              ; preds = %125, %116, %3
  %128 = phi i32 [ 1, %3 ], [ 0, %116 ], [ 0, %125 ]
  ret i32 %128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i64, ptr %0, align 8
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
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
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %44, %4
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = and i64 %2, 31
  switch i64 %52, label %482 [
    i64 24, label %53
    i64 16, label %64
    i64 8, label %77
    i64 28, label %89
    i64 20, label %100
    i64 12, label %113
    i64 4, label %126
    i64 25, label %137
    i64 17, label %148
    i64 9, label %161
    i64 29, label %180
    i64 21, label %191
    i64 13, label %204
    i64 5, label %217
    i64 26, label %235
    i64 18, label %246
    i64 10, label %259
    i64 30, label %285
    i64 22, label %296
    i64 14, label %309
    i64 6, label %322
    i64 27, label %347
    i64 19, label %358
    i64 11, label %371
    i64 31, label %404
    i64 23, label %415
    i64 15, label %428
    i64 7, label %441
    i64 3, label %453
    i64 2, label %463
    i64 1, label %473
    i64 0, label %483
  ]

53:                                               ; preds = %48
  %54 = load i64, ptr %51, align 1
  %55 = tail call noundef i64 @llvm.bswap.i64(i64 %54)
  %56 = mul i64 %55, -4417276706812531889
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %60 = xor i64 %58, %50
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 27)
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  br label %64

64:                                               ; preds = %53, %48
  %65 = phi ptr [ %51, %48 ], [ %59, %53 ]
  %66 = phi i64 [ %50, %48 ], [ %63, %53 ]
  %67 = load i64, ptr %65, align 1
  %68 = tail call noundef i64 @llvm.bswap.i64(i64 %67)
  %69 = mul i64 %68, -4417276706812531889
  %70 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 31)
  %71 = mul i64 %70, -7046029288634856825
  %72 = getelementptr inbounds nuw i8, ptr %65, i64 8
  %73 = xor i64 %71, %66
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 27)
  %75 = mul i64 %74, -7046029288634856825
  %76 = add i64 %75, -8796714831421723037
  br label %77

77:                                               ; preds = %64, %48
  %78 = phi ptr [ %51, %48 ], [ %72, %64 ]
  %79 = phi i64 [ %50, %48 ], [ %76, %64 ]
  %80 = load i64, ptr %78, align 1
  %81 = tail call noundef i64 @llvm.bswap.i64(i64 %80)
  %82 = mul i64 %81, -4417276706812531889
  %83 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 31)
  %84 = mul i64 %83, -7046029288634856825
  %85 = xor i64 %84, %79
  %86 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 27)
  %87 = mul i64 %86, -7046029288634856825
  %88 = add i64 %87, -8796714831421723037
  br label %483

89:                                               ; preds = %48
  %90 = load i64, ptr %51, align 1
  %91 = tail call noundef i64 @llvm.bswap.i64(i64 %90)
  %92 = mul i64 %91, -4417276706812531889
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 31)
  %94 = mul i64 %93, -7046029288634856825
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %96 = xor i64 %94, %50
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 27)
  %98 = mul i64 %97, -7046029288634856825
  %99 = add i64 %98, -8796714831421723037
  br label %100

100:                                              ; preds = %89, %48
  %101 = phi ptr [ %51, %48 ], [ %95, %89 ]
  %102 = phi i64 [ %50, %48 ], [ %99, %89 ]
  %103 = load i64, ptr %101, align 1
  %104 = tail call noundef i64 @llvm.bswap.i64(i64 %103)
  %105 = mul i64 %104, -4417276706812531889
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 31)
  %107 = mul i64 %106, -7046029288634856825
  %108 = getelementptr inbounds nuw i8, ptr %101, i64 8
  %109 = xor i64 %107, %102
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 27)
  %111 = mul i64 %110, -7046029288634856825
  %112 = add i64 %111, -8796714831421723037
  br label %113

113:                                              ; preds = %100, %48
  %114 = phi ptr [ %51, %48 ], [ %108, %100 ]
  %115 = phi i64 [ %50, %48 ], [ %112, %100 ]
  %116 = load i64, ptr %114, align 1
  %117 = tail call noundef i64 @llvm.bswap.i64(i64 %116)
  %118 = mul i64 %117, -4417276706812531889
  %119 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 31)
  %120 = mul i64 %119, -7046029288634856825
  %121 = getelementptr inbounds nuw i8, ptr %114, i64 8
  %122 = xor i64 %120, %115
  %123 = tail call i64 @llvm.fshl.i64(i64 %122, i64 %122, i64 27)
  %124 = mul i64 %123, -7046029288634856825
  %125 = add i64 %124, -8796714831421723037
  br label %126

126:                                              ; preds = %113, %48
  %127 = phi ptr [ %51, %48 ], [ %121, %113 ]
  %128 = phi i64 [ %50, %48 ], [ %125, %113 ]
  %129 = load i32, ptr %127, align 1
  %130 = tail call noundef i32 @llvm.bswap.i32(i32 %129)
  %131 = zext i32 %130 to i64
  %132 = mul i64 %131, -7046029288634856825
  %133 = xor i64 %132, %128
  %134 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 23)
  %135 = mul i64 %134, -4417276706812531889
  %136 = add i64 %135, 1609587929392839161
  br label %483

137:                                              ; preds = %48
  %138 = load i64, ptr %51, align 1
  %139 = tail call noundef i64 @llvm.bswap.i64(i64 %138)
  %140 = mul i64 %139, -4417276706812531889
  %141 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 31)
  %142 = mul i64 %141, -7046029288634856825
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %144 = xor i64 %142, %50
  %145 = tail call i64 @llvm.fshl.i64(i64 %144, i64 %144, i64 27)
  %146 = mul i64 %145, -7046029288634856825
  %147 = add i64 %146, -8796714831421723037
  br label %148

148:                                              ; preds = %137, %48
  %149 = phi ptr [ %51, %48 ], [ %143, %137 ]
  %150 = phi i64 [ %50, %48 ], [ %147, %137 ]
  %151 = load i64, ptr %149, align 1
  %152 = tail call noundef i64 @llvm.bswap.i64(i64 %151)
  %153 = mul i64 %152, -4417276706812531889
  %154 = tail call i64 @llvm.fshl.i64(i64 %153, i64 %153, i64 31)
  %155 = mul i64 %154, -7046029288634856825
  %156 = getelementptr inbounds nuw i8, ptr %149, i64 8
  %157 = xor i64 %155, %150
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 27)
  %159 = mul i64 %158, -7046029288634856825
  %160 = add i64 %159, -8796714831421723037
  br label %161

161:                                              ; preds = %148, %48
  %162 = phi ptr [ %51, %48 ], [ %156, %148 ]
  %163 = phi i64 [ %50, %48 ], [ %160, %148 ]
  %164 = load i64, ptr %162, align 1
  %165 = tail call noundef i64 @llvm.bswap.i64(i64 %164)
  %166 = mul i64 %165, -4417276706812531889
  %167 = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 31)
  %168 = mul i64 %167, -7046029288634856825
  %169 = getelementptr inbounds nuw i8, ptr %162, i64 8
  %170 = xor i64 %168, %163
  %171 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 27)
  %172 = mul i64 %171, -7046029288634856825
  %173 = add i64 %172, -8796714831421723037
  %174 = load i8, ptr %169, align 1
  %175 = zext i8 %174 to i64
  %176 = mul i64 %175, 2870177450012600261
  %177 = xor i64 %173, %176
  %178 = tail call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 11)
  %179 = mul i64 %178, -7046029288634856825
  br label %483

180:                                              ; preds = %48
  %181 = load i64, ptr %51, align 1
  %182 = tail call noundef i64 @llvm.bswap.i64(i64 %181)
  %183 = mul i64 %182, -4417276706812531889
  %184 = tail call i64 @llvm.fshl.i64(i64 %183, i64 %183, i64 31)
  %185 = mul i64 %184, -7046029288634856825
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %187 = xor i64 %185, %50
  %188 = tail call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 27)
  %189 = mul i64 %188, -7046029288634856825
  %190 = add i64 %189, -8796714831421723037
  br label %191

191:                                              ; preds = %180, %48
  %192 = phi ptr [ %51, %48 ], [ %186, %180 ]
  %193 = phi i64 [ %50, %48 ], [ %190, %180 ]
  %194 = load i64, ptr %192, align 1
  %195 = tail call noundef i64 @llvm.bswap.i64(i64 %194)
  %196 = mul i64 %195, -4417276706812531889
  %197 = tail call i64 @llvm.fshl.i64(i64 %196, i64 %196, i64 31)
  %198 = mul i64 %197, -7046029288634856825
  %199 = getelementptr inbounds nuw i8, ptr %192, i64 8
  %200 = xor i64 %198, %193
  %201 = tail call i64 @llvm.fshl.i64(i64 %200, i64 %200, i64 27)
  %202 = mul i64 %201, -7046029288634856825
  %203 = add i64 %202, -8796714831421723037
  br label %204

204:                                              ; preds = %191, %48
  %205 = phi ptr [ %51, %48 ], [ %199, %191 ]
  %206 = phi i64 [ %50, %48 ], [ %203, %191 ]
  %207 = load i64, ptr %205, align 1
  %208 = tail call noundef i64 @llvm.bswap.i64(i64 %207)
  %209 = mul i64 %208, -4417276706812531889
  %210 = tail call i64 @llvm.fshl.i64(i64 %209, i64 %209, i64 31)
  %211 = mul i64 %210, -7046029288634856825
  %212 = getelementptr inbounds nuw i8, ptr %205, i64 8
  %213 = xor i64 %211, %206
  %214 = tail call i64 @llvm.fshl.i64(i64 %213, i64 %213, i64 27)
  %215 = mul i64 %214, -7046029288634856825
  %216 = add i64 %215, -8796714831421723037
  br label %217

217:                                              ; preds = %204, %48
  %218 = phi ptr [ %51, %48 ], [ %212, %204 ]
  %219 = phi i64 [ %50, %48 ], [ %216, %204 ]
  %220 = load i32, ptr %218, align 1
  %221 = tail call noundef i32 @llvm.bswap.i32(i32 %220)
  %222 = zext i32 %221 to i64
  %223 = mul i64 %222, -7046029288634856825
  %224 = xor i64 %223, %219
  %225 = getelementptr inbounds nuw i8, ptr %218, i64 4
  %226 = tail call i64 @llvm.fshl.i64(i64 %224, i64 %224, i64 23)
  %227 = mul i64 %226, -4417276706812531889
  %228 = add i64 %227, 1609587929392839161
  %229 = load i8, ptr %225, align 1
  %230 = zext i8 %229 to i64
  %231 = mul i64 %230, 2870177450012600261
  %232 = xor i64 %228, %231
  %233 = tail call i64 @llvm.fshl.i64(i64 %232, i64 %232, i64 11)
  %234 = mul i64 %233, -7046029288634856825
  br label %483

235:                                              ; preds = %48
  %236 = load i64, ptr %51, align 1
  %237 = tail call noundef i64 @llvm.bswap.i64(i64 %236)
  %238 = mul i64 %237, -4417276706812531889
  %239 = tail call i64 @llvm.fshl.i64(i64 %238, i64 %238, i64 31)
  %240 = mul i64 %239, -7046029288634856825
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %242 = xor i64 %240, %50
  %243 = tail call i64 @llvm.fshl.i64(i64 %242, i64 %242, i64 27)
  %244 = mul i64 %243, -7046029288634856825
  %245 = add i64 %244, -8796714831421723037
  br label %246

246:                                              ; preds = %235, %48
  %247 = phi ptr [ %51, %48 ], [ %241, %235 ]
  %248 = phi i64 [ %50, %48 ], [ %245, %235 ]
  %249 = load i64, ptr %247, align 1
  %250 = tail call noundef i64 @llvm.bswap.i64(i64 %249)
  %251 = mul i64 %250, -4417276706812531889
  %252 = tail call i64 @llvm.fshl.i64(i64 %251, i64 %251, i64 31)
  %253 = mul i64 %252, -7046029288634856825
  %254 = getelementptr inbounds nuw i8, ptr %247, i64 8
  %255 = xor i64 %253, %248
  %256 = tail call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 27)
  %257 = mul i64 %256, -7046029288634856825
  %258 = add i64 %257, -8796714831421723037
  br label %259

259:                                              ; preds = %246, %48
  %260 = phi ptr [ %51, %48 ], [ %254, %246 ]
  %261 = phi i64 [ %50, %48 ], [ %258, %246 ]
  %262 = load i64, ptr %260, align 1
  %263 = tail call noundef i64 @llvm.bswap.i64(i64 %262)
  %264 = mul i64 %263, -4417276706812531889
  %265 = tail call i64 @llvm.fshl.i64(i64 %264, i64 %264, i64 31)
  %266 = mul i64 %265, -7046029288634856825
  %267 = getelementptr inbounds nuw i8, ptr %260, i64 8
  %268 = xor i64 %266, %261
  %269 = tail call i64 @llvm.fshl.i64(i64 %268, i64 %268, i64 27)
  %270 = mul i64 %269, -7046029288634856825
  %271 = add i64 %270, -8796714831421723037
  %272 = getelementptr inbounds nuw i8, ptr %260, i64 9
  %273 = load i8, ptr %267, align 1
  %274 = zext i8 %273 to i64
  %275 = mul i64 %274, 2870177450012600261
  %276 = xor i64 %271, %275
  %277 = tail call i64 @llvm.fshl.i64(i64 %276, i64 %276, i64 11)
  %278 = mul i64 %277, -7046029288634856825
  %279 = load i8, ptr %272, align 1
  %280 = zext i8 %279 to i64
  %281 = mul i64 %280, 2870177450012600261
  %282 = xor i64 %278, %281
  %283 = tail call i64 @llvm.fshl.i64(i64 %282, i64 %282, i64 11)
  %284 = mul i64 %283, -7046029288634856825
  br label %483

285:                                              ; preds = %48
  %286 = load i64, ptr %51, align 1
  %287 = tail call noundef i64 @llvm.bswap.i64(i64 %286)
  %288 = mul i64 %287, -4417276706812531889
  %289 = tail call i64 @llvm.fshl.i64(i64 %288, i64 %288, i64 31)
  %290 = mul i64 %289, -7046029288634856825
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %292 = xor i64 %290, %50
  %293 = tail call i64 @llvm.fshl.i64(i64 %292, i64 %292, i64 27)
  %294 = mul i64 %293, -7046029288634856825
  %295 = add i64 %294, -8796714831421723037
  br label %296

296:                                              ; preds = %285, %48
  %297 = phi ptr [ %51, %48 ], [ %291, %285 ]
  %298 = phi i64 [ %50, %48 ], [ %295, %285 ]
  %299 = load i64, ptr %297, align 1
  %300 = tail call noundef i64 @llvm.bswap.i64(i64 %299)
  %301 = mul i64 %300, -4417276706812531889
  %302 = tail call i64 @llvm.fshl.i64(i64 %301, i64 %301, i64 31)
  %303 = mul i64 %302, -7046029288634856825
  %304 = getelementptr inbounds nuw i8, ptr %297, i64 8
  %305 = xor i64 %303, %298
  %306 = tail call i64 @llvm.fshl.i64(i64 %305, i64 %305, i64 27)
  %307 = mul i64 %306, -7046029288634856825
  %308 = add i64 %307, -8796714831421723037
  br label %309

309:                                              ; preds = %296, %48
  %310 = phi ptr [ %51, %48 ], [ %304, %296 ]
  %311 = phi i64 [ %50, %48 ], [ %308, %296 ]
  %312 = load i64, ptr %310, align 1
  %313 = tail call noundef i64 @llvm.bswap.i64(i64 %312)
  %314 = mul i64 %313, -4417276706812531889
  %315 = tail call i64 @llvm.fshl.i64(i64 %314, i64 %314, i64 31)
  %316 = mul i64 %315, -7046029288634856825
  %317 = getelementptr inbounds nuw i8, ptr %310, i64 8
  %318 = xor i64 %316, %311
  %319 = tail call i64 @llvm.fshl.i64(i64 %318, i64 %318, i64 27)
  %320 = mul i64 %319, -7046029288634856825
  %321 = add i64 %320, -8796714831421723037
  br label %322

322:                                              ; preds = %309, %48
  %323 = phi ptr [ %51, %48 ], [ %317, %309 ]
  %324 = phi i64 [ %50, %48 ], [ %321, %309 ]
  %325 = load i32, ptr %323, align 1
  %326 = tail call noundef i32 @llvm.bswap.i32(i32 %325)
  %327 = zext i32 %326 to i64
  %328 = mul i64 %327, -7046029288634856825
  %329 = xor i64 %328, %324
  %330 = getelementptr inbounds nuw i8, ptr %323, i64 4
  %331 = tail call i64 @llvm.fshl.i64(i64 %329, i64 %329, i64 23)
  %332 = mul i64 %331, -4417276706812531889
  %333 = add i64 %332, 1609587929392839161
  %334 = getelementptr inbounds nuw i8, ptr %323, i64 5
  %335 = load i8, ptr %330, align 1
  %336 = zext i8 %335 to i64
  %337 = mul i64 %336, 2870177450012600261
  %338 = xor i64 %333, %337
  %339 = tail call i64 @llvm.fshl.i64(i64 %338, i64 %338, i64 11)
  %340 = mul i64 %339, -7046029288634856825
  %341 = load i8, ptr %334, align 1
  %342 = zext i8 %341 to i64
  %343 = mul i64 %342, 2870177450012600261
  %344 = xor i64 %340, %343
  %345 = tail call i64 @llvm.fshl.i64(i64 %344, i64 %344, i64 11)
  %346 = mul i64 %345, -7046029288634856825
  br label %483

347:                                              ; preds = %48
  %348 = load i64, ptr %51, align 1
  %349 = tail call noundef i64 @llvm.bswap.i64(i64 %348)
  %350 = mul i64 %349, -4417276706812531889
  %351 = tail call i64 @llvm.fshl.i64(i64 %350, i64 %350, i64 31)
  %352 = mul i64 %351, -7046029288634856825
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %354 = xor i64 %352, %50
  %355 = tail call i64 @llvm.fshl.i64(i64 %354, i64 %354, i64 27)
  %356 = mul i64 %355, -7046029288634856825
  %357 = add i64 %356, -8796714831421723037
  br label %358

358:                                              ; preds = %347, %48
  %359 = phi ptr [ %51, %48 ], [ %353, %347 ]
  %360 = phi i64 [ %50, %48 ], [ %357, %347 ]
  %361 = load i64, ptr %359, align 1
  %362 = tail call noundef i64 @llvm.bswap.i64(i64 %361)
  %363 = mul i64 %362, -4417276706812531889
  %364 = tail call i64 @llvm.fshl.i64(i64 %363, i64 %363, i64 31)
  %365 = mul i64 %364, -7046029288634856825
  %366 = getelementptr inbounds nuw i8, ptr %359, i64 8
  %367 = xor i64 %365, %360
  %368 = tail call i64 @llvm.fshl.i64(i64 %367, i64 %367, i64 27)
  %369 = mul i64 %368, -7046029288634856825
  %370 = add i64 %369, -8796714831421723037
  br label %371

371:                                              ; preds = %358, %48
  %372 = phi ptr [ %51, %48 ], [ %366, %358 ]
  %373 = phi i64 [ %50, %48 ], [ %370, %358 ]
  %374 = load i64, ptr %372, align 1
  %375 = tail call noundef i64 @llvm.bswap.i64(i64 %374)
  %376 = mul i64 %375, -4417276706812531889
  %377 = tail call i64 @llvm.fshl.i64(i64 %376, i64 %376, i64 31)
  %378 = mul i64 %377, -7046029288634856825
  %379 = getelementptr inbounds nuw i8, ptr %372, i64 8
  %380 = xor i64 %378, %373
  %381 = tail call i64 @llvm.fshl.i64(i64 %380, i64 %380, i64 27)
  %382 = mul i64 %381, -7046029288634856825
  %383 = add i64 %382, -8796714831421723037
  %384 = getelementptr inbounds nuw i8, ptr %372, i64 9
  %385 = load i8, ptr %379, align 1
  %386 = zext i8 %385 to i64
  %387 = mul i64 %386, 2870177450012600261
  %388 = xor i64 %383, %387
  %389 = tail call i64 @llvm.fshl.i64(i64 %388, i64 %388, i64 11)
  %390 = mul i64 %389, -7046029288634856825
  %391 = getelementptr inbounds nuw i8, ptr %372, i64 10
  %392 = load i8, ptr %384, align 1
  %393 = zext i8 %392 to i64
  %394 = mul i64 %393, 2870177450012600261
  %395 = xor i64 %390, %394
  %396 = tail call i64 @llvm.fshl.i64(i64 %395, i64 %395, i64 11)
  %397 = mul i64 %396, -7046029288634856825
  %398 = load i8, ptr %391, align 1
  %399 = zext i8 %398 to i64
  %400 = mul i64 %399, 2870177450012600261
  %401 = xor i64 %397, %400
  %402 = tail call i64 @llvm.fshl.i64(i64 %401, i64 %401, i64 11)
  %403 = mul i64 %402, -7046029288634856825
  br label %483

404:                                              ; preds = %48
  %405 = load i64, ptr %51, align 1
  %406 = tail call noundef i64 @llvm.bswap.i64(i64 %405)
  %407 = mul i64 %406, -4417276706812531889
  %408 = tail call i64 @llvm.fshl.i64(i64 %407, i64 %407, i64 31)
  %409 = mul i64 %408, -7046029288634856825
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %411 = xor i64 %409, %50
  %412 = tail call i64 @llvm.fshl.i64(i64 %411, i64 %411, i64 27)
  %413 = mul i64 %412, -7046029288634856825
  %414 = add i64 %413, -8796714831421723037
  br label %415

415:                                              ; preds = %404, %48
  %416 = phi ptr [ %51, %48 ], [ %410, %404 ]
  %417 = phi i64 [ %50, %48 ], [ %414, %404 ]
  %418 = load i64, ptr %416, align 1
  %419 = tail call noundef i64 @llvm.bswap.i64(i64 %418)
  %420 = mul i64 %419, -4417276706812531889
  %421 = tail call i64 @llvm.fshl.i64(i64 %420, i64 %420, i64 31)
  %422 = mul i64 %421, -7046029288634856825
  %423 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %424 = xor i64 %422, %417
  %425 = tail call i64 @llvm.fshl.i64(i64 %424, i64 %424, i64 27)
  %426 = mul i64 %425, -7046029288634856825
  %427 = add i64 %426, -8796714831421723037
  br label %428

428:                                              ; preds = %415, %48
  %429 = phi ptr [ %51, %48 ], [ %423, %415 ]
  %430 = phi i64 [ %50, %48 ], [ %427, %415 ]
  %431 = load i64, ptr %429, align 1
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %431)
  %433 = mul i64 %432, -4417276706812531889
  %434 = tail call i64 @llvm.fshl.i64(i64 %433, i64 %433, i64 31)
  %435 = mul i64 %434, -7046029288634856825
  %436 = getelementptr inbounds nuw i8, ptr %429, i64 8
  %437 = xor i64 %435, %430
  %438 = tail call i64 @llvm.fshl.i64(i64 %437, i64 %437, i64 27)
  %439 = mul i64 %438, -7046029288634856825
  %440 = add i64 %439, -8796714831421723037
  br label %441

441:                                              ; preds = %428, %48
  %442 = phi ptr [ %51, %48 ], [ %436, %428 ]
  %443 = phi i64 [ %50, %48 ], [ %440, %428 ]
  %444 = load i32, ptr %442, align 1
  %445 = tail call noundef i32 @llvm.bswap.i32(i32 %444)
  %446 = zext i32 %445 to i64
  %447 = mul i64 %446, -7046029288634856825
  %448 = xor i64 %447, %443
  %449 = getelementptr inbounds nuw i8, ptr %442, i64 4
  %450 = tail call i64 @llvm.fshl.i64(i64 %448, i64 %448, i64 23)
  %451 = mul i64 %450, -4417276706812531889
  %452 = add i64 %451, 1609587929392839161
  br label %453

453:                                              ; preds = %441, %48
  %454 = phi ptr [ %51, %48 ], [ %449, %441 ]
  %455 = phi i64 [ %50, %48 ], [ %452, %441 ]
  %456 = getelementptr inbounds nuw i8, ptr %454, i64 1
  %457 = load i8, ptr %454, align 1
  %458 = zext i8 %457 to i64
  %459 = mul i64 %458, 2870177450012600261
  %460 = xor i64 %459, %455
  %461 = tail call i64 @llvm.fshl.i64(i64 %460, i64 %460, i64 11)
  %462 = mul i64 %461, -7046029288634856825
  br label %463

463:                                              ; preds = %453, %48
  %464 = phi ptr [ %51, %48 ], [ %456, %453 ]
  %465 = phi i64 [ %50, %48 ], [ %462, %453 ]
  %466 = getelementptr inbounds nuw i8, ptr %464, i64 1
  %467 = load i8, ptr %464, align 1
  %468 = zext i8 %467 to i64
  %469 = mul i64 %468, 2870177450012600261
  %470 = xor i64 %469, %465
  %471 = tail call i64 @llvm.fshl.i64(i64 %470, i64 %470, i64 11)
  %472 = mul i64 %471, -7046029288634856825
  br label %473

473:                                              ; preds = %463, %48
  %474 = phi ptr [ %51, %48 ], [ %466, %463 ]
  %475 = phi i64 [ %50, %48 ], [ %472, %463 ]
  %476 = load i8, ptr %474, align 1
  %477 = zext i8 %476 to i64
  %478 = mul i64 %477, 2870177450012600261
  %479 = xor i64 %478, %475
  %480 = tail call i64 @llvm.fshl.i64(i64 %479, i64 %479, i64 11)
  %481 = mul i64 %480, -7046029288634856825
  br label %483

482:                                              ; preds = %48
  unreachable

483:                                              ; preds = %48, %77, %126, %161, %217, %259, %322, %371, %473
  %484 = phi i64 [ %403, %371 ], [ %346, %322 ], [ %284, %259 ], [ %234, %217 ], [ %179, %161 ], [ %136, %126 ], [ %88, %77 ], [ %50, %48 ], [ %481, %473 ]
  %485 = lshr i64 %484, 33
  %486 = xor i64 %485, %484
  %487 = mul i64 %486, -4417276706812531889
  %488 = lshr i64 %487, 29
  %489 = xor i64 %488, %487
  %490 = mul i64 %489, 1609587929392839161
  %491 = lshr i64 %490, 32
  %492 = xor i64 %491, %490
  ret i64 %492
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH64_canonicalFromHash(ptr noundef writeonly initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #6 {
  store i64 %1, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XXH64_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i64, ptr %0, align 1
  ret i64 %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %80

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %29

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, -5116533133979399234
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -8
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, 8935565165804498204
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %15 = zext i64 %9 to i128
  %16 = zext i64 %14 to i128
  %17 = mul nuw i128 %16, %15
  %18 = lshr i128 %17, 64
  %19 = xor i128 %18, %17
  %20 = trunc i128 %19 to i64
  %21 = add i64 %9, %1
  %22 = add i64 %21, %14
  %23 = add i64 %22, %20
  %24 = lshr i64 %23, 37
  %25 = xor i64 %24, %23
  %26 = mul i64 %25, 1609587929392839161
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  br label %230

29:                                               ; preds = %4
  %30 = icmp samesign ugt i64 %1, 3
  br i1 %30, label %31, label %54

31:                                               ; preds = %29
  %32 = load i32, ptr %0, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %34 = getelementptr inbounds i8, ptr %33, i64 -4
  %35 = load i32, ptr %34, align 1
  %36 = zext i32 %35 to i64
  %37 = zext i32 %32 to i64
  %38 = shl nuw i64 %37, 32
  %39 = or disjoint i64 %38, %36
  %40 = xor i64 %39, -5116533133979399234
  %41 = tail call i64 @llvm.bswap.i64(i64 %40)
  %42 = lshr i64 %41, 51
  %43 = xor i64 %42, %41
  %44 = mul i64 %43, 2654435761
  %45 = add i64 %44, %1
  %46 = lshr i64 %45, 47
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, -4417276706812531889
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587929392839161
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  br label %230

54:                                               ; preds = %29
  %55 = icmp eq i64 %1, 0
  br i1 %55, label %230, label %56

56:                                               ; preds = %54
  %57 = load i8, ptr %0, align 1
  %58 = lshr i64 %1, 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr i8, ptr %0, i64 %1
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %57 to i64
  %65 = zext i8 %60 to i64
  %66 = shl nuw nsw i64 %65, 8
  %67 = or disjoint i64 %66, %64
  %68 = zext i8 %63 to i64
  %69 = shl nuw nsw i64 %68, 16
  %70 = or disjoint i64 %67, %69
  %71 = shl nuw nsw i64 %1, 24
  %72 = or disjoint i64 %70, %71
  %73 = xor i64 %72, 963444408
  %74 = mul i64 %73, -7046029288634856825
  %75 = lshr i64 %74, 37
  %76 = xor i64 %75, %74
  %77 = mul i64 %76, 1609587929392839161
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  br label %230

80:                                               ; preds = %2
  %81 = icmp ult i64 %1, 129
  br i1 %81, label %82, label %224

82:                                               ; preds = %80
  %83 = mul i64 %1, -7046029288634856825
  %84 = icmp samesign ugt i64 %1, 32
  br i1 %84, label %85, label %187

85:                                               ; preds = %82
  %86 = icmp samesign ugt i64 %1, 64
  br i1 %86, label %87, label %154

87:                                               ; preds = %85
  %88 = icmp samesign ugt i64 %1, 96
  br i1 %88, label %89, label %121

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %91 = load i64, ptr %90, align 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %93 = load i64, ptr %92, align 1
  %94 = xor i64 %91, -6270569514386312129
  %95 = tail call i64 @llvm.bswap.i64(i64 %94)
  %96 = xor i64 %93, -442272196676858083
  %97 = tail call i64 @llvm.bswap.i64(i64 %96)
  %98 = zext i64 %95 to i128
  %99 = zext i64 %97 to i128
  %100 = mul nuw i128 %99, %98
  %101 = lshr i128 %100, 64
  %102 = xor i128 %101, %100
  %103 = trunc i128 %102 to i64
  %104 = add i64 %83, %103
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %106 = getelementptr inbounds i8, ptr %105, i64 -64
  %107 = load i64, ptr %106, align 1
  %108 = getelementptr inbounds i8, ptr %105, i64 -56
  %109 = load i64, ptr %108, align 1
  %110 = xor i64 %107, -8479750007183615695
  %111 = tail call i64 @llvm.bswap.i64(i64 %110)
  %112 = xor i64 %109, -3990331339424894108
  %113 = tail call i64 @llvm.bswap.i64(i64 %112)
  %114 = zext i64 %111 to i128
  %115 = zext i64 %113 to i128
  %116 = mul nuw i128 %115, %114
  %117 = lshr i128 %116, 64
  %118 = xor i128 %117, %116
  %119 = trunc i128 %118 to i64
  %120 = add i64 %104, %119
  br label %121

121:                                              ; preds = %89, %87
  %122 = phi i64 [ %120, %89 ], [ %83, %87 ]
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, 4334805606901940427
  %128 = tail call i64 @llvm.bswap.i64(i64 %127)
  %129 = xor i64 %126, -8588252841262240093
  %130 = tail call i64 @llvm.bswap.i64(i64 %129)
  %131 = zext i64 %128 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %122, %136
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %139 = getelementptr inbounds i8, ptr %138, i64 -48
  %140 = load i64, ptr %139, align 1
  %141 = getelementptr inbounds i8, ptr %138, i64 -40
  %142 = load i64, ptr %141, align 1
  %143 = xor i64 %140, 8170735440053008718
  %144 = tail call i64 @llvm.bswap.i64(i64 %143)
  %145 = xor i64 %142, 4042525227318422744
  %146 = tail call i64 @llvm.bswap.i64(i64 %145)
  %147 = zext i64 %144 to i128
  %148 = zext i64 %146 to i128
  %149 = mul nuw i128 %148, %147
  %150 = lshr i128 %149, 64
  %151 = xor i128 %150, %149
  %152 = trunc i128 %151 to i64
  %153 = add i64 %137, %152
  br label %154

154:                                              ; preds = %121, %85
  %155 = phi i64 [ %153, %121 ], [ %83, %85 ]
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %157 = load i64, ptr %156, align 1
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %159 = load i64, ptr %158, align 1
  %160 = xor i64 %157, -3784740785711159944
  %161 = tail call i64 @llvm.bswap.i64(i64 %160)
  %162 = xor i64 %159, -9053694862146178527
  %163 = tail call i64 @llvm.bswap.i64(i64 %162)
  %164 = zext i64 %161 to i128
  %165 = zext i64 %163 to i128
  %166 = mul nuw i128 %165, %164
  %167 = lshr i128 %166, 64
  %168 = xor i128 %167, %166
  %169 = trunc i128 %168 to i64
  %170 = add i64 %155, %169
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %172 = getelementptr inbounds i8, ptr %171, i64 -32
  %173 = load i64, ptr %172, align 1
  %174 = getelementptr inbounds i8, ptr %171, i64 -24
  %175 = load i64, ptr %174, align 1
  %176 = xor i64 %173, -5185817502738602866
  %177 = tail call i64 @llvm.bswap.i64(i64 %176)
  %178 = xor i64 %175, -2290765515763079604
  %179 = tail call i64 @llvm.bswap.i64(i64 %178)
  %180 = zext i64 %177 to i128
  %181 = zext i64 %179 to i128
  %182 = mul nuw i128 %181, %180
  %183 = lshr i128 %182, 64
  %184 = xor i128 %183, %182
  %185 = trunc i128 %184 to i64
  %186 = add i64 %170, %185
  br label %187

187:                                              ; preds = %82, %154
  %188 = phi i64 [ %186, %154 ], [ %83, %82 ]
  %189 = load i64, ptr %0, align 1
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %191 = load i64, ptr %190, align 1
  %192 = xor i64 %189, -5116533133979399234
  %193 = tail call i64 @llvm.bswap.i64(i64 %192)
  %194 = xor i64 %191, 8935565165804498204
  %195 = tail call i64 @llvm.bswap.i64(i64 %194)
  %196 = zext i64 %193 to i128
  %197 = zext i64 %195 to i128
  %198 = mul nuw i128 %197, %196
  %199 = lshr i128 %198, 64
  %200 = xor i128 %199, %198
  %201 = trunc i128 %200 to i64
  %202 = add i64 %188, %201
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %204 = getelementptr inbounds i8, ptr %203, i64 -16
  %205 = load i64, ptr %204, align 1
  %206 = getelementptr inbounds i8, ptr %203, i64 -8
  %207 = load i64, ptr %206, align 1
  %208 = xor i64 %205, -2390164652524791845
  %209 = tail call i64 @llvm.bswap.i64(i64 %208)
  %210 = xor i64 %207, 8232761146196846367
  %211 = tail call i64 @llvm.bswap.i64(i64 %210)
  %212 = zext i64 %209 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %202, %217
  %219 = lshr i64 %218, 37
  %220 = xor i64 %219, %218
  %221 = mul i64 %220, 1609587929392839161
  %222 = lshr i64 %221, 32
  %223 = xor i64 %222, %221
  br label %230

224:                                              ; preds = %80
  %225 = icmp ult i64 %1, 241
  br i1 %225, label %226, label %228

226:                                              ; preds = %224
  %227 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %230

228:                                              ; preds = %224
  %229 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %230

230:                                              ; preds = %56, %54, %31, %6, %228, %226, %187
  %231 = phi i64 [ %223, %187 ], [ %227, %226 ], [ %229, %228 ], [ %28, %6 ], [ %53, %31 ], [ %79, %56 ], [ 0, %54 ]
  ret i64 %231
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #13 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = trunc nuw nsw i64 %1 to i32
  %7 = load i64, ptr %0, align 1
  %8 = tail call noundef i64 @llvm.bswap.i64(i64 %7)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 1
  %11 = tail call noundef i64 @llvm.bswap.i64(i64 %10)
  %12 = load i64, ptr %2, align 1
  %13 = tail call noundef i64 @llvm.bswap.i64(i64 %12)
  %14 = add i64 %13, %3
  %15 = xor i64 %14, %8
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %17 = load i64, ptr %16, align 1
  %18 = tail call noundef i64 @llvm.bswap.i64(i64 %17)
  %19 = sub i64 %18, %3
  %20 = xor i64 %19, %11
  %21 = zext i64 %15 to i128
  %22 = zext i64 %20 to i128
  %23 = mul nuw i128 %22, %21
  %24 = lshr i128 %23, 64
  %25 = xor i128 %24, %23
  %26 = trunc i128 %25 to i64
  %27 = add i64 %5, %26
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %30 = load i64, ptr %28, align 1
  %31 = tail call noundef i64 @llvm.bswap.i64(i64 %30)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = tail call noundef i64 @llvm.bswap.i64(i64 %33)
  %35 = load i64, ptr %29, align 1
  %36 = tail call noundef i64 @llvm.bswap.i64(i64 %35)
  %37 = add i64 %36, %3
  %38 = xor i64 %37, %31
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %40 = load i64, ptr %39, align 1
  %41 = tail call noundef i64 @llvm.bswap.i64(i64 %40)
  %42 = sub i64 %41, %3
  %43 = xor i64 %42, %34
  %44 = zext i64 %38 to i128
  %45 = zext i64 %43 to i128
  %46 = mul nuw i128 %45, %44
  %47 = lshr i128 %46, 64
  %48 = xor i128 %47, %46
  %49 = trunc i128 %48 to i64
  %50 = add i64 %27, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %53 = load i64, ptr %51, align 1
  %54 = tail call noundef i64 @llvm.bswap.i64(i64 %53)
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %56 = load i64, ptr %55, align 1
  %57 = tail call noundef i64 @llvm.bswap.i64(i64 %56)
  %58 = load i64, ptr %52, align 1
  %59 = tail call noundef i64 @llvm.bswap.i64(i64 %58)
  %60 = add i64 %59, %3
  %61 = xor i64 %60, %54
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %63 = load i64, ptr %62, align 1
  %64 = tail call noundef i64 @llvm.bswap.i64(i64 %63)
  %65 = sub i64 %64, %3
  %66 = xor i64 %65, %57
  %67 = zext i64 %61 to i128
  %68 = zext i64 %66 to i128
  %69 = mul nuw i128 %68, %67
  %70 = lshr i128 %69, 64
  %71 = xor i128 %70, %69
  %72 = trunc i128 %71 to i64
  %73 = add i64 %50, %72
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %76 = load i64, ptr %74, align 1
  %77 = tail call noundef i64 @llvm.bswap.i64(i64 %76)
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %79 = load i64, ptr %78, align 1
  %80 = tail call noundef i64 @llvm.bswap.i64(i64 %79)
  %81 = load i64, ptr %75, align 1
  %82 = tail call noundef i64 @llvm.bswap.i64(i64 %81)
  %83 = add i64 %82, %3
  %84 = xor i64 %83, %77
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %86 = load i64, ptr %85, align 1
  %87 = tail call noundef i64 @llvm.bswap.i64(i64 %86)
  %88 = sub i64 %87, %3
  %89 = xor i64 %88, %80
  %90 = zext i64 %84 to i128
  %91 = zext i64 %89 to i128
  %92 = mul nuw i128 %91, %90
  %93 = lshr i128 %92, 64
  %94 = xor i128 %93, %92
  %95 = trunc i128 %94 to i64
  %96 = add i64 %73, %95
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %97, align 1
  %100 = tail call noundef i64 @llvm.bswap.i64(i64 %99)
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %102 = load i64, ptr %101, align 1
  %103 = tail call noundef i64 @llvm.bswap.i64(i64 %102)
  %104 = load i64, ptr %98, align 1
  %105 = tail call noundef i64 @llvm.bswap.i64(i64 %104)
  %106 = add i64 %105, %3
  %107 = xor i64 %106, %100
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %109 = load i64, ptr %108, align 1
  %110 = tail call noundef i64 @llvm.bswap.i64(i64 %109)
  %111 = sub i64 %110, %3
  %112 = xor i64 %111, %103
  %113 = zext i64 %107 to i128
  %114 = zext i64 %112 to i128
  %115 = mul nuw i128 %114, %113
  %116 = lshr i128 %115, 64
  %117 = xor i128 %116, %115
  %118 = trunc i128 %117 to i64
  %119 = add i64 %96, %118
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %122 = load i64, ptr %120, align 1
  %123 = tail call noundef i64 @llvm.bswap.i64(i64 %122)
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %125 = load i64, ptr %124, align 1
  %126 = tail call noundef i64 @llvm.bswap.i64(i64 %125)
  %127 = load i64, ptr %121, align 1
  %128 = tail call noundef i64 @llvm.bswap.i64(i64 %127)
  %129 = add i64 %128, %3
  %130 = xor i64 %129, %123
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %132 = load i64, ptr %131, align 1
  %133 = tail call noundef i64 @llvm.bswap.i64(i64 %132)
  %134 = sub i64 %133, %3
  %135 = xor i64 %134, %126
  %136 = zext i64 %130 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %119, %141
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %144 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %145 = load i64, ptr %143, align 1
  %146 = tail call noundef i64 @llvm.bswap.i64(i64 %145)
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %148 = load i64, ptr %147, align 1
  %149 = tail call noundef i64 @llvm.bswap.i64(i64 %148)
  %150 = load i64, ptr %144, align 1
  %151 = tail call noundef i64 @llvm.bswap.i64(i64 %150)
  %152 = add i64 %151, %3
  %153 = xor i64 %152, %146
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %155 = load i64, ptr %154, align 1
  %156 = tail call noundef i64 @llvm.bswap.i64(i64 %155)
  %157 = sub i64 %156, %3
  %158 = xor i64 %157, %149
  %159 = zext i64 %153 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %142, %164
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %167 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %168 = load i64, ptr %166, align 1
  %169 = tail call noundef i64 @llvm.bswap.i64(i64 %168)
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %171 = load i64, ptr %170, align 1
  %172 = tail call noundef i64 @llvm.bswap.i64(i64 %171)
  %173 = load i64, ptr %167, align 1
  %174 = tail call noundef i64 @llvm.bswap.i64(i64 %173)
  %175 = add i64 %174, %3
  %176 = xor i64 %175, %169
  %177 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %178 = load i64, ptr %177, align 1
  %179 = tail call noundef i64 @llvm.bswap.i64(i64 %178)
  %180 = sub i64 %179, %3
  %181 = xor i64 %180, %172
  %182 = zext i64 %176 to i128
  %183 = zext i64 %181 to i128
  %184 = mul nuw i128 %183, %182
  %185 = lshr i128 %184, 64
  %186 = xor i128 %185, %184
  %187 = trunc i128 %186 to i64
  %188 = add i64 %165, %187
  %189 = lshr i32 %6, 4
  %190 = lshr i64 %188, 37
  %191 = xor i64 %190, %188
  %192 = mul i64 %191, 1609587929392839161
  %193 = lshr i64 %192, 32
  %194 = xor i64 %193, %192
  %195 = icmp eq i32 %189, 8
  br i1 %195, label %228, label %196

196:                                              ; preds = %4
  %197 = zext nneg i32 %189 to i64
  br label %198

198:                                              ; preds = %196, %198
  %199 = phi i64 [ 8, %196 ], [ %226, %198 ]
  %200 = phi i64 [ %194, %196 ], [ %225, %198 ]
  %201 = shl nsw i64 %199, 4
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 %201
  %203 = getelementptr i8, ptr %2, i64 %201
  %204 = getelementptr i8, ptr %203, i64 -125
  %205 = load i64, ptr %202, align 1
  %206 = tail call noundef i64 @llvm.bswap.i64(i64 %205)
  %207 = getelementptr inbounds nuw i8, ptr %202, i64 8
  %208 = load i64, ptr %207, align 1
  %209 = tail call noundef i64 @llvm.bswap.i64(i64 %208)
  %210 = load i64, ptr %204, align 1
  %211 = tail call noundef i64 @llvm.bswap.i64(i64 %210)
  %212 = add i64 %211, %3
  %213 = xor i64 %212, %206
  %214 = getelementptr i8, ptr %203, i64 -117
  %215 = load i64, ptr %214, align 1
  %216 = tail call noundef i64 @llvm.bswap.i64(i64 %215)
  %217 = sub i64 %216, %3
  %218 = xor i64 %217, %209
  %219 = zext i64 %213 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %200, %224
  %226 = add nuw nsw i64 %199, 1
  %227 = icmp eq i64 %226, %197
  br i1 %227, label %228, label %198

228:                                              ; preds = %198, %4
  %229 = phi i64 [ %194, %4 ], [ %225, %198 ]
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %231 = getelementptr inbounds i8, ptr %230, i64 -16
  %232 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %233 = load i64, ptr %231, align 1
  %234 = tail call noundef i64 @llvm.bswap.i64(i64 %233)
  %235 = getelementptr inbounds i8, ptr %230, i64 -8
  %236 = load i64, ptr %235, align 1
  %237 = tail call noundef i64 @llvm.bswap.i64(i64 %236)
  %238 = load i64, ptr %232, align 1
  %239 = tail call noundef i64 @llvm.bswap.i64(i64 %238)
  %240 = add i64 %239, %3
  %241 = xor i64 %240, %234
  %242 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %243 = load i64, ptr %242, align 1
  %244 = tail call noundef i64 @llvm.bswap.i64(i64 %243)
  %245 = sub i64 %244, %3
  %246 = xor i64 %245, %237
  %247 = zext i64 %241 to i128
  %248 = zext i64 %246 to i128
  %249 = mul nuw i128 %248, %247
  %250 = lshr i128 %249, 64
  %251 = xor i128 %250, %249
  %252 = trunc i128 %251 to i64
  %253 = add i64 %229, %252
  %254 = lshr i64 %253, 37
  %255 = xor i64 %254, %253
  %256 = mul i64 %255, 1609587929392839161
  %257 = lshr i64 %256, 32
  %258 = xor i64 %257, %256
  ret i64 %258
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1) unnamed_addr #13 {
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %162, label %5

5:                                                ; preds = %2, %17
  %6 = phi i64 [ %49, %17 ], [ 2654435761, %2 ]
  %7 = phi i64 [ %45, %17 ], [ 2870177450012600261, %2 ]
  %8 = phi i64 [ %41, %17 ], [ 2246822519, %2 ]
  %9 = phi i64 [ %37, %17 ], [ -8796714831421723037, %2 ]
  %10 = phi i64 [ %33, %17 ], [ 1609587929392839161, %2 ]
  %11 = phi i64 [ %29, %17 ], [ -4417276706812531889, %2 ]
  %12 = phi i64 [ %25, %17 ], [ -7046029288634856825, %2 ]
  %13 = phi i64 [ %21, %17 ], [ 3266489917, %2 ]
  %14 = phi i64 [ %50, %17 ], [ 0, %2 ]
  %15 = shl i64 %14, 10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  br label %52

17:                                               ; preds = %52
  %18 = lshr i64 %75, 47
  %19 = xor i64 %75, %18
  %20 = xor i64 %19, -4329134394285701654
  %21 = mul i64 %20, 2654435761
  %22 = lshr i64 %87, 47
  %23 = xor i64 %87, %22
  %24 = xor i64 %23, -1485321483350670907
  %25 = mul i64 %24, 2654435761
  %26 = lshr i64 %99, 47
  %27 = xor i64 %99, %26
  %28 = xor i64 %27, 5321830579834785047
  %29 = mul i64 %28, 2654435761
  %30 = lshr i64 %111, 47
  %31 = xor i64 %111, %30
  %32 = xor i64 %31, -7032137544937171245
  %33 = mul i64 %32, 2654435761
  %34 = lshr i64 %123, 47
  %35 = xor i64 %123, %34
  %36 = xor i64 %35, -242834301215959509
  %37 = mul i64 %36, 2654435761
  %38 = lshr i64 %135, 47
  %39 = xor i64 %135, %38
  %40 = xor i64 %39, -3588858202114426737
  %41 = mul i64 %40, 2654435761
  %42 = lshr i64 %147, 47
  %43 = xor i64 %147, %42
  %44 = xor i64 %43, 2883454493032893253
  %45 = mul i64 %44, 2654435761
  %46 = lshr i64 %159, 47
  %47 = xor i64 %159, %46
  %48 = xor i64 %47, 9097354517224871855
  %49 = mul i64 %48, 2654435761
  %50 = add nuw nsw i64 %14, 1
  %51 = icmp eq i64 %50, %3
  br i1 %51, label %162, label %5

52:                                               ; preds = %52, %5
  %53 = phi i64 [ %159, %52 ], [ %6, %5 ]
  %54 = phi i64 [ %147, %52 ], [ %7, %5 ]
  %55 = phi i64 [ %75, %52 ], [ %13, %5 ]
  %56 = phi i64 [ %87, %52 ], [ %12, %5 ]
  %57 = phi i64 [ %135, %52 ], [ %8, %5 ]
  %58 = phi i64 [ %123, %52 ], [ %9, %5 ]
  %59 = phi i64 [ %111, %52 ], [ %10, %5 ]
  %60 = phi i64 [ %99, %52 ], [ %11, %5 ]
  %61 = phi i64 [ %160, %52 ], [ 0, %5 ]
  %62 = shl i64 %61, 6
  %63 = getelementptr inbounds nuw i8, ptr %16, i64 %62
  %64 = shl i64 %61, 3
  %65 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %64
  %66 = load i64, ptr %63, align 1
  %67 = tail call noundef i64 @llvm.bswap.i64(i64 %66)
  %68 = load i64, ptr %65, align 8
  %69 = tail call noundef i64 @llvm.bswap.i64(i64 %68)
  %70 = xor i64 %69, %67
  %71 = add i64 %67, %55
  %72 = and i64 %70, 4294967295
  %73 = lshr i64 %70, 32
  %74 = mul nuw i64 %72, %73
  %75 = add i64 %71, %74
  %76 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %77 = load i64, ptr %76, align 1
  %78 = tail call noundef i64 @llvm.bswap.i64(i64 %77)
  %79 = getelementptr inbounds nuw i8, ptr %65, i64 8
  %80 = load i64, ptr %79, align 8
  %81 = tail call noundef i64 @llvm.bswap.i64(i64 %80)
  %82 = xor i64 %81, %78
  %83 = add i64 %78, %56
  %84 = and i64 %82, 4294967295
  %85 = lshr i64 %82, 32
  %86 = mul nuw i64 %84, %85
  %87 = add i64 %83, %86
  %88 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %89 = load i64, ptr %88, align 1
  %90 = tail call noundef i64 @llvm.bswap.i64(i64 %89)
  %91 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %92 = load i64, ptr %91, align 8
  %93 = tail call noundef i64 @llvm.bswap.i64(i64 %92)
  %94 = xor i64 %93, %90
  %95 = add i64 %90, %60
  %96 = and i64 %94, 4294967295
  %97 = lshr i64 %94, 32
  %98 = mul nuw i64 %96, %97
  %99 = add i64 %95, %98
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 24
  %101 = load i64, ptr %100, align 1
  %102 = tail call noundef i64 @llvm.bswap.i64(i64 %101)
  %103 = getelementptr inbounds nuw i8, ptr %65, i64 24
  %104 = load i64, ptr %103, align 8
  %105 = tail call noundef i64 @llvm.bswap.i64(i64 %104)
  %106 = xor i64 %105, %102
  %107 = add i64 %102, %59
  %108 = and i64 %106, 4294967295
  %109 = lshr i64 %106, 32
  %110 = mul nuw i64 %108, %109
  %111 = add i64 %107, %110
  %112 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %113 = load i64, ptr %112, align 1
  %114 = tail call noundef i64 @llvm.bswap.i64(i64 %113)
  %115 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %116 = load i64, ptr %115, align 8
  %117 = tail call noundef i64 @llvm.bswap.i64(i64 %116)
  %118 = xor i64 %117, %114
  %119 = add i64 %114, %58
  %120 = and i64 %118, 4294967295
  %121 = lshr i64 %118, 32
  %122 = mul nuw i64 %120, %121
  %123 = add i64 %119, %122
  %124 = getelementptr inbounds nuw i8, ptr %63, i64 40
  %125 = load i64, ptr %124, align 1
  %126 = tail call noundef i64 @llvm.bswap.i64(i64 %125)
  %127 = getelementptr inbounds nuw i8, ptr %65, i64 40
  %128 = load i64, ptr %127, align 8
  %129 = tail call noundef i64 @llvm.bswap.i64(i64 %128)
  %130 = xor i64 %129, %126
  %131 = add i64 %126, %57
  %132 = and i64 %130, 4294967295
  %133 = lshr i64 %130, 32
  %134 = mul nuw i64 %132, %133
  %135 = add i64 %131, %134
  %136 = getelementptr inbounds nuw i8, ptr %63, i64 48
  %137 = load i64, ptr %136, align 1
  %138 = tail call noundef i64 @llvm.bswap.i64(i64 %137)
  %139 = getelementptr inbounds nuw i8, ptr %65, i64 48
  %140 = load i64, ptr %139, align 8
  %141 = tail call noundef i64 @llvm.bswap.i64(i64 %140)
  %142 = xor i64 %141, %138
  %143 = add i64 %138, %54
  %144 = and i64 %142, 4294967295
  %145 = lshr i64 %142, 32
  %146 = mul nuw i64 %144, %145
  %147 = add i64 %143, %146
  %148 = getelementptr inbounds nuw i8, ptr %63, i64 56
  %149 = load i64, ptr %148, align 1
  %150 = tail call noundef i64 @llvm.bswap.i64(i64 %149)
  %151 = getelementptr inbounds nuw i8, ptr %65, i64 56
  %152 = load i64, ptr %151, align 8
  %153 = tail call noundef i64 @llvm.bswap.i64(i64 %152)
  %154 = xor i64 %153, %150
  %155 = add i64 %150, %53
  %156 = and i64 %154, 4294967295
  %157 = lshr i64 %154, 32
  %158 = mul nuw i64 %156, %157
  %159 = add i64 %155, %158
  %160 = add nuw nsw i64 %61, 1
  %161 = icmp eq i64 %160, 16
  br i1 %161, label %17, label %52

162:                                              ; preds = %17, %2
  %163 = phi i64 [ 2654435761, %2 ], [ %49, %17 ]
  %164 = phi i64 [ 2870177450012600261, %2 ], [ %45, %17 ]
  %165 = phi i64 [ 2246822519, %2 ], [ %41, %17 ]
  %166 = phi i64 [ -8796714831421723037, %2 ], [ %37, %17 ]
  %167 = phi i64 [ 1609587929392839161, %2 ], [ %33, %17 ]
  %168 = phi i64 [ -4417276706812531889, %2 ], [ %29, %17 ]
  %169 = phi i64 [ -7046029288634856825, %2 ], [ %25, %17 ]
  %170 = phi i64 [ 3266489917, %2 ], [ %21, %17 ]
  %171 = and i64 %1, -1024
  %172 = and i64 %1, 1023
  %173 = lshr i64 %172, 6
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 %171
  %175 = icmp samesign ult i64 %172, 64
  br i1 %175, label %286, label %176

176:                                              ; preds = %162, %176
  %177 = phi i64 [ %283, %176 ], [ %163, %162 ]
  %178 = phi i64 [ %271, %176 ], [ %164, %162 ]
  %179 = phi i64 [ %199, %176 ], [ %170, %162 ]
  %180 = phi i64 [ %211, %176 ], [ %169, %162 ]
  %181 = phi i64 [ %259, %176 ], [ %165, %162 ]
  %182 = phi i64 [ %247, %176 ], [ %166, %162 ]
  %183 = phi i64 [ %235, %176 ], [ %167, %162 ]
  %184 = phi i64 [ %223, %176 ], [ %168, %162 ]
  %185 = phi i64 [ %284, %176 ], [ 0, %162 ]
  %186 = shl i64 %185, 6
  %187 = getelementptr inbounds nuw i8, ptr %174, i64 %186
  %188 = shl i64 %185, 3
  %189 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %188
  %190 = load i64, ptr %187, align 1
  %191 = tail call noundef i64 @llvm.bswap.i64(i64 %190)
  %192 = load i64, ptr %189, align 8
  %193 = tail call noundef i64 @llvm.bswap.i64(i64 %192)
  %194 = xor i64 %193, %191
  %195 = add i64 %191, %179
  %196 = and i64 %194, 4294967295
  %197 = lshr i64 %194, 32
  %198 = mul nuw i64 %196, %197
  %199 = add i64 %195, %198
  %200 = getelementptr inbounds nuw i8, ptr %187, i64 8
  %201 = load i64, ptr %200, align 1
  %202 = tail call noundef i64 @llvm.bswap.i64(i64 %201)
  %203 = getelementptr inbounds nuw i8, ptr %189, i64 8
  %204 = load i64, ptr %203, align 8
  %205 = tail call noundef i64 @llvm.bswap.i64(i64 %204)
  %206 = xor i64 %205, %202
  %207 = add i64 %202, %180
  %208 = and i64 %206, 4294967295
  %209 = lshr i64 %206, 32
  %210 = mul nuw i64 %208, %209
  %211 = add i64 %207, %210
  %212 = getelementptr inbounds nuw i8, ptr %187, i64 16
  %213 = load i64, ptr %212, align 1
  %214 = tail call noundef i64 @llvm.bswap.i64(i64 %213)
  %215 = getelementptr inbounds nuw i8, ptr %189, i64 16
  %216 = load i64, ptr %215, align 8
  %217 = tail call noundef i64 @llvm.bswap.i64(i64 %216)
  %218 = xor i64 %217, %214
  %219 = add i64 %214, %184
  %220 = and i64 %218, 4294967295
  %221 = lshr i64 %218, 32
  %222 = mul nuw i64 %220, %221
  %223 = add i64 %219, %222
  %224 = getelementptr inbounds nuw i8, ptr %187, i64 24
  %225 = load i64, ptr %224, align 1
  %226 = tail call noundef i64 @llvm.bswap.i64(i64 %225)
  %227 = getelementptr inbounds nuw i8, ptr %189, i64 24
  %228 = load i64, ptr %227, align 8
  %229 = tail call noundef i64 @llvm.bswap.i64(i64 %228)
  %230 = xor i64 %229, %226
  %231 = add i64 %226, %183
  %232 = and i64 %230, 4294967295
  %233 = lshr i64 %230, 32
  %234 = mul nuw i64 %232, %233
  %235 = add i64 %231, %234
  %236 = getelementptr inbounds nuw i8, ptr %187, i64 32
  %237 = load i64, ptr %236, align 1
  %238 = tail call noundef i64 @llvm.bswap.i64(i64 %237)
  %239 = getelementptr inbounds nuw i8, ptr %189, i64 32
  %240 = load i64, ptr %239, align 8
  %241 = tail call noundef i64 @llvm.bswap.i64(i64 %240)
  %242 = xor i64 %241, %238
  %243 = add i64 %238, %182
  %244 = and i64 %242, 4294967295
  %245 = lshr i64 %242, 32
  %246 = mul nuw i64 %244, %245
  %247 = add i64 %243, %246
  %248 = getelementptr inbounds nuw i8, ptr %187, i64 40
  %249 = load i64, ptr %248, align 1
  %250 = tail call noundef i64 @llvm.bswap.i64(i64 %249)
  %251 = getelementptr inbounds nuw i8, ptr %189, i64 40
  %252 = load i64, ptr %251, align 8
  %253 = tail call noundef i64 @llvm.bswap.i64(i64 %252)
  %254 = xor i64 %253, %250
  %255 = add i64 %250, %181
  %256 = and i64 %254, 4294967295
  %257 = lshr i64 %254, 32
  %258 = mul nuw i64 %256, %257
  %259 = add i64 %255, %258
  %260 = getelementptr inbounds nuw i8, ptr %187, i64 48
  %261 = load i64, ptr %260, align 1
  %262 = tail call noundef i64 @llvm.bswap.i64(i64 %261)
  %263 = getelementptr inbounds nuw i8, ptr %189, i64 48
  %264 = load i64, ptr %263, align 8
  %265 = tail call noundef i64 @llvm.bswap.i64(i64 %264)
  %266 = xor i64 %265, %262
  %267 = add i64 %262, %178
  %268 = and i64 %266, 4294967295
  %269 = lshr i64 %266, 32
  %270 = mul nuw i64 %268, %269
  %271 = add i64 %267, %270
  %272 = getelementptr inbounds nuw i8, ptr %187, i64 56
  %273 = load i64, ptr %272, align 1
  %274 = tail call noundef i64 @llvm.bswap.i64(i64 %273)
  %275 = getelementptr inbounds nuw i8, ptr %189, i64 56
  %276 = load i64, ptr %275, align 8
  %277 = tail call noundef i64 @llvm.bswap.i64(i64 %276)
  %278 = xor i64 %277, %274
  %279 = add i64 %274, %177
  %280 = and i64 %278, 4294967295
  %281 = lshr i64 %278, 32
  %282 = mul nuw i64 %280, %281
  %283 = add i64 %279, %282
  %284 = add nuw nsw i64 %185, 1
  %285 = icmp eq i64 %284, %173
  br i1 %285, label %286, label %176

286:                                              ; preds = %176, %162
  %287 = phi i64 [ %163, %162 ], [ %283, %176 ]
  %288 = phi i64 [ %164, %162 ], [ %271, %176 ]
  %289 = phi i64 [ %165, %162 ], [ %259, %176 ]
  %290 = phi i64 [ %166, %162 ], [ %247, %176 ]
  %291 = phi i64 [ %167, %162 ], [ %235, %176 ]
  %292 = phi i64 [ %168, %162 ], [ %223, %176 ]
  %293 = phi i64 [ %169, %162 ], [ %211, %176 ]
  %294 = phi i64 [ %170, %162 ], [ %199, %176 ]
  %295 = and i64 %1, 63
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %371, label %297

297:                                              ; preds = %286
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %299 = getelementptr inbounds i8, ptr %298, i64 -64
  %300 = load i64, ptr %299, align 1
  %301 = tail call noundef i64 @llvm.bswap.i64(i64 %300)
  %302 = xor i64 %301, -1556992608276218209
  %303 = add i64 %301, %294
  %304 = and i64 %302, 4294967295
  %305 = lshr i64 %302, 32
  %306 = mul nuw i64 %304, %305
  %307 = add i64 %303, %306
  %308 = getelementptr inbounds i8, ptr %298, i64 -56
  %309 = load i64, ptr %308, align 1
  %310 = tail call noundef i64 @llvm.bswap.i64(i64 %309)
  %311 = xor i64 %310, -4196251135427498811
  %312 = add i64 %310, %293
  %313 = and i64 %311, 4294967295
  %314 = lshr i64 %311, 32
  %315 = mul nuw i64 %313, %314
  %316 = add i64 %312, %315
  %317 = getelementptr inbounds i8, ptr %298, i64 -48
  %318 = load i64, ptr %317, align 1
  %319 = tail call noundef i64 @llvm.bswap.i64(i64 %318)
  %320 = xor i64 %319, 1723580219865931905
  %321 = add i64 %319, %292
  %322 = and i64 %320, 4294967295
  %323 = lshr i64 %320, 32
  %324 = mul nuw i64 %322, %323
  %325 = add i64 %321, %324
  %326 = getelementptr inbounds i8, ptr %298, i64 -40
  %327 = load i64, ptr %326, align 1
  %328 = tail call noundef i64 @llvm.bswap.i64(i64 %327)
  %329 = xor i64 %328, -3221803331004277491
  %330 = add i64 %328, %291
  %331 = and i64 %329, 4294967295
  %332 = lshr i64 %329, 32
  %333 = mul nuw i64 %331, %332
  %334 = add i64 %330, %333
  %335 = getelementptr inbounds i8, ptr %298, i64 -32
  %336 = load i64, ptr %335, align 1
  %337 = tail call noundef i64 @llvm.bswap.i64(i64 %336)
  %338 = xor i64 %337, 3143064850383918358
  %339 = add i64 %337, %290
  %340 = and i64 %338, 4294967295
  %341 = lshr i64 %338, 32
  %342 = mul nuw i64 %340, %341
  %343 = add i64 %339, %342
  %344 = getelementptr inbounds i8, ptr %298, i64 -24
  %345 = load i64, ptr %344, align 1
  %346 = tail call noundef i64 @llvm.bswap.i64(i64 %345)
  %347 = xor i64 %346, -8071399103737053674
  %348 = add i64 %346, %289
  %349 = and i64 %347, 4294967295
  %350 = lshr i64 %347, 32
  %351 = mul nuw i64 %349, %350
  %352 = add i64 %348, %351
  %353 = getelementptr inbounds i8, ptr %298, i64 -16
  %354 = load i64, ptr %353, align 1
  %355 = tail call noundef i64 @llvm.bswap.i64(i64 %354)
  %356 = xor i64 %355, 5030012605302946040
  %357 = add i64 %355, %288
  %358 = and i64 %356, 4294967295
  %359 = lshr i64 %356, 32
  %360 = mul nuw i64 %358, %359
  %361 = add i64 %357, %360
  %362 = getelementptr inbounds i8, ptr %298, i64 -8
  %363 = load i64, ptr %362, align 1
  %364 = tail call noundef i64 @llvm.bswap.i64(i64 %363)
  %365 = xor i64 %364, -5825401622958753077
  %366 = add i64 %364, %287
  %367 = and i64 %365, 4294967295
  %368 = lshr i64 %365, 32
  %369 = mul nuw i64 %367, %368
  %370 = add i64 %366, %369
  br label %371

371:                                              ; preds = %286, %297
  %372 = phi i64 [ %287, %286 ], [ %370, %297 ]
  %373 = phi i64 [ %288, %286 ], [ %361, %297 ]
  %374 = phi i64 [ %289, %286 ], [ %352, %297 ]
  %375 = phi i64 [ %290, %286 ], [ %343, %297 ]
  %376 = phi i64 [ %291, %286 ], [ %334, %297 ]
  %377 = phi i64 [ %292, %286 ], [ %325, %297 ]
  %378 = phi i64 [ %293, %286 ], [ %316, %297 ]
  %379 = phi i64 [ %294, %286 ], [ %307, %297 ]
  %380 = mul i64 %1, -7046029288634856825
  %381 = xor i64 %379, 7914194659941938988
  %382 = xor i64 %378, -6611157965513653271
  %383 = zext i64 %381 to i128
  %384 = zext i64 %382 to i128
  %385 = mul nuw i128 %383, %384
  %386 = lshr i128 %385, 64
  %387 = xor i128 %386, %385
  %388 = trunc i128 %387 to i64
  %389 = xor i64 %377, -1839215637059881052
  %390 = xor i64 %376, -3433288310154277810
  %391 = zext i64 %389 to i128
  %392 = zext i64 %390 to i128
  %393 = mul nuw i128 %391, %392
  %394 = lshr i128 %393, 64
  %395 = xor i128 %394, %393
  %396 = trunc i128 %395 to i64
  %397 = xor i64 %375, 5046485836271438973
  %398 = xor i64 %374, -8055285457383852172
  %399 = zext i64 %397 to i128
  %400 = zext i64 %398 to i128
  %401 = mul nuw i128 %399, %400
  %402 = lshr i128 %401, 64
  %403 = xor i128 %402, %401
  %404 = trunc i128 %403 to i64
  %405 = xor i64 %373, 5920048007935066598
  %406 = xor i64 %372, 7336514198459093435
  %407 = zext i64 %405 to i128
  %408 = zext i64 %406 to i128
  %409 = mul nuw i128 %407, %408
  %410 = lshr i128 %409, 64
  %411 = xor i128 %410, %409
  %412 = trunc i128 %411 to i64
  %413 = add i64 %380, %412
  %414 = add i64 %413, %404
  %415 = add i64 %414, %396
  %416 = add i64 %415, %388
  %417 = lshr i64 %416, 37
  %418 = xor i64 %417, %416
  %419 = mul i64 %418, 1609587929392839161
  %420 = lshr i64 %419, 32
  %421 = xor i64 %420, %419
  ret i64 %421
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits_withSecret(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %89

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %34

8:                                                ; preds = %6
  %9 = load i64, ptr %0, align 1
  %10 = load i64, ptr %2, align 1
  %11 = xor i64 %10, %9
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %14 = getelementptr inbounds i8, ptr %13, i64 -8
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %17, %15
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %20 = zext i64 %12 to i128
  %21 = zext i64 %19 to i128
  %22 = mul nuw i128 %21, %20
  %23 = lshr i128 %22, 64
  %24 = xor i128 %23, %22
  %25 = trunc i128 %24 to i64
  %26 = add i64 %12, %1
  %27 = add i64 %26, %19
  %28 = add i64 %27, %25
  %29 = lshr i64 %28, 37
  %30 = xor i64 %29, %28
  %31 = mul i64 %30, 1609587929392839161
  %32 = lshr i64 %31, 32
  %33 = xor i64 %32, %31
  br label %270

34:                                               ; preds = %6
  %35 = icmp samesign ugt i64 %1, 3
  br i1 %35, label %36, label %60

36:                                               ; preds = %34
  %37 = load i32, ptr %0, align 1
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %39 = getelementptr inbounds i8, ptr %38, i64 -4
  %40 = load i32, ptr %39, align 1
  %41 = zext i32 %40 to i64
  %42 = zext i32 %37 to i64
  %43 = shl nuw i64 %42, 32
  %44 = or disjoint i64 %43, %41
  %45 = load i64, ptr %2, align 1
  %46 = xor i64 %44, %45
  %47 = tail call i64 @llvm.bswap.i64(i64 %46)
  %48 = lshr i64 %47, 51
  %49 = xor i64 %48, %47
  %50 = mul i64 %49, 2654435761
  %51 = add i64 %50, %1
  %52 = lshr i64 %51, 47
  %53 = xor i64 %52, %51
  %54 = mul i64 %53, -4417276706812531889
  %55 = lshr i64 %54, 37
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, 1609587929392839161
  %58 = lshr i64 %57, 32
  %59 = xor i64 %58, %57
  br label %270

60:                                               ; preds = %34
  %61 = icmp eq i64 %1, 0
  br i1 %61, label %270, label %62

62:                                               ; preds = %60
  %63 = load i8, ptr %0, align 1
  %64 = lshr i64 %1, 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr i8, ptr %0, i64 %1
  %68 = getelementptr i8, ptr %67, i64 -1
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %63 to i64
  %71 = zext i8 %66 to i64
  %72 = shl nuw nsw i64 %71, 8
  %73 = or disjoint i64 %72, %70
  %74 = zext i8 %69 to i64
  %75 = shl nuw nsw i64 %74, 16
  %76 = or disjoint i64 %73, %75
  %77 = shl nuw nsw i64 %1, 24
  %78 = or disjoint i64 %76, %77
  %79 = load i32, ptr %2, align 1
  %80 = tail call noundef i32 @llvm.bswap.i32(i32 %79)
  %81 = zext i32 %80 to i64
  %82 = xor i64 %78, %81
  %83 = mul i64 %82, -7046029288634856825
  %84 = lshr i64 %83, 37
  %85 = xor i64 %84, %83
  %86 = mul i64 %85, 1609587929392839161
  %87 = lshr i64 %86, 32
  %88 = xor i64 %87, %86
  br label %270

89:                                               ; preds = %4
  %90 = icmp ult i64 %1, 129
  br i1 %90, label %91, label %264

91:                                               ; preds = %89
  %92 = mul i64 %1, -7046029288634856825
  %93 = icmp samesign ugt i64 %1, 32
  br i1 %93, label %94, label %220

94:                                               ; preds = %91
  %95 = icmp samesign ugt i64 %1, 64
  br i1 %95, label %96, label %179

96:                                               ; preds = %94
  %97 = icmp samesign ugt i64 %1, 96
  br i1 %97, label %98, label %138

98:                                               ; preds = %96
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %101 = load i64, ptr %99, align 1
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %103 = load i64, ptr %102, align 1
  %104 = load i64, ptr %100, align 1
  %105 = xor i64 %104, %101
  %106 = tail call i64 @llvm.bswap.i64(i64 %105)
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %108 = load i64, ptr %107, align 1
  %109 = xor i64 %108, %103
  %110 = tail call i64 @llvm.bswap.i64(i64 %109)
  %111 = zext i64 %106 to i128
  %112 = zext i64 %110 to i128
  %113 = mul nuw i128 %112, %111
  %114 = lshr i128 %113, 64
  %115 = xor i128 %114, %113
  %116 = trunc i128 %115 to i64
  %117 = add i64 %92, %116
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %119 = getelementptr inbounds i8, ptr %118, i64 -64
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds i8, ptr %118, i64 -56
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 1
  %125 = xor i64 %124, %121
  %126 = tail call i64 @llvm.bswap.i64(i64 %125)
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %128 = load i64, ptr %127, align 1
  %129 = xor i64 %128, %123
  %130 = tail call i64 @llvm.bswap.i64(i64 %129)
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %117, %136
  br label %138

138:                                              ; preds = %98, %96
  %139 = phi i64 [ %137, %98 ], [ %92, %96 ]
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %141 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %142 = load i64, ptr %140, align 1
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %144 = load i64, ptr %143, align 1
  %145 = load i64, ptr %141, align 1
  %146 = xor i64 %145, %142
  %147 = tail call i64 @llvm.bswap.i64(i64 %146)
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %149, %144
  %151 = tail call i64 @llvm.bswap.i64(i64 %150)
  %152 = zext i64 %147 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %139, %157
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %160 = getelementptr inbounds i8, ptr %159, i64 -48
  %161 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %162 = load i64, ptr %160, align 1
  %163 = getelementptr inbounds i8, ptr %159, i64 -40
  %164 = load i64, ptr %163, align 1
  %165 = load i64, ptr %161, align 1
  %166 = xor i64 %165, %162
  %167 = tail call i64 @llvm.bswap.i64(i64 %166)
  %168 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %169 = load i64, ptr %168, align 1
  %170 = xor i64 %169, %164
  %171 = tail call i64 @llvm.bswap.i64(i64 %170)
  %172 = zext i64 %167 to i128
  %173 = zext i64 %171 to i128
  %174 = mul nuw i128 %173, %172
  %175 = lshr i128 %174, 64
  %176 = xor i128 %175, %174
  %177 = trunc i128 %176 to i64
  %178 = add i64 %158, %177
  br label %179

179:                                              ; preds = %138, %94
  %180 = phi i64 [ %178, %138 ], [ %92, %94 ]
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %183 = load i64, ptr %181, align 1
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %185 = load i64, ptr %184, align 1
  %186 = load i64, ptr %182, align 1
  %187 = xor i64 %186, %183
  %188 = tail call i64 @llvm.bswap.i64(i64 %187)
  %189 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %190 = load i64, ptr %189, align 1
  %191 = xor i64 %190, %185
  %192 = tail call i64 @llvm.bswap.i64(i64 %191)
  %193 = zext i64 %188 to i128
  %194 = zext i64 %192 to i128
  %195 = mul nuw i128 %194, %193
  %196 = lshr i128 %195, 64
  %197 = xor i128 %196, %195
  %198 = trunc i128 %197 to i64
  %199 = add i64 %180, %198
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %201 = getelementptr inbounds i8, ptr %200, i64 -32
  %202 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %203 = load i64, ptr %201, align 1
  %204 = getelementptr inbounds i8, ptr %200, i64 -24
  %205 = load i64, ptr %204, align 1
  %206 = load i64, ptr %202, align 1
  %207 = xor i64 %206, %203
  %208 = tail call i64 @llvm.bswap.i64(i64 %207)
  %209 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %210 = load i64, ptr %209, align 1
  %211 = xor i64 %210, %205
  %212 = tail call i64 @llvm.bswap.i64(i64 %211)
  %213 = zext i64 %208 to i128
  %214 = zext i64 %212 to i128
  %215 = mul nuw i128 %214, %213
  %216 = lshr i128 %215, 64
  %217 = xor i128 %216, %215
  %218 = trunc i128 %217 to i64
  %219 = add i64 %199, %218
  br label %220

220:                                              ; preds = %91, %179
  %221 = phi i64 [ %219, %179 ], [ %92, %91 ]
  %222 = load i64, ptr %0, align 1
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %224 = load i64, ptr %223, align 1
  %225 = load i64, ptr %2, align 1
  %226 = xor i64 %225, %222
  %227 = tail call i64 @llvm.bswap.i64(i64 %226)
  %228 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %229 = load i64, ptr %228, align 1
  %230 = xor i64 %229, %224
  %231 = tail call i64 @llvm.bswap.i64(i64 %230)
  %232 = zext i64 %227 to i128
  %233 = zext i64 %231 to i128
  %234 = mul nuw i128 %233, %232
  %235 = lshr i128 %234, 64
  %236 = xor i128 %235, %234
  %237 = trunc i128 %236 to i64
  %238 = add i64 %221, %237
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %240 = getelementptr inbounds i8, ptr %239, i64 -16
  %241 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %242 = load i64, ptr %240, align 1
  %243 = getelementptr inbounds i8, ptr %239, i64 -8
  %244 = load i64, ptr %243, align 1
  %245 = load i64, ptr %241, align 1
  %246 = xor i64 %245, %242
  %247 = tail call i64 @llvm.bswap.i64(i64 %246)
  %248 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %249 = load i64, ptr %248, align 1
  %250 = xor i64 %249, %244
  %251 = tail call i64 @llvm.bswap.i64(i64 %250)
  %252 = zext i64 %247 to i128
  %253 = zext i64 %251 to i128
  %254 = mul nuw i128 %253, %252
  %255 = lshr i128 %254, 64
  %256 = xor i128 %255, %254
  %257 = trunc i128 %256 to i64
  %258 = add i64 %238, %257
  %259 = lshr i64 %258, 37
  %260 = xor i64 %259, %258
  %261 = mul i64 %260, 1609587929392839161
  %262 = lshr i64 %261, 32
  %263 = xor i64 %262, %261
  br label %270

264:                                              ; preds = %89
  %265 = icmp ult i64 %1, 241
  br i1 %265, label %266, label %268

266:                                              ; preds = %264
  %267 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0)
  br label %270

268:                                              ; preds = %264
  %269 = tail call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %270

270:                                              ; preds = %62, %60, %36, %8, %268, %266, %220
  %271 = phi i64 [ %263, %220 ], [ %267, %266 ], [ %269, %268 ], [ %33, %8 ], [ %59, %36 ], [ %88, %62 ], [ 0, %60 ]
  ret i64 %271
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #13 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = udiv i64 %1, %7
  %9 = icmp ugt i64 %7, %1
  br i1 %9, label %263, label %10

10:                                               ; preds = %4
  %11 = icmp ult i64 %5, 8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %13 = getelementptr inbounds i8, ptr %12, i64 -64
  %14 = getelementptr inbounds i8, ptr %12, i64 -56
  br i1 %11, label %39, label %15

15:                                               ; preds = %10
  %16 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %17 = getelementptr inbounds i8, ptr %12, i64 -48
  %18 = getelementptr inbounds i8, ptr %12, i64 -40
  %19 = getelementptr inbounds i8, ptr %12, i64 -32
  %20 = getelementptr inbounds i8, ptr %12, i64 -24
  %21 = getelementptr inbounds i8, ptr %12, i64 -16
  %22 = getelementptr inbounds i8, ptr %12, i64 -8
  %23 = load i64, ptr %13, align 1
  %24 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %25 = load i64, ptr %14, align 1
  %26 = tail call noundef i64 @llvm.bswap.i64(i64 %25)
  %27 = load i64, ptr %17, align 1
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %27)
  %29 = load i64, ptr %18, align 1
  %30 = tail call noundef i64 @llvm.bswap.i64(i64 %29)
  %31 = load i64, ptr %19, align 1
  %32 = tail call noundef i64 @llvm.bswap.i64(i64 %31)
  %33 = load i64, ptr %20, align 1
  %34 = tail call noundef i64 @llvm.bswap.i64(i64 %33)
  %35 = load i64, ptr %21, align 1
  %36 = tail call noundef i64 @llvm.bswap.i64(i64 %35)
  %37 = load i64, ptr %22, align 1
  %38 = tail call noundef i64 @llvm.bswap.i64(i64 %37)
  br label %62

39:                                               ; preds = %10
  %40 = getelementptr inbounds i8, ptr %12, i64 -48
  %41 = getelementptr inbounds i8, ptr %12, i64 -40
  %42 = getelementptr inbounds i8, ptr %12, i64 -32
  %43 = getelementptr inbounds i8, ptr %12, i64 -24
  %44 = getelementptr inbounds i8, ptr %12, i64 -16
  %45 = getelementptr inbounds i8, ptr %12, i64 -8
  %46 = load i64, ptr %13, align 1
  %47 = tail call noundef i64 @llvm.bswap.i64(i64 %46)
  %48 = load i64, ptr %14, align 1
  %49 = tail call noundef i64 @llvm.bswap.i64(i64 %48)
  %50 = load i64, ptr %40, align 1
  %51 = tail call noundef i64 @llvm.bswap.i64(i64 %50)
  %52 = load i64, ptr %41, align 1
  %53 = tail call noundef i64 @llvm.bswap.i64(i64 %52)
  %54 = load i64, ptr %42, align 1
  %55 = tail call noundef i64 @llvm.bswap.i64(i64 %54)
  %56 = load i64, ptr %43, align 1
  %57 = tail call noundef i64 @llvm.bswap.i64(i64 %56)
  %58 = load i64, ptr %44, align 1
  %59 = tail call noundef i64 @llvm.bswap.i64(i64 %58)
  %60 = load i64, ptr %45, align 1
  %61 = tail call noundef i64 @llvm.bswap.i64(i64 %60)
  br label %219

62:                                               ; preds = %74, %15
  %63 = phi i64 [ 2654435761, %15 ], [ %106, %74 ]
  %64 = phi i64 [ 2870177450012600261, %15 ], [ %102, %74 ]
  %65 = phi i64 [ 2246822519, %15 ], [ %98, %74 ]
  %66 = phi i64 [ -8796714831421723037, %15 ], [ %94, %74 ]
  %67 = phi i64 [ 1609587929392839161, %15 ], [ %90, %74 ]
  %68 = phi i64 [ -4417276706812531889, %15 ], [ %86, %74 ]
  %69 = phi i64 [ -7046029288634856825, %15 ], [ %82, %74 ]
  %70 = phi i64 [ 3266489917, %15 ], [ %78, %74 ]
  %71 = phi i64 [ 0, %15 ], [ %107, %74 ]
  %72 = mul i64 %71, %7
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 %72
  br label %109

74:                                               ; preds = %109
  %75 = lshr i64 %132, 47
  %76 = xor i64 %75, %24
  %77 = xor i64 %76, %132
  %78 = mul i64 %77, 2654435761
  %79 = lshr i64 %144, 47
  %80 = xor i64 %79, %26
  %81 = xor i64 %80, %144
  %82 = mul i64 %81, 2654435761
  %83 = lshr i64 %156, 47
  %84 = xor i64 %83, %28
  %85 = xor i64 %84, %156
  %86 = mul i64 %85, 2654435761
  %87 = lshr i64 %168, 47
  %88 = xor i64 %87, %30
  %89 = xor i64 %88, %168
  %90 = mul i64 %89, 2654435761
  %91 = lshr i64 %180, 47
  %92 = xor i64 %91, %32
  %93 = xor i64 %92, %180
  %94 = mul i64 %93, 2654435761
  %95 = lshr i64 %192, 47
  %96 = xor i64 %95, %34
  %97 = xor i64 %96, %192
  %98 = mul i64 %97, 2654435761
  %99 = lshr i64 %204, 47
  %100 = xor i64 %99, %36
  %101 = xor i64 %100, %204
  %102 = mul i64 %101, 2654435761
  %103 = lshr i64 %216, 47
  %104 = xor i64 %103, %38
  %105 = xor i64 %104, %216
  %106 = mul i64 %105, 2654435761
  %107 = add nuw i64 %71, 1
  %108 = icmp ult i64 %107, %8
  br i1 %108, label %62, label %263

109:                                              ; preds = %109, %62
  %110 = phi i64 [ %216, %109 ], [ %63, %62 ]
  %111 = phi i64 [ %204, %109 ], [ %64, %62 ]
  %112 = phi i64 [ %132, %109 ], [ %70, %62 ]
  %113 = phi i64 [ %144, %109 ], [ %69, %62 ]
  %114 = phi i64 [ %192, %109 ], [ %65, %62 ]
  %115 = phi i64 [ %180, %109 ], [ %66, %62 ]
  %116 = phi i64 [ %168, %109 ], [ %67, %62 ]
  %117 = phi i64 [ %156, %109 ], [ %68, %62 ]
  %118 = phi i64 [ %217, %109 ], [ 0, %62 ]
  %119 = shl i64 %118, 6
  %120 = getelementptr inbounds nuw i8, ptr %73, i64 %119
  %121 = shl i64 %118, 3
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 %121
  %123 = load i64, ptr %120, align 1
  %124 = tail call noundef i64 @llvm.bswap.i64(i64 %123)
  %125 = load i64, ptr %122, align 1
  %126 = tail call noundef i64 @llvm.bswap.i64(i64 %125)
  %127 = xor i64 %126, %124
  %128 = add i64 %124, %112
  %129 = and i64 %127, 4294967295
  %130 = lshr i64 %127, 32
  %131 = mul nuw i64 %129, %130
  %132 = add i64 %128, %131
  %133 = getelementptr inbounds nuw i8, ptr %120, i64 8
  %134 = load i64, ptr %133, align 1
  %135 = tail call noundef i64 @llvm.bswap.i64(i64 %134)
  %136 = getelementptr inbounds nuw i8, ptr %122, i64 8
  %137 = load i64, ptr %136, align 1
  %138 = tail call noundef i64 @llvm.bswap.i64(i64 %137)
  %139 = xor i64 %138, %135
  %140 = add i64 %135, %113
  %141 = and i64 %139, 4294967295
  %142 = lshr i64 %139, 32
  %143 = mul nuw i64 %141, %142
  %144 = add i64 %140, %143
  %145 = getelementptr inbounds nuw i8, ptr %120, i64 16
  %146 = load i64, ptr %145, align 1
  %147 = tail call noundef i64 @llvm.bswap.i64(i64 %146)
  %148 = getelementptr inbounds nuw i8, ptr %122, i64 16
  %149 = load i64, ptr %148, align 1
  %150 = tail call noundef i64 @llvm.bswap.i64(i64 %149)
  %151 = xor i64 %150, %147
  %152 = add i64 %147, %117
  %153 = and i64 %151, 4294967295
  %154 = lshr i64 %151, 32
  %155 = mul nuw i64 %153, %154
  %156 = add i64 %152, %155
  %157 = getelementptr inbounds nuw i8, ptr %120, i64 24
  %158 = load i64, ptr %157, align 1
  %159 = tail call noundef i64 @llvm.bswap.i64(i64 %158)
  %160 = getelementptr inbounds nuw i8, ptr %122, i64 24
  %161 = load i64, ptr %160, align 1
  %162 = tail call noundef i64 @llvm.bswap.i64(i64 %161)
  %163 = xor i64 %162, %159
  %164 = add i64 %159, %116
  %165 = and i64 %163, 4294967295
  %166 = lshr i64 %163, 32
  %167 = mul nuw i64 %165, %166
  %168 = add i64 %164, %167
  %169 = getelementptr inbounds nuw i8, ptr %120, i64 32
  %170 = load i64, ptr %169, align 1
  %171 = tail call noundef i64 @llvm.bswap.i64(i64 %170)
  %172 = getelementptr inbounds nuw i8, ptr %122, i64 32
  %173 = load i64, ptr %172, align 1
  %174 = tail call noundef i64 @llvm.bswap.i64(i64 %173)
  %175 = xor i64 %174, %171
  %176 = add i64 %171, %115
  %177 = and i64 %175, 4294967295
  %178 = lshr i64 %175, 32
  %179 = mul nuw i64 %177, %178
  %180 = add i64 %176, %179
  %181 = getelementptr inbounds nuw i8, ptr %120, i64 40
  %182 = load i64, ptr %181, align 1
  %183 = tail call noundef i64 @llvm.bswap.i64(i64 %182)
  %184 = getelementptr inbounds nuw i8, ptr %122, i64 40
  %185 = load i64, ptr %184, align 1
  %186 = tail call noundef i64 @llvm.bswap.i64(i64 %185)
  %187 = xor i64 %186, %183
  %188 = add i64 %183, %114
  %189 = and i64 %187, 4294967295
  %190 = lshr i64 %187, 32
  %191 = mul nuw i64 %189, %190
  %192 = add i64 %188, %191
  %193 = getelementptr inbounds nuw i8, ptr %120, i64 48
  %194 = load i64, ptr %193, align 1
  %195 = tail call noundef i64 @llvm.bswap.i64(i64 %194)
  %196 = getelementptr inbounds nuw i8, ptr %122, i64 48
  %197 = load i64, ptr %196, align 1
  %198 = tail call noundef i64 @llvm.bswap.i64(i64 %197)
  %199 = xor i64 %198, %195
  %200 = add i64 %195, %111
  %201 = and i64 %199, 4294967295
  %202 = lshr i64 %199, 32
  %203 = mul nuw i64 %201, %202
  %204 = add i64 %200, %203
  %205 = getelementptr inbounds nuw i8, ptr %120, i64 56
  %206 = load i64, ptr %205, align 1
  %207 = tail call noundef i64 @llvm.bswap.i64(i64 %206)
  %208 = getelementptr inbounds nuw i8, ptr %122, i64 56
  %209 = load i64, ptr %208, align 1
  %210 = tail call noundef i64 @llvm.bswap.i64(i64 %209)
  %211 = xor i64 %210, %207
  %212 = add i64 %207, %110
  %213 = and i64 %211, 4294967295
  %214 = lshr i64 %211, 32
  %215 = mul nuw i64 %213, %214
  %216 = add i64 %212, %215
  %217 = add nuw nsw i64 %118, 1
  %218 = icmp eq i64 %217, %16
  br i1 %218, label %74, label %109

219:                                              ; preds = %219, %39
  %220 = phi i64 [ %260, %219 ], [ 2654435761, %39 ]
  %221 = phi i64 [ %256, %219 ], [ 2870177450012600261, %39 ]
  %222 = phi i64 [ %252, %219 ], [ 2246822519, %39 ]
  %223 = phi i64 [ %248, %219 ], [ -8796714831421723037, %39 ]
  %224 = phi i64 [ %244, %219 ], [ 1609587929392839161, %39 ]
  %225 = phi i64 [ %240, %219 ], [ -4417276706812531889, %39 ]
  %226 = phi i64 [ %236, %219 ], [ -7046029288634856825, %39 ]
  %227 = phi i64 [ %232, %219 ], [ 3266489917, %39 ]
  %228 = phi i64 [ %261, %219 ], [ 0, %39 ]
  %229 = lshr i64 %227, 47
  %230 = xor i64 %229, %47
  %231 = xor i64 %230, %227
  %232 = mul i64 %231, 2654435761
  %233 = lshr i64 %226, 47
  %234 = xor i64 %233, %49
  %235 = xor i64 %234, %226
  %236 = mul i64 %235, 2654435761
  %237 = lshr i64 %225, 47
  %238 = xor i64 %237, %51
  %239 = xor i64 %238, %225
  %240 = mul i64 %239, 2654435761
  %241 = lshr i64 %224, 47
  %242 = xor i64 %241, %53
  %243 = xor i64 %242, %224
  %244 = mul i64 %243, 2654435761
  %245 = lshr i64 %223, 47
  %246 = xor i64 %245, %55
  %247 = xor i64 %246, %223
  %248 = mul i64 %247, 2654435761
  %249 = lshr i64 %222, 47
  %250 = xor i64 %249, %57
  %251 = xor i64 %250, %222
  %252 = mul i64 %251, 2654435761
  %253 = lshr i64 %221, 47
  %254 = xor i64 %253, %59
  %255 = xor i64 %254, %221
  %256 = mul i64 %255, 2654435761
  %257 = lshr i64 %220, 47
  %258 = xor i64 %257, %61
  %259 = xor i64 %258, %220
  %260 = mul i64 %259, 2654435761
  %261 = add nuw i64 %228, 1
  %262 = icmp ult i64 %261, %8
  br i1 %262, label %219, label %263

263:                                              ; preds = %74, %219, %4
  %264 = phi i64 [ 2654435761, %4 ], [ %260, %219 ], [ %106, %74 ]
  %265 = phi i64 [ 2870177450012600261, %4 ], [ %256, %219 ], [ %102, %74 ]
  %266 = phi i64 [ 2246822519, %4 ], [ %252, %219 ], [ %98, %74 ]
  %267 = phi i64 [ -8796714831421723037, %4 ], [ %248, %219 ], [ %94, %74 ]
  %268 = phi i64 [ 1609587929392839161, %4 ], [ %244, %219 ], [ %90, %74 ]
  %269 = phi i64 [ -4417276706812531889, %4 ], [ %240, %219 ], [ %86, %74 ]
  %270 = phi i64 [ -7046029288634856825, %4 ], [ %236, %219 ], [ %82, %74 ]
  %271 = phi i64 [ 3266489917, %4 ], [ %232, %219 ], [ %78, %74 ]
  %272 = mul i64 %8, %7
  %273 = sub i64 %1, %272
  %274 = lshr i64 %273, 6
  %275 = getelementptr inbounds nuw i8, ptr %0, i64 %272
  %276 = icmp ult i64 %273, 64
  br i1 %276, label %387, label %277

277:                                              ; preds = %263, %277
  %278 = phi i64 [ %384, %277 ], [ %264, %263 ]
  %279 = phi i64 [ %372, %277 ], [ %265, %263 ]
  %280 = phi i64 [ %300, %277 ], [ %271, %263 ]
  %281 = phi i64 [ %312, %277 ], [ %270, %263 ]
  %282 = phi i64 [ %360, %277 ], [ %266, %263 ]
  %283 = phi i64 [ %348, %277 ], [ %267, %263 ]
  %284 = phi i64 [ %336, %277 ], [ %268, %263 ]
  %285 = phi i64 [ %324, %277 ], [ %269, %263 ]
  %286 = phi i64 [ %385, %277 ], [ 0, %263 ]
  %287 = shl i64 %286, 6
  %288 = getelementptr inbounds nuw i8, ptr %275, i64 %287
  %289 = shl i64 %286, 3
  %290 = getelementptr inbounds nuw i8, ptr %2, i64 %289
  %291 = load i64, ptr %288, align 1
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %291)
  %293 = load i64, ptr %290, align 1
  %294 = tail call noundef i64 @llvm.bswap.i64(i64 %293)
  %295 = xor i64 %294, %292
  %296 = add i64 %292, %280
  %297 = and i64 %295, 4294967295
  %298 = lshr i64 %295, 32
  %299 = mul nuw i64 %297, %298
  %300 = add i64 %296, %299
  %301 = getelementptr inbounds nuw i8, ptr %288, i64 8
  %302 = load i64, ptr %301, align 1
  %303 = tail call noundef i64 @llvm.bswap.i64(i64 %302)
  %304 = getelementptr inbounds nuw i8, ptr %290, i64 8
  %305 = load i64, ptr %304, align 1
  %306 = tail call noundef i64 @llvm.bswap.i64(i64 %305)
  %307 = xor i64 %306, %303
  %308 = add i64 %303, %281
  %309 = and i64 %307, 4294967295
  %310 = lshr i64 %307, 32
  %311 = mul nuw i64 %309, %310
  %312 = add i64 %308, %311
  %313 = getelementptr inbounds nuw i8, ptr %288, i64 16
  %314 = load i64, ptr %313, align 1
  %315 = tail call noundef i64 @llvm.bswap.i64(i64 %314)
  %316 = getelementptr inbounds nuw i8, ptr %290, i64 16
  %317 = load i64, ptr %316, align 1
  %318 = tail call noundef i64 @llvm.bswap.i64(i64 %317)
  %319 = xor i64 %318, %315
  %320 = add i64 %315, %285
  %321 = and i64 %319, 4294967295
  %322 = lshr i64 %319, 32
  %323 = mul nuw i64 %321, %322
  %324 = add i64 %320, %323
  %325 = getelementptr inbounds nuw i8, ptr %288, i64 24
  %326 = load i64, ptr %325, align 1
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %326)
  %328 = getelementptr inbounds nuw i8, ptr %290, i64 24
  %329 = load i64, ptr %328, align 1
  %330 = tail call noundef i64 @llvm.bswap.i64(i64 %329)
  %331 = xor i64 %330, %327
  %332 = add i64 %327, %284
  %333 = and i64 %331, 4294967295
  %334 = lshr i64 %331, 32
  %335 = mul nuw i64 %333, %334
  %336 = add i64 %332, %335
  %337 = getelementptr inbounds nuw i8, ptr %288, i64 32
  %338 = load i64, ptr %337, align 1
  %339 = tail call noundef i64 @llvm.bswap.i64(i64 %338)
  %340 = getelementptr inbounds nuw i8, ptr %290, i64 32
  %341 = load i64, ptr %340, align 1
  %342 = tail call noundef i64 @llvm.bswap.i64(i64 %341)
  %343 = xor i64 %342, %339
  %344 = add i64 %339, %283
  %345 = and i64 %343, 4294967295
  %346 = lshr i64 %343, 32
  %347 = mul nuw i64 %345, %346
  %348 = add i64 %344, %347
  %349 = getelementptr inbounds nuw i8, ptr %288, i64 40
  %350 = load i64, ptr %349, align 1
  %351 = tail call noundef i64 @llvm.bswap.i64(i64 %350)
  %352 = getelementptr inbounds nuw i8, ptr %290, i64 40
  %353 = load i64, ptr %352, align 1
  %354 = tail call noundef i64 @llvm.bswap.i64(i64 %353)
  %355 = xor i64 %354, %351
  %356 = add i64 %351, %282
  %357 = and i64 %355, 4294967295
  %358 = lshr i64 %355, 32
  %359 = mul nuw i64 %357, %358
  %360 = add i64 %356, %359
  %361 = getelementptr inbounds nuw i8, ptr %288, i64 48
  %362 = load i64, ptr %361, align 1
  %363 = tail call noundef i64 @llvm.bswap.i64(i64 %362)
  %364 = getelementptr inbounds nuw i8, ptr %290, i64 48
  %365 = load i64, ptr %364, align 1
  %366 = tail call noundef i64 @llvm.bswap.i64(i64 %365)
  %367 = xor i64 %366, %363
  %368 = add i64 %363, %279
  %369 = and i64 %367, 4294967295
  %370 = lshr i64 %367, 32
  %371 = mul nuw i64 %369, %370
  %372 = add i64 %368, %371
  %373 = getelementptr inbounds nuw i8, ptr %288, i64 56
  %374 = load i64, ptr %373, align 1
  %375 = tail call noundef i64 @llvm.bswap.i64(i64 %374)
  %376 = getelementptr inbounds nuw i8, ptr %290, i64 56
  %377 = load i64, ptr %376, align 1
  %378 = tail call noundef i64 @llvm.bswap.i64(i64 %377)
  %379 = xor i64 %378, %375
  %380 = add i64 %375, %278
  %381 = and i64 %379, 4294967295
  %382 = lshr i64 %379, 32
  %383 = mul nuw i64 %381, %382
  %384 = add i64 %380, %383
  %385 = add nuw nsw i64 %286, 1
  %386 = icmp samesign ult i64 %385, %274
  br i1 %386, label %277, label %387

387:                                              ; preds = %277, %263
  %388 = phi i64 [ %264, %263 ], [ %384, %277 ]
  %389 = phi i64 [ %265, %263 ], [ %372, %277 ]
  %390 = phi i64 [ %266, %263 ], [ %360, %277 ]
  %391 = phi i64 [ %267, %263 ], [ %348, %277 ]
  %392 = phi i64 [ %268, %263 ], [ %336, %277 ]
  %393 = phi i64 [ %269, %263 ], [ %324, %277 ]
  %394 = phi i64 [ %270, %263 ], [ %312, %277 ]
  %395 = phi i64 [ %271, %263 ], [ %300, %277 ]
  %396 = and i64 %1, 63
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %497, label %398

398:                                              ; preds = %387
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %400 = getelementptr inbounds i8, ptr %399, i64 -64
  %401 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %402 = getelementptr inbounds i8, ptr %401, i64 -71
  %403 = load i64, ptr %400, align 1
  %404 = tail call noundef i64 @llvm.bswap.i64(i64 %403)
  %405 = load i64, ptr %402, align 1
  %406 = tail call noundef i64 @llvm.bswap.i64(i64 %405)
  %407 = xor i64 %406, %404
  %408 = add i64 %404, %395
  %409 = and i64 %407, 4294967295
  %410 = lshr i64 %407, 32
  %411 = mul nuw i64 %409, %410
  %412 = add i64 %408, %411
  %413 = getelementptr inbounds i8, ptr %399, i64 -56
  %414 = load i64, ptr %413, align 1
  %415 = tail call noundef i64 @llvm.bswap.i64(i64 %414)
  %416 = getelementptr inbounds i8, ptr %401, i64 -63
  %417 = load i64, ptr %416, align 1
  %418 = tail call noundef i64 @llvm.bswap.i64(i64 %417)
  %419 = xor i64 %418, %415
  %420 = add i64 %415, %394
  %421 = and i64 %419, 4294967295
  %422 = lshr i64 %419, 32
  %423 = mul nuw i64 %421, %422
  %424 = add i64 %420, %423
  %425 = getelementptr inbounds i8, ptr %399, i64 -48
  %426 = load i64, ptr %425, align 1
  %427 = tail call noundef i64 @llvm.bswap.i64(i64 %426)
  %428 = getelementptr inbounds i8, ptr %401, i64 -55
  %429 = load i64, ptr %428, align 1
  %430 = tail call noundef i64 @llvm.bswap.i64(i64 %429)
  %431 = xor i64 %430, %427
  %432 = add i64 %427, %393
  %433 = and i64 %431, 4294967295
  %434 = lshr i64 %431, 32
  %435 = mul nuw i64 %433, %434
  %436 = add i64 %432, %435
  %437 = getelementptr inbounds i8, ptr %399, i64 -40
  %438 = load i64, ptr %437, align 1
  %439 = tail call noundef i64 @llvm.bswap.i64(i64 %438)
  %440 = getelementptr inbounds i8, ptr %401, i64 -47
  %441 = load i64, ptr %440, align 1
  %442 = tail call noundef i64 @llvm.bswap.i64(i64 %441)
  %443 = xor i64 %442, %439
  %444 = add i64 %439, %392
  %445 = and i64 %443, 4294967295
  %446 = lshr i64 %443, 32
  %447 = mul nuw i64 %445, %446
  %448 = add i64 %444, %447
  %449 = getelementptr inbounds i8, ptr %399, i64 -32
  %450 = load i64, ptr %449, align 1
  %451 = tail call noundef i64 @llvm.bswap.i64(i64 %450)
  %452 = getelementptr inbounds i8, ptr %401, i64 -39
  %453 = load i64, ptr %452, align 1
  %454 = tail call noundef i64 @llvm.bswap.i64(i64 %453)
  %455 = xor i64 %454, %451
  %456 = add i64 %451, %391
  %457 = and i64 %455, 4294967295
  %458 = lshr i64 %455, 32
  %459 = mul nuw i64 %457, %458
  %460 = add i64 %456, %459
  %461 = getelementptr inbounds i8, ptr %399, i64 -24
  %462 = load i64, ptr %461, align 1
  %463 = tail call noundef i64 @llvm.bswap.i64(i64 %462)
  %464 = getelementptr inbounds i8, ptr %401, i64 -31
  %465 = load i64, ptr %464, align 1
  %466 = tail call noundef i64 @llvm.bswap.i64(i64 %465)
  %467 = xor i64 %466, %463
  %468 = add i64 %463, %390
  %469 = and i64 %467, 4294967295
  %470 = lshr i64 %467, 32
  %471 = mul nuw i64 %469, %470
  %472 = add i64 %468, %471
  %473 = getelementptr inbounds i8, ptr %399, i64 -16
  %474 = load i64, ptr %473, align 1
  %475 = tail call noundef i64 @llvm.bswap.i64(i64 %474)
  %476 = getelementptr inbounds i8, ptr %401, i64 -23
  %477 = load i64, ptr %476, align 1
  %478 = tail call noundef i64 @llvm.bswap.i64(i64 %477)
  %479 = xor i64 %478, %475
  %480 = add i64 %475, %389
  %481 = and i64 %479, 4294967295
  %482 = lshr i64 %479, 32
  %483 = mul nuw i64 %481, %482
  %484 = add i64 %480, %483
  %485 = getelementptr inbounds i8, ptr %399, i64 -8
  %486 = load i64, ptr %485, align 1
  %487 = tail call noundef i64 @llvm.bswap.i64(i64 %486)
  %488 = getelementptr inbounds i8, ptr %401, i64 -15
  %489 = load i64, ptr %488, align 1
  %490 = tail call noundef i64 @llvm.bswap.i64(i64 %489)
  %491 = xor i64 %490, %487
  %492 = add i64 %487, %388
  %493 = and i64 %491, 4294967295
  %494 = lshr i64 %491, 32
  %495 = mul nuw i64 %493, %494
  %496 = add i64 %492, %495
  br label %497

497:                                              ; preds = %387, %398
  %498 = phi i64 [ %388, %387 ], [ %496, %398 ]
  %499 = phi i64 [ %389, %387 ], [ %484, %398 ]
  %500 = phi i64 [ %390, %387 ], [ %472, %398 ]
  %501 = phi i64 [ %391, %387 ], [ %460, %398 ]
  %502 = phi i64 [ %392, %387 ], [ %448, %398 ]
  %503 = phi i64 [ %393, %387 ], [ %436, %398 ]
  %504 = phi i64 [ %394, %387 ], [ %424, %398 ]
  %505 = phi i64 [ %395, %387 ], [ %412, %398 ]
  %506 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %507 = mul i64 %1, -7046029288634856825
  %508 = load i64, ptr %506, align 1
  %509 = tail call noundef i64 @llvm.bswap.i64(i64 %508)
  %510 = xor i64 %509, %505
  %511 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %512 = load i64, ptr %511, align 1
  %513 = tail call noundef i64 @llvm.bswap.i64(i64 %512)
  %514 = xor i64 %513, %504
  %515 = zext i64 %510 to i128
  %516 = zext i64 %514 to i128
  %517 = mul nuw i128 %516, %515
  %518 = lshr i128 %517, 64
  %519 = xor i128 %518, %517
  %520 = trunc i128 %519 to i64
  %521 = add i64 %507, %520
  %522 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %523 = load i64, ptr %522, align 1
  %524 = tail call noundef i64 @llvm.bswap.i64(i64 %523)
  %525 = xor i64 %524, %503
  %526 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %527 = load i64, ptr %526, align 1
  %528 = tail call noundef i64 @llvm.bswap.i64(i64 %527)
  %529 = xor i64 %528, %502
  %530 = zext i64 %525 to i128
  %531 = zext i64 %529 to i128
  %532 = mul nuw i128 %531, %530
  %533 = lshr i128 %532, 64
  %534 = xor i128 %533, %532
  %535 = trunc i128 %534 to i64
  %536 = add i64 %521, %535
  %537 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %538 = load i64, ptr %537, align 1
  %539 = tail call noundef i64 @llvm.bswap.i64(i64 %538)
  %540 = xor i64 %539, %501
  %541 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %542 = load i64, ptr %541, align 1
  %543 = tail call noundef i64 @llvm.bswap.i64(i64 %542)
  %544 = xor i64 %543, %500
  %545 = zext i64 %540 to i128
  %546 = zext i64 %544 to i128
  %547 = mul nuw i128 %546, %545
  %548 = lshr i128 %547, 64
  %549 = xor i128 %548, %547
  %550 = trunc i128 %549 to i64
  %551 = add i64 %536, %550
  %552 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %553 = load i64, ptr %552, align 1
  %554 = tail call noundef i64 @llvm.bswap.i64(i64 %553)
  %555 = xor i64 %554, %499
  %556 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %557 = load i64, ptr %556, align 1
  %558 = tail call noundef i64 @llvm.bswap.i64(i64 %557)
  %559 = xor i64 %558, %498
  %560 = zext i64 %555 to i128
  %561 = zext i64 %559 to i128
  %562 = mul nuw i128 %561, %560
  %563 = lshr i128 %562, 64
  %564 = xor i128 %563, %562
  %565 = trunc i128 %564 to i64
  %566 = add i64 %551, %565
  %567 = lshr i64 %566, 37
  %568 = xor i64 %567, %566
  %569 = mul i64 %568, 1609587929392839161
  %570 = lshr i64 %569, 32
  %571 = xor i64 %570, %569
  ret i64 %571
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %85

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = tail call noundef i64 @llvm.bswap.i64(i64 %8)
  %10 = add i64 %2, -4734510112055689544
  %11 = xor i64 %9, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = tail call noundef i64 @llvm.bswap.i64(i64 %14)
  %16 = sub i64 2066345149520216444, %2
  %17 = xor i64 %15, %16
  %18 = zext i64 %11 to i128
  %19 = zext i64 %17 to i128
  %20 = mul nuw i128 %19, %18
  %21 = lshr i128 %20, 64
  %22 = xor i128 %21, %20
  %23 = trunc i128 %22 to i64
  %24 = add i64 %11, %1
  %25 = add i64 %24, %17
  %26 = add i64 %25, %23
  %27 = lshr i64 %26, 37
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587929392839161
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  br label %251

32:                                               ; preds = %5
  %33 = icmp samesign ugt i64 %1, 3
  br i1 %33, label %34, label %58

34:                                               ; preds = %32
  %35 = load i32, ptr %0, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %37 = getelementptr inbounds i8, ptr %36, i64 -4
  %38 = load i32, ptr %37, align 1
  %39 = zext i32 %38 to i64
  %40 = zext i32 %35 to i64
  %41 = shl nuw i64 %40, 32
  %42 = or disjoint i64 %41, %39
  %43 = tail call i64 @llvm.bswap.i64(i64 %42)
  %44 = add i64 %2, -4734510112055689544
  %45 = xor i64 %43, %44
  %46 = lshr i64 %45, 51
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, 2654435761
  %49 = add i64 %48, %1
  %50 = lshr i64 %49, 47
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, -4417276706812531889
  %53 = lshr i64 %52, 37
  %54 = xor i64 %53, %52
  %55 = mul i64 %54, 1609587929392839161
  %56 = lshr i64 %55, 32
  %57 = xor i64 %56, %55
  br label %251

58:                                               ; preds = %32
  %59 = icmp eq i64 %1, 0
  br i1 %59, label %251, label %60

60:                                               ; preds = %58
  %61 = load i8, ptr %0, align 1
  %62 = lshr i64 %1, 1
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 %62
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr i8, ptr %0, i64 %1
  %66 = getelementptr i8, ptr %65, i64 -1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %61 to i64
  %69 = zext i8 %64 to i64
  %70 = shl nuw nsw i64 %69, 8
  %71 = or disjoint i64 %70, %68
  %72 = zext i8 %67 to i64
  %73 = shl nuw nsw i64 %72, 16
  %74 = or disjoint i64 %71, %73
  %75 = shl nuw nsw i64 %1, 24
  %76 = or disjoint i64 %74, %75
  %77 = add i64 %2, 963444408
  %78 = xor i64 %76, %77
  %79 = mul i64 %78, -7046029288634856825
  %80 = lshr i64 %79, 37
  %81 = xor i64 %80, %79
  %82 = mul i64 %81, 1609587929392839161
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  br label %251

85:                                               ; preds = %3
  %86 = icmp ult i64 %1, 129
  br i1 %86, label %87, label %245

87:                                               ; preds = %85
  %88 = mul i64 %1, -7046029288634856825
  %89 = icmp samesign ugt i64 %1, 32
  br i1 %89, label %90, label %204

90:                                               ; preds = %87
  %91 = icmp samesign ugt i64 %1, 64
  br i1 %91, label %92, label %167

92:                                               ; preds = %90
  %93 = icmp samesign ugt i64 %1, 96
  br i1 %93, label %94, label %130

94:                                               ; preds = %92
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %96 = load i64, ptr %95, align 1
  %97 = tail call noundef i64 @llvm.bswap.i64(i64 %96)
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %99 = load i64, ptr %98, align 1
  %100 = tail call noundef i64 @llvm.bswap.i64(i64 %99)
  %101 = add i64 %2, 4554437623014685352
  %102 = xor i64 %97, %101
  %103 = sub i64 2111919702937427193, %2
  %104 = xor i64 %100, %103
  %105 = zext i64 %102 to i128
  %106 = zext i64 %104 to i128
  %107 = mul nuw i128 %106, %105
  %108 = lshr i128 %107, 64
  %109 = xor i128 %108, %107
  %110 = trunc i128 %109 to i64
  %111 = add i64 %88, %110
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %113 = getelementptr inbounds i8, ptr %112, i64 -64
  %114 = load i64, ptr %113, align 1
  %115 = tail call noundef i64 @llvm.bswap.i64(i64 %114)
  %116 = getelementptr inbounds i8, ptr %112, i64 -56
  %117 = load i64, ptr %116, align 1
  %118 = tail call noundef i64 @llvm.bswap.i64(i64 %117)
  %119 = add i64 %2, 3556072174620004746
  %120 = xor i64 %115, %119
  %121 = sub i64 7238261902898274248, %2
  %122 = xor i64 %118, %121
  %123 = zext i64 %120 to i128
  %124 = zext i64 %122 to i128
  %125 = mul nuw i128 %124, %123
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = add i64 %111, %128
  br label %130

130:                                              ; preds = %94, %92
  %131 = phi i64 [ %129, %94 ], [ %88, %92 ]
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %133 = load i64, ptr %132, align 1
  %134 = tail call noundef i64 @llvm.bswap.i64(i64 %133)
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %136 = load i64, ptr %135, align 1
  %137 = tail call noundef i64 @llvm.bswap.i64(i64 %136)
  %138 = add i64 %2, -3818837453329782724
  %139 = xor i64 %134, %138
  %140 = sub i64 -6688317018830679928, %2
  %141 = xor i64 %137, %140
  %142 = zext i64 %139 to i128
  %143 = zext i64 %141 to i128
  %144 = mul nuw i128 %143, %142
  %145 = lshr i128 %144, 64
  %146 = xor i128 %145, %144
  %147 = trunc i128 %146 to i64
  %148 = add i64 %131, %147
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %150 = getelementptr inbounds i8, ptr %149, i64 -48
  %151 = load i64, ptr %150, align 1
  %152 = tail call noundef i64 @llvm.bswap.i64(i64 %151)
  %153 = getelementptr inbounds i8, ptr %149, i64 -40
  %154 = load i64, ptr %153, align 1
  %155 = tail call noundef i64 @llvm.bswap.i64(i64 %154)
  %156 = add i64 %2, 5690594596133299313
  %157 = xor i64 %152, %156
  %158 = sub i64 -2833645246901970632, %2
  %159 = xor i64 %155, %158
  %160 = zext i64 %157 to i128
  %161 = zext i64 %159 to i128
  %162 = mul nuw i128 %161, %160
  %163 = lshr i128 %162, 64
  %164 = xor i128 %163, %162
  %165 = trunc i128 %164 to i64
  %166 = add i64 %148, %165
  br label %167

167:                                              ; preds = %130, %90
  %168 = phi i64 [ %166, %130 ], [ %88, %90 ]
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %170 = load i64, ptr %169, align 1
  %171 = tail call noundef i64 @llvm.bswap.i64(i64 %170)
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %173 = load i64, ptr %172, align 1
  %174 = tail call noundef i64 @llvm.bswap.i64(i64 %173)
  %175 = add i64 %2, 8711581037947681227
  %176 = xor i64 %171, %175
  %177 = sub i64 2410270004345854594, %2
  %178 = xor i64 %174, %177
  %179 = zext i64 %176 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %168, %184
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %187 = getelementptr inbounds i8, ptr %186, i64 -32
  %188 = load i64, ptr %187, align 1
  %189 = tail call noundef i64 @llvm.bswap.i64(i64 %188)
  %190 = getelementptr inbounds i8, ptr %186, i64 -24
  %191 = load i64, ptr %190, align 1
  %192 = tail call noundef i64 @llvm.bswap.i64(i64 %191)
  %193 = add i64 %2, -8204357891075471176
  %194 = xor i64 %189, %193
  %195 = sub i64 5487137525590930912, %2
  %196 = xor i64 %192, %195
  %197 = zext i64 %194 to i128
  %198 = zext i64 %196 to i128
  %199 = mul nuw i128 %198, %197
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %185, %202
  br label %204

204:                                              ; preds = %87, %167
  %205 = phi i64 [ %203, %167 ], [ %88, %87 ]
  %206 = load i64, ptr %0, align 1
  %207 = tail call noundef i64 @llvm.bswap.i64(i64 %206)
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %209 = load i64, ptr %208, align 1
  %210 = tail call noundef i64 @llvm.bswap.i64(i64 %209)
  %211 = add i64 %2, -4734510112055689544
  %212 = xor i64 %207, %211
  %213 = sub i64 2066345149520216444, %2
  %214 = xor i64 %210, %213
  %215 = zext i64 %212 to i128
  %216 = zext i64 %214 to i128
  %217 = mul nuw i128 %216, %215
  %218 = lshr i128 %217, 64
  %219 = xor i128 %218, %217
  %220 = trunc i128 %219 to i64
  %221 = add i64 %205, %220
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %223 = getelementptr inbounds i8, ptr %222, i64 -16
  %224 = load i64, ptr %223, align 1
  %225 = tail call noundef i64 @llvm.bswap.i64(i64 %224)
  %226 = getelementptr inbounds i8, ptr %222, i64 -8
  %227 = load i64, ptr %226, align 1
  %228 = tail call noundef i64 @llvm.bswap.i64(i64 %227)
  %229 = add i64 %2, -2623469361688619810
  %230 = xor i64 %225, %229
  %231 = sub i64 2262974939099578482, %2
  %232 = xor i64 %228, %231
  %233 = zext i64 %230 to i128
  %234 = zext i64 %232 to i128
  %235 = mul nuw i128 %234, %233
  %236 = lshr i128 %235, 64
  %237 = xor i128 %236, %235
  %238 = trunc i128 %237 to i64
  %239 = add i64 %221, %238
  %240 = lshr i64 %239, 37
  %241 = xor i64 %240, %239
  %242 = mul i64 %241, 1609587929392839161
  %243 = lshr i64 %242, 32
  %244 = xor i64 %243, %242
  br label %251

245:                                              ; preds = %85
  %246 = icmp ult i64 %1, 241
  br i1 %246, label %247, label %249

247:                                              ; preds = %245
  %248 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef %2)
  br label %251

249:                                              ; preds = %245
  %250 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %251

251:                                              ; preds = %60, %58, %34, %7, %249, %247, %204
  %252 = phi i64 [ %244, %204 ], [ %248, %247 ], [ %250, %249 ], [ %31, %7 ], [ %57, %34 ], [ %84, %60 ], [ 0, %58 ]
  ret i64 %252
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, i64 noundef %2) unnamed_addr #13 {
  %4 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #26
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %80, label %6

6:                                                ; preds = %3
  %7 = add i64 %2, -4734510112055689544
  %8 = tail call noundef i64 @llvm.bswap.i64(i64 %7)
  store i64 %8, ptr %4, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %10 = sub i64 2066345149520216444, %2
  %11 = tail call noundef i64 @llvm.bswap.i64(i64 %10)
  store i64 %11, ptr %9, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %13 = add i64 %2, -2623469361688619810
  %14 = tail call noundef i64 @llvm.bswap.i64(i64 %13)
  store i64 %14, ptr %12, align 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %16 = sub i64 2262974939099578482, %2
  %17 = tail call noundef i64 @llvm.bswap.i64(i64 %16)
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %19 = add i64 %2, 8711581037947681227
  %20 = tail call noundef i64 @llvm.bswap.i64(i64 %19)
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %22 = sub i64 2410270004345854594, %2
  %23 = tail call noundef i64 @llvm.bswap.i64(i64 %22)
  store i64 %23, ptr %21, align 8
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %25 = add i64 %2, -8204357891075471176
  %26 = tail call noundef i64 @llvm.bswap.i64(i64 %25)
  store i64 %26, ptr %24, align 8
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %28 = sub i64 5487137525590930912, %2
  %29 = tail call noundef i64 @llvm.bswap.i64(i64 %28)
  store i64 %29, ptr %27, align 8
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %31 = add i64 %2, -3818837453329782724
  %32 = tail call noundef i64 @llvm.bswap.i64(i64 %31)
  store i64 %32, ptr %30, align 8
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %34 = sub i64 -6688317018830679928, %2
  %35 = tail call noundef i64 @llvm.bswap.i64(i64 %34)
  store i64 %35, ptr %33, align 8
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %37 = add i64 %2, 5690594596133299313
  %38 = tail call noundef i64 @llvm.bswap.i64(i64 %37)
  store i64 %38, ptr %36, align 8
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %40 = sub i64 -2833645246901970632, %2
  %41 = tail call noundef i64 @llvm.bswap.i64(i64 %40)
  store i64 %41, ptr %39, align 8
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %43 = add i64 %2, 4554437623014685352
  %44 = tail call noundef i64 @llvm.bswap.i64(i64 %43)
  store i64 %44, ptr %42, align 8
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %46 = sub i64 2111919702937427193, %2
  %47 = tail call noundef i64 @llvm.bswap.i64(i64 %46)
  store i64 %47, ptr %45, align 8
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %49 = add i64 %2, 3556072174620004746
  %50 = tail call noundef i64 @llvm.bswap.i64(i64 %49)
  store i64 %50, ptr %48, align 8
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %52 = sub i64 7238261902898274248, %2
  %53 = tail call noundef i64 @llvm.bswap.i64(i64 %52)
  store i64 %53, ptr %51, align 8
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %55 = add i64 %2, -4329134394285701654
  %56 = tail call noundef i64 @llvm.bswap.i64(i64 %55)
  store i64 %56, ptr %54, align 8
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %58 = sub i64 -1485321483350670907, %2
  %59 = tail call noundef i64 @llvm.bswap.i64(i64 %58)
  store i64 %59, ptr %57, align 8
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %61 = add i64 %2, 5321830579834785047
  %62 = tail call noundef i64 @llvm.bswap.i64(i64 %61)
  store i64 %62, ptr %60, align 8
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %64 = sub i64 -7032137544937171245, %2
  %65 = tail call noundef i64 @llvm.bswap.i64(i64 %64)
  store i64 %65, ptr %63, align 8
  %66 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %67 = add i64 %2, -242834301215959509
  %68 = tail call noundef i64 @llvm.bswap.i64(i64 %67)
  store i64 %68, ptr %66, align 8
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 168
  %70 = sub i64 -3588858202114426737, %2
  %71 = tail call noundef i64 @llvm.bswap.i64(i64 %70)
  store i64 %71, ptr %69, align 8
  %72 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %73 = add i64 %2, 2883454493032893253
  %74 = tail call noundef i64 @llvm.bswap.i64(i64 %73)
  store i64 %74, ptr %72, align 8
  %75 = getelementptr inbounds nuw i8, ptr %4, i64 184
  %76 = sub i64 9097354517224871855, %2
  %77 = tail call noundef i64 @llvm.bswap.i64(i64 %76)
  store i64 %77, ptr %75, align 8
  %78 = lshr i64 %1, 10
  %79 = icmp ult i64 %1, 1024
  br i1 %79, label %239, label %82

80:                                               ; preds = %3
  %81 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %547

82:                                               ; preds = %6, %94
  %83 = phi i64 [ %126, %94 ], [ 2654435761, %6 ]
  %84 = phi i64 [ %122, %94 ], [ 2870177450012600261, %6 ]
  %85 = phi i64 [ %118, %94 ], [ 2246822519, %6 ]
  %86 = phi i64 [ %114, %94 ], [ -8796714831421723037, %6 ]
  %87 = phi i64 [ %110, %94 ], [ 1609587929392839161, %6 ]
  %88 = phi i64 [ %106, %94 ], [ -4417276706812531889, %6 ]
  %89 = phi i64 [ %102, %94 ], [ -7046029288634856825, %6 ]
  %90 = phi i64 [ %98, %94 ], [ 3266489917, %6 ]
  %91 = phi i64 [ %127, %94 ], [ 0, %6 ]
  %92 = shl i64 %91, 10
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  br label %129

94:                                               ; preds = %129
  %95 = lshr i64 %152, 47
  %96 = xor i64 %95, %55
  %97 = xor i64 %96, %152
  %98 = mul i64 %97, 2654435761
  %99 = lshr i64 %164, 47
  %100 = xor i64 %99, %58
  %101 = xor i64 %100, %164
  %102 = mul i64 %101, 2654435761
  %103 = lshr i64 %176, 47
  %104 = xor i64 %103, %61
  %105 = xor i64 %104, %176
  %106 = mul i64 %105, 2654435761
  %107 = lshr i64 %188, 47
  %108 = xor i64 %107, %64
  %109 = xor i64 %108, %188
  %110 = mul i64 %109, 2654435761
  %111 = lshr i64 %200, 47
  %112 = xor i64 %111, %67
  %113 = xor i64 %112, %200
  %114 = mul i64 %113, 2654435761
  %115 = lshr i64 %212, 47
  %116 = xor i64 %115, %70
  %117 = xor i64 %116, %212
  %118 = mul i64 %117, 2654435761
  %119 = lshr i64 %224, 47
  %120 = xor i64 %119, %73
  %121 = xor i64 %120, %224
  %122 = mul i64 %121, 2654435761
  %123 = lshr i64 %236, 47
  %124 = xor i64 %123, %76
  %125 = xor i64 %124, %236
  %126 = mul i64 %125, 2654435761
  %127 = add nuw nsw i64 %91, 1
  %128 = icmp eq i64 %127, %78
  br i1 %128, label %239, label %82

129:                                              ; preds = %129, %82
  %130 = phi i64 [ %236, %129 ], [ %83, %82 ]
  %131 = phi i64 [ %224, %129 ], [ %84, %82 ]
  %132 = phi i64 [ %152, %129 ], [ %90, %82 ]
  %133 = phi i64 [ %164, %129 ], [ %89, %82 ]
  %134 = phi i64 [ %212, %129 ], [ %85, %82 ]
  %135 = phi i64 [ %200, %129 ], [ %86, %82 ]
  %136 = phi i64 [ %188, %129 ], [ %87, %82 ]
  %137 = phi i64 [ %176, %129 ], [ %88, %82 ]
  %138 = phi i64 [ %237, %129 ], [ 0, %82 ]
  %139 = shl i64 %138, 6
  %140 = getelementptr inbounds nuw i8, ptr %93, i64 %139
  %141 = shl i64 %138, 3
  %142 = getelementptr inbounds nuw i8, ptr %4, i64 %141
  %143 = load i64, ptr %140, align 1
  %144 = tail call noundef i64 @llvm.bswap.i64(i64 %143)
  %145 = load i64, ptr %142, align 8
  %146 = tail call noundef i64 @llvm.bswap.i64(i64 %145)
  %147 = xor i64 %146, %144
  %148 = add i64 %144, %132
  %149 = and i64 %147, 4294967295
  %150 = lshr i64 %147, 32
  %151 = mul nuw i64 %149, %150
  %152 = add i64 %148, %151
  %153 = getelementptr inbounds nuw i8, ptr %140, i64 8
  %154 = load i64, ptr %153, align 1
  %155 = tail call noundef i64 @llvm.bswap.i64(i64 %154)
  %156 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %157 = load i64, ptr %156, align 8
  %158 = tail call noundef i64 @llvm.bswap.i64(i64 %157)
  %159 = xor i64 %158, %155
  %160 = add i64 %155, %133
  %161 = and i64 %159, 4294967295
  %162 = lshr i64 %159, 32
  %163 = mul nuw i64 %161, %162
  %164 = add i64 %160, %163
  %165 = getelementptr inbounds nuw i8, ptr %140, i64 16
  %166 = load i64, ptr %165, align 1
  %167 = tail call noundef i64 @llvm.bswap.i64(i64 %166)
  %168 = getelementptr inbounds nuw i8, ptr %142, i64 16
  %169 = load i64, ptr %168, align 8
  %170 = tail call noundef i64 @llvm.bswap.i64(i64 %169)
  %171 = xor i64 %170, %167
  %172 = add i64 %167, %137
  %173 = and i64 %171, 4294967295
  %174 = lshr i64 %171, 32
  %175 = mul nuw i64 %173, %174
  %176 = add i64 %172, %175
  %177 = getelementptr inbounds nuw i8, ptr %140, i64 24
  %178 = load i64, ptr %177, align 1
  %179 = tail call noundef i64 @llvm.bswap.i64(i64 %178)
  %180 = getelementptr inbounds nuw i8, ptr %142, i64 24
  %181 = load i64, ptr %180, align 8
  %182 = tail call noundef i64 @llvm.bswap.i64(i64 %181)
  %183 = xor i64 %182, %179
  %184 = add i64 %179, %136
  %185 = and i64 %183, 4294967295
  %186 = lshr i64 %183, 32
  %187 = mul nuw i64 %185, %186
  %188 = add i64 %184, %187
  %189 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %190 = load i64, ptr %189, align 1
  %191 = tail call noundef i64 @llvm.bswap.i64(i64 %190)
  %192 = getelementptr inbounds nuw i8, ptr %142, i64 32
  %193 = load i64, ptr %192, align 8
  %194 = tail call noundef i64 @llvm.bswap.i64(i64 %193)
  %195 = xor i64 %194, %191
  %196 = add i64 %191, %135
  %197 = and i64 %195, 4294967295
  %198 = lshr i64 %195, 32
  %199 = mul nuw i64 %197, %198
  %200 = add i64 %196, %199
  %201 = getelementptr inbounds nuw i8, ptr %140, i64 40
  %202 = load i64, ptr %201, align 1
  %203 = tail call noundef i64 @llvm.bswap.i64(i64 %202)
  %204 = getelementptr inbounds nuw i8, ptr %142, i64 40
  %205 = load i64, ptr %204, align 8
  %206 = tail call noundef i64 @llvm.bswap.i64(i64 %205)
  %207 = xor i64 %206, %203
  %208 = add i64 %203, %134
  %209 = and i64 %207, 4294967295
  %210 = lshr i64 %207, 32
  %211 = mul nuw i64 %209, %210
  %212 = add i64 %208, %211
  %213 = getelementptr inbounds nuw i8, ptr %140, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = tail call noundef i64 @llvm.bswap.i64(i64 %214)
  %216 = getelementptr inbounds nuw i8, ptr %142, i64 48
  %217 = load i64, ptr %216, align 8
  %218 = tail call noundef i64 @llvm.bswap.i64(i64 %217)
  %219 = xor i64 %218, %215
  %220 = add i64 %215, %131
  %221 = and i64 %219, 4294967295
  %222 = lshr i64 %219, 32
  %223 = mul nuw i64 %221, %222
  %224 = add i64 %220, %223
  %225 = getelementptr inbounds nuw i8, ptr %140, i64 56
  %226 = load i64, ptr %225, align 1
  %227 = tail call noundef i64 @llvm.bswap.i64(i64 %226)
  %228 = getelementptr inbounds nuw i8, ptr %142, i64 56
  %229 = load i64, ptr %228, align 8
  %230 = tail call noundef i64 @llvm.bswap.i64(i64 %229)
  %231 = xor i64 %230, %227
  %232 = add i64 %227, %130
  %233 = and i64 %231, 4294967295
  %234 = lshr i64 %231, 32
  %235 = mul nuw i64 %233, %234
  %236 = add i64 %232, %235
  %237 = add nuw nsw i64 %138, 1
  %238 = icmp eq i64 %237, 16
  br i1 %238, label %94, label %129

239:                                              ; preds = %94, %6
  %240 = phi i64 [ 2654435761, %6 ], [ %126, %94 ]
  %241 = phi i64 [ 2870177450012600261, %6 ], [ %122, %94 ]
  %242 = phi i64 [ 2246822519, %6 ], [ %118, %94 ]
  %243 = phi i64 [ -8796714831421723037, %6 ], [ %114, %94 ]
  %244 = phi i64 [ 1609587929392839161, %6 ], [ %110, %94 ]
  %245 = phi i64 [ -4417276706812531889, %6 ], [ %106, %94 ]
  %246 = phi i64 [ -7046029288634856825, %6 ], [ %102, %94 ]
  %247 = phi i64 [ 3266489917, %6 ], [ %98, %94 ]
  %248 = and i64 %1, -1024
  %249 = and i64 %1, 1023
  %250 = lshr i64 %249, 6
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 %248
  %252 = icmp samesign ult i64 %249, 64
  br i1 %252, label %363, label %253

253:                                              ; preds = %239, %253
  %254 = phi i64 [ %360, %253 ], [ %240, %239 ]
  %255 = phi i64 [ %348, %253 ], [ %241, %239 ]
  %256 = phi i64 [ %276, %253 ], [ %247, %239 ]
  %257 = phi i64 [ %288, %253 ], [ %246, %239 ]
  %258 = phi i64 [ %336, %253 ], [ %242, %239 ]
  %259 = phi i64 [ %324, %253 ], [ %243, %239 ]
  %260 = phi i64 [ %312, %253 ], [ %244, %239 ]
  %261 = phi i64 [ %300, %253 ], [ %245, %239 ]
  %262 = phi i64 [ %361, %253 ], [ 0, %239 ]
  %263 = shl i64 %262, 6
  %264 = getelementptr inbounds nuw i8, ptr %251, i64 %263
  %265 = shl i64 %262, 3
  %266 = getelementptr inbounds nuw i8, ptr %4, i64 %265
  %267 = load i64, ptr %264, align 1
  %268 = tail call noundef i64 @llvm.bswap.i64(i64 %267)
  %269 = load i64, ptr %266, align 8
  %270 = tail call noundef i64 @llvm.bswap.i64(i64 %269)
  %271 = xor i64 %270, %268
  %272 = add i64 %268, %256
  %273 = and i64 %271, 4294967295
  %274 = lshr i64 %271, 32
  %275 = mul nuw i64 %273, %274
  %276 = add i64 %272, %275
  %277 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %278 = load i64, ptr %277, align 1
  %279 = tail call noundef i64 @llvm.bswap.i64(i64 %278)
  %280 = getelementptr inbounds nuw i8, ptr %266, i64 8
  %281 = load i64, ptr %280, align 8
  %282 = tail call noundef i64 @llvm.bswap.i64(i64 %281)
  %283 = xor i64 %282, %279
  %284 = add i64 %279, %257
  %285 = and i64 %283, 4294967295
  %286 = lshr i64 %283, 32
  %287 = mul nuw i64 %285, %286
  %288 = add i64 %284, %287
  %289 = getelementptr inbounds nuw i8, ptr %264, i64 16
  %290 = load i64, ptr %289, align 1
  %291 = tail call noundef i64 @llvm.bswap.i64(i64 %290)
  %292 = getelementptr inbounds nuw i8, ptr %266, i64 16
  %293 = load i64, ptr %292, align 8
  %294 = tail call noundef i64 @llvm.bswap.i64(i64 %293)
  %295 = xor i64 %294, %291
  %296 = add i64 %291, %261
  %297 = and i64 %295, 4294967295
  %298 = lshr i64 %295, 32
  %299 = mul nuw i64 %297, %298
  %300 = add i64 %296, %299
  %301 = getelementptr inbounds nuw i8, ptr %264, i64 24
  %302 = load i64, ptr %301, align 1
  %303 = tail call noundef i64 @llvm.bswap.i64(i64 %302)
  %304 = getelementptr inbounds nuw i8, ptr %266, i64 24
  %305 = load i64, ptr %304, align 8
  %306 = tail call noundef i64 @llvm.bswap.i64(i64 %305)
  %307 = xor i64 %306, %303
  %308 = add i64 %303, %260
  %309 = and i64 %307, 4294967295
  %310 = lshr i64 %307, 32
  %311 = mul nuw i64 %309, %310
  %312 = add i64 %308, %311
  %313 = getelementptr inbounds nuw i8, ptr %264, i64 32
  %314 = load i64, ptr %313, align 1
  %315 = tail call noundef i64 @llvm.bswap.i64(i64 %314)
  %316 = getelementptr inbounds nuw i8, ptr %266, i64 32
  %317 = load i64, ptr %316, align 8
  %318 = tail call noundef i64 @llvm.bswap.i64(i64 %317)
  %319 = xor i64 %318, %315
  %320 = add i64 %315, %259
  %321 = and i64 %319, 4294967295
  %322 = lshr i64 %319, 32
  %323 = mul nuw i64 %321, %322
  %324 = add i64 %320, %323
  %325 = getelementptr inbounds nuw i8, ptr %264, i64 40
  %326 = load i64, ptr %325, align 1
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %326)
  %328 = getelementptr inbounds nuw i8, ptr %266, i64 40
  %329 = load i64, ptr %328, align 8
  %330 = tail call noundef i64 @llvm.bswap.i64(i64 %329)
  %331 = xor i64 %330, %327
  %332 = add i64 %327, %258
  %333 = and i64 %331, 4294967295
  %334 = lshr i64 %331, 32
  %335 = mul nuw i64 %333, %334
  %336 = add i64 %332, %335
  %337 = getelementptr inbounds nuw i8, ptr %264, i64 48
  %338 = load i64, ptr %337, align 1
  %339 = tail call noundef i64 @llvm.bswap.i64(i64 %338)
  %340 = getelementptr inbounds nuw i8, ptr %266, i64 48
  %341 = load i64, ptr %340, align 8
  %342 = tail call noundef i64 @llvm.bswap.i64(i64 %341)
  %343 = xor i64 %342, %339
  %344 = add i64 %339, %255
  %345 = and i64 %343, 4294967295
  %346 = lshr i64 %343, 32
  %347 = mul nuw i64 %345, %346
  %348 = add i64 %344, %347
  %349 = getelementptr inbounds nuw i8, ptr %264, i64 56
  %350 = load i64, ptr %349, align 1
  %351 = tail call noundef i64 @llvm.bswap.i64(i64 %350)
  %352 = getelementptr inbounds nuw i8, ptr %266, i64 56
  %353 = load i64, ptr %352, align 8
  %354 = tail call noundef i64 @llvm.bswap.i64(i64 %353)
  %355 = xor i64 %354, %351
  %356 = add i64 %351, %254
  %357 = and i64 %355, 4294967295
  %358 = lshr i64 %355, 32
  %359 = mul nuw i64 %357, %358
  %360 = add i64 %356, %359
  %361 = add nuw nsw i64 %262, 1
  %362 = icmp eq i64 %361, %250
  br i1 %362, label %363, label %253

363:                                              ; preds = %253, %239
  %364 = phi i64 [ %240, %239 ], [ %360, %253 ]
  %365 = phi i64 [ %241, %239 ], [ %348, %253 ]
  %366 = phi i64 [ %242, %239 ], [ %336, %253 ]
  %367 = phi i64 [ %243, %239 ], [ %324, %253 ]
  %368 = phi i64 [ %244, %239 ], [ %312, %253 ]
  %369 = phi i64 [ %245, %239 ], [ %300, %253 ]
  %370 = phi i64 [ %246, %239 ], [ %288, %253 ]
  %371 = phi i64 [ %247, %239 ], [ %276, %253 ]
  %372 = and i64 %1, 63
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %472, label %374

374:                                              ; preds = %363
  %375 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %376 = getelementptr inbounds i8, ptr %375, i64 -64
  %377 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %378 = load i64, ptr %376, align 1
  %379 = tail call noundef i64 @llvm.bswap.i64(i64 %378)
  %380 = load i64, ptr %377, align 1
  %381 = tail call noundef i64 @llvm.bswap.i64(i64 %380)
  %382 = xor i64 %381, %379
  %383 = add i64 %379, %371
  %384 = and i64 %382, 4294967295
  %385 = lshr i64 %382, 32
  %386 = mul nuw i64 %384, %385
  %387 = add i64 %383, %386
  %388 = getelementptr inbounds i8, ptr %375, i64 -56
  %389 = load i64, ptr %388, align 1
  %390 = tail call noundef i64 @llvm.bswap.i64(i64 %389)
  %391 = getelementptr inbounds nuw i8, ptr %4, i64 129
  %392 = load i64, ptr %391, align 1
  %393 = tail call noundef i64 @llvm.bswap.i64(i64 %392)
  %394 = xor i64 %393, %390
  %395 = add i64 %390, %370
  %396 = and i64 %394, 4294967295
  %397 = lshr i64 %394, 32
  %398 = mul nuw i64 %396, %397
  %399 = add i64 %395, %398
  %400 = getelementptr inbounds i8, ptr %375, i64 -48
  %401 = load i64, ptr %400, align 1
  %402 = tail call noundef i64 @llvm.bswap.i64(i64 %401)
  %403 = getelementptr inbounds nuw i8, ptr %4, i64 137
  %404 = load i64, ptr %403, align 1
  %405 = tail call noundef i64 @llvm.bswap.i64(i64 %404)
  %406 = xor i64 %405, %402
  %407 = add i64 %402, %369
  %408 = and i64 %406, 4294967295
  %409 = lshr i64 %406, 32
  %410 = mul nuw i64 %408, %409
  %411 = add i64 %407, %410
  %412 = getelementptr inbounds i8, ptr %375, i64 -40
  %413 = load i64, ptr %412, align 1
  %414 = tail call noundef i64 @llvm.bswap.i64(i64 %413)
  %415 = getelementptr inbounds nuw i8, ptr %4, i64 145
  %416 = load i64, ptr %415, align 1
  %417 = tail call noundef i64 @llvm.bswap.i64(i64 %416)
  %418 = xor i64 %417, %414
  %419 = add i64 %414, %368
  %420 = and i64 %418, 4294967295
  %421 = lshr i64 %418, 32
  %422 = mul nuw i64 %420, %421
  %423 = add i64 %419, %422
  %424 = getelementptr inbounds i8, ptr %375, i64 -32
  %425 = load i64, ptr %424, align 1
  %426 = tail call noundef i64 @llvm.bswap.i64(i64 %425)
  %427 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %428 = load i64, ptr %427, align 1
  %429 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %430 = xor i64 %429, %426
  %431 = add i64 %426, %367
  %432 = and i64 %430, 4294967295
  %433 = lshr i64 %430, 32
  %434 = mul nuw i64 %432, %433
  %435 = add i64 %431, %434
  %436 = getelementptr inbounds i8, ptr %375, i64 -24
  %437 = load i64, ptr %436, align 1
  %438 = tail call noundef i64 @llvm.bswap.i64(i64 %437)
  %439 = getelementptr inbounds nuw i8, ptr %4, i64 161
  %440 = load i64, ptr %439, align 1
  %441 = tail call noundef i64 @llvm.bswap.i64(i64 %440)
  %442 = xor i64 %441, %438
  %443 = add i64 %438, %366
  %444 = and i64 %442, 4294967295
  %445 = lshr i64 %442, 32
  %446 = mul nuw i64 %444, %445
  %447 = add i64 %443, %446
  %448 = getelementptr inbounds i8, ptr %375, i64 -16
  %449 = load i64, ptr %448, align 1
  %450 = tail call noundef i64 @llvm.bswap.i64(i64 %449)
  %451 = getelementptr inbounds nuw i8, ptr %4, i64 169
  %452 = load i64, ptr %451, align 1
  %453 = tail call noundef i64 @llvm.bswap.i64(i64 %452)
  %454 = xor i64 %453, %450
  %455 = add i64 %450, %365
  %456 = and i64 %454, 4294967295
  %457 = lshr i64 %454, 32
  %458 = mul nuw i64 %456, %457
  %459 = add i64 %455, %458
  %460 = getelementptr inbounds i8, ptr %375, i64 -8
  %461 = load i64, ptr %460, align 1
  %462 = tail call noundef i64 @llvm.bswap.i64(i64 %461)
  %463 = getelementptr inbounds nuw i8, ptr %4, i64 177
  %464 = load i64, ptr %463, align 1
  %465 = tail call noundef i64 @llvm.bswap.i64(i64 %464)
  %466 = xor i64 %465, %462
  %467 = add i64 %462, %364
  %468 = and i64 %466, 4294967295
  %469 = lshr i64 %466, 32
  %470 = mul nuw i64 %468, %469
  %471 = add i64 %467, %470
  br label %472

472:                                              ; preds = %363, %374
  %473 = phi i64 [ %364, %363 ], [ %471, %374 ]
  %474 = phi i64 [ %365, %363 ], [ %459, %374 ]
  %475 = phi i64 [ %366, %363 ], [ %447, %374 ]
  %476 = phi i64 [ %367, %363 ], [ %435, %374 ]
  %477 = phi i64 [ %368, %363 ], [ %423, %374 ]
  %478 = phi i64 [ %369, %363 ], [ %411, %374 ]
  %479 = phi i64 [ %370, %363 ], [ %399, %374 ]
  %480 = phi i64 [ %371, %363 ], [ %387, %374 ]
  %481 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %482 = mul i64 %1, -7046029288634856825
  %483 = load i64, ptr %481, align 1
  %484 = tail call noundef i64 @llvm.bswap.i64(i64 %483)
  %485 = xor i64 %484, %480
  %486 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %487 = load i64, ptr %486, align 1
  %488 = tail call noundef i64 @llvm.bswap.i64(i64 %487)
  %489 = xor i64 %488, %479
  %490 = zext i64 %485 to i128
  %491 = zext i64 %489 to i128
  %492 = mul nuw i128 %491, %490
  %493 = lshr i128 %492, 64
  %494 = xor i128 %493, %492
  %495 = trunc i128 %494 to i64
  %496 = add i64 %482, %495
  %497 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %498 = load i64, ptr %497, align 1
  %499 = tail call noundef i64 @llvm.bswap.i64(i64 %498)
  %500 = xor i64 %499, %478
  %501 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %502 = load i64, ptr %501, align 1
  %503 = tail call noundef i64 @llvm.bswap.i64(i64 %502)
  %504 = xor i64 %503, %477
  %505 = zext i64 %500 to i128
  %506 = zext i64 %504 to i128
  %507 = mul nuw i128 %506, %505
  %508 = lshr i128 %507, 64
  %509 = xor i128 %508, %507
  %510 = trunc i128 %509 to i64
  %511 = add i64 %496, %510
  %512 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %513 = load i64, ptr %512, align 1
  %514 = tail call noundef i64 @llvm.bswap.i64(i64 %513)
  %515 = xor i64 %514, %476
  %516 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %517 = load i64, ptr %516, align 1
  %518 = tail call noundef i64 @llvm.bswap.i64(i64 %517)
  %519 = xor i64 %518, %475
  %520 = zext i64 %515 to i128
  %521 = zext i64 %519 to i128
  %522 = mul nuw i128 %521, %520
  %523 = lshr i128 %522, 64
  %524 = xor i128 %523, %522
  %525 = trunc i128 %524 to i64
  %526 = add i64 %511, %525
  %527 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %528 = load i64, ptr %527, align 1
  %529 = tail call noundef i64 @llvm.bswap.i64(i64 %528)
  %530 = xor i64 %529, %474
  %531 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %532 = load i64, ptr %531, align 1
  %533 = tail call noundef i64 @llvm.bswap.i64(i64 %532)
  %534 = xor i64 %533, %473
  %535 = zext i64 %530 to i128
  %536 = zext i64 %534 to i128
  %537 = mul nuw i128 %536, %535
  %538 = lshr i128 %537, 64
  %539 = xor i128 %538, %537
  %540 = trunc i128 %539 to i64
  %541 = add i64 %526, %540
  %542 = lshr i64 %541, 37
  %543 = xor i64 %542, %541
  %544 = mul i64 %543, 1609587929392839161
  %545 = lshr i64 %544, 32
  %546 = xor i64 %545, %544
  br label %547

547:                                              ; preds = %472, %80
  %548 = phi i64 [ %81, %80 ], [ %546, %472 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #26
  ret i64 %548
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH3_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(576) ptr @malloc(i64 noundef 576) #25
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef zeroext i32 @XXH3_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH3_copyState(ptr noundef writeonly initializes((0, 576)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %0, ptr noundef nonnull align 64 dereferenceable(576) %1, i64 576, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local zeroext range(i32 0, 2) i32 @XXH3_64bits_reset(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %6, align 16
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %8, align 32
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @kSecret, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 128, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 16, ptr %14, align 4
  br label %15

15:                                               ; preds = %1, %3
  %16 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local zeroext range(i32 0, 2) i32 @XXH3_64bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %1, ptr %14, align 16
  %15 = trunc i64 %2 to i32
  %16 = add i32 %15, -64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 %16, ptr %17, align 4
  %18 = lshr i32 %16, 3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %18, ptr %19, align 4
  %20 = icmp eq ptr %1, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = icmp ult i64 %2, 136
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %21, %5, %3
  %25 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local zeroext range(i32 0, 2) i32 @XXH3_64bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %89, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 320, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %1, ptr %14, align 32
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 128, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 16, ptr %17, align 4
  %18 = add i64 %1, -4734510112055689544
  %19 = tail call noundef i64 @llvm.bswap.i64(i64 %18)
  store i64 %19, ptr %5, align 1
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %21 = sub i64 2066345149520216444, %1
  %22 = tail call noundef i64 @llvm.bswap.i64(i64 %21)
  store i64 %22, ptr %20, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %24 = add i64 %1, -2623469361688619810
  %25 = tail call noundef i64 @llvm.bswap.i64(i64 %24)
  store i64 %25, ptr %23, align 1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %27 = sub i64 2262974939099578482, %1
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %27)
  store i64 %28, ptr %26, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %30 = add i64 %1, 8711581037947681227
  %31 = tail call noundef i64 @llvm.bswap.i64(i64 %30)
  store i64 %31, ptr %29, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %33 = sub i64 2410270004345854594, %1
  %34 = tail call noundef i64 @llvm.bswap.i64(i64 %33)
  store i64 %34, ptr %32, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %36 = add i64 %1, -8204357891075471176
  %37 = tail call noundef i64 @llvm.bswap.i64(i64 %36)
  store i64 %37, ptr %35, align 1
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %39 = sub i64 5487137525590930912, %1
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  store i64 %40, ptr %38, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %42 = add i64 %1, -3818837453329782724
  %43 = tail call noundef i64 @llvm.bswap.i64(i64 %42)
  store i64 %43, ptr %41, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %45 = sub i64 -6688317018830679928, %1
  %46 = tail call noundef i64 @llvm.bswap.i64(i64 %45)
  store i64 %46, ptr %44, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %48 = add i64 %1, 5690594596133299313
  %49 = tail call noundef i64 @llvm.bswap.i64(i64 %48)
  store i64 %49, ptr %47, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %51 = sub i64 -2833645246901970632, %1
  %52 = tail call noundef i64 @llvm.bswap.i64(i64 %51)
  store i64 %52, ptr %50, align 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %54 = add i64 %1, 4554437623014685352
  %55 = tail call noundef i64 @llvm.bswap.i64(i64 %54)
  store i64 %55, ptr %53, align 1
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %57 = sub i64 2111919702937427193, %1
  %58 = tail call noundef i64 @llvm.bswap.i64(i64 %57)
  store i64 %58, ptr %56, align 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %60 = add i64 %1, 3556072174620004746
  %61 = tail call noundef i64 @llvm.bswap.i64(i64 %60)
  store i64 %61, ptr %59, align 1
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %63 = sub i64 7238261902898274248, %1
  %64 = tail call noundef i64 @llvm.bswap.i64(i64 %63)
  store i64 %64, ptr %62, align 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %66 = add i64 %1, -4329134394285701654
  %67 = tail call noundef i64 @llvm.bswap.i64(i64 %66)
  store i64 %67, ptr %65, align 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %69 = sub i64 -1485321483350670907, %1
  %70 = tail call noundef i64 @llvm.bswap.i64(i64 %69)
  store i64 %70, ptr %68, align 1
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %72 = add i64 %1, 5321830579834785047
  %73 = tail call noundef i64 @llvm.bswap.i64(i64 %72)
  store i64 %73, ptr %71, align 1
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %75 = sub i64 -7032137544937171245, %1
  %76 = tail call noundef i64 @llvm.bswap.i64(i64 %75)
  store i64 %76, ptr %74, align 1
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %78 = add i64 %1, -242834301215959509
  %79 = tail call noundef i64 @llvm.bswap.i64(i64 %78)
  store i64 %79, ptr %77, align 1
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %81 = sub i64 -3588858202114426737, %1
  %82 = tail call noundef i64 @llvm.bswap.i64(i64 %81)
  store i64 %82, ptr %80, align 1
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %84 = add i64 %1, 2883454493032893253
  %85 = tail call noundef i64 @llvm.bswap.i64(i64 %84)
  store i64 %85, ptr %83, align 1
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %87 = sub i64 9097354517224871855, %1
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %87)
  store i64 %88, ptr %86, align 1
  store ptr %5, ptr %15, align 16
  br label %89

89:                                               ; preds = %2, %4
  %90 = phi i32 [ 0, %4 ], [ 1, %2 ]
  ret i32 %90
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext range(i32 0, 2) i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %1012, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %8 = load i64, ptr %7, align 8
  %9 = add i64 %8, %2
  store i64 %9, ptr %7, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %11 = load i32, ptr %10, align 64
  %12 = zext i32 %11 to i64
  %13 = add i64 %2, %12
  %14 = icmp ult i64 %13, 257
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %18 = trunc i64 %2 to i32
  %19 = load i32, ptr %10, align 64
  %20 = add i32 %19, %18
  br label %1010

21:                                               ; preds = %5
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %509, label %23

23:                                               ; preds = %21
  %24 = sub i32 256, %11
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull readonly align 1 %1, i64 %25, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, ptr %29, align 4
  %38 = sub i32 %31, %37
  %39 = zext i32 %38 to i64
  %40 = icmp ugt i32 %38, 4
  %41 = shl i32 %37, 3
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %33, i64 %42
  br i1 %40, label %378, label %44

44:                                               ; preds = %23
  %45 = icmp eq i32 %31, %37
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br i1 %45, label %47, label %61

47:                                               ; preds = %44
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %59 = load i64, ptr %58, align 8
  %60 = load i64, ptr %46, align 8
  br label %187

61:                                               ; preds = %44
  %62 = tail call i64 @llvm.umax.i64(i64 %39, i64 1)
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %74 = load i64, ptr %0, align 8
  %75 = load i64, ptr %73, align 8
  %76 = load i64, ptr %46, align 8
  br label %77

77:                                               ; preds = %61, %77
  %78 = phi i64 [ %184, %77 ], [ %76, %61 ]
  %79 = phi i64 [ %172, %77 ], [ %75, %61 ]
  %80 = phi i64 [ %100, %77 ], [ %74, %61 ]
  %81 = phi i64 [ %160, %77 ], [ %72, %61 ]
  %82 = phi i64 [ %148, %77 ], [ %70, %61 ]
  %83 = phi i64 [ %136, %77 ], [ %68, %61 ]
  %84 = phi i64 [ %124, %77 ], [ %66, %61 ]
  %85 = phi i64 [ %112, %77 ], [ %64, %61 ]
  %86 = phi i64 [ %185, %77 ], [ 0, %61 ]
  %87 = shl i64 %86, 6
  %88 = getelementptr inbounds nuw i8, ptr %26, i64 %87
  %89 = shl i64 %86, 3
  %90 = getelementptr inbounds nuw i8, ptr %43, i64 %89
  %91 = load i64, ptr %88, align 1
  %92 = tail call noundef i64 @llvm.bswap.i64(i64 %91)
  %93 = load i64, ptr %90, align 1
  %94 = tail call noundef i64 @llvm.bswap.i64(i64 %93)
  %95 = xor i64 %94, %92
  %96 = add i64 %80, %92
  %97 = and i64 %95, 4294967295
  %98 = lshr i64 %95, 32
  %99 = mul nuw i64 %97, %98
  %100 = add i64 %96, %99
  store i64 %100, ptr %0, align 8
  %101 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %102 = load i64, ptr %101, align 1
  %103 = tail call noundef i64 @llvm.bswap.i64(i64 %102)
  %104 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %105 = load i64, ptr %104, align 1
  %106 = tail call noundef i64 @llvm.bswap.i64(i64 %105)
  %107 = xor i64 %106, %103
  %108 = add i64 %85, %103
  %109 = and i64 %107, 4294967295
  %110 = lshr i64 %107, 32
  %111 = mul nuw i64 %109, %110
  %112 = add i64 %108, %111
  store i64 %112, ptr %63, align 8
  %113 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %114 = load i64, ptr %113, align 1
  %115 = tail call noundef i64 @llvm.bswap.i64(i64 %114)
  %116 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %117 = load i64, ptr %116, align 1
  %118 = tail call noundef i64 @llvm.bswap.i64(i64 %117)
  %119 = xor i64 %118, %115
  %120 = add i64 %84, %115
  %121 = and i64 %119, 4294967295
  %122 = lshr i64 %119, 32
  %123 = mul nuw i64 %121, %122
  %124 = add i64 %120, %123
  store i64 %124, ptr %65, align 8
  %125 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %126 = load i64, ptr %125, align 1
  %127 = tail call noundef i64 @llvm.bswap.i64(i64 %126)
  %128 = getelementptr inbounds nuw i8, ptr %90, i64 24
  %129 = load i64, ptr %128, align 1
  %130 = tail call noundef i64 @llvm.bswap.i64(i64 %129)
  %131 = xor i64 %130, %127
  %132 = add i64 %83, %127
  %133 = and i64 %131, 4294967295
  %134 = lshr i64 %131, 32
  %135 = mul nuw i64 %133, %134
  %136 = add i64 %132, %135
  store i64 %136, ptr %67, align 8
  %137 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %138 = load i64, ptr %137, align 1
  %139 = tail call noundef i64 @llvm.bswap.i64(i64 %138)
  %140 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %141 = load i64, ptr %140, align 1
  %142 = tail call noundef i64 @llvm.bswap.i64(i64 %141)
  %143 = xor i64 %142, %139
  %144 = add i64 %82, %139
  %145 = and i64 %143, 4294967295
  %146 = lshr i64 %143, 32
  %147 = mul nuw i64 %145, %146
  %148 = add i64 %144, %147
  store i64 %148, ptr %69, align 8
  %149 = getelementptr inbounds nuw i8, ptr %88, i64 40
  %150 = load i64, ptr %149, align 1
  %151 = tail call noundef i64 @llvm.bswap.i64(i64 %150)
  %152 = getelementptr inbounds nuw i8, ptr %90, i64 40
  %153 = load i64, ptr %152, align 1
  %154 = tail call noundef i64 @llvm.bswap.i64(i64 %153)
  %155 = xor i64 %154, %151
  %156 = add i64 %81, %151
  %157 = and i64 %155, 4294967295
  %158 = lshr i64 %155, 32
  %159 = mul nuw i64 %157, %158
  %160 = add i64 %156, %159
  store i64 %160, ptr %71, align 8
  %161 = getelementptr inbounds nuw i8, ptr %88, i64 48
  %162 = load i64, ptr %161, align 1
  %163 = tail call noundef i64 @llvm.bswap.i64(i64 %162)
  %164 = getelementptr inbounds nuw i8, ptr %90, i64 48
  %165 = load i64, ptr %164, align 1
  %166 = tail call noundef i64 @llvm.bswap.i64(i64 %165)
  %167 = xor i64 %166, %163
  %168 = add i64 %79, %163
  %169 = and i64 %167, 4294967295
  %170 = lshr i64 %167, 32
  %171 = mul nuw i64 %169, %170
  %172 = add i64 %168, %171
  store i64 %172, ptr %73, align 8
  %173 = getelementptr inbounds nuw i8, ptr %88, i64 56
  %174 = load i64, ptr %173, align 1
  %175 = tail call noundef i64 @llvm.bswap.i64(i64 %174)
  %176 = getelementptr inbounds nuw i8, ptr %90, i64 56
  %177 = load i64, ptr %176, align 1
  %178 = tail call noundef i64 @llvm.bswap.i64(i64 %177)
  %179 = xor i64 %178, %175
  %180 = add i64 %78, %175
  %181 = and i64 %179, 4294967295
  %182 = lshr i64 %179, 32
  %183 = mul nuw i64 %181, %182
  %184 = add i64 %180, %183
  store i64 %184, ptr %46, align 8
  %185 = add nuw nsw i64 %86, 1
  %186 = icmp eq i64 %185, %62
  br i1 %186, label %187, label %77

187:                                              ; preds = %77, %47
  %188 = phi i64 [ %60, %47 ], [ %184, %77 ]
  %189 = phi i64 [ %59, %47 ], [ %172, %77 ]
  %190 = phi i64 [ %57, %47 ], [ %160, %77 ]
  %191 = phi i64 [ %55, %47 ], [ %148, %77 ]
  %192 = phi i64 [ %53, %47 ], [ %136, %77 ]
  %193 = phi i64 [ %51, %47 ], [ %124, %77 ]
  %194 = phi i64 [ %49, %47 ], [ %112, %77 ]
  %195 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  %196 = load i64, ptr %195, align 1
  %197 = tail call noundef i64 @llvm.bswap.i64(i64 %196)
  %198 = load i64, ptr %0, align 8
  %199 = lshr i64 %198, 47
  %200 = xor i64 %197, %199
  %201 = xor i64 %200, %198
  %202 = mul i64 %201, 2654435761
  store i64 %202, ptr %0, align 8
  %203 = getelementptr inbounds nuw i8, ptr %195, i64 8
  %204 = load i64, ptr %203, align 1
  %205 = tail call noundef i64 @llvm.bswap.i64(i64 %204)
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %207 = lshr i64 %194, 47
  %208 = xor i64 %205, %207
  %209 = xor i64 %208, %194
  %210 = mul i64 %209, 2654435761
  store i64 %210, ptr %206, align 8
  %211 = getelementptr inbounds nuw i8, ptr %195, i64 16
  %212 = load i64, ptr %211, align 1
  %213 = tail call noundef i64 @llvm.bswap.i64(i64 %212)
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %215 = lshr i64 %193, 47
  %216 = xor i64 %213, %215
  %217 = xor i64 %216, %193
  %218 = mul i64 %217, 2654435761
  store i64 %218, ptr %214, align 8
  %219 = getelementptr inbounds nuw i8, ptr %195, i64 24
  %220 = load i64, ptr %219, align 1
  %221 = tail call noundef i64 @llvm.bswap.i64(i64 %220)
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %223 = lshr i64 %192, 47
  %224 = xor i64 %221, %223
  %225 = xor i64 %224, %192
  %226 = mul i64 %225, 2654435761
  store i64 %226, ptr %222, align 8
  %227 = getelementptr inbounds nuw i8, ptr %195, i64 32
  %228 = load i64, ptr %227, align 1
  %229 = tail call noundef i64 @llvm.bswap.i64(i64 %228)
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %231 = lshr i64 %191, 47
  %232 = xor i64 %229, %231
  %233 = xor i64 %232, %191
  %234 = mul i64 %233, 2654435761
  store i64 %234, ptr %230, align 8
  %235 = getelementptr inbounds nuw i8, ptr %195, i64 40
  %236 = load i64, ptr %235, align 1
  %237 = tail call noundef i64 @llvm.bswap.i64(i64 %236)
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %239 = lshr i64 %190, 47
  %240 = xor i64 %237, %239
  %241 = xor i64 %240, %190
  %242 = mul i64 %241, 2654435761
  store i64 %242, ptr %238, align 8
  %243 = getelementptr inbounds nuw i8, ptr %195, i64 48
  %244 = load i64, ptr %243, align 1
  %245 = tail call noundef i64 @llvm.bswap.i64(i64 %244)
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %247 = lshr i64 %189, 47
  %248 = xor i64 %245, %247
  %249 = xor i64 %248, %189
  %250 = mul i64 %249, 2654435761
  store i64 %250, ptr %246, align 8
  %251 = getelementptr inbounds nuw i8, ptr %195, i64 56
  %252 = load i64, ptr %251, align 1
  %253 = tail call noundef i64 @llvm.bswap.i64(i64 %252)
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %255 = lshr i64 %188, 47
  %256 = xor i64 %253, %255
  %257 = xor i64 %256, %188
  %258 = mul i64 %257, 2654435761
  store i64 %258, ptr %254, align 8
  %259 = shl nuw nsw i64 %39, 6
  %260 = getelementptr inbounds nuw i8, ptr %26, i64 %259
  %261 = sub nsw i64 4, %39
  %262 = icmp eq i32 %38, 4
  br i1 %262, label %376, label %263

263:                                              ; preds = %187
  %264 = load i64, ptr %0, align 8
  %265 = load i64, ptr %254, align 8
  br label %266

266:                                              ; preds = %263, %266
  %267 = phi i64 [ %373, %266 ], [ %265, %263 ]
  %268 = phi i64 [ %289, %266 ], [ %264, %263 ]
  %269 = phi i64 [ %361, %266 ], [ %250, %263 ]
  %270 = phi i64 [ %349, %266 ], [ %242, %263 ]
  %271 = phi i64 [ %337, %266 ], [ %234, %263 ]
  %272 = phi i64 [ %325, %266 ], [ %226, %263 ]
  %273 = phi i64 [ %313, %266 ], [ %218, %263 ]
  %274 = phi i64 [ %301, %266 ], [ %210, %263 ]
  %275 = phi i64 [ %374, %266 ], [ 0, %263 ]
  %276 = shl i64 %275, 6
  %277 = getelementptr inbounds nuw i8, ptr %260, i64 %276
  %278 = shl i64 %275, 3
  %279 = getelementptr inbounds nuw i8, ptr %33, i64 %278
  %280 = load i64, ptr %277, align 1
  %281 = tail call noundef i64 @llvm.bswap.i64(i64 %280)
  %282 = load i64, ptr %279, align 1
  %283 = tail call noundef i64 @llvm.bswap.i64(i64 %282)
  %284 = xor i64 %283, %281
  %285 = add i64 %268, %281
  %286 = and i64 %284, 4294967295
  %287 = lshr i64 %284, 32
  %288 = mul nuw i64 %286, %287
  %289 = add i64 %285, %288
  store i64 %289, ptr %0, align 8
  %290 = getelementptr inbounds nuw i8, ptr %277, i64 8
  %291 = load i64, ptr %290, align 1
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %291)
  %293 = getelementptr inbounds nuw i8, ptr %279, i64 8
  %294 = load i64, ptr %293, align 1
  %295 = tail call noundef i64 @llvm.bswap.i64(i64 %294)
  %296 = xor i64 %295, %292
  %297 = add i64 %274, %292
  %298 = and i64 %296, 4294967295
  %299 = lshr i64 %296, 32
  %300 = mul nuw i64 %298, %299
  %301 = add i64 %297, %300
  store i64 %301, ptr %206, align 8
  %302 = getelementptr inbounds nuw i8, ptr %277, i64 16
  %303 = load i64, ptr %302, align 1
  %304 = tail call noundef i64 @llvm.bswap.i64(i64 %303)
  %305 = getelementptr inbounds nuw i8, ptr %279, i64 16
  %306 = load i64, ptr %305, align 1
  %307 = tail call noundef i64 @llvm.bswap.i64(i64 %306)
  %308 = xor i64 %307, %304
  %309 = add i64 %273, %304
  %310 = and i64 %308, 4294967295
  %311 = lshr i64 %308, 32
  %312 = mul nuw i64 %310, %311
  %313 = add i64 %309, %312
  store i64 %313, ptr %214, align 8
  %314 = getelementptr inbounds nuw i8, ptr %277, i64 24
  %315 = load i64, ptr %314, align 1
  %316 = tail call noundef i64 @llvm.bswap.i64(i64 %315)
  %317 = getelementptr inbounds nuw i8, ptr %279, i64 24
  %318 = load i64, ptr %317, align 1
  %319 = tail call noundef i64 @llvm.bswap.i64(i64 %318)
  %320 = xor i64 %319, %316
  %321 = add i64 %272, %316
  %322 = and i64 %320, 4294967295
  %323 = lshr i64 %320, 32
  %324 = mul nuw i64 %322, %323
  %325 = add i64 %321, %324
  store i64 %325, ptr %222, align 8
  %326 = getelementptr inbounds nuw i8, ptr %277, i64 32
  %327 = load i64, ptr %326, align 1
  %328 = tail call noundef i64 @llvm.bswap.i64(i64 %327)
  %329 = getelementptr inbounds nuw i8, ptr %279, i64 32
  %330 = load i64, ptr %329, align 1
  %331 = tail call noundef i64 @llvm.bswap.i64(i64 %330)
  %332 = xor i64 %331, %328
  %333 = add i64 %271, %328
  %334 = and i64 %332, 4294967295
  %335 = lshr i64 %332, 32
  %336 = mul nuw i64 %334, %335
  %337 = add i64 %333, %336
  store i64 %337, ptr %230, align 8
  %338 = getelementptr inbounds nuw i8, ptr %277, i64 40
  %339 = load i64, ptr %338, align 1
  %340 = tail call noundef i64 @llvm.bswap.i64(i64 %339)
  %341 = getelementptr inbounds nuw i8, ptr %279, i64 40
  %342 = load i64, ptr %341, align 1
  %343 = tail call noundef i64 @llvm.bswap.i64(i64 %342)
  %344 = xor i64 %343, %340
  %345 = add i64 %270, %340
  %346 = and i64 %344, 4294967295
  %347 = lshr i64 %344, 32
  %348 = mul nuw i64 %346, %347
  %349 = add i64 %345, %348
  store i64 %349, ptr %238, align 8
  %350 = getelementptr inbounds nuw i8, ptr %277, i64 48
  %351 = load i64, ptr %350, align 1
  %352 = tail call noundef i64 @llvm.bswap.i64(i64 %351)
  %353 = getelementptr inbounds nuw i8, ptr %279, i64 48
  %354 = load i64, ptr %353, align 1
  %355 = tail call noundef i64 @llvm.bswap.i64(i64 %354)
  %356 = xor i64 %355, %352
  %357 = add i64 %269, %352
  %358 = and i64 %356, 4294967295
  %359 = lshr i64 %356, 32
  %360 = mul nuw i64 %358, %359
  %361 = add i64 %357, %360
  store i64 %361, ptr %246, align 8
  %362 = getelementptr inbounds nuw i8, ptr %277, i64 56
  %363 = load i64, ptr %362, align 1
  %364 = tail call noundef i64 @llvm.bswap.i64(i64 %363)
  %365 = getelementptr inbounds nuw i8, ptr %279, i64 56
  %366 = load i64, ptr %365, align 1
  %367 = tail call noundef i64 @llvm.bswap.i64(i64 %366)
  %368 = xor i64 %367, %364
  %369 = add i64 %267, %364
  %370 = and i64 %368, 4294967295
  %371 = lshr i64 %368, 32
  %372 = mul nuw i64 %370, %371
  %373 = add i64 %369, %372
  store i64 %373, ptr %254, align 8
  %374 = add nuw i64 %275, 1
  %375 = icmp eq i64 %374, %261
  br i1 %375, label %376, label %266

376:                                              ; preds = %266, %187
  %377 = trunc nuw nsw i64 %261 to i32
  br label %507

378:                                              ; preds = %23
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %380 = load i64, ptr %379, align 8
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %382 = load i64, ptr %381, align 8
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %384 = load i64, ptr %383, align 8
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %386 = load i64, ptr %385, align 8
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %388 = load i64, ptr %387, align 8
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %391 = load i64, ptr %0, align 8
  %392 = load i64, ptr %389, align 8
  %393 = load i64, ptr %390, align 8
  br label %394

394:                                              ; preds = %378, %394
  %395 = phi i64 [ %393, %378 ], [ %501, %394 ]
  %396 = phi i64 [ %392, %378 ], [ %489, %394 ]
  %397 = phi i64 [ %391, %378 ], [ %417, %394 ]
  %398 = phi i64 [ %388, %378 ], [ %477, %394 ]
  %399 = phi i64 [ %386, %378 ], [ %465, %394 ]
  %400 = phi i64 [ %384, %378 ], [ %453, %394 ]
  %401 = phi i64 [ %382, %378 ], [ %441, %394 ]
  %402 = phi i64 [ %380, %378 ], [ %429, %394 ]
  %403 = phi i64 [ 0, %378 ], [ %502, %394 ]
  %404 = shl nuw nsw i64 %403, 6
  %405 = getelementptr inbounds nuw i8, ptr %26, i64 %404
  %406 = shl nuw nsw i64 %403, 3
  %407 = getelementptr inbounds nuw i8, ptr %43, i64 %406
  %408 = load i64, ptr %405, align 1
  %409 = tail call noundef i64 @llvm.bswap.i64(i64 %408)
  %410 = load i64, ptr %407, align 1
  %411 = tail call noundef i64 @llvm.bswap.i64(i64 %410)
  %412 = xor i64 %411, %409
  %413 = add i64 %397, %409
  %414 = and i64 %412, 4294967295
  %415 = lshr i64 %412, 32
  %416 = mul nuw i64 %414, %415
  %417 = add i64 %413, %416
  store i64 %417, ptr %0, align 8
  %418 = getelementptr inbounds nuw i8, ptr %405, i64 8
  %419 = load i64, ptr %418, align 1
  %420 = tail call noundef i64 @llvm.bswap.i64(i64 %419)
  %421 = getelementptr inbounds nuw i8, ptr %407, i64 8
  %422 = load i64, ptr %421, align 1
  %423 = tail call noundef i64 @llvm.bswap.i64(i64 %422)
  %424 = xor i64 %423, %420
  %425 = add i64 %402, %420
  %426 = and i64 %424, 4294967295
  %427 = lshr i64 %424, 32
  %428 = mul nuw i64 %426, %427
  %429 = add i64 %425, %428
  store i64 %429, ptr %379, align 8
  %430 = getelementptr inbounds nuw i8, ptr %405, i64 16
  %431 = load i64, ptr %430, align 1
  %432 = tail call noundef i64 @llvm.bswap.i64(i64 %431)
  %433 = getelementptr inbounds nuw i8, ptr %407, i64 16
  %434 = load i64, ptr %433, align 1
  %435 = tail call noundef i64 @llvm.bswap.i64(i64 %434)
  %436 = xor i64 %435, %432
  %437 = add i64 %401, %432
  %438 = and i64 %436, 4294967295
  %439 = lshr i64 %436, 32
  %440 = mul nuw i64 %438, %439
  %441 = add i64 %437, %440
  store i64 %441, ptr %381, align 8
  %442 = getelementptr inbounds nuw i8, ptr %405, i64 24
  %443 = load i64, ptr %442, align 1
  %444 = tail call noundef i64 @llvm.bswap.i64(i64 %443)
  %445 = getelementptr inbounds nuw i8, ptr %407, i64 24
  %446 = load i64, ptr %445, align 1
  %447 = tail call noundef i64 @llvm.bswap.i64(i64 %446)
  %448 = xor i64 %447, %444
  %449 = add i64 %400, %444
  %450 = and i64 %448, 4294967295
  %451 = lshr i64 %448, 32
  %452 = mul nuw i64 %450, %451
  %453 = add i64 %449, %452
  store i64 %453, ptr %383, align 8
  %454 = getelementptr inbounds nuw i8, ptr %405, i64 32
  %455 = load i64, ptr %454, align 1
  %456 = tail call noundef i64 @llvm.bswap.i64(i64 %455)
  %457 = getelementptr inbounds nuw i8, ptr %407, i64 32
  %458 = load i64, ptr %457, align 1
  %459 = tail call noundef i64 @llvm.bswap.i64(i64 %458)
  %460 = xor i64 %459, %456
  %461 = add i64 %399, %456
  %462 = and i64 %460, 4294967295
  %463 = lshr i64 %460, 32
  %464 = mul nuw i64 %462, %463
  %465 = add i64 %461, %464
  store i64 %465, ptr %385, align 8
  %466 = getelementptr inbounds nuw i8, ptr %405, i64 40
  %467 = load i64, ptr %466, align 1
  %468 = tail call noundef i64 @llvm.bswap.i64(i64 %467)
  %469 = getelementptr inbounds nuw i8, ptr %407, i64 40
  %470 = load i64, ptr %469, align 1
  %471 = tail call noundef i64 @llvm.bswap.i64(i64 %470)
  %472 = xor i64 %471, %468
  %473 = add i64 %398, %468
  %474 = and i64 %472, 4294967295
  %475 = lshr i64 %472, 32
  %476 = mul nuw i64 %474, %475
  %477 = add i64 %473, %476
  store i64 %477, ptr %387, align 8
  %478 = getelementptr inbounds nuw i8, ptr %405, i64 48
  %479 = load i64, ptr %478, align 1
  %480 = tail call noundef i64 @llvm.bswap.i64(i64 %479)
  %481 = getelementptr inbounds nuw i8, ptr %407, i64 48
  %482 = load i64, ptr %481, align 1
  %483 = tail call noundef i64 @llvm.bswap.i64(i64 %482)
  %484 = xor i64 %483, %480
  %485 = add i64 %396, %480
  %486 = and i64 %484, 4294967295
  %487 = lshr i64 %484, 32
  %488 = mul nuw i64 %486, %487
  %489 = add i64 %485, %488
  store i64 %489, ptr %389, align 8
  %490 = getelementptr inbounds nuw i8, ptr %405, i64 56
  %491 = load i64, ptr %490, align 1
  %492 = tail call noundef i64 @llvm.bswap.i64(i64 %491)
  %493 = getelementptr inbounds nuw i8, ptr %407, i64 56
  %494 = load i64, ptr %493, align 1
  %495 = tail call noundef i64 @llvm.bswap.i64(i64 %494)
  %496 = xor i64 %495, %492
  %497 = add i64 %395, %492
  %498 = and i64 %496, 4294967295
  %499 = lshr i64 %496, 32
  %500 = mul nuw i64 %498, %499
  %501 = add i64 %497, %500
  store i64 %501, ptr %390, align 8
  %502 = add nuw nsw i64 %403, 1
  %503 = icmp eq i64 %502, 4
  br i1 %503, label %504, label %394

504:                                              ; preds = %394
  %505 = load i32, ptr %29, align 4
  %506 = add i32 %505, 4
  br label %507

507:                                              ; preds = %376, %504
  %508 = phi i32 [ %506, %504 ], [ %377, %376 ]
  store i32 %508, ptr %29, align 4
  store i32 0, ptr %10, align 64
  br label %509

509:                                              ; preds = %507, %21
  %510 = phi ptr [ %28, %507 ], [ %1, %21 ]
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 256
  %512 = icmp ugt ptr %511, %6
  br i1 %512, label %1001, label %513

513:                                              ; preds = %509
  %514 = getelementptr inbounds i8, ptr %6, i64 -256
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %517 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %519 = load i32, ptr %515, align 4
  %520 = load i32, ptr %516, align 4
  %521 = load ptr, ptr %517, align 16
  %522 = load i32, ptr %518, align 4
  %523 = zext i32 %522 to i64
  %524 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %527 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %528 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %529 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %534 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %536 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %537 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %538 = getelementptr inbounds nuw i8, ptr %521, i64 %523
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 8
  %540 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %541 = getelementptr inbounds nuw i8, ptr %538, i64 16
  %542 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %543 = getelementptr inbounds nuw i8, ptr %538, i64 24
  %544 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %545 = getelementptr inbounds nuw i8, ptr %538, i64 32
  %546 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %547 = getelementptr inbounds nuw i8, ptr %538, i64 40
  %548 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %549 = getelementptr inbounds nuw i8, ptr %538, i64 48
  %550 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %551 = getelementptr inbounds nuw i8, ptr %538, i64 56
  %552 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %553 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %554 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %555 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %556 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %557 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %558 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %559 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %560

560:                                              ; preds = %997, %513
  %561 = phi i32 [ %519, %513 ], [ %998, %997 ]
  %562 = phi ptr [ %510, %513 ], [ %999, %997 ]
  %563 = sub i32 %520, %561
  %564 = zext i32 %563 to i64
  %565 = icmp ugt i32 %563, 4
  %566 = shl i32 %561, 3
  %567 = zext i32 %566 to i64
  %568 = getelementptr inbounds nuw i8, ptr %521, i64 %567
  br i1 %565, label %875, label %569

569:                                              ; preds = %560
  %570 = icmp eq i32 %520, %561
  br i1 %570, label %571, label %579

571:                                              ; preds = %569
  %572 = load i64, ptr %531, align 8
  %573 = load i64, ptr %532, align 8
  %574 = load i64, ptr %533, align 8
  %575 = load i64, ptr %534, align 8
  %576 = load i64, ptr %535, align 8
  %577 = load i64, ptr %536, align 8
  %578 = load i64, ptr %537, align 8
  br label %699

579:                                              ; preds = %569
  %580 = tail call i64 @llvm.umax.i64(i64 %564, i64 1)
  %581 = load i64, ptr %524, align 8
  %582 = load i64, ptr %525, align 8
  %583 = load i64, ptr %526, align 8
  %584 = load i64, ptr %527, align 8
  %585 = load i64, ptr %528, align 8
  %586 = load i64, ptr %0, align 8
  %587 = load i64, ptr %529, align 8
  %588 = load i64, ptr %530, align 8
  br label %589

589:                                              ; preds = %579, %589
  %590 = phi i64 [ %696, %589 ], [ %588, %579 ]
  %591 = phi i64 [ %684, %589 ], [ %587, %579 ]
  %592 = phi i64 [ %612, %589 ], [ %586, %579 ]
  %593 = phi i64 [ %672, %589 ], [ %585, %579 ]
  %594 = phi i64 [ %660, %589 ], [ %584, %579 ]
  %595 = phi i64 [ %648, %589 ], [ %583, %579 ]
  %596 = phi i64 [ %636, %589 ], [ %582, %579 ]
  %597 = phi i64 [ %624, %589 ], [ %581, %579 ]
  %598 = phi i64 [ %697, %589 ], [ 0, %579 ]
  %599 = shl i64 %598, 6
  %600 = getelementptr inbounds nuw i8, ptr %562, i64 %599
  %601 = shl i64 %598, 3
  %602 = getelementptr inbounds nuw i8, ptr %568, i64 %601
  %603 = load i64, ptr %600, align 1
  %604 = tail call noundef i64 @llvm.bswap.i64(i64 %603)
  %605 = load i64, ptr %602, align 1
  %606 = tail call noundef i64 @llvm.bswap.i64(i64 %605)
  %607 = xor i64 %606, %604
  %608 = add i64 %592, %604
  %609 = and i64 %607, 4294967295
  %610 = lshr i64 %607, 32
  %611 = mul nuw i64 %609, %610
  %612 = add i64 %608, %611
  store i64 %612, ptr %0, align 8
  %613 = getelementptr inbounds nuw i8, ptr %600, i64 8
  %614 = load i64, ptr %613, align 1
  %615 = tail call noundef i64 @llvm.bswap.i64(i64 %614)
  %616 = getelementptr inbounds nuw i8, ptr %602, i64 8
  %617 = load i64, ptr %616, align 1
  %618 = tail call noundef i64 @llvm.bswap.i64(i64 %617)
  %619 = xor i64 %618, %615
  %620 = add i64 %597, %615
  %621 = and i64 %619, 4294967295
  %622 = lshr i64 %619, 32
  %623 = mul nuw i64 %621, %622
  %624 = add i64 %620, %623
  store i64 %624, ptr %524, align 8
  %625 = getelementptr inbounds nuw i8, ptr %600, i64 16
  %626 = load i64, ptr %625, align 1
  %627 = tail call noundef i64 @llvm.bswap.i64(i64 %626)
  %628 = getelementptr inbounds nuw i8, ptr %602, i64 16
  %629 = load i64, ptr %628, align 1
  %630 = tail call noundef i64 @llvm.bswap.i64(i64 %629)
  %631 = xor i64 %630, %627
  %632 = add i64 %596, %627
  %633 = and i64 %631, 4294967295
  %634 = lshr i64 %631, 32
  %635 = mul nuw i64 %633, %634
  %636 = add i64 %632, %635
  store i64 %636, ptr %525, align 8
  %637 = getelementptr inbounds nuw i8, ptr %600, i64 24
  %638 = load i64, ptr %637, align 1
  %639 = tail call noundef i64 @llvm.bswap.i64(i64 %638)
  %640 = getelementptr inbounds nuw i8, ptr %602, i64 24
  %641 = load i64, ptr %640, align 1
  %642 = tail call noundef i64 @llvm.bswap.i64(i64 %641)
  %643 = xor i64 %642, %639
  %644 = add i64 %595, %639
  %645 = and i64 %643, 4294967295
  %646 = lshr i64 %643, 32
  %647 = mul nuw i64 %645, %646
  %648 = add i64 %644, %647
  store i64 %648, ptr %526, align 8
  %649 = getelementptr inbounds nuw i8, ptr %600, i64 32
  %650 = load i64, ptr %649, align 1
  %651 = tail call noundef i64 @llvm.bswap.i64(i64 %650)
  %652 = getelementptr inbounds nuw i8, ptr %602, i64 32
  %653 = load i64, ptr %652, align 1
  %654 = tail call noundef i64 @llvm.bswap.i64(i64 %653)
  %655 = xor i64 %654, %651
  %656 = add i64 %594, %651
  %657 = and i64 %655, 4294967295
  %658 = lshr i64 %655, 32
  %659 = mul nuw i64 %657, %658
  %660 = add i64 %656, %659
  store i64 %660, ptr %527, align 8
  %661 = getelementptr inbounds nuw i8, ptr %600, i64 40
  %662 = load i64, ptr %661, align 1
  %663 = tail call noundef i64 @llvm.bswap.i64(i64 %662)
  %664 = getelementptr inbounds nuw i8, ptr %602, i64 40
  %665 = load i64, ptr %664, align 1
  %666 = tail call noundef i64 @llvm.bswap.i64(i64 %665)
  %667 = xor i64 %666, %663
  %668 = add i64 %593, %663
  %669 = and i64 %667, 4294967295
  %670 = lshr i64 %667, 32
  %671 = mul nuw i64 %669, %670
  %672 = add i64 %668, %671
  store i64 %672, ptr %528, align 8
  %673 = getelementptr inbounds nuw i8, ptr %600, i64 48
  %674 = load i64, ptr %673, align 1
  %675 = tail call noundef i64 @llvm.bswap.i64(i64 %674)
  %676 = getelementptr inbounds nuw i8, ptr %602, i64 48
  %677 = load i64, ptr %676, align 1
  %678 = tail call noundef i64 @llvm.bswap.i64(i64 %677)
  %679 = xor i64 %678, %675
  %680 = add i64 %591, %675
  %681 = and i64 %679, 4294967295
  %682 = lshr i64 %679, 32
  %683 = mul nuw i64 %681, %682
  %684 = add i64 %680, %683
  store i64 %684, ptr %529, align 8
  %685 = getelementptr inbounds nuw i8, ptr %600, i64 56
  %686 = load i64, ptr %685, align 1
  %687 = tail call noundef i64 @llvm.bswap.i64(i64 %686)
  %688 = getelementptr inbounds nuw i8, ptr %602, i64 56
  %689 = load i64, ptr %688, align 1
  %690 = tail call noundef i64 @llvm.bswap.i64(i64 %689)
  %691 = xor i64 %690, %687
  %692 = add i64 %590, %687
  %693 = and i64 %691, 4294967295
  %694 = lshr i64 %691, 32
  %695 = mul nuw i64 %693, %694
  %696 = add i64 %692, %695
  store i64 %696, ptr %530, align 8
  %697 = add nuw nsw i64 %598, 1
  %698 = icmp eq i64 %697, %580
  br i1 %698, label %699, label %589

699:                                              ; preds = %589, %571
  %700 = phi i64 [ %578, %571 ], [ %696, %589 ]
  %701 = phi i64 [ %577, %571 ], [ %684, %589 ]
  %702 = phi i64 [ %576, %571 ], [ %672, %589 ]
  %703 = phi i64 [ %575, %571 ], [ %660, %589 ]
  %704 = phi i64 [ %574, %571 ], [ %648, %589 ]
  %705 = phi i64 [ %573, %571 ], [ %636, %589 ]
  %706 = phi i64 [ %572, %571 ], [ %624, %589 ]
  %707 = load i64, ptr %538, align 1
  %708 = tail call noundef i64 @llvm.bswap.i64(i64 %707)
  %709 = load i64, ptr %0, align 8
  %710 = lshr i64 %709, 47
  %711 = xor i64 %708, %710
  %712 = xor i64 %711, %709
  %713 = mul i64 %712, 2654435761
  store i64 %713, ptr %0, align 8
  %714 = load i64, ptr %539, align 1
  %715 = tail call noundef i64 @llvm.bswap.i64(i64 %714)
  %716 = lshr i64 %706, 47
  %717 = xor i64 %715, %716
  %718 = xor i64 %717, %706
  %719 = mul i64 %718, 2654435761
  store i64 %719, ptr %540, align 8
  %720 = load i64, ptr %541, align 1
  %721 = tail call noundef i64 @llvm.bswap.i64(i64 %720)
  %722 = lshr i64 %705, 47
  %723 = xor i64 %721, %722
  %724 = xor i64 %723, %705
  %725 = mul i64 %724, 2654435761
  store i64 %725, ptr %542, align 8
  %726 = load i64, ptr %543, align 1
  %727 = tail call noundef i64 @llvm.bswap.i64(i64 %726)
  %728 = lshr i64 %704, 47
  %729 = xor i64 %727, %728
  %730 = xor i64 %729, %704
  %731 = mul i64 %730, 2654435761
  store i64 %731, ptr %544, align 8
  %732 = load i64, ptr %545, align 1
  %733 = tail call noundef i64 @llvm.bswap.i64(i64 %732)
  %734 = lshr i64 %703, 47
  %735 = xor i64 %733, %734
  %736 = xor i64 %735, %703
  %737 = mul i64 %736, 2654435761
  store i64 %737, ptr %546, align 8
  %738 = load i64, ptr %547, align 1
  %739 = tail call noundef i64 @llvm.bswap.i64(i64 %738)
  %740 = lshr i64 %702, 47
  %741 = xor i64 %739, %740
  %742 = xor i64 %741, %702
  %743 = mul i64 %742, 2654435761
  store i64 %743, ptr %548, align 8
  %744 = load i64, ptr %549, align 1
  %745 = tail call noundef i64 @llvm.bswap.i64(i64 %744)
  %746 = lshr i64 %701, 47
  %747 = xor i64 %745, %746
  %748 = xor i64 %747, %701
  %749 = mul i64 %748, 2654435761
  store i64 %749, ptr %550, align 8
  %750 = load i64, ptr %551, align 1
  %751 = tail call noundef i64 @llvm.bswap.i64(i64 %750)
  %752 = lshr i64 %700, 47
  %753 = xor i64 %751, %752
  %754 = xor i64 %753, %700
  %755 = mul i64 %754, 2654435761
  store i64 %755, ptr %552, align 8
  %756 = shl nuw nsw i64 %564, 6
  %757 = getelementptr inbounds nuw i8, ptr %562, i64 %756
  %758 = sub nsw i64 4, %564
  %759 = icmp eq i32 %563, 4
  br i1 %759, label %873, label %760

760:                                              ; preds = %699
  %761 = load i64, ptr %0, align 8
  %762 = load i64, ptr %552, align 8
  br label %763

763:                                              ; preds = %760, %763
  %764 = phi i64 [ %870, %763 ], [ %762, %760 ]
  %765 = phi i64 [ %786, %763 ], [ %761, %760 ]
  %766 = phi i64 [ %858, %763 ], [ %749, %760 ]
  %767 = phi i64 [ %846, %763 ], [ %743, %760 ]
  %768 = phi i64 [ %834, %763 ], [ %737, %760 ]
  %769 = phi i64 [ %822, %763 ], [ %731, %760 ]
  %770 = phi i64 [ %810, %763 ], [ %725, %760 ]
  %771 = phi i64 [ %798, %763 ], [ %719, %760 ]
  %772 = phi i64 [ %871, %763 ], [ 0, %760 ]
  %773 = shl i64 %772, 6
  %774 = getelementptr inbounds nuw i8, ptr %757, i64 %773
  %775 = shl i64 %772, 3
  %776 = getelementptr inbounds nuw i8, ptr %521, i64 %775
  %777 = load i64, ptr %774, align 1
  %778 = tail call noundef i64 @llvm.bswap.i64(i64 %777)
  %779 = load i64, ptr %776, align 1
  %780 = tail call noundef i64 @llvm.bswap.i64(i64 %779)
  %781 = xor i64 %780, %778
  %782 = add i64 %765, %778
  %783 = and i64 %781, 4294967295
  %784 = lshr i64 %781, 32
  %785 = mul nuw i64 %783, %784
  %786 = add i64 %782, %785
  store i64 %786, ptr %0, align 8
  %787 = getelementptr inbounds nuw i8, ptr %774, i64 8
  %788 = load i64, ptr %787, align 1
  %789 = tail call noundef i64 @llvm.bswap.i64(i64 %788)
  %790 = getelementptr inbounds nuw i8, ptr %776, i64 8
  %791 = load i64, ptr %790, align 1
  %792 = tail call noundef i64 @llvm.bswap.i64(i64 %791)
  %793 = xor i64 %792, %789
  %794 = add i64 %771, %789
  %795 = and i64 %793, 4294967295
  %796 = lshr i64 %793, 32
  %797 = mul nuw i64 %795, %796
  %798 = add i64 %794, %797
  store i64 %798, ptr %540, align 8
  %799 = getelementptr inbounds nuw i8, ptr %774, i64 16
  %800 = load i64, ptr %799, align 1
  %801 = tail call noundef i64 @llvm.bswap.i64(i64 %800)
  %802 = getelementptr inbounds nuw i8, ptr %776, i64 16
  %803 = load i64, ptr %802, align 1
  %804 = tail call noundef i64 @llvm.bswap.i64(i64 %803)
  %805 = xor i64 %804, %801
  %806 = add i64 %770, %801
  %807 = and i64 %805, 4294967295
  %808 = lshr i64 %805, 32
  %809 = mul nuw i64 %807, %808
  %810 = add i64 %806, %809
  store i64 %810, ptr %542, align 8
  %811 = getelementptr inbounds nuw i8, ptr %774, i64 24
  %812 = load i64, ptr %811, align 1
  %813 = tail call noundef i64 @llvm.bswap.i64(i64 %812)
  %814 = getelementptr inbounds nuw i8, ptr %776, i64 24
  %815 = load i64, ptr %814, align 1
  %816 = tail call noundef i64 @llvm.bswap.i64(i64 %815)
  %817 = xor i64 %816, %813
  %818 = add i64 %769, %813
  %819 = and i64 %817, 4294967295
  %820 = lshr i64 %817, 32
  %821 = mul nuw i64 %819, %820
  %822 = add i64 %818, %821
  store i64 %822, ptr %544, align 8
  %823 = getelementptr inbounds nuw i8, ptr %774, i64 32
  %824 = load i64, ptr %823, align 1
  %825 = tail call noundef i64 @llvm.bswap.i64(i64 %824)
  %826 = getelementptr inbounds nuw i8, ptr %776, i64 32
  %827 = load i64, ptr %826, align 1
  %828 = tail call noundef i64 @llvm.bswap.i64(i64 %827)
  %829 = xor i64 %828, %825
  %830 = add i64 %768, %825
  %831 = and i64 %829, 4294967295
  %832 = lshr i64 %829, 32
  %833 = mul nuw i64 %831, %832
  %834 = add i64 %830, %833
  store i64 %834, ptr %546, align 8
  %835 = getelementptr inbounds nuw i8, ptr %774, i64 40
  %836 = load i64, ptr %835, align 1
  %837 = tail call noundef i64 @llvm.bswap.i64(i64 %836)
  %838 = getelementptr inbounds nuw i8, ptr %776, i64 40
  %839 = load i64, ptr %838, align 1
  %840 = tail call noundef i64 @llvm.bswap.i64(i64 %839)
  %841 = xor i64 %840, %837
  %842 = add i64 %767, %837
  %843 = and i64 %841, 4294967295
  %844 = lshr i64 %841, 32
  %845 = mul nuw i64 %843, %844
  %846 = add i64 %842, %845
  store i64 %846, ptr %548, align 8
  %847 = getelementptr inbounds nuw i8, ptr %774, i64 48
  %848 = load i64, ptr %847, align 1
  %849 = tail call noundef i64 @llvm.bswap.i64(i64 %848)
  %850 = getelementptr inbounds nuw i8, ptr %776, i64 48
  %851 = load i64, ptr %850, align 1
  %852 = tail call noundef i64 @llvm.bswap.i64(i64 %851)
  %853 = xor i64 %852, %849
  %854 = add i64 %766, %849
  %855 = and i64 %853, 4294967295
  %856 = lshr i64 %853, 32
  %857 = mul nuw i64 %855, %856
  %858 = add i64 %854, %857
  store i64 %858, ptr %550, align 8
  %859 = getelementptr inbounds nuw i8, ptr %774, i64 56
  %860 = load i64, ptr %859, align 1
  %861 = tail call noundef i64 @llvm.bswap.i64(i64 %860)
  %862 = getelementptr inbounds nuw i8, ptr %776, i64 56
  %863 = load i64, ptr %862, align 1
  %864 = tail call noundef i64 @llvm.bswap.i64(i64 %863)
  %865 = xor i64 %864, %861
  %866 = add i64 %764, %861
  %867 = and i64 %865, 4294967295
  %868 = lshr i64 %865, 32
  %869 = mul nuw i64 %867, %868
  %870 = add i64 %866, %869
  store i64 %870, ptr %552, align 8
  %871 = add nuw i64 %772, 1
  %872 = icmp eq i64 %871, %758
  br i1 %872, label %873, label %763

873:                                              ; preds = %763, %699
  %874 = trunc nuw nsw i64 %758 to i32
  br label %997

875:                                              ; preds = %560
  %876 = load i64, ptr %553, align 8
  %877 = load i64, ptr %554, align 8
  %878 = load i64, ptr %555, align 8
  %879 = load i64, ptr %556, align 8
  %880 = load i64, ptr %557, align 8
  %881 = load i64, ptr %0, align 8
  %882 = load i64, ptr %558, align 8
  %883 = load i64, ptr %559, align 8
  br label %884

884:                                              ; preds = %875, %884
  %885 = phi i64 [ %883, %875 ], [ %991, %884 ]
  %886 = phi i64 [ %882, %875 ], [ %979, %884 ]
  %887 = phi i64 [ %881, %875 ], [ %907, %884 ]
  %888 = phi i64 [ %880, %875 ], [ %967, %884 ]
  %889 = phi i64 [ %879, %875 ], [ %955, %884 ]
  %890 = phi i64 [ %878, %875 ], [ %943, %884 ]
  %891 = phi i64 [ %877, %875 ], [ %931, %884 ]
  %892 = phi i64 [ %876, %875 ], [ %919, %884 ]
  %893 = phi i64 [ 0, %875 ], [ %992, %884 ]
  %894 = shl nuw nsw i64 %893, 6
  %895 = getelementptr inbounds nuw i8, ptr %562, i64 %894
  %896 = shl nuw nsw i64 %893, 3
  %897 = getelementptr inbounds nuw i8, ptr %568, i64 %896
  %898 = load i64, ptr %895, align 1
  %899 = tail call noundef i64 @llvm.bswap.i64(i64 %898)
  %900 = load i64, ptr %897, align 1
  %901 = tail call noundef i64 @llvm.bswap.i64(i64 %900)
  %902 = xor i64 %901, %899
  %903 = add i64 %887, %899
  %904 = and i64 %902, 4294967295
  %905 = lshr i64 %902, 32
  %906 = mul nuw i64 %904, %905
  %907 = add i64 %903, %906
  store i64 %907, ptr %0, align 8
  %908 = getelementptr inbounds nuw i8, ptr %895, i64 8
  %909 = load i64, ptr %908, align 1
  %910 = tail call noundef i64 @llvm.bswap.i64(i64 %909)
  %911 = getelementptr inbounds nuw i8, ptr %897, i64 8
  %912 = load i64, ptr %911, align 1
  %913 = tail call noundef i64 @llvm.bswap.i64(i64 %912)
  %914 = xor i64 %913, %910
  %915 = add i64 %892, %910
  %916 = and i64 %914, 4294967295
  %917 = lshr i64 %914, 32
  %918 = mul nuw i64 %916, %917
  %919 = add i64 %915, %918
  store i64 %919, ptr %553, align 8
  %920 = getelementptr inbounds nuw i8, ptr %895, i64 16
  %921 = load i64, ptr %920, align 1
  %922 = tail call noundef i64 @llvm.bswap.i64(i64 %921)
  %923 = getelementptr inbounds nuw i8, ptr %897, i64 16
  %924 = load i64, ptr %923, align 1
  %925 = tail call noundef i64 @llvm.bswap.i64(i64 %924)
  %926 = xor i64 %925, %922
  %927 = add i64 %891, %922
  %928 = and i64 %926, 4294967295
  %929 = lshr i64 %926, 32
  %930 = mul nuw i64 %928, %929
  %931 = add i64 %927, %930
  store i64 %931, ptr %554, align 8
  %932 = getelementptr inbounds nuw i8, ptr %895, i64 24
  %933 = load i64, ptr %932, align 1
  %934 = tail call noundef i64 @llvm.bswap.i64(i64 %933)
  %935 = getelementptr inbounds nuw i8, ptr %897, i64 24
  %936 = load i64, ptr %935, align 1
  %937 = tail call noundef i64 @llvm.bswap.i64(i64 %936)
  %938 = xor i64 %937, %934
  %939 = add i64 %890, %934
  %940 = and i64 %938, 4294967295
  %941 = lshr i64 %938, 32
  %942 = mul nuw i64 %940, %941
  %943 = add i64 %939, %942
  store i64 %943, ptr %555, align 8
  %944 = getelementptr inbounds nuw i8, ptr %895, i64 32
  %945 = load i64, ptr %944, align 1
  %946 = tail call noundef i64 @llvm.bswap.i64(i64 %945)
  %947 = getelementptr inbounds nuw i8, ptr %897, i64 32
  %948 = load i64, ptr %947, align 1
  %949 = tail call noundef i64 @llvm.bswap.i64(i64 %948)
  %950 = xor i64 %949, %946
  %951 = add i64 %889, %946
  %952 = and i64 %950, 4294967295
  %953 = lshr i64 %950, 32
  %954 = mul nuw i64 %952, %953
  %955 = add i64 %951, %954
  store i64 %955, ptr %556, align 8
  %956 = getelementptr inbounds nuw i8, ptr %895, i64 40
  %957 = load i64, ptr %956, align 1
  %958 = tail call noundef i64 @llvm.bswap.i64(i64 %957)
  %959 = getelementptr inbounds nuw i8, ptr %897, i64 40
  %960 = load i64, ptr %959, align 1
  %961 = tail call noundef i64 @llvm.bswap.i64(i64 %960)
  %962 = xor i64 %961, %958
  %963 = add i64 %888, %958
  %964 = and i64 %962, 4294967295
  %965 = lshr i64 %962, 32
  %966 = mul nuw i64 %964, %965
  %967 = add i64 %963, %966
  store i64 %967, ptr %557, align 8
  %968 = getelementptr inbounds nuw i8, ptr %895, i64 48
  %969 = load i64, ptr %968, align 1
  %970 = tail call noundef i64 @llvm.bswap.i64(i64 %969)
  %971 = getelementptr inbounds nuw i8, ptr %897, i64 48
  %972 = load i64, ptr %971, align 1
  %973 = tail call noundef i64 @llvm.bswap.i64(i64 %972)
  %974 = xor i64 %973, %970
  %975 = add i64 %886, %970
  %976 = and i64 %974, 4294967295
  %977 = lshr i64 %974, 32
  %978 = mul nuw i64 %976, %977
  %979 = add i64 %975, %978
  store i64 %979, ptr %558, align 8
  %980 = getelementptr inbounds nuw i8, ptr %895, i64 56
  %981 = load i64, ptr %980, align 1
  %982 = tail call noundef i64 @llvm.bswap.i64(i64 %981)
  %983 = getelementptr inbounds nuw i8, ptr %897, i64 56
  %984 = load i64, ptr %983, align 1
  %985 = tail call noundef i64 @llvm.bswap.i64(i64 %984)
  %986 = xor i64 %985, %982
  %987 = add i64 %885, %982
  %988 = and i64 %986, 4294967295
  %989 = lshr i64 %986, 32
  %990 = mul nuw i64 %988, %989
  %991 = add i64 %987, %990
  store i64 %991, ptr %559, align 8
  %992 = add nuw nsw i64 %893, 1
  %993 = icmp eq i64 %992, 4
  br i1 %993, label %994, label %884

994:                                              ; preds = %884
  %995 = load i32, ptr %515, align 4
  %996 = add i32 %995, 4
  br label %997

997:                                              ; preds = %873, %994
  %998 = phi i32 [ %996, %994 ], [ %874, %873 ]
  store i32 %998, ptr %515, align 4
  %999 = getelementptr inbounds nuw i8, ptr %562, i64 256
  %1000 = icmp ugt ptr %999, %514
  br i1 %1000, label %1001, label %560

1001:                                             ; preds = %997, %509
  %1002 = phi ptr [ %510, %509 ], [ %999, %997 ]
  %1003 = icmp ult ptr %1002, %6
  br i1 %1003, label %1004, label %1012

1004:                                             ; preds = %1001
  %1005 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %1006 = ptrtoint ptr %6 to i64
  %1007 = ptrtoint ptr %1002 to i64
  %1008 = sub i64 %1006, %1007
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1005, ptr nonnull readonly align 1 %1002, i64 %1008, i1 false)
  %1009 = trunc i64 %1008 to i32
  br label %1010

1010:                                             ; preds = %1004, %15
  %1011 = phi i32 [ %20, %15 ], [ %1009, %1004 ]
  store i32 %1011, ptr %10, align 64
  br label %1012

1012:                                             ; preds = %1010, %3, %1001
  %1013 = phi i32 [ 1, %3 ], [ 0, %1001 ], [ 0, %1010 ]
  ret i32 %1013
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @XXH3_64bits_digest(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = alloca [64 x i8], align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %4 = load i64, ptr %3, align 8
  %5 = icmp ugt i64 %4, 240
  br i1 %5, label %6, label %746

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load i64, ptr %10, align 16
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %15 = load i64, ptr %14, align 32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %19 = load i64, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %23 = load i32, ptr %22, align 64
  %24 = icmp ugt i32 %23, 63
  br i1 %24, label %25, label %558

25:                                               ; preds = %6
  %26 = lshr i32 %23, 6
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = sub i32 %31, %29
  %39 = zext i32 %38 to i64
  %40 = icmp ult i32 %26, %38
  %41 = shl i32 %29, 3
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %34, i64 %42
  br i1 %40, label %337, label %44

44:                                               ; preds = %25
  %45 = icmp eq i32 %31, %29
  br i1 %45, label %158, label %46

46:                                               ; preds = %44
  %47 = tail call i64 @llvm.umax.i64(i64 %39, i64 1)
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ %21, %46 ], [ %155, %48 ]
  %50 = phi i64 [ %19, %46 ], [ %143, %48 ]
  %51 = phi i64 [ %17, %46 ], [ %131, %48 ]
  %52 = phi i64 [ %15, %46 ], [ %119, %48 ]
  %53 = phi i64 [ %13, %46 ], [ %107, %48 ]
  %54 = phi i64 [ %11, %46 ], [ %95, %48 ]
  %55 = phi i64 [ %9, %46 ], [ %83, %48 ]
  %56 = phi i64 [ %7, %46 ], [ %71, %48 ]
  %57 = phi i64 [ 0, %46 ], [ %156, %48 ]
  %58 = shl i64 %57, 6
  %59 = getelementptr inbounds nuw i8, ptr %32, i64 %58
  %60 = shl i64 %57, 3
  %61 = getelementptr inbounds nuw i8, ptr %43, i64 %60
  %62 = load i64, ptr %59, align 1
  %63 = tail call noundef i64 @llvm.bswap.i64(i64 %62)
  %64 = load i64, ptr %61, align 1
  %65 = tail call noundef i64 @llvm.bswap.i64(i64 %64)
  %66 = xor i64 %65, %63
  %67 = add i64 %56, %63
  %68 = and i64 %66, 4294967295
  %69 = lshr i64 %66, 32
  %70 = mul nuw i64 %68, %69
  %71 = add i64 %67, %70
  %72 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %73 = load i64, ptr %72, align 1
  %74 = tail call noundef i64 @llvm.bswap.i64(i64 %73)
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %76 = load i64, ptr %75, align 1
  %77 = tail call noundef i64 @llvm.bswap.i64(i64 %76)
  %78 = xor i64 %77, %74
  %79 = add i64 %55, %74
  %80 = and i64 %78, 4294967295
  %81 = lshr i64 %78, 32
  %82 = mul nuw i64 %80, %81
  %83 = add i64 %79, %82
  %84 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %85 = load i64, ptr %84, align 1
  %86 = tail call noundef i64 @llvm.bswap.i64(i64 %85)
  %87 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %88 = load i64, ptr %87, align 1
  %89 = tail call noundef i64 @llvm.bswap.i64(i64 %88)
  %90 = xor i64 %89, %86
  %91 = add i64 %54, %86
  %92 = and i64 %90, 4294967295
  %93 = lshr i64 %90, 32
  %94 = mul nuw i64 %92, %93
  %95 = add i64 %91, %94
  %96 = getelementptr inbounds nuw i8, ptr %59, i64 24
  %97 = load i64, ptr %96, align 1
  %98 = tail call noundef i64 @llvm.bswap.i64(i64 %97)
  %99 = getelementptr inbounds nuw i8, ptr %61, i64 24
  %100 = load i64, ptr %99, align 1
  %101 = tail call noundef i64 @llvm.bswap.i64(i64 %100)
  %102 = xor i64 %101, %98
  %103 = add i64 %53, %98
  %104 = and i64 %102, 4294967295
  %105 = lshr i64 %102, 32
  %106 = mul nuw i64 %104, %105
  %107 = add i64 %103, %106
  %108 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %109 = load i64, ptr %108, align 1
  %110 = tail call noundef i64 @llvm.bswap.i64(i64 %109)
  %111 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %112 = load i64, ptr %111, align 1
  %113 = tail call noundef i64 @llvm.bswap.i64(i64 %112)
  %114 = xor i64 %113, %110
  %115 = add i64 %52, %110
  %116 = and i64 %114, 4294967295
  %117 = lshr i64 %114, 32
  %118 = mul nuw i64 %116, %117
  %119 = add i64 %115, %118
  %120 = getelementptr inbounds nuw i8, ptr %59, i64 40
  %121 = load i64, ptr %120, align 1
  %122 = tail call noundef i64 @llvm.bswap.i64(i64 %121)
  %123 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %124 = load i64, ptr %123, align 1
  %125 = tail call noundef i64 @llvm.bswap.i64(i64 %124)
  %126 = xor i64 %125, %122
  %127 = add i64 %51, %122
  %128 = and i64 %126, 4294967295
  %129 = lshr i64 %126, 32
  %130 = mul nuw i64 %128, %129
  %131 = add i64 %127, %130
  %132 = getelementptr inbounds nuw i8, ptr %59, i64 48
  %133 = load i64, ptr %132, align 1
  %134 = tail call noundef i64 @llvm.bswap.i64(i64 %133)
  %135 = getelementptr inbounds nuw i8, ptr %61, i64 48
  %136 = load i64, ptr %135, align 1
  %137 = tail call noundef i64 @llvm.bswap.i64(i64 %136)
  %138 = xor i64 %137, %134
  %139 = add i64 %50, %134
  %140 = and i64 %138, 4294967295
  %141 = lshr i64 %138, 32
  %142 = mul nuw i64 %140, %141
  %143 = add i64 %139, %142
  %144 = getelementptr inbounds nuw i8, ptr %59, i64 56
  %145 = load i64, ptr %144, align 1
  %146 = tail call noundef i64 @llvm.bswap.i64(i64 %145)
  %147 = getelementptr inbounds nuw i8, ptr %61, i64 56
  %148 = load i64, ptr %147, align 1
  %149 = tail call noundef i64 @llvm.bswap.i64(i64 %148)
  %150 = xor i64 %149, %146
  %151 = add i64 %49, %146
  %152 = and i64 %150, 4294967295
  %153 = lshr i64 %150, 32
  %154 = mul nuw i64 %152, %153
  %155 = add i64 %151, %154
  %156 = add nuw nsw i64 %57, 1
  %157 = icmp eq i64 %156, %47
  br i1 %157, label %158, label %48

158:                                              ; preds = %48, %44
  %159 = phi i64 [ %21, %44 ], [ %155, %48 ]
  %160 = phi i64 [ %19, %44 ], [ %143, %48 ]
  %161 = phi i64 [ %17, %44 ], [ %131, %48 ]
  %162 = phi i64 [ %15, %44 ], [ %119, %48 ]
  %163 = phi i64 [ %13, %44 ], [ %107, %48 ]
  %164 = phi i64 [ %11, %44 ], [ %95, %48 ]
  %165 = phi i64 [ %9, %44 ], [ %83, %48 ]
  %166 = phi i64 [ %7, %44 ], [ %71, %48 ]
  %167 = getelementptr inbounds nuw i8, ptr %34, i64 %37
  %168 = load i64, ptr %167, align 1
  %169 = tail call noundef i64 @llvm.bswap.i64(i64 %168)
  %170 = lshr i64 %166, 47
  %171 = xor i64 %169, %170
  %172 = xor i64 %171, %166
  %173 = mul i64 %172, 2654435761
  %174 = getelementptr inbounds nuw i8, ptr %167, i64 8
  %175 = load i64, ptr %174, align 1
  %176 = tail call noundef i64 @llvm.bswap.i64(i64 %175)
  %177 = lshr i64 %165, 47
  %178 = xor i64 %176, %177
  %179 = xor i64 %178, %165
  %180 = mul i64 %179, 2654435761
  %181 = getelementptr inbounds nuw i8, ptr %167, i64 16
  %182 = load i64, ptr %181, align 1
  %183 = tail call noundef i64 @llvm.bswap.i64(i64 %182)
  %184 = lshr i64 %164, 47
  %185 = xor i64 %183, %184
  %186 = xor i64 %185, %164
  %187 = mul i64 %186, 2654435761
  %188 = getelementptr inbounds nuw i8, ptr %167, i64 24
  %189 = load i64, ptr %188, align 1
  %190 = tail call noundef i64 @llvm.bswap.i64(i64 %189)
  %191 = lshr i64 %163, 47
  %192 = xor i64 %190, %191
  %193 = xor i64 %192, %163
  %194 = mul i64 %193, 2654435761
  %195 = getelementptr inbounds nuw i8, ptr %167, i64 32
  %196 = load i64, ptr %195, align 1
  %197 = tail call noundef i64 @llvm.bswap.i64(i64 %196)
  %198 = lshr i64 %162, 47
  %199 = xor i64 %197, %198
  %200 = xor i64 %199, %162
  %201 = mul i64 %200, 2654435761
  %202 = getelementptr inbounds nuw i8, ptr %167, i64 40
  %203 = load i64, ptr %202, align 1
  %204 = tail call noundef i64 @llvm.bswap.i64(i64 %203)
  %205 = lshr i64 %161, 47
  %206 = xor i64 %204, %205
  %207 = xor i64 %206, %161
  %208 = mul i64 %207, 2654435761
  %209 = getelementptr inbounds nuw i8, ptr %167, i64 48
  %210 = load i64, ptr %209, align 1
  %211 = tail call noundef i64 @llvm.bswap.i64(i64 %210)
  %212 = lshr i64 %160, 47
  %213 = xor i64 %211, %212
  %214 = xor i64 %213, %160
  %215 = mul i64 %214, 2654435761
  %216 = getelementptr inbounds nuw i8, ptr %167, i64 56
  %217 = load i64, ptr %216, align 1
  %218 = tail call noundef i64 @llvm.bswap.i64(i64 %217)
  %219 = lshr i64 %159, 47
  %220 = xor i64 %218, %219
  %221 = xor i64 %220, %159
  %222 = mul i64 %221, 2654435761
  %223 = shl nuw nsw i64 %39, 6
  %224 = getelementptr inbounds nuw i8, ptr %32, i64 %223
  %225 = sub nsw i64 %27, %39
  %226 = icmp eq i32 %26, %38
  br i1 %226, label %447, label %227

227:                                              ; preds = %158, %227
  %228 = phi i64 [ %334, %227 ], [ %222, %158 ]
  %229 = phi i64 [ %322, %227 ], [ %215, %158 ]
  %230 = phi i64 [ %310, %227 ], [ %208, %158 ]
  %231 = phi i64 [ %298, %227 ], [ %201, %158 ]
  %232 = phi i64 [ %286, %227 ], [ %194, %158 ]
  %233 = phi i64 [ %274, %227 ], [ %187, %158 ]
  %234 = phi i64 [ %262, %227 ], [ %180, %158 ]
  %235 = phi i64 [ %250, %227 ], [ %173, %158 ]
  %236 = phi i64 [ %335, %227 ], [ 0, %158 ]
  %237 = shl i64 %236, 6
  %238 = getelementptr inbounds nuw i8, ptr %224, i64 %237
  %239 = shl i64 %236, 3
  %240 = getelementptr inbounds nuw i8, ptr %34, i64 %239
  %241 = load i64, ptr %238, align 1
  %242 = tail call noundef i64 @llvm.bswap.i64(i64 %241)
  %243 = load i64, ptr %240, align 1
  %244 = tail call noundef i64 @llvm.bswap.i64(i64 %243)
  %245 = xor i64 %244, %242
  %246 = add i64 %235, %242
  %247 = and i64 %245, 4294967295
  %248 = lshr i64 %245, 32
  %249 = mul nuw i64 %247, %248
  %250 = add i64 %246, %249
  %251 = getelementptr inbounds nuw i8, ptr %238, i64 8
  %252 = load i64, ptr %251, align 1
  %253 = tail call noundef i64 @llvm.bswap.i64(i64 %252)
  %254 = getelementptr inbounds nuw i8, ptr %240, i64 8
  %255 = load i64, ptr %254, align 1
  %256 = tail call noundef i64 @llvm.bswap.i64(i64 %255)
  %257 = xor i64 %256, %253
  %258 = add i64 %234, %253
  %259 = and i64 %257, 4294967295
  %260 = lshr i64 %257, 32
  %261 = mul nuw i64 %259, %260
  %262 = add i64 %258, %261
  %263 = getelementptr inbounds nuw i8, ptr %238, i64 16
  %264 = load i64, ptr %263, align 1
  %265 = tail call noundef i64 @llvm.bswap.i64(i64 %264)
  %266 = getelementptr inbounds nuw i8, ptr %240, i64 16
  %267 = load i64, ptr %266, align 1
  %268 = tail call noundef i64 @llvm.bswap.i64(i64 %267)
  %269 = xor i64 %268, %265
  %270 = add i64 %233, %265
  %271 = and i64 %269, 4294967295
  %272 = lshr i64 %269, 32
  %273 = mul nuw i64 %271, %272
  %274 = add i64 %270, %273
  %275 = getelementptr inbounds nuw i8, ptr %238, i64 24
  %276 = load i64, ptr %275, align 1
  %277 = tail call noundef i64 @llvm.bswap.i64(i64 %276)
  %278 = getelementptr inbounds nuw i8, ptr %240, i64 24
  %279 = load i64, ptr %278, align 1
  %280 = tail call noundef i64 @llvm.bswap.i64(i64 %279)
  %281 = xor i64 %280, %277
  %282 = add i64 %232, %277
  %283 = and i64 %281, 4294967295
  %284 = lshr i64 %281, 32
  %285 = mul nuw i64 %283, %284
  %286 = add i64 %282, %285
  %287 = getelementptr inbounds nuw i8, ptr %238, i64 32
  %288 = load i64, ptr %287, align 1
  %289 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %290 = getelementptr inbounds nuw i8, ptr %240, i64 32
  %291 = load i64, ptr %290, align 1
  %292 = tail call noundef i64 @llvm.bswap.i64(i64 %291)
  %293 = xor i64 %292, %289
  %294 = add i64 %231, %289
  %295 = and i64 %293, 4294967295
  %296 = lshr i64 %293, 32
  %297 = mul nuw i64 %295, %296
  %298 = add i64 %294, %297
  %299 = getelementptr inbounds nuw i8, ptr %238, i64 40
  %300 = load i64, ptr %299, align 1
  %301 = tail call noundef i64 @llvm.bswap.i64(i64 %300)
  %302 = getelementptr inbounds nuw i8, ptr %240, i64 40
  %303 = load i64, ptr %302, align 1
  %304 = tail call noundef i64 @llvm.bswap.i64(i64 %303)
  %305 = xor i64 %304, %301
  %306 = add i64 %230, %301
  %307 = and i64 %305, 4294967295
  %308 = lshr i64 %305, 32
  %309 = mul nuw i64 %307, %308
  %310 = add i64 %306, %309
  %311 = getelementptr inbounds nuw i8, ptr %238, i64 48
  %312 = load i64, ptr %311, align 1
  %313 = tail call noundef i64 @llvm.bswap.i64(i64 %312)
  %314 = getelementptr inbounds nuw i8, ptr %240, i64 48
  %315 = load i64, ptr %314, align 1
  %316 = tail call noundef i64 @llvm.bswap.i64(i64 %315)
  %317 = xor i64 %316, %313
  %318 = add i64 %229, %313
  %319 = and i64 %317, 4294967295
  %320 = lshr i64 %317, 32
  %321 = mul nuw i64 %319, %320
  %322 = add i64 %318, %321
  %323 = getelementptr inbounds nuw i8, ptr %238, i64 56
  %324 = load i64, ptr %323, align 1
  %325 = tail call noundef i64 @llvm.bswap.i64(i64 %324)
  %326 = getelementptr inbounds nuw i8, ptr %240, i64 56
  %327 = load i64, ptr %326, align 1
  %328 = tail call noundef i64 @llvm.bswap.i64(i64 %327)
  %329 = xor i64 %328, %325
  %330 = add i64 %228, %325
  %331 = and i64 %329, 4294967295
  %332 = lshr i64 %329, 32
  %333 = mul nuw i64 %331, %332
  %334 = add i64 %330, %333
  %335 = add nuw i64 %236, 1
  %336 = icmp eq i64 %335, %225
  br i1 %336, label %447, label %227

337:                                              ; preds = %25, %337
  %338 = phi i64 [ %444, %337 ], [ %21, %25 ]
  %339 = phi i64 [ %432, %337 ], [ %19, %25 ]
  %340 = phi i64 [ %420, %337 ], [ %17, %25 ]
  %341 = phi i64 [ %408, %337 ], [ %15, %25 ]
  %342 = phi i64 [ %396, %337 ], [ %13, %25 ]
  %343 = phi i64 [ %384, %337 ], [ %11, %25 ]
  %344 = phi i64 [ %372, %337 ], [ %9, %25 ]
  %345 = phi i64 [ %360, %337 ], [ %7, %25 ]
  %346 = phi i64 [ %445, %337 ], [ 0, %25 ]
  %347 = shl i64 %346, 6
  %348 = getelementptr inbounds nuw i8, ptr %32, i64 %347
  %349 = shl i64 %346, 3
  %350 = getelementptr inbounds nuw i8, ptr %43, i64 %349
  %351 = load i64, ptr %348, align 1
  %352 = tail call noundef i64 @llvm.bswap.i64(i64 %351)
  %353 = load i64, ptr %350, align 1
  %354 = tail call noundef i64 @llvm.bswap.i64(i64 %353)
  %355 = xor i64 %354, %352
  %356 = add i64 %345, %352
  %357 = and i64 %355, 4294967295
  %358 = lshr i64 %355, 32
  %359 = mul nuw i64 %357, %358
  %360 = add i64 %356, %359
  %361 = getelementptr inbounds nuw i8, ptr %348, i64 8
  %362 = load i64, ptr %361, align 1
  %363 = tail call noundef i64 @llvm.bswap.i64(i64 %362)
  %364 = getelementptr inbounds nuw i8, ptr %350, i64 8
  %365 = load i64, ptr %364, align 1
  %366 = tail call noundef i64 @llvm.bswap.i64(i64 %365)
  %367 = xor i64 %366, %363
  %368 = add i64 %344, %363
  %369 = and i64 %367, 4294967295
  %370 = lshr i64 %367, 32
  %371 = mul nuw i64 %369, %370
  %372 = add i64 %368, %371
  %373 = getelementptr inbounds nuw i8, ptr %348, i64 16
  %374 = load i64, ptr %373, align 1
  %375 = tail call noundef i64 @llvm.bswap.i64(i64 %374)
  %376 = getelementptr inbounds nuw i8, ptr %350, i64 16
  %377 = load i64, ptr %376, align 1
  %378 = tail call noundef i64 @llvm.bswap.i64(i64 %377)
  %379 = xor i64 %378, %375
  %380 = add i64 %343, %375
  %381 = and i64 %379, 4294967295
  %382 = lshr i64 %379, 32
  %383 = mul nuw i64 %381, %382
  %384 = add i64 %380, %383
  %385 = getelementptr inbounds nuw i8, ptr %348, i64 24
  %386 = load i64, ptr %385, align 1
  %387 = tail call noundef i64 @llvm.bswap.i64(i64 %386)
  %388 = getelementptr inbounds nuw i8, ptr %350, i64 24
  %389 = load i64, ptr %388, align 1
  %390 = tail call noundef i64 @llvm.bswap.i64(i64 %389)
  %391 = xor i64 %390, %387
  %392 = add i64 %342, %387
  %393 = and i64 %391, 4294967295
  %394 = lshr i64 %391, 32
  %395 = mul nuw i64 %393, %394
  %396 = add i64 %392, %395
  %397 = getelementptr inbounds nuw i8, ptr %348, i64 32
  %398 = load i64, ptr %397, align 1
  %399 = tail call noundef i64 @llvm.bswap.i64(i64 %398)
  %400 = getelementptr inbounds nuw i8, ptr %350, i64 32
  %401 = load i64, ptr %400, align 1
  %402 = tail call noundef i64 @llvm.bswap.i64(i64 %401)
  %403 = xor i64 %402, %399
  %404 = add i64 %341, %399
  %405 = and i64 %403, 4294967295
  %406 = lshr i64 %403, 32
  %407 = mul nuw i64 %405, %406
  %408 = add i64 %404, %407
  %409 = getelementptr inbounds nuw i8, ptr %348, i64 40
  %410 = load i64, ptr %409, align 1
  %411 = tail call noundef i64 @llvm.bswap.i64(i64 %410)
  %412 = getelementptr inbounds nuw i8, ptr %350, i64 40
  %413 = load i64, ptr %412, align 1
  %414 = tail call noundef i64 @llvm.bswap.i64(i64 %413)
  %415 = xor i64 %414, %411
  %416 = add i64 %340, %411
  %417 = and i64 %415, 4294967295
  %418 = lshr i64 %415, 32
  %419 = mul nuw i64 %417, %418
  %420 = add i64 %416, %419
  %421 = getelementptr inbounds nuw i8, ptr %348, i64 48
  %422 = load i64, ptr %421, align 1
  %423 = tail call noundef i64 @llvm.bswap.i64(i64 %422)
  %424 = getelementptr inbounds nuw i8, ptr %350, i64 48
  %425 = load i64, ptr %424, align 1
  %426 = tail call noundef i64 @llvm.bswap.i64(i64 %425)
  %427 = xor i64 %426, %423
  %428 = add i64 %339, %423
  %429 = and i64 %427, 4294967295
  %430 = lshr i64 %427, 32
  %431 = mul nuw i64 %429, %430
  %432 = add i64 %428, %431
  %433 = getelementptr inbounds nuw i8, ptr %348, i64 56
  %434 = load i64, ptr %433, align 1
  %435 = tail call noundef i64 @llvm.bswap.i64(i64 %434)
  %436 = getelementptr inbounds nuw i8, ptr %350, i64 56
  %437 = load i64, ptr %436, align 1
  %438 = tail call noundef i64 @llvm.bswap.i64(i64 %437)
  %439 = xor i64 %438, %435
  %440 = add i64 %338, %435
  %441 = and i64 %439, 4294967295
  %442 = lshr i64 %439, 32
  %443 = mul nuw i64 %441, %442
  %444 = add i64 %440, %443
  %445 = add nuw nsw i64 %346, 1
  %446 = icmp eq i64 %445, %27
  br i1 %446, label %447, label %337

447:                                              ; preds = %227, %337, %158
  %448 = phi i64 [ %222, %158 ], [ %444, %337 ], [ %334, %227 ]
  %449 = phi i64 [ %215, %158 ], [ %432, %337 ], [ %322, %227 ]
  %450 = phi i64 [ %208, %158 ], [ %420, %337 ], [ %310, %227 ]
  %451 = phi i64 [ %201, %158 ], [ %408, %337 ], [ %298, %227 ]
  %452 = phi i64 [ %194, %158 ], [ %396, %337 ], [ %286, %227 ]
  %453 = phi i64 [ %187, %158 ], [ %384, %337 ], [ %274, %227 ]
  %454 = phi i64 [ %180, %158 ], [ %372, %337 ], [ %262, %227 ]
  %455 = phi i64 [ %173, %158 ], [ %360, %337 ], [ %250, %227 ]
  %456 = and i32 %23, 63
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %669, label %458

458:                                              ; preds = %447
  %459 = zext i32 %23 to i64
  %460 = getelementptr inbounds nuw i8, ptr %32, i64 %459
  %461 = getelementptr inbounds i8, ptr %460, i64 -64
  %462 = getelementptr inbounds nuw i8, ptr %34, i64 %37
  %463 = getelementptr inbounds i8, ptr %462, i64 -7
  %464 = load i64, ptr %461, align 1
  %465 = tail call noundef i64 @llvm.bswap.i64(i64 %464)
  %466 = load i64, ptr %463, align 1
  %467 = tail call noundef i64 @llvm.bswap.i64(i64 %466)
  %468 = xor i64 %467, %465
  %469 = add i64 %455, %465
  %470 = and i64 %468, 4294967295
  %471 = lshr i64 %468, 32
  %472 = mul nuw i64 %470, %471
  %473 = add i64 %469, %472
  %474 = getelementptr inbounds i8, ptr %460, i64 -56
  %475 = load i64, ptr %474, align 1
  %476 = tail call noundef i64 @llvm.bswap.i64(i64 %475)
  %477 = getelementptr inbounds nuw i8, ptr %462, i64 1
  %478 = load i64, ptr %477, align 1
  %479 = tail call noundef i64 @llvm.bswap.i64(i64 %478)
  %480 = xor i64 %479, %476
  %481 = add i64 %454, %476
  %482 = and i64 %480, 4294967295
  %483 = lshr i64 %480, 32
  %484 = mul nuw i64 %482, %483
  %485 = add i64 %481, %484
  %486 = getelementptr inbounds i8, ptr %460, i64 -48
  %487 = load i64, ptr %486, align 1
  %488 = tail call noundef i64 @llvm.bswap.i64(i64 %487)
  %489 = getelementptr inbounds nuw i8, ptr %462, i64 9
  %490 = load i64, ptr %489, align 1
  %491 = tail call noundef i64 @llvm.bswap.i64(i64 %490)
  %492 = xor i64 %491, %488
  %493 = add i64 %453, %488
  %494 = and i64 %492, 4294967295
  %495 = lshr i64 %492, 32
  %496 = mul nuw i64 %494, %495
  %497 = add i64 %493, %496
  %498 = getelementptr inbounds i8, ptr %460, i64 -40
  %499 = load i64, ptr %498, align 1
  %500 = tail call noundef i64 @llvm.bswap.i64(i64 %499)
  %501 = getelementptr inbounds nuw i8, ptr %462, i64 17
  %502 = load i64, ptr %501, align 1
  %503 = tail call noundef i64 @llvm.bswap.i64(i64 %502)
  %504 = xor i64 %503, %500
  %505 = add i64 %452, %500
  %506 = and i64 %504, 4294967295
  %507 = lshr i64 %504, 32
  %508 = mul nuw i64 %506, %507
  %509 = add i64 %505, %508
  %510 = getelementptr inbounds i8, ptr %460, i64 -32
  %511 = load i64, ptr %510, align 1
  %512 = tail call noundef i64 @llvm.bswap.i64(i64 %511)
  %513 = getelementptr inbounds nuw i8, ptr %462, i64 25
  %514 = load i64, ptr %513, align 1
  %515 = tail call noundef i64 @llvm.bswap.i64(i64 %514)
  %516 = xor i64 %515, %512
  %517 = add i64 %451, %512
  %518 = and i64 %516, 4294967295
  %519 = lshr i64 %516, 32
  %520 = mul nuw i64 %518, %519
  %521 = add i64 %517, %520
  %522 = getelementptr inbounds i8, ptr %460, i64 -24
  %523 = load i64, ptr %522, align 1
  %524 = tail call noundef i64 @llvm.bswap.i64(i64 %523)
  %525 = getelementptr inbounds nuw i8, ptr %462, i64 33
  %526 = load i64, ptr %525, align 1
  %527 = tail call noundef i64 @llvm.bswap.i64(i64 %526)
  %528 = xor i64 %527, %524
  %529 = add i64 %450, %524
  %530 = and i64 %528, 4294967295
  %531 = lshr i64 %528, 32
  %532 = mul nuw i64 %530, %531
  %533 = add i64 %529, %532
  %534 = getelementptr inbounds i8, ptr %460, i64 -16
  %535 = load i64, ptr %534, align 1
  %536 = tail call noundef i64 @llvm.bswap.i64(i64 %535)
  %537 = getelementptr inbounds nuw i8, ptr %462, i64 41
  %538 = load i64, ptr %537, align 1
  %539 = tail call noundef i64 @llvm.bswap.i64(i64 %538)
  %540 = xor i64 %539, %536
  %541 = add i64 %449, %536
  %542 = and i64 %540, 4294967295
  %543 = lshr i64 %540, 32
  %544 = mul nuw i64 %542, %543
  %545 = add i64 %541, %544
  %546 = getelementptr inbounds i8, ptr %460, i64 -8
  %547 = load i64, ptr %546, align 1
  %548 = tail call noundef i64 @llvm.bswap.i64(i64 %547)
  %549 = getelementptr inbounds nuw i8, ptr %462, i64 49
  %550 = load i64, ptr %549, align 1
  %551 = tail call noundef i64 @llvm.bswap.i64(i64 %550)
  %552 = xor i64 %551, %548
  %553 = add i64 %448, %548
  %554 = and i64 %552, 4294967295
  %555 = lshr i64 %552, 32
  %556 = mul nuw i64 %554, %555
  %557 = add i64 %553, %556
  br label %669

558:                                              ; preds = %6
  %559 = icmp eq i32 %23, 0
  br i1 %559, label %669, label %560

560:                                              ; preds = %558
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #26
  %561 = sub nuw nsw i32 64, %23
  %562 = zext nneg i32 %561 to i64
  %563 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %564 = sub nsw i64 0, %562
  %565 = getelementptr inbounds i8, ptr %22, i64 %564
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 1 %565, i64 %562, i1 false)
  %566 = getelementptr inbounds nuw i8, ptr %2, i64 %562
  %567 = zext nneg i32 %23 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %566, ptr nonnull align 64 %563, i64 %567, i1 false)
  %568 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %569 = load ptr, ptr %568, align 16
  %570 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %571 = load i32, ptr %570, align 4
  %572 = zext i32 %571 to i64
  %573 = getelementptr inbounds nuw i8, ptr %569, i64 %572
  %574 = getelementptr inbounds i8, ptr %573, i64 -7
  %575 = load i64, ptr %2, align 8
  %576 = tail call noundef i64 @llvm.bswap.i64(i64 %575)
  %577 = load i64, ptr %574, align 1
  %578 = tail call noundef i64 @llvm.bswap.i64(i64 %577)
  %579 = xor i64 %578, %576
  %580 = add i64 %7, %576
  %581 = and i64 %579, 4294967295
  %582 = lshr i64 %579, 32
  %583 = mul nuw i64 %581, %582
  %584 = add i64 %580, %583
  %585 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %586 = load i64, ptr %585, align 8
  %587 = tail call noundef i64 @llvm.bswap.i64(i64 %586)
  %588 = getelementptr inbounds nuw i8, ptr %573, i64 1
  %589 = load i64, ptr %588, align 1
  %590 = tail call noundef i64 @llvm.bswap.i64(i64 %589)
  %591 = xor i64 %590, %587
  %592 = add i64 %9, %587
  %593 = and i64 %591, 4294967295
  %594 = lshr i64 %591, 32
  %595 = mul nuw i64 %593, %594
  %596 = add i64 %592, %595
  %597 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %598 = load i64, ptr %597, align 8
  %599 = tail call noundef i64 @llvm.bswap.i64(i64 %598)
  %600 = getelementptr inbounds nuw i8, ptr %573, i64 9
  %601 = load i64, ptr %600, align 1
  %602 = tail call noundef i64 @llvm.bswap.i64(i64 %601)
  %603 = xor i64 %602, %599
  %604 = add i64 %11, %599
  %605 = and i64 %603, 4294967295
  %606 = lshr i64 %603, 32
  %607 = mul nuw i64 %605, %606
  %608 = add i64 %604, %607
  %609 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %610 = load i64, ptr %609, align 8
  %611 = tail call noundef i64 @llvm.bswap.i64(i64 %610)
  %612 = getelementptr inbounds nuw i8, ptr %573, i64 17
  %613 = load i64, ptr %612, align 1
  %614 = tail call noundef i64 @llvm.bswap.i64(i64 %613)
  %615 = xor i64 %614, %611
  %616 = add i64 %13, %611
  %617 = and i64 %615, 4294967295
  %618 = lshr i64 %615, 32
  %619 = mul nuw i64 %617, %618
  %620 = add i64 %616, %619
  %621 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %622 = load i64, ptr %621, align 8
  %623 = tail call noundef i64 @llvm.bswap.i64(i64 %622)
  %624 = getelementptr inbounds nuw i8, ptr %573, i64 25
  %625 = load i64, ptr %624, align 1
  %626 = tail call noundef i64 @llvm.bswap.i64(i64 %625)
  %627 = xor i64 %626, %623
  %628 = add i64 %15, %623
  %629 = and i64 %627, 4294967295
  %630 = lshr i64 %627, 32
  %631 = mul nuw i64 %629, %630
  %632 = add i64 %628, %631
  %633 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %634 = load i64, ptr %633, align 8
  %635 = tail call noundef i64 @llvm.bswap.i64(i64 %634)
  %636 = getelementptr inbounds nuw i8, ptr %573, i64 33
  %637 = load i64, ptr %636, align 1
  %638 = tail call noundef i64 @llvm.bswap.i64(i64 %637)
  %639 = xor i64 %638, %635
  %640 = add i64 %17, %635
  %641 = and i64 %639, 4294967295
  %642 = lshr i64 %639, 32
  %643 = mul nuw i64 %641, %642
  %644 = add i64 %640, %643
  %645 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %646 = load i64, ptr %645, align 8
  %647 = tail call noundef i64 @llvm.bswap.i64(i64 %646)
  %648 = getelementptr inbounds nuw i8, ptr %573, i64 41
  %649 = load i64, ptr %648, align 1
  %650 = tail call noundef i64 @llvm.bswap.i64(i64 %649)
  %651 = xor i64 %650, %647
  %652 = add i64 %19, %647
  %653 = and i64 %651, 4294967295
  %654 = lshr i64 %651, 32
  %655 = mul nuw i64 %653, %654
  %656 = add i64 %652, %655
  %657 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %658 = load i64, ptr %657, align 8
  %659 = tail call noundef i64 @llvm.bswap.i64(i64 %658)
  %660 = getelementptr inbounds nuw i8, ptr %573, i64 49
  %661 = load i64, ptr %660, align 1
  %662 = tail call noundef i64 @llvm.bswap.i64(i64 %661)
  %663 = xor i64 %662, %659
  %664 = add i64 %21, %659
  %665 = and i64 %663, 4294967295
  %666 = lshr i64 %663, 32
  %667 = mul nuw i64 %665, %666
  %668 = add i64 %664, %667
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #26
  br label %669

669:                                              ; preds = %458, %447, %558, %560
  %670 = phi i64 [ %448, %447 ], [ %557, %458 ], [ %21, %558 ], [ %668, %560 ]
  %671 = phi i64 [ %449, %447 ], [ %545, %458 ], [ %19, %558 ], [ %656, %560 ]
  %672 = phi i64 [ %450, %447 ], [ %533, %458 ], [ %17, %558 ], [ %644, %560 ]
  %673 = phi i64 [ %451, %447 ], [ %521, %458 ], [ %15, %558 ], [ %632, %560 ]
  %674 = phi i64 [ %452, %447 ], [ %509, %458 ], [ %13, %558 ], [ %620, %560 ]
  %675 = phi i64 [ %453, %447 ], [ %497, %458 ], [ %11, %558 ], [ %608, %560 ]
  %676 = phi i64 [ %454, %447 ], [ %485, %458 ], [ %9, %558 ], [ %596, %560 ]
  %677 = phi i64 [ %455, %447 ], [ %473, %458 ], [ %7, %558 ], [ %584, %560 ]
  %678 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %679 = load ptr, ptr %678, align 16
  %680 = getelementptr inbounds nuw i8, ptr %679, i64 11
  %681 = mul i64 %4, -7046029288634856825
  %682 = load i64, ptr %680, align 1
  %683 = tail call noundef i64 @llvm.bswap.i64(i64 %682)
  %684 = xor i64 %683, %677
  %685 = getelementptr inbounds nuw i8, ptr %679, i64 19
  %686 = load i64, ptr %685, align 1
  %687 = tail call noundef i64 @llvm.bswap.i64(i64 %686)
  %688 = xor i64 %687, %676
  %689 = zext i64 %684 to i128
  %690 = zext i64 %688 to i128
  %691 = mul nuw i128 %690, %689
  %692 = lshr i128 %691, 64
  %693 = xor i128 %692, %691
  %694 = trunc i128 %693 to i64
  %695 = add i64 %681, %694
  %696 = getelementptr inbounds nuw i8, ptr %679, i64 27
  %697 = load i64, ptr %696, align 1
  %698 = tail call noundef i64 @llvm.bswap.i64(i64 %697)
  %699 = xor i64 %698, %675
  %700 = getelementptr inbounds nuw i8, ptr %679, i64 35
  %701 = load i64, ptr %700, align 1
  %702 = tail call noundef i64 @llvm.bswap.i64(i64 %701)
  %703 = xor i64 %702, %674
  %704 = zext i64 %699 to i128
  %705 = zext i64 %703 to i128
  %706 = mul nuw i128 %705, %704
  %707 = lshr i128 %706, 64
  %708 = xor i128 %707, %706
  %709 = trunc i128 %708 to i64
  %710 = add i64 %695, %709
  %711 = getelementptr inbounds nuw i8, ptr %679, i64 43
  %712 = load i64, ptr %711, align 1
  %713 = tail call noundef i64 @llvm.bswap.i64(i64 %712)
  %714 = xor i64 %713, %673
  %715 = getelementptr inbounds nuw i8, ptr %679, i64 51
  %716 = load i64, ptr %715, align 1
  %717 = tail call noundef i64 @llvm.bswap.i64(i64 %716)
  %718 = xor i64 %717, %672
  %719 = zext i64 %714 to i128
  %720 = zext i64 %718 to i128
  %721 = mul nuw i128 %720, %719
  %722 = lshr i128 %721, 64
  %723 = xor i128 %722, %721
  %724 = trunc i128 %723 to i64
  %725 = add i64 %710, %724
  %726 = getelementptr inbounds nuw i8, ptr %679, i64 59
  %727 = load i64, ptr %726, align 1
  %728 = tail call noundef i64 @llvm.bswap.i64(i64 %727)
  %729 = xor i64 %728, %671
  %730 = getelementptr inbounds nuw i8, ptr %679, i64 67
  %731 = load i64, ptr %730, align 1
  %732 = tail call noundef i64 @llvm.bswap.i64(i64 %731)
  %733 = xor i64 %732, %670
  %734 = zext i64 %729 to i128
  %735 = zext i64 %733 to i128
  %736 = mul nuw i128 %735, %734
  %737 = lshr i128 %736, 64
  %738 = xor i128 %737, %736
  %739 = trunc i128 %738 to i64
  %740 = add i64 %725, %739
  %741 = lshr i64 %740, 37
  %742 = xor i64 %741, %740
  %743 = mul i64 %742, 1609587929392839161
  %744 = lshr i64 %743, 32
  %745 = xor i64 %744, %743
  br label %1259

746:                                              ; preds = %1
  %747 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %748 = load i64, ptr %747, align 32
  %749 = icmp eq i64 %748, 0
  %750 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %749, label %995, label %751

751:                                              ; preds = %746
  %752 = icmp samesign ult i64 %4, 17
  br i1 %752, label %753, label %833

753:                                              ; preds = %751
  %754 = icmp samesign ugt i64 %4, 8
  br i1 %754, label %755, label %780

755:                                              ; preds = %753
  %756 = load i64, ptr %750, align 1
  %757 = tail call noundef i64 @llvm.bswap.i64(i64 %756)
  %758 = add i64 %748, -4734510112055689544
  %759 = xor i64 %757, %758
  %760 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %761 = getelementptr inbounds i8, ptr %760, i64 -8
  %762 = load i64, ptr %761, align 1
  %763 = tail call noundef i64 @llvm.bswap.i64(i64 %762)
  %764 = sub i64 2066345149520216444, %748
  %765 = xor i64 %763, %764
  %766 = zext i64 %759 to i128
  %767 = zext i64 %765 to i128
  %768 = mul nuw i128 %767, %766
  %769 = lshr i128 %768, 64
  %770 = xor i128 %769, %768
  %771 = trunc i128 %770 to i64
  %772 = add i64 %759, %4
  %773 = add i64 %772, %765
  %774 = add i64 %773, %771
  %775 = lshr i64 %774, 37
  %776 = xor i64 %775, %774
  %777 = mul i64 %776, 1609587929392839161
  %778 = lshr i64 %777, 32
  %779 = xor i64 %778, %777
  br label %1259

780:                                              ; preds = %753
  %781 = icmp samesign ugt i64 %4, 3
  br i1 %781, label %782, label %806

782:                                              ; preds = %780
  %783 = load i32, ptr %750, align 1
  %784 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %785 = getelementptr inbounds i8, ptr %784, i64 -4
  %786 = load i32, ptr %785, align 1
  %787 = zext i32 %786 to i64
  %788 = zext i32 %783 to i64
  %789 = shl nuw i64 %788, 32
  %790 = or disjoint i64 %789, %787
  %791 = tail call i64 @llvm.bswap.i64(i64 %790)
  %792 = add i64 %748, -4734510112055689544
  %793 = xor i64 %791, %792
  %794 = lshr i64 %793, 51
  %795 = xor i64 %794, %793
  %796 = mul i64 %795, 2654435761
  %797 = add i64 %796, %4
  %798 = lshr i64 %797, 47
  %799 = xor i64 %798, %797
  %800 = mul i64 %799, -4417276706812531889
  %801 = lshr i64 %800, 37
  %802 = xor i64 %801, %800
  %803 = mul i64 %802, 1609587929392839161
  %804 = lshr i64 %803, 32
  %805 = xor i64 %804, %803
  br label %1259

806:                                              ; preds = %780
  %807 = icmp eq i64 %4, 0
  br i1 %807, label %1259, label %808

808:                                              ; preds = %806
  %809 = load i8, ptr %750, align 1
  %810 = lshr i64 %4, 1
  %811 = getelementptr inbounds nuw i8, ptr %750, i64 %810
  %812 = load i8, ptr %811, align 1
  %813 = getelementptr i8, ptr %750, i64 %4
  %814 = getelementptr i8, ptr %813, i64 -1
  %815 = load i8, ptr %814, align 1
  %816 = zext i8 %809 to i64
  %817 = zext i8 %812 to i64
  %818 = shl nuw nsw i64 %817, 8
  %819 = zext i8 %815 to i64
  %820 = shl nuw nsw i64 %819, 16
  %821 = shl nuw nsw i64 %4, 24
  %822 = or disjoint i64 %821, %816
  %823 = or disjoint i64 %822, %818
  %824 = or disjoint i64 %823, %820
  %825 = add i64 %748, 963444408
  %826 = xor i64 %824, %825
  %827 = mul i64 %826, -7046029288634856825
  %828 = lshr i64 %827, 37
  %829 = xor i64 %828, %827
  %830 = mul i64 %829, 1609587929392839161
  %831 = lshr i64 %830, 32
  %832 = xor i64 %831, %830
  br label %1259

833:                                              ; preds = %751
  %834 = icmp samesign ult i64 %4, 129
  br i1 %834, label %835, label %993

835:                                              ; preds = %833
  %836 = mul i64 %4, -7046029288634856825
  %837 = icmp samesign ugt i64 %4, 32
  br i1 %837, label %838, label %952

838:                                              ; preds = %835
  %839 = icmp samesign ugt i64 %4, 64
  br i1 %839, label %840, label %915

840:                                              ; preds = %838
  %841 = icmp samesign ugt i64 %4, 96
  br i1 %841, label %842, label %878

842:                                              ; preds = %840
  %843 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %844 = load i64, ptr %843, align 1
  %845 = tail call noundef i64 @llvm.bswap.i64(i64 %844)
  %846 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %847 = load i64, ptr %846, align 1
  %848 = tail call noundef i64 @llvm.bswap.i64(i64 %847)
  %849 = add i64 %748, 4554437623014685352
  %850 = xor i64 %845, %849
  %851 = sub i64 2111919702937427193, %748
  %852 = xor i64 %848, %851
  %853 = zext i64 %850 to i128
  %854 = zext i64 %852 to i128
  %855 = mul nuw i128 %854, %853
  %856 = lshr i128 %855, 64
  %857 = xor i128 %856, %855
  %858 = trunc i128 %857 to i64
  %859 = add i64 %836, %858
  %860 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %861 = getelementptr inbounds i8, ptr %860, i64 -64
  %862 = load i64, ptr %861, align 1
  %863 = tail call noundef i64 @llvm.bswap.i64(i64 %862)
  %864 = getelementptr inbounds i8, ptr %860, i64 -56
  %865 = load i64, ptr %864, align 1
  %866 = tail call noundef i64 @llvm.bswap.i64(i64 %865)
  %867 = add i64 %748, 3556072174620004746
  %868 = xor i64 %863, %867
  %869 = sub i64 7238261902898274248, %748
  %870 = xor i64 %866, %869
  %871 = zext i64 %868 to i128
  %872 = zext i64 %870 to i128
  %873 = mul nuw i128 %872, %871
  %874 = lshr i128 %873, 64
  %875 = xor i128 %874, %873
  %876 = trunc i128 %875 to i64
  %877 = add i64 %859, %876
  br label %878

878:                                              ; preds = %842, %840
  %879 = phi i64 [ %877, %842 ], [ %836, %840 ]
  %880 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %881 = load i64, ptr %880, align 1
  %882 = tail call noundef i64 @llvm.bswap.i64(i64 %881)
  %883 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %884 = load i64, ptr %883, align 1
  %885 = tail call noundef i64 @llvm.bswap.i64(i64 %884)
  %886 = add i64 %748, -3818837453329782724
  %887 = xor i64 %882, %886
  %888 = sub i64 -6688317018830679928, %748
  %889 = xor i64 %885, %888
  %890 = zext i64 %887 to i128
  %891 = zext i64 %889 to i128
  %892 = mul nuw i128 %891, %890
  %893 = lshr i128 %892, 64
  %894 = xor i128 %893, %892
  %895 = trunc i128 %894 to i64
  %896 = add i64 %879, %895
  %897 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %898 = getelementptr inbounds i8, ptr %897, i64 -48
  %899 = load i64, ptr %898, align 1
  %900 = tail call noundef i64 @llvm.bswap.i64(i64 %899)
  %901 = getelementptr inbounds i8, ptr %897, i64 -40
  %902 = load i64, ptr %901, align 1
  %903 = tail call noundef i64 @llvm.bswap.i64(i64 %902)
  %904 = add i64 %748, 5690594596133299313
  %905 = xor i64 %900, %904
  %906 = sub i64 -2833645246901970632, %748
  %907 = xor i64 %903, %906
  %908 = zext i64 %905 to i128
  %909 = zext i64 %907 to i128
  %910 = mul nuw i128 %909, %908
  %911 = lshr i128 %910, 64
  %912 = xor i128 %911, %910
  %913 = trunc i128 %912 to i64
  %914 = add i64 %896, %913
  br label %915

915:                                              ; preds = %878, %838
  %916 = phi i64 [ %914, %878 ], [ %836, %838 ]
  %917 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %918 = load i64, ptr %917, align 1
  %919 = tail call noundef i64 @llvm.bswap.i64(i64 %918)
  %920 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %921 = load i64, ptr %920, align 1
  %922 = tail call noundef i64 @llvm.bswap.i64(i64 %921)
  %923 = add i64 %748, 8711581037947681227
  %924 = xor i64 %919, %923
  %925 = sub i64 2410270004345854594, %748
  %926 = xor i64 %922, %925
  %927 = zext i64 %924 to i128
  %928 = zext i64 %926 to i128
  %929 = mul nuw i128 %928, %927
  %930 = lshr i128 %929, 64
  %931 = xor i128 %930, %929
  %932 = trunc i128 %931 to i64
  %933 = add i64 %916, %932
  %934 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %935 = getelementptr inbounds i8, ptr %934, i64 -32
  %936 = load i64, ptr %935, align 1
  %937 = tail call noundef i64 @llvm.bswap.i64(i64 %936)
  %938 = getelementptr inbounds i8, ptr %934, i64 -24
  %939 = load i64, ptr %938, align 1
  %940 = tail call noundef i64 @llvm.bswap.i64(i64 %939)
  %941 = add i64 %748, -8204357891075471176
  %942 = xor i64 %937, %941
  %943 = sub i64 5487137525590930912, %748
  %944 = xor i64 %940, %943
  %945 = zext i64 %942 to i128
  %946 = zext i64 %944 to i128
  %947 = mul nuw i128 %946, %945
  %948 = lshr i128 %947, 64
  %949 = xor i128 %948, %947
  %950 = trunc i128 %949 to i64
  %951 = add i64 %933, %950
  br label %952

952:                                              ; preds = %915, %835
  %953 = phi i64 [ %951, %915 ], [ %836, %835 ]
  %954 = load i64, ptr %750, align 1
  %955 = tail call noundef i64 @llvm.bswap.i64(i64 %954)
  %956 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %957 = load i64, ptr %956, align 1
  %958 = tail call noundef i64 @llvm.bswap.i64(i64 %957)
  %959 = add i64 %748, -4734510112055689544
  %960 = xor i64 %955, %959
  %961 = sub i64 2066345149520216444, %748
  %962 = xor i64 %958, %961
  %963 = zext i64 %960 to i128
  %964 = zext i64 %962 to i128
  %965 = mul nuw i128 %964, %963
  %966 = lshr i128 %965, 64
  %967 = xor i128 %966, %965
  %968 = trunc i128 %967 to i64
  %969 = add i64 %953, %968
  %970 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %971 = getelementptr inbounds i8, ptr %970, i64 -16
  %972 = load i64, ptr %971, align 1
  %973 = tail call noundef i64 @llvm.bswap.i64(i64 %972)
  %974 = getelementptr inbounds i8, ptr %970, i64 -8
  %975 = load i64, ptr %974, align 1
  %976 = tail call noundef i64 @llvm.bswap.i64(i64 %975)
  %977 = add i64 %748, -2623469361688619810
  %978 = xor i64 %973, %977
  %979 = sub i64 2262974939099578482, %748
  %980 = xor i64 %976, %979
  %981 = zext i64 %978 to i128
  %982 = zext i64 %980 to i128
  %983 = mul nuw i128 %982, %981
  %984 = lshr i128 %983, 64
  %985 = xor i128 %984, %983
  %986 = trunc i128 %985 to i64
  %987 = add i64 %969, %986
  %988 = lshr i64 %987, 37
  %989 = xor i64 %988, %987
  %990 = mul i64 %989, 1609587929392839161
  %991 = lshr i64 %990, 32
  %992 = xor i64 %991, %990
  br label %1259

993:                                              ; preds = %833
  %994 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %750, i64 noundef %4, ptr noundef nonnull @kSecret, i64 noundef %748)
  br label %1259

995:                                              ; preds = %746
  %996 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %997 = load ptr, ptr %996, align 16
  %998 = icmp samesign ult i64 %4, 17
  br i1 %998, label %999, label %1082

999:                                              ; preds = %995
  %1000 = icmp samesign ugt i64 %4, 8
  br i1 %1000, label %1001, label %1027

1001:                                             ; preds = %999
  %1002 = load i64, ptr %750, align 1
  %1003 = load i64, ptr %997, align 1
  %1004 = xor i64 %1003, %1002
  %1005 = tail call i64 @llvm.bswap.i64(i64 %1004)
  %1006 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %1007 = getelementptr inbounds i8, ptr %1006, i64 -8
  %1008 = load i64, ptr %1007, align 1
  %1009 = getelementptr inbounds nuw i8, ptr %997, i64 8
  %1010 = load i64, ptr %1009, align 1
  %1011 = xor i64 %1010, %1008
  %1012 = tail call i64 @llvm.bswap.i64(i64 %1011)
  %1013 = zext i64 %1005 to i128
  %1014 = zext i64 %1012 to i128
  %1015 = mul nuw i128 %1014, %1013
  %1016 = lshr i128 %1015, 64
  %1017 = xor i128 %1016, %1015
  %1018 = trunc i128 %1017 to i64
  %1019 = add i64 %1005, %4
  %1020 = add i64 %1019, %1012
  %1021 = add i64 %1020, %1018
  %1022 = lshr i64 %1021, 37
  %1023 = xor i64 %1022, %1021
  %1024 = mul i64 %1023, 1609587929392839161
  %1025 = lshr i64 %1024, 32
  %1026 = xor i64 %1025, %1024
  br label %1259

1027:                                             ; preds = %999
  %1028 = icmp samesign ugt i64 %4, 3
  br i1 %1028, label %1029, label %1053

1029:                                             ; preds = %1027
  %1030 = load i32, ptr %750, align 1
  %1031 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %1032 = getelementptr inbounds i8, ptr %1031, i64 -4
  %1033 = load i32, ptr %1032, align 1
  %1034 = zext i32 %1033 to i64
  %1035 = zext i32 %1030 to i64
  %1036 = shl nuw i64 %1035, 32
  %1037 = or disjoint i64 %1036, %1034
  %1038 = load i64, ptr %997, align 1
  %1039 = xor i64 %1037, %1038
  %1040 = tail call i64 @llvm.bswap.i64(i64 %1039)
  %1041 = lshr i64 %1040, 51
  %1042 = xor i64 %1041, %1040
  %1043 = mul i64 %1042, 2654435761
  %1044 = add i64 %1043, %4
  %1045 = lshr i64 %1044, 47
  %1046 = xor i64 %1045, %1044
  %1047 = mul i64 %1046, -4417276706812531889
  %1048 = lshr i64 %1047, 37
  %1049 = xor i64 %1048, %1047
  %1050 = mul i64 %1049, 1609587929392839161
  %1051 = lshr i64 %1050, 32
  %1052 = xor i64 %1051, %1050
  br label %1259

1053:                                             ; preds = %1027
  %1054 = icmp eq i64 %4, 0
  br i1 %1054, label %1259, label %1055

1055:                                             ; preds = %1053
  %1056 = load i8, ptr %750, align 1
  %1057 = lshr i64 %4, 1
  %1058 = getelementptr inbounds nuw i8, ptr %750, i64 %1057
  %1059 = load i8, ptr %1058, align 1
  %1060 = getelementptr i8, ptr %750, i64 %4
  %1061 = getelementptr i8, ptr %1060, i64 -1
  %1062 = load i8, ptr %1061, align 1
  %1063 = zext i8 %1056 to i64
  %1064 = zext i8 %1059 to i64
  %1065 = shl nuw nsw i64 %1064, 8
  %1066 = zext i8 %1062 to i64
  %1067 = shl nuw nsw i64 %1066, 16
  %1068 = shl nuw nsw i64 %4, 24
  %1069 = or disjoint i64 %1068, %1063
  %1070 = or disjoint i64 %1069, %1065
  %1071 = or disjoint i64 %1070, %1067
  %1072 = load i32, ptr %997, align 1
  %1073 = tail call noundef i32 @llvm.bswap.i32(i32 %1072)
  %1074 = zext i32 %1073 to i64
  %1075 = xor i64 %1071, %1074
  %1076 = mul i64 %1075, -7046029288634856825
  %1077 = lshr i64 %1076, 37
  %1078 = xor i64 %1077, %1076
  %1079 = mul i64 %1078, 1609587929392839161
  %1080 = lshr i64 %1079, 32
  %1081 = xor i64 %1080, %1079
  br label %1259

1082:                                             ; preds = %995
  %1083 = icmp samesign ult i64 %4, 129
  br i1 %1083, label %1084, label %1257

1084:                                             ; preds = %1082
  %1085 = mul i64 %4, -7046029288634856825
  %1086 = icmp samesign ugt i64 %4, 32
  br i1 %1086, label %1087, label %1213

1087:                                             ; preds = %1084
  %1088 = icmp samesign ugt i64 %4, 64
  br i1 %1088, label %1089, label %1172

1089:                                             ; preds = %1087
  %1090 = icmp samesign ugt i64 %4, 96
  br i1 %1090, label %1091, label %1131

1091:                                             ; preds = %1089
  %1092 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %1093 = getelementptr inbounds nuw i8, ptr %997, i64 96
  %1094 = load i64, ptr %1092, align 1
  %1095 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %1096 = load i64, ptr %1095, align 1
  %1097 = load i64, ptr %1093, align 1
  %1098 = xor i64 %1097, %1094
  %1099 = tail call i64 @llvm.bswap.i64(i64 %1098)
  %1100 = getelementptr inbounds nuw i8, ptr %997, i64 104
  %1101 = load i64, ptr %1100, align 1
  %1102 = xor i64 %1101, %1096
  %1103 = tail call i64 @llvm.bswap.i64(i64 %1102)
  %1104 = zext i64 %1099 to i128
  %1105 = zext i64 %1103 to i128
  %1106 = mul nuw i128 %1105, %1104
  %1107 = lshr i128 %1106, 64
  %1108 = xor i128 %1107, %1106
  %1109 = trunc i128 %1108 to i64
  %1110 = add i64 %1085, %1109
  %1111 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %1112 = getelementptr inbounds i8, ptr %1111, i64 -64
  %1113 = getelementptr inbounds nuw i8, ptr %997, i64 112
  %1114 = load i64, ptr %1112, align 1
  %1115 = getelementptr inbounds i8, ptr %1111, i64 -56
  %1116 = load i64, ptr %1115, align 1
  %1117 = load i64, ptr %1113, align 1
  %1118 = xor i64 %1117, %1114
  %1119 = tail call i64 @llvm.bswap.i64(i64 %1118)
  %1120 = getelementptr inbounds nuw i8, ptr %997, i64 120
  %1121 = load i64, ptr %1120, align 1
  %1122 = xor i64 %1121, %1116
  %1123 = tail call i64 @llvm.bswap.i64(i64 %1122)
  %1124 = zext i64 %1119 to i128
  %1125 = zext i64 %1123 to i128
  %1126 = mul nuw i128 %1125, %1124
  %1127 = lshr i128 %1126, 64
  %1128 = xor i128 %1127, %1126
  %1129 = trunc i128 %1128 to i64
  %1130 = add i64 %1110, %1129
  br label %1131

1131:                                             ; preds = %1091, %1089
  %1132 = phi i64 [ %1130, %1091 ], [ %1085, %1089 ]
  %1133 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %1134 = getelementptr inbounds nuw i8, ptr %997, i64 64
  %1135 = load i64, ptr %1133, align 1
  %1136 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %1137 = load i64, ptr %1136, align 1
  %1138 = load i64, ptr %1134, align 1
  %1139 = xor i64 %1138, %1135
  %1140 = tail call i64 @llvm.bswap.i64(i64 %1139)
  %1141 = getelementptr inbounds nuw i8, ptr %997, i64 72
  %1142 = load i64, ptr %1141, align 1
  %1143 = xor i64 %1142, %1137
  %1144 = tail call i64 @llvm.bswap.i64(i64 %1143)
  %1145 = zext i64 %1140 to i128
  %1146 = zext i64 %1144 to i128
  %1147 = mul nuw i128 %1146, %1145
  %1148 = lshr i128 %1147, 64
  %1149 = xor i128 %1148, %1147
  %1150 = trunc i128 %1149 to i64
  %1151 = add i64 %1132, %1150
  %1152 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %1153 = getelementptr inbounds i8, ptr %1152, i64 -48
  %1154 = getelementptr inbounds nuw i8, ptr %997, i64 80
  %1155 = load i64, ptr %1153, align 1
  %1156 = getelementptr inbounds i8, ptr %1152, i64 -40
  %1157 = load i64, ptr %1156, align 1
  %1158 = load i64, ptr %1154, align 1
  %1159 = xor i64 %1158, %1155
  %1160 = tail call i64 @llvm.bswap.i64(i64 %1159)
  %1161 = getelementptr inbounds nuw i8, ptr %997, i64 88
  %1162 = load i64, ptr %1161, align 1
  %1163 = xor i64 %1162, %1157
  %1164 = tail call i64 @llvm.bswap.i64(i64 %1163)
  %1165 = zext i64 %1160 to i128
  %1166 = zext i64 %1164 to i128
  %1167 = mul nuw i128 %1166, %1165
  %1168 = lshr i128 %1167, 64
  %1169 = xor i128 %1168, %1167
  %1170 = trunc i128 %1169 to i64
  %1171 = add i64 %1151, %1170
  br label %1172

1172:                                             ; preds = %1131, %1087
  %1173 = phi i64 [ %1171, %1131 ], [ %1085, %1087 ]
  %1174 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %1175 = getelementptr inbounds nuw i8, ptr %997, i64 32
  %1176 = load i64, ptr %1174, align 1
  %1177 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %1178 = load i64, ptr %1177, align 1
  %1179 = load i64, ptr %1175, align 1
  %1180 = xor i64 %1179, %1176
  %1181 = tail call i64 @llvm.bswap.i64(i64 %1180)
  %1182 = getelementptr inbounds nuw i8, ptr %997, i64 40
  %1183 = load i64, ptr %1182, align 1
  %1184 = xor i64 %1183, %1178
  %1185 = tail call i64 @llvm.bswap.i64(i64 %1184)
  %1186 = zext i64 %1181 to i128
  %1187 = zext i64 %1185 to i128
  %1188 = mul nuw i128 %1187, %1186
  %1189 = lshr i128 %1188, 64
  %1190 = xor i128 %1189, %1188
  %1191 = trunc i128 %1190 to i64
  %1192 = add i64 %1173, %1191
  %1193 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %1194 = getelementptr inbounds i8, ptr %1193, i64 -32
  %1195 = getelementptr inbounds nuw i8, ptr %997, i64 48
  %1196 = load i64, ptr %1194, align 1
  %1197 = getelementptr inbounds i8, ptr %1193, i64 -24
  %1198 = load i64, ptr %1197, align 1
  %1199 = load i64, ptr %1195, align 1
  %1200 = xor i64 %1199, %1196
  %1201 = tail call i64 @llvm.bswap.i64(i64 %1200)
  %1202 = getelementptr inbounds nuw i8, ptr %997, i64 56
  %1203 = load i64, ptr %1202, align 1
  %1204 = xor i64 %1203, %1198
  %1205 = tail call i64 @llvm.bswap.i64(i64 %1204)
  %1206 = zext i64 %1201 to i128
  %1207 = zext i64 %1205 to i128
  %1208 = mul nuw i128 %1207, %1206
  %1209 = lshr i128 %1208, 64
  %1210 = xor i128 %1209, %1208
  %1211 = trunc i128 %1210 to i64
  %1212 = add i64 %1192, %1211
  br label %1213

1213:                                             ; preds = %1172, %1084
  %1214 = phi i64 [ %1212, %1172 ], [ %1085, %1084 ]
  %1215 = load i64, ptr %750, align 1
  %1216 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %1217 = load i64, ptr %1216, align 1
  %1218 = load i64, ptr %997, align 1
  %1219 = xor i64 %1218, %1215
  %1220 = tail call i64 @llvm.bswap.i64(i64 %1219)
  %1221 = getelementptr inbounds nuw i8, ptr %997, i64 8
  %1222 = load i64, ptr %1221, align 1
  %1223 = xor i64 %1222, %1217
  %1224 = tail call i64 @llvm.bswap.i64(i64 %1223)
  %1225 = zext i64 %1220 to i128
  %1226 = zext i64 %1224 to i128
  %1227 = mul nuw i128 %1226, %1225
  %1228 = lshr i128 %1227, 64
  %1229 = xor i128 %1228, %1227
  %1230 = trunc i128 %1229 to i64
  %1231 = add i64 %1214, %1230
  %1232 = getelementptr inbounds nuw i8, ptr %750, i64 %4
  %1233 = getelementptr inbounds i8, ptr %1232, i64 -16
  %1234 = getelementptr inbounds nuw i8, ptr %997, i64 16
  %1235 = load i64, ptr %1233, align 1
  %1236 = getelementptr inbounds i8, ptr %1232, i64 -8
  %1237 = load i64, ptr %1236, align 1
  %1238 = load i64, ptr %1234, align 1
  %1239 = xor i64 %1238, %1235
  %1240 = tail call i64 @llvm.bswap.i64(i64 %1239)
  %1241 = getelementptr inbounds nuw i8, ptr %997, i64 24
  %1242 = load i64, ptr %1241, align 1
  %1243 = xor i64 %1242, %1237
  %1244 = tail call i64 @llvm.bswap.i64(i64 %1243)
  %1245 = zext i64 %1240 to i128
  %1246 = zext i64 %1244 to i128
  %1247 = mul nuw i128 %1246, %1245
  %1248 = lshr i128 %1247, 64
  %1249 = xor i128 %1248, %1247
  %1250 = trunc i128 %1249 to i64
  %1251 = add i64 %1231, %1250
  %1252 = lshr i64 %1251, 37
  %1253 = xor i64 %1252, %1251
  %1254 = mul i64 %1253, 1609587929392839161
  %1255 = lshr i64 %1254, 32
  %1256 = xor i64 %1255, %1254
  br label %1259

1257:                                             ; preds = %1082
  %1258 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %750, i64 noundef %4, ptr noundef readonly %997, i64 noundef 0)
  br label %1259

1259:                                             ; preds = %1257, %1213, %1055, %1053, %1029, %1001, %993, %952, %808, %806, %782, %755, %669
  %1260 = phi i64 [ %745, %669 ], [ %992, %952 ], [ %994, %993 ], [ %779, %755 ], [ %805, %782 ], [ %832, %808 ], [ 0, %806 ], [ %1256, %1213 ], [ %1258, %1257 ], [ %1026, %1001 ], [ %1052, %1029 ], [ %1081, %1055 ], [ 0, %1053 ]
  ret i64 %1260
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @XXH3_128bits(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #15 {
  %4 = icmp ult i64 %2, 17
  br i1 %4, label %5, label %124

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %2, 8
  br i1 %6, label %7, label %46

7:                                                ; preds = %5
  %8 = load i64, ptr %1, align 1
  %9 = xor i64 %8, -5116533133979399234
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, 8935565165804498204
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %16 = xor i64 %15, %10
  %17 = zext i64 %16 to i128
  %18 = mul nuw i128 %17, 11400714785074694791
  %19 = trunc i128 %18 to i64
  %20 = lshr i128 %18, 64
  %21 = trunc nuw i128 %20 to i64
  %22 = mul nuw nsw i64 %2, 374761393
  %23 = add i64 %22, %19
  %24 = mul i64 %15, -7046029288634856825
  %25 = add i64 %24, %21
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %23
  %28 = zext i64 %27 to i128
  %29 = mul nuw i128 %28, 14029467366897019727
  %30 = trunc i128 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %32 = lshr i128 %29, 64
  %33 = trunc nuw i128 %32 to i64
  %34 = mul i64 %25, -4417276706812531889
  %35 = add i64 %34, %33
  %36 = lshr i64 %30, 37
  %37 = xor i64 %36, %30
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  store i64 %40, ptr %0, align 8, !alias.scope !14
  %41 = lshr i64 %35, 37
  %42 = xor i64 %41, %35
  %43 = mul i64 %42, 1609587929392839161
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  store i64 %45, ptr %31, align 8, !alias.scope !14
  br label %303

46:                                               ; preds = %5
  %47 = icmp samesign ugt i64 %2, 3
  br i1 %47, label %48, label %85

48:                                               ; preds = %46
  %49 = load i32, ptr %1, align 1
  %50 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %51 = getelementptr inbounds i8, ptr %50, i64 -4
  %52 = load i32, ptr %51, align 1
  %53 = zext i32 %52 to i64
  %54 = zext i32 %49 to i64
  %55 = shl nuw i64 %54, 32
  %56 = or disjoint i64 %55, %53
  %57 = xor i64 %56, -5116533133979399234
  %58 = tail call i64 @llvm.bswap.i64(i64 %57)
  %59 = xor i64 %56, 2066345149520216444
  %60 = lshr i64 %58, 51
  %61 = xor i64 %60, %58
  %62 = mul i64 %61, 2654435761
  %63 = add i64 %62, %2
  %64 = lshr i64 %63, 47
  %65 = xor i64 %64, %63
  %66 = mul i64 %65, -4417276706812531889
  %67 = lshr i64 %59, 47
  %68 = xor i64 %67, %59
  %69 = mul i64 %68, -7046029288634856825
  %70 = sub i64 %69, %2
  %71 = lshr i64 %70, 43
  %72 = xor i64 %71, %70
  %73 = mul i64 %72, -8796714831421723037
  %74 = lshr i64 %66, 37
  %75 = xor i64 %74, %66
  %76 = mul i64 %75, 1609587929392839161
  %77 = lshr i64 %76, 32
  %78 = xor i64 %77, %76
  store i64 %78, ptr %0, align 8, !alias.scope !17
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %80 = lshr i64 %73, 37
  %81 = xor i64 %80, %73
  %82 = mul i64 %81, 1609587929392839161
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  store i64 %84, ptr %79, align 8, !alias.scope !17
  br label %303

85:                                               ; preds = %46
  %86 = icmp eq i64 %2, 0
  br i1 %86, label %123, label %87

87:                                               ; preds = %85
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %88 = load i8, ptr %1, align 1, !noalias !20
  %89 = lshr i64 %2, 1
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 %89
  %91 = load i8, ptr %90, align 1, !noalias !20
  %92 = getelementptr i8, ptr %1, i64 %2
  %93 = getelementptr i8, ptr %92, i64 -1
  %94 = load i8, ptr %93, align 1, !noalias !20
  %95 = zext i8 %88 to i32
  %96 = zext i8 %91 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = or disjoint i32 %97, %95
  %99 = zext i8 %94 to i32
  %100 = shl nuw nsw i32 %99, 16
  %101 = or disjoint i32 %98, %100
  %102 = trunc nuw nsw i64 %2 to i32
  %103 = shl nuw nsw i32 %102, 24
  %104 = or disjoint i32 %101, %103
  %105 = xor i32 %104, 963444408
  %106 = zext nneg i32 %105 to i64
  %107 = xor i32 %104, 597969854
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %109 = zext i32 %108 to i64
  %110 = mul i64 %106, -7046029288634856825
  %111 = mul i64 %109, 2870177450012600261
  %112 = lshr i64 %110, 37
  %113 = xor i64 %112, %110
  %114 = mul i64 %113, 1609587929392839161
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  store i64 %116, ptr %0, align 8, !alias.scope !20
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %118 = lshr i64 %111, 37
  %119 = xor i64 %118, %111
  %120 = mul i64 %119, 1609587929392839161
  %121 = lshr i64 %120, 32
  %122 = xor i64 %121, %120
  store i64 %122, ptr %117, align 8, !alias.scope !20
  br label %303

123:                                              ; preds = %85
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !23
  br label %303

124:                                              ; preds = %3
  %125 = icmp ult i64 %2, 129
  br i1 %125, label %126, label %299

126:                                              ; preds = %124
  %127 = mul i64 %2, -7046029288634856825
  %128 = icmp samesign ugt i64 %2, 32
  br i1 %128, label %129, label %244

129:                                              ; preds = %126
  %130 = icmp samesign ugt i64 %2, 64
  br i1 %130, label %131, label %206

131:                                              ; preds = %129
  %132 = icmp samesign ugt i64 %2, 96
  br i1 %132, label %133, label %168

133:                                              ; preds = %131
  %134 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %135 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %136 = getelementptr inbounds i8, ptr %135, i64 -64
  %137 = load i64, ptr %134, align 1
  %138 = tail call noundef i64 @llvm.bswap.i64(i64 %137)
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %140 = load i64, ptr %139, align 1
  %141 = tail call noundef i64 @llvm.bswap.i64(i64 %140)
  %142 = xor i64 %138, 4554437623014685352
  %143 = xor i64 %141, 2111919702937427193
  %144 = zext i64 %142 to i128
  %145 = zext i64 %143 to i128
  %146 = mul nuw i128 %145, %144
  %147 = lshr i128 %146, 64
  %148 = xor i128 %147, %146
  %149 = trunc i128 %148 to i64
  %150 = add i64 %127, %149
  %151 = load i64, ptr %136, align 1
  %152 = tail call noundef i64 @llvm.bswap.i64(i64 %151)
  %153 = getelementptr inbounds i8, ptr %135, i64 -56
  %154 = load i64, ptr %153, align 1
  %155 = tail call noundef i64 @llvm.bswap.i64(i64 %154)
  %156 = add i64 %155, %152
  %157 = xor i64 %150, %156
  %158 = xor i64 %152, 3556072174620004746
  %159 = xor i64 %155, 7238261902898274248
  %160 = zext i64 %158 to i128
  %161 = zext i64 %159 to i128
  %162 = mul nuw i128 %161, %160
  %163 = lshr i128 %162, 64
  %164 = xor i128 %163, %162
  %165 = trunc i128 %164 to i64
  %166 = add i64 %141, %138
  %167 = xor i64 %166, %165
  br label %168

168:                                              ; preds = %133, %131
  %169 = phi i64 [ %157, %133 ], [ %127, %131 ]
  %170 = phi i64 [ %167, %133 ], [ 0, %131 ]
  %171 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %172 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %173 = getelementptr inbounds i8, ptr %172, i64 -48
  %174 = load i64, ptr %171, align 1
  %175 = tail call noundef i64 @llvm.bswap.i64(i64 %174)
  %176 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %177 = load i64, ptr %176, align 1
  %178 = tail call noundef i64 @llvm.bswap.i64(i64 %177)
  %179 = xor i64 %175, -3818837453329782724
  %180 = xor i64 %178, -6688317018830679928
  %181 = zext i64 %179 to i128
  %182 = zext i64 %180 to i128
  %183 = mul nuw i128 %182, %181
  %184 = lshr i128 %183, 64
  %185 = xor i128 %184, %183
  %186 = trunc i128 %185 to i64
  %187 = add i64 %169, %186
  %188 = load i64, ptr %173, align 1
  %189 = tail call noundef i64 @llvm.bswap.i64(i64 %188)
  %190 = getelementptr inbounds i8, ptr %172, i64 -40
  %191 = load i64, ptr %190, align 1
  %192 = tail call noundef i64 @llvm.bswap.i64(i64 %191)
  %193 = add i64 %192, %189
  %194 = xor i64 %187, %193
  %195 = xor i64 %189, 5690594596133299313
  %196 = xor i64 %192, -2833645246901970632
  %197 = zext i64 %195 to i128
  %198 = zext i64 %196 to i128
  %199 = mul nuw i128 %198, %197
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %170, %202
  %204 = add i64 %178, %175
  %205 = xor i64 %203, %204
  br label %206

206:                                              ; preds = %168, %129
  %207 = phi i64 [ %194, %168 ], [ %127, %129 ]
  %208 = phi i64 [ %205, %168 ], [ 0, %129 ]
  %209 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %210 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %211 = getelementptr inbounds i8, ptr %210, i64 -32
  %212 = load i64, ptr %209, align 1
  %213 = tail call noundef i64 @llvm.bswap.i64(i64 %212)
  %214 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %215 = load i64, ptr %214, align 1
  %216 = tail call noundef i64 @llvm.bswap.i64(i64 %215)
  %217 = xor i64 %213, 8711581037947681227
  %218 = xor i64 %216, 2410270004345854594
  %219 = zext i64 %217 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %207, %224
  %226 = load i64, ptr %211, align 1
  %227 = tail call noundef i64 @llvm.bswap.i64(i64 %226)
  %228 = getelementptr inbounds i8, ptr %210, i64 -24
  %229 = load i64, ptr %228, align 1
  %230 = tail call noundef i64 @llvm.bswap.i64(i64 %229)
  %231 = add i64 %230, %227
  %232 = xor i64 %225, %231
  %233 = xor i64 %227, -8204357891075471176
  %234 = xor i64 %230, 5487137525590930912
  %235 = zext i64 %233 to i128
  %236 = zext i64 %234 to i128
  %237 = mul nuw i128 %236, %235
  %238 = lshr i128 %237, 64
  %239 = xor i128 %238, %237
  %240 = trunc i128 %239 to i64
  %241 = add i64 %208, %240
  %242 = add i64 %216, %213
  %243 = xor i64 %241, %242
  br label %244

244:                                              ; preds = %126, %206
  %245 = phi i64 [ %232, %206 ], [ %127, %126 ]
  %246 = phi i64 [ %243, %206 ], [ 0, %126 ]
  %247 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %248 = getelementptr inbounds i8, ptr %247, i64 -16
  %249 = load i64, ptr %1, align 1
  %250 = tail call noundef i64 @llvm.bswap.i64(i64 %249)
  %251 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %252 = load i64, ptr %251, align 1
  %253 = tail call noundef i64 @llvm.bswap.i64(i64 %252)
  %254 = xor i64 %250, -4734510112055689544
  %255 = xor i64 %253, 2066345149520216444
  %256 = zext i64 %254 to i128
  %257 = zext i64 %255 to i128
  %258 = mul nuw i128 %257, %256
  %259 = lshr i128 %258, 64
  %260 = xor i128 %259, %258
  %261 = trunc i128 %260 to i64
  %262 = add i64 %245, %261
  %263 = load i64, ptr %248, align 1
  %264 = tail call noundef i64 @llvm.bswap.i64(i64 %263)
  %265 = getelementptr inbounds i8, ptr %247, i64 -8
  %266 = load i64, ptr %265, align 1
  %267 = tail call noundef i64 @llvm.bswap.i64(i64 %266)
  %268 = add i64 %267, %264
  %269 = xor i64 %262, %268
  %270 = xor i64 %264, -2623469361688619810
  %271 = xor i64 %267, 2262974939099578482
  %272 = zext i64 %270 to i128
  %273 = zext i64 %271 to i128
  %274 = mul nuw i128 %273, %272
  %275 = lshr i128 %274, 64
  %276 = xor i128 %275, %274
  %277 = trunc i128 %276 to i64
  %278 = add i64 %246, %277
  %279 = add i64 %253, %250
  %280 = xor i64 %278, %279
  %281 = add i64 %280, %269
  %282 = mul i64 %269, -7046029288634856825
  %283 = mul i64 %280, -8796714831421723037
  %284 = mul i64 %2, -4417276706812531889
  %285 = add i64 %282, %284
  %286 = add i64 %285, %283
  %287 = lshr i64 %281, 37
  %288 = xor i64 %287, %281
  %289 = mul i64 %288, 1609587929392839161
  %290 = lshr i64 %289, 32
  %291 = xor i64 %290, %289
  store i64 %291, ptr %0, align 8, !alias.scope !26
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %293 = lshr i64 %286, 37
  %294 = xor i64 %293, %286
  %295 = mul i64 %294, 1609587929392839161
  %296 = lshr i64 %295, 32
  %297 = xor i64 %296, %295
  %298 = sub i64 0, %297
  store i64 %298, ptr %292, align 8, !alias.scope !26
  br label %303

299:                                              ; preds = %124
  %300 = icmp ult i64 %2, 241
  br i1 %300, label %301, label %302

301:                                              ; preds = %299
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %303

302:                                              ; preds = %299
  tail call fastcc void @XXH3_hashLong_128b_defaultSecret(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 noundef %2)
  br label %303

303:                                              ; preds = %123, %87, %48, %7, %302, %301, %244
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i64 noundef range(i64 129, 241) %2, ptr noundef readonly %3, i64 noundef %4) unnamed_addr #16 {
  %6 = trunc nuw nsw i64 %2 to i32
  %7 = mul i64 %2, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %9 = load i64, ptr %1, align 1
  %10 = tail call noundef i64 @llvm.bswap.i64(i64 %9)
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = load i64, ptr %11, align 1
  %13 = tail call noundef i64 @llvm.bswap.i64(i64 %12)
  %14 = load i64, ptr %3, align 1
  %15 = tail call noundef i64 @llvm.bswap.i64(i64 %14)
  %16 = add i64 %15, %4
  %17 = xor i64 %16, %10
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %19 = load i64, ptr %18, align 1
  %20 = tail call noundef i64 @llvm.bswap.i64(i64 %19)
  %21 = sub i64 %20, %4
  %22 = xor i64 %21, %13
  %23 = zext i64 %17 to i128
  %24 = zext i64 %22 to i128
  %25 = mul nuw i128 %24, %23
  %26 = lshr i128 %25, 64
  %27 = xor i128 %26, %25
  %28 = trunc i128 %27 to i64
  %29 = add i64 %7, %28
  %30 = load i64, ptr %8, align 1
  %31 = tail call noundef i64 @llvm.bswap.i64(i64 %30)
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = tail call noundef i64 @llvm.bswap.i64(i64 %33)
  %35 = add i64 %34, %31
  %36 = xor i64 %29, %35
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %38 = load i64, ptr %37, align 1
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = add i64 %39, %4
  %41 = xor i64 %40, %31
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %43 = load i64, ptr %42, align 1
  %44 = tail call noundef i64 @llvm.bswap.i64(i64 %43)
  %45 = sub i64 %44, %4
  %46 = xor i64 %45, %34
  %47 = zext i64 %41 to i128
  %48 = zext i64 %46 to i128
  %49 = mul nuw i128 %48, %47
  %50 = lshr i128 %49, 64
  %51 = xor i128 %50, %49
  %52 = trunc i128 %51 to i64
  %53 = add i64 %13, %10
  %54 = xor i64 %53, %52
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %58 = load i64, ptr %55, align 1
  %59 = tail call noundef i64 @llvm.bswap.i64(i64 %58)
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %61 = load i64, ptr %60, align 1
  %62 = tail call noundef i64 @llvm.bswap.i64(i64 %61)
  %63 = load i64, ptr %57, align 1
  %64 = tail call noundef i64 @llvm.bswap.i64(i64 %63)
  %65 = add i64 %64, %4
  %66 = xor i64 %65, %59
  %67 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %68 = load i64, ptr %67, align 1
  %69 = tail call noundef i64 @llvm.bswap.i64(i64 %68)
  %70 = sub i64 %69, %4
  %71 = xor i64 %70, %62
  %72 = zext i64 %66 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %73, %72
  %75 = lshr i128 %74, 64
  %76 = xor i128 %75, %74
  %77 = trunc i128 %76 to i64
  %78 = add i64 %36, %77
  %79 = load i64, ptr %56, align 1
  %80 = tail call noundef i64 @llvm.bswap.i64(i64 %79)
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %82 = load i64, ptr %81, align 1
  %83 = tail call noundef i64 @llvm.bswap.i64(i64 %82)
  %84 = add i64 %83, %80
  %85 = xor i64 %78, %84
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %87 = load i64, ptr %86, align 1
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %87)
  %89 = add i64 %88, %4
  %90 = xor i64 %89, %80
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %92 = load i64, ptr %91, align 1
  %93 = tail call noundef i64 @llvm.bswap.i64(i64 %92)
  %94 = sub i64 %93, %4
  %95 = xor i64 %94, %83
  %96 = zext i64 %90 to i128
  %97 = zext i64 %95 to i128
  %98 = mul nuw i128 %97, %96
  %99 = lshr i128 %98, 64
  %100 = xor i128 %99, %98
  %101 = trunc i128 %100 to i64
  %102 = add i64 %54, %101
  %103 = add i64 %62, %59
  %104 = xor i64 %102, %103
  %105 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %106 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %108 = load i64, ptr %105, align 1
  %109 = tail call noundef i64 @llvm.bswap.i64(i64 %108)
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %111 = load i64, ptr %110, align 1
  %112 = tail call noundef i64 @llvm.bswap.i64(i64 %111)
  %113 = load i64, ptr %107, align 1
  %114 = tail call noundef i64 @llvm.bswap.i64(i64 %113)
  %115 = add i64 %114, %4
  %116 = xor i64 %115, %109
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %118 = load i64, ptr %117, align 1
  %119 = tail call noundef i64 @llvm.bswap.i64(i64 %118)
  %120 = sub i64 %119, %4
  %121 = xor i64 %120, %112
  %122 = zext i64 %116 to i128
  %123 = zext i64 %121 to i128
  %124 = mul nuw i128 %123, %122
  %125 = lshr i128 %124, 64
  %126 = xor i128 %125, %124
  %127 = trunc i128 %126 to i64
  %128 = add i64 %85, %127
  %129 = load i64, ptr %106, align 1
  %130 = tail call noundef i64 @llvm.bswap.i64(i64 %129)
  %131 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %132 = load i64, ptr %131, align 1
  %133 = tail call noundef i64 @llvm.bswap.i64(i64 %132)
  %134 = add i64 %133, %130
  %135 = xor i64 %128, %134
  %136 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %137 = load i64, ptr %136, align 1
  %138 = tail call noundef i64 @llvm.bswap.i64(i64 %137)
  %139 = add i64 %138, %4
  %140 = xor i64 %139, %130
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %142 = load i64, ptr %141, align 1
  %143 = tail call noundef i64 @llvm.bswap.i64(i64 %142)
  %144 = sub i64 %143, %4
  %145 = xor i64 %144, %133
  %146 = zext i64 %140 to i128
  %147 = zext i64 %145 to i128
  %148 = mul nuw i128 %147, %146
  %149 = lshr i128 %148, 64
  %150 = xor i128 %149, %148
  %151 = trunc i128 %150 to i64
  %152 = add i64 %104, %151
  %153 = add i64 %112, %109
  %154 = xor i64 %152, %153
  %155 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %156 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %157 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %158 = load i64, ptr %155, align 1
  %159 = tail call noundef i64 @llvm.bswap.i64(i64 %158)
  %160 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %161 = load i64, ptr %160, align 1
  %162 = tail call noundef i64 @llvm.bswap.i64(i64 %161)
  %163 = load i64, ptr %157, align 1
  %164 = tail call noundef i64 @llvm.bswap.i64(i64 %163)
  %165 = add i64 %164, %4
  %166 = xor i64 %165, %159
  %167 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %168 = load i64, ptr %167, align 1
  %169 = tail call noundef i64 @llvm.bswap.i64(i64 %168)
  %170 = sub i64 %169, %4
  %171 = xor i64 %170, %162
  %172 = zext i64 %166 to i128
  %173 = zext i64 %171 to i128
  %174 = mul nuw i128 %173, %172
  %175 = lshr i128 %174, 64
  %176 = xor i128 %175, %174
  %177 = trunc i128 %176 to i64
  %178 = add i64 %135, %177
  %179 = load i64, ptr %156, align 1
  %180 = tail call noundef i64 @llvm.bswap.i64(i64 %179)
  %181 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %182 = load i64, ptr %181, align 1
  %183 = tail call noundef i64 @llvm.bswap.i64(i64 %182)
  %184 = add i64 %183, %180
  %185 = xor i64 %178, %184
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %187 = load i64, ptr %186, align 1
  %188 = tail call noundef i64 @llvm.bswap.i64(i64 %187)
  %189 = add i64 %188, %4
  %190 = xor i64 %189, %180
  %191 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %192 = load i64, ptr %191, align 1
  %193 = tail call noundef i64 @llvm.bswap.i64(i64 %192)
  %194 = sub i64 %193, %4
  %195 = xor i64 %194, %183
  %196 = zext i64 %190 to i128
  %197 = zext i64 %195 to i128
  %198 = mul nuw i128 %197, %196
  %199 = lshr i128 %198, 64
  %200 = xor i128 %199, %198
  %201 = trunc i128 %200 to i64
  %202 = add i64 %154, %201
  %203 = add i64 %162, %159
  %204 = xor i64 %202, %203
  %205 = lshr i32 %6, 5
  %206 = lshr i64 %185, 37
  %207 = xor i64 %206, %185
  %208 = mul i64 %207, 1609587929392839161
  %209 = lshr i64 %208, 32
  %210 = xor i64 %209, %208
  %211 = lshr i64 %204, 37
  %212 = xor i64 %211, %204
  %213 = mul i64 %212, 1609587929392839161
  %214 = lshr i64 %213, 32
  %215 = xor i64 %214, %213
  %216 = icmp eq i32 %205, 4
  br i1 %216, label %278, label %217

217:                                              ; preds = %5
  %218 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %219 = zext nneg i32 %205 to i64
  br label %220

220:                                              ; preds = %217, %220
  %221 = phi i64 [ 4, %217 ], [ %276, %220 ]
  %222 = phi i64 [ %215, %217 ], [ %275, %220 ]
  %223 = phi i64 [ %210, %217 ], [ %256, %220 ]
  %224 = shl nsw i64 %221, 5
  %225 = getelementptr inbounds nuw i8, ptr %1, i64 %224
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 16
  %227 = getelementptr i8, ptr %218, i64 %224
  %228 = getelementptr i8, ptr %227, i64 -128
  %229 = load i64, ptr %225, align 1
  %230 = tail call noundef i64 @llvm.bswap.i64(i64 %229)
  %231 = getelementptr inbounds nuw i8, ptr %225, i64 8
  %232 = load i64, ptr %231, align 1
  %233 = tail call noundef i64 @llvm.bswap.i64(i64 %232)
  %234 = load i64, ptr %228, align 1
  %235 = tail call noundef i64 @llvm.bswap.i64(i64 %234)
  %236 = add i64 %235, %4
  %237 = xor i64 %236, %230
  %238 = getelementptr i8, ptr %227, i64 -120
  %239 = load i64, ptr %238, align 1
  %240 = tail call noundef i64 @llvm.bswap.i64(i64 %239)
  %241 = sub i64 %240, %4
  %242 = xor i64 %241, %233
  %243 = zext i64 %237 to i128
  %244 = zext i64 %242 to i128
  %245 = mul nuw i128 %244, %243
  %246 = lshr i128 %245, 64
  %247 = xor i128 %246, %245
  %248 = trunc i128 %247 to i64
  %249 = add i64 %223, %248
  %250 = load i64, ptr %226, align 1
  %251 = tail call noundef i64 @llvm.bswap.i64(i64 %250)
  %252 = getelementptr inbounds nuw i8, ptr %225, i64 24
  %253 = load i64, ptr %252, align 1
  %254 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %255 = add i64 %254, %251
  %256 = xor i64 %249, %255
  %257 = getelementptr i8, ptr %227, i64 -112
  %258 = load i64, ptr %257, align 1
  %259 = tail call noundef i64 @llvm.bswap.i64(i64 %258)
  %260 = add i64 %259, %4
  %261 = xor i64 %260, %251
  %262 = getelementptr i8, ptr %227, i64 -104
  %263 = load i64, ptr %262, align 1
  %264 = tail call noundef i64 @llvm.bswap.i64(i64 %263)
  %265 = sub i64 %264, %4
  %266 = xor i64 %265, %254
  %267 = zext i64 %261 to i128
  %268 = zext i64 %266 to i128
  %269 = mul nuw i128 %268, %267
  %270 = lshr i128 %269, 64
  %271 = xor i128 %270, %269
  %272 = trunc i128 %271 to i64
  %273 = add i64 %222, %272
  %274 = add i64 %233, %230
  %275 = xor i64 %273, %274
  %276 = add nuw nsw i64 %221, 1
  %277 = icmp eq i64 %276, %219
  br i1 %277, label %278, label %220

278:                                              ; preds = %220, %5
  %279 = phi i64 [ %210, %5 ], [ %256, %220 ]
  %280 = phi i64 [ %215, %5 ], [ %275, %220 ]
  %281 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %282 = getelementptr inbounds i8, ptr %281, i64 -16
  %283 = getelementptr inbounds i8, ptr %281, i64 -32
  %284 = getelementptr inbounds nuw i8, ptr %3, i64 103
  %285 = load i64, ptr %282, align 1
  %286 = tail call noundef i64 @llvm.bswap.i64(i64 %285)
  %287 = getelementptr inbounds i8, ptr %281, i64 -8
  %288 = load i64, ptr %287, align 1
  %289 = tail call noundef i64 @llvm.bswap.i64(i64 %288)
  %290 = load i64, ptr %284, align 1
  %291 = tail call noundef i64 @llvm.bswap.i64(i64 %290)
  %292 = sub i64 %291, %4
  %293 = xor i64 %292, %286
  %294 = getelementptr inbounds nuw i8, ptr %3, i64 111
  %295 = load i64, ptr %294, align 1
  %296 = tail call noundef i64 @llvm.bswap.i64(i64 %295)
  %297 = add i64 %296, %4
  %298 = xor i64 %297, %289
  %299 = zext i64 %293 to i128
  %300 = zext i64 %298 to i128
  %301 = mul nuw i128 %300, %299
  %302 = lshr i128 %301, 64
  %303 = xor i128 %302, %301
  %304 = trunc i128 %303 to i64
  %305 = add i64 %279, %304
  %306 = load i64, ptr %283, align 1
  %307 = tail call noundef i64 @llvm.bswap.i64(i64 %306)
  %308 = getelementptr inbounds i8, ptr %281, i64 -24
  %309 = load i64, ptr %308, align 1
  %310 = tail call noundef i64 @llvm.bswap.i64(i64 %309)
  %311 = add i64 %310, %307
  %312 = xor i64 %305, %311
  %313 = getelementptr inbounds nuw i8, ptr %3, i64 119
  %314 = load i64, ptr %313, align 1
  %315 = tail call noundef i64 @llvm.bswap.i64(i64 %314)
  %316 = sub i64 %315, %4
  %317 = xor i64 %316, %307
  %318 = getelementptr inbounds nuw i8, ptr %3, i64 127
  %319 = load i64, ptr %318, align 1
  %320 = tail call noundef i64 @llvm.bswap.i64(i64 %319)
  %321 = add i64 %320, %4
  %322 = xor i64 %321, %310
  %323 = zext i64 %317 to i128
  %324 = zext i64 %322 to i128
  %325 = mul nuw i128 %324, %323
  %326 = lshr i128 %325, 64
  %327 = xor i128 %326, %325
  %328 = trunc i128 %327 to i64
  %329 = add i64 %280, %328
  %330 = add i64 %289, %286
  %331 = xor i64 %329, %330
  %332 = add i64 %331, %312
  %333 = mul i64 %312, -7046029288634856825
  %334 = mul i64 %331, -8796714831421723037
  %335 = sub i64 %2, %4
  %336 = mul i64 %335, -4417276706812531889
  %337 = add i64 %333, %336
  %338 = add i64 %337, %334
  %339 = lshr i64 %332, 37
  %340 = xor i64 %339, %332
  %341 = mul i64 %340, 1609587929392839161
  %342 = lshr i64 %341, 32
  %343 = xor i64 %342, %341
  store i64 %343, ptr %0, align 8
  %344 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %345 = lshr i64 %338, 37
  %346 = xor i64 %345, %338
  %347 = mul i64 %346, 1609587929392839161
  %348 = lshr i64 %347, 32
  %349 = xor i64 %348, %347
  %350 = sub i64 0, %349
  store i64 %350, ptr %344, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_hashLong_128b_defaultSecret(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i64 noundef range(i64 241, 0) %2) unnamed_addr #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %4 = lshr i64 %2, 10
  %5 = icmp ult i64 %2, 1024
  br i1 %5, label %163, label %6

6:                                                ; preds = %3, %128
  %7 = phi i64 [ %160, %128 ], [ 2654435761, %3 ]
  %8 = phi i64 [ %156, %128 ], [ 2870177450012600261, %3 ]
  %9 = phi i64 [ %152, %128 ], [ 2246822519, %3 ]
  %10 = phi i64 [ %148, %128 ], [ -8796714831421723037, %3 ]
  %11 = phi i64 [ %144, %128 ], [ 1609587929392839161, %3 ]
  %12 = phi i64 [ %140, %128 ], [ -4417276706812531889, %3 ]
  %13 = phi i64 [ %136, %128 ], [ -7046029288634856825, %3 ]
  %14 = phi i64 [ %132, %128 ], [ 3266489917, %3 ]
  %15 = phi i64 [ %161, %128 ], [ 0, %3 ]
  %16 = shl i64 %15, 10
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  br label %18

18:                                               ; preds = %18, %6
  %19 = phi i64 [ %121, %18 ], [ %8, %6 ]
  %20 = phi i64 [ %125, %18 ], [ %7, %6 ]
  %21 = phi i64 [ %49, %18 ], [ %14, %6 ]
  %22 = phi i64 [ %53, %18 ], [ %13, %6 ]
  %23 = phi i64 [ %97, %18 ], [ %10, %6 ]
  %24 = phi i64 [ %101, %18 ], [ %9, %6 ]
  %25 = phi i64 [ %73, %18 ], [ %12, %6 ]
  %26 = phi i64 [ %77, %18 ], [ %11, %6 ]
  %27 = phi i64 [ %126, %18 ], [ 0, %6 ]
  %28 = shl i64 %27, 6
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %28
  %30 = shl i64 %27, 3
  %31 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %30
  %32 = load i64, ptr %29, align 1, !noalias !30
  %33 = tail call noundef i64 @llvm.bswap.i64(i64 %32)
  %34 = load i64, ptr %31, align 8, !noalias !30
  %35 = tail call noundef i64 @llvm.bswap.i64(i64 %34)
  %36 = xor i64 %35, %33
  %37 = add i64 %33, %22
  %38 = and i64 %36, 4294967295
  %39 = lshr i64 %36, 32
  %40 = mul nuw i64 %38, %39
  %41 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %42 = load i64, ptr %41, align 1, !noalias !30
  %43 = tail call noundef i64 @llvm.bswap.i64(i64 %42)
  %44 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %45 = load i64, ptr %44, align 8, !noalias !30
  %46 = tail call noundef i64 @llvm.bswap.i64(i64 %45)
  %47 = xor i64 %46, %43
  %48 = add i64 %43, %21
  %49 = add i64 %48, %40
  %50 = and i64 %47, 4294967295
  %51 = lshr i64 %47, 32
  %52 = mul nuw i64 %50, %51
  %53 = add i64 %37, %52
  %54 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %55 = load i64, ptr %54, align 1, !noalias !30
  %56 = tail call noundef i64 @llvm.bswap.i64(i64 %55)
  %57 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %58 = load i64, ptr %57, align 8, !noalias !30
  %59 = tail call noundef i64 @llvm.bswap.i64(i64 %58)
  %60 = xor i64 %59, %56
  %61 = add i64 %56, %26
  %62 = and i64 %60, 4294967295
  %63 = lshr i64 %60, 32
  %64 = mul nuw i64 %62, %63
  %65 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %66 = load i64, ptr %65, align 1, !noalias !30
  %67 = tail call noundef i64 @llvm.bswap.i64(i64 %66)
  %68 = getelementptr inbounds nuw i8, ptr %31, i64 24
  %69 = load i64, ptr %68, align 8, !noalias !30
  %70 = tail call noundef i64 @llvm.bswap.i64(i64 %69)
  %71 = xor i64 %70, %67
  %72 = add i64 %67, %25
  %73 = add i64 %72, %64
  %74 = and i64 %71, 4294967295
  %75 = lshr i64 %71, 32
  %76 = mul nuw i64 %74, %75
  %77 = add i64 %61, %76
  %78 = getelementptr inbounds nuw i8, ptr %29, i64 32
  %79 = load i64, ptr %78, align 1, !noalias !30
  %80 = tail call noundef i64 @llvm.bswap.i64(i64 %79)
  %81 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %82 = load i64, ptr %81, align 8, !noalias !30
  %83 = tail call noundef i64 @llvm.bswap.i64(i64 %82)
  %84 = xor i64 %83, %80
  %85 = add i64 %80, %24
  %86 = and i64 %84, 4294967295
  %87 = lshr i64 %84, 32
  %88 = mul nuw i64 %86, %87
  %89 = getelementptr inbounds nuw i8, ptr %29, i64 40
  %90 = load i64, ptr %89, align 1, !noalias !30
  %91 = tail call noundef i64 @llvm.bswap.i64(i64 %90)
  %92 = getelementptr inbounds nuw i8, ptr %31, i64 40
  %93 = load i64, ptr %92, align 8, !noalias !30
  %94 = tail call noundef i64 @llvm.bswap.i64(i64 %93)
  %95 = xor i64 %94, %91
  %96 = add i64 %91, %23
  %97 = add i64 %96, %88
  %98 = and i64 %95, 4294967295
  %99 = lshr i64 %95, 32
  %100 = mul nuw i64 %98, %99
  %101 = add i64 %85, %100
  %102 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %103 = load i64, ptr %102, align 1, !noalias !30
  %104 = tail call noundef i64 @llvm.bswap.i64(i64 %103)
  %105 = getelementptr inbounds nuw i8, ptr %31, i64 48
  %106 = load i64, ptr %105, align 8, !noalias !30
  %107 = tail call noundef i64 @llvm.bswap.i64(i64 %106)
  %108 = xor i64 %107, %104
  %109 = add i64 %104, %20
  %110 = and i64 %108, 4294967295
  %111 = lshr i64 %108, 32
  %112 = mul nuw i64 %110, %111
  %113 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %114 = load i64, ptr %113, align 1, !noalias !30
  %115 = tail call noundef i64 @llvm.bswap.i64(i64 %114)
  %116 = getelementptr inbounds nuw i8, ptr %31, i64 56
  %117 = load i64, ptr %116, align 8, !noalias !30
  %118 = tail call noundef i64 @llvm.bswap.i64(i64 %117)
  %119 = xor i64 %118, %115
  %120 = add i64 %115, %19
  %121 = add i64 %120, %112
  %122 = and i64 %119, 4294967295
  %123 = lshr i64 %119, 32
  %124 = mul nuw i64 %122, %123
  %125 = add i64 %109, %124
  %126 = add nuw nsw i64 %27, 1
  %127 = icmp eq i64 %126, 16
  br i1 %127, label %128, label %18

128:                                              ; preds = %18
  %129 = lshr i64 %49, 47
  %130 = xor i64 %49, %129
  %131 = xor i64 %130, -4329134394285701654
  %132 = mul i64 %131, 2654435761
  %133 = lshr i64 %53, 47
  %134 = xor i64 %53, %133
  %135 = xor i64 %134, -1485321483350670907
  %136 = mul i64 %135, 2654435761
  %137 = lshr i64 %73, 47
  %138 = xor i64 %73, %137
  %139 = xor i64 %138, 5321830579834785047
  %140 = mul i64 %139, 2654435761
  %141 = lshr i64 %77, 47
  %142 = xor i64 %77, %141
  %143 = xor i64 %142, -7032137544937171245
  %144 = mul i64 %143, 2654435761
  %145 = lshr i64 %97, 47
  %146 = xor i64 %97, %145
  %147 = xor i64 %146, -242834301215959509
  %148 = mul i64 %147, 2654435761
  %149 = lshr i64 %101, 47
  %150 = xor i64 %101, %149
  %151 = xor i64 %150, -3588858202114426737
  %152 = mul i64 %151, 2654435761
  %153 = lshr i64 %121, 47
  %154 = xor i64 %121, %153
  %155 = xor i64 %154, 2883454493032893253
  %156 = mul i64 %155, 2654435761
  %157 = lshr i64 %125, 47
  %158 = xor i64 %125, %157
  %159 = xor i64 %158, 9097354517224871855
  %160 = mul i64 %159, 2654435761
  %161 = add nuw nsw i64 %15, 1
  %162 = icmp eq i64 %161, %4
  br i1 %162, label %163, label %6

163:                                              ; preds = %128, %3
  %164 = phi i64 [ 2654435761, %3 ], [ %160, %128 ]
  %165 = phi i64 [ 2870177450012600261, %3 ], [ %156, %128 ]
  %166 = phi i64 [ 2246822519, %3 ], [ %152, %128 ]
  %167 = phi i64 [ -8796714831421723037, %3 ], [ %148, %128 ]
  %168 = phi i64 [ 1609587929392839161, %3 ], [ %144, %128 ]
  %169 = phi i64 [ -4417276706812531889, %3 ], [ %140, %128 ]
  %170 = phi i64 [ -7046029288634856825, %3 ], [ %136, %128 ]
  %171 = phi i64 [ 3266489917, %3 ], [ %132, %128 ]
  %172 = and i64 %2, -1024
  %173 = and i64 %2, 1023
  %174 = lshr i64 %173, 6
  %175 = getelementptr inbounds nuw i8, ptr %1, i64 %172
  %176 = icmp samesign ult i64 %173, 64
  br i1 %176, label %287, label %177

177:                                              ; preds = %163, %177
  %178 = phi i64 [ %280, %177 ], [ %165, %163 ]
  %179 = phi i64 [ %284, %177 ], [ %164, %163 ]
  %180 = phi i64 [ %208, %177 ], [ %171, %163 ]
  %181 = phi i64 [ %212, %177 ], [ %170, %163 ]
  %182 = phi i64 [ %256, %177 ], [ %167, %163 ]
  %183 = phi i64 [ %260, %177 ], [ %166, %163 ]
  %184 = phi i64 [ %232, %177 ], [ %169, %163 ]
  %185 = phi i64 [ %236, %177 ], [ %168, %163 ]
  %186 = phi i64 [ %285, %177 ], [ 0, %163 ]
  %187 = shl i64 %186, 6
  %188 = getelementptr inbounds nuw i8, ptr %175, i64 %187
  %189 = shl i64 %186, 3
  %190 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %189
  %191 = load i64, ptr %188, align 1, !noalias !30
  %192 = tail call noundef i64 @llvm.bswap.i64(i64 %191)
  %193 = load i64, ptr %190, align 8, !noalias !30
  %194 = tail call noundef i64 @llvm.bswap.i64(i64 %193)
  %195 = xor i64 %194, %192
  %196 = add i64 %192, %181
  %197 = and i64 %195, 4294967295
  %198 = lshr i64 %195, 32
  %199 = mul nuw i64 %197, %198
  %200 = getelementptr inbounds nuw i8, ptr %188, i64 8
  %201 = load i64, ptr %200, align 1, !noalias !30
  %202 = tail call noundef i64 @llvm.bswap.i64(i64 %201)
  %203 = getelementptr inbounds nuw i8, ptr %190, i64 8
  %204 = load i64, ptr %203, align 8, !noalias !30
  %205 = tail call noundef i64 @llvm.bswap.i64(i64 %204)
  %206 = xor i64 %205, %202
  %207 = add i64 %202, %180
  %208 = add i64 %207, %199
  %209 = and i64 %206, 4294967295
  %210 = lshr i64 %206, 32
  %211 = mul nuw i64 %209, %210
  %212 = add i64 %196, %211
  %213 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %214 = load i64, ptr %213, align 1, !noalias !30
  %215 = tail call noundef i64 @llvm.bswap.i64(i64 %214)
  %216 = getelementptr inbounds nuw i8, ptr %190, i64 16
  %217 = load i64, ptr %216, align 8, !noalias !30
  %218 = tail call noundef i64 @llvm.bswap.i64(i64 %217)
  %219 = xor i64 %218, %215
  %220 = add i64 %215, %185
  %221 = and i64 %219, 4294967295
  %222 = lshr i64 %219, 32
  %223 = mul nuw i64 %221, %222
  %224 = getelementptr inbounds nuw i8, ptr %188, i64 24
  %225 = load i64, ptr %224, align 1, !noalias !30
  %226 = tail call noundef i64 @llvm.bswap.i64(i64 %225)
  %227 = getelementptr inbounds nuw i8, ptr %190, i64 24
  %228 = load i64, ptr %227, align 8, !noalias !30
  %229 = tail call noundef i64 @llvm.bswap.i64(i64 %228)
  %230 = xor i64 %229, %226
  %231 = add i64 %226, %184
  %232 = add i64 %231, %223
  %233 = and i64 %230, 4294967295
  %234 = lshr i64 %230, 32
  %235 = mul nuw i64 %233, %234
  %236 = add i64 %220, %235
  %237 = getelementptr inbounds nuw i8, ptr %188, i64 32
  %238 = load i64, ptr %237, align 1, !noalias !30
  %239 = tail call noundef i64 @llvm.bswap.i64(i64 %238)
  %240 = getelementptr inbounds nuw i8, ptr %190, i64 32
  %241 = load i64, ptr %240, align 8, !noalias !30
  %242 = tail call noundef i64 @llvm.bswap.i64(i64 %241)
  %243 = xor i64 %242, %239
  %244 = add i64 %239, %183
  %245 = and i64 %243, 4294967295
  %246 = lshr i64 %243, 32
  %247 = mul nuw i64 %245, %246
  %248 = getelementptr inbounds nuw i8, ptr %188, i64 40
  %249 = load i64, ptr %248, align 1, !noalias !30
  %250 = tail call noundef i64 @llvm.bswap.i64(i64 %249)
  %251 = getelementptr inbounds nuw i8, ptr %190, i64 40
  %252 = load i64, ptr %251, align 8, !noalias !30
  %253 = tail call noundef i64 @llvm.bswap.i64(i64 %252)
  %254 = xor i64 %253, %250
  %255 = add i64 %250, %182
  %256 = add i64 %255, %247
  %257 = and i64 %254, 4294967295
  %258 = lshr i64 %254, 32
  %259 = mul nuw i64 %257, %258
  %260 = add i64 %244, %259
  %261 = getelementptr inbounds nuw i8, ptr %188, i64 48
  %262 = load i64, ptr %261, align 1, !noalias !30
  %263 = tail call noundef i64 @llvm.bswap.i64(i64 %262)
  %264 = getelementptr inbounds nuw i8, ptr %190, i64 48
  %265 = load i64, ptr %264, align 8, !noalias !30
  %266 = tail call noundef i64 @llvm.bswap.i64(i64 %265)
  %267 = xor i64 %266, %263
  %268 = add i64 %263, %179
  %269 = and i64 %267, 4294967295
  %270 = lshr i64 %267, 32
  %271 = mul nuw i64 %269, %270
  %272 = getelementptr inbounds nuw i8, ptr %188, i64 56
  %273 = load i64, ptr %272, align 1, !noalias !30
  %274 = tail call noundef i64 @llvm.bswap.i64(i64 %273)
  %275 = getelementptr inbounds nuw i8, ptr %190, i64 56
  %276 = load i64, ptr %275, align 8, !noalias !30
  %277 = tail call noundef i64 @llvm.bswap.i64(i64 %276)
  %278 = xor i64 %277, %274
  %279 = add i64 %274, %178
  %280 = add i64 %279, %271
  %281 = and i64 %278, 4294967295
  %282 = lshr i64 %278, 32
  %283 = mul nuw i64 %281, %282
  %284 = add i64 %268, %283
  %285 = add nuw nsw i64 %186, 1
  %286 = icmp eq i64 %285, %174
  br i1 %286, label %287, label %177

287:                                              ; preds = %177, %163
  %288 = phi i64 [ %164, %163 ], [ %284, %177 ]
  %289 = phi i64 [ %165, %163 ], [ %280, %177 ]
  %290 = phi i64 [ %166, %163 ], [ %260, %177 ]
  %291 = phi i64 [ %167, %163 ], [ %256, %177 ]
  %292 = phi i64 [ %168, %163 ], [ %236, %177 ]
  %293 = phi i64 [ %169, %163 ], [ %232, %177 ]
  %294 = phi i64 [ %170, %163 ], [ %212, %177 ]
  %295 = phi i64 [ %171, %163 ], [ %208, %177 ]
  %296 = and i64 %2, 63
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %372, label %298

298:                                              ; preds = %287
  %299 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %300 = getelementptr inbounds i8, ptr %299, i64 -64
  %301 = load i64, ptr %300, align 1, !noalias !30
  %302 = tail call noundef i64 @llvm.bswap.i64(i64 %301)
  %303 = xor i64 %302, -1556992608276218209
  %304 = add i64 %302, %294
  %305 = and i64 %303, 4294967295
  %306 = lshr i64 %303, 32
  %307 = mul nuw i64 %305, %306
  %308 = getelementptr inbounds i8, ptr %299, i64 -56
  %309 = load i64, ptr %308, align 1, !noalias !30
  %310 = tail call noundef i64 @llvm.bswap.i64(i64 %309)
  %311 = xor i64 %310, -4196251135427498811
  %312 = add i64 %310, %295
  %313 = add i64 %312, %307
  %314 = and i64 %311, 4294967295
  %315 = lshr i64 %311, 32
  %316 = mul nuw i64 %314, %315
  %317 = add i64 %304, %316
  %318 = getelementptr inbounds i8, ptr %299, i64 -48
  %319 = load i64, ptr %318, align 1, !noalias !30
  %320 = tail call noundef i64 @llvm.bswap.i64(i64 %319)
  %321 = xor i64 %320, 1723580219865931905
  %322 = add i64 %320, %292
  %323 = and i64 %321, 4294967295
  %324 = lshr i64 %321, 32
  %325 = mul nuw i64 %323, %324
  %326 = getelementptr inbounds i8, ptr %299, i64 -40
  %327 = load i64, ptr %326, align 1, !noalias !30
  %328 = tail call noundef i64 @llvm.bswap.i64(i64 %327)
  %329 = xor i64 %328, -3221803331004277491
  %330 = add i64 %328, %293
  %331 = add i64 %330, %325
  %332 = and i64 %329, 4294967295
  %333 = lshr i64 %329, 32
  %334 = mul nuw i64 %332, %333
  %335 = add i64 %322, %334
  %336 = getelementptr inbounds i8, ptr %299, i64 -32
  %337 = load i64, ptr %336, align 1, !noalias !30
  %338 = tail call noundef i64 @llvm.bswap.i64(i64 %337)
  %339 = xor i64 %338, 3143064850383918358
  %340 = add i64 %338, %290
  %341 = and i64 %339, 4294967295
  %342 = lshr i64 %339, 32
  %343 = mul nuw i64 %341, %342
  %344 = getelementptr inbounds i8, ptr %299, i64 -24
  %345 = load i64, ptr %344, align 1, !noalias !30
  %346 = tail call noundef i64 @llvm.bswap.i64(i64 %345)
  %347 = xor i64 %346, -8071399103737053674
  %348 = add i64 %346, %291
  %349 = add i64 %348, %343
  %350 = and i64 %347, 4294967295
  %351 = lshr i64 %347, 32
  %352 = mul nuw i64 %350, %351
  %353 = add i64 %340, %352
  %354 = getelementptr inbounds i8, ptr %299, i64 -16
  %355 = load i64, ptr %354, align 1, !noalias !30
  %356 = tail call noundef i64 @llvm.bswap.i64(i64 %355)
  %357 = xor i64 %356, 5030012605302946040
  %358 = add i64 %356, %288
  %359 = and i64 %357, 4294967295
  %360 = lshr i64 %357, 32
  %361 = mul nuw i64 %359, %360
  %362 = getelementptr inbounds i8, ptr %299, i64 -8
  %363 = load i64, ptr %362, align 1, !noalias !30
  %364 = tail call noundef i64 @llvm.bswap.i64(i64 %363)
  %365 = xor i64 %364, -5825401622958753077
  %366 = add i64 %364, %289
  %367 = add i64 %366, %361
  %368 = and i64 %365, 4294967295
  %369 = lshr i64 %365, 32
  %370 = mul nuw i64 %368, %369
  %371 = add i64 %358, %370
  br label %372

372:                                              ; preds = %287, %298
  %373 = phi i64 [ %288, %287 ], [ %371, %298 ]
  %374 = phi i64 [ %289, %287 ], [ %367, %298 ]
  %375 = phi i64 [ %290, %287 ], [ %353, %298 ]
  %376 = phi i64 [ %291, %287 ], [ %349, %298 ]
  %377 = phi i64 [ %292, %287 ], [ %335, %298 ]
  %378 = phi i64 [ %293, %287 ], [ %331, %298 ]
  %379 = phi i64 [ %294, %287 ], [ %317, %298 ]
  %380 = phi i64 [ %295, %287 ], [ %313, %298 ]
  %381 = mul i64 %2, -7046029288634856825
  %382 = xor i64 %380, 7914194659941938988
  %383 = xor i64 %379, -6611157965513653271
  %384 = zext i64 %382 to i128
  %385 = zext i64 %383 to i128
  %386 = mul nuw i128 %384, %385
  %387 = lshr i128 %386, 64
  %388 = xor i128 %387, %386
  %389 = trunc i128 %388 to i64
  %390 = xor i64 %378, -1839215637059881052
  %391 = xor i64 %377, -3433288310154277810
  %392 = zext i64 %390 to i128
  %393 = zext i64 %391 to i128
  %394 = mul nuw i128 %392, %393
  %395 = lshr i128 %394, 64
  %396 = xor i128 %395, %394
  %397 = trunc i128 %396 to i64
  %398 = xor i64 %376, 5046485836271438973
  %399 = xor i64 %375, -8055285457383852172
  %400 = zext i64 %398 to i128
  %401 = zext i64 %399 to i128
  %402 = mul nuw i128 %400, %401
  %403 = lshr i128 %402, 64
  %404 = xor i128 %403, %402
  %405 = trunc i128 %404 to i64
  %406 = xor i64 %374, 5920048007935066598
  %407 = xor i64 %373, 7336514198459093435
  %408 = zext i64 %406 to i128
  %409 = zext i64 %407 to i128
  %410 = mul nuw i128 %408, %409
  %411 = lshr i128 %410, 64
  %412 = xor i128 %411, %410
  %413 = trunc i128 %412 to i64
  %414 = add i64 %381, %413
  %415 = add i64 %414, %405
  %416 = add i64 %415, %397
  %417 = add i64 %416, %389
  %418 = lshr i64 %417, 37
  %419 = xor i64 %418, %417
  %420 = mul i64 %419, 1609587929392839161
  %421 = lshr i64 %420, 32
  %422 = xor i64 %421, %420
  %423 = mul i64 %2, -4417276706812531889
  %424 = xor i64 %423, -1
  %425 = xor i64 %380, -2753530472436770380
  %426 = xor i64 %379, 3784058077962335096
  %427 = zext i64 %425 to i128
  %428 = zext i64 %426 to i128
  %429 = mul nuw i128 %427, %428
  %430 = lshr i128 %429, 64
  %431 = xor i128 %430, %429
  %432 = trunc i128 %431 to i64
  %433 = xor i64 %378, -360392965937173549
  %434 = xor i64 %377, -5237161843349560557
  %435 = zext i64 %433 to i128
  %436 = zext i64 %434 to i128
  %437 = mul nuw i128 %435, %436
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = xor i64 %376, 2965150961192524528
  %442 = xor i64 %375, 9032178055121889492
  %443 = zext i64 %441 to i128
  %444 = zext i64 %442 to i128
  %445 = mul nuw i128 %443, %444
  %446 = lshr i128 %445, 64
  %447 = xor i128 %446, %445
  %448 = trunc i128 %447 to i64
  %449 = xor i64 %374, 8850058120466833735
  %450 = xor i64 %373, -7669846995664752176
  %451 = zext i64 %449 to i128
  %452 = zext i64 %450 to i128
  %453 = mul nuw i128 %451, %452
  %454 = lshr i128 %453, 64
  %455 = xor i128 %454, %453
  %456 = trunc i128 %455 to i64
  %457 = add i64 %456, %424
  %458 = add i64 %457, %448
  %459 = add i64 %458, %440
  %460 = add i64 %459, %432
  %461 = lshr i64 %460, 37
  %462 = xor i64 %461, %460
  %463 = mul i64 %462, 1609587929392839161
  %464 = lshr i64 %463, 32
  %465 = xor i64 %464, %463
  store i64 %422, ptr %0, align 8, !alias.scope !30
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %465, ptr %466, align 8, !alias.scope !30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @XXH3_128bits_withSecret(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #15 {
  %6 = icmp ult i64 %2, 17
  br i1 %6, label %7, label %137

7:                                                ; preds = %5
  %8 = icmp samesign ugt i64 %2, 8
  br i1 %8, label %9, label %51

9:                                                ; preds = %7
  %10 = load i64, ptr %1, align 1
  %11 = load i64, ptr %3, align 1
  %12 = xor i64 %11, %10
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %15 = getelementptr inbounds i8, ptr %14, i64 -8
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %21 = xor i64 %20, %13
  %22 = zext i64 %21 to i128
  %23 = mul nuw i128 %22, 11400714785074694791
  %24 = trunc i128 %23 to i64
  %25 = lshr i128 %23, 64
  %26 = trunc nuw i128 %25 to i64
  %27 = mul nuw nsw i64 %2, 374761393
  %28 = add i64 %27, %24
  %29 = mul i64 %20, -7046029288634856825
  %30 = add i64 %29, %26
  %31 = lshr i64 %30, 32
  %32 = xor i64 %31, %28
  %33 = zext i64 %32 to i128
  %34 = mul nuw i128 %33, 14029467366897019727
  %35 = trunc i128 %34 to i64
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %37 = lshr i128 %34, 64
  %38 = trunc nuw i128 %37 to i64
  %39 = mul i64 %30, -4417276706812531889
  %40 = add i64 %39, %38
  %41 = lshr i64 %35, 37
  %42 = xor i64 %41, %35
  %43 = mul i64 %42, 1609587929392839161
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  store i64 %45, ptr %0, align 8, !alias.scope !33
  %46 = lshr i64 %40, 37
  %47 = xor i64 %46, %40
  %48 = mul i64 %47, 1609587929392839161
  %49 = lshr i64 %48, 32
  %50 = xor i64 %49, %48
  store i64 %50, ptr %36, align 8, !alias.scope !33
  br label %363

51:                                               ; preds = %7
  %52 = icmp samesign ugt i64 %2, 3
  br i1 %52, label %53, label %94

53:                                               ; preds = %51
  %54 = load i32, ptr %1, align 1
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %56 = getelementptr inbounds i8, ptr %55, i64 -4
  %57 = load i32, ptr %56, align 1
  %58 = zext i32 %57 to i64
  %59 = zext i32 %54 to i64
  %60 = shl nuw i64 %59, 32
  %61 = or disjoint i64 %60, %58
  %62 = load i64, ptr %3, align 1
  %63 = xor i64 %61, %62
  %64 = tail call i64 @llvm.bswap.i64(i64 %63)
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %66 = load i64, ptr %65, align 1
  %67 = tail call noundef i64 @llvm.bswap.i64(i64 %66)
  %68 = xor i64 %67, %61
  %69 = lshr i64 %64, 51
  %70 = xor i64 %69, %64
  %71 = mul i64 %70, 2654435761
  %72 = add i64 %71, %2
  %73 = lshr i64 %72, 47
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, -4417276706812531889
  %76 = lshr i64 %68, 47
  %77 = xor i64 %76, %68
  %78 = mul i64 %77, -7046029288634856825
  %79 = sub i64 %78, %2
  %80 = lshr i64 %79, 43
  %81 = xor i64 %80, %79
  %82 = mul i64 %81, -8796714831421723037
  %83 = lshr i64 %75, 37
  %84 = xor i64 %83, %75
  %85 = mul i64 %84, 1609587929392839161
  %86 = lshr i64 %85, 32
  %87 = xor i64 %86, %85
  store i64 %87, ptr %0, align 8, !alias.scope !36
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %89 = lshr i64 %82, 37
  %90 = xor i64 %89, %82
  %91 = mul i64 %90, 1609587929392839161
  %92 = lshr i64 %91, 32
  %93 = xor i64 %92, %91
  store i64 %93, ptr %88, align 8, !alias.scope !36
  br label %363

94:                                               ; preds = %51
  %95 = icmp eq i64 %2, 0
  br i1 %95, label %136, label %96

96:                                               ; preds = %94
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %97 = load i8, ptr %1, align 1, !noalias !39
  %98 = lshr i64 %2, 1
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 %98
  %100 = load i8, ptr %99, align 1, !noalias !39
  %101 = getelementptr i8, ptr %1, i64 %2
  %102 = getelementptr i8, ptr %101, i64 -1
  %103 = load i8, ptr %102, align 1, !noalias !39
  %104 = zext i8 %97 to i32
  %105 = zext i8 %100 to i32
  %106 = shl nuw nsw i32 %105, 8
  %107 = or disjoint i32 %106, %104
  %108 = zext i8 %103 to i32
  %109 = shl nuw nsw i32 %108, 16
  %110 = or disjoint i32 %107, %109
  %111 = trunc nuw nsw i64 %2 to i32
  %112 = shl nuw nsw i32 %111, 24
  %113 = or disjoint i32 %110, %112
  %114 = load i32, ptr %3, align 1
  %115 = tail call noundef i32 @llvm.bswap.i32(i32 %114)
  %116 = xor i32 %113, %115
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %119 = load i32, ptr %118, align 1
  %120 = xor i32 %113, %119
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  %122 = zext i32 %121 to i64
  %123 = mul i64 %117, -7046029288634856825
  %124 = mul i64 %122, 2870177450012600261
  %125 = lshr i64 %123, 37
  %126 = xor i64 %125, %123
  %127 = mul i64 %126, 1609587929392839161
  %128 = lshr i64 %127, 32
  %129 = xor i64 %128, %127
  store i64 %129, ptr %0, align 8, !alias.scope !39
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %131 = lshr i64 %124, 37
  %132 = xor i64 %131, %124
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  store i64 %135, ptr %130, align 8, !alias.scope !39
  br label %363

136:                                              ; preds = %94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !42
  br label %363

137:                                              ; preds = %5
  %138 = icmp ult i64 %2, 129
  br i1 %138, label %139, label %359

139:                                              ; preds = %137
  %140 = mul i64 %2, -7046029288634856825
  %141 = icmp samesign ugt i64 %2, 32
  br i1 %141, label %142, label %293

142:                                              ; preds = %139
  %143 = icmp samesign ugt i64 %2, 64
  br i1 %143, label %144, label %243

144:                                              ; preds = %142
  %145 = icmp samesign ugt i64 %2, 96
  br i1 %145, label %146, label %193

146:                                              ; preds = %144
  %147 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %148 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %149 = getelementptr inbounds i8, ptr %148, i64 -64
  %150 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %151 = load i64, ptr %147, align 1
  %152 = tail call noundef i64 @llvm.bswap.i64(i64 %151)
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %154 = load i64, ptr %153, align 1
  %155 = tail call noundef i64 @llvm.bswap.i64(i64 %154)
  %156 = load i64, ptr %150, align 1
  %157 = tail call noundef i64 @llvm.bswap.i64(i64 %156)
  %158 = xor i64 %157, %152
  %159 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %160 = load i64, ptr %159, align 1
  %161 = tail call noundef i64 @llvm.bswap.i64(i64 %160)
  %162 = xor i64 %161, %155
  %163 = zext i64 %158 to i128
  %164 = zext i64 %162 to i128
  %165 = mul nuw i128 %164, %163
  %166 = lshr i128 %165, 64
  %167 = xor i128 %166, %165
  %168 = trunc i128 %167 to i64
  %169 = add i64 %140, %168
  %170 = load i64, ptr %149, align 1
  %171 = tail call noundef i64 @llvm.bswap.i64(i64 %170)
  %172 = getelementptr inbounds i8, ptr %148, i64 -56
  %173 = load i64, ptr %172, align 1
  %174 = tail call noundef i64 @llvm.bswap.i64(i64 %173)
  %175 = add i64 %174, %171
  %176 = xor i64 %169, %175
  %177 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %178 = load i64, ptr %177, align 1
  %179 = tail call noundef i64 @llvm.bswap.i64(i64 %178)
  %180 = xor i64 %179, %171
  %181 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %182 = load i64, ptr %181, align 1
  %183 = tail call noundef i64 @llvm.bswap.i64(i64 %182)
  %184 = xor i64 %183, %174
  %185 = zext i64 %180 to i128
  %186 = zext i64 %184 to i128
  %187 = mul nuw i128 %186, %185
  %188 = lshr i128 %187, 64
  %189 = xor i128 %188, %187
  %190 = trunc i128 %189 to i64
  %191 = add i64 %155, %152
  %192 = xor i64 %191, %190
  br label %193

193:                                              ; preds = %146, %144
  %194 = phi i64 [ %176, %146 ], [ %140, %144 ]
  %195 = phi i64 [ %192, %146 ], [ 0, %144 ]
  %196 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %197 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %198 = getelementptr inbounds i8, ptr %197, i64 -48
  %199 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %200 = load i64, ptr %196, align 1
  %201 = tail call noundef i64 @llvm.bswap.i64(i64 %200)
  %202 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %203 = load i64, ptr %202, align 1
  %204 = tail call noundef i64 @llvm.bswap.i64(i64 %203)
  %205 = load i64, ptr %199, align 1
  %206 = tail call noundef i64 @llvm.bswap.i64(i64 %205)
  %207 = xor i64 %206, %201
  %208 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %209 = load i64, ptr %208, align 1
  %210 = tail call noundef i64 @llvm.bswap.i64(i64 %209)
  %211 = xor i64 %210, %204
  %212 = zext i64 %207 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %194, %217
  %219 = load i64, ptr %198, align 1
  %220 = tail call noundef i64 @llvm.bswap.i64(i64 %219)
  %221 = getelementptr inbounds i8, ptr %197, i64 -40
  %222 = load i64, ptr %221, align 1
  %223 = tail call noundef i64 @llvm.bswap.i64(i64 %222)
  %224 = add i64 %223, %220
  %225 = xor i64 %218, %224
  %226 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %227 = load i64, ptr %226, align 1
  %228 = tail call noundef i64 @llvm.bswap.i64(i64 %227)
  %229 = xor i64 %228, %220
  %230 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %231 = load i64, ptr %230, align 1
  %232 = tail call noundef i64 @llvm.bswap.i64(i64 %231)
  %233 = xor i64 %232, %223
  %234 = zext i64 %229 to i128
  %235 = zext i64 %233 to i128
  %236 = mul nuw i128 %235, %234
  %237 = lshr i128 %236, 64
  %238 = xor i128 %237, %236
  %239 = trunc i128 %238 to i64
  %240 = add i64 %195, %239
  %241 = add i64 %204, %201
  %242 = xor i64 %240, %241
  br label %243

243:                                              ; preds = %193, %142
  %244 = phi i64 [ %225, %193 ], [ %140, %142 ]
  %245 = phi i64 [ %242, %193 ], [ 0, %142 ]
  %246 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %247 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %248 = getelementptr inbounds i8, ptr %247, i64 -32
  %249 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %250 = load i64, ptr %246, align 1
  %251 = tail call noundef i64 @llvm.bswap.i64(i64 %250)
  %252 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %253 = load i64, ptr %252, align 1
  %254 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %255 = load i64, ptr %249, align 1
  %256 = tail call noundef i64 @llvm.bswap.i64(i64 %255)
  %257 = xor i64 %256, %251
  %258 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %259 = load i64, ptr %258, align 1
  %260 = tail call noundef i64 @llvm.bswap.i64(i64 %259)
  %261 = xor i64 %260, %254
  %262 = zext i64 %257 to i128
  %263 = zext i64 %261 to i128
  %264 = mul nuw i128 %263, %262
  %265 = lshr i128 %264, 64
  %266 = xor i128 %265, %264
  %267 = trunc i128 %266 to i64
  %268 = add i64 %244, %267
  %269 = load i64, ptr %248, align 1
  %270 = tail call noundef i64 @llvm.bswap.i64(i64 %269)
  %271 = getelementptr inbounds i8, ptr %247, i64 -24
  %272 = load i64, ptr %271, align 1
  %273 = tail call noundef i64 @llvm.bswap.i64(i64 %272)
  %274 = add i64 %273, %270
  %275 = xor i64 %268, %274
  %276 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %277 = load i64, ptr %276, align 1
  %278 = tail call noundef i64 @llvm.bswap.i64(i64 %277)
  %279 = xor i64 %278, %270
  %280 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %281 = load i64, ptr %280, align 1
  %282 = tail call noundef i64 @llvm.bswap.i64(i64 %281)
  %283 = xor i64 %282, %273
  %284 = zext i64 %279 to i128
  %285 = zext i64 %283 to i128
  %286 = mul nuw i128 %285, %284
  %287 = lshr i128 %286, 64
  %288 = xor i128 %287, %286
  %289 = trunc i128 %288 to i64
  %290 = add i64 %245, %289
  %291 = add i64 %254, %251
  %292 = xor i64 %290, %291
  br label %293

293:                                              ; preds = %139, %243
  %294 = phi i64 [ %275, %243 ], [ %140, %139 ]
  %295 = phi i64 [ %292, %243 ], [ 0, %139 ]
  %296 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %297 = getelementptr inbounds i8, ptr %296, i64 -16
  %298 = load i64, ptr %1, align 1
  %299 = tail call noundef i64 @llvm.bswap.i64(i64 %298)
  %300 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %301 = load i64, ptr %300, align 1
  %302 = tail call noundef i64 @llvm.bswap.i64(i64 %301)
  %303 = load i64, ptr %3, align 1
  %304 = tail call noundef i64 @llvm.bswap.i64(i64 %303)
  %305 = xor i64 %304, %299
  %306 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %307 = load i64, ptr %306, align 1
  %308 = tail call noundef i64 @llvm.bswap.i64(i64 %307)
  %309 = xor i64 %308, %302
  %310 = zext i64 %305 to i128
  %311 = zext i64 %309 to i128
  %312 = mul nuw i128 %311, %310
  %313 = lshr i128 %312, 64
  %314 = xor i128 %313, %312
  %315 = trunc i128 %314 to i64
  %316 = add i64 %294, %315
  %317 = load i64, ptr %297, align 1
  %318 = tail call noundef i64 @llvm.bswap.i64(i64 %317)
  %319 = getelementptr inbounds i8, ptr %296, i64 -8
  %320 = load i64, ptr %319, align 1
  %321 = tail call noundef i64 @llvm.bswap.i64(i64 %320)
  %322 = add i64 %321, %318
  %323 = xor i64 %316, %322
  %324 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %325 = load i64, ptr %324, align 1
  %326 = tail call noundef i64 @llvm.bswap.i64(i64 %325)
  %327 = xor i64 %326, %318
  %328 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %329 = load i64, ptr %328, align 1
  %330 = tail call noundef i64 @llvm.bswap.i64(i64 %329)
  %331 = xor i64 %330, %321
  %332 = zext i64 %327 to i128
  %333 = zext i64 %331 to i128
  %334 = mul nuw i128 %333, %332
  %335 = lshr i128 %334, 64
  %336 = xor i128 %335, %334
  %337 = trunc i128 %336 to i64
  %338 = add i64 %295, %337
  %339 = add i64 %302, %299
  %340 = xor i64 %338, %339
  %341 = add i64 %340, %323
  %342 = mul i64 %323, -7046029288634856825
  %343 = mul i64 %340, -8796714831421723037
  %344 = mul i64 %2, -4417276706812531889
  %345 = add i64 %342, %344
  %346 = add i64 %345, %343
  %347 = lshr i64 %341, 37
  %348 = xor i64 %347, %341
  %349 = mul i64 %348, 1609587929392839161
  %350 = lshr i64 %349, 32
  %351 = xor i64 %350, %349
  store i64 %351, ptr %0, align 8, !alias.scope !45
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %353 = lshr i64 %346, 37
  %354 = xor i64 %353, %346
  %355 = mul i64 %354, 1609587929392839161
  %356 = lshr i64 %355, 32
  %357 = xor i64 %356, %355
  %358 = sub i64 0, %357
  store i64 %358, ptr %352, align 8, !alias.scope !45
  br label %363

359:                                              ; preds = %137
  %360 = icmp ult i64 %2, 241
  br i1 %360, label %361, label %362

361:                                              ; preds = %359
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef 0)
  br label %363

362:                                              ; preds = %359
  tail call fastcc void @XXH3_hashLong_128b_withSecret(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %363

363:                                              ; preds = %136, %96, %53, %9, %362, %361, %293
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_hashLong_128b_withSecret(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i64 noundef range(i64 241, 0) %2, ptr noundef readonly %3, i64 noundef %4) unnamed_addr #17 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %6 = add i64 %4, -64
  %7 = lshr i64 %6, 3
  %8 = shl i64 %7, 6
  %9 = udiv i64 %2, %8
  %10 = icmp ugt i64 %8, %2
  br i1 %10, label %264, label %11

11:                                               ; preds = %5
  %12 = icmp ult i64 %6, 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %14 = getelementptr inbounds i8, ptr %13, i64 -64
  %15 = getelementptr inbounds i8, ptr %13, i64 -56
  br i1 %12, label %40, label %16

16:                                               ; preds = %11
  %17 = tail call i64 @llvm.umax.i64(i64 %7, i64 1)
  %18 = getelementptr inbounds i8, ptr %13, i64 -48
  %19 = getelementptr inbounds i8, ptr %13, i64 -40
  %20 = getelementptr inbounds i8, ptr %13, i64 -32
  %21 = getelementptr inbounds i8, ptr %13, i64 -24
  %22 = getelementptr inbounds i8, ptr %13, i64 -16
  %23 = getelementptr inbounds i8, ptr %13, i64 -8
  %24 = load i64, ptr %14, align 1, !noalias !48
  %25 = tail call noundef i64 @llvm.bswap.i64(i64 %24)
  %26 = load i64, ptr %15, align 1, !noalias !48
  %27 = tail call noundef i64 @llvm.bswap.i64(i64 %26)
  %28 = load i64, ptr %18, align 1, !noalias !48
  %29 = tail call noundef i64 @llvm.bswap.i64(i64 %28)
  %30 = load i64, ptr %19, align 1, !noalias !48
  %31 = tail call noundef i64 @llvm.bswap.i64(i64 %30)
  %32 = load i64, ptr %20, align 1, !noalias !48
  %33 = tail call noundef i64 @llvm.bswap.i64(i64 %32)
  %34 = load i64, ptr %21, align 1, !noalias !48
  %35 = tail call noundef i64 @llvm.bswap.i64(i64 %34)
  %36 = load i64, ptr %22, align 1, !noalias !48
  %37 = tail call noundef i64 @llvm.bswap.i64(i64 %36)
  %38 = load i64, ptr %23, align 1, !noalias !48
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  br label %63

40:                                               ; preds = %11
  %41 = getelementptr inbounds i8, ptr %13, i64 -48
  %42 = getelementptr inbounds i8, ptr %13, i64 -40
  %43 = getelementptr inbounds i8, ptr %13, i64 -32
  %44 = getelementptr inbounds i8, ptr %13, i64 -24
  %45 = getelementptr inbounds i8, ptr %13, i64 -16
  %46 = getelementptr inbounds i8, ptr %13, i64 -8
  %47 = load i64, ptr %14, align 1, !noalias !48
  %48 = tail call noundef i64 @llvm.bswap.i64(i64 %47)
  %49 = load i64, ptr %15, align 1, !noalias !48
  %50 = tail call noundef i64 @llvm.bswap.i64(i64 %49)
  %51 = load i64, ptr %41, align 1, !noalias !48
  %52 = tail call noundef i64 @llvm.bswap.i64(i64 %51)
  %53 = load i64, ptr %42, align 1, !noalias !48
  %54 = tail call noundef i64 @llvm.bswap.i64(i64 %53)
  %55 = load i64, ptr %43, align 1, !noalias !48
  %56 = tail call noundef i64 @llvm.bswap.i64(i64 %55)
  %57 = load i64, ptr %44, align 1, !noalias !48
  %58 = tail call noundef i64 @llvm.bswap.i64(i64 %57)
  %59 = load i64, ptr %45, align 1, !noalias !48
  %60 = tail call noundef i64 @llvm.bswap.i64(i64 %59)
  %61 = load i64, ptr %46, align 1, !noalias !48
  %62 = tail call noundef i64 @llvm.bswap.i64(i64 %61)
  br label %220

63:                                               ; preds = %185, %16
  %64 = phi i64 [ 2654435761, %16 ], [ %217, %185 ]
  %65 = phi i64 [ 2870177450012600261, %16 ], [ %213, %185 ]
  %66 = phi i64 [ 2246822519, %16 ], [ %209, %185 ]
  %67 = phi i64 [ -8796714831421723037, %16 ], [ %205, %185 ]
  %68 = phi i64 [ 1609587929392839161, %16 ], [ %201, %185 ]
  %69 = phi i64 [ -4417276706812531889, %16 ], [ %197, %185 ]
  %70 = phi i64 [ -7046029288634856825, %16 ], [ %193, %185 ]
  %71 = phi i64 [ 3266489917, %16 ], [ %189, %185 ]
  %72 = phi i64 [ 0, %16 ], [ %218, %185 ]
  %73 = mul i64 %72, %8
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 %73
  br label %75

75:                                               ; preds = %75, %63
  %76 = phi i64 [ %178, %75 ], [ %65, %63 ]
  %77 = phi i64 [ %182, %75 ], [ %64, %63 ]
  %78 = phi i64 [ %106, %75 ], [ %71, %63 ]
  %79 = phi i64 [ %110, %75 ], [ %70, %63 ]
  %80 = phi i64 [ %154, %75 ], [ %67, %63 ]
  %81 = phi i64 [ %158, %75 ], [ %66, %63 ]
  %82 = phi i64 [ %130, %75 ], [ %69, %63 ]
  %83 = phi i64 [ %134, %75 ], [ %68, %63 ]
  %84 = phi i64 [ %183, %75 ], [ 0, %63 ]
  %85 = shl i64 %84, 6
  %86 = getelementptr inbounds nuw i8, ptr %74, i64 %85
  %87 = shl i64 %84, 3
  %88 = getelementptr inbounds nuw i8, ptr %3, i64 %87
  %89 = load i64, ptr %86, align 1, !noalias !48
  %90 = tail call noundef i64 @llvm.bswap.i64(i64 %89)
  %91 = load i64, ptr %88, align 1, !noalias !48
  %92 = tail call noundef i64 @llvm.bswap.i64(i64 %91)
  %93 = xor i64 %92, %90
  %94 = add i64 %90, %79
  %95 = and i64 %93, 4294967295
  %96 = lshr i64 %93, 32
  %97 = mul nuw i64 %95, %96
  %98 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %99 = load i64, ptr %98, align 1, !noalias !48
  %100 = tail call noundef i64 @llvm.bswap.i64(i64 %99)
  %101 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %102 = load i64, ptr %101, align 1, !noalias !48
  %103 = tail call noundef i64 @llvm.bswap.i64(i64 %102)
  %104 = xor i64 %103, %100
  %105 = add i64 %100, %78
  %106 = add i64 %105, %97
  %107 = and i64 %104, 4294967295
  %108 = lshr i64 %104, 32
  %109 = mul nuw i64 %107, %108
  %110 = add i64 %94, %109
  %111 = getelementptr inbounds nuw i8, ptr %86, i64 16
  %112 = load i64, ptr %111, align 1, !noalias !48
  %113 = tail call noundef i64 @llvm.bswap.i64(i64 %112)
  %114 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %115 = load i64, ptr %114, align 1, !noalias !48
  %116 = tail call noundef i64 @llvm.bswap.i64(i64 %115)
  %117 = xor i64 %116, %113
  %118 = add i64 %113, %83
  %119 = and i64 %117, 4294967295
  %120 = lshr i64 %117, 32
  %121 = mul nuw i64 %119, %120
  %122 = getelementptr inbounds nuw i8, ptr %86, i64 24
  %123 = load i64, ptr %122, align 1, !noalias !48
  %124 = tail call noundef i64 @llvm.bswap.i64(i64 %123)
  %125 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %126 = load i64, ptr %125, align 1, !noalias !48
  %127 = tail call noundef i64 @llvm.bswap.i64(i64 %126)
  %128 = xor i64 %127, %124
  %129 = add i64 %124, %82
  %130 = add i64 %129, %121
  %131 = and i64 %128, 4294967295
  %132 = lshr i64 %128, 32
  %133 = mul nuw i64 %131, %132
  %134 = add i64 %118, %133
  %135 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %136 = load i64, ptr %135, align 1, !noalias !48
  %137 = tail call noundef i64 @llvm.bswap.i64(i64 %136)
  %138 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %139 = load i64, ptr %138, align 1, !noalias !48
  %140 = tail call noundef i64 @llvm.bswap.i64(i64 %139)
  %141 = xor i64 %140, %137
  %142 = add i64 %137, %81
  %143 = and i64 %141, 4294967295
  %144 = lshr i64 %141, 32
  %145 = mul nuw i64 %143, %144
  %146 = getelementptr inbounds nuw i8, ptr %86, i64 40
  %147 = load i64, ptr %146, align 1, !noalias !48
  %148 = tail call noundef i64 @llvm.bswap.i64(i64 %147)
  %149 = getelementptr inbounds nuw i8, ptr %88, i64 40
  %150 = load i64, ptr %149, align 1, !noalias !48
  %151 = tail call noundef i64 @llvm.bswap.i64(i64 %150)
  %152 = xor i64 %151, %148
  %153 = add i64 %148, %80
  %154 = add i64 %153, %145
  %155 = and i64 %152, 4294967295
  %156 = lshr i64 %152, 32
  %157 = mul nuw i64 %155, %156
  %158 = add i64 %142, %157
  %159 = getelementptr inbounds nuw i8, ptr %86, i64 48
  %160 = load i64, ptr %159, align 1, !noalias !48
  %161 = tail call noundef i64 @llvm.bswap.i64(i64 %160)
  %162 = getelementptr inbounds nuw i8, ptr %88, i64 48
  %163 = load i64, ptr %162, align 1, !noalias !48
  %164 = tail call noundef i64 @llvm.bswap.i64(i64 %163)
  %165 = xor i64 %164, %161
  %166 = add i64 %161, %77
  %167 = and i64 %165, 4294967295
  %168 = lshr i64 %165, 32
  %169 = mul nuw i64 %167, %168
  %170 = getelementptr inbounds nuw i8, ptr %86, i64 56
  %171 = load i64, ptr %170, align 1, !noalias !48
  %172 = tail call noundef i64 @llvm.bswap.i64(i64 %171)
  %173 = getelementptr inbounds nuw i8, ptr %88, i64 56
  %174 = load i64, ptr %173, align 1, !noalias !48
  %175 = tail call noundef i64 @llvm.bswap.i64(i64 %174)
  %176 = xor i64 %175, %172
  %177 = add i64 %172, %76
  %178 = add i64 %177, %169
  %179 = and i64 %176, 4294967295
  %180 = lshr i64 %176, 32
  %181 = mul nuw i64 %179, %180
  %182 = add i64 %166, %181
  %183 = add nuw nsw i64 %84, 1
  %184 = icmp eq i64 %183, %17
  br i1 %184, label %185, label %75

185:                                              ; preds = %75
  %186 = lshr i64 %106, 47
  %187 = xor i64 %186, %25
  %188 = xor i64 %187, %106
  %189 = mul i64 %188, 2654435761
  %190 = lshr i64 %110, 47
  %191 = xor i64 %190, %27
  %192 = xor i64 %191, %110
  %193 = mul i64 %192, 2654435761
  %194 = lshr i64 %130, 47
  %195 = xor i64 %194, %29
  %196 = xor i64 %195, %130
  %197 = mul i64 %196, 2654435761
  %198 = lshr i64 %134, 47
  %199 = xor i64 %198, %31
  %200 = xor i64 %199, %134
  %201 = mul i64 %200, 2654435761
  %202 = lshr i64 %154, 47
  %203 = xor i64 %202, %33
  %204 = xor i64 %203, %154
  %205 = mul i64 %204, 2654435761
  %206 = lshr i64 %158, 47
  %207 = xor i64 %206, %35
  %208 = xor i64 %207, %158
  %209 = mul i64 %208, 2654435761
  %210 = lshr i64 %178, 47
  %211 = xor i64 %210, %37
  %212 = xor i64 %211, %178
  %213 = mul i64 %212, 2654435761
  %214 = lshr i64 %182, 47
  %215 = xor i64 %214, %39
  %216 = xor i64 %215, %182
  %217 = mul i64 %216, 2654435761
  %218 = add nuw i64 %72, 1
  %219 = icmp ult i64 %218, %9
  br i1 %219, label %63, label %264

220:                                              ; preds = %220, %40
  %221 = phi i64 [ %261, %220 ], [ 2654435761, %40 ]
  %222 = phi i64 [ %257, %220 ], [ 2870177450012600261, %40 ]
  %223 = phi i64 [ %253, %220 ], [ 2246822519, %40 ]
  %224 = phi i64 [ %249, %220 ], [ -8796714831421723037, %40 ]
  %225 = phi i64 [ %245, %220 ], [ 1609587929392839161, %40 ]
  %226 = phi i64 [ %241, %220 ], [ -4417276706812531889, %40 ]
  %227 = phi i64 [ %237, %220 ], [ -7046029288634856825, %40 ]
  %228 = phi i64 [ %233, %220 ], [ 3266489917, %40 ]
  %229 = phi i64 [ %262, %220 ], [ 0, %40 ]
  %230 = lshr i64 %228, 47
  %231 = xor i64 %230, %48
  %232 = xor i64 %231, %228
  %233 = mul i64 %232, 2654435761
  %234 = lshr i64 %227, 47
  %235 = xor i64 %234, %50
  %236 = xor i64 %235, %227
  %237 = mul i64 %236, 2654435761
  %238 = lshr i64 %226, 47
  %239 = xor i64 %238, %52
  %240 = xor i64 %239, %226
  %241 = mul i64 %240, 2654435761
  %242 = lshr i64 %225, 47
  %243 = xor i64 %242, %54
  %244 = xor i64 %243, %225
  %245 = mul i64 %244, 2654435761
  %246 = lshr i64 %224, 47
  %247 = xor i64 %246, %56
  %248 = xor i64 %247, %224
  %249 = mul i64 %248, 2654435761
  %250 = lshr i64 %223, 47
  %251 = xor i64 %250, %58
  %252 = xor i64 %251, %223
  %253 = mul i64 %252, 2654435761
  %254 = lshr i64 %222, 47
  %255 = xor i64 %254, %60
  %256 = xor i64 %255, %222
  %257 = mul i64 %256, 2654435761
  %258 = lshr i64 %221, 47
  %259 = xor i64 %258, %62
  %260 = xor i64 %259, %221
  %261 = mul i64 %260, 2654435761
  %262 = add nuw i64 %229, 1
  %263 = icmp ult i64 %262, %9
  br i1 %263, label %220, label %264

264:                                              ; preds = %185, %220, %5
  %265 = phi i64 [ 2654435761, %5 ], [ %261, %220 ], [ %217, %185 ]
  %266 = phi i64 [ 2870177450012600261, %5 ], [ %257, %220 ], [ %213, %185 ]
  %267 = phi i64 [ 2246822519, %5 ], [ %253, %220 ], [ %209, %185 ]
  %268 = phi i64 [ -8796714831421723037, %5 ], [ %249, %220 ], [ %205, %185 ]
  %269 = phi i64 [ 1609587929392839161, %5 ], [ %245, %220 ], [ %201, %185 ]
  %270 = phi i64 [ -4417276706812531889, %5 ], [ %241, %220 ], [ %197, %185 ]
  %271 = phi i64 [ -7046029288634856825, %5 ], [ %237, %220 ], [ %193, %185 ]
  %272 = phi i64 [ 3266489917, %5 ], [ %233, %220 ], [ %189, %185 ]
  %273 = mul i64 %9, %8
  %274 = sub i64 %2, %273
  %275 = lshr i64 %274, 6
  %276 = getelementptr inbounds nuw i8, ptr %1, i64 %273
  %277 = icmp ult i64 %274, 64
  br i1 %277, label %388, label %278

278:                                              ; preds = %264, %278
  %279 = phi i64 [ %381, %278 ], [ %266, %264 ]
  %280 = phi i64 [ %385, %278 ], [ %265, %264 ]
  %281 = phi i64 [ %309, %278 ], [ %272, %264 ]
  %282 = phi i64 [ %313, %278 ], [ %271, %264 ]
  %283 = phi i64 [ %357, %278 ], [ %268, %264 ]
  %284 = phi i64 [ %361, %278 ], [ %267, %264 ]
  %285 = phi i64 [ %333, %278 ], [ %270, %264 ]
  %286 = phi i64 [ %337, %278 ], [ %269, %264 ]
  %287 = phi i64 [ %386, %278 ], [ 0, %264 ]
  %288 = shl i64 %287, 6
  %289 = getelementptr inbounds nuw i8, ptr %276, i64 %288
  %290 = shl i64 %287, 3
  %291 = getelementptr inbounds nuw i8, ptr %3, i64 %290
  %292 = load i64, ptr %289, align 1, !noalias !48
  %293 = tail call noundef i64 @llvm.bswap.i64(i64 %292)
  %294 = load i64, ptr %291, align 1, !noalias !48
  %295 = tail call noundef i64 @llvm.bswap.i64(i64 %294)
  %296 = xor i64 %295, %293
  %297 = add i64 %293, %282
  %298 = and i64 %296, 4294967295
  %299 = lshr i64 %296, 32
  %300 = mul nuw i64 %298, %299
  %301 = getelementptr inbounds nuw i8, ptr %289, i64 8
  %302 = load i64, ptr %301, align 1, !noalias !48
  %303 = tail call noundef i64 @llvm.bswap.i64(i64 %302)
  %304 = getelementptr inbounds nuw i8, ptr %291, i64 8
  %305 = load i64, ptr %304, align 1, !noalias !48
  %306 = tail call noundef i64 @llvm.bswap.i64(i64 %305)
  %307 = xor i64 %306, %303
  %308 = add i64 %303, %281
  %309 = add i64 %308, %300
  %310 = and i64 %307, 4294967295
  %311 = lshr i64 %307, 32
  %312 = mul nuw i64 %310, %311
  %313 = add i64 %297, %312
  %314 = getelementptr inbounds nuw i8, ptr %289, i64 16
  %315 = load i64, ptr %314, align 1, !noalias !48
  %316 = tail call noundef i64 @llvm.bswap.i64(i64 %315)
  %317 = getelementptr inbounds nuw i8, ptr %291, i64 16
  %318 = load i64, ptr %317, align 1, !noalias !48
  %319 = tail call noundef i64 @llvm.bswap.i64(i64 %318)
  %320 = xor i64 %319, %316
  %321 = add i64 %316, %286
  %322 = and i64 %320, 4294967295
  %323 = lshr i64 %320, 32
  %324 = mul nuw i64 %322, %323
  %325 = getelementptr inbounds nuw i8, ptr %289, i64 24
  %326 = load i64, ptr %325, align 1, !noalias !48
  %327 = tail call noundef i64 @llvm.bswap.i64(i64 %326)
  %328 = getelementptr inbounds nuw i8, ptr %291, i64 24
  %329 = load i64, ptr %328, align 1, !noalias !48
  %330 = tail call noundef i64 @llvm.bswap.i64(i64 %329)
  %331 = xor i64 %330, %327
  %332 = add i64 %327, %285
  %333 = add i64 %332, %324
  %334 = and i64 %331, 4294967295
  %335 = lshr i64 %331, 32
  %336 = mul nuw i64 %334, %335
  %337 = add i64 %321, %336
  %338 = getelementptr inbounds nuw i8, ptr %289, i64 32
  %339 = load i64, ptr %338, align 1, !noalias !48
  %340 = tail call noundef i64 @llvm.bswap.i64(i64 %339)
  %341 = getelementptr inbounds nuw i8, ptr %291, i64 32
  %342 = load i64, ptr %341, align 1, !noalias !48
  %343 = tail call noundef i64 @llvm.bswap.i64(i64 %342)
  %344 = xor i64 %343, %340
  %345 = add i64 %340, %284
  %346 = and i64 %344, 4294967295
  %347 = lshr i64 %344, 32
  %348 = mul nuw i64 %346, %347
  %349 = getelementptr inbounds nuw i8, ptr %289, i64 40
  %350 = load i64, ptr %349, align 1, !noalias !48
  %351 = tail call noundef i64 @llvm.bswap.i64(i64 %350)
  %352 = getelementptr inbounds nuw i8, ptr %291, i64 40
  %353 = load i64, ptr %352, align 1, !noalias !48
  %354 = tail call noundef i64 @llvm.bswap.i64(i64 %353)
  %355 = xor i64 %354, %351
  %356 = add i64 %351, %283
  %357 = add i64 %356, %348
  %358 = and i64 %355, 4294967295
  %359 = lshr i64 %355, 32
  %360 = mul nuw i64 %358, %359
  %361 = add i64 %345, %360
  %362 = getelementptr inbounds nuw i8, ptr %289, i64 48
  %363 = load i64, ptr %362, align 1, !noalias !48
  %364 = tail call noundef i64 @llvm.bswap.i64(i64 %363)
  %365 = getelementptr inbounds nuw i8, ptr %291, i64 48
  %366 = load i64, ptr %365, align 1, !noalias !48
  %367 = tail call noundef i64 @llvm.bswap.i64(i64 %366)
  %368 = xor i64 %367, %364
  %369 = add i64 %364, %280
  %370 = and i64 %368, 4294967295
  %371 = lshr i64 %368, 32
  %372 = mul nuw i64 %370, %371
  %373 = getelementptr inbounds nuw i8, ptr %289, i64 56
  %374 = load i64, ptr %373, align 1, !noalias !48
  %375 = tail call noundef i64 @llvm.bswap.i64(i64 %374)
  %376 = getelementptr inbounds nuw i8, ptr %291, i64 56
  %377 = load i64, ptr %376, align 1, !noalias !48
  %378 = tail call noundef i64 @llvm.bswap.i64(i64 %377)
  %379 = xor i64 %378, %375
  %380 = add i64 %375, %279
  %381 = add i64 %380, %372
  %382 = and i64 %379, 4294967295
  %383 = lshr i64 %379, 32
  %384 = mul nuw i64 %382, %383
  %385 = add i64 %369, %384
  %386 = add nuw nsw i64 %287, 1
  %387 = icmp samesign ult i64 %386, %275
  br i1 %387, label %278, label %388

388:                                              ; preds = %278, %264
  %389 = phi i64 [ %265, %264 ], [ %385, %278 ]
  %390 = phi i64 [ %266, %264 ], [ %381, %278 ]
  %391 = phi i64 [ %267, %264 ], [ %361, %278 ]
  %392 = phi i64 [ %268, %264 ], [ %357, %278 ]
  %393 = phi i64 [ %269, %264 ], [ %337, %278 ]
  %394 = phi i64 [ %270, %264 ], [ %333, %278 ]
  %395 = phi i64 [ %271, %264 ], [ %313, %278 ]
  %396 = phi i64 [ %272, %264 ], [ %309, %278 ]
  %397 = and i64 %2, 63
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %498, label %399

399:                                              ; preds = %388
  %400 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %401 = getelementptr inbounds i8, ptr %400, i64 -64
  %402 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %403 = getelementptr inbounds i8, ptr %402, i64 -71
  %404 = load i64, ptr %401, align 1, !noalias !48
  %405 = tail call noundef i64 @llvm.bswap.i64(i64 %404)
  %406 = load i64, ptr %403, align 1, !noalias !48
  %407 = tail call noundef i64 @llvm.bswap.i64(i64 %406)
  %408 = xor i64 %407, %405
  %409 = add i64 %405, %395
  %410 = and i64 %408, 4294967295
  %411 = lshr i64 %408, 32
  %412 = mul nuw i64 %410, %411
  %413 = getelementptr inbounds i8, ptr %400, i64 -56
  %414 = load i64, ptr %413, align 1, !noalias !48
  %415 = tail call noundef i64 @llvm.bswap.i64(i64 %414)
  %416 = getelementptr inbounds i8, ptr %402, i64 -63
  %417 = load i64, ptr %416, align 1, !noalias !48
  %418 = tail call noundef i64 @llvm.bswap.i64(i64 %417)
  %419 = xor i64 %418, %415
  %420 = add i64 %415, %396
  %421 = add i64 %420, %412
  %422 = and i64 %419, 4294967295
  %423 = lshr i64 %419, 32
  %424 = mul nuw i64 %422, %423
  %425 = add i64 %409, %424
  %426 = getelementptr inbounds i8, ptr %400, i64 -48
  %427 = load i64, ptr %426, align 1, !noalias !48
  %428 = tail call noundef i64 @llvm.bswap.i64(i64 %427)
  %429 = getelementptr inbounds i8, ptr %402, i64 -55
  %430 = load i64, ptr %429, align 1, !noalias !48
  %431 = tail call noundef i64 @llvm.bswap.i64(i64 %430)
  %432 = xor i64 %431, %428
  %433 = add i64 %428, %393
  %434 = and i64 %432, 4294967295
  %435 = lshr i64 %432, 32
  %436 = mul nuw i64 %434, %435
  %437 = getelementptr inbounds i8, ptr %400, i64 -40
  %438 = load i64, ptr %437, align 1, !noalias !48
  %439 = tail call noundef i64 @llvm.bswap.i64(i64 %438)
  %440 = getelementptr inbounds i8, ptr %402, i64 -47
  %441 = load i64, ptr %440, align 1, !noalias !48
  %442 = tail call noundef i64 @llvm.bswap.i64(i64 %441)
  %443 = xor i64 %442, %439
  %444 = add i64 %439, %394
  %445 = add i64 %444, %436
  %446 = and i64 %443, 4294967295
  %447 = lshr i64 %443, 32
  %448 = mul nuw i64 %446, %447
  %449 = add i64 %433, %448
  %450 = getelementptr inbounds i8, ptr %400, i64 -32
  %451 = load i64, ptr %450, align 1, !noalias !48
  %452 = tail call noundef i64 @llvm.bswap.i64(i64 %451)
  %453 = getelementptr inbounds i8, ptr %402, i64 -39
  %454 = load i64, ptr %453, align 1, !noalias !48
  %455 = tail call noundef i64 @llvm.bswap.i64(i64 %454)
  %456 = xor i64 %455, %452
  %457 = add i64 %452, %391
  %458 = and i64 %456, 4294967295
  %459 = lshr i64 %456, 32
  %460 = mul nuw i64 %458, %459
  %461 = getelementptr inbounds i8, ptr %400, i64 -24
  %462 = load i64, ptr %461, align 1, !noalias !48
  %463 = tail call noundef i64 @llvm.bswap.i64(i64 %462)
  %464 = getelementptr inbounds i8, ptr %402, i64 -31
  %465 = load i64, ptr %464, align 1, !noalias !48
  %466 = tail call noundef i64 @llvm.bswap.i64(i64 %465)
  %467 = xor i64 %466, %463
  %468 = add i64 %463, %392
  %469 = add i64 %468, %460
  %470 = and i64 %467, 4294967295
  %471 = lshr i64 %467, 32
  %472 = mul nuw i64 %470, %471
  %473 = add i64 %457, %472
  %474 = getelementptr inbounds i8, ptr %400, i64 -16
  %475 = load i64, ptr %474, align 1, !noalias !48
  %476 = tail call noundef i64 @llvm.bswap.i64(i64 %475)
  %477 = getelementptr inbounds i8, ptr %402, i64 -23
  %478 = load i64, ptr %477, align 1, !noalias !48
  %479 = tail call noundef i64 @llvm.bswap.i64(i64 %478)
  %480 = xor i64 %479, %476
  %481 = add i64 %476, %389
  %482 = and i64 %480, 4294967295
  %483 = lshr i64 %480, 32
  %484 = mul nuw i64 %482, %483
  %485 = getelementptr inbounds i8, ptr %400, i64 -8
  %486 = load i64, ptr %485, align 1, !noalias !48
  %487 = tail call noundef i64 @llvm.bswap.i64(i64 %486)
  %488 = getelementptr inbounds i8, ptr %402, i64 -15
  %489 = load i64, ptr %488, align 1, !noalias !48
  %490 = tail call noundef i64 @llvm.bswap.i64(i64 %489)
  %491 = xor i64 %490, %487
  %492 = add i64 %487, %390
  %493 = add i64 %492, %484
  %494 = and i64 %491, 4294967295
  %495 = lshr i64 %491, 32
  %496 = mul nuw i64 %494, %495
  %497 = add i64 %481, %496
  br label %498

498:                                              ; preds = %388, %399
  %499 = phi i64 [ %389, %388 ], [ %497, %399 ]
  %500 = phi i64 [ %390, %388 ], [ %493, %399 ]
  %501 = phi i64 [ %391, %388 ], [ %473, %399 ]
  %502 = phi i64 [ %392, %388 ], [ %469, %399 ]
  %503 = phi i64 [ %393, %388 ], [ %449, %399 ]
  %504 = phi i64 [ %394, %388 ], [ %445, %399 ]
  %505 = phi i64 [ %395, %388 ], [ %425, %399 ]
  %506 = phi i64 [ %396, %388 ], [ %421, %399 ]
  %507 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %508 = mul i64 %2, -7046029288634856825
  %509 = load i64, ptr %507, align 1, !noalias !48
  %510 = tail call noundef i64 @llvm.bswap.i64(i64 %509)
  %511 = xor i64 %510, %506
  %512 = getelementptr inbounds nuw i8, ptr %3, i64 19
  %513 = load i64, ptr %512, align 1, !noalias !48
  %514 = tail call noundef i64 @llvm.bswap.i64(i64 %513)
  %515 = xor i64 %514, %505
  %516 = zext i64 %511 to i128
  %517 = zext i64 %515 to i128
  %518 = mul nuw i128 %517, %516
  %519 = lshr i128 %518, 64
  %520 = xor i128 %519, %518
  %521 = trunc i128 %520 to i64
  %522 = add i64 %508, %521
  %523 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %524 = load i64, ptr %523, align 1, !noalias !48
  %525 = tail call noundef i64 @llvm.bswap.i64(i64 %524)
  %526 = xor i64 %525, %504
  %527 = getelementptr inbounds nuw i8, ptr %3, i64 35
  %528 = load i64, ptr %527, align 1, !noalias !48
  %529 = tail call noundef i64 @llvm.bswap.i64(i64 %528)
  %530 = xor i64 %529, %503
  %531 = zext i64 %526 to i128
  %532 = zext i64 %530 to i128
  %533 = mul nuw i128 %532, %531
  %534 = lshr i128 %533, 64
  %535 = xor i128 %534, %533
  %536 = trunc i128 %535 to i64
  %537 = add i64 %522, %536
  %538 = getelementptr inbounds nuw i8, ptr %3, i64 43
  %539 = load i64, ptr %538, align 1, !noalias !48
  %540 = tail call noundef i64 @llvm.bswap.i64(i64 %539)
  %541 = xor i64 %540, %502
  %542 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %543 = load i64, ptr %542, align 1, !noalias !48
  %544 = tail call noundef i64 @llvm.bswap.i64(i64 %543)
  %545 = xor i64 %544, %501
  %546 = zext i64 %541 to i128
  %547 = zext i64 %545 to i128
  %548 = mul nuw i128 %547, %546
  %549 = lshr i128 %548, 64
  %550 = xor i128 %549, %548
  %551 = trunc i128 %550 to i64
  %552 = add i64 %537, %551
  %553 = getelementptr inbounds nuw i8, ptr %3, i64 59
  %554 = load i64, ptr %553, align 1, !noalias !48
  %555 = tail call noundef i64 @llvm.bswap.i64(i64 %554)
  %556 = xor i64 %555, %500
  %557 = getelementptr inbounds nuw i8, ptr %3, i64 67
  %558 = load i64, ptr %557, align 1, !noalias !48
  %559 = tail call noundef i64 @llvm.bswap.i64(i64 %558)
  %560 = xor i64 %559, %499
  %561 = zext i64 %556 to i128
  %562 = zext i64 %560 to i128
  %563 = mul nuw i128 %562, %561
  %564 = lshr i128 %563, 64
  %565 = xor i128 %564, %563
  %566 = trunc i128 %565 to i64
  %567 = add i64 %552, %566
  %568 = lshr i64 %567, 37
  %569 = xor i64 %568, %567
  %570 = mul i64 %569, 1609587929392839161
  %571 = lshr i64 %570, 32
  %572 = xor i64 %571, %570
  %573 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %574 = getelementptr inbounds i8, ptr %573, i64 -75
  %575 = mul i64 %2, -4417276706812531889
  %576 = xor i64 %575, -1
  %577 = load i64, ptr %574, align 1, !noalias !48
  %578 = tail call noundef i64 @llvm.bswap.i64(i64 %577)
  %579 = xor i64 %578, %506
  %580 = getelementptr inbounds i8, ptr %573, i64 -67
  %581 = load i64, ptr %580, align 1, !noalias !48
  %582 = tail call noundef i64 @llvm.bswap.i64(i64 %581)
  %583 = xor i64 %582, %505
  %584 = zext i64 %579 to i128
  %585 = zext i64 %583 to i128
  %586 = mul nuw i128 %585, %584
  %587 = lshr i128 %586, 64
  %588 = xor i128 %587, %586
  %589 = trunc i128 %588 to i64
  %590 = add i64 %589, %576
  %591 = getelementptr inbounds i8, ptr %573, i64 -59
  %592 = load i64, ptr %591, align 1, !noalias !48
  %593 = tail call noundef i64 @llvm.bswap.i64(i64 %592)
  %594 = xor i64 %593, %504
  %595 = getelementptr inbounds i8, ptr %573, i64 -51
  %596 = load i64, ptr %595, align 1, !noalias !48
  %597 = tail call noundef i64 @llvm.bswap.i64(i64 %596)
  %598 = xor i64 %597, %503
  %599 = zext i64 %594 to i128
  %600 = zext i64 %598 to i128
  %601 = mul nuw i128 %600, %599
  %602 = lshr i128 %601, 64
  %603 = xor i128 %602, %601
  %604 = trunc i128 %603 to i64
  %605 = add i64 %590, %604
  %606 = getelementptr inbounds i8, ptr %573, i64 -43
  %607 = load i64, ptr %606, align 1, !noalias !48
  %608 = tail call noundef i64 @llvm.bswap.i64(i64 %607)
  %609 = xor i64 %608, %502
  %610 = getelementptr inbounds i8, ptr %573, i64 -35
  %611 = load i64, ptr %610, align 1, !noalias !48
  %612 = tail call noundef i64 @llvm.bswap.i64(i64 %611)
  %613 = xor i64 %612, %501
  %614 = zext i64 %609 to i128
  %615 = zext i64 %613 to i128
  %616 = mul nuw i128 %615, %614
  %617 = lshr i128 %616, 64
  %618 = xor i128 %617, %616
  %619 = trunc i128 %618 to i64
  %620 = add i64 %605, %619
  %621 = getelementptr inbounds i8, ptr %573, i64 -27
  %622 = load i64, ptr %621, align 1, !noalias !48
  %623 = tail call noundef i64 @llvm.bswap.i64(i64 %622)
  %624 = xor i64 %623, %500
  %625 = getelementptr inbounds i8, ptr %573, i64 -19
  %626 = load i64, ptr %625, align 1, !noalias !48
  %627 = tail call noundef i64 @llvm.bswap.i64(i64 %626)
  %628 = xor i64 %627, %499
  %629 = zext i64 %624 to i128
  %630 = zext i64 %628 to i128
  %631 = mul nuw i128 %630, %629
  %632 = lshr i128 %631, 64
  %633 = xor i128 %632, %631
  %634 = trunc i128 %633 to i64
  %635 = add i64 %620, %634
  %636 = lshr i64 %635, 37
  %637 = xor i64 %636, %635
  %638 = mul i64 %637, 1609587929392839161
  %639 = lshr i64 %638, 32
  %640 = xor i64 %639, %638
  store i64 %572, ptr %0, align 8, !alias.scope !48
  %641 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %640, ptr %641, align 8, !alias.scope !48
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @XXH3_128bits_withSeed(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  %5 = icmp ult i64 %2, 17
  br i1 %5, label %6, label %131

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %2, 8
  br i1 %7, label %8, label %49

8:                                                ; preds = %6
  %9 = load i64, ptr %1, align 1
  %10 = tail call noundef i64 @llvm.bswap.i64(i64 %9)
  %11 = add i64 %3, -4734510112055689544
  %12 = xor i64 %10, %11
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %14 = getelementptr inbounds i8, ptr %13, i64 -8
  %15 = load i64, ptr %14, align 1
  %16 = tail call noundef i64 @llvm.bswap.i64(i64 %15)
  %17 = sub i64 2066345149520216444, %3
  %18 = xor i64 %16, %17
  %19 = xor i64 %12, %18
  %20 = zext i64 %19 to i128
  %21 = mul nuw i128 %20, 11400714785074694791
  %22 = trunc i128 %21 to i64
  %23 = lshr i128 %21, 64
  %24 = trunc nuw i128 %23 to i64
  %25 = mul nuw nsw i64 %2, 374761393
  %26 = add i64 %25, %22
  %27 = mul i64 %18, -7046029288634856825
  %28 = add i64 %27, %24
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %26
  %31 = zext i64 %30 to i128
  %32 = mul nuw i128 %31, 14029467366897019727
  %33 = trunc i128 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = lshr i128 %32, 64
  %36 = trunc nuw i128 %35 to i64
  %37 = mul i64 %28, -4417276706812531889
  %38 = add i64 %37, %36
  %39 = lshr i64 %33, 37
  %40 = xor i64 %39, %33
  %41 = mul i64 %40, 1609587929392839161
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  store i64 %43, ptr %0, align 8, !alias.scope !51
  %44 = lshr i64 %38, 37
  %45 = xor i64 %44, %38
  %46 = mul i64 %45, 1609587929392839161
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  store i64 %48, ptr %34, align 8, !alias.scope !51
  br label %327

49:                                               ; preds = %6
  %50 = icmp samesign ugt i64 %2, 3
  br i1 %50, label %51, label %90

51:                                               ; preds = %49
  %52 = load i32, ptr %1, align 1
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = zext i32 %52 to i64
  %58 = shl nuw i64 %57, 32
  %59 = or disjoint i64 %58, %56
  %60 = tail call i64 @llvm.bswap.i64(i64 %59)
  %61 = add i64 %3, -4734510112055689544
  %62 = xor i64 %60, %61
  %63 = sub i64 2066345149520216444, %3
  %64 = xor i64 %59, %63
  %65 = lshr i64 %62, 51
  %66 = xor i64 %65, %62
  %67 = mul i64 %66, 2654435761
  %68 = add i64 %67, %2
  %69 = lshr i64 %68, 47
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, -4417276706812531889
  %72 = lshr i64 %64, 47
  %73 = xor i64 %72, %64
  %74 = mul i64 %73, -7046029288634856825
  %75 = sub i64 %74, %2
  %76 = lshr i64 %75, 43
  %77 = xor i64 %76, %75
  %78 = mul i64 %77, -8796714831421723037
  %79 = lshr i64 %71, 37
  %80 = xor i64 %79, %71
  %81 = mul i64 %80, 1609587929392839161
  %82 = lshr i64 %81, 32
  %83 = xor i64 %82, %81
  store i64 %83, ptr %0, align 8, !alias.scope !54
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %85 = lshr i64 %78, 37
  %86 = xor i64 %85, %78
  %87 = mul i64 %86, 1609587929392839161
  %88 = lshr i64 %87, 32
  %89 = xor i64 %88, %87
  store i64 %89, ptr %84, align 8, !alias.scope !54
  br label %327

90:                                               ; preds = %49
  %91 = icmp eq i64 %2, 0
  br i1 %91, label %130, label %92

92:                                               ; preds = %90
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %93 = load i8, ptr %1, align 1, !noalias !57
  %94 = lshr i64 %2, 1
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 %94
  %96 = load i8, ptr %95, align 1, !noalias !57
  %97 = getelementptr i8, ptr %1, i64 %2
  %98 = getelementptr i8, ptr %97, i64 -1
  %99 = load i8, ptr %98, align 1, !noalias !57
  %100 = zext i8 %93 to i32
  %101 = zext i8 %96 to i32
  %102 = shl nuw nsw i32 %101, 8
  %103 = or disjoint i32 %102, %100
  %104 = zext i8 %99 to i32
  %105 = shl nuw nsw i32 %104, 16
  %106 = or disjoint i32 %103, %105
  %107 = trunc nuw nsw i64 %2 to i32
  %108 = shl nuw nsw i32 %107, 24
  %109 = or disjoint i32 %106, %108
  %110 = tail call noundef i32 @llvm.bswap.i32(i32 %109)
  %111 = zext nneg i32 %109 to i64
  %112 = add i64 %3, 963444408
  %113 = xor i64 %112, %111
  %114 = zext i32 %110 to i64
  %115 = sub i64 3192628259, %3
  %116 = xor i64 %115, %114
  %117 = mul i64 %113, -7046029288634856825
  %118 = mul i64 %116, 2870177450012600261
  %119 = lshr i64 %117, 37
  %120 = xor i64 %119, %117
  %121 = mul i64 %120, 1609587929392839161
  %122 = lshr i64 %121, 32
  %123 = xor i64 %122, %121
  store i64 %123, ptr %0, align 8, !alias.scope !57
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %125 = lshr i64 %118, 37
  %126 = xor i64 %125, %118
  %127 = mul i64 %126, 1609587929392839161
  %128 = lshr i64 %127, 32
  %129 = xor i64 %128, %127
  store i64 %129, ptr %124, align 8, !alias.scope !57
  br label %327

130:                                              ; preds = %90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !60
  br label %327

131:                                              ; preds = %4
  %132 = icmp ult i64 %2, 129
  br i1 %132, label %133, label %323

133:                                              ; preds = %131
  %134 = mul i64 %2, -7046029288634856825
  %135 = icmp samesign ugt i64 %2, 32
  br i1 %135, label %136, label %263

136:                                              ; preds = %133
  %137 = icmp samesign ugt i64 %2, 64
  br i1 %137, label %138, label %221

138:                                              ; preds = %136
  %139 = icmp samesign ugt i64 %2, 96
  br i1 %139, label %140, label %179

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %142 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %143 = getelementptr inbounds i8, ptr %142, i64 -64
  %144 = load i64, ptr %141, align 1
  %145 = tail call noundef i64 @llvm.bswap.i64(i64 %144)
  %146 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = tail call noundef i64 @llvm.bswap.i64(i64 %147)
  %149 = add i64 %3, 4554437623014685352
  %150 = xor i64 %145, %149
  %151 = sub i64 2111919702937427193, %3
  %152 = xor i64 %148, %151
  %153 = zext i64 %150 to i128
  %154 = zext i64 %152 to i128
  %155 = mul nuw i128 %154, %153
  %156 = lshr i128 %155, 64
  %157 = xor i128 %156, %155
  %158 = trunc i128 %157 to i64
  %159 = add i64 %134, %158
  %160 = load i64, ptr %143, align 1
  %161 = tail call noundef i64 @llvm.bswap.i64(i64 %160)
  %162 = getelementptr inbounds i8, ptr %142, i64 -56
  %163 = load i64, ptr %162, align 1
  %164 = tail call noundef i64 @llvm.bswap.i64(i64 %163)
  %165 = add i64 %164, %161
  %166 = xor i64 %159, %165
  %167 = add i64 %3, 3556072174620004746
  %168 = xor i64 %161, %167
  %169 = sub i64 7238261902898274248, %3
  %170 = xor i64 %164, %169
  %171 = zext i64 %168 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = add i64 %148, %145
  %178 = xor i64 %177, %176
  br label %179

179:                                              ; preds = %140, %138
  %180 = phi i64 [ %166, %140 ], [ %134, %138 ]
  %181 = phi i64 [ %178, %140 ], [ 0, %138 ]
  %182 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %184 = getelementptr inbounds i8, ptr %183, i64 -48
  %185 = load i64, ptr %182, align 1
  %186 = tail call noundef i64 @llvm.bswap.i64(i64 %185)
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %188 = load i64, ptr %187, align 1
  %189 = tail call noundef i64 @llvm.bswap.i64(i64 %188)
  %190 = add i64 %3, -3818837453329782724
  %191 = xor i64 %186, %190
  %192 = sub i64 -6688317018830679928, %3
  %193 = xor i64 %189, %192
  %194 = zext i64 %191 to i128
  %195 = zext i64 %193 to i128
  %196 = mul nuw i128 %195, %194
  %197 = lshr i128 %196, 64
  %198 = xor i128 %197, %196
  %199 = trunc i128 %198 to i64
  %200 = add i64 %180, %199
  %201 = load i64, ptr %184, align 1
  %202 = tail call noundef i64 @llvm.bswap.i64(i64 %201)
  %203 = getelementptr inbounds i8, ptr %183, i64 -40
  %204 = load i64, ptr %203, align 1
  %205 = tail call noundef i64 @llvm.bswap.i64(i64 %204)
  %206 = add i64 %205, %202
  %207 = xor i64 %200, %206
  %208 = add i64 %3, 5690594596133299313
  %209 = xor i64 %202, %208
  %210 = sub i64 -2833645246901970632, %3
  %211 = xor i64 %205, %210
  %212 = zext i64 %209 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %181, %217
  %219 = add i64 %189, %186
  %220 = xor i64 %218, %219
  br label %221

221:                                              ; preds = %179, %136
  %222 = phi i64 [ %207, %179 ], [ %134, %136 ]
  %223 = phi i64 [ %220, %179 ], [ 0, %136 ]
  %224 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %225 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %226 = getelementptr inbounds i8, ptr %225, i64 -32
  %227 = load i64, ptr %224, align 1
  %228 = tail call noundef i64 @llvm.bswap.i64(i64 %227)
  %229 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %230 = load i64, ptr %229, align 1
  %231 = tail call noundef i64 @llvm.bswap.i64(i64 %230)
  %232 = add i64 %3, 8711581037947681227
  %233 = xor i64 %228, %232
  %234 = sub i64 2410270004345854594, %3
  %235 = xor i64 %231, %234
  %236 = zext i64 %233 to i128
  %237 = zext i64 %235 to i128
  %238 = mul nuw i128 %237, %236
  %239 = lshr i128 %238, 64
  %240 = xor i128 %239, %238
  %241 = trunc i128 %240 to i64
  %242 = add i64 %222, %241
  %243 = load i64, ptr %226, align 1
  %244 = tail call noundef i64 @llvm.bswap.i64(i64 %243)
  %245 = getelementptr inbounds i8, ptr %225, i64 -24
  %246 = load i64, ptr %245, align 1
  %247 = tail call noundef i64 @llvm.bswap.i64(i64 %246)
  %248 = add i64 %247, %244
  %249 = xor i64 %242, %248
  %250 = add i64 %3, -8204357891075471176
  %251 = xor i64 %244, %250
  %252 = sub i64 5487137525590930912, %3
  %253 = xor i64 %247, %252
  %254 = zext i64 %251 to i128
  %255 = zext i64 %253 to i128
  %256 = mul nuw i128 %255, %254
  %257 = lshr i128 %256, 64
  %258 = xor i128 %257, %256
  %259 = trunc i128 %258 to i64
  %260 = add i64 %223, %259
  %261 = add i64 %231, %228
  %262 = xor i64 %260, %261
  br label %263

263:                                              ; preds = %133, %221
  %264 = phi i64 [ %249, %221 ], [ %134, %133 ]
  %265 = phi i64 [ %262, %221 ], [ 0, %133 ]
  %266 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %267 = getelementptr inbounds i8, ptr %266, i64 -16
  %268 = load i64, ptr %1, align 1
  %269 = tail call noundef i64 @llvm.bswap.i64(i64 %268)
  %270 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %271 = load i64, ptr %270, align 1
  %272 = tail call noundef i64 @llvm.bswap.i64(i64 %271)
  %273 = add i64 %3, -4734510112055689544
  %274 = xor i64 %269, %273
  %275 = sub i64 2066345149520216444, %3
  %276 = xor i64 %272, %275
  %277 = zext i64 %274 to i128
  %278 = zext i64 %276 to i128
  %279 = mul nuw i128 %278, %277
  %280 = lshr i128 %279, 64
  %281 = xor i128 %280, %279
  %282 = trunc i128 %281 to i64
  %283 = add i64 %264, %282
  %284 = load i64, ptr %267, align 1
  %285 = tail call noundef i64 @llvm.bswap.i64(i64 %284)
  %286 = getelementptr inbounds i8, ptr %266, i64 -8
  %287 = load i64, ptr %286, align 1
  %288 = tail call noundef i64 @llvm.bswap.i64(i64 %287)
  %289 = add i64 %288, %285
  %290 = xor i64 %283, %289
  %291 = add i64 %3, -2623469361688619810
  %292 = xor i64 %285, %291
  %293 = sub i64 2262974939099578482, %3
  %294 = xor i64 %288, %293
  %295 = zext i64 %292 to i128
  %296 = zext i64 %294 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %265, %300
  %302 = add i64 %272, %269
  %303 = xor i64 %301, %302
  %304 = add i64 %303, %290
  %305 = mul i64 %290, -7046029288634856825
  %306 = mul i64 %303, -8796714831421723037
  %307 = sub i64 %2, %3
  %308 = mul i64 %307, -4417276706812531889
  %309 = add i64 %305, %308
  %310 = add i64 %309, %306
  %311 = lshr i64 %304, 37
  %312 = xor i64 %311, %304
  %313 = mul i64 %312, 1609587929392839161
  %314 = lshr i64 %313, 32
  %315 = xor i64 %314, %313
  store i64 %315, ptr %0, align 8, !alias.scope !63
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %317 = lshr i64 %310, 37
  %318 = xor i64 %317, %310
  %319 = mul i64 %318, 1609587929392839161
  %320 = lshr i64 %319, 32
  %321 = xor i64 %320, %319
  %322 = sub i64 0, %321
  store i64 %322, ptr %316, align 8, !alias.scope !63
  br label %327

323:                                              ; preds = %131
  %324 = icmp ult i64 %2, 241
  br i1 %324, label %325, label %326

325:                                              ; preds = %323
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @kSecret, i64 noundef %3)
  br label %327

326:                                              ; preds = %323
  tail call fastcc void @XXH3_hashLong_128b_withSeed(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  br label %327

327:                                              ; preds = %130, %92, %51, %8, %326, %325, %263
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_hashLong_128b_withSeed(ptr dead_on_unwind noalias writable writeonly align 8 %0, ptr noundef readonly %1, i64 noundef range(i64 241, 0) %2, i64 noundef %3) unnamed_addr #17 {
  %5 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #26
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %81, label %7

7:                                                ; preds = %4
  %8 = add i64 %3, -4734510112055689544
  %9 = tail call noundef i64 @llvm.bswap.i64(i64 %8)
  store i64 %9, ptr %5, align 8
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %11 = sub i64 2066345149520216444, %3
  %12 = tail call noundef i64 @llvm.bswap.i64(i64 %11)
  store i64 %12, ptr %10, align 8
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %14 = add i64 %3, -2623469361688619810
  %15 = tail call noundef i64 @llvm.bswap.i64(i64 %14)
  store i64 %15, ptr %13, align 8
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %17 = sub i64 2262974939099578482, %3
  %18 = tail call noundef i64 @llvm.bswap.i64(i64 %17)
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %20 = add i64 %3, 8711581037947681227
  %21 = tail call noundef i64 @llvm.bswap.i64(i64 %20)
  store i64 %21, ptr %19, align 8
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %23 = sub i64 2410270004345854594, %3
  %24 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  store i64 %24, ptr %22, align 8
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %26 = add i64 %3, -8204357891075471176
  %27 = tail call noundef i64 @llvm.bswap.i64(i64 %26)
  store i64 %27, ptr %25, align 8
  %28 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %29 = sub i64 5487137525590930912, %3
  %30 = tail call noundef i64 @llvm.bswap.i64(i64 %29)
  store i64 %30, ptr %28, align 8
  %31 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %32 = add i64 %3, -3818837453329782724
  %33 = tail call noundef i64 @llvm.bswap.i64(i64 %32)
  store i64 %33, ptr %31, align 8
  %34 = getelementptr inbounds nuw i8, ptr %5, i64 72
  %35 = sub i64 -6688317018830679928, %3
  %36 = tail call noundef i64 @llvm.bswap.i64(i64 %35)
  store i64 %36, ptr %34, align 8
  %37 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %38 = add i64 %3, 5690594596133299313
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  store i64 %39, ptr %37, align 8
  %40 = getelementptr inbounds nuw i8, ptr %5, i64 88
  %41 = sub i64 -2833645246901970632, %3
  %42 = tail call noundef i64 @llvm.bswap.i64(i64 %41)
  store i64 %42, ptr %40, align 8
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 96
  %44 = add i64 %3, 4554437623014685352
  %45 = tail call noundef i64 @llvm.bswap.i64(i64 %44)
  store i64 %45, ptr %43, align 8
  %46 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %47 = sub i64 2111919702937427193, %3
  %48 = tail call noundef i64 @llvm.bswap.i64(i64 %47)
  store i64 %48, ptr %46, align 8
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 112
  %50 = add i64 %3, 3556072174620004746
  %51 = tail call noundef i64 @llvm.bswap.i64(i64 %50)
  store i64 %51, ptr %49, align 8
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 120
  %53 = sub i64 7238261902898274248, %3
  %54 = tail call noundef i64 @llvm.bswap.i64(i64 %53)
  store i64 %54, ptr %52, align 8
  %55 = getelementptr inbounds nuw i8, ptr %5, i64 128
  %56 = add i64 %3, -4329134394285701654
  %57 = tail call noundef i64 @llvm.bswap.i64(i64 %56)
  store i64 %57, ptr %55, align 8
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 136
  %59 = sub i64 -1485321483350670907, %3
  %60 = tail call noundef i64 @llvm.bswap.i64(i64 %59)
  store i64 %60, ptr %58, align 8
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 144
  %62 = add i64 %3, 5321830579834785047
  %63 = tail call noundef i64 @llvm.bswap.i64(i64 %62)
  store i64 %63, ptr %61, align 8
  %64 = getelementptr inbounds nuw i8, ptr %5, i64 152
  %65 = sub i64 -7032137544937171245, %3
  %66 = tail call noundef i64 @llvm.bswap.i64(i64 %65)
  store i64 %66, ptr %64, align 8
  %67 = getelementptr inbounds nuw i8, ptr %5, i64 160
  %68 = add i64 %3, -242834301215959509
  %69 = tail call noundef i64 @llvm.bswap.i64(i64 %68)
  store i64 %69, ptr %67, align 8
  %70 = getelementptr inbounds nuw i8, ptr %5, i64 168
  %71 = sub i64 -3588858202114426737, %3
  %72 = tail call noundef i64 @llvm.bswap.i64(i64 %71)
  store i64 %72, ptr %70, align 8
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 176
  %74 = add i64 %3, 2883454493032893253
  %75 = tail call noundef i64 @llvm.bswap.i64(i64 %74)
  store i64 %75, ptr %73, align 8
  %76 = getelementptr inbounds nuw i8, ptr %5, i64 184
  %77 = sub i64 9097354517224871855, %3
  %78 = tail call noundef i64 @llvm.bswap.i64(i64 %77)
  store i64 %78, ptr %76, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %79 = lshr i64 %2, 10
  %80 = icmp ult i64 %2, 1024
  br i1 %80, label %239, label %82

81:                                               ; preds = %4
  tail call fastcc void @XXH3_hashLong_128b_defaultSecret(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 noundef %2)
  br label %615

82:                                               ; preds = %7, %204
  %83 = phi i64 [ %236, %204 ], [ 2654435761, %7 ]
  %84 = phi i64 [ %232, %204 ], [ 2870177450012600261, %7 ]
  %85 = phi i64 [ %228, %204 ], [ 2246822519, %7 ]
  %86 = phi i64 [ %224, %204 ], [ -8796714831421723037, %7 ]
  %87 = phi i64 [ %220, %204 ], [ 1609587929392839161, %7 ]
  %88 = phi i64 [ %216, %204 ], [ -4417276706812531889, %7 ]
  %89 = phi i64 [ %212, %204 ], [ -7046029288634856825, %7 ]
  %90 = phi i64 [ %208, %204 ], [ 3266489917, %7 ]
  %91 = phi i64 [ %237, %204 ], [ 0, %7 ]
  %92 = shl i64 %91, 10
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 %92
  br label %94

94:                                               ; preds = %94, %82
  %95 = phi i64 [ %197, %94 ], [ %84, %82 ]
  %96 = phi i64 [ %201, %94 ], [ %83, %82 ]
  %97 = phi i64 [ %125, %94 ], [ %90, %82 ]
  %98 = phi i64 [ %129, %94 ], [ %89, %82 ]
  %99 = phi i64 [ %173, %94 ], [ %86, %82 ]
  %100 = phi i64 [ %177, %94 ], [ %85, %82 ]
  %101 = phi i64 [ %149, %94 ], [ %88, %82 ]
  %102 = phi i64 [ %153, %94 ], [ %87, %82 ]
  %103 = phi i64 [ %202, %94 ], [ 0, %82 ]
  %104 = shl i64 %103, 6
  %105 = getelementptr inbounds nuw i8, ptr %93, i64 %104
  %106 = shl i64 %103, 3
  %107 = getelementptr inbounds nuw i8, ptr %5, i64 %106
  %108 = load i64, ptr %105, align 1, !noalias !66
  %109 = tail call noundef i64 @llvm.bswap.i64(i64 %108)
  %110 = load i64, ptr %107, align 8, !noalias !66
  %111 = tail call noundef i64 @llvm.bswap.i64(i64 %110)
  %112 = xor i64 %111, %109
  %113 = add i64 %109, %98
  %114 = and i64 %112, 4294967295
  %115 = lshr i64 %112, 32
  %116 = mul nuw i64 %114, %115
  %117 = getelementptr inbounds nuw i8, ptr %105, i64 8
  %118 = load i64, ptr %117, align 1, !noalias !66
  %119 = tail call noundef i64 @llvm.bswap.i64(i64 %118)
  %120 = getelementptr inbounds nuw i8, ptr %107, i64 8
  %121 = load i64, ptr %120, align 8, !noalias !66
  %122 = tail call noundef i64 @llvm.bswap.i64(i64 %121)
  %123 = xor i64 %122, %119
  %124 = add i64 %119, %97
  %125 = add i64 %124, %116
  %126 = and i64 %123, 4294967295
  %127 = lshr i64 %123, 32
  %128 = mul nuw i64 %126, %127
  %129 = add i64 %113, %128
  %130 = getelementptr inbounds nuw i8, ptr %105, i64 16
  %131 = load i64, ptr %130, align 1, !noalias !66
  %132 = tail call noundef i64 @llvm.bswap.i64(i64 %131)
  %133 = getelementptr inbounds nuw i8, ptr %107, i64 16
  %134 = load i64, ptr %133, align 8, !noalias !66
  %135 = tail call noundef i64 @llvm.bswap.i64(i64 %134)
  %136 = xor i64 %135, %132
  %137 = add i64 %132, %102
  %138 = and i64 %136, 4294967295
  %139 = lshr i64 %136, 32
  %140 = mul nuw i64 %138, %139
  %141 = getelementptr inbounds nuw i8, ptr %105, i64 24
  %142 = load i64, ptr %141, align 1, !noalias !66
  %143 = tail call noundef i64 @llvm.bswap.i64(i64 %142)
  %144 = getelementptr inbounds nuw i8, ptr %107, i64 24
  %145 = load i64, ptr %144, align 8, !noalias !66
  %146 = tail call noundef i64 @llvm.bswap.i64(i64 %145)
  %147 = xor i64 %146, %143
  %148 = add i64 %143, %101
  %149 = add i64 %148, %140
  %150 = and i64 %147, 4294967295
  %151 = lshr i64 %147, 32
  %152 = mul nuw i64 %150, %151
  %153 = add i64 %137, %152
  %154 = getelementptr inbounds nuw i8, ptr %105, i64 32
  %155 = load i64, ptr %154, align 1, !noalias !66
  %156 = tail call noundef i64 @llvm.bswap.i64(i64 %155)
  %157 = getelementptr inbounds nuw i8, ptr %107, i64 32
  %158 = load i64, ptr %157, align 8, !noalias !66
  %159 = tail call noundef i64 @llvm.bswap.i64(i64 %158)
  %160 = xor i64 %159, %156
  %161 = add i64 %156, %100
  %162 = and i64 %160, 4294967295
  %163 = lshr i64 %160, 32
  %164 = mul nuw i64 %162, %163
  %165 = getelementptr inbounds nuw i8, ptr %105, i64 40
  %166 = load i64, ptr %165, align 1, !noalias !66
  %167 = tail call noundef i64 @llvm.bswap.i64(i64 %166)
  %168 = getelementptr inbounds nuw i8, ptr %107, i64 40
  %169 = load i64, ptr %168, align 8, !noalias !66
  %170 = tail call noundef i64 @llvm.bswap.i64(i64 %169)
  %171 = xor i64 %170, %167
  %172 = add i64 %167, %99
  %173 = add i64 %172, %164
  %174 = and i64 %171, 4294967295
  %175 = lshr i64 %171, 32
  %176 = mul nuw i64 %174, %175
  %177 = add i64 %161, %176
  %178 = getelementptr inbounds nuw i8, ptr %105, i64 48
  %179 = load i64, ptr %178, align 1, !noalias !66
  %180 = tail call noundef i64 @llvm.bswap.i64(i64 %179)
  %181 = getelementptr inbounds nuw i8, ptr %107, i64 48
  %182 = load i64, ptr %181, align 8, !noalias !66
  %183 = tail call noundef i64 @llvm.bswap.i64(i64 %182)
  %184 = xor i64 %183, %180
  %185 = add i64 %180, %96
  %186 = and i64 %184, 4294967295
  %187 = lshr i64 %184, 32
  %188 = mul nuw i64 %186, %187
  %189 = getelementptr inbounds nuw i8, ptr %105, i64 56
  %190 = load i64, ptr %189, align 1, !noalias !66
  %191 = tail call noundef i64 @llvm.bswap.i64(i64 %190)
  %192 = getelementptr inbounds nuw i8, ptr %107, i64 56
  %193 = load i64, ptr %192, align 8, !noalias !66
  %194 = tail call noundef i64 @llvm.bswap.i64(i64 %193)
  %195 = xor i64 %194, %191
  %196 = add i64 %191, %95
  %197 = add i64 %196, %188
  %198 = and i64 %195, 4294967295
  %199 = lshr i64 %195, 32
  %200 = mul nuw i64 %198, %199
  %201 = add i64 %185, %200
  %202 = add nuw nsw i64 %103, 1
  %203 = icmp eq i64 %202, 16
  br i1 %203, label %204, label %94

204:                                              ; preds = %94
  %205 = lshr i64 %125, 47
  %206 = xor i64 %205, %56
  %207 = xor i64 %206, %125
  %208 = mul i64 %207, 2654435761
  %209 = lshr i64 %129, 47
  %210 = xor i64 %209, %59
  %211 = xor i64 %210, %129
  %212 = mul i64 %211, 2654435761
  %213 = lshr i64 %149, 47
  %214 = xor i64 %213, %62
  %215 = xor i64 %214, %149
  %216 = mul i64 %215, 2654435761
  %217 = lshr i64 %153, 47
  %218 = xor i64 %217, %65
  %219 = xor i64 %218, %153
  %220 = mul i64 %219, 2654435761
  %221 = lshr i64 %173, 47
  %222 = xor i64 %221, %68
  %223 = xor i64 %222, %173
  %224 = mul i64 %223, 2654435761
  %225 = lshr i64 %177, 47
  %226 = xor i64 %225, %71
  %227 = xor i64 %226, %177
  %228 = mul i64 %227, 2654435761
  %229 = lshr i64 %197, 47
  %230 = xor i64 %229, %74
  %231 = xor i64 %230, %197
  %232 = mul i64 %231, 2654435761
  %233 = lshr i64 %201, 47
  %234 = xor i64 %233, %77
  %235 = xor i64 %234, %201
  %236 = mul i64 %235, 2654435761
  %237 = add nuw nsw i64 %91, 1
  %238 = icmp eq i64 %237, %79
  br i1 %238, label %239, label %82

239:                                              ; preds = %204, %7
  %240 = phi i64 [ 2654435761, %7 ], [ %236, %204 ]
  %241 = phi i64 [ 2870177450012600261, %7 ], [ %232, %204 ]
  %242 = phi i64 [ 2246822519, %7 ], [ %228, %204 ]
  %243 = phi i64 [ -8796714831421723037, %7 ], [ %224, %204 ]
  %244 = phi i64 [ 1609587929392839161, %7 ], [ %220, %204 ]
  %245 = phi i64 [ -4417276706812531889, %7 ], [ %216, %204 ]
  %246 = phi i64 [ -7046029288634856825, %7 ], [ %212, %204 ]
  %247 = phi i64 [ 3266489917, %7 ], [ %208, %204 ]
  %248 = and i64 %2, -1024
  %249 = and i64 %2, 1023
  %250 = lshr i64 %249, 6
  %251 = getelementptr inbounds nuw i8, ptr %1, i64 %248
  %252 = icmp samesign ult i64 %249, 64
  br i1 %252, label %363, label %253

253:                                              ; preds = %239, %253
  %254 = phi i64 [ %356, %253 ], [ %241, %239 ]
  %255 = phi i64 [ %360, %253 ], [ %240, %239 ]
  %256 = phi i64 [ %284, %253 ], [ %247, %239 ]
  %257 = phi i64 [ %288, %253 ], [ %246, %239 ]
  %258 = phi i64 [ %332, %253 ], [ %243, %239 ]
  %259 = phi i64 [ %336, %253 ], [ %242, %239 ]
  %260 = phi i64 [ %308, %253 ], [ %245, %239 ]
  %261 = phi i64 [ %312, %253 ], [ %244, %239 ]
  %262 = phi i64 [ %361, %253 ], [ 0, %239 ]
  %263 = shl i64 %262, 6
  %264 = getelementptr inbounds nuw i8, ptr %251, i64 %263
  %265 = shl i64 %262, 3
  %266 = getelementptr inbounds nuw i8, ptr %5, i64 %265
  %267 = load i64, ptr %264, align 1, !noalias !66
  %268 = tail call noundef i64 @llvm.bswap.i64(i64 %267)
  %269 = load i64, ptr %266, align 8, !noalias !66
  %270 = tail call noundef i64 @llvm.bswap.i64(i64 %269)
  %271 = xor i64 %270, %268
  %272 = add i64 %268, %257
  %273 = and i64 %271, 4294967295
  %274 = lshr i64 %271, 32
  %275 = mul nuw i64 %273, %274
  %276 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %277 = load i64, ptr %276, align 1, !noalias !66
  %278 = tail call noundef i64 @llvm.bswap.i64(i64 %277)
  %279 = getelementptr inbounds nuw i8, ptr %266, i64 8
  %280 = load i64, ptr %279, align 8, !noalias !66
  %281 = tail call noundef i64 @llvm.bswap.i64(i64 %280)
  %282 = xor i64 %281, %278
  %283 = add i64 %278, %256
  %284 = add i64 %283, %275
  %285 = and i64 %282, 4294967295
  %286 = lshr i64 %282, 32
  %287 = mul nuw i64 %285, %286
  %288 = add i64 %272, %287
  %289 = getelementptr inbounds nuw i8, ptr %264, i64 16
  %290 = load i64, ptr %289, align 1, !noalias !66
  %291 = tail call noundef i64 @llvm.bswap.i64(i64 %290)
  %292 = getelementptr inbounds nuw i8, ptr %266, i64 16
  %293 = load i64, ptr %292, align 8, !noalias !66
  %294 = tail call noundef i64 @llvm.bswap.i64(i64 %293)
  %295 = xor i64 %294, %291
  %296 = add i64 %291, %261
  %297 = and i64 %295, 4294967295
  %298 = lshr i64 %295, 32
  %299 = mul nuw i64 %297, %298
  %300 = getelementptr inbounds nuw i8, ptr %264, i64 24
  %301 = load i64, ptr %300, align 1, !noalias !66
  %302 = tail call noundef i64 @llvm.bswap.i64(i64 %301)
  %303 = getelementptr inbounds nuw i8, ptr %266, i64 24
  %304 = load i64, ptr %303, align 8, !noalias !66
  %305 = tail call noundef i64 @llvm.bswap.i64(i64 %304)
  %306 = xor i64 %305, %302
  %307 = add i64 %302, %260
  %308 = add i64 %307, %299
  %309 = and i64 %306, 4294967295
  %310 = lshr i64 %306, 32
  %311 = mul nuw i64 %309, %310
  %312 = add i64 %296, %311
  %313 = getelementptr inbounds nuw i8, ptr %264, i64 32
  %314 = load i64, ptr %313, align 1, !noalias !66
  %315 = tail call noundef i64 @llvm.bswap.i64(i64 %314)
  %316 = getelementptr inbounds nuw i8, ptr %266, i64 32
  %317 = load i64, ptr %316, align 8, !noalias !66
  %318 = tail call noundef i64 @llvm.bswap.i64(i64 %317)
  %319 = xor i64 %318, %315
  %320 = add i64 %315, %259
  %321 = and i64 %319, 4294967295
  %322 = lshr i64 %319, 32
  %323 = mul nuw i64 %321, %322
  %324 = getelementptr inbounds nuw i8, ptr %264, i64 40
  %325 = load i64, ptr %324, align 1, !noalias !66
  %326 = tail call noundef i64 @llvm.bswap.i64(i64 %325)
  %327 = getelementptr inbounds nuw i8, ptr %266, i64 40
  %328 = load i64, ptr %327, align 8, !noalias !66
  %329 = tail call noundef i64 @llvm.bswap.i64(i64 %328)
  %330 = xor i64 %329, %326
  %331 = add i64 %326, %258
  %332 = add i64 %331, %323
  %333 = and i64 %330, 4294967295
  %334 = lshr i64 %330, 32
  %335 = mul nuw i64 %333, %334
  %336 = add i64 %320, %335
  %337 = getelementptr inbounds nuw i8, ptr %264, i64 48
  %338 = load i64, ptr %337, align 1, !noalias !66
  %339 = tail call noundef i64 @llvm.bswap.i64(i64 %338)
  %340 = getelementptr inbounds nuw i8, ptr %266, i64 48
  %341 = load i64, ptr %340, align 8, !noalias !66
  %342 = tail call noundef i64 @llvm.bswap.i64(i64 %341)
  %343 = xor i64 %342, %339
  %344 = add i64 %339, %255
  %345 = and i64 %343, 4294967295
  %346 = lshr i64 %343, 32
  %347 = mul nuw i64 %345, %346
  %348 = getelementptr inbounds nuw i8, ptr %264, i64 56
  %349 = load i64, ptr %348, align 1, !noalias !66
  %350 = tail call noundef i64 @llvm.bswap.i64(i64 %349)
  %351 = getelementptr inbounds nuw i8, ptr %266, i64 56
  %352 = load i64, ptr %351, align 8, !noalias !66
  %353 = tail call noundef i64 @llvm.bswap.i64(i64 %352)
  %354 = xor i64 %353, %350
  %355 = add i64 %350, %254
  %356 = add i64 %355, %347
  %357 = and i64 %354, 4294967295
  %358 = lshr i64 %354, 32
  %359 = mul nuw i64 %357, %358
  %360 = add i64 %344, %359
  %361 = add nuw nsw i64 %262, 1
  %362 = icmp eq i64 %361, %250
  br i1 %362, label %363, label %253

363:                                              ; preds = %253, %239
  %364 = phi i64 [ %240, %239 ], [ %360, %253 ]
  %365 = phi i64 [ %241, %239 ], [ %356, %253 ]
  %366 = phi i64 [ %242, %239 ], [ %336, %253 ]
  %367 = phi i64 [ %243, %239 ], [ %332, %253 ]
  %368 = phi i64 [ %244, %239 ], [ %312, %253 ]
  %369 = phi i64 [ %245, %239 ], [ %308, %253 ]
  %370 = phi i64 [ %246, %239 ], [ %288, %253 ]
  %371 = phi i64 [ %247, %239 ], [ %284, %253 ]
  %372 = and i64 %2, 63
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %472, label %374

374:                                              ; preds = %363
  %375 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %376 = getelementptr inbounds i8, ptr %375, i64 -64
  %377 = getelementptr inbounds nuw i8, ptr %5, i64 121
  %378 = load i64, ptr %376, align 1, !noalias !66
  %379 = tail call noundef i64 @llvm.bswap.i64(i64 %378)
  %380 = load i64, ptr %377, align 1, !noalias !66
  %381 = tail call noundef i64 @llvm.bswap.i64(i64 %380)
  %382 = xor i64 %381, %379
  %383 = add i64 %379, %370
  %384 = and i64 %382, 4294967295
  %385 = lshr i64 %382, 32
  %386 = mul nuw i64 %384, %385
  %387 = getelementptr inbounds i8, ptr %375, i64 -56
  %388 = load i64, ptr %387, align 1, !noalias !66
  %389 = tail call noundef i64 @llvm.bswap.i64(i64 %388)
  %390 = getelementptr inbounds nuw i8, ptr %5, i64 129
  %391 = load i64, ptr %390, align 1, !noalias !66
  %392 = tail call noundef i64 @llvm.bswap.i64(i64 %391)
  %393 = xor i64 %392, %389
  %394 = add i64 %389, %371
  %395 = add i64 %394, %386
  %396 = and i64 %393, 4294967295
  %397 = lshr i64 %393, 32
  %398 = mul nuw i64 %396, %397
  %399 = add i64 %383, %398
  %400 = getelementptr inbounds i8, ptr %375, i64 -48
  %401 = load i64, ptr %400, align 1, !noalias !66
  %402 = tail call noundef i64 @llvm.bswap.i64(i64 %401)
  %403 = getelementptr inbounds nuw i8, ptr %5, i64 137
  %404 = load i64, ptr %403, align 1, !noalias !66
  %405 = tail call noundef i64 @llvm.bswap.i64(i64 %404)
  %406 = xor i64 %405, %402
  %407 = add i64 %402, %368
  %408 = and i64 %406, 4294967295
  %409 = lshr i64 %406, 32
  %410 = mul nuw i64 %408, %409
  %411 = getelementptr inbounds i8, ptr %375, i64 -40
  %412 = load i64, ptr %411, align 1, !noalias !66
  %413 = tail call noundef i64 @llvm.bswap.i64(i64 %412)
  %414 = getelementptr inbounds nuw i8, ptr %5, i64 145
  %415 = load i64, ptr %414, align 1, !noalias !66
  %416 = tail call noundef i64 @llvm.bswap.i64(i64 %415)
  %417 = xor i64 %416, %413
  %418 = add i64 %413, %369
  %419 = add i64 %418, %410
  %420 = and i64 %417, 4294967295
  %421 = lshr i64 %417, 32
  %422 = mul nuw i64 %420, %421
  %423 = add i64 %407, %422
  %424 = getelementptr inbounds i8, ptr %375, i64 -32
  %425 = load i64, ptr %424, align 1, !noalias !66
  %426 = tail call noundef i64 @llvm.bswap.i64(i64 %425)
  %427 = getelementptr inbounds nuw i8, ptr %5, i64 153
  %428 = load i64, ptr %427, align 1, !noalias !66
  %429 = tail call noundef i64 @llvm.bswap.i64(i64 %428)
  %430 = xor i64 %429, %426
  %431 = add i64 %426, %366
  %432 = and i64 %430, 4294967295
  %433 = lshr i64 %430, 32
  %434 = mul nuw i64 %432, %433
  %435 = getelementptr inbounds i8, ptr %375, i64 -24
  %436 = load i64, ptr %435, align 1, !noalias !66
  %437 = tail call noundef i64 @llvm.bswap.i64(i64 %436)
  %438 = getelementptr inbounds nuw i8, ptr %5, i64 161
  %439 = load i64, ptr %438, align 1, !noalias !66
  %440 = tail call noundef i64 @llvm.bswap.i64(i64 %439)
  %441 = xor i64 %440, %437
  %442 = add i64 %437, %367
  %443 = add i64 %442, %434
  %444 = and i64 %441, 4294967295
  %445 = lshr i64 %441, 32
  %446 = mul nuw i64 %444, %445
  %447 = add i64 %431, %446
  %448 = getelementptr inbounds i8, ptr %375, i64 -16
  %449 = load i64, ptr %448, align 1, !noalias !66
  %450 = tail call noundef i64 @llvm.bswap.i64(i64 %449)
  %451 = getelementptr inbounds nuw i8, ptr %5, i64 169
  %452 = load i64, ptr %451, align 1, !noalias !66
  %453 = tail call noundef i64 @llvm.bswap.i64(i64 %452)
  %454 = xor i64 %453, %450
  %455 = add i64 %450, %364
  %456 = and i64 %454, 4294967295
  %457 = lshr i64 %454, 32
  %458 = mul nuw i64 %456, %457
  %459 = getelementptr inbounds i8, ptr %375, i64 -8
  %460 = load i64, ptr %459, align 1, !noalias !66
  %461 = tail call noundef i64 @llvm.bswap.i64(i64 %460)
  %462 = getelementptr inbounds nuw i8, ptr %5, i64 177
  %463 = load i64, ptr %462, align 1, !noalias !66
  %464 = tail call noundef i64 @llvm.bswap.i64(i64 %463)
  %465 = xor i64 %464, %461
  %466 = add i64 %461, %365
  %467 = add i64 %466, %458
  %468 = and i64 %465, 4294967295
  %469 = lshr i64 %465, 32
  %470 = mul nuw i64 %468, %469
  %471 = add i64 %455, %470
  br label %472

472:                                              ; preds = %363, %374
  %473 = phi i64 [ %364, %363 ], [ %471, %374 ]
  %474 = phi i64 [ %365, %363 ], [ %467, %374 ]
  %475 = phi i64 [ %366, %363 ], [ %447, %374 ]
  %476 = phi i64 [ %367, %363 ], [ %443, %374 ]
  %477 = phi i64 [ %368, %363 ], [ %423, %374 ]
  %478 = phi i64 [ %369, %363 ], [ %419, %374 ]
  %479 = phi i64 [ %370, %363 ], [ %399, %374 ]
  %480 = phi i64 [ %371, %363 ], [ %395, %374 ]
  %481 = getelementptr inbounds nuw i8, ptr %5, i64 11
  %482 = mul i64 %2, -7046029288634856825
  %483 = load i64, ptr %481, align 1, !noalias !66
  %484 = tail call noundef i64 @llvm.bswap.i64(i64 %483)
  %485 = xor i64 %484, %480
  %486 = getelementptr inbounds nuw i8, ptr %5, i64 19
  %487 = load i64, ptr %486, align 1, !noalias !66
  %488 = tail call noundef i64 @llvm.bswap.i64(i64 %487)
  %489 = xor i64 %488, %479
  %490 = zext i64 %485 to i128
  %491 = zext i64 %489 to i128
  %492 = mul nuw i128 %491, %490
  %493 = lshr i128 %492, 64
  %494 = xor i128 %493, %492
  %495 = trunc i128 %494 to i64
  %496 = add i64 %482, %495
  %497 = getelementptr inbounds nuw i8, ptr %5, i64 27
  %498 = load i64, ptr %497, align 1, !noalias !66
  %499 = tail call noundef i64 @llvm.bswap.i64(i64 %498)
  %500 = xor i64 %499, %478
  %501 = getelementptr inbounds nuw i8, ptr %5, i64 35
  %502 = load i64, ptr %501, align 1, !noalias !66
  %503 = tail call noundef i64 @llvm.bswap.i64(i64 %502)
  %504 = xor i64 %503, %477
  %505 = zext i64 %500 to i128
  %506 = zext i64 %504 to i128
  %507 = mul nuw i128 %506, %505
  %508 = lshr i128 %507, 64
  %509 = xor i128 %508, %507
  %510 = trunc i128 %509 to i64
  %511 = add i64 %496, %510
  %512 = getelementptr inbounds nuw i8, ptr %5, i64 43
  %513 = load i64, ptr %512, align 1, !noalias !66
  %514 = tail call noundef i64 @llvm.bswap.i64(i64 %513)
  %515 = xor i64 %514, %476
  %516 = getelementptr inbounds nuw i8, ptr %5, i64 51
  %517 = load i64, ptr %516, align 1, !noalias !66
  %518 = tail call noundef i64 @llvm.bswap.i64(i64 %517)
  %519 = xor i64 %518, %475
  %520 = zext i64 %515 to i128
  %521 = zext i64 %519 to i128
  %522 = mul nuw i128 %521, %520
  %523 = lshr i128 %522, 64
  %524 = xor i128 %523, %522
  %525 = trunc i128 %524 to i64
  %526 = add i64 %511, %525
  %527 = getelementptr inbounds nuw i8, ptr %5, i64 59
  %528 = load i64, ptr %527, align 1, !noalias !66
  %529 = tail call noundef i64 @llvm.bswap.i64(i64 %528)
  %530 = xor i64 %529, %474
  %531 = getelementptr inbounds nuw i8, ptr %5, i64 67
  %532 = load i64, ptr %531, align 1, !noalias !66
  %533 = tail call noundef i64 @llvm.bswap.i64(i64 %532)
  %534 = xor i64 %533, %473
  %535 = zext i64 %530 to i128
  %536 = zext i64 %534 to i128
  %537 = mul nuw i128 %536, %535
  %538 = lshr i128 %537, 64
  %539 = xor i128 %538, %537
  %540 = trunc i128 %539 to i64
  %541 = add i64 %526, %540
  %542 = lshr i64 %541, 37
  %543 = xor i64 %542, %541
  %544 = mul i64 %543, 1609587929392839161
  %545 = lshr i64 %544, 32
  %546 = xor i64 %545, %544
  %547 = getelementptr inbounds nuw i8, ptr %5, i64 117
  %548 = mul i64 %2, -4417276706812531889
  %549 = xor i64 %548, -1
  %550 = load i64, ptr %547, align 1, !noalias !66
  %551 = tail call noundef i64 @llvm.bswap.i64(i64 %550)
  %552 = xor i64 %551, %480
  %553 = getelementptr inbounds nuw i8, ptr %5, i64 125
  %554 = load i64, ptr %553, align 1, !noalias !66
  %555 = tail call noundef i64 @llvm.bswap.i64(i64 %554)
  %556 = xor i64 %555, %479
  %557 = zext i64 %552 to i128
  %558 = zext i64 %556 to i128
  %559 = mul nuw i128 %558, %557
  %560 = lshr i128 %559, 64
  %561 = xor i128 %560, %559
  %562 = trunc i128 %561 to i64
  %563 = add i64 %562, %549
  %564 = getelementptr inbounds nuw i8, ptr %5, i64 133
  %565 = load i64, ptr %564, align 1, !noalias !66
  %566 = tail call noundef i64 @llvm.bswap.i64(i64 %565)
  %567 = xor i64 %566, %478
  %568 = getelementptr inbounds nuw i8, ptr %5, i64 141
  %569 = load i64, ptr %568, align 1, !noalias !66
  %570 = tail call noundef i64 @llvm.bswap.i64(i64 %569)
  %571 = xor i64 %570, %477
  %572 = zext i64 %567 to i128
  %573 = zext i64 %571 to i128
  %574 = mul nuw i128 %573, %572
  %575 = lshr i128 %574, 64
  %576 = xor i128 %575, %574
  %577 = trunc i128 %576 to i64
  %578 = add i64 %563, %577
  %579 = getelementptr inbounds nuw i8, ptr %5, i64 149
  %580 = load i64, ptr %579, align 1, !noalias !66
  %581 = tail call noundef i64 @llvm.bswap.i64(i64 %580)
  %582 = xor i64 %581, %476
  %583 = getelementptr inbounds nuw i8, ptr %5, i64 157
  %584 = load i64, ptr %583, align 1, !noalias !66
  %585 = tail call noundef i64 @llvm.bswap.i64(i64 %584)
  %586 = xor i64 %585, %475
  %587 = zext i64 %582 to i128
  %588 = zext i64 %586 to i128
  %589 = mul nuw i128 %588, %587
  %590 = lshr i128 %589, 64
  %591 = xor i128 %590, %589
  %592 = trunc i128 %591 to i64
  %593 = add i64 %578, %592
  %594 = getelementptr inbounds nuw i8, ptr %5, i64 165
  %595 = load i64, ptr %594, align 1, !noalias !66
  %596 = tail call noundef i64 @llvm.bswap.i64(i64 %595)
  %597 = xor i64 %596, %474
  %598 = getelementptr inbounds nuw i8, ptr %5, i64 173
  %599 = load i64, ptr %598, align 1, !noalias !66
  %600 = tail call noundef i64 @llvm.bswap.i64(i64 %599)
  %601 = xor i64 %600, %473
  %602 = zext i64 %597 to i128
  %603 = zext i64 %601 to i128
  %604 = mul nuw i128 %603, %602
  %605 = lshr i128 %604, 64
  %606 = xor i128 %605, %604
  %607 = trunc i128 %606 to i64
  %608 = add i64 %593, %607
  %609 = lshr i64 %608, 37
  %610 = xor i64 %609, %608
  %611 = mul i64 %610, 1609587929392839161
  %612 = lshr i64 %611, 32
  %613 = xor i64 %612, %611
  store i64 %546, ptr %0, align 8, !alias.scope !66
  %614 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %613, ptr %614, align 8, !alias.scope !66
  br label %615

615:                                              ; preds = %472, %81
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @XXH128(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %5 = icmp ult i64 %2, 17
  br i1 %5, label %6, label %131

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %2, 8
  br i1 %7, label %8, label %49

8:                                                ; preds = %6
  %9 = load i64, ptr %1, align 1, !noalias !69
  %10 = tail call noundef i64 @llvm.bswap.i64(i64 %9)
  %11 = add i64 %3, -4734510112055689544
  %12 = xor i64 %10, %11
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %14 = getelementptr inbounds i8, ptr %13, i64 -8
  %15 = load i64, ptr %14, align 1, !noalias !69
  %16 = tail call noundef i64 @llvm.bswap.i64(i64 %15)
  %17 = sub i64 2066345149520216444, %3
  %18 = xor i64 %16, %17
  %19 = xor i64 %12, %18
  %20 = zext i64 %19 to i128
  %21 = mul nuw i128 %20, 11400714785074694791
  %22 = trunc i128 %21 to i64
  %23 = lshr i128 %21, 64
  %24 = trunc nuw i128 %23 to i64
  %25 = mul nuw nsw i64 %2, 374761393
  %26 = add i64 %25, %22
  %27 = mul i64 %18, -7046029288634856825
  %28 = add i64 %27, %24
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %26
  %31 = zext i64 %30 to i128
  %32 = mul nuw i128 %31, 14029467366897019727
  %33 = trunc i128 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = lshr i128 %32, 64
  %36 = trunc nuw i128 %35 to i64
  %37 = mul i64 %28, -4417276706812531889
  %38 = add i64 %37, %36
  %39 = lshr i64 %33, 37
  %40 = xor i64 %39, %33
  %41 = mul i64 %40, 1609587929392839161
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  store i64 %43, ptr %0, align 8, !alias.scope !72
  %44 = lshr i64 %38, 37
  %45 = xor i64 %44, %38
  %46 = mul i64 %45, 1609587929392839161
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  store i64 %48, ptr %34, align 8, !alias.scope !72
  br label %327

49:                                               ; preds = %6
  %50 = icmp samesign ugt i64 %2, 3
  br i1 %50, label %51, label %90

51:                                               ; preds = %49
  %52 = load i32, ptr %1, align 1, !noalias !69
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1, !noalias !69
  %56 = zext i32 %55 to i64
  %57 = zext i32 %52 to i64
  %58 = shl nuw i64 %57, 32
  %59 = or disjoint i64 %58, %56
  %60 = tail call i64 @llvm.bswap.i64(i64 %59)
  %61 = add i64 %3, -4734510112055689544
  %62 = xor i64 %60, %61
  %63 = sub i64 2066345149520216444, %3
  %64 = xor i64 %59, %63
  %65 = lshr i64 %62, 51
  %66 = xor i64 %65, %62
  %67 = mul i64 %66, 2654435761
  %68 = add i64 %67, %2
  %69 = lshr i64 %68, 47
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, -4417276706812531889
  %72 = lshr i64 %64, 47
  %73 = xor i64 %72, %64
  %74 = mul i64 %73, -7046029288634856825
  %75 = sub i64 %74, %2
  %76 = lshr i64 %75, 43
  %77 = xor i64 %76, %75
  %78 = mul i64 %77, -8796714831421723037
  %79 = lshr i64 %71, 37
  %80 = xor i64 %79, %71
  %81 = mul i64 %80, 1609587929392839161
  %82 = lshr i64 %81, 32
  %83 = xor i64 %82, %81
  store i64 %83, ptr %0, align 8, !alias.scope !75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %85 = lshr i64 %78, 37
  %86 = xor i64 %85, %78
  %87 = mul i64 %86, 1609587929392839161
  %88 = lshr i64 %87, 32
  %89 = xor i64 %88, %87
  store i64 %89, ptr %84, align 8, !alias.scope !75
  br label %327

90:                                               ; preds = %49
  %91 = icmp eq i64 %2, 0
  br i1 %91, label %130, label %92

92:                                               ; preds = %90
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %93 = load i8, ptr %1, align 1, !noalias !81
  %94 = lshr i64 %2, 1
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 %94
  %96 = load i8, ptr %95, align 1, !noalias !81
  %97 = getelementptr i8, ptr %1, i64 %2
  %98 = getelementptr i8, ptr %97, i64 -1
  %99 = load i8, ptr %98, align 1, !noalias !81
  %100 = zext i8 %93 to i32
  %101 = zext i8 %96 to i32
  %102 = shl nuw nsw i32 %101, 8
  %103 = or disjoint i32 %102, %100
  %104 = zext i8 %99 to i32
  %105 = shl nuw nsw i32 %104, 16
  %106 = or disjoint i32 %103, %105
  %107 = trunc nuw nsw i64 %2 to i32
  %108 = shl nuw nsw i32 %107, 24
  %109 = or disjoint i32 %106, %108
  %110 = tail call noundef i32 @llvm.bswap.i32(i32 %109)
  %111 = zext nneg i32 %109 to i64
  %112 = add i64 %3, 963444408
  %113 = xor i64 %112, %111
  %114 = zext i32 %110 to i64
  %115 = sub i64 3192628259, %3
  %116 = xor i64 %115, %114
  %117 = mul i64 %113, -7046029288634856825
  %118 = mul i64 %116, 2870177450012600261
  %119 = lshr i64 %117, 37
  %120 = xor i64 %119, %117
  %121 = mul i64 %120, 1609587929392839161
  %122 = lshr i64 %121, 32
  %123 = xor i64 %122, %121
  store i64 %123, ptr %0, align 8, !alias.scope !81
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %125 = lshr i64 %118, 37
  %126 = xor i64 %125, %118
  %127 = mul i64 %126, 1609587929392839161
  %128 = lshr i64 %127, 32
  %129 = xor i64 %128, %127
  store i64 %129, ptr %124, align 8, !alias.scope !81
  br label %327

130:                                              ; preds = %90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !82
  br label %327

131:                                              ; preds = %4
  %132 = icmp ult i64 %2, 129
  br i1 %132, label %133, label %323

133:                                              ; preds = %131
  %134 = mul i64 %2, -7046029288634856825
  %135 = icmp samesign ugt i64 %2, 32
  br i1 %135, label %136, label %263

136:                                              ; preds = %133
  %137 = icmp samesign ugt i64 %2, 64
  br i1 %137, label %138, label %221

138:                                              ; preds = %136
  %139 = icmp samesign ugt i64 %2, 96
  br i1 %139, label %140, label %179

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %142 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %143 = getelementptr inbounds i8, ptr %142, i64 -64
  %144 = load i64, ptr %141, align 1, !noalias !69
  %145 = tail call noundef i64 @llvm.bswap.i64(i64 %144)
  %146 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %147 = load i64, ptr %146, align 1, !noalias !69
  %148 = tail call noundef i64 @llvm.bswap.i64(i64 %147)
  %149 = add i64 %3, 4554437623014685352
  %150 = xor i64 %145, %149
  %151 = sub i64 2111919702937427193, %3
  %152 = xor i64 %148, %151
  %153 = zext i64 %150 to i128
  %154 = zext i64 %152 to i128
  %155 = mul nuw i128 %154, %153
  %156 = lshr i128 %155, 64
  %157 = xor i128 %156, %155
  %158 = trunc i128 %157 to i64
  %159 = add i64 %134, %158
  %160 = load i64, ptr %143, align 1, !noalias !69
  %161 = tail call noundef i64 @llvm.bswap.i64(i64 %160)
  %162 = getelementptr inbounds i8, ptr %142, i64 -56
  %163 = load i64, ptr %162, align 1, !noalias !69
  %164 = tail call noundef i64 @llvm.bswap.i64(i64 %163)
  %165 = add i64 %164, %161
  %166 = xor i64 %159, %165
  %167 = add i64 %3, 3556072174620004746
  %168 = xor i64 %161, %167
  %169 = sub i64 7238261902898274248, %3
  %170 = xor i64 %164, %169
  %171 = zext i64 %168 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = add i64 %148, %145
  %178 = xor i64 %177, %176
  br label %179

179:                                              ; preds = %140, %138
  %180 = phi i64 [ %166, %140 ], [ %134, %138 ]
  %181 = phi i64 [ %178, %140 ], [ 0, %138 ]
  %182 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %184 = getelementptr inbounds i8, ptr %183, i64 -48
  %185 = load i64, ptr %182, align 1, !noalias !69
  %186 = tail call noundef i64 @llvm.bswap.i64(i64 %185)
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %188 = load i64, ptr %187, align 1, !noalias !69
  %189 = tail call noundef i64 @llvm.bswap.i64(i64 %188)
  %190 = add i64 %3, -3818837453329782724
  %191 = xor i64 %186, %190
  %192 = sub i64 -6688317018830679928, %3
  %193 = xor i64 %189, %192
  %194 = zext i64 %191 to i128
  %195 = zext i64 %193 to i128
  %196 = mul nuw i128 %195, %194
  %197 = lshr i128 %196, 64
  %198 = xor i128 %197, %196
  %199 = trunc i128 %198 to i64
  %200 = add i64 %180, %199
  %201 = load i64, ptr %184, align 1, !noalias !69
  %202 = tail call noundef i64 @llvm.bswap.i64(i64 %201)
  %203 = getelementptr inbounds i8, ptr %183, i64 -40
  %204 = load i64, ptr %203, align 1, !noalias !69
  %205 = tail call noundef i64 @llvm.bswap.i64(i64 %204)
  %206 = add i64 %205, %202
  %207 = xor i64 %200, %206
  %208 = add i64 %3, 5690594596133299313
  %209 = xor i64 %202, %208
  %210 = sub i64 -2833645246901970632, %3
  %211 = xor i64 %205, %210
  %212 = zext i64 %209 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %181, %217
  %219 = add i64 %189, %186
  %220 = xor i64 %218, %219
  br label %221

221:                                              ; preds = %179, %136
  %222 = phi i64 [ %207, %179 ], [ %134, %136 ]
  %223 = phi i64 [ %220, %179 ], [ 0, %136 ]
  %224 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %225 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %226 = getelementptr inbounds i8, ptr %225, i64 -32
  %227 = load i64, ptr %224, align 1, !noalias !69
  %228 = tail call noundef i64 @llvm.bswap.i64(i64 %227)
  %229 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %230 = load i64, ptr %229, align 1, !noalias !69
  %231 = tail call noundef i64 @llvm.bswap.i64(i64 %230)
  %232 = add i64 %3, 8711581037947681227
  %233 = xor i64 %228, %232
  %234 = sub i64 2410270004345854594, %3
  %235 = xor i64 %231, %234
  %236 = zext i64 %233 to i128
  %237 = zext i64 %235 to i128
  %238 = mul nuw i128 %237, %236
  %239 = lshr i128 %238, 64
  %240 = xor i128 %239, %238
  %241 = trunc i128 %240 to i64
  %242 = add i64 %222, %241
  %243 = load i64, ptr %226, align 1, !noalias !69
  %244 = tail call noundef i64 @llvm.bswap.i64(i64 %243)
  %245 = getelementptr inbounds i8, ptr %225, i64 -24
  %246 = load i64, ptr %245, align 1, !noalias !69
  %247 = tail call noundef i64 @llvm.bswap.i64(i64 %246)
  %248 = add i64 %247, %244
  %249 = xor i64 %242, %248
  %250 = add i64 %3, -8204357891075471176
  %251 = xor i64 %244, %250
  %252 = sub i64 5487137525590930912, %3
  %253 = xor i64 %247, %252
  %254 = zext i64 %251 to i128
  %255 = zext i64 %253 to i128
  %256 = mul nuw i128 %255, %254
  %257 = lshr i128 %256, 64
  %258 = xor i128 %257, %256
  %259 = trunc i128 %258 to i64
  %260 = add i64 %223, %259
  %261 = add i64 %231, %228
  %262 = xor i64 %260, %261
  br label %263

263:                                              ; preds = %221, %133
  %264 = phi i64 [ %249, %221 ], [ %134, %133 ]
  %265 = phi i64 [ %262, %221 ], [ 0, %133 ]
  %266 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %267 = getelementptr inbounds i8, ptr %266, i64 -16
  %268 = load i64, ptr %1, align 1, !noalias !69
  %269 = tail call noundef i64 @llvm.bswap.i64(i64 %268)
  %270 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %271 = load i64, ptr %270, align 1, !noalias !69
  %272 = tail call noundef i64 @llvm.bswap.i64(i64 %271)
  %273 = add i64 %3, -4734510112055689544
  %274 = xor i64 %269, %273
  %275 = sub i64 2066345149520216444, %3
  %276 = xor i64 %272, %275
  %277 = zext i64 %274 to i128
  %278 = zext i64 %276 to i128
  %279 = mul nuw i128 %278, %277
  %280 = lshr i128 %279, 64
  %281 = xor i128 %280, %279
  %282 = trunc i128 %281 to i64
  %283 = add i64 %264, %282
  %284 = load i64, ptr %267, align 1, !noalias !69
  %285 = tail call noundef i64 @llvm.bswap.i64(i64 %284)
  %286 = getelementptr inbounds i8, ptr %266, i64 -8
  %287 = load i64, ptr %286, align 1, !noalias !69
  %288 = tail call noundef i64 @llvm.bswap.i64(i64 %287)
  %289 = add i64 %288, %285
  %290 = xor i64 %283, %289
  %291 = add i64 %3, -2623469361688619810
  %292 = xor i64 %285, %291
  %293 = sub i64 2262974939099578482, %3
  %294 = xor i64 %288, %293
  %295 = zext i64 %292 to i128
  %296 = zext i64 %294 to i128
  %297 = mul nuw i128 %296, %295
  %298 = lshr i128 %297, 64
  %299 = xor i128 %298, %297
  %300 = trunc i128 %299 to i64
  %301 = add i64 %265, %300
  %302 = add i64 %272, %269
  %303 = xor i64 %301, %302
  %304 = add i64 %303, %290
  %305 = mul i64 %290, -7046029288634856825
  %306 = mul i64 %303, -8796714831421723037
  %307 = sub i64 %2, %3
  %308 = mul i64 %307, -4417276706812531889
  %309 = add i64 %305, %308
  %310 = add i64 %309, %306
  %311 = lshr i64 %304, 37
  %312 = xor i64 %311, %304
  %313 = mul i64 %312, 1609587929392839161
  %314 = lshr i64 %313, 32
  %315 = xor i64 %314, %313
  store i64 %315, ptr %0, align 8, !alias.scope !85
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %317 = lshr i64 %310, 37
  %318 = xor i64 %317, %310
  %319 = mul i64 %318, 1609587929392839161
  %320 = lshr i64 %319, 32
  %321 = xor i64 %320, %319
  %322 = sub i64 0, %321
  store i64 %322, ptr %316, align 8, !alias.scope !85
  br label %327

323:                                              ; preds = %131
  %324 = icmp ult i64 %2, 241
  br i1 %324, label %325, label %326

325:                                              ; preds = %323
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull @kSecret, i64 noundef %3)
  br label %327

326:                                              ; preds = %323
  tail call fastcc void @XXH3_hashLong_128b_withSeed(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef readonly %1, i64 noundef %2, i64 noundef %3)
  br label %327

327:                                              ; preds = %8, %51, %92, %130, %263, %325, %326
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local zeroext range(i32 0, 2) i32 @XXH3_128bits_reset(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %6, align 16
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %8, align 32
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @kSecret, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 128, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 16, ptr %14, align 4
  br label %15

15:                                               ; preds = %1, %3
  %16 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local zeroext range(i32 0, 2) i32 @XXH3_128bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %1, ptr %14, align 16
  %15 = trunc i64 %2 to i32
  %16 = add i32 %15, -64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 %16, ptr %17, align 4
  %18 = lshr i32 %16, 3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %18, ptr %19, align 4
  %20 = icmp eq ptr %1, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = icmp ult i64 %2, 136
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %21, %5, %3
  %25 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local zeroext range(i32 0, 2) i32 @XXH3_128bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %89, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 320, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %1, ptr %14, align 32
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 128, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 16, ptr %17, align 4
  %18 = add i64 %1, -4734510112055689544
  %19 = tail call noundef i64 @llvm.bswap.i64(i64 %18)
  store i64 %19, ptr %5, align 1
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %21 = sub i64 2066345149520216444, %1
  %22 = tail call noundef i64 @llvm.bswap.i64(i64 %21)
  store i64 %22, ptr %20, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %24 = add i64 %1, -2623469361688619810
  %25 = tail call noundef i64 @llvm.bswap.i64(i64 %24)
  store i64 %25, ptr %23, align 1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %27 = sub i64 2262974939099578482, %1
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %27)
  store i64 %28, ptr %26, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %30 = add i64 %1, 8711581037947681227
  %31 = tail call noundef i64 @llvm.bswap.i64(i64 %30)
  store i64 %31, ptr %29, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %33 = sub i64 2410270004345854594, %1
  %34 = tail call noundef i64 @llvm.bswap.i64(i64 %33)
  store i64 %34, ptr %32, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %36 = add i64 %1, -8204357891075471176
  %37 = tail call noundef i64 @llvm.bswap.i64(i64 %36)
  store i64 %37, ptr %35, align 1
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %39 = sub i64 5487137525590930912, %1
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  store i64 %40, ptr %38, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %42 = add i64 %1, -3818837453329782724
  %43 = tail call noundef i64 @llvm.bswap.i64(i64 %42)
  store i64 %43, ptr %41, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %45 = sub i64 -6688317018830679928, %1
  %46 = tail call noundef i64 @llvm.bswap.i64(i64 %45)
  store i64 %46, ptr %44, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %48 = add i64 %1, 5690594596133299313
  %49 = tail call noundef i64 @llvm.bswap.i64(i64 %48)
  store i64 %49, ptr %47, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %51 = sub i64 -2833645246901970632, %1
  %52 = tail call noundef i64 @llvm.bswap.i64(i64 %51)
  store i64 %52, ptr %50, align 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %54 = add i64 %1, 4554437623014685352
  %55 = tail call noundef i64 @llvm.bswap.i64(i64 %54)
  store i64 %55, ptr %53, align 1
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %57 = sub i64 2111919702937427193, %1
  %58 = tail call noundef i64 @llvm.bswap.i64(i64 %57)
  store i64 %58, ptr %56, align 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %60 = add i64 %1, 3556072174620004746
  %61 = tail call noundef i64 @llvm.bswap.i64(i64 %60)
  store i64 %61, ptr %59, align 1
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %63 = sub i64 7238261902898274248, %1
  %64 = tail call noundef i64 @llvm.bswap.i64(i64 %63)
  store i64 %64, ptr %62, align 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %66 = add i64 %1, -4329134394285701654
  %67 = tail call noundef i64 @llvm.bswap.i64(i64 %66)
  store i64 %67, ptr %65, align 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %69 = sub i64 -1485321483350670907, %1
  %70 = tail call noundef i64 @llvm.bswap.i64(i64 %69)
  store i64 %70, ptr %68, align 1
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %72 = add i64 %1, 5321830579834785047
  %73 = tail call noundef i64 @llvm.bswap.i64(i64 %72)
  store i64 %73, ptr %71, align 1
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %75 = sub i64 -7032137544937171245, %1
  %76 = tail call noundef i64 @llvm.bswap.i64(i64 %75)
  store i64 %76, ptr %74, align 1
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %78 = add i64 %1, -242834301215959509
  %79 = tail call noundef i64 @llvm.bswap.i64(i64 %78)
  store i64 %79, ptr %77, align 1
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %81 = sub i64 -3588858202114426737, %1
  %82 = tail call noundef i64 @llvm.bswap.i64(i64 %81)
  store i64 %82, ptr %80, align 1
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %84 = add i64 %1, 2883454493032893253
  %85 = tail call noundef i64 @llvm.bswap.i64(i64 %84)
  store i64 %85, ptr %83, align 1
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %87 = sub i64 9097354517224871855, %1
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %87)
  store i64 %88, ptr %86, align 1
  store ptr %5, ptr %15, align 16
  br label %89

89:                                               ; preds = %2, %4
  %90 = phi i32 [ 0, %4 ], [ 1, %2 ]
  ret i32 %90
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext range(i32 0, 2) i32 @XXH3_128bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %1015, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %8 = load i64, ptr %7, align 8
  %9 = add i64 %8, %2
  store i64 %9, ptr %7, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %11 = load i32, ptr %10, align 64
  %12 = zext i32 %11 to i64
  %13 = add i64 %2, %12
  %14 = icmp ult i64 %13, 257
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %18 = trunc i64 %2 to i32
  %19 = load i32, ptr %10, align 64
  %20 = add i32 %19, %18
  br label %1013

21:                                               ; preds = %5
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %511, label %23

23:                                               ; preds = %21
  %24 = sub i32 256, %11
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull readonly align 1 %1, i64 %25, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, ptr %29, align 4
  %38 = sub i32 %31, %37
  %39 = zext i32 %38 to i64
  %40 = icmp ugt i32 %38, 4
  %41 = shl i32 %37, 3
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %33, i64 %42
  br i1 %40, label %380, label %44

44:                                               ; preds = %23
  %45 = icmp eq i32 %31, %37
  br i1 %45, label %46, label %61

46:                                               ; preds = %44
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %60 = load i64, ptr %59, align 8
  br label %188

61:                                               ; preds = %44
  %62 = tail call i64 @llvm.umax.i64(i64 %39, i64 1)
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %75 = load i64, ptr %0, align 8
  %76 = load i64, ptr %73, align 8
  %77 = load i64, ptr %74, align 8
  br label %78

78:                                               ; preds = %61, %78
  %79 = phi i64 [ %181, %78 ], [ %77, %61 ]
  %80 = phi i64 [ %185, %78 ], [ %76, %61 ]
  %81 = phi i64 [ %109, %78 ], [ %75, %61 ]
  %82 = phi i64 [ %113, %78 ], [ %72, %61 ]
  %83 = phi i64 [ %157, %78 ], [ %70, %61 ]
  %84 = phi i64 [ %161, %78 ], [ %68, %61 ]
  %85 = phi i64 [ %133, %78 ], [ %66, %61 ]
  %86 = phi i64 [ %137, %78 ], [ %64, %61 ]
  %87 = phi i64 [ %186, %78 ], [ 0, %61 ]
  %88 = shl i64 %87, 6
  %89 = getelementptr inbounds nuw i8, ptr %26, i64 %88
  %90 = shl i64 %87, 3
  %91 = getelementptr inbounds nuw i8, ptr %43, i64 %90
  %92 = load i64, ptr %89, align 1
  %93 = tail call noundef i64 @llvm.bswap.i64(i64 %92)
  %94 = load i64, ptr %91, align 1
  %95 = tail call noundef i64 @llvm.bswap.i64(i64 %94)
  %96 = xor i64 %95, %93
  %97 = add i64 %82, %93
  store i64 %97, ptr %71, align 8
  %98 = and i64 %96, 4294967295
  %99 = lshr i64 %96, 32
  %100 = mul nuw i64 %98, %99
  %101 = add i64 %100, %81
  store i64 %101, ptr %0, align 8
  %102 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %103 = load i64, ptr %102, align 1
  %104 = tail call noundef i64 @llvm.bswap.i64(i64 %103)
  %105 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %106 = load i64, ptr %105, align 1
  %107 = tail call noundef i64 @llvm.bswap.i64(i64 %106)
  %108 = xor i64 %107, %104
  %109 = add i64 %101, %104
  store i64 %109, ptr %0, align 8
  %110 = and i64 %108, 4294967295
  %111 = lshr i64 %108, 32
  %112 = mul nuw i64 %110, %111
  %113 = add i64 %112, %97
  store i64 %113, ptr %71, align 8
  %114 = getelementptr inbounds nuw i8, ptr %89, i64 16
  %115 = load i64, ptr %114, align 1
  %116 = tail call noundef i64 @llvm.bswap.i64(i64 %115)
  %117 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %118 = load i64, ptr %117, align 1
  %119 = tail call noundef i64 @llvm.bswap.i64(i64 %118)
  %120 = xor i64 %119, %116
  %121 = add i64 %86, %116
  store i64 %121, ptr %63, align 8
  %122 = and i64 %120, 4294967295
  %123 = lshr i64 %120, 32
  %124 = mul nuw i64 %122, %123
  %125 = add i64 %124, %85
  store i64 %125, ptr %65, align 8
  %126 = getelementptr inbounds nuw i8, ptr %89, i64 24
  %127 = load i64, ptr %126, align 1
  %128 = tail call noundef i64 @llvm.bswap.i64(i64 %127)
  %129 = getelementptr inbounds nuw i8, ptr %91, i64 24
  %130 = load i64, ptr %129, align 1
  %131 = tail call noundef i64 @llvm.bswap.i64(i64 %130)
  %132 = xor i64 %131, %128
  %133 = add i64 %125, %128
  store i64 %133, ptr %65, align 8
  %134 = and i64 %132, 4294967295
  %135 = lshr i64 %132, 32
  %136 = mul nuw i64 %134, %135
  %137 = add i64 %136, %121
  store i64 %137, ptr %63, align 8
  %138 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %139 = load i64, ptr %138, align 1
  %140 = tail call noundef i64 @llvm.bswap.i64(i64 %139)
  %141 = getelementptr inbounds nuw i8, ptr %91, i64 32
  %142 = load i64, ptr %141, align 1
  %143 = tail call noundef i64 @llvm.bswap.i64(i64 %142)
  %144 = xor i64 %143, %140
  %145 = add i64 %84, %140
  store i64 %145, ptr %67, align 8
  %146 = and i64 %144, 4294967295
  %147 = lshr i64 %144, 32
  %148 = mul nuw i64 %146, %147
  %149 = add i64 %148, %83
  store i64 %149, ptr %69, align 8
  %150 = getelementptr inbounds nuw i8, ptr %89, i64 40
  %151 = load i64, ptr %150, align 1
  %152 = tail call noundef i64 @llvm.bswap.i64(i64 %151)
  %153 = getelementptr inbounds nuw i8, ptr %91, i64 40
  %154 = load i64, ptr %153, align 1
  %155 = tail call noundef i64 @llvm.bswap.i64(i64 %154)
  %156 = xor i64 %155, %152
  %157 = add i64 %149, %152
  store i64 %157, ptr %69, align 8
  %158 = and i64 %156, 4294967295
  %159 = lshr i64 %156, 32
  %160 = mul nuw i64 %158, %159
  %161 = add i64 %160, %145
  store i64 %161, ptr %67, align 8
  %162 = getelementptr inbounds nuw i8, ptr %89, i64 48
  %163 = load i64, ptr %162, align 1
  %164 = tail call noundef i64 @llvm.bswap.i64(i64 %163)
  %165 = getelementptr inbounds nuw i8, ptr %91, i64 48
  %166 = load i64, ptr %165, align 1
  %167 = tail call noundef i64 @llvm.bswap.i64(i64 %166)
  %168 = xor i64 %167, %164
  %169 = add i64 %80, %164
  store i64 %169, ptr %73, align 8
  %170 = and i64 %168, 4294967295
  %171 = lshr i64 %168, 32
  %172 = mul nuw i64 %170, %171
  %173 = add i64 %172, %79
  store i64 %173, ptr %74, align 8
  %174 = getelementptr inbounds nuw i8, ptr %89, i64 56
  %175 = load i64, ptr %174, align 1
  %176 = tail call noundef i64 @llvm.bswap.i64(i64 %175)
  %177 = getelementptr inbounds nuw i8, ptr %91, i64 56
  %178 = load i64, ptr %177, align 1
  %179 = tail call noundef i64 @llvm.bswap.i64(i64 %178)
  %180 = xor i64 %179, %176
  %181 = add i64 %173, %176
  store i64 %181, ptr %74, align 8
  %182 = and i64 %180, 4294967295
  %183 = lshr i64 %180, 32
  %184 = mul nuw i64 %182, %183
  %185 = add i64 %184, %169
  store i64 %185, ptr %73, align 8
  %186 = add nuw nsw i64 %87, 1
  %187 = icmp eq i64 %186, %62
  br i1 %187, label %188, label %78

188:                                              ; preds = %78, %46
  %189 = phi i64 [ %60, %46 ], [ %185, %78 ]
  %190 = phi i64 [ %58, %46 ], [ %181, %78 ]
  %191 = phi i64 [ %56, %46 ], [ %161, %78 ]
  %192 = phi i64 [ %54, %46 ], [ %157, %78 ]
  %193 = phi i64 [ %52, %46 ], [ %137, %78 ]
  %194 = phi i64 [ %50, %46 ], [ %133, %78 ]
  %195 = phi i64 [ %48, %46 ], [ %113, %78 ]
  %196 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  %197 = load i64, ptr %196, align 1
  %198 = tail call noundef i64 @llvm.bswap.i64(i64 %197)
  %199 = load i64, ptr %0, align 8
  %200 = lshr i64 %199, 47
  %201 = xor i64 %198, %200
  %202 = xor i64 %201, %199
  %203 = mul i64 %202, 2654435761
  store i64 %203, ptr %0, align 8
  %204 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %205 = load i64, ptr %204, align 1
  %206 = tail call noundef i64 @llvm.bswap.i64(i64 %205)
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %208 = lshr i64 %195, 47
  %209 = xor i64 %206, %208
  %210 = xor i64 %209, %195
  %211 = mul i64 %210, 2654435761
  store i64 %211, ptr %207, align 8
  %212 = getelementptr inbounds nuw i8, ptr %196, i64 16
  %213 = load i64, ptr %212, align 1
  %214 = tail call noundef i64 @llvm.bswap.i64(i64 %213)
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %216 = lshr i64 %194, 47
  %217 = xor i64 %214, %216
  %218 = xor i64 %217, %194
  %219 = mul i64 %218, 2654435761
  store i64 %219, ptr %215, align 8
  %220 = getelementptr inbounds nuw i8, ptr %196, i64 24
  %221 = load i64, ptr %220, align 1
  %222 = tail call noundef i64 @llvm.bswap.i64(i64 %221)
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %224 = lshr i64 %193, 47
  %225 = xor i64 %222, %224
  %226 = xor i64 %225, %193
  %227 = mul i64 %226, 2654435761
  store i64 %227, ptr %223, align 8
  %228 = getelementptr inbounds nuw i8, ptr %196, i64 32
  %229 = load i64, ptr %228, align 1
  %230 = tail call noundef i64 @llvm.bswap.i64(i64 %229)
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %232 = lshr i64 %192, 47
  %233 = xor i64 %230, %232
  %234 = xor i64 %233, %192
  %235 = mul i64 %234, 2654435761
  store i64 %235, ptr %231, align 8
  %236 = getelementptr inbounds nuw i8, ptr %196, i64 40
  %237 = load i64, ptr %236, align 1
  %238 = tail call noundef i64 @llvm.bswap.i64(i64 %237)
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %240 = lshr i64 %191, 47
  %241 = xor i64 %238, %240
  %242 = xor i64 %241, %191
  %243 = mul i64 %242, 2654435761
  store i64 %243, ptr %239, align 8
  %244 = getelementptr inbounds nuw i8, ptr %196, i64 48
  %245 = load i64, ptr %244, align 1
  %246 = tail call noundef i64 @llvm.bswap.i64(i64 %245)
  %247 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %248 = lshr i64 %190, 47
  %249 = xor i64 %246, %248
  %250 = xor i64 %249, %190
  %251 = mul i64 %250, 2654435761
  store i64 %251, ptr %247, align 8
  %252 = getelementptr inbounds nuw i8, ptr %196, i64 56
  %253 = load i64, ptr %252, align 1
  %254 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %256 = lshr i64 %189, 47
  %257 = xor i64 %254, %256
  %258 = xor i64 %257, %189
  %259 = mul i64 %258, 2654435761
  store i64 %259, ptr %255, align 8
  %260 = shl nuw nsw i64 %39, 6
  %261 = getelementptr inbounds nuw i8, ptr %26, i64 %260
  %262 = sub nsw i64 4, %39
  %263 = icmp eq i32 %38, 4
  br i1 %263, label %378, label %264

264:                                              ; preds = %188
  %265 = load i64, ptr %0, align 8
  %266 = load i64, ptr %255, align 8
  %267 = load i64, ptr %247, align 8
  br label %268

268:                                              ; preds = %264, %268
  %269 = phi i64 [ %371, %268 ], [ %267, %264 ]
  %270 = phi i64 [ %375, %268 ], [ %266, %264 ]
  %271 = phi i64 [ %299, %268 ], [ %265, %264 ]
  %272 = phi i64 [ %303, %268 ], [ %211, %264 ]
  %273 = phi i64 [ %347, %268 ], [ %235, %264 ]
  %274 = phi i64 [ %351, %268 ], [ %243, %264 ]
  %275 = phi i64 [ %323, %268 ], [ %219, %264 ]
  %276 = phi i64 [ %327, %268 ], [ %227, %264 ]
  %277 = phi i64 [ %376, %268 ], [ 0, %264 ]
  %278 = shl i64 %277, 6
  %279 = getelementptr inbounds nuw i8, ptr %261, i64 %278
  %280 = shl i64 %277, 3
  %281 = getelementptr inbounds nuw i8, ptr %33, i64 %280
  %282 = load i64, ptr %279, align 1
  %283 = tail call noundef i64 @llvm.bswap.i64(i64 %282)
  %284 = load i64, ptr %281, align 1
  %285 = tail call noundef i64 @llvm.bswap.i64(i64 %284)
  %286 = xor i64 %285, %283
  %287 = add i64 %272, %283
  store i64 %287, ptr %207, align 8
  %288 = and i64 %286, 4294967295
  %289 = lshr i64 %286, 32
  %290 = mul nuw i64 %288, %289
  %291 = add i64 %290, %271
  store i64 %291, ptr %0, align 8
  %292 = getelementptr inbounds nuw i8, ptr %279, i64 8
  %293 = load i64, ptr %292, align 1
  %294 = tail call noundef i64 @llvm.bswap.i64(i64 %293)
  %295 = getelementptr inbounds nuw i8, ptr %281, i64 8
  %296 = load i64, ptr %295, align 1
  %297 = tail call noundef i64 @llvm.bswap.i64(i64 %296)
  %298 = xor i64 %297, %294
  %299 = add i64 %291, %294
  store i64 %299, ptr %0, align 8
  %300 = and i64 %298, 4294967295
  %301 = lshr i64 %298, 32
  %302 = mul nuw i64 %300, %301
  %303 = add i64 %302, %287
  store i64 %303, ptr %207, align 8
  %304 = getelementptr inbounds nuw i8, ptr %279, i64 16
  %305 = load i64, ptr %304, align 1
  %306 = tail call noundef i64 @llvm.bswap.i64(i64 %305)
  %307 = getelementptr inbounds nuw i8, ptr %281, i64 16
  %308 = load i64, ptr %307, align 1
  %309 = tail call noundef i64 @llvm.bswap.i64(i64 %308)
  %310 = xor i64 %309, %306
  %311 = add i64 %276, %306
  store i64 %311, ptr %223, align 8
  %312 = and i64 %310, 4294967295
  %313 = lshr i64 %310, 32
  %314 = mul nuw i64 %312, %313
  %315 = add i64 %314, %275
  store i64 %315, ptr %215, align 8
  %316 = getelementptr inbounds nuw i8, ptr %279, i64 24
  %317 = load i64, ptr %316, align 1
  %318 = tail call noundef i64 @llvm.bswap.i64(i64 %317)
  %319 = getelementptr inbounds nuw i8, ptr %281, i64 24
  %320 = load i64, ptr %319, align 1
  %321 = tail call noundef i64 @llvm.bswap.i64(i64 %320)
  %322 = xor i64 %321, %318
  %323 = add i64 %315, %318
  store i64 %323, ptr %215, align 8
  %324 = and i64 %322, 4294967295
  %325 = lshr i64 %322, 32
  %326 = mul nuw i64 %324, %325
  %327 = add i64 %326, %311
  store i64 %327, ptr %223, align 8
  %328 = getelementptr inbounds nuw i8, ptr %279, i64 32
  %329 = load i64, ptr %328, align 1
  %330 = tail call noundef i64 @llvm.bswap.i64(i64 %329)
  %331 = getelementptr inbounds nuw i8, ptr %281, i64 32
  %332 = load i64, ptr %331, align 1
  %333 = tail call noundef i64 @llvm.bswap.i64(i64 %332)
  %334 = xor i64 %333, %330
  %335 = add i64 %274, %330
  store i64 %335, ptr %239, align 8
  %336 = and i64 %334, 4294967295
  %337 = lshr i64 %334, 32
  %338 = mul nuw i64 %336, %337
  %339 = add i64 %338, %273
  store i64 %339, ptr %231, align 8
  %340 = getelementptr inbounds nuw i8, ptr %279, i64 40
  %341 = load i64, ptr %340, align 1
  %342 = tail call noundef i64 @llvm.bswap.i64(i64 %341)
  %343 = getelementptr inbounds nuw i8, ptr %281, i64 40
  %344 = load i64, ptr %343, align 1
  %345 = tail call noundef i64 @llvm.bswap.i64(i64 %344)
  %346 = xor i64 %345, %342
  %347 = add i64 %339, %342
  store i64 %347, ptr %231, align 8
  %348 = and i64 %346, 4294967295
  %349 = lshr i64 %346, 32
  %350 = mul nuw i64 %348, %349
  %351 = add i64 %350, %335
  store i64 %351, ptr %239, align 8
  %352 = getelementptr inbounds nuw i8, ptr %279, i64 48
  %353 = load i64, ptr %352, align 1
  %354 = tail call noundef i64 @llvm.bswap.i64(i64 %353)
  %355 = getelementptr inbounds nuw i8, ptr %281, i64 48
  %356 = load i64, ptr %355, align 1
  %357 = tail call noundef i64 @llvm.bswap.i64(i64 %356)
  %358 = xor i64 %357, %354
  %359 = add i64 %270, %354
  store i64 %359, ptr %255, align 8
  %360 = and i64 %358, 4294967295
  %361 = lshr i64 %358, 32
  %362 = mul nuw i64 %360, %361
  %363 = add i64 %362, %269
  store i64 %363, ptr %247, align 8
  %364 = getelementptr inbounds nuw i8, ptr %279, i64 56
  %365 = load i64, ptr %364, align 1
  %366 = tail call noundef i64 @llvm.bswap.i64(i64 %365)
  %367 = getelementptr inbounds nuw i8, ptr %281, i64 56
  %368 = load i64, ptr %367, align 1
  %369 = tail call noundef i64 @llvm.bswap.i64(i64 %368)
  %370 = xor i64 %369, %366
  %371 = add i64 %363, %366
  store i64 %371, ptr %247, align 8
  %372 = and i64 %370, 4294967295
  %373 = lshr i64 %370, 32
  %374 = mul nuw i64 %372, %373
  %375 = add i64 %374, %359
  store i64 %375, ptr %255, align 8
  %376 = add nuw i64 %277, 1
  %377 = icmp eq i64 %376, %262
  br i1 %377, label %378, label %268

378:                                              ; preds = %268, %188
  %379 = trunc nuw nsw i64 %262 to i32
  br label %509

380:                                              ; preds = %23
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %382 = load i64, ptr %381, align 8
  %383 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %384 = load i64, ptr %383, align 8
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %386 = load i64, ptr %385, align 8
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %388 = load i64, ptr %387, align 8
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %390 = load i64, ptr %389, align 8
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %393 = load i64, ptr %0, align 8
  %394 = load i64, ptr %391, align 8
  %395 = load i64, ptr %392, align 8
  br label %396

396:                                              ; preds = %380, %396
  %397 = phi i64 [ %395, %380 ], [ %499, %396 ]
  %398 = phi i64 [ %394, %380 ], [ %503, %396 ]
  %399 = phi i64 [ %393, %380 ], [ %427, %396 ]
  %400 = phi i64 [ %390, %380 ], [ %431, %396 ]
  %401 = phi i64 [ %388, %380 ], [ %475, %396 ]
  %402 = phi i64 [ %386, %380 ], [ %479, %396 ]
  %403 = phi i64 [ %384, %380 ], [ %451, %396 ]
  %404 = phi i64 [ %382, %380 ], [ %455, %396 ]
  %405 = phi i64 [ 0, %380 ], [ %504, %396 ]
  %406 = shl nuw nsw i64 %405, 6
  %407 = getelementptr inbounds nuw i8, ptr %26, i64 %406
  %408 = shl nuw nsw i64 %405, 3
  %409 = getelementptr inbounds nuw i8, ptr %43, i64 %408
  %410 = load i64, ptr %407, align 1
  %411 = tail call noundef i64 @llvm.bswap.i64(i64 %410)
  %412 = load i64, ptr %409, align 1
  %413 = tail call noundef i64 @llvm.bswap.i64(i64 %412)
  %414 = xor i64 %413, %411
  %415 = add i64 %400, %411
  store i64 %415, ptr %389, align 8
  %416 = and i64 %414, 4294967295
  %417 = lshr i64 %414, 32
  %418 = mul nuw i64 %416, %417
  %419 = add i64 %418, %399
  store i64 %419, ptr %0, align 8
  %420 = getelementptr inbounds nuw i8, ptr %407, i64 8
  %421 = load i64, ptr %420, align 1
  %422 = tail call noundef i64 @llvm.bswap.i64(i64 %421)
  %423 = getelementptr inbounds nuw i8, ptr %409, i64 8
  %424 = load i64, ptr %423, align 1
  %425 = tail call noundef i64 @llvm.bswap.i64(i64 %424)
  %426 = xor i64 %425, %422
  %427 = add i64 %419, %422
  store i64 %427, ptr %0, align 8
  %428 = and i64 %426, 4294967295
  %429 = lshr i64 %426, 32
  %430 = mul nuw i64 %428, %429
  %431 = add i64 %430, %415
  store i64 %431, ptr %389, align 8
  %432 = getelementptr inbounds nuw i8, ptr %407, i64 16
  %433 = load i64, ptr %432, align 1
  %434 = tail call noundef i64 @llvm.bswap.i64(i64 %433)
  %435 = getelementptr inbounds nuw i8, ptr %409, i64 16
  %436 = load i64, ptr %435, align 1
  %437 = tail call noundef i64 @llvm.bswap.i64(i64 %436)
  %438 = xor i64 %437, %434
  %439 = add i64 %404, %434
  store i64 %439, ptr %381, align 8
  %440 = and i64 %438, 4294967295
  %441 = lshr i64 %438, 32
  %442 = mul nuw i64 %440, %441
  %443 = add i64 %442, %403
  store i64 %443, ptr %383, align 8
  %444 = getelementptr inbounds nuw i8, ptr %407, i64 24
  %445 = load i64, ptr %444, align 1
  %446 = tail call noundef i64 @llvm.bswap.i64(i64 %445)
  %447 = getelementptr inbounds nuw i8, ptr %409, i64 24
  %448 = load i64, ptr %447, align 1
  %449 = tail call noundef i64 @llvm.bswap.i64(i64 %448)
  %450 = xor i64 %449, %446
  %451 = add i64 %443, %446
  store i64 %451, ptr %383, align 8
  %452 = and i64 %450, 4294967295
  %453 = lshr i64 %450, 32
  %454 = mul nuw i64 %452, %453
  %455 = add i64 %454, %439
  store i64 %455, ptr %381, align 8
  %456 = getelementptr inbounds nuw i8, ptr %407, i64 32
  %457 = load i64, ptr %456, align 1
  %458 = tail call noundef i64 @llvm.bswap.i64(i64 %457)
  %459 = getelementptr inbounds nuw i8, ptr %409, i64 32
  %460 = load i64, ptr %459, align 1
  %461 = tail call noundef i64 @llvm.bswap.i64(i64 %460)
  %462 = xor i64 %461, %458
  %463 = add i64 %402, %458
  store i64 %463, ptr %385, align 8
  %464 = and i64 %462, 4294967295
  %465 = lshr i64 %462, 32
  %466 = mul nuw i64 %464, %465
  %467 = add i64 %466, %401
  store i64 %467, ptr %387, align 8
  %468 = getelementptr inbounds nuw i8, ptr %407, i64 40
  %469 = load i64, ptr %468, align 1
  %470 = tail call noundef i64 @llvm.bswap.i64(i64 %469)
  %471 = getelementptr inbounds nuw i8, ptr %409, i64 40
  %472 = load i64, ptr %471, align 1
  %473 = tail call noundef i64 @llvm.bswap.i64(i64 %472)
  %474 = xor i64 %473, %470
  %475 = add i64 %467, %470
  store i64 %475, ptr %387, align 8
  %476 = and i64 %474, 4294967295
  %477 = lshr i64 %474, 32
  %478 = mul nuw i64 %476, %477
  %479 = add i64 %478, %463
  store i64 %479, ptr %385, align 8
  %480 = getelementptr inbounds nuw i8, ptr %407, i64 48
  %481 = load i64, ptr %480, align 1
  %482 = tail call noundef i64 @llvm.bswap.i64(i64 %481)
  %483 = getelementptr inbounds nuw i8, ptr %409, i64 48
  %484 = load i64, ptr %483, align 1
  %485 = tail call noundef i64 @llvm.bswap.i64(i64 %484)
  %486 = xor i64 %485, %482
  %487 = add i64 %398, %482
  store i64 %487, ptr %391, align 8
  %488 = and i64 %486, 4294967295
  %489 = lshr i64 %486, 32
  %490 = mul nuw i64 %488, %489
  %491 = add i64 %490, %397
  store i64 %491, ptr %392, align 8
  %492 = getelementptr inbounds nuw i8, ptr %407, i64 56
  %493 = load i64, ptr %492, align 1
  %494 = tail call noundef i64 @llvm.bswap.i64(i64 %493)
  %495 = getelementptr inbounds nuw i8, ptr %409, i64 56
  %496 = load i64, ptr %495, align 1
  %497 = tail call noundef i64 @llvm.bswap.i64(i64 %496)
  %498 = xor i64 %497, %494
  %499 = add i64 %491, %494
  store i64 %499, ptr %392, align 8
  %500 = and i64 %498, 4294967295
  %501 = lshr i64 %498, 32
  %502 = mul nuw i64 %500, %501
  %503 = add i64 %502, %487
  store i64 %503, ptr %391, align 8
  %504 = add nuw nsw i64 %405, 1
  %505 = icmp eq i64 %504, 4
  br i1 %505, label %506, label %396

506:                                              ; preds = %396
  %507 = load i32, ptr %29, align 4
  %508 = add i32 %507, 4
  br label %509

509:                                              ; preds = %378, %506
  %510 = phi i32 [ %508, %506 ], [ %379, %378 ]
  store i32 %510, ptr %29, align 4
  store i32 0, ptr %10, align 64
  br label %511

511:                                              ; preds = %509, %21
  %512 = phi ptr [ %28, %509 ], [ %1, %21 ]
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 256
  %514 = icmp ugt ptr %513, %6
  br i1 %514, label %1004, label %515

515:                                              ; preds = %511
  %516 = getelementptr inbounds i8, ptr %6, i64 -256
  %517 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %521 = load i32, ptr %517, align 4
  %522 = load i32, ptr %518, align 4
  %523 = load ptr, ptr %519, align 16
  %524 = load i32, ptr %520, align 4
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %527 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %528 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %529 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %534 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %536 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %537 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %538 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %539 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %540 = getelementptr inbounds nuw i8, ptr %523, i64 %525
  %541 = getelementptr inbounds nuw i8, ptr %540, i64 8
  %542 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %543 = getelementptr inbounds nuw i8, ptr %540, i64 16
  %544 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %545 = getelementptr inbounds nuw i8, ptr %540, i64 24
  %546 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %547 = getelementptr inbounds nuw i8, ptr %540, i64 32
  %548 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %549 = getelementptr inbounds nuw i8, ptr %540, i64 40
  %550 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %551 = getelementptr inbounds nuw i8, ptr %540, i64 48
  %552 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %553 = getelementptr inbounds nuw i8, ptr %540, i64 56
  %554 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %555 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %556 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %557 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %558 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %559 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %560 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %561 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %562

562:                                              ; preds = %1000, %515
  %563 = phi i32 [ %521, %515 ], [ %1001, %1000 ]
  %564 = phi ptr [ %512, %515 ], [ %1002, %1000 ]
  %565 = sub i32 %522, %563
  %566 = zext i32 %565 to i64
  %567 = icmp ugt i32 %565, 4
  %568 = shl i32 %563, 3
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds nuw i8, ptr %523, i64 %569
  br i1 %567, label %878, label %571

571:                                              ; preds = %562
  %572 = icmp eq i32 %522, %563
  br i1 %572, label %573, label %581

573:                                              ; preds = %571
  %574 = load i64, ptr %533, align 8
  %575 = load i64, ptr %534, align 8
  %576 = load i64, ptr %535, align 8
  %577 = load i64, ptr %536, align 8
  %578 = load i64, ptr %537, align 8
  %579 = load i64, ptr %538, align 8
  %580 = load i64, ptr %539, align 8
  br label %701

581:                                              ; preds = %571
  %582 = tail call i64 @llvm.umax.i64(i64 %566, i64 1)
  %583 = load i64, ptr %526, align 8
  %584 = load i64, ptr %527, align 8
  %585 = load i64, ptr %528, align 8
  %586 = load i64, ptr %529, align 8
  %587 = load i64, ptr %530, align 8
  %588 = load i64, ptr %0, align 8
  %589 = load i64, ptr %531, align 8
  %590 = load i64, ptr %532, align 8
  br label %591

591:                                              ; preds = %581, %591
  %592 = phi i64 [ %694, %591 ], [ %590, %581 ]
  %593 = phi i64 [ %698, %591 ], [ %589, %581 ]
  %594 = phi i64 [ %622, %591 ], [ %588, %581 ]
  %595 = phi i64 [ %626, %591 ], [ %587, %581 ]
  %596 = phi i64 [ %670, %591 ], [ %586, %581 ]
  %597 = phi i64 [ %674, %591 ], [ %585, %581 ]
  %598 = phi i64 [ %646, %591 ], [ %584, %581 ]
  %599 = phi i64 [ %650, %591 ], [ %583, %581 ]
  %600 = phi i64 [ %699, %591 ], [ 0, %581 ]
  %601 = shl i64 %600, 6
  %602 = getelementptr inbounds nuw i8, ptr %564, i64 %601
  %603 = shl i64 %600, 3
  %604 = getelementptr inbounds nuw i8, ptr %570, i64 %603
  %605 = load i64, ptr %602, align 1
  %606 = tail call noundef i64 @llvm.bswap.i64(i64 %605)
  %607 = load i64, ptr %604, align 1
  %608 = tail call noundef i64 @llvm.bswap.i64(i64 %607)
  %609 = xor i64 %608, %606
  %610 = add i64 %595, %606
  store i64 %610, ptr %530, align 8
  %611 = and i64 %609, 4294967295
  %612 = lshr i64 %609, 32
  %613 = mul nuw i64 %611, %612
  %614 = add i64 %613, %594
  store i64 %614, ptr %0, align 8
  %615 = getelementptr inbounds nuw i8, ptr %602, i64 8
  %616 = load i64, ptr %615, align 1
  %617 = tail call noundef i64 @llvm.bswap.i64(i64 %616)
  %618 = getelementptr inbounds nuw i8, ptr %604, i64 8
  %619 = load i64, ptr %618, align 1
  %620 = tail call noundef i64 @llvm.bswap.i64(i64 %619)
  %621 = xor i64 %620, %617
  %622 = add i64 %614, %617
  store i64 %622, ptr %0, align 8
  %623 = and i64 %621, 4294967295
  %624 = lshr i64 %621, 32
  %625 = mul nuw i64 %623, %624
  %626 = add i64 %625, %610
  store i64 %626, ptr %530, align 8
  %627 = getelementptr inbounds nuw i8, ptr %602, i64 16
  %628 = load i64, ptr %627, align 1
  %629 = tail call noundef i64 @llvm.bswap.i64(i64 %628)
  %630 = getelementptr inbounds nuw i8, ptr %604, i64 16
  %631 = load i64, ptr %630, align 1
  %632 = tail call noundef i64 @llvm.bswap.i64(i64 %631)
  %633 = xor i64 %632, %629
  %634 = add i64 %599, %629
  store i64 %634, ptr %526, align 8
  %635 = and i64 %633, 4294967295
  %636 = lshr i64 %633, 32
  %637 = mul nuw i64 %635, %636
  %638 = add i64 %637, %598
  store i64 %638, ptr %527, align 8
  %639 = getelementptr inbounds nuw i8, ptr %602, i64 24
  %640 = load i64, ptr %639, align 1
  %641 = tail call noundef i64 @llvm.bswap.i64(i64 %640)
  %642 = getelementptr inbounds nuw i8, ptr %604, i64 24
  %643 = load i64, ptr %642, align 1
  %644 = tail call noundef i64 @llvm.bswap.i64(i64 %643)
  %645 = xor i64 %644, %641
  %646 = add i64 %638, %641
  store i64 %646, ptr %527, align 8
  %647 = and i64 %645, 4294967295
  %648 = lshr i64 %645, 32
  %649 = mul nuw i64 %647, %648
  %650 = add i64 %649, %634
  store i64 %650, ptr %526, align 8
  %651 = getelementptr inbounds nuw i8, ptr %602, i64 32
  %652 = load i64, ptr %651, align 1
  %653 = tail call noundef i64 @llvm.bswap.i64(i64 %652)
  %654 = getelementptr inbounds nuw i8, ptr %604, i64 32
  %655 = load i64, ptr %654, align 1
  %656 = tail call noundef i64 @llvm.bswap.i64(i64 %655)
  %657 = xor i64 %656, %653
  %658 = add i64 %597, %653
  store i64 %658, ptr %528, align 8
  %659 = and i64 %657, 4294967295
  %660 = lshr i64 %657, 32
  %661 = mul nuw i64 %659, %660
  %662 = add i64 %661, %596
  store i64 %662, ptr %529, align 8
  %663 = getelementptr inbounds nuw i8, ptr %602, i64 40
  %664 = load i64, ptr %663, align 1
  %665 = tail call noundef i64 @llvm.bswap.i64(i64 %664)
  %666 = getelementptr inbounds nuw i8, ptr %604, i64 40
  %667 = load i64, ptr %666, align 1
  %668 = tail call noundef i64 @llvm.bswap.i64(i64 %667)
  %669 = xor i64 %668, %665
  %670 = add i64 %662, %665
  store i64 %670, ptr %529, align 8
  %671 = and i64 %669, 4294967295
  %672 = lshr i64 %669, 32
  %673 = mul nuw i64 %671, %672
  %674 = add i64 %673, %658
  store i64 %674, ptr %528, align 8
  %675 = getelementptr inbounds nuw i8, ptr %602, i64 48
  %676 = load i64, ptr %675, align 1
  %677 = tail call noundef i64 @llvm.bswap.i64(i64 %676)
  %678 = getelementptr inbounds nuw i8, ptr %604, i64 48
  %679 = load i64, ptr %678, align 1
  %680 = tail call noundef i64 @llvm.bswap.i64(i64 %679)
  %681 = xor i64 %680, %677
  %682 = add i64 %593, %677
  store i64 %682, ptr %531, align 8
  %683 = and i64 %681, 4294967295
  %684 = lshr i64 %681, 32
  %685 = mul nuw i64 %683, %684
  %686 = add i64 %685, %592
  store i64 %686, ptr %532, align 8
  %687 = getelementptr inbounds nuw i8, ptr %602, i64 56
  %688 = load i64, ptr %687, align 1
  %689 = tail call noundef i64 @llvm.bswap.i64(i64 %688)
  %690 = getelementptr inbounds nuw i8, ptr %604, i64 56
  %691 = load i64, ptr %690, align 1
  %692 = tail call noundef i64 @llvm.bswap.i64(i64 %691)
  %693 = xor i64 %692, %689
  %694 = add i64 %686, %689
  store i64 %694, ptr %532, align 8
  %695 = and i64 %693, 4294967295
  %696 = lshr i64 %693, 32
  %697 = mul nuw i64 %695, %696
  %698 = add i64 %697, %682
  store i64 %698, ptr %531, align 8
  %699 = add nuw nsw i64 %600, 1
  %700 = icmp eq i64 %699, %582
  br i1 %700, label %701, label %591

701:                                              ; preds = %591, %573
  %702 = phi i64 [ %580, %573 ], [ %698, %591 ]
  %703 = phi i64 [ %579, %573 ], [ %694, %591 ]
  %704 = phi i64 [ %578, %573 ], [ %674, %591 ]
  %705 = phi i64 [ %577, %573 ], [ %670, %591 ]
  %706 = phi i64 [ %576, %573 ], [ %650, %591 ]
  %707 = phi i64 [ %575, %573 ], [ %646, %591 ]
  %708 = phi i64 [ %574, %573 ], [ %626, %591 ]
  %709 = load i64, ptr %540, align 1
  %710 = tail call noundef i64 @llvm.bswap.i64(i64 %709)
  %711 = load i64, ptr %0, align 8
  %712 = lshr i64 %711, 47
  %713 = xor i64 %710, %712
  %714 = xor i64 %713, %711
  %715 = mul i64 %714, 2654435761
  store i64 %715, ptr %0, align 8
  %716 = load i64, ptr %541, align 1
  %717 = tail call noundef i64 @llvm.bswap.i64(i64 %716)
  %718 = lshr i64 %708, 47
  %719 = xor i64 %717, %718
  %720 = xor i64 %719, %708
  %721 = mul i64 %720, 2654435761
  store i64 %721, ptr %542, align 8
  %722 = load i64, ptr %543, align 1
  %723 = tail call noundef i64 @llvm.bswap.i64(i64 %722)
  %724 = lshr i64 %707, 47
  %725 = xor i64 %723, %724
  %726 = xor i64 %725, %707
  %727 = mul i64 %726, 2654435761
  store i64 %727, ptr %544, align 8
  %728 = load i64, ptr %545, align 1
  %729 = tail call noundef i64 @llvm.bswap.i64(i64 %728)
  %730 = lshr i64 %706, 47
  %731 = xor i64 %729, %730
  %732 = xor i64 %731, %706
  %733 = mul i64 %732, 2654435761
  store i64 %733, ptr %546, align 8
  %734 = load i64, ptr %547, align 1
  %735 = tail call noundef i64 @llvm.bswap.i64(i64 %734)
  %736 = lshr i64 %705, 47
  %737 = xor i64 %735, %736
  %738 = xor i64 %737, %705
  %739 = mul i64 %738, 2654435761
  store i64 %739, ptr %548, align 8
  %740 = load i64, ptr %549, align 1
  %741 = tail call noundef i64 @llvm.bswap.i64(i64 %740)
  %742 = lshr i64 %704, 47
  %743 = xor i64 %741, %742
  %744 = xor i64 %743, %704
  %745 = mul i64 %744, 2654435761
  store i64 %745, ptr %550, align 8
  %746 = load i64, ptr %551, align 1
  %747 = tail call noundef i64 @llvm.bswap.i64(i64 %746)
  %748 = lshr i64 %703, 47
  %749 = xor i64 %747, %748
  %750 = xor i64 %749, %703
  %751 = mul i64 %750, 2654435761
  store i64 %751, ptr %552, align 8
  %752 = load i64, ptr %553, align 1
  %753 = tail call noundef i64 @llvm.bswap.i64(i64 %752)
  %754 = lshr i64 %702, 47
  %755 = xor i64 %753, %754
  %756 = xor i64 %755, %702
  %757 = mul i64 %756, 2654435761
  store i64 %757, ptr %554, align 8
  %758 = shl nuw nsw i64 %566, 6
  %759 = getelementptr inbounds nuw i8, ptr %564, i64 %758
  %760 = sub nsw i64 4, %566
  %761 = icmp eq i32 %565, 4
  br i1 %761, label %876, label %762

762:                                              ; preds = %701
  %763 = load i64, ptr %0, align 8
  %764 = load i64, ptr %554, align 8
  %765 = load i64, ptr %552, align 8
  br label %766

766:                                              ; preds = %762, %766
  %767 = phi i64 [ %869, %766 ], [ %765, %762 ]
  %768 = phi i64 [ %873, %766 ], [ %764, %762 ]
  %769 = phi i64 [ %797, %766 ], [ %763, %762 ]
  %770 = phi i64 [ %801, %766 ], [ %721, %762 ]
  %771 = phi i64 [ %845, %766 ], [ %739, %762 ]
  %772 = phi i64 [ %849, %766 ], [ %745, %762 ]
  %773 = phi i64 [ %821, %766 ], [ %727, %762 ]
  %774 = phi i64 [ %825, %766 ], [ %733, %762 ]
  %775 = phi i64 [ %874, %766 ], [ 0, %762 ]
  %776 = shl i64 %775, 6
  %777 = getelementptr inbounds nuw i8, ptr %759, i64 %776
  %778 = shl i64 %775, 3
  %779 = getelementptr inbounds nuw i8, ptr %523, i64 %778
  %780 = load i64, ptr %777, align 1
  %781 = tail call noundef i64 @llvm.bswap.i64(i64 %780)
  %782 = load i64, ptr %779, align 1
  %783 = tail call noundef i64 @llvm.bswap.i64(i64 %782)
  %784 = xor i64 %783, %781
  %785 = add i64 %770, %781
  store i64 %785, ptr %542, align 8
  %786 = and i64 %784, 4294967295
  %787 = lshr i64 %784, 32
  %788 = mul nuw i64 %786, %787
  %789 = add i64 %788, %769
  store i64 %789, ptr %0, align 8
  %790 = getelementptr inbounds nuw i8, ptr %777, i64 8
  %791 = load i64, ptr %790, align 1
  %792 = tail call noundef i64 @llvm.bswap.i64(i64 %791)
  %793 = getelementptr inbounds nuw i8, ptr %779, i64 8
  %794 = load i64, ptr %793, align 1
  %795 = tail call noundef i64 @llvm.bswap.i64(i64 %794)
  %796 = xor i64 %795, %792
  %797 = add i64 %789, %792
  store i64 %797, ptr %0, align 8
  %798 = and i64 %796, 4294967295
  %799 = lshr i64 %796, 32
  %800 = mul nuw i64 %798, %799
  %801 = add i64 %800, %785
  store i64 %801, ptr %542, align 8
  %802 = getelementptr inbounds nuw i8, ptr %777, i64 16
  %803 = load i64, ptr %802, align 1
  %804 = tail call noundef i64 @llvm.bswap.i64(i64 %803)
  %805 = getelementptr inbounds nuw i8, ptr %779, i64 16
  %806 = load i64, ptr %805, align 1
  %807 = tail call noundef i64 @llvm.bswap.i64(i64 %806)
  %808 = xor i64 %807, %804
  %809 = add i64 %774, %804
  store i64 %809, ptr %546, align 8
  %810 = and i64 %808, 4294967295
  %811 = lshr i64 %808, 32
  %812 = mul nuw i64 %810, %811
  %813 = add i64 %812, %773
  store i64 %813, ptr %544, align 8
  %814 = getelementptr inbounds nuw i8, ptr %777, i64 24
  %815 = load i64, ptr %814, align 1
  %816 = tail call noundef i64 @llvm.bswap.i64(i64 %815)
  %817 = getelementptr inbounds nuw i8, ptr %779, i64 24
  %818 = load i64, ptr %817, align 1
  %819 = tail call noundef i64 @llvm.bswap.i64(i64 %818)
  %820 = xor i64 %819, %816
  %821 = add i64 %813, %816
  store i64 %821, ptr %544, align 8
  %822 = and i64 %820, 4294967295
  %823 = lshr i64 %820, 32
  %824 = mul nuw i64 %822, %823
  %825 = add i64 %824, %809
  store i64 %825, ptr %546, align 8
  %826 = getelementptr inbounds nuw i8, ptr %777, i64 32
  %827 = load i64, ptr %826, align 1
  %828 = tail call noundef i64 @llvm.bswap.i64(i64 %827)
  %829 = getelementptr inbounds nuw i8, ptr %779, i64 32
  %830 = load i64, ptr %829, align 1
  %831 = tail call noundef i64 @llvm.bswap.i64(i64 %830)
  %832 = xor i64 %831, %828
  %833 = add i64 %772, %828
  store i64 %833, ptr %550, align 8
  %834 = and i64 %832, 4294967295
  %835 = lshr i64 %832, 32
  %836 = mul nuw i64 %834, %835
  %837 = add i64 %836, %771
  store i64 %837, ptr %548, align 8
  %838 = getelementptr inbounds nuw i8, ptr %777, i64 40
  %839 = load i64, ptr %838, align 1
  %840 = tail call noundef i64 @llvm.bswap.i64(i64 %839)
  %841 = getelementptr inbounds nuw i8, ptr %779, i64 40
  %842 = load i64, ptr %841, align 1
  %843 = tail call noundef i64 @llvm.bswap.i64(i64 %842)
  %844 = xor i64 %843, %840
  %845 = add i64 %837, %840
  store i64 %845, ptr %548, align 8
  %846 = and i64 %844, 4294967295
  %847 = lshr i64 %844, 32
  %848 = mul nuw i64 %846, %847
  %849 = add i64 %848, %833
  store i64 %849, ptr %550, align 8
  %850 = getelementptr inbounds nuw i8, ptr %777, i64 48
  %851 = load i64, ptr %850, align 1
  %852 = tail call noundef i64 @llvm.bswap.i64(i64 %851)
  %853 = getelementptr inbounds nuw i8, ptr %779, i64 48
  %854 = load i64, ptr %853, align 1
  %855 = tail call noundef i64 @llvm.bswap.i64(i64 %854)
  %856 = xor i64 %855, %852
  %857 = add i64 %768, %852
  store i64 %857, ptr %554, align 8
  %858 = and i64 %856, 4294967295
  %859 = lshr i64 %856, 32
  %860 = mul nuw i64 %858, %859
  %861 = add i64 %860, %767
  store i64 %861, ptr %552, align 8
  %862 = getelementptr inbounds nuw i8, ptr %777, i64 56
  %863 = load i64, ptr %862, align 1
  %864 = tail call noundef i64 @llvm.bswap.i64(i64 %863)
  %865 = getelementptr inbounds nuw i8, ptr %779, i64 56
  %866 = load i64, ptr %865, align 1
  %867 = tail call noundef i64 @llvm.bswap.i64(i64 %866)
  %868 = xor i64 %867, %864
  %869 = add i64 %861, %864
  store i64 %869, ptr %552, align 8
  %870 = and i64 %868, 4294967295
  %871 = lshr i64 %868, 32
  %872 = mul nuw i64 %870, %871
  %873 = add i64 %872, %857
  store i64 %873, ptr %554, align 8
  %874 = add nuw i64 %775, 1
  %875 = icmp eq i64 %874, %760
  br i1 %875, label %876, label %766

876:                                              ; preds = %766, %701
  %877 = trunc nuw nsw i64 %760 to i32
  br label %1000

878:                                              ; preds = %562
  %879 = load i64, ptr %555, align 8
  %880 = load i64, ptr %556, align 8
  %881 = load i64, ptr %557, align 8
  %882 = load i64, ptr %558, align 8
  %883 = load i64, ptr %559, align 8
  %884 = load i64, ptr %0, align 8
  %885 = load i64, ptr %560, align 8
  %886 = load i64, ptr %561, align 8
  br label %887

887:                                              ; preds = %878, %887
  %888 = phi i64 [ %886, %878 ], [ %990, %887 ]
  %889 = phi i64 [ %885, %878 ], [ %994, %887 ]
  %890 = phi i64 [ %884, %878 ], [ %918, %887 ]
  %891 = phi i64 [ %883, %878 ], [ %922, %887 ]
  %892 = phi i64 [ %882, %878 ], [ %966, %887 ]
  %893 = phi i64 [ %881, %878 ], [ %970, %887 ]
  %894 = phi i64 [ %880, %878 ], [ %942, %887 ]
  %895 = phi i64 [ %879, %878 ], [ %946, %887 ]
  %896 = phi i64 [ 0, %878 ], [ %995, %887 ]
  %897 = shl nuw nsw i64 %896, 6
  %898 = getelementptr inbounds nuw i8, ptr %564, i64 %897
  %899 = shl nuw nsw i64 %896, 3
  %900 = getelementptr inbounds nuw i8, ptr %570, i64 %899
  %901 = load i64, ptr %898, align 1
  %902 = tail call noundef i64 @llvm.bswap.i64(i64 %901)
  %903 = load i64, ptr %900, align 1
  %904 = tail call noundef i64 @llvm.bswap.i64(i64 %903)
  %905 = xor i64 %904, %902
  %906 = add i64 %891, %902
  store i64 %906, ptr %559, align 8
  %907 = and i64 %905, 4294967295
  %908 = lshr i64 %905, 32
  %909 = mul nuw i64 %907, %908
  %910 = add i64 %909, %890
  store i64 %910, ptr %0, align 8
  %911 = getelementptr inbounds nuw i8, ptr %898, i64 8
  %912 = load i64, ptr %911, align 1
  %913 = tail call noundef i64 @llvm.bswap.i64(i64 %912)
  %914 = getelementptr inbounds nuw i8, ptr %900, i64 8
  %915 = load i64, ptr %914, align 1
  %916 = tail call noundef i64 @llvm.bswap.i64(i64 %915)
  %917 = xor i64 %916, %913
  %918 = add i64 %910, %913
  store i64 %918, ptr %0, align 8
  %919 = and i64 %917, 4294967295
  %920 = lshr i64 %917, 32
  %921 = mul nuw i64 %919, %920
  %922 = add i64 %921, %906
  store i64 %922, ptr %559, align 8
  %923 = getelementptr inbounds nuw i8, ptr %898, i64 16
  %924 = load i64, ptr %923, align 1
  %925 = tail call noundef i64 @llvm.bswap.i64(i64 %924)
  %926 = getelementptr inbounds nuw i8, ptr %900, i64 16
  %927 = load i64, ptr %926, align 1
  %928 = tail call noundef i64 @llvm.bswap.i64(i64 %927)
  %929 = xor i64 %928, %925
  %930 = add i64 %895, %925
  store i64 %930, ptr %555, align 8
  %931 = and i64 %929, 4294967295
  %932 = lshr i64 %929, 32
  %933 = mul nuw i64 %931, %932
  %934 = add i64 %933, %894
  store i64 %934, ptr %556, align 8
  %935 = getelementptr inbounds nuw i8, ptr %898, i64 24
  %936 = load i64, ptr %935, align 1
  %937 = tail call noundef i64 @llvm.bswap.i64(i64 %936)
  %938 = getelementptr inbounds nuw i8, ptr %900, i64 24
  %939 = load i64, ptr %938, align 1
  %940 = tail call noundef i64 @llvm.bswap.i64(i64 %939)
  %941 = xor i64 %940, %937
  %942 = add i64 %934, %937
  store i64 %942, ptr %556, align 8
  %943 = and i64 %941, 4294967295
  %944 = lshr i64 %941, 32
  %945 = mul nuw i64 %943, %944
  %946 = add i64 %945, %930
  store i64 %946, ptr %555, align 8
  %947 = getelementptr inbounds nuw i8, ptr %898, i64 32
  %948 = load i64, ptr %947, align 1
  %949 = tail call noundef i64 @llvm.bswap.i64(i64 %948)
  %950 = getelementptr inbounds nuw i8, ptr %900, i64 32
  %951 = load i64, ptr %950, align 1
  %952 = tail call noundef i64 @llvm.bswap.i64(i64 %951)
  %953 = xor i64 %952, %949
  %954 = add i64 %893, %949
  store i64 %954, ptr %557, align 8
  %955 = and i64 %953, 4294967295
  %956 = lshr i64 %953, 32
  %957 = mul nuw i64 %955, %956
  %958 = add i64 %957, %892
  store i64 %958, ptr %558, align 8
  %959 = getelementptr inbounds nuw i8, ptr %898, i64 40
  %960 = load i64, ptr %959, align 1
  %961 = tail call noundef i64 @llvm.bswap.i64(i64 %960)
  %962 = getelementptr inbounds nuw i8, ptr %900, i64 40
  %963 = load i64, ptr %962, align 1
  %964 = tail call noundef i64 @llvm.bswap.i64(i64 %963)
  %965 = xor i64 %964, %961
  %966 = add i64 %958, %961
  store i64 %966, ptr %558, align 8
  %967 = and i64 %965, 4294967295
  %968 = lshr i64 %965, 32
  %969 = mul nuw i64 %967, %968
  %970 = add i64 %969, %954
  store i64 %970, ptr %557, align 8
  %971 = getelementptr inbounds nuw i8, ptr %898, i64 48
  %972 = load i64, ptr %971, align 1
  %973 = tail call noundef i64 @llvm.bswap.i64(i64 %972)
  %974 = getelementptr inbounds nuw i8, ptr %900, i64 48
  %975 = load i64, ptr %974, align 1
  %976 = tail call noundef i64 @llvm.bswap.i64(i64 %975)
  %977 = xor i64 %976, %973
  %978 = add i64 %889, %973
  store i64 %978, ptr %560, align 8
  %979 = and i64 %977, 4294967295
  %980 = lshr i64 %977, 32
  %981 = mul nuw i64 %979, %980
  %982 = add i64 %981, %888
  store i64 %982, ptr %561, align 8
  %983 = getelementptr inbounds nuw i8, ptr %898, i64 56
  %984 = load i64, ptr %983, align 1
  %985 = tail call noundef i64 @llvm.bswap.i64(i64 %984)
  %986 = getelementptr inbounds nuw i8, ptr %900, i64 56
  %987 = load i64, ptr %986, align 1
  %988 = tail call noundef i64 @llvm.bswap.i64(i64 %987)
  %989 = xor i64 %988, %985
  %990 = add i64 %982, %985
  store i64 %990, ptr %561, align 8
  %991 = and i64 %989, 4294967295
  %992 = lshr i64 %989, 32
  %993 = mul nuw i64 %991, %992
  %994 = add i64 %993, %978
  store i64 %994, ptr %560, align 8
  %995 = add nuw nsw i64 %896, 1
  %996 = icmp eq i64 %995, 4
  br i1 %996, label %997, label %887

997:                                              ; preds = %887
  %998 = load i32, ptr %517, align 4
  %999 = add i32 %998, 4
  br label %1000

1000:                                             ; preds = %876, %997
  %1001 = phi i32 [ %999, %997 ], [ %877, %876 ]
  store i32 %1001, ptr %517, align 4
  %1002 = getelementptr inbounds nuw i8, ptr %564, i64 256
  %1003 = icmp ugt ptr %1002, %516
  br i1 %1003, label %1004, label %562

1004:                                             ; preds = %1000, %511
  %1005 = phi ptr [ %512, %511 ], [ %1002, %1000 ]
  %1006 = icmp ult ptr %1005, %6
  br i1 %1006, label %1007, label %1015

1007:                                             ; preds = %1004
  %1008 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %1009 = ptrtoint ptr %6 to i64
  %1010 = ptrtoint ptr %1005 to i64
  %1011 = sub i64 %1009, %1010
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1008, ptr nonnull readonly align 1 %1005, i64 %1011, i1 false)
  %1012 = trunc i64 %1011 to i32
  br label %1013

1013:                                             ; preds = %1007, %15
  %1014 = phi i32 [ %20, %15 ], [ %1012, %1007 ]
  store i32 %1014, ptr %10, align 64
  br label %1015

1015:                                             ; preds = %1013, %3, %1004
  %1016 = phi i32 [ 1, %3 ], [ 0, %1004 ], [ 0, %1013 ]
  ret i32 %1016
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @XXH3_128bits_digest(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 %0, ptr noundef readonly %1) local_unnamed_addr #18 {
  %3 = alloca [64 x i8], align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 536
  %5 = load i64, ptr %4, align 8
  %6 = icmp ugt i64 %5, 240
  br i1 %6, label %7, label %819

7:                                                ; preds = %2
  %8 = load i64, ptr %1, align 64
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %12 = load i64, ptr %11, align 16
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %16 = load i64, ptr %15, align 32
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %20 = load i64, ptr %19, align 16
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 512
  %24 = load i32, ptr %23, align 64
  %25 = icmp ugt i32 %24, 63
  br i1 %25, label %26, label %559

26:                                               ; preds = %7
  %27 = lshr i32 %24, 6
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 520
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 516
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 560
  %35 = load ptr, ptr %34, align 16
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 524
  %37 = load i32, ptr %36, align 4
  %38 = zext i32 %37 to i64
  %39 = sub i32 %32, %30
  %40 = zext i32 %39 to i64
  %41 = icmp ult i32 %27, %39
  %42 = shl i32 %30, 3
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %43
  br i1 %41, label %338, label %45

45:                                               ; preds = %26
  %46 = icmp eq i32 %32, %30
  br i1 %46, label %159, label %47

47:                                               ; preds = %45
  %48 = tail call i64 @llvm.umax.i64(i64 %40, i64 1)
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %22, %47 ], [ %156, %49 ]
  %51 = phi i64 [ %20, %47 ], [ %152, %49 ]
  %52 = phi i64 [ %18, %47 ], [ %132, %49 ]
  %53 = phi i64 [ %16, %47 ], [ %128, %49 ]
  %54 = phi i64 [ %14, %47 ], [ %108, %49 ]
  %55 = phi i64 [ %12, %47 ], [ %104, %49 ]
  %56 = phi i64 [ %10, %47 ], [ %84, %49 ]
  %57 = phi i64 [ %8, %47 ], [ %80, %49 ]
  %58 = phi i64 [ 0, %47 ], [ %157, %49 ]
  %59 = shl i64 %58, 6
  %60 = getelementptr inbounds nuw i8, ptr %33, i64 %59
  %61 = shl i64 %58, 3
  %62 = getelementptr inbounds nuw i8, ptr %44, i64 %61
  %63 = load i64, ptr %60, align 1
  %64 = tail call noundef i64 @llvm.bswap.i64(i64 %63)
  %65 = load i64, ptr %62, align 1
  %66 = tail call noundef i64 @llvm.bswap.i64(i64 %65)
  %67 = xor i64 %66, %64
  %68 = add i64 %56, %64
  %69 = and i64 %67, 4294967295
  %70 = lshr i64 %67, 32
  %71 = mul nuw i64 %69, %70
  %72 = add i64 %71, %57
  %73 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %74 = load i64, ptr %73, align 1
  %75 = tail call noundef i64 @llvm.bswap.i64(i64 %74)
  %76 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %77 = load i64, ptr %76, align 1
  %78 = tail call noundef i64 @llvm.bswap.i64(i64 %77)
  %79 = xor i64 %78, %75
  %80 = add i64 %72, %75
  %81 = and i64 %79, 4294967295
  %82 = lshr i64 %79, 32
  %83 = mul nuw i64 %81, %82
  %84 = add i64 %83, %68
  %85 = getelementptr inbounds nuw i8, ptr %60, i64 16
  %86 = load i64, ptr %85, align 1
  %87 = tail call noundef i64 @llvm.bswap.i64(i64 %86)
  %88 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %89 = load i64, ptr %88, align 1
  %90 = tail call noundef i64 @llvm.bswap.i64(i64 %89)
  %91 = xor i64 %90, %87
  %92 = add i64 %54, %87
  %93 = and i64 %91, 4294967295
  %94 = lshr i64 %91, 32
  %95 = mul nuw i64 %93, %94
  %96 = add i64 %95, %55
  %97 = getelementptr inbounds nuw i8, ptr %60, i64 24
  %98 = load i64, ptr %97, align 1
  %99 = tail call noundef i64 @llvm.bswap.i64(i64 %98)
  %100 = getelementptr inbounds nuw i8, ptr %62, i64 24
  %101 = load i64, ptr %100, align 1
  %102 = tail call noundef i64 @llvm.bswap.i64(i64 %101)
  %103 = xor i64 %102, %99
  %104 = add i64 %96, %99
  %105 = and i64 %103, 4294967295
  %106 = lshr i64 %103, 32
  %107 = mul nuw i64 %105, %106
  %108 = add i64 %107, %92
  %109 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %110 = load i64, ptr %109, align 1
  %111 = tail call noundef i64 @llvm.bswap.i64(i64 %110)
  %112 = getelementptr inbounds nuw i8, ptr %62, i64 32
  %113 = load i64, ptr %112, align 1
  %114 = tail call noundef i64 @llvm.bswap.i64(i64 %113)
  %115 = xor i64 %114, %111
  %116 = add i64 %52, %111
  %117 = and i64 %115, 4294967295
  %118 = lshr i64 %115, 32
  %119 = mul nuw i64 %117, %118
  %120 = add i64 %119, %53
  %121 = getelementptr inbounds nuw i8, ptr %60, i64 40
  %122 = load i64, ptr %121, align 1
  %123 = tail call noundef i64 @llvm.bswap.i64(i64 %122)
  %124 = getelementptr inbounds nuw i8, ptr %62, i64 40
  %125 = load i64, ptr %124, align 1
  %126 = tail call noundef i64 @llvm.bswap.i64(i64 %125)
  %127 = xor i64 %126, %123
  %128 = add i64 %120, %123
  %129 = and i64 %127, 4294967295
  %130 = lshr i64 %127, 32
  %131 = mul nuw i64 %129, %130
  %132 = add i64 %131, %116
  %133 = getelementptr inbounds nuw i8, ptr %60, i64 48
  %134 = load i64, ptr %133, align 1
  %135 = tail call noundef i64 @llvm.bswap.i64(i64 %134)
  %136 = getelementptr inbounds nuw i8, ptr %62, i64 48
  %137 = load i64, ptr %136, align 1
  %138 = tail call noundef i64 @llvm.bswap.i64(i64 %137)
  %139 = xor i64 %138, %135
  %140 = add i64 %50, %135
  %141 = and i64 %139, 4294967295
  %142 = lshr i64 %139, 32
  %143 = mul nuw i64 %141, %142
  %144 = add i64 %143, %51
  %145 = getelementptr inbounds nuw i8, ptr %60, i64 56
  %146 = load i64, ptr %145, align 1
  %147 = tail call noundef i64 @llvm.bswap.i64(i64 %146)
  %148 = getelementptr inbounds nuw i8, ptr %62, i64 56
  %149 = load i64, ptr %148, align 1
  %150 = tail call noundef i64 @llvm.bswap.i64(i64 %149)
  %151 = xor i64 %150, %147
  %152 = add i64 %144, %147
  %153 = and i64 %151, 4294967295
  %154 = lshr i64 %151, 32
  %155 = mul nuw i64 %153, %154
  %156 = add i64 %155, %140
  %157 = add nuw nsw i64 %58, 1
  %158 = icmp eq i64 %157, %48
  br i1 %158, label %159, label %49

159:                                              ; preds = %49, %45
  %160 = phi i64 [ %22, %45 ], [ %156, %49 ]
  %161 = phi i64 [ %20, %45 ], [ %152, %49 ]
  %162 = phi i64 [ %18, %45 ], [ %132, %49 ]
  %163 = phi i64 [ %16, %45 ], [ %128, %49 ]
  %164 = phi i64 [ %14, %45 ], [ %108, %49 ]
  %165 = phi i64 [ %12, %45 ], [ %104, %49 ]
  %166 = phi i64 [ %10, %45 ], [ %84, %49 ]
  %167 = phi i64 [ %8, %45 ], [ %80, %49 ]
  %168 = getelementptr inbounds nuw i8, ptr %35, i64 %38
  %169 = load i64, ptr %168, align 1
  %170 = tail call noundef i64 @llvm.bswap.i64(i64 %169)
  %171 = lshr i64 %167, 47
  %172 = xor i64 %170, %171
  %173 = xor i64 %172, %167
  %174 = mul i64 %173, 2654435761
  %175 = getelementptr inbounds nuw i8, ptr %168, i64 8
  %176 = load i64, ptr %175, align 1
  %177 = tail call noundef i64 @llvm.bswap.i64(i64 %176)
  %178 = lshr i64 %166, 47
  %179 = xor i64 %177, %178
  %180 = xor i64 %179, %166
  %181 = mul i64 %180, 2654435761
  %182 = getelementptr inbounds nuw i8, ptr %168, i64 16
  %183 = load i64, ptr %182, align 1
  %184 = tail call noundef i64 @llvm.bswap.i64(i64 %183)
  %185 = lshr i64 %165, 47
  %186 = xor i64 %184, %185
  %187 = xor i64 %186, %165
  %188 = mul i64 %187, 2654435761
  %189 = getelementptr inbounds nuw i8, ptr %168, i64 24
  %190 = load i64, ptr %189, align 1
  %191 = tail call noundef i64 @llvm.bswap.i64(i64 %190)
  %192 = lshr i64 %164, 47
  %193 = xor i64 %191, %192
  %194 = xor i64 %193, %164
  %195 = mul i64 %194, 2654435761
  %196 = getelementptr inbounds nuw i8, ptr %168, i64 32
  %197 = load i64, ptr %196, align 1
  %198 = tail call noundef i64 @llvm.bswap.i64(i64 %197)
  %199 = lshr i64 %163, 47
  %200 = xor i64 %198, %199
  %201 = xor i64 %200, %163
  %202 = mul i64 %201, 2654435761
  %203 = getelementptr inbounds nuw i8, ptr %168, i64 40
  %204 = load i64, ptr %203, align 1
  %205 = tail call noundef i64 @llvm.bswap.i64(i64 %204)
  %206 = lshr i64 %162, 47
  %207 = xor i64 %205, %206
  %208 = xor i64 %207, %162
  %209 = mul i64 %208, 2654435761
  %210 = getelementptr inbounds nuw i8, ptr %168, i64 48
  %211 = load i64, ptr %210, align 1
  %212 = tail call noundef i64 @llvm.bswap.i64(i64 %211)
  %213 = lshr i64 %161, 47
  %214 = xor i64 %212, %213
  %215 = xor i64 %214, %161
  %216 = mul i64 %215, 2654435761
  %217 = getelementptr inbounds nuw i8, ptr %168, i64 56
  %218 = load i64, ptr %217, align 1
  %219 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %220 = lshr i64 %160, 47
  %221 = xor i64 %219, %220
  %222 = xor i64 %221, %160
  %223 = mul i64 %222, 2654435761
  %224 = shl nuw nsw i64 %40, 6
  %225 = getelementptr inbounds nuw i8, ptr %33, i64 %224
  %226 = sub nsw i64 %28, %40
  %227 = icmp eq i32 %27, %39
  br i1 %227, label %448, label %228

228:                                              ; preds = %159, %228
  %229 = phi i64 [ %335, %228 ], [ %223, %159 ]
  %230 = phi i64 [ %331, %228 ], [ %216, %159 ]
  %231 = phi i64 [ %311, %228 ], [ %209, %159 ]
  %232 = phi i64 [ %307, %228 ], [ %202, %159 ]
  %233 = phi i64 [ %287, %228 ], [ %195, %159 ]
  %234 = phi i64 [ %283, %228 ], [ %188, %159 ]
  %235 = phi i64 [ %263, %228 ], [ %181, %159 ]
  %236 = phi i64 [ %259, %228 ], [ %174, %159 ]
  %237 = phi i64 [ %336, %228 ], [ 0, %159 ]
  %238 = shl i64 %237, 6
  %239 = getelementptr inbounds nuw i8, ptr %225, i64 %238
  %240 = shl i64 %237, 3
  %241 = getelementptr inbounds nuw i8, ptr %35, i64 %240
  %242 = load i64, ptr %239, align 1
  %243 = tail call noundef i64 @llvm.bswap.i64(i64 %242)
  %244 = load i64, ptr %241, align 1
  %245 = tail call noundef i64 @llvm.bswap.i64(i64 %244)
  %246 = xor i64 %245, %243
  %247 = add i64 %235, %243
  %248 = and i64 %246, 4294967295
  %249 = lshr i64 %246, 32
  %250 = mul nuw i64 %248, %249
  %251 = add i64 %250, %236
  %252 = getelementptr inbounds nuw i8, ptr %239, i64 8
  %253 = load i64, ptr %252, align 1
  %254 = tail call noundef i64 @llvm.bswap.i64(i64 %253)
  %255 = getelementptr inbounds nuw i8, ptr %241, i64 8
  %256 = load i64, ptr %255, align 1
  %257 = tail call noundef i64 @llvm.bswap.i64(i64 %256)
  %258 = xor i64 %257, %254
  %259 = add i64 %251, %254
  %260 = and i64 %258, 4294967295
  %261 = lshr i64 %258, 32
  %262 = mul nuw i64 %260, %261
  %263 = add i64 %262, %247
  %264 = getelementptr inbounds nuw i8, ptr %239, i64 16
  %265 = load i64, ptr %264, align 1
  %266 = tail call noundef i64 @llvm.bswap.i64(i64 %265)
  %267 = getelementptr inbounds nuw i8, ptr %241, i64 16
  %268 = load i64, ptr %267, align 1
  %269 = tail call noundef i64 @llvm.bswap.i64(i64 %268)
  %270 = xor i64 %269, %266
  %271 = add i64 %233, %266
  %272 = and i64 %270, 4294967295
  %273 = lshr i64 %270, 32
  %274 = mul nuw i64 %272, %273
  %275 = add i64 %274, %234
  %276 = getelementptr inbounds nuw i8, ptr %239, i64 24
  %277 = load i64, ptr %276, align 1
  %278 = tail call noundef i64 @llvm.bswap.i64(i64 %277)
  %279 = getelementptr inbounds nuw i8, ptr %241, i64 24
  %280 = load i64, ptr %279, align 1
  %281 = tail call noundef i64 @llvm.bswap.i64(i64 %280)
  %282 = xor i64 %281, %278
  %283 = add i64 %275, %278
  %284 = and i64 %282, 4294967295
  %285 = lshr i64 %282, 32
  %286 = mul nuw i64 %284, %285
  %287 = add i64 %286, %271
  %288 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %289 = load i64, ptr %288, align 1
  %290 = tail call noundef i64 @llvm.bswap.i64(i64 %289)
  %291 = getelementptr inbounds nuw i8, ptr %241, i64 32
  %292 = load i64, ptr %291, align 1
  %293 = tail call noundef i64 @llvm.bswap.i64(i64 %292)
  %294 = xor i64 %293, %290
  %295 = add i64 %231, %290
  %296 = and i64 %294, 4294967295
  %297 = lshr i64 %294, 32
  %298 = mul nuw i64 %296, %297
  %299 = add i64 %298, %232
  %300 = getelementptr inbounds nuw i8, ptr %239, i64 40
  %301 = load i64, ptr %300, align 1
  %302 = tail call noundef i64 @llvm.bswap.i64(i64 %301)
  %303 = getelementptr inbounds nuw i8, ptr %241, i64 40
  %304 = load i64, ptr %303, align 1
  %305 = tail call noundef i64 @llvm.bswap.i64(i64 %304)
  %306 = xor i64 %305, %302
  %307 = add i64 %299, %302
  %308 = and i64 %306, 4294967295
  %309 = lshr i64 %306, 32
  %310 = mul nuw i64 %308, %309
  %311 = add i64 %310, %295
  %312 = getelementptr inbounds nuw i8, ptr %239, i64 48
  %313 = load i64, ptr %312, align 1
  %314 = tail call noundef i64 @llvm.bswap.i64(i64 %313)
  %315 = getelementptr inbounds nuw i8, ptr %241, i64 48
  %316 = load i64, ptr %315, align 1
  %317 = tail call noundef i64 @llvm.bswap.i64(i64 %316)
  %318 = xor i64 %317, %314
  %319 = add i64 %229, %314
  %320 = and i64 %318, 4294967295
  %321 = lshr i64 %318, 32
  %322 = mul nuw i64 %320, %321
  %323 = add i64 %322, %230
  %324 = getelementptr inbounds nuw i8, ptr %239, i64 56
  %325 = load i64, ptr %324, align 1
  %326 = tail call noundef i64 @llvm.bswap.i64(i64 %325)
  %327 = getelementptr inbounds nuw i8, ptr %241, i64 56
  %328 = load i64, ptr %327, align 1
  %329 = tail call noundef i64 @llvm.bswap.i64(i64 %328)
  %330 = xor i64 %329, %326
  %331 = add i64 %323, %326
  %332 = and i64 %330, 4294967295
  %333 = lshr i64 %330, 32
  %334 = mul nuw i64 %332, %333
  %335 = add i64 %334, %319
  %336 = add nuw i64 %237, 1
  %337 = icmp eq i64 %336, %226
  br i1 %337, label %448, label %228

338:                                              ; preds = %26, %338
  %339 = phi i64 [ %445, %338 ], [ %22, %26 ]
  %340 = phi i64 [ %441, %338 ], [ %20, %26 ]
  %341 = phi i64 [ %421, %338 ], [ %18, %26 ]
  %342 = phi i64 [ %417, %338 ], [ %16, %26 ]
  %343 = phi i64 [ %397, %338 ], [ %14, %26 ]
  %344 = phi i64 [ %393, %338 ], [ %12, %26 ]
  %345 = phi i64 [ %373, %338 ], [ %10, %26 ]
  %346 = phi i64 [ %369, %338 ], [ %8, %26 ]
  %347 = phi i64 [ %446, %338 ], [ 0, %26 ]
  %348 = shl i64 %347, 6
  %349 = getelementptr inbounds nuw i8, ptr %33, i64 %348
  %350 = shl i64 %347, 3
  %351 = getelementptr inbounds nuw i8, ptr %44, i64 %350
  %352 = load i64, ptr %349, align 1
  %353 = tail call noundef i64 @llvm.bswap.i64(i64 %352)
  %354 = load i64, ptr %351, align 1
  %355 = tail call noundef i64 @llvm.bswap.i64(i64 %354)
  %356 = xor i64 %355, %353
  %357 = add i64 %345, %353
  %358 = and i64 %356, 4294967295
  %359 = lshr i64 %356, 32
  %360 = mul nuw i64 %358, %359
  %361 = add i64 %360, %346
  %362 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %363 = load i64, ptr %362, align 1
  %364 = tail call noundef i64 @llvm.bswap.i64(i64 %363)
  %365 = getelementptr inbounds nuw i8, ptr %351, i64 8
  %366 = load i64, ptr %365, align 1
  %367 = tail call noundef i64 @llvm.bswap.i64(i64 %366)
  %368 = xor i64 %367, %364
  %369 = add i64 %361, %364
  %370 = and i64 %368, 4294967295
  %371 = lshr i64 %368, 32
  %372 = mul nuw i64 %370, %371
  %373 = add i64 %372, %357
  %374 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %375 = load i64, ptr %374, align 1
  %376 = tail call noundef i64 @llvm.bswap.i64(i64 %375)
  %377 = getelementptr inbounds nuw i8, ptr %351, i64 16
  %378 = load i64, ptr %377, align 1
  %379 = tail call noundef i64 @llvm.bswap.i64(i64 %378)
  %380 = xor i64 %379, %376
  %381 = add i64 %343, %376
  %382 = and i64 %380, 4294967295
  %383 = lshr i64 %380, 32
  %384 = mul nuw i64 %382, %383
  %385 = add i64 %384, %344
  %386 = getelementptr inbounds nuw i8, ptr %349, i64 24
  %387 = load i64, ptr %386, align 1
  %388 = tail call noundef i64 @llvm.bswap.i64(i64 %387)
  %389 = getelementptr inbounds nuw i8, ptr %351, i64 24
  %390 = load i64, ptr %389, align 1
  %391 = tail call noundef i64 @llvm.bswap.i64(i64 %390)
  %392 = xor i64 %391, %388
  %393 = add i64 %385, %388
  %394 = and i64 %392, 4294967295
  %395 = lshr i64 %392, 32
  %396 = mul nuw i64 %394, %395
  %397 = add i64 %396, %381
  %398 = getelementptr inbounds nuw i8, ptr %349, i64 32
  %399 = load i64, ptr %398, align 1
  %400 = tail call noundef i64 @llvm.bswap.i64(i64 %399)
  %401 = getelementptr inbounds nuw i8, ptr %351, i64 32
  %402 = load i64, ptr %401, align 1
  %403 = tail call noundef i64 @llvm.bswap.i64(i64 %402)
  %404 = xor i64 %403, %400
  %405 = add i64 %341, %400
  %406 = and i64 %404, 4294967295
  %407 = lshr i64 %404, 32
  %408 = mul nuw i64 %406, %407
  %409 = add i64 %408, %342
  %410 = getelementptr inbounds nuw i8, ptr %349, i64 40
  %411 = load i64, ptr %410, align 1
  %412 = tail call noundef i64 @llvm.bswap.i64(i64 %411)
  %413 = getelementptr inbounds nuw i8, ptr %351, i64 40
  %414 = load i64, ptr %413, align 1
  %415 = tail call noundef i64 @llvm.bswap.i64(i64 %414)
  %416 = xor i64 %415, %412
  %417 = add i64 %409, %412
  %418 = and i64 %416, 4294967295
  %419 = lshr i64 %416, 32
  %420 = mul nuw i64 %418, %419
  %421 = add i64 %420, %405
  %422 = getelementptr inbounds nuw i8, ptr %349, i64 48
  %423 = load i64, ptr %422, align 1
  %424 = tail call noundef i64 @llvm.bswap.i64(i64 %423)
  %425 = getelementptr inbounds nuw i8, ptr %351, i64 48
  %426 = load i64, ptr %425, align 1
  %427 = tail call noundef i64 @llvm.bswap.i64(i64 %426)
  %428 = xor i64 %427, %424
  %429 = add i64 %339, %424
  %430 = and i64 %428, 4294967295
  %431 = lshr i64 %428, 32
  %432 = mul nuw i64 %430, %431
  %433 = add i64 %432, %340
  %434 = getelementptr inbounds nuw i8, ptr %349, i64 56
  %435 = load i64, ptr %434, align 1
  %436 = tail call noundef i64 @llvm.bswap.i64(i64 %435)
  %437 = getelementptr inbounds nuw i8, ptr %351, i64 56
  %438 = load i64, ptr %437, align 1
  %439 = tail call noundef i64 @llvm.bswap.i64(i64 %438)
  %440 = xor i64 %439, %436
  %441 = add i64 %433, %436
  %442 = and i64 %440, 4294967295
  %443 = lshr i64 %440, 32
  %444 = mul nuw i64 %442, %443
  %445 = add i64 %444, %429
  %446 = add nuw nsw i64 %347, 1
  %447 = icmp eq i64 %446, %28
  br i1 %447, label %448, label %338

448:                                              ; preds = %228, %338, %159
  %449 = phi i64 [ %223, %159 ], [ %445, %338 ], [ %335, %228 ]
  %450 = phi i64 [ %216, %159 ], [ %441, %338 ], [ %331, %228 ]
  %451 = phi i64 [ %209, %159 ], [ %421, %338 ], [ %311, %228 ]
  %452 = phi i64 [ %202, %159 ], [ %417, %338 ], [ %307, %228 ]
  %453 = phi i64 [ %195, %159 ], [ %397, %338 ], [ %287, %228 ]
  %454 = phi i64 [ %188, %159 ], [ %393, %338 ], [ %283, %228 ]
  %455 = phi i64 [ %181, %159 ], [ %373, %338 ], [ %263, %228 ]
  %456 = phi i64 [ %174, %159 ], [ %369, %338 ], [ %259, %228 ]
  %457 = and i32 %24, 63
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %670, label %459

459:                                              ; preds = %448
  %460 = zext i32 %24 to i64
  %461 = getelementptr inbounds nuw i8, ptr %33, i64 %460
  %462 = getelementptr inbounds i8, ptr %461, i64 -64
  %463 = getelementptr inbounds nuw i8, ptr %35, i64 %38
  %464 = getelementptr inbounds i8, ptr %463, i64 -7
  %465 = load i64, ptr %462, align 1
  %466 = tail call noundef i64 @llvm.bswap.i64(i64 %465)
  %467 = load i64, ptr %464, align 1
  %468 = tail call noundef i64 @llvm.bswap.i64(i64 %467)
  %469 = xor i64 %468, %466
  %470 = add i64 %455, %466
  %471 = and i64 %469, 4294967295
  %472 = lshr i64 %469, 32
  %473 = mul nuw i64 %471, %472
  %474 = add i64 %473, %456
  %475 = getelementptr inbounds i8, ptr %461, i64 -56
  %476 = load i64, ptr %475, align 1
  %477 = tail call noundef i64 @llvm.bswap.i64(i64 %476)
  %478 = getelementptr inbounds nuw i8, ptr %463, i64 1
  %479 = load i64, ptr %478, align 1
  %480 = tail call noundef i64 @llvm.bswap.i64(i64 %479)
  %481 = xor i64 %480, %477
  %482 = add i64 %474, %477
  %483 = and i64 %481, 4294967295
  %484 = lshr i64 %481, 32
  %485 = mul nuw i64 %483, %484
  %486 = add i64 %485, %470
  %487 = getelementptr inbounds i8, ptr %461, i64 -48
  %488 = load i64, ptr %487, align 1
  %489 = tail call noundef i64 @llvm.bswap.i64(i64 %488)
  %490 = getelementptr inbounds nuw i8, ptr %463, i64 9
  %491 = load i64, ptr %490, align 1
  %492 = tail call noundef i64 @llvm.bswap.i64(i64 %491)
  %493 = xor i64 %492, %489
  %494 = add i64 %453, %489
  %495 = and i64 %493, 4294967295
  %496 = lshr i64 %493, 32
  %497 = mul nuw i64 %495, %496
  %498 = add i64 %497, %454
  %499 = getelementptr inbounds i8, ptr %461, i64 -40
  %500 = load i64, ptr %499, align 1
  %501 = tail call noundef i64 @llvm.bswap.i64(i64 %500)
  %502 = getelementptr inbounds nuw i8, ptr %463, i64 17
  %503 = load i64, ptr %502, align 1
  %504 = tail call noundef i64 @llvm.bswap.i64(i64 %503)
  %505 = xor i64 %504, %501
  %506 = add i64 %498, %501
  %507 = and i64 %505, 4294967295
  %508 = lshr i64 %505, 32
  %509 = mul nuw i64 %507, %508
  %510 = add i64 %509, %494
  %511 = getelementptr inbounds i8, ptr %461, i64 -32
  %512 = load i64, ptr %511, align 1
  %513 = tail call noundef i64 @llvm.bswap.i64(i64 %512)
  %514 = getelementptr inbounds nuw i8, ptr %463, i64 25
  %515 = load i64, ptr %514, align 1
  %516 = tail call noundef i64 @llvm.bswap.i64(i64 %515)
  %517 = xor i64 %516, %513
  %518 = add i64 %451, %513
  %519 = and i64 %517, 4294967295
  %520 = lshr i64 %517, 32
  %521 = mul nuw i64 %519, %520
  %522 = add i64 %521, %452
  %523 = getelementptr inbounds i8, ptr %461, i64 -24
  %524 = load i64, ptr %523, align 1
  %525 = tail call noundef i64 @llvm.bswap.i64(i64 %524)
  %526 = getelementptr inbounds nuw i8, ptr %463, i64 33
  %527 = load i64, ptr %526, align 1
  %528 = tail call noundef i64 @llvm.bswap.i64(i64 %527)
  %529 = xor i64 %528, %525
  %530 = add i64 %522, %525
  %531 = and i64 %529, 4294967295
  %532 = lshr i64 %529, 32
  %533 = mul nuw i64 %531, %532
  %534 = add i64 %533, %518
  %535 = getelementptr inbounds i8, ptr %461, i64 -16
  %536 = load i64, ptr %535, align 1
  %537 = tail call noundef i64 @llvm.bswap.i64(i64 %536)
  %538 = getelementptr inbounds nuw i8, ptr %463, i64 41
  %539 = load i64, ptr %538, align 1
  %540 = tail call noundef i64 @llvm.bswap.i64(i64 %539)
  %541 = xor i64 %540, %537
  %542 = add i64 %449, %537
  %543 = and i64 %541, 4294967295
  %544 = lshr i64 %541, 32
  %545 = mul nuw i64 %543, %544
  %546 = add i64 %545, %450
  %547 = getelementptr inbounds i8, ptr %461, i64 -8
  %548 = load i64, ptr %547, align 1
  %549 = tail call noundef i64 @llvm.bswap.i64(i64 %548)
  %550 = getelementptr inbounds nuw i8, ptr %463, i64 49
  %551 = load i64, ptr %550, align 1
  %552 = tail call noundef i64 @llvm.bswap.i64(i64 %551)
  %553 = xor i64 %552, %549
  %554 = add i64 %546, %549
  %555 = and i64 %553, 4294967295
  %556 = lshr i64 %553, 32
  %557 = mul nuw i64 %555, %556
  %558 = add i64 %557, %542
  br label %670

559:                                              ; preds = %7
  %560 = icmp eq i32 %24, 0
  br i1 %560, label %670, label %561

561:                                              ; preds = %559
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #26
  %562 = sub nuw nsw i32 64, %24
  %563 = zext nneg i32 %562 to i64
  %564 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %565 = sub nsw i64 0, %563
  %566 = getelementptr inbounds i8, ptr %23, i64 %565
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull align 1 %566, i64 %563, i1 false)
  %567 = getelementptr inbounds nuw i8, ptr %3, i64 %563
  %568 = zext nneg i32 %24 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %567, ptr nonnull align 64 %564, i64 %568, i1 false)
  %569 = getelementptr inbounds nuw i8, ptr %1, i64 560
  %570 = load ptr, ptr %569, align 16
  %571 = getelementptr inbounds nuw i8, ptr %1, i64 524
  %572 = load i32, ptr %571, align 4
  %573 = zext i32 %572 to i64
  %574 = getelementptr inbounds nuw i8, ptr %570, i64 %573
  %575 = getelementptr inbounds i8, ptr %574, i64 -7
  %576 = load i64, ptr %3, align 8
  %577 = tail call noundef i64 @llvm.bswap.i64(i64 %576)
  %578 = load i64, ptr %575, align 1
  %579 = tail call noundef i64 @llvm.bswap.i64(i64 %578)
  %580 = xor i64 %579, %577
  %581 = add i64 %10, %577
  %582 = and i64 %580, 4294967295
  %583 = lshr i64 %580, 32
  %584 = mul nuw i64 %582, %583
  %585 = add i64 %584, %8
  %586 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %587 = load i64, ptr %586, align 8
  %588 = tail call noundef i64 @llvm.bswap.i64(i64 %587)
  %589 = getelementptr inbounds nuw i8, ptr %574, i64 1
  %590 = load i64, ptr %589, align 1
  %591 = tail call noundef i64 @llvm.bswap.i64(i64 %590)
  %592 = xor i64 %591, %588
  %593 = add i64 %585, %588
  %594 = and i64 %592, 4294967295
  %595 = lshr i64 %592, 32
  %596 = mul nuw i64 %594, %595
  %597 = add i64 %596, %581
  %598 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %599 = load i64, ptr %598, align 8
  %600 = tail call noundef i64 @llvm.bswap.i64(i64 %599)
  %601 = getelementptr inbounds nuw i8, ptr %574, i64 9
  %602 = load i64, ptr %601, align 1
  %603 = tail call noundef i64 @llvm.bswap.i64(i64 %602)
  %604 = xor i64 %603, %600
  %605 = add i64 %14, %600
  %606 = and i64 %604, 4294967295
  %607 = lshr i64 %604, 32
  %608 = mul nuw i64 %606, %607
  %609 = add i64 %608, %12
  %610 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %611 = load i64, ptr %610, align 8
  %612 = tail call noundef i64 @llvm.bswap.i64(i64 %611)
  %613 = getelementptr inbounds nuw i8, ptr %574, i64 17
  %614 = load i64, ptr %613, align 1
  %615 = tail call noundef i64 @llvm.bswap.i64(i64 %614)
  %616 = xor i64 %615, %612
  %617 = add i64 %609, %612
  %618 = and i64 %616, 4294967295
  %619 = lshr i64 %616, 32
  %620 = mul nuw i64 %618, %619
  %621 = add i64 %620, %605
  %622 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %623 = load i64, ptr %622, align 8
  %624 = tail call noundef i64 @llvm.bswap.i64(i64 %623)
  %625 = getelementptr inbounds nuw i8, ptr %574, i64 25
  %626 = load i64, ptr %625, align 1
  %627 = tail call noundef i64 @llvm.bswap.i64(i64 %626)
  %628 = xor i64 %627, %624
  %629 = add i64 %18, %624
  %630 = and i64 %628, 4294967295
  %631 = lshr i64 %628, 32
  %632 = mul nuw i64 %630, %631
  %633 = add i64 %632, %16
  %634 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %635 = load i64, ptr %634, align 8
  %636 = tail call noundef i64 @llvm.bswap.i64(i64 %635)
  %637 = getelementptr inbounds nuw i8, ptr %574, i64 33
  %638 = load i64, ptr %637, align 1
  %639 = tail call noundef i64 @llvm.bswap.i64(i64 %638)
  %640 = xor i64 %639, %636
  %641 = add i64 %633, %636
  %642 = and i64 %640, 4294967295
  %643 = lshr i64 %640, 32
  %644 = mul nuw i64 %642, %643
  %645 = add i64 %644, %629
  %646 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %647 = load i64, ptr %646, align 8
  %648 = tail call noundef i64 @llvm.bswap.i64(i64 %647)
  %649 = getelementptr inbounds nuw i8, ptr %574, i64 41
  %650 = load i64, ptr %649, align 1
  %651 = tail call noundef i64 @llvm.bswap.i64(i64 %650)
  %652 = xor i64 %651, %648
  %653 = add i64 %22, %648
  %654 = and i64 %652, 4294967295
  %655 = lshr i64 %652, 32
  %656 = mul nuw i64 %654, %655
  %657 = add i64 %656, %20
  %658 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %659 = load i64, ptr %658, align 8
  %660 = tail call noundef i64 @llvm.bswap.i64(i64 %659)
  %661 = getelementptr inbounds nuw i8, ptr %574, i64 49
  %662 = load i64, ptr %661, align 1
  %663 = tail call noundef i64 @llvm.bswap.i64(i64 %662)
  %664 = xor i64 %663, %660
  %665 = add i64 %657, %660
  %666 = and i64 %664, 4294967295
  %667 = lshr i64 %664, 32
  %668 = mul nuw i64 %666, %667
  %669 = add i64 %668, %653
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #26
  br label %670

670:                                              ; preds = %459, %448, %559, %561
  %671 = phi i64 [ %449, %448 ], [ %558, %459 ], [ %22, %559 ], [ %669, %561 ]
  %672 = phi i64 [ %450, %448 ], [ %554, %459 ], [ %20, %559 ], [ %665, %561 ]
  %673 = phi i64 [ %451, %448 ], [ %534, %459 ], [ %18, %559 ], [ %645, %561 ]
  %674 = phi i64 [ %452, %448 ], [ %530, %459 ], [ %16, %559 ], [ %641, %561 ]
  %675 = phi i64 [ %453, %448 ], [ %510, %459 ], [ %14, %559 ], [ %621, %561 ]
  %676 = phi i64 [ %454, %448 ], [ %506, %459 ], [ %12, %559 ], [ %617, %561 ]
  %677 = phi i64 [ %455, %448 ], [ %486, %459 ], [ %10, %559 ], [ %597, %561 ]
  %678 = phi i64 [ %456, %448 ], [ %482, %459 ], [ %8, %559 ], [ %593, %561 ]
  %679 = getelementptr inbounds nuw i8, ptr %1, i64 560
  %680 = load ptr, ptr %679, align 16
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 11
  %682 = mul i64 %5, -7046029288634856825
  %683 = load i64, ptr %681, align 1
  %684 = tail call noundef i64 @llvm.bswap.i64(i64 %683)
  %685 = xor i64 %684, %678
  %686 = getelementptr inbounds nuw i8, ptr %680, i64 19
  %687 = load i64, ptr %686, align 1
  %688 = tail call noundef i64 @llvm.bswap.i64(i64 %687)
  %689 = xor i64 %688, %677
  %690 = zext i64 %685 to i128
  %691 = zext i64 %689 to i128
  %692 = mul nuw i128 %691, %690
  %693 = lshr i128 %692, 64
  %694 = xor i128 %693, %692
  %695 = trunc i128 %694 to i64
  %696 = add i64 %682, %695
  %697 = getelementptr inbounds nuw i8, ptr %680, i64 27
  %698 = load i64, ptr %697, align 1
  %699 = tail call noundef i64 @llvm.bswap.i64(i64 %698)
  %700 = xor i64 %699, %676
  %701 = getelementptr inbounds nuw i8, ptr %680, i64 35
  %702 = load i64, ptr %701, align 1
  %703 = tail call noundef i64 @llvm.bswap.i64(i64 %702)
  %704 = xor i64 %703, %675
  %705 = zext i64 %700 to i128
  %706 = zext i64 %704 to i128
  %707 = mul nuw i128 %706, %705
  %708 = lshr i128 %707, 64
  %709 = xor i128 %708, %707
  %710 = trunc i128 %709 to i64
  %711 = add i64 %696, %710
  %712 = getelementptr inbounds nuw i8, ptr %680, i64 43
  %713 = load i64, ptr %712, align 1
  %714 = tail call noundef i64 @llvm.bswap.i64(i64 %713)
  %715 = xor i64 %714, %674
  %716 = getelementptr inbounds nuw i8, ptr %680, i64 51
  %717 = load i64, ptr %716, align 1
  %718 = tail call noundef i64 @llvm.bswap.i64(i64 %717)
  %719 = xor i64 %718, %673
  %720 = zext i64 %715 to i128
  %721 = zext i64 %719 to i128
  %722 = mul nuw i128 %721, %720
  %723 = lshr i128 %722, 64
  %724 = xor i128 %723, %722
  %725 = trunc i128 %724 to i64
  %726 = add i64 %711, %725
  %727 = getelementptr inbounds nuw i8, ptr %680, i64 59
  %728 = load i64, ptr %727, align 1
  %729 = tail call noundef i64 @llvm.bswap.i64(i64 %728)
  %730 = xor i64 %729, %672
  %731 = getelementptr inbounds nuw i8, ptr %680, i64 67
  %732 = load i64, ptr %731, align 1
  %733 = tail call noundef i64 @llvm.bswap.i64(i64 %732)
  %734 = xor i64 %733, %671
  %735 = zext i64 %730 to i128
  %736 = zext i64 %734 to i128
  %737 = mul nuw i128 %736, %735
  %738 = lshr i128 %737, 64
  %739 = xor i128 %738, %737
  %740 = trunc i128 %739 to i64
  %741 = add i64 %726, %740
  %742 = lshr i64 %741, 37
  %743 = xor i64 %742, %741
  %744 = mul i64 %743, 1609587929392839161
  %745 = lshr i64 %744, 32
  %746 = xor i64 %745, %744
  %747 = getelementptr inbounds nuw i8, ptr %1, i64 524
  %748 = load i32, ptr %747, align 4
  %749 = zext i32 %748 to i64
  %750 = getelementptr inbounds nuw i8, ptr %680, i64 %749
  %751 = getelementptr inbounds i8, ptr %750, i64 -11
  %752 = mul i64 %5, -4417276706812531889
  %753 = xor i64 %752, -1
  %754 = load i64, ptr %751, align 1
  %755 = tail call noundef i64 @llvm.bswap.i64(i64 %754)
  %756 = xor i64 %755, %678
  %757 = getelementptr inbounds i8, ptr %750, i64 -3
  %758 = load i64, ptr %757, align 1
  %759 = tail call noundef i64 @llvm.bswap.i64(i64 %758)
  %760 = xor i64 %759, %677
  %761 = zext i64 %756 to i128
  %762 = zext i64 %760 to i128
  %763 = mul nuw i128 %762, %761
  %764 = lshr i128 %763, 64
  %765 = xor i128 %764, %763
  %766 = trunc i128 %765 to i64
  %767 = add i64 %766, %753
  %768 = getelementptr inbounds nuw i8, ptr %750, i64 5
  %769 = load i64, ptr %768, align 1
  %770 = tail call noundef i64 @llvm.bswap.i64(i64 %769)
  %771 = xor i64 %770, %676
  %772 = getelementptr inbounds nuw i8, ptr %750, i64 13
  %773 = load i64, ptr %772, align 1
  %774 = tail call noundef i64 @llvm.bswap.i64(i64 %773)
  %775 = xor i64 %774, %675
  %776 = zext i64 %771 to i128
  %777 = zext i64 %775 to i128
  %778 = mul nuw i128 %777, %776
  %779 = lshr i128 %778, 64
  %780 = xor i128 %779, %778
  %781 = trunc i128 %780 to i64
  %782 = add i64 %767, %781
  %783 = getelementptr inbounds nuw i8, ptr %750, i64 21
  %784 = load i64, ptr %783, align 1
  %785 = tail call noundef i64 @llvm.bswap.i64(i64 %784)
  %786 = xor i64 %785, %674
  %787 = getelementptr inbounds nuw i8, ptr %750, i64 29
  %788 = load i64, ptr %787, align 1
  %789 = tail call noundef i64 @llvm.bswap.i64(i64 %788)
  %790 = xor i64 %789, %673
  %791 = zext i64 %786 to i128
  %792 = zext i64 %790 to i128
  %793 = mul nuw i128 %792, %791
  %794 = lshr i128 %793, 64
  %795 = xor i128 %794, %793
  %796 = trunc i128 %795 to i64
  %797 = add i64 %782, %796
  %798 = getelementptr inbounds nuw i8, ptr %750, i64 37
  %799 = load i64, ptr %798, align 1
  %800 = tail call noundef i64 @llvm.bswap.i64(i64 %799)
  %801 = xor i64 %800, %672
  %802 = getelementptr inbounds nuw i8, ptr %750, i64 45
  %803 = load i64, ptr %802, align 1
  %804 = tail call noundef i64 @llvm.bswap.i64(i64 %803)
  %805 = xor i64 %804, %671
  %806 = zext i64 %801 to i128
  %807 = zext i64 %805 to i128
  %808 = mul nuw i128 %807, %806
  %809 = lshr i128 %808, 64
  %810 = xor i128 %809, %808
  %811 = trunc i128 %810 to i64
  %812 = add i64 %797, %811
  %813 = lshr i64 %812, 37
  %814 = xor i64 %813, %812
  %815 = mul i64 %814, 1609587929392839161
  %816 = lshr i64 %815, 32
  %817 = xor i64 %816, %815
  store i64 %746, ptr %0, align 8
  %818 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %817, ptr %818, align 8
  br label %1501

819:                                              ; preds = %2
  %820 = getelementptr inbounds nuw i8, ptr %1, i64 544
  %821 = load i64, ptr %820, align 32
  %822 = icmp eq i64 %821, 0
  %823 = getelementptr inbounds nuw i8, ptr %1, i64 256
  br i1 %822, label %1144, label %824

824:                                              ; preds = %819
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %825 = icmp samesign ult i64 %5, 17
  br i1 %825, label %826, label %951

826:                                              ; preds = %824
  %827 = icmp samesign ugt i64 %5, 8
  br i1 %827, label %828, label %869

828:                                              ; preds = %826
  %829 = load i64, ptr %823, align 1, !noalias !88
  %830 = tail call noundef i64 @llvm.bswap.i64(i64 %829)
  %831 = add i64 %821, -4734510112055689544
  %832 = xor i64 %830, %831
  %833 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %834 = getelementptr inbounds i8, ptr %833, i64 -8
  %835 = load i64, ptr %834, align 1, !noalias !88
  %836 = tail call noundef i64 @llvm.bswap.i64(i64 %835)
  %837 = sub i64 2066345149520216444, %821
  %838 = xor i64 %836, %837
  %839 = xor i64 %832, %838
  %840 = zext i64 %839 to i128
  %841 = mul nuw i128 %840, 11400714785074694791
  %842 = trunc i128 %841 to i64
  %843 = lshr i128 %841, 64
  %844 = trunc nuw i128 %843 to i64
  %845 = mul nuw nsw i64 %5, 374761393
  %846 = add i64 %845, %842
  %847 = mul i64 %838, -7046029288634856825
  %848 = add i64 %847, %844
  %849 = lshr i64 %848, 32
  %850 = xor i64 %849, %846
  %851 = zext i64 %850 to i128
  %852 = mul nuw i128 %851, 14029467366897019727
  %853 = trunc i128 %852 to i64
  %854 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %855 = lshr i128 %852, 64
  %856 = trunc nuw i128 %855 to i64
  %857 = mul i64 %848, -4417276706812531889
  %858 = add i64 %857, %856
  %859 = lshr i64 %853, 37
  %860 = xor i64 %859, %853
  %861 = mul i64 %860, 1609587929392839161
  %862 = lshr i64 %861, 32
  %863 = xor i64 %862, %861
  store i64 %863, ptr %0, align 8, !alias.scope !91
  %864 = lshr i64 %858, 37
  %865 = xor i64 %864, %858
  %866 = mul i64 %865, 1609587929392839161
  %867 = lshr i64 %866, 32
  %868 = xor i64 %867, %866
  store i64 %868, ptr %854, align 8, !alias.scope !91
  br label %1501

869:                                              ; preds = %826
  %870 = icmp samesign ugt i64 %5, 3
  br i1 %870, label %871, label %910

871:                                              ; preds = %869
  %872 = load i32, ptr %823, align 1, !noalias !88
  %873 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %874 = getelementptr inbounds i8, ptr %873, i64 -4
  %875 = load i32, ptr %874, align 1, !noalias !88
  %876 = zext i32 %875 to i64
  %877 = zext i32 %872 to i64
  %878 = shl nuw i64 %877, 32
  %879 = or disjoint i64 %878, %876
  %880 = tail call i64 @llvm.bswap.i64(i64 %879)
  %881 = add i64 %821, -4734510112055689544
  %882 = xor i64 %880, %881
  %883 = sub i64 2066345149520216444, %821
  %884 = xor i64 %879, %883
  %885 = lshr i64 %882, 51
  %886 = xor i64 %885, %882
  %887 = mul i64 %886, 2654435761
  %888 = add i64 %887, %5
  %889 = lshr i64 %888, 47
  %890 = xor i64 %889, %888
  %891 = mul i64 %890, -4417276706812531889
  %892 = lshr i64 %884, 47
  %893 = xor i64 %892, %884
  %894 = mul i64 %893, -7046029288634856825
  %895 = sub i64 %894, %5
  %896 = lshr i64 %895, 43
  %897 = xor i64 %896, %895
  %898 = mul i64 %897, -8796714831421723037
  %899 = lshr i64 %891, 37
  %900 = xor i64 %899, %891
  %901 = mul i64 %900, 1609587929392839161
  %902 = lshr i64 %901, 32
  %903 = xor i64 %902, %901
  store i64 %903, ptr %0, align 8, !alias.scope !94
  %904 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %905 = lshr i64 %898, 37
  %906 = xor i64 %905, %898
  %907 = mul i64 %906, 1609587929392839161
  %908 = lshr i64 %907, 32
  %909 = xor i64 %908, %907
  store i64 %909, ptr %904, align 8, !alias.scope !94
  br label %1501

910:                                              ; preds = %869
  %911 = icmp eq i64 %5, 0
  br i1 %911, label %950, label %912

912:                                              ; preds = %910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %913 = load i8, ptr %823, align 1, !noalias !100
  %914 = lshr i64 %5, 1
  %915 = getelementptr inbounds nuw i8, ptr %823, i64 %914
  %916 = load i8, ptr %915, align 1, !noalias !100
  %917 = getelementptr i8, ptr %823, i64 %5
  %918 = getelementptr i8, ptr %917, i64 -1
  %919 = load i8, ptr %918, align 1, !noalias !100
  %920 = zext i8 %913 to i32
  %921 = zext i8 %916 to i32
  %922 = shl nuw nsw i32 %921, 8
  %923 = or disjoint i32 %922, %920
  %924 = zext i8 %919 to i32
  %925 = shl nuw nsw i32 %924, 16
  %926 = or disjoint i32 %923, %925
  %927 = trunc nuw nsw i64 %5 to i32
  %928 = shl nuw nsw i32 %927, 24
  %929 = or disjoint i32 %926, %928
  %930 = tail call noundef i32 @llvm.bswap.i32(i32 %929)
  %931 = zext nneg i32 %929 to i64
  %932 = add i64 %821, 963444408
  %933 = xor i64 %932, %931
  %934 = zext i32 %930 to i64
  %935 = sub i64 3192628259, %821
  %936 = xor i64 %935, %934
  %937 = mul i64 %933, -7046029288634856825
  %938 = mul i64 %936, 2870177450012600261
  %939 = lshr i64 %937, 37
  %940 = xor i64 %939, %937
  %941 = mul i64 %940, 1609587929392839161
  %942 = lshr i64 %941, 32
  %943 = xor i64 %942, %941
  store i64 %943, ptr %0, align 8, !alias.scope !100
  %944 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %945 = lshr i64 %938, 37
  %946 = xor i64 %945, %938
  %947 = mul i64 %946, 1609587929392839161
  %948 = lshr i64 %947, 32
  %949 = xor i64 %948, %947
  store i64 %949, ptr %944, align 8, !alias.scope !100
  br label %1501

950:                                              ; preds = %910
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !101
  br label %1501

951:                                              ; preds = %824
  %952 = icmp samesign ult i64 %5, 129
  br i1 %952, label %953, label %1143

953:                                              ; preds = %951
  %954 = mul i64 %5, -7046029288634856825
  %955 = icmp samesign ugt i64 %5, 32
  br i1 %955, label %956, label %1083

956:                                              ; preds = %953
  %957 = icmp samesign ugt i64 %5, 64
  br i1 %957, label %958, label %1041

958:                                              ; preds = %956
  %959 = icmp samesign ugt i64 %5, 96
  br i1 %959, label %960, label %999

960:                                              ; preds = %958
  %961 = getelementptr inbounds nuw i8, ptr %1, i64 304
  %962 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %963 = getelementptr inbounds i8, ptr %962, i64 -64
  %964 = load i64, ptr %961, align 1, !noalias !88
  %965 = tail call noundef i64 @llvm.bswap.i64(i64 %964)
  %966 = getelementptr inbounds nuw i8, ptr %1, i64 312
  %967 = load i64, ptr %966, align 1, !noalias !88
  %968 = tail call noundef i64 @llvm.bswap.i64(i64 %967)
  %969 = add i64 %821, 4554437623014685352
  %970 = xor i64 %965, %969
  %971 = sub i64 2111919702937427193, %821
  %972 = xor i64 %968, %971
  %973 = zext i64 %970 to i128
  %974 = zext i64 %972 to i128
  %975 = mul nuw i128 %974, %973
  %976 = lshr i128 %975, 64
  %977 = xor i128 %976, %975
  %978 = trunc i128 %977 to i64
  %979 = add i64 %954, %978
  %980 = load i64, ptr %963, align 1, !noalias !88
  %981 = tail call noundef i64 @llvm.bswap.i64(i64 %980)
  %982 = getelementptr inbounds i8, ptr %962, i64 -56
  %983 = load i64, ptr %982, align 1, !noalias !88
  %984 = tail call noundef i64 @llvm.bswap.i64(i64 %983)
  %985 = add i64 %984, %981
  %986 = xor i64 %979, %985
  %987 = add i64 %821, 3556072174620004746
  %988 = xor i64 %981, %987
  %989 = sub i64 7238261902898274248, %821
  %990 = xor i64 %984, %989
  %991 = zext i64 %988 to i128
  %992 = zext i64 %990 to i128
  %993 = mul nuw i128 %992, %991
  %994 = lshr i128 %993, 64
  %995 = xor i128 %994, %993
  %996 = trunc i128 %995 to i64
  %997 = add i64 %968, %965
  %998 = xor i64 %997, %996
  br label %999

999:                                              ; preds = %960, %958
  %1000 = phi i64 [ %986, %960 ], [ %954, %958 ]
  %1001 = phi i64 [ %998, %960 ], [ 0, %958 ]
  %1002 = getelementptr inbounds nuw i8, ptr %1, i64 288
  %1003 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %1004 = getelementptr inbounds i8, ptr %1003, i64 -48
  %1005 = load i64, ptr %1002, align 1, !noalias !88
  %1006 = tail call noundef i64 @llvm.bswap.i64(i64 %1005)
  %1007 = getelementptr inbounds nuw i8, ptr %1, i64 296
  %1008 = load i64, ptr %1007, align 1, !noalias !88
  %1009 = tail call noundef i64 @llvm.bswap.i64(i64 %1008)
  %1010 = add i64 %821, -3818837453329782724
  %1011 = xor i64 %1006, %1010
  %1012 = sub i64 -6688317018830679928, %821
  %1013 = xor i64 %1009, %1012
  %1014 = zext i64 %1011 to i128
  %1015 = zext i64 %1013 to i128
  %1016 = mul nuw i128 %1015, %1014
  %1017 = lshr i128 %1016, 64
  %1018 = xor i128 %1017, %1016
  %1019 = trunc i128 %1018 to i64
  %1020 = add i64 %1000, %1019
  %1021 = load i64, ptr %1004, align 1, !noalias !88
  %1022 = tail call noundef i64 @llvm.bswap.i64(i64 %1021)
  %1023 = getelementptr inbounds i8, ptr %1003, i64 -40
  %1024 = load i64, ptr %1023, align 1, !noalias !88
  %1025 = tail call noundef i64 @llvm.bswap.i64(i64 %1024)
  %1026 = add i64 %1025, %1022
  %1027 = xor i64 %1020, %1026
  %1028 = add i64 %821, 5690594596133299313
  %1029 = xor i64 %1022, %1028
  %1030 = sub i64 -2833645246901970632, %821
  %1031 = xor i64 %1025, %1030
  %1032 = zext i64 %1029 to i128
  %1033 = zext i64 %1031 to i128
  %1034 = mul nuw i128 %1033, %1032
  %1035 = lshr i128 %1034, 64
  %1036 = xor i128 %1035, %1034
  %1037 = trunc i128 %1036 to i64
  %1038 = add i64 %1001, %1037
  %1039 = add i64 %1009, %1006
  %1040 = xor i64 %1038, %1039
  br label %1041

1041:                                             ; preds = %999, %956
  %1042 = phi i64 [ %1027, %999 ], [ %954, %956 ]
  %1043 = phi i64 [ %1040, %999 ], [ 0, %956 ]
  %1044 = getelementptr inbounds nuw i8, ptr %1, i64 272
  %1045 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %1046 = getelementptr inbounds i8, ptr %1045, i64 -32
  %1047 = load i64, ptr %1044, align 1, !noalias !88
  %1048 = tail call noundef i64 @llvm.bswap.i64(i64 %1047)
  %1049 = getelementptr inbounds nuw i8, ptr %1, i64 280
  %1050 = load i64, ptr %1049, align 1, !noalias !88
  %1051 = tail call noundef i64 @llvm.bswap.i64(i64 %1050)
  %1052 = add i64 %821, 8711581037947681227
  %1053 = xor i64 %1048, %1052
  %1054 = sub i64 2410270004345854594, %821
  %1055 = xor i64 %1051, %1054
  %1056 = zext i64 %1053 to i128
  %1057 = zext i64 %1055 to i128
  %1058 = mul nuw i128 %1057, %1056
  %1059 = lshr i128 %1058, 64
  %1060 = xor i128 %1059, %1058
  %1061 = trunc i128 %1060 to i64
  %1062 = add i64 %1042, %1061
  %1063 = load i64, ptr %1046, align 1, !noalias !88
  %1064 = tail call noundef i64 @llvm.bswap.i64(i64 %1063)
  %1065 = getelementptr inbounds i8, ptr %1045, i64 -24
  %1066 = load i64, ptr %1065, align 1, !noalias !88
  %1067 = tail call noundef i64 @llvm.bswap.i64(i64 %1066)
  %1068 = add i64 %1067, %1064
  %1069 = xor i64 %1062, %1068
  %1070 = add i64 %821, -8204357891075471176
  %1071 = xor i64 %1064, %1070
  %1072 = sub i64 5487137525590930912, %821
  %1073 = xor i64 %1067, %1072
  %1074 = zext i64 %1071 to i128
  %1075 = zext i64 %1073 to i128
  %1076 = mul nuw i128 %1075, %1074
  %1077 = lshr i128 %1076, 64
  %1078 = xor i128 %1077, %1076
  %1079 = trunc i128 %1078 to i64
  %1080 = add i64 %1043, %1079
  %1081 = add i64 %1051, %1048
  %1082 = xor i64 %1080, %1081
  br label %1083

1083:                                             ; preds = %1041, %953
  %1084 = phi i64 [ %1069, %1041 ], [ %954, %953 ]
  %1085 = phi i64 [ %1082, %1041 ], [ 0, %953 ]
  %1086 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %1087 = getelementptr inbounds i8, ptr %1086, i64 -16
  %1088 = load i64, ptr %823, align 1, !noalias !88
  %1089 = tail call noundef i64 @llvm.bswap.i64(i64 %1088)
  %1090 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %1091 = load i64, ptr %1090, align 1, !noalias !88
  %1092 = tail call noundef i64 @llvm.bswap.i64(i64 %1091)
  %1093 = add i64 %821, -4734510112055689544
  %1094 = xor i64 %1089, %1093
  %1095 = sub i64 2066345149520216444, %821
  %1096 = xor i64 %1092, %1095
  %1097 = zext i64 %1094 to i128
  %1098 = zext i64 %1096 to i128
  %1099 = mul nuw i128 %1098, %1097
  %1100 = lshr i128 %1099, 64
  %1101 = xor i128 %1100, %1099
  %1102 = trunc i128 %1101 to i64
  %1103 = add i64 %1084, %1102
  %1104 = load i64, ptr %1087, align 1, !noalias !88
  %1105 = tail call noundef i64 @llvm.bswap.i64(i64 %1104)
  %1106 = getelementptr inbounds i8, ptr %1086, i64 -8
  %1107 = load i64, ptr %1106, align 1, !noalias !88
  %1108 = tail call noundef i64 @llvm.bswap.i64(i64 %1107)
  %1109 = add i64 %1108, %1105
  %1110 = xor i64 %1103, %1109
  %1111 = add i64 %821, -2623469361688619810
  %1112 = xor i64 %1105, %1111
  %1113 = sub i64 2262974939099578482, %821
  %1114 = xor i64 %1108, %1113
  %1115 = zext i64 %1112 to i128
  %1116 = zext i64 %1114 to i128
  %1117 = mul nuw i128 %1116, %1115
  %1118 = lshr i128 %1117, 64
  %1119 = xor i128 %1118, %1117
  %1120 = trunc i128 %1119 to i64
  %1121 = add i64 %1085, %1120
  %1122 = add i64 %1092, %1089
  %1123 = xor i64 %1121, %1122
  %1124 = add i64 %1123, %1110
  %1125 = mul i64 %1110, -7046029288634856825
  %1126 = mul i64 %1123, -8796714831421723037
  %1127 = sub i64 %5, %821
  %1128 = mul i64 %1127, -4417276706812531889
  %1129 = add i64 %1125, %1128
  %1130 = add i64 %1129, %1126
  %1131 = lshr i64 %1124, 37
  %1132 = xor i64 %1131, %1124
  %1133 = mul i64 %1132, 1609587929392839161
  %1134 = lshr i64 %1133, 32
  %1135 = xor i64 %1134, %1133
  store i64 %1135, ptr %0, align 8, !alias.scope !104
  %1136 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1137 = lshr i64 %1130, 37
  %1138 = xor i64 %1137, %1130
  %1139 = mul i64 %1138, 1609587929392839161
  %1140 = lshr i64 %1139, 32
  %1141 = xor i64 %1140, %1139
  %1142 = sub i64 0, %1141
  store i64 %1142, ptr %1136, align 8, !alias.scope !104
  br label %1501

1143:                                             ; preds = %951
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull readonly %823, i64 noundef %5, ptr noundef nonnull @kSecret, i64 noundef %821)
  br label %1501

1144:                                             ; preds = %819
  %1145 = getelementptr inbounds nuw i8, ptr %1, i64 560
  %1146 = load ptr, ptr %1145, align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %1147 = icmp samesign ult i64 %5, 17
  br i1 %1147, label %1148, label %1278

1148:                                             ; preds = %1144
  %1149 = icmp samesign ugt i64 %5, 8
  br i1 %1149, label %1150, label %1192

1150:                                             ; preds = %1148
  %1151 = load i64, ptr %823, align 1, !noalias !107
  %1152 = load i64, ptr %1146, align 1, !noalias !107
  %1153 = xor i64 %1152, %1151
  %1154 = tail call i64 @llvm.bswap.i64(i64 %1153)
  %1155 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %1156 = getelementptr inbounds i8, ptr %1155, i64 -8
  %1157 = load i64, ptr %1156, align 1, !noalias !107
  %1158 = getelementptr inbounds nuw i8, ptr %1146, i64 8
  %1159 = load i64, ptr %1158, align 1, !noalias !107
  %1160 = xor i64 %1159, %1157
  %1161 = tail call i64 @llvm.bswap.i64(i64 %1160)
  %1162 = xor i64 %1161, %1154
  %1163 = zext i64 %1162 to i128
  %1164 = mul nuw i128 %1163, 11400714785074694791
  %1165 = trunc i128 %1164 to i64
  %1166 = lshr i128 %1164, 64
  %1167 = trunc nuw i128 %1166 to i64
  %1168 = mul nuw nsw i64 %5, 374761393
  %1169 = add i64 %1168, %1165
  %1170 = mul i64 %1161, -7046029288634856825
  %1171 = add i64 %1170, %1167
  %1172 = lshr i64 %1171, 32
  %1173 = xor i64 %1172, %1169
  %1174 = zext i64 %1173 to i128
  %1175 = mul nuw i128 %1174, 14029467366897019727
  %1176 = trunc i128 %1175 to i64
  %1177 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1178 = lshr i128 %1175, 64
  %1179 = trunc nuw i128 %1178 to i64
  %1180 = mul i64 %1171, -4417276706812531889
  %1181 = add i64 %1180, %1179
  %1182 = lshr i64 %1176, 37
  %1183 = xor i64 %1182, %1176
  %1184 = mul i64 %1183, 1609587929392839161
  %1185 = lshr i64 %1184, 32
  %1186 = xor i64 %1185, %1184
  store i64 %1186, ptr %0, align 8, !alias.scope !110
  %1187 = lshr i64 %1181, 37
  %1188 = xor i64 %1187, %1181
  %1189 = mul i64 %1188, 1609587929392839161
  %1190 = lshr i64 %1189, 32
  %1191 = xor i64 %1190, %1189
  store i64 %1191, ptr %1177, align 8, !alias.scope !110
  br label %1501

1192:                                             ; preds = %1148
  %1193 = icmp samesign ugt i64 %5, 3
  br i1 %1193, label %1194, label %1235

1194:                                             ; preds = %1192
  %1195 = load i32, ptr %823, align 1, !noalias !107
  %1196 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %1197 = getelementptr inbounds i8, ptr %1196, i64 -4
  %1198 = load i32, ptr %1197, align 1, !noalias !107
  %1199 = zext i32 %1198 to i64
  %1200 = zext i32 %1195 to i64
  %1201 = shl nuw i64 %1200, 32
  %1202 = or disjoint i64 %1201, %1199
  %1203 = load i64, ptr %1146, align 1, !noalias !107
  %1204 = xor i64 %1202, %1203
  %1205 = tail call i64 @llvm.bswap.i64(i64 %1204)
  %1206 = getelementptr inbounds nuw i8, ptr %1146, i64 8
  %1207 = load i64, ptr %1206, align 1, !noalias !107
  %1208 = tail call noundef i64 @llvm.bswap.i64(i64 %1207)
  %1209 = xor i64 %1208, %1202
  %1210 = lshr i64 %1205, 51
  %1211 = xor i64 %1210, %1205
  %1212 = mul i64 %1211, 2654435761
  %1213 = add i64 %1212, %5
  %1214 = lshr i64 %1213, 47
  %1215 = xor i64 %1214, %1213
  %1216 = mul i64 %1215, -4417276706812531889
  %1217 = lshr i64 %1209, 47
  %1218 = xor i64 %1217, %1209
  %1219 = mul i64 %1218, -7046029288634856825
  %1220 = sub i64 %1219, %5
  %1221 = lshr i64 %1220, 43
  %1222 = xor i64 %1221, %1220
  %1223 = mul i64 %1222, -8796714831421723037
  %1224 = lshr i64 %1216, 37
  %1225 = xor i64 %1224, %1216
  %1226 = mul i64 %1225, 1609587929392839161
  %1227 = lshr i64 %1226, 32
  %1228 = xor i64 %1227, %1226
  store i64 %1228, ptr %0, align 8, !alias.scope !113
  %1229 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1230 = lshr i64 %1223, 37
  %1231 = xor i64 %1230, %1223
  %1232 = mul i64 %1231, 1609587929392839161
  %1233 = lshr i64 %1232, 32
  %1234 = xor i64 %1233, %1232
  store i64 %1234, ptr %1229, align 8, !alias.scope !113
  br label %1501

1235:                                             ; preds = %1192
  %1236 = icmp eq i64 %5, 0
  br i1 %1236, label %1277, label %1237

1237:                                             ; preds = %1235
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %1238 = load i8, ptr %823, align 1, !noalias !119
  %1239 = lshr i64 %5, 1
  %1240 = getelementptr inbounds nuw i8, ptr %823, i64 %1239
  %1241 = load i8, ptr %1240, align 1, !noalias !119
  %1242 = getelementptr i8, ptr %823, i64 %5
  %1243 = getelementptr i8, ptr %1242, i64 -1
  %1244 = load i8, ptr %1243, align 1, !noalias !119
  %1245 = zext i8 %1238 to i32
  %1246 = zext i8 %1241 to i32
  %1247 = shl nuw nsw i32 %1246, 8
  %1248 = or disjoint i32 %1247, %1245
  %1249 = zext i8 %1244 to i32
  %1250 = shl nuw nsw i32 %1249, 16
  %1251 = or disjoint i32 %1248, %1250
  %1252 = trunc nuw nsw i64 %5 to i32
  %1253 = shl nuw nsw i32 %1252, 24
  %1254 = or disjoint i32 %1251, %1253
  %1255 = load i32, ptr %1146, align 1, !noalias !107
  %1256 = tail call noundef i32 @llvm.bswap.i32(i32 %1255)
  %1257 = xor i32 %1254, %1256
  %1258 = zext i32 %1257 to i64
  %1259 = getelementptr inbounds nuw i8, ptr %1146, i64 4
  %1260 = load i32, ptr %1259, align 1, !noalias !107
  %1261 = xor i32 %1254, %1260
  %1262 = tail call i32 @llvm.bswap.i32(i32 %1261)
  %1263 = zext i32 %1262 to i64
  %1264 = mul i64 %1258, -7046029288634856825
  %1265 = mul i64 %1263, 2870177450012600261
  %1266 = lshr i64 %1264, 37
  %1267 = xor i64 %1266, %1264
  %1268 = mul i64 %1267, 1609587929392839161
  %1269 = lshr i64 %1268, 32
  %1270 = xor i64 %1269, %1268
  store i64 %1270, ptr %0, align 8, !alias.scope !119
  %1271 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1272 = lshr i64 %1265, 37
  %1273 = xor i64 %1272, %1265
  %1274 = mul i64 %1273, 1609587929392839161
  %1275 = lshr i64 %1274, 32
  %1276 = xor i64 %1275, %1274
  store i64 %1276, ptr %1271, align 8, !alias.scope !119
  br label %1501

1277:                                             ; preds = %1235
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !120
  br label %1501

1278:                                             ; preds = %1144
  %1279 = icmp samesign ult i64 %5, 129
  br i1 %1279, label %1280, label %1500

1280:                                             ; preds = %1278
  %1281 = mul i64 %5, -7046029288634856825
  %1282 = icmp samesign ugt i64 %5, 32
  br i1 %1282, label %1283, label %1434

1283:                                             ; preds = %1280
  %1284 = icmp samesign ugt i64 %5, 64
  br i1 %1284, label %1285, label %1384

1285:                                             ; preds = %1283
  %1286 = icmp samesign ugt i64 %5, 96
  br i1 %1286, label %1287, label %1334

1287:                                             ; preds = %1285
  %1288 = getelementptr inbounds nuw i8, ptr %1, i64 304
  %1289 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %1290 = getelementptr inbounds i8, ptr %1289, i64 -64
  %1291 = getelementptr inbounds nuw i8, ptr %1146, i64 96
  %1292 = load i64, ptr %1288, align 1, !noalias !107
  %1293 = tail call noundef i64 @llvm.bswap.i64(i64 %1292)
  %1294 = getelementptr inbounds nuw i8, ptr %1, i64 312
  %1295 = load i64, ptr %1294, align 1, !noalias !107
  %1296 = tail call noundef i64 @llvm.bswap.i64(i64 %1295)
  %1297 = load i64, ptr %1291, align 1, !noalias !107
  %1298 = tail call noundef i64 @llvm.bswap.i64(i64 %1297)
  %1299 = xor i64 %1298, %1293
  %1300 = getelementptr inbounds nuw i8, ptr %1146, i64 104
  %1301 = load i64, ptr %1300, align 1, !noalias !107
  %1302 = tail call noundef i64 @llvm.bswap.i64(i64 %1301)
  %1303 = xor i64 %1302, %1296
  %1304 = zext i64 %1299 to i128
  %1305 = zext i64 %1303 to i128
  %1306 = mul nuw i128 %1305, %1304
  %1307 = lshr i128 %1306, 64
  %1308 = xor i128 %1307, %1306
  %1309 = trunc i128 %1308 to i64
  %1310 = add i64 %1281, %1309
  %1311 = load i64, ptr %1290, align 1, !noalias !107
  %1312 = tail call noundef i64 @llvm.bswap.i64(i64 %1311)
  %1313 = getelementptr inbounds i8, ptr %1289, i64 -56
  %1314 = load i64, ptr %1313, align 1, !noalias !107
  %1315 = tail call noundef i64 @llvm.bswap.i64(i64 %1314)
  %1316 = add i64 %1315, %1312
  %1317 = xor i64 %1310, %1316
  %1318 = getelementptr inbounds nuw i8, ptr %1146, i64 112
  %1319 = load i64, ptr %1318, align 1, !noalias !107
  %1320 = tail call noundef i64 @llvm.bswap.i64(i64 %1319)
  %1321 = xor i64 %1320, %1312
  %1322 = getelementptr inbounds nuw i8, ptr %1146, i64 120
  %1323 = load i64, ptr %1322, align 1, !noalias !107
  %1324 = tail call noundef i64 @llvm.bswap.i64(i64 %1323)
  %1325 = xor i64 %1324, %1315
  %1326 = zext i64 %1321 to i128
  %1327 = zext i64 %1325 to i128
  %1328 = mul nuw i128 %1327, %1326
  %1329 = lshr i128 %1328, 64
  %1330 = xor i128 %1329, %1328
  %1331 = trunc i128 %1330 to i64
  %1332 = add i64 %1296, %1293
  %1333 = xor i64 %1332, %1331
  br label %1334

1334:                                             ; preds = %1287, %1285
  %1335 = phi i64 [ %1317, %1287 ], [ %1281, %1285 ]
  %1336 = phi i64 [ %1333, %1287 ], [ 0, %1285 ]
  %1337 = getelementptr inbounds nuw i8, ptr %1, i64 288
  %1338 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %1339 = getelementptr inbounds i8, ptr %1338, i64 -48
  %1340 = getelementptr inbounds nuw i8, ptr %1146, i64 64
  %1341 = load i64, ptr %1337, align 1, !noalias !107
  %1342 = tail call noundef i64 @llvm.bswap.i64(i64 %1341)
  %1343 = getelementptr inbounds nuw i8, ptr %1, i64 296
  %1344 = load i64, ptr %1343, align 1, !noalias !107
  %1345 = tail call noundef i64 @llvm.bswap.i64(i64 %1344)
  %1346 = load i64, ptr %1340, align 1, !noalias !107
  %1347 = tail call noundef i64 @llvm.bswap.i64(i64 %1346)
  %1348 = xor i64 %1347, %1342
  %1349 = getelementptr inbounds nuw i8, ptr %1146, i64 72
  %1350 = load i64, ptr %1349, align 1, !noalias !107
  %1351 = tail call noundef i64 @llvm.bswap.i64(i64 %1350)
  %1352 = xor i64 %1351, %1345
  %1353 = zext i64 %1348 to i128
  %1354 = zext i64 %1352 to i128
  %1355 = mul nuw i128 %1354, %1353
  %1356 = lshr i128 %1355, 64
  %1357 = xor i128 %1356, %1355
  %1358 = trunc i128 %1357 to i64
  %1359 = add i64 %1335, %1358
  %1360 = load i64, ptr %1339, align 1, !noalias !107
  %1361 = tail call noundef i64 @llvm.bswap.i64(i64 %1360)
  %1362 = getelementptr inbounds i8, ptr %1338, i64 -40
  %1363 = load i64, ptr %1362, align 1, !noalias !107
  %1364 = tail call noundef i64 @llvm.bswap.i64(i64 %1363)
  %1365 = add i64 %1364, %1361
  %1366 = xor i64 %1359, %1365
  %1367 = getelementptr inbounds nuw i8, ptr %1146, i64 80
  %1368 = load i64, ptr %1367, align 1, !noalias !107
  %1369 = tail call noundef i64 @llvm.bswap.i64(i64 %1368)
  %1370 = xor i64 %1369, %1361
  %1371 = getelementptr inbounds nuw i8, ptr %1146, i64 88
  %1372 = load i64, ptr %1371, align 1, !noalias !107
  %1373 = tail call noundef i64 @llvm.bswap.i64(i64 %1372)
  %1374 = xor i64 %1373, %1364
  %1375 = zext i64 %1370 to i128
  %1376 = zext i64 %1374 to i128
  %1377 = mul nuw i128 %1376, %1375
  %1378 = lshr i128 %1377, 64
  %1379 = xor i128 %1378, %1377
  %1380 = trunc i128 %1379 to i64
  %1381 = add i64 %1336, %1380
  %1382 = add i64 %1345, %1342
  %1383 = xor i64 %1381, %1382
  br label %1384

1384:                                             ; preds = %1334, %1283
  %1385 = phi i64 [ %1366, %1334 ], [ %1281, %1283 ]
  %1386 = phi i64 [ %1383, %1334 ], [ 0, %1283 ]
  %1387 = getelementptr inbounds nuw i8, ptr %1, i64 272
  %1388 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %1389 = getelementptr inbounds i8, ptr %1388, i64 -32
  %1390 = getelementptr inbounds nuw i8, ptr %1146, i64 32
  %1391 = load i64, ptr %1387, align 1, !noalias !107
  %1392 = tail call noundef i64 @llvm.bswap.i64(i64 %1391)
  %1393 = getelementptr inbounds nuw i8, ptr %1, i64 280
  %1394 = load i64, ptr %1393, align 1, !noalias !107
  %1395 = tail call noundef i64 @llvm.bswap.i64(i64 %1394)
  %1396 = load i64, ptr %1390, align 1, !noalias !107
  %1397 = tail call noundef i64 @llvm.bswap.i64(i64 %1396)
  %1398 = xor i64 %1397, %1392
  %1399 = getelementptr inbounds nuw i8, ptr %1146, i64 40
  %1400 = load i64, ptr %1399, align 1, !noalias !107
  %1401 = tail call noundef i64 @llvm.bswap.i64(i64 %1400)
  %1402 = xor i64 %1401, %1395
  %1403 = zext i64 %1398 to i128
  %1404 = zext i64 %1402 to i128
  %1405 = mul nuw i128 %1404, %1403
  %1406 = lshr i128 %1405, 64
  %1407 = xor i128 %1406, %1405
  %1408 = trunc i128 %1407 to i64
  %1409 = add i64 %1385, %1408
  %1410 = load i64, ptr %1389, align 1, !noalias !107
  %1411 = tail call noundef i64 @llvm.bswap.i64(i64 %1410)
  %1412 = getelementptr inbounds i8, ptr %1388, i64 -24
  %1413 = load i64, ptr %1412, align 1, !noalias !107
  %1414 = tail call noundef i64 @llvm.bswap.i64(i64 %1413)
  %1415 = add i64 %1414, %1411
  %1416 = xor i64 %1409, %1415
  %1417 = getelementptr inbounds nuw i8, ptr %1146, i64 48
  %1418 = load i64, ptr %1417, align 1, !noalias !107
  %1419 = tail call noundef i64 @llvm.bswap.i64(i64 %1418)
  %1420 = xor i64 %1419, %1411
  %1421 = getelementptr inbounds nuw i8, ptr %1146, i64 56
  %1422 = load i64, ptr %1421, align 1, !noalias !107
  %1423 = tail call noundef i64 @llvm.bswap.i64(i64 %1422)
  %1424 = xor i64 %1423, %1414
  %1425 = zext i64 %1420 to i128
  %1426 = zext i64 %1424 to i128
  %1427 = mul nuw i128 %1426, %1425
  %1428 = lshr i128 %1427, 64
  %1429 = xor i128 %1428, %1427
  %1430 = trunc i128 %1429 to i64
  %1431 = add i64 %1386, %1430
  %1432 = add i64 %1395, %1392
  %1433 = xor i64 %1431, %1432
  br label %1434

1434:                                             ; preds = %1384, %1280
  %1435 = phi i64 [ %1416, %1384 ], [ %1281, %1280 ]
  %1436 = phi i64 [ %1433, %1384 ], [ 0, %1280 ]
  %1437 = getelementptr inbounds nuw i8, ptr %823, i64 %5
  %1438 = getelementptr inbounds i8, ptr %1437, i64 -16
  %1439 = load i64, ptr %823, align 1, !noalias !107
  %1440 = tail call noundef i64 @llvm.bswap.i64(i64 %1439)
  %1441 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %1442 = load i64, ptr %1441, align 1, !noalias !107
  %1443 = tail call noundef i64 @llvm.bswap.i64(i64 %1442)
  %1444 = load i64, ptr %1146, align 1, !noalias !107
  %1445 = tail call noundef i64 @llvm.bswap.i64(i64 %1444)
  %1446 = xor i64 %1445, %1440
  %1447 = getelementptr inbounds nuw i8, ptr %1146, i64 8
  %1448 = load i64, ptr %1447, align 1, !noalias !107
  %1449 = tail call noundef i64 @llvm.bswap.i64(i64 %1448)
  %1450 = xor i64 %1449, %1443
  %1451 = zext i64 %1446 to i128
  %1452 = zext i64 %1450 to i128
  %1453 = mul nuw i128 %1452, %1451
  %1454 = lshr i128 %1453, 64
  %1455 = xor i128 %1454, %1453
  %1456 = trunc i128 %1455 to i64
  %1457 = add i64 %1435, %1456
  %1458 = load i64, ptr %1438, align 1, !noalias !107
  %1459 = tail call noundef i64 @llvm.bswap.i64(i64 %1458)
  %1460 = getelementptr inbounds i8, ptr %1437, i64 -8
  %1461 = load i64, ptr %1460, align 1, !noalias !107
  %1462 = tail call noundef i64 @llvm.bswap.i64(i64 %1461)
  %1463 = add i64 %1462, %1459
  %1464 = xor i64 %1457, %1463
  %1465 = getelementptr inbounds nuw i8, ptr %1146, i64 16
  %1466 = load i64, ptr %1465, align 1, !noalias !107
  %1467 = tail call noundef i64 @llvm.bswap.i64(i64 %1466)
  %1468 = xor i64 %1467, %1459
  %1469 = getelementptr inbounds nuw i8, ptr %1146, i64 24
  %1470 = load i64, ptr %1469, align 1, !noalias !107
  %1471 = tail call noundef i64 @llvm.bswap.i64(i64 %1470)
  %1472 = xor i64 %1471, %1462
  %1473 = zext i64 %1468 to i128
  %1474 = zext i64 %1472 to i128
  %1475 = mul nuw i128 %1474, %1473
  %1476 = lshr i128 %1475, 64
  %1477 = xor i128 %1476, %1475
  %1478 = trunc i128 %1477 to i64
  %1479 = add i64 %1436, %1478
  %1480 = add i64 %1443, %1440
  %1481 = xor i64 %1479, %1480
  %1482 = add i64 %1481, %1464
  %1483 = mul i64 %1464, -7046029288634856825
  %1484 = mul i64 %1481, -8796714831421723037
  %1485 = mul i64 %5, -4417276706812531889
  %1486 = add i64 %1483, %1485
  %1487 = add i64 %1486, %1484
  %1488 = lshr i64 %1482, 37
  %1489 = xor i64 %1488, %1482
  %1490 = mul i64 %1489, 1609587929392839161
  %1491 = lshr i64 %1490, 32
  %1492 = xor i64 %1491, %1490
  store i64 %1492, ptr %0, align 8, !alias.scope !123
  %1493 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1494 = lshr i64 %1487, 37
  %1495 = xor i64 %1494, %1487
  %1496 = mul i64 %1495, 1609587929392839161
  %1497 = lshr i64 %1496, 32
  %1498 = xor i64 %1497, %1496
  %1499 = sub i64 0, %1498
  store i64 %1499, ptr %1493, align 8, !alias.scope !123
  br label %1501

1500:                                             ; preds = %1278
  tail call fastcc void @XXH3_len_129to240_128b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull readonly %823, i64 noundef %5, ptr noundef %1146, i64 noundef 0)
  br label %1501

1501:                                             ; preds = %1500, %1434, %1277, %1237, %1194, %1150, %1143, %1083, %950, %912, %871, %828, %670
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local signext range(i32 0, 2) i32 @XXH128_isEqual([2 x i64] %0, [2 x i64] %1) local_unnamed_addr #19 {
  %3 = alloca %struct.XXH128_hash_t, align 8
  %4 = alloca %struct.XXH128_hash_t, align 8
  %5 = extractvalue [2 x i64] %0, 0
  store i64 %5, ptr %3, align 8
  %6 = extractvalue [2 x i64] %0, 1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %6, ptr %7, align 8
  %8 = extractvalue [2 x i64] %1, 0
  store i64 %8, ptr %4, align 8
  %9 = extractvalue [2 x i64] %1, 1
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %9, ptr %10, align 8
  %11 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %3, ptr noundef nonnull dereferenceable(16) %4, i64 16)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext range(i32 -1, 2) i32 @XXH128_cmp(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH128_canonicalFromHash(ptr noundef writeonly initializes((0, 16)) %0, [2 x i64] %1) local_unnamed_addr #6 {
  %3 = extractvalue [2 x i64] %1, 1
  %4 = extractvalue [2 x i64] %1, 0
  store i64 %3, ptr %0, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %5, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH128_hashFromCanonical(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 8 initializes((0, 16)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = load i64, ptr %1, align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 1
  store i64 %6, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i32 @target_oneshot(ptr noundef %0, i32 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  %6 = add i32 %1, 606290984
  %7 = add i32 %1, -2048144777
  %8 = add i32 %1, 1640531535
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br i1 %5, label %12, label %44

12:                                               ; preds = %2
  %13 = load i32, ptr %9, align 4
  %14 = tail call noundef i32 @llvm.bswap.i32(i32 %13)
  %15 = mul i32 %14, -2048144777
  %16 = add i32 %8, %15
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 13)
  %18 = mul i32 %17, -1640531535
  %19 = load i32, ptr %10, align 4
  %20 = tail call noundef i32 @llvm.bswap.i32(i32 %19)
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = load i32, ptr %11, align 4
  %26 = tail call noundef i32 @llvm.bswap.i32(i32 %25)
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %7, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = load i32, ptr %0, align 4
  %32 = tail call noundef i32 @llvm.bswap.i32(i32 %31)
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %6, %33
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 1)
  %38 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 7)
  %39 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 12)
  %40 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 18)
  %41 = add i32 %39, %40
  %42 = add i32 %41, %38
  %43 = add i32 %42, %37
  br label %76

44:                                               ; preds = %2
  %45 = load i32, ptr %9, align 1
  %46 = tail call noundef i32 @llvm.bswap.i32(i32 %45)
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %8, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = load i32, ptr %10, align 1
  %52 = tail call noundef i32 @llvm.bswap.i32(i32 %51)
  %53 = mul i32 %52, -2048144777
  %54 = add i32 %53, %1
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 13)
  %56 = mul i32 %55, -1640531535
  %57 = load i32, ptr %11, align 1
  %58 = tail call noundef i32 @llvm.bswap.i32(i32 %57)
  %59 = mul i32 %58, -2048144777
  %60 = add i32 %7, %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 13)
  %62 = mul i32 %61, -1640531535
  %63 = load i32, ptr %0, align 1
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = mul i32 %64, -2048144777
  %66 = add i32 %6, %65
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 13)
  %68 = mul i32 %67, -1640531535
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 1)
  %70 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 7)
  %71 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 12)
  %72 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 18)
  %73 = add i32 %71, %72
  %74 = add i32 %73, %70
  %75 = add i32 %74, %69
  br label %76

76:                                               ; preds = %12, %44
  %77 = phi i32 [ %43, %12 ], [ %75, %44 ]
  %78 = add i32 %77, 16
  %79 = lshr i32 %78, 15
  %80 = xor i32 %79, %78
  %81 = mul i32 %80, -2048144777
  %82 = lshr i32 %81, 13
  %83 = xor i32 %82, %81
  %84 = mul i32 %83, -1028477379
  %85 = lshr i32 %84, 16
  %86 = xor i32 %85, %84
  ret i32 %86
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #22

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare signext i32 @bcmp(ptr, ptr, i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ucmp.i32.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #13 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #16 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #17 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #18 = { nofree norecurse nosync nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { allocsize(0) }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
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
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_len_9to16_128b: argument 0"}
!16 = distinct !{!16, !"XXH3_len_9to16_128b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_len_4to8_128b: argument 0"}
!19 = distinct !{!19, !"XXH3_len_4to8_128b"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_len_1to3_128b: argument 0"}
!22 = distinct !{!22, !"XXH3_len_1to3_128b"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH3_len_0to16_128b: argument 0"}
!25 = distinct !{!25, !"XXH3_len_0to16_128b"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_len_17to128_128b: argument 0"}
!28 = distinct !{!28, !"XXH3_len_17to128_128b"}
!29 = distinct !{!29, !6}
!30 = !{!31}
!31 = distinct !{!31, !32, !"XXH3_hashLong_128b_internal: argument 0"}
!32 = distinct !{!32, !"XXH3_hashLong_128b_internal"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH3_len_9to16_128b: argument 0"}
!35 = distinct !{!35, !"XXH3_len_9to16_128b"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"XXH3_len_4to8_128b: argument 0"}
!38 = distinct !{!38, !"XXH3_len_4to8_128b"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"XXH3_len_1to3_128b: argument 0"}
!41 = distinct !{!41, !"XXH3_len_1to3_128b"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"XXH3_len_0to16_128b: argument 0"}
!44 = distinct !{!44, !"XXH3_len_0to16_128b"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"XXH3_len_17to128_128b: argument 0"}
!47 = distinct !{!47, !"XXH3_len_17to128_128b"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"XXH3_hashLong_128b_internal: argument 0"}
!50 = distinct !{!50, !"XXH3_hashLong_128b_internal"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"XXH3_len_9to16_128b: argument 0"}
!53 = distinct !{!53, !"XXH3_len_9to16_128b"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"XXH3_len_4to8_128b: argument 0"}
!56 = distinct !{!56, !"XXH3_len_4to8_128b"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"XXH3_len_1to3_128b: argument 0"}
!59 = distinct !{!59, !"XXH3_len_1to3_128b"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"XXH3_len_0to16_128b: argument 0"}
!62 = distinct !{!62, !"XXH3_len_0to16_128b"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"XXH3_len_17to128_128b: argument 0"}
!65 = distinct !{!65, !"XXH3_len_17to128_128b"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"XXH3_hashLong_128b_internal: argument 0"}
!68 = distinct !{!68, !"XXH3_hashLong_128b_internal"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"XXH3_128bits_withSeed: argument 0"}
!71 = distinct !{!71, !"XXH3_128bits_withSeed"}
!72 = !{!73, !70}
!73 = distinct !{!73, !74, !"XXH3_len_9to16_128b: argument 0"}
!74 = distinct !{!74, !"XXH3_len_9to16_128b"}
!75 = !{!76, !70}
!76 = distinct !{!76, !77, !"XXH3_len_4to8_128b: argument 0"}
!77 = distinct !{!77, !"XXH3_len_4to8_128b"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"XXH3_len_1to3_128b: argument 0"}
!80 = distinct !{!80, !"XXH3_len_1to3_128b"}
!81 = !{!79, !70}
!82 = !{!83, !70}
!83 = distinct !{!83, !84, !"XXH3_len_0to16_128b: argument 0"}
!84 = distinct !{!84, !"XXH3_len_0to16_128b"}
!85 = !{!86, !70}
!86 = distinct !{!86, !87, !"XXH3_len_17to128_128b: argument 0"}
!87 = distinct !{!87, !"XXH3_len_17to128_128b"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"XXH3_128bits_withSeed: argument 0"}
!90 = distinct !{!90, !"XXH3_128bits_withSeed"}
!91 = !{!92, !89}
!92 = distinct !{!92, !93, !"XXH3_len_9to16_128b: argument 0"}
!93 = distinct !{!93, !"XXH3_len_9to16_128b"}
!94 = !{!95, !89}
!95 = distinct !{!95, !96, !"XXH3_len_4to8_128b: argument 0"}
!96 = distinct !{!96, !"XXH3_len_4to8_128b"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"XXH3_len_1to3_128b: argument 0"}
!99 = distinct !{!99, !"XXH3_len_1to3_128b"}
!100 = !{!98, !89}
!101 = !{!102, !89}
!102 = distinct !{!102, !103, !"XXH3_len_0to16_128b: argument 0"}
!103 = distinct !{!103, !"XXH3_len_0to16_128b"}
!104 = !{!105, !89}
!105 = distinct !{!105, !106, !"XXH3_len_17to128_128b: argument 0"}
!106 = distinct !{!106, !"XXH3_len_17to128_128b"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"XXH3_128bits_withSecret: argument 0"}
!109 = distinct !{!109, !"XXH3_128bits_withSecret"}
!110 = !{!111, !108}
!111 = distinct !{!111, !112, !"XXH3_len_9to16_128b: argument 0"}
!112 = distinct !{!112, !"XXH3_len_9to16_128b"}
!113 = !{!114, !108}
!114 = distinct !{!114, !115, !"XXH3_len_4to8_128b: argument 0"}
!115 = distinct !{!115, !"XXH3_len_4to8_128b"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"XXH3_len_1to3_128b: argument 0"}
!118 = distinct !{!118, !"XXH3_len_1to3_128b"}
!119 = !{!117, !108}
!120 = !{!121, !108}
!121 = distinct !{!121, !122, !"XXH3_len_0to16_128b: argument 0"}
!122 = distinct !{!122, !"XXH3_len_0to16_128b"}
!123 = !{!124, !108}
!124 = distinct !{!124, !125, !"XXH3_len_17to128_128b: argument 0"}
!125 = distinct !{!125, !"XXH3_len_17to128_128b"}
