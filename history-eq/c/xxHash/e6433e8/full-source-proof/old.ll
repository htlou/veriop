; ModuleID = 'xxhash.c'
source_filename = "xxhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i32 }
%struct.XXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.XXH64_state_s = type { i64, i64, i64, i64, i64, [4 x i64], i32, [2 x i32] }
%struct.XXH128_hash_t = type { i64, i64 }

@kKey = internal constant [48 x i32] [i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514, i32 941223750, i32 -1445024552, i32 -1459980737, i32 -476302273, i32 -102974521, i32 -955560163, i32 -1974345653, i32 -843818703, i32 -929071415, i32 -646417564, i32 -356143997, i32 886303683, i32 -981360385, i32 -99392533, i32 386784593, i32 -1208952247, i32 -753511130, i32 701786270, i32 722910808, i32 2101846524, i32 -1879525167, i32 2060464590, i32 1170946703, i32 -1793719256, i32 -1344799798, i32 -1152696194], align 64
@__const.XXH_isLittleEndian.one = private unnamed_addr constant %union.anon { i32 1 }, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"xxhash.c\00", align 1
@__PRETTY_FUNCTION__.XXH32_finalize = private unnamed_addr constant [76 x i8] c"U32 XXH32_finalize(U32, const void *, size_t, XXH_endianess, XXH_alignment)\00", align 1
@__PRETTY_FUNCTION__.XXH64_finalize = private unnamed_addr constant [76 x i8] c"U64 XXH64_finalize(U64, const void *, size_t, XXH_endianess, XXH_alignment)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH_versionNumber() #0 {
  ret i32 700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca ptr, align 8
  %30 = alloca i32, align 4
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca ptr, align 8
  %35 = alloca i32, align 4
  %36 = alloca ptr, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca ptr, align 8
  %40 = alloca i32, align 4
  %41 = alloca ptr, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca ptr, align 8
  %45 = alloca i64, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca ptr, align 8
  %50 = alloca ptr, align 8
  %51 = alloca i32, align 4
  %52 = alloca ptr, align 8
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca ptr, align 8
  %58 = alloca i64, align 8
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca ptr, align 8
  %63 = alloca ptr, align 8
  %64 = alloca i32, align 4
  %65 = alloca ptr, align 8
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca ptr, align 8
  %72 = alloca i64, align 8
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  store ptr %0, ptr %71, align 8
  store i64 %1, ptr %72, align 8
  store i32 %2, ptr %73, align 4
  %75 = call i32 @XXH_isLittleEndian()
  store i32 %75, ptr %74, align 4
  %76 = load i32, ptr %74, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %286

78:                                               ; preds = %3
  %79 = load ptr, ptr %71, align 8
  %80 = load i64, ptr %72, align 8
  %81 = load i32, ptr %73, align 4
  store ptr %79, ptr %44, align 8
  store i64 %80, ptr %45, align 8
  store i32 %81, ptr %46, align 4
  store i32 1, ptr %47, align 4
  store i32 1, ptr %48, align 4
  %82 = load ptr, ptr %44, align 8
  store ptr %82, ptr %49, align 8
  %83 = load ptr, ptr %49, align 8
  %84 = load i64, ptr %45, align 8
  %85 = getelementptr inbounds nuw i8, ptr %83, i64 %84
  store ptr %85, ptr %50, align 8
  %86 = load i64, ptr %45, align 8
  %87 = icmp uge i64 %86, 16
  br i1 %87, label %88, label %271

88:                                               ; preds = %78
  %89 = load ptr, ptr %50, align 8
  %90 = getelementptr inbounds i8, ptr %89, i64 -15
  store ptr %90, ptr %52, align 8
  %91 = load i32, ptr %46, align 4
  %92 = add i32 %91, -1640531535
  %93 = add i32 %92, -2048144777
  store i32 %93, ptr %53, align 4
  %94 = load i32, ptr %46, align 4
  %95 = add i32 %94, -2048144777
  store i32 %95, ptr %54, align 4
  %96 = load i32, ptr %46, align 4
  store i32 %96, ptr %55, align 4
  %97 = load i32, ptr %46, align 4
  %98 = sub i32 %97, -1640531535
  store i32 %98, ptr %56, align 4
  br label %99

99:                                               ; preds = %239, %88
  %100 = load i32, ptr %53, align 4
  %101 = load ptr, ptr %49, align 8
  %102 = load i32, ptr %47, align 4
  %103 = load i32, ptr %48, align 4
  store ptr %101, ptr %26, align 8
  store i32 %102, ptr %27, align 4
  store i32 %103, ptr %28, align 4
  %104 = load i32, ptr %28, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %119

106:                                              ; preds = %99
  %107 = load ptr, ptr %26, align 8
  store ptr %107, ptr %24, align 8
  %108 = call i32 @XXH_isLittleEndian()
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load ptr, ptr %24, align 8
  %112 = call i32 @XXH_read32(ptr noundef %111)
  br label %117

113:                                              ; preds = %106
  %114 = load ptr, ptr %24, align 8
  %115 = call i32 @XXH_read32(ptr noundef %114)
  %116 = call i32 @XXH_swap32(i32 noundef %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = phi i32 [ %112, %110 ], [ %116, %113 ]
  store i32 %118, ptr %25, align 4
  br label %131

119:                                              ; preds = %99
  %120 = load i32, ptr %27, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load ptr, ptr %26, align 8
  %124 = load i32, ptr %123, align 4
  br label %129

125:                                              ; preds = %119
  %126 = load ptr, ptr %26, align 8
  %127 = load i32, ptr %126, align 4
  %128 = call i32 @XXH_swap32(i32 noundef %127)
  br label %129

129:                                              ; preds = %125, %122
  %130 = phi i32 [ %124, %122 ], [ %128, %125 ]
  store i32 %130, ptr %25, align 4
  br label %131

131:                                              ; preds = %117, %129
  %132 = load i32, ptr %25, align 4
  %133 = call i32 @XXH32_round(i32 noundef %100, i32 noundef %132)
  store i32 %133, ptr %53, align 4
  %134 = load ptr, ptr %49, align 8
  %135 = getelementptr inbounds i8, ptr %134, i64 4
  store ptr %135, ptr %49, align 8
  %136 = load i32, ptr %54, align 4
  %137 = load ptr, ptr %49, align 8
  %138 = load i32, ptr %47, align 4
  %139 = load i32, ptr %48, align 4
  store ptr %137, ptr %31, align 8
  store i32 %138, ptr %32, align 4
  store i32 %139, ptr %33, align 4
  %140 = load i32, ptr %33, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %155

142:                                              ; preds = %131
  %143 = load ptr, ptr %31, align 8
  store ptr %143, ptr %29, align 8
  %144 = call i32 @XXH_isLittleEndian()
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load ptr, ptr %29, align 8
  %148 = call i32 @XXH_read32(ptr noundef %147)
  br label %153

149:                                              ; preds = %142
  %150 = load ptr, ptr %29, align 8
  %151 = call i32 @XXH_read32(ptr noundef %150)
  %152 = call i32 @XXH_swap32(i32 noundef %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = phi i32 [ %148, %146 ], [ %152, %149 ]
  store i32 %154, ptr %30, align 4
  br label %167

155:                                              ; preds = %131
  %156 = load i32, ptr %32, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load ptr, ptr %31, align 8
  %160 = load i32, ptr %159, align 4
  br label %165

161:                                              ; preds = %155
  %162 = load ptr, ptr %31, align 8
  %163 = load i32, ptr %162, align 4
  %164 = call i32 @XXH_swap32(i32 noundef %163)
  br label %165

165:                                              ; preds = %161, %158
  %166 = phi i32 [ %160, %158 ], [ %164, %161 ]
  store i32 %166, ptr %30, align 4
  br label %167

167:                                              ; preds = %153, %165
  %168 = load i32, ptr %30, align 4
  %169 = call i32 @XXH32_round(i32 noundef %136, i32 noundef %168)
  store i32 %169, ptr %54, align 4
  %170 = load ptr, ptr %49, align 8
  %171 = getelementptr inbounds i8, ptr %170, i64 4
  store ptr %171, ptr %49, align 8
  %172 = load i32, ptr %55, align 4
  %173 = load ptr, ptr %49, align 8
  %174 = load i32, ptr %47, align 4
  %175 = load i32, ptr %48, align 4
  store ptr %173, ptr %36, align 8
  store i32 %174, ptr %37, align 4
  store i32 %175, ptr %38, align 4
  %176 = load i32, ptr %38, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %191

178:                                              ; preds = %167
  %179 = load ptr, ptr %36, align 8
  store ptr %179, ptr %34, align 8
  %180 = call i32 @XXH_isLittleEndian()
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load ptr, ptr %34, align 8
  %184 = call i32 @XXH_read32(ptr noundef %183)
  br label %189

185:                                              ; preds = %178
  %186 = load ptr, ptr %34, align 8
  %187 = call i32 @XXH_read32(ptr noundef %186)
  %188 = call i32 @XXH_swap32(i32 noundef %187)
  br label %189

189:                                              ; preds = %185, %182
  %190 = phi i32 [ %184, %182 ], [ %188, %185 ]
  store i32 %190, ptr %35, align 4
  br label %203

191:                                              ; preds = %167
  %192 = load i32, ptr %37, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load ptr, ptr %36, align 8
  %196 = load i32, ptr %195, align 4
  br label %201

197:                                              ; preds = %191
  %198 = load ptr, ptr %36, align 8
  %199 = load i32, ptr %198, align 4
  %200 = call i32 @XXH_swap32(i32 noundef %199)
  br label %201

201:                                              ; preds = %197, %194
  %202 = phi i32 [ %196, %194 ], [ %200, %197 ]
  store i32 %202, ptr %35, align 4
  br label %203

203:                                              ; preds = %189, %201
  %204 = load i32, ptr %35, align 4
  %205 = call i32 @XXH32_round(i32 noundef %172, i32 noundef %204)
  store i32 %205, ptr %55, align 4
  %206 = load ptr, ptr %49, align 8
  %207 = getelementptr inbounds i8, ptr %206, i64 4
  store ptr %207, ptr %49, align 8
  %208 = load i32, ptr %56, align 4
  %209 = load ptr, ptr %49, align 8
  %210 = load i32, ptr %47, align 4
  %211 = load i32, ptr %48, align 4
  store ptr %209, ptr %41, align 8
  store i32 %210, ptr %42, align 4
  store i32 %211, ptr %43, align 4
  %212 = load i32, ptr %43, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %227

214:                                              ; preds = %203
  %215 = load ptr, ptr %41, align 8
  store ptr %215, ptr %39, align 8
  %216 = call i32 @XXH_isLittleEndian()
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load ptr, ptr %39, align 8
  %220 = call i32 @XXH_read32(ptr noundef %219)
  br label %225

221:                                              ; preds = %214
  %222 = load ptr, ptr %39, align 8
  %223 = call i32 @XXH_read32(ptr noundef %222)
  %224 = call i32 @XXH_swap32(i32 noundef %223)
  br label %225

225:                                              ; preds = %221, %218
  %226 = phi i32 [ %220, %218 ], [ %224, %221 ]
  store i32 %226, ptr %40, align 4
  br label %239

227:                                              ; preds = %203
  %228 = load i32, ptr %42, align 4
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load ptr, ptr %41, align 8
  %232 = load i32, ptr %231, align 4
  br label %237

233:                                              ; preds = %227
  %234 = load ptr, ptr %41, align 8
  %235 = load i32, ptr %234, align 4
  %236 = call i32 @XXH_swap32(i32 noundef %235)
  br label %237

237:                                              ; preds = %233, %230
  %238 = phi i32 [ %232, %230 ], [ %236, %233 ]
  store i32 %238, ptr %40, align 4
  br label %239

239:                                              ; preds = %225, %237
  %240 = load i32, ptr %40, align 4
  %241 = call i32 @XXH32_round(i32 noundef %208, i32 noundef %240)
  store i32 %241, ptr %56, align 4
  %242 = load ptr, ptr %49, align 8
  %243 = getelementptr inbounds i8, ptr %242, i64 4
  store ptr %243, ptr %49, align 8
  %244 = load ptr, ptr %49, align 8
  %245 = load ptr, ptr %52, align 8
  %246 = icmp ult ptr %244, %245
  br i1 %246, label %99, label %247

247:                                              ; preds = %239
  %248 = load i32, ptr %53, align 4
  %249 = shl i32 %248, 1
  %250 = load i32, ptr %53, align 4
  %251 = lshr i32 %250, 31
  %252 = or i32 %249, %251
  %253 = load i32, ptr %54, align 4
  %254 = shl i32 %253, 7
  %255 = load i32, ptr %54, align 4
  %256 = lshr i32 %255, 25
  %257 = or i32 %254, %256
  %258 = add i32 %252, %257
  %259 = load i32, ptr %55, align 4
  %260 = shl i32 %259, 12
  %261 = load i32, ptr %55, align 4
  %262 = lshr i32 %261, 20
  %263 = or i32 %260, %262
  %264 = add i32 %258, %263
  %265 = load i32, ptr %56, align 4
  %266 = shl i32 %265, 18
  %267 = load i32, ptr %56, align 4
  %268 = lshr i32 %267, 14
  %269 = or i32 %266, %268
  %270 = add i32 %264, %269
  store i32 %270, ptr %51, align 4
  br label %274

271:                                              ; preds = %78
  %272 = load i32, ptr %46, align 4
  %273 = add i32 %272, 374761393
  store i32 %273, ptr %51, align 4
  br label %274

274:                                              ; preds = %247, %271
  %275 = load i64, ptr %45, align 8
  %276 = trunc i64 %275 to i32
  %277 = load i32, ptr %51, align 4
  %278 = add i32 %277, %276
  store i32 %278, ptr %51, align 4
  %279 = load i32, ptr %51, align 4
  %280 = load ptr, ptr %49, align 8
  %281 = load i64, ptr %45, align 8
  %282 = and i64 %281, 15
  %283 = load i32, ptr %47, align 4
  %284 = load i32, ptr %48, align 4
  %285 = call i32 @XXH32_finalize(i32 noundef %279, ptr noundef %280, i64 noundef %282, i32 noundef %283, i32 noundef %284)
  store i32 %285, ptr %70, align 4
  br label %494

286:                                              ; preds = %3
  %287 = load ptr, ptr %71, align 8
  %288 = load i64, ptr %72, align 8
  %289 = load i32, ptr %73, align 4
  store ptr %287, ptr %57, align 8
  store i64 %288, ptr %58, align 8
  store i32 %289, ptr %59, align 4
  store i32 0, ptr %60, align 4
  store i32 1, ptr %61, align 4
  %290 = load ptr, ptr %57, align 8
  store ptr %290, ptr %62, align 8
  %291 = load ptr, ptr %62, align 8
  %292 = load i64, ptr %58, align 8
  %293 = getelementptr inbounds nuw i8, ptr %291, i64 %292
  store ptr %293, ptr %63, align 8
  %294 = load i64, ptr %58, align 8
  %295 = icmp uge i64 %294, 16
  br i1 %295, label %296, label %479

296:                                              ; preds = %286
  %297 = load ptr, ptr %63, align 8
  %298 = getelementptr inbounds i8, ptr %297, i64 -15
  store ptr %298, ptr %65, align 8
  %299 = load i32, ptr %59, align 4
  %300 = add i32 %299, -1640531535
  %301 = add i32 %300, -2048144777
  store i32 %301, ptr %66, align 4
  %302 = load i32, ptr %59, align 4
  %303 = add i32 %302, -2048144777
  store i32 %303, ptr %67, align 4
  %304 = load i32, ptr %59, align 4
  store i32 %304, ptr %68, align 4
  %305 = load i32, ptr %59, align 4
  %306 = sub i32 %305, -1640531535
  store i32 %306, ptr %69, align 4
  br label %307

307:                                              ; preds = %447, %296
  %308 = load i32, ptr %66, align 4
  %309 = load ptr, ptr %62, align 8
  %310 = load i32, ptr %60, align 4
  %311 = load i32, ptr %61, align 4
  store ptr %309, ptr %6, align 8
  store i32 %310, ptr %7, align 4
  store i32 %311, ptr %8, align 4
  %312 = load i32, ptr %8, align 4
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %314, label %327

314:                                              ; preds = %307
  %315 = load ptr, ptr %6, align 8
  store ptr %315, ptr %4, align 8
  %316 = call i32 @XXH_isLittleEndian()
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load ptr, ptr %4, align 8
  %320 = call i32 @XXH_read32(ptr noundef %319)
  br label %325

321:                                              ; preds = %314
  %322 = load ptr, ptr %4, align 8
  %323 = call i32 @XXH_read32(ptr noundef %322)
  %324 = call i32 @XXH_swap32(i32 noundef %323)
  br label %325

325:                                              ; preds = %321, %318
  %326 = phi i32 [ %320, %318 ], [ %324, %321 ]
  store i32 %326, ptr %5, align 4
  br label %339

327:                                              ; preds = %307
  %328 = load i32, ptr %7, align 4
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load ptr, ptr %6, align 8
  %332 = load i32, ptr %331, align 4
  br label %337

333:                                              ; preds = %327
  %334 = load ptr, ptr %6, align 8
  %335 = load i32, ptr %334, align 4
  %336 = call i32 @XXH_swap32(i32 noundef %335)
  br label %337

337:                                              ; preds = %333, %330
  %338 = phi i32 [ %332, %330 ], [ %336, %333 ]
  store i32 %338, ptr %5, align 4
  br label %339

339:                                              ; preds = %325, %337
  %340 = load i32, ptr %5, align 4
  %341 = call i32 @XXH32_round(i32 noundef %308, i32 noundef %340)
  store i32 %341, ptr %66, align 4
  %342 = load ptr, ptr %62, align 8
  %343 = getelementptr inbounds i8, ptr %342, i64 4
  store ptr %343, ptr %62, align 8
  %344 = load i32, ptr %67, align 4
  %345 = load ptr, ptr %62, align 8
  %346 = load i32, ptr %60, align 4
  %347 = load i32, ptr %61, align 4
  store ptr %345, ptr %11, align 8
  store i32 %346, ptr %12, align 4
  store i32 %347, ptr %13, align 4
  %348 = load i32, ptr %13, align 4
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %350, label %363

350:                                              ; preds = %339
  %351 = load ptr, ptr %11, align 8
  store ptr %351, ptr %9, align 8
  %352 = call i32 @XXH_isLittleEndian()
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %350
  %355 = load ptr, ptr %9, align 8
  %356 = call i32 @XXH_read32(ptr noundef %355)
  br label %361

357:                                              ; preds = %350
  %358 = load ptr, ptr %9, align 8
  %359 = call i32 @XXH_read32(ptr noundef %358)
  %360 = call i32 @XXH_swap32(i32 noundef %359)
  br label %361

361:                                              ; preds = %357, %354
  %362 = phi i32 [ %356, %354 ], [ %360, %357 ]
  store i32 %362, ptr %10, align 4
  br label %375

363:                                              ; preds = %339
  %364 = load i32, ptr %12, align 4
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = load ptr, ptr %11, align 8
  %368 = load i32, ptr %367, align 4
  br label %373

369:                                              ; preds = %363
  %370 = load ptr, ptr %11, align 8
  %371 = load i32, ptr %370, align 4
  %372 = call i32 @XXH_swap32(i32 noundef %371)
  br label %373

373:                                              ; preds = %369, %366
  %374 = phi i32 [ %368, %366 ], [ %372, %369 ]
  store i32 %374, ptr %10, align 4
  br label %375

375:                                              ; preds = %361, %373
  %376 = load i32, ptr %10, align 4
  %377 = call i32 @XXH32_round(i32 noundef %344, i32 noundef %376)
  store i32 %377, ptr %67, align 4
  %378 = load ptr, ptr %62, align 8
  %379 = getelementptr inbounds i8, ptr %378, i64 4
  store ptr %379, ptr %62, align 8
  %380 = load i32, ptr %68, align 4
  %381 = load ptr, ptr %62, align 8
  %382 = load i32, ptr %60, align 4
  %383 = load i32, ptr %61, align 4
  store ptr %381, ptr %16, align 8
  store i32 %382, ptr %17, align 4
  store i32 %383, ptr %18, align 4
  %384 = load i32, ptr %18, align 4
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %399

386:                                              ; preds = %375
  %387 = load ptr, ptr %16, align 8
  store ptr %387, ptr %14, align 8
  %388 = call i32 @XXH_isLittleEndian()
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %386
  %391 = load ptr, ptr %14, align 8
  %392 = call i32 @XXH_read32(ptr noundef %391)
  br label %397

393:                                              ; preds = %386
  %394 = load ptr, ptr %14, align 8
  %395 = call i32 @XXH_read32(ptr noundef %394)
  %396 = call i32 @XXH_swap32(i32 noundef %395)
  br label %397

397:                                              ; preds = %393, %390
  %398 = phi i32 [ %392, %390 ], [ %396, %393 ]
  store i32 %398, ptr %15, align 4
  br label %411

399:                                              ; preds = %375
  %400 = load i32, ptr %17, align 4
  %401 = icmp eq i32 %400, 1
  br i1 %401, label %402, label %405

402:                                              ; preds = %399
  %403 = load ptr, ptr %16, align 8
  %404 = load i32, ptr %403, align 4
  br label %409

405:                                              ; preds = %399
  %406 = load ptr, ptr %16, align 8
  %407 = load i32, ptr %406, align 4
  %408 = call i32 @XXH_swap32(i32 noundef %407)
  br label %409

409:                                              ; preds = %405, %402
  %410 = phi i32 [ %404, %402 ], [ %408, %405 ]
  store i32 %410, ptr %15, align 4
  br label %411

411:                                              ; preds = %397, %409
  %412 = load i32, ptr %15, align 4
  %413 = call i32 @XXH32_round(i32 noundef %380, i32 noundef %412)
  store i32 %413, ptr %68, align 4
  %414 = load ptr, ptr %62, align 8
  %415 = getelementptr inbounds i8, ptr %414, i64 4
  store ptr %415, ptr %62, align 8
  %416 = load i32, ptr %69, align 4
  %417 = load ptr, ptr %62, align 8
  %418 = load i32, ptr %60, align 4
  %419 = load i32, ptr %61, align 4
  store ptr %417, ptr %21, align 8
  store i32 %418, ptr %22, align 4
  store i32 %419, ptr %23, align 4
  %420 = load i32, ptr %23, align 4
  %421 = icmp eq i32 %420, 1
  br i1 %421, label %422, label %435

422:                                              ; preds = %411
  %423 = load ptr, ptr %21, align 8
  store ptr %423, ptr %19, align 8
  %424 = call i32 @XXH_isLittleEndian()
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %422
  %427 = load ptr, ptr %19, align 8
  %428 = call i32 @XXH_read32(ptr noundef %427)
  br label %433

429:                                              ; preds = %422
  %430 = load ptr, ptr %19, align 8
  %431 = call i32 @XXH_read32(ptr noundef %430)
  %432 = call i32 @XXH_swap32(i32 noundef %431)
  br label %433

433:                                              ; preds = %429, %426
  %434 = phi i32 [ %428, %426 ], [ %432, %429 ]
  store i32 %434, ptr %20, align 4
  br label %447

435:                                              ; preds = %411
  %436 = load i32, ptr %22, align 4
  %437 = icmp eq i32 %436, 1
  br i1 %437, label %438, label %441

438:                                              ; preds = %435
  %439 = load ptr, ptr %21, align 8
  %440 = load i32, ptr %439, align 4
  br label %445

441:                                              ; preds = %435
  %442 = load ptr, ptr %21, align 8
  %443 = load i32, ptr %442, align 4
  %444 = call i32 @XXH_swap32(i32 noundef %443)
  br label %445

445:                                              ; preds = %441, %438
  %446 = phi i32 [ %440, %438 ], [ %444, %441 ]
  store i32 %446, ptr %20, align 4
  br label %447

447:                                              ; preds = %433, %445
  %448 = load i32, ptr %20, align 4
  %449 = call i32 @XXH32_round(i32 noundef %416, i32 noundef %448)
  store i32 %449, ptr %69, align 4
  %450 = load ptr, ptr %62, align 8
  %451 = getelementptr inbounds i8, ptr %450, i64 4
  store ptr %451, ptr %62, align 8
  %452 = load ptr, ptr %62, align 8
  %453 = load ptr, ptr %65, align 8
  %454 = icmp ult ptr %452, %453
  br i1 %454, label %307, label %455

455:                                              ; preds = %447
  %456 = load i32, ptr %66, align 4
  %457 = shl i32 %456, 1
  %458 = load i32, ptr %66, align 4
  %459 = lshr i32 %458, 31
  %460 = or i32 %457, %459
  %461 = load i32, ptr %67, align 4
  %462 = shl i32 %461, 7
  %463 = load i32, ptr %67, align 4
  %464 = lshr i32 %463, 25
  %465 = or i32 %462, %464
  %466 = add i32 %460, %465
  %467 = load i32, ptr %68, align 4
  %468 = shl i32 %467, 12
  %469 = load i32, ptr %68, align 4
  %470 = lshr i32 %469, 20
  %471 = or i32 %468, %470
  %472 = add i32 %466, %471
  %473 = load i32, ptr %69, align 4
  %474 = shl i32 %473, 18
  %475 = load i32, ptr %69, align 4
  %476 = lshr i32 %475, 14
  %477 = or i32 %474, %476
  %478 = add i32 %472, %477
  store i32 %478, ptr %64, align 4
  br label %482

479:                                              ; preds = %286
  %480 = load i32, ptr %59, align 4
  %481 = add i32 %480, 374761393
  store i32 %481, ptr %64, align 4
  br label %482

482:                                              ; preds = %455, %479
  %483 = load i64, ptr %58, align 8
  %484 = trunc i64 %483 to i32
  %485 = load i32, ptr %64, align 4
  %486 = add i32 %485, %484
  store i32 %486, ptr %64, align 4
  %487 = load i32, ptr %64, align 4
  %488 = load ptr, ptr %62, align 8
  %489 = load i64, ptr %58, align 8
  %490 = and i64 %489, 15
  %491 = load i32, ptr %60, align 4
  %492 = load i32, ptr %61, align 4
  %493 = call i32 @XXH32_finalize(i32 noundef %487, ptr noundef %488, i64 noundef %490, i32 noundef %491, i32 noundef %492)
  store i32 %493, ptr %70, align 4
  br label %494

494:                                              ; preds = %482, %274
  %495 = load i32, ptr %70, align 4
  ret i32 %495
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH_isLittleEndian() #0 {
  %1 = alloca %union.anon, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 @__const.XXH_isLittleEndian.one, i64 4, i1 false)
  %2 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 0
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @XXH32_createState() #0 {
  %1 = call ptr @XXH_malloc(i64 noundef 48)
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @XXH_malloc(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call noalias ptr @malloc(i64 noundef %3) #8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32_freeState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @XXH_free(ptr noundef %3)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %3) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XXH32_copyState(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 48, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32_reset(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.XXH32_state_s, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 48, i1 false)
  %6 = load i32, ptr %4, align 4
  %7 = add i32 %6, -1640531535
  %8 = add i32 %7, -2048144777
  %9 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %5, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %4, align 4
  %11 = add i32 %10, -2048144777
  %12 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %5, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %4, align 4
  %14 = add i32 %13, 0
  %15 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %5, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr %4, align 4
  %17 = sub i32 %16, -1640531535
  %18 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %5, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %5, i64 44, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store ptr %0, ptr %13, align 8
  store ptr %1, ptr %14, align 8
  store i64 %2, ptr %15, align 8
  %24 = load ptr, ptr %14, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 1, ptr %12, align 4
  br label %313

27:                                               ; preds = %3
  %28 = load ptr, ptr %14, align 8
  store ptr %28, ptr %16, align 8
  %29 = load ptr, ptr %16, align 8
  %30 = load i64, ptr %15, align 8
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 %30
  store ptr %31, ptr %17, align 8
  %32 = load i64, ptr %15, align 8
  %33 = trunc i64 %32 to i32
  %34 = load ptr, ptr %13, align 8
  %35 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %34, i32 0, i32 0
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %33
  store i32 %37, ptr %35, align 4
  %38 = load i64, ptr %15, align 8
  %39 = icmp uge i64 %38, 16
  %40 = zext i1 %39 to i32
  %41 = load ptr, ptr %13, align 8
  %42 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %41, i32 0, i32 0
  %43 = load i32, ptr %42, align 4
  %44 = icmp uge i32 %43, 16
  %45 = zext i1 %44 to i32
  %46 = or i32 %40, %45
  %47 = load ptr, ptr %13, align 8
  %48 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, ptr %48, align 4
  %51 = load ptr, ptr %13, align 8
  %52 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %51, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, ptr %15, align 8
  %56 = add i64 %54, %55
  %57 = icmp ult i64 %56, 16
  br i1 %57, label %58, label %76

58:                                               ; preds = %27
  %59 = load ptr, ptr %13, align 8
  %60 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %59, i32 0, i32 6
  %61 = getelementptr inbounds [4 x i32], ptr %60, i64 0, i64 0
  %62 = load ptr, ptr %13, align 8
  %63 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %62, i32 0, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds nuw i8, ptr %61, i64 %65
  %67 = load ptr, ptr %14, align 8
  %68 = load i64, ptr %15, align 8
  %69 = call ptr @XXH_memcpy(ptr noundef %66, ptr noundef %67, i64 noundef %68)
  %70 = load i64, ptr %15, align 8
  %71 = trunc i64 %70 to i32
  %72 = load ptr, ptr %13, align 8
  %73 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %72, i32 0, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, %71
  store i32 %75, ptr %73, align 4
  store i32 0, ptr %12, align 4
  br label %313

76:                                               ; preds = %27
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %77, i32 0, i32 7
  %79 = load i32, ptr %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %187

81:                                               ; preds = %76
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %82, i32 0, i32 6
  %84 = getelementptr inbounds [4 x i32], ptr %83, i64 0, i64 0
  %85 = load ptr, ptr %13, align 8
  %86 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %85, i32 0, i32 7
  %87 = load i32, ptr %86, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds nuw i8, ptr %84, i64 %88
  %90 = load ptr, ptr %14, align 8
  %91 = load ptr, ptr %13, align 8
  %92 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %91, i32 0, i32 7
  %93 = load i32, ptr %92, align 4
  %94 = sub i32 16, %93
  %95 = zext i32 %94 to i64
  %96 = call ptr @XXH_memcpy(ptr noundef %89, ptr noundef %90, i64 noundef %95)
  %97 = load ptr, ptr %13, align 8
  %98 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %97, i32 0, i32 6
  %99 = getelementptr inbounds [4 x i32], ptr %98, i64 0, i64 0
  store ptr %99, ptr %18, align 8
  %100 = load ptr, ptr %13, align 8
  %101 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %18, align 8
  store ptr %103, ptr %4, align 8
  %104 = call i32 @XXH_isLittleEndian()
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %81
  %107 = load ptr, ptr %4, align 8
  %108 = call i32 @XXH_read32(ptr noundef %107)
  br label %113

109:                                              ; preds = %81
  %110 = load ptr, ptr %4, align 8
  %111 = call i32 @XXH_read32(ptr noundef %110)
  %112 = call i32 @XXH_swap32(i32 noundef %111)
  br label %113

113:                                              ; preds = %106, %109
  %114 = phi i32 [ %108, %106 ], [ %112, %109 ]
  %115 = call i32 @XXH32_round(i32 noundef %102, i32 noundef %114)
  %116 = load ptr, ptr %13, align 8
  %117 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %116, i32 0, i32 2
  store i32 %115, ptr %117, align 4
  %118 = load ptr, ptr %18, align 8
  %119 = getelementptr inbounds nuw i32, ptr %118, i32 1
  store ptr %119, ptr %18, align 8
  %120 = load ptr, ptr %13, align 8
  %121 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %120, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = load ptr, ptr %18, align 8
  store ptr %123, ptr %5, align 8
  %124 = call i32 @XXH_isLittleEndian()
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %113
  %127 = load ptr, ptr %5, align 8
  %128 = call i32 @XXH_read32(ptr noundef %127)
  br label %133

129:                                              ; preds = %113
  %130 = load ptr, ptr %5, align 8
  %131 = call i32 @XXH_read32(ptr noundef %130)
  %132 = call i32 @XXH_swap32(i32 noundef %131)
  br label %133

133:                                              ; preds = %126, %129
  %134 = phi i32 [ %128, %126 ], [ %132, %129 ]
  %135 = call i32 @XXH32_round(i32 noundef %122, i32 noundef %134)
  %136 = load ptr, ptr %13, align 8
  %137 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %136, i32 0, i32 3
  store i32 %135, ptr %137, align 4
  %138 = load ptr, ptr %18, align 8
  %139 = getelementptr inbounds nuw i32, ptr %138, i32 1
  store ptr %139, ptr %18, align 8
  %140 = load ptr, ptr %13, align 8
  %141 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %140, i32 0, i32 4
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr %18, align 8
  store ptr %143, ptr %6, align 8
  %144 = call i32 @XXH_isLittleEndian()
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %133
  %147 = load ptr, ptr %6, align 8
  %148 = call i32 @XXH_read32(ptr noundef %147)
  br label %153

149:                                              ; preds = %133
  %150 = load ptr, ptr %6, align 8
  %151 = call i32 @XXH_read32(ptr noundef %150)
  %152 = call i32 @XXH_swap32(i32 noundef %151)
  br label %153

153:                                              ; preds = %146, %149
  %154 = phi i32 [ %148, %146 ], [ %152, %149 ]
  %155 = call i32 @XXH32_round(i32 noundef %142, i32 noundef %154)
  %156 = load ptr, ptr %13, align 8
  %157 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %156, i32 0, i32 4
  store i32 %155, ptr %157, align 4
  %158 = load ptr, ptr %18, align 8
  %159 = getelementptr inbounds nuw i32, ptr %158, i32 1
  store ptr %159, ptr %18, align 8
  %160 = load ptr, ptr %13, align 8
  %161 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %160, i32 0, i32 5
  %162 = load i32, ptr %161, align 4
  %163 = load ptr, ptr %18, align 8
  store ptr %163, ptr %7, align 8
  %164 = call i32 @XXH_isLittleEndian()
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %153
  %167 = load ptr, ptr %7, align 8
  %168 = call i32 @XXH_read32(ptr noundef %167)
  br label %173

169:                                              ; preds = %153
  %170 = load ptr, ptr %7, align 8
  %171 = call i32 @XXH_read32(ptr noundef %170)
  %172 = call i32 @XXH_swap32(i32 noundef %171)
  br label %173

173:                                              ; preds = %166, %169
  %174 = phi i32 [ %168, %166 ], [ %172, %169 ]
  %175 = call i32 @XXH32_round(i32 noundef %162, i32 noundef %174)
  %176 = load ptr, ptr %13, align 8
  %177 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %176, i32 0, i32 5
  store i32 %175, ptr %177, align 4
  %178 = load ptr, ptr %13, align 8
  %179 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %178, i32 0, i32 7
  %180 = load i32, ptr %179, align 4
  %181 = sub i32 16, %180
  %182 = load ptr, ptr %16, align 8
  %183 = zext i32 %181 to i64
  %184 = getelementptr inbounds nuw i8, ptr %182, i64 %183
  store ptr %184, ptr %16, align 8
  %185 = load ptr, ptr %13, align 8
  %186 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %185, i32 0, i32 7
  store i32 0, ptr %186, align 4
  br label %187

187:                                              ; preds = %173, %76
  %188 = load ptr, ptr %16, align 8
  %189 = load ptr, ptr %17, align 8
  %190 = getelementptr inbounds i8, ptr %189, i64 -16
  %191 = icmp ule ptr %188, %190
  br i1 %191, label %192, label %289

192:                                              ; preds = %187
  %193 = load ptr, ptr %17, align 8
  %194 = getelementptr inbounds i8, ptr %193, i64 -16
  store ptr %194, ptr %19, align 8
  %195 = load ptr, ptr %13, align 8
  %196 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %195, i32 0, i32 2
  %197 = load i32, ptr %196, align 4
  store i32 %197, ptr %20, align 4
  %198 = load ptr, ptr %13, align 8
  %199 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %198, i32 0, i32 3
  %200 = load i32, ptr %199, align 4
  store i32 %200, ptr %21, align 4
  %201 = load ptr, ptr %13, align 8
  %202 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %201, i32 0, i32 4
  %203 = load i32, ptr %202, align 4
  store i32 %203, ptr %22, align 4
  %204 = load ptr, ptr %13, align 8
  %205 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %204, i32 0, i32 5
  %206 = load i32, ptr %205, align 4
  store i32 %206, ptr %23, align 4
  br label %207

207:                                              ; preds = %272, %192
  %208 = load i32, ptr %20, align 4
  %209 = load ptr, ptr %16, align 8
  store ptr %209, ptr %8, align 8
  %210 = call i32 @XXH_isLittleEndian()
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load ptr, ptr %8, align 8
  %214 = call i32 @XXH_read32(ptr noundef %213)
  br label %219

215:                                              ; preds = %207
  %216 = load ptr, ptr %8, align 8
  %217 = call i32 @XXH_read32(ptr noundef %216)
  %218 = call i32 @XXH_swap32(i32 noundef %217)
  br label %219

219:                                              ; preds = %212, %215
  %220 = phi i32 [ %214, %212 ], [ %218, %215 ]
  %221 = call i32 @XXH32_round(i32 noundef %208, i32 noundef %220)
  store i32 %221, ptr %20, align 4
  %222 = load ptr, ptr %16, align 8
  %223 = getelementptr inbounds i8, ptr %222, i64 4
  store ptr %223, ptr %16, align 8
  %224 = load i32, ptr %21, align 4
  %225 = load ptr, ptr %16, align 8
  store ptr %225, ptr %9, align 8
  %226 = call i32 @XXH_isLittleEndian()
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %219
  %229 = load ptr, ptr %9, align 8
  %230 = call i32 @XXH_read32(ptr noundef %229)
  br label %235

231:                                              ; preds = %219
  %232 = load ptr, ptr %9, align 8
  %233 = call i32 @XXH_read32(ptr noundef %232)
  %234 = call i32 @XXH_swap32(i32 noundef %233)
  br label %235

235:                                              ; preds = %228, %231
  %236 = phi i32 [ %230, %228 ], [ %234, %231 ]
  %237 = call i32 @XXH32_round(i32 noundef %224, i32 noundef %236)
  store i32 %237, ptr %21, align 4
  %238 = load ptr, ptr %16, align 8
  %239 = getelementptr inbounds i8, ptr %238, i64 4
  store ptr %239, ptr %16, align 8
  %240 = load i32, ptr %22, align 4
  %241 = load ptr, ptr %16, align 8
  store ptr %241, ptr %10, align 8
  %242 = call i32 @XXH_isLittleEndian()
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %235
  %245 = load ptr, ptr %10, align 8
  %246 = call i32 @XXH_read32(ptr noundef %245)
  br label %251

247:                                              ; preds = %235
  %248 = load ptr, ptr %10, align 8
  %249 = call i32 @XXH_read32(ptr noundef %248)
  %250 = call i32 @XXH_swap32(i32 noundef %249)
  br label %251

251:                                              ; preds = %244, %247
  %252 = phi i32 [ %246, %244 ], [ %250, %247 ]
  %253 = call i32 @XXH32_round(i32 noundef %240, i32 noundef %252)
  store i32 %253, ptr %22, align 4
  %254 = load ptr, ptr %16, align 8
  %255 = getelementptr inbounds i8, ptr %254, i64 4
  store ptr %255, ptr %16, align 8
  %256 = load i32, ptr %23, align 4
  %257 = load ptr, ptr %16, align 8
  store ptr %257, ptr %11, align 8
  %258 = call i32 @XXH_isLittleEndian()
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %251
  %261 = load ptr, ptr %11, align 8
  %262 = call i32 @XXH_read32(ptr noundef %261)
  br label %267

263:                                              ; preds = %251
  %264 = load ptr, ptr %11, align 8
  %265 = call i32 @XXH_read32(ptr noundef %264)
  %266 = call i32 @XXH_swap32(i32 noundef %265)
  br label %267

267:                                              ; preds = %260, %263
  %268 = phi i32 [ %262, %260 ], [ %266, %263 ]
  %269 = call i32 @XXH32_round(i32 noundef %256, i32 noundef %268)
  store i32 %269, ptr %23, align 4
  %270 = load ptr, ptr %16, align 8
  %271 = getelementptr inbounds i8, ptr %270, i64 4
  store ptr %271, ptr %16, align 8
  br label %272

272:                                              ; preds = %267
  %273 = load ptr, ptr %16, align 8
  %274 = load ptr, ptr %19, align 8
  %275 = icmp ule ptr %273, %274
  br i1 %275, label %207, label %276

276:                                              ; preds = %272
  %277 = load i32, ptr %20, align 4
  %278 = load ptr, ptr %13, align 8
  %279 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %278, i32 0, i32 2
  store i32 %277, ptr %279, align 4
  %280 = load i32, ptr %21, align 4
  %281 = load ptr, ptr %13, align 8
  %282 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %281, i32 0, i32 3
  store i32 %280, ptr %282, align 4
  %283 = load i32, ptr %22, align 4
  %284 = load ptr, ptr %13, align 8
  %285 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %284, i32 0, i32 4
  store i32 %283, ptr %285, align 4
  %286 = load i32, ptr %23, align 4
  %287 = load ptr, ptr %13, align 8
  %288 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %287, i32 0, i32 5
  store i32 %286, ptr %288, align 4
  br label %289

289:                                              ; preds = %276, %187
  %290 = load ptr, ptr %16, align 8
  %291 = load ptr, ptr %17, align 8
  %292 = icmp ult ptr %290, %291
  br i1 %292, label %293, label %312

293:                                              ; preds = %289
  %294 = load ptr, ptr %13, align 8
  %295 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %294, i32 0, i32 6
  %296 = getelementptr inbounds [4 x i32], ptr %295, i64 0, i64 0
  %297 = load ptr, ptr %16, align 8
  %298 = load ptr, ptr %17, align 8
  %299 = load ptr, ptr %16, align 8
  %300 = ptrtoint ptr %298 to i64
  %301 = ptrtoint ptr %299 to i64
  %302 = sub i64 %300, %301
  %303 = call ptr @XXH_memcpy(ptr noundef %296, ptr noundef %297, i64 noundef %302)
  %304 = load ptr, ptr %17, align 8
  %305 = load ptr, ptr %16, align 8
  %306 = ptrtoint ptr %304 to i64
  %307 = ptrtoint ptr %305 to i64
  %308 = sub i64 %306, %307
  %309 = trunc i64 %308 to i32
  %310 = load ptr, ptr %13, align 8
  %311 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %310, i32 0, i32 7
  store i32 %309, ptr %311, align 4
  br label %312

312:                                              ; preds = %293, %289
  store i32 0, ptr %12, align 4
  br label %313

313:                                              ; preds = %312, %58, %26
  %314 = load i32, ptr %12, align 4
  ret i32 %314
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @XXH_memcpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %9, i1 false)
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH32_round(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -2048144777
  %7 = load i32, ptr %3, align 4
  %8 = add i32 %7, %6
  store i32 %8, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = shl i32 %9, 13
  %11 = load i32, ptr %3, align 4
  %12 = lshr i32 %11, 19
  %13 = or i32 %10, %12
  store i32 %13, ptr %3, align 4
  %14 = load i32, ptr %3, align 4
  %15 = mul i32 %14, -1640531535
  store i32 %15, ptr %3, align 4
  %16 = load i32, ptr %3, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32_digest(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  %11 = call i32 @XXH_isLittleEndian()
  store i32 %11, ptr %10, align 4
  %12 = load i32, ptr %10, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %79

14:                                               ; preds = %1
  %15 = load ptr, ptr %9, align 8
  store ptr %15, ptr %2, align 8
  store i32 1, ptr %3, align 4
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %14
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 1
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 31
  %29 = or i32 %24, %28
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 %32, 7
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 25
  %38 = or i32 %33, %37
  %39 = add i32 %29, %38
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %40, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 12
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %44, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 20
  %48 = or i32 %43, %47
  %49 = add i32 %39, %48
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = shl i32 %52, 18
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %54, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 14
  %58 = or i32 %53, %57
  %59 = add i32 %49, %58
  store i32 %59, ptr %4, align 4
  br label %65

60:                                               ; preds = %14
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %61, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 374761393
  store i32 %64, ptr %4, align 4
  br label %65

65:                                               ; preds = %20, %60
  %66 = load ptr, ptr %2, align 8
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr %4, align 4
  %69 = add i32 %68, %67
  store i32 %69, ptr %4, align 4
  %70 = load i32, ptr %4, align 4
  %71 = load ptr, ptr %2, align 8
  %72 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %71, i32 0, i32 6
  %73 = load ptr, ptr %2, align 8
  %74 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %73, i32 0, i32 7
  %75 = load i32, ptr %74, align 4
  %76 = zext i32 %75 to i64
  %77 = load i32, ptr %3, align 4
  %78 = call i32 @XXH32_finalize(i32 noundef %70, ptr noundef %72, i64 noundef %76, i32 noundef %77, i32 noundef 0)
  store i32 %78, ptr %8, align 4
  br label %144

79:                                               ; preds = %1
  %80 = load ptr, ptr %9, align 8
  store ptr %80, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %81 = load ptr, ptr %5, align 8
  %82 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %125

85:                                               ; preds = %79
  %86 = load ptr, ptr %5, align 8
  %87 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 1
  %90 = load ptr, ptr %5, align 8
  %91 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = lshr i32 %92, 31
  %94 = or i32 %89, %93
  %95 = load ptr, ptr %5, align 8
  %96 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %95, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = shl i32 %97, 7
  %99 = load ptr, ptr %5, align 8
  %100 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %99, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = lshr i32 %101, 25
  %103 = or i32 %98, %102
  %104 = add i32 %94, %103
  %105 = load ptr, ptr %5, align 8
  %106 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %105, i32 0, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = shl i32 %107, 12
  %109 = load ptr, ptr %5, align 8
  %110 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %109, i32 0, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = lshr i32 %111, 20
  %113 = or i32 %108, %112
  %114 = add i32 %104, %113
  %115 = load ptr, ptr %5, align 8
  %116 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %115, i32 0, i32 5
  %117 = load i32, ptr %116, align 4
  %118 = shl i32 %117, 18
  %119 = load ptr, ptr %5, align 8
  %120 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %119, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = lshr i32 %121, 14
  %123 = or i32 %118, %122
  %124 = add i32 %114, %123
  store i32 %124, ptr %7, align 4
  br label %130

125:                                              ; preds = %79
  %126 = load ptr, ptr %5, align 8
  %127 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %126, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 374761393
  store i32 %129, ptr %7, align 4
  br label %130

130:                                              ; preds = %85, %125
  %131 = load ptr, ptr %5, align 8
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr %7, align 4
  %134 = add i32 %133, %132
  store i32 %134, ptr %7, align 4
  %135 = load i32, ptr %7, align 4
  %136 = load ptr, ptr %5, align 8
  %137 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %136, i32 0, i32 6
  %138 = load ptr, ptr %5, align 8
  %139 = getelementptr inbounds nuw %struct.XXH32_state_s, ptr %138, i32 0, i32 7
  %140 = load i32, ptr %139, align 4
  %141 = zext i32 %140 to i64
  %142 = load i32, ptr %6, align 4
  %143 = call i32 @XXH32_finalize(i32 noundef %135, ptr noundef %137, i64 noundef %141, i32 noundef %142, i32 noundef 0)
  store i32 %143, ptr %8, align 4
  br label %144

144:                                              ; preds = %130, %65
  %145 = load i32, ptr %8, align 4
  ret i32 %145
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XXH32_canonicalFromHash(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = call i32 @XXH_isLittleEndian()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4
  %9 = call i32 @XXH_swap32(i32 noundef %8)
  store i32 %9, ptr %4, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 4 %4, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH_swap32(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 24
  %5 = and i32 %4, -16777216
  %6 = load i32, ptr %2, align 4
  %7 = shl i32 %6, 8
  %8 = and i32 %7, 16711680
  %9 = or i32 %5, %8
  %10 = load i32, ptr %2, align 4
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 65280
  %13 = or i32 %9, %12
  %14 = load i32, ptr %2, align 4
  %15 = lshr i32 %14, 24
  %16 = and i32 %15, 255
  %17 = or i32 %13, %16
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH32_hashFromCanonical(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @XXH_readBE32(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH_readBE32(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 @XXH_isLittleEndian()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = call i32 @XXH_read32(ptr noundef %6)
  %8 = call i32 @XXH_swap32(i32 noundef %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = call i32 @XXH_read32(ptr noundef %10)
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %8, %5 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XXH64(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca ptr, align 8
  %25 = alloca i64, align 8
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca ptr, align 8
  %30 = alloca i64, align 8
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca ptr, align 8
  %35 = alloca i64, align 8
  %36 = alloca ptr, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca ptr, align 8
  %40 = alloca i64, align 8
  %41 = alloca ptr, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca ptr, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca ptr, align 8
  %50 = alloca ptr, align 8
  %51 = alloca i64, align 8
  %52 = alloca ptr, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca ptr, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca ptr, align 8
  %63 = alloca ptr, align 8
  %64 = alloca i64, align 8
  %65 = alloca ptr, align 8
  %66 = alloca i64, align 8
  %67 = alloca i64, align 8
  %68 = alloca i64, align 8
  %69 = alloca i64, align 8
  %70 = alloca i64, align 8
  %71 = alloca ptr, align 8
  %72 = alloca i64, align 8
  %73 = alloca i64, align 8
  %74 = alloca i32, align 4
  store ptr %0, ptr %71, align 8
  store i64 %1, ptr %72, align 8
  store i64 %2, ptr %73, align 8
  %75 = call i32 @XXH_isLittleEndian()
  store i32 %75, ptr %74, align 4
  %76 = load i32, ptr %74, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %296

78:                                               ; preds = %3
  %79 = load ptr, ptr %71, align 8
  %80 = load i64, ptr %72, align 8
  %81 = load i64, ptr %73, align 8
  store ptr %79, ptr %44, align 8
  store i64 %80, ptr %45, align 8
  store i64 %81, ptr %46, align 8
  store i32 1, ptr %47, align 4
  store i32 1, ptr %48, align 4
  %82 = load ptr, ptr %44, align 8
  store ptr %82, ptr %49, align 8
  %83 = load ptr, ptr %49, align 8
  %84 = load i64, ptr %45, align 8
  %85 = getelementptr inbounds nuw i8, ptr %83, i64 %84
  store ptr %85, ptr %50, align 8
  %86 = load i64, ptr %45, align 8
  %87 = icmp uge i64 %86, 32
  br i1 %87, label %88, label %283

88:                                               ; preds = %78
  %89 = load ptr, ptr %50, align 8
  %90 = getelementptr inbounds i8, ptr %89, i64 -32
  store ptr %90, ptr %52, align 8
  %91 = load i64, ptr %46, align 8
  %92 = add i64 %91, -7046029288634856825
  %93 = add i64 %92, -4417276706812531889
  store i64 %93, ptr %53, align 8
  %94 = load i64, ptr %46, align 8
  %95 = add i64 %94, -4417276706812531889
  store i64 %95, ptr %54, align 8
  %96 = load i64, ptr %46, align 8
  store i64 %96, ptr %55, align 8
  %97 = load i64, ptr %46, align 8
  %98 = sub i64 %97, -7046029288634856825
  store i64 %98, ptr %56, align 8
  br label %99

99:                                               ; preds = %239, %88
  %100 = load i64, ptr %53, align 8
  %101 = load ptr, ptr %49, align 8
  %102 = load i32, ptr %47, align 4
  %103 = load i32, ptr %48, align 4
  store ptr %101, ptr %26, align 8
  store i32 %102, ptr %27, align 4
  store i32 %103, ptr %28, align 4
  %104 = load i32, ptr %28, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %119

106:                                              ; preds = %99
  %107 = load ptr, ptr %26, align 8
  store ptr %107, ptr %24, align 8
  %108 = call i32 @XXH_isLittleEndian()
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load ptr, ptr %24, align 8
  %112 = call i64 @XXH_read64(ptr noundef %111)
  br label %117

113:                                              ; preds = %106
  %114 = load ptr, ptr %24, align 8
  %115 = call i64 @XXH_read64(ptr noundef %114)
  %116 = call i64 @XXH_swap64(i64 noundef %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = phi i64 [ %112, %110 ], [ %116, %113 ]
  store i64 %118, ptr %25, align 8
  br label %131

119:                                              ; preds = %99
  %120 = load i32, ptr %27, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load ptr, ptr %26, align 8
  %124 = load i64, ptr %123, align 8
  br label %129

125:                                              ; preds = %119
  %126 = load ptr, ptr %26, align 8
  %127 = load i64, ptr %126, align 8
  %128 = call i64 @XXH_swap64(i64 noundef %127)
  br label %129

129:                                              ; preds = %125, %122
  %130 = phi i64 [ %124, %122 ], [ %128, %125 ]
  store i64 %130, ptr %25, align 8
  br label %131

131:                                              ; preds = %117, %129
  %132 = load i64, ptr %25, align 8
  %133 = call i64 @XXH64_round(i64 noundef %100, i64 noundef %132)
  store i64 %133, ptr %53, align 8
  %134 = load ptr, ptr %49, align 8
  %135 = getelementptr inbounds i8, ptr %134, i64 8
  store ptr %135, ptr %49, align 8
  %136 = load i64, ptr %54, align 8
  %137 = load ptr, ptr %49, align 8
  %138 = load i32, ptr %47, align 4
  %139 = load i32, ptr %48, align 4
  store ptr %137, ptr %31, align 8
  store i32 %138, ptr %32, align 4
  store i32 %139, ptr %33, align 4
  %140 = load i32, ptr %33, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %155

142:                                              ; preds = %131
  %143 = load ptr, ptr %31, align 8
  store ptr %143, ptr %29, align 8
  %144 = call i32 @XXH_isLittleEndian()
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load ptr, ptr %29, align 8
  %148 = call i64 @XXH_read64(ptr noundef %147)
  br label %153

149:                                              ; preds = %142
  %150 = load ptr, ptr %29, align 8
  %151 = call i64 @XXH_read64(ptr noundef %150)
  %152 = call i64 @XXH_swap64(i64 noundef %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = phi i64 [ %148, %146 ], [ %152, %149 ]
  store i64 %154, ptr %30, align 8
  br label %167

155:                                              ; preds = %131
  %156 = load i32, ptr %32, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load ptr, ptr %31, align 8
  %160 = load i64, ptr %159, align 8
  br label %165

161:                                              ; preds = %155
  %162 = load ptr, ptr %31, align 8
  %163 = load i64, ptr %162, align 8
  %164 = call i64 @XXH_swap64(i64 noundef %163)
  br label %165

165:                                              ; preds = %161, %158
  %166 = phi i64 [ %160, %158 ], [ %164, %161 ]
  store i64 %166, ptr %30, align 8
  br label %167

167:                                              ; preds = %153, %165
  %168 = load i64, ptr %30, align 8
  %169 = call i64 @XXH64_round(i64 noundef %136, i64 noundef %168)
  store i64 %169, ptr %54, align 8
  %170 = load ptr, ptr %49, align 8
  %171 = getelementptr inbounds i8, ptr %170, i64 8
  store ptr %171, ptr %49, align 8
  %172 = load i64, ptr %55, align 8
  %173 = load ptr, ptr %49, align 8
  %174 = load i32, ptr %47, align 4
  %175 = load i32, ptr %48, align 4
  store ptr %173, ptr %36, align 8
  store i32 %174, ptr %37, align 4
  store i32 %175, ptr %38, align 4
  %176 = load i32, ptr %38, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %191

178:                                              ; preds = %167
  %179 = load ptr, ptr %36, align 8
  store ptr %179, ptr %34, align 8
  %180 = call i32 @XXH_isLittleEndian()
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load ptr, ptr %34, align 8
  %184 = call i64 @XXH_read64(ptr noundef %183)
  br label %189

185:                                              ; preds = %178
  %186 = load ptr, ptr %34, align 8
  %187 = call i64 @XXH_read64(ptr noundef %186)
  %188 = call i64 @XXH_swap64(i64 noundef %187)
  br label %189

189:                                              ; preds = %185, %182
  %190 = phi i64 [ %184, %182 ], [ %188, %185 ]
  store i64 %190, ptr %35, align 8
  br label %203

191:                                              ; preds = %167
  %192 = load i32, ptr %37, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load ptr, ptr %36, align 8
  %196 = load i64, ptr %195, align 8
  br label %201

197:                                              ; preds = %191
  %198 = load ptr, ptr %36, align 8
  %199 = load i64, ptr %198, align 8
  %200 = call i64 @XXH_swap64(i64 noundef %199)
  br label %201

201:                                              ; preds = %197, %194
  %202 = phi i64 [ %196, %194 ], [ %200, %197 ]
  store i64 %202, ptr %35, align 8
  br label %203

203:                                              ; preds = %189, %201
  %204 = load i64, ptr %35, align 8
  %205 = call i64 @XXH64_round(i64 noundef %172, i64 noundef %204)
  store i64 %205, ptr %55, align 8
  %206 = load ptr, ptr %49, align 8
  %207 = getelementptr inbounds i8, ptr %206, i64 8
  store ptr %207, ptr %49, align 8
  %208 = load i64, ptr %56, align 8
  %209 = load ptr, ptr %49, align 8
  %210 = load i32, ptr %47, align 4
  %211 = load i32, ptr %48, align 4
  store ptr %209, ptr %41, align 8
  store i32 %210, ptr %42, align 4
  store i32 %211, ptr %43, align 4
  %212 = load i32, ptr %43, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %227

214:                                              ; preds = %203
  %215 = load ptr, ptr %41, align 8
  store ptr %215, ptr %39, align 8
  %216 = call i32 @XXH_isLittleEndian()
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load ptr, ptr %39, align 8
  %220 = call i64 @XXH_read64(ptr noundef %219)
  br label %225

221:                                              ; preds = %214
  %222 = load ptr, ptr %39, align 8
  %223 = call i64 @XXH_read64(ptr noundef %222)
  %224 = call i64 @XXH_swap64(i64 noundef %223)
  br label %225

225:                                              ; preds = %221, %218
  %226 = phi i64 [ %220, %218 ], [ %224, %221 ]
  store i64 %226, ptr %40, align 8
  br label %239

227:                                              ; preds = %203
  %228 = load i32, ptr %42, align 4
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load ptr, ptr %41, align 8
  %232 = load i64, ptr %231, align 8
  br label %237

233:                                              ; preds = %227
  %234 = load ptr, ptr %41, align 8
  %235 = load i64, ptr %234, align 8
  %236 = call i64 @XXH_swap64(i64 noundef %235)
  br label %237

237:                                              ; preds = %233, %230
  %238 = phi i64 [ %232, %230 ], [ %236, %233 ]
  store i64 %238, ptr %40, align 8
  br label %239

239:                                              ; preds = %225, %237
  %240 = load i64, ptr %40, align 8
  %241 = call i64 @XXH64_round(i64 noundef %208, i64 noundef %240)
  store i64 %241, ptr %56, align 8
  %242 = load ptr, ptr %49, align 8
  %243 = getelementptr inbounds i8, ptr %242, i64 8
  store ptr %243, ptr %49, align 8
  %244 = load ptr, ptr %49, align 8
  %245 = load ptr, ptr %52, align 8
  %246 = icmp ule ptr %244, %245
  br i1 %246, label %99, label %247

247:                                              ; preds = %239
  %248 = load i64, ptr %53, align 8
  %249 = shl i64 %248, 1
  %250 = load i64, ptr %53, align 8
  %251 = lshr i64 %250, 63
  %252 = or i64 %249, %251
  %253 = load i64, ptr %54, align 8
  %254 = shl i64 %253, 7
  %255 = load i64, ptr %54, align 8
  %256 = lshr i64 %255, 57
  %257 = or i64 %254, %256
  %258 = add i64 %252, %257
  %259 = load i64, ptr %55, align 8
  %260 = shl i64 %259, 12
  %261 = load i64, ptr %55, align 8
  %262 = lshr i64 %261, 52
  %263 = or i64 %260, %262
  %264 = add i64 %258, %263
  %265 = load i64, ptr %56, align 8
  %266 = shl i64 %265, 18
  %267 = load i64, ptr %56, align 8
  %268 = lshr i64 %267, 46
  %269 = or i64 %266, %268
  %270 = add i64 %264, %269
  store i64 %270, ptr %51, align 8
  %271 = load i64, ptr %51, align 8
  %272 = load i64, ptr %53, align 8
  %273 = call i64 @XXH64_mergeRound(i64 noundef %271, i64 noundef %272)
  store i64 %273, ptr %51, align 8
  %274 = load i64, ptr %51, align 8
  %275 = load i64, ptr %54, align 8
  %276 = call i64 @XXH64_mergeRound(i64 noundef %274, i64 noundef %275)
  store i64 %276, ptr %51, align 8
  %277 = load i64, ptr %51, align 8
  %278 = load i64, ptr %55, align 8
  %279 = call i64 @XXH64_mergeRound(i64 noundef %277, i64 noundef %278)
  store i64 %279, ptr %51, align 8
  %280 = load i64, ptr %51, align 8
  %281 = load i64, ptr %56, align 8
  %282 = call i64 @XXH64_mergeRound(i64 noundef %280, i64 noundef %281)
  store i64 %282, ptr %51, align 8
  br label %286

283:                                              ; preds = %78
  %284 = load i64, ptr %46, align 8
  %285 = add i64 %284, 2870177450012600261
  store i64 %285, ptr %51, align 8
  br label %286

286:                                              ; preds = %247, %283
  %287 = load i64, ptr %45, align 8
  %288 = load i64, ptr %51, align 8
  %289 = add i64 %288, %287
  store i64 %289, ptr %51, align 8
  %290 = load i64, ptr %51, align 8
  %291 = load ptr, ptr %49, align 8
  %292 = load i64, ptr %45, align 8
  %293 = load i32, ptr %47, align 4
  %294 = load i32, ptr %48, align 4
  %295 = call i64 @XXH64_finalize(i64 noundef %290, ptr noundef %291, i64 noundef %292, i32 noundef %293, i32 noundef %294)
  store i64 %295, ptr %70, align 8
  br label %514

296:                                              ; preds = %3
  %297 = load ptr, ptr %71, align 8
  %298 = load i64, ptr %72, align 8
  %299 = load i64, ptr %73, align 8
  store ptr %297, ptr %57, align 8
  store i64 %298, ptr %58, align 8
  store i64 %299, ptr %59, align 8
  store i32 0, ptr %60, align 4
  store i32 1, ptr %61, align 4
  %300 = load ptr, ptr %57, align 8
  store ptr %300, ptr %62, align 8
  %301 = load ptr, ptr %62, align 8
  %302 = load i64, ptr %58, align 8
  %303 = getelementptr inbounds nuw i8, ptr %301, i64 %302
  store ptr %303, ptr %63, align 8
  %304 = load i64, ptr %58, align 8
  %305 = icmp uge i64 %304, 32
  br i1 %305, label %306, label %501

306:                                              ; preds = %296
  %307 = load ptr, ptr %63, align 8
  %308 = getelementptr inbounds i8, ptr %307, i64 -32
  store ptr %308, ptr %65, align 8
  %309 = load i64, ptr %59, align 8
  %310 = add i64 %309, -7046029288634856825
  %311 = add i64 %310, -4417276706812531889
  store i64 %311, ptr %66, align 8
  %312 = load i64, ptr %59, align 8
  %313 = add i64 %312, -4417276706812531889
  store i64 %313, ptr %67, align 8
  %314 = load i64, ptr %59, align 8
  store i64 %314, ptr %68, align 8
  %315 = load i64, ptr %59, align 8
  %316 = sub i64 %315, -7046029288634856825
  store i64 %316, ptr %69, align 8
  br label %317

317:                                              ; preds = %457, %306
  %318 = load i64, ptr %66, align 8
  %319 = load ptr, ptr %62, align 8
  %320 = load i32, ptr %60, align 4
  %321 = load i32, ptr %61, align 4
  store ptr %319, ptr %6, align 8
  store i32 %320, ptr %7, align 4
  store i32 %321, ptr %8, align 4
  %322 = load i32, ptr %8, align 4
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %324, label %337

324:                                              ; preds = %317
  %325 = load ptr, ptr %6, align 8
  store ptr %325, ptr %4, align 8
  %326 = call i32 @XXH_isLittleEndian()
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %324
  %329 = load ptr, ptr %4, align 8
  %330 = call i64 @XXH_read64(ptr noundef %329)
  br label %335

331:                                              ; preds = %324
  %332 = load ptr, ptr %4, align 8
  %333 = call i64 @XXH_read64(ptr noundef %332)
  %334 = call i64 @XXH_swap64(i64 noundef %333)
  br label %335

335:                                              ; preds = %331, %328
  %336 = phi i64 [ %330, %328 ], [ %334, %331 ]
  store i64 %336, ptr %5, align 8
  br label %349

337:                                              ; preds = %317
  %338 = load i32, ptr %7, align 4
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load ptr, ptr %6, align 8
  %342 = load i64, ptr %341, align 8
  br label %347

343:                                              ; preds = %337
  %344 = load ptr, ptr %6, align 8
  %345 = load i64, ptr %344, align 8
  %346 = call i64 @XXH_swap64(i64 noundef %345)
  br label %347

347:                                              ; preds = %343, %340
  %348 = phi i64 [ %342, %340 ], [ %346, %343 ]
  store i64 %348, ptr %5, align 8
  br label %349

349:                                              ; preds = %335, %347
  %350 = load i64, ptr %5, align 8
  %351 = call i64 @XXH64_round(i64 noundef %318, i64 noundef %350)
  store i64 %351, ptr %66, align 8
  %352 = load ptr, ptr %62, align 8
  %353 = getelementptr inbounds i8, ptr %352, i64 8
  store ptr %353, ptr %62, align 8
  %354 = load i64, ptr %67, align 8
  %355 = load ptr, ptr %62, align 8
  %356 = load i32, ptr %60, align 4
  %357 = load i32, ptr %61, align 4
  store ptr %355, ptr %11, align 8
  store i32 %356, ptr %12, align 4
  store i32 %357, ptr %13, align 4
  %358 = load i32, ptr %13, align 4
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %360, label %373

360:                                              ; preds = %349
  %361 = load ptr, ptr %11, align 8
  store ptr %361, ptr %9, align 8
  %362 = call i32 @XXH_isLittleEndian()
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %360
  %365 = load ptr, ptr %9, align 8
  %366 = call i64 @XXH_read64(ptr noundef %365)
  br label %371

367:                                              ; preds = %360
  %368 = load ptr, ptr %9, align 8
  %369 = call i64 @XXH_read64(ptr noundef %368)
  %370 = call i64 @XXH_swap64(i64 noundef %369)
  br label %371

371:                                              ; preds = %367, %364
  %372 = phi i64 [ %366, %364 ], [ %370, %367 ]
  store i64 %372, ptr %10, align 8
  br label %385

373:                                              ; preds = %349
  %374 = load i32, ptr %12, align 4
  %375 = icmp eq i32 %374, 1
  br i1 %375, label %376, label %379

376:                                              ; preds = %373
  %377 = load ptr, ptr %11, align 8
  %378 = load i64, ptr %377, align 8
  br label %383

379:                                              ; preds = %373
  %380 = load ptr, ptr %11, align 8
  %381 = load i64, ptr %380, align 8
  %382 = call i64 @XXH_swap64(i64 noundef %381)
  br label %383

383:                                              ; preds = %379, %376
  %384 = phi i64 [ %378, %376 ], [ %382, %379 ]
  store i64 %384, ptr %10, align 8
  br label %385

385:                                              ; preds = %371, %383
  %386 = load i64, ptr %10, align 8
  %387 = call i64 @XXH64_round(i64 noundef %354, i64 noundef %386)
  store i64 %387, ptr %67, align 8
  %388 = load ptr, ptr %62, align 8
  %389 = getelementptr inbounds i8, ptr %388, i64 8
  store ptr %389, ptr %62, align 8
  %390 = load i64, ptr %68, align 8
  %391 = load ptr, ptr %62, align 8
  %392 = load i32, ptr %60, align 4
  %393 = load i32, ptr %61, align 4
  store ptr %391, ptr %16, align 8
  store i32 %392, ptr %17, align 4
  store i32 %393, ptr %18, align 4
  %394 = load i32, ptr %18, align 4
  %395 = icmp eq i32 %394, 1
  br i1 %395, label %396, label %409

396:                                              ; preds = %385
  %397 = load ptr, ptr %16, align 8
  store ptr %397, ptr %14, align 8
  %398 = call i32 @XXH_isLittleEndian()
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %396
  %401 = load ptr, ptr %14, align 8
  %402 = call i64 @XXH_read64(ptr noundef %401)
  br label %407

403:                                              ; preds = %396
  %404 = load ptr, ptr %14, align 8
  %405 = call i64 @XXH_read64(ptr noundef %404)
  %406 = call i64 @XXH_swap64(i64 noundef %405)
  br label %407

407:                                              ; preds = %403, %400
  %408 = phi i64 [ %402, %400 ], [ %406, %403 ]
  store i64 %408, ptr %15, align 8
  br label %421

409:                                              ; preds = %385
  %410 = load i32, ptr %17, align 4
  %411 = icmp eq i32 %410, 1
  br i1 %411, label %412, label %415

412:                                              ; preds = %409
  %413 = load ptr, ptr %16, align 8
  %414 = load i64, ptr %413, align 8
  br label %419

415:                                              ; preds = %409
  %416 = load ptr, ptr %16, align 8
  %417 = load i64, ptr %416, align 8
  %418 = call i64 @XXH_swap64(i64 noundef %417)
  br label %419

419:                                              ; preds = %415, %412
  %420 = phi i64 [ %414, %412 ], [ %418, %415 ]
  store i64 %420, ptr %15, align 8
  br label %421

421:                                              ; preds = %407, %419
  %422 = load i64, ptr %15, align 8
  %423 = call i64 @XXH64_round(i64 noundef %390, i64 noundef %422)
  store i64 %423, ptr %68, align 8
  %424 = load ptr, ptr %62, align 8
  %425 = getelementptr inbounds i8, ptr %424, i64 8
  store ptr %425, ptr %62, align 8
  %426 = load i64, ptr %69, align 8
  %427 = load ptr, ptr %62, align 8
  %428 = load i32, ptr %60, align 4
  %429 = load i32, ptr %61, align 4
  store ptr %427, ptr %21, align 8
  store i32 %428, ptr %22, align 4
  store i32 %429, ptr %23, align 4
  %430 = load i32, ptr %23, align 4
  %431 = icmp eq i32 %430, 1
  br i1 %431, label %432, label %445

432:                                              ; preds = %421
  %433 = load ptr, ptr %21, align 8
  store ptr %433, ptr %19, align 8
  %434 = call i32 @XXH_isLittleEndian()
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %439

436:                                              ; preds = %432
  %437 = load ptr, ptr %19, align 8
  %438 = call i64 @XXH_read64(ptr noundef %437)
  br label %443

439:                                              ; preds = %432
  %440 = load ptr, ptr %19, align 8
  %441 = call i64 @XXH_read64(ptr noundef %440)
  %442 = call i64 @XXH_swap64(i64 noundef %441)
  br label %443

443:                                              ; preds = %439, %436
  %444 = phi i64 [ %438, %436 ], [ %442, %439 ]
  store i64 %444, ptr %20, align 8
  br label %457

445:                                              ; preds = %421
  %446 = load i32, ptr %22, align 4
  %447 = icmp eq i32 %446, 1
  br i1 %447, label %448, label %451

448:                                              ; preds = %445
  %449 = load ptr, ptr %21, align 8
  %450 = load i64, ptr %449, align 8
  br label %455

451:                                              ; preds = %445
  %452 = load ptr, ptr %21, align 8
  %453 = load i64, ptr %452, align 8
  %454 = call i64 @XXH_swap64(i64 noundef %453)
  br label %455

455:                                              ; preds = %451, %448
  %456 = phi i64 [ %450, %448 ], [ %454, %451 ]
  store i64 %456, ptr %20, align 8
  br label %457

457:                                              ; preds = %443, %455
  %458 = load i64, ptr %20, align 8
  %459 = call i64 @XXH64_round(i64 noundef %426, i64 noundef %458)
  store i64 %459, ptr %69, align 8
  %460 = load ptr, ptr %62, align 8
  %461 = getelementptr inbounds i8, ptr %460, i64 8
  store ptr %461, ptr %62, align 8
  %462 = load ptr, ptr %62, align 8
  %463 = load ptr, ptr %65, align 8
  %464 = icmp ule ptr %462, %463
  br i1 %464, label %317, label %465

465:                                              ; preds = %457
  %466 = load i64, ptr %66, align 8
  %467 = shl i64 %466, 1
  %468 = load i64, ptr %66, align 8
  %469 = lshr i64 %468, 63
  %470 = or i64 %467, %469
  %471 = load i64, ptr %67, align 8
  %472 = shl i64 %471, 7
  %473 = load i64, ptr %67, align 8
  %474 = lshr i64 %473, 57
  %475 = or i64 %472, %474
  %476 = add i64 %470, %475
  %477 = load i64, ptr %68, align 8
  %478 = shl i64 %477, 12
  %479 = load i64, ptr %68, align 8
  %480 = lshr i64 %479, 52
  %481 = or i64 %478, %480
  %482 = add i64 %476, %481
  %483 = load i64, ptr %69, align 8
  %484 = shl i64 %483, 18
  %485 = load i64, ptr %69, align 8
  %486 = lshr i64 %485, 46
  %487 = or i64 %484, %486
  %488 = add i64 %482, %487
  store i64 %488, ptr %64, align 8
  %489 = load i64, ptr %64, align 8
  %490 = load i64, ptr %66, align 8
  %491 = call i64 @XXH64_mergeRound(i64 noundef %489, i64 noundef %490)
  store i64 %491, ptr %64, align 8
  %492 = load i64, ptr %64, align 8
  %493 = load i64, ptr %67, align 8
  %494 = call i64 @XXH64_mergeRound(i64 noundef %492, i64 noundef %493)
  store i64 %494, ptr %64, align 8
  %495 = load i64, ptr %64, align 8
  %496 = load i64, ptr %68, align 8
  %497 = call i64 @XXH64_mergeRound(i64 noundef %495, i64 noundef %496)
  store i64 %497, ptr %64, align 8
  %498 = load i64, ptr %64, align 8
  %499 = load i64, ptr %69, align 8
  %500 = call i64 @XXH64_mergeRound(i64 noundef %498, i64 noundef %499)
  store i64 %500, ptr %64, align 8
  br label %504

501:                                              ; preds = %296
  %502 = load i64, ptr %59, align 8
  %503 = add i64 %502, 2870177450012600261
  store i64 %503, ptr %64, align 8
  br label %504

504:                                              ; preds = %465, %501
  %505 = load i64, ptr %58, align 8
  %506 = load i64, ptr %64, align 8
  %507 = add i64 %506, %505
  store i64 %507, ptr %64, align 8
  %508 = load i64, ptr %64, align 8
  %509 = load ptr, ptr %62, align 8
  %510 = load i64, ptr %58, align 8
  %511 = load i32, ptr %60, align 4
  %512 = load i32, ptr %61, align 4
  %513 = call i64 @XXH64_finalize(i64 noundef %508, ptr noundef %509, i64 noundef %510, i32 noundef %511, i32 noundef %512)
  store i64 %513, ptr %70, align 8
  br label %514

514:                                              ; preds = %504, %286
  %515 = load i64, ptr %70, align 8
  ret i64 %515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @XXH64_createState() #0 {
  %1 = call ptr @XXH_malloc(i64 noundef 88)
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH64_freeState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @XXH_free(ptr noundef %3)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XXH64_copyState(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %6, i64 88, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH64_reset(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.XXH64_state_s, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 88, i1 false)
  %6 = load i64, ptr %4, align 8
  %7 = add i64 %6, -7046029288634856825
  %8 = add i64 %7, -4417276706812531889
  %9 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %5, i32 0, i32 1
  store i64 %8, ptr %9, align 8
  %10 = load i64, ptr %4, align 8
  %11 = add i64 %10, -4417276706812531889
  %12 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %5, i32 0, i32 2
  store i64 %11, ptr %12, align 8
  %13 = load i64, ptr %4, align 8
  %14 = add i64 %13, 0
  %15 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %5, i32 0, i32 3
  store i64 %14, ptr %15, align 8
  %16 = load i64, ptr %4, align 8
  %17 = sub i64 %16, -7046029288634856825
  %18 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %5, i32 0, i32 4
  store i64 %17, ptr %18, align 8
  %19 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %5, i64 80, i1 false)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store ptr %0, ptr %13, align 8
  store ptr %1, ptr %14, align 8
  store i64 %2, ptr %15, align 8
  %23 = load ptr, ptr %14, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 1, ptr %12, align 4
  br label %301

26:                                               ; preds = %3
  %27 = load ptr, ptr %14, align 8
  store ptr %27, ptr %16, align 8
  %28 = load ptr, ptr %16, align 8
  %29 = load i64, ptr %15, align 8
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 %29
  store ptr %30, ptr %17, align 8
  %31 = load i64, ptr %15, align 8
  %32 = load ptr, ptr %13, align 8
  %33 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %32, i32 0, i32 0
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, ptr %33, align 8
  %36 = load ptr, ptr %13, align 8
  %37 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %36, i32 0, i32 6
  %38 = load i32, ptr %37, align 8
  %39 = zext i32 %38 to i64
  %40 = load i64, ptr %15, align 8
  %41 = add i64 %39, %40
  %42 = icmp ult i64 %41, 32
  br i1 %42, label %43, label %61

43:                                               ; preds = %26
  %44 = load ptr, ptr %13, align 8
  %45 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %44, i32 0, i32 5
  %46 = getelementptr inbounds [4 x i64], ptr %45, i64 0, i64 0
  %47 = load ptr, ptr %13, align 8
  %48 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %47, i32 0, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw i8, ptr %46, i64 %50
  %52 = load ptr, ptr %14, align 8
  %53 = load i64, ptr %15, align 8
  %54 = call ptr @XXH_memcpy(ptr noundef %51, ptr noundef %52, i64 noundef %53)
  %55 = load i64, ptr %15, align 8
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %13, align 8
  %58 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %57, i32 0, i32 6
  %59 = load i32, ptr %58, align 8
  %60 = add i32 %59, %56
  store i32 %60, ptr %58, align 8
  store i32 0, ptr %12, align 4
  br label %301

61:                                               ; preds = %26
  %62 = load ptr, ptr %13, align 8
  %63 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %62, i32 0, i32 6
  %64 = load i32, ptr %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %175

66:                                               ; preds = %61
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %67, i32 0, i32 5
  %69 = getelementptr inbounds [4 x i64], ptr %68, i64 0, i64 0
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %70, i32 0, i32 6
  %72 = load i32, ptr %71, align 8
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds nuw i8, ptr %69, i64 %73
  %75 = load ptr, ptr %14, align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %76, i32 0, i32 6
  %78 = load i32, ptr %77, align 8
  %79 = sub i32 32, %78
  %80 = zext i32 %79 to i64
  %81 = call ptr @XXH_memcpy(ptr noundef %74, ptr noundef %75, i64 noundef %80)
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %82, i32 0, i32 1
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %13, align 8
  %86 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %85, i32 0, i32 5
  %87 = getelementptr inbounds [4 x i64], ptr %86, i64 0, i64 0
  %88 = getelementptr inbounds i64, ptr %87, i64 0
  store ptr %88, ptr %4, align 8
  %89 = call i32 @XXH_isLittleEndian()
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %66
  %92 = load ptr, ptr %4, align 8
  %93 = call i64 @XXH_read64(ptr noundef %92)
  br label %98

94:                                               ; preds = %66
  %95 = load ptr, ptr %4, align 8
  %96 = call i64 @XXH_read64(ptr noundef %95)
  %97 = call i64 @XXH_swap64(i64 noundef %96)
  br label %98

98:                                               ; preds = %91, %94
  %99 = phi i64 [ %93, %91 ], [ %97, %94 ]
  %100 = call i64 @XXH64_round(i64 noundef %84, i64 noundef %99)
  %101 = load ptr, ptr %13, align 8
  %102 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %101, i32 0, i32 1
  store i64 %100, ptr %102, align 8
  %103 = load ptr, ptr %13, align 8
  %104 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %103, i32 0, i32 2
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %13, align 8
  %107 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %106, i32 0, i32 5
  %108 = getelementptr inbounds [4 x i64], ptr %107, i64 0, i64 0
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  store ptr %109, ptr %5, align 8
  %110 = call i32 @XXH_isLittleEndian()
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %98
  %113 = load ptr, ptr %5, align 8
  %114 = call i64 @XXH_read64(ptr noundef %113)
  br label %119

115:                                              ; preds = %98
  %116 = load ptr, ptr %5, align 8
  %117 = call i64 @XXH_read64(ptr noundef %116)
  %118 = call i64 @XXH_swap64(i64 noundef %117)
  br label %119

119:                                              ; preds = %112, %115
  %120 = phi i64 [ %114, %112 ], [ %118, %115 ]
  %121 = call i64 @XXH64_round(i64 noundef %105, i64 noundef %120)
  %122 = load ptr, ptr %13, align 8
  %123 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %122, i32 0, i32 2
  store i64 %121, ptr %123, align 8
  %124 = load ptr, ptr %13, align 8
  %125 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %124, i32 0, i32 3
  %126 = load i64, ptr %125, align 8
  %127 = load ptr, ptr %13, align 8
  %128 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %127, i32 0, i32 5
  %129 = getelementptr inbounds [4 x i64], ptr %128, i64 0, i64 0
  %130 = getelementptr inbounds i64, ptr %129, i64 2
  store ptr %130, ptr %6, align 8
  %131 = call i32 @XXH_isLittleEndian()
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %119
  %134 = load ptr, ptr %6, align 8
  %135 = call i64 @XXH_read64(ptr noundef %134)
  br label %140

136:                                              ; preds = %119
  %137 = load ptr, ptr %6, align 8
  %138 = call i64 @XXH_read64(ptr noundef %137)
  %139 = call i64 @XXH_swap64(i64 noundef %138)
  br label %140

140:                                              ; preds = %133, %136
  %141 = phi i64 [ %135, %133 ], [ %139, %136 ]
  %142 = call i64 @XXH64_round(i64 noundef %126, i64 noundef %141)
  %143 = load ptr, ptr %13, align 8
  %144 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %143, i32 0, i32 3
  store i64 %142, ptr %144, align 8
  %145 = load ptr, ptr %13, align 8
  %146 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %145, i32 0, i32 4
  %147 = load i64, ptr %146, align 8
  %148 = load ptr, ptr %13, align 8
  %149 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %148, i32 0, i32 5
  %150 = getelementptr inbounds [4 x i64], ptr %149, i64 0, i64 0
  %151 = getelementptr inbounds i64, ptr %150, i64 3
  store ptr %151, ptr %7, align 8
  %152 = call i32 @XXH_isLittleEndian()
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %140
  %155 = load ptr, ptr %7, align 8
  %156 = call i64 @XXH_read64(ptr noundef %155)
  br label %161

157:                                              ; preds = %140
  %158 = load ptr, ptr %7, align 8
  %159 = call i64 @XXH_read64(ptr noundef %158)
  %160 = call i64 @XXH_swap64(i64 noundef %159)
  br label %161

161:                                              ; preds = %154, %157
  %162 = phi i64 [ %156, %154 ], [ %160, %157 ]
  %163 = call i64 @XXH64_round(i64 noundef %147, i64 noundef %162)
  %164 = load ptr, ptr %13, align 8
  %165 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %164, i32 0, i32 4
  store i64 %163, ptr %165, align 8
  %166 = load ptr, ptr %13, align 8
  %167 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %166, i32 0, i32 6
  %168 = load i32, ptr %167, align 8
  %169 = sub i32 32, %168
  %170 = load ptr, ptr %16, align 8
  %171 = zext i32 %169 to i64
  %172 = getelementptr inbounds nuw i8, ptr %170, i64 %171
  store ptr %172, ptr %16, align 8
  %173 = load ptr, ptr %13, align 8
  %174 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %173, i32 0, i32 6
  store i32 0, ptr %174, align 8
  br label %175

175:                                              ; preds = %161, %61
  %176 = load ptr, ptr %16, align 8
  %177 = getelementptr inbounds i8, ptr %176, i64 32
  %178 = load ptr, ptr %17, align 8
  %179 = icmp ule ptr %177, %178
  br i1 %179, label %180, label %277

180:                                              ; preds = %175
  %181 = load ptr, ptr %17, align 8
  %182 = getelementptr inbounds i8, ptr %181, i64 -32
  store ptr %182, ptr %18, align 8
  %183 = load ptr, ptr %13, align 8
  %184 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %183, i32 0, i32 1
  %185 = load i64, ptr %184, align 8
  store i64 %185, ptr %19, align 8
  %186 = load ptr, ptr %13, align 8
  %187 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %186, i32 0, i32 2
  %188 = load i64, ptr %187, align 8
  store i64 %188, ptr %20, align 8
  %189 = load ptr, ptr %13, align 8
  %190 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %189, i32 0, i32 3
  %191 = load i64, ptr %190, align 8
  store i64 %191, ptr %21, align 8
  %192 = load ptr, ptr %13, align 8
  %193 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %192, i32 0, i32 4
  %194 = load i64, ptr %193, align 8
  store i64 %194, ptr %22, align 8
  br label %195

195:                                              ; preds = %260, %180
  %196 = load i64, ptr %19, align 8
  %197 = load ptr, ptr %16, align 8
  store ptr %197, ptr %8, align 8
  %198 = call i32 @XXH_isLittleEndian()
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load ptr, ptr %8, align 8
  %202 = call i64 @XXH_read64(ptr noundef %201)
  br label %207

203:                                              ; preds = %195
  %204 = load ptr, ptr %8, align 8
  %205 = call i64 @XXH_read64(ptr noundef %204)
  %206 = call i64 @XXH_swap64(i64 noundef %205)
  br label %207

207:                                              ; preds = %200, %203
  %208 = phi i64 [ %202, %200 ], [ %206, %203 ]
  %209 = call i64 @XXH64_round(i64 noundef %196, i64 noundef %208)
  store i64 %209, ptr %19, align 8
  %210 = load ptr, ptr %16, align 8
  %211 = getelementptr inbounds i8, ptr %210, i64 8
  store ptr %211, ptr %16, align 8
  %212 = load i64, ptr %20, align 8
  %213 = load ptr, ptr %16, align 8
  store ptr %213, ptr %9, align 8
  %214 = call i32 @XXH_isLittleEndian()
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %207
  %217 = load ptr, ptr %9, align 8
  %218 = call i64 @XXH_read64(ptr noundef %217)
  br label %223

219:                                              ; preds = %207
  %220 = load ptr, ptr %9, align 8
  %221 = call i64 @XXH_read64(ptr noundef %220)
  %222 = call i64 @XXH_swap64(i64 noundef %221)
  br label %223

223:                                              ; preds = %216, %219
  %224 = phi i64 [ %218, %216 ], [ %222, %219 ]
  %225 = call i64 @XXH64_round(i64 noundef %212, i64 noundef %224)
  store i64 %225, ptr %20, align 8
  %226 = load ptr, ptr %16, align 8
  %227 = getelementptr inbounds i8, ptr %226, i64 8
  store ptr %227, ptr %16, align 8
  %228 = load i64, ptr %21, align 8
  %229 = load ptr, ptr %16, align 8
  store ptr %229, ptr %10, align 8
  %230 = call i32 @XXH_isLittleEndian()
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %223
  %233 = load ptr, ptr %10, align 8
  %234 = call i64 @XXH_read64(ptr noundef %233)
  br label %239

235:                                              ; preds = %223
  %236 = load ptr, ptr %10, align 8
  %237 = call i64 @XXH_read64(ptr noundef %236)
  %238 = call i64 @XXH_swap64(i64 noundef %237)
  br label %239

239:                                              ; preds = %232, %235
  %240 = phi i64 [ %234, %232 ], [ %238, %235 ]
  %241 = call i64 @XXH64_round(i64 noundef %228, i64 noundef %240)
  store i64 %241, ptr %21, align 8
  %242 = load ptr, ptr %16, align 8
  %243 = getelementptr inbounds i8, ptr %242, i64 8
  store ptr %243, ptr %16, align 8
  %244 = load i64, ptr %22, align 8
  %245 = load ptr, ptr %16, align 8
  store ptr %245, ptr %11, align 8
  %246 = call i32 @XXH_isLittleEndian()
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %239
  %249 = load ptr, ptr %11, align 8
  %250 = call i64 @XXH_read64(ptr noundef %249)
  br label %255

251:                                              ; preds = %239
  %252 = load ptr, ptr %11, align 8
  %253 = call i64 @XXH_read64(ptr noundef %252)
  %254 = call i64 @XXH_swap64(i64 noundef %253)
  br label %255

255:                                              ; preds = %248, %251
  %256 = phi i64 [ %250, %248 ], [ %254, %251 ]
  %257 = call i64 @XXH64_round(i64 noundef %244, i64 noundef %256)
  store i64 %257, ptr %22, align 8
  %258 = load ptr, ptr %16, align 8
  %259 = getelementptr inbounds i8, ptr %258, i64 8
  store ptr %259, ptr %16, align 8
  br label %260

260:                                              ; preds = %255
  %261 = load ptr, ptr %16, align 8
  %262 = load ptr, ptr %18, align 8
  %263 = icmp ule ptr %261, %262
  br i1 %263, label %195, label %264

264:                                              ; preds = %260
  %265 = load i64, ptr %19, align 8
  %266 = load ptr, ptr %13, align 8
  %267 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %266, i32 0, i32 1
  store i64 %265, ptr %267, align 8
  %268 = load i64, ptr %20, align 8
  %269 = load ptr, ptr %13, align 8
  %270 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %269, i32 0, i32 2
  store i64 %268, ptr %270, align 8
  %271 = load i64, ptr %21, align 8
  %272 = load ptr, ptr %13, align 8
  %273 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %272, i32 0, i32 3
  store i64 %271, ptr %273, align 8
  %274 = load i64, ptr %22, align 8
  %275 = load ptr, ptr %13, align 8
  %276 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %275, i32 0, i32 4
  store i64 %274, ptr %276, align 8
  br label %277

277:                                              ; preds = %264, %175
  %278 = load ptr, ptr %16, align 8
  %279 = load ptr, ptr %17, align 8
  %280 = icmp ult ptr %278, %279
  br i1 %280, label %281, label %300

281:                                              ; preds = %277
  %282 = load ptr, ptr %13, align 8
  %283 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %282, i32 0, i32 5
  %284 = getelementptr inbounds [4 x i64], ptr %283, i64 0, i64 0
  %285 = load ptr, ptr %16, align 8
  %286 = load ptr, ptr %17, align 8
  %287 = load ptr, ptr %16, align 8
  %288 = ptrtoint ptr %286 to i64
  %289 = ptrtoint ptr %287 to i64
  %290 = sub i64 %288, %289
  %291 = call ptr @XXH_memcpy(ptr noundef %284, ptr noundef %285, i64 noundef %290)
  %292 = load ptr, ptr %17, align 8
  %293 = load ptr, ptr %16, align 8
  %294 = ptrtoint ptr %292 to i64
  %295 = ptrtoint ptr %293 to i64
  %296 = sub i64 %294, %295
  %297 = trunc i64 %296 to i32
  %298 = load ptr, ptr %13, align 8
  %299 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %298, i32 0, i32 6
  store i32 %297, ptr %299, align 8
  br label %300

300:                                              ; preds = %281, %277
  store i32 0, ptr %12, align 4
  br label %301

301:                                              ; preds = %300, %43, %25
  %302 = load i32, ptr %12, align 4
  ret i32 %302
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH64_round(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = mul i64 %5, -4417276706812531889
  %7 = load i64, ptr %3, align 8
  %8 = add i64 %7, %6
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = shl i64 %9, 31
  %11 = load i64, ptr %3, align 8
  %12 = lshr i64 %11, 33
  %13 = or i64 %10, %12
  store i64 %13, ptr %3, align 8
  %14 = load i64, ptr %3, align 8
  %15 = mul i64 %14, -7046029288634856825
  store i64 %15, ptr %3, align 8
  %16 = load i64, ptr %3, align 8
  ret i64 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XXH64_digest(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  store ptr %0, ptr %17, align 8
  %19 = call i32 @XXH_isLittleEndian()
  store i32 %19, ptr %18, align 4
  %20 = load i32, ptr %18, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %92

22:                                               ; preds = %1
  %23 = load ptr, ptr %17, align 8
  store ptr %23, ptr %2, align 8
  store i32 1, ptr %3, align 4
  %24 = load ptr, ptr %2, align 8
  %25 = load i64, ptr %24, align 8
  %26 = icmp uge i64 %25, 32
  br i1 %26, label %27, label %75

27:                                               ; preds = %22
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %28, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  store i64 %30, ptr %5, align 8
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %31, i32 0, i32 2
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %6, align 8
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %34, i32 0, i32 3
  %36 = load i64, ptr %35, align 8
  store i64 %36, ptr %7, align 8
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %37, i32 0, i32 4
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %8, align 8
  %40 = load i64, ptr %5, align 8
  %41 = shl i64 %40, 1
  %42 = load i64, ptr %5, align 8
  %43 = lshr i64 %42, 63
  %44 = or i64 %41, %43
  %45 = load i64, ptr %6, align 8
  %46 = shl i64 %45, 7
  %47 = load i64, ptr %6, align 8
  %48 = lshr i64 %47, 57
  %49 = or i64 %46, %48
  %50 = add i64 %44, %49
  %51 = load i64, ptr %7, align 8
  %52 = shl i64 %51, 12
  %53 = load i64, ptr %7, align 8
  %54 = lshr i64 %53, 52
  %55 = or i64 %52, %54
  %56 = add i64 %50, %55
  %57 = load i64, ptr %8, align 8
  %58 = shl i64 %57, 18
  %59 = load i64, ptr %8, align 8
  %60 = lshr i64 %59, 46
  %61 = or i64 %58, %60
  %62 = add i64 %56, %61
  store i64 %62, ptr %4, align 8
  %63 = load i64, ptr %4, align 8
  %64 = load i64, ptr %5, align 8
  %65 = call i64 @XXH64_mergeRound(i64 noundef %63, i64 noundef %64)
  store i64 %65, ptr %4, align 8
  %66 = load i64, ptr %4, align 8
  %67 = load i64, ptr %6, align 8
  %68 = call i64 @XXH64_mergeRound(i64 noundef %66, i64 noundef %67)
  store i64 %68, ptr %4, align 8
  %69 = load i64, ptr %4, align 8
  %70 = load i64, ptr %7, align 8
  %71 = call i64 @XXH64_mergeRound(i64 noundef %69, i64 noundef %70)
  store i64 %71, ptr %4, align 8
  %72 = load i64, ptr %4, align 8
  %73 = load i64, ptr %8, align 8
  %74 = call i64 @XXH64_mergeRound(i64 noundef %72, i64 noundef %73)
  store i64 %74, ptr %4, align 8
  br label %80

75:                                               ; preds = %22
  %76 = load ptr, ptr %2, align 8
  %77 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %76, i32 0, i32 3
  %78 = load i64, ptr %77, align 8
  %79 = add i64 %78, 2870177450012600261
  store i64 %79, ptr %4, align 8
  br label %80

80:                                               ; preds = %27, %75
  %81 = load ptr, ptr %2, align 8
  %82 = load i64, ptr %81, align 8
  %83 = load i64, ptr %4, align 8
  %84 = add i64 %83, %82
  store i64 %84, ptr %4, align 8
  %85 = load i64, ptr %4, align 8
  %86 = load ptr, ptr %2, align 8
  %87 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %86, i32 0, i32 5
  %88 = load ptr, ptr %2, align 8
  %89 = load i64, ptr %88, align 8
  %90 = load i32, ptr %3, align 4
  %91 = call i64 @XXH64_finalize(i64 noundef %85, ptr noundef %87, i64 noundef %89, i32 noundef %90, i32 noundef 0)
  store i64 %91, ptr %16, align 8
  br label %162

92:                                               ; preds = %1
  %93 = load ptr, ptr %17, align 8
  store ptr %93, ptr %9, align 8
  store i32 0, ptr %10, align 4
  %94 = load ptr, ptr %9, align 8
  %95 = load i64, ptr %94, align 8
  %96 = icmp uge i64 %95, 32
  br i1 %96, label %97, label %145

97:                                               ; preds = %92
  %98 = load ptr, ptr %9, align 8
  %99 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %98, i32 0, i32 1
  %100 = load i64, ptr %99, align 8
  store i64 %100, ptr %12, align 8
  %101 = load ptr, ptr %9, align 8
  %102 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %101, i32 0, i32 2
  %103 = load i64, ptr %102, align 8
  store i64 %103, ptr %13, align 8
  %104 = load ptr, ptr %9, align 8
  %105 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %104, i32 0, i32 3
  %106 = load i64, ptr %105, align 8
  store i64 %106, ptr %14, align 8
  %107 = load ptr, ptr %9, align 8
  %108 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %107, i32 0, i32 4
  %109 = load i64, ptr %108, align 8
  store i64 %109, ptr %15, align 8
  %110 = load i64, ptr %12, align 8
  %111 = shl i64 %110, 1
  %112 = load i64, ptr %12, align 8
  %113 = lshr i64 %112, 63
  %114 = or i64 %111, %113
  %115 = load i64, ptr %13, align 8
  %116 = shl i64 %115, 7
  %117 = load i64, ptr %13, align 8
  %118 = lshr i64 %117, 57
  %119 = or i64 %116, %118
  %120 = add i64 %114, %119
  %121 = load i64, ptr %14, align 8
  %122 = shl i64 %121, 12
  %123 = load i64, ptr %14, align 8
  %124 = lshr i64 %123, 52
  %125 = or i64 %122, %124
  %126 = add i64 %120, %125
  %127 = load i64, ptr %15, align 8
  %128 = shl i64 %127, 18
  %129 = load i64, ptr %15, align 8
  %130 = lshr i64 %129, 46
  %131 = or i64 %128, %130
  %132 = add i64 %126, %131
  store i64 %132, ptr %11, align 8
  %133 = load i64, ptr %11, align 8
  %134 = load i64, ptr %12, align 8
  %135 = call i64 @XXH64_mergeRound(i64 noundef %133, i64 noundef %134)
  store i64 %135, ptr %11, align 8
  %136 = load i64, ptr %11, align 8
  %137 = load i64, ptr %13, align 8
  %138 = call i64 @XXH64_mergeRound(i64 noundef %136, i64 noundef %137)
  store i64 %138, ptr %11, align 8
  %139 = load i64, ptr %11, align 8
  %140 = load i64, ptr %14, align 8
  %141 = call i64 @XXH64_mergeRound(i64 noundef %139, i64 noundef %140)
  store i64 %141, ptr %11, align 8
  %142 = load i64, ptr %11, align 8
  %143 = load i64, ptr %15, align 8
  %144 = call i64 @XXH64_mergeRound(i64 noundef %142, i64 noundef %143)
  store i64 %144, ptr %11, align 8
  br label %150

145:                                              ; preds = %92
  %146 = load ptr, ptr %9, align 8
  %147 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %146, i32 0, i32 3
  %148 = load i64, ptr %147, align 8
  %149 = add i64 %148, 2870177450012600261
  store i64 %149, ptr %11, align 8
  br label %150

150:                                              ; preds = %97, %145
  %151 = load ptr, ptr %9, align 8
  %152 = load i64, ptr %151, align 8
  %153 = load i64, ptr %11, align 8
  %154 = add i64 %153, %152
  store i64 %154, ptr %11, align 8
  %155 = load i64, ptr %11, align 8
  %156 = load ptr, ptr %9, align 8
  %157 = getelementptr inbounds nuw %struct.XXH64_state_s, ptr %156, i32 0, i32 5
  %158 = load ptr, ptr %9, align 8
  %159 = load i64, ptr %158, align 8
  %160 = load i32, ptr %10, align 4
  %161 = call i64 @XXH64_finalize(i64 noundef %155, ptr noundef %157, i64 noundef %159, i32 noundef %160, i32 noundef 0)
  store i64 %161, ptr %16, align 8
  br label %162

162:                                              ; preds = %150, %80
  %163 = load i64, ptr %16, align 8
  ret i64 %163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XXH64_canonicalFromHash(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = call i32 @XXH_isLittleEndian()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i64, ptr %4, align 8
  %9 = call i64 @XXH_swap64(i64 noundef %8)
  store i64 %9, ptr %4, align 8
  br label %10

10:                                               ; preds = %7, %2
  %11 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 8 %4, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_swap64(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = shl i64 %3, 56
  %5 = and i64 %4, -72057594037927936
  %6 = load i64, ptr %2, align 8
  %7 = shl i64 %6, 40
  %8 = and i64 %7, 71776119061217280
  %9 = or i64 %5, %8
  %10 = load i64, ptr %2, align 8
  %11 = shl i64 %10, 24
  %12 = and i64 %11, 280375465082880
  %13 = or i64 %9, %12
  %14 = load i64, ptr %2, align 8
  %15 = shl i64 %14, 8
  %16 = and i64 %15, 1095216660480
  %17 = or i64 %13, %16
  %18 = load i64, ptr %2, align 8
  %19 = lshr i64 %18, 8
  %20 = and i64 %19, 4278190080
  %21 = or i64 %17, %20
  %22 = load i64, ptr %2, align 8
  %23 = lshr i64 %22, 24
  %24 = and i64 %23, 16711680
  %25 = or i64 %21, %24
  %26 = load i64, ptr %2, align 8
  %27 = lshr i64 %26, 40
  %28 = and i64 %27, 65280
  %29 = or i64 %25, %28
  %30 = load i64, ptr %2, align 8
  %31 = lshr i64 %30, 56
  %32 = and i64 %31, 255
  %33 = or i64 %29, %32
  ret i64 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XXH64_hashFromCanonical(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @XXH_readBE64(ptr noundef %3)
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_readBE64(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 @XXH_isLittleEndian()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = call i64 @XXH_read64(ptr noundef %6)
  %8 = call i64 @XXH_swap64(i64 noundef %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = call i64 @XXH_read64(ptr noundef %10)
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i64 [ %8, %5 ], [ %11, %9 ]
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i64, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca i64, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca i64, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca i64, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca i64, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca i64, align 8
  %47 = alloca ptr, align 8
  %48 = alloca ptr, align 8
  %49 = alloca i64, align 8
  %50 = alloca ptr, align 8
  %51 = alloca ptr, align 8
  %52 = alloca i64, align 8
  %53 = alloca ptr, align 8
  %54 = alloca ptr, align 8
  %55 = alloca i64, align 8
  %56 = alloca ptr, align 8
  %57 = alloca ptr, align 8
  %58 = alloca ptr, align 8
  %59 = alloca i64, align 8
  %60 = alloca ptr, align 8
  %61 = alloca i64, align 8
  %62 = alloca ptr, align 8
  %63 = alloca i8, align 1
  %64 = alloca i8, align 1
  %65 = alloca i8, align 1
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i64, align 8
  %69 = alloca ptr, align 8
  %70 = alloca ptr, align 8
  %71 = alloca ptr, align 8
  %72 = alloca i64, align 8
  %73 = alloca ptr, align 8
  %74 = alloca i64, align 8
  %75 = alloca ptr, align 8
  %76 = alloca i64, align 8
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca ptr, align 8
  %80 = alloca ptr, align 8
  %81 = alloca ptr, align 8
  %82 = alloca i64, align 8
  %83 = alloca ptr, align 8
  %84 = alloca i64, align 8
  %85 = alloca ptr, align 8
  %86 = alloca i64, align 8
  %87 = alloca i64, align 8
  %88 = alloca i64, align 8
  %89 = alloca ptr, align 8
  %90 = alloca ptr, align 8
  %91 = alloca ptr, align 8
  %92 = alloca ptr, align 8
  %93 = alloca ptr, align 8
  %94 = alloca ptr, align 8
  %95 = alloca ptr, align 8
  %96 = alloca ptr, align 8
  %97 = alloca ptr, align 8
  %98 = alloca ptr, align 8
  %99 = alloca ptr, align 8
  %100 = alloca ptr, align 8
  %101 = alloca ptr, align 8
  %102 = alloca ptr, align 8
  %103 = alloca ptr, align 8
  %104 = alloca ptr, align 8
  %105 = alloca ptr, align 8
  %106 = alloca ptr, align 8
  %107 = alloca ptr, align 8
  %108 = alloca ptr, align 8
  %109 = alloca ptr, align 8
  %110 = alloca ptr, align 8
  %111 = alloca ptr, align 8
  %112 = alloca ptr, align 8
  %113 = alloca ptr, align 8
  %114 = alloca ptr, align 8
  %115 = alloca ptr, align 8
  %116 = alloca ptr, align 8
  %117 = alloca ptr, align 8
  %118 = alloca ptr, align 8
  %119 = alloca ptr, align 8
  %120 = alloca ptr, align 8
  %121 = alloca ptr, align 8
  %122 = alloca ptr, align 8
  %123 = alloca ptr, align 8
  %124 = alloca ptr, align 8
  %125 = alloca ptr, align 8
  %126 = alloca ptr, align 8
  %127 = alloca ptr, align 8
  %128 = alloca ptr, align 8
  %129 = alloca i64, align 8
  %130 = alloca ptr, align 8
  %131 = alloca i64, align 8
  %132 = alloca i64, align 8
  %133 = alloca i64, align 8
  %134 = alloca ptr, align 8
  %135 = alloca i64, align 8
  %136 = alloca i64, align 8
  %137 = alloca ptr, align 8
  %138 = alloca ptr, align 8
  %139 = alloca i64, align 8
  store ptr %0, ptr %134, align 8
  store i64 %1, ptr %135, align 8
  store i64 %2, ptr %136, align 8
  %140 = load ptr, ptr %134, align 8
  store ptr %140, ptr %137, align 8
  store ptr @kKey, ptr %138, align 8
  %141 = load i64, ptr %135, align 8
  %142 = icmp ule i64 %141, 16
  br i1 %142, label %143, label %342

143:                                              ; preds = %3
  %144 = load ptr, ptr %134, align 8
  %145 = load i64, ptr %135, align 8
  %146 = load i64, ptr %136, align 8
  store ptr %144, ptr %130, align 8
  store i64 %145, ptr %131, align 8
  store i64 %146, ptr %132, align 8
  %147 = load i64, ptr %131, align 8
  %148 = icmp ugt i64 %147, 8
  br i1 %148, label %149, label %233

149:                                              ; preds = %143
  %150 = load ptr, ptr %130, align 8
  %151 = load i64, ptr %131, align 8
  %152 = load i64, ptr %132, align 8
  store ptr %150, ptr %81, align 8
  store i64 %151, ptr %82, align 8
  store ptr @kKey, ptr %83, align 8
  store i64 %152, ptr %84, align 8
  %153 = load ptr, ptr %83, align 8
  store ptr %153, ptr %85, align 8
  %154 = load i64, ptr %82, align 8
  %155 = load i64, ptr %84, align 8
  %156 = add i64 %154, %155
  %157 = mul i64 -7046029288634856825, %156
  store i64 %157, ptr %86, align 8
  %158 = load ptr, ptr %81, align 8
  store ptr %158, ptr %79, align 8
  %159 = call i32 @XXH_isLittleEndian()
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %149
  %162 = load ptr, ptr %79, align 8
  %163 = call i64 @XXH_read64(ptr noundef %162)
  br label %168

164:                                              ; preds = %149
  %165 = load ptr, ptr %79, align 8
  %166 = call i64 @XXH_read64(ptr noundef %165)
  %167 = call i64 @XXH_swap64(i64 noundef %166)
  br label %168

168:                                              ; preds = %164, %161
  %169 = phi i64 [ %163, %161 ], [ %167, %164 ]
  %170 = load ptr, ptr %85, align 8
  store ptr %170, ptr %53, align 8
  %171 = call i32 @XXH_isLittleEndian()
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load ptr, ptr %53, align 8
  %175 = load i64, ptr %174, align 8
  store i64 %175, ptr %52, align 8
  br label %187

176:                                              ; preds = %168
  %177 = load ptr, ptr %53, align 8
  store ptr %177, ptr %54, align 8
  %178 = load ptr, ptr %54, align 8
  %179 = load i32, ptr %178, align 4
  %180 = zext i32 %179 to i64
  %181 = load ptr, ptr %54, align 8
  %182 = getelementptr inbounds i32, ptr %181, i64 1
  %183 = load i32, ptr %182, align 4
  %184 = zext i32 %183 to i64
  %185 = shl i64 %184, 32
  %186 = add i64 %180, %185
  store i64 %186, ptr %52, align 8
  br label %187

187:                                              ; preds = %173, %176
  %188 = load i64, ptr %52, align 8
  %189 = add i64 %169, %188
  store i64 %189, ptr %87, align 8
  %190 = load ptr, ptr %81, align 8
  %191 = load i64, ptr %82, align 8
  %192 = getelementptr inbounds nuw i8, ptr %190, i64 %191
  %193 = getelementptr inbounds i8, ptr %192, i64 -8
  store ptr %193, ptr %80, align 8
  %194 = call i32 @XXH_isLittleEndian()
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %187
  %197 = load ptr, ptr %80, align 8
  %198 = call i64 @XXH_read64(ptr noundef %197)
  br label %203

199:                                              ; preds = %187
  %200 = load ptr, ptr %80, align 8
  %201 = call i64 @XXH_read64(ptr noundef %200)
  %202 = call i64 @XXH_swap64(i64 noundef %201)
  br label %203

203:                                              ; preds = %196, %199
  %204 = phi i64 [ %198, %196 ], [ %202, %199 ]
  %205 = load ptr, ptr %85, align 8
  %206 = getelementptr inbounds i64, ptr %205, i64 1
  store ptr %206, ptr %56, align 8
  %207 = call i32 @XXH_isLittleEndian()
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %203
  %210 = load ptr, ptr %56, align 8
  %211 = load i64, ptr %210, align 8
  store i64 %211, ptr %55, align 8
  br label %223

212:                                              ; preds = %203
  %213 = load ptr, ptr %56, align 8
  store ptr %213, ptr %57, align 8
  %214 = load ptr, ptr %57, align 8
  %215 = load i32, ptr %214, align 4
  %216 = zext i32 %215 to i64
  %217 = load ptr, ptr %57, align 8
  %218 = getelementptr inbounds i32, ptr %217, i64 1
  %219 = load i32, ptr %218, align 4
  %220 = zext i32 %219 to i64
  %221 = shl i64 %220, 32
  %222 = add i64 %216, %221
  store i64 %222, ptr %55, align 8
  br label %223

223:                                              ; preds = %209, %212
  %224 = load i64, ptr %55, align 8
  %225 = add i64 %204, %224
  store i64 %225, ptr %88, align 8
  %226 = load i64, ptr %87, align 8
  %227 = load i64, ptr %88, align 8
  %228 = call i64 @XXH3_mul128(i64 noundef %226, i64 noundef %227)
  %229 = load i64, ptr %86, align 8
  %230 = add i64 %229, %228
  store i64 %230, ptr %86, align 8
  %231 = load i64, ptr %86, align 8
  %232 = call i64 @XXH3_avalanche(i64 noundef %231)
  store i64 %232, ptr %129, align 8
  br label %340

233:                                              ; preds = %143
  %234 = load i64, ptr %131, align 8
  %235 = icmp uge i64 %234, 4
  br i1 %235, label %236, label %288

236:                                              ; preds = %233
  %237 = load ptr, ptr %130, align 8
  %238 = load i64, ptr %131, align 8
  %239 = load i64, ptr %132, align 8
  store ptr %237, ptr %71, align 8
  store i64 %238, ptr %72, align 8
  store ptr @kKey, ptr %73, align 8
  store i64 %239, ptr %74, align 8
  %240 = load ptr, ptr %73, align 8
  store ptr %240, ptr %75, align 8
  %241 = load i64, ptr %72, align 8
  %242 = load i64, ptr %74, align 8
  %243 = add i64 %241, %242
  %244 = mul i64 -7046029288634856825, %243
  store i64 %244, ptr %76, align 8
  %245 = load ptr, ptr %71, align 8
  store ptr %245, ptr %69, align 8
  %246 = call i32 @XXH_isLittleEndian()
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %236
  %249 = load ptr, ptr %69, align 8
  %250 = call i32 @XXH_read32(ptr noundef %249)
  br label %255

251:                                              ; preds = %236
  %252 = load ptr, ptr %69, align 8
  %253 = call i32 @XXH_read32(ptr noundef %252)
  %254 = call i32 @XXH_swap32(i32 noundef %253)
  br label %255

255:                                              ; preds = %251, %248
  %256 = phi i32 [ %250, %248 ], [ %254, %251 ]
  %257 = load ptr, ptr %75, align 8
  %258 = load i32, ptr %257, align 4
  %259 = add i32 %256, %258
  store i32 %259, ptr %77, align 4
  %260 = load ptr, ptr %71, align 8
  %261 = load i64, ptr %72, align 8
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 %261
  %263 = getelementptr inbounds i8, ptr %262, i64 -4
  store ptr %263, ptr %70, align 8
  %264 = call i32 @XXH_isLittleEndian()
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %255
  %267 = load ptr, ptr %70, align 8
  %268 = call i32 @XXH_read32(ptr noundef %267)
  br label %273

269:                                              ; preds = %255
  %270 = load ptr, ptr %70, align 8
  %271 = call i32 @XXH_read32(ptr noundef %270)
  %272 = call i32 @XXH_swap32(i32 noundef %271)
  br label %273

273:                                              ; preds = %266, %269
  %274 = phi i32 [ %268, %266 ], [ %272, %269 ]
  %275 = load ptr, ptr %75, align 8
  %276 = getelementptr inbounds i32, ptr %275, i64 1
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %274, %277
  store i32 %278, ptr %78, align 4
  %279 = load i32, ptr %77, align 4
  %280 = zext i32 %279 to i64
  %281 = load i32, ptr %78, align 4
  %282 = zext i32 %281 to i64
  %283 = mul i64 %280, %282
  %284 = load i64, ptr %76, align 8
  %285 = add i64 %284, %283
  store i64 %285, ptr %76, align 8
  %286 = load i64, ptr %76, align 8
  %287 = call i64 @XXH3_avalanche(i64 noundef %286)
  store i64 %287, ptr %129, align 8
  br label %340

288:                                              ; preds = %233
  %289 = load i64, ptr %131, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %338

291:                                              ; preds = %288
  %292 = load ptr, ptr %130, align 8
  %293 = load i64, ptr %131, align 8
  %294 = load i64, ptr %132, align 8
  store ptr %292, ptr %58, align 8
  store i64 %293, ptr %59, align 8
  store ptr @kKey, ptr %60, align 8
  store i64 %294, ptr %61, align 8
  %295 = load ptr, ptr %60, align 8
  store ptr %295, ptr %62, align 8
  %296 = load ptr, ptr %58, align 8
  %297 = load i8, ptr %296, align 1
  store i8 %297, ptr %63, align 1
  %298 = load ptr, ptr %58, align 8
  %299 = load i64, ptr %59, align 8
  %300 = lshr i64 %299, 1
  %301 = getelementptr inbounds nuw i8, ptr %298, i64 %300
  %302 = load i8, ptr %301, align 1
  store i8 %302, ptr %64, align 1
  %303 = load ptr, ptr %58, align 8
  %304 = load i64, ptr %59, align 8
  %305 = sub i64 %304, 1
  %306 = getelementptr inbounds nuw i8, ptr %303, i64 %305
  %307 = load i8, ptr %306, align 1
  store i8 %307, ptr %65, align 1
  %308 = load i8, ptr %63, align 1
  %309 = zext i8 %308 to i32
  %310 = load i8, ptr %64, align 1
  %311 = zext i8 %310 to i32
  %312 = shl i32 %311, 8
  %313 = add i32 %309, %312
  store i32 %313, ptr %66, align 4
  %314 = load i64, ptr %59, align 8
  %315 = trunc i64 %314 to i32
  %316 = load i8, ptr %65, align 1
  %317 = zext i8 %316 to i32
  %318 = shl i32 %317, 2
  %319 = add i32 %315, %318
  store i32 %319, ptr %67, align 4
  %320 = load i32, ptr %66, align 4
  %321 = zext i32 %320 to i64
  %322 = load i64, ptr %61, align 8
  %323 = add i64 %321, %322
  %324 = load ptr, ptr %62, align 8
  %325 = load i32, ptr %324, align 4
  %326 = zext i32 %325 to i64
  %327 = add i64 %323, %326
  %328 = and i64 %327, 4294967295
  %329 = load i32, ptr %67, align 4
  %330 = load ptr, ptr %62, align 8
  %331 = getelementptr inbounds i32, ptr %330, i64 1
  %332 = load i32, ptr %331, align 4
  %333 = add i32 %329, %332
  %334 = zext i32 %333 to i64
  %335 = mul i64 %328, %334
  store i64 %335, ptr %68, align 8
  %336 = load i64, ptr %68, align 8
  %337 = call i64 @XXH3_avalanche(i64 noundef %336)
  store i64 %337, ptr %129, align 8
  br label %340

338:                                              ; preds = %288
  %339 = load i64, ptr %132, align 8
  store i64 %339, ptr %129, align 8
  br label %340

340:                                              ; preds = %223, %273, %291, %338
  %341 = load i64, ptr %129, align 8
  store i64 %341, ptr %133, align 8
  br label %953

342:                                              ; preds = %3
  %343 = load i64, ptr %135, align 8
  %344 = load i64, ptr %136, align 8
  %345 = add i64 %343, %344
  %346 = mul i64 -7046029288634856825, %345
  store i64 %346, ptr %139, align 8
  %347 = load i64, ptr %135, align 8
  %348 = icmp ugt i64 %347, 32
  br i1 %348, label %349, label %804

349:                                              ; preds = %342
  %350 = load i64, ptr %135, align 8
  %351 = icmp ugt i64 %350, 64
  br i1 %351, label %352, label %657

352:                                              ; preds = %349
  %353 = load i64, ptr %135, align 8
  %354 = icmp ugt i64 %353, 96
  br i1 %354, label %355, label %510

355:                                              ; preds = %352
  %356 = load i64, ptr %135, align 8
  %357 = icmp ugt i64 %356, 128
  br i1 %357, label %358, label %363

358:                                              ; preds = %355
  %359 = load ptr, ptr %134, align 8
  %360 = load i64, ptr %135, align 8
  %361 = load i64, ptr %136, align 8
  %362 = call i64 @XXH3_hashLong_64b(ptr noundef %359, i64 noundef %360, i64 noundef %361)
  store i64 %362, ptr %133, align 8
  br label %953

363:                                              ; preds = %355
  %364 = load ptr, ptr %137, align 8
  %365 = getelementptr inbounds i8, ptr %364, i64 48
  store ptr %365, ptr %91, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 12), ptr %92, align 8
  %366 = load ptr, ptr %92, align 8
  store ptr %366, ptr %93, align 8
  %367 = load ptr, ptr %91, align 8
  store ptr %367, ptr %89, align 8
  %368 = call i32 @XXH_isLittleEndian()
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %363
  %371 = load ptr, ptr %89, align 8
  %372 = call i64 @XXH_read64(ptr noundef %371)
  br label %377

373:                                              ; preds = %363
  %374 = load ptr, ptr %89, align 8
  %375 = call i64 @XXH_read64(ptr noundef %374)
  %376 = call i64 @XXH_swap64(i64 noundef %375)
  br label %377

377:                                              ; preds = %373, %370
  %378 = phi i64 [ %372, %370 ], [ %376, %373 ]
  %379 = load ptr, ptr %93, align 8
  store ptr %379, ptr %47, align 8
  %380 = call i32 @XXH_isLittleEndian()
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %377
  %383 = load ptr, ptr %47, align 8
  %384 = load i64, ptr %383, align 8
  store i64 %384, ptr %46, align 8
  br label %396

385:                                              ; preds = %377
  %386 = load ptr, ptr %47, align 8
  store ptr %386, ptr %48, align 8
  %387 = load ptr, ptr %48, align 8
  %388 = load i32, ptr %387, align 4
  %389 = zext i32 %388 to i64
  %390 = load ptr, ptr %48, align 8
  %391 = getelementptr inbounds i32, ptr %390, i64 1
  %392 = load i32, ptr %391, align 4
  %393 = zext i32 %392 to i64
  %394 = shl i64 %393, 32
  %395 = add i64 %389, %394
  store i64 %395, ptr %46, align 8
  br label %396

396:                                              ; preds = %382, %385
  %397 = load i64, ptr %46, align 8
  %398 = xor i64 %378, %397
  %399 = load ptr, ptr %91, align 8
  %400 = getelementptr inbounds i8, ptr %399, i64 8
  store ptr %400, ptr %90, align 8
  %401 = call i32 @XXH_isLittleEndian()
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %396
  %404 = load ptr, ptr %90, align 8
  %405 = call i64 @XXH_read64(ptr noundef %404)
  br label %410

406:                                              ; preds = %396
  %407 = load ptr, ptr %90, align 8
  %408 = call i64 @XXH_read64(ptr noundef %407)
  %409 = call i64 @XXH_swap64(i64 noundef %408)
  br label %410

410:                                              ; preds = %403, %406
  %411 = phi i64 [ %405, %403 ], [ %409, %406 ]
  %412 = load ptr, ptr %93, align 8
  %413 = getelementptr inbounds i64, ptr %412, i64 1
  store ptr %413, ptr %50, align 8
  %414 = call i32 @XXH_isLittleEndian()
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %410
  %417 = load ptr, ptr %50, align 8
  %418 = load i64, ptr %417, align 8
  store i64 %418, ptr %49, align 8
  br label %430

419:                                              ; preds = %410
  %420 = load ptr, ptr %50, align 8
  store ptr %420, ptr %51, align 8
  %421 = load ptr, ptr %51, align 8
  %422 = load i32, ptr %421, align 4
  %423 = zext i32 %422 to i64
  %424 = load ptr, ptr %51, align 8
  %425 = getelementptr inbounds i32, ptr %424, i64 1
  %426 = load i32, ptr %425, align 4
  %427 = zext i32 %426 to i64
  %428 = shl i64 %427, 32
  %429 = add i64 %423, %428
  store i64 %429, ptr %49, align 8
  br label %430

430:                                              ; preds = %416, %419
  %431 = load i64, ptr %49, align 8
  %432 = xor i64 %411, %431
  %433 = call i64 @XXH3_mul128(i64 noundef %398, i64 noundef %432)
  %434 = load i64, ptr %139, align 8
  %435 = add i64 %434, %433
  store i64 %435, ptr %139, align 8
  %436 = load ptr, ptr %137, align 8
  %437 = load i64, ptr %135, align 8
  %438 = getelementptr inbounds nuw i8, ptr %436, i64 %437
  %439 = getelementptr inbounds i8, ptr %438, i64 -64
  store ptr %439, ptr %96, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 14), ptr %97, align 8
  %440 = load ptr, ptr %97, align 8
  store ptr %440, ptr %98, align 8
  %441 = load ptr, ptr %96, align 8
  store ptr %441, ptr %94, align 8
  %442 = call i32 @XXH_isLittleEndian()
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %430
  %445 = load ptr, ptr %94, align 8
  %446 = call i64 @XXH_read64(ptr noundef %445)
  br label %451

447:                                              ; preds = %430
  %448 = load ptr, ptr %94, align 8
  %449 = call i64 @XXH_read64(ptr noundef %448)
  %450 = call i64 @XXH_swap64(i64 noundef %449)
  br label %451

451:                                              ; preds = %447, %444
  %452 = phi i64 [ %446, %444 ], [ %450, %447 ]
  %453 = load ptr, ptr %98, align 8
  store ptr %453, ptr %41, align 8
  %454 = call i32 @XXH_isLittleEndian()
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %459

456:                                              ; preds = %451
  %457 = load ptr, ptr %41, align 8
  %458 = load i64, ptr %457, align 8
  store i64 %458, ptr %40, align 8
  br label %470

459:                                              ; preds = %451
  %460 = load ptr, ptr %41, align 8
  store ptr %460, ptr %42, align 8
  %461 = load ptr, ptr %42, align 8
  %462 = load i32, ptr %461, align 4
  %463 = zext i32 %462 to i64
  %464 = load ptr, ptr %42, align 8
  %465 = getelementptr inbounds i32, ptr %464, i64 1
  %466 = load i32, ptr %465, align 4
  %467 = zext i32 %466 to i64
  %468 = shl i64 %467, 32
  %469 = add i64 %463, %468
  store i64 %469, ptr %40, align 8
  br label %470

470:                                              ; preds = %456, %459
  %471 = load i64, ptr %40, align 8
  %472 = xor i64 %452, %471
  %473 = load ptr, ptr %96, align 8
  %474 = getelementptr inbounds i8, ptr %473, i64 8
  store ptr %474, ptr %95, align 8
  %475 = call i32 @XXH_isLittleEndian()
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %480

477:                                              ; preds = %470
  %478 = load ptr, ptr %95, align 8
  %479 = call i64 @XXH_read64(ptr noundef %478)
  br label %484

480:                                              ; preds = %470
  %481 = load ptr, ptr %95, align 8
  %482 = call i64 @XXH_read64(ptr noundef %481)
  %483 = call i64 @XXH_swap64(i64 noundef %482)
  br label %484

484:                                              ; preds = %477, %480
  %485 = phi i64 [ %479, %477 ], [ %483, %480 ]
  %486 = load ptr, ptr %98, align 8
  %487 = getelementptr inbounds i64, ptr %486, i64 1
  store ptr %487, ptr %44, align 8
  %488 = call i32 @XXH_isLittleEndian()
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %493

490:                                              ; preds = %484
  %491 = load ptr, ptr %44, align 8
  %492 = load i64, ptr %491, align 8
  store i64 %492, ptr %43, align 8
  br label %504

493:                                              ; preds = %484
  %494 = load ptr, ptr %44, align 8
  store ptr %494, ptr %45, align 8
  %495 = load ptr, ptr %45, align 8
  %496 = load i32, ptr %495, align 4
  %497 = zext i32 %496 to i64
  %498 = load ptr, ptr %45, align 8
  %499 = getelementptr inbounds i32, ptr %498, i64 1
  %500 = load i32, ptr %499, align 4
  %501 = zext i32 %500 to i64
  %502 = shl i64 %501, 32
  %503 = add i64 %497, %502
  store i64 %503, ptr %43, align 8
  br label %504

504:                                              ; preds = %490, %493
  %505 = load i64, ptr %43, align 8
  %506 = xor i64 %485, %505
  %507 = call i64 @XXH3_mul128(i64 noundef %472, i64 noundef %506)
  %508 = load i64, ptr %139, align 8
  %509 = add i64 %508, %507
  store i64 %509, ptr %139, align 8
  br label %510

510:                                              ; preds = %504, %352
  %511 = load ptr, ptr %137, align 8
  %512 = getelementptr inbounds i8, ptr %511, i64 32
  store ptr %512, ptr %101, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 8), ptr %102, align 8
  %513 = load ptr, ptr %102, align 8
  store ptr %513, ptr %103, align 8
  %514 = load ptr, ptr %101, align 8
  store ptr %514, ptr %99, align 8
  %515 = call i32 @XXH_isLittleEndian()
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %510
  %518 = load ptr, ptr %99, align 8
  %519 = call i64 @XXH_read64(ptr noundef %518)
  br label %524

520:                                              ; preds = %510
  %521 = load ptr, ptr %99, align 8
  %522 = call i64 @XXH_read64(ptr noundef %521)
  %523 = call i64 @XXH_swap64(i64 noundef %522)
  br label %524

524:                                              ; preds = %520, %517
  %525 = phi i64 [ %519, %517 ], [ %523, %520 ]
  %526 = load ptr, ptr %103, align 8
  store ptr %526, ptr %35, align 8
  %527 = call i32 @XXH_isLittleEndian()
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %524
  %530 = load ptr, ptr %35, align 8
  %531 = load i64, ptr %530, align 8
  store i64 %531, ptr %34, align 8
  br label %543

532:                                              ; preds = %524
  %533 = load ptr, ptr %35, align 8
  store ptr %533, ptr %36, align 8
  %534 = load ptr, ptr %36, align 8
  %535 = load i32, ptr %534, align 4
  %536 = zext i32 %535 to i64
  %537 = load ptr, ptr %36, align 8
  %538 = getelementptr inbounds i32, ptr %537, i64 1
  %539 = load i32, ptr %538, align 4
  %540 = zext i32 %539 to i64
  %541 = shl i64 %540, 32
  %542 = add i64 %536, %541
  store i64 %542, ptr %34, align 8
  br label %543

543:                                              ; preds = %529, %532
  %544 = load i64, ptr %34, align 8
  %545 = xor i64 %525, %544
  %546 = load ptr, ptr %101, align 8
  %547 = getelementptr inbounds i8, ptr %546, i64 8
  store ptr %547, ptr %100, align 8
  %548 = call i32 @XXH_isLittleEndian()
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %553

550:                                              ; preds = %543
  %551 = load ptr, ptr %100, align 8
  %552 = call i64 @XXH_read64(ptr noundef %551)
  br label %557

553:                                              ; preds = %543
  %554 = load ptr, ptr %100, align 8
  %555 = call i64 @XXH_read64(ptr noundef %554)
  %556 = call i64 @XXH_swap64(i64 noundef %555)
  br label %557

557:                                              ; preds = %550, %553
  %558 = phi i64 [ %552, %550 ], [ %556, %553 ]
  %559 = load ptr, ptr %103, align 8
  %560 = getelementptr inbounds i64, ptr %559, i64 1
  store ptr %560, ptr %38, align 8
  %561 = call i32 @XXH_isLittleEndian()
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %557
  %564 = load ptr, ptr %38, align 8
  %565 = load i64, ptr %564, align 8
  store i64 %565, ptr %37, align 8
  br label %577

566:                                              ; preds = %557
  %567 = load ptr, ptr %38, align 8
  store ptr %567, ptr %39, align 8
  %568 = load ptr, ptr %39, align 8
  %569 = load i32, ptr %568, align 4
  %570 = zext i32 %569 to i64
  %571 = load ptr, ptr %39, align 8
  %572 = getelementptr inbounds i32, ptr %571, i64 1
  %573 = load i32, ptr %572, align 4
  %574 = zext i32 %573 to i64
  %575 = shl i64 %574, 32
  %576 = add i64 %570, %575
  store i64 %576, ptr %37, align 8
  br label %577

577:                                              ; preds = %563, %566
  %578 = load i64, ptr %37, align 8
  %579 = xor i64 %558, %578
  %580 = call i64 @XXH3_mul128(i64 noundef %545, i64 noundef %579)
  %581 = load i64, ptr %139, align 8
  %582 = add i64 %581, %580
  store i64 %582, ptr %139, align 8
  %583 = load ptr, ptr %137, align 8
  %584 = load i64, ptr %135, align 8
  %585 = getelementptr inbounds nuw i8, ptr %583, i64 %584
  %586 = getelementptr inbounds i8, ptr %585, i64 -48
  store ptr %586, ptr %106, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 10), ptr %107, align 8
  %587 = load ptr, ptr %107, align 8
  store ptr %587, ptr %108, align 8
  %588 = load ptr, ptr %106, align 8
  store ptr %588, ptr %104, align 8
  %589 = call i32 @XXH_isLittleEndian()
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %594

591:                                              ; preds = %577
  %592 = load ptr, ptr %104, align 8
  %593 = call i64 @XXH_read64(ptr noundef %592)
  br label %598

594:                                              ; preds = %577
  %595 = load ptr, ptr %104, align 8
  %596 = call i64 @XXH_read64(ptr noundef %595)
  %597 = call i64 @XXH_swap64(i64 noundef %596)
  br label %598

598:                                              ; preds = %594, %591
  %599 = phi i64 [ %593, %591 ], [ %597, %594 ]
  %600 = load ptr, ptr %108, align 8
  store ptr %600, ptr %29, align 8
  %601 = call i32 @XXH_isLittleEndian()
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %606

603:                                              ; preds = %598
  %604 = load ptr, ptr %29, align 8
  %605 = load i64, ptr %604, align 8
  store i64 %605, ptr %28, align 8
  br label %617

606:                                              ; preds = %598
  %607 = load ptr, ptr %29, align 8
  store ptr %607, ptr %30, align 8
  %608 = load ptr, ptr %30, align 8
  %609 = load i32, ptr %608, align 4
  %610 = zext i32 %609 to i64
  %611 = load ptr, ptr %30, align 8
  %612 = getelementptr inbounds i32, ptr %611, i64 1
  %613 = load i32, ptr %612, align 4
  %614 = zext i32 %613 to i64
  %615 = shl i64 %614, 32
  %616 = add i64 %610, %615
  store i64 %616, ptr %28, align 8
  br label %617

617:                                              ; preds = %603, %606
  %618 = load i64, ptr %28, align 8
  %619 = xor i64 %599, %618
  %620 = load ptr, ptr %106, align 8
  %621 = getelementptr inbounds i8, ptr %620, i64 8
  store ptr %621, ptr %105, align 8
  %622 = call i32 @XXH_isLittleEndian()
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %627

624:                                              ; preds = %617
  %625 = load ptr, ptr %105, align 8
  %626 = call i64 @XXH_read64(ptr noundef %625)
  br label %631

627:                                              ; preds = %617
  %628 = load ptr, ptr %105, align 8
  %629 = call i64 @XXH_read64(ptr noundef %628)
  %630 = call i64 @XXH_swap64(i64 noundef %629)
  br label %631

631:                                              ; preds = %624, %627
  %632 = phi i64 [ %626, %624 ], [ %630, %627 ]
  %633 = load ptr, ptr %108, align 8
  %634 = getelementptr inbounds i64, ptr %633, i64 1
  store ptr %634, ptr %32, align 8
  %635 = call i32 @XXH_isLittleEndian()
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %640

637:                                              ; preds = %631
  %638 = load ptr, ptr %32, align 8
  %639 = load i64, ptr %638, align 8
  store i64 %639, ptr %31, align 8
  br label %651

640:                                              ; preds = %631
  %641 = load ptr, ptr %32, align 8
  store ptr %641, ptr %33, align 8
  %642 = load ptr, ptr %33, align 8
  %643 = load i32, ptr %642, align 4
  %644 = zext i32 %643 to i64
  %645 = load ptr, ptr %33, align 8
  %646 = getelementptr inbounds i32, ptr %645, i64 1
  %647 = load i32, ptr %646, align 4
  %648 = zext i32 %647 to i64
  %649 = shl i64 %648, 32
  %650 = add i64 %644, %649
  store i64 %650, ptr %31, align 8
  br label %651

651:                                              ; preds = %637, %640
  %652 = load i64, ptr %31, align 8
  %653 = xor i64 %632, %652
  %654 = call i64 @XXH3_mul128(i64 noundef %619, i64 noundef %653)
  %655 = load i64, ptr %139, align 8
  %656 = add i64 %655, %654
  store i64 %656, ptr %139, align 8
  br label %657

657:                                              ; preds = %651, %349
  %658 = load ptr, ptr %137, align 8
  %659 = getelementptr inbounds i8, ptr %658, i64 16
  store ptr %659, ptr %111, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 4), ptr %112, align 8
  %660 = load ptr, ptr %112, align 8
  store ptr %660, ptr %113, align 8
  %661 = load ptr, ptr %111, align 8
  store ptr %661, ptr %109, align 8
  %662 = call i32 @XXH_isLittleEndian()
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %667

664:                                              ; preds = %657
  %665 = load ptr, ptr %109, align 8
  %666 = call i64 @XXH_read64(ptr noundef %665)
  br label %671

667:                                              ; preds = %657
  %668 = load ptr, ptr %109, align 8
  %669 = call i64 @XXH_read64(ptr noundef %668)
  %670 = call i64 @XXH_swap64(i64 noundef %669)
  br label %671

671:                                              ; preds = %667, %664
  %672 = phi i64 [ %666, %664 ], [ %670, %667 ]
  %673 = load ptr, ptr %113, align 8
  store ptr %673, ptr %23, align 8
  %674 = call i32 @XXH_isLittleEndian()
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %679

676:                                              ; preds = %671
  %677 = load ptr, ptr %23, align 8
  %678 = load i64, ptr %677, align 8
  store i64 %678, ptr %22, align 8
  br label %690

679:                                              ; preds = %671
  %680 = load ptr, ptr %23, align 8
  store ptr %680, ptr %24, align 8
  %681 = load ptr, ptr %24, align 8
  %682 = load i32, ptr %681, align 4
  %683 = zext i32 %682 to i64
  %684 = load ptr, ptr %24, align 8
  %685 = getelementptr inbounds i32, ptr %684, i64 1
  %686 = load i32, ptr %685, align 4
  %687 = zext i32 %686 to i64
  %688 = shl i64 %687, 32
  %689 = add i64 %683, %688
  store i64 %689, ptr %22, align 8
  br label %690

690:                                              ; preds = %676, %679
  %691 = load i64, ptr %22, align 8
  %692 = xor i64 %672, %691
  %693 = load ptr, ptr %111, align 8
  %694 = getelementptr inbounds i8, ptr %693, i64 8
  store ptr %694, ptr %110, align 8
  %695 = call i32 @XXH_isLittleEndian()
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %700

697:                                              ; preds = %690
  %698 = load ptr, ptr %110, align 8
  %699 = call i64 @XXH_read64(ptr noundef %698)
  br label %704

700:                                              ; preds = %690
  %701 = load ptr, ptr %110, align 8
  %702 = call i64 @XXH_read64(ptr noundef %701)
  %703 = call i64 @XXH_swap64(i64 noundef %702)
  br label %704

704:                                              ; preds = %697, %700
  %705 = phi i64 [ %699, %697 ], [ %703, %700 ]
  %706 = load ptr, ptr %113, align 8
  %707 = getelementptr inbounds i64, ptr %706, i64 1
  store ptr %707, ptr %26, align 8
  %708 = call i32 @XXH_isLittleEndian()
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %713

710:                                              ; preds = %704
  %711 = load ptr, ptr %26, align 8
  %712 = load i64, ptr %711, align 8
  store i64 %712, ptr %25, align 8
  br label %724

713:                                              ; preds = %704
  %714 = load ptr, ptr %26, align 8
  store ptr %714, ptr %27, align 8
  %715 = load ptr, ptr %27, align 8
  %716 = load i32, ptr %715, align 4
  %717 = zext i32 %716 to i64
  %718 = load ptr, ptr %27, align 8
  %719 = getelementptr inbounds i32, ptr %718, i64 1
  %720 = load i32, ptr %719, align 4
  %721 = zext i32 %720 to i64
  %722 = shl i64 %721, 32
  %723 = add i64 %717, %722
  store i64 %723, ptr %25, align 8
  br label %724

724:                                              ; preds = %710, %713
  %725 = load i64, ptr %25, align 8
  %726 = xor i64 %705, %725
  %727 = call i64 @XXH3_mul128(i64 noundef %692, i64 noundef %726)
  %728 = load i64, ptr %139, align 8
  %729 = add i64 %728, %727
  store i64 %729, ptr %139, align 8
  %730 = load ptr, ptr %137, align 8
  %731 = load i64, ptr %135, align 8
  %732 = getelementptr inbounds nuw i8, ptr %730, i64 %731
  %733 = getelementptr inbounds i8, ptr %732, i64 -32
  store ptr %733, ptr %116, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 6), ptr %117, align 8
  %734 = load ptr, ptr %117, align 8
  store ptr %734, ptr %118, align 8
  %735 = load ptr, ptr %116, align 8
  store ptr %735, ptr %114, align 8
  %736 = call i32 @XXH_isLittleEndian()
  %737 = icmp ne i32 %736, 0
  br i1 %737, label %738, label %741

738:                                              ; preds = %724
  %739 = load ptr, ptr %114, align 8
  %740 = call i64 @XXH_read64(ptr noundef %739)
  br label %745

741:                                              ; preds = %724
  %742 = load ptr, ptr %114, align 8
  %743 = call i64 @XXH_read64(ptr noundef %742)
  %744 = call i64 @XXH_swap64(i64 noundef %743)
  br label %745

745:                                              ; preds = %741, %738
  %746 = phi i64 [ %740, %738 ], [ %744, %741 ]
  %747 = load ptr, ptr %118, align 8
  store ptr %747, ptr %17, align 8
  %748 = call i32 @XXH_isLittleEndian()
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %750, label %753

750:                                              ; preds = %745
  %751 = load ptr, ptr %17, align 8
  %752 = load i64, ptr %751, align 8
  store i64 %752, ptr %16, align 8
  br label %764

753:                                              ; preds = %745
  %754 = load ptr, ptr %17, align 8
  store ptr %754, ptr %18, align 8
  %755 = load ptr, ptr %18, align 8
  %756 = load i32, ptr %755, align 4
  %757 = zext i32 %756 to i64
  %758 = load ptr, ptr %18, align 8
  %759 = getelementptr inbounds i32, ptr %758, i64 1
  %760 = load i32, ptr %759, align 4
  %761 = zext i32 %760 to i64
  %762 = shl i64 %761, 32
  %763 = add i64 %757, %762
  store i64 %763, ptr %16, align 8
  br label %764

764:                                              ; preds = %750, %753
  %765 = load i64, ptr %16, align 8
  %766 = xor i64 %746, %765
  %767 = load ptr, ptr %116, align 8
  %768 = getelementptr inbounds i8, ptr %767, i64 8
  store ptr %768, ptr %115, align 8
  %769 = call i32 @XXH_isLittleEndian()
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %774

771:                                              ; preds = %764
  %772 = load ptr, ptr %115, align 8
  %773 = call i64 @XXH_read64(ptr noundef %772)
  br label %778

774:                                              ; preds = %764
  %775 = load ptr, ptr %115, align 8
  %776 = call i64 @XXH_read64(ptr noundef %775)
  %777 = call i64 @XXH_swap64(i64 noundef %776)
  br label %778

778:                                              ; preds = %771, %774
  %779 = phi i64 [ %773, %771 ], [ %777, %774 ]
  %780 = load ptr, ptr %118, align 8
  %781 = getelementptr inbounds i64, ptr %780, i64 1
  store ptr %781, ptr %20, align 8
  %782 = call i32 @XXH_isLittleEndian()
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %784, label %787

784:                                              ; preds = %778
  %785 = load ptr, ptr %20, align 8
  %786 = load i64, ptr %785, align 8
  store i64 %786, ptr %19, align 8
  br label %798

787:                                              ; preds = %778
  %788 = load ptr, ptr %20, align 8
  store ptr %788, ptr %21, align 8
  %789 = load ptr, ptr %21, align 8
  %790 = load i32, ptr %789, align 4
  %791 = zext i32 %790 to i64
  %792 = load ptr, ptr %21, align 8
  %793 = getelementptr inbounds i32, ptr %792, i64 1
  %794 = load i32, ptr %793, align 4
  %795 = zext i32 %794 to i64
  %796 = shl i64 %795, 32
  %797 = add i64 %791, %796
  store i64 %797, ptr %19, align 8
  br label %798

798:                                              ; preds = %784, %787
  %799 = load i64, ptr %19, align 8
  %800 = xor i64 %779, %799
  %801 = call i64 @XXH3_mul128(i64 noundef %766, i64 noundef %800)
  %802 = load i64, ptr %139, align 8
  %803 = add i64 %802, %801
  store i64 %803, ptr %139, align 8
  br label %804

804:                                              ; preds = %798, %342
  %805 = load ptr, ptr %137, align 8
  %806 = getelementptr inbounds i8, ptr %805, i64 0
  store ptr %806, ptr %121, align 8
  store ptr @kKey, ptr %122, align 8
  %807 = load ptr, ptr %122, align 8
  store ptr %807, ptr %123, align 8
  %808 = load ptr, ptr %121, align 8
  store ptr %808, ptr %119, align 8
  %809 = call i32 @XXH_isLittleEndian()
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %811, label %814

811:                                              ; preds = %804
  %812 = load ptr, ptr %119, align 8
  %813 = call i64 @XXH_read64(ptr noundef %812)
  br label %818

814:                                              ; preds = %804
  %815 = load ptr, ptr %119, align 8
  %816 = call i64 @XXH_read64(ptr noundef %815)
  %817 = call i64 @XXH_swap64(i64 noundef %816)
  br label %818

818:                                              ; preds = %814, %811
  %819 = phi i64 [ %813, %811 ], [ %817, %814 ]
  %820 = load ptr, ptr %123, align 8
  store ptr %820, ptr %11, align 8
  %821 = call i32 @XXH_isLittleEndian()
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %823, label %826

823:                                              ; preds = %818
  %824 = load ptr, ptr %11, align 8
  %825 = load i64, ptr %824, align 8
  store i64 %825, ptr %10, align 8
  br label %837

826:                                              ; preds = %818
  %827 = load ptr, ptr %11, align 8
  store ptr %827, ptr %12, align 8
  %828 = load ptr, ptr %12, align 8
  %829 = load i32, ptr %828, align 4
  %830 = zext i32 %829 to i64
  %831 = load ptr, ptr %12, align 8
  %832 = getelementptr inbounds i32, ptr %831, i64 1
  %833 = load i32, ptr %832, align 4
  %834 = zext i32 %833 to i64
  %835 = shl i64 %834, 32
  %836 = add i64 %830, %835
  store i64 %836, ptr %10, align 8
  br label %837

837:                                              ; preds = %823, %826
  %838 = load i64, ptr %10, align 8
  %839 = xor i64 %819, %838
  %840 = load ptr, ptr %121, align 8
  %841 = getelementptr inbounds i8, ptr %840, i64 8
  store ptr %841, ptr %120, align 8
  %842 = call i32 @XXH_isLittleEndian()
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %844, label %847

844:                                              ; preds = %837
  %845 = load ptr, ptr %120, align 8
  %846 = call i64 @XXH_read64(ptr noundef %845)
  br label %851

847:                                              ; preds = %837
  %848 = load ptr, ptr %120, align 8
  %849 = call i64 @XXH_read64(ptr noundef %848)
  %850 = call i64 @XXH_swap64(i64 noundef %849)
  br label %851

851:                                              ; preds = %844, %847
  %852 = phi i64 [ %846, %844 ], [ %850, %847 ]
  %853 = load ptr, ptr %123, align 8
  %854 = getelementptr inbounds i64, ptr %853, i64 1
  store ptr %854, ptr %14, align 8
  %855 = call i32 @XXH_isLittleEndian()
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %857, label %860

857:                                              ; preds = %851
  %858 = load ptr, ptr %14, align 8
  %859 = load i64, ptr %858, align 8
  store i64 %859, ptr %13, align 8
  br label %871

860:                                              ; preds = %851
  %861 = load ptr, ptr %14, align 8
  store ptr %861, ptr %15, align 8
  %862 = load ptr, ptr %15, align 8
  %863 = load i32, ptr %862, align 4
  %864 = zext i32 %863 to i64
  %865 = load ptr, ptr %15, align 8
  %866 = getelementptr inbounds i32, ptr %865, i64 1
  %867 = load i32, ptr %866, align 4
  %868 = zext i32 %867 to i64
  %869 = shl i64 %868, 32
  %870 = add i64 %864, %869
  store i64 %870, ptr %13, align 8
  br label %871

871:                                              ; preds = %857, %860
  %872 = load i64, ptr %13, align 8
  %873 = xor i64 %852, %872
  %874 = call i64 @XXH3_mul128(i64 noundef %839, i64 noundef %873)
  %875 = load i64, ptr %139, align 8
  %876 = add i64 %875, %874
  store i64 %876, ptr %139, align 8
  %877 = load ptr, ptr %137, align 8
  %878 = load i64, ptr %135, align 8
  %879 = getelementptr inbounds nuw i8, ptr %877, i64 %878
  %880 = getelementptr inbounds i8, ptr %879, i64 -16
  store ptr %880, ptr %126, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 2), ptr %127, align 8
  %881 = load ptr, ptr %127, align 8
  store ptr %881, ptr %128, align 8
  %882 = load ptr, ptr %126, align 8
  store ptr %882, ptr %124, align 8
  %883 = call i32 @XXH_isLittleEndian()
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %885, label %888

885:                                              ; preds = %871
  %886 = load ptr, ptr %124, align 8
  %887 = call i64 @XXH_read64(ptr noundef %886)
  br label %892

888:                                              ; preds = %871
  %889 = load ptr, ptr %124, align 8
  %890 = call i64 @XXH_read64(ptr noundef %889)
  %891 = call i64 @XXH_swap64(i64 noundef %890)
  br label %892

892:                                              ; preds = %888, %885
  %893 = phi i64 [ %887, %885 ], [ %891, %888 ]
  %894 = load ptr, ptr %128, align 8
  store ptr %894, ptr %5, align 8
  %895 = call i32 @XXH_isLittleEndian()
  %896 = icmp ne i32 %895, 0
  br i1 %896, label %897, label %900

897:                                              ; preds = %892
  %898 = load ptr, ptr %5, align 8
  %899 = load i64, ptr %898, align 8
  store i64 %899, ptr %4, align 8
  br label %911

900:                                              ; preds = %892
  %901 = load ptr, ptr %5, align 8
  store ptr %901, ptr %6, align 8
  %902 = load ptr, ptr %6, align 8
  %903 = load i32, ptr %902, align 4
  %904 = zext i32 %903 to i64
  %905 = load ptr, ptr %6, align 8
  %906 = getelementptr inbounds i32, ptr %905, i64 1
  %907 = load i32, ptr %906, align 4
  %908 = zext i32 %907 to i64
  %909 = shl i64 %908, 32
  %910 = add i64 %904, %909
  store i64 %910, ptr %4, align 8
  br label %911

911:                                              ; preds = %897, %900
  %912 = load i64, ptr %4, align 8
  %913 = xor i64 %893, %912
  %914 = load ptr, ptr %126, align 8
  %915 = getelementptr inbounds i8, ptr %914, i64 8
  store ptr %915, ptr %125, align 8
  %916 = call i32 @XXH_isLittleEndian()
  %917 = icmp ne i32 %916, 0
  br i1 %917, label %918, label %921

918:                                              ; preds = %911
  %919 = load ptr, ptr %125, align 8
  %920 = call i64 @XXH_read64(ptr noundef %919)
  br label %925

921:                                              ; preds = %911
  %922 = load ptr, ptr %125, align 8
  %923 = call i64 @XXH_read64(ptr noundef %922)
  %924 = call i64 @XXH_swap64(i64 noundef %923)
  br label %925

925:                                              ; preds = %918, %921
  %926 = phi i64 [ %920, %918 ], [ %924, %921 ]
  %927 = load ptr, ptr %128, align 8
  %928 = getelementptr inbounds i64, ptr %927, i64 1
  store ptr %928, ptr %8, align 8
  %929 = call i32 @XXH_isLittleEndian()
  %930 = icmp ne i32 %929, 0
  br i1 %930, label %931, label %934

931:                                              ; preds = %925
  %932 = load ptr, ptr %8, align 8
  %933 = load i64, ptr %932, align 8
  store i64 %933, ptr %7, align 8
  br label %945

934:                                              ; preds = %925
  %935 = load ptr, ptr %8, align 8
  store ptr %935, ptr %9, align 8
  %936 = load ptr, ptr %9, align 8
  %937 = load i32, ptr %936, align 4
  %938 = zext i32 %937 to i64
  %939 = load ptr, ptr %9, align 8
  %940 = getelementptr inbounds i32, ptr %939, i64 1
  %941 = load i32, ptr %940, align 4
  %942 = zext i32 %941 to i64
  %943 = shl i64 %942, 32
  %944 = add i64 %938, %943
  store i64 %944, ptr %7, align 8
  br label %945

945:                                              ; preds = %931, %934
  %946 = load i64, ptr %7, align 8
  %947 = xor i64 %926, %946
  %948 = call i64 @XXH3_mul128(i64 noundef %913, i64 noundef %947)
  %949 = load i64, ptr %139, align 8
  %950 = add i64 %949, %948
  store i64 %950, ptr %139, align 8
  %951 = load i64, ptr %139, align 8
  %952 = call i64 @XXH3_avalanche(i64 noundef %951)
  store i64 %952, ptr %133, align 8
  br label %953

953:                                              ; preds = %945, %358, %340
  %954 = load i64, ptr %133, align 8
  ret i64 %954
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_hashLong_64b(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [8 x i64], align 64
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %8 = load i64, ptr %6, align 8
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds i64, ptr %7, i64 1
  store i64 -7046029288634856825, ptr %9, align 8
  %10 = getelementptr inbounds i64, ptr %7, i64 2
  store i64 -4417276706812531889, ptr %10, align 8
  %11 = getelementptr inbounds i64, ptr %7, i64 3
  store i64 1609587929392839161, ptr %11, align 8
  %12 = getelementptr inbounds i64, ptr %7, i64 4
  store i64 -8796714831421723037, ptr %12, align 8
  %13 = getelementptr inbounds i64, ptr %7, i64 5
  store i64 2870177450012600261, ptr %13, align 8
  %14 = getelementptr inbounds i64, ptr %7, i64 6
  %15 = load i64, ptr %6, align 8
  %16 = sub i64 0, %15
  store i64 %16, ptr %14, align 8
  %17 = getelementptr inbounds i64, ptr %7, i64 7
  store i64 0, ptr %17, align 8
  %18 = getelementptr inbounds [8 x i64], ptr %7, i64 0, i64 0
  %19 = load ptr, ptr %4, align 8
  %20 = load i64, ptr %5, align 8
  call void @XXH3_hashLong(ptr noundef %18, ptr noundef %19, i64 noundef %20)
  %21 = getelementptr inbounds [8 x i64], ptr %7, i64 0, i64 0
  %22 = load i64, ptr %5, align 8
  %23 = mul i64 %22, -7046029288634856825
  %24 = call i64 @XXH3_mergeAccs(ptr noundef %21, ptr noundef @kKey, i64 noundef %23)
  ret i64 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_avalanche(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = lshr i64 %3, 29
  %5 = load i64, ptr %2, align 8
  %6 = xor i64 %5, %4
  store i64 %6, ptr %2, align 8
  %7 = load i64, ptr %2, align 8
  %8 = mul i64 %7, 1609587929392839161
  store i64 %8, ptr %2, align 8
  %9 = load i64, ptr %2, align 8
  %10 = lshr i64 %9, 32
  %11 = load i64, ptr %2, align 8
  %12 = xor i64 %11, %10
  store i64 %12, ptr %2, align 8
  %13 = load i64, ptr %2, align 8
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XXH3_64bits(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @XXH3_64bits_withSeed(ptr noundef %5, i64 noundef %6, i64 noundef 0)
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.XXH128_hash_t, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %struct.XXH128_hash_t, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca i64, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca i64, align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca %struct.XXH128_hash_t, align 8
  %44 = alloca ptr, align 8
  %45 = alloca i64, align 8
  %46 = alloca ptr, align 8
  %47 = alloca i64, align 8
  %48 = alloca ptr, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca ptr, align 8
  %55 = alloca ptr, align 8
  %56 = alloca i64, align 8
  %57 = alloca ptr, align 8
  %58 = alloca ptr, align 8
  %59 = alloca i64, align 8
  %60 = alloca ptr, align 8
  %61 = alloca ptr, align 8
  %62 = alloca i64, align 8
  %63 = alloca ptr, align 8
  %64 = alloca ptr, align 8
  %65 = alloca i64, align 8
  %66 = alloca ptr, align 8
  %67 = alloca ptr, align 8
  %68 = alloca i64, align 8
  %69 = alloca ptr, align 8
  %70 = alloca ptr, align 8
  %71 = alloca i64, align 8
  %72 = alloca ptr, align 8
  %73 = alloca ptr, align 8
  %74 = alloca i64, align 8
  %75 = alloca ptr, align 8
  %76 = alloca ptr, align 8
  %77 = alloca i64, align 8
  %78 = alloca ptr, align 8
  %79 = alloca ptr, align 8
  %80 = alloca i64, align 8
  %81 = alloca ptr, align 8
  %82 = alloca ptr, align 8
  %83 = alloca i64, align 8
  %84 = alloca ptr, align 8
  %85 = alloca ptr, align 8
  %86 = alloca i64, align 8
  %87 = alloca ptr, align 8
  %88 = alloca ptr, align 8
  %89 = alloca i64, align 8
  %90 = alloca ptr, align 8
  %91 = alloca ptr, align 8
  %92 = alloca i64, align 8
  %93 = alloca ptr, align 8
  %94 = alloca ptr, align 8
  %95 = alloca i64, align 8
  %96 = alloca ptr, align 8
  %97 = alloca ptr, align 8
  %98 = alloca i64, align 8
  %99 = alloca ptr, align 8
  %100 = alloca ptr, align 8
  %101 = alloca %struct.XXH128_hash_t, align 8
  %102 = alloca ptr, align 8
  %103 = alloca i64, align 8
  %104 = alloca i64, align 8
  %105 = alloca ptr, align 8
  %106 = alloca ptr, align 8
  %107 = alloca ptr, align 8
  %108 = alloca ptr, align 8
  %109 = alloca ptr, align 8
  %110 = alloca ptr, align 8
  %111 = alloca ptr, align 8
  %112 = alloca ptr, align 8
  %113 = alloca ptr, align 8
  %114 = alloca ptr, align 8
  %115 = alloca ptr, align 8
  %116 = alloca ptr, align 8
  %117 = alloca ptr, align 8
  %118 = alloca ptr, align 8
  %119 = alloca ptr, align 8
  %120 = alloca ptr, align 8
  %121 = alloca ptr, align 8
  %122 = alloca ptr, align 8
  %123 = alloca ptr, align 8
  %124 = alloca ptr, align 8
  %125 = alloca ptr, align 8
  %126 = alloca ptr, align 8
  %127 = alloca ptr, align 8
  %128 = alloca ptr, align 8
  %129 = alloca ptr, align 8
  %130 = alloca ptr, align 8
  %131 = alloca ptr, align 8
  %132 = alloca ptr, align 8
  %133 = alloca ptr, align 8
  %134 = alloca ptr, align 8
  %135 = alloca ptr, align 8
  %136 = alloca ptr, align 8
  %137 = alloca ptr, align 8
  %138 = alloca ptr, align 8
  %139 = alloca ptr, align 8
  %140 = alloca ptr, align 8
  %141 = alloca ptr, align 8
  %142 = alloca ptr, align 8
  %143 = alloca ptr, align 8
  %144 = alloca ptr, align 8
  %145 = alloca %struct.XXH128_hash_t, align 8
  %146 = alloca ptr, align 8
  %147 = alloca i64, align 8
  %148 = alloca i64, align 8
  %149 = alloca i64, align 8
  %150 = alloca i64, align 8
  %151 = alloca ptr, align 8
  %152 = alloca ptr, align 8
  %153 = alloca i64, align 8
  %154 = alloca i64, align 8
  store ptr %0, ptr %146, align 8
  store i64 %1, ptr %147, align 8
  store i64 %2, ptr %148, align 8
  %155 = load i64, ptr %147, align 8
  %156 = icmp ule i64 %155, 16
  br i1 %156, label %157, label %471

157:                                              ; preds = %3
  %158 = load ptr, ptr %146, align 8
  %159 = load i64, ptr %147, align 8
  %160 = load i64, ptr %148, align 8
  store ptr %158, ptr %102, align 8
  store i64 %159, ptr %103, align 8
  store i64 %160, ptr %104, align 8
  %161 = load i64, ptr %103, align 8
  %162 = icmp ugt i64 %161, 8
  br i1 %162, label %163, label %305

163:                                              ; preds = %157
  %164 = load ptr, ptr %102, align 8
  %165 = load i64, ptr %103, align 8
  %166 = load i64, ptr %104, align 8
  store ptr %164, ptr %44, align 8
  store i64 %165, ptr %45, align 8
  store ptr @kKey, ptr %46, align 8
  store i64 %166, ptr %47, align 8
  %167 = load ptr, ptr %46, align 8
  store ptr %167, ptr %48, align 8
  %168 = load i64, ptr %45, align 8
  %169 = load i64, ptr %47, align 8
  %170 = add i64 %168, %169
  %171 = mul i64 -7046029288634856825, %170
  store i64 %171, ptr %49, align 8
  %172 = load i64, ptr %45, align 8
  %173 = load i64, ptr %47, align 8
  %174 = sub i64 %172, %173
  %175 = mul i64 -4417276706812531889, %174
  store i64 %175, ptr %50, align 8
  %176 = load ptr, ptr %44, align 8
  store ptr %176, ptr %41, align 8
  %177 = call i32 @XXH_isLittleEndian()
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %163
  %180 = load ptr, ptr %41, align 8
  %181 = call i64 @XXH_read64(ptr noundef %180)
  br label %186

182:                                              ; preds = %163
  %183 = load ptr, ptr %41, align 8
  %184 = call i64 @XXH_read64(ptr noundef %183)
  %185 = call i64 @XXH_swap64(i64 noundef %184)
  br label %186

186:                                              ; preds = %182, %179
  %187 = phi i64 [ %181, %179 ], [ %185, %182 ]
  store i64 %187, ptr %51, align 8
  %188 = load ptr, ptr %44, align 8
  %189 = load i64, ptr %45, align 8
  %190 = getelementptr inbounds nuw i8, ptr %188, i64 %189
  %191 = getelementptr inbounds i8, ptr %190, i64 -8
  store ptr %191, ptr %42, align 8
  %192 = call i32 @XXH_isLittleEndian()
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %186
  %195 = load ptr, ptr %42, align 8
  %196 = call i64 @XXH_read64(ptr noundef %195)
  br label %201

197:                                              ; preds = %186
  %198 = load ptr, ptr %42, align 8
  %199 = call i64 @XXH_read64(ptr noundef %198)
  %200 = call i64 @XXH_swap64(i64 noundef %199)
  br label %201

201:                                              ; preds = %197, %194
  %202 = phi i64 [ %196, %194 ], [ %200, %197 ]
  store i64 %202, ptr %52, align 8
  %203 = load i64, ptr %51, align 8
  %204 = load ptr, ptr %48, align 8
  store ptr %204, ptr %30, align 8
  %205 = call i32 @XXH_isLittleEndian()
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load ptr, ptr %30, align 8
  %209 = load i64, ptr %208, align 8
  store i64 %209, ptr %29, align 8
  br label %221

210:                                              ; preds = %201
  %211 = load ptr, ptr %30, align 8
  store ptr %211, ptr %31, align 8
  %212 = load ptr, ptr %31, align 8
  %213 = load i32, ptr %212, align 4
  %214 = zext i32 %213 to i64
  %215 = load ptr, ptr %31, align 8
  %216 = getelementptr inbounds i32, ptr %215, i64 1
  %217 = load i32, ptr %216, align 4
  %218 = zext i32 %217 to i64
  %219 = shl i64 %218, 32
  %220 = add i64 %214, %219
  store i64 %220, ptr %29, align 8
  br label %221

221:                                              ; preds = %210, %207
  %222 = load i64, ptr %29, align 8
  %223 = add i64 %203, %222
  %224 = load i64, ptr %52, align 8
  %225 = load ptr, ptr %48, align 8
  %226 = getelementptr inbounds i64, ptr %225, i64 1
  store ptr %226, ptr %33, align 8
  %227 = call i32 @XXH_isLittleEndian()
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %221
  %230 = load ptr, ptr %33, align 8
  %231 = load i64, ptr %230, align 8
  store i64 %231, ptr %32, align 8
  br label %243

232:                                              ; preds = %221
  %233 = load ptr, ptr %33, align 8
  store ptr %233, ptr %34, align 8
  %234 = load ptr, ptr %34, align 8
  %235 = load i32, ptr %234, align 4
  %236 = zext i32 %235 to i64
  %237 = load ptr, ptr %34, align 8
  %238 = getelementptr inbounds i32, ptr %237, i64 1
  %239 = load i32, ptr %238, align 4
  %240 = zext i32 %239 to i64
  %241 = shl i64 %240, 32
  %242 = add i64 %236, %241
  store i64 %242, ptr %32, align 8
  br label %243

243:                                              ; preds = %232, %229
  %244 = load i64, ptr %32, align 8
  %245 = add i64 %224, %244
  %246 = call i64 @XXH3_mul128(i64 noundef %223, i64 noundef %245)
  %247 = load i64, ptr %49, align 8
  %248 = add i64 %247, %246
  store i64 %248, ptr %49, align 8
  %249 = load i64, ptr %51, align 8
  %250 = load ptr, ptr %48, align 8
  %251 = getelementptr inbounds i64, ptr %250, i64 2
  store ptr %251, ptr %36, align 8
  %252 = call i32 @XXH_isLittleEndian()
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %243
  %255 = load ptr, ptr %36, align 8
  %256 = load i64, ptr %255, align 8
  store i64 %256, ptr %35, align 8
  br label %268

257:                                              ; preds = %243
  %258 = load ptr, ptr %36, align 8
  store ptr %258, ptr %37, align 8
  %259 = load ptr, ptr %37, align 8
  %260 = load i32, ptr %259, align 4
  %261 = zext i32 %260 to i64
  %262 = load ptr, ptr %37, align 8
  %263 = getelementptr inbounds i32, ptr %262, i64 1
  %264 = load i32, ptr %263, align 4
  %265 = zext i32 %264 to i64
  %266 = shl i64 %265, 32
  %267 = add i64 %261, %266
  store i64 %267, ptr %35, align 8
  br label %268

268:                                              ; preds = %257, %254
  %269 = load i64, ptr %35, align 8
  %270 = add i64 %249, %269
  %271 = load i64, ptr %52, align 8
  %272 = load ptr, ptr %48, align 8
  %273 = getelementptr inbounds i64, ptr %272, i64 3
  store ptr %273, ptr %39, align 8
  %274 = call i32 @XXH_isLittleEndian()
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %268
  %277 = load ptr, ptr %39, align 8
  %278 = load i64, ptr %277, align 8
  store i64 %278, ptr %38, align 8
  br label %290

279:                                              ; preds = %268
  %280 = load ptr, ptr %39, align 8
  store ptr %280, ptr %40, align 8
  %281 = load ptr, ptr %40, align 8
  %282 = load i32, ptr %281, align 4
  %283 = zext i32 %282 to i64
  %284 = load ptr, ptr %40, align 8
  %285 = getelementptr inbounds i32, ptr %284, i64 1
  %286 = load i32, ptr %285, align 4
  %287 = zext i32 %286 to i64
  %288 = shl i64 %287, 32
  %289 = add i64 %283, %288
  store i64 %289, ptr %38, align 8
  br label %290

290:                                              ; preds = %276, %279
  %291 = load i64, ptr %38, align 8
  %292 = add i64 %271, %291
  %293 = call i64 @XXH3_mul128(i64 noundef %270, i64 noundef %292)
  %294 = load i64, ptr %50, align 8
  %295 = add i64 %294, %293
  store i64 %295, ptr %50, align 8
  %296 = load i64, ptr %49, align 8
  %297 = call i64 @XXH3_avalanche(i64 noundef %296)
  store i64 %297, ptr %43, align 8
  %298 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %43, i32 0, i32 1
  %299 = load i64, ptr %50, align 8
  %300 = call i64 @XXH3_avalanche(i64 noundef %299)
  store i64 %300, ptr %298, align 8
  %301 = load { i64, i64 }, ptr %43, align 8
  %302 = extractvalue { i64, i64 } %301, 0
  store i64 %302, ptr %101, align 8
  %303 = getelementptr inbounds nuw { i64, i64 }, ptr %101, i32 0, i32 1
  %304 = extractvalue { i64, i64 } %301, 1
  store i64 %304, ptr %303, align 8
  br label %465

305:                                              ; preds = %157
  %306 = load i64, ptr %103, align 8
  %307 = icmp uge i64 %306, 4
  br i1 %307, label %308, label %386

308:                                              ; preds = %305
  %309 = load ptr, ptr %102, align 8
  %310 = load i64, ptr %103, align 8
  %311 = load i64, ptr %104, align 8
  store ptr %309, ptr %20, align 8
  store i64 %310, ptr %21, align 8
  store ptr @kKey, ptr %22, align 8
  store i64 %311, ptr %23, align 8
  %312 = load ptr, ptr %22, align 8
  store ptr %312, ptr %24, align 8
  %313 = load i64, ptr %21, align 8
  %314 = load i64, ptr %23, align 8
  %315 = add i64 %313, %314
  %316 = mul i64 -7046029288634856825, %315
  store i64 %316, ptr %25, align 8
  %317 = load i64, ptr %21, align 8
  %318 = load i64, ptr %23, align 8
  %319 = sub i64 %317, %318
  %320 = mul i64 -4417276706812531889, %319
  store i64 %320, ptr %26, align 8
  %321 = load ptr, ptr %20, align 8
  store ptr %321, ptr %17, align 8
  %322 = call i32 @XXH_isLittleEndian()
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %308
  %325 = load ptr, ptr %17, align 8
  %326 = call i32 @XXH_read32(ptr noundef %325)
  br label %331

327:                                              ; preds = %308
  %328 = load ptr, ptr %17, align 8
  %329 = call i32 @XXH_read32(ptr noundef %328)
  %330 = call i32 @XXH_swap32(i32 noundef %329)
  br label %331

331:                                              ; preds = %327, %324
  %332 = phi i32 [ %326, %324 ], [ %330, %327 ]
  store i32 %332, ptr %27, align 4
  %333 = load ptr, ptr %20, align 8
  %334 = load i64, ptr %21, align 8
  %335 = getelementptr inbounds nuw i8, ptr %333, i64 %334
  %336 = getelementptr inbounds i8, ptr %335, i64 -4
  store ptr %336, ptr %18, align 8
  %337 = call i32 @XXH_isLittleEndian()
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %331
  %340 = load ptr, ptr %18, align 8
  %341 = call i32 @XXH_read32(ptr noundef %340)
  br label %346

342:                                              ; preds = %331
  %343 = load ptr, ptr %18, align 8
  %344 = call i32 @XXH_read32(ptr noundef %343)
  %345 = call i32 @XXH_swap32(i32 noundef %344)
  br label %346

346:                                              ; preds = %339, %342
  %347 = phi i32 [ %341, %339 ], [ %345, %342 ]
  store i32 %347, ptr %28, align 4
  %348 = load i32, ptr %27, align 4
  %349 = load ptr, ptr %24, align 8
  %350 = load i32, ptr %349, align 4
  %351 = add i32 %348, %350
  %352 = zext i32 %351 to i64
  %353 = load i32, ptr %28, align 4
  %354 = load ptr, ptr %24, align 8
  %355 = getelementptr inbounds i32, ptr %354, i64 1
  %356 = load i32, ptr %355, align 4
  %357 = add i32 %353, %356
  %358 = zext i32 %357 to i64
  %359 = mul i64 %352, %358
  %360 = load i64, ptr %25, align 8
  %361 = add i64 %360, %359
  store i64 %361, ptr %25, align 8
  %362 = load i32, ptr %27, align 4
  %363 = load ptr, ptr %24, align 8
  %364 = getelementptr inbounds i32, ptr %363, i64 2
  %365 = load i32, ptr %364, align 4
  %366 = sub i32 %362, %365
  %367 = zext i32 %366 to i64
  %368 = load i32, ptr %28, align 4
  %369 = load ptr, ptr %24, align 8
  %370 = getelementptr inbounds i32, ptr %369, i64 3
  %371 = load i32, ptr %370, align 4
  %372 = add i32 %368, %371
  %373 = zext i32 %372 to i64
  %374 = mul i64 %367, %373
  %375 = load i64, ptr %26, align 8
  %376 = add i64 %375, %374
  store i64 %376, ptr %26, align 8
  %377 = load i64, ptr %25, align 8
  %378 = call i64 @XXH3_avalanche(i64 noundef %377)
  store i64 %378, ptr %19, align 8
  %379 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %19, i32 0, i32 1
  %380 = load i64, ptr %26, align 8
  %381 = call i64 @XXH3_avalanche(i64 noundef %380)
  store i64 %381, ptr %379, align 8
  %382 = load { i64, i64 }, ptr %19, align 8
  %383 = extractvalue { i64, i64 } %382, 0
  store i64 %383, ptr %101, align 8
  %384 = getelementptr inbounds nuw { i64, i64 }, ptr %101, i32 0, i32 1
  %385 = extractvalue { i64, i64 } %382, 1
  store i64 %385, ptr %384, align 8
  br label %465

386:                                              ; preds = %305
  %387 = load i64, ptr %103, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %460

389:                                              ; preds = %386
  %390 = load ptr, ptr %102, align 8
  %391 = load i64, ptr %103, align 8
  %392 = load i64, ptr %104, align 8
  store ptr %390, ptr %5, align 8
  store i64 %391, ptr %6, align 8
  store ptr @kKey, ptr %7, align 8
  store i64 %392, ptr %8, align 8
  %393 = load ptr, ptr %7, align 8
  store ptr %393, ptr %9, align 8
  %394 = load ptr, ptr %5, align 8
  %395 = load i8, ptr %394, align 1
  store i8 %395, ptr %10, align 1
  %396 = load ptr, ptr %5, align 8
  %397 = load i64, ptr %6, align 8
  %398 = lshr i64 %397, 1
  %399 = getelementptr inbounds nuw i8, ptr %396, i64 %398
  %400 = load i8, ptr %399, align 1
  store i8 %400, ptr %11, align 1
  %401 = load ptr, ptr %5, align 8
  %402 = load i64, ptr %6, align 8
  %403 = sub i64 %402, 1
  %404 = getelementptr inbounds nuw i8, ptr %401, i64 %403
  %405 = load i8, ptr %404, align 1
  store i8 %405, ptr %12, align 1
  %406 = load i8, ptr %10, align 1
  %407 = zext i8 %406 to i32
  %408 = load i8, ptr %11, align 1
  %409 = zext i8 %408 to i32
  %410 = shl i32 %409, 8
  %411 = add i32 %407, %410
  store i32 %411, ptr %13, align 4
  %412 = load i64, ptr %6, align 8
  %413 = trunc i64 %412 to i32
  %414 = load i8, ptr %12, align 1
  %415 = zext i8 %414 to i32
  %416 = shl i32 %415, 2
  %417 = add i32 %413, %416
  store i32 %417, ptr %14, align 4
  %418 = load i32, ptr %13, align 4
  %419 = zext i32 %418 to i64
  %420 = load i64, ptr %8, align 8
  %421 = add i64 %419, %420
  %422 = load ptr, ptr %9, align 8
  %423 = load i32, ptr %422, align 4
  %424 = zext i32 %423 to i64
  %425 = add i64 %421, %424
  %426 = and i64 %425, 4294967295
  %427 = load i32, ptr %14, align 4
  %428 = load ptr, ptr %9, align 8
  %429 = getelementptr inbounds i32, ptr %428, i64 1
  %430 = load i32, ptr %429, align 4
  %431 = add i32 %427, %430
  %432 = zext i32 %431 to i64
  %433 = mul i64 %426, %432
  store i64 %433, ptr %15, align 8
  %434 = load i32, ptr %13, align 4
  %435 = load ptr, ptr %9, align 8
  %436 = getelementptr inbounds i32, ptr %435, i64 2
  %437 = load i32, ptr %436, align 4
  %438 = add i32 %434, %437
  %439 = zext i32 %438 to i64
  %440 = load i32, ptr %14, align 4
  %441 = zext i32 %440 to i64
  %442 = load i64, ptr %8, align 8
  %443 = sub i64 %441, %442
  %444 = load ptr, ptr %9, align 8
  %445 = getelementptr inbounds i32, ptr %444, i64 3
  %446 = load i32, ptr %445, align 4
  %447 = zext i32 %446 to i64
  %448 = add i64 %443, %447
  %449 = and i64 %448, 4294967295
  %450 = mul i64 %439, %449
  store i64 %450, ptr %16, align 8
  %451 = load i64, ptr %15, align 8
  %452 = call i64 @XXH3_avalanche(i64 noundef %451)
  store i64 %452, ptr %4, align 8
  %453 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %4, i32 0, i32 1
  %454 = load i64, ptr %16, align 8
  %455 = call i64 @XXH3_avalanche(i64 noundef %454)
  store i64 %455, ptr %453, align 8
  %456 = load { i64, i64 }, ptr %4, align 8
  %457 = extractvalue { i64, i64 } %456, 0
  store i64 %457, ptr %101, align 8
  %458 = getelementptr inbounds nuw { i64, i64 }, ptr %101, i32 0, i32 1
  %459 = extractvalue { i64, i64 } %456, 1
  store i64 %459, ptr %458, align 8
  br label %465

460:                                              ; preds = %386
  %461 = load i64, ptr %104, align 8
  store i64 %461, ptr %101, align 8
  %462 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %101, i32 0, i32 1
  %463 = load i64, ptr %104, align 8
  %464 = sub i64 0, %463
  store i64 %464, ptr %462, align 8
  br label %465

465:                                              ; preds = %290, %346, %389, %460
  %466 = load { i64, i64 }, ptr %101, align 8
  %467 = getelementptr inbounds nuw { i64, i64 }, ptr %145, i32 0, i32 0
  %468 = extractvalue { i64, i64 } %466, 0
  store i64 %468, ptr %467, align 8
  %469 = getelementptr inbounds nuw { i64, i64 }, ptr %145, i32 0, i32 1
  %470 = extractvalue { i64, i64 } %466, 1
  store i64 %470, ptr %469, align 8
  br label %1105

471:                                              ; preds = %3
  %472 = load i64, ptr %147, align 8
  %473 = load i64, ptr %148, align 8
  %474 = add i64 %472, %473
  %475 = mul i64 -7046029288634856825, %474
  store i64 %475, ptr %149, align 8
  store i64 0, ptr %150, align 8
  %476 = load ptr, ptr %146, align 8
  store ptr %476, ptr %151, align 8
  store ptr @kKey, ptr %152, align 8
  %477 = load i64, ptr %147, align 8
  %478 = icmp ugt i64 %477, 32
  br i1 %478, label %479, label %938

479:                                              ; preds = %471
  %480 = load i64, ptr %147, align 8
  %481 = icmp ugt i64 %480, 64
  br i1 %481, label %482, label %791

482:                                              ; preds = %479
  %483 = load i64, ptr %147, align 8
  %484 = icmp ugt i64 %483, 96
  br i1 %484, label %485, label %644

485:                                              ; preds = %482
  %486 = load i64, ptr %147, align 8
  %487 = icmp ugt i64 %486, 128
  br i1 %487, label %488, label %497

488:                                              ; preds = %485
  %489 = load ptr, ptr %146, align 8
  %490 = load i64, ptr %147, align 8
  %491 = load i64, ptr %148, align 8
  %492 = call { i64, i64 } @XXH3_hashLong_128b(ptr noundef %489, i64 noundef %490, i64 noundef %491)
  %493 = getelementptr inbounds nuw { i64, i64 }, ptr %145, i32 0, i32 0
  %494 = extractvalue { i64, i64 } %492, 0
  store i64 %494, ptr %493, align 8
  %495 = getelementptr inbounds nuw { i64, i64 }, ptr %145, i32 0, i32 1
  %496 = extractvalue { i64, i64 } %492, 1
  store i64 %496, ptr %495, align 8
  br label %1105

497:                                              ; preds = %485
  %498 = load ptr, ptr %151, align 8
  %499 = getelementptr inbounds i8, ptr %498, i64 48
  store ptr %499, ptr %107, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 12), ptr %108, align 8
  %500 = load ptr, ptr %108, align 8
  store ptr %500, ptr %109, align 8
  %501 = load ptr, ptr %107, align 8
  store ptr %501, ptr %105, align 8
  %502 = call i32 @XXH_isLittleEndian()
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %507

504:                                              ; preds = %497
  %505 = load ptr, ptr %105, align 8
  %506 = call i64 @XXH_read64(ptr noundef %505)
  br label %511

507:                                              ; preds = %497
  %508 = load ptr, ptr %105, align 8
  %509 = call i64 @XXH_read64(ptr noundef %508)
  %510 = call i64 @XXH_swap64(i64 noundef %509)
  br label %511

511:                                              ; preds = %507, %504
  %512 = phi i64 [ %506, %504 ], [ %510, %507 ]
  %513 = load ptr, ptr %109, align 8
  store ptr %513, ptr %96, align 8
  %514 = call i32 @XXH_isLittleEndian()
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %511
  %517 = load ptr, ptr %96, align 8
  %518 = load i64, ptr %517, align 8
  store i64 %518, ptr %95, align 8
  br label %530

519:                                              ; preds = %511
  %520 = load ptr, ptr %96, align 8
  store ptr %520, ptr %97, align 8
  %521 = load ptr, ptr %97, align 8
  %522 = load i32, ptr %521, align 4
  %523 = zext i32 %522 to i64
  %524 = load ptr, ptr %97, align 8
  %525 = getelementptr inbounds i32, ptr %524, i64 1
  %526 = load i32, ptr %525, align 4
  %527 = zext i32 %526 to i64
  %528 = shl i64 %527, 32
  %529 = add i64 %523, %528
  store i64 %529, ptr %95, align 8
  br label %530

530:                                              ; preds = %516, %519
  %531 = load i64, ptr %95, align 8
  %532 = xor i64 %512, %531
  %533 = load ptr, ptr %107, align 8
  %534 = getelementptr inbounds i8, ptr %533, i64 8
  store ptr %534, ptr %106, align 8
  %535 = call i32 @XXH_isLittleEndian()
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %540

537:                                              ; preds = %530
  %538 = load ptr, ptr %106, align 8
  %539 = call i64 @XXH_read64(ptr noundef %538)
  br label %544

540:                                              ; preds = %530
  %541 = load ptr, ptr %106, align 8
  %542 = call i64 @XXH_read64(ptr noundef %541)
  %543 = call i64 @XXH_swap64(i64 noundef %542)
  br label %544

544:                                              ; preds = %537, %540
  %545 = phi i64 [ %539, %537 ], [ %543, %540 ]
  %546 = load ptr, ptr %109, align 8
  %547 = getelementptr inbounds i64, ptr %546, i64 1
  store ptr %547, ptr %99, align 8
  %548 = call i32 @XXH_isLittleEndian()
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %553

550:                                              ; preds = %544
  %551 = load ptr, ptr %99, align 8
  %552 = load i64, ptr %551, align 8
  store i64 %552, ptr %98, align 8
  br label %564

553:                                              ; preds = %544
  %554 = load ptr, ptr %99, align 8
  store ptr %554, ptr %100, align 8
  %555 = load ptr, ptr %100, align 8
  %556 = load i32, ptr %555, align 4
  %557 = zext i32 %556 to i64
  %558 = load ptr, ptr %100, align 8
  %559 = getelementptr inbounds i32, ptr %558, i64 1
  %560 = load i32, ptr %559, align 4
  %561 = zext i32 %560 to i64
  %562 = shl i64 %561, 32
  %563 = add i64 %557, %562
  store i64 %563, ptr %98, align 8
  br label %564

564:                                              ; preds = %550, %553
  %565 = load i64, ptr %98, align 8
  %566 = xor i64 %545, %565
  %567 = call i64 @XXH3_mul128(i64 noundef %532, i64 noundef %566)
  %568 = load i64, ptr %149, align 8
  %569 = add i64 %568, %567
  store i64 %569, ptr %149, align 8
  %570 = load ptr, ptr %151, align 8
  %571 = load i64, ptr %147, align 8
  %572 = getelementptr inbounds nuw i8, ptr %570, i64 %571
  %573 = getelementptr inbounds i8, ptr %572, i64 -64
  store ptr %573, ptr %112, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 14), ptr %113, align 8
  %574 = load ptr, ptr %113, align 8
  store ptr %574, ptr %114, align 8
  %575 = load ptr, ptr %112, align 8
  store ptr %575, ptr %110, align 8
  %576 = call i32 @XXH_isLittleEndian()
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %581

578:                                              ; preds = %564
  %579 = load ptr, ptr %110, align 8
  %580 = call i64 @XXH_read64(ptr noundef %579)
  br label %585

581:                                              ; preds = %564
  %582 = load ptr, ptr %110, align 8
  %583 = call i64 @XXH_read64(ptr noundef %582)
  %584 = call i64 @XXH_swap64(i64 noundef %583)
  br label %585

585:                                              ; preds = %581, %578
  %586 = phi i64 [ %580, %578 ], [ %584, %581 ]
  %587 = load ptr, ptr %114, align 8
  store ptr %587, ptr %90, align 8
  %588 = call i32 @XXH_isLittleEndian()
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %593

590:                                              ; preds = %585
  %591 = load ptr, ptr %90, align 8
  %592 = load i64, ptr %591, align 8
  store i64 %592, ptr %89, align 8
  br label %604

593:                                              ; preds = %585
  %594 = load ptr, ptr %90, align 8
  store ptr %594, ptr %91, align 8
  %595 = load ptr, ptr %91, align 8
  %596 = load i32, ptr %595, align 4
  %597 = zext i32 %596 to i64
  %598 = load ptr, ptr %91, align 8
  %599 = getelementptr inbounds i32, ptr %598, i64 1
  %600 = load i32, ptr %599, align 4
  %601 = zext i32 %600 to i64
  %602 = shl i64 %601, 32
  %603 = add i64 %597, %602
  store i64 %603, ptr %89, align 8
  br label %604

604:                                              ; preds = %590, %593
  %605 = load i64, ptr %89, align 8
  %606 = xor i64 %586, %605
  %607 = load ptr, ptr %112, align 8
  %608 = getelementptr inbounds i8, ptr %607, i64 8
  store ptr %608, ptr %111, align 8
  %609 = call i32 @XXH_isLittleEndian()
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %614

611:                                              ; preds = %604
  %612 = load ptr, ptr %111, align 8
  %613 = call i64 @XXH_read64(ptr noundef %612)
  br label %618

614:                                              ; preds = %604
  %615 = load ptr, ptr %111, align 8
  %616 = call i64 @XXH_read64(ptr noundef %615)
  %617 = call i64 @XXH_swap64(i64 noundef %616)
  br label %618

618:                                              ; preds = %611, %614
  %619 = phi i64 [ %613, %611 ], [ %617, %614 ]
  %620 = load ptr, ptr %114, align 8
  %621 = getelementptr inbounds i64, ptr %620, i64 1
  store ptr %621, ptr %93, align 8
  %622 = call i32 @XXH_isLittleEndian()
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %627

624:                                              ; preds = %618
  %625 = load ptr, ptr %93, align 8
  %626 = load i64, ptr %625, align 8
  store i64 %626, ptr %92, align 8
  br label %638

627:                                              ; preds = %618
  %628 = load ptr, ptr %93, align 8
  store ptr %628, ptr %94, align 8
  %629 = load ptr, ptr %94, align 8
  %630 = load i32, ptr %629, align 4
  %631 = zext i32 %630 to i64
  %632 = load ptr, ptr %94, align 8
  %633 = getelementptr inbounds i32, ptr %632, i64 1
  %634 = load i32, ptr %633, align 4
  %635 = zext i32 %634 to i64
  %636 = shl i64 %635, 32
  %637 = add i64 %631, %636
  store i64 %637, ptr %92, align 8
  br label %638

638:                                              ; preds = %624, %627
  %639 = load i64, ptr %92, align 8
  %640 = xor i64 %619, %639
  %641 = call i64 @XXH3_mul128(i64 noundef %606, i64 noundef %640)
  %642 = load i64, ptr %150, align 8
  %643 = add i64 %642, %641
  store i64 %643, ptr %150, align 8
  br label %644

644:                                              ; preds = %638, %482
  %645 = load ptr, ptr %151, align 8
  %646 = getelementptr inbounds i8, ptr %645, i64 32
  store ptr %646, ptr %117, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 8), ptr %118, align 8
  %647 = load ptr, ptr %118, align 8
  store ptr %647, ptr %119, align 8
  %648 = load ptr, ptr %117, align 8
  store ptr %648, ptr %115, align 8
  %649 = call i32 @XXH_isLittleEndian()
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %654

651:                                              ; preds = %644
  %652 = load ptr, ptr %115, align 8
  %653 = call i64 @XXH_read64(ptr noundef %652)
  br label %658

654:                                              ; preds = %644
  %655 = load ptr, ptr %115, align 8
  %656 = call i64 @XXH_read64(ptr noundef %655)
  %657 = call i64 @XXH_swap64(i64 noundef %656)
  br label %658

658:                                              ; preds = %654, %651
  %659 = phi i64 [ %653, %651 ], [ %657, %654 ]
  %660 = load ptr, ptr %119, align 8
  store ptr %660, ptr %84, align 8
  %661 = call i32 @XXH_isLittleEndian()
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %666

663:                                              ; preds = %658
  %664 = load ptr, ptr %84, align 8
  %665 = load i64, ptr %664, align 8
  store i64 %665, ptr %83, align 8
  br label %677

666:                                              ; preds = %658
  %667 = load ptr, ptr %84, align 8
  store ptr %667, ptr %85, align 8
  %668 = load ptr, ptr %85, align 8
  %669 = load i32, ptr %668, align 4
  %670 = zext i32 %669 to i64
  %671 = load ptr, ptr %85, align 8
  %672 = getelementptr inbounds i32, ptr %671, i64 1
  %673 = load i32, ptr %672, align 4
  %674 = zext i32 %673 to i64
  %675 = shl i64 %674, 32
  %676 = add i64 %670, %675
  store i64 %676, ptr %83, align 8
  br label %677

677:                                              ; preds = %663, %666
  %678 = load i64, ptr %83, align 8
  %679 = xor i64 %659, %678
  %680 = load ptr, ptr %117, align 8
  %681 = getelementptr inbounds i8, ptr %680, i64 8
  store ptr %681, ptr %116, align 8
  %682 = call i32 @XXH_isLittleEndian()
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %687

684:                                              ; preds = %677
  %685 = load ptr, ptr %116, align 8
  %686 = call i64 @XXH_read64(ptr noundef %685)
  br label %691

687:                                              ; preds = %677
  %688 = load ptr, ptr %116, align 8
  %689 = call i64 @XXH_read64(ptr noundef %688)
  %690 = call i64 @XXH_swap64(i64 noundef %689)
  br label %691

691:                                              ; preds = %684, %687
  %692 = phi i64 [ %686, %684 ], [ %690, %687 ]
  %693 = load ptr, ptr %119, align 8
  %694 = getelementptr inbounds i64, ptr %693, i64 1
  store ptr %694, ptr %87, align 8
  %695 = call i32 @XXH_isLittleEndian()
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %700

697:                                              ; preds = %691
  %698 = load ptr, ptr %87, align 8
  %699 = load i64, ptr %698, align 8
  store i64 %699, ptr %86, align 8
  br label %711

700:                                              ; preds = %691
  %701 = load ptr, ptr %87, align 8
  store ptr %701, ptr %88, align 8
  %702 = load ptr, ptr %88, align 8
  %703 = load i32, ptr %702, align 4
  %704 = zext i32 %703 to i64
  %705 = load ptr, ptr %88, align 8
  %706 = getelementptr inbounds i32, ptr %705, i64 1
  %707 = load i32, ptr %706, align 4
  %708 = zext i32 %707 to i64
  %709 = shl i64 %708, 32
  %710 = add i64 %704, %709
  store i64 %710, ptr %86, align 8
  br label %711

711:                                              ; preds = %697, %700
  %712 = load i64, ptr %86, align 8
  %713 = xor i64 %692, %712
  %714 = call i64 @XXH3_mul128(i64 noundef %679, i64 noundef %713)
  %715 = load i64, ptr %149, align 8
  %716 = add i64 %715, %714
  store i64 %716, ptr %149, align 8
  %717 = load ptr, ptr %151, align 8
  %718 = load i64, ptr %147, align 8
  %719 = getelementptr inbounds nuw i8, ptr %717, i64 %718
  %720 = getelementptr inbounds i8, ptr %719, i64 -48
  store ptr %720, ptr %122, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 10), ptr %123, align 8
  %721 = load ptr, ptr %123, align 8
  store ptr %721, ptr %124, align 8
  %722 = load ptr, ptr %122, align 8
  store ptr %722, ptr %120, align 8
  %723 = call i32 @XXH_isLittleEndian()
  %724 = icmp ne i32 %723, 0
  br i1 %724, label %725, label %728

725:                                              ; preds = %711
  %726 = load ptr, ptr %120, align 8
  %727 = call i64 @XXH_read64(ptr noundef %726)
  br label %732

728:                                              ; preds = %711
  %729 = load ptr, ptr %120, align 8
  %730 = call i64 @XXH_read64(ptr noundef %729)
  %731 = call i64 @XXH_swap64(i64 noundef %730)
  br label %732

732:                                              ; preds = %728, %725
  %733 = phi i64 [ %727, %725 ], [ %731, %728 ]
  %734 = load ptr, ptr %124, align 8
  store ptr %734, ptr %78, align 8
  %735 = call i32 @XXH_isLittleEndian()
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %740

737:                                              ; preds = %732
  %738 = load ptr, ptr %78, align 8
  %739 = load i64, ptr %738, align 8
  store i64 %739, ptr %77, align 8
  br label %751

740:                                              ; preds = %732
  %741 = load ptr, ptr %78, align 8
  store ptr %741, ptr %79, align 8
  %742 = load ptr, ptr %79, align 8
  %743 = load i32, ptr %742, align 4
  %744 = zext i32 %743 to i64
  %745 = load ptr, ptr %79, align 8
  %746 = getelementptr inbounds i32, ptr %745, i64 1
  %747 = load i32, ptr %746, align 4
  %748 = zext i32 %747 to i64
  %749 = shl i64 %748, 32
  %750 = add i64 %744, %749
  store i64 %750, ptr %77, align 8
  br label %751

751:                                              ; preds = %737, %740
  %752 = load i64, ptr %77, align 8
  %753 = xor i64 %733, %752
  %754 = load ptr, ptr %122, align 8
  %755 = getelementptr inbounds i8, ptr %754, i64 8
  store ptr %755, ptr %121, align 8
  %756 = call i32 @XXH_isLittleEndian()
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %761

758:                                              ; preds = %751
  %759 = load ptr, ptr %121, align 8
  %760 = call i64 @XXH_read64(ptr noundef %759)
  br label %765

761:                                              ; preds = %751
  %762 = load ptr, ptr %121, align 8
  %763 = call i64 @XXH_read64(ptr noundef %762)
  %764 = call i64 @XXH_swap64(i64 noundef %763)
  br label %765

765:                                              ; preds = %758, %761
  %766 = phi i64 [ %760, %758 ], [ %764, %761 ]
  %767 = load ptr, ptr %124, align 8
  %768 = getelementptr inbounds i64, ptr %767, i64 1
  store ptr %768, ptr %81, align 8
  %769 = call i32 @XXH_isLittleEndian()
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %774

771:                                              ; preds = %765
  %772 = load ptr, ptr %81, align 8
  %773 = load i64, ptr %772, align 8
  store i64 %773, ptr %80, align 8
  br label %785

774:                                              ; preds = %765
  %775 = load ptr, ptr %81, align 8
  store ptr %775, ptr %82, align 8
  %776 = load ptr, ptr %82, align 8
  %777 = load i32, ptr %776, align 4
  %778 = zext i32 %777 to i64
  %779 = load ptr, ptr %82, align 8
  %780 = getelementptr inbounds i32, ptr %779, i64 1
  %781 = load i32, ptr %780, align 4
  %782 = zext i32 %781 to i64
  %783 = shl i64 %782, 32
  %784 = add i64 %778, %783
  store i64 %784, ptr %80, align 8
  br label %785

785:                                              ; preds = %771, %774
  %786 = load i64, ptr %80, align 8
  %787 = xor i64 %766, %786
  %788 = call i64 @XXH3_mul128(i64 noundef %753, i64 noundef %787)
  %789 = load i64, ptr %150, align 8
  %790 = add i64 %789, %788
  store i64 %790, ptr %150, align 8
  br label %791

791:                                              ; preds = %785, %479
  %792 = load ptr, ptr %151, align 8
  %793 = getelementptr inbounds i8, ptr %792, i64 16
  store ptr %793, ptr %127, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 4), ptr %128, align 8
  %794 = load ptr, ptr %128, align 8
  store ptr %794, ptr %129, align 8
  %795 = load ptr, ptr %127, align 8
  store ptr %795, ptr %125, align 8
  %796 = call i32 @XXH_isLittleEndian()
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %798, label %801

798:                                              ; preds = %791
  %799 = load ptr, ptr %125, align 8
  %800 = call i64 @XXH_read64(ptr noundef %799)
  br label %805

801:                                              ; preds = %791
  %802 = load ptr, ptr %125, align 8
  %803 = call i64 @XXH_read64(ptr noundef %802)
  %804 = call i64 @XXH_swap64(i64 noundef %803)
  br label %805

805:                                              ; preds = %801, %798
  %806 = phi i64 [ %800, %798 ], [ %804, %801 ]
  %807 = load ptr, ptr %129, align 8
  store ptr %807, ptr %72, align 8
  %808 = call i32 @XXH_isLittleEndian()
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %810, label %813

810:                                              ; preds = %805
  %811 = load ptr, ptr %72, align 8
  %812 = load i64, ptr %811, align 8
  store i64 %812, ptr %71, align 8
  br label %824

813:                                              ; preds = %805
  %814 = load ptr, ptr %72, align 8
  store ptr %814, ptr %73, align 8
  %815 = load ptr, ptr %73, align 8
  %816 = load i32, ptr %815, align 4
  %817 = zext i32 %816 to i64
  %818 = load ptr, ptr %73, align 8
  %819 = getelementptr inbounds i32, ptr %818, i64 1
  %820 = load i32, ptr %819, align 4
  %821 = zext i32 %820 to i64
  %822 = shl i64 %821, 32
  %823 = add i64 %817, %822
  store i64 %823, ptr %71, align 8
  br label %824

824:                                              ; preds = %810, %813
  %825 = load i64, ptr %71, align 8
  %826 = xor i64 %806, %825
  %827 = load ptr, ptr %127, align 8
  %828 = getelementptr inbounds i8, ptr %827, i64 8
  store ptr %828, ptr %126, align 8
  %829 = call i32 @XXH_isLittleEndian()
  %830 = icmp ne i32 %829, 0
  br i1 %830, label %831, label %834

831:                                              ; preds = %824
  %832 = load ptr, ptr %126, align 8
  %833 = call i64 @XXH_read64(ptr noundef %832)
  br label %838

834:                                              ; preds = %824
  %835 = load ptr, ptr %126, align 8
  %836 = call i64 @XXH_read64(ptr noundef %835)
  %837 = call i64 @XXH_swap64(i64 noundef %836)
  br label %838

838:                                              ; preds = %831, %834
  %839 = phi i64 [ %833, %831 ], [ %837, %834 ]
  %840 = load ptr, ptr %129, align 8
  %841 = getelementptr inbounds i64, ptr %840, i64 1
  store ptr %841, ptr %75, align 8
  %842 = call i32 @XXH_isLittleEndian()
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %844, label %847

844:                                              ; preds = %838
  %845 = load ptr, ptr %75, align 8
  %846 = load i64, ptr %845, align 8
  store i64 %846, ptr %74, align 8
  br label %858

847:                                              ; preds = %838
  %848 = load ptr, ptr %75, align 8
  store ptr %848, ptr %76, align 8
  %849 = load ptr, ptr %76, align 8
  %850 = load i32, ptr %849, align 4
  %851 = zext i32 %850 to i64
  %852 = load ptr, ptr %76, align 8
  %853 = getelementptr inbounds i32, ptr %852, i64 1
  %854 = load i32, ptr %853, align 4
  %855 = zext i32 %854 to i64
  %856 = shl i64 %855, 32
  %857 = add i64 %851, %856
  store i64 %857, ptr %74, align 8
  br label %858

858:                                              ; preds = %844, %847
  %859 = load i64, ptr %74, align 8
  %860 = xor i64 %839, %859
  %861 = call i64 @XXH3_mul128(i64 noundef %826, i64 noundef %860)
  %862 = load i64, ptr %149, align 8
  %863 = add i64 %862, %861
  store i64 %863, ptr %149, align 8
  %864 = load ptr, ptr %151, align 8
  %865 = load i64, ptr %147, align 8
  %866 = getelementptr inbounds nuw i8, ptr %864, i64 %865
  %867 = getelementptr inbounds i8, ptr %866, i64 -32
  store ptr %867, ptr %132, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 6), ptr %133, align 8
  %868 = load ptr, ptr %133, align 8
  store ptr %868, ptr %134, align 8
  %869 = load ptr, ptr %132, align 8
  store ptr %869, ptr %130, align 8
  %870 = call i32 @XXH_isLittleEndian()
  %871 = icmp ne i32 %870, 0
  br i1 %871, label %872, label %875

872:                                              ; preds = %858
  %873 = load ptr, ptr %130, align 8
  %874 = call i64 @XXH_read64(ptr noundef %873)
  br label %879

875:                                              ; preds = %858
  %876 = load ptr, ptr %130, align 8
  %877 = call i64 @XXH_read64(ptr noundef %876)
  %878 = call i64 @XXH_swap64(i64 noundef %877)
  br label %879

879:                                              ; preds = %875, %872
  %880 = phi i64 [ %874, %872 ], [ %878, %875 ]
  %881 = load ptr, ptr %134, align 8
  store ptr %881, ptr %66, align 8
  %882 = call i32 @XXH_isLittleEndian()
  %883 = icmp ne i32 %882, 0
  br i1 %883, label %884, label %887

884:                                              ; preds = %879
  %885 = load ptr, ptr %66, align 8
  %886 = load i64, ptr %885, align 8
  store i64 %886, ptr %65, align 8
  br label %898

887:                                              ; preds = %879
  %888 = load ptr, ptr %66, align 8
  store ptr %888, ptr %67, align 8
  %889 = load ptr, ptr %67, align 8
  %890 = load i32, ptr %889, align 4
  %891 = zext i32 %890 to i64
  %892 = load ptr, ptr %67, align 8
  %893 = getelementptr inbounds i32, ptr %892, i64 1
  %894 = load i32, ptr %893, align 4
  %895 = zext i32 %894 to i64
  %896 = shl i64 %895, 32
  %897 = add i64 %891, %896
  store i64 %897, ptr %65, align 8
  br label %898

898:                                              ; preds = %884, %887
  %899 = load i64, ptr %65, align 8
  %900 = xor i64 %880, %899
  %901 = load ptr, ptr %132, align 8
  %902 = getelementptr inbounds i8, ptr %901, i64 8
  store ptr %902, ptr %131, align 8
  %903 = call i32 @XXH_isLittleEndian()
  %904 = icmp ne i32 %903, 0
  br i1 %904, label %905, label %908

905:                                              ; preds = %898
  %906 = load ptr, ptr %131, align 8
  %907 = call i64 @XXH_read64(ptr noundef %906)
  br label %912

908:                                              ; preds = %898
  %909 = load ptr, ptr %131, align 8
  %910 = call i64 @XXH_read64(ptr noundef %909)
  %911 = call i64 @XXH_swap64(i64 noundef %910)
  br label %912

912:                                              ; preds = %905, %908
  %913 = phi i64 [ %907, %905 ], [ %911, %908 ]
  %914 = load ptr, ptr %134, align 8
  %915 = getelementptr inbounds i64, ptr %914, i64 1
  store ptr %915, ptr %69, align 8
  %916 = call i32 @XXH_isLittleEndian()
  %917 = icmp ne i32 %916, 0
  br i1 %917, label %918, label %921

918:                                              ; preds = %912
  %919 = load ptr, ptr %69, align 8
  %920 = load i64, ptr %919, align 8
  store i64 %920, ptr %68, align 8
  br label %932

921:                                              ; preds = %912
  %922 = load ptr, ptr %69, align 8
  store ptr %922, ptr %70, align 8
  %923 = load ptr, ptr %70, align 8
  %924 = load i32, ptr %923, align 4
  %925 = zext i32 %924 to i64
  %926 = load ptr, ptr %70, align 8
  %927 = getelementptr inbounds i32, ptr %926, i64 1
  %928 = load i32, ptr %927, align 4
  %929 = zext i32 %928 to i64
  %930 = shl i64 %929, 32
  %931 = add i64 %925, %930
  store i64 %931, ptr %68, align 8
  br label %932

932:                                              ; preds = %918, %921
  %933 = load i64, ptr %68, align 8
  %934 = xor i64 %913, %933
  %935 = call i64 @XXH3_mul128(i64 noundef %900, i64 noundef %934)
  %936 = load i64, ptr %150, align 8
  %937 = add i64 %936, %935
  store i64 %937, ptr %150, align 8
  br label %938

938:                                              ; preds = %932, %471
  %939 = load ptr, ptr %151, align 8
  %940 = getelementptr inbounds i8, ptr %939, i64 0
  store ptr %940, ptr %137, align 8
  store ptr @kKey, ptr %138, align 8
  %941 = load ptr, ptr %138, align 8
  store ptr %941, ptr %139, align 8
  %942 = load ptr, ptr %137, align 8
  store ptr %942, ptr %135, align 8
  %943 = call i32 @XXH_isLittleEndian()
  %944 = icmp ne i32 %943, 0
  br i1 %944, label %945, label %948

945:                                              ; preds = %938
  %946 = load ptr, ptr %135, align 8
  %947 = call i64 @XXH_read64(ptr noundef %946)
  br label %952

948:                                              ; preds = %938
  %949 = load ptr, ptr %135, align 8
  %950 = call i64 @XXH_read64(ptr noundef %949)
  %951 = call i64 @XXH_swap64(i64 noundef %950)
  br label %952

952:                                              ; preds = %948, %945
  %953 = phi i64 [ %947, %945 ], [ %951, %948 ]
  %954 = load ptr, ptr %139, align 8
  store ptr %954, ptr %60, align 8
  %955 = call i32 @XXH_isLittleEndian()
  %956 = icmp ne i32 %955, 0
  br i1 %956, label %957, label %960

957:                                              ; preds = %952
  %958 = load ptr, ptr %60, align 8
  %959 = load i64, ptr %958, align 8
  store i64 %959, ptr %59, align 8
  br label %971

960:                                              ; preds = %952
  %961 = load ptr, ptr %60, align 8
  store ptr %961, ptr %61, align 8
  %962 = load ptr, ptr %61, align 8
  %963 = load i32, ptr %962, align 4
  %964 = zext i32 %963 to i64
  %965 = load ptr, ptr %61, align 8
  %966 = getelementptr inbounds i32, ptr %965, i64 1
  %967 = load i32, ptr %966, align 4
  %968 = zext i32 %967 to i64
  %969 = shl i64 %968, 32
  %970 = add i64 %964, %969
  store i64 %970, ptr %59, align 8
  br label %971

971:                                              ; preds = %957, %960
  %972 = load i64, ptr %59, align 8
  %973 = xor i64 %953, %972
  %974 = load ptr, ptr %137, align 8
  %975 = getelementptr inbounds i8, ptr %974, i64 8
  store ptr %975, ptr %136, align 8
  %976 = call i32 @XXH_isLittleEndian()
  %977 = icmp ne i32 %976, 0
  br i1 %977, label %978, label %981

978:                                              ; preds = %971
  %979 = load ptr, ptr %136, align 8
  %980 = call i64 @XXH_read64(ptr noundef %979)
  br label %985

981:                                              ; preds = %971
  %982 = load ptr, ptr %136, align 8
  %983 = call i64 @XXH_read64(ptr noundef %982)
  %984 = call i64 @XXH_swap64(i64 noundef %983)
  br label %985

985:                                              ; preds = %978, %981
  %986 = phi i64 [ %980, %978 ], [ %984, %981 ]
  %987 = load ptr, ptr %139, align 8
  %988 = getelementptr inbounds i64, ptr %987, i64 1
  store ptr %988, ptr %63, align 8
  %989 = call i32 @XXH_isLittleEndian()
  %990 = icmp ne i32 %989, 0
  br i1 %990, label %991, label %994

991:                                              ; preds = %985
  %992 = load ptr, ptr %63, align 8
  %993 = load i64, ptr %992, align 8
  store i64 %993, ptr %62, align 8
  br label %1005

994:                                              ; preds = %985
  %995 = load ptr, ptr %63, align 8
  store ptr %995, ptr %64, align 8
  %996 = load ptr, ptr %64, align 8
  %997 = load i32, ptr %996, align 4
  %998 = zext i32 %997 to i64
  %999 = load ptr, ptr %64, align 8
  %1000 = getelementptr inbounds i32, ptr %999, i64 1
  %1001 = load i32, ptr %1000, align 4
  %1002 = zext i32 %1001 to i64
  %1003 = shl i64 %1002, 32
  %1004 = add i64 %998, %1003
  store i64 %1004, ptr %62, align 8
  br label %1005

1005:                                             ; preds = %991, %994
  %1006 = load i64, ptr %62, align 8
  %1007 = xor i64 %986, %1006
  %1008 = call i64 @XXH3_mul128(i64 noundef %973, i64 noundef %1007)
  %1009 = load i64, ptr %149, align 8
  %1010 = add i64 %1009, %1008
  store i64 %1010, ptr %149, align 8
  %1011 = load ptr, ptr %151, align 8
  %1012 = load i64, ptr %147, align 8
  %1013 = getelementptr inbounds nuw i8, ptr %1011, i64 %1012
  %1014 = getelementptr inbounds i8, ptr %1013, i64 -16
  store ptr %1014, ptr %142, align 8
  store ptr getelementptr inbounds (i64, ptr @kKey, i64 2), ptr %143, align 8
  %1015 = load ptr, ptr %143, align 8
  store ptr %1015, ptr %144, align 8
  %1016 = load ptr, ptr %142, align 8
  store ptr %1016, ptr %140, align 8
  %1017 = call i32 @XXH_isLittleEndian()
  %1018 = icmp ne i32 %1017, 0
  br i1 %1018, label %1019, label %1022

1019:                                             ; preds = %1005
  %1020 = load ptr, ptr %140, align 8
  %1021 = call i64 @XXH_read64(ptr noundef %1020)
  br label %1026

1022:                                             ; preds = %1005
  %1023 = load ptr, ptr %140, align 8
  %1024 = call i64 @XXH_read64(ptr noundef %1023)
  %1025 = call i64 @XXH_swap64(i64 noundef %1024)
  br label %1026

1026:                                             ; preds = %1022, %1019
  %1027 = phi i64 [ %1021, %1019 ], [ %1025, %1022 ]
  %1028 = load ptr, ptr %144, align 8
  store ptr %1028, ptr %54, align 8
  %1029 = call i32 @XXH_isLittleEndian()
  %1030 = icmp ne i32 %1029, 0
  br i1 %1030, label %1031, label %1034

1031:                                             ; preds = %1026
  %1032 = load ptr, ptr %54, align 8
  %1033 = load i64, ptr %1032, align 8
  store i64 %1033, ptr %53, align 8
  br label %1045

1034:                                             ; preds = %1026
  %1035 = load ptr, ptr %54, align 8
  store ptr %1035, ptr %55, align 8
  %1036 = load ptr, ptr %55, align 8
  %1037 = load i32, ptr %1036, align 4
  %1038 = zext i32 %1037 to i64
  %1039 = load ptr, ptr %55, align 8
  %1040 = getelementptr inbounds i32, ptr %1039, i64 1
  %1041 = load i32, ptr %1040, align 4
  %1042 = zext i32 %1041 to i64
  %1043 = shl i64 %1042, 32
  %1044 = add i64 %1038, %1043
  store i64 %1044, ptr %53, align 8
  br label %1045

1045:                                             ; preds = %1031, %1034
  %1046 = load i64, ptr %53, align 8
  %1047 = xor i64 %1027, %1046
  %1048 = load ptr, ptr %142, align 8
  %1049 = getelementptr inbounds i8, ptr %1048, i64 8
  store ptr %1049, ptr %141, align 8
  %1050 = call i32 @XXH_isLittleEndian()
  %1051 = icmp ne i32 %1050, 0
  br i1 %1051, label %1052, label %1055

1052:                                             ; preds = %1045
  %1053 = load ptr, ptr %141, align 8
  %1054 = call i64 @XXH_read64(ptr noundef %1053)
  br label %1059

1055:                                             ; preds = %1045
  %1056 = load ptr, ptr %141, align 8
  %1057 = call i64 @XXH_read64(ptr noundef %1056)
  %1058 = call i64 @XXH_swap64(i64 noundef %1057)
  br label %1059

1059:                                             ; preds = %1052, %1055
  %1060 = phi i64 [ %1054, %1052 ], [ %1058, %1055 ]
  %1061 = load ptr, ptr %144, align 8
  %1062 = getelementptr inbounds i64, ptr %1061, i64 1
  store ptr %1062, ptr %57, align 8
  %1063 = call i32 @XXH_isLittleEndian()
  %1064 = icmp ne i32 %1063, 0
  br i1 %1064, label %1065, label %1068

1065:                                             ; preds = %1059
  %1066 = load ptr, ptr %57, align 8
  %1067 = load i64, ptr %1066, align 8
  store i64 %1067, ptr %56, align 8
  br label %1079

1068:                                             ; preds = %1059
  %1069 = load ptr, ptr %57, align 8
  store ptr %1069, ptr %58, align 8
  %1070 = load ptr, ptr %58, align 8
  %1071 = load i32, ptr %1070, align 4
  %1072 = zext i32 %1071 to i64
  %1073 = load ptr, ptr %58, align 8
  %1074 = getelementptr inbounds i32, ptr %1073, i64 1
  %1075 = load i32, ptr %1074, align 4
  %1076 = zext i32 %1075 to i64
  %1077 = shl i64 %1076, 32
  %1078 = add i64 %1072, %1077
  store i64 %1078, ptr %56, align 8
  br label %1079

1079:                                             ; preds = %1065, %1068
  %1080 = load i64, ptr %56, align 8
  %1081 = xor i64 %1060, %1080
  %1082 = call i64 @XXH3_mul128(i64 noundef %1047, i64 noundef %1081)
  %1083 = load i64, ptr %150, align 8
  %1084 = add i64 %1083, %1082
  store i64 %1084, ptr %150, align 8
  %1085 = load i64, ptr %149, align 8
  %1086 = load i64, ptr %150, align 8
  %1087 = add i64 %1085, %1086
  store i64 %1087, ptr %153, align 8
  %1088 = load i64, ptr %149, align 8
  %1089 = mul i64 %1088, 1609587929392839161
  %1090 = load i64, ptr %150, align 8
  %1091 = mul i64 %1090, -8796714831421723037
  %1092 = add i64 %1089, %1091
  %1093 = load i64, ptr %147, align 8
  %1094 = load i64, ptr %148, align 8
  %1095 = sub i64 %1093, %1094
  %1096 = mul i64 %1095, -4417276706812531889
  %1097 = add i64 %1092, %1096
  store i64 %1097, ptr %154, align 8
  %1098 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %145, i32 0, i32 0
  %1099 = load i64, ptr %153, align 8
  %1100 = call i64 @XXH3_avalanche(i64 noundef %1099)
  store i64 %1100, ptr %1098, align 8
  %1101 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %145, i32 0, i32 1
  %1102 = load i64, ptr %154, align 8
  %1103 = call i64 @XXH3_avalanche(i64 noundef %1102)
  %1104 = sub i64 0, %1103
  store i64 %1104, ptr %1101, align 8
  br label %1105

1105:                                             ; preds = %1079, %488, %465
  %1106 = load { i64, i64 }, ptr %145, align 8
  ret { i64, i64 } %1106
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @XXH3_hashLong_128b(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.XXH128_hash_t, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [8 x i64], align 64
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %11 = load i64, ptr %7, align 8
  store i64 %11, ptr %8, align 8
  %12 = getelementptr inbounds i64, ptr %8, i64 1
  store i64 -7046029288634856825, ptr %12, align 8
  %13 = getelementptr inbounds i64, ptr %8, i64 2
  store i64 -4417276706812531889, ptr %13, align 8
  %14 = getelementptr inbounds i64, ptr %8, i64 3
  store i64 1609587929392839161, ptr %14, align 8
  %15 = getelementptr inbounds i64, ptr %8, i64 4
  store i64 -8796714831421723037, ptr %15, align 8
  %16 = getelementptr inbounds i64, ptr %8, i64 5
  store i64 2870177450012600261, ptr %16, align 8
  %17 = getelementptr inbounds i64, ptr %8, i64 6
  %18 = load i64, ptr %7, align 8
  %19 = sub i64 0, %18
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds i64, ptr %8, i64 7
  store i64 0, ptr %20, align 8
  %21 = getelementptr inbounds [8 x i64], ptr %8, i64 0, i64 0
  %22 = load ptr, ptr %5, align 8
  %23 = load i64, ptr %6, align 8
  call void @XXH3_hashLong(ptr noundef %21, ptr noundef %22, i64 noundef %23)
  %24 = getelementptr inbounds [8 x i64], ptr %8, i64 0, i64 0
  %25 = load i64, ptr %6, align 8
  %26 = mul i64 %25, -7046029288634856825
  %27 = call i64 @XXH3_mergeAccs(ptr noundef %24, ptr noundef @kKey, i64 noundef %26)
  store i64 %27, ptr %9, align 8
  %28 = getelementptr inbounds [8 x i64], ptr %8, i64 0, i64 0
  %29 = load i64, ptr %6, align 8
  %30 = add i64 %29, 1
  %31 = mul i64 %30, -4417276706812531889
  %32 = call i64 @XXH3_mergeAccs(ptr noundef %28, ptr noundef getelementptr inbounds (i32, ptr @kKey, i64 16), i64 noundef %31)
  store i64 %32, ptr %10, align 8
  %33 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %4, i32 0, i32 0
  %34 = load i64, ptr %9, align 8
  store i64 %34, ptr %33, align 8
  %35 = getelementptr inbounds nuw %struct.XXH128_hash_t, ptr %4, i32 0, i32 1
  %36 = load i64, ptr %10, align 8
  store i64 %36, ptr %35, align 8
  %37 = load { i64, i64 }, ptr %4, align 8
  ret { i64, i64 } %37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @XXH3_128bits(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.XXH128_hash_t, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i64, ptr %5, align 8
  %8 = call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef %6, i64 noundef %7, i64 noundef 0)
  %9 = getelementptr inbounds nuw { i64, i64 }, ptr %3, i32 0, i32 0
  %10 = extractvalue { i64, i64 } %8, 0
  store i64 %10, ptr %9, align 8
  %11 = getelementptr inbounds nuw { i64, i64 }, ptr %3, i32 0, i32 1
  %12 = extractvalue { i64, i64 } %8, 1
  store i64 %12, ptr %11, align 8
  %13 = load { i64, i64 }, ptr %3, align 8
  ret { i64, i64 } %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @XXH128(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.XXH128_hash_t, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = load i64, ptr %7, align 8
  %11 = call { i64, i64 } @XXH3_128bits_withSeed(ptr noundef %8, i64 noundef %9, i64 noundef %10)
  %12 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 0
  %13 = extractvalue { i64, i64 } %11, 0
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds nuw { i64, i64 }, ptr %4, i32 0, i32 1
  %15 = extractvalue { i64, i64 } %11, 1
  store i64 %15, ptr %14, align 8
  %16 = load { i64, i64 }, ptr %4, align 8
  ret { i64, i64 } %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH32_finalize(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  %33 = alloca ptr, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca ptr, align 8
  %37 = alloca i32, align 4
  %38 = alloca ptr, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca ptr, align 8
  %42 = alloca i32, align 4
  %43 = alloca ptr, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca ptr, align 8
  %47 = alloca i32, align 4
  %48 = alloca ptr, align 8
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca ptr, align 8
  %52 = alloca i32, align 4
  %53 = alloca ptr, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca ptr, align 8
  %57 = alloca i32, align 4
  %58 = alloca ptr, align 8
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca ptr, align 8
  %62 = alloca i32, align 4
  %63 = alloca ptr, align 8
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca ptr, align 8
  %69 = alloca i64, align 8
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca ptr, align 8
  store i32 %0, ptr %67, align 4
  store ptr %1, ptr %68, align 8
  store i64 %2, ptr %69, align 8
  store i32 %3, ptr %70, align 4
  store i32 %4, ptr %71, align 4
  %73 = load ptr, ptr %68, align 8
  store ptr %73, ptr %72, align 8
  %74 = load i64, ptr %69, align 8
  %75 = and i64 %74, 15
  switch i64 %75, label %694 [
    i64 12, label %76
    i64 8, label %120
    i64 4, label %164
    i64 13, label %210
    i64 9, label %254
    i64 5, label %298
    i64 14, label %357
    i64 10, label %401
    i64 6, label %445
    i64 15, label %517
    i64 11, label %561
    i64 7, label %605
    i64 3, label %649
    i64 2, label %663
    i64 1, label %677
    i64 0, label %691
  ]

76:                                               ; preds = %5
  %77 = load ptr, ptr %72, align 8
  %78 = load i32, ptr %70, align 4
  %79 = load i32, ptr %71, align 4
  store ptr %77, ptr %8, align 8
  store i32 %78, ptr %9, align 4
  store i32 %79, ptr %10, align 4
  %80 = load i32, ptr %10, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load ptr, ptr %8, align 8
  store ptr %83, ptr %6, align 8
  %84 = call i32 @XXH_isLittleEndian()
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load ptr, ptr %6, align 8
  %88 = call i32 @XXH_read32(ptr noundef %87)
  br label %93

89:                                               ; preds = %82
  %90 = load ptr, ptr %6, align 8
  %91 = call i32 @XXH_read32(ptr noundef %90)
  %92 = call i32 @XXH_swap32(i32 noundef %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i32 [ %88, %86 ], [ %92, %89 ]
  store i32 %94, ptr %7, align 4
  br label %107

95:                                               ; preds = %76
  %96 = load i32, ptr %9, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load ptr, ptr %8, align 8
  %100 = load i32, ptr %99, align 4
  br label %105

101:                                              ; preds = %95
  %102 = load ptr, ptr %8, align 8
  %103 = load i32, ptr %102, align 4
  %104 = call i32 @XXH_swap32(i32 noundef %103)
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i32 [ %100, %98 ], [ %104, %101 ]
  store i32 %106, ptr %7, align 4
  br label %107

107:                                              ; preds = %93, %105
  %108 = load i32, ptr %7, align 4
  %109 = mul i32 %108, -1028477379
  %110 = load i32, ptr %67, align 4
  %111 = add i32 %110, %109
  store i32 %111, ptr %67, align 4
  %112 = load ptr, ptr %72, align 8
  %113 = getelementptr inbounds i8, ptr %112, i64 4
  store ptr %113, ptr %72, align 8
  %114 = load i32, ptr %67, align 4
  %115 = shl i32 %114, 17
  %116 = load i32, ptr %67, align 4
  %117 = lshr i32 %116, 15
  %118 = or i32 %115, %117
  %119 = mul i32 %118, 668265263
  store i32 %119, ptr %67, align 4
  br label %120

120:                                              ; preds = %5, %107
  %121 = load ptr, ptr %72, align 8
  %122 = load i32, ptr %70, align 4
  %123 = load i32, ptr %71, align 4
  store ptr %121, ptr %13, align 8
  store i32 %122, ptr %14, align 4
  store i32 %123, ptr %15, align 4
  %124 = load i32, ptr %15, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = load ptr, ptr %13, align 8
  store ptr %127, ptr %11, align 8
  %128 = call i32 @XXH_isLittleEndian()
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load ptr, ptr %11, align 8
  %132 = call i32 @XXH_read32(ptr noundef %131)
  br label %137

133:                                              ; preds = %126
  %134 = load ptr, ptr %11, align 8
  %135 = call i32 @XXH_read32(ptr noundef %134)
  %136 = call i32 @XXH_swap32(i32 noundef %135)
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i32 [ %132, %130 ], [ %136, %133 ]
  store i32 %138, ptr %12, align 4
  br label %151

139:                                              ; preds = %120
  %140 = load i32, ptr %14, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load ptr, ptr %13, align 8
  %144 = load i32, ptr %143, align 4
  br label %149

145:                                              ; preds = %139
  %146 = load ptr, ptr %13, align 8
  %147 = load i32, ptr %146, align 4
  %148 = call i32 @XXH_swap32(i32 noundef %147)
  br label %149

149:                                              ; preds = %145, %142
  %150 = phi i32 [ %144, %142 ], [ %148, %145 ]
  store i32 %150, ptr %12, align 4
  br label %151

151:                                              ; preds = %137, %149
  %152 = load i32, ptr %12, align 4
  %153 = mul i32 %152, -1028477379
  %154 = load i32, ptr %67, align 4
  %155 = add i32 %154, %153
  store i32 %155, ptr %67, align 4
  %156 = load ptr, ptr %72, align 8
  %157 = getelementptr inbounds i8, ptr %156, i64 4
  store ptr %157, ptr %72, align 8
  %158 = load i32, ptr %67, align 4
  %159 = shl i32 %158, 17
  %160 = load i32, ptr %67, align 4
  %161 = lshr i32 %160, 15
  %162 = or i32 %159, %161
  %163 = mul i32 %162, 668265263
  store i32 %163, ptr %67, align 4
  br label %164

164:                                              ; preds = %5, %151
  %165 = load ptr, ptr %72, align 8
  %166 = load i32, ptr %70, align 4
  %167 = load i32, ptr %71, align 4
  store ptr %165, ptr %18, align 8
  store i32 %166, ptr %19, align 4
  store i32 %167, ptr %20, align 4
  %168 = load i32, ptr %20, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %183

170:                                              ; preds = %164
  %171 = load ptr, ptr %18, align 8
  store ptr %171, ptr %16, align 8
  %172 = call i32 @XXH_isLittleEndian()
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load ptr, ptr %16, align 8
  %176 = call i32 @XXH_read32(ptr noundef %175)
  br label %181

177:                                              ; preds = %170
  %178 = load ptr, ptr %16, align 8
  %179 = call i32 @XXH_read32(ptr noundef %178)
  %180 = call i32 @XXH_swap32(i32 noundef %179)
  br label %181

181:                                              ; preds = %177, %174
  %182 = phi i32 [ %176, %174 ], [ %180, %177 ]
  store i32 %182, ptr %17, align 4
  br label %195

183:                                              ; preds = %164
  %184 = load i32, ptr %19, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load ptr, ptr %18, align 8
  %188 = load i32, ptr %187, align 4
  br label %193

189:                                              ; preds = %183
  %190 = load ptr, ptr %18, align 8
  %191 = load i32, ptr %190, align 4
  %192 = call i32 @XXH_swap32(i32 noundef %191)
  br label %193

193:                                              ; preds = %189, %186
  %194 = phi i32 [ %188, %186 ], [ %192, %189 ]
  store i32 %194, ptr %17, align 4
  br label %195

195:                                              ; preds = %181, %193
  %196 = load i32, ptr %17, align 4
  %197 = mul i32 %196, -1028477379
  %198 = load i32, ptr %67, align 4
  %199 = add i32 %198, %197
  store i32 %199, ptr %67, align 4
  %200 = load ptr, ptr %72, align 8
  %201 = getelementptr inbounds i8, ptr %200, i64 4
  store ptr %201, ptr %72, align 8
  %202 = load i32, ptr %67, align 4
  %203 = shl i32 %202, 17
  %204 = load i32, ptr %67, align 4
  %205 = lshr i32 %204, 15
  %206 = or i32 %203, %205
  %207 = mul i32 %206, 668265263
  store i32 %207, ptr %67, align 4
  %208 = load i32, ptr %67, align 4
  %209 = call i32 @XXH32_avalanche(i32 noundef %208)
  store i32 %209, ptr %66, align 4
  br label %695

210:                                              ; preds = %5
  %211 = load ptr, ptr %72, align 8
  %212 = load i32, ptr %70, align 4
  %213 = load i32, ptr %71, align 4
  store ptr %211, ptr %23, align 8
  store i32 %212, ptr %24, align 4
  store i32 %213, ptr %25, align 4
  %214 = load i32, ptr %25, align 4
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %229

216:                                              ; preds = %210
  %217 = load ptr, ptr %23, align 8
  store ptr %217, ptr %21, align 8
  %218 = call i32 @XXH_isLittleEndian()
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load ptr, ptr %21, align 8
  %222 = call i32 @XXH_read32(ptr noundef %221)
  br label %227

223:                                              ; preds = %216
  %224 = load ptr, ptr %21, align 8
  %225 = call i32 @XXH_read32(ptr noundef %224)
  %226 = call i32 @XXH_swap32(i32 noundef %225)
  br label %227

227:                                              ; preds = %223, %220
  %228 = phi i32 [ %222, %220 ], [ %226, %223 ]
  store i32 %228, ptr %22, align 4
  br label %241

229:                                              ; preds = %210
  %230 = load i32, ptr %24, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load ptr, ptr %23, align 8
  %234 = load i32, ptr %233, align 4
  br label %239

235:                                              ; preds = %229
  %236 = load ptr, ptr %23, align 8
  %237 = load i32, ptr %236, align 4
  %238 = call i32 @XXH_swap32(i32 noundef %237)
  br label %239

239:                                              ; preds = %235, %232
  %240 = phi i32 [ %234, %232 ], [ %238, %235 ]
  store i32 %240, ptr %22, align 4
  br label %241

241:                                              ; preds = %227, %239
  %242 = load i32, ptr %22, align 4
  %243 = mul i32 %242, -1028477379
  %244 = load i32, ptr %67, align 4
  %245 = add i32 %244, %243
  store i32 %245, ptr %67, align 4
  %246 = load ptr, ptr %72, align 8
  %247 = getelementptr inbounds i8, ptr %246, i64 4
  store ptr %247, ptr %72, align 8
  %248 = load i32, ptr %67, align 4
  %249 = shl i32 %248, 17
  %250 = load i32, ptr %67, align 4
  %251 = lshr i32 %250, 15
  %252 = or i32 %249, %251
  %253 = mul i32 %252, 668265263
  store i32 %253, ptr %67, align 4
  br label %254

254:                                              ; preds = %5, %241
  %255 = load ptr, ptr %72, align 8
  %256 = load i32, ptr %70, align 4
  %257 = load i32, ptr %71, align 4
  store ptr %255, ptr %28, align 8
  store i32 %256, ptr %29, align 4
  store i32 %257, ptr %30, align 4
  %258 = load i32, ptr %30, align 4
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %273

260:                                              ; preds = %254
  %261 = load ptr, ptr %28, align 8
  store ptr %261, ptr %26, align 8
  %262 = call i32 @XXH_isLittleEndian()
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = load ptr, ptr %26, align 8
  %266 = call i32 @XXH_read32(ptr noundef %265)
  br label %271

267:                                              ; preds = %260
  %268 = load ptr, ptr %26, align 8
  %269 = call i32 @XXH_read32(ptr noundef %268)
  %270 = call i32 @XXH_swap32(i32 noundef %269)
  br label %271

271:                                              ; preds = %267, %264
  %272 = phi i32 [ %266, %264 ], [ %270, %267 ]
  store i32 %272, ptr %27, align 4
  br label %285

273:                                              ; preds = %254
  %274 = load i32, ptr %29, align 4
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load ptr, ptr %28, align 8
  %278 = load i32, ptr %277, align 4
  br label %283

279:                                              ; preds = %273
  %280 = load ptr, ptr %28, align 8
  %281 = load i32, ptr %280, align 4
  %282 = call i32 @XXH_swap32(i32 noundef %281)
  br label %283

283:                                              ; preds = %279, %276
  %284 = phi i32 [ %278, %276 ], [ %282, %279 ]
  store i32 %284, ptr %27, align 4
  br label %285

285:                                              ; preds = %271, %283
  %286 = load i32, ptr %27, align 4
  %287 = mul i32 %286, -1028477379
  %288 = load i32, ptr %67, align 4
  %289 = add i32 %288, %287
  store i32 %289, ptr %67, align 4
  %290 = load ptr, ptr %72, align 8
  %291 = getelementptr inbounds i8, ptr %290, i64 4
  store ptr %291, ptr %72, align 8
  %292 = load i32, ptr %67, align 4
  %293 = shl i32 %292, 17
  %294 = load i32, ptr %67, align 4
  %295 = lshr i32 %294, 15
  %296 = or i32 %293, %295
  %297 = mul i32 %296, 668265263
  store i32 %297, ptr %67, align 4
  br label %298

298:                                              ; preds = %5, %285
  %299 = load ptr, ptr %72, align 8
  %300 = load i32, ptr %70, align 4
  %301 = load i32, ptr %71, align 4
  store ptr %299, ptr %33, align 8
  store i32 %300, ptr %34, align 4
  store i32 %301, ptr %35, align 4
  %302 = load i32, ptr %35, align 4
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %304, label %317

304:                                              ; preds = %298
  %305 = load ptr, ptr %33, align 8
  store ptr %305, ptr %31, align 8
  %306 = call i32 @XXH_isLittleEndian()
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = load ptr, ptr %31, align 8
  %310 = call i32 @XXH_read32(ptr noundef %309)
  br label %315

311:                                              ; preds = %304
  %312 = load ptr, ptr %31, align 8
  %313 = call i32 @XXH_read32(ptr noundef %312)
  %314 = call i32 @XXH_swap32(i32 noundef %313)
  br label %315

315:                                              ; preds = %311, %308
  %316 = phi i32 [ %310, %308 ], [ %314, %311 ]
  store i32 %316, ptr %32, align 4
  br label %329

317:                                              ; preds = %298
  %318 = load i32, ptr %34, align 4
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load ptr, ptr %33, align 8
  %322 = load i32, ptr %321, align 4
  br label %327

323:                                              ; preds = %317
  %324 = load ptr, ptr %33, align 8
  %325 = load i32, ptr %324, align 4
  %326 = call i32 @XXH_swap32(i32 noundef %325)
  br label %327

327:                                              ; preds = %323, %320
  %328 = phi i32 [ %322, %320 ], [ %326, %323 ]
  store i32 %328, ptr %32, align 4
  br label %329

329:                                              ; preds = %315, %327
  %330 = load i32, ptr %32, align 4
  %331 = mul i32 %330, -1028477379
  %332 = load i32, ptr %67, align 4
  %333 = add i32 %332, %331
  store i32 %333, ptr %67, align 4
  %334 = load ptr, ptr %72, align 8
  %335 = getelementptr inbounds i8, ptr %334, i64 4
  store ptr %335, ptr %72, align 8
  %336 = load i32, ptr %67, align 4
  %337 = shl i32 %336, 17
  %338 = load i32, ptr %67, align 4
  %339 = lshr i32 %338, 15
  %340 = or i32 %337, %339
  %341 = mul i32 %340, 668265263
  store i32 %341, ptr %67, align 4
  %342 = load ptr, ptr %72, align 8
  %343 = getelementptr inbounds nuw i8, ptr %342, i32 1
  store ptr %343, ptr %72, align 8
  %344 = load i8, ptr %342, align 1
  %345 = zext i8 %344 to i32
  %346 = mul i32 %345, 374761393
  %347 = load i32, ptr %67, align 4
  %348 = add i32 %347, %346
  store i32 %348, ptr %67, align 4
  %349 = load i32, ptr %67, align 4
  %350 = shl i32 %349, 11
  %351 = load i32, ptr %67, align 4
  %352 = lshr i32 %351, 21
  %353 = or i32 %350, %352
  %354 = mul i32 %353, -1640531535
  store i32 %354, ptr %67, align 4
  %355 = load i32, ptr %67, align 4
  %356 = call i32 @XXH32_avalanche(i32 noundef %355)
  store i32 %356, ptr %66, align 4
  br label %695

357:                                              ; preds = %5
  %358 = load ptr, ptr %72, align 8
  %359 = load i32, ptr %70, align 4
  %360 = load i32, ptr %71, align 4
  store ptr %358, ptr %38, align 8
  store i32 %359, ptr %39, align 4
  store i32 %360, ptr %40, align 4
  %361 = load i32, ptr %40, align 4
  %362 = icmp eq i32 %361, 1
  br i1 %362, label %363, label %376

363:                                              ; preds = %357
  %364 = load ptr, ptr %38, align 8
  store ptr %364, ptr %36, align 8
  %365 = call i32 @XXH_isLittleEndian()
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %363
  %368 = load ptr, ptr %36, align 8
  %369 = call i32 @XXH_read32(ptr noundef %368)
  br label %374

370:                                              ; preds = %363
  %371 = load ptr, ptr %36, align 8
  %372 = call i32 @XXH_read32(ptr noundef %371)
  %373 = call i32 @XXH_swap32(i32 noundef %372)
  br label %374

374:                                              ; preds = %370, %367
  %375 = phi i32 [ %369, %367 ], [ %373, %370 ]
  store i32 %375, ptr %37, align 4
  br label %388

376:                                              ; preds = %357
  %377 = load i32, ptr %39, align 4
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load ptr, ptr %38, align 8
  %381 = load i32, ptr %380, align 4
  br label %386

382:                                              ; preds = %376
  %383 = load ptr, ptr %38, align 8
  %384 = load i32, ptr %383, align 4
  %385 = call i32 @XXH_swap32(i32 noundef %384)
  br label %386

386:                                              ; preds = %382, %379
  %387 = phi i32 [ %381, %379 ], [ %385, %382 ]
  store i32 %387, ptr %37, align 4
  br label %388

388:                                              ; preds = %374, %386
  %389 = load i32, ptr %37, align 4
  %390 = mul i32 %389, -1028477379
  %391 = load i32, ptr %67, align 4
  %392 = add i32 %391, %390
  store i32 %392, ptr %67, align 4
  %393 = load ptr, ptr %72, align 8
  %394 = getelementptr inbounds i8, ptr %393, i64 4
  store ptr %394, ptr %72, align 8
  %395 = load i32, ptr %67, align 4
  %396 = shl i32 %395, 17
  %397 = load i32, ptr %67, align 4
  %398 = lshr i32 %397, 15
  %399 = or i32 %396, %398
  %400 = mul i32 %399, 668265263
  store i32 %400, ptr %67, align 4
  br label %401

401:                                              ; preds = %5, %388
  %402 = load ptr, ptr %72, align 8
  %403 = load i32, ptr %70, align 4
  %404 = load i32, ptr %71, align 4
  store ptr %402, ptr %43, align 8
  store i32 %403, ptr %44, align 4
  store i32 %404, ptr %45, align 4
  %405 = load i32, ptr %45, align 4
  %406 = icmp eq i32 %405, 1
  br i1 %406, label %407, label %420

407:                                              ; preds = %401
  %408 = load ptr, ptr %43, align 8
  store ptr %408, ptr %41, align 8
  %409 = call i32 @XXH_isLittleEndian()
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %407
  %412 = load ptr, ptr %41, align 8
  %413 = call i32 @XXH_read32(ptr noundef %412)
  br label %418

414:                                              ; preds = %407
  %415 = load ptr, ptr %41, align 8
  %416 = call i32 @XXH_read32(ptr noundef %415)
  %417 = call i32 @XXH_swap32(i32 noundef %416)
  br label %418

418:                                              ; preds = %414, %411
  %419 = phi i32 [ %413, %411 ], [ %417, %414 ]
  store i32 %419, ptr %42, align 4
  br label %432

420:                                              ; preds = %401
  %421 = load i32, ptr %44, align 4
  %422 = icmp eq i32 %421, 1
  br i1 %422, label %423, label %426

423:                                              ; preds = %420
  %424 = load ptr, ptr %43, align 8
  %425 = load i32, ptr %424, align 4
  br label %430

426:                                              ; preds = %420
  %427 = load ptr, ptr %43, align 8
  %428 = load i32, ptr %427, align 4
  %429 = call i32 @XXH_swap32(i32 noundef %428)
  br label %430

430:                                              ; preds = %426, %423
  %431 = phi i32 [ %425, %423 ], [ %429, %426 ]
  store i32 %431, ptr %42, align 4
  br label %432

432:                                              ; preds = %418, %430
  %433 = load i32, ptr %42, align 4
  %434 = mul i32 %433, -1028477379
  %435 = load i32, ptr %67, align 4
  %436 = add i32 %435, %434
  store i32 %436, ptr %67, align 4
  %437 = load ptr, ptr %72, align 8
  %438 = getelementptr inbounds i8, ptr %437, i64 4
  store ptr %438, ptr %72, align 8
  %439 = load i32, ptr %67, align 4
  %440 = shl i32 %439, 17
  %441 = load i32, ptr %67, align 4
  %442 = lshr i32 %441, 15
  %443 = or i32 %440, %442
  %444 = mul i32 %443, 668265263
  store i32 %444, ptr %67, align 4
  br label %445

445:                                              ; preds = %5, %432
  %446 = load ptr, ptr %72, align 8
  %447 = load i32, ptr %70, align 4
  %448 = load i32, ptr %71, align 4
  store ptr %446, ptr %48, align 8
  store i32 %447, ptr %49, align 4
  store i32 %448, ptr %50, align 4
  %449 = load i32, ptr %50, align 4
  %450 = icmp eq i32 %449, 1
  br i1 %450, label %451, label %464

451:                                              ; preds = %445
  %452 = load ptr, ptr %48, align 8
  store ptr %452, ptr %46, align 8
  %453 = call i32 @XXH_isLittleEndian()
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %451
  %456 = load ptr, ptr %46, align 8
  %457 = call i32 @XXH_read32(ptr noundef %456)
  br label %462

458:                                              ; preds = %451
  %459 = load ptr, ptr %46, align 8
  %460 = call i32 @XXH_read32(ptr noundef %459)
  %461 = call i32 @XXH_swap32(i32 noundef %460)
  br label %462

462:                                              ; preds = %458, %455
  %463 = phi i32 [ %457, %455 ], [ %461, %458 ]
  store i32 %463, ptr %47, align 4
  br label %476

464:                                              ; preds = %445
  %465 = load i32, ptr %49, align 4
  %466 = icmp eq i32 %465, 1
  br i1 %466, label %467, label %470

467:                                              ; preds = %464
  %468 = load ptr, ptr %48, align 8
  %469 = load i32, ptr %468, align 4
  br label %474

470:                                              ; preds = %464
  %471 = load ptr, ptr %48, align 8
  %472 = load i32, ptr %471, align 4
  %473 = call i32 @XXH_swap32(i32 noundef %472)
  br label %474

474:                                              ; preds = %470, %467
  %475 = phi i32 [ %469, %467 ], [ %473, %470 ]
  store i32 %475, ptr %47, align 4
  br label %476

476:                                              ; preds = %462, %474
  %477 = load i32, ptr %47, align 4
  %478 = mul i32 %477, -1028477379
  %479 = load i32, ptr %67, align 4
  %480 = add i32 %479, %478
  store i32 %480, ptr %67, align 4
  %481 = load ptr, ptr %72, align 8
  %482 = getelementptr inbounds i8, ptr %481, i64 4
  store ptr %482, ptr %72, align 8
  %483 = load i32, ptr %67, align 4
  %484 = shl i32 %483, 17
  %485 = load i32, ptr %67, align 4
  %486 = lshr i32 %485, 15
  %487 = or i32 %484, %486
  %488 = mul i32 %487, 668265263
  store i32 %488, ptr %67, align 4
  %489 = load ptr, ptr %72, align 8
  %490 = getelementptr inbounds nuw i8, ptr %489, i32 1
  store ptr %490, ptr %72, align 8
  %491 = load i8, ptr %489, align 1
  %492 = zext i8 %491 to i32
  %493 = mul i32 %492, 374761393
  %494 = load i32, ptr %67, align 4
  %495 = add i32 %494, %493
  store i32 %495, ptr %67, align 4
  %496 = load i32, ptr %67, align 4
  %497 = shl i32 %496, 11
  %498 = load i32, ptr %67, align 4
  %499 = lshr i32 %498, 21
  %500 = or i32 %497, %499
  %501 = mul i32 %500, -1640531535
  store i32 %501, ptr %67, align 4
  %502 = load ptr, ptr %72, align 8
  %503 = getelementptr inbounds nuw i8, ptr %502, i32 1
  store ptr %503, ptr %72, align 8
  %504 = load i8, ptr %502, align 1
  %505 = zext i8 %504 to i32
  %506 = mul i32 %505, 374761393
  %507 = load i32, ptr %67, align 4
  %508 = add i32 %507, %506
  store i32 %508, ptr %67, align 4
  %509 = load i32, ptr %67, align 4
  %510 = shl i32 %509, 11
  %511 = load i32, ptr %67, align 4
  %512 = lshr i32 %511, 21
  %513 = or i32 %510, %512
  %514 = mul i32 %513, -1640531535
  store i32 %514, ptr %67, align 4
  %515 = load i32, ptr %67, align 4
  %516 = call i32 @XXH32_avalanche(i32 noundef %515)
  store i32 %516, ptr %66, align 4
  br label %695

517:                                              ; preds = %5
  %518 = load ptr, ptr %72, align 8
  %519 = load i32, ptr %70, align 4
  %520 = load i32, ptr %71, align 4
  store ptr %518, ptr %53, align 8
  store i32 %519, ptr %54, align 4
  store i32 %520, ptr %55, align 4
  %521 = load i32, ptr %55, align 4
  %522 = icmp eq i32 %521, 1
  br i1 %522, label %523, label %536

523:                                              ; preds = %517
  %524 = load ptr, ptr %53, align 8
  store ptr %524, ptr %51, align 8
  %525 = call i32 @XXH_isLittleEndian()
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %530

527:                                              ; preds = %523
  %528 = load ptr, ptr %51, align 8
  %529 = call i32 @XXH_read32(ptr noundef %528)
  br label %534

530:                                              ; preds = %523
  %531 = load ptr, ptr %51, align 8
  %532 = call i32 @XXH_read32(ptr noundef %531)
  %533 = call i32 @XXH_swap32(i32 noundef %532)
  br label %534

534:                                              ; preds = %530, %527
  %535 = phi i32 [ %529, %527 ], [ %533, %530 ]
  store i32 %535, ptr %52, align 4
  br label %548

536:                                              ; preds = %517
  %537 = load i32, ptr %54, align 4
  %538 = icmp eq i32 %537, 1
  br i1 %538, label %539, label %542

539:                                              ; preds = %536
  %540 = load ptr, ptr %53, align 8
  %541 = load i32, ptr %540, align 4
  br label %546

542:                                              ; preds = %536
  %543 = load ptr, ptr %53, align 8
  %544 = load i32, ptr %543, align 4
  %545 = call i32 @XXH_swap32(i32 noundef %544)
  br label %546

546:                                              ; preds = %542, %539
  %547 = phi i32 [ %541, %539 ], [ %545, %542 ]
  store i32 %547, ptr %52, align 4
  br label %548

548:                                              ; preds = %534, %546
  %549 = load i32, ptr %52, align 4
  %550 = mul i32 %549, -1028477379
  %551 = load i32, ptr %67, align 4
  %552 = add i32 %551, %550
  store i32 %552, ptr %67, align 4
  %553 = load ptr, ptr %72, align 8
  %554 = getelementptr inbounds i8, ptr %553, i64 4
  store ptr %554, ptr %72, align 8
  %555 = load i32, ptr %67, align 4
  %556 = shl i32 %555, 17
  %557 = load i32, ptr %67, align 4
  %558 = lshr i32 %557, 15
  %559 = or i32 %556, %558
  %560 = mul i32 %559, 668265263
  store i32 %560, ptr %67, align 4
  br label %561

561:                                              ; preds = %5, %548
  %562 = load ptr, ptr %72, align 8
  %563 = load i32, ptr %70, align 4
  %564 = load i32, ptr %71, align 4
  store ptr %562, ptr %58, align 8
  store i32 %563, ptr %59, align 4
  store i32 %564, ptr %60, align 4
  %565 = load i32, ptr %60, align 4
  %566 = icmp eq i32 %565, 1
  br i1 %566, label %567, label %580

567:                                              ; preds = %561
  %568 = load ptr, ptr %58, align 8
  store ptr %568, ptr %56, align 8
  %569 = call i32 @XXH_isLittleEndian()
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %574

571:                                              ; preds = %567
  %572 = load ptr, ptr %56, align 8
  %573 = call i32 @XXH_read32(ptr noundef %572)
  br label %578

574:                                              ; preds = %567
  %575 = load ptr, ptr %56, align 8
  %576 = call i32 @XXH_read32(ptr noundef %575)
  %577 = call i32 @XXH_swap32(i32 noundef %576)
  br label %578

578:                                              ; preds = %574, %571
  %579 = phi i32 [ %573, %571 ], [ %577, %574 ]
  store i32 %579, ptr %57, align 4
  br label %592

580:                                              ; preds = %561
  %581 = load i32, ptr %59, align 4
  %582 = icmp eq i32 %581, 1
  br i1 %582, label %583, label %586

583:                                              ; preds = %580
  %584 = load ptr, ptr %58, align 8
  %585 = load i32, ptr %584, align 4
  br label %590

586:                                              ; preds = %580
  %587 = load ptr, ptr %58, align 8
  %588 = load i32, ptr %587, align 4
  %589 = call i32 @XXH_swap32(i32 noundef %588)
  br label %590

590:                                              ; preds = %586, %583
  %591 = phi i32 [ %585, %583 ], [ %589, %586 ]
  store i32 %591, ptr %57, align 4
  br label %592

592:                                              ; preds = %578, %590
  %593 = load i32, ptr %57, align 4
  %594 = mul i32 %593, -1028477379
  %595 = load i32, ptr %67, align 4
  %596 = add i32 %595, %594
  store i32 %596, ptr %67, align 4
  %597 = load ptr, ptr %72, align 8
  %598 = getelementptr inbounds i8, ptr %597, i64 4
  store ptr %598, ptr %72, align 8
  %599 = load i32, ptr %67, align 4
  %600 = shl i32 %599, 17
  %601 = load i32, ptr %67, align 4
  %602 = lshr i32 %601, 15
  %603 = or i32 %600, %602
  %604 = mul i32 %603, 668265263
  store i32 %604, ptr %67, align 4
  br label %605

605:                                              ; preds = %5, %592
  %606 = load ptr, ptr %72, align 8
  %607 = load i32, ptr %70, align 4
  %608 = load i32, ptr %71, align 4
  store ptr %606, ptr %63, align 8
  store i32 %607, ptr %64, align 4
  store i32 %608, ptr %65, align 4
  %609 = load i32, ptr %65, align 4
  %610 = icmp eq i32 %609, 1
  br i1 %610, label %611, label %624

611:                                              ; preds = %605
  %612 = load ptr, ptr %63, align 8
  store ptr %612, ptr %61, align 8
  %613 = call i32 @XXH_isLittleEndian()
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %618

615:                                              ; preds = %611
  %616 = load ptr, ptr %61, align 8
  %617 = call i32 @XXH_read32(ptr noundef %616)
  br label %622

618:                                              ; preds = %611
  %619 = load ptr, ptr %61, align 8
  %620 = call i32 @XXH_read32(ptr noundef %619)
  %621 = call i32 @XXH_swap32(i32 noundef %620)
  br label %622

622:                                              ; preds = %618, %615
  %623 = phi i32 [ %617, %615 ], [ %621, %618 ]
  store i32 %623, ptr %62, align 4
  br label %636

624:                                              ; preds = %605
  %625 = load i32, ptr %64, align 4
  %626 = icmp eq i32 %625, 1
  br i1 %626, label %627, label %630

627:                                              ; preds = %624
  %628 = load ptr, ptr %63, align 8
  %629 = load i32, ptr %628, align 4
  br label %634

630:                                              ; preds = %624
  %631 = load ptr, ptr %63, align 8
  %632 = load i32, ptr %631, align 4
  %633 = call i32 @XXH_swap32(i32 noundef %632)
  br label %634

634:                                              ; preds = %630, %627
  %635 = phi i32 [ %629, %627 ], [ %633, %630 ]
  store i32 %635, ptr %62, align 4
  br label %636

636:                                              ; preds = %622, %634
  %637 = load i32, ptr %62, align 4
  %638 = mul i32 %637, -1028477379
  %639 = load i32, ptr %67, align 4
  %640 = add i32 %639, %638
  store i32 %640, ptr %67, align 4
  %641 = load ptr, ptr %72, align 8
  %642 = getelementptr inbounds i8, ptr %641, i64 4
  store ptr %642, ptr %72, align 8
  %643 = load i32, ptr %67, align 4
  %644 = shl i32 %643, 17
  %645 = load i32, ptr %67, align 4
  %646 = lshr i32 %645, 15
  %647 = or i32 %644, %646
  %648 = mul i32 %647, 668265263
  store i32 %648, ptr %67, align 4
  br label %649

649:                                              ; preds = %5, %636
  %650 = load ptr, ptr %72, align 8
  %651 = getelementptr inbounds nuw i8, ptr %650, i32 1
  store ptr %651, ptr %72, align 8
  %652 = load i8, ptr %650, align 1
  %653 = zext i8 %652 to i32
  %654 = mul i32 %653, 374761393
  %655 = load i32, ptr %67, align 4
  %656 = add i32 %655, %654
  store i32 %656, ptr %67, align 4
  %657 = load i32, ptr %67, align 4
  %658 = shl i32 %657, 11
  %659 = load i32, ptr %67, align 4
  %660 = lshr i32 %659, 21
  %661 = or i32 %658, %660
  %662 = mul i32 %661, -1640531535
  store i32 %662, ptr %67, align 4
  br label %663

663:                                              ; preds = %5, %649
  %664 = load ptr, ptr %72, align 8
  %665 = getelementptr inbounds nuw i8, ptr %664, i32 1
  store ptr %665, ptr %72, align 8
  %666 = load i8, ptr %664, align 1
  %667 = zext i8 %666 to i32
  %668 = mul i32 %667, 374761393
  %669 = load i32, ptr %67, align 4
  %670 = add i32 %669, %668
  store i32 %670, ptr %67, align 4
  %671 = load i32, ptr %67, align 4
  %672 = shl i32 %671, 11
  %673 = load i32, ptr %67, align 4
  %674 = lshr i32 %673, 21
  %675 = or i32 %672, %674
  %676 = mul i32 %675, -1640531535
  store i32 %676, ptr %67, align 4
  br label %677

677:                                              ; preds = %5, %663
  %678 = load ptr, ptr %72, align 8
  %679 = getelementptr inbounds nuw i8, ptr %678, i32 1
  store ptr %679, ptr %72, align 8
  %680 = load i8, ptr %678, align 1
  %681 = zext i8 %680 to i32
  %682 = mul i32 %681, 374761393
  %683 = load i32, ptr %67, align 4
  %684 = add i32 %683, %682
  store i32 %684, ptr %67, align 4
  %685 = load i32, ptr %67, align 4
  %686 = shl i32 %685, 11
  %687 = load i32, ptr %67, align 4
  %688 = lshr i32 %687, 21
  %689 = or i32 %686, %688
  %690 = mul i32 %689, -1640531535
  store i32 %690, ptr %67, align 4
  br label %691

691:                                              ; preds = %5, %677
  %692 = load i32, ptr %67, align 4
  %693 = call i32 @XXH32_avalanche(i32 noundef %692)
  store i32 %693, ptr %66, align 4
  br label %695

694:                                              ; preds = %5
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 395, ptr noundef @__PRETTY_FUNCTION__.XXH32_finalize) #10
  unreachable

695:                                              ; preds = %691, %476, %329, %195
  %696 = load i32, ptr %66, align 4
  ret i32 %696
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH32_avalanche(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 15
  %5 = load i32, ptr %2, align 4
  %6 = xor i32 %5, %4
  store i32 %6, ptr %2, align 4
  %7 = load i32, ptr %2, align 4
  %8 = mul i32 %7, -2048144777
  store i32 %8, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %10 = lshr i32 %9, 13
  %11 = load i32, ptr %2, align 4
  %12 = xor i32 %11, %10
  store i32 %12, ptr %2, align 4
  %13 = load i32, ptr %2, align 4
  %14 = mul i32 %13, -1028477379
  store i32 %14, ptr %2, align 4
  %15 = load i32, ptr %2, align 4
  %16 = lshr i32 %15, 16
  %17 = load i32, ptr %2, align 4
  %18 = xor i32 %17, %16
  store i32 %18, ptr %2, align 4
  %19 = load i32, ptr %2, align 4
  ret i32 %19
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XXH_read32(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 1 %4, i64 4, i1 false)
  %5 = load i32, ptr %3, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH64_mergeRound(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %5)
  store i64 %6, ptr %4, align 8
  %7 = load i64, ptr %4, align 8
  %8 = load i64, ptr %3, align 8
  %9 = xor i64 %8, %7
  store i64 %9, ptr %3, align 8
  %10 = load i64, ptr %3, align 8
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  store i64 %12, ptr %3, align 8
  %13 = load i64, ptr %3, align 8
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH64_finalize(i64 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca i64, align 8
  %28 = alloca ptr, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca ptr, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca ptr, align 8
  %37 = alloca i64, align 8
  %38 = alloca ptr, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca ptr, align 8
  %42 = alloca i64, align 8
  %43 = alloca ptr, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca ptr, align 8
  %47 = alloca i64, align 8
  %48 = alloca ptr, align 8
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca ptr, align 8
  %52 = alloca i64, align 8
  %53 = alloca ptr, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca ptr, align 8
  %57 = alloca i64, align 8
  %58 = alloca ptr, align 8
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca ptr, align 8
  %62 = alloca i64, align 8
  %63 = alloca ptr, align 8
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca ptr, align 8
  %67 = alloca i64, align 8
  %68 = alloca ptr, align 8
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca ptr, align 8
  %72 = alloca i64, align 8
  %73 = alloca ptr, align 8
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca ptr, align 8
  %77 = alloca i64, align 8
  %78 = alloca ptr, align 8
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca ptr, align 8
  %82 = alloca i64, align 8
  %83 = alloca ptr, align 8
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca ptr, align 8
  %87 = alloca i64, align 8
  %88 = alloca ptr, align 8
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca ptr, align 8
  %92 = alloca i64, align 8
  %93 = alloca ptr, align 8
  %94 = alloca i32, align 4
  %95 = alloca i32, align 4
  %96 = alloca ptr, align 8
  %97 = alloca i64, align 8
  %98 = alloca ptr, align 8
  %99 = alloca i32, align 4
  %100 = alloca i32, align 4
  %101 = alloca ptr, align 8
  %102 = alloca i64, align 8
  %103 = alloca ptr, align 8
  %104 = alloca i32, align 4
  %105 = alloca i32, align 4
  %106 = alloca ptr, align 8
  %107 = alloca i64, align 8
  %108 = alloca ptr, align 8
  %109 = alloca i32, align 4
  %110 = alloca i32, align 4
  %111 = alloca ptr, align 8
  %112 = alloca i64, align 8
  %113 = alloca ptr, align 8
  %114 = alloca i32, align 4
  %115 = alloca i32, align 4
  %116 = alloca ptr, align 8
  %117 = alloca i64, align 8
  %118 = alloca ptr, align 8
  %119 = alloca i32, align 4
  %120 = alloca i32, align 4
  %121 = alloca ptr, align 8
  %122 = alloca i64, align 8
  %123 = alloca ptr, align 8
  %124 = alloca i32, align 4
  %125 = alloca i32, align 4
  %126 = alloca ptr, align 8
  %127 = alloca i32, align 4
  %128 = alloca ptr, align 8
  %129 = alloca i32, align 4
  %130 = alloca i32, align 4
  %131 = alloca ptr, align 8
  %132 = alloca i32, align 4
  %133 = alloca ptr, align 8
  %134 = alloca i32, align 4
  %135 = alloca i32, align 4
  %136 = alloca ptr, align 8
  %137 = alloca i32, align 4
  %138 = alloca ptr, align 8
  %139 = alloca i32, align 4
  %140 = alloca i32, align 4
  %141 = alloca ptr, align 8
  %142 = alloca i32, align 4
  %143 = alloca ptr, align 8
  %144 = alloca i32, align 4
  %145 = alloca i32, align 4
  %146 = alloca i64, align 8
  %147 = alloca i64, align 8
  %148 = alloca ptr, align 8
  %149 = alloca i64, align 8
  %150 = alloca i32, align 4
  %151 = alloca i32, align 4
  %152 = alloca ptr, align 8
  %153 = alloca i64, align 8
  %154 = alloca i64, align 8
  %155 = alloca i64, align 8
  %156 = alloca i64, align 8
  %157 = alloca i64, align 8
  %158 = alloca i64, align 8
  %159 = alloca i64, align 8
  %160 = alloca i64, align 8
  %161 = alloca i64, align 8
  %162 = alloca i64, align 8
  %163 = alloca i64, align 8
  %164 = alloca i64, align 8
  %165 = alloca i64, align 8
  %166 = alloca i64, align 8
  %167 = alloca i64, align 8
  %168 = alloca i64, align 8
  %169 = alloca i64, align 8
  %170 = alloca i64, align 8
  %171 = alloca i64, align 8
  %172 = alloca i64, align 8
  %173 = alloca i64, align 8
  %174 = alloca i64, align 8
  %175 = alloca i64, align 8
  %176 = alloca i64, align 8
  store i64 %0, ptr %147, align 8
  store ptr %1, ptr %148, align 8
  store i64 %2, ptr %149, align 8
  store i32 %3, ptr %150, align 4
  store i32 %4, ptr %151, align 4
  %177 = load ptr, ptr %148, align 8
  store ptr %177, ptr %152, align 8
  %178 = load i64, ptr %149, align 8
  %179 = and i64 %178, 31
  switch i64 %179, label %1644 [
    i64 24, label %180
    i64 16, label %226
    i64 8, label %272
    i64 28, label %320
    i64 20, label %366
    i64 12, label %412
    i64 4, label %458
    i64 25, label %506
    i64 17, label %552
    i64 9, label %598
    i64 29, label %659
    i64 21, label %705
    i64 13, label %751
    i64 5, label %797
    i64 26, label %858
    i64 18, label %904
    i64 10, label %950
    i64 30, label %1024
    i64 22, label %1070
    i64 14, label %1116
    i64 6, label %1162
    i64 27, label %1236
    i64 19, label %1282
    i64 11, label %1328
    i64 31, label %1415
    i64 23, label %1461
    i64 15, label %1507
    i64 7, label %1553
    i64 3, label %1599
    i64 2, label %1613
    i64 1, label %1627
    i64 0, label %1641
  ]

180:                                              ; preds = %5
  %181 = load ptr, ptr %152, align 8
  %182 = load i32, ptr %150, align 4
  %183 = load i32, ptr %151, align 4
  store ptr %181, ptr %8, align 8
  store i32 %182, ptr %9, align 4
  store i32 %183, ptr %10, align 4
  %184 = load i32, ptr %10, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %199

186:                                              ; preds = %180
  %187 = load ptr, ptr %8, align 8
  store ptr %187, ptr %6, align 8
  %188 = call i32 @XXH_isLittleEndian()
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load ptr, ptr %6, align 8
  %192 = call i64 @XXH_read64(ptr noundef %191)
  br label %197

193:                                              ; preds = %186
  %194 = load ptr, ptr %6, align 8
  %195 = call i64 @XXH_read64(ptr noundef %194)
  %196 = call i64 @XXH_swap64(i64 noundef %195)
  br label %197

197:                                              ; preds = %193, %190
  %198 = phi i64 [ %192, %190 ], [ %196, %193 ]
  store i64 %198, ptr %7, align 8
  br label %211

199:                                              ; preds = %180
  %200 = load i32, ptr %9, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load ptr, ptr %8, align 8
  %204 = load i64, ptr %203, align 8
  br label %209

205:                                              ; preds = %199
  %206 = load ptr, ptr %8, align 8
  %207 = load i64, ptr %206, align 8
  %208 = call i64 @XXH_swap64(i64 noundef %207)
  br label %209

209:                                              ; preds = %205, %202
  %210 = phi i64 [ %204, %202 ], [ %208, %205 ]
  store i64 %210, ptr %7, align 8
  br label %211

211:                                              ; preds = %197, %209
  %212 = load i64, ptr %7, align 8
  %213 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %212)
  store i64 %213, ptr %153, align 8
  %214 = load ptr, ptr %152, align 8
  %215 = getelementptr inbounds i8, ptr %214, i64 8
  store ptr %215, ptr %152, align 8
  %216 = load i64, ptr %153, align 8
  %217 = load i64, ptr %147, align 8
  %218 = xor i64 %217, %216
  store i64 %218, ptr %147, align 8
  %219 = load i64, ptr %147, align 8
  %220 = shl i64 %219, 27
  %221 = load i64, ptr %147, align 8
  %222 = lshr i64 %221, 37
  %223 = or i64 %220, %222
  %224 = mul i64 %223, -7046029288634856825
  %225 = add i64 %224, -8796714831421723037
  store i64 %225, ptr %147, align 8
  br label %226

226:                                              ; preds = %5, %211
  %227 = load ptr, ptr %152, align 8
  %228 = load i32, ptr %150, align 4
  %229 = load i32, ptr %151, align 4
  store ptr %227, ptr %13, align 8
  store i32 %228, ptr %14, align 4
  store i32 %229, ptr %15, align 4
  %230 = load i32, ptr %15, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %245

232:                                              ; preds = %226
  %233 = load ptr, ptr %13, align 8
  store ptr %233, ptr %11, align 8
  %234 = call i32 @XXH_isLittleEndian()
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load ptr, ptr %11, align 8
  %238 = call i64 @XXH_read64(ptr noundef %237)
  br label %243

239:                                              ; preds = %232
  %240 = load ptr, ptr %11, align 8
  %241 = call i64 @XXH_read64(ptr noundef %240)
  %242 = call i64 @XXH_swap64(i64 noundef %241)
  br label %243

243:                                              ; preds = %239, %236
  %244 = phi i64 [ %238, %236 ], [ %242, %239 ]
  store i64 %244, ptr %12, align 8
  br label %257

245:                                              ; preds = %226
  %246 = load i32, ptr %14, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load ptr, ptr %13, align 8
  %250 = load i64, ptr %249, align 8
  br label %255

251:                                              ; preds = %245
  %252 = load ptr, ptr %13, align 8
  %253 = load i64, ptr %252, align 8
  %254 = call i64 @XXH_swap64(i64 noundef %253)
  br label %255

255:                                              ; preds = %251, %248
  %256 = phi i64 [ %250, %248 ], [ %254, %251 ]
  store i64 %256, ptr %12, align 8
  br label %257

257:                                              ; preds = %243, %255
  %258 = load i64, ptr %12, align 8
  %259 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %258)
  store i64 %259, ptr %154, align 8
  %260 = load ptr, ptr %152, align 8
  %261 = getelementptr inbounds i8, ptr %260, i64 8
  store ptr %261, ptr %152, align 8
  %262 = load i64, ptr %154, align 8
  %263 = load i64, ptr %147, align 8
  %264 = xor i64 %263, %262
  store i64 %264, ptr %147, align 8
  %265 = load i64, ptr %147, align 8
  %266 = shl i64 %265, 27
  %267 = load i64, ptr %147, align 8
  %268 = lshr i64 %267, 37
  %269 = or i64 %266, %268
  %270 = mul i64 %269, -7046029288634856825
  %271 = add i64 %270, -8796714831421723037
  store i64 %271, ptr %147, align 8
  br label %272

272:                                              ; preds = %5, %257
  %273 = load ptr, ptr %152, align 8
  %274 = load i32, ptr %150, align 4
  %275 = load i32, ptr %151, align 4
  store ptr %273, ptr %18, align 8
  store i32 %274, ptr %19, align 4
  store i32 %275, ptr %20, align 4
  %276 = load i32, ptr %20, align 4
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %278, label %291

278:                                              ; preds = %272
  %279 = load ptr, ptr %18, align 8
  store ptr %279, ptr %16, align 8
  %280 = call i32 @XXH_isLittleEndian()
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = load ptr, ptr %16, align 8
  %284 = call i64 @XXH_read64(ptr noundef %283)
  br label %289

285:                                              ; preds = %278
  %286 = load ptr, ptr %16, align 8
  %287 = call i64 @XXH_read64(ptr noundef %286)
  %288 = call i64 @XXH_swap64(i64 noundef %287)
  br label %289

289:                                              ; preds = %285, %282
  %290 = phi i64 [ %284, %282 ], [ %288, %285 ]
  store i64 %290, ptr %17, align 8
  br label %303

291:                                              ; preds = %272
  %292 = load i32, ptr %19, align 4
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load ptr, ptr %18, align 8
  %296 = load i64, ptr %295, align 8
  br label %301

297:                                              ; preds = %291
  %298 = load ptr, ptr %18, align 8
  %299 = load i64, ptr %298, align 8
  %300 = call i64 @XXH_swap64(i64 noundef %299)
  br label %301

301:                                              ; preds = %297, %294
  %302 = phi i64 [ %296, %294 ], [ %300, %297 ]
  store i64 %302, ptr %17, align 8
  br label %303

303:                                              ; preds = %289, %301
  %304 = load i64, ptr %17, align 8
  %305 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %304)
  store i64 %305, ptr %155, align 8
  %306 = load ptr, ptr %152, align 8
  %307 = getelementptr inbounds i8, ptr %306, i64 8
  store ptr %307, ptr %152, align 8
  %308 = load i64, ptr %155, align 8
  %309 = load i64, ptr %147, align 8
  %310 = xor i64 %309, %308
  store i64 %310, ptr %147, align 8
  %311 = load i64, ptr %147, align 8
  %312 = shl i64 %311, 27
  %313 = load i64, ptr %147, align 8
  %314 = lshr i64 %313, 37
  %315 = or i64 %312, %314
  %316 = mul i64 %315, -7046029288634856825
  %317 = add i64 %316, -8796714831421723037
  store i64 %317, ptr %147, align 8
  %318 = load i64, ptr %147, align 8
  %319 = call i64 @XXH64_avalanche(i64 noundef %318)
  store i64 %319, ptr %146, align 8
  br label %1645

320:                                              ; preds = %5
  %321 = load ptr, ptr %152, align 8
  %322 = load i32, ptr %150, align 4
  %323 = load i32, ptr %151, align 4
  store ptr %321, ptr %23, align 8
  store i32 %322, ptr %24, align 4
  store i32 %323, ptr %25, align 4
  %324 = load i32, ptr %25, align 4
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %326, label %339

326:                                              ; preds = %320
  %327 = load ptr, ptr %23, align 8
  store ptr %327, ptr %21, align 8
  %328 = call i32 @XXH_isLittleEndian()
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %326
  %331 = load ptr, ptr %21, align 8
  %332 = call i64 @XXH_read64(ptr noundef %331)
  br label %337

333:                                              ; preds = %326
  %334 = load ptr, ptr %21, align 8
  %335 = call i64 @XXH_read64(ptr noundef %334)
  %336 = call i64 @XXH_swap64(i64 noundef %335)
  br label %337

337:                                              ; preds = %333, %330
  %338 = phi i64 [ %332, %330 ], [ %336, %333 ]
  store i64 %338, ptr %22, align 8
  br label %351

339:                                              ; preds = %320
  %340 = load i32, ptr %24, align 4
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = load ptr, ptr %23, align 8
  %344 = load i64, ptr %343, align 8
  br label %349

345:                                              ; preds = %339
  %346 = load ptr, ptr %23, align 8
  %347 = load i64, ptr %346, align 8
  %348 = call i64 @XXH_swap64(i64 noundef %347)
  br label %349

349:                                              ; preds = %345, %342
  %350 = phi i64 [ %344, %342 ], [ %348, %345 ]
  store i64 %350, ptr %22, align 8
  br label %351

351:                                              ; preds = %337, %349
  %352 = load i64, ptr %22, align 8
  %353 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %352)
  store i64 %353, ptr %156, align 8
  %354 = load ptr, ptr %152, align 8
  %355 = getelementptr inbounds i8, ptr %354, i64 8
  store ptr %355, ptr %152, align 8
  %356 = load i64, ptr %156, align 8
  %357 = load i64, ptr %147, align 8
  %358 = xor i64 %357, %356
  store i64 %358, ptr %147, align 8
  %359 = load i64, ptr %147, align 8
  %360 = shl i64 %359, 27
  %361 = load i64, ptr %147, align 8
  %362 = lshr i64 %361, 37
  %363 = or i64 %360, %362
  %364 = mul i64 %363, -7046029288634856825
  %365 = add i64 %364, -8796714831421723037
  store i64 %365, ptr %147, align 8
  br label %366

366:                                              ; preds = %5, %351
  %367 = load ptr, ptr %152, align 8
  %368 = load i32, ptr %150, align 4
  %369 = load i32, ptr %151, align 4
  store ptr %367, ptr %28, align 8
  store i32 %368, ptr %29, align 4
  store i32 %369, ptr %30, align 4
  %370 = load i32, ptr %30, align 4
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %385

372:                                              ; preds = %366
  %373 = load ptr, ptr %28, align 8
  store ptr %373, ptr %26, align 8
  %374 = call i32 @XXH_isLittleEndian()
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %372
  %377 = load ptr, ptr %26, align 8
  %378 = call i64 @XXH_read64(ptr noundef %377)
  br label %383

379:                                              ; preds = %372
  %380 = load ptr, ptr %26, align 8
  %381 = call i64 @XXH_read64(ptr noundef %380)
  %382 = call i64 @XXH_swap64(i64 noundef %381)
  br label %383

383:                                              ; preds = %379, %376
  %384 = phi i64 [ %378, %376 ], [ %382, %379 ]
  store i64 %384, ptr %27, align 8
  br label %397

385:                                              ; preds = %366
  %386 = load i32, ptr %29, align 4
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %391

388:                                              ; preds = %385
  %389 = load ptr, ptr %28, align 8
  %390 = load i64, ptr %389, align 8
  br label %395

391:                                              ; preds = %385
  %392 = load ptr, ptr %28, align 8
  %393 = load i64, ptr %392, align 8
  %394 = call i64 @XXH_swap64(i64 noundef %393)
  br label %395

395:                                              ; preds = %391, %388
  %396 = phi i64 [ %390, %388 ], [ %394, %391 ]
  store i64 %396, ptr %27, align 8
  br label %397

397:                                              ; preds = %383, %395
  %398 = load i64, ptr %27, align 8
  %399 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %398)
  store i64 %399, ptr %157, align 8
  %400 = load ptr, ptr %152, align 8
  %401 = getelementptr inbounds i8, ptr %400, i64 8
  store ptr %401, ptr %152, align 8
  %402 = load i64, ptr %157, align 8
  %403 = load i64, ptr %147, align 8
  %404 = xor i64 %403, %402
  store i64 %404, ptr %147, align 8
  %405 = load i64, ptr %147, align 8
  %406 = shl i64 %405, 27
  %407 = load i64, ptr %147, align 8
  %408 = lshr i64 %407, 37
  %409 = or i64 %406, %408
  %410 = mul i64 %409, -7046029288634856825
  %411 = add i64 %410, -8796714831421723037
  store i64 %411, ptr %147, align 8
  br label %412

412:                                              ; preds = %5, %397
  %413 = load ptr, ptr %152, align 8
  %414 = load i32, ptr %150, align 4
  %415 = load i32, ptr %151, align 4
  store ptr %413, ptr %33, align 8
  store i32 %414, ptr %34, align 4
  store i32 %415, ptr %35, align 4
  %416 = load i32, ptr %35, align 4
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %418, label %431

418:                                              ; preds = %412
  %419 = load ptr, ptr %33, align 8
  store ptr %419, ptr %31, align 8
  %420 = call i32 @XXH_isLittleEndian()
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %418
  %423 = load ptr, ptr %31, align 8
  %424 = call i64 @XXH_read64(ptr noundef %423)
  br label %429

425:                                              ; preds = %418
  %426 = load ptr, ptr %31, align 8
  %427 = call i64 @XXH_read64(ptr noundef %426)
  %428 = call i64 @XXH_swap64(i64 noundef %427)
  br label %429

429:                                              ; preds = %425, %422
  %430 = phi i64 [ %424, %422 ], [ %428, %425 ]
  store i64 %430, ptr %32, align 8
  br label %443

431:                                              ; preds = %412
  %432 = load i32, ptr %34, align 4
  %433 = icmp eq i32 %432, 1
  br i1 %433, label %434, label %437

434:                                              ; preds = %431
  %435 = load ptr, ptr %33, align 8
  %436 = load i64, ptr %435, align 8
  br label %441

437:                                              ; preds = %431
  %438 = load ptr, ptr %33, align 8
  %439 = load i64, ptr %438, align 8
  %440 = call i64 @XXH_swap64(i64 noundef %439)
  br label %441

441:                                              ; preds = %437, %434
  %442 = phi i64 [ %436, %434 ], [ %440, %437 ]
  store i64 %442, ptr %32, align 8
  br label %443

443:                                              ; preds = %429, %441
  %444 = load i64, ptr %32, align 8
  %445 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %444)
  store i64 %445, ptr %158, align 8
  %446 = load ptr, ptr %152, align 8
  %447 = getelementptr inbounds i8, ptr %446, i64 8
  store ptr %447, ptr %152, align 8
  %448 = load i64, ptr %158, align 8
  %449 = load i64, ptr %147, align 8
  %450 = xor i64 %449, %448
  store i64 %450, ptr %147, align 8
  %451 = load i64, ptr %147, align 8
  %452 = shl i64 %451, 27
  %453 = load i64, ptr %147, align 8
  %454 = lshr i64 %453, 37
  %455 = or i64 %452, %454
  %456 = mul i64 %455, -7046029288634856825
  %457 = add i64 %456, -8796714831421723037
  store i64 %457, ptr %147, align 8
  br label %458

458:                                              ; preds = %5, %443
  %459 = load ptr, ptr %152, align 8
  %460 = load i32, ptr %150, align 4
  %461 = load i32, ptr %151, align 4
  store ptr %459, ptr %128, align 8
  store i32 %460, ptr %129, align 4
  store i32 %461, ptr %130, align 4
  %462 = load i32, ptr %130, align 4
  %463 = icmp eq i32 %462, 1
  br i1 %463, label %464, label %477

464:                                              ; preds = %458
  %465 = load ptr, ptr %128, align 8
  store ptr %465, ptr %126, align 8
  %466 = call i32 @XXH_isLittleEndian()
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %464
  %469 = load ptr, ptr %126, align 8
  %470 = call i32 @XXH_read32(ptr noundef %469)
  br label %475

471:                                              ; preds = %464
  %472 = load ptr, ptr %126, align 8
  %473 = call i32 @XXH_read32(ptr noundef %472)
  %474 = call i32 @XXH_swap32(i32 noundef %473)
  br label %475

475:                                              ; preds = %471, %468
  %476 = phi i32 [ %470, %468 ], [ %474, %471 ]
  store i32 %476, ptr %127, align 4
  br label %489

477:                                              ; preds = %458
  %478 = load i32, ptr %129, align 4
  %479 = icmp eq i32 %478, 1
  br i1 %479, label %480, label %483

480:                                              ; preds = %477
  %481 = load ptr, ptr %128, align 8
  %482 = load i32, ptr %481, align 4
  br label %487

483:                                              ; preds = %477
  %484 = load ptr, ptr %128, align 8
  %485 = load i32, ptr %484, align 4
  %486 = call i32 @XXH_swap32(i32 noundef %485)
  br label %487

487:                                              ; preds = %483, %480
  %488 = phi i32 [ %482, %480 ], [ %486, %483 ]
  store i32 %488, ptr %127, align 4
  br label %489

489:                                              ; preds = %475, %487
  %490 = load i32, ptr %127, align 4
  %491 = zext i32 %490 to i64
  %492 = mul i64 %491, -7046029288634856825
  %493 = load i64, ptr %147, align 8
  %494 = xor i64 %493, %492
  store i64 %494, ptr %147, align 8
  %495 = load ptr, ptr %152, align 8
  %496 = getelementptr inbounds i8, ptr %495, i64 4
  store ptr %496, ptr %152, align 8
  %497 = load i64, ptr %147, align 8
  %498 = shl i64 %497, 23
  %499 = load i64, ptr %147, align 8
  %500 = lshr i64 %499, 41
  %501 = or i64 %498, %500
  %502 = mul i64 %501, -4417276706812531889
  %503 = add i64 %502, 1609587929392839161
  store i64 %503, ptr %147, align 8
  %504 = load i64, ptr %147, align 8
  %505 = call i64 @XXH64_avalanche(i64 noundef %504)
  store i64 %505, ptr %146, align 8
  br label %1645

506:                                              ; preds = %5
  %507 = load ptr, ptr %152, align 8
  %508 = load i32, ptr %150, align 4
  %509 = load i32, ptr %151, align 4
  store ptr %507, ptr %38, align 8
  store i32 %508, ptr %39, align 4
  store i32 %509, ptr %40, align 4
  %510 = load i32, ptr %40, align 4
  %511 = icmp eq i32 %510, 1
  br i1 %511, label %512, label %525

512:                                              ; preds = %506
  %513 = load ptr, ptr %38, align 8
  store ptr %513, ptr %36, align 8
  %514 = call i32 @XXH_isLittleEndian()
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %512
  %517 = load ptr, ptr %36, align 8
  %518 = call i64 @XXH_read64(ptr noundef %517)
  br label %523

519:                                              ; preds = %512
  %520 = load ptr, ptr %36, align 8
  %521 = call i64 @XXH_read64(ptr noundef %520)
  %522 = call i64 @XXH_swap64(i64 noundef %521)
  br label %523

523:                                              ; preds = %519, %516
  %524 = phi i64 [ %518, %516 ], [ %522, %519 ]
  store i64 %524, ptr %37, align 8
  br label %537

525:                                              ; preds = %506
  %526 = load i32, ptr %39, align 4
  %527 = icmp eq i32 %526, 1
  br i1 %527, label %528, label %531

528:                                              ; preds = %525
  %529 = load ptr, ptr %38, align 8
  %530 = load i64, ptr %529, align 8
  br label %535

531:                                              ; preds = %525
  %532 = load ptr, ptr %38, align 8
  %533 = load i64, ptr %532, align 8
  %534 = call i64 @XXH_swap64(i64 noundef %533)
  br label %535

535:                                              ; preds = %531, %528
  %536 = phi i64 [ %530, %528 ], [ %534, %531 ]
  store i64 %536, ptr %37, align 8
  br label %537

537:                                              ; preds = %523, %535
  %538 = load i64, ptr %37, align 8
  %539 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %538)
  store i64 %539, ptr %159, align 8
  %540 = load ptr, ptr %152, align 8
  %541 = getelementptr inbounds i8, ptr %540, i64 8
  store ptr %541, ptr %152, align 8
  %542 = load i64, ptr %159, align 8
  %543 = load i64, ptr %147, align 8
  %544 = xor i64 %543, %542
  store i64 %544, ptr %147, align 8
  %545 = load i64, ptr %147, align 8
  %546 = shl i64 %545, 27
  %547 = load i64, ptr %147, align 8
  %548 = lshr i64 %547, 37
  %549 = or i64 %546, %548
  %550 = mul i64 %549, -7046029288634856825
  %551 = add i64 %550, -8796714831421723037
  store i64 %551, ptr %147, align 8
  br label %552

552:                                              ; preds = %5, %537
  %553 = load ptr, ptr %152, align 8
  %554 = load i32, ptr %150, align 4
  %555 = load i32, ptr %151, align 4
  store ptr %553, ptr %43, align 8
  store i32 %554, ptr %44, align 4
  store i32 %555, ptr %45, align 4
  %556 = load i32, ptr %45, align 4
  %557 = icmp eq i32 %556, 1
  br i1 %557, label %558, label %571

558:                                              ; preds = %552
  %559 = load ptr, ptr %43, align 8
  store ptr %559, ptr %41, align 8
  %560 = call i32 @XXH_isLittleEndian()
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %565

562:                                              ; preds = %558
  %563 = load ptr, ptr %41, align 8
  %564 = call i64 @XXH_read64(ptr noundef %563)
  br label %569

565:                                              ; preds = %558
  %566 = load ptr, ptr %41, align 8
  %567 = call i64 @XXH_read64(ptr noundef %566)
  %568 = call i64 @XXH_swap64(i64 noundef %567)
  br label %569

569:                                              ; preds = %565, %562
  %570 = phi i64 [ %564, %562 ], [ %568, %565 ]
  store i64 %570, ptr %42, align 8
  br label %583

571:                                              ; preds = %552
  %572 = load i32, ptr %44, align 4
  %573 = icmp eq i32 %572, 1
  br i1 %573, label %574, label %577

574:                                              ; preds = %571
  %575 = load ptr, ptr %43, align 8
  %576 = load i64, ptr %575, align 8
  br label %581

577:                                              ; preds = %571
  %578 = load ptr, ptr %43, align 8
  %579 = load i64, ptr %578, align 8
  %580 = call i64 @XXH_swap64(i64 noundef %579)
  br label %581

581:                                              ; preds = %577, %574
  %582 = phi i64 [ %576, %574 ], [ %580, %577 ]
  store i64 %582, ptr %42, align 8
  br label %583

583:                                              ; preds = %569, %581
  %584 = load i64, ptr %42, align 8
  %585 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %584)
  store i64 %585, ptr %160, align 8
  %586 = load ptr, ptr %152, align 8
  %587 = getelementptr inbounds i8, ptr %586, i64 8
  store ptr %587, ptr %152, align 8
  %588 = load i64, ptr %160, align 8
  %589 = load i64, ptr %147, align 8
  %590 = xor i64 %589, %588
  store i64 %590, ptr %147, align 8
  %591 = load i64, ptr %147, align 8
  %592 = shl i64 %591, 27
  %593 = load i64, ptr %147, align 8
  %594 = lshr i64 %593, 37
  %595 = or i64 %592, %594
  %596 = mul i64 %595, -7046029288634856825
  %597 = add i64 %596, -8796714831421723037
  store i64 %597, ptr %147, align 8
  br label %598

598:                                              ; preds = %5, %583
  %599 = load ptr, ptr %152, align 8
  %600 = load i32, ptr %150, align 4
  %601 = load i32, ptr %151, align 4
  store ptr %599, ptr %48, align 8
  store i32 %600, ptr %49, align 4
  store i32 %601, ptr %50, align 4
  %602 = load i32, ptr %50, align 4
  %603 = icmp eq i32 %602, 1
  br i1 %603, label %604, label %617

604:                                              ; preds = %598
  %605 = load ptr, ptr %48, align 8
  store ptr %605, ptr %46, align 8
  %606 = call i32 @XXH_isLittleEndian()
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %611

608:                                              ; preds = %604
  %609 = load ptr, ptr %46, align 8
  %610 = call i64 @XXH_read64(ptr noundef %609)
  br label %615

611:                                              ; preds = %604
  %612 = load ptr, ptr %46, align 8
  %613 = call i64 @XXH_read64(ptr noundef %612)
  %614 = call i64 @XXH_swap64(i64 noundef %613)
  br label %615

615:                                              ; preds = %611, %608
  %616 = phi i64 [ %610, %608 ], [ %614, %611 ]
  store i64 %616, ptr %47, align 8
  br label %629

617:                                              ; preds = %598
  %618 = load i32, ptr %49, align 4
  %619 = icmp eq i32 %618, 1
  br i1 %619, label %620, label %623

620:                                              ; preds = %617
  %621 = load ptr, ptr %48, align 8
  %622 = load i64, ptr %621, align 8
  br label %627

623:                                              ; preds = %617
  %624 = load ptr, ptr %48, align 8
  %625 = load i64, ptr %624, align 8
  %626 = call i64 @XXH_swap64(i64 noundef %625)
  br label %627

627:                                              ; preds = %623, %620
  %628 = phi i64 [ %622, %620 ], [ %626, %623 ]
  store i64 %628, ptr %47, align 8
  br label %629

629:                                              ; preds = %615, %627
  %630 = load i64, ptr %47, align 8
  %631 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %630)
  store i64 %631, ptr %161, align 8
  %632 = load ptr, ptr %152, align 8
  %633 = getelementptr inbounds i8, ptr %632, i64 8
  store ptr %633, ptr %152, align 8
  %634 = load i64, ptr %161, align 8
  %635 = load i64, ptr %147, align 8
  %636 = xor i64 %635, %634
  store i64 %636, ptr %147, align 8
  %637 = load i64, ptr %147, align 8
  %638 = shl i64 %637, 27
  %639 = load i64, ptr %147, align 8
  %640 = lshr i64 %639, 37
  %641 = or i64 %638, %640
  %642 = mul i64 %641, -7046029288634856825
  %643 = add i64 %642, -8796714831421723037
  store i64 %643, ptr %147, align 8
  %644 = load ptr, ptr %152, align 8
  %645 = getelementptr inbounds nuw i8, ptr %644, i32 1
  store ptr %645, ptr %152, align 8
  %646 = load i8, ptr %644, align 1
  %647 = zext i8 %646 to i64
  %648 = mul i64 %647, 2870177450012600261
  %649 = load i64, ptr %147, align 8
  %650 = xor i64 %649, %648
  store i64 %650, ptr %147, align 8
  %651 = load i64, ptr %147, align 8
  %652 = shl i64 %651, 11
  %653 = load i64, ptr %147, align 8
  %654 = lshr i64 %653, 53
  %655 = or i64 %652, %654
  %656 = mul i64 %655, -7046029288634856825
  store i64 %656, ptr %147, align 8
  %657 = load i64, ptr %147, align 8
  %658 = call i64 @XXH64_avalanche(i64 noundef %657)
  store i64 %658, ptr %146, align 8
  br label %1645

659:                                              ; preds = %5
  %660 = load ptr, ptr %152, align 8
  %661 = load i32, ptr %150, align 4
  %662 = load i32, ptr %151, align 4
  store ptr %660, ptr %53, align 8
  store i32 %661, ptr %54, align 4
  store i32 %662, ptr %55, align 4
  %663 = load i32, ptr %55, align 4
  %664 = icmp eq i32 %663, 1
  br i1 %664, label %665, label %678

665:                                              ; preds = %659
  %666 = load ptr, ptr %53, align 8
  store ptr %666, ptr %51, align 8
  %667 = call i32 @XXH_isLittleEndian()
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %669, label %672

669:                                              ; preds = %665
  %670 = load ptr, ptr %51, align 8
  %671 = call i64 @XXH_read64(ptr noundef %670)
  br label %676

672:                                              ; preds = %665
  %673 = load ptr, ptr %51, align 8
  %674 = call i64 @XXH_read64(ptr noundef %673)
  %675 = call i64 @XXH_swap64(i64 noundef %674)
  br label %676

676:                                              ; preds = %672, %669
  %677 = phi i64 [ %671, %669 ], [ %675, %672 ]
  store i64 %677, ptr %52, align 8
  br label %690

678:                                              ; preds = %659
  %679 = load i32, ptr %54, align 4
  %680 = icmp eq i32 %679, 1
  br i1 %680, label %681, label %684

681:                                              ; preds = %678
  %682 = load ptr, ptr %53, align 8
  %683 = load i64, ptr %682, align 8
  br label %688

684:                                              ; preds = %678
  %685 = load ptr, ptr %53, align 8
  %686 = load i64, ptr %685, align 8
  %687 = call i64 @XXH_swap64(i64 noundef %686)
  br label %688

688:                                              ; preds = %684, %681
  %689 = phi i64 [ %683, %681 ], [ %687, %684 ]
  store i64 %689, ptr %52, align 8
  br label %690

690:                                              ; preds = %676, %688
  %691 = load i64, ptr %52, align 8
  %692 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %691)
  store i64 %692, ptr %162, align 8
  %693 = load ptr, ptr %152, align 8
  %694 = getelementptr inbounds i8, ptr %693, i64 8
  store ptr %694, ptr %152, align 8
  %695 = load i64, ptr %162, align 8
  %696 = load i64, ptr %147, align 8
  %697 = xor i64 %696, %695
  store i64 %697, ptr %147, align 8
  %698 = load i64, ptr %147, align 8
  %699 = shl i64 %698, 27
  %700 = load i64, ptr %147, align 8
  %701 = lshr i64 %700, 37
  %702 = or i64 %699, %701
  %703 = mul i64 %702, -7046029288634856825
  %704 = add i64 %703, -8796714831421723037
  store i64 %704, ptr %147, align 8
  br label %705

705:                                              ; preds = %5, %690
  %706 = load ptr, ptr %152, align 8
  %707 = load i32, ptr %150, align 4
  %708 = load i32, ptr %151, align 4
  store ptr %706, ptr %58, align 8
  store i32 %707, ptr %59, align 4
  store i32 %708, ptr %60, align 4
  %709 = load i32, ptr %60, align 4
  %710 = icmp eq i32 %709, 1
  br i1 %710, label %711, label %724

711:                                              ; preds = %705
  %712 = load ptr, ptr %58, align 8
  store ptr %712, ptr %56, align 8
  %713 = call i32 @XXH_isLittleEndian()
  %714 = icmp ne i32 %713, 0
  br i1 %714, label %715, label %718

715:                                              ; preds = %711
  %716 = load ptr, ptr %56, align 8
  %717 = call i64 @XXH_read64(ptr noundef %716)
  br label %722

718:                                              ; preds = %711
  %719 = load ptr, ptr %56, align 8
  %720 = call i64 @XXH_read64(ptr noundef %719)
  %721 = call i64 @XXH_swap64(i64 noundef %720)
  br label %722

722:                                              ; preds = %718, %715
  %723 = phi i64 [ %717, %715 ], [ %721, %718 ]
  store i64 %723, ptr %57, align 8
  br label %736

724:                                              ; preds = %705
  %725 = load i32, ptr %59, align 4
  %726 = icmp eq i32 %725, 1
  br i1 %726, label %727, label %730

727:                                              ; preds = %724
  %728 = load ptr, ptr %58, align 8
  %729 = load i64, ptr %728, align 8
  br label %734

730:                                              ; preds = %724
  %731 = load ptr, ptr %58, align 8
  %732 = load i64, ptr %731, align 8
  %733 = call i64 @XXH_swap64(i64 noundef %732)
  br label %734

734:                                              ; preds = %730, %727
  %735 = phi i64 [ %729, %727 ], [ %733, %730 ]
  store i64 %735, ptr %57, align 8
  br label %736

736:                                              ; preds = %722, %734
  %737 = load i64, ptr %57, align 8
  %738 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %737)
  store i64 %738, ptr %163, align 8
  %739 = load ptr, ptr %152, align 8
  %740 = getelementptr inbounds i8, ptr %739, i64 8
  store ptr %740, ptr %152, align 8
  %741 = load i64, ptr %163, align 8
  %742 = load i64, ptr %147, align 8
  %743 = xor i64 %742, %741
  store i64 %743, ptr %147, align 8
  %744 = load i64, ptr %147, align 8
  %745 = shl i64 %744, 27
  %746 = load i64, ptr %147, align 8
  %747 = lshr i64 %746, 37
  %748 = or i64 %745, %747
  %749 = mul i64 %748, -7046029288634856825
  %750 = add i64 %749, -8796714831421723037
  store i64 %750, ptr %147, align 8
  br label %751

751:                                              ; preds = %5, %736
  %752 = load ptr, ptr %152, align 8
  %753 = load i32, ptr %150, align 4
  %754 = load i32, ptr %151, align 4
  store ptr %752, ptr %63, align 8
  store i32 %753, ptr %64, align 4
  store i32 %754, ptr %65, align 4
  %755 = load i32, ptr %65, align 4
  %756 = icmp eq i32 %755, 1
  br i1 %756, label %757, label %770

757:                                              ; preds = %751
  %758 = load ptr, ptr %63, align 8
  store ptr %758, ptr %61, align 8
  %759 = call i32 @XXH_isLittleEndian()
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %761, label %764

761:                                              ; preds = %757
  %762 = load ptr, ptr %61, align 8
  %763 = call i64 @XXH_read64(ptr noundef %762)
  br label %768

764:                                              ; preds = %757
  %765 = load ptr, ptr %61, align 8
  %766 = call i64 @XXH_read64(ptr noundef %765)
  %767 = call i64 @XXH_swap64(i64 noundef %766)
  br label %768

768:                                              ; preds = %764, %761
  %769 = phi i64 [ %763, %761 ], [ %767, %764 ]
  store i64 %769, ptr %62, align 8
  br label %782

770:                                              ; preds = %751
  %771 = load i32, ptr %64, align 4
  %772 = icmp eq i32 %771, 1
  br i1 %772, label %773, label %776

773:                                              ; preds = %770
  %774 = load ptr, ptr %63, align 8
  %775 = load i64, ptr %774, align 8
  br label %780

776:                                              ; preds = %770
  %777 = load ptr, ptr %63, align 8
  %778 = load i64, ptr %777, align 8
  %779 = call i64 @XXH_swap64(i64 noundef %778)
  br label %780

780:                                              ; preds = %776, %773
  %781 = phi i64 [ %775, %773 ], [ %779, %776 ]
  store i64 %781, ptr %62, align 8
  br label %782

782:                                              ; preds = %768, %780
  %783 = load i64, ptr %62, align 8
  %784 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %783)
  store i64 %784, ptr %164, align 8
  %785 = load ptr, ptr %152, align 8
  %786 = getelementptr inbounds i8, ptr %785, i64 8
  store ptr %786, ptr %152, align 8
  %787 = load i64, ptr %164, align 8
  %788 = load i64, ptr %147, align 8
  %789 = xor i64 %788, %787
  store i64 %789, ptr %147, align 8
  %790 = load i64, ptr %147, align 8
  %791 = shl i64 %790, 27
  %792 = load i64, ptr %147, align 8
  %793 = lshr i64 %792, 37
  %794 = or i64 %791, %793
  %795 = mul i64 %794, -7046029288634856825
  %796 = add i64 %795, -8796714831421723037
  store i64 %796, ptr %147, align 8
  br label %797

797:                                              ; preds = %5, %782
  %798 = load ptr, ptr %152, align 8
  %799 = load i32, ptr %150, align 4
  %800 = load i32, ptr %151, align 4
  store ptr %798, ptr %133, align 8
  store i32 %799, ptr %134, align 4
  store i32 %800, ptr %135, align 4
  %801 = load i32, ptr %135, align 4
  %802 = icmp eq i32 %801, 1
  br i1 %802, label %803, label %816

803:                                              ; preds = %797
  %804 = load ptr, ptr %133, align 8
  store ptr %804, ptr %131, align 8
  %805 = call i32 @XXH_isLittleEndian()
  %806 = icmp ne i32 %805, 0
  br i1 %806, label %807, label %810

807:                                              ; preds = %803
  %808 = load ptr, ptr %131, align 8
  %809 = call i32 @XXH_read32(ptr noundef %808)
  br label %814

810:                                              ; preds = %803
  %811 = load ptr, ptr %131, align 8
  %812 = call i32 @XXH_read32(ptr noundef %811)
  %813 = call i32 @XXH_swap32(i32 noundef %812)
  br label %814

814:                                              ; preds = %810, %807
  %815 = phi i32 [ %809, %807 ], [ %813, %810 ]
  store i32 %815, ptr %132, align 4
  br label %828

816:                                              ; preds = %797
  %817 = load i32, ptr %134, align 4
  %818 = icmp eq i32 %817, 1
  br i1 %818, label %819, label %822

819:                                              ; preds = %816
  %820 = load ptr, ptr %133, align 8
  %821 = load i32, ptr %820, align 4
  br label %826

822:                                              ; preds = %816
  %823 = load ptr, ptr %133, align 8
  %824 = load i32, ptr %823, align 4
  %825 = call i32 @XXH_swap32(i32 noundef %824)
  br label %826

826:                                              ; preds = %822, %819
  %827 = phi i32 [ %821, %819 ], [ %825, %822 ]
  store i32 %827, ptr %132, align 4
  br label %828

828:                                              ; preds = %814, %826
  %829 = load i32, ptr %132, align 4
  %830 = zext i32 %829 to i64
  %831 = mul i64 %830, -7046029288634856825
  %832 = load i64, ptr %147, align 8
  %833 = xor i64 %832, %831
  store i64 %833, ptr %147, align 8
  %834 = load ptr, ptr %152, align 8
  %835 = getelementptr inbounds i8, ptr %834, i64 4
  store ptr %835, ptr %152, align 8
  %836 = load i64, ptr %147, align 8
  %837 = shl i64 %836, 23
  %838 = load i64, ptr %147, align 8
  %839 = lshr i64 %838, 41
  %840 = or i64 %837, %839
  %841 = mul i64 %840, -4417276706812531889
  %842 = add i64 %841, 1609587929392839161
  store i64 %842, ptr %147, align 8
  %843 = load ptr, ptr %152, align 8
  %844 = getelementptr inbounds nuw i8, ptr %843, i32 1
  store ptr %844, ptr %152, align 8
  %845 = load i8, ptr %843, align 1
  %846 = zext i8 %845 to i64
  %847 = mul i64 %846, 2870177450012600261
  %848 = load i64, ptr %147, align 8
  %849 = xor i64 %848, %847
  store i64 %849, ptr %147, align 8
  %850 = load i64, ptr %147, align 8
  %851 = shl i64 %850, 11
  %852 = load i64, ptr %147, align 8
  %853 = lshr i64 %852, 53
  %854 = or i64 %851, %853
  %855 = mul i64 %854, -7046029288634856825
  store i64 %855, ptr %147, align 8
  %856 = load i64, ptr %147, align 8
  %857 = call i64 @XXH64_avalanche(i64 noundef %856)
  store i64 %857, ptr %146, align 8
  br label %1645

858:                                              ; preds = %5
  %859 = load ptr, ptr %152, align 8
  %860 = load i32, ptr %150, align 4
  %861 = load i32, ptr %151, align 4
  store ptr %859, ptr %68, align 8
  store i32 %860, ptr %69, align 4
  store i32 %861, ptr %70, align 4
  %862 = load i32, ptr %70, align 4
  %863 = icmp eq i32 %862, 1
  br i1 %863, label %864, label %877

864:                                              ; preds = %858
  %865 = load ptr, ptr %68, align 8
  store ptr %865, ptr %66, align 8
  %866 = call i32 @XXH_isLittleEndian()
  %867 = icmp ne i32 %866, 0
  br i1 %867, label %868, label %871

868:                                              ; preds = %864
  %869 = load ptr, ptr %66, align 8
  %870 = call i64 @XXH_read64(ptr noundef %869)
  br label %875

871:                                              ; preds = %864
  %872 = load ptr, ptr %66, align 8
  %873 = call i64 @XXH_read64(ptr noundef %872)
  %874 = call i64 @XXH_swap64(i64 noundef %873)
  br label %875

875:                                              ; preds = %871, %868
  %876 = phi i64 [ %870, %868 ], [ %874, %871 ]
  store i64 %876, ptr %67, align 8
  br label %889

877:                                              ; preds = %858
  %878 = load i32, ptr %69, align 4
  %879 = icmp eq i32 %878, 1
  br i1 %879, label %880, label %883

880:                                              ; preds = %877
  %881 = load ptr, ptr %68, align 8
  %882 = load i64, ptr %881, align 8
  br label %887

883:                                              ; preds = %877
  %884 = load ptr, ptr %68, align 8
  %885 = load i64, ptr %884, align 8
  %886 = call i64 @XXH_swap64(i64 noundef %885)
  br label %887

887:                                              ; preds = %883, %880
  %888 = phi i64 [ %882, %880 ], [ %886, %883 ]
  store i64 %888, ptr %67, align 8
  br label %889

889:                                              ; preds = %875, %887
  %890 = load i64, ptr %67, align 8
  %891 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %890)
  store i64 %891, ptr %165, align 8
  %892 = load ptr, ptr %152, align 8
  %893 = getelementptr inbounds i8, ptr %892, i64 8
  store ptr %893, ptr %152, align 8
  %894 = load i64, ptr %165, align 8
  %895 = load i64, ptr %147, align 8
  %896 = xor i64 %895, %894
  store i64 %896, ptr %147, align 8
  %897 = load i64, ptr %147, align 8
  %898 = shl i64 %897, 27
  %899 = load i64, ptr %147, align 8
  %900 = lshr i64 %899, 37
  %901 = or i64 %898, %900
  %902 = mul i64 %901, -7046029288634856825
  %903 = add i64 %902, -8796714831421723037
  store i64 %903, ptr %147, align 8
  br label %904

904:                                              ; preds = %5, %889
  %905 = load ptr, ptr %152, align 8
  %906 = load i32, ptr %150, align 4
  %907 = load i32, ptr %151, align 4
  store ptr %905, ptr %73, align 8
  store i32 %906, ptr %74, align 4
  store i32 %907, ptr %75, align 4
  %908 = load i32, ptr %75, align 4
  %909 = icmp eq i32 %908, 1
  br i1 %909, label %910, label %923

910:                                              ; preds = %904
  %911 = load ptr, ptr %73, align 8
  store ptr %911, ptr %71, align 8
  %912 = call i32 @XXH_isLittleEndian()
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %914, label %917

914:                                              ; preds = %910
  %915 = load ptr, ptr %71, align 8
  %916 = call i64 @XXH_read64(ptr noundef %915)
  br label %921

917:                                              ; preds = %910
  %918 = load ptr, ptr %71, align 8
  %919 = call i64 @XXH_read64(ptr noundef %918)
  %920 = call i64 @XXH_swap64(i64 noundef %919)
  br label %921

921:                                              ; preds = %917, %914
  %922 = phi i64 [ %916, %914 ], [ %920, %917 ]
  store i64 %922, ptr %72, align 8
  br label %935

923:                                              ; preds = %904
  %924 = load i32, ptr %74, align 4
  %925 = icmp eq i32 %924, 1
  br i1 %925, label %926, label %929

926:                                              ; preds = %923
  %927 = load ptr, ptr %73, align 8
  %928 = load i64, ptr %927, align 8
  br label %933

929:                                              ; preds = %923
  %930 = load ptr, ptr %73, align 8
  %931 = load i64, ptr %930, align 8
  %932 = call i64 @XXH_swap64(i64 noundef %931)
  br label %933

933:                                              ; preds = %929, %926
  %934 = phi i64 [ %928, %926 ], [ %932, %929 ]
  store i64 %934, ptr %72, align 8
  br label %935

935:                                              ; preds = %921, %933
  %936 = load i64, ptr %72, align 8
  %937 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %936)
  store i64 %937, ptr %166, align 8
  %938 = load ptr, ptr %152, align 8
  %939 = getelementptr inbounds i8, ptr %938, i64 8
  store ptr %939, ptr %152, align 8
  %940 = load i64, ptr %166, align 8
  %941 = load i64, ptr %147, align 8
  %942 = xor i64 %941, %940
  store i64 %942, ptr %147, align 8
  %943 = load i64, ptr %147, align 8
  %944 = shl i64 %943, 27
  %945 = load i64, ptr %147, align 8
  %946 = lshr i64 %945, 37
  %947 = or i64 %944, %946
  %948 = mul i64 %947, -7046029288634856825
  %949 = add i64 %948, -8796714831421723037
  store i64 %949, ptr %147, align 8
  br label %950

950:                                              ; preds = %5, %935
  %951 = load ptr, ptr %152, align 8
  %952 = load i32, ptr %150, align 4
  %953 = load i32, ptr %151, align 4
  store ptr %951, ptr %78, align 8
  store i32 %952, ptr %79, align 4
  store i32 %953, ptr %80, align 4
  %954 = load i32, ptr %80, align 4
  %955 = icmp eq i32 %954, 1
  br i1 %955, label %956, label %969

956:                                              ; preds = %950
  %957 = load ptr, ptr %78, align 8
  store ptr %957, ptr %76, align 8
  %958 = call i32 @XXH_isLittleEndian()
  %959 = icmp ne i32 %958, 0
  br i1 %959, label %960, label %963

960:                                              ; preds = %956
  %961 = load ptr, ptr %76, align 8
  %962 = call i64 @XXH_read64(ptr noundef %961)
  br label %967

963:                                              ; preds = %956
  %964 = load ptr, ptr %76, align 8
  %965 = call i64 @XXH_read64(ptr noundef %964)
  %966 = call i64 @XXH_swap64(i64 noundef %965)
  br label %967

967:                                              ; preds = %963, %960
  %968 = phi i64 [ %962, %960 ], [ %966, %963 ]
  store i64 %968, ptr %77, align 8
  br label %981

969:                                              ; preds = %950
  %970 = load i32, ptr %79, align 4
  %971 = icmp eq i32 %970, 1
  br i1 %971, label %972, label %975

972:                                              ; preds = %969
  %973 = load ptr, ptr %78, align 8
  %974 = load i64, ptr %973, align 8
  br label %979

975:                                              ; preds = %969
  %976 = load ptr, ptr %78, align 8
  %977 = load i64, ptr %976, align 8
  %978 = call i64 @XXH_swap64(i64 noundef %977)
  br label %979

979:                                              ; preds = %975, %972
  %980 = phi i64 [ %974, %972 ], [ %978, %975 ]
  store i64 %980, ptr %77, align 8
  br label %981

981:                                              ; preds = %967, %979
  %982 = load i64, ptr %77, align 8
  %983 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %982)
  store i64 %983, ptr %167, align 8
  %984 = load ptr, ptr %152, align 8
  %985 = getelementptr inbounds i8, ptr %984, i64 8
  store ptr %985, ptr %152, align 8
  %986 = load i64, ptr %167, align 8
  %987 = load i64, ptr %147, align 8
  %988 = xor i64 %987, %986
  store i64 %988, ptr %147, align 8
  %989 = load i64, ptr %147, align 8
  %990 = shl i64 %989, 27
  %991 = load i64, ptr %147, align 8
  %992 = lshr i64 %991, 37
  %993 = or i64 %990, %992
  %994 = mul i64 %993, -7046029288634856825
  %995 = add i64 %994, -8796714831421723037
  store i64 %995, ptr %147, align 8
  %996 = load ptr, ptr %152, align 8
  %997 = getelementptr inbounds nuw i8, ptr %996, i32 1
  store ptr %997, ptr %152, align 8
  %998 = load i8, ptr %996, align 1
  %999 = zext i8 %998 to i64
  %1000 = mul i64 %999, 2870177450012600261
  %1001 = load i64, ptr %147, align 8
  %1002 = xor i64 %1001, %1000
  store i64 %1002, ptr %147, align 8
  %1003 = load i64, ptr %147, align 8
  %1004 = shl i64 %1003, 11
  %1005 = load i64, ptr %147, align 8
  %1006 = lshr i64 %1005, 53
  %1007 = or i64 %1004, %1006
  %1008 = mul i64 %1007, -7046029288634856825
  store i64 %1008, ptr %147, align 8
  %1009 = load ptr, ptr %152, align 8
  %1010 = getelementptr inbounds nuw i8, ptr %1009, i32 1
  store ptr %1010, ptr %152, align 8
  %1011 = load i8, ptr %1009, align 1
  %1012 = zext i8 %1011 to i64
  %1013 = mul i64 %1012, 2870177450012600261
  %1014 = load i64, ptr %147, align 8
  %1015 = xor i64 %1014, %1013
  store i64 %1015, ptr %147, align 8
  %1016 = load i64, ptr %147, align 8
  %1017 = shl i64 %1016, 11
  %1018 = load i64, ptr %147, align 8
  %1019 = lshr i64 %1018, 53
  %1020 = or i64 %1017, %1019
  %1021 = mul i64 %1020, -7046029288634856825
  store i64 %1021, ptr %147, align 8
  %1022 = load i64, ptr %147, align 8
  %1023 = call i64 @XXH64_avalanche(i64 noundef %1022)
  store i64 %1023, ptr %146, align 8
  br label %1645

1024:                                             ; preds = %5
  %1025 = load ptr, ptr %152, align 8
  %1026 = load i32, ptr %150, align 4
  %1027 = load i32, ptr %151, align 4
  store ptr %1025, ptr %83, align 8
  store i32 %1026, ptr %84, align 4
  store i32 %1027, ptr %85, align 4
  %1028 = load i32, ptr %85, align 4
  %1029 = icmp eq i32 %1028, 1
  br i1 %1029, label %1030, label %1043

1030:                                             ; preds = %1024
  %1031 = load ptr, ptr %83, align 8
  store ptr %1031, ptr %81, align 8
  %1032 = call i32 @XXH_isLittleEndian()
  %1033 = icmp ne i32 %1032, 0
  br i1 %1033, label %1034, label %1037

1034:                                             ; preds = %1030
  %1035 = load ptr, ptr %81, align 8
  %1036 = call i64 @XXH_read64(ptr noundef %1035)
  br label %1041

1037:                                             ; preds = %1030
  %1038 = load ptr, ptr %81, align 8
  %1039 = call i64 @XXH_read64(ptr noundef %1038)
  %1040 = call i64 @XXH_swap64(i64 noundef %1039)
  br label %1041

1041:                                             ; preds = %1037, %1034
  %1042 = phi i64 [ %1036, %1034 ], [ %1040, %1037 ]
  store i64 %1042, ptr %82, align 8
  br label %1055

1043:                                             ; preds = %1024
  %1044 = load i32, ptr %84, align 4
  %1045 = icmp eq i32 %1044, 1
  br i1 %1045, label %1046, label %1049

1046:                                             ; preds = %1043
  %1047 = load ptr, ptr %83, align 8
  %1048 = load i64, ptr %1047, align 8
  br label %1053

1049:                                             ; preds = %1043
  %1050 = load ptr, ptr %83, align 8
  %1051 = load i64, ptr %1050, align 8
  %1052 = call i64 @XXH_swap64(i64 noundef %1051)
  br label %1053

1053:                                             ; preds = %1049, %1046
  %1054 = phi i64 [ %1048, %1046 ], [ %1052, %1049 ]
  store i64 %1054, ptr %82, align 8
  br label %1055

1055:                                             ; preds = %1041, %1053
  %1056 = load i64, ptr %82, align 8
  %1057 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1056)
  store i64 %1057, ptr %168, align 8
  %1058 = load ptr, ptr %152, align 8
  %1059 = getelementptr inbounds i8, ptr %1058, i64 8
  store ptr %1059, ptr %152, align 8
  %1060 = load i64, ptr %168, align 8
  %1061 = load i64, ptr %147, align 8
  %1062 = xor i64 %1061, %1060
  store i64 %1062, ptr %147, align 8
  %1063 = load i64, ptr %147, align 8
  %1064 = shl i64 %1063, 27
  %1065 = load i64, ptr %147, align 8
  %1066 = lshr i64 %1065, 37
  %1067 = or i64 %1064, %1066
  %1068 = mul i64 %1067, -7046029288634856825
  %1069 = add i64 %1068, -8796714831421723037
  store i64 %1069, ptr %147, align 8
  br label %1070

1070:                                             ; preds = %5, %1055
  %1071 = load ptr, ptr %152, align 8
  %1072 = load i32, ptr %150, align 4
  %1073 = load i32, ptr %151, align 4
  store ptr %1071, ptr %88, align 8
  store i32 %1072, ptr %89, align 4
  store i32 %1073, ptr %90, align 4
  %1074 = load i32, ptr %90, align 4
  %1075 = icmp eq i32 %1074, 1
  br i1 %1075, label %1076, label %1089

1076:                                             ; preds = %1070
  %1077 = load ptr, ptr %88, align 8
  store ptr %1077, ptr %86, align 8
  %1078 = call i32 @XXH_isLittleEndian()
  %1079 = icmp ne i32 %1078, 0
  br i1 %1079, label %1080, label %1083

1080:                                             ; preds = %1076
  %1081 = load ptr, ptr %86, align 8
  %1082 = call i64 @XXH_read64(ptr noundef %1081)
  br label %1087

1083:                                             ; preds = %1076
  %1084 = load ptr, ptr %86, align 8
  %1085 = call i64 @XXH_read64(ptr noundef %1084)
  %1086 = call i64 @XXH_swap64(i64 noundef %1085)
  br label %1087

1087:                                             ; preds = %1083, %1080
  %1088 = phi i64 [ %1082, %1080 ], [ %1086, %1083 ]
  store i64 %1088, ptr %87, align 8
  br label %1101

1089:                                             ; preds = %1070
  %1090 = load i32, ptr %89, align 4
  %1091 = icmp eq i32 %1090, 1
  br i1 %1091, label %1092, label %1095

1092:                                             ; preds = %1089
  %1093 = load ptr, ptr %88, align 8
  %1094 = load i64, ptr %1093, align 8
  br label %1099

1095:                                             ; preds = %1089
  %1096 = load ptr, ptr %88, align 8
  %1097 = load i64, ptr %1096, align 8
  %1098 = call i64 @XXH_swap64(i64 noundef %1097)
  br label %1099

1099:                                             ; preds = %1095, %1092
  %1100 = phi i64 [ %1094, %1092 ], [ %1098, %1095 ]
  store i64 %1100, ptr %87, align 8
  br label %1101

1101:                                             ; preds = %1087, %1099
  %1102 = load i64, ptr %87, align 8
  %1103 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1102)
  store i64 %1103, ptr %169, align 8
  %1104 = load ptr, ptr %152, align 8
  %1105 = getelementptr inbounds i8, ptr %1104, i64 8
  store ptr %1105, ptr %152, align 8
  %1106 = load i64, ptr %169, align 8
  %1107 = load i64, ptr %147, align 8
  %1108 = xor i64 %1107, %1106
  store i64 %1108, ptr %147, align 8
  %1109 = load i64, ptr %147, align 8
  %1110 = shl i64 %1109, 27
  %1111 = load i64, ptr %147, align 8
  %1112 = lshr i64 %1111, 37
  %1113 = or i64 %1110, %1112
  %1114 = mul i64 %1113, -7046029288634856825
  %1115 = add i64 %1114, -8796714831421723037
  store i64 %1115, ptr %147, align 8
  br label %1116

1116:                                             ; preds = %5, %1101
  %1117 = load ptr, ptr %152, align 8
  %1118 = load i32, ptr %150, align 4
  %1119 = load i32, ptr %151, align 4
  store ptr %1117, ptr %93, align 8
  store i32 %1118, ptr %94, align 4
  store i32 %1119, ptr %95, align 4
  %1120 = load i32, ptr %95, align 4
  %1121 = icmp eq i32 %1120, 1
  br i1 %1121, label %1122, label %1135

1122:                                             ; preds = %1116
  %1123 = load ptr, ptr %93, align 8
  store ptr %1123, ptr %91, align 8
  %1124 = call i32 @XXH_isLittleEndian()
  %1125 = icmp ne i32 %1124, 0
  br i1 %1125, label %1126, label %1129

1126:                                             ; preds = %1122
  %1127 = load ptr, ptr %91, align 8
  %1128 = call i64 @XXH_read64(ptr noundef %1127)
  br label %1133

1129:                                             ; preds = %1122
  %1130 = load ptr, ptr %91, align 8
  %1131 = call i64 @XXH_read64(ptr noundef %1130)
  %1132 = call i64 @XXH_swap64(i64 noundef %1131)
  br label %1133

1133:                                             ; preds = %1129, %1126
  %1134 = phi i64 [ %1128, %1126 ], [ %1132, %1129 ]
  store i64 %1134, ptr %92, align 8
  br label %1147

1135:                                             ; preds = %1116
  %1136 = load i32, ptr %94, align 4
  %1137 = icmp eq i32 %1136, 1
  br i1 %1137, label %1138, label %1141

1138:                                             ; preds = %1135
  %1139 = load ptr, ptr %93, align 8
  %1140 = load i64, ptr %1139, align 8
  br label %1145

1141:                                             ; preds = %1135
  %1142 = load ptr, ptr %93, align 8
  %1143 = load i64, ptr %1142, align 8
  %1144 = call i64 @XXH_swap64(i64 noundef %1143)
  br label %1145

1145:                                             ; preds = %1141, %1138
  %1146 = phi i64 [ %1140, %1138 ], [ %1144, %1141 ]
  store i64 %1146, ptr %92, align 8
  br label %1147

1147:                                             ; preds = %1133, %1145
  %1148 = load i64, ptr %92, align 8
  %1149 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1148)
  store i64 %1149, ptr %170, align 8
  %1150 = load ptr, ptr %152, align 8
  %1151 = getelementptr inbounds i8, ptr %1150, i64 8
  store ptr %1151, ptr %152, align 8
  %1152 = load i64, ptr %170, align 8
  %1153 = load i64, ptr %147, align 8
  %1154 = xor i64 %1153, %1152
  store i64 %1154, ptr %147, align 8
  %1155 = load i64, ptr %147, align 8
  %1156 = shl i64 %1155, 27
  %1157 = load i64, ptr %147, align 8
  %1158 = lshr i64 %1157, 37
  %1159 = or i64 %1156, %1158
  %1160 = mul i64 %1159, -7046029288634856825
  %1161 = add i64 %1160, -8796714831421723037
  store i64 %1161, ptr %147, align 8
  br label %1162

1162:                                             ; preds = %5, %1147
  %1163 = load ptr, ptr %152, align 8
  %1164 = load i32, ptr %150, align 4
  %1165 = load i32, ptr %151, align 4
  store ptr %1163, ptr %138, align 8
  store i32 %1164, ptr %139, align 4
  store i32 %1165, ptr %140, align 4
  %1166 = load i32, ptr %140, align 4
  %1167 = icmp eq i32 %1166, 1
  br i1 %1167, label %1168, label %1181

1168:                                             ; preds = %1162
  %1169 = load ptr, ptr %138, align 8
  store ptr %1169, ptr %136, align 8
  %1170 = call i32 @XXH_isLittleEndian()
  %1171 = icmp ne i32 %1170, 0
  br i1 %1171, label %1172, label %1175

1172:                                             ; preds = %1168
  %1173 = load ptr, ptr %136, align 8
  %1174 = call i32 @XXH_read32(ptr noundef %1173)
  br label %1179

1175:                                             ; preds = %1168
  %1176 = load ptr, ptr %136, align 8
  %1177 = call i32 @XXH_read32(ptr noundef %1176)
  %1178 = call i32 @XXH_swap32(i32 noundef %1177)
  br label %1179

1179:                                             ; preds = %1175, %1172
  %1180 = phi i32 [ %1174, %1172 ], [ %1178, %1175 ]
  store i32 %1180, ptr %137, align 4
  br label %1193

1181:                                             ; preds = %1162
  %1182 = load i32, ptr %139, align 4
  %1183 = icmp eq i32 %1182, 1
  br i1 %1183, label %1184, label %1187

1184:                                             ; preds = %1181
  %1185 = load ptr, ptr %138, align 8
  %1186 = load i32, ptr %1185, align 4
  br label %1191

1187:                                             ; preds = %1181
  %1188 = load ptr, ptr %138, align 8
  %1189 = load i32, ptr %1188, align 4
  %1190 = call i32 @XXH_swap32(i32 noundef %1189)
  br label %1191

1191:                                             ; preds = %1187, %1184
  %1192 = phi i32 [ %1186, %1184 ], [ %1190, %1187 ]
  store i32 %1192, ptr %137, align 4
  br label %1193

1193:                                             ; preds = %1179, %1191
  %1194 = load i32, ptr %137, align 4
  %1195 = zext i32 %1194 to i64
  %1196 = mul i64 %1195, -7046029288634856825
  %1197 = load i64, ptr %147, align 8
  %1198 = xor i64 %1197, %1196
  store i64 %1198, ptr %147, align 8
  %1199 = load ptr, ptr %152, align 8
  %1200 = getelementptr inbounds i8, ptr %1199, i64 4
  store ptr %1200, ptr %152, align 8
  %1201 = load i64, ptr %147, align 8
  %1202 = shl i64 %1201, 23
  %1203 = load i64, ptr %147, align 8
  %1204 = lshr i64 %1203, 41
  %1205 = or i64 %1202, %1204
  %1206 = mul i64 %1205, -4417276706812531889
  %1207 = add i64 %1206, 1609587929392839161
  store i64 %1207, ptr %147, align 8
  %1208 = load ptr, ptr %152, align 8
  %1209 = getelementptr inbounds nuw i8, ptr %1208, i32 1
  store ptr %1209, ptr %152, align 8
  %1210 = load i8, ptr %1208, align 1
  %1211 = zext i8 %1210 to i64
  %1212 = mul i64 %1211, 2870177450012600261
  %1213 = load i64, ptr %147, align 8
  %1214 = xor i64 %1213, %1212
  store i64 %1214, ptr %147, align 8
  %1215 = load i64, ptr %147, align 8
  %1216 = shl i64 %1215, 11
  %1217 = load i64, ptr %147, align 8
  %1218 = lshr i64 %1217, 53
  %1219 = or i64 %1216, %1218
  %1220 = mul i64 %1219, -7046029288634856825
  store i64 %1220, ptr %147, align 8
  %1221 = load ptr, ptr %152, align 8
  %1222 = getelementptr inbounds nuw i8, ptr %1221, i32 1
  store ptr %1222, ptr %152, align 8
  %1223 = load i8, ptr %1221, align 1
  %1224 = zext i8 %1223 to i64
  %1225 = mul i64 %1224, 2870177450012600261
  %1226 = load i64, ptr %147, align 8
  %1227 = xor i64 %1226, %1225
  store i64 %1227, ptr %147, align 8
  %1228 = load i64, ptr %147, align 8
  %1229 = shl i64 %1228, 11
  %1230 = load i64, ptr %147, align 8
  %1231 = lshr i64 %1230, 53
  %1232 = or i64 %1229, %1231
  %1233 = mul i64 %1232, -7046029288634856825
  store i64 %1233, ptr %147, align 8
  %1234 = load i64, ptr %147, align 8
  %1235 = call i64 @XXH64_avalanche(i64 noundef %1234)
  store i64 %1235, ptr %146, align 8
  br label %1645

1236:                                             ; preds = %5
  %1237 = load ptr, ptr %152, align 8
  %1238 = load i32, ptr %150, align 4
  %1239 = load i32, ptr %151, align 4
  store ptr %1237, ptr %98, align 8
  store i32 %1238, ptr %99, align 4
  store i32 %1239, ptr %100, align 4
  %1240 = load i32, ptr %100, align 4
  %1241 = icmp eq i32 %1240, 1
  br i1 %1241, label %1242, label %1255

1242:                                             ; preds = %1236
  %1243 = load ptr, ptr %98, align 8
  store ptr %1243, ptr %96, align 8
  %1244 = call i32 @XXH_isLittleEndian()
  %1245 = icmp ne i32 %1244, 0
  br i1 %1245, label %1246, label %1249

1246:                                             ; preds = %1242
  %1247 = load ptr, ptr %96, align 8
  %1248 = call i64 @XXH_read64(ptr noundef %1247)
  br label %1253

1249:                                             ; preds = %1242
  %1250 = load ptr, ptr %96, align 8
  %1251 = call i64 @XXH_read64(ptr noundef %1250)
  %1252 = call i64 @XXH_swap64(i64 noundef %1251)
  br label %1253

1253:                                             ; preds = %1249, %1246
  %1254 = phi i64 [ %1248, %1246 ], [ %1252, %1249 ]
  store i64 %1254, ptr %97, align 8
  br label %1267

1255:                                             ; preds = %1236
  %1256 = load i32, ptr %99, align 4
  %1257 = icmp eq i32 %1256, 1
  br i1 %1257, label %1258, label %1261

1258:                                             ; preds = %1255
  %1259 = load ptr, ptr %98, align 8
  %1260 = load i64, ptr %1259, align 8
  br label %1265

1261:                                             ; preds = %1255
  %1262 = load ptr, ptr %98, align 8
  %1263 = load i64, ptr %1262, align 8
  %1264 = call i64 @XXH_swap64(i64 noundef %1263)
  br label %1265

1265:                                             ; preds = %1261, %1258
  %1266 = phi i64 [ %1260, %1258 ], [ %1264, %1261 ]
  store i64 %1266, ptr %97, align 8
  br label %1267

1267:                                             ; preds = %1253, %1265
  %1268 = load i64, ptr %97, align 8
  %1269 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1268)
  store i64 %1269, ptr %171, align 8
  %1270 = load ptr, ptr %152, align 8
  %1271 = getelementptr inbounds i8, ptr %1270, i64 8
  store ptr %1271, ptr %152, align 8
  %1272 = load i64, ptr %171, align 8
  %1273 = load i64, ptr %147, align 8
  %1274 = xor i64 %1273, %1272
  store i64 %1274, ptr %147, align 8
  %1275 = load i64, ptr %147, align 8
  %1276 = shl i64 %1275, 27
  %1277 = load i64, ptr %147, align 8
  %1278 = lshr i64 %1277, 37
  %1279 = or i64 %1276, %1278
  %1280 = mul i64 %1279, -7046029288634856825
  %1281 = add i64 %1280, -8796714831421723037
  store i64 %1281, ptr %147, align 8
  br label %1282

1282:                                             ; preds = %5, %1267
  %1283 = load ptr, ptr %152, align 8
  %1284 = load i32, ptr %150, align 4
  %1285 = load i32, ptr %151, align 4
  store ptr %1283, ptr %103, align 8
  store i32 %1284, ptr %104, align 4
  store i32 %1285, ptr %105, align 4
  %1286 = load i32, ptr %105, align 4
  %1287 = icmp eq i32 %1286, 1
  br i1 %1287, label %1288, label %1301

1288:                                             ; preds = %1282
  %1289 = load ptr, ptr %103, align 8
  store ptr %1289, ptr %101, align 8
  %1290 = call i32 @XXH_isLittleEndian()
  %1291 = icmp ne i32 %1290, 0
  br i1 %1291, label %1292, label %1295

1292:                                             ; preds = %1288
  %1293 = load ptr, ptr %101, align 8
  %1294 = call i64 @XXH_read64(ptr noundef %1293)
  br label %1299

1295:                                             ; preds = %1288
  %1296 = load ptr, ptr %101, align 8
  %1297 = call i64 @XXH_read64(ptr noundef %1296)
  %1298 = call i64 @XXH_swap64(i64 noundef %1297)
  br label %1299

1299:                                             ; preds = %1295, %1292
  %1300 = phi i64 [ %1294, %1292 ], [ %1298, %1295 ]
  store i64 %1300, ptr %102, align 8
  br label %1313

1301:                                             ; preds = %1282
  %1302 = load i32, ptr %104, align 4
  %1303 = icmp eq i32 %1302, 1
  br i1 %1303, label %1304, label %1307

1304:                                             ; preds = %1301
  %1305 = load ptr, ptr %103, align 8
  %1306 = load i64, ptr %1305, align 8
  br label %1311

1307:                                             ; preds = %1301
  %1308 = load ptr, ptr %103, align 8
  %1309 = load i64, ptr %1308, align 8
  %1310 = call i64 @XXH_swap64(i64 noundef %1309)
  br label %1311

1311:                                             ; preds = %1307, %1304
  %1312 = phi i64 [ %1306, %1304 ], [ %1310, %1307 ]
  store i64 %1312, ptr %102, align 8
  br label %1313

1313:                                             ; preds = %1299, %1311
  %1314 = load i64, ptr %102, align 8
  %1315 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1314)
  store i64 %1315, ptr %172, align 8
  %1316 = load ptr, ptr %152, align 8
  %1317 = getelementptr inbounds i8, ptr %1316, i64 8
  store ptr %1317, ptr %152, align 8
  %1318 = load i64, ptr %172, align 8
  %1319 = load i64, ptr %147, align 8
  %1320 = xor i64 %1319, %1318
  store i64 %1320, ptr %147, align 8
  %1321 = load i64, ptr %147, align 8
  %1322 = shl i64 %1321, 27
  %1323 = load i64, ptr %147, align 8
  %1324 = lshr i64 %1323, 37
  %1325 = or i64 %1322, %1324
  %1326 = mul i64 %1325, -7046029288634856825
  %1327 = add i64 %1326, -8796714831421723037
  store i64 %1327, ptr %147, align 8
  br label %1328

1328:                                             ; preds = %5, %1313
  %1329 = load ptr, ptr %152, align 8
  %1330 = load i32, ptr %150, align 4
  %1331 = load i32, ptr %151, align 4
  store ptr %1329, ptr %108, align 8
  store i32 %1330, ptr %109, align 4
  store i32 %1331, ptr %110, align 4
  %1332 = load i32, ptr %110, align 4
  %1333 = icmp eq i32 %1332, 1
  br i1 %1333, label %1334, label %1347

1334:                                             ; preds = %1328
  %1335 = load ptr, ptr %108, align 8
  store ptr %1335, ptr %106, align 8
  %1336 = call i32 @XXH_isLittleEndian()
  %1337 = icmp ne i32 %1336, 0
  br i1 %1337, label %1338, label %1341

1338:                                             ; preds = %1334
  %1339 = load ptr, ptr %106, align 8
  %1340 = call i64 @XXH_read64(ptr noundef %1339)
  br label %1345

1341:                                             ; preds = %1334
  %1342 = load ptr, ptr %106, align 8
  %1343 = call i64 @XXH_read64(ptr noundef %1342)
  %1344 = call i64 @XXH_swap64(i64 noundef %1343)
  br label %1345

1345:                                             ; preds = %1341, %1338
  %1346 = phi i64 [ %1340, %1338 ], [ %1344, %1341 ]
  store i64 %1346, ptr %107, align 8
  br label %1359

1347:                                             ; preds = %1328
  %1348 = load i32, ptr %109, align 4
  %1349 = icmp eq i32 %1348, 1
  br i1 %1349, label %1350, label %1353

1350:                                             ; preds = %1347
  %1351 = load ptr, ptr %108, align 8
  %1352 = load i64, ptr %1351, align 8
  br label %1357

1353:                                             ; preds = %1347
  %1354 = load ptr, ptr %108, align 8
  %1355 = load i64, ptr %1354, align 8
  %1356 = call i64 @XXH_swap64(i64 noundef %1355)
  br label %1357

1357:                                             ; preds = %1353, %1350
  %1358 = phi i64 [ %1352, %1350 ], [ %1356, %1353 ]
  store i64 %1358, ptr %107, align 8
  br label %1359

1359:                                             ; preds = %1345, %1357
  %1360 = load i64, ptr %107, align 8
  %1361 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1360)
  store i64 %1361, ptr %173, align 8
  %1362 = load ptr, ptr %152, align 8
  %1363 = getelementptr inbounds i8, ptr %1362, i64 8
  store ptr %1363, ptr %152, align 8
  %1364 = load i64, ptr %173, align 8
  %1365 = load i64, ptr %147, align 8
  %1366 = xor i64 %1365, %1364
  store i64 %1366, ptr %147, align 8
  %1367 = load i64, ptr %147, align 8
  %1368 = shl i64 %1367, 27
  %1369 = load i64, ptr %147, align 8
  %1370 = lshr i64 %1369, 37
  %1371 = or i64 %1368, %1370
  %1372 = mul i64 %1371, -7046029288634856825
  %1373 = add i64 %1372, -8796714831421723037
  store i64 %1373, ptr %147, align 8
  %1374 = load ptr, ptr %152, align 8
  %1375 = getelementptr inbounds nuw i8, ptr %1374, i32 1
  store ptr %1375, ptr %152, align 8
  %1376 = load i8, ptr %1374, align 1
  %1377 = zext i8 %1376 to i64
  %1378 = mul i64 %1377, 2870177450012600261
  %1379 = load i64, ptr %147, align 8
  %1380 = xor i64 %1379, %1378
  store i64 %1380, ptr %147, align 8
  %1381 = load i64, ptr %147, align 8
  %1382 = shl i64 %1381, 11
  %1383 = load i64, ptr %147, align 8
  %1384 = lshr i64 %1383, 53
  %1385 = or i64 %1382, %1384
  %1386 = mul i64 %1385, -7046029288634856825
  store i64 %1386, ptr %147, align 8
  %1387 = load ptr, ptr %152, align 8
  %1388 = getelementptr inbounds nuw i8, ptr %1387, i32 1
  store ptr %1388, ptr %152, align 8
  %1389 = load i8, ptr %1387, align 1
  %1390 = zext i8 %1389 to i64
  %1391 = mul i64 %1390, 2870177450012600261
  %1392 = load i64, ptr %147, align 8
  %1393 = xor i64 %1392, %1391
  store i64 %1393, ptr %147, align 8
  %1394 = load i64, ptr %147, align 8
  %1395 = shl i64 %1394, 11
  %1396 = load i64, ptr %147, align 8
  %1397 = lshr i64 %1396, 53
  %1398 = or i64 %1395, %1397
  %1399 = mul i64 %1398, -7046029288634856825
  store i64 %1399, ptr %147, align 8
  %1400 = load ptr, ptr %152, align 8
  %1401 = getelementptr inbounds nuw i8, ptr %1400, i32 1
  store ptr %1401, ptr %152, align 8
  %1402 = load i8, ptr %1400, align 1
  %1403 = zext i8 %1402 to i64
  %1404 = mul i64 %1403, 2870177450012600261
  %1405 = load i64, ptr %147, align 8
  %1406 = xor i64 %1405, %1404
  store i64 %1406, ptr %147, align 8
  %1407 = load i64, ptr %147, align 8
  %1408 = shl i64 %1407, 11
  %1409 = load i64, ptr %147, align 8
  %1410 = lshr i64 %1409, 53
  %1411 = or i64 %1408, %1410
  %1412 = mul i64 %1411, -7046029288634856825
  store i64 %1412, ptr %147, align 8
  %1413 = load i64, ptr %147, align 8
  %1414 = call i64 @XXH64_avalanche(i64 noundef %1413)
  store i64 %1414, ptr %146, align 8
  br label %1645

1415:                                             ; preds = %5
  %1416 = load ptr, ptr %152, align 8
  %1417 = load i32, ptr %150, align 4
  %1418 = load i32, ptr %151, align 4
  store ptr %1416, ptr %113, align 8
  store i32 %1417, ptr %114, align 4
  store i32 %1418, ptr %115, align 4
  %1419 = load i32, ptr %115, align 4
  %1420 = icmp eq i32 %1419, 1
  br i1 %1420, label %1421, label %1434

1421:                                             ; preds = %1415
  %1422 = load ptr, ptr %113, align 8
  store ptr %1422, ptr %111, align 8
  %1423 = call i32 @XXH_isLittleEndian()
  %1424 = icmp ne i32 %1423, 0
  br i1 %1424, label %1425, label %1428

1425:                                             ; preds = %1421
  %1426 = load ptr, ptr %111, align 8
  %1427 = call i64 @XXH_read64(ptr noundef %1426)
  br label %1432

1428:                                             ; preds = %1421
  %1429 = load ptr, ptr %111, align 8
  %1430 = call i64 @XXH_read64(ptr noundef %1429)
  %1431 = call i64 @XXH_swap64(i64 noundef %1430)
  br label %1432

1432:                                             ; preds = %1428, %1425
  %1433 = phi i64 [ %1427, %1425 ], [ %1431, %1428 ]
  store i64 %1433, ptr %112, align 8
  br label %1446

1434:                                             ; preds = %1415
  %1435 = load i32, ptr %114, align 4
  %1436 = icmp eq i32 %1435, 1
  br i1 %1436, label %1437, label %1440

1437:                                             ; preds = %1434
  %1438 = load ptr, ptr %113, align 8
  %1439 = load i64, ptr %1438, align 8
  br label %1444

1440:                                             ; preds = %1434
  %1441 = load ptr, ptr %113, align 8
  %1442 = load i64, ptr %1441, align 8
  %1443 = call i64 @XXH_swap64(i64 noundef %1442)
  br label %1444

1444:                                             ; preds = %1440, %1437
  %1445 = phi i64 [ %1439, %1437 ], [ %1443, %1440 ]
  store i64 %1445, ptr %112, align 8
  br label %1446

1446:                                             ; preds = %1432, %1444
  %1447 = load i64, ptr %112, align 8
  %1448 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1447)
  store i64 %1448, ptr %174, align 8
  %1449 = load ptr, ptr %152, align 8
  %1450 = getelementptr inbounds i8, ptr %1449, i64 8
  store ptr %1450, ptr %152, align 8
  %1451 = load i64, ptr %174, align 8
  %1452 = load i64, ptr %147, align 8
  %1453 = xor i64 %1452, %1451
  store i64 %1453, ptr %147, align 8
  %1454 = load i64, ptr %147, align 8
  %1455 = shl i64 %1454, 27
  %1456 = load i64, ptr %147, align 8
  %1457 = lshr i64 %1456, 37
  %1458 = or i64 %1455, %1457
  %1459 = mul i64 %1458, -7046029288634856825
  %1460 = add i64 %1459, -8796714831421723037
  store i64 %1460, ptr %147, align 8
  br label %1461

1461:                                             ; preds = %5, %1446
  %1462 = load ptr, ptr %152, align 8
  %1463 = load i32, ptr %150, align 4
  %1464 = load i32, ptr %151, align 4
  store ptr %1462, ptr %118, align 8
  store i32 %1463, ptr %119, align 4
  store i32 %1464, ptr %120, align 4
  %1465 = load i32, ptr %120, align 4
  %1466 = icmp eq i32 %1465, 1
  br i1 %1466, label %1467, label %1480

1467:                                             ; preds = %1461
  %1468 = load ptr, ptr %118, align 8
  store ptr %1468, ptr %116, align 8
  %1469 = call i32 @XXH_isLittleEndian()
  %1470 = icmp ne i32 %1469, 0
  br i1 %1470, label %1471, label %1474

1471:                                             ; preds = %1467
  %1472 = load ptr, ptr %116, align 8
  %1473 = call i64 @XXH_read64(ptr noundef %1472)
  br label %1478

1474:                                             ; preds = %1467
  %1475 = load ptr, ptr %116, align 8
  %1476 = call i64 @XXH_read64(ptr noundef %1475)
  %1477 = call i64 @XXH_swap64(i64 noundef %1476)
  br label %1478

1478:                                             ; preds = %1474, %1471
  %1479 = phi i64 [ %1473, %1471 ], [ %1477, %1474 ]
  store i64 %1479, ptr %117, align 8
  br label %1492

1480:                                             ; preds = %1461
  %1481 = load i32, ptr %119, align 4
  %1482 = icmp eq i32 %1481, 1
  br i1 %1482, label %1483, label %1486

1483:                                             ; preds = %1480
  %1484 = load ptr, ptr %118, align 8
  %1485 = load i64, ptr %1484, align 8
  br label %1490

1486:                                             ; preds = %1480
  %1487 = load ptr, ptr %118, align 8
  %1488 = load i64, ptr %1487, align 8
  %1489 = call i64 @XXH_swap64(i64 noundef %1488)
  br label %1490

1490:                                             ; preds = %1486, %1483
  %1491 = phi i64 [ %1485, %1483 ], [ %1489, %1486 ]
  store i64 %1491, ptr %117, align 8
  br label %1492

1492:                                             ; preds = %1478, %1490
  %1493 = load i64, ptr %117, align 8
  %1494 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1493)
  store i64 %1494, ptr %175, align 8
  %1495 = load ptr, ptr %152, align 8
  %1496 = getelementptr inbounds i8, ptr %1495, i64 8
  store ptr %1496, ptr %152, align 8
  %1497 = load i64, ptr %175, align 8
  %1498 = load i64, ptr %147, align 8
  %1499 = xor i64 %1498, %1497
  store i64 %1499, ptr %147, align 8
  %1500 = load i64, ptr %147, align 8
  %1501 = shl i64 %1500, 27
  %1502 = load i64, ptr %147, align 8
  %1503 = lshr i64 %1502, 37
  %1504 = or i64 %1501, %1503
  %1505 = mul i64 %1504, -7046029288634856825
  %1506 = add i64 %1505, -8796714831421723037
  store i64 %1506, ptr %147, align 8
  br label %1507

1507:                                             ; preds = %5, %1492
  %1508 = load ptr, ptr %152, align 8
  %1509 = load i32, ptr %150, align 4
  %1510 = load i32, ptr %151, align 4
  store ptr %1508, ptr %123, align 8
  store i32 %1509, ptr %124, align 4
  store i32 %1510, ptr %125, align 4
  %1511 = load i32, ptr %125, align 4
  %1512 = icmp eq i32 %1511, 1
  br i1 %1512, label %1513, label %1526

1513:                                             ; preds = %1507
  %1514 = load ptr, ptr %123, align 8
  store ptr %1514, ptr %121, align 8
  %1515 = call i32 @XXH_isLittleEndian()
  %1516 = icmp ne i32 %1515, 0
  br i1 %1516, label %1517, label %1520

1517:                                             ; preds = %1513
  %1518 = load ptr, ptr %121, align 8
  %1519 = call i64 @XXH_read64(ptr noundef %1518)
  br label %1524

1520:                                             ; preds = %1513
  %1521 = load ptr, ptr %121, align 8
  %1522 = call i64 @XXH_read64(ptr noundef %1521)
  %1523 = call i64 @XXH_swap64(i64 noundef %1522)
  br label %1524

1524:                                             ; preds = %1520, %1517
  %1525 = phi i64 [ %1519, %1517 ], [ %1523, %1520 ]
  store i64 %1525, ptr %122, align 8
  br label %1538

1526:                                             ; preds = %1507
  %1527 = load i32, ptr %124, align 4
  %1528 = icmp eq i32 %1527, 1
  br i1 %1528, label %1529, label %1532

1529:                                             ; preds = %1526
  %1530 = load ptr, ptr %123, align 8
  %1531 = load i64, ptr %1530, align 8
  br label %1536

1532:                                             ; preds = %1526
  %1533 = load ptr, ptr %123, align 8
  %1534 = load i64, ptr %1533, align 8
  %1535 = call i64 @XXH_swap64(i64 noundef %1534)
  br label %1536

1536:                                             ; preds = %1532, %1529
  %1537 = phi i64 [ %1531, %1529 ], [ %1535, %1532 ]
  store i64 %1537, ptr %122, align 8
  br label %1538

1538:                                             ; preds = %1524, %1536
  %1539 = load i64, ptr %122, align 8
  %1540 = call i64 @XXH64_round(i64 noundef 0, i64 noundef %1539)
  store i64 %1540, ptr %176, align 8
  %1541 = load ptr, ptr %152, align 8
  %1542 = getelementptr inbounds i8, ptr %1541, i64 8
  store ptr %1542, ptr %152, align 8
  %1543 = load i64, ptr %176, align 8
  %1544 = load i64, ptr %147, align 8
  %1545 = xor i64 %1544, %1543
  store i64 %1545, ptr %147, align 8
  %1546 = load i64, ptr %147, align 8
  %1547 = shl i64 %1546, 27
  %1548 = load i64, ptr %147, align 8
  %1549 = lshr i64 %1548, 37
  %1550 = or i64 %1547, %1549
  %1551 = mul i64 %1550, -7046029288634856825
  %1552 = add i64 %1551, -8796714831421723037
  store i64 %1552, ptr %147, align 8
  br label %1553

1553:                                             ; preds = %5, %1538
  %1554 = load ptr, ptr %152, align 8
  %1555 = load i32, ptr %150, align 4
  %1556 = load i32, ptr %151, align 4
  store ptr %1554, ptr %143, align 8
  store i32 %1555, ptr %144, align 4
  store i32 %1556, ptr %145, align 4
  %1557 = load i32, ptr %145, align 4
  %1558 = icmp eq i32 %1557, 1
  br i1 %1558, label %1559, label %1572

1559:                                             ; preds = %1553
  %1560 = load ptr, ptr %143, align 8
  store ptr %1560, ptr %141, align 8
  %1561 = call i32 @XXH_isLittleEndian()
  %1562 = icmp ne i32 %1561, 0
  br i1 %1562, label %1563, label %1566

1563:                                             ; preds = %1559
  %1564 = load ptr, ptr %141, align 8
  %1565 = call i32 @XXH_read32(ptr noundef %1564)
  br label %1570

1566:                                             ; preds = %1559
  %1567 = load ptr, ptr %141, align 8
  %1568 = call i32 @XXH_read32(ptr noundef %1567)
  %1569 = call i32 @XXH_swap32(i32 noundef %1568)
  br label %1570

1570:                                             ; preds = %1566, %1563
  %1571 = phi i32 [ %1565, %1563 ], [ %1569, %1566 ]
  store i32 %1571, ptr %142, align 4
  br label %1584

1572:                                             ; preds = %1553
  %1573 = load i32, ptr %144, align 4
  %1574 = icmp eq i32 %1573, 1
  br i1 %1574, label %1575, label %1578

1575:                                             ; preds = %1572
  %1576 = load ptr, ptr %143, align 8
  %1577 = load i32, ptr %1576, align 4
  br label %1582

1578:                                             ; preds = %1572
  %1579 = load ptr, ptr %143, align 8
  %1580 = load i32, ptr %1579, align 4
  %1581 = call i32 @XXH_swap32(i32 noundef %1580)
  br label %1582

1582:                                             ; preds = %1578, %1575
  %1583 = phi i32 [ %1577, %1575 ], [ %1581, %1578 ]
  store i32 %1583, ptr %142, align 4
  br label %1584

1584:                                             ; preds = %1570, %1582
  %1585 = load i32, ptr %142, align 4
  %1586 = zext i32 %1585 to i64
  %1587 = mul i64 %1586, -7046029288634856825
  %1588 = load i64, ptr %147, align 8
  %1589 = xor i64 %1588, %1587
  store i64 %1589, ptr %147, align 8
  %1590 = load ptr, ptr %152, align 8
  %1591 = getelementptr inbounds i8, ptr %1590, i64 4
  store ptr %1591, ptr %152, align 8
  %1592 = load i64, ptr %147, align 8
  %1593 = shl i64 %1592, 23
  %1594 = load i64, ptr %147, align 8
  %1595 = lshr i64 %1594, 41
  %1596 = or i64 %1593, %1595
  %1597 = mul i64 %1596, -4417276706812531889
  %1598 = add i64 %1597, 1609587929392839161
  store i64 %1598, ptr %147, align 8
  br label %1599

1599:                                             ; preds = %5, %1584
  %1600 = load ptr, ptr %152, align 8
  %1601 = getelementptr inbounds nuw i8, ptr %1600, i32 1
  store ptr %1601, ptr %152, align 8
  %1602 = load i8, ptr %1600, align 1
  %1603 = zext i8 %1602 to i64
  %1604 = mul i64 %1603, 2870177450012600261
  %1605 = load i64, ptr %147, align 8
  %1606 = xor i64 %1605, %1604
  store i64 %1606, ptr %147, align 8
  %1607 = load i64, ptr %147, align 8
  %1608 = shl i64 %1607, 11
  %1609 = load i64, ptr %147, align 8
  %1610 = lshr i64 %1609, 53
  %1611 = or i64 %1608, %1610
  %1612 = mul i64 %1611, -7046029288634856825
  store i64 %1612, ptr %147, align 8
  br label %1613

1613:                                             ; preds = %5, %1599
  %1614 = load ptr, ptr %152, align 8
  %1615 = getelementptr inbounds nuw i8, ptr %1614, i32 1
  store ptr %1615, ptr %152, align 8
  %1616 = load i8, ptr %1614, align 1
  %1617 = zext i8 %1616 to i64
  %1618 = mul i64 %1617, 2870177450012600261
  %1619 = load i64, ptr %147, align 8
  %1620 = xor i64 %1619, %1618
  store i64 %1620, ptr %147, align 8
  %1621 = load i64, ptr %147, align 8
  %1622 = shl i64 %1621, 11
  %1623 = load i64, ptr %147, align 8
  %1624 = lshr i64 %1623, 53
  %1625 = or i64 %1622, %1624
  %1626 = mul i64 %1625, -7046029288634856825
  store i64 %1626, ptr %147, align 8
  br label %1627

1627:                                             ; preds = %5, %1613
  %1628 = load ptr, ptr %152, align 8
  %1629 = getelementptr inbounds nuw i8, ptr %1628, i32 1
  store ptr %1629, ptr %152, align 8
  %1630 = load i8, ptr %1628, align 1
  %1631 = zext i8 %1630 to i64
  %1632 = mul i64 %1631, 2870177450012600261
  %1633 = load i64, ptr %147, align 8
  %1634 = xor i64 %1633, %1632
  store i64 %1634, ptr %147, align 8
  %1635 = load i64, ptr %147, align 8
  %1636 = shl i64 %1635, 11
  %1637 = load i64, ptr %147, align 8
  %1638 = lshr i64 %1637, 53
  %1639 = or i64 %1636, %1638
  %1640 = mul i64 %1639, -7046029288634856825
  store i64 %1640, ptr %147, align 8
  br label %1641

1641:                                             ; preds = %5, %1627
  %1642 = load i64, ptr %147, align 8
  %1643 = call i64 @XXH64_avalanche(i64 noundef %1642)
  store i64 %1643, ptr %146, align 8
  br label %1645

1644:                                             ; preds = %5
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 844, ptr noundef @__PRETTY_FUNCTION__.XXH64_finalize) #10
  unreachable

1645:                                             ; preds = %1641, %1359, %1193, %981, %828, %629, %489, %303
  %1646 = load i64, ptr %146, align 8
  ret i64 %1646
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH64_avalanche(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = lshr i64 %3, 33
  %5 = load i64, ptr %2, align 8
  %6 = xor i64 %5, %4
  store i64 %6, ptr %2, align 8
  %7 = load i64, ptr %2, align 8
  %8 = mul i64 %7, -4417276706812531889
  store i64 %8, ptr %2, align 8
  %9 = load i64, ptr %2, align 8
  %10 = lshr i64 %9, 29
  %11 = load i64, ptr %2, align 8
  %12 = xor i64 %11, %10
  store i64 %12, ptr %2, align 8
  %13 = load i64, ptr %2, align 8
  %14 = mul i64 %13, 1609587929392839161
  store i64 %14, ptr %2, align 8
  %15 = load i64, ptr %2, align 8
  %16 = lshr i64 %15, 32
  %17 = load i64, ptr %2, align 8
  %18 = xor i64 %17, %16
  store i64 %18, ptr %2, align 8
  %19 = load i64, ptr %2, align 8
  ret i64 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH_read64(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 1 %4, i64 8, i1 false)
  %5 = load i64, ptr %3, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_mul128(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i128, align 16
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = zext i64 %6 to i128
  %8 = load i64, ptr %4, align 8
  %9 = zext i64 %8 to i128
  %10 = mul i128 %7, %9
  store i128 %10, ptr %5, align 16
  %11 = load i128, ptr %5, align 16
  %12 = trunc i128 %11 to i64
  %13 = load i128, ptr %5, align 16
  %14 = lshr i128 %13, 64
  %15 = trunc i128 %14 to i64
  %16 = add i64 %12, %15
  ret i64 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_hashLong(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 {
  %4 = alloca <2 x i64>, align 16
  %5 = alloca <2 x i64>, align 16
  %6 = alloca <2 x i64>, align 16
  %7 = alloca <2 x i64>, align 16
  %8 = alloca <2 x i64>, align 16
  %9 = alloca <2 x i64>, align 16
  %10 = alloca <2 x i64>, align 16
  %11 = alloca <2 x i64>, align 16
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 16
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca <2 x i64>, align 16
  %22 = alloca <2 x i64>, align 16
  %23 = alloca <2 x i64>, align 16
  %24 = alloca <2 x i64>, align 16
  %25 = alloca <2 x i64>, align 16
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  store ptr %0, ptr %26, align 8
  store ptr %1, ptr %27, align 8
  store i64 %2, ptr %28, align 8
  store i64 1024, ptr %29, align 8
  %34 = load i64, ptr %28, align 8
  %35 = udiv i64 %34, 1024
  store i64 %35, ptr %30, align 8
  store i64 0, ptr %31, align 8
  br label %36

36:                                               ; preds = %47, %3
  %37 = load i64, ptr %31, align 8
  %38 = load i64, ptr %30, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load ptr, ptr %26, align 8
  %42 = load ptr, ptr %27, align 8
  %43 = load i64, ptr %31, align 8
  %44 = mul i64 %43, 1024
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 %44
  call void @XXH3_accumulate(ptr noundef %41, ptr noundef %45, ptr noundef @kKey, i64 noundef 16)
  %46 = load ptr, ptr %26, align 8
  call void @XXH3_scrambleAcc(ptr noundef %46, ptr noundef getelementptr inbounds nuw (i32, ptr @kKey, i64 32))
  br label %47

47:                                               ; preds = %40
  %48 = load i64, ptr %31, align 8
  %49 = add i64 %48, 1
  store i64 %49, ptr %31, align 8
  br label %36

50:                                               ; preds = %36
  %51 = load i64, ptr %28, align 8
  %52 = urem i64 %51, 1024
  %53 = udiv i64 %52, 64
  store i64 %53, ptr %32, align 8
  %54 = load ptr, ptr %26, align 8
  %55 = load ptr, ptr %27, align 8
  %56 = load i64, ptr %30, align 8
  %57 = mul i64 %56, 1024
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 %57
  %59 = load i64, ptr %32, align 8
  call void @XXH3_accumulate(ptr noundef %54, ptr noundef %58, ptr noundef @kKey, i64 noundef %59)
  %60 = load i64, ptr %28, align 8
  %61 = and i64 %60, 63
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %129

63:                                               ; preds = %50
  %64 = load ptr, ptr %27, align 8
  %65 = load i64, ptr %28, align 8
  %66 = getelementptr inbounds nuw i8, ptr %64, i64 %65
  %67 = getelementptr inbounds i8, ptr %66, i64 -64
  store ptr %67, ptr %33, align 8
  %68 = load ptr, ptr %26, align 8
  %69 = load ptr, ptr %33, align 8
  %70 = load i64, ptr %32, align 8
  %71 = mul i64 %70, 2
  %72 = getelementptr inbounds nuw i32, ptr @kKey, i64 %71
  store ptr %68, ptr %14, align 8
  store ptr %69, ptr %15, align 8
  store ptr %72, ptr %16, align 8
  %73 = load ptr, ptr %14, align 8
  store ptr %73, ptr %17, align 16
  %74 = load ptr, ptr %15, align 8
  store ptr %74, ptr %18, align 8
  %75 = load ptr, ptr %16, align 8
  store ptr %75, ptr %19, align 8
  store i64 0, ptr %20, align 8
  br label %76

76:                                               ; preds = %79, %63
  %77 = load i64, ptr %20, align 8
  %78 = icmp ult i64 %77, 4
  br i1 %78, label %79, label %128

79:                                               ; preds = %76
  %80 = load ptr, ptr %18, align 8
  %81 = load i64, ptr %20, align 8
  %82 = getelementptr inbounds nuw <2 x i64>, ptr %80, i64 %81
  store ptr %82, ptr %12, align 8
  %83 = load ptr, ptr %12, align 8
  %84 = load <2 x i64>, ptr %83, align 1
  store <2 x i64> %84, ptr %21, align 16
  %85 = load ptr, ptr %19, align 8
  %86 = load i64, ptr %20, align 8
  %87 = getelementptr inbounds nuw <2 x i64>, ptr %85, i64 %86
  store ptr %87, ptr %13, align 8
  %88 = load ptr, ptr %13, align 8
  %89 = load <2 x i64>, ptr %88, align 1
  store <2 x i64> %89, ptr %22, align 16
  %90 = load <2 x i64>, ptr %21, align 16
  %91 = load <2 x i64>, ptr %22, align 16
  store <2 x i64> %90, ptr %8, align 16
  store <2 x i64> %91, ptr %9, align 16
  %92 = load <2 x i64>, ptr %8, align 16
  %93 = bitcast <2 x i64> %92 to <4 x i32>
  %94 = load <2 x i64>, ptr %9, align 16
  %95 = bitcast <2 x i64> %94 to <4 x i32>
  %96 = add <4 x i32> %93, %95
  %97 = bitcast <4 x i32> %96 to <2 x i64>
  store <2 x i64> %97, ptr %23, align 16
  %98 = load <2 x i64>, ptr %23, align 16
  %99 = load <2 x i64>, ptr %23, align 16
  %100 = bitcast <2 x i64> %99 to <4 x i32>
  %101 = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %102 = bitcast <4 x i32> %101 to <2 x i64>
  store <2 x i64> %98, ptr %10, align 16
  store <2 x i64> %102, ptr %11, align 16
  %103 = load <2 x i64>, ptr %10, align 16
  %104 = bitcast <2 x i64> %103 to <4 x i32>
  %105 = load <2 x i64>, ptr %11, align 16
  %106 = bitcast <2 x i64> %105 to <4 x i32>
  %107 = and <2 x i64> %103, splat (i64 4294967295)
  %108 = and <2 x i64> %105, splat (i64 4294967295)
  %109 = mul <2 x i64> %107, %108
  store <2 x i64> %109, ptr %24, align 16
  %110 = load <2 x i64>, ptr %21, align 16
  %111 = load ptr, ptr %17, align 16
  %112 = load i64, ptr %20, align 8
  %113 = getelementptr inbounds nuw <2 x i64>, ptr %111, i64 %112
  %114 = load <2 x i64>, ptr %113, align 16
  store <2 x i64> %110, ptr %4, align 16
  store <2 x i64> %114, ptr %5, align 16
  %115 = load <2 x i64>, ptr %4, align 16
  %116 = load <2 x i64>, ptr %5, align 16
  %117 = add <2 x i64> %115, %116
  store <2 x i64> %117, ptr %25, align 16
  %118 = load <2 x i64>, ptr %24, align 16
  %119 = load <2 x i64>, ptr %25, align 16
  store <2 x i64> %118, ptr %6, align 16
  store <2 x i64> %119, ptr %7, align 16
  %120 = load <2 x i64>, ptr %6, align 16
  %121 = load <2 x i64>, ptr %7, align 16
  %122 = add <2 x i64> %120, %121
  %123 = load ptr, ptr %17, align 16
  %124 = load i64, ptr %20, align 8
  %125 = getelementptr inbounds nuw <2 x i64>, ptr %123, i64 %124
  store <2 x i64> %122, ptr %125, align 16
  %126 = load i64, ptr %20, align 8
  %127 = add i64 %126, 1
  store i64 %127, ptr %20, align 8
  br label %76

128:                                              ; preds = %76
  br label %129

129:                                              ; preds = %128, %50
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XXH3_mergeAccs(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i64, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca i64, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  store ptr %0, ptr %40, align 8
  store ptr %1, ptr %41, align 8
  store i64 %2, ptr %42, align 8
  %44 = load i64, ptr %42, align 8
  store i64 %44, ptr %43, align 8
  %45 = load ptr, ptr %40, align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 0
  %47 = load ptr, ptr %41, align 8
  %48 = getelementptr inbounds i32, ptr %47, i64 0
  store ptr %46, ptr %10, align 8
  store ptr %48, ptr %11, align 8
  %49 = load ptr, ptr %11, align 8
  store ptr %49, ptr %12, align 8
  %50 = load ptr, ptr %10, align 8
  %51 = load i64, ptr %50, align 8
  %52 = load ptr, ptr %12, align 8
  store ptr %52, ptr %5, align 8
  %53 = call i32 @XXH_isLittleEndian()
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %3
  %56 = load ptr, ptr %5, align 8
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %4, align 8
  br label %69

58:                                               ; preds = %3
  %59 = load ptr, ptr %5, align 8
  store ptr %59, ptr %6, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = load i32, ptr %60, align 4
  %62 = zext i32 %61 to i64
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds i32, ptr %63, i64 1
  %65 = load i32, ptr %64, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 %66, 32
  %68 = add i64 %62, %67
  store i64 %68, ptr %4, align 8
  br label %69

69:                                               ; preds = %58, %55
  %70 = load i64, ptr %4, align 8
  %71 = xor i64 %51, %70
  %72 = load ptr, ptr %10, align 8
  %73 = getelementptr inbounds i64, ptr %72, i64 1
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds i64, ptr %75, i64 1
  store ptr %76, ptr %8, align 8
  %77 = call i32 @XXH_isLittleEndian()
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load ptr, ptr %8, align 8
  %81 = load i64, ptr %80, align 8
  store i64 %81, ptr %7, align 8
  br label %93

82:                                               ; preds = %69
  %83 = load ptr, ptr %8, align 8
  store ptr %83, ptr %9, align 8
  %84 = load ptr, ptr %9, align 8
  %85 = load i32, ptr %84, align 4
  %86 = zext i32 %85 to i64
  %87 = load ptr, ptr %9, align 8
  %88 = getelementptr inbounds i32, ptr %87, i64 1
  %89 = load i32, ptr %88, align 4
  %90 = zext i32 %89 to i64
  %91 = shl i64 %90, 32
  %92 = add i64 %86, %91
  store i64 %92, ptr %7, align 8
  br label %93

93:                                               ; preds = %79, %82
  %94 = load i64, ptr %7, align 8
  %95 = xor i64 %74, %94
  %96 = call i64 @XXH3_mul128(i64 noundef %71, i64 noundef %95)
  %97 = load i64, ptr %43, align 8
  %98 = add i64 %97, %96
  store i64 %98, ptr %43, align 8
  %99 = load ptr, ptr %40, align 8
  %100 = getelementptr inbounds i64, ptr %99, i64 2
  %101 = load ptr, ptr %41, align 8
  %102 = getelementptr inbounds i32, ptr %101, i64 4
  store ptr %100, ptr %19, align 8
  store ptr %102, ptr %20, align 8
  %103 = load ptr, ptr %20, align 8
  store ptr %103, ptr %21, align 8
  %104 = load ptr, ptr %19, align 8
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %21, align 8
  store ptr %106, ptr %14, align 8
  %107 = call i32 @XXH_isLittleEndian()
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %93
  %110 = load ptr, ptr %14, align 8
  %111 = load i64, ptr %110, align 8
  store i64 %111, ptr %13, align 8
  br label %123

112:                                              ; preds = %93
  %113 = load ptr, ptr %14, align 8
  store ptr %113, ptr %15, align 8
  %114 = load ptr, ptr %15, align 8
  %115 = load i32, ptr %114, align 4
  %116 = zext i32 %115 to i64
  %117 = load ptr, ptr %15, align 8
  %118 = getelementptr inbounds i32, ptr %117, i64 1
  %119 = load i32, ptr %118, align 4
  %120 = zext i32 %119 to i64
  %121 = shl i64 %120, 32
  %122 = add i64 %116, %121
  store i64 %122, ptr %13, align 8
  br label %123

123:                                              ; preds = %112, %109
  %124 = load i64, ptr %13, align 8
  %125 = xor i64 %105, %124
  %126 = load ptr, ptr %19, align 8
  %127 = getelementptr inbounds i64, ptr %126, i64 1
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %21, align 8
  %130 = getelementptr inbounds i64, ptr %129, i64 1
  store ptr %130, ptr %17, align 8
  %131 = call i32 @XXH_isLittleEndian()
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load ptr, ptr %17, align 8
  %135 = load i64, ptr %134, align 8
  store i64 %135, ptr %16, align 8
  br label %147

136:                                              ; preds = %123
  %137 = load ptr, ptr %17, align 8
  store ptr %137, ptr %18, align 8
  %138 = load ptr, ptr %18, align 8
  %139 = load i32, ptr %138, align 4
  %140 = zext i32 %139 to i64
  %141 = load ptr, ptr %18, align 8
  %142 = getelementptr inbounds i32, ptr %141, i64 1
  %143 = load i32, ptr %142, align 4
  %144 = zext i32 %143 to i64
  %145 = shl i64 %144, 32
  %146 = add i64 %140, %145
  store i64 %146, ptr %16, align 8
  br label %147

147:                                              ; preds = %133, %136
  %148 = load i64, ptr %16, align 8
  %149 = xor i64 %128, %148
  %150 = call i64 @XXH3_mul128(i64 noundef %125, i64 noundef %149)
  %151 = load i64, ptr %43, align 8
  %152 = add i64 %151, %150
  store i64 %152, ptr %43, align 8
  %153 = load ptr, ptr %40, align 8
  %154 = getelementptr inbounds i64, ptr %153, i64 4
  %155 = load ptr, ptr %41, align 8
  %156 = getelementptr inbounds i32, ptr %155, i64 8
  store ptr %154, ptr %28, align 8
  store ptr %156, ptr %29, align 8
  %157 = load ptr, ptr %29, align 8
  store ptr %157, ptr %30, align 8
  %158 = load ptr, ptr %28, align 8
  %159 = load i64, ptr %158, align 8
  %160 = load ptr, ptr %30, align 8
  store ptr %160, ptr %23, align 8
  %161 = call i32 @XXH_isLittleEndian()
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %147
  %164 = load ptr, ptr %23, align 8
  %165 = load i64, ptr %164, align 8
  store i64 %165, ptr %22, align 8
  br label %177

166:                                              ; preds = %147
  %167 = load ptr, ptr %23, align 8
  store ptr %167, ptr %24, align 8
  %168 = load ptr, ptr %24, align 8
  %169 = load i32, ptr %168, align 4
  %170 = zext i32 %169 to i64
  %171 = load ptr, ptr %24, align 8
  %172 = getelementptr inbounds i32, ptr %171, i64 1
  %173 = load i32, ptr %172, align 4
  %174 = zext i32 %173 to i64
  %175 = shl i64 %174, 32
  %176 = add i64 %170, %175
  store i64 %176, ptr %22, align 8
  br label %177

177:                                              ; preds = %166, %163
  %178 = load i64, ptr %22, align 8
  %179 = xor i64 %159, %178
  %180 = load ptr, ptr %28, align 8
  %181 = getelementptr inbounds i64, ptr %180, i64 1
  %182 = load i64, ptr %181, align 8
  %183 = load ptr, ptr %30, align 8
  %184 = getelementptr inbounds i64, ptr %183, i64 1
  store ptr %184, ptr %26, align 8
  %185 = call i32 @XXH_isLittleEndian()
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %177
  %188 = load ptr, ptr %26, align 8
  %189 = load i64, ptr %188, align 8
  store i64 %189, ptr %25, align 8
  br label %201

190:                                              ; preds = %177
  %191 = load ptr, ptr %26, align 8
  store ptr %191, ptr %27, align 8
  %192 = load ptr, ptr %27, align 8
  %193 = load i32, ptr %192, align 4
  %194 = zext i32 %193 to i64
  %195 = load ptr, ptr %27, align 8
  %196 = getelementptr inbounds i32, ptr %195, i64 1
  %197 = load i32, ptr %196, align 4
  %198 = zext i32 %197 to i64
  %199 = shl i64 %198, 32
  %200 = add i64 %194, %199
  store i64 %200, ptr %25, align 8
  br label %201

201:                                              ; preds = %187, %190
  %202 = load i64, ptr %25, align 8
  %203 = xor i64 %182, %202
  %204 = call i64 @XXH3_mul128(i64 noundef %179, i64 noundef %203)
  %205 = load i64, ptr %43, align 8
  %206 = add i64 %205, %204
  store i64 %206, ptr %43, align 8
  %207 = load ptr, ptr %40, align 8
  %208 = getelementptr inbounds i64, ptr %207, i64 6
  %209 = load ptr, ptr %41, align 8
  %210 = getelementptr inbounds i32, ptr %209, i64 12
  store ptr %208, ptr %37, align 8
  store ptr %210, ptr %38, align 8
  %211 = load ptr, ptr %38, align 8
  store ptr %211, ptr %39, align 8
  %212 = load ptr, ptr %37, align 8
  %213 = load i64, ptr %212, align 8
  %214 = load ptr, ptr %39, align 8
  store ptr %214, ptr %32, align 8
  %215 = call i32 @XXH_isLittleEndian()
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %201
  %218 = load ptr, ptr %32, align 8
  %219 = load i64, ptr %218, align 8
  store i64 %219, ptr %31, align 8
  br label %231

220:                                              ; preds = %201
  %221 = load ptr, ptr %32, align 8
  store ptr %221, ptr %33, align 8
  %222 = load ptr, ptr %33, align 8
  %223 = load i32, ptr %222, align 4
  %224 = zext i32 %223 to i64
  %225 = load ptr, ptr %33, align 8
  %226 = getelementptr inbounds i32, ptr %225, i64 1
  %227 = load i32, ptr %226, align 4
  %228 = zext i32 %227 to i64
  %229 = shl i64 %228, 32
  %230 = add i64 %224, %229
  store i64 %230, ptr %31, align 8
  br label %231

231:                                              ; preds = %220, %217
  %232 = load i64, ptr %31, align 8
  %233 = xor i64 %213, %232
  %234 = load ptr, ptr %37, align 8
  %235 = getelementptr inbounds i64, ptr %234, i64 1
  %236 = load i64, ptr %235, align 8
  %237 = load ptr, ptr %39, align 8
  %238 = getelementptr inbounds i64, ptr %237, i64 1
  store ptr %238, ptr %35, align 8
  %239 = call i32 @XXH_isLittleEndian()
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %231
  %242 = load ptr, ptr %35, align 8
  %243 = load i64, ptr %242, align 8
  store i64 %243, ptr %34, align 8
  br label %255

244:                                              ; preds = %231
  %245 = load ptr, ptr %35, align 8
  store ptr %245, ptr %36, align 8
  %246 = load ptr, ptr %36, align 8
  %247 = load i32, ptr %246, align 4
  %248 = zext i32 %247 to i64
  %249 = load ptr, ptr %36, align 8
  %250 = getelementptr inbounds i32, ptr %249, i64 1
  %251 = load i32, ptr %250, align 4
  %252 = zext i32 %251 to i64
  %253 = shl i64 %252, 32
  %254 = add i64 %248, %253
  store i64 %254, ptr %34, align 8
  br label %255

255:                                              ; preds = %241, %244
  %256 = load i64, ptr %34, align 8
  %257 = xor i64 %236, %256
  %258 = call i64 @XXH3_mul128(i64 noundef %233, i64 noundef %257)
  %259 = load i64, ptr %43, align 8
  %260 = add i64 %259, %258
  store i64 %260, ptr %43, align 8
  %261 = load i64, ptr %43, align 8
  %262 = call i64 @XXH3_avalanche(i64 noundef %261)
  ret i64 %262
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_accumulate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #6 {
  %5 = alloca <2 x i64>, align 16
  %6 = alloca <2 x i64>, align 16
  %7 = alloca <2 x i64>, align 16
  %8 = alloca <2 x i64>, align 16
  %9 = alloca <2 x i64>, align 16
  %10 = alloca <2 x i64>, align 16
  %11 = alloca <2 x i64>, align 16
  %12 = alloca <2 x i64>, align 16
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 16
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca <2 x i64>, align 16
  %23 = alloca <2 x i64>, align 16
  %24 = alloca <2 x i64>, align 16
  %25 = alloca <2 x i64>, align 16
  %26 = alloca <2 x i64>, align 16
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store ptr %0, ptr %27, align 8
  store ptr %1, ptr %28, align 8
  store ptr %2, ptr %29, align 8
  store i64 %3, ptr %30, align 8
  store i64 0, ptr %31, align 8
  br label %32

32:                                               ; preds = %101, %4
  %33 = load i64, ptr %31, align 8
  %34 = load i64, ptr %30, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %104

36:                                               ; preds = %32
  %37 = load ptr, ptr %27, align 8
  %38 = load ptr, ptr %28, align 8
  %39 = load i64, ptr %31, align 8
  %40 = mul i64 %39, 64
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40
  %42 = load ptr, ptr %29, align 8
  store ptr %37, ptr %15, align 8
  store ptr %41, ptr %16, align 8
  store ptr %42, ptr %17, align 8
  %43 = load ptr, ptr %15, align 8
  store ptr %43, ptr %18, align 16
  %44 = load ptr, ptr %16, align 8
  store ptr %44, ptr %19, align 8
  %45 = load ptr, ptr %17, align 8
  store ptr %45, ptr %20, align 8
  store i64 0, ptr %21, align 8
  br label %46

46:                                               ; preds = %49, %36
  %47 = load i64, ptr %21, align 8
  %48 = icmp ult i64 %47, 4
  br i1 %48, label %49, label %98

49:                                               ; preds = %46
  %50 = load ptr, ptr %19, align 8
  %51 = load i64, ptr %21, align 8
  %52 = getelementptr inbounds nuw <2 x i64>, ptr %50, i64 %51
  store ptr %52, ptr %13, align 8
  %53 = load ptr, ptr %13, align 8
  %54 = load <2 x i64>, ptr %53, align 1
  store <2 x i64> %54, ptr %22, align 16
  %55 = load ptr, ptr %20, align 8
  %56 = load i64, ptr %21, align 8
  %57 = getelementptr inbounds nuw <2 x i64>, ptr %55, i64 %56
  store ptr %57, ptr %14, align 8
  %58 = load ptr, ptr %14, align 8
  %59 = load <2 x i64>, ptr %58, align 1
  store <2 x i64> %59, ptr %23, align 16
  %60 = load <2 x i64>, ptr %22, align 16
  %61 = load <2 x i64>, ptr %23, align 16
  store <2 x i64> %60, ptr %9, align 16
  store <2 x i64> %61, ptr %10, align 16
  %62 = load <2 x i64>, ptr %9, align 16
  %63 = bitcast <2 x i64> %62 to <4 x i32>
  %64 = load <2 x i64>, ptr %10, align 16
  %65 = bitcast <2 x i64> %64 to <4 x i32>
  %66 = add <4 x i32> %63, %65
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  store <2 x i64> %67, ptr %24, align 16
  %68 = load <2 x i64>, ptr %24, align 16
  %69 = load <2 x i64>, ptr %24, align 16
  %70 = bitcast <2 x i64> %69 to <4 x i32>
  %71 = shufflevector <4 x i32> %70, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %72 = bitcast <4 x i32> %71 to <2 x i64>
  store <2 x i64> %68, ptr %11, align 16
  store <2 x i64> %72, ptr %12, align 16
  %73 = load <2 x i64>, ptr %11, align 16
  %74 = bitcast <2 x i64> %73 to <4 x i32>
  %75 = load <2 x i64>, ptr %12, align 16
  %76 = bitcast <2 x i64> %75 to <4 x i32>
  %77 = and <2 x i64> %73, splat (i64 4294967295)
  %78 = and <2 x i64> %75, splat (i64 4294967295)
  %79 = mul <2 x i64> %77, %78
  store <2 x i64> %79, ptr %25, align 16
  %80 = load <2 x i64>, ptr %22, align 16
  %81 = load ptr, ptr %18, align 16
  %82 = load i64, ptr %21, align 8
  %83 = getelementptr inbounds nuw <2 x i64>, ptr %81, i64 %82
  %84 = load <2 x i64>, ptr %83, align 16
  store <2 x i64> %80, ptr %5, align 16
  store <2 x i64> %84, ptr %6, align 16
  %85 = load <2 x i64>, ptr %5, align 16
  %86 = load <2 x i64>, ptr %6, align 16
  %87 = add <2 x i64> %85, %86
  store <2 x i64> %87, ptr %26, align 16
  %88 = load <2 x i64>, ptr %25, align 16
  %89 = load <2 x i64>, ptr %26, align 16
  store <2 x i64> %88, ptr %7, align 16
  store <2 x i64> %89, ptr %8, align 16
  %90 = load <2 x i64>, ptr %7, align 16
  %91 = load <2 x i64>, ptr %8, align 16
  %92 = add <2 x i64> %90, %91
  %93 = load ptr, ptr %18, align 16
  %94 = load i64, ptr %21, align 8
  %95 = getelementptr inbounds nuw <2 x i64>, ptr %93, i64 %94
  store <2 x i64> %92, ptr %95, align 16
  %96 = load i64, ptr %21, align 8
  %97 = add i64 %96, 1
  store i64 %97, ptr %21, align 8
  br label %46

98:                                               ; preds = %46
  %99 = load ptr, ptr %29, align 8
  %100 = getelementptr inbounds i32, ptr %99, i64 2
  store ptr %100, ptr %29, align 8
  br label %101

101:                                              ; preds = %98
  %102 = load i64, ptr %31, align 8
  %103 = add i64 %102, 1
  store i64 %103, ptr %31, align 8
  br label %32

104:                                              ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XXH3_scrambleAcc(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca <2 x i64>, align 16
  %4 = alloca <2 x i64>, align 16
  %5 = alloca <2 x i64>, align 16
  %6 = alloca <2 x i64>, align 16
  %7 = alloca ptr, align 8
  %8 = alloca <2 x i64>, align 16
  %9 = alloca <2 x i64>, align 16
  %10 = alloca <2 x i64>, align 16
  %11 = alloca <2 x i64>, align 16
  %12 = alloca <2 x i64>, align 16
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 16
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca <2 x i64>, align 16
  %20 = alloca <2 x i64>, align 16
  %21 = alloca <2 x i64>, align 16
  %22 = alloca <2 x i64>, align 16
  %23 = alloca <2 x i64>, align 16
  %24 = alloca <2 x i64>, align 16
  %25 = alloca <2 x i64>, align 16
  store ptr %0, ptr %14, align 8
  store ptr %1, ptr %15, align 8
  %26 = load ptr, ptr %14, align 8
  store ptr %26, ptr %16, align 16
  %27 = load ptr, ptr %15, align 8
  store ptr %27, ptr %17, align 8
  store i64 0, ptr %18, align 8
  br label %28

28:                                               ; preds = %84, %2
  %29 = load i64, ptr %18, align 8
  %30 = icmp ult i64 %29, 4
  br i1 %30, label %31, label %87

31:                                               ; preds = %28
  %32 = load ptr, ptr %16, align 16
  %33 = load i64, ptr %18, align 8
  %34 = getelementptr inbounds nuw <2 x i64>, ptr %32, i64 %33
  %35 = load <2 x i64>, ptr %34, align 16
  store <2 x i64> %35, ptr %19, align 16
  %36 = load <2 x i64>, ptr %19, align 16
  store <2 x i64> %36, ptr %12, align 16
  store i32 47, ptr %13, align 4
  %37 = load <2 x i64>, ptr %12, align 16
  %38 = load i32, ptr %13, align 4
  %39 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %37, i32 %38)
  store <2 x i64> %39, ptr %20, align 16
  %40 = load <2 x i64>, ptr %19, align 16
  %41 = load <2 x i64>, ptr %20, align 16
  store <2 x i64> %40, ptr %8, align 16
  store <2 x i64> %41, ptr %9, align 16
  %42 = load <2 x i64>, ptr %8, align 16
  %43 = load <2 x i64>, ptr %9, align 16
  %44 = xor <2 x i64> %42, %43
  store <2 x i64> %44, ptr %19, align 16
  %45 = load ptr, ptr %17, align 8
  %46 = load i64, ptr %18, align 8
  %47 = getelementptr inbounds nuw <2 x i64>, ptr %45, i64 %46
  store ptr %47, ptr %7, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = load <2 x i64>, ptr %48, align 1
  store <2 x i64> %49, ptr %21, align 16
  %50 = load <2 x i64>, ptr %19, align 16
  %51 = load <2 x i64>, ptr %21, align 16
  store <2 x i64> %50, ptr %3, align 16
  store <2 x i64> %51, ptr %4, align 16
  %52 = load <2 x i64>, ptr %3, align 16
  %53 = bitcast <2 x i64> %52 to <4 x i32>
  %54 = load <2 x i64>, ptr %4, align 16
  %55 = bitcast <2 x i64> %54 to <4 x i32>
  %56 = and <2 x i64> %52, splat (i64 4294967295)
  %57 = and <2 x i64> %54, splat (i64 4294967295)
  %58 = mul <2 x i64> %56, %57
  store <2 x i64> %58, ptr %22, align 16
  %59 = load <2 x i64>, ptr %19, align 16
  %60 = bitcast <2 x i64> %59 to <4 x i32>
  %61 = shufflevector <4 x i32> %60, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %62 = bitcast <4 x i32> %61 to <2 x i64>
  store <2 x i64> %62, ptr %23, align 16
  %63 = load <2 x i64>, ptr %21, align 16
  %64 = bitcast <2 x i64> %63 to <4 x i32>
  %65 = shufflevector <4 x i32> %64, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %66 = bitcast <4 x i32> %65 to <2 x i64>
  store <2 x i64> %66, ptr %24, align 16
  %67 = load <2 x i64>, ptr %23, align 16
  %68 = load <2 x i64>, ptr %24, align 16
  store <2 x i64> %67, ptr %5, align 16
  store <2 x i64> %68, ptr %6, align 16
  %69 = load <2 x i64>, ptr %5, align 16
  %70 = bitcast <2 x i64> %69 to <4 x i32>
  %71 = load <2 x i64>, ptr %6, align 16
  %72 = bitcast <2 x i64> %71 to <4 x i32>
  %73 = and <2 x i64> %69, splat (i64 4294967295)
  %74 = and <2 x i64> %71, splat (i64 4294967295)
  %75 = mul <2 x i64> %73, %74
  store <2 x i64> %75, ptr %25, align 16
  %76 = load <2 x i64>, ptr %22, align 16
  %77 = load <2 x i64>, ptr %25, align 16
  store <2 x i64> %76, ptr %10, align 16
  store <2 x i64> %77, ptr %11, align 16
  %78 = load <2 x i64>, ptr %10, align 16
  %79 = load <2 x i64>, ptr %11, align 16
  %80 = xor <2 x i64> %78, %79
  %81 = load ptr, ptr %16, align 16
  %82 = load i64, ptr %18, align 8
  %83 = getelementptr inbounds nuw <2 x i64>, ptr %81, i64 %82
  store <2 x i64> %80, ptr %83, align 16
  br label %84

84:                                               ; preds = %31
  %85 = load i64, ptr %18, align 8
  %86 = add i64 %85, 1
  store i64 %86, ptr %18, align 8
  br label %28

87:                                               ; preds = %28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
